; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0b2", ROMX[$4000], BANK[$b2]

	xor  c                                           ; $4000: $a9
	add  a                                           ; $4001: $87
	ld   [hl], a                                     ; $4002: $77
	ld   a, b                                        ; $4003: $78
	adc  c                                           ; $4004: $89
	adc  b                                           ; $4005: $88
	add  a                                           ; $4006: $87
	adc  c                                           ; $4007: $89
	sbc  c                                           ; $4008: $99
	sbc  b                                           ; $4009: $98
	ld   [hl], a                                     ; $400a: $77
	ld   [hl], a                                     ; $400b: $77
	adc  c                                           ; $400c: $89
	sbc  b                                           ; $400d: $98
	ld   [hl], a                                     ; $400e: $77
	ld   [hl], a                                     ; $400f: $77
	adc  c                                           ; $4010: $89
	sbc  b                                           ; $4011: $98
	add  a                                           ; $4012: $87
	adc  b                                           ; $4013: $88
	adc  c                                           ; $4014: $89
	sbc  b                                           ; $4015: $98
	add  a                                           ; $4016: $87
	ld   a, b                                        ; $4017: $78
	sbc  c                                           ; $4018: $99
	sbc  c                                           ; $4019: $99
	add  a                                           ; $401a: $87
	ld   [hl], a                                     ; $401b: $77
	ld   a, b                                        ; $401c: $78
	sbc  b                                           ; $401d: $98
	add  a                                           ; $401e: $87
	ld   [hl], a                                     ; $401f: $77
	ld   a, b                                        ; $4020: $78
	sbc  b                                           ; $4021: $98
	sbc  b                                           ; $4022: $98
	adc  b                                           ; $4023: $88
	adc  b                                           ; $4024: $88
	adc  c                                           ; $4025: $89
	sbc  c                                           ; $4026: $99
	adc  b                                           ; $4027: $88
	adc  b                                           ; $4028: $88
	add  a                                           ; $4029: $87
	adc  b                                           ; $402a: $88
	adc  b                                           ; $402b: $88
	adc  b                                           ; $402c: $88
	adc  b                                           ; $402d: $88
	adc  b                                           ; $402e: $88
	adc  b                                           ; $402f: $88
	adc  b                                           ; $4030: $88
	adc  b                                           ; $4031: $88
	adc  b                                           ; $4032: $88
	adc  b                                           ; $4033: $88
	adc  b                                           ; $4034: $88
	adc  b                                           ; $4035: $88
	adc  b                                           ; $4036: $88
	add  a                                           ; $4037: $87
	ld   [hl], a                                     ; $4038: $77
	adc  b                                           ; $4039: $88
	adc  b                                           ; $403a: $88
	adc  b                                           ; $403b: $88
	adc  b                                           ; $403c: $88
	sbc  c                                           ; $403d: $99
	sbc  b                                           ; $403e: $98
	adc  b                                           ; $403f: $88
	ld   a, b                                        ; $4040: $78
	adc  b                                           ; $4041: $88
	adc  b                                           ; $4042: $88
	add  a                                           ; $4043: $87
	ld   [hl], a                                     ; $4044: $77
	ld   a, b                                        ; $4045: $78
	adc  b                                           ; $4046: $88
	adc  b                                           ; $4047: $88
	ld   a, b                                        ; $4048: $78
	adc  b                                           ; $4049: $88
	adc  b                                           ; $404a: $88
	adc  b                                           ; $404b: $88
	adc  b                                           ; $404c: $88
	adc  b                                           ; $404d: $88
	adc  b                                           ; $404e: $88
	adc  b                                           ; $404f: $88
	adc  b                                           ; $4050: $88
	adc  b                                           ; $4051: $88
	adc  b                                           ; $4052: $88
	adc  b                                           ; $4053: $88
	adc  b                                           ; $4054: $88
	adc  b                                           ; $4055: $88
	adc  b                                           ; $4056: $88
	adc  b                                           ; $4057: $88
	adc  b                                           ; $4058: $88
	adc  b                                           ; $4059: $88
	adc  b                                           ; $405a: $88
	adc  b                                           ; $405b: $88
	adc  b                                           ; $405c: $88
	adc  b                                           ; $405d: $88
	ld   [hl], a                                     ; $405e: $77
	ld   a, b                                        ; $405f: $78
	adc  b                                           ; $4060: $88
	adc  b                                           ; $4061: $88
	adc  b                                           ; $4062: $88
	adc  b                                           ; $4063: $88
	adc  b                                           ; $4064: $88
	adc  b                                           ; $4065: $88
	adc  b                                           ; $4066: $88
	adc  b                                           ; $4067: $88
	adc  b                                           ; $4068: $88
	adc  b                                           ; $4069: $88
	adc  b                                           ; $406a: $88
	adc  b                                           ; $406b: $88
	add  a                                           ; $406c: $87
	ld   [hl], a                                     ; $406d: $77
	adc  b                                           ; $406e: $88
	adc  b                                           ; $406f: $88
	adc  b                                           ; $4070: $88
	adc  b                                           ; $4071: $88
	adc  b                                           ; $4072: $88
	adc  b                                           ; $4073: $88
	adc  b                                           ; $4074: $88
	adc  b                                           ; $4075: $88
	adc  b                                           ; $4076: $88
	adc  b                                           ; $4077: $88
	adc  b                                           ; $4078: $88
	adc  b                                           ; $4079: $88
	add  a                                           ; $407a: $87
	ld   a, b                                        ; $407b: $78
	adc  b                                           ; $407c: $88
	adc  b                                           ; $407d: $88
	adc  b                                           ; $407e: $88
	adc  b                                           ; $407f: $88
	adc  b                                           ; $4080: $88
	adc  b                                           ; $4081: $88
	adc  b                                           ; $4082: $88
	adc  b                                           ; $4083: $88
	adc  b                                           ; $4084: $88
	adc  b                                           ; $4085: $88
	adc  b                                           ; $4086: $88
	adc  b                                           ; $4087: $88
	adc  b                                           ; $4088: $88
	adc  b                                           ; $4089: $88
	adc  b                                           ; $408a: $88
	adc  b                                           ; $408b: $88
	adc  b                                           ; $408c: $88
	adc  b                                           ; $408d: $88
	adc  b                                           ; $408e: $88
	adc  b                                           ; $408f: $88
	adc  b                                           ; $4090: $88
	adc  b                                           ; $4091: $88
	adc  b                                           ; $4092: $88
	adc  b                                           ; $4093: $88
	adc  b                                           ; $4094: $88
	adc  b                                           ; $4095: $88
	adc  b                                           ; $4096: $88
	adc  b                                           ; $4097: $88
	adc  b                                           ; $4098: $88
	adc  b                                           ; $4099: $88
	adc  b                                           ; $409a: $88
	adc  b                                           ; $409b: $88
	adc  b                                           ; $409c: $88
	adc  b                                           ; $409d: $88
	adc  b                                           ; $409e: $88
	adc  b                                           ; $409f: $88
	adc  b                                           ; $40a0: $88
	adc  b                                           ; $40a1: $88
	adc  b                                           ; $40a2: $88
	adc  b                                           ; $40a3: $88
	adc  b                                           ; $40a4: $88
	adc  b                                           ; $40a5: $88
	adc  b                                           ; $40a6: $88
	adc  b                                           ; $40a7: $88
	adc  b                                           ; $40a8: $88
	adc  b                                           ; $40a9: $88
	adc  b                                           ; $40aa: $88
	adc  b                                           ; $40ab: $88
	adc  b                                           ; $40ac: $88
	adc  b                                           ; $40ad: $88
	adc  b                                           ; $40ae: $88
	adc  b                                           ; $40af: $88
	adc  b                                           ; $40b0: $88
	adc  b                                           ; $40b1: $88
	adc  b                                           ; $40b2: $88
	adc  b                                           ; $40b3: $88
	adc  b                                           ; $40b4: $88
	adc  b                                           ; $40b5: $88
	adc  b                                           ; $40b6: $88
	adc  b                                           ; $40b7: $88
	adc  b                                           ; $40b8: $88
	adc  b                                           ; $40b9: $88
	adc  b                                           ; $40ba: $88
	adc  b                                           ; $40bb: $88
	adc  b                                           ; $40bc: $88
	adc  b                                           ; $40bd: $88
	adc  b                                           ; $40be: $88
	adc  b                                           ; $40bf: $88
	adc  b                                           ; $40c0: $88
	adc  b                                           ; $40c1: $88
	adc  b                                           ; $40c2: $88
	adc  b                                           ; $40c3: $88
	adc  b                                           ; $40c4: $88
	adc  b                                           ; $40c5: $88
	adc  b                                           ; $40c6: $88
	adc  b                                           ; $40c7: $88
	adc  b                                           ; $40c8: $88
	adc  b                                           ; $40c9: $88
	adc  b                                           ; $40ca: $88
	adc  b                                           ; $40cb: $88
	adc  b                                           ; $40cc: $88
	adc  b                                           ; $40cd: $88
	adc  b                                           ; $40ce: $88
	adc  b                                           ; $40cf: $88
	adc  b                                           ; $40d0: $88
	adc  b                                           ; $40d1: $88
	adc  b                                           ; $40d2: $88
	adc  b                                           ; $40d3: $88
	adc  b                                           ; $40d4: $88
	adc  b                                           ; $40d5: $88
	adc  b                                           ; $40d6: $88
	adc  b                                           ; $40d7: $88
	adc  b                                           ; $40d8: $88
	adc  b                                           ; $40d9: $88
	adc  b                                           ; $40da: $88
	adc  b                                           ; $40db: $88
	adc  b                                           ; $40dc: $88
	adc  b                                           ; $40dd: $88
	adc  b                                           ; $40de: $88
	adc  b                                           ; $40df: $88
	adc  b                                           ; $40e0: $88
	adc  b                                           ; $40e1: $88
	adc  b                                           ; $40e2: $88
	adc  b                                           ; $40e3: $88
	adc  b                                           ; $40e4: $88
	adc  b                                           ; $40e5: $88
	adc  b                                           ; $40e6: $88
	adc  b                                           ; $40e7: $88
	adc  b                                           ; $40e8: $88
	adc  b                                           ; $40e9: $88
	adc  b                                           ; $40ea: $88
	adc  b                                           ; $40eb: $88
	adc  b                                           ; $40ec: $88
	adc  b                                           ; $40ed: $88
	adc  b                                           ; $40ee: $88
	adc  b                                           ; $40ef: $88
	adc  b                                           ; $40f0: $88
	adc  b                                           ; $40f1: $88
	adc  b                                           ; $40f2: $88
	adc  b                                           ; $40f3: $88
	adc  b                                           ; $40f4: $88
	adc  b                                           ; $40f5: $88
	adc  b                                           ; $40f6: $88
	adc  b                                           ; $40f7: $88
	adc  b                                           ; $40f8: $88
	adc  b                                           ; $40f9: $88
	adc  b                                           ; $40fa: $88
	adc  b                                           ; $40fb: $88
	adc  b                                           ; $40fc: $88
	adc  b                                           ; $40fd: $88
	adc  b                                           ; $40fe: $88
	adc  b                                           ; $40ff: $88
	adc  b                                           ; $4100: $88
	adc  b                                           ; $4101: $88
	adc  b                                           ; $4102: $88
	adc  b                                           ; $4103: $88
	adc  b                                           ; $4104: $88
	adc  b                                           ; $4105: $88
	adc  b                                           ; $4106: $88
	adc  b                                           ; $4107: $88
	adc  b                                           ; $4108: $88
	adc  b                                           ; $4109: $88
	adc  b                                           ; $410a: $88
	adc  b                                           ; $410b: $88
	adc  b                                           ; $410c: $88
	adc  b                                           ; $410d: $88
	adc  b                                           ; $410e: $88
	adc  b                                           ; $410f: $88
	adc  b                                           ; $4110: $88
	adc  b                                           ; $4111: $88
	adc  b                                           ; $4112: $88
	adc  b                                           ; $4113: $88
	adc  b                                           ; $4114: $88
	adc  b                                           ; $4115: $88
	adc  b                                           ; $4116: $88
	adc  b                                           ; $4117: $88
	adc  b                                           ; $4118: $88
	adc  b                                           ; $4119: $88
	adc  b                                           ; $411a: $88
	adc  b                                           ; $411b: $88
	adc  b                                           ; $411c: $88
	adc  b                                           ; $411d: $88
	adc  b                                           ; $411e: $88
	adc  b                                           ; $411f: $88
	adc  b                                           ; $4120: $88
	adc  b                                           ; $4121: $88
	adc  b                                           ; $4122: $88
	adc  b                                           ; $4123: $88
	adc  b                                           ; $4124: $88
	adc  b                                           ; $4125: $88
	adc  b                                           ; $4126: $88
	adc  b                                           ; $4127: $88
	adc  b                                           ; $4128: $88
	adc  b                                           ; $4129: $88
	adc  b                                           ; $412a: $88
	adc  b                                           ; $412b: $88
	adc  b                                           ; $412c: $88
	adc  b                                           ; $412d: $88
	adc  b                                           ; $412e: $88
	adc  b                                           ; $412f: $88
	adc  b                                           ; $4130: $88
	adc  b                                           ; $4131: $88
	adc  b                                           ; $4132: $88
	adc  b                                           ; $4133: $88
	adc  b                                           ; $4134: $88
	adc  b                                           ; $4135: $88
	adc  b                                           ; $4136: $88
	adc  b                                           ; $4137: $88
	adc  b                                           ; $4138: $88
	adc  b                                           ; $4139: $88

jr_0b2_413a:
	adc  b                                           ; $413a: $88
	adc  b                                           ; $413b: $88
	adc  b                                           ; $413c: $88
	adc  b                                           ; $413d: $88
	adc  b                                           ; $413e: $88
	adc  b                                           ; $413f: $88
	adc  b                                           ; $4140: $88
	adc  b                                           ; $4141: $88
	adc  b                                           ; $4142: $88
	adc  b                                           ; $4143: $88
	adc  b                                           ; $4144: $88
	adc  b                                           ; $4145: $88
	adc  b                                           ; $4146: $88
	adc  b                                           ; $4147: $88
	adc  b                                           ; $4148: $88
	adc  b                                           ; $4149: $88
	adc  b                                           ; $414a: $88
	adc  b                                           ; $414b: $88
	adc  b                                           ; $414c: $88
	adc  b                                           ; $414d: $88
	adc  b                                           ; $414e: $88
	adc  b                                           ; $414f: $88
	adc  b                                           ; $4150: $88
	adc  b                                           ; $4151: $88
	adc  b                                           ; $4152: $88
	adc  b                                           ; $4153: $88
	adc  b                                           ; $4154: $88
	adc  b                                           ; $4155: $88
	adc  b                                           ; $4156: $88
	adc  b                                           ; $4157: $88
	adc  b                                           ; $4158: $88
	adc  d                                           ; $4159: $8a
	db   $fd                                         ; $415a: $fd
	ld   e, b                                        ; $415b: $58
	xor  d                                           ; $415c: $aa
	add  e                                           ; $415d: $83
	ld   l, a                                        ; $415e: $6f
	db   $e3                                         ; $415f: $e3
	inc  de                                          ; $4160: $13
	jp   z, Jump_0b2_6d52                            ; $4161: $ca $52 $6d

	and  l                                           ; $4164: $a5
	ld   l, h                                        ; $4165: $6c

Jump_0b2_4166:
	and  [hl]                                        ; $4166: $a6
	ld   b, a                                        ; $4167: $47
	jp   c, $8b64                                    ; $4168: $da $64 $8b

	sub  [hl]                                        ; $416b: $96
	ld   a, c                                        ; $416c: $79
	sub  a                                           ; $416d: $97
	ld   d, [hl]                                     ; $416e: $56
	ld   a, e                                        ; $416f: $7b
	or   a                                           ; $4170: $b7
	ld   h, [hl]                                     ; $4171: $66
	ld   a, c                                        ; $4172: $79
	halt                                             ; $4173: $76
	ld   l, c                                        ; $4174: $69

Call_0b2_4175:
	sub  [hl]                                        ; $4175: $96
	ld   e, c                                        ; $4176: $59
	xor  d                                           ; $4177: $aa
	ld   h, e                                        ; $4178: $63
	halt                                             ; $4179: $76
	ld   e, c                                        ; $417a: $59
	rst  $28                                         ; $417b: $ef
	or   h                                           ; $417c: $b4
	jr   c, jr_0b2_413a                              ; $417d: $38 $bb

	sub  a                                           ; $417f: $97
	sub  [hl]                                        ; $4180: $96
	ld   d, a                                        ; $4181: $57
	adc  b                                           ; $4182: $88
	ld   l, b                                        ; $4183: $68
	sbc  c                                           ; $4184: $99
	sbc  c                                           ; $4185: $99
	sbc  h                                           ; $4186: $9c
	or   l                                           ; $4187: $b5

Jump_0b2_4188:
	ld   d, a                                        ; $4188: $57
	call $77ba                                       ; $4189: $cd $ba $77
	ld   h, e                                        ; $418c: $63
	inc  d                                           ; $418d: $14
	halt                                             ; $418e: $76
	ld   h, [hl]                                     ; $418f: $66
	add  a                                           ; $4190: $87
	sbc  b                                           ; $4191: $98
	ld   l, d                                        ; $4192: $6a
	cp   d                                           ; $4193: $ba
	sbc  b                                           ; $4194: $98
	sbc  b                                           ; $4195: $98
	ld   h, [hl]                                     ; $4196: $66
	ld   a, b                                        ; $4197: $78
	add  l                                           ; $4198: $85
	ld   [hl], $87                                   ; $4199: $36 $87
	ld   d, l                                        ; $419b: $55
	adc  c                                           ; $419c: $89
	sub  a                                           ; $419d: $97
	ld   h, a                                        ; $419e: $67
	adc  c                                           ; $419f: $89
	add  a                                           ; $41a0: $87
	ld   [hl], a                                     ; $41a1: $77
	add  a                                           ; $41a2: $87
	ld   h, a                                        ; $41a3: $67
	adc  c                                           ; $41a4: $89
	adc  b                                           ; $41a5: $88
	ld   a, d                                        ; $41a6: $7a
	xor  b                                           ; $41a7: $a8
	ld   a, b                                        ; $41a8: $78
	xor  d                                           ; $41a9: $aa
	sbc  b                                           ; $41aa: $98
	ld   [hl], a                                     ; $41ab: $77
	xor  d                                           ; $41ac: $aa
	halt                                             ; $41ad: $76
	ld   [hl], a                                     ; $41ae: $77
	ld   [hl], a                                     ; $41af: $77
	ld   h, l                                        ; $41b0: $65
	ld   h, a                                        ; $41b1: $67
	ld   [hl], l                                     ; $41b2: $75
	ld   b, h                                        ; $41b3: $44
	ld   b, [hl]                                     ; $41b4: $46
	ld   h, h                                        ; $41b5: $64
	ld   l, b                                        ; $41b6: $68
	cp   h                                           ; $41b7: $bc
	cp   e                                           ; $41b8: $bb
	rst  $28                                         ; $41b9: $ef
	xor  $ce                                         ; $41ba: $ee $ce
	db   $db                                         ; $41bc: $db
	cp   e                                           ; $41bd: $bb
	xor  b                                           ; $41be: $a8
	ld   [hl], h                                     ; $41bf: $74
	ld   hl, $1111                                   ; $41c0: $21 $11 $11
	ld   de, $1b43                                   ; $41c3: $11 $43 $1b
	rst  $38                                         ; $41c6: $ff
	rst  $38                                         ; $41c7: $ff
	rst  $38                                         ; $41c8: $ff
	rst  $38                                         ; $41c9: $ff
	adc  $ff                                         ; $41ca: $ce $ff
	cp   c                                           ; $41cc: $b9
	ld   b, e                                        ; $41cd: $43
	ld   hl, $2111                                   ; $41ce: $21 $11 $21
	ld   de, $5911                                   ; $41d1: $11 $11 $59
	ld   c, h                                        ; $41d4: $4c
	rst  $38                                         ; $41d5: $ff
	rst  $38                                         ; $41d6: $ff
	rst  $38                                         ; $41d7: $ff
	cp   $ab                                         ; $41d8: $fe $ab
	cp   $86                                         ; $41da: $fe $86
	ld   b, d                                        ; $41dc: $42
	ld   de, $1111                                   ; $41dd: $11 $11 $11
	ld   de, $df11                                   ; $41e0: $11 $11 $df
	sbc  a                                           ; $41e3: $9f
	rst  $38                                         ; $41e4: $ff
	rst  $38                                         ; $41e5: $ff
	db   $dd                                         ; $41e6: $dd
	db   $eb                                         ; $41e7: $eb
	adc  c                                           ; $41e8: $89
	jp   z, $1161                                    ; $41e9: $ca $61 $11

	ld   de, $1111                                   ; $41ec: $11 $11 $11
	ld   de, $cfdd                                   ; $41ef: $11 $dd $cf
	rst  $38                                         ; $41f2: $ff
	rst  $38                                         ; $41f3: $ff
	db   $fd                                         ; $41f4: $fd
	cp   c                                           ; $41f5: $b9
	sbc  h                                           ; $41f6: $9c
	ei                                               ; $41f7: $fb
	ld   b, h                                        ; $41f8: $44

Call_0b2_41f9:
	ld   de, $1111                                   ; $41f9: $11 $11 $11
	ld   de, $fe1a                                   ; $41fc: $11 $1a $fe
	rst  $38                                         ; $41ff: $ff
	rst  $38                                         ; $4200: $ff
	ei                                               ; $4201: $fb
	sbc  h                                           ; $4202: $9c
	add  [hl]                                        ; $4203: $86
	sbc  [hl]                                        ; $4204: $9e
	sub  $32                                         ; $4205: $d6 $32
	ld   de, $1111                                   ; $4207: $11 $11 $11
	ld   de, $ff6f                                   ; $420a: $11 $6f $ff
	rst  $38                                         ; $420d: $ff
	rst  $38                                         ; $420e: $ff
	call nz, $896a                                   ; $420f: $c4 $6a $89
	xor  l                                           ; $4212: $ad
	or   [hl]                                        ; $4213: $b6
	ld   hl, $1111                                   ; $4214: $21 $11 $11
	ld   de, rAUD1LEN                                   ; $4217: $11 $11 $ff
	rst  $28                                         ; $421a: $ef
	rst  $38                                         ; $421b: $ff
	ei                                               ; $421c: $fb
	ld   d, $97                                      ; $421d: $16 $97
	adc  e                                           ; $421f: $8b
	cp   $61                                         ; $4220: $fe $61
	ld   de, $1111                                   ; $4222: $11 $11 $11
	ld   de, $ff1f                                   ; $4225: $11 $1f $ff
	rst  $38                                         ; $4228: $ff
	rst  $38                                         ; $4229: $ff
	and  c                                           ; $422a: $a1
	ld   d, $7d                                      ; $422b: $16 $7d
	rst  $38                                         ; $422d: $ff
	add  sp, $61                                     ; $422e: $e8 $61
	ld   de, $1111                                   ; $4230: $11 $11 $11
	ld   de, $ffff                                   ; $4233: $11 $ff $ff
	rst  $38                                         ; $4236: $ff
	or   $11                                         ; $4237: $f6 $11
	halt                                             ; $4239: $76
	rst  $28                                         ; $423a: $ef
	db   $fd                                         ; $423b: $fd
	sub  [hl]                                        ; $423c: $96
	ld   de, $1111                                   ; $423d: $11 $11 $11
	ld   de, $ff1f                                   ; $4240: $11 $1f $ff
	rst  $38                                         ; $4243: $ff
	rst  $38                                         ; $4244: $ff
	ld   [hl], c                                     ; $4245: $71
	dec  d                                           ; $4246: $15
	adc  a                                           ; $4247: $8f
	rst  $38                                         ; $4248: $ff
	rst  $10                                         ; $4249: $d7
	ld   d, c                                        ; $424a: $51
	ld   de, $1111                                   ; $424b: $11 $11 $11
	ld   de, $ffff                                   ; $424e: $11 $ff $ff
	rst  $38                                         ; $4251: $ff
	db   $f4                                         ; $4252: $f4
	ld   de, $ee5f                                   ; $4253: $11 $5f $ee
	rst  $38                                         ; $4256: $ff
	ld   [hl], e                                     ; $4257: $73
	ld   de, $2111                                   ; $4258: $11 $11 $21
	ld   de, $ff1f                                   ; $425b: $11 $1f $ff
	rst  $38                                         ; $425e: $ff
	rst  $38                                         ; $425f: $ff
	ld   de, $bf16                                   ; $4260: $11 $16 $bf
	rst  $38                                         ; $4263: $ff
	rst  $30                                         ; $4264: $f7
	ld   d, c                                        ; $4265: $51
	ld   de, $1115                                   ; $4266: $11 $15 $11
	ld   de, $ffcf                                   ; $4269: $11 $cf $ff
	rst  $38                                         ; $426c: $ff
	ldh  a, [c]                                      ; $426d: $f2
	ld   de, $ff1d                                   ; $426e: $11 $1d $ff
	rst  $38                                         ; $4271: $ff
	add  h                                           ; $4272: $84
	ld   de, $4111                                   ; $4273: $11 $11 $41
	ld   de, $ff1f                                   ; $4276: $11 $1f $ff
	rst  $38                                         ; $4279: $ff
	rst  $38                                         ; $427a: $ff
	ld   sp, $8a16                                   ; $427b: $31 $16 $8a
	rst  $38                                         ; $427e: $ff
	ld   a, [$1111]                                  ; $427f: $fa $11 $11
	inc  d                                           ; $4282: $14
	ld   hl, $af11                                   ; $4283: $21 $11 $af
	rst  $38                                         ; $4286: $ff
	rst  $38                                         ; $4287: $ff
	db   $fd                                         ; $4288: $fd
	ld   de, $cf1b                                   ; $4289: $11 $1b $cf
	rst  $38                                         ; $428c: $ff
	or   $11                                         ; $428d: $f6 $11
	ld   de, $1154                                   ; $428f: $11 $54 $11
	ld   de, $ffff                                   ; $4292: $11 $ff $ff
	rst  $38                                         ; $4295: $ff
	db   $e4                                         ; $4296: $e4
	ld   de, $ff8b                                   ; $4297: $11 $8b $ff
	cp   $72                                         ; $429a: $fe $72
	ld   de, $3112                                   ; $429c: $11 $12 $31
	ld   de, $ff1f                                   ; $429f: $11 $1f $ff
	rst  $38                                         ; $42a2: $ff
	db   $f4                                         ; $42a3: $f4
	or   c                                           ; $42a4: $b1
	inc  d                                           ; $42a5: $14
	rst  $38                                         ; $42a6: $ff
	rst  $38                                         ; $42a7: $ff
	and  d                                           ; $42a8: $a2
	ld   [hl], c                                     ; $42a9: $71
	ld   de, $1132                                   ; $42aa: $11 $32 $11
	ld   de, $ffff                                   ; $42ad: $11 $ff $ff
	rst  $38                                         ; $42b0: $ff
	pop  af                                          ; $42b1: $f1

jr_0b2_42b2:
	ld   de, $ff7b                                   ; $42b2: $11 $7b $ff
	rst  $38                                         ; $42b5: $ff
	or   e                                           ; $42b6: $b3
	ld   de, $a111                                   ; $42b7: $11 $11 $a1
	ld   de, $ff1f                                   ; $42ba: $11 $1f $ff
	rst  $38                                         ; $42bd: $ff
	rst  $38                                         ; $42be: $ff
	ld   de, $6c3b                                   ; $42bf: $11 $3b $6c
	rst  $38                                         ; $42c2: $ff
	db   $fc                                         ; $42c3: $fc
	ld   hl, $7411                                   ; $42c4: $21 $11 $74
	ld   sp, $1f11                                   ; $42c7: $31 $11 $1f
	rst  $38                                         ; $42ca: $ff
	rst  $38                                         ; $42cb: $ff
	pop  af                                          ; $42cc: $f1
	dec  d                                           ; $42cd: $15
	inc  h                                           ; $42ce: $24
	rst  $38                                         ; $42cf: $ff
	rst  $38                                         ; $42d0: $ff
	call nc, $1111                                   ; $42d1: $d4 $11 $11
	add  h                                           ; $42d4: $84
	ld   de, $cf11                                   ; $42d5: $11 $11 $cf
	rst  $38                                         ; $42d8: $ff
	rst  $38                                         ; $42d9: $ff
	pop  bc                                          ; $42da: $c1
	ld   d, h                                        ; $42db: $54
	ld   a, [de]                                     ; $42dc: $1a
	rst  $38                                         ; $42dd: $ff
	rst  $38                                         ; $42de: $ff
	inc  d                                           ; $42df: $14
	ld   d, c                                        ; $42e0: $51
	ld   de, $3221                                   ; $42e1: $11 $21 $32
	ld   de, $ffdf                                   ; $42e4: $11 $df $ff
	rst  $38                                         ; $42e7: $ff
	sub  c                                           ; $42e8: $91
	ld   a, b                                        ; $42e9: $78
	inc  l                                           ; $42ea: $2c
	rst  $38                                         ; $42eb: $ff
	db   $fd                                         ; $42ec: $fd
	ld   de, $3411                                   ; $42ed: $11 $11 $34
	dec  h                                           ; $42f0: $25
	ld   de, $ff1c                                   ; $42f1: $11 $1c $ff
	rst  $38                                         ; $42f4: $ff
	cp   $f5                                         ; $42f5: $fe $f5
	ld   d, $ce                                      ; $42f7: $16 $ce
	rst  $38                                         ; $42f9: $ff
	or   $11                                         ; $42fa: $f6 $11
	ld   bc, $9414                                   ; $42fc: $01 $14 $94
	ld   de, $ff1c                                   ; $42ff: $11 $1c $ff
	rst  $38                                         ; $4302: $ff
	ld   sp, $91bf                                   ; $4303: $31 $bf $91
	ld   e, a                                        ; $4306: $5f
	rst  $38                                         ; $4307: $ff
	ld   sp, $1138                                   ; $4308: $31 $38 $11
	inc  e                                           ; $430b: $1c
	or   c                                           ; $430c: $b1
	ld   de, $ff9f                                   ; $430d: $11 $9f $ff
	set  7, a                                        ; $4310: $cb $ff
	ld   de, $dfcf                                   ; $4312: $11 $cf $df
	ld   a, [$11b7]                                  ; $4315: $fa $b7 $11
	ld   d, $b4                                      ; $4318: $16 $b4
	ld   de, rAUD1LEN                                   ; $431a: $11 $11 $ff
	ld   l, a                                        ; $431d: $6f
	rst  $38                                         ; $431e: $ff
	jr   c, jr_0b2_42b2                              ; $431f: $38 $91

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4321: $cf
	or   a                                           ; $4322: $b7
	rst  $38                                         ; $4323: $ff
	add  c                                           ; $4324: $81
	ld   de, $4158                                   ; $4325: $11 $58 $41
	ld   de, $8628                                   ; $4328: $11 $28 $86
	rst  $38                                         ; $432b: $ff
	db   $f4                                         ; $432c: $f4
	xor  l                                           ; $432d: $ad
	sbc  d                                           ; $432e: $9a
	ld   c, c                                        ; $432f: $49
	rst  $38                                         ; $4330: $ff
	or   c                                           ; $4331: $b1
	ld   h, l                                        ; $4332: $65
	ld   de, $b117                                   ; $4333: $11 $17 $b1
	ld   de, $5f64                                   ; $4336: $11 $64 $5f
	push af                                          ; $4339: $f5
	rst  $38                                         ; $433a: $ff
	ld   a, [de]                                     ; $433b: $1a
	pop  af                                          ; $433c: $f1
	ld   e, a                                        ; $433d: $5f
	db   $fd                                         ; $433e: $fd
	xor  c                                           ; $433f: $a9
	ld   de, $1931                                   ; $4340: $11 $31 $19
	add  e                                           ; $4343: $83
	ld   de, $fd4e                                   ; $4344: $11 $4e $fd
	ld   l, c                                        ; $4347: $69
	rst  $38                                         ; $4348: $ff
	ld   h, c                                        ; $4349: $61
	cpl                                              ; $434a: $2f
	rst  $30                                         ; $434b: $f7
	ld   e, a                                        ; $434c: $5f
	db   $fc                                         ; $434d: $fc
	ld   de, $f114                                   ; $434e: $11 $14 $f1
	ld   [de], a                                     ; $4351: $12
	ld   d, l                                        ; $4352: $55
	cp   c                                           ; $4353: $b9
	ld   [hl], a                                     ; $4354: $77
	rst  $38                                         ; $4355: $ff
	ld   h, c                                        ; $4356: $61
	rst  $28                                         ; $4357: $ef
	ld   l, d                                        ; $4358: $6a
	db   $fc                                         ; $4359: $fc
	cp   a                                           ; $435a: $bf
	ld   b, c                                        ; $435b: $41
	ld   b, d                                        ; $435c: $42
	ld   d, [hl]                                     ; $435d: $56
	ld   b, c                                        ; $435e: $41
	ld   d, l                                        ; $435f: $55
	ld   de, $e78f                                   ; $4360: $11 $8f $e7
	sbc  a                                           ; $4363: $9f
	adc  a                                           ; $4364: $8f
	pop  bc                                          ; $4365: $c1
	rst  $28                                         ; $4366: $ef
	sbc  b                                           ; $4367: $98
	push de                                          ; $4368: $d5
	db   $e4                                         ; $4369: $e4
	inc  d                                           ; $436a: $14
	ld   b, a                                        ; $436b: $47
	ld   [hl], d                                     ; $436c: $72
	rla                                              ; $436d: $17
	daa                                              ; $436e: $27
	ld   a, c                                        ; $436f: $79
	or   $ad                                         ; $4370: $f6 $ad
	cp   l                                           ; $4372: $bd
	db   $f4                                         ; $4373: $f4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4374: $cf
	ld   a, h                                        ; $4375: $7c
	xor  c                                           ; $4376: $a9
	ld   h, e                                        ; $4377: $63
	inc  de                                          ; $4378: $13
	ld   [hl], h                                     ; $4379: $74
	ld   d, e                                        ; $437a: $53
	ld   b, d                                        ; $437b: $42
	ld   e, b                                        ; $437c: $58
	add  sp, $7e                                     ; $437d: $e8 $7e
	ld   l, d                                        ; $437f: $6a
	ld   sp, hl                                      ; $4380: $f9
	ld   c, a                                        ; $4381: $4f
	ldh  a, [c]                                      ; $4382: $f2
	xor  a                                           ; $4383: $af
	ld   e, c                                        ; $4384: $59
	and  c                                           ; $4385: $a1
	ld   a, [de]                                     ; $4386: $1a
	ld   b, [hl]                                     ; $4387: $46
	ld   d, c                                        ; $4388: $51
	ld   h, $c9                                      ; $4389: $26 $c9
	ld   b, l                                        ; $438b: $45
	db   $ec                                         ; $438c: $ec
	and  l                                           ; $438d: $a5
	adc  a                                           ; $438e: $8f
	rst  $30                                         ; $438f: $f7
	ld   a, a                                        ; $4390: $7f
	xor  l                                           ; $4391: $ad
	jp   nc, $5828                                   ; $4392: $d2 $28 $58

	ld   [hl], c                                     ; $4395: $71
	ld   [hl], l                                     ; $4396: $75
	ld   h, [hl]                                     ; $4397: $66
	inc  hl                                          ; $4398: $23
	rst  $28                                         ; $4399: $ef
	inc  sp                                          ; $439a: $33
	xor  l                                           ; $439b: $ad
	db   $ed                                         ; $439c: $ed
	rla                                              ; $439d: $17
	ei                                               ; $439e: $fb
	ld   e, $f4                                      ; $439f: $1e $f4
	and  [hl]                                        ; $43a1: $a6
	dec  d                                           ; $43a2: $15
	or   l                                           ; $43a3: $b5
	ld   b, a                                        ; $43a4: $47
	ld   h, l                                        ; $43a5: $65
	ld   e, b                                        ; $43a6: $58
	add  l                                           ; $43a7: $85
	ld   a, a                                        ; $43a8: $7f
	add  l                                           ; $43a9: $85
	sbc  d                                           ; $43aa: $9a
	db   $fc                                         ; $43ab: $fc
	ld   d, [hl]                                     ; $43ac: $56
	adc  [hl]                                        ; $43ad: $8e
	rst  $20                                         ; $43ae: $e7
	halt                                             ; $43af: $76
	cp   e                                           ; $43b0: $bb
	ld   [de], a                                     ; $43b1: $12
	sbc  l                                           ; $43b2: $9d
	sub  e                                           ; $43b3: $93
	inc  de                                          ; $43b4: $13
	sbc  h                                           ; $43b5: $9c
	ld   [hl], c                                     ; $43b6: $71
	ld   a, l                                        ; $43b7: $7d
	xor  c                                           ; $43b8: $a9
	adc  b                                           ; $43b9: $88
	sbc  e                                           ; $43ba: $9b
	sub  [hl]                                        ; $43bb: $96
	adc  c                                           ; $43bc: $89
	call z, $5985                                    ; $43bd: $cc $85 $59
	sub  [hl]                                        ; $43c0: $96
	ld   d, [hl]                                     ; $43c1: $56
	adc  b                                           ; $43c2: $88
	ld   [hl], l                                     ; $43c3: $75
	ld   d, a                                        ; $43c4: $57
	halt                                             ; $43c5: $76
	ld   [hl], l                                     ; $43c6: $75
	ld   e, c                                        ; $43c7: $59
	and  a                                           ; $43c8: $a7
	ld   h, [hl]                                     ; $43c9: $66
	ld   a, d                                        ; $43ca: $7a
	sub  a                                           ; $43cb: $97
	ld   a, c                                        ; $43cc: $79
	ld   [hl], a                                     ; $43cd: $77
	ld   [hl], a                                     ; $43ce: $77
	xor  b                                           ; $43cf: $a8
	sbc  c                                           ; $43d0: $99
	ld   a, d                                        ; $43d1: $7a
	sbc  b                                           ; $43d2: $98
	adc  c                                           ; $43d3: $89
	xor  c                                           ; $43d4: $a9
	adc  b                                           ; $43d5: $88
	ld   a, d                                        ; $43d6: $7a
	sub  a                                           ; $43d7: $97
	xor  d                                           ; $43d8: $aa
	sbc  d                                           ; $43d9: $9a
	adc  c                                           ; $43da: $89
	sbc  b                                           ; $43db: $98
	sbc  c                                           ; $43dc: $99
	sbc  d                                           ; $43dd: $9a
	sbc  b                                           ; $43de: $98
	adc  c                                           ; $43df: $89
	adc  b                                           ; $43e0: $88
	adc  c                                           ; $43e1: $89
	cp   c                                           ; $43e2: $b9
	sbc  d                                           ; $43e3: $9a
	sbc  c                                           ; $43e4: $99
	sbc  c                                           ; $43e5: $99
	sbc  b                                           ; $43e6: $98
	sbc  c                                           ; $43e7: $99
	sbc  b                                           ; $43e8: $98
	adc  c                                           ; $43e9: $89
	adc  b                                           ; $43ea: $88
	adc  b                                           ; $43eb: $88
	ld   a, b                                        ; $43ec: $78
	sbc  b                                           ; $43ed: $98
	ld   a, b                                        ; $43ee: $78
	sbc  c                                           ; $43ef: $99
	sbc  b                                           ; $43f0: $98
	sbc  b                                           ; $43f1: $98
	sbc  c                                           ; $43f2: $99
	sbc  b                                           ; $43f3: $98
	sbc  c                                           ; $43f4: $99
	sbc  c                                           ; $43f5: $99
	adc  b                                           ; $43f6: $88
	sbc  b                                           ; $43f7: $98
	sbc  b                                           ; $43f8: $98
	adc  c                                           ; $43f9: $89
	add  a                                           ; $43fa: $87
	ld   [hl], a                                     ; $43fb: $77
	adc  c                                           ; $43fc: $89
	adc  b                                           ; $43fd: $88
	adc  b                                           ; $43fe: $88
	adc  c                                           ; $43ff: $89
	adc  b                                           ; $4400: $88
	sbc  c                                           ; $4401: $99
	adc  b                                           ; $4402: $88
	adc  b                                           ; $4403: $88
	adc  c                                           ; $4404: $89
	sbc  b                                           ; $4405: $98
	adc  c                                           ; $4406: $89
	add  a                                           ; $4407: $87
	add  a                                           ; $4408: $87
	ld   a, b                                        ; $4409: $78
	adc  b                                           ; $440a: $88
	adc  b                                           ; $440b: $88
	adc  b                                           ; $440c: $88
	add  a                                           ; $440d: $87
	adc  b                                           ; $440e: $88
	sbc  b                                           ; $440f: $98
	ld   a, b                                        ; $4410: $78
	adc  b                                           ; $4411: $88
	adc  b                                           ; $4412: $88
	adc  b                                           ; $4413: $88
	adc  b                                           ; $4414: $88
	ld   a, b                                        ; $4415: $78
	ld   [hl], a                                     ; $4416: $77
	ld   [hl], a                                     ; $4417: $77
	ld   a, b                                        ; $4418: $78
	add  a                                           ; $4419: $87
	adc  b                                           ; $441a: $88
	adc  b                                           ; $441b: $88
	adc  b                                           ; $441c: $88
	adc  b                                           ; $441d: $88
	adc  b                                           ; $441e: $88
	adc  b                                           ; $441f: $88
	adc  b                                           ; $4420: $88
	adc  b                                           ; $4421: $88
	adc  b                                           ; $4422: $88
	ld   [hl], a                                     ; $4423: $77
	adc  b                                           ; $4424: $88
	ld   a, b                                        ; $4425: $78
	adc  b                                           ; $4426: $88
	adc  b                                           ; $4427: $88
	ld   a, b                                        ; $4428: $78
	adc  b                                           ; $4429: $88
	adc  b                                           ; $442a: $88
	adc  b                                           ; $442b: $88
	adc  b                                           ; $442c: $88
	ld   a, b                                        ; $442d: $78
	adc  b                                           ; $442e: $88
	adc  b                                           ; $442f: $88
	adc  b                                           ; $4430: $88
	add  a                                           ; $4431: $87
	ld   [hl], a                                     ; $4432: $77
	adc  b                                           ; $4433: $88
	ld   [hl], a                                     ; $4434: $77
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
	ld   a, b                                        ; $4440: $78
	adc  b                                           ; $4441: $88
	adc  b                                           ; $4442: $88
	adc  b                                           ; $4443: $88
	adc  b                                           ; $4444: $88
	ld   a, b                                        ; $4445: $78
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
	adc  b                                           ; $4475: $88
	adc  b                                           ; $4476: $88
	adc  b                                           ; $4477: $88
	adc  b                                           ; $4478: $88
	adc  b                                           ; $4479: $88
	adc  b                                           ; $447a: $88
	adc  b                                           ; $447b: $88
	adc  b                                           ; $447c: $88
	adc  b                                           ; $447d: $88
	adc  b                                           ; $447e: $88
	adc  b                                           ; $447f: $88
	adc  b                                           ; $4480: $88
	adc  b                                           ; $4481: $88
	adc  b                                           ; $4482: $88
	adc  b                                           ; $4483: $88
	adc  b                                           ; $4484: $88
	adc  b                                           ; $4485: $88
	adc  b                                           ; $4486: $88
	adc  b                                           ; $4487: $88
	adc  b                                           ; $4488: $88
	adc  b                                           ; $4489: $88
	adc  b                                           ; $448a: $88
	adc  b                                           ; $448b: $88
	adc  b                                           ; $448c: $88
	adc  b                                           ; $448d: $88
	adc  b                                           ; $448e: $88
	adc  b                                           ; $448f: $88
	adc  b                                           ; $4490: $88
	adc  b                                           ; $4491: $88
	adc  b                                           ; $4492: $88
	adc  b                                           ; $4493: $88
	adc  b                                           ; $4494: $88
	adc  b                                           ; $4495: $88
	adc  b                                           ; $4496: $88
	adc  b                                           ; $4497: $88
	adc  b                                           ; $4498: $88
	adc  b                                           ; $4499: $88
	adc  b                                           ; $449a: $88
	adc  b                                           ; $449b: $88
	adc  b                                           ; $449c: $88
	adc  b                                           ; $449d: $88
	adc  b                                           ; $449e: $88
	adc  b                                           ; $449f: $88
	adc  b                                           ; $44a0: $88
	adc  b                                           ; $44a1: $88
	adc  b                                           ; $44a2: $88
	adc  b                                           ; $44a3: $88
	adc  b                                           ; $44a4: $88
	adc  b                                           ; $44a5: $88
	adc  b                                           ; $44a6: $88
	adc  b                                           ; $44a7: $88
	adc  b                                           ; $44a8: $88
	adc  b                                           ; $44a9: $88
	adc  b                                           ; $44aa: $88
	adc  b                                           ; $44ab: $88
	adc  b                                           ; $44ac: $88
	adc  b                                           ; $44ad: $88
	adc  b                                           ; $44ae: $88
	adc  b                                           ; $44af: $88
	adc  b                                           ; $44b0: $88
	adc  b                                           ; $44b1: $88
	adc  b                                           ; $44b2: $88
	adc  b                                           ; $44b3: $88
	adc  b                                           ; $44b4: $88
	adc  b                                           ; $44b5: $88
	adc  b                                           ; $44b6: $88
	adc  b                                           ; $44b7: $88
	adc  b                                           ; $44b8: $88
	adc  b                                           ; $44b9: $88
	adc  b                                           ; $44ba: $88
	adc  b                                           ; $44bb: $88
	adc  b                                           ; $44bc: $88
	adc  b                                           ; $44bd: $88
	adc  b                                           ; $44be: $88
	adc  b                                           ; $44bf: $88
	adc  b                                           ; $44c0: $88
	adc  b                                           ; $44c1: $88
	adc  b                                           ; $44c2: $88
	adc  b                                           ; $44c3: $88
	adc  b                                           ; $44c4: $88
	adc  b                                           ; $44c5: $88
	adc  b                                           ; $44c6: $88
	adc  b                                           ; $44c7: $88
	adc  b                                           ; $44c8: $88
	adc  b                                           ; $44c9: $88
	adc  b                                           ; $44ca: $88
	adc  b                                           ; $44cb: $88
	adc  b                                           ; $44cc: $88
	adc  b                                           ; $44cd: $88
	adc  b                                           ; $44ce: $88
	adc  b                                           ; $44cf: $88
	adc  b                                           ; $44d0: $88
	adc  b                                           ; $44d1: $88
	adc  b                                           ; $44d2: $88
	adc  b                                           ; $44d3: $88
	adc  b                                           ; $44d4: $88
	adc  b                                           ; $44d5: $88
	adc  b                                           ; $44d6: $88
	adc  b                                           ; $44d7: $88
	adc  b                                           ; $44d8: $88
	adc  b                                           ; $44d9: $88
	adc  b                                           ; $44da: $88
	adc  b                                           ; $44db: $88
	adc  b                                           ; $44dc: $88
	adc  b                                           ; $44dd: $88
	adc  b                                           ; $44de: $88
	adc  b                                           ; $44df: $88
	adc  b                                           ; $44e0: $88
	adc  b                                           ; $44e1: $88
	adc  b                                           ; $44e2: $88
	adc  b                                           ; $44e3: $88
	adc  b                                           ; $44e4: $88
	adc  b                                           ; $44e5: $88
	adc  b                                           ; $44e6: $88
	adc  b                                           ; $44e7: $88
	adc  b                                           ; $44e8: $88
	adc  b                                           ; $44e9: $88
	adc  b                                           ; $44ea: $88
	adc  b                                           ; $44eb: $88
	adc  b                                           ; $44ec: $88
	adc  b                                           ; $44ed: $88
	adc  b                                           ; $44ee: $88
	adc  b                                           ; $44ef: $88
	adc  b                                           ; $44f0: $88
	adc  b                                           ; $44f1: $88
	adc  b                                           ; $44f2: $88
	adc  b                                           ; $44f3: $88
	adc  b                                           ; $44f4: $88
	adc  b                                           ; $44f5: $88
	adc  b                                           ; $44f6: $88
	adc  b                                           ; $44f7: $88
	adc  b                                           ; $44f8: $88
	adc  b                                           ; $44f9: $88
	adc  b                                           ; $44fa: $88
	adc  b                                           ; $44fb: $88
	adc  b                                           ; $44fc: $88
	adc  b                                           ; $44fd: $88
	adc  b                                           ; $44fe: $88
	adc  b                                           ; $44ff: $88
	adc  b                                           ; $4500: $88
	adc  b                                           ; $4501: $88
	adc  b                                           ; $4502: $88
	adc  b                                           ; $4503: $88
	adc  b                                           ; $4504: $88
	adc  b                                           ; $4505: $88
	adc  b                                           ; $4506: $88
	adc  b                                           ; $4507: $88
	adc  b                                           ; $4508: $88
	adc  b                                           ; $4509: $88
	adc  b                                           ; $450a: $88
	adc  b                                           ; $450b: $88
	adc  b                                           ; $450c: $88
	adc  b                                           ; $450d: $88
	adc  b                                           ; $450e: $88
	adc  b                                           ; $450f: $88
	adc  b                                           ; $4510: $88
	adc  b                                           ; $4511: $88
	adc  b                                           ; $4512: $88
	adc  b                                           ; $4513: $88
	adc  b                                           ; $4514: $88
	adc  b                                           ; $4515: $88
	adc  b                                           ; $4516: $88
	adc  b                                           ; $4517: $88
	adc  b                                           ; $4518: $88
	adc  b                                           ; $4519: $88
	adc  b                                           ; $451a: $88
	adc  b                                           ; $451b: $88
	adc  b                                           ; $451c: $88
	adc  b                                           ; $451d: $88
	adc  b                                           ; $451e: $88
	adc  b                                           ; $451f: $88
	adc  b                                           ; $4520: $88
	adc  b                                           ; $4521: $88
	adc  b                                           ; $4522: $88
	adc  b                                           ; $4523: $88
	adc  b                                           ; $4524: $88
	adc  b                                           ; $4525: $88
	adc  b                                           ; $4526: $88
	adc  b                                           ; $4527: $88
	adc  b                                           ; $4528: $88
	adc  b                                           ; $4529: $88
	adc  b                                           ; $452a: $88
	adc  b                                           ; $452b: $88
	adc  b                                           ; $452c: $88
	adc  b                                           ; $452d: $88
	adc  b                                           ; $452e: $88
	adc  b                                           ; $452f: $88
	adc  b                                           ; $4530: $88
	adc  b                                           ; $4531: $88
	adc  b                                           ; $4532: $88
	adc  b                                           ; $4533: $88
	adc  b                                           ; $4534: $88
	adc  b                                           ; $4535: $88
	adc  b                                           ; $4536: $88
	adc  b                                           ; $4537: $88
	adc  b                                           ; $4538: $88
	adc  b                                           ; $4539: $88
	adc  b                                           ; $453a: $88
	adc  b                                           ; $453b: $88
	adc  b                                           ; $453c: $88
	adc  b                                           ; $453d: $88
	adc  b                                           ; $453e: $88
	adc  b                                           ; $453f: $88
	adc  b                                           ; $4540: $88
	adc  b                                           ; $4541: $88
	adc  b                                           ; $4542: $88
	adc  b                                           ; $4543: $88
	adc  b                                           ; $4544: $88
	adc  b                                           ; $4545: $88
	adc  b                                           ; $4546: $88
	adc  b                                           ; $4547: $88
	adc  b                                           ; $4548: $88
	adc  b                                           ; $4549: $88
	adc  b                                           ; $454a: $88
	adc  b                                           ; $454b: $88
	adc  b                                           ; $454c: $88
	adc  b                                           ; $454d: $88
	adc  b                                           ; $454e: $88
	adc  b                                           ; $454f: $88
	adc  b                                           ; $4550: $88
	adc  b                                           ; $4551: $88
	adc  b                                           ; $4552: $88
	adc  b                                           ; $4553: $88
	adc  b                                           ; $4554: $88
	adc  b                                           ; $4555: $88
	adc  b                                           ; $4556: $88
	adc  b                                           ; $4557: $88
	adc  b                                           ; $4558: $88
	adc  b                                           ; $4559: $88
	adc  b                                           ; $455a: $88
	adc  b                                           ; $455b: $88
	adc  b                                           ; $455c: $88
	adc  b                                           ; $455d: $88
	adc  b                                           ; $455e: $88
	adc  b                                           ; $455f: $88
	adc  b                                           ; $4560: $88
	adc  b                                           ; $4561: $88
	adc  b                                           ; $4562: $88
	adc  b                                           ; $4563: $88
	adc  b                                           ; $4564: $88
	adc  b                                           ; $4565: $88
	adc  b                                           ; $4566: $88
	adc  b                                           ; $4567: $88
	adc  b                                           ; $4568: $88
	adc  b                                           ; $4569: $88
	adc  b                                           ; $456a: $88
	adc  b                                           ; $456b: $88
	adc  b                                           ; $456c: $88
	adc  b                                           ; $456d: $88
	adc  b                                           ; $456e: $88
	adc  b                                           ; $456f: $88
	adc  b                                           ; $4570: $88
	adc  b                                           ; $4571: $88
	adc  b                                           ; $4572: $88
	adc  b                                           ; $4573: $88
	adc  b                                           ; $4574: $88
	adc  b                                           ; $4575: $88
	adc  b                                           ; $4576: $88
	adc  b                                           ; $4577: $88
	adc  b                                           ; $4578: $88
	adc  b                                           ; $4579: $88
	adc  b                                           ; $457a: $88
	adc  b                                           ; $457b: $88
	adc  b                                           ; $457c: $88
	adc  b                                           ; $457d: $88
	adc  b                                           ; $457e: $88
	adc  b                                           ; $457f: $88
	adc  b                                           ; $4580: $88
	adc  b                                           ; $4581: $88
	adc  b                                           ; $4582: $88
	adc  b                                           ; $4583: $88
	adc  b                                           ; $4584: $88
	adc  b                                           ; $4585: $88
	adc  b                                           ; $4586: $88
	adc  b                                           ; $4587: $88
	adc  b                                           ; $4588: $88
	adc  b                                           ; $4589: $88
	adc  b                                           ; $458a: $88
	adc  b                                           ; $458b: $88
	adc  b                                           ; $458c: $88
	adc  b                                           ; $458d: $88
	adc  b                                           ; $458e: $88
	adc  b                                           ; $458f: $88
	adc  b                                           ; $4590: $88
	adc  b                                           ; $4591: $88
	adc  b                                           ; $4592: $88
	adc  b                                           ; $4593: $88
	adc  b                                           ; $4594: $88
	adc  b                                           ; $4595: $88
	adc  b                                           ; $4596: $88
	adc  b                                           ; $4597: $88
	adc  b                                           ; $4598: $88
	adc  b                                           ; $4599: $88
	adc  b                                           ; $459a: $88
	adc  b                                           ; $459b: $88
	adc  b                                           ; $459c: $88
	adc  b                                           ; $459d: $88
	adc  b                                           ; $459e: $88
	adc  b                                           ; $459f: $88
	adc  b                                           ; $45a0: $88
	adc  b                                           ; $45a1: $88
	adc  b                                           ; $45a2: $88
	adc  b                                           ; $45a3: $88
	adc  b                                           ; $45a4: $88
	adc  b                                           ; $45a5: $88
	adc  b                                           ; $45a6: $88
	adc  b                                           ; $45a7: $88
	adc  b                                           ; $45a8: $88
	adc  b                                           ; $45a9: $88
	adc  b                                           ; $45aa: $88
	adc  b                                           ; $45ab: $88
	adc  b                                           ; $45ac: $88
	adc  b                                           ; $45ad: $88
	adc  b                                           ; $45ae: $88
	adc  b                                           ; $45af: $88
	adc  b                                           ; $45b0: $88
	adc  b                                           ; $45b1: $88
	adc  b                                           ; $45b2: $88
	adc  b                                           ; $45b3: $88
	adc  b                                           ; $45b4: $88
	adc  b                                           ; $45b5: $88
	adc  b                                           ; $45b6: $88
	adc  b                                           ; $45b7: $88
	adc  b                                           ; $45b8: $88
	adc  b                                           ; $45b9: $88
	adc  b                                           ; $45ba: $88
	adc  b                                           ; $45bb: $88
	adc  b                                           ; $45bc: $88
	adc  b                                           ; $45bd: $88
	adc  b                                           ; $45be: $88
	adc  b                                           ; $45bf: $88
	adc  b                                           ; $45c0: $88
	adc  b                                           ; $45c1: $88
	adc  b                                           ; $45c2: $88
	adc  b                                           ; $45c3: $88
	adc  b                                           ; $45c4: $88
	adc  b                                           ; $45c5: $88
	adc  b                                           ; $45c6: $88
	adc  b                                           ; $45c7: $88
	adc  b                                           ; $45c8: $88
	adc  b                                           ; $45c9: $88
	adc  b                                           ; $45ca: $88
	adc  b                                           ; $45cb: $88
	adc  b                                           ; $45cc: $88
	adc  b                                           ; $45cd: $88
	adc  b                                           ; $45ce: $88
	adc  b                                           ; $45cf: $88
	adc  b                                           ; $45d0: $88
	adc  b                                           ; $45d1: $88
	adc  b                                           ; $45d2: $88
	adc  b                                           ; $45d3: $88
	adc  b                                           ; $45d4: $88
	adc  b                                           ; $45d5: $88
	adc  b                                           ; $45d6: $88
	adc  b                                           ; $45d7: $88
	adc  b                                           ; $45d8: $88
	adc  b                                           ; $45d9: $88
	adc  b                                           ; $45da: $88
	adc  b                                           ; $45db: $88
	adc  b                                           ; $45dc: $88
	adc  b                                           ; $45dd: $88
	adc  b                                           ; $45de: $88
	adc  b                                           ; $45df: $88
	adc  b                                           ; $45e0: $88
	adc  b                                           ; $45e1: $88
	adc  b                                           ; $45e2: $88
	adc  b                                           ; $45e3: $88
	adc  b                                           ; $45e4: $88
	adc  b                                           ; $45e5: $88
	adc  b                                           ; $45e6: $88
	adc  b                                           ; $45e7: $88
	adc  b                                           ; $45e8: $88
	adc  b                                           ; $45e9: $88
	adc  b                                           ; $45ea: $88
	adc  b                                           ; $45eb: $88
	adc  b                                           ; $45ec: $88
	adc  b                                           ; $45ed: $88
	adc  b                                           ; $45ee: $88
	adc  b                                           ; $45ef: $88
	adc  b                                           ; $45f0: $88
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
	adc  b                                           ; $4603: $88
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

Call_0b2_4611:
	adc  b                                           ; $4611: $88
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
	sbc  b                                           ; $46c2: $98
	adc  b                                           ; $46c3: $88
	adc  b                                           ; $46c4: $88
	sbc  b                                           ; $46c5: $98
	adc  b                                           ; $46c6: $88
	adc  b                                           ; $46c7: $88
	add  a                                           ; $46c8: $87
	adc  b                                           ; $46c9: $88
	adc  b                                           ; $46ca: $88
	adc  b                                           ; $46cb: $88
	adc  b                                           ; $46cc: $88
	adc  b                                           ; $46cd: $88
	sbc  b                                           ; $46ce: $98
	adc  b                                           ; $46cf: $88
	adc  b                                           ; $46d0: $88
	adc  b                                           ; $46d1: $88
	adc  b                                           ; $46d2: $88
	adc  b                                           ; $46d3: $88
	adc  b                                           ; $46d4: $88
	adc  c                                           ; $46d5: $89
	adc  b                                           ; $46d6: $88
	add  a                                           ; $46d7: $87
	ld   [hl], a                                     ; $46d8: $77
	halt                                             ; $46d9: $76
	ld   a, b                                        ; $46da: $78
	ld   [hl], a                                     ; $46db: $77
	ld   [hl], a                                     ; $46dc: $77
	adc  b                                           ; $46dd: $88
	adc  b                                           ; $46de: $88
	sbc  d                                           ; $46df: $9a
	adc  b                                           ; $46e0: $88
	adc  c                                           ; $46e1: $89
	adc  c                                           ; $46e2: $89
	sbc  c                                           ; $46e3: $99
	sbc  c                                           ; $46e4: $99
	sbc  c                                           ; $46e5: $99
	adc  b                                           ; $46e6: $88
	ld   [hl], a                                     ; $46e7: $77
	ld   h, l                                        ; $46e8: $65
	ld   b, h                                        ; $46e9: $44
	ld   l, b                                        ; $46ea: $68
	halt                                             ; $46eb: $76
	adc  c                                           ; $46ec: $89
	xor  e                                           ; $46ed: $ab
	sbc  d                                           ; $46ee: $9a
	xor  h                                           ; $46ef: $ac
	sub  a                                           ; $46f0: $97
	ld   [hl], a                                     ; $46f1: $77
	halt                                             ; $46f2: $76
	ld   d, l                                        ; $46f3: $55
	ld   a, c                                        ; $46f4: $79
	cp   e                                           ; $46f5: $bb
	cp   l                                           ; $46f6: $bd
	call z, Call_0b2_64a7                            ; $46f7: $cc $a7 $64
	ld   de, $6513                                   ; $46fa: $11 $13 $65
	ld   l, d                                        ; $46fd: $6a
	rst  JumpTable                                         ; $46fe: $df
	db   $fd                                         ; $46ff: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4700: $cf
	ret  c                                           ; $4701: $d8

	ld   d, e                                        ; $4702: $53
	ld   [hl+], a                                    ; $4703: $22
	inc  hl                                          ; $4704: $23
	ld   c, d                                        ; $4705: $4a
	rst  $38                                         ; $4706: $ff
	rst  $38                                         ; $4707: $ff
	db   $fd                                         ; $4708: $fd
	ret  c                                           ; $4709: $d8

	ld   sp, $1111                                   ; $470a: $31 $11 $11
	ld   d, l                                        ; $470d: $55
	sbc  a                                           ; $470e: $9f
	rst  $38                                         ; $470f: $ff
	rst  $38                                         ; $4710: $ff
	sbc  $b2                                         ; $4711: $de $b2
	ld   de, $1411                                   ; $4713: $11 $11 $14
	ld   a, a                                        ; $4716: $7f
	rst  $38                                         ; $4717: $ff
	rst  $38                                         ; $4718: $ff
	db   $eb                                         ; $4719: $eb
	sub  d                                           ; $471a: $92
	ld   de, $1611                                   ; $471b: $11 $11 $16
	jp   c, $ffff                                    ; $471e: $da $ff $ff

	ld   hl, sp+$57                                  ; $4721: $f8 $57
	ld   de, $1311                                   ; $4723: $11 $11 $13
	cp   l                                           ; $4726: $bd
	rst  $38                                         ; $4727: $ff
	rst  $38                                         ; $4728: $ff
	db   $fc                                         ; $4729: $fc
	ld   [hl], h                                     ; $472a: $74
	ld   de, $1111                                   ; $472b: $11 $11 $11
	xor  a                                           ; $472e: $af
	rst  $38                                         ; $472f: $ff
	rst  $38                                         ; $4730: $ff
	rst  $38                                         ; $4731: $ff
	ld   de, $1111                                   ; $4732: $11 $11 $11
	ld   [de], a                                     ; $4735: $12
	cp   a                                           ; $4736: $bf
	rst  $38                                         ; $4737: $ff
	rst  $38                                         ; $4738: $ff
	db   $fd                                         ; $4739: $fd
	ld   [hl], h                                     ; $473a: $74
	ld   de, $1111                                   ; $473b: $11 $11 $11
	rra                                              ; $473e: $1f
	rst  $38                                         ; $473f: $ff
	rst  $38                                         ; $4740: $ff
	rst  $38                                         ; $4741: $ff
	or   c                                           ; $4742: $b1
	ld   de, $1211                                   ; $4743: $11 $11 $12
	sbc  a                                           ; $4746: $9f
	rst  $38                                         ; $4747: $ff
	rst  $38                                         ; $4748: $ff
	rst  $38                                         ; $4749: $ff
	sub  h                                           ; $474a: $94
	ld   hl, $1111                                   ; $474b: $21 $11 $11
	ld   de, $ffff                                   ; $474e: $11 $ff $ff
	rst  $38                                         ; $4751: $ff
	or   $11                                         ; $4752: $f6 $11
	ld   de, $8d11                                   ; $4754: $11 $11 $8d
	rst  $38                                         ; $4757: $ff
	rst  $38                                         ; $4758: $ff
	rst  $38                                         ; $4759: $ff
	ret                                              ; $475a: $c9


	ld   b, d                                        ; $475b: $42
	ld   de, $1111                                   ; $475c: $11 $11 $11
	rra                                              ; $475f: $1f
	rst  $38                                         ; $4760: $ff
	rst  $38                                         ; $4761: $ff
	cp   $61                                         ; $4762: $fe $61
	ld   de, $2931                                   ; $4764: $11 $31 $29
	rst  JumpTable                                         ; $4767: $df
	rst  $38                                         ; $4768: $ff
	rst  $38                                         ; $4769: $ff
	xor  $83                                         ; $476a: $ee $83
	ld   sp, $1121                                   ; $476c: $31 $21 $11
	ld   de, $ffff                                   ; $476f: $11 $ff $ff
	rst  $38                                         ; $4772: $ff
	db   $e4                                         ; $4773: $e4
	ld   de, $1325                                   ; $4774: $11 $25 $13
	xor  h                                           ; $4777: $ac
	rst  $38                                         ; $4778: $ff
	rst  $38                                         ; $4779: $ff
	rst  $28                                         ; $477a: $ef
	push de                                          ; $477b: $d5
	ld   b, c                                        ; $477c: $41
	inc  de                                          ; $477d: $13
	ld   de, $df11                                   ; $477e: $11 $11 $df
	rst  $38                                         ; $4781: $ff
	rst  $38                                         ; $4782: $ff
	db   $eb                                         ; $4783: $eb
	ld   de, $6115                                   ; $4784: $11 $15 $61
	ld   a, h                                        ; $4787: $7c
	rst  $28                                         ; $4788: $ef
	rst  $38                                         ; $4789: $ff
	rst  JumpTable                                         ; $478a: $df
	rst  $30                                         ; $478b: $f7
	ld   d, d                                        ; $478c: $52
	ld   de, $1111                                   ; $478d: $11 $11 $11
	sbc  a                                           ; $4790: $9f
	rst  $38                                         ; $4791: $ff
	rst  $38                                         ; $4792: $ff
	db   $fd                                         ; $4793: $fd
	ld   de, $7114                                   ; $4794: $11 $14 $71
	ld   l, e                                        ; $4797: $6b
	rst  $38                                         ; $4798: $ff
	rst  $38                                         ; $4799: $ff
	call Call_0b2_41f9                               ; $479a: $cd $f9 $41
	ld   [de], a                                     ; $479d: $12
	ld   de, $4f11                                   ; $479e: $11 $11 $4f
	rst  $38                                         ; $47a1: $ff
	rst  $38                                         ; $47a2: $ff
	cp   $11                                         ; $47a3: $fe $11
	ld   de, $2a92                                   ; $47a5: $11 $92 $2a
	rst  JumpTable                                         ; $47a8: $df
	rst  $38                                         ; $47a9: $ff
	rst  JumpTable                                         ; $47aa: $df
	ei                                               ; $47ab: $fb
	ld   b, c                                        ; $47ac: $41
	ld   de, $1111                                   ; $47ad: $11 $11 $11
	ld   a, a                                        ; $47b0: $7f
	rst  $38                                         ; $47b1: $ff
	rst  $38                                         ; $47b2: $ff
	rst  $38                                         ; $47b3: $ff
	ld   de, $8112                                   ; $47b4: $11 $12 $81
	ld   a, [hl-]                                    ; $47b7: $3a
	rst  $28                                         ; $47b8: $ef
	rst  $38                                         ; $47b9: $ff
	rst  JumpTable                                         ; $47ba: $df
	ld   a, [$1141]                                  ; $47bb: $fa $41 $11
	ld   de, rAUD1LEN                                   ; $47be: $11 $11 $ff
	rst  $38                                         ; $47c1: $ff
	rst  $38                                         ; $47c2: $ff
	cp   $11                                         ; $47c3: $fe $11
	inc  d                                           ; $47c5: $14
	ld   h, c                                        ; $47c6: $61
	jr   z, @+$01                                    ; $47c7: $28 $ff

	rst  $38                                         ; $47c9: $ff
	rst  $38                                         ; $47ca: $ff
	ld   a, [$1111]                                  ; $47cb: $fa $11 $11
	ld   de, rAUD1LEN                                   ; $47ce: $11 $11 $ff
	rst  $38                                         ; $47d1: $ff
	rst  $38                                         ; $47d2: $ff
	or   $11                                         ; $47d3: $f6 $11
	ld   d, $11                                      ; $47d5: $16 $11
	add  hl, sp                                      ; $47d7: $39
	rst  $38                                         ; $47d8: $ff
	rst  $38                                         ; $47d9: $ff
	rst  $38                                         ; $47da: $ff
	di                                               ; $47db: $f3
	ld   de, $1111                                   ; $47dc: $11 $11 $11
	ld   e, $ff                                      ; $47df: $1e $ff
	rst  $38                                         ; $47e1: $ff
	rst  $38                                         ; $47e2: $ff
	pop  af                                          ; $47e3: $f1
	ld   de, $1121                                   ; $47e4: $11 $21 $11
	ccf                                              ; $47e7: $3f
	rst  $38                                         ; $47e8: $ff
	rst  $38                                         ; $47e9: $ff
	rst  $38                                         ; $47ea: $ff
	sub  c                                           ; $47eb: $91
	ld   de, $1111                                   ; $47ec: $11 $11 $11
	rra                                              ; $47ef: $1f
	rst  $38                                         ; $47f0: $ff
	rst  $38                                         ; $47f1: $ff
	rst  $38                                         ; $47f2: $ff
	ld   sp, $1111                                   ; $47f3: $31 $11 $11
	ld   de, $ffaf                                   ; $47f6: $11 $af $ff
	rst  $38                                         ; $47f9: $ff
	rst  $38                                         ; $47fa: $ff
	ld   de, $1111                                   ; $47fb: $11 $11 $11
	ld   de, $ffff                                   ; $47fe: $11 $ff $ff
	rst  $38                                         ; $4801: $ff
	rst  $38                                         ; $4802: $ff
	ld   de, $1112                                   ; $4803: $11 $12 $11
	ld   de, $ffff                                   ; $4806: $11 $ff $ff
	rst  $38                                         ; $4809: $ff
	rst  $30                                         ; $480a: $f7
	ld   de, $1111                                   ; $480b: $11 $11 $11
	ld   de, $cfff                                   ; $480e: $11 $ff $cf
	rst  $38                                         ; $4811: $ff
	ldh  a, [c]                                      ; $4812: $f2
	ld   de, $1151                                   ; $4813: $11 $51 $11
	rla                                              ; $4816: $17
	rst  $38                                         ; $4817: $ff
	rst  $38                                         ; $4818: $ff
	rst  $38                                         ; $4819: $ff
	ldh  a, [c]                                      ; $481a: $f2
	inc  de                                          ; $481b: $13
	ld   hl, $1c11                                   ; $481c: $21 $11 $1c
	db   $f4                                         ; $481f: $f4
	rst  $38                                         ; $4820: $ff
	rst  $38                                         ; $4821: $ff
	pop  af                                          ; $4822: $f1
	add  hl, de                                      ; $4823: $19
	ld   [hl], c                                     ; $4824: $71
	ld   de, $f71c                                   ; $4825: $11 $1c $f7
	rst  $38                                         ; $4828: $ff
	rst  $38                                         ; $4829: $ff
	rst  ToBoot                                         ; $482a: $c7
	sbc  c                                           ; $482b: $99
	ld   de, $1e11                                   ; $482c: $11 $11 $1e
	pop  af                                          ; $482f: $f1
	rst  $38                                         ; $4830: $ff
	rst  $38                                         ; $4831: $ff
	rst  $30                                         ; $4832: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4833: $cf
	ld   d, c                                        ; $4834: $51
	ld   de, $3119                                   ; $4835: $11 $19 $31
	rst  $38                                         ; $4838: $ff
	rst  $38                                         ; $4839: $ff
	rst  $28                                         ; $483a: $ef
	db   $fd                                         ; $483b: $fd
	ld   de, $1211                                   ; $483c: $11 $11 $12
	ld   [hl], c                                     ; $483f: $71
	rst  $38                                         ; $4840: $ff
	rst  $38                                         ; $4841: $ff
	rst  $38                                         ; $4842: $ff
	rst  $38                                         ; $4843: $ff
	sub  c                                           ; $4844: $91
	ld   de, $1111                                   ; $4845: $11 $11 $11
	rst  $38                                         ; $4848: $ff
	rst  $38                                         ; $4849: $ff
	rst  $38                                         ; $484a: $ff
	rst  $38                                         ; $484b: $ff
	ld   b, c                                        ; $484c: $41
	ld   de, $3111                                   ; $484d: $11 $11 $31
	ccf                                              ; $4850: $3f
	rst  $28                                         ; $4851: $ef
	rst  $38                                         ; $4852: $ff
	rst  $38                                         ; $4853: $ff
	di                                               ; $4854: $f3
	ld   b, l                                        ; $4855: $45
	ld   de, $4c11                                   ; $4856: $11 $11 $4c
	xor  e                                           ; $4859: $ab
	db   $ed                                         ; $485a: $ed
	rst  $38                                         ; $485b: $ff
	and  d                                           ; $485c: $a2
	ld   b, c                                        ; $485d: $41
	ld   de, $1a41                                   ; $485e: $11 $41 $1a
	ld   e, e                                        ; $4861: $5b
	db   $ec                                         ; $4862: $ec
	rst  $38                                         ; $4863: $ff
	ld   a, [$a9ce]                                  ; $4864: $fa $ce $a9
	ld   [hl], h                                     ; $4867: $74
	ld   l, c                                        ; $4868: $69
	ld   d, h                                        ; $4869: $54
	ld   b, h                                        ; $486a: $44
	ld   d, l                                        ; $486b: $55
	ld   hl, $cb26                                   ; $486c: $21 $26 $cb
	ld   l, b                                        ; $486f: $68
	cp   l                                           ; $4870: $bd
	ret                                              ; $4871: $c9


	ld   a, c                                        ; $4872: $79
	jp   z, Jump_0b2_7966                            ; $4873: $ca $66 $79

	ret                                              ; $4876: $c9


	sbc  h                                           ; $4877: $9c
	cp   $b9                                         ; $4878: $fe $b9
	adc  b                                           ; $487a: $88
	ld   h, d                                        ; $487b: $62
	ld   de, $7511                                   ; $487c: $11 $11 $75
	rla                                              ; $487f: $17
	call $beec                                       ; $4880: $cd $ec $be
	cp   $8a                                         ; $4883: $fe $8a
	sbc  c                                           ; $4885: $99
	or   a                                           ; $4886: $b7
	ld   e, c                                        ; $4887: $59
	jp   c, Jump_0b2_6787                            ; $4888: $da $87 $67

	ld   [hl], e                                     ; $488b: $73
	ld   de, $8613                                   ; $488c: $11 $13 $86
	ld   [hl], $99                                   ; $488f: $36 $99
	sbc  d                                           ; $4891: $9a
	sbc  d                                           ; $4892: $9a
	db   $ed                                         ; $4893: $ed
	sbc  e                                           ; $4894: $9b
	cp   h                                           ; $4895: $bc
	db   $ed                                         ; $4896: $ed
	cp   h                                           ; $4897: $bc
	db   $eb                                         ; $4898: $eb
	sbc  b                                           ; $4899: $98
	ld   h, h                                        ; $489a: $64
	ld   b, d                                        ; $489b: $42
	ld   de, $6712                                   ; $489c: $11 $12 $67
	ld   d, [hl]                                     ; $489f: $56
	sbc  d                                           ; $48a0: $9a
	cp   d                                           ; $48a1: $ba
	adc  c                                           ; $48a2: $89
	call z, $9a88                                    ; $48a3: $cc $88 $9a
	call $cccb                                       ; $48a6: $cd $cb $cc
	xor  b                                           ; $48a9: $a8
	ld   h, l                                        ; $48aa: $65
	ld   h, l                                        ; $48ab: $65
	ld   b, h                                        ; $48ac: $44
	ld   d, [hl]                                     ; $48ad: $56
	ld   a, c                                        ; $48ae: $79
	sbc  b                                           ; $48af: $98
	ld   [hl], a                                     ; $48b0: $77
	ld   [hl], a                                     ; $48b1: $77
	ld   h, l                                        ; $48b2: $65
	ld   d, l                                        ; $48b3: $55
	ld   d, l                                        ; $48b4: $55
	ld   d, [hl]                                     ; $48b5: $56
	adc  d                                           ; $48b6: $8a
	xor  e                                           ; $48b7: $ab
	cp   l                                           ; $48b8: $bd
	res  5, c                                        ; $48b9: $cb $a9
	sbc  d                                           ; $48bb: $9a
	sbc  c                                           ; $48bc: $99
	sbc  d                                           ; $48bd: $9a
	xor  d                                           ; $48be: $aa
	cp   d                                           ; $48bf: $ba
	xor  c                                           ; $48c0: $a9
	ld   [hl], l                                     ; $48c1: $75
	ld   b, e                                        ; $48c2: $43
	ld   [hl-], a                                    ; $48c3: $32
	ld   [hl+], a                                    ; $48c4: $22
	dec  [hl]                                        ; $48c5: $35
	ld   h, a                                        ; $48c6: $67
	adc  c                                           ; $48c7: $89
	xor  e                                           ; $48c8: $ab
	xor  d                                           ; $48c9: $aa
	sbc  b                                           ; $48ca: $98
	sbc  c                                           ; $48cb: $99
	ld   [hl], a                                     ; $48cc: $77
	sbc  d                                           ; $48cd: $9a
	cp   e                                           ; $48ce: $bb
	cp   h                                           ; $48cf: $bc
	db   $dd                                         ; $48d0: $dd
	jp   z, Jump_0b2_6487                            ; $48d1: $ca $87 $64

	ld   hl, $4423                                   ; $48d4: $21 $23 $44
	ld   d, [hl]                                     ; $48d7: $56
	adc  c                                           ; $48d8: $89
	sbc  c                                           ; $48d9: $99
	adc  c                                           ; $48da: $89
	sbc  b                                           ; $48db: $98
	ld   [hl], a                                     ; $48dc: $77
	ld   a, b                                        ; $48dd: $78
	adc  c                                           ; $48de: $89
	xor  d                                           ; $48df: $aa
	call $cccc                                       ; $48e0: $cd $cc $cc
	jp   z, Jump_0b2_7688                            ; $48e3: $ca $88 $76

	ld   d, h                                        ; $48e6: $54
	ld   b, h                                        ; $48e7: $44
	ld   d, h                                        ; $48e8: $54
	ld   d, l                                        ; $48e9: $55
	ld   h, a                                        ; $48ea: $67
	ld   [hl], a                                     ; $48eb: $77
	ld   a, b                                        ; $48ec: $78
	adc  b                                           ; $48ed: $88
	adc  b                                           ; $48ee: $88
	sbc  c                                           ; $48ef: $99
	sbc  b                                           ; $48f0: $98
	adc  d                                           ; $48f1: $8a
	cp   e                                           ; $48f2: $bb
	cp   e                                           ; $48f3: $bb
	cp   e                                           ; $48f4: $bb
	res  7, e                                        ; $48f5: $cb $bb
	xor  c                                           ; $48f7: $a9
	ld   [hl], l                                     ; $48f8: $75
	ld   b, h                                        ; $48f9: $44
	ld   b, h                                        ; $48fa: $44
	inc  sp                                          ; $48fb: $33
	ld   b, [hl]                                     ; $48fc: $46
	ld   h, [hl]                                     ; $48fd: $66
	ld   [hl], a                                     ; $48fe: $77
	sbc  c                                           ; $48ff: $99
	sbc  b                                           ; $4900: $98
	adc  b                                           ; $4901: $88
	adc  c                                           ; $4902: $89
	ld   [hl], a                                     ; $4903: $77
	adc  d                                           ; $4904: $8a
	cp   e                                           ; $4905: $bb
	xor  h                                           ; $4906: $ac
	call c, $aacb                                    ; $4907: $dc $cb $aa
	xor  b                                           ; $490a: $a8
	ld   h, h                                        ; $490b: $64
	ld   b, h                                        ; $490c: $44
	ld   b, e                                        ; $490d: $43
	dec  [hl]                                        ; $490e: $35
	ld   h, a                                        ; $490f: $67
	halt                                             ; $4910: $76
	ld   a, c                                        ; $4911: $79
	adc  c                                           ; $4912: $89
	ld   [hl], a                                     ; $4913: $77
	ld   a, b                                        ; $4914: $78
	sub  a                                           ; $4915: $97
	ld   a, b                                        ; $4916: $78
	sbc  d                                           ; $4917: $9a
	cp   d                                           ; $4918: $ba
	cp   h                                           ; $4919: $bc
	call z, $aaba                                    ; $491a: $cc $ba $aa
	sub  a                                           ; $491d: $97
	ld   h, [hl]                                     ; $491e: $66
	ld   d, l                                        ; $491f: $55
	ld   b, h                                        ; $4920: $44
	ld   b, l                                        ; $4921: $45
	ld   h, [hl]                                     ; $4922: $66
	ld   h, [hl]                                     ; $4923: $66
	ld   a, b                                        ; $4924: $78
	adc  b                                           ; $4925: $88
	ld   [hl], a                                     ; $4926: $77
	adc  b                                           ; $4927: $88
	add  a                                           ; $4928: $87
	ld   a, b                                        ; $4929: $78
	sbc  c                                           ; $492a: $99
	xor  d                                           ; $492b: $aa
	xor  h                                           ; $492c: $ac
	res  7, e                                        ; $492d: $cb $bb
	cp   e                                           ; $492f: $bb
	xor  c                                           ; $4930: $a9
	add  a                                           ; $4931: $87
	ld   h, l                                        ; $4932: $65
	ld   b, h                                        ; $4933: $44
	ld   b, l                                        ; $4934: $45
	ld   d, [hl]                                     ; $4935: $56
	ld   h, [hl]                                     ; $4936: $66
	ld   [hl], a                                     ; $4937: $77
	ld   [hl], a                                     ; $4938: $77
	ld   [hl], a                                     ; $4939: $77
	ld   [hl], a                                     ; $493a: $77
	ld   a, b                                        ; $493b: $78
	adc  b                                           ; $493c: $88
	sbc  c                                           ; $493d: $99
	sbc  d                                           ; $493e: $9a
	xor  e                                           ; $493f: $ab
	cp   h                                           ; $4940: $bc
	cp   e                                           ; $4941: $bb
	cp   d                                           ; $4942: $ba
	xor  d                                           ; $4943: $aa
	sbc  b                                           ; $4944: $98
	halt                                             ; $4945: $76
	ld   h, l                                        ; $4946: $65
	ld   d, h                                        ; $4947: $54
	ld   b, h                                        ; $4948: $44
	ld   d, l                                        ; $4949: $55
	ld   d, [hl]                                     ; $494a: $56
	ld   h, a                                        ; $494b: $67
	ld   a, b                                        ; $494c: $78
	adc  b                                           ; $494d: $88
	sbc  b                                           ; $494e: $98
	adc  c                                           ; $494f: $89
	adc  b                                           ; $4950: $88
	sbc  c                                           ; $4951: $99
	sbc  c                                           ; $4952: $99
	sbc  e                                           ; $4953: $9b
	call z, $cbcb                                    ; $4954: $cc $cb $cb
	cp   d                                           ; $4957: $ba
	sbc  b                                           ; $4958: $98
	halt                                             ; $4959: $76
	ld   d, h                                        ; $495a: $54
	ld   b, e                                        ; $495b: $43
	ld   b, l                                        ; $495c: $45
	ld   d, [hl]                                     ; $495d: $56
	ld   h, a                                        ; $495e: $67
	ld   a, b                                        ; $495f: $78
	add  a                                           ; $4960: $87
	ld   [hl], a                                     ; $4961: $77
	ld   [hl], a                                     ; $4962: $77
	ld   [hl], a                                     ; $4963: $77
	ld   a, b                                        ; $4964: $78
	sbc  c                                           ; $4965: $99
	xor  e                                           ; $4966: $ab
	cp   h                                           ; $4967: $bc
	call z, $bbcc                                    ; $4968: $cc $cc $bb
	xor  d                                           ; $496b: $aa
	sbc  b                                           ; $496c: $98
	halt                                             ; $496d: $76
	ld   h, l                                        ; $496e: $65
	ld   d, h                                        ; $496f: $54
	ld   b, l                                        ; $4970: $45
	ld   d, l                                        ; $4971: $55
	ld   d, l                                        ; $4972: $55
	ld   h, [hl]                                     ; $4973: $66
	ld   [hl], a                                     ; $4974: $77
	ld   [hl], a                                     ; $4975: $77
	adc  b                                           ; $4976: $88
	sbc  c                                           ; $4977: $99
	adc  c                                           ; $4978: $89
	sbc  d                                           ; $4979: $9a
	sbc  c                                           ; $497a: $99
	cp   e                                           ; $497b: $bb
	cp   e                                           ; $497c: $bb
	call z, $bbbc                                    ; $497d: $cc $bc $bb
	xor  b                                           ; $4980: $a8
	halt                                             ; $4981: $76
	ld   d, l                                        ; $4982: $55
	ld   b, e                                        ; $4983: $43
	inc  sp                                          ; $4984: $33
	ld   b, [hl]                                     ; $4985: $46
	ld   h, l                                        ; $4986: $65
	ld   h, [hl]                                     ; $4987: $66
	ld   a, b                                        ; $4988: $78
	add  a                                           ; $4989: $87
	ld   a, b                                        ; $498a: $78
	sbc  c                                           ; $498b: $99
	adc  b                                           ; $498c: $88
	sbc  d                                           ; $498d: $9a
	cp   e                                           ; $498e: $bb
	cp   e                                           ; $498f: $bb
	rst  JumpTable                                         ; $4990: $df
	ld   [$9999], a                                  ; $4991: $ea $99 $99
	cp   c                                           ; $4994: $b9
	ld   h, [hl]                                     ; $4995: $66
	ld   b, e                                        ; $4996: $43
	inc  sp                                          ; $4997: $33
	ld   sp, $4546                                   ; $4998: $31 $46 $45
	ld   h, a                                        ; $499b: $67
	adc  b                                           ; $499c: $88
	xor  c                                           ; $499d: $a9
	cp   [hl]                                        ; $499e: $be
	db   $ed                                         ; $499f: $ed
	db   $dd                                         ; $49a0: $dd
	set  1, c                                        ; $49a1: $cb $c9
	sbc  d                                           ; $49a3: $9a
	sub  [hl]                                        ; $49a4: $96
	ld   [hl-], a                                    ; $49a5: $32
	dec  d                                           ; $49a6: $15
	sub  c                                           ; $49a7: $91
	inc  de                                          ; $49a8: $13
	ld   d, h                                        ; $49a9: $54
	ld   b, [hl]                                     ; $49aa: $46
	ld   l, c                                        ; $49ab: $69

jr_0b2_49ac:
	db   $fd                                         ; $49ac: $fd
	xor  [hl]                                        ; $49ad: $ae
	cp   $bd                                         ; $49ae: $fe $bd
	cp   d                                           ; $49b0: $ba
	db   $ec                                         ; $49b1: $ec
	halt                                             ; $49b2: $76
	and  a                                           ; $49b3: $a7
	ld   d, [hl]                                     ; $49b4: $56
	ld   b, h                                        ; $49b5: $44
	ld   sp, $6711                                   ; $49b6: $31 $11 $67
	ld   de, $cc79                                   ; $49b9: $11 $79 $cc
	cp   [hl]                                        ; $49bc: $be

jr_0b2_49bd:
	rst  $38                                         ; $49bd: $ff
	call c, $b9fe                                    ; $49be: $dc $fe $b9

jr_0b2_49c1:
	ld   d, d                                        ; $49c1: $52
	sbc  e                                           ; $49c2: $9b
	ld   b, e                                        ; $49c3: $43
	ld   l, c                                        ; $49c4: $69
	adc  b                                           ; $49c5: $88
	ld   d, h                                        ; $49c6: $54
	ld   d, d                                        ; $49c7: $52
	ld   de, $1167                                   ; $49c8: $11 $67 $11
	ld   a, c                                        ; $49cb: $79
	xor  l                                           ; $49cc: $ad
	call $ecff                                       ; $49cd: $cd $ff $ec
	cp   $b8                                         ; $49d0: $fe $b8
	ld   b, e                                        ; $49d2: $43
	sbc  e                                           ; $49d3: $9b
	inc  sp                                          ; $49d4: $33
	sbc  h                                           ; $49d5: $9c
	add  a                                           ; $49d6: $87
	ld   d, d                                        ; $49d7: $52
	ld   sp, $8511                                   ; $49d8: $31 $11 $85
	inc  d                                           ; $49db: $14
	sbc  c                                           ; $49dc: $99
	adc  $df                                         ; $49dd: $ce $df
	rst  $38                                         ; $49df: $ff
	call z, Call_0b2_75fc                            ; $49e0: $cc $fc $75
	ld   b, [hl]                                     ; $49e3: $46
	or   a                                           ; $49e4: $b7
	jr   c, jr_0b2_49c1                              ; $49e5: $38 $da

	halt                                             ; $49e7: $76
	ld   b, c                                        ; $49e8: $41
	ld   de, $6116                                   ; $49e9: $11 $16 $61
	add  hl, de                                      ; $49ec: $19
	cp   e                                           ; $49ed: $bb
	rst  $28                                         ; $49ee: $ef
	rst  $38                                         ; $49ef: $ff
	db   $fc                                         ; $49f0: $fc
	cp   a                                           ; $49f1: $bf
	sub  $34                                         ; $49f2: $d6 $34
	ld   a, b                                        ; $49f4: $78
	ld   h, h                                        ; $49f5: $64
	adc  l                                           ; $49f6: $8d
	or   a                                           ; $49f7: $b7
	ld   h, h                                        ; $49f8: $64
	ld   hl, $6611                                   ; $49f9: $21 $11 $66
	ld   de, $cd9b                                   ; $49fc: $11 $9b $cd
	rst  $38                                         ; $49ff: $ff
	rst  $38                                         ; $4a00: $ff
	cp   e                                           ; $4a01: $bb
	db   $fd                                         ; $4a02: $fd
	ld   d, d                                        ; $4a03: $52
	ld   e, b                                        ; $4a04: $58
	ld   [hl], l                                     ; $4a05: $75
	ld   e, d                                        ; $4a06: $5a
	jp   c, Jump_0b2_4166                            ; $4a07: $da $66 $41

	ld   de, $3118                                   ; $4a0a: $11 $18 $31
	ld   e, d                                        ; $4a0d: $5a
	call z, $ffef                                    ; $4a0e: $cc $ef $ff
	ld   a, [$a3df]                                  ; $4a11: $fa $df $a3
	jr   c, jr_0b2_49ac                              ; $4a14: $38 $96

	ld   d, a                                        ; $4a16: $57
	call Call_0b2_4175                               ; $4a17: $cd $75 $41
	ld   de, $6117                                   ; $4a1a: $11 $17 $61
	ld   e, d                                        ; $4a1d: $5a
	call z, $ffdf                                    ; $4a1e: $cc $df $ff
	ld   a, [$b3cf]                                  ; $4a21: $fa $cf $b3
	jr   c, jr_0b2_49bd                              ; $4a24: $38 $97

	ld   h, a                                        ; $4a26: $67
	xor  l                                           ; $4a27: $ad
	add  h                                           ; $4a28: $84
	ld   sp, $1711                                   ; $4a29: $31 $11 $17
	ld   sp, $cd8b                                   ; $4a2c: $31 $8b $cd
	rst  $28                                         ; $4a2f: $ef
	rst  $38                                         ; $4a30: $ff
	jp   hl                                          ; $4a31: $e9


	call c, Call_0b2_4a82                            ; $4a32: $dc $82 $4a
	add  a                                           ; $4a35: $87
	ld   l, b                                        ; $4a36: $68
	jp   z, $1162                                    ; $4a37: $ca $62 $11

	ld   de, $1865                                   ; $4a3a: $11 $65 $18
	set  1, [hl]                                     ; $4a3d: $cb $ce
	rst  $38                                         ; $4a3f: $ff
	rst  $38                                         ; $4a40: $ff
	sbc  h                                           ; $4a41: $9c
	rst  $10                                         ; $4a42: $d7
	inc  h                                           ; $4a43: $24
	sbc  b                                           ; $4a44: $98
	add  a                                           ; $4a45: $87
	ld   a, e                                        ; $4a46: $7b
	or   l                                           ; $4a47: $b5
	ld   de, $1811                                   ; $4a48: $11 $11 $18
	ld   hl, $bdcd                                   ; $4a4b: $21 $cd $bd
	rst  $38                                         ; $4a4e: $ff
	rst  $38                                         ; $4a4f: $ff
	ret  z                                           ; $4a50: $c8

	db   $ec                                         ; $4a51: $ec
	ld   d, c                                        ; $4a52: $51
	ld   l, c                                        ; $4a53: $69
	adc  b                                           ; $4a54: $88
	ld   a, b                                        ; $4a55: $78
	cp   d                                           ; $4a56: $ba
	ld   hl, $1911                                   ; $4a57: $21 $11 $19
	ld   d, c                                        ; $4a5a: $51
	ld   a, a                                        ; $4a5b: $7f
	cp   e                                           ; $4a5c: $bb
	rst  $28                                         ; $4a5d: $ef
	rst  $38                                         ; $4a5e: $ff
	and  $df                                         ; $4a5f: $e6 $df
	ld   [hl], c                                     ; $4a61: $71
	ld   c, d                                        ; $4a62: $4a
	ld   [hl], a                                     ; $4a63: $77
	ld   d, [hl]                                     ; $4a64: $56
	xor  d                                           ; $4a65: $aa
	ld   sp, $4c11                                   ; $4a66: $31 $11 $4c
	ld   bc, $b8df                                   ; $4a69: $01 $df $b8
	rst  JumpTable                                         ; $4a6c: $df
	rst  $38                                         ; $4a6d: $ff
	sub  [hl]                                        ; $4a6e: $96
	rst  $38                                         ; $4a6f: $ff
	ld   b, c                                        ; $4a70: $41
	ld   a, e                                        ; $4a71: $7b
	add  h                                           ; $4a72: $84
	jr   z, @-$48                                    ; $4a73: $28 $b6

	ld   de, $f512                                   ; $4a75: $11 $12 $f5
	dec  de                                          ; $4a78: $1b
	db   $fd                                         ; $4a79: $fd
	ld   a, c                                        ; $4a7a: $79
	rst  $38                                         ; $4a7b: $ff
	ld   a, [$f83f]                                  ; $4a7c: $fa $3f $f8
	inc  d                                           ; $4a7f: $14
	ret                                              ; $4a80: $c9


	ld   b, c                                        ; $4a81: $41

Call_0b2_4a82:
	add  hl, sp                                      ; $4a82: $39
	ld   h, c                                        ; $4a83: $61
	ld   de, $11af                                   ; $4a84: $11 $af $11
	rst  $38                                         ; $4a87: $ff
	push af                                          ; $4a88: $f5
	ld   a, a                                        ; $4a89: $7f
	rst  $38                                         ; $4a8a: $ff
	inc  d                                           ; $4a8b: $14
	rst  $38                                         ; $4a8c: $ff
	ld   d, c                                        ; $4a8d: $51
	ld   a, l                                        ; $4a8e: $7d
	sub  c                                           ; $4a8f: $91
	inc  d                                           ; $4a90: $14
	add  c                                           ; $4a91: $81
	ld   de, $614f                                   ; $4a92: $11 $4f $61
	rst  $38                                         ; $4a95: $ff
	ei                                               ; $4a96: $fb
	ld   e, a                                        ; $4a97: $5f
	rst  $38                                         ; $4a98: $ff
	ld   b, c                                        ; $4a99: $41
	rst  $38                                         ; $4a9a: $ff
	ld   [hl], c                                     ; $4a9b: $71
	ld   c, b                                        ; $4a9c: $48
	or   d                                           ; $4a9d: $b2
	ld   de, $1141                                   ; $4a9e: $11 $41 $11
	rst  $38                                         ; $4aa1: $ff
	jr   @+$01                                       ; $4aa2: $18 $ff

	ld   a, [$ffbe]                                  ; $4aa4: $fa $be $ff
	inc  l                                           ; $4aa7: $2c
	db   $ec                                         ; $4aa8: $ec
	ld   d, c                                        ; $4aa9: $51
	ld   b, a                                        ; $4aaa: $47
	ld   [hl], c                                     ; $4aab: $71
	ld   de, $1f11                                   ; $4aac: $11 $11 $1f
	pop  hl                                          ; $4aaf: $e1
	rst  $28                                         ; $4ab0: $ef
	rst  $38                                         ; $4ab1: $ff
	db   $dd                                         ; $4ab2: $dd
	rst  $38                                         ; $4ab3: $ff
	pop  de                                          ; $4ab4: $d1
	rst  $28                                         ; $4ab5: $ef
	sub  c                                           ; $4ab6: $91
	inc  d                                           ; $4ab7: $14
	ld   [hl], h                                     ; $4ab8: $74
	ld   de, $1f11                                   ; $4ab9: $11 $11 $1f
	or   c                                           ; $4abc: $b1
	rst  $38                                         ; $4abd: $ff
	rst  $38                                         ; $4abe: $ff
	rst  JumpTable                                         ; $4abf: $df
	rst  $38                                         ; $4ac0: $ff
	ld   [hl], h                                     ; $4ac1: $74
	cp   $71                                         ; $4ac2: $fe $71
	inc  d                                           ; $4ac4: $14
	ld   d, c                                        ; $4ac5: $51
	ld   de, $ef11                                   ; $4ac6: $11 $11 $ef
	inc  e                                           ; $4ac9: $1c
	rst  $38                                         ; $4aca: $ff
	db   $fd                                         ; $4acb: $fd
	rst  $38                                         ; $4acc: $ff
	db   $fd                                         ; $4acd: $fd
	inc  a                                           ; $4ace: $3c
	ld   hl, sp+$11                                  ; $4acf: $f8 $11
	ld   [hl-], a                                    ; $4ad1: $32
	ld   de, $2f11                                   ; $4ad2: $11 $11 $2f
	ld   b, d                                        ; $4ad5: $42
	rst  $38                                         ; $4ad6: $ff
	rst  $38                                         ; $4ad7: $ff
	rst  $38                                         ; $4ad8: $ff
	rst  $38                                         ; $4ad9: $ff
	ld   h, $fb                                      ; $4ada: $26 $fb
	ld   bc, $1112                                   ; $4adc: $01 $12 $11
	ld   de, $336f                                   ; $4adf: $11 $6f $33
	rst  $38                                         ; $4ae2: $ff
	rst  $38                                         ; $4ae3: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ae4: $cf
	rst  $38                                         ; $4ae5: $ff

jr_0b2_4ae6:
	jr   c, jr_0b2_4ae6                              ; $4ae6: $38 $fe

	ld   hl, $1113                                   ; $4ae8: $21 $13 $11
	ld   de, $1cff                                   ; $4aeb: $11 $ff $1c
	rst  $38                                         ; $4aee: $ff
	cp   $ef                                         ; $4aef: $fe $ef
	ld   hl, sp+$7a                                  ; $4af1: $f8 $7a
	ld   [$1111], a                                  ; $4af3: $ea $11 $11
	ld   de, $b71e                                   ; $4af6: $11 $1e $b7
	rst  $38                                         ; $4af9: $ff
	rst  $38                                         ; $4afa: $ff
	rst  $28                                         ; $4afb: $ef
	rst  $38                                         ; $4afc: $ff
	sbc  d                                           ; $4afd: $9a
	xor  l                                           ; $4afe: $ad
	add  c                                           ; $4aff: $81
	ld   de, $1311                                   ; $4b00: $11 $11 $13
	or   [hl]                                        ; $4b03: $b6
	rst  JumpTable                                         ; $4b04: $df
	rst  $38                                         ; $4b05: $ff
	rst  $38                                         ; $4b06: $ff
	rst  $38                                         ; $4b07: $ff
	ret  z                                           ; $4b08: $c8

	sbc  e                                           ; $4b09: $9b
	and  c                                           ; $4b0a: $a1
	ld   de, $1111                                   ; $4b0b: $11 $11 $11
	cp   c                                           ; $4b0e: $b9
	rst  $28                                         ; $4b0f: $ef
	rst  $38                                         ; $4b10: $ff
	rst  $38                                         ; $4b11: $ff
	rst  $38                                         ; $4b12: $ff
	cp   d                                           ; $4b13: $ba
	xor  c                                           ; $4b14: $a9
	sub  e                                           ; $4b15: $93
	ld   de, $1311                                   ; $4b16: $11 $11 $13
	ld   l, b                                        ; $4b19: $68
	rst  $38                                         ; $4b1a: $ff
	rst  $38                                         ; $4b1b: $ff
	rst  $38                                         ; $4b1c: $ff
	rst  $38                                         ; $4b1d: $ff
	sbc  d                                           ; $4b1e: $9a
	ret                                              ; $4b1f: $c9


	ld   h, c                                        ; $4b20: $61
	ld   de, $1711                                   ; $4b21: $11 $11 $17
	ld   a, e                                        ; $4b24: $7b
	rst  $38                                         ; $4b25: $ff
	rst  $38                                         ; $4b26: $ff
	rst  $38                                         ; $4b27: $ff
	db   $fd                                         ; $4b28: $fd
	xor  h                                           ; $4b29: $ac
	xor  c                                           ; $4b2a: $a9
	ld   h, c                                        ; $4b2b: $61
	ld   de, $3411                                   ; $4b2c: $11 $11 $34
	ld   a, h                                        ; $4b2f: $7c
	rst  $28                                         ; $4b30: $ef
	rst  $38                                         ; $4b31: $ff
	rst  $38                                         ; $4b32: $ff
	db   $ec                                         ; $4b33: $ec
	res  5, c                                        ; $4b34: $cb $a9
	ld   de, $1111                                   ; $4b36: $11 $11 $11
	ld   b, [hl]                                     ; $4b39: $46
	xor  e                                           ; $4b3a: $ab
	rst  $28                                         ; $4b3b: $ef
	rst  $38                                         ; $4b3c: $ff
	cp   $bd                                         ; $4b3d: $fe $bd
	res  6, l                                        ; $4b3f: $cb $b5
	ld   de, $1511                                   ; $4b41: $11 $11 $15
	ld   l, c                                        ; $4b44: $69
	cp   h                                           ; $4b45: $bc
	db   $ed                                         ; $4b46: $ed
	rst  JumpTable                                         ; $4b47: $df
	db   $ed                                         ; $4b48: $ed
	set  1, c                                        ; $4b49: $cb $c9
	ld   h, d                                        ; $4b4b: $62
	ld   de, $5511                                   ; $4b4c: $11 $11 $55
	sbc  e                                           ; $4b4f: $9b
	xor  e                                           ; $4b50: $ab
	sbc  $dc                                         ; $4b51: $de $dc
	cp   h                                           ; $4b53: $bc
	call c, $5277                                    ; $4b54: $dc $77 $52
	ld   de, $7716                                   ; $4b57: $11 $16 $77
	xor  h                                           ; $4b5a: $ac
	res  5, e                                        ; $4b5b: $cb $ab
	db   $dd                                         ; $4b5d: $dd
	jp   z, $85aa                                    ; $4b5e: $ca $aa $85

	ld   [hl+], a                                    ; $4b61: $22
	inc  de                                          ; $4b62: $13
	ld   d, [hl]                                     ; $4b63: $56
	ld   a, d                                        ; $4b64: $7a
	cp   b                                           ; $4b65: $b8
	adc  e                                           ; $4b66: $8b
	cp   e                                           ; $4b67: $bb
	xor  d                                           ; $4b68: $aa
	cp   h                                           ; $4b69: $bc
	sbc  b                                           ; $4b6a: $98
	add  [hl]                                        ; $4b6b: $86
	ld   h, e                                        ; $4b6c: $63
	inc  [hl]                                        ; $4b6d: $34
	ld   l, b                                        ; $4b6e: $68
	add  a                                           ; $4b6f: $87
	ld   a, c                                        ; $4b70: $79
	sbc  c                                           ; $4b71: $99
	ld   a, d                                        ; $4b72: $7a
	cp   e                                           ; $4b73: $bb
	sbc  c                                           ; $4b74: $99
	xor  c                                           ; $4b75: $a9
	and  [hl]                                        ; $4b76: $a6
	ld   h, a                                        ; $4b77: $67
	halt                                             ; $4b78: $76
	ld   d, [hl]                                     ; $4b79: $56
	ld   a, c                                        ; $4b7a: $79
	ld   [hl], a                                     ; $4b7b: $77
	ld   a, b                                        ; $4b7c: $78
	sbc  c                                           ; $4b7d: $99
	ld   a, c                                        ; $4b7e: $79
	xor  c                                           ; $4b7f: $a9
	xor  b                                           ; $4b80: $a8
	sbc  c                                           ; $4b81: $99
	adc  d                                           ; $4b82: $8a
	ld   [hl], a                                     ; $4b83: $77
	add  a                                           ; $4b84: $87
	ld   [hl], a                                     ; $4b85: $77
	ld   h, a                                        ; $4b86: $67
	ld   [hl], a                                     ; $4b87: $77
	ld   [hl], a                                     ; $4b88: $77
	sbc  b                                           ; $4b89: $98
	add  a                                           ; $4b8a: $87
	sbc  c                                           ; $4b8b: $99
	xor  e                                           ; $4b8c: $ab
	sbc  b                                           ; $4b8d: $98
	xor  c                                           ; $4b8e: $a9
	adc  b                                           ; $4b8f: $88
	ld   [hl], a                                     ; $4b90: $77
	ld   [hl], a                                     ; $4b91: $77
	ld   [hl], a                                     ; $4b92: $77
	ld   h, a                                        ; $4b93: $67
	ld   [hl], a                                     ; $4b94: $77
	ld   a, b                                        ; $4b95: $78
	adc  b                                           ; $4b96: $88
	sbc  c                                           ; $4b97: $99
	adc  d                                           ; $4b98: $8a
	sbc  c                                           ; $4b99: $99
	sbc  b                                           ; $4b9a: $98
	adc  d                                           ; $4b9b: $8a
	add  a                                           ; $4b9c: $87
	add  a                                           ; $4b9d: $87
	ld   [hl], a                                     ; $4b9e: $77
	halt                                             ; $4b9f: $76
	adc  b                                           ; $4ba0: $88
	ld   a, c                                        ; $4ba1: $79
	add  a                                           ; $4ba2: $87
	sbc  b                                           ; $4ba3: $98
	adc  c                                           ; $4ba4: $89
	adc  c                                           ; $4ba5: $89
	adc  c                                           ; $4ba6: $89
	adc  b                                           ; $4ba7: $88
	sub  a                                           ; $4ba8: $97
	ld   a, b                                        ; $4ba9: $78
	adc  b                                           ; $4baa: $88
	add  a                                           ; $4bab: $87
	add  a                                           ; $4bac: $87
	ld   a, b                                        ; $4bad: $78
	adc  b                                           ; $4bae: $88
	sub  a                                           ; $4baf: $97
	sbc  b                                           ; $4bb0: $98
	adc  b                                           ; $4bb1: $88
	adc  b                                           ; $4bb2: $88
	sub  a                                           ; $4bb3: $97
	adc  c                                           ; $4bb4: $89
	ld   a, c                                        ; $4bb5: $79
	adc  b                                           ; $4bb6: $88
	adc  b                                           ; $4bb7: $88
	sbc  c                                           ; $4bb8: $99
	adc  b                                           ; $4bb9: $88
	add  a                                           ; $4bba: $87
	sbc  c                                           ; $4bbb: $99
	adc  c                                           ; $4bbc: $89
	sbc  b                                           ; $4bbd: $98
	adc  b                                           ; $4bbe: $88
	adc  c                                           ; $4bbf: $89
	add  a                                           ; $4bc0: $87
	adc  b                                           ; $4bc1: $88
	adc  b                                           ; $4bc2: $88
	adc  c                                           ; $4bc3: $89
	adc  b                                           ; $4bc4: $88
	adc  b                                           ; $4bc5: $88
	sbc  c                                           ; $4bc6: $99
	adc  b                                           ; $4bc7: $88
	sbc  b                                           ; $4bc8: $98
	ld   a, b                                        ; $4bc9: $78
	sbc  b                                           ; $4bca: $98
	adc  b                                           ; $4bcb: $88
	adc  b                                           ; $4bcc: $88
	ld   a, b                                        ; $4bcd: $78
	adc  b                                           ; $4bce: $88
	sbc  b                                           ; $4bcf: $98
	adc  c                                           ; $4bd0: $89
	ld   a, b                                        ; $4bd1: $78
	sbc  b                                           ; $4bd2: $98
	add  a                                           ; $4bd3: $87
	adc  c                                           ; $4bd4: $89
	ld   a, c                                        ; $4bd5: $79
	add  a                                           ; $4bd6: $87
	adc  b                                           ; $4bd7: $88
	ld   a, b                                        ; $4bd8: $78
	adc  b                                           ; $4bd9: $88
	ld   a, b                                        ; $4bda: $78
	adc  b                                           ; $4bdb: $88
	adc  c                                           ; $4bdc: $89
	adc  c                                           ; $4bdd: $89
	add  a                                           ; $4bde: $87
	ld   a, b                                        ; $4bdf: $78
	adc  b                                           ; $4be0: $88
	ld   a, b                                        ; $4be1: $78
	ld   a, b                                        ; $4be2: $78
	ld   [hl], a                                     ; $4be3: $77
	adc  b                                           ; $4be4: $88
	adc  b                                           ; $4be5: $88
	sbc  b                                           ; $4be6: $98
	adc  b                                           ; $4be7: $88
	adc  b                                           ; $4be8: $88
	adc  b                                           ; $4be9: $88
	ld   a, b                                        ; $4bea: $78
	adc  b                                           ; $4beb: $88
	ld   [hl], a                                     ; $4bec: $77
	ld   [hl], a                                     ; $4bed: $77
	ld   [hl], a                                     ; $4bee: $77
	ld   a, b                                        ; $4bef: $78
	adc  b                                           ; $4bf0: $88
	adc  b                                           ; $4bf1: $88
	adc  b                                           ; $4bf2: $88
	sbc  c                                           ; $4bf3: $99
	adc  b                                           ; $4bf4: $88
	adc  b                                           ; $4bf5: $88
	adc  b                                           ; $4bf6: $88
	ld   a, b                                        ; $4bf7: $78
	ld   [hl], a                                     ; $4bf8: $77
	adc  b                                           ; $4bf9: $88
	sbc  b                                           ; $4bfa: $98
	ld   [hl], a                                     ; $4bfb: $77
	adc  b                                           ; $4bfc: $88
	adc  b                                           ; $4bfd: $88
	adc  b                                           ; $4bfe: $88
	adc  b                                           ; $4bff: $88
	adc  c                                           ; $4c00: $89
	ld   a, b                                        ; $4c01: $78
	add  a                                           ; $4c02: $87
	adc  b                                           ; $4c03: $88
	add  a                                           ; $4c04: $87
	ld   a, b                                        ; $4c05: $78
	adc  b                                           ; $4c06: $88
	adc  b                                           ; $4c07: $88
	adc  b                                           ; $4c08: $88
	adc  c                                           ; $4c09: $89
	adc  b                                           ; $4c0a: $88
	adc  b                                           ; $4c0b: $88
	adc  b                                           ; $4c0c: $88
	add  a                                           ; $4c0d: $87
	adc  b                                           ; $4c0e: $88
	ld   a, b                                        ; $4c0f: $78
	adc  b                                           ; $4c10: $88
	adc  b                                           ; $4c11: $88
	adc  c                                           ; $4c12: $89
	adc  b                                           ; $4c13: $88
	adc  b                                           ; $4c14: $88
	sbc  c                                           ; $4c15: $99
	adc  b                                           ; $4c16: $88
	add  a                                           ; $4c17: $87
	ld   a, b                                        ; $4c18: $78
	ld   a, b                                        ; $4c19: $78
	adc  b                                           ; $4c1a: $88
	adc  b                                           ; $4c1b: $88
	adc  c                                           ; $4c1c: $89
	adc  c                                           ; $4c1d: $89
	adc  b                                           ; $4c1e: $88
	adc  c                                           ; $4c1f: $89
	adc  b                                           ; $4c20: $88
	adc  b                                           ; $4c21: $88
	adc  b                                           ; $4c22: $88
	ld   a, b                                        ; $4c23: $78
	ld   a, b                                        ; $4c24: $78
	adc  b                                           ; $4c25: $88
	adc  b                                           ; $4c26: $88
	add  a                                           ; $4c27: $87
	sbc  b                                           ; $4c28: $98
	adc  c                                           ; $4c29: $89
	adc  b                                           ; $4c2a: $88
	adc  b                                           ; $4c2b: $88
	sbc  c                                           ; $4c2c: $99
	adc  b                                           ; $4c2d: $88
	ld   a, b                                        ; $4c2e: $78
	add  a                                           ; $4c2f: $87
	adc  b                                           ; $4c30: $88
	adc  b                                           ; $4c31: $88
	adc  b                                           ; $4c32: $88
	adc  b                                           ; $4c33: $88
	adc  b                                           ; $4c34: $88
	adc  c                                           ; $4c35: $89
	adc  b                                           ; $4c36: $88
	adc  b                                           ; $4c37: $88
	ld   a, b                                        ; $4c38: $78
	adc  b                                           ; $4c39: $88
	adc  b                                           ; $4c3a: $88
	add  a                                           ; $4c3b: $87
	adc  b                                           ; $4c3c: $88
	adc  b                                           ; $4c3d: $88
	adc  c                                           ; $4c3e: $89
	adc  c                                           ; $4c3f: $89
	sbc  b                                           ; $4c40: $98
	adc  b                                           ; $4c41: $88
	adc  b                                           ; $4c42: $88
	adc  b                                           ; $4c43: $88
	adc  b                                           ; $4c44: $88
	adc  b                                           ; $4c45: $88
	add  a                                           ; $4c46: $87
	adc  b                                           ; $4c47: $88
	adc  b                                           ; $4c48: $88
	ld   a, b                                        ; $4c49: $78
	sbc  c                                           ; $4c4a: $99
	adc  b                                           ; $4c4b: $88
	adc  b                                           ; $4c4c: $88
	sbc  b                                           ; $4c4d: $98
	ld   a, b                                        ; $4c4e: $78
	adc  b                                           ; $4c4f: $88
	adc  b                                           ; $4c50: $88
	adc  b                                           ; $4c51: $88
	adc  b                                           ; $4c52: $88
	add  a                                           ; $4c53: $87
	adc  c                                           ; $4c54: $89
	adc  c                                           ; $4c55: $89
	sbc  b                                           ; $4c56: $98
	adc  b                                           ; $4c57: $88
	adc  b                                           ; $4c58: $88
	adc  b                                           ; $4c59: $88
	adc  b                                           ; $4c5a: $88
	adc  b                                           ; $4c5b: $88
	ld   a, b                                        ; $4c5c: $78
	add  a                                           ; $4c5d: $87
	adc  b                                           ; $4c5e: $88
	adc  c                                           ; $4c5f: $89
	adc  b                                           ; $4c60: $88
	adc  b                                           ; $4c61: $88
	adc  b                                           ; $4c62: $88
	adc  b                                           ; $4c63: $88
	sbc  b                                           ; $4c64: $98
	adc  b                                           ; $4c65: $88
	adc  b                                           ; $4c66: $88
	ld   a, b                                        ; $4c67: $78
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
	add  a                                           ; $4c72: $87
	adc  b                                           ; $4c73: $88
	adc  b                                           ; $4c74: $88
	adc  b                                           ; $4c75: $88
	adc  b                                           ; $4c76: $88
	adc  b                                           ; $4c77: $88
	sbc  b                                           ; $4c78: $98
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
	sbc  b                                           ; $4c83: $98
	adc  b                                           ; $4c84: $88
	adc  b                                           ; $4c85: $88
	adc  b                                           ; $4c86: $88
	sbc  b                                           ; $4c87: $98
	adc  b                                           ; $4c88: $88
	adc  b                                           ; $4c89: $88
	adc  b                                           ; $4c8a: $88
	adc  b                                           ; $4c8b: $88
	adc  b                                           ; $4c8c: $88
	adc  b                                           ; $4c8d: $88
	adc  b                                           ; $4c8e: $88
	sub  a                                           ; $4c8f: $97
	adc  c                                           ; $4c90: $89
	adc  b                                           ; $4c91: $88
	adc  b                                           ; $4c92: $88
	adc  b                                           ; $4c93: $88
	sbc  b                                           ; $4c94: $98
	adc  b                                           ; $4c95: $88
	adc  b                                           ; $4c96: $88
	adc  b                                           ; $4c97: $88
	sbc  b                                           ; $4c98: $98
	adc  b                                           ; $4c99: $88
	adc  b                                           ; $4c9a: $88
	adc  b                                           ; $4c9b: $88
	adc  b                                           ; $4c9c: $88
	adc  b                                           ; $4c9d: $88
	adc  b                                           ; $4c9e: $88
	adc  b                                           ; $4c9f: $88
	adc  b                                           ; $4ca0: $88
	adc  b                                           ; $4ca1: $88
	sbc  b                                           ; $4ca2: $98
	adc  c                                           ; $4ca3: $89
	adc  b                                           ; $4ca4: $88
	adc  b                                           ; $4ca5: $88
	adc  b                                           ; $4ca6: $88
	add  a                                           ; $4ca7: $87
	adc  c                                           ; $4ca8: $89
	adc  b                                           ; $4ca9: $88
	adc  b                                           ; $4caa: $88
	adc  b                                           ; $4cab: $88
	adc  b                                           ; $4cac: $88
	adc  b                                           ; $4cad: $88
	adc  c                                           ; $4cae: $89
	adc  b                                           ; $4caf: $88
	adc  b                                           ; $4cb0: $88
	adc  b                                           ; $4cb1: $88
	adc  b                                           ; $4cb2: $88
	adc  b                                           ; $4cb3: $88
	adc  b                                           ; $4cb4: $88
	adc  b                                           ; $4cb5: $88
	adc  b                                           ; $4cb6: $88
	adc  b                                           ; $4cb7: $88
	adc  c                                           ; $4cb8: $89
	adc  b                                           ; $4cb9: $88
	adc  b                                           ; $4cba: $88
	adc  b                                           ; $4cbb: $88
	sub  a                                           ; $4cbc: $97
	sbc  b                                           ; $4cbd: $98
	adc  c                                           ; $4cbe: $89
	adc  b                                           ; $4cbf: $88
	adc  b                                           ; $4cc0: $88
	adc  b                                           ; $4cc1: $88
	adc  b                                           ; $4cc2: $88
	sbc  b                                           ; $4cc3: $98
	adc  c                                           ; $4cc4: $89
	adc  c                                           ; $4cc5: $89
	adc  b                                           ; $4cc6: $88
	adc  b                                           ; $4cc7: $88
	adc  b                                           ; $4cc8: $88
	adc  b                                           ; $4cc9: $88
	sub  a                                           ; $4cca: $97
	adc  b                                           ; $4ccb: $88
	adc  b                                           ; $4ccc: $88
	adc  b                                           ; $4ccd: $88
	adc  b                                           ; $4cce: $88
	adc  b                                           ; $4ccf: $88
	adc  c                                           ; $4cd0: $89
	adc  b                                           ; $4cd1: $88
	adc  b                                           ; $4cd2: $88
	adc  b                                           ; $4cd3: $88
	add  a                                           ; $4cd4: $87
	sbc  b                                           ; $4cd5: $98
	adc  b                                           ; $4cd6: $88
	sbc  b                                           ; $4cd7: $98
	adc  b                                           ; $4cd8: $88
	ld   a, b                                        ; $4cd9: $78
	adc  b                                           ; $4cda: $88
	adc  b                                           ; $4cdb: $88
	sbc  b                                           ; $4cdc: $98
	ld   a, c                                        ; $4cdd: $79
	sub  a                                           ; $4cde: $97
	adc  b                                           ; $4cdf: $88
	adc  b                                           ; $4ce0: $88
	adc  b                                           ; $4ce1: $88
	sbc  b                                           ; $4ce2: $98
	adc  b                                           ; $4ce3: $88
	adc  b                                           ; $4ce4: $88
	sbc  b                                           ; $4ce5: $98
	adc  b                                           ; $4ce6: $88
	adc  c                                           ; $4ce7: $89
	adc  b                                           ; $4ce8: $88
	adc  c                                           ; $4ce9: $89
	adc  b                                           ; $4cea: $88
	adc  b                                           ; $4ceb: $88
	adc  b                                           ; $4cec: $88
	adc  b                                           ; $4ced: $88
	adc  b                                           ; $4cee: $88
	adc  b                                           ; $4cef: $88
	adc  b                                           ; $4cf0: $88
	adc  b                                           ; $4cf1: $88
	adc  c                                           ; $4cf2: $89
	adc  b                                           ; $4cf3: $88
	adc  c                                           ; $4cf4: $89
	adc  b                                           ; $4cf5: $88
	adc  b                                           ; $4cf6: $88
	adc  b                                           ; $4cf7: $88
	add  a                                           ; $4cf8: $87
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
	sbc  b                                           ; $4d04: $98
	adc  b                                           ; $4d05: $88
	adc  c                                           ; $4d06: $89
	adc  b                                           ; $4d07: $88
	adc  b                                           ; $4d08: $88
	sbc  b                                           ; $4d09: $98
	adc  b                                           ; $4d0a: $88
	adc  c                                           ; $4d0b: $89
	add  a                                           ; $4d0c: $87
	sbc  b                                           ; $4d0d: $98
	adc  c                                           ; $4d0e: $89
	adc  b                                           ; $4d0f: $88
	adc  b                                           ; $4d10: $88
	adc  b                                           ; $4d11: $88
	add  a                                           ; $4d12: $87
	adc  c                                           ; $4d13: $89
	adc  b                                           ; $4d14: $88
	adc  b                                           ; $4d15: $88
	adc  b                                           ; $4d16: $88
	adc  b                                           ; $4d17: $88
	adc  b                                           ; $4d18: $88
	adc  b                                           ; $4d19: $88
	ld   a, c                                        ; $4d1a: $79
	adc  b                                           ; $4d1b: $88
	sbc  b                                           ; $4d1c: $98
	adc  c                                           ; $4d1d: $89
	adc  b                                           ; $4d1e: $88
	adc  b                                           ; $4d1f: $88
	adc  b                                           ; $4d20: $88
	adc  b                                           ; $4d21: $88
	adc  b                                           ; $4d22: $88
	adc  b                                           ; $4d23: $88
	adc  b                                           ; $4d24: $88
	adc  b                                           ; $4d25: $88
	adc  c                                           ; $4d26: $89
	adc  b                                           ; $4d27: $88
	adc  b                                           ; $4d28: $88
	adc  b                                           ; $4d29: $88
	adc  b                                           ; $4d2a: $88
	add  a                                           ; $4d2b: $87
	adc  b                                           ; $4d2c: $88
	adc  b                                           ; $4d2d: $88
	adc  b                                           ; $4d2e: $88
	adc  b                                           ; $4d2f: $88
	adc  b                                           ; $4d30: $88
	adc  b                                           ; $4d31: $88
	adc  b                                           ; $4d32: $88
	adc  b                                           ; $4d33: $88
	adc  c                                           ; $4d34: $89
	adc  b                                           ; $4d35: $88
	sbc  b                                           ; $4d36: $98
	adc  b                                           ; $4d37: $88
	ld   a, b                                        ; $4d38: $78
	adc  b                                           ; $4d39: $88
	adc  b                                           ; $4d3a: $88
	adc  b                                           ; $4d3b: $88
	adc  b                                           ; $4d3c: $88
	adc  b                                           ; $4d3d: $88
	adc  b                                           ; $4d3e: $88
	sbc  b                                           ; $4d3f: $98
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
	adc  c                                           ; $4d4a: $89
	adc  b                                           ; $4d4b: $88
	adc  b                                           ; $4d4c: $88
	adc  b                                           ; $4d4d: $88
	adc  b                                           ; $4d4e: $88
	add  a                                           ; $4d4f: $87
	adc  b                                           ; $4d50: $88
	adc  b                                           ; $4d51: $88
	adc  b                                           ; $4d52: $88
	sbc  b                                           ; $4d53: $98
	ld   a, b                                        ; $4d54: $78
	adc  b                                           ; $4d55: $88
	adc  b                                           ; $4d56: $88
	adc  b                                           ; $4d57: $88
	ld   a, b                                        ; $4d58: $78
	adc  b                                           ; $4d59: $88
	adc  b                                           ; $4d5a: $88
	adc  b                                           ; $4d5b: $88
	adc  c                                           ; $4d5c: $89
	adc  b                                           ; $4d5d: $88
	adc  c                                           ; $4d5e: $89
	adc  b                                           ; $4d5f: $88
	adc  b                                           ; $4d60: $88
	adc  b                                           ; $4d61: $88
	add  a                                           ; $4d62: $87
	adc  b                                           ; $4d63: $88
	sbc  b                                           ; $4d64: $98
	ld   a, b                                        ; $4d65: $78
	adc  c                                           ; $4d66: $89
	adc  b                                           ; $4d67: $88
	adc  c                                           ; $4d68: $89
	sub  a                                           ; $4d69: $97
	adc  b                                           ; $4d6a: $88
	adc  b                                           ; $4d6b: $88
	sbc  b                                           ; $4d6c: $98
	adc  b                                           ; $4d6d: $88
	ld   [hl], a                                     ; $4d6e: $77
	adc  b                                           ; $4d6f: $88
	adc  b                                           ; $4d70: $88
	sbc  b                                           ; $4d71: $98
	adc  b                                           ; $4d72: $88
	adc  b                                           ; $4d73: $88
	adc  b                                           ; $4d74: $88
	sbc  b                                           ; $4d75: $98
	adc  b                                           ; $4d76: $88
	adc  b                                           ; $4d77: $88
	adc  b                                           ; $4d78: $88
	add  a                                           ; $4d79: $87
	add  a                                           ; $4d7a: $87
	adc  b                                           ; $4d7b: $88
	adc  b                                           ; $4d7c: $88
	adc  b                                           ; $4d7d: $88
	adc  b                                           ; $4d7e: $88
	adc  b                                           ; $4d7f: $88
	adc  b                                           ; $4d80: $88
	adc  c                                           ; $4d81: $89
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
	adc  c                                           ; $4d93: $89
	adc  b                                           ; $4d94: $88
	adc  b                                           ; $4d95: $88
	adc  b                                           ; $4d96: $88
	adc  b                                           ; $4d97: $88
	adc  b                                           ; $4d98: $88
	adc  b                                           ; $4d99: $88
	adc  b                                           ; $4d9a: $88
	adc  b                                           ; $4d9b: $88
	adc  b                                           ; $4d9c: $88
	ld   [hl], a                                     ; $4d9d: $77
	adc  b                                           ; $4d9e: $88
	add  a                                           ; $4d9f: $87
	adc  b                                           ; $4da0: $88
	adc  b                                           ; $4da1: $88
	adc  b                                           ; $4da2: $88
	adc  c                                           ; $4da3: $89
	adc  b                                           ; $4da4: $88
	adc  b                                           ; $4da5: $88
	adc  b                                           ; $4da6: $88
	sub  a                                           ; $4da7: $97
	adc  b                                           ; $4da8: $88
	add  a                                           ; $4da9: $87
	adc  b                                           ; $4daa: $88
	ld   a, b                                        ; $4dab: $78
	adc  b                                           ; $4dac: $88
	ld   a, b                                        ; $4dad: $78
	adc  b                                           ; $4dae: $88
	adc  b                                           ; $4daf: $88
	sbc  b                                           ; $4db0: $98
	sbc  c                                           ; $4db1: $99
	adc  b                                           ; $4db2: $88
	adc  b                                           ; $4db3: $88
	adc  b                                           ; $4db4: $88
	adc  b                                           ; $4db5: $88
	adc  b                                           ; $4db6: $88
	adc  b                                           ; $4db7: $88
	adc  b                                           ; $4db8: $88
	ld   [hl], a                                     ; $4db9: $77
	ld   [hl], a                                     ; $4dba: $77
	adc  b                                           ; $4dbb: $88
	ld   a, b                                        ; $4dbc: $78
	adc  b                                           ; $4dbd: $88
	sbc  b                                           ; $4dbe: $98
	adc  b                                           ; $4dbf: $88
	sbc  b                                           ; $4dc0: $98
	adc  c                                           ; $4dc1: $89
	sbc  c                                           ; $4dc2: $99
	adc  b                                           ; $4dc3: $88
	adc  b                                           ; $4dc4: $88
	adc  b                                           ; $4dc5: $88
	ld   a, b                                        ; $4dc6: $78
	add  a                                           ; $4dc7: $87
	ld   [hl], a                                     ; $4dc8: $77
	ld   [hl], a                                     ; $4dc9: $77
	ld   a, b                                        ; $4dca: $78
	adc  b                                           ; $4dcb: $88
	adc  b                                           ; $4dcc: $88
	adc  c                                           ; $4dcd: $89
	adc  c                                           ; $4dce: $89
	adc  c                                           ; $4dcf: $89
	sbc  c                                           ; $4dd0: $99
	sbc  b                                           ; $4dd1: $98
	adc  b                                           ; $4dd2: $88
	ld   [hl], a                                     ; $4dd3: $77
	ld   [hl], a                                     ; $4dd4: $77
	ld   h, [hl]                                     ; $4dd5: $66
	ld   h, [hl]                                     ; $4dd6: $66
	ld   h, [hl]                                     ; $4dd7: $66
	ld   h, a                                        ; $4dd8: $67
	ld   [hl], a                                     ; $4dd9: $77
	adc  b                                           ; $4dda: $88
	sbc  d                                           ; $4ddb: $9a
	sbc  d                                           ; $4ddc: $9a
	xor  e                                           ; $4ddd: $ab
	cp   d                                           ; $4dde: $ba
	sbc  c                                           ; $4ddf: $99
	add  [hl]                                        ; $4de0: $86
	ld   h, a                                        ; $4de1: $67
	sub  [hl]                                        ; $4de2: $96
	ld   b, e                                        ; $4de3: $43
	inc  h                                           ; $4de4: $24
	ld   b, h                                        ; $4de5: $44
	ld   b, l                                        ; $4de6: $45
	adc  c                                           ; $4de7: $89
	call z, $eebd                                    ; $4de8: $cc $bd $ee
	call c, $b9cb                                    ; $4deb: $dc $cb $b9
	ld   h, [hl]                                     ; $4dee: $66
	add  a                                           ; $4def: $87
	ld   d, h                                        ; $4df0: $54
	ld   de, $3323                                   ; $4df1: $11 $23 $33
	ld   d, a                                        ; $4df4: $57
	sbc  e                                           ; $4df5: $9b
	cp   e                                           ; $4df6: $bb
	adc  $ee                                         ; $4df7: $ce $ee
	db   $ec                                         ; $4df9: $ec
	cp   h                                           ; $4dfa: $bc
	and  a                                           ; $4dfb: $a7
	ld   d, h                                        ; $4dfc: $54
	ld   a, b                                        ; $4dfd: $78
	ld   b, e                                        ; $4dfe: $43
	ld   de, $3223                                   ; $4dff: $11 $23 $32
	ld   b, a                                        ; $4e02: $47
	xor  e                                           ; $4e03: $ab
	call z, $ffdf                                    ; $4e04: $cc $df $ff
	db   $ed                                         ; $4e07: $ed
	res  4, a                                        ; $4e08: $cb $a7
	ld   b, e                                        ; $4e0a: $43
	ld   h, a                                        ; $4e0b: $67
	ld   [hl-], a                                    ; $4e0c: $32
	ld   de, $3212                                   ; $4e0d: $11 $12 $32
	ld   d, a                                        ; $4e10: $57
	xor  l                                           ; $4e11: $ad
	sbc  $ef                                         ; $4e12: $de $ef
	rst  $38                                         ; $4e14: $ff
	db   $fd                                         ; $4e15: $fd
	cp   e                                           ; $4e16: $bb
	sub  l                                           ; $4e17: $95
	ld   sp, $2157                                   ; $4e18: $31 $57 $21
	ld   de, $3112                                   ; $4e1b: $11 $12 $31
	ld   e, b                                        ; $4e1e: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e1f: $cf
	rst  $38                                         ; $4e20: $ff
	rst  $38                                         ; $4e21: $ff
	rst  $38                                         ; $4e22: $ff
	cp   $cb                                         ; $4e23: $fe $cb
	add  h                                           ; $4e25: $84
	ld   de, $1145                                   ; $4e26: $11 $45 $11
	ld   de, $2112                                   ; $4e29: $11 $12 $21
	ld   a, c                                        ; $4e2c: $79
	rst  $28                                         ; $4e2d: $ef
	rst  $38                                         ; $4e2e: $ff
	rst  $38                                         ; $4e2f: $ff
	rst  $38                                         ; $4e30: $ff
	db   $fd                                         ; $4e31: $fd
	cp   d                                           ; $4e32: $ba
	ld   [hl], c                                     ; $4e33: $71
	ld   de, $1141                                   ; $4e34: $11 $41 $11
	ld   de, $1312                                   ; $4e37: $11 $12 $13
	xor  e                                           ; $4e3a: $ab
	rst  $38                                         ; $4e3b: $ff
	rst  $38                                         ; $4e3c: $ff
	rst  $38                                         ; $4e3d: $ff
	rst  $38                                         ; $4e3e: $ff
	db   $fc                                         ; $4e3f: $fc
	cp   b                                           ; $4e40: $b8
	ld   b, c                                        ; $4e41: $41
	ld   de, $1121                                   ; $4e42: $11 $21 $11
	ld   de, $1713                                   ; $4e45: $11 $13 $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e48: $cf
	rst  $38                                         ; $4e49: $ff
	rst  $38                                         ; $4e4a: $ff
	rst  $38                                         ; $4e4b: $ff
	rst  $38                                         ; $4e4c: $ff
	ld   a, [$1185]                                  ; $4e4d: $fa $85 $11
	ld   de, $1111                                   ; $4e50: $11 $11 $11
	ld   de, $4d32                                   ; $4e53: $11 $32 $4d
	rst  $38                                         ; $4e56: $ff
	rst  $38                                         ; $4e57: $ff
	rst  $38                                         ; $4e58: $ff
	rst  $38                                         ; $4e59: $ff
	rst  $38                                         ; $4e5a: $ff
	cp   b                                           ; $4e5b: $b8
	ld   d, c                                        ; $4e5c: $51
	ld   de, $1111                                   ; $4e5d: $11 $11 $11
	ld   de, $5313                                   ; $4e60: $11 $13 $53
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e63: $cf
	rst  $38                                         ; $4e64: $ff
	rst  $38                                         ; $4e65: $ff
	rst  $38                                         ; $4e66: $ff
	rst  $38                                         ; $4e67: $ff
	db   $fd                                         ; $4e68: $fd
	ld   [hl], l                                     ; $4e69: $75
	ld   de, $1111                                   ; $4e6a: $11 $11 $11
	ld   de, $3911                                   ; $4e6d: $11 $11 $39
	ld   e, e                                        ; $4e70: $5b
	rst  $38                                         ; $4e71: $ff
	rst  $38                                         ; $4e72: $ff
	rst  $38                                         ; $4e73: $ff
	rst  $38                                         ; $4e74: $ff
	rst  $38                                         ; $4e75: $ff
	and  $21                                         ; $4e76: $e6 $21
	ld   de, $1111                                   ; $4e78: $11 $11 $11
	ld   de, $b913                                   ; $4e7b: $11 $13 $b9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e7e: $cf
	rst  $38                                         ; $4e7f: $ff
	rst  $38                                         ; $4e80: $ff
	rst  $38                                         ; $4e81: $ff
	rst  $38                                         ; $4e82: $ff
	cp   $51                                         ; $4e83: $fe $51
	ld   de, $1111                                   ; $4e85: $11 $11 $11
	ld   de, $4b11                                   ; $4e88: $11 $11 $4b
	call c, $ffff                                    ; $4e8b: $dc $ff $ff
	rst  $38                                         ; $4e8e: $ff
	rst  $38                                         ; $4e8f: $ff
	db   $fd                                         ; $4e90: $fd
	push bc                                          ; $4e91: $c5
	ld   de, $1111                                   ; $4e92: $11 $11 $11
	ld   de, $1511                                   ; $4e95: $11 $11 $15
	rst  JumpTable                                         ; $4e98: $df
	rst  $28                                         ; $4e99: $ef
	rst  $38                                         ; $4e9a: $ff
	rst  $38                                         ; $4e9b: $ff
	rst  $38                                         ; $4e9c: $ff
	rst  $38                                         ; $4e9d: $ff
	cp   d                                           ; $4e9e: $ba
	ld   d, c                                        ; $4e9f: $51
	ld   de, $1111                                   ; $4ea0: $11 $11 $11
	ld   de, $7e11                                   ; $4ea3: $11 $11 $7e
	rst  $38                                         ; $4ea6: $ff
	rst  $38                                         ; $4ea7: $ff
	rst  $38                                         ; $4ea8: $ff
	rst  $38                                         ; $4ea9: $ff
	rst  $38                                         ; $4eaa: $ff
	ei                                               ; $4eab: $fb
	sub  l                                           ; $4eac: $95
	ld   de, $1111                                   ; $4ead: $11 $11 $11
	ld   de, $1711                                   ; $4eb0: $11 $11 $17
	rst  $28                                         ; $4eb3: $ef
	rst  $38                                         ; $4eb4: $ff
	rst  $38                                         ; $4eb5: $ff
	rst  $38                                         ; $4eb6: $ff
	rst  $38                                         ; $4eb7: $ff
	rst  $38                                         ; $4eb8: $ff
	and  a                                           ; $4eb9: $a7
	ld   d, c                                        ; $4eba: $51
	ld   de, $1111                                   ; $4ebb: $11 $11 $11
	ld   de, $7d13                                   ; $4ebe: $11 $13 $7d
	rst  $38                                         ; $4ec1: $ff
	rst  $38                                         ; $4ec2: $ff
	rst  $38                                         ; $4ec3: $ff
	rst  $38                                         ; $4ec4: $ff
	rst  $38                                         ; $4ec5: $ff
	ei                                               ; $4ec6: $fb
	ld   [hl], l                                     ; $4ec7: $75
	ld   de, $1111                                   ; $4ec8: $11 $11 $11
	ld   de, $3711                                   ; $4ecb: $11 $11 $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ece: $cf
	rst  $38                                         ; $4ecf: $ff
	rst  $38                                         ; $4ed0: $ff
	rst  $38                                         ; $4ed1: $ff
	rst  $38                                         ; $4ed2: $ff
	rst  $38                                         ; $4ed3: $ff
	or   [hl]                                        ; $4ed4: $b6
	ld   d, c                                        ; $4ed5: $51
	ld   de, $1111                                   ; $4ed6: $11 $11 $11
	ld   de, $7b13                                   ; $4ed9: $11 $13 $7b
	rst  $38                                         ; $4edc: $ff
	rst  $38                                         ; $4edd: $ff
	rst  $38                                         ; $4ede: $ff
	rst  $38                                         ; $4edf: $ff
	rst  $38                                         ; $4ee0: $ff
	ei                                               ; $4ee1: $fb
	ld   h, l                                        ; $4ee2: $65
	ld   de, $1111                                   ; $4ee3: $11 $11 $11
	ld   de, $3611                                   ; $4ee6: $11 $11 $36
	xor  a                                           ; $4ee9: $af
	rst  $38                                         ; $4eea: $ff
	rst  $38                                         ; $4eeb: $ff
	rst  $38                                         ; $4eec: $ff
	rst  $38                                         ; $4eed: $ff
	cp   $c7                                         ; $4eee: $fe $c7
	ld   h, e                                        ; $4ef0: $63
	ld   de, $1111                                   ; $4ef1: $11 $11 $11
	ld   de, $5a13                                   ; $4ef4: $11 $13 $5a
	rst  $38                                         ; $4ef7: $ff
	rst  $38                                         ; $4ef8: $ff
	rst  $38                                         ; $4ef9: $ff
	rst  $38                                         ; $4efa: $ff
	rst  $38                                         ; $4efb: $ff
	db   $db                                         ; $4efc: $db
	add  [hl]                                        ; $4efd: $86
	ld   d, c                                        ; $4efe: $51
	ld   de, $1111                                   ; $4eff: $11 $11 $11
	ld   de, $8c34                                   ; $4f02: $11 $34 $8c
	rst  $38                                         ; $4f05: $ff
	rst  $38                                         ; $4f06: $ff
	rst  $38                                         ; $4f07: $ff
	rst  $38                                         ; $4f08: $ff
	rst  $38                                         ; $4f09: $ff
	ret                                              ; $4f0a: $c9


	ld   h, [hl]                                     ; $4f0b: $66
	ld   hl, $1111                                   ; $4f0c: $21 $11 $11
	ld   de, $3513                                   ; $4f0f: $11 $13 $35
	xor  a                                           ; $4f12: $af
	rst  $38                                         ; $4f13: $ff
	rst  $38                                         ; $4f14: $ff
	rst  $38                                         ; $4f15: $ff
	rst  $38                                         ; $4f16: $ff
	db   $fd                                         ; $4f17: $fd
	and  a                                           ; $4f18: $a7
	ld   h, l                                        ; $4f19: $65
	ld   de, $1111                                   ; $4f1a: $11 $11 $11
	ld   [de], a                                     ; $4f1d: $12
	inc  [hl]                                        ; $4f1e: $34
	ld   [hl], $af                                   ; $4f1f: $36 $af
	rst  $38                                         ; $4f21: $ff
	rst  $38                                         ; $4f22: $ff
	rst  $38                                         ; $4f23: $ff
	rst  $38                                         ; $4f24: $ff
	db   $fc                                         ; $4f25: $fc
	add  [hl]                                        ; $4f26: $86
	ld   [hl], l                                     ; $4f27: $75
	ld   de, $1111                                   ; $4f28: $11 $11 $11
	inc  sp                                          ; $4f2b: $33
	ld   h, l                                        ; $4f2c: $65
	dec  [hl]                                        ; $4f2d: $35
	sbc  a                                           ; $4f2e: $9f
	rst  $38                                         ; $4f2f: $ff
	rst  $38                                         ; $4f30: $ff
	rst  $38                                         ; $4f31: $ff
	rst  $38                                         ; $4f32: $ff
	db   $fc                                         ; $4f33: $fc
	add  [hl]                                        ; $4f34: $86
	add  l                                           ; $4f35: $85
	ld   sp, $1111                                   ; $4f36: $31 $11 $11
	ld   b, h                                        ; $4f39: $44
	ld   [hl], l                                     ; $4f3a: $75
	inc  hl                                          ; $4f3b: $23
	ld   a, h                                        ; $4f3c: $7c
	rst  JumpTable                                         ; $4f3d: $df
	cp   $ff                                         ; $4f3e: $fe $ff
	rst  $38                                         ; $4f40: $ff
	db   $fd                                         ; $4f41: $fd
	sub  a                                           ; $4f42: $97
	sub  [hl]                                        ; $4f43: $96
	ld   d, e                                        ; $4f44: $53
	ld   de, $4511                                   ; $4f45: $11 $11 $45
	add  a                                           ; $4f48: $87
	ld   [hl-], a                                    ; $4f49: $32
	scf                                              ; $4f4a: $37
	xor  l                                           ; $4f4b: $ad
	db   $ec                                         ; $4f4c: $ec
	cp   h                                           ; $4f4d: $bc
	rst  JumpTable                                         ; $4f4e: $df
	rst  $38                                         ; $4f4f: $ff
	cp   b                                           ; $4f50: $b8
	sbc  b                                           ; $4f51: $98
	ld   [hl], a                                     ; $4f52: $77
	ld   d, h                                        ; $4f53: $54
	ld   de, $6755                                   ; $4f54: $11 $55 $67
	ld   d, d                                        ; $4f57: $52
	ld   [de], a                                     ; $4f58: $12
	ld   a, b                                        ; $4f59: $78
	cp   h                                           ; $4f5a: $bc
	xor  d                                           ; $4f5b: $aa
	cp   e                                           ; $4f5c: $bb
	rst  JumpTable                                         ; $4f5d: $df
	ei                                               ; $4f5e: $fb
	adc  c                                           ; $4f5f: $89
	adc  c                                           ; $4f60: $89
	add  a                                           ; $4f61: $87
	ld   h, h                                        ; $4f62: $64
	ld   d, [hl]                                     ; $4f63: $56
	ld   h, a                                        ; $4f64: $67
	ld   [hl], h                                     ; $4f65: $74
	ld   hl, $7a24                                   ; $4f66: $21 $24 $7a
	sbc  c                                           ; $4f69: $99
	sbc  d                                           ; $4f6a: $9a
	xor  l                                           ; $4f6b: $ad
	rst  $28                                         ; $4f6c: $ef
	jp   z, $99ba                                    ; $4f6d: $ca $ba $99

	sbc  b                                           ; $4f70: $98
	ld   h, [hl]                                     ; $4f71: $66
	halt                                             ; $4f72: $76
	ld   a, b                                        ; $4f73: $78
	ld   b, d                                        ; $4f74: $42
	ld   de, $a935                                   ; $4f75: $11 $35 $a9
	ld   a, c                                        ; $4f78: $79
	adc  c                                           ; $4f79: $89
	cp   [hl]                                        ; $4f7a: $be
	db   $fc                                         ; $4f7b: $fc
	cp   e                                           ; $4f7c: $bb
	xor  e                                           ; $4f7d: $ab
	xor  d                                           ; $4f7e: $aa
	sub  a                                           ; $4f7f: $97
	ld   a, b                                        ; $4f80: $78
	ld   [hl], a                                     ; $4f81: $77
	ld   [hl], l                                     ; $4f82: $75
	ld   sp, $3712                                   ; $4f83: $31 $12 $37
	sub  a                                           ; $4f86: $97
	ld   a, b                                        ; $4f87: $78
	adc  d                                           ; $4f88: $8a
	adc  $ec                                         ; $4f89: $ce $ec
	cp   e                                           ; $4f8b: $bb
	xor  d                                           ; $4f8c: $aa
	xor  c                                           ; $4f8d: $a9
	sbc  b                                           ; $4f8e: $98
	sbc  b                                           ; $4f8f: $98
	ld   [hl], a                                     ; $4f90: $77
	ld   h, h                                        ; $4f91: $64
	ld   hl, $4712                                   ; $4f92: $21 $12 $47
	ld   [hl], a                                     ; $4f95: $77
	adc  b                                           ; $4f96: $88
	sbc  d                                           ; $4f97: $9a
	sbc  $cb                                         ; $4f98: $de $cb
	cp   e                                           ; $4f9a: $bb
	cp   d                                           ; $4f9b: $ba
	sbc  c                                           ; $4f9c: $99
	sbc  b                                           ; $4f9d: $98
	adc  b                                           ; $4f9e: $88
	halt                                             ; $4f9f: $76
	ld   d, e                                        ; $4fa0: $53
	ld   hl, $6723                                   ; $4fa1: $21 $23 $67
	ld   a, b                                        ; $4fa4: $78
	adc  b                                           ; $4fa5: $88
	xor  h                                           ; $4fa6: $ac
	db   $ed                                         ; $4fa7: $ed
	cp   h                                           ; $4fa8: $bc
	xor  d                                           ; $4fa9: $aa
	xor  d                                           ; $4faa: $aa
	xor  b                                           ; $4fab: $a8
	adc  b                                           ; $4fac: $88
	add  a                                           ; $4fad: $87
	halt                                             ; $4fae: $76
	ld   b, e                                        ; $4faf: $43
	ld   [hl+], a                                    ; $4fb0: $22
	inc  [hl]                                        ; $4fb1: $34
	ld   a, b                                        ; $4fb2: $78
	adc  c                                           ; $4fb3: $89
	sbc  c                                           ; $4fb4: $99
	cp   h                                           ; $4fb5: $bc
	db   $ec                                         ; $4fb6: $ec
	res  5, d                                        ; $4fb7: $cb $aa
	xor  d                                           ; $4fb9: $aa
	sbc  b                                           ; $4fba: $98
	ld   [hl], a                                     ; $4fbb: $77
	ld   [hl], a                                     ; $4fbc: $77
	ld   [hl], l                                     ; $4fbd: $75
	ld   [hl-], a                                    ; $4fbe: $32
	ld   [hl+], a                                    ; $4fbf: $22
	dec  [hl]                                        ; $4fc0: $35
	adc  b                                           ; $4fc1: $88
	adc  c                                           ; $4fc2: $89
	adc  d                                           ; $4fc3: $8a
	cp   [hl]                                        ; $4fc4: $be
	db   $ec                                         ; $4fc5: $ec
	cp   d                                           ; $4fc6: $ba
	sbc  c                                           ; $4fc7: $99
	xor  c                                           ; $4fc8: $a9
	add  a                                           ; $4fc9: $87
	ld   [hl], a                                     ; $4fca: $77
	ld   [hl], a                                     ; $4fcb: $77
	ld   h, h                                        ; $4fcc: $64
	ld   [hl-], a                                    ; $4fcd: $32
	inc  hl                                          ; $4fce: $23
	ld   b, a                                        ; $4fcf: $47
	sbc  c                                           ; $4fd0: $99
	sbc  b                                           ; $4fd1: $98
	xor  e                                           ; $4fd2: $ab
	rst  JumpTable                                         ; $4fd3: $df
	call c, $99b9                                    ; $4fd4: $dc $b9 $99
	adc  c                                           ; $4fd7: $89
	ld   [hl], a                                     ; $4fd8: $77
	ld   [hl], a                                     ; $4fd9: $77
	ld   [hl], a                                     ; $4fda: $77
	ld   h, h                                        ; $4fdb: $64
	ld   hl, $6923                                   ; $4fdc: $21 $23 $69
	sbc  c                                           ; $4fdf: $99
	sbc  c                                           ; $4fe0: $99
	xor  h                                           ; $4fe1: $ac
	rst  $28                                         ; $4fe2: $ef
	db   $db                                         ; $4fe3: $db
	sbc  d                                           ; $4fe4: $9a
	sbc  c                                           ; $4fe5: $99
	sub  a                                           ; $4fe6: $97
	ld   h, [hl]                                     ; $4fe7: $66
	ld   h, [hl]                                     ; $4fe8: $66
	ld   [hl], a                                     ; $4fe9: $77
	ld   d, e                                        ; $4fea: $53
	ld   hl, $7a24                                   ; $4feb: $21 $24 $7a
	sbc  c                                           ; $4fee: $99
	sbc  c                                           ; $4fef: $99
	call $caff                                       ; $4ff0: $cd $ff $ca
	sbc  c                                           ; $4ff3: $99
	sbc  b                                           ; $4ff4: $98
	add  [hl]                                        ; $4ff5: $86
	ld   d, l                                        ; $4ff6: $55
	ld   d, [hl]                                     ; $4ff7: $56
	ld   [hl], a                                     ; $4ff8: $77
	ld   b, d                                        ; $4ff9: $42
	ld   de, $ab36                                   ; $4ffa: $11 $36 $ab
	xor  d                                           ; $4ffd: $aa
	xor  h                                           ; $4ffe: $ac
	rst  JumpTable                                         ; $4fff: $df
	cp   $b8                                         ; $5000: $fe $b8
	adc  c                                           ; $5002: $89
	ld   [hl], a                                     ; $5003: $77
	ld   d, e                                        ; $5004: $53
	inc  hl                                          ; $5005: $23
	dec  [hl]                                        ; $5006: $35
	ld   [hl], l                                     ; $5007: $75
	ld   sp, $6c13                                   ; $5008: $31 $13 $6c
	call c, $cddb                                    ; $500b: $dc $db $cd
	rst  $38                                         ; $500e: $ff
	db   $fc                                         ; $500f: $fc
	add  [hl]                                        ; $5010: $86
	halt                                             ; $5011: $76
	ld   b, e                                        ; $5012: $43
	ld   de, $5812                                   ; $5013: $11 $12 $58
	ld   h, h                                        ; $5016: $64
	ld   [hl+], a                                    ; $5017: $22
	ld   e, c                                        ; $5018: $59
	rst  $28                                         ; $5019: $ef
	cp   $bc                                         ; $501a: $fe $bc
	rst  $28                                         ; $501c: $ef
	rst  $38                                         ; $501d: $ff
	cp   b                                           ; $501e: $b8
	dec  [hl]                                        ; $501f: $35
	ld   b, d                                        ; $5020: $42
	ld   de, $1611                                   ; $5021: $11 $11 $16
	sbc  b                                           ; $5024: $98
	ld   [hl], h                                     ; $5025: $74
	ld   b, a                                        ; $5026: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5027: $cf
	rst  $38                                         ; $5028: $ff
	ld   a, [$ffad]                                  ; $5029: $fa $ad $ff
	db   $eb                                         ; $502c: $eb
	ld   d, c                                        ; $502d: $51
	ld   de, $1111                                   ; $502e: $11 $11 $11
	ld   [de], a                                     ; $5031: $12
	xor  e                                           ; $5032: $ab
	xor  c                                           ; $5033: $a9
	ld   l, b                                        ; $5034: $68
	cp   a                                           ; $5035: $bf
	rst  $38                                         ; $5036: $ff
	db   $fc                                         ; $5037: $fc
	ld   a, d                                        ; $5038: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5039: $cf
	db   $fd                                         ; $503a: $fd
	sub  c                                           ; $503b: $91
	ld   de, $1111                                   ; $503c: $11 $11 $11
	ld   de, $ee8e                                   ; $503f: $11 $8e $ee
	xor  d                                           ; $5042: $aa
	cp   a                                           ; $5043: $bf
	rst  $38                                         ; $5044: $ff
	db   $fc                                         ; $5045: $fc
	ld   h, [hl]                                     ; $5046: $66
	adc  h                                           ; $5047: $8c
	cp   $c4                                         ; $5048: $fe $c4
	ld   de, $1111                                   ; $504a: $11 $11 $11
	ld   de, $ff7f                                   ; $504d: $11 $7f $ff
	jp   z, $ffbe                                    ; $5050: $ca $be $ff

	db   $fd                                         ; $5053: $fd
	ld   h, h                                        ; $5054: $64
	ld   l, d                                        ; $5055: $6a
	cp   $b7                                         ; $5056: $fe $b7
	ld   de, $1111                                   ; $5058: $11 $11 $11
	ld   de, $ff6f                                   ; $505b: $11 $6f $ff
	jp   c, $ffbd                                    ; $505e: $da $bd $ff

	db   $fc                                         ; $5061: $fc
	ld   d, d                                        ; $5062: $52
	ld   e, d                                        ; $5063: $5a
	rst  $38                                         ; $5064: $ff
	reti                                             ; $5065: $d9


	ld   de, $1111                                   ; $5066: $11 $11 $11
	ld   de, $ff4e                                   ; $5069: $11 $4e $ff
	jp   hl                                          ; $506c: $e9


	sbc  h                                           ; $506d: $9c
	rst  $38                                         ; $506e: $ff
	ld   a, [$3941]                                  ; $506f: $fa $41 $39
	rst  $38                                         ; $5072: $ff
	ei                                               ; $5073: $fb
	ld   b, d                                        ; $5074: $42
	ld   sp, $1111                                   ; $5075: $31 $11 $11
	dec  de                                          ; $5078: $1b
	rst  $38                                         ; $5079: $ff
	ld   a, [$ff8c]                                  ; $507a: $fa $8c $ff
	ei                                               ; $507d: $fb
	ld   hl, $ff17                                   ; $507e: $21 $17 $ff
	db   $fc                                         ; $5081: $fc
	ld   h, e                                        ; $5082: $63
	ld   d, [hl]                                     ; $5083: $56
	ld   hl, $1811                                   ; $5084: $21 $11 $18
	rst  $38                                         ; $5087: $ff
	ei                                               ; $5088: $fb
	ld   l, c                                        ; $5089: $69
	rst  $38                                         ; $508a: $ff
	db   $fd                                         ; $508b: $fd
	ld   de, $ff15                                   ; $508c: $11 $15 $ff
	db   $fd                                         ; $508f: $fd
	add  h                                           ; $5090: $84
	ld   l, c                                        ; $5091: $69
	ld   b, c                                        ; $5092: $41
	ld   de, $ff15                                   ; $5093: $11 $15 $ff
	cp   $67                                         ; $5096: $fe $67
	rst  $38                                         ; $5098: $ff
	rst  $38                                         ; $5099: $ff
	ld   de, rAUD1LEN                                   ; $509a: $11 $11 $ff
	rst  $38                                         ; $509d: $ff
	sub  a                                           ; $509e: $97
	ld   a, e                                        ; $509f: $7b
	sub  c                                           ; $50a0: $91
	ld   de, rAUD1LEN                                   ; $50a1: $11 $11 $ff
	rst  $38                                         ; $50a4: $ff
	sbc  b                                           ; $50a5: $98
	rst  $38                                         ; $50a6: $ff
	rst  $38                                         ; $50a7: $ff
	ld   hl, $bf11                                   ; $50a8: $21 $11 $bf
	rst  $38                                         ; $50ab: $ff
	jp   z, $b1bc                                    ; $50ac: $ca $bc $b1

	ld   de, $cf11                                   ; $50af: $11 $11 $cf
	rst  $38                                         ; $50b2: $ff
	jp   c, $ffff                                    ; $50b3: $da $ff $ff

	ld   b, c                                        ; $50b6: $41
	ld   de, $ff7f                                   ; $50b7: $11 $7f $ff
	cp   $fd                                         ; $50ba: $fe $fd
	or   d                                           ; $50bc: $b2
	ld   de, $2f11                                   ; $50bd: $11 $11 $2f
	rst  $38                                         ; $50c0: $ff
	rst  $38                                         ; $50c1: $ff
	rst  $38                                         ; $50c2: $ff
	cp   $31                                         ; $50c3: $fe $31
	ld   de, $ff3d                                   ; $50c5: $11 $3d $ff
	rst  $38                                         ; $50c8: $ff
	rst  $38                                         ; $50c9: $ff
	sub  h                                           ; $50ca: $94
	ld   de, $1911                                   ; $50cb: $11 $11 $19
	rst  $38                                         ; $50ce: $ff
	rst  $38                                         ; $50cf: $ff
	rst  $38                                         ; $50d0: $ff
	db   $ec                                         ; $50d1: $ec
	ld   hl, $1711                                   ; $50d2: $21 $11 $17
	rst  $38                                         ; $50d5: $ff
	rst  $38                                         ; $50d6: $ff
	rst  $38                                         ; $50d7: $ff
	add  c                                           ; $50d8: $81
	ld   de, $1111                                   ; $50d9: $11 $11 $11
	rst  $38                                         ; $50dc: $ff
	rst  $38                                         ; $50dd: $ff
	rst  $38                                         ; $50de: $ff
	sub  $31                                         ; $50df: $d6 $31
	ld   de, $cf15                                   ; $50e1: $11 $15 $cf
	rst  $38                                         ; $50e4: $ff
	rst  $38                                         ; $50e5: $ff
	or   c                                           ; $50e6: $b1
	ld   de, $1111                                   ; $50e7: $11 $11 $11
	rra                                              ; $50ea: $1f
	rst  $38                                         ; $50eb: $ff
	rst  $38                                         ; $50ec: $ff
	jp   nc, $1111                                   ; $50ed: $d2 $11 $11

	ld   de, $ffdf                                   ; $50f0: $11 $df $ff
	rst  $38                                         ; $50f3: $ff
	add  c                                           ; $50f4: $81
	ld   de, $1111                                   ; $50f5: $11 $11 $11
	ld   e, $ff                                      ; $50f8: $1e $ff
	rst  $38                                         ; $50fa: $ff
	add  d                                           ; $50fb: $82
	ld   de, $1111                                   ; $50fc: $11 $11 $11
	adc  a                                           ; $50ff: $8f
	rst  $38                                         ; $5100: $ff
	rst  $38                                         ; $5101: $ff
	ld   [hl], c                                     ; $5102: $71
	ld   de, $1111                                   ; $5103: $11 $11 $11
	ld   de, $ffff                                   ; $5106: $11 $ff $ff
	pop  af                                          ; $5109: $f1
	ld   de, $1111                                   ; $510a: $11 $11 $11
	rra                                              ; $510d: $1f
	rst  $38                                         ; $510e: $ff
	rst  $38                                         ; $510f: $ff
	pop  hl                                          ; $5110: $e1
	ld   de, $1111                                   ; $5111: $11 $11 $11
	ld   de, $ffcf                                   ; $5114: $11 $cf $ff
	pop  af                                          ; $5117: $f1
	ld   de, $1211                                   ; $5118: $11 $11 $12
	dec  de                                          ; $511b: $1b
	rst  $38                                         ; $511c: $ff
	rst  $38                                         ; $511d: $ff
	pop  af                                          ; $511e: $f1
	ld   de, $3113                                   ; $511f: $11 $13 $31
	ld   de, $ff1f                                   ; $5122: $11 $1f $ff
	ld   sp, hl                                      ; $5125: $f9
	ld   de, $1511                                   ; $5126: $11 $11 $15
	ld   [hl], $ff                                   ; $5129: $36 $ff
	rst  $38                                         ; $512b: $ff
	ldh  a, [c]                                      ; $512c: $f2
	ld   de, $8411                                   ; $512d: $11 $11 $84
	ld   de, $ff1a                                   ; $5130: $11 $1a $ff
	rst  $38                                         ; $5133: $ff
	ld   de, $1611                                   ; $5134: $11 $11 $16
	sub  a                                           ; $5137: $97
	rst  $38                                         ; $5138: $ff
	rst  $38                                         ; $5139: $ff
	or   $11                                         ; $513a: $f6 $11
	ld   de, $5198                                   ; $513c: $11 $98 $51
	ld   de, $ffdf                                   ; $513f: $11 $df $ff
	or   c                                           ; $5142: $b1
	ld   de, $aa15                                   ; $5143: $11 $15 $aa
	xor  a                                           ; $5146: $af
	rst  $38                                         ; $5147: $ff
	db   $fc                                         ; $5148: $fc
	ld   d, c                                        ; $5149: $51
	ld   de, $956b                                   ; $514a: $11 $6b $95
	ld   de, $ff19                                   ; $514d: $11 $19 $ff
	db   $fd                                         ; $5150: $fd
	ld   hl, $6b13                                   ; $5151: $21 $13 $6b
	adc  c                                           ; $5154: $89
	rst  $28                                         ; $5155: $ef
	rst  $38                                         ; $5156: $ff
	jp   hl                                          ; $5157: $e9


	ld   [hl+], a                                    ; $5158: $22
	ld   h, $a6                                      ; $5159: $26 $a6
	ld   hl, $9f11                                   ; $515b: $21 $11 $9f
	rst  $38                                         ; $515e: $ff
	di                                               ; $515f: $f3
	ld   de, $8614                                   ; $5160: $11 $14 $86
	adc  [hl]                                        ; $5163: $8e
	rst  $38                                         ; $5164: $ff
	rst  $38                                         ; $5165: $ff
	ld   [hl], c                                     ; $5166: $71
	ld   de, $4157                                   ; $5167: $11 $57 $41
	ld   de, $ff1f                                   ; $516a: $11 $1f $ff
	ei                                               ; $516d: $fb
	ld   de, $5911                                   ; $516e: $11 $11 $59
	adc  e                                           ; $5171: $8b
	rst  $38                                         ; $5172: $ff
	rst  $38                                         ; $5173: $ff
	jp   nz, $1611                                   ; $5174: $c2 $11 $16

	ld   [hl], l                                     ; $5177: $75
	ld   de, $ff15                                   ; $5178: $11 $15 $ff
	rst  $38                                         ; $517b: $ff
	ld   sp, $3911                                   ; $517c: $31 $11 $39
	xor  e                                           ; $517f: $ab
	rst  $38                                         ; $5180: $ff
	rst  $38                                         ; $5181: $ff
	and  $11                                         ; $5182: $e6 $11
	inc  d                                           ; $5184: $14
	sbc  c                                           ; $5185: $99
	ld   d, c                                        ; $5186: $51
	ld   de, $ff9f                                   ; $5187: $11 $9f $ff
	pop  bc                                          ; $518a: $c1
	ld   de, $ac15                                   ; $518b: $11 $15 $ac
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $518e: $cf
	rst  $38                                         ; $518f: $ff
	ei                                               ; $5190: $fb
	ld   b, c                                        ; $5191: $41
	ld   de, $8569                                   ; $5192: $11 $69 $85
	ld   de, $ff19                                   ; $5195: $11 $19 $ff
	ei                                               ; $5198: $fb
	ld   de, $7c12                                   ; $5199: $11 $12 $7c
	cp   h                                           ; $519c: $bc
	rst  $38                                         ; $519d: $ff
	rst  $38                                         ; $519e: $ff
	and  d                                           ; $519f: $a2
	ld   de, $a738                                   ; $51a0: $11 $38 $a7
	ld   sp, $df11                                   ; $51a3: $31 $11 $df
	rst  $38                                         ; $51a6: $ff
	add  c                                           ; $51a7: $81
	ld   de, $db38                                   ; $51a8: $11 $38 $db
	rst  $28                                         ; $51ab: $ef
	rst  $38                                         ; $51ac: $ff
	rst  $20                                         ; $51ad: $e7
	ld   de, $aa14                                   ; $51ae: $11 $14 $aa
	ld   [hl], d                                     ; $51b1: $72
	ld   de, $ff2f                                   ; $51b2: $11 $2f $ff
	push af                                          ; $51b5: $f5
	ld   de, $bd15                                   ; $51b6: $11 $15 $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51b9: $cf
	rst  $38                                         ; $51ba: $ff
	db   $fc                                         ; $51bb: $fc
	ld   d, c                                        ; $51bc: $51
	ld   [de], a                                     ; $51bd: $12
	ld   a, e                                        ; $51be: $7b
	sub  [hl]                                        ; $51bf: $96
	ld   de, $ff15                                   ; $51c0: $11 $15 $ff
	cp   $41                                         ; $51c3: $fe $41
	inc  de                                          ; $51c5: $13
	ld   l, h                                        ; $51c6: $6c
	call c, $ffff                                    ; $51c7: $dc $ff $ff
	sub  h                                           ; $51ca: $94
	ld   de, $a949                                   ; $51cb: $11 $49 $a9
	ld   d, c                                        ; $51ce: $51
	ld   de, $ff6f                                   ; $51cf: $11 $6f $ff
	jp   nc, $3711                                   ; $51d2: $d2 $11 $37

	call c, $ffdf                                    ; $51d5: $dc $df $ff
	add  sp, $31                                     ; $51d8: $e8 $31
	inc  h                                           ; $51da: $24
	sbc  d                                           ; $51db: $9a
	add  e                                           ; $51dc: $83
	ld   de, $ff18                                   ; $51dd: $11 $18 $ff
	ld   a, [$1411]                                  ; $51e0: $fa $11 $14
	sbc  h                                           ; $51e3: $9c
	call $fdff                                       ; $51e4: $cd $ff $fd
	ld   [hl], e                                     ; $51e7: $73
	ld   [de], a                                     ; $51e8: $12
	ld   l, d                                        ; $51e9: $6a
	or   a                                           ; $51ea: $b7
	ld   hl, $bf11                                   ; $51eb: $21 $11 $bf
	rst  $38                                         ; $51ee: $ff
	and  c                                           ; $51ef: $a1
	ld   de, $cc49                                   ; $51f0: $11 $49 $cc
	rst  $28                                         ; $51f3: $ef
	rst  $38                                         ; $51f4: $ff
	sub  $21                                         ; $51f5: $d6 $21
	ld   h, $aa                                      ; $51f7: $26 $aa
	ld   [hl], c                                     ; $51f9: $71
	ld   de, $ff1d                                   ; $51fa: $11 $1d $ff
	rst  $30                                         ; $51fd: $f7
	ld   de, $ad15                                   ; $51fe: $11 $15 $ad
	sbc  $ff                                         ; $5201: $de $ff
	ld   a, [$1342]                                  ; $5203: $fa $42 $13
	ld   a, e                                        ; $5206: $7b
	and  l                                           ; $5207: $a5
	ld   de, rAUD1HIGH                                   ; $5208: $11 $14 $ff
	cp   $41                                         ; $520b: $fe $41
	ld   [de], a                                     ; $520d: $12
	ld   a, h                                        ; $520e: $7c
	db   $dd                                         ; $520f: $dd
	rst  $38                                         ; $5210: $ff
	rst  $38                                         ; $5211: $ff
	add  e                                           ; $5212: $83
	ld   de, $b948                                   ; $5213: $11 $48 $b9
	ld   b, c                                        ; $5216: $41
	ld   de, $ff9f                                   ; $5217: $11 $9f $ff
	and  c                                           ; $521a: $a1
	ld   de, $dd49                                   ; $521b: $11 $49 $dd
	xor  $ff                                         ; $521e: $ee $ff
	push de                                          ; $5220: $d5
	ld   hl, $ab26                                   ; $5221: $21 $26 $ab
	ld   [hl], c                                     ; $5224: $71
	ld   de, $ff3f                                   ; $5225: $11 $3f $ff
	db   $f4                                         ; $5228: $f4
	ld   de, $dd17                                   ; $5229: $11 $17 $dd
	sbc  $ff                                         ; $522c: $de $ff
	ld   hl, sp+$31                                  ; $522e: $f8 $31
	inc  de                                          ; $5230: $13
	sbc  h                                           ; $5231: $9c
	sub  h                                           ; $5232: $94
	ld   de, $ff1b                                   ; $5233: $11 $1b $ff
	rst  $30                                         ; $5236: $f7
	ld   de, $be16                                   ; $5237: $11 $16 $be
	sbc  $ff                                         ; $523a: $de $ff
	ld   a, [$1241]                                  ; $523c: $fa $41 $12
	ld   a, e                                        ; $523f: $7b
	or   [hl]                                        ; $5240: $b6
	ld   de, $ff16                                   ; $5241: $11 $16 $ff
	db   $fc                                         ; $5244: $fc
	ld   hl, $ad13                                   ; $5245: $21 $13 $ad
	db   $dd                                         ; $5248: $dd
	rst  $28                                         ; $5249: $ef
	db   $fd                                         ; $524a: $fd
	ld   h, d                                        ; $524b: $62
	ld   de, $a75a                                   ; $524c: $11 $5a $a7
	ld   de, $ff15                                   ; $524f: $11 $15 $ff
	ei                                               ; $5252: $fb
	ld   de, $ae13                                   ; $5253: $11 $13 $ae
	db   $ed                                         ; $5256: $ed
	rst  $38                                         ; $5257: $ff
	db   $fd                                         ; $5258: $fd
	ld   h, c                                        ; $5259: $61
	ld   de, $b65a                                   ; $525a: $11 $5a $b6
	ld   bc, $ff16                                   ; $525d: $01 $16 $ff
	ei                                               ; $5260: $fb
	ld   de, $ae13                                   ; $5261: $11 $13 $ae
	sbc  $ff                                         ; $5264: $de $ff
	cp   $71                                         ; $5266: $fe $71
	ld   de, $a65b                                   ; $5268: $11 $5b $a6
	ld   de, $ff17                                   ; $526b: $11 $17 $ff
	ld   a, [$1411]                                  ; $526e: $fa $11 $14
	xor  [hl]                                        ; $5271: $ae
	xor  $ef                                         ; $5272: $ee $ef
	db   $fc                                         ; $5274: $fc
	ld   h, c                                        ; $5275: $61
	ld   de, $946b                                   ; $5276: $11 $6b $94
	ld   de, $ff1a                                   ; $5279: $11 $1a $ff
	ld   hl, sp+$11                                  ; $527c: $f8 $11
	dec  d                                           ; $527e: $15
	cp   [hl]                                        ; $527f: $be
	sbc  $ef                                         ; $5280: $de $ef
	ld   a, [$1351]                                  ; $5282: $fa $51 $13
	ld   a, e                                        ; $5285: $7b
	ld   [hl], d                                     ; $5286: $72
	ld   de, $ff3d                                   ; $5287: $11 $3d $ff
	db   $f4                                         ; $528a: $f4
	ld   de, $df17                                   ; $528b: $11 $17 $df
	rst  $28                                         ; $528e: $ef
	rst  $38                                         ; $528f: $ff
	rst  $20                                         ; $5290: $e7
	ld   sp, $9a15                                   ; $5291: $31 $15 $9a
	ld   d, c                                        ; $5294: $51
	ld   de, $ff9f                                   ; $5295: $11 $9f $ff

Jump_0b2_5298:
	add  c                                           ; $5298: $81
	ld   de, $fe5b                                   ; $5299: $11 $5b $fe
	rst  $28                                         ; $529c: $ef
	rst  $38                                         ; $529d: $ff
	or   h                                           ; $529e: $b4
	ld   de, $b738                                   ; $529f: $11 $38 $b7
	ld   de, $ff15                                   ; $52a2: $11 $15 $ff
	ei                                               ; $52a5: $fb
	ld   de, $9e13                                   ; $52a6: $11 $13 $9e
	cp   $ff                                         ; $52a9: $fe $ff
	db   $fc                                         ; $52ab: $fc
	ld   h, c                                        ; $52ac: $61
	ld   de, $936a                                   ; $52ad: $11 $6a $93
	ld   de, $ff3f                                   ; $52b0: $11 $3f $ff
	ldh  [c], a                                      ; $52b3: $e2
	ld   de, $ef28                                   ; $52b4: $11 $28 $ef
	rst  $28                                         ; $52b7: $ef

Call_0b2_52b8:
	rst  $38                                         ; $52b8: $ff
	rst  $30                                         ; $52b9: $f7
	ld   de, $9a15                                   ; $52ba: $11 $15 $9a
	ld   b, c                                        ; $52bd: $41
	inc  de                                          ; $52be: $13
	rst  $38                                         ; $52bf: $ff
	cp   $21                                         ; $52c0: $fe $21
	ld   de, $ff8e                                   ; $52c2: $11 $8e $ff
	rst  $38                                         ; $52c5: $ff
	cp   $71                                         ; $52c6: $fe $71
	ld   de, $8448                                   ; $52c8: $11 $48 $84
	ld   de, $ff4f                                   ; $52cb: $11 $4f $ff
	pop  bc                                          ; $52ce: $c1
	ld   de, $ff28                                   ; $52cf: $11 $28 $ff
	rst  $38                                         ; $52d2: $ff
	rst  $38                                         ; $52d3: $ff
	sub  $11                                         ; $52d4: $d6 $11
	inc  de                                          ; $52d6: $13
	ld   a, c                                        ; $52d7: $79
	ld   b, c                                        ; $52d8: $41
	rla                                              ; $52d9: $17
	rst  $38                                         ; $52da: $ff
	ld   sp, hl                                      ; $52db: $f9
	ld   de, $bf15                                   ; $52dc: $11 $15 $bf
	rst  $38                                         ; $52df: $ff
	rst  $38                                         ; $52e0: $ff
	db   $fc                                         ; $52e1: $fc
	ld   b, c                                        ; $52e2: $41
	ld   de, $6259                                   ; $52e3: $11 $59 $62
	ld   [de], a                                     ; $52e6: $12
	rst  $28                                         ; $52e7: $ef
	rst  $38                                         ; $52e8: $ff
	ld   sp, $7e11                                   ; $52e9: $31 $11 $7e
	rst  $38                                         ; $52ec: $ff
	rst  $38                                         ; $52ed: $ff
	rst  $38                                         ; $52ee: $ff
	sub  c                                           ; $52ef: $91
	ld   de, $8715                                   ; $52f0: $11 $15 $87
	ld   hl, $ff9f                                   ; $52f3: $21 $9f $ff
	add  c                                           ; $52f6: $81
	ld   de, $ff5c                                   ; $52f7: $11 $5c $ff
	rst  $38                                         ; $52fa: $ff
	rst  $38                                         ; $52fb: $ff
	call nz, $1211                                   ; $52fc: $c4 $11 $12
	ld   [hl], a                                     ; $52ff: $77
	ld   b, c                                        ; $5300: $41
	adc  a                                           ; $5301: $8f
	rst  $38                                         ; $5302: $ff
	or   c                                           ; $5303: $b1
	ld   de, $ff2b                                   ; $5304: $11 $2b $ff
	rst  $38                                         ; $5307: $ff
	rst  $38                                         ; $5308: $ff
	push hl                                          ; $5309: $e5
	ld   de, $6811                                   ; $530a: $11 $11 $68
	ld   b, c                                        ; $530d: $41
	sbc  a                                           ; $530e: $9f
	rst  $38                                         ; $530f: $ff
	or   c                                           ; $5310: $b1
	ld   de, $ff3d                                   ; $5311: $11 $3d $ff
	rst  $38                                         ; $5314: $ff
	rst  $38                                         ; $5315: $ff
	call nc, $1311                                   ; $5316: $d4 $11 $13
	ld   a, b                                        ; $5319: $78
	ld   hl, $ffbf                                   ; $531a: $21 $bf $ff
	ld   [hl], c                                     ; $531d: $71
	ld   de, $ff6f                                   ; $531e: $11 $6f $ff
	rst  $38                                         ; $5321: $ff
	rst  $38                                         ; $5322: $ff
	or   c                                           ; $5323: $b1
	ld   de, $9816                                   ; $5324: $11 $16 $98
	dec  [hl]                                        ; $5327: $35
	rst  $28                                         ; $5328: $ef
	db   $fd                                         ; $5329: $fd
	ld   de, $df11                                   ; $532a: $11 $11 $df
	rst  $38                                         ; $532d: $ff
	rst  $38                                         ; $532e: $ff
	ei                                               ; $532f: $fb
	ld   hl, $5b11                                   ; $5330: $21 $11 $5b
	sub  d                                           ; $5333: $92
	ld   c, l                                        ; $5334: $4d
	rst  $38                                         ; $5335: $ff
	pop  af                                          ; $5336: $f1
	ld   de, $ff1d                                   ; $5337: $11 $1d $ff
	rst  $38                                         ; $533a: $ff
	rst  $38                                         ; $533b: $ff
	pop  bc                                          ; $533c: $c1
	ld   de, $d818                                   ; $533d: $11 $18 $d8
	ld   [de], a                                     ; $5340: $12
	rst  $38                                         ; $5341: $ff
	rst  $38                                         ; $5342: $ff
	ld   de, rAUD1LEN                                   ; $5343: $11 $11 $ff
	rst  $38                                         ; $5346: $ff
	rst  $38                                         ; $5347: $ff
	or   $11                                         ; $5348: $f6 $11
	ld   de, $83ff                                   ; $534a: $11 $ff $83
	sbc  a                                           ; $534d: $9f
	rst  $38                                         ; $534e: $ff
	ld   sp, $bf11                                   ; $534f: $31 $11 $bf
	rst  $38                                         ; $5352: $ff
	rst  $38                                         ; $5353: $ff
	and  $11                                         ; $5354: $e6 $11
	ld   de, $82cf                                   ; $5356: $11 $cf $82
	xor  a                                           ; $5359: $af
	rst  $38                                         ; $535a: $ff
	ld   b, c                                        ; $535b: $41
	ld   de, $ffaf                                   ; $535c: $11 $af $ff
	rst  $38                                         ; $535f: $ff
	sub  c                                           ; $5360: $91
	ld   de, $ef11                                   ; $5361: $11 $11 $ef
	ld   b, h                                        ; $5364: $44
	rst  $38                                         ; $5365: $ff
	rst  $38                                         ; $5366: $ff
	ld   de, rAUD1LEN                                   ; $5367: $11 $11 $ff
	rst  $38                                         ; $536a: $ff
	db   $fd                                         ; $536b: $fd
	ld   de, $1811                                   ; $536c: $11 $11 $18
	ret  c                                           ; $536f: $d8

	rra                                              ; $5370: $1f
	rst  $38                                         ; $5371: $ff
	pop  af                                          ; $5372: $f1
	ld   de, $ff1c                                   ; $5373: $11 $1c $ff
	rst  $38                                         ; $5376: $ff
	pop  de                                          ; $5377: $d1
	ld   de, $5611                                   ; $5378: $11 $11 $56
	ld   de, $ffff                                   ; $537b: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $537e: $11 $11 $ff
	rst  $38                                         ; $5381: $ff
	ld   sp, hl                                      ; $5382: $f9
	ld   de, $1311                                   ; $5383: $11 $11 $13
	ld   de, $ffff                                   ; $5386: $11 $ff $ff
	ld   hl, $8f11                                   ; $5389: $21 $11 $8f
	rst  $38                                         ; $538c: $ff
	rst  $38                                         ; $538d: $ff
	ld   d, c                                        ; $538e: $51
	ld   de, $1111                                   ; $538f: $11 $11 $11
	rst  $38                                         ; $5392: $ff
	rst  $38                                         ; $5393: $ff
	sub  c                                           ; $5394: $91
	ld   de, $ff4f                                   ; $5395: $11 $4f $ff
	rst  $38                                         ; $5398: $ff
	and  c                                           ; $5399: $a1
	ld   de, $1111                                   ; $539a: $11 $11 $11
	rst  $38                                         ; $539d: $ff
	rst  $38                                         ; $539e: $ff
	ld   d, c                                        ; $539f: $51
	ld   de, $ff3f                                   ; $53a0: $11 $3f $ff
	rst  $38                                         ; $53a3: $ff
	sub  c                                           ; $53a4: $91
	ld   de, $1f11                                   ; $53a5: $11 $11 $1f
	rst  $38                                         ; $53a8: $ff
	rst  $38                                         ; $53a9: $ff
	ld   de, $8f11                                   ; $53aa: $11 $11 $8f
	rst  $38                                         ; $53ad: $ff
	db   $fd                                         ; $53ae: $fd
	ld   de, $1111                                   ; $53af: $11 $11 $11
	rst  $38                                         ; $53b2: $ff
	rst  $38                                         ; $53b3: $ff
	sub  c                                           ; $53b4: $91
	ld   de, $ff1d                                   ; $53b5: $11 $1d $ff
	rst  $38                                         ; $53b8: $ff
	add  c                                           ; $53b9: $81
	ld   de, rAUD1LEN                                   ; $53ba: $11 $11 $ff
	rst  $38                                         ; $53bd: $ff
	sub  c                                           ; $53be: $91
	ld   de, $ff1a                                   ; $53bf: $11 $1a $ff
	rst  $38                                         ; $53c2: $ff
	add  c                                           ; $53c3: $81
	ld   de, rAUD1HIGH                                   ; $53c4: $11 $14 $ff
	rst  $38                                         ; $53c7: $ff
	ld   sp, $1a11                                   ; $53c8: $31 $11 $1a
	rst  $38                                         ; $53cb: $ff
	rst  $38                                         ; $53cc: $ff
	ld   [hl], c                                     ; $53cd: $71
	ld   de, $ff15                                   ; $53ce: $11 $15 $ff
	rst  $38                                         ; $53d1: $ff
	ld   b, c                                        ; $53d2: $41
	ld   de, $ff19                                   ; $53d3: $11 $19 $ff
	rst  $38                                         ; $53d6: $ff
	add  c                                           ; $53d7: $81
	ld   de, $ff1a                                   ; $53d8: $11 $1a $ff
	rst  $38                                         ; $53db: $ff
	ld   sp, $1a11                                   ; $53dc: $31 $11 $1a
	rst  $38                                         ; $53df: $ff
	rst  $38                                         ; $53e0: $ff
	ld   b, c                                        ; $53e1: $41
	ld   de, $ff1f                                   ; $53e2: $11 $1f $ff
	cp   $11                                         ; $53e5: $fe $11
	ld   de, $ff5e                                   ; $53e7: $11 $5e $ff
	ei                                               ; $53ea: $fb
	ld   de, $8f11                                   ; $53eb: $11 $11 $8f
	rst  $38                                         ; $53ee: $ff
	db   $f4                                         ; $53ef: $f4
	ld   de, $8f12                                   ; $53f0: $11 $12 $8f
	rst  $38                                         ; $53f3: $ff
	di                                               ; $53f4: $f3
	ld   de, rAUD1LEN                                   ; $53f5: $11 $11 $ff
	rst  $38                                         ; $53f8: $ff
	or   c                                           ; $53f9: $b1
	ld   de, $df35                                   ; $53fa: $11 $35 $df
	rst  $38                                         ; $53fd: $ff
	sub  c                                           ; $53fe: $91
	ld   de, $ff1f                                   ; $53ff: $11 $1f $ff
	db   $fd                                         ; $5402: $fd
	ld   sp, $5d14                                   ; $5403: $31 $14 $5d
	rst  $38                                         ; $5406: $ff
	ld   sp, hl                                      ; $5407: $f9
	ld   de, $bf11                                   ; $5408: $11 $11 $bf
	rst  $38                                         ; $540b: $ff
	db   $f4                                         ; $540c: $f4
	ld   de, $ef07                                   ; $540d: $11 $07 $ef
	rst  $38                                         ; $5410: $ff
	and  c                                           ; $5411: $a1
	ld   de, $ff15                                   ; $5412: $11 $15 $ff
	rst  $38                                         ; $5415: $ff
	ld   [hl], c                                     ; $5416: $71
	ld   de, $fe4a                                   ; $5417: $11 $4a $fe
	cp   $11                                         ; $541a: $fe $11
	ld   de, $ff3f                                   ; $541c: $11 $3f $ff
	ld   a, [$1511]                                  ; $541f: $fa $11 $15
	sbc  a                                           ; $5422: $9f
	cp   $d1                                         ; $5423: $fe $d1
	ld   de, rAUD1LEN                                   ; $5425: $11 $11 $ff
	rst  $38                                         ; $5428: $ff
	pop  de                                          ; $5429: $d1
	ld   de, $ff3c                                   ; $542a: $11 $3c $ff
	cp   d                                           ; $542d: $ba
	ld   b, c                                        ; $542e: $41
	ld   de, $ff1d                                   ; $542f: $11 $1d $ff
	cp   $21                                         ; $5432: $fe $21
	inc  d                                           ; $5434: $14
	rst  $28                                         ; $5435: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5436: $cf
	add  c                                           ; $5437: $81
	ld   de, rAUD1LEN                                   ; $5438: $11 $11 $ff
	rst  $38                                         ; $543b: $ff
	or   e                                           ; $543c: $b3
	ld   de, $ff6b                                   ; $543d: $11 $6b $ff
	ld   sp, hl                                      ; $5440: $f9
	ld   hl, $1f11                                   ; $5441: $21 $11 $1f
	rst  $38                                         ; $5444: $ff
	db   $fd                                         ; $5445: $fd
	ld   sp, $8f11                                   ; $5446: $31 $11 $8f
	rst  $38                                         ; $5449: $ff
	jp   nz, $1111                                   ; $544a: $c2 $11 $11

	rst  $38                                         ; $544d: $ff
	rst  $38                                         ; $544e: $ff
	or   c                                           ; $544f: $b1
	ld   de, $dfaf                                   ; $5450: $11 $af $df
	db   $eb                                         ; $5453: $eb
	ld   de, $3f11                                   ; $5454: $11 $11 $3f
	rst  $38                                         ; $5457: $ff
	ld   sp, hl                                      ; $5458: $f9
	inc  h                                           ; $5459: $24
	dec  d                                           ; $545a: $15
	call Call_0b2_71ff                               ; $545b: $cd $ff $71
	ld   de, rAUD1ENV                                   ; $545e: $11 $12 $ff
	rst  $38                                         ; $5461: $ff
	or   d                                           ; $5462: $b2
	ld   de, $ff9f                                   ; $5463: $11 $9f $ff
	and  a                                           ; $5466: $a7
	ld   de, $6f11                                   ; $5467: $11 $11 $6f
	rst  $38                                         ; $546a: $ff
	ei                                               ; $546b: $fb
	ld   de, $fe1c                                   ; $546c: $11 $1c $fe
	ld   hl, sp+$31                                  ; $546f: $f8 $31
	ld   de, $ff18                                   ; $5471: $11 $18 $ff
	rst  $38                                         ; $5474: $ff
	ld   d, d                                        ; $5475: $52
	ld   b, c                                        ; $5476: $41
	sbc  l                                           ; $5477: $9d
	rst  $38                                         ; $5478: $ff
	ldh  [c], a                                      ; $5479: $e2
	ld   de, $ff16                                   ; $547a: $11 $16 $ff
	cp   $a8                                         ; $547d: $fe $a8
	inc  sp                                          ; $547f: $33
	ld   l, e                                        ; $5480: $6b
	rst  $38                                         ; $5481: $ff
	sbc  c                                           ; $5482: $99
	ld   de, $af11                                   ; $5483: $11 $11 $af
	rst  $38                                         ; $5486: $ff
	ld   hl, sp+$31                                  ; $5487: $f8 $31
	cpl                                              ; $5489: $2f
	ld   a, a                                        ; $548a: $7f
	jp   hl                                          ; $548b: $e9


	and  c                                           ; $548c: $a1
	ld   de, $ff3c                                   ; $548d: $11 $3c $ff
	xor  a                                           ; $5490: $af
	add  d                                           ; $5491: $82
	ld   d, d                                        ; $5492: $52
	adc  a                                           ; $5493: $8f
	db   $fd                                         ; $5494: $fd
	ld   h, c                                        ; $5495: $61
	ld   de, $ff1e                                   ; $5496: $11 $1e $ff
	rst  $38                                         ; $5499: $ff
	ld   [hl], h                                     ; $549a: $74
	ld   sp, $ffea                                   ; $549b: $31 $ea $ff
	ld   d, c                                        ; $549e: $51
	ld   de, $ff19                                   ; $549f: $11 $19 $ff
	rst  $38                                         ; $54a2: $ff
	jp   nc, $ff62                                   ; $54a3: $d2 $62 $ff

	cp   a                                           ; $54a6: $bf

Call_0b2_54a7:
	ld   h, c                                        ; $54a7: $61
	ld   de, $ef16                                   ; $54a8: $11 $16 $ef
	rst  $30                                         ; $54ab: $f7
	ld   hl, sp+$1b                                  ; $54ac: $f8 $1b
	ld   c, l                                        ; $54ae: $4d
	ld   a, [$11f1]                                  ; $54af: $fa $f1 $11
	dec  d                                           ; $54b2: $15
	rst  $38                                         ; $54b3: $ff
	rst  $38                                         ; $54b4: $ff
	sbc  e                                           ; $54b5: $9b
	rla                                              ; $54b6: $17
	jp   z, $f4fb                                    ; $54b7: $ca $fb $f4

	ld   de, rAUD1LEN                                   ; $54ba: $11 $11 $ff
	rst  $38                                         ; $54bd: $ff
	rst  $38                                         ; $54be: $ff
	ld   [hl], c                                     ; $54bf: $71
	dec  a                                           ; $54c0: $3d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54c1: $cf
	pop  af                                          ; $54c2: $f1
	ld   de, $8f13                                   ; $54c3: $11 $13 $8f
	rst  $38                                         ; $54c6: $ff
	pop  af                                          ; $54c7: $f1
	ld   c, l                                        ; $54c8: $4d
	ccf                                              ; $54c9: $3f
	ld   a, a                                        ; $54ca: $7f
	pop  bc                                          ; $54cb: $c1
	ld   de, $8f11                                   ; $54cc: $11 $11 $8f
	ld   a, [$1fff]                                  ; $54cf: $fa $ff $1f
	or   d                                           ; $54d2: $b2
	ld   a, [$11c7]                                  ; $54d3: $fa $c7 $11
	inc  de                                          ; $54d6: $13
	cp   a                                           ; $54d7: $bf
	rst  $38                                         ; $54d8: $ff
	ld   sp, hl                                      ; $54d9: $f9
	sub  c                                           ; $54da: $91
	xor  [hl]                                        ; $54db: $ae
	adc  a                                           ; $54dc: $8f
	ldh  a, [c]                                      ; $54dd: $f2
	ld   de, $dc12                                   ; $54de: $11 $12 $dc
	cp   $ff                                         ; $54e1: $fe $ff
	ld   b, l                                        ; $54e3: $45
	ld   e, $7e                                      ; $54e4: $1e $7e
	ldh  a, [c]                                      ; $54e6: $f2
	ld   de, $cf11                                   ; $54e7: $11 $11 $cf
	rst  $38                                         ; $54ea: $ff
	or   $17                                         ; $54eb: $f6 $17
	db   $dd                                         ; $54ed: $dd
	rst  ToBoot                                         ; $54ee: $c7
	db   $db                                         ; $54ef: $db
	ld   de, $ef11                                   ; $54f0: $11 $11 $ef
	rst  $38                                         ; $54f3: $ff
	rst  $38                                         ; $54f4: $ff
	ld   b, c                                        ; $54f5: $41
	cp   a                                           ; $54f6: $bf
	cp   $51                                         ; $54f7: $fe $51
	ld   de, $ba11                                   ; $54f9: $11 $11 $ba
	rst  $38                                         ; $54fc: $ff
	ld   sp, hl                                      ; $54fd: $f9
	ld   h, d                                        ; $54fe: $62
	xor  a                                           ; $54ff: $af
	xor  a                                           ; $5500: $af
	and  c                                           ; $5501: $a1
	ld   de, rAUD1ENV                                   ; $5502: $11 $12 $ff
	rst  $38                                         ; $5505: $ff
	db   $e4                                         ; $5506: $e4
	rla                                              ; $5507: $17
	xor  a                                           ; $5508: $af
	cp   $d1                                         ; $5509: $fe $d1
	ld   de, $af13                                   ; $550b: $11 $13 $af
	rst  $38                                         ; $550e: $ff
	ei                                               ; $550f: $fb
	ld   d, h                                        ; $5510: $54
	ld   e, e                                        ; $5511: $5b
	rst  $38                                         ; $5512: $ff
	or   c                                           ; $5513: $b1
	ld   de, $df17                                   ; $5514: $11 $17 $df
	rst  $38                                         ; $5517: $ff
	cp   $44                                         ; $5518: $fe $44
	reti                                             ; $551a: $d9


	ei                                               ; $551b: $fb
	ld   h, c                                        ; $551c: $61
	ld   de, $ff1b                                   ; $551d: $11 $1b $ff
	rst  $38                                         ; $5520: $ff
	ldh  a, [c]                                      ; $5521: $f2
	cp   c                                           ; $5522: $b9
	ld   e, l                                        ; $5523: $5d
	adc  $91                                         ; $5524: $ce $91
	ld   de, $ff1a                                   ; $5526: $11 $1a $ff
	rst  $38                                         ; $5529: $ff
	pop  af                                          ; $552a: $f1
	or   $3f                                         ; $552b: $f6 $3f
	ld   hl, sp+$41                                  ; $552d: $f8 $41
	ld   de, $ff1a                                   ; $552f: $11 $1a $ff
	rst  $38                                         ; $5532: $ff
	sub  a                                           ; $5533: $97
	call c, $fa8c                                    ; $5534: $dc $8c $fa
	ld   de, $7f11                                   ; $5537: $11 $11 $7f
	rst  $38                                         ; $553a: $ff
	rst  $38                                         ; $553b: $ff
	ld   [hl], e                                     ; $553c: $73
	ld   a, [$d57f]                                  ; $553d: $fa $7f $d5
	ld   de, $9f11                                   ; $5540: $11 $11 $9f
	rst  $38                                         ; $5543: $ff
	rst  $38                                         ; $5544: $ff
	ld   b, e                                        ; $5545: $43
	reti                                             ; $5546: $d9


	xor  a                                           ; $5547: $af
	sub  h                                           ; $5548: $94
	ld   de, $6f11                                   ; $5549: $11 $11 $6f
	rst  $38                                         ; $554c: $ff
	rst  $38                                         ; $554d: $ff
	ld   a, b                                        ; $554e: $78
	jp   z, $93af                                    ; $554f: $ca $af $93

	ld   de, rAUD1LEN                                   ; $5552: $11 $11 $ff
	rst  $38                                         ; $5555: $ff
	rst  $38                                         ; $5556: $ff
	ld   [hl], a                                     ; $5557: $77
	cp   b                                           ; $5558: $b8
	cp   $a1                                         ; $5559: $fe $a1
	ld   de, $ef15                                   ; $555b: $11 $15 $ef
	rst  $38                                         ; $555e: $ff
	rst  $28                                         ; $555f: $ef
	or   [hl]                                        ; $5560: $b6
	add  sp, -$21                                    ; $5561: $e8 $df
	ld   [hl], c                                     ; $5563: $71
	ld   de, $ff15                                   ; $5564: $11 $15 $ff
	rst  $38                                         ; $5567: $ff
	rst  $38                                         ; $5568: $ff
	ld   a, [$fe7c]                                  ; $5569: $fa $7c $fe
	sub  c                                           ; $556c: $91
	ld   de, $ff18                                   ; $556d: $11 $18 $ff
	rst  $38                                         ; $5570: $ff
	sbc  $ab                                         ; $5571: $de $ab
	ei                                               ; $5573: $fb
	db   $db                                         ; $5574: $db
	ld   de, $1611                                   ; $5575: $11 $11 $16
	rst  JumpTable                                         ; $5578: $df
	rst  $38                                         ; $5579: $ff
	db   $fc                                         ; $557a: $fc
	sbc  h                                           ; $557b: $9c
	cp   $cb                                         ; $557c: $fe $cb
	ld   sp, $1a11                                   ; $557e: $31 $11 $1a
	rst  $38                                         ; $5581: $ff
	rst  $38                                         ; $5582: $ff
	db   $ed                                         ; $5583: $ed
	rst  $38                                         ; $5584: $ff
	ld   [$31ad], a                                  ; $5585: $ea $ad $31
	ld   de, $ff16                                   ; $5588: $11 $16 $ff
	rst  $38                                         ; $558b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $558c: $cf
	rst  $38                                         ; $558d: $ff
	ret                                              ; $558e: $c9


	sbc  h                                           ; $558f: $9c
	ld   d, c                                        ; $5590: $51
	ld   de, $ef17                                   ; $5591: $11 $17 $ef
	rst  $38                                         ; $5594: $ff
	rst  $28                                         ; $5595: $ef
	cp   [hl]                                        ; $5596: $be
	cp   l                                           ; $5597: $bd
	db   $ed                                         ; $5598: $ed
	ld   d, c                                        ; $5599: $51
	ld   de, $df17                                   ; $559a: $11 $17 $df
	cp   $de                                         ; $559d: $fe $de
	cp   l                                           ; $559f: $bd
	set  7, [hl]                                     ; $55a0: $cb $fe
	ld   [hl], c                                     ; $55a2: $71
	ld   de, $af12                                   ; $55a3: $11 $12 $af
	rst  $38                                         ; $55a6: $ff
	jp   z, $cbab                                    ; $55a7: $ca $ab $cb

	adc  $b3                                         ; $55aa: $ce $b3
	ld   de, $8c11                                   ; $55ac: $11 $11 $8c
	rst  $38                                         ; $55af: $ff
	sbc  b                                           ; $55b0: $98
	sbc  c                                           ; $55b1: $99
	cp   d                                           ; $55b2: $ba
	call z, $22b7                                    ; $55b3: $cc $b7 $22
	ld   [de], a                                     ; $55b6: $12
	ld   l, d                                        ; $55b7: $6a
	db   $dd                                         ; $55b8: $dd
	and  a                                           ; $55b9: $a7
	ld   h, a                                        ; $55ba: $67
	adc  c                                           ; $55bb: $89
	adc  d                                           ; $55bc: $8a
	cp   c                                           ; $55bd: $b9
	add  h                                           ; $55be: $84
	ld   b, [hl]                                     ; $55bf: $46
	ld   l, c                                        ; $55c0: $69
	cp   e                                           ; $55c1: $bb
	ret                                              ; $55c2: $c9


	ld   h, l                                        ; $55c3: $65
	ld   d, [hl]                                     ; $55c4: $56
	ld   a, b                                        ; $55c5: $78
	xor  c                                           ; $55c6: $a9
	and  a                                           ; $55c7: $a7
	ld   d, a                                        ; $55c8: $57
	ld   a, b                                        ; $55c9: $78
	cp   l                                           ; $55ca: $bd
	res  2, l                                        ; $55cb: $cb $95
	inc  sp                                          ; $55cd: $33
	ld   d, [hl]                                     ; $55ce: $56
	ld   a, b                                        ; $55cf: $78
	adc  c                                           ; $55d0: $89
	ld   [hl], a                                     ; $55d1: $77
	adc  b                                           ; $55d2: $88
	cp   h                                           ; $55d3: $bc
	db   $dd                                         ; $55d4: $dd
	cp   b                                           ; $55d5: $b8
	ld   d, e                                        ; $55d6: $53
	ld   b, l                                        ; $55d7: $45
	ld   h, [hl]                                     ; $55d8: $66
	ld   h, a                                        ; $55d9: $67
	adc  b                                           ; $55da: $88
	adc  d                                           ; $55db: $8a
	xor  e                                           ; $55dc: $ab
	call z, $85ca                                    ; $55dd: $cc $ca $85
	inc  [hl]                                        ; $55e0: $34
	ld   b, h                                        ; $55e1: $44
	ld   d, l                                        ; $55e2: $55
	ld   a, b                                        ; $55e3: $78
	sbc  c                                           ; $55e4: $99
	sbc  h                                           ; $55e5: $9c
	call z, $b8db                                    ; $55e6: $cc $db $b8
	ld   d, e                                        ; $55e9: $53
	inc  [hl]                                        ; $55ea: $34
	ld   b, l                                        ; $55eb: $45
	ld   d, [hl]                                     ; $55ec: $56
	ld   a, b                                        ; $55ed: $78
	xor  h                                           ; $55ee: $ac
	call z, $bbdd                                    ; $55ef: $cc $dd $bb
	add  l                                           ; $55f2: $85
	inc  sp                                          ; $55f3: $33
	inc  [hl]                                        ; $55f4: $34
	ld   d, l                                        ; $55f5: $55
	ld   h, a                                        ; $55f6: $67
	xor  e                                           ; $55f7: $ab
	cp   h                                           ; $55f8: $bc
	call $a8db                                       ; $55f9: $cd $db $a8
	ld   h, e                                        ; $55fc: $63
	inc  sp                                          ; $55fd: $33
	inc  [hl]                                        ; $55fe: $34
	ld   b, l                                        ; $55ff: $45
	adc  c                                           ; $5600: $89
	cp   h                                           ; $5601: $bc
	call c, $cbcc                                    ; $5602: $dc $cc $cb
	sub  [hl]                                        ; $5605: $96
	ld   b, e                                        ; $5606: $43
	ld   [hl+], a                                    ; $5607: $22
	ld   b, h                                        ; $5608: $44
	ld   e, b                                        ; $5609: $58
	sbc  e                                           ; $560a: $9b
	cp   h                                           ; $560b: $bc
	cp   h                                           ; $560c: $bc
	res  7, c                                        ; $560d: $cb $b9
	ld   [hl], h                                     ; $560f: $74
	ld   [hl-], a                                    ; $5610: $32
	inc  hl                                          ; $5611: $23
	ld   d, l                                        ; $5612: $55
	ld   a, d                                        ; $5613: $7a
	cp   h                                           ; $5614: $bc
	call c, $bcbc                                    ; $5615: $dc $bc $bc
	xor  c                                           ; $5618: $a9
	ld   h, e                                        ; $5619: $63
	ld   [hl+], a                                    ; $561a: $22
	dec  [hl]                                        ; $561b: $35
	ld   d, [hl]                                     ; $561c: $56
	adc  d                                           ; $561d: $8a
	cp   e                                           ; $561e: $bb
	res  7, h                                        ; $561f: $cb $bc
	cp   h                                           ; $5621: $bc
	and  a                                           ; $5622: $a7
	ld   b, d                                        ; $5623: $42
	inc  hl                                          ; $5624: $23
	ld   d, l                                        ; $5625: $55
	ld   d, a                                        ; $5626: $57
	sbc  d                                           ; $5627: $9a
	cp   h                                           ; $5628: $bc
	set  3, h                                        ; $5629: $cb $dc
	cp   d                                           ; $562b: $ba
	add  l                                           ; $562c: $85
	ld   b, d                                        ; $562d: $42
	inc  hl                                          ; $562e: $23
	ld   d, l                                        ; $562f: $55
	ld   l, b                                        ; $5630: $68
	sbc  e                                           ; $5631: $9b
	cp   l                                           ; $5632: $bd
	call z, $b9cc                                    ; $5633: $cc $cc $b9
	ld   [hl], l                                     ; $5636: $75
	ld   [hl-], a                                    ; $5637: $32
	inc  h                                           ; $5638: $24
	ld   d, l                                        ; $5639: $55
	ld   a, b                                        ; $563a: $78
	sbc  e                                           ; $563b: $9b
	call $cbcc                                       ; $563c: $cd $cc $cb
	cp   c                                           ; $563f: $b9
	ld   h, h                                        ; $5640: $64
	ld   hl, $4524                                   ; $5641: $21 $24 $45
	adc  c                                           ; $5644: $89
	xor  l                                           ; $5645: $ad
	call $cccc                                       ; $5646: $cd $cc $cc
	and  a                                           ; $5649: $a7
	ld   b, e                                        ; $564a: $43
	ld   de, $4734                                   ; $564b: $11 $34 $47
	adc  e                                           ; $564e: $8b
	cp   l                                           ; $564f: $bd
	call $dbdc                                       ; $5650: $cd $dc $db
	add  l                                           ; $5653: $85
	ld   sp, $4412                                   ; $5654: $31 $12 $44
	ld   l, b                                        ; $5657: $68
	sbc  e                                           ; $5658: $9b
	sbc  $cd                                         ; $5659: $de $cd
	call z, Call_0b2_73c9                            ; $565b: $cc $c9 $73
	ld   de, $4503                                   ; $565e: $11 $03 $45
	ld   l, c                                        ; $5661: $69
	xor  h                                           ; $5662: $ac
	xor  $dc                                         ; $5663: $ee $dc
	call z, Call_0b2_52b8                            ; $5665: $cc $b8 $52
	ld   de, $5624                                   ; $5668: $11 $24 $56
	ld   a, d                                        ; $566b: $7a
	cp   [hl]                                        ; $566c: $be
	db   $dd                                         ; $566d: $dd
	call z, $96cc                                    ; $566e: $cc $cc $96
	ld   sp, $4511                                   ; $5671: $31 $11 $45
	ld   d, [hl]                                     ; $5674: $56
	adc  d                                           ; $5675: $8a
	sbc  $ed                                         ; $5676: $de $ed
	set  1, h                                        ; $5678: $cb $cc
	add  l                                           ; $567a: $85
	ld   sp, $5512                                   ; $567b: $31 $12 $55
	ld   h, [hl]                                     ; $567e: $66
	adc  e                                           ; $567f: $8b
	sbc  $dc                                         ; $5680: $de $dc
	call z, Call_0b2_74ba                            ; $5682: $cc $ba $74
	ld   hl, $5513                                   ; $5685: $21 $13 $55
	ld   h, a                                        ; $5688: $67
	xor  l                                           ; $5689: $ad
	xor  $dd                                         ; $568a: $ee $dd
	call c, Call_0b2_63c9                            ; $568c: $dc $c9 $63
	ld   de, $5513                                   ; $568f: $11 $13 $55
	ld   l, c                                        ; $5692: $69
	cp   l                                           ; $5693: $bd
	db   $ed                                         ; $5694: $ed

Call_0b2_5695:
	call c, $a7dc                                    ; $5695: $dc $dc $a7
	ld   b, d                                        ; $5698: $42
	ld   de, $5624                                   ; $5699: $11 $24 $56
	ld   a, c                                        ; $569c: $79
	sbc  $ee                                         ; $569d: $de $ee
	db   $dd                                         ; $569f: $dd
	call c, $31a6                                    ; $56a0: $dc $a6 $31
	ld   de, $5635                                   ; $56a3: $11 $35 $56
	adc  e                                           ; $56a6: $8b
	xor  $ed                                         ; $56a7: $ee $ed
	call z, $84dc                                    ; $56a9: $cc $dc $84
	ld   hl, $4511                                   ; $56ac: $21 $11 $45
	ld   h, [hl]                                     ; $56af: $66
	adc  h                                           ; $56b0: $8c
	rst  $38                                         ; $56b1: $ff
	sbc  $dc                                         ; $56b2: $de $dc
	jp   c, $1163                                    ; $56b4: $da $63 $11

	ld   [de], a                                     ; $56b7: $12
	ld   b, l                                        ; $56b8: $45
	ld   h, a                                        ; $56b9: $67
	xor  l                                           ; $56ba: $ad
	cp   $dd                                         ; $56bb: $fe $dd
	call $53c9                                       ; $56bd: $cd $c9 $53
	ld   de, $4513                                   ; $56c0: $11 $13 $45
	ld   h, a                                        ; $56c3: $67
	cp   [hl]                                        ; $56c4: $be
	cp   $ed                                         ; $56c5: $fe $ed
	call $42c8                                       ; $56c7: $cd $c8 $42
	ld   de, $5613                                   ; $56ca: $11 $13 $56
	ld   l, b                                        ; $56cd: $68
	adc  $fd                                         ; $56ce: $ce $fd
	call c, $b7de                                    ; $56d0: $dc $de $b7
	ld   b, c                                        ; $56d3: $41
	ld   de, $5613                                   ; $56d4: $11 $13 $56
	ld   a, c                                        ; $56d7: $79
	rst  JumpTable                                         ; $56d8: $df
	xor  $dc                                         ; $56d9: $ee $dc
	sbc  $a6                                         ; $56db: $de $a6
	ld   sp, $2311                                   ; $56dd: $31 $11 $23
	ld   d, [hl]                                     ; $56e0: $56
	ld   a, d                                        ; $56e1: $7a
	xor  $ed                                         ; $56e2: $ee $ed
	call c, $a5ee                                    ; $56e4: $dc $ee $a5
	ld   sp, $2311                                   ; $56e7: $31 $11 $23
	ld   d, [hl]                                     ; $56ea: $56
	ld   a, e                                        ; $56eb: $7b
	xor  $ed                                         ; $56ec: $ee $ed
	db   $db                                         ; $56ee: $db
	xor  $a5                                         ; $56ef: $ee $a5
	ld   hl, $2311                                   ; $56f1: $21 $11 $23
	ld   b, a                                        ; $56f4: $47
	adc  d                                           ; $56f5: $8a
	xor  $dc                                         ; $56f6: $ee $dc
	db   $db                                         ; $56f8: $db
	rst  $28                                         ; $56f9: $ef
	and  l                                           ; $56fa: $a5
	ld   hl, $3311                                   ; $56fb: $21 $11 $33
	ld   b, [hl]                                     ; $56fe: $46
	adc  d                                           ; $56ff: $8a
	rst  $28                                         ; $5700: $ef
	call c, $dedb                                    ; $5701: $dc $db $de
	or   l                                           ; $5704: $b5
	ld   hl, $3211                                   ; $5705: $21 $11 $32
	ld   [hl], $8a                                   ; $5708: $36 $8a
	rst  $28                                         ; $570a: $ef
	call c, $dfcc                                    ; $570b: $dc $cc $df
	or   l                                           ; $570e: $b5
	ld   hl, $3211                                   ; $570f: $21 $11 $32
	ld   [hl], $9b                                   ; $5712: $36 $9b
	rst  $28                                         ; $5714: $ef
	db   $db                                         ; $5715: $db
	call z, $d5cf                                    ; $5716: $cc $cf $d5
	ld   hl, $3311                                   ; $5719: $21 $11 $33
	dec  h                                           ; $571c: $25
	sbc  e                                           ; $571d: $9b
	rst  JumpTable                                         ; $571e: $df
	call c, $cfcb                                    ; $571f: $dc $cb $cf
	rst  $30                                         ; $5722: $f7
	ld   hl, $3411                                   ; $5723: $21 $11 $34
	inc  de                                          ; $5726: $13
	ld   a, d                                        ; $5727: $7a
	rst  JumpTable                                         ; $5728: $df
	ei                                               ; $5729: $fb
	cp   e                                           ; $572a: $bb
	cp   [hl]                                        ; $572b: $be
	ld   a, [$1131]                                  ; $572c: $fa $31 $11
	inc  [hl]                                        ; $572f: $34
	ld   hl, $df69                                   ; $5730: $21 $69 $df
	db   $fc                                         ; $5733: $fc
	cp   e                                           ; $5734: $bb
	xor  h                                           ; $5735: $ac
	cp   $51                                         ; $5736: $fe $51
	ld   de, $3124                                   ; $5738: $11 $24 $31
	scf                                              ; $573b: $37
	xor  a                                           ; $573c: $af
	cp   $ba                                         ; $573d: $fe $ba
	xor  e                                           ; $573f: $ab
	rst  $28                                         ; $5740: $ef
	and  e                                           ; $5741: $a3
	ld   de, $4213                                   ; $5742: $11 $13 $42
	dec  d                                           ; $5745: $15
	adc  h                                           ; $5746: $8c
	rst  $38                                         ; $5747: $ff
	jp   z, $cfba                                    ; $5748: $ca $ba $cf

	rst  $30                                         ; $574b: $f7
	ld   de, $3412                                   ; $574c: $11 $12 $34
	ld   [hl+], a                                    ; $574f: $22
	ld   l, d                                        ; $5750: $6a
	rst  $28                                         ; $5751: $ef
	db   $fc                                         ; $5752: $fc
	xor  e                                           ; $5753: $ab
	cp   h                                           ; $5754: $bc
	cp   $51                                         ; $5755: $fe $51
	ld   de, $4123                                   ; $5757: $11 $23 $41
	ld   [hl], $bf                                   ; $575a: $36 $bf
	rst  $38                                         ; $575c: $ff
	jp   z, $bfbb                                    ; $575d: $ca $bb $bf

	push de                                          ; $5760: $d5
	ld   de, $3411                                   ; $5761: $11 $11 $34
	inc  hl                                          ; $5764: $23
	ld   a, e                                        ; $5765: $7b
	rst  $38                                         ; $5766: $ff
	db   $fc                                         ; $5767: $fc
	xor  d                                           ; $5768: $aa
	xor  e                                           ; $5769: $ab
	db   $fc                                         ; $576a: $fc
	ld   d, c                                        ; $576b: $51
	ld   de, $4213                                   ; $576c: $11 $13 $42
	ld   b, a                                        ; $576f: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5770: $cf
	rst  $38                                         ; $5771: $ff
	ret  z                                           ; $5772: $c8

	ld   [hl], h                                     ; $5773: $74
	ld   a, [hl]                                     ; $5774: $7e
	ret  z                                           ; $5775: $c8

	ld   sp, $6a23                                   ; $5776: $31 $23 $6a
	ld   a, c                                        ; $5779: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $577a: $cf
	rst  $38                                         ; $577b: $ff
	db   $e3                                         ; $577c: $e3
	ld   de, $ad11                                   ; $577d: $11 $11 $ad
	ei                                               ; $5780: $fb
	ld   l, [hl]                                     ; $5781: $6e
	rst  $38                                         ; $5782: $ff
	rst  $38                                         ; $5783: $ff
	db   $ed                                         ; $5784: $ed
	rst  $38                                         ; $5785: $ff
	ld   hl, sp+$11                                  ; $5786: $f8 $11
	ld   de, $ff1f                                   ; $5788: $11 $1f $ff
	xor  a                                           ; $578b: $af
	rst  $38                                         ; $578c: $ff
	rst  $38                                         ; $578d: $ff
	ld   [hl], l                                     ; $578e: $75
	xor  a                                           ; $578f: $af
	db   $fc                                         ; $5790: $fc
	ld   de, $1f11                                   ; $5791: $11 $11 $1f
	rst  $38                                         ; $5794: $ff
	jp   hl                                          ; $5795: $e9


	rst  $38                                         ; $5796: $ff
	rst  $38                                         ; $5797: $ff
	ld   d, c                                        ; $5798: $51
	cpl                                              ; $5799: $2f
	rst  $38                                         ; $579a: $ff
	ld   hl, $1f11                                   ; $579b: $21 $11 $1f
	rst  $38                                         ; $579e: $ff
	rst  $30                                         ; $579f: $f7
	rst  $38                                         ; $57a0: $ff
	rst  $38                                         ; $57a1: $ff
	ld   h, c                                        ; $57a2: $61
	ld   a, [de]                                     ; $57a3: $1a
	rst  $38                                         ; $57a4: $ff
	add  c                                           ; $57a5: $81
	ld   de, rAUD1HIGH                                   ; $57a6: $11 $14 $ff
	cp   $ff                                         ; $57a9: $fe $ff
	rst  $38                                         ; $57ab: $ff
	and  c                                           ; $57ac: $a1
	ld   de, $e1ff                                   ; $57ad: $11 $ff $e1
	ld   de, rAUD1LEN                                   ; $57b0: $11 $11 $ff
	rst  $38                                         ; $57b3: $ff
	rst  $38                                         ; $57b4: $ff
	rst  $38                                         ; $57b5: $ff
	pop  af                                          ; $57b6: $f1
	ld   de, $f7cf                                   ; $57b7: $11 $cf $f7
	ld   de, $1f11                                   ; $57ba: $11 $11 $1f
	rst  $38                                         ; $57bd: $ff
	rst  $38                                         ; $57be: $ff
	rst  $38                                         ; $57bf: $ff
	push af                                          ; $57c0: $f5
	ld   de, $ff1e                                   ; $57c1: $11 $1e $ff
	ld   d, c                                        ; $57c4: $51
	ld   de, $ef11                                   ; $57c5: $11 $11 $ef
	rst  $38                                         ; $57c8: $ff
	rst  $38                                         ; $57c9: $ff
	rst  $38                                         ; $57ca: $ff
	ld   b, c                                        ; $57cb: $41
	ld   de, $f6ef                                   ; $57cc: $11 $ef $f6
	ld   de, $1711                                   ; $57cf: $11 $11 $17
	rst  $38                                         ; $57d2: $ff
	rst  $38                                         ; $57d3: $ff
	rst  $38                                         ; $57d4: $ff
	ldh  a, [c]                                      ; $57d5: $f2
	ld   de, $ff1a                                   ; $57d6: $11 $1a $ff
	or   c                                           ; $57d9: $b1
	ld   de, $1f11                                   ; $57da: $11 $11 $1f
	rst  $38                                         ; $57dd: $ff
	rst  $38                                         ; $57de: $ff
	rst  $38                                         ; $57df: $ff
	ld   h, c                                        ; $57e0: $61
	ld   de, $ff2f                                   ; $57e1: $11 $2f $ff
	ld   h, c                                        ; $57e4: $61
	ld   de, rAUD1LEN                                   ; $57e5: $11 $11 $ff
	rst  $38                                         ; $57e8: $ff
	rst  $38                                         ; $57e9: $ff
	ei                                               ; $57ea: $fb
	ld   de, rAUD1LEN                                   ; $57eb: $11 $11 $ff
	db   $fd                                         ; $57ee: $fd
	ld   de, $1111                                   ; $57ef: $11 $11 $11
	rst  $38                                         ; $57f2: $ff
	rst  $38                                         ; $57f3: $ff
	rst  $38                                         ; $57f4: $ff
	pop  af                                          ; $57f5: $f1
	ld   de, $ff16                                   ; $57f6: $11 $16 $ff
	rst  $30                                         ; $57f9: $f7
	ld   de, $1611                                   ; $57fa: $11 $11 $16
	rst  $38                                         ; $57fd: $ff
	rst  $38                                         ; $57fe: $ff
	rst  $38                                         ; $57ff: $ff
	pop  de                                          ; $5800: $d1
	ld   de, $ff1f                                   ; $5801: $11 $1f $ff
	pop  af                                          ; $5804: $f1
	ld   de, $1911                                   ; $5805: $11 $11 $19
	rst  $38                                         ; $5808: $ff
	rst  $38                                         ; $5809: $ff
	rst  $38                                         ; $580a: $ff
	ld   h, c                                        ; $580b: $61
	ld   de, $ff2f                                   ; $580c: $11 $2f $ff
	pop  af                                          ; $580f: $f1
	ld   de, $1d11                                   ; $5810: $11 $11 $1d
	rst  $38                                         ; $5813: $ff
	rst  $38                                         ; $5814: $ff
	rst  $38                                         ; $5815: $ff
	ld   sp, $4f11                                   ; $5816: $31 $11 $4f
	rst  $38                                         ; $5819: $ff
	pop  af                                          ; $581a: $f1
	ld   de, $1511                                   ; $581b: $11 $11 $15
	rst  $38                                         ; $581e: $ff
	rst  $38                                         ; $581f: $ff
	ei                                               ; $5820: $fb
	ld   b, c                                        ; $5821: $41
	ld   de, $ff2f                                   ; $5822: $11 $2f $ff
	pop  af                                          ; $5825: $f1
	ld   de, $1111                                   ; $5826: $11 $11 $11
	rst  $38                                         ; $5829: $ff
	rst  $38                                         ; $582a: $ff
	ld   sp, hl                                      ; $582b: $f9
	ld   d, c                                        ; $582c: $51
	ld   de, $ff1e                                   ; $582d: $11 $1e $ff
	rst  $30                                         ; $5830: $f7
	ld   de, $1111                                   ; $5831: $11 $11 $11
	rst  $38                                         ; $5834: $ff
	rst  $38                                         ; $5835: $ff
	rst  $30                                         ; $5836: $f7
	ld   hl, $2a11                                   ; $5837: $21 $11 $2a
	rst  $38                                         ; $583a: $ff
	cp   $11                                         ; $583b: $fe $11
	ld   de, $1f11                                   ; $583d: $11 $11 $1f
	rst  $38                                         ; $5840: $ff
	rst  $38                                         ; $5841: $ff
	ld   de, $1211                                   ; $5842: $11 $11 $12
	rst  $38                                         ; $5845: $ff
	rst  $38                                         ; $5846: $ff
	add  c                                           ; $5847: $81
	ld   de, $1111                                   ; $5848: $11 $11 $11
	rst  $38                                         ; $584b: $ff
	rst  $38                                         ; $584c: $ff
	and  c                                           ; $584d: $a1
	ld   de, $6f11                                   ; $584e: $11 $11 $6f
	rst  $38                                         ; $5851: $ff
	or   $11                                         ; $5852: $f6 $11
	ld   de, $1f11                                   ; $5854: $11 $11 $1f
	rst  $38                                         ; $5857: $ff
	cp   $11                                         ; $5858: $fe $11
	ld   de, $ff15                                   ; $585a: $11 $15 $ff
	rst  $38                                         ; $585d: $ff
	pop  bc                                          ; $585e: $c1
	ld   de, $1111                                   ; $585f: $11 $11 $11
	rra                                              ; $5862: $1f
	rst  $38                                         ; $5863: $ff
	pop  af                                          ; $5864: $f1
	ld   de, $7811                                   ; $5865: $11 $11 $78
	rst  $38                                         ; $5868: $ff
	rst  $38                                         ; $5869: $ff
	ld   d, c                                        ; $586a: $51
	ld   de, $1111                                   ; $586b: $11 $11 $11
	rra                                              ; $586e: $1f
	rst  $38                                         ; $586f: $ff
	pop  af                                          ; $5870: $f1
	ld   de, $7611                                   ; $5871: $11 $11 $76
	rst  $38                                         ; $5874: $ff
	rst  $38                                         ; $5875: $ff
	ld   h, c                                        ; $5876: $61
	ld   de, $1111                                   ; $5877: $11 $11 $11
	inc  d                                           ; $587a: $14
	rst  $38                                         ; $587b: $ff
	rst  $38                                         ; $587c: $ff
	ld   de, $1594                                   ; $587d: $11 $94 $15
	rra                                              ; $5880: $1f
	rst  $38                                         ; $5881: $ff
	pop  af                                          ; $5882: $f1
	ld   de, $6166                                   ; $5883: $11 $66 $61
	ld   de, $ff1f                                   ; $5886: $11 $1f $ff
	db   $f4                                         ; $5889: $f4
	dec  de                                          ; $588a: $1b
	and  c                                           ; $588b: $a1
	ld   de, $ff8f                                   ; $588c: $11 $8f $ff
	sub  c                                           ; $588f: $91
	ld   a, [de]                                     ; $5890: $1a
	cp   b                                           ; $5891: $b8
	ld   sp, $1f11                                   ; $5892: $31 $11 $1f
	rst  $38                                         ; $5895: $ff
	rst  $38                                         ; $5896: $ff
	inc  de                                          ; $5897: $13
	ld   d, c                                        ; $5898: $51
	ld   de, $ffbf                                   ; $5899: $11 $bf $ff
	pop  bc                                          ; $589c: $c1
	ld   d, $64                                      ; $589d: $16 $64
	ld   sp, $1311                                   ; $589f: $31 $11 $13
	rst  $38                                         ; $58a2: $ff
	rst  $38                                         ; $58a3: $ff
	ld   de, $1171                                   ; $58a4: $11 $71 $11
	cpl                                              ; $58a7: $2f
	rst  $38                                         ; $58a8: $ff
	di                                               ; $58a9: $f3
	ld   [de], a                                     ; $58aa: $12
	add  [hl]                                        ; $58ab: $86
	ld   h, c                                        ; $58ac: $61
	ld   de, rAUD1LEN                                   ; $58ad: $11 $11 $ff
	rst  $38                                         ; $58b0: $ff
	pop  af                                          ; $58b1: $f1
	ld   d, $11                                      ; $58b2: $16 $11
	jr   @+$01                                       ; $58b4: $18 $ff

	rst  $38                                         ; $58b6: $ff
	ld   de, $6669                                   ; $58b7: $11 $69 $66
	ld   de, $1f11                                   ; $58ba: $11 $11 $1f
	rst  $38                                         ; $58bd: $ff
	ei                                               ; $58be: $fb
	inc  d                                           ; $58bf: $14
	ld   hl, $cf11                                   ; $58c0: $21 $11 $cf
	rst  $38                                         ; $58c3: $ff
	pop  bc                                          ; $58c4: $c1
	add  hl, de                                      ; $58c5: $19
	ld   [hl], l                                     ; $58c6: $75
	ld   b, c                                        ; $58c7: $41
	ld   de, rAUD1LEN                                   ; $58c8: $11 $11 $ff
	rst  $38                                         ; $58cb: $ff
	pop  bc                                          ; $58cc: $c1
	ld   [hl-], a                                    ; $58cd: $32
	ld   de, $ff4f                                   ; $58ce: $11 $4f $ff
	ei                                               ; $58d1: $fb
	ld   de, $3496                                   ; $58d2: $11 $96 $34
	ld   de, $1f11                                   ; $58d5: $11 $11 $1f
	rst  $38                                         ; $58d8: $ff
	rst  $38                                         ; $58d9: $ff
	inc  de                                          ; $58da: $13
	ld   b, c                                        ; $58db: $41
	inc  de                                          ; $58dc: $13
	rst  JumpTable                                         ; $58dd: $df
	rst  $38                                         ; $58de: $ff
	pop  bc                                          ; $58df: $c1
	ld   a, [hl-]                                    ; $58e0: $3a
	ld   [hl], d                                     ; $58e1: $72
	ld   sp, $1111                                   ; $58e2: $31 $11 $11
	rst  $38                                         ; $58e5: $ff
	rst  $38                                         ; $58e6: $ff
	pop  af                                          ; $58e7: $f1
	dec  h                                           ; $58e8: $25
	ld   de, $ff2c                                   ; $58e9: $11 $2c $ff
	cp   $45                                         ; $58ec: $fe $45
	or   [hl]                                        ; $58ee: $b6
	ld   de, $1111                                   ; $58ef: $11 $11 $11
	ld   e, $ff                                      ; $58f2: $1e $ff
	rst  $38                                         ; $58f4: $ff
	ld   de, $1171                                   ; $58f5: $11 $71 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58f8: $cf
	rst  $38                                         ; $58f9: $ff
	push af                                          ; $58fa: $f5
	ld   a, e                                        ; $58fb: $7b
	ld   d, c                                        ; $58fc: $51
	ld   [de], a                                     ; $58fd: $12
	ld   de, $6f11                                   ; $58fe: $11 $11 $6f
	rst  $38                                         ; $5901: $ff
	push af                                          ; $5902: $f5
	dec  sp                                          ; $5903: $3b
	ld   de, $ff1a                                   ; $5904: $11 $1a $ff
	rst  $38                                         ; $5907: $ff
	adc  e                                           ; $5908: $8b
	rst  $30                                         ; $5909: $f7
	ld   de, $1121                                   ; $590a: $11 $21 $11
	ld   de, $ffff                                   ; $590d: $11 $ff $ff
	and  h                                           ; $5910: $a4
	pop  de                                          ; $5911: $d1
	ld   de, $ff8f                                   ; $5912: $11 $8f $ff
	cp   $ef                                         ; $5915: $fe $ef
	ld   h, c                                        ; $5917: $61
	inc  d                                           ; $5918: $14
	ld   de, $1f11                                   ; $5919: $11 $11 $1f
	rst  $38                                         ; $591c: $ff
	cp   $7d                                         ; $591d: $fe $7d
	ld   de, $ff18                                   ; $591f: $11 $18 $ff
	rst  $38                                         ; $5922: $ff
	rst  $38                                         ; $5923: $ff
	or   $11                                         ; $5924: $f6 $11
	ld   d, c                                        ; $5926: $51
	ld   de, rAUD1LEN                                   ; $5927: $11 $11 $ff
	rst  $38                                         ; $592a: $ff
	ld   a, [$11f1]                                  ; $592b: $fa $f1 $11
	xor  a                                           ; $592e: $af
	db   $fd                                         ; $592f: $fd
	rst  $38                                         ; $5930: $ff
	rst  $38                                         ; $5931: $ff
	ld   d, c                                        ; $5932: $51
	add  hl, de                                      ; $5933: $19
	ld   de, $1f11                                   ; $5934: $11 $11 $1f
	rst  $38                                         ; $5937: $ff
	rst  $38                                         ; $5938: $ff
	rst  $38                                         ; $5939: $ff
	ld   de, $ff1c                                   ; $593a: $11 $1c $ff
	adc  a                                           ; $593d: $8f
	rst  $38                                         ; $593e: $ff
	or   $11                                         ; $593f: $f6 $11
	sub  c                                           ; $5941: $91
	ld   de, rAUD1LEN                                   ; $5942: $11 $11 $ff
	rst  $38                                         ; $5945: $ff
	rst  $38                                         ; $5946: $ff
	pop  hl                                          ; $5947: $e1
	ld   de, $e6df                                   ; $5948: $11 $df $e6
	rst  $38                                         ; $594b: $ff
	rst  $38                                         ; $594c: $ff
	ld   h, c                                        ; $594d: $61
	ld   e, b                                        ; $594e: $58
	ld   de, $1f11                                   ; $594f: $11 $11 $1f
	db   $fd                                         ; $5952: $fd
	rst  $38                                         ; $5953: $ff
	cp   $11                                         ; $5954: $fe $11
	dec  de                                          ; $5956: $1b
	xor  c                                           ; $5957: $a9
	ld   e, a                                        ; $5958: $5f
	rst  $38                                         ; $5959: $ff
	ei                                               ; $595a: $fb
	jr   z, jr_0b2_59ce                              ; $595b: $28 $71

	ld   de, rAUD1LEN                                   ; $595d: $11 $11 $ff
	xor  a                                           ; $5960: $af
	rst  $38                                         ; $5961: $ff
	pop  af                                          ; $5962: $f1
	ld   [de], a                                     ; $5963: $12
	and  a                                           ; $5964: $a7
	ld   d, h                                        ; $5965: $54
	rst  $38                                         ; $5966: $ff
	rst  $38                                         ; $5967: $ff
	push de                                          ; $5968: $d5
	or   h                                           ; $5969: $b4
	ld   de, $1f11                                   ; $596a: $11 $11 $1f
	ld   sp, hl                                      ; $596d: $f9
	rst  $38                                         ; $596e: $ff
	rst  $38                                         ; $596f: $ff
	ld   de, $4269                                   ; $5970: $11 $69 $42
	ld   l, a                                        ; $5973: $6f
	cp   $fe                                         ; $5974: $fe $fe
	adc  l                                           ; $5976: $8d
	ld   de, $1111                                   ; $5977: $11 $11 $11
	rst  $38                                         ; $597a: $ff
	sbc  a                                           ; $597b: $9f
	rst  $38                                         ; $597c: $ff
	pop  hl                                          ; $597d: $e1
	ld   a, [de]                                     ; $597e: $1a
	ld   [hl], d                                     ; $597f: $72
	dec  de                                          ; $5980: $1b
	cp   $af                                         ; $5981: $fe $af
	ld   [$11d1], a                                  ; $5983: $ea $d1 $11
	ld   de, $4fdf                                   ; $5986: $11 $df $4f
	rst  $38                                         ; $5989: $ff
	ei                                               ; $598a: $fb
	add  hl, de                                      ; $598b: $19
	or   l                                           ; $598c: $b5
	inc  de                                          ; $598d: $13
	rst  $38                                         ; $598e: $ff
	ld   a, e                                        ; $598f: $7b
	ei                                               ; $5990: $fb
	ret  c                                           ; $5991: $d8

	ld   de, $1f11                                   ; $5992: $11 $11 $1f
	or   h                                           ; $5995: $b4
	rst  $38                                         ; $5996: $ff
	rst  $38                                         ; $5997: $ff
	ld   d, a                                        ; $5998: $57
	ld   sp, hl                                      ; $5999: $f9
	ld   b, c                                        ; $599a: $41
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $599b: $cf
	ld   a, b                                        ; $599c: $78
	cp   $bb                                         ; $599d: $fe $bb
	ld   de, $1f11                                   ; $599f: $11 $11 $1f
	pop  hl                                          ; $59a2: $e1
	rst  $38                                         ; $59a3: $ff
	rst  $38                                         ; $59a4: $ff
	xor  d                                           ; $59a5: $aa
	cp   $63                                         ; $59a6: $fe $63
	xor  a                                           ; $59a8: $af
	ld   h, l                                        ; $59a9: $65
	db   $dd                                         ; $59aa: $dd
	xor  d                                           ; $59ab: $aa
	ld   de, $1e11                                   ; $59ac: $11 $11 $1e
	pop  bc                                          ; $59af: $c1
	rst  $38                                         ; $59b0: $ff
	rst  $38                                         ; $59b1: $ff
	sbc  $ff                                         ; $59b2: $de $ff
	add  l                                           ; $59b4: $85
	xor  a                                           ; $59b5: $af
	ld   h, h                                        ; $59b6: $64
	db   $ed                                         ; $59b7: $ed
	adc  b                                           ; $59b8: $88
	ld   hl, $1c11                                   ; $59b9: $21 $11 $1c
	ld   d, c                                        ; $59bc: $51
	rst  $38                                         ; $59bd: $ff
	cp   $df                                         ; $59be: $fe $df
	rst  $38                                         ; $59c0: $ff
	xor  c                                           ; $59c1: $a9
	db   $ec                                         ; $59c2: $ec
	scf                                              ; $59c3: $37
	call c, $1184                                    ; $59c4: $dc $84 $11
	ld   de, $1517                                   ; $59c7: $11 $17 $15
	rst  $38                                         ; $59ca: $ff
	ld   a, [$ffef]                                  ; $59cb: $fa $ef $ff

jr_0b2_59ce:
	rst  JumpTable                                         ; $59ce: $df
	ld   a, [$da38]                                  ; $59cf: $fa $38 $da
	ld   [hl], d                                     ; $59d2: $72
	ld   de, $5111                                   ; $59d3: $11 $11 $51
	add  hl, de                                      ; $59d6: $19
	cp   e                                           ; $59d7: $bb
	xor  d                                           ; $59d8: $aa
	rst  $38                                         ; $59d9: $ff
	rst  $38                                         ; $59da: $ff
	rst  $38                                         ; $59db: $ff
	ld   hl, sp-$66                                  ; $59dc: $f8 $9a
	cp   c                                           ; $59de: $b9
	ld   d, c                                        ; $59df: $51
	ld   de, $1113                                   ; $59e0: $11 $13 $11
	scf                                              ; $59e3: $37
	ld   [hl], a                                     ; $59e4: $77
	adc  h                                           ; $59e5: $8c
	rst  $38                                         ; $59e6: $ff
	rst  $38                                         ; $59e7: $ff
	rst  $38                                         ; $59e8: $ff
	call c, $a8dc                                    ; $59e9: $dc $dc $a8
	ld   d, d                                        ; $59ec: $52
	ld   de, $1113                                   ; $59ed: $11 $13 $11
	inc  hl                                          ; $59f0: $23
	inc  de                                          ; $59f1: $13
	ld   l, b                                        ; $59f2: $68
	cp   l                                           ; $59f3: $bd
	rst  $38                                         ; $59f4: $ff
	rst  $38                                         ; $59f5: $ff
	rst  $28                                         ; $59f6: $ef
	rst  $38                                         ; $59f7: $ff
	call c, Call_0b2_63a8                            ; $59f8: $dc $a8 $63
	inc  sp                                          ; $59fb: $33
	ld   de, $1111                                   ; $59fc: $11 $11 $11
	inc  de                                          ; $59ff: $13
	ld   b, a                                        ; $5a00: $47
	sbc  e                                           ; $5a01: $9b
	rst  $38                                         ; $5a02: $ff
	rst  $38                                         ; $5a03: $ff
	rst  $38                                         ; $5a04: $ff
	rst  $38                                         ; $5a05: $ff
	call c, Call_0b2_54a7                            ; $5a06: $dc $a7 $54
	ld   hl, $1111                                   ; $5a09: $21 $11 $11
	ld   de, $6825                                   ; $5a0c: $11 $25 $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a0f: $cf
	rst  $28                                         ; $5a10: $ef
	rst  $38                                         ; $5a11: $ff
	rst  $38                                         ; $5a12: $ff
	db   $fd                                         ; $5a13: $fd
	ret                                              ; $5a14: $c9


	halt                                             ; $5a15: $76
	ld   b, c                                        ; $5a16: $41
	ld   de, $1111                                   ; $5a17: $11 $11 $11
	inc  de                                          ; $5a1a: $13
	ld   d, [hl]                                     ; $5a1b: $56
	sbc  h                                           ; $5a1c: $9c
	rst  $28                                         ; $5a1d: $ef
	rst  $38                                         ; $5a1e: $ff
	rst  $38                                         ; $5a1f: $ff
	cp   $ba                                         ; $5a20: $fe $ba
	sub  [hl]                                        ; $5a22: $96
	ld   d, e                                        ; $5a23: $53
	ld   de, $1111                                   ; $5a24: $11 $11 $11
	ld   [de], a                                     ; $5a27: $12
	ld   d, [hl]                                     ; $5a28: $56
	ld   a, d                                        ; $5a29: $7a
	rst  $28                                         ; $5a2a: $ef
	rst  $38                                         ; $5a2b: $ff
	rst  $38                                         ; $5a2c: $ff
	rst  $38                                         ; $5a2d: $ff
	jp   c, $65a7                                    ; $5a2e: $da $a7 $65

	ld   hl, $1111                                   ; $5a31: $21 $11 $11
	ld   [de], a                                     ; $5a34: $12
	ld   b, [hl]                                     ; $5a35: $46
	ld   a, c                                        ; $5a36: $79
	rst  JumpTable                                         ; $5a37: $df
	rst  $38                                         ; $5a38: $ff
	rst  $38                                         ; $5a39: $ff
	rst  $38                                         ; $5a3a: $ff
	db   $ec                                         ; $5a3b: $ec
	adc  b                                           ; $5a3c: $88
	ld   [hl], l                                     ; $5a3d: $75
	ld   hl, $1111                                   ; $5a3e: $21 $11 $11
	ld   [de], a                                     ; $5a41: $12
	ld   b, l                                        ; $5a42: $45
	ld   a, d                                        ; $5a43: $7a
	call $ffff                                       ; $5a44: $cd $ff $ff
	rst  $38                                         ; $5a47: $ff
	db   $ec                                         ; $5a48: $ec
	sub  a                                           ; $5a49: $97
	add  l                                           ; $5a4a: $85
	ld   sp, $1111                                   ; $5a4b: $31 $11 $11
	ld   [de], a                                     ; $5a4e: $12
	ld   b, l                                        ; $5a4f: $45
	ld   a, d                                        ; $5a50: $7a
	cp   [hl]                                        ; $5a51: $be
	rst  $38                                         ; $5a52: $ff
	rst  $38                                         ; $5a53: $ff
	cp   $ec                                         ; $5a54: $fe $ec
	adc  b                                           ; $5a56: $88
	ld   [hl], l                                     ; $5a57: $75
	ld   hl, $1111                                   ; $5a58: $21 $11 $11
	inc  de                                          ; $5a5b: $13
	ld   b, l                                        ; $5a5c: $45
	ld   a, e                                        ; $5a5d: $7b
	adc  $ff                                         ; $5a5e: $ce $ff
	rst  $38                                         ; $5a60: $ff
	rst  $38                                         ; $5a61: $ff
	db   $db                                         ; $5a62: $db
	adc  b                                           ; $5a63: $88
	ld   [hl], h                                     ; $5a64: $74
	ld   hl, $1111                                   ; $5a65: $21 $11 $11
	inc  de                                          ; $5a68: $13
	ld   b, l                                        ; $5a69: $45
	adc  e                                           ; $5a6a: $8b
	rst  JumpTable                                         ; $5a6b: $df
	rst  $38                                         ; $5a6c: $ff
	rst  $38                                         ; $5a6d: $ff
	rst  $38                                         ; $5a6e: $ff
	jp   c, Jump_0b2_6388                            ; $5a6f: $da $88 $63

	ld   de, $1111                                   ; $5a72: $11 $11 $11
	inc  hl                                          ; $5a75: $23
	ld   b, [hl]                                     ; $5a76: $46
	sbc  e                                           ; $5a77: $9b
	rst  JumpTable                                         ; $5a78: $df
	rst  $38                                         ; $5a79: $ff
	rst  $38                                         ; $5a7a: $ff
	cp   $ca                                         ; $5a7b: $fe $ca
	add  a                                           ; $5a7d: $87
	ld   d, d                                        ; $5a7e: $52
	ld   bc, $1111                                   ; $5a7f: $01 $11 $11
	inc  hl                                          ; $5a82: $23
	ld   d, a                                        ; $5a83: $57
	sbc  e                                           ; $5a84: $9b
	rst  $28                                         ; $5a85: $ef
	rst  $38                                         ; $5a86: $ff
	rst  $38                                         ; $5a87: $ff
	cp   $ca                                         ; $5a88: $fe $ca
	sub  a                                           ; $5a8a: $97
	ld   b, d                                        ; $5a8b: $42
	ld   de, $1111                                   ; $5a8c: $11 $11 $11
	inc  [hl]                                        ; $5a8f: $34
	ld   d, a                                        ; $5a90: $57
	xor  h                                           ; $5a91: $ac
	rst  $28                                         ; $5a92: $ef
	rst  $38                                         ; $5a93: $ff
	rst  $38                                         ; $5a94: $ff
	db   $fd                                         ; $5a95: $fd
	cp   c                                           ; $5a96: $b9
	sub  a                                           ; $5a97: $97
	ld   b, c                                        ; $5a98: $41
	ld   de, $1111                                   ; $5a99: $11 $11 $11
	inc  [hl]                                        ; $5a9c: $34
	ld   l, b                                        ; $5a9d: $68
	xor  h                                           ; $5a9e: $ac
	rst  $28                                         ; $5a9f: $ef
	rst  $38                                         ; $5aa0: $ff
	rst  $38                                         ; $5aa1: $ff
	db   $fc                                         ; $5aa2: $fc
	xor  d                                           ; $5aa3: $aa
	sub  [hl]                                        ; $5aa4: $96
	ld   sp, $1111                                   ; $5aa5: $31 $11 $11
	ld   de, $7934                                   ; $5aa8: $11 $34 $79
	xor  l                                           ; $5aab: $ad
	rst  $38                                         ; $5aac: $ff
	rst  $38                                         ; $5aad: $ff
	rst  $38                                         ; $5aae: $ff
	db   $ec                                         ; $5aaf: $ec
	cp   d                                           ; $5ab0: $ba
	add  l                                           ; $5ab1: $85
	ld   hl, $1111                                   ; $5ab2: $21 $11 $11
	ld   [de], a                                     ; $5ab5: $12
	dec  [hl]                                        ; $5ab6: $35
	ld   a, d                                        ; $5ab7: $7a
	adc  $ff                                         ; $5ab8: $ce $ff
	rst  $38                                         ; $5aba: $ff
	rst  $38                                         ; $5abb: $ff
	db   $ec                                         ; $5abc: $ec
	xor  c                                           ; $5abd: $a9
	add  l                                           ; $5abe: $85
	ld   hl, $1111                                   ; $5abf: $21 $11 $11
	ld   [de], a                                     ; $5ac2: $12
	dec  [hl]                                        ; $5ac3: $35
	adc  c                                           ; $5ac4: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ac5: $cf
	rst  $38                                         ; $5ac6: $ff
	rst  $38                                         ; $5ac7: $ff
	rst  $38                                         ; $5ac8: $ff
	jp   z, Jump_0b2_7499                            ; $5ac9: $ca $99 $74

	ld   hl, $1111                                   ; $5acc: $21 $11 $11
	ld   [bc], a                                     ; $5acf: $02
	ld   [hl], $9a                                   ; $5ad0: $36 $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ad2: $cf
	rst  $38                                         ; $5ad3: $ff
	rst  $38                                         ; $5ad4: $ff
	rst  $38                                         ; $5ad5: $ff
	jp   z, Jump_0b2_6398                            ; $5ad6: $ca $98 $63

	ld   de, $1111                                   ; $5ad9: $11 $11 $11
	ld   [de], a                                     ; $5adc: $12
	ld   b, [hl]                                     ; $5add: $46
	adc  d                                           ; $5ade: $8a
	rst  $28                                         ; $5adf: $ef
	rst  $38                                         ; $5ae0: $ff
	rst  $38                                         ; $5ae1: $ff
	db   $fd                                         ; $5ae2: $fd
	jp   z, Jump_0b2_5298                            ; $5ae3: $ca $98 $52

	ld   bc, $1111                                   ; $5ae6: $01 $11 $11
	inc  de                                          ; $5ae9: $13
	ld   b, a                                        ; $5aea: $47
	sbc  e                                           ; $5aeb: $9b
	rst  $28                                         ; $5aec: $ef
	rst  $38                                         ; $5aed: $ff
	rst  $38                                         ; $5aee: $ff
	cp   $ba                                         ; $5aef: $fe $ba
	sub  a                                           ; $5af1: $97
	ld   b, d                                        ; $5af2: $42
	ld   de, $1111                                   ; $5af3: $11 $11 $11
	inc  hl                                          ; $5af6: $23
	ld   d, a                                        ; $5af7: $57
	xor  e                                           ; $5af8: $ab
	rst  $38                                         ; $5af9: $ff
	rst  $38                                         ; $5afa: $ff
	rst  $38                                         ; $5afb: $ff
	db   $fd                                         ; $5afc: $fd
	cp   d                                           ; $5afd: $ba
	add  a                                           ; $5afe: $87
	ld   b, c                                        ; $5aff: $41
	ld   de, $1111                                   ; $5b00: $11 $11 $11
	inc  hl                                          ; $5b03: $23
	ld   e, b                                        ; $5b04: $58
	xor  h                                           ; $5b05: $ac
	rst  $38                                         ; $5b06: $ff
	rst  $38                                         ; $5b07: $ff
	rst  $38                                         ; $5b08: $ff
	db   $fc                                         ; $5b09: $fc
	cp   d                                           ; $5b0a: $ba
	add  [hl]                                        ; $5b0b: $86
	ld   sp, $1111                                   ; $5b0c: $31 $11 $11
	ld   de, $6924                                   ; $5b0f: $11 $24 $69
	cp   l                                           ; $5b12: $bd
	rst  $38                                         ; $5b13: $ff
	rst  $38                                         ; $5b14: $ff
	rst  $38                                         ; $5b15: $ff
	db   $fd                                         ; $5b16: $fd
	cp   c                                           ; $5b17: $b9
	add  [hl]                                        ; $5b18: $86
	ld   hl, $1111                                   ; $5b19: $21 $11 $11
	ld   de, $7924                                   ; $5b1c: $11 $24 $79
	xor  l                                           ; $5b1f: $ad
	rst  $38                                         ; $5b20: $ff
	rst  $38                                         ; $5b21: $ff
	rst  $38                                         ; $5b22: $ff
	db   $fc                                         ; $5b23: $fc
	xor  c                                           ; $5b24: $a9
	add  l                                           ; $5b25: $85
	ld   hl, $1111                                   ; $5b26: $21 $11 $11
	ld   de, $7a25                                   ; $5b29: $11 $25 $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b2c: $cf
	rst  $38                                         ; $5b2d: $ff
	rst  $38                                         ; $5b2e: $ff
	rst  $38                                         ; $5b2f: $ff
	call c, Call_0b2_74a9                            ; $5b30: $dc $a9 $74
	ld   de, $1111                                   ; $5b33: $11 $11 $11
	ld   de, $8a35                                   ; $5b36: $11 $35 $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b39: $cf
	rst  $38                                         ; $5b3a: $ff
	rst  $38                                         ; $5b3b: $ff
	rst  $38                                         ; $5b3c: $ff
	db   $db                                         ; $5b3d: $db
	xor  d                                           ; $5b3e: $aa
	ld   [hl], e                                     ; $5b3f: $73
	ld   de, $1111                                   ; $5b40: $11 $11 $11
	ld   [de], a                                     ; $5b43: $12
	ld   [hl], $8b                                   ; $5b44: $36 $8b
	rst  JumpTable                                         ; $5b46: $df
	rst  $38                                         ; $5b47: $ff
	rst  $38                                         ; $5b48: $ff
	cp   $da                                         ; $5b49: $fe $da
	xor  c                                           ; $5b4b: $a9
	ld   h, d                                        ; $5b4c: $62
	ld   de, $1111                                   ; $5b4d: $11 $11 $11
	ld   [de], a                                     ; $5b50: $12
	ld   b, [hl]                                     ; $5b51: $46
	sbc  e                                           ; $5b52: $9b
	rst  $28                                         ; $5b53: $ef
	rst  $38                                         ; $5b54: $ff
	rst  $38                                         ; $5b55: $ff
	cp   $bb                                         ; $5b56: $fe $bb
	xor  b                                           ; $5b58: $a8
	ld   d, d                                        ; $5b59: $52
	ld   de, $1111                                   ; $5b5a: $11 $11 $11
	ld   [de], a                                     ; $5b5d: $12
	ld   b, a                                        ; $5b5e: $47
	sbc  e                                           ; $5b5f: $9b
	rst  $38                                         ; $5b60: $ff
	rst  $38                                         ; $5b61: $ff

Call_0b2_5b62:
	rst  $38                                         ; $5b62: $ff
	db   $fc                                         ; $5b63: $fc
	cp   e                                           ; $5b64: $bb
	add  a                                           ; $5b65: $87
	ld   b, c                                        ; $5b66: $41
	ld   de, $1111                                   ; $5b67: $11 $11 $11
	inc  h                                           ; $5b6a: $24
	ld   e, b                                        ; $5b6b: $58
	call $ffff                                       ; $5b6c: $cd $ff $ff
	rst  $38                                         ; $5b6f: $ff
	db   $eb                                         ; $5b70: $eb
	cp   d                                           ; $5b71: $ba
	ld   h, [hl]                                     ; $5b72: $66
	ld   hl, $1111                                   ; $5b73: $21 $11 $11
	ld   de, $7b35                                   ; $5b76: $11 $35 $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b79: $cf
	rst  $38                                         ; $5b7a: $ff
	rst  $38                                         ; $5b7b: $ff
	cp   $d9                                         ; $5b7c: $fe $d9
	and  [hl]                                        ; $5b7e: $a6
	ld   d, l                                        ; $5b7f: $55
	ld   de, $1111                                   ; $5b80: $11 $11 $11
	ld   [bc], a                                     ; $5b83: $02
	ld   b, [hl]                                     ; $5b84: $46
	cp   h                                           ; $5b85: $bc
	rst  $28                                         ; $5b86: $ef
	rst  $38                                         ; $5b87: $ff
	rst  $38                                         ; $5b88: $ff
	cp   $bb                                         ; $5b89: $fe $bb
	sub  e                                           ; $5b8b: $93
	ld   h, c                                        ; $5b8c: $61
	ld   de, $1111                                   ; $5b8d: $11 $11 $11
	inc  d                                           ; $5b90: $14
	ld   e, c                                        ; $5b91: $59
	db   $dd                                         ; $5b92: $dd
	rst  $38                                         ; $5b93: $ff
	rst  $38                                         ; $5b94: $ff
	rst  $38                                         ; $5b95: $ff
	db   $fc                                         ; $5b96: $fc
	xor  e                                           ; $5b97: $ab
	ld   b, h                                        ; $5b98: $44
	ld   d, c                                        ; $5b99: $51
	ld   de, $1111                                   ; $5b9a: $11 $11 $11
	inc  [hl]                                        ; $5b9d: $34
	ld   l, e                                        ; $5b9e: $6b
	rst  JumpTable                                         ; $5b9f: $df
	rst  $38                                         ; $5ba0: $ff
	rst  $38                                         ; $5ba1: $ff
	rst  $38                                         ; $5ba2: $ff
	jp   c, $27a8                                    ; $5ba3: $da $a8 $27

	ld   de, $1111                                   ; $5ba6: $11 $11 $11
	ld   [de], a                                     ; $5ba9: $12
	ld   b, l                                        ; $5baa: $45
	xor  l                                           ; $5bab: $ad
	rst  JumpTable                                         ; $5bac: $df
	rst  $38                                         ; $5bad: $ff
	rst  $38                                         ; $5bae: $ff
	cp   $b9                                         ; $5baf: $fe $b9
	or   d                                           ; $5bb1: $b2
	ld   d, h                                        ; $5bb2: $54
	ld   de, $1111                                   ; $5bb3: $11 $11 $11
	inc  de                                          ; $5bb6: $13
	ld   b, a                                        ; $5bb7: $47
	sbc  $ff                                         ; $5bb8: $de $ff
	rst  $38                                         ; $5bba: $ff
	rst  $38                                         ; $5bbb: $ff
	db   $ed                                         ; $5bbc: $ed
	sbc  e                                           ; $5bbd: $9b
	ld   d, d                                        ; $5bbe: $52
	ld   [hl], c                                     ; $5bbf: $71
	ld   de, $1111                                   ; $5bc0: $11 $11 $11
	inc  h                                           ; $5bc3: $24
	ld   l, l                                        ; $5bc4: $6d
	xor  $ff                                         ; $5bc5: $ee $ff
	rst  $38                                         ; $5bc7: $ff
	rst  $38                                         ; $5bc8: $ff
	jp   hl                                          ; $5bc9: $e9


	xor  c                                           ; $5bca: $a9
	jr   jr_0b2_5bde                                 ; $5bcb: $18 $11

	ld   de, $1211                                   ; $5bcd: $11 $11 $12
	ld   b, l                                        ; $5bd0: $45
	cp   a                                           ; $5bd1: $bf
	rst  JumpTable                                         ; $5bd2: $df
	rst  $38                                         ; $5bd3: $ff
	rst  $38                                         ; $5bd4: $ff
	cp   $c9                                         ; $5bd5: $fe $c9
	pop  bc                                          ; $5bd7: $c1
	ld   d, l                                        ; $5bd8: $55
	ld   de, $1111                                   ; $5bd9: $11 $11 $11
	inc  de                                          ; $5bdc: $13
	ld   e, b                                        ; $5bdd: $58

jr_0b2_5bde:
	db   $fd                                         ; $5bde: $fd
	rst  $38                                         ; $5bdf: $ff
	rst  $38                                         ; $5be0: $ff
	rst  $38                                         ; $5be1: $ff
	db   $dd                                         ; $5be2: $dd
	adc  h                                           ; $5be3: $8c
	ld   hl, $1191                                   ; $5be4: $21 $91 $11
	ld   de, $3511                                   ; $5be7: $11 $11 $35
	ld   l, a                                        ; $5bea: $6f
	rst  $28                                         ; $5beb: $ef
	rst  $38                                         ; $5bec: $ff
	rst  $38                                         ; $5bed: $ff
	db   $fd                                         ; $5bee: $fd
	ret                                              ; $5bef: $c9


	or   l                                           ; $5bf0: $b5
	ld   a, [de]                                     ; $5bf1: $1a
	ld   de, $1111                                   ; $5bf2: $11 $11 $11
	ld   [de], a                                     ; $5bf5: $12
	ld   d, l                                        ; $5bf6: $55
	rst  $28                                         ; $5bf7: $ef
	rst  $28                                         ; $5bf8: $ef
	rst  $38                                         ; $5bf9: $ff
	rst  $38                                         ; $5bfa: $ff
	db   $fd                                         ; $5bfb: $fd
	sbc  e                                           ; $5bfc: $9b
	add  c                                           ; $5bfd: $81
	sub  c                                           ; $5bfe: $91
	ld   de, $1111                                   ; $5bff: $11 $11 $11
	inc  h                                           ; $5c02: $24
	ld   e, h                                        ; $5c03: $5c
	db   $fc                                         ; $5c04: $fc
	rst  $38                                         ; $5c05: $ff
	rst  $38                                         ; $5c06: $ff
	rst  $38                                         ; $5c07: $ff
	res  3, d                                        ; $5c08: $cb $9a
	rla                                              ; $5c0a: $17
	ld   hl, $1111                                   ; $5c0b: $21 $11 $11
	ld   [de], a                                     ; $5c0e: $12
	ld   b, [hl]                                     ; $5c0f: $46
	cp   a                                           ; $5c10: $bf
	rst  JumpTable                                         ; $5c11: $df
	rst  $38                                         ; $5c12: $ff
	rst  $38                                         ; $5c13: $ff
	db   $fc                                         ; $5c14: $fc
	cp   c                                           ; $5c15: $b9
	pop  bc                                          ; $5c16: $c1
	scf                                              ; $5c17: $37
	ld   de, $1111                                   ; $5c18: $11 $11 $11
	inc  sp                                          ; $5c1b: $33
	ld   l, c                                        ; $5c1c: $69
	cp   $ff                                         ; $5c1d: $fe $ff
	rst  $38                                         ; $5c1f: $ff
	rst  $38                                         ; $5c20: $ff
	res  3, h                                        ; $5c21: $cb $9c
	ld   de, $11a1                                   ; $5c23: $11 $a1 $11
	ld   de, $3613                                   ; $5c26: $11 $13 $36
	adc  a                                           ; $5c29: $8f
	rst  $38                                         ; $5c2a: $ff
	rst  $38                                         ; $5c2b: $ff
	rst  $38                                         ; $5c2c: $ff
	db   $fc                                         ; $5c2d: $fc
	xor  c                                           ; $5c2e: $a9
	pop  bc                                          ; $5c2f: $c1
	dec  de                                          ; $5c30: $1b
	ld   de, $1111                                   ; $5c31: $11 $11 $11
	inc  sp                                          ; $5c34: $33
	ld   h, a                                        ; $5c35: $67
	rst  $38                                         ; $5c36: $ff
	rst  $38                                         ; $5c37: $ff
	rst  $38                                         ; $5c38: $ff
	rst  $38                                         ; $5c39: $ff
	reti                                             ; $5c3a: $d9


	sbc  e                                           ; $5c3b: $9b
	ld   sp, $11a1                                   ; $5c3c: $31 $a1 $11
	ld   de, $4612                                   ; $5c3f: $11 $12 $46
	adc  a                                           ; $5c42: $8f
	rst  $38                                         ; $5c43: $ff
	rst  $38                                         ; $5c44: $ff
	rst  $38                                         ; $5c45: $ff
	rst  $38                                         ; $5c46: $ff
	sbc  b                                           ; $5c47: $98
	and  h                                           ; $5c48: $a4
	ld   a, [de]                                     ; $5c49: $1a
	ld   de, $1111                                   ; $5c4a: $11 $11 $11
	dec  h                                           ; $5c4d: $25
	ld   h, a                                        ; $5c4e: $67
	rst  $38                                         ; $5c4f: $ff
	rst  $38                                         ; $5c50: $ff
	rst  $38                                         ; $5c51: $ff
	rst  $38                                         ; $5c52: $ff
	ld   sp, hl                                      ; $5c53: $f9
	ld   a, d                                        ; $5c54: $7a
	ld   b, c                                        ; $5c55: $41
	add  c                                           ; $5c56: $81
	ld   de, $1111                                   ; $5c57: $11 $11 $11
	ld   h, a                                        ; $5c5a: $67
	adc  a                                           ; $5c5b: $8f
	rst  $38                                         ; $5c5c: $ff
	rst  $38                                         ; $5c5d: $ff
	rst  $38                                         ; $5c5e: $ff
	rst  $38                                         ; $5c5f: $ff
	add  a                                           ; $5c60: $87
	sub  l                                           ; $5c61: $95
	ld   d, $11                                      ; $5c62: $16 $11
	ld   de, $1611                                   ; $5c64: $11 $11 $16
	adc  b                                           ; $5c67: $88
	rst  $38                                         ; $5c68: $ff
	rst  $38                                         ; $5c69: $ff
	rst  $38                                         ; $5c6a: $ff
	rst  $38                                         ; $5c6b: $ff
	rst  $30                                         ; $5c6c: $f7
	ld   l, d                                        ; $5c6d: $6a
	ld   b, c                                        ; $5c6e: $41
	ld   d, c                                        ; $5c6f: $51
	ld   de, $1111                                   ; $5c70: $11 $11 $11
	ld   a, c                                        ; $5c73: $79
	sbc  a                                           ; $5c74: $9f
	rst  $38                                         ; $5c75: $ff
	rst  $38                                         ; $5c76: $ff
	rst  $38                                         ; $5c77: $ff
	rst  $38                                         ; $5c78: $ff
	ld   [hl], l                                     ; $5c79: $75
	add  h                                           ; $5c7a: $84
	dec  d                                           ; $5c7b: $15
	ld   de, $1111                                   ; $5c7c: $11 $11 $11
	rla                                              ; $5c7f: $17
	xor  d                                           ; $5c80: $aa
	rst  $38                                         ; $5c81: $ff
	rst  $38                                         ; $5c82: $ff
	rst  $38                                         ; $5c83: $ff
	rst  $38                                         ; $5c84: $ff
	or   $48                                         ; $5c85: $f6 $48
	ld   hl, $1161                                   ; $5c87: $21 $61 $11
	ld   de, $8b11                                   ; $5c8a: $11 $11 $8b
	cp   a                                           ; $5c8d: $bf
	rst  $38                                         ; $5c8e: $ff
	rst  $38                                         ; $5c8f: $ff
	rst  $38                                         ; $5c90: $ff
	cp   $53                                         ; $5c91: $fe $53
	ld   [hl], c                                     ; $5c93: $71
	ld   d, $11                                      ; $5c94: $16 $11
	ld   de, $2911                                   ; $5c96: $11 $11 $29
	call z, $ffff                                    ; $5c99: $cc $ff $ff
	rst  $38                                         ; $5c9c: $ff
	rst  $38                                         ; $5c9d: $ff
	push bc                                          ; $5c9e: $c5
	daa                                              ; $5c9f: $27
	ld   de, $1161                                   ; $5ca0: $11 $61 $11
	ld   de, $ae14                                   ; $5ca3: $11 $14 $ae
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ca6: $cf
	rst  $38                                         ; $5ca7: $ff
	rst  $38                                         ; $5ca8: $ff
	rst  $38                                         ; $5ca9: $ff
	ei                                               ; $5caa: $fb
	inc  sp                                          ; $5cab: $33
	ld   [hl], c                                     ; $5cac: $71
	rla                                              ; $5cad: $17
	ld   de, $1111                                   ; $5cae: $11 $11 $11
	ld   e, e                                        ; $5cb1: $5b
	db   $fc                                         ; $5cb2: $fc
	rst  $38                                         ; $5cb3: $ff
	rst  $38                                         ; $5cb4: $ff
	rst  $38                                         ; $5cb5: $ff
	rst  $38                                         ; $5cb6: $ff
	sub  c                                           ; $5cb7: $91
	ld   [hl], $11                                   ; $5cb8: $36 $11
	ld   d, c                                        ; $5cba: $51
	ld   de, $1611                                   ; $5cbb: $11 $11 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cbe: $cf
	rst  $28                                         ; $5cbf: $ef
	rst  $38                                         ; $5cc0: $ff
	rst  $38                                         ; $5cc1: $ff
	rst  $38                                         ; $5cc2: $ff
	or   $12                                         ; $5cc3: $f6 $12
	ld   b, c                                        ; $5cc5: $41
	inc  d                                           ; $5cc6: $14
	ld   de, $1111                                   ; $5cc7: $11 $11 $11
	ld   a, l                                        ; $5cca: $7d
	rst  $38                                         ; $5ccb: $ff
	rst  $38                                         ; $5ccc: $ff
	rst  $38                                         ; $5ccd: $ff
	rst  $38                                         ; $5cce: $ff
	rst  $38                                         ; $5ccf: $ff
	ld   b, c                                        ; $5cd0: $41
	inc  hl                                          ; $5cd1: $23
	ld   de, $1131                                   ; $5cd2: $11 $31 $11
	ld   de, $ef28                                   ; $5cd5: $11 $28 $ef
	rst  $38                                         ; $5cd8: $ff
	rst  $38                                         ; $5cd9: $ff
	rst  $38                                         ; $5cda: $ff
	rst  $38                                         ; $5cdb: $ff
	ldh  a, [c]                                      ; $5cdc: $f2
	inc  de                                          ; $5cdd: $13
	ld   de, $1111                                   ; $5cde: $11 $11 $11
	ld   de, $af14                                   ; $5ce1: $11 $14 $af
	rst  $38                                         ; $5ce4: $ff
	rst  $38                                         ; $5ce5: $ff
	rst  $38                                         ; $5ce6: $ff
	rst  $38                                         ; $5ce7: $ff
	db   $fd                                         ; $5ce8: $fd
	ld   de, $1131                                   ; $5ce9: $11 $31 $11
	ld   de, $1311                                   ; $5cec: $11 $11 $13
	ld   l, e                                        ; $5cef: $6b
	rst  $38                                         ; $5cf0: $ff
	rst  $38                                         ; $5cf1: $ff
	rst  $38                                         ; $5cf2: $ff
	rst  $38                                         ; $5cf3: $ff
	rst  $38                                         ; $5cf4: $ff
	sub  c                                           ; $5cf5: $91
	inc  d                                           ; $5cf6: $14
	ld   de, $1161                                   ; $5cf7: $11 $61 $11
	ld   de, $df48                                   ; $5cfa: $11 $48 $df
	rst  $38                                         ; $5cfd: $ff
	rst  $38                                         ; $5cfe: $ff
	rst  $38                                         ; $5cff: $ff
	rst  $38                                         ; $5d00: $ff
	push af                                          ; $5d01: $f5
	ld   de, $1731                                   ; $5d02: $11 $31 $17
	ld   de, $1721                                   ; $5d05: $11 $21 $17
	cp   a                                           ; $5d08: $bf
	rst  $38                                         ; $5d09: $ff
	rst  $38                                         ; $5d0a: $ff
	rst  $38                                         ; $5d0b: $ff
	rst  $38                                         ; $5d0c: $ff
	rst  JumpTable                                         ; $5d0d: $df
	ld   de, $1111                                   ; $5d0e: $11 $11 $11
	ld   d, c                                        ; $5d11: $51
	ld   [de], a                                     ; $5d12: $12
	inc  d                                           ; $5d13: $14
	xor  h                                           ; $5d14: $ac
	rst  $38                                         ; $5d15: $ff
	rst  $38                                         ; $5d16: $ff
	rst  $38                                         ; $5d17: $ff
	rst  $38                                         ; $5d18: $ff
	db   $ed                                         ; $5d19: $ed
	sub  c                                           ; $5d1a: $91
	inc  de                                          ; $5d1b: $13
	ld   de, $1241                                   ; $5d1c: $11 $41 $12
	ld   de, $ff9e                                   ; $5d1f: $11 $9e $ff
	rst  $38                                         ; $5d22: $ff
	rst  $38                                         ; $5d23: $ff
	rst  $38                                         ; $5d24: $ff
	ei                                               ; $5d25: $fb
	or   d                                           ; $5d26: $b2
	ld   de, $1a11                                   ; $5d27: $11 $11 $1a
	ld   de, $3e81                                   ; $5d2a: $11 $81 $3e
	rst  $38                                         ; $5d2d: $ff
	rst  $38                                         ; $5d2e: $ff
	rst  $38                                         ; $5d2f: $ff
	rst  $38                                         ; $5d30: $ff
	cp   $76                                         ; $5d31: $fe $76
	ld   de, $1411                                   ; $5d33: $11 $11 $14
	ld   de, $1927                                   ; $5d36: $11 $27 $19
	rst  $38                                         ; $5d39: $ff
	rst  $38                                         ; $5d3a: $ff
	rst  $38                                         ; $5d3b: $ff
	rst  $38                                         ; $5d3c: $ff
	rst  $38                                         ; $5d3d: $ff
	ld   [hl], e                                     ; $5d3e: $73
	ld   de, $1111                                   ; $5d3f: $11 $11 $11
	pop  hl                                          ; $5d42: $e1
	inc  e                                           ; $5d43: $1c
	ld   d, a                                        ; $5d44: $57
	rst  $38                                         ; $5d45: $ff
	rst  $38                                         ; $5d46: $ff
	rst  $38                                         ; $5d47: $ff
	rst  $38                                         ; $5d48: $ff
	rst  $38                                         ; $5d49: $ff
	or   c                                           ; $5d4a: $b1
	ld   de, $1112                                   ; $5d4b: $11 $12 $11
	pop  af                                          ; $5d4e: $f1
	inc  e                                           ; $5d4f: $1c
	cp   c                                           ; $5d50: $b9
	rst  JumpTable                                         ; $5d51: $df
	rst  $38                                         ; $5d52: $ff
	rst  $38                                         ; $5d53: $ff
	rst  $38                                         ; $5d54: $ff
	rst  $38                                         ; $5d55: $ff
	pop  hl                                          ; $5d56: $e1
	ld   de, $1111                                   ; $5d57: $11 $11 $11
	pop  af                                          ; $5d5a: $f1
	add  hl, de                                      ; $5d5b: $19
	db   $fd                                         ; $5d5c: $fd
	cp   a                                           ; $5d5d: $bf
	rst  $38                                         ; $5d5e: $ff
	rst  $38                                         ; $5d5f: $ff
	rst  $38                                         ; $5d60: $ff
	cp   a                                           ; $5d61: $bf
	pop  de                                          ; $5d62: $d1
	ld   de, $1113                                   ; $5d63: $11 $13 $11
	pop  af                                          ; $5d66: $f1
	jr   @+$01                                       ; $5d67: $18 $ff

	cp   a                                           ; $5d69: $bf
	rst  $38                                         ; $5d6a: $ff
	rst  $38                                         ; $5d6b: $ff
	rst  $38                                         ; $5d6c: $ff
	xor  e                                           ; $5d6d: $ab
	sub  c                                           ; $5d6e: $91
	ld   de, $1112                                   ; $5d6f: $11 $12 $11
	pop  af                                          ; $5d72: $f1
	dec  e                                           ; $5d73: $1d
	rst  $38                                         ; $5d74: $ff
	rst  $38                                         ; $5d75: $ff
	rst  $38                                         ; $5d76: $ff
	rst  $38                                         ; $5d77: $ff
	cp   $95                                         ; $5d78: $fe $95
	ld   hl, $1111                                   ; $5d7a: $21 $11 $11
	add  hl, de                                      ; $5d7d: $19
	pop  af                                          ; $5d7e: $f1
	ld   a, a                                        ; $5d7f: $7f
	rst  $38                                         ; $5d80: $ff
	rst  $38                                         ; $5d81: $ff
	rst  $38                                         ; $5d82: $ff
	xor  a                                           ; $5d83: $af
	ld   sp, hl                                      ; $5d84: $f9
	ld   h, c                                        ; $5d85: $61
	ld   de, $1111                                   ; $5d86: $11 $11 $11
	rra                                              ; $5d89: $1f
	daa                                              ; $5d8a: $27
	rst  $38                                         ; $5d8b: $ff
	rst  $38                                         ; $5d8c: $ff
	rst  $38                                         ; $5d8d: $ff
	rst  $38                                         ; $5d8e: $ff
	rst  $38                                         ; $5d8f: $ff
	and  a                                           ; $5d90: $a7
	ld   de, $1111                                   ; $5d91: $11 $11 $11
	ld   de, $6ff6                                   ; $5d94: $11 $f6 $6f
	rst  $38                                         ; $5d97: $ff
	rst  $38                                         ; $5d98: $ff
	rst  $38                                         ; $5d99: $ff
	ld   sp, hl                                      ; $5d9a: $f9
	ei                                               ; $5d9b: $fb
	ld   b, c                                        ; $5d9c: $41
	ld   de, $1111                                   ; $5d9d: $11 $11 $11
	rra                                              ; $5da0: $1f
	ei                                               ; $5da1: $fb
	rst  $38                                         ; $5da2: $ff
	rst  $38                                         ; $5da3: $ff
	rst  $38                                         ; $5da4: $ff
	rst  $38                                         ; $5da5: $ff
	sbc  a                                           ; $5da6: $9f
	call nz, $1111                                   ; $5da7: $c4 $11 $11
	ld   de, rAUD1LEN                                   ; $5daa: $11 $11 $ff
	rst  JumpTable                                         ; $5dad: $df
	rst  $38                                         ; $5dae: $ff
	rst  $38                                         ; $5daf: $ff
	rst  $38                                         ; $5db0: $ff
	ei                                               ; $5db1: $fb
	jp   c, $1131                                    ; $5db2: $da $31 $11

	ld   de, $1f11                                   ; $5db5: $11 $11 $1f
	rst  $38                                         ; $5db8: $ff
	rst  $38                                         ; $5db9: $ff
	rst  $38                                         ; $5dba: $ff
	db   $fd                                         ; $5dbb: $fd
	rst  $38                                         ; $5dbc: $ff
	xor  b                                           ; $5dbd: $a8
	sub  l                                           ; $5dbe: $95
	ld   de, $1211                                   ; $5dbf: $11 $11 $12
	ld   de, $ffff                                   ; $5dc2: $11 $ff $ff
	rst  $38                                         ; $5dc5: $ff
	cp   $bf                                         ; $5dc6: $fe $bf
	ld   a, [$4188]                                  ; $5dc8: $fa $88 $41
	ld   de, $5111                                   ; $5dcb: $11 $11 $51
	rra                                              ; $5dce: $1f
	rst  $38                                         ; $5dcf: $ff
	rst  $38                                         ; $5dd0: $ff
	rst  $38                                         ; $5dd1: $ff
	and  a                                           ; $5dd2: $a7
	rst  $38                                         ; $5dd3: $ff
	and  a                                           ; $5dd4: $a7
	ld   h, l                                        ; $5dd5: $65
	ld   de, $1611                                   ; $5dd6: $11 $11 $16
	ld   de, $ffff                                   ; $5dd9: $11 $ff $ff
	rst  $38                                         ; $5ddc: $ff
	rst  $30                                         ; $5ddd: $f7
	ld   l, a                                        ; $5dde: $6f
	db   $fc                                         ; $5ddf: $fc
	ld   [hl], h                                     ; $5de0: $74
	ld   b, c                                        ; $5de1: $41
	ld   de, $7111                                   ; $5de2: $11 $11 $71
	ld   c, a                                        ; $5de5: $4f
	rst  $38                                         ; $5de6: $ff
	db   $fc                                         ; $5de7: $fc
	rst  $38                                         ; $5de8: $ff
	ld   b, [hl]                                     ; $5de9: $46
	rst  $38                                         ; $5dea: $ff
	rst  $20                                         ; $5deb: $e7
	inc  hl                                          ; $5dec: $23
	ld   de, $1a11                                   ; $5ded: $11 $11 $1a
	dec  d                                           ; $5df0: $15
	rst  $38                                         ; $5df1: $ff
	rst  $38                                         ; $5df2: $ff
	cp   a                                           ; $5df3: $bf
	db   $f4                                         ; $5df4: $f4
	ld   a, $ff                                      ; $5df5: $3e $ff
	ld   [hl], d                                     ; $5df7: $72
	ld   sp, $1111                                   ; $5df8: $31 $11 $11
	pop  bc                                          ; $5dfb: $c1
	sbc  a                                           ; $5dfc: $9f
	rst  $38                                         ; $5dfd: $ff
	ld   sp, hl                                      ; $5dfe: $f9
	rst  $38                                         ; $5dff: $ff
	inc  hl                                          ; $5e00: $23
	rst  $38                                         ; $5e01: $ff
	ld   hl, sp+$23                                  ; $5e02: $f8 $23
	ld   de, $1d11                                   ; $5e04: $11 $11 $1d
	ld   c, d                                        ; $5e07: $4a
	rst  $38                                         ; $5e08: $ff
	rst  $38                                         ; $5e09: $ff
	adc  l                                           ; $5e0a: $8d
	db   $f4                                         ; $5e0b: $f4
	ld   a, $ff                                      ; $5e0c: $3e $ff
	add  c                                           ; $5e0e: $81
	ld   hl, $1211                                   ; $5e0f: $21 $11 $12
	sub  $ef                                         ; $5e12: $d6 $ef
	rst  $38                                         ; $5e14: $ff
	rst  $30                                         ; $5e15: $f7
	cp   e                                           ; $5e16: $bb
	ld   b, h                                        ; $5e17: $44
	rst  $28                                         ; $5e18: $ef
	ld   a, [$1121]                                  ; $5e19: $fa $21 $11
	ld   de, $bf1e                                   ; $5e1c: $11 $1e $bf
	rst  $38                                         ; $5e1f: $ff
	rst  $38                                         ; $5e20: $ff
	add  hl, sp                                      ; $5e21: $39
	and  e                                           ; $5e22: $a3
	ld   l, [hl]                                     ; $5e23: $6e
	rst  $38                                         ; $5e24: $ff
	pop  bc                                          ; $5e25: $c1
	ld   de, $1111                                   ; $5e26: $11 $11 $11
	rst  $38                                         ; $5e29: $ff
	rst  $38                                         ; $5e2a: $ff
	rst  $38                                         ; $5e2b: $ff
	pop  af                                          ; $5e2c: $f1
	ld   a, [de]                                     ; $5e2d: $1a
	halt                                             ; $5e2e: $76
	rst  $28                                         ; $5e2f: $ef
	db   $fc                                         ; $5e30: $fc
	ld   de, $1111                                   ; $5e31: $11 $11 $11
	ccf                                              ; $5e34: $3f
	rst  $38                                         ; $5e35: $ff
	rst  $38                                         ; $5e36: $ff
	db   $fd                                         ; $5e37: $fd
	ld   de, $ce58                                   ; $5e38: $11 $58 $ce
	rst  $38                                         ; $5e3b: $ff
	or   c                                           ; $5e3c: $b1
	ld   de, $1111                                   ; $5e3d: $11 $11 $11
	rst  $38                                         ; $5e40: $ff
	rst  $38                                         ; $5e41: $ff
	rst  $38                                         ; $5e42: $ff
	and  c                                           ; $5e43: $a1
	ld   d, $cd                                      ; $5e44: $16 $cd
	rst  $38                                         ; $5e46: $ff
	ld   a, [$1111]                                  ; $5e47: $fa $11 $11
	ld   de, $ff4f                                   ; $5e4a: $11 $4f $ff
	rst  $38                                         ; $5e4d: $ff
	db   $fc                                         ; $5e4e: $fc
	ld   de, $ff4d                                   ; $5e4f: $11 $4d $ff
	rst  $38                                         ; $5e52: $ff
	ld   [hl], c                                     ; $5e53: $71
	ld   de, $1f11                                   ; $5e54: $11 $11 $1f
	rst  $38                                         ; $5e57: $ff
	rst  $38                                         ; $5e58: $ff
	cp   $11                                         ; $5e59: $fe $11
	rla                                              ; $5e5b: $17
	rst  $28                                         ; $5e5c: $ef
	rst  $38                                         ; $5e5d: $ff
	pop  bc                                          ; $5e5e: $c1
	ld   de, $1511                                   ; $5e5f: $11 $11 $15
	rst  $38                                         ; $5e62: $ff
	rst  $38                                         ; $5e63: $ff
	cp   $71                                         ; $5e64: $fe $71
	ld   [de], a                                     ; $5e66: $12
	rst  JumpTable                                         ; $5e67: $df
	rst  $38                                         ; $5e68: $ff
	rst  $30                                         ; $5e69: $f7
	ld   sp, $1111                                   ; $5e6a: $31 $11 $11
	rst  $28                                         ; $5e6d: $ef
	rst  $38                                         ; $5e6e: $ff
	rst  $38                                         ; $5e6f: $ff
	and  h                                           ; $5e70: $a4
	ld   de, rAUDENA                                   ; $5e71: $11 $26 $ff
	ei                                               ; $5e74: $fb
	ld   de, $1111                                   ; $5e75: $11 $11 $11
	rra                                              ; $5e78: $1f
	rst  $38                                         ; $5e79: $ff
	rst  $38                                         ; $5e7a: $ff
	or   $14                                         ; $5e7b: $f6 $14
	ld   [hl], d                                     ; $5e7d: $72
	rst  $38                                         ; $5e7e: $ff
	rst  $38                                         ; $5e7f: $ff
	ld   [hl], c                                     ; $5e80: $71
	ld   de, $1e11                                   ; $5e81: $11 $11 $1e
	rst  $38                                         ; $5e84: $ff
	rst  $38                                         ; $5e85: $ff
	rst  $20                                         ; $5e86: $e7
	ld   [hl], c                                     ; $5e87: $71
	inc  d                                           ; $5e88: $14
	rst  $38                                         ; $5e89: $ff
	rst  $38                                         ; $5e8a: $ff
	sub  a                                           ; $5e8b: $97
	ld   de, $1a11                                   ; $5e8c: $11 $11 $1a
	db   $fc                                         ; $5e8f: $fc
	rst  $38                                         ; $5e90: $ff
	push af                                          ; $5e91: $f5
	ld   d, $53                                      ; $5e92: $16 $53
	xor  a                                           ; $5e94: $af
	rst  $38                                         ; $5e95: $ff
	pop  af                                          ; $5e96: $f1
	ld   [de], a                                     ; $5e97: $12
	ld   de, rAUD1LEN                                   ; $5e98: $11 $11 $ff
	rst  $38                                         ; $5e9b: $ff
	ld   a, [$11fc]                                  ; $5e9c: $fa $fc $11
	db   $eb                                         ; $5e9f: $eb
	rst  $38                                         ; $5ea0: $ff
	ei                                               ; $5ea1: $fb
	sub  c                                           ; $5ea2: $91
	ld   de, $1f11                                   ; $5ea3: $11 $11 $1f
	rst  $38                                         ; $5ea6: $ff
	db   $f4                                         ; $5ea7: $f4
	rra                                              ; $5ea8: $1f
	or   c                                           ; $5ea9: $b1
	inc  d                                           ; $5eaa: $14
	rst  $38                                         ; $5eab: $ff
	db   $fd                                         ; $5eac: $fd
	inc  de                                          ; $5ead: $13
	add  c                                           ; $5eae: $81
	ld   de, $fe1e                                   ; $5eaf: $11 $1e $fe
	rst  $38                                         ; $5eb2: $ff
	pop  af                                          ; $5eb3: $f1
	rra                                              ; $5eb4: $1f
	sub  d                                           ; $5eb5: $92
	rst  $28                                         ; $5eb6: $ef
	rst  $38                                         ; $5eb7: $ff
	add  c                                           ; $5eb8: $81
	ld   de, $1611                                   ; $5eb9: $11 $11 $16
	rst  $38                                         ; $5ebc: $ff
	rst  $38                                         ; $5ebd: $ff
	add  hl, sp                                      ; $5ebe: $39
	or   d                                           ; $5ebf: $b2
	call nc, $ffaf                                   ; $5ec0: $d4 $af $ff
	ld   de, $1181                                   ; $5ec3: $11 $81 $11
	ld   de, $dffc                                   ; $5ec6: $11 $fc $df
	db   $fc                                         ; $5ec9: $fc
	inc  e                                           ; $5eca: $1c
	daa                                              ; $5ecb: $27
	rst  $30                                         ; $5ecc: $f7
	rst  $38                                         ; $5ecd: $ff
	ret  c                                           ; $5ece: $d8

	ld   de, $1111                                   ; $5ecf: $11 $11 $11
	ld   c, a                                        ; $5ed2: $4f
	rst  $38                                         ; $5ed3: $ff
	db   $dd                                         ; $5ed4: $dd
	rst  $10                                         ; $5ed5: $d7
	add  e                                           ; $5ed6: $83
	rra                                              ; $5ed7: $1f
	rst  $38                                         ; $5ed8: $ff
	and  a                                           ; $5ed9: $a7
	ld   [hl], c                                     ; $5eda: $71
	ld   de, $1f13                                   ; $5edb: $11 $13 $1f
	cp   $ff                                         ; $5ede: $fe $ff
	ld   de, $26ff                                   ; $5ee0: $11 $ff $26
	rst  $38                                         ; $5ee3: $ff
	db   $db                                         ; $5ee4: $db
	inc  de                                          ; $5ee5: $13
	ld   d, c                                        ; $5ee6: $51
	inc  de                                          ; $5ee7: $13
	inc  de                                          ; $5ee8: $13
	rst  $38                                         ; $5ee9: $ff
	ld   a, [$f917]                                  ; $5eea: $fa $17 $f9
	ld   c, d                                        ; $5eed: $4a
	xor  a                                           ; $5eee: $af
	cp   c                                           ; $5eef: $b9
	adc  d                                           ; $5ef0: $8a
	ld   hl, $3317                                   ; $5ef1: $21 $17 $33
	ld   e, l                                        ; $5ef4: $5d
	db   $fc                                         ; $5ef5: $fc
	dec  sp                                          ; $5ef6: $3b
	db   $fc                                         ; $5ef7: $fc
	ld   a, [de]                                     ; $5ef8: $1a
	call $e1fc                                       ; $5ef9: $cd $fc $e1
	inc  de                                          ; $5efc: $13
	ld   de, $7f14                                   ; $5efd: $11 $14 $7f
	ld   hl, sp-$05                                  ; $5f00: $f8 $fb
	dec  e                                           ; $5f02: $1d
	sbc  [hl]                                        ; $5f03: $9e
	pop  af                                          ; $5f04: $f1
	ld   l, [hl]                                     ; $5f05: $6e
	sbc  b                                           ; $5f06: $98
	ld   de, $7117                                   ; $5f07: $11 $17 $71
	add  hl, hl                                      ; $5f0a: $29
	ld   hl, sp-$31                                  ; $5f0b: $f8 $cf
	ld   e, $fc                                      ; $5f0d: $1e $fc
	pop  af                                          ; $5f0f: $f1
	sbc  l                                           ; $5f10: $9d
	db   $db                                         ; $5f11: $db
	inc  de                                          ; $5f12: $13
	ld   de, $1196                                   ; $5f13: $11 $96 $11
	rst  $38                                         ; $5f16: $ff
	di                                               ; $5f17: $f3
	add  hl, de                                      ; $5f18: $19
	rst  $38                                         ; $5f19: $ff
	or   c                                           ; $5f1a: $b1
	rst  $38                                         ; $5f1b: $ff
	call nz, Call_0b2_4611                           ; $5f1c: $c4 $11 $46
	ld   de, $f57d                                   ; $5f1f: $11 $7d $f5
	sbc  l                                           ; $5f22: $9d
	rra                                              ; $5f23: $1f
	and  c                                           ; $5f24: $a1
	ei                                               ; $5f25: $fb
	adc  d                                           ; $5f26: $8a
	jp   hl                                          ; $5f27: $e9


	rra                                              ; $5f28: $1f
	ld   de, $e164                                   ; $5f29: $11 $64 $e1
	sbc  a                                           ; $5f2c: $9f
	cp   d                                           ; $5f2d: $ba
	ld   [hl], c                                     ; $5f2e: $71
	cp   a                                           ; $5f2f: $bf
	sub  c                                           ; $5f30: $91
	sbc  a                                           ; $5f31: $9f
	pop  af                                          ; $5f32: $f1
	ld   h, c                                        ; $5f33: $61
	dec  d                                           ; $5f34: $15
	cp   b                                           ; $5f35: $b8
	inc  e                                           ; $5f36: $1c
	add  e                                           ; $5f37: $83
	rst  $38                                         ; $5f38: $ff
	ld   de, $1cfb                                   ; $5f39: $11 $fb $1c
	db   $fc                                         ; $5f3c: $fc
	pop  af                                          ; $5f3d: $f1
	rra                                              ; $5f3e: $1f
	ld   de, $a74a                                   ; $5f3f: $11 $4a $a7
	ld   d, a                                        ; $5f42: $57
	rst  $38                                         ; $5f43: $ff
	ld   de, $49ff                                   ; $5f44: $11 $ff $49
	rra                                              ; $5f47: $1f
	pop  af                                          ; $5f48: $f1
	inc  de                                          ; $5f49: $13
	ld   b, a                                        ; $5f4a: $47
	add  h                                           ; $5f4b: $84
	add  hl, de                                      ; $5f4c: $19
	adc  $e2                                         ; $5f4d: $ce $e2
	ld   c, a                                        ; $5f4f: $4f
	cp   [hl]                                        ; $5f50: $be
	sub  c                                           ; $5f51: $91
	rst  $28                                         ; $5f52: $ef
	ld   [hl], c                                     ; $5f53: $71
	add  [hl]                                        ; $5f54: $86
	dec  e                                           ; $5f55: $1d
	ld   hl, $81ff                                   ; $5f56: $21 $ff $81
	cp   c                                           ; $5f59: $b9
	or   c                                           ; $5f5a: $b1
	rst  $38                                         ; $5f5b: $ff
	rra                                              ; $5f5c: $1f
	push de                                          ; $5f5d: $d5
	pop  bc                                          ; $5f5e: $c1
	ld   d, c                                        ; $5f5f: $51
	ld   a, d                                        ; $5f60: $7a
	ld   c, c                                        ; $5f61: $49
	cp   l                                           ; $5f62: $bd
	dec  de                                          ; $5f63: $1b
	ld   a, b                                        ; $5f64: $78
	ld   a, [$cf94]                                  ; $5f65: $fa $94 $cf
	and  c                                           ; $5f68: $a1
	xor  c                                           ; $5f69: $a9
	ld   de, $fe18                                   ; $5f6a: $11 $18 $fe
	ld   d, d                                        ; $5f6d: $52
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f6e: $cf
	ld   [hl], c                                     ; $5f6f: $71
	ld   a, a                                        ; $5f70: $7f
	push af                                          ; $5f71: $f5
	sub  a                                           ; $5f72: $97
	and  $44                                         ; $5f73: $e6 $44
	dec  d                                           ; $5f75: $15
	adc  d                                           ; $5f76: $8a
	ld   h, [hl]                                     ; $5f77: $66
	ld   [hl], l                                     ; $5f78: $75
	rst  $30                                         ; $5f79: $f7
	inc  l                                           ; $5f7a: $2c
	rst  JumpTable                                         ; $5f7b: $df
	ld   l, e                                        ; $5f7c: $6b
	ld   d, e                                        ; $5f7d: $53
	ld   hl, sp+$11                                  ; $5f7e: $f8 $11
	inc  e                                           ; $5f80: $1c
	or   $18                                         ; $5f81: $f6 $18
	rst  JumpTable                                         ; $5f83: $df
	ld   [hl], c                                     ; $5f84: $71
	sbc  h                                           ; $5f85: $9c
	rst  $28                                         ; $5f86: $ef
	and  [hl]                                        ; $5f87: $a6
	ld   [hl], e                                     ; $5f88: $73
	db   $d3                                         ; $5f89: $d3
	inc  d                                           ; $5f8a: $14
	xor  a                                           ; $5f8b: $af
	add  c                                           ; $5f8c: $81
	ld   a, a                                        ; $5f8d: $7f
	and  c                                           ; $5f8e: $a1
	ld   e, a                                        ; $5f8f: $5f
	ld   [hl], l                                     ; $5f90: $75
	ld   sp, hl                                      ; $5f91: $f9
	rra                                              ; $5f92: $1f
	ld   d, c                                        ; $5f93: $51
	pop  de                                          ; $5f94: $d1
	dec  d                                           ; $5f95: $15
	cp   h                                           ; $5f96: $bc
	xor  l                                           ; $5f97: $ad
	ld   sp, $1cff                                   ; $5f98: $31 $ff $1c
	pop  af                                          ; $5f9b: $f1
	rst  $38                                         ; $5f9c: $ff
	dec  de                                          ; $5f9d: $1b
	pop  af                                          ; $5f9e: $f1
	ld   de, $a65f                                   ; $5f9f: $11 $5f $a6
	inc  h                                           ; $5fa2: $24
	rst  $38                                         ; $5fa3: $ff
	ld   de, $a8ff                                   ; $5fa4: $11 $ff $a8
	ld   [hl], c                                     ; $5fa7: $71
	rst  $38                                         ; $5fa8: $ff
	ld   de, $4c4a                                   ; $5fa9: $11 $4a $4c
	sub  e                                           ; $5fac: $93
	xor  a                                           ; $5fad: $af
	or   c                                           ; $5fae: $b1
	adc  h                                           ; $5faf: $8c
	ld   l, a                                        ; $5fb0: $6f
	pop  af                                          ; $5fb1: $f1
	ld   e, a                                        ; $5fb2: $5f
	ld   b, c                                        ; $5fb3: $41
	ld   sp, $833f                                   ; $5fb4: $31 $3f $83
	ld   hl, sp+$3f                                  ; $5fb7: $f8 $3f
	ld   h, c                                        ; $5fb9: $61
	rst  JumpTable                                         ; $5fba: $df
	or   a                                           ; $5fbb: $b7
	and  c                                           ; $5fbc: $a1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fbd: $cf
	ld   de, $fa82                                   ; $5fbe: $11 $82 $fa
	rra                                              ; $5fc1: $1f
	di                                               ; $5fc2: $f3
	or   $1f                                         ; $5fc3: $f6 $1f
	ldh  a, [c]                                      ; $5fc5: $f2
	ld   a, l                                        ; $5fc6: $7d
	rra                                              ; $5fc7: $1f
	add  c                                           ; $5fc8: $81
	rra                                              ; $5fc9: $1f
	and  h                                           ; $5fca: $a4
	ld   e, c                                        ; $5fcb: $59
	db   $ed                                         ; $5fcc: $ed
	ld   de, $1aff                                   ; $5fcd: $11 $ff $1a
	db   $f4                                         ; $5fd0: $f4
	ld   a, [$311b]                                  ; $5fd1: $fa $1b $31
	daa                                              ; $5fd4: $27
	jp   c, $1da9                                    ; $5fd5: $da $a9 $1d

	pop  af                                          ; $5fd8: $f1

jr_0b2_5fd9:
	rra                                              ; $5fd9: $1f
	db   $fc                                         ; $5fda: $fc
	pop  af                                          ; $5fdb: $f1
	rra                                              ; $5fdc: $1f
	ld   de, $ff21                                   ; $5fdd: $11 $21 $ff
	inc  [hl]                                        ; $5fe0: $34
	or   d                                           ; $5fe1: $b2
	cp   a                                           ; $5fe2: $bf
	ld   d, $f9                                      ; $5fe3: $16 $f9
	cp   [hl]                                        ; $5fe5: $be
	jr   jr_0b2_5fd9                                 ; $5fe6: $18 $f1

	ld   d, $ad                                      ; $5fe8: $16 $ad
	ld   a, b                                        ; $5fea: $78
	sub  [hl]                                        ; $5feb: $96
	sbc  [hl]                                        ; $5fec: $9e
	add  e                                           ; $5fed: $83
	cp   a                                           ; $5fee: $bf
	and  a                                           ; $5fef: $a7
	ld   e, b                                        ; $5ff0: $58
	pop  de                                          ; $5ff1: $d1
	inc  d                                           ; $5ff2: $14
	cp   e                                           ; $5ff3: $bb
	pop  bc                                          ; $5ff4: $c1
	ld   e, l                                        ; $5ff5: $5d
	ld   c, h                                        ; $5ff6: $4c
	or   l                                           ; $5ff7: $b5
	xor  [hl]                                        ; $5ff8: $ae
	jp   c, Jump_0b2_7a65                            ; $5ff9: $da $65 $7a

	ld   de, $c89a                                   ; $5ffc: $11 $9a $c8
	add  hl, hl                                      ; $5fff: $29
	sub  [hl]                                        ; $6000: $96
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6001: $cf
	ld   c, b                                        ; $6002: $48
	or   $9f                                         ; $6003: $f6 $9f
	inc  de                                          ; $6005: $13
	and  c                                           ; $6006: $a1
	ld   e, e                                        ; $6007: $5b
	ld   e, a                                        ; $6008: $5f
	pop  de                                          ; $6009: $d1
	rst  $30                                         ; $600a: $f7
	rra                                              ; $600b: $1f
	call nz, $3ddc                                   ; $600c: $c4 $dc $3d
	or   d                                           ; $600f: $b2
	inc  hl                                          ; $6010: $23
	ld   d, h                                        ; $6011: $54
	cp   b                                           ; $6012: $b8
	ld   a, l                                        ; $6013: $7d
	ld   h, l                                        ; $6014: $65
	sub  a                                           ; $6015: $97
	sbc  a                                           ; $6016: $9f
	and  [hl]                                        ; $6017: $a6
	and  [hl]                                        ; $6018: $a6
	ld   c, [hl]                                     ; $6019: $4e
	ld   sp, $9db6                                   ; $601a: $31 $b6 $9d
	ld   b, a                                        ; $601d: $47
	push de                                          ; $601e: $d5
	scf                                              ; $601f: $37
	adc  c                                           ; $6020: $89
	xor  e                                           ; $6021: $ab
	ld   h, [hl]                                     ; $6022: $66
	and  [hl]                                        ; $6023: $a6
	halt                                             ; $6024: $76
	dec  sp                                          ; $6025: $3b
	sub  $56                                         ; $6026: $d6 $56
	ld   a, c                                        ; $6028: $79
	add  [hl]                                        ; $6029: $86
	ld   h, a                                        ; $602a: $67
	ld   h, [hl]                                     ; $602b: $66
	ld   h, a                                        ; $602c: $67
	ld   b, [hl]                                     ; $602d: $46
	ld   h, e                                        ; $602e: $63
	adc  d                                           ; $602f: $8a
	ld   l, c                                        ; $6030: $69
	cp   b                                           ; $6031: $b8
	sbc  c                                           ; $6032: $99
	sbc  e                                           ; $6033: $9b
	cp   b                                           ; $6034: $b8
	ld   a, b                                        ; $6035: $78
	sbc  c                                           ; $6036: $99
	ld   l, c                                        ; $6037: $69
	add  a                                           ; $6038: $87
	sub  a                                           ; $6039: $97
	xor  c                                           ; $603a: $a9
	ld   a, d                                        ; $603b: $7a
	cp   e                                           ; $603c: $bb
	xor  d                                           ; $603d: $aa
	adc  d                                           ; $603e: $8a
	sbc  b                                           ; $603f: $98
	sbc  c                                           ; $6040: $99
	adc  b                                           ; $6041: $88
	sbc  c                                           ; $6042: $99
	ld   [hl], a                                     ; $6043: $77
	sbc  c                                           ; $6044: $99
	sbc  c                                           ; $6045: $99
	xor  e                                           ; $6046: $ab
	sbc  b                                           ; $6047: $98
	sbc  d                                           ; $6048: $9a
	xor  c                                           ; $6049: $a9
	sbc  b                                           ; $604a: $98
	xor  d                                           ; $604b: $aa
	sbc  c                                           ; $604c: $99
	sbc  b                                           ; $604d: $98
	sbc  b                                           ; $604e: $98
	adc  b                                           ; $604f: $88
	sbc  d                                           ; $6050: $9a
	sbc  b                                           ; $6051: $98
	adc  b                                           ; $6052: $88
	sbc  b                                           ; $6053: $98
	adc  c                                           ; $6054: $89
	sbc  c                                           ; $6055: $99
	sbc  b                                           ; $6056: $98
	sbc  c                                           ; $6057: $99
	adc  b                                           ; $6058: $88
	adc  b                                           ; $6059: $88
	sbc  c                                           ; $605a: $99
	sbc  b                                           ; $605b: $98
	adc  b                                           ; $605c: $88
	sub  a                                           ; $605d: $97
	adc  b                                           ; $605e: $88
	sbc  b                                           ; $605f: $98
	adc  b                                           ; $6060: $88
	sbc  b                                           ; $6061: $98
	sbc  b                                           ; $6062: $98
	adc  b                                           ; $6063: $88
	adc  b                                           ; $6064: $88
	adc  b                                           ; $6065: $88
	sbc  b                                           ; $6066: $98
	adc  b                                           ; $6067: $88
	ld   [hl], a                                     ; $6068: $77
	adc  b                                           ; $6069: $88
	adc  b                                           ; $606a: $88
	ld   a, b                                        ; $606b: $78
	adc  b                                           ; $606c: $88
	adc  b                                           ; $606d: $88
	ld   [hl], a                                     ; $606e: $77
	add  a                                           ; $606f: $87
	ld   [hl], a                                     ; $6070: $77
	ld   a, b                                        ; $6071: $78
	add  a                                           ; $6072: $87
	ld   a, b                                        ; $6073: $78
	ld   a, b                                        ; $6074: $78
	add  a                                           ; $6075: $87
	ld   a, b                                        ; $6076: $78
	adc  b                                           ; $6077: $88
	ld   [hl], a                                     ; $6078: $77
	ld   a, b                                        ; $6079: $78
	add  a                                           ; $607a: $87
	ld   [hl], a                                     ; $607b: $77
	add  a                                           ; $607c: $87
	ld   [hl], a                                     ; $607d: $77
	ld   [hl], a                                     ; $607e: $77
	ld   [hl], a                                     ; $607f: $77
	add  a                                           ; $6080: $87
	ld   a, b                                        ; $6081: $78
	add  a                                           ; $6082: $87
	ld   [hl], a                                     ; $6083: $77
	ld   a, b                                        ; $6084: $78
	add  a                                           ; $6085: $87
	ld   [hl], a                                     ; $6086: $77
	adc  b                                           ; $6087: $88
	ld   [hl], a                                     ; $6088: $77
	adc  b                                           ; $6089: $88
	add  a                                           ; $608a: $87
	ld   [hl], a                                     ; $608b: $77
	adc  b                                           ; $608c: $88
	ld   [hl], a                                     ; $608d: $77
	adc  b                                           ; $608e: $88
	add  a                                           ; $608f: $87
	ld   [hl], a                                     ; $6090: $77
	add  a                                           ; $6091: $87
	ld   a, b                                        ; $6092: $78
	ld   a, b                                        ; $6093: $78
	add  a                                           ; $6094: $87
	ld   a, b                                        ; $6095: $78
	add  a                                           ; $6096: $87
	ld   [hl], a                                     ; $6097: $77
	adc  b                                           ; $6098: $88
	add  a                                           ; $6099: $87
	ld   a, b                                        ; $609a: $78
	add  a                                           ; $609b: $87
	adc  b                                           ; $609c: $88
	ld   a, b                                        ; $609d: $78
	adc  b                                           ; $609e: $88
	add  a                                           ; $609f: $87
	ld   a, b                                        ; $60a0: $78
	adc  b                                           ; $60a1: $88
	adc  b                                           ; $60a2: $88
	adc  b                                           ; $60a3: $88
	add  a                                           ; $60a4: $87
	adc  b                                           ; $60a5: $88
	adc  b                                           ; $60a6: $88
	add  a                                           ; $60a7: $87
	adc  b                                           ; $60a8: $88
	adc  b                                           ; $60a9: $88
	add  a                                           ; $60aa: $87
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
	ld   a, b                                        ; $60b8: $78
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

Jump_0b2_6388:
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

Jump_0b2_6398:
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

Call_0b2_63a8:
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

Call_0b2_63c9:
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

Jump_0b2_6487:
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

Call_0b2_64a7:
	adc  b                                           ; $64a7: $88
	adc  b                                           ; $64a8: $88
	adc  b                                           ; $64a9: $88
	adc  b                                           ; $64aa: $88
	adc  b                                           ; $64ab: $88
	adc  b                                           ; $64ac: $88
	adc  b                                           ; $64ad: $88
	adc  b                                           ; $64ae: $88
	adc  c                                           ; $64af: $89
	sbc  b                                           ; $64b0: $98
	adc  b                                           ; $64b1: $88
	adc  b                                           ; $64b2: $88
	adc  b                                           ; $64b3: $88
	adc  b                                           ; $64b4: $88
	add  a                                           ; $64b5: $87
	adc  b                                           ; $64b6: $88
	adc  b                                           ; $64b7: $88
	adc  b                                           ; $64b8: $88
	adc  b                                           ; $64b9: $88
	adc  b                                           ; $64ba: $88
	adc  b                                           ; $64bb: $88
	adc  c                                           ; $64bc: $89
	sbc  c                                           ; $64bd: $99
	sbc  c                                           ; $64be: $99
	sbc  d                                           ; $64bf: $9a
	adc  c                                           ; $64c0: $89
	sbc  c                                           ; $64c1: $99
	adc  d                                           ; $64c2: $8a
	sbc  d                                           ; $64c3: $9a
	sub  a                                           ; $64c4: $97
	ld   l, b                                        ; $64c5: $68
	add  [hl]                                        ; $64c6: $86
	ld   h, a                                        ; $64c7: $67
	halt                                             ; $64c8: $76
	ld   h, l                                        ; $64c9: $65
	ld   h, a                                        ; $64ca: $67
	ld   [hl], a                                     ; $64cb: $77
	sbc  c                                           ; $64cc: $99
	adc  b                                           ; $64cd: $88
	sbc  c                                           ; $64ce: $99
	sbc  c                                           ; $64cf: $99
	xor  c                                           ; $64d0: $a9
	xor  c                                           ; $64d1: $a9
	ld   a, b                                        ; $64d2: $78
	add  a                                           ; $64d3: $87
	ld   [hl], a                                     ; $64d4: $77
	ld   h, a                                        ; $64d5: $67
	halt                                             ; $64d6: $76
	ld   h, [hl]                                     ; $64d7: $66
	halt                                             ; $64d8: $76
	halt                                             ; $64d9: $76
	ld   [hl], a                                     ; $64da: $77
	adc  b                                           ; $64db: $88
	adc  b                                           ; $64dc: $88
	sbc  c                                           ; $64dd: $99
	sbc  c                                           ; $64de: $99
	xor  d                                           ; $64df: $aa
	xor  d                                           ; $64e0: $aa
	xor  d                                           ; $64e1: $aa
	sbc  b                                           ; $64e2: $98
	add  a                                           ; $64e3: $87
	ld   [hl], a                                     ; $64e4: $77
	ld   h, h                                        ; $64e5: $64
	inc  sp                                          ; $64e6: $33
	ld   [hl-], a                                    ; $64e7: $32
	inc  h                                           ; $64e8: $24
	ld   h, [hl]                                     ; $64e9: $66
	ld   a, c                                        ; $64ea: $79
	xor  h                                           ; $64eb: $ac
	call $ffdf                                       ; $64ec: $cd $df $ff
	db   $ed                                         ; $64ef: $ed
	db   $db                                         ; $64f0: $db
	and  a                                           ; $64f1: $a7
	ld   b, e                                        ; $64f2: $43
	ld   de, $1311                                   ; $64f3: $11 $11 $13
	ld   hl, $de6d                                   ; $64f6: $21 $6d $de
	rst  $38                                         ; $64f9: $ff
	rst  $38                                         ; $64fa: $ff
	rst  $38                                         ; $64fb: $ff
	rst  $38                                         ; $64fc: $ff

Jump_0b2_64fd:
	reti                                             ; $64fd: $d9


	add  l                                           ; $64fe: $85
	ld   hl, $1111                                   ; $64ff: $21 $11 $11
	ld   de, $5e55                                   ; $6502: $11 $55 $5e
	rst  $38                                         ; $6505: $ff
	rst  $38                                         ; $6506: $ff
	rst  $38                                         ; $6507: $ff
	rst  $38                                         ; $6508: $ff
	rst  $38                                         ; $6509: $ff
	push de                                          ; $650a: $d5
	ld   [hl-], a                                    ; $650b: $32
	ld   de, $1111                                   ; $650c: $11 $11 $11
	ld   de, $8c1b                                   ; $650f: $11 $1b $8c
	rst  $38                                         ; $6512: $ff
	rst  $38                                         ; $6513: $ff
	rst  $38                                         ; $6514: $ff
	rst  $38                                         ; $6515: $ff
	cp   $e8                                         ; $6516: $fe $e8
	inc  sp                                          ; $6518: $33
	ld   de, $1111                                   ; $6519: $11 $11 $11
	ld   de, $791a                                   ; $651c: $11 $1a $79
	rst  $38                                         ; $651f: $ff
	rst  $38                                         ; $6520: $ff
	rst  $38                                         ; $6521: $ff
	rst  $38                                         ; $6522: $ff
	cp   $fc                                         ; $6523: $fe $fc
	ld   b, e                                        ; $6525: $43
	ld   de, $1111                                   ; $6526: $11 $11 $11
	ld   de, $9819                                   ; $6529: $11 $19 $98
	rst  $38                                         ; $652c: $ff

jr_0b2_652d:
	rst  $38                                         ; $652d: $ff
	rst  $38                                         ; $652e: $ff
	rst  $38                                         ; $652f: $ff
	db   $fd                                         ; $6530: $fd
	db   $ec                                         ; $6531: $ec
	ld   b, e                                        ; $6532: $43
	ld   hl, $1111                                   ; $6533: $21 $11 $11
	ld   de, $b719                                   ; $6536: $11 $19 $b7
	rst  $38                                         ; $6539: $ff
	rst  $38                                         ; $653a: $ff
	rst  $38                                         ; $653b: $ff
	rst  $38                                         ; $653c: $ff
	db   $fd                                         ; $653d: $fd
	db   $eb                                         ; $653e: $eb
	ld   d, e                                        ; $653f: $53
	ld   b, d                                        ; $6540: $42
	ld   de, $1111                                   ; $6541: $11 $11 $11
	ld   d, $97                                      ; $6544: $16 $97
	rst  $38                                         ; $6546: $ff
	rst  $38                                         ; $6547: $ff
	rst  $38                                         ; $6548: $ff
	rst  $38                                         ; $6549: $ff
	cp   $ca                                         ; $654a: $fe $ca
	ld   [hl], l                                     ; $654c: $75
	ld   hl, $1111                                   ; $654d: $21 $11 $11
	ld   de, $8618                                   ; $6550: $11 $18 $86
	rst  $38                                         ; $6553: $ff
	rst  $38                                         ; $6554: $ff
	rst  $38                                         ; $6555: $ff
	rst  $38                                         ; $6556: $ff
	db   $fc                                         ; $6557: $fc
	db   $eb                                         ; $6558: $eb
	ld   d, l                                        ; $6559: $55
	ld   [hl-], a                                    ; $655a: $32
	ld   bc, $1111                                   ; $655b: $01 $11 $11
	ld   d, $97                                      ; $655e: $16 $97
	rst  $38                                         ; $6560: $ff
	rst  $38                                         ; $6561: $ff
	rst  $38                                         ; $6562: $ff
	rst  $38                                         ; $6563: $ff
	db   $ec                                         ; $6564: $ec
	call c, $3186                                    ; $6565: $dc $86 $31
	ld   de, $1111                                   ; $6568: $11 $11 $11
	add  hl, de                                      ; $656b: $19
	add  l                                           ; $656c: $85
	rst  $38                                         ; $656d: $ff
	rst  $38                                         ; $656e: $ff
	rst  $38                                         ; $656f: $ff
	rst  $38                                         ; $6570: $ff
	db   $db                                         ; $6571: $db
	db   $eb                                         ; $6572: $eb
	ld   h, e                                        ; $6573: $63
	inc  sp                                          ; $6574: $33
	ld   de, $1111                                   ; $6575: $11 $11 $11
	add  hl, de                                      ; $6578: $19
	sbc  b                                           ; $6579: $98
	rst  $38                                         ; $657a: $ff
	rst  $38                                         ; $657b: $ff
	rst  $38                                         ; $657c: $ff
	rst  $38                                         ; $657d: $ff
	db   $ec                                         ; $657e: $ec
	res  0, l                                        ; $657f: $cb $85
	ld   [hl+], a                                    ; $6581: $22
	ld   de, $1111                                   ; $6582: $11 $11 $11
	add  hl, de                                      ; $6585: $19
	ld   h, [hl]                                     ; $6586: $66
	rst  $38                                         ; $6587: $ff
	rst  $38                                         ; $6588: $ff
	rst  $38                                         ; $6589: $ff
	rst  $38                                         ; $658a: $ff
	db   $db                                         ; $658b: $db
	db   $db                                         ; $658c: $db
	ld   [hl], h                                     ; $658d: $74
	ld   b, d                                        ; $658e: $42
	ld   de, $1111                                   ; $658f: $11 $11 $11
	inc  e                                           ; $6592: $1c
	ld   a, b                                        ; $6593: $78
	rst  $38                                         ; $6594: $ff
	rst  $38                                         ; $6595: $ff
	rst  $38                                         ; $6596: $ff
	rst  $38                                         ; $6597: $ff
	adc  h                                           ; $6598: $8c
	db   $fd                                         ; $6599: $fd
	ld   [hl], h                                     ; $659a: $74
	dec  [hl]                                        ; $659b: $35
	ld   de, $1111                                   ; $659c: $11 $11 $11
	jr   jr_0b2_652d                                 ; $659f: $18 $8c

	rst  $38                                         ; $65a1: $ff
	rst  $38                                         ; $65a2: $ff
	rst  $38                                         ; $65a3: $ff
	rst  $38                                         ; $65a4: $ff
	cp   h                                           ; $65a5: $bc
	ld   [$4275], a                                  ; $65a6: $ea $75 $42
	ld   de, $1111                                   ; $65a9: $11 $11 $11
	ld   a, [de]                                     ; $65ac: $1a
	sbc  e                                           ; $65ad: $9b
	rst  $38                                         ; $65ae: $ff
	rst  $38                                         ; $65af: $ff
	rst  $38                                         ; $65b0: $ff
	cp   $9b                                         ; $65b1: $fe $9b
	ei                                               ; $65b3: $fb
	ld   d, e                                        ; $65b4: $53
	ld   b, e                                        ; $65b5: $43
	ld   de, $1111                                   ; $65b6: $11 $11 $11
	ld   l, c                                        ; $65b9: $69
	dec  a                                           ; $65ba: $3d
	rst  $38                                         ; $65bb: $ff
	rst  $38                                         ; $65bc: $ff
	rst  $38                                         ; $65bd: $ff
	db   $fd                                         ; $65be: $fd
	xor  l                                           ; $65bf: $ad
	jp   c, Jump_0b2_4166                            ; $65c0: $da $66 $41

	ld   de, $1111                                   ; $65c3: $11 $11 $11
	sbc  b                                           ; $65c6: $98
	ld   e, a                                        ; $65c7: $5f
	rst  $38                                         ; $65c8: $ff
	rst  $38                                         ; $65c9: $ff
	rst  $38                                         ; $65ca: $ff
	res  7, e                                        ; $65cb: $cb $bb
	jp   hl                                          ; $65cd: $e9


	ld   b, a                                        ; $65ce: $47
	ld   [hl], c                                     ; $65cf: $71
	ld   de, $1111                                   ; $65d0: $11 $11 $11
	or   [hl]                                        ; $65d3: $b6
	ld   c, a                                        ; $65d4: $4f
	rst  $38                                         ; $65d5: $ff
	db   $fd                                         ; $65d6: $fd
	rst  $38                                         ; $65d7: $ff
	rst  $30                                         ; $65d8: $f7
	sbc  [hl]                                        ; $65d9: $9e
	add  sp, $56                                     ; $65da: $e8 $56
	ld   h, c                                        ; $65dc: $61
	ld   de, $1111                                   ; $65dd: $11 $11 $11
	cp   b                                           ; $65e0: $b8
	sbc  a                                           ; $65e1: $9f
	rst  $38                                         ; $65e2: $ff
	rst  $38                                         ; $65e3: $ff
	rst  $28                                         ; $65e4: $ef
	ld   [$b7bf], a                                  ; $65e5: $ea $bf $b7
	ld   e, c                                        ; $65e8: $59
	ld   hl, $1111                                   ; $65e9: $21 $11 $11
	ld   d, $79                                      ; $65ec: $16 $79
	rst  $38                                         ; $65ee: $ff
	rst  $38                                         ; $65ef: $ff
	ld   [$8bff], a                                  ; $65f0: $ea $ff $8b
	db   $ec                                         ; $65f3: $ec
	rst  ToBoot                                         ; $65f4: $c7
	ld   d, [hl]                                     ; $65f5: $56
	ld   hl, $1111                                   ; $65f6: $21 $11 $11
	add  hl, de                                      ; $65f9: $19
	ld   c, b                                        ; $65fa: $48
	rst  $38                                         ; $65fb: $ff
	rst  $38                                         ; $65fc: $ff
	cp   $fb                                         ; $65fd: $fe $fb
	ld   a, [hl]                                     ; $65ff: $7e
	db   $fd                                         ; $6600: $fd
	ld   e, b                                        ; $6601: $58
	sub  e                                           ; $6602: $93
	ld   de, $1111                                   ; $6603: $11 $11 $11
	dec  hl                                          ; $6606: $2b
	ld   e, d                                        ; $6607: $5a
	rst  $38                                         ; $6608: $ff
	rst  $38                                         ; $6609: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $660a: $cf
	db   $fc                                         ; $660b: $fc
	ld   l, l                                        ; $660c: $6d
	ld   sp, hl                                      ; $660d: $f9
	ld   h, [hl]                                     ; $660e: $66
	ld   h, c                                        ; $660f: $61
	ld   de, $1111                                   ; $6610: $11 $11 $11
	ld   h, l                                        ; $6613: $65
	ld   l, a                                        ; $6614: $6f
	rst  $38                                         ; $6615: $ff
	rst  $38                                         ; $6616: $ff
	rst  $38                                         ; $6617: $ff
	ld   h, [hl]                                     ; $6618: $66
	rst  $38                                         ; $6619: $ff
	ret  c                                           ; $661a: $d8

	ld   l, h                                        ; $661b: $6c
	or   c                                           ; $661c: $b1
	ld   de, $1111                                   ; $661d: $11 $11 $11
	ld   l, b                                        ; $6620: $68
	rst  $38                                         ; $6621: $ff
	rst  $38                                         ; $6622: $ff
	db   $fc                                         ; $6623: $fc
	rst  $38                                         ; $6624: $ff
	adc  [hl]                                        ; $6625: $8e
	reti                                             ; $6626: $d9


	db   $fc                                         ; $6627: $fc
	ld   c, b                                        ; $6628: $48
	ld   d, c                                        ; $6629: $51
	ld   de, $1511                                   ; $662a: $11 $11 $15
	or   a                                           ; $662d: $b7
	rst  $38                                         ; $662e: $ff
	rst  $38                                         ; $662f: $ff
	cp   [hl]                                        ; $6630: $be
	db   $fd                                         ; $6631: $fd
	ld   l, h                                        ; $6632: $6c
	xor  $e5                                         ; $6633: $ee $e5
	ld   a, b                                        ; $6635: $78
	ld   de, $1111                                   ; $6636: $11 $11 $11
	rla                                              ; $6639: $17
	adc  l                                           ; $663a: $8d
	rst  $28                                         ; $663b: $ef
	rst  $38                                         ; $663c: $ff
	ld   e, l                                        ; $663d: $5d
	cp   $1f                                         ; $663e: $fe $1f
	db   $fc                                         ; $6640: $fc
	ld   b, [hl]                                     ; $6641: $46
	or   l                                           ; $6642: $b5
	ld   de, $1111                                   ; $6643: $11 $11 $11
	ld   l, $9a                                      ; $6646: $2e $9a
	rst  $38                                         ; $6648: $ff
	db   $fd                                         ; $6649: $fd
	ld   l, h                                        ; $664a: $6c
	db   $fc                                         ; $664b: $fc
	set  7, a                                        ; $664c: $cb $ff
	sub  e                                           ; $664e: $93
	ld   [hl-], a                                    ; $664f: $32
	ld   de, $1111                                   ; $6650: $11 $11 $11
	xor  d                                           ; $6653: $aa
	xor  [hl]                                        ; $6654: $ae
	rst  $38                                         ; $6655: $ff
	ld   sp, hl                                      ; $6656: $f9
	rst  $38                                         ; $6657: $ff
	or   $8f                                         ; $6658: $f6 $8f
	db   $ec                                         ; $665a: $ec
	ld   h, d                                        ; $665b: $62
	ld   d, c                                        ; $665c: $51
	ld   de, $1311                                   ; $665d: $11 $11 $13
	sbc  e                                           ; $6660: $9b
	rst  $38                                         ; $6661: $ff
	push af                                          ; $6662: $f5
	cp   a                                           ; $6663: $bf
	ld   sp, hl                                      ; $6664: $f9
	ld   l, [hl]                                     ; $6665: $6e
	rst  $38                                         ; $6666: $ff
	add  c                                           ; $6667: $81
	cp   d                                           ; $6668: $ba
	ld   de, $1114                                   ; $6669: $11 $14 $11
	ld   e, $f7                                      ; $666c: $1e $f7
	ld   a, a                                        ; $666e: $7f
	db   $fd                                         ; $666f: $fd
	cp   e                                           ; $6670: $bb
	rst  JumpTable                                         ; $6671: $df
	db   $e4                                         ; $6672: $e4
	rst  $38                                         ; $6673: $ff
	sub  h                                           ; $6674: $94
	ld   de, $1112                                   ; $6675: $11 $12 $11
	ld   d, $b1                                      ; $6678: $16 $b1
	cp   a                                           ; $667a: $bf
	rst  JumpTable                                         ; $667b: $df
	and  $ef                                         ; $667c: $e6 $ef
	and  c                                           ; $667e: $a1
	rst  $38                                         ; $667f: $ff
	ld   d, h                                        ; $6680: $54
	push af                                          ; $6681: $f5
	ld   de, $1112                                   ; $6682: $11 $12 $11
	inc  de                                          ; $6685: $13
	call $afad                                       ; $6686: $cd $ad $af
	pop  af                                          ; $6689: $f1
	rra                                              ; $668a: $1f
	pop  af                                          ; $668b: $f1
	cp   a                                           ; $668c: $bf
	push af                                          ; $668d: $f5
	ld   de, $4113                                   ; $668e: $11 $13 $41
	add  hl, de                                      ; $6691: $19
	ld   [hl-], a                                    ; $6692: $32
	sbc  c                                           ; $6693: $99
	rst  $38                                         ; $6694: $ff
	ld   sp, hl                                      ; $6695: $f9
	sbc  d                                           ; $6696: $9a
	rst  $38                                         ; $6697: $ff
	ld   l, d                                        ; $6698: $6a
	rst  $38                                         ; $6699: $ff
	ld   b, c                                        ; $669a: $41
	add  c                                           ; $669b: $81
	ld   de, $1331                                   ; $669c: $11 $31 $13
	ld   a, b                                        ; $669f: $78
	ld   l, l                                        ; $66a0: $6d
	db   $fd                                         ; $66a1: $fd
	ld   l, [hl]                                     ; $66a2: $6e
	ld   sp, hl                                      ; $66a3: $f9
	ccf                                              ; $66a4: $3f
	ei                                               ; $66a5: $fb
	rst  $30                                         ; $66a6: $f7
	ld   a, [hl+]                                    ; $66a7: $2a
	ld   de, $1411                                   ; $66a8: $11 $11 $14
	ld   d, $ec                                      ; $66ab: $16 $ec
	and  e                                           ; $66ad: $a3
	rst  JumpTable                                         ; $66ae: $df
	add  $bf                                         ; $66af: $c6 $bf
	or   $9f                                         ; $66b1: $f6 $9f
	add  c                                           ; $66b3: $81
	sub  c                                           ; $66b4: $91
	ld   [de], a                                     ; $66b5: $12
	and  h                                           ; $66b6: $a4
	ld   de, $7eb6                                   ; $66b7: $11 $b6 $7e
	xor  d                                           ; $66ba: $aa
	sbc  d                                           ; $66bb: $9a
	rst  $38                                         ; $66bc: $ff
	ld   l, $f8                                      ; $66bd: $2e $f8
	xor  $85                                         ; $66bf: $ee $85
	ld   de, $2149                                   ; $66c1: $11 $49 $21

jr_0b2_66c4:
	dec  e                                           ; $66c4: $1d
	ld   sp, $7cff                                   ; $66c5: $31 $ff $7c
	db   $f4                                         ; $66c8: $f4
	rst  JumpTable                                         ; $66c9: $df
	ld   h, c                                        ; $66ca: $61
	rst  $38                                         ; $66cb: $ff
	add  hl, hl                                      ; $66cc: $29
	sub  c                                           ; $66cd: $91
	add  hl, de                                      ; $66ce: $19
	ld   sp, $1637                                   ; $66cf: $31 $37 $16
	add  c                                           ; $66d2: $81
	xor  a                                           ; $66d3: $af
	add  d                                           ; $66d4: $82
	rst  $38                                         ; $66d5: $ff
	xor  h                                           ; $66d6: $ac
	ld   a, a                                        ; $66d7: $7f
	ei                                               ; $66d8: $fb
	ld   hl, $1166                                   ; $66d9: $21 $66 $11
	ld   sp, $951d                                   ; $66dc: $31 $1d $95
	dec  sp                                          ; $66df: $3b
	ld   sp, hl                                      ; $66e0: $f9
	ld   a, [de]                                     ; $66e1: $1a
	rst  $38                                         ; $66e2: $ff
	pop  af                                          ; $66e3: $f1
	ld   e, a                                        ; $66e4: $5f
	db   $f4                                         ; $66e5: $f4
	inc  d                                           ; $66e6: $14
	and  c                                           ; $66e7: $a1
	ld   de, $9119                                   ; $66e8: $11 $19 $91
	inc  sp                                          ; $66eb: $33
	rst  $38                                         ; $66ec: $ff
	ld   de, $f2ff                                   ; $66ed: $11 $ff $f2
	rrca                                             ; $66f0: $0f
	rst  $38                                         ; $66f1: $ff
	dec  h                                           ; $66f2: $25
	and  c                                           ; $66f3: $a1
	dec  d                                           ; $66f4: $15
	add  l                                           ; $66f5: $85
	ld   de, $19f6                                   ; $66f6: $11 $f6 $19
	db   $fd                                         ; $66f9: $fd
	inc  e                                           ; $66fa: $1c
	rst  $38                                         ; $66fb: $ff
	ld   h, l                                        ; $66fc: $65
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66fd: $cf
	pop  hl                                          ; $66fe: $e1
	ld   h, l                                        ; $66ff: $65
	ld   b, c                                        ; $6700: $41
	dec  d                                           ; $6701: $15
	and  e                                           ; $6702: $a3
	ld   de, $88ae                                   ; $6703: $11 $ae $88
	ld   d, [hl]                                     ; $6706: $56
	rst  $38                                         ; $6707: $ff
	and  c                                           ; $6708: $a1
	ld   c, a                                        ; $6709: $4f
	pop  af                                          ; $670a: $f1

jr_0b2_670b:
	ld   e, a                                        ; $670b: $5f
	ld   de, $7942                                   ; $670c: $11 $42 $79
	ld   de, $118f                                   ; $670f: $11 $8f $11
	db   $fd                                         ; $6712: $fd
	rra                                              ; $6713: $1f
	pop  af                                          ; $6714: $f1
	rst  $38                                         ; $6715: $ff
	sbc  d                                           ; $6716: $9a
	xor  a                                           ; $6717: $af
	pop  bc                                          ; $6718: $c1
	jr   jr_0b2_66c4                                 ; $6719: $18 $a9

	ld   de, $79f6                                   ; $671b: $11 $f6 $79
	ld   [hl+], a                                    ; $671e: $22
	ld   a, [$f11f]                                  ; $671f: $fa $1f $f1
	ld   c, a                                        ; $6722: $4f
	pop  de                                          ; $6723: $d1
	ei                                               ; $6724: $fb
	ld   de, $12d4                                   ; $6725: $11 $d4 $12
	dec  sp                                          ; $6728: $3b
	ld   hl, $f696                                   ; $6729: $21 $96 $f6
	cpl                                              ; $672c: $2f
	pop  de                                          ; $672d: $d1
	rst  $38                                         ; $672e: $ff
	cpl                                              ; $672f: $2f
	jp   nz, $db11                                   ; $6730: $c2 $11 $db

	ld   de, $61ba                                   ; $6733: $11 $ba $61
	ld   c, b                                        ; $6736: $48
	and  h                                           ; $6737: $a4
	cp   a                                           ; $6738: $bf
	ld   c, a                                        ; $6739: $4f
	ldh  a, [c]                                      ; $673a: $f2
	rra                                              ; $673b: $1f
	ldh  a, [c]                                      ; $673c: $f2
	inc  d                                           ; $673d: $14
	jr   @-$1d                                       ; $673e: $18 $e1

	dec  d                                           ; $6740: $15
	db   $e4                                         ; $6741: $e4
	dec  d                                           ; $6742: $15
	adc  a                                           ; $6743: $8f
	and  c                                           ; $6744: $a1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6745: $cf
	rst  $38                                         ; $6746: $ff
	dec  de                                          ; $6747: $1b
	db   $fd                                         ; $6748: $fd
	ld   [hl], l                                     ; $6749: $75
	ld   [de], a                                     ; $674a: $12
	add  hl, sp                                      ; $674b: $39
	ld   d, c                                        ; $674c: $51
	ld   l, h                                        ; $674d: $6c
	or   c                                           ; $674e: $b1
	ld   b, h                                        ; $674f: $44
	cpl                                              ; $6750: $2f
	sub  h                                           ; $6751: $94
	ld   sp, hl                                      ; $6752: $f9
	rra                                              ; $6753: $1f
	ldh  a, [c]                                      ; $6754: $f2
	rst  $38                                         ; $6755: $ff
	ld   de, $19fc                                   ; $6756: $11 $fc $19
	ld   [hl], c                                     ; $6759: $71
	add  h                                           ; $675a: $84
	ld   d, l                                        ; $675b: $55
	sbc  b                                           ; $675c: $98
	ccf                                              ; $675d: $3f
	ld   hl, sp-$02                                  ; $675e: $f8 $fe
	ld   l, c                                        ; $6760: $69
	rst  $38                                         ; $6761: $ff
	ld   d, c                                        ; $6762: $51
	ld   l, [hl]                                     ; $6763: $6e
	ld   de, $3ca6                                   ; $6764: $11 $a6 $3c
	and  c                                           ; $6767: $a1
	rra                                              ; $6768: $1f
	pop  af                                          ; $6769: $f1
	rra                                              ; $676a: $1f
	db   $f4                                         ; $676b: $f4
	cp   l                                           ; $676c: $bd
	rst  JumpTable                                         ; $676d: $df
	pop  bc                                          ; $676e: $c1
	jr   jr_0b2_670b                                 ; $676f: $18 $9a

	sub  c                                           ; $6771: $91
	cpl                                              ; $6772: $2f
	ld   [hl], c                                     ; $6773: $71
	ld   b, c                                        ; $6774: $41
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6775: $cf
	ld   de, $42ff                                   ; $6776: $11 $ff $42
	rst  $28                                         ; $6779: $ef
	db   $e3                                         ; $677a: $e3
	ld   de, $11ff                                   ; $677b: $11 $ff $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $677e: $cf
	sub  c                                           ; $677f: $91
	rra                                              ; $6780: $1f
	pop  af                                          ; $6781: $f1
	rra                                              ; $6782: $1f
	pop  af                                          ; $6783: $f1
	ld   e, a                                        ; $6784: $5f
	ei                                               ; $6785: $fb
	ld   b, a                                        ; $6786: $47

Jump_0b2_6787:
	ld   b, c                                        ; $6787: $41
	ldh  [c], a                                      ; $6788: $e2
	rra                                              ; $6789: $1f
	ld   [hl-], a                                    ; $678a: $32
	pop  hl                                          ; $678b: $e1
	adc  d                                           ; $678c: $8a
	ld   d, $bf                                      ; $678d: $16 $bf
	ld   hl, sp-$01                                  ; $678f: $f8 $ff
	rra                                              ; $6791: $1f
	pop  af                                          ; $6792: $f1
	sbc  d                                           ; $6793: $9a
	add  hl, de                                      ; $6794: $19
	ld   [hl], h                                     ; $6795: $74

Call_0b2_6796:
	add  e                                           ; $6796: $83
	ld   a, b                                        ; $6797: $78
	ld   e, b                                        ; $6798: $58
	inc  e                                           ; $6799: $1c
	pop  af                                          ; $679a: $f1
	sbc  a                                           ; $679b: $9f
	db   $f4                                         ; $679c: $f4
	ld   d, a                                        ; $679d: $57
	cp   $11                                         ; $679e: $fe $11
	jp   nz, $15ab                                   ; $67a0: $c2 $ab $15

	jp   $b11c                                       ; $67a3: $c3 $1c $b1


	ld   l, a                                        ; $67a6: $6f
	or   c                                           ; $67a7: $b1
	rst  $38                                         ; $67a8: $ff
	add  e                                           ; $67a9: $83
	ld   l, c                                        ; $67aa: $69
	ld   de, $3ab7                                   ; $67ab: $11 $b7 $3a
	ld   [hl], l                                     ; $67ae: $75

jr_0b2_67af:
	ld   l, $31                                      ; $67af: $2e $31
	db   $dd                                         ; $67b1: $dd
	ld   e, $f6                                      ; $67b2: $1e $f6
	ccf                                              ; $67b4: $3f
	ldh  a, [c]                                      ; $67b5: $f2
	ld   c, d                                        ; $67b6: $4a
	ld   de, $11bf                                   ; $67b7: $11 $bf $11
	rst  $28                                         ; $67ba: $ef
	ld   de, $eef5                                   ; $67bb: $11 $f5 $ee
	ld   c, [hl]                                     ; $67be: $4e
	rst  $38                                         ; $67bf: $ff
	add  c                                           ; $67c0: $81
	db   $fd                                         ; $67c1: $fd
	ld   h, a                                        ; $67c2: $67
	inc  e                                           ; $67c3: $1c
	pop  af                                          ; $67c4: $f1
	inc  d                                           ; $67c5: $14
	cp   a                                           ; $67c6: $bf
	dec  h                                           ; $67c7: $25
	ld   de, $1ffa                                   ; $67c8: $11 $fa $1f
	ld   a, [$df54]                                  ; $67cb: $fa $54 $df
	ld   h, c                                        ; $67ce: $61
	rra                                              ; $67cf: $1f
	di                                               ; $67d0: $f3
	inc  sp                                          ; $67d1: $33
	cp   a                                           ; $67d2: $bf
	ld   de, $1bff                                   ; $67d3: $11 $ff $1b
	pop  af                                          ; $67d6: $f1
	ld   c, a                                        ; $67d7: $4f
	pop  de                                          ; $67d8: $d1
	xor  a                                           ; $67d9: $af
	pop  af                                          ; $67da: $f1
	ld   a, [de]                                     ; $67db: $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67dc: $cf
	ld   hl, $1bed                                   ; $67dd: $21 $ed $1b
	sub  d                                           ; $67e0: $92
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67e1: $cf
	ld   b, c                                        ; $67e2: $41
	rst  $38                                         ; $67e3: $ff
	and  d                                           ; $67e4: $a2
	rl   c                                           ; $67e5: $cb $11
	ld   l, h                                        ; $67e7: $6c
	cp   d                                           ; $67e8: $ba
	ld   c, c                                        ; $67e9: $49
	inc  de                                          ; $67ea: $13
	ld   sp, hl                                      ; $67eb: $f9
	inc  d                                           ; $67ec: $14
	db   $fc                                         ; $67ed: $fc
	rra                                              ; $67ee: $1f
	pop  af                                          ; $67ef: $f1
	sbc  c                                           ; $67f0: $99
	inc  e                                           ; $67f1: $1c
	and  l                                           ; $67f2: $a5
	ld   [de], a                                     ; $67f3: $12
	ld   sp, hl                                      ; $67f4: $f9
	inc  de                                          ; $67f5: $13
	daa                                              ; $67f6: $27
	ld   a, a                                        ; $67f7: $7f
	or   c                                           ; $67f8: $b1
	rst  $38                                         ; $67f9: $ff
	ld   h, e                                        ; $67fa: $63
	sbc  a                                           ; $67fb: $9f
	pop  af                                          ; $67fc: $f1
	ld   de, $11df                                   ; $67fd: $11 $df $11
	rst  $38                                         ; $6800: $ff
	ld   de, $1ff8                                   ; $6801: $11 $f8 $1f
	ld   h, c                                        ; $6804: $61
	ld   hl, sp-$0e                                  ; $6805: $f8 $f2
	sbc  a                                           ; $6807: $9f
	ld   d, $f1                                      ; $6808: $16 $f1
	ccf                                              ; $680a: $3f
	ld   hl, $117f                                   ; $680b: $21 $7f $11
	rst  $38                                         ; $680e: $ff
	ld   de, $acfa                                   ; $680f: $11 $fa $ac
	ld   a, [de]                                     ; $6812: $1a
	db   $f4                                         ; $6813: $f4
	ld   b, d                                        ; $6814: $42
	rra                                              ; $6815: $1f
	pop  af                                          ; $6816: $f1
	ccf                                              ; $6817: $3f
	or   c                                           ; $6818: $b1
	dec  l                                           ; $6819: $2d
	ldh  [c], a                                      ; $681a: $e2
	rst  JumpTable                                         ; $681b: $df
	ld   d, $f9                                      ; $681c: $16 $f9
	jr   jr_0b2_67af                                 ; $681e: $18 $8f

	ld   de, $11ff                                   ; $6820: $11 $ff $11
	adc  l                                           ; $6823: $8d
	pop  af                                          ; $6824: $f1
	dec  de                                          ; $6825: $1b
	db   $fc                                         ; $6826: $fc
	inc  e                                           ; $6827: $1c
	rst  $30                                         ; $6828: $f7
	jr   @-$5f                                       ; $6829: $18 $9f

	ld   sp, $89b6                                   ; $682b: $31 $b6 $89
	rra                                              ; $682e: $1f
	pop  af                                          ; $682f: $f1
	rra                                              ; $6830: $1f
	xor  e                                           ; $6831: $ab
	pop  af                                          ; $6832: $f1
	ld   l, a                                        ; $6833: $6f
	rst  $30                                         ; $6834: $f7
	ld   de, $12fd                                   ; $6835: $11 $fd $12
	sbc  a                                           ; $6838: $9f
	pop  af                                          ; $6839: $f1
	rra                                              ; $683a: $1f
	pop  af                                          ; $683b: $f1
	rra                                              ; $683c: $1f
	pop  af                                          ; $683d: $f1
	rra                                              ; $683e: $1f
	pop  af                                          ; $683f: $f1
	rra                                              ; $6840: $1f
	pop  bc                                          ; $6841: $c1
	ld   a, c                                        ; $6842: $79
	ld   l, $b1                                      ; $6843: $2e $b1
	cp   a                                           ; $6845: $bf
	add  c                                           ; $6846: $81
	rra                                              ; $6847: $1f
	di                                               ; $6848: $f3
	rra                                              ; $6849: $1f
	pop  af                                          ; $684a: $f1
	rra                                              ; $684b: $1f
	pop  af                                          ; $684c: $f1
	ld   e, a                                        ; $684d: $5f
	ld   b, a                                        ; $684e: $47
	jp   $25bd                                       ; $684f: $c3 $bd $25


	call $d324                                       ; $6852: $cd $24 $d3
	sbc  a                                           ; $6855: $9f
	ld   h, d                                        ; $6856: $62
	ld   d, $f8                                      ; $6857: $16 $f8
	jr   @-$2f                                       ; $6859: $18 $cf

	ld   d, c                                        ; $685b: $51
	db   $ed                                         ; $685c: $ed
	jr   jr_0b2_68a0                                 ; $685d: $18 $41

	ld   hl, sp+$1f                                  ; $685f: $f8 $1f
	pop  de                                          ; $6861: $d1
	push bc                                          ; $6862: $c5
	ld   c, a                                        ; $6863: $4f
	halt                                             ; $6864: $76
	adc  h                                           ; $6865: $8c
	pop  af                                          ; $6866: $f1
	rra                                              ; $6867: $1f
	pop  af                                          ; $6868: $f1
	and  a                                           ; $6869: $a7
	ld   l, l                                        ; $686a: $6d
	ld   sp, $77af                                   ; $686b: $31 $af $77
	rst  ToBoot                                         ; $686e: $c7
	ld   a, a                                        ; $686f: $7f
	pop  de                                          ; $6870: $d1
	add  hl, sp                                      ; $6871: $39
	rra                                              ; $6872: $1f
	pop  af                                          ; $6873: $f1
	sbc  l                                           ; $6874: $9d
	ld   b, e                                        ; $6875: $43
	inc  d                                           ; $6876: $14
	rst  $38                                         ; $6877: $ff
	ld   de, $f1af                                   ; $6878: $11 $af $f1
	inc  e                                           ; $687b: $1c
	ld   sp, hl                                      ; $687c: $f9
	inc  de                                          ; $687d: $13
	ld   a, [$3f33]                                  ; $687e: $fa $33 $3f
	and  h                                           ; $6881: $a4
	ld   h, a                                        ; $6882: $67
	db   $dd                                         ; $6883: $dd
	or   d                                           ; $6884: $b2
	rra                                              ; $6885: $1f
	pop  af                                          ; $6886: $f1
	adc  e                                           ; $6887: $8b
	xor  c                                           ; $6888: $a9
	ld   c, h                                        ; $6889: $4c
	ld   [hl], l                                     ; $688a: $75
	ld   h, l                                        ; $688b: $65
	rst  $28                                         ; $688c: $ef
	ld   [hl], a                                     ; $688d: $77
	sbc  b                                           ; $688e: $98
	ld   a, [de]                                     ; $688f: $1a
	pop  af                                          ; $6890: $f1
	ld   e, $76                                      ; $6891: $1e $76
	adc  d                                           ; $6893: $8a
	sub  h                                           ; $6894: $94
	call z, $f919                                    ; $6895: $cc $19 $f9
	jr   @-$45                                       ; $6898: $18 $b9

	ld   hl, $5d9a                                   ; $689a: $21 $9a $5d
	db   $e4                                         ; $689d: $e4
	jr   c, @-$02                                    ; $689e: $38 $fc

jr_0b2_68a0:
	rla                                              ; $68a0: $17
	ei                                               ; $68a1: $fb
	ld   c, l                                        ; $68a2: $4d
	sub  l                                           ; $68a3: $95
	ld   sp, $4acb                                   ; $68a4: $31 $cb $4a
	adc  b                                           ; $68a7: $88
	sbc  h                                           ; $68a8: $9c
	sub  c                                           ; $68a9: $91
	ld   a, a                                        ; $68aa: $7f
	ld   de, $a1fd                                   ; $68ab: $11 $fd $a1

jr_0b2_68ae:
	rra                                              ; $68ae: $1f
	ldh  a, [c]                                      ; $68af: $f2
	inc  de                                          ; $68b0: $13
	cp   a                                           ; $68b1: $bf
	ld   b, c                                        ; $68b2: $41
	ld   a, a                                        ; $68b3: $7f
	db   $f4                                         ; $68b4: $f4
	dec  d                                           ; $68b5: $15
	rst  $38                                         ; $68b6: $ff
	ld   de, $41cf                                   ; $68b7: $11 $cf $41
	xor  $76                                         ; $68ba: $ee $76
	and  l                                           ; $68bc: $a5
	adc  c                                           ; $68bd: $89
	ld   e, [hl]                                     ; $68be: $5e
	ld   d, e                                        ; $68bf: $53
	add  $7e                                         ; $68c0: $c6 $7e
	dec  d                                           ; $68c2: $15
	push af                                          ; $68c3: $f5
	rst  ToBoot                                         ; $68c4: $c7
	ld   e, l                                        ; $68c5: $5d
	ld   h, c                                        ; $68c6: $61
	bit  7, a                                        ; $68c7: $cb $7f
	ld   de, $2cf6                                   ; $68c9: $11 $f6 $2c
	halt                                             ; $68cc: $76
	push bc                                          ; $68cd: $c5
	and  l                                           ; $68ce: $a5
	ld   e, h                                        ; $68cf: $5c
	xor  b                                           ; $68d0: $a8
	dec  h                                           ; $68d1: $25
	push af                                          ; $68d2: $f5
	rra                                              ; $68d3: $1f
	jp   $16b6                                       ; $68d4: $c3 $b6 $16


	jp   z, Jump_0b2_78b8                            ; $68d7: $ca $b8 $78

	cp   e                                           ; $68da: $bb
	ld   [hl], $ed                                   ; $68db: $36 $ed
	inc  h                                           ; $68dd: $24
	add  a                                           ; $68de: $87
	cp   b                                           ; $68df: $b8
	inc  hl                                          ; $68e0: $23
	db   $fd                                         ; $68e1: $fd
	ld   h, d                                        ; $68e2: $62
	ld   l, a                                        ; $68e3: $6f
	or   h                                           ; $68e4: $b4
	ld   a, [de]                                     ; $68e5: $1a
	ld   sp, hl                                      ; $68e6: $f9
	ld   d, $7a                                      ; $68e7: $16 $7a
	pop  af                                          ; $68e9: $f1
	ld   e, a                                        ; $68ea: $5f
	jr   c, jr_0b2_68ae                              ; $68eb: $38 $c1

	cp   a                                           ; $68ed: $bf
	add  hl, bc                                      ; $68ee: $09
	sub  a                                           ; $68ef: $97
	and  [hl]                                        ; $68f0: $a6
	ld   l, l                                        ; $68f1: $6d
	add  c                                           ; $68f2: $81
	xor  l                                           ; $68f3: $ad
	sub  h                                           ; $68f4: $94
	ld   c, b                                        ; $68f5: $48
	ld   a, b                                        ; $68f6: $78
	adc  b                                           ; $68f7: $88
	reti                                             ; $68f8: $d9


	add  hl, hl                                      ; $68f9: $29
	rst  ToBoot                                         ; $68fa: $c7
	add  [hl]                                        ; $68fb: $86
	ld   e, b                                        ; $68fc: $58
	or   a                                           ; $68fd: $b7
	adc  d                                           ; $68fe: $8a
	ld   d, l                                        ; $68ff: $55
	ld   e, c                                        ; $6900: $59
	jp   c, $9948                                    ; $6901: $da $48 $99

	xor  d                                           ; $6904: $aa
	db   $d3                                         ; $6905: $d3
	ld   e, c                                        ; $6906: $59
	ld   a, e                                        ; $6907: $7b
	ld   h, l                                        ; $6908: $65
	sbc  d                                           ; $6909: $9a
	ld   h, d                                        ; $690a: $62
	xor  [hl]                                        ; $690b: $ae
	sub  h                                           ; $690c: $94
	ld   [hl], a                                     ; $690d: $77
	sbc  e                                           ; $690e: $9b
	ld   h, l                                        ; $690f: $65
	sbc  h                                           ; $6910: $9c
	add  [hl]                                        ; $6911: $86
	cp   d                                           ; $6912: $ba
	ld   h, [hl]                                     ; $6913: $66
	ld   e, b                                        ; $6914: $58
	adc  d                                           ; $6915: $8a
	sub  [hl]                                        ; $6916: $96
	ld   h, [hl]                                     ; $6917: $66
	add  a                                           ; $6918: $87
	ld   l, e                                        ; $6919: $6b
	push af                                          ; $691a: $f5
	dec  sp                                          ; $691b: $3b
	ld   a, h                                        ; $691c: $7c
	or   [hl]                                        ; $691d: $b6
	ld   l, c                                        ; $691e: $69
	ld   a, c                                        ; $691f: $79
	and  a                                           ; $6920: $a7
	add  a                                           ; $6921: $87
	ld   h, [hl]                                     ; $6922: $66
	adc  d                                           ; $6923: $8a
	ld   h, [hl]                                     ; $6924: $66
	cp   d                                           ; $6925: $ba
	ld   a, c                                        ; $6926: $79
	ld   a, h                                        ; $6927: $7c
	jp   $ab26                                       ; $6928: $c3 $26 $ab


	sub  l                                           ; $692b: $95
	adc  e                                           ; $692c: $8b
	ld   d, a                                        ; $692d: $57
	or   a                                           ; $692e: $b7
	ld   a, e                                        ; $692f: $7b
	adc  c                                           ; $6930: $89
	or   [hl]                                        ; $6931: $b6
	ld   h, [hl]                                     ; $6932: $66
	ld   d, a                                        ; $6933: $57
	ret  c                                           ; $6934: $d8

	ld   a, [hl-]                                    ; $6935: $3a
	and  a                                           ; $6936: $a7
	adc  c                                           ; $6937: $89
	cp   h                                           ; $6938: $bc
	add  a                                           ; $6939: $87
	xor  b                                           ; $693a: $a8
	ld   l, c                                        ; $693b: $69
	and  [hl]                                        ; $693c: $a6
	ld   b, d                                        ; $693d: $42
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $693e: $cf
	ld   sp, $85cb                                   ; $693f: $31 $cb $85
	ld   e, [hl]                                     ; $6942: $5e
	or   l                                           ; $6943: $b5
	ld   a, [hl+]                                    ; $6944: $2a
	rst  $20                                         ; $6945: $e7
	ld   b, e                                        ; $6946: $43
	adc  e                                           ; $6947: $8b
	and  e                                           ; $6948: $a3
	ld   e, h                                        ; $6949: $5c
	cp   e                                           ; $694a: $bb
	dec  h                                           ; $694b: $25
	db   $ed                                         ; $694c: $ed
	ld   h, h                                        ; $694d: $64
	adc  d                                           ; $694e: $8a
	call nz, $977a                                   ; $694f: $c4 $7a $97
	ld   e, b                                        ; $6952: $58
	ld   [hl], a                                     ; $6953: $77
	ld   e, l                                        ; $6954: $5d
	xor  d                                           ; $6955: $aa
	sub  l                                           ; $6956: $95
	sbc  c                                           ; $6957: $99
	and  d                                           ; $6958: $a2

jr_0b2_6959:
	ld   l, b                                        ; $6959: $68
	cp   h                                           ; $695a: $bc
	halt                                             ; $695b: $76
	ld   c, e                                        ; $695c: $4b
	ld   [hl], a                                     ; $695d: $77
	add  a                                           ; $695e: $87
	res  6, a                                        ; $695f: $cb $b7
	ld   e, c                                        ; $6961: $59
	or   a                                           ; $6962: $b7
	ld   d, a                                        ; $6963: $57
	adc  d                                           ; $6964: $8a
	add  l                                           ; $6965: $85
	ld   b, [hl]                                     ; $6966: $46
	ld   a, b                                        ; $6967: $78
	call $e747                                       ; $6968: $cd $47 $e7
	ld   b, a                                        ; $696b: $47
	sbc  h                                           ; $696c: $9c
	pop  bc                                          ; $696d: $c1
	ld   e, l                                        ; $696e: $5d
	sub  a                                           ; $696f: $97
	ld   d, l                                        ; $6970: $55
	sbc  d                                           ; $6971: $9a
	ld   d, [hl]                                     ; $6972: $56
	db   $db                                         ; $6973: $db
	and  a                                           ; $6974: $a7
	ld   h, l                                        ; $6975: $65
	adc  c                                           ; $6976: $89
	adc  c                                           ; $6977: $89
	adc  c                                           ; $6978: $89
	cp   c                                           ; $6979: $b9
	dec  [hl]                                        ; $697a: $35
	ld   a, d                                        ; $697b: $7a
	push bc                                          ; $697c: $c5
	ld   l, e                                        ; $697d: $6b
	and  l                                           ; $697e: $a5
	adc  d                                           ; $697f: $8a
	ld   l, b                                        ; $6980: $68
	sbc  b                                           ; $6981: $98
	xor  c                                           ; $6982: $a9
	ld   [hl], l                                     ; $6983: $75
	ld   e, e                                        ; $6984: $5b
	and  [hl]                                        ; $6985: $a6
	sbc  d                                           ; $6986: $9a
	ld   h, [hl]                                     ; $6987: $66
	ld   [hl], l                                     ; $6988: $75
	cp   d                                           ; $6989: $ba
	ld   d, a                                        ; $698a: $57
	sbc  d                                           ; $698b: $9a
	cp   b                                           ; $698c: $b8
	jr   z, jr_0b2_6959                              ; $698d: $28 $ca

	ld   h, a                                        ; $698f: $67
	sbc  b                                           ; $6990: $98
	sub  a                                           ; $6991: $97
	ld   l, d                                        ; $6992: $6a
	ld   [hl], h                                     ; $6993: $74
	cp   e                                           ; $6994: $bb
	ld   a, d                                        ; $6995: $7a
	ld   [hl], h                                     ; $6996: $74
	halt                                             ; $6997: $76
	ld   l, l                                        ; $6998: $6d
	add  $54                                         ; $6999: $c6 $54
	sbc  h                                           ; $699b: $9c
	sub  h                                           ; $699c: $94
	ld   l, c                                        ; $699d: $69
	sbc  d                                           ; $699e: $9a
	adc  c                                           ; $699f: $89
	ld   a, b                                        ; $69a0: $78
	add  [hl]                                        ; $69a1: $86
	adc  e                                           ; $69a2: $8b
	xor  c                                           ; $69a3: $a9
	ld   [hl], l                                     ; $69a4: $75
	ld   a, c                                        ; $69a5: $79
	ret                                              ; $69a6: $c9


	ld   h, [hl]                                     ; $69a7: $66
	sbc  e                                           ; $69a8: $9b
	add  [hl]                                        ; $69a9: $86
	ld   d, a                                        ; $69aa: $57
	adc  d                                           ; $69ab: $8a
	ld   [hl], l                                     ; $69ac: $75
	xor  b                                           ; $69ad: $a8
	sbc  b                                           ; $69ae: $98
	ld   h, a                                        ; $69af: $67
	ret                                              ; $69b0: $c9


	ld   l, c                                        ; $69b1: $69
	ld   l, c                                        ; $69b2: $69
	xor  c                                           ; $69b3: $a9
	add  l                                           ; $69b4: $85
	ld   a, c                                        ; $69b5: $79
	xor  b                                           ; $69b6: $a8
	ld   [hl], a                                     ; $69b7: $77
	xor  e                                           ; $69b8: $ab
	ld   h, l                                        ; $69b9: $65
	ld   l, c                                        ; $69ba: $69
	cp   c                                           ; $69bb: $b9
	ld   d, [hl]                                     ; $69bc: $56
	sbc  c                                           ; $69bd: $99
	or   [hl]                                        ; $69be: $b6
	ld   a, c                                        ; $69bf: $79
	xor  c                                           ; $69c0: $a9
	ld   h, [hl]                                     ; $69c1: $66
	ld   l, e                                        ; $69c2: $6b
	sub  [hl]                                        ; $69c3: $96
	ld   b, [hl]                                     ; $69c4: $46
	cp   b                                           ; $69c5: $b8
	halt                                             ; $69c6: $76
	adc  d                                           ; $69c7: $8a
	sbc  b                                           ; $69c8: $98
	ld   h, [hl]                                     ; $69c9: $66
	ld   l, c                                        ; $69ca: $69
	cp   c                                           ; $69cb: $b9
	ld   [hl], a                                     ; $69cc: $77
	sub  a                                           ; $69cd: $97
	sub  l                                           ; $69ce: $95
	ld   a, d                                        ; $69cf: $7a
	sub  [hl]                                        ; $69d0: $96
	ld   a, c                                        ; $69d1: $79
	xor  c                                           ; $69d2: $a9
	ld   d, [hl]                                     ; $69d3: $56
	sbc  b                                           ; $69d4: $98
	adc  b                                           ; $69d5: $88
	sbc  b                                           ; $69d6: $98
	sbc  c                                           ; $69d7: $99
	ld   a, b                                        ; $69d8: $78
	sub  [hl]                                        ; $69d9: $96
	ld   e, c                                        ; $69da: $59
	xor  c                                           ; $69db: $a9
	ld   [hl], l                                     ; $69dc: $75
	sbc  d                                           ; $69dd: $9a
	sbc  b                                           ; $69de: $98
	adc  c                                           ; $69df: $89
	ld   h, [hl]                                     ; $69e0: $66
	xor  c                                           ; $69e1: $a9
	adc  b                                           ; $69e2: $88
	ld   a, b                                        ; $69e3: $78
	add  [hl]                                        ; $69e4: $86
	ld   l, c                                        ; $69e5: $69
	xor  c                                           ; $69e6: $a9
	halt                                             ; $69e7: $76
	sbc  c                                           ; $69e8: $99
	ld   a, b                                        ; $69e9: $78
	ld   l, b                                        ; $69ea: $68
	xor  b                                           ; $69eb: $a8
	ld   h, [hl]                                     ; $69ec: $66
	sbc  d                                           ; $69ed: $9a
	sub  a                                           ; $69ee: $97
	ld   a, c                                        ; $69ef: $79
	add  a                                           ; $69f0: $87
	ld   h, a                                        ; $69f1: $67
	xor  c                                           ; $69f2: $a9
	ld   [hl], a                                     ; $69f3: $77
	adc  c                                           ; $69f4: $89
	ld   a, d                                        ; $69f5: $7a
	add  a                                           ; $69f6: $87
	ld   [hl], a                                     ; $69f7: $77
	adc  b                                           ; $69f8: $88
	and  [hl]                                        ; $69f9: $a6
	ld   a, b                                        ; $69fa: $78
	ld   a, d                                        ; $69fb: $7a
	ld   a, c                                        ; $69fc: $79
	ld   a, c                                        ; $69fd: $79
	add  a                                           ; $69fe: $87
	sub  a                                           ; $69ff: $97
	ld   [hl], a                                     ; $6a00: $77
	ld   a, c                                        ; $6a01: $79
	xor  b                                           ; $6a02: $a8
	ld   a, c                                        ; $6a03: $79
	ld   d, a                                        ; $6a04: $57
	adc  c                                           ; $6a05: $89
	sbc  c                                           ; $6a06: $99
	xor  b                                           ; $6a07: $a8
	sub  a                                           ; $6a08: $97
	ld   a, b                                        ; $6a09: $78
	ld   a, b                                        ; $6a0a: $78
	ld   a, c                                        ; $6a0b: $79
	adc  b                                           ; $6a0c: $88
	halt                                             ; $6a0d: $76
	adc  d                                           ; $6a0e: $8a
	and  a                                           ; $6a0f: $a7
	ld   a, c                                        ; $6a10: $79
	cp   b                                           ; $6a11: $b8
	ld   h, [hl]                                     ; $6a12: $66
	sbc  b                                           ; $6a13: $98
	sbc  b                                           ; $6a14: $98
	ld   l, c                                        ; $6a15: $69
	ld   [hl], a                                     ; $6a16: $77
	ld   e, c                                        ; $6a17: $59
	cp   c                                           ; $6a18: $b9
	add  [hl]                                        ; $6a19: $86
	adc  b                                           ; $6a1a: $88
	sub  a                                           ; $6a1b: $97
	ld   h, a                                        ; $6a1c: $67
	ld   a, e                                        ; $6a1d: $7b
	and  a                                           ; $6a1e: $a7
	ld   d, a                                        ; $6a1f: $57
	adc  c                                           ; $6a20: $89
	add  l                                           ; $6a21: $85
	ld   a, c                                        ; $6a22: $79
	cp   d                                           ; $6a23: $ba
	adc  b                                           ; $6a24: $88
	adc  d                                           ; $6a25: $8a
	ld   [hl], a                                     ; $6a26: $77
	ld   a, b                                        ; $6a27: $78
	sbc  d                                           ; $6a28: $9a
	halt                                             ; $6a29: $76
	sbc  b                                           ; $6a2a: $98
	add  a                                           ; $6a2b: $87
	ld   h, a                                        ; $6a2c: $67
	adc  c                                           ; $6a2d: $89
	ld   [hl], a                                     ; $6a2e: $77
	ld   a, b                                        ; $6a2f: $78
	cp   b                                           ; $6a30: $b8
	ld   a, b                                        ; $6a31: $78
	adc  b                                           ; $6a32: $88
	sub  a                                           ; $6a33: $97
	ld   a, b                                        ; $6a34: $78
	ld   l, b                                        ; $6a35: $68
	sub  a                                           ; $6a36: $97
	adc  b                                           ; $6a37: $88
	add  a                                           ; $6a38: $87
	ld   a, c                                        ; $6a39: $79
	sbc  c                                           ; $6a3a: $99
	ld   a, b                                        ; $6a3b: $78
	adc  c                                           ; $6a3c: $89
	add  a                                           ; $6a3d: $87
	adc  b                                           ; $6a3e: $88
	sbc  d                                           ; $6a3f: $9a
	ld   [hl], a                                     ; $6a40: $77
	sbc  b                                           ; $6a41: $98
	sub  a                                           ; $6a42: $97
	ld   h, a                                        ; $6a43: $67
	sbc  b                                           ; $6a44: $98
	adc  b                                           ; $6a45: $88
	ld   a, b                                        ; $6a46: $78
	sbc  b                                           ; $6a47: $98
	ld   l, b                                        ; $6a48: $68
	xor  d                                           ; $6a49: $aa
	sub  [hl]                                        ; $6a4a: $96
	ld   [hl], a                                     ; $6a4b: $77
	adc  b                                           ; $6a4c: $88
	ld   [hl], a                                     ; $6a4d: $77
	ld   a, b                                        ; $6a4e: $78
	adc  c                                           ; $6a4f: $89
	adc  b                                           ; $6a50: $88
	sbc  b                                           ; $6a51: $98
	add  a                                           ; $6a52: $87
	ld   a, c                                        ; $6a53: $79
	xor  b                                           ; $6a54: $a8
	halt                                             ; $6a55: $76
	ld   a, d                                        ; $6a56: $7a
	sbc  b                                           ; $6a57: $98
	ld   h, a                                        ; $6a58: $67
	adc  b                                           ; $6a59: $88
	ld   [hl], a                                     ; $6a5a: $77
	ld   a, b                                        ; $6a5b: $78
	sbc  b                                           ; $6a5c: $98
	add  a                                           ; $6a5d: $87
	adc  c                                           ; $6a5e: $89
	sub  [hl]                                        ; $6a5f: $96
	ld   a, b                                        ; $6a60: $78
	sbc  c                                           ; $6a61: $99
	ld   h, a                                        ; $6a62: $67
	sbc  d                                           ; $6a63: $9a
	add  [hl]                                        ; $6a64: $86
	ld   h, [hl]                                     ; $6a65: $66
	sbc  c                                           ; $6a66: $99
	sub  a                                           ; $6a67: $97
	ld   a, b                                        ; $6a68: $78
	adc  b                                           ; $6a69: $88
	ld   [hl], a                                     ; $6a6a: $77
	adc  c                                           ; $6a6b: $89
	sbc  c                                           ; $6a6c: $99
	ld   a, b                                        ; $6a6d: $78
	sbc  d                                           ; $6a6e: $9a
	add  a                                           ; $6a6f: $87
	ld   l, c                                        ; $6a70: $69
	adc  b                                           ; $6a71: $88
	sub  [hl]                                        ; $6a72: $96
	ld   a, b                                        ; $6a73: $78
	ld   a, b                                        ; $6a74: $78
	ld   a, b                                        ; $6a75: $78
	sbc  c                                           ; $6a76: $99
	xor  b                                           ; $6a77: $a8
	adc  b                                           ; $6a78: $88
	add  a                                           ; $6a79: $87
	ld   a, c                                        ; $6a7a: $79
	ld   a, b                                        ; $6a7b: $78
	adc  b                                           ; $6a7c: $88
	add  a                                           ; $6a7d: $87
	add  a                                           ; $6a7e: $87
	adc  b                                           ; $6a7f: $88
	adc  c                                           ; $6a80: $89
	adc  d                                           ; $6a81: $8a
	adc  c                                           ; $6a82: $89
	ld   [hl], a                                     ; $6a83: $77
	sbc  b                                           ; $6a84: $98
	sbc  c                                           ; $6a85: $99
	adc  c                                           ; $6a86: $89
	adc  b                                           ; $6a87: $88
	ld   [hl], a                                     ; $6a88: $77
	ld   a, b                                        ; $6a89: $78
	sbc  b                                           ; $6a8a: $98
	adc  b                                           ; $6a8b: $88
	sbc  c                                           ; $6a8c: $99
	ld   [hl], a                                     ; $6a8d: $77
	ld   a, c                                        ; $6a8e: $79
	add  a                                           ; $6a8f: $87
	adc  c                                           ; $6a90: $89
	adc  b                                           ; $6a91: $88
	ld   [hl], a                                     ; $6a92: $77
	ld   a, b                                        ; $6a93: $78
	sbc  c                                           ; $6a94: $99
	add  a                                           ; $6a95: $87
	sbc  b                                           ; $6a96: $98
	add  a                                           ; $6a97: $87
	ld   a, c                                        ; $6a98: $79
	adc  c                                           ; $6a99: $89
	ld   [hl], a                                     ; $6a9a: $77
	adc  b                                           ; $6a9b: $88
	sbc  b                                           ; $6a9c: $98
	adc  b                                           ; $6a9d: $88
	sbc  b                                           ; $6a9e: $98
	adc  b                                           ; $6a9f: $88
	adc  c                                           ; $6aa0: $89
	add  a                                           ; $6aa1: $87
	ld   a, b                                        ; $6aa2: $78
	adc  b                                           ; $6aa3: $88
	adc  b                                           ; $6aa4: $88
	ld   [hl], a                                     ; $6aa5: $77
	adc  c                                           ; $6aa6: $89
	add  a                                           ; $6aa7: $87
	adc  c                                           ; $6aa8: $89
	sbc  b                                           ; $6aa9: $98
	add  a                                           ; $6aaa: $87
	adc  b                                           ; $6aab: $88
	adc  b                                           ; $6aac: $88
	adc  b                                           ; $6aad: $88
	sbc  b                                           ; $6aae: $98
	ld   [hl], a                                     ; $6aaf: $77
	add  a                                           ; $6ab0: $87
	add  a                                           ; $6ab1: $87
	sbc  b                                           ; $6ab2: $98
	sbc  b                                           ; $6ab3: $98
	ld   a, b                                        ; $6ab4: $78
	adc  b                                           ; $6ab5: $88
	sub  a                                           ; $6ab6: $97
	ld   [hl], a                                     ; $6ab7: $77
	adc  c                                           ; $6ab8: $89
	sub  a                                           ; $6ab9: $97
	ld   a, b                                        ; $6aba: $78
	sbc  b                                           ; $6abb: $98
	ld   [hl], a                                     ; $6abc: $77
	adc  c                                           ; $6abd: $89
	sbc  b                                           ; $6abe: $98
	sbc  b                                           ; $6abf: $98
	sbc  b                                           ; $6ac0: $98
	ld   a, b                                        ; $6ac1: $78
	sbc  b                                           ; $6ac2: $98
	add  a                                           ; $6ac3: $87
	ld   a, b                                        ; $6ac4: $78
	sbc  c                                           ; $6ac5: $99
	add  a                                           ; $6ac6: $87
	adc  b                                           ; $6ac7: $88
	sbc  b                                           ; $6ac8: $98
	ld   a, b                                        ; $6ac9: $78
	sbc  c                                           ; $6aca: $99
	add  a                                           ; $6acb: $87
	adc  b                                           ; $6acc: $88
	sbc  b                                           ; $6acd: $98
	ld   a, b                                        ; $6ace: $78
	adc  c                                           ; $6acf: $89
	add  a                                           ; $6ad0: $87
	adc  b                                           ; $6ad1: $88
	add  a                                           ; $6ad2: $87
	adc  b                                           ; $6ad3: $88
	sbc  c                                           ; $6ad4: $99
	adc  b                                           ; $6ad5: $88
	adc  b                                           ; $6ad6: $88
	ld   [hl], a                                     ; $6ad7: $77
	ld   a, b                                        ; $6ad8: $78
	sbc  b                                           ; $6ad9: $98
	adc  b                                           ; $6ada: $88
	ld   a, b                                        ; $6adb: $78
	adc  b                                           ; $6adc: $88
	adc  b                                           ; $6add: $88
	adc  b                                           ; $6ade: $88
	sbc  b                                           ; $6adf: $98
	ld   a, b                                        ; $6ae0: $78
	adc  b                                           ; $6ae1: $88
	adc  b                                           ; $6ae2: $88
	sbc  b                                           ; $6ae3: $98
	adc  b                                           ; $6ae4: $88
	add  a                                           ; $6ae5: $87
	ld   a, b                                        ; $6ae6: $78
	adc  c                                           ; $6ae7: $89
	sbc  b                                           ; $6ae8: $98
	adc  c                                           ; $6ae9: $89
	sbc  b                                           ; $6aea: $98
	ld   [hl], a                                     ; $6aeb: $77
	adc  c                                           ; $6aec: $89
	adc  b                                           ; $6aed: $88
	ld   a, b                                        ; $6aee: $78
	adc  c                                           ; $6aef: $89
	add  a                                           ; $6af0: $87
	adc  b                                           ; $6af1: $88
	adc  c                                           ; $6af2: $89
	adc  b                                           ; $6af3: $88
	adc  b                                           ; $6af4: $88
	adc  b                                           ; $6af5: $88
	add  a                                           ; $6af6: $87
	adc  b                                           ; $6af7: $88
	adc  b                                           ; $6af8: $88
	adc  b                                           ; $6af9: $88
	adc  b                                           ; $6afa: $88
	adc  b                                           ; $6afb: $88
	adc  b                                           ; $6afc: $88
	adc  b                                           ; $6afd: $88
	sbc  b                                           ; $6afe: $98
	ld   [hl], a                                     ; $6aff: $77
	adc  b                                           ; $6b00: $88
	adc  b                                           ; $6b01: $88
	ld   a, b                                        ; $6b02: $78
	adc  b                                           ; $6b03: $88
	ld   [hl], a                                     ; $6b04: $77
	adc  b                                           ; $6b05: $88
	sbc  b                                           ; $6b06: $98
	adc  c                                           ; $6b07: $89
	sbc  b                                           ; $6b08: $98
	ld   [hl], a                                     ; $6b09: $77
	adc  b                                           ; $6b0a: $88
	adc  b                                           ; $6b0b: $88
	adc  b                                           ; $6b0c: $88
	sbc  b                                           ; $6b0d: $98
	ld   a, b                                        ; $6b0e: $78
	adc  b                                           ; $6b0f: $88
	adc  b                                           ; $6b10: $88
	adc  b                                           ; $6b11: $88
	ld   [hl], a                                     ; $6b12: $77
	ld   a, c                                        ; $6b13: $79
	adc  b                                           ; $6b14: $88
	adc  c                                           ; $6b15: $89
	adc  c                                           ; $6b16: $89
	add  a                                           ; $6b17: $87
	adc  b                                           ; $6b18: $88
	adc  b                                           ; $6b19: $88
	ld   a, b                                        ; $6b1a: $78
	sbc  b                                           ; $6b1b: $98
	sbc  b                                           ; $6b1c: $98
	adc  b                                           ; $6b1d: $88
	adc  c                                           ; $6b1e: $89
	adc  b                                           ; $6b1f: $88
	adc  c                                           ; $6b20: $89
	adc  b                                           ; $6b21: $88
	ld   a, b                                        ; $6b22: $78
	adc  b                                           ; $6b23: $88
	add  a                                           ; $6b24: $87
	adc  b                                           ; $6b25: $88
	adc  b                                           ; $6b26: $88
	adc  c                                           ; $6b27: $89
	adc  b                                           ; $6b28: $88
	adc  b                                           ; $6b29: $88
	adc  b                                           ; $6b2a: $88
	sbc  b                                           ; $6b2b: $98
	adc  b                                           ; $6b2c: $88
	adc  b                                           ; $6b2d: $88
	adc  b                                           ; $6b2e: $88
	ld   a, b                                        ; $6b2f: $78
	adc  b                                           ; $6b30: $88
	adc  b                                           ; $6b31: $88
	adc  b                                           ; $6b32: $88
	adc  b                                           ; $6b33: $88
	adc  b                                           ; $6b34: $88
	adc  b                                           ; $6b35: $88
	adc  b                                           ; $6b36: $88
	sbc  c                                           ; $6b37: $99
	adc  b                                           ; $6b38: $88
	adc  b                                           ; $6b39: $88
	add  a                                           ; $6b3a: $87
	ld   a, b                                        ; $6b3b: $78
	adc  c                                           ; $6b3c: $89
	adc  b                                           ; $6b3d: $88
	adc  c                                           ; $6b3e: $89
	adc  b                                           ; $6b3f: $88
	adc  b                                           ; $6b40: $88
	sbc  b                                           ; $6b41: $98
	add  a                                           ; $6b42: $87
	ld   [hl], a                                     ; $6b43: $77
	adc  b                                           ; $6b44: $88
	adc  b                                           ; $6b45: $88
	adc  b                                           ; $6b46: $88
	sbc  c                                           ; $6b47: $99
	adc  b                                           ; $6b48: $88
	adc  b                                           ; $6b49: $88
	sbc  c                                           ; $6b4a: $99
	adc  b                                           ; $6b4b: $88
	adc  b                                           ; $6b4c: $88
	add  a                                           ; $6b4d: $87
	add  a                                           ; $6b4e: $87
	adc  b                                           ; $6b4f: $88
	adc  b                                           ; $6b50: $88
	adc  b                                           ; $6b51: $88
	adc  b                                           ; $6b52: $88
	adc  b                                           ; $6b53: $88
	adc  b                                           ; $6b54: $88
	adc  b                                           ; $6b55: $88
	sbc  b                                           ; $6b56: $98
	adc  b                                           ; $6b57: $88
	adc  b                                           ; $6b58: $88
	add  a                                           ; $6b59: $87
	adc  b                                           ; $6b5a: $88
	adc  b                                           ; $6b5b: $88
	adc  b                                           ; $6b5c: $88
	adc  b                                           ; $6b5d: $88
	adc  b                                           ; $6b5e: $88
	adc  b                                           ; $6b5f: $88
	adc  b                                           ; $6b60: $88
	sbc  c                                           ; $6b61: $99
	adc  b                                           ; $6b62: $88
	adc  b                                           ; $6b63: $88
	sbc  c                                           ; $6b64: $99
	adc  b                                           ; $6b65: $88
	adc  b                                           ; $6b66: $88
	adc  b                                           ; $6b67: $88
	ld   [hl], a                                     ; $6b68: $77
	adc  b                                           ; $6b69: $88
	adc  b                                           ; $6b6a: $88
	ld   a, b                                        ; $6b6b: $78
	adc  c                                           ; $6b6c: $89
	adc  b                                           ; $6b6d: $88
	adc  b                                           ; $6b6e: $88
	sbc  b                                           ; $6b6f: $98
	add  a                                           ; $6b70: $87
	adc  b                                           ; $6b71: $88
	adc  b                                           ; $6b72: $88
	ld   [hl], a                                     ; $6b73: $77
	adc  c                                           ; $6b74: $89
	sbc  b                                           ; $6b75: $98
	add  a                                           ; $6b76: $87
	adc  c                                           ; $6b77: $89
	adc  b                                           ; $6b78: $88
	adc  b                                           ; $6b79: $88
	adc  c                                           ; $6b7a: $89
	adc  b                                           ; $6b7b: $88
	adc  b                                           ; $6b7c: $88
	adc  b                                           ; $6b7d: $88
	adc  b                                           ; $6b7e: $88
	adc  c                                           ; $6b7f: $89
	sbc  b                                           ; $6b80: $98
	adc  b                                           ; $6b81: $88
	adc  b                                           ; $6b82: $88
	adc  b                                           ; $6b83: $88
	adc  b                                           ; $6b84: $88
	adc  b                                           ; $6b85: $88
	adc  b                                           ; $6b86: $88
	adc  b                                           ; $6b87: $88
	adc  b                                           ; $6b88: $88
	sbc  b                                           ; $6b89: $98
	adc  b                                           ; $6b8a: $88
	adc  b                                           ; $6b8b: $88
	adc  b                                           ; $6b8c: $88
	adc  b                                           ; $6b8d: $88
	adc  b                                           ; $6b8e: $88
	adc  b                                           ; $6b8f: $88
	adc  b                                           ; $6b90: $88
	adc  b                                           ; $6b91: $88
	adc  c                                           ; $6b92: $89
	adc  b                                           ; $6b93: $88
	sbc  b                                           ; $6b94: $98
	adc  b                                           ; $6b95: $88
	adc  b                                           ; $6b96: $88
	adc  b                                           ; $6b97: $88
	adc  b                                           ; $6b98: $88
	adc  b                                           ; $6b99: $88
	add  a                                           ; $6b9a: $87
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
	ld   a, b                                        ; $6ba6: $78
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
	add  c                                           ; $6bfb: $81
	ld   de, $1111                                   ; $6bfc: $11 $11 $11
	ld   de, $1111                                   ; $6bff: $11 $11 $11
	ld   de, $1111                                   ; $6c02: $11 $11 $11
	ld   de, $1111                                   ; $6c05: $11 $11 $11
	ld   de, $0011                                   ; $6c08: $11 $11 $00
	ld   c, b                                        ; $6c0b: $48
	ld   de, $1111                                   ; $6c0c: $11 $11 $11
	ld   de, $1111                                   ; $6c0f: $11 $11 $11
	ld   de, $1111                                   ; $6c12: $11 $11 $11
	ld   de, $5413                                   ; $6c15: $11 $13 $54
	ld   d, h                                        ; $6c18: $54
	ld   d, h                                        ; $6c19: $54
	ld   b, c                                        ; $6c1a: $41
	rra                                              ; $6c1b: $1f
	rst  $38                                         ; $6c1c: $ff
	pop  af                                          ; $6c1d: $f1
	ld   de, $1311                                   ; $6c1e: $11 $11 $13
	sub  c                                           ; $6c21: $91
	ld   de, $dd1c                                   ; $6c22: $11 $1c $dd
	cp   h                                           ; $6c25: $bc
	db   $dd                                         ; $6c26: $dd
	or   c                                           ; $6c27: $b1
	ld   de, $1111                                   ; $6c28: $11 $11 $11
	ld   de, $1111                                   ; $6c2b: $11 $11 $11
	ld   de, $1111                                   ; $6c2e: $11 $11 $11
	ld   de, $1111                                   ; $6c31: $11 $11 $11
	ld   de, $5411                                   ; $6c34: $11 $11 $54
	ld   b, h                                        ; $6c37: $44
	sub  e                                           ; $6c38: $93
	ld   de, $5454                                   ; $6c39: $11 $54 $54
	ld   h, a                                        ; $6c3c: $67
	ld   [hl], d                                     ; $6c3d: $72
	ld   de, $1111                                   ; $6c3e: $11 $11 $11
	ld   de, $1112                                   ; $6c41: $11 $12 $11
	ld   [de], a                                     ; $6c44: $12
	ld   de, $1111                                   ; $6c45: $11 $11 $11
	ld   h, [hl]                                     ; $6c48: $66
	halt                                             ; $6c49: $76
	ld   h, e                                        ; $6c4a: $63
	ld   de, $8888                                   ; $6c4b: $11 $88 $88
	adc  c                                           ; $6c4e: $89
	sbc  b                                           ; $6c4f: $98
	adc  b                                           ; $6c50: $88
	adc  c                                           ; $6c51: $89
	sbc  c                                           ; $6c52: $99
	sbc  c                                           ; $6c53: $99
	xor  c                                           ; $6c54: $a9
	sbc  d                                           ; $6c55: $9a
	xor  d                                           ; $6c56: $aa
	sbc  c                                           ; $6c57: $99
	sbc  c                                           ; $6c58: $99
	xor  d                                           ; $6c59: $aa
	adc  c                                           ; $6c5a: $89
	adc  b                                           ; $6c5b: $88
	add  a                                           ; $6c5c: $87
	ld   h, [hl]                                     ; $6c5d: $66
	ld   h, h                                        ; $6c5e: $64
	ld   b, e                                        ; $6c5f: $43
	ld   [hl+], a                                    ; $6c60: $22
	ld   de, $1221                                   ; $6c61: $11 $21 $12
	ld   hl, $7a45                                   ; $6c64: $21 $45 $7a
	cp   l                                           ; $6c67: $bd
	rst  $38                                         ; $6c68: $ff
	rst  $38                                         ; $6c69: $ff
	rst  $38                                         ; $6c6a: $ff
	rst  $38                                         ; $6c6b: $ff
	rst  $38                                         ; $6c6c: $ff
	rst  $38                                         ; $6c6d: $ff
	cp   $db                                         ; $6c6e: $fe $db
	xor  c                                           ; $6c70: $a9
	ld   [hl], h                                     ; $6c71: $74
	ld   sp, $1111                                   ; $6c72: $31 $11 $11
	ld   de, $1111                                   ; $6c75: $11 $11 $11
	ld   de, $6412                                   ; $6c78: $11 $12 $64
	sbc  h                                           ; $6c7b: $9c
	rst  $38                                         ; $6c7c: $ff
	rst  JumpTable                                         ; $6c7d: $df
	rst  $38                                         ; $6c7e: $ff
	rst  $38                                         ; $6c7f: $ff
	rst  $38                                         ; $6c80: $ff
	rst  $38                                         ; $6c81: $ff
	rst  $38                                         ; $6c82: $ff
	rst  $38                                         ; $6c83: $ff
	rst  $38                                         ; $6c84: $ff
	jp   c, Jump_0b2_4188                            ; $6c85: $da $88 $41

	ld   de, $1111                                   ; $6c88: $11 $11 $11
	ld   de, $1111                                   ; $6c8b: $11 $11 $11
	ld   de, $5b54                                   ; $6c8e: $11 $54 $5b
	rst  JumpTable                                         ; $6c91: $df
	rst  $38                                         ; $6c92: $ff
	rst  $38                                         ; $6c93: $ff
	rst  $38                                         ; $6c94: $ff
	rst  $38                                         ; $6c95: $ff
	rst  $38                                         ; $6c96: $ff
	rst  $38                                         ; $6c97: $ff
	rst  $38                                         ; $6c98: $ff
	rst  $38                                         ; $6c99: $ff
	db   $fd                                         ; $6c9a: $fd
	add  h                                           ; $6c9b: $84
	ld   h, c                                        ; $6c9c: $61
	ld   de, $1111                                   ; $6c9d: $11 $11 $11
	ld   de, $1111                                   ; $6ca0: $11 $11 $11
	ld   de, $6e25                                   ; $6ca3: $11 $25 $6e
	rst  $28                                         ; $6ca6: $ef
	rst  $38                                         ; $6ca7: $ff
	rst  $38                                         ; $6ca8: $ff
	rst  $38                                         ; $6ca9: $ff
	rst  $38                                         ; $6caa: $ff
	rst  $38                                         ; $6cab: $ff
	rst  $38                                         ; $6cac: $ff
	rst  $38                                         ; $6cad: $ff
	rst  $38                                         ; $6cae: $ff
	jp   hl                                          ; $6caf: $e9


	ld   h, c                                        ; $6cb0: $61
	ld   de, $1111                                   ; $6cb1: $11 $11 $11
	ld   de, $1111                                   ; $6cb4: $11 $11 $11
	ld   de, $7611                                   ; $6cb7: $11 $11 $76
	cp   a                                           ; $6cba: $bf
	rst  $38                                         ; $6cbb: $ff
	rst  $38                                         ; $6cbc: $ff
	rst  $38                                         ; $6cbd: $ff
	rst  $38                                         ; $6cbe: $ff
	rst  $38                                         ; $6cbf: $ff
	rst  $38                                         ; $6cc0: $ff
	rst  $38                                         ; $6cc1: $ff
	cp   $cc                                         ; $6cc2: $fe $cc
	add  h                                           ; $6cc4: $84
	ld   de, $1111                                   ; $6cc5: $11 $11 $11
	ld   de, $1111                                   ; $6cc8: $11 $11 $11
	ld   de, $7b11                                   ; $6ccb: $11 $11 $7b
	sbc  a                                           ; $6cce: $9f
	rst  $38                                         ; $6ccf: $ff
	rst  $38                                         ; $6cd0: $ff
	rst  $38                                         ; $6cd1: $ff
	rst  $38                                         ; $6cd2: $ff
	rst  $38                                         ; $6cd3: $ff
	rst  $38                                         ; $6cd4: $ff
	rst  $38                                         ; $6cd5: $ff
	rst  $38                                         ; $6cd6: $ff
	ld   a, c                                        ; $6cd7: $79
	ld   [hl], d                                     ; $6cd8: $72
	ld   hl, $1111                                   ; $6cd9: $21 $11 $11
	ld   de, $1111                                   ; $6cdc: $11 $11 $11
	ld   de, $af11                                   ; $6cdf: $11 $11 $af
	rst  $38                                         ; $6ce2: $ff
	rst  $38                                         ; $6ce3: $ff
	rst  $38                                         ; $6ce4: $ff
	rst  $38                                         ; $6ce5: $ff
	rst  $38                                         ; $6ce6: $ff
	rst  $38                                         ; $6ce7: $ff
	rst  $38                                         ; $6ce8: $ff
	ld   a, [$45fe]                                  ; $6ce9: $fa $fe $45
	ld   hl, $1131                                   ; $6cec: $21 $31 $11
	ld   de, $1111                                   ; $6cef: $11 $11 $11
	ld   de, $1911                                   ; $6cf2: $11 $11 $19
	rst  $38                                         ; $6cf5: $ff
	rst  $38                                         ; $6cf6: $ff
	rst  $38                                         ; $6cf7: $ff
	rst  $38                                         ; $6cf8: $ff
	rst  $38                                         ; $6cf9: $ff
	rst  $38                                         ; $6cfa: $ff
	rst  $38                                         ; $6cfb: $ff
	db   $fd                                         ; $6cfc: $fd
	and  l                                           ; $6cfd: $a5
	ld   d, h                                        ; $6cfe: $54
	ld   de, $1111                                   ; $6cff: $11 $11 $11
	ld   de, $1111                                   ; $6d02: $11 $11 $11
	ld   de, $1614                                   ; $6d05: $11 $14 $16
	rst  $38                                         ; $6d08: $ff
	rst  $38                                         ; $6d09: $ff
	rst  $38                                         ; $6d0a: $ff
	rst  $38                                         ; $6d0b: $ff
	rst  $38                                         ; $6d0c: $ff
	rst  $38                                         ; $6d0d: $ff
	db   $fd                                         ; $6d0e: $fd
	ld   a, b                                        ; $6d0f: $78
	add  c                                           ; $6d10: $81
	dec  d                                           ; $6d11: $15
	ld   sp, $1111                                   ; $6d12: $31 $11 $11
	ld   de, $1111                                   ; $6d15: $11 $11 $11
	ld   de, $1649                                   ; $6d18: $11 $49 $16
	rst  $38                                         ; $6d1b: $ff
	rst  $38                                         ; $6d1c: $ff
	rst  $38                                         ; $6d1d: $ff
	rst  $38                                         ; $6d1e: $ff
	rst  $38                                         ; $6d1f: $ff
	rst  $38                                         ; $6d20: $ff
	bit  6, [hl]                                     ; $6d21: $cb $76
	ld   [hl], c                                     ; $6d23: $71
	ld   h, $62                                      ; $6d24: $26 $62
	ld   de, $1111                                   ; $6d26: $11 $11 $11
	ld   de, $1111                                   ; $6d29: $11 $11 $11
	cp   h                                           ; $6d2c: $bc
	ld   c, a                                        ; $6d2d: $4f
	rst  $38                                         ; $6d2e: $ff
	rst  $38                                         ; $6d2f: $ff
	rst  $38                                         ; $6d30: $ff
	rst  $38                                         ; $6d31: $ff
	rst  $38                                         ; $6d32: $ff
	ld   a, [$1653]                                  ; $6d33: $fa $53 $16
	ld   hl, $7113                                   ; $6d36: $21 $13 $71
	ld   de, $1111                                   ; $6d39: $11 $11 $11
	ld   de, $1511                                   ; $6d3c: $11 $11 $15
	db   $fc                                         ; $6d3f: $fc
	rst  $38                                         ; $6d40: $ff
	rst  $38                                         ; $6d41: $ff
	rst  $38                                         ; $6d42: $ff
	rst  $38                                         ; $6d43: $ff
	rst  $38                                         ; $6d44: $ff
	rst  $38                                         ; $6d45: $ff
	or   e                                           ; $6d46: $b3
	ld   de, $2114                                   ; $6d47: $11 $14 $21
	inc  d                                           ; $6d4a: $14
	ld   h, d                                        ; $6d4b: $62
	ld   de, $1111                                   ; $6d4c: $11 $11 $11
	ld   de, $9f11                                   ; $6d4f: $11 $11 $9f

Jump_0b2_6d52:
	rst  $38                                         ; $6d52: $ff
	rst  $38                                         ; $6d53: $ff
	rst  $38                                         ; $6d54: $ff
	rst  $38                                         ; $6d55: $ff
	rst  $38                                         ; $6d56: $ff
	rst  $38                                         ; $6d57: $ff
	db   $f4                                         ; $6d58: $f4
	ld   bc, $4111                                   ; $6d59: $01 $11 $41
	ld   de, $1148                                   ; $6d5c: $11 $48 $11
	ld   de, $1111                                   ; $6d5f: $11 $11 $11
	ld   de, $ff1c                                   ; $6d62: $11 $1c $ff
	rst  $38                                         ; $6d65: $ff
	rst  $38                                         ; $6d66: $ff
	rst  $38                                         ; $6d67: $ff
	rst  $38                                         ; $6d68: $ff
	rst  $38                                         ; $6d69: $ff
	ret  c                                           ; $6d6a: $d8

	ld   sp, $1811                                   ; $6d6b: $31 $11 $18
	add  e                                           ; $6d6e: $83
	dec  d                                           ; $6d6f: $15
	ld   h, e                                        ; $6d70: $63
	ld   de, $1111                                   ; $6d71: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $6d74: $11 $11 $ff
	rst  $38                                         ; $6d77: $ff
	rst  $38                                         ; $6d78: $ff
	rst  $38                                         ; $6d79: $ff
	rst  $38                                         ; $6d7a: $ff
	sbc  $c3                                         ; $6d7b: $de $c3
	ld   b, c                                        ; $6d7d: $41
	ld   de, $a911                                   ; $6d7e: $11 $11 $a9
	ld   h, e                                        ; $6d81: $63
	sub  l                                           ; $6d82: $95
	ld   de, $1111                                   ; $6d83: $11 $11 $11
	ld   de, $3f11                                   ; $6d86: $11 $11 $3f
	rst  $38                                         ; $6d89: $ff
	rst  $38                                         ; $6d8a: $ff
	rst  $38                                         ; $6d8b: $ff
	rst  $38                                         ; $6d8c: $ff
	ld   a, [$21b3]                                  ; $6d8d: $fa $b3 $21
	ld   de, $9a11                                   ; $6d90: $11 $11 $9a
	or   a                                           ; $6d93: $b7
	ld   a, d                                        ; $6d94: $7a
	ld   d, c                                        ; $6d95: $51
	ld   de, $1111                                   ; $6d96: $11 $11 $11
	ld   de, $ff1f                                   ; $6d99: $11 $1f $ff
	rst  $38                                         ; $6d9c: $ff
	rst  $38                                         ; $6d9d: $ff
	rst  $38                                         ; $6d9e: $ff
	ei                                               ; $6d9f: $fb
	ld   b, c                                        ; $6da0: $41
	ld   de, $1111                                   ; $6da1: $11 $11 $11
	ld   e, h                                        ; $6da4: $5c
	rst  $28                                         ; $6da5: $ef
	bit  6, c                                        ; $6da6: $cb $71
	ld   de, $1111                                   ; $6da8: $11 $11 $11
	ld   de, $ff17                                   ; $6dab: $11 $17 $ff
	rst  $38                                         ; $6dae: $ff
	rst  $38                                         ; $6daf: $ff
	rst  $38                                         ; $6db0: $ff
	rst  $38                                         ; $6db1: $ff
	ld   d, c                                        ; $6db2: $51
	ld   de, $1111                                   ; $6db3: $11 $11 $11
	dec  sp                                          ; $6db6: $3b
	rst  $38                                         ; $6db7: $ff
	rst  $38                                         ; $6db8: $ff
	or   h                                           ; $6db9: $b4
	ld   de, $1111                                   ; $6dba: $11 $11 $11
	ld   de, $df14                                   ; $6dbd: $11 $14 $df
	rst  $38                                         ; $6dc0: $ff
	rst  $38                                         ; $6dc1: $ff
	rst  $38                                         ; $6dc2: $ff
	rst  $38                                         ; $6dc3: $ff
	pop  hl                                          ; $6dc4: $e1
	ld   de, $1311                                   ; $6dc5: $11 $11 $13
	ld   a, d                                        ; $6dc8: $7a
	rst  JumpTable                                         ; $6dc9: $df
	rst  $38                                         ; $6dca: $ff
	cp   $31                                         ; $6dcb: $fe $31
	ld   de, $1111                                   ; $6dcd: $11 $11 $11
	ld   de, $ff9f                                   ; $6dd0: $11 $9f $ff
	rst  $38                                         ; $6dd3: $ff
	rst  $38                                         ; $6dd4: $ff
	rst  $38                                         ; $6dd5: $ff
	ld   hl, sp+$11                                  ; $6dd6: $f8 $11
	ld   de, $9c11                                   ; $6dd8: $11 $11 $9c
	rst  $28                                         ; $6ddb: $ef
	rst  $38                                         ; $6ddc: $ff
	rst  $38                                         ; $6ddd: $ff
	pop  bc                                          ; $6dde: $c1
	ld   de, $1111                                   ; $6ddf: $11 $11 $11
	ld   de, $ff5e                                   ; $6de2: $11 $5e $ff
	rst  $38                                         ; $6de5: $ff
	rst  $38                                         ; $6de6: $ff
	rst  $38                                         ; $6de7: $ff
	ld   a, [$1111]                                  ; $6de8: $fa $11 $11
	ld   de, $ff6c                                   ; $6deb: $11 $6c $ff
	rst  $38                                         ; $6dee: $ff
	rst  $38                                         ; $6def: $ff
	jp   $1111                                       ; $6df0: $c3 $11 $11


	ld   de, $3f11                                   ; $6df3: $11 $11 $3f
	rst  $38                                         ; $6df6: $ff
	rst  $38                                         ; $6df7: $ff
	rst  $38                                         ; $6df8: $ff
	rst  $38                                         ; $6df9: $ff
	ld   a, [$1151]                                  ; $6dfa: $fa $51 $11
	ld   de, $ff19                                   ; $6dfd: $11 $19 $ff
	rst  $38                                         ; $6e00: $ff
	rst  $38                                         ; $6e01: $ff
	push bc                                          ; $6e02: $c5
	ld   de, $1111                                   ; $6e03: $11 $11 $11
	ld   de, $ff1f                                   ; $6e06: $11 $1f $ff
	rst  $38                                         ; $6e09: $ff
	rst  $38                                         ; $6e0a: $ff
	rst  $38                                         ; $6e0b: $ff
	ld   hl, sp+$41                                  ; $6e0c: $f8 $41
	ld   de, $1811                                   ; $6e0e: $11 $11 $18
	rst  $28                                         ; $6e11: $ef
	rst  $38                                         ; $6e12: $ff
	cp   $a4                                         ; $6e13: $fe $a4
	ld   de, $1111                                   ; $6e15: $11 $11 $11
	ld   de, $ff1f                                   ; $6e18: $11 $1f $ff
	rst  $38                                         ; $6e1b: $ff
	rst  $38                                         ; $6e1c: $ff
	rst  $38                                         ; $6e1d: $ff
	ld   a, [$1131]                                  ; $6e1e: $fa $31 $11
	ld   de, $ef3a                                   ; $6e21: $11 $3a $ef
	rst  $38                                         ; $6e24: $ff
	rst  $38                                         ; $6e25: $ff
	and  e                                           ; $6e26: $a3
	ld   de, $1111                                   ; $6e27: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $6e2a: $11 $12 $ff
	rst  $38                                         ; $6e2d: $ff
	rst  $38                                         ; $6e2e: $ff
	rst  $38                                         ; $6e2f: $ff
	cp   $73                                         ; $6e30: $fe $73
	ld   hl, $6911                                   ; $6e32: $21 $11 $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e35: $cf
	rst  $38                                         ; $6e36: $ff
	call c, $11a6                                    ; $6e37: $dc $a6 $11
	ld   de, $1111                                   ; $6e3a: $11 $11 $11
	ld   de, $ff5e                                   ; $6e3d: $11 $5e $ff
	rst  $38                                         ; $6e40: $ff
	rst  $38                                         ; $6e41: $ff
	rst  $38                                         ; $6e42: $ff
	ei                                               ; $6e43: $fb
	halt                                             ; $6e44: $76
	ld   sp, $be69                                   ; $6e45: $31 $69 $be
	rst  $38                                         ; $6e48: $ff
	db   $fd                                         ; $6e49: $fd
	rst  $10                                         ; $6e4a: $d7
	ld   hl, $1111                                   ; $6e4b: $21 $11 $11
	ld   de, $1111                                   ; $6e4e: $11 $11 $11
	ld   l, a                                        ; $6e51: $6f
	rst  $38                                         ; $6e52: $ff
	rst  $38                                         ; $6e53: $ff
	rst  $38                                         ; $6e54: $ff
	rst  $38                                         ; $6e55: $ff
	db   $fc                                         ; $6e56: $fc
	ld   [hl], a                                     ; $6e57: $77
	adc  c                                           ; $6e58: $89
	cp   [hl]                                        ; $6e59: $be
	rst  $38                                         ; $6e5a: $ff
	db   $fc                                         ; $6e5b: $fc
	cp   e                                           ; $6e5c: $bb
	ld   [hl], l                                     ; $6e5d: $75
	ld   sp, $1111                                   ; $6e5e: $31 $11 $11
	ld   de, $1511                                   ; $6e61: $11 $11 $15
	ld   a, [de]                                     ; $6e64: $1a
	xor  $ff                                         ; $6e65: $ee $ff
	rst  $38                                         ; $6e67: $ff
	rst  $38                                         ; $6e68: $ff
	rst  $38                                         ; $6e69: $ff
	sbc  $be                                         ; $6e6a: $de $be
	cp   $bd                                         ; $6e6c: $fe $bd
	db   $fd                                         ; $6e6e: $fd
	cp   b                                           ; $6e6f: $b8
	ld   h, l                                        ; $6e70: $65
	ld   de, $1111                                   ; $6e71: $11 $11 $11
	ld   de, $1311                                   ; $6e74: $11 $11 $13
	ld   de, $ff6e                                   ; $6e77: $11 $6e $ff
	rst  $38                                         ; $6e7a: $ff
	rst  $38                                         ; $6e7b: $ff
	rst  $38                                         ; $6e7c: $ff
	rst  $38                                         ; $6e7d: $ff
	rst  $28                                         ; $6e7e: $ef
	call $ceca                                       ; $6e7f: $cd $ca $ce
	db   $dd                                         ; $6e82: $dd
	add  l                                           ; $6e83: $85
	ld   hl, $3124                                   ; $6e84: $21 $24 $31
	ld   de, $1111                                   ; $6e87: $11 $11 $11
	ld   de, $ab17                                   ; $6e8a: $11 $17 $ab
	rst  $38                                         ; $6e8d: $ff
	rst  $38                                         ; $6e8e: $ff
	rst  $38                                         ; $6e8f: $ff
	rst  $38                                         ; $6e90: $ff
	db   $fd                                         ; $6e91: $fd
	cp   $ef                                         ; $6e92: $fe $ef
	db   $dd                                         ; $6e94: $dd
	jp   z, $a999                                    ; $6e95: $ca $99 $a9

	ld   [hl], h                                     ; $6e98: $74
	ld   hl, $1111                                   ; $6e99: $21 $11 $11
	ld   de, $1111                                   ; $6e9c: $11 $11 $11
	ld   a, b                                        ; $6e9f: $78
	rst  $28                                         ; $6ea0: $ef
	rst  $38                                         ; $6ea1: $ff
	rst  $38                                         ; $6ea2: $ff
	rst  $38                                         ; $6ea3: $ff
	rst  $38                                         ; $6ea4: $ff
	cp   $cf                                         ; $6ea5: $fe $cf
	rst  $30                                         ; $6ea7: $f7
	sbc  l                                           ; $6ea8: $9d
	xor  h                                           ; $6ea9: $ac
	cp   [hl]                                        ; $6eaa: $be
	rst  ToBoot                                         ; $6eab: $c7
	halt                                             ; $6eac: $76
	ld   hl, $1111                                   ; $6ead: $21 $11 $11
	ld   de, $1111                                   ; $6eb0: $11 $11 $11
	ld   a, [hl+]                                    ; $6eb3: $2a
	rst  $38                                         ; $6eb4: $ff
	rst  $38                                         ; $6eb5: $ff
	rst  $38                                         ; $6eb6: $ff
	rst  $38                                         ; $6eb7: $ff
	db   $ec                                         ; $6eb8: $ec
	rst  $38                                         ; $6eb9: $ff
	rst  $38                                         ; $6eba: $ff
	call $ccdb                                       ; $6ebb: $cd $db $cc
	db   $dd                                         ; $6ebe: $dd
	sbc  d                                           ; $6ebf: $9a
	ld   h, d                                        ; $6ec0: $62
	ld   de, $1111                                   ; $6ec1: $11 $11 $11
	ld   de, $1111                                   ; $6ec4: $11 $11 $11
	ld   a, l                                        ; $6ec7: $7d
	rst  $38                                         ; $6ec8: $ff
	rst  $38                                         ; $6ec9: $ff
	rst  $38                                         ; $6eca: $ff
	rst  $38                                         ; $6ecb: $ff
	db   $eb                                         ; $6ecc: $eb
	rst  $38                                         ; $6ecd: $ff
	rst  $38                                         ; $6ece: $ff
	db   $ec                                         ; $6ecf: $ec
	sbc  d                                           ; $6ed0: $9a
	xor  l                                           ; $6ed1: $ad
	db   $db                                         ; $6ed2: $db
	add  l                                           ; $6ed3: $85
	ld   sp, $1111                                   ; $6ed4: $31 $11 $11
	ld   de, $1111                                   ; $6ed7: $11 $11 $11
	inc  d                                           ; $6eda: $14
	ld   a, [hl]                                     ; $6edb: $7e
	rst  $38                                         ; $6edc: $ff
	rst  $38                                         ; $6edd: $ff
	rst  $38                                         ; $6ede: $ff
	rst  $38                                         ; $6edf: $ff
	db   $fd                                         ; $6ee0: $fd
	db   $dd                                         ; $6ee1: $dd
	db   $dd                                         ; $6ee2: $dd
	cp   d                                           ; $6ee3: $ba
	cp   l                                           ; $6ee4: $bd
	cp   h                                           ; $6ee5: $bc
	xor  d                                           ; $6ee6: $aa
	cp   c                                           ; $6ee7: $b9
	ld   [hl], e                                     ; $6ee8: $73
	ld   de, $1111                                   ; $6ee9: $11 $11 $11
	ld   de, $1111                                   ; $6eec: $11 $11 $11
	scf                                              ; $6eef: $37
	rst  $28                                         ; $6ef0: $ef
	rst  $38                                         ; $6ef1: $ff
	cp   $ef                                         ; $6ef2: $fe $ef
	rst  $38                                         ; $6ef4: $ff
	rst  $38                                         ; $6ef5: $ff
	db   $fc                                         ; $6ef6: $fc
	add  [hl]                                        ; $6ef7: $86
	ld   a, h                                        ; $6ef8: $7c
	rst  $28                                         ; $6ef9: $ef
	cp   c                                           ; $6efa: $b9
	ld   h, h                                        ; $6efb: $64
	ld   l, c                                        ; $6efc: $69
	res  2, l                                        ; $6efd: $cb $95
	ld   de, $1111                                   ; $6eff: $11 $11 $11
	ld   de, $1211                                   ; $6f02: $11 $11 $12
	ld   b, a                                        ; $6f05: $47
	xor  d                                           ; $6f06: $aa
	call $edef                                       ; $6f07: $cd $ef $ed
	db   $dd                                         ; $6f0a: $dd
	sbc  $ff                                         ; $6f0b: $de $ff
	rst  $38                                         ; $6f0d: $ff
	rst  $38                                         ; $6f0e: $ff
	call c, $87b9                                    ; $6f0f: $dc $b9 $87
	adc  b                                           ; $6f12: $88
	add  a                                           ; $6f13: $87
	ld   [hl], a                                     ; $6f14: $77
	ld   d, h                                        ; $6f15: $54
	ld   [hl-], a                                    ; $6f16: $32
	ld   [hl+], a                                    ; $6f17: $22
	ld   [hl+], a                                    ; $6f18: $22
	inc  sp                                          ; $6f19: $33
	inc  [hl]                                        ; $6f1a: $34
	ld   b, e                                        ; $6f1b: $43
	inc  [hl]                                        ; $6f1c: $34
	ld   h, a                                        ; $6f1d: $67
	sbc  d                                           ; $6f1e: $9a
	xor  e                                           ; $6f1f: $ab
	cp   h                                           ; $6f20: $bc
	call z, $ffde                                    ; $6f21: $cc $de $ff
	rst  $38                                         ; $6f24: $ff
	db   $ed                                         ; $6f25: $ed
	cp   d                                           ; $6f26: $ba
	sbc  d                                           ; $6f27: $9a
	sbc  c                                           ; $6f28: $99
	sub  a                                           ; $6f29: $97
	ld   h, [hl]                                     ; $6f2a: $66
	ld   d, l                                        ; $6f2b: $55
	ld   d, [hl]                                     ; $6f2c: $56
	ld   h, a                                        ; $6f2d: $67
	ld   a, b                                        ; $6f2e: $78
	halt                                             ; $6f2f: $76
	ld   d, h                                        ; $6f30: $54
	ld   d, l                                        ; $6f31: $55
	ld   h, [hl]                                     ; $6f32: $66
	ld   a, b                                        ; $6f33: $78
	add  a                                           ; $6f34: $87
	ld   a, b                                        ; $6f35: $78
	adc  c                                           ; $6f36: $89
	xor  e                                           ; $6f37: $ab
	xor  e                                           ; $6f38: $ab
	xor  c                                           ; $6f39: $a9
	add  a                                           ; $6f3a: $87
	adc  b                                           ; $6f3b: $88
	xor  c                                           ; $6f3c: $a9
	xor  c                                           ; $6f3d: $a9
	adc  b                                           ; $6f3e: $88
	sbc  d                                           ; $6f3f: $9a
	sbc  d                                           ; $6f40: $9a
	xor  c                                           ; $6f41: $a9
	sbc  c                                           ; $6f42: $99
	sub  a                                           ; $6f43: $97
	ld   h, [hl]                                     ; $6f44: $66
	ld   h, a                                        ; $6f45: $67
	adc  c                                           ; $6f46: $89
	adc  b                                           ; $6f47: $88
	sbc  c                                           ; $6f48: $99
	sbc  b                                           ; $6f49: $98
	ld   [hl], a                                     ; $6f4a: $77
	ld   [hl], a                                     ; $6f4b: $77
	ld   [hl], a                                     ; $6f4c: $77
	adc  b                                           ; $6f4d: $88
	add  a                                           ; $6f4e: $87
	ld   h, [hl]                                     ; $6f4f: $66
	ld   [hl], a                                     ; $6f50: $77
	sbc  b                                           ; $6f51: $98
	adc  c                                           ; $6f52: $89
	adc  b                                           ; $6f53: $88
	adc  b                                           ; $6f54: $88
	adc  b                                           ; $6f55: $88
	ld   [hl], a                                     ; $6f56: $77
	adc  c                                           ; $6f57: $89
	xor  d                                           ; $6f58: $aa
	sbc  c                                           ; $6f59: $99
	ld   [hl], a                                     ; $6f5a: $77
	ld   a, b                                        ; $6f5b: $78
	sbc  e                                           ; $6f5c: $9b
	cp   e                                           ; $6f5d: $bb
	sbc  b                                           ; $6f5e: $98
	ld   [hl], a                                     ; $6f5f: $77
	ld   [hl], a                                     ; $6f60: $77
	adc  b                                           ; $6f61: $88
	adc  b                                           ; $6f62: $88
	add  a                                           ; $6f63: $87
	ld   [hl], a                                     ; $6f64: $77
	ld   a, b                                        ; $6f65: $78
	adc  b                                           ; $6f66: $88
	ld   [hl], a                                     ; $6f67: $77
	ld   [hl], a                                     ; $6f68: $77
	ld   [hl], a                                     ; $6f69: $77
	ld   a, b                                        ; $6f6a: $78
	adc  b                                           ; $6f6b: $88
	adc  b                                           ; $6f6c: $88
	sbc  c                                           ; $6f6d: $99
	add  a                                           ; $6f6e: $87
	adc  b                                           ; $6f6f: $88
	adc  c                                           ; $6f70: $89
	sbc  c                                           ; $6f71: $99
	sbc  b                                           ; $6f72: $98
	add  a                                           ; $6f73: $87
	ld   a, b                                        ; $6f74: $78
	adc  d                                           ; $6f75: $8a
	sbc  b                                           ; $6f76: $98
	add  a                                           ; $6f77: $87
	ld   [hl], a                                     ; $6f78: $77
	adc  b                                           ; $6f79: $88
	ld   [hl], a                                     ; $6f7a: $77
	ld   [hl], a                                     ; $6f7b: $77
	ld   [hl], a                                     ; $6f7c: $77
	ld   [hl], a                                     ; $6f7d: $77
	ld   [hl], a                                     ; $6f7e: $77
	ld   a, b                                        ; $6f7f: $78
	adc  c                                           ; $6f80: $89
	sbc  b                                           ; $6f81: $98
	add  a                                           ; $6f82: $87
	ld   a, b                                        ; $6f83: $78
	adc  b                                           ; $6f84: $88
	sbc  b                                           ; $6f85: $98
	adc  b                                           ; $6f86: $88
	adc  b                                           ; $6f87: $88
	adc  c                                           ; $6f88: $89
	sbc  b                                           ; $6f89: $98
	adc  c                                           ; $6f8a: $89
	adc  b                                           ; $6f8b: $88
	adc  b                                           ; $6f8c: $88
	add  a                                           ; $6f8d: $87
	ld   [hl], a                                     ; $6f8e: $77
	ld   [hl], a                                     ; $6f8f: $77
	ld   [hl], a                                     ; $6f90: $77
	ld   a, b                                        ; $6f91: $78
	adc  b                                           ; $6f92: $88
	add  a                                           ; $6f93: $87
	ld   [hl], a                                     ; $6f94: $77
	ld   [hl], a                                     ; $6f95: $77
	ld   [hl], a                                     ; $6f96: $77
	ld   [hl], a                                     ; $6f97: $77
	ld   [hl], a                                     ; $6f98: $77
	ld   [hl], a                                     ; $6f99: $77
	adc  b                                           ; $6f9a: $88
	sbc  c                                           ; $6f9b: $99
	adc  c                                           ; $6f9c: $89
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
	add  a                                           ; $6fa7: $87
	ld   [hl], a                                     ; $6fa8: $77
	ld   [hl], a                                     ; $6fa9: $77
	ld   [hl], a                                     ; $6faa: $77
	ld   [hl], a                                     ; $6fab: $77
	ld   [hl], a                                     ; $6fac: $77
	ld   [hl], a                                     ; $6fad: $77
	ld   a, b                                        ; $6fae: $78
	adc  b                                           ; $6faf: $88
	adc  b                                           ; $6fb0: $88
	adc  b                                           ; $6fb1: $88
	ld   [hl], a                                     ; $6fb2: $77
	adc  b                                           ; $6fb3: $88
	adc  b                                           ; $6fb4: $88
	adc  b                                           ; $6fb5: $88
	sbc  b                                           ; $6fb6: $98
	sbc  c                                           ; $6fb7: $99
	sbc  c                                           ; $6fb8: $99
	sbc  b                                           ; $6fb9: $98
	adc  b                                           ; $6fba: $88
	add  a                                           ; $6fbb: $87
	ld   [hl], a                                     ; $6fbc: $77
	ld   [hl], a                                     ; $6fbd: $77
	ld   [hl], a                                     ; $6fbe: $77
	ld   [hl], a                                     ; $6fbf: $77
	ld   [hl], a                                     ; $6fc0: $77
	ld   [hl], a                                     ; $6fc1: $77
	ld   [hl], a                                     ; $6fc2: $77
	ld   [hl], a                                     ; $6fc3: $77
	ld   [hl], a                                     ; $6fc4: $77
	ld   [hl], a                                     ; $6fc5: $77
	ld   [hl], a                                     ; $6fc6: $77
	ld   a, b                                        ; $6fc7: $78
	adc  b                                           ; $6fc8: $88
	adc  b                                           ; $6fc9: $88
	adc  b                                           ; $6fca: $88
	adc  b                                           ; $6fcb: $88
	adc  b                                           ; $6fcc: $88
	adc  b                                           ; $6fcd: $88
	adc  b                                           ; $6fce: $88
	adc  b                                           ; $6fcf: $88
	adc  b                                           ; $6fd0: $88
	ld   [hl], a                                     ; $6fd1: $77
	ld   [hl], a                                     ; $6fd2: $77
	ld   [hl], a                                     ; $6fd3: $77
	ld   [hl], a                                     ; $6fd4: $77
	ld   [hl], a                                     ; $6fd5: $77
	ld   [hl], a                                     ; $6fd6: $77
	adc  b                                           ; $6fd7: $88
	adc  b                                           ; $6fd8: $88
	adc  b                                           ; $6fd9: $88
	ld   [hl], a                                     ; $6fda: $77
	ld   a, b                                        ; $6fdb: $78
	adc  b                                           ; $6fdc: $88
	adc  b                                           ; $6fdd: $88
	add  a                                           ; $6fde: $87
	adc  b                                           ; $6fdf: $88
	adc  b                                           ; $6fe0: $88
	adc  b                                           ; $6fe1: $88
	adc  b                                           ; $6fe2: $88
	adc  b                                           ; $6fe3: $88
	adc  b                                           ; $6fe4: $88
	ld   [hl], a                                     ; $6fe5: $77
	ld   [hl], a                                     ; $6fe6: $77
	ld   [hl], a                                     ; $6fe7: $77
	adc  b                                           ; $6fe8: $88
	adc  b                                           ; $6fe9: $88
	adc  b                                           ; $6fea: $88
	adc  b                                           ; $6feb: $88
	adc  b                                           ; $6fec: $88
	adc  b                                           ; $6fed: $88
	adc  b                                           ; $6fee: $88
	ld   [hl], a                                     ; $6fef: $77
	adc  b                                           ; $6ff0: $88
	add  a                                           ; $6ff1: $87
	adc  b                                           ; $6ff2: $88
	adc  b                                           ; $6ff3: $88
	adc  b                                           ; $6ff4: $88
	adc  b                                           ; $6ff5: $88
	adc  b                                           ; $6ff6: $88
	adc  b                                           ; $6ff7: $88
	ld   [hl], a                                     ; $6ff8: $77
	ld   [hl], a                                     ; $6ff9: $77
	ld   [hl], a                                     ; $6ffa: $77
	ld   [hl], a                                     ; $6ffb: $77
	adc  b                                           ; $6ffc: $88
	adc  b                                           ; $6ffd: $88
	adc  b                                           ; $6ffe: $88
	adc  b                                           ; $6fff: $88
	adc  b                                           ; $7000: $88
	adc  b                                           ; $7001: $88
	adc  b                                           ; $7002: $88
	adc  b                                           ; $7003: $88
	adc  b                                           ; $7004: $88
	adc  b                                           ; $7005: $88
	adc  b                                           ; $7006: $88
	adc  b                                           ; $7007: $88
	adc  b                                           ; $7008: $88
	adc  b                                           ; $7009: $88
	adc  b                                           ; $700a: $88
	adc  b                                           ; $700b: $88
	add  a                                           ; $700c: $87
	ld   [hl], a                                     ; $700d: $77
	ld   a, b                                        ; $700e: $78
	adc  b                                           ; $700f: $88
	adc  b                                           ; $7010: $88
	adc  b                                           ; $7011: $88
	adc  b                                           ; $7012: $88
	adc  b                                           ; $7013: $88
	adc  b                                           ; $7014: $88
	adc  b                                           ; $7015: $88
	adc  b                                           ; $7016: $88
	adc  b                                           ; $7017: $88
	adc  b                                           ; $7018: $88
	adc  b                                           ; $7019: $88
	adc  b                                           ; $701a: $88
	adc  b                                           ; $701b: $88
	adc  b                                           ; $701c: $88
	adc  b                                           ; $701d: $88
	adc  b                                           ; $701e: $88
	adc  b                                           ; $701f: $88
	adc  b                                           ; $7020: $88
	adc  b                                           ; $7021: $88
	adc  b                                           ; $7022: $88
	adc  b                                           ; $7023: $88
	adc  b                                           ; $7024: $88
	adc  b                                           ; $7025: $88
	adc  b                                           ; $7026: $88
	adc  b                                           ; $7027: $88
	adc  b                                           ; $7028: $88
	adc  b                                           ; $7029: $88
	adc  b                                           ; $702a: $88
	adc  b                                           ; $702b: $88
	adc  b                                           ; $702c: $88
	adc  b                                           ; $702d: $88
	adc  b                                           ; $702e: $88
	adc  b                                           ; $702f: $88
	adc  b                                           ; $7030: $88
	adc  b                                           ; $7031: $88
	adc  b                                           ; $7032: $88
	adc  b                                           ; $7033: $88
	adc  b                                           ; $7034: $88
	adc  b                                           ; $7035: $88
	adc  b                                           ; $7036: $88
	adc  b                                           ; $7037: $88
	adc  b                                           ; $7038: $88
	adc  b                                           ; $7039: $88
	adc  b                                           ; $703a: $88
	sbc  c                                           ; $703b: $99
	adc  b                                           ; $703c: $88
	adc  b                                           ; $703d: $88
	xor  b                                           ; $703e: $a8
	halt                                             ; $703f: $76
	ld   d, [hl]                                     ; $7040: $56
	sbc  d                                           ; $7041: $9a
	sub  a                                           ; $7042: $97
	ld   h, [hl]                                     ; $7043: $66
	ld   a, c                                        ; $7044: $79
	xor  c                                           ; $7045: $a9
	add  a                                           ; $7046: $87
	ld   a, b                                        ; $7047: $78
	xor  c                                           ; $7048: $a9
	and  a                                           ; $7049: $a7
	ld   h, a                                        ; $704a: $67
	sbc  d                                           ; $704b: $9a
	xor  b                                           ; $704c: $a8
	ld   h, l                                        ; $704d: $65
	ld   d, a                                        ; $704e: $57
	xor  d                                           ; $704f: $aa
	sub  a                                           ; $7050: $97
	ld   h, a                                        ; $7051: $67
	adc  c                                           ; $7052: $89
	sbc  b                                           ; $7053: $98
	halt                                             ; $7054: $76
	ld   l, c                                        ; $7055: $69
	call z, Call_0b2_6796                            ; $7056: $cc $96 $67
	xor  h                                           ; $7059: $ac
	bit  4, e                                        ; $705a: $cb $63
	ld   a, e                                        ; $705c: $7b
	cp   e                                           ; $705d: $bb
	ld   [hl], e                                     ; $705e: $73
	dec  [hl]                                        ; $705f: $35
	ld   a, c                                        ; $7060: $79
	ld   [hl], l                                     ; $7061: $75
	ld   b, l                                        ; $7062: $45
	adc  c                                           ; $7063: $89
	sbc  b                                           ; $7064: $98
	ld   [hl], a                                     ; $7065: $77
	sbc  e                                           ; $7066: $9b
	xor  d                                           ; $7067: $aa
	xor  b                                           ; $7068: $a8
	sbc  c                                           ; $7069: $99
	sbc  b                                           ; $706a: $98
	add  [hl]                                        ; $706b: $86
	ld   d, l                                        ; $706c: $55
	ld   h, a                                        ; $706d: $67
	ld   [hl], a                                     ; $706e: $77
	ld   h, [hl]                                     ; $706f: $66
	ld   h, a                                        ; $7070: $67
	adc  b                                           ; $7071: $88
	sbc  b                                           ; $7072: $98
	ld   a, b                                        ; $7073: $78
	adc  b                                           ; $7074: $88
	adc  b                                           ; $7075: $88
	ld   [hl], a                                     ; $7076: $77
	ld   h, a                                        ; $7077: $67
	adc  c                                           ; $7078: $89
	sbc  c                                           ; $7079: $99
	ld   [hl], a                                     ; $707a: $77
	adc  c                                           ; $707b: $89
	sbc  c                                           ; $707c: $99
	sbc  d                                           ; $707d: $9a
	adc  b                                           ; $707e: $88
	sub  a                                           ; $707f: $97
	adc  c                                           ; $7080: $89
	xor  e                                           ; $7081: $ab
	add  [hl]                                        ; $7082: $86
	sbc  d                                           ; $7083: $9a
	and  a                                           ; $7084: $a7
	ld   l, b                                        ; $7085: $68
	adc  b                                           ; $7086: $88
	halt                                             ; $7087: $76
	ld   l, b                                        ; $7088: $68
	sbc  e                                           ; $7089: $9b
	sub  [hl]                                        ; $708a: $96
	ld   l, c                                        ; $708b: $69
	call c, Call_0b2_5695                            ; $708c: $dc $95 $56
	ld   l, d                                        ; $708f: $6a
	rst  $38                                         ; $7090: $ff
	rst  $10                                         ; $7091: $d7
	ld   b, [hl]                                     ; $7092: $46
	xor  e                                           ; $7093: $ab
	sub  e                                           ; $7094: $93
	ld   [de], a                                     ; $7095: $12
	ld   l, d                                        ; $7096: $6a
	sub  a                                           ; $7097: $97
	ld   h, l                                        ; $7098: $65
	sbc  l                                           ; $7099: $9d
	cp   $a5                                         ; $709a: $fe $a5
	ld   c, b                                        ; $709c: $48
	xor  d                                           ; $709d: $aa
	ld   h, e                                        ; $709e: $63
	jr   c, @+$01                                    ; $709f: $38 $ff

	sub  c                                           ; $70a1: $91
	inc  de                                          ; $70a2: $13
	xor  l                                           ; $70a3: $ad
	add  $23                                         ; $70a4: $c6 $23
	ld   l, e                                        ; $70a6: $6b
	or   a                                           ; $70a7: $b7
	ld   [hl-], a                                    ; $70a8: $32
	sbc  a                                           ; $70a9: $9f
	cp   $66                                         ; $70aa: $fe $66
	adc  a                                           ; $70ac: $8f
	rst  $38                                         ; $70ad: $ff
	sub  d                                           ; $70ae: $92
	ld   de, $2165                                   ; $70af: $11 $65 $21
	inc  de                                          ; $70b2: $13
	xor  a                                           ; $70b3: $af
	push bc                                          ; $70b4: $c5
	ld   e, d                                        ; $70b5: $5a
	db   $dd                                         ; $70b6: $dd
	xor  d                                           ; $70b7: $aa
	xor  c                                           ; $70b8: $a9
	adc  b                                           ; $70b9: $88
	ld   [hl], a                                     ; $70ba: $77
	add  l                                           ; $70bb: $85
	ld   [hl], $99                                   ; $70bc: $36 $99
	sbc  b                                           ; $70be: $98
	halt                                             ; $70bf: $76
	ld   e, c                                        ; $70c0: $59
	res  5, d                                        ; $70c1: $cb $aa
	adc  b                                           ; $70c3: $88
	call z, Call_0b2_5b62                            ; $70c4: $cc $62 $5b
	and  e                                           ; $70c7: $a3
	rla                                              ; $70c8: $17
	xor  $95                                         ; $70c9: $ee $95
	ld   b, l                                        ; $70cb: $45
	adc  $92                                         ; $70cc: $ce $92
	dec  d                                           ; $70ce: $15
	cp   l                                           ; $70cf: $bd
	and  [hl]                                        ; $70d0: $a6
	ld   [hl], $df                                   ; $70d1: $36 $df
	add  c                                           ; $70d3: $81
	rla                                              ; $70d4: $17
	rst  $38                                         ; $70d5: $ff
	add  d                                           ; $70d6: $82
	dec  d                                           ; $70d7: $15
	sbc  b                                           ; $70d8: $98
	and  e                                           ; $70d9: $a3
	ld   c, b                                        ; $70da: $48
	rst  $38                                         ; $70db: $ff
	and  h                                           ; $70dc: $a4
	dec  d                                           ; $70dd: $15
	rst  $28                                         ; $70de: $ef
	ld   hl, sp-$62                                  ; $70df: $f8 $9e
	rst  $38                                         ; $70e1: $ff
	or   d                                           ; $70e2: $b2
	inc  de                                          ; $70e3: $13
	adc  b                                           ; $70e4: $88
	xor  b                                           ; $70e5: $a8
	ld   c, b                                        ; $70e6: $48
	db   $fd                                         ; $70e7: $fd
	ld   [hl], l                                     ; $70e8: $75
	ld   d, [hl]                                     ; $70e9: $56
	ld   b, c                                        ; $70ea: $41
	ld   de, $1111                                   ; $70eb: $11 $11 $11
	ld   [de], a                                     ; $70ee: $12
	xor  c                                           ; $70ef: $a9
	ld   b, e                                        ; $70f0: $43
	rst  $38                                         ; $70f1: $ff
	rst  $38                                         ; $70f2: $ff
	rst  $38                                         ; $70f3: $ff
	rst  $38                                         ; $70f4: $ff
	rst  $38                                         ; $70f5: $ff
	ei                                               ; $70f6: $fb
	rst  $38                                         ; $70f7: $ff
	ei                                               ; $70f8: $fb
	cp   h                                           ; $70f9: $bc
	ld   h, a                                        ; $70fa: $67
	add  d                                           ; $70fb: $82
	ld   de, $1141                                   ; $70fc: $11 $41 $11
	ld   b, c                                        ; $70ff: $41
	ld   de, $1112                                   ; $7100: $11 $12 $11
	add  hl, de                                      ; $7103: $19
	jp   c, $ffff                                    ; $7104: $da $ff $ff

	rst  $38                                         ; $7107: $ff
	rst  $38                                         ; $7108: $ff
	rst  $38                                         ; $7109: $ff
	rst  $38                                         ; $710a: $ff
	db   $fc                                         ; $710b: $fc
	cp   c                                           ; $710c: $b9
	ld   h, [hl]                                     ; $710d: $66
	adc  b                                           ; $710e: $88
	ld   [hl], h                                     ; $710f: $74
	ld   de, $3112                                   ; $7110: $11 $12 $31
	ld   de, $1111                                   ; $7113: $11 $11 $11
	ld   de, $e414                                   ; $7116: $11 $14 $e4
	rst  $38                                         ; $7119: $ff
	rst  $38                                         ; $711a: $ff
	rst  $38                                         ; $711b: $ff
	rst  $38                                         ; $711c: $ff
	rst  $38                                         ; $711d: $ff
	ld   hl, sp+$5a                                  ; $711e: $f8 $5a
	ld   a, [$af11]                                  ; $7120: $fa $11 $af
	sub  d                                           ; $7123: $92
	sub  d                                           ; $7124: $92
	ld   [hl], $11                                   ; $7125: $36 $11
	ld   de, $1111                                   ; $7127: $11 $11 $11
	ld   [de], a                                     ; $712a: $12
	ld   de, $ffdf                                   ; $712b: $11 $df $ff
	rst  $38                                         ; $712e: $ff
	rst  $38                                         ; $712f: $ff
	rst  $38                                         ; $7130: $ff
	rst  $28                                         ; $7131: $ef
	xor  a                                           ; $7132: $af
	rst  $30                                         ; $7133: $f7
	rst  $38                                         ; $7134: $ff
	ld   c, a                                        ; $7135: $4f
	db   $fc                                         ; $7136: $fc
	ld   [hl], e                                     ; $7137: $73
	ld   l, c                                        ; $7138: $69
	ld   de, $1111                                   ; $7139: $11 $11 $11
	ld   de, $5511                                   ; $713c: $11 $11 $55
	adc  b                                           ; $713f: $88
	rst  $38                                         ; $7140: $ff
	rst  $38                                         ; $7141: $ff
	rst  $38                                         ; $7142: $ff
	pop  af                                          ; $7143: $f1
	cp   a                                           ; $7144: $bf
	rst  $38                                         ; $7145: $ff
	rst  $28                                         ; $7146: $ef
	rst  $38                                         ; $7147: $ff
	rst  $38                                         ; $7148: $ff
	jp   nz, $c1ee                                   ; $7149: $c2 $ee $c1

	ld   de, $1111                                   ; $714c: $11 $11 $11
	ld   de, $1111                                   ; $714f: $11 $11 $11
	rla                                              ; $7152: $17
	rst  JumpTable                                         ; $7153: $df
	ldh  a, [c]                                      ; $7154: $f2
	rst  $38                                         ; $7155: $ff
	rst  $38                                         ; $7156: $ff
	call c, $ffaf                                    ; $7157: $dc $af $ff
	or   h                                           ; $715a: $b4
	rst  $38                                         ; $715b: $ff
	db   $fd                                         ; $715c: $fd
	ld   [hl-], a                                    ; $715d: $32
	ld   h, $f6                                      ; $715e: $26 $f6
	ld   de, $1114                                   ; $7160: $11 $14 $11
	ld   de, $2111                                   ; $7163: $11 $11 $21
	rra                                              ; $7166: $1f
	db   $f4                                         ; $7167: $f4
	rra                                              ; $7168: $1f
	rst  $38                                         ; $7169: $ff
	rra                                              ; $716a: $1f
	ei                                               ; $716b: $fb
	ld   e, a                                        ; $716c: $5f
	db   $fd                                         ; $716d: $fd
	rst  $38                                         ; $716e: $ff
	cp   $1f                                         ; $716f: $fe $1f
	ldh  a, [c]                                      ; $7171: $f2
	inc  l                                           ; $7172: $2c
	and  e                                           ; $7173: $a3
	ld   de, $1111                                   ; $7174: $11 $11 $11
	ld   de, $911a                                   ; $7177: $11 $1a $91
	inc  d                                           ; $717a: $14
	rra                                              ; $717b: $1f
	rst  $38                                         ; $717c: $ff
	rst  $38                                         ; $717d: $ff
	pop  af                                          ; $717e: $f1
	cpl                                              ; $717f: $2f
	push af                                          ; $7180: $f5
	rst  $38                                         ; $7181: $ff
	rst  $38                                         ; $7182: $ff
	rst  $38                                         ; $7183: $ff
	ld   de, $f39f                                   ; $7184: $11 $9f $f3
	ld   de, $1111                                   ; $7187: $11 $11 $11
	ld   de, $1113                                   ; $718a: $11 $13 $11
	ld   de, $f11f                                   ; $718d: $11 $1f $f1
	cp   a                                           ; $7190: $bf
	db   $fc                                         ; $7191: $fc
	sbc  a                                           ; $7192: $9f
	push af                                          ; $7193: $f5
	rst  $38                                         ; $7194: $ff
	rst  $38                                         ; $7195: $ff
	sbc  $fe                                         ; $7196: $de $fe
	and  l                                           ; $7198: $a5
	ld   a, a                                        ; $7199: $7f
	and  c                                           ; $719a: $a1
	ld   sp, $1111                                   ; $719b: $31 $11 $11
	dec  d                                           ; $719e: $15
	ld   sp, $111d                                   ; $719f: $31 $1d $11
	rra                                              ; $71a2: $1f
	ldh  a, [c]                                      ; $71a3: $f2
	rra                                              ; $71a4: $1f
	pop  af                                          ; $71a5: $f1
	rst  $38                                         ; $71a6: $ff
	ld   c, l                                        ; $71a7: $4d
	rst  $38                                         ; $71a8: $ff
	rst  $38                                         ; $71a9: $ff
	ld   a, a                                        ; $71aa: $7f
	di                                               ; $71ab: $f3
	ld   e, h                                        ; $71ac: $5c
	rst  $38                                         ; $71ad: $ff
	ld   b, c                                        ; $71ae: $41
	ld   h, h                                        ; $71af: $64
	ld   de, $1111                                   ; $71b0: $11 $11 $11
	ld   de, $1c11                                   ; $71b3: $11 $11 $1c
	pop  af                                          ; $71b6: $f1
	ld   e, a                                        ; $71b7: $5f
	rst  $38                                         ; $71b8: $ff
	dec  l                                           ; $71b9: $2d
	ld   hl, sp-$01                                  ; $71ba: $f8 $ff
	db   $fc                                         ; $71bc: $fc
	call c, $22ff                                    ; $71bd: $dc $ff $22
	ld   c, e                                        ; $71c0: $4b
	rst  $38                                         ; $71c1: $ff
	ld   b, c                                        ; $71c2: $41
	inc  d                                           ; $71c3: $14
	ld   b, c                                        ; $71c4: $41
	ld   de, $1111                                   ; $71c5: $11 $11 $11
	ld   de, $7ffe                                   ; $71c8: $11 $fe $7f
	inc  hl                                          ; $71cb: $23
	ld   sp, hl                                      ; $71cc: $f9
	pop  af                                          ; $71cd: $f1
	rra                                              ; $71ce: $1f
	rst  $38                                         ; $71cf: $ff
	ld   a, [$ffff]                                  ; $71d0: $fa $ff $ff
	ld   de, $f11f                                   ; $71d3: $11 $1f $f1
	ld   de, $11a6                                   ; $71d6: $11 $a6 $11
	ld   de, $1111                                   ; $71d9: $11 $11 $11
	ld   de, $f21c                                   ; $71dc: $11 $1c $f2
	rra                                              ; $71df: $1f
	rst  $38                                         ; $71e0: $ff
	db   $f4                                         ; $71e1: $f4
	cp   a                                           ; $71e2: $bf
	rst  $38                                         ; $71e3: $ff
	rst  $38                                         ; $71e4: $ff
	rst  JumpTable                                         ; $71e5: $df
	rst  $38                                         ; $71e6: $ff
	add  $bf                                         ; $71e7: $c6 $bf
	push bc                                          ; $71e9: $c5
	sub  [hl]                                        ; $71ea: $96
	ld   de, $1121                                   ; $71eb: $11 $21 $11
	ld   de, $1f11                                   ; $71ee: $11 $11 $1f
	ld   de, $11ff                                   ; $71f1: $11 $ff $11
	rst  $38                                         ; $71f4: $ff
	ld   e, h                                        ; $71f5: $5c
	rst  $30                                         ; $71f6: $f7
	xor  a                                           ; $71f7: $af
	rst  $38                                         ; $71f8: $ff
	ld   e, c                                        ; $71f9: $59
	rst  $38                                         ; $71fa: $ff
	rst  $38                                         ; $71fb: $ff
	ld   h, a                                        ; $71fc: $67
	adc  e                                           ; $71fd: $8b
	ld   sp, hl                                      ; $71fe: $f9

Call_0b2_71ff:
	ld   de, $1111                                   ; $71ff: $11 $11 $11
	ld   de, $5411                                   ; $7202: $11 $11 $54
	ld   de, $2fdf                                   ; $7205: $11 $df $2f
	rst  $38                                         ; $7208: $ff
	pop  af                                          ; $7209: $f1
	rst  $38                                         ; $720a: $ff
	ld   c, a                                        ; $720b: $4f
	rst  $28                                         ; $720c: $ef
	db   $fd                                         ; $720d: $fd
	rst  $38                                         ; $720e: $ff
	or   $ff                                         ; $720f: $f6 $ff
	rst  $10                                         ; $7211: $d7
	ld   h, [hl]                                     ; $7212: $66
	ld   de, $1162                                   ; $7213: $11 $62 $11
	ld   de, $111c                                   ; $7216: $11 $1c $11
	ld   de, $9cbf                                   ; $7219: $11 $bf $9c
	rst  $38                                         ; $721c: $ff
	rst  JumpTable                                         ; $721d: $df
	ld   a, [$ff1d]                                  ; $721e: $fa $1d $ff
	rst  $38                                         ; $7221: $ff
	push af                                          ; $7222: $f5
	rst  $38                                         ; $7223: $ff
	ei                                               ; $7224: $fb
	cp   h                                           ; $7225: $bc
	or   l                                           ; $7226: $b5
	ld   sp, $1111                                   ; $7227: $31 $11 $11
	ld   de, $1111                                   ; $722a: $11 $11 $11
	ld   de, $7f24                                   ; $722d: $11 $24 $7f
	rst  JumpTable                                         ; $7230: $df
	rst  $38                                         ; $7231: $ff
	ld   l, a                                        ; $7232: $6f
	rst  $38                                         ; $7233: $ff
	ld   a, [$ffff]                                  ; $7234: $fa $ff $ff
	ld   sp, hl                                      ; $7237: $f9
	cp   a                                           ; $7238: $bf
	rst  $38                                         ; $7239: $ff
	ld   h, l                                        ; $723a: $65
	cp   c                                           ; $723b: $b9
	ld   [hl], c                                     ; $723c: $71
	ld   de, $1111                                   ; $723d: $11 $11 $11
	ld   de, $1119                                   ; $7240: $11 $19 $11
	rra                                              ; $7243: $1f
	db   $fc                                         ; $7244: $fc
	cp   $df                                         ; $7245: $fe $df
	rst  $38                                         ; $7247: $ff
	dec  e                                           ; $7248: $1d
	rst  $38                                         ; $7249: $ff
	rst  $38                                         ; $724a: $ff
	xor  e                                           ; $724b: $ab
	rst  $38                                         ; $724c: $ff
	ldh  a, [c]                                      ; $724d: $f2
	sbc  a                                           ; $724e: $9f
	ld   sp, hl                                      ; $724f: $f9
	ld   de, $611e                                   ; $7250: $11 $1e $61
	ld   de, $1111                                   ; $7253: $11 $11 $11
	ld   [de], a                                     ; $7256: $12
	ld   de, $46cc                                   ; $7257: $11 $cc $46
	rst  $38                                         ; $725a: $ff
	ld   e, c                                        ; $725b: $59
	rst  $38                                         ; $725c: $ff
	rst  JumpTable                                         ; $725d: $df
	db   $fc                                         ; $725e: $fc
	rst  $38                                         ; $725f: $ff
	db   $fc                                         ; $7260: $fc
	call $f9bf                                       ; $7261: $cd $bf $f9
	ld   l, d                                        ; $7264: $6a
	and  [hl]                                        ; $7265: $a6
	ld   b, d                                        ; $7266: $42
	ld   de, $1111                                   ; $7267: $11 $11 $11
	ld   de, $1111                                   ; $726a: $11 $11 $11
	rla                                              ; $726d: $17
	ld   hl, sp-$51                                  ; $726e: $f8 $af
	rst  $38                                         ; $7270: $ff
	rst  $28                                         ; $7271: $ef
	db   $ed                                         ; $7272: $ed
	rst  $38                                         ; $7273: $ff
	cp   l                                           ; $7274: $bd
	cp   $fd                                         ; $7275: $fe $fd
	res  3, b                                        ; $7277: $cb $98
	xor  b                                           ; $7279: $a8
	ld   d, h                                        ; $727a: $54
	inc  h                                           ; $727b: $24
	ld   b, e                                        ; $727c: $43
	ld   de, $2211                                   ; $727d: $11 $11 $22
	ld   de, $2511                                   ; $7280: $11 $11 $25
	inc  sp                                          ; $7283: $33
	ld   h, $a8                                      ; $7284: $26 $a8
	ld   [hl], a                                     ; $7286: $77
	adc  e                                           ; $7287: $8b
	db   $dd                                         ; $7288: $dd
	call $ffde                                       ; $7289: $cd $de $ff
	adc  $ea                                         ; $728c: $ce $ea
	call $a9a9                                       ; $728e: $cd $a9 $a9
	add  a                                           ; $7291: $87
	add  a                                           ; $7292: $87
	add  a                                           ; $7293: $87
	ld   [hl], a                                     ; $7294: $77
	add  a                                           ; $7295: $87
	ld   a, b                                        ; $7296: $78
	ld   [hl], a                                     ; $7297: $77
	adc  b                                           ; $7298: $88
	adc  b                                           ; $7299: $88
	adc  b                                           ; $729a: $88
	sbc  c                                           ; $729b: $99
	sbc  c                                           ; $729c: $99
	sbc  d                                           ; $729d: $9a
	xor  e                                           ; $729e: $ab
	xor  d                                           ; $729f: $aa
	xor  d                                           ; $72a0: $aa
	xor  d                                           ; $72a1: $aa
	sbc  c                                           ; $72a2: $99
	sbc  c                                           ; $72a3: $99
	sbc  c                                           ; $72a4: $99
	sbc  b                                           ; $72a5: $98
	adc  b                                           ; $72a6: $88
	add  a                                           ; $72a7: $87
	ld   [hl], a                                     ; $72a8: $77
	adc  b                                           ; $72a9: $88
	add  a                                           ; $72aa: $87
	ld   [hl], a                                     ; $72ab: $77
	adc  b                                           ; $72ac: $88
	ld   a, b                                        ; $72ad: $78
	adc  b                                           ; $72ae: $88
	adc  c                                           ; $72af: $89
	sbc  c                                           ; $72b0: $99
	sbc  c                                           ; $72b1: $99
	adc  c                                           ; $72b2: $89
	sbc  c                                           ; $72b3: $99
	sbc  c                                           ; $72b4: $99
	sbc  b                                           ; $72b5: $98
	adc  b                                           ; $72b6: $88
	sbc  b                                           ; $72b7: $98
	sbc  b                                           ; $72b8: $98
	adc  b                                           ; $72b9: $88
	adc  b                                           ; $72ba: $88
	adc  b                                           ; $72bb: $88
	adc  b                                           ; $72bc: $88
	adc  b                                           ; $72bd: $88
	ld   a, b                                        ; $72be: $78
	adc  b                                           ; $72bf: $88
	ld   a, b                                        ; $72c0: $78
	adc  b                                           ; $72c1: $88
	adc  b                                           ; $72c2: $88
	adc  c                                           ; $72c3: $89
	sbc  c                                           ; $72c4: $99
	sbc  c                                           ; $72c5: $99
	sbc  c                                           ; $72c6: $99
	sbc  b                                           ; $72c7: $98
	sbc  b                                           ; $72c8: $98
	sbc  c                                           ; $72c9: $99
	adc  c                                           ; $72ca: $89
	sbc  b                                           ; $72cb: $98
	adc  b                                           ; $72cc: $88
	adc  b                                           ; $72cd: $88
	ld   [hl], a                                     ; $72ce: $77
	add  a                                           ; $72cf: $87
	ld   [hl], a                                     ; $72d0: $77
	add  a                                           ; $72d1: $87
	ld   [hl], a                                     ; $72d2: $77
	adc  b                                           ; $72d3: $88
	ld   [hl], a                                     ; $72d4: $77
	adc  b                                           ; $72d5: $88
	adc  b                                           ; $72d6: $88
	adc  b                                           ; $72d7: $88
	adc  b                                           ; $72d8: $88
	adc  b                                           ; $72d9: $88
	adc  c                                           ; $72da: $89
	adc  b                                           ; $72db: $88
	sbc  b                                           ; $72dc: $98
	adc  b                                           ; $72dd: $88
	adc  c                                           ; $72de: $89
	adc  b                                           ; $72df: $88
	adc  b                                           ; $72e0: $88
	adc  b                                           ; $72e1: $88
	adc  b                                           ; $72e2: $88
	adc  b                                           ; $72e3: $88
	adc  b                                           ; $72e4: $88
	ld   [hl], a                                     ; $72e5: $77
	ld   [hl], a                                     ; $72e6: $77
	add  a                                           ; $72e7: $87
	ld   [hl], a                                     ; $72e8: $77
	ld   a, b                                        ; $72e9: $78
	ld   a, b                                        ; $72ea: $78
	adc  b                                           ; $72eb: $88
	adc  b                                           ; $72ec: $88
	adc  b                                           ; $72ed: $88
	adc  b                                           ; $72ee: $88
	adc  b                                           ; $72ef: $88
	adc  b                                           ; $72f0: $88
	adc  b                                           ; $72f1: $88
	adc  b                                           ; $72f2: $88
	adc  b                                           ; $72f3: $88
	adc  b                                           ; $72f4: $88
	adc  b                                           ; $72f5: $88
	adc  b                                           ; $72f6: $88
	adc  b                                           ; $72f7: $88
	adc  b                                           ; $72f8: $88
	adc  b                                           ; $72f9: $88
	add  a                                           ; $72fa: $87
	adc  b                                           ; $72fb: $88
	ld   [hl], a                                     ; $72fc: $77
	ld   a, b                                        ; $72fd: $78
	adc  b                                           ; $72fe: $88
	adc  b                                           ; $72ff: $88
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

Call_0b2_73c9:
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
	sbc  b                                           ; $7493: $98

Call_0b2_7494:
	adc  b                                           ; $7494: $88
	sbc  c                                           ; $7495: $99
	ld   a, b                                        ; $7496: $78
	sbc  b                                           ; $7497: $98
	adc  c                                           ; $7498: $89

Jump_0b2_7499:
	adc  b                                           ; $7499: $88
	adc  c                                           ; $749a: $89
	add  a                                           ; $749b: $87
	adc  b                                           ; $749c: $88
	adc  b                                           ; $749d: $88
	adc  b                                           ; $749e: $88
	adc  b                                           ; $749f: $88
	adc  b                                           ; $74a0: $88
	sbc  b                                           ; $74a1: $98
	adc  b                                           ; $74a2: $88
	adc  c                                           ; $74a3: $89
	sbc  c                                           ; $74a4: $99
	sbc  c                                           ; $74a5: $99
	sbc  b                                           ; $74a6: $98
	adc  b                                           ; $74a7: $88
	adc  d                                           ; $74a8: $8a

Call_0b2_74a9:
	adc  b                                           ; $74a9: $88
	sbc  b                                           ; $74aa: $98
	adc  b                                           ; $74ab: $88
	add  a                                           ; $74ac: $87
	ld   [hl], a                                     ; $74ad: $77
	ld   [hl], a                                     ; $74ae: $77
	ld   [hl], a                                     ; $74af: $77
	ld   h, a                                        ; $74b0: $67
	ld   [hl], a                                     ; $74b1: $77
	ld   [hl], a                                     ; $74b2: $77
	ld   [hl], a                                     ; $74b3: $77
	adc  c                                           ; $74b4: $89
	adc  b                                           ; $74b5: $88
	sbc  e                                           ; $74b6: $9b
	xor  b                                           ; $74b7: $a8
	add  a                                           ; $74b8: $87
	ld   [hl], a                                     ; $74b9: $77

Call_0b2_74ba:
	ld   h, [hl]                                     ; $74ba: $66
	ld   d, a                                        ; $74bb: $57
	sbc  b                                           ; $74bc: $98
	ld   a, b                                        ; $74bd: $78
	adc  c                                           ; $74be: $89
	cp   b                                           ; $74bf: $b8
	sbc  c                                           ; $74c0: $99
	adc  c                                           ; $74c1: $89
	sbc  b                                           ; $74c2: $98
	ld   [hl], a                                     ; $74c3: $77
	ld   h, [hl]                                     ; $74c4: $66
	ld   [hl], l                                     ; $74c5: $75
	ld   b, e                                        ; $74c6: $43
	inc  sp                                          ; $74c7: $33
	ld   de, $1111                                   ; $74c8: $11 $11 $11
	ld   [de], a                                     ; $74cb: $12
	ld   e, c                                        ; $74cc: $59
	cp   l                                           ; $74cd: $bd
	rst  JumpTable                                         ; $74ce: $df
	rst  $38                                         ; $74cf: $ff
	rst  $38                                         ; $74d0: $ff
	rst  $28                                         ; $74d1: $ef
	db   $fd                                         ; $74d2: $fd
	cp   b                                           ; $74d3: $b8
	ld   a, b                                        ; $74d4: $78
	sbc  b                                           ; $74d5: $98
	ld   l, b                                        ; $74d6: $68
	cp   c                                           ; $74d7: $b9
	sbc  c                                           ; $74d8: $99
	ld   [hl], c                                     ; $74d9: $71
	ld   de, $1111                                   ; $74da: $11 $11 $11
	ld   de, $1b11                                   ; $74dd: $11 $11 $1b
	rst  $38                                         ; $74e0: $ff
	rst  $38                                         ; $74e1: $ff
	rst  $38                                         ; $74e2: $ff
	rst  $38                                         ; $74e3: $ff
	db   $eb                                         ; $74e4: $eb
	and  [hl]                                        ; $74e5: $a6
	ld   l, d                                        ; $74e6: $6a
	db   $db                                         ; $74e7: $db
	xor  [hl]                                        ; $74e8: $ae
	rst  $38                                         ; $74e9: $ff
	rst  $38                                         ; $74ea: $ff
	db   $fc                                         ; $74eb: $fc
	add  d                                           ; $74ec: $82
	ld   de, $1111                                   ; $74ed: $11 $11 $11
	ld   de, $7911                                   ; $74f0: $11 $11 $79
	rst  $38                                         ; $74f3: $ff
	rst  $38                                         ; $74f4: $ff
	rst  $38                                         ; $74f5: $ff
	xor  [hl]                                        ; $74f6: $ae
	sbc  $95                                         ; $74f7: $de $95
	ld   l, e                                        ; $74f9: $6b
	rst  $38                                         ; $74fa: $ff
	rst  $38                                         ; $74fb: $ff
	rst  $38                                         ; $74fc: $ff
	rst  $38                                         ; $74fd: $ff
	ret                                              ; $74fe: $c9


	ld   b, l                                        ; $74ff: $45
	ld   de, $1111                                   ; $7500: $11 $11 $11
	ld   de, $3511                                   ; $7503: $11 $11 $35
	ld   de, $ff8f                                   ; $7506: $11 $8f $ff
	sbc  d                                           ; $7509: $9a
	rst  $38                                         ; $750a: $ff
	db   $fd                                         ; $750b: $fd
	adc  h                                           ; $750c: $8c
	rst  $38                                         ; $750d: $ff
	db   $fc                                         ; $750e: $fc
	db   $dd                                         ; $750f: $dd
	rst  $28                                         ; $7510: $ef
	and  $b6                                         ; $7511: $e6 $b6
	db   $db                                         ; $7513: $db
	ld   de, $3111                                   ; $7514: $11 $11 $31
	ld   de, $1211                                   ; $7517: $11 $11 $12
	ld   sp, $ff1f                                   ; $751a: $31 $1f $ff
	rst  $38                                         ; $751d: $ff
	rst  $38                                         ; $751e: $ff
	rst  $38                                         ; $751f: $ff
	ld   b, h                                        ; $7520: $44
	rst  $38                                         ; $7521: $ff
	rst  $38                                         ; $7522: $ff
	call c, $feff                                    ; $7523: $dc $ff $fe
	and  a                                           ; $7526: $a7
	xor  e                                           ; $7527: $ab
	add  c                                           ; $7528: $81
	ld   de, $1111                                   ; $7529: $11 $11 $11
	ld   de, $3115                                   ; $752c: $11 $15 $31
	ld   a, [de]                                     ; $752f: $1a
	rst  $38                                         ; $7530: $ff
	rst  $38                                         ; $7531: $ff
	rst  $38                                         ; $7532: $ff
	rst  $38                                         ; $7533: $ff
	ld   a, [$ffbf]                                  ; $7534: $fa $bf $ff
	rst  $38                                         ; $7537: $ff
	rst  $38                                         ; $7538: $ff
	rst  $38                                         ; $7539: $ff
	db   $fd                                         ; $753a: $fd
	xor  e                                           ; $753b: $ab
	sub  e                                           ; $753c: $93
	ld   de, $1111                                   ; $753d: $11 $11 $11
	ld   de, $1111                                   ; $7540: $11 $11 $11
	ld   de, $ef5d                                   ; $7543: $11 $5d $ef
	db   $fc                                         ; $7546: $fc
	rst  $38                                         ; $7547: $ff
	rst  $38                                         ; $7548: $ff
	db   $ec                                         ; $7549: $ec
	rst  $28                                         ; $754a: $ef
	rst  $38                                         ; $754b: $ff
	rst  $38                                         ; $754c: $ff
	db   $fd                                         ; $754d: $fd
	rst  $38                                         ; $754e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $754f: $cf
	add  $51                                         ; $7550: $c6 $51
	ld   b, c                                        ; $7552: $41
	ld   de, $1111                                   ; $7553: $11 $11 $11
	ld   de, $2115                                   ; $7556: $11 $15 $21
	ld   de, $ff9f                                   ; $7559: $11 $9f $ff
	db   $fd                                         ; $755c: $fd
	rst  $38                                         ; $755d: $ff
	db   $fc                                         ; $755e: $fc
	ld   d, a                                        ; $755f: $57
	rst  $38                                         ; $7560: $ff
	rst  $38                                         ; $7561: $ff
	db   $db                                         ; $7562: $db
	rst  $38                                         ; $7563: $ff
	ld   a, [$da47]                                  ; $7564: $fa $47 $da
	ld   de, $1111                                   ; $7567: $11 $11 $11
	ld   de, $1111                                   ; $756a: $11 $11 $11
	ld   de, $1d11                                   ; $756d: $11 $11 $1d
	rst  $38                                         ; $7570: $ff
	rst  $38                                         ; $7571: $ff
	rst  $38                                         ; $7572: $ff
	rst  $28                                         ; $7573: $ef
	ld   hl, sp-$41                                  ; $7574: $f8 $bf
	rst  $38                                         ; $7576: $ff
	cp   $fe                                         ; $7577: $fe $fe
	rst  $38                                         ; $7579: $ff
	jp   c, $9287                                    ; $757a: $da $87 $92

	ld   de, $1111                                   ; $757d: $11 $11 $11
	ld   de, $1111                                   ; $7580: $11 $11 $11
	ld   de, $8f11                                   ; $7583: $11 $11 $8f
	rst  $38                                         ; $7586: $ff

Jump_0b2_7587:
	rst  $38                                         ; $7587: $ff
	cp   $ff                                         ; $7588: $fe $ff
	ld   [hl], h                                     ; $758a: $74
	rst  $38                                         ; $758b: $ff
	rst  $38                                         ; $758c: $ff
	cp   $cf                                         ; $758d: $fe $cf
	db   $fd                                         ; $758f: $fd
	ld   d, l                                        ; $7590: $55
	ld   a, c                                        ; $7591: $79
	ld   hl, $1111                                   ; $7592: $21 $11 $11
	ld   de, $1111                                   ; $7595: $11 $11 $11
	ld   sp, $1211                                   ; $7598: $31 $11 $12
	rst  $38                                         ; $759b: $ff
	rst  $38                                         ; $759c: $ff
	rst  $38                                         ; $759d: $ff
	rst  $38                                         ; $759e: $ff
	rst  $38                                         ; $759f: $ff
	sbc  e                                           ; $75a0: $9b
	rst  $38                                         ; $75a1: $ff
	rst  $38                                         ; $75a2: $ff
	db   $fd                                         ; $75a3: $fd
	rst  $28                                         ; $75a4: $ef
	db   $fd                                         ; $75a5: $fd
	halt                                             ; $75a6: $76
	ld   d, e                                        ; $75a7: $53
	ld   sp, $1111                                   ; $75a8: $31 $11 $11
	ld   de, $1111                                   ; $75ab: $11 $11 $11
	ld   de, $7611                                   ; $75ae: $11 $11 $76
	rst  $38                                         ; $75b1: $ff
	rst  $38                                         ; $75b2: $ff
	rst  $38                                         ; $75b3: $ff
	rst  $38                                         ; $75b4: $ff
	rst  $38                                         ; $75b5: $ff
	adc  c                                           ; $75b6: $89
	rst  $38                                         ; $75b7: $ff
	rst  $38                                         ; $75b8: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75b9: $cf
	rst  $38                                         ; $75ba: $ff
	ei                                               ; $75bb: $fb
	ld   b, h                                        ; $75bc: $44
	ld   b, a                                        ; $75bd: $47
	add  c                                           ; $75be: $81
	ld   de, $1111                                   ; $75bf: $11 $11 $11
	ld   de, $1113                                   ; $75c2: $11 $13 $11
	ld   de, rAUD1HIGH                                   ; $75c5: $11 $14 $ff
	rst  $38                                         ; $75c8: $ff
	rst  $38                                         ; $75c9: $ff
	rst  $38                                         ; $75ca: $ff
	rst  $38                                         ; $75cb: $ff
	ld   a, c                                        ; $75cc: $79
	rst  $38                                         ; $75cd: $ff
	rst  $38                                         ; $75ce: $ff
	call $faff                                       ; $75cf: $cd $ff $fa
	ld   d, h                                        ; $75d2: $54
	ld   a, b                                        ; $75d3: $78
	ld   h, c                                        ; $75d4: $61
	ld   de, $1111                                   ; $75d5: $11 $11 $11
	ld   de, $1111                                   ; $75d8: $11 $11 $11
	dec  [hl]                                        ; $75db: $35
	ld   de, $ff5f                                   ; $75dc: $11 $5f $ff
	rst  $38                                         ; $75df: $ff
	rst  $38                                         ; $75e0: $ff
	rst  $38                                         ; $75e1: $ff
	or   $df                                         ; $75e2: $f6 $df
	rst  $38                                         ; $75e4: $ff
	db   $fc                                         ; $75e5: $fc
	adc  $ff                                         ; $75e6: $ce $ff
	and  a                                           ; $75e8: $a7
	ld   [hl], e                                     ; $75e9: $73
	ld   b, e                                        ; $75ea: $43
	ld   de, $1111                                   ; $75eb: $11 $11 $11
	ld   de, $1111                                   ; $75ee: $11 $11 $11
	ld   de, $4811                                   ; $75f1: $11 $11 $48
	rst  $38                                         ; $75f4: $ff
	rst  $38                                         ; $75f5: $ff
	rst  $38                                         ; $75f6: $ff
	rst  $38                                         ; $75f7: $ff
	cp   $ad                                         ; $75f8: $fe $ad
	rst  $38                                         ; $75fa: $ff
	rst  $38                                         ; $75fb: $ff

Call_0b2_75fc:
	set  5, a                                        ; $75fc: $cb $ef
	db   $db                                         ; $75fe: $db
	sub  a                                           ; $75ff: $97
	add  a                                           ; $7600: $87
	ld   sp, $1111                                   ; $7601: $31 $11 $11
	ld   de, $1111                                   ; $7604: $11 $11 $11
	ld   de, $2411                                   ; $7607: $11 $11 $24
	ld   a, a                                        ; $760a: $7f
	rst  $38                                         ; $760b: $ff
	rst  $38                                         ; $760c: $ff
	rst  $38                                         ; $760d: $ff
	rst  $38                                         ; $760e: $ff
	ei                                               ; $760f: $fb
	db   $ec                                         ; $7610: $ec
	rst  $28                                         ; $7611: $ef
	db   $eb                                         ; $7612: $eb
	ei                                               ; $7613: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7614: $cf
	call z, Call_0b2_7494                            ; $7615: $cc $94 $74
	ld   de, $1111                                   ; $7618: $11 $11 $11
	ld   de, $1111                                   ; $761b: $11 $11 $11
	ld   de, $1211                                   ; $761e: $11 $11 $12
	sbc  a                                           ; $7621: $9f
	rst  $38                                         ; $7622: $ff
	rst  $38                                         ; $7623: $ff
	rst  $38                                         ; $7624: $ff
	rst  $38                                         ; $7625: $ff
	ld   sp, hl                                      ; $7626: $f9
	xor  [hl]                                        ; $7627: $ae
	rst  $38                                         ; $7628: $ff
	ld   a, [$efcc]                                  ; $7629: $fa $cc $ef
	xor  b                                           ; $762c: $a8
	add  h                                           ; $762d: $84
	ld   [hl], l                                     ; $762e: $75
	ld   de, $1111                                   ; $762f: $11 $11 $11
	ld   de, $1111                                   ; $7632: $11 $11 $11
	ld   de, $1511                                   ; $7635: $11 $11 $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7638: $cf
	rst  $38                                         ; $7639: $ff
	rst  $38                                         ; $763a: $ff
	rst  $38                                         ; $763b: $ff
	rst  $38                                         ; $763c: $ff
	reti                                             ; $763d: $d9


	db   $dd                                         ; $763e: $dd
	rst  $38                                         ; $763f: $ff
	cp   e                                           ; $7640: $bb
	cp   e                                           ; $7641: $bb
	xor  $cc                                         ; $7642: $ee $cc
	and  a                                           ; $7644: $a7
	ld   h, d                                        ; $7645: $62
	ld   hl, $1111                                   ; $7646: $21 $11 $11
	ld   de, $1111                                   ; $7649: $11 $11 $11
	ld   de, $1113                                   ; $764c: $11 $13 $11
	ld   c, [hl]                                     ; $764f: $4e
	rst  $38                                         ; $7650: $ff
	rst  $38                                         ; $7651: $ff
	db   $fd                                         ; $7652: $fd
	rst  $38                                         ; $7653: $ff
	cp   $de                                         ; $7654: $fe $de
	call c, $bbfd                                    ; $7656: $dc $fd $bb
	call c, $b9dc                                    ; $7659: $dc $dc $b9
	adc  b                                           ; $765c: $88
	ld   d, d                                        ; $765d: $52
	ld   de, $1111                                   ; $765e: $11 $11 $11
	ld   de, $1111                                   ; $7661: $11 $11 $11
	ld   de, $1511                                   ; $7664: $11 $11 $15
	xor  a                                           ; $7667: $af
	rst  $38                                         ; $7668: $ff
	rst  $38                                         ; $7669: $ff
	rst  $38                                         ; $766a: $ff
	rst  $38                                         ; $766b: $ff
	cp   $df                                         ; $766c: $fe $df
	call c, $adeb                                    ; $766e: $dc $eb $ad
	adc  $da                                         ; $7671: $ce $da
	reti                                             ; $7673: $d9


	ld   l, c                                        ; $7674: $69
	ld   sp, $1141                                   ; $7675: $31 $41 $11
	ld   de, $1111                                   ; $7678: $11 $11 $11
	ld   de, $1111                                   ; $767b: $11 $11 $11
	daa                                              ; $767e: $27
	rst  $28                                         ; $767f: $ef
	rst  $38                                         ; $7680: $ff
	rst  $38                                         ; $7681: $ff
	rst  $38                                         ; $7682: $ff
	rst  $38                                         ; $7683: $ff
	db   $ec                                         ; $7684: $ec
	db   $ed                                         ; $7685: $ed
	xor  $cb                                         ; $7686: $ee $cb

Jump_0b2_7688:
	adc  $ee                                         ; $7688: $ce $ee
	cp   d                                           ; $768a: $ba
	sbc  b                                           ; $768b: $98
	ld   [hl], a                                     ; $768c: $77
	ld   b, c                                        ; $768d: $41
	ld   [hl+], a                                    ; $768e: $22
	ld   hl, $1111                                   ; $768f: $21 $11 $11
	ld   de, $1111                                   ; $7692: $11 $11 $11
	ld   de, $df1a                                   ; $7695: $11 $1a $df
	rst  $38                                         ; $7698: $ff
	rst  $38                                         ; $7699: $ff
	rst  $28                                         ; $769a: $ef
	rst  $38                                         ; $769b: $ff
	rst  $38                                         ; $769c: $ff
	rst  JumpTable                                         ; $769d: $df
	db   $dd                                         ; $769e: $dd
	db   $db                                         ; $769f: $db
	sbc  $cd                                         ; $76a0: $de $cd
	db   $db                                         ; $76a2: $db
	cp   c                                           ; $76a3: $b9
	sub  [hl]                                        ; $76a4: $96
	inc  [hl]                                        ; $76a5: $34
	ld   b, d                                        ; $76a6: $42
	ld   de, $1111                                   ; $76a7: $11 $11 $11
	ld   de, $1111                                   ; $76aa: $11 $11 $11
	ld   de, $ff39                                   ; $76ad: $11 $39 $ff
	rst  $38                                         ; $76b0: $ff
	rst  $38                                         ; $76b1: $ff
	rst  $38                                         ; $76b2: $ff
	rst  $38                                         ; $76b3: $ff
	rst  $38                                         ; $76b4: $ff
	cp   $de                                         ; $76b5: $fe $de
	db   $ed                                         ; $76b7: $ed
	call $bbec                                       ; $76b8: $cd $ec $bb
	sbc  b                                           ; $76bb: $98
	add  [hl]                                        ; $76bc: $86
	ld   b, e                                        ; $76bd: $43
	ld   [de], a                                     ; $76be: $12
	ld   hl, $1111                                   ; $76bf: $21 $11 $11
	ld   de, $1111                                   ; $76c2: $11 $11 $11
	ld   de, $ff5a                                   ; $76c5: $11 $5a $ff
	rst  $38                                         ; $76c8: $ff
	cp   $ff                                         ; $76c9: $fe $ff
	rst  $38                                         ; $76cb: $ff
	cp   $ef                                         ; $76cc: $fe $ef
	rst  $38                                         ; $76ce: $ff
	call z, $dced                                    ; $76cf: $cc $ed $dc
	xor  e                                           ; $76d2: $ab
	sbc  c                                           ; $76d3: $99
	add  l                                           ; $76d4: $85
	inc  sp                                          ; $76d5: $33
	ld   hl, $1111                                   ; $76d6: $21 $11 $11
	ld   de, $1111                                   ; $76d9: $11 $11 $11
	ld   de, $5d11                                   ; $76dc: $11 $11 $5d
	rst  $38                                         ; $76df: $ff
	rst  $38                                         ; $76e0: $ff
	rst  $38                                         ; $76e1: $ff
	rst  $38                                         ; $76e2: $ff
	rst  $38                                         ; $76e3: $ff
	rst  JumpTable                                         ; $76e4: $df
	rst  $38                                         ; $76e5: $ff
	cp   $ce                                         ; $76e6: $fe $ce
	call $cbda                                       ; $76e8: $cd $da $cb
	add  a                                           ; $76eb: $87
	ld   b, d                                        ; $76ec: $42
	ld   de, $1111                                   ; $76ed: $11 $11 $11
	ld   de, $1111                                   ; $76f0: $11 $11 $11
	ld   de, $1a11                                   ; $76f3: $11 $11 $1a
	rst  $38                                         ; $76f6: $ff
	rst  $38                                         ; $76f7: $ff
	rst  $38                                         ; $76f8: $ff
	rst  $38                                         ; $76f9: $ff
	rst  $38                                         ; $76fa: $ff
	call c, $ffcf                                    ; $76fb: $dc $cf $ff
	rst  $38                                         ; $76fe: $ff
	rst  $38                                         ; $76ff: $ff
	db   $ed                                         ; $7700: $ed
	reti                                             ; $7701: $d9


	adc  c                                           ; $7702: $89
	ld   b, c                                        ; $7703: $41
	ld   de, $1111                                   ; $7704: $11 $11 $11
	ld   de, $1111                                   ; $7707: $11 $11 $11
	ld   de, $1511                                   ; $770a: $11 $11 $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $770d: $cf
	rst  $38                                         ; $770e: $ff
	rst  $38                                         ; $770f: $ff
	rst  $38                                         ; $7710: $ff
	rst  $38                                         ; $7711: $ff
	rst  ToBoot                                         ; $7712: $c7
	rst  $38                                         ; $7713: $ff
	rst  $38                                         ; $7714: $ff
	db   $fd                                         ; $7715: $fd
	rst  $38                                         ; $7716: $ff
	rst  $38                                         ; $7717: $ff
	cp   b                                           ; $7718: $b8
	ld   [hl], l                                     ; $7719: $75
	add  h                                           ; $771a: $84
	ld   de, $1111                                   ; $771b: $11 $11 $11
	ld   de, $1111                                   ; $771e: $11 $11 $11
	ld   de, $1111                                   ; $7721: $11 $11 $11
	rst  JumpTable                                         ; $7724: $df
	rst  $38                                         ; $7725: $ff
	rst  $38                                         ; $7726: $ff
	rst  $38                                         ; $7727: $ff
	rst  $38                                         ; $7728: $ff
	cp   l                                           ; $7729: $bd
	cp   $ff                                         ; $772a: $fe $ff
	rst  $38                                         ; $772c: $ff
	rst  $38                                         ; $772d: $ff
	db   $fd                                         ; $772e: $fd
	jp   c, $2155                                    ; $772f: $da $55 $21

	ld   de, $1111                                   ; $7732: $11 $11 $11
	ld   de, $1111                                   ; $7735: $11 $11 $11
	ld   de, $2111                                   ; $7738: $11 $11 $21
	rst  JumpTable                                         ; $773b: $df
	rst  $38                                         ; $773c: $ff
	rst  $38                                         ; $773d: $ff
	ld   a, [$9cff]                                  ; $773e: $fa $ff $9c
	rst  $38                                         ; $7741: $ff
	rst  $38                                         ; $7742: $ff
	rst  $38                                         ; $7743: $ff
	cp   $fb                                         ; $7744: $fe $fb
	adc  e                                           ; $7746: $8b
	ld   d, h                                        ; $7747: $54
	ld   b, c                                        ; $7748: $41
	ld   de, $1111                                   ; $7749: $11 $11 $11
	ld   de, $1111                                   ; $774c: $11 $11 $11
	ld   de, $1311                                   ; $774f: $11 $11 $13
	rst  $38                                         ; $7752: $ff
	rst  $38                                         ; $7753: $ff
	cp   $ff                                         ; $7754: $fe $ff
	db   $fd                                         ; $7756: $fd
	dec  l                                           ; $7757: $2d
	db   $fd                                         ; $7758: $fd
	rst  $38                                         ; $7759: $ff
	rst  $38                                         ; $775a: $ff
	rst  $38                                         ; $775b: $ff
	ld   sp, hl                                      ; $775c: $f9
	xor  b                                           ; $775d: $a8
	dec  d                                           ; $775e: $15
	ld   b, c                                        ; $775f: $41
	ld   de, $1211                                   ; $7760: $11 $11 $12
	ld   de, $1111                                   ; $7763: $11 $11 $11
	ld   de, $af13                                   ; $7766: $11 $13 $af
	rst  $28                                         ; $7769: $ef
	rst  $38                                         ; $776a: $ff
	rst  $38                                         ; $776b: $ff
	rst  $38                                         ; $776c: $ff
	db   $fc                                         ; $776d: $fc
	rst  $38                                         ; $776e: $ff
	cp   a                                           ; $776f: $bf
	rst  $28                                         ; $7770: $ef
	rst  $38                                         ; $7771: $ff
	rst  $38                                         ; $7772: $ff
	ret  z                                           ; $7773: $c8

	halt                                             ; $7774: $76
	ld   d, d                                        ; $7775: $52
	ld   de, $1111                                   ; $7776: $11 $11 $11
	ld   de, $1111                                   ; $7779: $11 $11 $11
	ld   de, $1711                                   ; $777c: $11 $11 $17
	rst  $38                                         ; $777f: $ff
	rst  $38                                         ; $7780: $ff
	rst  $38                                         ; $7781: $ff
	rst  $38                                         ; $7782: $ff
	set  5, l                                        ; $7783: $cb $ed
	rst  $38                                         ; $7785: $ff
	rst  $38                                         ; $7786: $ff
	rst  $38                                         ; $7787: $ff
	rst  $38                                         ; $7788: $ff
	db   $fd                                         ; $7789: $fd
	add  c                                           ; $778a: $81
	ld   b, a                                        ; $778b: $47
	ld   [hl], a                                     ; $778c: $77
	ld   de, $4211                                   ; $778d: $11 $11 $42
	ld   de, $1611                                   ; $7790: $11 $11 $16
	ld   de, $8411                                   ; $7793: $11 $11 $84
	rst  $28                                         ; $7796: $ef
	rst  $38                                         ; $7797: $ff
	ei                                               ; $7798: $fb
	rst  JumpTable                                         ; $7799: $df
	db   $ec                                         ; $779a: $ec
	rst  ToBoot                                         ; $779b: $c7
	rst  $38                                         ; $779c: $ff
	rst  $38                                         ; $779d: $ff
	db   $fc                                         ; $779e: $fc
	rst  $38                                         ; $779f: $ff
	cp   $21                                         ; $77a0: $fe $21
	ld   b, c                                        ; $77a2: $41
	ld   e, c                                        ; $77a3: $59
	ld   de, $4411                                   ; $77a4: $11 $11 $44
	ld   de, $3111                                   ; $77a7: $11 $11 $31
	ld   de, $bf11                                   ; $77aa: $11 $11 $bf
	rst  $38                                         ; $77ad: $ff
	or   $ff                                         ; $77ae: $f6 $ff
	rst  $38                                         ; $77b0: $ff
	or   h                                           ; $77b1: $b4
	ld   l, c                                        ; $77b2: $69
	rst  $38                                         ; $77b3: $ff
	rst  $38                                         ; $77b4: $ff
	db   $ec                                         ; $77b5: $ec
	rst  $38                                         ; $77b6: $ff
	and  a                                           ; $77b7: $a7
	ld   de, $2177                                   ; $77b8: $11 $77 $21
	ld   de, $4111                                   ; $77bb: $11 $11 $41
	ld   de, $3111                                   ; $77be: $11 $11 $31
	ld   de, $ff5a                                   ; $77c1: $11 $5a $ff
	rst  $38                                         ; $77c4: $ff
	sbc  [hl]                                        ; $77c5: $9e
	rst  $38                                         ; $77c6: $ff
	db   $fd                                         ; $77c7: $fd
	db   $ed                                         ; $77c8: $ed
	rst  $38                                         ; $77c9: $ff
	rst  $38                                         ; $77ca: $ff
	rst  $38                                         ; $77cb: $ff
	rst  $38                                         ; $77cc: $ff
	ld   [$5811], a                                  ; $77cd: $ea $11 $58
	ld   h, d                                        ; $77d0: $62
	ld   de, $1111                                   ; $77d1: $11 $11 $11
	ld   de, $1111                                   ; $77d4: $11 $11 $11
	ld   de, $4f11                                   ; $77d7: $11 $11 $4f
	rst  $38                                         ; $77da: $ff
	db   $fd                                         ; $77db: $fd
	db   $eb                                         ; $77dc: $eb
	rst  $38                                         ; $77dd: $ff
	ld   e, l                                        ; $77de: $5d
	rst  JumpTable                                         ; $77df: $df
	rst  $38                                         ; $77e0: $ff
	cp   $df                                         ; $77e1: $fe $df
	db   $fc                                         ; $77e3: $fc
	or   [hl]                                        ; $77e4: $b6
	dec  d                                           ; $77e5: $15
	add  [hl]                                        ; $77e6: $86
	ld   sp, $1111                                   ; $77e7: $31 $11 $11
	ld   b, d                                        ; $77ea: $42
	ld   de, $4111                                   ; $77eb: $11 $11 $41
	ld   de, rAUD1ENV                                   ; $77ee: $11 $12 $ff
	rst  $38                                         ; $77f1: $ff
	xor  h                                           ; $77f2: $ac
	rst  $28                                         ; $77f3: $ef
	di                                               ; $77f4: $f3
	ld   a, d                                        ; $77f5: $7a
	rst  $38                                         ; $77f6: $ff
	rst  $38                                         ; $77f7: $ff
	cp   $cf                                         ; $77f8: $fe $cf
	or   $51                                         ; $77fa: $f6 $51
	ld   e, c                                        ; $77fc: $59
	ld   de, $1311                                   ; $77fd: $11 $11 $13
	ld   de, $1111                                   ; $7800: $11 $11 $11
	ld   de, $1711                                   ; $7803: $11 $11 $17
	ccf                                              ; $7806: $3f
	rst  $38                                         ; $7807: $ff
	ld   a, [$8fff]                                  ; $7808: $fa $ff $8f
	di                                               ; $780b: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $780c: $cf
	rst  $38                                         ; $780d: $ff
	rst  $38                                         ; $780e: $ff
	or   c                                           ; $780f: $b1
	rst  JumpTable                                         ; $7810: $df
	ld   sp, $9797                                   ; $7811: $31 $97 $97
	ld   de, $4511                                   ; $7814: $11 $11 $45
	ld   sp, $b111                                   ; $7817: $31 $11 $b1
	ld   de, $af11                                   ; $781a: $11 $11 $af
	rst  $38                                         ; $781d: $ff
	cp   a                                           ; $781e: $bf
	rst  $38                                         ; $781f: $ff
	rst  $38                                         ; $7820: $ff
	and  h                                           ; $7821: $a4
	xor  a                                           ; $7822: $af
	rst  $38                                         ; $7823: $ff
	db   $fd                                         ; $7824: $fd
	rst  $38                                         ; $7825: $ff
	rst  $38                                         ; $7826: $ff
	sub  c                                           ; $7827: $91
	ld   [de], a                                     ; $7828: $12
	ld   h, h                                        ; $7829: $64
	ld   de, $0111                                   ; $782a: $11 $11 $01
	ld   de, $1111                                   ; $782d: $11 $11 $11
	ld   de, $a614                                   ; $7830: $11 $14 $a6
	rst  $38                                         ; $7833: $ff
	cp   $ff                                         ; $7834: $fe $ff
	rst  $28                                         ; $7836: $ef
	and  l                                           ; $7837: $a5
	cp   b                                           ; $7838: $b8
	rst  $38                                         ; $7839: $ff
	rst  $38                                         ; $783a: $ff
	db   $ec                                         ; $783b: $ec
	cp   $45                                         ; $783c: $fe $45
	ld   de, $11bb                                   ; $783e: $11 $bb $11
	ld   de, $1141                                   ; $7841: $11 $41 $11
	dec  de                                          ; $7844: $1b
	ld   de, $1311                                   ; $7845: $11 $11 $13
	ccf                                              ; $7848: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7849: $cf
	rst  $38                                         ; $784a: $ff
	rst  $38                                         ; $784b: $ff
	db   $f4                                         ; $784c: $f4
	sub  e                                           ; $784d: $93
	sbc  a                                           ; $784e: $9f
	rst  $38                                         ; $784f: $ff
	rst  $38                                         ; $7850: $ff
	db   $fd                                         ; $7851: $fd
	db   $fc                                         ; $7852: $fc
	ld   hl, $9812                                   ; $7853: $21 $12 $98
	ld   de, $5111                                   ; $7856: $11 $11 $51
	ld   de, $1111                                   ; $7859: $11 $11 $11
	ld   de, $9f11                                   ; $785c: $11 $11 $9f
	rst  $38                                         ; $785f: $ff
	cp   $df                                         ; $7860: $fe $df
	call nc, $dfeb                                   ; $7862: $d4 $eb $df
	rst  $38                                         ; $7865: $ff
	rst  $38                                         ; $7866: $ff
	rst  $38                                         ; $7867: $ff
	and  d                                           ; $7868: $a2
	ld   [hl], $66                                   ; $7869: $36 $66
	ld   hl, $4111                                   ; $786b: $21 $11 $41
	ld   de, $1115                                   ; $786e: $11 $15 $11
	ld   de, $1611                                   ; $7871: $11 $11 $16
	rst  $38                                         ; $7874: $ff
	rst  $38                                         ; $7875: $ff
	rst  $38                                         ; $7876: $ff
	rst  $38                                         ; $7877: $ff
	ld   a, c                                        ; $7878: $79
	rra                                              ; $7879: $1f
	rst  $38                                         ; $787a: $ff
	ld   hl, sp-$01                                  ; $787b: $f8 $ff
	rst  $38                                         ; $787d: $ff
	ld   h, c                                        ; $787e: $61
	inc  d                                           ; $787f: $14
	ld   l, d                                        ; $7880: $6a
	ld   de, $2911                                   ; $7881: $11 $11 $29
	or   d                                           ; $7884: $b2
	ld   de, $1111                                   ; $7885: $11 $11 $11
	ld   de, $cf5f                                   ; $7888: $11 $5f $cf
	db   $fc                                         ; $788b: $fc
	rst  $38                                         ; $788c: $ff
	rst  JumpTable                                         ; $788d: $df
	sub  c                                           ; $788e: $91
	rst  $38                                         ; $788f: $ff
	rst  $38                                         ; $7890: $ff
	cp   $ff                                         ; $7891: $fe $ff
	cp   $11                                         ; $7893: $fe $11
	ld   b, a                                        ; $7895: $47
	pop  hl                                          ; $7896: $e1
	ld   de, $9211                                   ; $7897: $11 $11 $92
	ld   de, $11a1                                   ; $789a: $11 $a1 $11
	ld   de, $9f59                                   ; $789d: $11 $59 $9f
	rst  $38                                         ; $78a0: $ff
	rst  $38                                         ; $78a1: $ff
	call z, $1ff5                                    ; $78a2: $cc $f5 $1f
	rst  $38                                         ; $78a5: $ff
	rst  $38                                         ; $78a6: $ff
	db   $fc                                         ; $78a7: $fc
	rst  $38                                         ; $78a8: $ff
	pop  af                                          ; $78a9: $f1
	rla                                              ; $78aa: $17
	ld   h, [hl]                                     ; $78ab: $66
	ld   de, $3d11                                   ; $78ac: $11 $11 $3d
	add  e                                           ; $78af: $83
	ld   de, $1111                                   ; $78b0: $11 $11 $11
	ld   de, $ffff                                   ; $78b3: $11 $ff $ff
	rst  $38                                         ; $78b6: $ff
	di                                               ; $78b7: $f3

Jump_0b2_78b8:
	cp   $1f                                         ; $78b8: $fe $1f
	rst  $38                                         ; $78ba: $ff
	rst  $38                                         ; $78bb: $ff
	rst  $28                                         ; $78bc: $ef
	rst  $38                                         ; $78bd: $ff
	ld   [hl], c                                     ; $78be: $71
	ld   a, a                                        ; $78bf: $7f
	ld   de, $1111                                   ; $78c0: $11 $11 $11
	dec  h                                           ; $78c3: $25
	ld   de, $3121                                   ; $78c4: $11 $21 $31
	ld   de, $ef18                                   ; $78c7: $11 $18 $ef
	db   $fc                                         ; $78ca: $fc
	rst  JumpTable                                         ; $78cb: $df
	pop  af                                          ; $78cc: $f1
	cpl                                              ; $78cd: $2f
	rst  $28                                         ; $78ce: $ef
	rst  $38                                         ; $78cf: $ff
	rst  $38                                         ; $78d0: $ff
	rst  $38                                         ; $78d1: $ff
	rst  $38                                         ; $78d2: $ff
	and  c                                           ; $78d3: $a1
	ld   c, h                                        ; $78d4: $4c
	ld   [hl], c                                     ; $78d5: $71
	ld   de, $1216                                   ; $78d6: $11 $16 $12
	ld   de, $1111                                   ; $78d9: $11 $11 $11
	ld   de, $2f58                                   ; $78dc: $11 $58 $2f
	sbc  $ff                                         ; $78df: $de $ff
	ld   sp, hl                                      ; $78e1: $f9
	dec  sp                                          ; $78e2: $3b
	ld   e, a                                        ; $78e3: $5f
	rst  $38                                         ; $78e4: $ff
	rst  $38                                         ; $78e5: $ff
	rst  $38                                         ; $78e6: $ff
	db   $fd                                         ; $78e7: $fd
	ld   [hl-], a                                    ; $78e8: $32
	and  [hl]                                        ; $78e9: $a6
	xor  c                                           ; $78ea: $a9
	ld   de, $6711                                   ; $78eb: $11 $11 $67
	ld   hl, $1113                                   ; $78ee: $21 $13 $11
	ld   de, $6f11                                   ; $78f1: $11 $11 $6f
	rst  $38                                         ; $78f4: $ff
	rst  $38                                         ; $78f5: $ff
	rst  $38                                         ; $78f6: $ff
	inc  h                                           ; $78f7: $24
	ld   a, a                                        ; $78f8: $7f
	rst  $38                                         ; $78f9: $ff
	rst  $38                                         ; $78fa: $ff
	rst  $38                                         ; $78fb: $ff
	rst  $38                                         ; $78fc: $ff
	db   $f4                                         ; $78fd: $f4
	add  hl, hl                                      ; $78fe: $29
	ld   [hl], a                                     ; $78ff: $77
	ld   hl, $9715                                   ; $7900: $21 $15 $97
	ld   de, $1111                                   ; $7903: $11 $11 $11
	ld   de, $951f                                   ; $7906: $11 $1f $95
	rst  $38                                         ; $7909: $ff
	rst  $38                                         ; $790a: $ff
	or   $1f                                         ; $790b: $f6 $1f
	rst  $38                                         ; $790d: $ff
	rst  $38                                         ; $790e: $ff
	rst  $38                                         ; $790f: $ff
	rst  $38                                         ; $7910: $ff
	ld   a, [$7f41]                                  ; $7911: $fa $41 $7f
	pop  de                                          ; $7914: $d1
	ld   de, $1616                                   ; $7915: $11 $16 $16
	ld   de, $1111                                   ; $7918: $11 $11 $11
	ld   de, $8f17                                   ; $791b: $11 $17 $8f
	ld   sp, hl                                      ; $791e: $f9
	rst  $38                                         ; $791f: $ff
	rra                                              ; $7920: $1f
	rst  JumpTable                                         ; $7921: $df
	db   $fc                                         ; $7922: $fc
	rst  $38                                         ; $7923: $ff
	rst  $38                                         ; $7924: $ff
	rst  $38                                         ; $7925: $ff
	cp   $5c                                         ; $7926: $fe $5c
	ld   l, d                                        ; $7928: $6a
	sub  c                                           ; $7929: $91
	ld   de, $1114                                   ; $792a: $11 $14 $11
	ld   de, $1111                                   ; $792d: $11 $11 $11
	ld   de, $ce2f                                   ; $7930: $11 $2f $ce
	rst  $38                                         ; $7933: $ff
	pop  af                                          ; $7934: $f1
	adc  a                                           ; $7935: $8f
	xor  a                                           ; $7936: $af
	rst  $38                                         ; $7937: $ff
	rst  $38                                         ; $7938: $ff
	rst  $38                                         ; $7939: $ff
	call z, $dffd                                    ; $793a: $cc $fd $df
	and  c                                           ; $793d: $a1
	ld   de, $1194                                   ; $793e: $11 $94 $11
	dec  d                                           ; $7941: $15
	ld   de, $1111                                   ; $7942: $11 $11 $11
	ld   b, c                                        ; $7945: $41
	ld   c, a                                        ; $7946: $4f
	adc  a                                           ; $7947: $8f
	rst  $38                                         ; $7948: $ff
	add  c                                           ; $7949: $81
	or   $5f                                         ; $794a: $f6 $5f
	rst  $38                                         ; $794c: $ff
	rst  $38                                         ; $794d: $ff
	rst  $38                                         ; $794e: $ff
	db   $fd                                         ; $794f: $fd
	ld   c, d                                        ; $7950: $4a
	cp   e                                           ; $7951: $bb
	sub  l                                           ; $7952: $95
	ld   de, $1114                                   ; $7953: $11 $14 $11
	ld   de, $1111                                   ; $7956: $11 $11 $11
	ld   de, $b21f                                   ; $7959: $11 $1f $b2
	cp   a                                           ; $795c: $bf
	di                                               ; $795d: $f3
	jp   c, $ff1f                                    ; $795e: $da $1f $ff

	rst  $38                                         ; $7961: $ff
	rst  $38                                         ; $7962: $ff
	rst  $38                                         ; $7963: $ff
	and  [hl]                                        ; $7964: $a6
	rst  $38                                         ; $7965: $ff

Jump_0b2_7966:
	or   h                                           ; $7966: $b4
	ld   hl, $7118                                   ; $7967: $21 $18 $71
	ld   de, $1111                                   ; $796a: $11 $11 $11
	ld   de, $1f11                                   ; $796d: $11 $11 $1f
	ld   a, [de]                                     ; $7970: $1a
	rst  $38                                         ; $7971: $ff
	ld   hl, sp-$42                                  ; $7972: $f8 $be
	rst  $28                                         ; $7974: $ef
	rst  $38                                         ; $7975: $ff
	rst  $38                                         ; $7976: $ff
	rst  $38                                         ; $7977: $ff
	db   $fc                                         ; $7978: $fc
	db   $fd                                         ; $7979: $fd
	xor  a                                           ; $797a: $af
	ld   [hl], c                                     ; $797b: $71
	ld   [hl], e                                     ; $797c: $73
	ld   de, $1111                                   ; $797d: $11 $11 $11
	ld   de, $1111                                   ; $7980: $11 $11 $11
	ld   de, $f31d                                   ; $7983: $11 $1d $f3
	rst  $38                                         ; $7986: $ff
	ld   d, h                                        ; $7987: $54
	pop  af                                          ; $7988: $f1
	rst  $38                                         ; $7989: $ff
	rst  $38                                         ; $798a: $ff
	rst  $38                                         ; $798b: $ff
	rst  $38                                         ; $798c: $ff
	rst  $38                                         ; $798d: $ff
	xor  d                                           ; $798e: $aa
	cp   e                                           ; $798f: $bb
	ld   [hl], h                                     ; $7990: $74
	ld   hl, $1113                                   ; $7991: $21 $13 $11
	ld   de, $1111                                   ; $7994: $11 $11 $11
	ld   de, $f911                                   ; $7997: $11 $11 $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $799a: $cf
	ld   sp, hl                                      ; $799b: $f9
	rst  $38                                         ; $799c: $ff
	dec  de                                          ; $799d: $1b
	rst  $38                                         ; $799e: $ff
	rst  $38                                         ; $799f: $ff
	rst  $38                                         ; $79a0: $ff
	rst  $38                                         ; $79a1: $ff
	rst  $20                                         ; $79a2: $e7
	push af                                          ; $79a3: $f5
	xor  [hl]                                        ; $79a4: $ae
	ld   de, $4312                                   ; $79a5: $11 $12 $43
	ld   de, $1111                                   ; $79a8: $11 $11 $11
	ld   de, $1111                                   ; $79ab: $11 $11 $11
	rst  JumpTable                                         ; $79ae: $df
	rst  $38                                         ; $79af: $ff
	rst  $30                                         ; $79b0: $f7
	cp   e                                           ; $79b1: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79b2: $cf
	rst  $38                                         ; $79b3: $ff
	rst  $38                                         ; $79b4: $ff
	rst  $38                                         ; $79b5: $ff
	rst  $38                                         ; $79b6: $ff
	halt                                             ; $79b7: $76
	sbc  a                                           ; $79b8: $9f
	pop  af                                          ; $79b9: $f1
	ld   de, $1125                                   ; $79ba: $11 $25 $11
	ld   de, $1111                                   ; $79bd: $11 $11 $11
	ld   de, $1115                                   ; $79c0: $11 $15 $11
	rst  $38                                         ; $79c3: $ff
	rst  $38                                         ; $79c4: $ff
	db   $fd                                         ; $79c5: $fd
	adc  a                                           ; $79c6: $8f
	cp   $ff                                         ; $79c7: $fe $ff
	rst  $38                                         ; $79c9: $ff
	rst  $38                                         ; $79ca: $ff
	rst  $38                                         ; $79cb: $ff
	jp   z, Jump_0b2_64fd                            ; $79cc: $ca $fd $64

	ld   de, $1111                                   ; $79cf: $11 $11 $11
	ld   de, $1111                                   ; $79d2: $11 $11 $11
	ld   de, $1b11                                   ; $79d5: $11 $11 $1b
	ld   c, c                                        ; $79d8: $49
	rst  $38                                         ; $79d9: $ff
	rst  $38                                         ; $79da: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79db: $cf
	rst  $38                                         ; $79dc: $ff
	rst  $38                                         ; $79dd: $ff
	rst  $38                                         ; $79de: $ff
	rst  $38                                         ; $79df: $ff
	rst  $38                                         ; $79e0: $ff
	ei                                               ; $79e1: $fb
	and  a                                           ; $79e2: $a7
	sub  l                                           ; $79e3: $95
	ld   de, $1111                                   ; $79e4: $11 $11 $11
	ld   de, $1111                                   ; $79e7: $11 $11 $11
	ld   de, $8911                                   ; $79ea: $11 $11 $89
	jp   z, $ffff                                    ; $79ed: $ca $ff $ff

	reti                                             ; $79f0: $d9


	rst  $38                                         ; $79f1: $ff
	rst  $38                                         ; $79f2: $ff
	rst  $38                                         ; $79f3: $ff
	rst  $38                                         ; $79f4: $ff
	rst  $38                                         ; $79f5: $ff
	ld   hl, sp-$76                                  ; $79f6: $f8 $8a
	and  l                                           ; $79f8: $a5
	ld   de, $1111                                   ; $79f9: $11 $11 $11
	ld   de, $1111                                   ; $79fc: $11 $11 $11
	ld   de, $2911                                   ; $79ff: $11 $11 $29
	ld   a, [$ffef]                                  ; $7a02: $fa $ef $ff
	db   $fd                                         ; $7a05: $fd
	rst  $38                                         ; $7a06: $ff
	rst  $38                                         ; $7a07: $ff
	rst  $38                                         ; $7a08: $ff
	rst  $38                                         ; $7a09: $ff
	rst  $38                                         ; $7a0a: $ff
	ei                                               ; $7a0b: $fb
	ld   a, e                                        ; $7a0c: $7b
	cp   c                                           ; $7a0d: $b9
	ld   d, c                                        ; $7a0e: $51
	ld   de, $1111                                   ; $7a0f: $11 $11 $11
	ld   de, $1111                                   ; $7a12: $11 $11 $11
	ld   de, $ae18                                   ; $7a15: $11 $18 $ae
	cp   l                                           ; $7a18: $bd
	rst  $38                                         ; $7a19: $ff
	rst  $38                                         ; $7a1a: $ff
	rst  JumpTable                                         ; $7a1b: $df
	rst  $38                                         ; $7a1c: $ff
	rst  $38                                         ; $7a1d: $ff
	rst  $38                                         ; $7a1e: $ff
	rst  $38                                         ; $7a1f: $ff
	rst  $38                                         ; $7a20: $ff
	cp   c                                           ; $7a21: $b9
	sbc  h                                           ; $7a22: $9c
	and  h                                           ; $7a23: $a4
	ld   hl, $2212                                   ; $7a24: $21 $12 $22
	ld   de, $1111                                   ; $7a27: $11 $11 $11
	ld   de, $4411                                   ; $7a2a: $11 $11 $44
	ld   a, b                                        ; $7a2d: $78
	ld   a, e                                        ; $7a2e: $7b
	sbc  $fd                                         ; $7a2f: $de $fd
	rst  JumpTable                                         ; $7a31: $df
	rst  $38                                         ; $7a32: $ff
	rst  $38                                         ; $7a33: $ff
	rst  $38                                         ; $7a34: $ff
	rst  $38                                         ; $7a35: $ff
	rst  $38                                         ; $7a36: $ff
	db   $eb                                         ; $7a37: $eb
	adc  $ba                                         ; $7a38: $ce $ba
	ld   d, l                                        ; $7a3a: $55
	ld   d, h                                        ; $7a3b: $54
	ld   d, h                                        ; $7a3c: $54
	ld   de, $1111                                   ; $7a3d: $11 $11 $11
	ld   de, $1111                                   ; $7a40: $11 $11 $11
	ld   [hl-], a                                    ; $7a43: $32
	dec  [hl]                                        ; $7a44: $35
	ld   l, b                                        ; $7a45: $68
	xor  d                                           ; $7a46: $aa
	call z, $ffdf                                    ; $7a47: $cc $df $ff
	rst  $38                                         ; $7a4a: $ff
	rst  $38                                         ; $7a4b: $ff
	rst  $38                                         ; $7a4c: $ff
	rst  $38                                         ; $7a4d: $ff
	cp   $ed                                         ; $7a4e: $fe $ed
	jp   z, Jump_0b2_7587                            ; $7a50: $ca $87 $75

	ld   [hl-], a                                    ; $7a53: $32
	ld   de, $1111                                   ; $7a54: $11 $11 $11
	ld   de, $1111                                   ; $7a57: $11 $11 $11
	ld   [de], a                                     ; $7a5a: $12
	inc  [hl]                                        ; $7a5b: $34
	dec  [hl]                                        ; $7a5c: $35
	ld   [hl], a                                     ; $7a5d: $77
	sbc  c                                           ; $7a5e: $99
	cp   l                                           ; $7a5f: $bd
	rst  $28                                         ; $7a60: $ef
	rst  $38                                         ; $7a61: $ff
	rst  $38                                         ; $7a62: $ff
	rst  $38                                         ; $7a63: $ff
	rst  $38                                         ; $7a64: $ff

Jump_0b2_7a65:
	rst  $38                                         ; $7a65: $ff
	cp   $ec                                         ; $7a66: $fe $ec
	xor  c                                           ; $7a68: $a9
	ld   [hl], a                                     ; $7a69: $77
	ld   h, h                                        ; $7a6a: $64
	ld   [hl-], a                                    ; $7a6b: $32
	ld   [hl+], a                                    ; $7a6c: $22
	ld   de, $1111                                   ; $7a6d: $11 $11 $11
	ld   de, $1111                                   ; $7a70: $11 $11 $11
	ld   [hl+], a                                    ; $7a73: $22
	inc  [hl]                                        ; $7a74: $34
	ld   e, b                                        ; $7a75: $58
	sbc  d                                           ; $7a76: $9a
	cp   h                                           ; $7a77: $bc
	sbc  $ff                                         ; $7a78: $de $ff
	rst  $38                                         ; $7a7a: $ff
	rst  $38                                         ; $7a7b: $ff
	rst  $38                                         ; $7a7c: $ff
	rst  $38                                         ; $7a7d: $ff
	cp   $ec                                         ; $7a7e: $fe $ec
	cp   c                                           ; $7a80: $b9
	add  [hl]                                        ; $7a81: $86
	ld   h, h                                        ; $7a82: $64
	ld   [hl-], a                                    ; $7a83: $32
	ld   de, $1111                                   ; $7a84: $11 $11 $11
	ld   de, $1111                                   ; $7a87: $11 $11 $11
	ld   de, $2322                                   ; $7a8a: $11 $22 $23
	ld   d, a                                        ; $7a8d: $57
	adc  d                                           ; $7a8e: $8a
	cp   h                                           ; $7a8f: $bc
	rst  $38                                         ; $7a90: $ff
	rst  $38                                         ; $7a91: $ff
	rst  $38                                         ; $7a92: $ff
	rst  $38                                         ; $7a93: $ff
	rst  $38                                         ; $7a94: $ff
	rst  $38                                         ; $7a95: $ff
	rst  $38                                         ; $7a96: $ff
	db   $ed                                         ; $7a97: $ed
	xor  c                                           ; $7a98: $a9
	add  a                                           ; $7a99: $87
	ld   d, h                                        ; $7a9a: $54
	ld   [hl-], a                                    ; $7a9b: $32
	ld   hl, $1111                                   ; $7a9c: $21 $11 $11
	ld   de, $1111                                   ; $7a9f: $11 $11 $11
	ld   de, $2323                                   ; $7aa2: $11 $23 $23
	ld   d, a                                        ; $7aa5: $57
	sbc  d                                           ; $7aa6: $9a
	cp   h                                           ; $7aa7: $bc
	rst  $28                                         ; $7aa8: $ef
	rst  $38                                         ; $7aa9: $ff
	rst  $38                                         ; $7aaa: $ff
	rst  $38                                         ; $7aab: $ff
	rst  $38                                         ; $7aac: $ff
	rst  $38                                         ; $7aad: $ff
	rst  $38                                         ; $7aae: $ff
	db   $ed                                         ; $7aaf: $ed
	cp   e                                           ; $7ab0: $bb
	sub  a                                           ; $7ab1: $97
	ld   h, l                                        ; $7ab2: $65
	ld   b, e                                        ; $7ab3: $43
	ld   hl, $1111                                   ; $7ab4: $21 $11 $11
	ld   de, $1111                                   ; $7ab7: $11 $11 $11
	ld   de, $2311                                   ; $7aba: $11 $11 $23
	ld   b, l                                        ; $7abd: $45
	ld   l, b                                        ; $7abe: $68
	cp   l                                           ; $7abf: $bd
	xor  $ff                                         ; $7ac0: $ee $ff
	rst  $38                                         ; $7ac2: $ff
	rst  $38                                         ; $7ac3: $ff
	rst  $38                                         ; $7ac4: $ff
	rst  $38                                         ; $7ac5: $ff
	rst  $38                                         ; $7ac6: $ff
	cp   $da                                         ; $7ac7: $fe $da
	sbc  b                                           ; $7ac9: $98
	ld   h, [hl]                                     ; $7aca: $66
	ld   b, d                                        ; $7acb: $42
	ld   hl, $1111                                   ; $7acc: $21 $11 $11
	ld   de, $1111                                   ; $7acf: $11 $11 $11
	ld   de, $2311                                   ; $7ad2: $11 $11 $23
	inc  [hl]                                        ; $7ad5: $34
	ld   l, b                                        ; $7ad6: $68
	xor  e                                           ; $7ad7: $ab
	call $ffff                                       ; $7ad8: $cd $ff $ff
	rst  $38                                         ; $7adb: $ff
	rst  $38                                         ; $7adc: $ff
	rst  $38                                         ; $7add: $ff
	rst  $38                                         ; $7ade: $ff
	rst  $38                                         ; $7adf: $ff
	db   $ec                                         ; $7ae0: $ec
	xor  d                                           ; $7ae1: $aa
	add  a                                           ; $7ae2: $87
	ld   d, h                                        ; $7ae3: $54
	ld   [hl-], a                                    ; $7ae4: $32
	ld   hl, $1111                                   ; $7ae5: $21 $11 $11
	ld   de, $1111                                   ; $7ae8: $11 $11 $11
	ld   de, $1311                                   ; $7aeb: $11 $11 $13
	ld   d, [hl]                                     ; $7aee: $56
	sbc  d                                           ; $7aef: $9a
	xor  h                                           ; $7af0: $ac
	rst  $28                                         ; $7af1: $ef
	rst  $38                                         ; $7af2: $ff
	rst  $38                                         ; $7af3: $ff
	rst  $38                                         ; $7af4: $ff
	rst  $38                                         ; $7af5: $ff
	rst  $38                                         ; $7af6: $ff
	rst  $38                                         ; $7af7: $ff
	cp   $db                                         ; $7af8: $fe $db
	and  a                                           ; $7afa: $a7
	halt                                             ; $7afb: $76
	ld   b, e                                        ; $7afc: $43
	ld   hl, $1111                                   ; $7afd: $21 $11 $11
	ld   de, $1111                                   ; $7b00: $11 $11 $11
	ld   de, $2211                                   ; $7b03: $11 $11 $22
	inc  h                                           ; $7b06: $24
	ld   d, a                                        ; $7b07: $57
	xor  e                                           ; $7b08: $ab
	call $ffef                                       ; $7b09: $cd $ef $ff
	rst  $38                                         ; $7b0c: $ff
	rst  $38                                         ; $7b0d: $ff
	rst  $38                                         ; $7b0e: $ff
	rst  $38                                         ; $7b0f: $ff
	rst  $38                                         ; $7b10: $ff
	xor  $ba                                         ; $7b11: $ee $ba
	sub  a                                           ; $7b13: $97
	ld   h, l                                        ; $7b14: $65
	ld   [hl-], a                                    ; $7b15: $32
	ld   hl, $1111                                   ; $7b16: $21 $11 $11
	ld   de, $1111                                   ; $7b19: $11 $11 $11
	ld   de, $1301                                   ; $7b1c: $11 $01 $13
	ld   b, l                                        ; $7b1f: $45
	ld   a, b                                        ; $7b20: $78
	xor  e                                           ; $7b21: $ab
	rst  JumpTable                                         ; $7b22: $df
	rst  $38                                         ; $7b23: $ff
	rst  $38                                         ; $7b24: $ff
	rst  $38                                         ; $7b25: $ff
	rst  $38                                         ; $7b26: $ff
	rst  $38                                         ; $7b27: $ff
	rst  $38                                         ; $7b28: $ff
	rst  $38                                         ; $7b29: $ff
	db   $dd                                         ; $7b2a: $dd
	cp   d                                           ; $7b2b: $ba
	add  [hl]                                        ; $7b2c: $86
	ld   d, h                                        ; $7b2d: $54
	ld   [hl-], a                                    ; $7b2e: $32
	ld   de, $1111                                   ; $7b2f: $11 $11 $11
	ld   de, $1111                                   ; $7b32: $11 $11 $11
	ld   de, $3311                                   ; $7b35: $11 $11 $33
	ld   b, [hl]                                     ; $7b38: $46
	adc  c                                           ; $7b39: $89
	cp   l                                           ; $7b3a: $bd
	rst  JumpTable                                         ; $7b3b: $df
	rst  $38                                         ; $7b3c: $ff
	rst  $38                                         ; $7b3d: $ff
	rst  $38                                         ; $7b3e: $ff
	rst  $38                                         ; $7b3f: $ff
	rst  $38                                         ; $7b40: $ff
	rst  $38                                         ; $7b41: $ff
	cp   $ec                                         ; $7b42: $fe $ec
	cp   b                                           ; $7b44: $b8
	ld   [hl], l                                     ; $7b45: $75
	ld   b, e                                        ; $7b46: $43
	ld   hl, $1111                                   ; $7b47: $21 $11 $11
	ld   de, $1111                                   ; $7b4a: $11 $11 $11
	ld   de, $2311                                   ; $7b4d: $11 $11 $23
	ld   b, l                                        ; $7b50: $45
	ld   a, b                                        ; $7b51: $78
	xor  h                                           ; $7b52: $ac
	rst  $38                                         ; $7b53: $ff
	rst  $38                                         ; $7b54: $ff
	rst  $38                                         ; $7b55: $ff
	rst  $38                                         ; $7b56: $ff
	rst  $38                                         ; $7b57: $ff
	rst  $38                                         ; $7b58: $ff
	rst  $38                                         ; $7b59: $ff
	rst  $38                                         ; $7b5a: $ff
	db   $ed                                         ; $7b5b: $ed
	cp   c                                           ; $7b5c: $b9
	halt                                             ; $7b5d: $76
	ld   d, e                                        ; $7b5e: $53
	ld   [hl+], a                                    ; $7b5f: $22
	ld   de, $1111                                   ; $7b60: $11 $11 $11
	ld   de, $1111                                   ; $7b63: $11 $11 $11
	ld   de, $9a17                                   ; $7b66: $11 $17 $9a
	cp   d                                           ; $7b69: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b6a: $cf
	rst  $38                                         ; $7b6b: $ff
	rst  $38                                         ; $7b6c: $ff
	rst  $38                                         ; $7b6d: $ff
	rst  $38                                         ; $7b6e: $ff
	rst  $38                                         ; $7b6f: $ff
	rst  $38                                         ; $7b70: $ff
	rst  $38                                         ; $7b71: $ff
	cp   $cc                                         ; $7b72: $fe $cc
	and  a                                           ; $7b74: $a7
	ld   h, e                                        ; $7b75: $63
	inc  hl                                          ; $7b76: $23
	ld   de, $1111                                   ; $7b77: $11 $11 $11
	ld   de, $1111                                   ; $7b7a: $11 $11 $11
	ld   de, $6e12                                   ; $7b7d: $11 $12 $6e
	db   $fc                                         ; $7b80: $fc
	cp   $ef                                         ; $7b81: $fe $ef
	rst  $38                                         ; $7b83: $ff
	rst  $38                                         ; $7b84: $ff
	rst  $38                                         ; $7b85: $ff
	rst  $38                                         ; $7b86: $ff
	rst  $38                                         ; $7b87: $ff
	rst  $38                                         ; $7b88: $ff
	rst  $38                                         ; $7b89: $ff
	ei                                               ; $7b8a: $fb
	ld   h, h                                        ; $7b8b: $64
	ld   sp, $1111                                   ; $7b8c: $31 $11 $11
	ld   de, $1111                                   ; $7b8f: $11 $11 $11
	ld   de, $1111                                   ; $7b92: $11 $11 $11
	ld   de, $ff8f                                   ; $7b95: $11 $8f $ff
	rst  $38                                         ; $7b98: $ff
	rst  $38                                         ; $7b99: $ff
	rst  $38                                         ; $7b9a: $ff
	cp   $ff                                         ; $7b9b: $fe $ff
	rst  $38                                         ; $7b9d: $ff
	rst  $38                                         ; $7b9e: $ff
	rst  $38                                         ; $7b9f: $ff
	rst  $38                                         ; $7ba0: $ff
	ld   [$3142], a                                  ; $7ba1: $ea $42 $31
	ld   de, $1111                                   ; $7ba4: $11 $11 $11
	ld   de, $1111                                   ; $7ba7: $11 $11 $11
	ld   de, $1811                                   ; $7baa: $11 $11 $18
	rst  $28                                         ; $7bad: $ef
	cp   $ff                                         ; $7bae: $fe $ff
	rst  $38                                         ; $7bb0: $ff
	rst  $38                                         ; $7bb1: $ff
	rst  $38                                         ; $7bb2: $ff
	rst  $38                                         ; $7bb3: $ff
	rst  $38                                         ; $7bb4: $ff
	rst  $38                                         ; $7bb5: $ff
	rst  $38                                         ; $7bb6: $ff
	rst  $38                                         ; $7bb7: $ff
	and  l                                           ; $7bb8: $a5
	ld   b, c                                        ; $7bb9: $41
	ld   de, $1111                                   ; $7bba: $11 $11 $11
	ld   hl, $1111                                   ; $7bbd: $21 $11 $11
	ld   de, $1111                                   ; $7bc0: $11 $11 $11
	jr   @+$01                                       ; $7bc3: $18 $ff

	rst  $38                                         ; $7bc5: $ff
	rst  $38                                         ; $7bc6: $ff
	rst  $38                                         ; $7bc7: $ff
	cp   $ff                                         ; $7bc8: $fe $ff
	rst  $38                                         ; $7bca: $ff
	rst  $38                                         ; $7bcb: $ff
	rst  $38                                         ; $7bcc: $ff
	rst  $38                                         ; $7bcd: $ff
	ret                                              ; $7bce: $c9


	add  h                                           ; $7bcf: $84
	add  a                                           ; $7bd0: $87
	ld   de, $1311                                   ; $7bd1: $11 $11 $13
	ld   b, c                                        ; $7bd4: $41
	ld   de, $1111                                   ; $7bd5: $11 $11 $11
	ld   de, $cf12                                   ; $7bd8: $11 $12 $cf
	db   $fd                                         ; $7bdb: $fd
	rst  $38                                         ; $7bdc: $ff
	rst  $38                                         ; $7bdd: $ff
	rst  $38                                         ; $7bde: $ff
	cp   $ff                                         ; $7bdf: $fe $ff
	rst  $38                                         ; $7be1: $ff
	rst  $38                                         ; $7be2: $ff
	rst  $38                                         ; $7be3: $ff
	rst  $38                                         ; $7be4: $ff
	ret  c                                           ; $7be5: $d8

	dec  [hl]                                        ; $7be6: $35
	ld   d, c                                        ; $7be7: $51
	ld   de, $1211                                   ; $7be8: $11 $11 $12
	ld   bc, $1111                                   ; $7beb: $01 $11 $11
	ld   de, $1111                                   ; $7bee: $11 $11 $11
	sbc  a                                           ; $7bf1: $9f
	rst  $38                                         ; $7bf2: $ff
	rst  $38                                         ; $7bf3: $ff
	rst  $38                                         ; $7bf4: $ff
	rst  $38                                         ; $7bf5: $ff
	sbc  [hl]                                        ; $7bf6: $9e
	rst  $38                                         ; $7bf7: $ff
	rst  $38                                         ; $7bf8: $ff
	rst  $38                                         ; $7bf9: $ff
	rst  $38                                         ; $7bfa: $ff
	rst  $38                                         ; $7bfb: $ff
	call nz, $2233                                   ; $7bfc: $c4 $33 $22
	ld   hl, $1111                                   ; $7bff: $21 $11 $11
	ld   [hl+], a                                    ; $7c02: $22
	ld   de, $1111                                   ; $7c03: $11 $11 $11
	ld   de, $ff1a                                   ; $7c06: $11 $1a $ff
	rst  $38                                         ; $7c09: $ff
	rst  JumpTable                                         ; $7c0a: $df
	rst  $38                                         ; $7c0b: $ff
	db   $fd                                         ; $7c0c: $fd
	cp   l                                           ; $7c0d: $bd
	rst  $38                                         ; $7c0e: $ff
	rst  $38                                         ; $7c0f: $ff
	rst  $38                                         ; $7c10: $ff
	rst  $38                                         ; $7c11: $ff
	ld   a, [$4576]                                  ; $7c12: $fa $76 $45
	ld   b, c                                        ; $7c15: $41
	ld   de, $2411                                   ; $7c16: $11 $11 $24
	ld   de, $1111                                   ; $7c19: $11 $11 $11
	ld   de, $3511                                   ; $7c1c: $11 $11 $35
	rst  $38                                         ; $7c1f: $ff
	rst  JumpTable                                         ; $7c20: $df
	rst  $38                                         ; $7c21: $ff
	rst  $38                                         ; $7c22: $ff
	rst  $30                                         ; $7c23: $f7
	cp   a                                           ; $7c24: $bf
	rst  $38                                         ; $7c25: $ff
	rst  $38                                         ; $7c26: $ff
	rst  $38                                         ; $7c27: $ff
	rst  $38                                         ; $7c28: $ff
	ld   sp, hl                                      ; $7c29: $f9
	ld   h, e                                        ; $7c2a: $63
	scf                                              ; $7c2b: $37
	ld   de, $1311                                   ; $7c2c: $11 $11 $13
	ld   [hl+], a                                    ; $7c2f: $22
	ld   de, $1211                                   ; $7c30: $11 $11 $12
	ld   de, $6f13                                   ; $7c33: $11 $13 $6f
	call c, $ffbf                                    ; $7c36: $dc $bf $ff
	rst  $38                                         ; $7c39: $ff
	adc  $ff                                         ; $7c3a: $ce $ff
	rst  $38                                         ; $7c3c: $ff
	rst  $38                                         ; $7c3d: $ff
	rst  $38                                         ; $7c3e: $ff
	rst  $38                                         ; $7c3f: $ff
	add  d                                           ; $7c40: $82
	ld   h, e                                        ; $7c41: $63
	sub  a                                           ; $7c42: $97
	ld   de, $5211                                   ; $7c43: $11 $11 $52
	ld   bc, $1111                                   ; $7c46: $01 $11 $11
	ld   de, $1c11                                   ; $7c49: $11 $11 $1c
	cp   $c7                                         ; $7c4c: $fe $c7
	rst  $38                                         ; $7c4e: $ff
	rst  $38                                         ; $7c4f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c50: $cf
	db   $dd                                         ; $7c51: $dd
	rst  $38                                         ; $7c52: $ff
	rst  $38                                         ; $7c53: $ff
	rst  $38                                         ; $7c54: $ff
	rst  $38                                         ; $7c55: $ff
	or   $55                                         ; $7c56: $f6 $55
	sbc  h                                           ; $7c58: $9c
	sub  c                                           ; $7c59: $91
	ld   de, $5112                                   ; $7c5a: $11 $12 $51
	ld   de, $1111                                   ; $7c5d: $11 $11 $11
	ld   de, $2611                                   ; $7c60: $11 $11 $26
	xor  l                                           ; $7c63: $ad
	rst  $38                                         ; $7c64: $ff
	db   $fd                                         ; $7c65: $fd
	rst  $38                                         ; $7c66: $ff
	rst  $38                                         ; $7c67: $ff
	rst  $28                                         ; $7c68: $ef
	rst  $38                                         ; $7c69: $ff
	rst  $38                                         ; $7c6a: $ff
	rst  $38                                         ; $7c6b: $ff
	rst  $38                                         ; $7c6c: $ff
	or   $64                                         ; $7c6d: $f6 $64
	sbc  d                                           ; $7c6f: $9a
	ld   de, $1511                                   ; $7c70: $11 $11 $15
	ld   de, $1111                                   ; $7c73: $11 $11 $11
	ld   de, $1111                                   ; $7c76: $11 $11 $11
	ld   a, a                                        ; $7c79: $7f
	db   $fc                                         ; $7c7a: $fc
	ld   e, a                                        ; $7c7b: $5f
	rst  $38                                         ; $7c7c: $ff
	db   $fd                                         ; $7c7d: $fd
	cpl                                              ; $7c7e: $2f
	rst  $38                                         ; $7c7f: $ff
	rst  $38                                         ; $7c80: $ff
	rst  $38                                         ; $7c81: $ff
	rst  $38                                         ; $7c82: $ff
	ei                                               ; $7c83: $fb
	ld   h, d                                        ; $7c84: $62
	adc  l                                           ; $7c85: $8d
	ld   [hl], d                                     ; $7c86: $72
	ld   de, $3211                                   ; $7c87: $11 $11 $32
	ld   de, $1112                                   ; $7c8a: $11 $12 $11
	ld   de, $4511                                   ; $7c8d: $11 $11 $45
	db   $dd                                         ; $7c90: $dd
	ld   a, a                                        ; $7c91: $7f
	rst  $38                                         ; $7c92: $ff
	rst  $38                                         ; $7c93: $ff
	sbc  $ff                                         ; $7c94: $de $ff
	rst  $38                                         ; $7c96: $ff
	rst  $38                                         ; $7c97: $ff
	rst  $38                                         ; $7c98: $ff
	rst  $38                                         ; $7c99: $ff
	and  a                                           ; $7c9a: $a7
	or   l                                           ; $7c9b: $b5
	halt                                             ; $7c9c: $76
	ld   de, $1111                                   ; $7c9d: $11 $11 $11
	ld   de, $1111                                   ; $7ca0: $11 $11 $11
	ld   bc, $1811                                   ; $7ca3: $01 $11 $18
	or   [hl]                                        ; $7ca6: $b6
	rst  JumpTable                                         ; $7ca7: $df
	rst  $38                                         ; $7ca8: $ff
	rst  $38                                         ; $7ca9: $ff
	db   $fd                                         ; $7caa: $fd
	rst  $38                                         ; $7cab: $ff
	rst  $38                                         ; $7cac: $ff
	rst  $38                                         ; $7cad: $ff
	rst  $38                                         ; $7cae: $ff
	rst  $38                                         ; $7caf: $ff
	reti                                             ; $7cb0: $d9


	ld   [hl], a                                     ; $7cb1: $77
	xor  b                                           ; $7cb2: $a8
	ld   de, $1111                                   ; $7cb3: $11 $11 $11
	ld   de, $1111                                   ; $7cb6: $11 $11 $11
	ld   hl, $4211                                   ; $7cb9: $21 $11 $42
	add  c                                           ; $7cbc: $81
	adc  a                                           ; $7cbd: $8f
	rst  $38                                         ; $7cbe: $ff
	rst  $38                                         ; $7cbf: $ff
	cp   $ff                                         ; $7cc0: $fe $ff
	rst  $38                                         ; $7cc2: $ff
	rst  $38                                         ; $7cc3: $ff
	rst  $38                                         ; $7cc4: $ff
	rst  $38                                         ; $7cc5: $ff
	rst  $38                                         ; $7cc6: $ff
	call nz, $31c7                                   ; $7cc7: $c4 $c7 $31
	ld   de, $2111                                   ; $7cca: $11 $11 $21
	ld   de, $1113                                   ; $7ccd: $11 $13 $11
	ld   de, $9116                                   ; $7cd0: $11 $16 $91
	cp   a                                           ; $7cd3: $bf
	rst  $38                                         ; $7cd4: $ff
	rst  $38                                         ; $7cd5: $ff
	rst  $38                                         ; $7cd6: $ff
	rst  $38                                         ; $7cd7: $ff
	rst  $38                                         ; $7cd8: $ff
	rst  $38                                         ; $7cd9: $ff
	rst  $38                                         ; $7cda: $ff
	rst  $38                                         ; $7cdb: $ff
	rst  $38                                         ; $7cdc: $ff
	ld   c, h                                        ; $7cdd: $4c
	and  $51                                         ; $7cde: $e6 $51
	ld   de, $1111                                   ; $7ce0: $11 $11 $11
	ld   de, $1111                                   ; $7ce3: $11 $11 $11
	ld   de, $4413                                   ; $7ce6: $11 $13 $44
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ce9: $cf
	rst  $38                                         ; $7cea: $ff
	rst  $38                                         ; $7ceb: $ff
	rst  $38                                         ; $7cec: $ff
	rst  $38                                         ; $7ced: $ff
	rst  $38                                         ; $7cee: $ff
	rst  $38                                         ; $7cef: $ff
	rst  $38                                         ; $7cf0: $ff
	rst  $38                                         ; $7cf1: $ff
	db   $fc                                         ; $7cf2: $fc
	xor  b                                           ; $7cf3: $a8
	adc  b                                           ; $7cf4: $88
	ld   de, $1111                                   ; $7cf5: $11 $11 $11
	ld   de, $1111                                   ; $7cf8: $11 $11 $11
	ld   de, $1111                                   ; $7cfb: $11 $11 $11
	ld   b, a                                        ; $7cfe: $47
	ld   l, a                                        ; $7cff: $6f
	rst  $38                                         ; $7d00: $ff
	rst  $38                                         ; $7d01: $ff
	rst  $38                                         ; $7d02: $ff
	rst  $38                                         ; $7d03: $ff
	rst  $38                                         ; $7d04: $ff
	rst  $38                                         ; $7d05: $ff
	rst  $38                                         ; $7d06: $ff
	rst  $38                                         ; $7d07: $ff
	ld   sp, hl                                      ; $7d08: $f9
	jp   z, $1199                                    ; $7d09: $ca $99 $11

	ld   de, $1111                                   ; $7d0c: $11 $11 $11
	ld   de, $1111                                   ; $7d0f: $11 $11 $11
	ld   de, $7615                                   ; $7d12: $11 $15 $76
	ld   l, a                                        ; $7d15: $6f
	rst  $38                                         ; $7d16: $ff
	rst  $38                                         ; $7d17: $ff
	rst  $38                                         ; $7d18: $ff
	rst  $38                                         ; $7d19: $ff
	rst  $38                                         ; $7d1a: $ff
	rst  $38                                         ; $7d1b: $ff
	rst  $38                                         ; $7d1c: $ff
	rst  $38                                         ; $7d1d: $ff
	db   $fc                                         ; $7d1e: $fc
	adc  c                                           ; $7d1f: $89
	ld   d, l                                        ; $7d20: $55
	ld   de, $1111                                   ; $7d21: $11 $11 $11
	ld   de, $1111                                   ; $7d24: $11 $11 $11
	ld   de, $6511                                   ; $7d27: $11 $11 $65
	inc  d                                           ; $7d2a: $14
	rst  $38                                         ; $7d2b: $ff
	rst  $38                                         ; $7d2c: $ff
	rst  $38                                         ; $7d2d: $ff
	rst  $38                                         ; $7d2e: $ff
	rst  $38                                         ; $7d2f: $ff
	rst  $38                                         ; $7d30: $ff
	rst  $38                                         ; $7d31: $ff
	rst  $38                                         ; $7d32: $ff
	rst  $38                                         ; $7d33: $ff
	adc  e                                           ; $7d34: $8b
	cp   b                                           ; $7d35: $b8
	ld   [hl], c                                     ; $7d36: $71
	ld   de, $1111                                   ; $7d37: $11 $11 $11
	ld   de, $1111                                   ; $7d3a: $11 $11 $11
	ld   de, $9d15                                   ; $7d3d: $11 $15 $9d
	adc  b                                           ; $7d40: $88
	rst  $38                                         ; $7d41: $ff
	rst  $38                                         ; $7d42: $ff
	rst  $38                                         ; $7d43: $ff
	rst  $38                                         ; $7d44: $ff
	rst  $38                                         ; $7d45: $ff
	rst  $38                                         ; $7d46: $ff
	rst  $38                                         ; $7d47: $ff
	rst  $38                                         ; $7d48: $ff
	rst  $38                                         ; $7d49: $ff
	sbc  b                                           ; $7d4a: $98
	sub  l                                           ; $7d4b: $95
	ld   de, $1111                                   ; $7d4c: $11 $11 $11
	ld   de, $1111                                   ; $7d4f: $11 $11 $11
	ld   de, $3211                                   ; $7d52: $11 $11 $32
	sbc  h                                           ; $7d55: $9c
	cp   a                                           ; $7d56: $bf
	rst  $38                                         ; $7d57: $ff
	rst  $38                                         ; $7d58: $ff
	rst  $38                                         ; $7d59: $ff
	rst  $38                                         ; $7d5a: $ff
	rst  $38                                         ; $7d5b: $ff
	rst  $38                                         ; $7d5c: $ff
	rst  $38                                         ; $7d5d: $ff
	rst  $38                                         ; $7d5e: $ff
	db   $eb                                         ; $7d5f: $eb
	halt                                             ; $7d60: $76
	ld   d, c                                        ; $7d61: $51
	ld   de, $1111                                   ; $7d62: $11 $11 $11
	ld   de, $1111                                   ; $7d65: $11 $11 $11
	ld   de, $5316                                   ; $7d68: $11 $16 $53
	xor  [hl]                                        ; $7d6b: $ae
	rst  $38                                         ; $7d6c: $ff
	rst  $38                                         ; $7d6d: $ff
	rst  $38                                         ; $7d6e: $ff
	rst  $38                                         ; $7d6f: $ff
	rst  $38                                         ; $7d70: $ff
	rst  $38                                         ; $7d71: $ff
	rst  $38                                         ; $7d72: $ff
	rst  $38                                         ; $7d73: $ff
	ei                                               ; $7d74: $fb
	xor  d                                           ; $7d75: $aa
	ld   h, c                                        ; $7d76: $61
	ld   de, $1111                                   ; $7d77: $11 $11 $11
	ld   de, $1111                                   ; $7d7a: $11 $11 $11
	ld   de, $1111                                   ; $7d7d: $11 $11 $11
	cp   a                                           ; $7d80: $bf
	add  hl, hl                                      ; $7d81: $29
	rst  $38                                         ; $7d82: $ff
	rst  $28                                         ; $7d83: $ef
	rst  $38                                         ; $7d84: $ff
	rst  $38                                         ; $7d85: $ff
	rst  $38                                         ; $7d86: $ff
	rst  $38                                         ; $7d87: $ff
	rst  $38                                         ; $7d88: $ff
	rst  $38                                         ; $7d89: $ff
	cp   d                                           ; $7d8a: $ba
	cp   d                                           ; $7d8b: $ba
	ld   b, c                                        ; $7d8c: $41
	ld   [de], a                                     ; $7d8d: $12
	ld   de, $1111                                   ; $7d8e: $11 $11 $11
	ld   de, $1111                                   ; $7d91: $11 $11 $11
	ld   de, $7a11                                   ; $7d94: $11 $11 $7a
	cp   d                                           ; $7d97: $ba
	rst  $38                                         ; $7d98: $ff
	rst  $38                                         ; $7d99: $ff
	rst  $38                                         ; $7d9a: $ff
	rst  $38                                         ; $7d9b: $ff
	rst  $38                                         ; $7d9c: $ff
	rst  $38                                         ; $7d9d: $ff
	rst  $38                                         ; $7d9e: $ff
	rst  $38                                         ; $7d9f: $ff
	sbc  $b6                                         ; $7da0: $de $b6
	ld   h, l                                        ; $7da2: $65
	ld   hl, $1111                                   ; $7da3: $21 $11 $11
	ld   de, $1111                                   ; $7da6: $11 $11 $11
	ld   de, $1311                                   ; $7da9: $11 $11 $13
	ld   [hl], l                                     ; $7dac: $75
	ld   a, l                                        ; $7dad: $7d
	rst  $38                                         ; $7dae: $ff
	rst  $38                                         ; $7daf: $ff
	rst  $38                                         ; $7db0: $ff
	rst  $38                                         ; $7db1: $ff
	rst  $38                                         ; $7db2: $ff
	rst  $38                                         ; $7db3: $ff
	rst  $38                                         ; $7db4: $ff
	rst  $38                                         ; $7db5: $ff
	db   $ec                                         ; $7db6: $ec
	cp   c                                           ; $7db7: $b9
	ld   h, e                                        ; $7db8: $63
	ld   hl, $1111                                   ; $7db9: $21 $11 $11
	ld   de, $1111                                   ; $7dbc: $11 $11 $11
	ld   de, $1211                                   ; $7dbf: $11 $11 $12
	ld   [hl], $9a                                   ; $7dc2: $36 $9a
	rst  $28                                         ; $7dc4: $ef
	rst  $38                                         ; $7dc5: $ff
	rst  $38                                         ; $7dc6: $ff
	rst  $38                                         ; $7dc7: $ff
	rst  $38                                         ; $7dc8: $ff
	rst  $38                                         ; $7dc9: $ff
	rst  $38                                         ; $7dca: $ff
	rst  $38                                         ; $7dcb: $ff
	rst  $38                                         ; $7dcc: $ff
	cp   d                                           ; $7dcd: $ba
	ld   [hl], l                                     ; $7dce: $75
	ld   sp, $1111                                   ; $7dcf: $31 $11 $11
	ld   de, $1111                                   ; $7dd2: $11 $11 $11
	ld   de, $1111                                   ; $7dd5: $11 $11 $11
	dec  [hl]                                        ; $7dd8: $35
	ld   a, e                                        ; $7dd9: $7b
	rst  JumpTable                                         ; $7dda: $df
	rst  $38                                         ; $7ddb: $ff
	rst  $38                                         ; $7ddc: $ff
	rst  $38                                         ; $7ddd: $ff
	rst  $38                                         ; $7dde: $ff
	rst  $38                                         ; $7ddf: $ff
	rst  $38                                         ; $7de0: $ff
	rst  $38                                         ; $7de1: $ff
	rst  $38                                         ; $7de2: $ff
	jp   z, $3175                                    ; $7de3: $ca $75 $31

	ld   de, $1111                                   ; $7de6: $11 $11 $11
	ld   de, $1111                                   ; $7de9: $11 $11 $11
	ld   de, $3511                                   ; $7dec: $11 $11 $35
	ld   l, e                                        ; $7def: $6b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7df0: $cf
	rst  $38                                         ; $7df1: $ff
	rst  $38                                         ; $7df2: $ff
	rst  $38                                         ; $7df3: $ff
	rst  $38                                         ; $7df4: $ff
	rst  $38                                         ; $7df5: $ff
	rst  $38                                         ; $7df6: $ff
	rst  $38                                         ; $7df7: $ff
	rst  $38                                         ; $7df8: $ff
	jp   c, $3176                                    ; $7df9: $da $76 $31

	ld   de, $1111                                   ; $7dfc: $11 $11 $11
	ld   de, $1111                                   ; $7dff: $11 $11 $11
	ld   de, $3511                                   ; $7e02: $11 $11 $35
	ld   a, h                                        ; $7e05: $7c
	rst  $28                                         ; $7e06: $ef
	rst  $38                                         ; $7e07: $ff
	rst  $38                                         ; $7e08: $ff
	rst  $38                                         ; $7e09: $ff
	rst  $38                                         ; $7e0a: $ff
	rst  $38                                         ; $7e0b: $ff
	rst  $38                                         ; $7e0c: $ff
	rst  $38                                         ; $7e0d: $ff
	rst  $38                                         ; $7e0e: $ff
	cp   b                                           ; $7e0f: $b8
	ld   h, d                                        ; $7e10: $62
	ld   hl, $1111                                   ; $7e11: $21 $11 $11
	ld   de, $1111                                   ; $7e14: $11 $11 $11
	ld   de, $1311                                   ; $7e17: $11 $11 $13
	ld   l, c                                        ; $7e1a: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e1b: $cf
	rst  $38                                         ; $7e1c: $ff
	rst  $38                                         ; $7e1d: $ff
	rst  $38                                         ; $7e1e: $ff
	rst  $38                                         ; $7e1f: $ff
	rst  $38                                         ; $7e20: $ff
	rst  $38                                         ; $7e21: $ff
	rst  $38                                         ; $7e22: $ff
	cp   $c9                                         ; $7e23: $fe $c9
	ld   [hl], h                                     ; $7e25: $74
	ld   hl, $1111                                   ; $7e26: $21 $11 $11
	ld   de, $1111                                   ; $7e29: $11 $11 $11
	ld   de, $1111                                   ; $7e2c: $11 $11 $11
	add  hl, sp                                      ; $7e2f: $39
	xor  h                                           ; $7e30: $ac
	rst  $38                                         ; $7e31: $ff
	rst  $38                                         ; $7e32: $ff
	rst  $38                                         ; $7e33: $ff
	rst  $38                                         ; $7e34: $ff
	rst  $38                                         ; $7e35: $ff
	rst  $38                                         ; $7e36: $ff
	rst  $38                                         ; $7e37: $ff
	rst  $38                                         ; $7e38: $ff
	bit  6, e                                        ; $7e39: $cb $73
	ld   hl, $1111                                   ; $7e3b: $21 $11 $11
	ld   de, $1111                                   ; $7e3e: $11 $11 $11
	ld   de, $1111                                   ; $7e41: $11 $11 $11
	ld   h, a                                        ; $7e44: $67
	xor  a                                           ; $7e45: $af
	rst  $38                                         ; $7e46: $ff
	rst  $38                                         ; $7e47: $ff
	rst  $38                                         ; $7e48: $ff
	rst  $38                                         ; $7e49: $ff
	rst  $38                                         ; $7e4a: $ff
	rst  $38                                         ; $7e4b: $ff
	rst  $38                                         ; $7e4c: $ff
	cp   $f8                                         ; $7e4d: $fe $f8
	ld   b, h                                        ; $7e4f: $44
	ld   de, $1111                                   ; $7e50: $11 $11 $11
	ld   de, $1111                                   ; $7e53: $11 $11 $11
	ld   de, $1411                                   ; $7e56: $11 $11 $14
	ld   e, e                                        ; $7e59: $5b
	rst  $28                                         ; $7e5a: $ef
	rst  $38                                         ; $7e5b: $ff
	rst  $38                                         ; $7e5c: $ff
	rst  $38                                         ; $7e5d: $ff
	rst  $38                                         ; $7e5e: $ff
	rst  $38                                         ; $7e5f: $ff
	rst  $38                                         ; $7e60: $ff
	rst  $38                                         ; $7e61: $ff
	rst  $38                                         ; $7e62: $ff
	cp   c                                           ; $7e63: $b9
	ld   b, c                                        ; $7e64: $41
	ld   de, $1111                                   ; $7e65: $11 $11 $11
	ld   de, $1111                                   ; $7e68: $11 $11 $11
	ld   de, $1611                                   ; $7e6b: $11 $11 $16
	sbc  h                                           ; $7e6e: $9c
	rst  $38                                         ; $7e6f: $ff
	rst  $38                                         ; $7e70: $ff
	rst  $38                                         ; $7e71: $ff
	rst  $38                                         ; $7e72: $ff
	rst  $38                                         ; $7e73: $ff
	rst  $38                                         ; $7e74: $ff
	rst  $38                                         ; $7e75: $ff
	rst  $38                                         ; $7e76: $ff
	db   $fd                                         ; $7e77: $fd
	sub  l                                           ; $7e78: $95
	ld   hl, $1111                                   ; $7e79: $21 $11 $11
	ld   de, $1111                                   ; $7e7c: $11 $11 $11
	ld   de, $1111                                   ; $7e7f: $11 $11 $11
	ld   e, e                                        ; $7e82: $5b
	rst  $38                                         ; $7e83: $ff
	rst  $38                                         ; $7e84: $ff
	rst  $38                                         ; $7e85: $ff
	rst  $38                                         ; $7e86: $ff
	rst  $38                                         ; $7e87: $ff
	rst  $38                                         ; $7e88: $ff
	rst  $38                                         ; $7e89: $ff
	rst  $38                                         ; $7e8a: $ff
	rst  $38                                         ; $7e8b: $ff
	or   a                                           ; $7e8c: $b7
	ld   d, d                                        ; $7e8d: $52
	ld   de, $1111                                   ; $7e8e: $11 $11 $11
	ld   de, $1111                                   ; $7e91: $11 $11 $11
	ld   de, $2711                                   ; $7e94: $11 $11 $27
	rst  JumpTable                                         ; $7e97: $df
	rst  $38                                         ; $7e98: $ff
	rst  $38                                         ; $7e99: $ff
	rst  $38                                         ; $7e9a: $ff
	rst  $38                                         ; $7e9b: $ff
	rst  $38                                         ; $7e9c: $ff
	rst  $38                                         ; $7e9d: $ff
	rst  $38                                         ; $7e9e: $ff
	rst  $38                                         ; $7e9f: $ff
	ld   [$1195], a                                  ; $7ea0: $ea $95 $11
	ld   de, $1111                                   ; $7ea3: $11 $11 $11
	ld   de, $1111                                   ; $7ea6: $11 $11 $11
	ld   de, $8f22                                   ; $7ea9: $11 $22 $8f
	rst  $38                                         ; $7eac: $ff
	rst  $38                                         ; $7ead: $ff
	rst  $38                                         ; $7eae: $ff
	rst  $38                                         ; $7eaf: $ff
	rst  $38                                         ; $7eb0: $ff
	rst  $38                                         ; $7eb1: $ff
	rst  $38                                         ; $7eb2: $ff
	rst  $38                                         ; $7eb3: $ff
	db   $fc                                         ; $7eb4: $fc
	sub  l                                           ; $7eb5: $95
	ld   hl, $1111                                   ; $7eb6: $21 $11 $11
	ld   de, $1111                                   ; $7eb9: $11 $11 $11
	ld   de, $1311                                   ; $7ebc: $11 $11 $13
	adc  l                                           ; $7ebf: $8d
	rst  $38                                         ; $7ec0: $ff
	rst  $38                                         ; $7ec1: $ff
	rst  $38                                         ; $7ec2: $ff
	rst  $38                                         ; $7ec3: $ff
	rst  $38                                         ; $7ec4: $ff
	rst  $38                                         ; $7ec5: $ff
	rst  $38                                         ; $7ec6: $ff
	rst  $38                                         ; $7ec7: $ff
	ei                                               ; $7ec8: $fb
	and  [hl]                                        ; $7ec9: $a6
	ld   hl, $1111                                   ; $7eca: $21 $11 $11
	ld   de, $1111                                   ; $7ecd: $11 $11 $11
	ld   de, $1211                                   ; $7ed0: $11 $11 $12
	ld   l, h                                        ; $7ed3: $6c
	rst  $38                                         ; $7ed4: $ff
	rst  $38                                         ; $7ed5: $ff
	rst  $38                                         ; $7ed6: $ff
	rst  $38                                         ; $7ed7: $ff
	rst  $38                                         ; $7ed8: $ff
	rst  $38                                         ; $7ed9: $ff
	rst  $38                                         ; $7eda: $ff
	rst  $38                                         ; $7edb: $ff
	cp   $a8                                         ; $7edc: $fe $a8
	ld   d, c                                        ; $7ede: $51
	ld   de, $1111                                   ; $7edf: $11 $11 $11
	ld   de, $1111                                   ; $7ee2: $11 $11 $11
	ld   de, $5d11                                   ; $7ee5: $11 $11 $5d
	rst  $38                                         ; $7ee8: $ff
	rst  $38                                         ; $7ee9: $ff
	rst  $38                                         ; $7eea: $ff
	rst  $38                                         ; $7eeb: $ff
	rst  $38                                         ; $7eec: $ff
	rst  $38                                         ; $7eed: $ff
	rst  $38                                         ; $7eee: $ff
	rst  $38                                         ; $7eef: $ff
	cp   $b7                                         ; $7ef0: $fe $b7
	ld   d, d                                        ; $7ef2: $52
	ld   de, $1111                                   ; $7ef3: $11 $11 $11
	ld   de, $1111                                   ; $7ef6: $11 $11 $11
	ld   de, $6c12                                   ; $7ef9: $11 $12 $6c
	rst  $38                                         ; $7efc: $ff
	rst  $38                                         ; $7efd: $ff
	rst  $38                                         ; $7efe: $ff
	rst  $38                                         ; $7eff: $ff
	rst  $38                                         ; $7f00: $ff
	rst  $38                                         ; $7f01: $ff
	rst  $38                                         ; $7f02: $ff
	rst  $38                                         ; $7f03: $ff
	cp   $a7                                         ; $7f04: $fe $a7
	ld   d, c                                        ; $7f06: $51
	ld   de, $1111                                   ; $7f07: $11 $11 $11
	ld   de, $1111                                   ; $7f0a: $11 $11 $11
	ld   de, $6d32                                   ; $7f0d: $11 $32 $6d
	rst  $38                                         ; $7f10: $ff
	rst  $38                                         ; $7f11: $ff
	rst  $38                                         ; $7f12: $ff
	rst  $38                                         ; $7f13: $ff
	rst  $38                                         ; $7f14: $ff
	rst  $38                                         ; $7f15: $ff
	rst  $38                                         ; $7f16: $ff
	rst  $38                                         ; $7f17: $ff
	cp   $76                                         ; $7f18: $fe $76
	ld   d, c                                        ; $7f1a: $51
	ld   de, $1111                                   ; $7f1b: $11 $11 $11
	ld   de, $1111                                   ; $7f1e: $11 $11 $11
	ld   de, $9e36                                   ; $7f21: $11 $36 $9e
	rst  $38                                         ; $7f24: $ff
	rst  $38                                         ; $7f25: $ff
	rst  $38                                         ; $7f26: $ff
	rst  $38                                         ; $7f27: $ff
	rst  $38                                         ; $7f28: $ff
	rst  $38                                         ; $7f29: $ff
	rst  $38                                         ; $7f2a: $ff
	rst  $38                                         ; $7f2b: $ff
	ei                                               ; $7f2c: $fb
	or   a                                           ; $7f2d: $b7
	ld   hl, $1111                                   ; $7f2e: $21 $11 $11
	ld   de, $1111                                   ; $7f31: $11 $11 $11
	ld   de, $4413                                   ; $7f34: $11 $13 $44
	xor  a                                           ; $7f37: $af
	rst  $38                                         ; $7f38: $ff
	rst  $38                                         ; $7f39: $ff
	rst  $38                                         ; $7f3a: $ff
	rst  $38                                         ; $7f3b: $ff
	rst  $38                                         ; $7f3c: $ff
	rst  $38                                         ; $7f3d: $ff
	rst  $38                                         ; $7f3e: $ff
	rst  $38                                         ; $7f3f: $ff
	db   $fd                                         ; $7f40: $fd
	ld   h, h                                        ; $7f41: $64
	ld   b, c                                        ; $7f42: $41
	ld   de, $1111                                   ; $7f43: $11 $11 $11
	ld   de, $1111                                   ; $7f46: $11 $11 $11
	ld   [de], a                                     ; $7f49: $12
	ld   d, [hl]                                     ; $7f4a: $56
	rst  $28                                         ; $7f4b: $ef
	rst  $38                                         ; $7f4c: $ff
	rst  $38                                         ; $7f4d: $ff
	rst  $38                                         ; $7f4e: $ff
	rst  $38                                         ; $7f4f: $ff
	rst  $38                                         ; $7f50: $ff
	rst  $38                                         ; $7f51: $ff
	rst  $38                                         ; $7f52: $ff
	rst  $38                                         ; $7f53: $ff
	ld   [$1165], a                                  ; $7f54: $ea $65 $11
	ld   de, $1111                                   ; $7f57: $11 $11 $11
	ld   de, $1111                                   ; $7f5a: $11 $11 $11
	dec  [hl]                                        ; $7f5d: $35
	ld   e, l                                        ; $7f5e: $5d
	rst  $38                                         ; $7f5f: $ff
	rst  $38                                         ; $7f60: $ff
	rst  $38                                         ; $7f61: $ff
	rst  $38                                         ; $7f62: $ff
	rst  $38                                         ; $7f63: $ff
	rst  $38                                         ; $7f64: $ff
	rst  $38                                         ; $7f65: $ff
	rst  $38                                         ; $7f66: $ff
	rst  $38                                         ; $7f67: $ff
	add  $66                                         ; $7f68: $c6 $66
	ld   de, $1111                                   ; $7f6a: $11 $11 $11
	ld   de, $1111                                   ; $7f6d: $11 $11 $11
	ld   de, $af55                                   ; $7f70: $11 $55 $af
	rst  $38                                         ; $7f73: $ff
	rst  $38                                         ; $7f74: $ff
	rst  $38                                         ; $7f75: $ff
	rst  $38                                         ; $7f76: $ff
	rst  $38                                         ; $7f77: $ff
	rst  $38                                         ; $7f78: $ff
	rst  $38                                         ; $7f79: $ff
	rst  $38                                         ; $7f7a: $ff
	rst  $38                                         ; $7f7b: $ff
	and  a                                           ; $7f7c: $a7
	ld   b, c                                        ; $7f7d: $41
	ld   de, $1111                                   ; $7f7e: $11 $11 $11
	ld   de, $1111                                   ; $7f81: $11 $11 $11
	ld   de, $9fde                                   ; $7f84: $11 $de $9f
	rst  $38                                         ; $7f87: $ff
	rst  $38                                         ; $7f88: $ff
	rst  $38                                         ; $7f89: $ff
	rst  $38                                         ; $7f8a: $ff
	rst  $38                                         ; $7f8b: $ff
	rst  $38                                         ; $7f8c: $ff
	rst  $38                                         ; $7f8d: $ff
	rst  $38                                         ; $7f8e: $ff
	db   $dd                                         ; $7f8f: $dd
	and  h                                           ; $7f90: $a4
	ld   de, $1111                                   ; $7f91: $11 $11 $11
	ld   de, $1111                                   ; $7f94: $11 $11 $11
	ld   de, $ff27                                   ; $7f97: $11 $27 $ff
	cp   a                                           ; $7f9a: $bf
	rst  $38                                         ; $7f9b: $ff
	rst  $38                                         ; $7f9c: $ff
	rst  $38                                         ; $7f9d: $ff
	rst  $38                                         ; $7f9e: $ff
	rst  $38                                         ; $7f9f: $ff
	rst  $38                                         ; $7fa0: $ff
	rst  $38                                         ; $7fa1: $ff
	cp   $aa                                         ; $7fa2: $fe $aa
	ld   [hl], c                                     ; $7fa4: $71
	ld   de, $1111                                   ; $7fa5: $11 $11 $11
	ld   de, $1111                                   ; $7fa8: $11 $11 $11
	ld   de, $cdcf                                   ; $7fab: $11 $cf $cd
	rst  $38                                         ; $7fae: $ff
	rst  $38                                         ; $7faf: $ff
	rst  $38                                         ; $7fb0: $ff
	rst  $38                                         ; $7fb1: $ff
	rst  $38                                         ; $7fb2: $ff
	rst  $38                                         ; $7fb3: $ff
	rst  $38                                         ; $7fb4: $ff
	rst  $38                                         ; $7fb5: $ff
	db   $eb                                         ; $7fb6: $eb
	ld   d, l                                        ; $7fb7: $55
	ld   d, c                                        ; $7fb8: $51
	ld   de, $1111                                   ; $7fb9: $11 $11 $11
	ld   de, $1111                                   ; $7fbc: $11 $11 $11
	add  hl, sp                                      ; $7fbf: $39
	db   $dd                                         ; $7fc0: $dd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fc1: $cf
	rst  $38                                         ; $7fc2: $ff
	rst  $38                                         ; $7fc3: $ff
	rst  $38                                         ; $7fc4: $ff
	rst  $38                                         ; $7fc5: $ff
	rst  $38                                         ; $7fc6: $ff
	rst  $38                                         ; $7fc7: $ff
	rst  $38                                         ; $7fc8: $ff
	db   $fd                                         ; $7fc9: $fd
	adc  c                                           ; $7fca: $89
	ld   sp, $1111                                   ; $7fcb: $31 $11 $11
	ld   de, $1111                                   ; $7fce: $11 $11 $11
	ld   de, $752a                                   ; $7fd1: $11 $2a $75
	rst  $28                                         ; $7fd4: $ef
	push af                                          ; $7fd5: $f5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fd6: $cf
	rst  $38                                         ; $7fd7: $ff
	rst  $38                                         ; $7fd8: $ff
	rst  $38                                         ; $7fd9: $ff
	rst  $38                                         ; $7fda: $ff
	rst  $38                                         ; $7fdb: $ff
	cp   $bc                                         ; $7fdc: $fe $bc
	sub  c                                           ; $7fde: $91
	ld   de, $1111                                   ; $7fdf: $11 $11 $11
	ld   de, $1111                                   ; $7fe2: $11 $11 $11
	ld   de, $cf99                                   ; $7fe5: $11 $99 $cf
	ei                                               ; $7fe8: $fb
	rst  JumpTable                                         ; $7fe9: $df
	rst  $28                                         ; $7fea: $ef
	rst  $38                                         ; $7feb: $ff
	rst  $38                                         ; $7fec: $ff
	rst  $38                                         ; $7fed: $ff
	rst  $38                                         ; $7fee: $ff
	rst  $38                                         ; $7fef: $ff
	ld   [$4176], a                                  ; $7ff0: $ea $76 $41
	ld   de, $1111                                   ; $7ff3: $11 $11 $11
	ld   de, $1111                                   ; $7ff6: $11 $11 $11
	ld   h, l                                        ; $7ff9: $65
	cp   l                                           ; $7ffa: $bd
	cp   a                                           ; $7ffb: $bf
	or   $cf                                         ; $7ffc: $f6 $cf
	rst  $38                                         ; $7ffe: $ff
	rst  $38                                         ; $7fff: $ff
