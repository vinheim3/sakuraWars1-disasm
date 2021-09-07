; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0ac", ROMX[$4000], BANK[$ac]

	push bc                                          ; $4000: $c5
	adc  b                                           ; $4001: $88
	ld   a, e                                        ; $4002: $7b
	ld   h, a                                        ; $4003: $67
	call nz, Call_0ac_7889                           ; $4004: $c4 $89 $78
	ld   a, e                                        ; $4007: $7b
	ld   e, h                                        ; $4008: $5c
	ld   d, a                                        ; $4009: $57
	or   h                                           ; $400a: $b4
	sub  $97                                         ; $400b: $d6 $97
	sbc  d                                           ; $400d: $9a
	ld   a, $49                                      ; $400e: $3e $49
	sub  e                                           ; $4010: $93
	db   $e4                                         ; $4011: $e4
	sbc  d                                           ; $4012: $9a
	ld   a, b                                        ; $4013: $78
	adc  d                                           ; $4014: $8a
	ld   c, e                                        ; $4015: $4b
	ld   l, c                                        ; $4016: $69
	sub  l                                           ; $4017: $95
	push bc                                          ; $4018: $c5
	sbc  b                                           ; $4019: $98
	ld   a, c                                        ; $401a: $79
	ld   [hl], a                                     ; $401b: $77
	and  a                                           ; $401c: $a7
	sub  a                                           ; $401d: $97
	sbc  d                                           ; $401e: $9a
	ld   e, h                                        ; $401f: $5c
	ld   h, a                                        ; $4020: $67
	adc  c                                           ; $4021: $89
	ld   a, b                                        ; $4022: $78
	sub  l                                           ; $4023: $95
	and  a                                           ; $4024: $a7
	sbc  b                                           ; $4025: $98
	sub  a                                           ; $4026: $97
	adc  c                                           ; $4027: $89
	ld   e, e                                        ; $4028: $5b
	ld   a, b                                        ; $4029: $78
	and  a                                           ; $402a: $a7
	adc  c                                           ; $402b: $89
	ld   a, b                                        ; $402c: $78
	ld   a, c                                        ; $402d: $79
	ld   [hl], a                                     ; $402e: $77
	adc  c                                           ; $402f: $89
	ld   l, c                                        ; $4030: $69
	or   h                                           ; $4031: $b4
	and  [hl]                                        ; $4032: $a6
	xor  b                                           ; $4033: $a8
	ld   a, c                                        ; $4034: $79
	ld   a, c                                        ; $4035: $79
	add  a                                           ; $4036: $87
	adc  c                                           ; $4037: $89
	ld   l, c                                        ; $4038: $69
	ld   a, c                                        ; $4039: $79
	add  [hl]                                        ; $403a: $86
	sub  a                                           ; $403b: $97
	sub  a                                           ; $403c: $97
	sub  [hl]                                        ; $403d: $96
	sbc  b                                           ; $403e: $98
	adc  b                                           ; $403f: $88
	ld   a, c                                        ; $4040: $79
	ld   l, d                                        ; $4041: $6a
	ld   l, d                                        ; $4042: $6a
	ld   [hl], a                                     ; $4043: $77
	and  [hl]                                        ; $4044: $a6
	and  l                                           ; $4045: $a5
	and  a                                           ; $4046: $a7
	adc  c                                           ; $4047: $89
	ld   l, d                                        ; $4048: $6a
	ld   l, c                                        ; $4049: $69
	and  l                                           ; $404a: $a5
	sbc  b                                           ; $404b: $98
	ld   l, d                                        ; $404c: $6a
	add  a                                           ; $404d: $87
	or   a                                           ; $404e: $b7
	adc  b                                           ; $404f: $88
	ld   [hl], a                                     ; $4050: $77
	adc  d                                           ; $4051: $8a
	ld   [hl], a                                     ; $4052: $77
	and  a                                           ; $4053: $a7
	adc  c                                           ; $4054: $89
	ld   a, b                                        ; $4055: $78
	ld   a, e                                        ; $4056: $7b
	ld   h, a                                        ; $4057: $67
	and  [hl]                                        ; $4058: $a6
	adc  c                                           ; $4059: $89
	adc  b                                           ; $405a: $88
	sub  [hl]                                        ; $405b: $96
	sub  a                                           ; $405c: $97
	sub  a                                           ; $405d: $97
	adc  c                                           ; $405e: $89
	ld   a, c                                        ; $405f: $79
	ld   a, d                                        ; $4060: $7a
	ld   e, d                                        ; $4061: $5a
	adc  b                                           ; $4062: $88
	ld   a, c                                        ; $4063: $79
	add  l                                           ; $4064: $85
	push bc                                          ; $4065: $c5
	adc  c                                           ; $4066: $89
	ld   a, b                                        ; $4067: $78
	add  a                                           ; $4068: $87
	and  a                                           ; $4069: $a7
	ld   a, c                                        ; $406a: $79
	ld   a, b                                        ; $406b: $78
	ld   a, c                                        ; $406c: $79
	ld   l, c                                        ; $406d: $69
	sbc  b                                           ; $406e: $98
	adc  b                                           ; $406f: $88
	sub  a                                           ; $4070: $97
	and  a                                           ; $4071: $a7
	ld   a, d                                        ; $4072: $7a
	ld   [hl], a                                     ; $4073: $77
	sub  a                                           ; $4074: $97
	sub  [hl]                                        ; $4075: $96
	adc  d                                           ; $4076: $8a
	ld   l, d                                        ; $4077: $6a
	ld   a, c                                        ; $4078: $79
	adc  b                                           ; $4079: $88
	and  a                                           ; $407a: $a7
	sub  a                                           ; $407b: $97
	adc  c                                           ; $407c: $89
	ld   a, c                                        ; $407d: $79
	ld   a, c                                        ; $407e: $79
	adc  b                                           ; $407f: $88
	add  a                                           ; $4080: $87
	sub  a                                           ; $4081: $97
	adc  b                                           ; $4082: $88
	ld   a, c                                        ; $4083: $79
	sub  [hl]                                        ; $4084: $96
	or   [hl]                                        ; $4085: $b6
	ld   a, c                                        ; $4086: $79
	ld   a, b                                        ; $4087: $78
	ld   a, d                                        ; $4088: $7a
	ld   e, d                                        ; $4089: $5a
	ld   l, b                                        ; $408a: $68
	sub  a                                           ; $408b: $97
	and  l                                           ; $408c: $a5
	and  [hl]                                        ; $408d: $a6
	sbc  c                                           ; $408e: $99
	ld   a, e                                        ; $408f: $7b
	ld   e, e                                        ; $4090: $5b
	ld   l, b                                        ; $4091: $68
	adc  b                                           ; $4092: $88
	sub  [hl]                                        ; $4093: $96
	or   a                                           ; $4094: $b7
	ld   a, d                                        ; $4095: $7a
	ld   a, d                                        ; $4096: $7a
	ld   a, b                                        ; $4097: $78
	and  l                                           ; $4098: $a5
	or   a                                           ; $4099: $b7
	and  a                                           ; $409a: $a7
	ld   a, c                                        ; $409b: $79
	ld   l, e                                        ; $409c: $6b
	ld   a, b                                        ; $409d: $78
	ld   a, c                                        ; $409e: $79
	add  a                                           ; $409f: $87
	and  [hl]                                        ; $40a0: $a6
	adc  c                                           ; $40a1: $89
	add  a                                           ; $40a2: $87
	ld   a, d                                        ; $40a3: $7a
	ld   a, b                                        ; $40a4: $78
	or   [hl]                                        ; $40a5: $b6
	sbc  b                                           ; $40a6: $98
	adc  b                                           ; $40a7: $88
	adc  c                                           ; $40a8: $89
	ld   a, b                                        ; $40a9: $78
	sub  a                                           ; $40aa: $97
	sbc  b                                           ; $40ab: $98
	adc  c                                           ; $40ac: $89
	ld   a, d                                        ; $40ad: $7a
	ld   l, c                                        ; $40ae: $69
	ld   a, c                                        ; $40af: $79
	add  a                                           ; $40b0: $87
	sub  a                                           ; $40b1: $97
	sbc  b                                           ; $40b2: $98
	and  [hl]                                        ; $40b3: $a6
	sbc  b                                           ; $40b4: $98
	ld   a, d                                        ; $40b5: $7a
	add  a                                           ; $40b6: $87
	adc  b                                           ; $40b7: $88
	and  a                                           ; $40b8: $a7
	adc  d                                           ; $40b9: $8a
	ld   a, b                                        ; $40ba: $78
	sbc  c                                           ; $40bb: $99
	ld   l, d                                        ; $40bc: $6a
	add  a                                           ; $40bd: $87
	and  [hl]                                        ; $40be: $a6
	adc  c                                           ; $40bf: $89
	and  [hl]                                        ; $40c0: $a6
	adc  c                                           ; $40c1: $89
	ld   a, c                                        ; $40c2: $79
	sbc  c                                           ; $40c3: $99
	ld   a, b                                        ; $40c4: $78
	add  a                                           ; $40c5: $87
	xor  c                                           ; $40c6: $a9
	ld   l, c                                        ; $40c7: $69
	ld   a, c                                        ; $40c8: $79
	add  a                                           ; $40c9: $87
	and  a                                           ; $40ca: $a7
	adc  b                                           ; $40cb: $88
	sbc  b                                           ; $40cc: $98
	add  a                                           ; $40cd: $87
	ld   a, c                                        ; $40ce: $79
	ld   a, c                                        ; $40cf: $79
	ld   a, c                                        ; $40d0: $79
	adc  b                                           ; $40d1: $88
	and  a                                           ; $40d2: $a7
	adc  d                                           ; $40d3: $8a
	ld   a, b                                        ; $40d4: $78
	and  a                                           ; $40d5: $a7
	sbc  c                                           ; $40d6: $99
	sub  [hl]                                        ; $40d7: $96
	sbc  c                                           ; $40d8: $99
	adc  c                                           ; $40d9: $89
	ld   a, c                                        ; $40da: $79
	ld   a, d                                        ; $40db: $7a
	ld   a, b                                        ; $40dc: $78
	adc  b                                           ; $40dd: $88
	add  a                                           ; $40de: $87
	sbc  c                                           ; $40df: $99
	add  a                                           ; $40e0: $87
	sub  a                                           ; $40e1: $97
	adc  c                                           ; $40e2: $89
	ld   a, b                                        ; $40e3: $78
	sub  [hl]                                        ; $40e4: $96
	sbc  b                                           ; $40e5: $98
	ld   a, c                                        ; $40e6: $79
	ld   a, c                                        ; $40e7: $79
	ld   a, c                                        ; $40e8: $79
	ld   a, b                                        ; $40e9: $78
	sub  a                                           ; $40ea: $97
	sub  a                                           ; $40eb: $97
	adc  b                                           ; $40ec: $88
	sub  a                                           ; $40ed: $97
	and  a                                           ; $40ee: $a7
	adc  b                                           ; $40ef: $88
	ld   a, b                                        ; $40f0: $78
	adc  c                                           ; $40f1: $89
	ld   a, c                                        ; $40f2: $79
	ld   a, b                                        ; $40f3: $78
	sub  a                                           ; $40f4: $97
	adc  b                                           ; $40f5: $88
	sub  a                                           ; $40f6: $97
	sub  a                                           ; $40f7: $97
	adc  c                                           ; $40f8: $89
	ld   a, b                                        ; $40f9: $78
	ld   a, b                                        ; $40fa: $78
	ld   a, b                                        ; $40fb: $78
	adc  b                                           ; $40fc: $88
	sbc  b                                           ; $40fd: $98
	sbc  b                                           ; $40fe: $98
	sbc  b                                           ; $40ff: $98
	ld   a, c                                        ; $4100: $79
	adc  b                                           ; $4101: $88
	adc  b                                           ; $4102: $88
	ld   a, b                                        ; $4103: $78
	adc  b                                           ; $4104: $88
	adc  b                                           ; $4105: $88
	adc  c                                           ; $4106: $89
	add  a                                           ; $4107: $87
	adc  b                                           ; $4108: $88
	adc  b                                           ; $4109: $88
	adc  b                                           ; $410a: $88
	adc  b                                           ; $410b: $88
	ld   a, b                                        ; $410c: $78
	adc  b                                           ; $410d: $88
	adc  b                                           ; $410e: $88
	add  a                                           ; $410f: $87
	sbc  b                                           ; $4110: $98
	adc  b                                           ; $4111: $88
	adc  b                                           ; $4112: $88
	adc  b                                           ; $4113: $88
	adc  b                                           ; $4114: $88
	ld   a, b                                        ; $4115: $78
	adc  b                                           ; $4116: $88
	adc  b                                           ; $4117: $88
	adc  b                                           ; $4118: $88
	add  a                                           ; $4119: $87
	adc  b                                           ; $411a: $88
	adc  b                                           ; $411b: $88
	adc  b                                           ; $411c: $88

Jump_0ac_411d:
	adc  b                                           ; $411d: $88
	adc  b                                           ; $411e: $88

Jump_0ac_411f:
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
	adc  b                                           ; $413a: $88
	adc  b                                           ; $413b: $88
	adc  b                                           ; $413c: $88
	adc  b                                           ; $413d: $88
	adc  b                                           ; $413e: $88
	adc  b                                           ; $413f: $88
	adc  b                                           ; $4140: $88
	adc  b                                           ; $4141: $88
	adc  b                                           ; $4142: $88
	add  a                                           ; $4143: $87
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
	adc  b                                           ; $4159: $88
	adc  b                                           ; $415a: $88
	adc  b                                           ; $415b: $88
	adc  b                                           ; $415c: $88
	adc  b                                           ; $415d: $88
	adc  b                                           ; $415e: $88
	adc  b                                           ; $415f: $88
	adc  b                                           ; $4160: $88
	adc  b                                           ; $4161: $88
	adc  b                                           ; $4162: $88
	adc  b                                           ; $4163: $88
	adc  b                                           ; $4164: $88
	adc  b                                           ; $4165: $88
	adc  b                                           ; $4166: $88
	adc  b                                           ; $4167: $88
	adc  b                                           ; $4168: $88
	adc  b                                           ; $4169: $88
	adc  b                                           ; $416a: $88
	adc  b                                           ; $416b: $88
	adc  b                                           ; $416c: $88
	adc  b                                           ; $416d: $88
	adc  b                                           ; $416e: $88
	adc  b                                           ; $416f: $88
	adc  b                                           ; $4170: $88
	adc  b                                           ; $4171: $88
	adc  b                                           ; $4172: $88
	adc  b                                           ; $4173: $88
	adc  b                                           ; $4174: $88
	adc  b                                           ; $4175: $88
	adc  b                                           ; $4176: $88
	adc  b                                           ; $4177: $88
	adc  b                                           ; $4178: $88
	adc  b                                           ; $4179: $88
	adc  b                                           ; $417a: $88
	adc  b                                           ; $417b: $88
	adc  b                                           ; $417c: $88
	adc  b                                           ; $417d: $88
	adc  b                                           ; $417e: $88
	adc  b                                           ; $417f: $88
	adc  b                                           ; $4180: $88
	adc  b                                           ; $4181: $88
	adc  b                                           ; $4182: $88
	adc  b                                           ; $4183: $88
	adc  b                                           ; $4184: $88
	adc  b                                           ; $4185: $88
	adc  b                                           ; $4186: $88
	adc  b                                           ; $4187: $88
	adc  b                                           ; $4188: $88
	adc  b                                           ; $4189: $88
	adc  b                                           ; $418a: $88
	adc  b                                           ; $418b: $88
	adc  b                                           ; $418c: $88
	adc  b                                           ; $418d: $88
	adc  b                                           ; $418e: $88
	adc  b                                           ; $418f: $88
	adc  b                                           ; $4190: $88
	adc  b                                           ; $4191: $88
	adc  b                                           ; $4192: $88
	adc  b                                           ; $4193: $88
	adc  b                                           ; $4194: $88
	adc  b                                           ; $4195: $88
	adc  b                                           ; $4196: $88
	adc  b                                           ; $4197: $88
	adc  b                                           ; $4198: $88
	adc  b                                           ; $4199: $88
	adc  b                                           ; $419a: $88
	adc  b                                           ; $419b: $88
	adc  b                                           ; $419c: $88
	adc  b                                           ; $419d: $88
	adc  b                                           ; $419e: $88
	adc  b                                           ; $419f: $88
	adc  b                                           ; $41a0: $88
	adc  c                                           ; $41a1: $89
	adc  b                                           ; $41a2: $88
	sub  a                                           ; $41a3: $97
	sbc  b                                           ; $41a4: $98
	adc  b                                           ; $41a5: $88
	adc  b                                           ; $41a6: $88
	adc  b                                           ; $41a7: $88
	adc  b                                           ; $41a8: $88
	adc  b                                           ; $41a9: $88
	adc  b                                           ; $41aa: $88
	adc  b                                           ; $41ab: $88
	adc  b                                           ; $41ac: $88
	adc  b                                           ; $41ad: $88
	adc  b                                           ; $41ae: $88
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
	ld   a, b                                        ; $41b9: $78
	adc  b                                           ; $41ba: $88
	adc  b                                           ; $41bb: $88
	adc  b                                           ; $41bc: $88
	adc  b                                           ; $41bd: $88
	sbc  c                                           ; $41be: $99
	sbc  c                                           ; $41bf: $99
	adc  b                                           ; $41c0: $88
	adc  b                                           ; $41c1: $88
	adc  b                                           ; $41c2: $88
	ld   a, b                                        ; $41c3: $78
	adc  b                                           ; $41c4: $88
	adc  b                                           ; $41c5: $88
	adc  b                                           ; $41c6: $88
	add  a                                           ; $41c7: $87
	adc  b                                           ; $41c8: $88
	adc  b                                           ; $41c9: $88
	adc  b                                           ; $41ca: $88
	ld   a, c                                        ; $41cb: $79
	add  a                                           ; $41cc: $87
	sbc  b                                           ; $41cd: $98
	ld   a, b                                        ; $41ce: $78
	adc  c                                           ; $41cf: $89
	add  a                                           ; $41d0: $87
	sbc  b                                           ; $41d1: $98
	adc  c                                           ; $41d2: $89
	ld   a, b                                        ; $41d3: $78
	add  a                                           ; $41d4: $87
	adc  b                                           ; $41d5: $88
	adc  c                                           ; $41d6: $89
	adc  b                                           ; $41d7: $88
	sbc  b                                           ; $41d8: $98
	sbc  c                                           ; $41d9: $99
	adc  b                                           ; $41da: $88
	sbc  b                                           ; $41db: $98
	adc  b                                           ; $41dc: $88
	adc  b                                           ; $41dd: $88
	adc  b                                           ; $41de: $88
	ld   [hl], a                                     ; $41df: $77
	ld   a, b                                        ; $41e0: $78
	ld   [hl], a                                     ; $41e1: $77
	add  a                                           ; $41e2: $87
	add  a                                           ; $41e3: $87
	ld   a, b                                        ; $41e4: $78
	xor  c                                           ; $41e5: $a9
	sbc  d                                           ; $41e6: $9a
	xor  c                                           ; $41e7: $a9
	xor  e                                           ; $41e8: $ab
	sbc  c                                           ; $41e9: $99
	sub  a                                           ; $41ea: $97
	ld   h, [hl]                                     ; $41eb: $66
	ld   a, c                                        ; $41ec: $79
	adc  b                                           ; $41ed: $88
	sbc  d                                           ; $41ee: $9a
	cp   c                                           ; $41ef: $b9
	halt                                             ; $41f0: $76
	halt                                             ; $41f1: $76
	ld   b, e                                        ; $41f2: $43
	ld   h, [hl]                                     ; $41f3: $66
	ld   d, [hl]                                     ; $41f4: $56
	ld   l, c                                        ; $41f5: $69
	halt                                             ; $41f6: $76
	ld   h, a                                        ; $41f7: $67
	xor  b                                           ; $41f8: $a8
	sbc  b                                           ; $41f9: $98
	xor  e                                           ; $41fa: $ab
	xor  c                                           ; $41fb: $a9
	sbc  b                                           ; $41fc: $98
	add  [hl]                                        ; $41fd: $86
	ld   b, h                                        ; $41fe: $44
	ld   b, l                                        ; $41ff: $45
	ld   d, h                                        ; $4200: $54
	ld   h, [hl]                                     ; $4201: $66
	sbc  b                                           ; $4202: $98
	sbc  b                                           ; $4203: $98
	sbc  d                                           ; $4204: $9a
	sbc  b                                           ; $4205: $98
	xor  e                                           ; $4206: $ab
	and  a                                           ; $4207: $a7
	ld   h, l                                        ; $4208: $65
	ld   h, [hl]                                     ; $4209: $66
	ld   h, l                                        ; $420a: $65
	ld   l, b                                        ; $420b: $68
	ld   h, l                                        ; $420c: $65
	ld   l, c                                        ; $420d: $69
	adc  c                                           ; $420e: $89
	adc  b                                           ; $420f: $88
	sbc  c                                           ; $4210: $99
	sub  a                                           ; $4211: $97
	adc  c                                           ; $4212: $89
	add  a                                           ; $4213: $87
	ld   l, b                                        ; $4214: $68
	adc  b                                           ; $4215: $88
	add  [hl]                                        ; $4216: $86
	ld   a, c                                        ; $4217: $79
	ld   [hl], a                                     ; $4218: $77
	ld   l, c                                        ; $4219: $69
	xor  b                                           ; $421a: $a8
	ld   [hl], a                                     ; $421b: $77
	sbc  c                                           ; $421c: $99
	halt                                             ; $421d: $76
	ld   a, b                                        ; $421e: $78
	add  a                                           ; $421f: $87
	ld   h, a                                        ; $4220: $67
	adc  b                                           ; $4221: $88
	ld   [hl], a                                     ; $4222: $77
	ld   a, c                                        ; $4223: $79
	add  a                                           ; $4224: $87
	ld   a, c                                        ; $4225: $79
	and  a                                           ; $4226: $a7
	adc  c                                           ; $4227: $89
	adc  b                                           ; $4228: $88
	ld   a, b                                        ; $4229: $78
	adc  b                                           ; $422a: $88
	sbc  b                                           ; $422b: $98
	adc  b                                           ; $422c: $88
	adc  b                                           ; $422d: $88
	adc  b                                           ; $422e: $88
	ld   a, b                                        ; $422f: $78
	sbc  c                                           ; $4230: $99
	ld   a, b                                        ; $4231: $78
	sbc  b                                           ; $4232: $98
	sbc  c                                           ; $4233: $99
	sbc  b                                           ; $4234: $98
	adc  d                                           ; $4235: $8a
	add  a                                           ; $4236: $87
	sbc  b                                           ; $4237: $98
	ld   a, b                                        ; $4238: $78
	sbc  b                                           ; $4239: $98
	adc  b                                           ; $423a: $88
	adc  b                                           ; $423b: $88
	sbc  c                                           ; $423c: $99
	add  a                                           ; $423d: $87
	sbc  d                                           ; $423e: $9a
	ld   [hl], a                                     ; $423f: $77
	sbc  b                                           ; $4240: $98
	ld   [hl], a                                     ; $4241: $77
	add  a                                           ; $4242: $87
	ld   [hl], a                                     ; $4243: $77
	halt                                             ; $4244: $76
	adc  c                                           ; $4245: $89
	ld   [hl], a                                     ; $4246: $77
	sbc  c                                           ; $4247: $99
	ld   [hl], a                                     ; $4248: $77
	sbc  c                                           ; $4249: $99
	adc  b                                           ; $424a: $88
	adc  c                                           ; $424b: $89
	adc  c                                           ; $424c: $89
	sbc  c                                           ; $424d: $99
	sbc  b                                           ; $424e: $98
	sbc  d                                           ; $424f: $9a
	sbc  c                                           ; $4250: $99
	xor  d                                           ; $4251: $aa
	sbc  b                                           ; $4252: $98
	xor  e                                           ; $4253: $ab
	adc  e                                           ; $4254: $8b
	xor  b                                           ; $4255: $a8
	sbc  d                                           ; $4256: $9a
	xor  b                                           ; $4257: $a8
	adc  d                                           ; $4258: $8a
	sub  a                                           ; $4259: $97
	cp   c                                           ; $425a: $b9
	ld   a, d                                        ; $425b: $7a
	sbc  b                                           ; $425c: $98
	adc  c                                           ; $425d: $89
	sub  l                                           ; $425e: $95
	ld   a, c                                        ; $425f: $79
	ld   d, l                                        ; $4260: $55
	ld   d, h                                        ; $4261: $54
	ld   b, h                                        ; $4262: $44
	ld   d, e                                        ; $4263: $53
	dec  [hl]                                        ; $4264: $35
	ld   b, c                                        ; $4265: $41
	inc  sp                                          ; $4266: $33
	ld   bc, $2212                                   ; $4267: $01 $12 $22
	ld   d, l                                        ; $426a: $55
	ld   a, l                                        ; $426b: $7d
	call $ffff                                       ; $426c: $cd $ff $ff
	rst  $38                                         ; $426f: $ff
	rst  $38                                         ; $4270: $ff
	cp   $ff                                         ; $4271: $fe $ff
	db   $db                                         ; $4273: $db
	cp   l                                           ; $4274: $bd
	cp   c                                           ; $4275: $b9
	cp   d                                           ; $4276: $ba
	cp   l                                           ; $4277: $bd
	cp   d                                           ; $4278: $ba
	cp   d                                           ; $4279: $ba
	sub  [hl]                                        ; $427a: $96
	ld   b, h                                        ; $427b: $44
	ld   hl, $1111                                   ; $427c: $21 $11 $11
	ld   de, $1111                                   ; $427f: $11 $11 $11
	ld   de, $7a36                                   ; $4282: $11 $36 $7a
	rst  $28                                         ; $4285: $ef
	rst  $38                                         ; $4286: $ff
	rst  $38                                         ; $4287: $ff
	rst  $38                                         ; $4288: $ff
	rst  $38                                         ; $4289: $ff
	rst  $38                                         ; $428a: $ff
	xor  $ec                                         ; $428b: $ee $ec
	db   $dd                                         ; $428d: $dd
	call z, $fddf                                    ; $428e: $cc $df $fd
	sbc  $db                                         ; $4291: $de $db
	xor  c                                           ; $4293: $a9
	add  a                                           ; $4294: $87
	ld   b, e                                        ; $4295: $43
	inc  hl                                          ; $4296: $23
	ld   de, $1111                                   ; $4297: $11 $11 $11
	ld   de, $1111                                   ; $429a: $11 $11 $11
	ld   de, $3511                                   ; $429d: $11 $11 $35
	adc  e                                           ; $42a0: $8b
	rst  $38                                         ; $42a1: $ff
	rst  $38                                         ; $42a2: $ff
	rst  $38                                         ; $42a3: $ff
	rst  $38                                         ; $42a4: $ff
	rst  $38                                         ; $42a5: $ff
	rst  $38                                         ; $42a6: $ff

Call_0ac_42a7:
	db   $ec                                         ; $42a7: $ec
	call z, $bcab                                    ; $42a8: $cc $ab $bc
	db   $dd                                         ; $42ab: $dd
	rst  JumpTable                                         ; $42ac: $df
	db   $dd                                         ; $42ad: $dd
	res  7, c                                        ; $42ae: $cb $b9
	ld   h, [hl]                                     ; $42b0: $66
	ld   d, h                                        ; $42b1: $54
	ld   de, $1111                                   ; $42b2: $11 $11 $11
	ld   de, $1111                                   ; $42b5: $11 $11 $11
	ld   de, $1311                                   ; $42b8: $11 $11 $13
	ld   h, a                                        ; $42bb: $67
	ld   a, l                                        ; $42bc: $7d
	rst  $38                                         ; $42bd: $ff
	rst  $38                                         ; $42be: $ff
	rst  $38                                         ; $42bf: $ff
	rst  $38                                         ; $42c0: $ff
	rst  $38                                         ; $42c1: $ff
	cp   $cd                                         ; $42c2: $fe $cd
	cp   h                                           ; $42c4: $bc
	cp   d                                           ; $42c5: $ba
	call z, $eeee                                    ; $42c6: $cc $ee $ee
	db   $ed                                         ; $42c9: $ed
	cp   e                                           ; $42ca: $bb
	xor  c                                           ; $42cb: $a9
	ld   h, l                                        ; $42cc: $65
	ld   b, d                                        ; $42cd: $42
	ld   de, $1111                                   ; $42ce: $11 $11 $11
	ld   de, $1111                                   ; $42d1: $11 $11 $11
	ld   de, $3411                                   ; $42d4: $11 $11 $34
	ld   l, c                                        ; $42d7: $69
	rst  JumpTable                                         ; $42d8: $df
	rst  $38                                         ; $42d9: $ff
	rst  $38                                         ; $42da: $ff
	rst  $38                                         ; $42db: $ff
	rst  $38                                         ; $42dc: $ff
	rst  $38                                         ; $42dd: $ff
	cp   $dc                                         ; $42de: $fe $dc
	cp   e                                           ; $42e0: $bb
	cp   h                                           ; $42e1: $bc
	cp   l                                           ; $42e2: $bd
	db   $ed                                         ; $42e3: $ed
	db   $fd                                         ; $42e4: $fd
	db   $db                                         ; $42e5: $db
	cp   e                                           ; $42e6: $bb
	add  a                                           ; $42e7: $87
	ld   [hl], h                                     ; $42e8: $74
	ld   hl, $1111                                   ; $42e9: $21 $11 $11
	ld   de, $1111                                   ; $42ec: $11 $11 $11
	ld   de, $1111                                   ; $42ef: $11 $11 $11
	ld   e, b                                        ; $42f2: $58
	sbc  e                                           ; $42f3: $9b
	rst  $38                                         ; $42f4: $ff
	rst  $38                                         ; $42f5: $ff
	rst  $38                                         ; $42f6: $ff
	rst  $38                                         ; $42f7: $ff
	rst  $38                                         ; $42f8: $ff
	rst  $38                                         ; $42f9: $ff
	call c, $cbcb                                    ; $42fa: $dc $cb $cb
	cp   e                                           ; $42fd: $bb
	rst  JumpTable                                         ; $42fe: $df
	sbc  $ed                                         ; $42ff: $de $ed
	db   $db                                         ; $4301: $db
	xor  d                                           ; $4302: $aa
	add  [hl]                                        ; $4303: $86
	ld   b, e                                        ; $4304: $43
	ld   hl, $1111                                   ; $4305: $21 $11 $11
	ld   de, $1111                                   ; $4308: $11 $11 $11
	ld   de, $1411                                   ; $430b: $11 $11 $14
	sbc  c                                           ; $430e: $99
	xor  [hl]                                        ; $430f: $ae
	rst  $38                                         ; $4310: $ff
	rst  $38                                         ; $4311: $ff
	rst  $38                                         ; $4312: $ff
	rst  $38                                         ; $4313: $ff
	rst  $38                                         ; $4314: $ff
	cp   $cd                                         ; $4315: $fe $cd
	cp   h                                           ; $4317: $bc
	jp   z, $febc                                    ; $4318: $ca $bc $fe

	call $cbec                                       ; $431b: $cd $ec $cb
	sbc  c                                           ; $431e: $99
	halt                                             ; $431f: $76
	ld   b, d                                        ; $4320: $42
	ld   de, $1111                                   ; $4321: $11 $11 $11
	ld   de, $1111                                   ; $4324: $11 $11 $11
	ld   de, $3711                                   ; $4327: $11 $11 $37
	cp   e                                           ; $432a: $bb
	rst  JumpTable                                         ; $432b: $df
	rst  $38                                         ; $432c: $ff
	rst  $38                                         ; $432d: $ff
	rst  $38                                         ; $432e: $ff
	rst  $38                                         ; $432f: $ff
	rst  $38                                         ; $4330: $ff
	cp   $cb                                         ; $4331: $fe $cb
	xor  e                                           ; $4333: $ab
	res  7, h                                        ; $4334: $cb $bc
	db   $ed                                         ; $4336: $ed
	cp   h                                           ; $4337: $bc
	db   $ec                                         ; $4338: $ec
	jp   z, Jump_0ac_75a9                            ; $4339: $ca $a9 $75

	ld   hl, $1111                                   ; $433c: $21 $11 $11
	ld   de, $1111                                   ; $433f: $11 $11 $11
	ld   de, $1111                                   ; $4342: $11 $11 $11
	ld   e, c                                        ; $4345: $59
	sbc  e                                           ; $4346: $9b

Call_0ac_4347:
	rst  $38                                         ; $4347: $ff
	rst  $38                                         ; $4348: $ff
	rst  $38                                         ; $4349: $ff
	rst  $38                                         ; $434a: $ff
	rst  $38                                         ; $434b: $ff
	rst  $38                                         ; $434c: $ff
	db   $ed                                         ; $434d: $ed
	res  7, e                                        ; $434e: $cb $bb
	sbc  e                                           ; $4350: $9b
	cp   l                                           ; $4351: $bd
	db   $db                                         ; $4352: $db
	db   $dd                                         ; $4353: $dd
	call z, $a8ba                                    ; $4354: $cc $ba $a8
	ld   h, l                                        ; $4357: $65
	ld   [hl-], a                                    ; $4358: $32
	ld   de, $1111                                   ; $4359: $11 $11 $11
	ld   de, $1111                                   ; $435c: $11 $11 $11
	ld   de, $5613                                   ; $435f: $11 $13 $56
	xor  h                                           ; $4362: $ac
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4363: $cf
	rst  $38                                         ; $4364: $ff
	rst  $38                                         ; $4365: $ff
	rst  $38                                         ; $4366: $ff
	rst  $38                                         ; $4367: $ff
	rst  $38                                         ; $4368: $ff
	cp   $db                                         ; $4369: $fe $db
	cp   d                                           ; $436b: $ba
	xor  c                                           ; $436c: $a9
	xor  e                                           ; $436d: $ab
	xor  d                                           ; $436e: $aa
	xor  h                                           ; $436f: $ac
	jp   z, $a9ba                                    ; $4370: $ca $ba $a9

	ld   [hl], l                                     ; $4373: $75
	ld   b, h                                        ; $4374: $44
	ld   sp, $1111                                   ; $4375: $31 $11 $11
	ld   de, $1111                                   ; $4378: $11 $11 $11
	ld   de, $2511                                   ; $437b: $11 $11 $25
	ld   d, a                                        ; $437e: $57
	sbc  d                                           ; $437f: $9a
	set  7, a                                        ; $4380: $cb $ff
	rst  $38                                         ; $4382: $ff
	rst  $38                                         ; $4383: $ff
	rst  $38                                         ; $4384: $ff
	rst  $38                                         ; $4385: $ff
	db   $ed                                         ; $4386: $ed
	set  3, e                                        ; $4387: $cb $db
	cp   d                                           ; $4389: $ba
	xor  d                                           ; $438a: $aa
	xor  e                                           ; $438b: $ab
	xor  d                                           ; $438c: $aa
	xor  c                                           ; $438d: $a9
	xor  d                                           ; $438e: $aa
	sbc  e                                           ; $438f: $9b
	add  [hl]                                        ; $4390: $86
	add  h                                           ; $4391: $84
	ld   d, [hl]                                     ; $4392: $56
	ld   b, l                                        ; $4393: $45
	ld   [hl+], a                                    ; $4394: $22
	ld   b, d                                        ; $4395: $42
	ld   sp, $2112                                   ; $4396: $31 $12 $21
	ld   de, $2415                                   ; $4399: $11 $15 $24
	ld   h, l                                        ; $439c: $65
	adc  b                                           ; $439d: $88
	adc  d                                           ; $439e: $8a
	call $fffe                                       ; $439f: $cd $fe $ff
	rst  $38                                         ; $43a2: $ff
	rst  $38                                         ; $43a3: $ff
	rst  $38                                         ; $43a4: $ff
	call c, $cccc                                    ; $43a5: $dc $cc $cc
	cp   e                                           ; $43a8: $bb
	xor  d                                           ; $43a9: $aa
	xor  d                                           ; $43aa: $aa
	adc  d                                           ; $43ab: $8a
	xor  b                                           ; $43ac: $a8
	add  a                                           ; $43ad: $87
	add  a                                           ; $43ae: $87
	ld   h, a                                        ; $43af: $67
	ld   b, h                                        ; $43b0: $44
	ld   d, h                                        ; $43b1: $54
	ld   [hl+], a                                    ; $43b2: $22
	ld   hl, $1121                                   ; $43b3: $21 $21 $11
	ld   de, $1211                                   ; $43b6: $11 $11 $12
	inc  hl                                          ; $43b9: $23
	scf                                              ; $43ba: $37
	add  a                                           ; $43bb: $87
	xor  d                                           ; $43bc: $aa
	cp   [hl]                                        ; $43bd: $be
	rst  $38                                         ; $43be: $ff
	rst  $38                                         ; $43bf: $ff
	rst  $38                                         ; $43c0: $ff
	rst  $38                                         ; $43c1: $ff
	rst  $38                                         ; $43c2: $ff
	db   $ed                                         ; $43c3: $ed
	call c, $b8cc                                    ; $43c4: $dc $cc $b8
	xor  d                                           ; $43c7: $aa
	sbc  d                                           ; $43c8: $9a
	ld   a, d                                        ; $43c9: $7a
	sbc  b                                           ; $43ca: $98
	add  a                                           ; $43cb: $87
	halt                                             ; $43cc: $76
	ld   [hl], l                                     ; $43cd: $75
	ld   b, e                                        ; $43ce: $43
	ld   b, e                                        ; $43cf: $43
	ld   [hl+], a                                    ; $43d0: $22
	ld   de, $1111                                   ; $43d1: $11 $11 $11
	ld   de, $1211                                   ; $43d4: $11 $11 $12
	ld   b, e                                        ; $43d7: $43
	ld   b, [hl]                                     ; $43d8: $46
	adc  c                                           ; $43d9: $89
	xor  h                                           ; $43da: $ac
	adc  $ff                                         ; $43db: $ce $ff
	rst  $38                                         ; $43dd: $ff
	rst  $38                                         ; $43de: $ff
	rst  $38                                         ; $43df: $ff
	cp   $ed                                         ; $43e0: $fe $ed
	db   $db                                         ; $43e2: $db
	cp   h                                           ; $43e3: $bc
	xor  d                                           ; $43e4: $aa
	sbc  e                                           ; $43e5: $9b
	cp   d                                           ; $43e6: $ba
	adc  b                                           ; $43e7: $88
	sbc  c                                           ; $43e8: $99
	add  [hl]                                        ; $43e9: $86
	ld   [hl], a                                     ; $43ea: $77
	ld   d, l                                        ; $43eb: $55
	inc  sp                                          ; $43ec: $33
	ld   hl, $1111                                   ; $43ed: $21 $11 $11
	ld   de, $1111                                   ; $43f0: $11 $11 $11
	ld   de, $4512                                   ; $43f3: $11 $12 $45
	ld   l, d                                        ; $43f6: $6a
	xor  h                                           ; $43f7: $ac
	xor  $ff                                         ; $43f8: $ee $ff
	rst  $38                                         ; $43fa: $ff
	rst  $38                                         ; $43fb: $ff
	rst  $38                                         ; $43fc: $ff
	rst  $38                                         ; $43fd: $ff
	db   $fc                                         ; $43fe: $fc
	call c, $aaba                                    ; $43ff: $dc $ba $aa
	sbc  d                                           ; $4402: $9a
	sbc  d                                           ; $4403: $9a
	xor  c                                           ; $4404: $a9
	xor  b                                           ; $4405: $a8
	sbc  c                                           ; $4406: $99
	add  [hl]                                        ; $4407: $86
	ld   d, l                                        ; $4408: $55
	ld   sp, $1111                                   ; $4409: $31 $11 $11
	ld   de, $1111                                   ; $440c: $11 $11 $11
	ld   de, $3411                                   ; $440f: $11 $11 $34
	ld   c, b                                        ; $4412: $48
	xor  h                                           ; $4413: $ac
	rst  $28                                         ; $4414: $ef
	rst  $38                                         ; $4415: $ff
	rst  $38                                         ; $4416: $ff
	rst  $38                                         ; $4417: $ff
	rst  $38                                         ; $4418: $ff
	rst  $38                                         ; $4419: $ff
	cp   $ec                                         ; $441a: $fe $ec
	cp   d                                           ; $441c: $ba
	xor  c                                           ; $441d: $a9
	xor  c                                           ; $441e: $a9
	sbc  d                                           ; $441f: $9a
	sbc  c                                           ; $4420: $99
	xor  e                                           ; $4421: $ab
	xor  d                                           ; $4422: $aa
	sbc  b                                           ; $4423: $98
	ld   [hl], l                                     ; $4424: $75
	ld   b, d                                        ; $4425: $42
	ld   de, $1111                                   ; $4426: $11 $11 $11
	ld   de, $1111                                   ; $4429: $11 $11 $11
	ld   de, $4614                                   ; $442c: $11 $14 $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $442f: $cf
	rst  $38                                         ; $4430: $ff
	rst  $38                                         ; $4431: $ff
	rst  $38                                         ; $4432: $ff
	rst  $38                                         ; $4433: $ff
	rst  $38                                         ; $4434: $ff
	rst  $38                                         ; $4435: $ff
	cp   $db                                         ; $4436: $fe $db
	sbc  c                                           ; $4438: $99
	xor  b                                           ; $4439: $a8
	sbc  c                                           ; $443a: $99
	sbc  d                                           ; $443b: $9a
	xor  d                                           ; $443c: $aa
	cp   e                                           ; $443d: $bb
	jp   z, Jump_0ac_7599                            ; $443e: $ca $99 $75

	ld   sp, $1111                                   ; $4441: $31 $11 $11
	ld   de, $1111                                   ; $4444: $11 $11 $11
	ld   de, $4511                                   ; $4447: $11 $11 $45
	ld   a, e                                        ; $444a: $7b
	rst  $38                                         ; $444b: $ff
	rst  $38                                         ; $444c: $ff
	rst  $38                                         ; $444d: $ff
	rst  $38                                         ; $444e: $ff
	rst  $38                                         ; $444f: $ff
	rst  $38                                         ; $4450: $ff
	rst  $38                                         ; $4451: $ff
	db   $fd                                         ; $4452: $fd
	cp   d                                           ; $4453: $ba
	adc  c                                           ; $4454: $89
	adc  d                                           ; $4455: $8a
	sbc  c                                           ; $4456: $99
	xor  d                                           ; $4457: $aa
	cp   d                                           ; $4458: $ba
	cp   d                                           ; $4459: $ba
	xor  c                                           ; $445a: $a9
	add  a                                           ; $445b: $87
	ld   b, e                                        ; $445c: $43
	ld   de, $1111                                   ; $445d: $11 $11 $11
	ld   de, $1111                                   ; $4460: $11 $11 $11
	ld   de, $6924                                   ; $4463: $11 $24 $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4466: $cf
	rst  $38                                         ; $4467: $ff
	rst  $38                                         ; $4468: $ff
	rst  $38                                         ; $4469: $ff
	rst  $38                                         ; $446a: $ff
	rst  $38                                         ; $446b: $ff
	rst  $38                                         ; $446c: $ff
	db   $ed                                         ; $446d: $ed
	cp   e                                           ; $446e: $bb
	xor  b                                           ; $446f: $a8
	adc  c                                           ; $4470: $89
	sbc  c                                           ; $4471: $99
	xor  d                                           ; $4472: $aa
	cp   h                                           ; $4473: $bc
	cp   e                                           ; $4474: $bb
	xor  c                                           ; $4475: $a9
	add  a                                           ; $4476: $87
	ld   d, e                                        ; $4477: $53
	ld   de, $1111                                   ; $4478: $11 $11 $11
	ld   de, $1111                                   ; $447b: $11 $11 $11
	ld   de, $5714                                   ; $447e: $11 $14 $57
	xor  [hl]                                        ; $4481: $ae
	rst  $38                                         ; $4482: $ff
	rst  $38                                         ; $4483: $ff
	rst  $38                                         ; $4484: $ff
	rst  $38                                         ; $4485: $ff
	rst  $38                                         ; $4486: $ff
	rst  $38                                         ; $4487: $ff
	rst  $38                                         ; $4488: $ff
	res  5, c                                        ; $4489: $cb $a9
	sbc  c                                           ; $448b: $99
	sbc  c                                           ; $448c: $99
	sbc  d                                           ; $448d: $9a
	xor  d                                           ; $448e: $aa
	xor  e                                           ; $448f: $ab
	cp   d                                           ; $4490: $ba
	sub  a                                           ; $4491: $97
	ld   h, l                                        ; $4492: $65
	ld   sp, $1111                                   ; $4493: $31 $11 $11
	ld   de, $1111                                   ; $4496: $11 $11 $11
	ld   de, $3611                                   ; $4499: $11 $11 $36
	sbc  e                                           ; $449c: $9b
	rst  JumpTable                                         ; $449d: $df
	rst  $38                                         ; $449e: $ff
	rst  $38                                         ; $449f: $ff
	rst  $38                                         ; $44a0: $ff
	rst  $38                                         ; $44a1: $ff
	rst  $38                                         ; $44a2: $ff
	rst  $38                                         ; $44a3: $ff
	db   $ec                                         ; $44a4: $ec
	cp   d                                           ; $44a5: $ba
	sbc  c                                           ; $44a6: $99
	xor  d                                           ; $44a7: $aa
	sbc  d                                           ; $44a8: $9a
	cp   e                                           ; $44a9: $bb
	cp   e                                           ; $44aa: $bb
	xor  d                                           ; $44ab: $aa
	sbc  c                                           ; $44ac: $99
	halt                                             ; $44ad: $76
	ld   b, d                                        ; $44ae: $42
	ld   de, $1111                                   ; $44af: $11 $11 $11
	ld   de, $1111                                   ; $44b2: $11 $11 $11
	ld   de, $6714                                   ; $44b5: $11 $14 $67
	xor  h                                           ; $44b8: $ac
	rst  $38                                         ; $44b9: $ff
	rst  $38                                         ; $44ba: $ff
	rst  $38                                         ; $44bb: $ff
	rst  $38                                         ; $44bc: $ff
	rst  $38                                         ; $44bd: $ff
	rst  $38                                         ; $44be: $ff
	rst  $38                                         ; $44bf: $ff
	db   $ec                                         ; $44c0: $ec
	xor  d                                           ; $44c1: $aa
	xor  d                                           ; $44c2: $aa
	xor  d                                           ; $44c3: $aa
	xor  d                                           ; $44c4: $aa
	xor  e                                           ; $44c5: $ab
	cp   d                                           ; $44c6: $ba
	sbc  b                                           ; $44c7: $98
	adc  b                                           ; $44c8: $88
	ld   h, l                                        ; $44c9: $65
	ld   sp, $1111                                   ; $44ca: $31 $11 $11
	ld   de, $1111                                   ; $44cd: $11 $11 $11
	ld   de, $1411                                   ; $44d0: $11 $11 $14
	ld   l, b                                        ; $44d3: $68
	xor  h                                           ; $44d4: $ac
	rst  $28                                         ; $44d5: $ef
	rst  $38                                         ; $44d6: $ff
	rst  $38                                         ; $44d7: $ff
	rst  $38                                         ; $44d8: $ff
	rst  $38                                         ; $44d9: $ff
	rst  $38                                         ; $44da: $ff
	cp   $ec                                         ; $44db: $fe $ec
	jp   z, $abba                                    ; $44dd: $ca $ba $ab

	xor  d                                           ; $44e0: $aa
	xor  e                                           ; $44e1: $ab
	cp   d                                           ; $44e2: $ba
	sbc  c                                           ; $44e3: $99
	add  a                                           ; $44e4: $87
	ld   h, l                                        ; $44e5: $65
	ld   [hl-], a                                    ; $44e6: $32
	ld   de, $1111                                   ; $44e7: $11 $11 $11
	ld   de, $1111                                   ; $44ea: $11 $11 $11
	ld   de, $5714                                   ; $44ed: $11 $14 $57
	sbc  d                                           ; $44f0: $9a
	adc  $ff                                         ; $44f1: $ce $ff
	rst  $38                                         ; $44f3: $ff
	rst  $38                                         ; $44f4: $ff
	rst  $38                                         ; $44f5: $ff
	rst  $38                                         ; $44f6: $ff
	rst  $38                                         ; $44f7: $ff
	db   $fd                                         ; $44f8: $fd
	call c, $abbb                                    ; $44f9: $dc $bb $ab
	xor  d                                           ; $44fc: $aa
	xor  c                                           ; $44fd: $a9
	xor  d                                           ; $44fe: $aa
	sbc  c                                           ; $44ff: $99
	sub  a                                           ; $4500: $97
	ld   h, l                                        ; $4501: $65
	ld   b, h                                        ; $4502: $44
	ld   sp, $1111                                   ; $4503: $31 $11 $11
	ld   de, $1111                                   ; $4506: $11 $11 $11
	ld   de, $3511                                   ; $4509: $11 $11 $35
	ld   l, b                                        ; $450c: $68
	sbc  d                                           ; $450d: $9a
	adc  $ff                                         ; $450e: $ce $ff
	rst  $38                                         ; $4510: $ff
	rst  $38                                         ; $4511: $ff
	rst  $38                                         ; $4512: $ff
	rst  $38                                         ; $4513: $ff
	rst  $38                                         ; $4514: $ff
	db   $dd                                         ; $4515: $dd
	call c, $bbca                                    ; $4516: $dc $ca $bb
	xor  d                                           ; $4519: $aa
	xor  d                                           ; $451a: $aa
	xor  c                                           ; $451b: $a9
	sbc  c                                           ; $451c: $99
	add  a                                           ; $451d: $87
	ld   h, [hl]                                     ; $451e: $66
	ld   b, d                                        ; $451f: $42
	ld   hl, $1111                                   ; $4520: $21 $11 $11
	ld   de, $1111                                   ; $4523: $11 $11 $11
	ld   de, $3511                                   ; $4526: $11 $11 $35
	ld   h, a                                        ; $4529: $67
	sbc  d                                           ; $452a: $9a
	call $ffff                                       ; $452b: $cd $ff $ff
	rst  $38                                         ; $452e: $ff
	rst  $38                                         ; $452f: $ff
	rst  $38                                         ; $4530: $ff
	db   $fd                                         ; $4531: $fd
	call c, $ccdd                                    ; $4532: $dc $dd $cc
	cp   e                                           ; $4535: $bb
	xor  d                                           ; $4536: $aa
	xor  d                                           ; $4537: $aa
	xor  d                                           ; $4538: $aa
	sbc  c                                           ; $4539: $99
	add  a                                           ; $453a: $87
	ld   h, l                                        ; $453b: $65
	ld   b, h                                        ; $453c: $44
	ld   [hl-], a                                    ; $453d: $32
	ld   de, $1111                                   ; $453e: $11 $11 $11
	ld   de, $1111                                   ; $4541: $11 $11 $11
	ld   de, $4612                                   ; $4544: $11 $12 $46
	ld   a, b                                        ; $4547: $78
	sbc  d                                           ; $4548: $9a
	adc  $ff                                         ; $4549: $ce $ff
	rst  $38                                         ; $454b: $ff
	rst  $38                                         ; $454c: $ff
	rst  $38                                         ; $454d: $ff
	rst  $38                                         ; $454e: $ff
	xor  $dc                                         ; $454f: $ee $dc
	call z, $a9cb                                    ; $4551: $cc $cb $a9
	sbc  c                                           ; $4554: $99
	xor  d                                           ; $4555: $aa
	xor  d                                           ; $4556: $aa
	sbc  b                                           ; $4557: $98
	add  a                                           ; $4558: $87
	ld   h, [hl]                                     ; $4559: $66
	ld   d, h                                        ; $455a: $54
	ld   [hl-], a                                    ; $455b: $32
	ld   de, $1111                                   ; $455c: $11 $11 $11
	ld   de, $1111                                   ; $455f: $11 $11 $11
	ld   de, $5714                                   ; $4562: $11 $14 $57
	adc  c                                           ; $4565: $89
	cp   e                                           ; $4566: $bb
	xor  $ff                                         ; $4567: $ee $ff
	rst  $38                                         ; $4569: $ff
	rst  $38                                         ; $456a: $ff
	rst  $38                                         ; $456b: $ff
	rst  $38                                         ; $456c: $ff
	db   $dd                                         ; $456d: $dd
	res  7, h                                        ; $456e: $cb $bc
	cp   d                                           ; $4570: $ba
	xor  c                                           ; $4571: $a9
	xor  d                                           ; $4572: $aa
	xor  d                                           ; $4573: $aa
	sbc  c                                           ; $4574: $99
	adc  b                                           ; $4575: $88
	adc  b                                           ; $4576: $88
	ld   h, l                                        ; $4577: $65
	ld   b, e                                        ; $4578: $43
	ld   [hl+], a                                    ; $4579: $22
	ld   de, $1111                                   ; $457a: $11 $11 $11
	ld   de, $1111                                   ; $457d: $11 $11 $11
	ld   de, $5724                                   ; $4580: $11 $24 $57
	sbc  c                                           ; $4583: $99
	xor  h                                           ; $4584: $ac
	sbc  $ff                                         ; $4585: $de $ff
	rst  $38                                         ; $4587: $ff
	rst  $38                                         ; $4588: $ff
	rst  $38                                         ; $4589: $ff
	cp   $dc                                         ; $458a: $fe $dc
	cp   h                                           ; $458c: $bc
	cp   e                                           ; $458d: $bb
	cp   h                                           ; $458e: $bc
	cp   e                                           ; $458f: $bb
	sbc  c                                           ; $4590: $99
	sbc  c                                           ; $4591: $99
	cp   e                                           ; $4592: $bb
	xor  c                                           ; $4593: $a9
	add  [hl]                                        ; $4594: $86
	ld   h, l                                        ; $4595: $65
	ld   b, h                                        ; $4596: $44
	ld   [hl-], a                                    ; $4597: $32
	ld   de, $1111                                   ; $4598: $11 $11 $11
	ld   de, $1111                                   ; $459b: $11 $11 $11
	ld   de, $5713                                   ; $459e: $11 $13 $57
	sbc  d                                           ; $45a1: $9a
	xor  e                                           ; $45a2: $ab
	call $ffef                                       ; $45a3: $cd $ef $ff

Call_0ac_45a6:
	rst  $38                                         ; $45a6: $ff
	rst  $38                                         ; $45a7: $ff
	cp   $ed                                         ; $45a8: $fe $ed
	res  7, h                                        ; $45aa: $cb $bc
	call z, $bacc                                    ; $45ac: $cc $cc $ba
	xor  c                                           ; $45af: $a9
	xor  d                                           ; $45b0: $aa
	xor  b                                           ; $45b1: $a8
	add  a                                           ; $45b2: $87
	ld   h, l                                        ; $45b3: $65
	ld   b, h                                        ; $45b4: $44
	ld   [hl-], a                                    ; $45b5: $32
	ld   [hl+], a                                    ; $45b6: $22
	ld   de, $1111                                   ; $45b7: $11 $11 $11
	ld   de, $1111                                   ; $45ba: $11 $11 $11
	ld   de, $8a46                                   ; $45bd: $11 $46 $8a
	cp   h                                           ; $45c0: $bc
	call $ffef                                       ; $45c1: $cd $ef $ff
	rst  $38                                         ; $45c4: $ff
	rst  $38                                         ; $45c5: $ff
	xor  $ec                                         ; $45c6: $ee $ec
	cp   e                                           ; $45c8: $bb
	cp   e                                           ; $45c9: $bb
	call c, $bccc                                    ; $45ca: $dc $cc $bc
	cp   d                                           ; $45cd: $ba
	cp   d                                           ; $45ce: $ba
	sbc  c                                           ; $45cf: $99
	add  a                                           ; $45d0: $87
	ld   h, l                                        ; $45d1: $65
	ld   d, h                                        ; $45d2: $54
	ld   [hl-], a                                    ; $45d3: $32
	ld   [hl+], a                                    ; $45d4: $22
	ld   hl, $1101                                   ; $45d5: $21 $01 $11
	ld   de, $1111                                   ; $45d8: $11 $11 $11
	ld   de, $8a36                                   ; $45db: $11 $36 $8a
	set  1, l                                        ; $45de: $cb $cd
	rst  $28                                         ; $45e0: $ef
	rst  $38                                         ; $45e1: $ff
	rst  $38                                         ; $45e2: $ff
	rst  $38                                         ; $45e3: $ff
	xor  $dd                                         ; $45e4: $ee $dd
	cp   e                                           ; $45e6: $bb
	cp   e                                           ; $45e7: $bb
	db   $dd                                         ; $45e8: $dd
	db   $dd                                         ; $45e9: $dd
	db   $db                                         ; $45ea: $db
	xor  e                                           ; $45eb: $ab
	xor  d                                           ; $45ec: $aa
	sbc  c                                           ; $45ed: $99
	ld   [hl], a                                     ; $45ee: $77
	halt                                             ; $45ef: $76
	ld   d, h                                        ; $45f0: $54
	ld   [hl-], a                                    ; $45f1: $32
	ld   [hl+], a                                    ; $45f2: $22
	ld   de, $1111                                   ; $45f3: $11 $11 $11
	ld   de, $1111                                   ; $45f6: $11 $11 $11
	ld   de, $9b25                                   ; $45f9: $11 $25 $9b
	db   $dd                                         ; $45fc: $dd
	sbc  $ef                                         ; $45fd: $de $ef
	rst  $38                                         ; $45ff: $ff
	rst  $38                                         ; $4600: $ff
	cp   $ee                                         ; $4601: $fe $ee
	db   $dd                                         ; $4603: $dd
	call c, $debc                                    ; $4604: $dc $bc $de
	db   $ed                                         ; $4607: $ed
	call c, $abbb                                    ; $4608: $dc $bb $ab
	sbc  b                                           ; $460b: $98
	add  a                                           ; $460c: $87
	ld   d, l                                        ; $460d: $55
	ld   d, h                                        ; $460e: $54
	ld   b, e                                        ; $460f: $43
	ld   [hl+], a                                    ; $4610: $22
	ld   de, $1111                                   ; $4611: $11 $11 $11
	ld   de, $1111                                   ; $4614: $11 $11 $11
	ld   de, $9b36                                   ; $4617: $11 $36 $9b
	xor  $ff                                         ; $461a: $ee $ff
	rst  $38                                         ; $461c: $ff
	rst  $38                                         ; $461d: $ff
	cp   $ee                                         ; $461e: $fe $ee
	xor  $dc                                         ; $4620: $ee $dc
	db   $dd                                         ; $4622: $dd
	db   $dd                                         ; $4623: $dd
	sbc  $de                                         ; $4624: $de $de
	call c, $a9bb                                    ; $4626: $dc $bb $a9
	sbc  b                                           ; $4629: $98
	halt                                             ; $462a: $76
	ld   h, l                                        ; $462b: $65
	ld   d, e                                        ; $462c: $53
	ld   [hl-], a                                    ; $462d: $32
	ld   [hl+], a                                    ; $462e: $22
	ld   hl, $1111                                   ; $462f: $21 $11 $11
	ld   de, $1111                                   ; $4632: $11 $11 $11
	ld   de, $ce5a                                   ; $4635: $11 $5a $ce
	db   $dd                                         ; $4638: $dd
	rst  JumpTable                                         ; $4639: $df
	rst  $38                                         ; $463a: $ff
	cp   $dc                                         ; $463b: $fe $dc
	adc  $ff                                         ; $463d: $ce $ff
	call c, $dfcc                                    ; $463f: $dc $cc $df
	cp   $dc                                         ; $4642: $fe $dc
	cp   d                                           ; $4644: $ba
	cp   d                                           ; $4645: $ba
	xor  b                                           ; $4646: $a8
	halt                                             ; $4647: $76
	ld   h, a                                        ; $4648: $67
	ld   [hl], a                                     ; $4649: $77
	ld   d, e                                        ; $464a: $53
	ld   hl, $1111                                   ; $464b: $21 $11 $11
	ld   de, $1111                                   ; $464e: $11 $11 $11
	ld   de, $2611                                   ; $4651: $11 $11 $26
	sbc  e                                           ; $4654: $9b
	call z, $ffef                                    ; $4655: $cc $ef $ff
	rst  $38                                         ; $4658: $ff
	call c, $ffee                                    ; $4659: $dc $ee $ff
	db   $ed                                         ; $465c: $ed
	db   $dd                                         ; $465d: $dd
	adc  $ee                                         ; $465e: $ce $ee
	db   $dd                                         ; $4660: $dd
	res  7, c                                        ; $4661: $cb $b9
	sbc  b                                           ; $4663: $98
	add  a                                           ; $4664: $87
	ld   [hl], a                                     ; $4665: $77
	ld   [hl], a                                     ; $4666: $77
	ld   h, l                                        ; $4667: $65
	ld   [hl-], a                                    ; $4668: $32
	ld   de, $1111                                   ; $4669: $11 $11 $11
	ld   de, $1111                                   ; $466c: $11 $11 $11
	ld   de, $ac15                                   ; $466f: $11 $15 $ac
	db   $ed                                         ; $4672: $ed
	cp   h                                           ; $4673: $bc
	rst  $28                                         ; $4674: $ef
	cp   $cb                                         ; $4675: $fe $cb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4677: $cf
	rst  $38                                         ; $4678: $ff
	db   $fd                                         ; $4679: $fd
	call c, $eede                                    ; $467a: $dc $de $ee
	call c, $aabb                                    ; $467d: $dc $bb $aa
	xor  d                                           ; $4680: $aa
	xor  b                                           ; $4681: $a8
	adc  b                                           ; $4682: $88
	adc  b                                           ; $4683: $88
	ld   [hl], l                                     ; $4684: $75
	ld   [hl-], a                                    ; $4685: $32
	ld   de, $1111                                   ; $4686: $11 $11 $11
	ld   de, $2111                                   ; $4689: $11 $11 $21
	ld   de, $9d15                                   ; $468c: $11 $15 $9d
	ld   a, [$df8a]                                  ; $468f: $fa $8a $df
	rst  $38                                         ; $4692: $ff
	ret  z                                           ; $4693: $c8

	sbc  $ff                                         ; $4694: $de $ff
	cp   $aa                                         ; $4696: $fe $aa
	cp   $fe                                         ; $4698: $fe $fe
	xor  e                                           ; $469a: $ab
	xor  l                                           ; $469b: $ad
	ld   [$79a8], a                                  ; $469c: $ea $a8 $79
	sbc  d                                           ; $469f: $9a
	sub  [hl]                                        ; $46a0: $96
	ld   d, h                                        ; $46a1: $54
	dec  [hl]                                        ; $46a2: $35
	ld   sp, $1111                                   ; $46a3: $31 $11 $11
	ld   de, $1111                                   ; $46a6: $11 $11 $11
	ld   de, $9913                                   ; $46a9: $11 $13 $99
	call $cdbc                                       ; $46ac: $cd $bc $cd
	db   $fd                                         ; $46af: $fd
	sbc  $df                                         ; $46b0: $de $df
	rst  $38                                         ; $46b2: $ff
	db   $fd                                         ; $46b3: $fd
	sbc  $ee                                         ; $46b4: $de $ee
	db   $db                                         ; $46b6: $db
	cp   e                                           ; $46b7: $bb
	call z, $b9a9                                    ; $46b8: $cc $a9 $b9
	cp   d                                           ; $46bb: $ba
	sbc  c                                           ; $46bc: $99
	ld   [hl], a                                     ; $46bd: $77
	ld   [hl], h                                     ; $46be: $74
	ld   b, d                                        ; $46bf: $42
	ld   [de], a                                     ; $46c0: $12
	ld   de, $1111                                   ; $46c1: $11 $11 $11
	ld   de, $1111                                   ; $46c4: $11 $11 $11
	ld   h, $9c                                      ; $46c7: $26 $9c
	db   $eb                                         ; $46c9: $eb
	adc  d                                           ; $46ca: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46cb: $cf
	xor  $db                                         ; $46cc: $ee $db
	rst  $28                                         ; $46ce: $ef
	rst  $38                                         ; $46cf: $ff
	db   $fc                                         ; $46d0: $fc
	sbc  e                                           ; $46d1: $9b
	xor  $ec                                         ; $46d2: $ee $ec
	cp   h                                           ; $46d4: $bc
	adc  $c9                                         ; $46d5: $ce $c9
	sbc  b                                           ; $46d7: $98
	xor  e                                           ; $46d8: $ab
	sbc  b                                           ; $46d9: $98
	ld   [hl], l                                     ; $46da: $75
	ld   d, l                                        ; $46db: $55
	ld   b, e                                        ; $46dc: $43
	ld   hl, $1111                                   ; $46dd: $21 $11 $11
	ld   de, $1121                                   ; $46e0: $11 $21 $11
	inc  de                                          ; $46e3: $13
	ld   l, d                                        ; $46e4: $6a
	xor  d                                           ; $46e5: $aa
	call c, $bbbd                                    ; $46e6: $dc $bd $bb
	call $ffff                                       ; $46e9: $cd $ff $ff
	rst  $38                                         ; $46ec: $ff
	cp   $bd                                         ; $46ed: $fe $bd
	db   $dd                                         ; $46ef: $dd
	set  3, e                                        ; $46f0: $cb $db
	cp   h                                           ; $46f2: $bc
	xor  c                                           ; $46f3: $a9
	sbc  c                                           ; $46f4: $99
	xor  d                                           ; $46f5: $aa
	xor  b                                           ; $46f6: $a8
	ld   d, l                                        ; $46f7: $55
	ld   d, d                                        ; $46f8: $52
	ld   [hl+], a                                    ; $46f9: $22
	ld   de, $1111                                   ; $46fa: $11 $11 $11
	ld   de, $1111                                   ; $46fd: $11 $11 $11
	dec  h                                           ; $4700: $25
	ld   a, c                                        ; $4701: $79
	cp   h                                           ; $4702: $bc
	cp   b                                           ; $4703: $b8
	call $bcce                                       ; $4704: $cd $ce $bc
	db   $fd                                         ; $4707: $fd
	rst  $38                                         ; $4708: $ff
	rst  $28                                         ; $4709: $ef
	cp   l                                           ; $470a: $bd
	db   $ec                                         ; $470b: $ec
	ld   a, [$bdad]                                  ; $470c: $fa $ad $bd
	res  6, a                                        ; $470f: $cb $b7
	sbc  d                                           ; $4711: $9a
	ld   [hl], a                                     ; $4712: $77
	halt                                             ; $4713: $76
	ld   h, [hl]                                     ; $4714: $66
	ld   h, d                                        ; $4715: $62
	ld   de, $3311                                   ; $4716: $11 $11 $33
	ld   de, $1111                                   ; $4719: $11 $11 $11
	inc  sp                                          ; $471c: $33
	dec  h                                           ; $471d: $25
	sbc  d                                           ; $471e: $9a
	xor  e                                           ; $471f: $ab
	adc  l                                           ; $4720: $8d
	jp   c, $ceea                                    ; $4721: $da $ea $ce

	rst  JumpTable                                         ; $4724: $df
	cp   $fa                                         ; $4725: $fe $fa
	call $aabe                                       ; $4727: $cd $be $aa
	jp   z, $88ed                                    ; $472a: $ca $ed $88

	ld   l, b                                        ; $472d: $68
	cp   c                                           ; $472e: $b9
	add  a                                           ; $472f: $87
	dec  [hl]                                        ; $4730: $35
	ld   h, l                                        ; $4731: $65
	ld   b, c                                        ; $4732: $41
	ld   de, $4215                                   ; $4733: $11 $15 $42
	ld   de, $1111                                   ; $4736: $11 $11 $11
	inc  [hl]                                        ; $4739: $34
	ld   l, d                                        ; $473a: $6a

Jump_0ac_473b:
	cp   l                                           ; $473b: $bd
	reti                                             ; $473c: $d9


	xor  d                                           ; $473d: $aa
	adc  l                                           ; $473e: $8d
	rst  $38                                         ; $473f: $ff
	ei                                               ; $4740: $fb
	call z, $fecf                                    ; $4741: $cc $cf $fe
	db   $eb                                         ; $4744: $eb
	res  7, l                                        ; $4745: $cb $bd
	add  a                                           ; $4747: $87
	and  a                                           ; $4748: $a7
	xor  l                                           ; $4749: $ad
	sbc  b                                           ; $474a: $98
	ld   d, a                                        ; $474b: $57
	ld   [hl], l                                     ; $474c: $75
	add  l                                           ; $474d: $85
	ld   de, $4521                                   ; $474e: $11 $21 $45
	ld   hl, $1111                                   ; $4751: $21 $11 $11
	inc  de                                          ; $4754: $13
	inc  h                                           ; $4755: $24
	adc  e                                           ; $4756: $8b
	sbc  b                                           ; $4757: $98
	xor  b                                           ; $4758: $a8
	sbc  l                                           ; $4759: $9d
	xor  e                                           ; $475a: $ab
	xor  $ee                                         ; $475b: $ee $ee
	db   $fc                                         ; $475d: $fc
	adc  $cd                                         ; $475e: $ce $cd
	db   $ec                                         ; $4760: $ec
	cp   e                                           ; $4761: $bb
	jp   z, $879a                                    ; $4762: $ca $9a $87

	sbc  e                                           ; $4765: $9b
	sbc  c                                           ; $4766: $99
	add  a                                           ; $4767: $87
	ld   h, l                                        ; $4768: $65
	ld   d, l                                        ; $4769: $55
	inc  [hl]                                        ; $476a: $34
	inc  hl                                          ; $476b: $23
	ld   d, e                                        ; $476c: $53
	ld   [hl+], a                                    ; $476d: $22
	ld   [de], a                                     ; $476e: $12
	ld   hl, $4711                                   ; $476f: $21 $11 $47
	ld   c, c                                        ; $4772: $49
	add  [hl]                                        ; $4773: $86
	sbc  c                                           ; $4774: $99
	db   $db                                         ; $4775: $db
	xor  l                                           ; $4776: $ad
	sbc  h                                           ; $4777: $9c
	cp   c                                           ; $4778: $b9
	cp   $de                                         ; $4779: $fe $de
	xor  h                                           ; $477b: $ac
	call c, $99eb                                    ; $477c: $dc $eb $99
	sbc  h                                           ; $477f: $9c
	cp   c                                           ; $4780: $b9
	or   a                                           ; $4781: $b7
	ld   a, c                                        ; $4782: $79
	adc  d                                           ; $4783: $8a
	ld   [hl], h                                     ; $4784: $74
	ld   d, c                                        ; $4785: $51
	ld   d, [hl]                                     ; $4786: $56
	ld   b, a                                        ; $4787: $47
	ld   b, c                                        ; $4788: $41
	ld   hl, $3156                                   ; $4789: $21 $56 $31
	inc  de                                          ; $478c: $13
	ld   b, l                                        ; $478d: $45
	ld   a, b                                        ; $478e: $78
	ld   a, b                                        ; $478f: $78
	xor  e                                           ; $4790: $ab
	and  l                                           ; $4791: $a5
	sbc  e                                           ; $4792: $9b
	sbc  a                                           ; $4793: $9f
	xor  h                                           ; $4794: $ac
	and  $da                                         ; $4795: $e6 $da
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4797: $cf
	xor  [hl]                                        ; $4798: $ae
	xor  c                                           ; $4799: $a9
	jp   hl                                          ; $479a: $e9


	sbc  e                                           ; $479b: $9b
	ld   l, c                                        ; $479c: $69
	cp   c                                           ; $479d: $b9
	and  a                                           ; $479e: $a7
	ld   l, c                                        ; $479f: $69
	ld   l, c                                        ; $47a0: $69
	add  e                                           ; $47a1: $83
	ld   d, e                                        ; $47a2: $53
	ld   [hl], $56                                   ; $47a3: $36 $56
	ld   b, e                                        ; $47a5: $43
	inc  sp                                          ; $47a6: $33
	ld   d, l                                        ; $47a7: $55
	ld   b, e                                        ; $47a8: $43
	ld   b, l                                        ; $47a9: $45
	ld   a, c                                        ; $47aa: $79
	inc  [hl]                                        ; $47ab: $34
	xor  d                                           ; $47ac: $aa
	call c, $a96a                                    ; $47ad: $dc $6a $a9
	jp   c, $8cac                                    ; $47b0: $da $ac $8c

	jp   z, $abfa                                    ; $47b3: $ca $fa $ab

	ld   a, h                                        ; $47b6: $7c
	xor  d                                           ; $47b7: $aa
	cp   b                                           ; $47b8: $b8
	ld   a, d                                        ; $47b9: $7a
	ld   l, c                                        ; $47ba: $69
	or   a                                           ; $47bb: $b7
	sub  [hl]                                        ; $47bc: $96
	ld   d, a                                        ; $47bd: $57
	ld   d, [hl]                                     ; $47be: $56
	ld   h, e                                        ; $47bf: $63
	ld   b, h                                        ; $47c0: $44
	ld   h, [hl]                                     ; $47c1: $66
	ld   d, l                                        ; $47c2: $55
	ld   b, e                                        ; $47c3: $43
	ld   h, a                                        ; $47c4: $67
	ld   h, [hl]                                     ; $47c5: $66
	ld   d, l                                        ; $47c6: $55
	ld   a, b                                        ; $47c7: $78
	sub  a                                           ; $47c8: $97
	ld   a, b                                        ; $47c9: $78
	cp   h                                           ; $47ca: $bc
	xor  c                                           ; $47cb: $a9
	ld   e, c                                        ; $47cc: $59
	call z, $9ad9                                    ; $47cd: $cc $d9 $9a
	sbc  h                                           ; $47d0: $9c
	xor  d                                           ; $47d1: $aa
	sbc  c                                           ; $47d2: $99
	xor  d                                           ; $47d3: $aa
	cp   d                                           ; $47d4: $ba
	ld   a, c                                        ; $47d5: $79
	xor  b                                           ; $47d6: $a8
	cp   c                                           ; $47d7: $b9
	ld   d, [hl]                                     ; $47d8: $56
	ld   c, b                                        ; $47d9: $48
	ld   [hl], a                                     ; $47da: $77
	add  h                                           ; $47db: $84
	ld   b, l                                        ; $47dc: $45
	ld   b, l                                        ; $47dd: $45
	halt                                             ; $47de: $76
	ld   h, l                                        ; $47df: $65
	ld   h, a                                        ; $47e0: $67
	ld   d, a                                        ; $47e1: $57
	sub  l                                           ; $47e2: $95
	ld   d, [hl]                                     ; $47e3: $56
	adc  e                                           ; $47e4: $8b
	or   a                                           ; $47e5: $b7
	ld   c, b                                        ; $47e6: $48
	xor  d                                           ; $47e7: $aa
	ret  c                                           ; $47e8: $d8

	ld   c, c                                        ; $47e9: $49
	xor  d                                           ; $47ea: $aa
	db   $db                                         ; $47eb: $db
	ld   a, b                                        ; $47ec: $78
	xor  e                                           ; $47ed: $ab
	jp   z, Jump_0ac_6b96                            ; $47ee: $ca $96 $6b

	adc  d                                           ; $47f1: $8a
	and  l                                           ; $47f2: $a5
	sub  a                                           ; $47f3: $97
	adc  d                                           ; $47f4: $8a
	halt                                             ; $47f5: $76
	add  [hl]                                        ; $47f6: $86
	ld   a, b                                        ; $47f7: $78
	ld   d, a                                        ; $47f8: $57
	ld   b, h                                        ; $47f9: $44
	ld   [hl], l                                     ; $47fa: $75
	add  a                                           ; $47fb: $87
	ld   h, a                                        ; $47fc: $67
	ld   [hl], a                                     ; $47fd: $77
	ld   d, [hl]                                     ; $47fe: $56
	ld   [hl], a                                     ; $47ff: $77
	sbc  d                                           ; $4800: $9a
	adc  b                                           ; $4801: $88
	sbc  b                                           ; $4802: $98
	ld   d, [hl]                                     ; $4803: $56
	sbc  e                                           ; $4804: $9b
	db   $db                                         ; $4805: $db
	sub  [hl]                                        ; $4806: $96
	ld   l, c                                        ; $4807: $69
	xor  d                                           ; $4808: $aa
	xor  b                                           ; $4809: $a8
	adc  d                                           ; $480a: $8a
	xor  b                                           ; $480b: $a8
	sbc  c                                           ; $480c: $99
	sbc  d                                           ; $480d: $9a
	xor  b                                           ; $480e: $a8
	ld   h, a                                        ; $480f: $67
	ld   [hl], a                                     ; $4810: $77
	ld   [hl], a                                     ; $4811: $77
	ld   [hl], a                                     ; $4812: $77
	add  a                                           ; $4813: $87
	ld   h, [hl]                                     ; $4814: $66
	ld   [hl], a                                     ; $4815: $77
	ld   [hl], a                                     ; $4816: $77
	ld   h, [hl]                                     ; $4817: $66
	ld   [hl], l                                     ; $4818: $75
	ld   h, a                                        ; $4819: $67
	ld   l, b                                        ; $481a: $68
	sbc  b                                           ; $481b: $98
	ld   [hl], a                                     ; $481c: $77
	ld   h, a                                        ; $481d: $67
	sbc  c                                           ; $481e: $99
	adc  b                                           ; $481f: $88
	sub  a                                           ; $4820: $97
	sbc  d                                           ; $4821: $9a
	adc  b                                           ; $4822: $88
	sbc  b                                           ; $4823: $98
	adc  b                                           ; $4824: $88
	sub  a                                           ; $4825: $97
	adc  e                                           ; $4826: $8b
	and  a                                           ; $4827: $a7
	add  a                                           ; $4828: $87
	ld   a, c                                        ; $4829: $79
	and  a                                           ; $482a: $a7
	ld   [hl], l                                     ; $482b: $75
	ld   l, c                                        ; $482c: $69
	sbc  c                                           ; $482d: $99
	ld   h, [hl]                                     ; $482e: $66
	ld   a, c                                        ; $482f: $79
	xor  b                                           ; $4830: $a8
	ld   h, l                                        ; $4831: $65
	ld   h, [hl]                                     ; $4832: $66
	sbc  b                                           ; $4833: $98
	ld   h, a                                        ; $4834: $67
	ld   [hl], a                                     ; $4835: $77
	adc  c                                           ; $4836: $89
	add  a                                           ; $4837: $87
	add  [hl]                                        ; $4838: $86
	ld   h, a                                        ; $4839: $67
	ld   a, b                                        ; $483a: $78
	sbc  d                                           ; $483b: $9a
	sbc  b                                           ; $483c: $98
	ld   a, b                                        ; $483d: $78
	ld   a, d                                        ; $483e: $7a
	sub  a                                           ; $483f: $97
	sub  a                                           ; $4840: $97
	ld   a, c                                        ; $4841: $79
	sub  a                                           ; $4842: $97
	adc  b                                           ; $4843: $88
	adc  c                                           ; $4844: $89
	adc  c                                           ; $4845: $89
	ld   [hl], a                                     ; $4846: $77
	ld   [hl], a                                     ; $4847: $77
	adc  b                                           ; $4848: $88
	add  a                                           ; $4849: $87
	adc  c                                           ; $484a: $89
	adc  b                                           ; $484b: $88
	ld   [hl], a                                     ; $484c: $77
	ld   a, c                                        ; $484d: $79
	add  a                                           ; $484e: $87
	adc  b                                           ; $484f: $88
	ld   [hl], a                                     ; $4850: $77
	add  a                                           ; $4851: $87
	adc  b                                           ; $4852: $88
	ld   a, b                                        ; $4853: $78
	adc  b                                           ; $4854: $88
	sbc  b                                           ; $4855: $98
	add  a                                           ; $4856: $87
	ld   a, c                                        ; $4857: $79
	sbc  b                                           ; $4858: $98
	add  a                                           ; $4859: $87
	adc  c                                           ; $485a: $89
	sbc  c                                           ; $485b: $99
	adc  b                                           ; $485c: $88
	add  a                                           ; $485d: $87
	sbc  c                                           ; $485e: $99
	adc  c                                           ; $485f: $89
	adc  c                                           ; $4860: $89
	sub  a                                           ; $4861: $97
	ld   [hl], a                                     ; $4862: $77
	sbc  c                                           ; $4863: $99
	sbc  c                                           ; $4864: $99
	add  a                                           ; $4865: $87
	ld   a, b                                        ; $4866: $78
	adc  b                                           ; $4867: $88
	adc  b                                           ; $4868: $88
	adc  b                                           ; $4869: $88
	add  a                                           ; $486a: $87
	ld   a, b                                        ; $486b: $78
	adc  b                                           ; $486c: $88
	adc  b                                           ; $486d: $88
	adc  b                                           ; $486e: $88
	ld   [hl], a                                     ; $486f: $77
	adc  b                                           ; $4870: $88
	sbc  b                                           ; $4871: $98
	add  a                                           ; $4872: $87
	ld   a, b                                        ; $4873: $78
	sbc  b                                           ; $4874: $98
	add  a                                           ; $4875: $87
	adc  c                                           ; $4876: $89
	xor  c                                           ; $4877: $a9
	adc  c                                           ; $4878: $89
	adc  b                                           ; $4879: $88
	sub  a                                           ; $487a: $97
	adc  c                                           ; $487b: $89
	sbc  b                                           ; $487c: $98
	sbc  b                                           ; $487d: $98
	ld   a, c                                        ; $487e: $79
	adc  c                                           ; $487f: $89
	adc  b                                           ; $4880: $88
	ld   a, b                                        ; $4881: $78
	adc  b                                           ; $4882: $88
	adc  c                                           ; $4883: $89
	adc  c                                           ; $4884: $89
	sbc  b                                           ; $4885: $98
	sbc  b                                           ; $4886: $98
	adc  c                                           ; $4887: $89
	sbc  b                                           ; $4888: $98
	adc  b                                           ; $4889: $88
	sbc  b                                           ; $488a: $98
	adc  b                                           ; $488b: $88
	adc  c                                           ; $488c: $89
	adc  b                                           ; $488d: $88
	sbc  c                                           ; $488e: $99
	adc  b                                           ; $488f: $88
	adc  b                                           ; $4890: $88
	adc  b                                           ; $4891: $88
	adc  b                                           ; $4892: $88
	adc  c                                           ; $4893: $89
	adc  c                                           ; $4894: $89
	sbc  c                                           ; $4895: $99
	adc  c                                           ; $4896: $89
	adc  b                                           ; $4897: $88
	sbc  b                                           ; $4898: $98
	adc  b                                           ; $4899: $88
	adc  b                                           ; $489a: $88
	sbc  c                                           ; $489b: $99
	sbc  b                                           ; $489c: $98
	add  a                                           ; $489d: $87
	adc  b                                           ; $489e: $88
	adc  b                                           ; $489f: $88
	sbc  b                                           ; $48a0: $98
	adc  b                                           ; $48a1: $88
	adc  b                                           ; $48a2: $88
	adc  c                                           ; $48a3: $89
	adc  b                                           ; $48a4: $88
	sbc  b                                           ; $48a5: $98
	adc  b                                           ; $48a6: $88
	adc  c                                           ; $48a7: $89
	adc  c                                           ; $48a8: $89
	adc  b                                           ; $48a9: $88
	adc  b                                           ; $48aa: $88
	sbc  c                                           ; $48ab: $99
	sbc  b                                           ; $48ac: $98
	sbc  b                                           ; $48ad: $98
	adc  c                                           ; $48ae: $89
	sbc  c                                           ; $48af: $99
	adc  b                                           ; $48b0: $88
	sbc  c                                           ; $48b1: $99
	sbc  c                                           ; $48b2: $99
	adc  b                                           ; $48b3: $88
	adc  b                                           ; $48b4: $88
	adc  b                                           ; $48b5: $88
	sbc  b                                           ; $48b6: $98
	adc  b                                           ; $48b7: $88
	sbc  b                                           ; $48b8: $98
	sbc  c                                           ; $48b9: $99
	adc  b                                           ; $48ba: $88
	sbc  b                                           ; $48bb: $98
	sbc  c                                           ; $48bc: $99
	adc  b                                           ; $48bd: $88
	sbc  c                                           ; $48be: $99
	sbc  c                                           ; $48bf: $99
	sbc  c                                           ; $48c0: $99
	sbc  c                                           ; $48c1: $99
	sbc  c                                           ; $48c2: $99
	sbc  c                                           ; $48c3: $99
	adc  b                                           ; $48c4: $88
	adc  b                                           ; $48c5: $88
	adc  c                                           ; $48c6: $89
	sbc  c                                           ; $48c7: $99
	sbc  c                                           ; $48c8: $99
	sbc  c                                           ; $48c9: $99
	adc  b                                           ; $48ca: $88
	adc  b                                           ; $48cb: $88
	sbc  c                                           ; $48cc: $99
	sbc  c                                           ; $48cd: $99
	sbc  b                                           ; $48ce: $98
	adc  c                                           ; $48cf: $89
	adc  b                                           ; $48d0: $88
	sbc  c                                           ; $48d1: $99
	sbc  b                                           ; $48d2: $98
	sbc  b                                           ; $48d3: $98
	adc  b                                           ; $48d4: $88
	sbc  c                                           ; $48d5: $99
	sbc  c                                           ; $48d6: $99
	adc  b                                           ; $48d7: $88
	sbc  c                                           ; $48d8: $99
	sbc  b                                           ; $48d9: $98
	adc  b                                           ; $48da: $88
	sbc  c                                           ; $48db: $99
	sbc  b                                           ; $48dc: $98
	adc  b                                           ; $48dd: $88
	adc  b                                           ; $48de: $88
	sbc  b                                           ; $48df: $98
	adc  b                                           ; $48e0: $88
	adc  b                                           ; $48e1: $88
	adc  b                                           ; $48e2: $88
	adc  b                                           ; $48e3: $88
	adc  b                                           ; $48e4: $88
	adc  b                                           ; $48e5: $88
	adc  b                                           ; $48e6: $88
	adc  b                                           ; $48e7: $88
	adc  b                                           ; $48e8: $88
	adc  b                                           ; $48e9: $88
	adc  b                                           ; $48ea: $88
	adc  b                                           ; $48eb: $88
	adc  b                                           ; $48ec: $88
	adc  b                                           ; $48ed: $88
	adc  b                                           ; $48ee: $88
	adc  b                                           ; $48ef: $88
	adc  b                                           ; $48f0: $88
	adc  b                                           ; $48f1: $88
	adc  b                                           ; $48f2: $88
	adc  b                                           ; $48f3: $88
	adc  b                                           ; $48f4: $88
	adc  b                                           ; $48f5: $88
	adc  b                                           ; $48f6: $88
	adc  b                                           ; $48f7: $88
	adc  b                                           ; $48f8: $88
	add  c                                           ; $48f9: $81
	ld   de, $1111                                   ; $48fa: $11 $11 $11
	ld   de, $1111                                   ; $48fd: $11 $11 $11
	ld   de, $0011                                   ; $4900: $11 $11 $00
	ld   c, b                                        ; $4903: $48
	ld   de, $1111                                   ; $4904: $11 $11 $11
	ld   de, $1111                                   ; $4907: $11 $11 $11
	ld   de, $1111                                   ; $490a: $11 $11 $11
	ld   de, $5413                                   ; $490d: $11 $13 $54
	ld   d, h                                        ; $4910: $54
	ld   d, h                                        ; $4911: $54
	ld   b, c                                        ; $4912: $41
	rra                                              ; $4913: $1f
	rst  $38                                         ; $4914: $ff
	pop  af                                          ; $4915: $f1
	ld   de, $1511                                   ; $4916: $11 $11 $15
	ld   [hl], c                                     ; $4919: $71
	ld   de, $de1c                                   ; $491a: $11 $1c $de
	xor  h                                           ; $491d: $ac
	sbc  $a1                                         ; $491e: $de $a1
	ld   de, $1111                                   ; $4920: $11 $11 $11
	ld   de, $1111                                   ; $4923: $11 $11 $11
	ld   de, $1111                                   ; $4926: $11 $11 $11
	ld   de, $1111                                   ; $4929: $11 $11 $11
	ld   de, $5411                                   ; $492c: $11 $11 $54
	ld   b, h                                        ; $492f: $44
	ld   [hl], l                                     ; $4930: $75
	ld   de, $5454                                   ; $4931: $11 $54 $54
	ld   h, a                                        ; $4934: $67
	ld   [hl], d                                     ; $4935: $72
	ld   de, $1111                                   ; $4936: $11 $11 $11
	ld   de, $1112                                   ; $4939: $11 $12 $11
	ld   [de], a                                     ; $493c: $12
	ld   de, $1111                                   ; $493d: $11 $11 $11
	ld   h, [hl]                                     ; $4940: $66
	halt                                             ; $4941: $76
	ld   d, l                                        ; $4942: $55
	ld   de, $8888                                   ; $4943: $11 $88 $88
	adc  b                                           ; $4946: $88
	adc  b                                           ; $4947: $88
	adc  b                                           ; $4948: $88
	adc  b                                           ; $4949: $88
	adc  b                                           ; $494a: $88
	adc  b                                           ; $494b: $88
	adc  b                                           ; $494c: $88
	adc  b                                           ; $494d: $88
	adc  b                                           ; $494e: $88
	adc  b                                           ; $494f: $88
	adc  b                                           ; $4950: $88
	adc  b                                           ; $4951: $88
	adc  b                                           ; $4952: $88
	adc  b                                           ; $4953: $88
	adc  b                                           ; $4954: $88
	adc  b                                           ; $4955: $88
	adc  b                                           ; $4956: $88
	adc  b                                           ; $4957: $88
	adc  b                                           ; $4958: $88
	adc  b                                           ; $4959: $88
	adc  b                                           ; $495a: $88
	adc  b                                           ; $495b: $88
	adc  b                                           ; $495c: $88
	adc  b                                           ; $495d: $88
	adc  b                                           ; $495e: $88
	adc  b                                           ; $495f: $88
	adc  b                                           ; $4960: $88
	adc  b                                           ; $4961: $88
	adc  b                                           ; $4962: $88
	adc  b                                           ; $4963: $88
	adc  b                                           ; $4964: $88
	adc  b                                           ; $4965: $88
	adc  b                                           ; $4966: $88
	adc  b                                           ; $4967: $88
	adc  b                                           ; $4968: $88
	adc  b                                           ; $4969: $88
	adc  b                                           ; $496a: $88
	adc  b                                           ; $496b: $88
	adc  b                                           ; $496c: $88
	adc  b                                           ; $496d: $88
	adc  b                                           ; $496e: $88
	adc  b                                           ; $496f: $88
	adc  b                                           ; $4970: $88
	adc  b                                           ; $4971: $88
	adc  b                                           ; $4972: $88
	adc  b                                           ; $4973: $88
	adc  b                                           ; $4974: $88
	adc  b                                           ; $4975: $88
	adc  b                                           ; $4976: $88
	adc  b                                           ; $4977: $88
	adc  b                                           ; $4978: $88
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
	adc  b                                           ; $4984: $88
	adc  b                                           ; $4985: $88
	adc  b                                           ; $4986: $88
	adc  b                                           ; $4987: $88
	adc  b                                           ; $4988: $88
	adc  b                                           ; $4989: $88
	adc  b                                           ; $498a: $88
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
	sbc  b                                           ; $4999: $98
	adc  b                                           ; $499a: $88
	adc  b                                           ; $499b: $88
	adc  b                                           ; $499c: $88
	adc  b                                           ; $499d: $88
	adc  b                                           ; $499e: $88
	adc  b                                           ; $499f: $88
	adc  b                                           ; $49a0: $88
	sbc  b                                           ; $49a1: $98
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
	sub  a                                           ; $49b3: $97
	sbc  b                                           ; $49b4: $98
	ld   a, c                                        ; $49b5: $79
	adc  b                                           ; $49b6: $88
	adc  b                                           ; $49b7: $88
	adc  b                                           ; $49b8: $88
	adc  c                                           ; $49b9: $89
	ld   a, c                                        ; $49ba: $79
	adc  b                                           ; $49bb: $88
	adc  b                                           ; $49bc: $88
	sbc  b                                           ; $49bd: $98
	adc  c                                           ; $49be: $89
	adc  b                                           ; $49bf: $88
	sbc  b                                           ; $49c0: $98
	adc  b                                           ; $49c1: $88
	adc  b                                           ; $49c2: $88
	ld   a, c                                        ; $49c3: $79
	add  a                                           ; $49c4: $87
	adc  b                                           ; $49c5: $88
	adc  b                                           ; $49c6: $88
	adc  b                                           ; $49c7: $88
	adc  b                                           ; $49c8: $88
	sbc  b                                           ; $49c9: $98
	adc  c                                           ; $49ca: $89
	add  a                                           ; $49cb: $87
	adc  b                                           ; $49cc: $88
	adc  b                                           ; $49cd: $88
	adc  b                                           ; $49ce: $88
	adc  b                                           ; $49cf: $88
	adc  b                                           ; $49d0: $88
	adc  b                                           ; $49d1: $88
	adc  b                                           ; $49d2: $88
	ld   a, b                                        ; $49d3: $78
	sub  a                                           ; $49d4: $97
	adc  c                                           ; $49d5: $89
	adc  b                                           ; $49d6: $88
	sbc  b                                           ; $49d7: $98
	adc  b                                           ; $49d8: $88
	adc  b                                           ; $49d9: $88
	adc  b                                           ; $49da: $88
	adc  b                                           ; $49db: $88
	adc  b                                           ; $49dc: $88
	adc  b                                           ; $49dd: $88
	adc  b                                           ; $49de: $88
	add  a                                           ; $49df: $87
	sbc  b                                           ; $49e0: $98
	adc  b                                           ; $49e1: $88
	add  a                                           ; $49e2: $87
	adc  b                                           ; $49e3: $88
	adc  b                                           ; $49e4: $88
	sbc  b                                           ; $49e5: $98
	adc  b                                           ; $49e6: $88
	adc  b                                           ; $49e7: $88
	ld   a, b                                        ; $49e8: $78
	ld   [hl], a                                     ; $49e9: $77
	add  a                                           ; $49ea: $87
	adc  b                                           ; $49eb: $88
	adc  b                                           ; $49ec: $88
	adc  b                                           ; $49ed: $88
	adc  c                                           ; $49ee: $89
	adc  b                                           ; $49ef: $88
	ld   a, b                                        ; $49f0: $78
	adc  b                                           ; $49f1: $88
	sub  a                                           ; $49f2: $97
	sub  a                                           ; $49f3: $97
	sbc  b                                           ; $49f4: $98
	adc  b                                           ; $49f5: $88
	adc  b                                           ; $49f6: $88
	adc  c                                           ; $49f7: $89
	ld   a, c                                        ; $49f8: $79
	add  a                                           ; $49f9: $87
	sbc  b                                           ; $49fa: $98
	adc  b                                           ; $49fb: $88
	adc  b                                           ; $49fc: $88
	adc  b                                           ; $49fd: $88
	adc  b                                           ; $49fe: $88
	adc  b                                           ; $49ff: $88
	adc  b                                           ; $4a00: $88
	adc  b                                           ; $4a01: $88
	adc  b                                           ; $4a02: $88
	adc  b                                           ; $4a03: $88
	sub  a                                           ; $4a04: $97
	adc  c                                           ; $4a05: $89
	ld   a, b                                        ; $4a06: $78
	add  a                                           ; $4a07: $87
	sbc  c                                           ; $4a08: $99
	ld   a, c                                        ; $4a09: $79
	adc  b                                           ; $4a0a: $88
	ld   [hl], a                                     ; $4a0b: $77
	ld   [hl], a                                     ; $4a0c: $77
	ld   a, b                                        ; $4a0d: $78
	adc  b                                           ; $4a0e: $88
	sbc  c                                           ; $4a0f: $99
	adc  c                                           ; $4a10: $89
	sbc  c                                           ; $4a11: $99
	adc  c                                           ; $4a12: $89
	add  a                                           ; $4a13: $87
	ld   [hl], a                                     ; $4a14: $77
	ld   h, a                                        ; $4a15: $67
	ld   [hl], a                                     ; $4a16: $77
	adc  b                                           ; $4a17: $88
	sbc  b                                           ; $4a18: $98
	sbc  b                                           ; $4a19: $98
	sbc  c                                           ; $4a1a: $99
	adc  c                                           ; $4a1b: $89
	ld   [hl], a                                     ; $4a1c: $77
	ld   [hl], a                                     ; $4a1d: $77
	ld   [hl], a                                     ; $4a1e: $77
	ld   a, b                                        ; $4a1f: $78
	sbc  c                                           ; $4a20: $99
	sbc  c                                           ; $4a21: $99
	sbc  b                                           ; $4a22: $98
	adc  b                                           ; $4a23: $88
	add  a                                           ; $4a24: $87
	ld   l, b                                        ; $4a25: $68
	ld   h, [hl]                                     ; $4a26: $66
	ld   [hl], a                                     ; $4a27: $77
	ld   a, b                                        ; $4a28: $78
	sbc  c                                           ; $4a29: $99
	sbc  d                                           ; $4a2a: $9a
	adc  b                                           ; $4a2b: $88
	sbc  c                                           ; $4a2c: $99
	add  l                                           ; $4a2d: $85
	sub  [hl]                                        ; $4a2e: $96
	ld   e, b                                        ; $4a2f: $58
	ld   h, a                                        ; $4a30: $67
	ld   a, b                                        ; $4a31: $78
	xor  b                                           ; $4a32: $a8
	cp   e                                           ; $4a33: $bb
	ld   a, d                                        ; $4a34: $7a
	ld   a, c                                        ; $4a35: $79
	add  h                                           ; $4a36: $84
	and  l                                           ; $4a37: $a5
	add  hl, sp                                      ; $4a38: $39
	ld   d, [hl]                                     ; $4a39: $56
	sbc  c                                           ; $4a3a: $99
	cp   c                                           ; $4a3b: $b9
	bit  7, c                                        ; $4a3c: $cb $79
	adc  e                                           ; $4a3e: $8b
	ld   h, l                                        ; $4a3f: $65
	or   e                                           ; $4a40: $b3
	ld   c, b                                        ; $4a41: $48
	ld   b, [hl]                                     ; $4a42: $46
	sbc  c                                           ; $4a43: $99
	sbc  c                                           ; $4a44: $99
	jp   c, Jump_0ac_7c8b                            ; $4a45: $da $8b $7c

	ld   d, [hl]                                     ; $4a48: $56
	and  c                                           ; $4a49: $a1
	ld   h, a                                        ; $4a4a: $67
	ld   b, a                                        ; $4a4b: $47
	ld   a, d                                        ; $4a4c: $7a
	xor  d                                           ; $4a4d: $aa
	rst  $30                                         ; $4a4e: $f7
	xor  e                                           ; $4a4f: $ab
	ld   l, l                                        ; $4a50: $6d
	scf                                              ; $4a51: $37
	and  c                                           ; $4a52: $a1
	add  a                                           ; $4a53: $87
	daa                                              ; $4a54: $27
	ld   l, d                                        ; $4a55: $6a
	xor  d                                           ; $4a56: $aa
	rst  $30                                         ; $4a57: $f7
	jp   z, $276e                                    ; $4a58: $ca $6e $27

	or   c                                           ; $4a5b: $b1
	add  a                                           ; $4a5c: $87
	daa                                              ; $4a5d: $27
	ld   l, d                                        ; $4a5e: $6a
	sbc  d                                           ; $4a5f: $9a
	or   $ca                                         ; $4a60: $f6 $ca
	ld   l, a                                        ; $4a62: $6f
	rla                                              ; $4a63: $17
	pop  bc                                          ; $4a64: $c1
	add  a                                           ; $4a65: $87
	rla                                              ; $4a66: $17
	ld   l, d                                        ; $4a67: $6a
	sbc  d                                           ; $4a68: $9a
	or   $cb                                         ; $4a69: $f6 $cb
	ld   c, a                                        ; $4a6b: $4f
	dec  h                                           ; $4a6c: $25
	pop  hl                                          ; $4a6d: $e1
	ld   a, c                                        ; $4a6e: $79
	rla                                              ; $4a6f: $17
	ld   l, c                                        ; $4a70: $69
	sbc  b                                           ; $4a71: $98
	rst  $30                                         ; $4a72: $f7
	cp   [hl]                                        ; $4a73: $be
	rra                                              ; $4a74: $1f
	ld   h, c                                        ; $4a75: $61
	pop  af                                          ; $4a76: $f1
	dec  l                                           ; $4a77: $2d
	dec  d                                           ; $4a78: $15
	ld   h, a                                        ; $4a79: $67
	sub  [hl]                                        ; $4a7a: $96
	ld   sp, hl                                      ; $4a7b: $f9
	ld   a, a                                        ; $4a7c: $7f
	ld   e, $f1                                      ; $4a7d: $1e $f1
	rst  $30                                         ; $4a7f: $f7
	ld   e, $33                                      ; $4a80: $1e $33
	halt                                             ; $4a82: $76
	or   h                                           ; $4a83: $b4
	xor  $3f                                         ; $4a84: $ee $3f
	ld   d, h                                        ; $4a86: $54
	pop  af                                          ; $4a87: $f1
	ld   a, a                                        ; $4a88: $7f
	add  hl, de                                      ; $4a89: $19
	sub  c                                           ; $4a8a: $91
	ld   [hl], l                                     ; $4a8b: $75
	sub  l                                           ; $4a8c: $95
	sbc  a                                           ; $4a8d: $9f
	ld   a, $f1                                      ; $4a8e: $3e $f1
	ld   a, [$311f]                                  ; $4a90: $fa $1f $31
	ldh  a, [c]                                      ; $4a93: $f2
	scf                                              ; $4a94: $37
	ld   a, b                                        ; $4a95: $78
	ccf                                              ; $4a96: $3f
	and  e                                           ; $4a97: $a3
	ldh  a, [c]                                      ; $4a98: $f2
	ld   c, a                                        ; $4a99: $4f
	ld   d, $f1                                      ; $4a9a: $16 $f1
	ld   a, e                                        ; $4a9c: $7b

jr_0ac_4a9d:
	ld   d, $69                                      ; $4a9d: $16 $69
	ld   c, b                                        ; $4a9f: $48
	ldh  a, [c]                                      ; $4aa0: $f2
	cp   a                                           ; $4aa1: $bf
	rra                                              ; $4aa2: $1f
	pop  af                                          ; $4aa3: $f1
	ld   a, [$511f]                                  ; $4aa4: $fa $1f $51
	ld   [hl], a                                     ; $4aa7: $77
	add  d                                           ; $4aa8: $82
	db   $fd                                         ; $4aa9: $fd
	rra                                              ; $4aaa: $1f
	add  c                                           ; $4aab: $81
	di                                               ; $4aac: $f3
	rra                                              ; $4aad: $1f
	ld   de, $38f1                                   ; $4aae: $11 $f1 $38
	add  l                                           ; $4ab1: $85
	ld   l, a                                        ; $4ab2: $6f
	ld   h, [hl]                                     ; $4ab3: $66
	pop  af                                          ; $4ab4: $f1
	adc  a                                           ; $4ab5: $8f
	add  hl, de                                      ; $4ab6: $19
	pop  af                                          ; $4ab7: $f1
	xor  e                                           ; $4ab8: $ab
	ld   d, $97                                      ; $4ab9: $16 $97
	ld   c, h                                        ; $4abb: $4c
	ldh  a, [c]                                      ; $4abc: $f2
	rst  $28                                         ; $4abd: $ef
	rra                                              ; $4abe: $1f
	or   c                                           ; $4abf: $b1
	push af                                          ; $4ac0: $f5
	rra                                              ; $4ac1: $1f
	ld   b, c                                        ; $4ac2: $41
	xor  b                                           ; $4ac3: $a8
	ld   d, [hl]                                     ; $4ac4: $56
	ld   sp, hl                                      ; $4ac5: $f9
	ld   e, a                                        ; $4ac6: $5f
	dec  h                                           ; $4ac7: $25
	pop  af                                          ; $4ac8: $f1
	ld   a, a                                        ; $4ac9: $7f
	jr   jr_0ac_4a9d                                 ; $4aca: $18 $d1

	ld   l, d                                        ; $4acc: $6a
	ld   h, h                                        ; $4acd: $64

jr_0ac_4ace:
	adc  $3e                                         ; $4ace: $ce $3e
	pop  hl                                          ; $4ad0: $e1
	ei                                               ; $4ad1: $fb
	rra                                              ; $4ad2: $1f
	ld   d, c                                        ; $4ad3: $51
	db   $f4                                         ; $4ad4: $f4
	ld   a, [bc]                                     ; $4ad5: $0a
	add  h                                           ; $4ad6: $84
	adc  a                                           ; $4ad7: $8f
	halt                                             ; $4ad8: $76
	ldh  a, [c]                                      ; $4ad9: $f2
	ld   l, a                                        ; $4ada: $6f
	jr   jr_0ac_4ace                                 ; $4adb: $18 $f1

	sbc  h                                           ; $4add: $9c
	ld   d, $a5                                      ; $4ade: $16 $a5
	ld   e, l                                        ; $4ae0: $5d
	call nc, $1fed                                   ; $4ae1: $d4 $ed $1f
	and  c                                           ; $4ae4: $a1
	db   $f4                                         ; $4ae5: $f4
	rra                                              ; $4ae6: $1f
	ld   sp, $3ac7                                   ; $4ae7: $31 $c7 $3a
	rst  $20                                         ; $4aea: $e7
	sbc  a                                           ; $4aeb: $9f
	jr   z, @-$0d                                    ; $4aec: $28 $f1

	xor  a                                           ; $4aee: $af
	add  hl, de                                      ; $4aef: $19
	pop  bc                                          ; $4af0: $c1
	ld   a, e                                        ; $4af1: $7b
	ld   [hl], $db                                   ; $4af2: $36 $db
	ld   e, [hl]                                     ; $4af4: $5e
	or   c                                           ; $4af5: $b1
	ld   sp, hl                                      ; $4af6: $f9
	rra                                              ; $4af7: $1f
	ld   b, c                                        ; $4af8: $41
	di                                               ; $4af9: $f3
	inc  e                                           ; $4afa: $1c
	ld   [hl], e                                     ; $4afb: $73
	cp   [hl]                                        ; $4afc: $be
	ld   l, c                                        ; $4afd: $69
	ldh  a, [c]                                      ; $4afe: $f2
	sbc  a                                           ; $4aff: $9f
	add  hl, de                                      ; $4b00: $19
	pop  af                                          ; $4b01: $f1
	xor  l                                           ; $4b02: $ad
	rla                                              ; $4b03: $17
	or   e                                           ; $4b04: $b3
	ld   l, a                                        ; $4b05: $6f
	sub  [hl]                                        ; $4b06: $96
	ld   [$810f], a                                  ; $4b07: $ea $0f $81
	di                                               ; $4b0a: $f3
	rra                                              ; $4b0b: $1f
	ld   hl, $2dc6                                   ; $4b0c: $21 $c6 $2d
	rst  ToBoot                                         ; $4b0f: $c7
	xor  a                                           ; $4b10: $af
	add  hl, sp                                      ; $4b11: $39
	pop  af                                          ; $4b12: $f1
	xor  a                                           ; $4b13: $af
	ld   a, [de]                                     ; $4b14: $1a
	pop  bc                                          ; $4b15: $c1
	adc  h                                           ; $4b16: $8c
	daa                                              ; $4b17: $27
	jp   hl                                          ; $4b18: $e9


	adc  a                                           ; $4b19: $8f
	sub  d                                           ; $4b1a: $92
	ld   hl, sp+$1f                                  ; $4b1b: $f8 $1f
	ld   sp, $1df2                                   ; $4b1d: $31 $f2 $1d
	ld   h, d                                        ; $4b20: $62
	db   $ec                                         ; $4b21: $ec
	ld   l, l                                        ; $4b22: $6d
	db   $d3                                         ; $4b23: $d3
	xor  a                                           ; $4b24: $af
	ld   a, [de]                                     ; $4b25: $1a
	pop  af                                          ; $4b26: $f1
	xor  h                                           ; $4b27: $ac
	rla                                              ; $4b28: $17
	pop  de                                          ; $4b29: $d1
	adc  a                                           ; $4b2a: $8f
	ld   a, d                                        ; $4b2b: $7a
	ld   hl, sp+$3f                                  ; $4b2c: $f8 $3f
	ld   h, c                                        ; $4b2e: $61
	pop  af                                          ; $4b2f: $f1
	rra                                              ; $4b30: $1f
	ld   hl, $2fc6                                   ; $4b31: $21 $c6 $2f
	or   a                                           ; $4b34: $b7
	call c, $f13b                                    ; $4b35: $dc $3b $f1
	call c, $a11d                                    ; $4b38: $dc $1d $a1
	adc  e                                           ; $4b3b: $8b
	add  hl, de                                      ; $4b3c: $19
	or   $bd                                         ; $4b3d: $f6 $bd
	ld   [hl], l                                     ; $4b3f: $75
	di                                               ; $4b40: $f3
	cpl                                              ; $4b41: $2f
	inc  d                                           ; $4b42: $14
	pop  af                                          ; $4b43: $f1
	dec  a                                           ; $4b44: $3d
	ld   d, e                                        ; $4b45: $53
	ld   sp, hl                                      ; $4b46: $f9
	adc  [hl]                                        ; $4b47: $8e
	and  h                                           ; $4b48: $a4
	call c, Call_0ac_711f                            ; $4b49: $dc $1f $71
	or   $1a                                         ; $4b4c: $f6 $1a
	and  c                                           ; $4b4e: $a1
	sbc  $6d                                         ; $4b4f: $de $6d
	add  $8f                                         ; $4b51: $c6 $8f
	rla                                              ; $4b53: $17
	pop  af                                          ; $4b54: $f1
	adc  h                                           ; $4b55: $8c
	ld   d, $c3                                      ; $4b56: $16 $c3
	ld   l, a                                        ; $4b58: $6f
	ld   a, e                                        ; $4b59: $7b
	ret  c                                           ; $4b5a: $d8

	ld   e, a                                        ; $4b5b: $5f
	add  c                                           ; $4b5c: $81
	ldh  a, [c]                                      ; $4b5d: $f2
	ld   e, $21                                      ; $4b5e: $1e $21
	ret                                              ; $4b60: $c9


	rra                                              ; $4b61: $1f
	or   [hl]                                        ; $4b62: $b6
	ld   [$e15b], a                                  ; $4b63: $ea $5b $e1
	db   $db                                         ; $4b66: $db
	dec  e                                           ; $4b67: $1d
	ld   [hl], c                                     ; $4b68: $71
	adc  e                                           ; $4b69: $8b
	ld   a, [hl+]                                    ; $4b6a: $2a
	or   $cd                                         ; $4b6b: $f6 $cd
	ld   h, [hl]                                     ; $4b6d: $66
	ldh  a, [c]                                      ; $4b6e: $f2
	ccf                                              ; $4b6f: $3f
	dec  d                                           ; $4b70: $15
	pop  de                                          ; $4b71: $d1
	ld   c, l                                        ; $4b72: $4d
	ld   d, e                                        ; $4b73: $53
	ld   hl, sp-$61                                  ; $4b74: $f8 $9f
	add  l                                           ; $4b76: $85
	jp   c, Jump_0ac_411f                            ; $4b77: $da $1f $41

	di                                               ; $4b7a: $f3
	add  hl, de                                      ; $4b7b: $19
	and  c                                           ; $4b7c: $a1
	rst  JumpTable                                         ; $4b7d: $df
	ld   e, [hl]                                     ; $4b7e: $5e
	push bc                                          ; $4b7f: $c5
	xor  a                                           ; $4b80: $af
	ld   a, [de]                                     ; $4b81: $1a
	pop  hl                                          ; $4b82: $e1
	cp   b                                           ; $4b83: $b8
	rla                                              ; $4b84: $17
	jp   Jump_0ac_6b7f                               ; $4b85: $c3 $7f $6b


	and  $6f                                         ; $4b88: $e6 $6f
	ld   b, c                                        ; $4b8a: $41
	pop  af                                          ; $4b8b: $f1
	dec  a                                           ; $4b8c: $3d
	inc  de                                          ; $4b8d: $13
	ret  z                                           ; $4b8e: $c8

	cpl                                              ; $4b8f: $2f
	and  a                                           ; $4b90: $a7
	ld   sp, hl                                      ; $4b91: $f9

jr_0ac_4b92:
	ld   e, h                                        ; $4b92: $5c
	pop  de                                          ; $4b93: $d1
	add  sp, $1e                                     ; $4b94: $e8 $1e
	ld   d, c                                        ; $4b96: $51
	sbc  h                                           ; $4b97: $9c
	ld   a, [hl+]                                    ; $4b98: $2a
	push af                                          ; $4b99: $f5
	db   $ed                                         ; $4b9a: $ed
	ld   e, b                                        ; $4b9b: $58
	pop  af                                          ; $4b9c: $f1
	ld   c, a                                        ; $4b9d: $4f
	rla                                              ; $4b9e: $17

jr_0ac_4b9f:
	or   c                                           ; $4b9f: $b1
	ld   e, h                                        ; $4ba0: $5c
	ld   h, e                                        ; $4ba1: $63
	ld   hl, sp-$61                                  ; $4ba2: $f8 $9f
	ld   [hl], l                                     ; $4ba4: $75
	ld   [$311f], a                                  ; $4ba5: $ea $1f $31
	di                                               ; $4ba8: $f3
	ld   a, [hl+]                                    ; $4ba9: $2a
	or   c                                           ; $4baa: $b1
	rst  JumpTable                                         ; $4bab: $df
	ld   c, a                                        ; $4bac: $4f
	call nz, $18af                                   ; $4bad: $c4 $af $18
	pop  af                                          ; $4bb0: $f1
	cp   d                                           ; $4bb1: $ba
	ld   d, $c5                                      ; $4bb2: $16 $c5
	ld   e, a                                        ; $4bb4: $5f
	ld   a, d                                        ; $4bb5: $7a
	or   $5f                                         ; $4bb6: $f6 $5f
	ld   h, c                                        ; $4bb8: $61
	pop  af                                          ; $4bb9: $f1
	rra                                              ; $4bba: $1f
	inc  de                                          ; $4bbb: $13
	xor  e                                           ; $4bbc: $ab
	ld   l, $f5                                      ; $4bbd: $2e $f5
	ei                                               ; $4bbf: $fb
	ld   c, e                                        ; $4bc0: $4b
	pop  hl                                          ; $4bc1: $e1
	sbc  l                                           ; $4bc2: $9d
	dec  de                                          ; $4bc3: $1b
	add  c                                           ; $4bc4: $81
	ld   a, h                                        ; $4bc5: $7c
	ld   d, [hl]                                     ; $4bc6: $56
	rst  $30                                         ; $4bc7: $f7
	cp   a                                           ; $4bc8: $bf
	ld   d, [hl]                                     ; $4bc9: $56
	push af                                          ; $4bca: $f5
	rra                                              ; $4bcb: $1f
	ld   de, $4af1                                   ; $4bcc: $11 $f1 $4a
	or   d                                           ; $4bcf: $b2
	rst  $38                                         ; $4bd0: $ff
	ld   e, a                                        ; $4bd1: $5f
	or   e                                           ; $4bd2: $b3
	cp   l                                           ; $4bd3: $bd
	dec  de                                          ; $4bd4: $1b
	or   c                                           ; $4bd5: $b1
	rst  ToBoot                                         ; $4bd6: $c7
	jr   jr_0ac_4b9f                                 ; $4bd7: $18 $c6

	ld   l, a                                        ; $4bd9: $6f
	ld   a, d                                        ; $4bda: $7a
	push af                                          ; $4bdb: $f5
	ld   l, a                                        ; $4bdc: $6f
	ld   b, c                                        ; $4bdd: $41
	pop  af                                          ; $4bde: $f1
	cpl                                              ; $4bdf: $2f
	dec  d                                           ; $4be0: $15
	xor  e                                           ; $4be1: $ab
	ccf                                              ; $4be2: $3f
	push af                                          ; $4be3: $f5
	ld   a, [$c13c]                                  ; $4be4: $fa $3c $c1
	ret                                              ; $4be7: $c9


	ld   e, $52                                      ; $4be8: $1e $52
	adc  e                                           ; $4bea: $8b
	ld   h, [hl]                                     ; $4beb: $66
	or   $bf                                         ; $4bec: $f6 $bf
	ld   b, a                                        ; $4bee: $47
	ldh  a, [c]                                      ; $4bef: $f2
	cpl                                              ; $4bf0: $2f
	dec  d                                           ; $4bf1: $15
	pop  bc                                          ; $4bf2: $c1
	ld   a, c                                        ; $4bf3: $79
	or   e                                           ; $4bf4: $b3
	rst  $38                                         ; $4bf5: $ff
	ld   e, a                                        ; $4bf6: $5f
	sub  e                                           ; $4bf7: $93
	jp   c, Jump_0ac_611e                            ; $4bf8: $da $1e $61

	db   $e3                                         ; $4bfb: $e3
	ld   c, b                                        ; $4bfc: $48
	or   [hl]                                        ; $4bfd: $b6
	ld   a, a                                        ; $4bfe: $7f
	ld   l, h                                        ; $4bff: $6c
	di                                               ; $4c00: $f3
	sbc  a                                           ; $4c01: $9f
	inc  d                                           ; $4c02: $14
	pop  af                                          ; $4c03: $f1
	sbc  d                                           ; $4c04: $9a
	jr   jr_0ac_4b92                                 ; $4c05: $18 $8b

	ccf                                              ; $4c07: $3f
	push de                                          ; $4c08: $d5
	rst  $30                                         ; $4c09: $f7
	ld   c, a                                        ; $4c0a: $4f
	ld   h, c                                        ; $4c0b: $61
	pop  af                                          ; $4c0c: $f1
	ld   e, $17                                      ; $4c0d: $1e $17
	ld   a, e                                        ; $4c0f: $7b
	ld   l, d                                        ; $4c10: $6a
	push af                                          ; $4c11: $f5
	db   $ed                                         ; $4c12: $ed
	dec  hl                                          ; $4c13: $2b
	pop  bc                                          ; $4c14: $c1
	xor  e                                           ; $4c15: $ab
	dec  e                                           ; $4c16: $1d
	ld   d, e                                        ; $4c17: $53
	adc  b                                           ; $4c18: $88
	or   h                                           ; $4c19: $b4
	ld   a, [$468f]                                  ; $4c1a: $fa $8f $46
	pop  af                                          ; $4c1d: $f1
	cpl                                              ; $4c1e: $2f
	ld   d, $b1                                      ; $4c1f: $16 $b1
	and  [hl]                                        ; $4c21: $a6
	push bc                                          ; $4c22: $c5
	rst  $28                                         ; $4c23: $ef
	ld   c, a                                        ; $4c24: $4f
	sub  d                                           ; $4c25: $92
	rst  $20                                         ; $4c26: $e7
	rra                                              ; $4c27: $1f
	ld   hl, $77e1                                   ; $4c28: $21 $e1 $77
	cp   d                                           ; $4c2b: $ba
	ld   a, a                                        ; $4c2c: $7f
	ld   l, h                                        ; $4c2d: $6c
	pop  af                                          ; $4c2e: $f1
	xor  l                                           ; $4c2f: $ad
	add  hl, de                                      ; $4c30: $19
	and  c                                           ; $4c31: $a1
	push bc                                          ; $4c32: $c5
	add  hl, sp                                      ; $4c33: $39
	ld   a, l                                        ; $4c34: $7d
	ld   e, a                                        ; $4c35: $5f

jr_0ac_4c36:
	sub  $f4                                         ; $4c36: $d6 $f4
	ld   l, a                                        ; $4c38: $6f
	inc  de                                          ; $4c39: $13
	pop  af                                          ; $4c3a: $f1
	ld   a, d                                        ; $4c3b: $7a
	dec  de                                          ; $4c3c: $1b
	ld   e, l                                        ; $4c3d: $5d
	ld   l, l                                        ; $4c3e: $6d
	db   $f4                                         ; $4c3f: $f4
	ld   hl, sp+$2f                                  ; $4c40: $f8 $2f
	ld   b, c                                        ; $4c42: $41
	pop  af                                          ; $4c43: $f1
	dec  l                                           ; $4c44: $2d
	ld   a, [de]                                     ; $4c45: $1a
	ld   l, d                                        ; $4c46: $6a
	xor  b                                           ; $4c47: $a8
	or   $ce                                         ; $4c48: $f6 $ce
	inc  c                                           ; $4c4a: $0c
	and  c                                           ; $4c4b: $a1
	db   $e4                                         ; $4c4c: $e4
	rra                                              ; $4c4d: $1f
	ld   d, $a7                                      ; $4c4e: $16 $a7
	push de                                          ; $4c50: $d5
	ei                                               ; $4c51: $fb
	ld   a, a                                        ; $4c52: $7f
	jr   z, jr_0ac_4c36                              ; $4c53: $28 $e1

	ld   a, h                                        ; $4c55: $7c
	inc  e                                           ; $4c56: $1c
	ld   h, d                                        ; $4c57: $62
	call nz, $efe7                                   ; $4c58: $c4 $e7 $ef
	ld   e, a                                        ; $4c5b: $5f
	ld   h, h                                        ; $4c5c: $64
	pop  af                                          ; $4c5d: $f1
	cpl                                              ; $4c5e: $2f
	rla                                              ; $4c5f: $17
	and  c                                           ; $4c60: $a1
	push bc                                          ; $4c61: $c5
	res  5, a                                        ; $4c62: $cb $af
	ld   l, l                                        ; $4c64: $6d
	and  d                                           ; $4c65: $a2
	di                                               ; $4c66: $f3
	ld   e, $14                                      ; $4c67: $1e $14
	pop  de                                          ; $4c69: $d1
	or   [hl]                                        ; $4c6a: $b6
	xor  l                                           ; $4c6b: $ad
	ld   a, a                                        ; $4c6c: $7f
	adc  d                                           ; $4c6d: $8a
	pop  de                                          ; $4c6e: $d1
	rst  $10                                         ; $4c6f: $d7
	rra                                              ; $4c70: $1f
	ld   de, $99f1                                   ; $4c71: $11 $f1 $99
	ld   l, a                                        ; $4c74: $6f
	ld   a, a                                        ; $4c75: $7f
	rst  ToBoot                                         ; $4c76: $c7
	ldh  [c], a                                      ; $4c77: $e2
	xor  d                                           ; $4c78: $aa
	dec  e                                           ; $4c79: $1d
	ld   b, c                                        ; $4c7a: $41
	pop  af                                          ; $4c7b: $f1
	ld   a, h                                        ; $4c7c: $7c
	ld   e, a                                        ; $4c7d: $5f
	adc  a                                           ; $4c7e: $8f
	or   $e5                                         ; $4c7f: $f6 $e5
	ld   a, h                                        ; $4c81: $7c
	ld   a, [de]                                     ; $4c82: $1a
	ld   h, c                                        ; $4c83: $61
	ldh  [c], a                                      ; $4c84: $e2
	ld   e, h                                        ; $4c85: $5c
	ld   c, [hl]                                     ; $4c86: $4e
	xor  h                                           ; $4c87: $ac
	rst  $30                                         ; $4c88: $f7
	add  $6d                                         ; $4c89: $c6 $6d
	jr   @-$7d                                       ; $4c8b: $18 $81

	db   $d3                                         ; $4c8d: $d3
	dec  a                                           ; $4c8e: $3d
	ld   c, l                                        ; $4c8f: $4d
	cp   e                                           ; $4c90: $bb
	ld   sp, hl                                      ; $4c91: $f9
	cp   b                                           ; $4c92: $b8
	ld   c, l                                        ; $4c93: $4d
	ld   d, $a1                                      ; $4c94: $16 $a1
	add  $1f                                         ; $4c96: $c6 $1f
	ld   c, e                                        ; $4c98: $4b
	reti                                             ; $4c99: $d9


	ld   a, [$4ca9]                                  ; $4c9a: $fa $a9 $4c
	inc  d                                           ; $4c9d: $14
	pop  bc                                          ; $4c9e: $c1
	cp   b                                           ; $4c9f: $b8
	rra                                              ; $4ca0: $1f
	ld   e, d                                        ; $4ca1: $5a
	ld   a, [$89fb]                                  ; $4ca2: $fa $fb $89
	ld   e, h                                        ; $4ca5: $5c
	ld   [de], a                                     ; $4ca6: $12
	pop  de                                          ; $4ca7: $d1
	xor  c                                           ; $4ca8: $a9
	rra                                              ; $4ca9: $1f
	ld   l, b                                        ; $4caa: $68
	ld   sp, hl                                      ; $4cab: $f9
	db   $ed                                         ; $4cac: $ed
	adc  c                                           ; $4cad: $89
	ld   e, h                                        ; $4cae: $5c
	ld   [hl+], a                                    ; $4caf: $22
	pop  de                                          ; $4cb0: $d1
	adc  e                                           ; $4cb1: $8b
	rra                                              ; $4cb2: $1f
	ld   [hl], a                                     ; $4cb3: $77
	ld   a, [$89de]                                  ; $4cb4: $fa $de $89
	ld   e, e                                        ; $4cb7: $5b
	ld   sp, $6ef1                                   ; $4cb8: $31 $f1 $6e
	ld   e, $a5                                      ; $4cbb: $1e $a5
	ei                                               ; $4cbd: $fb
	rst  JumpTable                                         ; $4cbe: $df
	adc  c                                           ; $4cbf: $89
	ld   l, d                                        ; $4cc0: $6a
	ld   b, c                                        ; $4cc1: $41
	pop  af                                          ; $4cc2: $f1
	ccf                                              ; $4cc3: $3f
	inc  e                                           ; $4cc4: $1c
	or   h                                           ; $4cc5: $b4
	db   $fc                                         ; $4cc6: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cc7: $cf
	sbc  b                                           ; $4cc8: $98
	ld   l, e                                        ; $4cc9: $6b
	ld   b, c                                        ; $4cca: $41
	pop  af                                          ; $4ccb: $f1
	cpl                                              ; $4ccc: $2f
	inc  e                                           ; $4ccd: $1c
	jp   $affe                                       ; $4cce: $c3 $fe $af


	sub  a                                           ; $4cd1: $97
	ld   l, d                                        ; $4cd2: $6a
	ld   d, c                                        ; $4cd3: $51
	pop  af                                          ; $4cd4: $f1
	rra                                              ; $4cd5: $1f
	dec  de                                          ; $4cd6: $1b
	db   $e3                                         ; $4cd7: $e3
	cp   $af                                         ; $4cd8: $fe $af
	and  a                                           ; $4cda: $a7
	ld   l, d                                        ; $4cdb: $6a
	ld   h, c                                        ; $4cdc: $61
	pop  hl                                          ; $4cdd: $e1
	rra                                              ; $4cde: $1f
	add  hl, de                                      ; $4cdf: $19
	di                                               ; $4ce0: $f3
	rst  $28                                         ; $4ce1: $ef
	xor  a                                           ; $4ce2: $af
	or   [hl]                                        ; $4ce3: $b6
	ld   l, d                                        ; $4ce4: $6a
	ld   h, c                                        ; $4ce5: $61
	pop  af                                          ; $4ce6: $f1
	rra                                              ; $4ce7: $1f
	rla                                              ; $4ce8: $17
	di                                               ; $4ce9: $f3
	rst  JumpTable                                         ; $4cea: $df
	xor  a                                           ; $4ceb: $af
	or   [hl]                                        ; $4cec: $b6
	ld   l, d                                        ; $4ced: $6a
	ld   h, c                                        ; $4cee: $61
	pop  hl                                          ; $4cef: $e1
	rra                                              ; $4cf0: $1f
	ld   d, $f3                                      ; $4cf1: $16 $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4cf3: $cf
	sbc  [hl]                                        ; $4cf4: $9e
	add  $69                                         ; $4cf5: $c6 $69
	ld   [hl], c                                     ; $4cf7: $71
	db   $d3                                         ; $4cf8: $d3
	rra                                              ; $4cf9: $1f
	inc  d                                           ; $4cfa: $14
	di                                               ; $4cfb: $f3
	cp   a                                           ; $4cfc: $bf
	sbc  [hl]                                        ; $4cfd: $9e
	and  $69                                         ; $4cfe: $e6 $69
	ld   [hl], c                                     ; $4d00: $71
	call nc, $131f                                   ; $4d01: $d4 $1f $13
	di                                               ; $4d04: $f3
	xor  a                                           ; $4d05: $af
	sbc  l                                           ; $4d06: $9d
	push hl                                          ; $4d07: $e5
	ld   l, d                                        ; $4d08: $6a
	ld   [hl], c                                     ; $4d09: $71
	push bc                                          ; $4d0a: $c5
	rra                                              ; $4d0b: $1f
	ld   hl, $aff4                                   ; $4d0c: $21 $f4 $af
	sbc  h                                           ; $4d0f: $9c
	or   $5a                                         ; $4d10: $f6 $5a
	add  c                                           ; $4d12: $81
	sub  $1f                                         ; $4d13: $d6 $1f
	ld   hl, $9ff5                                   ; $4d15: $21 $f5 $9f
	xor  e                                           ; $4d18: $ab
	push af                                          ; $4d19: $f5
	ld   e, d                                        ; $4d1a: $5a
	add  c                                           ; $4d1b: $81
	rst  ToBoot                                         ; $4d1c: $c7
	rra                                              ; $4d1d: $1f
	ld   b, c                                        ; $4d1e: $41
	push af                                          ; $4d1f: $f5
	adc  a                                           ; $4d20: $8f
	cp   e                                           ; $4d21: $bb
	or   $4a                                         ; $4d22: $f6 $4a
	add  c                                           ; $4d24: $81
	rst  ToBoot                                         ; $4d25: $c7
	rra                                              ; $4d26: $1f
	ld   b, c                                        ; $4d27: $41
	or   $8f                                         ; $4d28: $f6 $8f
	cp   c                                           ; $4d2a: $b9
	or   $3b                                         ; $4d2b: $f6 $3b
	add  c                                           ; $4d2d: $81
	rst  ToBoot                                         ; $4d2e: $c7
	rra                                              ; $4d2f: $1f
	ld   b, c                                        ; $4d30: $41
	or   $8f                                         ; $4d31: $f6 $8f
	cp   d                                           ; $4d33: $ba
	or   $3c                                         ; $4d34: $f6 $3c
	ld   [hl], c                                     ; $4d36: $71
	sub  $1f                                         ; $4d37: $d6 $1f
	ld   b, c                                        ; $4d39: $41
	or   $8f                                         ; $4d3a: $f6 $8f
	cp   c                                           ; $4d3c: $b9
	or   $3b                                         ; $4d3d: $f6 $3b
	add  c                                           ; $4d3f: $81
	rst  ToBoot                                         ; $4d40: $c7
	rra                                              ; $4d41: $1f
	ld   b, c                                        ; $4d42: $41
	or   $8f                                         ; $4d43: $f6 $8f
	cp   d                                           ; $4d45: $ba
	or   $2b                                         ; $4d46: $f6 $2b
	ld   [hl], c                                     ; $4d48: $71
	push hl                                          ; $4d49: $e5
	rra                                              ; $4d4a: $1f
	ld   sp, $8ff6                                   ; $4d4b: $31 $f6 $8f
	cp   d                                           ; $4d4e: $ba
	or   $2b                                         ; $4d4f: $f6 $2b
	ld   [hl], c                                     ; $4d51: $71
	push af                                          ; $4d52: $f5
	rra                                              ; $4d53: $1f
	ld   [hl-], a                                    ; $4d54: $32
	or   $8f                                         ; $4d55: $f6 $8f
	xor  c                                           ; $4d57: $a9
	push af                                          ; $4d58: $f5
	inc  l                                           ; $4d59: $2c
	ld   d, c                                        ; $4d5a: $51
	ldh  a, [c]                                      ; $4d5b: $f2
	rra                                              ; $4d5c: $1f
	inc  d                                           ; $4d5d: $14
	or   $9f                                         ; $4d5e: $f6 $9f
	cp   c                                           ; $4d60: $b9
	db   $f4                                         ; $4d61: $f4
	dec  a                                           ; $4d62: $3d
	ld   sp, $1ff1                                   ; $4d63: $31 $f1 $1f
	ld   d, $f5                                      ; $4d66: $16 $f5
	cp   a                                           ; $4d68: $bf
	sbc  d                                           ; $4d69: $9a
	di                                               ; $4d6a: $f3
	ld   a, $21                                      ; $4d6b: $3e $21
	pop  af                                          ; $4d6d: $f1
	rra                                              ; $4d6e: $1f
	jr   @-$0a                                       ; $4d6f: $18 $f4

	cp   a                                           ; $4d71: $bf
	adc  d                                           ; $4d72: $8a
	ldh  a, [c]                                      ; $4d73: $f2
	ld   c, a                                        ; $4d74: $4f
	ld   de, $3ff1                                   ; $4d75: $11 $f1 $3f
	inc  e                                           ; $4d78: $1c
	push af                                          ; $4d79: $f5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d7a: $cf
	ld   a, h                                        ; $4d7b: $7c
	pop  de                                          ; $4d7c: $d1
	ld   a, l                                        ; $4d7d: $7d
	inc  de                                          ; $4d7e: $13
	pop  af                                          ; $4d7f: $f1
	xor  a                                           ; $4d80: $af
	rra                                              ; $4d81: $1f
	push de                                          ; $4d82: $d5
	rst  $38                                         ; $4d83: $ff
	ld   a, l                                        ; $4d84: $7d
	pop  bc                                          ; $4d85: $c1
	sbc  h                                           ; $4d86: $9c
	rla                                              ; $4d87: $17
	pop  hl                                          ; $4d88: $e1
	db   $ec                                         ; $4d89: $ec
	rra                                              ; $4d8a: $1f
	push bc                                          ; $4d8b: $c5
	rst  $38                                         ; $4d8c: $ff
	ld   e, a                                        ; $4d8d: $5f
	and  c                                           ; $4d8e: $a1
	cp   c                                           ; $4d8f: $b9
	dec  e                                           ; $4d90: $1d
	ld   [hl], c                                     ; $4d91: $71
	push af                                          ; $4d92: $f5
	cpl                                              ; $4d93: $2f
	sub  a                                           ; $4d94: $97
	cp   $6f                                         ; $4d95: $fe $6f
	ld   h, c                                        ; $4d97: $61
	db   $e3                                         ; $4d98: $e3
	rra                                              ; $4d99: $1f
	ld   de, $7ff1                                   ; $4d9a: $11 $f1 $7f
	adc  d                                           ; $4d9d: $8a
	ld   a, [$227f]                                  ; $4d9e: $fa $7f $22
	pop  af                                          ; $4da1: $f1
	rra                                              ; $4da2: $1f
	inc  d                                           ; $4da3: $14
	pop  af                                          ; $4da4: $f1
	cp   a                                           ; $4da5: $bf
	ld   l, h                                        ; $4da6: $6c
	rst  $30                                         ; $4da7: $f7
	xor  a                                           ; $4da8: $af
	rla                                              ; $4da9: $17
	pop  hl                                          ; $4daa: $e1
	ld   a, l                                        ; $4dab: $7d
	ld   e, $b1                                      ; $4dac: $1e $b1
	db   $fc                                         ; $4dae: $fc
	ld   l, a                                        ; $4daf: $6f
	push af                                          ; $4db0: $f5
	db   $db                                         ; $4db1: $db
	inc  e                                           ; $4db2: $1c
	add  c                                           ; $4db3: $81
	push hl                                          ; $4db4: $e5
	rra                                              ; $4db5: $1f
	ld   d, e                                        ; $4db6: $53
	ei                                               ; $4db7: $fb
	ld   a, a                                        ; $4db8: $7f
	push af                                          ; $4db9: $f5
	push af                                          ; $4dba: $f5
	rra                                              ; $4dbb: $1f
	ld   de, $3ff1                                   ; $4dbc: $11 $f1 $3f
	ld   a, [de]                                     ; $4dbf: $1a
	ld   hl, sp-$51                                  ; $4dc0: $f8 $af
	and  a                                           ; $4dc2: $a7
	pop  af                                          ; $4dc3: $f1
	ld   c, [hl]                                     ; $4dc4: $4e
	dec  d                                           ; $4dc5: $15
	pop  af                                          ; $4dc6: $f1
	call z, $e81e                                    ; $4dc7: $cc $1e $e8
	rst  JumpTable                                         ; $4dca: $df
	ld   l, e                                        ; $4dcb: $6b
	pop  bc                                          ; $4dcc: $c1
	xor  d                                           ; $4dcd: $aa
	dec  e                                           ; $4dce: $1d
	ld   h, c                                        ; $4dcf: $61
	push af                                          ; $4dd0: $f5
	ld   c, a                                        ; $4dd1: $4f
	cp   b                                           ; $4dd2: $b8
	rst  $38                                         ; $4dd3: $ff
	ld   e, [hl]                                     ; $4dd4: $5e
	ld   [hl], c                                     ; $4dd5: $71
	pop  hl                                          ; $4dd6: $e1
	rra                                              ; $4dd7: $1f
	ld   [de], a                                     ; $4dd8: $12
	pop  af                                          ; $4dd9: $f1
	cp   [hl]                                        ; $4dda: $be
	xor  d                                           ; $4ddb: $aa
	ld   a, [$147f]                                  ; $4ddc: $fa $7f $14
	pop  hl                                          ; $4ddf: $e1
	ld   l, l                                        ; $4de0: $6d
	ld   e, $b1                                      ; $4de1: $1e $b1
	db   $ec                                         ; $4de3: $ec
	sbc  l                                           ; $4de4: $9d
	rst  $30                                         ; $4de5: $f7
	xor  e                                           ; $4de6: $ab
	dec  de                                          ; $4de7: $1b
	add  c                                           ; $4de8: $81
	di                                               ; $4de9: $f3
	rra                                              ; $4dea: $1f
	ld   b, [hl]                                     ; $4deb: $46
	ei                                               ; $4dec: $fb
	sbc  a                                           ; $4ded: $9f
	or   $d6                                         ; $4dee: $f6 $d6

jr_0ac_4df0:
	rra                                              ; $4df0: $1f
	ld   de, $5ff1                                   ; $4df1: $11 $f1 $5f
	inc  e                                           ; $4df4: $1c
	jp   hl                                          ; $4df5: $e9


	cp   a                                           ; $4df6: $bf
	and  a                                           ; $4df7: $a7
	pop  hl                                          ; $4df8: $e1
	ld   l, l                                        ; $4df9: $6d
	add  hl, de                                      ; $4dfa: $19
	or   c                                           ; $4dfb: $b1
	ld   hl, sp+$2f                                  ; $4dfc: $f8 $2f
	ret                                              ; $4dfe: $c9


	rst  $28                                         ; $4dff: $ef
	ld   l, e                                        ; $4e00: $6b
	and  c                                           ; $4e01: $a1
	or   a                                           ; $4e02: $b7
	rra                                              ; $4e03: $1f
	ld   de, $7ff3                                   ; $4e04: $11 $f3 $7f
	xor  b                                           ; $4e07: $a8
	cp   $5e                                         ; $4e08: $fe $5e
	ld   b, c                                        ; $4e0a: $41
	pop  hl                                          ; $4e0b: $e1
	rra                                              ; $4e0c: $1f
	jr   jr_0ac_4df0                                 ; $4e0d: $18 $e1

	adc  $9a                                         ; $4e0f: $ce $9a
	ld   hl, sp+$7d                                  ; $4e11: $f8 $7d
	rla                                              ; $4e13: $17
	pop  bc                                          ; $4e14: $c1
	cp   b                                           ; $4e15: $b8
	rra                                              ; $4e16: $1f
	ld   [hl], e                                     ; $4e17: $73
	ei                                               ; $4e18: $fb
	adc  a                                           ; $4e19: $8f
	push af                                          ; $4e1a: $f5
	jp   z, Jump_0ac_411d                            ; $4e1b: $ca $1d $41

	pop  af                                          ; $4e1e: $f1
	rra                                              ; $4e1f: $1f
	add  hl, hl                                      ; $4e20: $29
	ld   a, [$c58f]                                  ; $4e21: $fa $8f $c5
	db   $e3                                         ; $4e24: $e3
	cpl                                              ; $4e25: $2f
	inc  d                                           ; $4e26: $14
	pop  af                                          ; $4e27: $f1
	cp   l                                           ; $4e28: $bd
	ld   e, $e9                                      ; $4e29: $1e $e9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e2b: $cf
	ld   a, b                                        ; $4e2c: $78
	pop  bc                                          ; $4e2d: $c1
	xor  c                                           ; $4e2e: $a9
	rra                                              ; $4e2f: $1f
	ld   b, c                                        ; $4e30: $41
	db   $f4                                         ; $4e31: $f4
	ld   l, [hl]                                     ; $4e32: $6e
	cp   b                                           ; $4e33: $b8
	rst  $38                                         ; $4e34: $ff
	ld   c, h                                        ; $4e35: $4c
	add  c                                           ; $4e36: $81
	pop  hl                                          ; $4e37: $e1
	rra                                              ; $4e38: $1f
	inc  de                                          ; $4e39: $13
	pop  af                                          ; $4e3a: $f1
	xor  a                                           ; $4e3b: $af
	sbc  c                                           ; $4e3c: $99
	ei                                               ; $4e3d: $fb
	ld   e, [hl]                                     ; $4e3e: $5e
	inc  d                                           ; $4e3f: $14
	pop  hl                                          ; $4e40: $e1

Jump_0ac_4e41:
	ld   a, l                                        ; $4e41: $7d
	rra                                              ; $4e42: $1f
	sub  e                                           ; $4e43: $93
	db   $ed                                         ; $4e44: $ed
	adc  h                                           ; $4e45: $8c
	or   $9b                                         ; $4e46: $f6 $9b
	dec  de                                          ; $4e48: $1b
	ld   h, c                                        ; $4e49: $61
	pop  af                                          ; $4e4a: $f1
	rra                                              ; $4e4b: $1f
	add  hl, hl                                      ; $4e4c: $29
	db   $eb                                         ; $4e4d: $eb
	sbc  a                                           ; $4e4e: $9f
	db   $e4                                         ; $4e4f: $e4
	call nc, $121f                                   ; $4e50: $d4 $1f $12
	pop  af                                          ; $4e53: $f1
	cp   l                                           ; $4e54: $bd
	dec  e                                           ; $4e55: $1d
	reti                                             ; $4e56: $d9


	xor  a                                           ; $4e57: $af
	add  a                                           ; $4e58: $87
	pop  bc                                          ; $4e59: $c1
	adc  d                                           ; $4e5a: $8a
	ld   e, $41                                      ; $4e5b: $1e $41
	db   $f4                                         ; $4e5d: $f4
	ld   l, [hl]                                     ; $4e5e: $6e
	cp   c                                           ; $4e5f: $b9
	rst  $38                                         ; $4e60: $ff
	ld   c, h                                        ; $4e61: $4c
	ld   [hl], c                                     ; $4e62: $71
	pop  hl                                          ; $4e63: $e1
	rra                                              ; $4e64: $1f
	dec  d                                           ; $4e65: $15
	pop  af                                          ; $4e66: $f1
	adc  $a9                                         ; $4e67: $ce $a9
	ld   a, [$156d]                                  ; $4e69: $fa $6d $15
	pop  bc                                          ; $4e6c: $c1
	xor  c                                           ; $4e6d: $a9
	rra                                              ; $4e6e: $1f
	ld   [hl], l                                     ; $4e6f: $75
	db   $ec                                         ; $4e70: $ec
	sbc  l                                           ; $4e71: $9d
	push af                                          ; $4e72: $f5
	cp   c                                           ; $4e73: $b9
	dec  e                                           ; $4e74: $1d
	ld   sp, $2ff1                                   ; $4e75: $31 $f1 $2f
	ld   a, [de]                                     ; $4e78: $1a
	ld   [$c59f], a                                  ; $4e79: $ea $9f $c5
	db   $d3                                         ; $4e7c: $d3
	ld   a, $16                                      ; $4e7d: $3e $16
	pop  de                                          ; $4e7f: $d1
	ld   a, [$c92e]                                  ; $4e80: $fa $2e $c9
	cp   a                                           ; $4e83: $bf
	ld   l, c                                        ; $4e84: $69
	pop  bc                                          ; $4e85: $c1
	add  $1f                                         ; $4e86: $c6 $1f
	ld   de, $9ef2                                   ; $4e88: $11 $f2 $9e
	cp   b                                           ; $4e8b: $b8
	cp   $5d                                         ; $4e8c: $fe $5d
	ld   b, c                                        ; $4e8e: $41
	pop  af                                          ; $4e8f: $f1
	ld   c, [hl]                                     ; $4e90: $4e
	inc  e                                           ; $4e91: $1c
	jp   nz, $9bed                                   ; $4e92: $c2 $ed $9b

	rst  $30                                         ; $4e95: $f7
	adc  h                                           ; $4e96: $8c
	add  hl, de                                      ; $4e97: $19
	sub  c                                           ; $4e98: $91
	db   $f4                                         ; $4e99: $f4
	rra                                              ; $4e9a: $1f
	ld   b, [hl]                                     ; $4e9b: $46
	db   $ec                                         ; $4e9c: $ec
	adc  a                                           ; $4e9d: $8f
	db   $f4                                         ; $4e9e: $f4
	sub  $1f                                         ; $4e9f: $d6 $1f
	ld   de, $8ef1                                   ; $4ea1: $11 $f1 $8e
	inc  e                                           ; $4ea4: $1c
	ld   [$96af], a                                  ; $4ea5: $ea $af $96
	pop  hl                                          ; $4ea8: $e1
	ld   l, l                                        ; $4ea9: $6d
	inc  e                                           ; $4eaa: $1c
	add  c                                           ; $4eab: $81
	or   $4f                                         ; $4eac: $f6 $4f
	ret  z                                           ; $4eae: $c8

	rst  JumpTable                                         ; $4eaf: $df
	ld   e, e                                        ; $4eb0: $5b
	and  c                                           ; $4eb1: $a1
	db   $d3                                         ; $4eb2: $d3
	rra                                              ; $4eb3: $1f
	ld   [de], a                                     ; $4eb4: $12
	pop  af                                          ; $4eb5: $f1
	sbc  [hl]                                        ; $4eb6: $9e
	or   a                                           ; $4eb7: $b7
	db   $fc                                         ; $4eb8: $fc
	ccf                                              ; $4eb9: $3f
	inc  hl                                          ; $4eba: $23
	pop  af                                          ; $4ebb: $f1
	ld   a, h                                        ; $4ebc: $7c
	dec  e                                           ; $4ebd: $1d
	and  d                                           ; $4ebe: $a2
	db   $dd                                         ; $4ebf: $dd
	sbc  e                                           ; $4ec0: $9b
	or   $8d                                         ; $4ec1: $f6 $8d
	ld   a, [de]                                     ; $4ec3: $1a
	add  c                                           ; $4ec4: $81
	ldh  a, [c]                                      ; $4ec5: $f2
	rra                                              ; $4ec6: $1f
	ld   b, [hl]                                     ; $4ec7: $46
	db   $fc                                         ; $4ec8: $fc
	ld   a, a                                        ; $4ec9: $7f
	di                                               ; $4eca: $f3
	rst  $10                                         ; $4ecb: $d7
	rra                                              ; $4ecc: $1f
	ld   de, $8ff1                                   ; $4ecd: $11 $f1 $8f
	dec  de                                          ; $4ed0: $1b
	db   $eb                                         ; $4ed1: $eb
	adc  a                                           ; $4ed2: $8f
	and  l                                           ; $4ed3: $a5
	pop  af                                          ; $4ed4: $f1
	ld   e, [hl]                                     ; $4ed5: $5e
	dec  de                                          ; $4ed6: $1b
	or   c                                           ; $4ed7: $b1
	ld   sp, hl                                      ; $4ed8: $f9
	dec  a                                           ; $4ed9: $3d
	rst  $20                                         ; $4eda: $e7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4edb: $cf

jr_0ac_4edc:
	ld   c, d                                        ; $4edc: $4a
	pop  bc                                          ; $4edd: $c1
	and  $1f                                         ; $4ede: $e6 $1f
	ld   de, $7ef3                                   ; $4ee0: $11 $f3 $7e
	add  $ff                                         ; $4ee3: $c6 $ff
	cpl                                              ; $4ee5: $2f
	ld   d, c                                        ; $4ee6: $51
	pop  af                                          ; $4ee7: $f1
	rra                                              ; $4ee8: $1f
	jr   jr_0ac_4edc                                 ; $4ee9: $18 $f1

	xor  a                                           ; $4eeb: $af
	sbc  b                                           ; $4eec: $98
	ld   a, [$165f]                                  ; $4eed: $fa $5f $16
	pop  hl                                          ; $4ef0: $e1
	cp   c                                           ; $4ef1: $b9
	rra                                              ; $4ef2: $1f
	add  e                                           ; $4ef3: $83
	sbc  $7b                                         ; $4ef4: $de $7b
	db   $f4                                         ; $4ef6: $f4
	xor  [hl]                                        ; $4ef7: $ae
	ld   e, $71                                      ; $4ef8: $1e $71
	pop  af                                          ; $4efa: $f1
	rra                                              ; $4efb: $1f
	ld   [hl], $ed                                   ; $4efc: $36 $ed
	ld   l, a                                        ; $4efe: $6f
	ldh  a, [c]                                      ; $4eff: $f2
	rst  $30                                         ; $4f00: $f7
	rra                                              ; $4f01: $1f
	ld   de, $5ff1                                   ; $4f02: $11 $f1 $5f
	add  hl, de                                      ; $4f05: $19
	ei                                               ; $4f06: $fb
	ld   l, a                                        ; $4f07: $6f
	or   e                                           ; $4f08: $b3
	pop  af                                          ; $4f09: $f1
	ccf                                              ; $4f0a: $3f
	ld   d, $f1                                      ; $4f0b: $16 $f1
	call z, $e91b                                    ; $4f0d: $cc $1b $e9
	sbc  a                                           ; $4f10: $9f
	ld   h, a                                        ; $4f11: $67
	pop  af                                          ; $4f12: $f1
	sbc  h                                           ; $4f13: $9c
	ld   e, $71                                      ; $4f14: $1e $71
	rst  $30                                         ; $4f16: $f7
	inc  a                                           ; $4f17: $3c
	and  $cf                                         ; $4f18: $e6 $cf
	dec  a                                           ; $4f1a: $3d

jr_0ac_4f1b:
	pop  de                                          ; $4f1b: $d1
	rst  $20                                         ; $4f1c: $e7
	rra                                              ; $4f1d: $1f
	ld   hl, $5df4                                   ; $4f1e: $21 $f4 $5d
	push bc                                          ; $4f21: $c5
	rst  $38                                         ; $4f22: $ff
	cpl                                              ; $4f23: $2f
	sub  c                                           ; $4f24: $91
	ldh  a, [c]                                      ; $4f25: $f2
	rra                                              ; $4f26: $1f

jr_0ac_4f27:
	ld   de, $7df2                                   ; $4f27: $11 $f2 $7d
	or   l                                           ; $4f2a: $b5

jr_0ac_4f2b:
	rst  $38                                         ; $4f2b: $ff
	cpl                                              ; $4f2c: $2f
	ld   d, c                                        ; $4f2d: $51
	pop  af                                          ; $4f2e: $f1
	rra                                              ; $4f2f: $1f
	inc  d                                           ; $4f30: $14
	pop  af                                          ; $4f31: $f1
	sbc  [hl]                                        ; $4f32: $9e
	and  [hl]                                        ; $4f33: $a6
	db   $fc                                         ; $4f34: $fc
	ld   c, a                                        ; $4f35: $4f
	ld   [hl+], a                                    ; $4f36: $22
	pop  af                                          ; $4f37: $f1
	ccf                                              ; $4f38: $3f
	rla                                              ; $4f39: $17
	pop  af                                          ; $4f3a: $f1
	xor  h                                           ; $4f3b: $ac
	add  a                                           ; $4f3c: $87
	ld   sp, hl                                      ; $4f3d: $f9
	ld   e, a                                        ; $4f3e: $5f
	inc  d                                           ; $4f3f: $14
	pop  af                                          ; $4f40: $f1
	ld   e, a                                        ; $4f41: $5f
	ld   a, [de]                                     ; $4f42: $1a
	pop  de                                          ; $4f43: $d1
	res  2, a                                        ; $4f44: $cb $97
	ld   hl, sp+$6f                                  ; $4f46: $f8 $6f

jr_0ac_4f48:
	jr   jr_0ac_4f2b                                 ; $4f48: $18 $e1

	xor  h                                           ; $4f4a: $ac
	ld   e, $a2                                      ; $4f4b: $1e $a2
	res  1, b                                        ; $4f4d: $cb $88
	push af                                          ; $4f4f: $f5
	sbc  [hl]                                        ; $4f50: $9e
	inc  e                                           ; $4f51: $1c
	sub  c                                           ; $4f52: $91
	and  $1f                                         ; $4f53: $e6 $1f
	ld   h, l                                        ; $4f55: $65
	cp   e                                           ; $4f56: $bb
	ld   a, e                                        ; $4f57: $7b
	ldh  a, [c]                                      ; $4f58: $f2
	jp   c, $311f                                    ; $4f59: $da $1f $31

	pop  af                                          ; $4f5c: $f1
	ld   c, a                                        ; $4f5d: $4f
	jr   c, jr_0ac_4f1b                              ; $4f5e: $38 $bb

	ld   e, [hl]                                     ; $4f60: $5e
	db   $d3                                         ; $4f61: $d3
	di                                               ; $4f62: $f3
	ld   c, a                                        ; $4f63: $4f
	ld   d, $e1                                      ; $4f64: $16 $e1
	sbc  e                                           ; $4f66: $9b
	ld   c, c                                        ; $4f67: $49
	cp   e                                           ; $4f68: $bb
	ld   e, a                                        ; $4f69: $5f
	add  [hl]                                        ; $4f6a: $86
	pop  af                                          ; $4f6b: $f1
	xor  e                                           ; $4f6c: $ab
	dec  de                                          ; $4f6d: $1b
	ld   [hl], c                                     ; $4f6e: $71
	rst  $10                                         ; $4f6f: $d7
	ld   l, c                                        ; $4f70: $69
	ret  z                                           ; $4f71: $c8

	ld   a, a                                        ; $4f72: $7f
	dec  sp                                          ; $4f73: $3b
	or   c                                           ; $4f74: $b1
	push hl                                          ; $4f75: $e5
	dec  c                                           ; $4f76: $0d
	inc  h                                           ; $4f77: $24
	push de                                          ; $4f78: $d5
	sbc  b                                           ; $4f79: $98
	push de                                          ; $4f7a: $d5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f7b: $cf
	cpl                                              ; $4f7c: $2f
	ld   d, h                                        ; $4f7d: $54
	pop  de                                          ; $4f7e: $d1
	ld   l, e                                        ; $4f7f: $6b
	jr   jr_0ac_4f27                                 ; $4f80: $18 $a5

	sbc  c                                           ; $4f82: $99
	call nz, Call_0ac_5ffa                           ; $4f83: $c4 $fa $5f
	ld   a, [de]                                     ; $4f86: $1a
	and  c                                           ; $4f87: $a1
	xor  b                                           ; $4f88: $a8
	dec  de                                          ; $4f89: $1b
	ld   [hl], a                                     ; $4f8a: $77
	sbc  e                                           ; $4f8b: $9b
	sub  l                                           ; $4f8c: $95
	push af                                          ; $4f8d: $f5
	xor  h                                           ; $4f8e: $ac
	dec  e                                           ; $4f8f: $1d
	ld   [hl], c                                     ; $4f90: $71
	or   l                                           ; $4f91: $b5
	dec  l                                           ; $4f92: $2d
	ld   e, c                                        ; $4f93: $59
	ld   a, h                                        ; $4f94: $7c
	ld   a, b                                        ; $4f95: $78
	ldh  a, [c]                                      ; $4f96: $f2
	add  sp, $3c                                     ; $4f97: $e8 $3c
	ld   b, e                                        ; $4f99: $43
	or   e                                           ; $4f9a: $b3
	ld   e, h                                        ; $4f9b: $5c
	ld   c, c                                        ; $4f9c: $49
	ld   a, h                                        ; $4f9d: $7c
	ld   e, l                                        ; $4f9e: $5d
	call nc, Call_0ac_7bf4                           ; $4f9f: $d4 $f4 $7b
	dec  [hl]                                        ; $4fa2: $35
	and  c                                           ; $4fa3: $a1
	adc  d                                           ; $4fa4: $8a
	ld   e, c                                        ; $4fa5: $59
	ld   a, h                                        ; $4fa6: $7c
	ld   c, a                                        ; $4fa7: $4f
	and  a                                           ; $4fa8: $a7
	db   $e3                                         ; $4fa9: $e3
	sbc  c                                           ; $4faa: $99
	ld   [hl], $a1                                   ; $4fab: $36 $a1
	and  a                                           ; $4fad: $a7
	ld   l, b                                        ; $4fae: $68
	sbc  d                                           ; $4faf: $9a
	ld   e, a                                        ; $4fb0: $5f
	ld   a, d                                        ; $4fb1: $7a
	or   h                                           ; $4fb2: $b4
	xor  b                                           ; $4fb3: $a8
	jr   c, jr_0ac_4f48                              ; $4fb4: $38 $92

	and  [hl]                                        ; $4fb6: $a6
	ld   [hl], a                                     ; $4fb7: $77
	xor  c                                           ; $4fb8: $a9
	ld   l, [hl]                                     ; $4fb9: $6e
	ld   l, e                                        ; $4fba: $6b
	and  l                                           ; $4fbb: $a5
	sbc  b                                           ; $4fbc: $98
	ld   c, c                                        ; $4fbd: $49
	add  d                                           ; $4fbe: $82
	and  [hl]                                        ; $4fbf: $a6
	add  a                                           ; $4fc0: $87
	xor  c                                           ; $4fc1: $a9
	ld   a, l                                        ; $4fc2: $7d
	ld   l, d                                        ; $4fc3: $6a
	and  a                                           ; $4fc4: $a7
	sbc  c                                           ; $4fc5: $99
	ld   c, b                                        ; $4fc6: $48
	ld   [hl], h                                     ; $4fc7: $74
	and  [hl]                                        ; $4fc8: $a6
	add  a                                           ; $4fc9: $87
	sbc  b                                           ; $4fca: $98
	ld   a, e                                        ; $4fcb: $7b
	ld   a, c                                        ; $4fcc: $79
	and  a                                           ; $4fcd: $a7
	adc  d                                           ; $4fce: $8a
	ld   e, b                                        ; $4fcf: $58
	add  l                                           ; $4fd0: $85
	sub  a                                           ; $4fd1: $97
	ld   [hl], a                                     ; $4fd2: $77
	sbc  b                                           ; $4fd3: $98
	ld   a, c                                        ; $4fd4: $79
	sbc  b                                           ; $4fd5: $98
	xor  c                                           ; $4fd6: $a9
	adc  c                                           ; $4fd7: $89
	ld   h, a                                        ; $4fd8: $67
	sub  [hl]                                        ; $4fd9: $96
	adc  b                                           ; $4fda: $88
	ld   [hl], a                                     ; $4fdb: $77
	add  a                                           ; $4fdc: $87
	ld   a, c                                        ; $4fdd: $79
	sbc  b                                           ; $4fde: $98
	xor  c                                           ; $4fdf: $a9
	adc  c                                           ; $4fe0: $89
	ld   [hl], a                                     ; $4fe1: $77
	sub  [hl]                                        ; $4fe2: $96
	ld   a, c                                        ; $4fe3: $79
	ld   h, a                                        ; $4fe4: $67
	add  a                                           ; $4fe5: $87
	adc  c                                           ; $4fe6: $89
	sbc  b                                           ; $4fe7: $98
	sbc  c                                           ; $4fe8: $99
	adc  c                                           ; $4fe9: $89
	ld   [hl], a                                     ; $4fea: $77
	sub  [hl]                                        ; $4feb: $96
	ld   a, c                                        ; $4fec: $79
	ld   h, a                                        ; $4fed: $67
	ld   [hl], a                                     ; $4fee: $77
	adc  b                                           ; $4fef: $88
	sbc  b                                           ; $4ff0: $98
	sbc  c                                           ; $4ff1: $99
	adc  c                                           ; $4ff2: $89
	ld   [hl], a                                     ; $4ff3: $77
	sub  [hl]                                        ; $4ff4: $96
	adc  b                                           ; $4ff5: $88
	ld   l, b                                        ; $4ff6: $68
	ld   [hl], a                                     ; $4ff7: $77
	adc  b                                           ; $4ff8: $88
	sbc  c                                           ; $4ff9: $99
	xor  c                                           ; $4ffa: $a9
	adc  c                                           ; $4ffb: $89
	ld   [hl], a                                     ; $4ffc: $77
	add  [hl]                                        ; $4ffd: $86
	adc  b                                           ; $4ffe: $88
	ld   l, b                                        ; $4fff: $68
	ld   [hl], a                                     ; $5000: $77
	ld   a, b                                        ; $5001: $78
	sbc  c                                           ; $5002: $99
	sbc  c                                           ; $5003: $99
	adc  c                                           ; $5004: $89
	ld   a, b                                        ; $5005: $78
	sub  [hl]                                        ; $5006: $96
	add  a                                           ; $5007: $87
	ld   [hl], a                                     ; $5008: $77
	ld   [hl], a                                     ; $5009: $77
	ld   a, c                                        ; $500a: $79
	adc  c                                           ; $500b: $89
	sbc  b                                           ; $500c: $98
	sbc  d                                           ; $500d: $9a
	ld   a, b                                        ; $500e: $78
	add  a                                           ; $500f: $87
	add  a                                           ; $5010: $87
	ld   [hl], a                                     ; $5011: $77
	ld   [hl], a                                     ; $5012: $77
	ld   a, c                                        ; $5013: $79
	sbc  b                                           ; $5014: $98
	sbc  b                                           ; $5015: $98
	sbc  c                                           ; $5016: $99
	ld   a, b                                        ; $5017: $78
	add  a                                           ; $5018: $87
	add  a                                           ; $5019: $87
	ld   [hl], a                                     ; $501a: $77
	ld   [hl], a                                     ; $501b: $77
	ld   a, c                                        ; $501c: $79
	sbc  c                                           ; $501d: $99
	xor  c                                           ; $501e: $a9
	xor  c                                           ; $501f: $a9
	adc  b                                           ; $5020: $88
	add  a                                           ; $5021: $87
	ld   [hl], a                                     ; $5022: $77
	ld   [hl], a                                     ; $5023: $77
	ld   [hl], a                                     ; $5024: $77
	ld   a, b                                        ; $5025: $78
	sbc  c                                           ; $5026: $99
	sbc  c                                           ; $5027: $99
	sbc  c                                           ; $5028: $99
	adc  b                                           ; $5029: $88
	add  a                                           ; $502a: $87
	ld   [hl], a                                     ; $502b: $77
	ld   [hl], a                                     ; $502c: $77
	ld   [hl], a                                     ; $502d: $77
	ld   a, b                                        ; $502e: $78
	sbc  c                                           ; $502f: $99
	sbc  c                                           ; $5030: $99
	sbc  c                                           ; $5031: $99
	adc  b                                           ; $5032: $88
	add  a                                           ; $5033: $87
	ld   [hl], a                                     ; $5034: $77
	ld   [hl], a                                     ; $5035: $77
	ld   [hl], a                                     ; $5036: $77
	ld   a, c                                        ; $5037: $79
	adc  c                                           ; $5038: $89
	sbc  c                                           ; $5039: $99
	sbc  c                                           ; $503a: $99
	adc  b                                           ; $503b: $88
	add  a                                           ; $503c: $87
	ld   [hl], a                                     ; $503d: $77
	ld   [hl], a                                     ; $503e: $77
	ld   [hl], a                                     ; $503f: $77
	ld   a, c                                        ; $5040: $79
	adc  c                                           ; $5041: $89
	xor  c                                           ; $5042: $a9
	sbc  c                                           ; $5043: $99
	adc  b                                           ; $5044: $88
	add  a                                           ; $5045: $87
	ld   [hl], a                                     ; $5046: $77
	ld   [hl], a                                     ; $5047: $77
	ld   [hl], a                                     ; $5048: $77
	ld   a, c                                        ; $5049: $79
	adc  c                                           ; $504a: $89
	xor  c                                           ; $504b: $a9
	sbc  c                                           ; $504c: $99
	ld   a, b                                        ; $504d: $78
	add  a                                           ; $504e: $87
	ld   [hl], a                                     ; $504f: $77
	ld   [hl], a                                     ; $5050: $77
	ld   [hl], a                                     ; $5051: $77
	adc  c                                           ; $5052: $89
	adc  c                                           ; $5053: $89
	xor  c                                           ; $5054: $a9
	sbc  c                                           ; $5055: $99
	ld   a, b                                        ; $5056: $78
	add  a                                           ; $5057: $87
	add  a                                           ; $5058: $87
	ld   [hl], a                                     ; $5059: $77
	ld   [hl], a                                     ; $505a: $77
	adc  c                                           ; $505b: $89
	adc  c                                           ; $505c: $89
	xor  c                                           ; $505d: $a9
	sbc  c                                           ; $505e: $99
	ld   a, c                                        ; $505f: $79
	ld   [hl], a                                     ; $5060: $77
	add  a                                           ; $5061: $87
	ld   [hl], a                                     ; $5062: $77
	ld   [hl], a                                     ; $5063: $77
	adc  c                                           ; $5064: $89
	adc  c                                           ; $5065: $89
	xor  c                                           ; $5066: $a9
	xor  b                                           ; $5067: $a8
	ld   a, c                                        ; $5068: $79
	ld   [hl], a                                     ; $5069: $77
	add  a                                           ; $506a: $87
	ld   [hl], a                                     ; $506b: $77
	ld   [hl], a                                     ; $506c: $77
	adc  c                                           ; $506d: $89
	adc  d                                           ; $506e: $8a
	xor  c                                           ; $506f: $a9
	xor  b                                           ; $5070: $a8
	ld   a, b                                        ; $5071: $78
	ld   [hl], a                                     ; $5072: $77
	add  a                                           ; $5073: $87
	ld   [hl], a                                     ; $5074: $77
	ld   [hl], a                                     ; $5075: $77
	adc  c                                           ; $5076: $89
	sbc  c                                           ; $5077: $99
	sbc  c                                           ; $5078: $99
	xor  b                                           ; $5079: $a8
	adc  c                                           ; $507a: $89
	ld   a, b                                        ; $507b: $78
	halt                                             ; $507c: $76
	ld   [hl], a                                     ; $507d: $77
	ld   [hl], a                                     ; $507e: $77
	sbc  c                                           ; $507f: $99
	sbc  c                                           ; $5080: $99
	sbc  c                                           ; $5081: $99
	sub  a                                           ; $5082: $97
	adc  b                                           ; $5083: $88
	ld   a, b                                        ; $5084: $78
	ld   [hl], a                                     ; $5085: $77
	ld   [hl], a                                     ; $5086: $77
	ld   a, b                                        ; $5087: $78
	sbc  c                                           ; $5088: $99
	sbc  c                                           ; $5089: $99
	sbc  d                                           ; $508a: $9a
	sub  a                                           ; $508b: $97
	sub  a                                           ; $508c: $97
	ld   a, b                                        ; $508d: $78
	ld   [hl], a                                     ; $508e: $77
	ld   [hl], a                                     ; $508f: $77
	ld   a, b                                        ; $5090: $78
	sbc  b                                           ; $5091: $98
	xor  d                                           ; $5092: $aa
	sbc  c                                           ; $5093: $99
	sub  a                                           ; $5094: $97
	add  a                                           ; $5095: $87
	ld   a, b                                        ; $5096: $78
	ld   [hl], a                                     ; $5097: $77
	ld   [hl], a                                     ; $5098: $77
	ld   a, b                                        ; $5099: $78
	sbc  b                                           ; $509a: $98
	sbc  c                                           ; $509b: $99
	sbc  c                                           ; $509c: $99
	adc  b                                           ; $509d: $88
	sub  a                                           ; $509e: $97
	ld   [hl], a                                     ; $509f: $77
	ld   h, a                                        ; $50a0: $67
	ld   [hl], a                                     ; $50a1: $77
	ld   a, c                                        ; $50a2: $79
	sbc  c                                           ; $50a3: $99
	sbc  c                                           ; $50a4: $99
	sbc  d                                           ; $50a5: $9a
	ld   a, c                                        ; $50a6: $79
	add  [hl]                                        ; $50a7: $86
	add  a                                           ; $50a8: $87
	ld   h, a                                        ; $50a9: $67
	ld   [hl], a                                     ; $50aa: $77
	ld   a, b                                        ; $50ab: $78
	sbc  c                                           ; $50ac: $99
	sbc  c                                           ; $50ad: $99
	xor  c                                           ; $50ae: $a9
	ld   a, b                                        ; $50af: $78
	ld   [hl], a                                     ; $50b0: $77
	add  a                                           ; $50b1: $87
	ld   [hl], a                                     ; $50b2: $77
	ld   [hl], a                                     ; $50b3: $77
	adc  b                                           ; $50b4: $88
	sbc  c                                           ; $50b5: $99
	xor  c                                           ; $50b6: $a9
	sbc  b                                           ; $50b7: $98
	ld   a, b                                        ; $50b8: $78
	ld   [hl], a                                     ; $50b9: $77
	add  [hl]                                        ; $50ba: $86
	ld   [hl], a                                     ; $50bb: $77
	ld   [hl], a                                     ; $50bc: $77
	sbc  c                                           ; $50bd: $99
	adc  c                                           ; $50be: $89
	sbc  c                                           ; $50bf: $99
	sub  a                                           ; $50c0: $97
	adc  c                                           ; $50c1: $89
	ld   l, b                                        ; $50c2: $68
	halt                                             ; $50c3: $76
	ld   [hl], a                                     ; $50c4: $77
	ld   [hl], a                                     ; $50c5: $77
	adc  c                                           ; $50c6: $89
	sbc  c                                           ; $50c7: $99
	adc  c                                           ; $50c8: $89
	sub  a                                           ; $50c9: $97
	add  a                                           ; $50ca: $87
	ld   l, b                                        ; $50cb: $68
	ld   [hl], a                                     ; $50cc: $77
	ld   [hl], a                                     ; $50cd: $77
	ld   a, b                                        ; $50ce: $78
	sbc  b                                           ; $50cf: $98
	xor  d                                           ; $50d0: $aa
	sbc  d                                           ; $50d1: $9a
	add  a                                           ; $50d2: $87
	sub  [hl]                                        ; $50d3: $96
	ld   a, b                                        ; $50d4: $78
	ld   h, a                                        ; $50d5: $67
	ld   [hl], a                                     ; $50d6: $77
	ld   l, c                                        ; $50d7: $69
	adc  c                                           ; $50d8: $89
	xor  b                                           ; $50d9: $a8
	xor  d                                           ; $50da: $aa
	ld   l, c                                        ; $50db: $69
	add  l                                           ; $50dc: $85
	add  a                                           ; $50dd: $87
	ld   h, [hl]                                     ; $50de: $66
	sub  [hl]                                        ; $50df: $96
	ld   a, d                                        ; $50e0: $7a
	ld   a, d                                        ; $50e1: $7a
	xor  b                                           ; $50e2: $a8
	cp   b                                           ; $50e3: $b8
	ld   l, d                                        ; $50e4: $6a
	ld   h, [hl]                                     ; $50e5: $66
	add  [hl]                                        ; $50e6: $86
	halt                                             ; $50e7: $76
	sub  l                                           ; $50e8: $95
	xor  d                                           ; $50e9: $aa
	ld   a, h                                        ; $50ea: $7c
	adc  c                                           ; $50eb: $89
	or   a                                           ; $50ec: $b7
	ld   a, c                                        ; $50ed: $79
	ld   c, b                                        ; $50ee: $48
	ld   [hl], a                                     ; $50ef: $77
	ld   l, b                                        ; $50f0: $68
	add  l                                           ; $50f1: $85
	rst  ToBoot                                         ; $50f2: $c7
	xor  e                                           ; $50f3: $ab
	adc  c                                           ; $50f4: $89
	and  l                                           ; $50f5: $a5
	sub  a                                           ; $50f6: $97
	ld   c, d                                        ; $50f7: $4a
	ld   d, a                                        ; $50f8: $57
	ld   e, e                                        ; $50f9: $5b
	ld   e, c                                        ; $50fa: $59
	sub  $c9                                         ; $50fb: $d6 $c9
	adc  d                                           ; $50fd: $8a
	sub  l                                           ; $50fe: $95
	and  h                                           ; $50ff: $a4
	ld   l, b                                        ; $5100: $68
	ld   h, a                                        ; $5101: $67
	ld   l, e                                        ; $5102: $6b
	dec  a                                           ; $5103: $3d
	adc  b                                           ; $5104: $88
	rst  ToBoot                                         ; $5105: $c7
	xor  d                                           ; $5106: $aa
	ld   h, [hl]                                     ; $5107: $66
	sub  d                                           ; $5108: $92
	and  l                                           ; $5109: $a5
	add  l                                           ; $510a: $85
	and  a                                           ; $510b: $a7
	ld   e, a                                        ; $510c: $5f
	ld   e, h                                        ; $510d: $5c
	sbc  c                                           ; $510e: $99
	sbc  c                                           ; $510f: $99
	ld   c, d                                        ; $5110: $4a
	ld   d, h                                        ; $5111: $54
	and  l                                           ; $5112: $a5
	sub  h                                           ; $5113: $94
	jp   nc, Jump_0ac_7ddb                           ; $5114: $d2 $db $7d

	ld   a, b                                        ; $5117: $78
	sub  a                                           ; $5118: $97
	ld   c, h                                        ; $5119: $4c
	add  hl, de                                      ; $511a: $19
	ld   l, b                                        ; $511b: $68
	ld   e, b                                        ; $511c: $58
	and  e                                           ; $511d: $a3
	or   $ca                                         ; $511e: $f6 $ca
	adc  b                                           ; $5120: $88
	sub  h                                           ; $5121: $94
	add  a                                           ; $5122: $87
	ld   a, [hl+]                                    ; $5123: $2a
	ld   e, c                                        ; $5124: $59
	ld   c, [hl]                                     ; $5125: $4e
	dec  sp                                          ; $5126: $3b
	and  $d7                                         ; $5127: $e6 $d7
	sbc  c                                           ; $5129: $99
	ld   [hl], e                                     ; $512a: $73
	or   c                                           ; $512b: $b1
	add  [hl]                                        ; $512c: $86
	halt                                             ; $512d: $76
	sbc  h                                           ; $512e: $9c
	cpl                                              ; $512f: $2f
	ld   l, e                                        ; $5130: $6b
	and  [hl]                                        ; $5131: $a6
	sbc  b                                           ; $5132: $98
	ld   c, b                                        ; $5133: $48
	ld   h, d                                        ; $5134: $62
	and  h                                           ; $5135: $a4
	sub  h                                           ; $5136: $94
	db   $e4                                         ; $5137: $e4
	cp   [hl]                                        ; $5138: $be
	ld   e, [hl]                                     ; $5139: $5e
	ld   e, c                                        ; $513a: $59
	sub  [hl]                                        ; $513b: $96
	ld   c, e                                        ; $513c: $4b
	jr   jr_0ac_51b6                                 ; $513d: $18 $77

	ld   a, c                                        ; $513f: $79
	jp   nz, $cbf5                                   ; $5140: $c2 $f5 $cb

	ld   e, d                                        ; $5143: $5a
	ld   [hl], e                                     ; $5144: $73
	sub  l                                           ; $5145: $95
	dec  hl                                          ; $5146: $2b
	ld   c, d                                        ; $5147: $4a
	ld   c, a                                        ; $5148: $4f
	ld   a, $e4                                      ; $5149: $3e $e4
	di                                               ; $514b: $f3
	cp   b                                           ; $514c: $b8
	ld   b, [hl]                                     ; $514d: $46
	add  c                                           ; $514e: $81
	and  a                                           ; $514f: $a7
	ld   [hl], a                                     ; $5150: $77
	cp   e                                           ; $5151: $bb
	ld   c, a                                        ; $5152: $4f
	ld   a, $85                                      ; $5153: $3e $85
	jp   $2559                                       ; $5155: $c3 $59 $25


	and  l                                           ; $5158: $a5
	sub  a                                           ; $5159: $97
	ldh  [c], a                                      ; $515a: $e2
	ld   sp, hl                                      ; $515b: $f9
	ld   a, [hl]                                     ; $515c: $7e
	ld   e, $44                                      ; $515d: $1e $44
	sub  h                                           ; $515f: $94
	ld   a, [hl-]                                    ; $5160: $3a
	ld   l, b                                        ; $5161: $68
	ld   a, l                                        ; $5162: $7d
	ld   e, h                                        ; $5163: $5c
	ldh  a, [c]                                      ; $5164: $f2
	ldh  a, [c]                                      ; $5165: $f2
	xor  c                                           ; $5166: $a9
	add  hl, de                                      ; $5167: $19
	ld   h, d                                        ; $5168: $62
	and  a                                           ; $5169: $a7
	ld   a, b                                        ; $516a: $78
	ret  c                                           ; $516b: $d8

	ld   a, a                                        ; $516c: $7f
	ld   l, $74                                      ; $516d: $2e $74
	pop  de                                          ; $516f: $d1
	and  a                                           ; $5170: $a7
	add  hl, hl                                      ; $5171: $29
	sub  a                                           ; $5172: $97
	ld   a, e                                        ; $5173: $7b
	or   l                                           ; $5174: $b5
	push af                                          ; $5175: $f5
	sbc  e                                           ; $5176: $9b
	ld   e, $16                                      ; $5177: $1e $16
	and  c                                           ; $5179: $a1
	adc  c                                           ; $517a: $89
	ld   [hl], a                                     ; $517b: $77
	xor  l                                           ; $517c: $ad
	ld   c, a                                        ; $517d: $4f
	add  [hl]                                        ; $517e: $86
	pop  hl                                          ; $517f: $e1
	db   $e3                                         ; $5180: $e3
	dec  sp                                          ; $5181: $3b
	rla                                              ; $5182: $17
	sub  a                                           ; $5183: $97
	ld   a, d                                        ; $5184: $7a
	db   $e4                                         ; $5185: $e4
	db   $fc                                         ; $5186: $fc
	ccf                                              ; $5187: $3f
	dec  de                                          ; $5188: $1b
	ld   h, c                                        ; $5189: $61
	pop  de                                          ; $518a: $d1
	ld   e, d                                        ; $518b: $5a
	ld   a, b                                        ; $518c: $78
	adc  a                                           ; $518d: $8f
	ld   c, a                                        ; $518e: $4f
	ldh  [c], a                                      ; $518f: $e2
	pop  hl                                          ; $5190: $e1

jr_0ac_5191:
	and  [hl]                                        ; $5191: $a6
	ld   e, $16                                      ; $5192: $1e $16
	and  a                                           ; $5194: $a7
	adc  b                                           ; $5195: $88
	db   $f4                                         ; $5196: $f4
	rst  $28                                         ; $5197: $ef
	ld   a, $29                                      ; $5198: $3e $29
	add  c                                           ; $519a: $81
	pop  de                                          ; $519b: $d1
	ld   c, e                                        ; $519c: $4b
	ld   l, c                                        ; $519d: $69
	adc  a                                           ; $519e: $8f
	ld   e, l                                        ; $519f: $5d
	ldh  a, [c]                                      ; $51a0: $f2
	jp   nc, $1d98                                   ; $51a1: $d2 $98 $1d

	dec  d                                           ; $51a4: $15
	add  $97                                         ; $51a5: $c6 $97
	push af                                          ; $51a7: $f5
	rst  JumpTable                                         ; $51a8: $df
	ld   l, $29                                      ; $51a9: $2e $29
	ld   [hl], c                                     ; $51ab: $71
	pop  hl                                          ; $51ac: $e1
	ld   l, h                                        ; $51ad: $6c
	ld   l, c                                        ; $51ae: $69
	adc  a                                           ; $51af: $8f
	ld   c, a                                        ; $51b0: $4f
	jp   nc, $a6d1                                   ; $51b1: $d2 $d1 $a6

	ld   e, $16                                      ; $51b4: $1e $16

jr_0ac_51b6:
	add  $98                                         ; $51b6: $c6 $98
	db   $f4                                         ; $51b8: $f4
	db   $fd                                         ; $51b9: $fd
	ld   l, $1b                                      ; $51ba: $2e $1b
	ld   b, c                                        ; $51bc: $41
	pop  hl                                          ; $51bd: $e1
	adc  e                                           ; $51be: $8b
	ld   l, d                                        ; $51bf: $6a
	sbc  a                                           ; $51c0: $9f
	ccf                                              ; $51c1: $3f
	or   e                                           ; $51c2: $b3
	pop  hl                                          ; $51c3: $e1
	jp   nz, $1b2f                                   ; $51c4: $c2 $2f $1b

	and  [hl]                                        ; $51c7: $a6
	xor  c                                           ; $51c8: $a9
	di                                               ; $51c9: $f3
	ld   sp, hl                                      ; $51ca: $f9
	ld   c, [hl]                                     ; $51cb: $4e
	dec  e                                           ; $51cc: $1d
	ld   [de], a                                     ; $51cd: $12
	pop  af                                          ; $51ce: $f1
	cp   d                                           ; $51cf: $ba
	ld   l, d                                        ; $51d0: $6a
	xor  l                                           ; $51d1: $ad
	ld   c, a                                        ; $51d2: $4f
	add  l                                           ; $51d3: $85
	pop  bc                                          ; $51d4: $c1
	pop  de                                          ; $51d5: $d1
	ld   l, e                                        ; $51d6: $6b
	dec  e                                           ; $51d7: $1d
	ld   a, b                                        ; $51d8: $78
	sbc  d                                           ; $51d9: $9a
	push de                                          ; $51da: $d5
	push af                                          ; $51db: $f5
	ld   a, c                                        ; $51dc: $79
	dec  e                                           ; $51dd: $1d
	jr   jr_0ac_5191                                 ; $51de: $18 $b1

	rst  $20                                         ; $51e0: $e7
	ld   a, d                                        ; $51e1: $7a
	cp   e                                           ; $51e2: $bb
	ld   a, a                                        ; $51e3: $7f
	add  hl, sp                                      ; $51e4: $39
	add  e                                           ; $51e5: $83
	or   c                                           ; $51e6: $b1
	add  $1f                                         ; $51e7: $c6 $1f
	ld   c, d                                        ; $51e9: $4a
	adc  l                                           ; $51ea: $8d
	sbc  b                                           ; $51eb: $98
	pop  af                                          ; $51ec: $f1
	push bc                                          ; $51ed: $c5
	ld   c, e                                        ; $51ee: $4b
	rra                                              ; $51ef: $1f
	ld   b, c                                        ; $51f0: $41
	db   $f4                                         ; $51f1: $f4
	cp   c                                           ; $51f2: $b9
	rst  $10                                         ; $51f3: $d7
	cp   a                                           ; $51f4: $bf
	dec  e                                           ; $51f5: $1d
	scf                                              ; $51f6: $37
	sub  c                                           ; $51f7: $91
	pop  af                                          ; $51f8: $f1
	ld   e, [hl]                                     ; $51f9: $5e
	dec  sp                                          ; $51fa: $3b
	sbc  [hl]                                        ; $51fb: $9e
	ld   l, [hl]                                     ; $51fc: $6e
	pop  hl                                          ; $51fd: $e1
	pop  de                                          ; $51fe: $d1
	and  [hl]                                        ; $51ff: $a6
	rra                                              ; $5200: $1f
	add  hl, de                                      ; $5201: $19
	call nz, $d5c9                                   ; $5202: $c4 $c9 $d5
	db   $fc                                         ; $5205: $fc
	ld   l, $1b                                      ; $5206: $2e $1b
	ld   sp, $bcf1                                   ; $5208: $31 $f1 $bc
	ld   c, l                                        ; $520b: $4d
	sbc  h                                           ; $520c: $9c
	ld   e, a                                        ; $520d: $5f
	add  h                                           ; $520e: $84
	pop  bc                                          ; $520f: $c1
	pop  bc                                          ; $5210: $c1
	ld   l, h                                        ; $5211: $6c
	rra                                              ; $5212: $1f
	add  [hl]                                        ; $5213: $86
	jp   z, $f4c6                                    ; $5214: $ca $c6 $f4

	ld   l, d                                        ; $5217: $6a
	inc  e                                           ; $5218: $1c
	add  hl, de                                      ; $5219: $19
	and  c                                           ; $521a: $a1
	or   $8c                                         ; $521b: $f6 $8c
	cp   e                                           ; $521d: $bb
	ld   a, a                                        ; $521e: $7f
	add  hl, hl                                      ; $521f: $29
	ld   [hl], d                                     ; $5220: $72
	pop  bc                                          ; $5221: $c1
	add  $1f                                         ; $5222: $c6 $1f
	ld   c, d                                        ; $5224: $4a
	xor  h                                           ; $5225: $ac
	sbc  c                                           ; $5226: $99
	pop  af                                          ; $5227: $f1
	or   l                                           ; $5228: $b5
	ld   c, d                                        ; $5229: $4a
	rra                                              ; $522a: $1f
	inc  hl                                          ; $522b: $23
	ldh  a, [c]                                      ; $522c: $f2
	jp   z, $beb8                                    ; $522d: $ca $b8 $be

	inc  e                                           ; $5230: $1c
	scf                                              ; $5231: $37
	ld   [hl], c                                     ; $5232: $71
	pop  af                                          ; $5233: $f1
	ld   a, a                                        ; $5234: $7f
	dec  l                                           ; $5235: $2d
	sbc  h                                           ; $5236: $9c
	ld   a, [hl]                                     ; $5237: $7e
	pop  bc                                          ; $5238: $c1
	pop  bc                                          ; $5239: $c1
	and  h                                           ; $523a: $a4
	rra                                              ; $523b: $1f
	dec  de                                          ; $523c: $1b
	jp   $c6d9                                       ; $523d: $c3 $d9 $c6


	ld   hl, sp+$3c                                  ; $5240: $f8 $3c
	inc  e                                           ; $5242: $1c
	inc  hl                                          ; $5243: $23
	pop  af                                          ; $5244: $f1
	db   $db                                         ; $5245: $db
	dec  a                                           ; $5246: $3d
	xor  d                                           ; $5247: $aa
	ld   a, a                                        ; $5248: $7f
	ld   h, l                                        ; $5249: $65
	or   c                                           ; $524a: $b1
	or   c                                           ; $524b: $b1
	ld   a, h                                        ; $524c: $7c
	rra                                              ; $524d: $1f
	add  l                                           ; $524e: $85
	reti                                             ; $524f: $d9


	sbc  b                                           ; $5250: $98
	di                                               ; $5251: $f3
	ld   a, c                                        ; $5252: $79
	inc  e                                           ; $5253: $1c
	ld   a, [de]                                     ; $5254: $1a
	sub  c                                           ; $5255: $91
	or   $7c                                         ; $5256: $f6 $7c
	xor  b                                           ; $5258: $a8
	xor  a                                           ; $5259: $af
	add  hl, hl                                      ; $525a: $29
	ld   [hl], e                                     ; $525b: $73
	or   c                                           ; $525c: $b1
	sub  $1f                                         ; $525d: $d6 $1f
	ld   c, b                                        ; $525f: $48
	jp   z, $f18b                                    ; $5260: $ca $8b $f1

	and  l                                           ; $5263: $a5
	ld   e, d                                        ; $5264: $5a
	rra                                              ; $5265: $1f
	inc  [hl]                                        ; $5266: $34
	di                                               ; $5267: $f3
	xor  e                                           ; $5268: $ab
	or   a                                           ; $5269: $b7
	call $371c                                       ; $526a: $cd $1c $37
	sub  c                                           ; $526d: $91
	pop  af                                          ; $526e: $f1
	ld   e, a                                        ; $526f: $5f
	dec  hl                                          ; $5270: $2b
	ret                                              ; $5271: $c9


	ld   a, [hl]                                     ; $5272: $7e
	and  d                                           ; $5273: $a2
	jp   nz, $2f85                                   ; $5274: $c2 $85 $2f

	ld   a, [de]                                     ; $5277: $1a
	db   $e3                                         ; $5278: $e3
	jp   c, $e898                                    ; $5279: $da $98 $e8

	ld   c, e                                        ; $527c: $4b
	ld   a, [de]                                     ; $527d: $1a
	inc  hl                                          ; $527e: $23
	pop  af                                          ; $527f: $f1
	call c, $a92d                                    ; $5280: $dc $2d $a9
	ld   a, a                                        ; $5283: $7f
	ld   b, l                                        ; $5284: $45
	or   c                                           ; $5285: $b1
	pop  bc                                          ; $5286: $c1
	ld   l, l                                        ; $5287: $6d
	rra                                              ; $5288: $1f
	and  h                                           ; $5289: $a4
	ld   [$f498], a                                  ; $528a: $ea $98 $f4
	ld   l, d                                        ; $528d: $6a
	inc  e                                           ; $528e: $1c
	ld   a, [de]                                     ; $528f: $1a
	or   c                                           ; $5290: $b1
	rst  $30                                         ; $5291: $f7
	ld   e, [hl]                                     ; $5292: $5e
	xor  b                                           ; $5293: $a8
	xor  a                                           ; $5294: $af
	add  hl, hl                                      ; $5295: $29
	ld   h, e                                        ; $5296: $63
	or   c                                           ; $5297: $b1
	rst  $10                                         ; $5298: $d7
	rra                                              ; $5299: $1f
	ld   e, b                                        ; $529a: $58
	jp   c, $f17b                                    ; $529b: $da $7b $f1

	and  h                                           ; $529e: $a4
	ld   c, e                                        ; $529f: $4b
	rra                                              ; $52a0: $1f
	ld   b, c                                        ; $52a1: $41
	di                                               ; $52a2: $f3
	sbc  [hl]                                        ; $52a3: $9e
	sub  a                                           ; $52a4: $97
	call c, $361c                                    ; $52a5: $dc $1c $36
	add  c                                           ; $52a8: $81
	pop  af                                          ; $52a9: $f1
	ld   l, a                                        ; $52aa: $6f
	inc  l                                           ; $52ab: $2c
	ret                                              ; $52ac: $c9


	adc  [hl]                                        ; $52ad: $8e
	and  d                                           ; $52ae: $a2
	or   c                                           ; $52af: $b1
	sub  l                                           ; $52b0: $95
	rra                                              ; $52b1: $1f
	add  hl, de                                      ; $52b2: $19
	ldh  a, [c]                                      ; $52b3: $f2
	db   $db                                         ; $52b4: $db
	add  a                                           ; $52b5: $87
	or   $3c                                         ; $52b6: $f6 $3c
	dec  de                                          ; $52b8: $1b
	inc  sp                                          ; $52b9: $33
	pop  af                                          ; $52ba: $f1
	adc  $1e                                         ; $52bb: $ce $1e
	ret  z                                           ; $52bd: $c8

	sbc  a                                           ; $52be: $9f
	ld   d, l                                        ; $52bf: $55
	or   c                                           ; $52c0: $b1
	or   c                                           ; $52c1: $b1
	ld   a, l                                        ; $52c2: $7d
	rra                                              ; $52c3: $1f
	and  e                                           ; $52c4: $a3
	db   $eb                                         ; $52c5: $eb
	ld   a, d                                        ; $52c6: $7a
	ldh  a, [c]                                      ; $52c7: $f2
	adc  b                                           ; $52c8: $88
	inc  e                                           ; $52c9: $1c
	ld   a, [de]                                     ; $52ca: $1a
	and  c                                           ; $52cb: $a1
	rst  $30                                         ; $52cc: $f7
	ld   l, a                                        ; $52cd: $6f
	and  a                                           ; $52ce: $a7
	cp   [hl]                                        ; $52cf: $be
	add  hl, de                                      ; $52d0: $19
	ld   h, e                                        ; $52d1: $63
	or   c                                           ; $52d2: $b1
	sub  $1f                                         ; $52d3: $d6 $1f
	ld   c, b                                        ; $52d5: $48
	ld   hl, sp+$7e                                  ; $52d6: $f8 $7e
	pop  bc                                          ; $52d8: $c1
	jp   $1f59                                       ; $52d9: $c3 $59 $1f


	inc  sp                                          ; $52dc: $33
	ldh  a, [c]                                      ; $52dd: $f2
	xor  [hl]                                        ; $52de: $ae
	sub  a                                           ; $52df: $97
	jp   hl                                          ; $52e0: $e9


	inc  l                                           ; $52e1: $2c
	jr   @+$63                                       ; $52e2: $18 $61

	pop  af                                          ; $52e4: $f1
	adc  a                                           ; $52e5: $8f
	inc  l                                           ; $52e6: $2c
	ret  z                                           ; $52e7: $c8

	adc  a                                           ; $52e8: $8f
	ld   [hl], e                                     ; $52e9: $73
	or   c                                           ; $52ea: $b1
	and  e                                           ; $52eb: $a3
	ccf                                              ; $52ec: $3f
	dec  e                                           ; $52ed: $1d
	ldh  [c], a                                      ; $52ee: $e2
	db   $ec                                         ; $52ef: $ec
	adc  b                                           ; $52f0: $88
	push af                                          ; $52f1: $f5
	ld   e, d                                        ; $52f2: $5a
	inc  e                                           ; $52f3: $1c
	inc  d                                           ; $52f4: $14
	pop  af                                          ; $52f5: $f1
	db   $ed                                         ; $52f6: $ed
	ld   e, $b6                                      ; $52f7: $1e $b6
	xor  a                                           ; $52f9: $af
	ld   [hl], $91                                   ; $52fa: $36 $91
	or   c                                           ; $52fc: $b1
	xor  d                                           ; $52fd: $aa
	rra                                              ; $52fe: $1f
	ld   h, l                                        ; $52ff: $65
	ld   sp, hl                                      ; $5300: $f9
	adc  e                                           ; $5301: $8b
	ldh  [c], a                                      ; $5302: $e2
	sub  [hl]                                        ; $5303: $96
	ld   a, [hl-]                                    ; $5304: $3a
	dec  e                                           ; $5305: $1d
	ld   [hl], c                                     ; $5306: $71
	push af                                          ; $5307: $f5
	ld   a, a                                        ; $5308: $7f
	sub  a                                           ; $5309: $97
	db   $dd                                         ; $530a: $dd
	dec  de                                          ; $530b: $1b
	ld   b, l                                        ; $530c: $45
	and  c                                           ; $530d: $a1
	di                                               ; $530e: $f3
	ccf                                              ; $530f: $3f
	ld   a, [hl+]                                    ; $5310: $2a
	ld   hl, sp+$7f                                  ; $5311: $f8 $7f
	and  c                                           ; $5313: $a1
	or   d                                           ; $5314: $b2
	halt                                             ; $5315: $76
	rra                                              ; $5316: $1f
	rla                                              ; $5317: $17
	pop  af                                          ; $5318: $f1
	call $f779                                       ; $5319: $cd $79 $f7
	ld   a, [hl-]                                    ; $531c: $3a
	ld   a, [de]                                     ; $531d: $1a
	inc  [hl]                                        ; $531e: $34
	pop  af                                          ; $531f: $f1
	call $c72e                                       ; $5320: $cd $2e $c7
	sbc  a                                           ; $5323: $9f
	ld   b, l                                        ; $5324: $45
	and  c                                           ; $5325: $a1
	or   c                                           ; $5326: $b1
	ld   l, [hl]                                     ; $5327: $6e
	rra                                              ; $5328: $1f
	jp   nz, Jump_0ac_6bfb                           ; $5329: $c2 $fb $6b

	ldh  a, [c]                                      ; $532c: $f2
	adc  b                                           ; $532d: $88
	dec  hl                                          ; $532e: $2b
	inc  e                                           ; $532f: $1c
	sub  c                                           ; $5330: $91
	or   $6f                                         ; $5331: $f6 $6f
	sub  a                                           ; $5333: $97
	adc  $1a                                         ; $5334: $ce $1a
	ld   d, h                                        ; $5336: $54
	or   c                                           ; $5337: $b1
	and  $1f                                         ; $5338: $e6 $1f
	ld   b, a                                        ; $533a: $47
	ld   sp, hl                                      ; $533b: $f9
	ld   a, [hl]                                     ; $533c: $7e
	pop  bc                                          ; $533d: $c1
	jp   $1f67                                       ; $533e: $c3 $67 $1f


	ld   b, $f1                                      ; $5341: $06 $f1
	call $f888                                       ; $5343: $cd $88 $f8
	dec  sp                                          ; $5346: $3b
	add  hl, de                                      ; $5347: $19
	ld   d, c                                        ; $5348: $51
	pop  af                                          ; $5349: $f1
	xor  a                                           ; $534a: $af
	dec  e                                           ; $534b: $1d
	rst  ToBoot                                         ; $534c: $c7
	adc  a                                           ; $534d: $8f
	ld   d, h                                        ; $534e: $54
	pop  bc                                          ; $534f: $c1
	or   d                                           ; $5350: $b2
	ld   c, a                                        ; $5351: $4f
	dec  e                                           ; $5352: $1d
	pop  hl                                          ; $5353: $e1
	db   $eb                                         ; $5354: $eb
	ld   l, d                                        ; $5355: $6a
	db   $f4                                         ; $5356: $f4
	ld   l, c                                        ; $5357: $69
	dec  de                                          ; $5358: $1b
	add  hl, de                                      ; $5359: $19
	or   c                                           ; $535a: $b1
	ld   hl, sp+$4f                                  ; $535b: $f8 $4f
	sub  a                                           ; $535d: $97
	adc  $28                                         ; $535e: $ce $28
	ld   h, e                                        ; $5360: $63
	and  c                                           ; $5361: $a1
	rst  ToBoot                                         ; $5362: $c7
	rra                                              ; $5363: $1f
	ld   d, [hl]                                     ; $5364: $56
	ld   sp, hl                                      ; $5365: $f9
	ld   a, l                                        ; $5366: $7d
	pop  bc                                          ; $5367: $c1
	and  h                                           ; $5368: $a4
	ld   e, c                                        ; $5369: $59
	rra                                              ; $536a: $1f
	ld   [hl-], a                                    ; $536b: $32
	ldh  a, [c]                                      ; $536c: $f2
	xor  a                                           ; $536d: $af
	add  a                                           ; $536e: $87
	ld   a, [$271c]                                  ; $536f: $fa $1c $27
	ld   h, c                                        ; $5372: $61
	pop  af                                          ; $5373: $f1
	adc  a                                           ; $5374: $8f
	dec  e                                           ; $5375: $1d
	rst  ToBoot                                         ; $5376: $c7
	sbc  [hl]                                        ; $5377: $9e
	ld   [hl], e                                     ; $5378: $73
	and  d                                           ; $5379: $a2
	and  d                                           ; $537a: $a2
	ld   l, h                                        ; $537b: $6c
	rra                                              ; $537c: $1f
	and  e                                           ; $537d: $a3
	ld   sp, hl                                      ; $537e: $f9
	adc  d                                           ; $537f: $8a
	db   $e4                                         ; $5380: $e4
	ld   l, c                                        ; $5381: $69
	ld   a, [hl+]                                    ; $5382: $2a
	ld   a, [de]                                     ; $5383: $1a
	sub  c                                           ; $5384: $91
	rst  $30                                         ; $5385: $f7
	ld   e, a                                        ; $5386: $5f
	xor  b                                           ; $5387: $a8
	call Call_0ac_6428                               ; $5388: $cd $28 $64
	add  c                                           ; $538b: $81
	ldh  a, [c]                                      ; $538c: $f2
	ld   c, a                                        ; $538d: $4f
	dec  de                                          ; $538e: $1b
	ret  c                                           ; $538f: $d8

	sbc  [hl]                                        ; $5390: $9e
	and  d                                           ; $5391: $a2
	and  e                                           ; $5392: $a3
	add  l                                           ; $5393: $85
	rra                                              ; $5394: $1f
	ld   a, [de]                                     ; $5395: $1a
	pop  af                                          ; $5396: $f1
	call c, $f788                                    ; $5397: $dc $88 $f7
	dec  sp                                          ; $539a: $3b
	add  hl, hl                                      ; $539b: $29
	daa                                              ; $539c: $27
	pop  de                                          ; $539d: $d1
	ld   a, [$a83f]                                  ; $539e: $fa $3f $a8
	cp   a                                           ; $53a1: $bf
	ld   b, a                                        ; $53a2: $47
	add  d                                           ; $53a3: $82
	and  c                                           ; $53a4: $a1
	cp   c                                           ; $53a5: $b9
	rra                                              ; $53a6: $1f
	ld   h, [hl]                                     ; $53a7: $66
	ld   hl, sp-$64                                  ; $53a8: $f8 $9c
	jp   nc, Jump_0ac_5796                           ; $53aa: $d2 $96 $57

	rra                                              ; $53ad: $1f
	dec  d                                           ; $53ae: $15
	pop  af                                          ; $53af: $f1
	call $d979                                       ; $53b0: $cd $79 $d9
	dec  hl                                          ; $53b3: $2b
	jr   z, jr_0ac_5408                              ; $53b4: $28 $52

	pop  af                                          ; $53b6: $f1
	xor  a                                           ; $53b7: $af
	dec  e                                           ; $53b8: $1d
	ret  z                                           ; $53b9: $c8

	sbc  [hl]                                        ; $53ba: $9e
	ld   h, e                                        ; $53bb: $63
	and  e                                           ; $53bc: $a3
	sub  c                                           ; $53bd: $91

jr_0ac_53be:
	xor  c                                           ; $53be: $a9
	rra                                              ; $53bf: $1f
	ld   [hl], h                                     ; $53c0: $74
	ld   hl, sp-$74                                  ; $53c1: $f8 $8c
	db   $d3                                         ; $53c3: $d3
	ld   [hl], a                                     ; $53c4: $77
	ld   c, c                                        ; $53c5: $49
	ld   e, $42                                      ; $53c6: $1e $42
	di                                               ; $53c8: $f3
	adc  [hl]                                        ; $53c9: $8e
	adc  b                                           ; $53ca: $88
	call z, Call_0ac_5629                            ; $53cb: $cc $29 $56
	ld   b, e                                        ; $53ce: $43
	pop  af                                          ; $53cf: $f1
	cp   a                                           ; $53d0: $bf
	rra                                              ; $53d1: $1f
	or   a                                           ; $53d2: $b7
	cp   l                                           ; $53d3: $bd
	ld   [hl], h                                     ; $53d4: $74
	sub  e                                           ; $53d5: $93
	sub  c                                           ; $53d6: $91
	adc  e                                           ; $53d7: $8b
	rra                                              ; $53d8: $1f
	add  e                                           ; $53d9: $83
	ld   a, [$e37b]                                  ; $53da: $fa $7b $e3
	ld   [hl], a                                     ; $53dd: $77
	ld   b, a                                        ; $53de: $47
	ld   e, $23                                      ; $53df: $1e $23
	pop  af                                          ; $53e1: $f1
	cp   [hl]                                        ; $53e2: $be
	ld   a, c                                        ; $53e3: $79
	jp   c, $4729                                    ; $53e4: $da $29 $47

	ld   b, e                                        ; $53e7: $43
	pop  hl                                          ; $53e8: $e1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53e9: $cf
	rrca                                             ; $53ea: $0f
	rst  ToBoot                                         ; $53eb: $c7
	xor  a                                           ; $53ec: $af
	ld   h, h                                        ; $53ed: $64
	and  e                                           ; $53ee: $a3
	add  c                                           ; $53ef: $81
	cp   b                                           ; $53f0: $b8
	rra                                              ; $53f1: $1f
	ld   h, l                                        ; $53f2: $65
	ld   hl, sp-$74                                  ; $53f3: $f8 $8c
	jp   nz, Jump_0ac_5795                           ; $53f5: $c2 $95 $57

	rra                                              ; $53f8: $1f
	inc  d                                           ; $53f9: $14
	pop  af                                          ; $53fa: $f1
	cp   [hl]                                        ; $53fb: $be
	ld   a, b                                        ; $53fc: $78
	ld   sp, hl                                      ; $53fd: $f9
	dec  de                                          ; $53fe: $1b
	scf                                              ; $53ff: $37
	inc  [hl]                                        ; $5400: $34
	pop  hl                                          ; $5401: $e1
	sbc  $1f                                         ; $5402: $de $1f
	or   a                                           ; $5404: $b7
	cp   a                                           ; $5405: $bf
	ld   b, l                                        ; $5406: $45
	and  d                                           ; $5407: $a2

jr_0ac_5408:
	and  c                                           ; $5408: $a1
	cp   c                                           ; $5409: $b9
	rra                                              ; $540a: $1f
	ld   h, l                                        ; $540b: $65
	ld   sp, hl                                      ; $540c: $f9
	ld   a, l                                        ; $540d: $7d
	pop  hl                                          ; $540e: $e1
	and  [hl]                                        ; $540f: $a6
	ld   b, a                                        ; $5410: $47
	ld   e, $06                                      ; $5411: $1e $06
	pop  af                                          ; $5413: $f1
	cp   l                                           ; $5414: $bd
	adc  b                                           ; $5415: $88
	add  sp, $1a                                     ; $5416: $e8 $1a
	ld   b, a                                        ; $5418: $47
	daa                                              ; $5419: $27
	or   c                                           ; $541a: $b1
	ld   a, [$972f]                                  ; $541b: $fa $2f $97
	cp   [hl]                                        ; $541e: $be

jr_0ac_541f:
	ld   [hl], $82                                   ; $541f: $36 $82
	sub  c                                           ; $5421: $91
	sub  $1f                                         ; $5422: $d6 $1f
	ld   b, a                                        ; $5424: $47
	ld   sp, hl                                      ; $5425: $f9
	sbc  l                                           ; $5426: $9d
	pop  bc                                          ; $5427: $c1
	sub  [hl]                                        ; $5428: $96
	ld   d, h                                        ; $5429: $54
	ld   c, l                                        ; $542a: $4d
	dec  e                                           ; $542b: $1d
	pop  af                                          ; $542c: $f1
	ei                                               ; $542d: $fb
	ld   a, d                                        ; $542e: $7a
	or   $3b                                         ; $542f: $f6 $3b
	jr   z, jr_0ac_544c                              ; $5431: $28 $19

	or   c                                           ; $5433: $b1
	ld   hl, sp+$4f                                  ; $5434: $f8 $4f
	sub  a                                           ; $5436: $97
	cp   a                                           ; $5437: $bf
	jr   jr_0ac_53be                                 ; $5438: $18 $84

	ld   [hl], c                                     ; $543a: $71
	pop  hl                                          ; $543b: $e1
	ld   l, a                                        ; $543c: $6f
	inc  e                                           ; $543d: $1c
	add  sp, -$72                                    ; $543e: $e8 $8e
	and  c                                           ; $5440: $a1
	or   h                                           ; $5441: $b4
	ld   h, d                                        ; $5442: $62
	ld   a, h                                        ; $5443: $7c
	rra                                              ; $5444: $1f
	and  d                                           ; $5445: $a2
	ld   a, [$e38c]                                  ; $5446: $fa $8c $e3
	ld   l, c                                        ; $5449: $69
	ld   b, a                                        ; $544a: $47
	dec  e                                           ; $544b: $1d

jr_0ac_544c:
	ld   b, e                                        ; $544c: $43
	di                                               ; $544d: $f3
	sbc  a                                           ; $544e: $9f
	sbc  c                                           ; $544f: $99
	call c, Call_0ac_5619                            ; $5450: $dc $19 $56
	dec  [hl]                                        ; $5453: $35
	pop  de                                          ; $5454: $d1
	xor  $1f                                         ; $5455: $ee $1f
	or   a                                           ; $5457: $b7
	cp   [hl]                                        ; $5458: $be
	ld   b, l                                        ; $5459: $45
	sub  e                                           ; $545a: $93
	add  c                                           ; $545b: $81
	or   [hl]                                        ; $545c: $b6
	rra                                              ; $545d: $1f
	ld   d, a                                        ; $545e: $57
	ld   hl, sp-$75                                  ; $545f: $f8 $8b
	pop  de                                          ; $5461: $d1
	ld   [hl], a                                     ; $5462: $77
	ld   d, h                                        ; $5463: $54
	ld   c, [hl]                                     ; $5464: $4e
	ld   a, [de]                                     ; $5465: $1a
	pop  af                                          ; $5466: $f1
	db   $ed                                         ; $5467: $ed
	ld   l, d                                        ; $5468: $6a
	push af                                          ; $5469: $f5
	dec  sp                                          ; $546a: $3b
	add  hl, hl                                      ; $546b: $29
	jr   jr_0ac_541f                                 ; $546c: $18 $b1

	ld   sp, hl                                      ; $546e: $f9
	ccf                                              ; $546f: $3f
	and  [hl]                                        ; $5470: $a6
	adc  $17                                         ; $5471: $ce $17
	add  h                                           ; $5473: $84
	ld   h, c                                        ; $5474: $61
	pop  hl                                          ; $5475: $e1
	ld   l, a                                        ; $5476: $6f
	inc  e                                           ; $5477: $1c
	rst  $20                                         ; $5478: $e7
	sbc  a                                           ; $5479: $9f
	add  c                                           ; $547a: $81
	or   e                                           ; $547b: $b3
	ld   [hl], d                                     ; $547c: $72
	ld   l, l                                        ; $547d: $6d
	rra                                              ; $547e: $1f
	pop  bc                                          ; $547f: $c1
	db   $fc                                         ; $5480: $fc
	ld   l, e                                        ; $5481: $6b
	ldh  a, [c]                                      ; $5482: $f2
	ld   l, d                                        ; $5483: $6a
	add  hl, hl                                      ; $5484: $29
	dec  e                                           ; $5485: $1d
	ld   d, c                                        ; $5486: $51
	di                                               ; $5487: $f3
	ld   a, a                                        ; $5488: $7f
	add  a                                           ; $5489: $87
	ld   a, [$551a]                                  ; $548a: $fa $1a $55
	ld   [hl], $d1                                   ; $548d: $36 $d1
	db   $ed                                         ; $548f: $ed
	rra                                              ; $5490: $1f
	or   [hl]                                        ; $5491: $b6
	cp   a                                           ; $5492: $bf
	dec  [hl]                                        ; $5493: $35
	and  d                                           ; $5494: $a2
	sub  c                                           ; $5495: $91
	or   a                                           ; $5496: $b7
	rra                                              ; $5497: $1f
	ld   d, [hl]                                     ; $5498: $56
	ld   hl, sp-$73                                  ; $5499: $f8 $8d
	pop  bc                                          ; $549b: $c1
	add  a                                           ; $549c: $87
	ld   d, e                                        ; $549d: $53
	ld   l, l                                        ; $549e: $6d
	ld   e, $f1                                      ; $549f: $1e $f1
	db   $fd                                         ; $54a1: $fd
	ld   e, e                                        ; $54a2: $5b
	di                                               ; $54a3: $f3
	ld   e, d                                        ; $54a4: $5a
	jr   z, jr_0ac_54c1                              ; $54a5: $28 $1a

	sub  c                                           ; $54a7: $91
	or   $4f                                         ; $54a8: $f6 $4f
	and  [hl]                                        ; $54aa: $a6
	db   $ec                                         ; $54ab: $ec
	add  hl, de                                      ; $54ac: $19
	ld   [hl], h                                     ; $54ad: $74
	ld   b, l                                        ; $54ae: $45
	pop  de                                          ; $54af: $d1
	rst  JumpTable                                         ; $54b0: $df
	rra                                              ; $54b1: $1f
	and  $af                                         ; $54b2: $e6 $af
	inc  [hl]                                        ; $54b4: $34
	and  d                                           ; $54b5: $a2
	add  c                                           ; $54b6: $81
	xor  b                                           ; $54b7: $a8
	rra                                              ; $54b8: $1f
	ld   h, h                                        ; $54b9: $64
	ld   sp, hl                                      ; $54ba: $f9
	ld   l, a                                        ; $54bb: $6f
	pop  de                                          ; $54bc: $d1
	sub  [hl]                                        ; $54bd: $96
	ld   b, l                                        ; $54be: $45
	ld   c, [hl]                                     ; $54bf: $4e
	dec  de                                          ; $54c0: $1b

jr_0ac_54c1:
	pop  af                                          ; $54c1: $f1
	adc  $79                                         ; $54c2: $ce $79
	db   $f4                                         ; $54c4: $f4
	dec  hl                                          ; $54c5: $2b
	daa                                              ; $54c6: $27
	dec  hl                                          ; $54c7: $2b
	ld   [hl], c                                     ; $54c8: $71

Call_0ac_54c9:
	or   $4f                                         ; $54c9: $f6 $4f
	sub  [hl]                                        ; $54cb: $96
	db   $ed                                         ; $54cc: $ed
	dec  de                                          ; $54cd: $1b
	ld   h, h                                        ; $54ce: $64
	ld   h, e                                        ; $54cf: $63
	pop  hl                                          ; $54d0: $e1
	sbc  a                                           ; $54d1: $9f
	inc  e                                           ; $54d2: $1c
	and  $9f                                         ; $54d3: $e6 $9f

jr_0ac_54d5:
	ld   b, d                                        ; $54d5: $42
	jp   nz, $b872                                   ; $54d6: $c2 $72 $b8

	rra                                              ; $54d9: $1f
	ld   h, h                                        ; $54da: $64
	ld   sp, hl                                      ; $54db: $f9
	ld   l, [hl]                                     ; $54dc: $6e
	pop  de                                          ; $54dd: $d1
	sub  a                                           ; $54de: $97
	ld   b, l                                        ; $54df: $45
	ld   c, l                                        ; $54e0: $4d
	dec  de                                          ; $54e1: $1b
	pop  af                                          ; $54e2: $f1
	rst  $28                                         ; $54e3: $ef
	ld   l, c                                        ; $54e4: $69
	di                                               ; $54e5: $f3
	inc  a                                           ; $54e6: $3c
	daa                                              ; $54e7: $27
	dec  hl                                          ; $54e8: $2b
	ld   [hl], c                                     ; $54e9: $71
	push af                                          ; $54ea: $f5
	ld   e, a                                        ; $54eb: $5f
	and  [hl]                                        ; $54ec: $a6
	db   $fd                                         ; $54ed: $fd
	dec  de                                          ; $54ee: $1b
	ld   h, h                                        ; $54ef: $64
	ld   h, e                                        ; $54f0: $63
	pop  de                                          ; $54f1: $d1
	xor  a                                           ; $54f2: $af
	dec  e                                           ; $54f3: $1d
	rst  $30                                         ; $54f4: $f7
	adc  a                                           ; $54f5: $8f
	ld   [hl-], a                                    ; $54f6: $32
	jp   nz, $c562                                   ; $54f7: $c2 $62 $c5

	rra                                              ; $54fa: $1f
	ld   b, [hl]                                     ; $54fb: $46
	ld   hl, sp+$6f                                  ; $54fc: $f8 $6f
	pop  bc                                          ; $54fe: $c1
	push bc                                          ; $54ff: $c5
	ld   b, l                                        ; $5500: $45
	ld   e, l                                        ; $5501: $5d
	inc  e                                           ; $5502: $1c
	pop  de                                          ; $5503: $d1
	db   $fd                                         ; $5504: $fd
	ld   a, c                                        ; $5505: $79
	di                                               ; $5506: $f3
	inc  a                                           ; $5507: $3c
	ld   h, $2c                                      ; $5508: $26 $2c
	ld   [hl-], a                                    ; $550a: $32
	ldh  a, [c]                                      ; $550b: $f2
	adc  a                                           ; $550c: $8f
	add  a                                           ; $550d: $87

jr_0ac_550e:
	ld   sp, hl                                      ; $550e: $f9
	dec  e                                           ; $550f: $1d
	ld   b, h                                        ; $5510: $44
	ld   b, a                                        ; $5511: $47
	or   c                                           ; $5512: $b1
	ld   a, [$a72f]                                  ; $5513: $fa $2f $a7
	cp   a                                           ; $5516: $bf
	ld   d, $a2                                      ; $5517: $16 $a2
	ld   d, h                                        ; $5519: $54
	pop  de                                          ; $551a: $d1
	ld   a, a                                        ; $551b: $7f
	dec  de                                          ; $551c: $1b
	rst  $30                                         ; $551d: $f7
	adc  a                                           ; $551e: $8f
	ld   h, c                                        ; $551f: $61
	jp   $9654                                       ; $5520: $c3 $54 $96


	rra                                              ; $5523: $1f
	ld   d, l                                        ; $5524: $55
	ld   sp, hl                                      ; $5525: $f9
	adc  l                                           ; $5526: $8d
	pop  de                                          ; $5527: $d1
	sbc  b                                           ; $5528: $98
	inc  [hl]                                        ; $5529: $34
	ld   l, e                                        ; $552a: $6b
	inc  e                                           ; $552b: $1c
	pop  hl                                          ; $552c: $e1
	db   $ed                                         ; $552d: $ed
	ld   l, d                                        ; $552e: $6a
	di                                               ; $552f: $f3
	ld   c, e                                        ; $5530: $4b
	dec  h                                           ; $5531: $25
	dec  sp                                          ; $5532: $3b
	inc  hl                                          ; $5533: $23
	ldh  a, [c]                                      ; $5534: $f2
	sbc  a                                           ; $5535: $9f
	adc  c                                           ; $5536: $89
	ld   a, [$541c]                                  ; $5537: $fa $1c $54

Jump_0ac_553a:
	ld   c, c                                        ; $553a: $49
	sub  c                                           ; $553b: $91
	ld   hl, sp+$3f                                  ; $553c: $f8 $3f
	and  a                                           ; $553e: $a7
	rst  JumpTable                                         ; $553f: $df
	jr   jr_0ac_54d5                                 ; $5540: $18 $93

	ld   h, e                                        ; $5542: $63
	pop  de                                          ; $5543: $d1
	ld   a, a                                        ; $5544: $7f
	inc  e                                           ; $5545: $1c
	add  sp, -$61                                    ; $5546: $e8 $9f
	ld   [hl], c                                     ; $5548: $71
	call nz, $b443                                   ; $5549: $c4 $43 $b4
	rra                                              ; $554c: $1f
	ld   b, [hl]                                     ; $554d: $46
	ld   sp, hl                                      ; $554e: $f9
	adc  [hl]                                        ; $554f: $8e
	pop  de                                          ; $5550: $d1
	or   [hl]                                        ; $5551: $b6
	ld   b, l                                        ; $5552: $45
	ld   c, h                                        ; $5553: $4c
	dec  de                                          ; $5554: $1b
	pop  de                                          ; $5555: $d1
	db   $ec                                         ; $5556: $ec
	sbc  d                                           ; $5557: $9a
	db   $f4                                         ; $5558: $f4
	ld   c, h                                        ; $5559: $4c
	dec  [hl]                                        ; $555a: $35
	inc  a                                           ; $555b: $3c
	inc  hl                                          ; $555c: $23
	pop  af                                          ; $555d: $f1
	sbc  a                                           ; $555e: $9f
	adc  c                                           ; $555f: $89

jr_0ac_5560:
	ei                                               ; $5560: $fb
	inc  e                                           ; $5561: $1c
	ld   b, [hl]                                     ; $5562: $46
	ld   [hl], $a1                                   ; $5563: $36 $a1
	ld   sp, hl                                      ; $5565: $f9
	ccf                                              ; $5566: $3f
	xor  b                                           ; $5567: $a8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5568: $cf
	jr   z, jr_0ac_550e                              ; $5569: $28 $a3

	ld   [hl], d                                     ; $556b: $72
	pop  bc                                          ; $556c: $c1
	ld   l, a                                        ; $556d: $6f
	inc  e                                           ; $556e: $1c
	reti                                             ; $556f: $d9


	xor  a                                           ; $5570: $af
	add  e                                           ; $5571: $83
	jp   $8772                                       ; $5572: $c3 $72 $87


	rra                                              ; $5575: $1f
	ld   d, l                                        ; $5576: $55
	db   $eb                                         ; $5577: $eb
	adc  l                                           ; $5578: $8d
	pop  af                                          ; $5579: $f1
	or   a                                           ; $557a: $b7
	ld   b, a                                        ; $557b: $47
	dec  l                                           ; $557c: $2d
	jr   jr_0ac_5560                                 ; $557d: $18 $e1

	call z, $f7a9                                    ; $557f: $cc $a9 $f7
	ld   c, l                                        ; $5582: $4d
	add  hl, sp                                      ; $5583: $39
	ld   a, [de]                                     ; $5584: $1a
	ld   h, c                                        ; $5585: $61
	di                                               ; $5586: $f3
	ld   l, l                                        ; $5587: $6d
	cp   b                                           ; $5588: $b8
	rst  JumpTable                                         ; $5589: $df
	inc  e                                           ; $558a: $1c
	ld   h, [hl]                                     ; $558b: $66
	ld   h, d                                        ; $558c: $62
	pop  bc                                          ; $558d: $c1
	sbc  e                                           ; $558e: $9b
	inc  l                                           ; $558f: $2c
	cp   e                                           ; $5590: $bb
	sbc  a                                           ; $5591: $9f
	ld   h, [hl]                                     ; $5592: $66
	jp   $a5a1                                       ; $5593: $c3 $a1 $a5


	rra                                              ; $5596: $1f
	scf                                              ; $5597: $37
	cp   e                                           ; $5598: $bb
	adc  l                                           ; $5599: $8d
	pop  hl                                          ; $559a: $e1
	push de                                          ; $559b: $d5
	halt                                             ; $559c: $76
	dec  l                                           ; $559d: $2d
	ld   a, [de]                                     ; $559e: $1a
	and  d                                           ; $559f: $a2
	cp   e                                           ; $55a0: $bb
	xor  b                                           ; $55a1: $a8
	push af                                          ; $55a2: $f5
	adc  e                                           ; $55a3: $8b
	dec  sp                                          ; $55a4: $3b
	ld   a, [de]                                     ; $55a5: $1a
	ld   d, c                                        ; $55a6: $51
	db   $e3                                         ; $55a7: $e3
	ld   a, e                                        ; $55a8: $7b
	ret  z                                           ; $55a9: $c8

	rst  $28                                         ; $55aa: $ef
	ld   l, $59                                      ; $55ab: $2e $59
	ld   [hl], d                                     ; $55ad: $72
	pop  de                                          ; $55ae: $d1
	adc  d                                           ; $55af: $8a
	ld   a, [hl-]                                    ; $55b0: $3a
	xor  e                                           ; $55b1: $ab
	ld   a, a                                        ; $55b2: $7f
	ld   l, b                                        ; $55b3: $68
	jp   $97c1                                       ; $55b4: $c3 $c1 $97


	dec  e                                           ; $55b7: $1d
	ld   b, [hl]                                     ; $55b8: $46
	sbc  h                                           ; $55b9: $9c
	adc  h                                           ; $55ba: $8c
	ldh  a, [c]                                      ; $55bb: $f2
	and  $89                                         ; $55bc: $e6 $89
	ld   e, $15                                      ; $55be: $1e $15
	or   e                                           ; $55c0: $b3
	adc  d                                           ; $55c1: $8a
	or   [hl]                                        ; $55c2: $b6
	ld   sp, hl                                      ; $55c3: $f9
	ld   l, [hl]                                     ; $55c4: $6e
	dec  a                                           ; $55c5: $3d
	ld   h, $a1                                      ; $55c6: $26 $a1
	or   [hl]                                        ; $55c8: $b6
	ld   e, b                                        ; $55c9: $58
	cp   b                                           ; $55ca: $b8
	sbc  a                                           ; $55cb: $9f
	inc  a                                           ; $55cc: $3c
	sub  [hl]                                        ; $55cd: $96
	or   c                                           ; $55ce: $b1
	jp   Jump_0ac_473b                               ; $55cf: $c3 $3b $47


	adc  l                                           ; $55d2: $8d
	ld   l, [hl]                                     ; $55d3: $6e
	or   l                                           ; $55d4: $b5
	push hl                                          ; $55d5: $e5
	push bc                                          ; $55d6: $c5
	ld   e, h                                        ; $55d7: $5c
	add  hl, de                                      ; $55d8: $19
	ld   [hl], l                                     ; $55d9: $75
	ld   a, d                                        ; $55da: $7a
	sub  a                                           ; $55db: $97
	or   $aa                                         ; $55dc: $f6 $aa
	ld   l, h                                        ; $55de: $6c
	add  hl, hl                                      ; $55df: $29
	ld   [hl], c                                     ; $55e0: $71
	and  [hl]                                        ; $55e1: $a6
	ld   d, a                                        ; $55e2: $57
	or   a                                           ; $55e3: $b7
	cp   l                                           ; $55e4: $bd
	ld   e, h                                        ; $55e5: $5c
	ld   a, c                                        ; $55e6: $79
	and  d                                           ; $55e7: $a2
	jp   Jump_0ac_553a                               ; $55e8: $c3 $3a $55


	sbc  d                                           ; $55eb: $9a
	ld   l, l                                        ; $55ec: $6d
	or   a                                           ; $55ed: $b7
	add  $b6                                         ; $55ee: $c6 $b6
	ld   l, e                                        ; $55f0: $6b
	daa                                              ; $55f1: $27
	sub  h                                           ; $55f2: $94
	ld   l, d                                        ; $55f3: $6a
	add  a                                           ; $55f4: $87
	add  sp, -$66                                    ; $55f5: $e8 $9a
	ld   a, e                                        ; $55f7: $7b
	ld   e, b                                        ; $55f8: $58
	sub  d                                           ; $55f9: $92
	sbc  b                                           ; $55fa: $98
	ld   b, a                                        ; $55fb: $47
	and  a                                           ; $55fc: $a7
	sbc  l                                           ; $55fd: $9d
	ld   a, c                                        ; $55fe: $79
	xor  c                                           ; $55ff: $a9
	and  l                                           ; $5600: $a5
	and  a                                           ; $5601: $a7
	ld   a, [hl-]                                    ; $5602: $3a
	ld   h, l                                        ; $5603: $65
	adc  d                                           ; $5604: $8a
	ld   l, d                                        ; $5605: $6a
	add  $a9                                         ; $5606: $c6 $a9
	sbc  b                                           ; $5608: $98
	ld   l, d                                        ; $5609: $6a
	ld   b, [hl]                                     ; $560a: $46
	and  l                                           ; $560b: $a5
	ld   l, b                                        ; $560c: $68
	sub  [hl]                                        ; $560d: $96
	jp   z, $996b                                    ; $560e: $ca $6b $99

	ld   a, b                                        ; $5611: $78
	and  e                                           ; $5612: $a3
	add  a                                           ; $5613: $87
	ld   d, a                                        ; $5614: $57
	sbc  b                                           ; $5615: $98
	ld   a, h                                        ; $5616: $7c
	ld   a, b                                        ; $5617: $78
	xor  b                                           ; $5618: $a8

Call_0ac_5619:
	sub  [hl]                                        ; $5619: $96
	and  [hl]                                        ; $561a: $a6
	ld   e, d                                        ; $561b: $5a
	ld   h, [hl]                                     ; $561c: $66
	adc  c                                           ; $561d: $89
	ld   l, d                                        ; $561e: $6a
	and  [hl]                                        ; $561f: $a6
	xor  c                                           ; $5620: $a9
	sub  a                                           ; $5621: $97
	adc  c                                           ; $5622: $89
	ld   c, c                                        ; $5623: $49
	add  [hl]                                        ; $5624: $86
	ld   a, b                                        ; $5625: $78
	add  [hl]                                        ; $5626: $86
	or   a                                           ; $5627: $b7
	ld   a, d                                        ; $5628: $7a

Call_0ac_5629:
	sbc  b                                           ; $5629: $98
	ld   a, e                                        ; $562a: $7b
	halt                                             ; $562b: $76
	and  a                                           ; $562c: $a7
	ld   h, a                                        ; $562d: $67
	add  [hl]                                        ; $562e: $86
	adc  c                                           ; $562f: $89
	ld   a, b                                        ; $5630: $78
	sbc  d                                           ; $5631: $9a
	ld   a, b                                        ; $5632: $78
	and  [hl]                                        ; $5633: $a6
	sbc  b                                           ; $5634: $98
	ld   h, a                                        ; $5635: $67
	adc  b                                           ; $5636: $88
	ld   a, b                                        ; $5637: $78
	adc  b                                           ; $5638: $88
	adc  c                                           ; $5639: $89
	sub  a                                           ; $563a: $97
	sbc  b                                           ; $563b: $98
	ld   a, b                                        ; $563c: $78
	ld   [hl], a                                     ; $563d: $77
	ld   a, b                                        ; $563e: $78
	ld   [hl], a                                     ; $563f: $77
	sbc  b                                           ; $5640: $98
	adc  c                                           ; $5641: $89
	xor  c                                           ; $5642: $a9
	adc  c                                           ; $5643: $89
	ld   a, b                                        ; $5644: $78
	add  a                                           ; $5645: $87
	ld   [hl], a                                     ; $5646: $77
	ld   [hl], a                                     ; $5647: $77
	adc  b                                           ; $5648: $88
	adc  c                                           ; $5649: $89
	sbc  c                                           ; $564a: $99
	sbc  c                                           ; $564b: $99
	adc  b                                           ; $564c: $88
	adc  b                                           ; $564d: $88
	ld   [hl], a                                     ; $564e: $77
	ld   [hl], a                                     ; $564f: $77
	ld   a, b                                        ; $5650: $78
	adc  b                                           ; $5651: $88
	adc  c                                           ; $5652: $89
	sbc  b                                           ; $5653: $98
	sbc  c                                           ; $5654: $99
	adc  b                                           ; $5655: $88
	ld   [hl], a                                     ; $5656: $77
	ld   [hl], a                                     ; $5657: $77
	ld   [hl], a                                     ; $5658: $77
	adc  b                                           ; $5659: $88
	adc  c                                           ; $565a: $89
	sbc  b                                           ; $565b: $98
	adc  b                                           ; $565c: $88
	sub  a                                           ; $565d: $97
	add  a                                           ; $565e: $87
	ld   [hl], a                                     ; $565f: $77
	ld   [hl], a                                     ; $5660: $77
	ld   a, c                                        ; $5661: $79
	adc  c                                           ; $5662: $89
	sbc  c                                           ; $5663: $99
	adc  b                                           ; $5664: $88
	adc  b                                           ; $5665: $88
	ld   a, b                                        ; $5666: $78
	ld   [hl], a                                     ; $5667: $77
	ld   [hl], a                                     ; $5668: $77
	ld   a, b                                        ; $5669: $78
	sbc  b                                           ; $566a: $98
	sbc  c                                           ; $566b: $99
	sbc  b                                           ; $566c: $98
	adc  c                                           ; $566d: $89
	ld   a, b                                        ; $566e: $78
	ld   [hl], a                                     ; $566f: $77
	ld   [hl], a                                     ; $5670: $77
	ld   [hl], a                                     ; $5671: $77
	sbc  b                                           ; $5672: $98
	sbc  c                                           ; $5673: $99
	sbc  c                                           ; $5674: $99
	sbc  b                                           ; $5675: $98
	add  a                                           ; $5676: $87
	add  a                                           ; $5677: $87
	ld   [hl], a                                     ; $5678: $77
	ld   [hl], a                                     ; $5679: $77
	adc  c                                           ; $567a: $89
	adc  b                                           ; $567b: $88
	sbc  c                                           ; $567c: $99
	sbc  c                                           ; $567d: $99
	sub  a                                           ; $567e: $97
	add  a                                           ; $567f: $87
	ld   [hl], a                                     ; $5680: $77
	ld   a, b                                        ; $5681: $78
	ld   a, c                                        ; $5682: $79
	sbc  c                                           ; $5683: $99
	sbc  b                                           ; $5684: $98
	adc  b                                           ; $5685: $88
	sub  a                                           ; $5686: $97
	ld   a, b                                        ; $5687: $78
	ld   [hl], a                                     ; $5688: $77
	ld   a, b                                        ; $5689: $78
	adc  b                                           ; $568a: $88
	adc  c                                           ; $568b: $89
	adc  c                                           ; $568c: $89
	sbc  b                                           ; $568d: $98
	adc  b                                           ; $568e: $88
	ld   [hl], a                                     ; $568f: $77
	ld   [hl], a                                     ; $5690: $77
	adc  b                                           ; $5691: $88
	sbc  c                                           ; $5692: $99
	adc  c                                           ; $5693: $89
	sbc  c                                           ; $5694: $99
	adc  b                                           ; $5695: $88
	ld   a, b                                        ; $5696: $78
	ld   [hl], a                                     ; $5697: $77
	add  a                                           ; $5698: $87
	adc  c                                           ; $5699: $89
	sbc  c                                           ; $569a: $99
	sbc  c                                           ; $569b: $99
	adc  b                                           ; $569c: $88
	adc  b                                           ; $569d: $88
	ld   [hl], a                                     ; $569e: $77
	add  a                                           ; $569f: $87
	adc  b                                           ; $56a0: $88
	adc  c                                           ; $56a1: $89
	sbc  c                                           ; $56a2: $99
	sbc  c                                           ; $56a3: $99
	adc  b                                           ; $56a4: $88
	add  a                                           ; $56a5: $87
	add  a                                           ; $56a6: $87
	adc  b                                           ; $56a7: $88
	adc  b                                           ; $56a8: $88
	adc  b                                           ; $56a9: $88
	sbc  c                                           ; $56aa: $99
	adc  b                                           ; $56ab: $88
	adc  b                                           ; $56ac: $88
	adc  b                                           ; $56ad: $88
	adc  b                                           ; $56ae: $88
	ld   a, b                                        ; $56af: $78
	adc  b                                           ; $56b0: $88
	adc  b                                           ; $56b1: $88
	adc  c                                           ; $56b2: $89
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

Jump_0ac_5795:
	adc  b                                           ; $5795: $88

Jump_0ac_5796:
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

Jump_0ac_58b7:
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

jr_0ac_58f4:
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
	sbc  b                                           ; $5905: $98
	sbc  b                                           ; $5906: $98
	ld   a, b                                        ; $5907: $78
	add  a                                           ; $5908: $87
	ld   a, b                                        ; $5909: $78
	adc  b                                           ; $590a: $88
	sbc  c                                           ; $590b: $99
	adc  c                                           ; $590c: $89
	sbc  b                                           ; $590d: $98
	adc  c                                           ; $590e: $89
	adc  b                                           ; $590f: $88
	sub  a                                           ; $5910: $97
	ld   a, b                                        ; $5911: $78
	add  a                                           ; $5912: $87
	adc  c                                           ; $5913: $89
	ld   a, b                                        ; $5914: $78
	sbc  c                                           ; $5915: $99
	adc  b                                           ; $5916: $88
	adc  c                                           ; $5917: $89
	add  a                                           ; $5918: $87
	sub  a                                           ; $5919: $97
	ld   a, b                                        ; $591a: $78
	ld   [hl], a                                     ; $591b: $77
	ld   a, c                                        ; $591c: $79
	ld   a, b                                        ; $591d: $78
	sbc  b                                           ; $591e: $98
	adc  c                                           ; $591f: $89
	add  a                                           ; $5920: $87
	sbc  c                                           ; $5921: $99
	ld   l, c                                        ; $5922: $69
	sub  [hl]                                        ; $5923: $96
	adc  b                                           ; $5924: $88
	halt                                             ; $5925: $76
	adc  c                                           ; $5926: $89
	ld   l, c                                        ; $5927: $69
	sub  a                                           ; $5928: $97
	adc  d                                           ; $5929: $8a
	ld   [hl], a                                     ; $592a: $77
	xor  e                                           ; $592b: $ab
	ld   c, d                                        ; $592c: $4a
	sub  h                                           ; $592d: $94
	sbc  b                                           ; $592e: $98
	ld   [hl], l                                     ; $592f: $75
	sbc  b                                           ; $5930: $98
	ld   l, d                                        ; $5931: $6a
	and  a                                           ; $5932: $a7
	sbc  c                                           ; $5933: $99
	ld   h, [hl]                                     ; $5934: $66
	xor  d                                           ; $5935: $aa
	inc  a                                           ; $5936: $3c
	add  h                                           ; $5937: $84
	sbc  b                                           ; $5938: $98
	ld   h, l                                        ; $5939: $65
	or   a                                           ; $593a: $b7
	ld   l, e                                        ; $593b: $6b
	and  [hl]                                        ; $593c: $a6
	cp   c                                           ; $593d: $b9
	ld   d, [hl]                                     ; $593e: $56
	sub  $3f                                         ; $593f: $d6 $3f
	ld   b, h                                        ; $5941: $44
	xor  b                                           ; $5942: $a8
	ld   b, a                                        ; $5943: $47
	push bc                                          ; $5944: $c5
	ld   a, l                                        ; $5945: $7d
	sub  a                                           ; $5946: $97
	rst  $10                                         ; $5947: $d7
	add  hl, sp                                      ; $5948: $39
	pop  de                                          ; $5949: $d1
	sbc  h                                           ; $594a: $9c
	jr   jr_0ac_58f4                                 ; $594b: $18 $a7

	inc  a                                           ; $594d: $3c
	sub  e                                           ; $594e: $93
	call z, $c26a                                    ; $594f: $cc $6a $c2
	ld   l, a                                        ; $5952: $6f
	ld   b, e                                        ; $5953: $43
	db   $e3                                         ; $5954: $e3
	ld   c, c                                        ; $5955: $49
	and  e                                           ; $5956: $a3
	adc  [hl]                                        ; $5957: $8e
	ld   a, [hl-]                                    ; $5958: $3a
	add  sp, $7e                                     ; $5959: $e8 $7e
	ld   d, e                                        ; $595b: $53
	push hl                                          ; $595c: $e5
	ld   l, $43                                      ; $595d: $2e $43
	sbc  c                                           ; $595f: $99
	ld   b, [hl]                                     ; $5960: $46
	db   $f4                                         ; $5961: $f4
	xor  a                                           ; $5962: $af
	xor  c                                           ; $5963: $a9
	sub  $3f                                         ; $5964: $d6 $3f
	inc  hl                                          ; $5966: $23
	jp   nz, $9457                                   ; $5967: $c2 $57 $94

	adc  a                                           ; $596a: $8f
	ld   e, l                                        ; $596b: $5d
	jp   hl                                          ; $596c: $e9


	sbc  h                                           ; $596d: $9c
	ld   b, [hl]                                     ; $596e: $46
	pop  de                                          ; $596f: $d1
	ld   a, b                                        ; $5970: $78
	rla                                              ; $5971: $17
	ld   a, b                                        ; $5972: $78
	ld   c, h                                        ; $5973: $4c
	add  $fc                                         ; $5974: $c6 $fc
	sbc  e                                           ; $5976: $9b
	sub  d                                           ; $5977: $92
	sbc  c                                           ; $5978: $99
	dec  de                                          ; $5979: $1b
	ld   b, c                                        ; $597a: $41
	sbc  b                                           ; $597b: $98
	add  l                                           ; $597c: $85
	ld   sp, hl                                      ; $597d: $f9
	adc  a                                           ; $597e: $8f
	cp   d                                           ; $597f: $ba
	or   a                                           ; $5980: $b7
	dec  e                                           ; $5981: $1d
	ld   hl, $49c1                                   ; $5982: $21 $c1 $49
	sub  [hl]                                        ; $5985: $96
	adc  a                                           ; $5986: $8f
	ld   l, [hl]                                     ; $5987: $6e
	ld   sp, hl                                      ; $5988: $f9
	xor  d                                           ; $5989: $aa
	inc  h                                           ; $598a: $24
	pop  bc                                          ; $598b: $c1
	ld   a, c                                        ; $598c: $79
	ld   a, [de]                                     ; $598d: $1a
	sbc  c                                           ; $598e: $99
	ld   l, a                                        ; $598f: $6f
	sub  $fb                                         ; $5990: $d6 $fb
	sbc  d                                           ; $5992: $9a
	ld   d, c                                        ; $5993: $51
	or   c                                           ; $5994: $b1
	ld   e, $17                                      ; $5995: $1e $17
	cp   d                                           ; $5997: $ba
	adc  h                                           ; $5998: $8c
	push af                                          ; $5999: $f5
	db   $fd                                         ; $599a: $fd
	ld   e, e                                        ; $599b: $5b
	ld   b, c                                        ; $599c: $41
	and  h                                           ; $599d: $a4
	rra                                              ; $599e: $1f
	inc  h                                           ; $599f: $24
	db   $ec                                         ; $59a0: $ec
	sbc  c                                           ; $59a1: $99
	push af                                          ; $59a2: $f5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59a3: $cf
	ld   c, b                                        ; $59a4: $48
	ld   sp, $1fa2                                   ; $59a5: $31 $a2 $1f
	ld   d, $fb                                      ; $59a8: $16 $fb
	sbc  d                                           ; $59aa: $9a
	di                                               ; $59ab: $f3
	sbc  $17                                         ; $59ac: $de $17
	ld   de, $4fb1                                   ; $59ae: $11 $b1 $4f
	inc  e                                           ; $59b1: $1c
	db   $ed                                         ; $59b2: $ed
	ld   a, l                                        ; $59b3: $7d
	pop  af                                          ; $59b4: $f1
	ld   sp, hl                                      ; $59b5: $f9
	rla                                              ; $59b6: $17
	inc  d                                           ; $59b7: $14
	and  c                                           ; $59b8: $a1
	db   $fc                                         ; $59b9: $fc
	rra                                              ; $59ba: $1f
	call c, Call_0ac_725f                            ; $59bb: $dc $5f $72
	db   $f4                                         ; $59be: $f4
	ld   h, $1c                                      ; $59bf: $26 $1c
	ld   b, c                                        ; $59c1: $41
	ldh  a, [c]                                      ; $59c2: $f2
	sbc  a                                           ; $59c3: $9f
	or   a                                           ; $59c4: $b7
	ld   a, a                                        ; $59c5: $7f
	add  hl, de                                      ; $59c6: $19
	pop  hl                                          ; $59c7: $e1
	ld   d, e                                        ; $59c8: $53
	rra                                              ; $59c9: $1f
	dec  de                                          ; $59ca: $1b
	pop  af                                          ; $59cb: $f1
	db   $fc                                         ; $59cc: $fc
	or   h                                           ; $59cd: $b4
	call c, $911f                                    ; $59ce: $dc $1f $91
	ld   [hl], c                                     ; $59d1: $71
	ld   a, l                                        ; $59d2: $7d
	rra                                              ; $59d3: $1f
	or   c                                           ; $59d4: $b1
	ei                                               ; $59d5: $fb
	sub  e                                           ; $59d6: $93
	push af                                          ; $59d7: $f5
	cpl                                              ; $59d8: $2f
	ld   d, d                                        ; $59d9: $52
	add  c                                           ; $59da: $81
	cp   d                                           ; $59db: $ba
	rra                                              ; $59dc: $1f
	ld   h, h                                        ; $59dd: $64
	ei                                               ; $59de: $fb
	ld   [hl], h                                     ; $59df: $74
	di                                               ; $59e0: $f3
	ld   c, a                                        ; $59e1: $4f
	ld   d, e                                        ; $59e2: $53
	sub  c                                           ; $59e3: $91
	rr   a                                           ; $59e4: $cb $1f
	ld   [hl], e                                     ; $59e6: $73
	db   $fd                                         ; $59e7: $fd
	ld   h, e                                        ; $59e8: $63
	di                                               ; $59e9: $f3
	ld   c, a                                        ; $59ea: $4f
	ld   d, h                                        ; $59eb: $54
	sub  c                                           ; $59ec: $91
	cp   l                                           ; $59ed: $bd
	rra                                              ; $59ee: $1f
	pop  bc                                          ; $59ef: $c1
	xor  $72                                         ; $59f0: $ee $72
	or   $1f                                         ; $59f2: $f6 $1f
	ld   [hl], e                                     ; $59f4: $73
	add  c                                           ; $59f5: $81
	ld   l, a                                        ; $59f6: $6f
	inc  e                                           ; $59f7: $1c
	pop  af                                          ; $59f8: $f1
	cp   [hl]                                        ; $59f9: $be
	sub  c                                           ; $59fa: $91

jr_0ac_59fb:
	db   $db                                         ; $59fb: $db
	rra                                              ; $59fc: $1f
	jp   $1f92                                       ; $59fd: $c3 $92 $1f


	inc  hl                                          ; $5a00: $23
	ldh  a, [c]                                      ; $5a01: $f2
	ld   l, a                                        ; $5a02: $6f
	or   d                                           ; $5a03: $b2
	ld   l, a                                        ; $5a04: $6f
	jr   jr_0ac_59fb                                 ; $5a05: $18 $f4

	ld   h, [hl]                                     ; $5a07: $66
	dec  e                                           ; $5a08: $1d
	pop  de                                          ; $5a09: $d1
	db   $fd                                         ; $5a0a: $fd
	ld   e, $d7                                      ; $5a0b: $1e $d7
	rra                                              ; $5a0d: $1f
	sub  c                                           ; $5a0e: $91
	ld   a, [$133a]                                  ; $5a0f: $fa $3a $13
	pop  af                                          ; $5a12: $f1
	ld   e, a                                        ; $5a13: $5f
	daa                                              ; $5a14: $27
	ld   a, [$f116]                                  ; $5a15: $fa $16 $f1
	sbc  a                                           ; $5a18: $9f
	ld   b, a                                        ; $5a19: $47
	ld   h, c                                        ; $5a1a: $61

jr_0ac_5a1b:
	call $f11f                                       ; $5a1b: $cd $1f $f1
	db   $dd                                         ; $5a1e: $dd
	ld   [hl], c                                     ; $5a1f: $71
	db   $db                                         ; $5a20: $db
	rra                                              ; $5a21: $1f
	db   $d3                                         ; $5a22: $d3
	and  c                                           ; $5a23: $a1
	rra                                              ; $5a24: $1f
	ld   d, c                                        ; $5a25: $51
	or   $4e                                         ; $5a26: $f6 $4e
	or   h                                           ; $5a28: $b4
	cpl                                              ; $5a29: $2f
	ld   b, e                                        ; $5a2a: $43
	or   $69                                         ; $5a2b: $f6 $69
	dec  d                                           ; $5a2d: $15
	pop  af                                          ; $5a2e: $f1
	adc  a                                           ; $5a2f: $8f
	jr   z, jr_0ac_5a1b                              ; $5a30: $28 $e9

	ld   h, $f1                                      ; $5a32: $26 $f1
	xor  a                                           ; $5a34: $af
	ld   e, b                                        ; $5a35: $58
	ld   b, c                                        ; $5a36: $41
	cp   a                                           ; $5a37: $bf
	rra                                              ; $5a38: $1f
	pop  af                                          ; $5a39: $f1
	cp   h                                           ; $5a3a: $bc
	add  c                                           ; $5a3b: $81
	sbc  a                                           ; $5a3c: $9f
	dec  e                                           ; $5a3d: $1d
	push af                                          ; $5a3e: $f5
	ld   [hl], c                                     ; $5a3f: $71
	ld   e, $d1                                      ; $5a40: $1e $d1
	rst  $38                                         ; $5a42: $ff
	inc  e                                           ; $5a43: $1c
	or   a                                           ; $5a44: $b7
	dec  de                                          ; $5a45: $1b
	pop  hl                                          ; $5a46: $e1
	rst  $38                                         ; $5a47: $ff
	ld   b, a                                        ; $5a48: $47
	ld   de, $1ffa                                   ; $5a49: $11 $fa $1f
	pop  hl                                          ; $5a4c: $e1
	jp   z, $cd51                                    ; $5a4d: $ca $51 $cd

	rra                                              ; $5a50: $1f
	db   $f4                                         ; $5a51: $f4
	ld   h, c                                        ; $5a52: $61
	rra                                              ; $5a53: $1f
	and  c                                           ; $5a54: $a1
	db   $fc                                         ; $5a55: $fc
	inc  e                                           ; $5a56: $1c
	sub  h                                           ; $5a57: $94
	dec  e                                           ; $5a58: $1d
	pop  de                                          ; $5a59: $d1
	rst  $38                                         ; $5a5a: $ff
	dec  h                                           ; $5a5b: $25
	ld   de, $2ff8                                   ; $5a5c: $11 $f8 $2f
	or   c                                           ; $5a5f: $b1
	cp   c                                           ; $5a60: $b9
	ld   sp, $3ffb                                   ; $5a61: $31 $fb $3f
	jp   nc, $1f41                                   ; $5a64: $d2 $41 $1f

	sub  e                                           ; $5a67: $93
	ld   a, [$731a]                                  ; $5a68: $fa $1a $73
	ld   e, $d5                                      ; $5a6b: $1e $d5
	db   $fc                                         ; $5a6d: $fc
	inc  de                                          ; $5a6e: $13
	ld   de, $4ffa                                   ; $5a6f: $11 $fa $4f
	and  c                                           ; $5a72: $a1
	ld   [hl], a                                     ; $5a73: $77
	ld   hl, $7ffe                                   ; $5a74: $21 $fe $7f
	pop  bc                                          ; $5a77: $c1
	ld   de, $f41f                                   ; $5a78: $11 $1f $f4
	rst  $38                                         ; $5a7b: $ff
	inc  d                                           ; $5a7c: $14
	ld   h, e                                        ; $5a7d: $63
	ld   e, $f7                                      ; $5a7e: $1e $f7
	db   $fd                                         ; $5a80: $fd
	ld   de, rAUD1LEN                                   ; $5a81: $11 $11 $ff
	ld   e, a                                        ; $5a84: $5f
	pop  af                                          ; $5a85: $f1
	ld   d, $54                                      ; $5a86: $16 $54
	rst  JumpTable                                         ; $5a88: $df
	xor  [hl]                                        ; $5a89: $ae
	pop  bc                                          ; $5a8a: $c1
	ld   de, $f61f                                   ; $5a8b: $11 $1f $f6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a8e: $cf
	ld   de, $6b68                                   ; $5a8f: $11 $68 $6b
	db   $fc                                         ; $5a92: $fc
	xor  d                                           ; $5a93: $aa
	ld   de, rAUD1LEN                                   ; $5a94: $11 $11 $ff
	ld   a, b                                        ; $5a97: $78
	pop  af                                          ; $5a98: $f1
	rla                                              ; $5a99: $17
	xor  b                                           ; $5a9a: $a8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a9b: $cf
	rst  ToBoot                                         ; $5a9c: $c7
	ld   [hl], c                                     ; $5a9d: $71
	inc  de                                          ; $5a9e: $13
	rra                                              ; $5a9f: $1f
	rst  $30                                         ; $5aa0: $f7
	ld   c, a                                        ; $5aa1: $4f
	ld   de, $bb8c                                   ; $5aa2: $11 $8c $bb
	db   $fc                                         ; $5aa5: $fc
	ld   b, l                                        ; $5aa6: $45
	ld   de, $ff41                                   ; $5aa7: $11 $41 $ff
	ld   b, e                                        ; $5aaa: $43
	pop  af                                          ; $5aab: $f1
	add  hl, de                                      ; $5aac: $19
	db   $eb                                         ; $5aad: $eb
	xor  a                                           ; $5aae: $af
	sub  e                                           ; $5aaf: $93
	ld   d, c                                        ; $5ab0: $51
	ld   b, [hl]                                     ; $5ab1: $46
	rra                                              ; $5ab2: $1f
	pop  af                                          ; $5ab3: $f1
	rra                                              ; $5ab4: $1f
	ld   de, $c8bf                                   ; $5ab5: $11 $bf $c8
	ld   sp, hl                                      ; $5ab8: $f9
	dec  d                                           ; $5ab9: $15
	ld   [hl], $61                                   ; $5aba: $36 $61
	rst  $38                                         ; $5abc: $ff
	inc  d                                           ; $5abd: $14
	pop  af                                          ; $5abe: $f1
	dec  e                                           ; $5abf: $1d
	ld   a, [$628f]                                  ; $5ac0: $fa $8f $62
	ld   d, l                                        ; $5ac3: $55
	add  h                                           ; $5ac4: $84
	cpl                                              ; $5ac5: $2f
	pop  af                                          ; $5ac6: $f1
	adc  l                                           ; $5ac7: $8d
	inc  de                                          ; $5ac8: $13
	rst  $28                                         ; $5ac9: $ef
	adc  c                                           ; $5aca: $89
	push hl                                          ; $5acb: $e5
	dec  h                                           ; $5acc: $25
	ld   l, b                                        ; $5acd: $68
	dec  d                                           ; $5ace: $15
	db   $fc                                         ; $5acf: $fc
	ld   e, $81                                      ; $5ad0: $1e $81
	ld   a, [hl]                                     ; $5ad2: $7e
	rst  $30                                         ; $5ad3: $f7
	xor  h                                           ; $5ad4: $ac
	inc  sp                                          ; $5ad5: $33
	ld   e, b                                        ; $5ad6: $58
	ld   [hl], c                                     ; $5ad7: $71
	xor  a                                           ; $5ad8: $af
	ld   b, c                                        ; $5ad9: $41
	di                                               ; $5ada: $f3
	ld   a, [de]                                     ; $5adb: $1a
	db   $fd                                         ; $5adc: $fd
	ld   l, e                                        ; $5add: $6b
	or   e                                           ; $5ade: $b3
	ld   b, l                                        ; $5adf: $45
	sub  [hl]                                        ; $5ae0: $96
	rra                                              ; $5ae1: $1f
	pop  af                                          ; $5ae2: $f1
	cpl                                              ; $5ae3: $2f
	ld   [de], a                                     ; $5ae4: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ae5: $cf
	or   [hl]                                        ; $5ae6: $b6
	rst  ToBoot                                         ; $5ae7: $c7
	dec  [hl]                                        ; $5ae8: $35
	ld   l, d                                        ; $5ae9: $6a
	ld   hl, $1bff                                   ; $5aea: $21 $ff $1b
	pop  bc                                          ; $5aed: $c1
	ld   l, [hl]                                     ; $5aee: $6e
	ld   hl, sp+$7c                                  ; $5aef: $f8 $7c
	ld   d, h                                        ; $5af1: $54
	ld   d, a                                        ; $5af2: $57
	sub  c                                           ; $5af3: $91
	adc  a                                           ; $5af4: $8f
	ld   b, c                                        ; $5af5: $41
	di                                               ; $5af6: $f3
	ld   a, [de]                                     ; $5af7: $1a
	xor  $59                                         ; $5af8: $ee $59
	sub  h                                           ; $5afa: $94
	ld   h, [hl]                                     ; $5afb: $66
	sub  l                                           ; $5afc: $95
	rra                                              ; $5afd: $1f
	pop  af                                          ; $5afe: $f1
	ld   c, a                                        ; $5aff: $4f
	dec  d                                           ; $5b00: $15
	rst  JumpTable                                         ; $5b01: $df
	or   l                                           ; $5b02: $b5
	or   a                                           ; $5b03: $b7
	ld   d, [hl]                                     ; $5b04: $56
	ld   l, c                                        ; $5b05: $69
	inc  de                                          ; $5b06: $13
	db   $fd                                         ; $5b07: $fd
	rra                                              ; $5b08: $1f
	ld   [hl], c                                     ; $5b09: $71
	cp   l                                           ; $5b0a: $bd
	and  $7a                                         ; $5b0b: $e6 $7a
	ld   b, [hl]                                     ; $5b0d: $46
	ld   l, b                                        ; $5b0e: $68
	ld   [hl], c                                     ; $5b0f: $71
	rst  $28                                         ; $5b10: $ef
	ld   de, $3cf1                                   ; $5b11: $11 $f1 $3c
	db   $fc                                         ; $5b14: $fc
	ld   c, d                                        ; $5b15: $4a
	add  l                                           ; $5b16: $85
	halt                                             ; $5b17: $76
	and  c                                           ; $5b18: $a1
	rra                                              ; $5b19: $1f
	pop  af                                          ; $5b1a: $f1
	ret                                              ; $5b1b: $c9


	add  hl, de                                      ; $5b1c: $19

jr_0ac_5b1d:
	rst  $28                                         ; $5b1d: $ef
	halt                                             ; $5b1e: $76
	and  l                                           ; $5b1f: $a5
	ld   h, a                                        ; $5b20: $67
	add  [hl]                                        ; $5b21: $86
	rra                                              ; $5b22: $1f
	pop  af                                          ; $5b23: $f1
	rra                                              ; $5b24: $1f
	inc  de                                          ; $5b25: $13
	sbc  $b4                                         ; $5b26: $de $b4
	adc  c                                           ; $5b28: $89
	ld   e, b                                        ; $5b29: $58
	adc  b                                           ; $5b2a: $88
	inc  de                                          ; $5b2b: $13
	db   $fc                                         ; $5b2c: $fc
	ld   e, $71                                      ; $5b2d: $1e $71
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b2f: $cf
	and  $6a                                         ; $5b30: $e6 $6a
	ld   h, [hl]                                     ; $5b32: $66
	adc  d                                           ; $5b33: $8a
	ld   hl, $13ff                                   ; $5b34: $21 $ff $13
	pop  af                                          ; $5b37: $f1
	ld   c, a                                        ; $5b38: $4f
	ld   [$a548], a                                  ; $5b39: $ea $48 $a5
	ld   l, e                                        ; $5b3c: $6b
	ld   d, c                                        ; $5b3d: $51
	xor  a                                           ; $5b3e: $af
	ld   b, c                                        ; $5b3f: $41
	di                                               ; $5b40: $f3
	ld   e, $ec                                      ; $5b41: $1e $ec
	ld   h, l                                        ; $5b43: $65
	and  a                                           ; $5b44: $a7
	ld   c, e                                        ; $5b45: $4b
	sub  c                                           ; $5b46: $91
	rra                                              ; $5b47: $1f
	pop  af                                          ; $5b48: $f1
	xor  l                                           ; $5b49: $ad
	add  hl, de                                      ; $5b4a: $19
	db   $fc                                         ; $5b4b: $fc
	sub  h                                           ; $5b4c: $94
	adc  d                                           ; $5b4d: $8a
	ld   c, b                                        ; $5b4e: $48
	or   c                                           ; $5b4f: $b1
	rra                                              ; $5b50: $1f
	pop  af                                          ; $5b51: $f1
	rra                                              ; $5b52: $1f
	dec  d                                           ; $5b53: $15
	db   $fc                                         ; $5b54: $fc
	and  l                                           ; $5b55: $a5
	ld   e, e                                        ; $5b56: $5b
	ld   h, l                                        ; $5b57: $65
	db   $e3                                         ; $5b58: $e3
	ld   a, [de]                                     ; $5b59: $1a
	push af                                          ; $5b5a: $f5
	rra                                              ; $5b5b: $1f
	ld   sp, $a7fd                                   ; $5b5c: $31 $fd $a7
	dec  sp                                          ; $5b5f: $3b
	sub  e                                           ; $5b60: $93
	rst  ToBoot                                         ; $5b61: $c7
	dec  d                                           ; $5b62: $15
	cp   $1d                                         ; $5b63: $fe $1d
	sub  c                                           ; $5b65: $91
	sbc  $a9                                         ; $5b66: $de $a9
	jr   z, jr_0ac_5b1d                              ; $5b68: $28 $b3

	xor  e                                           ; $5b6a: $ab
	ld   de, $17ff                                   ; $5b6b: $11 $ff $17
	pop  af                                          ; $5b6e: $f1
	sbc  a                                           ; $5b6f: $9f
	cp   c                                           ; $5b70: $b9
	ld   b, l                                        ; $5b71: $45
	push bc                                          ; $5b72: $c5
	ld   a, l                                        ; $5b73: $7d
	ld   de, $11ff                                   ; $5b74: $11 $ff $11
	pop  af                                          ; $5b77: $f1
	ld   e, a                                        ; $5b78: $5f
	cp   d                                           ; $5b79: $ba
	ld   d, h                                        ; $5b7a: $54
	add  $6e                                         ; $5b7b: $c6 $6e
	ld   hl, $21cf                                   ; $5b7d: $21 $cf $21
	pop  af                                          ; $5b80: $f1
	rra                                              ; $5b81: $1f
	ret                                              ; $5b82: $c9


	ld   h, e                                        ; $5b83: $63
	cp   c                                           ; $5b84: $b9
	ld   c, l                                        ; $5b85: $4d
	ld   h, c                                        ; $5b86: $61
	adc  a                                           ; $5b87: $8f
	add  c                                           ; $5b88: $81
	push af                                          ; $5b89: $f5
	rra                                              ; $5b8a: $1f
	jp   c, $ab73                                    ; $5b8b: $da $73 $ab

	dec  a                                           ; $5b8e: $3d
	sub  c                                           ; $5b8f: $91
	ccf                                              ; $5b90: $3f
	pop  af                                          ; $5b91: $f1
	jp   c, $eb1d                                    ; $5b92: $da $1d $eb

	add  d                                           ; $5b95: $82
	sbc  h                                           ; $5b96: $9c
	ld   a, [hl-]                                    ; $5b97: $3a
	or   c                                           ; $5b98: $b1
	rra                                              ; $5b99: $1f
	pop  af                                          ; $5b9a: $f1
	xor  l                                           ; $5b9b: $ad
	inc  e                                           ; $5b9c: $1c
	ld   a, [$7c83]                                  ; $5b9d: $fa $83 $7c
	ld   c, b                                        ; $5ba0: $48

jr_0ac_5ba1:
	pop  bc                                          ; $5ba1: $c1
	rra                                              ; $5ba2: $1f
	pop  af                                          ; $5ba3: $f1
	ld   c, a                                        ; $5ba4: $4f
	rla                                              ; $5ba5: $17
	db   $fc                                         ; $5ba6: $fc
	sub  e                                           ; $5ba7: $93
	ld   l, h                                        ; $5ba8: $6c
	halt                                             ; $5ba9: $76

jr_0ac_5baa:
	jp   nc, $f11f                                   ; $5baa: $d2 $1f $f1

	rrca                                             ; $5bad: $0f
	ld   d, $fb                                      ; $5bae: $16 $fb
	sub  e                                           ; $5bb0: $93
	ld   e, e                                        ; $5bb1: $5b
	halt                                             ; $5bb2: $76
	db   $d3                                         ; $5bb3: $d3
	ld   e, $f1                                      ; $5bb4: $1e $f1
	rra                                              ; $5bb6: $1f
	inc  de                                          ; $5bb7: $13
	db   $fc                                         ; $5bb8: $fc
	and  h                                           ; $5bb9: $a4
	ld   c, h                                        ; $5bba: $4c
	add  l                                           ; $5bbb: $85
	push bc                                          ; $5bbc: $c5
	dec  de                                          ; $5bbd: $1b
	di                                               ; $5bbe: $f3
	rra                                              ; $5bbf: $1f
	ld   [hl+], a                                    ; $5bc0: $22
	db   $fc                                         ; $5bc1: $fc
	or   h                                           ; $5bc2: $b4
	ld   a, [hl-]                                    ; $5bc3: $3a
	sub  [hl]                                        ; $5bc4: $96
	add  $18                                         ; $5bc5: $c6 $18
	or   $1f                                         ; $5bc7: $f6 $1f
	ld   sp, $b5fc                                   ; $5bc9: $31 $fc $b5

jr_0ac_5bcc:
	dec  sp                                          ; $5bcc: $3b
	and  l                                           ; $5bcd: $a5
	or   a                                           ; $5bce: $b7
	rla                                              ; $5bcf: $17
	ld   sp, hl                                      ; $5bd0: $f9
	rra                                              ; $5bd1: $1f
	ld   b, c                                        ; $5bd2: $41
	db   $fc                                         ; $5bd3: $fc
	push bc                                          ; $5bd4: $c5
	ld   a, [hl-]                                    ; $5bd5: $3a
	and  [hl]                                        ; $5bd6: $a6
	rst  ToBoot                                         ; $5bd7: $c7
	inc  d                                           ; $5bd8: $14
	db   $fc                                         ; $5bd9: $fc
	rra                                              ; $5bda: $1f
	ld   h, c                                        ; $5bdb: $61
	db   $fd                                         ; $5bdc: $fd
	push bc                                          ; $5bdd: $c5
	add  hl, sp                                      ; $5bde: $39
	and  [hl]                                        ; $5bdf: $a6
	xor  b                                           ; $5be0: $a8
	inc  de                                          ; $5be1: $13
	cp   $1d                                         ; $5be2: $fe $1d
	sub  c                                           ; $5be4: $91
	db   $fd                                         ; $5be5: $fd
	add  $1a                                         ; $5be6: $c6 $1a
	and  [hl]                                        ; $5be8: $a6
	xor  b                                           ; $5be9: $a8
	ld   de, $1cff                                   ; $5bea: $11 $ff $1c
	and  c                                           ; $5bed: $a1
	xor  $c7                                         ; $5bee: $ee $c7
	add  hl, de                                      ; $5bf0: $19
	and  [hl]                                        ; $5bf1: $a6
	xor  c                                           ; $5bf2: $a9
	ld   de, $18ff                                   ; $5bf3: $11 $ff $18
	pop  bc                                          ; $5bf6: $c1
	sbc  $c8                                         ; $5bf7: $de $c8
	jr   jr_0ac_5ba1                                 ; $5bf9: $18 $a6

	xor  d                                           ; $5bfb: $aa
	ld   de, $16ff                                   ; $5bfc: $11 $ff $16
	pop  hl                                          ; $5bff: $e1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c00: $cf
	ret                                              ; $5c01: $c9


	jr   jr_0ac_5baa                                 ; $5c02: $18 $a6

	sbc  d                                           ; $5c04: $9a
	ld   de, $15ff                                   ; $5c05: $11 $ff $15
	pop  hl                                          ; $5c08: $e1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c09: $cf
	ret  z                                           ; $5c0a: $c8

	add  hl, de                                      ; $5c0b: $19
	and  a                                           ; $5c0c: $a7
	xor  c                                           ; $5c0d: $a9
	ld   de, $14ff                                   ; $5c0e: $11 $ff $14
	pop  af                                          ; $5c11: $f1
	cp   a                                           ; $5c12: $bf
	reti                                             ; $5c13: $d9


	jr   jr_0ac_5bcc                                 ; $5c14: $18 $b6

	sbc  d                                           ; $5c16: $9a
	ld   de, $14ff                                   ; $5c17: $11 $ff $14
	pop  hl                                          ; $5c1a: $e1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c1b: $cf
	jp   z, $b618                                    ; $5c1c: $ca $18 $b6

	cp   e                                           ; $5c1f: $bb
	ld   de, $13ff                                   ; $5c20: $11 $ff $13
	pop  af                                          ; $5c23: $f1
	cp   a                                           ; $5c24: $bf
	reti                                             ; $5c25: $d9


	add  hl, de                                      ; $5c26: $19
	or   [hl]                                        ; $5c27: $b6
	xor  e                                           ; $5c28: $ab
	ld   de, $13ff                                   ; $5c29: $11 $ff $13
	pop  af                                          ; $5c2c: $f1
	cp   a                                           ; $5c2d: $bf
	jp   c, $a618                                    ; $5c2e: $da $18 $a6

	xor  e                                           ; $5c31: $ab
	ld   de, $12ff                                   ; $5c32: $11 $ff $12
	pop  af                                          ; $5c35: $f1
	sbc  a                                           ; $5c36: $9f
	jp   c, $a519                                    ; $5c37: $da $19 $a5

	xor  d                                           ; $5c3a: $aa
	ld   de, $13ff                                   ; $5c3b: $11 $ff $13
	pop  af                                          ; $5c3e: $f1
	cp   a                                           ; $5c3f: $bf
	reti                                             ; $5c40: $d9


	add  hl, de                                      ; $5c41: $19
	and  [hl]                                        ; $5c42: $a6
	cp   d                                           ; $5c43: $ba
	ld   de, $15ff                                   ; $5c44: $11 $ff $15
	pop  af                                          ; $5c47: $f1
	xor  a                                           ; $5c48: $af
	jp   hl                                          ; $5c49: $e9


	add  hl, de                                      ; $5c4a: $19
	or   l                                           ; $5c4b: $b5
	xor  e                                           ; $5c4c: $ab
	ld   de, $16ff                                   ; $5c4d: $11 $ff $16
	pop  hl                                          ; $5c50: $e1
	adc  $d8                                         ; $5c51: $ce $d8
	ld   a, [de]                                     ; $5c53: $1a
	sub  l                                           ; $5c54: $95
	jp   z, rAUD1LEN                                    ; $5c55: $ca $11 $ff

	ld   d, $f1                                      ; $5c58: $16 $f1
	cp   [hl]                                        ; $5c5a: $be
	add  sp, $1b                                     ; $5c5b: $e8 $1b
	and  l                                           ; $5c5d: $a5
	xor  d                                           ; $5c5e: $aa
	ld   de, $19ff                                   ; $5c5f: $11 $ff $19
	pop  bc                                          ; $5c62: $c1
	sbc  $e7                                         ; $5c63: $de $e7
	dec  de                                          ; $5c65: $1b
	and  l                                           ; $5c66: $a5
	ret                                              ; $5c67: $c9


	ld   de, $19ff                                   ; $5c68: $11 $ff $19
	pop  de                                          ; $5c6b: $d1
	sbc  $e7                                         ; $5c6c: $de $e7
	inc  e                                           ; $5c6e: $1c
	and  [hl]                                        ; $5c6f: $a6
	cp   c                                           ; $5c70: $b9
	ld   de, $1bff                                   ; $5c71: $11 $ff $1b
	and  c                                           ; $5c74: $a1
	db   $ed                                         ; $5c75: $ed
	push af                                          ; $5c76: $f5
	dec  de                                          ; $5c77: $1b
	add  l                                           ; $5c78: $85
	ret                                              ; $5c79: $c9


	ld   de, $1dff                                   ; $5c7a: $11 $ff $1d
	and  c                                           ; $5c7d: $a1
	db   $ed                                         ; $5c7e: $ed
	db   $f4                                         ; $5c7f: $f4
	dec  e                                           ; $5c80: $1d
	sub  [hl]                                        ; $5c81: $96
	or   a                                           ; $5c82: $b7
	inc  d                                           ; $5c83: $14
	db   $fd                                         ; $5c84: $fd
	ld   e, $61                                      ; $5c85: $1e $61
	db   $fc                                         ; $5c87: $fc
	di                                               ; $5c88: $f3
	inc  e                                           ; $5c89: $1c
	halt                                             ; $5c8a: $76
	add  $18                                         ; $5c8b: $c6 $18
	push af                                          ; $5c8d: $f5
	rra                                              ; $5c8e: $1f

jr_0ac_5c8f:
	ld   [hl-], a                                    ; $5c8f: $32
	db   $fc                                         ; $5c90: $fc
	pop  hl                                          ; $5c91: $e1
	dec  a                                           ; $5c92: $3d
	ld   a, b                                        ; $5c93: $78
	call nc, $f41a                                   ; $5c94: $d4 $1a $f4
	rra                                              ; $5c97: $1f
	inc  de                                          ; $5c98: $13
	db   $fc                                         ; $5c99: $fc

jr_0ac_5c9a:
	pop  af                                          ; $5c9a: $f1
	ld   c, l                                        ; $5c9b: $4d
	ld   d, a                                        ; $5c9c: $57
	call nz, $f11f                                   ; $5c9d: $c4 $1f $f1
	rra                                              ; $5ca0: $1f
	jr   jr_0ac_5c8f                                 ; $5ca1: $18 $ec

	pop  de                                          ; $5ca3: $d1
	ld   l, h                                        ; $5ca4: $6c
	ld   l, d                                        ; $5ca5: $6a
	pop  bc                                          ; $5ca6: $c1
	rra                                              ; $5ca7: $1f
	pop  af                                          ; $5ca8: $f1
	cpl                                              ; $5ca9: $2f
	jr   jr_0ac_5c9a                                 ; $5caa: $18 $ee

	pop  bc                                          ; $5cac: $c1
	ld   a, e                                        ; $5cad: $7b
	ld   e, c                                        ; $5cae: $59
	or   c                                           ; $5caf: $b1
	rra                                              ; $5cb0: $1f
	pop  af                                          ; $5cb1: $f1
	ld   e, a                                        ; $5cb2: $5f
	inc  e                                           ; $5cb3: $1c
	db   $ed                                         ; $5cb4: $ed
	or   c                                           ; $5cb5: $b1
	adc  h                                           ; $5cb6: $8c
	ld   e, d                                        ; $5cb7: $5a
	and  c                                           ; $5cb8: $a1
	rra                                              ; $5cb9: $1f
	pop  af                                          ; $5cba: $f1
	sbc  h                                           ; $5cbb: $9c
	dec  e                                           ; $5cbc: $1d
	sbc  $91                                         ; $5cbd: $de $91
	xor  d                                           ; $5cbf: $aa
	ld   l, d                                        ; $5cc0: $6a
	and  c                                           ; $5cc1: $a1
	rra                                              ; $5cc2: $1f
	pop  af                                          ; $5cc3: $f1
	xor  e                                           ; $5cc4: $ab
	ld   e, $ce                                      ; $5cc5: $1e $ce
	ld   [hl], c                                     ; $5cc7: $71
	xor  c                                           ; $5cc8: $a9
	ld   l, h                                        ; $5cc9: $6c
	sub  c                                           ; $5cca: $91
	rra                                              ; $5ccb: $1f
	pop  af                                          ; $5ccc: $f1
	add  sp, $1f                                     ; $5ccd: $e8 $1f
	adc  $61                                         ; $5ccf: $ce $61
	cp   c                                           ; $5cd1: $b9
	ld   l, h                                        ; $5cd2: $6c
	sub  c                                           ; $5cd3: $91
	rra                                              ; $5cd4: $1f
	pop  af                                          ; $5cd5: $f1
	rst  $20                                         ; $5cd6: $e7
	rra                                              ; $5cd7: $1f
	cp   a                                           ; $5cd8: $bf
	ld   h, c                                        ; $5cd9: $61
	ret                                              ; $5cda: $c9


	ld   l, e                                        ; $5cdb: $6b
	add  c                                           ; $5cdc: $81
	ld   c, a                                        ; $5cdd: $4f
	or   c                                           ; $5cde: $b1
	db   $f4                                         ; $5cdf: $f4
	rra                                              ; $5ce0: $1f
	cp   a                                           ; $5ce1: $bf
	ld   b, c                                        ; $5ce2: $41
	rst  ToBoot                                         ; $5ce3: $c7
	ld   a, l                                        ; $5ce4: $7d
	ld   h, c                                        ; $5ce5: $61
	ld   l, a                                        ; $5ce6: $6f
	add  c                                           ; $5ce7: $81
	ldh  a, [c]                                      ; $5ce8: $f2
	cpl                                              ; $5ce9: $2f
	cp   [hl]                                        ; $5cea: $be
	ld   [hl-], a                                    ; $5ceb: $32
	ret  z                                           ; $5cec: $c8

	ld   a, e                                        ; $5ced: $7b
	ld   d, c                                        ; $5cee: $51
	adc  a                                           ; $5cef: $8f
	ld   d, c                                        ; $5cf0: $51
	pop  af                                          ; $5cf1: $f1
	ccf                                              ; $5cf2: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cf3: $cf
	inc  de                                          ; $5cf4: $13
	sub  $7d                                         ; $5cf5: $d6 $7d
	ld   b, c                                        ; $5cf7: $41
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cf8: $cf
	ld   de, $7ff1                                   ; $5cf9: $11 $f1 $7f
	call $c714                                       ; $5cfc: $cd $14 $c7
	xor  e                                           ; $5cff: $ab
	ld   hl, $12ff                                   ; $5d00: $21 $ff $12
	pop  af                                          ; $5d03: $f1
	sbc  [hl]                                        ; $5d04: $9e
	db   $dd                                         ; $5d05: $dd
	rla                                              ; $5d06: $17
	call nz, $11ac                                   ; $5d07: $c4 $ac $11
	rst  $38                                         ; $5d0a: $ff
	dec  d                                           ; $5d0b: $15
	pop  af                                          ; $5d0c: $f1
	cp   l                                           ; $5d0d: $bd
	db   $db                                         ; $5d0e: $db
	add  hl, de                                      ; $5d0f: $19
	add  $aa                                         ; $5d10: $c6 $aa
	ld   de, $1aff                                   ; $5d12: $11 $ff $1a
	and  c                                           ; $5d15: $a1
	db   $fd                                         ; $5d16: $fd
	jp   hl                                          ; $5d17: $e9


	dec  de                                          ; $5d18: $1b
	and  l                                           ; $5d19: $a5
	cp   c                                           ; $5d1a: $b9
	ld   [de], a                                     ; $5d1b: $12
	db   $fc                                         ; $5d1c: $fc
	rra                                              ; $5d1d: $1f
	ld   h, c                                        ; $5d1e: $61
	ei                                               ; $5d1f: $fb
	db   $e4                                         ; $5d20: $e4
	inc  e                                           ; $5d21: $1c
	ld   [hl], a                                     ; $5d22: $77
	sub  $15                                         ; $5d23: $d6 $15
	ld   hl, sp+$1f                                  ; $5d25: $f8 $1f
	ld   hl, $f2fc                                   ; $5d27: $21 $fc $f2
	inc  l                                           ; $5d2a: $2c
	halt                                             ; $5d2b: $76
	or   l                                           ; $5d2c: $b5
	ld   e, $f1                                      ; $5d2d: $1e $f1
	rra                                              ; $5d2f: $1f
	add  hl, de                                      ; $5d30: $19
	db   $fc                                         ; $5d31: $fc
	pop  de                                          ; $5d32: $d1
	ld   e, h                                        ; $5d33: $5c
	ld   e, e                                        ; $5d34: $5b
	pop  de                                          ; $5d35: $d1
	rra                                              ; $5d36: $1f
	pop  af                                          ; $5d37: $f1
	ld   c, a                                        ; $5d38: $4f
	ld   a, [de]                                     ; $5d39: $1a
	db   $ed                                         ; $5d3a: $ed
	pop  bc                                          ; $5d3b: $c1
	sbc  h                                           ; $5d3c: $9c
	ld   e, c                                        ; $5d3d: $59
	and  c                                           ; $5d3e: $a1
	rra                                              ; $5d3f: $1f
	pop  af                                          ; $5d40: $f1
	cp   c                                           ; $5d41: $b9
	rra                                              ; $5d42: $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d43: $cf
	ld   [hl], c                                     ; $5d44: $71
	cp   b                                           ; $5d45: $b8
	ld   l, h                                        ; $5d46: $6c
	sub  c                                           ; $5d47: $91
	ccf                                              ; $5d48: $3f
	and  c                                           ; $5d49: $a1
	db   $f4                                         ; $5d4a: $f4
	rra                                              ; $5d4b: $1f
	xor  [hl]                                        ; $5d4c: $ae
	ld   [hl-], a                                    ; $5d4d: $32
	rst  $10                                         ; $5d4e: $d7
	ld   l, e                                        ; $5d4f: $6b
	ld   h, c                                        ; $5d50: $61
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d51: $cf
	ld   de, $7ff1                                   ; $5d52: $11 $f1 $7f
	call $c516                                       ; $5d55: $cd $16 $c5
	sbc  h                                           ; $5d58: $9c
	ld   de, $17ff                                   ; $5d59: $11 $ff $17
	pop  hl                                          ; $5d5c: $e1
	db   $dd                                         ; $5d5d: $dd
	jp   c, $a51a                                    ; $5d5e: $da $1a $a5

	sbc  d                                           ; $5d61: $9a
	ld   de, $1dfe                                   ; $5d62: $11 $fe $1d
	ld   [hl], c                                     ; $5d65: $71
	ei                                               ; $5d66: $fb
	push af                                          ; $5d67: $f5
	inc  e                                           ; $5d68: $1c
	ld   [hl], a                                     ; $5d69: $77
	rst  ToBoot                                         ; $5d6a: $c7
	ld   d, $f5                                      ; $5d6b: $16 $f5
	rra                                              ; $5d6d: $1f
	inc  de                                          ; $5d6e: $13
	ei                                               ; $5d6f: $fb
	ldh  [c], a                                      ; $5d70: $e2
	ld   c, l                                        ; $5d71: $4d
	ld   l, b                                        ; $5d72: $68
	or   h                                           ; $5d73: $b4
	ld   e, $f1                                      ; $5d74: $1e $f1
	rra                                              ; $5d76: $1f
	add  hl, de                                      ; $5d77: $19
	db   $eb                                         ; $5d78: $eb
	pop  bc                                          ; $5d79: $c1
	ld   a, e                                        ; $5d7a: $7b
	ld   e, d                                        ; $5d7b: $5a
	pop  bc                                          ; $5d7c: $c1
	rra                                              ; $5d7d: $1f
	pop  af                                          ; $5d7e: $f1
	adc  l                                           ; $5d7f: $8d
	dec  e                                           ; $5d80: $1d
	sbc  $91                                         ; $5d81: $de $91
	cp   d                                           ; $5d83: $ba
	ld   l, d                                        ; $5d84: $6a
	and  c                                           ; $5d85: $a1
	rrca                                             ; $5d86: $0f
	pop  af                                          ; $5d87: $f1
	rst  $10                                         ; $5d88: $d7
	rra                                              ; $5d89: $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d8a: $cf
	ld   d, c                                        ; $5d8b: $51
	rst  ToBoot                                         ; $5d8c: $c7
	ld   l, e                                        ; $5d8d: $6b
	ld   [hl], c                                     ; $5d8e: $71
	ld   l, a                                        ; $5d8f: $6f
	ld   h, c                                        ; $5d90: $61
	ldh  a, [c]                                      ; $5d91: $f2
	cpl                                              ; $5d92: $2f
	cp   [hl]                                        ; $5d93: $be
	inc  de                                          ; $5d94: $13
	sub  $8c                                         ; $5d95: $d6 $8c
	ld   b, c                                        ; $5d97: $41
	cp   a                                           ; $5d98: $bf
	ld   de, $5ff1                                   ; $5d99: $11 $f1 $5f
	cp   [hl]                                        ; $5d9c: $be
	ld   d, $c5                                      ; $5d9d: $16 $c5
	adc  e                                           ; $5d9f: $8b
	ld   sp, $15ff                                   ; $5da0: $31 $ff $15
	pop  hl                                          ; $5da3: $e1
	cp   l                                           ; $5da4: $bd
	db   $db                                         ; $5da5: $db
	ld   a, [de]                                     ; $5da6: $1a
	sub  l                                           ; $5da7: $95
	cp   e                                           ; $5da8: $bb
	ld   de, $1bff                                   ; $5da9: $11 $ff $1b
	pop  bc                                          ; $5dac: $c1
	call c, $1be8                                    ; $5dad: $dc $e8 $1b
	and  [hl]                                        ; $5db0: $a6
	sbc  c                                           ; $5db1: $99
	ld   [de], a                                     ; $5db2: $12
	ei                                               ; $5db3: $fb
	rra                                              ; $5db4: $1f
	ld   b, c                                        ; $5db5: $41
	ei                                               ; $5db6: $fb
	db   $e3                                         ; $5db7: $e3
	inc  l                                           ; $5db8: $2c
	ld   l, b                                        ; $5db9: $68
	sub  $16                                         ; $5dba: $d6 $16
	push af                                          ; $5dbc: $f5
	rra                                              ; $5dbd: $1f
	ld   [de], a                                     ; $5dbe: $12
	ei                                               ; $5dbf: $fb
	pop  hl                                          ; $5dc0: $e1
	ld   e, l                                        ; $5dc1: $5d
	ld   l, b                                        ; $5dc2: $68
	and  l                                           ; $5dc3: $a5
	dec  e                                           ; $5dc4: $1d
	pop  af                                          ; $5dc5: $f1
	rra                                              ; $5dc6: $1f
	add  hl, de                                      ; $5dc7: $19
	db   $fd                                         ; $5dc8: $fd
	pop  bc                                          ; $5dc9: $c1
	ld   a, e                                        ; $5dca: $7b
	ld   e, e                                        ; $5dcb: $5b
	pop  bc                                          ; $5dcc: $c1
	rra                                              ; $5dcd: $1f
	pop  af                                          ; $5dce: $f1
	ld   e, a                                        ; $5dcf: $5f
	dec  de                                          ; $5dd0: $1b
	db   $dd                                         ; $5dd1: $dd
	and  c                                           ; $5dd2: $a1
	xor  d                                           ; $5dd3: $aa
	ld   l, d                                        ; $5dd4: $6a
	sub  c                                           ; $5dd5: $91
	rra                                              ; $5dd6: $1f
	pop  af                                          ; $5dd7: $f1
	cp   c                                           ; $5dd8: $b9
	rra                                              ; $5dd9: $1f
	sbc  $71                                         ; $5dda: $de $71
	or   a                                           ; $5ddc: $b7
	ld   l, h                                        ; $5ddd: $6c
	sub  c                                           ; $5dde: $91
	cpl                                              ; $5ddf: $2f
	or   c                                           ; $5de0: $b1
	push af                                          ; $5de1: $f5
	rra                                              ; $5de2: $1f
	cp   a                                           ; $5de3: $bf
	ld   [hl-], a                                    ; $5de4: $32
	sub  $9c                                         ; $5de5: $d6 $9c
	ld   h, c                                        ; $5de7: $61
	ld   l, a                                        ; $5de8: $6f
	ld   h, c                                        ; $5de9: $61
	pop  af                                          ; $5dea: $f1
	cpl                                              ; $5deb: $2f
	adc  $14                                         ; $5dec: $ce $14
	or   [hl]                                        ; $5dee: $b6
	sbc  e                                           ; $5def: $9b
	ld   d, c                                        ; $5df0: $51
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5df1: $cf
	ld   de, $7ff1                                   ; $5df2: $11 $f1 $7f
	call z, $b517                                    ; $5df5: $cc $17 $b5
	xor  h                                           ; $5df8: $ac
	ld   hl, $13ff                                   ; $5df9: $21 $ff $13
	pop  af                                          ; $5dfc: $f1
	sbc  [hl]                                        ; $5dfd: $9e
	db   $db                                         ; $5dfe: $db
	add  hl, de                                      ; $5dff: $19
	and  [hl]                                        ; $5e00: $a6
	xor  c                                           ; $5e01: $a9
	ld   de, $18ff                                   ; $5e02: $11 $ff $18
	pop  bc                                          ; $5e05: $c1
	adc  $d8                                         ; $5e06: $ce $d8
	dec  de                                          ; $5e08: $1b
	add  [hl]                                        ; $5e09: $86
	ret                                              ; $5e0a: $c9


	ld   de, $1cff                                   ; $5e0b: $11 $ff $1c
	or   c                                           ; $5e0e: $b1
	db   $dd                                         ; $5e0f: $dd
	and  $1b                                         ; $5e10: $e6 $1b
	add  a                                           ; $5e12: $87
	and  a                                           ; $5e13: $a7
	ld   [de], a                                     ; $5e14: $12
	db   $fc                                         ; $5e15: $fc
	rra                                              ; $5e16: $1f
	ld   d, c                                        ; $5e17: $51
	db   $fc                                         ; $5e18: $fc
	db   $f4                                         ; $5e19: $f4
	inc  l                                           ; $5e1a: $2c
	ld   h, a                                        ; $5e1b: $67
	rst  $10                                         ; $5e1c: $d7
	dec  d                                           ; $5e1d: $15
	or   $1f                                         ; $5e1e: $f6 $1f
	ld   sp, $d1fb                                   ; $5e20: $31 $fb $d1
	ld   c, h                                        ; $5e23: $4c
	ld   l, b                                        ; $5e24: $68
	or   l                                           ; $5e25: $b5
	inc  e                                           ; $5e26: $1c
	pop  af                                          ; $5e27: $f1
	rra                                              ; $5e28: $1f
	ld   d, $fc                                      ; $5e29: $16 $fc
	pop  bc                                          ; $5e2b: $c1
	ld   l, d                                        ; $5e2c: $6a
	ld   e, d                                        ; $5e2d: $5a
	jp   nz, $f11f                                   ; $5e2e: $c2 $1f $f1

	ccf                                              ; $5e31: $3f
	jr   @-$02                                       ; $5e32: $18 $fc

	or   c                                           ; $5e34: $b1
	sbc  d                                           ; $5e35: $9a
	ld   l, d                                        ; $5e36: $6a
	sub  c                                           ; $5e37: $91
	rra                                              ; $5e38: $1f
	pop  af                                          ; $5e39: $f1
	sbc  h                                           ; $5e3a: $9c
	dec  e                                           ; $5e3b: $1d
	xor  $81                                         ; $5e3c: $ee $81
	xor  b                                           ; $5e3e: $a8
	ld   e, h                                        ; $5e3f: $5c
	and  c                                           ; $5e40: $a1
	cpl                                              ; $5e41: $2f
	or   c                                           ; $5e42: $b1
	or   $1f                                         ; $5e43: $f6 $1f
	adc  $42                                         ; $5e45: $ce $42
	ret  z                                           ; $5e47: $c8

	ld   a, e                                        ; $5e48: $7b
	ld   h, c                                        ; $5e49: $61
	sbc  a                                           ; $5e4a: $9f
	ld   hl, $4ff1                                   ; $5e4b: $21 $f1 $4f
	cp   l                                           ; $5e4e: $bd
	dec  d                                           ; $5e4f: $15
	or   l                                           ; $5e50: $b5
	adc  e                                           ; $5e51: $8b
	ld   sp, $15ff                                   ; $5e52: $31 $ff $15
	pop  af                                          ; $5e55: $f1
	xor  [hl]                                        ; $5e56: $ae
	jp   z, $b619                                    ; $5e57: $ca $19 $b6

	sbc  d                                           ; $5e5a: $9a
	ld   de, $1eff                                   ; $5e5b: $11 $ff $1e
	ld   [hl], c                                     ; $5e5e: $71
	ei                                               ; $5e5f: $fb
	and  $1b                                         ; $5e60: $e6 $1b
	add  [hl]                                        ; $5e62: $86
	xor  b                                           ; $5e63: $a8
	add  hl, de                                      ; $5e64: $19
	pop  af                                          ; $5e65: $f1
	rra                                              ; $5e66: $1f
	dec  d                                           ; $5e67: $15
	ei                                               ; $5e68: $fb
	pop  de                                          ; $5e69: $d1
	ld   e, h                                        ; $5e6a: $5c
	ld   h, a                                        ; $5e6b: $67
	or   e                                           ; $5e6c: $b3
	rra                                              ; $5e6d: $1f
	pop  af                                          ; $5e6e: $f1
	adc  l                                           ; $5e6f: $8d
	dec  e                                           ; $5e70: $1d
	db   $dd                                         ; $5e71: $dd
	sub  c                                           ; $5e72: $91
	xor  c                                           ; $5e73: $a9
	ld   e, e                                        ; $5e74: $5b
	and  c                                           ; $5e75: $a1
	ccf                                              ; $5e76: $3f
	sub  c                                           ; $5e77: $91
	db   $f4                                         ; $5e78: $f4
	rra                                              ; $5e79: $1f
	cp   l                                           ; $5e7a: $bd
	inc  sp                                          ; $5e7b: $33
	rst  $10                                         ; $5e7c: $d7
	ld   l, e                                        ; $5e7d: $6b
	ld   d, c                                        ; $5e7e: $51
	rst  $38                                         ; $5e7f: $ff
	dec  d                                           ; $5e80: $15
	pop  hl                                          ; $5e81: $e1
	adc  $cb                                         ; $5e82: $ce $cb
	ld   a, [de]                                     ; $5e84: $1a
	and  l                                           ; $5e85: $a5
	xor  d                                           ; $5e86: $aa
	inc  de                                          ; $5e87: $13
	ld   a, [$411f]                                  ; $5e88: $fa $1f $41
	ei                                               ; $5e8b: $fb
	db   $e3                                         ; $5e8c: $e3
	dec  a                                           ; $5e8d: $3d
	ld   [hl], l                                     ; $5e8e: $75
	and  l                                           ; $5e8f: $a5
	rra                                              ; $5e90: $1f
	pop  af                                          ; $5e91: $f1
	ld   a, h                                        ; $5e92: $7c
	ld   e, $ec                                      ; $5e93: $1e $ec
	sub  c                                           ; $5e95: $91
	sbc  c                                           ; $5e96: $99
	ld   l, d                                        ; $5e97: $6a
	sub  c                                           ; $5e98: $91
	ld   l, a                                        ; $5e99: $6f
	ld   b, c                                        ; $5e9a: $41
	pop  af                                          ; $5e9b: $f1
	ld   c, a                                        ; $5e9c: $4f
	xor  l                                           ; $5e9d: $ad
	dec  h                                           ; $5e9e: $25
	rst  ToBoot                                         ; $5e9f: $c7
	ld   l, d                                        ; $5ea0: $6a
	ld   sp, $1cff                                   ; $5ea1: $31 $ff $1c
	sub  c                                           ; $5ea4: $91
	db   $fc                                         ; $5ea5: $fc
	rst  ToBoot                                         ; $5ea6: $c7
	ld   a, [hl+]                                    ; $5ea7: $2a
	add  [hl]                                        ; $5ea8: $86
	sub  a                                           ; $5ea9: $97

jr_0ac_5eaa:
	inc  e                                           ; $5eaa: $1c
	pop  af                                          ; $5eab: $f1
	rra                                              ; $5eac: $1f
	jr   jr_0ac_5eaa                                 ; $5ead: $18 $fb

	or   c                                           ; $5eaf: $b1
	adc  d                                           ; $5eb0: $8a
	ld   h, a                                        ; $5eb1: $67
	and  c                                           ; $5eb2: $a1
	cpl                                              ; $5eb3: $2f
	sub  c                                           ; $5eb4: $91
	di                                               ; $5eb5: $f3
	rra                                              ; $5eb6: $1f
	call z, $b644                                    ; $5eb7: $cc $44 $b6
	ld   a, e                                        ; $5eba: $7b
	ld   b, c                                        ; $5ebb: $41
	rst  $38                                         ; $5ebc: $ff
	add  hl, de                                      ; $5ebd: $19
	pop  bc                                          ; $5ebe: $c1
	db   $dd                                         ; $5ebf: $dd
	cp   b                                           ; $5ec0: $b8
	dec  de                                          ; $5ec1: $1b
	and  l                                           ; $5ec2: $a5
	sbc  c                                           ; $5ec3: $99
	dec  de                                          ; $5ec4: $1b
	pop  af                                          ; $5ec5: $f1
	rra                                              ; $5ec6: $1f
	rla                                              ; $5ec7: $17
	ei                                               ; $5ec8: $fb
	or   c                                           ; $5ec9: $b1
	ld   a, d                                        ; $5eca: $7a
	ld   d, a                                        ; $5ecb: $57
	and  c                                           ; $5ecc: $a1
	rra                                              ; $5ecd: $1f
	and  c                                           ; $5ece: $a1
	di                                               ; $5ecf: $f3
	rra                                              ; $5ed0: $1f
	cp   h                                           ; $5ed1: $bc
	ld   b, h                                        ; $5ed2: $44
	rst  ToBoot                                         ; $5ed3: $c7
	ld   e, e                                        ; $5ed4: $5b
	ld   d, c                                        ; $5ed5: $51
	rst  $38                                         ; $5ed6: $ff
	ld   a, [de]                                     ; $5ed7: $1a
	and  c                                           ; $5ed8: $a1
	db   $ed                                         ; $5ed9: $ed
	rst  ToBoot                                         ; $5eda: $c7
	dec  hl                                          ; $5edb: $2b
	add  l                                           ; $5edc: $85
	sbc  b                                           ; $5edd: $98
	dec  de                                          ; $5ede: $1b
	pop  af                                          ; $5edf: $f1
	rra                                              ; $5ee0: $1f
	ld   a, [de]                                     ; $5ee1: $1a
	ei                                               ; $5ee2: $fb
	and  c                                           ; $5ee3: $a1
	adc  e                                           ; $5ee4: $8b
	ld   h, a                                        ; $5ee5: $67
	and  c                                           ; $5ee6: $a1
	ccf                                              ; $5ee7: $3f
	ld   [hl], c                                     ; $5ee8: $71
	pop  af                                          ; $5ee9: $f1
	ccf                                              ; $5eea: $3f
	cp   h                                           ; $5eeb: $bc
	dec  [hl]                                        ; $5eec: $35
	or   [hl]                                        ; $5eed: $b6
	ld   l, e                                        ; $5eee: $6b
	ld   b, c                                        ; $5eef: $41
	rst  $38                                         ; $5ef0: $ff
	inc  e                                           ; $5ef1: $1c
	add  c                                           ; $5ef2: $81
	db   $fc                                         ; $5ef3: $fc
	add  $2b                                         ; $5ef4: $c6 $2b
	add  l                                           ; $5ef6: $85
	sbc  b                                           ; $5ef7: $98
	ld   e, $f1                                      ; $5ef8: $1e $f1
	ld   a, $1a                                      ; $5efa: $3e $1a
	ei                                               ; $5efc: $fb
	and  c                                           ; $5efd: $a1
	adc  d                                           ; $5efe: $8a
	ld   l, b                                        ; $5eff: $68
	or   c                                           ; $5f00: $b1
	ccf                                              ; $5f01: $3f
	ld   d, c                                        ; $5f02: $51
	pop  af                                          ; $5f03: $f1
	ld   c, a                                        ; $5f04: $4f
	cp   l                                           ; $5f05: $bd
	dec  h                                           ; $5f06: $25
	add  $6a                                         ; $5f07: $c6 $6a
	ld   b, c                                        ; $5f09: $41
	rst  $38                                         ; $5f0a: $ff
	dec  e                                           ; $5f0b: $1d
	ld   [hl], c                                     ; $5f0c: $71
	ei                                               ; $5f0d: $fb
	sub  $2b                                         ; $5f0e: $d6 $2b
	add  [hl]                                        ; $5f10: $86
	sub  a                                           ; $5f11: $97
	rra                                              ; $5f12: $1f
	pop  af                                          ; $5f13: $f1
	ld   e, l                                        ; $5f14: $5d
	inc  e                                           ; $5f15: $1c
	db   $ec                                         ; $5f16: $ec
	sub  c                                           ; $5f17: $91
	sbc  c                                           ; $5f18: $99
	ld   l, b                                        ; $5f19: $68
	sub  c                                           ; $5f1a: $91
	ld   l, a                                        ; $5f1b: $6f
	ld   hl, $6ff1                                   ; $5f1c: $21 $f1 $6f
	cp   h                                           ; $5f1f: $bc
	ld   h, $b6                                      ; $5f20: $26 $b6
	ld   l, e                                        ; $5f22: $6b
	ld   hl, $1ffc                                   ; $5f23: $21 $fc $1f
	ld   sp, $d4fb                                   ; $5f26: $31 $fb $d4
	ld   c, e                                        ; $5f29: $4b
	halt                                             ; $5f2a: $76
	or   [hl]                                        ; $5f2b: $b6
	rra                                              ; $5f2c: $1f
	pop  af                                          ; $5f2d: $f1
	xor  d                                           ; $5f2e: $aa
	ld   e, $cd                                      ; $5f2f: $1e $cd
	ld   [hl], c                                     ; $5f31: $71
	cp   c                                           ; $5f32: $b9
	ld   l, b                                        ; $5f33: $68
	sub  c                                           ; $5f34: $91
	xor  a                                           ; $5f35: $af
	ld   de, $9ef1                                   ; $5f36: $11 $f1 $9e
	rr   b                                           ; $5f39: $cb $18
	and  l                                           ; $5f3b: $a5
	ld   a, e                                        ; $5f3c: $7b
	inc  de                                          ; $5f3d: $13
	push af                                          ; $5f3e: $f5

jr_0ac_5f3f:
	rra                                              ; $5f3f: $1f
	dec  d                                           ; $5f40: $15
	ld   a, [$5cd2]                                  ; $5f41: $fa $d2 $5c
	halt                                             ; $5f44: $76
	or   e                                           ; $5f45: $b3
	rra                                              ; $5f46: $1f
	pop  hl                                          ; $5f47: $e1
	push af                                          ; $5f48: $f5
	rra                                              ; $5f49: $1f
	xor  l                                           ; $5f4a: $ad
	ld   d, e                                        ; $5f4b: $53
	ret  z                                           ; $5f4c: $c8

	ld   e, c                                        ; $5f4d: $59
	ld   [hl], c                                     ; $5f4e: $71
	rst  $38                                         ; $5f4f: $ff
	ld   a, [de]                                     ; $5f50: $1a
	and  c                                           ; $5f51: $a1
	db   $fd                                         ; $5f52: $fd
	ret  c                                           ; $5f53: $d8

	ld   a, [de]                                     ; $5f54: $1a
	sub  h                                           ; $5f55: $94
	sbc  c                                           ; $5f56: $99
	rra                                              ; $5f57: $1f
	pop  af                                          ; $5f58: $f1
	ld   e, l                                        ; $5f59: $5d
	dec  e                                           ; $5f5a: $1d
	db   $eb                                         ; $5f5b: $eb
	and  c                                           ; $5f5c: $a1
	xor  d                                           ; $5f5d: $aa
	ld   d, a                                        ; $5f5e: $57
	and  c                                           ; $5f5f: $a1
	adc  a                                           ; $5f60: $8f
	ld   de, $9ff1                                   ; $5f61: $11 $f1 $9f
	cp   e                                           ; $5f64: $bb
	jr   @-$48                                       ; $5f65: $18 $b6

	ld   l, e                                        ; $5f67: $6b
	inc  d                                           ; $5f68: $14
	db   $f4                                         ; $5f69: $f4
	rra                                              ; $5f6a: $1f
	dec  d                                           ; $5f6b: $15
	ei                                               ; $5f6c: $fb
	jp   nc, Jump_0ac_665b                           ; $5f6d: $d2 $5b $66

	or   d                                           ; $5f70: $b2
	rra                                              ; $5f71: $1f
	and  c                                           ; $5f72: $a1
	di                                               ; $5f73: $f3
	cpl                                              ; $5f74: $2f
	cp   l                                           ; $5f75: $bd
	inc  sp                                          ; $5f76: $33
	rst  $10                                         ; $5f77: $d7
	ld   c, d                                        ; $5f78: $4a
	ld   d, c                                        ; $5f79: $51
	rst  $38                                         ; $5f7a: $ff
	rra                                              ; $5f7b: $1f
	ld   d, c                                        ; $5f7c: $51
	ei                                               ; $5f7d: $fb
	push bc                                          ; $5f7e: $c5
	dec  hl                                          ; $5f7f: $2b
	add  h                                           ; $5f80: $84
	and  [hl]                                        ; $5f81: $a6
	rra                                              ; $5f82: $1f
	pop  af                                          ; $5f83: $f1
	cp   c                                           ; $5f84: $b9
	rra                                              ; $5f85: $1f
	call z, $ba71                                    ; $5f86: $cc $71 $ba
	ld   c, b                                        ; $5f89: $48
	add  c                                           ; $5f8a: $81
	rst  $38                                         ; $5f8b: $ff
	jr   jr_0ac_5f3f                                 ; $5f8c: $18 $b1

	cp   $b9                                         ; $5f8e: $fe $b9
	ld   a, [de]                                     ; $5f90: $1a
	and  h                                           ; $5f91: $a4
	adc  d                                           ; $5f92: $8a
	rra                                              ; $5f93: $1f
	pop  af                                          ; $5f94: $f1
	ld   e, [hl]                                     ; $5f95: $5e
	dec  e                                           ; $5f96: $1d
	db   $ec                                         ; $5f97: $ec
	sub  c                                           ; $5f98: $91
	xor  e                                           ; $5f99: $ab
	ld   b, [hl]                                     ; $5f9a: $46
	or   c                                           ; $5f9b: $b1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f9c: $cf
	inc  de                                          ; $5f9d: $13
	pop  af                                          ; $5f9e: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f9f: $cf
	cp   c                                           ; $5fa0: $b9
	add  hl, de                                      ; $5fa1: $19
	and  l                                           ; $5fa2: $a5
	ld   a, e                                        ; $5fa3: $7b
	add  hl, de                                      ; $5fa4: $19
	pop  af                                          ; $5fa5: $f1
	rra                                              ; $5fa6: $1f
	add  hl, de                                      ; $5fa7: $19
	ei                                               ; $5fa8: $fb
	or   c                                           ; $5fa9: $b1
	adc  h                                           ; $5faa: $8c
	ld   d, h                                        ; $5fab: $54
	or   c                                           ; $5fac: $b1
	sbc  a                                           ; $5fad: $9f
	ld   de, $aff1                                   ; $5fae: $11 $f1 $af
	cp   e                                           ; $5fb1: $bb
	rla                                              ; $5fb2: $17
	add  $5b                                         ; $5fb3: $c6 $5b

jr_0ac_5fb5:
	rla                                              ; $5fb5: $17
	pop  af                                          ; $5fb6: $f1
	rra                                              ; $5fb7: $1f
	jr   jr_0ac_5fb5                                 ; $5fb8: $18 $fb

	pop  bc                                          ; $5fba: $c1
	ld   a, l                                        ; $5fbb: $7d
	ld   d, h                                        ; $5fbc: $54
	and  c                                           ; $5fbd: $a1
	ld   a, a                                        ; $5fbe: $7f
	ld   de, $9ff1                                   ; $5fbf: $11 $f1 $9f
	cp   e                                           ; $5fc2: $bb
	ld   d, $b6                                      ; $5fc3: $16 $b6
	ld   e, e                                        ; $5fc5: $5b
	dec  d                                           ; $5fc6: $15
	pop  af                                          ; $5fc7: $f1
	rra                                              ; $5fc8: $1f
	rla                                              ; $5fc9: $17
	ld   a, [$6cc2]                                  ; $5fca: $fa $c2 $6c
	ld   h, e                                        ; $5fcd: $63
	or   c                                           ; $5fce: $b1
	ld   e, a                                        ; $5fcf: $5f
	ld   hl, $8ff1                                   ; $5fd0: $21 $f1 $8f
	xor  h                                           ; $5fd3: $ac
	dec  h                                           ; $5fd4: $25
	rst  ToBoot                                         ; $5fd5: $c7
	ld   c, d                                        ; $5fd6: $4a
	dec  d                                           ; $5fd7: $15
	di                                               ; $5fd8: $f3
	rra                                              ; $5fd9: $1f
	ld   d, $fa                                      ; $5fda: $16 $fa
	jp   nz, Jump_0ac_735c                           ; $5fdc: $c2 $5c $73

	and  d                                           ; $5fdf: $a2
	ld   e, a                                        ; $5fe0: $5f
	ld   sp, $7ff1                                   ; $5fe1: $31 $f1 $7f
	xor  e                                           ; $5fe4: $ab
	dec  [hl]                                        ; $5fe5: $35
	rst  ToBoot                                         ; $5fe6: $c7
	ld   e, d                                        ; $5fe7: $5a
	inc  hl                                          ; $5fe8: $23
	push af                                          ; $5fe9: $f5
	rra                                              ; $5fea: $1f
	dec  d                                           ; $5feb: $15
	ld   a, [$5dc3]                                  ; $5fec: $fa $c3 $5d
	ld   [hl], e                                     ; $5fef: $73
	and  e                                           ; $5ff0: $a3
	ld   e, a                                        ; $5ff1: $5f
	ld   sp, $7ff1                                   ; $5ff2: $31 $f1 $7f
	cp   e                                           ; $5ff5: $bb
	dec  [hl]                                        ; $5ff6: $35
	or   a                                           ; $5ff7: $b7
	ld   e, c                                        ; $5ff8: $59
	dec  h                                           ; $5ff9: $25

Call_0ac_5ffa:
	di                                               ; $5ffa: $f3
	rra                                              ; $5ffb: $1f
	ld   d, $fb                                      ; $5ffc: $16 $fb
	or   d                                           ; $5ffe: $b2
	ld   e, h                                        ; $5fff: $5c
	ld   [hl], h                                     ; $6000: $74
	and  d                                           ; $6001: $a2
	ld   e, a                                        ; $6002: $5f
	ld   sp, $6ff1                                   ; $6003: $31 $f1 $6f
	cp   e                                           ; $6006: $bb
	dec  h                                           ; $6007: $25
	or   a                                           ; $6008: $b7
	ld   e, c                                        ; $6009: $59
	inc  h                                           ; $600a: $24
	db   $f4                                         ; $600b: $f4
	rra                                              ; $600c: $1f
	ld   d, $fa                                      ; $600d: $16 $fa
	jp   nz, Jump_0ac_745c                           ; $600f: $c2 $5c $74

	and  d                                           ; $6012: $a2
	ld   e, a                                        ; $6013: $5f
	ld   b, c                                        ; $6014: $41
	pop  af                                          ; $6015: $f1
	ld   l, a                                        ; $6016: $6f
	cp   h                                           ; $6017: $bc
	dec  h                                           ; $6018: $25
	rst  ToBoot                                         ; $6019: $c7
	ld   e, d                                        ; $601a: $5a
	inc  d                                           ; $601b: $14
	db   $f4                                         ; $601c: $f4
	rra                                              ; $601d: $1f
	dec  d                                           ; $601e: $15
	ld   a, [$5db2]                                  ; $601f: $fa $b2 $5d
	ld   [hl], e                                     ; $6022: $73
	sub  d                                           ; $6023: $92
	ld   c, a                                        ; $6024: $4f
	ld   d, c                                        ; $6025: $51
	pop  af                                          ; $6026: $f1
	ld   e, a                                        ; $6027: $5f
	xor  h                                           ; $6028: $ac
	dec  [hl]                                        ; $6029: $35
	rst  ToBoot                                         ; $602a: $c7
	ld   c, d                                        ; $602b: $4a
	inc  hl                                          ; $602c: $23
	push af                                          ; $602d: $f5
	rra                                              ; $602e: $1f
	dec  d                                           ; $602f: $15
	ld   a, [$4dc2]                                  ; $6030: $fa $c2 $4d
	add  h                                           ; $6033: $84
	and  d                                           ; $6034: $a2
	cpl                                              ; $6035: $2f
	ld   [hl], c                                     ; $6036: $71
	pop  af                                          ; $6037: $f1
	ld   c, a                                        ; $6038: $4f
	xor  e                                           ; $6039: $ab
	inc  [hl]                                        ; $603a: $34
	ret  z                                           ; $603b: $c8

	ld   c, d                                        ; $603c: $4a
	ld   sp, $1ff9                                   ; $603d: $31 $f9 $1f
	inc  de                                          ; $6040: $13
	ei                                               ; $6041: $fb
	or   e                                           ; $6042: $b3
	inc  a                                           ; $6043: $3c
	add  e                                           ; $6044: $83
	and  h                                           ; $6045: $a4
	rra                                              ; $6046: $1f
	and  c                                           ; $6047: $a1
	pop  af                                          ; $6048: $f1
	cpl                                              ; $6049: $2f
	cp   h                                           ; $604a: $bc
	ld   b, e                                        ; $604b: $43
	cp   b                                           ; $604c: $b8
	ld   c, d                                        ; $604d: $4a
	ld   b, c                                        ; $604e: $41
	ld   a, [$211f]                                  ; $604f: $fa $1f $21
	ei                                               ; $6052: $fb
	or   h                                           ; $6053: $b4
	inc  a                                           ; $6054: $3c
	sub  h                                           ; $6055: $94
	sub  h                                           ; $6056: $94
	rra                                              ; $6057: $1f
	pop  bc                                          ; $6058: $c1
	di                                               ; $6059: $f3
	rra                                              ; $605a: $1f
	cp   h                                           ; $605b: $bc
	ld   d, e                                        ; $605c: $53
	ret  z                                           ; $605d: $c8

	ld   c, d                                        ; $605e: $4a
	ld   d, c                                        ; $605f: $51
	rst  $38                                         ; $6060: $ff

jr_0ac_6061:
	ld   e, $51                                      ; $6061: $1e $51
	ei                                               ; $6063: $fb
	or   l                                           ; $6064: $b5
	inc  l                                           ; $6065: $2c
	sub  h                                           ; $6066: $94
	sub  [hl]                                        ; $6067: $96
	rra                                              ; $6068: $1f
	pop  af                                          ; $6069: $f1
	push af                                          ; $606a: $f5
	rra                                              ; $606b: $1f
	call z, $b962                                    ; $606c: $cc $62 $b9
	ld   c, c                                        ; $606f: $49
	ld   h, c                                        ; $6070: $61
	rst  $38                                         ; $6071: $ff
	dec  e                                           ; $6072: $1d
	ld   h, c                                        ; $6073: $61
	db   $fc                                         ; $6074: $fc
	add  $2a                                         ; $6075: $c6 $2a
	and  h                                           ; $6077: $a4
	add  a                                           ; $6078: $87
	rra                                              ; $6079: $1f
	pop  af                                          ; $607a: $f1
	ret  c                                           ; $607b: $d8

	rra                                              ; $607c: $1f
	bit  6, d                                        ; $607d: $cb $72
	cp   c                                           ; $607f: $b9
	ld   c, c                                        ; $6080: $49
	ld   [hl], c                                     ; $6081: $71
	rst  $38                                         ; $6082: $ff
	dec  de                                          ; $6083: $1b

jr_0ac_6084:
	and  c                                           ; $6084: $a1
	db   $fd                                         ; $6085: $fd
	or   a                                           ; $6086: $b7
	ld   a, [de]                                     ; $6087: $1a
	and  h                                           ; $6088: $a4
	ld   a, c                                        ; $6089: $79
	rra                                              ; $608a: $1f
	pop  af                                          ; $608b: $f1
	sbc  e                                           ; $608c: $9b
	rra                                              ; $608d: $1f
	db   $eb                                         ; $608e: $eb
	add  d                                           ; $608f: $82
	xor  c                                           ; $6090: $a9
	ld   c, b                                        ; $6091: $48
	sub  c                                           ; $6092: $91
	rst  $38                                         ; $6093: $ff
	rla                                              ; $6094: $17
	pop  de                                          ; $6095: $d1
	xor  $b8                                         ; $6096: $ee $b8
	add  hl, de                                      ; $6098: $19
	or   l                                           ; $6099: $b5
	ld   l, d                                        ; $609a: $6a
	rra                                              ; $609b: $1f
	pop  af                                          ; $609c: $f1
	ld   l, [hl]                                     ; $609d: $6e
	dec  e                                           ; $609e: $1d
	ld   a, [$8ba2]                                  ; $609f: $fa $a2 $8b
	ld   d, [hl]                                     ; $60a2: $56
	sub  c                                           ; $60a3: $91
	rst  $38                                         ; $60a4: $ff
	dec  d                                           ; $60a5: $15
	pop  de                                          ; $60a6: $d1
	rst  $28                                         ; $60a7: $ef
	xor  c                                           ; $60a8: $a9
	jr   jr_0ac_6061                                 ; $60a9: $18 $b6

	ld   l, d                                        ; $60ab: $6a
	dec  de                                          ; $60ac: $1b
	pop  af                                          ; $60ad: $f1
	ccf                                              ; $60ae: $3f
	dec  de                                          ; $60af: $1b
	ei                                               ; $60b0: $fb
	and  d                                           ; $60b1: $a2
	sbc  e                                           ; $60b2: $9b
	ld   b, [hl]                                     ; $60b3: $46
	or   c                                           ; $60b4: $b1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60b5: $cf
	ld   [de], a                                     ; $60b6: $12
	pop  af                                          ; $60b7: $f1
	cp   a                                           ; $60b8: $bf
	cp   d                                           ; $60b9: $ba
	rla                                              ; $60ba: $17
	add  $5a                                         ; $60bb: $c6 $5a
	ld   a, [de]                                     ; $60bd: $1a
	pop  af                                          ; $60be: $f1
	cpl                                              ; $60bf: $2f
	dec  de                                          ; $60c0: $1b
	ei                                               ; $60c1: $fb
	and  d                                           ; $60c2: $a2
	adc  e                                           ; $60c3: $8b
	ld   d, l                                        ; $60c4: $55
	and  c                                           ; $60c5: $a1
	cp   a                                           ; $60c6: $bf
	inc  de                                          ; $60c7: $13
	pop  af                                          ; $60c8: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60c9: $cf
	xor  d                                           ; $60ca: $aa
	daa                                              ; $60cb: $27
	and  a                                           ; $60cc: $a7
	ld   e, c                                        ; $60cd: $59
	ld   a, [de]                                     ; $60ce: $1a
	pop  af                                          ; $60cf: $f1
	cpl                                              ; $60d0: $2f
	dec  de                                          ; $60d1: $1b
	ld   a, [$9ba2]                                  ; $60d2: $fa $a2 $9b
	ld   d, l                                        ; $60d5: $55
	and  c                                           ; $60d6: $a1
	rst  $28                                         ; $60d7: $ef
	inc  d                                           ; $60d8: $14
	pop  de                                          ; $60d9: $d1
	rst  $28                                         ; $60da: $ef
	cp   c                                           ; $60db: $b9
	jr   jr_0ac_6084                                 ; $60dc: $18 $a6

	ld   l, c                                        ; $60de: $69
	ld   e, $f1                                      ; $60df: $1e $f1
	ld   e, [hl]                                     ; $60e1: $5e
	dec  e                                           ; $60e2: $1d
	db   $eb                                         ; $60e3: $eb
	sub  d                                           ; $60e4: $92
	xor  d                                           ; $60e5: $aa
	ld   b, [hl]                                     ; $60e6: $46
	sub  c                                           ; $60e7: $91
	rst  $38                                         ; $60e8: $ff
	add  hl, de                                      ; $60e9: $19
	and  c                                           ; $60ea: $a1
	db   $fd                                         ; $60eb: $fd
	cp   b                                           ; $60ec: $b8
	add  hl, hl                                      ; $60ed: $29
	or   l                                           ; $60ee: $b5
	ld   l, b                                        ; $60ef: $68
	rra                                              ; $60f0: $1f
	pop  af                                          ; $60f1: $f1
	cp   d                                           ; $60f2: $ba
	rra                                              ; $60f3: $1f
	db   $eb                                         ; $60f4: $eb
	ld   [hl], d                                     ; $60f5: $72
	xor  c                                           ; $60f6: $a9
	scf                                              ; $60f7: $37
	ld   [hl], c                                     ; $60f8: $71
	rst  $38                                         ; $60f9: $ff
	dec  e                                           ; $60fa: $1d
	ld   d, c                                        ; $60fb: $51
	db   $fd                                         ; $60fc: $fd
	push bc                                          ; $60fd: $c5
	ld   a, [hl-]                                    ; $60fe: $3a
	sub  h                                           ; $60ff: $94
	add  [hl]                                        ; $6100: $86
	rra                                              ; $6101: $1f
	pop  de                                          ; $6102: $d1
	di                                               ; $6103: $f3
	rra                                              ; $6104: $1f
	cp   h                                           ; $6105: $bc
	ld   b, h                                        ; $6106: $44
	rst  ToBoot                                         ; $6107: $c7
	ld   a, [hl-]                                    ; $6108: $3a
	ld   b, e                                        ; $6109: $43
	or   $1f                                         ; $610a: $f6 $1f
	dec  d                                           ; $610c: $15
	db   $fc                                         ; $610d: $fc
	jp   nz, $834c                                   ; $610e: $c2 $4c $83

	sub  d                                           ; $6111: $92
	ld   l, a                                        ; $6112: $6f
	ld   de, $8ff1                                   ; $6113: $11 $f1 $8f
	sla  a                                           ; $6116: $cb $27
	or   l                                           ; $6118: $b5
	ld   c, c                                        ; $6119: $49
	dec  e                                           ; $611a: $1d
	pop  af                                          ; $611b: $f1
	ld   c, l                                        ; $611c: $4d
	dec  e                                           ; $611d: $1d

Jump_0ac_611e:
	db   $fc                                         ; $611e: $fc
	and  c                                           ; $611f: $a1
	adc  e                                           ; $6120: $8b
	ld   h, l                                        ; $6121: $65
	sub  c                                           ; $6122: $91
	rst  $38                                         ; $6123: $ff
	ld   a, [de]                                     ; $6124: $1a
	and  c                                           ; $6125: $a1
	cp   $d8                                         ; $6126: $fe $d8
	ld   a, [hl+]                                    ; $6128: $2a
	and  h                                           ; $6129: $a4
	ld   a, b                                        ; $612a: $78
	rra                                              ; $612b: $1f
	pop  af                                          ; $612c: $f1
	sub  $1f                                         ; $612d: $d6 $1f
	call $b962                                       ; $612f: $cd $62 $b9
	ld   b, a                                        ; $6132: $47
	ld   d, c                                        ; $6133: $51
	ld   a, [$111f]                                  ; $6134: $fa $1f $11
	db   $fc                                         ; $6137: $fc
	call nz, $834c                                   ; $6138: $c4 $4c $83
	sub  e                                           ; $613b: $93
	ld   l, a                                        ; $613c: $6f
	ld   de, $7ff1                                   ; $613d: $11 $f1 $7f
	cp   e                                           ; $6140: $bb
	ld   h, $b7                                      ; $6141: $26 $b7
	ld   e, c                                        ; $6143: $59
	dec  de                                          ; $6144: $1b
	pop  af                                          ; $6145: $f1
	rra                                              ; $6146: $1f
	dec  de                                          ; $6147: $1b
	db   $fc                                         ; $6148: $fc
	or   c                                           ; $6149: $b1
	adc  e                                           ; $614a: $8b
	ld   d, l                                        ; $614b: $55
	sub  c                                           ; $614c: $91
	rst  $38                                         ; $614d: $ff
	rla                                              ; $614e: $17
	pop  bc                                          ; $614f: $c1
	cp   $c8                                         ; $6150: $fe $c8
	add  hl, hl                                      ; $6152: $29
	sub  l                                           ; $6153: $95
	ld   [hl], a                                     ; $6154: $77
	rra                                              ; $6155: $1f
	pop  af                                          ; $6156: $f1
	ret  c                                           ; $6157: $d8

	rra                                              ; $6158: $1f
	call $aa62                                       ; $6159: $cd $62 $aa
	ld   b, a                                        ; $615c: $47
	ld   h, c                                        ; $615d: $61
	cp   $1f                                         ; $615e: $fe $1f
	ld   sp, $d5fc                                   ; $6160: $31 $fc $d5
	ld   c, e                                        ; $6163: $4b
	ld   [hl], l                                     ; $6164: $75
	sub  h                                           ; $6165: $94
	cpl                                              ; $6166: $2f
	add  c                                           ; $6167: $81
	pop  af                                          ; $6168: $f1
	ccf                                              ; $6169: $3f
	call $c835                                       ; $616a: $cd $35 $c8
	add  hl, sp                                      ; $616d: $39
	ld   h, $f1                                      ; $616e: $26 $f1
	rra                                              ; $6170: $1f
	rla                                              ; $6171: $17
	ei                                               ; $6172: $fb
	or   d                                           ; $6173: $b2
	ld   a, d                                        ; $6174: $7a
	ld   h, l                                        ; $6175: $65
	and  c                                           ; $6176: $a1
	cp   a                                           ; $6177: $bf
	ld   de, $bff1                                   ; $6178: $11 $f1 $bf
	jp   z, $b518                                    ; $617b: $ca $18 $b5

	ld   e, c                                        ; $617e: $59
	rra                                              ; $617f: $1f
	pop  af                                          ; $6180: $f1
	ld   a, h                                        ; $6181: $7c
	dec  e                                           ; $6182: $1d
	db   $ed                                         ; $6183: $ed
	sub  d                                           ; $6184: $92
	sbc  c                                           ; $6185: $99
	ld   d, a                                        ; $6186: $57
	add  c                                           ; $6187: $81
	rst  $38                                         ; $6188: $ff
	ld   a, [de]                                     ; $6189: $1a
	or   c                                           ; $618a: $b1
	db   $ed                                         ; $618b: $ed
	rst  $10                                         ; $618c: $d7
	dec  hl                                          ; $618d: $2b
	sub  h                                           ; $618e: $94
	ld   [hl], a                                     ; $618f: $77
	rra                                              ; $6190: $1f
	pop  af                                          ; $6191: $f1
	push hl                                          ; $6192: $e5
	rra                                              ; $6193: $1f
	call $a853                                       ; $6194: $cd $53 $a8
	ld   e, c                                        ; $6197: $59
	ld   d, c                                        ; $6198: $51
	cp   $1f                                         ; $6199: $fe $1f
	ld   b, c                                        ; $619b: $41
	ei                                               ; $619c: $fb
	call nc, $943b                                   ; $619d: $d4 $3b $94
	add  l                                           ; $61a0: $85
	rra                                              ; $61a1: $1f
	or   c                                           ; $61a2: $b1
	pop  af                                          ; $61a3: $f1
	cpl                                              ; $61a4: $2f
	call $a744                                       ; $61a5: $cd $44 $a7
	ld   c, c                                        ; $61a8: $49
	inc  [hl]                                        ; $61a9: $34
	db   $f4                                         ; $61aa: $f4
	rra                                              ; $61ab: $1f
	ld   d, $fc                                      ; $61ac: $16 $fc
	jp   nc, Jump_0ac_745b                           ; $61ae: $d2 $5b $74

	and  c                                           ; $61b1: $a1
	ld   a, a                                        ; $61b2: $7f
	ld   de, $8ff1                                   ; $61b3: $11 $f1 $8f
	sla  [hl]                                        ; $61b6: $cb $26
	or   [hl]                                        ; $61b8: $b6
	ld   e, d                                        ; $61b9: $5a
	ld   a, [de]                                     ; $61ba: $1a
	pop  af                                          ; $61bb: $f1
	cpl                                              ; $61bc: $2f
	dec  de                                          ; $61bd: $1b
	db   $ec                                         ; $61be: $ec
	or   c                                           ; $61bf: $b1
	adc  e                                           ; $61c0: $8b
	ld   d, l                                        ; $61c1: $55
	and  c                                           ; $61c2: $a1
	rst  $38                                         ; $61c3: $ff
	rla                                              ; $61c4: $17
	or   c                                           ; $61c5: $b1
	cp   $d9                                         ; $61c6: $fe $d9
	add  hl, de                                      ; $61c8: $19
	and  [hl]                                        ; $61c9: $a6
	ld   l, b                                        ; $61ca: $68
	rra                                              ; $61cb: $1f
	pop  af                                          ; $61cc: $f1
	xor  c                                           ; $61cd: $a9
	rra                                              ; $61ce: $1f
	call z, $aa82                                    ; $61cf: $cc $82 $aa
	ld   [hl], $71                                   ; $61d2: $36 $71
	rst  $38                                         ; $61d4: $ff
	rra                                              ; $61d5: $1f
	ld   b, c                                        ; $61d6: $41
	ei                                               ; $61d7: $fb
	push bc                                          ; $61d8: $c5
	add  hl, sp                                      ; $61d9: $39
	sub  l                                           ; $61da: $95
	add  l                                           ; $61db: $85
	rra                                              ; $61dc: $1f
	and  c                                           ; $61dd: $a1
	pop  af                                          ; $61de: $f1
	cpl                                              ; $61df: $2f
	cp   h                                           ; $61e0: $bc
	ld   b, h                                        ; $61e1: $44
	ret  z                                           ; $61e2: $c8

	add  hl, sp                                      ; $61e3: $39
	dec  [hl]                                        ; $61e4: $35
	ldh  a, [c]                                      ; $61e5: $f2
	rra                                              ; $61e6: $1f
	rla                                              ; $61e7: $17
	ei                                               ; $61e8: $fb
	jp   nz, $845b                                   ; $61e9: $c2 $5b $84

	sub  c                                           ; $61ec: $91
	xor  a                                           ; $61ed: $af
	ld   de, $aff1                                   ; $61ee: $11 $f1 $af
	sla  a                                           ; $61f1: $cb $27
	or   l                                           ; $61f3: $b5
	ld   c, d                                        ; $61f4: $4a
	rra                                              ; $61f5: $1f
	pop  af                                          ; $61f6: $f1
	ld   l, h                                        ; $61f7: $6c
	ld   e, $dc                                      ; $61f8: $1e $dc
	sub  c                                           ; $61fa: $91
	sbc  d                                           ; $61fb: $9a
	ld   d, [hl]                                     ; $61fc: $56
	add  c                                           ; $61fd: $81
	rst  $38                                         ; $61fe: $ff
	dec  de                                          ; $61ff: $1b
	sub  c                                           ; $6200: $91
	db   $fc                                         ; $6201: $fc
	rst  ToBoot                                         ; $6202: $c7
	ld   a, [hl+]                                    ; $6203: $2a
	and  h                                           ; $6204: $a4
	halt                                             ; $6205: $76
	rra                                              ; $6206: $1f
	pop  de                                          ; $6207: $d1
	di                                               ; $6208: $f3
	rra                                              ; $6209: $1f
	call $a953                                       ; $620a: $cd $53 $a9
	ld   c, b                                        ; $620d: $48
	ld   b, e                                        ; $620e: $43
	push af                                          ; $620f: $f5
	rra                                              ; $6210: $1f
	dec  d                                           ; $6211: $15
	ei                                               ; $6212: $fb
	jp   $845b                                       ; $6213: $c3 $5b $84


	and  c                                           ; $6216: $a1
	ld   a, a                                        ; $6217: $7f
	ld   de, $9ff1                                   ; $6218: $11 $f1 $9f
	cp   h                                           ; $621b: $bc
	ld   h, $b7                                      ; $621c: $26 $b7
	ld   c, c                                        ; $621e: $49
	dec  e                                           ; $621f: $1d
	pop  af                                          ; $6220: $f1
	ld   e, l                                        ; $6221: $5d
	inc  e                                           ; $6222: $1c
	db   $ec                                         ; $6223: $ec
	sub  c                                           ; $6224: $91
	sbc  d                                           ; $6225: $9a
	ld   d, [hl]                                     ; $6226: $56
	sub  c                                           ; $6227: $91

jr_0ac_6228:
	rst  $38                                         ; $6228: $ff
	dec  de                                          ; $6229: $1b
	sub  c                                           ; $622a: $91
	db   $fc                                         ; $622b: $fc
	rst  ToBoot                                         ; $622c: $c7
	add  hl, hl                                      ; $622d: $29
	and  l                                           ; $622e: $a5
	halt                                             ; $622f: $76
	rra                                              ; $6230: $1f
	pop  af                                          ; $6231: $f1
	db   $f4                                         ; $6232: $f4
	rra                                              ; $6233: $1f
	cp   l                                           ; $6234: $bd
	ld   d, e                                        ; $6235: $53
	cp   c                                           ; $6236: $b9
	jr   c, jr_0ac_627b                              ; $6237: $38 $42

	or   $1f                                         ; $6239: $f6 $1f
	dec  d                                           ; $623b: $15
	ei                                               ; $623c: $fb
	jp   $845b                                       ; $623d: $c3 $5b $84


	sub  c                                           ; $6240: $91
	adc  a                                           ; $6241: $8f
	ld   de, $aff1                                   ; $6242: $11 $f1 $af
	rl   a                                           ; $6245: $cb $17
	add  $49                                         ; $6247: $c6 $49
	ld   e, $f1                                      ; $6249: $1e $f1
	ld   l, h                                        ; $624b: $6c
	dec  e                                           ; $624c: $1d
	call c, $9ba1                                    ; $624d: $dc $a1 $9b
	ld   d, l                                        ; $6250: $55
	add  c                                           ; $6251: $81
	rst  $38                                         ; $6252: $ff
	inc  e                                           ; $6253: $1c
	add  c                                           ; $6254: $81
	db   $fc                                         ; $6255: $fc
	rst  ToBoot                                         ; $6256: $c7
	dec  hl                                          ; $6257: $2b
	and  e                                           ; $6258: $a3
	add  [hl]                                        ; $6259: $86
	rra                                              ; $625a: $1f
	pop  bc                                          ; $625b: $c1
	ldh  a, [c]                                      ; $625c: $f2
	cpl                                              ; $625d: $2f
	xor  l                                           ; $625e: $ad
	ld   b, e                                        ; $625f: $43
	cp   c                                           ; $6260: $b9
	ld   c, c                                        ; $6261: $49

jr_0ac_6262:
	dec  [hl]                                        ; $6262: $35
	ldh  a, [c]                                      ; $6263: $f2
	rra                                              ; $6264: $1f
	jr   jr_0ac_6262                                 ; $6265: $18 $fb

	or   d                                           ; $6267: $b2
	ld   l, e                                        ; $6268: $6b
	ld   h, e                                        ; $6269: $63
	and  c                                           ; $626a: $a1
	rst  JumpTable                                         ; $626b: $df
	inc  d                                           ; $626c: $14
	pop  de                                          ; $626d: $d1
	db   $dd                                         ; $626e: $dd
	cp   d                                           ; $626f: $ba
	jr   jr_0ac_6228                                 ; $6270: $18 $b6

	ld   e, c                                        ; $6272: $59
	rra                                              ; $6273: $1f
	pop  af                                          ; $6274: $f1
	cp   b                                           ; $6275: $b8
	rra                                              ; $6276: $1f
	call z, $aa72                                    ; $6277: $cc $72 $aa
	scf                                              ; $627a: $37

jr_0ac_627b:
	ld   h, c                                        ; $627b: $61
	ei                                               ; $627c: $fb
	rra                                              ; $627d: $1f
	inc  de                                          ; $627e: $13
	ei                                               ; $627f: $fb
	db   $d3                                         ; $6280: $d3
	ld   c, e                                        ; $6281: $4b
	sub  l                                           ; $6282: $95
	add  e                                           ; $6283: $83
	ld   c, a                                        ; $6284: $4f
	ld   sp, $7ff1                                   ; $6285: $31 $f1 $7f
	xor  h                                           ; $6288: $ac
	daa                                              ; $6289: $27
	add  $3a                                         ; $628a: $c6 $3a
	dec  c                                           ; $628c: $0d
	pop  af                                          ; $628d: $f1
	ld   e, h                                        ; $628e: $5c
	ld   e, $dc                                      ; $628f: $1e $dc
	add  c                                           ; $6291: $81
	sbc  d                                           ; $6292: $9a
	ld   d, [hl]                                     ; $6293: $56
	add  c                                           ; $6294: $81
	rst  $38                                         ; $6295: $ff
	dec  e                                           ; $6296: $1d
	ld   [hl], c                                     ; $6297: $71
	db   $fc                                         ; $6298: $fc
	push de                                          ; $6299: $d5
	dec  hl                                          ; $629a: $2b
	and  e                                           ; $629b: $a3
	halt                                             ; $629c: $76
	rra                                              ; $629d: $1f
	and  c                                           ; $629e: $a1
	pop  af                                          ; $629f: $f1
	ld   c, a                                        ; $62a0: $4f
	cp   h                                           ; $62a1: $bc
	dec  [hl]                                        ; $62a2: $35
	ret  z                                           ; $62a3: $c8

	jr   c, jr_0ac_62cc                              ; $62a4: $38 $26

	pop  af                                          ; $62a6: $f1
	rra                                              ; $62a7: $1f
	add  hl, de                                      ; $62a8: $19
	db   $fc                                         ; $62a9: $fc
	or   c                                           ; $62aa: $b1
	ld   a, h                                        ; $62ab: $7c
	ld   h, h                                        ; $62ac: $64
	and  c                                           ; $62ad: $a1
	rst  JumpTable                                         ; $62ae: $df
	dec  d                                           ; $62af: $15
	pop  bc                                          ; $62b0: $c1
	db   $ed                                         ; $62b1: $ed
	reti                                             ; $62b2: $d9


	add  hl, de                                      ; $62b3: $19
	and  l                                           ; $62b4: $a5
	ld   e, b                                        ; $62b5: $58

jr_0ac_62b6:
	rra                                              ; $62b6: $1f
	pop  af                                          ; $62b7: $f1
	cp   b                                           ; $62b8: $b8
	rra                                              ; $62b9: $1f
	cp   [hl]                                        ; $62ba: $be
	ld   h, d                                        ; $62bb: $62
	xor  d                                           ; $62bc: $aa
	scf                                              ; $62bd: $37
	ld   [hl], c                                     ; $62be: $71
	cp   $1e                                         ; $62bf: $fe $1e
	ld   sp, $d4fb                                   ; $62c1: $31 $fb $d4
	dec  sp                                          ; $62c4: $3b
	sub  h                                           ; $62c5: $94
	ld   [hl], h                                     ; $62c6: $74
	ccf                                              ; $62c7: $3f
	ld   h, c                                        ; $62c8: $61
	pop  af                                          ; $62c9: $f1
	ld   l, a                                        ; $62ca: $6f
	cp   h                                           ; $62cb: $bc

jr_0ac_62cc:
	ld   d, $c7                                      ; $62cc: $16 $c7
	ld   a, [hl-]                                    ; $62ce: $3a
	jr   @-$0d                                       ; $62cf: $18 $f1

	rra                                              ; $62d1: $1f
	dec  de                                          ; $62d2: $1b
	db   $fc                                         ; $62d3: $fc
	or   c                                           ; $62d4: $b1
	ld   a, e                                        ; $62d5: $7b
	ld   [hl], h                                     ; $62d6: $74
	sub  c                                           ; $62d7: $91
	rst  JumpTable                                         ; $62d8: $df
	ld   d, $c1                                      ; $62d9: $16 $c1
	call c, $19d8                                    ; $62db: $dc $d8 $19
	or   h                                           ; $62de: $b4
	ld   e, b                                        ; $62df: $58
	rra                                              ; $62e0: $1f
	pop  af                                          ; $62e1: $f1
	or   a                                           ; $62e2: $b7
	rra                                              ; $62e3: $1f
	call $a962                                       ; $62e4: $cd $62 $a9
	ld   b, a                                        ; $62e7: $47
	ld   h, c                                        ; $62e8: $61
	db   $fc                                         ; $62e9: $fc
	rra                                              ; $62ea: $1f
	ld   [hl+], a                                    ; $62eb: $22
	ei                                               ; $62ec: $fb
	db   $d3                                         ; $62ed: $d3
	ld   c, e                                        ; $62ee: $4b
	sub  e                                           ; $62ef: $93

jr_0ac_62f0:
	sub  h                                           ; $62f0: $94
	ccf                                              ; $62f1: $3f
	ld   d, c                                        ; $62f2: $51
	pop  af                                          ; $62f3: $f1
	ld   l, a                                        ; $62f4: $6f
	cp   l                                           ; $62f5: $bd
	ld   d, $c7                                      ; $62f6: $16 $c7
	add  hl, sp                                      ; $62f8: $39
	add  hl, de                                      ; $62f9: $19
	pop  af                                          ; $62fa: $f1
	cpl                                              ; $62fb: $2f
	inc  e                                           ; $62fc: $1c
	db   $dd                                         ; $62fd: $dd
	and  c                                           ; $62fe: $a1
	sbc  e                                           ; $62ff: $9b
	ld   h, h                                        ; $6300: $64
	sub  c                                           ; $6301: $91
	rst  $38                                         ; $6302: $ff
	jr   jr_0ac_62b6                                 ; $6303: $18 $b1

	db   $ec                                         ; $6305: $ec
	rst  $10                                         ; $6306: $d7
	dec  de                                          ; $6307: $1b
	and  h                                           ; $6308: $a4
	ld   h, a                                        ; $6309: $67
	rra                                              ; $630a: $1f
	pop  af                                          ; $630b: $f1
	db   $e4                                         ; $630c: $e4
	rra                                              ; $630d: $1f
	cp   [hl]                                        ; $630e: $be
	ld   b, e                                        ; $630f: $43
	cp   c                                           ; $6310: $b9
	ld   c, b                                        ; $6311: $48
	ld   b, c                                        ; $6312: $41
	ld   hl, sp+$1f                                  ; $6313: $f8 $1f
	dec  d                                           ; $6315: $15
	ei                                               ; $6316: $fb
	ldh  [c], a                                      ; $6317: $e2
	ld   e, h                                        ; $6318: $5c
	ld   [hl], e                                     ; $6319: $73
	and  d                                           ; $631a: $a2
	sbc  a                                           ; $631b: $9f
	ld   de, $bdf1                                   ; $631c: $11 $f1 $bd
	rr   c                                           ; $631f: $cb $19
	and  [hl]                                        ; $6321: $a6
	ld   e, c                                        ; $6322: $59

jr_0ac_6323:
	rra                                              ; $6323: $1f
	pop  af                                          ; $6324: $f1
	xor  c                                           ; $6325: $a9
	rra                                              ; $6326: $1f
	cp   [hl]                                        ; $6327: $be
	ld   h, d                                        ; $6328: $62
	cp   d                                           ; $6329: $ba
	ld   [hl], $71                                   ; $632a: $36 $71
	ei                                               ; $632c: $fb
	rra                                              ; $632d: $1f
	inc  b                                           ; $632e: $04
	db   $fc                                         ; $632f: $fc
	ldh  [c], a                                      ; $6330: $e2
	ld   e, e                                        ; $6331: $5b
	add  h                                           ; $6332: $84
	add  d                                           ; $6333: $82
	ld   l, a                                        ; $6334: $6f
	ld   de, $9ef1                                   ; $6335: $11 $f1 $9e
	db   $db                                         ; $6338: $db
	jr   jr_0ac_62f0                                 ; $6339: $18 $b5

	add  hl, sp                                      ; $633b: $39
	rra                                              ; $633c: $1f
	pop  af                                          ; $633d: $f1
	sbc  c                                           ; $633e: $99
	rra                                              ; $633f: $1f
	adc  $62                                         ; $6340: $ce $62
	xor  d                                           ; $6342: $aa
	ld   b, [hl]                                     ; $6343: $46
	ld   [hl], c                                     ; $6344: $71
	db   $fd                                         ; $6345: $fd
	rra                                              ; $6346: $1f
	inc  de                                          ; $6347: $13
	db   $fc                                         ; $6348: $fc
	ldh  [c], a                                      ; $6349: $e2
	ld   c, h                                        ; $634a: $4c
	sub  d                                           ; $634b: $92
	add  e                                           ; $634c: $83
	ld   a, a                                        ; $634d: $7f
	ld   de, $aff1                                   ; $634e: $11 $f1 $af
	jp   c, $b618                                    ; $6351: $da $18 $b6

	ld   c, c                                        ; $6354: $49
	rra                                              ; $6355: $1f
	pop  af                                          ; $6356: $f1
	sbc  c                                           ; $6357: $99
	ld   e, $ce                                      ; $6358: $1e $ce
	ld   h, d                                        ; $635a: $62
	xor  e                                           ; $635b: $ab
	ld   [hl], $71                                   ; $635c: $36 $71
	ld   a, [$141f]                                  ; $635e: $fa $1f $14
	db   $fc                                         ; $6361: $fc
	jp   nc, $935b                                   ; $6362: $d2 $5b $93

	sub  d                                           ; $6365: $92
	sbc  a                                           ; $6366: $9f
	ld   [de], a                                     ; $6367: $12
	pop  de                                          ; $6368: $d1
	adc  $d8                                         ; $6369: $ce $d8
	jr   jr_0ac_6323                                 ; $636b: $18 $b6

	add  hl, sp                                      ; $636d: $39
	rra                                              ; $636e: $1f
	pop  af                                          ; $636f: $f1
	add  $1f                                         ; $6370: $c6 $1f
	adc  $53                                         ; $6372: $ce $53
	xor  d                                           ; $6374: $aa
	ld   b, [hl]                                     ; $6375: $46
	ld   h, d                                        ; $6376: $62
	rst  $30                                         ; $6377: $f7
	rra                                              ; $6378: $1f
	dec  d                                           ; $6379: $15
	db   $fd                                         ; $637a: $fd
	pop  bc                                          ; $637b: $c1
	ld   l, e                                        ; $637c: $6b
	add  d                                           ; $637d: $82
	add  d                                           ; $637e: $82
	cp   a                                           ; $637f: $bf
	inc  d                                           ; $6380: $14
	pop  de                                          ; $6381: $d1
	call $18e8                                       ; $6382: $cd $e8 $18
	and  [hl]                                        ; $6385: $a6
	ld   c, b                                        ; $6386: $48
	rra                                              ; $6387: $1f
	pop  af                                          ; $6388: $f1
	push hl                                          ; $6389: $e5
	rra                                              ; $638a: $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $638b: $cf
	inc  [hl]                                        ; $638c: $34
	cp   c                                           ; $638d: $b9
	ld   [hl], $53                                   ; $638e: $36 $53
	push af                                          ; $6390: $f5
	rra                                              ; $6391: $1f
	rla                                              ; $6392: $17
	db   $fc                                         ; $6393: $fc
	pop  bc                                          ; $6394: $c1
	ld   a, e                                        ; $6395: $7b
	sub  e                                           ; $6396: $93
	add  c                                           ; $6397: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6398: $cf
	ld   d, $c1                                      ; $6399: $16 $c1
	db   $dd                                         ; $639b: $dd
	rst  $30                                         ; $639c: $f7
	add  hl, hl                                      ; $639d: $29
	and  [hl]                                        ; $639e: $a6
	ld   c, b                                        ; $639f: $48
	rra                                              ; $63a0: $1f
	pop  af                                          ; $63a1: $f1
	db   $f4                                         ; $63a2: $f4
	rra                                              ; $63a3: $1f
	cp   a                                           ; $63a4: $bf
	inc  [hl]                                        ; $63a5: $34
	xor  d                                           ; $63a6: $aa
	ld   b, [hl]                                     ; $63a7: $46
	ld   b, h                                        ; $63a8: $44
	di                                               ; $63a9: $f3
	rra                                              ; $63aa: $1f
	jr   @-$11                                       ; $63ab: $18 $ed

	or   c                                           ; $63ad: $b1
	ld   a, d                                        ; $63ae: $7a
	add  h                                           ; $63af: $84
	add  c                                           ; $63b0: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $63b1: $cf
	ld   d, $c1                                      ; $63b2: $16 $c1
	call z, $19f8                                    ; $63b4: $cc $f8 $19
	and  [hl]                                        ; $63b7: $a6
	ld   b, a                                        ; $63b8: $47
	rra                                              ; $63b9: $1f
	pop  af                                          ; $63ba: $f1
	db   $e4                                         ; $63bb: $e4
	rra                                              ; $63bc: $1f
	cp   a                                           ; $63bd: $bf
	inc  [hl]                                        ; $63be: $34
	xor  d                                           ; $63bf: $aa
	ld   d, [hl]                                     ; $63c0: $56
	ld   d, e                                        ; $63c1: $53
	or   $1f                                         ; $63c2: $f6 $1f
	ld   d, $ec                                      ; $63c4: $16 $ec
	pop  bc                                          ; $63c6: $c1
	ld   l, d                                        ; $63c7: $6a
	sub  h                                           ; $63c8: $94
	add  c                                           ; $63c9: $81
	sbc  a                                           ; $63ca: $9f
	ld   [de], a                                     ; $63cb: $12
	pop  hl                                          ; $63cc: $e1
	xor  l                                           ; $63cd: $ad
	jp   hl                                          ; $63ce: $e9


	add  hl, de                                      ; $63cf: $19
	and  a                                           ; $63d0: $a7
	ld   c, b                                        ; $63d1: $48
	rra                                              ; $63d2: $1f
	pop  af                                          ; $63d3: $f1
	cp   b                                           ; $63d4: $b8
	ld   e, $bf                                      ; $63d5: $1e $bf
	ld   d, e                                        ; $63d7: $53
	xor  d                                           ; $63d8: $aa
	ld   h, l                                        ; $63d9: $65
	ld   h, c                                        ; $63da: $61
	db   $fd                                         ; $63db: $fd
	rra                                              ; $63dc: $1f
	inc  hl                                          ; $63dd: $23
	db   $ec                                         ; $63de: $ec
	ldh  [c], a                                      ; $63df: $e2
	ld   e, e                                        ; $63e0: $5b
	sub  e                                           ; $63e1: $93
	ld   [hl], e                                     ; $63e2: $73
	ld   a, a                                        ; $63e3: $7f
	ld   de, $aef1                                   ; $63e4: $11 $f1 $ae
	db   $eb                                         ; $63e7: $eb
	rla                                              ; $63e8: $17
	xor  c                                           ; $63e9: $a9
	jr   c, jr_0ac_640b                              ; $63ea: $38 $1f

	pop  af                                          ; $63ec: $f1
	sbc  d                                           ; $63ed: $9a
	ld   e, $ce                                      ; $63ee: $1e $ce
	ld   [hl], d                                     ; $63f0: $72
	xor  d                                           ; $63f1: $aa
	ld   b, l                                        ; $63f2: $45
	ld   [hl], c                                     ; $63f3: $71
	db   $fd                                         ; $63f4: $fd
	rra                                              ; $63f5: $1f
	inc  de                                          ; $63f6: $13
	db   $fd                                         ; $63f7: $fd
	ldh  [c], a                                      ; $63f8: $e2
	ld   e, e                                        ; $63f9: $5b
	sub  e                                           ; $63fa: $93
	ld   [hl], e                                     ; $63fb: $73
	adc  a                                           ; $63fc: $8f
	ld   de, $bef1                                   ; $63fd: $11 $f1 $be
	jp   hl                                          ; $6400: $e9


	add  hl, de                                      ; $6401: $19
	or   [hl]                                        ; $6402: $b6
	jr   c, jr_0ac_6424                              ; $6403: $38 $1f

	pop  af                                          ; $6405: $f1
	push de                                          ; $6406: $d5
	rra                                              ; $6407: $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6408: $cf
	ld   b, h                                        ; $6409: $44
	xor  d                                           ; $640a: $aa

jr_0ac_640b:
	ld   [hl], $46                                   ; $640b: $36 $46
	pop  af                                          ; $640d: $f1
	rra                                              ; $640e: $1f
	add  hl, de                                      ; $640f: $19
	db   $ed                                         ; $6410: $ed
	and  c                                           ; $6411: $a1
	adc  d                                           ; $6412: $8a
	ld   [hl], e                                     ; $6413: $73
	sub  c                                           ; $6414: $91
	rst  $38                                         ; $6415: $ff
	ld   a, [de]                                     ; $6416: $1a
	add  c                                           ; $6417: $81
	db   $fc                                         ; $6418: $fc
	push af                                          ; $6419: $f5
	dec  sp                                          ; $641a: $3b
	sub  h                                           ; $641b: $94
	ld   h, l                                        ; $641c: $65
	ld   c, a                                        ; $641d: $4f
	ld   b, c                                        ; $641e: $41
	pop  af                                          ; $641f: $f1
	adc  [hl]                                        ; $6420: $8e
	db   $db                                         ; $6421: $db
	rla                                              ; $6422: $17
	and  a                                           ; $6423: $a7

jr_0ac_6424:
	add  hl, hl                                      ; $6424: $29
	rra                                              ; $6425: $1f
	pop  af                                          ; $6426: $f1
	xor  b                                           ; $6427: $a8

Call_0ac_6428:
	rra                                              ; $6428: $1f
	rst  JumpTable                                         ; $6429: $df
	ld   d, e                                        ; $642a: $53
	cp   d                                           ; $642b: $ba
	ld   [hl], $64                                   ; $642c: $36 $64
	db   $f4                                         ; $642e: $f4
	rra                                              ; $642f: $1f
	add  hl, de                                      ; $6430: $19
	db   $fd                                         ; $6431: $fd
	or   c                                           ; $6432: $b1
	ld   a, d                                        ; $6433: $7a
	ld   [hl], e                                     ; $6434: $73
	sub  c                                           ; $6435: $91
	rst  $38                                         ; $6436: $ff
	dec  de                                          ; $6437: $1b
	ld   h, c                                        ; $6438: $61
	db   $fd                                         ; $6439: $fd
	db   $e4                                         ; $643a: $e4
	dec  sp                                          ; $643b: $3b
	add  e                                           ; $643c: $83
	ld   [hl], l                                     ; $643d: $75
	ld   l, a                                        ; $643e: $6f
	ld   de, $bff1                                   ; $643f: $11 $f1 $bf
	ld   [$b618], a                                  ; $6442: $ea $18 $b6
	jr   c, jr_0ac_6466                              ; $6445: $38 $1f

	pop  af                                          ; $6447: $f1
	call nc, $cd1f                                   ; $6448: $d4 $1f $cd
	inc  [hl]                                        ; $644b: $34
	cp   c                                           ; $644c: $b9
	daa                                              ; $644d: $27
	ld   b, a                                        ; $644e: $47
	pop  af                                          ; $644f: $f1
	ld   e, $1c                                      ; $6450: $1e $1c
	db   $fd                                         ; $6452: $fd
	add  c                                           ; $6453: $81
	sbc  d                                           ; $6454: $9a
	ld   d, e                                        ; $6455: $53
	sub  c                                           ; $6456: $91
	rst  $38                                         ; $6457: $ff
	dec  e                                           ; $6458: $1d
	ld   sp, $d2fd                                   ; $6459: $31 $fd $d2
	ld   c, d                                        ; $645c: $4a
	sub  d                                           ; $645d: $92
	add  h                                           ; $645e: $84
	adc  a                                           ; $645f: $8f
	ld   de, $cfd1                                   ; $6460: $11 $d1 $cf
	add  sp, $18                                     ; $6463: $e8 $18
	or   l                                           ; $6465: $b5

jr_0ac_6466:
	add  hl, sp                                      ; $6466: $39
	rra                                              ; $6467: $1f
	pop  af                                          ; $6468: $f1
	pop  hl                                          ; $6469: $e1
	cpl                                              ; $646a: $2f
	db   $ed                                         ; $646b: $ed
	dec  d                                           ; $646c: $15
	xor  c                                           ; $646d: $a9
	jr   z, jr_0ac_64ba                              ; $646e: $28 $4a

	pop  af                                          ; $6470: $f1
	inc  a                                           ; $6471: $3c
	dec  e                                           ; $6472: $1d
	cp   $61                                         ; $6473: $fe $61
	xor  e                                           ; $6475: $ab
	ld   d, h                                        ; $6476: $54
	add  c                                           ; $6477: $81
	db   $fd                                         ; $6478: $fd
	rra                                              ; $6479: $1f
	inc  d                                           ; $647a: $14
	db   $fd                                         ; $647b: $fd
	pop  bc                                          ; $647c: $c1
	ld   l, e                                        ; $647d: $6b
	add  d                                           ; $647e: $82
	add  e                                           ; $647f: $83
	rst  JumpTable                                         ; $6480: $df
	dec  d                                           ; $6481: $15
	or   c                                           ; $6482: $b1
	xor  $f5                                         ; $6483: $ee $f5
	ld   a, [hl+]                                    ; $6485: $2a
	and  h                                           ; $6486: $a4
	ld   c, b                                        ; $6487: $48
	cpl                                              ; $6488: $2f
	add  c                                           ; $6489: $81
	pop  af                                          ; $648a: $f1
	ld   l, a                                        ; $648b: $6f
	db   $ec                                         ; $648c: $ec
	rla                                              ; $648d: $17
	or   a                                           ; $648e: $b7
	jr   z, jr_0ac_64c0                              ; $648f: $28 $2f

	pop  af                                          ; $6491: $f1
	sbc  b                                           ; $6492: $98
	rra                                              ; $6493: $1f
	rst  JumpTable                                         ; $6494: $df
	ld   b, d                                        ; $6495: $42
	xor  d                                           ; $6496: $aa
	dec  [hl]                                        ; $6497: $35
	ld   [hl], h                                     ; $6498: $74
	db   $f4                                         ; $6499: $f4
	rra                                              ; $649a: $1f
	add  hl, de                                      ; $649b: $19
	cp   $b1                                         ; $649c: $fe $b1
	sbc  e                                           ; $649e: $9b
	ld   h, d                                        ; $649f: $62
	sub  e                                           ; $64a0: $93
	rst  $38                                         ; $64a1: $ff
	inc  e                                           ; $64a2: $1c
	ld   b, c                                        ; $64a3: $41
	db   $fd                                         ; $64a4: $fd
	ldh  a, [c]                                      ; $64a5: $f2
	ld   c, e                                        ; $64a6: $4b
	add  d                                           ; $64a7: $82
	ld   [hl], l                                     ; $64a8: $75
	cp   a                                           ; $64a9: $bf
	ld   [de], a                                     ; $64aa: $12
	pop  bc                                          ; $64ab: $c1
	xor  $f7                                         ; $64ac: $ee $f7
	ld   a, [de]                                     ; $64ae: $1a
	and  h                                           ; $64af: $a4
	ld   c, b                                        ; $64b0: $48
	ccf                                              ; $64b1: $3f
	and  c                                           ; $64b2: $a1
	pop  af                                          ; $64b3: $f1
	ld   e, a                                        ; $64b4: $5f
	call c, $b617                                    ; $64b5: $dc $17 $b6
	add  hl, hl                                      ; $64b8: $29
	ccf                                              ; $64b9: $3f

jr_0ac_64ba:
	pop  af                                          ; $64ba: $f1
	and  [hl]                                        ; $64bb: $a6
	rra                                              ; $64bc: $1f
	rst  JumpTable                                         ; $64bd: $df
	inc  sp                                          ; $64be: $33
	ret                                              ; $64bf: $c9


jr_0ac_64c0:
	dec  h                                           ; $64c0: $25
	ld   l, d                                        ; $64c1: $6a
	pop  af                                          ; $64c2: $f1
	dec  e                                           ; $64c3: $1d
	dec  e                                           ; $64c4: $1d
	rst  $28                                         ; $64c5: $ef
	ld   [hl], c                                     ; $64c6: $71
	xor  c                                           ; $64c7: $a9
	inc  sp                                          ; $64c8: $33
	add  l                                           ; $64c9: $85
	ld   sp, hl                                      ; $64ca: $f9
	rra                                              ; $64cb: $1f
	rla                                              ; $64cc: $17
	rst  $38                                         ; $64cd: $ff
	pop  bc                                          ; $64ce: $c1
	ld   a, e                                        ; $64cf: $7b
	ld   h, c                                        ; $64d0: $61
	add  h                                           ; $64d1: $84
	rst  $38                                         ; $64d2: $ff
	dec  e                                           ; $64d3: $1d
	ld   b, c                                        ; $64d4: $41
	db   $fd                                         ; $64d5: $fd
	pop  af                                          ; $64d6: $f1
	dec  a                                           ; $64d7: $3d
	add  c                                           ; $64d8: $81
	ld   h, [hl]                                     ; $64d9: $66
	rst  JumpTable                                         ; $64da: $df
	inc  d                                           ; $64db: $14
	or   c                                           ; $64dc: $b1
	cp   $f6                                         ; $64dd: $fe $f6
	inc  e                                           ; $64df: $1c
	sub  e                                           ; $64e0: $93
	ld   b, a                                        ; $64e1: $47
	adc  a                                           ; $64e2: $8f
	ld   hl, $aff1                                   ; $64e3: $21 $f1 $af
	ei                                               ; $64e6: $fb
	add  hl, de                                      ; $64e7: $19
	or   l                                           ; $64e8: $b5
	jr   jr_0ac_654a                                 ; $64e9: $18 $5f

	pop  de                                          ; $64eb: $d1
	pop  af                                          ; $64ec: $f1
	ccf                                              ; $64ed: $3f
	db   $ed                                         ; $64ee: $ed
	ld   d, $b6                                      ; $64ef: $16 $b6
	rla                                              ; $64f1: $17
	ld   e, a                                        ; $64f2: $5f
	pop  af                                          ; $64f3: $f1
	jp   $ef1f                                       ; $64f4: $c3 $1f $ef


	inc  de                                          ; $64f7: $13
	ret                                              ; $64f8: $c9


	dec  d                                           ; $64f9: $15
	ld   e, a                                        ; $64fa: $5f
	pop  af                                          ; $64fb: $f1
	ld   a, c                                        ; $64fc: $79
	rra                                              ; $64fd: $1f
	rst  $38                                         ; $64fe: $ff
	ld   sp, $24c8                                   ; $64ff: $31 $c8 $24
	ld   l, l                                        ; $6502: $6d
	pop  af                                          ; $6503: $f1
	inc  l                                           ; $6504: $2c
	ld   e, $ff                                      ; $6505: $1e $ff
	ld   h, c                                        ; $6507: $61
	xor  d                                           ; $6508: $aa
	ld   b, e                                        ; $6509: $43
	ld   [hl], a                                     ; $650a: $77
	di                                               ; $650b: $f3
	rra                                              ; $650c: $1f
	jr   @+$01                                       ; $650d: $18 $ff

	and  c                                           ; $650f: $a1
	sbc  d                                           ; $6510: $9a
	ld   b, d                                        ; $6511: $42
	ld   [hl], a                                     ; $6512: $77
	ld   hl, sp+$1f                                  ; $6513: $f8 $1f
	dec  d                                           ; $6515: $15
	rst  $38                                         ; $6516: $ff

jr_0ac_6517:
	pop  bc                                          ; $6517: $c1
	ld   a, e                                        ; $6518: $7b
	ld   [hl], c                                     ; $6519: $71
	ld   h, l                                        ; $651a: $65
	rst  $38                                         ; $651b: $ff
	rra                                              ; $651c: $1f
	ld   de, $f1ff                                   ; $651d: $11 $ff $f1
	ld   l, e                                        ; $6520: $6b
	ld   h, d                                        ; $6521: $62
	ld   h, l                                        ; $6522: $65
	rst  $38                                         ; $6523: $ff
	ld   a, [de]                                     ; $6524: $1a
	ld   d, c                                        ; $6525: $51
	rst  $38                                         ; $6526: $ff
	pop  af                                          ; $6527: $f1
	inc  a                                           ; $6528: $3c
	ld   [hl], d                                     ; $6529: $72
	ld   d, [hl]                                     ; $652a: $56
	rst  $38                                         ; $652b: $ff
	rla                                              ; $652c: $17
	and  c                                           ; $652d: $a1
	cp   $f3                                         ; $652e: $fe $f3
	inc  e                                           ; $6530: $1c
	sub  d                                           ; $6531: $92
	ld   b, [hl]                                     ; $6532: $46
	rst  $28                                         ; $6533: $ef
	inc  d                                           ; $6534: $14
	or   c                                           ; $6535: $b1
	rst  JumpTable                                         ; $6536: $df
	push af                                          ; $6537: $f5
	dec  de                                          ; $6538: $1b
	add  d                                           ; $6539: $82
	ld   [hl], $df                                   ; $653a: $36 $df
	ld   de, $cfd1                                   ; $653c: $11 $d1 $cf
	rst  $30                                         ; $653f: $f7
	ld   a, [de]                                     ; $6540: $1a
	sub  e                                           ; $6541: $93
	scf                                              ; $6542: $37
	xor  a                                           ; $6543: $af
	ld   de, $aff1                                   ; $6544: $11 $f1 $af
	ld   a, [$a419]                                  ; $6547: $fa $19 $a4

jr_0ac_654a:
	daa                                              ; $654a: $27
	xor  a                                           ; $654b: $af
	ld   hl, $9ff1                                   ; $654c: $21 $f1 $9f
	ei                                               ; $654f: $fb
	ld   a, [de]                                     ; $6550: $1a
	sub  l                                           ; $6551: $95
	scf                                              ; $6552: $37
	ld   a, a                                        ; $6553: $7f
	ld   h, c                                        ; $6554: $61
	pop  af                                          ; $6555: $f1
	ld   a, a                                        ; $6556: $7f

jr_0ac_6557:
	db   $fc                                         ; $6557: $fc
	add  hl, de                                      ; $6558: $19
	and  l                                           ; $6559: $a5
	ld   d, $7f                                      ; $655a: $16 $7f
	or   c                                           ; $655c: $b1
	pop  af                                          ; $655d: $f1
	ld   c, a                                        ; $655e: $4f
	rst  $38                                         ; $655f: $ff
	jr   jr_0ac_6517                                 ; $6560: $18 $b5

	dec  d                                           ; $6562: $15
	sbc  a                                           ; $6563: $9f
	and  c                                           ; $6564: $a1
	pop  af                                          ; $6565: $f1
	ld   c, a                                        ; $6566: $4f
	cp   $18                                         ; $6567: $fe $18
	sub  h                                           ; $6569: $94
	dec  h                                           ; $656a: $25
	xor  a                                           ; $656b: $af
	sub  c                                           ; $656c: $91
	pop  hl                                          ; $656d: $e1
	ld   l, a                                        ; $656e: $6f
	cp   $18                                         ; $656f: $fe $18
	and  l                                           ; $6571: $a5
	ld   h, $7f                                      ; $6572: $26 $7f
	or   c                                           ; $6574: $b1
	pop  af                                          ; $6575: $f1
	ld   e, a                                        ; $6576: $5f
	cp   $19                                         ; $6577: $fe $19
	and  h                                           ; $6579: $a4
	ld   h, $8f                                      ; $657a: $26 $8f
	or   c                                           ; $657c: $b1
	pop  af                                          ; $657d: $f1
	ld   e, a                                        ; $657e: $5f
	cp   $17                                         ; $657f: $fe $17
	and  [hl]                                        ; $6581: $a6
	ld   h, $6f                                      ; $6582: $26 $6f
	pop  de                                          ; $6584: $d1
	pop  af                                          ; $6585: $f1
	ccf                                              ; $6586: $3f
	rst  $38                                         ; $6587: $ff

Jump_0ac_6588:
	jr   @-$6a                                       ; $6588: $18 $94

	ld   [hl], $7f                                   ; $658a: $36 $7f
	pop  de                                          ; $658c: $d1
	pop  hl                                          ; $658d: $e1
	ccf                                              ; $658e: $3f
	rst  $38                                         ; $658f: $ff
	rla                                              ; $6590: $17
	sub  h                                           ; $6591: $94
	ld   [hl], $8f                                   ; $6592: $36 $8f
	pop  bc                                          ; $6594: $c1
	pop  af                                          ; $6595: $f1
	ld   c, a                                        ; $6596: $4f
	rst  $38                                         ; $6597: $ff
	jr   @-$5a                                       ; $6598: $18 $a4

	ld   h, $8f                                      ; $659a: $26 $8f
	and  c                                           ; $659c: $a1
	pop  af                                          ; $659d: $f1
	ld   e, a                                        ; $659e: $5f
	cp   $19                                         ; $659f: $fe $19
	sub  h                                           ; $65a1: $94
	ld   h, $8f                                      ; $65a2: $26 $8f
	and  c                                           ; $65a4: $a1
	pop  af                                          ; $65a5: $f1
	ld   e, a                                        ; $65a6: $5f
	rst  $38                                         ; $65a7: $ff
	add  hl, de                                      ; $65a8: $19
	sub  h                                           ; $65a9: $94
	ld   [hl], $8f                                   ; $65aa: $36 $8f
	sub  c                                           ; $65ac: $91
	pop  af                                          ; $65ad: $f1
	ld   l, a                                        ; $65ae: $6f
	rst  $38                                         ; $65af: $ff
	jr   jr_0ac_6557                                 ; $65b0: $18 $a5

	ld   d, $8f                                      ; $65b2: $16 $8f
	and  c                                           ; $65b4: $a1
	pop  af                                          ; $65b5: $f1
	ld   e, a                                        ; $65b6: $5f
	cp   $19                                         ; $65b7: $fe $19
	sub  e                                           ; $65b9: $93
	ld   h, $9f                                      ; $65ba: $26 $9f
	add  c                                           ; $65bc: $81
	pop  af                                          ; $65bd: $f1
	ld   l, a                                        ; $65be: $6f
	cp   $1a                                         ; $65bf: $fe $1a
	sub  h                                           ; $65c1: $94
	ld   h, $9f                                      ; $65c2: $26 $9f
	ld   [hl], c                                     ; $65c4: $71
	pop  af                                          ; $65c5: $f1
	ld   l, a                                        ; $65c6: $6f
	db   $fd                                         ; $65c7: $fd
	ld   a, [de]                                     ; $65c8: $1a
	sub  e                                           ; $65c9: $93
	ld   h, $bf                                      ; $65ca: $26 $bf
	ld   b, c                                        ; $65cc: $41
	pop  af                                          ; $65cd: $f1
	sbc  a                                           ; $65ce: $9f
	db   $fc                                         ; $65cf: $fc
	dec  de                                          ; $65d0: $1b
	add  h                                           ; $65d1: $84
	ld   [hl], $8f                                   ; $65d2: $36 $8f
	ld   h, c                                        ; $65d4: $61
	pop  af                                          ; $65d5: $f1
	adc  [hl]                                        ; $65d6: $8e
	db   $fd                                         ; $65d7: $fd
	dec  de                                          ; $65d8: $1b
	sub  e                                           ; $65d9: $93
	ld   h, $af                                      ; $65da: $26 $af
	ld   d, c                                        ; $65dc: $51
	pop  af                                          ; $65dd: $f1
	adc  a                                           ; $65de: $8f
	db   $fc                                         ; $65df: $fc
	dec  de                                          ; $65e0: $1b
	add  h                                           ; $65e1: $84
	ld   h, $9f                                      ; $65e2: $26 $9f
	ld   d, c                                        ; $65e4: $51
	pop  af                                          ; $65e5: $f1
	adc  a                                           ; $65e6: $8f
	db   $fc                                         ; $65e7: $fc
	ld   a, [de]                                     ; $65e8: $1a
	add  e                                           ; $65e9: $83
	daa                                              ; $65ea: $27
	xor  a                                           ; $65eb: $af
	ld   b, c                                        ; $65ec: $41
	pop  af                                          ; $65ed: $f1
	sbc  a                                           ; $65ee: $9f
	db   $fc                                         ; $65ef: $fc
	ld   a, [de]                                     ; $65f0: $1a
	sub  h                                           ; $65f1: $94
	daa                                              ; $65f2: $27
	sbc  a                                           ; $65f3: $9f
	ld   h, c                                        ; $65f4: $61
	pop  af                                          ; $65f5: $f1
	ld   a, a                                        ; $65f6: $7f
	db   $fc                                         ; $65f7: $fc
	ld   a, [de]                                     ; $65f8: $1a
	sub  h                                           ; $65f9: $94
	ld   h, $9f                                      ; $65fa: $26 $9f
	ld   d, c                                        ; $65fc: $51
	pop  af                                          ; $65fd: $f1
	adc  a                                           ; $65fe: $8f
	db   $fc                                         ; $65ff: $fc
	ld   a, [de]                                     ; $6600: $1a
	sub  l                                           ; $6601: $95
	ld   h, $7f                                      ; $6602: $26 $7f
	add  c                                           ; $6604: $81
	pop  af                                          ; $6605: $f1
	ld   l, a                                        ; $6606: $6f
	cp   $19                                         ; $6607: $fe $19
	and  l                                           ; $6609: $a5
	ld   h, $7f                                      ; $660a: $26 $7f
	pop  bc                                          ; $660c: $c1
	pop  af                                          ; $660d: $f1
	ld   c, a                                        ; $660e: $4f
	cp   $17                                         ; $660f: $fe $17
	and  [hl]                                        ; $6611: $a6
	ld   d, $6f                                      ; $6612: $16 $6f
	pop  af                                          ; $6614: $f1
	ldh  a, [c]                                      ; $6615: $f2
	rra                                              ; $6616: $1f
	rst  $38                                         ; $6617: $ff
	ld   d, $a6                                      ; $6618: $16 $a6
	ld   h, $5f                                      ; $661a: $26 $5f
	pop  af                                          ; $661c: $f1
	push bc                                          ; $661d: $c5
	rra                                              ; $661e: $1f
	rst  $38                                         ; $661f: $ff
	inc  b                                           ; $6620: $04
	cp   b                                           ; $6621: $b8
	dec  d                                           ; $6622: $15
	ld   l, a                                        ; $6623: $6f
	pop  af                                          ; $6624: $f1
	and  a                                           ; $6625: $a7
	rra                                              ; $6626: $1f
	rst  $28                                         ; $6627: $ef
	ld   [hl+], a                                    ; $6628: $22
	cp   b                                           ; $6629: $b8
	inc  h                                           ; $662a: $24
	ld   l, a                                        ; $662b: $6f
	pop  af                                          ; $662c: $f1
	ld   l, e                                        ; $662d: $6b
	rra                                              ; $662e: $1f
	rst  $28                                         ; $662f: $ef
	ld   b, c                                        ; $6630: $41
	xor  c                                           ; $6631: $a9
	inc  sp                                          ; $6632: $33
	ld   l, h                                        ; $6633: $6c
	pop  af                                          ; $6634: $f1
	ld   e, $1c                                      ; $6635: $1e $1c
	rst  $28                                         ; $6637: $ef
	ld   [hl], c                                     ; $6638: $71
	xor  d                                           ; $6639: $aa
	ld   d, d                                        ; $663a: $52
	halt                                             ; $663b: $76
	or   $1f                                         ; $663c: $f6 $1f
	ld   d, $ff                                      ; $663e: $16 $ff
	pop  de                                          ; $6640: $d1
	adc  e                                           ; $6641: $8b
	ld   h, c                                        ; $6642: $61
	ld   [hl], l                                     ; $6643: $75
	rst  $38                                         ; $6644: $ff
	rra                                              ; $6645: $1f
	ld   de, $f1ff                                   ; $6646: $11 $ff $f1
	ld   e, e                                        ; $6649: $5b
	ld   [hl], c                                     ; $664a: $71
	ld   h, l                                        ; $664b: $65
	rst  $38                                         ; $664c: $ff
	ld   a, [de]                                     ; $664d: $1a
	ld   [hl], c                                     ; $664e: $71
	rst  $38                                         ; $664f: $ff
	pop  af                                          ; $6650: $f1
	dec  hl                                          ; $6651: $2b
	sub  e                                           ; $6652: $93

jr_0ac_6653:
	ld   b, [hl]                                     ; $6653: $46
	adc  a                                           ; $6654: $8f
	ld   de, $bfe1                                   ; $6655: $11 $e1 $bf
	rst  $30                                         ; $6658: $f7
	ld   a, [de]                                     ; $6659: $1a
	or   l                                           ; $665a: $b5

Jump_0ac_665b:
	jr   z, jr_0ac_66ac                              ; $665b: $28 $4f

	or   c                                           ; $665d: $b1
	pop  af                                          ; $665e: $f1
	ld   c, a                                        ; $665f: $4f
	cp   $17                                         ; $6660: $fe $17
	and  a                                           ; $6662: $a7
	jr   z, jr_0ac_66b4                              ; $6663: $28 $4f

	pop  af                                          ; $6665: $f1
	xor  b                                           ; $6666: $a8
	rra                                              ; $6667: $1f
	rst  $28                                         ; $6668: $ef
	ld   [hl+], a                                    ; $6669: $22
	cp   d                                           ; $666a: $ba
	inc  h                                           ; $666b: $24
	halt                                             ; $666c: $76
	pop  af                                          ; $666d: $f1
	rra                                              ; $666e: $1f
	dec  de                                          ; $666f: $1b
	rst  $38                                         ; $6670: $ff
	sub  c                                           ; $6671: $91
	xor  e                                           ; $6672: $ab
	ld   d, d                                        ; $6673: $52
	add  e                                           ; $6674: $83
	cp   $1f                                         ; $6675: $fe $1f
	inc  de                                          ; $6677: $13
	cp   $e1                                         ; $6678: $fe $e1
	ld   e, e                                        ; $667a: $5b
	and  d                                           ; $667b: $a2
	add  e                                           ; $667c: $83
	xor  a                                           ; $667d: $af
	ld   d, $c1                                      ; $667e: $16 $c1
	db   $ed                                         ; $6680: $ed
	push af                                          ; $6681: $f5
	inc  e                                           ; $6682: $1c
	and  e                                           ; $6683: $a3
	ld   b, a                                        ; $6684: $47
	ld   c, a                                        ; $6685: $4f
	ld   h, c                                        ; $6686: $61
	pop  af                                          ; $6687: $f1
	adc  a                                           ; $6688: $8f
	ei                                               ; $6689: $fb
	jr   jr_0ac_6653                                 ; $668a: $18 $c7

	jr   z, jr_0ac_66bd                              ; $668c: $28 $2f

	pop  af                                          ; $668e: $f1
	call nz, $ef1f                                   ; $668f: $c4 $1f $ef
	inc  d                                           ; $6692: $14
	ret                                              ; $6693: $c9


	ld   h, $58                                      ; $6694: $26 $58
	pop  af                                          ; $6696: $f1
	dec  e                                           ; $6697: $1d
	inc  e                                           ; $6698: $1c
	rst  $28                                         ; $6699: $ef
	ld   [hl], c                                     ; $669a: $71
	cp   d                                           ; $669b: $ba
	ld   d, e                                        ; $669c: $53
	add  e                                           ; $669d: $83
	ei                                               ; $669e: $fb
	rra                                              ; $669f: $1f
	dec  d                                           ; $66a0: $15
	rst  $38                                         ; $66a1: $ff
	pop  de                                          ; $66a2: $d1
	ld   a, h                                        ; $66a3: $7c
	ld   [hl], c                                     ; $66a4: $71
	ld   [hl], h                                     ; $66a5: $74
	rst  $38                                         ; $66a6: $ff
	dec  de                                          ; $66a7: $1b
	ld   h, c                                        ; $66a8: $61
	cp   $f1                                         ; $66a9: $fe $f1
	inc  a                                           ; $66ab: $3c

jr_0ac_66ac:
	sub  c                                           ; $66ac: $91
	ld   d, a                                        ; $66ad: $57
	adc  a                                           ; $66ae: $8f
	ld   de, $cee1                                   ; $66af: $11 $e1 $ce
	rst  $30                                         ; $66b2: $f7
	dec  de                                          ; $66b3: $1b

jr_0ac_66b4:
	or   l                                           ; $66b4: $b5
	jr   z, jr_0ac_66f6                              ; $66b5: $28 $3f

	pop  bc                                          ; $66b7: $c1
	pop  af                                          ; $66b8: $f1
	ld   c, a                                        ; $66b9: $4f
	db   $ed                                         ; $66ba: $ed
	rla                                              ; $66bb: $17
	rst  $10                                         ; $66bc: $d7

jr_0ac_66bd:
	jr   jr_0ac_670e                                 ; $66bd: $18 $4f

	pop  af                                          ; $66bf: $f1
	and  [hl]                                        ; $66c0: $a6
	rra                                              ; $66c1: $1f
	rst  $28                                         ; $66c2: $ef
	ld   [hl+], a                                    ; $66c3: $22
	ret                                              ; $66c4: $c9


	dec  h                                           ; $66c5: $25
	ld   h, a                                        ; $66c6: $67
	pop  af                                          ; $66c7: $f1
	ld   e, $1c                                      ; $66c8: $1e $1c
	rst  $38                                         ; $66ca: $ff
	add  c                                           ; $66cb: $81
	xor  e                                           ; $66cc: $ab
	ld   b, d                                        ; $66cd: $42
	sub  h                                           ; $66ce: $94
	db   $fc                                         ; $66cf: $fc
	rra                                              ; $66d0: $1f
	dec  d                                           ; $66d1: $15
	rst  $38                                         ; $66d2: $ff
	pop  hl                                          ; $66d3: $e1
	ld   a, h                                        ; $66d4: $7c
	ld   h, c                                        ; $66d5: $61
	ld   [hl], l                                     ; $66d6: $75
	rst  $38                                         ; $66d7: $ff
	inc  e                                           ; $66d8: $1c
	ld   sp, $f1ff                                   ; $66d9: $31 $ff $f1
	ld   c, h                                        ; $66dc: $4c
	add  c                                           ; $66dd: $81
	ld   d, [hl]                                     ; $66de: $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $66df: $cf
	dec  d                                           ; $66e0: $15
	or   c                                           ; $66e1: $b1
	cp   $f4                                         ; $66e2: $fe $f4
	dec  de                                          ; $66e4: $1b
	and  e                                           ; $66e5: $a3
	ld   b, a                                        ; $66e6: $47
	ld   l, a                                        ; $66e7: $6f
	ld   sp, $9ff1                                   ; $66e8: $31 $f1 $9f
	ld   sp, hl                                      ; $66eb: $f9
	add  hl, de                                      ; $66ec: $19
	add  $18                                         ; $66ed: $c6 $18
	ccf                                              ; $66ef: $3f
	pop  af                                          ; $66f0: $f1
	ldh  [c], a                                      ; $66f1: $e2
	rra                                              ; $66f2: $1f
	rst  $28                                         ; $66f3: $ef
	dec  d                                           ; $66f4: $15
	rst  ToBoot                                         ; $66f5: $c7

jr_0ac_66f6:
	ld   d, $5f                                      ; $66f6: $16 $5f
	pop  af                                          ; $66f8: $f1
	adc  b                                           ; $66f9: $88
	rra                                              ; $66fa: $1f
	rst  $38                                         ; $66fb: $ff
	ld   [hl+], a                                    ; $66fc: $22
	cp   c                                           ; $66fd: $b9
	inc  h                                           ; $66fe: $24
	ld   a, d                                        ; $66ff: $7a
	pop  af                                          ; $6700: $f1
	ld   e, $1c                                      ; $6701: $1e $1c
	rst  $38                                         ; $6703: $ff
	ld   h, c                                        ; $6704: $61
	cp   e                                           ; $6705: $bb
	ld   b, c                                        ; $6706: $41
	add  [hl]                                        ; $6707: $86
	or   $1f                                         ; $6708: $f6 $1f
	rla                                              ; $670a: $17
	rst  $38                                         ; $670b: $ff
	and  c                                           ; $670c: $a1
	xor  e                                           ; $670d: $ab

jr_0ac_670e:
	ld   d, c                                        ; $670e: $51
	halt                                             ; $670f: $76
	db   $fc                                         ; $6710: $fc
	rra                                              ; $6711: $1f
	inc  de                                          ; $6712: $13
	rst  $38                                         ; $6713: $ff
	pop  hl                                          ; $6714: $e1
	ld   a, e                                        ; $6715: $7b
	ld   h, c                                        ; $6716: $61
	ld   h, [hl]                                     ; $6717: $66
	rst  $38                                         ; $6718: $ff
	dec  e                                           ; $6719: $1d
	ld   sp, $f1ff                                   ; $671a: $31 $ff $f1
	ld   e, l                                        ; $671d: $5d
	ld   [hl], c                                     ; $671e: $71
	ld   d, [hl]                                     ; $671f: $56
	rst  $38                                         ; $6720: $ff
	ld   a, [de]                                     ; $6721: $1a
	ld   h, c                                        ; $6722: $61
	rst  $38                                         ; $6723: $ff
	pop  af                                          ; $6724: $f1
	inc  a                                           ; $6725: $3c
	ld   [hl], c                                     ; $6726: $71
	ld   b, a                                        ; $6727: $47
	rst  $38                                         ; $6728: $ff
	add  hl, de                                      ; $6729: $19
	ld   [hl], c                                     ; $672a: $71
	rst  $38                                         ; $672b: $ff
	pop  af                                          ; $672c: $f1
	dec  l                                           ; $672d: $2d
	sub  d                                           ; $672e: $92
	ld   b, [hl]                                     ; $672f: $46
	rst  $38                                         ; $6730: $ff
	ld   d, $a1                                      ; $6731: $16 $a1
	rst  $28                                         ; $6733: $ef
	ldh  a, [c]                                      ; $6734: $f2
	dec  e                                           ; $6735: $1d
	add  d                                           ; $6736: $82
	ld   b, [hl]                                     ; $6737: $46
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6738: $cf
	ld   [de], a                                     ; $6739: $12
	pop  de                                          ; $673a: $d1
	adc  $f5                                         ; $673b: $ce $f5
	inc  e                                           ; $673d: $1c
	or   e                                           ; $673e: $b3
	daa                                              ; $673f: $27
	xor  a                                           ; $6740: $af
	ld   de, $aff1                                   ; $6741: $11 $f1 $af
	ld   hl, sp+$1b                                  ; $6744: $f8 $1b
	and  e                                           ; $6746: $a3
	daa                                              ; $6747: $27
	cp   a                                           ; $6748: $bf
	ld   de, $9ff1                                   ; $6749: $11 $f1 $9f
	ld   sp, hl                                      ; $674c: $f9
	ld   a, [de]                                     ; $674d: $1a
	or   l                                           ; $674e: $b5
	rla                                              ; $674f: $17
	ld   a, a                                        ; $6750: $7f
	ld   h, c                                        ; $6751: $61
	pop  af                                          ; $6752: $f1
	ld   a, a                                        ; $6753: $7f
	db   $fc                                         ; $6754: $fc
	ld   a, [de]                                     ; $6755: $1a
	or   h                                           ; $6756: $b4
	ld   b, $af                                      ; $6757: $06 $af
	ld   [hl], c                                     ; $6759: $71
	pop  af                                          ; $675a: $f1
	ld   l, a                                        ; $675b: $6f
	db   $fc                                         ; $675c: $fc
	add  hl, de                                      ; $675d: $19
	or   [hl]                                        ; $675e: $b6
	ld   d, $7f                                      ; $675f: $16 $7f
	or   c                                           ; $6761: $b1
	pop  af                                          ; $6762: $f1
	ld   e, [hl]                                     ; $6763: $5e
	cp   $18                                         ; $6764: $fe $18
	or   [hl]                                        ; $6766: $b6
	ld   d, $7f                                      ; $6767: $16 $7f
	pop  bc                                          ; $6769: $c1
	pop  af                                          ; $676a: $f1
	ld   c, [hl]                                     ; $676b: $4e
	rst  $38                                         ; $676c: $ff
	rla                                              ; $676d: $17
	or   a                                           ; $676e: $b7
	dec  d                                           ; $676f: $15
	ld   l, a                                        ; $6770: $6f
	pop  af                                          ; $6771: $f1
	ldh  [c], a                                      ; $6772: $e2
	ld   l, $ff                                      ; $6773: $2e $ff
	ld   d, $c6                                      ; $6775: $16 $c6
	dec  d                                           ; $6777: $15
	ld   l, a                                        ; $6778: $6f
	pop  af                                          ; $6779: $f1
	db   $d3                                         ; $677a: $d3
	ld   e, $ff                                      ; $677b: $1e $ff
	dec  d                                           ; $677d: $15
	cp   c                                           ; $677e: $b9
	dec  h                                           ; $677f: $25
	ld   e, a                                        ; $6780: $5f
	pop  af                                          ; $6781: $f1
	and  a                                           ; $6782: $a7
	ld   e, $ef                                      ; $6783: $1e $ef
	inc  de                                          ; $6785: $13
	rst  ToBoot                                         ; $6786: $c7
	inc  h                                           ; $6787: $24
	ld   l, a                                        ; $6788: $6f
	pop  af                                          ; $6789: $f1
	ld   a, b                                        ; $678a: $78
	ld   e, $ff                                      ; $678b: $1e $ff
	ld   bc, $23d8                                   ; $678d: $01 $d8 $23
	ld   l, a                                        ; $6790: $6f
	pop  af                                          ; $6791: $f1
	ld   e, e                                        ; $6792: $5b
	ld   e, $ff                                      ; $6793: $1e $ff

jr_0ac_6795:
	ld   hl, $33c9                                   ; $6795: $21 $c9 $33
	ld   l, h                                        ; $6798: $6c
	pop  af                                          ; $6799: $f1
	dec  a                                           ; $679a: $3d
	dec  e                                           ; $679b: $1d
	rst  JumpTable                                         ; $679c: $df
	ld   b, c                                        ; $679d: $41
	ret                                              ; $679e: $c9


	ld   [hl-], a                                    ; $679f: $32
	ld   a, e                                        ; $67a0: $7b
	pop  af                                          ; $67a1: $f1
	rra                                              ; $67a2: $1f
	dec  de                                          ; $67a3: $1b
	rst  JumpTable                                         ; $67a4: $df
	ld   h, c                                        ; $67a5: $61
	cp   c                                           ; $67a6: $b9
	ld   b, e                                        ; $67a7: $43

Call_0ac_67a8:
	ld   l, c                                        ; $67a8: $69
	ldh  a, [c]                                      ; $67a9: $f2
	rra                                              ; $67aa: $1f

Jump_0ac_67ab:
	add  hl, de                                      ; $67ab: $19
	rst  $28                                         ; $67ac: $ef
	and  c                                           ; $67ad: $a1
	xor  e                                           ; $67ae: $ab
	ld   d, d                                        ; $67af: $52
	ld   [hl], a                                     ; $67b0: $77
	or   $1f                                         ; $67b1: $f6 $1f
	rla                                              ; $67b3: $17
	rst  $28                                         ; $67b4: $ef
	or   c                                           ; $67b5: $b1
	xor  d                                           ; $67b6: $aa
	ld   d, c                                        ; $67b7: $51
	ld   [hl], l                                     ; $67b8: $75
	db   $fc                                         ; $67b9: $fc
	rra                                              ; $67ba: $1f
	inc  d                                           ; $67bb: $14
	rst  $28                                         ; $67bc: $ef
	pop  hl                                          ; $67bd: $e1
	adc  h                                           ; $67be: $8c
	ld   h, c                                        ; $67bf: $61
	ld   h, [hl]                                     ; $67c0: $66
	cp   $1e                                         ; $67c1: $fe $1e
	ld   [de], a                                     ; $67c3: $12
	rst  $38                                         ; $67c4: $ff
	pop  af                                          ; $67c5: $f1
	ld   a, e                                        ; $67c6: $7b
	ld   h, c                                        ; $67c7: $61
	ld   h, a                                        ; $67c8: $67
	rst  $38                                         ; $67c9: $ff
	ld   e, $22                                      ; $67ca: $1e $22
	rst  $38                                         ; $67cc: $ff
	pop  af                                          ; $67cd: $f1
	ld   l, e                                        ; $67ce: $6b
	ld   h, c                                        ; $67cf: $61
	ld   h, a                                        ; $67d0: $67
	rst  $38                                         ; $67d1: $ff
	dec  e                                           ; $67d2: $1d
	ld   sp, $f1ff                                   ; $67d3: $31 $ff $f1
	ld   l, h                                        ; $67d6: $6c
	ld   [hl], c                                     ; $67d7: $71
	ld   d, a                                        ; $67d8: $57
	rst  $38                                         ; $67d9: $ff
	dec  e                                           ; $67da: $1d
	ld   b, c                                        ; $67db: $41
	rst  $28                                         ; $67dc: $ef
	pop  af                                          ; $67dd: $f1
	ld   l, h                                        ; $67de: $6c
	ld   [hl], c                                     ; $67df: $71
	ld   d, [hl]                                     ; $67e0: $56
	rst  $38                                         ; $67e1: $ff
	inc  e                                           ; $67e2: $1c
	ld   d, c                                        ; $67e3: $51
	rst  $28                                         ; $67e4: $ef
	pop  af                                          ; $67e5: $f1
	ld   e, e                                        ; $67e6: $5b
	ld   [hl], c                                     ; $67e7: $71

Call_0ac_67e8:
	ld   b, a                                        ; $67e8: $47
	rst  $38                                         ; $67e9: $ff
	dec  de                                          ; $67ea: $1b
	ld   h, c                                        ; $67eb: $61
	rst  JumpTable                                         ; $67ec: $df
	pop  af                                          ; $67ed: $f1
	ld   c, e                                        ; $67ee: $4b
	ld   h, d                                        ; $67ef: $62
	ld   b, a                                        ; $67f0: $47
	rst  $38                                         ; $67f1: $ff
	ld   a, [de]                                     ; $67f2: $1a
	ld   h, c                                        ; $67f3: $61
	rst  $28                                         ; $67f4: $ef
	pop  af                                          ; $67f5: $f1
	ld   c, h                                        ; $67f6: $4c
	ld   [hl], d                                     ; $67f7: $72
	ld   b, a                                        ; $67f8: $47
	rst  $38                                         ; $67f9: $ff
	dec  de                                          ; $67fa: $1b
	ld   [hl], c                                     ; $67fb: $71
	rst  JumpTable                                         ; $67fc: $df
	pop  af                                          ; $67fd: $f1
	ld   c, e                                        ; $67fe: $4b
	ld   [hl], d                                     ; $67ff: $72
	ld   b, [hl]                                     ; $6800: $46
	rst  $38                                         ; $6801: $ff
	jr   jr_0ac_6795                                 ; $6802: $18 $91

	sbc  $f1                                         ; $6804: $de $f1
	dec  a                                           ; $6806: $3d
	ld   [hl], d                                     ; $6807: $72
	scf                                              ; $6808: $37
	rst  $38                                         ; $6809: $ff
	rla                                              ; $680a: $17
	add  c                                           ; $680b: $81
	rst  $28                                         ; $680c: $ef
	pop  af                                          ; $680d: $f1
	dec  a                                           ; $680e: $3d
	ld   [hl], d                                     ; $680f: $72
	jr   c, @+$01                                    ; $6810: $38 $ff

	jr   jr_0ac_6795                                 ; $6812: $18 $81

	rst  JumpTable                                         ; $6814: $df
	pop  af                                          ; $6815: $f1
	inc  a                                           ; $6816: $3c
	ld   h, d                                        ; $6817: $62
	ld   c, b                                        ; $6818: $48
	rst  $38                                         ; $6819: $ff
	ld   a, [de]                                     ; $681a: $1a
	ld   h, c                                        ; $681b: $61
	rst  $28                                         ; $681c: $ef
	pop  af                                          ; $681d: $f1
	ld   e, h                                        ; $681e: $5c
	ld   h, d                                        ; $681f: $62
	ld   b, a                                        ; $6820: $47
	rst  $38                                         ; $6821: $ff
	dec  de                                          ; $6822: $1b
	ld   h, c                                        ; $6823: $61
	xor  $f1                                         ; $6824: $ee $f1
	ld   e, l                                        ; $6826: $5d
	ld   h, c                                        ; $6827: $61
	ld   c, b                                        ; $6828: $48
	rst  $38                                         ; $6829: $ff
	inc  e                                           ; $682a: $1c
	ld   d, c                                        ; $682b: $51
	rst  $28                                         ; $682c: $ef
	pop  af                                          ; $682d: $f1
	ld   l, h                                        ; $682e: $6c
	ld   d, c                                        ; $682f: $51
	ld   c, b                                        ; $6830: $48
	rst  $38                                         ; $6831: $ff
	dec  e                                           ; $6832: $1d
	ld   b, c                                        ; $6833: $41
	rst  $28                                         ; $6834: $ef
	pop  af                                          ; $6835: $f1
	ld   a, e                                        ; $6836: $7b
	ld   d, d                                        ; $6837: $52
	ld   e, b                                        ; $6838: $58
	rst  $38                                         ; $6839: $ff
	ld   e, $32                                      ; $683a: $1e $32
	rst  $28                                         ; $683c: $ef
	pop  af                                          ; $683d: $f1
	adc  e                                           ; $683e: $8b
	ld   h, c                                        ; $683f: $61
	ld   e, b                                        ; $6840: $58
	rst  $38                                         ; $6841: $ff
	dec  e                                           ; $6842: $1d
	ld   [hl-], a                                    ; $6843: $32
	rst  $28                                         ; $6844: $ef
	pop  af                                          ; $6845: $f1
	sbc  e                                           ; $6846: $9b
	ld   d, c                                        ; $6847: $51
	ld   e, b                                        ; $6848: $58
	cp   $1e                                         ; $6849: $fe $1e
	inc  hl                                          ; $684b: $23
	rst  JumpTable                                         ; $684c: $df
	pop  af                                          ; $684d: $f1
	adc  e                                           ; $684e: $8b
	ld   h, c                                        ; $684f: $61
	ld   e, b                                        ; $6850: $58
	db   $fd                                         ; $6851: $fd
	ld   e, $13                                      ; $6852: $1e $13
	rst  JumpTable                                         ; $6854: $df
	pop  af                                          ; $6855: $f1
	sbc  e                                           ; $6856: $9b
	ld   b, c                                        ; $6857: $41
	ld   e, d                                        ; $6858: $5a
	ld   a, [$151e]                                  ; $6859: $fa $1e $15

jr_0ac_685c:
	rst  $28                                         ; $685c: $ef
	pop  hl                                          ; $685d: $e1
	cp   c                                           ; $685e: $b9
	ld   d, d                                        ; $685f: $52
	ld   e, d                                        ; $6860: $5a
	ld   hl, sp+$1f                                  ; $6861: $f8 $1f
	rla                                              ; $6863: $17
	rst  JumpTable                                         ; $6864: $df
	pop  bc                                          ; $6865: $c1
	jp   z, Jump_0ac_6b41                            ; $6866: $ca $41 $6b

	or   $1f                                         ; $6869: $f6 $1f
	jr   jr_0ac_685c                                 ; $686b: $18 $ef

	or   c                                           ; $686d: $b1
	ret                                              ; $686e: $c9


	ld   b, c                                        ; $686f: $41
	ld   l, e                                        ; $6870: $6b
	ldh  a, [c]                                      ; $6871: $f2
	rra                                              ; $6872: $1f
	ld   a, [de]                                     ; $6873: $1a
	rst  JumpTable                                         ; $6874: $df
	sub  c                                           ; $6875: $91
	ret  c                                           ; $6876: $d8

	ld   b, c                                        ; $6877: $41
	ld   l, l                                        ; $6878: $6d
	pop  af                                          ; $6879: $f1
	rra                                              ; $687a: $1f
	dec  de                                          ; $687b: $1b
	rst  $28                                         ; $687c: $ef
	ld   h, c                                        ; $687d: $61
	rst  $10                                         ; $687e: $d7
	ld   b, d                                        ; $687f: $42
	ld   l, l                                        ; $6880: $6d
	pop  af                                          ; $6881: $f1
	dec  e                                           ; $6882: $1d
	dec  de                                          ; $6883: $1b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6884: $cf
	ld   b, c                                        ; $6885: $41
	rst  $20                                         ; $6886: $e7
	ld   b, d                                        ; $6887: $42
	ld   a, [hl]                                     ; $6888: $7e
	pop  af                                          ; $6889: $f1
	dec  e                                           ; $688a: $1d
	inc  e                                           ; $688b: $1c
	rst  $28                                         ; $688c: $ef
	ld   hl, $32e6                                   ; $688d: $21 $e6 $32
	ld   a, a                                        ; $6890: $7f
	pop  af                                          ; $6891: $f1
	ld   a, [hl-]                                    ; $6892: $3a
	dec  e                                           ; $6893: $1d
	rst  JumpTable                                         ; $6894: $df
	ld   [de], a                                     ; $6895: $12
	sub  $32                                         ; $6896: $d6 $32
	ld   a, a                                        ; $6898: $7f
	pop  af                                          ; $6899: $f1
	ld   l, d                                        ; $689a: $6a
	ld   e, $ef                                      ; $689b: $1e $ef
	inc  de                                          ; $689d: $13
	call nc, $8f23                                   ; $689e: $d4 $23 $8f
	pop  af                                          ; $68a1: $f1
	add  [hl]                                        ; $68a2: $86
	ld   e, $ff                                      ; $68a3: $1e $ff
	ld   d, $c4                                      ; $68a5: $16 $c4

Call_0ac_68a7:
	inc  sp                                          ; $68a7: $33
	sbc  a                                           ; $68a8: $9f
	pop  af                                          ; $68a9: $f1
	or   e                                           ; $68aa: $b3
	ld   l, $ff                                      ; $68ab: $2e $ff
	add  hl, de                                      ; $68ad: $19
	or   h                                           ; $68ae: $b4
	inc  h                                           ; $68af: $24
	xor  a                                           ; $68b0: $af
	pop  hl                                          ; $68b1: $e1
	pop  de                                          ; $68b2: $d1
	ld   c, [hl]                                     ; $68b3: $4e
	rst  $38                                         ; $68b4: $ff
	dec  de                                          ; $68b5: $1b
	sub  h                                           ; $68b6: $94
	dec  h                                           ; $68b7: $25
	xor  a                                           ; $68b8: $af
	and  c                                           ; $68b9: $a1
	pop  hl                                          ; $68ba: $e1
	ld   l, [hl]                                     ; $68bb: $6e
	cp   $1c                                         ; $68bc: $fe $1c
	sub  e                                           ; $68be: $93
	ld   h, $bf                                      ; $68bf: $26 $bf
	ld   d, c                                        ; $68c1: $51
	pop  af                                          ; $68c2: $f1
	adc  [hl]                                        ; $68c3: $8e
	ld   a, [$731e]                                  ; $68c4: $fa $1e $73
	ld   h, $ef                                      ; $68c7: $26 $ef
	ld   de, $bdd1                                   ; $68c9: $11 $d1 $bd
	push af                                          ; $68cc: $f5
	rra                                              ; $68cd: $1f
	ld   h, d                                        ; $68ce: $62
	scf                                              ; $68cf: $37

jr_0ac_68d0:
	rst  $38                                         ; $68d0: $ff
	inc  d                                           ; $68d1: $14
	and  c                                           ; $68d2: $a1
	db   $dd                                         ; $68d3: $dd
	pop  af                                          ; $68d4: $f1
	ld   e, $42                                      ; $68d5: $1e $42

jr_0ac_68d7:
	add  hl, sp                                      ; $68d7: $39
	rst  $38                                         ; $68d8: $ff
	add  hl, de                                      ; $68d9: $19
	ld   h, c                                        ; $68da: $61
	rst  $38                                         ; $68db: $ff
	pop  af                                          ; $68dc: $f1
	ld   e, [hl]                                     ; $68dd: $5e
	ld   sp, $fb4b                                   ; $68de: $31 $4b $fb
	dec  e                                           ; $68e1: $1d
	inc  d                                           ; $68e2: $14
	rst  $38                                         ; $68e3: $ff
	pop  af                                          ; $68e4: $f1
	cp   d                                           ; $68e5: $ba
	ld   [de], a                                     ; $68e6: $12
	ld   l, a                                        ; $68e7: $6f
	pop  af                                          ; $68e8: $f1
	ld   e, $1a                                      ; $68e9: $1e $1a
	rst  $38                                         ; $68eb: $ff
	ld   [hl], c                                     ; $68ec: $71
	rst  $30                                         ; $68ed: $f7
	ld   hl, $f18f                                   ; $68ee: $21 $8f $f1
	inc  l                                           ; $68f1: $2c
	ld   e, $ef                                      ; $68f2: $1e $ef
	ld   de, $22e3                                   ; $68f4: $11 $e3 $22
	cp   a                                           ; $68f7: $bf
	pop  af                                          ; $68f8: $f1
	and  l                                           ; $68f9: $a5
	rra                                              ; $68fa: $1f
	rst  $38                                         ; $68fb: $ff
	jr   jr_0ac_68d0                                 ; $68fc: $18 $d2

	inc  d                                           ; $68fe: $14
	rst  $38                                         ; $68ff: $ff
	ld   sp, $8ed1                                   ; $6900: $31 $d1 $8e
	ld   a, [$621f]                                  ; $6903: $fa $1f $62
	daa                                              ; $6906: $27
	rst  $38                                         ; $6907: $ff
	inc  de                                          ; $6908: $13
	sub  c                                           ; $6909: $91
	rst  $28                                         ; $690a: $ef
	pop  af                                          ; $690b: $f1
	rra                                              ; $690c: $1f
	ld   [hl-], a                                    ; $690d: $32
	ld   e, $fb                                      ; $690e: $1e $fb
	dec  de                                          ; $6910: $1b
	inc  sp                                          ; $6911: $33
	rst  $38                                         ; $6912: $ff
	pop  af                                          ; $6913: $f1
	cp   c                                           ; $6914: $b9
	inc  de                                          ; $6915: $13
	ld   c, a                                        ; $6916: $4f
	pop  af                                          ; $6917: $f1
	dec  de                                          ; $6918: $1b
	inc  e                                           ; $6919: $1c
	rst  $38                                         ; $691a: $ff
	ld   b, c                                        ; $691b: $41
	db   $f4                                         ; $691c: $f4
	ld   hl, $b1bf                                   ; $691d: $21 $bf $b1
	and  h                                           ; $6920: $a4
	cpl                                              ; $6921: $2f
	rst  $38                                         ; $6922: $ff

jr_0ac_6923:
	jr   jr_0ac_68d7                                 ; $6923: $18 $b2

	inc  hl                                          ; $6925: $23
	rst  $38                                         ; $6926: $ff
	ld   de, sDayPeriodIdx                                   ; $6927: $11 $b1 $af
	db   $f4                                         ; $692a: $f4
	dec  e                                           ; $692b: $1d
	inc  sp                                          ; $692c: $33
	inc  e                                           ; $692d: $1c
	ld   a, [$431a]                                  ; $692e: $fa $1a $43
	rst  $28                                         ; $6931: $ef
	pop  af                                          ; $6932: $f1
	adc  c                                           ; $6933: $89
	inc  hl                                          ; $6934: $23
	ccf                                              ; $6935: $3f
	pop  af                                          ; $6936: $f1
	dec  de                                          ; $6937: $1b
	dec  de                                          ; $6938: $1b
	rst  $28                                         ; $6939: $ef
	ld   hl, $32f2                                   ; $693a: $21 $f2 $32
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $693d: $cf
	add  c                                           ; $693e: $81
	and  d                                           ; $693f: $a2
	ld   c, [hl]                                     ; $6940: $4e
	rst  $38                                         ; $6941: $ff
	ld   a, [de]                                     ; $6942: $1a
	add  c                                           ; $6943: $81
	ld   b, h                                        ; $6944: $44
	rst  $38                                         ; $6945: $ff
	ld   de, $cfb1                                   ; $6946: $11 $b1 $cf
	ldh  a, [c]                                      ; $6949: $f2
	ld   e, $13                                      ; $694a: $1e $13
	ld   l, $f5                                      ; $694c: $2e $f5
	ld   a, [de]                                     ; $694e: $1a
	dec  h                                           ; $694f: $25
	rst  $28                                         ; $6950: $ef
	pop  hl                                          ; $6951: $e1
	rst  ToBoot                                         ; $6952: $c7
	ld   [de], a                                     ; $6953: $12
	ld   l, a                                        ; $6954: $6f
	pop  af                                          ; $6955: $f1
	ld   b, a                                        ; $6956: $47
	inc  e                                           ; $6957: $1c
	rst  $38                                         ; $6958: $ff
	inc  de                                          ; $6959: $13
	pop  de                                          ; $695a: $d1
	ld   b, d                                        ; $695b: $42
	rst  $38                                         ; $695c: $ff
	ld   de, $9db1                                   ; $695d: $11 $b1 $9d
	ld   hl, sp+$1e                                  ; $6960: $f8 $1e
	ld   b, e                                        ; $6962: $43
	ld   a, [hl+]                                    ; $6963: $2a
	ld   sp, hl                                      ; $6964: $f9
	jr   jr_0ac_69bb                                 ; $6965: $18 $54

	rst  JumpTable                                         ; $6967: $df
	pop  af                                          ; $6968: $f1
	ld   a, d                                        ; $6969: $7a
	dec  h                                           ; $696a: $25
	ccf                                              ; $696b: $3f
	pop  af                                          ; $696c: $f1
	add  hl, hl                                      ; $696d: $29
	inc  e                                           ; $696e: $1c
	rst  $28                                         ; $696f: $ef
	ld   hl, $42e3                                   ; $6970: $21 $e3 $42
	rst  $28                                         ; $6973: $ef
	ld   sp, $7eb2                                   ; $6974: $31 $b2 $7e
	cp   $1b                                         ; $6977: $fe $1b
	ld   [hl], e                                     ; $6979: $73
	dec  [hl]                                        ; $697a: $35
	rst  $38                                         ; $697b: $ff
	dec  d                                           ; $697c: $15
	ld   [hl], d                                     ; $697d: $72
	rst  JumpTable                                         ; $697e: $df
	pop  af                                          ; $697f: $f1
	inc  a                                           ; $6980: $3c
	dec  h                                           ; $6981: $25
	rra                                              ; $6982: $1f
	pop  af                                          ; $6983: $f1
	ld   a, [de]                                     ; $6984: $1a
	add  hl, de                                      ; $6985: $19
	rst  $28                                         ; $6986: $ef
	ld   [hl], c                                     ; $6987: $71
	db   $e4                                         ; $6988: $e4
	ld   [hl-], a                                    ; $6989: $32
	xor  a                                           ; $698a: $af
	add  c                                           ; $698b: $81
	and  e                                           ; $698c: $a3
	ld   c, l                                        ; $698d: $4d
	rst  $38                                         ; $698e: $ff
	jr   jr_0ac_6923                                 ; $698f: $18 $92

	ld   b, h                                        ; $6991: $44
	rst  $38                                         ; $6992: $ff
	inc  d                                           ; $6993: $14
	sub  c                                           ; $6994: $91
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6995: $cf
	pop  af                                          ; $6996: $f1
	dec  e                                           ; $6997: $1d
	inc  h                                           ; $6998: $24
	rra                                              ; $6999: $1f
	pop  af                                          ; $699a: $f1
	inc  e                                           ; $699b: $1c
	rla                                              ; $699c: $17
	rst  $28                                         ; $699d: $ef
	or   c                                           ; $699e: $b1
	push bc                                          ; $699f: $c5
	inc  sp                                          ; $69a0: $33
	adc  a                                           ; $69a1: $8f
	pop  bc                                          ; $69a2: $c1
	add  [hl]                                        ; $69a3: $86
	inc  a                                           ; $69a4: $3c
	rst  $38                                         ; $69a5: $ff
	ld   d, $b2                                      ; $69a6: $16 $b2

Call_0ac_69a8:
	ld   b, d                                        ; $69a8: $42
	rst  $38                                         ; $69a9: $ff
	ld   de, $bdb1                                   ; $69aa: $11 $b1 $bd
	db   $f4                                         ; $69ad: $f4
	ld   e, $24                                      ; $69ae: $1e $24
	ld   e, $f1                                      ; $69b0: $1e $f1
	ld   a, [de]                                     ; $69b2: $1a
	scf                                              ; $69b3: $37
	rst  JumpTable                                         ; $69b4: $df
	pop  de                                          ; $69b5: $d1
	or   a                                           ; $69b6: $b7
	inc  sp                                          ; $69b7: $33
	ld   l, a                                        ; $69b8: $6f
	pop  de                                          ; $69b9: $d1
	ld   [hl], a                                     ; $69ba: $77

jr_0ac_69bb:
	dec  a                                           ; $69bb: $3d
	rst  $38                                         ; $69bc: $ff
	inc  d                                           ; $69bd: $14
	or   d                                           ; $69be: $b2
	ld   b, d                                        ; $69bf: $42
	rst  $38                                         ; $69c0: $ff
	ld   de, $aeb1                                   ; $69c1: $11 $b1 $ae
	push af                                          ; $69c4: $f5
	dec  e                                           ; $69c5: $1d
	ld   b, l                                        ; $69c6: $45
	dec  e                                           ; $69c7: $1d
	push af                                          ; $69c8: $f5
	ld   a, [de]                                     ; $69c9: $1a
	ld   b, [hl]                                     ; $69ca: $46
	rst  JumpTable                                         ; $69cb: $df
	pop  hl                                          ; $69cc: $e1
	xor  b                                           ; $69cd: $a8
	inc  sp                                          ; $69ce: $33
	ld   c, a                                        ; $69cf: $4f
	pop  af                                          ; $69d0: $f1
	ld   c, c                                        ; $69d1: $49
	inc  l                                           ; $69d2: $2c
	rst  $38                                         ; $69d3: $ff
	ld   [de], a                                     ; $69d4: $12
	jp   nz, $ff51                                   ; $69d5: $c2 $51 $ff

	ld   de, $aeb2                                   ; $69d8: $11 $b2 $ae
	rst  $30                                         ; $69db: $f7
	inc  e                                           ; $69dc: $1c
	ld   d, l                                        ; $69dd: $55
	add  hl, de                                      ; $69de: $19
	ld   hl, sp+$19                                  ; $69df: $f8 $19
	ld   d, l                                        ; $69e1: $55
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69e2: $cf
	pop  af                                          ; $69e3: $f1
	adc  b                                           ; $69e4: $88
	inc  [hl]                                        ; $69e5: $34
	ccf                                              ; $69e6: $3f
	pop  af                                          ; $69e7: $f1
	jr   c, jr_0ac_6a15                              ; $69e8: $38 $2b

	rst  $28                                         ; $69ea: $ef
	ld   de, $51d3                                   ; $69eb: $11 $d3 $51
	rst  $38                                         ; $69ee: $ff
	ld   de, $9db2                                   ; $69ef: $11 $b2 $9d
	ld   a, [$641c]                                  ; $69f2: $fa $1c $64
	add  hl, hl                                      ; $69f5: $29
	ei                                               ; $69f6: $fb
	jr   jr_0ac_6a5d                                 ; $69f7: $18 $64

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69f9: $cf
	pop  af                                          ; $69fa: $f1
	ld   l, d                                        ; $69fb: $6a
	ld   b, l                                        ; $69fc: $45
	cpl                                              ; $69fd: $2f
	pop  af                                          ; $69fe: $f1
	ld   a, [de]                                     ; $69ff: $1a
	dec  hl                                          ; $6a00: $2b
	rst  JumpTable                                         ; $6a01: $df
	ld   hl, $51c3                                   ; $6a02: $21 $c3 $51
	rst  $38                                         ; $6a05: $ff
	ld   de, $8da3                                   ; $6a06: $11 $a3 $8d
	ei                                               ; $6a09: $fb
	dec  de                                          ; $6a0a: $1b
	ld   h, h                                        ; $6a0b: $64
	jr   z, @-$04                                    ; $6a0c: $28 $fa

	jr   jr_0ac_6a75                                 ; $6a0e: $18 $65

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a10: $cf
	pop  af                                          ; $6a11: $f1
	ld   l, d                                        ; $6a12: $6a
	inc  [hl]                                        ; $6a13: $34
	ccf                                              ; $6a14: $3f

jr_0ac_6a15:
	pop  af                                          ; $6a15: $f1
	jr   c, jr_0ac_6a53                              ; $6a16: $38 $3b

	rst  $28                                         ; $6a18: $ef
	ld   de, $61b4                                   ; $6a19: $11 $b4 $61
	rst  $38                                         ; $6a1c: $ff
	ld   de, $9cb3                                   ; $6a1d: $11 $b3 $9c
	ld   sp, hl                                      ; $6a20: $f9
	dec  de                                          ; $6a21: $1b
	ld   h, l                                        ; $6a22: $65
	ld   a, [de]                                     ; $6a23: $1a
	rst  $30                                         ; $6a24: $f7
	jr   jr_0ac_6a8c                                 ; $6a25: $18 $65

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a27: $cf
	pop  af                                          ; $6a28: $f1
	ld   a, c                                        ; $6a29: $79
	ld   d, e                                        ; $6a2a: $53
	ccf                                              ; $6a2b: $3f
	pop  af                                          ; $6a2c: $f1
	add  hl, sp                                      ; $6a2d: $39
	ld   c, e                                        ; $6a2e: $4b
	rst  $28                                         ; $6a2f: $ef
	ld   de, $51b4                                   ; $6a30: $11 $b4 $51
	rst  $38                                         ; $6a33: $ff
	ld   de, $9cc3                                   ; $6a34: $11 $c3 $9c
	ld   sp, hl                                      ; $6a37: $f9
	inc  e                                           ; $6a38: $1c
	ld   d, l                                        ; $6a39: $55
	dec  de                                          ; $6a3a: $1b
	rst  $30                                         ; $6a3b: $f7
	add  hl, de                                      ; $6a3c: $19
	ld   h, [hl]                                     ; $6a3d: $66
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a3e: $cf
	pop  af                                          ; $6a3f: $f1
	ld   a, d                                        ; $6a40: $7a
	ld   b, e                                        ; $6a41: $43
	ccf                                              ; $6a42: $3f
	pop  af                                          ; $6a43: $f1
	add  hl, sp                                      ; $6a44: $39
	dec  sp                                          ; $6a45: $3b
	rst  $28                                         ; $6a46: $ef
	ld   de, $51c4                                   ; $6a47: $11 $c4 $51
	rst  $38                                         ; $6a4a: $ff
	ld   de, $8cb3                                   ; $6a4b: $11 $b3 $8c
	ld   sp, hl                                      ; $6a4e: $f9
	inc  e                                           ; $6a4f: $1c
	ld   h, l                                        ; $6a50: $65
	ld   a, [de]                                     ; $6a51: $1a
	rst  $30                                         ; $6a52: $f7

jr_0ac_6a53:
	add  hl, de                                      ; $6a53: $19
	ld   h, l                                        ; $6a54: $65
	cp   a                                           ; $6a55: $bf
	pop  af                                          ; $6a56: $f1
	ld   l, d                                        ; $6a57: $6a
	ld   d, h                                        ; $6a58: $54
	cpl                                              ; $6a59: $2f
	pop  af                                          ; $6a5a: $f1
	dec  de                                          ; $6a5b: $1b
	dec  sp                                          ; $6a5c: $3b

jr_0ac_6a5d:
	rst  $28                                         ; $6a5d: $ef
	ld   hl, $51d5                                   ; $6a5e: $21 $d5 $51
	rst  $38                                         ; $6a61: $ff
	ld   de, $7cb4                                   ; $6a62: $11 $b4 $7c
	db   $fd                                         ; $6a65: $fd
	ld   a, [de]                                     ; $6a66: $1a
	ld   [hl], l                                     ; $6a67: $75
	ld   d, $fd                                      ; $6a68: $16 $fd
	ld   d, $84                                      ; $6a6a: $16 $84
	cp   a                                           ; $6a6c: $bf
	pop  af                                          ; $6a6d: $f1
	dec  sp                                          ; $6a6e: $3b
	ld   d, h                                        ; $6a6f: $54
	rra                                              ; $6a70: $1f
	pop  af                                          ; $6a71: $f1
	dec  de                                          ; $6a72: $1b
	add  hl, sp                                      ; $6a73: $39
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a74: $cf

jr_0ac_6a75:
	ld   [hl], c                                     ; $6a75: $71
	add  $61                                         ; $6a76: $c6 $61
	xor  a                                           ; $6a78: $af
	ld   h, c                                        ; $6a79: $61
	and  [hl]                                        ; $6a7a: $a6
	ld   l, h                                        ; $6a7b: $6c
	rst  $38                                         ; $6a7c: $ff
	rla                                              ; $6a7d: $17
	and  l                                           ; $6a7e: $a5
	ld   [hl-], a                                    ; $6a7f: $32
	rst  $38                                         ; $6a80: $ff
	inc  de                                          ; $6a81: $13
	and  e                                           ; $6a82: $a3
	cp   l                                           ; $6a83: $bd
	pop  af                                          ; $6a84: $f1
	dec  e                                           ; $6a85: $1d
	ld   d, l                                        ; $6a86: $55
	rra                                              ; $6a87: $1f
	pop  af                                          ; $6a88: $f1
	inc  e                                           ; $6a89: $1c
	ld   c, b                                        ; $6a8a: $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a8b: $cf

jr_0ac_6a8c:
	pop  bc                                          ; $6a8c: $c1
	and  a                                           ; $6a8d: $a7
	ld   d, c                                        ; $6a8e: $51
	ld   l, a                                        ; $6a8f: $6f
	pop  de                                          ; $6a90: $d1
	ld   a, b                                        ; $6a91: $78
	ld   c, h                                        ; $6a92: $4c
	rst  $38                                         ; $6a93: $ff
	inc  d                                           ; $6a94: $14
	or   h                                           ; $6a95: $b4
	ld   b, c                                        ; $6a96: $41
	rst  $38                                         ; $6a97: $ff
	ld   de, $adc3                                   ; $6a98: $11 $c3 $ad
	or   $1c                                         ; $6a9b: $f6 $1c
	ld   d, [hl]                                     ; $6a9d: $56
	inc  e                                           ; $6a9e: $1c
	di                                               ; $6a9f: $f3
	ld   a, [de]                                     ; $6aa0: $1a
	ld   d, a                                        ; $6aa1: $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6aa2: $cf
	pop  hl                                          ; $6aa3: $e1
	sbc  b                                           ; $6aa4: $98
	ld   d, e                                        ; $6aa5: $53
	ld   c, a                                        ; $6aa6: $4f
	pop  af                                          ; $6aa7: $f1
	ld   e, c                                        ; $6aa8: $59
	ld   c, h                                        ; $6aa9: $4c
	rst  $28                                         ; $6aaa: $ef
	ld   [de], a                                     ; $6aab: $12
	or   h                                           ; $6aac: $b4
	ld   d, c                                        ; $6aad: $51
	rst  $38                                         ; $6aae: $ff
	ld   de, $acb3                                   ; $6aaf: $11 $b3 $ac
	rst  $30                                         ; $6ab2: $f7
	inc  e                                           ; $6ab3: $1c
	ld   h, [hl]                                     ; $6ab4: $66
	add  hl, de                                      ; $6ab5: $19
	ld   hl, sp+$19                                  ; $6ab6: $f8 $19
	ld   h, [hl]                                     ; $6ab8: $66
	cp   a                                           ; $6ab9: $bf
	pop  af                                          ; $6aba: $f1
	ld   a, d                                        ; $6abb: $7a
	ld   b, e                                        ; $6abc: $43
	cpl                                              ; $6abd: $2f
	pop  af                                          ; $6abe: $f1
	add  hl, sp                                      ; $6abf: $39
	dec  sp                                          ; $6ac0: $3b
	rst  JumpTable                                         ; $6ac1: $df
	ld   hl, $51c4                                   ; $6ac2: $21 $c4 $51
	rst  $38                                         ; $6ac5: $ff
	ld   de, $9bb4                                   ; $6ac6: $11 $b4 $9b
	ei                                               ; $6ac9: $fb
	ld   a, [de]                                     ; $6aca: $1a
	ld   [hl], l                                     ; $6acb: $75
	rla                                              ; $6acc: $17
	ld   a, [$7619]                                  ; $6acd: $fa $19 $76
	cp   a                                           ; $6ad0: $bf
	pop  af                                          ; $6ad1: $f1
	ld   e, e                                        ; $6ad2: $5b
	ld   d, h                                        ; $6ad3: $54
	rra                                              ; $6ad4: $1f
	pop  af                                          ; $6ad5: $f1
	dec  de                                          ; $6ad6: $1b
	dec  sp                                          ; $6ad7: $3b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ad8: $cf
	ld   sp, $51c5                                   ; $6ad9: $31 $c5 $51
	rst  $38                                         ; $6adc: $ff
	ld   de, $8cc4                                   ; $6add: $11 $c4 $8c
	db   $fc                                         ; $6ae0: $fc
	ld   a, [de]                                     ; $6ae1: $1a
	ld   [hl], l                                     ; $6ae2: $75
	ld   h, $fa                                      ; $6ae3: $26 $fa
	rla                                              ; $6ae5: $17
	halt                                             ; $6ae6: $76
	cp   a                                           ; $6ae7: $bf
	pop  af                                          ; $6ae8: $f1
	ld   c, d                                        ; $6ae9: $4a
	ld   b, h                                        ; $6aea: $44
	rra                                              ; $6aeb: $1f
	pop  af                                          ; $6aec: $f1
	ld   a, [de]                                     ; $6aed: $1a
	ld   c, e                                        ; $6aee: $4b
	rst  JumpTable                                         ; $6aef: $df
	ld   b, c                                        ; $6af0: $41
	push bc                                          ; $6af1: $c5
	ld   h, c                                        ; $6af2: $61
	rst  $38                                         ; $6af3: $ff
	ld   de, $9cb4                                   ; $6af4: $11 $b4 $9c
	db   $fc                                         ; $6af7: $fc
	add  hl, de                                      ; $6af8: $19
	ld   [hl], l                                     ; $6af9: $75
	daa                                              ; $6afa: $27
	ld   sp, hl                                      ; $6afb: $f9
	jr   jr_0ac_6b74                                 ; $6afc: $18 $76

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6afe: $cf
	pop  af                                          ; $6aff: $f1
	ld   c, d                                        ; $6b00: $4a
	ld   b, h                                        ; $6b01: $44
	cpl                                              ; $6b02: $2f
	pop  af                                          ; $6b03: $f1
	add  hl, sp                                      ; $6b04: $39
	ld   c, h                                        ; $6b05: $4c
	rst  JumpTable                                         ; $6b06: $df
	ld   sp, $61b5                                   ; $6b07: $31 $b5 $61
	rst  $38                                         ; $6b0a: $ff
	ld   de, $aba4                                   ; $6b0b: $11 $a4 $ab
	ld   sp, hl                                      ; $6b0e: $f9
	add  hl, de                                      ; $6b0f: $19
	ld   h, [hl]                                     ; $6b10: $66
	dec  de                                          ; $6b11: $1b
	di                                               ; $6b12: $f3
	add  hl, de                                      ; $6b13: $19
	ld   e, c                                        ; $6b14: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b15: $cf
	pop  af                                          ; $6b16: $f1
	ld   a, b                                        ; $6b17: $78
	ld   d, e                                        ; $6b18: $53
	ld   e, a                                        ; $6b19: $5f
	pop  bc                                          ; $6b1a: $c1
	ld   l, b                                        ; $6b1b: $68
	ld   l, h                                        ; $6b1c: $6c
	rst  $28                                         ; $6b1d: $ef
	inc  de                                          ; $6b1e: $13
	and  l                                           ; $6b1f: $a5
	ld   d, c                                        ; $6b20: $51
	rst  $38                                         ; $6b21: $ff
	inc  de                                          ; $6b22: $13
	add  l                                           ; $6b23: $85
	call $1bf2                                       ; $6b24: $cd $f2 $1b
	ld   b, [hl]                                     ; $6b27: $46
	rra                                              ; $6b28: $1f
	pop  af                                          ; $6b29: $f1
	ld   a, [de]                                     ; $6b2a: $1a
	ld   c, e                                        ; $6b2b: $4b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b2c: $cf
	ld   [hl], c                                     ; $6b2d: $71

jr_0ac_6b2e:
	and  l                                           ; $6b2e: $a5
	ld   h, c                                        ; $6b2f: $61
	rst  JumpTable                                         ; $6b30: $df
	ld   de, $ab95                                   ; $6b31: $11 $95 $ab
	db   $fc                                         ; $6b34: $fc
	jr   @+$68                                       ; $6b35: $18 $66

	jr   c, jr_0ac_6b2e                              ; $6b37: $38 $f5

	add  hl, de                                      ; $6b39: $19
	ld   e, c                                        ; $6b3a: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b3b: $cf
	pop  af                                          ; $6b3c: $f1
	ld   d, a                                        ; $6b3d: $57
	ld   d, l                                        ; $6b3e: $55
	ld   e, a                                        ; $6b3f: $5f
	pop  bc                                          ; $6b40: $c1

Jump_0ac_6b41:
	ld   h, [hl]                                     ; $6b41: $66
	sbc  l                                           ; $6b42: $9d
	rst  $38                                         ; $6b43: $ff
	inc  de                                          ; $6b44: $13
	sub  l                                           ; $6b45: $95
	ld   h, e                                        ; $6b46: $63
	rst  $38                                         ; $6b47: $ff
	inc  d                                           ; $6b48: $14
	ld   [hl], a                                     ; $6b49: $77
	db   $dd                                         ; $6b4a: $dd
	pop  af                                          ; $6b4b: $f1
	jr   jr_0ac_6b95                                 ; $6b4c: $18 $47

	ccf                                              ; $6b4e: $3f
	pop  af                                          ; $6b4f: $f1
	rla                                              ; $6b50: $17
	ld   l, [hl]                                     ; $6b51: $6e
	rst  JumpTable                                         ; $6b52: $df
	ld   sp, $8295                                   ; $6b53: $31 $95 $82
	rst  $38                                         ; $6b56: $ff
	ld   de, $dca5                                   ; $6b57: $11 $a5 $dc
	rst  $30                                         ; $6b5a: $f7
	add  hl, de                                      ; $6b5b: $19
	ld   b, a                                        ; $6b5c: $47
	ccf                                              ; $6b5d: $3f
	pop  af                                          ; $6b5e: $f1
	jr   jr_0ac_6bbd                                 ; $6b5f: $18 $5c

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b61: $cf
	sub  c                                           ; $6b62: $91
	ld   [hl], l                                     ; $6b63: $75
	ld   [hl], h                                     ; $6b64: $74
	rst  $28                                         ; $6b65: $ef
	ld   de, $cd84                                   ; $6b66: $11 $84 $cd
	ei                                               ; $6b69: $fb
	ld   d, $57                                      ; $6b6a: $16 $57
	ld   c, h                                        ; $6b6c: $4c
	ldh  a, [c]                                      ; $6b6d: $f2
	jr   jr_0ac_6bcb                                 ; $6b6e: $18 $5b

	rst  JumpTable                                         ; $6b70: $df
	pop  hl                                          ; $6b71: $e1
	ld   d, [hl]                                     ; $6b72: $56
	ld   h, l                                        ; $6b73: $65

jr_0ac_6b74:
	adc  a                                           ; $6b74: $8f
	ld   h, c                                        ; $6b75: $61
	ld   [hl], l                                     ; $6b76: $75
	cp   [hl]                                        ; $6b77: $be
	rst  $38                                         ; $6b78: $ff
	inc  d                                           ; $6b79: $14
	ld   [hl], l                                     ; $6b7a: $75
	ld   h, [hl]                                     ; $6b7b: $66
	ei                                               ; $6b7c: $fb
	dec  d                                           ; $6b7d: $15
	ld   l, c                                        ; $6b7e: $69

Jump_0ac_6b7f:
	rst  JumpTable                                         ; $6b7f: $df
	pop  af                                          ; $6b80: $f1
	rla                                              ; $6b81: $17
	ld   d, a                                        ; $6b82: $57
	ld   e, a                                        ; $6b83: $5f
	pop  af                                          ; $6b84: $f1
	ld   b, [hl]                                     ; $6b85: $46
	adc  [hl]                                        ; $6b86: $8e
	rst  $28                                         ; $6b87: $ef
	ld   de, $7484                                   ; $6b88: $11 $84 $74
	rst  $38                                         ; $6b8b: $ff
	ld   de, $ed96                                   ; $6b8c: $11 $96 $ed
	di                                               ; $6b8f: $f3
	jr   jr_0ac_6bea                                 ; $6b90: $18 $58

	ccf                                              ; $6b92: $3f
	pop  af                                          ; $6b93: $f1
	add  hl, de                                      ; $6b94: $19

jr_0ac_6b95:
	ld   e, l                                        ; $6b95: $5d

Jump_0ac_6b96:
	rst  JumpTable                                         ; $6b96: $df
	ld   d, c                                        ; $6b97: $51
	sub  h                                           ; $6b98: $94
	ld   [hl], h                                     ; $6b99: $74
	rst  $38                                         ; $6b9a: $ff
	ld   de, $cea5                                   ; $6b9b: $11 $a5 $ce
	ld   a, [$5716]                                  ; $6b9e: $fa $16 $57
	ld   c, [hl]                                     ; $6ba1: $4e
	pop  af                                          ; $6ba2: $f1
	add  hl, de                                      ; $6ba3: $19
	ld   e, h                                        ; $6ba4: $5c
	rst  JumpTable                                         ; $6ba5: $df
	or   c                                           ; $6ba6: $b1
	ld   h, [hl]                                     ; $6ba7: $66
	ld   h, l                                        ; $6ba8: $65
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ba9: $cf
	ld   hl, $ae96                                   ; $6baa: $21 $96 $ae
	db   $fd                                         ; $6bad: $fd
	inc  d                                           ; $6bae: $14
	ld   h, [hl]                                     ; $6baf: $66
	ld   e, b                                        ; $6bb0: $58
	rst  $30                                         ; $6bb1: $f7
	jr   jr_0ac_6c1d                                 ; $6bb2: $18 $69

	rst  $28                                         ; $6bb4: $ef
	pop  af                                          ; $6bb5: $f1
	scf                                              ; $6bb6: $37
	ld   d, [hl]                                     ; $6bb7: $56
	ld   a, a                                        ; $6bb8: $7f
	pop  bc                                          ; $6bb9: $c1
	ld   e, b                                        ; $6bba: $58
	ld   a, [hl]                                     ; $6bbb: $7e
	rst  $38                                         ; $6bbc: $ff

jr_0ac_6bbd:
	ld   de, $7475                                   ; $6bbd: $11 $75 $74
	rst  $38                                         ; $6bc0: $ff
	inc  de                                          ; $6bc1: $13
	sub  [hl]                                        ; $6bc2: $96
	rst  $28                                         ; $6bc3: $ef
	pop  af                                          ; $6bc4: $f1
	add  hl, de                                      ; $6bc5: $19
	ld   b, a                                        ; $6bc6: $47
	ld   c, a                                        ; $6bc7: $4f
	pop  af                                          ; $6bc8: $f1
	add  hl, de                                      ; $6bc9: $19
	ld   l, l                                        ; $6bca: $6d

jr_0ac_6bcb:
	rst  $38                                         ; $6bcb: $ff
	ld   b, c                                        ; $6bcc: $41
	ld   [hl], l                                     ; $6bcd: $75
	ld   [hl], h                                     ; $6bce: $74
	rst  $38                                         ; $6bcf: $ff
	ld   de, $de95                                   ; $6bd0: $11 $95 $de
	or   $17                                         ; $6bd3: $f6 $17
	ld   d, a                                        ; $6bd5: $57
	ld   c, a                                        ; $6bd6: $4f
	pop  af                                          ; $6bd7: $f1
	ld   a, [de]                                     ; $6bd8: $1a
	ld   e, h                                        ; $6bd9: $5c
	rst  $28                                         ; $6bda: $ef
	add  c                                           ; $6bdb: $81
	add  l                                           ; $6bdc: $85
	ld   h, h                                        ; $6bdd: $64
	rst  $28                                         ; $6bde: $ef
	ld   de, $aea6                                   ; $6bdf: $11 $a6 $ae
	db   $fc                                         ; $6be2: $fc
	dec  d                                           ; $6be3: $15
	ld   h, [hl]                                     ; $6be4: $66
	ld   e, e                                        ; $6be5: $5b
	pop  af                                          ; $6be6: $f1
	add  hl, de                                      ; $6be7: $19
	ld   e, d                                        ; $6be8: $5a
	rst  $28                                         ; $6be9: $ef

jr_0ac_6bea:
	pop  de                                          ; $6bea: $d1
	ld   d, [hl]                                     ; $6beb: $56
	ld   h, [hl]                                     ; $6bec: $66
	xor  a                                           ; $6bed: $af
	ld   [hl], c                                     ; $6bee: $71
	halt                                             ; $6bef: $76
	adc  [hl]                                        ; $6bf0: $8e
	cp   $13                                         ; $6bf1: $fe $13
	ld   [hl], l                                     ; $6bf3: $75
	ld   h, [hl]                                     ; $6bf4: $66
	db   $fc                                         ; $6bf5: $fc
	ld   d, $87                                      ; $6bf6: $16 $87
	rst  $38                                         ; $6bf8: $ff
	pop  af                                          ; $6bf9: $f1
	rla                                              ; $6bfa: $17

Jump_0ac_6bfb:
	ld   b, a                                        ; $6bfb: $47
	ld   l, a                                        ; $6bfc: $6f
	pop  af                                          ; $6bfd: $f1
	ld   c, b                                        ; $6bfe: $48
	ld   l, [hl]                                     ; $6bff: $6e
	rst  $28                                         ; $6c00: $ef
	ld   de, $7575                                   ; $6c01: $11 $75 $75
	rst  $38                                         ; $6c04: $ff
	ld   [de], a                                     ; $6c05: $12
	sub  [hl]                                        ; $6c06: $96
	rst  $38                                         ; $6c07: $ff
	ldh  a, [c]                                      ; $6c08: $f2
	rla                                              ; $6c09: $17
	ld   d, a                                        ; $6c0a: $57
	ld   c, a                                        ; $6c0b: $4f
	pop  af                                          ; $6c0c: $f1
	ld   a, [de]                                     ; $6c0d: $1a
	ld   e, [hl]                                     ; $6c0e: $5e
	rst  $38                                         ; $6c0f: $ff
	ld   d, c                                        ; $6c10: $51
	ld   [hl], l                                     ; $6c11: $75
	ld   [hl], h                                     ; $6c12: $74
	rst  $38                                         ; $6c13: $ff
	ld   de, $deb4                                   ; $6c14: $11 $b4 $de
	rst  $30                                         ; $6c17: $f7
	rla                                              ; $6c18: $17
	ld   d, a                                        ; $6c19: $57
	ld   c, a                                        ; $6c1a: $4f
	pop  af                                          ; $6c1b: $f1
	dec  de                                          ; $6c1c: $1b

jr_0ac_6c1d:
	ld   e, h                                        ; $6c1d: $5c
	rst  $38                                         ; $6c1e: $ff
	and  c                                           ; $6c1f: $a1
	ld   d, l                                        ; $6c20: $55
	ld   [hl], h                                     ; $6c21: $74
	rst  $38                                         ; $6c22: $ff
	ld   de, $cfa5                                   ; $6c23: $11 $a5 $cf
	db   $fc                                         ; $6c26: $fc
	inc  d                                           ; $6c27: $14
	ld   d, a                                        ; $6c28: $57
	ld   e, h                                        ; $6c29: $5c
	pop  af                                          ; $6c2a: $f1
	add  hl, de                                      ; $6c2b: $19
	ld   e, e                                        ; $6c2c: $5b
	rst  $28                                         ; $6c2d: $ef
	pop  de                                          ; $6c2e: $d1
	ld   d, [hl]                                     ; $6c2f: $56
	ld   h, [hl]                                     ; $6c30: $66
	sbc  a                                           ; $6c31: $9f
	ld   h, c                                        ; $6c32: $61
	add  a                                           ; $6c33: $87
	sbc  [hl]                                        ; $6c34: $9e
	cp   $11                                         ; $6c35: $fe $11
	ld   h, a                                        ; $6c37: $67
	ld   l, c                                        ; $6c38: $69
	push af                                          ; $6c39: $f5
	jr   jr_0ac_6c96                                 ; $6c3a: $18 $5a

	rst  $38                                         ; $6c3c: $ff
	pop  af                                          ; $6c3d: $f1
	dec  h                                           ; $6c3e: $25
	ld   [hl], a                                     ; $6c3f: $77
	adc  a                                           ; $6c40: $8f
	and  c                                           ; $6c41: $a1
	ld   h, a                                        ; $6c42: $67
	sbc  a                                           ; $6c43: $9f
	rst  $38                                         ; $6c44: $ff
	ld   de, $7656                                   ; $6c45: $11 $56 $76
	db   $fd                                         ; $6c48: $fd
	dec  d                                           ; $6c49: $15
	ld   a, b                                        ; $6c4a: $78
	rst  $38                                         ; $6c4b: $ff
	pop  af                                          ; $6c4c: $f1
	dec  d                                           ; $6c4d: $15
	ld   h, a                                        ; $6c4e: $67
	ld   l, a                                        ; $6c4f: $6f
	pop  de                                          ; $6c50: $d1
	ld   b, a                                        ; $6c51: $47
	adc  a                                           ; $6c52: $8f
	rst  $28                                         ; $6c53: $ef
	ld   de, $9556                                   ; $6c54: $11 $56 $95
	rst  $38                                         ; $6c57: $ff
	ld   [de], a                                     ; $6c58: $12
	adc  b                                           ; $6c59: $88
	cp   $f2                                         ; $6c5a: $fe $f2
	dec  d                                           ; $6c5c: $15
	ld   e, b                                        ; $6c5d: $58
	ld   e, a                                        ; $6c5e: $5f
	pop  af                                          ; $6c5f: $f1
	rla                                              ; $6c60: $17
	adc  a                                           ; $6c61: $8f
	rst  $28                                         ; $6c62: $ef
	ld   sp, $9455                                   ; $6c63: $31 $55 $94
	rst  $38                                         ; $6c66: $ff
	ld   de, $fd87                                   ; $6c67: $11 $87 $fd
	db   $f4                                         ; $6c6a: $f4
	dec  d                                           ; $6c6b: $15
	ld   c, d                                        ; $6c6c: $4a
	ld   c, a                                        ; $6c6d: $4f
	pop  af                                          ; $6c6e: $f1
	jr   jr_0ac_6cf0                                 ; $6c6f: $18 $7f

	rst  $28                                         ; $6c71: $ef
	ld   d, c                                        ; $6c72: $51
	ld   d, h                                        ; $6c73: $54
	sub  h                                           ; $6c74: $94
	rst  $38                                         ; $6c75: $ff
	ld   de, $ed96                                   ; $6c76: $11 $96 $ed
	ld   hl, sp+$15                                  ; $6c79: $f8 $15
	ld   c, c                                        ; $6c7b: $49
	ld   c, l                                        ; $6c7c: $4d
	pop  af                                          ; $6c7d: $f1
	add  hl, de                                      ; $6c7e: $19
	ld   l, h                                        ; $6c7f: $6c
	rst  $28                                         ; $6c80: $ef
	pop  bc                                          ; $6c81: $c1
	ld   b, h                                        ; $6c82: $44
	add  l                                           ; $6c83: $85
	sbc  a                                           ; $6c84: $9f
	ld   d, c                                        ; $6c85: $51
	ld   [hl], a                                     ; $6c86: $77
	xor  a                                           ; $6c87: $af
	rst  $38                                         ; $6c88: $ff
	ld   [de], a                                     ; $6c89: $12
	ld   c, b                                        ; $6c8a: $48
	ld   h, [hl]                                     ; $6c8b: $66
	db   $fd                                         ; $6c8c: $fd
	inc  d                                           ; $6c8d: $14
	adc  c                                           ; $6c8e: $89
	rst  $28                                         ; $6c8f: $ef
	pop  af                                          ; $6c90: $f1
	dec  d                                           ; $6c91: $15
	ld   a, b                                        ; $6c92: $78
	ccf                                              ; $6c93: $3f
	pop  af                                          ; $6c94: $f1
	ld   a, [de]                                     ; $6c95: $1a

jr_0ac_6c96:
	ld   a, [hl]                                     ; $6c96: $7e
	rst  $28                                         ; $6c97: $ef
	ld   b, c                                        ; $6c98: $41
	ld   d, [hl]                                     ; $6c99: $56
	add  e                                           ; $6c9a: $83
	rst  $38                                         ; $6c9b: $ff
	ld   de, $dea6                                   ; $6c9c: $11 $a6 $de
	ld   a, [$6914]                                  ; $6c9f: $fa $14 $69
	inc  a                                           ; $6ca2: $3c
	ldh  a, [c]                                      ; $6ca3: $f2
	ld   a, [de]                                     ; $6ca4: $1a
	ld   l, d                                        ; $6ca5: $6a
	rst  $38                                         ; $6ca6: $ff
	pop  hl                                          ; $6ca7: $e1
	dec  [hl]                                        ; $6ca8: $35
	halt                                             ; $6ca9: $76
	ld   l, a                                        ; $6caa: $6f
	pop  hl                                          ; $6cab: $e1
	add  hl, sp                                      ; $6cac: $39
	ld   a, a                                        ; $6cad: $7f
	rst  $28                                         ; $6cae: $ef
	ld   hl, $8366                                   ; $6caf: $21 $66 $83
	rst  $38                                         ; $6cb2: $ff
	ld   de, $fea6                                   ; $6cb3: $11 $a6 $fe
	or   $16                                         ; $6cb6: $f6 $16
	ld   e, c                                        ; $6cb8: $59
	ld   a, $f1                                      ; $6cb9: $3e $f1
	dec  de                                          ; $6cbb: $1b
	ld   l, h                                        ; $6cbc: $6c
	rst  $28                                         ; $6cbd: $ef
	or   c                                           ; $6cbe: $b1
	ld   d, [hl]                                     ; $6cbf: $56
	add  h                                           ; $6cc0: $84
	xor  a                                           ; $6cc1: $af
	ld   sp, $bf86                                   ; $6cc2: $31 $86 $bf
	cp   $14                                         ; $6cc5: $fe $14
	add  a                                           ; $6cc7: $87
	add  c                                           ; $6cc8: $81
	rst  $38                                         ; $6cc9: $ff
	ld   de, $cdd6                                   ; $6cca: $11 $d6 $cd
	ld   hl, sp+$18                                  ; $6ccd: $f8 $18
	ld   e, b                                        ; $6ccf: $58
	add  hl, de                                      ; $6cd0: $19
	push af                                          ; $6cd1: $f5
	add  hl, de                                      ; $6cd2: $19
	ld   l, c                                        ; $6cd3: $69
	sbc  $f1                                         ; $6cd4: $de $f1
	dec  [hl]                                        ; $6cd6: $35
	halt                                             ; $6cd7: $76
	cpl                                              ; $6cd8: $2f
	pop  af                                          ; $6cd9: $f1
	add  hl, de                                      ; $6cda: $19
	ld   l, a                                        ; $6cdb: $6f
	rst  JumpTable                                         ; $6cdc: $df
	ld   d, c                                        ; $6cdd: $51
	ld   h, [hl]                                     ; $6cde: $66
	sub  c                                           ; $6cdf: $91
	rst  $28                                         ; $6ce0: $ef
	ld   de, $cd96                                   ; $6ce1: $11 $96 $cd
	db   $fd                                         ; $6ce4: $fd
	ld   d, $69                                      ; $6ce5: $16 $69
	ld   b, d                                        ; $6ce7: $42
	rst  $38                                         ; $6ce8: $ff
	ld   [de], a                                     ; $6ce9: $12
	and  a                                           ; $6cea: $a7
	db   $fc                                         ; $6ceb: $fc
	db   $f4                                         ; $6cec: $f4
	ld   d, $69                                      ; $6ced: $16 $69
	rra                                              ; $6cef: $1f

jr_0ac_6cf0:
	pop  af                                          ; $6cf0: $f1
	add  hl, de                                      ; $6cf1: $19
	ld   l, [hl]                                     ; $6cf2: $6e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cf3: $cf
	and  c                                           ; $6cf4: $a1
	ld   h, l                                        ; $6cf5: $65
	and  e                                           ; $6cf6: $a3
	ld   e, a                                        ; $6cf7: $5f
	and  c                                           ; $6cf8: $a1
	ld   h, a                                        ; $6cf9: $67
	cp   [hl]                                        ; $6cfa: $be
	cp   a                                           ; $6cfb: $bf
	inc  de                                          ; $6cfc: $13
	ld   h, a                                        ; $6cfd: $67
	add  c                                           ; $6cfe: $81
	rst  $38                                         ; $6cff: $ff
	ld   de, $fa87                                   ; $6d00: $11 $87 $fa
	rst  $30                                         ; $6d03: $f7
	ld   d, $4b                                      ; $6d04: $16 $4b
	inc  e                                           ; $6d06: $1c
	pop  af                                          ; $6d07: $f1
	jr   @+$60                                       ; $6d08: $18 $5e

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d0a: $cf
	pop  de                                          ; $6d0b: $d1
	ld   b, h                                        ; $6d0c: $44
	sub  l                                           ; $6d0d: $95
	ccf                                              ; $6d0e: $3f
	pop  de                                          ; $6d0f: $d1
	ld   b, [hl]                                     ; $6d10: $46
	cp   a                                           ; $6d11: $bf
	cp   a                                           ; $6d12: $bf
	ld   [de], a                                     ; $6d13: $12
	ld   d, a                                        ; $6d14: $57
	and  c                                           ; $6d15: $a1
	rst  $38                                         ; $6d16: $ff
	ld   de, $fa87                                   ; $6d17: $11 $87 $fa
	ld   hl, sp+$15                                  ; $6d1a: $f8 $15
	ld   c, e                                        ; $6d1c: $4b
	dec  e                                           ; $6d1d: $1d
	pop  af                                          ; $6d1e: $f1

jr_0ac_6d1f:
	rla                                              ; $6d1f: $17
	ld   e, a                                        ; $6d20: $5f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d21: $cf
	pop  bc                                          ; $6d22: $c1
	ld   b, e                                        ; $6d23: $43
	or   h                                           ; $6d24: $b4
	ld   l, a                                        ; $6d25: $6f
	ld   [hl], c                                     ; $6d26: $71
	ld   d, l                                        ; $6d27: $55
	db   $dd                                         ; $6d28: $dd
	rst  JumpTable                                         ; $6d29: $df
	ld   [de], a                                     ; $6d2a: $12
	add  hl, sp                                      ; $6d2b: $39
	add  d                                           ; $6d2c: $82
	rst  $38                                         ; $6d2d: $ff
	ld   de, $fa6b                                   ; $6d2e: $11 $6b $fa
	db   $f4                                         ; $6d31: $f4
	ld   [de], a                                     ; $6d32: $12
	ld   a, e                                        ; $6d33: $7b
	rra                                              ; $6d34: $1f
	pop  af                                          ; $6d35: $f1
	dec  d                                           ; $6d36: $15
	cp   a                                           ; $6d37: $bf
	cp   a                                           ; $6d38: $bf
	ld   d, c                                        ; $6d39: $51
	ld   d, $c1                                      ; $6d3a: $16 $c1
	rst  $38                                         ; $6d3c: $ff
	ld   de, $fb5a                                   ; $6d3d: $11 $5a $fb
	rst  $30                                         ; $6d40: $f7
	ld   de, $2f5d                                   ; $6d41: $11 $5d $2f
	pop  af                                          ; $6d44: $f1
	inc  de                                          ; $6d45: $13
	xor  a                                           ; $6d46: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d47: $cf
	ld   [hl], c                                     ; $6d48: $71
	ld   d, $c3                                      ; $6d49: $16 $c3
	rst  $38                                         ; $6d4b: $ff
	ld   de, $fc2a                                   ; $6d4c: $11 $2a $fc
	or   $11                                         ; $6d4f: $f6 $11
	ld   l, l                                        ; $6d51: $6d
	ccf                                              ; $6d52: $3f
	pop  af                                          ; $6d53: $f1
	ld   [de], a                                     ; $6d54: $12
	cp   a                                           ; $6d55: $bf
	cp   a                                           ; $6d56: $bf
	ld   d, c                                        ; $6d57: $51
	jr   jr_0ac_6d1f                                 ; $6d58: $18 $c5

	rst  $38                                         ; $6d5a: $ff
	ld   de, $fd1e                                   ; $6d5b: $11 $1e $fd
	ldh  a, [c]                                      ; $6d5e: $f2
	ld   de, $9f9b                                   ; $6d5f: $11 $9b $9f
	add  c                                           ; $6d62: $81
	ld   de, $ffff                                   ; $6d63: $11 $ff $ff
	ld   de, $9e1c                                   ; $6d66: $11 $1c $9e
	pop  af                                          ; $6d69: $f1
	ld   de, $ff3f                                   ; $6d6a: $11 $3f $ff
	pop  hl                                          ; $6d6d: $e1
	ld   de, $ffc8                                   ; $6d6e: $11 $c8 $ff
	ld   de, $fe17                                   ; $6d71: $11 $17 $fe
	ld   hl, sp+$11                                  ; $6d74: $f8 $11
	ld   e, l                                        ; $6d76: $5d
	sbc  a                                           ; $6d77: $9f
	pop  af                                          ; $6d78: $f1
	ld   de, $ffef                                   ; $6d79: $11 $ef $ff
	ld   de, $af18                                   ; $6d7c: $11 $18 $af
	pop  af                                          ; $6d7f: $f1
	ld   de, $ff2f                                   ; $6d80: $11 $2f $ff
	pop  bc                                          ; $6d83: $c1
	ld   [de], a                                     ; $6d84: $12
	cp   e                                           ; $6d85: $bb
	rst  $38                                         ; $6d86: $ff
	ld   de, $ff1b                                   ; $6d87: $11 $1b $ff
	di                                               ; $6d8a: $f3
	ld   de, $ff7b                                   ; $6d8b: $11 $7b $ff
	ld   sp, rAUD1ENV                                   ; $6d8e: $31 $12 $ff
	db   $fd                                         ; $6d91: $fd
	ld   de, $ff1a                                   ; $6d92: $11 $1a $ff
	pop  af                                          ; $6d95: $f1
	ld   de, $ffdf                                   ; $6d96: $11 $df $ff
	ld   de, $cf17                                   ; $6d99: $11 $17 $cf
	pop  af                                          ; $6d9c: $f1
	ld   de, $ff7f                                   ; $6d9d: $11 $7f $ff
	ld   b, c                                        ; $6da0: $41
	inc  de                                          ; $6da1: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6da2: $cf
	ldh  a, [c]                                      ; $6da3: $f2
	ld   de, $ff2f                                   ; $6da4: $11 $2f $ff
	sub  c                                           ; $6da7: $91
	ld   de, $f5cf                                   ; $6da8: $11 $cf $f5
	ld   de, $ff1f                                   ; $6dab: $11 $1f $ff
	sub  c                                           ; $6dae: $91
	ld   de, $f6cf                                   ; $6daf: $11 $cf $f6
	ld   de, $ff1d                                   ; $6db2: $11 $1d $ff
	add  c                                           ; $6db5: $81
	ld   de, $f6ff                                   ; $6db6: $11 $ff $f6
	ld   de, $ff2e                                   ; $6db9: $11 $2e $ff
	ld   d, c                                        ; $6dbc: $51
	inc  de                                          ; $6dbd: $13
	rst  $38                                         ; $6dbe: $ff
	or   [hl]                                        ; $6dbf: $b6
	ld   de, $fc5f                                   ; $6dc0: $11 $5f $fc
	ld   de, $ff1c                                   ; $6dc3: $11 $1c $ff
	add  e                                           ; $6dc6: $83
	ld   [de], a                                     ; $6dc7: $12
	sbc  a                                           ; $6dc8: $9f
	or   $11                                         ; $6dc9: $f6 $11
	rra                                              ; $6dcb: $1f
	ld   a, [$1661]                                  ; $6dcc: $fa $61 $16
	rst  $38                                         ; $6dcf: $ff
	jp   nc, $bf11                                   ; $6dd0: $d2 $11 $bf

	or   $31                                         ; $6dd3: $f6 $31
	dec  sp                                          ; $6dd5: $3b
	rst  $38                                         ; $6dd6: $ff
	ld   h, c                                        ; $6dd7: $61
	inc  de                                          ; $6dd8: $13
	rst  $38                                         ; $6dd9: $ff
	and  l                                           ; $6dda: $a5
	ld   de, $fc7f                                   ; $6ddb: $11 $7f $fc
	ld   de, $ff1f                                   ; $6dde: $11 $1f $ff
	ld   h, d                                        ; $6de1: $62
	inc  d                                           ; $6de2: $14
	rst  JumpTable                                         ; $6de3: $df
	db   $f4                                         ; $6de4: $f4
	ld   de, $f85f                                   ; $6de5: $11 $5f $f8
	ld   b, c                                        ; $6de8: $41
	ld   [$a1ff], sp                                 ; $6de9: $08 $ff $a1
	ld   de, $c6ff                                   ; $6dec: $11 $ff $c6
	ld   de, $fe4e                                   ; $6def: $11 $4e $fe
	ld   b, c                                        ; $6df2: $41
	ld   a, [de]                                     ; $6df3: $1a
	rst  $38                                         ; $6df4: $ff
	add  h                                           ; $6df5: $84
	ld   [de], a                                     ; $6df6: $12
	xor  a                                           ; $6df7: $af
	rst  $30                                         ; $6df8: $f7
	ld   de, $f96f                                   ; $6df9: $11 $6f $f9
	ld   d, c                                        ; $6dfc: $51
	daa                                              ; $6dfd: $27
	rst  $38                                         ; $6dfe: $ff
	sub  c                                           ; $6dff: $91
	inc  de                                          ; $6e00: $13
	rst  $38                                         ; $6e01: $ff
	and  l                                           ; $6e02: $a5
	ld   [de], a                                     ; $6e03: $12
	ld   l, a                                        ; $6e04: $6f
	ei                                               ; $6e05: $fb
	ld   de, $fa1f                                   ; $6e06: $11 $1f $fa
	ld   h, c                                        ; $6e09: $61
	dec  d                                           ; $6e0a: $15
	rst  $38                                         ; $6e0b: $ff
	jp   nz, rAUD1LEN                                   ; $6e0c: $c2 $11 $ff

	sub  $22                                         ; $6e0f: $d6 $22
	ld   e, h                                        ; $6e11: $5c
	cp   $31                                         ; $6e12: $fe $31
	rra                                              ; $6e14: $1f
	ei                                               ; $6e15: $fb
	ld   d, d                                        ; $6e16: $52
	ld   [hl], $df                                   ; $6e17: $36 $df
	jp   $ef11                                       ; $6e19: $c3 $11 $ef


	and  $22                                         ; $6e1c: $e6 $22
	ld   l, h                                        ; $6e1e: $6c
	cp   $31                                         ; $6e1f: $fe $31
	rra                                              ; $6e21: $1f
	db   $fc                                         ; $6e22: $fc
	ld   h, d                                        ; $6e23: $62
	ld   [hl], $bf                                   ; $6e24: $36 $bf
	jp   rAUD1LEN                                       ; $6e26: $c3 $11 $ff


	add  $24                                         ; $6e29: $c6 $24
	ld   l, h                                        ; $6e2b: $6c
	db   $fc                                         ; $6e2c: $fc
	ld   hl, $fb1f                                   ; $6e2d: $21 $1f $fb
	ld   h, d                                        ; $6e30: $62
	ld   d, a                                        ; $6e31: $57
	rst  JumpTable                                         ; $6e32: $df
	and  c                                           ; $6e33: $a1
	inc  d                                           ; $6e34: $14
	rst  $38                                         ; $6e35: $ff
	and  h                                           ; $6e36: $a4
	ld   [hl], $8e                                   ; $6e37: $36 $8e
	rst  $20                                         ; $6e39: $e7
	ld   de, $d7af                                   ; $6e3a: $11 $af $d7
	inc  h                                           ; $6e3d: $24
	ld   a, c                                        ; $6e3e: $79
	db   $fd                                         ; $6e3f: $fd
	ld   d, c                                        ; $6e40: $51
	rra                                              ; $6e41: $1f
	db   $fc                                         ; $6e42: $fc
	ld   h, d                                        ; $6e43: $62
	ld   b, a                                        ; $6e44: $47
	cp   a                                           ; $6e45: $bf
	jp   rAUD1LEN                                       ; $6e46: $c3 $11 $ff


	or   l                                           ; $6e49: $b5
	ld   h, $8d                                      ; $6e4a: $26 $8d
	ld   hl, sp+$11                                  ; $6e4c: $f8 $11
	ld   l, a                                        ; $6e4e: $6f
	ld   sp, hl                                      ; $6e4f: $f9
	inc  [hl]                                        ; $6e50: $34
	ld   a, c                                        ; $6e51: $79
	xor  $51                                         ; $6e52: $ee $51
	ld   e, $fd                                      ; $6e54: $1e $fd
	ld   h, d                                        ; $6e56: $62
	ld   d, a                                        ; $6e57: $57
	cp   a                                           ; $6e58: $bf
	or   d                                           ; $6e59: $b2
	ld   [de], a                                     ; $6e5a: $12
	rst  $38                                         ; $6e5b: $ff
	or   l                                           ; $6e5c: $b5
	ld   [hl], $7c                                   ; $6e5d: $36 $7c
	add  sp, $11                                     ; $6e5f: $e8 $11
	sbc  a                                           ; $6e61: $9f
	rst  $20                                         ; $6e62: $e7
	ld   [hl], $98                                   ; $6e63: $36 $98
	call c, $1f51                                    ; $6e65: $dc $51 $1f
	ei                                               ; $6e68: $fb
	ld   b, h                                        ; $6e69: $44
	adc  c                                           ; $6e6a: $89
	call $1971                                       ; $6e6b: $cd $71 $19
	cp   $72                                         ; $6e6e: $fe $72
	ld   e, c                                        ; $6e70: $59
	cp   l                                           ; $6e71: $bd
	and  e                                           ; $6e72: $a3
	ld   [de], a                                     ; $6e73: $12
	rst  $38                                         ; $6e74: $ff
	or   e                                           ; $6e75: $b3
	jr   c, @-$51                                    ; $6e76: $38 $ad

	add  $11                                         ; $6e78: $c6 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e7a: $cf
	and  $26                                         ; $6e7b: $e6 $26
	sbc  l                                           ; $6e7d: $9d
	ret  z                                           ; $6e7e: $c8

	ld   de, $f98f                                   ; $6e7f: $11 $8f $f9
	dec  [hl]                                        ; $6e82: $35
	adc  h                                           ; $6e83: $8c
	reti                                             ; $6e84: $d9


	ld   hl, $fb5f                                   ; $6e85: $21 $5f $fb
	ld   d, l                                        ; $6e88: $55
	ld   a, c                                        ; $6e89: $79
	jp   z, Jump_0ac_4e41                            ; $6e8a: $ca $41 $4e

	ld   a, [$7a55]                                  ; $6e8d: $fa $55 $7a
	jp   z, Jump_0ac_4e41                            ; $6e90: $ca $41 $4e

	ei                                               ; $6e93: $fb
	ld   d, l                                        ; $6e94: $55
	ld   a, d                                        ; $6e95: $7a
	ret                                              ; $6e96: $c9


	ld   b, c                                        ; $6e97: $41
	ld   c, [hl]                                     ; $6e98: $4e
	ei                                               ; $6e99: $fb
	ld   b, l                                        ; $6e9a: $45
	ld   a, d                                        ; $6e9b: $7a
	reti                                             ; $6e9c: $d9


	ld   b, c                                        ; $6e9d: $41
	ld   e, [hl]                                     ; $6e9e: $5e
	db   $fc                                         ; $6e9f: $fc
	ld   b, l                                        ; $6ea0: $45
	ld   l, d                                        ; $6ea1: $6a
	reti                                             ; $6ea2: $d9


	ld   b, c                                        ; $6ea3: $41
	ld   l, a                                        ; $6ea4: $6f
	db   $fc                                         ; $6ea5: $fc
	ld   b, [hl]                                     ; $6ea6: $46
	ld   l, c                                        ; $6ea7: $69
	ret                                              ; $6ea8: $c9


	ld   b, c                                        ; $6ea9: $41
	ld   a, [hl]                                     ; $6eaa: $7e
	db   $eb                                         ; $6eab: $eb
	ld   b, a                                        ; $6eac: $47
	ld   l, d                                        ; $6ead: $6a
	xor  b                                           ; $6eae: $a8
	ld   b, c                                        ; $6eaf: $41
	sbc  l                                           ; $6eb0: $9d
	ld   [$7948], a                                  ; $6eb1: $ea $48 $79
	sub  a                                           ; $6eb4: $97
	ld   [hl+], a                                    ; $6eb5: $22
	call Call_0ac_67e8                               ; $6eb6: $cd $e8 $67
	ld   l, d                                        ; $6eb9: $6a
	sub  [hl]                                        ; $6eba: $96
	ld   d, $dc                                      ; $6ebb: $16 $dc
	add  $88                                         ; $6ebd: $c6 $88
	adc  d                                           ; $6ebf: $8a
	ld   h, l                                        ; $6ec0: $65
	ld   a, [de]                                     ; $6ec1: $1a
	call c, $97a5                                    ; $6ec2: $dc $a5 $97
	sbc  c                                           ; $6ec5: $99

jr_0ac_6ec6:
	ld   h, e                                        ; $6ec6: $63
	dec  de                                          ; $6ec7: $1b
	sbc  $a6                                         ; $6ec8: $de $a6
	add  [hl]                                        ; $6eca: $86
	xor  c                                           ; $6ecb: $a9
	ld   [hl], c                                     ; $6ecc: $71
	ld   a, [hl+]                                    ; $6ecd: $2a
	call $8687                                       ; $6ece: $cd $87 $86
	sbc  b                                           ; $6ed1: $98
	ld   [hl], c                                     ; $6ed2: $71
	dec  sp                                          ; $6ed3: $3b
	cp   l                                           ; $6ed4: $bd
	adc  b                                           ; $6ed5: $88
	add  a                                           ; $6ed6: $87
	sbc  b                                           ; $6ed7: $98
	ld   [hl], c                                     ; $6ed8: $71
	ld   c, d                                        ; $6ed9: $4a
	call Call_0ac_7789                               ; $6eda: $cd $89 $77
	adc  b                                           ; $6edd: $88
	ld   [hl], c                                     ; $6ede: $71
	ld   e, d                                        ; $6edf: $5a
	call c, Call_0ac_7878                            ; $6ee0: $dc $78 $78
	sbc  b                                           ; $6ee3: $98
	ld   h, c                                        ; $6ee4: $61
	ld   e, d                                        ; $6ee5: $5a
	call z, Call_0ac_7879                            ; $6ee6: $cc $79 $78
	sbc  c                                           ; $6ee9: $99
	ld   h, c                                        ; $6eea: $61
	ld   e, d                                        ; $6eeb: $5a
	call z, Call_0ac_7988                            ; $6eec: $cc $88 $79
	sbc  c                                           ; $6eef: $99
	ld   h, c                                        ; $6ef0: $61
	ld   c, c                                        ; $6ef1: $49
	call c, Call_0ac_7989                            ; $6ef2: $dc $89 $79
	sbc  c                                           ; $6ef5: $99
	ld   [hl], c                                     ; $6ef6: $71
	jr   c, jr_0ac_6ec6                              ; $6ef7: $38 $cd

	adc  b                                           ; $6ef9: $88
	adc  c                                           ; $6efa: $89
	sbc  b                                           ; $6efb: $98
	sub  d                                           ; $6efc: $92
	ld   h, $ce                                      ; $6efd: $26 $ce
	sbc  b                                           ; $6eff: $98
	add  a                                           ; $6f00: $87
	sbc  c                                           ; $6f01: $99
	and  h                                           ; $6f02: $a4
	dec  d                                           ; $6f03: $15
	xor  [hl]                                        ; $6f04: $ae
	cp   b                                           ; $6f05: $b8
	adc  b                                           ; $6f06: $88
	adc  c                                           ; $6f07: $89
	sub  l                                           ; $6f08: $95
	inc  h                                           ; $6f09: $24
	adc  h                                           ; $6f0a: $8c
	ret                                              ; $6f0b: $c9


	sbc  b                                           ; $6f0c: $98
	adc  b                                           ; $6f0d: $88
	and  a                                           ; $6f0e: $a7
	inc  sp                                          ; $6f0f: $33
	ld   l, e                                        ; $6f10: $6b
	jp   z, $87a9                                    ; $6f11: $ca $a9 $87

	sbc  c                                           ; $6f14: $99
	ld   b, d                                        ; $6f15: $42
	ld   e, d                                        ; $6f16: $5a
	jp   z, $87aa                                    ; $6f17: $ca $aa $87

	ld   a, d                                        ; $6f1a: $7a
	ld   h, e                                        ; $6f1b: $63
	scf                                              ; $6f1c: $37
	res  3, d                                        ; $6f1d: $cb $9a
	sbc  b                                           ; $6f1f: $98
	ld   l, b                                        ; $6f20: $68
	sub  h                                           ; $6f21: $94
	dec  [hl]                                        ; $6f22: $35
	xor  h                                           ; $6f23: $ac
	sbc  d                                           ; $6f24: $9a
	xor  d                                           ; $6f25: $aa
	add  a                                           ; $6f26: $87
	add  [hl]                                        ; $6f27: $86
	inc  sp                                          ; $6f28: $33
	ld   l, e                                        ; $6f29: $6b
	cp   d                                           ; $6f2a: $ba
	ret                                              ; $6f2b: $c9


	add  a                                           ; $6f2c: $87
	adc  c                                           ; $6f2d: $89
	ld   d, e                                        ; $6f2e: $53
	ld   b, a                                        ; $6f2f: $47
	cp   d                                           ; $6f30: $ba
	cp   d                                           ; $6f31: $ba
	sub  a                                           ; $6f32: $97
	ld   a, c                                        ; $6f33: $79
	ld   [hl], h                                     ; $6f34: $74
	inc  [hl]                                        ; $6f35: $34
	sbc  h                                           ; $6f36: $9c
	call z, Call_0ac_67a8                            ; $6f37: $cc $a8 $67
	and  [hl]                                        ; $6f3a: $a6
	ld   [hl-], a                                    ; $6f3b: $32
	ld   l, e                                        ; $6f3c: $6b
	cp   h                                           ; $6f3d: $bc
	cp   c                                           ; $6f3e: $b9
	halt                                             ; $6f3f: $76
	adc  b                                           ; $6f40: $88
	ld   d, d                                        ; $6f41: $52
	scf                                              ; $6f42: $37
	call z, $97bc                                    ; $6f43: $cc $bc $97
	ld   l, c                                        ; $6f46: $69
	add  h                                           ; $6f47: $84
	inc  h                                           ; $6f48: $24
	adc  e                                           ; $6f49: $8b
	cp   h                                           ; $6f4a: $bc
	ret                                              ; $6f4b: $c9


	ld   [hl], a                                     ; $6f4c: $77
	add  [hl]                                        ; $6f4d: $86
	ld   b, e                                        ; $6f4e: $43
	ld   c, c                                        ; $6f4f: $49
	cp   h                                           ; $6f50: $bc
	jp   z, Jump_0ac_7986                            ; $6f51: $ca $86 $79

	ld   h, h                                        ; $6f54: $64
	dec  [hl]                                        ; $6f55: $35
	xor  e                                           ; $6f56: $ab
	call z, Call_0ac_68a7                            ; $6f57: $cc $a7 $68
	and  [hl]                                        ; $6f5a: $a6
	inc  sp                                          ; $6f5b: $33
	ld   l, e                                        ; $6f5c: $6b
	cp   e                                           ; $6f5d: $bb
	db   $db                                         ; $6f5e: $db
	halt                                             ; $6f5f: $76
	adc  d                                           ; $6f60: $8a
	ld   h, e                                        ; $6f61: $63
	dec  h                                           ; $6f62: $25
	xor  e                                           ; $6f63: $ab
	call Call_0ac_68a7                               ; $6f64: $cd $a7 $68
	and  a                                           ; $6f67: $a7
	ld   [hl-], a                                    ; $6f68: $32
	ld   e, e                                        ; $6f69: $5b
	call c, $77c9                                    ; $6f6a: $dc $c9 $77
	sbc  e                                           ; $6f6d: $9b
	ld   [hl], e                                     ; $6f6e: $73
	inc  d                                           ; $6f6f: $14
	sbc  h                                           ; $6f70: $9c
	call z, Call_0ac_69a8                            ; $6f71: $cc $a8 $69
	or   a                                           ; $6f74: $b7
	ld   sp, $bb49                                   ; $6f75: $31 $49 $bb
	jp   z, $8b87                                    ; $6f78: $ca $87 $8b

	ld   [hl], e                                     ; $6f7b: $73
	inc  de                                          ; $6f7c: $13
	sbc  h                                           ; $6f7d: $9c
	res  7, c                                        ; $6f7e: $cb $b9
	adc  b                                           ; $6f80: $88
	xor  b                                           ; $6f81: $a8
	ld   b, d                                        ; $6f82: $42
	scf                                              ; $6f83: $37
	cp   h                                           ; $6f84: $bc
	call z, Call_0ac_7a97                            ; $6f85: $cc $97 $7a
	sub  h                                           ; $6f88: $94
	ld   [hl+], a                                    ; $6f89: $22
	ld   l, d                                        ; $6f8a: $6a
	call z, $87db                                    ; $6f8b: $cc $db $87
	adc  d                                           ; $6f8e: $8a
	ld   h, d                                        ; $6f8f: $62
	inc  h                                           ; $6f90: $24
	sbc  e                                           ; $6f91: $9b
	cp   l                                           ; $6f92: $bd
	cp   b                                           ; $6f93: $b8
	ld   [hl], a                                     ; $6f94: $77
	xor  b                                           ; $6f95: $a8
	ld   b, d                                        ; $6f96: $42
	scf                                              ; $6f97: $37
	cp   l                                           ; $6f98: $bd
	cp   e                                           ; $6f99: $bb
	sbc  b                                           ; $6f9a: $98
	ld   a, c                                        ; $6f9b: $79
	sub  l                                           ; $6f9c: $95
	ld   [hl+], a                                    ; $6f9d: $22
	ld   e, d                                        ; $6f9e: $5a
	cp   h                                           ; $6f9f: $bc
	call z, Call_0ac_7a86                            ; $6fa0: $cc $86 $7a
	sub  h                                           ; $6fa3: $94
	inc  hl                                          ; $6fa4: $23
	ld   a, d                                        ; $6fa5: $7a
	cp   e                                           ; $6fa6: $bb
	cp   d                                           ; $6fa7: $ba
	ld   [hl], a                                     ; $6fa8: $77
	xor  e                                           ; $6fa9: $ab
	ld   [hl], e                                     ; $6faa: $73
	dec  h                                           ; $6fab: $25
	adc  d                                           ; $6fac: $8a
	xor  h                                           ; $6fad: $ac
	ret                                              ; $6fae: $c9


	ld   [hl], a                                     ; $6faf: $77
	cp   d                                           ; $6fb0: $ba
	ld   d, d                                        ; $6fb1: $52
	ld   h, $8a                                      ; $6fb2: $26 $8a
	xor  h                                           ; $6fb4: $ac
	cp   b                                           ; $6fb5: $b8
	ld   a, b                                        ; $6fb6: $78
	cp   c                                           ; $6fb7: $b9
	ld   b, c                                        ; $6fb8: $41
	scf                                              ; $6fb9: $37
	adc  d                                           ; $6fba: $8a
	xor  l                                           ; $6fbb: $ad
	ret  z                                           ; $6fbc: $c8

	adc  c                                           ; $6fbd: $89
	xor  c                                           ; $6fbe: $a9
	ld   b, c                                        ; $6fbf: $41
	scf                                              ; $6fc0: $37
	sbc  c                                           ; $6fc1: $99
	xor  h                                           ; $6fc2: $ac
	jp   z, $a798                                    ; $6fc3: $ca $98 $a7

	ld   b, d                                        ; $6fc6: $42
	ld   d, a                                        ; $6fc7: $57
	adc  c                                           ; $6fc8: $89
	xor  l                                           ; $6fc9: $ad
	jp   c, $9878                                    ; $6fca: $da $78 $98

	ld   b, c                                        ; $6fcd: $41
	ld   b, a                                        ; $6fce: $47
	adc  c                                           ; $6fcf: $89
	xor  l                                           ; $6fd0: $ad
	reti                                             ; $6fd1: $d9


	ld   [hl], a                                     ; $6fd2: $77
	xor  c                                           ; $6fd3: $a9
	ld   d, d                                        ; $6fd4: $52
	scf                                              ; $6fd5: $37
	ld   a, c                                        ; $6fd6: $79
	sbc  l                                           ; $6fd7: $9d
	ld   [$8a86], a                                  ; $6fd8: $ea $86 $8a
	ld   [hl], e                                     ; $6fdb: $73
	ld   [hl], $77                                   ; $6fdc: $36 $77
	adc  h                                           ; $6fde: $8c
	db   $eb                                         ; $6fdf: $eb
	add  a                                           ; $6fe0: $87
	adc  d                                           ; $6fe1: $8a
	add  h                                           ; $6fe2: $84
	ld   h, $77                                      ; $6fe3: $26 $77
	sbc  c                                           ; $6fe5: $99
	call c, $89a8                                    ; $6fe6: $dc $a8 $89
	add  [hl]                                        ; $6fe9: $86
	inc  [hl]                                        ; $6fea: $34
	ld   h, a                                        ; $6feb: $67
	ld   [hl], a                                     ; $6fec: $77
	xor  l                                           ; $6fed: $ad
	reti                                             ; $6fee: $d9


	ld   [hl], a                                     ; $6fef: $77
	sbc  c                                           ; $6ff0: $99
	ld   d, d                                        ; $6ff1: $52
	ld   b, a                                        ; $6ff2: $47
	add  a                                           ; $6ff3: $87
	adc  e                                           ; $6ff4: $8b
	call z, $8988                                    ; $6ff5: $cc $88 $89
	ld   [hl], e                                     ; $6ff8: $73
	dec  [hl]                                        ; $6ff9: $35
	add  a                                           ; $6ffa: $87
	ld   a, d                                        ; $6ffb: $7a
	call $88b9                                       ; $6ffc: $cd $b9 $88
	sub  [hl]                                        ; $6fff: $96
	inc  sp                                          ; $7000: $33
	ld   d, a                                        ; $7001: $57
	ld   a, b                                        ; $7002: $78
	xor  l                                           ; $7003: $ad
	jp   z, $8888                                    ; $7004: $ca $88 $88

	ld   h, e                                        ; $7007: $63
	ld   [hl], $77                                   ; $7008: $36 $77
	adc  e                                           ; $700a: $8b
	db   $dd                                         ; $700b: $dd
	xor  b                                           ; $700c: $a8
	adc  c                                           ; $700d: $89
	add  l                                           ; $700e: $85
	inc  sp                                          ; $700f: $33
	ld   h, a                                        ; $7010: $67
	ld   a, b                                        ; $7011: $78
	cp   l                                           ; $7012: $bd
	jp   z, $9889                                    ; $7013: $ca $89 $98

	ld   h, e                                        ; $7016: $63
	dec  [hl]                                        ; $7017: $35
	ld   [hl], a                                     ; $7018: $77
	adc  d                                           ; $7019: $8a
	call c, $99a9                                    ; $701a: $dc $a9 $99
	add  [hl]                                        ; $701d: $86
	inc  sp                                          ; $701e: $33
	ld   h, a                                        ; $701f: $67
	ld   [hl], a                                     ; $7020: $77
	xor  l                                           ; $7021: $ad
	res  3, c                                        ; $7022: $cb $99
	sbc  b                                           ; $7024: $98
	ld   h, e                                        ; $7025: $63
	ld   b, [hl]                                     ; $7026: $46
	halt                                             ; $7027: $76
	ld   a, d                                        ; $7028: $7a
	call $88ba                                       ; $7029: $cd $ba $88
	sub  a                                           ; $702c: $97
	ld   b, d                                        ; $702d: $42
	ld   d, a                                        ; $702e: $57
	ld   [hl], a                                     ; $702f: $77
	sbc  h                                           ; $7030: $9c
	db   $db                                         ; $7031: $db
	xor  c                                           ; $7032: $a9
	sbc  c                                           ; $7033: $99
	ld   [hl], l                                     ; $7034: $75
	inc  [hl]                                        ; $7035: $34
	ld   h, [hl]                                     ; $7036: $66
	ld   a, b                                        ; $7037: $78
	xor  l                                           ; $7038: $ad
	res  5, c                                        ; $7039: $cb $a9
	sub  a                                           ; $703b: $97
	ld   h, e                                        ; $703c: $63
	ld   [hl], $76                                   ; $703d: $36 $76
	adc  d                                           ; $703f: $8a
	db   $dd                                         ; $7040: $dd
	cp   d                                           ; $7041: $ba
	sbc  b                                           ; $7042: $98
	add  [hl]                                        ; $7043: $86
	ld   b, e                                        ; $7044: $43
	ld   b, a                                        ; $7045: $47
	ld   [hl], a                                     ; $7046: $77
	adc  e                                           ; $7047: $8b
	call c, $98aa                                    ; $7048: $dc $aa $98
	ld   [hl], h                                     ; $704b: $74
	inc  [hl]                                        ; $704c: $34
	ld   h, [hl]                                     ; $704d: $66
	ld   l, c                                        ; $704e: $69
	xor  h                                           ; $704f: $ac
	res  3, d                                        ; $7050: $cb $9a
	sbc  c                                           ; $7052: $99
	ld   h, e                                        ; $7053: $63
	dec  [hl]                                        ; $7054: $35
	halt                                             ; $7055: $76
	ld   l, b                                        ; $7056: $68
	cp   l                                           ; $7057: $bd
	res  5, d                                        ; $7058: $cb $aa
	sub  a                                           ; $705a: $97
	ld   d, d                                        ; $705b: $52
	dec  [hl]                                        ; $705c: $35
	ld   [hl], a                                     ; $705d: $77
	adc  d                                           ; $705e: $8a
	call $99ca                                       ; $705f: $cd $ca $99
	sub  a                                           ; $7062: $97
	ld   b, d                                        ; $7063: $42
	ld   [hl], $77                                   ; $7064: $36 $77
	adc  d                                           ; $7066: $8a
	db   $dd                                         ; $7067: $dd
	cp   d                                           ; $7068: $ba
	sbc  c                                           ; $7069: $99
	add  [hl]                                        ; $706a: $86
	ld   [hl-], a                                    ; $706b: $32
	ld   b, a                                        ; $706c: $47
	ld   h, a                                        ; $706d: $67
	adc  e                                           ; $706e: $8b
	db   $dd                                         ; $706f: $dd
	cp   d                                           ; $7070: $ba
	xor  c                                           ; $7071: $a9
	ld   [hl], l                                     ; $7072: $75
	inc  sp                                          ; $7073: $33
	ld   d, [hl]                                     ; $7074: $56
	ld   l, b                                        ; $7075: $68
	xor  e                                           ; $7076: $ab
	call c, $98ba                                    ; $7077: $dc $ba $98
	ld   [hl], l                                     ; $707a: $75
	inc  hl                                          ; $707b: $23
	ld   d, a                                        ; $707c: $57
	ld   a, b                                        ; $707d: $78
	xor  h                                           ; $707e: $ac
	call c, $98ba                                    ; $707f: $dc $ba $98
	ld   [hl], e                                     ; $7082: $73
	inc  hl                                          ; $7083: $23
	ld   h, [hl]                                     ; $7084: $66
	ld   a, c                                        ; $7085: $79
	cp   h                                           ; $7086: $bc
	call z, $97aa                                    ; $7087: $cc $aa $97
	ld   h, e                                        ; $708a: $63
	inc  hl                                          ; $708b: $23
	ld   h, a                                        ; $708c: $67
	ld   a, c                                        ; $708d: $79
	xor  l                                           ; $708e: $ad
	db   $db                                         ; $708f: $db
	xor  c                                           ; $7090: $a9
	add  a                                           ; $7091: $87
	ld   h, e                                        ; $7092: $63
	inc  hl                                          ; $7093: $23
	ld   h, a                                        ; $7094: $67
	ld   a, c                                        ; $7095: $79
	cp   h                                           ; $7096: $bc
	call c, $87ba                                    ; $7097: $dc $ba $87
	ld   d, e                                        ; $709a: $53
	inc  h                                           ; $709b: $24
	ld   h, a                                        ; $709c: $67
	ld   a, c                                        ; $709d: $79
	cp   h                                           ; $709e: $bc
	call z, $97ba                                    ; $709f: $cc $ba $97
	ld   d, e                                        ; $70a2: $53
	inc  hl                                          ; $70a3: $23
	ld   h, a                                        ; $70a4: $67
	adc  b                                           ; $70a5: $88
	xor  l                                           ; $70a6: $ad
	call c, $8799                                    ; $70a7: $dc $99 $87
	ld   d, e                                        ; $70aa: $53
	inc  h                                           ; $70ab: $24
	ld   h, [hl]                                     ; $70ac: $66
	ld   a, c                                        ; $70ad: $79
	cp   l                                           ; $70ae: $bd
	cp   e                                           ; $70af: $bb
	cp   e                                           ; $70b0: $bb
	add  a                                           ; $70b1: $87
	ld   d, e                                        ; $70b2: $53
	inc  sp                                          ; $70b3: $33
	ld   h, a                                        ; $70b4: $67
	adc  c                                           ; $70b5: $89
	xor  e                                           ; $70b6: $ab
	call z, $97b9                                    ; $70b7: $cc $b9 $97
	ld   h, h                                        ; $70ba: $64
	inc  sp                                          ; $70bb: $33
	ld   h, a                                        ; $70bc: $67
	ld   a, c                                        ; $70bd: $79
	xor  e                                           ; $70be: $ab
	cp   h                                           ; $70bf: $bc
	cp   d                                           ; $70c0: $ba
	sub  a                                           ; $70c1: $97
	ld   [hl], h                                     ; $70c2: $74
	ld   [hl+], a                                    ; $70c3: $22
	ld   d, a                                        ; $70c4: $57
	ld   a, c                                        ; $70c5: $79
	xor  h                                           ; $70c6: $ac
	cp   h                                           ; $70c7: $bc
	cp   c                                           ; $70c8: $b9
	sub  a                                           ; $70c9: $97
	ld   [hl], l                                     ; $70ca: $75
	ld   [hl-], a                                    ; $70cb: $32
	ld   d, a                                        ; $70cc: $57
	ld   a, b                                        ; $70cd: $78
	sbc  h                                           ; $70ce: $9c
	res  5, c                                        ; $70cf: $cb $a9
	xor  b                                           ; $70d1: $a8
	ld   [hl], l                                     ; $70d2: $75
	inc  sp                                          ; $70d3: $33
	ld   b, a                                        ; $70d4: $47
	adc  b                                           ; $70d5: $88
	sbc  d                                           ; $70d6: $9a
	res  7, d                                        ; $70d7: $cb $ba
	sbc  c                                           ; $70d9: $99
	ld   [hl], a                                     ; $70da: $77
	ld   d, e                                        ; $70db: $53
	dec  [hl]                                        ; $70dc: $35
	ld   a, b                                        ; $70dd: $78
	sbc  d                                           ; $70de: $9a
	xor  e                                           ; $70df: $ab
	res  5, c                                        ; $70e0: $cb $a9
	add  a                                           ; $70e2: $87
	ld   d, h                                        ; $70e3: $54
	inc  [hl]                                        ; $70e4: $34
	ld   a, b                                        ; $70e5: $78
	adc  c                                           ; $70e6: $89
	sbc  d                                           ; $70e7: $9a
	call z, $87b9                                    ; $70e8: $cc $b9 $87
	ld   h, h                                        ; $70eb: $64
	inc  sp                                          ; $70ec: $33
	ld   l, b                                        ; $70ed: $68
	adc  c                                           ; $70ee: $89
	xor  d                                           ; $70ef: $aa
	cp   e                                           ; $70f0: $bb
	cp   c                                           ; $70f1: $b9
	sbc  c                                           ; $70f2: $99
	ld   [hl], l                                     ; $70f3: $75
	inc  sp                                          ; $70f4: $33
	ld   b, a                                        ; $70f5: $47
	adc  b                                           ; $70f6: $88
	sbc  d                                           ; $70f7: $9a
	cp   e                                           ; $70f8: $bb
	xor  c                                           ; $70f9: $a9
	sbc  c                                           ; $70fa: $99
	halt                                             ; $70fb: $76
	ld   d, e                                        ; $70fc: $53
	dec  [hl]                                        ; $70fd: $35
	adc  c                                           ; $70fe: $89
	sbc  c                                           ; $70ff: $99
	cp   h                                           ; $7100: $bc
	res  3, c                                        ; $7101: $cb $99
	add  a                                           ; $7103: $87
	ld   d, h                                        ; $7104: $54
	inc  [hl]                                        ; $7105: $34
	ld   a, b                                        ; $7106: $78
	sbc  c                                           ; $7107: $99
	xor  h                                           ; $7108: $ac
	res  5, c                                        ; $7109: $cb $a9
	sbc  b                                           ; $710b: $98
	ld   [hl], l                                     ; $710c: $75
	ld   b, e                                        ; $710d: $43
	ld   d, a                                        ; $710e: $57
	adc  b                                           ; $710f: $88
	sbc  d                                           ; $7110: $9a
	xor  h                                           ; $7111: $ac
	ret                                              ; $7112: $c9


	sbc  b                                           ; $7113: $98
	add  [hl]                                        ; $7114: $86
	ld   b, e                                        ; $7115: $43
	ld   [hl], $78                                   ; $7116: $36 $78
	sbc  c                                           ; $7118: $99
	cp   e                                           ; $7119: $bb
	res  3, c                                        ; $711a: $cb $99
	add  a                                           ; $711c: $87
	ld   h, h                                        ; $711d: $64
	inc  [hl]                                        ; $711e: $34

Call_0ac_711f:
	ld   a, b                                        ; $711f: $78
	adc  c                                           ; $7120: $89
	sbc  e                                           ; $7121: $9b
	call z, $89aa                                    ; $7122: $cc $aa $89
	halt                                             ; $7125: $76
	ld   b, e                                        ; $7126: $43
	ld   d, a                                        ; $7127: $57
	add  a                                           ; $7128: $87
	sbc  d                                           ; $7129: $9a
	cp   e                                           ; $712a: $bb
	xor  d                                           ; $712b: $aa
	sbc  c                                           ; $712c: $99
	add  a                                           ; $712d: $87
	ld   d, h                                        ; $712e: $54
	ld   b, l                                        ; $712f: $45
	ld   [hl], a                                     ; $7130: $77
	adc  b                                           ; $7131: $88
	cp   h                                           ; $7132: $bc
	cp   e                                           ; $7133: $bb
	xor  d                                           ; $7134: $aa
	sbc  b                                           ; $7135: $98
	ld   [hl], l                                     ; $7136: $75
	ld   b, e                                        ; $7137: $43
	ld   d, a                                        ; $7138: $57
	adc  b                                           ; $7139: $88
	adc  d                                           ; $713a: $8a
	xor  e                                           ; $713b: $ab
	xor  d                                           ; $713c: $aa
	sbc  c                                           ; $713d: $99
	halt                                             ; $713e: $76
	ld   d, h                                        ; $713f: $54
	ld   b, l                                        ; $7140: $45
	ld   a, b                                        ; $7141: $78
	sbc  c                                           ; $7142: $99
	cp   e                                           ; $7143: $bb
	cp   e                                           ; $7144: $bb
	xor  c                                           ; $7145: $a9
	sbc  b                                           ; $7146: $98
	ld   [hl], l                                     ; $7147: $75
	ld   b, h                                        ; $7148: $44
	ld   d, a                                        ; $7149: $57
	adc  b                                           ; $714a: $88
	xor  d                                           ; $714b: $aa
	xor  e                                           ; $714c: $ab
	cp   c                                           ; $714d: $b9
	sbc  c                                           ; $714e: $99
	add  a                                           ; $714f: $87
	ld   d, h                                        ; $7150: $54
	ld   b, [hl]                                     ; $7151: $46
	ld   a, b                                        ; $7152: $78
	adc  c                                           ; $7153: $89
	xor  d                                           ; $7154: $aa
	xor  e                                           ; $7155: $ab
	xor  c                                           ; $7156: $a9
	sbc  b                                           ; $7157: $98
	halt                                             ; $7158: $76
	ld   b, e                                        ; $7159: $43
	ld   b, a                                        ; $715a: $47
	adc  b                                           ; $715b: $88
	sbc  d                                           ; $715c: $9a
	cp   e                                           ; $715d: $bb
	xor  c                                           ; $715e: $a9
	sbc  c                                           ; $715f: $99
	add  a                                           ; $7160: $87
	ld   h, l                                        ; $7161: $65
	ld   b, h                                        ; $7162: $44
	ld   a, b                                        ; $7163: $78
	adc  c                                           ; $7164: $89
	xor  e                                           ; $7165: $ab
	cp   e                                           ; $7166: $bb
	xor  d                                           ; $7167: $aa
	sbc  b                                           ; $7168: $98
	ld   [hl], a                                     ; $7169: $77
	ld   d, h                                        ; $716a: $54
	ld   b, [hl]                                     ; $716b: $46
	adc  b                                           ; $716c: $88
	sbc  c                                           ; $716d: $99
	cp   d                                           ; $716e: $ba
	xor  e                                           ; $716f: $ab
	xor  d                                           ; $7170: $aa
	adc  b                                           ; $7171: $88
	ld   [hl], l                                     ; $7172: $75
	ld   b, h                                        ; $7173: $44
	ld   h, a                                        ; $7174: $67
	adc  b                                           ; $7175: $88
	sbc  e                                           ; $7176: $9b
	cp   d                                           ; $7177: $ba
	xor  c                                           ; $7178: $a9
	xor  c                                           ; $7179: $a9
	add  a                                           ; $717a: $87
	ld   h, h                                        ; $717b: $64
	ld   b, l                                        ; $717c: $45
	ld   a, c                                        ; $717d: $79
	adc  c                                           ; $717e: $89
	xor  d                                           ; $717f: $aa
	cp   d                                           ; $7180: $ba
	cp   c                                           ; $7181: $b9
	sbc  b                                           ; $7182: $98
	halt                                             ; $7183: $76
	ld   d, h                                        ; $7184: $54
	ld   b, [hl]                                     ; $7185: $46
	adc  c                                           ; $7186: $89
	adc  d                                           ; $7187: $8a
	cp   d                                           ; $7188: $ba
	cp   d                                           ; $7189: $ba
	sbc  c                                           ; $718a: $99
	sub  a                                           ; $718b: $97
	ld   h, l                                        ; $718c: $65
	ld   b, h                                        ; $718d: $44
	ld   d, a                                        ; $718e: $57
	sbc  b                                           ; $718f: $98
	xor  d                                           ; $7190: $aa
	xor  e                                           ; $7191: $ab
	cp   d                                           ; $7192: $ba
	sbc  b                                           ; $7193: $98
	ld   [hl], a                                     ; $7194: $77
	ld   h, l                                        ; $7195: $65
	ld   b, l                                        ; $7196: $45
	ld   a, c                                        ; $7197: $79
	sbc  c                                           ; $7198: $99
	sbc  d                                           ; $7199: $9a
	cp   c                                           ; $719a: $b9
	xor  c                                           ; $719b: $a9
	sbc  b                                           ; $719c: $98
	add  a                                           ; $719d: $87
	ld   d, l                                        ; $719e: $55
	ld   d, [hl]                                     ; $719f: $56
	ld   a, b                                        ; $71a0: $78
	adc  c                                           ; $71a1: $89
	xor  c                                           ; $71a2: $a9
	xor  d                                           ; $71a3: $aa
	xor  c                                           ; $71a4: $a9
	sbc  b                                           ; $71a5: $98
	add  [hl]                                        ; $71a6: $86
	ld   d, l                                        ; $71a7: $55
	ld   d, a                                        ; $71a8: $57
	ld   a, b                                        ; $71a9: $78
	adc  d                                           ; $71aa: $8a
	xor  d                                           ; $71ab: $aa
	xor  d                                           ; $71ac: $aa
	sbc  c                                           ; $71ad: $99
	adc  b                                           ; $71ae: $88
	add  [hl]                                        ; $71af: $86
	ld   d, h                                        ; $71b0: $54
	ld   d, a                                        ; $71b1: $57
	sbc  b                                           ; $71b2: $98
	adc  d                                           ; $71b3: $8a
	xor  d                                           ; $71b4: $aa
	xor  d                                           ; $71b5: $aa
	sbc  b                                           ; $71b6: $98
	adc  b                                           ; $71b7: $88
	halt                                             ; $71b8: $76
	ld   b, h                                        ; $71b9: $44
	ld   l, b                                        ; $71ba: $68
	adc  b                                           ; $71bb: $88
	adc  c                                           ; $71bc: $89
	cp   d                                           ; $71bd: $ba
	xor  d                                           ; $71be: $aa
	sbc  b                                           ; $71bf: $98
	add  a                                           ; $71c0: $87
	halt                                             ; $71c1: $76
	ld   d, h                                        ; $71c2: $54
	ld   a, c                                        ; $71c3: $79
	sbc  b                                           ; $71c4: $98
	adc  d                                           ; $71c5: $8a
	cp   e                                           ; $71c6: $bb
	sbc  c                                           ; $71c7: $99
	sbc  c                                           ; $71c8: $99
	add  a                                           ; $71c9: $87
	ld   [hl], l                                     ; $71ca: $75
	ld   d, l                                        ; $71cb: $55
	ld   a, c                                        ; $71cc: $79
	adc  c                                           ; $71cd: $89
	adc  d                                           ; $71ce: $8a
	xor  c                                           ; $71cf: $a9
	xor  b                                           ; $71d0: $a8
	sbc  b                                           ; $71d1: $98
	add  a                                           ; $71d2: $87
	ld   h, l                                        ; $71d3: $65
	ld   d, [hl]                                     ; $71d4: $56
	ld   a, c                                        ; $71d5: $79
	adc  c                                           ; $71d6: $89
	xor  c                                           ; $71d7: $a9
	sbc  d                                           ; $71d8: $9a
	xor  c                                           ; $71d9: $a9
	adc  b                                           ; $71da: $88
	add  a                                           ; $71db: $87
	ld   h, l                                        ; $71dc: $65
	ld   d, [hl]                                     ; $71dd: $56
	adc  c                                           ; $71de: $89
	adc  b                                           ; $71df: $88
	sbc  d                                           ; $71e0: $9a
	sbc  c                                           ; $71e1: $99
	sbc  c                                           ; $71e2: $99
	adc  b                                           ; $71e3: $88
	sub  a                                           ; $71e4: $97
	ld   h, l                                        ; $71e5: $65
	ld   b, a                                        ; $71e6: $47
	adc  b                                           ; $71e7: $88
	adc  b                                           ; $71e8: $88
	xor  c                                           ; $71e9: $a9
	sbc  c                                           ; $71ea: $99
	xor  c                                           ; $71eb: $a9
	add  a                                           ; $71ec: $87
	adc  b                                           ; $71ed: $88
	ld   h, l                                        ; $71ee: $65
	ld   d, a                                        ; $71ef: $57
	sbc  b                                           ; $71f0: $98
	adc  b                                           ; $71f1: $88
	sbc  c                                           ; $71f2: $99
	xor  c                                           ; $71f3: $a9
	sbc  c                                           ; $71f4: $99
	sbc  b                                           ; $71f5: $98
	adc  b                                           ; $71f6: $88
	ld   [hl], l                                     ; $71f7: $75
	ld   d, [hl]                                     ; $71f8: $56
	adc  c                                           ; $71f9: $89
	adc  b                                           ; $71fa: $88
	adc  d                                           ; $71fb: $8a
	xor  c                                           ; $71fc: $a9
	sbc  b                                           ; $71fd: $98
	add  a                                           ; $71fe: $87
	adc  c                                           ; $71ff: $89
	halt                                             ; $7200: $76
	ld   d, [hl]                                     ; $7201: $56
	adc  b                                           ; $7202: $88
	sbc  b                                           ; $7203: $98
	adc  c                                           ; $7204: $89
	xor  c                                           ; $7205: $a9
	sbc  c                                           ; $7206: $99
	add  a                                           ; $7207: $87
	ld   a, c                                        ; $7208: $79
	add  a                                           ; $7209: $87
	ld   d, l                                        ; $720a: $55
	ld   a, b                                        ; $720b: $78
	add  a                                           ; $720c: $87
	adc  c                                           ; $720d: $89
	sbc  c                                           ; $720e: $99
	sbc  c                                           ; $720f: $99
	sbc  b                                           ; $7210: $98
	ld   a, b                                        ; $7211: $78
	adc  b                                           ; $7212: $88
	ld   h, l                                        ; $7213: $65
	ld   a, b                                        ; $7214: $78
	adc  b                                           ; $7215: $88
	adc  b                                           ; $7216: $88
	sbc  c                                           ; $7217: $99
	sbc  c                                           ; $7218: $99
	sbc  b                                           ; $7219: $98
	ld   [hl], a                                     ; $721a: $77
	sbc  b                                           ; $721b: $98
	ld   [hl], l                                     ; $721c: $75
	ld   h, a                                        ; $721d: $67
	sbc  c                                           ; $721e: $99
	ld   a, b                                        ; $721f: $78
	adc  c                                           ; $7220: $89
	adc  b                                           ; $7221: $88
	sbc  c                                           ; $7222: $99
	sbc  b                                           ; $7223: $98
	adc  c                                           ; $7224: $89
	halt                                             ; $7225: $76
	ld   d, a                                        ; $7226: $57
	adc  b                                           ; $7227: $88
	adc  b                                           ; $7228: $88
	sbc  c                                           ; $7229: $99
	xor  b                                           ; $722a: $a8
	xor  b                                           ; $722b: $a8
	add  a                                           ; $722c: $87
	adc  c                                           ; $722d: $89
	add  a                                           ; $722e: $87
	ld   d, [hl]                                     ; $722f: $56
	adc  b                                           ; $7230: $88
	add  a                                           ; $7231: $87
	sbc  c                                           ; $7232: $99
	sbc  c                                           ; $7233: $99
	adc  c                                           ; $7234: $89
	sbc  b                                           ; $7235: $98
	ld   a, b                                        ; $7236: $78
	sbc  b                                           ; $7237: $98
	ld   h, l                                        ; $7238: $65
	ld   a, c                                        ; $7239: $79
	add  a                                           ; $723a: $87
	adc  b                                           ; $723b: $88
	xor  c                                           ; $723c: $a9
	sbc  b                                           ; $723d: $98
	sbc  c                                           ; $723e: $99
	ld   [hl], a                                     ; $723f: $77
	sbc  b                                           ; $7240: $98
	ld   [hl], l                                     ; $7241: $75
	ld   h, a                                        ; $7242: $67
	sbc  c                                           ; $7243: $99
	ld   a, c                                        ; $7244: $79
	sbc  d                                           ; $7245: $9a
	sbc  b                                           ; $7246: $98
	sbc  b                                           ; $7247: $98
	add  a                                           ; $7248: $87
	adc  c                                           ; $7249: $89
	add  a                                           ; $724a: $87
	ld   d, [hl]                                     ; $724b: $56
	ld   a, c                                        ; $724c: $79
	adc  b                                           ; $724d: $88
	adc  b                                           ; $724e: $88
	sbc  c                                           ; $724f: $99
	adc  b                                           ; $7250: $88
	adc  c                                           ; $7251: $89
	adc  c                                           ; $7252: $89
	adc  b                                           ; $7253: $88
	ld   h, l                                        ; $7254: $65
	ld   l, b                                        ; $7255: $68
	sbc  b                                           ; $7256: $98
	adc  c                                           ; $7257: $89
	sbc  c                                           ; $7258: $99
	sbc  b                                           ; $7259: $98
	adc  c                                           ; $725a: $89
	add  a                                           ; $725b: $87
	sbc  b                                           ; $725c: $98
	halt                                             ; $725d: $76
	ld   h, a                                        ; $725e: $67

Call_0ac_725f:
	adc  c                                           ; $725f: $89
	adc  c                                           ; $7260: $89
	sbc  c                                           ; $7261: $99
	adc  b                                           ; $7262: $88
	sbc  c                                           ; $7263: $99
	add  a                                           ; $7264: $87
	adc  b                                           ; $7265: $88
	add  a                                           ; $7266: $87
	ld   h, a                                        ; $7267: $67
	adc  b                                           ; $7268: $88
	adc  b                                           ; $7269: $88
	sbc  c                                           ; $726a: $99
	sbc  c                                           ; $726b: $99
	sbc  b                                           ; $726c: $98
	add  a                                           ; $726d: $87
	ld   a, b                                        ; $726e: $78
	sbc  c                                           ; $726f: $99
	halt                                             ; $7270: $76
	ld   a, b                                        ; $7271: $78
	sbc  c                                           ; $7272: $99
	adc  b                                           ; $7273: $88
	sbc  b                                           ; $7274: $98
	adc  b                                           ; $7275: $88
	ld   a, b                                        ; $7276: $78
	adc  b                                           ; $7277: $88
	adc  c                                           ; $7278: $89
	sub  a                                           ; $7279: $97
	ld   h, [hl]                                     ; $727a: $66
	adc  b                                           ; $727b: $88
	add  a                                           ; $727c: $87
	ld   a, b                                        ; $727d: $78
	sbc  c                                           ; $727e: $99
	adc  b                                           ; $727f: $88
	adc  c                                           ; $7280: $89
	sbc  c                                           ; $7281: $99
	adc  b                                           ; $7282: $88
	ld   h, [hl]                                     ; $7283: $66
	ld   l, b                                        ; $7284: $68
	sbc  b                                           ; $7285: $98
	adc  b                                           ; $7286: $88
	sbc  c                                           ; $7287: $99
	adc  c                                           ; $7288: $89
	sbc  c                                           ; $7289: $99
	adc  b                                           ; $728a: $88
	adc  b                                           ; $728b: $88
	halt                                             ; $728c: $76
	ld   h, a                                        ; $728d: $67
	sbc  c                                           ; $728e: $99
	adc  b                                           ; $728f: $88
	sbc  d                                           ; $7290: $9a
	sbc  c                                           ; $7291: $99
	adc  b                                           ; $7292: $88
	add  a                                           ; $7293: $87
	adc  c                                           ; $7294: $89
	adc  b                                           ; $7295: $88
	ld   [hl], a                                     ; $7296: $77
	ld   a, c                                        ; $7297: $79
	sbc  b                                           ; $7298: $98
	adc  c                                           ; $7299: $89
	adc  b                                           ; $729a: $88
	adc  b                                           ; $729b: $88
	adc  b                                           ; $729c: $88
	adc  c                                           ; $729d: $89
	adc  c                                           ; $729e: $89
	add  a                                           ; $729f: $87
	ld   h, a                                        ; $72a0: $67
	adc  b                                           ; $72a1: $88
	ld   a, b                                        ; $72a2: $78
	adc  c                                           ; $72a3: $89
	adc  b                                           ; $72a4: $88
	adc  b                                           ; $72a5: $88
	sbc  c                                           ; $72a6: $99
	adc  b                                           ; $72a7: $88
	adc  b                                           ; $72a8: $88
	ld   h, [hl]                                     ; $72a9: $66
	ld   a, b                                        ; $72aa: $78
	add  a                                           ; $72ab: $87
	adc  b                                           ; $72ac: $88
	sbc  c                                           ; $72ad: $99
	sbc  b                                           ; $72ae: $98
	adc  c                                           ; $72af: $89
	adc  b                                           ; $72b0: $88
	adc  b                                           ; $72b1: $88
	add  [hl]                                        ; $72b2: $86
	ld   h, a                                        ; $72b3: $67
	sbc  c                                           ; $72b4: $99
	adc  b                                           ; $72b5: $88
	sbc  c                                           ; $72b6: $99
	sbc  b                                           ; $72b7: $98
	adc  b                                           ; $72b8: $88
	add  a                                           ; $72b9: $87
	ld   [hl], a                                     ; $72ba: $77
	sbc  b                                           ; $72bb: $98
	ld   [hl], a                                     ; $72bc: $77
	ld   a, c                                        ; $72bd: $79
	adc  c                                           ; $72be: $89
	adc  c                                           ; $72bf: $89
	adc  b                                           ; $72c0: $88
	adc  b                                           ; $72c1: $88
	adc  b                                           ; $72c2: $88
	adc  b                                           ; $72c3: $88
	sbc  b                                           ; $72c4: $98
	sub  a                                           ; $72c5: $97
	ld   h, a                                        ; $72c6: $67
	adc  c                                           ; $72c7: $89
	adc  b                                           ; $72c8: $88
	adc  b                                           ; $72c9: $88
	adc  b                                           ; $72ca: $88
	adc  b                                           ; $72cb: $88
	sbc  c                                           ; $72cc: $99
	adc  c                                           ; $72cd: $89
	sbc  b                                           ; $72ce: $98
	halt                                             ; $72cf: $76
	ld   a, b                                        ; $72d0: $78
	sbc  b                                           ; $72d1: $98
	adc  c                                           ; $72d2: $89
	sbc  c                                           ; $72d3: $99
	adc  b                                           ; $72d4: $88
	adc  c                                           ; $72d5: $89
	adc  b                                           ; $72d6: $88
	adc  b                                           ; $72d7: $88
	add  a                                           ; $72d8: $87
	ld   [hl], a                                     ; $72d9: $77
	adc  b                                           ; $72da: $88
	adc  b                                           ; $72db: $88
	adc  c                                           ; $72dc: $89
	sbc  c                                           ; $72dd: $99
	adc  b                                           ; $72de: $88
	sbc  b                                           ; $72df: $98
	adc  b                                           ; $72e0: $88
	adc  c                                           ; $72e1: $89
	add  a                                           ; $72e2: $87
	ld   a, b                                        ; $72e3: $78
	sbc  b                                           ; $72e4: $98
	adc  b                                           ; $72e5: $88
	sbc  b                                           ; $72e6: $98
	sbc  b                                           ; $72e7: $98
	adc  b                                           ; $72e8: $88
	adc  b                                           ; $72e9: $88
	adc  b                                           ; $72ea: $88
	adc  b                                           ; $72eb: $88
	ld   [hl], a                                     ; $72ec: $77
	ld   a, c                                        ; $72ed: $79
	adc  b                                           ; $72ee: $88
	adc  b                                           ; $72ef: $88
	adc  b                                           ; $72f0: $88
	adc  b                                           ; $72f1: $88
	adc  b                                           ; $72f2: $88
	adc  c                                           ; $72f3: $89
	sbc  b                                           ; $72f4: $98
	add  a                                           ; $72f5: $87
	ld   [hl], a                                     ; $72f6: $77
	adc  b                                           ; $72f7: $88
	adc  b                                           ; $72f8: $88
	adc  c                                           ; $72f9: $89
	adc  c                                           ; $72fa: $89
	adc  c                                           ; $72fb: $89
	sbc  b                                           ; $72fc: $98
	adc  b                                           ; $72fd: $88
	adc  b                                           ; $72fe: $88
	ld   [hl], a                                     ; $72ff: $77
	ld   a, b                                        ; $7300: $78
	sbc  b                                           ; $7301: $98
	adc  b                                           ; $7302: $88
	sbc  b                                           ; $7303: $98
	sbc  b                                           ; $7304: $98
	adc  b                                           ; $7305: $88
	adc  b                                           ; $7306: $88
	adc  b                                           ; $7307: $88
	adc  b                                           ; $7308: $88
	ld   [hl], a                                     ; $7309: $77
	ld   a, b                                        ; $730a: $78
	adc  b                                           ; $730b: $88
	adc  c                                           ; $730c: $89
	sbc  b                                           ; $730d: $98
	adc  b                                           ; $730e: $88
	adc  b                                           ; $730f: $88
	adc  b                                           ; $7310: $88
	adc  b                                           ; $7311: $88
	sub  a                                           ; $7312: $97
	ld   [hl], a                                     ; $7313: $77
	adc  b                                           ; $7314: $88
	adc  b                                           ; $7315: $88
	adc  b                                           ; $7316: $88
	adc  b                                           ; $7317: $88
	ld   a, b                                        ; $7318: $78
	adc  c                                           ; $7319: $89
	adc  b                                           ; $731a: $88
	adc  b                                           ; $731b: $88
	add  a                                           ; $731c: $87
	ld   a, b                                        ; $731d: $78
	adc  b                                           ; $731e: $88
	adc  b                                           ; $731f: $88
	adc  b                                           ; $7320: $88
	sbc  b                                           ; $7321: $98
	adc  b                                           ; $7322: $88
	adc  b                                           ; $7323: $88
	adc  b                                           ; $7324: $88
	adc  b                                           ; $7325: $88
	ld   [hl], a                                     ; $7326: $77
	ld   a, b                                        ; $7327: $78
	adc  b                                           ; $7328: $88
	adc  b                                           ; $7329: $88
	adc  b                                           ; $732a: $88
	add  a                                           ; $732b: $87
	adc  b                                           ; $732c: $88
	adc  b                                           ; $732d: $88
	adc  c                                           ; $732e: $89
	adc  b                                           ; $732f: $88
	ld   [hl], a                                     ; $7330: $77
	adc  b                                           ; $7331: $88
	adc  b                                           ; $7332: $88
	adc  b                                           ; $7333: $88
	adc  b                                           ; $7334: $88
	adc  b                                           ; $7335: $88
	adc  b                                           ; $7336: $88
	adc  b                                           ; $7337: $88
	adc  b                                           ; $7338: $88
	add  a                                           ; $7339: $87
	ld   [hl], a                                     ; $733a: $77
	adc  b                                           ; $733b: $88
	adc  b                                           ; $733c: $88
	adc  b                                           ; $733d: $88
	sbc  b                                           ; $733e: $98
	adc  b                                           ; $733f: $88
	adc  b                                           ; $7340: $88
	adc  b                                           ; $7341: $88
	adc  b                                           ; $7342: $88
	add  a                                           ; $7343: $87
	ld   a, b                                        ; $7344: $78
	adc  b                                           ; $7345: $88
	adc  b                                           ; $7346: $88
	adc  c                                           ; $7347: $89
	sbc  b                                           ; $7348: $98
	adc  b                                           ; $7349: $88
	adc  b                                           ; $734a: $88
	adc  b                                           ; $734b: $88
	adc  b                                           ; $734c: $88
	add  a                                           ; $734d: $87
	adc  b                                           ; $734e: $88
	adc  b                                           ; $734f: $88
	adc  b                                           ; $7350: $88
	adc  c                                           ; $7351: $89
	adc  b                                           ; $7352: $88
	adc  b                                           ; $7353: $88
	adc  b                                           ; $7354: $88
	adc  b                                           ; $7355: $88
	adc  b                                           ; $7356: $88
	add  a                                           ; $7357: $87
	adc  b                                           ; $7358: $88
	adc  b                                           ; $7359: $88
	adc  b                                           ; $735a: $88
	sbc  c                                           ; $735b: $99

Jump_0ac_735c:
	adc  b                                           ; $735c: $88
	adc  b                                           ; $735d: $88
	adc  b                                           ; $735e: $88
	adc  b                                           ; $735f: $88
	adc  b                                           ; $7360: $88
	add  a                                           ; $7361: $87
	ld   a, b                                        ; $7362: $78
	adc  b                                           ; $7363: $88
	adc  b                                           ; $7364: $88
	sbc  b                                           ; $7365: $98
	adc  b                                           ; $7366: $88
	adc  b                                           ; $7367: $88
	adc  b                                           ; $7368: $88
	adc  b                                           ; $7369: $88
	adc  b                                           ; $736a: $88
	add  a                                           ; $736b: $87
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
	add  a                                           ; $737e: $87
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
	add  c                                           ; $73ea: $81
	ld   de, $1111                                   ; $73eb: $11 $11 $11
	nop                                              ; $73ee: $00
	ld   c, b                                        ; $73ef: $48
	ld   de, $1111                                   ; $73f0: $11 $11 $11
	ld   de, $1111                                   ; $73f3: $11 $11 $11
	ld   de, $1111                                   ; $73f6: $11 $11 $11
	ld   de, $5413                                   ; $73f9: $11 $13 $54
	ld   d, h                                        ; $73fc: $54
	ld   d, h                                        ; $73fd: $54
	ld   b, c                                        ; $73fe: $41
	rra                                              ; $73ff: $1f
	rst  $38                                         ; $7400: $ff
	pop  af                                          ; $7401: $f1
	ld   de, $1811                                   ; $7402: $11 $11 $18
	or   c                                           ; $7405: $b1
	ld   de, $de1c                                   ; $7406: $11 $1c $de
	xor  h                                           ; $7409: $ac
	sbc  $a1                                         ; $740a: $de $a1
	ld   de, $1111                                   ; $740c: $11 $11 $11
	ld   de, $1111                                   ; $740f: $11 $11 $11
	ld   de, $1111                                   ; $7412: $11 $11 $11
	ld   de, $1111                                   ; $7415: $11 $11 $11
	ld   de, $5411                                   ; $7418: $11 $11 $54
	ld   b, h                                        ; $741b: $44
	xor  b                                           ; $741c: $a8
	ld   de, $5454                                   ; $741d: $11 $54 $54
	ld   h, a                                        ; $7420: $67
	ld   [hl], d                                     ; $7421: $72
	ld   de, $1111                                   ; $7422: $11 $11 $11
	ld   de, $1112                                   ; $7425: $11 $12 $11
	ld   [de], a                                     ; $7428: $12
	ld   de, $1111                                   ; $7429: $11 $11 $11
	ld   h, [hl]                                     ; $742c: $66
	halt                                             ; $742d: $76
	ld   a, b                                        ; $742e: $78
	ld   de, $8888                                   ; $742f: $11 $88 $88
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
	ld   a, c                                        ; $7443: $79
	sbc  b                                           ; $7444: $98
	add  a                                           ; $7445: $87
	ld   a, b                                        ; $7446: $78
	ld   a, b                                        ; $7447: $78
	add  a                                           ; $7448: $87
	add  a                                           ; $7449: $87
	sbc  c                                           ; $744a: $99
	adc  c                                           ; $744b: $89
	ld   a, c                                        ; $744c: $79
	sbc  b                                           ; $744d: $98
	add  a                                           ; $744e: $87
	add  a                                           ; $744f: $87
	ld   [hl], a                                     ; $7450: $77
	ld   [hl], a                                     ; $7451: $77
	ld   [hl], a                                     ; $7452: $77
	adc  c                                           ; $7453: $89
	adc  c                                           ; $7454: $89
	sbc  c                                           ; $7455: $99
	sbc  c                                           ; $7456: $99
	sbc  b                                           ; $7457: $98
	adc  b                                           ; $7458: $88
	add  a                                           ; $7459: $87
	ld   [hl], a                                     ; $745a: $77

Jump_0ac_745b:
	ld   [hl], a                                     ; $745b: $77

Jump_0ac_745c:
	ld   a, b                                        ; $745c: $78
	adc  c                                           ; $745d: $89
	adc  c                                           ; $745e: $89
	sbc  c                                           ; $745f: $99
	xor  c                                           ; $7460: $a9
	adc  c                                           ; $7461: $89
	adc  b                                           ; $7462: $88
	sub  a                                           ; $7463: $97
	ld   a, c                                        ; $7464: $79
	ld   h, a                                        ; $7465: $67
	ld   [hl], a                                     ; $7466: $77
	ld   [hl], a                                     ; $7467: $77
	sbc  b                                           ; $7468: $98
	sbc  d                                           ; $7469: $9a
	adc  c                                           ; $746a: $89
	sbc  b                                           ; $746b: $98
	adc  c                                           ; $746c: $89
	halt                                             ; $746d: $76
	add  a                                           ; $746e: $87
	ld   h, [hl]                                     ; $746f: $66
	ld   [hl], a                                     ; $7470: $77
	ld   l, b                                        ; $7471: $68
	adc  b                                           ; $7472: $88
	cp   d                                           ; $7473: $ba
	sbc  d                                           ; $7474: $9a
	xor  c                                           ; $7475: $a9
	ld   [hl], a                                     ; $7476: $77
	and  a                                           ; $7477: $a7
	ld   c, c                                        ; $7478: $49
	ld   h, e                                        ; $7479: $63
	halt                                             ; $747a: $76
	ld   [hl], l                                     ; $747b: $75
	sbc  d                                           ; $747c: $9a
	ld   a, e                                        ; $747d: $7b
	ret                                              ; $747e: $c9


	jp   z, Jump_0ac_76a8                            ; $747f: $ca $a8 $76

	and  a                                           ; $7482: $a7
	ld   a, [hl-]                                    ; $7483: $3a
	ld   b, e                                        ; $7484: $43
	halt                                             ; $7485: $76
	ld   [hl], l                                     ; $7486: $75
	sbc  e                                           ; $7487: $9b
	ld   a, l                                        ; $7488: $7d
	jp   z, $b8eb                                    ; $7489: $ca $eb $b8

	ld   d, [hl]                                     ; $748c: $56
	and  e                                           ; $748d: $a3
	ld   a, [de]                                     ; $748e: $1a
	inc  de                                          ; $748f: $13
	ld   h, [hl]                                     ; $7490: $66
	ld   [hl], h                                     ; $7491: $74
	db   $db                                         ; $7492: $db
	ld   a, a                                        ; $7493: $7f
	set  7, e                                        ; $7494: $cb $fb
	and  [hl]                                        ; $7496: $a6
	add  hl, sp                                      ; $7497: $39
	ld   h, c                                        ; $7498: $61
	sub  h                                           ; $7499: $94
	rla                                              ; $749a: $17
	ld   c, c                                        ; $749b: $49
	ld   c, d                                        ; $749c: $4a
	rst  $30                                         ; $749d: $f7
	rst  $38                                         ; $749e: $ff
	adc  a                                           ; $749f: $8f
	jp   c, $d271                                    ; $74a0: $da $71 $d2

	inc  e                                           ; $74a3: $1c
	ld   de, $9494                                   ; $74a4: $11 $94 $94
	rst  $28                                         ; $74a7: $ef
	ld   e, a                                        ; $74a8: $5f
	ld   hl, sp-$04                                  ; $74a9: $f8 $fc
	add  e                                           ; $74ab: $83
	dec  a                                           ; $74ac: $3d
	ld   de, $28b1                                   ; $74ad: $11 $b1 $28
	ld   h, a                                        ; $74b0: $67
	ld   a, a                                        ; $74b1: $7f
	jp   c, $bffb                                    ; $74b2: $da $fb $bf

	ld   h, e                                        ; $74b5: $63
	inc  e                                           ; $74b6: $1c
	ld   de, $18b1                                   ; $74b7: $11 $b1 $18
	sub  [hl]                                        ; $74ba: $96
	sbc  a                                           ; $74bb: $9f
	ld   a, [$9fff]                                  ; $74bc: $fa $ff $9f
	ld   [hl], c                                     ; $74bf: $71
	add  hl, de                                      ; $74c0: $19
	ld   de, $1661                                   ; $74c1: $11 $61 $16
	rst  $20                                         ; $74c4: $e7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74c5: $cf
	db   $fd                                         ; $74c6: $fd
	db   $fc                                         ; $74c7: $fc
	xor  e                                           ; $74c8: $ab
	ld   hl, $1431                                   ; $74c9: $21 $31 $14
	inc  de                                          ; $74cc: $13
	dec  sp                                          ; $74cd: $3b
	jp   hl                                          ; $74ce: $e9


	rst  $38                                         ; $74cf: $ff
	rst  $38                                         ; $74d0: $ff
	ld   hl, sp-$4f                                  ; $74d1: $f8 $b1
	inc  de                                          ; $74d3: $13
	ld   de, $2731                                   ; $74d4: $11 $31 $27
	xor  a                                           ; $74d7: $af
	xor  a                                           ; $74d8: $af
	cp   $ff                                         ; $74d9: $fe $ff
	ld   l, c                                        ; $74db: $69
	ld   de, $1461                                   ; $74dc: $11 $61 $14
	jr   @-$5f                                       ; $74df: $18 $9f

	db   $fd                                         ; $74e1: $fd
	rst  $38                                         ; $74e2: $ff
	cp   a                                           ; $74e3: $bf
	ld   [hl], h                                     ; $74e4: $74
	ld   b, c                                        ; $74e5: $41
	ld   [hl], c                                     ; $74e6: $71
	inc  e                                           ; $74e7: $1c
	rla                                              ; $74e8: $17
	cp   l                                           ; $74e9: $bd
	db   $fd                                         ; $74ea: $fd
	rst  $38                                         ; $74eb: $ff
	sbc  a                                           ; $74ec: $9f
	pop  de                                          ; $74ed: $d1
	ld   b, c                                        ; $74ee: $41
	ld   h, c                                        ; $74ef: $61
	rra                                              ; $74f0: $1f
	rla                                              ; $74f1: $17
	rst  $28                                         ; $74f2: $ef
	rst  $38                                         ; $74f3: $ff
	rst  $38                                         ; $74f4: $ff
	ld   a, e                                        ; $74f5: $7b
	pop  de                                          ; $74f6: $d1
	ld   de, $1f61                                   ; $74f7: $11 $61 $1f
	dec  de                                          ; $74fa: $1b
	rst  $38                                         ; $74fb: $ff
	xor  a                                           ; $74fc: $af
	cp   $5b                                         ; $74fd: $fe $5b
	ld   [hl], c                                     ; $74ff: $71
	inc  [hl]                                        ; $7500: $34
	ld   de, $6ef8                                   ; $7501: $11 $f8 $6e
	rst  $38                                         ; $7504: $ff
	ld   a, a                                        ; $7505: $7f
	and  a                                           ; $7506: $a7
	ld   c, h                                        ; $7507: $4c
	ld   de, $1ab1                                   ; $7508: $11 $b1 $1a
	db   $f4                                         ; $750b: $f4
	rst  JumpTable                                         ; $750c: $df
	db   $f4                                         ; $750d: $f4
	rst  $38                                         ; $750e: $ff
	ld   [hl-], a                                    ; $750f: $32
	or   c                                           ; $7510: $b1
	dec  e                                           ; $7511: $1d
	ld   sp, $a8af                                   ; $7512: $31 $af $a8
	rst  $38                                         ; $7515: $ff
	ld   c, [hl]                                     ; $7516: $4e
	di                                               ; $7517: $f3
	ld   a, [de]                                     ; $7518: $1a
	ld   de, $1cd5                                   ; $7519: $11 $d5 $1c
	cp   $7f                                         ; $751c: $fe $7f
	di                                               ; $751e: $f3
	xor  a                                           ; $751f: $af
	ld   sp, $1e91                                   ; $7520: $31 $91 $1e
	ld   [hl], c                                     ; $7523: $71
	rst  $28                                         ; $7524: $ef
	rst  $20                                         ; $7525: $e7
	rst  $38                                         ; $7526: $ff
	add  hl, hl                                      ; $7527: $29
	db   $e3                                         ; $7528: $e3
	rla                                              ; $7529: $17
	ld   de, $1eda                                   ; $752a: $11 $da $1e
	cp   $6f                                         ; $752d: $fe $6f
	pop  af                                          ; $752f: $f1
	ld   a, [hl]                                     ; $7530: $7e
	ld   d, c                                        ; $7531: $51
	ld   [hl], e                                     ; $7532: $73
	add  hl, de                                      ; $7533: $19
	di                                               ; $7534: $f3
	ld   a, a                                        ; $7535: $7f
	sub  $bf                                         ; $7536: $d6 $bf
	ld   d, d                                        ; $7538: $52
	add  sp, $24                                     ; $7539: $e8 $24
	or   c                                           ; $753b: $b1
	inc  e                                           ; $753c: $1c
	pop  bc                                          ; $753d: $c1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $753e: $cf
	ld   a, b                                        ; $753f: $78
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7540: $cf
	ld   h, $c7                                      ; $7541: $26 $c7
	ld   c, b                                        ; $7543: $48
	or   c                                           ; $7544: $b1
	ld   d, $e1                                      ; $7545: $16 $e1
	sbc  a                                           ; $7547: $9f
	ld   a, d                                        ; $7548: $7a
	sbc  a                                           ; $7549: $9f
	ld   h, l                                        ; $754a: $65
	cp   c                                           ; $754b: $b9
	ld   h, l                                        ; $754c: $65
	db   $d3                                         ; $754d: $d3
	ld   de, $1fbb                                   ; $754e: $11 $bb $1f
	ret  c                                           ; $7551: $d8

	sbc  e                                           ; $7552: $9b
	db   $d3                                         ; $7553: $d3
	adc  c                                           ; $7554: $89
	and  h                                           ; $7555: $a4
	sbc  e                                           ; $7556: $9b
	ld   de, $642e                                   ; $7557: $11 $2e $64
	ld   a, [$baa9]                                  ; $755a: $fa $a9 $ba
	ld   c, c                                        ; $755d: $49
	xor  d                                           ; $755e: $aa
	ld   c, e                                        ; $755f: $4b
	sub  c                                           ; $7560: $91
	inc  d                                           ; $7561: $14
	ldh  a, [c]                                      ; $7562: $f2
	xor  a                                           ; $7563: $af
	xor  d                                           ; $7564: $aa
	ld   l, [hl]                                     ; $7565: $6e
	ld   [hl], h                                     ; $7566: $74
	xor  e                                           ; $7567: $ab
	sub  h                                           ; $7568: $94
	push bc                                          ; $7569: $c5
	ld   de, $1fad                                   ; $756a: $11 $ad $1f
	ld   sp, hl                                      ; $756d: $f9
	sub  a                                           ; $756e: $97
	push de                                          ; $756f: $d5
	ld   e, d                                        ; $7570: $5a
	and  a                                           ; $7571: $a7
	ld   l, e                                        ; $7572: $6b
	ld   sp, $a21e                                   ; $7573: $31 $1e $a2
	db   $fd                                         ; $7576: $fd
	or   l                                           ; $7577: $b5

jr_0ac_7578:
	sbc  [hl]                                        ; $7578: $9e
	daa                                              ; $7579: $27
	cp   e                                           ; $757a: $bb
	ld   e, b                                        ; $757b: $58
	and  c                                           ; $757c: $a1
	inc  d                                           ; $757d: $14
	push af                                          ; $757e: $f5
	ld   a, a                                        ; $757f: $7f
	cp   c                                           ; $7580: $b9
	ld   c, e                                        ; $7581: $4b
	sub  c                                           ; $7582: $91
	sbc  e                                           ; $7583: $9b
	and  l                                           ; $7584: $a5
	and  a                                           ; $7585: $a7
	ld   de, $2d9f                                   ; $7586: $11 $9f $2d
	ld   a, [$d674]                                  ; $7589: $fa $74 $d6
	ld   a, [hl-]                                    ; $758c: $3a
	ret                                              ; $758d: $c9


	ld   l, c                                        ; $758e: $69
	ld   b, c                                        ; $758f: $41

jr_0ac_7590:
	rra                                              ; $7590: $1f
	db   $d3                                         ; $7591: $d3
	cp   $a4                                         ; $7592: $fe $a4
	ld   l, [hl]                                     ; $7594: $6e
	dec  [hl]                                        ; $7595: $35
	cp   l                                           ; $7596: $bd
	ld   h, [hl]                                     ; $7597: $66
	sub  c                                           ; $7598: $91

Jump_0ac_7599:
	inc  d                                           ; $7599: $14
	or   $9f                                         ; $759a: $f6 $9f
	ret  c                                           ; $759c: $d8

	dec  de                                          ; $759d: $1b
	sub  c                                           ; $759e: $91
	sbc  [hl]                                        ; $759f: $9e
	push bc                                          ; $75a0: $c5
	ld   [hl], l                                     ; $75a1: $75
	ld   de, $5fcf                                   ; $75a2: $11 $cf $5f
	ei                                               ; $75a5: $fb
	ld   b, d                                        ; $75a6: $42
	push de                                          ; $75a7: $d5
	ld   c, h                                        ; $75a8: $4c

Jump_0ac_75a9:
	add  sp, $46                                     ; $75a9: $e8 $46
	ld   de, $c92f                                   ; $75ab: $11 $2f $c9
	db   $fd                                         ; $75ae: $fd
	add  c                                           ; $75af: $81
	sbc  e                                           ; $75b0: $9b
	jr   c, jr_0ac_7590                              ; $75b1: $38 $dd

	ld   d, h                                        ; $75b3: $54
	ld   b, c                                        ; $75b4: $41
	inc  e                                           ; $75b5: $1c
	ld   sp, hl                                      ; $75b6: $f9
	rst  $28                                         ; $75b7: $ef
	or   e                                           ; $75b8: $b3
	inc  e                                           ; $75b9: $1c
	ld   h, [hl]                                     ; $75ba: $66
	sbc  $93                                         ; $75bb: $de $93
	ld   b, c                                        ; $75bd: $41
	inc  d                                           ; $75be: $14
	db   $fd                                         ; $75bf: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75c0: $cf
	or   a                                           ; $75c1: $b7
	jr   jr_0ac_7578                                 ; $75c2: $18 $b4

	cp   [hl]                                        ; $75c4: $be
	call nz, $1142                                   ; $75c5: $c4 $42 $11

Call_0ac_75c8:
	rst  $28                                         ; $75c8: $ef
	cp   a                                           ; $75c9: $bf
	ret                                              ; $75ca: $c9


	ld   [de], a                                     ; $75cb: $12
	add  $9d                                         ; $75cc: $c6 $9d
	rst  $20                                         ; $75ce: $e7
	ld   [hl+], a                                    ; $75cf: $22
	ld   de, $ee8f                                   ; $75d0: $11 $8f $ee
	reti                                             ; $75d3: $d9


	ld   sp, $8daa                                   ; $75d4: $31 $aa $8d
	jp   hl                                          ; $75d7: $e9


	ld   [de], a                                     ; $75d8: $12
	ld   de, $fc4f                                   ; $75d9: $11 $4f $fc
	ld   sp, hl                                      ; $75dc: $f9
	ld   d, c                                        ; $75dd: $51
	ld   l, h                                        ; $75de: $6c
	adc  h                                           ; $75df: $8c
	db   $ec                                         ; $75e0: $ec
	ld   hl, $1f11                                   ; $75e1: $21 $11 $1f
	db   $fd                                         ; $75e4: $fd
	ret  c                                           ; $75e5: $d8

	ld   h, c                                        ; $75e6: $61
	dec  e                                           ; $75e7: $1d
	cp   l                                           ; $75e8: $bd
	call c, $1151                                    ; $75e9: $dc $51 $11
	jr   @+$01                                       ; $75ec: $18 $ff

	reti                                             ; $75ee: $d9


	ld   d, c                                        ; $75ef: $51
	ld   a, [de]                                     ; $75f0: $1a
	db   $fd                                         ; $75f1: $fd
	db   $ec                                         ; $75f2: $ec
	ld   [hl], c                                     ; $75f3: $71
	ld   de, rAUD1HIGH                                   ; $75f4: $11 $14 $ff
	jp   c, $1453                                    ; $75f7: $da $53 $14

	rst  $38                                         ; $75fa: $ff
	ei                                               ; $75fb: $fb
	add  c                                           ; $75fc: $81
	ld   de, $9f23                                   ; $75fd: $11 $23 $9f
	ld   sp, hl                                      ; $7600: $f9
	ld   d, h                                        ; $7601: $54
	ld   de, $eddf                                   ; $7602: $11 $df $ed
	sub  l                                           ; $7605: $95
	ld   de, $4f34                                   ; $7606: $11 $34 $4f
	ld   a, [$4164]                                  ; $7609: $fa $64 $41
	ld   e, a                                        ; $760c: $5f
	db   $fd                                         ; $760d: $fd
	sub  [hl]                                        ; $760e: $96
	ld   de, $4935                                   ; $760f: $11 $35 $49
	rst  $38                                         ; $7612: $ff
	ld   h, l                                        ; $7613: $65
	ld   b, e                                        ; $7614: $43
	rra                                              ; $7615: $1f
	db   $fd                                         ; $7616: $fd
	and  [hl]                                        ; $7617: $a6
	ld   d, c                                        ; $7618: $51
	dec  h                                           ; $7619: $25
	ld   d, e                                        ; $761a: $53
	rst  $38                                         ; $761b: $ff
	or   l                                           ; $761c: $b5
	dec  [hl]                                        ; $761d: $35
	dec  d                                           ; $761e: $15
	rst  $38                                         ; $761f: $ff
	rst  ToBoot                                         ; $7620: $c7
	ld   h, e                                        ; $7621: $63
	dec  d                                           ; $7622: $15
	ld   h, h                                        ; $7623: $64
	ld   c, a                                        ; $7624: $4f
	or   $44                                         ; $7625: $f6 $44
	ld   h, c                                        ; $7627: $61
	cp   a                                           ; $7628: $bf
	ld   [$1156], a                                  ; $7629: $ea $56 $11
	ld   [hl], a                                     ; $762c: $77
	ld   h, $ff                                      ; $762d: $26 $ff
	ld   d, h                                        ; $762f: $54
	ld   h, l                                        ; $7630: $65
	rra                                              ; $7631: $1f
	db   $fc                                         ; $7632: $fc
	add  h                                           ; $7633: $84
	ld   h, c                                        ; $7634: $61
	jr   c, jr_0ac_7699                              ; $7635: $38 $62

	cp   a                                           ; $7637: $bf
	call nz, Call_0ac_4347                           ; $7638: $c4 $47 $43
	rst  $38                                         ; $763b: $ff
	or   [hl]                                        ; $763c: $b6
	ld   b, l                                        ; $763d: $45
	dec  d                                           ; $763e: $15
	add  h                                           ; $763f: $84
	ccf                                              ; $7640: $3f
	ld   hl, sp+$45                                  ; $7641: $f8 $45
	ld   [hl], d                                     ; $7643: $72
	adc  a                                           ; $7644: $8f
	ld   [$3145], a                                  ; $7645: $ea $45 $31
	ld   a, b                                        ; $7648: $78
	inc  sp                                          ; $7649: $33
	rst  $38                                         ; $764a: $ff
	ld   d, h                                        ; $764b: $54
	ld   d, a                                        ; $764c: $57
	inc  e                                           ; $764d: $1c
	db   $fd                                         ; $764e: $fd
	sub  h                                           ; $764f: $94
	ld   h, d                                        ; $7650: $62
	add  hl, hl                                      ; $7651: $29
	ld   [hl], d                                     ; $7652: $72
	ld   l, a                                        ; $7653: $6f
	db   $f4                                         ; $7654: $f4
	ld   b, [hl]                                     ; $7655: $46
	ld   h, d                                        ; $7656: $62
	rst  $38                                         ; $7657: $ff
	sub  $36                                         ; $7658: $d6 $36
	inc  hl                                          ; $765a: $23
	sub  a                                           ; $765b: $97
	add  hl, de                                      ; $765c: $19
	db   $fc                                         ; $765d: $fc
	ld   b, h                                        ; $765e: $44
	ld   h, l                                        ; $765f: $65
	ccf                                              ; $7660: $3f
	db   $fc                                         ; $7661: $fc
	ld   d, e                                        ; $7662: $53
	ld   h, c                                        ; $7663: $61
	ld   c, c                                        ; $7664: $49
	ld   h, c                                        ; $7665: $61
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7666: $cf
	and  e                                           ; $7667: $a3
	ld   b, a                                        ; $7668: $47
	ld   b, h                                        ; $7669: $44
	rst  $38                                         ; $766a: $ff
	or   h                                           ; $766b: $b4
	ld   b, [hl]                                     ; $766c: $46
	ld   d, $a5                                      ; $766d: $16 $a5
	ld   e, $f8                                      ; $766f: $1e $f8
	dec  [hl]                                        ; $7671: $35
	add  e                                           ; $7672: $83
	ld   l, a                                        ; $7673: $6f
	ld   sp, hl                                      ; $7674: $f9
	dec  [hl]                                        ; $7675: $35
	ld   d, d                                        ; $7676: $52
	ld   l, c                                        ; $7677: $69
	ld   b, c                                        ; $7678: $41
	rst  $38                                         ; $7679: $ff
	ld   [hl], e                                     ; $767a: $73
	ld   d, a                                        ; $767b: $57
	scf                                              ; $767c: $37
	rst  $38                                         ; $767d: $ff
	add  e                                           ; $767e: $83
	ld   d, l                                        ; $767f: $55
	daa                                              ; $7680: $27
	and  h                                           ; $7681: $a4
	rrca                                             ; $7682: $0f
	push af                                          ; $7683: $f5
	ld   b, [hl]                                     ; $7684: $46
	ld   [hl], d                                     ; $7685: $72
	adc  a                                           ; $7686: $8f
	ld   hl, sp+$25                                  ; $7687: $f8 $25
	ld   d, e                                        ; $7689: $53
	ld   a, c                                        ; $768a: $79
	ld   [hl-], a                                    ; $768b: $32
	rst  $38                                         ; $768c: $ff
	ld   d, h                                        ; $768d: $54
	ld   h, a                                        ; $768e: $67
	ld   a, [hl+]                                    ; $768f: $2a
	rst  $38                                         ; $7690: $ff
	ld   [hl], d                                     ; $7691: $72
	ld   h, l                                        ; $7692: $65
	scf                                              ; $7693: $37
	sub  d                                           ; $7694: $92
	cpl                                              ; $7695: $2f
	push af                                          ; $7696: $f5
	ld   b, [hl]                                     ; $7697: $46
	ld   [hl], d                                     ; $7698: $72

jr_0ac_7699:
	xor  a                                           ; $7699: $af
	rst  $20                                         ; $769a: $e7
	dec  h                                           ; $769b: $25
	ld   b, h                                        ; $769c: $44
	adc  c                                           ; $769d: $89
	ld   [hl+], a                                    ; $769e: $22
	rst  $38                                         ; $769f: $ff
	ld   d, h                                        ; $76a0: $54
	ld   h, a                                        ; $76a1: $67
	ld   a, [hl+]                                    ; $76a2: $2a
	rst  $38                                         ; $76a3: $ff
	ld   h, d                                        ; $76a4: $62
	ld   h, h                                        ; $76a5: $64
	ld   b, a                                        ; $76a6: $47
	add  c                                           ; $76a7: $81

Jump_0ac_76a8:
	ccf                                              ; $76a8: $3f
	push af                                          ; $76a9: $f5
	ld   b, [hl]                                     ; $76aa: $46
	ld   h, d                                        ; $76ab: $62
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76ac: $cf
	and  $26                                         ; $76ad: $e6 $26
	ld   b, h                                        ; $76af: $44
	ld   a, b                                        ; $76b0: $78
	inc  d                                           ; $76b1: $14
	rst  $38                                         ; $76b2: $ff
	ld   b, h                                        ; $76b3: $44
	ld   h, l                                        ; $76b4: $65
	dec  l                                           ; $76b5: $2d
	cp   $53                                         ; $76b6: $fe $53
	ld   h, h                                        ; $76b8: $64
	ld   b, a                                        ; $76b9: $47
	add  c                                           ; $76ba: $81
	ld   c, a                                        ; $76bb: $4f
	db   $f4                                         ; $76bc: $f4
	ld   b, [hl]                                     ; $76bd: $46
	ld   d, e                                        ; $76be: $53
	rst  $28                                         ; $76bf: $ef
	push hl                                          ; $76c0: $e5
	dec  [hl]                                        ; $76c1: $35
	ld   b, l                                        ; $76c2: $45
	ld   [hl], a                                     ; $76c3: $77
	dec  d                                           ; $76c4: $15
	rst  $38                                         ; $76c5: $ff
	ld   b, h                                        ; $76c6: $44
	ld   h, l                                        ; $76c7: $65
	ld   a, $fd                                      ; $76c8: $3e $fd
	ld   d, e                                        ; $76ca: $53
	ld   d, e                                        ; $76cb: $53
	ld   d, a                                        ; $76cc: $57
	ld   [hl], c                                     ; $76cd: $71
	ld   e, a                                        ; $76ce: $5f
	db   $f4                                         ; $76cf: $f4
	ld   b, [hl]                                     ; $76d0: $46
	ld   b, e                                        ; $76d1: $43
	rst  $28                                         ; $76d2: $ef
	push hl                                          ; $76d3: $e5
	dec  [hl]                                        ; $76d4: $35
	dec  [hl]                                        ; $76d5: $35
	ld   [hl], a                                     ; $76d6: $77
	ld   d, $ff                                      ; $76d7: $16 $ff
	ld   b, l                                        ; $76d9: $45
	ld   h, h                                        ; $76da: $64
	ld   c, [hl]                                     ; $76db: $4e
	db   $fd                                         ; $76dc: $fd
	ld   b, h                                        ; $76dd: $44
	ld   d, e                                        ; $76de: $53
	ld   d, a                                        ; $76df: $57
	ld   [hl], c                                     ; $76e0: $71
	ld   l, a                                        ; $76e1: $6f
	db   $e4                                         ; $76e2: $e4
	ld   d, a                                        ; $76e3: $57
	ld   b, h                                        ; $76e4: $44
	rst  $38                                         ; $76e5: $ff
	call nc, $3545                                   ; $76e6: $d4 $45 $35
	ld   h, a                                        ; $76e9: $67
	rla                                              ; $76ea: $17
	cp   $55                                         ; $76eb: $fe $55
	ld   h, e                                        ; $76ed: $63
	ld   c, [hl]                                     ; $76ee: $4e
	db   $fc                                         ; $76ef: $fc
	ld   d, l                                        ; $76f0: $55
	ld   b, e                                        ; $76f1: $43
	ld   d, [hl]                                     ; $76f2: $56
	ld   h, c                                        ; $76f3: $61
	sbc  a                                           ; $76f4: $9f
	call nc, $3556                                   ; $76f5: $d4 $56 $35
	rst  $38                                         ; $76f8: $ff
	call nz, $3654                                   ; $76f9: $c4 $54 $36
	ld   h, [hl]                                     ; $76fc: $66
	ld   a, [de]                                     ; $76fd: $1a
	db   $fd                                         ; $76fe: $fd
	ld   d, [hl]                                     ; $76ff: $56
	ld   h, e                                        ; $7700: $63
	ld   l, a                                        ; $7701: $6f
	db   $fc                                         ; $7702: $fc
	ld   d, l                                        ; $7703: $55
	ld   b, e                                        ; $7704: $43
	ld   h, [hl]                                     ; $7705: $66
	ld   d, c                                        ; $7706: $51
	cp   a                                           ; $7707: $bf
	or   [hl]                                        ; $7708: $b6
	ld   [hl], l                                     ; $7709: $75
	daa                                              ; $770a: $27
	rst  $38                                         ; $770b: $ff
	push bc                                          ; $770c: $c5
	ld   h, d                                        ; $770d: $62
	ld   [hl], $65                                   ; $770e: $36 $65
	dec  e                                           ; $7710: $1d
	ld   a, [$5267]                                  ; $7711: $fa $67 $52
	ld   a, a                                        ; $7714: $7f
	db   $fc                                         ; $7715: $fc
	ld   d, [hl]                                     ; $7716: $56
	inc  [hl]                                        ; $7717: $34
	ld   h, l                                        ; $7718: $65
	ld   b, c                                        ; $7719: $41
	rst  $28                                         ; $771a: $ef
	sub  a                                           ; $771b: $97
	ld   [hl], h                                     ; $771c: $74
	jr   @+$01                                       ; $771d: $18 $ff

	or   [hl]                                        ; $771f: $b6
	ld   h, d                                        ; $7720: $62
	ld   b, [hl]                                     ; $7721: $46
	ld   d, h                                        ; $7722: $54
	rra                                              ; $7723: $1f
	ld   sp, hl                                      ; $7724: $f9
	ld   a, b                                        ; $7725: $78
	ld   b, c                                        ; $7726: $41
	xor  a                                           ; $7727: $af
	ei                                               ; $7728: $fb
	ld   h, [hl]                                     ; $7729: $66
	inc  d                                           ; $772a: $14
	ld   d, h                                        ; $772b: $54
	ld   b, d                                        ; $772c: $42
	rst  $38                                         ; $772d: $ff
	sub  a                                           ; $772e: $97
	ld   [hl], e                                     ; $772f: $73
	dec  de                                          ; $7730: $1b
	cp   $a7                                         ; $7731: $fe $a7
	ld   d, c                                        ; $7733: $51
	ld   d, l                                        ; $7734: $55
	ld   d, e                                        ; $7735: $53
	cpl                                              ; $7736: $2f
	ld   hl, sp-$78                                  ; $7737: $f8 $88
	ld   [hl-], a                                    ; $7739: $32
	cp   a                                           ; $773a: $bf
	ld   a, [$1476]                                  ; $773b: $fa $76 $14
	ld   b, l                                        ; $773e: $45
	inc  d                                           ; $773f: $14

jr_0ac_7740:
	rst  $38                                         ; $7740: $ff
	ld   a, b                                        ; $7741: $78
	ld   [hl], c                                     ; $7742: $71
	ld   l, $fe                                      ; $7743: $2e $fe
	xor  b                                           ; $7745: $a8
	ld   b, c                                        ; $7746: $41
	ld   h, h                                        ; $7747: $64
	ld   d, d                                        ; $7748: $52
	ld   l, a                                        ; $7749: $6f
	ld   hl, sp-$59                                  ; $774a: $f8 $a7
	inc  de                                          ; $774c: $13
	xor  $ea                                         ; $774d: $ee $ea
	add  h                                           ; $774f: $84
	dec  d                                           ; $7750: $15
	inc  [hl]                                        ; $7751: $34
	add  hl, hl                                      ; $7752: $29
	cp   $9a                                         ; $7753: $fe $9a
	ld   h, c                                        ; $7755: $61
	ld   e, l                                        ; $7756: $5d
	db   $dd                                         ; $7757: $dd
	xor  c                                           ; $7758: $a9
	ld   [hl-], a                                    ; $7759: $32
	ld   d, e                                        ; $775a: $53
	ld   sp, $cacf                                   ; $775b: $31 $cf $ca
	sub  l                                           ; $775e: $95
	ld   d, $ee                                      ; $775f: $16 $ee
	jp   c, $2593                                    ; $7761: $da $93 $25

	inc  [hl]                                        ; $7764: $34
	dec  e                                           ; $7765: $1d
	db   $fc                                         ; $7766: $fc
	cp   c                                           ; $7767: $b9
	ld   d, c                                        ; $7768: $51
	ld   a, h                                        ; $7769: $7c
	db   $dd                                         ; $776a: $dd
	xor  d                                           ; $776b: $aa
	inc  hl                                          ; $776c: $23
	ld   b, d                                        ; $776d: $42
	ld   [hl+], a                                    ; $776e: $22
	rst  $28                                         ; $776f: $ef
	cp   e                                           ; $7770: $bb
	sub  h                                           ; $7771: $94
	jr   jr_0ac_7740                                 ; $7772: $18 $cc

	res  2, d                                        ; $7774: $cb $92
	inc  [hl]                                        ; $7776: $34
	ld   [hl+], a                                    ; $7777: $22
	cpl                                              ; $7778: $2f
	ei                                               ; $7779: $fb
	ret                                              ; $777a: $c9


	ld   b, c                                        ; $777b: $41
	sbc  h                                           ; $777c: $9c
	cp   h                                           ; $777d: $bc
	ret                                              ; $777e: $c9


	dec  h                                           ; $777f: $25
	ld   sp, rAUDVOL                                   ; $7780: $31 $24 $ff
	call z, $2aa3                                    ; $7783: $cc $a3 $2a
	sbc  e                                           ; $7786: $9b
	db   $db                                         ; $7787: $db
	sub  e                                           ; $7788: $93

Call_0ac_7789:
	ld   d, c                                        ; $7789: $51
	ld   de, $ed7f                                   ; $778a: $11 $7f $ed
	ret  c                                           ; $778d: $d8

	inc  h                                           ; $778e: $24
	xor  b                                           ; $778f: $a8
	call z, Call_0ac_45a6                            ; $7790: $cc $a6 $45
	ld   de, $fc3d                                   ; $7793: $11 $3d $fc
	ei                                               ; $7796: $fb
	ld   h, e                                        ; $7797: $63
	adc  b                                           ; $7798: $88
	adc  l                                           ; $7799: $8d
	cp   c                                           ; $779a: $b9
	ld   d, l                                        ; $779b: $55
	ld   de, $fb29                                   ; $779c: $11 $29 $fb
	cp   $86                                         ; $779f: $fe $86
	ld   l, b                                        ; $77a1: $68
	ld   l, d                                        ; $77a2: $6a
	xor  c                                           ; $77a3: $a9
	ld   [hl], l                                     ; $77a4: $75
	ld   sp, $eb16                                   ; $77a5: $31 $16 $eb
	rst  $28                                         ; $77a8: $ef
	sbc  b                                           ; $77a9: $98
	ld   h, a                                        ; $77aa: $67
	ld   l, c                                        ; $77ab: $69
	xor  c                                           ; $77ac: $a9
	add  l                                           ; $77ad: $85
	ld   sp, $db17                                   ; $77ae: $31 $17 $db
	rst  $28                                         ; $77b1: $ef
	cp   b                                           ; $77b2: $b8
	ld   l, b                                        ; $77b3: $68
	ld   a, b                                        ; $77b4: $78
	xor  c                                           ; $77b5: $a9
	ld   [hl], h                                     ; $77b6: $74
	ld   sp, $cb19                                   ; $77b7: $31 $19 $cb
	rst  JumpTable                                         ; $77ba: $df
	cp   c                                           ; $77bb: $b9
	ld   a, c                                        ; $77bc: $79
	ld   a, c                                        ; $77bd: $79
	sbc  b                                           ; $77be: $98
	ld   h, e                                        ; $77bf: $63
	ld   hl, $bb4b                                   ; $77c0: $21 $4b $bb
	cp   $98                                         ; $77c3: $fe $98
	sbc  b                                           ; $77c5: $98
	adc  c                                           ; $77c6: $89
	halt                                             ; $77c7: $76
	ld   hl, $ac13                                   ; $77c8: $21 $13 $ac
	cp   a                                           ; $77cb: $bf
	jp   hl                                          ; $77cc: $e9


	adc  c                                           ; $77cd: $89
	sbc  b                                           ; $77ce: $98
	add  a                                           ; $77cf: $87
	ld   d, e                                        ; $77d0: $53
	ld   [de], a                                     ; $77d1: $12
	add  hl, sp                                      ; $77d2: $39
	set  5, a                                        ; $77d3: $cb $ef
	cp   c                                           ; $77d5: $b9
	xor  c                                           ; $77d6: $a9
	adc  b                                           ; $77d7: $88
	ld   [hl], l                                     ; $77d8: $75
	ld   [hl+], a                                    ; $77d9: $22
	inc  hl                                          ; $77da: $23
	sbc  e                                           ; $77db: $9b
	xor  [hl]                                        ; $77dc: $ae
	db   $db                                         ; $77dd: $db
	xor  e                                           ; $77de: $ab
	sub  a                                           ; $77df: $97
	add  [hl]                                        ; $77e0: $86
	ld   d, e                                        ; $77e1: $53
	ld   [hl+], a                                    ; $77e2: $22
	add  hl, hl                                      ; $77e3: $29
	cp   d                                           ; $77e4: $ba
	xor  $ba                                         ; $77e5: $ee $ba
	xor  d                                           ; $77e7: $aa
	adc  b                                           ; $77e8: $88
	ld   [hl], l                                     ; $77e9: $75
	ld   [hl+], a                                    ; $77ea: $22
	inc  hl                                          ; $77eb: $23
	sbc  d                                           ; $77ec: $9a
	sbc  l                                           ; $77ed: $9d
	ld   a, [$a8aa]                                  ; $77ee: $fa $aa $a8
	add  a                                           ; $77f1: $87
	ld   d, e                                        ; $77f2: $53
	ld   [hl-], a                                    ; $77f3: $32
	daa                                              ; $77f4: $27
	xor  c                                           ; $77f5: $a9
	adc  $ca                                         ; $77f6: $ce $ca
	cp   c                                           ; $77f8: $b9
	adc  b                                           ; $77f9: $88
	ld   [hl], l                                     ; $77fa: $75
	ld   b, e                                        ; $77fb: $43
	ld   [hl+], a                                    ; $77fc: $22
	ld   e, d                                        ; $77fd: $5a
	sbc  e                                           ; $77fe: $9b
	db   $ec                                         ; $77ff: $ec
	call z, $87b8                                    ; $7800: $cc $b8 $87
	ld   d, h                                        ; $7803: $54
	inc  sp                                          ; $7804: $33
	inc  h                                           ; $7805: $24
	sbc  b                                           ; $7806: $98
	xor  [hl]                                        ; $7807: $ae
	call c, $a8bb                                    ; $7808: $dc $bb $a8
	add  [hl]                                        ; $780b: $86
	ld   b, h                                        ; $780c: $44
	ld   [hl-], a                                    ; $780d: $32
	scf                                              ; $780e: $37
	adc  b                                           ; $780f: $88
	call $cbcc                                       ; $7810: $cd $cc $cb
	sbc  c                                           ; $7813: $99
	ld   [hl], l                                     ; $7814: $75
	ld   b, e                                        ; $7815: $43
	ld   [hl-], a                                    ; $7816: $32
	ld   e, b                                        ; $7817: $58
	adc  e                                           ; $7818: $8b
	db   $dd                                         ; $7819: $dd
	cp   h                                           ; $781a: $bc
	jp   z, Jump_0ac_6588                            ; $781b: $ca $88 $65

	ld   b, e                                        ; $781e: $43
	inc  hl                                          ; $781f: $23
	ld   [hl], a                                     ; $7820: $77
	sbc  l                                           ; $7821: $9d
	call c, $b9dd                                    ; $7822: $dc $dd $b9
	sub  a                                           ; $7825: $97
	ld   h, l                                        ; $7826: $65
	ld   b, d                                        ; $7827: $42
	dec  h                                           ; $7828: $25
	ld   h, a                                        ; $7829: $67
	xor  h                                           ; $782a: $ac
	call z, $a9cc                                    ; $782b: $cc $cc $a9
	sub  [hl]                                        ; $782e: $96
	ld   h, l                                        ; $782f: $65
	ld   b, e                                        ; $7830: $43
	dec  [hl]                                        ; $7831: $35
	ld   h, a                                        ; $7832: $67
	xor  h                                           ; $7833: $ac
	call z, $99dc                                    ; $7834: $cc $dc $99
	add  [hl]                                        ; $7837: $86
	ld   h, l                                        ; $7838: $65
	ld   b, e                                        ; $7839: $43
	ld   b, l                                        ; $783a: $45
	ld   h, a                                        ; $783b: $67
	sbc  e                                           ; $783c: $9b
	cp   e                                           ; $783d: $bb
	res  5, d                                        ; $783e: $cb $aa
	add  a                                           ; $7840: $87
	halt                                             ; $7841: $76
	ld   d, l                                        ; $7842: $55
	ld   d, [hl]                                     ; $7843: $56
	ld   [hl], a                                     ; $7844: $77
	adc  d                                           ; $7845: $8a
	xor  e                                           ; $7846: $ab
	cp   e                                           ; $7847: $bb
	xor  c                                           ; $7848: $a9
	sbc  b                                           ; $7849: $98
	add  a                                           ; $784a: $87
	halt                                             ; $784b: $76
	ld   h, [hl]                                     ; $784c: $66
	ld   [hl], a                                     ; $784d: $77
	ld   a, c                                        ; $784e: $79
	adc  c                                           ; $784f: $89
	adc  c                                           ; $7850: $89
	adc  b                                           ; $7851: $88
	adc  c                                           ; $7852: $89
	sbc  c                                           ; $7853: $99
	sbc  b                                           ; $7854: $98
	add  a                                           ; $7855: $87
	ld   [hl], a                                     ; $7856: $77
	ld   [hl], a                                     ; $7857: $77
	ld   [hl], a                                     ; $7858: $77
	ld   [hl], a                                     ; $7859: $77
	adc  c                                           ; $785a: $89
	adc  c                                           ; $785b: $89
	sbc  c                                           ; $785c: $99
	sbc  d                                           ; $785d: $9a
	sbc  c                                           ; $785e: $99
	add  a                                           ; $785f: $87
	ld   [hl], a                                     ; $7860: $77
	ld   h, [hl]                                     ; $7861: $66
	ld   h, [hl]                                     ; $7862: $66
	ld   [hl], a                                     ; $7863: $77
	adc  b                                           ; $7864: $88
	sbc  d                                           ; $7865: $9a
	xor  d                                           ; $7866: $aa
	sbc  d                                           ; $7867: $9a
	adc  b                                           ; $7868: $88
	ld   [hl], a                                     ; $7869: $77
	halt                                             ; $786a: $76
	ld   h, [hl]                                     ; $786b: $66
	ld   h, [hl]                                     ; $786c: $66
	ld   a, b                                        ; $786d: $78
	adc  c                                           ; $786e: $89
	xor  d                                           ; $786f: $aa
	cp   d                                           ; $7870: $ba
	sbc  c                                           ; $7871: $99
	add  a                                           ; $7872: $87
	ld   [hl], a                                     ; $7873: $77
	ld   h, [hl]                                     ; $7874: $66
	ld   h, [hl]                                     ; $7875: $66
	ld   h, a                                        ; $7876: $67
	adc  c                                           ; $7877: $89

Call_0ac_7878:
	sbc  d                                           ; $7878: $9a

Call_0ac_7879:
	xor  e                                           ; $7879: $ab
	xor  d                                           ; $787a: $aa
	xor  b                                           ; $787b: $a8
	add  a                                           ; $787c: $87
	halt                                             ; $787d: $76
	ld   h, [hl]                                     ; $787e: $66
	ld   h, [hl]                                     ; $787f: $66
	ld   h, a                                        ; $7880: $67
	adc  c                                           ; $7881: $89
	sbc  d                                           ; $7882: $9a
	cp   d                                           ; $7883: $ba
	xor  c                                           ; $7884: $a9
	sbc  c                                           ; $7885: $99
	ld   [hl], a                                     ; $7886: $77
	ld   h, [hl]                                     ; $7887: $66
	ld   h, [hl]                                     ; $7888: $66

Call_0ac_7889:
	ld   h, [hl]                                     ; $7889: $66
	ld   a, b                                        ; $788a: $78
	sbc  d                                           ; $788b: $9a
	sbc  d                                           ; $788c: $9a
	xor  d                                           ; $788d: $aa
	xor  c                                           ; $788e: $a9
	sbc  b                                           ; $788f: $98
	ld   [hl], a                                     ; $7890: $77
	ld   h, [hl]                                     ; $7891: $66
	ld   h, [hl]                                     ; $7892: $66
	ld   h, [hl]                                     ; $7893: $66
	ld   a, b                                        ; $7894: $78
	sbc  c                                           ; $7895: $99
	xor  d                                           ; $7896: $aa
	xor  d                                           ; $7897: $aa
	xor  d                                           ; $7898: $aa
	adc  b                                           ; $7899: $88
	ld   [hl], a                                     ; $789a: $77
	ld   h, [hl]                                     ; $789b: $66
	ld   h, [hl]                                     ; $789c: $66
	ld   h, a                                        ; $789d: $67
	ld   a, b                                        ; $789e: $78
	sbc  c                                           ; $789f: $99
	xor  e                                           ; $78a0: $ab
	cp   d                                           ; $78a1: $ba
	xor  d                                           ; $78a2: $aa
	sub  a                                           ; $78a3: $97
	halt                                             ; $78a4: $76
	ld   h, l                                        ; $78a5: $65
	ld   h, [hl]                                     ; $78a6: $66
	ld   h, a                                        ; $78a7: $67
	ld   a, c                                        ; $78a8: $79
	xor  d                                           ; $78a9: $aa
	xor  e                                           ; $78aa: $ab
	cp   d                                           ; $78ab: $ba
	sbc  c                                           ; $78ac: $99
	add  a                                           ; $78ad: $87
	halt                                             ; $78ae: $76
	ld   h, [hl]                                     ; $78af: $66
	ld   h, [hl]                                     ; $78b0: $66
	ld   h, a                                        ; $78b1: $67
	adc  c                                           ; $78b2: $89
	xor  d                                           ; $78b3: $aa
	xor  e                                           ; $78b4: $ab
	xor  d                                           ; $78b5: $aa
	sbc  c                                           ; $78b6: $99
	add  a                                           ; $78b7: $87
	halt                                             ; $78b8: $76
	ld   h, [hl]                                     ; $78b9: $66
	ld   h, [hl]                                     ; $78ba: $66
	ld   h, a                                        ; $78bb: $67
	adc  c                                           ; $78bc: $89
	xor  d                                           ; $78bd: $aa
	xor  e                                           ; $78be: $ab
	xor  d                                           ; $78bf: $aa
	sbc  c                                           ; $78c0: $99
	add  a                                           ; $78c1: $87
	halt                                             ; $78c2: $76
	ld   h, [hl]                                     ; $78c3: $66
	ld   h, [hl]                                     ; $78c4: $66
	ld   h, a                                        ; $78c5: $67
	ld   a, c                                        ; $78c6: $79
	xor  c                                           ; $78c7: $a9
	xor  d                                           ; $78c8: $aa
	xor  d                                           ; $78c9: $aa
	sbc  c                                           ; $78ca: $99
	add  a                                           ; $78cb: $87
	halt                                             ; $78cc: $76
	ld   h, [hl]                                     ; $78cd: $66
	ld   h, [hl]                                     ; $78ce: $66
	ld   h, a                                        ; $78cf: $67
	ld   a, b                                        ; $78d0: $78
	sbc  c                                           ; $78d1: $99
	xor  d                                           ; $78d2: $aa
	xor  d                                           ; $78d3: $aa
	xor  c                                           ; $78d4: $a9
	sub  a                                           ; $78d5: $97
	halt                                             ; $78d6: $76
	ld   h, [hl]                                     ; $78d7: $66
	ld   h, [hl]                                     ; $78d8: $66
	ld   h, a                                        ; $78d9: $67
	ld   a, b                                        ; $78da: $78
	sbc  c                                           ; $78db: $99
	xor  d                                           ; $78dc: $aa
	cp   d                                           ; $78dd: $ba
	xor  d                                           ; $78de: $aa
	adc  b                                           ; $78df: $88
	halt                                             ; $78e0: $76
	ld   h, l                                        ; $78e1: $65
	ld   h, [hl]                                     ; $78e2: $66
	ld   h, [hl]                                     ; $78e3: $66
	ld   a, b                                        ; $78e4: $78
	adc  d                                           ; $78e5: $8a
	sbc  d                                           ; $78e6: $9a
	cp   d                                           ; $78e7: $ba
	xor  c                                           ; $78e8: $a9
	sbc  b                                           ; $78e9: $98
	halt                                             ; $78ea: $76
	ld   h, [hl]                                     ; $78eb: $66
	ld   d, [hl]                                     ; $78ec: $56
	ld   h, [hl]                                     ; $78ed: $66
	ld   [hl], a                                     ; $78ee: $77
	sbc  c                                           ; $78ef: $99
	sbc  d                                           ; $78f0: $9a
	cp   e                                           ; $78f1: $bb
	xor  d                                           ; $78f2: $aa
	sbc  c                                           ; $78f3: $99
	ld   [hl], a                                     ; $78f4: $77
	ld   h, [hl]                                     ; $78f5: $66
	ld   h, [hl]                                     ; $78f6: $66
	ld   h, [hl]                                     ; $78f7: $66
	ld   [hl], a                                     ; $78f8: $77
	adc  c                                           ; $78f9: $89
	xor  d                                           ; $78fa: $aa
	xor  e                                           ; $78fb: $ab
	xor  d                                           ; $78fc: $aa
	xor  b                                           ; $78fd: $a8
	add  a                                           ; $78fe: $87
	halt                                             ; $78ff: $76
	ld   h, [hl]                                     ; $7900: $66
	ld   h, [hl]                                     ; $7901: $66
	ld   h, a                                        ; $7902: $67
	ld   a, b                                        ; $7903: $78
	sbc  c                                           ; $7904: $99
	xor  d                                           ; $7905: $aa
	xor  d                                           ; $7906: $aa
	sbc  d                                           ; $7907: $9a
	sbc  b                                           ; $7908: $98
	ld   [hl], a                                     ; $7909: $77
	ld   h, [hl]                                     ; $790a: $66
	ld   h, [hl]                                     ; $790b: $66
	ld   h, [hl]                                     ; $790c: $66
	ld   [hl], a                                     ; $790d: $77
	sbc  c                                           ; $790e: $99
	sbc  d                                           ; $790f: $9a
	xor  d                                           ; $7910: $aa
	xor  c                                           ; $7911: $a9
	sbc  b                                           ; $7912: $98
	add  a                                           ; $7913: $87
	halt                                             ; $7914: $76
	ld   h, [hl]                                     ; $7915: $66
	ld   h, [hl]                                     ; $7916: $66
	ld   [hl], a                                     ; $7917: $77
	adc  c                                           ; $7918: $89
	sbc  d                                           ; $7919: $9a
	xor  d                                           ; $791a: $aa
	xor  d                                           ; $791b: $aa
	sbc  c                                           ; $791c: $99
	sbc  b                                           ; $791d: $98
	halt                                             ; $791e: $76
	ld   h, [hl]                                     ; $791f: $66
	ld   h, [hl]                                     ; $7920: $66
	ld   h, a                                        ; $7921: $67
	ld   a, b                                        ; $7922: $78
	sbc  c                                           ; $7923: $99
	sbc  d                                           ; $7924: $9a
	xor  d                                           ; $7925: $aa
	sbc  c                                           ; $7926: $99
	sbc  c                                           ; $7927: $99
	add  a                                           ; $7928: $87
	ld   h, [hl]                                     ; $7929: $66
	ld   h, [hl]                                     ; $792a: $66
	ld   h, [hl]                                     ; $792b: $66
	ld   [hl], a                                     ; $792c: $77
	adc  c                                           ; $792d: $89
	sbc  d                                           ; $792e: $9a
	sbc  d                                           ; $792f: $9a
	xor  c                                           ; $7930: $a9
	sbc  c                                           ; $7931: $99
	sbc  b                                           ; $7932: $98
	ld   [hl], a                                     ; $7933: $77
	ld   h, [hl]                                     ; $7934: $66
	ld   h, [hl]                                     ; $7935: $66
	ld   h, a                                        ; $7936: $67
	ld   [hl], a                                     ; $7937: $77
	adc  c                                           ; $7938: $89
	xor  c                                           ; $7939: $a9
	xor  d                                           ; $793a: $aa
	sbc  d                                           ; $793b: $9a
	sbc  c                                           ; $793c: $99
	add  a                                           ; $793d: $87
	halt                                             ; $793e: $76
	ld   h, [hl]                                     ; $793f: $66
	ld   h, [hl]                                     ; $7940: $66
	ld   [hl], a                                     ; $7941: $77
	ld   a, b                                        ; $7942: $78
	sbc  d                                           ; $7943: $9a
	sbc  d                                           ; $7944: $9a
	xor  c                                           ; $7945: $a9
	sbc  d                                           ; $7946: $9a
	adc  b                                           ; $7947: $88
	ld   [hl], a                                     ; $7948: $77
	ld   h, [hl]                                     ; $7949: $66
	ld   h, [hl]                                     ; $794a: $66
	ld   h, [hl]                                     ; $794b: $66
	ld   [hl], a                                     ; $794c: $77
	adc  b                                           ; $794d: $88
	sbc  c                                           ; $794e: $99
	xor  d                                           ; $794f: $aa
	xor  c                                           ; $7950: $a9
	xor  c                                           ; $7951: $a9
	sub  a                                           ; $7952: $97
	ld   [hl], a                                     ; $7953: $77
	ld   h, [hl]                                     ; $7954: $66
	ld   h, [hl]                                     ; $7955: $66
	ld   h, a                                        ; $7956: $67
	ld   a, b                                        ; $7957: $78
	sbc  c                                           ; $7958: $99
	xor  d                                           ; $7959: $aa
	xor  d                                           ; $795a: $aa
	sbc  c                                           ; $795b: $99
	sbc  c                                           ; $795c: $99
	add  a                                           ; $795d: $87
	halt                                             ; $795e: $76
	ld   h, [hl]                                     ; $795f: $66
	ld   h, [hl]                                     ; $7960: $66
	ld   [hl], a                                     ; $7961: $77
	ld   a, c                                        ; $7962: $79
	sbc  d                                           ; $7963: $9a
	xor  d                                           ; $7964: $aa
	xor  d                                           ; $7965: $aa
	sbc  c                                           ; $7966: $99
	adc  b                                           ; $7967: $88
	ld   [hl], a                                     ; $7968: $77
	ld   h, [hl]                                     ; $7969: $66
	ld   h, [hl]                                     ; $796a: $66
	ld   h, [hl]                                     ; $796b: $66
	ld   [hl], a                                     ; $796c: $77
	adc  c                                           ; $796d: $89
	sbc  c                                           ; $796e: $99
	xor  d                                           ; $796f: $aa
	xor  c                                           ; $7970: $a9
	xor  c                                           ; $7971: $a9
	add  a                                           ; $7972: $87
	ld   [hl], a                                     ; $7973: $77
	ld   h, [hl]                                     ; $7974: $66
	ld   h, [hl]                                     ; $7975: $66
	ld   h, a                                        ; $7976: $67
	ld   a, b                                        ; $7977: $78
	adc  c                                           ; $7978: $89
	xor  d                                           ; $7979: $aa
	xor  d                                           ; $797a: $aa
	sbc  d                                           ; $797b: $9a
	sbc  b                                           ; $797c: $98
	ld   [hl], a                                     ; $797d: $77
	halt                                             ; $797e: $76
	ld   h, [hl]                                     ; $797f: $66
	ld   h, a                                        ; $7980: $67
	ld   [hl], a                                     ; $7981: $77
	ld   a, c                                        ; $7982: $79
	sbc  d                                           ; $7983: $9a
	xor  d                                           ; $7984: $aa
	xor  c                                           ; $7985: $a9

Jump_0ac_7986:
	sbc  b                                           ; $7986: $98
	halt                                             ; $7987: $76

Call_0ac_7988:
	ld   h, [hl]                                     ; $7988: $66

Call_0ac_7989:
	ld   d, [hl]                                     ; $7989: $56
	ld   h, [hl]                                     ; $798a: $66
	ld   a, b                                        ; $798b: $78
	sbc  c                                           ; $798c: $99
	xor  c                                           ; $798d: $a9
	xor  e                                           ; $798e: $ab
	xor  d                                           ; $798f: $aa
	adc  b                                           ; $7990: $88
	halt                                             ; $7991: $76
	ld   d, [hl]                                     ; $7992: $56
	ld   h, h                                        ; $7993: $64
	ld   [hl], a                                     ; $7994: $77
	ld   a, c                                        ; $7995: $79
	sbc  c                                           ; $7996: $99
	xor  e                                           ; $7997: $ab
	sbc  e                                           ; $7998: $9b
	xor  c                                           ; $7999: $a9
	adc  b                                           ; $799a: $88
	ld   [hl], l                                     ; $799b: $75
	ld   d, h                                        ; $799c: $54
	ld   h, l                                        ; $799d: $65
	ld   e, b                                        ; $799e: $58
	ld   a, b                                        ; $799f: $78
	sbc  e                                           ; $79a0: $9b
	xor  e                                           ; $79a1: $ab
	cp   d                                           ; $79a2: $ba
	cp   d                                           ; $79a3: $ba
	sbc  b                                           ; $79a4: $98
	halt                                             ; $79a5: $76
	ld   b, h                                        ; $79a6: $44
	ld   b, [hl]                                     ; $79a7: $46
	ld   b, [hl]                                     ; $79a8: $46
	adc  c                                           ; $79a9: $89
	sbc  e                                           ; $79aa: $9b
	cp   d                                           ; $79ab: $ba
	jp   z, $889a                                    ; $79ac: $ca $9a $88

	ld   [hl], a                                     ; $79af: $77
	ld   b, h                                        ; $79b0: $44
	inc  [hl]                                        ; $79b1: $34
	ld   h, l                                        ; $79b2: $65
	adc  c                                           ; $79b3: $89
	xor  e                                           ; $79b4: $ab
	res  7, h                                        ; $79b5: $cb $bc
	adc  d                                           ; $79b7: $8a
	sbc  b                                           ; $79b8: $98
	ld   [hl], a                                     ; $79b9: $77
	ld   h, e                                        ; $79ba: $63
	inc  sp                                          ; $79bb: $33
	ld   h, l                                        ; $79bc: $65
	ld   a, d                                        ; $79bd: $7a
	xor  e                                           ; $79be: $ab
	call z, $a8ab                                    ; $79bf: $cc $ab $a8
	xor  b                                           ; $79c2: $a8
	add  [hl]                                        ; $79c3: $86
	ld   h, h                                        ; $79c4: $64
	inc  sp                                          ; $79c5: $33
	ld   b, [hl]                                     ; $79c6: $46
	ld   l, c                                        ; $79c7: $69
	cp   d                                           ; $79c8: $ba
	call z, $a8ba                                    ; $79c9: $cc $ba $a8
	sbc  b                                           ; $79cc: $98
	ld   [hl], a                                     ; $79cd: $77
	ld   h, l                                        ; $79ce: $65
	ld   [hl-], a                                    ; $79cf: $32
	ld   b, [hl]                                     ; $79d0: $46
	ld   l, c                                        ; $79d1: $69
	cp   e                                           ; $79d2: $bb
	call $a9ca                                       ; $79d3: $cd $ca $a9
	adc  b                                           ; $79d6: $88
	ld   [hl], a                                     ; $79d7: $77
	ld   h, l                                        ; $79d8: $65
	ld   [hl-], a                                    ; $79d9: $32
	ld   [hl], $67                                   ; $79da: $36 $67
	cp   e                                           ; $79dc: $bb
	call z, $a9ca                                    ; $79dd: $cc $ca $a9
	adc  c                                           ; $79e0: $89
	add  a                                           ; $79e1: $87
	ld   [hl], l                                     ; $79e2: $75
	ld   b, d                                        ; $79e3: $42
	ld   h, $67                                      ; $79e4: $26 $67
	cp   h                                           ; $79e6: $bc
	call $aacb                                       ; $79e7: $cd $cb $aa
	ld   a, c                                        ; $79ea: $79
	add  [hl]                                        ; $79eb: $86
	ld   [hl], l                                     ; $79ec: $75
	ld   b, d                                        ; $79ed: $42
	dec  [hl]                                        ; $79ee: $35
	ld   l, b                                        ; $79ef: $68
	cp   e                                           ; $79f0: $bb
	call $a9cb                                       ; $79f1: $cd $cb $a9
	ld   a, b                                        ; $79f4: $78
	add  a                                           ; $79f5: $87
	ld   h, l                                        ; $79f6: $65
	ld   b, d                                        ; $79f7: $42
	dec  [hl]                                        ; $79f8: $35
	ld   l, b                                        ; $79f9: $68
	xor  e                                           ; $79fa: $ab
	call z, $aaca                                    ; $79fb: $cc $ca $aa
	adc  b                                           ; $79fe: $88
	add  a                                           ; $79ff: $87
	ld   h, l                                        ; $7a00: $65
	ld   b, c                                        ; $7a01: $41
	ld   h, $68                                      ; $7a02: $26 $68
	call z, $dbdd                                    ; $7a04: $cc $dd $db
	xor  d                                           ; $7a07: $aa
	ld   a, b                                        ; $7a08: $78
	add  a                                           ; $7a09: $87
	ld   h, h                                        ; $7a0a: $64
	ld   b, c                                        ; $7a0b: $41
	ld   h, $79                                      ; $7a0c: $26 $79
	call z, $c9dd                                    ; $7a0e: $cc $dd $c9
	sbc  c                                           ; $7a11: $99
	ld   l, b                                        ; $7a12: $68
	add  [hl]                                        ; $7a13: $86
	ld   d, h                                        ; $7a14: $54
	ld   sp, $6a46                                   ; $7a15: $31 $46 $6a
	call $c9de                                       ; $7a18: $cd $de $c9
	xor  b                                           ; $7a1b: $a8
	ld   a, b                                        ; $7a1c: $78
	halt                                             ; $7a1d: $76
	ld   b, h                                        ; $7a1e: $44
	ld   hl, $9d66                                   ; $7a1f: $21 $66 $9d
	adc  $dd                                         ; $7a22: $ce $dd
	xor  c                                           ; $7a24: $a9
	and  a                                           ; $7a25: $a7
	add  a                                           ; $7a26: $87
	ld   [hl], l                                     ; $7a27: $75
	inc  sp                                          ; $7a28: $33
	inc  d                                           ; $7a29: $14
	ld   [hl], a                                     ; $7a2a: $77
	cp   l                                           ; $7a2b: $bd
	db   $dd                                         ; $7a2c: $dd
	call c, $8789                                    ; $7a2d: $dc $89 $87
	add  a                                           ; $7a30: $87
	ld   h, h                                        ; $7a31: $64
	ld   b, c                                        ; $7a32: $41
	rla                                              ; $7a33: $17
	ld   [hl], a                                     ; $7a34: $77
	db   $dd                                         ; $7a35: $dd
	call $9be9                                       ; $7a36: $cd $e9 $9b
	ld   h, a                                        ; $7a39: $67
	sub  l                                           ; $7a3a: $95
	ld   b, h                                        ; $7a3b: $44
	ld   hl, $7c57                                   ; $7a3c: $21 $57 $7c
	db   $dd                                         ; $7a3f: $dd
	adc  $b9                                         ; $7a40: $ce $b9
	xor  b                                           ; $7a42: $a8
	ld   a, b                                        ; $7a43: $78
	ld   [hl], h                                     ; $7a44: $74
	ld   b, e                                        ; $7a45: $43
	inc  de                                          ; $7a46: $13
	ld   h, a                                        ; $7a47: $67
	xor  h                                           ; $7a48: $ac
	db   $dd                                         ; $7a49: $dd
	call c, $969a                                    ; $7a4a: $dc $9a $96
	ld   [hl], a                                     ; $7a4d: $77
	ld   d, h                                        ; $7a4e: $54
	ld   b, d                                        ; $7a4f: $42
	ld   d, $68                                      ; $7a50: $16 $68
	db   $dd                                         ; $7a52: $dd
	db   $dd                                         ; $7a53: $dd
	jp   c, Jump_0ac_67ab                            ; $7a54: $da $ab $67

	ld   [hl], l                                     ; $7a57: $75
	ld   b, h                                        ; $7a58: $44
	ld   hl, $7d67                                   ; $7a59: $21 $67 $7d
	db   $dd                                         ; $7a5c: $dd
	db   $ed                                         ; $7a5d: $ed
	cp   d                                           ; $7a5e: $ba
	and  [hl]                                        ; $7a5f: $a6
	ld   a, b                                        ; $7a60: $78
	ld   b, l                                        ; $7a61: $45
	ld   b, d                                        ; $7a62: $42
	dec  d                                           ; $7a63: $15
	ld   h, a                                        ; $7a64: $67
	call c, $cbde                                    ; $7a65: $dc $de $cb
	xor  e                                           ; $7a68: $ab
	ld   a, b                                        ; $7a69: $78
	ld   [hl], h                                     ; $7a6a: $74
	ld   b, e                                        ; $7a6b: $43
	ld   hl, $7d66                                   ; $7a6c: $21 $66 $7d
	call $aaed                                       ; $7a6f: $cd $ed $aa
	or   [hl]                                        ; $7a72: $b6
	add  [hl]                                        ; $7a73: $86
	ld   b, l                                        ; $7a74: $45
	ld   hl, $6935                                   ; $7a75: $21 $35 $69
	db   $dd                                         ; $7a78: $dd
	xor  $ca                                         ; $7a79: $ee $ca
	xor  c                                           ; $7a7b: $a9
	ld   l, b                                        ; $7a7c: $68
	ld   h, h                                        ; $7a7d: $64
	ld   b, d                                        ; $7a7e: $42
	ld   [hl+], a                                    ; $7a7f: $22
	ld   d, [hl]                                     ; $7a80: $56
	sbc  [hl]                                        ; $7a81: $9e
	sbc  $ec                                         ; $7a82: $de $ec
	cp   c                                           ; $7a84: $b9
	sub  [hl]                                        ; $7a85: $96

Call_0ac_7a86:
	add  l                                           ; $7a86: $85
	ld   b, h                                        ; $7a87: $44
	ld   hl, $6b36                                   ; $7a88: $21 $36 $6b
	db   $dd                                         ; $7a8b: $dd
	db   $fd                                         ; $7a8c: $fd
	jp   z, Jump_0ac_58b7                            ; $7a8d: $ca $b7 $58

	inc  [hl]                                        ; $7a90: $34
	ld   b, c                                        ; $7a91: $41
	ld   d, $66                                      ; $7a92: $16 $66
	db   $ed                                         ; $7a94: $ed
	rst  JumpTable                                         ; $7a95: $df
	reti                                             ; $7a96: $d9


Call_0ac_7a97:
	cp   e                                           ; $7a97: $bb
	ld   e, b                                        ; $7a98: $58
	ld   d, d                                        ; $7a99: $52
	ld   b, e                                        ; $7a9a: $43
	inc  de                                          ; $7a9b: $13
	ld   h, [hl]                                     ; $7a9c: $66
	xor  [hl]                                        ; $7a9d: $ae
	db   $dd                                         ; $7a9e: $dd
	db   $fc                                         ; $7a9f: $fc
	xor  e                                           ; $7aa0: $ab
	ld   [hl], l                                     ; $7aa1: $75
	ld   [hl], e                                     ; $7aa2: $73
	inc  sp                                          ; $7aa3: $33
	ld   [de], a                                     ; $7aa4: $12
	ld   d, a                                        ; $7aa5: $57
	adc  l                                           ; $7aa6: $8d
	xor  $fe                                         ; $7aa7: $ee $fe
	cp   d                                           ; $7aa9: $ba
	sub  l                                           ; $7aaa: $95
	ld   h, h                                        ; $7aab: $64
	inc  sp                                          ; $7aac: $33
	ld   hl, $7d46                                   ; $7aad: $21 $46 $7d
	xor  $ff                                         ; $7ab0: $ee $ff
	cp   e                                           ; $7ab2: $bb
	or   l                                           ; $7ab3: $b5
	ld   h, h                                        ; $7ab4: $64
	inc  hl                                          ; $7ab5: $23
	ld   hl, $7c47                                   ; $7ab6: $21 $47 $7c
	db   $ed                                         ; $7ab9: $ed
	rst  $28                                         ; $7aba: $ef
	cp   e                                           ; $7abb: $bb
	or   l                                           ; $7abc: $b5
	ld   d, l                                        ; $7abd: $55
	inc  de                                          ; $7abe: $13
	ld   sp, $7b37                                   ; $7abf: $31 $37 $7b
	db   $fd                                         ; $7ac2: $fd
	rst  $38                                         ; $7ac3: $ff
	res  6, a                                        ; $7ac4: $cb $b7
	ld   d, l                                        ; $7ac6: $55
	ld   hl, $3711                                   ; $7ac7: $21 $11 $37
	adc  h                                           ; $7aca: $8c
	cp   $ff                                         ; $7acb: $fe $ff
	res  6, l                                        ; $7acd: $cb $b5
	ld   d, h                                        ; $7acf: $54
	ld   [hl+], a                                    ; $7ad0: $22
	ld   de, $8f57                                   ; $7ad1: $11 $57 $8f
	db   $fd                                         ; $7ad4: $fd
	cp   $bc                                         ; $7ad5: $fe $bc
	sub  h                                           ; $7ad7: $94
	ld   d, e                                        ; $7ad8: $53
	ld   de, $7711                                   ; $7ad9: $11 $11 $77
	xor  a                                           ; $7adc: $af
	rst  $28                                         ; $7add: $ef
	db   $fc                                         ; $7ade: $fc
	cp   h                                           ; $7adf: $bc
	ld   h, l                                        ; $7ae0: $65
	ld   d, d                                        ; $7ae1: $52
	ld   de, $8714                                   ; $7ae2: $11 $14 $87
	rst  JumpTable                                         ; $7ae5: $df
	rst  JumpTable                                         ; $7ae6: $df
	ld   a, [$55c9]                                  ; $7ae7: $fa $c9 $55
	ld   sp, $1611                                   ; $7aea: $31 $11 $16
	adc  e                                           ; $7aed: $8b
	rst  $38                                         ; $7aee: $ff
	rst  $38                                         ; $7aef: $ff
	jp   c, $44b6                                    ; $7af0: $da $b6 $44

	ld   de, $5711                                   ; $7af3: $11 $11 $57
	adc  a                                           ; $7af6: $8f
	db   $ed                                         ; $7af7: $ed
	cp   $bb                                         ; $7af8: $fe $bb
	ld   [hl], e                                     ; $7afa: $73
	ld   b, d                                        ; $7afb: $42
	ld   de, $7915                                   ; $7afc: $11 $15 $79
	rst  $38                                         ; $7aff: $ff
	rst  $28                                         ; $7b00: $ef
	db   $ec                                         ; $7b01: $ec
	rst  $10                                         ; $7b02: $d7
	ld   b, h                                        ; $7b03: $44
	ld   de, $5711                                   ; $7b04: $11 $11 $57
	sbc  a                                           ; $7b07: $9f
	rst  $28                                         ; $7b08: $ef
	rst  $38                                         ; $7b09: $ff
	call z, $3174                                    ; $7b0a: $cc $74 $31
	ld   de, $6a15                                   ; $7b0d: $11 $15 $6a
	db   $fd                                         ; $7b10: $fd
	rst  $38                                         ; $7b11: $ff
	call z, $43c6                                    ; $7b12: $cc $c6 $43
	ld   de, $7612                                   ; $7b15: $11 $12 $76
	rst  JumpTable                                         ; $7b18: $df
	cp   a                                           ; $7b19: $bf
	db   $fc                                         ; $7b1a: $fc
	ld   [$3153], a                                  ; $7b1b: $ea $53 $31
	ld   de, $9f45                                   ; $7b1e: $11 $45 $9f
	rst  JumpTable                                         ; $7b21: $df
	cp   $ec                                         ; $7b22: $fe $ec
	ld   [hl], h                                     ; $7b24: $74
	ld   sp, $2511                                   ; $7b25: $31 $11 $25
	ld   e, [hl]                                     ; $7b28: $5e
	db   $fd                                         ; $7b29: $fd
	rst  $38                                         ; $7b2a: $ff
	sbc  $b5                                         ; $7b2b: $de $b5
	ld   b, d                                        ; $7b2d: $42
	ld   de, $4815                                   ; $7b2e: $11 $15 $48
	db   $fc                                         ; $7b31: $fc
	rst  $38                                         ; $7b32: $ff
	xor  $d7                                         ; $7b33: $ee $d7
	ld   b, h                                        ; $7b35: $44
	ld   de, $4513                                   ; $7b36: $11 $13 $45
	db   $fc                                         ; $7b39: $fc
	rst  $28                                         ; $7b3a: $ef
	xor  $e7                                         ; $7b3b: $ee $e7
	ld   b, h                                        ; $7b3d: $44
	ld   de, $4412                                   ; $7b3e: $11 $12 $44
	db   $fd                                         ; $7b41: $fd
	rst  JumpTable                                         ; $7b42: $df
	rst  $38                                         ; $7b43: $ff
	add  sp, $54                                     ; $7b44: $e8 $54
	ld   de, $3412                                   ; $7b46: $11 $12 $34
	db   $fd                                         ; $7b49: $fd
	rst  $28                                         ; $7b4a: $ef
	rst  $38                                         ; $7b4b: $ff
	ret  c                                           ; $7b4c: $d8

	ld   b, h                                        ; $7b4d: $44
	ld   de, $3413                                   ; $7b4e: $11 $13 $34
	db   $fd                                         ; $7b51: $fd
	rst  $28                                         ; $7b52: $ef
	cp   $e7                                         ; $7b53: $fe $e7
	ld   b, l                                        ; $7b55: $45
	ld   de, $2513                                   ; $7b56: $11 $13 $25
	ei                                               ; $7b59: $fb
	rst  $38                                         ; $7b5a: $ff
	rst  $38                                         ; $7b5b: $ff
	ret  c                                           ; $7b5c: $d8

	ld   b, l                                        ; $7b5d: $45
	ld   de, $1813                                   ; $7b5e: $11 $13 $18
	ld   a, [$ffff]                                  ; $7b61: $fa $ff $ff
	rst  ToBoot                                         ; $7b64: $c7
	ld   h, h                                        ; $7b65: $64
	ld   de, $1a12                                   ; $7b66: $11 $12 $1a
	ld   sp, hl                                      ; $7b69: $f9
	rst  $38                                         ; $7b6a: $ff
	rst  $38                                         ; $7b6b: $ff
	add  $73                                         ; $7b6c: $c6 $73
	ld   de, $1c11                                   ; $7b6e: $11 $11 $1c
	call z, $ffff                                    ; $7b71: $cc $ff $ff
	and  [hl]                                        ; $7b74: $a6
	ld   [hl], c                                     ; $7b75: $71
	ld   de, $1e12                                   ; $7b76: $11 $12 $1e
	cp   l                                           ; $7b79: $bd
	rst  $38                                         ; $7b7a: $ff
	rst  $38                                         ; $7b7b: $ff
	sub  [hl]                                        ; $7b7c: $96
	ld   h, c                                        ; $7b7d: $61
	ld   de, $2e11                                   ; $7b7e: $11 $11 $2e
	xor  a                                           ; $7b81: $af
	cp   $ff                                         ; $7b82: $fe $ff
	add  a                                           ; $7b84: $87
	ld   h, c                                        ; $7b85: $61
	ld   de, $4e21                                   ; $7b86: $11 $21 $4e
	ld   a, a                                        ; $7b89: $7f
	cp   $fe                                         ; $7b8a: $fe $fe
	adc  b                                           ; $7b8c: $88
	ld   h, c                                        ; $7b8d: $61
	ld   de, $7c11                                   ; $7b8e: $11 $11 $7c
	ld   a, a                                        ; $7b91: $7f
	cp   $fd                                         ; $7b92: $fe $fd
	adc  c                                           ; $7b94: $89
	ld   d, c                                        ; $7b95: $51
	ld   de, $8b11                                   ; $7b96: $11 $11 $8b
	ld   a, a                                        ; $7b99: $7f
	rst  $38                                         ; $7b9a: $ff
	rst  $38                                         ; $7b9b: $ff
	sbc  c                                           ; $7b9c: $99
	ld   d, c                                        ; $7b9d: $51
	ld   de, $6c31                                   ; $7b9e: $11 $31 $6c
	ld   l, a                                        ; $7ba1: $6f
	rst  $38                                         ; $7ba2: $ff
	rst  $38                                         ; $7ba3: $ff
	adc  d                                           ; $7ba4: $8a
	ld   [hl], c                                     ; $7ba5: $71
	ld   de, $3c21                                   ; $7ba6: $11 $21 $3c
	ld   e, a                                        ; $7ba9: $5f
	rst  $38                                         ; $7baa: $ff
	rst  $38                                         ; $7bab: $ff
	ret  z                                           ; $7bac: $c8

	sub  c                                           ; $7bad: $91
	ld   de, $1c11                                   ; $7bae: $11 $11 $1c
	ld   l, h                                        ; $7bb1: $6c
	rst  $38                                         ; $7bb2: $ff
	rst  $38                                         ; $7bb3: $ff
	add  sp, -$4e                                    ; $7bb4: $e8 $b2
	ld   de, $1911                                   ; $7bb6: $11 $11 $19
	ld   a, c                                        ; $7bb9: $79
	rst  $38                                         ; $7bba: $ff
	rst  $38                                         ; $7bbb: $ff
	ld   sp, hl                                      ; $7bbc: $f9
	or   [hl]                                        ; $7bbd: $b6
	ld   de, $1412                                   ; $7bbe: $11 $12 $14
	sub  l                                           ; $7bc1: $95
	rst  $38                                         ; $7bc2: $ff
	rst  $38                                         ; $7bc3: $ff
	ei                                               ; $7bc4: $fb
	xor  e                                           ; $7bc5: $ab
	ld   [de], a                                     ; $7bc6: $12
	ld   de, $9411                                   ; $7bc7: $11 $11 $94
	cp   a                                           ; $7bca: $bf
	rst  $38                                         ; $7bcb: $ff
	rst  $38                                         ; $7bcc: $ff
	adc  [hl]                                        ; $7bcd: $8e
	inc  sp                                          ; $7bce: $33
	ld   de, $5731                                   ; $7bcf: $11 $31 $57
	ld   l, l                                        ; $7bd2: $6d
	rst  $38                                         ; $7bd3: $ff
	rst  $28                                         ; $7bd4: $ef
	xor  e                                           ; $7bd5: $ab
	and  d                                           ; $7bd6: $a2
	ld   d, c                                        ; $7bd7: $51
	ld   hl, $4a17                                   ; $7bd8: $21 $17 $4a
	rst  JumpTable                                         ; $7bdb: $df
	rst  $38                                         ; $7bdc: $ff
	ld   sp, hl                                      ; $7bdd: $f9
	rst  $10                                         ; $7bde: $d7
	ld   b, h                                        ; $7bdf: $44
	inc  d                                           ; $7be0: $14
	inc  de                                          ; $7be1: $13
	ld   h, l                                        ; $7be2: $65
	cp   l                                           ; $7be3: $bd
	db   $fd                                         ; $7be4: $fd
	db   $fd                                         ; $7be5: $fd
	xor  h                                           ; $7be6: $ac
	ld   d, [hl]                                     ; $7be7: $56
	ld   hl, $5431                                   ; $7be8: $21 $31 $54
	ld   a, e                                        ; $7beb: $7b
	sbc  $ef                                         ; $7bec: $de $ef
	cp   h                                           ; $7bee: $bc
	or   l                                           ; $7bef: $b5
	ld   [hl], c                                     ; $7bf0: $71
	ld   b, d                                        ; $7bf1: $42
	dec  d                                           ; $7bf2: $15
	ld   c, b                                        ; $7bf3: $48

Call_0ac_7bf4:
	cp   l                                           ; $7bf4: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bf5: $cf
	ld   [$75d7], a                                  ; $7bf6: $ea $d7 $75
	dec  h                                           ; $7bf9: $25
	inc  de                                          ; $7bfa: $13
	ld   b, l                                        ; $7bfb: $45
	sbc  d                                           ; $7bfc: $9a
	call z, $bbfc                                    ; $7bfd: $cc $fc $bb
	ld   a, c                                        ; $7c00: $79
	ld   b, h                                        ; $7c01: $44
	ld   b, d                                        ; $7c02: $42
	ld   d, h                                        ; $7c03: $54
	ld   l, c                                        ; $7c04: $69
	sbc  h                                           ; $7c05: $9c
	call c, $99bb                                    ; $7c06: $dc $bb $99
	ld   [hl], h                                     ; $7c09: $74
	ld   h, e                                        ; $7c0a: $63
	dec  [hl]                                        ; $7c0b: $35
	ld   c, b                                        ; $7c0c: $48
	sbc  c                                           ; $7c0d: $99
	cp   h                                           ; $7c0e: $bc
	cp   e                                           ; $7c0f: $bb
	xor  c                                           ; $7c10: $a9
	sub  [hl]                                        ; $7c11: $96
	ld   h, [hl]                                     ; $7c12: $66
	ld   [hl], $55                                   ; $7c13: $36 $55
	adc  b                                           ; $7c15: $88
	sbc  e                                           ; $7c16: $9b
	cp   d                                           ; $7c17: $ba
	cp   d                                           ; $7c18: $ba
	adc  b                                           ; $7c19: $88
	ld   e, b                                        ; $7c1a: $58
	ld   h, h                                        ; $7c1b: $64
	ld   [hl], l                                     ; $7c1c: $75
	ld   a, b                                        ; $7c1d: $78
	adc  c                                           ; $7c1e: $89
	xor  d                                           ; $7c1f: $aa
	xor  e                                           ; $7c20: $ab
	sbc  b                                           ; $7c21: $98
	add  [hl]                                        ; $7c22: $86
	add  [hl]                                        ; $7c23: $86
	ld   h, a                                        ; $7c24: $67
	ld   e, b                                        ; $7c25: $58
	ld   a, b                                        ; $7c26: $78
	sbc  d                                           ; $7c27: $9a
	sbc  c                                           ; $7c28: $99
	sbc  b                                           ; $7c29: $98
	sbc  b                                           ; $7c2a: $98
	ld   a, b                                        ; $7c2b: $78
	ld   h, a                                        ; $7c2c: $67
	halt                                             ; $7c2d: $76
	ld   a, b                                        ; $7c2e: $78
	adc  c                                           ; $7c2f: $89
	adc  c                                           ; $7c30: $89
	sbc  b                                           ; $7c31: $98
	adc  b                                           ; $7c32: $88
	sbc  b                                           ; $7c33: $98
	sub  a                                           ; $7c34: $97
	ld   a, b                                        ; $7c35: $78
	ld   [hl], a                                     ; $7c36: $77
	ld   [hl], a                                     ; $7c37: $77
	adc  b                                           ; $7c38: $88
	adc  b                                           ; $7c39: $88
	adc  c                                           ; $7c3a: $89
	sbc  c                                           ; $7c3b: $99
	sbc  b                                           ; $7c3c: $98
	sbc  b                                           ; $7c3d: $98
	adc  b                                           ; $7c3e: $88
	ld   [hl], a                                     ; $7c3f: $77
	ld   [hl], a                                     ; $7c40: $77
	ld   [hl], a                                     ; $7c41: $77
	ld   a, b                                        ; $7c42: $78
	sbc  c                                           ; $7c43: $99
	adc  b                                           ; $7c44: $88
	sbc  c                                           ; $7c45: $99
	sbc  b                                           ; $7c46: $98
	add  a                                           ; $7c47: $87
	ld   [hl], a                                     ; $7c48: $77
	ld   [hl], a                                     ; $7c49: $77
	ld   [hl], a                                     ; $7c4a: $77
	adc  c                                           ; $7c4b: $89
	adc  b                                           ; $7c4c: $88
	sbc  c                                           ; $7c4d: $99
	sbc  b                                           ; $7c4e: $98
	sbc  b                                           ; $7c4f: $98
	add  a                                           ; $7c50: $87
	ld   [hl], a                                     ; $7c51: $77
	ld   [hl], a                                     ; $7c52: $77
	ld   [hl], a                                     ; $7c53: $77
	adc  b                                           ; $7c54: $88
	sbc  b                                           ; $7c55: $98
	adc  c                                           ; $7c56: $89
	adc  b                                           ; $7c57: $88
	sbc  b                                           ; $7c58: $98
	add  a                                           ; $7c59: $87
	ld   [hl], a                                     ; $7c5a: $77
	ld   [hl], a                                     ; $7c5b: $77
	ld   a, b                                        ; $7c5c: $78
	adc  b                                           ; $7c5d: $88
	sbc  c                                           ; $7c5e: $99
	sbc  b                                           ; $7c5f: $98
	adc  c                                           ; $7c60: $89
	sbc  b                                           ; $7c61: $98
	adc  b                                           ; $7c62: $88
	adc  b                                           ; $7c63: $88
	ld   a, b                                        ; $7c64: $78
	adc  b                                           ; $7c65: $88
	adc  b                                           ; $7c66: $88
	adc  b                                           ; $7c67: $88
	sbc  b                                           ; $7c68: $98
	sbc  b                                           ; $7c69: $98
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

Jump_0ac_7c8b:
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

Jump_0ac_7ddb:
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
	ld   [hl], a                                     ; $7e01: $77
	sbc  b                                           ; $7e02: $98
	adc  b                                           ; $7e03: $88
	ld   a, b                                        ; $7e04: $78
	adc  b                                           ; $7e05: $88
	adc  c                                           ; $7e06: $89
	ld   a, b                                        ; $7e07: $78
	adc  b                                           ; $7e08: $88
	adc  b                                           ; $7e09: $88
	ld   [hl], a                                     ; $7e0a: $77
	sub  a                                           ; $7e0b: $97
	adc  c                                           ; $7e0c: $89
	sbc  b                                           ; $7e0d: $98
	ld   a, b                                        ; $7e0e: $78
	adc  b                                           ; $7e0f: $88
	adc  b                                           ; $7e10: $88
	adc  b                                           ; $7e11: $88
	add  a                                           ; $7e12: $87
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
	sbc  b                                           ; $7e35: $98
	adc  c                                           ; $7e36: $89
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
	ld   a, c                                        ; $7e44: $79
	adc  b                                           ; $7e45: $88
	adc  b                                           ; $7e46: $88
	adc  b                                           ; $7e47: $88
	sbc  b                                           ; $7e48: $98
	adc  c                                           ; $7e49: $89
	adc  b                                           ; $7e4a: $88
	adc  b                                           ; $7e4b: $88
	adc  b                                           ; $7e4c: $88
	adc  b                                           ; $7e4d: $88
	adc  b                                           ; $7e4e: $88
	adc  b                                           ; $7e4f: $88
	adc  b                                           ; $7e50: $88
	adc  b                                           ; $7e51: $88
	adc  b                                           ; $7e52: $88
	add  a                                           ; $7e53: $87
	sbc  b                                           ; $7e54: $98
	adc  b                                           ; $7e55: $88
	adc  b                                           ; $7e56: $88
	adc  b                                           ; $7e57: $88
	adc  b                                           ; $7e58: $88
	adc  c                                           ; $7e59: $89
	adc  b                                           ; $7e5a: $88
	add  a                                           ; $7e5b: $87
	adc  b                                           ; $7e5c: $88
	sbc  b                                           ; $7e5d: $98
	sbc  b                                           ; $7e5e: $98
	adc  c                                           ; $7e5f: $89
	adc  b                                           ; $7e60: $88
	adc  b                                           ; $7e61: $88
	adc  b                                           ; $7e62: $88
	sbc  b                                           ; $7e63: $98
	adc  b                                           ; $7e64: $88
	adc  c                                           ; $7e65: $89
	ld   a, b                                        ; $7e66: $78
	adc  b                                           ; $7e67: $88
	adc  c                                           ; $7e68: $89
	adc  b                                           ; $7e69: $88
	sbc  b                                           ; $7e6a: $98
	adc  b                                           ; $7e6b: $88
	adc  b                                           ; $7e6c: $88
	sub  a                                           ; $7e6d: $97
	adc  c                                           ; $7e6e: $89
	adc  b                                           ; $7e6f: $88
	adc  b                                           ; $7e70: $88
	adc  b                                           ; $7e71: $88
	adc  b                                           ; $7e72: $88
	adc  c                                           ; $7e73: $89
	add  a                                           ; $7e74: $87
	adc  b                                           ; $7e75: $88
	adc  b                                           ; $7e76: $88
	adc  b                                           ; $7e77: $88
	sbc  b                                           ; $7e78: $98
	adc  b                                           ; $7e79: $88
	ld   a, b                                        ; $7e7a: $78
	adc  b                                           ; $7e7b: $88
	adc  b                                           ; $7e7c: $88
	adc  b                                           ; $7e7d: $88
	sbc  b                                           ; $7e7e: $98
	adc  b                                           ; $7e7f: $88
	sbc  b                                           ; $7e80: $98
	adc  b                                           ; $7e81: $88
	adc  b                                           ; $7e82: $88
	adc  b                                           ; $7e83: $88
	adc  b                                           ; $7e84: $88
	sbc  b                                           ; $7e85: $98
	adc  b                                           ; $7e86: $88
	adc  c                                           ; $7e87: $89
	adc  b                                           ; $7e88: $88
	sbc  b                                           ; $7e89: $98
	add  a                                           ; $7e8a: $87
	add  a                                           ; $7e8b: $87
	sbc  b                                           ; $7e8c: $98
	ld   a, b                                        ; $7e8d: $78
	ld   a, c                                        ; $7e8e: $79
	ld   a, b                                        ; $7e8f: $78
	ld   a, c                                        ; $7e90: $79
	add  a                                           ; $7e91: $87
	sbc  b                                           ; $7e92: $98
	sub  a                                           ; $7e93: $97
	adc  c                                           ; $7e94: $89
	adc  c                                           ; $7e95: $89
	adc  b                                           ; $7e96: $88
	adc  c                                           ; $7e97: $89
	ld   a, b                                        ; $7e98: $78
	sub  a                                           ; $7e99: $97
	adc  b                                           ; $7e9a: $88
	ld   [hl], a                                     ; $7e9b: $77
	adc  b                                           ; $7e9c: $88
	adc  b                                           ; $7e9d: $88
	sub  a                                           ; $7e9e: $97
	adc  b                                           ; $7e9f: $88
	ld   a, c                                        ; $7ea0: $79
	ld   a, b                                        ; $7ea1: $78
	ld   a, c                                        ; $7ea2: $79
	sbc  b                                           ; $7ea3: $98
	adc  b                                           ; $7ea4: $88
	sbc  b                                           ; $7ea5: $98
	adc  b                                           ; $7ea6: $88
	adc  c                                           ; $7ea7: $89
	adc  b                                           ; $7ea8: $88
	add  a                                           ; $7ea9: $87
	adc  b                                           ; $7eaa: $88
	add  a                                           ; $7eab: $87
	adc  b                                           ; $7eac: $88
	ld   a, c                                        ; $7ead: $79
	ld   a, c                                        ; $7eae: $79
	add  a                                           ; $7eaf: $87
	adc  b                                           ; $7eb0: $88
	adc  b                                           ; $7eb1: $88
	sub  a                                           ; $7eb2: $97
	adc  b                                           ; $7eb3: $88
	ld   a, c                                        ; $7eb4: $79
	add  [hl]                                        ; $7eb5: $86
	adc  b                                           ; $7eb6: $88
	ld   a, b                                        ; $7eb7: $78
	add  a                                           ; $7eb8: $87
	sbc  b                                           ; $7eb9: $98
	adc  c                                           ; $7eba: $89
	sbc  c                                           ; $7ebb: $99
	ld   a, b                                        ; $7ebc: $78
	adc  b                                           ; $7ebd: $88
	adc  c                                           ; $7ebe: $89
	adc  b                                           ; $7ebf: $88
	adc  b                                           ; $7ec0: $88
	add  a                                           ; $7ec1: $87
	sub  a                                           ; $7ec2: $97
	adc  b                                           ; $7ec3: $88
	ld   [hl], a                                     ; $7ec4: $77
	sbc  c                                           ; $7ec5: $99
	adc  c                                           ; $7ec6: $89
	adc  b                                           ; $7ec7: $88
	xor  b                                           ; $7ec8: $a8
	adc  c                                           ; $7ec9: $89
	ld   a, b                                        ; $7eca: $78
	ld   a, b                                        ; $7ecb: $78
	ld   [hl], a                                     ; $7ecc: $77
	ld   [hl], a                                     ; $7ecd: $77
	sub  a                                           ; $7ece: $97
	sbc  c                                           ; $7ecf: $99
	adc  d                                           ; $7ed0: $8a
	sbc  b                                           ; $7ed1: $98
	sbc  d                                           ; $7ed2: $9a
	ld   a, c                                        ; $7ed3: $79
	add  a                                           ; $7ed4: $87
	ld   [hl], a                                     ; $7ed5: $77
	halt                                             ; $7ed6: $76
	ld   [hl], a                                     ; $7ed7: $77
	ld   a, b                                        ; $7ed8: $78
	adc  c                                           ; $7ed9: $89
	adc  c                                           ; $7eda: $89
	sbc  d                                           ; $7edb: $9a
	adc  b                                           ; $7edc: $88
	sub  a                                           ; $7edd: $97
	ld   a, b                                        ; $7ede: $78
	ld   h, a                                        ; $7edf: $67
	halt                                             ; $7ee0: $76
	ld   a, b                                        ; $7ee1: $78
	ld   a, b                                        ; $7ee2: $78
	sbc  c                                           ; $7ee3: $99
	sbc  d                                           ; $7ee4: $9a
	adc  c                                           ; $7ee5: $89
	add  a                                           ; $7ee6: $87
	sbc  b                                           ; $7ee7: $98
	ld   h, a                                        ; $7ee8: $67
	halt                                             ; $7ee9: $76
	ld   [hl], a                                     ; $7eea: $77
	ld   l, b                                        ; $7eeb: $68
	adc  c                                           ; $7eec: $89
	sbc  c                                           ; $7eed: $99
	adc  c                                           ; $7eee: $89
	sbc  c                                           ; $7eef: $99
	adc  b                                           ; $7ef0: $88
	add  a                                           ; $7ef1: $87
	ld   [hl], a                                     ; $7ef2: $77
	halt                                             ; $7ef3: $76
	ld   [hl], a                                     ; $7ef4: $77
	ld   l, b                                        ; $7ef5: $68
	adc  c                                           ; $7ef6: $89
	sbc  c                                           ; $7ef7: $99
	sbc  d                                           ; $7ef8: $9a
	sbc  c                                           ; $7ef9: $99
	add  a                                           ; $7efa: $87
	adc  b                                           ; $7efb: $88
	ld   e, c                                        ; $7efc: $59
	ld   h, [hl]                                     ; $7efd: $66
	halt                                             ; $7efe: $76
	adc  b                                           ; $7eff: $88
	sbc  b                                           ; $7f00: $98
	xor  c                                           ; $7f01: $a9
	adc  d                                           ; $7f02: $8a
	adc  d                                           ; $7f03: $8a
	add  a                                           ; $7f04: $87
	add  [hl]                                        ; $7f05: $86
	ld   [hl], a                                     ; $7f06: $77
	ld   h, [hl]                                     ; $7f07: $66
	ld   [hl], a                                     ; $7f08: $77
	ld   a, b                                        ; $7f09: $78
	xor  d                                           ; $7f0a: $aa
	xor  c                                           ; $7f0b: $a9
	sbc  d                                           ; $7f0c: $9a
	adc  c                                           ; $7f0d: $89
	ld   a, b                                        ; $7f0e: $78
	add  l                                           ; $7f0f: $85
	add  l                                           ; $7f10: $85
	ld   h, a                                        ; $7f11: $67
	ld   h, a                                        ; $7f12: $67
	adc  c                                           ; $7f13: $89
	sbc  d                                           ; $7f14: $9a
	xor  d                                           ; $7f15: $aa
	xor  c                                           ; $7f16: $a9
	sbc  b                                           ; $7f17: $98
	ld   a, b                                        ; $7f18: $78
	ld   h, a                                        ; $7f19: $67
	ld   [hl], l                                     ; $7f1a: $75
	ld   h, a                                        ; $7f1b: $67
	ld   l, b                                        ; $7f1c: $68
	sbc  c                                           ; $7f1d: $99
	xor  e                                           ; $7f1e: $ab
	sbc  d                                           ; $7f1f: $9a
	xor  c                                           ; $7f20: $a9
	sub  a                                           ; $7f21: $97
	add  [hl]                                        ; $7f22: $86
	ld   h, a                                        ; $7f23: $67
	ld   b, l                                        ; $7f24: $45
	ld   h, [hl]                                     ; $7f25: $66
	adc  c                                           ; $7f26: $89
	sbc  d                                           ; $7f27: $9a
	res  5, e                                        ; $7f28: $cb $ab
	sbc  c                                           ; $7f2a: $99
	halt                                             ; $7f2b: $76
	add  h                                           ; $7f2c: $84
	ld   h, [hl]                                     ; $7f2d: $66
	ld   b, [hl]                                     ; $7f2e: $46
	ld   h, a                                        ; $7f2f: $67
	sbc  e                                           ; $7f30: $9b
	xor  e                                           ; $7f31: $ab
	ret                                              ; $7f32: $c9


	cp   d                                           ; $7f33: $ba
	sbc  b                                           ; $7f34: $98
	ld   [hl], a                                     ; $7f35: $77
	ld   b, [hl]                                     ; $7f36: $46
	ld   d, h                                        ; $7f37: $54
	ld   h, [hl]                                     ; $7f38: $66
	ld   l, b                                        ; $7f39: $68
	cp   d                                           ; $7f3a: $ba
	call z, $a8ac                                    ; $7f3b: $cc $ac $a8
	add  [hl]                                        ; $7f3e: $86
	ld   [hl], l                                     ; $7f3f: $75
	ld   [hl], $34                                   ; $7f40: $36 $34
	ld   h, a                                        ; $7f42: $67
	adc  d                                           ; $7f43: $8a
	cp   d                                           ; $7f44: $ba
	db   $ec                                         ; $7f45: $ec
	xor  e                                           ; $7f46: $ab
	sbc  c                                           ; $7f47: $99
	ld   h, [hl]                                     ; $7f48: $66
	ld   h, h                                        ; $7f49: $64
	ld   b, e                                        ; $7f4a: $43
	ld   d, l                                        ; $7f4b: $55
	ld   l, c                                        ; $7f4c: $69
	xor  e                                           ; $7f4d: $ab
	call $cadc                                       ; $7f4e: $cd $dc $ca
	add  [hl]                                        ; $7f51: $86
	ld   h, l                                        ; $7f52: $65
	inc  [hl]                                        ; $7f53: $34
	inc  sp                                          ; $7f54: $33
	ld   h, [hl]                                     ; $7f55: $66
	adc  d                                           ; $7f56: $8a
	cp   l                                           ; $7f57: $bd
	db   $dd                                         ; $7f58: $dd
	cp   h                                           ; $7f59: $bc
	xor  b                                           ; $7f5a: $a8
	ld   [hl], l                                     ; $7f5b: $75
	ld   d, e                                        ; $7f5c: $53
	ld   b, e                                        ; $7f5d: $43
	dec  h                                           ; $7f5e: $25
	ld   h, a                                        ; $7f5f: $67
	cp   h                                           ; $7f60: $bc
	call $dbeb                                       ; $7f61: $cd $eb $db
	ld   [hl], a                                     ; $7f64: $77
	ld   d, h                                        ; $7f65: $54
	inc  hl                                          ; $7f66: $23
	ld   [hl-], a                                    ; $7f67: $32
	ld   d, [hl]                                     ; $7f68: $56
	ld   a, d                                        ; $7f69: $7a
	db   $dd                                         ; $7f6a: $dd
	sbc  $cc                                         ; $7f6b: $de $cc
	cp   b                                           ; $7f6d: $b8
	ld   [hl], l                                     ; $7f6e: $75
	ld   d, d                                        ; $7f6f: $52
	inc  hl                                          ; $7f70: $23
	inc  d                                           ; $7f71: $14
	ld   h, a                                        ; $7f72: $67
	xor  [hl]                                        ; $7f73: $ae
	sbc  $fc                                         ; $7f74: $de $fc
	db   $db                                         ; $7f76: $db
	add  a                                           ; $7f77: $87
	ld   d, h                                        ; $7f78: $54
	ld   sp, $4632                                   ; $7f79: $31 $32 $46
	ld   a, e                                        ; $7f7c: $7b
	adc  $df                                         ; $7f7d: $ce $df
	call c, Call_0ac_75c8                            ; $7f7f: $dc $c8 $75
	inc  sp                                          ; $7f82: $33
	inc  de                                          ; $7f83: $13
	inc  de                                          ; $7f84: $13
	ld   [hl], a                                     ; $7f85: $77
	xor  l                                           ; $7f86: $ad
	db   $ed                                         ; $7f87: $ed
	cp   $cc                                         ; $7f88: $fe $cc
	sub  a                                           ; $7f8a: $97
	ld   d, e                                        ; $7f8b: $53
	ld   sp, $2622                                   ; $7f8c: $31 $22 $26
	ld   a, d                                        ; $7f8f: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f90: $cf
	rst  $28                                         ; $7f91: $ef
	ei                                               ; $7f92: $fb
	jp   z, $3375                                    ; $7f93: $ca $75 $33

	ld   [de], a                                     ; $7f96: $12
	ld   hl, $9c67                                   ; $7f97: $21 $67 $9c
	cp   $ef                                         ; $7f9a: $fe $ef
	cp   h                                           ; $7f9c: $bc
	and  a                                           ; $7f9d: $a7
	ld   h, e                                        ; $7f9e: $63
	ld   sp, $1513                                   ; $7f9f: $31 $13 $15
	ld   a, b                                        ; $7fa2: $78
	adc  $fe                                         ; $7fa3: $ce $fe
	db   $fd                                         ; $7fa5: $fd
	cp   l                                           ; $7fa6: $bd
	halt                                             ; $7fa7: $76
	ld   [hl-], a                                    ; $7fa8: $32
	ld   de, $3831                                   ; $7fa9: $11 $31 $38
	adc  e                                           ; $7fac: $8b
	xor  $ef                                         ; $7fad: $ee $ef
	call c, Call_0ac_54c9                            ; $7faf: $dc $c9 $54
	ld   [hl+], a                                    ; $7fb2: $22
	ld   de, $6922                                   ; $7fb3: $11 $22 $69
	xor  l                                           ; $7fb6: $ad
	rst  $38                                         ; $7fb7: $ff
	rst  $38                                         ; $7fb8: $ff
	call z, Call_0ac_42a7                            ; $7fb9: $cc $a7 $42
	ld   hl, $1512                                   ; $7fbc: $21 $12 $15
	sbc  c                                           ; $7fbf: $99
	rst  JumpTable                                         ; $7fc0: $df
	rst  JumpTable                                         ; $7fc1: $df
	ei                                               ; $7fc2: $fb
	bit  6, l                                        ; $7fc3: $cb $75
	ld   [hl-], a                                    ; $7fc5: $32
	ld   de, $3822                                   ; $7fc6: $11 $22 $38
	xor  e                                           ; $7fc9: $ab
	rst  $38                                         ; $7fca: $ff
	rst  $28                                         ; $7fcb: $ef
	db   $eb                                         ; $7fcc: $eb
	reti                                             ; $7fcd: $d9


	ld   d, h                                        ; $7fce: $54
	ld   hl, $2211                                   ; $7fcf: $21 $11 $22
	ld   l, c                                        ; $7fd2: $69
	xor  l                                           ; $7fd3: $ad
	cp   $ff                                         ; $7fd4: $fe $ff
	call z, Call_0ac_42a7                            ; $7fd6: $cc $a7 $42
	ld   hl, $1513                                   ; $7fd9: $21 $13 $15
	sbc  c                                           ; $7fdc: $99
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7fdd: $cf
	db   $fd                                         ; $7fde: $fd
	db   $fd                                         ; $7fdf: $fd
	cp   h                                           ; $7fe0: $bc
	halt                                             ; $7fe1: $76
	ld   [hl+], a                                    ; $7fe2: $22
	ld   de, $3722                                   ; $7fe3: $11 $22 $37
	sbc  e                                           ; $7fe6: $9b
	rst  $28                                         ; $7fe7: $ef
	cp   $fb                                         ; $7fe8: $fe $fb
	cp   d                                           ; $7fea: $ba
	ld   h, h                                        ; $7feb: $64
	ld   [hl+], a                                    ; $7fec: $22
	ld   de, $5831                                   ; $7fed: $11 $31 $58
	xor  h                                           ; $7ff0: $ac
	rst  $38                                         ; $7ff1: $ff
	rst  $28                                         ; $7ff2: $ef
	db   $db                                         ; $7ff3: $db
	ret  z                                           ; $7ff4: $c8

	ld   d, e                                        ; $7ff5: $53
	ld   de, $2211                                   ; $7ff6: $11 $11 $22
	ld   a, c                                        ; $7ff9: $79
	cp   l                                           ; $7ffa: $bd
	rst  $38                                         ; $7ffb: $ff
	rst  $38                                         ; $7ffc: $ff
	call c, $52b7                                    ; $7ffd: $dc $b7 $52
