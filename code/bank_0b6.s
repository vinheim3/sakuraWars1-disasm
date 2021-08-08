; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0b6", ROMX[$4000], BANK[$b6]

	ld   l, b                                        ; $4000: $68
	call $ffff                                       ; $4001: $cd $ff $ff
	rst  $38                                         ; $4004: $ff
	rst  $38                                         ; $4005: $ff
	rst  $38                                         ; $4006: $ff
	or   [hl]                                        ; $4007: $b6
	ld   hl, $1111                                   ; $4008: $21 $11 $11
	ld   de, $1211                                   ; $400b: $11 $11 $12
	ld   d, a                                        ; $400e: $57
	sbc  h                                           ; $400f: $9c
	rst  $38                                         ; $4010: $ff
	rst  $38                                         ; $4011: $ff
	rst  $38                                         ; $4012: $ff
	rst  $38                                         ; $4013: $ff
	rst  $38                                         ; $4014: $ff
	ld   [$1151], a                                  ; $4015: $ea $51 $11
	ld   de, $1111                                   ; $4018: $11 $11 $11
	ld   de, $7b35                                   ; $401b: $11 $35 $7b
	rst  JumpTable                                         ; $401e: $df
	rst  $38                                         ; $401f: $ff
	rst  $38                                         ; $4020: $ff
	rst  $38                                         ; $4021: $ff
	rst  $38                                         ; $4022: $ff
	cp   $94                                         ; $4023: $fe $94
	ld   de, $1111                                   ; $4025: $11 $11 $11
	ld   de, $1211                                   ; $4028: $11 $11 $12
	ld   d, a                                        ; $402b: $57
	xor  h                                           ; $402c: $ac
	rst  $38                                         ; $402d: $ff
	rst  $38                                         ; $402e: $ff
	rst  $38                                         ; $402f: $ff
	rst  $38                                         ; $4030: $ff
	rst  $38                                         ; $4031: $ff
	reti                                             ; $4032: $d9


	ld   b, c                                        ; $4033: $41
	ld   de, $1111                                   ; $4034: $11 $11 $11
	ld   de, $3611                                   ; $4037: $11 $11 $36
	adc  h                                           ; $403a: $8c
	cp   a                                           ; $403b: $bf
	rst  $38                                         ; $403c: $ff
	rst  $38                                         ; $403d: $ff
	rst  $38                                         ; $403e: $ff
	rst  $38                                         ; $403f: $ff
	ei                                               ; $4040: $fb
	sub  e                                           ; $4041: $93
	ld   de, $1111                                   ; $4042: $11 $11 $11
	ld   de, $3311                                   ; $4045: $11 $11 $33
	ld   a, c                                        ; $4048: $79
	cp   l                                           ; $4049: $bd
	rst  $38                                         ; $404a: $ff
	rst  $38                                         ; $404b: $ff
	rst  $38                                         ; $404c: $ff
	rst  $38                                         ; $404d: $ff
	rst  $38                                         ; $404e: $ff
	ret                                              ; $404f: $c9


	ld   d, c                                        ; $4050: $51
	ld   de, $1111                                   ; $4051: $11 $11 $11
	ld   de, $4611                                   ; $4054: $11 $11 $46
	sbc  d                                           ; $4057: $9a
	xor  $ff                                         ; $4058: $ee $ff
	rst  $38                                         ; $405a: $ff
	rst  $38                                         ; $405b: $ff
	rst  $38                                         ; $405c: $ff
	rst  $38                                         ; $405d: $ff
	cp   b                                           ; $405e: $b8
	ld   hl, $1111                                   ; $405f: $21 $11 $11
	ld   de, $1211                                   ; $4062: $11 $11 $12
	ld   b, a                                        ; $4065: $47
	sbc  e                                           ; $4066: $9b
	rst  $28                                         ; $4067: $ef
	rst  $38                                         ; $4068: $ff
	rst  $38                                         ; $4069: $ff
	rst  $38                                         ; $406a: $ff
	rst  $38                                         ; $406b: $ff
	rst  $38                                         ; $406c: $ff
	or   [hl]                                        ; $406d: $b6
	ld   de, $1111                                   ; $406e: $11 $11 $11
	ld   de, $1311                                   ; $4071: $11 $11 $13
	ld   b, a                                        ; $4074: $47
	xor  h                                           ; $4075: $ac
	rst  $38                                         ; $4076: $ff
	rst  $38                                         ; $4077: $ff
	rst  $38                                         ; $4078: $ff
	rst  $38                                         ; $4079: $ff
	rst  $38                                         ; $407a: $ff
	rst  $38                                         ; $407b: $ff
	and  [hl]                                        ; $407c: $a6
	ld   de, $1111                                   ; $407d: $11 $11 $11
	ld   de, $1211                                   ; $4080: $11 $11 $12
	ld   b, a                                        ; $4083: $47
	cp   h                                           ; $4084: $bc
	rst  $38                                         ; $4085: $ff
	rst  $38                                         ; $4086: $ff
	rst  $38                                         ; $4087: $ff
	rst  $38                                         ; $4088: $ff
	rst  $38                                         ; $4089: $ff
	rst  $38                                         ; $408a: $ff
	and  [hl]                                        ; $408b: $a6
	ld   hl, $1111                                   ; $408c: $21 $11 $11
	ld   de, $1111                                   ; $408f: $11 $11 $11
	ld   d, [hl]                                     ; $4092: $56
	xor  h                                           ; $4093: $ac
	rst  $38                                         ; $4094: $ff
	rst  $38                                         ; $4095: $ff
	rst  $38                                         ; $4096: $ff
	rst  $38                                         ; $4097: $ff
	rst  $38                                         ; $4098: $ff
	rst  $38                                         ; $4099: $ff
	rst  ToBoot                                         ; $409a: $c7
	ld   b, c                                        ; $409b: $41
	ld   de, $1111                                   ; $409c: $11 $11 $11
	ld   de, $3611                                   ; $409f: $11 $11 $36
	adc  l                                           ; $40a2: $8d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40a3: $cf
	rst  $38                                         ; $40a4: $ff
	rst  $38                                         ; $40a5: $ff
	rst  $38                                         ; $40a6: $ff
	rst  $38                                         ; $40a7: $ff
	rst  $38                                         ; $40a8: $ff
	ld   a, [$1173]                                  ; $40a9: $fa $73 $11
	ld   de, $1111                                   ; $40ac: $11 $11 $11
	ld   de, $5904                                   ; $40af: $11 $04 $59
	call z, $ffff                                    ; $40b2: $cc $ff $ff
	rst  $38                                         ; $40b5: $ff
	rst  $38                                         ; $40b6: $ff
	rst  $38                                         ; $40b7: $ff
	rst  $38                                         ; $40b8: $ff
	or   a                                           ; $40b9: $b7
	ld   b, c                                        ; $40ba: $41
	ld   de, $1111                                   ; $40bb: $11 $11 $11
	ld   de, $2511                                   ; $40be: $11 $11 $25
	ld   a, e                                        ; $40c1: $7b
	call $ffff                                       ; $40c2: $cd $ff $ff
	rst  $38                                         ; $40c5: $ff
	rst  $38                                         ; $40c6: $ff
	rst  $38                                         ; $40c7: $ff
	db   $fd                                         ; $40c8: $fd
	add  [hl]                                        ; $40c9: $86
	ld   hl, $1111                                   ; $40ca: $21 $11 $11
	ld   de, $2111                                   ; $40cd: $11 $11 $21
	ld   [hl], $79                                   ; $40d0: $36 $79
	db   $dd                                         ; $40d2: $dd
	rst  $38                                         ; $40d3: $ff
	rst  $38                                         ; $40d4: $ff
	rst  $38                                         ; $40d5: $ff
	rst  $38                                         ; $40d6: $ff
	rst  $38                                         ; $40d7: $ff
	ei                                               ; $40d8: $fb
	sub  [hl]                                        ; $40d9: $96
	ld   sp, $1111                                   ; $40da: $31 $11 $11
	ld   de, $1111                                   ; $40dd: $11 $11 $11
	ld   d, $89                                      ; $40e0: $16 $89
	sbc  $ff                                         ; $40e2: $de $ff
	rst  $38                                         ; $40e4: $ff
	rst  $38                                         ; $40e5: $ff
	rst  $38                                         ; $40e6: $ff
	rst  $38                                         ; $40e7: $ff
	db   $fd                                         ; $40e8: $fd
	xor  b                                           ; $40e9: $a8
	ld   sp, $1111                                   ; $40ea: $31 $11 $11
	ld   de, $1111                                   ; $40ed: $11 $11 $11
	inc  d                                           ; $40f0: $14
	ld   [hl], a                                     ; $40f1: $77
	db   $dd                                         ; $40f2: $dd
	rst  $38                                         ; $40f3: $ff
	rst  $38                                         ; $40f4: $ff
	rst  $38                                         ; $40f5: $ff
	rst  $38                                         ; $40f6: $ff
	rst  $38                                         ; $40f7: $ff
	cp   $b8                                         ; $40f8: $fe $b8
	ld   h, d                                        ; $40fa: $62
	ld   de, $1111                                   ; $40fb: $11 $11 $11
	ld   de, $1111                                   ; $40fe: $11 $11 $11
	ld   e, b                                        ; $4101: $58
	adc  l                                           ; $4102: $8d
	rst  $28                                         ; $4103: $ef
	rst  $38                                         ; $4104: $ff
	rst  $38                                         ; $4105: $ff
	rst  $38                                         ; $4106: $ff
	rst  $38                                         ; $4107: $ff
	rst  $38                                         ; $4108: $ff
	db   $eb                                         ; $4109: $eb
	sub  [hl]                                        ; $410a: $96
	ld   de, $1111                                   ; $410b: $11 $11 $11
	ld   de, $1111                                   ; $410e: $11 $11 $11
	inc  d                                           ; $4111: $14
	ld   [hl], a                                     ; $4112: $77
	db   $ed                                         ; $4113: $ed
	rst  $38                                         ; $4114: $ff
	rst  $38                                         ; $4115: $ff
	rst  $38                                         ; $4116: $ff
	rst  $38                                         ; $4117: $ff
	rst  $38                                         ; $4118: $ff
	rst  $38                                         ; $4119: $ff
	reti                                             ; $411a: $d9


	ld   [hl], d                                     ; $411b: $72
	ld   de, $1111                                   ; $411c: $11 $11 $11
	ld   de, $1111                                   ; $411f: $11 $11 $11
	rla                                              ; $4122: $17
	ld   l, e                                        ; $4123: $6b
	sbc  $ff                                         ; $4124: $de $ff
	rst  $38                                         ; $4126: $ff
	rst  $38                                         ; $4127: $ff
	rst  $38                                         ; $4128: $ff
	rst  $38                                         ; $4129: $ff
	db   $fd                                         ; $412a: $fd
	cp   b                                           ; $412b: $b8
	ld   h, d                                        ; $412c: $62
	ld   de, $1111                                   ; $412d: $11 $11 $11
	ld   de, $1111                                   ; $4130: $11 $11 $11
	daa                                              ; $4133: $27
	ld   l, e                                        ; $4134: $6b
	sbc  $ff                                         ; $4135: $de $ff
	rst  $38                                         ; $4137: $ff
	rst  $38                                         ; $4138: $ff
	rst  $38                                         ; $4139: $ff
	rst  $38                                         ; $413a: $ff
	cp   $b9                                         ; $413b: $fe $b9
	ld   h, e                                        ; $413d: $63
	ld   de, $1111                                   ; $413e: $11 $11 $11
	ld   de, $1111                                   ; $4141: $11 $11 $11
	dec  d                                           ; $4144: $15
	ld   l, c                                        ; $4145: $69
	call $ffff                                       ; $4146: $cd $ff $ff
	rst  $38                                         ; $4149: $ff
	rst  $38                                         ; $414a: $ff
	rst  $38                                         ; $414b: $ff
	cp   $c8                                         ; $414c: $fe $c8
	ld   [hl], l                                     ; $414e: $75
	ld   hl, $1111                                   ; $414f: $21 $11 $11
	ld   de, $1111                                   ; $4152: $11 $11 $11
	ld   [de], a                                     ; $4155: $12
	ld   d, [hl]                                     ; $4156: $56
	cp   h                                           ; $4157: $bc
	rst  $28                                         ; $4158: $ef
	rst  $38                                         ; $4159: $ff
	rst  $38                                         ; $415a: $ff
	rst  $38                                         ; $415b: $ff
	rst  $38                                         ; $415c: $ff
	rst  $38                                         ; $415d: $ff
	db   $db                                         ; $415e: $db
	sbc  b                                           ; $415f: $98
	ld   h, e                                        ; $4160: $63
	ld   sp, $1111                                   ; $4161: $31 $11 $11
	ld   de, $1111                                   ; $4164: $11 $11 $11
	inc  d                                           ; $4167: $14
	ld   e, d                                        ; $4168: $5a
	cp   l                                           ; $4169: $bd
	rst  $38                                         ; $416a: $ff
	rst  $38                                         ; $416b: $ff
	rst  $38                                         ; $416c: $ff
	rst  $38                                         ; $416d: $ff
	rst  $38                                         ; $416e: $ff
	rst  $38                                         ; $416f: $ff
	jp   c, $65a8                                    ; $4170: $da $a8 $65

	ld   sp, $1111                                   ; $4173: $31 $11 $11
	ld   de, $1111                                   ; $4176: $11 $11 $11
	inc  de                                          ; $4179: $13
	ld   e, d                                        ; $417a: $5a
	xor  l                                           ; $417b: $ad
	rst  $38                                         ; $417c: $ff
	rst  $38                                         ; $417d: $ff
	rst  $38                                         ; $417e: $ff
	rst  $38                                         ; $417f: $ff
	rst  $38                                         ; $4180: $ff
	rst  $38                                         ; $4181: $ff
	db   $ed                                         ; $4182: $ed
	cp   c                                           ; $4183: $b9
	halt                                             ; $4184: $76
	ld   sp, $1111                                   ; $4185: $31 $11 $11
	ld   de, $1111                                   ; $4188: $11 $11 $11
	ld   [de], a                                     ; $418b: $12
	ld   e, b                                        ; $418c: $58
	sbc  l                                           ; $418d: $9d
	rst  $38                                         ; $418e: $ff
	rst  $38                                         ; $418f: $ff
	rst  $38                                         ; $4190: $ff
	rst  $38                                         ; $4191: $ff
	rst  $38                                         ; $4192: $ff
	rst  $38                                         ; $4193: $ff
	db   $fd                                         ; $4194: $fd
	cp   d                                           ; $4195: $ba
	sub  [hl]                                        ; $4196: $96
	ld   b, c                                        ; $4197: $41
	ld   de, $1111                                   ; $4198: $11 $11 $11
	ld   de, $1111                                   ; $419b: $11 $11 $11
	ld   [hl], $9c                                   ; $419e: $36 $9c
	rst  $28                                         ; $41a0: $ef
	rst  $38                                         ; $41a1: $ff
	rst  $38                                         ; $41a2: $ff
	rst  $38                                         ; $41a3: $ff
	rst  $38                                         ; $41a4: $ff
	rst  $38                                         ; $41a5: $ff
	cp   $db                                         ; $41a6: $fe $db
	and  a                                           ; $41a8: $a7
	ld   d, e                                        ; $41a9: $53
	ld   de, $1111                                   ; $41aa: $11 $11 $11
	ld   de, $1111                                   ; $41ad: $11 $11 $11
	inc  d                                           ; $41b0: $14
	ld   a, d                                        ; $41b1: $7a
	adc  $ff                                         ; $41b2: $ce $ff
	rst  $38                                         ; $41b4: $ff
	rst  $38                                         ; $41b5: $ff
	rst  $38                                         ; $41b6: $ff
	rst  $38                                         ; $41b7: $ff
	rst  $38                                         ; $41b8: $ff
	call c, Call_0b6_75a9                            ; $41b9: $dc $a9 $75
	ld   hl, $1111                                   ; $41bc: $21 $11 $11
	ld   de, $1111                                   ; $41bf: $11 $11 $11
	ld   [de], a                                     ; $41c2: $12
	ld   b, a                                        ; $41c3: $47
	sbc  h                                           ; $41c4: $9c
	rst  $28                                         ; $41c5: $ef
	rst  $38                                         ; $41c6: $ff

Call_0b6_41c7:
	rst  $38                                         ; $41c7: $ff
	rst  $38                                         ; $41c8: $ff
	rst  $38                                         ; $41c9: $ff
	rst  $38                                         ; $41ca: $ff
	cp   $db                                         ; $41cb: $fe $db
	xor  b                                           ; $41cd: $a8
	ld   h, e                                        ; $41ce: $63
	ld   de, $1111                                   ; $41cf: $11 $11 $11
	ld   de, $1111                                   ; $41d2: $11 $11 $11
	inc  de                                          ; $41d5: $13
	ld   l, c                                        ; $41d6: $69
	xor  l                                           ; $41d7: $ad
	rst  $38                                         ; $41d8: $ff
	rst  $38                                         ; $41d9: $ff
	rst  $38                                         ; $41da: $ff
	rst  $38                                         ; $41db: $ff
	rst  $38                                         ; $41dc: $ff
	rst  $38                                         ; $41dd: $ff
	db   $fd                                         ; $41de: $fd
	jp   z, Jump_0b6_5297                            ; $41df: $ca $97 $52

	ld   de, $1111                                   ; $41e2: $11 $11 $11
	ld   de, $1111                                   ; $41e5: $11 $11 $11
	inc  h                                           ; $41e8: $24
	ld   l, c                                        ; $41e9: $69
	cp   [hl]                                        ; $41ea: $be
	rst  $38                                         ; $41eb: $ff
	rst  $38                                         ; $41ec: $ff
	rst  $38                                         ; $41ed: $ff
	rst  $38                                         ; $41ee: $ff
	rst  $38                                         ; $41ef: $ff
	rst  $38                                         ; $41f0: $ff
	cp   $ca                                         ; $41f1: $fe $ca
	sub  a                                           ; $41f3: $97
	ld   d, d                                        ; $41f4: $52
	ld   de, $1111                                   ; $41f5: $11 $11 $11
	ld   de, $1111                                   ; $41f8: $11 $11 $11
	inc  d                                           ; $41fb: $14
	ld   l, c                                        ; $41fc: $69
	call $ffff                                       ; $41fd: $cd $ff $ff
	rst  $38                                         ; $4200: $ff
	rst  $38                                         ; $4201: $ff
	rst  $38                                         ; $4202: $ff
	rst  $38                                         ; $4203: $ff
	db   $fd                                         ; $4204: $fd
	jp   z, Jump_0b6_5297                            ; $4205: $ca $97 $52

	ld   de, $1111                                   ; $4208: $11 $11 $11
	ld   de, $1111                                   ; $420b: $11 $11 $11
	inc  d                                           ; $420e: $14
	ld   l, b                                        ; $420f: $68
	cp   l                                           ; $4210: $bd
	rst  $38                                         ; $4211: $ff
	rst  $38                                         ; $4212: $ff
	rst  $38                                         ; $4213: $ff
	rst  $38                                         ; $4214: $ff
	rst  $38                                         ; $4215: $ff
	rst  $38                                         ; $4216: $ff
	xor  $db                                         ; $4217: $ee $db
	xor  b                                           ; $4219: $a8
	ld   h, e                                        ; $421a: $63
	ld   de, $1111                                   ; $421b: $11 $11 $11
	ld   de, $1111                                   ; $421e: $11 $11 $11
	ld   [de], a                                     ; $4221: $12
	ld   d, a                                        ; $4222: $57
	xor  e                                           ; $4223: $ab
	rst  $28                                         ; $4224: $ef
	rst  $38                                         ; $4225: $ff
	rst  $38                                         ; $4226: $ff
	rst  $38                                         ; $4227: $ff
	rst  $38                                         ; $4228: $ff
	rst  $38                                         ; $4229: $ff
	rst  $38                                         ; $422a: $ff
	db   $ed                                         ; $422b: $ed
	cp   c                                           ; $422c: $b9
	add  l                                           ; $422d: $85
	ld   sp, $1111                                   ; $422e: $31 $11 $11
	ld   de, $1111                                   ; $4231: $11 $11 $11
	ld   de, $7925                                   ; $4234: $11 $25 $79
	adc  $ff                                         ; $4237: $ce $ff
	rst  $38                                         ; $4239: $ff
	rst  $38                                         ; $423a: $ff
	rst  $38                                         ; $423b: $ff
	rst  $38                                         ; $423c: $ff
	rst  $38                                         ; $423d: $ff
	db   $ed                                         ; $423e: $ed
	res  5, b                                        ; $423f: $cb $a8
	ld   h, e                                        ; $4241: $63
	ld   de, $1111                                   ; $4242: $11 $11 $11
	ld   de, $1111                                   ; $4245: $11 $11 $11
	ld   [de], a                                     ; $4248: $12
	ld   b, [hl]                                     ; $4249: $46
	sbc  h                                           ; $424a: $9c
	rst  $28                                         ; $424b: $ef
	rst  $38                                         ; $424c: $ff
	rst  $38                                         ; $424d: $ff
	rst  $38                                         ; $424e: $ff
	rst  $38                                         ; $424f: $ff
	rst  $38                                         ; $4250: $ff
	rst  $38                                         ; $4251: $ff
	cp   $db                                         ; $4252: $fe $db
	sub  a                                           ; $4254: $97
	ld   d, d                                        ; $4255: $52
	ld   de, $1111                                   ; $4256: $11 $11 $11
	ld   de, $1111                                   ; $4259: $11 $11 $11
	inc  de                                          ; $425c: $13
	ld   d, a                                        ; $425d: $57
	xor  l                                           ; $425e: $ad
	rst  $28                                         ; $425f: $ef
	rst  $38                                         ; $4260: $ff
	rst  $38                                         ; $4261: $ff
	rst  $38                                         ; $4262: $ff
	rst  $38                                         ; $4263: $ff
	rst  $38                                         ; $4264: $ff
	rst  $38                                         ; $4265: $ff
	xor  $cb                                         ; $4266: $ee $cb
	and  a                                           ; $4268: $a7
	ld   b, d                                        ; $4269: $42
	ld   de, $1111                                   ; $426a: $11 $11 $11
	ld   de, $1111                                   ; $426d: $11 $11 $11
	ld   [de], a                                     ; $4270: $12
	ld   b, a                                        ; $4271: $47
	xor  l                                           ; $4272: $ad
	rst  $28                                         ; $4273: $ef
	rst  $38                                         ; $4274: $ff
	rst  $38                                         ; $4275: $ff
	rst  $38                                         ; $4276: $ff
	rst  $38                                         ; $4277: $ff
	rst  $38                                         ; $4278: $ff
	rst  $38                                         ; $4279: $ff
	cp   $db                                         ; $427a: $fe $db
	sbc  b                                           ; $427c: $98
	ld   d, d                                        ; $427d: $52
	ld   de, $1111                                   ; $427e: $11 $11 $11
	ld   de, $1111                                   ; $4281: $11 $11 $11
	ld   [de], a                                     ; $4284: $12
	ld   b, [hl]                                     ; $4285: $46
	adc  e                                           ; $4286: $8b
	rst  JumpTable                                         ; $4287: $df
	rst  $38                                         ; $4288: $ff
	rst  $38                                         ; $4289: $ff
	rst  $38                                         ; $428a: $ff
	rst  $38                                         ; $428b: $ff
	rst  $38                                         ; $428c: $ff
	rst  $38                                         ; $428d: $ff
	rst  $38                                         ; $428e: $ff
	db   $ec                                         ; $428f: $ec
	xor  d                                           ; $4290: $aa
	ld   h, c                                        ; $4291: $61
	ld   de, $1111                                   ; $4292: $11 $11 $11
	ld   de, $1111                                   ; $4295: $11 $11 $11
	inc  de                                          ; $4298: $13
	ld   b, a                                        ; $4299: $47
	cp   [hl]                                        ; $429a: $be
	rst  $38                                         ; $429b: $ff
	rst  $38                                         ; $429c: $ff
	rst  $38                                         ; $429d: $ff
	rst  $38                                         ; $429e: $ff
	rst  $38                                         ; $429f: $ff
	rst  $38                                         ; $42a0: $ff
	rst  $38                                         ; $42a1: $ff
	rst  $38                                         ; $42a2: $ff
	db   $eb                                         ; $42a3: $eb
	sub  [hl]                                        ; $42a4: $96
	ld   hl, $1111                                   ; $42a5: $21 $11 $11
	ld   de, $1111                                   ; $42a8: $11 $11 $11
	dec  d                                           ; $42ab: $15
	xor  l                                           ; $42ac: $ad
	call c, $ffff                                    ; $42ad: $dc $ff $ff
	rst  $38                                         ; $42b0: $ff
	rst  $38                                         ; $42b1: $ff
	rst  $38                                         ; $42b2: $ff
	rst  $38                                         ; $42b3: $ff
	db   $fd                                         ; $42b4: $fd
	call $75ca                                       ; $42b5: $cd $ca $75
	ld   b, c                                        ; $42b8: $41
	ld   de, $1111                                   ; $42b9: $11 $11 $11
	ld   de, $8617                                   ; $42bc: $11 $17 $86
	sbc  [hl]                                        ; $42bf: $9e
	rst  $38                                         ; $42c0: $ff
	cp   [hl]                                        ; $42c1: $be
	rst  $38                                         ; $42c2: $ff
	rst  $38                                         ; $42c3: $ff
	rst  $38                                         ; $42c4: $ff
	rst  $38                                         ; $42c5: $ff
	rst  $38                                         ; $42c6: $ff
	rst  $38                                         ; $42c7: $ff
	db   $eb                                         ; $42c8: $eb
	call c, $2196                                    ; $42c9: $dc $96 $21
	ld   de, $1111                                   ; $42cc: $11 $11 $11
	ld   de, $ee15                                   ; $42cf: $11 $15 $ee
	xor  h                                           ; $42d2: $ac
	rst  $38                                         ; $42d3: $ff
	ld   [$ffdf], a                                  ; $42d4: $ea $df $ff
	rst  $28                                         ; $42d7: $ef
	rst  $38                                         ; $42d8: $ff
	rst  $38                                         ; $42d9: $ff
	rst  $38                                         ; $42da: $ff
	db   $fc                                         ; $42db: $fc
	res  0, l                                        ; $42dc: $cb $85
	ld   de, $1111                                   ; $42de: $11 $11 $11
	ld   de, $3711                                   ; $42e1: $11 $11 $37
	rst  $38                                         ; $42e4: $ff
	db   $fc                                         ; $42e5: $fc
	rst  $38                                         ; $42e6: $ff
	ret  c                                           ; $42e7: $d8

	adc  [hl]                                        ; $42e8: $8e
	rst  $38                                         ; $42e9: $ff
	xor  $ff                                         ; $42ea: $ee $ff
	rst  $38                                         ; $42ec: $ff
	rst  $38                                         ; $42ed: $ff
	cp   $ca                                         ; $42ee: $fe $ca
	ld   [hl], h                                     ; $42f0: $74
	ld   de, $1111                                   ; $42f1: $11 $11 $11
	ld   de, $a712                                   ; $42f4: $11 $12 $a7
	rst  $38                                         ; $42f7: $ff
	cp   $cd                                         ; $42f8: $fe $cd
	cp   d                                           ; $42fa: $ba
	ld   l, e                                        ; $42fb: $6b
	xor  $ff                                         ; $42fc: $ee $ff
	rst  $38                                         ; $42fe: $ff
	rst  $38                                         ; $42ff: $ff
	rst  $38                                         ; $4300: $ff
	rst  $38                                         ; $4301: $ff
	cp   d                                           ; $4302: $ba
	ld   [hl], h                                     ; $4303: $74
	ld   de, $1111                                   ; $4304: $11 $11 $11
	ld   de, $9c13                                   ; $4307: $11 $13 $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $430a: $cf
	rst  $38                                         ; $430b: $ff
	call z, $9797                                    ; $430c: $cc $97 $97
	sbc  $ff                                         ; $430f: $de $ff
	rst  $38                                         ; $4311: $ff
	rst  $38                                         ; $4312: $ff
	rst  $38                                         ; $4313: $ff
	cp   $ca                                         ; $4314: $fe $ca
	sub  [hl]                                        ; $4316: $96
	ld   hl, $1111                                   ; $4317: $21 $11 $11
	ld   de, $7f13                                   ; $431a: $11 $13 $7f
	adc  $ff                                         ; $431d: $ce $ff
	db   $fd                                         ; $431f: $fd
	sub  e                                           ; $4320: $93
	ld   [hl], a                                     ; $4321: $77
	xor  [hl]                                        ; $4322: $ae
	rst  JumpTable                                         ; $4323: $df
	rst  $38                                         ; $4324: $ff
	rst  $38                                         ; $4325: $ff
	rst  $38                                         ; $4326: $ff
	rst  $38                                         ; $4327: $ff
	db   $db                                         ; $4328: $db
	sbc  b                                           ; $4329: $98
	ld   d, c                                        ; $432a: $51
	ld   de, $1111                                   ; $432b: $11 $11 $11
	ld   de, $fc4b                                   ; $432e: $11 $4b $fc
	rst  $38                                         ; $4331: $ff
	rst  $38                                         ; $4332: $ff
	rst  ToBoot                                         ; $4333: $c7
	dec  b                                           ; $4334: $05
	ld   l, l                                        ; $4335: $6d
	db   $fd                                         ; $4336: $fd
	rst  $38                                         ; $4337: $ff
	rst  $38                                         ; $4338: $ff
	rst  $38                                         ; $4339: $ff
	rst  $38                                         ; $433a: $ff
	db   $ed                                         ; $433b: $ed
	xor  c                                           ; $433c: $a9
	ld   [hl], e                                     ; $433d: $73
	ld   de, $1111                                   ; $433e: $11 $11 $11
	ld   de, $ff16                                   ; $4341: $11 $16 $ff
	rst  JumpTable                                         ; $4344: $df
	rst  $38                                         ; $4345: $ff
	db   $eb                                         ; $4346: $eb
	ld   sp, $ee47                                   ; $4347: $31 $47 $ee
	rst  $38                                         ; $434a: $ff
	rst  $38                                         ; $434b: $ff
	rst  $38                                         ; $434c: $ff
	rst  $38                                         ; $434d: $ff
	cp   $ca                                         ; $434e: $fe $ca
	sub  [hl]                                        ; $4350: $96
	ld   sp, $1111                                   ; $4351: $31 $11 $11
	ld   de, $8f11                                   ; $4354: $11 $11 $8f
	cp   $ff                                         ; $4357: $fe $ff
	cp   $b1                                         ; $4359: $fe $b1
	inc  de                                          ; $435b: $13
	adc  a                                           ; $435c: $8f
	rst  $38                                         ; $435d: $ff
	rst  $38                                         ; $435e: $ff
	rst  $38                                         ; $435f: $ff
	rst  $38                                         ; $4360: $ff
	cp   $ec                                         ; $4361: $fe $ec
	cp   b                                           ; $4363: $b8
	ld   h, c                                        ; $4364: $61
	ld   de, $1111                                   ; $4365: $11 $11 $11
	ld   de, $ff2c                                   ; $4368: $11 $2c $ff
	rst  JumpTable                                         ; $436b: $df
	rst  $38                                         ; $436c: $ff
	jp   hl                                          ; $436d: $e9


	ld   de, $ff29                                   ; $436e: $11 $29 $ff
	rst  $28                                         ; $4371: $ef
	rst  $38                                         ; $4372: $ff
	rst  $38                                         ; $4373: $ff
	rst  $38                                         ; $4374: $ff

Jump_0b6_4375:
	call c, $85cb                                    ; $4375: $dc $cb $85
	ld   de, $1111                                   ; $4378: $11 $11 $11
	ld   de, $ff15                                   ; $437b: $11 $15 $ff
	db   $fc                                         ; $437e: $fc
	rst  $28                                         ; $437f: $ef
	db   $fd                                         ; $4380: $fd
	ld   [hl], c                                     ; $4381: $71
	ld   [de], a                                     ; $4382: $12
	sbc  a                                           ; $4383: $9f
	rst  $38                                         ; $4384: $ff
	rst  $38                                         ; $4385: $ff
	rst  $38                                         ; $4386: $ff
	rst  $38                                         ; $4387: $ff
	ei                                               ; $4388: $fb
	cp   h                                           ; $4389: $bc
	ret                                              ; $438a: $c9


	ld   d, c                                        ; $438b: $51
	ld   de, $1111                                   ; $438c: $11 $11 $11
	ld   de, $ff4f                                   ; $438f: $11 $4f $ff
	db   $ed                                         ; $4392: $ed
	rst  $38                                         ; $4393: $ff
	db   $f4                                         ; $4394: $f4
	ld   de, $ff1b                                   ; $4395: $11 $1b $ff
	rst  $38                                         ; $4398: $ff
	rst  $38                                         ; $4399: $ff
	rst  $38                                         ; $439a: $ff
	cp   $aa                                         ; $439b: $fe $aa
	call c, $1182                                    ; $439d: $dc $82 $11
	ld   de, $1111                                   ; $43a0: $11 $11 $11
	jr   @+$01                                       ; $43a3: $18 $ff

	db   $fc                                         ; $43a5: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43a6: $cf
	rst  $38                                         ; $43a7: $ff
	ld   sp, $df11                                   ; $43a8: $31 $11 $df
	cp   $ff                                         ; $43ab: $fe $ff
	rst  $38                                         ; $43ad: $ff
	rst  $38                                         ; $43ae: $ff
	jp   hl                                          ; $43af: $e9


	xor  h                                           ; $43b0: $ac
	cp   c                                           ; $43b1: $b9
	ld   hl, $1111                                   ; $43b2: $21 $11 $11
	ld   de, $cf11                                   ; $43b5: $11 $11 $cf
	rst  $38                                         ; $43b8: $ff
	cp   a                                           ; $43b9: $bf
	rst  $38                                         ; $43ba: $ff
	pop  af                                          ; $43bb: $f1
	ld   de, $ff3c                                   ; $43bc: $11 $3c $ff
	rst  JumpTable                                         ; $43bf: $df
	rst  $38                                         ; $43c0: $ff
	rst  $38                                         ; $43c1: $ff
	db   $fd                                         ; $43c2: $fd
	sbc  e                                           ; $43c3: $9b
	db   $db                                         ; $43c4: $db
	ld   [hl], c                                     ; $43c5: $71
	ld   de, $1111                                   ; $43c6: $11 $11 $11
	ld   de, $ff1e                                   ; $43c9: $11 $1e $ff
	db   $dd                                         ; $43cc: $dd
	rst  $38                                         ; $43cd: $ff
	cp   $11                                         ; $43ce: $fe $11
	inc  de                                          ; $43d0: $13
	rst  JumpTable                                         ; $43d1: $df
	sbc  $ff                                         ; $43d2: $de $ff
	rst  $38                                         ; $43d4: $ff
	rst  $38                                         ; $43d5: $ff
	ret  z                                           ; $43d6: $c8

	call $11a5                                       ; $43d7: $cd $a5 $11
	ld   de, $1111                                   ; $43da: $11 $11 $11
	ld   d, $ff                                      ; $43dd: $16 $ff
	db   $fd                                         ; $43df: $fd
	rst  JumpTable                                         ; $43e0: $df
	rst  $38                                         ; $43e1: $ff
	or   c                                           ; $43e2: $b1
	ld   de, $fb7f                                   ; $43e3: $11 $7f $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43e6: $cf
	rst  $38                                         ; $43e7: $ff
	rst  $38                                         ; $43e8: $ff
	ei                                               ; $43e9: $fb
	xor  h                                           ; $43ea: $ac
	rst  ToBoot                                         ; $43eb: $c7
	ld   hl, $1111                                   ; $43ec: $21 $11 $11
	ld   de, $ef12                                   ; $43ef: $11 $12 $ef
	cp   $ff                                         ; $43f2: $fe $ff
	rst  $38                                         ; $43f4: $ff
	pop  af                                          ; $43f5: $f1
	ld   de, $c92c                                   ; $43f6: $11 $2c $c9
	sbc  a                                           ; $43f9: $9f
	rst  $38                                         ; $43fa: $ff
	rst  $38                                         ; $43fb: $ff
	cp   $cc                                         ; $43fc: $fe $cc
	reti                                             ; $43fe: $d9


	ld   sp, $1111                                   ; $43ff: $31 $11 $11
	ld   de, $cf11                                   ; $4402: $11 $11 $cf
	rst  $38                                         ; $4405: $ff
	rst  $38                                         ; $4406: $ff
	rst  $38                                         ; $4407: $ff
	di                                               ; $4408: $f3
	ld   de, $a718                                   ; $4409: $11 $18 $a7
	ld   e, l                                        ; $440c: $5d
	rst  $38                                         ; $440d: $ff
	rst  $38                                         ; $440e: $ff
	rst  $38                                         ; $440f: $ff
	db   $ed                                         ; $4410: $ed
	rst  ToBoot                                         ; $4411: $c7
	ld   sp, $1111                                   ; $4412: $31 $11 $11
	ld   de, $cf11                                   ; $4415: $11 $11 $cf
	db   $fd                                         ; $4418: $fd
	rst  $38                                         ; $4419: $ff
	rst  $38                                         ; $441a: $ff
	db   $f4                                         ; $441b: $f4
	ld   [de], a                                     ; $441c: $12
	rla                                              ; $441d: $17
	ld   [hl], e                                     ; $441e: $73
	ld   c, l                                        ; $441f: $4d
	rst  $38                                         ; $4420: $ff
	rst  $38                                         ; $4421: $ff
	rst  $38                                         ; $4422: $ff
	cp   $a6                                         ; $4423: $fe $a6
	ld   sp, $1111                                   ; $4425: $31 $11 $11
	ld   de, $ef17                                   ; $4428: $11 $17 $ef
	cp   $ff                                         ; $442b: $fe $ff
	rst  $38                                         ; $442d: $ff
	pop  af                                          ; $442e: $f1
	inc  d                                           ; $442f: $14
	dec  h                                           ; $4430: $25
	ld   hl, $ff4f                                   ; $4431: $21 $4f $ff
	rst  $38                                         ; $4434: $ff
	rst  $38                                         ; $4435: $ff
	db   $fd                                         ; $4436: $fd
	sub  e                                           ; $4437: $93
	ld   sp, $1111                                   ; $4438: $31 $11 $11
	ld   de, $ff19                                   ; $443b: $11 $19 $ff
	rst  $38                                         ; $443e: $ff
	rst  $38                                         ; $443f: $ff
	rst  $38                                         ; $4440: $ff
	and  c                                           ; $4441: $a1
	ld   [hl], e                                     ; $4442: $73
	ld   sp, $af11                                   ; $4443: $31 $11 $af
	rst  $38                                         ; $4446: $ff
	rst  $38                                         ; $4447: $ff
	rst  $38                                         ; $4448: $ff
	ld   a, [$2164]                                  ; $4449: $fa $64 $21
	ld   de, $1111                                   ; $444c: $11 $11 $11
	ld   e, e                                        ; $444f: $5b
	rst  $38                                         ; $4450: $ff
	rst  $38                                         ; $4451: $ff
	rst  $38                                         ; $4452: $ff
	rst  $38                                         ; $4453: $ff
	ld   b, [hl]                                     ; $4454: $46
	ld   [hl], e                                     ; $4455: $73
	ld   de, $ef13                                   ; $4456: $11 $13 $ef
	rst  $38                                         ; $4459: $ff
	rst  $38                                         ; $445a: $ff
	rst  $38                                         ; $445b: $ff
	ld   [$1166], a                                  ; $445c: $ea $66 $11
	ld   de, $1111                                   ; $445f: $11 $11 $11
	ld   e, a                                        ; $4462: $5f
	cp   $ff                                         ; $4463: $fe $ff
	rst  $38                                         ; $4465: $ff
	ld   a, [$24ac]                                  ; $4466: $fa $ac $24
	ld   de, $cf1a                                   ; $4469: $11 $1a $cf
	rst  $38                                         ; $446c: $ff
	rst  $38                                         ; $446d: $ff
	rst  $38                                         ; $446e: $ff
	rst  $10                                         ; $446f: $d7
	sub  e                                           ; $4470: $93
	ld   de, $1111                                   ; $4471: $11 $11 $11
	ld   de, $afaf                                   ; $4474: $11 $af $af
	rst  $38                                         ; $4477: $ff
	rst  $38                                         ; $4478: $ff
	cp   $f7                                         ; $4479: $fe $f7
	ld   [hl], d                                     ; $447b: $72
	ld   de, $cf57                                   ; $447c: $11 $57 $cf
	rst  $38                                         ; $447f: $ff
	rst  $38                                         ; $4480: $ff
	cp   $ba                                         ; $4481: $fe $ba
	ld   d, c                                        ; $4483: $51
	ld   de, $1111                                   ; $4484: $11 $11 $11
	inc  d                                           ; $4487: $14
	ld   l, c                                        ; $4488: $69
	rst  $38                                         ; $4489: $ff
	rst  $38                                         ; $448a: $ff
	rst  $38                                         ; $448b: $ff
	rst  $38                                         ; $448c: $ff
	cp   $63                                         ; $448d: $fe $63
	dec  [hl]                                        ; $448f: $35
	ld   b, a                                        ; $4490: $47
	call $fdff                                       ; $4491: $cd $ff $fd
	call z, $21a6                                    ; $4494: $cc $a6 $21
	ld   de, $1111                                   ; $4497: $11 $11 $11
	ld   de, $ff68                                   ; $449a: $11 $68 $ff
	rst  $38                                         ; $449d: $ff
	rst  $38                                         ; $449e: $ff
	rst  $38                                         ; $449f: $ff
	cp   $bc                                         ; $44a0: $fe $bc
	jp   z, $a78a                                    ; $44a2: $ca $8a $a7

	ld   h, l                                        ; $44a5: $65
	ld   h, l                                        ; $44a6: $65
	ld   a, c                                        ; $44a7: $79
	ld   h, e                                        ; $44a8: $63
	ld   [hl+], a                                    ; $44a9: $22
	ld   de, $3189                                   ; $44aa: $11 $89 $31
	ld   [de], a                                     ; $44ad: $12
	inc  h                                           ; $44ae: $24
	ld   b, h                                        ; $44af: $44
	ld   b, a                                        ; $44b0: $47
	cp   [hl]                                        ; $44b1: $be
	call c, $ffdf                                    ; $44b2: $dc $df $ff
	db   $ec                                         ; $44b5: $ec
	cp   e                                           ; $44b6: $bb
	jp   z, $bd9a                                    ; $44b7: $ca $9a $bd

	db   $dd                                         ; $44ba: $dd
	call z, $b9cc                                    ; $44bb: $cc $cc $b9
	ld   [hl], a                                     ; $44be: $77
	ld   h, e                                        ; $44bf: $63
	ld   de, $1111                                   ; $44c0: $11 $11 $11
	ld   de, $4613                                   ; $44c3: $11 $13 $46
	adc  b                                           ; $44c6: $88
	xor  e                                           ; $44c7: $ab
	call z, $ffee                                    ; $44c8: $cc $ee $ff
	xor  $fe                                         ; $44cb: $ee $fe
	rst  $38                                         ; $44cd: $ff
	rst  $38                                         ; $44ce: $ff
	rst  $38                                         ; $44cf: $ff
	rst  $38                                         ; $44d0: $ff
	jp   z, $6477                                    ; $44d1: $ca $77 $64

	ld   de, $1111                                   ; $44d4: $11 $11 $11
	ld   de, $1311                                   ; $44d7: $11 $11 $13

Call_0b6_44da:
	ld   d, [hl]                                     ; $44da: $56
	ld   a, c                                        ; $44db: $79
	call $ffee                                       ; $44dc: $cd $ee $ff
	rst  $38                                         ; $44df: $ff
	rst  $38                                         ; $44e0: $ff
	rst  $38                                         ; $44e1: $ff
	rst  $38                                         ; $44e2: $ff
	rst  $38                                         ; $44e3: $ff
	rst  $38                                         ; $44e4: $ff
	db   $db                                         ; $44e5: $db
	sub  [hl]                                        ; $44e6: $96
	ld   b, e                                        ; $44e7: $43
	ld   hl, $1111                                   ; $44e8: $21 $11 $11
	ld   de, $1111                                   ; $44eb: $11 $11 $11
	dec  [hl]                                        ; $44ee: $35
	ld   l, b                                        ; $44ef: $68
	xor  e                                           ; $44f0: $ab
	call $ffff                                       ; $44f1: $cd $ff $ff
	rst  $38                                         ; $44f4: $ff
	rst  $38                                         ; $44f5: $ff
	rst  $38                                         ; $44f6: $ff
	rst  $38                                         ; $44f7: $ff
	rst  $38                                         ; $44f8: $ff
	db   $ec                                         ; $44f9: $ec
	cp   c                                           ; $44fa: $b9
	ld   [hl], l                                     ; $44fb: $75
	ld   b, h                                        ; $44fc: $44
	ld   de, $1111                                   ; $44fd: $11 $11 $11
	ld   de, $1211                                   ; $4500: $11 $11 $12
	inc  [hl]                                        ; $4503: $34
	ld   l, c                                        ; $4504: $69
	sbc  h                                           ; $4505: $9c
	db   $dd                                         ; $4506: $dd
	rst  $28                                         ; $4507: $ef
	rst  $38                                         ; $4508: $ff
	rst  $38                                         ; $4509: $ff
	rst  $38                                         ; $450a: $ff
	rst  $38                                         ; $450b: $ff
	rst  $38                                         ; $450c: $ff
	cp   $dc                                         ; $450d: $fe $dc
	sub  a                                           ; $450f: $97
	ld   h, [hl]                                     ; $4510: $66
	ld   d, e                                        ; $4511: $53
	ld   de, $1111                                   ; $4512: $11 $11 $11
	ld   de, $1311                                   ; $4515: $11 $11 $13
	ld   b, l                                        ; $4518: $45
	ld   l, b                                        ; $4519: $68
	cp   h                                           ; $451a: $bc
	sbc  $ef                                         ; $451b: $de $ef
	rst  $38                                         ; $451d: $ff
	rst  $38                                         ; $451e: $ff
	rst  $38                                         ; $451f: $ff
	rst  $38                                         ; $4520: $ff
	rst  $38                                         ; $4521: $ff
	db   $ed                                         ; $4522: $ed
	db   $db                                         ; $4523: $db
	sub  a                                           ; $4524: $97
	ld   h, [hl]                                     ; $4525: $66
	ld   h, e                                        ; $4526: $63
	ld   de, $1111                                   ; $4527: $11 $11 $11
	ld   de, $1311                                   ; $452a: $11 $11 $13
	ld   b, [hl]                                     ; $452d: $46
	ld   a, c                                        ; $452e: $79
	call z, $efde                                    ; $452f: $cc $de $ef
	rst  $38                                         ; $4532: $ff
	rst  $38                                         ; $4533: $ff
	rst  $28                                         ; $4534: $ef
	rst  $38                                         ; $4535: $ff
	db   $ed                                         ; $4536: $ed
	rst  $38                                         ; $4537: $ff
	ret                                              ; $4538: $c9


	ld   [hl], a                                     ; $4539: $77
	ld   [hl], a                                     ; $453a: $77
	ld   b, c                                        ; $453b: $41
	ld   de, $1111                                   ; $453c: $11 $11 $11
	ld   de, $4412                                   ; $453f: $11 $12 $44
	ld   l, b                                        ; $4542: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4543: $cf
	db   $fd                                         ; $4544: $fd
	rst  $38                                         ; $4545: $ff
	rst  $38                                         ; $4546: $ff
	db   $fd                                         ; $4547: $fd
	rst  JumpTable                                         ; $4548: $df
	rst  $38                                         ; $4549: $ff
	rst  $38                                         ; $454a: $ff
	rst  $38                                         ; $454b: $ff
	ret  z                                           ; $454c: $c8

	ld   hl, $1127                                   ; $454d: $21 $27 $11
	ld   de, $1111                                   ; $4550: $11 $11 $11
	inc  de                                          ; $4553: $13
	ld   c, e                                        ; $4554: $4b
	or   a                                           ; $4555: $b7
	rst  $38                                         ; $4556: $ff
	rst  $38                                         ; $4557: $ff
	rst  $38                                         ; $4558: $ff
	rst  $38                                         ; $4559: $ff
	cp   $ad                                         ; $455a: $fe $ad
	cp   $a7                                         ; $455c: $fe $a7
	ld   l, c                                        ; $455e: $69
	ld   h, c                                        ; $455f: $61
	ld   de, $1139                                   ; $4560: $11 $39 $11
	ld   de, $129f                                   ; $4563: $11 $9f $12
	ld   a, [$4eff]                                  ; $4566: $fa $ff $4e
	rst  $38                                         ; $4569: $ff
	rst  $28                                         ; $456a: $ef
	sbc  a                                           ; $456b: $9f
	db   $fd                                         ; $456c: $fd
	ld   [hl], a                                     ; $456d: $77
	cp   h                                           ; $456e: $bc
	sub  h                                           ; $456f: $94
	ld   de, $1111                                   ; $4570: $11 $11 $11
	ld   sp, $1d43                                   ; $4573: $31 $43 $1d
	di                                               ; $4576: $f3
	rst  $28                                         ; $4577: $ef
	cp   a                                           ; $4578: $bf
	ei                                               ; $4579: $fb
	rst  $38                                         ; $457a: $ff
	rst  $28                                         ; $457b: $ef
	ei                                               ; $457c: $fb
	rst  JumpTable                                         ; $457d: $df
	jp   z, $34b5                                    ; $457e: $ca $b5 $34

	ld   de, $1511                                   ; $4581: $11 $11 $15
	ld   de, $bf71                                   ; $4584: $11 $71 $bf
	ld   l, d                                        ; $4587: $6a
	rst  $38                                         ; $4588: $ff
	rst  $38                                         ; $4589: $ff
	rst  $38                                         ; $458a: $ff
	rst  $38                                         ; $458b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $458c: $cf
	call z, $9cfc                                    ; $458d: $cc $fc $9c
	add  [hl]                                        ; $4590: $86
	ld   b, c                                        ; $4591: $41
	ld   de, $1111                                   ; $4592: $11 $11 $11
	ld   d, $18                                      ; $4595: $16 $18
	ld   hl, sp-$31                                  ; $4597: $f8 $cf
	rst  $38                                         ; $4599: $ff
	rst  $38                                         ; $459a: $ff
	rst  $28                                         ; $459b: $ef
	db   $fc                                         ; $459c: $fc
	ei                                               ; $459d: $fb
	rst  JumpTable                                         ; $459e: $df
	jp   c, $64cb                                    ; $459f: $da $cb $64

	ld   de, $1111                                   ; $45a2: $11 $11 $11
	ld   de, $ae41                                   ; $45a5: $11 $41 $ae
	xor  d                                           ; $45a8: $aa
	rst  $38                                         ; $45a9: $ff
	rst  $38                                         ; $45aa: $ff
	rst  $38                                         ; $45ab: $ff
	rst  $38                                         ; $45ac: $ff
	cp   $ee                                         ; $45ad: $fe $ee
	cp   $af                                         ; $45af: $fe $af
	and  a                                           ; $45b1: $a7
	ld   b, c                                        ; $45b2: $41
	ld   de, $1111                                   ; $45b3: $11 $11 $11
	ld   [de], a                                     ; $45b6: $12
	dec  e                                           ; $45b7: $1d
	res  3, a                                        ; $45b8: $cb $9f
	rst  $38                                         ; $45ba: $ff
	ld   a, [$fdff]                                  ; $45bb: $fa $ff $fd
	sbc  $df                                         ; $45be: $de $df
	xor  [hl]                                        ; $45c0: $ae
	reti                                             ; $45c1: $d9


	ld   h, d                                        ; $45c2: $62
	ld   de, $1111                                   ; $45c3: $11 $11 $11
	inc  de                                          ; $45c6: $13
	ld   d, $de                                      ; $45c7: $16 $de
	xor  a                                           ; $45c9: $af
	cp   $ff                                         ; $45ca: $fe $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45cc: $cf
	rst  $38                                         ; $45cd: $ff
	cp   a                                           ; $45ce: $bf
	adc  a                                           ; $45cf: $8f
	ld   a, [$83f9]                                  ; $45d0: $fa $f9 $83
	ld   de, $1111                                   ; $45d3: $11 $11 $11
	ld   de, $ce11                                   ; $45d6: $11 $11 $ce
	ld   hl, sp-$01                                  ; $45d9: $f8 $ff
	rst  $38                                         ; $45db: $ff
	xor  a                                           ; $45dc: $af
	rst  $38                                         ; $45dd: $ff
	adc  $bd                                         ; $45de: $ce $bd
	ei                                               ; $45e0: $fb
	ei                                               ; $45e1: $fb
	and  h                                           ; $45e2: $a4
	ld   hl, $1111                                   ; $45e3: $21 $11 $11
	ld   de, $ab11                                   ; $45e6: $11 $11 $ab
	rst  $30                                         ; $45e9: $f7
	rst  $38                                         ; $45ea: $ff
	rst  $38                                         ; $45eb: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45ec: $cf
	rst  $38                                         ; $45ed: $ff
	xor  $db                                         ; $45ee: $ee $db
	cp   $fc                                         ; $45f0: $fe $fc
	and  [hl]                                        ; $45f2: $a6
	ld   sp, $1111                                   ; $45f3: $31 $11 $11
	ld   de, $8c11                                   ; $45f6: $11 $11 $8c
	ld   a, [$ffff]                                  ; $45f9: $fa $ff $ff
	rst  JumpTable                                         ; $45fc: $df
	rst  $38                                         ; $45fd: $ff
	db   $fd                                         ; $45fe: $fd
	reti                                             ; $45ff: $d9


	rst  $38                                         ; $4600: $ff
	db   $fc                                         ; $4601: $fc
	sub  [hl]                                        ; $4602: $96
	ld   hl, $1111                                   ; $4603: $21 $11 $11
	ld   de, $8d11                                   ; $4606: $11 $11 $8d
	ei                                               ; $4609: $fb
	rst  $38                                         ; $460a: $ff
	rst  $38                                         ; $460b: $ff
	rst  $28                                         ; $460c: $ef
	rst  $38                                         ; $460d: $ff
	db   $fd                                         ; $460e: $fd
	jp   hl                                          ; $460f: $e9


	rst  $38                                         ; $4610: $ff
	cp   $95                                         ; $4611: $fe $95
	ld   hl, $1111                                   ; $4613: $21 $11 $11
	ld   de, $ac01                                   ; $4616: $11 $01 $ac
	ld   a, [$ffff]                                  ; $4619: $fa $ff $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $461c: $cf
	rst  $28                                         ; $461d: $ef
	rst  $38                                         ; $461e: $ff
	jp   c, $fcff                                    ; $461f: $da $ff $fc

	add  d                                           ; $4622: $82
	ld   bc, $1111                                   ; $4623: $01 $11 $11
	ld   [de], a                                     ; $4626: $12
	ld   de, $fbbd                                   ; $4627: $11 $bd $fb
	cp   $ff                                         ; $462a: $fe $ff
	rst  JumpTable                                         ; $462c: $df
	rst  $28                                         ; $462d: $ef
	rst  $28                                         ; $462e: $ef
	cp   a                                           ; $462f: $bf
	rst  $38                                         ; $4630: $ff
	ld   a, [$1161]                                  ; $4631: $fa $61 $11
	ld   de, $1411                                   ; $4634: $11 $11 $14
	rla                                              ; $4637: $17
	xor  a                                           ; $4638: $af
	sbc  $fe                                         ; $4639: $de $fe
	cp   $ff                                         ; $463b: $fe $ff
	rst  $28                                         ; $463d: $ef
	rst  $28                                         ; $463e: $ef
	cp   a                                           ; $463f: $bf
	rst  $38                                         ; $4640: $ff
	ld   hl, sp+$41                                  ; $4641: $f8 $41
	ld   de, $1111                                   ; $4643: $11 $11 $11
	ld   hl, $af1b                                   ; $4646: $21 $1b $af
	xor  a                                           ; $4649: $af
	rst  $28                                         ; $464a: $ef
	ei                                               ; $464b: $fb
	db   $fc                                         ; $464c: $fc
	db   $fc                                         ; $464d: $fc
	ld   a, [$ffff]                                  ; $464e: $fa $ff $ff
	cp   b                                           ; $4651: $b8
	ld   hl, $1111                                   ; $4652: $21 $11 $11
	ld   de, $7a31                                   ; $4655: $11 $31 $7a
	db   $fd                                         ; $4658: $fd
	rst  $38                                         ; $4659: $ff
	rst  $28                                         ; $465a: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $465b: $cf
	db   $fd                                         ; $465c: $fd
	db   $fc                                         ; $465d: $fc
	db   $ec                                         ; $465e: $ec
	rst  $38                                         ; $465f: $ff
	rst  $38                                         ; $4660: $ff
	add  l                                           ; $4661: $85
	ld   de, $1111                                   ; $4662: $11 $11 $11
	inc  d                                           ; $4665: $14

Jump_0b6_4666:
	ld   [de], a                                     ; $4666: $12
	cp   e                                           ; $4667: $bb
	db   $fc                                         ; $4668: $fc
	db   $fc                                         ; $4669: $fc
	rst  $38                                         ; $466a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $466b: $cf
	xor  a                                           ; $466c: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $466d: $cf
	cp   a                                           ; $466e: $bf
	rst  $38                                         ; $466f: $ff
	ld   hl, sp+$61                                  ; $4670: $f8 $61
	ld   de, $1111                                   ; $4672: $11 $11 $11
	ld   hl, $9f1c                                   ; $4675: $21 $1c $9f
	cp   a                                           ; $4678: $bf
	rst  $28                                         ; $4679: $ef
	ld   sp, hl                                      ; $467a: $f9
	ld   a, [$eefd]                                  ; $467b: $fa $fd $ee
	rst  $38                                         ; $467e: $ff
	rst  $38                                         ; $467f: $ff
	or   a                                           ; $4680: $b7
	ld   de, $1111                                   ; $4681: $11 $11 $11
	ld   de, $a921                                   ; $4684: $11 $21 $a9
	db   $fc                                         ; $4687: $fc
	rst  $38                                         ; $4688: $ff
	rst  $38                                         ; $4689: $ff
	sbc  a                                           ; $468a: $9f
	cp   l                                           ; $468b: $bd
	db   $fd                                         ; $468c: $fd
	rst  $38                                         ; $468d: $ff
	rst  $38                                         ; $468e: $ff
	db   $fc                                         ; $468f: $fc
	ld   h, d                                        ; $4690: $62
	ld   de, $1111                                   ; $4691: $11 $11 $11
	ld   [de], a                                     ; $4694: $12
	ld   a, [de]                                     ; $4695: $1a
	xor  [hl]                                        ; $4696: $ae
	cp   a                                           ; $4697: $bf
	rst  $38                                         ; $4698: $ff
	ld   a, [$dffb]                                  ; $4699: $fa $fb $df
	adc  $ff                                         ; $469c: $ce $ff
	rst  $38                                         ; $469e: $ff
	add  $21                                         ; $469f: $c6 $21
	ld   de, $1111                                   ; $46a1: $11 $11 $11
	ld   sp, $fbaa                                   ; $46a4: $31 $aa $fb
	rst  $38                                         ; $46a7: $ff
	rst  $38                                         ; $46a8: $ff
	adc  a                                           ; $46a9: $8f
	call $effd                                       ; $46aa: $cd $fd $ef
	rst  $38                                         ; $46ad: $ff
	ei                                               ; $46ae: $fb
	ld   d, c                                        ; $46af: $51
	ld   de, $1111                                   ; $46b0: $11 $11 $11
	inc  de                                          ; $46b3: $13
	dec  de                                          ; $46b4: $1b
	xor  [hl]                                        ; $46b5: $ae
	xor  a                                           ; $46b6: $af
	rst  $28                                         ; $46b7: $ef
	rst  $30                                         ; $46b8: $f7
	ld   a, [$dfdf]                                  ; $46b9: $fa $df $df
	rst  $38                                         ; $46bc: $ff
	rst  $38                                         ; $46bd: $ff
	sub  l                                           ; $46be: $95
	ld   de, $1111                                   ; $46bf: $11 $11 $11
	ld   [de], a                                     ; $46c2: $12
	ld   de, $f9ea                                   ; $46c3: $11 $ea $f9
	db   $fc                                         ; $46c6: $fc
	rst  $38                                         ; $46c7: $ff
	ld   l, a                                        ; $46c8: $6f
	adc  a                                           ; $46c9: $8f
	db   $fd                                         ; $46ca: $fd
	rst  $38                                         ; $46cb: $ff
	rst  $38                                         ; $46cc: $ff
	or   $51                                         ; $46cd: $f6 $51
	ld   de, $1111                                   ; $46cf: $11 $11 $11
	ld   b, c                                        ; $46d2: $41
	ld   e, $be                                      ; $46d3: $1e $be
	adc  a                                           ; $46d5: $8f
	cp   a                                           ; $46d6: $bf
	rst  $30                                         ; $46d7: $f7
	ld   sp, hl                                      ; $46d8: $f9
	cp   $ef                                         ; $46d9: $fe $ef
	rst  $38                                         ; $46db: $ff
	rst  $38                                         ; $46dc: $ff
	ld   b, l                                        ; $46dd: $45
	ld   de, $1111                                   ; $46de: $11 $11 $11
	dec  d                                           ; $46e1: $15
	ld   d, $dc                                      ; $46e2: $16 $dc
	ret                                              ; $46e4: $c9


	ei                                               ; $46e5: $fb
	ld   hl, sp-$31                                  ; $46e6: $f8 $cf
	cp   a                                           ; $46e8: $bf
	rst  JumpTable                                         ; $46e9: $df
	rst  $38                                         ; $46ea: $ff
	rst  $38                                         ; $46eb: $ff
	or   l                                           ; $46ec: $b5
	ld   b, c                                        ; $46ed: $41
	ld   de, $1111                                   ; $46ee: $11 $11 $11
	ld   b, c                                        ; $46f1: $41
	cp   h                                           ; $46f2: $bc
	ret                                              ; $46f3: $c9


	xor  a                                           ; $46f4: $af
	rst  JumpTable                                         ; $46f5: $df
	ccf                                              ; $46f6: $3f
	sbc  $fb                                         ; $46f7: $de $fb
	rst  $38                                         ; $46f9: $ff
	rst  $38                                         ; $46fa: $ff
	rst  $30                                         ; $46fb: $f7
	ld   h, d                                        ; $46fc: $62
	ld   de, $2111                                   ; $46fd: $11 $11 $21
	ld   de, $ab1f                                   ; $4700: $11 $1f $ab
	ld   l, l                                        ; $4703: $6d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4704: $cf
	db   $f4                                         ; $4705: $f4
	ld   a, [$cfff]                                  ; $4706: $fa $ff $cf
	rst  $38                                         ; $4709: $ff
	rst  $38                                         ; $470a: $ff
	ld   h, [hl]                                     ; $470b: $66
	ld   de, $1211                                   ; $470c: $11 $11 $12
	dec  d                                           ; $470f: $15
	ld   [de], a                                     ; $4710: $12
	rst  $30                                         ; $4711: $f7
	or   [hl]                                        ; $4712: $b6
	db   $ed                                         ; $4713: $ed
	ld   sp, hl                                      ; $4714: $f9
	sbc  a                                           ; $4715: $9f
	cp   a                                           ; $4716: $bf
	adc  $ff                                         ; $4717: $ce $ff
	rst  $38                                         ; $4719: $ff
	cp   b                                           ; $471a: $b8
	ld   h, c                                        ; $471b: $61
	ld   de, $1111                                   ; $471c: $11 $11 $11
	ld   b, c                                        ; $471f: $41
	sbc  a                                           ; $4720: $9f
	ld   e, d                                        ; $4721: $5a
	ld   e, a                                        ; $4722: $5f
	rst  $38                                         ; $4723: $ff
	ld   c, a                                        ; $4724: $4f
	rst  $38                                         ; $4725: $ff
	rst  $30                                         ; $4726: $f7
	rst  $38                                         ; $4727: $ff
	rst  $38                                         ; $4728: $ff
	ei                                               ; $4729: $fb
	sub  h                                           ; $472a: $94
	ld   de, $2111                                   ; $472b: $11 $11 $21
	ld   de, $761f                                   ; $472e: $11 $1f $76
	add  l                                           ; $4731: $85
	rst  $38                                         ; $4732: $ff
	db   $f4                                         ; $4733: $f4
	db   $fd                                         ; $4734: $fd
	rst  $38                                         ; $4735: $ff
	sbc  a                                           ; $4736: $9f
	rst  $38                                         ; $4737: $ff
	cp   $b9                                         ; $4738: $fe $b9
	ld   sp, $1311                                   ; $473a: $31 $11 $13
	ld   de, $f111                                   ; $473d: $11 $11 $f1
	sub  e                                           ; $4740: $93
	ld   a, a                                        ; $4741: $7f
	adc  $6f                                         ; $4742: $ce $6f
	rst  $28                                         ; $4744: $ef
	call $ffff                                       ; $4745: $cd $ff $ff
	ei                                               ; $4748: $fb
	sub  l                                           ; $4749: $95
	ld   de, $3111                                   ; $474a: $11 $11 $31
	ld   de, $171c                                   ; $474d: $11 $1c $17
	ld   d, $c9                                      ; $4750: $16 $c9
	push bc                                          ; $4752: $c5
	db   $fd                                         ; $4753: $fd
	db   $fd                                         ; $4754: $fd
	rst  $28                                         ; $4755: $ef
	rst  $38                                         ; $4756: $ff
	rst  $38                                         ; $4757: $ff
	rst  $28                                         ; $4758: $ef
	jp   c, $3484                                    ; $4759: $da $84 $34

	ld   de, $1111                                   ; $475c: $11 $11 $11
	ld   de, $1611                                   ; $475f: $11 $11 $16
	ld   e, c                                        ; $4762: $59
	cp   a                                           ; $4763: $bf
	rst  $38                                         ; $4764: $ff
	rst  $38                                         ; $4765: $ff
	rst  $38                                         ; $4766: $ff
	rst  $38                                         ; $4767: $ff
	rst  $38                                         ; $4768: $ff
	db   $fd                                         ; $4769: $fd
	add  h                                           ; $476a: $84
	ld   de, $1111                                   ; $476b: $11 $11 $11
	ld   de, $1111                                   ; $476e: $11 $11 $11
	ld   d, $6a                                      ; $4771: $16 $6a
	rst  $28                                         ; $4773: $ef
	rst  $38                                         ; $4774: $ff
	rst  $38                                         ; $4775: $ff
	rst  $38                                         ; $4776: $ff
	rst  $38                                         ; $4777: $ff
	rst  $38                                         ; $4778: $ff
	db   $fc                                         ; $4779: $fc
	add  e                                           ; $477a: $83
	ld   de, $1111                                   ; $477b: $11 $11 $11
	ld   de, $1111                                   ; $477e: $11 $11 $11
	ld   d, $79                                      ; $4781: $16 $79
	rst  $28                                         ; $4783: $ef
	rst  $38                                         ; $4784: $ff
	rst  $38                                         ; $4785: $ff
	rst  $38                                         ; $4786: $ff
	rst  $38                                         ; $4787: $ff
	rst  $38                                         ; $4788: $ff
	db   $fd                                         ; $4789: $fd
	sub  h                                           ; $478a: $94
	ld   de, $1111                                   ; $478b: $11 $11 $11
	ld   de, $1111                                   ; $478e: $11 $11 $11
	ld   d, $77                                      ; $4791: $16 $77
	rst  JumpTable                                         ; $4793: $df
	rst  $38                                         ; $4794: $ff
	rst  $38                                         ; $4795: $ff
	rst  $38                                         ; $4796: $ff
	rst  $38                                         ; $4797: $ff
	rst  $38                                         ; $4798: $ff
	cp   $a4                                         ; $4799: $fe $a4
	ld   de, $1111                                   ; $479b: $11 $11 $11
	ld   de, $1111                                   ; $479e: $11 $11 $11
	inc  d                                           ; $47a1: $14
	halt                                             ; $47a2: $76
	cp   a                                           ; $47a3: $bf
	rst  $38                                         ; $47a4: $ff
	rst  $38                                         ; $47a5: $ff
	rst  $38                                         ; $47a6: $ff
	rst  $38                                         ; $47a7: $ff
	rst  $38                                         ; $47a8: $ff
	rst  $38                                         ; $47a9: $ff
	or   [hl]                                        ; $47aa: $b6
	ld   sp, $1111                                   ; $47ab: $31 $11 $11
	ld   de, $1111                                   ; $47ae: $11 $11 $11
	ld   [de], a                                     ; $47b1: $12
	ld   d, [hl]                                     ; $47b2: $56
	adc  [hl]                                        ; $47b3: $8e
	rst  $38                                         ; $47b4: $ff
	rst  $38                                         ; $47b5: $ff
	rst  $38                                         ; $47b6: $ff
	rst  $38                                         ; $47b7: $ff
	rst  $38                                         ; $47b8: $ff
	rst  $38                                         ; $47b9: $ff
	reti                                             ; $47ba: $d9


	ld   h, e                                        ; $47bb: $63
	ld   de, $1111                                   ; $47bc: $11 $11 $11
	ld   de, $1111                                   ; $47bf: $11 $11 $11
	ld   h, $8a                                      ; $47c2: $26 $8a
	rst  $38                                         ; $47c4: $ff
	rst  $38                                         ; $47c5: $ff
	rst  $38                                         ; $47c6: $ff
	rst  $38                                         ; $47c7: $ff
	rst  $38                                         ; $47c8: $ff
	rst  $38                                         ; $47c9: $ff
	db   $fc                                         ; $47ca: $fc
	add  l                                           ; $47cb: $85
	ld   de, $1111                                   ; $47cc: $11 $11 $11
	ld   de, $1111                                   ; $47cf: $11 $11 $11
	inc  d                                           ; $47d2: $14
	adc  c                                           ; $47d3: $89
	cp   a                                           ; $47d4: $bf
	rst  $38                                         ; $47d5: $ff
	rst  $38                                         ; $47d6: $ff
	rst  $38                                         ; $47d7: $ff
	rst  $38                                         ; $47d8: $ff
	rst  $38                                         ; $47d9: $ff
	rst  $38                                         ; $47da: $ff
	or   a                                           ; $47db: $b7
	ld   b, c                                        ; $47dc: $41
	ld   de, $1111                                   ; $47dd: $11 $11 $11
	ld   de, $1111                                   ; $47e0: $11 $11 $11
	ld   b, a                                        ; $47e3: $47
	sbc  e                                           ; $47e4: $9b
	rst  $38                                         ; $47e5: $ff
	rst  $38                                         ; $47e6: $ff
	rst  $38                                         ; $47e7: $ff
	rst  $38                                         ; $47e8: $ff
	rst  $38                                         ; $47e9: $ff
	rst  $38                                         ; $47ea: $ff
	ei                                               ; $47eb: $fb
	ld   h, h                                        ; $47ec: $64
	ld   de, $1111                                   ; $47ed: $11 $11 $11
	ld   de, $1111                                   ; $47f0: $11 $11 $11
	inc  de                                          ; $47f3: $13
	ld   a, d                                        ; $47f4: $7a

jr_0b6_47f5:
	cp   a                                           ; $47f5: $bf
	rst  $38                                         ; $47f6: $ff
	rst  $38                                         ; $47f7: $ff
	rst  $38                                         ; $47f8: $ff
	rst  $38                                         ; $47f9: $ff
	rst  $38                                         ; $47fa: $ff
	rst  $38                                         ; $47fb: $ff
	or   a                                           ; $47fc: $b7
	ld   d, d                                        ; $47fd: $52
	ld   de, $1111                                   ; $47fe: $11 $11 $11
	ld   de, $1111                                   ; $4801: $11 $11 $11
	daa                                              ; $4804: $27
	sbc  d                                           ; $4805: $9a
	rst  $28                                         ; $4806: $ef
	rst  $38                                         ; $4807: $ff
	rst  $38                                         ; $4808: $ff
	rst  $38                                         ; $4809: $ff
	rst  $38                                         ; $480a: $ff
	rst  $38                                         ; $480b: $ff
	db   $fc                                         ; $480c: $fc
	add  [hl]                                        ; $480d: $86
	ld   b, c                                        ; $480e: $41
	ld   de, $1111                                   ; $480f: $11 $11 $11
	ld   de, $1111                                   ; $4812: $11 $11 $11
	ld   e, c                                        ; $4815: $59
	xor  e                                           ; $4816: $ab
	rst  $38                                         ; $4817: $ff
	rst  $38                                         ; $4818: $ff
	rst  $38                                         ; $4819: $ff
	rst  $38                                         ; $481a: $ff
	rst  $38                                         ; $481b: $ff
	rst  $38                                         ; $481c: $ff
	ei                                               ; $481d: $fb
	ld   [hl], l                                     ; $481e: $75
	ld   sp, $1111                                   ; $481f: $31 $11 $11
	ld   de, $1111                                   ; $4822: $11 $11 $11
	ld   de, $bc69                                   ; $4825: $11 $69 $bc
	rst  $38                                         ; $4828: $ff
	rst  $38                                         ; $4829: $ff
	rst  $38                                         ; $482a: $ff
	rst  $38                                         ; $482b: $ff
	rst  $38                                         ; $482c: $ff
	rst  $38                                         ; $482d: $ff
	ld   a, [$3175]                                  ; $482e: $fa $75 $31
	ld   de, $1111                                   ; $4831: $11 $11 $11
	ld   de, $1111                                   ; $4834: $11 $11 $11
	ld   e, c                                        ; $4837: $59
	cp   h                                           ; $4838: $bc
	rst  $38                                         ; $4839: $ff
	rst  $38                                         ; $483a: $ff
	rst  $38                                         ; $483b: $ff
	rst  $38                                         ; $483c: $ff
	rst  $38                                         ; $483d: $ff
	rst  $38                                         ; $483e: $ff
	ei                                               ; $483f: $fb
	halt                                             ; $4840: $76
	ld   b, c                                        ; $4841: $41
	ld   de, $1111                                   ; $4842: $11 $11 $11
	ld   de, $1111                                   ; $4845: $11 $11 $11
	jr   c, jr_0b6_47f5                              ; $4848: $38 $ab

	rst  $38                                         ; $484a: $ff
	rst  $38                                         ; $484b: $ff
	rst  $38                                         ; $484c: $ff
	rst  $38                                         ; $484d: $ff
	rst  $38                                         ; $484e: $ff
	rst  $38                                         ; $484f: $ff
	ei                                               ; $4850: $fb
	add  [hl]                                        ; $4851: $86
	ld   b, c                                        ; $4852: $41
	ld   de, $1111                                   ; $4853: $11 $11 $11
	ld   de, $1111                                   ; $4856: $11 $11 $11
	rla                                              ; $4859: $17
	sbc  e                                           ; $485a: $9b
	rst  JumpTable                                         ; $485b: $df
	rst  $38                                         ; $485c: $ff
	rst  $38                                         ; $485d: $ff
	rst  $38                                         ; $485e: $ff
	rst  $38                                         ; $485f: $ff
	rst  $38                                         ; $4860: $ff
	cp   $a7                                         ; $4861: $fe $a7
	ld   d, e                                        ; $4863: $53
	ld   de, $1111                                   ; $4864: $11 $11 $11
	ld   de, $1111                                   ; $4867: $11 $11 $11
	inc  de                                          ; $486a: $13
	ld   a, c                                        ; $486b: $79
	cp   a                                           ; $486c: $bf
	rst  $38                                         ; $486d: $ff
	rst  $38                                         ; $486e: $ff
	rst  $38                                         ; $486f: $ff
	rst  $38                                         ; $4870: $ff
	rst  $38                                         ; $4871: $ff
	rst  $38                                         ; $4872: $ff
	jp   z, $2175                                    ; $4873: $ca $75 $21

	ld   de, $1111                                   ; $4876: $11 $11 $11
	ld   de, $1111                                   ; $4879: $11 $11 $11
	scf                                              ; $487c: $37
	xor  h                                           ; $487d: $ac
	rst  $28                                         ; $487e: $ef
	rst  $38                                         ; $487f: $ff
	rst  $38                                         ; $4880: $ff
	rst  $38                                         ; $4881: $ff
	rst  $38                                         ; $4882: $ff
	rst  $38                                         ; $4883: $ff
	db   $fc                                         ; $4884: $fc
	sub  a                                           ; $4885: $97
	ld   d, e                                        ; $4886: $53
	ld   de, $1111                                   ; $4887: $11 $11 $11
	ld   de, $1111                                   ; $488a: $11 $11 $11
	ld   [de], a                                     ; $488d: $12
	ld   l, c                                        ; $488e: $69
	adc  $ff                                         ; $488f: $ce $ff
	rst  $38                                         ; $4891: $ff
	rst  $38                                         ; $4892: $ff
	rst  $38                                         ; $4893: $ff
	rst  $38                                         ; $4894: $ff
	rst  $38                                         ; $4895: $ff
	ld   [$3176], a                                  ; $4896: $ea $76 $31
	ld   de, $1111                                   ; $4899: $11 $11 $11
	ld   de, $1111                                   ; $489c: $11 $11 $11
	dec  d                                           ; $489f: $15
	adc  e                                           ; $48a0: $8b
	rst  JumpTable                                         ; $48a1: $df
	rst  $38                                         ; $48a2: $ff
	rst  $38                                         ; $48a3: $ff
	rst  $38                                         ; $48a4: $ff
	rst  $38                                         ; $48a5: $ff
	rst  $38                                         ; $48a6: $ff
	cp   $b9                                         ; $48a7: $fe $b9
	ld   h, h                                        ; $48a9: $64
	ld   hl, $1111                                   ; $48aa: $21 $11 $11
	ld   de, $1111                                   ; $48ad: $11 $11 $11
	ld   de, $8a25                                   ; $48b0: $11 $25 $8a
	rst  JumpTable                                         ; $48b3: $df
	rst  $38                                         ; $48b4: $ff
	rst  $38                                         ; $48b5: $ff
	rst  $38                                         ; $48b6: $ff
	rst  $38                                         ; $48b7: $ff
	rst  $38                                         ; $48b8: $ff
	cp   $b9                                         ; $48b9: $fe $b9
	ld   [hl], l                                     ; $48bb: $75
	ld   sp, $1111                                   ; $48bc: $31 $11 $11
	ld   de, $1111                                   ; $48bf: $11 $11 $11
	ld   de, $7914                                   ; $48c2: $11 $14 $79
	adc  $ff                                         ; $48c5: $ce $ff
	rst  $38                                         ; $48c7: $ff
	rst  $38                                         ; $48c8: $ff
	rst  $38                                         ; $48c9: $ff
	rst  $38                                         ; $48ca: $ff
	cp   $c9                                         ; $48cb: $fe $c9
	halt                                             ; $48cd: $76
	ld   b, d                                        ; $48ce: $42
	ld   de, $1111                                   ; $48cf: $11 $11 $11
	ld   de, $1111                                   ; $48d2: $11 $11 $11
	inc  de                                          ; $48d5: $13
	ld   e, b                                        ; $48d6: $58
	xor  h                                           ; $48d7: $ac
	rst  $38                                         ; $48d8: $ff
	rst  $38                                         ; $48d9: $ff
	rst  $38                                         ; $48da: $ff
	rst  $38                                         ; $48db: $ff
	rst  $38                                         ; $48dc: $ff
	rst  $38                                         ; $48dd: $ff
	jp   c, Jump_0b6_6487                            ; $48de: $da $87 $64

	ld   hl, $1111                                   ; $48e1: $21 $11 $11
	ld   de, $1111                                   ; $48e4: $11 $11 $11
	ld   de, $7a25                                   ; $48e7: $11 $25 $7a
	cp   a                                           ; $48ea: $bf
	rst  $38                                         ; $48eb: $ff
	rst  $38                                         ; $48ec: $ff
	rst  $38                                         ; $48ed: $ff
	rst  $38                                         ; $48ee: $ff
	rst  $38                                         ; $48ef: $ff
	cp   $b9                                         ; $48f0: $fe $b9
	add  a                                           ; $48f2: $87
	ld   d, h                                        ; $48f3: $54
	ld   hl, $1111                                   ; $48f4: $21 $11 $11
	ld   de, $1111                                   ; $48f7: $11 $11 $11
	ld   de, $7a35                                   ; $48fa: $11 $35 $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48fd: $cf
	rst  $38                                         ; $48fe: $ff
	rst  $38                                         ; $48ff: $ff
	rst  $38                                         ; $4900: $ff
	rst  $38                                         ; $4901: $ff
	rst  $38                                         ; $4902: $ff
	db   $fd                                         ; $4903: $fd
	cp   c                                           ; $4904: $b9
	add  [hl]                                        ; $4905: $86
	ld   d, h                                        ; $4906: $54
	ld   hl, $1111                                   ; $4907: $21 $11 $11
	ld   de, $1111                                   ; $490a: $11 $11 $11
	ld   de, $7935                                   ; $490d: $11 $35 $79
	adc  $ff                                         ; $4910: $ce $ff
	rst  $38                                         ; $4912: $ff
	rst  $38                                         ; $4913: $ff
	rst  $38                                         ; $4914: $ff
	rst  $38                                         ; $4915: $ff
	db   $fd                                         ; $4916: $fd
	jp   z, Jump_0b6_6598                            ; $4917: $ca $98 $65

	ld   b, d                                        ; $491a: $42
	ld   de, $1111                                   ; $491b: $11 $11 $11
	ld   de, $1111                                   ; $491e: $11 $11 $11
	inc  d                                           ; $4921: $14
	ld   d, a                                        ; $4922: $57
	sbc  h                                           ; $4923: $9c
	rst  $38                                         ; $4924: $ff
	rst  $38                                         ; $4925: $ff
	rst  $38                                         ; $4926: $ff
	rst  $38                                         ; $4927: $ff
	rst  $38                                         ; $4928: $ff
	rst  $38                                         ; $4929: $ff
	db   $ec                                         ; $492a: $ec
	xor  d                                           ; $492b: $aa
	add  a                                           ; $492c: $87
	ld   h, l                                        ; $492d: $65
	ld   [hl-], a                                    ; $492e: $32
	ld   de, $1111                                   ; $492f: $11 $11 $11
	ld   de, $1111                                   ; $4932: $11 $11 $11
	inc  [hl]                                        ; $4935: $34
	ld   e, b                                        ; $4936: $58
	xor  l                                           ; $4937: $ad
	rst  $28                                         ; $4938: $ef
	rst  $38                                         ; $4939: $ff
	rst  $38                                         ; $493a: $ff
	rst  $38                                         ; $493b: $ff
	rst  $38                                         ; $493c: $ff
	cp   $dd                                         ; $493d: $fe $dd
	cp   d                                           ; $493f: $ba
	sbc  b                                           ; $4940: $98
	ld   [hl], l                                     ; $4941: $75
	ld   b, e                                        ; $4942: $43
	ld   hl, $1111                                   ; $4943: $21 $11 $11
	ld   de, $1111                                   ; $4946: $11 $11 $11
	inc  de                                          ; $4949: $13
	ld   b, [hl]                                     ; $494a: $46
	ld   a, c                                        ; $494b: $79
	call $ffff                                       ; $494c: $cd $ff $ff
	rst  $38                                         ; $494f: $ff
	rst  $38                                         ; $4950: $ff
	rst  $38                                         ; $4951: $ff
	cp   $dc                                         ; $4952: $fe $dc
	cp   d                                           ; $4954: $ba
	sbc  b                                           ; $4955: $98
	add  [hl]                                        ; $4956: $86
	ld   b, e                                        ; $4957: $43
	ld   [hl+], a                                    ; $4958: $22
	ld   de, $1111                                   ; $4959: $11 $11 $11
	ld   de, $1211                                   ; $495c: $11 $11 $12
	dec  [hl]                                        ; $495f: $35
	ld   a, c                                        ; $4960: $79
	xor  e                                           ; $4961: $ab
	sbc  $ff                                         ; $4962: $de $ff
	rst  $38                                         ; $4964: $ff
	rst  $38                                         ; $4965: $ff
	rst  $38                                         ; $4966: $ff
	rst  $38                                         ; $4967: $ff
	xor  $dd                                         ; $4968: $ee $dd
	cp   d                                           ; $496a: $ba
	sub  a                                           ; $496b: $97
	ld   d, l                                        ; $496c: $55
	ld   [hl-], a                                    ; $496d: $32
	ld   de, $1111                                   ; $496e: $11 $11 $11
	ld   de, $1111                                   ; $4971: $11 $11 $11
	inc  hl                                          ; $4974: $23
	ld   d, [hl]                                     ; $4975: $56
	ld   a, c                                        ; $4976: $79
	cp   h                                           ; $4977: $bc
	sbc  $ff                                         ; $4978: $de $ff
	rst  $38                                         ; $497a: $ff
	rst  $38                                         ; $497b: $ff
	rst  $38                                         ; $497c: $ff
	rst  $38                                         ; $497d: $ff
	db   $ed                                         ; $497e: $ed
	xor  c                                           ; $497f: $a9
	add  a                                           ; $4980: $87
	halt                                             ; $4981: $76
	ld   d, h                                        ; $4982: $54
	ld   [hl-], a                                    ; $4983: $32
	ld   hl, $1111                                   ; $4984: $21 $11 $11
	ld   de, $3323                                   ; $4987: $11 $23 $33
	ld   b, l                                        ; $498a: $45
	ld   h, a                                        ; $498b: $67
	sbc  c                                           ; $498c: $99
	cp   h                                           ; $498d: $bc
	db   $dd                                         ; $498e: $dd
	rst  $28                                         ; $498f: $ef
	rst  $38                                         ; $4990: $ff
	rst  $38                                         ; $4991: $ff
	cp   $dd                                         ; $4992: $fe $dd
	call z, $98aa                                    ; $4994: $cc $aa $98
	add  a                                           ; $4997: $87
	ld   h, l                                        ; $4998: $65
	ld   b, e                                        ; $4999: $43
	inc  sp                                          ; $499a: $33
	inc  [hl]                                        ; $499b: $34
	ld   [hl-], a                                    ; $499c: $32
	inc  sp                                          ; $499d: $33
	inc  [hl]                                        ; $499e: $34
	ld   b, l                                        ; $499f: $45
	ld   d, l                                        ; $49a0: $55
	ld   d, [hl]                                     ; $49a1: $56
	ld   [hl], a                                     ; $49a2: $77
	sbc  c                                           ; $49a3: $99
	sbc  d                                           ; $49a4: $9a
	xor  e                                           ; $49a5: $ab
	xor  e                                           ; $49a6: $ab
	call z, $bbcb                                    ; $49a7: $cc $cb $bb
	cp   e                                           ; $49aa: $bb
	xor  d                                           ; $49ab: $aa
	adc  b                                           ; $49ac: $88
	ld   a, b                                        ; $49ad: $78
	sbc  b                                           ; $49ae: $98
	ld   [hl], a                                     ; $49af: $77
	ld   [hl], a                                     ; $49b0: $77
	ld   a, c                                        ; $49b1: $79
	cp   c                                           ; $49b2: $b9
	halt                                             ; $49b3: $76
	ld   h, a                                        ; $49b4: $67
	ld   a, b                                        ; $49b5: $78
	xor  c                                           ; $49b6: $a9
	halt                                             ; $49b7: $76
	ld   h, a                                        ; $49b8: $67
	sbc  c                                           ; $49b9: $99
	adc  c                                           ; $49ba: $89
	adc  d                                           ; $49bb: $8a
	xor  e                                           ; $49bc: $ab
	sbc  l                                           ; $49bd: $9d
	ret                                              ; $49be: $c9


	xor  c                                           ; $49bf: $a9
	cp   d                                           ; $49c0: $ba
	ld   [hl], a                                     ; $49c1: $77
	xor  h                                           ; $49c2: $ac
	xor  c                                           ; $49c3: $a9
	cp   [hl]                                        ; $49c4: $be
	jp   z, $a778                                    ; $49c5: $ca $78 $a7

	ld   b, d                                        ; $49c8: $42
	ld   b, h                                        ; $49c9: $44
	ld   hl, $1111                                   ; $49ca: $21 $11 $11
	ld   de, $2311                                   ; $49cd: $11 $11 $23
	ld   e, d                                        ; $49d0: $5a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49d1: $cf
	rst  $38                                         ; $49d2: $ff
	rst  $38                                         ; $49d3: $ff
	cp   $cb                                         ; $49d4: $fe $cb
	set  3, l                                        ; $49d6: $cb $dd
	db   $dd                                         ; $49d8: $dd
	cp   d                                           ; $49d9: $ba
	ld   [hl], l                                     ; $49da: $75
	ld   sp, $1111                                   ; $49db: $31 $11 $11
	ld   de, $1111                                   ; $49de: $11 $11 $11
	ld   c, e                                        ; $49e1: $4b
	rst  $38                                         ; $49e2: $ff
	rst  $38                                         ; $49e3: $ff
	rst  $38                                         ; $49e4: $ff
	db   $fc                                         ; $49e5: $fc
	add  a                                           ; $49e6: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49e7: $cf
	rst  $38                                         ; $49e8: $ff
	rst  $38                                         ; $49e9: $ff
	cp   $b9                                         ; $49ea: $fe $b9
	add  [hl]                                        ; $49ec: $86
	ld   b, e                                        ; $49ed: $43
	ld   de, $1111                                   ; $49ee: $11 $11 $11
	ld   de, $ff1a                                   ; $49f1: $11 $1a $ff
	rst  $38                                         ; $49f4: $ff
	rst  $38                                         ; $49f5: $ff
	or   a                                           ; $49f6: $b7
	ld   h, h                                        ; $49f7: $64
	ld   b, a                                        ; $49f8: $47
	rst  $38                                         ; $49f9: $ff
	rst  $38                                         ; $49fa: $ff
	rst  $38                                         ; $49fb: $ff
	ei                                               ; $49fc: $fb
	sbc  c                                           ; $49fd: $99
	add  a                                           ; $49fe: $87
	ld   d, d                                        ; $49ff: $52
	ld   de, $1111                                   ; $4a00: $11 $11 $11
	ld   de, $ffff                                   ; $4a03: $11 $ff $ff
	rst  $38                                         ; $4a06: $ff
	and  $23                                         ; $4a07: $e6 $23
	inc  hl                                          ; $4a09: $23
	ld   l, a                                        ; $4a0a: $6f
	rst  $38                                         ; $4a0b: $ff
	rst  $38                                         ; $4a0c: $ff
	db   $fc                                         ; $4a0d: $fc
	and  [hl]                                        ; $4a0e: $a6
	ld   d, a                                        ; $4a0f: $57
	ld   [hl], l                                     ; $4a10: $75
	ld   de, $1111                                   ; $4a11: $11 $11 $11
	ld   de, $ff1f                                   ; $4a14: $11 $1f $ff
	rst  $38                                         ; $4a17: $ff
	cp   $75                                         ; $4a18: $fe $75
	ld   [hl-], a                                    ; $4a1a: $32
	ld   c, b                                        ; $4a1b: $48
	rst  $28                                         ; $4a1c: $ef
	rst  $38                                         ; $4a1d: $ff
	cp   $c7                                         ; $4a1e: $fe $c7
	ld   d, h                                        ; $4a20: $54
	ld   h, a                                        ; $4a21: $67
	ld   h, d                                        ; $4a22: $62
	ld   de, $1111                                   ; $4a23: $11 $11 $11
	ld   de, $ff8f                                   ; $4a26: $11 $8f $ff
	rst  $38                                         ; $4a29: $ff
	rst  $30                                         ; $4a2a: $f7
	ld   b, c                                        ; $4a2b: $41
	ld   [de], a                                     ; $4a2c: $12
	ld   l, a                                        ; $4a2d: $6f
	rst  $38                                         ; $4a2e: $ff
	rst  $38                                         ; $4a2f: $ff
	reti                                             ; $4a30: $d9


	inc  sp                                          ; $4a31: $33
	ld   c, c                                        ; $4a32: $49
	add  [hl]                                        ; $4a33: $86
	ld   sp, $1111                                   ; $4a34: $31 $11 $11
	ld   de, $ff2f                                   ; $4a37: $11 $2f $ff
	rst  $38                                         ; $4a3a: $ff
	db   $fd                                         ; $4a3b: $fd
	ld   h, a                                        ; $4a3c: $67
	ld   d, c                                        ; $4a3d: $51
	jr   @+$01                                       ; $4a3e: $18 $ff

	rst  $38                                         ; $4a40: $ff
	rst  $38                                         ; $4a41: $ff
	add  c                                           ; $4a42: $81
	ld   b, [hl]                                     ; $4a43: $46
	ld   [hl], a                                     ; $4a44: $77
	ld   [hl-], a                                    ; $4a45: $32
	ld   de, $1111                                   ; $4a46: $11 $11 $11
	ld   de, $ff4b                                   ; $4a49: $11 $4b $ff
	rst  $38                                         ; $4a4c: $ff
	db   $fd                                         ; $4a4d: $fd
	add  d                                           ; $4a4e: $82
	inc  [hl]                                        ; $4a4f: $34
	ld   a, [hl]                                     ; $4a50: $7e
	rst  $38                                         ; $4a51: $ff
	rst  $38                                         ; $4a52: $ff
	jp   c, Jump_0b6_4666                            ; $4a53: $da $66 $46

	sbc  b                                           ; $4a56: $98
	ld   b, d                                        ; $4a57: $42
	ld   hl, $1111                                   ; $4a58: $21 $11 $11
	dec  d                                           ; $4a5b: $15
	ld   a, b                                        ; $4a5c: $78
	sbc  a                                           ; $4a5d: $9f
	rst  $38                                         ; $4a5e: $ff
	cp   l                                           ; $4a5f: $bd
	ret  z                                           ; $4a60: $c8

	ld   de, $ffbf                                   ; $4a61: $11 $bf $ff
	rst  $38                                         ; $4a64: $ff
	rst  $30                                         ; $4a65: $f7
	inc  [hl]                                        ; $4a66: $34
	sbc  e                                           ; $4a67: $9b
	ld   [hl], a                                     ; $4a68: $77
	add  a                                           ; $4a69: $87
	ld   sp, $1111                                   ; $4a6a: $31 $11 $11
	ld   [de], a                                     ; $4a6d: $12
	xor  d                                           ; $4a6e: $aa
	xor  h                                           ; $4a6f: $ac
	rst  JumpTable                                         ; $4a70: $df
	rst  $38                                         ; $4a71: $ff
	add  h                                           ; $4a72: $84
	jr   @-$4f                                       ; $4a73: $18 $af

	rst  $38                                         ; $4a75: $ff
	cp   $b9                                         ; $4a76: $fe $b9
	ld   l, b                                        ; $4a78: $68
	sbc  b                                           ; $4a79: $98
	xor  c                                           ; $4a7a: $a9
	ld   h, h                                        ; $4a7b: $64
	ld   de, $1111                                   ; $4a7c: $11 $11 $11
	dec  d                                           ; $4a7f: $15
	add  a                                           ; $4a80: $87
	sbc  e                                           ; $4a81: $9b
	db   $ed                                         ; $4a82: $ed
	cp   $a9                                         ; $4a83: $fe $a9
	scf                                              ; $4a85: $37

jr_0b6_4a86:
	ld   a, [hl]                                     ; $4a86: $7e
	rst  $38                                         ; $4a87: $ff
	cp   $eb                                         ; $4a88: $fe $eb
	sub  l                                           ; $4a8a: $95
	ld   [hl], a                                     ; $4a8b: $77
	ld   [hl], a                                     ; $4a8c: $77
	ld   e, b                                        ; $4a8d: $58
	inc  hl                                          ; $4a8e: $23
	ld   de, $1111                                   ; $4a8f: $11 $11 $11
	dec  d                                           ; $4a92: $15
	adc  $ef                                         ; $4a93: $ce $ef
	rst  $38                                         ; $4a95: $ff
	ld   b, d                                        ; $4a96: $42
	jr   c, jr_0b6_4a86                              ; $4a97: $38 $ed

	rst  $38                                         ; $4a99: $ff
	ei                                               ; $4a9a: $fb
	adc  e                                           ; $4a9b: $8b
	cp   b                                           ; $4a9c: $b8
	adc  d                                           ; $4a9d: $8a
	cp   l                                           ; $4a9e: $bd
	ld   d, c                                        ; $4a9f: $51
	ld   de, $1121                                   ; $4aa0: $11 $21 $11
	inc  de                                          ; $4aa3: $13
	ld   [hl], $9b                                   ; $4aa4: $36 $9b
	rst  ToBoot                                         ; $4aa6: $c7
	cp   a                                           ; $4aa7: $bf
	db   $fc                                         ; $4aa8: $fc
	ld   h, e                                        ; $4aa9: $63
	sbc  c                                           ; $4aaa: $99
	rst  $28                                         ; $4aab: $ef

jr_0b6_4aac:
	rst  $38                                         ; $4aac: $ff
	xor  b                                           ; $4aad: $a8
	ld   a, d                                        ; $4aae: $7a
	call Call_0b6_7687                               ; $4aaf: $cd $87 $76
	ld   de, $1111                                   ; $4ab2: $11 $11 $11
	inc  d                                           ; $4ab5: $14
	adc  e                                           ; $4ab6: $8b
	cp   l                                           ; $4ab7: $bd
	cp   c                                           ; $4ab8: $b9
	cp   l                                           ; $4ab9: $bd
	cp   d                                           ; $4aba: $ba
	ld   h, a                                        ; $4abb: $67
	adc  $ff                                         ; $4abc: $ce $ff
	call c, $dc8b                                    ; $4abe: $dc $8b $dc
	jp   z, $21b8                                    ; $4ac1: $ca $b8 $21

	inc  d                                           ; $4ac4: $14
	ld   de, $6112                                   ; $4ac5: $11 $12 $61
	inc  de                                          ; $4ac8: $13
	adc  $bb                                         ; $4ac9: $ce $bb
	rst  $38                                         ; $4acb: $ff
	sub  c                                           ; $4acc: $91
	ld   [de], a                                     ; $4acd: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ace: $cf
	rst  $38                                         ; $4acf: $ff
	db   $fd                                         ; $4ad0: $fd
	ld   b, c                                        ; $4ad1: $41
	ld   a, [hl+]                                    ; $4ad2: $2a
	db   $ec                                         ; $4ad3: $ec
	cp   e                                           ; $4ad4: $bb
	sub  e                                           ; $4ad5: $93
	ld   de, $7414                                   ; $4ad6: $11 $14 $74
	ld   b, c                                        ; $4ad9: $41
	ld   [hl+], a                                    ; $4ada: $22
	jr   c, jr_0b6_4aac                              ; $4adb: $38 $cf

	rst  $38                                         ; $4add: $ff
	sub  l                                           ; $4ade: $95
	ld   sp, $ff2f                                   ; $4adf: $31 $2f $ff
	ei                                               ; $4ae2: $fb
	add  c                                           ; $4ae3: $81
	inc  de                                          ; $4ae4: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ae5: $cf
	ld   a, [$1154]                                  ; $4ae6: $fa $54 $11
	ld   de, $9638                                   ; $4ae9: $11 $38 $96
	inc  h                                           ; $4aec: $24
	halt                                             ; $4aed: $76
	ld   a, [hl-]                                    ; $4aee: $3a
	rst  $38                                         ; $4aef: $ff
	db   $e4                                         ; $4af0: $e4
	dec  d                                           ; $4af1: $15
	xor  c                                           ; $4af2: $a9
	rst  $28                                         ; $4af3: $ef
	rst  $38                                         ; $4af4: $ff
	ld   h, l                                        ; $4af5: $65
	ld   b, [hl]                                     ; $4af6: $46
	cp   c                                           ; $4af7: $b9
	cp   d                                           ; $4af8: $ba
	sub  [hl]                                        ; $4af9: $96
	ld   de, $2411                                   ; $4afa: $11 $11 $24
	ld   d, [hl]                                     ; $4afd: $56
	ld   de, $d95c                                   ; $4afe: $11 $5c $d9
	rst  $38                                         ; $4b01: $ff
	push af                                          ; $4b02: $f5
	ld   d, $bb                                      ; $4b03: $16 $bb
	xor  a                                           ; $4b05: $af
	rst  $38                                         ; $4b06: $ff
	add  h                                           ; $4b07: $84
	dec  h                                           ; $4b08: $25
	sbc  b                                           ; $4b09: $98
	db   $ec                                         ; $4b0a: $ec
	and  d                                           ; $4b0b: $a2
	ld   de, $2611                                   ; $4b0c: $11 $11 $26
	ld   de, $eb1c                                   ; $4b0f: $11 $1c $eb
	ld   a, e                                        ; $4b12: $7b
	db   $fd                                         ; $4b13: $fd
	ld   b, d                                        ; $4b14: $42
	ld   e, c                                        ; $4b15: $59
	rst  JumpTable                                         ; $4b16: $df
	rst  $38                                         ; $4b17: $ff
	ei                                               ; $4b18: $fb
	inc  hl                                          ; $4b19: $23
	ld   c, d                                        ; $4b1a: $4a
	cp   h                                           ; $4b1b: $bc
	call c, $1161                                    ; $4b1c: $dc $61 $11
	ld   h, [hl]                                     ; $4b1f: $66
	ld   b, h                                        ; $4b20: $44
	ld   [hl-], a                                    ; $4b21: $32
	ld   b, $ae                                      ; $4b22: $06 $ae
	reti                                             ; $4b24: $d9


	cp   l                                           ; $4b25: $bd
	and  [hl]                                        ; $4b26: $a6
	adc  c                                           ; $4b27: $89
	db   $ec                                         ; $4b28: $ec
	xor  [hl]                                        ; $4b29: $ae
	rst  $38                                         ; $4b2a: $ff
	ld   [hl], e                                     ; $4b2b: $73
	ld   l, d                                        ; $4b2c: $6a
	add  a                                           ; $4b2d: $87
	ld   a, e                                        ; $4b2e: $7b
	ld   [hl], c                                     ; $4b2f: $71
	inc  b                                           ; $4b30: $04
	sub  h                                           ; $4b31: $94
	ld   de, $5922                                   ; $4b32: $11 $22 $59
	adc  $cc                                         ; $4b35: $ce $cc
	cp   b                                           ; $4b37: $b8
	ld   d, [hl]                                     ; $4b38: $56
	ld   a, b                                        ; $4b39: $78
	adc  $ff                                         ; $4b3a: $ce $ff
	add  sp, $24                                     ; $4b3c: $e8 $24
	adc  h                                           ; $4b3e: $8c
	xor  l                                           ; $4b3f: $ad
	ei                                               ; $4b40: $fb
	ld   de, $5115                                   ; $4b41: $11 $15 $51
	daa                                              ; $4b44: $27
	sub  e                                           ; $4b45: $93
	ld   d, $ee                                      ; $4b46: $16 $ee
	sub  a                                           ; $4b48: $97
	call Call_0b6_6b93                               ; $4b49: $cd $93 $6b
	jp   c, $ffaf                                    ; $4b4c: $da $af $ff

	sbc  b                                           ; $4b4f: $98
	sub  a                                           ; $4b50: $97
	ld   d, [hl]                                     ; $4b51: $56
	or   a                                           ; $4b52: $b7
	ld   h, l                                        ; $4b53: $65
	ld   d, d                                        ; $4b54: $52
	ld   hl, $3513                                   ; $4b55: $21 $13 $35
	ld   l, c                                        ; $4b58: $69
	ld   a, c                                        ; $4b59: $79
	sbc  d                                           ; $4b5a: $9a
	rst  $10                                         ; $4b5b: $d7
	ld   a, c                                        ; $4b5c: $79
	res  1, [hl]                                     ; $4b5d: $cb $8e
	cp   $8a                                         ; $4b5f: $fe $8a
	db   $fd                                         ; $4b61: $fd
	sub  [hl]                                        ; $4b62: $96
	sbc  c                                           ; $4b63: $99
	ld   h, d                                        ; $4b64: $62
	ld   l, d                                        ; $4b65: $6a
	ld   h, e                                        ; $4b66: $63
	inc  [hl]                                        ; $4b67: $34
	ld   sp, $4414                                   ; $4b68: $31 $14 $44
	sbc  h                                           ; $4b6b: $9c
	call $93ed                                       ; $4b6c: $cd $ed $93
	ld   e, b                                        ; $4b6f: $58
	ld   a, d                                        ; $4b70: $7a
	rst  $38                                         ; $4b71: $ff
	db   $eb                                         ; $4b72: $eb
	cp   e                                           ; $4b73: $bb
	halt                                             ; $4b74: $76
	ld   a, e                                        ; $4b75: $7b
	or   a                                           ; $4b76: $b7
	ld   h, a                                        ; $4b77: $67
	sub  l                                           ; $4b78: $95
	ld   hl, $2311                                   ; $4b79: $21 $11 $23
	ld   b, h                                        ; $4b7c: $44
	adc  d                                           ; $4b7d: $8a
	xor  e                                           ; $4b7e: $ab
	call z, $ab86                                    ; $4b7f: $cc $86 $ab
	adc  c                                           ; $4b82: $89
	adc  $d8                                         ; $4b83: $ce $d8
	xor  l                                           ; $4b85: $ad
	ret  c                                           ; $4b86: $d8

	ld   a, e                                        ; $4b87: $7b
	ret                                              ; $4b88: $c9


	ld   b, l                                        ; $4b89: $45
	ld   [hl], l                                     ; $4b8a: $75
	ld   hl, $2322                                   ; $4b8b: $21 $22 $23
	ld   b, l                                        ; $4b8e: $45
	ld   a, b                                        ; $4b8f: $78
	sbc  e                                           ; $4b90: $9b
	db   $ed                                         ; $4b91: $ed
	and  a                                           ; $4b92: $a7
	sbc  b                                           ; $4b93: $98
	add  a                                           ; $4b94: $87
	cp   l                                           ; $4b95: $bd
	res  5, l                                        ; $4b96: $cb $ad
	db   $db                                         ; $4b98: $db
	sbc  c                                           ; $4b99: $99
	xor  c                                           ; $4b9a: $a9
	ld   [hl], a                                     ; $4b9b: $77
	ld   [hl], l                                     ; $4b9c: $75
	ld   b, h                                        ; $4b9d: $44
	inc  sp                                          ; $4b9e: $33
	dec  [hl]                                        ; $4b9f: $35
	ld   d, d                                        ; $4ba0: $52
	inc  [hl]                                        ; $4ba1: $34
	ld   a, c                                        ; $4ba2: $79
	adc  c                                           ; $4ba3: $89
	cp   h                                           ; $4ba4: $bc
	and  a                                           ; $4ba5: $a7
	ld   a, d                                        ; $4ba6: $7a
	xor  c                                           ; $4ba7: $a9
	xor  h                                           ; $4ba8: $ac
	db   $ec                                         ; $4ba9: $ec
	xor  c                                           ; $4baa: $a9
	sub  a                                           ; $4bab: $97
	adc  c                                           ; $4bac: $89
	sbc  d                                           ; $4bad: $9a
	sub  a                                           ; $4bae: $97
	ld   h, [hl]                                     ; $4baf: $66
	ld   b, e                                        ; $4bb0: $43
	ld   b, [hl]                                     ; $4bb1: $46
	ld   h, a                                        ; $4bb2: $67
	ld   h, [hl]                                     ; $4bb3: $66
	ld   d, l                                        ; $4bb4: $55
	ld   d, [hl]                                     ; $4bb5: $56
	ld   [hl], a                                     ; $4bb6: $77
	xor  c                                           ; $4bb7: $a9
	adc  c                                           ; $4bb8: $89
	adc  b                                           ; $4bb9: $88
	sbc  b                                           ; $4bba: $98
	ld   a, b                                        ; $4bbb: $78
	sbc  c                                           ; $4bbc: $99
	sbc  b                                           ; $4bbd: $98
	sbc  b                                           ; $4bbe: $98
	halt                                             ; $4bbf: $76
	sbc  b                                           ; $4bc0: $98
	ld   h, a                                        ; $4bc1: $67
	ld   h, l                                        ; $4bc2: $65
	ld   h, a                                        ; $4bc3: $67
	ld   h, l                                        ; $4bc4: $65
	halt                                             ; $4bc5: $76
	ld   d, a                                        ; $4bc6: $57
	xor  c                                           ; $4bc7: $a9
	sbc  d                                           ; $4bc8: $9a
	cp   h                                           ; $4bc9: $bc
	cp   e                                           ; $4bca: $bb
	xor  d                                           ; $4bcb: $aa
	cp   d                                           ; $4bcc: $ba
	res  7, b                                        ; $4bcd: $cb $b8
	ld   [hl], a                                     ; $4bcf: $77
	adc  c                                           ; $4bd0: $89
	ld   a, c                                        ; $4bd1: $79
	sbc  c                                           ; $4bd2: $99
	sbc  c                                           ; $4bd3: $99
	xor  h                                           ; $4bd4: $ac
	set  1, h                                        ; $4bd5: $cb $cc
	cp   d                                           ; $4bd7: $ba
	xor  e                                           ; $4bd8: $ab
	jp   z, $a89a                                    ; $4bd9: $ca $9a $a8

	ld   a, b                                        ; $4bdc: $78
	adc  c                                           ; $4bdd: $89
	sbc  b                                           ; $4bde: $98
	adc  c                                           ; $4bdf: $89
	add  a                                           ; $4be0: $87
	adc  b                                           ; $4be1: $88
	adc  b                                           ; $4be2: $88
	adc  b                                           ; $4be3: $88
	adc  c                                           ; $4be4: $89
	adc  b                                           ; $4be5: $88
	adc  c                                           ; $4be6: $89
	sbc  b                                           ; $4be7: $98
	add  a                                           ; $4be8: $87
	ld   [hl], a                                     ; $4be9: $77
	add  a                                           ; $4bea: $87
	adc  b                                           ; $4beb: $88
	adc  b                                           ; $4bec: $88
	adc  b                                           ; $4bed: $88
	adc  b                                           ; $4bee: $88
	adc  c                                           ; $4bef: $89
	adc  b                                           ; $4bf0: $88
	adc  b                                           ; $4bf1: $88
	adc  b                                           ; $4bf2: $88
	adc  b                                           ; $4bf3: $88
	add  a                                           ; $4bf4: $87
	ld   [hl], a                                     ; $4bf5: $77
	ld   [hl], a                                     ; $4bf6: $77
	add  a                                           ; $4bf7: $87
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
	adc  b                                           ; $4c9d: $88
	adc  b                                           ; $4c9e: $88
	adc  b                                           ; $4c9f: $88
	adc  b                                           ; $4ca0: $88
	adc  b                                           ; $4ca1: $88
	adc  b                                           ; $4ca2: $88
	adc  b                                           ; $4ca3: $88
	adc  b                                           ; $4ca4: $88
	adc  b                                           ; $4ca5: $88
	adc  b                                           ; $4ca6: $88
	adc  b                                           ; $4ca7: $88
	adc  b                                           ; $4ca8: $88
	adc  b                                           ; $4ca9: $88
	adc  b                                           ; $4caa: $88
	adc  b                                           ; $4cab: $88
	adc  b                                           ; $4cac: $88
	adc  b                                           ; $4cad: $88
	adc  b                                           ; $4cae: $88
	adc  b                                           ; $4caf: $88
	adc  b                                           ; $4cb0: $88
	adc  b                                           ; $4cb1: $88
	adc  b                                           ; $4cb2: $88
	adc  b                                           ; $4cb3: $88
	adc  b                                           ; $4cb4: $88
	adc  b                                           ; $4cb5: $88
	adc  b                                           ; $4cb6: $88
	adc  b                                           ; $4cb7: $88
	adc  b                                           ; $4cb8: $88
	adc  b                                           ; $4cb9: $88
	adc  b                                           ; $4cba: $88
	adc  b                                           ; $4cbb: $88
	adc  b                                           ; $4cbc: $88
	adc  b                                           ; $4cbd: $88
	adc  b                                           ; $4cbe: $88
	adc  b                                           ; $4cbf: $88
	adc  b                                           ; $4cc0: $88
	adc  b                                           ; $4cc1: $88
	adc  b                                           ; $4cc2: $88
	adc  b                                           ; $4cc3: $88
	adc  b                                           ; $4cc4: $88
	adc  b                                           ; $4cc5: $88
	adc  b                                           ; $4cc6: $88
	adc  b                                           ; $4cc7: $88
	adc  b                                           ; $4cc8: $88
	adc  b                                           ; $4cc9: $88
	adc  b                                           ; $4cca: $88
	adc  b                                           ; $4ccb: $88
	adc  b                                           ; $4ccc: $88
	adc  b                                           ; $4ccd: $88
	adc  b                                           ; $4cce: $88
	adc  b                                           ; $4ccf: $88
	adc  b                                           ; $4cd0: $88
	adc  b                                           ; $4cd1: $88
	adc  b                                           ; $4cd2: $88
	adc  b                                           ; $4cd3: $88
	adc  b                                           ; $4cd4: $88
	adc  b                                           ; $4cd5: $88
	adc  b                                           ; $4cd6: $88
	adc  b                                           ; $4cd7: $88
	adc  b                                           ; $4cd8: $88
	adc  b                                           ; $4cd9: $88
	adc  b                                           ; $4cda: $88
	adc  b                                           ; $4cdb: $88
	adc  b                                           ; $4cdc: $88
	adc  b                                           ; $4cdd: $88
	adc  b                                           ; $4cde: $88
	adc  b                                           ; $4cdf: $88
	adc  b                                           ; $4ce0: $88
	adc  b                                           ; $4ce1: $88
	adc  b                                           ; $4ce2: $88
	adc  b                                           ; $4ce3: $88
	adc  b                                           ; $4ce4: $88
	adc  b                                           ; $4ce5: $88
	adc  b                                           ; $4ce6: $88
	adc  b                                           ; $4ce7: $88
	adc  b                                           ; $4ce8: $88
	adc  b                                           ; $4ce9: $88
	adc  b                                           ; $4cea: $88
	adc  b                                           ; $4ceb: $88
	adc  b                                           ; $4cec: $88
	adc  b                                           ; $4ced: $88
	adc  b                                           ; $4cee: $88
	adc  b                                           ; $4cef: $88
	adc  b                                           ; $4cf0: $88
	adc  b                                           ; $4cf1: $88
	adc  b                                           ; $4cf2: $88
	adc  b                                           ; $4cf3: $88
	adc  b                                           ; $4cf4: $88
	adc  b                                           ; $4cf5: $88
	adc  b                                           ; $4cf6: $88
	adc  b                                           ; $4cf7: $88
	adc  b                                           ; $4cf8: $88
	adc  b                                           ; $4cf9: $88
	adc  b                                           ; $4cfa: $88
	adc  b                                           ; $4cfb: $88
	adc  b                                           ; $4cfc: $88
	adc  b                                           ; $4cfd: $88
	adc  b                                           ; $4cfe: $88
	adc  b                                           ; $4cff: $88
	adc  b                                           ; $4d00: $88
	adc  b                                           ; $4d01: $88
	adc  b                                           ; $4d02: $88
	adc  b                                           ; $4d03: $88
	adc  b                                           ; $4d04: $88
	adc  b                                           ; $4d05: $88
	adc  b                                           ; $4d06: $88
	adc  b                                           ; $4d07: $88
	adc  b                                           ; $4d08: $88
	adc  b                                           ; $4d09: $88
	adc  b                                           ; $4d0a: $88
	adc  b                                           ; $4d0b: $88
	adc  b                                           ; $4d0c: $88
	adc  b                                           ; $4d0d: $88
	adc  b                                           ; $4d0e: $88
	adc  b                                           ; $4d0f: $88
	adc  b                                           ; $4d10: $88
	adc  b                                           ; $4d11: $88
	adc  b                                           ; $4d12: $88
	adc  b                                           ; $4d13: $88
	adc  b                                           ; $4d14: $88
	adc  b                                           ; $4d15: $88
	adc  b                                           ; $4d16: $88
	adc  b                                           ; $4d17: $88
	adc  b                                           ; $4d18: $88
	adc  b                                           ; $4d19: $88
	adc  b                                           ; $4d1a: $88
	adc  b                                           ; $4d1b: $88
	adc  b                                           ; $4d1c: $88
	adc  b                                           ; $4d1d: $88
	adc  b                                           ; $4d1e: $88
	adc  b                                           ; $4d1f: $88
	adc  b                                           ; $4d20: $88
	adc  b                                           ; $4d21: $88
	adc  b                                           ; $4d22: $88
	adc  b                                           ; $4d23: $88
	adc  b                                           ; $4d24: $88
	adc  b                                           ; $4d25: $88
	adc  b                                           ; $4d26: $88
	adc  b                                           ; $4d27: $88
	adc  b                                           ; $4d28: $88
	adc  b                                           ; $4d29: $88
	adc  b                                           ; $4d2a: $88
	adc  b                                           ; $4d2b: $88
	adc  b                                           ; $4d2c: $88
	adc  b                                           ; $4d2d: $88
	adc  b                                           ; $4d2e: $88
	adc  b                                           ; $4d2f: $88
	adc  b                                           ; $4d30: $88
	adc  b                                           ; $4d31: $88
	adc  b                                           ; $4d32: $88
	adc  b                                           ; $4d33: $88
	adc  b                                           ; $4d34: $88
	adc  b                                           ; $4d35: $88
	adc  b                                           ; $4d36: $88
	adc  b                                           ; $4d37: $88
	adc  b                                           ; $4d38: $88
	adc  b                                           ; $4d39: $88
	adc  b                                           ; $4d3a: $88
	adc  b                                           ; $4d3b: $88
	adc  b                                           ; $4d3c: $88
	adc  b                                           ; $4d3d: $88
	adc  b                                           ; $4d3e: $88
	adc  b                                           ; $4d3f: $88
	adc  b                                           ; $4d40: $88
	adc  b                                           ; $4d41: $88
	adc  b                                           ; $4d42: $88
	adc  b                                           ; $4d43: $88
	adc  b                                           ; $4d44: $88
	adc  b                                           ; $4d45: $88
	adc  b                                           ; $4d46: $88
	adc  b                                           ; $4d47: $88
	adc  b                                           ; $4d48: $88
	adc  b                                           ; $4d49: $88
	adc  b                                           ; $4d4a: $88
	adc  b                                           ; $4d4b: $88
	adc  b                                           ; $4d4c: $88
	adc  b                                           ; $4d4d: $88
	adc  b                                           ; $4d4e: $88
	adc  b                                           ; $4d4f: $88
	adc  b                                           ; $4d50: $88
	adc  b                                           ; $4d51: $88
	adc  b                                           ; $4d52: $88
	adc  b                                           ; $4d53: $88
	adc  b                                           ; $4d54: $88
	adc  b                                           ; $4d55: $88
	adc  b                                           ; $4d56: $88
	adc  b                                           ; $4d57: $88
	adc  b                                           ; $4d58: $88
	adc  b                                           ; $4d59: $88
	adc  b                                           ; $4d5a: $88
	adc  b                                           ; $4d5b: $88
	adc  b                                           ; $4d5c: $88
	adc  b                                           ; $4d5d: $88
	adc  b                                           ; $4d5e: $88
	adc  b                                           ; $4d5f: $88
	adc  b                                           ; $4d60: $88
	adc  b                                           ; $4d61: $88
	adc  b                                           ; $4d62: $88
	adc  b                                           ; $4d63: $88
	adc  b                                           ; $4d64: $88
	adc  b                                           ; $4d65: $88
	adc  b                                           ; $4d66: $88
	adc  b                                           ; $4d67: $88
	adc  b                                           ; $4d68: $88
	adc  b                                           ; $4d69: $88
	adc  b                                           ; $4d6a: $88
	adc  b                                           ; $4d6b: $88
	adc  b                                           ; $4d6c: $88
	adc  b                                           ; $4d6d: $88
	adc  b                                           ; $4d6e: $88
	adc  b                                           ; $4d6f: $88
	adc  b                                           ; $4d70: $88
	adc  b                                           ; $4d71: $88
	adc  b                                           ; $4d72: $88
	adc  b                                           ; $4d73: $88
	adc  b                                           ; $4d74: $88
	adc  b                                           ; $4d75: $88
	adc  b                                           ; $4d76: $88
	adc  b                                           ; $4d77: $88
	adc  b                                           ; $4d78: $88
	adc  b                                           ; $4d79: $88
	adc  b                                           ; $4d7a: $88
	adc  b                                           ; $4d7b: $88
	adc  b                                           ; $4d7c: $88
	adc  b                                           ; $4d7d: $88
	adc  b                                           ; $4d7e: $88
	adc  b                                           ; $4d7f: $88
	adc  b                                           ; $4d80: $88
	adc  b                                           ; $4d81: $88
	adc  b                                           ; $4d82: $88
	adc  b                                           ; $4d83: $88
	adc  b                                           ; $4d84: $88
	adc  b                                           ; $4d85: $88
	adc  b                                           ; $4d86: $88
	adc  b                                           ; $4d87: $88
	adc  b                                           ; $4d88: $88
	adc  b                                           ; $4d89: $88
	adc  b                                           ; $4d8a: $88
	adc  b                                           ; $4d8b: $88
	adc  b                                           ; $4d8c: $88
	adc  b                                           ; $4d8d: $88
	adc  b                                           ; $4d8e: $88
	adc  b                                           ; $4d8f: $88
	adc  b                                           ; $4d90: $88
	adc  b                                           ; $4d91: $88
	adc  b                                           ; $4d92: $88
	adc  b                                           ; $4d93: $88
	adc  b                                           ; $4d94: $88
	adc  b                                           ; $4d95: $88
	adc  b                                           ; $4d96: $88
	adc  b                                           ; $4d97: $88
	adc  b                                           ; $4d98: $88
	adc  b                                           ; $4d99: $88
	adc  b                                           ; $4d9a: $88
	adc  b                                           ; $4d9b: $88
	adc  b                                           ; $4d9c: $88
	adc  b                                           ; $4d9d: $88
	adc  b                                           ; $4d9e: $88
	adc  b                                           ; $4d9f: $88
	adc  b                                           ; $4da0: $88
	adc  b                                           ; $4da1: $88
	adc  b                                           ; $4da2: $88
	adc  b                                           ; $4da3: $88
	adc  b                                           ; $4da4: $88
	adc  b                                           ; $4da5: $88
	adc  b                                           ; $4da6: $88
	adc  b                                           ; $4da7: $88
	adc  b                                           ; $4da8: $88
	adc  b                                           ; $4da9: $88
	adc  b                                           ; $4daa: $88
	adc  b                                           ; $4dab: $88
	adc  b                                           ; $4dac: $88
	adc  b                                           ; $4dad: $88
	adc  b                                           ; $4dae: $88
	adc  b                                           ; $4daf: $88
	adc  b                                           ; $4db0: $88
	adc  b                                           ; $4db1: $88
	adc  b                                           ; $4db2: $88
	adc  b                                           ; $4db3: $88
	adc  b                                           ; $4db4: $88
	adc  b                                           ; $4db5: $88
	adc  b                                           ; $4db6: $88
	adc  b                                           ; $4db7: $88
	adc  b                                           ; $4db8: $88
	adc  b                                           ; $4db9: $88
	adc  b                                           ; $4dba: $88
	adc  b                                           ; $4dbb: $88
	adc  b                                           ; $4dbc: $88
	adc  b                                           ; $4dbd: $88
	adc  b                                           ; $4dbe: $88
	adc  b                                           ; $4dbf: $88
	adc  b                                           ; $4dc0: $88
	adc  b                                           ; $4dc1: $88
	adc  b                                           ; $4dc2: $88
	adc  b                                           ; $4dc3: $88
	adc  b                                           ; $4dc4: $88
	adc  b                                           ; $4dc5: $88
	adc  b                                           ; $4dc6: $88
	adc  b                                           ; $4dc7: $88
	adc  b                                           ; $4dc8: $88
	adc  b                                           ; $4dc9: $88
	adc  b                                           ; $4dca: $88
	adc  b                                           ; $4dcb: $88
	adc  b                                           ; $4dcc: $88
	adc  b                                           ; $4dcd: $88
	adc  b                                           ; $4dce: $88
	adc  b                                           ; $4dcf: $88
	adc  b                                           ; $4dd0: $88
	adc  b                                           ; $4dd1: $88
	adc  b                                           ; $4dd2: $88
	adc  b                                           ; $4dd3: $88
	adc  b                                           ; $4dd4: $88
	adc  b                                           ; $4dd5: $88
	adc  b                                           ; $4dd6: $88
	adc  b                                           ; $4dd7: $88
	adc  b                                           ; $4dd8: $88
	adc  b                                           ; $4dd9: $88
	adc  b                                           ; $4dda: $88
	adc  b                                           ; $4ddb: $88
	adc  b                                           ; $4ddc: $88
	adc  b                                           ; $4ddd: $88
	adc  b                                           ; $4dde: $88
	adc  b                                           ; $4ddf: $88
	adc  b                                           ; $4de0: $88
	adc  b                                           ; $4de1: $88
	adc  b                                           ; $4de2: $88
	adc  b                                           ; $4de3: $88
	adc  b                                           ; $4de4: $88
	adc  b                                           ; $4de5: $88
	adc  b                                           ; $4de6: $88
	adc  b                                           ; $4de7: $88
	adc  b                                           ; $4de8: $88
	adc  b                                           ; $4de9: $88
	adc  b                                           ; $4dea: $88
	adc  b                                           ; $4deb: $88
	adc  b                                           ; $4dec: $88
	adc  b                                           ; $4ded: $88
	adc  b                                           ; $4dee: $88
	adc  b                                           ; $4def: $88
	adc  b                                           ; $4df0: $88
	adc  b                                           ; $4df1: $88
	adc  b                                           ; $4df2: $88
	adc  b                                           ; $4df3: $88
	adc  b                                           ; $4df4: $88
	adc  b                                           ; $4df5: $88
	adc  b                                           ; $4df6: $88
	adc  b                                           ; $4df7: $88
	adc  b                                           ; $4df8: $88
	adc  b                                           ; $4df9: $88
	adc  b                                           ; $4dfa: $88
	adc  b                                           ; $4dfb: $88
	adc  b                                           ; $4dfc: $88
	adc  b                                           ; $4dfd: $88
	adc  b                                           ; $4dfe: $88
	adc  b                                           ; $4dff: $88
	adc  b                                           ; $4e00: $88
	adc  b                                           ; $4e01: $88
	adc  b                                           ; $4e02: $88
	adc  b                                           ; $4e03: $88
	adc  b                                           ; $4e04: $88
	adc  b                                           ; $4e05: $88
	adc  b                                           ; $4e06: $88
	adc  b                                           ; $4e07: $88
	adc  b                                           ; $4e08: $88
	adc  b                                           ; $4e09: $88
	adc  b                                           ; $4e0a: $88
	adc  b                                           ; $4e0b: $88
	adc  b                                           ; $4e0c: $88
	adc  b                                           ; $4e0d: $88
	adc  b                                           ; $4e0e: $88
	adc  b                                           ; $4e0f: $88
	adc  b                                           ; $4e10: $88
	adc  b                                           ; $4e11: $88
	adc  b                                           ; $4e12: $88
	adc  b                                           ; $4e13: $88
	adc  b                                           ; $4e14: $88
	adc  b                                           ; $4e15: $88
	adc  b                                           ; $4e16: $88
	adc  b                                           ; $4e17: $88
	adc  b                                           ; $4e18: $88
	adc  b                                           ; $4e19: $88
	adc  b                                           ; $4e1a: $88
	adc  b                                           ; $4e1b: $88
	adc  b                                           ; $4e1c: $88
	adc  b                                           ; $4e1d: $88
	adc  b                                           ; $4e1e: $88
	adc  b                                           ; $4e1f: $88
	adc  b                                           ; $4e20: $88
	adc  b                                           ; $4e21: $88
	adc  b                                           ; $4e22: $88
	adc  b                                           ; $4e23: $88
	adc  b                                           ; $4e24: $88
	adc  b                                           ; $4e25: $88
	adc  b                                           ; $4e26: $88
	adc  b                                           ; $4e27: $88
	adc  b                                           ; $4e28: $88
	adc  b                                           ; $4e29: $88
	adc  b                                           ; $4e2a: $88
	adc  b                                           ; $4e2b: $88
	adc  b                                           ; $4e2c: $88
	adc  b                                           ; $4e2d: $88
	adc  b                                           ; $4e2e: $88
	adc  b                                           ; $4e2f: $88
	adc  b                                           ; $4e30: $88
	adc  b                                           ; $4e31: $88
	adc  b                                           ; $4e32: $88
	adc  b                                           ; $4e33: $88
	adc  b                                           ; $4e34: $88
	adc  b                                           ; $4e35: $88
	adc  b                                           ; $4e36: $88
	adc  b                                           ; $4e37: $88
	adc  b                                           ; $4e38: $88
	adc  b                                           ; $4e39: $88
	adc  b                                           ; $4e3a: $88
	adc  b                                           ; $4e3b: $88
	adc  b                                           ; $4e3c: $88
	adc  b                                           ; $4e3d: $88
	adc  b                                           ; $4e3e: $88
	adc  b                                           ; $4e3f: $88
	adc  b                                           ; $4e40: $88
	adc  b                                           ; $4e41: $88
	adc  b                                           ; $4e42: $88
	adc  b                                           ; $4e43: $88
	adc  b                                           ; $4e44: $88
	adc  b                                           ; $4e45: $88
	adc  b                                           ; $4e46: $88
	adc  b                                           ; $4e47: $88
	adc  b                                           ; $4e48: $88
	adc  b                                           ; $4e49: $88
	adc  b                                           ; $4e4a: $88
	adc  b                                           ; $4e4b: $88
	adc  b                                           ; $4e4c: $88
	adc  b                                           ; $4e4d: $88
	adc  b                                           ; $4e4e: $88
	adc  b                                           ; $4e4f: $88
	adc  b                                           ; $4e50: $88
	adc  b                                           ; $4e51: $88
	adc  b                                           ; $4e52: $88
	adc  b                                           ; $4e53: $88
	adc  b                                           ; $4e54: $88
	adc  b                                           ; $4e55: $88
	adc  b                                           ; $4e56: $88
	adc  b                                           ; $4e57: $88
	adc  b                                           ; $4e58: $88
	adc  b                                           ; $4e59: $88
	adc  b                                           ; $4e5a: $88
	adc  b                                           ; $4e5b: $88
	adc  b                                           ; $4e5c: $88
	adc  b                                           ; $4e5d: $88
	adc  b                                           ; $4e5e: $88
	adc  b                                           ; $4e5f: $88
	adc  b                                           ; $4e60: $88
	adc  b                                           ; $4e61: $88
	adc  b                                           ; $4e62: $88
	adc  b                                           ; $4e63: $88
	adc  b                                           ; $4e64: $88
	adc  b                                           ; $4e65: $88
	adc  b                                           ; $4e66: $88
	adc  b                                           ; $4e67: $88
	adc  b                                           ; $4e68: $88
	adc  b                                           ; $4e69: $88
	adc  b                                           ; $4e6a: $88
	adc  b                                           ; $4e6b: $88
	adc  b                                           ; $4e6c: $88
	adc  b                                           ; $4e6d: $88
	adc  b                                           ; $4e6e: $88
	adc  b                                           ; $4e6f: $88
	adc  b                                           ; $4e70: $88
	adc  b                                           ; $4e71: $88
	adc  b                                           ; $4e72: $88
	adc  b                                           ; $4e73: $88
	adc  b                                           ; $4e74: $88
	adc  b                                           ; $4e75: $88
	adc  b                                           ; $4e76: $88
	adc  b                                           ; $4e77: $88
	adc  b                                           ; $4e78: $88
	adc  b                                           ; $4e79: $88
	adc  b                                           ; $4e7a: $88
	adc  b                                           ; $4e7b: $88
	adc  b                                           ; $4e7c: $88
	adc  b                                           ; $4e7d: $88
	adc  b                                           ; $4e7e: $88
	adc  b                                           ; $4e7f: $88
	adc  b                                           ; $4e80: $88
	adc  b                                           ; $4e81: $88
	adc  b                                           ; $4e82: $88
	adc  b                                           ; $4e83: $88
	adc  b                                           ; $4e84: $88
	adc  b                                           ; $4e85: $88
	adc  b                                           ; $4e86: $88
	adc  b                                           ; $4e87: $88
	adc  b                                           ; $4e88: $88
	adc  b                                           ; $4e89: $88
	adc  b                                           ; $4e8a: $88
	adc  b                                           ; $4e8b: $88
	adc  b                                           ; $4e8c: $88
	adc  b                                           ; $4e8d: $88
	adc  b                                           ; $4e8e: $88
	adc  b                                           ; $4e8f: $88
	adc  b                                           ; $4e90: $88
	adc  b                                           ; $4e91: $88
	adc  b                                           ; $4e92: $88
	adc  b                                           ; $4e93: $88
	adc  b                                           ; $4e94: $88
	adc  b                                           ; $4e95: $88
	adc  b                                           ; $4e96: $88
	adc  b                                           ; $4e97: $88
	adc  b                                           ; $4e98: $88
	adc  b                                           ; $4e99: $88
	adc  b                                           ; $4e9a: $88
	adc  b                                           ; $4e9b: $88
	adc  b                                           ; $4e9c: $88
	adc  b                                           ; $4e9d: $88
	adc  b                                           ; $4e9e: $88
	adc  b                                           ; $4e9f: $88
	adc  b                                           ; $4ea0: $88
	adc  b                                           ; $4ea1: $88
	adc  b                                           ; $4ea2: $88
	adc  b                                           ; $4ea3: $88
	adc  b                                           ; $4ea4: $88
	adc  b                                           ; $4ea5: $88
	adc  b                                           ; $4ea6: $88
	adc  b                                           ; $4ea7: $88
	adc  b                                           ; $4ea8: $88
	adc  b                                           ; $4ea9: $88
	adc  b                                           ; $4eaa: $88
	adc  b                                           ; $4eab: $88
	adc  b                                           ; $4eac: $88
	adc  b                                           ; $4ead: $88
	adc  b                                           ; $4eae: $88
	adc  b                                           ; $4eaf: $88
	adc  b                                           ; $4eb0: $88
	adc  b                                           ; $4eb1: $88
	adc  b                                           ; $4eb2: $88
	adc  b                                           ; $4eb3: $88
	adc  b                                           ; $4eb4: $88
	adc  b                                           ; $4eb5: $88
	adc  b                                           ; $4eb6: $88
	adc  b                                           ; $4eb7: $88
	adc  b                                           ; $4eb8: $88
	adc  b                                           ; $4eb9: $88
	adc  b                                           ; $4eba: $88
	adc  b                                           ; $4ebb: $88
	adc  b                                           ; $4ebc: $88
	adc  b                                           ; $4ebd: $88
	adc  b                                           ; $4ebe: $88
	adc  b                                           ; $4ebf: $88
	adc  b                                           ; $4ec0: $88
	adc  b                                           ; $4ec1: $88
	adc  b                                           ; $4ec2: $88
	adc  b                                           ; $4ec3: $88
	adc  b                                           ; $4ec4: $88
	adc  b                                           ; $4ec5: $88
	adc  b                                           ; $4ec6: $88
	adc  b                                           ; $4ec7: $88
	adc  b                                           ; $4ec8: $88
	adc  b                                           ; $4ec9: $88
	adc  b                                           ; $4eca: $88
	adc  b                                           ; $4ecb: $88
	adc  b                                           ; $4ecc: $88
	adc  b                                           ; $4ecd: $88
	adc  b                                           ; $4ece: $88
	adc  b                                           ; $4ecf: $88
	adc  b                                           ; $4ed0: $88
	adc  b                                           ; $4ed1: $88
	adc  b                                           ; $4ed2: $88
	adc  b                                           ; $4ed3: $88
	adc  b                                           ; $4ed4: $88
	adc  b                                           ; $4ed5: $88
	adc  b                                           ; $4ed6: $88
	adc  b                                           ; $4ed7: $88
	adc  b                                           ; $4ed8: $88
	adc  b                                           ; $4ed9: $88
	adc  b                                           ; $4eda: $88
	adc  b                                           ; $4edb: $88
	adc  b                                           ; $4edc: $88
	adc  b                                           ; $4edd: $88
	adc  b                                           ; $4ede: $88
	adc  b                                           ; $4edf: $88
	adc  b                                           ; $4ee0: $88
	adc  b                                           ; $4ee1: $88
	adc  b                                           ; $4ee2: $88
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
	adc  b                                           ; $4eee: $88
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
	sbc  d                                           ; $4f9b: $9a
	call z, $da7a                                    ; $4f9c: $cc $7a $da
	adc  l                                           ; $4f9f: $8d
	ld   hl, sp+$48                                  ; $4fa0: $f8 $48
	sub  a                                           ; $4fa2: $97
	ld   l, c                                        ; $4fa3: $69
	ret  z                                           ; $4fa4: $c8

	adc  e                                           ; $4fa5: $8b
	call c, $9799                                    ; $4fa6: $dc $99 $97
	ld   a, b                                        ; $4fa9: $78
	halt                                             ; $4faa: $76
	ld   sp, $1111                                   ; $4fab: $31 $11 $11
	inc  hl                                          ; $4fae: $23
	ld   b, l                                        ; $4faf: $45
	ld   a, d                                        ; $4fb0: $7a
	cp   e                                           ; $4fb1: $bb
	db   $dd                                         ; $4fb2: $dd
	call z, $98aa                                    ; $4fb3: $cc $aa $98
	adc  c                                           ; $4fb6: $89
	sub  a                                           ; $4fb7: $97
	ld   [hl], a                                     ; $4fb8: $77
	ld   h, e                                        ; $4fb9: $63
	ld   de, $1111                                   ; $4fba: $11 $11 $11
	ld   de, $3611                                   ; $4fbd: $11 $11 $36
	xor  a                                           ; $4fc0: $af
	rst  $38                                         ; $4fc1: $ff
	rst  $38                                         ; $4fc2: $ff
	rst  $38                                         ; $4fc3: $ff
	cp   l                                           ; $4fc4: $bd
	ld   [$ddab], a                                  ; $4fc5: $ea $ab $dd
	cp   h                                           ; $4fc8: $bc
	db   $fd                                         ; $4fc9: $fd
	res  5, e                                        ; $4fca: $cb $ab
	ld   [hl], l                                     ; $4fcc: $75
	ld   sp, $1111                                   ; $4fcd: $31 $11 $11
	ld   de, $ef81                                   ; $4fd0: $11 $81 $ef
	rst  $38                                         ; $4fd3: $ff
	rst  JumpTable                                         ; $4fd4: $df
	db   $fd                                         ; $4fd5: $fd
	halt                                             ; $4fd6: $76
	xor  e                                           ; $4fd7: $ab
	ld   h, $dc                                      ; $4fd8: $26 $dc
	db   $dd                                         ; $4fda: $dd
	rst  $38                                         ; $4fdb: $ff
	rst  $38                                         ; $4fdc: $ff
	rst  $38                                         ; $4fdd: $ff
	or   a                                           ; $4fde: $b7
	sub  l                                           ; $4fdf: $95
	ld   de, $1111                                   ; $4fe0: $11 $11 $11
	inc  de                                          ; $4fe3: $13
	scf                                              ; $4fe4: $37
	rst  $38                                         ; $4fe5: $ff
	rst  $38                                         ; $4fe6: $ff
	rst  $38                                         ; $4fe7: $ff
	or   $46                                         ; $4fe8: $f6 $46
	ld   [hl], e                                     ; $4fea: $73
	jr   @-$36                                       ; $4feb: $18 $c8

	rst  JumpTable                                         ; $4fed: $df
	rst  $38                                         ; $4fee: $ff
	rst  $38                                         ; $4fef: $ff
	db   $fd                                         ; $4ff0: $fd
	cp   e                                           ; $4ff1: $bb
	add  c                                           ; $4ff2: $81
	ld   de, $1111                                   ; $4ff3: $11 $11 $11
	ld   de, $af4b                                   ; $4ff6: $11 $4b $af
	rst  $38                                         ; $4ff9: $ff
	db   $fd                                         ; $4ffa: $fd
	rst  $38                                         ; $4ffb: $ff
	ld   d, c                                        ; $4ffc: $51
	inc  h                                           ; $4ffd: $24
	ld   sp, $bf7a                                   ; $4ffe: $31 $7a $bf
	rst  $38                                         ; $5001: $ff
	rst  $38                                         ; $5002: $ff
	rst  $38                                         ; $5003: $ff
	db   $eb                                         ; $5004: $eb
	sub  a                                           ; $5005: $97
	ld   sp, $1111                                   ; $5006: $31 $11 $11
	ld   de, $3f11                                   ; $5009: $11 $11 $3f
	rra                                              ; $500c: $1f
	rst  $38                                         ; $500d: $ff
	push af                                          ; $500e: $f5
	rst  $38                                         ; $500f: $ff
	ld   sp, $3137                                   ; $5010: $31 $37 $31
	adc  [hl]                                        ; $5013: $8e
	adc  h                                           ; $5014: $8c
	rst  $38                                         ; $5015: $ff
	rst  $38                                         ; $5016: $ff
	rst  $38                                         ; $5017: $ff
	jp   c, $31da                                    ; $5018: $da $da $31

	ld   [hl], a                                     ; $501b: $77
	ld   bc, $1153                                   ; $501c: $01 $53 $11
	ld   de, $1fe5                                   ; $501f: $11 $e5 $1f
	rst  $38                                         ; $5022: $ff
	add  $fd                                         ; $5023: $c6 $fd
	ld   de, $2274                                   ; $5025: $11 $74 $22
	db   $eb                                         ; $5028: $eb
	ld   a, a                                        ; $5029: $7f
	rst  $38                                         ; $502a: $ff
	rst  $38                                         ; $502b: $ff
	db   $fd                                         ; $502c: $fd
	ld   l, e                                        ; $502d: $6b
	cp   c                                           ; $502e: $b9
	ld   d, [hl]                                     ; $502f: $56
	add  $49                                         ; $5030: $c6 $49
	add  [hl]                                        ; $5032: $86
	ld   de, $1f11                                   ; $5033: $11 $11 $1f
	ld   hl, $f9ff                                   ; $5036: $21 $ff $f9
	ld   c, a                                        ; $5039: $4f
	pop  de                                          ; $503a: $d1
	ld   h, $51                                      ; $503b: $26 $51
	rra                                              ; $503d: $1f
	sub  h                                           ; $503e: $94
	rst  $38                                         ; $503f: $ff
	rst  $38                                         ; $5040: $ff
	rst  $38                                         ; $5041: $ff
	or   d                                           ; $5042: $b2
	adc  c                                           ; $5043: $89
	ld   d, e                                        ; $5044: $53
	ld   e, l                                        ; $5045: $5d
	jp   c, $d7df                                    ; $5046: $da $df $d7

	ld   h, [hl]                                     ; $5049: $66
	ld   hl, $1f11                                   ; $504a: $21 $11 $1f
	ld   de, $f9ff                                   ; $504d: $11 $ff $f9
	ld   a, a                                        ; $5050: $7f
	add  c                                           ; $5051: $81
	dec  [hl]                                        ; $5052: $35
	ld   hl, $c71f                                   ; $5053: $21 $1f $c7
	rst  $38                                         ; $5056: $ff
	db   $fd                                         ; $5057: $fd
	db   $fd                                         ; $5058: $fd
	ld   [hl], c                                     ; $5059: $71
	ld   e, b                                        ; $505a: $58
	inc  sp                                          ; $505b: $33
	ld   a, h                                        ; $505c: $7c
	sub  a                                           ; $505d: $97
	rst  $38                                         ; $505e: $ff
	db   $db                                         ; $505f: $db
	xor  c                                           ; $5060: $a9
	ld   de, $1f11                                   ; $5061: $11 $11 $1f
	add  c                                           ; $5064: $81
	rst  $38                                         ; $5065: $ff
	db   $fd                                         ; $5066: $fd
	rra                                              ; $5067: $1f
	pop  hl                                          ; $5068: $e1
	ld   d, $21                                      ; $5069: $16 $21
	rra                                              ; $506b: $1f
	db   $e4                                         ; $506c: $e4
	rst  $38                                         ; $506d: $ff
	ei                                               ; $506e: $fb
	call $2881                                       ; $506f: $cd $81 $28
	ld   b, c                                        ; $5072: $41
	ld   c, h                                        ; $5073: $4c
	or   a                                           ; $5074: $b7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5075: $cf
	ret  z                                           ; $5076: $c8

	xor  [hl]                                        ; $5077: $ae
	and  l                                           ; $5078: $a5
	xor  c                                           ; $5079: $a9
	ld   b, c                                        ; $507a: $41
	ld   de, $f11d                                   ; $507b: $11 $1d $f1
	rst  $38                                         ; $507e: $ff
	rst  $38                                         ; $507f: $ff
	cpl                                              ; $5080: $2f
	pop  af                                          ; $5081: $f1
	ld   d, $32                                      ; $5082: $16 $32
	add  hl, de                                      ; $5084: $19
	push bc                                          ; $5085: $c5
	cp   a                                           ; $5086: $bf
	ld   a, [$93bb]                                  ; $5087: $fa $bb $93
	rla                                              ; $508a: $17
	ld   b, c                                        ; $508b: $41
	ld   a, c                                        ; $508c: $79
	xor  d                                           ; $508d: $aa
	xor  a                                           ; $508e: $af
	rst  $10                                         ; $508f: $d7
	sbc  d                                           ; $5090: $9a
	ld   [hl], h                                     ; $5091: $74
	ld   b, [hl]                                     ; $5092: $46
	halt                                             ; $5093: $76
	sbc  h                                           ; $5094: $9c
	call c, $b8bc                                    ; $5095: $dc $bc $b8
	halt                                             ; $5098: $76
	ld   h, l                                        ; $5099: $65
	ld   d, a                                        ; $509a: $57
	adc  b                                           ; $509b: $88
	ld   a, c                                        ; $509c: $79
	halt                                             ; $509d: $76
	add  a                                           ; $509e: $87
	ld   d, l                                        ; $509f: $55
	ld   b, c                                        ; $50a0: $41
	ld   b, e                                        ; $50a1: $43
	ld   a, [hl]                                     ; $50a2: $7e
	adc  [hl]                                        ; $50a3: $8e
	ld   [$88d8], a                                  ; $50a4: $ea $d8 $88
	inc  sp                                          ; $50a7: $33
	ld   [hl], l                                     ; $50a8: $75
	ld   l, d                                        ; $50a9: $6a
	xor  h                                           ; $50aa: $ac
	xor  d                                           ; $50ab: $aa
	jp   z, Jump_0b6_7777                            ; $50ac: $ca $77 $77

	halt                                             ; $50af: $76
	adc  c                                           ; $50b0: $89
	adc  c                                           ; $50b1: $89
	sbc  b                                           ; $50b2: $98
	adc  b                                           ; $50b3: $88
	add  a                                           ; $50b4: $87
	ld   h, [hl]                                     ; $50b5: $66
	ld   [hl], a                                     ; $50b6: $77
	ld   a, c                                        ; $50b7: $79
	sbc  d                                           ; $50b8: $9a
	adc  b                                           ; $50b9: $88
	sbc  b                                           ; $50ba: $98
	ld   a, b                                        ; $50bb: $78
	ld   a, b                                        ; $50bc: $78
	adc  c                                           ; $50bd: $89
	xor  d                                           ; $50be: $aa
	xor  c                                           ; $50bf: $a9
	sbc  c                                           ; $50c0: $99
	sub  a                                           ; $50c1: $97
	ld   h, a                                        ; $50c2: $67
	ld   h, [hl]                                     ; $50c3: $66
	ld   a, b                                        ; $50c4: $78
	sbc  c                                           ; $50c5: $99
	sbc  d                                           ; $50c6: $9a
	xor  b                                           ; $50c7: $a8
	add  a                                           ; $50c8: $87
	ld   h, [hl]                                     ; $50c9: $66
	ld   d, a                                        ; $50ca: $57
	ld   [hl], a                                     ; $50cb: $77
	sbc  b                                           ; $50cc: $98
	sbc  c                                           ; $50cd: $99
	adc  b                                           ; $50ce: $88
	add  a                                           ; $50cf: $87
	ld   [hl], a                                     ; $50d0: $77
	ld   [hl], a                                     ; $50d1: $77
	sbc  c                                           ; $50d2: $99
	sbc  c                                           ; $50d3: $99
	sbc  b                                           ; $50d4: $98
	add  a                                           ; $50d5: $87
	sbc  c                                           ; $50d6: $99
	ld   l, c                                        ; $50d7: $69
	add  a                                           ; $50d8: $87
	sub  [hl]                                        ; $50d9: $96
	sbc  c                                           ; $50da: $99
	ld   a, c                                        ; $50db: $79
	sbc  c                                           ; $50dc: $99
	ld   [hl], a                                     ; $50dd: $77
	ld   a, b                                        ; $50de: $78
	ld   h, a                                        ; $50df: $67
	sbc  b                                           ; $50e0: $98
	adc  b                                           ; $50e1: $88
	sbc  c                                           ; $50e2: $99
	halt                                             ; $50e3: $76
	sbc  h                                           ; $50e4: $9c
	ld   l, b                                        ; $50e5: $68
	or   a                                           ; $50e6: $b7
	and  [hl]                                        ; $50e7: $a6
	sbc  e                                           ; $50e8: $9b
	ld   h, a                                        ; $50e9: $67
	sbc  c                                           ; $50ea: $99
	adc  c                                           ; $50eb: $89
	ld   a, c                                        ; $50ec: $79
	sub  a                                           ; $50ed: $97
	xor  b                                           ; $50ee: $a8
	add  a                                           ; $50ef: $87
	ld   [hl], a                                     ; $50f0: $77
	halt                                             ; $50f1: $76
	ld   a, c                                        ; $50f2: $79
	ld   a, b                                        ; $50f3: $78
	adc  b                                           ; $50f4: $88
	adc  b                                           ; $50f5: $88
	adc  b                                           ; $50f6: $88
	add  a                                           ; $50f7: $87
	adc  b                                           ; $50f8: $88
	adc  b                                           ; $50f9: $88
	adc  b                                           ; $50fa: $88
	sbc  b                                           ; $50fb: $98
	adc  b                                           ; $50fc: $88
	adc  c                                           ; $50fd: $89
	adc  c                                           ; $50fe: $89
	adc  b                                           ; $50ff: $88
	sbc  c                                           ; $5100: $99
	adc  c                                           ; $5101: $89
	adc  b                                           ; $5102: $88
	adc  b                                           ; $5103: $88
	add  a                                           ; $5104: $87
	adc  b                                           ; $5105: $88
	ld   a, c                                        ; $5106: $79
	sub  a                                           ; $5107: $97
	adc  c                                           ; $5108: $89
	adc  b                                           ; $5109: $88
	ld   [hl], a                                     ; $510a: $77
	add  a                                           ; $510b: $87
	ld   a, b                                        ; $510c: $78
	adc  b                                           ; $510d: $88
	adc  b                                           ; $510e: $88
	adc  c                                           ; $510f: $89
	adc  c                                           ; $5110: $89
	add  a                                           ; $5111: $87
	adc  b                                           ; $5112: $88
	adc  b                                           ; $5113: $88
	ld   a, b                                        ; $5114: $78
	sbc  b                                           ; $5115: $98
	adc  b                                           ; $5116: $88
	adc  b                                           ; $5117: $88
	adc  b                                           ; $5118: $88
	add  a                                           ; $5119: $87
	ld   a, b                                        ; $511a: $78
	adc  b                                           ; $511b: $88
	adc  b                                           ; $511c: $88
	sbc  c                                           ; $511d: $99
	adc  b                                           ; $511e: $88
	add  a                                           ; $511f: $87
	add  a                                           ; $5120: $87
	ld   [hl], a                                     ; $5121: $77
	ld   a, b                                        ; $5122: $78
	adc  b                                           ; $5123: $88
	sbc  b                                           ; $5124: $98
	adc  c                                           ; $5125: $89
	adc  b                                           ; $5126: $88
	add  a                                           ; $5127: $87
	add  a                                           ; $5128: $87
	ld   a, b                                        ; $5129: $78
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
	add  c                                           ; $515a: $81
	ld   de, $1111                                   ; $515b: $11 $11 $11
	ld   de, $1111                                   ; $515e: $11 $11 $11
	ld   de, $1111                                   ; $5161: $11 $11 $11
	ld   de, $0011                                   ; $5164: $11 $11 $00
	ld   c, b                                        ; $5167: $48
	ld   de, $1111                                   ; $5168: $11 $11 $11
	ld   de, $1111                                   ; $516b: $11 $11 $11
	ld   de, $1111                                   ; $516e: $11 $11 $11
	ld   de, $5413                                   ; $5171: $11 $13 $54
	ld   d, h                                        ; $5174: $54
	ld   d, h                                        ; $5175: $54
	ld   b, c                                        ; $5176: $41
	rra                                              ; $5177: $1f
	rst  $38                                         ; $5178: $ff
	pop  af                                          ; $5179: $f1
	ld   de, $1a11                                   ; $517a: $11 $11 $1a
	ld   d, c                                        ; $517d: $51
	ld   de, $df1c                                   ; $517e: $11 $1c $df
	adc  h                                           ; $5181: $8c
	rst  JumpTable                                         ; $5182: $df
	add  c                                           ; $5183: $81
	ld   de, $1111                                   ; $5184: $11 $11 $11
	ld   de, $1111                                   ; $5187: $11 $11 $11
	ld   de, $1111                                   ; $518a: $11 $11 $11
	ld   de, $1111                                   ; $518d: $11 $11 $11
	ld   de, $5411                                   ; $5190: $11 $11 $54
	ld   b, h                                        ; $5193: $44
	ld   e, d                                        ; $5194: $5a
	ld   de, $5454                                   ; $5195: $11 $54 $54
	ld   h, a                                        ; $5198: $67
	ld   [hl], d                                     ; $5199: $72
	ld   de, $1111                                   ; $519a: $11 $11 $11
	ld   de, $1112                                   ; $519d: $11 $12 $11
	ld   [de], a                                     ; $51a0: $12
	ld   de, $1111                                   ; $51a1: $11 $11 $11
	ld   h, [hl]                                     ; $51a4: $66
	halt                                             ; $51a5: $76
	ld   a, [hl+]                                    ; $51a6: $2a
	ld   de, $8888                                   ; $51a7: $11 $88 $88
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
	adc  b                                           ; $51d7: $88
	adc  b                                           ; $51d8: $88
	sbc  b                                           ; $51d9: $98
	adc  b                                           ; $51da: $88
	adc  b                                           ; $51db: $88
	adc  b                                           ; $51dc: $88
	adc  b                                           ; $51dd: $88
	adc  b                                           ; $51de: $88
	adc  b                                           ; $51df: $88
	adc  b                                           ; $51e0: $88
	adc  b                                           ; $51e1: $88
	adc  b                                           ; $51e2: $88
	adc  c                                           ; $51e3: $89
	adc  b                                           ; $51e4: $88
	adc  b                                           ; $51e5: $88
	sbc  b                                           ; $51e6: $98
	adc  c                                           ; $51e7: $89
	adc  b                                           ; $51e8: $88
	adc  b                                           ; $51e9: $88
	adc  b                                           ; $51ea: $88
	sbc  b                                           ; $51eb: $98
	adc  c                                           ; $51ec: $89
	adc  b                                           ; $51ed: $88
	adc  b                                           ; $51ee: $88
	adc  b                                           ; $51ef: $88
	adc  b                                           ; $51f0: $88
	adc  b                                           ; $51f1: $88
	adc  c                                           ; $51f2: $89
	adc  b                                           ; $51f3: $88
	adc  b                                           ; $51f4: $88
	adc  b                                           ; $51f5: $88
	adc  b                                           ; $51f6: $88
	adc  b                                           ; $51f7: $88
	adc  b                                           ; $51f8: $88
	adc  b                                           ; $51f9: $88
	adc  b                                           ; $51fa: $88
	adc  c                                           ; $51fb: $89
	adc  b                                           ; $51fc: $88
	sbc  b                                           ; $51fd: $98
	adc  b                                           ; $51fe: $88
	sbc  b                                           ; $51ff: $98
	adc  b                                           ; $5200: $88
	ld   a, b                                        ; $5201: $78
	add  a                                           ; $5202: $87
	sbc  b                                           ; $5203: $98
	add  a                                           ; $5204: $87
	adc  b                                           ; $5205: $88
	adc  b                                           ; $5206: $88
	adc  c                                           ; $5207: $89
	adc  b                                           ; $5208: $88
	adc  b                                           ; $5209: $88
	adc  b                                           ; $520a: $88
	adc  b                                           ; $520b: $88
	adc  b                                           ; $520c: $88
	adc  b                                           ; $520d: $88
	adc  b                                           ; $520e: $88
	adc  c                                           ; $520f: $89
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
	sbc  b                                           ; $521c: $98
	adc  c                                           ; $521d: $89
	sub  a                                           ; $521e: $97
	sbc  c                                           ; $521f: $99
	ld   a, c                                        ; $5220: $79
	adc  b                                           ; $5221: $88
	adc  b                                           ; $5222: $88
	add  a                                           ; $5223: $87
	adc  b                                           ; $5224: $88
	adc  c                                           ; $5225: $89
	adc  b                                           ; $5226: $88
	adc  c                                           ; $5227: $89
	adc  b                                           ; $5228: $88
	sub  a                                           ; $5229: $97
	adc  b                                           ; $522a: $88
	adc  b                                           ; $522b: $88
	adc  b                                           ; $522c: $88
	adc  b                                           ; $522d: $88
	sub  a                                           ; $522e: $97
	adc  c                                           ; $522f: $89
	adc  b                                           ; $5230: $88
	adc  b                                           ; $5231: $88
	ld   a, c                                        ; $5232: $79
	add  a                                           ; $5233: $87
	sbc  b                                           ; $5234: $98
	adc  b                                           ; $5235: $88
	adc  b                                           ; $5236: $88
	sbc  b                                           ; $5237: $98
	ld   a, b                                        ; $5238: $78
	adc  b                                           ; $5239: $88
	adc  b                                           ; $523a: $88
	adc  c                                           ; $523b: $89
	sub  a                                           ; $523c: $97
	adc  b                                           ; $523d: $88
	adc  b                                           ; $523e: $88
	adc  b                                           ; $523f: $88
	adc  b                                           ; $5240: $88
	adc  b                                           ; $5241: $88
	sbc  b                                           ; $5242: $98
	ld   a, b                                        ; $5243: $78
	add  a                                           ; $5244: $87
	sbc  b                                           ; $5245: $98
	adc  c                                           ; $5246: $89
	add  a                                           ; $5247: $87
	adc  c                                           ; $5248: $89
	ld   a, b                                        ; $5249: $78
	add  a                                           ; $524a: $87
	sbc  b                                           ; $524b: $98
	ld   a, c                                        ; $524c: $79
	adc  b                                           ; $524d: $88
	adc  c                                           ; $524e: $89
	ld   a, b                                        ; $524f: $78
	add  a                                           ; $5250: $87
	adc  b                                           ; $5251: $88
	adc  b                                           ; $5252: $88
	adc  b                                           ; $5253: $88
	ld   a, b                                        ; $5254: $78
	ld   a, b                                        ; $5255: $78
	add  a                                           ; $5256: $87
	sbc  b                                           ; $5257: $98
	adc  b                                           ; $5258: $88
	ld   a, b                                        ; $5259: $78
	ld   a, b                                        ; $525a: $78
	sub  a                                           ; $525b: $97
	sbc  c                                           ; $525c: $99
	ld   a, b                                        ; $525d: $78
	add  a                                           ; $525e: $87
	sbc  b                                           ; $525f: $98
	adc  b                                           ; $5260: $88
	adc  b                                           ; $5261: $88
	adc  b                                           ; $5262: $88
	adc  b                                           ; $5263: $88
	adc  b                                           ; $5264: $88
	adc  b                                           ; $5265: $88
	adc  b                                           ; $5266: $88
	adc  c                                           ; $5267: $89
	ld   a, b                                        ; $5268: $78
	adc  b                                           ; $5269: $88
	adc  b                                           ; $526a: $88
	adc  b                                           ; $526b: $88
	adc  b                                           ; $526c: $88
	add  a                                           ; $526d: $87
	sub  a                                           ; $526e: $97
	adc  b                                           ; $526f: $88
	adc  c                                           ; $5270: $89
	ld   a, c                                        ; $5271: $79
	ld   a, b                                        ; $5272: $78
	add  a                                           ; $5273: $87
	add  a                                           ; $5274: $87
	sub  a                                           ; $5275: $97
	adc  c                                           ; $5276: $89
	ld   a, c                                        ; $5277: $79
	ld   a, c                                        ; $5278: $79
	ld   a, c                                        ; $5279: $79
	add  a                                           ; $527a: $87
	sub  [hl]                                        ; $527b: $96
	sub  a                                           ; $527c: $97
	add  a                                           ; $527d: $87
	adc  c                                           ; $527e: $89
	ld   l, c                                        ; $527f: $69
	ld   a, b                                        ; $5280: $78
	ld   a, c                                        ; $5281: $79
	sub  a                                           ; $5282: $97
	sbc  b                                           ; $5283: $98
	adc  b                                           ; $5284: $88
	adc  b                                           ; $5285: $88
	adc  b                                           ; $5286: $88
	adc  b                                           ; $5287: $88
	adc  c                                           ; $5288: $89
	adc  b                                           ; $5289: $88
	sub  a                                           ; $528a: $97
	sub  a                                           ; $528b: $97
	adc  b                                           ; $528c: $88
	ld   a, b                                        ; $528d: $78
	adc  b                                           ; $528e: $88
	ld   a, b                                        ; $528f: $78
	add  a                                           ; $5290: $87
	add  a                                           ; $5291: $87
	adc  c                                           ; $5292: $89
	add  a                                           ; $5293: $87
	sbc  b                                           ; $5294: $98
	adc  c                                           ; $5295: $89
	ld   a, b                                        ; $5296: $78

Jump_0b6_5297:
	adc  b                                           ; $5297: $88
	adc  b                                           ; $5298: $88
	sub  a                                           ; $5299: $97
	adc  b                                           ; $529a: $88
	ld   a, b                                        ; $529b: $78
	adc  b                                           ; $529c: $88
	sub  a                                           ; $529d: $97
	sbc  b                                           ; $529e: $98
	adc  b                                           ; $529f: $88
	adc  b                                           ; $52a0: $88
	ld   a, b                                        ; $52a1: $78
	adc  b                                           ; $52a2: $88
	sub  a                                           ; $52a3: $97
	add  a                                           ; $52a4: $87
	adc  c                                           ; $52a5: $89
	ld   a, b                                        ; $52a6: $78
	ld   a, b                                        ; $52a7: $78
	adc  b                                           ; $52a8: $88
	add  a                                           ; $52a9: $87
	sub  a                                           ; $52aa: $97
	adc  b                                           ; $52ab: $88
	adc  c                                           ; $52ac: $89
	ld   a, c                                        ; $52ad: $79
	ld   a, c                                        ; $52ae: $79
	adc  b                                           ; $52af: $88
	sub  a                                           ; $52b0: $97
	sub  a                                           ; $52b1: $97
	add  a                                           ; $52b2: $87
	adc  c                                           ; $52b3: $89
	ld   a, c                                        ; $52b4: $79
	ld   a, c                                        ; $52b5: $79
	add  a                                           ; $52b6: $87
	sub  a                                           ; $52b7: $97
	add  a                                           ; $52b8: $87
	add  a                                           ; $52b9: $87
	sbc  b                                           ; $52ba: $98
	ld   a, c                                        ; $52bb: $79
	ld   a, b                                        ; $52bc: $78
	ld   a, c                                        ; $52bd: $79
	adc  b                                           ; $52be: $88
	adc  b                                           ; $52bf: $88
	adc  b                                           ; $52c0: $88
	sub  a                                           ; $52c1: $97
	adc  c                                           ; $52c2: $89
	ld   a, b                                        ; $52c3: $78
	adc  b                                           ; $52c4: $88
	ld   a, c                                        ; $52c5: $79
	sbc  b                                           ; $52c6: $98
	adc  b                                           ; $52c7: $88
	sub  a                                           ; $52c8: $97
	add  a                                           ; $52c9: $87
	sbc  b                                           ; $52ca: $98
	adc  c                                           ; $52cb: $89
	adc  b                                           ; $52cc: $88
	ld   a, c                                        ; $52cd: $79
	sbc  b                                           ; $52ce: $98
	adc  b                                           ; $52cf: $88
	add  a                                           ; $52d0: $87
	sub  a                                           ; $52d1: $97
	sbc  b                                           ; $52d2: $98
	ld   a, c                                        ; $52d3: $79
	adc  b                                           ; $52d4: $88
	ld   a, b                                        ; $52d5: $78
	ld   a, b                                        ; $52d6: $78
	sub  a                                           ; $52d7: $97
	adc  b                                           ; $52d8: $88
	adc  b                                           ; $52d9: $88
	adc  b                                           ; $52da: $88
	ld   a, c                                        ; $52db: $79
	adc  b                                           ; $52dc: $88
	adc  b                                           ; $52dd: $88
	adc  b                                           ; $52de: $88
	adc  b                                           ; $52df: $88
	adc  b                                           ; $52e0: $88
	adc  b                                           ; $52e1: $88
	adc  b                                           ; $52e2: $88
	adc  b                                           ; $52e3: $88
	adc  b                                           ; $52e4: $88
	ld   a, b                                        ; $52e5: $78
	adc  b                                           ; $52e6: $88
	adc  b                                           ; $52e7: $88
	adc  b                                           ; $52e8: $88
	adc  b                                           ; $52e9: $88
	adc  b                                           ; $52ea: $88
	adc  c                                           ; $52eb: $89
	add  a                                           ; $52ec: $87
	adc  b                                           ; $52ed: $88
	adc  b                                           ; $52ee: $88
	ld   a, c                                        ; $52ef: $79
	ld   a, b                                        ; $52f0: $78
	add  a                                           ; $52f1: $87
	add  a                                           ; $52f2: $87
	sbc  b                                           ; $52f3: $98
	adc  b                                           ; $52f4: $88
	ld   a, b                                        ; $52f5: $78
	adc  c                                           ; $52f6: $89
	ld   a, c                                        ; $52f7: $79
	sub  a                                           ; $52f8: $97
	sub  a                                           ; $52f9: $97
	sbc  b                                           ; $52fa: $98
	ld   a, c                                        ; $52fb: $79
	ld   a, b                                        ; $52fc: $78
	adc  b                                           ; $52fd: $88
	sub  a                                           ; $52fe: $97
	adc  c                                           ; $52ff: $89
	ld   a, c                                        ; $5300: $79
	adc  c                                           ; $5301: $89
	add  a                                           ; $5302: $87
	add  a                                           ; $5303: $87
	sbc  b                                           ; $5304: $98
	ld   a, c                                        ; $5305: $79
	ld   a, c                                        ; $5306: $79
	adc  b                                           ; $5307: $88
	add  a                                           ; $5308: $87
	sbc  c                                           ; $5309: $99
	add  a                                           ; $530a: $87
	sub  a                                           ; $530b: $97
	sub  a                                           ; $530c: $97
	adc  c                                           ; $530d: $89
	ld   l, d                                        ; $530e: $6a
	ld   a, c                                        ; $530f: $79
	adc  b                                           ; $5310: $88
	adc  b                                           ; $5311: $88
	sub  a                                           ; $5312: $97
	sub  [hl]                                        ; $5313: $96
	sub  a                                           ; $5314: $97
	ld   a, c                                        ; $5315: $79
	ld   a, c                                        ; $5316: $79
	ld   a, b                                        ; $5317: $78
	adc  b                                           ; $5318: $88
	ld   [hl], a                                     ; $5319: $77
	add  a                                           ; $531a: $87
	adc  b                                           ; $531b: $88
	sub  a                                           ; $531c: $97
	adc  b                                           ; $531d: $88
	ld   a, c                                        ; $531e: $79
	adc  b                                           ; $531f: $88
	adc  b                                           ; $5320: $88
	sub  a                                           ; $5321: $97
	add  a                                           ; $5322: $87
	adc  b                                           ; $5323: $88
	add  a                                           ; $5324: $87
	adc  c                                           ; $5325: $89
	ld   l, c                                        ; $5326: $69
	ld   a, b                                        ; $5327: $78
	sub  a                                           ; $5328: $97
	adc  c                                           ; $5329: $89
	add  a                                           ; $532a: $87
	sub  a                                           ; $532b: $97
	adc  b                                           ; $532c: $88
	adc  b                                           ; $532d: $88
	adc  b                                           ; $532e: $88
	ld   a, c                                        ; $532f: $79
	ld   [hl], a                                     ; $5330: $77
	add  a                                           ; $5331: $87
	sub  a                                           ; $5332: $97
	add  a                                           ; $5333: $87
	adc  c                                           ; $5334: $89
	ld   a, c                                        ; $5335: $79
	ld   l, c                                        ; $5336: $69
	ld   [hl], a                                     ; $5337: $77
	sub  [hl]                                        ; $5338: $96
	and  a                                           ; $5339: $a7
	adc  c                                           ; $533a: $89
	ld   a, d                                        ; $533b: $7a
	ld   a, b                                        ; $533c: $78
	ld   a, b                                        ; $533d: $78
	ld   a, c                                        ; $533e: $79
	add  a                                           ; $533f: $87
	sub  [hl]                                        ; $5340: $96
	sub  a                                           ; $5341: $97
	adc  b                                           ; $5342: $88
	ld   a, c                                        ; $5343: $79
	adc  b                                           ; $5344: $88
	adc  b                                           ; $5345: $88
	ld   a, b                                        ; $5346: $78
	ld   a, c                                        ; $5347: $79
	sub  a                                           ; $5348: $97
	add  a                                           ; $5349: $87
	sub  [hl]                                        ; $534a: $96
	sbc  c                                           ; $534b: $99
	ld   a, c                                        ; $534c: $79
	ld   l, d                                        ; $534d: $6a
	ld   l, b                                        ; $534e: $68
	sub  [hl]                                        ; $534f: $96
	and  [hl]                                        ; $5350: $a6
	sub  [hl]                                        ; $5351: $96
	adc  b                                           ; $5352: $88
	ld   l, d                                        ; $5353: $6a
	ld   l, c                                        ; $5354: $69
	ld   a, c                                        ; $5355: $79
	ld   a, b                                        ; $5356: $78
	add  [hl]                                        ; $5357: $86
	sub  a                                           ; $5358: $97
	add  a                                           ; $5359: $87
	adc  b                                           ; $535a: $88
	ld   a, c                                        ; $535b: $79
	ld   l, c                                        ; $535c: $69
	sub  a                                           ; $535d: $97
	add  a                                           ; $535e: $87
	add  a                                           ; $535f: $87
	add  a                                           ; $5360: $87
	adc  b                                           ; $5361: $88
	adc  c                                           ; $5362: $89
	ld   a, c                                        ; $5363: $79
	ld   l, b                                        ; $5364: $68
	adc  b                                           ; $5365: $88
	add  a                                           ; $5366: $87
	sub  a                                           ; $5367: $97
	sub  a                                           ; $5368: $97
	adc  b                                           ; $5369: $88
	adc  b                                           ; $536a: $88
	adc  b                                           ; $536b: $88
	ld   l, c                                        ; $536c: $69
	ld   l, c                                        ; $536d: $69
	add  a                                           ; $536e: $87
	and  [hl]                                        ; $536f: $a6
	sub  a                                           ; $5370: $97
	adc  b                                           ; $5371: $88
	ld   a, b                                        ; $5372: $78
	ld   l, d                                        ; $5373: $6a
	ld   [hl], a                                     ; $5374: $77
	and  [hl]                                        ; $5375: $a6
	sbc  c                                           ; $5376: $99
	ld   a, b                                        ; $5377: $78
	sbc  b                                           ; $5378: $98
	add  a                                           ; $5379: $87
	sbc  b                                           ; $537a: $98
	ld   l, e                                        ; $537b: $6b
	ld   l, c                                        ; $537c: $69
	sub  [hl]                                        ; $537d: $96
	and  [hl]                                        ; $537e: $a6
	sub  [hl]                                        ; $537f: $96
	adc  c                                           ; $5380: $89
	ld   l, d                                        ; $5381: $6a
	ld   a, b                                        ; $5382: $78
	adc  b                                           ; $5383: $88
	ld   a, b                                        ; $5384: $78
	sub  [hl]                                        ; $5385: $96
	sbc  b                                           ; $5386: $98

Jump_0b6_5387:
	adc  b                                           ; $5387: $88
	ld   a, c                                        ; $5388: $79
	ld   l, c                                        ; $5389: $69
	add  a                                           ; $538a: $87
	sub  a                                           ; $538b: $97
	sub  a                                           ; $538c: $97
	adc  b                                           ; $538d: $88
	sub  a                                           ; $538e: $97
	sbc  b                                           ; $538f: $98
	ld   l, d                                        ; $5390: $6a
	ld   l, c                                        ; $5391: $69
	add  a                                           ; $5392: $87
	and  l                                           ; $5393: $a5
	or   [hl]                                        ; $5394: $b6
	ld   a, d                                        ; $5395: $7a
	ld   l, c                                        ; $5396: $69
	ld   a, c                                        ; $5397: $79
	add  a                                           ; $5398: $87
	add  a                                           ; $5399: $87
	sub  a                                           ; $539a: $97
	sub  a                                           ; $539b: $97
	sbc  c                                           ; $539c: $99
	ld   l, d                                        ; $539d: $6a
	ld   a, b                                        ; $539e: $78
	halt                                             ; $539f: $76
	and  [hl]                                        ; $53a0: $a6
	sbc  c                                           ; $53a1: $99
	ld   l, c                                        ; $53a2: $69
	ld   a, c                                        ; $53a3: $79
	ld   a, b                                        ; $53a4: $78
	sub  a                                           ; $53a5: $97
	and  [hl]                                        ; $53a6: $a6
	sub  a                                           ; $53a7: $97
	sbc  b                                           ; $53a8: $98
	adc  c                                           ; $53a9: $89
	ld   a, c                                        ; $53aa: $79
	ld   a, b                                        ; $53ab: $78
	adc  c                                           ; $53ac: $89
	ld   a, b                                        ; $53ad: $78
	sub  [hl]                                        ; $53ae: $96
	sub  a                                           ; $53af: $97
	ld   a, c                                        ; $53b0: $79
	adc  b                                           ; $53b1: $88
	ld   a, b                                        ; $53b2: $78
	ld   a, b                                        ; $53b3: $78
	adc  b                                           ; $53b4: $88
	add  a                                           ; $53b5: $87
	add  a                                           ; $53b6: $87
	adc  b                                           ; $53b7: $88
	sbc  b                                           ; $53b8: $98
	adc  b                                           ; $53b9: $88
	ld   a, c                                        ; $53ba: $79
	ld   l, d                                        ; $53bb: $6a
	ld   a, c                                        ; $53bc: $79
	sub  a                                           ; $53bd: $97
	sub  [hl]                                        ; $53be: $96
	sub  [hl]                                        ; $53bf: $96
	sbc  b                                           ; $53c0: $98
	adc  b                                           ; $53c1: $88
	ld   a, c                                        ; $53c2: $79
	ld   l, c                                        ; $53c3: $69
	add  a                                           ; $53c4: $87
	adc  c                                           ; $53c5: $89
	add  a                                           ; $53c6: $87
	sbc  b                                           ; $53c7: $98
	ld   a, c                                        ; $53c8: $79
	adc  b                                           ; $53c9: $88
	sub  a                                           ; $53ca: $97
	add  a                                           ; $53cb: $87
	sub  a                                           ; $53cc: $97
	adc  c                                           ; $53cd: $89
	ld   l, b                                        ; $53ce: $68
	sub  a                                           ; $53cf: $97
	sbc  c                                           ; $53d0: $99
	sub  a                                           ; $53d1: $97
	ld   a, d                                        ; $53d2: $7a
	ld   [hl], a                                     ; $53d3: $77
	and  a                                           ; $53d4: $a7
	adc  c                                           ; $53d5: $89
	add  a                                           ; $53d6: $87
	adc  c                                           ; $53d7: $89
	add  a                                           ; $53d8: $87
	sbc  b                                           ; $53d9: $98
	ld   a, b                                        ; $53da: $78
	adc  b                                           ; $53db: $88
	adc  c                                           ; $53dc: $89
	ld   a, c                                        ; $53dd: $79
	add  a                                           ; $53de: $87
	sbc  b                                           ; $53df: $98
	adc  b                                           ; $53e0: $88
	ld   a, c                                        ; $53e1: $79
	adc  b                                           ; $53e2: $88
	add  a                                           ; $53e3: $87
	and  a                                           ; $53e4: $a7
	adc  b                                           ; $53e5: $88
	ld   a, b                                        ; $53e6: $78
	adc  b                                           ; $53e7: $88
	sub  a                                           ; $53e8: $97
	sbc  c                                           ; $53e9: $99
	ld   a, d                                        ; $53ea: $7a
	ld   l, d                                        ; $53eb: $6a
	ld   a, b                                        ; $53ec: $78
	adc  b                                           ; $53ed: $88
	sub  a                                           ; $53ee: $97
	and  [hl]                                        ; $53ef: $a6
	and  a                                           ; $53f0: $a7
	ld   a, b                                        ; $53f1: $78
	adc  c                                           ; $53f2: $89
	ld   l, c                                        ; $53f3: $69
	ld   l, c                                        ; $53f4: $69
	add  a                                           ; $53f5: $87
	sub  a                                           ; $53f6: $97
	add  a                                           ; $53f7: $87
	sbc  c                                           ; $53f8: $99
	ld   a, c                                        ; $53f9: $79
	sub  a                                           ; $53fa: $97
	sub  a                                           ; $53fb: $97
	adc  b                                           ; $53fc: $88
	sbc  c                                           ; $53fd: $99
	adc  c                                           ; $53fe: $89
	ld   a, c                                        ; $53ff: $79
	ld   l, c                                        ; $5400: $69
	add  a                                           ; $5401: $87
	sub  a                                           ; $5402: $97
	and  a                                           ; $5403: $a7
	xor  b                                           ; $5404: $a8
	ld   a, b                                        ; $5405: $78
	ld   l, c                                        ; $5406: $69
	ld   a, c                                        ; $5407: $79
	ld   a, b                                        ; $5408: $78
	and  [hl]                                        ; $5409: $a6
	sbc  b                                           ; $540a: $98
	ld   a, b                                        ; $540b: $78
	ld   a, c                                        ; $540c: $79
	ld   a, c                                        ; $540d: $79
	adc  b                                           ; $540e: $88
	add  a                                           ; $540f: $87
	add  [hl]                                        ; $5410: $86
	sub  [hl]                                        ; $5411: $96
	adc  c                                           ; $5412: $89
	ld   l, d                                        ; $5413: $6a
	ld   l, c                                        ; $5414: $69
	ld   [hl], a                                     ; $5415: $77
	sub  a                                           ; $5416: $97
	adc  b                                           ; $5417: $88
	adc  b                                           ; $5418: $88
	add  a                                           ; $5419: $87
	add  a                                           ; $541a: $87
	adc  b                                           ; $541b: $88
	ld   a, c                                        ; $541c: $79
	ld   a, c                                        ; $541d: $79
	ld   a, b                                        ; $541e: $78
	ld   a, b                                        ; $541f: $78
	sub  [hl]                                        ; $5420: $96
	xor  b                                           ; $5421: $a8
	ld   a, b                                        ; $5422: $78
	ld   [hl], a                                     ; $5423: $77
	and  [hl]                                        ; $5424: $a6
	sbc  b                                           ; $5425: $98
	ld   l, c                                        ; $5426: $69
	ld   a, c                                        ; $5427: $79
	ld   a, c                                        ; $5428: $79
	sub  [hl]                                        ; $5429: $96
	sub  [hl]                                        ; $542a: $96
	adc  b                                           ; $542b: $88
	adc  c                                           ; $542c: $89
	ld   l, c                                        ; $542d: $69
	ld   l, c                                        ; $542e: $69
	sub  l                                           ; $542f: $95
	or   a                                           ; $5430: $b7
	sub  [hl]                                        ; $5431: $96
	adc  c                                           ; $5432: $89
	ld   a, b                                        ; $5433: $78
	ld   l, d                                        ; $5434: $6a
	ld   l, b                                        ; $5435: $68
	sub  a                                           ; $5436: $97
	adc  b                                           ; $5437: $88
	add  a                                           ; $5438: $87
	sbc  b                                           ; $5439: $98
	adc  b                                           ; $543a: $88
	adc  c                                           ; $543b: $89
	ld   a, b                                        ; $543c: $78
	add  a                                           ; $543d: $87
	add  a                                           ; $543e: $87
	adc  b                                           ; $543f: $88
	sub  [hl]                                        ; $5440: $96
	sbc  c                                           ; $5441: $99
	ld   a, b                                        ; $5442: $78
	ld   a, c                                        ; $5443: $79
	add  a                                           ; $5444: $87
	sbc  b                                           ; $5445: $98
	add  a                                           ; $5446: $87
	add  a                                           ; $5447: $87
	adc  c                                           ; $5448: $89
	ld   a, b                                        ; $5449: $78
	adc  b                                           ; $544a: $88
	add  a                                           ; $544b: $87
	adc  c                                           ; $544c: $89
	ld   a, b                                        ; $544d: $78
	add  [hl]                                        ; $544e: $86
	adc  b                                           ; $544f: $88
	adc  b                                           ; $5450: $88
	sbc  c                                           ; $5451: $99
	ld   a, b                                        ; $5452: $78
	adc  c                                           ; $5453: $89
	adc  b                                           ; $5454: $88
	ld   [hl], a                                     ; $5455: $77
	sub  a                                           ; $5456: $97
	ld   a, c                                        ; $5457: $79
	xor  b                                           ; $5458: $a8
	ld   a, c                                        ; $5459: $79
	ld   [hl], a                                     ; $545a: $77
	add  a                                           ; $545b: $87
	adc  c                                           ; $545c: $89
	sub  a                                           ; $545d: $97
	ld   a, c                                        ; $545e: $79
	ld   l, b                                        ; $545f: $68
	adc  b                                           ; $5460: $88
	sbc  c                                           ; $5461: $99
	sub  a                                           ; $5462: $97
	add  a                                           ; $5463: $87
	ld   a, b                                        ; $5464: $78
	ld   a, d                                        ; $5465: $7a
	adc  b                                           ; $5466: $88
	rst  ToBoot                                         ; $5467: $c7
	add  a                                           ; $5468: $87
	add  a                                           ; $5469: $87
	ld   l, c                                        ; $546a: $69
	ld   l, d                                        ; $546b: $6a
	ld   h, a                                        ; $546c: $67
	ld   h, [hl]                                     ; $546d: $66
	add  $9a                                         ; $546e: $c6 $9a
	sub  a                                           ; $5470: $97
	sbc  b                                           ; $5471: $98
	ld   a, d                                        ; $5472: $7a
	ld   l, b                                        ; $5473: $68
	adc  c                                           ; $5474: $89
	add  a                                           ; $5475: $87
	sub  a                                           ; $5476: $97
	sub  [hl]                                        ; $5477: $96
	and  a                                           ; $5478: $a7
	sbc  d                                           ; $5479: $9a
	ld   e, d                                        ; $547a: $5a
	ld   e, c                                        ; $547b: $59
	ld   [hl], a                                     ; $547c: $77
	sub  l                                           ; $547d: $95
	sub  [hl]                                        ; $547e: $96
	sbc  b                                           ; $547f: $98
	ld   a, c                                        ; $5480: $79
	ld   l, d                                        ; $5481: $6a
	adc  c                                           ; $5482: $89
	sub  a                                           ; $5483: $97
	rst  ToBoot                                         ; $5484: $c7
	adc  c                                           ; $5485: $89
	ld   l, d                                        ; $5486: $6a
	ld   a, b                                        ; $5487: $78
	adc  b                                           ; $5488: $88
	add  l                                           ; $5489: $85
	add  a                                           ; $548a: $87
	ld   h, [hl]                                     ; $548b: $66
	ld   [hl], a                                     ; $548c: $77
	add  hl, sp                                      ; $548d: $39
	ld   [hl], h                                     ; $548e: $74
	ld   l, d                                        ; $548f: $6a
	add  [hl]                                        ; $5490: $86
	rst  ToBoot                                         ; $5491: $c7
	xor  h                                           ; $5492: $ac
	cp   e                                           ; $5493: $bb
	sbc  a                                           ; $5494: $9f
	xor  c                                           ; $5495: $a9
	cp   b                                           ; $5496: $b8
	ld   [hl], h                                     ; $5497: $74
	ld   [hl], c                                     ; $5498: $71
	rla                                              ; $5499: $17
	ld   de, $1114                                   ; $549a: $11 $14 $11
	ld   h, a                                        ; $549d: $67
	xor  l                                           ; $549e: $ad
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $549f: $cf
	rst  $38                                         ; $54a0: $ff
	rst  $38                                         ; $54a1: $ff
	rst  $38                                         ; $54a2: $ff
	ld   [$52a9], a                                  ; $54a3: $ea $a9 $52
	ld   [de], a                                     ; $54a6: $12
	sub  c                                           ; $54a7: $91
	ld   de, $1321                                   ; $54a8: $11 $21 $13
	sbc  d                                           ; $54ab: $9a
	cp   $df                                         ; $54ac: $fe $df
	rst  $38                                         ; $54ae: $ff
	rst  $38                                         ; $54af: $ff
	rst  $38                                         ; $54b0: $ff
	rst  ToBoot                                         ; $54b1: $c7
	ld   d, [hl]                                     ; $54b2: $56
	ld   de, $4112                                   ; $54b3: $11 $12 $41
	ld   de, $1511                                   ; $54b6: $11 $11 $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54b9: $cf
	rst  $38                                         ; $54ba: $ff
	rst  $38                                         ; $54bb: $ff
	rst  $38                                         ; $54bc: $ff
	rst  $38                                         ; $54bd: $ff
	db   $fd                                         ; $54be: $fd
	ld   h, c                                        ; $54bf: $61
	ld   de, $1111                                   ; $54c0: $11 $11 $11
	ld   de, $2311                                   ; $54c3: $11 $11 $23
	cp   a                                           ; $54c6: $bf
	rst  $38                                         ; $54c7: $ff
	rst  $38                                         ; $54c8: $ff
	rst  $38                                         ; $54c9: $ff
	rst  $38                                         ; $54ca: $ff
	rst  $38                                         ; $54cb: $ff
	add  e                                           ; $54cc: $83
	ld   de, $1111                                   ; $54cd: $11 $11 $11
	ld   de, $2611                                   ; $54d0: $11 $11 $26
	rst  $38                                         ; $54d3: $ff
	rst  $38                                         ; $54d4: $ff
	rst  $38                                         ; $54d5: $ff
	rst  $38                                         ; $54d6: $ff
	rst  $38                                         ; $54d7: $ff
	cp   $21                                         ; $54d8: $fe $21
	ld   de, $1111                                   ; $54da: $11 $11 $11
	ld   de, $ed12                                   ; $54dd: $11 $12 $ed
	rst  $38                                         ; $54e0: $ff
	rst  $38                                         ; $54e1: $ff
	rst  $38                                         ; $54e2: $ff
	rst  $38                                         ; $54e3: $ff
	rst  $38                                         ; $54e4: $ff
	sub  d                                           ; $54e5: $92
	ld   de, $1111                                   ; $54e6: $11 $11 $11
	ld   de, $7f15                                   ; $54e9: $11 $15 $7f
	rst  $38                                         ; $54ec: $ff
	rst  $38                                         ; $54ed: $ff
	rst  $38                                         ; $54ee: $ff
	rst  $38                                         ; $54ef: $ff
	rst  $38                                         ; $54f0: $ff
	or   c                                           ; $54f1: $b1
	ld   de, $1111                                   ; $54f2: $11 $11 $11
	ld   de, $af11                                   ; $54f5: $11 $11 $af
	rst  $38                                         ; $54f8: $ff
	rst  $38                                         ; $54f9: $ff
	rst  $38                                         ; $54fa: $ff
	rst  $38                                         ; $54fb: $ff
	db   $fc                                         ; $54fc: $fc
	pop  bc                                          ; $54fd: $c1
	ld   de, $1111                                   ; $54fe: $11 $11 $11
	ld   de, $af11                                   ; $5501: $11 $11 $af
	rst  $38                                         ; $5504: $ff
	rst  $38                                         ; $5505: $ff
	rst  $38                                         ; $5506: $ff
	rst  $38                                         ; $5507: $ff
	ld   sp, hl                                      ; $5508: $f9
	inc  de                                          ; $5509: $13
	ld   de, $1111                                   ; $550a: $11 $11 $11
	ld   de, $bf71                                   ; $550d: $11 $71 $bf
	rst  $38                                         ; $5510: $ff
	rst  $38                                         ; $5511: $ff
	rst  $38                                         ; $5512: $ff
	rst  $38                                         ; $5513: $ff
	db   $ed                                         ; $5514: $ed
	ld   de, $1111                                   ; $5515: $11 $11 $11
	ld   de, $ce11                                   ; $5518: $11 $11 $ce
	rst  $28                                         ; $551b: $ef
	rst  $38                                         ; $551c: $ff
	rst  $38                                         ; $551d: $ff
	rst  $38                                         ; $551e: $ff
	rst  $38                                         ; $551f: $ff
	add  a                                           ; $5520: $87
	ld   de, $1111                                   ; $5521: $11 $11 $11
	ld   de, $4b11                                   ; $5524: $11 $11 $4b
	rst  $38                                         ; $5527: $ff
	rst  $28                                         ; $5528: $ef
	rst  $38                                         ; $5529: $ff
	rst  $38                                         ; $552a: $ff
	db   $fd                                         ; $552b: $fd
	ld   a, b                                        ; $552c: $78
	ld   h, c                                        ; $552d: $61
	ld   de, $6714                                   ; $552e: $11 $14 $67
	adc  b                                           ; $5531: $88
	ld   h, d                                        ; $5532: $62
	ld   sp, $c61a                                   ; $5533: $31 $1a $c6
	ld   h, l                                        ; $5536: $65
	sbc  l                                           ; $5537: $9d
	cp   a                                           ; $5538: $bf
	db   $eb                                         ; $5539: $eb
	cp   $ed                                         ; $553a: $fe $ed
	sbc  c                                           ; $553c: $99
	ld   l, d                                        ; $553d: $6a
	ld   hl, sp+$73                                  ; $553e: $f8 $73
	ld   de, $1211                                   ; $5540: $11 $11 $12
	or   a                                           ; $5543: $b7
	ld   l, h                                        ; $5544: $6c
	rst  $38                                         ; $5545: $ff
	rst  $38                                         ; $5546: $ff
	cp   $ff                                         ; $5547: $fe $ff
	sbc  b                                           ; $5549: $98
	ld   de, $cb12                                   ; $554a: $11 $12 $cb
	sbc  c                                           ; $554d: $99
	ld   de, $1111                                   ; $554e: $11 $11 $11
	ld   e, l                                        ; $5551: $5d
	ld   h, $e8                                      ; $5552: $26 $e8
	rst  JumpTable                                         ; $5554: $df
	rst  $38                                         ; $5555: $ff
	rst  $28                                         ; $5556: $ef
	ld   hl, sp-$39                                  ; $5557: $f8 $c7
	ld   b, l                                        ; $5559: $45
	ld   e, d                                        ; $555a: $5a
	sbc  b                                           ; $555b: $98
	ld   [hl], c                                     ; $555c: $71
	ld   de, $1b11                                   ; $555d: $11 $11 $1b
	add  $ff                                         ; $5560: $c6 $ff
	rst  $38                                         ; $5562: $ff
	rst  $38                                         ; $5563: $ff
	cp   $f8                                         ; $5564: $fe $f8
	ld   b, l                                        ; $5566: $45
	ld   de, wTitleScreenGirlHairAnimIdx                                   ; $5567: $11 $12 $cc
	cp   e                                           ; $556a: $bb
	ld   de, $3112                                   ; $556b: $11 $12 $31
	adc  e                                           ; $556e: $8b
	add  hl, de                                      ; $556f: $19
	db   $fd                                         ; $5570: $fd
	rst  $38                                         ; $5571: $ff
	rst  $38                                         ; $5572: $ff
	cp   a                                           ; $5573: $bf
	pop  de                                          ; $5574: $d1
	ld   h, c                                        ; $5575: $61
	inc  de                                          ; $5576: $13
	ld   c, a                                        ; $5577: $4f
	ld   [$11d1], a                                  ; $5578: $ea $d1 $11
	ld   de, $d216                                   ; $557b: $11 $16 $d2
	adc  a                                           ; $557e: $8f
	cp   a                                           ; $557f: $bf
	rst  $38                                         ; $5580: $ff
	ei                                               ; $5581: $fb
	db   $fc                                         ; $5582: $fc
	inc  d                                           ; $5583: $14
	ld   de, $ff27                                   ; $5584: $11 $27 $ff
	rst  $38                                         ; $5587: $ff
	ld   d, c                                        ; $5588: $51
	ld   de, $1711                                   ; $5589: $11 $11 $17
	ld   de, $dffd                                   ; $558c: $11 $fd $df
	rst  $38                                         ; $558f: $ff
	rst  $38                                         ; $5590: $ff
	db   $f4                                         ; $5591: $f4
	ld   b, [hl]                                     ; $5592: $46
	ld   de, $ff5a                                   ; $5593: $11 $5a $ff
	db   $fc                                         ; $5596: $fc

Jump_0b6_5597:
	ld   de, $1111                                   ; $5597: $11 $11 $11
	inc  de                                          ; $559a: $13
	jr   @-$02                                       ; $559b: $18 $fc

	rst  $38                                         ; $559d: $ff
	rst  $38                                         ; $559e: $ff
	rst  $38                                         ; $559f: $ff
	db   $e4                                         ; $55a0: $e4
	ld   [hl], c                                     ; $55a1: $71
	ld   de, $ff4e                                   ; $55a2: $11 $4e $ff
	db   $f4                                         ; $55a5: $f4
	ld   de, $1111                                   ; $55a6: $11 $11 $11
	ld   d, c                                        ; $55a9: $51
	dec  de                                          ; $55aa: $1b
	rst  $28                                         ; $55ab: $ef
	rst  $38                                         ; $55ac: $ff
	rst  $38                                         ; $55ad: $ff
	rst  JumpTable                                         ; $55ae: $df
	add  l                                           ; $55af: $85
	ld   d, c                                        ; $55b0: $51
	ld   de, $ff3f                                   ; $55b1: $11 $3f $ff
	pop  af                                          ; $55b4: $f1
	ld   de, $2511                                   ; $55b5: $11 $11 $25
	add  c                                           ; $55b8: $81
	add  hl, de                                      ; $55b9: $19
	rst  JumpTable                                         ; $55ba: $df
	rst  $38                                         ; $55bb: $ff
	rst  $38                                         ; $55bc: $ff
	xor  b                                           ; $55bd: $a8
	dec  d                                           ; $55be: $15
	ld   hl, $4f11                                   ; $55bf: $21 $11 $4f
	rst  $38                                         ; $55c2: $ff
	db   $f4                                         ; $55c3: $f4
	ld   de, $1811                                   ; $55c4: $11 $11 $18
	sub  c                                           ; $55c7: $91
	daa                                              ; $55c8: $27
	adc  a                                           ; $55c9: $8f
	rst  $38                                         ; $55ca: $ff
	rst  $38                                         ; $55cb: $ff
	or   h                                           ; $55cc: $b4
	inc  de                                          ; $55cd: $13
	ld   de, $6f11                                   ; $55ce: $11 $11 $6f
	rst  $38                                         ; $55d1: $ff
	push af                                          ; $55d2: $f5
	ld   de, $1811                                   ; $55d3: $11 $11 $18
	sub  d                                           ; $55d6: $92
	ld   a, c                                        ; $55d7: $79
	sbc  a                                           ; $55d8: $9f
	rst  $38                                         ; $55d9: $ff
	rst  $38                                         ; $55da: $ff
	ldh  a, [c]                                      ; $55db: $f2
	ld   de, $3411                                   ; $55dc: $11 $11 $34
	rst  JumpTable                                         ; $55df: $df
	rst  $38                                         ; $55e0: $ff
	or   e                                           ; $55e1: $b3
	ld   de, $1711                                   ; $55e2: $11 $11 $17
	ld   d, d                                        ; $55e5: $52
	cp   h                                           ; $55e6: $bc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55e7: $cf
	rst  $38                                         ; $55e8: $ff
	rst  $38                                         ; $55e9: $ff
	pop  de                                          ; $55ea: $d1
	ld   de, $3411                                   ; $55eb: $11 $11 $34
	rst  $38                                         ; $55ee: $ff
	rst  $38                                         ; $55ef: $ff
	or   c                                           ; $55f0: $b1
	ld   de, $1911                                   ; $55f1: $11 $11 $19
	ld   [hl-], a                                    ; $55f4: $32
	cp   c                                           ; $55f5: $b9
	rst  $28                                         ; $55f6: $ef
	rst  $38                                         ; $55f7: $ff
	rst  $38                                         ; $55f8: $ff
	or   c                                           ; $55f9: $b1
	ld   de, $3511                                   ; $55fa: $11 $11 $35
	rst  $38                                         ; $55fd: $ff
	rst  $38                                         ; $55fe: $ff
	pop  bc                                          ; $55ff: $c1
	ld   de, $1711                                   ; $5600: $11 $11 $17
	inc  hl                                          ; $5603: $23
	reti                                             ; $5604: $d9


	rst  JumpTable                                         ; $5605: $df
	rst  $38                                         ; $5606: $ff
	rst  $38                                         ; $5607: $ff
	and  c                                           ; $5608: $a1
	ld   de, $2511                                   ; $5609: $11 $11 $25
	rst  $38                                         ; $560c: $ff
	rst  $38                                         ; $560d: $ff
	pop  de                                          ; $560e: $d1
	ld   de, $1711                                   ; $560f: $11 $11 $17
	inc  d                                           ; $5612: $14
	reti                                             ; $5613: $d9


	rst  $28                                         ; $5614: $ef
	rst  $38                                         ; $5615: $ff
	rst  $38                                         ; $5616: $ff
	add  c                                           ; $5617: $81
	ld   de, $1611                                   ; $5618: $11 $11 $16
	rst  $38                                         ; $561b: $ff
	rst  $38                                         ; $561c: $ff
	pop  bc                                          ; $561d: $c1
	ld   de, $2611                                   ; $561e: $11 $11 $26
	ld   d, $d7                                      ; $5621: $16 $d7
	rst  $38                                         ; $5623: $ff
	rst  $38                                         ; $5624: $ff
	rst  $38                                         ; $5625: $ff
	add  c                                           ; $5626: $81
	ld   de, $1811                                   ; $5627: $11 $11 $18
	rst  $38                                         ; $562a: $ff
	rst  $38                                         ; $562b: $ff
	and  c                                           ; $562c: $a1
	ld   de, $2511                                   ; $562d: $11 $11 $25
	add  hl, de                                      ; $5630: $19
	and  $ff                                         ; $5631: $e6 $ff
	rst  $38                                         ; $5633: $ff
	rst  $38                                         ; $5634: $ff
	and  d                                           ; $5635: $a2
	ld   de, $1a11                                   ; $5636: $11 $11 $1a
	rst  $38                                         ; $5639: $ff
	rst  $38                                         ; $563a: $ff
	sub  c                                           ; $563b: $91
	ld   de, $3411                                   ; $563c: $11 $11 $34
	inc  l                                           ; $563f: $2c
	or   [hl]                                        ; $5640: $b6
	rst  $38                                         ; $5641: $ff
	rst  $38                                         ; $5642: $ff
	rst  $38                                         ; $5643: $ff
	jp   nz, $1111                                   ; $5644: $c2 $11 $11

	inc  e                                           ; $5647: $1c
	rst  $38                                         ; $5648: $ff
	rst  $38                                         ; $5649: $ff
	sub  c                                           ; $564a: $91
	ld   de, $1311                                   ; $564b: $11 $11 $13
	ld   c, d                                        ; $564e: $4a
	and  a                                           ; $564f: $a7
	rst  $38                                         ; $5650: $ff
	rst  $38                                         ; $5651: $ff
	rst  $38                                         ; $5652: $ff
	di                                               ; $5653: $f3
	ld   de, $1d11                                   ; $5654: $11 $11 $1d
	rst  $38                                         ; $5657: $ff
	rst  $38                                         ; $5658: $ff
	add  c                                           ; $5659: $81
	ld   de, $3511                                   ; $565a: $11 $11 $35
	ld   a, h                                        ; $565d: $7c
	xor  b                                           ; $565e: $a8
	rst  $38                                         ; $565f: $ff
	rst  $38                                         ; $5660: $ff
	rst  $38                                         ; $5661: $ff
	ldh  a, [c]                                      ; $5662: $f2
	ld   de, $1f11                                   ; $5663: $11 $11 $1f
	rst  $38                                         ; $5666: $ff
	rst  $38                                         ; $5667: $ff
	ld   d, c                                        ; $5668: $51
	ld   de, $6711                                   ; $5669: $11 $11 $67
	xor  [hl]                                        ; $566c: $ae
	adc  c                                           ; $566d: $89
	rst  $38                                         ; $566e: $ff
	rst  $38                                         ; $566f: $ff
	rst  $38                                         ; $5670: $ff
	pop  bc                                          ; $5671: $c1
	ld   de, $2f11                                   ; $5672: $11 $11 $2f
	rst  $38                                         ; $5675: $ff
	cp   $51                                         ; $5676: $fe $51
	ld   de, $6611                                   ; $5678: $11 $11 $66
	adc  $9d                                         ; $567b: $ce $9d
	cp   $ff                                         ; $567d: $fe $ff
	rst  $38                                         ; $567f: $ff
	or   d                                           ; $5680: $b2
	ld   de, $4f11                                   ; $5681: $11 $11 $4f
	rst  $38                                         ; $5684: $ff
	cp   $61                                         ; $5685: $fe $61
	ld   de, $6811                                   ; $5687: $11 $11 $68
	cp   $9c                                         ; $568a: $fe $9c
	xor  $ff                                         ; $568c: $ee $ff
	rst  $38                                         ; $568e: $ff
	or   d                                           ; $568f: $b2
	ld   de, $5f11                                   ; $5690: $11 $11 $5f
	rst  $38                                         ; $5693: $ff
	db   $fd                                         ; $5694: $fd
	ld   sp, $1311                                   ; $5695: $31 $11 $13
	sbc  e                                           ; $5698: $9b
	cp   $8c                                         ; $5699: $fe $8c
	xor  h                                           ; $569b: $ac
	rst  $38                                         ; $569c: $ff
	rst  $38                                         ; $569d: $ff
	or   d                                           ; $569e: $b2
	ld   de, $9f11                                   ; $569f: $11 $11 $9f
	rst  $38                                         ; $56a2: $ff
	ld   sp, hl                                      ; $56a3: $f9
	ld   de, $1911                                   ; $56a4: $11 $11 $19
	cp   a                                           ; $56a7: $bf
	ei                                               ; $56a8: $fb
	sbc  h                                           ; $56a9: $9c
	ld   l, a                                        ; $56aa: $6f
	rst  $38                                         ; $56ab: $ff
	rst  $38                                         ; $56ac: $ff
	add  c                                           ; $56ad: $81
	ld   de, $ef11                                   ; $56ae: $11 $11 $ef
	rst  $38                                         ; $56b1: $ff
	push af                                          ; $56b2: $f5
	ld   de, $2c11                                   ; $56b3: $11 $11 $2c
	rst  $38                                         ; $56b6: $ff
	ld   sp, hl                                      ; $56b7: $f9
	add  $7f                                         ; $56b8: $c6 $7f
	rst  $38                                         ; $56ba: $ff
	db   $fc                                         ; $56bb: $fc
	ld   h, c                                        ; $56bc: $61
	ld   de, $ff18                                   ; $56bd: $11 $18 $ff
	rst  $38                                         ; $56c0: $ff
	sub  c                                           ; $56c1: $91
	ld   de, $af11                                   ; $56c2: $11 $11 $af
	rst  $38                                         ; $56c5: $ff
	call c, $ef82                                    ; $56c6: $dc $82 $ef
	rst  $38                                         ; $56c9: $ff
	ld   sp, hl                                      ; $56ca: $f9
	ld   de, $2f11                                   ; $56cb: $11 $11 $2f
	rst  $38                                         ; $56ce: $ff
	db   $fc                                         ; $56cf: $fc
	ld   sp, $1511                                   ; $56d0: $31 $11 $15
	rst  $38                                         ; $56d3: $ff
	rst  $38                                         ; $56d4: $ff
	cp   e                                           ; $56d5: $bb
	jr   @+$01                                       ; $56d6: $18 $ff

	rst  $38                                         ; $56d8: $ff
	push bc                                          ; $56d9: $c5
	ld   de, $cf11                                   ; $56da: $11 $11 $cf
	rst  $38                                         ; $56dd: $ff
	push de                                          ; $56de: $d5
	ld   de, $3f11                                   ; $56df: $11 $11 $3f
	rst  $38                                         ; $56e2: $ff
	db   $fd                                         ; $56e3: $fd
	pop  bc                                          ; $56e4: $c1
	ld   c, [hl]                                     ; $56e5: $4e
	rst  $28                                         ; $56e6: $ef
	cp   $71                                         ; $56e7: $fe $71
	ld   de, $ff1c                                   ; $56e9: $11 $1c $ff
	db   $fd                                         ; $56ec: $fd
	ld   b, c                                        ; $56ed: $41
	ld   de, $ef12                                   ; $56ee: $11 $12 $ef
	rst  $38                                         ; $56f1: $ff
	db   $ec                                         ; $56f2: $ec
	inc  d                                           ; $56f3: $14
	call z, $e7ff                                    ; $56f4: $cc $ff $e7
	ld   de, $df11                                   ; $56f7: $11 $11 $df
	rst  $38                                         ; $56fa: $ff
	or   e                                           ; $56fb: $b3
	ld   de, $4f11                                   ; $56fc: $11 $11 $4f
	rst  $38                                         ; $56ff: $ff
	rst  $38                                         ; $5700: $ff
	or   c                                           ; $5701: $b1
	ld   l, e                                        ; $5702: $6b
	rst  JumpTable                                         ; $5703: $df
	db   $fd                                         ; $5704: $fd
	ld   d, c                                        ; $5705: $51
	ld   de, $ff3e                                   ; $5706: $11 $3e $ff
	ld   hl, sp+$11                                  ; $5709: $f8 $11
	ld   de, $ff19                                   ; $570b: $11 $19 $ff
	rst  $38                                         ; $570e: $ff
	or   $19                                         ; $570f: $f6 $19
	sbc  [hl]                                        ; $5711: $9e
	cp   $b3                                         ; $5712: $fe $b3
	ld   de, $ff19                                   ; $5714: $11 $19 $ff
	db   $fc                                         ; $5717: $fc
	ld   sp, $1211                                   ; $5718: $31 $11 $12
	rst  $28                                         ; $571b: $ef
	rst  $38                                         ; $571c: $ff
	db   $fd                                         ; $571d: $fd
	inc  de                                          ; $571e: $13
	sbc  c                                           ; $571f: $99
	rst  $38                                         ; $5720: $ff
	rst  $10                                         ; $5721: $d7
	ld   de, $df15                                   ; $5722: $11 $15 $df
	rst  $38                                         ; $5725: $ff
	ld   d, c                                        ; $5726: $51
	ld   de, $bf11                                   ; $5727: $11 $11 $bf
	rst  $38                                         ; $572a: $ff
	rst  $38                                         ; $572b: $ff
	ld   sp, $ef86                                   ; $572c: $31 $86 $ef
	jp   c, $1321                                    ; $572f: $da $21 $13

	rst  JumpTable                                         ; $5732: $df
	rst  $38                                         ; $5733: $ff
	ld   h, c                                        ; $5734: $61
	ld   de, $8f11                                   ; $5735: $11 $11 $8f
	rst  $38                                         ; $5738: $ff
	rst  $38                                         ; $5739: $ff
	ld   [hl], c                                     ; $573a: $71
	ld   [hl], l                                     ; $573b: $75
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $573c: $cf
	db   $ec                                         ; $573d: $ec
	ld   b, c                                        ; $573e: $41
	ld   de, $ffbd                                   ; $573f: $11 $bd $ff
	add  c                                           ; $5742: $81
	ld   de, $5f11                                   ; $5743: $11 $11 $5f
	rst  $38                                         ; $5746: $ff
	rst  $38                                         ; $5747: $ff
	ld   [hl], c                                     ; $5748: $71
	ld   b, h                                        ; $5749: $44
	cp   a                                           ; $574a: $bf
	db   $fd                                         ; $574b: $fd
	ld   h, d                                        ; $574c: $62
	ld   [de], a                                     ; $574d: $12
	xor  h                                           ; $574e: $ac
	rst  $38                                         ; $574f: $ff
	add  c                                           ; $5750: $81
	ld   de, $6f11                                   ; $5751: $11 $11 $6f
	rst  $38                                         ; $5754: $ff
	rst  $38                                         ; $5755: $ff
	ld   d, c                                        ; $5756: $51
	ld   b, c                                        ; $5757: $41
	cp   a                                           ; $5758: $bf
	cp   $52                                         ; $5759: $fe $52
	ld   de, $ffbc                                   ; $575b: $11 $bc $ff
	sub  d                                           ; $575e: $92
	ld   de, $5f11                                   ; $575f: $11 $11 $5f
	rst  $38                                         ; $5762: $ff
	rst  $38                                         ; $5763: $ff
	ld   sp, $cf42                                   ; $5764: $31 $42 $cf
	db   $fd                                         ; $5767: $fd
	ld   b, c                                        ; $5768: $41
	ld   de, $ff9c                                   ; $5769: $11 $9c $ff
	sub  c                                           ; $576c: $91
	ld   de, $7f11                                   ; $576d: $11 $11 $7f
	rst  $38                                         ; $5770: $ff
	rst  $38                                         ; $5771: $ff
	ld   de, rAUD1HIGH                                   ; $5772: $11 $14 $ff
	ei                                               ; $5775: $fb
	ld   h, c                                        ; $5776: $61
	inc  de                                          ; $5777: $13
	adc  h                                           ; $5778: $8c
	rst  $38                                         ; $5779: $ff
	ld   [hl], c                                     ; $577a: $71
	ld   de, $df11                                   ; $577b: $11 $11 $df
	rst  $38                                         ; $577e: $ff
	or   $11                                         ; $577f: $f6 $11
	ld   a, [de]                                     ; $5781: $1a
	rst  $38                                         ; $5782: $ff
	ld   sp, hl                                      ; $5783: $f9
	ld   d, c                                        ; $5784: $51
	inc  d                                           ; $5785: $14
	ld   e, a                                        ; $5786: $5f
	ei                                               ; $5787: $fb
	ld   b, c                                        ; $5788: $41
	ld   de, $ff16                                   ; $5789: $11 $16 $ff
	rst  $38                                         ; $578c: $ff
	pop  hl                                          ; $578d: $e1
	ld   de, $ff5f                                   ; $578e: $11 $5f $ff
	reti                                             ; $5791: $d9


	ld   de, $ef12                                   ; $5792: $11 $12 $ef
	rst  $30                                         ; $5795: $f7
	ld   de, $4f11                                   ; $5796: $11 $11 $4f
	rst  $38                                         ; $5799: $ff
	cp   $11                                         ; $579a: $fe $11
	inc  de                                          ; $579c: $13
	rst  $38                                         ; $579d: $ff
	rst  $38                                         ; $579e: $ff
	and  c                                           ; $579f: $a1
	ld   de, $ff1e                                   ; $57a0: $11 $1e $ff
	sub  c                                           ; $57a3: $91
	ld   de, rAUD1HIGH                                   ; $57a4: $11 $14 $ff
	rst  $38                                         ; $57a7: $ff
	and  c                                           ; $57a8: $a1
	ld   de, $ff3f                                   ; $57a9: $11 $3f $ff
	ld   hl, sp+$11                                  ; $57ac: $f8 $11
	ld   de, $f8ff                                   ; $57ae: $11 $ff $f8
	ld   de, $af11                                   ; $57b1: $11 $11 $af
	rst  $38                                         ; $57b4: $ff
	ldh  a, [c]                                      ; $57b5: $f2
	ld   de, $ff18                                   ; $57b6: $11 $18 $ff
	rst  $38                                         ; $57b9: $ff
	ld   d, c                                        ; $57ba: $51
	ld   de, $fd3f                                   ; $57bb: $11 $3f $fd
	ld   de, $1f11                                   ; $57be: $11 $11 $1f
	rst  $38                                         ; $57c1: $ff
	rst  $38                                         ; $57c2: $ff
	ld   de, rAUD1LEN                                   ; $57c3: $11 $11 $ff
	rst  $38                                         ; $57c6: $ff
	or   c                                           ; $57c7: $b1
	ld   de, $fd1f                                   ; $57c8: $11 $1f $fd
	ld   d, c                                        ; $57cb: $51
	ld   de, $ff1f                                   ; $57cc: $11 $1f $ff
	rst  $38                                         ; $57cf: $ff
	ld   de, $ef11                                   ; $57d0: $11 $11 $ef
	rst  $38                                         ; $57d3: $ff
	and  c                                           ; $57d4: $a1
	ld   de, $fc1d                                   ; $57d5: $11 $1d $fc
	ld   b, c                                        ; $57d8: $41
	ld   de, $ff1f                                   ; $57d9: $11 $1f $ff
	rst  $38                                         ; $57dc: $ff
	ld   de, rAUD1LEN                                   ; $57dd: $11 $11 $ff
	rst  $38                                         ; $57e0: $ff
	ld   h, c                                        ; $57e1: $61
	ld   de, $fa2f                                   ; $57e2: $11 $2f $fa
	ld   de, $4f11                                   ; $57e5: $11 $11 $4f
	rst  $38                                         ; $57e8: $ff
	push af                                          ; $57e9: $f5
	ld   de, $ff18                                   ; $57ea: $11 $18 $ff
	ei                                               ; $57ed: $fb
	ld   de, $8f11                                   ; $57ee: $11 $11 $8f
	db   $d3                                         ; $57f1: $d3
	ld   de, rAUD1LEN                                   ; $57f2: $11 $11 $ff
	rst  $38                                         ; $57f5: $ff
	pop  af                                          ; $57f6: $f1
	ld   de, $ff2f                                   ; $57f7: $11 $2f $ff
	ldh  [c], a                                      ; $57fa: $e2
	ld   de, rAUD1ENV                                   ; $57fb: $11 $12 $ff
	ld   sp, $1f11                                   ; $57fe: $31 $11 $1f
	rst  $38                                         ; $5801: $ff
	rst  $38                                         ; $5802: $ff
	ld   de, rAUD1LEN                                   ; $5803: $11 $11 $ff
	db   $fd                                         ; $5806: $fd
	ld   sp, $3f11                                   ; $5807: $31 $11 $3f
	ldh  a, [c]                                      ; $580a: $f2
	ld   de, rAUD1LEN                                   ; $580b: $11 $11 $ff
	rst  $38                                         ; $580e: $ff
	pop  af                                          ; $580f: $f1
	ld   de, $ff3f                                   ; $5810: $11 $3f $ff
	or   d                                           ; $5813: $b2
	ld   de, $ec24                                   ; $5814: $11 $24 $ec
	ld   de, $7f11                                   ; $5817: $11 $11 $7f
	rst  $38                                         ; $581a: $ff
	push af                                          ; $581b: $f5
	ld   de, $ff1a                                   ; $581c: $11 $1a $ff
	sub  $11                                         ; $581f: $d6 $11
	ld   d, $af                                      ; $5821: $16 $af
	ld   h, c                                        ; $5823: $61
	ld   de, $ff1f                                   ; $5824: $11 $1f $ff
	rst  $38                                         ; $5827: $ff
	ld   de, rAUD1HIGH                                   ; $5828: $11 $14 $ff
	rst  $30                                         ; $582b: $f7
	ld   hl, $9d16                                   ; $582c: $21 $16 $9d
	and  c                                           ; $582f: $a1
	ld   de, $ff1a                                   ; $5830: $11 $1a $ff
	rst  $38                                         ; $5833: $ff
	ld   b, c                                        ; $5834: $41
	dec  d                                           ; $5835: $15
	rst  $28                                         ; $5836: $ef
	rst  $30                                         ; $5837: $f7
	ld   de, wTitleScreenFrameCountForUpdatingMiddleBitTileMapAttr                                   ; $5838: $11 $13 $cc
	or   c                                           ; $583b: $b1
	ld   de, $ff19                                   ; $583c: $11 $19 $ff
	rst  $38                                         ; $583f: $ff
	sub  c                                           ; $5840: $91
	jr   @+$01                                       ; $5841: $18 $ff

	rst  $30                                         ; $5843: $f7
	ld   de, $dc13                                   ; $5844: $11 $13 $dc
	ld   [hl], c                                     ; $5847: $71
	ld   de, $ff1e                                   ; $5848: $11 $1e $ff
	rst  $38                                         ; $584b: $ff
	ld   b, c                                        ; $584c: $41
	dec  de                                          ; $584d: $1b
	rst  $38                                         ; $584e: $ff
	push af                                          ; $584f: $f5
	ld   de, $fe16                                   ; $5850: $11 $16 $fe
	ld   d, c                                        ; $5853: $51
	ld   de, $ff1f                                   ; $5854: $11 $1f $ff
	rst  $38                                         ; $5857: $ff
	ld   hl, $ff5e                                   ; $5858: $21 $5e $ff
	pop  bc                                          ; $585b: $c1
	ld   de, $c72b                                   ; $585c: $11 $2b $c7
	ld   de, $9f11                                   ; $585f: $11 $11 $9f
	rst  $38                                         ; $5862: $ff
	ei                                               ; $5863: $fb
	inc  sp                                          ; $5864: $33
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5865: $cf
	ld   a, [$1631]                                  ; $5866: $fa $31 $16
	sbc  l                                           ; $5869: $9d
	sub  c                                           ; $586a: $91
	ld   de, rAUD1LEN                                   ; $586b: $11 $11 $ff
	rst  $38                                         ; $586e: $ff
	db   $db                                         ; $586f: $db
	ld   a, l                                        ; $5870: $7d
	rst  $38                                         ; $5871: $ff
	and  c                                           ; $5872: $a1
	ld   de, $ba6b                                   ; $5873: $11 $6b $ba
	ld   de, $1e11                                   ; $5876: $11 $11 $1e
	rst  $38                                         ; $5879: $ff
	rst  $38                                         ; $587a: $ff
	cp   l                                           ; $587b: $bd
	rst  $28                                         ; $587c: $ef
	ei                                               ; $587d: $fb
	ld   de, $dd14                                   ; $587e: $11 $14 $dd
	add  c                                           ; $5881: $81
	ld   de, $8f11                                   ; $5882: $11 $11 $8f
	rst  $38                                         ; $5885: $ff
	rst  $38                                         ; $5886: $ff
	rst  $38                                         ; $5887: $ff
	rst  $38                                         ; $5888: $ff
	or   d                                           ; $5889: $b2
	ld   [de], a                                     ; $588a: $12
	inc  a                                           ; $588b: $3c
	and  [hl]                                        ; $588c: $a6
	ld   de, $1211                                   ; $588d: $11 $11 $12
	rst  $28                                         ; $5890: $ef
	rst  $38                                         ; $5891: $ff
	rst  $38                                         ; $5892: $ff
	rst  $38                                         ; $5893: $ff
	ld   [$4551], a                                  ; $5894: $ea $51 $45
	sbc  d                                           ; $5897: $9a
	ld   d, c                                        ; $5898: $51
	ld   de, $1a11                                   ; $5899: $11 $11 $1a
	rst  $38                                         ; $589c: $ff
	rst  $38                                         ; $589d: $ff
	rst  $38                                         ; $589e: $ff
	cp   $b6                                         ; $589f: $fe $b6
	dec  h                                           ; $58a1: $25
	ld   l, b                                        ; $58a2: $68
	and  l                                           ; $58a3: $a5
	ld   de, $1111                                   ; $58a4: $11 $11 $11
	ld   a, [hl]                                     ; $58a7: $7e
	rst  $38                                         ; $58a8: $ff
	rst  $38                                         ; $58a9: $ff
	rst  $38                                         ; $58aa: $ff
	db   $fc                                         ; $58ab: $fc
	sub  d                                           ; $58ac: $92
	ld   b, [hl]                                     ; $58ad: $46
	ld   a, e                                        ; $58ae: $7b
	ld   h, c                                        ; $58af: $61
	ld   de, $1611                                   ; $58b0: $11 $11 $16
	rst  JumpTable                                         ; $58b3: $df
	rst  $38                                         ; $58b4: $ff
	rst  $38                                         ; $58b5: $ff
	rst  $38                                         ; $58b6: $ff
	ld   [$7734], a                                  ; $58b7: $ea $34 $77
	sub  [hl]                                        ; $58ba: $96
	ld   de, $1111                                   ; $58bb: $11 $11 $11
	inc  a                                           ; $58be: $3c
	rst  $38                                         ; $58bf: $ff
	rst  $38                                         ; $58c0: $ff
	rst  $38                                         ; $58c1: $ff
	db   $fd                                         ; $58c2: $fd
	and  e                                           ; $58c3: $a3
	ld   b, a                                        ; $58c4: $47
	adc  d                                           ; $58c5: $8a
	ld   d, c                                        ; $58c6: $51
	ld   de, $1211                                   ; $58c7: $11 $11 $12
	xor  [hl]                                        ; $58ca: $ae
	rst  $38                                         ; $58cb: $ff
	rst  $38                                         ; $58cc: $ff
	rst  $38                                         ; $58cd: $ff
	db   $fd                                         ; $58ce: $fd
	ld   d, l                                        ; $58cf: $55
	add  a                                           ; $58d0: $87
	ld   [hl], l                                     ; $58d1: $75
	ld   de, $1111                                   ; $58d2: $11 $11 $11
	add  hl, de                                      ; $58d5: $19
	rst  $28                                         ; $58d6: $ef
	rst  $38                                         ; $58d7: $ff
	rst  $38                                         ; $58d8: $ff
	rst  $38                                         ; $58d9: $ff
	or   a                                           ; $58da: $b7
	ld   l, e                                        ; $58db: $6b
	and  a                                           ; $58dc: $a7
	ld   sp, $1111                                   ; $58dd: $31 $11 $11
	ld   de, $ff9e                                   ; $58e0: $11 $9e $ff
	rst  $38                                         ; $58e3: $ff
	rst  $38                                         ; $58e4: $ff
	ld   a, [$db56]                                  ; $58e5: $fa $56 $db
	add  d                                           ; $58e8: $82
	ld   de, $1111                                   ; $58e9: $11 $11 $11
	dec  de                                          ; $58ec: $1b
	rst  $38                                         ; $58ed: $ff
	cp   $ff                                         ; $58ee: $fe $ff
	rst  $38                                         ; $58f0: $ff
	and  a                                           ; $58f1: $a7
	ld   a, [hl]                                     ; $58f2: $7e
	or   l                                           ; $58f3: $b5
	ld   de, $1111                                   ; $58f4: $11 $11 $11
	ld   de, $ffdf                                   ; $58f7: $11 $df $ff
	rst  $28                                         ; $58fa: $ef
	rst  $38                                         ; $58fb: $ff
	jp   c, $f9ac                                    ; $58fc: $da $ac $f9

	ld   hl, $1111                                   ; $58ff: $21 $11 $11
	ld   de, $cc3f                                   ; $5902: $11 $3f $cc
	rst  $38                                         ; $5905: $ff
	rst  $38                                         ; $5906: $ff
	ld   a, [$fcdf]                                  ; $5907: $fa $df $fc
	ld   h, e                                        ; $590a: $63
	inc  hl                                          ; $590b: $23
	ld   de, $1411                                   ; $590c: $11 $11 $14
	rst  $10                                         ; $590f: $d7
	cp   a                                           ; $5910: $bf
	rst  $38                                         ; $5911: $ff
	rst  $38                                         ; $5912: $ff
	rst  $28                                         ; $5913: $ef
	ei                                               ; $5914: $fb
	sbc  b                                           ; $5915: $98
	ld   [hl], e                                     ; $5916: $73
	ld   de, $1111                                   ; $5917: $11 $11 $11
	ld   a, [hl+]                                    ; $591a: $2a
	ld   a, l                                        ; $591b: $7d
	rst  $38                                         ; $591c: $ff
	rst  $38                                         ; $591d: $ff
	rst  $38                                         ; $591e: $ff
	rst  $38                                         ; $591f: $ff
	db   $eb                                         ; $5920: $eb
	sub  a                                           ; $5921: $97
	ld   hl, $1111                                   ; $5922: $21 $11 $11
	ld   de, $cf86                                   ; $5925: $11 $86 $cf
	rst  $38                                         ; $5928: $ff
	rst  $38                                         ; $5929: $ff
	rst  $38                                         ; $592a: $ff
	cp   $bb                                         ; $592b: $fe $bb
	and  e                                           ; $592d: $a3
	ld   de, $1111                                   ; $592e: $11 $11 $11
	dec  d                                           ; $5931: $15
	inc  a                                           ; $5932: $3c
	rst  $38                                         ; $5933: $ff
	rst  $38                                         ; $5934: $ff
	rst  $38                                         ; $5935: $ff
	rst  $38                                         ; $5936: $ff
	db   $fd                                         ; $5937: $fd
	ld   [$1121], a                                  ; $5938: $ea $21 $11
	ld   de, $3111                                   ; $593b: $11 $11 $31
	sbc  a                                           ; $593e: $9f
	rst  $38                                         ; $593f: $ff
	rst  $38                                         ; $5940: $ff
	rst  $38                                         ; $5941: $ff
	rst  $38                                         ; $5942: $ff
	rst  $38                                         ; $5943: $ff
	and  d                                           ; $5944: $a2
	ld   de, $1111                                   ; $5945: $11 $11 $11
	ld   bc, $ff19                                   ; $5948: $01 $19 $ff
	rst  $38                                         ; $594b: $ff
	rst  $38                                         ; $594c: $ff
	rst  $38                                         ; $594d: $ff
	rst  $38                                         ; $594e: $ff
	ld   a, [$1132]                                  ; $594f: $fa $32 $11
	ld   de, $1111                                   ; $5952: $11 $11 $11
	ld   a, a                                        ; $5955: $7f
	rst  $38                                         ; $5956: $ff
	rst  $38                                         ; $5957: $ff
	rst  $38                                         ; $5958: $ff
	rst  $38                                         ; $5959: $ff
	rst  $38                                         ; $595a: $ff
	rst  ToBoot                                         ; $595b: $c7
	ld   h, c                                        ; $595c: $61
	ld   de, $1111                                   ; $595d: $11 $11 $11
	inc  de                                          ; $5960: $13
	xor  h                                           ; $5961: $ac
	rst  $28                                         ; $5962: $ef
	rst  $38                                         ; $5963: $ff
	rst  $38                                         ; $5964: $ff
	rst  $38                                         ; $5965: $ff
	rst  $38                                         ; $5966: $ff
	ret  z                                           ; $5967: $c8

	ld   de, $1111                                   ; $5968: $11 $11 $11
	ld   de, $7c15                                   ; $596b: $11 $15 $7c
	rst  $38                                         ; $596e: $ff
	rst  $38                                         ; $596f: $ff
	rst  $38                                         ; $5970: $ff
	rst  $38                                         ; $5971: $ff
	rst  $38                                         ; $5972: $ff
	rst  $10                                         ; $5973: $d7
	ld   de, $1111                                   ; $5974: $11 $11 $11
	ld   de, $4a13                                   ; $5977: $11 $13 $4a
	rst  $38                                         ; $597a: $ff
	rst  $38                                         ; $597b: $ff
	rst  $38                                         ; $597c: $ff
	rst  $38                                         ; $597d: $ff
	rst  $38                                         ; $597e: $ff
	sub  $11                                         ; $597f: $d6 $11
	ld   de, $1111                                   ; $5981: $11 $11 $11
	ld   de, $ff37                                   ; $5984: $11 $37 $ff
	rst  $38                                         ; $5987: $ff
	rst  $38                                         ; $5988: $ff
	rst  $38                                         ; $5989: $ff
	rst  $38                                         ; $598a: $ff
	ld   hl, sp+$41                                  ; $598b: $f8 $41
	ld   de, $1111                                   ; $598d: $11 $11 $11
	ld   de, $cf14                                   ; $5990: $11 $14 $cf
	rst  $38                                         ; $5993: $ff
	rst  $38                                         ; $5994: $ff
	rst  $38                                         ; $5995: $ff
	rst  $38                                         ; $5996: $ff
	ei                                               ; $5997: $fb
	ld   [hl], c                                     ; $5998: $71
	ld   de, $1111                                   ; $5999: $11 $11 $11
	ld   de, $7f11                                   ; $599c: $11 $11 $7f
	rst  $38                                         ; $599f: $ff
	rst  $38                                         ; $59a0: $ff
	rst  $38                                         ; $59a1: $ff
	rst  $38                                         ; $59a2: $ff
	rst  $38                                         ; $59a3: $ff
	xor  b                                           ; $59a4: $a8
	ld   de, $1111                                   ; $59a5: $11 $11 $11
	ld   de, $1911                                   ; $59a8: $11 $11 $19
	rst  JumpTable                                         ; $59ab: $df
	rst  $38                                         ; $59ac: $ff
	rst  $38                                         ; $59ad: $ff
	rst  $38                                         ; $59ae: $ff
	rst  $38                                         ; $59af: $ff
	db   $fd                                         ; $59b0: $fd
	sub  c                                           ; $59b1: $91
	ld   de, $1111                                   ; $59b2: $11 $11 $11
	ld   de, $8c11                                   ; $59b5: $11 $11 $8c
	rst  $28                                         ; $59b8: $ef
	rst  $38                                         ; $59b9: $ff
	rst  $38                                         ; $59ba: $ff
	rst  $38                                         ; $59bb: $ff
	rst  $38                                         ; $59bc: $ff
	ld   a, [$1131]                                  ; $59bd: $fa $31 $11
	ld   de, $1111                                   ; $59c0: $11 $11 $11
	inc  d                                           ; $59c3: $14
	sbc  l                                           ; $59c4: $9d
	rst  $38                                         ; $59c5: $ff
	rst  $38                                         ; $59c6: $ff
	rst  $38                                         ; $59c7: $ff
	rst  $38                                         ; $59c8: $ff
	rst  $38                                         ; $59c9: $ff
	or   [hl]                                        ; $59ca: $b6
	ld   hl, $1111                                   ; $59cb: $21 $11 $11
	ld   de, $1611                                   ; $59ce: $11 $11 $16
	adc  h                                           ; $59d1: $8c
	rst  $38                                         ; $59d2: $ff
	rst  $38                                         ; $59d3: $ff
	rst  $38                                         ; $59d4: $ff
	rst  $38                                         ; $59d5: $ff
	rst  $38                                         ; $59d6: $ff
	and  [hl]                                        ; $59d7: $a6
	ld   hl, $1111                                   ; $59d8: $21 $11 $11
	ld   de, $1511                                   ; $59db: $11 $11 $15
	ld   a, [hl]                                     ; $59de: $7e
	rst  $38                                         ; $59df: $ff
	rst  $38                                         ; $59e0: $ff
	rst  $38                                         ; $59e1: $ff
	rst  $38                                         ; $59e2: $ff
	rst  $38                                         ; $59e3: $ff
	or   a                                           ; $59e4: $b7
	ld   hl, $1111                                   ; $59e5: $21 $11 $11
	ld   de, $1511                                   ; $59e8: $11 $11 $15
	ld   a, h                                        ; $59eb: $7c
	rst  $38                                         ; $59ec: $ff
	rst  $38                                         ; $59ed: $ff
	rst  $38                                         ; $59ee: $ff
	rst  $38                                         ; $59ef: $ff
	rst  $38                                         ; $59f0: $ff
	ret                                              ; $59f1: $c9


	ld   sp, $1111                                   ; $59f2: $31 $11 $11
	ld   de, $1311                                   ; $59f5: $11 $11 $13
	ld   e, d                                        ; $59f8: $5a
	rst  $28                                         ; $59f9: $ef
	rst  $38                                         ; $59fa: $ff
	rst  $38                                         ; $59fb: $ff
	rst  $38                                         ; $59fc: $ff
	rst  $38                                         ; $59fd: $ff
	ei                                               ; $59fe: $fb
	ld   b, d                                        ; $59ff: $42
	ld   de, $1111                                   ; $5a00: $11 $11 $11
	ld   de, $3711                                   ; $5a03: $11 $11 $37
	rst  JumpTable                                         ; $5a06: $df
	rst  $38                                         ; $5a07: $ff
	rst  $38                                         ; $5a08: $ff
	rst  $38                                         ; $5a09: $ff
	rst  $38                                         ; $5a0a: $ff
	db   $fd                                         ; $5a0b: $fd
	ld   [hl], h                                     ; $5a0c: $74
	ld   de, $1111                                   ; $5a0d: $11 $11 $11
	ld   de, $2411                                   ; $5a10: $11 $11 $24
	xor  a                                           ; $5a13: $af
	rst  $38                                         ; $5a14: $ff
	rst  $38                                         ; $5a15: $ff
	rst  $38                                         ; $5a16: $ff
	rst  $38                                         ; $5a17: $ff
	rst  $38                                         ; $5a18: $ff
	rst  $10                                         ; $5a19: $d7
	ld   sp, $1111                                   ; $5a1a: $31 $11 $11
	ld   de, $1311                                   ; $5a1d: $11 $11 $13
	ld   a, d                                        ; $5a20: $7a
	rst  $38                                         ; $5a21: $ff
	rst  $38                                         ; $5a22: $ff
	rst  $38                                         ; $5a23: $ff
	rst  $38                                         ; $5a24: $ff
	rst  $38                                         ; $5a25: $ff
	db   $fc                                         ; $5a26: $fc
	ld   d, e                                        ; $5a27: $53
	ld   de, $1111                                   ; $5a28: $11 $11 $11
	ld   de, $4711                                   ; $5a2b: $11 $11 $47
	sbc  a                                           ; $5a2e: $9f
	rst  $38                                         ; $5a2f: $ff
	rst  $38                                         ; $5a30: $ff
	rst  $38                                         ; $5a31: $ff
	rst  $38                                         ; $5a32: $ff
	db   $fd                                         ; $5a33: $fd
	or   a                                           ; $5a34: $b7
	ld   sp, $1111                                   ; $5a35: $31 $11 $11
	ld   de, $1311                                   ; $5a38: $11 $11 $13
	ld   l, c                                        ; $5a3b: $69
	rst  $28                                         ; $5a3c: $ef
	rst  $38                                         ; $5a3d: $ff
	rst  $38                                         ; $5a3e: $ff
	rst  $38                                         ; $5a3f: $ff
	rst  $38                                         ; $5a40: $ff
	db   $ed                                         ; $5a41: $ed
	ld   [hl], l                                     ; $5a42: $75
	ld   de, $1111                                   ; $5a43: $11 $11 $11
	ld   de, $1511                                   ; $5a46: $11 $11 $15
	adc  e                                           ; $5a49: $8b
	rst  $38                                         ; $5a4a: $ff
	rst  $38                                         ; $5a4b: $ff
	rst  $38                                         ; $5a4c: $ff
	rst  $38                                         ; $5a4d: $ff
	rst  $38                                         ; $5a4e: $ff
	db   $db                                         ; $5a4f: $db
	ld   h, h                                        ; $5a50: $64
	ld   de, $1111                                   ; $5a51: $11 $11 $11
	ld   de, $3611                                   ; $5a54: $11 $11 $36
	adc  e                                           ; $5a57: $8b
	rst  $38                                         ; $5a58: $ff
	rst  $38                                         ; $5a59: $ff
	rst  $38                                         ; $5a5a: $ff
	rst  $38                                         ; $5a5b: $ff
	cp   $da                                         ; $5a5c: $fe $da
	ld   h, h                                        ; $5a5e: $64
	ld   hl, $1111                                   ; $5a5f: $21 $11 $11
	ld   de, $4621                                   ; $5a62: $11 $21 $46
	adc  e                                           ; $5a65: $8b
	sbc  $ff                                         ; $5a66: $de $ff
	rst  $38                                         ; $5a68: $ff
	rst  $38                                         ; $5a69: $ff
	cp   $c9                                         ; $5a6a: $fe $c9
	halt                                             ; $5a6c: $76
	ld   sp, $1121                                   ; $5a6d: $31 $21 $11
	ld   de, $3632                                   ; $5a70: $11 $32 $36
	ld   l, b                                        ; $5a73: $68
	adc  $df                                         ; $5a74: $ce $df
	rst  $38                                         ; $5a76: $ff
	rst  $38                                         ; $5a77: $ff
	cp   $ca                                         ; $5a78: $fe $ca
	sub  a                                           ; $5a7a: $97
	ld   d, e                                        ; $5a7b: $53
	ld   [hl+], a                                    ; $5a7c: $22
	ld   de, $1321                                   ; $5a7d: $11 $21 $13
	dec  d                                           ; $5a80: $15
	ld   h, a                                        ; $5a81: $67
	cp   e                                           ; $5a82: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a83: $cf
	rst  $38                                         ; $5a84: $ff
	rst  $38                                         ; $5a85: $ff
	rst  $28                                         ; $5a86: $ef
	db   $db                                         ; $5a87: $db
	xor  b                                           ; $5a88: $a8
	ld   h, l                                        ; $5a89: $65
	ld   [hl-], a                                    ; $5a8a: $32
	ld   sp, $1213                                   ; $5a8b: $31 $13 $12
	inc  hl                                          ; $5a8e: $23
	ld   d, a                                        ; $5a8f: $57
	ld   a, e                                        ; $5a90: $7b
	call z, $ffff                                    ; $5a91: $cc $ff $ff
	cp   $ec                                         ; $5a94: $fe $ec
	cp   c                                           ; $5a96: $b9
	sub  [hl]                                        ; $5a97: $96
	ld   d, e                                        ; $5a98: $53
	inc  h                                           ; $5a99: $24
	ld   de, $2441                                   ; $5a9a: $11 $41 $24
	ld   h, $67                                      ; $5a9d: $26 $67
	cp   h                                           ; $5a9f: $bc
	call $fffd                                       ; $5aa0: $cd $fd $ff
	sbc  $cb                                         ; $5aa3: $de $cb
	and  a                                           ; $5aa5: $a7
	ld   h, [hl]                                     ; $5aa6: $66
	ld   b, e                                        ; $5aa7: $43
	ld   d, d                                        ; $5aa8: $52
	dec  d                                           ; $5aa9: $15
	ld   sp, $5753                                   ; $5aaa: $31 $53 $57
	ld   a, b                                        ; $5aad: $78
	cp   e                                           ; $5aae: $bb
	cp   a                                           ; $5aaf: $bf
	db   $dd                                         ; $5ab0: $dd
	db   $fc                                         ; $5ab1: $fc
	call z, $89ca                                    ; $5ab2: $cc $ca $89
	ld   h, l                                        ; $5ab5: $65
	ld   h, h                                        ; $5ab6: $64
	ld   b, h                                        ; $5ab7: $44
	inc  h                                           ; $5ab8: $24
	ld   d, d                                        ; $5ab9: $52
	ld   b, a                                        ; $5aba: $47
	ld   d, [hl]                                     ; $5abb: $56
	sbc  c                                           ; $5abc: $99
	xor  d                                           ; $5abd: $aa
	cp   e                                           ; $5abe: $bb
	call z, $cbcc                                    ; $5abf: $cc $cc $cb
	xor  d                                           ; $5ac2: $aa
	adc  b                                           ; $5ac3: $88
	ld   [hl], l                                     ; $5ac4: $75
	ld   h, l                                        ; $5ac5: $65
	ld   d, [hl]                                     ; $5ac6: $56
	dec  [hl]                                        ; $5ac7: $35
	ld   d, e                                        ; $5ac8: $53
	ld   d, l                                        ; $5ac9: $55
	ld   d, [hl]                                     ; $5aca: $56
	ld   l, b                                        ; $5acb: $68
	sbc  c                                           ; $5acc: $99
	cp   e                                           ; $5acd: $bb
	call z, $bbcc                                    ; $5ace: $cc $cc $bb
	xor  d                                           ; $5ad1: $aa
	sbc  b                                           ; $5ad2: $98
	adc  b                                           ; $5ad3: $88
	ld   c, c                                        ; $5ad4: $49
	ld   h, e                                        ; $5ad5: $63
	sub  l                                           ; $5ad6: $95
	add  hl, de                                      ; $5ad7: $19
	ld   d, d                                        ; $5ad8: $52
	halt                                             ; $5ad9: $76
	ld   b, a                                        ; $5ada: $47
	add  a                                           ; $5adb: $87
	adc  d                                           ; $5adc: $8a
	xor  d                                           ; $5add: $aa
	cp   d                                           ; $5ade: $ba
	res  3, d                                        ; $5adf: $cb $9a
	cp   b                                           ; $5ae1: $b8
	sbc  c                                           ; $5ae2: $99
	ld   a, b                                        ; $5ae3: $78
	halt                                             ; $5ae4: $76
	ld   h, [hl]                                     ; $5ae5: $66
	add  [hl]                                        ; $5ae6: $86
	ld   d, a                                        ; $5ae7: $57
	ld   h, l                                        ; $5ae8: $65
	ld   h, l                                        ; $5ae9: $65
	ld   h, a                                        ; $5aea: $67
	ld   h, a                                        ; $5aeb: $67
	adc  b                                           ; $5aec: $88
	sbc  e                                           ; $5aed: $9b
	sbc  c                                           ; $5aee: $99
	cp   d                                           ; $5aef: $ba
	sbc  d                                           ; $5af0: $9a
	xor  c                                           ; $5af1: $a9
	sbc  d                                           ; $5af2: $9a
	sub  a                                           ; $5af3: $97
	adc  c                                           ; $5af4: $89
	ld   [hl], a                                     ; $5af5: $77
	adc  b                                           ; $5af6: $88
	ld   h, a                                        ; $5af7: $67
	ld   [hl], a                                     ; $5af8: $77
	ld   h, [hl]                                     ; $5af9: $66
	halt                                             ; $5afa: $76
	ld   h, a                                        ; $5afb: $67
	ld   a, b                                        ; $5afc: $78
	ld   a, b                                        ; $5afd: $78
	sbc  b                                           ; $5afe: $98
	sbc  c                                           ; $5aff: $99
	adc  c                                           ; $5b00: $89
	xor  c                                           ; $5b01: $a9
	adc  c                                           ; $5b02: $89
	adc  b                                           ; $5b03: $88
	sbc  e                                           ; $5b04: $9b
	sbc  b                                           ; $5b05: $98
	sbc  b                                           ; $5b06: $98
	ld   a, c                                        ; $5b07: $79
	sub  a                                           ; $5b08: $97
	ld   a, b                                        ; $5b09: $78
	ld   h, [hl]                                     ; $5b0a: $66
	ld   [hl], a                                     ; $5b0b: $77
	ld   h, [hl]                                     ; $5b0c: $66
	halt                                             ; $5b0d: $76
	ld   a, b                                        ; $5b0e: $78
	ld   [hl], a                                     ; $5b0f: $77
	sbc  b                                           ; $5b10: $98
	adc  b                                           ; $5b11: $88
	sbc  b                                           ; $5b12: $98
	sbc  c                                           ; $5b13: $99
	sbc  c                                           ; $5b14: $99
	xor  d                                           ; $5b15: $aa
	sbc  c                                           ; $5b16: $99
	sbc  c                                           ; $5b17: $99
	adc  b                                           ; $5b18: $88
	adc  c                                           ; $5b19: $89
	add  a                                           ; $5b1a: $87
	ld   [hl], a                                     ; $5b1b: $77
	ld   h, [hl]                                     ; $5b1c: $66
	halt                                             ; $5b1d: $76
	ld   h, a                                        ; $5b1e: $67
	ld   h, a                                        ; $5b1f: $67
	ld   a, b                                        ; $5b20: $78
	adc  c                                           ; $5b21: $89
	adc  c                                           ; $5b22: $89
	sbc  c                                           ; $5b23: $99
	sbc  c                                           ; $5b24: $99
	sbc  c                                           ; $5b25: $99
	adc  b                                           ; $5b26: $88
	sbc  b                                           ; $5b27: $98
	adc  b                                           ; $5b28: $88
	sbc  c                                           ; $5b29: $99
	ld   a, b                                        ; $5b2a: $78
	add  a                                           ; $5b2b: $87
	add  a                                           ; $5b2c: $87
	ld   [hl], a                                     ; $5b2d: $77
	adc  b                                           ; $5b2e: $88
	ld   [hl], a                                     ; $5b2f: $77
	adc  b                                           ; $5b30: $88
	ld   a, b                                        ; $5b31: $78
	adc  b                                           ; $5b32: $88
	adc  b                                           ; $5b33: $88
	adc  b                                           ; $5b34: $88
	sbc  b                                           ; $5b35: $98
	ld   a, c                                        ; $5b36: $79
	adc  b                                           ; $5b37: $88
	sbc  b                                           ; $5b38: $98
	adc  b                                           ; $5b39: $88
	sbc  b                                           ; $5b3a: $98
	adc  b                                           ; $5b3b: $88
	adc  b                                           ; $5b3c: $88
	adc  c                                           ; $5b3d: $89
	adc  b                                           ; $5b3e: $88
	sbc  b                                           ; $5b3f: $98
	adc  c                                           ; $5b40: $89
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
	adc  c                                           ; $5b4c: $89
	adc  b                                           ; $5b4d: $88
	adc  b                                           ; $5b4e: $88
	adc  c                                           ; $5b4f: $89
	adc  b                                           ; $5b50: $88
	adc  b                                           ; $5b51: $88
	adc  c                                           ; $5b52: $89
	sbc  b                                           ; $5b53: $98
	adc  b                                           ; $5b54: $88
	adc  b                                           ; $5b55: $88
	adc  b                                           ; $5b56: $88
	adc  b                                           ; $5b57: $88
	ld   a, b                                        ; $5b58: $78
	adc  b                                           ; $5b59: $88
	adc  b                                           ; $5b5a: $88
	add  a                                           ; $5b5b: $87
	adc  b                                           ; $5b5c: $88
	adc  b                                           ; $5b5d: $88
	adc  c                                           ; $5b5e: $89
	add  a                                           ; $5b5f: $87
	adc  c                                           ; $5b60: $89
	ld   a, b                                        ; $5b61: $78
	sbc  b                                           ; $5b62: $98
	adc  b                                           ; $5b63: $88
	adc  b                                           ; $5b64: $88
	adc  b                                           ; $5b65: $88
	sbc  b                                           ; $5b66: $98
	adc  b                                           ; $5b67: $88
	adc  b                                           ; $5b68: $88
	adc  b                                           ; $5b69: $88
	adc  b                                           ; $5b6a: $88
	adc  b                                           ; $5b6b: $88
	sub  a                                           ; $5b6c: $97
	adc  b                                           ; $5b6d: $88
	adc  b                                           ; $5b6e: $88
	adc  b                                           ; $5b6f: $88
	adc  b                                           ; $5b70: $88
	sub  a                                           ; $5b71: $97
	adc  b                                           ; $5b72: $88
	adc  c                                           ; $5b73: $89
	ld   a, b                                        ; $5b74: $78
	adc  c                                           ; $5b75: $89
	adc  b                                           ; $5b76: $88
	sbc  b                                           ; $5b77: $98
	adc  b                                           ; $5b78: $88
	sbc  b                                           ; $5b79: $98
	adc  b                                           ; $5b7a: $88
	adc  c                                           ; $5b7b: $89
	ld   a, b                                        ; $5b7c: $78
	adc  b                                           ; $5b7d: $88
	adc  b                                           ; $5b7e: $88
	sbc  b                                           ; $5b7f: $98
	ld   a, b                                        ; $5b80: $78
	sbc  b                                           ; $5b81: $98
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

jr_0b6_5c86:
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
	adc  e                                           ; $5cab: $8b
	add  [hl]                                        ; $5cac: $86
	ld   h, a                                        ; $5cad: $67
	cp   d                                           ; $5cae: $ba
	ld   a, c                                        ; $5caf: $79
	xor  b                                           ; $5cb0: $a8
	halt                                             ; $5cb1: $76
	sbc  d                                           ; $5cb2: $9a
	ld   [hl], a                                     ; $5cb3: $77
	ld   a, d                                        ; $5cb4: $7a
	sub  l                                           ; $5cb5: $95
	ld   e, e                                        ; $5cb6: $5b
	and  [hl]                                        ; $5cb7: $a6
	ld   d, a                                        ; $5cb8: $57
	xor  b                                           ; $5cb9: $a8
	jr   c, jr_0b6_5c86                              ; $5cba: $38 $ca

	ld   h, e                                        ; $5cbc: $63
	ld   e, l                                        ; $5cbd: $5d
	ld   sp, hl                                      ; $5cbe: $f9
	dec  d                                           ; $5cbf: $15
	cp   d                                           ; $5cc0: $ba
	ld   a, c                                        ; $5cc1: $79
	rst  $28                                         ; $5cc2: $ef
	ld   sp, $61af                                   ; $5cc3: $31 $af $61
	ld   a, [hl]                                     ; $5cc6: $7e
	rst  ToBoot                                         ; $5cc7: $c7
	inc  [hl]                                        ; $5cc8: $34
	sub  a                                           ; $5cc9: $97
	scf                                              ; $5cca: $37
	db   $eb                                         ; $5ccb: $eb
	ld   d, h                                        ; $5ccc: $54
	ld   a, c                                        ; $5ccd: $79
	add  [hl]                                        ; $5cce: $86
	ld   l, c                                        ; $5ccf: $69
	xor  b                                           ; $5cd0: $a8
	ld   h, a                                        ; $5cd1: $67
	ld   a, c                                        ; $5cd2: $79
	sbc  c                                           ; $5cd3: $99
	add  a                                           ; $5cd4: $87
	xor  [hl]                                        ; $5cd5: $ae
	ei                                               ; $5cd6: $fb
	ld   [de], a                                     ; $5cd7: $12
	call z, $6c41                                    ; $5cd8: $cc $41 $6c
	add  c                                           ; $5cdb: $81
	dec  sp                                          ; $5cdc: $3b
	or   a                                           ; $5cdd: $b7
	ld   e, c                                        ; $5cde: $59
	db   $db                                         ; $5cdf: $db
	halt                                             ; $5ce0: $76
	sbc  d                                           ; $5ce1: $9a
	ld   b, e                                        ; $5ce2: $43
	ld   l, b                                        ; $5ce3: $68
	halt                                             ; $5ce4: $76
	sbc  e                                           ; $5ce5: $9b
	sbc  b                                           ; $5ce6: $98
	adc  h                                           ; $5ce7: $8c
	rst  ToBoot                                         ; $5ce8: $c7
	ld   e, b                                        ; $5ce9: $58
	xor  c                                           ; $5cea: $a9
	halt                                             ; $5ceb: $76
	adc  b                                           ; $5cec: $88
	ld   h, l                                        ; $5ced: $65
	ld   e, b                                        ; $5cee: $58
	sub  a                                           ; $5cef: $97
	ld   a, c                                        ; $5cf0: $79
	add  a                                           ; $5cf1: $87
	add  a                                           ; $5cf2: $87
	ld   a, b                                        ; $5cf3: $78
	add  a                                           ; $5cf4: $87
	ld   [hl], a                                     ; $5cf5: $77
	ld   [hl], a                                     ; $5cf6: $77
	ld   a, c                                        ; $5cf7: $79
	ld   [hl], a                                     ; $5cf8: $77
	ld   [hl], a                                     ; $5cf9: $77
	sbc  e                                           ; $5cfa: $9b
	and  a                                           ; $5cfb: $a7
	ld   a, c                                        ; $5cfc: $79
	xor  e                                           ; $5cfd: $ab
	add  a                                           ; $5cfe: $87
	sbc  d                                           ; $5cff: $9a
	ld   [hl], l                                     ; $5d00: $75
	ld   a, b                                        ; $5d01: $78
	halt                                             ; $5d02: $76
	ld   d, [hl]                                     ; $5d03: $56
	halt                                             ; $5d04: $76
	ld   b, [hl]                                     ; $5d05: $46
	halt                                             ; $5d06: $76
	ld   b, e                                        ; $5d07: $43
	ld   d, a                                        ; $5d08: $57
	ld   a, b                                        ; $5d09: $78
	adc  b                                           ; $5d0a: $88
	cp   l                                           ; $5d0b: $bd
	db   $eb                                         ; $5d0c: $eb
	adc  $de                                         ; $5d0d: $ce $de
	res  7, d                                        ; $5d0f: $cb $ba
	add  a                                           ; $5d11: $87
	ld   h, l                                        ; $5d12: $65
	ld   b, e                                        ; $5d13: $43
	ld   hl, $1511                                   ; $5d14: $21 $11 $15
	ld   [de], a                                     ; $5d17: $12
	xor  e                                           ; $5d18: $ab
	call $ffff                                       ; $5d19: $cd $ff $ff
	cp   $fd                                         ; $5d1c: $fe $fd
	sbc  b                                           ; $5d1e: $98
	xor  c                                           ; $5d1f: $a9
	ld   d, l                                        ; $5d20: $55
	ld   d, l                                        ; $5d21: $55
	ld   [hl], a                                     ; $5d22: $77
	ld   d, e                                        ; $5d23: $53
	ld   sp, $1311                                   ; $5d24: $31 $11 $13
	pop  bc                                          ; $5d27: $c1
	ld   e, a                                        ; $5d28: $5f
	rst  $38                                         ; $5d29: $ff
	rst  $38                                         ; $5d2a: $ff
	rst  $38                                         ; $5d2b: $ff
	ei                                               ; $5d2c: $fb
	cp   [hl]                                        ; $5d2d: $be
	add  h                                           ; $5d2e: $84
	inc  [hl]                                        ; $5d2f: $34
	dec  d                                           ; $5d30: $15
	add  l                                           ; $5d31: $85
	adc  d                                           ; $5d32: $8a
	sub  a                                           ; $5d33: $97
	ld   d, d                                        ; $5d34: $52
	ld   bc, $aa11                                   ; $5d35: $01 $11 $aa
	dec  de                                          ; $5d38: $1b
	rst  $38                                         ; $5d39: $ff
	rst  $38                                         ; $5d3a: $ff
	rst  $38                                         ; $5d3b: $ff
	rst  $38                                         ; $5d3c: $ff
	ld   a, h                                        ; $5d3d: $7c
	and  l                                           ; $5d3e: $a5
	ld   [de], a                                     ; $5d3f: $12
	ld   [de], a                                     ; $5d40: $12
	sbc  b                                           ; $5d41: $98
	sbc  h                                           ; $5d42: $9c
	reti                                             ; $5d43: $d9


	ld   d, c                                        ; $5d44: $51
	ld   de, $7f11                                   ; $5d45: $11 $11 $7f
	add  hl, de                                      ; $5d48: $19
	rst  $38                                         ; $5d49: $ff
	rst  $38                                         ; $5d4a: $ff
	db   $fc                                         ; $5d4b: $fc
	rst  $38                                         ; $5d4c: $ff
	ld   [hl], $83                                   ; $5d4d: $36 $83
	ld   de, $af62                                   ; $5d4f: $11 $62 $af
	cp   a                                           ; $5d52: $bf
	ei                                               ; $5d53: $fb
	ld   d, c                                        ; $5d54: $51
	ld   de, $1f11                                   ; $5d55: $11 $11 $1f
	db   $f4                                         ; $5d58: $f4
	rst  $38                                         ; $5d59: $ff
	rst  $38                                         ; $5d5a: $ff
	cp   $7f                                         ; $5d5b: $fe $7f
	add  c                                           ; $5d5d: $81
	ld   d, c                                        ; $5d5e: $51
	ld   de, $8f8c                                   ; $5d5f: $11 $8c $8f
	rst  $38                                         ; $5d62: $ff
	rst  $38                                         ; $5d63: $ff
	sub  c                                           ; $5d64: $91
	ld   de, $1111                                   ; $5d65: $11 $11 $11
	rst  $38                                         ; $5d68: $ff
	ld   l, a                                        ; $5d69: $6f
	rst  $38                                         ; $5d6a: $ff
	rst  $38                                         ; $5d6b: $ff
	add  c                                           ; $5d6c: $81
	or   l                                           ; $5d6d: $b5
	ld   de, $5e11                                   ; $5d6e: $11 $11 $5e
	rst  $38                                         ; $5d71: $ff
	rst  $38                                         ; $5d72: $ff
	rst  $38                                         ; $5d73: $ff
	or   l                                           ; $5d74: $b5
	ld   de, $1111                                   ; $5d75: $11 $11 $11
	rra                                              ; $5d78: $1f
	ld   hl, sp-$01                                  ; $5d79: $f8 $ff
	rst  $38                                         ; $5d7b: $ff
	and  l                                           ; $5d7c: $a5
	inc  de                                          ; $5d7d: $13
	ld   h, c                                        ; $5d7e: $61
	ld   de, $ff6e                                   ; $5d7f: $11 $6e $ff
	rst  $38                                         ; $5d82: $ff
	rst  $38                                         ; $5d83: $ff
	or   $41                                         ; $5d84: $f6 $41
	ld   de, $1111                                   ; $5d86: $11 $11 $11
	rst  $38                                         ; $5d89: $ff
	cp   a                                           ; $5d8a: $bf
	rst  $38                                         ; $5d8b: $ff
	di                                               ; $5d8c: $f3
	ld   sp, $1119                                   ; $5d8d: $31 $19 $11
	dec  sp                                          ; $5d90: $3b
	rst  $38                                         ; $5d91: $ff
	rst  $38                                         ; $5d92: $ff
	rst  $38                                         ; $5d93: $ff
	call c, $1143                                    ; $5d94: $dc $43 $11
	ld   de, $1f11                                   ; $5d97: $11 $11 $1f
	db   $fd                                         ; $5d9a: $fd
	rst  $38                                         ; $5d9b: $ff
	cp   $12                                         ; $5d9c: $fe $12
	ld   de, $17c1                                   ; $5d9e: $11 $c1 $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5da1: $cf
	rst  $38                                         ; $5da2: $ff
	db   $fd                                         ; $5da3: $fd
	ei                                               ; $5da4: $fb
	and  l                                           ; $5da5: $a5
	ld   hl, $1111                                   ; $5da6: $21 $11 $11
	ld   de, $cfff                                   ; $5da9: $11 $ff $cf
	rst  $38                                         ; $5dac: $ff
	pop  af                                          ; $5dad: $f1
	ld   de, $131e                                   ; $5dae: $11 $1e $13
	cp   l                                           ; $5db1: $bd
	rst  $38                                         ; $5db2: $ff
	rst  $38                                         ; $5db3: $ff
	sbc  a                                           ; $5db4: $9f
	cp   d                                           ; $5db5: $ba
	ld   h, e                                        ; $5db6: $63
	ld   hl, $1111                                   ; $5db7: $21 $11 $11
	rra                                              ; $5dba: $1f
	rst  $38                                         ; $5dbb: $ff
	rst  $38                                         ; $5dbc: $ff
	rst  $38                                         ; $5dbd: $ff
	ld   de, $f111                                   ; $5dbe: $11 $11 $f1
	rra                                              ; $5dc1: $1f
	xor  a                                           ; $5dc2: $af
	rst  $38                                         ; $5dc3: $ff
	di                                               ; $5dc4: $f3
	db   $fc                                         ; $5dc5: $fc
	xor  c                                           ; $5dc6: $a9
	ld   b, [hl]                                     ; $5dc7: $46
	ld   de, $1111                                   ; $5dc8: $11 $11 $11
	ld   c, a                                        ; $5dcb: $4f
	ld   hl, sp-$01                                  ; $5dcc: $f8 $ff
	ld   sp, hl                                      ; $5dce: $f9
	ld   de, $f111                                   ; $5dcf: $11 $11 $f1
	sbc  h                                           ; $5dd2: $9c
	rst  $38                                         ; $5dd3: $ff
	rst  $28                                         ; $5dd4: $ef
	ld   [hl], a                                     ; $5dd5: $77
	ld   hl, sp-$4b                                  ; $5dd6: $f8 $b5
	sub  h                                           ; $5dd8: $94
	ld   de, $1111                                   ; $5dd9: $11 $11 $11
	rst  $38                                         ; $5ddc: $ff
	ld   hl, sp-$01                                  ; $5ddd: $f8 $ff
	di                                               ; $5ddf: $f3
	ld   de, $b116                                   ; $5de0: $11 $16 $b1
	cp   h                                           ; $5de3: $bc
	rst  $38                                         ; $5de4: $ff
	rst  $28                                         ; $5de5: $ef
	ld   e, c                                        ; $5de6: $59
	ret                                              ; $5de7: $c9


	or   [hl]                                        ; $5de8: $b6
	or   h                                           ; $5de9: $b4
	ld   de, $1111                                   ; $5dea: $11 $11 $11
	rst  JumpTable                                         ; $5ded: $df
	ld   sp, hl                                      ; $5dee: $f9
	rst  $38                                         ; $5def: $ff
	di                                               ; $5df0: $f3
	ld   de, $b115                                   ; $5df1: $11 $15 $b1
	sbc  l                                           ; $5df4: $9d
	rst  $38                                         ; $5df5: $ff
	rst  JumpTable                                         ; $5df6: $df
	add  a                                           ; $5df7: $87
	ret  c                                           ; $5df8: $d8

	xor  b                                           ; $5df9: $a8
	and  [hl]                                        ; $5dfa: $a6
	ld   de, $1111                                   ; $5dfb: $11 $11 $11
	sbc  a                                           ; $5dfe: $9f
	ld   a, [$f6ff]                                  ; $5dff: $fa $ff $f6
	ld   de, $8111                                   ; $5e02: $11 $11 $81
	sbc  a                                           ; $5e05: $9f
	rst  $38                                         ; $5e06: $ff
	rst  JumpTable                                         ; $5e07: $df
	rst  $20                                         ; $5e08: $e7
	rst  $10                                         ; $5e09: $d7
	sbc  d                                           ; $5e0a: $9a
	ld   [hl], a                                     ; $5e0b: $77
	ld   hl, $1111                                   ; $5e0c: $21 $11 $11
	rra                                              ; $5e0f: $1f
	db   $fc                                         ; $5e10: $fc
	rst  $38                                         ; $5e11: $ff
	ei                                               ; $5e12: $fb
	ld   de, $8111                                   ; $5e13: $11 $11 $81
	rra                                              ; $5e16: $1f
	rst  $38                                         ; $5e17: $ff
	rst  JumpTable                                         ; $5e18: $df
	ld   a, [$7ac9]                                  ; $5e19: $fa $c9 $7a
	add  a                                           ; $5e1c: $87
	ld   hl, $1111                                   ; $5e1d: $21 $11 $11
	rra                                              ; $5e20: $1f
	rst  $38                                         ; $5e21: $ff
	rst  $38                                         ; $5e22: $ff
	rst  $38                                         ; $5e23: $ff
	ld   de, $5111                                   ; $5e24: $11 $11 $51
	ld   a, [de]                                     ; $5e27: $1a
	rst  $38                                         ; $5e28: $ff
	db   $dd                                         ; $5e29: $dd
	rst  $38                                         ; $5e2a: $ff
	ret                                              ; $5e2b: $c9


	ld   c, b                                        ; $5e2c: $48
	xor  b                                           ; $5e2d: $a8
	ld   hl, $1111                                   ; $5e2e: $21 $11 $11
	ld   [de], a                                     ; $5e31: $12
	rst  $38                                         ; $5e32: $ff
	rst  $28                                         ; $5e33: $ef
	rst  $38                                         ; $5e34: $ff
	add  c                                           ; $5e35: $81
	ld   de, $1115                                   ; $5e36: $11 $15 $11
	rst  $38                                         ; $5e39: $ff
	db   $fc                                         ; $5e3a: $fc
	rst  $38                                         ; $5e3b: $ff
	db   $fc                                         ; $5e3c: $fc
	ld   h, h                                        ; $5e3d: $64
	sbc  c                                           ; $5e3e: $99
	ld   d, c                                        ; $5e3f: $51
	ld   de, $1111                                   ; $5e40: $11 $11 $11
	ld   l, a                                        ; $5e43: $6f
	db   $fc                                         ; $5e44: $fc
	rst  $38                                         ; $5e45: $ff
	ld   sp, hl                                      ; $5e46: $f9
	ld   de, $3111                                   ; $5e47: $11 $11 $31
	dec  e                                           ; $5e4a: $1d
	rst  $38                                         ; $5e4b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e4c: $cf
	rst  $38                                         ; $5e4d: $ff
	push de                                          ; $5e4e: $d5
	ld   l, d                                        ; $5e4f: $6a
	ld   [hl], l                                     ; $5e50: $75
	ld   de, $1111                                   ; $5e51: $11 $11 $11
	dec  d                                           ; $5e54: $15
	rst  $38                                         ; $5e55: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e56: $cf
	rst  $38                                         ; $5e57: $ff
	pop  de                                          ; $5e58: $d1
	ld   de, $1122                                   ; $5e59: $11 $22 $11
	xor  a                                           ; $5e5c: $af
	db   $fc                                         ; $5e5d: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e5e: $cf
	rst  $38                                         ; $5e5f: $ff
	ld   [hl], a                                     ; $5e60: $77
	and  a                                           ; $5e61: $a7
	ld   h, c                                        ; $5e62: $61
	ld   de, $1111                                   ; $5e63: $11 $11 $11
	rra                                              ; $5e66: $1f
	rst  $38                                         ; $5e67: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e68: $cf
	rst  $38                                         ; $5e69: $ff
	ld   h, c                                        ; $5e6a: $61
	ld   de, $1231                                   ; $5e6b: $11 $31 $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e6e: $cf
	set  7, a                                        ; $5e6f: $cb $ff
	rst  $38                                         ; $5e71: $ff
	sbc  e                                           ; $5e72: $9b
	rst  ToBoot                                         ; $5e73: $c7
	ld   de, $1111                                   ; $5e74: $11 $11 $11
	ld   de, $f95f                                   ; $5e77: $11 $5f $f9
	rst  $38                                         ; $5e7a: $ff
	rst  $38                                         ; $5e7b: $ff
	ld   [hl], e                                     ; $5e7c: $73
	inc  d                                           ; $5e7d: $14
	ld   [hl], c                                     ; $5e7e: $71
	inc  d                                           ; $5e7f: $14
	xor  e                                           ; $5e80: $ab
	xor  l                                           ; $5e81: $ad
	rst  $38                                         ; $5e82: $ff
	rst  $38                                         ; $5e83: $ff
	adc  $c8                                         ; $5e84: $ce $c8
	ld   de, $1111                                   ; $5e86: $11 $11 $11
	ld   de, $f65f                                   ; $5e89: $11 $5f $f6
	rst  $38                                         ; $5e8c: $ff
	rst  $38                                         ; $5e8d: $ff
	and  $1b                                         ; $5e8e: $e6 $1b
	sub  c                                           ; $5e90: $91
	ld   de, $7735                                   ; $5e91: $11 $35 $77
	xor  a                                           ; $5e94: $af
	rst  $38                                         ; $5e95: $ff
	rst  $38                                         ; $5e96: $ff
	db   $fc                                         ; $5e97: $fc
	ld   [hl], e                                     ; $5e98: $73
	ld   [de], a                                     ; $5e99: $12
	ld   de, $1411                                   ; $5e9a: $11 $11 $14
	ld   a, [$ff1d]                                  ; $5e9d: $fa $1d $ff
	rst  $38                                         ; $5ea0: $ff
	add  a                                           ; $5ea1: $87
	rst  $38                                         ; $5ea2: $ff
	inc  h                                           ; $5ea3: $24
	ld   h, c                                        ; $5ea4: $61
	jr   c, @+$54                                    ; $5ea5: $38 $52

	ld   a, e                                        ; $5ea7: $7b
	xor  l                                           ; $5ea8: $ad
	db   $ec                                         ; $5ea9: $ec
	xor  e                                           ; $5eaa: $ab
	cp   c                                           ; $5eab: $b9
	sbc  d                                           ; $5eac: $9a
	ld   [hl], h                                     ; $5ead: $74
	ld   d, l                                        ; $5eae: $55
	dec  d                                           ; $5eaf: $15
	sub  h                                           ; $5eb0: $94
	dec  d                                           ; $5eb1: $15
	ld   h, e                                        ; $5eb2: $63
	ld   a, d                                        ; $5eb3: $7a
	ld   d, l                                        ; $5eb4: $55
	xor  h                                           ; $5eb5: $ac
	sbc  h                                           ; $5eb6: $9c
	db   $db                                         ; $5eb7: $db
	xor  l                                           ; $5eb8: $ad
	jp   z, $889a                                    ; $5eb9: $ca $9a $88

	cp   c                                           ; $5ebc: $b9
	ld   a, b                                        ; $5ebd: $78
	xor  c                                           ; $5ebe: $a9
	adc  b                                           ; $5ebf: $88
	ld   h, a                                        ; $5ec0: $67
	sbc  b                                           ; $5ec1: $98
	ld   [hl], a                                     ; $5ec2: $77
	ld   b, e                                        ; $5ec3: $43
	ld   d, h                                        ; $5ec4: $54
	inc  sp                                          ; $5ec5: $33
	ld   d, [hl]                                     ; $5ec6: $56
	ld   l, c                                        ; $5ec7: $69
	sbc  c                                           ; $5ec8: $99
	xor  e                                           ; $5ec9: $ab
	xor  c                                           ; $5eca: $a9
	xor  e                                           ; $5ecb: $ab
	xor  d                                           ; $5ecc: $aa
	sbc  c                                           ; $5ecd: $99
	xor  e                                           ; $5ece: $ab
	cp   d                                           ; $5ecf: $ba
	cp   d                                           ; $5ed0: $ba
	cp   e                                           ; $5ed1: $bb
	xor  c                                           ; $5ed2: $a9
	sbc  c                                           ; $5ed3: $99
	add  a                                           ; $5ed4: $87
	ld   [hl], a                                     ; $5ed5: $77
	ld   b, d                                        ; $5ed6: $42
	ld   [hl+], a                                    ; $5ed7: $22
	inc  hl                                          ; $5ed8: $23
	ld   b, e                                        ; $5ed9: $43
	ld   d, a                                        ; $5eda: $57
	ld   [hl], a                                     ; $5edb: $77
	adc  c                                           ; $5edc: $89
	adc  c                                           ; $5edd: $89
	cp   d                                           ; $5ede: $ba
	xor  e                                           ; $5edf: $ab
	cp   e                                           ; $5ee0: $bb
	cp   d                                           ; $5ee1: $ba
	xor  d                                           ; $5ee2: $aa
	jp   z, $baab                                    ; $5ee3: $ca $ab $ba

	cp   d                                           ; $5ee6: $ba
	xor  b                                           ; $5ee7: $a8
	ld   [hl], a                                     ; $5ee8: $77
	ld   [hl], h                                     ; $5ee9: $74
	ld   [hl-], a                                    ; $5eea: $32
	ld   [de], a                                     ; $5eeb: $12
	ld   [hl-], a                                    ; $5eec: $32
	inc  hl                                          ; $5eed: $23
	ld   d, [hl]                                     ; $5eee: $56
	ld   a, b                                        ; $5eef: $78
	sbc  c                                           ; $5ef0: $99
	xor  e                                           ; $5ef1: $ab
	cp   e                                           ; $5ef2: $bb
	cp   c                                           ; $5ef3: $b9
	sbc  d                                           ; $5ef4: $9a
	sbc  b                                           ; $5ef5: $98
	sbc  h                                           ; $5ef6: $9c
	call z, $bccd                                    ; $5ef7: $cc $cd $bc
	ret                                              ; $5efa: $c9


	adc  b                                           ; $5efb: $88
	ld   h, a                                        ; $5efc: $67
	ld   [hl], h                                     ; $5efd: $74
	ld   hl, $2322                                   ; $5efe: $21 $22 $23
	inc  hl                                          ; $5f01: $23
	ld   h, a                                        ; $5f02: $67
	sbc  b                                           ; $5f03: $98
	adc  b                                           ; $5f04: $88
	adc  d                                           ; $5f05: $8a
	xor  c                                           ; $5f06: $a9
	sbc  d                                           ; $5f07: $9a
	xor  e                                           ; $5f08: $ab
	xor  d                                           ; $5f09: $aa
	cp   h                                           ; $5f0a: $bc
	call c, $bbbb                                    ; $5f0b: $dc $bb $bb
	res  2, [hl]                                     ; $5f0e: $cb $96
	ld   h, a                                        ; $5f10: $67
	ld   [hl], l                                     ; $5f11: $75
	ld   sp, $2323                                   ; $5f12: $31 $23 $23
	ld   [hl-], a                                    ; $5f15: $32
	ld   b, l                                        ; $5f16: $45
	ld   l, b                                        ; $5f17: $68
	ld   a, b                                        ; $5f18: $78
	sbc  d                                           ; $5f19: $9a
	db   $db                                         ; $5f1a: $db
	call c, $bade                                    ; $5f1b: $dc $de $ba
	adc  c                                           ; $5f1e: $89
	jp   z, $ba9a                                    ; $5f1f: $ca $9a $ba

	cp   c                                           ; $5f22: $b9
	and  a                                           ; $5f23: $a7
	adc  b                                           ; $5f24: $88
	ld   a, c                                        ; $5f25: $79
	ld   d, h                                        ; $5f26: $54
	ld   [hl+], a                                    ; $5f27: $22
	ld   sp, $1422                                   ; $5f28: $31 $22 $14
	ld   e, b                                        ; $5f2b: $58
	sbc  b                                           ; $5f2c: $98
	cp   d                                           ; $5f2d: $ba
	adc  $bb                                         ; $5f2e: $ce $bb
	cp   e                                           ; $5f30: $bb
	cp   d                                           ; $5f31: $ba
	xor  d                                           ; $5f32: $aa
	sbc  e                                           ; $5f33: $9b
	xor  d                                           ; $5f34: $aa
	xor  d                                           ; $5f35: $aa
	xor  h                                           ; $5f36: $ac
	xor  c                                           ; $5f37: $a9
	sub  a                                           ; $5f38: $97
	ld   [hl], l                                     ; $5f39: $75
	add  l                                           ; $5f3a: $85
	ld   de, $2512                                   ; $5f3b: $11 $12 $25
	ld   b, c                                        ; $5f3e: $41
	ld   e, c                                        ; $5f3f: $59
	cp   d                                           ; $5f40: $ba
	sbc  d                                           ; $5f41: $9a
	sbc  h                                           ; $5f42: $9c
	db   $fc                                         ; $5f43: $fc
	xor  e                                           ; $5f44: $ab
	cp   e                                           ; $5f45: $bb
	cp   h                                           ; $5f46: $bc
	adc  c                                           ; $5f47: $89
	call $c9ba                                       ; $5f48: $cd $ba $c9
	add  a                                           ; $5f4b: $87
	ld   hl, $1d11                                   ; $5f4c: $21 $11 $1d
	ld   b, c                                        ; $5f4f: $41
	ld   [hl], $ae                                   ; $5f50: $36 $ae
	ld   a, [$f96f]                                  ; $5f52: $fa $6f $f9
	sub  a                                           ; $5f55: $97
	ld   b, [hl]                                     ; $5f56: $46

jr_0b6_5f57:
	or   l                                           ; $5f57: $b5
	jr   jr_0b6_5f57                                 ; $5f58: $18 $fd

	adc  $bd                                         ; $5f5a: $ce $bd
	db   $fd                                         ; $5f5c: $fd
	ld   l, d                                        ; $5f5d: $6a
	add  $21                                         ; $5f5e: $c6 $21
	ld   de, $6f11                                   ; $5f60: $11 $11 $6f
	dec  [hl]                                        ; $5f63: $35
	rst  $38                                         ; $5f64: $ff
	rst  $38                                         ; $5f65: $ff
	rst  $30                                         ; $5f66: $f7
	cp   a                                           ; $5f67: $bf
	ld   de, $1411                                   ; $5f68: $11 $11 $14
	ld   d, d                                        ; $5f6b: $52
	rst  JumpTable                                         ; $5f6c: $df
	rst  $38                                         ; $5f6d: $ff
	rst  $38                                         ; $5f6e: $ff
	rst  $38                                         ; $5f6f: $ff
	or   e                                           ; $5f70: $b3
	ld   b, h                                        ; $5f71: $44
	ld   de, $1111                                   ; $5f72: $11 $11 $11
	rra                                              ; $5f75: $1f
	rst  $30                                         ; $5f76: $f7
	rst  $38                                         ; $5f77: $ff
	rst  $38                                         ; $5f78: $ff
	pop  af                                          ; $5f79: $f1
	add  hl, de                                      ; $5f7a: $19
	ld   b, c                                        ; $5f7b: $41
	ld   de, $eb17                                   ; $5f7c: $11 $17 $eb
	rst  $38                                         ; $5f7f: $ff
	rst  $38                                         ; $5f80: $ff
	rst  $38                                         ; $5f81: $ff
	jp   z, $1191                                    ; $5f82: $ca $91 $11

	ld   de, $1111                                   ; $5f85: $11 $11 $11
	rra                                              ; $5f88: $1f
	rst  $38                                         ; $5f89: $ff
	rst  $38                                         ; $5f8a: $ff
	rst  $38                                         ; $5f8b: $ff
	pop  af                                          ; $5f8c: $f1
	ld   de, $1161                                   ; $5f8d: $11 $61 $11
	add  hl, hl                                      ; $5f90: $29
	rst  $38                                         ; $5f91: $ff
	rst  $38                                         ; $5f92: $ff
	rst  $38                                         ; $5f93: $ff
	cp   $b7                                         ; $5f94: $fe $b7
	ld   h, e                                        ; $5f96: $63
	ld   [de], a                                     ; $5f97: $12
	ld   hl, $1111                                   ; $5f98: $21 $11 $11
	ld   de, $afff                                   ; $5f9b: $11 $ff $af
	rst  $38                                         ; $5f9e: $ff
	cp   $11                                         ; $5f9f: $fe $11

jr_0b6_5fa1:
	ld   h, $11                                      ; $5fa1: $26 $11
	ld   d, $df                                      ; $5fa3: $16 $df
	rst  $38                                         ; $5fa5: $ff
	rst  $38                                         ; $5fa6: $ff
	ei                                               ; $5fa7: $fb
	sbc  b                                           ; $5fa8: $98
	ld   h, [hl]                                     ; $5fa9: $66
	ld   b, e                                        ; $5faa: $43
	ld   b, h                                        ; $5fab: $44
	ld   de, $1111                                   ; $5fac: $11 $11 $11
	ld   c, a                                        ; $5faf: $4f
	rst  $30                                         ; $5fb0: $f7
	rst  $38                                         ; $5fb1: $ff
	rst  $38                                         ; $5fb2: $ff
	add  c                                           ; $5fb3: $81
	inc  de                                          ; $5fb4: $13
	ld   b, c                                        ; $5fb5: $41
	rla                                              ; $5fb6: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fb7: $cf
	rst  $38                                         ; $5fb8: $ff
	rst  $38                                         ; $5fb9: $ff
	rst  $38                                         ; $5fba: $ff
	ld   e, b                                        ; $5fbb: $58
	sub  [hl]                                        ; $5fbc: $96
	halt                                             ; $5fbd: $76
	ld   d, l                                        ; $5fbe: $55
	ld   b, c                                        ; $5fbf: $41
	ld   de, $1711                                   ; $5fc0: $11 $11 $17
	rst  $38                                         ; $5fc3: $ff
	ld   a, a                                        ; $5fc4: $7f
	rst  $38                                         ; $5fc5: $ff
	di                                               ; $5fc6: $f3
	ld   de, $1124                                   ; $5fc7: $11 $24 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fca: $cf
	rst  $38                                         ; $5fcb: $ff
	rst  $38                                         ; $5fcc: $ff
	rst  $38                                         ; $5fcd: $ff
	sub  c                                           ; $5fce: $91
	ld   l, c                                        ; $5fcf: $69
	sbc  d                                           ; $5fd0: $9a
	sbc  c                                           ; $5fd1: $99
	ld   d, h                                        ; $5fd2: $54
	ld   de, $1111                                   ; $5fd3: $11 $11 $11
	cp   a                                           ; $5fd6: $bf
	ld   hl, sp-$01                                  ; $5fd7: $f8 $ff
	cp   $11                                         ; $5fd9: $fe $11
	ld   [de], a                                     ; $5fdb: $12
	ld   h, c                                        ; $5fdc: $61
	cpl                                              ; $5fdd: $2f
	rst  $38                                         ; $5fde: $ff
	rst  $38                                         ; $5fdf: $ff
	cp   h                                           ; $5fe0: $bc
	di                                               ; $5fe1: $f3
	jr   jr_0b6_5fa1                                 ; $5fe2: $18 $bd

	jp   c, $2173                                    ; $5fe4: $da $73 $21

	ld   de, $1f11                                   ; $5fe7: $11 $11 $1f
	rst  $38                                         ; $5fea: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5feb: $cf
	db   $fd                                         ; $5fec: $fd
	ld   d, c                                        ; $5fed: $51
	ld   de, $1e87                                   ; $5fee: $11 $87 $1e
	rst  $38                                         ; $5ff1: $ff
	rst  $38                                         ; $5ff2: $ff
	add  $9a                                         ; $5ff3: $c6 $9a
	dec  d                                           ; $5ff5: $15
	xor  $fb                                         ; $5ff6: $ee $fb
	sub  h                                           ; $5ff8: $94
	ld   de, $1111                                   ; $5ff9: $11 $11 $11
	ld   e, $ff                                      ; $5ffc: $1e $ff
	adc  a                                           ; $5ffe: $8f
	ld   a, [$1171]                                  ; $5fff: $fa $71 $11
	ld   e, $2a                                      ; $6002: $1e $2a
	rst  $38                                         ; $6004: $ff
	rst  $38                                         ; $6005: $ff
	sub  $19                                         ; $6006: $d6 $19
	ld   b, h                                        ; $6008: $44
	rst  $28                                         ; $6009: $ef
	ld   sp, hl                                      ; $600a: $f9
	ld   [hl], l                                     ; $600b: $75
	ld   de, $1111                                   ; $600c: $11 $11 $11
	rra                                              ; $600f: $1f
	rst  $38                                         ; $6010: $ff
	ld   a, a                                        ; $6011: $7f
	ld   sp, hl                                      ; $6012: $f9
	ld   hl, $5f11                                   ; $6013: $21 $11 $5f
	ld   c, a                                        ; $6016: $4f
	rst  $38                                         ; $6017: $ff
	db   $fd                                         ; $6018: $fd
	jp   nz, Jump_0b6_672b                           ; $6019: $c2 $2b $67

	rst  $38                                         ; $601c: $ff
	sub  $52                                         ; $601d: $d6 $52
	ld   de, $1111                                   ; $601f: $11 $11 $11
	rra                                              ; $6022: $1f
	rst  $30                                         ; $6023: $f7
	rst  $28                                         ; $6024: $ef
	sub  $11                                         ; $6025: $d6 $11
	ld   de, $7ffb                                   ; $6027: $11 $fb $7f
	rst  $38                                         ; $602a: $ff
	db   $fc                                         ; $602b: $fc
	ld   d, c                                        ; $602c: $51
	xor  h                                           ; $602d: $ac
	ld   a, h                                        ; $602e: $7c
	db   $fd                                         ; $602f: $fd
	ld   h, e                                        ; $6030: $63
	ld   hl, $1111                                   ; $6031: $21 $11 $11
	inc  de                                          ; $6034: $13
	rst  $38                                         ; $6035: $ff
	ld   a, $fe                                      ; $6036: $3e $fe
	sub  c                                           ; $6038: $91
	ld   de, $741f                                   ; $6039: $11 $1f $74
	rst  $38                                         ; $603c: $ff
	rst  $38                                         ; $603d: $ff
	sub  $4f                                         ; $603e: $d6 $4f
	ret  c                                           ; $6040: $d8

	adc  e                                           ; $6041: $8b
	or   e                                           ; $6042: $b3
	ld   de, $1111                                   ; $6043: $11 $11 $11
	ld   de, $f1ff                                   ; $6046: $11 $ff $f1
	rst  $38                                         ; $6049: $ff
	and  $11                                         ; $604a: $e6 $11
	dec  e                                           ; $604c: $1d
	pop  af                                          ; $604d: $f1
	adc  a                                           ; $604e: $8f
	rst  $38                                         ; $604f: $ff
	jp   hl                                          ; $6050: $e9


	ld   e, [hl]                                     ; $6051: $5e
	ld   a, [$a699]                                  ; $6052: $fa $99 $a6
	ld   de, $1111                                   ; $6055: $11 $11 $11
	ld   de, $f1af                                   ; $6058: $11 $af $f1
	rst  $38                                         ; $605b: $ff
	adc  d                                           ; $605c: $8a
	ld   de, $f219                                   ; $605d: $11 $19 $f2
	ld   l, a                                        ; $6060: $6f
	rst  $28                                         ; $6061: $ef
	db   $fd                                         ; $6062: $fd
	ld   a, h                                        ; $6063: $7c
	cp   $a6                                         ; $6064: $fe $a6
	ld   h, h                                        ; $6066: $64
	ld   de, $1111                                   ; $6067: $11 $11 $11
	ld   de, $f9ff                                   ; $606a: $11 $ff $f9
	ld   a, [$1177]                                  ; $606d: $fa $77 $11
	dec  e                                           ; $6070: $1d
	di                                               ; $6071: $f3
	xor  l                                           ; $6072: $ad
	db   $dd                                         ; $6073: $dd
	db   $fc                                         ; $6074: $fc
	ld   a, a                                        ; $6075: $7f
	cp   $74                                         ; $6076: $fe $74
	ld   d, c                                        ; $6078: $51
	ld   de, $1111                                   ; $6079: $11 $11 $11
	inc  de                                          ; $607c: $13
	rst  $38                                         ; $607d: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $607e: $cf
	ei                                               ; $607f: $fb
	add  c                                           ; $6080: $81
	ld   de, $286c                                   ; $6081: $11 $6c $28
	db   $ed                                         ; $6084: $ed
	cp   [hl]                                        ; $6085: $be
	ei                                               ; $6086: $fb
	rst  $38                                         ; $6087: $ff
	call z, $1162                                    ; $6088: $cc $62 $11
	ld   de, $1111                                   ; $608b: $11 $11 $11
	rst  $38                                         ; $608e: $ff
	rst  $38                                         ; $608f: $ff
	rst  $38                                         ; $6090: $ff
	cp   b                                           ; $6091: $b8
	ld   de, $3228                                   ; $6092: $11 $28 $32
	cp   h                                           ; $6095: $bc
	cp   l                                           ; $6096: $bd
	db   $fd                                         ; $6097: $fd
	rst  $38                                         ; $6098: $ff
	db   $fc                                         ; $6099: $fc
	or   l                                           ; $609a: $b5
	ld   de, $1111                                   ; $609b: $11 $11 $11
	ld   de, $ffaf                                   ; $609e: $11 $af $ff
	rst  $38                                         ; $60a1: $ff
	ei                                               ; $60a2: $fb
	ld   sp, $5129                                   ; $60a3: $31 $29 $51
	ld   a, d                                        ; $60a6: $7a
	xor  d                                           ; $60a7: $aa
	call $ffef                                       ; $60a8: $cd $ef $ff
	rst  $10                                         ; $60ab: $d7
	ld   b, c                                        ; $60ac: $41
	ld   de, $1111                                   ; $60ad: $11 $11 $11
	rst  $28                                         ; $60b0: $ef
	rst  $38                                         ; $60b1: $ff
	rst  $38                                         ; $60b2: $ff
	ei                                               ; $60b3: $fb
	ld   d, c                                        ; $60b4: $51
	ld   h, [hl]                                     ; $60b5: $66
	dec  h                                           ; $60b6: $25
	adc  c                                           ; $60b7: $89
	ld   [hl], a                                     ; $60b8: $77
	cp   l                                           ; $60b9: $bd
	rst  $28                                         ; $60ba: $ef
	rst  $38                                         ; $60bb: $ff
	ret                                              ; $60bc: $c9


	ld   d, c                                        ; $60bd: $51
	ld   de, $1211                                   ; $60be: $11 $11 $12
	db   $ed                                         ; $60c1: $ed
	rst  $38                                         ; $60c2: $ff
	rst  $38                                         ; $60c3: $ff
	rst  $38                                         ; $60c4: $ff
	halt                                             ; $60c5: $76
	ld   [hl], e                                     ; $60c6: $73
	ld   d, a                                        ; $60c7: $57
	ld   d, h                                        ; $60c8: $54
	ld   l, d                                        ; $60c9: $6a
	call z, $fded                                    ; $60ca: $cc $ed $fd
	add  l                                           ; $60cd: $85
	ld   de, $1111                                   ; $60ce: $11 $11 $11
	ld   [hl], $9f                                   ; $60d1: $36 $9f
	rst  $38                                         ; $60d3: $ff
	rst  $38                                         ; $60d4: $ff
	cp   $d8                                         ; $60d5: $fe $d8
	ld   a, c                                        ; $60d7: $79
	ld   [hl], e                                     ; $60d8: $73
	ld   d, l                                        ; $60d9: $55
	ld   d, a                                        ; $60da: $57
	sbc  e                                           ; $60db: $9b
	call Call_0b6_41c7                               ; $60dc: $cd $c7 $41
	ld   de, $2111                                   ; $60df: $11 $11 $21
	sbc  a                                           ; $60e2: $9f
	rst  $38                                         ; $60e3: $ff
	rst  $38                                         ; $60e4: $ff
	db   $fd                                         ; $60e5: $fd
	cp   e                                           ; $60e6: $bb
	call Call_0b6_7698                               ; $60e7: $cd $98 $76
	ld   h, h                                        ; $60ea: $64
	ld   d, [hl]                                     ; $60eb: $56
	xor  d                                           ; $60ec: $aa
	ld   h, l                                        ; $60ed: $65
	ld   b, h                                        ; $60ee: $44
	ld   hl, $1525                                   ; $60ef: $21 $25 $15
	cp   e                                           ; $60f2: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60f3: $cf
	db   $fc                                         ; $60f4: $fc
	db   $ed                                         ; $60f5: $ed
	cp   h                                           ; $60f6: $bc
	cp   b                                           ; $60f7: $b8
	ld   a, d                                        ; $60f8: $7a
	xor  b                                           ; $60f9: $a8
	halt                                             ; $60fa: $76
	ld   l, b                                        ; $60fb: $68
	ld   [hl], l                                     ; $60fc: $75
	ld   b, h                                        ; $60fd: $44
	ld   d, h                                        ; $60fe: $54
	ld   de, $6876                                   ; $60ff: $11 $76 $68
	xor  e                                           ; $6102: $ab
	call $abaa                                       ; $6103: $cd $aa $ab
	cp   h                                           ; $6106: $bc
	xor  d                                           ; $6107: $aa
	sbc  b                                           ; $6108: $98
	ld   h, a                                        ; $6109: $67
	ld   [hl], a                                     ; $610a: $77
	adc  b                                           ; $610b: $88
	sbc  b                                           ; $610c: $98
	ld   h, l                                        ; $610d: $65
	ld   h, a                                        ; $610e: $67
	ld   b, e                                        ; $610f: $43
	ld   l, d                                        ; $6110: $6a
	adc  b                                           ; $6111: $88
	sub  a                                           ; $6112: $97
	sbc  d                                           ; $6113: $9a
	add  a                                           ; $6114: $87
	add  a                                           ; $6115: $87
	adc  c                                           ; $6116: $89
	sbc  c                                           ; $6117: $99
	xor  d                                           ; $6118: $aa
	xor  c                                           ; $6119: $a9
	adc  c                                           ; $611a: $89
	adc  c                                           ; $611b: $89
	ld   [hl], a                                     ; $611c: $77
	sbc  b                                           ; $611d: $98
	ld   a, b                                        ; $611e: $78
	sbc  d                                           ; $611f: $9a
	halt                                             ; $6120: $76
	sbc  e                                           ; $6121: $9b
	sub  a                                           ; $6122: $97
	ld   h, a                                        ; $6123: $67
	halt                                             ; $6124: $76
	ld   d, l                                        ; $6125: $55
	ld   [hl], a                                     ; $6126: $77
	ld   h, a                                        ; $6127: $67
	sbc  e                                           ; $6128: $9b
	xor  c                                           ; $6129: $a9
	sbc  e                                           ; $612a: $9b
	cp   b                                           ; $612b: $b8
	sbc  b                                           ; $612c: $98
	adc  b                                           ; $612d: $88
	ld   [hl], l                                     ; $612e: $75
	ld   a, c                                        ; $612f: $79
	xor  c                                           ; $6130: $a9
	adc  c                                           ; $6131: $89
	sub  [hl]                                        ; $6132: $96
	ld   a, c                                        ; $6133: $79
	add  a                                           ; $6134: $87
	adc  b                                           ; $6135: $88
	halt                                             ; $6136: $76
	ld   a, c                                        ; $6137: $79
	add  a                                           ; $6138: $87
	adc  c                                           ; $6139: $89
	xor  d                                           ; $613a: $aa
	sbc  b                                           ; $613b: $98
	sbc  b                                           ; $613c: $98
	halt                                             ; $613d: $76
	ld   h, a                                        ; $613e: $67
	ld   [hl], a                                     ; $613f: $77
	ld   a, b                                        ; $6140: $78
	xor  d                                           ; $6141: $aa
	adc  c                                           ; $6142: $89
	sbc  c                                           ; $6143: $99
	sub  a                                           ; $6144: $97
	adc  c                                           ; $6145: $89
	add  a                                           ; $6146: $87
	ld   a, b                                        ; $6147: $78
	adc  c                                           ; $6148: $89
	sbc  c                                           ; $6149: $99
	add  a                                           ; $614a: $87
	sbc  c                                           ; $614b: $99
	adc  b                                           ; $614c: $88
	adc  c                                           ; $614d: $89
	sub  [hl]                                        ; $614e: $96
	ld   l, b                                        ; $614f: $68
	add  [hl]                                        ; $6150: $86
	ld   l, b                                        ; $6151: $68
	sbc  c                                           ; $6152: $99
	ld   a, b                                        ; $6153: $78
	xor  b                                           ; $6154: $a8
	sbc  b                                           ; $6155: $98
	adc  b                                           ; $6156: $88
	ld   [hl], a                                     ; $6157: $77
	ld   a, b                                        ; $6158: $78
	add  a                                           ; $6159: $87
	sbc  c                                           ; $615a: $99
	sbc  b                                           ; $615b: $98
	ld   a, b                                        ; $615c: $78
	xor  b                                           ; $615d: $a8
	add  a                                           ; $615e: $87
	ld   a, b                                        ; $615f: $78
	ld   [hl], a                                     ; $6160: $77
	ld   [hl], a                                     ; $6161: $77
	sub  a                                           ; $6162: $97
	ld   a, b                                        ; $6163: $78
	sbc  c                                           ; $6164: $99
	ld   a, b                                        ; $6165: $78
	sbc  c                                           ; $6166: $99
	ld   [hl], a                                     ; $6167: $77
	adc  c                                           ; $6168: $89
	add  a                                           ; $6169: $87
	adc  c                                           ; $616a: $89
	ld   [hl], a                                     ; $616b: $77
	adc  b                                           ; $616c: $88
	adc  c                                           ; $616d: $89
	adc  b                                           ; $616e: $88
	sbc  b                                           ; $616f: $98
	add  a                                           ; $6170: $87
	ld   [hl], a                                     ; $6171: $77
	adc  b                                           ; $6172: $88
	adc  b                                           ; $6173: $88
	adc  b                                           ; $6174: $88
	adc  b                                           ; $6175: $88
	adc  b                                           ; $6176: $88
	adc  b                                           ; $6177: $88
	adc  b                                           ; $6178: $88
	adc  c                                           ; $6179: $89
	sbc  b                                           ; $617a: $98
	adc  b                                           ; $617b: $88
	ld   [hl], a                                     ; $617c: $77
	ld   [hl], a                                     ; $617d: $77
	adc  b                                           ; $617e: $88
	sbc  b                                           ; $617f: $98
	adc  c                                           ; $6180: $89
	adc  c                                           ; $6181: $89
	adc  b                                           ; $6182: $88
	add  a                                           ; $6183: $87
	ld   [hl], a                                     ; $6184: $77
	adc  b                                           ; $6185: $88
	adc  b                                           ; $6186: $88
	adc  c                                           ; $6187: $89
	adc  b                                           ; $6188: $88
	adc  b                                           ; $6189: $88
	adc  b                                           ; $618a: $88
	adc  b                                           ; $618b: $88
	adc  b                                           ; $618c: $88
	add  a                                           ; $618d: $87
	ld   a, b                                        ; $618e: $78
	ld   [hl], a                                     ; $618f: $77
	adc  b                                           ; $6190: $88
	adc  b                                           ; $6191: $88
	adc  c                                           ; $6192: $89
	sbc  c                                           ; $6193: $99
	sbc  b                                           ; $6194: $98
	ld   [hl], a                                     ; $6195: $77
	ld   [hl], a                                     ; $6196: $77
	ld   [hl], a                                     ; $6197: $77
	adc  c                                           ; $6198: $89
	sbc  c                                           ; $6199: $99
	sbc  b                                           ; $619a: $98
	adc  b                                           ; $619b: $88
	adc  b                                           ; $619c: $88
	adc  b                                           ; $619d: $88
	adc  b                                           ; $619e: $88
	adc  b                                           ; $619f: $88
	adc  b                                           ; $61a0: $88
	adc  b                                           ; $61a1: $88
	adc  b                                           ; $61a2: $88
	sbc  c                                           ; $61a3: $99
	sbc  b                                           ; $61a4: $98
	adc  b                                           ; $61a5: $88
	add  a                                           ; $61a6: $87
	ld   [hl], a                                     ; $61a7: $77
	ld   [hl], a                                     ; $61a8: $77
	ld   a, b                                        ; $61a9: $78

Call_0b6_61aa:
	adc  c                                           ; $61aa: $89
	adc  b                                           ; $61ab: $88
	adc  b                                           ; $61ac: $88
	adc  b                                           ; $61ad: $88
	adc  b                                           ; $61ae: $88
	ld   [hl], a                                     ; $61af: $77
	adc  b                                           ; $61b0: $88
	adc  b                                           ; $61b1: $88
	adc  b                                           ; $61b2: $88
	adc  b                                           ; $61b3: $88
	adc  c                                           ; $61b4: $89
	adc  b                                           ; $61b5: $88
	adc  b                                           ; $61b6: $88
	ld   [hl], a                                     ; $61b7: $77
	add  a                                           ; $61b8: $87
	ld   a, b                                        ; $61b9: $78
	adc  b                                           ; $61ba: $88
	adc  b                                           ; $61bb: $88
	adc  c                                           ; $61bc: $89
	sbc  b                                           ; $61bd: $98
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
	ld   [hl], a                                     ; $61c9: $77
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
	ld   a, b                                        ; $61dc: $78
	adc  b                                           ; $61dd: $88
	adc  b                                           ; $61de: $88
	sbc  b                                           ; $61df: $98
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
	sbc  c                                           ; $61f0: $99
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
	adc  c                                           ; $6200: $89
	sbc  b                                           ; $6201: $98
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

jr_0b6_6285:
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
	sbc  c                                           ; $62a8: $99
	ld   h, a                                        ; $62a9: $67
	add  a                                           ; $62aa: $87
	sbc  b                                           ; $62ab: $98
	ld   a, b                                        ; $62ac: $78
	ld   a, c                                        ; $62ad: $79
	add  l                                           ; $62ae: $85
	ret                                              ; $62af: $c9


	dec  a                                           ; $62b0: $3d
	ld   d, a                                        ; $62b1: $57
	db   $d3                                         ; $62b2: $d3
	sbc  d                                           ; $62b3: $9a
	ld   c, d                                        ; $62b4: $4a
	sub  [hl]                                        ; $62b5: $96
	and  $5c                                         ; $62b6: $e6 $5c
	add  hl, sp                                      ; $62b8: $39
	sub  l                                           ; $62b9: $95
	sub  $8a                                         ; $62ba: $d6 $8a
	ld   l, b                                        ; $62bc: $68
	add  [hl]                                        ; $62bd: $86
	and  a                                           ; $62be: $a7
	adc  c                                           ; $62bf: $89
	ld   l, b                                        ; $62c0: $68
	adc  b                                           ; $62c1: $88
	adc  b                                           ; $62c2: $88
	adc  c                                           ; $62c3: $89
	add  a                                           ; $62c4: $87
	sbc  b                                           ; $62c5: $98
	adc  b                                           ; $62c6: $88
	and  a                                           ; $62c7: $a7
	ld   a, c                                        ; $62c8: $79
	adc  b                                           ; $62c9: $88
	add  a                                           ; $62ca: $87
	sbc  c                                           ; $62cb: $99
	add  a                                           ; $62cc: $87
	ld   [hl], a                                     ; $62cd: $77
	ld   a, c                                        ; $62ce: $79
	ld   a, b                                        ; $62cf: $78
	and  a                                           ; $62d0: $a7
	add  a                                           ; $62d1: $87
	ld   a, b                                        ; $62d2: $78
	adc  b                                           ; $62d3: $88
	add  a                                           ; $62d4: $87
	sbc  c                                           ; $62d5: $99
	ld   a, c                                        ; $62d6: $79
	add  a                                           ; $62d7: $87
	sub  a                                           ; $62d8: $97
	sbc  c                                           ; $62d9: $99
	adc  c                                           ; $62da: $89
	ld   [hl], a                                     ; $62db: $77
	ld   [hl], a                                     ; $62dc: $77
	sbc  b                                           ; $62dd: $98
	sbc  b                                           ; $62de: $98
	adc  b                                           ; $62df: $88
	ld   l, c                                        ; $62e0: $69
	ld   a, c                                        ; $62e1: $79
	sbc  b                                           ; $62e2: $98
	adc  b                                           ; $62e3: $88
	ld   l, b                                        ; $62e4: $68
	add  [hl]                                        ; $62e5: $86
	sub  a                                           ; $62e6: $97
	ld   l, b                                        ; $62e7: $68
	adc  h                                           ; $62e8: $8c
	ld   a, b                                        ; $62e9: $78
	add  a                                           ; $62ea: $87
	or   [hl]                                        ; $62eb: $b6
	sbc  c                                           ; $62ec: $99
	ld   a, d                                        ; $62ed: $7a
	ld   h, [hl]                                     ; $62ee: $66
	sbc  b                                           ; $62ef: $98
	ld   [hl], a                                     ; $62f0: $77
	ld   [hl], a                                     ; $62f1: $77
	ld   l, e                                        ; $62f2: $6b
	halt                                             ; $62f3: $76
	and  h                                           ; $62f4: $a4
	sbc  b                                           ; $62f5: $98
	ld   d, a                                        ; $62f6: $57
	xor  [hl]                                        ; $62f7: $ae
	ld   l, b                                        ; $62f8: $68
	ld   e, e                                        ; $62f9: $5b
	db   $f4                                         ; $62fa: $f4
	rst  $10                                         ; $62fb: $d7
	adc  c                                           ; $62fc: $89
	add  hl, hl                                      ; $62fd: $29
	ret                                              ; $62fe: $c9


	ld   e, e                                        ; $62ff: $5b
	jr   z, jr_0b6_6285                              ; $6300: $28 $83

	or   h                                           ; $6302: $b4
	sub  [hl]                                        ; $6303: $96
	adc  b                                           ; $6304: $88
	ld   a, c                                        ; $6305: $79
	ld   a, c                                        ; $6306: $79
	adc  c                                           ; $6307: $89
	adc  c                                           ; $6308: $89
	ld   a, d                                        ; $6309: $7a
	adc  b                                           ; $630a: $88
	sbc  b                                           ; $630b: $98
	sub  a                                           ; $630c: $97
	adc  b                                           ; $630d: $88
	add  [hl]                                        ; $630e: $86
	ld   [hl], a                                     ; $630f: $77
	adc  b                                           ; $6310: $88
	ld   c, b                                        ; $6311: $48
	adc  c                                           ; $6312: $89
	ld   e, c                                        ; $6313: $59
	xor  c                                           ; $6314: $a9
	and  a                                           ; $6315: $a7
	sub  [hl]                                        ; $6316: $96
	xor  c                                           ; $6317: $a9
	adc  c                                           ; $6318: $89
	adc  b                                           ; $6319: $88
	adc  c                                           ; $631a: $89
	ld   l, e                                        ; $631b: $6b
	ld   l, c                                        ; $631c: $69
	add  a                                           ; $631d: $87
	sub  a                                           ; $631e: $97
	sub  [hl]                                        ; $631f: $96
	adc  b                                           ; $6320: $88
	ld   a, b                                        ; $6321: $78
	adc  b                                           ; $6322: $88
	adc  d                                           ; $6323: $8a
	ld   a, b                                        ; $6324: $78
	adc  b                                           ; $6325: $88
	add  a                                           ; $6326: $87
	sbc  b                                           ; $6327: $98
	halt                                             ; $6328: $76
	ld   a, c                                        ; $6329: $79
	ld   [hl], a                                     ; $632a: $77
	adc  c                                           ; $632b: $89
	sbc  d                                           ; $632c: $9a
	adc  d                                           ; $632d: $8a
	sbc  b                                           ; $632e: $98
	and  [hl]                                        ; $632f: $a6
	add  a                                           ; $6330: $87
	ld   a, b                                        ; $6331: $78
	add  a                                           ; $6332: $87
	add  a                                           ; $6333: $87
	ld   [hl], a                                     ; $6334: $77
	ld   a, b                                        ; $6335: $78
	ld   a, c                                        ; $6336: $79
	sub  a                                           ; $6337: $97
	sbc  d                                           ; $6338: $9a
	add  a                                           ; $6339: $87
	sub  [hl]                                        ; $633a: $96
	adc  b                                           ; $633b: $88
	ld   c, c                                        ; $633c: $49
	and  l                                           ; $633d: $a5
	and  [hl]                                        ; $633e: $a6
	ld   a, d                                        ; $633f: $7a
	ld   l, c                                        ; $6340: $69
	sbc  d                                           ; $6341: $9a
	sbc  c                                           ; $6342: $99
	sbc  b                                           ; $6343: $98
	sub  l                                           ; $6344: $95
	and  l                                           ; $6345: $a5
	ld   a, b                                        ; $6346: $78
	or   a                                           ; $6347: $b7
	ld   e, e                                        ; $6348: $5b
	ld   l, c                                        ; $6349: $69
	ld   c, b                                        ; $634a: $48
	and  h                                           ; $634b: $a4
	sbc  c                                           ; $634c: $99
	adc  b                                           ; $634d: $88
	and  [hl]                                        ; $634e: $a6
	ret                                              ; $634f: $c9


	ld   e, [hl]                                     ; $6350: $5e
	ld   c, d                                        ; $6351: $4a
	and  l                                           ; $6352: $a5
	or   a                                           ; $6353: $b7
	sbc  b                                           ; $6354: $98
	add  c                                           ; $6355: $81
	add  $4d                                         ; $6356: $c6 $4d
	ld   e, e                                        ; $6358: $5b
	ld   l, d                                        ; $6359: $6a
	adc  b                                           ; $635a: $88
	add  l                                           ; $635b: $85
	push de                                          ; $635c: $d5
	adc  d                                           ; $635d: $8a
	ld   h, [hl]                                     ; $635e: $66
	and  l                                           ; $635f: $a5
	ld   a, l                                        ; $6360: $7d
	dec  e                                           ; $6361: $1d
	and  d                                           ; $6362: $a2
	add  $68                                         ; $6363: $c6 $68
	sub  a                                           ; $6365: $97
	xor  d                                           ; $6366: $aa
	ld   a, c                                        ; $6367: $79
	adc  c                                           ; $6368: $89
	sub  [hl]                                        ; $6369: $96
	sbc  d                                           ; $636a: $9a
	ld   e, d                                        ; $636b: $5a
	ld   b, [hl]                                     ; $636c: $46
	and  [hl]                                        ; $636d: $a6
	and  [hl]                                        ; $636e: $a6
	or   l                                           ; $636f: $b5
	sbc  e                                           ; $6370: $9b
	ld   c, h                                        ; $6371: $4c
	ld   e, b                                        ; $6372: $58
	and  a                                           ; $6373: $a7
	or   l                                           ; $6374: $b5
	or   a                                           ; $6375: $b7
	adc  c                                           ; $6376: $89
	ld   e, d                                        ; $6377: $5a
	dec  sp                                          ; $6378: $3b
	add  e                                           ; $6379: $83
	rst  ToBoot                                         ; $637a: $c7
	ld   a, b                                        ; $637b: $78
	or   a                                           ; $637c: $b7
	ld   l, [hl]                                     ; $637d: $6e
	ld   l, b                                        ; $637e: $68
	sub  l                                           ; $637f: $95
	and  [hl]                                        ; $6380: $a6
	sbc  b                                           ; $6381: $98
	ld   a, d                                        ; $6382: $7a
	ld   c, e                                        ; $6383: $4b
	and  l                                           ; $6384: $a5
	adc  c                                           ; $6385: $89
	ld   l, b                                        ; $6386: $68
	add  a                                           ; $6387: $87
	sub  l                                           ; $6388: $95
	sbc  b                                           ; $6389: $98
	ld   e, c                                        ; $638a: $59
	sub  [hl]                                        ; $638b: $96
	ld   a, h                                        ; $638c: $7c
	ld   e, c                                        ; $638d: $59
	sub  a                                           ; $638e: $97
	or   [hl]                                        ; $638f: $b6
	ld   a, c                                        ; $6390: $79
	add  [hl]                                        ; $6391: $86
	ld   l, c                                        ; $6392: $69
	add  a                                           ; $6393: $87
	ld   a, b                                        ; $6394: $78
	add  a                                           ; $6395: $87
	sbc  b                                           ; $6396: $98
	adc  c                                           ; $6397: $89
	ld   [hl], a                                     ; $6398: $77
	sub  [hl]                                        ; $6399: $96
	ld   l, d                                        ; $639a: $6a
	ld   l, c                                        ; $639b: $69
	ld   l, c                                        ; $639c: $69
	ld   [hl], a                                     ; $639d: $77
	and  [hl]                                        ; $639e: $a6
	or   l                                           ; $639f: $b5
	cp   d                                           ; $63a0: $ba
	ld   c, l                                        ; $63a1: $4d
	add  l                                           ; $63a2: $85
	sbc  e                                           ; $63a3: $9b
	ld   [hl], l                                     ; $63a4: $75
	sub  [hl]                                        ; $63a5: $96
	ld   [hl], a                                     ; $63a6: $77
	ld   c, e                                        ; $63a7: $4b
	ld   l, b                                        ; $63a8: $68
	and  l                                           ; $63a9: $a5
	or   a                                           ; $63aa: $b7
	ld   a, d                                        ; $63ab: $7a
	sub  a                                           ; $63ac: $97
	adc  c                                           ; $63ad: $89
	ld   l, d                                        ; $63ae: $6a
	add  a                                           ; $63af: $87
	or   a                                           ; $63b0: $b7
	and  a                                           ; $63b1: $a7
	ld   a, d                                        ; $63b2: $7a
	ld   a, d                                        ; $63b3: $7a
	ld   a, c                                        ; $63b4: $79
	sub  l                                           ; $63b5: $95
	adc  c                                           ; $63b6: $89
	ld   h, a                                        ; $63b7: $67
	halt                                             ; $63b8: $76
	halt                                             ; $63b9: $76
	ld   l, b                                        ; $63ba: $68
	halt                                             ; $63bb: $76
	sub  [hl]                                        ; $63bc: $96
	adc  d                                           ; $63bd: $8a
	ld   l, d                                        ; $63be: $6a
	xor  c                                           ; $63bf: $a9
	jp   z, $b8bc                                    ; $63c0: $ca $bc $b8

	xor  d                                           ; $63c3: $aa
	ld   l, b                                        ; $63c4: $68
	ld   h, l                                        ; $63c5: $65
	ld   b, h                                        ; $63c6: $44
	ld   b, e                                        ; $63c7: $43
	ld   [hl-], a                                    ; $63c8: $32
	inc  sp                                          ; $63c9: $33
	dec  [hl]                                        ; $63ca: $35
	ld   [hl], a                                     ; $63cb: $77
	cp   e                                           ; $63cc: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63cd: $cf
	rst  $28                                         ; $63ce: $ef
	rst  $38                                         ; $63cf: $ff
	rst  $38                                         ; $63d0: $ff
	db   $ed                                         ; $63d1: $ed
	and  [hl]                                        ; $63d2: $a6
	ld   h, c                                        ; $63d3: $61
	inc  h                                           ; $63d4: $24
	ld   de, $1241                                   ; $63d5: $11 $41 $12
	dec  d                                           ; $63d8: $15
	ld   a, [hl-]                                    ; $63d9: $3a
	xor  h                                           ; $63da: $ac
	rst  $38                                         ; $63db: $ff
	rst  $38                                         ; $63dc: $ff
	rst  $38                                         ; $63dd: $ff
	rst  $38                                         ; $63de: $ff
	db   $fc                                         ; $63df: $fc
	or   a                                           ; $63e0: $b7
	ld   d, d                                        ; $63e1: $52
	ld   de, $1311                                   ; $63e2: $11 $11 $13
	ld   de, $5511                                   ; $63e5: $11 $11 $55
	sbc  h                                           ; $63e8: $9c
	cp   $ff                                         ; $63e9: $fe $ff
	rst  $38                                         ; $63eb: $ff
	rst  $38                                         ; $63ec: $ff
	rst  $38                                         ; $63ed: $ff
	jp   c, $1165                                    ; $63ee: $da $65 $11

	ld   hl, $1111                                   ; $63f1: $21 $11 $11
	ld   de, $4915                                   ; $63f4: $11 $15 $49
	sbc  $ff                                         ; $63f7: $de $ff
	rst  $38                                         ; $63f9: $ff
	rst  $38                                         ; $63fa: $ff
	rst  $38                                         ; $63fb: $ff
	db   $fc                                         ; $63fc: $fc
	add  [hl]                                        ; $63fd: $86
	ld   b, c                                        ; $63fe: $41
	inc  d                                           ; $63ff: $14
	ld   de, $1121                                   ; $6400: $11 $21 $11
	ld   [de], a                                     ; $6403: $12
	add  hl, de                                      ; $6404: $19
	call c, $ffff                                    ; $6405: $dc $ff $ff
	rst  $38                                         ; $6408: $ff
	rst  $38                                         ; $6409: $ff
	rst  $38                                         ; $640a: $ff
	and  l                                           ; $640b: $a5
	ld   [hl], c                                     ; $640c: $71
	ld   d, $11                                      ; $640d: $16 $11
	ld   sp, $1111                                   ; $640f: $31 $11 $11
	inc  [hl]                                        ; $6412: $34
	call z, $ffff                                    ; $6413: $cc $ff $ff
	rst  $38                                         ; $6416: $ff
	rst  $38                                         ; $6417: $ff
	rst  $38                                         ; $6418: $ff
	and  $71                                         ; $6419: $e6 $71
	inc  de                                          ; $641b: $13
	ld   de, $1111                                   ; $641c: $11 $11 $11
	ld   de, $9d22                                   ; $641f: $11 $22 $9d
	rst  $28                                         ; $6422: $ef
	rst  $38                                         ; $6423: $ff
	rst  $38                                         ; $6424: $ff
	rst  $38                                         ; $6425: $ff
	rst  $38                                         ; $6426: $ff
	ld   a, [$1175]                                  ; $6427: $fa $75 $11
	ld   d, c                                        ; $642a: $51
	dec  d                                           ; $642b: $15
	ld   de, $1111                                   ; $642c: $11 $11 $11
	adc  e                                           ; $642f: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6430: $cf
	rst  $38                                         ; $6431: $ff
	rst  $38                                         ; $6432: $ff
	rst  $38                                         ; $6433: $ff
	rst  $38                                         ; $6434: $ff
	cp   $7a                                         ; $6435: $fe $7a
	ld   de, $1361                                   ; $6437: $11 $61 $13
	ld   de, $1111                                   ; $643a: $11 $11 $11
	dec  sp                                          ; $643d: $3b
	xor  a                                           ; $643e: $af
	rst  $38                                         ; $643f: $ff
	rst  $38                                         ; $6440: $ff
	rst  $38                                         ; $6441: $ff
	rst  $38                                         ; $6442: $ff
	rst  $38                                         ; $6443: $ff
	sbc  h                                           ; $6444: $9c
	ld   h, c                                        ; $6445: $61
	inc  d                                           ; $6446: $14
	ld   de, $1161                                   ; $6447: $11 $61 $11
	ld   de, $b917                                   ; $644a: $11 $17 $b9
	rst  $38                                         ; $644d: $ff
	rst  $38                                         ; $644e: $ff
	rst  $38                                         ; $644f: $ff
	rst  $38                                         ; $6450: $ff
	rst  $38                                         ; $6451: $ff
	rst  $30                                         ; $6452: $f7
	pop  de                                          ; $6453: $d1
	inc  de                                          ; $6454: $13
	ld   de, $1114                                   ; $6455: $11 $14 $11
	ld   de, $aa11                                   ; $6458: $11 $11 $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $645b: $cf
	rst  $38                                         ; $645c: $ff
	rst  $38                                         ; $645d: $ff
	rst  $38                                         ; $645e: $ff
	rst  $38                                         ; $645f: $ff
	ei                                               ; $6460: $fb
	xor  h                                           ; $6461: $ac
	ld   de, $1151                                   ; $6462: $11 $51 $11
	ld   de, $1111                                   ; $6465: $11 $11 $11
	inc  e                                           ; $6468: $1c
	adc  a                                           ; $6469: $8f
	rst  $38                                         ; $646a: $ff
	rst  $38                                         ; $646b: $ff
	rst  $38                                         ; $646c: $ff
	rst  $38                                         ; $646d: $ff
	rst  $38                                         ; $646e: $ff
	adc  h                                           ; $646f: $8c
	sub  c                                           ; $6470: $91
	inc  de                                          ; $6471: $13
	ld   de, $1121                                   ; $6472: $11 $21 $11
	ld   de, $e812                                   ; $6475: $11 $12 $e8
	rst  $38                                         ; $6478: $ff
	rst  $38                                         ; $6479: $ff
	rst  $38                                         ; $647a: $ff
	rst  $38                                         ; $647b: $ff
	rst  $38                                         ; $647c: $ff
	ld   hl, sp-$3a                                  ; $647d: $f8 $c6
	ld   de, $1321                                   ; $647f: $11 $21 $13
	ld   de, $1111                                   ; $6482: $11 $11 $11
	ld   c, a                                        ; $6485: $4f
	adc  a                                           ; $6486: $8f

Jump_0b6_6487:
	rst  $38                                         ; $6487: $ff
	rst  $38                                         ; $6488: $ff
	rst  $38                                         ; $6489: $ff
	rst  $38                                         ; $648a: $ff
	rst  $38                                         ; $648b: $ff
	adc  l                                           ; $648c: $8d
	ld   d, c                                        ; $648d: $51
	inc  de                                          ; $648e: $13
	ld   de, $1141                                   ; $648f: $11 $41 $11
	ld   de, $f714                                   ; $6492: $11 $14 $f7
	rst  $38                                         ; $6495: $ff
	rst  $38                                         ; $6496: $ff
	rst  $38                                         ; $6497: $ff
	rst  $38                                         ; $6498: $ff
	rst  $38                                         ; $6499: $ff
	ld   hl, sp-$1c                                  ; $649a: $f8 $e4
	ld   de, $1321                                   ; $649c: $11 $21 $13
	ld   de, $1111                                   ; $649f: $11 $11 $11
	ld   e, a                                        ; $64a2: $5f
	ld   a, a                                        ; $64a3: $7f
	rst  $38                                         ; $64a4: $ff
	rst  $38                                         ; $64a5: $ff
	rst  $38                                         ; $64a6: $ff

Call_0b6_64a7:
	rst  $38                                         ; $64a7: $ff

Call_0b6_64a8:
	rst  $38                                         ; $64a8: $ff
	adc  [hl]                                        ; $64a9: $8e
	ld   d, c                                        ; $64aa: $51
	inc  de                                          ; $64ab: $13
	ld   de, $1121                                   ; $64ac: $11 $21 $11
	ld   de, $e714                                   ; $64af: $11 $14 $e7
	rst  $38                                         ; $64b2: $ff
	rst  $38                                         ; $64b3: $ff
	rst  $38                                         ; $64b4: $ff
	rst  $38                                         ; $64b5: $ff
	rst  $38                                         ; $64b6: $ff
	ld   sp, hl                                      ; $64b7: $f9
	db   $e4                                         ; $64b8: $e4
	ld   de, $1121                                   ; $64b9: $11 $21 $11
	ld   de, $1111                                   ; $64bc: $11 $11 $11
	ld   c, a                                        ; $64bf: $4f
	ld   a, a                                        ; $64c0: $7f
	rst  $38                                         ; $64c1: $ff
	rst  $38                                         ; $64c2: $ff
	rst  $38                                         ; $64c3: $ff
	rst  $38                                         ; $64c4: $ff
	rst  $38                                         ; $64c5: $ff
	adc  [hl]                                        ; $64c6: $8e
	ld   h, c                                        ; $64c7: $61
	ld   [de], a                                     ; $64c8: $12
	ld   de, $1111                                   ; $64c9: $11 $11 $11
	ld   de, $f813                                   ; $64cc: $11 $13 $f8
	rst  $38                                         ; $64cf: $ff
	rst  $38                                         ; $64d0: $ff
	rst  $38                                         ; $64d1: $ff
	rst  $38                                         ; $64d2: $ff
	rst  $38                                         ; $64d3: $ff
	ld   sp, hl                                      ; $64d4: $f9
	rst  ToBoot                                         ; $64d5: $c7
	ld   de, $1121                                   ; $64d6: $11 $21 $11
	ld   de, $1111                                   ; $64d9: $11 $11 $11
	cpl                                              ; $64dc: $2f
	sbc  l                                           ; $64dd: $9d
	rst  $38                                         ; $64de: $ff
	rst  $38                                         ; $64df: $ff
	rst  $38                                         ; $64e0: $ff
	rst  $38                                         ; $64e1: $ff
	rst  $38                                         ; $64e2: $ff
	sbc  h                                           ; $64e3: $9c
	ld   [hl], c                                     ; $64e4: $71
	ld   [de], a                                     ; $64e5: $12
	ld   de, $1111                                   ; $64e6: $11 $11 $11
	ld   de, $f812                                   ; $64e9: $11 $12 $f8
	rst  JumpTable                                         ; $64ec: $df
	rst  $38                                         ; $64ed: $ff
	rst  $38                                         ; $64ee: $ff
	rst  $38                                         ; $64ef: $ff
	rst  $38                                         ; $64f0: $ff
	ld   sp, hl                                      ; $64f1: $f9
	rst  ToBoot                                         ; $64f2: $c7
	ld   de, $1121                                   ; $64f3: $11 $21 $11
	ld   de, $1111                                   ; $64f6: $11 $11 $11
	ld   c, a                                        ; $64f9: $4f
	adc  [hl]                                        ; $64fa: $8e
	rst  $38                                         ; $64fb: $ff
	rst  $38                                         ; $64fc: $ff
	rst  $38                                         ; $64fd: $ff
	rst  $38                                         ; $64fe: $ff
	rst  $38                                         ; $64ff: $ff
	adc  l                                           ; $6500: $8d
	ld   h, c                                        ; $6501: $61
	inc  de                                          ; $6502: $13
	ld   de, $1111                                   ; $6503: $11 $11 $11
	ld   de, $f716                                   ; $6506: $11 $16 $f7
	rst  $38                                         ; $6509: $ff
	rst  $38                                         ; $650a: $ff
	rst  $38                                         ; $650b: $ff
	rst  $38                                         ; $650c: $ff
	rst  $38                                         ; $650d: $ff
	rst  $20                                         ; $650e: $e7
	db   $e3                                         ; $650f: $e3
	ld   de, $1531                                   ; $6510: $11 $31 $15
	ld   de, $1111                                   ; $6513: $11 $11 $11
	xor  [hl]                                        ; $6516: $ae
	ld   a, a                                        ; $6517: $7f
	rst  $38                                         ; $6518: $ff
	rst  $38                                         ; $6519: $ff
	rst  $38                                         ; $651a: $ff
	rst  $38                                         ; $651b: $ff
	ei                                               ; $651c: $fb
	ld   a, [hl]                                     ; $651d: $7e
	ld   de, $1111                                   ; $651e: $11 $11 $11
	ld   h, c                                        ; $6521: $61
	ld   [de], a                                     ; $6522: $12
	ld   de, $ac1e                                   ; $6523: $11 $1e $ac
	rst  $38                                         ; $6526: $ff
	rst  $38                                         ; $6527: $ff
	rst  $38                                         ; $6528: $ff
	rst  $38                                         ; $6529: $ff
	rst  $38                                         ; $652a: $ff
	ld   l, d                                        ; $652b: $6a
	and  c                                           ; $652c: $a1
	inc  de                                          ; $652d: $13
	ld   de, $1111                                   ; $652e: $11 $11 $11
	ld   bc, $e717                                   ; $6531: $01 $17 $e7
	rst  $38                                         ; $6534: $ff
	rst  $38                                         ; $6535: $ff
	rst  $38                                         ; $6536: $ff
	rst  $38                                         ; $6537: $ff
	rst  $38                                         ; $6538: $ff
	push af                                          ; $6539: $f5
	pop  bc                                          ; $653a: $c1
	ld   de, $1511                                   ; $653b: $11 $11 $15
	ld   de, $1331                                   ; $653e: $11 $31 $13
	rst  $30                                         ; $6541: $f7
	rst  $28                                         ; $6542: $ef
	rst  $38                                         ; $6543: $ff
	rst  $38                                         ; $6544: $ff
	rst  $38                                         ; $6545: $ff
	rst  $38                                         ; $6546: $ff
	rst  $30                                         ; $6547: $f7
	sub  l                                           ; $6548: $95
	ld   de, $1521                                   ; $6549: $11 $21 $15
	ld   de, $1111                                   ; $654c: $11 $11 $11
	ld   sp, hl                                      ; $654f: $f9
	cp   a                                           ; $6550: $bf
	rst  $38                                         ; $6551: $ff
	rst  $38                                         ; $6552: $ff
	rst  $38                                         ; $6553: $ff
	rst  $38                                         ; $6554: $ff
	ld   a, [$1166]                                  ; $6555: $fa $66 $11
	ld   hl, $1114                                   ; $6558: $21 $14 $11
	ld   de, $f711                                   ; $655b: $11 $11 $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $655e: $cf
	rst  $38                                         ; $655f: $ff
	rst  $38                                         ; $6560: $ff
	rst  $38                                         ; $6561: $ff
	rst  $38                                         ; $6562: $ff
	ld   sp, hl                                      ; $6563: $f9
	ld   h, e                                        ; $6564: $63
	ld   de, $1111                                   ; $6565: $11 $11 $11
	ld   de, $1411                                   ; $6568: $11 $11 $14
	db   $f4                                         ; $656b: $f4
	rst  $38                                         ; $656c: $ff
	rst  $38                                         ; $656d: $ff
	rst  $38                                         ; $656e: $ff
	rst  $38                                         ; $656f: $ff
	rst  $38                                         ; $6570: $ff
	rst  $30                                         ; $6571: $f7
	ld   h, c                                        ; $6572: $61
	inc  de                                          ; $6573: $13
	ld   de, $1131                                   ; $6574: $11 $31 $11
	ld   de, $a51f                                   ; $6577: $11 $1f $a5
	rst  $38                                         ; $657a: $ff
	rst  $38                                         ; $657b: $ff
	rst  $38                                         ; $657c: $ff
	rst  $38                                         ; $657d: $ff
	rst  $38                                         ; $657e: $ff
	or   l                                           ; $657f: $b5
	ld   b, c                                        ; $6580: $41
	ld   sp, $1111                                   ; $6581: $31 $11 $11
	ld   de, $8f11                                   ; $6584: $11 $11 $8f
	rra                                              ; $6587: $1f
	rst  $38                                         ; $6588: $ff
	rst  $38                                         ; $6589: $ff
	rst  $38                                         ; $658a: $ff
	rst  $38                                         ; $658b: $ff
	rst  $38                                         ; $658c: $ff
	ld   b, l                                        ; $658d: $45
	ld   [de], a                                     ; $658e: $12
	ld   de, $1121                                   ; $658f: $11 $21 $11
	ld   de, $f116                                   ; $6592: $11 $16 $f1
	rst  $38                                         ; $6595: $ff
	rst  $38                                         ; $6596: $ff
	rst  $38                                         ; $6597: $ff

Jump_0b6_6598:
	rst  $38                                         ; $6598: $ff
	rst  $38                                         ; $6599: $ff
	ldh  a, [c]                                      ; $659a: $f2
	ld   [hl], c                                     ; $659b: $71
	ld   de, $1115                                   ; $659c: $11 $15 $11
	ld   de, $9f11                                   ; $659f: $11 $11 $9f
	rra                                              ; $65a2: $1f
	rst  $38                                         ; $65a3: $ff
	rst  $38                                         ; $65a4: $ff
	rst  $38                                         ; $65a5: $ff
	rst  $38                                         ; $65a6: $ff

Jump_0b6_65a7:
	cp   $15                                         ; $65a7: $fe $15
	inc  d                                           ; $65a9: $14
	ld   de, $12b1                                   ; $65aa: $11 $b1 $12
	ld   de, $751f                                   ; $65ad: $11 $1f $75
	rst  $38                                         ; $65b0: $ff
	rst  $38                                         ; $65b1: $ff
	rst  $38                                         ; $65b2: $ff
	rst  $38                                         ; $65b3: $ff
	rst  $38                                         ; $65b4: $ff
	ld   [hl], d                                     ; $65b5: $72
	ld   sp, $2211                                   ; $65b6: $31 $11 $22
	ld   de, $1611                                   ; $65b9: $11 $11 $16
	pop  af                                          ; $65bc: $f1
	rst  $38                                         ; $65bd: $ff
	rst  $38                                         ; $65be: $ff
	rst  $38                                         ; $65bf: $ff
	rst  $38                                         ; $65c0: $ff
	cp   $e1                                         ; $65c1: $fe $e1
	ld   hl, $1a11                                   ; $65c3: $21 $11 $1a
	ld   de, $1151                                   ; $65c6: $11 $51 $11
	ldh  a, [c]                                      ; $65c9: $f2
	cp   a                                           ; $65ca: $bf
	rst  $38                                         ; $65cb: $ff
	rst  $38                                         ; $65cc: $ff
	rst  $38                                         ; $65cd: $ff
	rst  $38                                         ; $65ce: $ff
	db   $e4                                         ; $65cf: $e4
	ld   [hl+], a                                    ; $65d0: $22
	ld   hl, $111b                                   ; $65d1: $21 $1b $11
	ld   h, c                                        ; $65d4: $61
	ld   de, $8ff4                                   ; $65d5: $11 $f4 $8f
	rst  $38                                         ; $65d8: $ff
	rst  $38                                         ; $65d9: $ff
	rst  $38                                         ; $65da: $ff
	rst  $38                                         ; $65db: $ff
	db   $e3                                         ; $65dc: $e3
	ld   [hl-], a                                    ; $65dd: $32
	ld   hl, $111a                                   ; $65de: $21 $1a $11
	ld   d, c                                        ; $65e1: $51
	ld   de, $9ff4                                   ; $65e2: $11 $f4 $9f
	rst  $38                                         ; $65e5: $ff
	rst  $38                                         ; $65e6: $ff
	rst  $38                                         ; $65e7: $ff
	rst  $38                                         ; $65e8: $ff
	pop  hl                                          ; $65e9: $e1
	ld   b, e                                        ; $65ea: $43
	ld   de, $1119                                   ; $65eb: $11 $19 $11
	ld   b, c                                        ; $65ee: $41
	ld   [de], a                                     ; $65ef: $12
	di                                               ; $65f0: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65f1: $cf
	rst  $38                                         ; $65f2: $ff
	rst  $38                                         ; $65f3: $ff
	rst  $38                                         ; $65f4: $ff
	rst  $38                                         ; $65f5: $ff
	or   c                                           ; $65f6: $b1
	ld   d, l                                        ; $65f7: $55
	ld   de, $1131                                   ; $65f8: $11 $31 $11
	ld   de, $d319                                   ; $65fb: $11 $19 $d3
	rst  $38                                         ; $65fe: $ff
	rst  $38                                         ; $65ff: $ff
	rst  $38                                         ; $6600: $ff
	rst  $38                                         ; $6601: $ff
	rst  $38                                         ; $6602: $ff
	ld   h, d                                        ; $6603: $62
	add  e                                           ; $6604: $83
	ld   de, $1371                                   ; $6605: $11 $71 $13
	ld   de, $3b1e                                   ; $6608: $11 $1e $3b
	rst  $38                                         ; $660b: $ff
	rst  $38                                         ; $660c: $ff
	rst  $38                                         ; $660d: $ff
	rst  $38                                         ; $660e: $ff
	ei                                               ; $660f: $fb
	jr   z, jr_0b6_6683                              ; $6610: $28 $71

	jr   jr_0b6_6625                                 ; $6612: $18 $11

	ld   de, $c411                                   ; $6614: $11 $11 $c4
	adc  a                                           ; $6617: $8f
	rst  $38                                         ; $6618: $ff
	rst  $38                                         ; $6619: $ff
	rst  $38                                         ; $661a: $ff
	rst  $38                                         ; $661b: $ff
	db   $e3                                         ; $661c: $e3
	adc  c                                           ; $661d: $89
	ld   de, $1161                                   ; $661e: $11 $61 $11
	ld   de, $4919                                   ; $6621: $11 $19 $49
	rst  $38                                         ; $6624: $ff

jr_0b6_6625:
	rst  $38                                         ; $6625: $ff
	rst  $38                                         ; $6626: $ff
	rst  $38                                         ; $6627: $ff
	cp   $49                                         ; $6628: $fe $49
	add  c                                           ; $662a: $81
	inc  d                                           ; $662b: $14
	ld   de, $1111                                   ; $662c: $11 $11 $11
	add  e                                           ; $662f: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6630: $cf
	rst  $38                                         ; $6631: $ff
	rst  $38                                         ; $6632: $ff
	rst  $38                                         ; $6633: $ff
	rst  $38                                         ; $6634: $ff
	and  l                                           ; $6635: $a5
	jp   nz, $1114                                   ; $6636: $c2 $14 $11

	ld   de, $5311                                   ; $6639: $11 $11 $53
	adc  [hl]                                        ; $663c: $8e
	rst  $28                                         ; $663d: $ef
	rst  $38                                         ; $663e: $ff
	rst  $38                                         ; $663f: $ff
	rst  $38                                         ; $6640: $ff
	and  $b7                                         ; $6641: $e6 $b7
	inc  de                                          ; $6643: $13
	ld   de, $1111                                   ; $6644: $11 $11 $11
	ld   b, d                                        ; $6647: $42
	ld   l, l                                        ; $6648: $6d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6649: $cf
	rst  $38                                         ; $664a: $ff
	rst  $38                                         ; $664b: $ff
	rst  $38                                         ; $664c: $ff
	rst  $30                                         ; $664d: $f7
	cp   b                                           ; $664e: $b8
	inc  de                                          ; $664f: $13
	ld   hl, $1111                                   ; $6650: $21 $11 $11
	inc  sp                                          ; $6653: $33
	ld   l, h                                        ; $6654: $6c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6655: $cf
	rst  $38                                         ; $6656: $ff
	rst  $38                                         ; $6657: $ff
	cp   $d8                                         ; $6658: $fe $d8
	and  a                                           ; $665a: $a7
	dec  d                                           ; $665b: $15
	ld   hl, $1111                                   ; $665c: $21 $11 $11
	ld   d, h                                        ; $665f: $54
	ld   a, d                                        ; $6660: $7a
	rst  JumpTable                                         ; $6661: $df
	rst  $38                                         ; $6662: $ff
	rst  $38                                         ; $6663: $ff
	call $94c8                                       ; $6664: $cd $c8 $94
	ld   b, l                                        ; $6667: $45
	ld   de, $1311                                   ; $6668: $11 $11 $13
	ld   h, h                                        ; $666b: $64
	xor  h                                           ; $666c: $ac
	rst  JumpTable                                         ; $666d: $df
	rst  $28                                         ; $666e: $ef
	cp   $bb                                         ; $666f: $fe $bb
	sbc  c                                           ; $6671: $99
	ld   h, e                                        ; $6672: $63
	ld   [hl], d                                     ; $6673: $72
	ld   [de], a                                     ; $6674: $12
	ld   hl, $5916                                   ; $6675: $21 $16 $59
	xor  h                                           ; $6678: $ac
	db   $ed                                         ; $6679: $ed
	rst  $28                                         ; $667a: $ef
	reti                                             ; $667b: $d9


	sbc  c                                           ; $667c: $99
	ld   a, c                                        ; $667d: $79
	ld   d, l                                        ; $667e: $55
	ld   h, e                                        ; $667f: $63
	inc  hl                                          ; $6680: $23
	ld   b, h                                        ; $6681: $44
	ld   d, [hl]                                     ; $6682: $56

jr_0b6_6683:
	adc  c                                           ; $6683: $89
	xor  h                                           ; $6684: $ac
	db   $db                                         ; $6685: $db
	cp   h                                           ; $6686: $bc
	cp   b                                           ; $6687: $b8
	sbc  c                                           ; $6688: $99
	sbc  b                                           ; $6689: $98
	ld   h, a                                        ; $668a: $67
	ld   [hl], h                                     ; $668b: $74
	ld   b, l                                        ; $668c: $45
	ld   d, l                                        ; $668d: $55
	ld   h, a                                        ; $668e: $67
	ld   a, c                                        ; $668f: $79
	xor  c                                           ; $6690: $a9
	cp   d                                           ; $6691: $ba
	xor  c                                           ; $6692: $a9
	cp   d                                           ; $6693: $ba
	sbc  c                                           ; $6694: $99
	sbc  b                                           ; $6695: $98
	ld   [hl], a                                     ; $6696: $77
	halt                                             ; $6697: $76
	ld   h, [hl]                                     ; $6698: $66
	ld   h, [hl]                                     ; $6699: $66
	ld   h, a                                        ; $669a: $67
	ld   a, b                                        ; $669b: $78
	xor  d                                           ; $669c: $aa
	sbc  c                                           ; $669d: $99
	xor  d                                           ; $669e: $aa
	sbc  c                                           ; $669f: $99
	xor  c                                           ; $66a0: $a9
	adc  b                                           ; $66a1: $88
	add  a                                           ; $66a2: $87
	ld   [hl], a                                     ; $66a3: $77
	ld   [hl], a                                     ; $66a4: $77
	ld   [hl], a                                     ; $66a5: $77

Call_0b6_66a6:
	ld   a, b                                        ; $66a6: $78
	sbc  c                                           ; $66a7: $99
	adc  c                                           ; $66a8: $89
	sbc  c                                           ; $66a9: $99
	sbc  b                                           ; $66aa: $98
	adc  b                                           ; $66ab: $88
	add  a                                           ; $66ac: $87
	ld   [hl], a                                     ; $66ad: $77
	ld   [hl], a                                     ; $66ae: $77
	ld   a, b                                        ; $66af: $78
	ld   a, b                                        ; $66b0: $78
	sbc  c                                           ; $66b1: $99
	sbc  c                                           ; $66b2: $99
	sbc  c                                           ; $66b3: $99
	sbc  c                                           ; $66b4: $99
	adc  b                                           ; $66b5: $88
	adc  b                                           ; $66b6: $88
	add  a                                           ; $66b7: $87
	ld   [hl], a                                     ; $66b8: $77
	ld   [hl], a                                     ; $66b9: $77
	ld   [hl], a                                     ; $66ba: $77
	ld   [hl], a                                     ; $66bb: $77
	adc  b                                           ; $66bc: $88
	adc  c                                           ; $66bd: $89
	sbc  c                                           ; $66be: $99
	sbc  c                                           ; $66bf: $99
	sbc  c                                           ; $66c0: $99
	adc  b                                           ; $66c1: $88
	adc  b                                           ; $66c2: $88
	adc  b                                           ; $66c3: $88
	ld   [hl], a                                     ; $66c4: $77
	ld   [hl], a                                     ; $66c5: $77
	ld   [hl], a                                     ; $66c6: $77
	ld   [hl], a                                     ; $66c7: $77
	ld   [hl], a                                     ; $66c8: $77
	adc  b                                           ; $66c9: $88
	sbc  c                                           ; $66ca: $99
	adc  c                                           ; $66cb: $89
	sbc  c                                           ; $66cc: $99
	sbc  c                                           ; $66cd: $99
	adc  c                                           ; $66ce: $89
	adc  b                                           ; $66cf: $88
	add  a                                           ; $66d0: $87
	ld   [hl], a                                     ; $66d1: $77
	ld   [hl], a                                     ; $66d2: $77
	ld   [hl], a                                     ; $66d3: $77
	ld   [hl], a                                     ; $66d4: $77
	adc  b                                           ; $66d5: $88
	adc  c                                           ; $66d6: $89
	sbc  c                                           ; $66d7: $99
	adc  c                                           ; $66d8: $89
	adc  b                                           ; $66d9: $88
	sbc  b                                           ; $66da: $98
	adc  c                                           ; $66db: $89
	adc  b                                           ; $66dc: $88
	ld   [hl], a                                     ; $66dd: $77
	ld   [hl], a                                     ; $66de: $77
	ld   [hl], a                                     ; $66df: $77
	ld   [hl], a                                     ; $66e0: $77
	ld   a, b                                        ; $66e1: $78
	adc  b                                           ; $66e2: $88
	adc  c                                           ; $66e3: $89
	sbc  c                                           ; $66e4: $99
	sbc  b                                           ; $66e5: $98
	sbc  c                                           ; $66e6: $99
	adc  c                                           ; $66e7: $89
	adc  b                                           ; $66e8: $88
	adc  b                                           ; $66e9: $88
	adc  b                                           ; $66ea: $88
	add  a                                           ; $66eb: $87
	ld   a, b                                        ; $66ec: $78
	add  a                                           ; $66ed: $87
	adc  b                                           ; $66ee: $88
	adc  b                                           ; $66ef: $88
	adc  c                                           ; $66f0: $89
	adc  c                                           ; $66f1: $89
	adc  b                                           ; $66f2: $88
	adc  c                                           ; $66f3: $89
	sbc  b                                           ; $66f4: $98
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
	sbc  b                                           ; $66ff: $98
	adc  c                                           ; $6700: $89
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

Jump_0b6_672b:
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

Jump_0b6_6799:
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
	adc  c                                           ; $682f: $89
	rst  ToBoot                                         ; $6830: $c7
	ld   a, c                                        ; $6831: $79
	ld   a, b                                        ; $6832: $78
	ld   a, b                                        ; $6833: $78
	sbc  c                                           ; $6834: $99
	halt                                             ; $6835: $76
	adc  d                                           ; $6836: $8a
	reti                                             ; $6837: $d9


	ld   a, c                                        ; $6838: $79
	xor  d                                           ; $6839: $aa
	sbc  b                                           ; $683a: $98
	ld   a, e                                        ; $683b: $7b
	rst  $28                                         ; $683c: $ef
	ld   [hl], a                                     ; $683d: $77
	add  l                                           ; $683e: $85
	ld   b, c                                        ; $683f: $41
	ld   l, d                                        ; $6840: $6a
	ret                                              ; $6841: $c9


	adc  d                                           ; $6842: $8a
	halt                                             ; $6843: $76
	adc  b                                           ; $6844: $88
	ld   c, d                                        ; $6845: $4a
	jp   z, $9997                                    ; $6846: $ca $97 $99

	and  h                                           ; $6849: $a4
	ld   a, c                                        ; $684a: $79
	adc  c                                           ; $684b: $89
	and  a                                           ; $684c: $a7
	ld   c, e                                        ; $684d: $4b
	ld   [hl], l                                     ; $684e: $75
	ld   d, a                                        ; $684f: $57
	adc  b                                           ; $6850: $88
	ld   d, h                                        ; $6851: $54
	ld   [hl], l                                     ; $6852: $75
	adc  b                                           ; $6853: $88
	adc  b                                           ; $6854: $88
	sbc  e                                           ; $6855: $9b
	sbc  c                                           ; $6856: $99
	ld   l, d                                        ; $6857: $6a
	halt                                             ; $6858: $76
	ld   h, [hl]                                     ; $6859: $66
	add  [hl]                                        ; $685a: $86
	ld   h, [hl]                                     ; $685b: $66
	ld   h, a                                        ; $685c: $67
	ld   [hl], l                                     ; $685d: $75
	ld   l, c                                        ; $685e: $69
	ld   a, b                                        ; $685f: $78
	ld   a, c                                        ; $6860: $79
	sbc  c                                           ; $6861: $99
	ld   h, a                                        ; $6862: $67
	cp   b                                           ; $6863: $b8
	ld   [hl], l                                     ; $6864: $75
	add  a                                           ; $6865: $87
	sub  l                                           ; $6866: $95
	add  hl, sp                                      ; $6867: $39
	ld   h, l                                        ; $6868: $65
	ld   e, b                                        ; $6869: $58
	ld   h, a                                        ; $686a: $67
	and  l                                           ; $686b: $a5
	sbc  d                                           ; $686c: $9a
	add  a                                           ; $686d: $87
	reti                                             ; $686e: $d9


	xor  h                                           ; $686f: $ac
	ld   l, d                                        ; $6870: $6a
	add  l                                           ; $6871: $85
	ld   b, [hl]                                     ; $6872: $46
	halt                                             ; $6873: $76
	ld   de, $1373                                   ; $6874: $11 $73 $13
	sbc  e                                           ; $6877: $9b
	sbc  d                                           ; $6878: $9a
	rst  JumpTable                                         ; $6879: $df
	rst  $38                                         ; $687a: $ff
	xor  $bb                                         ; $687b: $ee $bb
	ld   d, h                                        ; $687d: $54
	ld   de, $1111                                   ; $687e: $11 $11 $11
	adc  e                                           ; $6881: $8b
	rst  JumpTable                                         ; $6882: $df
	rst  $38                                         ; $6883: $ff
	rst  $38                                         ; $6884: $ff
	rst  $38                                         ; $6885: $ff
	adc  [hl]                                        ; $6886: $8e
	ld   [hl], a                                     ; $6887: $77
	ld   h, c                                        ; $6888: $61
	ld   de, $4a11                                   ; $6889: $11 $11 $4a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $688c: $cf
	rst  $38                                         ; $688d: $ff
	rst  $38                                         ; $688e: $ff
	sbc  e                                           ; $688f: $9b
	rst  $30                                         ; $6890: $f7
	ld   a, c                                        ; $6891: $79
	and  [hl]                                        ; $6892: $a6
	ld   de, $1111                                   ; $6893: $11 $11 $11
	rst  JumpTable                                         ; $6896: $df
	rst  $38                                         ; $6897: $ff
	rst  $38                                         ; $6898: $ff
	xor  e                                           ; $6899: $ab
	sub  l                                           ; $689a: $95
	ld   l, a                                        ; $689b: $6f
	call nc, $11a1                                   ; $689c: $d4 $a1 $11
	ld   de, $ff4d                                   ; $689f: $11 $4d $ff
	rst  $38                                         ; $68a2: $ff
	rst  $38                                         ; $68a3: $ff
	ld   h, l                                        ; $68a4: $65
	or   c                                           ; $68a5: $b1
	adc  $e5                                         ; $68a6: $ce $e5
	ld   de, $1411                                   ; $68a8: $11 $11 $14
	rst  $38                                         ; $68ab: $ff
	rst  $38                                         ; $68ac: $ff
	rst  $38                                         ; $68ad: $ff
	or   [hl]                                        ; $68ae: $b6
	ld   h, $a8                                      ; $68af: $26 $a8
	cp   a                                           ; $68b1: $bf
	ld   [hl], c                                     ; $68b2: $71
	ld   de, $6f11                                   ; $68b3: $11 $11 $6f
	rst  $38                                         ; $68b6: $ff
	rst  $38                                         ; $68b7: $ff
	pop  af                                          ; $68b8: $f1
	jr   @-$09                                       ; $68b9: $18 $f5

	dec  de                                          ; $68bb: $1b
	db   $fc                                         ; $68bc: $fc
	ld   de, $1214                                   ; $68bd: $11 $14 $12
	rst  $38                                         ; $68c0: $ff
	rst  $38                                         ; $68c1: $ff
	db   $f4                                         ; $68c2: $f4
	ld   d, c                                        ; $68c3: $51
	rra                                              ; $68c4: $1f
	ld   [$21ef], a                                  ; $68c5: $ea $ef $21
	ld   de, $5f41                                   ; $68c8: $11 $41 $5f
	rst  $38                                         ; $68cb: $ff
	ret                                              ; $68cc: $c9


	pop  af                                          ; $68cd: $f1
	ld   e, $77                                      ; $68ce: $1e $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68d0: $cf
	ld   [hl], c                                     ; $68d1: $71
	ld   de, $1631                                   ; $68d2: $11 $31 $16
	rst  $38                                         ; $68d5: $ff
	rst  $38                                         ; $68d6: $ff
	ld   l, d                                        ; $68d7: $6a
	ld   b, c                                        ; $68d8: $41
	ld   l, a                                        ; $68d9: $6f
	ld   l, a                                        ; $68da: $6f
	db   $fc                                         ; $68db: $fc
	ld   de, $4111                                   ; $68dc: $11 $11 $41
	rst  $38                                         ; $68df: $ff
	rst  $38                                         ; $68e0: $ff
	call nz, $16f5                                   ; $68e1: $c4 $f5 $16
	cp   a                                           ; $68e4: $bf
	jp   z, $1191                                    ; $68e5: $ca $91 $11

	ld   de, $ff4f                                   ; $68e8: $11 $4f $ff
	db   $fc                                         ; $68eb: $fc
	ld   l, a                                        ; $68ec: $6f
	ld   de, $ffaf                                   ; $68ed: $11 $af $ff
	db   $e3                                         ; $68f0: $e3
	ld   de, $6311                                   ; $68f1: $11 $11 $63
	rst  $28                                         ; $68f4: $ef
	rst  $38                                         ; $68f5: $ff
	rra                                              ; $68f6: $1f
	pop  af                                          ; $68f7: $f1
	rra                                              ; $68f8: $1f
	rst  JumpTable                                         ; $68f9: $df
	pop  af                                          ; $68fa: $f1
	sub  c                                           ; $68fb: $91
	ld   de, $5f4a                                   ; $68fc: $11 $4a $5f
	rst  $38                                         ; $68ff: $ff
	ld   a, [$1437]                                  ; $6900: $fa $37 $14
	rst  $38                                         ; $6903: $ff
	ld   a, e                                        ; $6904: $7b
	cp   d                                           ; $6905: $ba
	ld   de, $981d                                   ; $6906: $11 $1d $98
	rst  $38                                         ; $6909: $ff
	db   $fc                                         ; $690a: $fc
	ld   de, $4c8f                                   ; $690b: $11 $8f $4c
	rst  $38                                         ; $690e: $ff
	pop  de                                          ; $690f: $d1
	ld   de, $1115                                   ; $6910: $11 $15 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6913: $cf
	rst  $38                                         ; $6914: $ff
	ld   h, $9a                                      ; $6915: $26 $9a
	ld   de, $f7ff                                   ; $6917: $11 $ff $f7
	dec  de                                          ; $691a: $1b
	ld   de, $f61c                                   ; $691b: $11 $1c $f6
	rst  $38                                         ; $691e: $ff
	rst  $38                                         ; $691f: $ff

jr_0b6_6920:
	ld   h, c                                        ; $6920: $61
	jr   jr_0b6_6920                                 ; $6921: $18 $fd

	db   $fc                                         ; $6923: $fc
	adc  a                                           ; $6924: $8f
	ld   de, $8113                                   ; $6925: $11 $13 $81
	rst  $38                                         ; $6928: $ff
	sbc  l                                           ; $6929: $9d
	rst  $38                                         ; $692a: $ff
	ld   de, $fc7f                                   ; $692b: $11 $7f $fc
	ld   e, a                                        ; $692e: $5f
	pop  bc                                          ; $692f: $c1
	ld   de, $a73f                                   ; $6930: $11 $3f $a7
	rst  JumpTable                                         ; $6933: $df
	push af                                          ; $6934: $f5
	ld   [hl], c                                     ; $6935: $71
	rra                                              ; $6936: $1f
	sub  $ff                                         ; $6937: $d6 $ff
	sbc  d                                           ; $6939: $9a
	ld   de, $9214                                   ; $693a: $11 $14 $92
	rst  $38                                         ; $693d: $ff
	db   $fc                                         ; $693e: $fc
	ld   c, a                                        ; $693f: $4f
	ld   h, c                                        ; $6940: $61
	sbc  a                                           ; $6941: $9f
	rst  $30                                         ; $6942: $f7
	call z, $1191                                    ; $6943: $cc $91 $11
	rra                                              ; $6946: $1f
	rst  $10                                         ; $6947: $d7
	rst  $38                                         ; $6948: $ff
	rst  $38                                         ; $6949: $ff
	ld   de, $fe7a                                   ; $694a: $11 $7a $fe
	db   $ed                                         ; $694d: $ed
	rst  $30                                         ; $694e: $f7
	ld   de, $da11                                   ; $694f: $11 $11 $da
	xor  a                                           ; $6952: $af
	rst  $30                                         ; $6953: $f7
	ld   l, a                                        ; $6954: $6f
	add  c                                           ; $6955: $81
	rra                                              ; $6956: $1f
	rst  $38                                         ; $6957: $ff
	and  a                                           ; $6958: $a7
	add  sp, $11                                     ; $6959: $e8 $11
	rra                                              ; $695b: $1f
	add  [hl]                                        ; $695c: $86
	rst  $38                                         ; $695d: $ff
	rst  $38                                         ; $695e: $ff
	sub  c                                           ; $695f: $91
	dec  bc                                          ; $6960: $0b
	cp   a                                           ; $6961: $bf
	db   $fd                                         ; $6962: $fd
	sbc  d                                           ; $6963: $9a
	and  c                                           ; $6964: $a1
	ld   de, $7fb7                                   ; $6965: $11 $b7 $7f
	cp   $da                                         ; $6968: $fe $da
	ld   b, h                                        ; $696a: $44
	dec  de                                          ; $696b: $1b
	db   $fd                                         ; $696c: $fd
	push de                                          ; $696d: $d5
	cp   a                                           ; $696e: $bf
	ld   de, $f71a                                   ; $696f: $11 $1a $f7
	ld   e, a                                        ; $6972: $5f
	rst  $38                                         ; $6973: $ff
	ld   [hl], c                                     ; $6974: $71
	ld   a, d                                        ; $6975: $7a
	ld   [hl], h                                     ; $6976: $74
	rst  $38                                         ; $6977: $ff
	reti                                             ; $6978: $d9


	and  a                                           ; $6979: $a7
	ld   de, $6c19                                   ; $697a: $11 $19 $6c
	rst  $38                                         ; $697d: $ff
	sbc  d                                           ; $697e: $9a
	jp   nz, $9f1b                                   ; $697f: $c2 $1b $9f

	rst  $30                                         ; $6982: $f7
	xor  a                                           ; $6983: $af
	ld   de, $d513                                   ; $6984: $11 $13 $d5
	rst  $38                                         ; $6987: $ff
	call c, $21cc                                    ; $6988: $dc $cc $21
	sbc  a                                           ; $698b: $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $698c: $cf
	or   $aa                                         ; $698d: $f6 $aa
	ld   de, $6a18                                   ; $698f: $11 $18 $6a
	rst  $38                                         ; $6992: $ff
	ld   d, e                                        ; $6993: $53
	ld   sp, hl                                      ; $6994: $f9
	ld   de, $f55f                                   ; $6995: $11 $5f $f5
	ld   e, l                                        ; $6998: $5d
	pop  de                                          ; $6999: $d1
	ld   de, $ff8e                                   ; $699a: $11 $8e $ff
	adc  h                                           ; $699d: $8c
	rst  $30                                         ; $699e: $f7
	ld   de, $f85f                                   ; $699f: $11 $5f $f8
	ret  z                                           ; $69a2: $c8

	xor  $11                                         ; $69a3: $ee $11
	rla                                              ; $69a5: $17
	jp   z, Jump_0b6_79ff                            ; $69a6: $ca $ff $79

	push af                                          ; $69a9: $f5
	inc  d                                           ; $69aa: $14
	rst  $38                                         ; $69ab: $ff
	cp   a                                           ; $69ac: $bf
	sub  $c1                                         ; $69ad: $d6 $c1
	ld   de, $9f24                                   ; $69af: $11 $24 $9f
	ld   hl, sp-$07                                  ; $69b2: $f8 $f9
	ld   sp, $ff5a                                   ; $69b4: $31 $5a $ff
	ld   [hl], a                                     ; $69b7: $77
	push af                                          ; $69b8: $f5
	ld   de, $dc12                                   ; $69b9: $11 $12 $dc
	sbc  a                                           ; $69bc: $9f
	rst  $38                                         ; $69bd: $ff
	ld   [hl], c                                     ; $69be: $71
	inc  d                                           ; $69bf: $14
	rst  JumpTable                                         ; $69c0: $df
	rst  $38                                         ; $69c1: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69c2: $cf
	add  c                                           ; $69c3: $81
	ld   de, $ce37                                   ; $69c4: $11 $37 $ce
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69c7: $cf
	push af                                          ; $69c8: $f5
	inc  de                                          ; $69c9: $13
	add  c                                           ; $69ca: $81
	rst  $38                                         ; $69cb: $ff
	cp   a                                           ; $69cc: $bf
	or   c                                           ; $69cd: $b1
	ld   de, $9a11                                   ; $69ce: $11 $11 $9a
	rst  JumpTable                                         ; $69d1: $df
	ld   sp, hl                                      ; $69d2: $f9
	adc  b                                           ; $69d3: $88
	ld   de, $dfbf                                   ; $69d4: $11 $bf $df
	pop  hl                                          ; $69d7: $e1
	pop  af                                          ; $69d8: $f1
	ld   de, $7f15                                   ; $69d9: $11 $15 $7f
	rst  $38                                         ; $69dc: $ff
	ldh  a, [c]                                      ; $69dd: $f2
	daa                                              ; $69de: $27
	inc  [hl]                                        ; $69df: $34
	rst  $38                                         ; $69e0: $ff
	adc  $77                                         ; $69e1: $ce $77
	ld   d, c                                        ; $69e3: $51
	ld   de, $ff7a                                   ; $69e4: $11 $7a $ff

Call_0b6_69e7:
	sub  e                                           ; $69e7: $93
	rst  $38                                         ; $69e8: $ff
	ld   de, $f93f                                   ; $69e9: $11 $3f $f9
	ld   e, h                                        ; $69ec: $5c
	pop  hl                                          ; $69ed: $e1
	ld   de, $6e3a                                   ; $69ee: $11 $3a $6e
	rst  $38                                         ; $69f1: $ff
	cp   $51                                         ; $69f2: $fe $51
	dec  sp                                          ; $69f4: $3b
	rst  $38                                         ; $69f5: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69f6: $cf
	ld   [$1531], a                                  ; $69f7: $ea $31 $15
	ld   b, [hl]                                     ; $69fa: $46
	rst  $38                                         ; $69fb: $ff
	rst  $38                                         ; $69fc: $ff
	ld   l, c                                        ; $69fd: $69
	ld   d, c                                        ; $69fe: $51
	ld   c, a                                        ; $69ff: $4f
	rst  $38                                         ; $6a00: $ff
	ei                                               ; $6a01: $fb
	ld   b, [hl]                                     ; $6a02: $46
	ld   de, $7927                                   ; $6a03: $11 $27 $79
	db   $fd                                         ; $6a06: $fd
	db   $fc                                         ; $6a07: $fc
	ld   d, $56                                      ; $6a08: $16 $56
	rst  $38                                         ; $6a0a: $ff
	set  7, h                                        ; $6a0b: $cb $fc
	ld   de, $8311                                   ; $6a0d: $11 $11 $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a10: $cf
	rst  $28                                         ; $6a11: $ef
	rst  $10                                         ; $6a12: $d7
	ld   b, h                                        ; $6a13: $44
	ld   e, h                                        ; $6a14: $5c
	cp   $ad                                         ; $6a15: $fe $ad
	ret                                              ; $6a17: $c9


	ld   de, $9c15                                   ; $6a18: $11 $15 $9c
	sbc  e                                           ; $6a1b: $9b
	rst  $38                                         ; $6a1c: $ff
	ld   b, h                                        ; $6a1d: $44
	ld   a, [de]                                     ; $6a1e: $1a
	rst  $20                                         ; $6a1f: $e7
	rst  $28                                         ; $6a20: $ef
	rst  $38                                         ; $6a21: $ff
	ld   sp, $3311                                   ; $6a22: $31 $11 $33
	cp   a                                           ; $6a25: $bf
	adc  $fd                                         ; $6a26: $ce $fd
	ld   de, $f54f                                   ; $6a28: $11 $4f $f5
	rst  $38                                         ; $6a2b: $ff
	db   $ec                                         ; $6a2c: $ec
	ld   de, $6115                                   ; $6a2d: $11 $15 $61
	rst  $28                                         ; $6a30: $ef
	cp   [hl]                                        ; $6a31: $be
	push af                                          ; $6a32: $f5
	dec  d                                           ; $6a33: $15
	sbc  a                                           ; $6a34: $9f
	ld   a, [$61ff]                                  ; $6a35: $fa $ff $61
	ld   de, $2c41                                   ; $6a38: $11 $41 $2c
	rst  $38                                         ; $6a3b: $ff
	xor  [hl]                                        ; $6a3c: $ae
	or   l                                           ; $6a3d: $b5
	ld   sp, $dcef                                   ; $6a3e: $31 $ef $dc
	ld   hl, sp+$51                                  ; $6a41: $f8 $51
	ld   [de], a                                     ; $6a43: $12
	rla                                              ; $6a44: $17
	db   $fc                                         ; $6a45: $fc
	rst  $28                                         ; $6a46: $ef
	cp   c                                           ; $6a47: $b9
	ld   b, c                                        ; $6a48: $41
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a49: $cf
	db   $ec                                         ; $6a4a: $ec
	sbc  a                                           ; $6a4b: $9f
	pop  af                                          ; $6a4c: $f1
	ld   de, $1717                                   ; $6a4d: $11 $17 $17
	rst  $28                                         ; $6a50: $ef
	ld   hl, sp+$18                                  ; $6a51: $f8 $18
	adc  e                                           ; $6a53: $8b
	or   a                                           ; $6a54: $b7
	rst  $28                                         ; $6a55: $ef
	db   $ed                                         ; $6a56: $ed
	ld   h, c                                        ; $6a57: $61
	ld   de, $2f11                                   ; $6a58: $11 $11 $2f
	rst  $38                                         ; $6a5b: $ff
	sub  e                                           ; $6a5c: $93
	cp   a                                           ; $6a5d: $bf
	ld   h, e                                        ; $6a5e: $63
	sbc  a                                           ; $6a5f: $9f
	db   $fd                                         ; $6a60: $fd
	sub  a                                           ; $6a61: $97
	ld   b, c                                        ; $6a62: $41
	ld   de, $de15                                   ; $6a63: $11 $15 $de
	rst  $28                                         ; $6a66: $ef
	or   a                                           ; $6a67: $b7
	add  [hl]                                        ; $6a68: $86
	ld   e, e                                        ; $6a69: $5b
	rst  $28                                         ; $6a6a: $ef
	ld   sp, hl                                      ; $6a6b: $f9
	ld   [hl], a                                     ; $6a6c: $77
	ld   de, $2b11                                   ; $6a6d: $11 $11 $2b
	db   $eb                                         ; $6a70: $eb
	call Call_0b6_44da                               ; $6a71: $cd $da $44
	rst  $38                                         ; $6a74: $ff
	jp   hl                                          ; $6a75: $e9


	cp   [hl]                                        ; $6a76: $be
	and  c                                           ; $6a77: $a1
	ld   de, $3a21                                   ; $6a78: $11 $21 $3a
	xor  a                                           ; $6a7b: $af
	ld   sp, hl                                      ; $6a7c: $f9
	ld   h, a                                        ; $6a7d: $67
	xor  e                                           ; $6a7e: $ab
	xor  b                                           ; $6a7f: $a8
	rst  JumpTable                                         ; $6a80: $df
	add  sp, $11                                     ; $6a81: $e8 $11
	ld   de, $8d11                                   ; $6a83: $11 $11 $8d
	db   $fd                                         ; $6a86: $fd
	ld   l, l                                        ; $6a87: $6d
	rst  $30                                         ; $6a88: $f7
	ld   [hl], a                                     ; $6a89: $77
	cp   a                                           ; $6a8a: $bf
	cp   $c4                                         ; $6a8b: $fe $c4
	ld   de, $1511                                   ; $6a8d: $11 $11 $15
	sbc  e                                           ; $6a90: $9b
	db   $fc                                         ; $6a91: $fc
	adc  h                                           ; $6a92: $8c
	cp   b                                           ; $6a93: $b8
	sbc  e                                           ; $6a94: $9b
	rst  JumpTable                                         ; $6a95: $df
	ld   a, [$11b2]                                  ; $6a96: $fa $b2 $11
	ld   de, $ad38                                   ; $6a99: $11 $38 $ad
	call Call_0b6_69e7                               ; $6a9c: $cd $e7 $69
	rst  $28                                         ; $6a9f: $ef
	xor  e                                           ; $6aa0: $ab
	cp   $71                                         ; $6aa1: $fe $71
	ld   de, $3911                                   ; $6aa3: $11 $11 $39
	adc  $cb                                         ; $6aa6: $ce $cb
	jp   z, $cc79                                    ; $6aa8: $ca $79 $cc

	rst  $38                                         ; $6aab: $ff
	db   $db                                         ; $6aac: $db
	ld   d, c                                        ; $6aad: $51
	ld   de, $4811                                   ; $6aae: $11 $11 $48
	cp   h                                           ; $6ab1: $bc
	cp   d                                           ; $6ab2: $ba
	cp   l                                           ; $6ab3: $bd
	sbc  b                                           ; $6ab4: $98
	cp   a                                           ; $6ab5: $bf
	rst  $38                                         ; $6ab6: $ff
	xor  e                                           ; $6ab7: $ab
	ld   h, c                                        ; $6ab8: $61
	ld   de, $6712                                   ; $6ab9: $11 $12 $67
	xor  e                                           ; $6abc: $ab
	db   $ed                                         ; $6abd: $ed
	sbc  b                                           ; $6abe: $98
	adc  l                                           ; $6abf: $8d
	db   $fd                                         ; $6ac0: $fd
	rst  JumpTable                                         ; $6ac1: $df
	ld   a, [$1121]                                  ; $6ac2: $fa $21 $11
	ld   de, $ab49                                   ; $6ac5: $11 $49 $ab
	sbc  e                                           ; $6ac8: $9b
	jp   z, $ef9a                                    ; $6ac9: $ca $9a $ef

	rst  $38                                         ; $6acc: $ff
	ret                                              ; $6acd: $c9


	ld   d, c                                        ; $6ace: $51
	ld   de, $5512                                   ; $6acf: $11 $12 $55
	sbc  c                                           ; $6ad2: $99
	xor  e                                           ; $6ad3: $ab
	sub  a                                           ; $6ad4: $97
	call $ffef                                       ; $6ad5: $cd $ef $ff
	ld   a, [$1141]                                  ; $6ad8: $fa $41 $11
	ld   de, $8736                                   ; $6adb: $11 $36 $87
	sbc  d                                           ; $6ade: $9a
	xor  c                                           ; $6adf: $a9
	xor  l                                           ; $6ae0: $ad
	rst  $38                                         ; $6ae1: $ff
	rst  $38                                         ; $6ae2: $ff
	db   $eb                                         ; $6ae3: $eb
	ld   h, d                                        ; $6ae4: $62
	ld   bc, $4411                                   ; $6ae5: $01 $11 $44
	ld   h, a                                        ; $6ae8: $67
	ld   a, c                                        ; $6ae9: $79
	sbc  b                                           ; $6aea: $98
	sbc  l                                           ; $6aeb: $9d
	rst  $28                                         ; $6aec: $ef
	rst  $28                                         ; $6aed: $ef
	db   $fc                                         ; $6aee: $fc
	add  h                                           ; $6aef: $84
	inc  sp                                          ; $6af0: $33
	ld   hl, $6635                                   ; $6af1: $21 $35 $66
	ld   d, l                                        ; $6af4: $55
	ld   a, b                                        ; $6af5: $78
	adc  d                                           ; $6af6: $8a
	cp   l                                           ; $6af7: $bd
	db   $ed                                         ; $6af8: $ed
	db   $dd                                         ; $6af9: $dd
	xor  b                                           ; $6afa: $a8
	halt                                             ; $6afb: $76
	ld   h, [hl]                                     ; $6afc: $66
	ld   h, [hl]                                     ; $6afd: $66
	ld   h, l                                        ; $6afe: $65
	ld   b, h                                        ; $6aff: $44
	ld   d, l                                        ; $6b00: $55
	ld   d, [hl]                                     ; $6b01: $56
	adc  b                                           ; $6b02: $88
	xor  d                                           ; $6b03: $aa
	cp   h                                           ; $6b04: $bc
	call $bbcc                                       ; $6b05: $cd $cc $bb
	sbc  c                                           ; $6b08: $99
	ld   h, l                                        ; $6b09: $65
	ld   d, h                                        ; $6b0a: $54
	inc  sp                                          ; $6b0b: $33
	inc  sp                                          ; $6b0c: $33
	ld   b, h                                        ; $6b0d: $44
	ld   d, [hl]                                     ; $6b0e: $56
	adc  d                                           ; $6b0f: $8a
	cp   h                                           ; $6b10: $bc
	xor  $dd                                         ; $6b11: $ee $dd
	res  5, c                                        ; $6b13: $cb $a9
	ld   h, [hl]                                     ; $6b15: $66
	ld   h, h                                        ; $6b16: $64
	inc  sp                                          ; $6b17: $33
	ld   [hl-], a                                    ; $6b18: $32
	inc  hl                                          ; $6b19: $23
	ld   d, a                                        ; $6b1a: $57
	adc  d                                           ; $6b1b: $8a
	cp   l                                           ; $6b1c: $bd
	db   $dd                                         ; $6b1d: $dd
	call c, $a9bb                                    ; $6b1e: $dc $bb $a9
	add  [hl]                                        ; $6b21: $86
	ld   h, l                                        ; $6b22: $65
	ld   [hl-], a                                    ; $6b23: $32
	ld   [hl+], a                                    ; $6b24: $22
	inc  sp                                          ; $6b25: $33
	ld   b, [hl]                                     ; $6b26: $46
	adc  d                                           ; $6b27: $8a
	cp   e                                           ; $6b28: $bb
	call $cbdd                                       ; $6b29: $cd $dd $cb
	jp   z, Jump_0b6_5597                            ; $6b2c: $ca $97 $55

	ld   b, d                                        ; $6b2f: $42
	ld   [hl+], a                                    ; $6b30: $22
	inc  hl                                          ; $6b31: $23
	ld   d, l                                        ; $6b32: $55
	ld   a, b                                        ; $6b33: $78
	sbc  e                                           ; $6b34: $9b
	call z, $dcdd                                    ; $6b35: $cc $dd $dc
	cp   d                                           ; $6b38: $ba
	and  a                                           ; $6b39: $a7
	ld   h, l                                        ; $6b3a: $65
	ld   d, e                                        ; $6b3b: $53
	inc  sp                                          ; $6b3c: $33
	inc  sp                                          ; $6b3d: $33
	inc  [hl]                                        ; $6b3e: $34
	ld   h, a                                        ; $6b3f: $67
	sbc  d                                           ; $6b40: $9a
	call $dcde                                       ; $6b41: $cd $de $dc
	cp   d                                           ; $6b44: $ba
	xor  c                                           ; $6b45: $a9
	halt                                             ; $6b46: $76
	ld   h, l                                        ; $6b47: $65
	ld   [hl-], a                                    ; $6b48: $32
	ld   [hl+], a                                    ; $6b49: $22
	inc  sp                                          ; $6b4a: $33
	ld   b, [hl]                                     ; $6b4b: $46
	adc  d                                           ; $6b4c: $8a
	cp   e                                           ; $6b4d: $bb
	db   $dd                                         ; $6b4e: $dd
	db   $dd                                         ; $6b4f: $dd
	res  5, d                                        ; $6b50: $cb $aa
	sub  a                                           ; $6b52: $97
	ld   h, [hl]                                     ; $6b53: $66
	ld   b, e                                        ; $6b54: $43
	ld   [hl+], a                                    ; $6b55: $22
	inc  sp                                          ; $6b56: $33
	ld   b, l                                        ; $6b57: $45
	ld   h, a                                        ; $6b58: $67
	sbc  d                                           ; $6b59: $9a
	call $eddd                                       ; $6b5a: $cd $dd $ed
	res  5, c                                        ; $6b5d: $cb $a9
	halt                                             ; $6b5f: $76
	ld   d, h                                        ; $6b60: $54
	inc  sp                                          ; $6b61: $33
	ld   [hl+], a                                    ; $6b62: $22
	inc  sp                                          ; $6b63: $33
	ld   b, [hl]                                     ; $6b64: $46
	adc  c                                           ; $6b65: $89
	xor  h                                           ; $6b66: $ac
	db   $dd                                         ; $6b67: $dd
	xor  $dc                                         ; $6b68: $ee $dc
	cp   d                                           ; $6b6a: $ba
	sub  a                                           ; $6b6b: $97
	ld   h, l                                        ; $6b6c: $65
	ld   b, e                                        ; $6b6d: $43
	ld   [hl+], a                                    ; $6b6e: $22
	ld   [hl+], a                                    ; $6b6f: $22
	inc  [hl]                                        ; $6b70: $34
	ld   h, a                                        ; $6b71: $67
	sbc  e                                           ; $6b72: $9b
	call $edde                                       ; $6b73: $cd $de $ed
	res  7, d                                        ; $6b76: $cb $ba
	halt                                             ; $6b78: $76
	ld   d, h                                        ; $6b79: $54
	ld   [hl-], a                                    ; $6b7a: $32
	ld   [hl+], a                                    ; $6b7b: $22
	inc  hl                                          ; $6b7c: $23
	ld   b, [hl]                                     ; $6b7d: $46
	ld   a, c                                        ; $6b7e: $79
	cp   l                                           ; $6b7f: $bd
	sbc  $ee                                         ; $6b80: $de $ee
	db   $ec                                         ; $6b82: $ec
	res  2, a                                        ; $6b83: $cb $97
	ld   h, l                                        ; $6b85: $65
	ld   b, e                                        ; $6b86: $43
	ld   [hl+], a                                    ; $6b87: $22
	ld   [hl+], a                                    ; $6b88: $22
	inc  [hl]                                        ; $6b89: $34
	ld   d, a                                        ; $6b8a: $57
	adc  d                                           ; $6b8b: $8a
	call $fddf                                       ; $6b8c: $cd $df $fd
	call c, $86a9                                    ; $6b8f: $dc $a9 $86
	ld   d, h                                        ; $6b92: $54

Call_0b6_6b93:
	ld   [hl-], a                                    ; $6b93: $32
	ld   [hl+], a                                    ; $6b94: $22
	inc  hl                                          ; $6b95: $23
	ld   b, l                                        ; $6b96: $45
	ld   a, b                                        ; $6b97: $78
	sbc  e                                           ; $6b98: $9b
	db   $dd                                         ; $6b99: $dd
	xor  $ee                                         ; $6b9a: $ee $ee
	db   $db                                         ; $6b9c: $db
	xor  b                                           ; $6b9d: $a8
	ld   [hl], l                                     ; $6b9e: $75
	ld   d, h                                        ; $6b9f: $54
	ld   [hl+], a                                    ; $6ba0: $22
	ld   [hl+], a                                    ; $6ba1: $22
	inc  hl                                          ; $6ba2: $23
	ld   b, [hl]                                     ; $6ba3: $46
	ld   a, b                                        ; $6ba4: $78
	xor  l                                           ; $6ba5: $ad
	xor  $ef                                         ; $6ba6: $ee $ef
	db   $ed                                         ; $6ba8: $ed
	jp   z, Jump_0b6_6598                            ; $6ba9: $ca $98 $65

	ld   b, e                                        ; $6bac: $43
	ld   [hl+], a                                    ; $6bad: $22
	ld   de, $4623                                   ; $6bae: $11 $23 $46
	adc  d                                           ; $6bb1: $8a
	call $feef                                       ; $6bb2: $cd $ef $fe
	db   $ed                                         ; $6bb5: $ed
	jp   z, Jump_0b6_65a7                            ; $6bb6: $ca $a7 $65

	ld   b, d                                        ; $6bb9: $42
	ld   de, $2311                                   ; $6bba: $11 $11 $23
	ld   d, [hl]                                     ; $6bbd: $56
	adc  d                                           ; $6bbe: $8a
	call $ffff                                       ; $6bbf: $cd $ff $ff
	db   $fd                                         ; $6bc2: $fd
	res  2, a                                        ; $6bc3: $cb $97
	ld   d, l                                        ; $6bc5: $55
	ld   [hl-], a                                    ; $6bc6: $32
	ld   de, $2311                                   ; $6bc7: $11 $11 $23
	ld   d, [hl]                                     ; $6bca: $56
	sbc  d                                           ; $6bcb: $9a
	sbc  $ef                                         ; $6bcc: $de $ef
	rst  $38                                         ; $6bce: $ff
	cp   $ca                                         ; $6bcf: $fe $ca
	sub  a                                           ; $6bd1: $97
	ld   d, h                                        ; $6bd2: $54
	ld   [hl-], a                                    ; $6bd3: $32
	ld   de, $2311                                   ; $6bd4: $11 $11 $23
	ld   b, [hl]                                     ; $6bd7: $46
	adc  d                                           ; $6bd8: $8a
	adc  $ff                                         ; $6bd9: $ce $ff
	rst  $38                                         ; $6bdb: $ff
	cp   $cb                                         ; $6bdc: $fe $cb
	and  a                                           ; $6bde: $a7
	ld   d, h                                        ; $6bdf: $54
	ld   [hl-], a                                    ; $6be0: $32
	ld   de, $1311                                   ; $6be1: $11 $11 $13
	ld   b, [hl]                                     ; $6be4: $46
	ld   a, d                                        ; $6be5: $7a
	cp   l                                           ; $6be6: $bd
	rst  $38                                         ; $6be7: $ff
	rst  $38                                         ; $6be8: $ff
	cp   $ec                                         ; $6be9: $fe $ec
	xor  b                                           ; $6beb: $a8
	ld   h, h                                        ; $6bec: $64
	ld   [hl-], a                                    ; $6bed: $32
	ld   de, $1211                                   ; $6bee: $11 $11 $12
	dec  [hl]                                        ; $6bf1: $35
	ld   l, b                                        ; $6bf2: $68
	xor  l                                           ; $6bf3: $ad
	rst  $28                                         ; $6bf4: $ef
	rst  $38                                         ; $6bf5: $ff
	rst  $38                                         ; $6bf6: $ff
	db   $fd                                         ; $6bf7: $fd
	jp   z, Jump_0b6_4375                            ; $6bf8: $ca $75 $43

	ld   hl, $1111                                   ; $6bfb: $21 $11 $11
	inc  hl                                          ; $6bfe: $23
	ld   d, a                                        ; $6bff: $57
	sbc  e                                           ; $6c00: $9b
	rst  $28                                         ; $6c01: $ef
	rst  $38                                         ; $6c02: $ff
	rst  $38                                         ; $6c03: $ff
	cp   $dc                                         ; $6c04: $fe $dc
	sub  a                                           ; $6c06: $97
	ld   d, h                                        ; $6c07: $54
	ld   sp, $1111                                   ; $6c08: $31 $11 $11
	ld   [de], a                                     ; $6c0b: $12
	dec  [hl]                                        ; $6c0c: $35
	ld   a, c                                        ; $6c0d: $79
	cp   l                                           ; $6c0e: $bd
	rst  $38                                         ; $6c0f: $ff
	rst  $38                                         ; $6c10: $ff
	rst  $38                                         ; $6c11: $ff
	xor  $c9                                         ; $6c12: $ee $c9
	ld   [hl], l                                     ; $6c14: $75
	ld   b, d                                        ; $6c15: $42
	ld   de, $1111                                   ; $6c16: $11 $11 $11
	inc  hl                                          ; $6c19: $23
	ld   b, [hl]                                     ; $6c1a: $46
	sbc  d                                           ; $6c1b: $9a
	rst  JumpTable                                         ; $6c1c: $df
	rst  $38                                         ; $6c1d: $ff
	rst  $38                                         ; $6c1e: $ff
	rst  $38                                         ; $6c1f: $ff
	db   $ed                                         ; $6c20: $ed
	cp   b                                           ; $6c21: $b8
	ld   h, h                                        ; $6c22: $64
	ld   [hl-], a                                    ; $6c23: $32
	ld   de, $1111                                   ; $6c24: $11 $11 $11
	inc  hl                                          ; $6c27: $23
	ld   d, a                                        ; $6c28: $57
	sbc  h                                           ; $6c29: $9c
	rst  $28                                         ; $6c2a: $ef
	rst  $38                                         ; $6c2b: $ff
	rst  $38                                         ; $6c2c: $ff
	rst  $38                                         ; $6c2d: $ff
	call c, Call_0b6_64a8                            ; $6c2e: $dc $a8 $64
	ld   [hl+], a                                    ; $6c31: $22
	ld   de, $1111                                   ; $6c32: $11 $11 $11
	inc  hl                                          ; $6c35: $23
	ld   d, a                                        ; $6c36: $57
	xor  e                                           ; $6c37: $ab
	rst  $28                                         ; $6c38: $ef
	rst  $38                                         ; $6c39: $ff
	rst  $38                                         ; $6c3a: $ff
	rst  $38                                         ; $6c3b: $ff
	call c, Call_0b6_64a8                            ; $6c3c: $dc $a8 $64
	ld   [hl-], a                                    ; $6c3f: $32
	ld   de, $1111                                   ; $6c40: $11 $11 $11
	inc  hl                                          ; $6c43: $23
	ld   d, a                                        ; $6c44: $57
	sbc  e                                           ; $6c45: $9b
	rst  JumpTable                                         ; $6c46: $df
	rst  $38                                         ; $6c47: $ff
	rst  $38                                         ; $6c48: $ff
	rst  $38                                         ; $6c49: $ff
	db   $ed                                         ; $6c4a: $ed
	cp   c                                           ; $6c4b: $b9
	ld   [hl], l                                     ; $6c4c: $75
	ld   [hl-], a                                    ; $6c4d: $32
	ld   hl, $1111                                   ; $6c4e: $21 $11 $11
	ld   [de], a                                     ; $6c51: $12
	dec  [hl]                                        ; $6c52: $35
	ld   a, c                                        ; $6c53: $79
	cp   [hl]                                        ; $6c54: $be
	rst  $38                                         ; $6c55: $ff
	rst  $38                                         ; $6c56: $ff
	rst  $38                                         ; $6c57: $ff
	cp   $db                                         ; $6c58: $fe $db
	sub  a                                           ; $6c5a: $97
	ld   d, e                                        ; $6c5b: $53
	ld   [hl+], a                                    ; $6c5c: $22
	ld   bc, $1111                                   ; $6c5d: $01 $11 $11
	inc  hl                                          ; $6c60: $23
	ld   d, a                                        ; $6c61: $57
	xor  h                                           ; $6c62: $ac
	rst  $28                                         ; $6c63: $ef
	rst  $38                                         ; $6c64: $ff
	rst  $38                                         ; $6c65: $ff
	rst  $38                                         ; $6c66: $ff
	xor  $ca                                         ; $6c67: $ee $ca
	ld   [hl], l                                     ; $6c69: $75
	ld   [hl-], a                                    ; $6c6a: $32
	ld   hl, $1111                                   ; $6c6b: $21 $11 $11
	ld   [de], a                                     ; $6c6e: $12
	dec  [hl]                                        ; $6c6f: $35
	ld   a, c                                        ; $6c70: $79
	cp   l                                           ; $6c71: $bd
	rst  $38                                         ; $6c72: $ff
	rst  $38                                         ; $6c73: $ff
	rst  $38                                         ; $6c74: $ff
	rst  $38                                         ; $6c75: $ff
	db   $ec                                         ; $6c76: $ec
	xor  c                                           ; $6c77: $a9
	ld   h, h                                        ; $6c78: $64
	ld   [hl-], a                                    ; $6c79: $32
	ld   de, $1111                                   ; $6c7a: $11 $11 $11
	ld   [de], a                                     ; $6c7d: $12
	dec  [hl]                                        ; $6c7e: $35
	ld   a, d                                        ; $6c7f: $7a
	adc  $ff                                         ; $6c80: $ce $ff
	rst  $38                                         ; $6c82: $ff
	rst  $38                                         ; $6c83: $ff
	rst  $38                                         ; $6c84: $ff
	call c, Call_0b6_64a8                            ; $6c85: $dc $a8 $64
	ld   [hl+], a                                    ; $6c88: $22
	ld   de, $1111                                   ; $6c89: $11 $11 $11
	ld   [de], a                                     ; $6c8c: $12
	dec  [hl]                                        ; $6c8d: $35
	ld   a, c                                        ; $6c8e: $79
	adc  $ff                                         ; $6c8f: $ce $ff
	rst  $38                                         ; $6c91: $ff
	rst  $38                                         ; $6c92: $ff
	cp   $eb                                         ; $6c93: $fe $eb
	sbc  b                                           ; $6c95: $98
	ld   h, h                                        ; $6c96: $64
	ld   [hl-], a                                    ; $6c97: $32
	ld   de, $1111                                   ; $6c98: $11 $11 $11
	ld   [bc], a                                     ; $6c9b: $02
	dec  [hl]                                        ; $6c9c: $35
	ld   a, c                                        ; $6c9d: $79
	cp   l                                           ; $6c9e: $bd
	rst  $28                                         ; $6c9f: $ef
	rst  $38                                         ; $6ca0: $ff
	rst  $38                                         ; $6ca1: $ff
	cp   $dc                                         ; $6ca2: $fe $dc
	xor  c                                           ; $6ca4: $a9
	halt                                             ; $6ca5: $76
	ld   d, h                                        ; $6ca6: $54
	ld   [hl-], a                                    ; $6ca7: $32
	ld   hl, $1111                                   ; $6ca8: $21 $11 $11
	inc  hl                                          ; $6cab: $23
	ld   d, a                                        ; $6cac: $57
	sbc  d                                           ; $6cad: $9a
	call $eeee                                       ; $6cae: $cd $ee $ee
	cp   $dd                                         ; $6cb1: $fe $dd
	res  5, c                                        ; $6cb3: $cb $a9
	add  a                                           ; $6cb5: $87
	ld   h, [hl]                                     ; $6cb6: $66
	ld   b, e                                        ; $6cb7: $43
	ld   b, e                                        ; $6cb8: $43
	ld   de, $2313                                   ; $6cb9: $11 $13 $23
	ld   d, [hl]                                     ; $6cbc: $56
	ld   a, b                                        ; $6cbd: $78
	xor  h                                           ; $6cbe: $ac
	db   $dd                                         ; $6cbf: $dd
	xor  $fe                                         ; $6cc0: $ee $fe
	xor  $cc                                         ; $6cc2: $ee $cc
	cp   d                                           ; $6cc4: $ba
	sbc  b                                           ; $6cc5: $98
	ld   h, l                                        ; $6cc6: $65
	ld   d, h                                        ; $6cc7: $54
	ld   [hl+], a                                    ; $6cc8: $22
	ld   hl, $2211                                   ; $6cc9: $21 $11 $22
	ld   b, l                                        ; $6ccc: $45
	ld   h, a                                        ; $6ccd: $67
	sbc  e                                           ; $6cce: $9b
	cp   l                                           ; $6ccf: $bd
	sbc  $de                                         ; $6cd0: $de $de
	sbc  $bb                                         ; $6cd2: $de $bb
	cp   d                                           ; $6cd4: $ba
	cp   c                                           ; $6cd5: $b9
	add  [hl]                                        ; $6cd6: $86
	ld   h, [hl]                                     ; $6cd7: $66
	ld   b, h                                        ; $6cd8: $44
	ld   b, h                                        ; $6cd9: $44
	inc  sp                                          ; $6cda: $33
	ld   [hl+], a                                    ; $6cdb: $22
	inc  [hl]                                        ; $6cdc: $34
	ld   d, [hl]                                     ; $6cdd: $56
	ld   a, c                                        ; $6cde: $79
	xor  d                                           ; $6cdf: $aa
	xor  h                                           ; $6ce0: $ac
	cp   e                                           ; $6ce1: $bb
	cp   e                                           ; $6ce2: $bb
	call $defc                                       ; $6ce3: $cd $fc $de
	sbc  d                                           ; $6ce6: $9a
	xor  b                                           ; $6ce7: $a8
	xor  c                                           ; $6ce8: $a9
	halt                                             ; $6ce9: $76
	ld   d, d                                        ; $6cea: $52
	ld   hl, $1321                                   ; $6ceb: $21 $21 $13
	ld   [hl], $69                                   ; $6cee: $36 $69
	xor  h                                           ; $6cf0: $ac
	xor  $ff                                         ; $6cf1: $ee $ff
	rst  $38                                         ; $6cf3: $ff
	call c, $abbb                                    ; $6cf4: $dc $bb $ab
	sub  l                                           ; $6cf7: $95
	ld   b, d                                        ; $6cf8: $42
	ld   de, $1111                                   ; $6cf9: $11 $11 $11
	inc  b                                           ; $6cfc: $04
	ld   b, [hl]                                     ; $6cfd: $46
	ld   a, c                                        ; $6cfe: $79
	adc  $ef                                         ; $6cff: $ce $ef
	rst  $38                                         ; $6d01: $ff
	rst  $38                                         ; $6d02: $ff
	rst  $38                                         ; $6d03: $ff
	db   $db                                         ; $6d04: $db
	halt                                             ; $6d05: $76
	ld   sp, $1111                                   ; $6d06: $31 $11 $11
	ld   de, $5911                                   ; $6d09: $11 $11 $59
	call $ffef                                       ; $6d0c: $cd $ef $ff
	rst  $38                                         ; $6d0f: $ff
	rst  $38                                         ; $6d10: $ff
	cp   $ca                                         ; $6d11: $fe $ca
	ld   [hl], e                                     ; $6d13: $73
	ld   de, $1111                                   ; $6d14: $11 $11 $11
	ld   de, $5c11                                   ; $6d17: $11 $11 $5c
	rst  $38                                         ; $6d1a: $ff
	rst  $38                                         ; $6d1b: $ff
	rst  $38                                         ; $6d1c: $ff
	rst  $38                                         ; $6d1d: $ff
	rst  $38                                         ; $6d1e: $ff
	ld   sp, hl                                      ; $6d1f: $f9
	sub  a                                           ; $6d20: $97
	ld   sp, $1111                                   ; $6d21: $31 $11 $11
	ld   de, $1514                                   ; $6d24: $11 $14 $15
	rst  $28                                         ; $6d27: $ef
	rst  $38                                         ; $6d28: $ff
	rst  $38                                         ; $6d29: $ff
	rst  $38                                         ; $6d2a: $ff
	rst  $38                                         ; $6d2b: $ff
	rst  $38                                         ; $6d2c: $ff
	or   [hl]                                        ; $6d2d: $b6
	ld   b, e                                        ; $6d2e: $43
	ld   de, $1111                                   ; $6d2f: $11 $11 $11
	ld   de, $8f53                                   ; $6d32: $11 $53 $8f
	rst  $38                                         ; $6d35: $ff
	rst  $38                                         ; $6d36: $ff
	rst  $38                                         ; $6d37: $ff
	rst  $38                                         ; $6d38: $ff
	rst  $38                                         ; $6d39: $ff
	rst  $10                                         ; $6d3a: $d7
	ld   d, l                                        ; $6d3b: $55
	ld   hl, $1111                                   ; $6d3c: $21 $11 $11
	ld   de, $4c43                                   ; $6d3f: $11 $43 $4c
	rst  $38                                         ; $6d42: $ff
	rst  $38                                         ; $6d43: $ff
	rst  $38                                         ; $6d44: $ff
	rst  $38                                         ; $6d45: $ff
	rst  $38                                         ; $6d46: $ff
	ei                                               ; $6d47: $fb
	ld   d, e                                        ; $6d48: $53
	ld   sp, $1111                                   ; $6d49: $31 $11 $11
	ld   de, $4a14                                   ; $6d4c: $11 $14 $4a
	rst  $38                                         ; $6d4f: $ff
	rst  $38                                         ; $6d50: $ff
	rst  $38                                         ; $6d51: $ff
	rst  $38                                         ; $6d52: $ff
	rst  $38                                         ; $6d53: $ff
	db   $ec                                         ; $6d54: $ec
	add  h                                           ; $6d55: $84
	ld   sp, $1111                                   ; $6d56: $31 $11 $11
	ld   de, $3715                                   ; $6d59: $11 $15 $37
	rst  $38                                         ; $6d5c: $ff
	rst  $38                                         ; $6d5d: $ff
	rst  $38                                         ; $6d5e: $ff
	rst  $38                                         ; $6d5f: $ff
	rst  $28                                         ; $6d60: $ef
	db   $fd                                         ; $6d61: $fd
	halt                                             ; $6d62: $76
	ld   h, c                                        ; $6d63: $61
	ld   de, $1111                                   ; $6d64: $11 $11 $11
	dec  d                                           ; $6d67: $15
	ld   b, h                                        ; $6d68: $44
	rst  JumpTable                                         ; $6d69: $df
	rst  $38                                         ; $6d6a: $ff
	rst  $38                                         ; $6d6b: $ff
	rst  $38                                         ; $6d6c: $ff
	db   $ed                                         ; $6d6d: $ed
	xor  $96                                         ; $6d6e: $ee $96
	ld   b, d                                        ; $6d70: $42
	ld   de, $1111                                   ; $6d71: $11 $11 $11
	inc  d                                           ; $6d74: $14
	ld   h, c                                        ; $6d75: $61
	rst  JumpTable                                         ; $6d76: $df
	rst  $38                                         ; $6d77: $ff
	rst  $38                                         ; $6d78: $ff
	rst  $38                                         ; $6d79: $ff
	set  7, [hl]                                     ; $6d7a: $cb $fe
	and  [hl]                                        ; $6d7c: $a6
	ld   d, h                                        ; $6d7d: $54
	ld   hl, $1111                                   ; $6d7e: $21 $11 $11
	ld   de, $9f76                                   ; $6d81: $11 $76 $9f
	rst  $38                                         ; $6d84: $ff
	rst  $38                                         ; $6d85: $ff
	rst  $38                                         ; $6d86: $ff
	db   $fc                                         ; $6d87: $fc
	sbc  $b5                                         ; $6d88: $de $b5
	ld   d, h                                        ; $6d8a: $54
	ld   de, $1111                                   ; $6d8b: $11 $11 $11
	ld   de, $8f95                                   ; $6d8e: $11 $95 $8f
	rst  $38                                         ; $6d91: $ff
	rst  $38                                         ; $6d92: $ff
	rst  $38                                         ; $6d93: $ff
	db   $fc                                         ; $6d94: $fc
	cp   l                                           ; $6d95: $bd
	rst  $20                                         ; $6d96: $e7
	ld   b, h                                        ; $6d97: $44
	ld   sp, $1111                                   ; $6d98: $31 $11 $11
	ld   de, $8f74                                   ; $6d9b: $11 $74 $8f
	rst  $38                                         ; $6d9e: $ff
	rst  $38                                         ; $6d9f: $ff
	rst  $38                                         ; $6da0: $ff
	ld   a, [$d7cf]                                  ; $6da1: $fa $cf $d7
	ld   h, e                                        ; $6da4: $63
	ld   b, c                                        ; $6da5: $41
	ld   de, $1111                                   ; $6da6: $11 $11 $11
	ld   [hl], h                                     ; $6da9: $74
	ld   e, a                                        ; $6daa: $5f
	rst  $38                                         ; $6dab: $ff
	rst  $38                                         ; $6dac: $ff
	rst  $38                                         ; $6dad: $ff
	db   $fd                                         ; $6dae: $fd
	adc  $e7                                         ; $6daf: $ce $e7
	ld   d, h                                        ; $6db1: $54
	ld   b, c                                        ; $6db2: $41
	ld   de, $1111                                   ; $6db3: $11 $11 $11
	ld   [hl], h                                     ; $6db6: $74
	ld   l, a                                        ; $6db7: $6f
	rst  $38                                         ; $6db8: $ff
	rst  $38                                         ; $6db9: $ff
	rst  $38                                         ; $6dba: $ff
	db   $fd                                         ; $6dbb: $fd
	sbc  $c9                                         ; $6dbc: $de $c9
	ld   h, l                                        ; $6dbe: $65
	ld   d, c                                        ; $6dbf: $51
	ld   de, $1111                                   ; $6dc0: $11 $11 $11
	ld   h, h                                        ; $6dc3: $64
	ld   c, a                                        ; $6dc4: $4f
	rst  $38                                         ; $6dc5: $ff
	rst  $38                                         ; $6dc6: $ff
	rst  $38                                         ; $6dc7: $ff
	db   $fc                                         ; $6dc8: $fc
	adc  $e9                                         ; $6dc9: $ce $e9
	ld   [hl], $51                                   ; $6dcb: $36 $51
	ld   de, $1111                                   ; $6dcd: $11 $11 $11
	ld   h, l                                        ; $6dd0: $65
	cp   l                                           ; $6dd1: $bd
	rst  $28                                         ; $6dd2: $ef
	cp   $ff                                         ; $6dd3: $fe $ff
	db   $fd                                         ; $6dd5: $fd
	sbc  e                                           ; $6dd6: $9b
	ld   a, [$4162]                                  ; $6dd7: $fa $62 $41
	ld   de, $1511                                   ; $6dda: $11 $11 $15
	ld   d, d                                        ; $6ddd: $52
	xor  a                                           ; $6dde: $af
	rst  $38                                         ; $6ddf: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6de0: $cf
	rst  $38                                         ; $6de1: $ff
	jp   z, $c4df                                    ; $6de2: $ca $df $c4

	ld   b, a                                        ; $6de5: $47
	ld   d, c                                        ; $6de6: $51
	ld   de, $1211                                   ; $6de7: $11 $11 $12
	ld   a, e                                        ; $6dea: $7b
	call c, $f9df                                    ; $6deb: $dc $df $f9
	rst  $38                                         ; $6dee: $ff
	ei                                               ; $6def: $fb
	cp   h                                           ; $6df0: $bc
	db   $fc                                         ; $6df1: $fc
	ld   [de], a                                     ; $6df2: $12
	ld   d, c                                        ; $6df3: $51
	ld   de, $4311                                   ; $6df4: $11 $11 $43
	jr   @-$0f                                       ; $6df7: $18 $ef

	ld   a, [$fcdf]                                  ; $6df9: $fa $df $fc
	adc  $ff                                         ; $6dfc: $ce $ff
	ld   b, [hl]                                     ; $6dfe: $46
	ld   [hl], l                                     ; $6dff: $75
	ld   de, $1111                                   ; $6e00: $11 $11 $11
	daa                                              ; $6e03: $27
	ld   a, b                                        ; $6e04: $78
	rst  $28                                         ; $6e05: $ef
	db   $fd                                         ; $6e06: $fd
	call $bdff                                       ; $6e07: $cd $ff $bd
	db   $dd                                         ; $6e0a: $dd
	and  h                                           ; $6e0b: $a4
	inc  hl                                          ; $6e0c: $23
	ld   hl, $1111                                   ; $6e0d: $21 $11 $11
	ld   h, h                                        ; $6e10: $64
	ld   a, l                                        ; $6e11: $7d
	cp   a                                           ; $6e12: $bf
	db   $db                                         ; $6e13: $db
	rst  $38                                         ; $6e14: $ff
	xor  l                                           ; $6e15: $ad
	ei                                               ; $6e16: $fb
	cp   h                                           ; $6e17: $bc
	sub  l                                           ; $6e18: $95
	ld   sp, $1116                                   ; $6e19: $31 $16 $11
	dec  d                                           ; $6e1c: $15
	sub  [hl]                                        ; $6e1d: $96
	ld   e, h                                        ; $6e1e: $5c
	ei                                               ; $6e1f: $fb
	xor  d                                           ; $6e20: $aa
	rst  $38                                         ; $6e21: $ff
	push bc                                          ; $6e22: $c5
	rst  $28                                         ; $6e23: $ef
	push bc                                          ; $6e24: $c5
	ld   h, [hl]                                     ; $6e25: $66
	ld   b, c                                        ; $6e26: $41
	inc  d                                           ; $6e27: $14
	ld   hl, $c515                                   ; $6e28: $21 $15 $c5
	ld   e, l                                        ; $6e2b: $5d
	db   $fd                                         ; $6e2c: $fd
	cp   h                                           ; $6e2d: $bc
	rst  $38                                         ; $6e2e: $ff
	or   l                                           ; $6e2f: $b5
	rst  JumpTable                                         ; $6e30: $df
	and  l                                           ; $6e31: $a5
	ld   h, e                                        ; $6e32: $63
	inc  de                                          ; $6e33: $13
	ld   de, $1922                                   ; $6e34: $11 $22 $19
	and  [hl]                                        ; $6e37: $a6
	sbc  l                                           ; $6e38: $9d
	set  3, b                                        ; $6e39: $cb $d8
	rst  JumpTable                                         ; $6e3b: $df
	xor  d                                           ; $6e3c: $aa
	adc  $c4                                         ; $6e3d: $ce $c4
	ld   [hl+], a                                    ; $6e3f: $22
	ld   d, h                                        ; $6e40: $54
	ld   hl, $7723                                   ; $6e41: $21 $23 $77
	add  hl, hl                                      ; $6e44: $29
	xor  $a7                                         ; $6e45: $ee $a7
	rst  JumpTable                                         ; $6e47: $df
	ld   a, [$fa8e]                                  ; $6e48: $fa $8e $fa
	ld   d, e                                        ; $6e4b: $53
	ld   c, b                                        ; $6e4c: $48
	ld   sp, $4129                                   ; $6e4d: $31 $29 $41
	ld   l, b                                        ; $6e50: $68
	adc  d                                           ; $6e51: $8a
	ld   a, b                                        ; $6e52: $78
	cp   $7a                                         ; $6e53: $fe $7a
	cp   $7e                                         ; $6e55: $fe $7e
	add  $91                                         ; $6e57: $c6 $91
	add  hl, sp                                      ; $6e59: $39
	ld   b, c                                        ; $6e5a: $41
	inc  [hl]                                        ; $6e5b: $34
	ld   b, a                                        ; $6e5c: $47
	dec  [hl]                                        ; $6e5d: $35
	cp   e                                           ; $6e5e: $bb
	ld   h, [hl]                                     ; $6e5f: $66
	rst  $28                                         ; $6e60: $ef
	cp   h                                           ; $6e61: $bc
	reti                                             ; $6e62: $d9


	ei                                               ; $6e63: $fb
	ld   a, d                                        ; $6e64: $7a
	ld   d, l                                        ; $6e65: $55
	ld   b, h                                        ; $6e66: $44
	ld   [hl], $42                                   ; $6e67: $36 $42
	ld   d, h                                        ; $6e69: $54
	ld   a, d                                        ; $6e6a: $7a
	ld   l, b                                        ; $6e6b: $68
	cp   d                                           ; $6e6c: $ba
	xor  l                                           ; $6e6d: $ad
	jp   hl                                          ; $6e6e: $e9


	db   $fd                                         ; $6e6f: $fd
	adc  l                                           ; $6e70: $8d
	ld   [hl], h                                     ; $6e71: $74
	ld   [hl], a                                     ; $6e72: $77
	ld   [hl], $53                                   ; $6e73: $36 $53
	ld   h, [hl]                                     ; $6e75: $66
	ld   d, d                                        ; $6e76: $52
	adc  e                                           ; $6e77: $8b
	adc  d                                           ; $6e78: $8a
	and  [hl]                                        ; $6e79: $a6
	rst  $28                                         ; $6e7a: $ef
	ld   e, d                                        ; $6e7b: $5a
	db   $dd                                         ; $6e7c: $dd
	and  a                                           ; $6e7d: $a7
	ld   l, b                                        ; $6e7e: $68
	and  e                                           ; $6e7f: $a3
	dec  h                                           ; $6e80: $25
	ld   h, h                                        ; $6e81: $64
	ld   h, [hl]                                     ; $6e82: $66
	ld   [hl], $b7                                   ; $6e83: $36 $b7
	ld   c, d                                        ; $6e85: $4a
	call c, $bd98                                    ; $6e86: $dc $98 $bd
	reti                                             ; $6e89: $d9


	ld   e, e                                        ; $6e8a: $5b
	sub  e                                           ; $6e8b: $93
	ld   l, c                                        ; $6e8c: $69
	sub  h                                           ; $6e8d: $94
	ld   d, l                                        ; $6e8e: $55
	halt                                             ; $6e8f: $76
	ld   d, l                                        ; $6e90: $55
	adc  d                                           ; $6e91: $8a
	halt                                             ; $6e92: $76
	cp   [hl]                                        ; $6e93: $be
	adc  c                                           ; $6e94: $89
	xor  c                                           ; $6e95: $a9
	res  1, b                                        ; $6e96: $cb $88
	sbc  b                                           ; $6e98: $98
	ld   [hl], h                                     ; $6e99: $74
	ld   d, [hl]                                     ; $6e9a: $56
	ld   d, l                                        ; $6e9b: $55
	ld   a, b                                        ; $6e9c: $78
	ld   b, l                                        ; $6e9d: $45
	adc  d                                           ; $6e9e: $8a
	add  [hl]                                        ; $6e9f: $86
	xor  d                                           ; $6ea0: $aa
	xor  e                                           ; $6ea1: $ab
	sbc  c                                           ; $6ea2: $99
	cp   l                                           ; $6ea3: $bd
	add  a                                           ; $6ea4: $87
	ld   e, b                                        ; $6ea5: $58
	and  l                                           ; $6ea6: $a5
	ld   e, b                                        ; $6ea7: $58
	add  a                                           ; $6ea8: $87
	ld   [hl], h                                     ; $6ea9: $74
	ld   a, d                                        ; $6eaa: $7a
	ld   h, a                                        ; $6eab: $67
	sbc  b                                           ; $6eac: $98
	sbc  b                                           ; $6ead: $98
	xor  c                                           ; $6eae: $a9
	adc  b                                           ; $6eaf: $88
	adc  e                                           ; $6eb0: $8b
	adc  b                                           ; $6eb1: $88
	adc  c                                           ; $6eb2: $89
	ld   [hl], a                                     ; $6eb3: $77
	sub  l                                           ; $6eb4: $95
	ld   [hl], a                                     ; $6eb5: $77
	halt                                             ; $6eb6: $76
	halt                                             ; $6eb7: $76
	adc  c                                           ; $6eb8: $89
	ld   h, a                                        ; $6eb9: $67
	sbc  e                                           ; $6eba: $9b
	ld   a, d                                        ; $6ebb: $7a
	sbc  b                                           ; $6ebc: $98
	xor  c                                           ; $6ebd: $a9
	sub  l                                           ; $6ebe: $95
	xor  b                                           ; $6ebf: $a8
	ld   a, b                                        ; $6ec0: $78
	ld   h, [hl]                                     ; $6ec1: $66
	add  a                                           ; $6ec2: $87
	ld   a, c                                        ; $6ec3: $79
	ld   h, a                                        ; $6ec4: $67
	sbc  b                                           ; $6ec5: $98
	ld   a, b                                        ; $6ec6: $78
	adc  c                                           ; $6ec7: $89
	adc  d                                           ; $6ec8: $8a
	adc  c                                           ; $6ec9: $89
	sbc  c                                           ; $6eca: $99
	adc  b                                           ; $6ecb: $88
	sub  a                                           ; $6ecc: $97
	xor  b                                           ; $6ecd: $a8
	adc  b                                           ; $6ece: $88
	ld   [hl], a                                     ; $6ecf: $77
	adc  c                                           ; $6ed0: $89
	adc  b                                           ; $6ed1: $88
	adc  d                                           ; $6ed2: $8a
	adc  b                                           ; $6ed3: $88
	sbc  c                                           ; $6ed4: $99
	adc  c                                           ; $6ed5: $89
	ld   a, b                                        ; $6ed6: $78
	sbc  b                                           ; $6ed7: $98
	add  a                                           ; $6ed8: $87
	adc  c                                           ; $6ed9: $89
	sbc  b                                           ; $6eda: $98
	ld   a, b                                        ; $6edb: $78
	adc  b                                           ; $6edc: $88
	adc  b                                           ; $6edd: $88
	ld   a, b                                        ; $6ede: $78
	sub  a                                           ; $6edf: $97
	adc  c                                           ; $6ee0: $89
	adc  c                                           ; $6ee1: $89
	sbc  c                                           ; $6ee2: $99
	sbc  b                                           ; $6ee3: $98
	adc  b                                           ; $6ee4: $88
	ld   a, c                                        ; $6ee5: $79
	adc  c                                           ; $6ee6: $89
	add  a                                           ; $6ee7: $87
	ld   [hl], a                                     ; $6ee8: $77
	adc  b                                           ; $6ee9: $88
	ld   a, b                                        ; $6eea: $78
	sbc  b                                           ; $6eeb: $98
	adc  b                                           ; $6eec: $88
	adc  b                                           ; $6eed: $88
	adc  c                                           ; $6eee: $89
	adc  c                                           ; $6eef: $89
	adc  b                                           ; $6ef0: $88
	adc  c                                           ; $6ef1: $89
	sbc  b                                           ; $6ef2: $98
	adc  b                                           ; $6ef3: $88
	adc  b                                           ; $6ef4: $88
	ld   [hl], a                                     ; $6ef5: $77
	add  a                                           ; $6ef6: $87
	sub  a                                           ; $6ef7: $97
	sbc  b                                           ; $6ef8: $98
	adc  c                                           ; $6ef9: $89
	adc  b                                           ; $6efa: $88
	sbc  c                                           ; $6efb: $99
	adc  b                                           ; $6efc: $88
	sbc  b                                           ; $6efd: $98
	sbc  b                                           ; $6efe: $98
	sbc  b                                           ; $6eff: $98
	ld   a, b                                        ; $6f00: $78
	adc  b                                           ; $6f01: $88
	ld   [hl], a                                     ; $6f02: $77
	add  a                                           ; $6f03: $87
	adc  b                                           ; $6f04: $88
	ld   a, b                                        ; $6f05: $78
	sbc  b                                           ; $6f06: $98
	adc  b                                           ; $6f07: $88
	adc  c                                           ; $6f08: $89
	sbc  b                                           ; $6f09: $98
	adc  b                                           ; $6f0a: $88
	sbc  b                                           ; $6f0b: $98
	adc  b                                           ; $6f0c: $88
	adc  b                                           ; $6f0d: $88
	add  a                                           ; $6f0e: $87
	adc  b                                           ; $6f0f: $88
	ld   a, b                                        ; $6f10: $78
	adc  b                                           ; $6f11: $88
	adc  b                                           ; $6f12: $88
	adc  b                                           ; $6f13: $88
	adc  b                                           ; $6f14: $88
	adc  b                                           ; $6f15: $88
	adc  b                                           ; $6f16: $88
	adc  b                                           ; $6f17: $88
	ld   [hl], a                                     ; $6f18: $77
	adc  b                                           ; $6f19: $88
	adc  b                                           ; $6f1a: $88
	add  a                                           ; $6f1b: $87
	ld   [hl], a                                     ; $6f1c: $77
	ld   [hl], a                                     ; $6f1d: $77
	ld   a, b                                        ; $6f1e: $78
	add  a                                           ; $6f1f: $87
	adc  b                                           ; $6f20: $88
	add  a                                           ; $6f21: $87
	ld   a, b                                        ; $6f22: $78
	adc  b                                           ; $6f23: $88
	adc  b                                           ; $6f24: $88
	ld   a, b                                        ; $6f25: $78
	adc  b                                           ; $6f26: $88
	adc  b                                           ; $6f27: $88
	ld   [hl], a                                     ; $6f28: $77
	ld   a, b                                        ; $6f29: $78
	ld   a, b                                        ; $6f2a: $78
	add  a                                           ; $6f2b: $87
	ld   [hl], a                                     ; $6f2c: $77
	adc  b                                           ; $6f2d: $88
	adc  b                                           ; $6f2e: $88
	ld   a, b                                        ; $6f2f: $78
	adc  b                                           ; $6f30: $88
	add  a                                           ; $6f31: $87
	ld   a, c                                        ; $6f32: $79
	add  a                                           ; $6f33: $87
	ld   a, b                                        ; $6f34: $78
	sub  a                                           ; $6f35: $97
	ld   [hl], a                                     ; $6f36: $77
	ld   a, b                                        ; $6f37: $78
	ld   a, b                                        ; $6f38: $78
	add  a                                           ; $6f39: $87
	add  a                                           ; $6f3a: $87
	adc  b                                           ; $6f3b: $88
	adc  b                                           ; $6f3c: $88
	ld   a, b                                        ; $6f3d: $78
	adc  b                                           ; $6f3e: $88
	adc  b                                           ; $6f3f: $88
	adc  b                                           ; $6f40: $88
	adc  b                                           ; $6f41: $88
	ld   [hl], a                                     ; $6f42: $77
	adc  b                                           ; $6f43: $88
	add  a                                           ; $6f44: $87
	adc  b                                           ; $6f45: $88
	adc  b                                           ; $6f46: $88
	ld   a, b                                        ; $6f47: $78
	adc  b                                           ; $6f48: $88
	adc  b                                           ; $6f49: $88
	add  a                                           ; $6f4a: $87
	ld   a, b                                        ; $6f4b: $78
	adc  b                                           ; $6f4c: $88
	adc  b                                           ; $6f4d: $88
	adc  b                                           ; $6f4e: $88
	adc  b                                           ; $6f4f: $88
	ld   a, b                                        ; $6f50: $78
	add  a                                           ; $6f51: $87
	adc  b                                           ; $6f52: $88
	adc  b                                           ; $6f53: $88
	adc  b                                           ; $6f54: $88
	adc  b                                           ; $6f55: $88
	adc  b                                           ; $6f56: $88
	adc  b                                           ; $6f57: $88
	adc  b                                           ; $6f58: $88
	adc  b                                           ; $6f59: $88
	adc  b                                           ; $6f5a: $88
	add  a                                           ; $6f5b: $87
	sbc  b                                           ; $6f5c: $98
	ld   a, b                                        ; $6f5d: $78
	adc  b                                           ; $6f5e: $88
	adc  b                                           ; $6f5f: $88
	adc  b                                           ; $6f60: $88
	adc  b                                           ; $6f61: $88
	adc  b                                           ; $6f62: $88
	adc  b                                           ; $6f63: $88
	ld   a, b                                        ; $6f64: $78
	adc  b                                           ; $6f65: $88
	adc  b                                           ; $6f66: $88
	adc  b                                           ; $6f67: $88
	adc  b                                           ; $6f68: $88
	adc  b                                           ; $6f69: $88
	add  a                                           ; $6f6a: $87
	adc  b                                           ; $6f6b: $88
	adc  c                                           ; $6f6c: $89
	adc  b                                           ; $6f6d: $88
	adc  b                                           ; $6f6e: $88
	sbc  b                                           ; $6f6f: $98
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
	sbc  b                                           ; $6f82: $98
	adc  b                                           ; $6f83: $88
	adc  b                                           ; $6f84: $88
	adc  b                                           ; $6f85: $88
	adc  b                                           ; $6f86: $88
	adc  b                                           ; $6f87: $88
	adc  b                                           ; $6f88: $88
	adc  c                                           ; $6f89: $89
	adc  b                                           ; $6f8a: $88
	adc  b                                           ; $6f8b: $88
	sbc  b                                           ; $6f8c: $98
	adc  b                                           ; $6f8d: $88
	adc  b                                           ; $6f8e: $88
	adc  b                                           ; $6f8f: $88
	adc  b                                           ; $6f90: $88
	adc  b                                           ; $6f91: $88
	adc  b                                           ; $6f92: $88
	adc  c                                           ; $6f93: $89
	adc  b                                           ; $6f94: $88
	adc  b                                           ; $6f95: $88
	adc  b                                           ; $6f96: $88
	adc  b                                           ; $6f97: $88
	adc  b                                           ; $6f98: $88
	adc  b                                           ; $6f99: $88
	adc  b                                           ; $6f9a: $88
	adc  b                                           ; $6f9b: $88
	adc  b                                           ; $6f9c: $88
	sbc  b                                           ; $6f9d: $98
	adc  b                                           ; $6f9e: $88
	adc  c                                           ; $6f9f: $89
	adc  b                                           ; $6fa0: $88
	sbc  b                                           ; $6fa1: $98
	adc  b                                           ; $6fa2: $88
	adc  b                                           ; $6fa3: $88
	sbc  c                                           ; $6fa4: $99
	ld   a, b                                        ; $6fa5: $78
	adc  b                                           ; $6fa6: $88
	adc  b                                           ; $6fa7: $88
	sbc  b                                           ; $6fa8: $98
	adc  b                                           ; $6fa9: $88
	adc  b                                           ; $6faa: $88
	adc  c                                           ; $6fab: $89
	adc  b                                           ; $6fac: $88
	adc  c                                           ; $6fad: $89
	adc  b                                           ; $6fae: $88
	adc  b                                           ; $6faf: $88
	adc  b                                           ; $6fb0: $88
	adc  b                                           ; $6fb1: $88
	adc  b                                           ; $6fb2: $88
	adc  b                                           ; $6fb3: $88
	adc  b                                           ; $6fb4: $88
	sbc  b                                           ; $6fb5: $98
	adc  b                                           ; $6fb6: $88
	adc  b                                           ; $6fb7: $88
	adc  c                                           ; $6fb8: $89
	adc  b                                           ; $6fb9: $88
	adc  b                                           ; $6fba: $88
	adc  b                                           ; $6fbb: $88
	adc  b                                           ; $6fbc: $88
	adc  c                                           ; $6fbd: $89
	adc  b                                           ; $6fbe: $88
	adc  b                                           ; $6fbf: $88
	sbc  b                                           ; $6fc0: $98
	adc  b                                           ; $6fc1: $88
	sbc  b                                           ; $6fc2: $98
	adc  b                                           ; $6fc3: $88
	adc  b                                           ; $6fc4: $88
	adc  b                                           ; $6fc5: $88
	adc  b                                           ; $6fc6: $88
	adc  c                                           ; $6fc7: $89
	ld   [hl], a                                     ; $6fc8: $77
	xor  d                                           ; $6fc9: $aa
	ld   a, b                                        ; $6fca: $78
	ld   a, b                                        ; $6fcb: $78
	sub  a                                           ; $6fcc: $97
	adc  b                                           ; $6fcd: $88
	adc  b                                           ; $6fce: $88
	ld   a, b                                        ; $6fcf: $78
	adc  c                                           ; $6fd0: $89
	add  a                                           ; $6fd1: $87
	adc  c                                           ; $6fd2: $89
	adc  c                                           ; $6fd3: $89
	adc  b                                           ; $6fd4: $88
	adc  b                                           ; $6fd5: $88
	sbc  b                                           ; $6fd6: $98
	adc  c                                           ; $6fd7: $89
	adc  c                                           ; $6fd8: $89
	adc  b                                           ; $6fd9: $88
	adc  b                                           ; $6fda: $88
	adc  b                                           ; $6fdb: $88
	adc  b                                           ; $6fdc: $88
	adc  b                                           ; $6fdd: $88
	ld   [hl], a                                     ; $6fde: $77
	sbc  c                                           ; $6fdf: $99
	sbc  b                                           ; $6fe0: $98
	adc  c                                           ; $6fe1: $89
	sub  a                                           ; $6fe2: $97
	adc  c                                           ; $6fe3: $89
	sbc  b                                           ; $6fe4: $98
	ld   a, b                                        ; $6fe5: $78
	adc  b                                           ; $6fe6: $88
	add  a                                           ; $6fe7: $87
	adc  b                                           ; $6fe8: $88
	adc  b                                           ; $6fe9: $88
	adc  b                                           ; $6fea: $88
	adc  b                                           ; $6feb: $88
	adc  b                                           ; $6fec: $88
	adc  c                                           ; $6fed: $89
	adc  c                                           ; $6fee: $89
	adc  b                                           ; $6fef: $88
	sbc  c                                           ; $6ff0: $99
	adc  b                                           ; $6ff1: $88
	sbc  b                                           ; $6ff2: $98
	add  a                                           ; $6ff3: $87
	adc  c                                           ; $6ff4: $89
	ld   [hl], a                                     ; $6ff5: $77
	adc  b                                           ; $6ff6: $88
	adc  b                                           ; $6ff7: $88
	adc  b                                           ; $6ff8: $88
	adc  b                                           ; $6ff9: $88
	adc  c                                           ; $6ffa: $89
	adc  c                                           ; $6ffb: $89
	adc  b                                           ; $6ffc: $88
	sbc  b                                           ; $6ffd: $98
	adc  b                                           ; $6ffe: $88
	adc  b                                           ; $6fff: $88
	sbc  b                                           ; $7000: $98
	ld   a, b                                        ; $7001: $78
	adc  b                                           ; $7002: $88
	adc  b                                           ; $7003: $88
	adc  b                                           ; $7004: $88
	adc  c                                           ; $7005: $89
	adc  b                                           ; $7006: $88
	adc  b                                           ; $7007: $88
	sbc  b                                           ; $7008: $98
	sub  a                                           ; $7009: $97
	adc  b                                           ; $700a: $88
	adc  b                                           ; $700b: $88
	adc  b                                           ; $700c: $88
	adc  c                                           ; $700d: $89
	adc  b                                           ; $700e: $88
	ld   a, b                                        ; $700f: $78
	sbc  b                                           ; $7010: $98
	adc  b                                           ; $7011: $88
	sbc  b                                           ; $7012: $98
	adc  b                                           ; $7013: $88
	adc  b                                           ; $7014: $88
	adc  b                                           ; $7015: $88
	sbc  b                                           ; $7016: $98
	adc  b                                           ; $7017: $88
	adc  b                                           ; $7018: $88
	adc  b                                           ; $7019: $88
	adc  c                                           ; $701a: $89
	adc  b                                           ; $701b: $88
	adc  b                                           ; $701c: $88
	adc  b                                           ; $701d: $88
	adc  b                                           ; $701e: $88
	adc  b                                           ; $701f: $88
	adc  b                                           ; $7020: $88
	sbc  b                                           ; $7021: $98
	adc  b                                           ; $7022: $88
	adc  b                                           ; $7023: $88
	adc  b                                           ; $7024: $88
	sbc  c                                           ; $7025: $99
	adc  b                                           ; $7026: $88
	adc  b                                           ; $7027: $88
	sbc  b                                           ; $7028: $98
	adc  b                                           ; $7029: $88
	adc  c                                           ; $702a: $89
	adc  b                                           ; $702b: $88
	adc  b                                           ; $702c: $88
	adc  b                                           ; $702d: $88
	sbc  b                                           ; $702e: $98
	adc  c                                           ; $702f: $89
	adc  b                                           ; $7030: $88
	add  a                                           ; $7031: $87
	sbc  b                                           ; $7032: $98
	adc  b                                           ; $7033: $88
	ld   a, b                                        ; $7034: $78
	sbc  b                                           ; $7035: $98
	adc  b                                           ; $7036: $88
	adc  c                                           ; $7037: $89
	adc  b                                           ; $7038: $88
	adc  c                                           ; $7039: $89
	adc  b                                           ; $703a: $88
	adc  b                                           ; $703b: $88
	sbc  b                                           ; $703c: $98
	adc  b                                           ; $703d: $88
	adc  b                                           ; $703e: $88
	add  a                                           ; $703f: $87
	adc  c                                           ; $7040: $89
	adc  b                                           ; $7041: $88
	adc  b                                           ; $7042: $88
	adc  b                                           ; $7043: $88
	adc  c                                           ; $7044: $89
	sbc  c                                           ; $7045: $99
	add  a                                           ; $7046: $87
	adc  b                                           ; $7047: $88
	adc  b                                           ; $7048: $88
	adc  b                                           ; $7049: $88
	adc  b                                           ; $704a: $88
	adc  b                                           ; $704b: $88
	sbc  b                                           ; $704c: $98
	sbc  b                                           ; $704d: $98
	adc  b                                           ; $704e: $88
	adc  b                                           ; $704f: $88
	adc  c                                           ; $7050: $89
	adc  c                                           ; $7051: $89
	adc  c                                           ; $7052: $89
	adc  b                                           ; $7053: $88
	adc  c                                           ; $7054: $89
	adc  b                                           ; $7055: $88
	adc  b                                           ; $7056: $88
	sbc  b                                           ; $7057: $98
	sbc  b                                           ; $7058: $98
	adc  c                                           ; $7059: $89
	adc  b                                           ; $705a: $88
	adc  b                                           ; $705b: $88
	ld   [hl], a                                     ; $705c: $77
	ld   a, b                                        ; $705d: $78
	adc  b                                           ; $705e: $88
	ld   [hl], a                                     ; $705f: $77
	add  a                                           ; $7060: $87
	ld   [hl], a                                     ; $7061: $77
	ld   a, b                                        ; $7062: $78
	adc  b                                           ; $7063: $88
	ld   a, b                                        ; $7064: $78
	sbc  b                                           ; $7065: $98
	sbc  d                                           ; $7066: $9a
	sbc  b                                           ; $7067: $98
	adc  b                                           ; $7068: $88
	add  a                                           ; $7069: $87
	ld   a, c                                        ; $706a: $79
	add  a                                           ; $706b: $87
	ld   [hl], a                                     ; $706c: $77
	halt                                             ; $706d: $76
	ld   [hl], a                                     ; $706e: $77
	ld   [hl], a                                     ; $706f: $77
	ld   [hl], a                                     ; $7070: $77
	adc  b                                           ; $7071: $88
	adc  c                                           ; $7072: $89
	sbc  b                                           ; $7073: $98
	sbc  b                                           ; $7074: $98
	adc  b                                           ; $7075: $88
	adc  b                                           ; $7076: $88
	adc  c                                           ; $7077: $89
	sbc  b                                           ; $7078: $98
	ld   a, b                                        ; $7079: $78
	add  a                                           ; $707a: $87
	adc  b                                           ; $707b: $88
	adc  b                                           ; $707c: $88
	ld   [hl], a                                     ; $707d: $77
	ld   a, c                                        ; $707e: $79
	adc  c                                           ; $707f: $89
	sbc  c                                           ; $7080: $99
	adc  b                                           ; $7081: $88
	sbc  c                                           ; $7082: $99
	sbc  c                                           ; $7083: $99
	sbc  c                                           ; $7084: $99
	adc  c                                           ; $7085: $89
	adc  b                                           ; $7086: $88
	adc  b                                           ; $7087: $88
	ld   [hl], a                                     ; $7088: $77
	ld   [hl], a                                     ; $7089: $77
	ld   h, a                                        ; $708a: $67
	ld   [hl], a                                     ; $708b: $77
	ld   h, a                                        ; $708c: $67
	add  a                                           ; $708d: $87
	ld   a, b                                        ; $708e: $78
	adc  b                                           ; $708f: $88
	adc  b                                           ; $7090: $88
	adc  b                                           ; $7091: $88
	sbc  b                                           ; $7092: $98
	sbc  d                                           ; $7093: $9a
	adc  b                                           ; $7094: $88
	adc  b                                           ; $7095: $88
	adc  b                                           ; $7096: $88
	ld   [hl], a                                     ; $7097: $77
	halt                                             ; $7098: $76
	ld   h, [hl]                                     ; $7099: $66
	halt                                             ; $709a: $76
	halt                                             ; $709b: $76
	ld   [hl], a                                     ; $709c: $77
	ld   [hl], a                                     ; $709d: $77
	adc  c                                           ; $709e: $89
	sbc  d                                           ; $709f: $9a
	xor  e                                           ; $70a0: $ab
	cp   e                                           ; $70a1: $bb
	xor  d                                           ; $70a2: $aa
	xor  c                                           ; $70a3: $a9
	xor  c                                           ; $70a4: $a9
	sub  [hl]                                        ; $70a5: $96
	ld   d, l                                        ; $70a6: $55
	ld   b, l                                        ; $70a7: $45
	ld   d, l                                        ; $70a8: $55
	ld   b, l                                        ; $70a9: $45
	ld   d, [hl]                                     ; $70aa: $56
	ld   [hl], a                                     ; $70ab: $77
	sbc  d                                           ; $70ac: $9a
	cp   e                                           ; $70ad: $bb
	db   $dd                                         ; $70ae: $dd
	db   $dd                                         ; $70af: $dd
	call c, $a7bb                                    ; $70b0: $dc $bb $a7
	ld   h, h                                        ; $70b3: $64
	inc  hl                                          ; $70b4: $23
	ld   b, e                                        ; $70b5: $43
	ld   [hl-], a                                    ; $70b6: $32
	inc  [hl]                                        ; $70b7: $34
	ld   d, [hl]                                     ; $70b8: $56
	ld   a, c                                        ; $70b9: $79
	cp   l                                           ; $70ba: $bd
	cp   $fe                                         ; $70bb: $fe $fe
	cp   $db                                         ; $70bd: $fe $db
	cp   d                                           ; $70bf: $ba
	ld   h, h                                        ; $70c0: $64
	ld   de, $1113                                   ; $70c1: $11 $13 $11
	ld   [de], a                                     ; $70c4: $12
	ld   d, l                                        ; $70c5: $55
	ld   h, a                                        ; $70c6: $67
	cp   l                                           ; $70c7: $bd
	rst  $38                                         ; $70c8: $ff
	rst  $38                                         ; $70c9: $ff
	rst  $38                                         ; $70ca: $ff
	db   $ed                                         ; $70cb: $ed
	jp   z, $2196                                    ; $70cc: $ca $96 $21

	ld   de, $1121                                   ; $70cf: $11 $21 $11
	dec  h                                           ; $70d2: $25
	ld   h, a                                        ; $70d3: $67
	adc  h                                           ; $70d4: $8c
	rst  $38                                         ; $70d5: $ff
	rst  $38                                         ; $70d6: $ff
	rst  $38                                         ; $70d7: $ff
	cp   $db                                         ; $70d8: $fe $db
	sbc  c                                           ; $70da: $99
	ld   b, c                                        ; $70db: $41
	ld   de, $1111                                   ; $70dc: $11 $11 $11
	ld   [de], a                                     ; $70df: $12
	ld   h, a                                        ; $70e0: $67
	ld   a, c                                        ; $70e1: $79
	rst  JumpTable                                         ; $70e2: $df
	rst  $38                                         ; $70e3: $ff
	rst  $38                                         ; $70e4: $ff
	rst  $38                                         ; $70e5: $ff
	db   $ec                                         ; $70e6: $ec
	xor  c                                           ; $70e7: $a9
	ld   [hl], d                                     ; $70e8: $72
	ld   de, $1111                                   ; $70e9: $11 $11 $11
	ld   de, $8837                                   ; $70ec: $11 $37 $88
	cp   a                                           ; $70ef: $bf
	rst  $38                                         ; $70f0: $ff
	rst  $38                                         ; $70f1: $ff
	rst  $38                                         ; $70f2: $ff
	cp   $cb                                         ; $70f3: $fe $cb
	sub  [hl]                                        ; $70f5: $96
	ld   de, $1111                                   ; $70f6: $11 $11 $11
	ld   de, $8714                                   ; $70f9: $11 $14 $87
	ld   a, h                                        ; $70fc: $7c
	rst  $38                                         ; $70fd: $ff
	rst  $38                                         ; $70fe: $ff
	rst  $38                                         ; $70ff: $ff
	rst  $38                                         ; $7100: $ff
	call c, Call_0b6_61aa                            ; $7101: $dc $aa $61
	ld   de, $1111                                   ; $7104: $11 $11 $11
	ld   de, $7748                                   ; $7107: $11 $48 $77
	cp   a                                           ; $710a: $bf
	rst  $38                                         ; $710b: $ff
	rst  $38                                         ; $710c: $ff
	rst  $38                                         ; $710d: $ff
	cp   $db                                         ; $710e: $fe $db
	and  a                                           ; $7110: $a7
	ld   de, $1111                                   ; $7111: $11 $11 $11
	ld   de, $7713                                   ; $7114: $11 $13 $77
	ld   a, d                                        ; $7117: $7a
	rst  $38                                         ; $7118: $ff
	rst  $38                                         ; $7119: $ff
	rst  $38                                         ; $711a: $ff
	rst  $38                                         ; $711b: $ff
	cp   $cc                                         ; $711c: $fe $cc
	sub  e                                           ; $711e: $93
	ld   de, $1111                                   ; $711f: $11 $11 $11
	ld   de, $6614                                   ; $7122: $11 $14 $66
	ld   a, e                                        ; $7125: $7b
	rst  $38                                         ; $7126: $ff
	rst  $38                                         ; $7127: $ff
	rst  $38                                         ; $7128: $ff
	rst  $38                                         ; $7129: $ff
	cp   $cc                                         ; $712a: $fe $cc
	add  d                                           ; $712c: $82
	ld   de, $1111                                   ; $712d: $11 $11 $11
	ld   de, $5613                                   ; $7130: $11 $13 $56
	ld   a, e                                        ; $7133: $7b
	rst  $38                                         ; $7134: $ff
	rst  $38                                         ; $7135: $ff
	rst  $38                                         ; $7136: $ff
	rst  $38                                         ; $7137: $ff
	rst  $38                                         ; $7138: $ff
	db   $db                                         ; $7139: $db
	sub  h                                           ; $713a: $94
	ld   de, $1111                                   ; $713b: $11 $11 $11
	ld   de, $4511                                   ; $713e: $11 $11 $45
	ld   l, c                                        ; $7141: $69
	rst  $28                                         ; $7142: $ef
	rst  $38                                         ; $7143: $ff
	rst  $38                                         ; $7144: $ff
	rst  $38                                         ; $7145: $ff
	rst  $38                                         ; $7146: $ff
	db   $ec                                         ; $7147: $ec
	cp   b                                           ; $7148: $b8
	ld   b, c                                        ; $7149: $41
	ld   de, $1111                                   ; $714a: $11 $11 $11
	ld   de, $4514                                   ; $714d: $11 $14 $45
	adc  d                                           ; $7150: $8a
	rst  JumpTable                                         ; $7151: $df
	cp   $ff                                         ; $7152: $fe $ff
	rst  $38                                         ; $7154: $ff
	cp   $dd                                         ; $7155: $fe $dd
	cp   c                                           ; $7157: $b9
	ld   h, h                                        ; $7158: $64
	ld   sp, $1111                                   ; $7159: $31 $11 $11
	ld   de, $2422                                   ; $715c: $11 $22 $24
	ld   d, a                                        ; $715f: $57
	xor  h                                           ; $7160: $ac
	rst  JumpTable                                         ; $7161: $df
	rst  $38                                         ; $7162: $ff
	rst  $38                                         ; $7163: $ff
	rst  $38                                         ; $7164: $ff
	cp   $db                                         ; $7165: $fe $db
	and  a                                           ; $7167: $a7
	ld   d, d                                        ; $7168: $52
	ld   de, $1121                                   ; $7169: $11 $21 $11
	ld   de, $3411                                   ; $716c: $11 $11 $34
	ld   a, d                                        ; $716f: $7a
	cp   l                                           ; $7170: $bd
	rst  $38                                         ; $7171: $ff
	rst  $38                                         ; $7172: $ff
	rst  $38                                         ; $7173: $ff
	rst  $38                                         ; $7174: $ff
	cp   $c9                                         ; $7175: $fe $c9
	ld   h, h                                        ; $7177: $64
	ld   hl, $1111                                   ; $7178: $21 $11 $11
	ld   de, $1211                                   ; $717b: $11 $11 $12
	ld   c, b                                        ; $717e: $48
	xor  e                                           ; $717f: $ab
	rst  $28                                         ; $7180: $ef
	rst  $38                                         ; $7181: $ff
	rst  $38                                         ; $7182: $ff
	rst  $38                                         ; $7183: $ff
	rst  $38                                         ; $7184: $ff
	ei                                               ; $7185: $fb
	sub  a                                           ; $7186: $97
	ld   d, e                                        ; $7187: $53
	ld   de, $1111                                   ; $7188: $11 $11 $11
	ld   de, $2311                                   ; $718b: $11 $11 $23
	ld   l, d                                        ; $718e: $6a
	cp   l                                           ; $718f: $bd
	rst  $38                                         ; $7190: $ff
	rst  $38                                         ; $7191: $ff
	rst  $38                                         ; $7192: $ff
	rst  $38                                         ; $7193: $ff
	rst  $38                                         ; $7194: $ff
	jp   c, Jump_0b6_5387                            ; $7195: $da $87 $53

	ld   de, $1111                                   ; $7198: $11 $11 $11
	ld   de, $2411                                   ; $719b: $11 $11 $24
	ld   a, d                                        ; $719e: $7a
	xor  l                                           ; $719f: $ad
	xor  $ff                                         ; $71a0: $ee $ff
	rst  $38                                         ; $71a2: $ff
	rst  $38                                         ; $71a3: $ff
	rst  $38                                         ; $71a4: $ff
	db   $db                                         ; $71a5: $db
	and  a                                           ; $71a6: $a7
	ld   d, h                                        ; $71a7: $54
	ld   hl, $1111                                   ; $71a8: $21 $11 $11
	ld   de, $1311                                   ; $71ab: $11 $11 $13
	ld   l, c                                        ; $71ae: $69
	xor  h                                           ; $71af: $ac
	rst  $28                                         ; $71b0: $ef
	rst  $38                                         ; $71b1: $ff
	rst  $38                                         ; $71b2: $ff
	rst  $38                                         ; $71b3: $ff
	rst  $38                                         ; $71b4: $ff
	db   $eb                                         ; $71b5: $eb
	cp   c                                           ; $71b6: $b9
	ld   h, l                                        ; $71b7: $65
	ld   sp, $1111                                   ; $71b8: $31 $11 $11
	ld   de, $1111                                   ; $71bb: $11 $11 $11
	ld   b, a                                        ; $71be: $47
	sbc  e                                           ; $71bf: $9b
	sbc  $ff                                         ; $71c0: $de $ff
	rst  $38                                         ; $71c2: $ff
	rst  $38                                         ; $71c3: $ff
	rst  $38                                         ; $71c4: $ff
	cp   $b9                                         ; $71c5: $fe $b9
	add  [hl]                                        ; $71c7: $86
	ld   b, d                                        ; $71c8: $42
	ld   de, $1111                                   ; $71c9: $11 $11 $11
	ld   de, $2511                                   ; $71cc: $11 $11 $25
	ld   a, b                                        ; $71cf: $78
	cp   l                                           ; $71d0: $bd
	rst  $38                                         ; $71d1: $ff
	rst  $38                                         ; $71d2: $ff
	rst  $38                                         ; $71d3: $ff
	rst  $38                                         ; $71d4: $ff
	rst  $38                                         ; $71d5: $ff
	call c, Call_0b6_64a7                            ; $71d6: $dc $a7 $64
	ld   hl, $1111                                   ; $71d9: $21 $11 $11
	ld   de, $1211                                   ; $71dc: $11 $11 $12
	ld   d, a                                        ; $71df: $57
	sbc  h                                           ; $71e0: $9c
	sbc  $ff                                         ; $71e1: $de $ff
	rst  $38                                         ; $71e3: $ff
	rst  $38                                         ; $71e4: $ff
	rst  $38                                         ; $71e5: $ff
	db   $fd                                         ; $71e6: $fd
	cp   c                                           ; $71e7: $b9
	halt                                             ; $71e8: $76
	ld   b, d                                        ; $71e9: $42
	ld   de, $1111                                   ; $71ea: $11 $11 $11
	ld   de, $2511                                   ; $71ed: $11 $11 $25
	ld   a, c                                        ; $71f0: $79
	call $ffef                                       ; $71f1: $cd $ef $ff
	rst  $38                                         ; $71f4: $ff
	rst  $38                                         ; $71f5: $ff
	rst  $38                                         ; $71f6: $ff
	db   $db                                         ; $71f7: $db
	sub  a                                           ; $71f8: $97
	ld   h, h                                        ; $71f9: $64
	ld   hl, $1111                                   ; $71fa: $21 $11 $11
	ld   de, $1211                                   ; $71fd: $11 $11 $12
	ld   b, [hl]                                     ; $7200: $46
	adc  e                                           ; $7201: $8b
	sbc  $ff                                         ; $7202: $de $ff
	rst  $38                                         ; $7204: $ff
	rst  $38                                         ; $7205: $ff
	rst  $38                                         ; $7206: $ff
	cp   $ba                                         ; $7207: $fe $ba
	add  [hl]                                        ; $7209: $86
	ld   d, h                                        ; $720a: $54
	ld   hl, $1111                                   ; $720b: $21 $11 $11
	ld   de, $1311                                   ; $720e: $11 $11 $13
	ld   b, a                                        ; $7211: $47
	adc  e                                           ; $7212: $8b
	sbc  $ff                                         ; $7213: $de $ff
	rst  $38                                         ; $7215: $ff
	rst  $38                                         ; $7216: $ff
	rst  $38                                         ; $7217: $ff
	db   $ed                                         ; $7218: $ed
	cp   d                                           ; $7219: $ba
	add  a                                           ; $721a: $87
	ld   d, h                                        ; $721b: $54
	ld   hl, $1111                                   ; $721c: $21 $11 $11
	ld   de, $1311                                   ; $721f: $11 $11 $13
	ld   b, [hl]                                     ; $7222: $46
	adc  d                                           ; $7223: $8a
	rst  JumpTable                                         ; $7224: $df
	rst  $38                                         ; $7225: $ff
	rst  $38                                         ; $7226: $ff
	rst  $38                                         ; $7227: $ff
	rst  $38                                         ; $7228: $ff
	db   $ed                                         ; $7229: $ed
	cp   d                                           ; $722a: $ba
	sub  a                                           ; $722b: $97
	ld   d, h                                        ; $722c: $54
	ld   sp, $1111                                   ; $722d: $31 $11 $11
	ld   de, $1311                                   ; $7230: $11 $11 $13
	ld   b, [hl]                                     ; $7233: $46
	sbc  d                                           ; $7234: $9a
	adc  $ff                                         ; $7235: $ce $ff
	rst  $38                                         ; $7237: $ff
	rst  $38                                         ; $7238: $ff
	rst  $38                                         ; $7239: $ff
	xor  $ca                                         ; $723a: $ee $ca
	xor  b                                           ; $723c: $a8
	ld   h, l                                        ; $723d: $65
	ld   b, d                                        ; $723e: $42
	ld   de, $1111                                   ; $723f: $11 $11 $11
	ld   de, $3512                                   ; $7242: $11 $12 $35
	ld   a, c                                        ; $7245: $79
	cp   l                                           ; $7246: $bd
	sbc  $ff                                         ; $7247: $de $ff
	rst  $38                                         ; $7249: $ff
	rst  $38                                         ; $724a: $ff
	cp   $dc                                         ; $724b: $fe $dc
	cp   c                                           ; $724d: $b9
	halt                                             ; $724e: $76
	ld   d, h                                        ; $724f: $54
	ld   [hl-], a                                    ; $7250: $32
	ld   de, $1111                                   ; $7251: $11 $11 $11
	ld   de, $5724                                   ; $7254: $11 $24 $57
	adc  e                                           ; $7257: $8b
	adc  $ff                                         ; $7258: $ce $ff
	rst  $38                                         ; $725a: $ff
	rst  $38                                         ; $725b: $ff
	rst  $38                                         ; $725c: $ff
	db   $ed                                         ; $725d: $ed
	jp   z, Jump_0b6_6598                            ; $725e: $ca $98 $65

	ld   b, e                                        ; $7261: $43
	ld   hl, $1111                                   ; $7262: $21 $11 $11
	ld   de, $3512                                   ; $7265: $11 $12 $35
	ld   l, b                                        ; $7268: $68
	sbc  h                                           ; $7269: $9c
	sbc  $ef                                         ; $726a: $de $ef
	rst  $38                                         ; $726c: $ff
	rst  $38                                         ; $726d: $ff
	rst  $38                                         ; $726e: $ff
	call c, $86ba                                    ; $726f: $dc $ba $86
	ld   h, l                                        ; $7272: $65
	ld   [hl-], a                                    ; $7273: $32
	ld   de, $1111                                   ; $7274: $11 $11 $11
	ld   [de], a                                     ; $7277: $12
	inc  h                                           ; $7278: $24
	ld   d, [hl]                                     ; $7279: $56
	adc  d                                           ; $727a: $8a
	cp   [hl]                                        ; $727b: $be
	rst  $28                                         ; $727c: $ef
	rst  $38                                         ; $727d: $ff
	rst  $38                                         ; $727e: $ff
	cp   $ed                                         ; $727f: $fe $ed
	cp   e                                           ; $7281: $bb
	xor  c                                           ; $7282: $a9
	ld   h, l                                        ; $7283: $65
	ld   b, e                                        ; $7284: $43
	ld   de, $1111                                   ; $7285: $11 $11 $11
	ld   de, $6823                                   ; $7288: $11 $23 $68
	sbc  d                                           ; $728b: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $728c: $cf
	rst  $38                                         ; $728d: $ff
	rst  $38                                         ; $728e: $ff
	rst  $38                                         ; $728f: $ff
	db   $fd                                         ; $7290: $fd
	jp   z, $7599                                    ; $7291: $ca $99 $75

	ld   [hl-], a                                    ; $7294: $32
	ld   de, $1111                                   ; $7295: $11 $11 $11
	ld   [de], a                                     ; $7298: $12
	inc  hl                                          ; $7299: $23
	ld   e, b                                        ; $729a: $58
	xor  e                                           ; $729b: $ab
	call $ffef                                       ; $729c: $cd $ef $ff
	rst  $38                                         ; $729f: $ff
	rst  $38                                         ; $72a0: $ff
	db   $fc                                         ; $72a1: $fc
	and  a                                           ; $72a2: $a7
	ld   d, l                                        ; $72a3: $55
	ld   b, d                                        ; $72a4: $42
	ld   de, $1111                                   ; $72a5: $11 $11 $11
	ld   de, $7836                                   ; $72a8: $11 $36 $78
	cp   [hl]                                        ; $72ab: $be
	rst  $28                                         ; $72ac: $ef
	rst  $38                                         ; $72ad: $ff
	rst  $38                                         ; $72ae: $ff
	rst  $38                                         ; $72af: $ff
	rst  $38                                         ; $72b0: $ff
	db   $ed                                         ; $72b1: $ed
	ret  z                                           ; $72b2: $c8

	ld   h, h                                        ; $72b3: $64
	ld   b, e                                        ; $72b4: $43
	ld   hl, $1111                                   ; $72b5: $21 $11 $11
	ld   de, $7915                                   ; $72b8: $11 $15 $79
	cp   l                                           ; $72bb: $bd
	rst  $38                                         ; $72bc: $ff
	rst  $38                                         ; $72bd: $ff
	rst  $38                                         ; $72be: $ff
	rst  $38                                         ; $72bf: $ff
	rst  $38                                         ; $72c0: $ff
	call c, $85ca                                    ; $72c1: $dc $ca $85
	ld   b, h                                        ; $72c4: $44
	inc  sp                                          ; $72c5: $33
	ld   de, $1111                                   ; $72c6: $11 $11 $11
	ld   [de], a                                     ; $72c9: $12
	ld   e, b                                        ; $72ca: $58
	cp   h                                           ; $72cb: $bc
	rst  $38                                         ; $72cc: $ff
	rst  $38                                         ; $72cd: $ff
	cp   $ef                                         ; $72ce: $fe $ef
	rst  $38                                         ; $72d0: $ff
	db   $eb                                         ; $72d1: $eb
	cp   e                                           ; $72d2: $bb
	sub  a                                           ; $72d3: $97
	ld   h, h                                        ; $72d4: $64
	ld   b, e                                        ; $72d5: $43
	ld   sp, $1111                                   ; $72d6: $31 $11 $11
	ld   de, $ac57                                   ; $72d9: $11 $57 $ac
	rst  $38                                         ; $72dc: $ff
	rst  $38                                         ; $72dd: $ff
	db   $fd                                         ; $72de: $fd
	sbc  $ff                                         ; $72df: $de $ff
	db   $ec                                         ; $72e1: $ec
	xor  e                                           ; $72e2: $ab
	sub  a                                           ; $72e3: $97
	ld   h, h                                        ; $72e4: $64
	ld   b, h                                        ; $72e5: $44
	ld   [hl-], a                                    ; $72e6: $32
	ld   de, $1111                                   ; $72e7: $11 $11 $11

jr_0b6_72ea:
	ld   d, a                                        ; $72ea: $57
	xor  h                                           ; $72eb: $ac
	rst  $38                                         ; $72ec: $ff
	rst  $38                                         ; $72ed: $ff
	db   $fd                                         ; $72ee: $fd
	adc  $fe                                         ; $72ef: $ce $fe
	ld   [$a8ab], a                                  ; $72f1: $ea $ab $a8
	ld   h, h                                        ; $72f4: $64
	ld   b, h                                        ; $72f5: $44
	ld   b, d                                        ; $72f6: $42
	ld   de, $1111                                   ; $72f7: $11 $11 $11
	ld   l, b                                        ; $72fa: $68
	xor  l                                           ; $72fb: $ad
	rst  $38                                         ; $72fc: $ff
	rst  $38                                         ; $72fd: $ff
	db   $fc                                         ; $72fe: $fc
	cp   h                                           ; $72ff: $bc
	xor  $eb                                         ; $7300: $ee $eb
	xor  d                                           ; $7302: $aa
	xor  b                                           ; $7303: $a8
	ld   [hl], l                                     ; $7304: $75
	ld   b, h                                        ; $7305: $44
	ld   b, e                                        ; $7306: $43
	ld   de, $1111                                   ; $7307: $11 $11 $11
	ld   e, b                                        ; $730a: $58
	xor  h                                           ; $730b: $ac
	rst  $38                                         ; $730c: $ff
	rst  $38                                         ; $730d: $ff
	ei                                               ; $730e: $fb
	cp   h                                           ; $730f: $bc
	xor  $db                                         ; $7310: $ee $db
	sbc  e                                           ; $7312: $9b
	cp   c                                           ; $7313: $b9
	add  l                                           ; $7314: $85
	ld   b, l                                        ; $7315: $45
	ld   d, h                                        ; $7316: $54
	ld   de, $1111                                   ; $7317: $11 $11 $11
	ld   b, a                                        ; $731a: $47
	xor  l                                           ; $731b: $ad
	rst  $38                                         ; $731c: $ff
	rst  $38                                         ; $731d: $ff
	ei                                               ; $731e: $fb
	adc  e                                           ; $731f: $8b
	rst  $28                                         ; $7320: $ef
	db   $ec                                         ; $7321: $ec
	xor  e                                           ; $7322: $ab
	cp   c                                           ; $7323: $b9
	sub  [hl]                                        ; $7324: $96
	ld   d, h                                        ; $7325: $54
	ld   b, h                                        ; $7326: $44
	ld   hl, $1111                                   ; $7327: $21 $11 $11
	scf                                              ; $732a: $37

jr_0b6_732b:
	cp   [hl]                                        ; $732b: $be
	rst  $38                                         ; $732c: $ff
	rst  $38                                         ; $732d: $ff
	ei                                               ; $732e: $fb
	adc  c                                           ; $732f: $89
	call $abfc                                       ; $7330: $cd $fc $ab
	xor  d                                           ; $7333: $aa
	sub  a                                           ; $7334: $97
	ld   h, l                                        ; $7335: $65
	ld   b, h                                        ; $7336: $44
	ld   sp, $1111                                   ; $7337: $31 $11 $11
	jr   c, jr_0b6_72ea                              ; $733a: $38 $ae

	rst  $28                                         ; $733c: $ef
	rst  $38                                         ; $733d: $ff
	db   $fc                                         ; $733e: $fc
	ld   h, a                                        ; $733f: $67
	xor  h                                           ; $7340: $ac
	db   $fd                                         ; $7341: $fd
	cp   c                                           ; $7342: $b9
	cp   e                                           ; $7343: $bb
	cp   c                                           ; $7344: $b9
	ld   h, l                                        ; $7345: $65
	inc  sp                                          ; $7346: $33
	ld   sp, $1111                                   ; $7347: $31 $11 $11
	jr   jr_0b6_732b                                 ; $734a: $18 $df

	rst  $38                                         ; $734c: $ff
	rst  $38                                         ; $734d: $ff
	db   $fd                                         ; $734e: $fd
	halt                                             ; $734f: $76
	adc  d                                           ; $7350: $8a
	xor  $ca                                         ; $7351: $ee $ca
	xor  e                                           ; $7353: $ab
	cp   e                                           ; $7354: $bb
	add  l                                           ; $7355: $85
	inc  sp                                          ; $7356: $33
	ld   sp, $1111                                   ; $7357: $31 $11 $11
	ld   d, $cf                                      ; $735a: $16 $cf
	rst  $38                                         ; $735c: $ff
	rst  $38                                         ; $735d: $ff
	cp   $86                                         ; $735e: $fe $86
	ld   l, c                                        ; $7360: $69
	rst  $28                                         ; $7361: $ef
	db   $db                                         ; $7362: $db
	xor  c                                           ; $7363: $a9
	xor  e                                           ; $7364: $ab
	add  a                                           ; $7365: $87
	ld   d, h                                        ; $7366: $54
	ld   sp, $1111                                   ; $7367: $31 $11 $11
	inc  d                                           ; $736a: $14
	xor  a                                           ; $736b: $af
	rst  $38                                         ; $736c: $ff
	rst  $38                                         ; $736d: $ff
	rst  $38                                         ; $736e: $ff
	and  [hl]                                        ; $736f: $a6
	ld   h, a                                        ; $7370: $67
	adc  $fd                                         ; $7371: $ce $fd
	xor  d                                           ; $7373: $aa
	sbc  c                                           ; $7374: $99
	sbc  b                                           ; $7375: $98
	ld   [hl], e                                     ; $7376: $73
	ld   hl, $1111                                   ; $7377: $21 $11 $11
	ld   [de], a                                     ; $737a: $12
	cp   a                                           ; $737b: $bf
	rst  $38                                         ; $737c: $ff
	rst  $38                                         ; $737d: $ff
	cp   $b7                                         ; $737e: $fe $b7
	ld   h, [hl]                                     ; $7380: $66
	xor  [hl]                                        ; $7381: $ae
	db   $fd                                         ; $7382: $fd
	xor  b                                           ; $7383: $a8
	ld   a, c                                        ; $7384: $79
	cp   c                                           ; $7385: $b9
	add  e                                           ; $7386: $83
	ld   de, $1111                                   ; $7387: $11 $11 $11
	ld   de, $ff9e                                   ; $738a: $11 $9e $ff
	rst  $38                                         ; $738d: $ff
	db   $fc                                         ; $738e: $fc
	or   a                                           ; $738f: $b7
	ld   h, [hl]                                     ; $7390: $66
	sbc  h                                           ; $7391: $9c
	xor  $cc                                         ; $7392: $ee $cc
	adc  c                                           ; $7394: $89
	sbc  c                                           ; $7395: $99
	sub  l                                           ; $7396: $95
	ld   sp, $1111                                   ; $7397: $31 $11 $11
	ld   de, $ff7e                                   ; $739a: $11 $7e $ff
	rst  $38                                         ; $739d: $ff
	db   $eb                                         ; $739e: $eb
	cp   b                                           ; $739f: $b8
	ld   h, [hl]                                     ; $73a0: $66
	sbc  e                                           ; $73a1: $9b
	rst  $28                                         ; $73a2: $ef
	jp   c, $9a98                                    ; $73a3: $da $98 $9a

	and  [hl]                                        ; $73a6: $a6
	ld   sp, $1111                                   ; $73a7: $31 $11 $11
	ld   de, $ff6c                                   ; $73aa: $11 $6c $ff
	rst  $38                                         ; $73ad: $ff
	ei                                               ; $73ae: $fb
	reti                                             ; $73af: $d9


	ld   d, [hl]                                     ; $73b0: $56
	ld   l, d                                        ; $73b1: $6a
	rst  JumpTable                                         ; $73b2: $df
	jp   c, $8ba7                                    ; $73b3: $da $a7 $8b

	adc  b                                           ; $73b6: $88
	ld   b, c                                        ; $73b7: $41
	ld   de, $1111                                   ; $73b8: $11 $11 $11
	inc  a                                           ; $73bb: $3c
	rst  $38                                         ; $73bc: $ff
	rst  $38                                         ; $73bd: $ff
	ei                                               ; $73be: $fb
	xor  b                                           ; $73bf: $a8
	ld   d, l                                        ; $73c0: $55
	ld   a, c                                        ; $73c1: $79
	rst  JumpTable                                         ; $73c2: $df
	db   $ed                                         ; $73c3: $ed
	ret                                              ; $73c4: $c9


	sbc  c                                           ; $73c5: $99
	ld   a, b                                        ; $73c6: $78
	ld   d, d                                        ; $73c7: $52
	ld   de, $1111                                   ; $73c8: $11 $11 $11
	inc  e                                           ; $73cb: $1c
	rst  $38                                         ; $73cc: $ff
	rst  $38                                         ; $73cd: $ff
	ei                                               ; $73ce: $fb
	cp   b                                           ; $73cf: $b8
	ld   d, [hl]                                     ; $73d0: $56
	ld   l, c                                        ; $73d1: $69
	xor  $ee                                         ; $73d2: $ee $ee
	xor  c                                           ; $73d4: $a9
	sbc  b                                           ; $73d5: $98
	sbc  c                                           ; $73d6: $99
	ld   h, e                                        ; $73d7: $63
	ld   de, $1111                                   ; $73d8: $11 $11 $11
	ld   a, [hl+]                                    ; $73db: $2a
	rst  $38                                         ; $73dc: $ff
	rst  $38                                         ; $73dd: $ff
	db   $fc                                         ; $73de: $fc
	and  a                                           ; $73df: $a7
	scf                                              ; $73e0: $37
	ld   l, c                                        ; $73e1: $69
	rst  JumpTable                                         ; $73e2: $df
	db   $fc                                         ; $73e3: $fc
	jp   z, Jump_0b6_6799                            ; $73e4: $ca $99 $67

	ld   h, d                                        ; $73e7: $62
	ld   de, $1111                                   ; $73e8: $11 $11 $11
	add  hl, de                                      ; $73eb: $19
	rst  $38                                         ; $73ec: $ff
	rst  $38                                         ; $73ed: $ff
	rst  $38                                         ; $73ee: $ff
	and  a                                           ; $73ef: $a7
	ld   b, h                                        ; $73f0: $44
	ld   l, d                                        ; $73f1: $6a
	rst  JumpTable                                         ; $73f2: $df
	db   $fc                                         ; $73f3: $fc
	res  1, c                                        ; $73f4: $cb $89
	add  a                                           ; $73f6: $87
	ld   h, e                                        ; $73f7: $63
	ld   de, $1111                                   ; $73f8: $11 $11 $11
	ld   a, [hl+]                                    ; $73fb: $2a
	rst  $38                                         ; $73fc: $ff
	rst  $38                                         ; $73fd: $ff
	db   $fc                                         ; $73fe: $fc
	cp   b                                           ; $73ff: $b8
	ld   b, h                                        ; $7400: $44
	ld   e, d                                        ; $7401: $5a
	rst  JumpTable                                         ; $7402: $df
	db   $fd                                         ; $7403: $fd
	ret                                              ; $7404: $c9


	sbc  c                                           ; $7405: $99
	sbc  c                                           ; $7406: $99
	ld   d, d                                        ; $7407: $52
	ld   de, $1111                                   ; $7408: $11 $11 $11
	ld   a, [hl+]                                    ; $740b: $2a
	rst  $38                                         ; $740c: $ff
	rst  $38                                         ; $740d: $ff
	ld   sp, hl                                      ; $740e: $f9
	sub  a                                           ; $740f: $97
	scf                                              ; $7410: $37
	sbc  d                                           ; $7411: $9a
	db   $dd                                         ; $7412: $dd
	call c, $9ada                                    ; $7413: $dc $da $9a
	ld   [hl], a                                     ; $7416: $77
	ld   d, d                                        ; $7417: $52
	ld   de, $1111                                   ; $7418: $11 $11 $11
	ld   l, [hl]                                     ; $741b: $6e
	rst  $38                                         ; $741c: $ff
	rst  $38                                         ; $741d: $ff
	ld   sp, hl                                      ; $741e: $f9
	or   a                                           ; $741f: $b7
	ld   b, l                                        ; $7420: $45
	ld   l, b                                        ; $7421: $68
	rst  $28                                         ; $7422: $ef
	rst  $28                                         ; $7423: $ef
	cp   c                                           ; $7424: $b9
	sbc  c                                           ; $7425: $99
	adc  c                                           ; $7426: $89
	ld   h, d                                        ; $7427: $62
	ld   de, $1111                                   ; $7428: $11 $11 $11
	xor  a                                           ; $742b: $af
	rst  $38                                         ; $742c: $ff
	rst  $38                                         ; $742d: $ff
	db   $db                                         ; $742e: $db
	and  [hl]                                        ; $742f: $a6
	ld   d, e                                        ; $7430: $53
	ld   a, d                                        ; $7431: $7a
	rst  $28                                         ; $7432: $ef
	db   $ed                                         ; $7433: $ed
	xor  b                                           ; $7434: $a8
	sbc  c                                           ; $7435: $99
	xor  b                                           ; $7436: $a8
	ld   b, c                                        ; $7437: $41
	ld   de, $1211                                   ; $7438: $11 $11 $12
	cp   a                                           ; $743b: $bf
	rst  $38                                         ; $743c: $ff
	rst  $38                                         ; $743d: $ff
	cp   d                                           ; $743e: $ba
	ld   h, e                                        ; $743f: $63
	ld   d, l                                        ; $7440: $55
	xor  l                                           ; $7441: $ad
	cp   $bb                                         ; $7442: $fe $bb
	sbc  c                                           ; $7444: $99
	xor  b                                           ; $7445: $a8
	and  a                                           ; $7446: $a7
	ld   sp, $1111                                   ; $7447: $31 $11 $11
	rla                                              ; $744a: $17
	rst  $28                                         ; $744b: $ef
	rst  $38                                         ; $744c: $ff
	rst  $38                                         ; $744d: $ff
	sbc  c                                           ; $744e: $99
	ld   b, h                                        ; $744f: $44
	ld   h, a                                        ; $7450: $67
	cp   h                                           ; $7451: $bc
	cp   $dc                                         ; $7452: $fe $dc
	adc  c                                           ; $7454: $89
	sub  a                                           ; $7455: $97
	and  a                                           ; $7456: $a7
	ld   hl, $1111                                   ; $7457: $21 $11 $11
	ld   c, e                                        ; $745a: $4b
	rst  $38                                         ; $745b: $ff
	rst  $38                                         ; $745c: $ff
	db   $fc                                         ; $745d: $fc
	or   [hl]                                        ; $745e: $b6
	ld   b, l                                        ; $745f: $45
	ld   e, c                                        ; $7460: $59
	rst  $28                                         ; $7461: $ef
	db   $dd                                         ; $7462: $dd
	xor  b                                           ; $7463: $a8
	xor  d                                           ; $7464: $aa
	xor  d                                           ; $7465: $aa
	ld   [hl], e                                     ; $7466: $73
	ld   de, $1111                                   ; $7467: $11 $11 $11
	adc  a                                           ; $746a: $8f
	rst  $38                                         ; $746b: $ff
	rst  $38                                         ; $746c: $ff
	jp   z, $5773                                    ; $746d: $ca $73 $57

	xor  l                                           ; $7470: $ad
	db   $ed                                         ; $7471: $ed
	xor  e                                           ; $7472: $ab
	sbc  c                                           ; $7473: $99
	sbc  d                                           ; $7474: $9a
	sbc  c                                           ; $7475: $99
	ld   b, c                                        ; $7476: $41
	ld   de, $1911                                   ; $7477: $11 $11 $19
	rst  $38                                         ; $747a: $ff
	rst  $38                                         ; $747b: $ff
	ld   a, [$5988]                                  ; $747c: $fa $88 $59
	adc  c                                           ; $747f: $89
	cp   d                                           ; $7480: $ba
	jp   z, $abbb                                    ; $7481: $ca $bb $ab

	sbc  b                                           ; $7484: $98
	ld   [hl], h                                     ; $7485: $74
	ld   de, $1111                                   ; $7486: $11 $11 $11
	ld   l, a                                        ; $7489: $6f
	rst  $38                                         ; $748a: $ff
	rst  $38                                         ; $748b: $ff
	jp   c, Jump_0b6_77a5                            ; $748c: $da $a5 $77

	adc  h                                           ; $748f: $8c
	call z, $97ca                                    ; $7490: $cc $ca $97
	adc  c                                           ; $7493: $89
	sbc  e                                           ; $7494: $9b
	ld   h, c                                        ; $7495: $61
	ld   de, $1811                                   ; $7496: $11 $11 $18
	rst  $38                                         ; $7499: $ff
	rst  $38                                         ; $749a: $ff
	ld   hl, sp-$67                                  ; $749b: $f8 $99
	ld   l, c                                        ; $749d: $69
	sbc  c                                           ; $749e: $99
	cp   l                                           ; $749f: $bd
	call z, Call_0b6_76b7                            ; $74a0: $cc $b7 $76
	ld   a, d                                        ; $74a3: $7a
	sub  a                                           ; $74a4: $97
	ld   de, $1111                                   ; $74a5: $11 $11 $11
	cp   a                                           ; $74a8: $bf
	rst  $38                                         ; $74a9: $ff
	db   $fd                                         ; $74aa: $fd
	halt                                             ; $74ab: $76
	ld   e, c                                        ; $74ac: $59
	xor  l                                           ; $74ad: $ad
	db   $dd                                         ; $74ae: $dd
	rst  ToBoot                                         ; $74af: $c7
	add  [hl]                                        ; $74b0: $86
	ld   l, d                                        ; $74b1: $6a
	adc  c                                           ; $74b2: $89
	sub  l                                           ; $74b3: $95
	ld   hl, $1111                                   ; $74b4: $21 $11 $11
	ld   c, a                                        ; $74b7: $4f
	rst  $38                                         ; $74b8: $ff
	rst  $38                                         ; $74b9: $ff
	and  [hl]                                        ; $74ba: $a6
	inc  de                                          ; $74bb: $13
	cp   l                                           ; $74bc: $bd
	rst  $38                                         ; $74bd: $ff
	ret                                              ; $74be: $c9


	ld   d, h                                        ; $74bf: $54
	ld   d, [hl]                                     ; $74c0: $56
	sbc  d                                           ; $74c1: $9a
	cp   c                                           ; $74c2: $b9
	ld   sp, $1111                                   ; $74c3: $31 $11 $11
	ld   c, l                                        ; $74c6: $4d
	rst  $38                                         ; $74c7: $ff
	rst  $38                                         ; $74c8: $ff
	sub  $64                                         ; $74c9: $d6 $64
	ld   a, h                                        ; $74cb: $7c
	rst  JumpTable                                         ; $74cc: $df
	ld   a, [$4575]                                  ; $74cd: $fa $75 $45
	ld   a, c                                        ; $74d0: $79
	add  a                                           ; $74d1: $87
	ld   b, c                                        ; $74d2: $41
	ld   de, $3c11                                   ; $74d3: $11 $11 $3c
	rst  $38                                         ; $74d6: $ff
	rst  $38                                         ; $74d7: $ff
	jp   z, $8b52                                    ; $74d8: $ca $52 $8b

	rst  $38                                         ; $74db: $ff
	jp   hl                                          ; $74dc: $e9


	ld   [hl], a                                     ; $74dd: $77
	ld   [hl], $76                                   ; $74de: $36 $76
	add  [hl]                                        ; $74e0: $86
	ld   sp, $1111                                   ; $74e1: $31 $11 $11
	dec  a                                           ; $74e4: $3d
	rst  $38                                         ; $74e5: $ff
	rst  $38                                         ; $74e6: $ff
	sbc  c                                           ; $74e7: $99
	ld   d, h                                        ; $74e8: $54
	adc  h                                           ; $74e9: $8c
	rst  $38                                         ; $74ea: $ff
	ld   a, [$1475]                                  ; $74eb: $fa $75 $14
	ld   d, a                                        ; $74ee: $57
	sub  l                                           ; $74ef: $95
	ld   hl, $1111                                   ; $74f0: $21 $11 $11
	ld   a, a                                        ; $74f3: $7f
	rst  $38                                         ; $74f4: $ff
	rst  $38                                         ; $74f5: $ff
	sbc  c                                           ; $74f6: $99
	ld   b, h                                        ; $74f7: $44
	adc  e                                           ; $74f8: $8b
	rst  $38                                         ; $74f9: $ff
	ei                                               ; $74fa: $fb
	ld   h, e                                        ; $74fb: $63
	ld   [de], a                                     ; $74fc: $12
	ld   l, b                                        ; $74fd: $68
	add  $11                                         ; $74fe: $c6 $11
	ld   de, $ef13                                   ; $7500: $11 $13 $ef
	rst  $38                                         ; $7503: $ff
	ei                                               ; $7504: $fb
	or   a                                           ; $7505: $b7
	jr   c, @-$50                                    ; $7506: $38 $ae

	rst  $38                                         ; $7508: $ff
	cp   b                                           ; $7509: $b8
	ld   b, c                                        ; $750a: $41
	inc  sp                                          ; $750b: $33
	ld   l, d                                        ; $750c: $6a
	ld   h, h                                        ; $750d: $64
	ld   de, $1811                                   ; $750e: $11 $11 $18
	rst  $38                                         ; $7511: $ff
	rst  $38                                         ; $7512: $ff
	jp   c, $8b64                                    ; $7513: $da $64 $8b

	rst  $28                                         ; $7516: $ef
	db   $fc                                         ; $7517: $fc
	sub  l                                           ; $7518: $95
	inc  de                                          ; $7519: $13
	dec  h                                           ; $751a: $25
	halt                                             ; $751b: $76
	ld   d, c                                        ; $751c: $51
	ld   de, $5f11                                   ; $751d: $11 $11 $5f
	rst  $38                                         ; $7520: $ff
	rst  $38                                         ; $7521: $ff
	add  [hl]                                        ; $7522: $86
	dec  h                                           ; $7523: $25
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7524: $cf
	rst  $38                                         ; $7525: $ff
	add  $31                                         ; $7526: $c6 $31
	dec  h                                           ; $7528: $25
	ld   l, c                                        ; $7529: $69
	ld   [hl], d                                     ; $752a: $72
	ld   de, $2911                                   ; $752b: $11 $11 $29
	rst  $38                                         ; $752e: $ff
	rst  $38                                         ; $752f: $ff
	jp   c, $8853                                    ; $7530: $da $53 $88

	rst  $38                                         ; $7533: $ff
	rst  $38                                         ; $7534: $ff
	add  e                                           ; $7535: $83
	ld   de, $9914                                   ; $7536: $11 $14 $99
	ld   d, c                                        ; $7539: $51
	ld   de, $ef14                                   ; $753a: $11 $14 $ef
	rst  $38                                         ; $753d: $ff
	ld   a, [$6974]                                  ; $753e: $fa $74 $69
	rst  JumpTable                                         ; $7541: $df
	rst  $38                                         ; $7542: $ff
	or   [hl]                                        ; $7543: $b6
	ld   b, c                                        ; $7544: $41
	ld   [de], a                                     ; $7545: $12
	ld   [hl], $21                                   ; $7546: $36 $21
	ld   de, $9f12                                   ; $7548: $11 $12 $9f
	rst  $38                                         ; $754b: $ff
	db   $fd                                         ; $754c: $fd
	sub  l                                           ; $754d: $95
	ld   e, b                                        ; $754e: $58
	cp   a                                           ; $754f: $bf
	rst  $38                                         ; $7550: $ff
	add  sp, $72                                     ; $7551: $e8 $72
	ld   de, $2211                                   ; $7553: $11 $11 $22
	ld   de, $4f13                                   ; $7556: $11 $13 $4f
	rst  $38                                         ; $7559: $ff
	rst  $38                                         ; $755a: $ff
	sub  l                                           ; $755b: $95
	ld   c, b                                        ; $755c: $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $755d: $cf
	rst  $38                                         ; $755e: $ff
	add  sp, $32                                     ; $755f: $e8 $32
	ld   bc, $1131                                   ; $7561: $01 $31 $11
	ld   de, $9f16                                   ; $7564: $11 $16 $9f
	rst  $38                                         ; $7567: $ff
	ld   sp, hl                                      ; $7568: $f9
	ld   e, d                                        ; $7569: $5a
	inc  l                                           ; $756a: $2c
	rst  $38                                         ; $756b: $ff
	rst  $38                                         ; $756c: $ff
	rst  $10                                         ; $756d: $d7
	add  d                                           ; $756e: $82
	ld   de, $2111                                   ; $756f: $11 $11 $21
	ld   hl, $8f45                                   ; $7572: $21 $45 $8f
	rst  $38                                         ; $7575: $ff
	ld   hl, sp+$61                                  ; $7576: $f8 $61
	ld   c, d                                        ; $7578: $4a
	rst  $38                                         ; $7579: $ff
	rst  $38                                         ; $757a: $ff
	ld   l, b                                        ; $757b: $68
	ld   de, $1121                                   ; $757c: $11 $21 $11
	ld   de, $9f12                                   ; $757f: $11 $12 $9f
	rst  $38                                         ; $7582: $ff
	db   $fc                                         ; $7583: $fc
	add  d                                           ; $7584: $82
	ld   c, e                                        ; $7585: $4b
	rst  JumpTable                                         ; $7586: $df
	cp   $d8                                         ; $7587: $fe $d8
	ld   d, l                                        ; $7589: $55
	ld   hl, $1111                                   ; $758a: $21 $11 $11
	ld   de, $ff67                                   ; $758d: $11 $67 $ff
	rst  $38                                         ; $7590: $ff
	call nz, $8e53                                   ; $7591: $c4 $53 $8e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7594: $cf
	db   $fd                                         ; $7595: $fd
	rst  $10                                         ; $7596: $d7
	ld   de, $4911                                   ; $7597: $11 $11 $49
	ld   h, h                                        ; $759a: $64
	ld   sp, $ff6a                                   ; $759b: $31 $6a $ff
	db   $fd                                         ; $759e: $fd
	ld   b, e                                        ; $759f: $43
	ld   a, d                                        ; $75a0: $7a
	rst  $38                                         ; $75a1: $ff
	cp   $a6                                         ; $75a2: $fe $a6
	ld   hl, $1111                                   ; $75a4: $21 $11 $11
	ld   b, d                                        ; $75a7: $42
	scf                                              ; $75a8: $37

Call_0b6_75a9:
	xor  a                                           ; $75a9: $af
	db   $fd                                         ; $75aa: $fd
	push hl                                          ; $75ab: $e5
	dec  sp                                          ; $75ac: $3b
	ld   c, h                                        ; $75ad: $4c
	db   $fc                                         ; $75ae: $fc
	db   $fd                                         ; $75af: $fd
	xor  h                                           ; $75b0: $ac
	or   c                                           ; $75b1: $b1
	ld   de, $5714                                   ; $75b2: $11 $14 $57
	halt                                             ; $75b5: $76
	ld   [hl], a                                     ; $75b6: $77
	cp   a                                           ; $75b7: $bf
	db   $fd                                         ; $75b8: $fd
	or   a                                           ; $75b9: $b7
	ld   l, c                                        ; $75ba: $69
	adc  c                                           ; $75bb: $89
	cp   $ff                                         ; $75bc: $fe $ff
	ld   h, c                                        ; $75be: $61
	ld   de, $8913                                   ; $75bf: $11 $13 $89
	ld   [hl], a                                     ; $75c2: $77
	adc  b                                           ; $75c3: $88
	db   $ed                                         ; $75c4: $ed
	sub  a                                           ; $75c5: $97
	ld   h, e                                        ; $75c6: $63
	sbc  a                                           ; $75c7: $9f
	rst  JumpTable                                         ; $75c8: $df
	or   $c2                                         ; $75c9: $f6 $c2
	ld   c, b                                        ; $75cb: $48
	ld   d, $43                                      ; $75cc: $16 $43
	ld   sp, $7926                                   ; $75ce: $31 $26 $79
	db   $fd                                         ; $75d1: $fd
	cp   [hl]                                        ; $75d2: $be
	ld   a, c                                        ; $75d3: $79
	xor  b                                           ; $75d4: $a8
	add  a                                           ; $75d5: $87
	cp   l                                           ; $75d6: $bd
	cp   $73                                         ; $75d7: $fe $73
	ld   de, $6e17                                   ; $75d9: $11 $17 $6e
	and  [hl]                                        ; $75dc: $a6
	ld   h, e                                        ; $75dd: $63
	ld   a, h                                        ; $75de: $7c
	db   $ec                                         ; $75df: $ec
	cp   b                                           ; $75e0: $b8
	ld   l, d                                        ; $75e1: $6a
	sbc  l                                           ; $75e2: $9d
	jp   c, $92c8                                    ; $75e3: $da $c8 $92

	inc  de                                          ; $75e6: $13
	daa                                              ; $75e7: $27
	sub  a                                           ; $75e8: $97
	adc  c                                           ; $75e9: $89
	add  hl, sp                                      ; $75ea: $39
	adc  c                                           ; $75eb: $89
	jp   nc, $9faa                                   ; $75ec: $d2 $aa $9f

	cp   d                                           ; $75ef: $ba
	or   [hl]                                        ; $75f0: $b6
	dec  sp                                          ; $75f1: $3b
	sub  h                                           ; $75f2: $94
	sub  c                                           ; $75f3: $91
	scf                                              ; $75f4: $37
	add  hl, de                                      ; $75f5: $19
	ld   l, d                                        ; $75f6: $6a
	sub  a                                           ; $75f7: $97
	sbc  b                                           ; $75f8: $98
	ret  c                                           ; $75f9: $d8

	xor  c                                           ; $75fa: $a9
	adc  [hl]                                        ; $75fb: $8e
	ld   a, d                                        ; $75fc: $7a
	cp   c                                           ; $75fd: $b9
	rst  ToBoot                                         ; $75fe: $c7
	ld   b, c                                        ; $75ff: $41
	inc  d                                           ; $7600: $14
	ld   a, l                                        ; $7601: $7d
	adc  c                                           ; $7602: $89
	ld   [hl], d                                     ; $7603: $72
	ld   a, d                                        ; $7604: $7a
	xor  h                                           ; $7605: $ac
	ld   [hl], a                                     ; $7606: $77
	sub  a                                           ; $7607: $97
	call Call_0b6_78ed                               ; $7608: $cd $ed $78
	ld   h, e                                        ; $760b: $63
	ld   d, h                                        ; $760c: $54
	ld   b, [hl]                                     ; $760d: $46
	xor  d                                           ; $760e: $aa
	sbc  d                                           ; $760f: $9a
	ld   h, $75                                      ; $7610: $26 $75
	ret  c                                           ; $7612: $d8

	sbc  d                                           ; $7613: $9a
	ld   a, d                                        ; $7614: $7a
	cp   d                                           ; $7615: $ba
	xor  l                                           ; $7616: $ad
	cp   c                                           ; $7617: $b9
	ld   d, d                                        ; $7618: $52
	ld   b, c                                        ; $7619: $41
	sub  a                                           ; $761a: $97
	ld   c, h                                        ; $761b: $4c
	ld   d, a                                        ; $761c: $57
	add  [hl]                                        ; $761d: $86
	ld   a, e                                        ; $761e: $7b
	sub  [hl]                                        ; $761f: $96
	jp   c, $9aac                                    ; $7620: $da $ac $9a

	cp   c                                           ; $7623: $b9
	ld   e, b                                        ; $7624: $58
	ld   d, [hl]                                     ; $7625: $56
	add  [hl]                                        ; $7626: $86
	sub  [hl]                                        ; $7627: $96
	ld   d, [hl]                                     ; $7628: $56
	sbc  d                                           ; $7629: $9a
	sub  [hl]                                        ; $762a: $96
	scf                                              ; $762b: $37
	ld   a, e                                        ; $762c: $7b
	rst  $20                                         ; $762d: $e7
	cp   b                                           ; $762e: $b8
	ld   a, d                                        ; $762f: $7a
	sbc  d                                           ; $7630: $9a
	ld   [hl], a                                     ; $7631: $77
	dec  d                                           ; $7632: $15
	sbc  b                                           ; $7633: $98
	ret                                              ; $7634: $c9


	ld   [hl], l                                     ; $7635: $75
	ld   h, [hl]                                     ; $7636: $66
	cp   b                                           ; $7637: $b8
	ld   l, e                                        ; $7638: $6b
	ld   d, a                                        ; $7639: $57
	ld   [hl], h                                     ; $763a: $74
	xor  e                                           ; $763b: $ab
	adc  e                                           ; $763c: $8b
	reti                                             ; $763d: $d9


	sub  a                                           ; $763e: $97
	ld   c, b                                        ; $763f: $48
	sub  a                                           ; $7640: $97
	xor  c                                           ; $7641: $a9
	ld   d, l                                        ; $7642: $55
	ld   d, d                                        ; $7643: $52
	adc  d                                           ; $7644: $8a
	sbc  l                                           ; $7645: $9d
	sub  a                                           ; $7646: $97
	add  a                                           ; $7647: $87
	ld   a, h                                        ; $7648: $7c
	sub  l                                           ; $7649: $95
	ld   [hl], e                                     ; $764a: $73
	ld   c, d                                        ; $764b: $4a
	xor  h                                           ; $764c: $ac
	ret  z                                           ; $764d: $c8

	ld   d, [hl]                                     ; $764e: $56
	ld   c, d                                        ; $764f: $4a
	db   $db                                         ; $7650: $db
	sub  d                                           ; $7651: $92
	ld   b, l                                        ; $7652: $45
	adc  d                                           ; $7653: $8a
	adc  c                                           ; $7654: $89
	ld   e, c                                        ; $7655: $59
	adc  b                                           ; $7656: $88
	rst  $20                                         ; $7657: $e7
	ld   [hl], a                                     ; $7658: $77
	ld   c, b                                        ; $7659: $48
	ld   a, d                                        ; $765a: $7a
	adc  d                                           ; $765b: $8a
	sbc  b                                           ; $765c: $98
	ld   [hl], d                                     ; $765d: $72
	ld   h, a                                        ; $765e: $67
	ld   a, l                                        ; $765f: $7d
	ld   h, l                                        ; $7660: $65
	sub  [hl]                                        ; $7661: $96
	xor  h                                           ; $7662: $ac
	ld   a, d                                        ; $7663: $7a
	halt                                             ; $7664: $76
	sbc  d                                           ; $7665: $9a
	cp   c                                           ; $7666: $b9
	halt                                             ; $7667: $76
	add  a                                           ; $7668: $87
	ld   d, [hl]                                     ; $7669: $56
	ld   l, d                                        ; $766a: $6a
	adc  b                                           ; $766b: $88
	ld   [hl], a                                     ; $766c: $77
	sub  a                                           ; $766d: $97
	xor  e                                           ; $766e: $ab
	sub  [hl]                                        ; $766f: $96
	adc  b                                           ; $7670: $88
	ld   l, e                                        ; $7671: $6b
	add  h                                           ; $7672: $84
	add  l                                           ; $7673: $85
	ld   a, l                                        ; $7674: $7d
	cp   c                                           ; $7675: $b9
	add  h                                           ; $7676: $84
	ld   c, c                                        ; $7677: $49
	adc  d                                           ; $7678: $8a
	sub  [hl]                                        ; $7679: $96
	ld   h, a                                        ; $767a: $67
	sbc  b                                           ; $767b: $98
	ld   [hl], a                                     ; $767c: $77
	sbc  c                                           ; $767d: $99
	ld   a, b                                        ; $767e: $78
	adc  b                                           ; $767f: $88
	sbc  b                                           ; $7680: $98
	ld   l, c                                        ; $7681: $69
	ld   b, l                                        ; $7682: $45
	reti                                             ; $7683: $d9


	jp   c, $4836                                    ; $7684: $da $36 $48

Call_0b6_7687:
	call z, Call_0b6_66a6                            ; $7687: $cc $a6 $66
	sbc  d                                           ; $768a: $9a
	adc  c                                           ; $768b: $89
	ld   h, a                                        ; $768c: $67
	add  a                                           ; $768d: $87
	adc  c                                           ; $768e: $89
	add  a                                           ; $768f: $87
	sub  [hl]                                        ; $7690: $96
	adc  c                                           ; $7691: $89
	adc  c                                           ; $7692: $89
	add  [hl]                                        ; $7693: $86
	ld   a, b                                        ; $7694: $78
	ld   a, c                                        ; $7695: $79
	sbc  b                                           ; $7696: $98
	xor  c                                           ; $7697: $a9

Call_0b6_7698:
	sub  a                                           ; $7698: $97
	adc  e                                           ; $7699: $8b
	adc  e                                           ; $769a: $8b
	ld   d, l                                        ; $769b: $55
	ld   [hl], l                                     ; $769c: $75
	xor  d                                           ; $769d: $aa
	sub  a                                           ; $769e: $97
	ld   d, a                                        ; $769f: $57
	adc  e                                           ; $76a0: $8b
	xor  b                                           ; $76a1: $a8
	ld   [hl], l                                     ; $76a2: $75
	ld   d, a                                        ; $76a3: $57
	xor  e                                           ; $76a4: $ab
	and  [hl]                                        ; $76a5: $a6
	halt                                             ; $76a6: $76
	ld   l, d                                        ; $76a7: $6a
	adc  d                                           ; $76a8: $8a
	xor  b                                           ; $76a9: $a8
	add  [hl]                                        ; $76aa: $86
	add  [hl]                                        ; $76ab: $86
	sub  a                                           ; $76ac: $97
	adc  c                                           ; $76ad: $89
	ld   l, d                                        ; $76ae: $6a
	adc  b                                           ; $76af: $88
	add  a                                           ; $76b0: $87
	halt                                             ; $76b1: $76
	ld   [hl], a                                     ; $76b2: $77
	adc  d                                           ; $76b3: $8a
	sbc  c                                           ; $76b4: $99
	ld   [hl], l                                     ; $76b5: $75
	ld   a, b                                        ; $76b6: $78

Call_0b6_76b7:
	xor  c                                           ; $76b7: $a9
	sub  a                                           ; $76b8: $97
	ld   l, b                                        ; $76b9: $68
	ld   l, d                                        ; $76ba: $6a
	cp   c                                           ; $76bb: $b9
	and  [hl]                                        ; $76bc: $a6
	ld   [hl], a                                     ; $76bd: $77
	ld   a, b                                        ; $76be: $78
	adc  d                                           ; $76bf: $8a
	adc  b                                           ; $76c0: $88
	sub  a                                           ; $76c1: $97
	sub  a                                           ; $76c2: $97
	adc  b                                           ; $76c3: $88
	ld   l, c                                        ; $76c4: $69
	ld   a, b                                        ; $76c5: $78
	add  [hl]                                        ; $76c6: $86
	halt                                             ; $76c7: $76
	xor  c                                           ; $76c8: $a9
	adc  c                                           ; $76c9: $89
	ld   e, c                                        ; $76ca: $59
	ld   a, b                                        ; $76cb: $78
	cp   c                                           ; $76cc: $b9
	xor  b                                           ; $76cd: $a8
	ld   [hl], a                                     ; $76ce: $77
	adc  c                                           ; $76cf: $89
	ld   a, d                                        ; $76d0: $7a
	ld   h, l                                        ; $76d1: $65
	ld   d, l                                        ; $76d2: $55
	xor  e                                           ; $76d3: $ab
	call z, $5797                                    ; $76d4: $cc $97 $57
	ld   a, c                                        ; $76d7: $79
	xor  c                                           ; $76d8: $a9
	sub  a                                           ; $76d9: $97
	ld   h, [hl]                                     ; $76da: $66
	ld   e, b                                        ; $76db: $58
	sbc  b                                           ; $76dc: $98
	xor  b                                           ; $76dd: $a8
	adc  b                                           ; $76de: $88
	ld   a, b                                        ; $76df: $78
	adc  b                                           ; $76e0: $88
	halt                                             ; $76e1: $76
	adc  c                                           ; $76e2: $89
	xor  d                                           ; $76e3: $aa
	ld   [hl], a                                     ; $76e4: $77
	ld   h, [hl]                                     ; $76e5: $66
	adc  c                                           ; $76e6: $89
	adc  c                                           ; $76e7: $89
	add  a                                           ; $76e8: $87
	and  a                                           ; $76e9: $a7
	ld   h, a                                        ; $76ea: $67
	ld   a, b                                        ; $76eb: $78
	xor  d                                           ; $76ec: $aa
	sbc  d                                           ; $76ed: $9a
	add  a                                           ; $76ee: $87
	halt                                             ; $76ef: $76
	ld   a, b                                        ; $76f0: $78
	adc  c                                           ; $76f1: $89
	xor  c                                           ; $76f2: $a9
	adc  b                                           ; $76f3: $88
	ld   h, [hl]                                     ; $76f4: $66
	ld   l, b                                        ; $76f5: $68
	sbc  d                                           ; $76f6: $9a
	add  a                                           ; $76f7: $87
	add  a                                           ; $76f8: $87
	ld   l, c                                        ; $76f9: $69
	adc  c                                           ; $76fa: $89
	sbc  c                                           ; $76fb: $99
	add  a                                           ; $76fc: $87
	add  a                                           ; $76fd: $87
	sbc  c                                           ; $76fe: $99
	adc  c                                           ; $76ff: $89
	adc  b                                           ; $7700: $88
	ld   h, a                                        ; $7701: $67
	adc  b                                           ; $7702: $88
	add  a                                           ; $7703: $87
	ld   a, b                                        ; $7704: $78
	sbc  c                                           ; $7705: $99
	sbc  c                                           ; $7706: $99
	sub  a                                           ; $7707: $97
	ld   [hl], a                                     ; $7708: $77
	adc  c                                           ; $7709: $89
	sbc  c                                           ; $770a: $99
	ld   [hl], a                                     ; $770b: $77
	halt                                             ; $770c: $76
	adc  c                                           ; $770d: $89
	adc  c                                           ; $770e: $89
	ld   [hl], a                                     ; $770f: $77
	adc  c                                           ; $7710: $89
	sbc  d                                           ; $7711: $9a
	sbc  b                                           ; $7712: $98
	ld   h, [hl]                                     ; $7713: $66
	ld   a, b                                        ; $7714: $78
	xor  d                                           ; $7715: $aa
	sub  a                                           ; $7716: $97
	ld   h, [hl]                                     ; $7717: $66
	adc  c                                           ; $7718: $89
	sbc  c                                           ; $7719: $99
	ld   [hl], a                                     ; $771a: $77
	sbc  c                                           ; $771b: $99
	sbc  c                                           ; $771c: $99
	adc  b                                           ; $771d: $88
	adc  c                                           ; $771e: $89
	sub  a                                           ; $771f: $97
	halt                                             ; $7720: $76
	ld   l, b                                        ; $7721: $68
	adc  b                                           ; $7722: $88
	adc  c                                           ; $7723: $89
	adc  b                                           ; $7724: $88
	adc  c                                           ; $7725: $89
	xor  b                                           ; $7726: $a8
	adc  b                                           ; $7727: $88
	ld   a, b                                        ; $7728: $78
	adc  c                                           ; $7729: $89
	add  a                                           ; $772a: $87
	ld   [hl], a                                     ; $772b: $77
	ld   a, b                                        ; $772c: $78
	add  a                                           ; $772d: $87
	add  a                                           ; $772e: $87
	adc  c                                           ; $772f: $89
	adc  d                                           ; $7730: $8a
	sbc  c                                           ; $7731: $99
	ld   [hl], a                                     ; $7732: $77
	adc  b                                           ; $7733: $88
	sbc  b                                           ; $7734: $98
	adc  b                                           ; $7735: $88
	ld   a, b                                        ; $7736: $78
	ld   a, b                                        ; $7737: $78
	sbc  c                                           ; $7738: $99
	ld   a, c                                        ; $7739: $79
	adc  b                                           ; $773a: $88
	sub  a                                           ; $773b: $97
	ld   a, b                                        ; $773c: $78
	adc  b                                           ; $773d: $88
	sbc  b                                           ; $773e: $98
	adc  c                                           ; $773f: $89
	ld   a, b                                        ; $7740: $78
	sub  a                                           ; $7741: $97
	ld   [hl], a                                     ; $7742: $77
	ld   a, b                                        ; $7743: $78
	adc  c                                           ; $7744: $89
	sbc  c                                           ; $7745: $99
	adc  b                                           ; $7746: $88
	ld   [hl], a                                     ; $7747: $77
	adc  b                                           ; $7748: $88
	sbc  c                                           ; $7749: $99
	add  a                                           ; $774a: $87
	ld   a, b                                        ; $774b: $78
	adc  b                                           ; $774c: $88
	sbc  b                                           ; $774d: $98
	ld   [hl], a                                     ; $774e: $77
	sbc  c                                           ; $774f: $99
	sbc  b                                           ; $7750: $98
	ld   a, b                                        ; $7751: $78
	sbc  c                                           ; $7752: $99
	sbc  c                                           ; $7753: $99
	ld   [hl], a                                     ; $7754: $77
	ld   [hl], a                                     ; $7755: $77
	adc  b                                           ; $7756: $88
	adc  b                                           ; $7757: $88
	adc  c                                           ; $7758: $89
	adc  c                                           ; $7759: $89
	adc  b                                           ; $775a: $88
	ld   [hl], a                                     ; $775b: $77
	adc  c                                           ; $775c: $89
	sbc  c                                           ; $775d: $99
	sbc  b                                           ; $775e: $98
	add  a                                           ; $775f: $87
	ld   [hl], a                                     ; $7760: $77
	adc  b                                           ; $7761: $88
	adc  b                                           ; $7762: $88
	adc  b                                           ; $7763: $88
	adc  b                                           ; $7764: $88
	add  a                                           ; $7765: $87
	ld   [hl], a                                     ; $7766: $77
	adc  c                                           ; $7767: $89
	sbc  c                                           ; $7768: $99
	adc  b                                           ; $7769: $88
	ld   [hl], a                                     ; $776a: $77
	adc  c                                           ; $776b: $89
	sbc  b                                           ; $776c: $98
	adc  b                                           ; $776d: $88
	ld   a, b                                        ; $776e: $78
	adc  c                                           ; $776f: $89
	adc  b                                           ; $7770: $88
	adc  b                                           ; $7771: $88
	adc  b                                           ; $7772: $88
	sbc  b                                           ; $7773: $98
	add  a                                           ; $7774: $87
	ld   [hl], a                                     ; $7775: $77
	ld   a, b                                        ; $7776: $78

Jump_0b6_7777:
	adc  b                                           ; $7777: $88
	ld   [hl], a                                     ; $7778: $77
	ld   [hl], a                                     ; $7779: $77
	adc  b                                           ; $777a: $88
	adc  c                                           ; $777b: $89
	adc  c                                           ; $777c: $89
	adc  c                                           ; $777d: $89
	sbc  b                                           ; $777e: $98
	adc  b                                           ; $777f: $88
	adc  b                                           ; $7780: $88
	adc  b                                           ; $7781: $88
	adc  b                                           ; $7782: $88
	adc  b                                           ; $7783: $88
	adc  b                                           ; $7784: $88
	adc  b                                           ; $7785: $88
	adc  c                                           ; $7786: $89
	sbc  c                                           ; $7787: $99
	sbc  b                                           ; $7788: $98
	adc  b                                           ; $7789: $88
	adc  b                                           ; $778a: $88
	ld   [hl], a                                     ; $778b: $77
	adc  b                                           ; $778c: $88
	adc  b                                           ; $778d: $88
	adc  b                                           ; $778e: $88
	adc  b                                           ; $778f: $88
	adc  b                                           ; $7790: $88
	adc  b                                           ; $7791: $88
	adc  c                                           ; $7792: $89
	sbc  c                                           ; $7793: $99
	add  a                                           ; $7794: $87
	ld   a, b                                        ; $7795: $78
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

Jump_0b6_77a5:
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
	add  a                                           ; $7862: $87
	adc  b                                           ; $7863: $88
	adc  b                                           ; $7864: $88
	adc  b                                           ; $7865: $88
	adc  c                                           ; $7866: $89
	sbc  b                                           ; $7867: $98
	add  a                                           ; $7868: $87
	ld   a, b                                        ; $7869: $78
	adc  c                                           ; $786a: $89
	adc  b                                           ; $786b: $88
	adc  b                                           ; $786c: $88
	adc  b                                           ; $786d: $88
	add  a                                           ; $786e: $87
	ld   a, b                                        ; $786f: $78
	adc  c                                           ; $7870: $89
	adc  b                                           ; $7871: $88
	add  a                                           ; $7872: $87
	ld   a, b                                        ; $7873: $78
	adc  b                                           ; $7874: $88
	adc  b                                           ; $7875: $88
	adc  b                                           ; $7876: $88
	adc  b                                           ; $7877: $88
	adc  b                                           ; $7878: $88
	adc  b                                           ; $7879: $88
	adc  b                                           ; $787a: $88
	adc  b                                           ; $787b: $88
	adc  b                                           ; $787c: $88
	add  a                                           ; $787d: $87
	ld   a, b                                        ; $787e: $78
	adc  b                                           ; $787f: $88
	adc  b                                           ; $7880: $88
	adc  b                                           ; $7881: $88
	adc  b                                           ; $7882: $88
	adc  b                                           ; $7883: $88
	ld   [hl], a                                     ; $7884: $77
	adc  b                                           ; $7885: $88
	sbc  b                                           ; $7886: $98
	adc  b                                           ; $7887: $88
	adc  b                                           ; $7888: $88
	adc  b                                           ; $7889: $88
	adc  b                                           ; $788a: $88
	adc  b                                           ; $788b: $88
	adc  b                                           ; $788c: $88
	ld   [hl], a                                     ; $788d: $77
	adc  b                                           ; $788e: $88
	sbc  b                                           ; $788f: $98
	adc  b                                           ; $7890: $88
	adc  b                                           ; $7891: $88
	adc  b                                           ; $7892: $88
	ld   [hl], a                                     ; $7893: $77
	adc  c                                           ; $7894: $89
	adc  c                                           ; $7895: $89
	add  a                                           ; $7896: $87
	ld   [hl], a                                     ; $7897: $77
	adc  c                                           ; $7898: $89
	sbc  b                                           ; $7899: $98
	adc  b                                           ; $789a: $88
	sbc  b                                           ; $789b: $98
	sub  a                                           ; $789c: $97
	ld   [hl], a                                     ; $789d: $77
	adc  b                                           ; $789e: $88
	sbc  c                                           ; $789f: $99
	add  a                                           ; $78a0: $87
	ld   a, b                                        ; $78a1: $78
	adc  b                                           ; $78a2: $88
	ld   [hl], a                                     ; $78a3: $77
	adc  b                                           ; $78a4: $88
	sbc  b                                           ; $78a5: $98
	add  a                                           ; $78a6: $87
	ld   [hl], a                                     ; $78a7: $77
	sbc  c                                           ; $78a8: $99
	adc  b                                           ; $78a9: $88
	ld   a, b                                        ; $78aa: $78
	sbc  b                                           ; $78ab: $98
	adc  b                                           ; $78ac: $88
	adc  b                                           ; $78ad: $88
	adc  b                                           ; $78ae: $88
	adc  b                                           ; $78af: $88
	adc  c                                           ; $78b0: $89
	adc  b                                           ; $78b1: $88
	add  a                                           ; $78b2: $87
	ld   a, b                                        ; $78b3: $78
	adc  b                                           ; $78b4: $88
	add  a                                           ; $78b5: $87
	adc  b                                           ; $78b6: $88
	adc  b                                           ; $78b7: $88
	adc  b                                           ; $78b8: $88
	ld   a, b                                        ; $78b9: $78
	adc  c                                           ; $78ba: $89
	sbc  b                                           ; $78bb: $98
	ld   [hl], a                                     ; $78bc: $77
	adc  c                                           ; $78bd: $89
	adc  b                                           ; $78be: $88
	add  a                                           ; $78bf: $87
	adc  b                                           ; $78c0: $88
	adc  b                                           ; $78c1: $88
	adc  b                                           ; $78c2: $88
	adc  b                                           ; $78c3: $88
	adc  b                                           ; $78c4: $88
	ld   [hl], a                                     ; $78c5: $77
	adc  b                                           ; $78c6: $88
	sbc  b                                           ; $78c7: $98
	adc  c                                           ; $78c8: $89
	ld   [hl], a                                     ; $78c9: $77
	adc  b                                           ; $78ca: $88
	adc  b                                           ; $78cb: $88
	adc  b                                           ; $78cc: $88
	sbc  b                                           ; $78cd: $98
	adc  c                                           ; $78ce: $89
	adc  b                                           ; $78cf: $88
	ld   [hl], a                                     ; $78d0: $77
	adc  c                                           ; $78d1: $89
	sbc  b                                           ; $78d2: $98
	add  a                                           ; $78d3: $87
	ld   a, b                                        ; $78d4: $78
	adc  c                                           ; $78d5: $89
	add  a                                           ; $78d6: $87
	adc  b                                           ; $78d7: $88
	sbc  b                                           ; $78d8: $98
	sbc  b                                           ; $78d9: $98
	ld   [hl], a                                     ; $78da: $77
	adc  c                                           ; $78db: $89
	sbc  c                                           ; $78dc: $99
	add  a                                           ; $78dd: $87
	adc  b                                           ; $78de: $88
	adc  b                                           ; $78df: $88
	add  a                                           ; $78e0: $87
	ld   a, b                                        ; $78e1: $78
	sbc  c                                           ; $78e2: $99
	add  a                                           ; $78e3: $87
	ld   a, c                                        ; $78e4: $79
	sbc  c                                           ; $78e5: $99
	add  a                                           ; $78e6: $87
	ld   a, b                                        ; $78e7: $78
	adc  c                                           ; $78e8: $89
	adc  b                                           ; $78e9: $88
	ld   [hl], a                                     ; $78ea: $77
	adc  c                                           ; $78eb: $89
	adc  c                                           ; $78ec: $89

Call_0b6_78ed:
	add  a                                           ; $78ed: $87
	adc  b                                           ; $78ee: $88
	adc  b                                           ; $78ef: $88
	ld   [hl], a                                     ; $78f0: $77
	adc  b                                           ; $78f1: $88
	adc  c                                           ; $78f2: $89
	adc  b                                           ; $78f3: $88
	adc  c                                           ; $78f4: $89
	adc  b                                           ; $78f5: $88
	adc  b                                           ; $78f6: $88
	adc  b                                           ; $78f7: $88
	adc  b                                           ; $78f8: $88
	adc  b                                           ; $78f9: $88
	adc  b                                           ; $78fa: $88
	adc  b                                           ; $78fb: $88
	adc  c                                           ; $78fc: $89
	adc  b                                           ; $78fd: $88
	adc  b                                           ; $78fe: $88
	adc  b                                           ; $78ff: $88
	adc  b                                           ; $7900: $88
	adc  b                                           ; $7901: $88
	sbc  c                                           ; $7902: $99
	adc  b                                           ; $7903: $88
	adc  b                                           ; $7904: $88
	sbc  b                                           ; $7905: $98
	adc  b                                           ; $7906: $88
	ld   a, b                                        ; $7907: $78
	adc  b                                           ; $7908: $88
	sbc  c                                           ; $7909: $99
	ld   a, b                                        ; $790a: $78
	adc  c                                           ; $790b: $89
	sbc  b                                           ; $790c: $98
	ld   [hl], a                                     ; $790d: $77
	sbc  b                                           ; $790e: $98
	sbc  c                                           ; $790f: $99
	ld   [hl], a                                     ; $7910: $77
	add  a                                           ; $7911: $87
	sbc  b                                           ; $7912: $98
	adc  b                                           ; $7913: $88
	adc  b                                           ; $7914: $88
	adc  c                                           ; $7915: $89
	ld   [hl], a                                     ; $7916: $77
	ld   a, b                                        ; $7917: $78
	sbc  c                                           ; $7918: $99
	adc  c                                           ; $7919: $89
	ld   [hl], a                                     ; $791a: $77
	adc  b                                           ; $791b: $88
	sbc  c                                           ; $791c: $99
	ld   [hl], a                                     ; $791d: $77
	sbc  b                                           ; $791e: $98
	adc  b                                           ; $791f: $88
	adc  b                                           ; $7920: $88
	add  a                                           ; $7921: $87
	ld   a, c                                        ; $7922: $79
	sub  a                                           ; $7923: $97
	adc  b                                           ; $7924: $88
	adc  b                                           ; $7925: $88
	adc  b                                           ; $7926: $88
	ld   a, b                                        ; $7927: $78
	adc  c                                           ; $7928: $89
	adc  b                                           ; $7929: $88
	sbc  b                                           ; $792a: $98
	sbc  c                                           ; $792b: $99
	adc  b                                           ; $792c: $88
	ld   a, b                                        ; $792d: $78
	ld   [hl], a                                     ; $792e: $77
	sbc  b                                           ; $792f: $98
	sbc  b                                           ; $7930: $98
	add  a                                           ; $7931: $87
	adc  b                                           ; $7932: $88
	adc  b                                           ; $7933: $88
	adc  b                                           ; $7934: $88
	sbc  c                                           ; $7935: $99
	adc  c                                           ; $7936: $89
	ld   [hl], a                                     ; $7937: $77
	adc  b                                           ; $7938: $88
	sbc  c                                           ; $7939: $99
	ld   [hl], a                                     ; $793a: $77
	ld   a, b                                        ; $793b: $78
	adc  b                                           ; $793c: $88
	adc  b                                           ; $793d: $88
	adc  c                                           ; $793e: $89
	adc  b                                           ; $793f: $88
	adc  b                                           ; $7940: $88
	ld   a, b                                        ; $7941: $78
	adc  c                                           ; $7942: $89
	adc  b                                           ; $7943: $88
	adc  b                                           ; $7944: $88
	sbc  b                                           ; $7945: $98
	ld   [hl], a                                     ; $7946: $77
	ld   a, c                                        ; $7947: $79
	adc  b                                           ; $7948: $88
	adc  b                                           ; $7949: $88
	sbc  c                                           ; $794a: $99
	sbc  c                                           ; $794b: $99
	add  a                                           ; $794c: $87
	ld   a, b                                        ; $794d: $78
	sbc  b                                           ; $794e: $98
	add  a                                           ; $794f: $87
	ld   a, b                                        ; $7950: $78
	sbc  b                                           ; $7951: $98
	adc  b                                           ; $7952: $88
	ld   a, b                                        ; $7953: $78
	adc  b                                           ; $7954: $88
	sub  a                                           ; $7955: $97
	ld   a, c                                        ; $7956: $79
	add  a                                           ; $7957: $87
	add  a                                           ; $7958: $87
	ld   a, c                                        ; $7959: $79
	adc  b                                           ; $795a: $88
	sub  a                                           ; $795b: $97
	adc  b                                           ; $795c: $88
	adc  b                                           ; $795d: $88
	add  [hl]                                        ; $795e: $86
	ld   a, b                                        ; $795f: $78
	adc  c                                           ; $7960: $89
	adc  b                                           ; $7961: $88
	adc  c                                           ; $7962: $89
	adc  b                                           ; $7963: $88
	add  a                                           ; $7964: $87
	adc  b                                           ; $7965: $88
	adc  c                                           ; $7966: $89
	ld   [hl], a                                     ; $7967: $77
	sbc  c                                           ; $7968: $99
	ld   [hl], a                                     ; $7969: $77
	ld   a, b                                        ; $796a: $78
	adc  c                                           ; $796b: $89
	adc  b                                           ; $796c: $88
	adc  b                                           ; $796d: $88
	sbc  b                                           ; $796e: $98
	adc  b                                           ; $796f: $88
	ld   a, b                                        ; $7970: $78
	sbc  c                                           ; $7971: $99
	sbc  b                                           ; $7972: $98
	ld   a, b                                        ; $7973: $78
	sub  a                                           ; $7974: $97
	adc  b                                           ; $7975: $88
	adc  c                                           ; $7976: $89
	add  a                                           ; $7977: $87
	adc  b                                           ; $7978: $88
	ld   a, c                                        ; $7979: $79
	add  a                                           ; $797a: $87
	adc  b                                           ; $797b: $88
	adc  c                                           ; $797c: $89
	add  a                                           ; $797d: $87
	adc  b                                           ; $797e: $88
	adc  b                                           ; $797f: $88
	add  a                                           ; $7980: $87
	adc  b                                           ; $7981: $88
	adc  c                                           ; $7982: $89
	adc  b                                           ; $7983: $88
	ld   a, b                                        ; $7984: $78
	sbc  b                                           ; $7985: $98
	adc  b                                           ; $7986: $88
	ld   [hl], a                                     ; $7987: $77
	adc  b                                           ; $7988: $88
	adc  b                                           ; $7989: $88
	add  a                                           ; $798a: $87
	adc  c                                           ; $798b: $89
	adc  b                                           ; $798c: $88
	add  a                                           ; $798d: $87
	adc  b                                           ; $798e: $88
	sbc  b                                           ; $798f: $98
	add  a                                           ; $7990: $87
	adc  b                                           ; $7991: $88
	adc  b                                           ; $7992: $88
	sbc  b                                           ; $7993: $98
	ld   [hl], a                                     ; $7994: $77
	ld   a, b                                        ; $7995: $78
	adc  b                                           ; $7996: $88
	sbc  c                                           ; $7997: $99
	adc  c                                           ; $7998: $89
	adc  b                                           ; $7999: $88
	sbc  b                                           ; $799a: $98
	ld   a, b                                        ; $799b: $78
	adc  c                                           ; $799c: $89
	adc  b                                           ; $799d: $88
	add  a                                           ; $799e: $87
	ld   [hl], a                                     ; $799f: $77
	sbc  c                                           ; $79a0: $99
	sbc  b                                           ; $79a1: $98
	add  a                                           ; $79a2: $87
	sbc  b                                           ; $79a3: $98
	adc  b                                           ; $79a4: $88
	ld   a, b                                        ; $79a5: $78
	adc  b                                           ; $79a6: $88
	adc  b                                           ; $79a7: $88
	add  a                                           ; $79a8: $87
	adc  b                                           ; $79a9: $88
	adc  b                                           ; $79aa: $88
	adc  b                                           ; $79ab: $88
	adc  b                                           ; $79ac: $88
	sbc  b                                           ; $79ad: $98
	adc  b                                           ; $79ae: $88
	ld   [hl], a                                     ; $79af: $77
	adc  c                                           ; $79b0: $89
	adc  b                                           ; $79b1: $88
	sub  a                                           ; $79b2: $97
	adc  b                                           ; $79b3: $88
	ld   a, b                                        ; $79b4: $78
	add  a                                           ; $79b5: $87
	adc  c                                           ; $79b6: $89
	sbc  b                                           ; $79b7: $98
	adc  b                                           ; $79b8: $88
	adc  b                                           ; $79b9: $88
	adc  b                                           ; $79ba: $88
	add  a                                           ; $79bb: $87
	ld   a, b                                        ; $79bc: $78
	sbc  b                                           ; $79bd: $98
	add  a                                           ; $79be: $87
	ld   a, c                                        ; $79bf: $79
	adc  b                                           ; $79c0: $88
	sbc  b                                           ; $79c1: $98
	adc  b                                           ; $79c2: $88
	sbc  c                                           ; $79c3: $99
	add  a                                           ; $79c4: $87
	add  a                                           ; $79c5: $87
	adc  b                                           ; $79c6: $88
	adc  b                                           ; $79c7: $88
	adc  b                                           ; $79c8: $88
	adc  b                                           ; $79c9: $88
	adc  c                                           ; $79ca: $89
	adc  b                                           ; $79cb: $88
	adc  b                                           ; $79cc: $88
	sbc  c                                           ; $79cd: $99
	sbc  b                                           ; $79ce: $98
	ld   a, b                                        ; $79cf: $78
	adc  b                                           ; $79d0: $88
	adc  b                                           ; $79d1: $88
	add  a                                           ; $79d2: $87
	adc  b                                           ; $79d3: $88
	adc  b                                           ; $79d4: $88
	adc  b                                           ; $79d5: $88
	adc  b                                           ; $79d6: $88
	adc  c                                           ; $79d7: $89
	sbc  b                                           ; $79d8: $98
	ld   a, b                                        ; $79d9: $78
	adc  b                                           ; $79da: $88
	add  a                                           ; $79db: $87
	ld   a, b                                        ; $79dc: $78
	adc  b                                           ; $79dd: $88
	ld   a, b                                        ; $79de: $78
	sbc  b                                           ; $79df: $98
	adc  c                                           ; $79e0: $89
	adc  c                                           ; $79e1: $89
	add  a                                           ; $79e2: $87
	adc  b                                           ; $79e3: $88
	adc  b                                           ; $79e4: $88
	sub  a                                           ; $79e5: $97
	add  a                                           ; $79e6: $87
	ld   a, c                                        ; $79e7: $79
	sub  a                                           ; $79e8: $97
	ld   [hl], a                                     ; $79e9: $77
	adc  b                                           ; $79ea: $88
	adc  b                                           ; $79eb: $88
	adc  b                                           ; $79ec: $88
	adc  b                                           ; $79ed: $88
	adc  c                                           ; $79ee: $89
	ld   [hl], a                                     ; $79ef: $77
	adc  c                                           ; $79f0: $89
	add  a                                           ; $79f1: $87
	ld   [hl], a                                     ; $79f2: $77
	ld   a, b                                        ; $79f3: $78
	adc  b                                           ; $79f4: $88
	adc  b                                           ; $79f5: $88
	adc  b                                           ; $79f6: $88
	sbc  c                                           ; $79f7: $99
	add  a                                           ; $79f8: $87
	adc  b                                           ; $79f9: $88
	adc  b                                           ; $79fa: $88
	ld   a, b                                        ; $79fb: $78
	adc  b                                           ; $79fc: $88
	ld   [hl], a                                     ; $79fd: $77
	adc  b                                           ; $79fe: $88

Jump_0b6_79ff:
	adc  b                                           ; $79ff: $88
	adc  c                                           ; $7a00: $89
	sbc  b                                           ; $7a01: $98
	sbc  b                                           ; $7a02: $98
	adc  b                                           ; $7a03: $88
	adc  b                                           ; $7a04: $88
	adc  c                                           ; $7a05: $89
	ld   [hl], a                                     ; $7a06: $77
	adc  c                                           ; $7a07: $89
	add  a                                           ; $7a08: $87
	ld   a, b                                        ; $7a09: $78
	adc  b                                           ; $7a0a: $88
	sbc  b                                           ; $7a0b: $98
	sbc  c                                           ; $7a0c: $99
	sbc  c                                           ; $7a0d: $99
	sbc  b                                           ; $7a0e: $98
	add  a                                           ; $7a0f: $87
	adc  c                                           ; $7a10: $89
	add  a                                           ; $7a11: $87
	ld   a, b                                        ; $7a12: $78
	adc  b                                           ; $7a13: $88
	ld   [hl], a                                     ; $7a14: $77
	adc  c                                           ; $7a15: $89
	sbc  c                                           ; $7a16: $99
	sbc  b                                           ; $7a17: $98
	sbc  b                                           ; $7a18: $98
	ld   a, b                                        ; $7a19: $78
	sub  a                                           ; $7a1a: $97
	ld   a, b                                        ; $7a1b: $78
	adc  c                                           ; $7a1c: $89
	add  a                                           ; $7a1d: $87
	ld   a, b                                        ; $7a1e: $78
	ld   [hl], a                                     ; $7a1f: $77
	adc  c                                           ; $7a20: $89
	adc  c                                           ; $7a21: $89
	adc  c                                           ; $7a22: $89
	adc  b                                           ; $7a23: $88
	sbc  b                                           ; $7a24: $98
	ld   a, b                                        ; $7a25: $78
	ld   a, c                                        ; $7a26: $79
	adc  b                                           ; $7a27: $88
	ld   [hl], a                                     ; $7a28: $77
	adc  b                                           ; $7a29: $88
	adc  b                                           ; $7a2a: $88
	ld   a, b                                        ; $7a2b: $78
	adc  c                                           ; $7a2c: $89
	adc  b                                           ; $7a2d: $88
	adc  b                                           ; $7a2e: $88
	adc  c                                           ; $7a2f: $89
	adc  b                                           ; $7a30: $88
	ld   a, c                                        ; $7a31: $79
	add  a                                           ; $7a32: $87
	ld   [hl], a                                     ; $7a33: $77
	adc  c                                           ; $7a34: $89
	add  a                                           ; $7a35: $87
	ld   a, b                                        ; $7a36: $78
	sbc  b                                           ; $7a37: $98
	adc  b                                           ; $7a38: $88
	adc  b                                           ; $7a39: $88
	sbc  b                                           ; $7a3a: $98
	sub  a                                           ; $7a3b: $97
	adc  b                                           ; $7a3c: $88
	adc  b                                           ; $7a3d: $88
	ld   [hl], a                                     ; $7a3e: $77
	adc  c                                           ; $7a3f: $89
	adc  b                                           ; $7a40: $88
	adc  b                                           ; $7a41: $88
	sbc  b                                           ; $7a42: $98
	adc  b                                           ; $7a43: $88
	ld   [hl], a                                     ; $7a44: $77
	sbc  b                                           ; $7a45: $98
	add  a                                           ; $7a46: $87
	ld   a, b                                        ; $7a47: $78
	sbc  b                                           ; $7a48: $98
	add  a                                           ; $7a49: $87
	ld   a, b                                        ; $7a4a: $78
	sbc  b                                           ; $7a4b: $98
	adc  b                                           ; $7a4c: $88
	ld   a, b                                        ; $7a4d: $78
	sbc  b                                           ; $7a4e: $98
	adc  b                                           ; $7a4f: $88
	adc  b                                           ; $7a50: $88
	adc  b                                           ; $7a51: $88
	ld   [hl], a                                     ; $7a52: $77
	adc  b                                           ; $7a53: $88
	adc  b                                           ; $7a54: $88
	ld   a, b                                        ; $7a55: $78
	ld   a, b                                        ; $7a56: $78
	adc  b                                           ; $7a57: $88
	adc  b                                           ; $7a58: $88
	sbc  c                                           ; $7a59: $99
	adc  b                                           ; $7a5a: $88
	adc  b                                           ; $7a5b: $88
	adc  b                                           ; $7a5c: $88
	ld   a, b                                        ; $7a5d: $78
	sbc  c                                           ; $7a5e: $99
	ld   [hl], a                                     ; $7a5f: $77
	ld   [hl], a                                     ; $7a60: $77
	adc  b                                           ; $7a61: $88
	adc  b                                           ; $7a62: $88
	adc  b                                           ; $7a63: $88
	sbc  c                                           ; $7a64: $99
	add  a                                           ; $7a65: $87
	ld   [hl], a                                     ; $7a66: $77
	adc  c                                           ; $7a67: $89
	ld   [hl], a                                     ; $7a68: $77
	ld   a, b                                        ; $7a69: $78
	sbc  b                                           ; $7a6a: $98
	ld   [hl], a                                     ; $7a6b: $77
	ld   a, b                                        ; $7a6c: $78
	adc  b                                           ; $7a6d: $88
	adc  b                                           ; $7a6e: $88
	sbc  b                                           ; $7a6f: $98
	adc  b                                           ; $7a70: $88
	ld   a, b                                        ; $7a71: $78
	sbc  c                                           ; $7a72: $99
	add  a                                           ; $7a73: $87
	adc  b                                           ; $7a74: $88
	sub  a                                           ; $7a75: $97
	ld   [hl], a                                     ; $7a76: $77
	ld   a, b                                        ; $7a77: $78
	sbc  c                                           ; $7a78: $99
	sbc  b                                           ; $7a79: $98
	adc  b                                           ; $7a7a: $88
	adc  c                                           ; $7a7b: $89
	add  a                                           ; $7a7c: $87
	adc  b                                           ; $7a7d: $88
	sub  a                                           ; $7a7e: $97
	ld   a, b                                        ; $7a7f: $78
	adc  b                                           ; $7a80: $88
	ld   [hl], a                                     ; $7a81: $77
	adc  b                                           ; $7a82: $88
	adc  b                                           ; $7a83: $88
	adc  b                                           ; $7a84: $88
	adc  c                                           ; $7a85: $89
	adc  b                                           ; $7a86: $88
	adc  b                                           ; $7a87: $88
	adc  b                                           ; $7a88: $88
	add  a                                           ; $7a89: $87
	add  a                                           ; $7a8a: $87
	adc  c                                           ; $7a8b: $89
	add  a                                           ; $7a8c: $87
	adc  c                                           ; $7a8d: $89
	sbc  c                                           ; $7a8e: $99
	add  a                                           ; $7a8f: $87
	adc  c                                           ; $7a90: $89
	sbc  b                                           ; $7a91: $98
	sbc  b                                           ; $7a92: $98
	adc  c                                           ; $7a93: $89
	ld   a, b                                        ; $7a94: $78
	add  a                                           ; $7a95: $87
	adc  b                                           ; $7a96: $88
	adc  b                                           ; $7a97: $88
	adc  b                                           ; $7a98: $88
	sbc  b                                           ; $7a99: $98
	adc  b                                           ; $7a9a: $88
	adc  c                                           ; $7a9b: $89
	adc  c                                           ; $7a9c: $89
	adc  b                                           ; $7a9d: $88
	adc  b                                           ; $7a9e: $88
	add  a                                           ; $7a9f: $87
	ld   a, b                                        ; $7aa0: $78
	sbc  b                                           ; $7aa1: $98
	ld   a, b                                        ; $7aa2: $78
	adc  b                                           ; $7aa3: $88
	adc  b                                           ; $7aa4: $88
	adc  b                                           ; $7aa5: $88
	adc  c                                           ; $7aa6: $89
	sbc  b                                           ; $7aa7: $98
	adc  b                                           ; $7aa8: $88
	adc  b                                           ; $7aa9: $88
	adc  b                                           ; $7aaa: $88
	ld   a, b                                        ; $7aab: $78
	adc  b                                           ; $7aac: $88
	adc  b                                           ; $7aad: $88
	ld   a, b                                        ; $7aae: $78
	adc  b                                           ; $7aaf: $88
	adc  b                                           ; $7ab0: $88
	adc  b                                           ; $7ab1: $88
	sbc  b                                           ; $7ab2: $98
	adc  b                                           ; $7ab3: $88
	adc  b                                           ; $7ab4: $88
	adc  b                                           ; $7ab5: $88
	adc  b                                           ; $7ab6: $88
	adc  b                                           ; $7ab7: $88
	adc  b                                           ; $7ab8: $88
	adc  b                                           ; $7ab9: $88
	adc  b                                           ; $7aba: $88
	adc  b                                           ; $7abb: $88
	sbc  c                                           ; $7abc: $99
	adc  b                                           ; $7abd: $88
	adc  b                                           ; $7abe: $88
	add  a                                           ; $7abf: $87
	ld   a, b                                        ; $7ac0: $78
	sbc  b                                           ; $7ac1: $98
	add  a                                           ; $7ac2: $87
	ld   a, b                                        ; $7ac3: $78
	adc  b                                           ; $7ac4: $88
	adc  b                                           ; $7ac5: $88
	adc  b                                           ; $7ac6: $88
	sbc  c                                           ; $7ac7: $99
	adc  b                                           ; $7ac8: $88
	adc  b                                           ; $7ac9: $88
	adc  b                                           ; $7aca: $88
	adc  b                                           ; $7acb: $88
	adc  b                                           ; $7acc: $88
	adc  b                                           ; $7acd: $88
	adc  b                                           ; $7ace: $88
	ld   a, b                                        ; $7acf: $78
	adc  b                                           ; $7ad0: $88
	adc  b                                           ; $7ad1: $88
	adc  c                                           ; $7ad2: $89
	adc  b                                           ; $7ad3: $88
	adc  b                                           ; $7ad4: $88
	adc  b                                           ; $7ad5: $88
	adc  b                                           ; $7ad6: $88
	adc  b                                           ; $7ad7: $88
	adc  b                                           ; $7ad8: $88
	adc  b                                           ; $7ad9: $88
	adc  b                                           ; $7ada: $88
	adc  b                                           ; $7adb: $88
	adc  c                                           ; $7adc: $89
	adc  b                                           ; $7add: $88
	adc  b                                           ; $7ade: $88
	adc  c                                           ; $7adf: $89
	adc  b                                           ; $7ae0: $88
	adc  b                                           ; $7ae1: $88
	adc  c                                           ; $7ae2: $89
	add  a                                           ; $7ae3: $87
	adc  b                                           ; $7ae4: $88
	adc  c                                           ; $7ae5: $89
	adc  b                                           ; $7ae6: $88
	adc  b                                           ; $7ae7: $88
	adc  c                                           ; $7ae8: $89
	adc  b                                           ; $7ae9: $88
	sbc  b                                           ; $7aea: $98
	adc  b                                           ; $7aeb: $88
	adc  b                                           ; $7aec: $88
	adc  b                                           ; $7aed: $88
	adc  b                                           ; $7aee: $88
	ld   a, b                                        ; $7aef: $78
	adc  b                                           ; $7af0: $88
	adc  b                                           ; $7af1: $88
	adc  b                                           ; $7af2: $88
	sbc  b                                           ; $7af3: $98
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
	sbc  b                                           ; $7b00: $98
	add  a                                           ; $7b01: $87
	adc  b                                           ; $7b02: $88
	adc  b                                           ; $7b03: $88
	adc  b                                           ; $7b04: $88
	adc  b                                           ; $7b05: $88
	adc  c                                           ; $7b06: $89
	adc  b                                           ; $7b07: $88
	adc  c                                           ; $7b08: $89
	adc  b                                           ; $7b09: $88
	adc  b                                           ; $7b0a: $88
	adc  b                                           ; $7b0b: $88
	adc  b                                           ; $7b0c: $88
	adc  b                                           ; $7b0d: $88
	adc  b                                           ; $7b0e: $88
	add  a                                           ; $7b0f: $87
	adc  b                                           ; $7b10: $88
	adc  b                                           ; $7b11: $88
	adc  b                                           ; $7b12: $88
	adc  c                                           ; $7b13: $89
	sbc  b                                           ; $7b14: $98
	adc  b                                           ; $7b15: $88
	adc  b                                           ; $7b16: $88
	sbc  b                                           ; $7b17: $98
	adc  b                                           ; $7b18: $88
	adc  b                                           ; $7b19: $88
	adc  b                                           ; $7b1a: $88
	adc  b                                           ; $7b1b: $88
	adc  b                                           ; $7b1c: $88
	adc  b                                           ; $7b1d: $88
	adc  b                                           ; $7b1e: $88
	adc  b                                           ; $7b1f: $88
	adc  b                                           ; $7b20: $88
	sbc  b                                           ; $7b21: $98
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
	adc  c                                           ; $7b37: $89
	sbc  b                                           ; $7b38: $98
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
	sbc  b                                           ; $7b9d: $98
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
	sbc  b                                           ; $7bb3: $98
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
