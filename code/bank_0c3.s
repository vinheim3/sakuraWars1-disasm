; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0c3", ROMX[$4000], BANK[$c3]

	push de                                          ; $4000: $d5
	ld   a, [hl-]                                    ; $4001: $3a
	rst  $10                                         ; $4002: $d7
	or   a                                           ; $4003: $b7
	ld   a, c                                        ; $4004: $79
	ld   d, [hl]                                     ; $4005: $56
	jp   c, Jump_0c3_6b58                            ; $4006: $da $58 $6b

	sub  [hl]                                        ; $4009: $96
	add  hl, sp                                      ; $400a: $39
	sbc  d                                           ; $400b: $9a
	ld   h, h                                        ; $400c: $64
	call c, Call_0c3_7874                            ; $400d: $dc $74 $78
	rst  $10                                         ; $4010: $d7
	ld   e, b                                        ; $4011: $58
	ld   l, e                                        ; $4012: $6b
	or   [hl]                                        ; $4013: $b6
	ld   c, d                                        ; $4014: $4a
	add  [hl]                                        ; $4015: $86
	adc  b                                           ; $4016: $88
	xor  d                                           ; $4017: $aa
	ld   h, l                                        ; $4018: $65
	ld   l, b                                        ; $4019: $68
	adc  c                                           ; $401a: $89
	sub  l                                           ; $401b: $95
	and  a                                           ; $401c: $a7
	adc  b                                           ; $401d: $88
	db   $38, $b7                                    ; $401e: $38 $b7
	ld   e, c                                        ; $4020: $59
	adc  b                                           ; $4021: $88
	add  [hl]                                        ; $4022: $86
	ld   a, b                                        ; $4023: $78
	ld   [hl], a                                     ; $4024: $77
	adc  c                                           ; $4025: $89
	ld   h, l                                        ; $4026: $65
	sbc  c                                           ; $4027: $99
	and  [hl]                                        ; $4028: $a6
	ld   l, h                                        ; $4029: $6c
	add  [hl]                                        ; $402a: $86
	adc  b                                           ; $402b: $88
	sbc  d                                           ; $402c: $9a
	ld   d, l                                        ; $402d: $55
	or   a                                           ; $402e: $b7
	and  [hl]                                        ; $402f: $a6
	dec  sp                                          ; $4030: $3b
	or   a                                           ; $4031: $b7
	ld   d, [hl]                                     ; $4032: $56
	cp   d                                           ; $4033: $ba
	ld   h, [hl]                                     ; $4034: $66
	sbc  e                                           ; $4035: $9b
	adc  b                                           ; $4036: $88
	adc  c                                           ; $4037: $89
	adc  b                                           ; $4038: $88
	add  a                                           ; $4039: $87
	add  a                                           ; $403a: $87
	adc  b                                           ; $403b: $88
	add  a                                           ; $403c: $87
	sub  a                                           ; $403d: $97
	adc  c                                           ; $403e: $89
	ld   a, d                                        ; $403f: $7a
	and  a                                           ; $4040: $a7
	adc  d                                           ; $4041: $8a
	ld   l, c                                        ; $4042: $69
	ld   a, b                                        ; $4043: $78
	sbc  c                                           ; $4044: $99
	sbc  b                                           ; $4045: $98
	and  a                                           ; $4046: $a7
	adc  b                                           ; $4047: $88
	ld   [hl], a                                     ; $4048: $77
	adc  c                                           ; $4049: $89
	xor  c                                           ; $404a: $a9
	sbc  c                                           ; $404b: $99
	sub  a                                           ; $404c: $97
	adc  b                                           ; $404d: $88
	sbc  b                                           ; $404e: $98
	adc  c                                           ; $404f: $89
	xor  b                                           ; $4050: $a8
	ld   e, d                                        ; $4051: $5a
	xor  b                                           ; $4052: $a8
	sbc  c                                           ; $4053: $99
	sbc  b                                           ; $4054: $98
	adc  b                                           ; $4055: $88
	adc  b                                           ; $4056: $88
	cp   b                                           ; $4057: $b8
	adc  c                                           ; $4058: $89
	ld   a, c                                        ; $4059: $79
	add  a                                           ; $405a: $87
	ld   a, b                                        ; $405b: $78
	adc  c                                           ; $405c: $89
	adc  b                                           ; $405d: $88
	add  a                                           ; $405e: $87
	ld   a, c                                        ; $405f: $79
	sbc  b                                           ; $4060: $98
	sub  a                                           ; $4061: $97
	sbc  b                                           ; $4062: $98
	add  a                                           ; $4063: $87
	adc  b                                           ; $4064: $88
	adc  c                                           ; $4065: $89
	adc  c                                           ; $4066: $89
	add  a                                           ; $4067: $87
	adc  c                                           ; $4068: $89
	sub  a                                           ; $4069: $97
	ld   a, b                                        ; $406a: $78
	sub  a                                           ; $406b: $97
	adc  c                                           ; $406c: $89
	adc  b                                           ; $406d: $88
	ld   [hl], a                                     ; $406e: $77
	adc  b                                           ; $406f: $88
	adc  b                                           ; $4070: $88
	sbc  c                                           ; $4071: $99
	ld   a, b                                        ; $4072: $78
	sbc  c                                           ; $4073: $99
	adc  b                                           ; $4074: $88
	adc  b                                           ; $4075: $88
	ld   [hl], a                                     ; $4076: $77
	adc  b                                           ; $4077: $88
	add  a                                           ; $4078: $87
	adc  b                                           ; $4079: $88
	sbc  b                                           ; $407a: $98
	ld   [hl], a                                     ; $407b: $77
	sbc  c                                           ; $407c: $99
	ld   [hl], a                                     ; $407d: $77
	ld   a, c                                        ; $407e: $79
	add  a                                           ; $407f: $87
	ld   a, b                                        ; $4080: $78
	adc  b                                           ; $4081: $88
	add  a                                           ; $4082: $87
	ld   a, c                                        ; $4083: $79
	adc  b                                           ; $4084: $88
	ld   a, b                                        ; $4085: $78
	add  a                                           ; $4086: $87
	adc  b                                           ; $4087: $88
	adc  b                                           ; $4088: $88
	ld   a, b                                        ; $4089: $78
	ld   a, b                                        ; $408a: $78
	ld   [hl], a                                     ; $408b: $77
	add  a                                           ; $408c: $87
	adc  b                                           ; $408d: $88
	adc  b                                           ; $408e: $88
	ld   a, c                                        ; $408f: $79
	add  a                                           ; $4090: $87
	adc  b                                           ; $4091: $88
	adc  b                                           ; $4092: $88
	ld   a, b                                        ; $4093: $78
	adc  b                                           ; $4094: $88
	ld   [hl], a                                     ; $4095: $77
	adc  b                                           ; $4096: $88
	adc  b                                           ; $4097: $88
	ld   [hl], a                                     ; $4098: $77
	adc  b                                           ; $4099: $88
	ld   a, b                                        ; $409a: $78
	ld   a, b                                        ; $409b: $78
	adc  b                                           ; $409c: $88
	add  a                                           ; $409d: $87
	ld   a, c                                        ; $409e: $79
	ld   [hl], a                                     ; $409f: $77
	ld   a, b                                        ; $40a0: $78
	add  a                                           ; $40a1: $87
	ld   [hl], a                                     ; $40a2: $77
	adc  b                                           ; $40a3: $88
	ld   [hl], a                                     ; $40a4: $77
	adc  b                                           ; $40a5: $88
	ld   [hl], a                                     ; $40a6: $77
	adc  b                                           ; $40a7: $88
	adc  b                                           ; $40a8: $88
	ld   a, b                                        ; $40a9: $78
	adc  b                                           ; $40aa: $88
	ld   a, b                                        ; $40ab: $78
	adc  b                                           ; $40ac: $88
	ld   [hl], a                                     ; $40ad: $77
	ld   a, b                                        ; $40ae: $78
	ld   [hl], a                                     ; $40af: $77
	ld   [hl], a                                     ; $40b0: $77
	ld   a, b                                        ; $40b1: $78
	add  a                                           ; $40b2: $87
	adc  b                                           ; $40b3: $88
	add  a                                           ; $40b4: $87
	ld   a, b                                        ; $40b5: $78
	sbc  b                                           ; $40b6: $98
	adc  b                                           ; $40b7: $88
	adc  b                                           ; $40b8: $88
	ld   [hl], a                                     ; $40b9: $77
	add  a                                           ; $40ba: $87
	adc  b                                           ; $40bb: $88
	ld   [hl], a                                     ; $40bc: $77
	adc  b                                           ; $40bd: $88
	ld   [hl], a                                     ; $40be: $77
	adc  b                                           ; $40bf: $88
	adc  b                                           ; $40c0: $88
	ld   a, b                                        ; $40c1: $78
	adc  b                                           ; $40c2: $88
	ld   a, b                                        ; $40c3: $78
	adc  b                                           ; $40c4: $88
	adc  b                                           ; $40c5: $88
	adc  b                                           ; $40c6: $88
	add  a                                           ; $40c7: $87
	adc  b                                           ; $40c8: $88
	ld   a, b                                        ; $40c9: $78
	ld   a, b                                        ; $40ca: $78
	adc  b                                           ; $40cb: $88
	adc  b                                           ; $40cc: $88
	ld   a, b                                        ; $40cd: $78
	adc  b                                           ; $40ce: $88
	add  a                                           ; $40cf: $87
	adc  b                                           ; $40d0: $88
	adc  b                                           ; $40d1: $88
	ld   a, b                                        ; $40d2: $78
	adc  b                                           ; $40d3: $88
	adc  b                                           ; $40d4: $88
	adc  b                                           ; $40d5: $88
	adc  b                                           ; $40d6: $88
	adc  b                                           ; $40d7: $88
	adc  b                                           ; $40d8: $88
	ld   [hl], a                                     ; $40d9: $77
	adc  b                                           ; $40da: $88
	adc  b                                           ; $40db: $88
	adc  b                                           ; $40dc: $88
	adc  b                                           ; $40dd: $88
	add  a                                           ; $40de: $87
	adc  b                                           ; $40df: $88
	adc  b                                           ; $40e0: $88
	adc  b                                           ; $40e1: $88
	adc  b                                           ; $40e2: $88
	adc  b                                           ; $40e3: $88
	add  a                                           ; $40e4: $87
	ld   a, b                                        ; $40e5: $78
	add  a                                           ; $40e6: $87
	ld   a, b                                        ; $40e7: $78
	adc  b                                           ; $40e8: $88
	ld   a, b                                        ; $40e9: $78
	adc  b                                           ; $40ea: $88
	adc  b                                           ; $40eb: $88
	adc  b                                           ; $40ec: $88
	adc  b                                           ; $40ed: $88
	adc  b                                           ; $40ee: $88
	adc  b                                           ; $40ef: $88
	adc  b                                           ; $40f0: $88
	adc  b                                           ; $40f1: $88
	add  a                                           ; $40f2: $87
	adc  b                                           ; $40f3: $88
	adc  b                                           ; $40f4: $88
	adc  b                                           ; $40f5: $88
	ld   a, b                                        ; $40f6: $78
	adc  b                                           ; $40f7: $88
	adc  b                                           ; $40f8: $88
	adc  b                                           ; $40f9: $88
	adc  b                                           ; $40fa: $88
	adc  b                                           ; $40fb: $88
	adc  b                                           ; $40fc: $88
	adc  c                                           ; $40fd: $89
	adc  b                                           ; $40fe: $88
	adc  b                                           ; $40ff: $88
	sbc  b                                           ; $4100: $98
	adc  b                                           ; $4101: $88
	adc  b                                           ; $4102: $88
	adc  b                                           ; $4103: $88
	adc  b                                           ; $4104: $88
	adc  b                                           ; $4105: $88
	adc  b                                           ; $4106: $88
	adc  b                                           ; $4107: $88
	adc  b                                           ; $4108: $88
	adc  b                                           ; $4109: $88
	adc  c                                           ; $410a: $89
	adc  b                                           ; $410b: $88
	sbc  c                                           ; $410c: $99
	adc  c                                           ; $410d: $89
	adc  b                                           ; $410e: $88
	adc  b                                           ; $410f: $88
	adc  b                                           ; $4110: $88
	adc  b                                           ; $4111: $88
	adc  c                                           ; $4112: $89
	adc  b                                           ; $4113: $88
	adc  c                                           ; $4114: $89
	sub  a                                           ; $4115: $97
	sbc  b                                           ; $4116: $98
	adc  b                                           ; $4117: $88
	adc  b                                           ; $4118: $88
	adc  c                                           ; $4119: $89
	adc  b                                           ; $411a: $88
	sbc  c                                           ; $411b: $99
	adc  b                                           ; $411c: $88
	adc  b                                           ; $411d: $88
	adc  b                                           ; $411e: $88
	sbc  b                                           ; $411f: $98
	sbc  b                                           ; $4120: $98
	adc  c                                           ; $4121: $89
	adc  b                                           ; $4122: $88
	adc  c                                           ; $4123: $89
	adc  b                                           ; $4124: $88
	sbc  b                                           ; $4125: $98
	adc  c                                           ; $4126: $89
	adc  b                                           ; $4127: $88
	sbc  b                                           ; $4128: $98
	sbc  c                                           ; $4129: $99
	adc  b                                           ; $412a: $88
	adc  c                                           ; $412b: $89
	adc  b                                           ; $412c: $88
	sbc  b                                           ; $412d: $98
	sbc  c                                           ; $412e: $99
	adc  c                                           ; $412f: $89
	adc  b                                           ; $4130: $88
	sbc  c                                           ; $4131: $99
	adc  b                                           ; $4132: $88
	sbc  c                                           ; $4133: $99
	adc  c                                           ; $4134: $89
	adc  b                                           ; $4135: $88
	adc  b                                           ; $4136: $88
	adc  c                                           ; $4137: $89
	adc  c                                           ; $4138: $89
	adc  c                                           ; $4139: $89
	sbc  b                                           ; $413a: $98
	sbc  c                                           ; $413b: $99
	adc  c                                           ; $413c: $89
	adc  c                                           ; $413d: $89
	adc  c                                           ; $413e: $89
	adc  b                                           ; $413f: $88
	adc  b                                           ; $4140: $88
	sbc  c                                           ; $4141: $99
	sbc  b                                           ; $4142: $98
	sbc  b                                           ; $4143: $98
	adc  b                                           ; $4144: $88
	sbc  b                                           ; $4145: $98
	adc  b                                           ; $4146: $88
	adc  b                                           ; $4147: $88
	adc  b                                           ; $4148: $88
	sbc  c                                           ; $4149: $99
	adc  c                                           ; $414a: $89
	adc  b                                           ; $414b: $88
	adc  c                                           ; $414c: $89
	sbc  c                                           ; $414d: $99
	sbc  b                                           ; $414e: $98
	adc  c                                           ; $414f: $89
	adc  b                                           ; $4150: $88
	adc  b                                           ; $4151: $88
	adc  b                                           ; $4152: $88
	sbc  c                                           ; $4153: $99
	adc  b                                           ; $4154: $88
	sbc  b                                           ; $4155: $98
	adc  b                                           ; $4156: $88
	adc  b                                           ; $4157: $88
	sbc  b                                           ; $4158: $98
	ld   a, b                                        ; $4159: $78
	adc  c                                           ; $415a: $89
	sbc  b                                           ; $415b: $98
	adc  c                                           ; $415c: $89
	sbc  b                                           ; $415d: $98
	sbc  b                                           ; $415e: $98
	adc  b                                           ; $415f: $88
	adc  b                                           ; $4160: $88
	adc  b                                           ; $4161: $88
	adc  c                                           ; $4162: $89
	adc  b                                           ; $4163: $88
	adc  b                                           ; $4164: $88
	sbc  b                                           ; $4165: $98
	adc  b                                           ; $4166: $88
	adc  b                                           ; $4167: $88
	adc  b                                           ; $4168: $88
	adc  b                                           ; $4169: $88
	adc  c                                           ; $416a: $89
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
	adc  c                                           ; $4175: $89
	sbc  b                                           ; $4176: $98
	adc  b                                           ; $4177: $88
	adc  c                                           ; $4178: $89
	sbc  b                                           ; $4179: $98
	adc  c                                           ; $417a: $89
	adc  b                                           ; $417b: $88
	adc  b                                           ; $417c: $88
	adc  c                                           ; $417d: $89
	adc  b                                           ; $417e: $88
	add  a                                           ; $417f: $87
	sbc  c                                           ; $4180: $99
	sbc  b                                           ; $4181: $98
	adc  b                                           ; $4182: $88
	adc  b                                           ; $4183: $88
	adc  c                                           ; $4184: $89
	sbc  b                                           ; $4185: $98
	adc  b                                           ; $4186: $88
	adc  b                                           ; $4187: $88
	ld   a, b                                        ; $4188: $78
	sbc  b                                           ; $4189: $98
	sbc  b                                           ; $418a: $98
	adc  b                                           ; $418b: $88
	adc  b                                           ; $418c: $88
	adc  b                                           ; $418d: $88
	adc  b                                           ; $418e: $88
	ld   a, b                                        ; $418f: $78
	adc  b                                           ; $4190: $88
	adc  b                                           ; $4191: $88
	adc  b                                           ; $4192: $88
	adc  b                                           ; $4193: $88
	adc  b                                           ; $4194: $88
	adc  b                                           ; $4195: $88
	adc  b                                           ; $4196: $88
	add  a                                           ; $4197: $87
	sbc  b                                           ; $4198: $98
	ld   a, b                                        ; $4199: $78
	sbc  b                                           ; $419a: $98
	adc  b                                           ; $419b: $88
	adc  b                                           ; $419c: $88
	adc  b                                           ; $419d: $88
	ld   a, b                                        ; $419e: $78
	sub  a                                           ; $419f: $97
	adc  c                                           ; $41a0: $89
	adc  b                                           ; $41a1: $88
	adc  b                                           ; $41a2: $88
	adc  b                                           ; $41a3: $88
	adc  b                                           ; $41a4: $88
	adc  c                                           ; $41a5: $89
	ld   a, b                                        ; $41a6: $78
	add  a                                           ; $41a7: $87
	adc  b                                           ; $41a8: $88
	adc  b                                           ; $41a9: $88
	adc  b                                           ; $41aa: $88
	adc  c                                           ; $41ab: $89
	add  a                                           ; $41ac: $87
	adc  b                                           ; $41ad: $88
	adc  b                                           ; $41ae: $88
	adc  b                                           ; $41af: $88
	ld   [hl], a                                     ; $41b0: $77
	adc  b                                           ; $41b1: $88
	ld   a, b                                        ; $41b2: $78
	adc  b                                           ; $41b3: $88
	sub  a                                           ; $41b4: $97
	adc  c                                           ; $41b5: $89
	adc  b                                           ; $41b6: $88
	adc  b                                           ; $41b7: $88
	sbc  b                                           ; $41b8: $98
	adc  b                                           ; $41b9: $88
	adc  b                                           ; $41ba: $88
	adc  b                                           ; $41bb: $88
	adc  b                                           ; $41bc: $88
	adc  b                                           ; $41bd: $88
	adc  b                                           ; $41be: $88
	adc  b                                           ; $41bf: $88
	adc  b                                           ; $41c0: $88
	adc  b                                           ; $41c1: $88
	add  a                                           ; $41c2: $87
	adc  b                                           ; $41c3: $88
	ld   a, c                                        ; $41c4: $79
	adc  c                                           ; $41c5: $89
	add  a                                           ; $41c6: $87
	ld   a, c                                        ; $41c7: $79
	sbc  b                                           ; $41c8: $98
	ld   a, b                                        ; $41c9: $78
	sbc  c                                           ; $41ca: $99
	add  a                                           ; $41cb: $87
	adc  b                                           ; $41cc: $88
	adc  b                                           ; $41cd: $88
	ld   a, b                                        ; $41ce: $78
	ld   a, b                                        ; $41cf: $78
	adc  c                                           ; $41d0: $89
	adc  b                                           ; $41d1: $88
	sbc  b                                           ; $41d2: $98
	add  a                                           ; $41d3: $87

Jump_0c3_41d4:
	add  a                                           ; $41d4: $87
	adc  c                                           ; $41d5: $89
	adc  c                                           ; $41d6: $89
	adc  c                                           ; $41d7: $89
	add  a                                           ; $41d8: $87
	add  a                                           ; $41d9: $87
	adc  c                                           ; $41da: $89
	add  a                                           ; $41db: $87
	adc  b                                           ; $41dc: $88
	adc  b                                           ; $41dd: $88
	adc  b                                           ; $41de: $88
	adc  b                                           ; $41df: $88
	add  a                                           ; $41e0: $87
	adc  b                                           ; $41e1: $88
	adc  b                                           ; $41e2: $88
	sbc  b                                           ; $41e3: $98
	adc  c                                           ; $41e4: $89
	adc  b                                           ; $41e5: $88
	adc  b                                           ; $41e6: $88
	ld   [hl], a                                     ; $41e7: $77
	sbc  c                                           ; $41e8: $99
	adc  b                                           ; $41e9: $88
	adc  b                                           ; $41ea: $88
	add  a                                           ; $41eb: $87
	ld   a, b                                        ; $41ec: $78
	ld   a, b                                        ; $41ed: $78
	adc  b                                           ; $41ee: $88
	sub  a                                           ; $41ef: $97
	sub  a                                           ; $41f0: $97
	adc  b                                           ; $41f1: $88
	ld   a, b                                        ; $41f2: $78
	sbc  c                                           ; $41f3: $99
	ld   a, c                                        ; $41f4: $79
	adc  b                                           ; $41f5: $88
	add  a                                           ; $41f6: $87
	add  a                                           ; $41f7: $87
	sbc  b                                           ; $41f8: $98
	add  a                                           ; $41f9: $87
	adc  b                                           ; $41fa: $88
	adc  b                                           ; $41fb: $88
	adc  b                                           ; $41fc: $88
	add  a                                           ; $41fd: $87
	adc  b                                           ; $41fe: $88
	sbc  b                                           ; $41ff: $98
	ld   a, c                                        ; $4200: $79
	adc  b                                           ; $4201: $88
	ld   a, b                                        ; $4202: $78
	adc  b                                           ; $4203: $88
	add  a                                           ; $4204: $87
	ld   [hl], a                                     ; $4205: $77
	adc  b                                           ; $4206: $88
	adc  c                                           ; $4207: $89
	adc  b                                           ; $4208: $88
	adc  c                                           ; $4209: $89
	adc  b                                           ; $420a: $88
	ld   a, c                                        ; $420b: $79
	sbc  c                                           ; $420c: $99
	ld   a, b                                        ; $420d: $78
	adc  b                                           ; $420e: $88
	add  a                                           ; $420f: $87
	ld   a, b                                        ; $4210: $78
	adc  c                                           ; $4211: $89
	adc  c                                           ; $4212: $89
	adc  c                                           ; $4213: $89
	add  a                                           ; $4214: $87
	adc  b                                           ; $4215: $88
	adc  b                                           ; $4216: $88
	sbc  b                                           ; $4217: $98
	ld   a, b                                        ; $4218: $78
	ld   a, b                                        ; $4219: $78
	adc  b                                           ; $421a: $88
	adc  b                                           ; $421b: $88
	adc  c                                           ; $421c: $89
	adc  b                                           ; $421d: $88
	adc  c                                           ; $421e: $89
	add  a                                           ; $421f: $87
	adc  b                                           ; $4220: $88
	ld   a, b                                        ; $4221: $78
	sub  a                                           ; $4222: $97
	sbc  b                                           ; $4223: $98
	adc  c                                           ; $4224: $89
	ld   a, b                                        ; $4225: $78
	sbc  b                                           ; $4226: $98
	adc  b                                           ; $4227: $88
	adc  b                                           ; $4228: $88
	sub  a                                           ; $4229: $97
	add  a                                           ; $422a: $87
	ld   a, b                                        ; $422b: $78
	adc  b                                           ; $422c: $88
	adc  b                                           ; $422d: $88
	adc  b                                           ; $422e: $88
	adc  b                                           ; $422f: $88
	adc  c                                           ; $4230: $89
	adc  b                                           ; $4231: $88
	adc  c                                           ; $4232: $89
	add  a                                           ; $4233: $87
	adc  b                                           ; $4234: $88
	adc  b                                           ; $4235: $88
	add  a                                           ; $4236: $87
	adc  b                                           ; $4237: $88
	sbc  b                                           ; $4238: $98
	ld   [hl], a                                     ; $4239: $77
	adc  b                                           ; $423a: $88
	adc  b                                           ; $423b: $88
	sbc  c                                           ; $423c: $99
	adc  b                                           ; $423d: $88
	adc  b                                           ; $423e: $88
	adc  c                                           ; $423f: $89
	adc  b                                           ; $4240: $88
	ld   a, b                                        ; $4241: $78
	add  a                                           ; $4242: $87
	ld   [hl], a                                     ; $4243: $77
	sub  a                                           ; $4244: $97
	ld   [hl], a                                     ; $4245: $77
	ld   a, b                                        ; $4246: $78
	sbc  b                                           ; $4247: $98
	ld   a, b                                        ; $4248: $78
	sbc  b                                           ; $4249: $98
	sbc  b                                           ; $424a: $98
	adc  c                                           ; $424b: $89
	adc  b                                           ; $424c: $88
	sbc  b                                           ; $424d: $98
	adc  b                                           ; $424e: $88
	adc  b                                           ; $424f: $88
	add  a                                           ; $4250: $87
	ld   a, b                                        ; $4251: $78
	add  a                                           ; $4252: $87
	ld   a, b                                        ; $4253: $78
	sbc  b                                           ; $4254: $98
	ld   [hl], a                                     ; $4255: $77
	adc  c                                           ; $4256: $89
	add  a                                           ; $4257: $87
	adc  b                                           ; $4258: $88
	sbc  b                                           ; $4259: $98
	sbc  b                                           ; $425a: $98
	sbc  c                                           ; $425b: $99
	sbc  c                                           ; $425c: $99
	adc  b                                           ; $425d: $88
	ld   [hl], a                                     ; $425e: $77
	adc  b                                           ; $425f: $88
	ld   [hl], a                                     ; $4260: $77
	ld   [hl], a                                     ; $4261: $77
	ld   [hl], a                                     ; $4262: $77
	ld   [hl], a                                     ; $4263: $77
	ld   [hl], a                                     ; $4264: $77
	adc  b                                           ; $4265: $88
	adc  c                                           ; $4266: $89
	sbc  b                                           ; $4267: $98
	sbc  b                                           ; $4268: $98
	xor  d                                           ; $4269: $aa
	sbc  c                                           ; $426a: $99
	sbc  c                                           ; $426b: $99
	sbc  b                                           ; $426c: $98
	add  a                                           ; $426d: $87
	ld   [hl], a                                     ; $426e: $77
	ld   h, l                                        ; $426f: $65
	ld   d, l                                        ; $4270: $55
	ld   d, l                                        ; $4271: $55
	ld   d, l                                        ; $4272: $55
	ld   h, a                                        ; $4273: $67
	adc  b                                           ; $4274: $88
	sbc  d                                           ; $4275: $9a
	xor  h                                           ; $4276: $ac

Call_0c3_4277:
	db   $dd                                         ; $4277: $dd
	call c, $b9dc                                    ; $4278: $dc $dc $b9
	sub  a                                           ; $427b: $97
	ld   h, h                                        ; $427c: $64
	ld   hl, $1111                                   ; $427d: $21 $11 $11
	ld   de, $9c14                                   ; $4280: $11 $14 $9c
	rst  JumpTable                                         ; $4283: $df
	rst  $38                                         ; $4284: $ff
	rst  $38                                         ; $4285: $ff
	rst  $38                                         ; $4286: $ff
	rst  $38                                         ; $4287: $ff
	ld   [$1151], a                                  ; $4288: $ea $51 $11
	ld   de, $1111                                   ; $428b: $11 $11 $11
	inc  de                                          ; $428e: $13
	xor  a                                           ; $428f: $af
	rst  $28                                         ; $4290: $ef
	rst  $38                                         ; $4291: $ff
	rst  $38                                         ; $4292: $ff
	rst  $38                                         ; $4293: $ff
	rst  $38                                         ; $4294: $ff
	ld   a, [$1131]                                  ; $4295: $fa $31 $11
	ld   de, $1111                                   ; $4298: $11 $11 $11
	ld   de, $ff3e                                   ; $429b: $11 $3e $ff
	rst  $38                                         ; $429e: $ff
	rst  $38                                         ; $429f: $ff
	rst  $38                                         ; $42a0: $ff
	rst  $38                                         ; $42a1: $ff
	rst  $38                                         ; $42a2: $ff
	ld   b, e                                        ; $42a3: $43
	ld   de, $1111                                   ; $42a4: $11 $11 $11
	ld   de, $1221                                   ; $42a7: $11 $21 $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42aa: $cf
	rst  $38                                         ; $42ab: $ff
	rst  $38                                         ; $42ac: $ff
	rst  $38                                         ; $42ad: $ff
	rst  $38                                         ; $42ae: $ff
	rst  $38                                         ; $42af: $ff
	ld   hl, sp+$11                                  ; $42b0: $f8 $11
	ld   de, $1111                                   ; $42b2: $11 $11 $11
	ld   de, $2651                                   ; $42b5: $11 $51 $26
	rst  $38                                         ; $42b8: $ff
	rst  $38                                         ; $42b9: $ff
	rst  $38                                         ; $42ba: $ff
	rst  $38                                         ; $42bb: $ff
	rst  $38                                         ; $42bc: $ff
	rst  $38                                         ; $42bd: $ff
	push af                                          ; $42be: $f5
	ld   de, $1111                                   ; $42bf: $11 $11 $11
	ld   de, $6111                                   ; $42c2: $11 $11 $61
	jr   c, @+$01                                    ; $42c5: $38 $ff

	rst  $38                                         ; $42c7: $ff
	rst  $38                                         ; $42c8: $ff
	rst  $38                                         ; $42c9: $ff
	rst  $38                                         ; $42ca: $ff
	rst  $38                                         ; $42cb: $ff
	or   $11                                         ; $42cc: $f6 $11
	ld   de, $1111                                   ; $42ce: $11 $11 $11
	ld   de, $1972                                   ; $42d1: $11 $72 $19
	rst  $28                                         ; $42d4: $ef
	rst  $38                                         ; $42d5: $ff
	rst  $38                                         ; $42d6: $ff
	rst  $38                                         ; $42d7: $ff
	rst  $38                                         ; $42d8: $ff
	rst  $38                                         ; $42d9: $ff
	ei                                               ; $42da: $fb
	ld   de, $1111                                   ; $42db: $11 $11 $11
	ld   de, $1911                                   ; $42de: $11 $11 $19
	dec  d                                           ; $42e1: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42e2: $cf
	rst  $38                                         ; $42e3: $ff
	rst  $38                                         ; $42e4: $ff
	rst  $38                                         ; $42e5: $ff
	rst  $38                                         ; $42e6: $ff
	rst  $38                                         ; $42e7: $ff
	db   $dd                                         ; $42e8: $dd
	ld   [hl], c                                     ; $42e9: $71
	ld   hl, $1111                                   ; $42ea: $21 $11 $11
	ld   de, $9111                                   ; $42ed: $11 $11 $91
	ld   a, l                                        ; $42f0: $7d
	rst  JumpTable                                         ; $42f1: $df
	rst  $38                                         ; $42f2: $ff
	rst  $38                                         ; $42f3: $ff
	rst  $38                                         ; $42f4: $ff
	rst  $38                                         ; $42f5: $ff
	cp   $c8                                         ; $42f6: $fe $c8
	inc  de                                          ; $42f8: $13
	ld   de, $1111                                   ; $42f9: $11 $11 $11
	ld   de, $6415                                   ; $42fc: $11 $15 $64
	xor  e                                           ; $42ff: $ab
	rst  $38                                         ; $4300: $ff
	rst  $38                                         ; $4301: $ff
	rst  $38                                         ; $4302: $ff
	rst  $38                                         ; $4303: $ff
	rst  $38                                         ; $4304: $ff
	db   $fc                                         ; $4305: $fc
	and  a                                           ; $4306: $a7
	ld   b, h                                        ; $4307: $44
	ld   de, $1111                                   ; $4308: $11 $11 $11
	ld   de, $6414                                   ; $430b: $11 $14 $64
	sbc  c                                           ; $430e: $99
	rst  JumpTable                                         ; $430f: $df
	rst  $38                                         ; $4310: $ff
	rst  $38                                         ; $4311: $ff
	rst  $38                                         ; $4312: $ff
	rst  $38                                         ; $4313: $ff
	db   $fc                                         ; $4314: $fc
	xor  b                                           ; $4315: $a8
	ld   h, [hl]                                     ; $4316: $66
	ld   de, $1111                                   ; $4317: $11 $11 $11
	ld   de, $7511                                   ; $431a: $11 $11 $75
	adc  b                                           ; $431d: $88
	cp   a                                           ; $431e: $bf
	rst  $38                                         ; $431f: $ff
	rst  $38                                         ; $4320: $ff
	rst  $38                                         ; $4321: $ff
	rst  $38                                         ; $4322: $ff
	cp   $aa                                         ; $4323: $fe $aa
	add  [hl]                                        ; $4325: $86
	ld   sp, $1111                                   ; $4326: $31 $11 $11
	ld   de, $1511                                   ; $4329: $11 $11 $15
	ld   e, c                                        ; $432c: $59
	adc  e                                           ; $432d: $8b
	rst  $28                                         ; $432e: $ef
	rst  $38                                         ; $432f: $ff
	rst  $38                                         ; $4330: $ff
	rst  $38                                         ; $4331: $ff
	rst  $38                                         ; $4332: $ff
	jp   c, $74a7                                    ; $4333: $da $a7 $74

	ld   [de], a                                     ; $4336: $12
	ld   de, $1111                                   ; $4337: $11 $11 $11
	ld   de, $7855                                   ; $433a: $11 $55 $78
	adc  d                                           ; $433d: $8a
	sbc  $ff                                         ; $433e: $de $ff
	rst  $38                                         ; $4340: $ff
	rst  $38                                         ; $4341: $ff
	cp   $ca                                         ; $4342: $fe $ca
	sbc  b                                           ; $4344: $98
	ld   [hl], l                                     ; $4345: $75
	ld   d, h                                        ; $4346: $54
	ld   [hl-], a                                    ; $4347: $32
	ld   de, $1111                                   ; $4348: $11 $11 $11
	ld   d, h                                        ; $434b: $54
	ld   l, b                                        ; $434c: $68
	ld   h, a                                        ; $434d: $67
	adc  d                                           ; $434e: $8a
	call $efee                                       ; $434f: $cd $ee $ef
	xor  $eb                                         ; $4352: $ee $eb
	xor  d                                           ; $4354: $aa
	xor  b                                           ; $4355: $a8
	ld   [hl], a                                     ; $4356: $77
	ld   d, l                                        ; $4357: $55
	ld   d, h                                        ; $4358: $54
	ld   b, h                                        ; $4359: $44
	ld   [hl-], a                                    ; $435a: $32
	ld   b, [hl]                                     ; $435b: $46
	ld   b, l                                        ; $435c: $45
	ld   d, h                                        ; $435d: $54
	ld   b, h                                        ; $435e: $44
	ld   d, [hl]                                     ; $435f: $56
	adc  d                                           ; $4360: $8a
	xor  e                                           ; $4361: $ab
	call $eded                                       ; $4362: $cd $ed $ed
	call $a8bb                                       ; $4365: $cd $bb $a8
	adc  b                                           ; $4368: $88
	ld   [hl], a                                     ; $4369: $77
	ld   [hl], a                                     ; $436a: $77
	ld   h, l                                        ; $436b: $65
	ld   d, l                                        ; $436c: $55
	ld   b, h                                        ; $436d: $44
	ld   b, e                                        ; $436e: $43
	ld   hl, $4623                                   ; $436f: $21 $23 $46
	ld   a, d                                        ; $4372: $7a
	call $eede                                       ; $4373: $cd $de $ee
	xor  $db                                         ; $4376: $ee $db
	xor  d                                           ; $4378: $aa
	sbc  c                                           ; $4379: $99
	adc  b                                           ; $437a: $88
	adc  b                                           ; $437b: $88
	ld   [hl], a                                     ; $437c: $77
	ld   h, l                                        ; $437d: $65
	ld   h, l                                        ; $437e: $65
	ld   b, h                                        ; $437f: $44
	ld   [hl-], a                                    ; $4380: $32
	ld   hl, $5723                                   ; $4381: $21 $23 $57
	adc  d                                           ; $4384: $8a
	call z, $dccc                                    ; $4385: $cc $cc $dc
	call z, $99bb                                    ; $4388: $cc $bb $99
	sbc  b                                           ; $438b: $98
	adc  c                                           ; $438c: $89
	sbc  c                                           ; $438d: $99
	sbc  c                                           ; $438e: $99
	adc  b                                           ; $438f: $88
	ld   [hl], a                                     ; $4390: $77
	ld   h, l                                        ; $4391: $65
	ld   d, h                                        ; $4392: $54
	inc  sp                                          ; $4393: $33
	inc  hl                                          ; $4394: $23
	ld   b, l                                        ; $4395: $45
	ld   h, a                                        ; $4396: $67
	adc  d                                           ; $4397: $8a
	xor  d                                           ; $4398: $aa
	xor  d                                           ; $4399: $aa
	cp   d                                           ; $439a: $ba
	xor  d                                           ; $439b: $aa
	xor  d                                           ; $439c: $aa
	xor  d                                           ; $439d: $aa
	cp   e                                           ; $439e: $bb
	cp   d                                           ; $439f: $ba
	cp   e                                           ; $43a0: $bb
	cp   e                                           ; $43a1: $bb
	xor  c                                           ; $43a2: $a9
	ld   [hl], a                                     ; $43a3: $77
	ld   h, l                                        ; $43a4: $65
	ld   b, e                                        ; $43a5: $43
	ld   [hl+], a                                    ; $43a6: $22
	ld   [hl+], a                                    ; $43a7: $22
	inc  [hl]                                        ; $43a8: $34
	ld   d, [hl]                                     ; $43a9: $56
	ld   a, b                                        ; $43aa: $78
	adc  d                                           ; $43ab: $8a
	xor  d                                           ; $43ac: $aa
	cp   e                                           ; $43ad: $bb
	cp   e                                           ; $43ae: $bb
	cp   e                                           ; $43af: $bb
	res  7, h                                        ; $43b0: $cb $bc
	cp   h                                           ; $43b2: $bc
	res  5, d                                        ; $43b3: $cb $aa
	sbc  b                                           ; $43b5: $98
	halt                                             ; $43b6: $76
	ld   h, l                                        ; $43b7: $65
	ld   b, e                                        ; $43b8: $43
	ld   [hl-], a                                    ; $43b9: $32
	ld   [hl+], a                                    ; $43ba: $22
	inc  [hl]                                        ; $43bb: $34
	ld   d, [hl]                                     ; $43bc: $56
	ld   a, b                                        ; $43bd: $78
	sbc  d                                           ; $43be: $9a
	sbc  d                                           ; $43bf: $9a
	xor  d                                           ; $43c0: $aa
	cp   e                                           ; $43c1: $bb
	cp   d                                           ; $43c2: $ba
	xor  d                                           ; $43c3: $aa
	cp   e                                           ; $43c4: $bb
	cp   e                                           ; $43c5: $bb
	cp   e                                           ; $43c6: $bb
	cp   d                                           ; $43c7: $ba
	xor  c                                           ; $43c8: $a9
	adc  b                                           ; $43c9: $88
	halt                                             ; $43ca: $76
	ld   d, l                                        ; $43cb: $55
	ld   b, e                                        ; $43cc: $43
	ld   [hl+], a                                    ; $43cd: $22
	inc  hl                                          ; $43ce: $23
	dec  [hl]                                        ; $43cf: $35
	ld   h, [hl]                                     ; $43d0: $66
	adc  b                                           ; $43d1: $88
	sbc  d                                           ; $43d2: $9a
	sbc  d                                           ; $43d3: $9a
	cp   d                                           ; $43d4: $ba
	xor  d                                           ; $43d5: $aa
	cp   e                                           ; $43d6: $bb
	set  1, e                                        ; $43d7: $cb $cb
	cp   e                                           ; $43d9: $bb
	res  5, e                                        ; $43da: $cb $ab
	xor  c                                           ; $43dc: $a9
	ld   [hl], a                                     ; $43dd: $77
	ld   h, l                                        ; $43de: $65
	ld   d, h                                        ; $43df: $54
	ld   b, e                                        ; $43e0: $43
	inc  hl                                          ; $43e1: $23
	inc  sp                                          ; $43e2: $33
	ld   d, [hl]                                     ; $43e3: $56
	ld   h, a                                        ; $43e4: $67
	adc  c                                           ; $43e5: $89
	sbc  d                                           ; $43e6: $9a
	xor  d                                           ; $43e7: $aa
	xor  d                                           ; $43e8: $aa
	cp   d                                           ; $43e9: $ba
	xor  e                                           ; $43ea: $ab
	xor  e                                           ; $43eb: $ab
	cp   e                                           ; $43ec: $bb
	cp   e                                           ; $43ed: $bb
	call z, $a8ba                                    ; $43ee: $cc $ba $a8
	ld   [hl], a                                     ; $43f1: $77
	ld   h, l                                        ; $43f2: $65
	ld   d, h                                        ; $43f3: $54
	inc  sp                                          ; $43f4: $33
	inc  sp                                          ; $43f5: $33
	inc  [hl]                                        ; $43f6: $34
	ld   d, l                                        ; $43f7: $55
	ld   h, a                                        ; $43f8: $67
	adc  c                                           ; $43f9: $89
	adc  d                                           ; $43fa: $8a
	xor  d                                           ; $43fb: $aa
	xor  d                                           ; $43fc: $aa
	xor  e                                           ; $43fd: $ab
	cp   e                                           ; $43fe: $bb
	cp   h                                           ; $43ff: $bc
	res  7, e                                        ; $4400: $cb $bb
	res  7, e                                        ; $4402: $cb $bb
	sbc  c                                           ; $4404: $99
	ld   [hl], a                                     ; $4405: $77
	ld   h, l                                        ; $4406: $65
	ld   d, h                                        ; $4407: $54
	ld   [hl-], a                                    ; $4408: $32
	ld   [hl+], a                                    ; $4409: $22
	inc  sp                                          ; $440a: $33
	ld   b, l                                        ; $440b: $45
	ld   h, a                                        ; $440c: $67
	adc  b                                           ; $440d: $88
	sbc  d                                           ; $440e: $9a
	cp   d                                           ; $440f: $ba
	cp   e                                           ; $4410: $bb
	cp   e                                           ; $4411: $bb
	call z, $bccc                                    ; $4412: $cc $cc $bc
	cp   h                                           ; $4415: $bc
	xor  d                                           ; $4416: $aa
	sbc  d                                           ; $4417: $9a
	sub  a                                           ; $4418: $97
	ld   h, [hl]                                     ; $4419: $66
	ld   h, l                                        ; $441a: $65
	ld   b, h                                        ; $441b: $44
	inc  sp                                          ; $441c: $33
	inc  sp                                          ; $441d: $33
	inc  [hl]                                        ; $441e: $34
	ld   d, [hl]                                     ; $441f: $56
	ld   h, a                                        ; $4420: $67
	sbc  c                                           ; $4421: $99
	xor  d                                           ; $4422: $aa
	cp   e                                           ; $4423: $bb
	cp   h                                           ; $4424: $bc
	cp   e                                           ; $4425: $bb
	cp   h                                           ; $4426: $bc
	cp   h                                           ; $4427: $bc
	call z, $bccb                                    ; $4428: $cc $cb $bc
	cp   c                                           ; $442b: $b9
	ld   [hl], a                                     ; $442c: $77
	ld   d, l                                        ; $442d: $55
	ld   b, e                                        ; $442e: $43
	inc  sp                                          ; $442f: $33
	ld   hl, $3423                                   ; $4430: $21 $23 $34
	ld   d, [hl]                                     ; $4433: $56
	adc  c                                           ; $4434: $89
	sbc  d                                           ; $4435: $9a
	cp   d                                           ; $4436: $ba
	cp   h                                           ; $4437: $bc
	cp   h                                           ; $4438: $bc
	cp   e                                           ; $4439: $bb
	call z, $ccbb                                    ; $443a: $cc $bb $cc
	cp   e                                           ; $443d: $bb
	xor  c                                           ; $443e: $a9
	adc  b                                           ; $443f: $88
	ld   [hl], l                                     ; $4440: $75
	ld   b, h                                        ; $4441: $44
	ld   b, e                                        ; $4442: $43
	inc  sp                                          ; $4443: $33
	ld   [hl+], a                                    ; $4444: $22
	inc  h                                           ; $4445: $24
	ld   b, l                                        ; $4446: $45
	ld   [hl], a                                     ; $4447: $77
	adc  d                                           ; $4448: $8a
	sbc  d                                           ; $4449: $9a
	xor  h                                           ; $444a: $ac
	call z, $cbcc                                    ; $444b: $cc $cc $cb
	cp   e                                           ; $444e: $bb
	res  7, d                                        ; $444f: $cb $ba
	xor  c                                           ; $4451: $a9
	adc  b                                           ; $4452: $88
	halt                                             ; $4453: $76
	ld   d, e                                        ; $4454: $53
	ld   b, h                                        ; $4455: $44
	inc  sp                                          ; $4456: $33
	inc  sp                                          ; $4457: $33
	inc  hl                                          ; $4458: $23
	ld   b, l                                        ; $4459: $45
	ld   h, a                                        ; $445a: $67
	sbc  c                                           ; $445b: $99
	cp   d                                           ; $445c: $ba
	set  1, l                                        ; $445d: $cb $cd
	call $bbbc                                       ; $445f: $cd $bc $bb
	cp   e                                           ; $4462: $bb
	cp   d                                           ; $4463: $ba
	cp   b                                           ; $4464: $b8
	ld   [hl], a                                     ; $4465: $77
	halt                                             ; $4466: $76
	ld   d, e                                        ; $4467: $53
	inc  hl                                          ; $4468: $23
	inc  sp                                          ; $4469: $33
	ld   b, e                                        ; $446a: $43
	ld   b, e                                        ; $446b: $43
	ld   b, [hl]                                     ; $446c: $46
	ld   a, b                                        ; $446d: $78
	sbc  e                                           ; $446e: $9b
	cp   h                                           ; $446f: $bc
	db   $dd                                         ; $4470: $dd
	call $bacb                                       ; $4471: $cd $cb $ba
	cp   d                                           ; $4474: $ba
	sbc  c                                           ; $4475: $99
	sbc  b                                           ; $4476: $98
	halt                                             ; $4477: $76
	halt                                             ; $4478: $76
	ld   h, l                                        ; $4479: $65
	ld   b, d                                        ; $447a: $42
	inc  de                                          ; $447b: $13
	ld   b, h                                        ; $447c: $44
	ld   d, l                                        ; $447d: $55
	ld   d, l                                        ; $447e: $55
	ld   l, b                                        ; $447f: $68
	adc  d                                           ; $4480: $8a
	cp   h                                           ; $4481: $bc
	call c, $dddd                                    ; $4482: $dc $dd $dd
	call z, $9aba                                    ; $4485: $cc $ba $9a
	adc  c                                           ; $4488: $89
	add  a                                           ; $4489: $87
	ld   d, h                                        ; $448a: $54
	ld   b, e                                        ; $448b: $43
	ld   [hl-], a                                    ; $448c: $32
	ld   de, $4614                                   ; $448d: $11 $14 $46
	ld   [hl], a                                     ; $4490: $77
	ld   a, b                                        ; $4491: $78
	cp   e                                           ; $4492: $bb
	cp   h                                           ; $4493: $bc
	call z, $edee                                    ; $4494: $cc $ee $ed
	call z, $99ba                                    ; $4497: $cc $ba $99
	add  a                                           ; $449a: $87
	halt                                             ; $449b: $76
	ld   d, e                                        ; $449c: $53
	ld   de, $1111                                   ; $449d: $11 $11 $11
	ld   [de], a                                     ; $44a0: $12
	ld   e, b                                        ; $44a1: $58
	cp   e                                           ; $44a2: $bb
	cp   d                                           ; $44a3: $ba
	call $ccee                                       ; $44a4: $cd $ee $cc
	cp   l                                           ; $44a7: $bd
	db   $ed                                         ; $44a8: $ed
	db   $ec                                         ; $44a9: $ec
	xor  c                                           ; $44aa: $a9
	sbc  c                                           ; $44ab: $99
	sub  a                                           ; $44ac: $97
	ld   h, l                                        ; $44ad: $65
	ld   sp, $1111                                   ; $44ae: $31 $11 $11
	ld   de, $8c16                                   ; $44b1: $11 $16 $8c
	rst  $38                                         ; $44b4: $ff
	xor  $fe                                         ; $44b5: $ee $fe
	call z, $bb99                                    ; $44b7: $cc $99 $bb
	db   $dd                                         ; $44ba: $dd
	db   $eb                                         ; $44bb: $eb
	cp   e                                           ; $44bc: $bb
	cp   d                                           ; $44bd: $ba
	sub  a                                           ; $44be: $97
	ld   h, e                                        ; $44bf: $63
	ld   de, $1111                                   ; $44c0: $11 $11 $11
	ld   de, $ff5a                                   ; $44c3: $11 $5a $ff
	rst  $38                                         ; $44c6: $ff
	cp   $db                                         ; $44c7: $fe $db
	cp   b                                           ; $44c9: $b8
	ld   l, c                                        ; $44ca: $69
	sbc  h                                           ; $44cb: $9c
	xor  $ec                                         ; $44cc: $ee $ec
	db   $dd                                         ; $44ce: $dd
	cp   e                                           ; $44cf: $bb
	add  l                                           ; $44d0: $85
	ld   sp, $1111                                   ; $44d1: $31 $11 $11
	ld   de, $df15                                   ; $44d4: $11 $15 $df
	rst  $38                                         ; $44d7: $ff
	rst  $38                                         ; $44d8: $ff
	db   $ec                                         ; $44d9: $ec
	sbc  c                                           ; $44da: $99
	ld   h, l                                        ; $44db: $65
	ld   a, d                                        ; $44dc: $7a
	rst  $28                                         ; $44dd: $ef
	rst  $38                                         ; $44de: $ff
	sbc  $db                                         ; $44df: $de $db
	or   a                                           ; $44e1: $b7
	ld   d, c                                        ; $44e2: $51
	ld   de, $1111                                   ; $44e3: $11 $11 $11
	ld   de, $ff6e                                   ; $44e6: $11 $6e $ff
	rst  $38                                         ; $44e9: $ff
	db   $fd                                         ; $44ea: $fd
	ret  z                                           ; $44eb: $c8

	ld   h, l                                        ; $44ec: $65
	ld   b, a                                        ; $44ed: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44ee: $cf
	rst  $38                                         ; $44ef: $ff
	rst  $38                                         ; $44f0: $ff
	cp   $c7                                         ; $44f1: $fe $c7
	ld   d, d                                        ; $44f3: $52
	ld   de, $1111                                   ; $44f4: $11 $11 $11
	ld   de, $ef16                                   ; $44f7: $11 $16 $ef
	rst  $38                                         ; $44fa: $ff
	cp   $a8                                         ; $44fb: $fe $a8
	add  l                                           ; $44fd: $85
	ld   [hl], l                                     ; $44fe: $75
	adc  l                                           ; $44ff: $8d
	rst  $28                                         ; $4500: $ef
	rst  $38                                         ; $4501: $ff
	ei                                               ; $4502: $fb
	db   $db                                         ; $4503: $db
	add  [hl]                                        ; $4504: $86
	ld   de, $1111                                   ; $4505: $11 $11 $11
	ld   de, $6f11                                   ; $4508: $11 $11 $6f
	rst  $38                                         ; $450b: $ff
	rst  $38                                         ; $450c: $ff
	ld   [$56a7], a                                  ; $450d: $ea $a7 $56
	ld   l, c                                        ; $4510: $69
	rst  $28                                         ; $4511: $ef
	rst  $38                                         ; $4512: $ff
	rst  $38                                         ; $4513: $ff
	res  2, a                                        ; $4514: $cb $97
	ld   d, l                                        ; $4516: $55
	ld   hl, $1111                                   ; $4517: $21 $11 $11
	ld   de, $cf16                                   ; $451a: $11 $16 $cf
	rst  $38                                         ; $451d: $ff
	db   $fd                                         ; $451e: $fd
	xor  b                                           ; $451f: $a8
	ld   h, [hl]                                     ; $4520: $66
	ld   h, a                                        ; $4521: $67
	cp   a                                           ; $4522: $bf
	rst  $38                                         ; $4523: $ff
	rst  $38                                         ; $4524: $ff
	db   $eb                                         ; $4525: $eb
	xor  c                                           ; $4526: $a9
	add  [hl]                                        ; $4527: $86
	ld   b, d                                        ; $4528: $42
	ld   de, $1111                                   ; $4529: $11 $11 $11
	ld   de, $ffaf                                   ; $452c: $11 $af $ff
	rst  $38                                         ; $452f: $ff
	rst  $10                                         ; $4530: $d7
	add  l                                           ; $4531: $85
	ld   e, b                                        ; $4532: $58
	ld   l, h                                        ; $4533: $6c
	rst  $38                                         ; $4534: $ff
	rst  $38                                         ; $4535: $ff
	db   $fd                                         ; $4536: $fd
	xor  c                                           ; $4537: $a9
	add  a                                           ; $4538: $87
	ld   h, l                                        ; $4539: $65
	ld   hl, $1111                                   ; $453a: $21 $11 $11
	ld   [de], a                                     ; $453d: $12
	ld   c, h                                        ; $453e: $4c
	rst  $38                                         ; $453f: $ff
	rst  $38                                         ; $4540: $ff
	call c, Call_0c3_5565                            ; $4541: $dc $65 $55
	ld   a, c                                        ; $4544: $79
	rst  $28                                         ; $4545: $ef
	rst  $38                                         ; $4546: $ff
	db   $fd                                         ; $4547: $fd
	ret                                              ; $4548: $c9


	ld   [hl], a                                     ; $4549: $77
	ld   d, l                                        ; $454a: $55
	ld   b, d                                        ; $454b: $42
	ld   de, $1111                                   ; $454c: $11 $11 $11
	scf                                              ; $454f: $37
	rst  $38                                         ; $4550: $ff
	rst  $38                                         ; $4551: $ff
	ld   [$5573], a                                  ; $4552: $ea $73 $55
	sbc  d                                           ; $4555: $9a
	rst  $28                                         ; $4556: $ef
	rst  $38                                         ; $4557: $ff
	db   $fc                                         ; $4558: $fc
	cp   h                                           ; $4559: $bc
	cp   b                                           ; $455a: $b8
	ld   h, h                                        ; $455b: $64
	ld   hl, $1111                                   ; $455c: $21 $11 $11
	ld   de, $ff18                                   ; $455f: $11 $18 $ff
	rst  $38                                         ; $4562: $ff
	ret                                              ; $4563: $c9


	ld   h, h                                        ; $4564: $64
	ld   [hl], l                                     ; $4565: $75
	ld   a, b                                        ; $4566: $78
	rst  JumpTable                                         ; $4567: $df
	rst  $38                                         ; $4568: $ff
	ld   sp, hl                                      ; $4569: $f9
	sub  a                                           ; $456a: $97
	xor  e                                           ; $456b: $ab
	and  [hl]                                        ; $456c: $a6
	ld   de, $1111                                   ; $456d: $11 $11 $11
	ld   de, $ff07                                   ; $4570: $11 $07 $ff
	rst  $38                                         ; $4573: $ff
	xor  c                                           ; $4574: $a9
	ld   [hl], h                                     ; $4575: $74
	ld   h, h                                        ; $4576: $64
	ld   l, d                                        ; $4577: $6a
	rst  $38                                         ; $4578: $ff
	rst  $38                                         ; $4579: $ff
	jp   c, $9999                                    ; $457a: $da $99 $99

	ld   [hl], h                                     ; $457d: $74
	ld   sp, $1111                                   ; $457e: $31 $11 $11
	ld   de, $ff3f                                   ; $4581: $11 $3f $ff
	rst  $38                                         ; $4584: $ff
	ld   d, l                                        ; $4585: $55
	inc  hl                                          ; $4586: $23
	ld   [hl], a                                     ; $4587: $77
	cp   e                                           ; $4588: $bb
	rst  $38                                         ; $4589: $ff
	rst  $38                                         ; $458a: $ff
	and  a                                           ; $458b: $a7
	sbc  b                                           ; $458c: $98
	jp   z, $1173                                    ; $458d: $ca $73 $11

	ld   de, $1111                                   ; $4590: $11 $11 $11
	rst  $38                                         ; $4593: $ff
	rst  $38                                         ; $4594: $ff
	ld   sp, hl                                      ; $4595: $f9
	ld   [hl], d                                     ; $4596: $72
	halt                                             ; $4597: $76
	ld   a, d                                        ; $4598: $7a
	ld   l, a                                        ; $4599: $6f
	rst  $38                                         ; $459a: $ff
	db   $fc                                         ; $459b: $fc
	ld   d, a                                        ; $459c: $57
	adc  e                                           ; $459d: $8b
	ld   a, [$1121]                                  ; $459e: $fa $21 $11
	ld   de, $1d11                                   ; $45a1: $11 $11 $1d
	rst  $38                                         ; $45a4: $ff
	rst  $38                                         ; $45a5: $ff
	ld   [hl], l                                     ; $45a6: $75
	ld   h, [hl]                                     ; $45a7: $66
	halt                                             ; $45a8: $76
	ld   l, c                                        ; $45a9: $69
	rst  $38                                         ; $45aa: $ff
	rst  $38                                         ; $45ab: $ff
	or   d                                           ; $45ac: $b2
	ld   l, d                                        ; $45ad: $6a
	sbc  $91                                         ; $45ae: $de $91
	ld   de, $1111                                   ; $45b0: $11 $11 $11
	ld   [de], a                                     ; $45b3: $12
	rst  $38                                         ; $45b4: $ff
	rst  $38                                         ; $45b5: $ff
	sub  [hl]                                        ; $45b6: $96
	ld   h, c                                        ; $45b7: $61
	sbc  c                                           ; $45b8: $99
	ret                                              ; $45b9: $c9


	cp   a                                           ; $45ba: $bf
	rst  $38                                         ; $45bb: $ff
	ld   hl, sp-$7a                                  ; $45bc: $f8 $86
	sbc  h                                           ; $45be: $9c
	add  sp, $11                                     ; $45bf: $e8 $11
	ld   de, $1111                                   ; $45c1: $11 $11 $11
	rst  $28                                         ; $45c4: $ef
	rst  $38                                         ; $45c5: $ff
	ld   sp, hl                                      ; $45c6: $f9
	ld   b, c                                        ; $45c7: $41
	ld   e, d                                        ; $45c8: $5a
	sbc  $bf                                         ; $45c9: $de $bf
	db   $fd                                         ; $45cb: $fd
	ld   a, [$ac89]                                  ; $45cc: $fa $89 $ac
	xor  b                                           ; $45cf: $a8
	ld   de, $1111                                   ; $45d0: $11 $11 $11
	ld   [de], a                                     ; $45d3: $12
	rst  JumpTable                                         ; $45d4: $df
	rst  $38                                         ; $45d5: $ff
	push af                                          ; $45d6: $f5
	ld   sp, $df7c                                   ; $45d7: $31 $7c $df
	cp   a                                           ; $45da: $bf
	rst  $38                                         ; $45db: $ff
	db   $eb                                         ; $45dc: $eb
	add  a                                           ; $45dd: $87
	jp   z, $11b5                                    ; $45de: $ca $b5 $11

	ld   de, $3b11                                   ; $45e1: $11 $11 $3b
	rst  $38                                         ; $45e4: $ff
	rst  $38                                         ; $45e5: $ff
	ld   h, h                                        ; $45e6: $64
	ld   l, d                                        ; $45e7: $6a
	sbc  d                                           ; $45e8: $9a
	ld   [hl], a                                     ; $45e9: $77
	rst  $38                                         ; $45ea: $ff
	cp   $63                                         ; $45eb: $fe $63
	cp   a                                           ; $45ed: $bf
	db   $fd                                         ; $45ee: $fd
	ld   hl, $1111                                   ; $45ef: $21 $11 $11
	ld   de, $ffaf                                   ; $45f2: $11 $af $ff
	db   $f4                                         ; $45f5: $f4
	ld   d, h                                        ; $45f6: $54
	ld   a, h                                        ; $45f7: $7c
	call z, $fcae                                    ; $45f8: $cc $ae $fc
	ld   [$edbf], a                                  ; $45fb: $ea $bf $ed
	and  d                                           ; $45fe: $a2
	ld   de, $1111                                   ; $45ff: $11 $11 $11
	adc  a                                           ; $4602: $8f
	rst  $38                                         ; $4603: $ff
	di                                               ; $4604: $f3
	dec  a                                           ; $4605: $3d
	ld   a, h                                        ; $4606: $7c
	rst  $10                                         ; $4607: $d7
	xor  d                                           ; $4608: $aa
	rst  $38                                         ; $4609: $ff
	reti                                             ; $460a: $d9


	ld   l, e                                        ; $460b: $6b
	rst  $38                                         ; $460c: $ff
	push bc                                          ; $460d: $c5
	ld   de, $1111                                   ; $460e: $11 $11 $11
	ld   c, a                                        ; $4611: $4f
	rst  $38                                         ; $4612: $ff
	ld   a, [$9999]                                  ; $4613: $fa $99 $99
	xor  e                                           ; $4616: $ab
	xor  [hl]                                        ; $4617: $ae
	rst  $38                                         ; $4618: $ff
	ld   d, l                                        ; $4619: $55
	ld   e, c                                        ; $461a: $59
	rst  $38                                         ; $461b: $ff
	di                                               ; $461c: $f3
	ld   de, $1311                                   ; $461d: $11 $11 $13
	rst  $38                                         ; $4620: $ff
	rst  $28                                         ; $4621: $ef
	call z, $85a5                                    ; $4622: $cc $a5 $85
	rst  $38                                         ; $4625: $ff
	rst  $38                                         ; $4626: $ff
	ld   d, l                                        ; $4627: $55
	ld   [hl+], a                                    ; $4628: $22
	rst  $38                                         ; $4629: $ff
	call z, $1141                                    ; $462a: $cc $41 $11
	ld   de, $ff18                                   ; $462d: $11 $18 $ff
	db   $fd                                         ; $4630: $fd
	add  l                                           ; $4631: $85
	ld   c, l                                        ; $4632: $4d
	xor  $ef                                         ; $4633: $ee $ef
	db   $fc                                         ; $4635: $fc
	ld   h, c                                        ; $4636: $61
	ld   a, [de]                                     ; $4637: $1a
	rst  JumpTable                                         ; $4638: $df
	or   h                                           ; $4639: $b4
	ld   de, $1511                                   ; $463a: $11 $11 $15
	rst  $28                                         ; $463d: $ef
	rst  $28                                         ; $463e: $ef
	ret                                              ; $463f: $c9


	ld   a, d                                        ; $4640: $7a
	call z, $feff                                    ; $4641: $cc $ff $fe
	ld   b, c                                        ; $4644: $41
	add  hl, de                                      ; $4645: $19
	db   $ed                                         ; $4646: $ed
	ld   [hl], c                                     ; $4647: $71
	ld   de, $1511                                   ; $4648: $11 $11 $15
	xor  $ff                                         ; $464b: $ee $ff
	rst  $30                                         ; $464d: $f7
	dec  d                                           ; $464e: $15
	ld   l, a                                        ; $464f: $6f
	rst  $38                                         ; $4650: $ff
	rst  $38                                         ; $4651: $ff
	ld   [hl+], a                                    ; $4652: $22
	ld   d, $da                                      ; $4653: $16 $da
	ld   sp, $1111                                   ; $4655: $31 $11 $11
	add  hl, de                                      ; $4658: $19
	rst  $38                                         ; $4659: $ff
	db   $fc                                         ; $465a: $fc
	ld   h, c                                        ; $465b: $61
	ld   e, a                                        ; $465c: $5f
	rst  $38                                         ; $465d: $ff
	db   $fd                                         ; $465e: $fd
	db   $fc                                         ; $465f: $fc
	add  l                                           ; $4660: $85
	dec  d                                           ; $4661: $15
	sub  l                                           ; $4662: $95
	ld   de, $2111                                   ; $4663: $11 $11 $21
	adc  d                                           ; $4666: $8a
	rst  $28                                         ; $4667: $ef
	rst  $30                                         ; $4668: $f7
	jr   @-$6f                                       ; $4669: $18 $8f

	rst  $38                                         ; $466b: $ff
	db   $fd                                         ; $466c: $fd
	ld   a, c                                        ; $466d: $79
	ld   [hl], h                                     ; $466e: $74
	ld   [de], a                                     ; $466f: $12
	ld   sp, $1112                                   ; $4670: $31 $12 $11
	ld   a, l                                        ; $4673: $7d
	rst  $38                                         ; $4674: $ff
	ld   d, [hl]                                     ; $4675: $56
	xor  c                                           ; $4676: $a9
	cp   $ef                                         ; $4677: $fe $ef
	rst  $38                                         ; $4679: $ff
	adc  b                                           ; $467a: $88
	add  h                                           ; $467b: $84
	and  h                                           ; $467c: $a4
	ld   de, $5114                                   ; $467d: $11 $14 $51
	rla                                              ; $4680: $17
	rst  JumpTable                                         ; $4681: $df
	rst  $30                                         ; $4682: $f7
	ld   d, c                                        ; $4683: $51
	cp   a                                           ; $4684: $bf
	rst  $38                                         ; $4685: $ff
	rst  $38                                         ; $4686: $ff
	ld   a, [$1341]                                  ; $4687: $fa $41 $13
	ld   de, $1211                                   ; $468a: $11 $11 $12
	cp   a                                           ; $468d: $bf
	db   $eb                                         ; $468e: $eb
	ld   a, [$8d2b]                                  ; $468f: $fa $2b $8d
	cp   $ff                                         ; $4692: $fe $ff
	rst  $38                                         ; $4694: $ff
	ld   hl, $1811                                   ; $4695: $21 $11 $18
	or   e                                           ; $4698: $b3
	inc  de                                          ; $4699: $13
	ld   c, a                                        ; $469a: $4f
	ld   sp, hl                                      ; $469b: $f9
	and  c                                           ; $469c: $a1
	xor  a                                           ; $469d: $af
	rst  $28                                         ; $469e: $ef
	xor  $f4                                         ; $469f: $ee $f4
	sbc  e                                           ; $46a1: $9b
	ld   [de], a                                     ; $46a2: $12
	ld   de, $1381                                   ; $46a3: $11 $81 $13
	jp   c, $3aff                                    ; $46a6: $da $ff $3a

	ld   h, a                                        ; $46a9: $67
	ld   sp, hl                                      ; $46aa: $f9
	rst  $38                                         ; $46ab: $ff
	rst  $38                                         ; $46ac: $ff
	inc  hl                                          ; $46ad: $23
	ld   de, $3b31                                   ; $46ae: $11 $31 $3b
	ld   de, $fd5e                                   ; $46b1: $11 $5e $fd
	or   a                                           ; $46b4: $b7
	add  l                                           ; $46b5: $85
	rst  JumpTable                                         ; $46b6: $df
	rst  $38                                         ; $46b7: $ff
	ld   h, $2a                                      ; $46b8: $26 $2a
	pop  bc                                          ; $46ba: $c1
	ld   de, $4311                                   ; $46bb: $11 $11 $43
	sbc  e                                           ; $46be: $9b
	rst  JumpTable                                         ; $46bf: $df
	ld   sp, $ff43                                   ; $46c0: $31 $43 $ff
	db   $fc                                         ; $46c3: $fc
	rra                                              ; $46c4: $1f
	ld   [hl], a                                     ; $46c5: $77
	and  c                                           ; $46c6: $a1
	inc  de                                          ; $46c7: $13
	ld   a, d                                        ; $46c8: $7a
	ld   sp, $da3c                                   ; $46c9: $31 $3c $da
	db   $fc                                         ; $46cc: $fc
	inc  h                                           ; $46cd: $24
	xor  a                                           ; $46ce: $af
	rst  $38                                         ; $46cf: $ff
	ret  c                                           ; $46d0: $d8

	ld   b, c                                        ; $46d1: $41
	inc  d                                           ; $46d2: $14
	ld   e, $81                                      ; $46d3: $1e $81
	daa                                              ; $46d5: $27
	rst  $38                                         ; $46d6: $ff
	ld   h, c                                        ; $46d7: $61
	cpl                                              ; $46d8: $2f
	sbc  a                                           ; $46d9: $9f
	rst  $38                                         ; $46da: $ff
	ld   c, d                                        ; $46db: $4a
	ld   hl, sp-$7f                                  ; $46dc: $f8 $81
	ld   de, $c58b                                   ; $46de: $11 $8b $c5
	ld   d, a                                        ; $46e1: $57
	call $1df2                                       ; $46e2: $cd $f2 $1d
	rst  $38                                         ; $46e5: $ff
	rst  $38                                         ; $46e6: $ff
	call nz, $1131                                   ; $46e7: $c4 $31 $11
	inc  e                                           ; $46ea: $1c
	ld   [hl], e                                     ; $46eb: $73
	rst  $38                                         ; $46ec: $ff
	ld   l, h                                        ; $46ed: $6c
	ld   d, c                                        ; $46ee: $51
	ld   hl, sp+$5f                                  ; $46ef: $f8 $5f
	rst  $38                                         ; $46f1: $ff
	ld   h, [hl]                                     ; $46f2: $66
	sub  c                                           ; $46f3: $91
	ld   de, $721d                                   ; $46f4: $11 $1d $72
	add  hl, hl                                      ; $46f7: $29
	rst  $38                                         ; $46f8: $ff
	ld   d, [hl]                                     ; $46f9: $56
	ld   h, c                                        ; $46fa: $61
	rst  $38                                         ; $46fb: $ff
	rst  $38                                         ; $46fc: $ff
	db   $fc                                         ; $46fd: $fc
	pop  bc                                          ; $46fe: $c1
	ld   de, $9f12                                   ; $46ff: $11 $12 $9f
	ld   d, a                                        ; $4702: $57
	halt                                             ; $4703: $76
	rst  $30                                         ; $4704: $f7
	ld   h, $5f                                      ; $4705: $26 $5f
	rst  $38                                         ; $4707: $ff
	ld   h, c                                        ; $4708: $61
	add  c                                           ; $4709: $81
	ld   d, c                                        ; $470a: $51
	ld   de, $ff66                                   ; $470b: $11 $66 $ff
	inc  d                                           ; $470e: $14
	ld   d, c                                        ; $470f: $51
	xor  c                                           ; $4710: $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4711: $cf
	rst  $38                                         ; $4712: $ff
	push af                                          ; $4713: $f5
	ld   de, $ab11                                   ; $4714: $11 $11 $ab
	ld   c, [hl]                                     ; $4717: $4e
	add  hl, sp                                      ; $4718: $39
	ldh  a, [c]                                      ; $4719: $f2
	ld   c, a                                        ; $471a: $4f
	add  h                                           ; $471b: $84
	rst  $38                                         ; $471c: $ff
	rst  $38                                         ; $471d: $ff

jr_0c3_471e:
	ld   de, $1161                                   ; $471e: $11 $61 $11
	cpl                                              ; $4721: $2f
	rst  $28                                         ; $4722: $ef
	xor  b                                           ; $4723: $a8
	and  c                                           ; $4724: $a1
	ld   c, h                                        ; $4725: $4c
	adc  $ff                                         ; $4726: $ce $ff
	adc  $c1                                         ; $4728: $ce $c1
	ld   de, $ff1d                                   ; $472a: $11 $1d $ff
	or   a                                           ; $472d: $b7
	ld   h, e                                        ; $472e: $63
	jr   z, jr_0c3_471e                              ; $472f: $28 $ed

	rst  $38                                         ; $4731: $ff
	ld   a, c                                        ; $4732: $79
	pop  bc                                          ; $4733: $c1
	ld   h, c                                        ; $4734: $61
	ld   [de], a                                     ; $4735: $12
	ld   e, c                                        ; $4736: $59
	db   $fd                                         ; $4737: $fd
	xor  h                                           ; $4738: $ac
	ld   [de], a                                     ; $4739: $12
	ld   hl, sp-$01                                  ; $473a: $f8 $ff
	rst  $38                                         ; $473c: $ff
	scf                                              ; $473d: $37
	inc  d                                           ; $473e: $14
	ld   de, $6ffe                                   ; $473f: $11 $fe $6f
	sbc  b                                           ; $4742: $98
	jp   nc, $bc65                                   ; $4743: $d2 $65 $bc

	rst  $38                                         ; $4746: $ff
	call z, $1111                                    ; $4747: $cc $11 $11
	inc  d                                           ; $474a: $14
	rst  $38                                         ; $474b: $ff
	rst  $38                                         ; $474c: $ff
	sub  c                                           ; $474d: $91
	jr   c, jr_0c3_47af                              ; $474e: $38 $5f

	rst  $38                                         ; $4750: $ff
	di                                               ; $4751: $f3
	inc  d                                           ; $4752: $14
	ld   de, $ff16                                   ; $4753: $11 $16 $ff
	cp   d                                           ; $4756: $ba
	pop  de                                          ; $4757: $d1
	rla                                              ; $4758: $17
	ld   e, [hl]                                     ; $4759: $5e
	rst  $38                                         ; $475a: $ff
	db   $db                                         ; $475b: $db
	ld   de, $2c51                                   ; $475c: $11 $51 $2c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $475f: $cf
	ld   e, e                                        ; $4760: $5b
	ld   de, $fea6                                   ; $4761: $11 $a6 $fe
	rst  JumpTable                                         ; $4764: $df
	rst  $30                                         ; $4765: $f7
	add  c                                           ; $4766: $81
	ld   de, $ff1f                                   ; $4767: $11 $1f $ff
	sbc  c                                           ; $476a: $99
	inc  [hl]                                        ; $476b: $34
	and  [hl]                                        ; $476c: $a6
	db   $db                                         ; $476d: $db
	cp   $ff                                         ; $476e: $fe $ff
	add  c                                           ; $4770: $81
	ld   de, $ff1f                                   ; $4771: $11 $1f $ff
	ld   [hl-], a                                    ; $4774: $32

Call_0c3_4775:
	add  hl, hl                                      ; $4775: $29
	ldh  a, [c]                                      ; $4776: $f2
	ccf                                              ; $4777: $3f
	cp   $e7                                         ; $4778: $fe $e7
	ld   de, $f414                                   ; $477a: $11 $14 $f4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $477d: $cf
	cp   $51                                         ; $477e: $fe $51
	ld   b, d                                        ; $4780: $42
	adc  a                                           ; $4781: $8f
	db   $fd                                         ; $4782: $fd
	pop  hl                                          ; $4783: $e1
	and  c                                           ; $4784: $a1
	dec  de                                          ; $4785: $1b
	ld   c, [hl]                                     ; $4786: $4e
	ld   hl, sp-$06                                  ; $4787: $f8 $fa
	ld   de, $ff1f                                   ; $4789: $11 $1f $ff
	ld   sp, hl                                      ; $478c: $f9
	ld   b, c                                        ; $478d: $41
	ld   de, $ff1f                                   ; $478e: $11 $1f $ff
	di                                               ; $4791: $f3
	dec  de                                          ; $4792: $1b
	push bc                                          ; $4793: $c5
	or   $ff                                         ; $4794: $f6 $ff
	add  hl, de                                      ; $4796: $19
	ld   de, $fb11                                   ; $4797: $11 $11 $fb
	db   $fc                                         ; $479a: $fc
	rst  $38                                         ; $479b: $ff
	ld   b, h                                        ; $479c: $44
	ld   a, [de]                                     ; $479d: $1a
	rst  $38                                         ; $479e: $ff
	rst  $38                                         ; $479f: $ff
	ld   de, $bc11                                   ; $47a0: $11 $11 $bc
	rst  $38                                         ; $47a3: $ff
	ld   b, c                                        ; $47a4: $41
	rst  $38                                         ; $47a5: $ff
	sbc  e                                           ; $47a6: $9b
	sub  e                                           ; $47a7: $93
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47a8: $cf
	ld   a, [$1811]                                  ; $47a9: $fa $11 $18
	rst  $28                                         ; $47ac: $ef
	push af                                          ; $47ad: $f5
	or   l                                           ; $47ae: $b5

jr_0c3_47af:
	ld   e, l                                        ; $47af: $5d
	xor  a                                           ; $47b0: $af
	cp   e                                           ; $47b1: $bb
	ld   hl, sp-$7f                                  ; $47b2: $f8 $81
	ld   de, $f93b                                   ; $47b4: $11 $3b $f9
	db   $ec                                         ; $47b7: $ec
	xor  a                                           ; $47b8: $af
	inc  hl                                          ; $47b9: $23
	ld   a, [$51ef]                                  ; $47ba: $fa $ef $51
	ld   de, $e64f                                   ; $47bd: $11 $4f $e6
	adc  a                                           ; $47c0: $8f
	or   $19                                         ; $47c1: $f6 $19
	cp   c                                           ; $47c3: $b9
	rst  $38                                         ; $47c4: $ff
	di                                               ; $47c5: $f3
	ld   de, $ff17                                   ; $47c6: $11 $17 $ff
	or   h                                           ; $47c9: $b4
	jp   hl                                          ; $47ca: $e9


	cp   a                                           ; $47cb: $bf
	inc  e                                           ; $47cc: $1c
	or   $f5                                         ; $47cd: $f6 $f5
	rla                                              ; $47cf: $17
	ld   de, $aff8                                   ; $47d0: $11 $f8 $af
	sbc  d                                           ; $47d3: $9a
	jp   nc, Jump_0c3_7faa                           ; $47d4: $d2 $aa $7f

	ret  c                                           ; $47d7: $d8

	ld   b, c                                        ; $47d8: $41
	ld   de, $fbdd                                   ; $47d9: $11 $dd $fb
	dec  l                                           ; $47dc: $2d
	pop  hl                                          ; $47dd: $e1
	rst  $28                                         ; $47de: $ef
	ld   e, a                                        ; $47df: $5f
	add  c                                           ; $47e0: $81
	pop  af                                          ; $47e1: $f1
	ld   de, $6b1b                                   ; $47e2: $11 $1b $6b
	ld   a, [$65db]                                  ; $47e5: $fa $db $65
	db   $db                                         ; $47e8: $db
	xor  $62                                         ; $47e9: $ee $62
	ld   de, $f13e                                   ; $47eb: $11 $3e $f1
	sbc  c                                           ; $47ee: $99
	ld   e, a                                        ; $47ef: $5f
	ld   [$f934], a                                  ; $47f0: $ea $34 $f9
	ldh  a, [c]                                      ; $47f3: $f2
	add  hl, de                                      ; $47f4: $19
	ld   de, $9fec                                   ; $47f5: $11 $ec $9f
	ld   a, c                                        ; $47f8: $79
	pop  hl                                          ; $47f9: $e1
	ld   a, a                                        ; $47fa: $7f
	or   l                                           ; $47fb: $b5
	or   c                                           ; $47fc: $b1
	inc  sp                                          ; $47fd: $33
	ld   a, [de]                                     ; $47fe: $1a
	res  1, d                                        ; $47ff: $cb $8a
	ld   l, h                                        ; $4801: $6c
	and  h                                           ; $4802: $a4
	cp   d                                           ; $4803: $ba
	db   $fd                                         ; $4804: $fd
	ld   [hl], e                                     ; $4805: $73
	ld   de, $af13                                   ; $4806: $11 $13 $af
	sbc  c                                           ; $4809: $99
	dec  d                                           ; $480a: $15
	cp   $f5                                         ; $480b: $fe $f5
	ld   c, c                                        ; $480d: $49
	cp   c                                           ; $480e: $b9
	pop  de                                          ; $480f: $d1
	ld   de, $c98f                                   ; $4810: $11 $8f $c9
	add  hl, hl                                      ; $4813: $29
	sbc  a                                           ; $4814: $9f
	pop  hl                                          ; $4815: $e1
	or   l                                           ; $4816: $b5
	rst  $38                                         ; $4817: $ff
	ld   de, $fe11                                   ; $4818: $11 $11 $fe
	add  $19                                         ; $481b: $c6 $19
	rst  $38                                         ; $481d: $ff
	ld   [hl], c                                     ; $481e: $71
	ld   a, a                                        ; $481f: $7f
	db   $fc                                         ; $4820: $fc
	ld   b, c                                        ; $4821: $41
	inc  de                                          ; $4822: $13
	call z, $2fb1                                    ; $4823: $cc $b1 $2f
	res  6, c                                        ; $4826: $cb $b1
	ld   a, c                                        ; $4828: $79
	rst  JumpTable                                         ; $4829: $df
	ld   [hl], $11                                   ; $482a: $36 $11
	or   l                                           ; $482c: $b5
	cp   b                                           ; $482d: $b8
	ld   l, c                                        ; $482e: $69
	ld   a, c                                        ; $482f: $79
	ld   a, [hl]                                     ; $4830: $7e
	cp   h                                           ; $4831: $bc
	pop  af                                          ; $4832: $f1
	ld   e, e                                        ; $4833: $5b
	jr   c, jr_0c3_4867                              ; $4834: $38 $31

	ei                                               ; $4836: $fb
	xor  c                                           ; $4837: $a9
	ld   e, b                                        ; $4838: $58
	cp   h                                           ; $4839: $bc
	ld   d, [hl]                                     ; $483a: $56
	xor  h                                           ; $483b: $ac
	sub  $12                                         ; $483c: $d6 $12
	jr   z, @-$25                                    ; $483e: $28 $d9

	sub  [hl]                                        ; $4840: $96
	xor  e                                           ; $4841: $ab
	add  [hl]                                        ; $4842: $86
	sbc  d                                           ; $4843: $9a
	ld   a, e                                        ; $4844: $7b
	ld   b, e                                        ; $4845: $43
	sub  a                                           ; $4846: $97
	jp   c, Jump_0c3_6735                            ; $4847: $da $35 $67

	db   $fc                                         ; $484a: $fc
	scf                                              ; $484b: $37
	add  hl, de                                      ; $484c: $19

jr_0c3_484d:
	or   $aa                                         ; $484d: $f6 $aa
	ld   d, l                                        ; $484f: $55
	ld   d, h                                        ; $4850: $54
	cp   l                                           ; $4851: $bd
	sbc  d                                           ; $4852: $9a
	sub  l                                           ; $4853: $95
	or   l                                           ; $4854: $b5
	ld   l, c                                        ; $4855: $69
	sbc  e                                           ; $4856: $9b
	ld   h, [hl]                                     ; $4857: $66
	ld   c, b                                        ; $4858: $48
	add  a                                           ; $4859: $87
	ret  z                                           ; $485a: $c8

	sub  [hl]                                        ; $485b: $96
	daa                                              ; $485c: $27
	sbc  e                                           ; $485d: $9b
	ret  c                                           ; $485e: $d8

	ld   b, [hl]                                     ; $485f: $46
	dec  sp                                          ; $4860: $3b

jr_0c3_4861:
	push hl                                          ; $4861: $e5
	or   [hl]                                        ; $4862: $b6
	ld   e, e                                        ; $4863: $5b
	ld   e, e                                        ; $4864: $5b
	rst  $10                                         ; $4865: $d7
	ld   b, [hl]                                     ; $4866: $46

jr_0c3_4867:
	jr   jr_0c3_4861                                 ; $4867: $18 $f8

	ret                                              ; $4869: $c9


	ld   d, $a6                                      ; $486a: $16 $a6
	db   $db                                         ; $486c: $db
	ld   c, h                                        ; $486d: $4c
	ld   d, d                                        ; $486e: $52
	add  [hl]                                        ; $486f: $86
	call Call_0c3_4775                               ; $4870: $cd $75 $47
	sbc  l                                           ; $4873: $9d
	sub  [hl]                                        ; $4874: $96
	ld   [hl], e                                     ; $4875: $73
	sbc  h                                           ; $4876: $9c
	adc  e                                           ; $4877: $8b
	ld   [hl], h                                     ; $4878: $74
	ld   a, e                                        ; $4879: $7b
	sbc  l                                           ; $487a: $9d
	and  d                                           ; $487b: $a2
	ld   d, e                                        ; $487c: $53
	call z, $35b9                                    ; $487d: $cc $b9 $35
	jr   z, jr_0c3_484d                              ; $4880: $28 $cb

	rst  ToBoot                                         ; $4882: $c7
	ld   b, [hl]                                     ; $4883: $46
	ld   a, d                                        ; $4884: $7a
	and  a                                           ; $4885: $a7
	ld   d, a                                        ; $4886: $57
	or   [hl]                                        ; $4887: $b6
	or   a                                           ; $4888: $b7
	ld   c, c                                        ; $4889: $49
	ld   c, e                                        ; $488a: $4b
	or   a                                           ; $488b: $b7
	cp   b                                           ; $488c: $b8
	ld   e, c                                        ; $488d: $59
	ld   h, a                                        ; $488e: $67
	or   [hl]                                        ; $488f: $b6
	ld   a, c                                        ; $4890: $79
	adc  d                                           ; $4891: $8a
	or   [hl]                                        ; $4892: $b6
	ld   d, l                                        ; $4893: $55
	dec  sp                                          ; $4894: $3b
	jp   z, $8aa4                                    ; $4895: $ca $a4 $8a

	sbc  e                                           ; $4898: $9b
	ld   [hl], l                                     ; $4899: $75
	sbc  c                                           ; $489a: $99
	cp   h                                           ; $489b: $bc
	ld   h, l                                        ; $489c: $65
	ld   [hl], l                                     ; $489d: $75
	sub  a                                           ; $489e: $97
	ld   a, e                                        ; $489f: $7b
	sbc  b                                           ; $48a0: $98
	add  l                                           ; $48a1: $85
	ld   a, c                                        ; $48a2: $79
	sbc  c                                           ; $48a3: $99
	sub  a                                           ; $48a4: $97
	sbc  b                                           ; $48a5: $98
	ld   [hl], a                                     ; $48a6: $77
	ld   d, [hl]                                     ; $48a7: $56
	xor  d                                           ; $48a8: $aa
	xor  c                                           ; $48a9: $a9
	ld   b, a                                        ; $48aa: $47
	add  a                                           ; $48ab: $87
	ret                                              ; $48ac: $c9


	halt                                             ; $48ad: $76
	ld   l, b                                        ; $48ae: $68
	sbc  d                                           ; $48af: $9a
	ld   h, [hl]                                     ; $48b0: $66
	ld   a, c                                        ; $48b1: $79
	sbc  b                                           ; $48b2: $98
	sbc  b                                           ; $48b3: $98
	ld   a, b                                        ; $48b4: $78
	adc  c                                           ; $48b5: $89
	add  a                                           ; $48b6: $87
	ld   a, b                                        ; $48b7: $78
	sbc  b                                           ; $48b8: $98
	ld   h, a                                        ; $48b9: $67
	adc  c                                           ; $48ba: $89
	sbc  b                                           ; $48bb: $98
	ld   h, a                                        ; $48bc: $67
	adc  d                                           ; $48bd: $8a
	sbc  c                                           ; $48be: $99
	add  a                                           ; $48bf: $87
	sbc  b                                           ; $48c0: $98
	sbc  c                                           ; $48c1: $99
	halt                                             ; $48c2: $76
	sbc  b                                           ; $48c3: $98
	adc  c                                           ; $48c4: $89
	ld   h, a                                        ; $48c5: $67
	adc  b                                           ; $48c6: $88
	xor  c                                           ; $48c7: $a9
	ld   [hl], a                                     ; $48c8: $77
	add  a                                           ; $48c9: $87
	sbc  b                                           ; $48ca: $98
	ld   [hl], a                                     ; $48cb: $77
	adc  c                                           ; $48cc: $89
	and  a                                           ; $48cd: $a7
	ld   l, b                                        ; $48ce: $68
	ld   a, c                                        ; $48cf: $79
	sbc  c                                           ; $48d0: $99
	sbc  b                                           ; $48d1: $98
	ld   a, b                                        ; $48d2: $78
	ld   [hl], a                                     ; $48d3: $77
	ld   [hl], a                                     ; $48d4: $77
	sbc  b                                           ; $48d5: $98
	sbc  c                                           ; $48d6: $99
	add  a                                           ; $48d7: $87
	ld   [hl], a                                     ; $48d8: $77
	adc  d                                           ; $48d9: $8a
	sbc  c                                           ; $48da: $99
	ld   a, b                                        ; $48db: $78
	adc  b                                           ; $48dc: $88
	add  a                                           ; $48dd: $87
	ld   [hl], a                                     ; $48de: $77
	ld   a, c                                        ; $48df: $79
	sbc  b                                           ; $48e0: $98
	halt                                             ; $48e1: $76
	adc  c                                           ; $48e2: $89
	sbc  c                                           ; $48e3: $99
	adc  b                                           ; $48e4: $88
	adc  b                                           ; $48e5: $88
	add  a                                           ; $48e6: $87
	adc  c                                           ; $48e7: $89
	adc  c                                           ; $48e8: $89
	add  a                                           ; $48e9: $87
	adc  b                                           ; $48ea: $88
	ld   a, c                                        ; $48eb: $79
	sbc  b                                           ; $48ec: $98
	sbc  b                                           ; $48ed: $98
	sbc  c                                           ; $48ee: $99
	ld   a, b                                        ; $48ef: $78
	sbc  b                                           ; $48f0: $98
	sub  a                                           ; $48f1: $97
	ld   a, c                                        ; $48f2: $79
	ld   [hl], a                                     ; $48f3: $77
	adc  b                                           ; $48f4: $88
	sbc  b                                           ; $48f5: $98
	adc  b                                           ; $48f6: $88
	adc  b                                           ; $48f7: $88
	sub  a                                           ; $48f8: $97
	adc  b                                           ; $48f9: $88
	adc  c                                           ; $48fa: $89
	sbc  b                                           ; $48fb: $98
	adc  b                                           ; $48fc: $88
	sbc  c                                           ; $48fd: $99
	add  a                                           ; $48fe: $87
	adc  c                                           ; $48ff: $89
	sbc  b                                           ; $4900: $98
	add  a                                           ; $4901: $87
	ld   a, b                                        ; $4902: $78
	sbc  c                                           ; $4903: $99
	add  a                                           ; $4904: $87
	ld   a, b                                        ; $4905: $78
	adc  b                                           ; $4906: $88
	sub  a                                           ; $4907: $97
	ld   a, c                                        ; $4908: $79
	adc  c                                           ; $4909: $89
	add  a                                           ; $490a: $87
	adc  b                                           ; $490b: $88
	adc  b                                           ; $490c: $88
	ld   a, b                                        ; $490d: $78
	adc  c                                           ; $490e: $89
	sbc  c                                           ; $490f: $99
	ld   [hl], a                                     ; $4910: $77
	ld   a, b                                        ; $4911: $78
	sbc  b                                           ; $4912: $98
	add  a                                           ; $4913: $87
	ld   a, b                                        ; $4914: $78
	sbc  b                                           ; $4915: $98
	add  a                                           ; $4916: $87
	adc  b                                           ; $4917: $88
	sbc  c                                           ; $4918: $99
	adc  b                                           ; $4919: $88
	adc  b                                           ; $491a: $88
	adc  b                                           ; $491b: $88
	adc  b                                           ; $491c: $88
	adc  b                                           ; $491d: $88
	adc  b                                           ; $491e: $88
	adc  b                                           ; $491f: $88
	adc  b                                           ; $4920: $88
	adc  b                                           ; $4921: $88
	adc  b                                           ; $4922: $88
	adc  b                                           ; $4923: $88
	sbc  b                                           ; $4924: $98
	adc  b                                           ; $4925: $88
	adc  c                                           ; $4926: $89
	sbc  b                                           ; $4927: $98
	adc  b                                           ; $4928: $88
	adc  b                                           ; $4929: $88
	adc  c                                           ; $492a: $89
	adc  b                                           ; $492b: $88
	adc  b                                           ; $492c: $88
	adc  b                                           ; $492d: $88
	adc  b                                           ; $492e: $88
	adc  b                                           ; $492f: $88
	adc  b                                           ; $4930: $88
	adc  b                                           ; $4931: $88
	adc  b                                           ; $4932: $88
	adc  b                                           ; $4933: $88
	adc  b                                           ; $4934: $88
	adc  b                                           ; $4935: $88
	adc  b                                           ; $4936: $88
	adc  b                                           ; $4937: $88
	adc  b                                           ; $4938: $88
	adc  b                                           ; $4939: $88
	adc  b                                           ; $493a: $88
	adc  b                                           ; $493b: $88
	adc  b                                           ; $493c: $88
	adc  b                                           ; $493d: $88
	adc  b                                           ; $493e: $88
	adc  b                                           ; $493f: $88
	adc  b                                           ; $4940: $88
	adc  b                                           ; $4941: $88
	adc  b                                           ; $4942: $88
	adc  b                                           ; $4943: $88
	ld   de, $1111                                   ; $4944: $11 $11 $11
	ld   de, $1111                                   ; $4947: $11 $11 $11
	ld   de, $1111                                   ; $494a: $11 $11 $11
	ld   de, $1111                                   ; $494d: $11 $11 $11
	ld   de, $1111                                   ; $4950: $11 $11 $11
	ld   de, $1111                                   ; $4953: $11 $11 $11
	ld   de, $1111                                   ; $4956: $11 $11 $11
	ld   de, $1111                                   ; $4959: $11 $11 $11
	ld   de, $1111                                   ; $495c: $11 $11 $11
	ld   de, $1111                                   ; $495f: $11 $11 $11
	nop                                              ; $4962: $00
	ld   c, b                                        ; $4963: $48
	ld   de, $1111                                   ; $4964: $11 $11 $11
	ld   de, $1111                                   ; $4967: $11 $11 $11
	ld   de, $1111                                   ; $496a: $11 $11 $11
	ld   de, $5413                                   ; $496d: $11 $13 $54
	ld   d, h                                        ; $4970: $54
	ld   d, h                                        ; $4971: $54
	ld   b, c                                        ; $4972: $41
	rra                                              ; $4973: $1f
	rst  $38                                         ; $4974: $ff
	pop  af                                          ; $4975: $f1
	ld   de, $1111                                   ; $4976: $11 $11 $11
	and  c                                           ; $4979: $a1
	ld   de, $dd1c                                   ; $497a: $11 $1c $dd
	cp   h                                           ; $497d: $bc
	db   $dd                                         ; $497e: $dd
	or   c                                           ; $497f: $b1
	ld   de, $1111                                   ; $4980: $11 $11 $11
	ld   de, $1111                                   ; $4983: $11 $11 $11
	ld   de, $1111                                   ; $4986: $11 $11 $11
	ld   de, $1111                                   ; $4989: $11 $11 $11
	ld   de, $5411                                   ; $498c: $11 $11 $54
	ld   b, h                                        ; $498f: $44
	sub  c                                           ; $4990: $91
	ld   de, $5454                                   ; $4991: $11 $54 $54
	ld   h, a                                        ; $4994: $67
	ld   [hl], d                                     ; $4995: $72
	ld   de, $1111                                   ; $4996: $11 $11 $11
	ld   de, $1112                                   ; $4999: $11 $12 $11
	ld   [de], a                                     ; $499c: $12
	ld   de, $1111                                   ; $499d: $11 $11 $11
	ld   h, [hl]                                     ; $49a0: $66
	halt                                             ; $49a1: $76
	ld   [hl], c                                     ; $49a2: $71
	ld   de, $8988                                   ; $49a3: $11 $88 $89
	sbc  e                                           ; $49a6: $9b
	xor  $ca                                         ; $49a7: $ee $ca
	halt                                             ; $49a9: $76
	ld   d, [hl]                                     ; $49aa: $56
	ld   [hl], a                                     ; $49ab: $77
	add  [hl]                                        ; $49ac: $86
	halt                                             ; $49ad: $76
	ld   h, [hl]                                     ; $49ae: $66
	ld   h, a                                        ; $49af: $67
	adc  d                                           ; $49b0: $8a
	xor  e                                           ; $49b1: $ab
	cp   d                                           ; $49b2: $ba
	sbc  c                                           ; $49b3: $99
	cp   d                                           ; $49b4: $ba
	cp   c                                           ; $49b5: $b9
	sbc  c                                           ; $49b6: $99
	adc  b                                           ; $49b7: $88
	ld   h, [hl]                                     ; $49b8: $66
	ld   h, a                                        ; $49b9: $67
	ld   [hl], a                                     ; $49ba: $77
	halt                                             ; $49bb: $76
	ld   h, [hl]                                     ; $49bc: $66
	ld   [hl], a                                     ; $49bd: $77
	adc  b                                           ; $49be: $88
	adc  b                                           ; $49bf: $88
	ld   [hl], a                                     ; $49c0: $77
	ld   h, [hl]                                     ; $49c1: $66
	ld   h, [hl]                                     ; $49c2: $66
	ld   [hl], a                                     ; $49c3: $77
	ld   [hl], a                                     ; $49c4: $77
	ld   h, a                                        ; $49c5: $67
	adc  c                                           ; $49c6: $89
	add  a                                           ; $49c7: $87
	ld   h, [hl]                                     ; $49c8: $66
	ld   [hl], a                                     ; $49c9: $77
	ld   a, b                                        ; $49ca: $78
	ld   a, b                                        ; $49cb: $78
	ld   [hl], a                                     ; $49cc: $77
	ld   [hl], a                                     ; $49cd: $77
	adc  b                                           ; $49ce: $88
	add  a                                           ; $49cf: $87
	add  a                                           ; $49d0: $87
	ld   h, [hl]                                     ; $49d1: $66
	ld   h, [hl]                                     ; $49d2: $66
	ld   h, a                                        ; $49d3: $67
	add  a                                           ; $49d4: $87
	ld   h, [hl]                                     ; $49d5: $66
	ld   h, [hl]                                     ; $49d6: $66
	ld   [hl], a                                     ; $49d7: $77
	ld   [hl], a                                     ; $49d8: $77
	ld   [hl], a                                     ; $49d9: $77
	halt                                             ; $49da: $76
	ld   d, l                                        ; $49db: $55
	ld   l, b                                        ; $49dc: $68
	xor  d                                           ; $49dd: $aa
	sbc  b                                           ; $49de: $98
	ld   h, [hl]                                     ; $49df: $66
	ld   a, b                                        ; $49e0: $78
	xor  d                                           ; $49e1: $aa
	cp   c                                           ; $49e2: $b9
	halt                                             ; $49e3: $76
	ld   d, l                                        ; $49e4: $55
	ld   l, b                                        ; $49e5: $68
	cp   e                                           ; $49e6: $bb
	cp   c                                           ; $49e7: $b9
	ld   h, l                                        ; $49e8: $65
	ld   b, l                                        ; $49e9: $45
	ld   h, a                                        ; $49ea: $67
	ld   a, b                                        ; $49eb: $78
	sbc  b                                           ; $49ec: $98
	halt                                             ; $49ed: $76
	ld   l, b                                        ; $49ee: $68
	adc  c                                           ; $49ef: $89
	add  a                                           ; $49f0: $87
	adc  b                                           ; $49f1: $88
	sbc  c                                           ; $49f2: $99
	ld   [hl], a                                     ; $49f3: $77
	adc  d                                           ; $49f4: $8a
	sbc  c                                           ; $49f5: $99
	xor  c                                           ; $49f6: $a9
	xor  b                                           ; $49f7: $a8
	add  a                                           ; $49f8: $87
	adc  b                                           ; $49f9: $88
	add  a                                           ; $49fa: $87
	ld   h, [hl]                                     ; $49fb: $66
	ld   [hl], a                                     ; $49fc: $77
	add  a                                           ; $49fd: $87
	ld   h, [hl]                                     ; $49fe: $66
	ld   h, a                                        ; $49ff: $67
	sbc  d                                           ; $4a00: $9a
	cp   d                                           ; $4a01: $ba
	sbc  c                                           ; $4a02: $99
	ld   a, c                                        ; $4a03: $79
	ld   [hl], a                                     ; $4a04: $77
	adc  c                                           ; $4a05: $89
	adc  b                                           ; $4a06: $88
	ld   [hl], a                                     ; $4a07: $77
	adc  b                                           ; $4a08: $88
	sbc  b                                           ; $4a09: $98
	xor  d                                           ; $4a0a: $aa
	sub  a                                           ; $4a0b: $97
	ld   h, [hl]                                     ; $4a0c: $66
	ld   d, [hl]                                     ; $4a0d: $56
	sbc  e                                           ; $4a0e: $9b
	res  3, b                                        ; $4a0f: $cb $98
	halt                                             ; $4a11: $76
	ld   a, c                                        ; $4a12: $79
	xor  d                                           ; $4a13: $aa
	xor  c                                           ; $4a14: $a9
	halt                                             ; $4a15: $76
	ld   l, b                                        ; $4a16: $68
	adc  c                                           ; $4a17: $89
	sbc  c                                           ; $4a18: $99
	xor  c                                           ; $4a19: $a9
	xor  e                                           ; $4a1a: $ab
	cp   e                                           ; $4a1b: $bb
	xor  d                                           ; $4a1c: $aa
	sbc  b                                           ; $4a1d: $98
	ld   h, [hl]                                     ; $4a1e: $66
	ld   h, l                                        ; $4a1f: $65
	ld   b, l                                        ; $4a20: $45
	ld   a, d                                        ; $4a21: $7a
	sbc  b                                           ; $4a22: $98
	add  a                                           ; $4a23: $87
	ld   h, a                                        ; $4a24: $67
	sbc  d                                           ; $4a25: $9a
	sbc  d                                           ; $4a26: $9a
	call c, Call_0c3_76ba                            ; $4a27: $dc $ba $76
	ld   d, l                                        ; $4a2a: $55
	ld   h, [hl]                                     ; $4a2b: $66
	adc  d                                           ; $4a2c: $8a
	jp   z, Jump_0c3_6699                            ; $4a2d: $ca $99 $66

	ld   a, e                                        ; $4a30: $7b
	cp   h                                           ; $4a31: $bc
	and  [hl]                                        ; $4a32: $a6
	ld   [hl], e                                     ; $4a33: $73
	ld   [hl+], a                                    ; $4a34: $22
	scf                                              ; $4a35: $37
	xor  h                                           ; $4a36: $ac
	xor  d                                           ; $4a37: $aa
	cp   c                                           ; $4a38: $b9
	cp   e                                           ; $4a39: $bb
	cp   c                                           ; $4a3a: $b9
	adc  b                                           ; $4a3b: $88
	adc  c                                           ; $4a3c: $89
	sub  a                                           ; $4a3d: $97
	ld   h, h                                        ; $4a3e: $64
	ld   b, e                                        ; $4a3f: $43
	ld   l, c                                        ; $4a40: $69
	xor  [hl]                                        ; $4a41: $ae
	db   $dd                                         ; $4a42: $dd
	sbc  b                                           ; $4a43: $98
	ld   a, b                                        ; $4a44: $78
	sbc  c                                           ; $4a45: $99
	cp   e                                           ; $4a46: $bb
	jp   c, $2464                                    ; $4a47: $da $64 $24

	ld   [hl], $bc                                   ; $4a4a: $36 $bc
	call c, Call_0c3_5675                            ; $4a4c: $dc $75 $56
	adc  l                                           ; $4a4f: $8d
	rst  $38                                         ; $4a50: $ff
	db   $eb                                         ; $4a51: $eb
	and  [hl]                                        ; $4a52: $a6
	ld   sp, $ac27                                   ; $4a53: $31 $27 $ac
	ld   a, [$1142]                                  ; $4a56: $fa $42 $11
	ld   l, d                                        ; $4a59: $6a
	rst  $28                                         ; $4a5a: $ef
	jp   z, Jump_0c3_54a8                            ; $4a5b: $ca $a8 $54

	sbc  c                                           ; $4a5e: $99
	adc  c                                           ; $4a5f: $89
	ld   [hl], a                                     ; $4a60: $77
	ld   h, e                                        ; $4a61: $63
	ld   d, a                                        ; $4a62: $57
	ld   b, a                                        ; $4a63: $47
	xor  c                                           ; $4a64: $a9
	add  [hl]                                        ; $4a65: $86
	ld   d, [hl]                                     ; $4a66: $56
	adc  d                                           ; $4a67: $8a
	adc  b                                           ; $4a68: $88
	or   e                                           ; $4a69: $b3
	ld   [hl-], a                                    ; $4a6a: $32
	dec  d                                           ; $4a6b: $15
	add  [hl]                                        ; $4a6c: $86
	xor  [hl]                                        ; $4a6d: $ae
	xor  e                                           ; $4a6e: $ab
	and  a                                           ; $4a6f: $a7
	ld   b, e                                        ; $4a70: $43
	dec  [hl]                                        ; $4a71: $35
	sbc  e                                           ; $4a72: $9b
	call c, $efda                                    ; $4a73: $dc $da $ef
	rst  $38                                         ; $4a76: $ff
	db   $fd                                         ; $4a77: $fd
	db   $ec                                         ; $4a78: $ec
	cp   [hl]                                        ; $4a79: $be
	jp   c, $98ca                                    ; $4a7a: $da $ca $98

	adc  b                                           ; $4a7d: $88
	ld   h, a                                        ; $4a7e: $67
	adc  c                                           ; $4a7f: $89
	xor  $ec                                         ; $4a80: $ee $ec
	and  d                                           ; $4a82: $a2
	ld   de, $1111                                   ; $4a83: $11 $11 $11
	ld   de, $1111                                   ; $4a86: $11 $11 $11
	ld   de, $1111                                   ; $4a89: $11 $11 $11
	inc  de                                          ; $4a8c: $13
	ld   e, b                                        ; $4a8d: $58
	rst  $38                                         ; $4a8e: $ff
	rst  $38                                         ; $4a8f: $ff
	rst  $38                                         ; $4a90: $ff
	rst  $38                                         ; $4a91: $ff
	rst  $38                                         ; $4a92: $ff
	rst  $38                                         ; $4a93: $ff
	rst  $38                                         ; $4a94: $ff
	res  7, a                                        ; $4a95: $cb $bf
	rst  JumpTable                                         ; $4a97: $df
	rst  $38                                         ; $4a98: $ff
	db   $fc                                         ; $4a99: $fc
	db   $eb                                         ; $4a9a: $eb
	call c, Call_0c3_51aa                            ; $4a9b: $dc $aa $51
	ld   de, $1111                                   ; $4a9e: $11 $11 $11
	ld   de, $1111                                   ; $4aa1: $11 $11 $11
	ld   de, $1311                                   ; $4aa4: $11 $11 $13
	ld   d, [hl]                                     ; $4aa7: $56
	dec  [hl]                                        ; $4aa8: $35
	xor  $ff                                         ; $4aa9: $ee $ff
	rst  $38                                         ; $4aab: $ff
	rst  $38                                         ; $4aac: $ff
	rst  $38                                         ; $4aad: $ff
	rst  $38                                         ; $4aae: $ff
	rst  $38                                         ; $4aaf: $ff
	rst  $38                                         ; $4ab0: $ff
	rst  $38                                         ; $4ab1: $ff
	rst  $38                                         ; $4ab2: $ff
	rst  $38                                         ; $4ab3: $ff
	xor  d                                           ; $4ab4: $aa
	sub  l                                           ; $4ab5: $95
	ld   a, b                                        ; $4ab6: $78
	sbc  b                                           ; $4ab7: $98
	ld   d, c                                        ; $4ab8: $51
	ld   de, $1111                                   ; $4ab9: $11 $11 $11
	ld   de, $1111                                   ; $4abc: $11 $11 $11
	ld   de, $1311                                   ; $4abf: $11 $11 $13
	ld   de, $1711                                   ; $4ac2: $11 $11 $17
	rst  $38                                         ; $4ac5: $ff
	rst  $38                                         ; $4ac6: $ff
	rst  $38                                         ; $4ac7: $ff
	rst  $38                                         ; $4ac8: $ff
	rst  $38                                         ; $4ac9: $ff
	rst  $38                                         ; $4aca: $ff
	rst  $38                                         ; $4acb: $ff
	rst  $38                                         ; $4acc: $ff
	rst  $38                                         ; $4acd: $ff
	db   $fd                                         ; $4ace: $fd
	cp   d                                           ; $4acf: $ba
	ld   d, l                                        ; $4ad0: $55
	ld   a, b                                        ; $4ad1: $78
	xor  h                                           ; $4ad2: $ac
	ld   [hl], e                                     ; $4ad3: $73
	ld   de, $1111                                   ; $4ad4: $11 $11 $11
	ld   de, $1111                                   ; $4ad7: $11 $11 $11
	ld   de, $6711                                   ; $4ada: $11 $11 $67
	ld   sp, $1611                                   ; $4add: $31 $11 $16
	rst  $38                                         ; $4ae0: $ff
	rst  $38                                         ; $4ae1: $ff
	rst  $38                                         ; $4ae2: $ff
	rst  $38                                         ; $4ae3: $ff
	rst  $38                                         ; $4ae4: $ff
	rst  $38                                         ; $4ae5: $ff
	rst  $38                                         ; $4ae6: $ff
	rst  $38                                         ; $4ae7: $ff
	rst  $38                                         ; $4ae8: $ff
	db   $ec                                         ; $4ae9: $ec
	call z, $95ba                                    ; $4aea: $cc $ba $95
	ld   b, c                                        ; $4aed: $41
	ld   de, $1111                                   ; $4aee: $11 $11 $11
	ld   de, $1111                                   ; $4af1: $11 $11 $11
	ld   de, $1111                                   ; $4af4: $11 $11 $11
	ld   de, $1311                                   ; $4af7: $11 $11 $13
	rst  $38                                         ; $4afa: $ff
	rst  $38                                         ; $4afb: $ff
	rst  $38                                         ; $4afc: $ff
	rst  $38                                         ; $4afd: $ff
	rst  $38                                         ; $4afe: $ff
	rst  $38                                         ; $4aff: $ff
	rst  $38                                         ; $4b00: $ff
	rst  $38                                         ; $4b01: $ff
	call z, $ffef                                    ; $4b02: $cc $ef $ff
	ei                                               ; $4b05: $fb
	ld   [hl], h                                     ; $4b06: $74
	ld   de, $1111                                   ; $4b07: $11 $11 $11
	ld   de, $1111                                   ; $4b0a: $11 $11 $11
	ld   de, $1111                                   ; $4b0d: $11 $11 $11
	ld   de, $1111                                   ; $4b10: $11 $11 $11
	add  hl, de                                      ; $4b13: $19
	rst  $38                                         ; $4b14: $ff
	rst  $38                                         ; $4b15: $ff
	rst  $38                                         ; $4b16: $ff
	rst  $38                                         ; $4b17: $ff
	rst  $38                                         ; $4b18: $ff
	rst  $38                                         ; $4b19: $ff
	rst  $38                                         ; $4b1a: $ff
	rst  $38                                         ; $4b1b: $ff
	jp   z, $ffff                                    ; $4b1c: $ca $ff $ff

	db   $fd                                         ; $4b1f: $fd
	ld   d, c                                        ; $4b20: $51
	ld   de, $1111                                   ; $4b21: $11 $11 $11
	ld   de, $1111                                   ; $4b24: $11 $11 $11
	ld   de, $1111                                   ; $4b27: $11 $11 $11
	ld   de, $1611                                   ; $4b2a: $11 $11 $16
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b2d: $cf
	rst  $38                                         ; $4b2e: $ff
	rst  $38                                         ; $4b2f: $ff
	rst  $38                                         ; $4b30: $ff
	rst  $38                                         ; $4b31: $ff
	rst  $38                                         ; $4b32: $ff
	rst  $38                                         ; $4b33: $ff
	rst  $38                                         ; $4b34: $ff
	rst  $38                                         ; $4b35: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b36: $cf
	rst  $38                                         ; $4b37: $ff
	rst  $38                                         ; $4b38: $ff
	and  $21                                         ; $4b39: $e6 $21
	ld   de, $1111                                   ; $4b3b: $11 $11 $11
	ld   de, $1111                                   ; $4b3e: $11 $11 $11
	ld   de, $1111                                   ; $4b41: $11 $11 $11
	inc  de                                          ; $4b44: $13
	ld   de, $ff8e                                   ; $4b45: $11 $8e $ff
	rst  $38                                         ; $4b48: $ff
	rst  $38                                         ; $4b49: $ff
	rst  $38                                         ; $4b4a: $ff
	rst  $38                                         ; $4b4b: $ff
	rst  $38                                         ; $4b4c: $ff
	rst  $38                                         ; $4b4d: $ff
	rst  $38                                         ; $4b4e: $ff
	xor  $ff                                         ; $4b4f: $ee $ff
	rst  $38                                         ; $4b51: $ff
	ei                                               ; $4b52: $fb
	ld   sp, $1111                                   ; $4b53: $31 $11 $11
	ld   de, $1111                                   ; $4b56: $11 $11 $11
	ld   de, $1111                                   ; $4b59: $11 $11 $11
	ld   de, $1111                                   ; $4b5c: $11 $11 $11
	ld   e, a                                        ; $4b5f: $5f
	rst  $38                                         ; $4b60: $ff
	rst  $38                                         ; $4b61: $ff
	rst  $38                                         ; $4b62: $ff
	rst  $38                                         ; $4b63: $ff
	rst  $38                                         ; $4b64: $ff
	rst  $38                                         ; $4b65: $ff
	rst  $38                                         ; $4b66: $ff
	rst  $38                                         ; $4b67: $ff
	rst  $38                                         ; $4b68: $ff
	rst  $38                                         ; $4b69: $ff
	rst  $38                                         ; $4b6a: $ff
	call c, $1163                                    ; $4b6b: $dc $63 $11
	ld   de, $1111                                   ; $4b6e: $11 $11 $11
	ld   de, $1111                                   ; $4b71: $11 $11 $11
	ld   de, $1111                                   ; $4b74: $11 $11 $11
	ld   de, $ff6f                                   ; $4b77: $11 $6f $ff
	rst  $38                                         ; $4b7a: $ff
	rst  $38                                         ; $4b7b: $ff
	rst  $38                                         ; $4b7c: $ff
	rst  $38                                         ; $4b7d: $ff
	rst  $38                                         ; $4b7e: $ff
	rst  $38                                         ; $4b7f: $ff
	rst  $38                                         ; $4b80: $ff
	rst  $38                                         ; $4b81: $ff
	rst  $38                                         ; $4b82: $ff
	rst  $38                                         ; $4b83: $ff
	cp   $b6                                         ; $4b84: $fe $b6
	ld   hl, $1111                                   ; $4b86: $21 $11 $11
	ld   de, $1111                                   ; $4b89: $11 $11 $11
	ld   de, $1111                                   ; $4b8c: $11 $11 $11
	ld   de, $bf11                                   ; $4b8f: $11 $11 $bf
	rst  $38                                         ; $4b92: $ff
	rst  $38                                         ; $4b93: $ff
	rst  $38                                         ; $4b94: $ff
	rst  $38                                         ; $4b95: $ff
	rst  $38                                         ; $4b96: $ff
	rst  $38                                         ; $4b97: $ff
	rst  $38                                         ; $4b98: $ff
	rst  JumpTable                                         ; $4b99: $df
	rst  $38                                         ; $4b9a: $ff
	rst  $38                                         ; $4b9b: $ff
	rst  $38                                         ; $4b9c: $ff
	rst  $28                                         ; $4b9d: $ef
	ld   a, [$1111]                                  ; $4b9e: $fa $11 $11
	ld   de, $1111                                   ; $4ba1: $11 $11 $11
	ld   de, $1111                                   ; $4ba4: $11 $11 $11
	ld   de, $1b11                                   ; $4ba7: $11 $11 $1b
	rst  $38                                         ; $4baa: $ff
	rst  $38                                         ; $4bab: $ff
	rst  $38                                         ; $4bac: $ff
	rst  $38                                         ; $4bad: $ff
	rst  $38                                         ; $4bae: $ff
	rst  $38                                         ; $4baf: $ff
	rst  $38                                         ; $4bb0: $ff
	rst  $38                                         ; $4bb1: $ff
	rst  $28                                         ; $4bb2: $ef
	rst  $38                                         ; $4bb3: $ff
	rst  $38                                         ; $4bb4: $ff
	rst  $38                                         ; $4bb5: $ff
	ld   a, [$1151]                                  ; $4bb6: $fa $51 $11
	ld   de, $1111                                   ; $4bb9: $11 $11 $11
	ld   de, $1111                                   ; $4bbc: $11 $11 $11
	ld   de, $1111                                   ; $4bbf: $11 $11 $11
	adc  a                                           ; $4bc2: $8f
	rst  $38                                         ; $4bc3: $ff
	rst  $38                                         ; $4bc4: $ff
	rst  $38                                         ; $4bc5: $ff
	rst  $38                                         ; $4bc6: $ff
	rst  $38                                         ; $4bc7: $ff
	rst  $38                                         ; $4bc8: $ff
	rst  $38                                         ; $4bc9: $ff
	rst  $38                                         ; $4bca: $ff
	rst  $38                                         ; $4bcb: $ff
	rst  $38                                         ; $4bcc: $ff
	rst  $38                                         ; $4bcd: $ff
	rst  $38                                         ; $4bce: $ff
	or   l                                           ; $4bcf: $b5
	ld   de, $1111                                   ; $4bd0: $11 $11 $11
	ld   de, $1111                                   ; $4bd3: $11 $11 $11
	ld   de, $1111                                   ; $4bd6: $11 $11 $11
	ld   de, $ff17                                   ; $4bd9: $11 $17 $ff
	rst  $38                                         ; $4bdc: $ff
	rst  $38                                         ; $4bdd: $ff
	rst  $38                                         ; $4bde: $ff
	rst  $38                                         ; $4bdf: $ff
	rst  $38                                         ; $4be0: $ff
	rst  $38                                         ; $4be1: $ff
	rst  $38                                         ; $4be2: $ff
	jp   z, $ffcf                                    ; $4be3: $ca $cf $ff

	rst  $38                                         ; $4be6: $ff
	db   $db                                         ; $4be7: $db
	and  a                                           ; $4be8: $a7
	ld   de, $1111                                   ; $4be9: $11 $11 $11
	ld   de, $1111                                   ; $4bec: $11 $11 $11
	ld   de, $1111                                   ; $4bef: $11 $11 $11
	ld   de, $ff6f                                   ; $4bf2: $11 $6f $ff
	rst  $38                                         ; $4bf5: $ff
	rst  $38                                         ; $4bf6: $ff
	rst  $38                                         ; $4bf7: $ff
	rst  $38                                         ; $4bf8: $ff
	rst  $38                                         ; $4bf9: $ff
	rst  $38                                         ; $4bfa: $ff
	cp   $bc                                         ; $4bfb: $fe $bc
	rst  $28                                         ; $4bfd: $ef
	call c, wDefaultKanjiTileTextStyle                                    ; $4bfe: $dc $ef $c5
	ld   de, $1122                                   ; $4c01: $11 $22 $11
	ld   de, $1111                                   ; $4c04: $11 $11 $11
	ld   de, $1111                                   ; $4c07: $11 $11 $11
	ld   de, $1111                                   ; $4c0a: $11 $11 $11
	adc  a                                           ; $4c0d: $8f
	rst  $38                                         ; $4c0e: $ff
	rst  $38                                         ; $4c0f: $ff
	rst  $38                                         ; $4c10: $ff
	rst  $38                                         ; $4c11: $ff
	rst  $38                                         ; $4c12: $ff
	rst  $38                                         ; $4c13: $ff
	rst  $38                                         ; $4c14: $ff
	rst  $38                                         ; $4c15: $ff
	rst  $38                                         ; $4c16: $ff
	db   $eb                                         ; $4c17: $eb
	adc  $f8                                         ; $4c18: $ce $f8
	inc  sp                                          ; $4c1a: $33
	ld   l, c                                        ; $4c1b: $69
	ld   [hl], d                                     ; $4c1c: $72
	ld   de, $3144                                   ; $4c1d: $11 $44 $31
	ld   de, $1111                                   ; $4c20: $11 $11 $11
	ld   de, $1111                                   ; $4c23: $11 $11 $11
	ld   de, $1111                                   ; $4c26: $11 $11 $11
	scf                                              ; $4c29: $37
	rst  $28                                         ; $4c2a: $ef
	rst  $38                                         ; $4c2b: $ff
	rst  $38                                         ; $4c2c: $ff
	rst  $38                                         ; $4c2d: $ff
	rst  $38                                         ; $4c2e: $ff
	rst  $38                                         ; $4c2f: $ff
	rst  $38                                         ; $4c30: $ff
	rst  $38                                         ; $4c31: $ff
	rst  $38                                         ; $4c32: $ff
	db   $ec                                         ; $4c33: $ec
	jp   z, Jump_0c3_7877                            ; $4c34: $ca $77 $78

	add  a                                           ; $4c37: $87
	ld   b, h                                        ; $4c38: $44
	ld   b, h                                        ; $4c39: $44
	ld   h, l                                        ; $4c3a: $65
	ld   de, $1101                                   ; $4c3b: $11 $01 $11
	ld   de, $1111                                   ; $4c3e: $11 $11 $11
	ld   de, $1111                                   ; $4c41: $11 $11 $11
	inc  de                                          ; $4c44: $13
	ld   e, d                                        ; $4c45: $5a
	rst  $38                                         ; $4c46: $ff
	rst  $38                                         ; $4c47: $ff
	rst  $38                                         ; $4c48: $ff
	rst  $38                                         ; $4c49: $ff
	rst  $38                                         ; $4c4a: $ff
	rst  $38                                         ; $4c4b: $ff
	rst  $38                                         ; $4c4c: $ff
	db   $fc                                         ; $4c4d: $fc
	cp   [hl]                                        ; $4c4e: $be
	db   $fd                                         ; $4c4f: $fd
	call $b5aa                                       ; $4c50: $cd $aa $b5
	dec  h                                           ; $4c53: $25
	ld   sp, $1122                                   ; $4c54: $31 $22 $11
	ld   de, $1111                                   ; $4c57: $11 $11 $11
	ld   de, $1111                                   ; $4c5a: $11 $11 $11
	ld   de, $3611                                   ; $4c5d: $11 $11 $36
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c60: $cf
	rst  $38                                         ; $4c61: $ff
	rst  $38                                         ; $4c62: $ff
	rst  $38                                         ; $4c63: $ff
	rst  $38                                         ; $4c64: $ff
	rst  $38                                         ; $4c65: $ff
	rst  $38                                         ; $4c66: $ff
	rst  $38                                         ; $4c67: $ff
	rst  $20                                         ; $4c68: $e7
	ld   [de], a                                     ; $4c69: $12
	sbc  l                                           ; $4c6a: $9d
	reti                                             ; $4c6b: $d9


	sbc  h                                           ; $4c6c: $9c
	call c, $0193                                    ; $4c6d: $dc $93 $01
	ld   de, $1111                                   ; $4c70: $11 $11 $11
	ld   de, $1111                                   ; $4c73: $11 $11 $11
	ld   de, $1611                                   ; $4c76: $11 $11 $16
	rst  $38                                         ; $4c79: $ff
	rst  $38                                         ; $4c7a: $ff
	rst  $38                                         ; $4c7b: $ff
	rst  $38                                         ; $4c7c: $ff
	rst  $38                                         ; $4c7d: $ff
	rst  $38                                         ; $4c7e: $ff
	rst  $38                                         ; $4c7f: $ff
	set  7, l                                        ; $4c80: $cb $fd
	add  [hl]                                        ; $4c82: $86
	adc  a                                           ; $4c83: $8f
	rst  $38                                         ; $4c84: $ff
	db   $fd                                         ; $4c85: $fd
	rst  $38                                         ; $4c86: $ff
	db   $e3                                         ; $4c87: $e3
	ld   de, $1111                                   ; $4c88: $11 $11 $11
	ld   de, $1111                                   ; $4c8b: $11 $11 $11
	ld   de, $1111                                   ; $4c8e: $11 $11 $11
	rra                                              ; $4c91: $1f
	rst  $38                                         ; $4c92: $ff
	rst  $38                                         ; $4c93: $ff
	rst  $38                                         ; $4c94: $ff
	rst  $38                                         ; $4c95: $ff
	rst  $38                                         ; $4c96: $ff
	rst  $38                                         ; $4c97: $ff
	cp   $be                                         ; $4c98: $fe $be
	db   $fc                                         ; $4c9a: $fc
	ld   l, e                                        ; $4c9b: $6b
	rst  $38                                         ; $4c9c: $ff
	rst  $38                                         ; $4c9d: $ff
	rst  $38                                         ; $4c9e: $ff
	db   $fc                                         ; $4c9f: $fc
	ld   h, c                                        ; $4ca0: $61
	ld   de, $1111                                   ; $4ca1: $11 $11 $11
	ld   de, $1111                                   ; $4ca4: $11 $11 $11
	ld   de, $1111                                   ; $4ca7: $11 $11 $11
	rst  $38                                         ; $4caa: $ff
	rst  $38                                         ; $4cab: $ff
	rst  $38                                         ; $4cac: $ff
	rst  $38                                         ; $4cad: $ff
	rst  $38                                         ; $4cae: $ff
	rst  $38                                         ; $4caf: $ff
	rst  $38                                         ; $4cb0: $ff
	jp   c, $adff                                    ; $4cb1: $da $ff $ad

	rst  $38                                         ; $4cb4: $ff
	rst  $38                                         ; $4cb5: $ff
	rst  $38                                         ; $4cb6: $ff
	rst  $38                                         ; $4cb7: $ff
	ld   [hl], c                                     ; $4cb8: $71
	ld   de, $1111                                   ; $4cb9: $11 $11 $11
	ld   de, $1111                                   ; $4cbc: $11 $11 $11
	ld   de, $1111                                   ; $4cbf: $11 $11 $11
	adc  a                                           ; $4cc2: $8f
	rst  $38                                         ; $4cc3: $ff
	rst  $38                                         ; $4cc4: $ff
	rst  $38                                         ; $4cc5: $ff
	rst  $38                                         ; $4cc6: $ff
	rst  $38                                         ; $4cc7: $ff
	rst  $38                                         ; $4cc8: $ff
	cp   $df                                         ; $4cc9: $fe $df
	db   $fd                                         ; $4ccb: $fd
	rst  $38                                         ; $4ccc: $ff
	rst  $38                                         ; $4ccd: $ff
	rst  $38                                         ; $4cce: $ff
	cp   $41                                         ; $4ccf: $fe $41
	ld   de, $1111                                   ; $4cd1: $11 $11 $11
	ld   de, $1111                                   ; $4cd4: $11 $11 $11
	ld   de, $1111                                   ; $4cd7: $11 $11 $11
	cpl                                              ; $4cda: $2f
	rst  $38                                         ; $4cdb: $ff
	rst  $38                                         ; $4cdc: $ff
	rst  $38                                         ; $4cdd: $ff
	rst  $38                                         ; $4cde: $ff
	rst  $38                                         ; $4cdf: $ff
	rst  $38                                         ; $4ce0: $ff
	ld   sp, hl                                      ; $4ce1: $f9
	rst  $28                                         ; $4ce2: $ef
	cp   $df                                         ; $4ce3: $fe $df
	rst  $38                                         ; $4ce5: $ff
	cp   $ff                                         ; $4ce6: $fe $ff
	add  c                                           ; $4ce8: $81
	ld   de, $1111                                   ; $4ce9: $11 $11 $11
	ld   de, $1111                                   ; $4cec: $11 $11 $11
	ld   de, $1111                                   ; $4cef: $11 $11 $11
	rra                                              ; $4cf2: $1f
	rst  $38                                         ; $4cf3: $ff
	rst  $38                                         ; $4cf4: $ff
	rst  $38                                         ; $4cf5: $ff
	rst  $38                                         ; $4cf6: $ff
	rst  $38                                         ; $4cf7: $ff
	db   $fd                                         ; $4cf8: $fd
	rst  $38                                         ; $4cf9: $ff
	rst  $38                                         ; $4cfa: $ff
	cp   $ff                                         ; $4cfb: $fe $ff
	rst  $38                                         ; $4cfd: $ff
	rst  $38                                         ; $4cfe: $ff
	cp   $61                                         ; $4cff: $fe $61
	ld   de, $1111                                   ; $4d01: $11 $11 $11
	ld   de, $1111                                   ; $4d04: $11 $11 $11
	ld   de, $1111                                   ; $4d07: $11 $11 $11
	add  hl, de                                      ; $4d0a: $19
	rst  $38                                         ; $4d0b: $ff
	rst  $38                                         ; $4d0c: $ff
	rst  $38                                         ; $4d0d: $ff
	rst  $38                                         ; $4d0e: $ff
	rst  $38                                         ; $4d0f: $ff
	rst  $38                                         ; $4d10: $ff
	rst  $38                                         ; $4d11: $ff
	rst  JumpTable                                         ; $4d12: $df
	rst  $38                                         ; $4d13: $ff
	rst  $38                                         ; $4d14: $ff
	rst  $38                                         ; $4d15: $ff
	rst  $38                                         ; $4d16: $ff
	rst  $38                                         ; $4d17: $ff
	pop  bc                                          ; $4d18: $c1
	ld   de, $1111                                   ; $4d19: $11 $11 $11
	ld   de, $1111                                   ; $4d1c: $11 $11 $11
	ld   de, $1111                                   ; $4d1f: $11 $11 $11
	dec  e                                           ; $4d22: $1d
	rst  $38                                         ; $4d23: $ff
	rst  $38                                         ; $4d24: $ff
	rst  $38                                         ; $4d25: $ff
	rst  $38                                         ; $4d26: $ff
	rst  $38                                         ; $4d27: $ff
	cp   $ff                                         ; $4d28: $fe $ff
	rst  $38                                         ; $4d2a: $ff
	rst  $38                                         ; $4d2b: $ff
	rst  $38                                         ; $4d2c: $ff
	rst  $38                                         ; $4d2d: $ff
	rst  $38                                         ; $4d2e: $ff
	rst  $38                                         ; $4d2f: $ff
	and  h                                           ; $4d30: $a4
	ld   de, $1111                                   ; $4d31: $11 $11 $11
	ld   de, $1111                                   ; $4d34: $11 $11 $11
	ld   de, $1111                                   ; $4d37: $11 $11 $11
	ld   de, $ffff                                   ; $4d3a: $11 $ff $ff
	rst  $38                                         ; $4d3d: $ff
	rst  $38                                         ; $4d3e: $ff
	rst  $38                                         ; $4d3f: $ff
	rst  $38                                         ; $4d40: $ff
	xor  b                                           ; $4d41: $a8
	rst  $38                                         ; $4d42: $ff
	rst  $38                                         ; $4d43: $ff
	rst  $38                                         ; $4d44: $ff
	rst  $38                                         ; $4d45: $ff
	rst  $38                                         ; $4d46: $ff
	rst  $38                                         ; $4d47: $ff
	or   $11                                         ; $4d48: $f6 $11
	ld   de, $1111                                   ; $4d4a: $11 $11 $11
	ld   de, $1111                                   ; $4d4d: $11 $11 $11
	ld   de, $1111                                   ; $4d50: $11 $11 $11
	ld   e, $ff                                      ; $4d53: $1e $ff
	rst  $38                                         ; $4d55: $ff
	rst  $38                                         ; $4d56: $ff
	rst  $38                                         ; $4d57: $ff
	rst  $38                                         ; $4d58: $ff
	rst  $30                                         ; $4d59: $f7
	rst  JumpTable                                         ; $4d5a: $df
	db   $fd                                         ; $4d5b: $fd
	rst  $38                                         ; $4d5c: $ff
	rst  $38                                         ; $4d5d: $ff
	rst  $38                                         ; $4d5e: $ff
	rst  $38                                         ; $4d5f: $ff
	ld   a, [$1151]                                  ; $4d60: $fa $51 $11
	ld   de, $1111                                   ; $4d63: $11 $11 $11
	ld   de, $1111                                   ; $4d66: $11 $11 $11
	ld   de, $1b11                                   ; $4d69: $11 $11 $1b
	rst  $38                                         ; $4d6c: $ff
	rst  $38                                         ; $4d6d: $ff
	rst  $38                                         ; $4d6e: $ff
	rst  $38                                         ; $4d6f: $ff
	rst  $38                                         ; $4d70: $ff
	ld   sp, hl                                      ; $4d71: $f9
	adc  a                                           ; $4d72: $8f
	ld   a, [$ffff]                                  ; $4d73: $fa $ff $ff
	rst  $38                                         ; $4d76: $ff
	rst  $38                                         ; $4d77: $ff
	rst  $38                                         ; $4d78: $ff
	and  l                                           ; $4d79: $a5
	ld   de, $1111                                   ; $4d7a: $11 $11 $11
	ld   de, $1111                                   ; $4d7d: $11 $11 $11
	ld   de, $1111                                   ; $4d80: $11 $11 $11
	ld   de, $ffff                                   ; $4d83: $11 $ff $ff
	rst  $38                                         ; $4d86: $ff
	rst  $38                                         ; $4d87: $ff
	rst  $38                                         ; $4d88: $ff
	rst  $38                                         ; $4d89: $ff
	ld   a, [hl]                                     ; $4d8a: $7e
	rst  $38                                         ; $4d8b: $ff
	db   $fd                                         ; $4d8c: $fd
	rst  $38                                         ; $4d8d: $ff
	rst  $38                                         ; $4d8e: $ff
	rst  $38                                         ; $4d8f: $ff
	rst  $38                                         ; $4d90: $ff
	call nc, $1111                                   ; $4d91: $d4 $11 $11
	ld   de, $1111                                   ; $4d94: $11 $11 $11
	ld   de, $1111                                   ; $4d97: $11 $11 $11
	ld   de, $4f11                                   ; $4d9a: $11 $11 $4f
	rst  $38                                         ; $4d9d: $ff
	rst  $38                                         ; $4d9e: $ff
	rst  $38                                         ; $4d9f: $ff
	rst  $38                                         ; $4da0: $ff
	rst  $38                                         ; $4da1: $ff
	and  a                                           ; $4da2: $a7
	rst  $38                                         ; $4da3: $ff
	ld   hl, sp-$01                                  ; $4da4: $f8 $ff
	rst  $38                                         ; $4da6: $ff
	rst  $38                                         ; $4da7: $ff
	rst  $38                                         ; $4da8: $ff
	ld   a, [$1111]                                  ; $4da9: $fa $11 $11
	ld   de, $1111                                   ; $4dac: $11 $11 $11
	ld   de, $1111                                   ; $4daf: $11 $11 $11
	ld   de, $3111                                   ; $4db2: $11 $11 $31
	rst  $38                                         ; $4db5: $ff
	rst  $38                                         ; $4db6: $ff
	rst  $38                                         ; $4db7: $ff
	rst  $38                                         ; $4db8: $ff
	rst  $38                                         ; $4db9: $ff
	rst  $38                                         ; $4dba: $ff
	call c, $ffcf                                    ; $4dbb: $dc $cf $ff
	rst  $38                                         ; $4dbe: $ff
	rst  $38                                         ; $4dbf: $ff
	rst  $38                                         ; $4dc0: $ff
	rst  $38                                         ; $4dc1: $ff
	or   a                                           ; $4dc2: $b7
	ld   sp, $1111                                   ; $4dc3: $31 $11 $11
	ld   de, $1111                                   ; $4dc6: $11 $11 $11
	ld   de, $1111                                   ; $4dc9: $11 $11 $11
	ld   de, $ffff                                   ; $4dcc: $11 $ff $ff
	rst  $38                                         ; $4dcf: $ff
	rst  $38                                         ; $4dd0: $ff
	rst  $38                                         ; $4dd1: $ff
	rst  $38                                         ; $4dd2: $ff
	xor  a                                           ; $4dd3: $af
	rst  $38                                         ; $4dd4: $ff
	ld   e, a                                        ; $4dd5: $5f
	rst  $38                                         ; $4dd6: $ff
	rst  $38                                         ; $4dd7: $ff
	rst  $38                                         ; $4dd8: $ff
	rst  $38                                         ; $4dd9: $ff
	db   $fd                                         ; $4dda: $fd
	sub  c                                           ; $4ddb: $91
	ld   de, $1111                                   ; $4ddc: $11 $11 $11
	ld   de, $1111                                   ; $4ddf: $11 $11 $11
	ld   de, $1111                                   ; $4de2: $11 $11 $11
	rra                                              ; $4de5: $1f
	rst  $38                                         ; $4de6: $ff
	rst  $38                                         ; $4de7: $ff
	rst  $38                                         ; $4de8: $ff
	rst  $38                                         ; $4de9: $ff
	rst  $38                                         ; $4dea: $ff
	rst  $38                                         ; $4deb: $ff
	db   $fc                                         ; $4dec: $fc
	rst  $38                                         ; $4ded: $ff
	rst  $38                                         ; $4dee: $ff
	rst  $38                                         ; $4def: $ff
	rst  $38                                         ; $4df0: $ff
	rst  $38                                         ; $4df1: $ff
	rst  $38                                         ; $4df2: $ff
	and  a                                           ; $4df3: $a7
	ld   b, c                                        ; $4df4: $41
	ld   de, $1111                                   ; $4df5: $11 $11 $11
	ld   de, $1111                                   ; $4df8: $11 $11 $11
	ld   de, $1111                                   ; $4dfb: $11 $11 $11
	rst  $38                                         ; $4dfe: $ff
	rst  $38                                         ; $4dff: $ff
	rst  $38                                         ; $4e00: $ff
	rst  $38                                         ; $4e01: $ff
	rst  $38                                         ; $4e02: $ff
	rst  $38                                         ; $4e03: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e04: $cf
	ld   sp, hl                                      ; $4e05: $f9
	rst  JumpTable                                         ; $4e06: $df
	rst  $38                                         ; $4e07: $ff
	rst  $38                                         ; $4e08: $ff
	rst  $38                                         ; $4e09: $ff
	rst  $38                                         ; $4e0a: $ff
	rst  $38                                         ; $4e0b: $ff
	ld   h, e                                        ; $4e0c: $63
	ld   de, $1111                                   ; $4e0d: $11 $11 $11
	ld   de, $1111                                   ; $4e10: $11 $11 $11
	ld   de, $1111                                   ; $4e13: $11 $11 $11
	ld   a, [hl-]                                    ; $4e16: $3a
	rst  $38                                         ; $4e17: $ff
	rst  $38                                         ; $4e18: $ff
	rst  $38                                         ; $4e19: $ff
	rst  $38                                         ; $4e1a: $ff
	rst  $38                                         ; $4e1b: $ff
	rst  $38                                         ; $4e1c: $ff
	rst  $28                                         ; $4e1d: $ef
	db   $fc                                         ; $4e1e: $fc
	rst  JumpTable                                         ; $4e1f: $df
	rst  $38                                         ; $4e20: $ff
	rst  $38                                         ; $4e21: $ff
	rst  $38                                         ; $4e22: $ff
	rst  $38                                         ; $4e23: $ff
	cp   $51                                         ; $4e24: $fe $51
	ld   de, $1111                                   ; $4e26: $11 $11 $11
	ld   de, $1111                                   ; $4e29: $11 $11 $11
	ld   de, $0111                                   ; $4e2c: $11 $11 $01
	ld   l, a                                        ; $4e2f: $6f
	rst  $38                                         ; $4e30: $ff
	rst  $38                                         ; $4e31: $ff
	rst  $38                                         ; $4e32: $ff
	rst  $38                                         ; $4e33: $ff
	rst  $38                                         ; $4e34: $ff
	rst  $38                                         ; $4e35: $ff
	rst  $38                                         ; $4e36: $ff
	call c, $ffef                                    ; $4e37: $dc $ef $ff
	rst  $38                                         ; $4e3a: $ff
	rst  $38                                         ; $4e3b: $ff
	rst  $38                                         ; $4e3c: $ff
	ld   hl, sp+$11                                  ; $4e3d: $f8 $11
	ld   de, $1111                                   ; $4e3f: $11 $11 $11
	ld   de, $1111                                   ; $4e42: $11 $11 $11
	ld   de, $3f11                                   ; $4e45: $11 $11 $3f
	rst  $38                                         ; $4e48: $ff
	rst  $38                                         ; $4e49: $ff
	rst  $38                                         ; $4e4a: $ff
	rst  $38                                         ; $4e4b: $ff
	rst  $38                                         ; $4e4c: $ff
	rst  $38                                         ; $4e4d: $ff
	rst  $38                                         ; $4e4e: $ff
	ld   a, [$dfcf]                                  ; $4e4f: $fa $cf $df
	rst  $38                                         ; $4e52: $ff
	rst  $38                                         ; $4e53: $ff
	rst  $38                                         ; $4e54: $ff
	rst  $38                                         ; $4e55: $ff
	and  h                                           ; $4e56: $a4
	ld   sp, $1111                                   ; $4e57: $31 $11 $11
	ld   de, $1111                                   ; $4e5a: $11 $11 $11
	ld   de, $1111                                   ; $4e5d: $11 $11 $11
	adc  a                                           ; $4e60: $8f
	rst  $38                                         ; $4e61: $ff
	rst  $38                                         ; $4e62: $ff
	rst  $38                                         ; $4e63: $ff
	rst  $38                                         ; $4e64: $ff
	rst  $38                                         ; $4e65: $ff
	rst  $38                                         ; $4e66: $ff
	rst  $38                                         ; $4e67: $ff
	add  [hl]                                        ; $4e68: $86
	rst  $38                                         ; $4e69: $ff
	rst  $28                                         ; $4e6a: $ef
	rst  $38                                         ; $4e6b: $ff
	rst  $38                                         ; $4e6c: $ff
	rst  $38                                         ; $4e6d: $ff
	cp   $74                                         ; $4e6e: $fe $74
	ld   de, $1111                                   ; $4e70: $11 $11 $11
	ld   de, $1111                                   ; $4e73: $11 $11 $11
	ld   de, $1111                                   ; $4e76: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e79: $cf
	rst  $38                                         ; $4e7a: $ff
	rst  $38                                         ; $4e7b: $ff
	rst  $38                                         ; $4e7c: $ff
	rst  $38                                         ; $4e7d: $ff
	rst  $38                                         ; $4e7e: $ff
	rst  $38                                         ; $4e7f: $ff
	rst  $38                                         ; $4e80: $ff
	ld   a, [hl]                                     ; $4e81: $7e
	ei                                               ; $4e82: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e83: $cf
	rst  $38                                         ; $4e84: $ff
	rst  $38                                         ; $4e85: $ff
	rst  $38                                         ; $4e86: $ff
	db   $fd                                         ; $4e87: $fd
	or   h                                           ; $4e88: $b4
	ld   hl, $1111                                   ; $4e89: $21 $11 $11
	ld   de, $1111                                   ; $4e8c: $11 $11 $11
	ld   de, $1c11                                   ; $4e8f: $11 $11 $1c
	rst  $38                                         ; $4e92: $ff
	rst  $38                                         ; $4e93: $ff
	rst  $38                                         ; $4e94: $ff
	rst  $38                                         ; $4e95: $ff
	rst  $38                                         ; $4e96: $ff
	rst  $38                                         ; $4e97: $ff
	rst  $38                                         ; $4e98: $ff
	cp   e                                           ; $4e99: $bb
	cp   l                                           ; $4e9a: $bd
	ld   a, b                                        ; $4e9b: $78
	rst  $38                                         ; $4e9c: $ff
	rst  $38                                         ; $4e9d: $ff
	rst  $38                                         ; $4e9e: $ff
	rst  $38                                         ; $4e9f: $ff
	xor  $f6                                         ; $4ea0: $ee $f6
	ld   de, $1111                                   ; $4ea2: $11 $11 $11
	ld   de, $1111                                   ; $4ea5: $11 $11 $11
	ld   de, $1e11                                   ; $4ea8: $11 $11 $1e
	rst  $38                                         ; $4eab: $ff
	rst  $38                                         ; $4eac: $ff
	rst  $38                                         ; $4ead: $ff
	rst  $38                                         ; $4eae: $ff
	rst  $38                                         ; $4eaf: $ff
	rst  $38                                         ; $4eb0: $ff
	rst  $38                                         ; $4eb1: $ff
	cp   d                                           ; $4eb2: $ba
	db   $eb                                         ; $4eb3: $eb
	ld   e, l                                        ; $4eb4: $5d
	rst  $38                                         ; $4eb5: $ff
	rst  $38                                         ; $4eb6: $ff
	rst  $38                                         ; $4eb7: $ff
	rst  $38                                         ; $4eb8: $ff
	rst  $38                                         ; $4eb9: $ff
	sub  l                                           ; $4eba: $95
	ld   de, $1111                                   ; $4ebb: $11 $11 $11
	ld   de, $1111                                   ; $4ebe: $11 $11 $11
	ld   de, $1611                                   ; $4ec1: $11 $11 $16
	rst  $38                                         ; $4ec4: $ff
	rst  $38                                         ; $4ec5: $ff
	rst  $38                                         ; $4ec6: $ff
	rst  $38                                         ; $4ec7: $ff
	rst  $38                                         ; $4ec8: $ff
	rst  $38                                         ; $4ec9: $ff
	rst  $38                                         ; $4eca: $ff
	cp   a                                           ; $4ecb: $bf
	sub  d                                           ; $4ecc: $92
	sbc  [hl]                                        ; $4ecd: $9e
	db   $fd                                         ; $4ece: $fd
	rst  $38                                         ; $4ecf: $ff
	rst  $38                                         ; $4ed0: $ff
	rst  $38                                         ; $4ed1: $ff
	db   $fd                                         ; $4ed2: $fd
	and  l                                           ; $4ed3: $a5
	ld   de, $1111                                   ; $4ed4: $11 $11 $11
	ld   de, $1111                                   ; $4ed7: $11 $11 $11
	ld   de, $1511                                   ; $4eda: $11 $11 $15
	rst  $38                                         ; $4edd: $ff
	rst  $38                                         ; $4ede: $ff
	rst  $38                                         ; $4edf: $ff
	rst  $38                                         ; $4ee0: $ff
	rst  $38                                         ; $4ee1: $ff
	rst  $38                                         ; $4ee2: $ff
	rst  $38                                         ; $4ee3: $ff
	ei                                               ; $4ee4: $fb
	sbc  b                                           ; $4ee5: $98
	adc  d                                           ; $4ee6: $8a
	rst  JumpTable                                         ; $4ee7: $df
	rst  $38                                         ; $4ee8: $ff
	rst  $38                                         ; $4ee9: $ff
	rst  $38                                         ; $4eea: $ff
	rst  $38                                         ; $4eeb: $ff
	ret                                              ; $4eec: $c9


	ld   sp, $1111                                   ; $4eed: $31 $11 $11
	ld   de, $1111                                   ; $4ef0: $11 $11 $11
	ld   de, $1111                                   ; $4ef3: $11 $11 $11
	rst  $38                                         ; $4ef6: $ff
	rst  $38                                         ; $4ef7: $ff
	rst  $38                                         ; $4ef8: $ff
	rst  $38                                         ; $4ef9: $ff
	rst  $38                                         ; $4efa: $ff
	rst  $38                                         ; $4efb: $ff
	rst  $38                                         ; $4efc: $ff
	ei                                               ; $4efd: $fb
	sbc  b                                           ; $4efe: $98
	cp   [hl]                                        ; $4eff: $be
	xor  h                                           ; $4f00: $ac
	rst  $38                                         ; $4f01: $ff
	rst  $38                                         ; $4f02: $ff
	rst  $38                                         ; $4f03: $ff
	rst  $38                                         ; $4f04: $ff
	db   $ec                                         ; $4f05: $ec
	ld   d, c                                        ; $4f06: $51
	ld   de, $1111                                   ; $4f07: $11 $11 $11
	ld   de, $1111                                   ; $4f0a: $11 $11 $11
	ld   de, $1911                                   ; $4f0d: $11 $11 $19
	rst  $38                                         ; $4f10: $ff
	rst  $38                                         ; $4f11: $ff
	rst  $38                                         ; $4f12: $ff
	rst  $38                                         ; $4f13: $ff
	rst  $38                                         ; $4f14: $ff
	rst  $38                                         ; $4f15: $ff
	cp   $7a                                         ; $4f16: $fe $7a
	call $ef97                                       ; $4f18: $cd $97 $ef
	rst  $38                                         ; $4f1b: $ff
	rst  $38                                         ; $4f1c: $ff
	rst  $38                                         ; $4f1d: $ff
	cp   $95                                         ; $4f1e: $fe $95
	ld   de, $1111                                   ; $4f20: $11 $11 $11
	ld   de, $1111                                   ; $4f23: $11 $11 $11
	ld   de, $1111                                   ; $4f26: $11 $11 $11
	ld   a, a                                        ; $4f29: $7f
	rst  $38                                         ; $4f2a: $ff
	rst  $38                                         ; $4f2b: $ff
	rst  $38                                         ; $4f2c: $ff
	rst  $38                                         ; $4f2d: $ff
	rst  $38                                         ; $4f2e: $ff
	db   $fd                                         ; $4f2f: $fd
	rst  $38                                         ; $4f30: $ff
	ret  c                                           ; $4f31: $d8

	ld   a, l                                        ; $4f32: $7d
	rst  $38                                         ; $4f33: $ff
	rst  $38                                         ; $4f34: $ff
	rst  $38                                         ; $4f35: $ff
	rst  $38                                         ; $4f36: $ff
	rst  $38                                         ; $4f37: $ff
	rst  $20                                         ; $4f38: $e7
	ld   sp, $1111                                   ; $4f39: $31 $11 $11
	ld   de, $1111                                   ; $4f3c: $11 $11 $11
	ld   de, $1111                                   ; $4f3f: $11 $11 $11
	ld   a, [de]                                     ; $4f42: $1a
	rst  $38                                         ; $4f43: $ff
	rst  $38                                         ; $4f44: $ff
	rst  $38                                         ; $4f45: $ff
	rst  $38                                         ; $4f46: $ff
	rst  $38                                         ; $4f47: $ff
	rst  $38                                         ; $4f48: $ff
	rst  $38                                         ; $4f49: $ff
	db   $eb                                         ; $4f4a: $eb
	ld   a, c                                        ; $4f4b: $79
	xor  $ff                                         ; $4f4c: $ee $ff
	rst  $38                                         ; $4f4e: $ff
	rst  $38                                         ; $4f4f: $ff
	rst  $38                                         ; $4f50: $ff
	ld   [$2162], a                                  ; $4f51: $ea $62 $21
	ld   de, $1111                                   ; $4f54: $11 $11 $11
	ld   de, $1111                                   ; $4f57: $11 $11 $11
	ld   de, $7d65                                   ; $4f5a: $11 $65 $7d
	rst  $38                                         ; $4f5d: $ff
	rst  $38                                         ; $4f5e: $ff
	rst  $38                                         ; $4f5f: $ff
	rst  $38                                         ; $4f60: $ff
	rst  $38                                         ; $4f61: $ff
	rst  $38                                         ; $4f62: $ff
	cp   h                                           ; $4f63: $bc
	xor  a                                           ; $4f64: $af
	jp   hl                                          ; $4f65: $e9


	rst  $38                                         ; $4f66: $ff
	rst  $38                                         ; $4f67: $ff
	rst  $38                                         ; $4f68: $ff
	rst  $38                                         ; $4f69: $ff
	rst  $30                                         ; $4f6a: $f7
	add  [hl]                                        ; $4f6b: $86
	ld   de, $1111                                   ; $4f6c: $11 $11 $11
	ld   de, $1111                                   ; $4f6f: $11 $11 $11
	ld   de, $1111                                   ; $4f72: $11 $11 $11
	ld   a, [de]                                     ; $4f75: $1a
	rst  $38                                         ; $4f76: $ff
	rst  $38                                         ; $4f77: $ff
	rst  $38                                         ; $4f78: $ff
	rst  $38                                         ; $4f79: $ff
	rst  $38                                         ; $4f7a: $ff
	rst  $38                                         ; $4f7b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f7c: $cf
	ei                                               ; $4f7d: $fb
	xor  e                                           ; $4f7e: $ab
	rst  $28                                         ; $4f7f: $ef
	rst  $38                                         ; $4f80: $ff
	rst  $38                                         ; $4f81: $ff
	rst  $38                                         ; $4f82: $ff
	db   $fd                                         ; $4f83: $fd
	xor  c                                           ; $4f84: $a9
	ld   b, c                                        ; $4f85: $41
	ld   de, $1111                                   ; $4f86: $11 $11 $11
	ld   de, $1111                                   ; $4f89: $11 $11 $11
	ld   de, $6311                                   ; $4f8c: $11 $11 $63
	ld   e, a                                        ; $4f8f: $5f
	rst  $38                                         ; $4f90: $ff
	rst  $38                                         ; $4f91: $ff
	rst  $38                                         ; $4f92: $ff
	rst  $38                                         ; $4f93: $ff
	rst  $38                                         ; $4f94: $ff
	ld   a, [$ecce]                                  ; $4f95: $fa $ce $ec
	rst  JumpTable                                         ; $4f98: $df
	rst  $38                                         ; $4f99: $ff
	rst  $38                                         ; $4f9a: $ff
	rst  $38                                         ; $4f9b: $ff
	rst  $38                                         ; $4f9c: $ff
	or   [hl]                                        ; $4f9d: $b6
	ld   [hl+], a                                    ; $4f9e: $22
	ld   de, $1111                                   ; $4f9f: $11 $11 $11
	ld   de, $1111                                   ; $4fa2: $11 $11 $11
	ld   de, $1211                                   ; $4fa5: $11 $11 $12
	db   $fd                                         ; $4fa8: $fd
	rst  $38                                         ; $4fa9: $ff
	rst  $38                                         ; $4faa: $ff
	rst  $38                                         ; $4fab: $ff
	rst  $38                                         ; $4fac: $ff
	rst  $38                                         ; $4fad: $ff
	db   $fd                                         ; $4fae: $fd
	cp   a                                           ; $4faf: $bf
	db   $fc                                         ; $4fb0: $fc
	rst  $28                                         ; $4fb1: $ef
	rst  $38                                         ; $4fb2: $ff
	rst  $38                                         ; $4fb3: $ff
	rst  $38                                         ; $4fb4: $ff
	db   $fc                                         ; $4fb5: $fc
	and  l                                           ; $4fb6: $a5
	ld   sp, $1111                                   ; $4fb7: $31 $11 $11
	ld   de, $1111                                   ; $4fba: $11 $11 $11
	ld   de, $1111                                   ; $4fbd: $11 $11 $11
	inc  h                                           ; $4fc0: $24
	ld   a, [hl-]                                    ; $4fc1: $3a
	rst  $38                                         ; $4fc2: $ff
	rst  $38                                         ; $4fc3: $ff
	rst  $38                                         ; $4fc4: $ff
	rst  $38                                         ; $4fc5: $ff
	db   $fc                                         ; $4fc6: $fc
	rst  $28                                         ; $4fc7: $ef
	rst  $38                                         ; $4fc8: $ff
	ld   l, c                                        ; $4fc9: $69
	rst  $38                                         ; $4fca: $ff
	rst  $38                                         ; $4fcb: $ff
	rst  $38                                         ; $4fcc: $ff
	rst  $38                                         ; $4fcd: $ff
	ld   a, [$1143]                                  ; $4fce: $fa $43 $11
	ld   de, $1111                                   ; $4fd1: $11 $11 $11
	ld   de, $1111                                   ; $4fd4: $11 $11 $11
	ld   de, $3711                                   ; $4fd7: $11 $11 $37
	sbc  l                                           ; $4fda: $9d
	rst  $38                                         ; $4fdb: $ff
	rst  $38                                         ; $4fdc: $ff
	rst  $38                                         ; $4fdd: $ff
	rst  $38                                         ; $4fde: $ff
	rst  $38                                         ; $4fdf: $ff
	ld   [$ffdf], a                                  ; $4fe0: $ea $df $ff
	rst  $38                                         ; $4fe3: $ff
	rst  $38                                         ; $4fe4: $ff
	rst  $38                                         ; $4fe5: $ff
	rst  $38                                         ; $4fe6: $ff
	cp   b                                           ; $4fe7: $b8
	ld   h, c                                        ; $4fe8: $61
	ld   de, $1111                                   ; $4fe9: $11 $11 $11
	ld   de, $1111                                   ; $4fec: $11 $11 $11
	ld   de, $1111                                   ; $4fef: $11 $11 $11
	ld   a, a                                        ; $4ff2: $7f
	rst  $38                                         ; $4ff3: $ff
	rst  $38                                         ; $4ff4: $ff
	rst  $38                                         ; $4ff5: $ff
	rst  $38                                         ; $4ff6: $ff
	rst  $38                                         ; $4ff7: $ff
	rst  $38                                         ; $4ff8: $ff
	cp   $ae                                         ; $4ff9: $fe $ae
	rst  $38                                         ; $4ffb: $ff
	rst  $38                                         ; $4ffc: $ff
	rst  $38                                         ; $4ffd: $ff
	rst  $38                                         ; $4ffe: $ff
	ld   hl, sp+$52                                  ; $4fff: $f8 $52
	ld   de, $1111                                   ; $5001: $11 $11 $11
	ld   de, $1111                                   ; $5004: $11 $11 $11
	ld   de, $1111                                   ; $5007: $11 $11 $11
	ld   a, [hl]                                     ; $500a: $7e
	rst  JumpTable                                         ; $500b: $df
	rst  $38                                         ; $500c: $ff
	rst  $38                                         ; $500d: $ff
	rst  $38                                         ; $500e: $ff
	rst  $38                                         ; $500f: $ff
	rst  $38                                         ; $5010: $ff
	ld   hl, sp-$41                                  ; $5011: $f8 $bf
	rst  $38                                         ; $5013: $ff
	rst  $38                                         ; $5014: $ff
	rst  $38                                         ; $5015: $ff
	rst  $38                                         ; $5016: $ff
	ld   a, [$1131]                                  ; $5017: $fa $31 $11
	ld   de, $1111                                   ; $501a: $11 $11 $11
	ld   de, $1111                                   ; $501d: $11 $11 $11
	ld   de, $2e11                                   ; $5020: $11 $11 $2e
	rst  $38                                         ; $5023: $ff
	rst  $38                                         ; $5024: $ff
	rst  $38                                         ; $5025: $ff
	rst  $38                                         ; $5026: $ff
	rst  $38                                         ; $5027: $ff
	rst  $38                                         ; $5028: $ff
	rst  $38                                         ; $5029: $ff
	rst  $38                                         ; $502a: $ff
	rst  $38                                         ; $502b: $ff
	rst  $38                                         ; $502c: $ff
	rst  $38                                         ; $502d: $ff
	rst  $38                                         ; $502e: $ff
	cp   c                                           ; $502f: $b9
	ld   d, c                                        ; $5030: $51
	ld   de, $1111                                   ; $5031: $11 $11 $11
	ld   de, $1111                                   ; $5034: $11 $11 $11
	ld   de, $1411                                   ; $5037: $11 $11 $14
	rst  $38                                         ; $503a: $ff
	rst  $38                                         ; $503b: $ff
	rst  $38                                         ; $503c: $ff
	rst  $38                                         ; $503d: $ff
	rst  $38                                         ; $503e: $ff
	rst  $38                                         ; $503f: $ff
	rst  $28                                         ; $5040: $ef
	rst  $38                                         ; $5041: $ff
	rst  $38                                         ; $5042: $ff
	rst  $38                                         ; $5043: $ff
	rst  $38                                         ; $5044: $ff
	rst  $38                                         ; $5045: $ff
	ld   hl, sp+$32                                  ; $5046: $f8 $32
	ld   de, $1111                                   ; $5048: $11 $11 $11
	ld   de, $1111                                   ; $504b: $11 $11 $11
	ld   de, $1111                                   ; $504e: $11 $11 $11
	ld   a, a                                        ; $5051: $7f
	rst  $38                                         ; $5052: $ff
	rst  $38                                         ; $5053: $ff
	rst  $38                                         ; $5054: $ff
	rst  $38                                         ; $5055: $ff
	rst  $38                                         ; $5056: $ff
	rst  $38                                         ; $5057: $ff
	rst  $38                                         ; $5058: $ff
	rst  $38                                         ; $5059: $ff
	rst  $38                                         ; $505a: $ff
	rst  $38                                         ; $505b: $ff
	rst  $38                                         ; $505c: $ff
	ld   a, [$1163]                                  ; $505d: $fa $63 $11
	ld   de, $1111                                   ; $5060: $11 $11 $11
	ld   de, $1111                                   ; $5063: $11 $11 $11
	ld   de, $af11                                   ; $5066: $11 $11 $af
	rst  $38                                         ; $5069: $ff
	rst  $38                                         ; $506a: $ff
	rst  $38                                         ; $506b: $ff
	rst  $38                                         ; $506c: $ff
	rst  $38                                         ; $506d: $ff
	rst  $38                                         ; $506e: $ff
	rst  $38                                         ; $506f: $ff
	rst  $38                                         ; $5070: $ff
	rst  $38                                         ; $5071: $ff
	rst  $38                                         ; $5072: $ff
	ei                                               ; $5073: $fb
	adc  c                                           ; $5074: $89
	ld   [hl], l                                     ; $5075: $75
	ld   de, $1111                                   ; $5076: $11 $11 $11
	ld   de, $1111                                   ; $5079: $11 $11 $11
	ld   de, $5911                                   ; $507c: $11 $11 $59
	rst  JumpTable                                         ; $507f: $df
	rst  $38                                         ; $5080: $ff
	rst  $38                                         ; $5081: $ff
	rst  $38                                         ; $5082: $ff
	rst  $38                                         ; $5083: $ff
	rst  $38                                         ; $5084: $ff
	rst  $38                                         ; $5085: $ff
	rst  $38                                         ; $5086: $ff
	rst  $38                                         ; $5087: $ff
	rst  $38                                         ; $5088: $ff
	db   $fc                                         ; $5089: $fc
	and  a                                           ; $508a: $a7
	halt                                             ; $508b: $76
	ld   de, $1111                                   ; $508c: $11 $11 $11
	ld   de, $1111                                   ; $508f: $11 $11 $11
	ld   de, $9a12                                   ; $5092: $11 $12 $9a
	sbc  $ff                                         ; $5095: $de $ff
	rst  $38                                         ; $5097: $ff
	rst  $28                                         ; $5098: $ef
	cp   $ff                                         ; $5099: $fe $ff
	rst  $38                                         ; $509b: $ff
	rst  $38                                         ; $509c: $ff
	rst  $38                                         ; $509d: $ff
	rst  $38                                         ; $509e: $ff
	db   $fc                                         ; $509f: $fc
	sub  h                                           ; $50a0: $94
	ld   [hl], d                                     ; $50a1: $72
	ld   de, $1111                                   ; $50a2: $11 $11 $11
	ld   de, $1111                                   ; $50a5: $11 $11 $11
	ld   de, $3c11                                   ; $50a8: $11 $11 $3c
	rst  $28                                         ; $50ab: $ef
	rst  $38                                         ; $50ac: $ff
	rst  $38                                         ; $50ad: $ff
	rst  $38                                         ; $50ae: $ff
	rst  $38                                         ; $50af: $ff
	rst  $28                                         ; $50b0: $ef
	rst  $38                                         ; $50b1: $ff
	rst  $38                                         ; $50b2: $ff
	rst  JumpTable                                         ; $50b3: $df
	db   $fc                                         ; $50b4: $fc
	ei                                               ; $50b5: $fb
	sbc  c                                           ; $50b6: $99
	inc  hl                                          ; $50b7: $23
	ld   de, $1111                                   ; $50b8: $11 $11 $11
	ld   de, $1111                                   ; $50bb: $11 $11 $11
	ld   de, $ff1f                                   ; $50be: $11 $1f $ff
	rst  $38                                         ; $50c1: $ff
	rst  $38                                         ; $50c2: $ff
	rst  JumpTable                                         ; $50c3: $df
	rst  $38                                         ; $50c4: $ff
	ld   a, [$ffff]                                  ; $50c5: $fa $ff $ff
	db   $fd                                         ; $50c8: $fd
	rst  $28                                         ; $50c9: $ef
	cp   $79                                         ; $50ca: $fe $79
	ld   de, $1111                                   ; $50cc: $11 $11 $11
	ld   de, $2111                                   ; $50cf: $11 $11 $21
	ld   de, $7a11                                   ; $50d2: $11 $11 $7a
	sbc  l                                           ; $50d5: $9d
	rst  $38                                         ; $50d6: $ff
	rst  $38                                         ; $50d7: $ff
	rst  $38                                         ; $50d8: $ff
	rst  $38                                         ; $50d9: $ff
	rst  $38                                         ; $50da: $ff
	rst  JumpTable                                         ; $50db: $df
	adc  a                                           ; $50dc: $8f
	rst  $38                                         ; $50dd: $ff
	rst  $38                                         ; $50de: $ff
	jp   hl                                          ; $50df: $e9


	and  l                                           ; $50e0: $a5
	ld   b, c                                        ; $50e1: $41
	ld   de, $1111                                   ; $50e2: $11 $11 $11
	ld   de, $1111                                   ; $50e5: $11 $11 $11
	inc  de                                          ; $50e8: $13
	ld   [hl], e                                     ; $50e9: $73
	cp   [hl]                                        ; $50ea: $be
	rst  $38                                         ; $50eb: $ff
	rst  $38                                         ; $50ec: $ff
	rst  $38                                         ; $50ed: $ff
	ei                                               ; $50ee: $fb
	rst  $38                                         ; $50ef: $ff
	rst  $38                                         ; $50f0: $ff
	rst  $38                                         ; $50f1: $ff
	ei                                               ; $50f2: $fb
	rst  $38                                         ; $50f3: $ff
	sub  a                                           ; $50f4: $97
	ld   d, c                                        ; $50f5: $51
	ld   hl, $1131                                   ; $50f6: $21 $31 $11
	ld   de, $1111                                   ; $50f9: $11 $11 $11
	ld   de, $7715                                   ; $50fc: $11 $15 $77
	rst  $28                                         ; $50ff: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5100: $cf
	db   $fc                                         ; $5101: $fc
	rst  $38                                         ; $5102: $ff
	rst  $38                                         ; $5103: $ff
	rst  $38                                         ; $5104: $ff
	rst  $38                                         ; $5105: $ff
	db   $fc                                         ; $5106: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5107: $cf
	ret  z                                           ; $5108: $c8

	ret                                              ; $5109: $c9


	halt                                             ; $510a: $76
	ld   hl, $1111                                   ; $510b: $21 $11 $11
	ld   de, $1111                                   ; $510e: $11 $11 $11
	inc  de                                          ; $5111: $13
	ld   a, c                                        ; $5112: $79
	xor  b                                           ; $5113: $a8
	adc  $cf                                         ; $5114: $ce $cf
	rst  $38                                         ; $5116: $ff
	rst  $38                                         ; $5117: $ff
	rst  $28                                         ; $5118: $ef
	rst  $38                                         ; $5119: $ff
	rst  $38                                         ; $511a: $ff
	rst  $38                                         ; $511b: $ff
	rst  $38                                         ; $511c: $ff
	ld   [hl], a                                     ; $511d: $77
	ld   d, e                                        ; $511e: $53
	ld   de, $1411                                   ; $511f: $11 $11 $14
	ld   sp, $1111                                   ; $5122: $31 $11 $11
	inc  d                                           ; $5125: $14
	dec  h                                           ; $5126: $25
	cp   h                                           ; $5127: $bc
	res  7, e                                        ; $5128: $cb $bb
	rst  $28                                         ; $512a: $ef
	rst  $38                                         ; $512b: $ff
	cp   $cf                                         ; $512c: $fe $cf
	rst  $38                                         ; $512e: $ff
	cp   $da                                         ; $512f: $fe $da
	xor  c                                           ; $5131: $a9
	ld   [hl], h                                     ; $5132: $74
	ld   [hl-], a                                    ; $5133: $32
	inc  d                                           ; $5134: $14
	ld   b, h                                        ; $5135: $44
	ld   hl, $1111                                   ; $5136: $21 $11 $11
	ld   de, $db8a                                   ; $5139: $11 $8a $db
	sub  a                                           ; $513c: $97
	ld   a, h                                        ; $513d: $7c
	cp   a                                           ; $513e: $bf
	db   $fd                                         ; $513f: $fd
	call $ffff                                       ; $5140: $cd $ff $ff
	jp   z, $abcb                                    ; $5143: $ca $cb $ab

	sbc  b                                           ; $5146: $98
	ld   h, l                                        ; $5147: $65
	ld   b, c                                        ; $5148: $41
	ld   [hl-], a                                    ; $5149: $32
	ld   [de], a                                     ; $514a: $12
	ld   de, $3711                                   ; $514b: $11 $11 $37
	sbc  b                                           ; $514e: $98
	ld   h, l                                        ; $514f: $65
	ld   e, c                                        ; $5150: $59
	xor  [hl]                                        ; $5151: $ae
	reti                                             ; $5152: $d9


	ld   [$dcdf], a                                  ; $5153: $ea $df $dc
	call z, $cccd                                    ; $5156: $cc $cd $cc
	adc  b                                           ; $5159: $88
	sub  a                                           ; $515a: $97
	add  a                                           ; $515b: $87
	halt                                             ; $515c: $76
	ld   d, h                                        ; $515d: $54
	ld   de, $4911                                   ; $515e: $11 $11 $49
	add  [hl]                                        ; $5161: $86
	ld   d, h                                        ; $5162: $54
	ld   h, a                                        ; $5163: $67
	cp   l                                           ; $5164: $bd
	xor  d                                           ; $5165: $aa
	and  a                                           ; $5166: $a7
	xor  e                                           ; $5167: $ab
	xor  l                                           ; $5168: $ad
	xor  h                                           ; $5169: $ac
	ld   [$79d9], a                                  ; $516a: $ea $d9 $79
	adc  c                                           ; $516d: $89
	xor  b                                           ; $516e: $a8
	sbc  c                                           ; $516f: $99
	ld   a, c                                        ; $5170: $79
	ld   [hl-], a                                    ; $5171: $32
	ld   sp, $9a56                                   ; $5172: $31 $56 $9a
	adc  c                                           ; $5175: $89
	ld   h, h                                        ; $5176: $64
	halt                                             ; $5177: $76
	ld   e, c                                        ; $5178: $59
	cp   e                                           ; $5179: $bb
	xor  d                                           ; $517a: $aa
	sbc  d                                           ; $517b: $9a
	xor  d                                           ; $517c: $aa
	sbc  c                                           ; $517d: $99
	xor  c                                           ; $517e: $a9
	cp   h                                           ; $517f: $bc
	xor  e                                           ; $5180: $ab
	sub  a                                           ; $5181: $97
	ld   h, l                                        ; $5182: $65
	ld   d, [hl]                                     ; $5183: $56
	ld   l, b                                        ; $5184: $68
	sbc  b                                           ; $5185: $98
	xor  b                                           ; $5186: $a8
	ld   [hl], a                                     ; $5187: $77
	ld   d, l                                        ; $5188: $55
	ld   d, [hl]                                     ; $5189: $56
	adc  b                                           ; $518a: $88
	ld   [hl], a                                     ; $518b: $77
	ld   a, b                                        ; $518c: $78
	xor  d                                           ; $518d: $aa
	cp   c                                           ; $518e: $b9
	xor  b                                           ; $518f: $a8
	ld   a, b                                        ; $5190: $78
	adc  b                                           ; $5191: $88
	adc  d                                           ; $5192: $8a
	sbc  b                                           ; $5193: $98
	sub  a                                           ; $5194: $97
	ld   a, c                                        ; $5195: $79
	adc  c                                           ; $5196: $89
	add  a                                           ; $5197: $87
	sbc  b                                           ; $5198: $98
	sbc  c                                           ; $5199: $99
	ld   a, b                                        ; $519a: $78
	sbc  b                                           ; $519b: $98
	sub  a                                           ; $519c: $97
	ld   h, [hl]                                     ; $519d: $66
	ld   l, b                                        ; $519e: $68
	sbc  b                                           ; $519f: $98
	sub  a                                           ; $51a0: $97
	sbc  d                                           ; $51a1: $9a
	sbc  d                                           ; $51a2: $9a
	sub  [hl]                                        ; $51a3: $96
	ld   h, [hl]                                     ; $51a4: $66
	ld   a, c                                        ; $51a5: $79
	adc  c                                           ; $51a6: $89
	sbc  d                                           ; $51a7: $9a
	cp   c                                           ; $51a8: $b9
	add  a                                           ; $51a9: $87

Call_0c3_51aa:
	ld   h, a                                        ; $51aa: $67
	ld   a, b                                        ; $51ab: $78
	xor  c                                           ; $51ac: $a9
	xor  d                                           ; $51ad: $aa
	adc  c                                           ; $51ae: $89
	ld   [hl], l                                     ; $51af: $75
	ld   d, l                                        ; $51b0: $55
	ld   a, d                                        ; $51b1: $7a
	xor  e                                           ; $51b2: $ab
	sbc  b                                           ; $51b3: $98
	ld   h, h                                        ; $51b4: $64
	ld   h, a                                        ; $51b5: $67
	adc  d                                           ; $51b6: $8a
	xor  d                                           ; $51b7: $aa
	sbc  c                                           ; $51b8: $99
	halt                                             ; $51b9: $76
	ld   [hl], a                                     ; $51ba: $77
	adc  c                                           ; $51bb: $89
	xor  d                                           ; $51bc: $aa
	xor  b                                           ; $51bd: $a8
	sub  a                                           ; $51be: $97
	ld   a, c                                        ; $51bf: $79
	ld   a, b                                        ; $51c0: $78
	sbc  c                                           ; $51c1: $99
	xor  c                                           ; $51c2: $a9
	ld   [hl], a                                     ; $51c3: $77
	ld   [hl], a                                     ; $51c4: $77
	adc  c                                           ; $51c5: $89
	sbc  c                                           ; $51c6: $99
	ld   [hl], a                                     ; $51c7: $77
	ld   h, a                                        ; $51c8: $67
	adc  b                                           ; $51c9: $88
	sbc  c                                           ; $51ca: $99
	sbc  b                                           ; $51cb: $98
	add  a                                           ; $51cc: $87
	ld   [hl], a                                     ; $51cd: $77
	ld   a, b                                        ; $51ce: $78
	sbc  c                                           ; $51cf: $99
	sbc  d                                           ; $51d0: $9a
	sbc  b                                           ; $51d1: $98
	adc  b                                           ; $51d2: $88
	ld   h, a                                        ; $51d3: $67
	ld   a, b                                        ; $51d4: $78
	sbc  c                                           ; $51d5: $99
	xor  d                                           ; $51d6: $aa
	sbc  b                                           ; $51d7: $98
	halt                                             ; $51d8: $76
	halt                                             ; $51d9: $76
	ld   l, b                                        ; $51da: $68
	sbc  c                                           ; $51db: $99
	sbc  b                                           ; $51dc: $98
	add  a                                           ; $51dd: $87
	halt                                             ; $51de: $76
	ld   [hl], a                                     ; $51df: $77
	adc  b                                           ; $51e0: $88
	adc  c                                           ; $51e1: $89
	sbc  b                                           ; $51e2: $98
	add  [hl]                                        ; $51e3: $86
	ld   a, b                                        ; $51e4: $78
	ld   a, b                                        ; $51e5: $78
	sbc  b                                           ; $51e6: $98
	xor  c                                           ; $51e7: $a9
	adc  b                                           ; $51e8: $88
	ld   [hl], a                                     ; $51e9: $77
	adc  b                                           ; $51ea: $88
	sbc  b                                           ; $51eb: $98
	add  a                                           ; $51ec: $87
	ld   [hl], a                                     ; $51ed: $77
	ld   [hl], a                                     ; $51ee: $77
	ld   [hl], a                                     ; $51ef: $77
	ld   [hl], a                                     ; $51f0: $77
	ld   a, b                                        ; $51f1: $78
	adc  b                                           ; $51f2: $88
	adc  b                                           ; $51f3: $88
	add  a                                           ; $51f4: $87
	ld   a, b                                        ; $51f5: $78
	sbc  b                                           ; $51f6: $98
	ld   a, b                                        ; $51f7: $78
	sbc  c                                           ; $51f8: $99
	sbc  c                                           ; $51f9: $99
	adc  c                                           ; $51fa: $89
	add  a                                           ; $51fb: $87
	ld   a, b                                        ; $51fc: $78
	adc  c                                           ; $51fd: $89
	sbc  c                                           ; $51fe: $99
	sbc  b                                           ; $51ff: $98
	sbc  c                                           ; $5200: $99
	sbc  c                                           ; $5201: $99
	add  a                                           ; $5202: $87
	ld   [hl], a                                     ; $5203: $77
	ld   [hl], a                                     ; $5204: $77
	adc  b                                           ; $5205: $88
	sbc  c                                           ; $5206: $99
	ld   a, b                                        ; $5207: $78
	adc  b                                           ; $5208: $88
	adc  b                                           ; $5209: $88
	add  a                                           ; $520a: $87
	ld   [hl], a                                     ; $520b: $77
	ld   [hl], a                                     ; $520c: $77
	adc  b                                           ; $520d: $88
	sbc  c                                           ; $520e: $99
	sbc  b                                           ; $520f: $98
	adc  b                                           ; $5210: $88
	adc  b                                           ; $5211: $88
	adc  b                                           ; $5212: $88
	add  a                                           ; $5213: $87
	adc  c                                           ; $5214: $89
	sbc  b                                           ; $5215: $98
	sbc  b                                           ; $5216: $98
	adc  b                                           ; $5217: $88
	ld   [hl], a                                     ; $5218: $77
	adc  b                                           ; $5219: $88
	sbc  c                                           ; $521a: $99
	add  a                                           ; $521b: $87
	ld   [hl], a                                     ; $521c: $77
	ld   [hl], a                                     ; $521d: $77
	adc  b                                           ; $521e: $88
	adc  b                                           ; $521f: $88
	adc  c                                           ; $5220: $89
	adc  b                                           ; $5221: $88
	adc  b                                           ; $5222: $88
	adc  b                                           ; $5223: $88
	ld   a, b                                        ; $5224: $78
	adc  b                                           ; $5225: $88
	sbc  c                                           ; $5226: $99
	adc  b                                           ; $5227: $88
	adc  b                                           ; $5228: $88
	adc  b                                           ; $5229: $88
	adc  b                                           ; $522a: $88
	adc  b                                           ; $522b: $88
	adc  c                                           ; $522c: $89
	adc  b                                           ; $522d: $88
	adc  b                                           ; $522e: $88
	adc  b                                           ; $522f: $88
	ld   a, b                                        ; $5230: $78
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
	sbc  b                                           ; $523d: $98
	sbc  c                                           ; $523e: $99
	adc  b                                           ; $523f: $88
	adc  b                                           ; $5240: $88
	adc  c                                           ; $5241: $89
	sbc  c                                           ; $5242: $99
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
	add  c                                           ; $525e: $81
	ld   de, $1111                                   ; $525f: $11 $11 $11
	ld   de, $1111                                   ; $5262: $11 $11 $11
	ld   de, $1111                                   ; $5265: $11 $11 $11
	ld   de, $1111                                   ; $5268: $11 $11 $11
	ld   de, $1111                                   ; $526b: $11 $11 $11
	ld   de, $1111                                   ; $526e: $11 $11 $11
	ld   de, $1111                                   ; $5271: $11 $11 $11
	ld   de, $1111                                   ; $5274: $11 $11 $11
	ld   de, $1111                                   ; $5277: $11 $11 $11
	ld   de, $1111                                   ; $527a: $11 $11 $11
	ld   de, $1111                                   ; $527d: $11 $11 $11
	ld   de, $1111                                   ; $5280: $11 $11 $11
	ld   de, $1111                                   ; $5283: $11 $11 $11
	ld   de, $1111                                   ; $5286: $11 $11 $11
	ld   de, $1111                                   ; $5289: $11 $11 $11
	ld   de, $0011                                   ; $528c: $11 $11 $00
	ld   c, b                                        ; $528f: $48
	ld   de, $1111                                   ; $5290: $11 $11 $11
	ld   de, $1111                                   ; $5293: $11 $11 $11
	ld   de, $1111                                   ; $5296: $11 $11 $11
	ld   de, $5413                                   ; $5299: $11 $13 $54
	ld   d, h                                        ; $529c: $54
	ld   d, h                                        ; $529d: $54
	ld   b, c                                        ; $529e: $41
	rra                                              ; $529f: $1f
	rst  $38                                         ; $52a0: $ff
	pop  af                                          ; $52a1: $f1
	ld   de, $1311                                   ; $52a2: $11 $11 $13
	ld   h, c                                        ; $52a5: $61
	ld   de, $de1c                                   ; $52a6: $11 $1c $de
	xor  h                                           ; $52a9: $ac
	sbc  $a1                                         ; $52aa: $de $a1
	ld   de, $1111                                   ; $52ac: $11 $11 $11
	ld   de, $1111                                   ; $52af: $11 $11 $11
	ld   de, $1111                                   ; $52b2: $11 $11 $11
	ld   de, $1111                                   ; $52b5: $11 $11 $11
	ld   de, $5411                                   ; $52b8: $11 $11 $54
	ld   b, h                                        ; $52bb: $44
	ld   h, e                                        ; $52bc: $63
	ld   de, $5454                                   ; $52bd: $11 $54 $54
	ld   h, a                                        ; $52c0: $67
	ld   [hl], d                                     ; $52c1: $72
	ld   de, $1111                                   ; $52c2: $11 $11 $11
	ld   de, $1112                                   ; $52c5: $11 $12 $11
	ld   [de], a                                     ; $52c8: $12
	ld   de, $1111                                   ; $52c9: $11 $11 $11
	ld   h, [hl]                                     ; $52cc: $66
	halt                                             ; $52cd: $76
	ld   b, e                                        ; $52ce: $43
	ld   de, $8888                                   ; $52cf: $11 $88 $88
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
	adc  c                                           ; $52e3: $89
	adc  b                                           ; $52e4: $88
	adc  b                                           ; $52e5: $88
	adc  b                                           ; $52e6: $88
	adc  b                                           ; $52e7: $88
	adc  b                                           ; $52e8: $88
	adc  b                                           ; $52e9: $88
	sbc  b                                           ; $52ea: $98
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
	add  a                                           ; $52f5: $87
	adc  b                                           ; $52f6: $88
	adc  b                                           ; $52f7: $88
	adc  b                                           ; $52f8: $88
	adc  b                                           ; $52f9: $88
	sbc  b                                           ; $52fa: $98
	adc  b                                           ; $52fb: $88
	adc  b                                           ; $52fc: $88
	adc  b                                           ; $52fd: $88
	adc  b                                           ; $52fe: $88
	adc  b                                           ; $52ff: $88
	adc  b                                           ; $5300: $88
	adc  c                                           ; $5301: $89
	sbc  b                                           ; $5302: $98
	add  a                                           ; $5303: $87
	ld   a, b                                        ; $5304: $78
	adc  b                                           ; $5305: $88
	add  a                                           ; $5306: $87
	ld   a, b                                        ; $5307: $78
	adc  c                                           ; $5308: $89
	adc  b                                           ; $5309: $88
	ld   [hl], a                                     ; $530a: $77
	adc  c                                           ; $530b: $89
	adc  b                                           ; $530c: $88
	add  a                                           ; $530d: $87
	ld   a, b                                        ; $530e: $78
	sbc  c                                           ; $530f: $99
	adc  b                                           ; $5310: $88
	adc  b                                           ; $5311: $88
	add  a                                           ; $5312: $87
	adc  c                                           ; $5313: $89
	sbc  b                                           ; $5314: $98
	adc  c                                           ; $5315: $89
	adc  b                                           ; $5316: $88
	adc  b                                           ; $5317: $88
	adc  b                                           ; $5318: $88
	adc  b                                           ; $5319: $88
	ld   [hl], a                                     ; $531a: $77
	adc  b                                           ; $531b: $88
	adc  c                                           ; $531c: $89
	add  a                                           ; $531d: $87
	ld   a, c                                        ; $531e: $79
	adc  b                                           ; $531f: $88
	adc  b                                           ; $5320: $88
	ld   [hl], a                                     ; $5321: $77
	sbc  c                                           ; $5322: $99
	adc  b                                           ; $5323: $88
	add  a                                           ; $5324: $87
	ld   a, b                                        ; $5325: $78
	sbc  b                                           ; $5326: $98
	adc  b                                           ; $5327: $88
	sbc  c                                           ; $5328: $99
	sbc  b                                           ; $5329: $98
	ld   [hl], a                                     ; $532a: $77
	adc  c                                           ; $532b: $89
	sbc  b                                           ; $532c: $98
	ld   [hl], a                                     ; $532d: $77
	ld   a, b                                        ; $532e: $78
	adc  b                                           ; $532f: $88
	adc  b                                           ; $5330: $88
	ld   a, b                                        ; $5331: $78
	add  a                                           ; $5332: $87
	ld   a, b                                        ; $5333: $78
	add  a                                           ; $5334: $87
	adc  c                                           ; $5335: $89
	adc  b                                           ; $5336: $88
	sbc  d                                           ; $5337: $9a
	ld   [hl], a                                     ; $5338: $77
	adc  b                                           ; $5339: $88
	sbc  b                                           ; $533a: $98
	adc  b                                           ; $533b: $88
	ld   [hl], a                                     ; $533c: $77
	adc  c                                           ; $533d: $89
	sbc  b                                           ; $533e: $98
	ld   [hl], a                                     ; $533f: $77
	ld   a, b                                        ; $5340: $78
	adc  b                                           ; $5341: $88
	sbc  b                                           ; $5342: $98
	ld   [hl], a                                     ; $5343: $77
	adc  c                                           ; $5344: $89
	adc  c                                           ; $5345: $89
	ld   [hl], a                                     ; $5346: $77
	adc  b                                           ; $5347: $88
	sbc  c                                           ; $5348: $99
	adc  b                                           ; $5349: $88
	sbc  c                                           ; $534a: $99
	ld   [hl], a                                     ; $534b: $77
	adc  c                                           ; $534c: $89
	ld   [hl], a                                     ; $534d: $77
	ld   a, b                                        ; $534e: $78
	ld   a, c                                        ; $534f: $79
	sbc  c                                           ; $5350: $99
	adc  b                                           ; $5351: $88
	sbc  b                                           ; $5352: $98
	ld   [hl], a                                     ; $5353: $77
	add  a                                           ; $5354: $87
	ld   h, a                                        ; $5355: $67
	sub  a                                           ; $5356: $97
	ld   a, b                                        ; $5357: $78
	sbc  c                                           ; $5358: $99
	sbc  e                                           ; $5359: $9b
	sub  a                                           ; $535a: $97
	ld   [hl], a                                     ; $535b: $77
	add  a                                           ; $535c: $87
	adc  b                                           ; $535d: $88
	ld   [hl], a                                     ; $535e: $77
	ld   a, c                                        ; $535f: $79
	sbc  b                                           ; $5360: $98
	sbc  c                                           ; $5361: $99
	add  a                                           ; $5362: $87
	ld   [hl], a                                     ; $5363: $77
	sbc  b                                           ; $5364: $98
	halt                                             ; $5365: $76
	adc  b                                           ; $5366: $88
	ld   a, c                                        ; $5367: $79
	sbc  c                                           ; $5368: $99
	adc  c                                           ; $5369: $89
	sub  a                                           ; $536a: $97
	adc  c                                           ; $536b: $89
	ld   [hl], a                                     ; $536c: $77
	adc  b                                           ; $536d: $88
	add  a                                           ; $536e: $87
	ld   a, b                                        ; $536f: $78
	adc  d                                           ; $5370: $8a
	adc  b                                           ; $5371: $88
	add  a                                           ; $5372: $87
	ld   a, b                                        ; $5373: $78
	xor  b                                           ; $5374: $a8
	ld   h, [hl]                                     ; $5375: $66

Jump_0c3_5376:
	ld   a, b                                        ; $5376: $78
	sbc  c                                           ; $5377: $99
	sbc  b                                           ; $5378: $98
	add  a                                           ; $5379: $87
	sbc  d                                           ; $537a: $9a
	add  [hl]                                        ; $537b: $86
	ld   d, a                                        ; $537c: $57
	sbc  c                                           ; $537d: $99
	xor  b                                           ; $537e: $a8
	ld   h, a                                        ; $537f: $67
	sbc  d                                           ; $5380: $9a
	xor  c                                           ; $5381: $a9
	add  [hl]                                        ; $5382: $86
	ld   l, b                                        ; $5383: $68
	ld   a, b                                        ; $5384: $78
	adc  b                                           ; $5385: $88
	ld   h, [hl]                                     ; $5386: $66
	xor  e                                           ; $5387: $ab
	and  a                                           ; $5388: $a7
	ld   h, a                                        ; $5389: $67
	ld   l, b                                        ; $538a: $68
	cp   c                                           ; $538b: $b9
	add  [hl]                                        ; $538c: $86
	ld   a, b                                        ; $538d: $78
	sbc  b                                           ; $538e: $98
	ld   a, b                                        ; $538f: $78
	sbc  b                                           ; $5390: $98
	ld   [hl], a                                     ; $5391: $77
	ld   h, l                                        ; $5392: $65
	sbc  e                                           ; $5393: $9b
	adc  c                                           ; $5394: $89
	add  [hl]                                        ; $5395: $86
	ld   d, h                                        ; $5396: $54

Jump_0c3_5397:
	adc  e                                           ; $5397: $8b
	xor  c                                           ; $5398: $a9
	ld   a, b                                        ; $5399: $78
	adc  c                                           ; $539a: $89
	sbc  c                                           ; $539b: $99
	add  a                                           ; $539c: $87
	halt                                             ; $539d: $76
	ld   h, a                                        ; $539e: $67
	sbc  c                                           ; $539f: $99
	ld   [hl], a                                     ; $53a0: $77
	adc  b                                           ; $53a1: $88
	ld   h, [hl]                                     ; $53a2: $66
	sbc  [hl]                                        ; $53a3: $9e
	cp   c                                           ; $53a4: $b9
	halt                                             ; $53a5: $76
	ld   a, c                                        ; $53a6: $79
	ret  z                                           ; $53a7: $c8

	inc  [hl]                                        ; $53a8: $34
	ld   a, b                                        ; $53a9: $78
	cp   l                                           ; $53aa: $bd
	ld   [hl], d                                     ; $53ab: $72
	dec  sp                                          ; $53ac: $3b
	or   [hl]                                        ; $53ad: $b6
	ld   b, l                                        ; $53ae: $45
	call z, $98a9                                    ; $53af: $cc $a9 $98
	xor  l                                           ; $53b2: $ad
	and  l                                           ; $53b3: $a5
	ld   d, h                                        ; $53b4: $54
	ld   d, a                                        ; $53b5: $57
	xor  b                                           ; $53b6: $a8
	ld   b, e                                        ; $53b7: $43
	adc  h                                           ; $53b8: $8c
	and  h                                           ; $53b9: $a4
	ld   e, h                                        ; $53ba: $5c
	cp   $75                                         ; $53bb: $fe $75
	ld   l, c                                        ; $53bd: $69
	cp   d                                           ; $53be: $ba
	sub  l                                           ; $53bf: $95
	inc  h                                           ; $53c0: $24
	ld   l, c                                        ; $53c1: $69
	and  a                                           ; $53c2: $a7
	ld   b, [hl]                                     ; $53c3: $46
	sbc  d                                           ; $53c4: $9a
	ld   h, h                                        ; $53c5: $64
	sbc  [hl]                                        ; $53c6: $9e
	db   $fd                                         ; $53c7: $fd
	sub  l                                           ; $53c8: $95
	ld   l, c                                        ; $53c9: $69
	cp   d                                           ; $53ca: $ba
	add  [hl]                                        ; $53cb: $86
	ld   [hl+], a                                    ; $53cc: $22
	ld   l, c                                        ; $53cd: $69
	ld   [hl], a                                     ; $53ce: $77
	adc  e                                           ; $53cf: $8b
	ld   b, e                                        ; $53d0: $43
	rst  $28                                         ; $53d1: $ef
	xor  d                                           ; $53d2: $aa
	ld   a, [$9a26]                                  ; $53d3: $fa $26 $9a
	add  a                                           ; $53d6: $87
	ld   h, h                                        ; $53d7: $64
	ld   [hl], $87                                   ; $53d8: $36 $87
	sbc  l                                           ; $53da: $9d
	and  c                                           ; $53db: $a1
	ld   e, [hl]                                     ; $53dc: $5e
	set  3, a                                        ; $53dd: $cb $df
	sub  d                                           ; $53df: $92
	ld   c, b                                        ; $53e0: $48
	sbc  b                                           ; $53e1: $98
	sub  a                                           ; $53e2: $97
	ld   hl, $bf47                                   ; $53e3: $21 $47 $bf
	sub  c                                           ; $53e6: $91
	ld   a, a                                        ; $53e7: $7f
	db   $ec                                         ; $53e8: $ec
	db   $ec                                         ; $53e9: $ec
	inc  [hl]                                        ; $53ea: $34
	adc  b                                           ; $53eb: $88
	add  a                                           ; $53ec: $87
	add  l                                           ; $53ed: $85
	inc  de                                          ; $53ee: $13
	ld   [hl], l                                     ; $53ef: $75
	adc  a                                           ; $53f0: $8f
	sub  c                                           ; $53f1: $91
	xor  a                                           ; $53f2: $af
	or   [hl]                                        ; $53f3: $b6
	rst  $28                                         ; $53f4: $ef
	ld   h, l                                        ; $53f5: $65
	add  a                                           ; $53f6: $87
	ld   d, l                                        ; $53f7: $55
	add  l                                           ; $53f8: $85
	inc  de                                          ; $53f9: $13
	ld   h, a                                        ; $53fa: $67
	rst  $28                                         ; $53fb: $ef
	ld   d, c                                        ; $53fc: $51
	cp   l                                           ; $53fd: $bd
	cp   a                                           ; $53fe: $bf
	ld   hl, sp+$15                                  ; $53ff: $f8 $15
	ld   d, [hl]                                     ; $5401: $56
	cp   c                                           ; $5402: $b9
	ld   h, d                                        ; $5403: $62
	inc  de                                          ; $5404: $13
	ld   l, l                                        ; $5405: $6d
	ld   a, [$fc16]                                  ; $5406: $fa $16 $fc
	sbc  a                                           ; $5409: $9f
	db   $e3                                         ; $540a: $e3
	ld   c, c                                        ; $540b: $49
	ld   [hl], a                                     ; $540c: $77
	ld   h, l                                        ; $540d: $65
	dec  [hl]                                        ; $540e: $35
	ld   d, c                                        ; $540f: $51
	ld   c, a                                        ; $5410: $4f
	pop  af                                          ; $5411: $f1
	ld   a, a                                        ; $5412: $7f
	or   $cf                                         ; $5413: $f6 $cf
	ld   b, l                                        ; $5415: $45
	add  l                                           ; $5416: $85
	ld   d, l                                        ; $5417: $55
	halt                                             ; $5418: $76
	ld   b, c                                        ; $5419: $41
	rla                                              ; $541a: $17
	rst  $38                                         ; $541b: $ff
	ld   d, $ed                                      ; $541c: $16 $ed
	ld   a, l                                        ; $541e: $7d
	rst  $30                                         ; $541f: $f7
	ld   d, [hl]                                     ; $5420: $56
	dec  [hl]                                        ; $5421: $35
	ld   e, c                                        ; $5422: $59
	add  d                                           ; $5423: $82
	ld   de, $f39f                                   ; $5424: $11 $9f $f3
	ld   a, [hl]                                     ; $5427: $7e
	xor  b                                           ; $5428: $a8
	rst  $38                                         ; $5429: $ff
	ld   h, e                                        ; $542a: $63
	ld   d, e                                        ; $542b: $53
	ld   d, [hl]                                     ; $542c: $56
	ld   [hl], a                                     ; $542d: $77
	ld   b, c                                        ; $542e: $41
	ld   a, [de]                                     ; $542f: $1a
	ei                                               ; $5430: $fb
	inc  l                                           ; $5431: $2c
	ld   sp, hl                                      ; $5432: $f9
	sbc  a                                           ; $5433: $9f
	ldh  [c], a                                      ; $5434: $e2
	ld   d, [hl]                                     ; $5435: $56
	ld   h, a                                        ; $5436: $67
	ld   d, h                                        ; $5437: $54
	ld   [hl-], a                                    ; $5438: $32
	inc  de                                          ; $5439: $13
	rst  $38                                         ; $543a: $ff
	ld   hl, $5eee                                   ; $543b: $21 $ee $5e
	ld   hl, sp+$14                                  ; $543e: $f8 $14
	ld   b, h                                        ; $5440: $44
	ld   a, b                                        ; $5441: $78
	ld   h, d                                        ; $5442: $62
	ld   de, $a3ef                                   ; $5443: $11 $ef $a3
	rst  JumpTable                                         ; $5446: $df
	ld   a, c                                        ; $5447: $79
	db   $fc                                         ; $5448: $fc
	ld   [hl], $32                                   ; $5449: $36 $32
	ld   b, a                                        ; $544b: $47
	sub  l                                           ; $544c: $95
	ld   de, $f56f                                   ; $544d: $11 $6f $f5
	sbc  a                                           ; $5450: $9f
	ld   [hl], h                                     ; $5451: $74
	rst  $38                                         ; $5452: $ff
	ld   h, d                                        ; $5453: $62
	ld   [hl+], a                                    ; $5454: $22
	scf                                              ; $5455: $37
	add  $11                                         ; $5456: $c6 $11
	sbc  a                                           ; $5458: $9f
	push af                                          ; $5459: $f5
	rst  $38                                         ; $545a: $ff
	ld   b, e                                        ; $545b: $43
	rst  $38                                         ; $545c: $ff
	halt                                             ; $545d: $76
	ld   b, c                                        ; $545e: $41
	dec  h                                           ; $545f: $25
	sbc  b                                           ; $5460: $98
	ld   de, $f17f                                   ; $5461: $11 $7f $f1
	adc  a                                           ; $5464: $8f
	ld   [hl], l                                     ; $5465: $75
	rst  $38                                         ; $5466: $ff
	ld   h, c                                        ; $5467: $61
	ld   [de], a                                     ; $5468: $12
	ld   b, a                                        ; $5469: $47
	and  [hl]                                        ; $546a: $a6
	ld   de, $f4cf                                   ; $546b: $11 $cf $f4
	xor  l                                           ; $546e: $ad
	ld   h, [hl]                                     ; $546f: $66
	rst  $38                                         ; $5470: $ff
	ld   hl, $4715                                   ; $5471: $21 $15 $47
	sub  e                                           ; $5474: $93
	ld   de, $6aff                                   ; $5475: $11 $ff $6a
	ld   hl, sp+$1d                                  ; $5478: $f8 $1d
	ld   hl, sp+$31                                  ; $547a: $f8 $31
	inc  de                                          ; $547c: $13
	dec  sp                                          ; $547d: $3b
	sub  c                                           ; $547e: $91
	dec  de                                          ; $547f: $1b
	db   $fc                                         ; $5480: $fc
	adc  a                                           ; $5481: $8f
	or   d                                           ; $5482: $b2
	ld   e, a                                        ; $5483: $5f
	db   $f4                                         ; $5484: $f4
	ld   b, c                                        ; $5485: $41
	ld   de, $316a                                   ; $5486: $11 $6a $31
	rra                                              ; $5489: $1f
	rst  $30                                         ; $548a: $f7
	cp   $63                                         ; $548b: $fe $63
	rst  $38                                         ; $548d: $ff
	ld   d, d                                        ; $548e: $52
	ld   de, $d623                                   ; $548f: $11 $23 $d6
	ld   de, $6dff                                   ; $5492: $11 $ff $6d
	ld   hl, sp+$1e                                  ; $5495: $f8 $1e
	ld   hl, sp+$11                                  ; $5497: $f8 $11
	ld   [de], a                                     ; $5499: $12
	ld   c, e                                        ; $549a: $4b
	ld   b, c                                        ; $549b: $41
	rra                                              ; $549c: $1f
	push af                                          ; $549d: $f5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $549e: $cf
	ld   h, c                                        ; $549f: $61
	rst  $38                                         ; $54a0: $ff
	and  d                                           ; $54a1: $a2
	ld   de, $ba14                                   ; $54a2: $11 $14 $ba
	ld   de, $abef                                   ; $54a5: $11 $ef $ab

Jump_0c3_54a8:
jr_0c3_54a8:
	ld   sp, hl                                      ; $54a8: $f9
	jr   jr_0c3_54a8                                 ; $54a9: $18 $fd

	ld   b, c                                        ; $54ab: $41
	ld   [de], a                                     ; $54ac: $12
	add  hl, hl                                      ; $54ad: $29
	ld   [hl], c                                     ; $54ae: $71
	rra                                              ; $54af: $1f
	push af                                          ; $54b0: $f5
	rst  JumpTable                                         ; $54b1: $df
	ld   h, d                                        ; $54b2: $62
	rst  $38                                         ; $54b3: $ff
	ld   [hl], e                                     ; $54b4: $73
	ld   sp, $9711                                   ; $54b5: $31 $11 $97
	ld   [de], a                                     ; $54b8: $12
	rst  $38                                         ; $54b9: $ff
	ld   e, h                                        ; $54ba: $5c
	or   $3f                                         ; $54bb: $f6 $3f
	or   $11                                         ; $54bd: $f6 $11
	ld   [de], a                                     ; $54bf: $12
	ld   e, b                                        ; $54c0: $58
	ld   de, $f69f                                   ; $54c1: $11 $9f $f6
	ld   a, [rAUDENA]                                  ; $54c4: $fa $26 $ff
	ld   b, d                                        ; $54c7: $42
	ld   de, $c414                                   ; $54c8: $11 $14 $c4
	dec  e                                           ; $54cb: $1d
	ld   sp, hl                                      ; $54cc: $f9
	sbc  a                                           ; $54cd: $9f
	sub  d                                           ; $54ce: $92
	cp   a                                           ; $54cf: $bf
	or   d                                           ; $54d0: $b2
	ld   hl, $9612                                   ; $54d1: $21 $12 $96
	dec  d                                           ; $54d4: $15
	rst  $38                                         ; $54d5: $ff
	ld   c, l                                        ; $54d6: $4d
	push bc                                          ; $54d7: $c5
	adc  a                                           ; $54d8: $8f
	pop  af                                          ; $54d9: $f1
	ld   de, $7914                                   ; $54da: $11 $14 $79
	ld   de, $caef                                   ; $54dd: $11 $ef $ca
	or   $2d                                         ; $54e0: $f6 $2d
	ei                                               ; $54e2: $fb
	ld   [de], a                                     ; $54e3: $12
	ld   de, $6149                                   ; $54e4: $11 $49 $61
	ld   a, a                                        ; $54e7: $7f
	ld   hl, sp-$07                                  ; $54e8: $f8 $f9
	ld   b, a                                        ; $54ea: $47
	rst  $38                                         ; $54eb: $ff
	ld   hl, $1611                                   ; $54ec: $21 $11 $16
	ld   h, c                                        ; $54ef: $61
	ld   e, a                                        ; $54f0: $5f
	ld   hl, sp-$26                                  ; $54f1: $f8 $da
	scf                                              ; $54f3: $37
	rst  $38                                         ; $54f4: $ff
	ld   sp, $1711                                   ; $54f5: $31 $11 $17
	or   d                                           ; $54f8: $b2
	rra                                              ; $54f9: $1f
	ld   a, [$73af]                                  ; $54fa: $fa $af $73
	rst  JumpTable                                         ; $54fd: $df
	ld   [hl], c                                     ; $54fe: $71
	ld   de, $7511                                   ; $54ff: $11 $11 $75
	rra                                              ; $5502: $1f
	ld   hl, sp-$73                                  ; $5503: $f8 $8d
	halt                                             ; $5505: $76
	rst  $38                                         ; $5506: $ff
	add  c                                           ; $5507: $81
	ld   de, $9314                                   ; $5508: $11 $14 $93
	rra                                              ; $550b: $1f
	db   $fc                                         ; $550c: $fc
	xor  [hl]                                        ; $550d: $ae
	ld   h, e                                        ; $550e: $63
	rst  $38                                         ; $550f: $ff
	sub  c                                           ; $5510: $91
	ld   de, $8414                                   ; $5511: $11 $14 $84
	dec  e                                           ; $5514: $1d
	db   $fd                                         ; $5515: $fd
	xor  a                                           ; $5516: $af
	ld   h, d                                        ; $5517: $62
	rst  JumpTable                                         ; $5518: $df
	and  c                                           ; $5519: $a1
	ld   de, $6312                                   ; $551a: $11 $12 $63
	rra                                              ; $551d: $1f
	db   $fd                                         ; $551e: $fd
	sbc  [hl]                                        ; $551f: $9e
	ld   h, h                                        ; $5520: $64
	rst  JumpTable                                         ; $5521: $df
	or   c                                           ; $5522: $b1
	ld   de, $6611                                   ; $5523: $11 $11 $66
	ld   c, a                                        ; $5526: $4f
	ld   sp, hl                                      ; $5527: $f9
	sbc  h                                           ; $5528: $9c
	halt                                             ; $5529: $76
	rst  $38                                         ; $552a: $ff
	and  d                                           ; $552b: $a2
	ld   de, $5312                                   ; $552c: $11 $12 $53
	rra                                              ; $552f: $1f
	ld   a, [$53cc]                                  ; $5530: $fa $cc $53
	rst  $38                                         ; $5533: $ff
	sub  e                                           ; $5534: $93
	ld   de, $4311                                   ; $5535: $11 $11 $43
	ld   l, a                                        ; $5538: $6f
	ld   a, [$46ca]                                  ; $5539: $fa $ca $46
	rst  $38                                         ; $553c: $ff
	ld   h, d                                        ; $553d: $62
	ld   de, $4411                                   ; $553e: $11 $11 $44
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5541: $cf
	rst  $30                                         ; $5542: $f7
	rst  $10                                         ; $5543: $d7
	ld   c, e                                        ; $5544: $4b
	rst  $38                                         ; $5545: $ff
	ld   b, d                                        ; $5546: $42
	ld   de, $7512                                   ; $5547: $11 $12 $75
	rst  $38                                         ; $554a: $ff
	ret                                              ; $554b: $c9


	or   [hl]                                        ; $554c: $b6
	ld   l, l                                        ; $554d: $6d
	db   $fc                                         ; $554e: $fc
	inc  sp                                          ; $554f: $33
	ld   de, $6815                                   ; $5550: $11 $15 $68
	rst  $38                                         ; $5553: $ff
	adc  e                                           ; $5554: $8b
	and  l                                           ; $5555: $a5
	adc  a                                           ; $5556: $8f
	ld   sp, hl                                      ; $5557: $f9
	ld   b, c                                        ; $5558: $41
	ld   de, $4d14                                   ; $5559: $11 $14 $4d
	rst  $38                                         ; $555c: $ff
	adc  [hl]                                        ; $555d: $8e
	ld   h, e                                        ; $555e: $63
	cp   a                                           ; $555f: $bf
	push af                                          ; $5560: $f5
	ld   hl, $3411                                   ; $5561: $21 $11 $34
	ld   e, a                                        ; $5564: $5f

Call_0c3_5565:
	ld   a, [$36cb]                                  ; $5565: $fa $cb $36
	rst  $38                                         ; $5568: $ff
	or   [hl]                                        ; $5569: $b6
	ld   sp, $3311                                   ; $556a: $31 $11 $33
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $556d: $cf
	ld   sp, hl                                      ; $556e: $f9
	db   $f4                                         ; $556f: $f4
	ld   a, [de]                                     ; $5570: $1a
	rst  $38                                         ; $5571: $ff
	ld   d, l                                        ; $5572: $55
	ld   de, $5911                                   ; $5573: $11 $11 $59
	rst  $38                                         ; $5576: $ff
	sbc  l                                           ; $5577: $9d
	and  d                                           ; $5578: $a2
	adc  a                                           ; $5579: $8f
	ld   a, [$1171]                                  ; $557a: $fa $71 $11
	ld   [de], a                                     ; $557d: $12
	ld   l, a                                        ; $557e: $6f
	db   $fd                                         ; $557f: $fd
	cp   l                                           ; $5580: $bd
	dec  [hl]                                        ; $5581: $35
	rst  JumpTable                                         ; $5582: $df
	rst  $10                                         ; $5583: $d7
	ld   d, c                                        ; $5584: $51
	ld   de, $ef13                                   ; $5585: $11 $13 $ef
	ld   a, [$3bf5]                                  ; $5588: $fa $f5 $3b
	db   $fd                                         ; $558b: $fd
	adc  b                                           ; $558c: $88
	ld   de, $1a11                                   ; $558d: $11 $11 $1a
	rst  $38                                         ; $5590: $ff
	cp   a                                           ; $5591: $bf
	ld   h, c                                        ; $5592: $61
	adc  $ca                                         ; $5593: $ce $ca
	sub  c                                           ; $5595: $91
	ld   de, $cf11                                   ; $5596: $11 $11 $cf
	rst  $38                                         ; $5599: $ff
	db   $f4                                         ; $559a: $f4
	inc  a                                           ; $559b: $3c
	cp   e                                           ; $559c: $bb
	xor  d                                           ; $559d: $aa
	ld   de, $1a11                                   ; $559e: $11 $11 $1a
	rst  $38                                         ; $55a1: $ff
	rst  JumpTable                                         ; $55a2: $df
	ld   h, d                                        ; $55a3: $62
	cp   h                                           ; $55a4: $bc
	cp   d                                           ; $55a5: $ba
	and  c                                           ; $55a6: $a1
	ld   de, $bf11                                   ; $55a7: $11 $11 $bf
	rst  $38                                         ; $55aa: $ff
	push af                                          ; $55ab: $f5
	dec  sp                                          ; $55ac: $3b
	cp   d                                           ; $55ad: $ba
	adc  c                                           ; $55ae: $89
	ld   de, $1d11                                   ; $55af: $11 $11 $1d
	db   $fc                                         ; $55b2: $fc
	rst  $38                                         ; $55b3: $ff

jr_0c3_55b4:
	ld   [hl], $cb                                   ; $55b4: $36 $cb
	add  a                                           ; $55b6: $87
	add  c                                           ; $55b7: $81
	ld   de, $ef13                                   ; $55b8: $11 $13 $ef
	xor  a                                           ; $55bb: $af
	ldh  a, [c]                                      ; $55bc: $f2
	sbc  h                                           ; $55bd: $9c
	sbc  b                                           ; $55be: $98
	sub  a                                           ; $55bf: $97
	ld   de, $4f11                                   ; $55c0: $11 $11 $4f
	ei                                               ; $55c3: $fb
	db   $fc                                         ; $55c4: $fc
	inc  e                                           ; $55c5: $1c
	cp   c                                           ; $55c6: $b9
	ld   a, d                                        ; $55c7: $7a
	ld   sp, $1721                                   ; $55c8: $31 $21 $17
	rst  $38                                         ; $55cb: $ff
	xor  a                                           ; $55cc: $af
	sub  d                                           ; $55cd: $92
	jp   c, $b177                                    ; $55ce: $da $77 $b1

	ld   [de], a                                     ; $55d1: $12
	ld   de, $bfcf                                   ; $55d2: $11 $cf $bf
	di                                               ; $55d5: $f3
	ld   e, [hl]                                     ; $55d6: $5e
	add  l                                           ; $55d7: $85
	adc  c                                           ; $55d8: $89
	ld   de, $2f21                                   ; $55d9: $11 $21 $2f
	ld   sp, hl                                      ; $55dc: $f9
	rst  $38                                         ; $55dd: $ff
	dec  bc                                          ; $55de: $0b
	push de                                          ; $55df: $d5
	ld   e, d                                        ; $55e0: $5a
	ld   h, c                                        ; $55e1: $61
	ld   sp, $fc17                                   ; $55e2: $31 $17 $fc
	xor  a                                           ; $55e5: $af
	and  e                                           ; $55e6: $a3
	ld   a, [$9136]                                  ; $55e7: $fa $36 $91
	inc  d                                           ; $55ea: $14
	ld   de, $7fdf                                   ; $55eb: $11 $df $7f
	ldh  a, [c]                                      ; $55ee: $f2
	sbc  a                                           ; $55ef: $9f
	ld   d, l                                        ; $55f0: $55
	sub  l                                           ; $55f1: $95
	ld   [de], a                                     ; $55f2: $12
	ld   hl, $e85f                                   ; $55f3: $21 $5f $e8
	db   $fd                                         ; $55f6: $fd
	rra                                              ; $55f7: $1f
	and  e                                           ; $55f8: $a3
	adc  c                                           ; $55f9: $89
	ld   de, $1e41                                   ; $55fa: $11 $41 $1e
	or   $ff                                         ; $55fd: $f6 $ff
	ld   a, [de]                                     ; $55ff: $1a
	di                                               ; $5600: $f3
	ld   l, d                                        ; $5601: $6a
	ld   sp, $1842                                   ; $5602: $31 $42 $18
	ld   a, [$a39f]                                  ; $5605: $fa $9f $a3
	ld   sp, hl                                      ; $5608: $f9
	add  hl, sp                                      ; $5609: $39
	ld   h, c                                        ; $560a: $61
	inc  h                                           ; $560b: $24
	ld   [de], a                                     ; $560c: $12
	cp   $6f                                         ; $560d: $fe $6f
	pop  af                                          ; $560f: $f1
	rst  $38                                         ; $5610: $ff
	jr   z, jr_0c3_55b4                              ; $5611: $28 $a1

	inc  d                                           ; $5613: $14
	ld   de, $6fcf                                   ; $5614: $11 $cf $6f
	db   $f4                                         ; $5617: $f4
	sbc  a                                           ; $5618: $9f
	ld   b, [hl]                                     ; $5619: $46
	jp   $1114                                       ; $561a: $c3 $14 $11


	ld   a, a                                        ; $561d: $7f
	adc  d                                           ; $561e: $8a
	ld   sp, hl                                      ; $561f: $f9
	ld   l, a                                        ; $5620: $6f
	ld   [hl], e                                     ; $5621: $73
	or   l                                           ; $5622: $b5
	inc  d                                           ; $5623: $14
	ld   sp, $974f                                   ; $5624: $31 $4f $97
	db   $fc                                         ; $5627: $fc
	ccf                                              ; $5628: $3f
	and  d                                           ; $5629: $a2
	add  $13                                         ; $562a: $c6 $13
	ld   b, c                                        ; $562c: $41
	cpl                                              ; $562d: $2f
	or   [hl]                                        ; $562e: $b6
	rst  $38                                         ; $562f: $ff
	ccf                                              ; $5630: $3f
	jp   nc, $13b7                                   ; $5631: $d2 $b7 $13

	ld   b, c                                        ; $5634: $41
	ld   l, $b6                                      ; $5635: $2e $b6
	rst  $38                                         ; $5637: $ff
	ccf                                              ; $5638: $3f
	ldh  [c], a                                      ; $5639: $e2
	cp   b                                           ; $563a: $b8
	ld   [de], a                                     ; $563b: $12
	ld   b, c                                        ; $563c: $41
	ld   e, $b5                                      ; $563d: $1e $b5
	rst  $38                                         ; $563f: $ff
	ccf                                              ; $5640: $3f
	ldh  [c], a                                      ; $5641: $e2
	cp   b                                           ; $5642: $b8
	inc  de                                          ; $5643: $13
	ld   b, c                                        ; $5644: $41
	cpl                                              ; $5645: $2f
	sub  [hl]                                        ; $5646: $96
	db   $fc                                         ; $5647: $fc
	ld   e, a                                        ; $5648: $5f
	or   e                                           ; $5649: $b3
	add  $14                                         ; $564a: $c6 $14
	ld   hl, $695f                                   ; $564c: $21 $5f $69
	ld   hl, sp-$61                                  ; $564f: $f8 $9f
	ld   [hl], l                                     ; $5651: $75
	db   $d3                                         ; $5652: $d3
	dec  d                                           ; $5653: $15
	ld   de, $3d8e                                   ; $5654: $11 $8e $3d
	push af                                          ; $5657: $f5
	rst  $28                                         ; $5658: $ef
	ld   c, c                                        ; $5659: $49
	pop  bc                                          ; $565a: $c1
	inc  h                                           ; $565b: $24
	ld   de, Func_2fbb                                   ; $565c: $11 $bb $2f
	di                                               ; $565f: $f3
	rst  $38                                         ; $5660: $ff
	dec  a                                           ; $5661: $3d
	sub  c                                           ; $5662: $91
	ld   b, e                                        ; $5663: $43
	ld   de, $4fc7                                   ; $5664: $11 $c7 $4f
	add  $fa                                         ; $5667: $c6 $fa
	ld   e, a                                        ; $5669: $5f
	ld   b, c                                        ; $566a: $41
	ld   h, c                                        ; $566b: $61
	dec  d                                           ; $566c: $15
	jp   nz, Jump_0c3_5fbf                           ; $566d: $c2 $bf $5f

	db   $f4                                         ; $5670: $f4
	adc  $13                                         ; $5671: $ce $13
	ld   d, c                                        ; $5673: $51
	add  hl, de                                      ; $5674: $19

Call_0c3_5675:
	sub  c                                           ; $5675: $91
	rst  $38                                         ; $5676: $ff
	ccf                                              ; $5677: $3f
	db   $f4                                         ; $5678: $f4
	rst  $30                                         ; $5679: $f7
	ld   d, $01                                      ; $567a: $16 $01
	ld   a, [hl+]                                    ; $567c: $2a
	scf                                              ; $567d: $37
	rst  $30                                         ; $567e: $f7
	cp   a                                           ; $567f: $bf
	ld   l, e                                        ; $5680: $6b
	pop  af                                          ; $5681: $f1
	ld   b, l                                        ; $5682: $45
	ld   de, $1f78                                   ; $5683: $11 $78 $1f
	di                                               ; $5686: $f3
	rst  $38                                         ; $5687: $ff
	ld   c, a                                        ; $5688: $4f
	add  c                                           ; $5689: $81
	ld   [hl], c                                     ; $568a: $71
	ld   de, $5f92                                   ; $568b: $11 $92 $5f
	ld   a, d                                        ; $568e: $7a
	ld   hl, sp-$31                                  ; $568f: $f8 $cf
	dec  h                                           ; $5691: $25
	ld   h, c                                        ; $5692: $61
	inc  de                                          ; $5693: $13
	ld   [hl], c                                     ; $5694: $71
	cp   a                                           ; $5695: $bf
	cpl                                              ; $5696: $2f
	push af                                          ; $5697: $f5
	db   $fc                                         ; $5698: $fc
	add  hl, hl                                      ; $5699: $29
	ld   hl, $4114                                   ; $569a: $21 $14 $41
	db   $fd                                         ; $569d: $fd
	ld   e, a                                        ; $569e: $5f
	ret                                              ; $569f: $c9


	push af                                          ; $56a0: $f5
	ld   l, b                                        ; $56a1: $68
	ld   de, $1315                                   ; $56a2: $11 $15 $13
	push af                                          ; $56a5: $f5
	rst  JumpTable                                         ; $56a6: $df
	ld   a, a                                        ; $56a7: $7f
	di                                               ; $56a8: $f3
	and  l                                           ; $56a9: $a5
	ld   de, $1814                                   ; $56aa: $11 $14 $18
	di                                               ; $56ad: $f3
	rst  $38                                         ; $56ae: $ff
	ld   a, a                                        ; $56af: $7f
	or   h                                           ; $56b0: $b4
	or   d                                           ; $56b1: $b2
	ld   de, $1c13                                   ; $56b2: $11 $13 $1c
	call nz, $cffe                                   ; $56b5: $c4 $fe $cf
	ld   a, c                                        ; $56b8: $79
	and  c                                           ; $56b9: $a1
	ld   de, $1e14                                   ; $56ba: $11 $14 $1e
	sub  [hl]                                        ; $56bd: $96
	ei                                               ; $56be: $fb
	rst  $28                                         ; $56bf: $ef
	ld   l, e                                        ; $56c0: $6b
	sub  c                                           ; $56c1: $91
	ld   hl, $1b14                                   ; $56c2: $21 $14 $1b
	or   [hl]                                        ; $56c5: $b6
	rst  $38                                         ; $56c6: $ff
	rst  JumpTable                                         ; $56c7: $df
	adc  d                                           ; $56c8: $8a
	sub  c                                           ; $56c9: $91
	ld   de, $1c04                                   ; $56ca: $11 $04 $1c
	sub  [hl]                                        ; $56cd: $96
	ei                                               ; $56ce: $fb
	rst  $38                                         ; $56cf: $ff
	ld   a, l                                        ; $56d0: $7d
	sub  c                                           ; $56d1: $91
	ld   sp, $1915                                   ; $56d2: $31 $15 $19
	push bc                                          ; $56d5: $c5
	rst  $38                                         ; $56d6: $ff
	rst  JumpTable                                         ; $56d7: $df
	sbc  h                                           ; $56d8: $9c
	or   d                                           ; $56d9: $b2
	ld   b, c                                        ; $56da: $41
	dec  d                                           ; $56db: $15
	inc  d                                           ; $56dc: $14
	call nz, $afff                                   ; $56dd: $c4 $ff $af
	jp   c, Jump_0c3_41d4                            ; $56e0: $da $d4 $41

	inc  d                                           ; $56e3: $14
	ld   de, $cfd4                                   ; $56e4: $11 $d4 $cf
	xor  a                                           ; $56e7: $af
	ld   sp, hl                                      ; $56e8: $f9
	sub  $33                                         ; $56e9: $d6 $33
	ld   [de], a                                     ; $56eb: $12
	ld   hl, $7f97                                   ; $56ec: $21 $97 $7f
	cp   a                                           ; $56ef: $bf
	ld   sp, hl                                      ; $56f0: $f9
	jp   c, $1134                                    ; $56f1: $da $34 $11

	ld   sp, $5e4a                                   ; $56f4: $31 $4a $5e
	ei                                               ; $56f7: $fb
	db   $fd                                         ; $56f8: $fd
	xor  [hl]                                        ; $56f9: $ae
	ld   d, l                                        ; $56fa: $55
	ld   sp, $1932                                   ; $56fb: $31 $32 $19
	ld   l, b                                        ; $56fe: $68
	ei                                               ; $56ff: $fb
	rst  $38                                         ; $5700: $ff
	xor  [hl]                                        ; $5701: $ae
	sub  h                                           ; $5702: $94
	ld   d, c                                        ; $5703: $51
	inc  d                                           ; $5704: $14
	dec  d                                           ; $5705: $15
	add  h                                           ; $5706: $84
	db   $ed                                         ; $5707: $ed
	cp   a                                           ; $5708: $bf
	cp   e                                           ; $5709: $bb
	push de                                          ; $570a: $d5
	ld   h, e                                        ; $570b: $63
	inc  de                                          ; $570c: $13
	ld   [de], a                                     ; $570d: $12
	add  l                                           ; $570e: $85
	sbc  a                                           ; $570f: $9f
	xor  a                                           ; $5710: $af
	ld   a, [$67f9]                                  ; $5711: $fa $f9 $67
	ld   [de], a                                     ; $5714: $12
	ld   sp, $5c47                                   ; $5715: $31 $47 $5c
	db   $db                                         ; $5718: $db
	db   $fd                                         ; $5719: $fd
	call z, Call_0c3_4277                            ; $571a: $cc $77 $42
	ld   b, c                                        ; $571d: $41
	daa                                              ; $571e: $27
	ld   c, c                                        ; $571f: $49
	ld   [$befe], a                                  ; $5720: $ea $fe $be
	sub  a                                           ; $5723: $97
	ld   h, e                                        ; $5724: $63
	ld   [hl-], a                                    ; $5725: $32
	dec  h                                           ; $5726: $25
	ld   d, a                                        ; $5727: $57
	jp   z, $bddf                                    ; $5728: $ca $df $bd

	or   a                                           ; $572b: $b7
	ld   [hl], h                                     ; $572c: $74
	inc  sp                                          ; $572d: $33
	dec  h                                           ; $572e: $25
	ld   b, [hl]                                     ; $572f: $46
	cp   c                                           ; $5730: $b9
	rst  JumpTable                                         ; $5731: $df
	cp   l                                           ; $5732: $bd
	cp   b                                           ; $5733: $b8

Jump_0c3_5734:
	add  l                                           ; $5734: $85
	ld   b, e                                        ; $5735: $43
	dec  [hl]                                        ; $5736: $35
	scf                                              ; $5737: $37
	xor  c                                           ; $5738: $a9
	db   $ec                                         ; $5739: $ec
	xor  [hl]                                        ; $573a: $ae
	sbc  b                                           ; $573b: $98
	add  l                                           ; $573c: $85
	ld   b, h                                        ; $573d: $44
	ld   d, e                                        ; $573e: $53
	ld   e, c                                        ; $573f: $59
	ld   a, h                                        ; $5740: $7c
	reti                                             ; $5741: $d9


	db   $eb                                         ; $5742: $eb
	sbc  c                                           ; $5743: $99
	halt                                             ; $5744: $76
	ld   b, [hl]                                     ; $5745: $46
	ld   b, h                                        ; $5746: $44
	add  [hl]                                        ; $5747: $86
	sbc  e                                           ; $5748: $9b
	sbc  h                                           ; $5749: $9c
	xor  c                                           ; $574a: $a9
	xor  b                                           ; $574b: $a8
	ld   h, l                                        ; $574c: $65
	ld   h, l                                        ; $574d: $65
	ld   c, c                                        ; $574e: $49
	ld   l, c                                        ; $574f: $69
	cp   b                                           ; $5750: $b8
	jp   z, Jump_0c3_78aa                            ; $5751: $ca $aa $78

	ld   d, [hl]                                     ; $5754: $56
	ld   [hl], e                                     ; $5755: $73
	add  a                                           ; $5756: $87
	ld   a, h                                        ; $5757: $7c
	adc  d                                           ; $5758: $8a
	cp   c                                           ; $5759: $b9
	sbc  b                                           ; $575a: $98
	add  [hl]                                        ; $575b: $86
	ld   h, a                                        ; $575c: $67
	ld   b, a                                        ; $575d: $47
	halt                                             ; $575e: $76
	cp   b                                           ; $575f: $b8
	xor  h                                           ; $5760: $ac
	adc  e                                           ; $5761: $8b
	ld   a, b                                        ; $5762: $78
	add  l                                           ; $5763: $85
	add  l                                           ; $5764: $85
	ld   e, b                                        ; $5765: $58
	ld   l, c                                        ; $5766: $69
	xor  b                                           ; $5767: $a8
	cp   c                                           ; $5768: $b9
	sbc  c                                           ; $5769: $99
	ld   a, b                                        ; $576a: $78
	ld   h, a                                        ; $576b: $67
	ld   h, h                                        ; $576c: $64
	sub  l                                           ; $576d: $95
	adc  d                                           ; $576e: $8a
	ld   a, e                                        ; $576f: $7b
	xor  c                                           ; $5770: $a9
	or   a                                           ; $5771: $b7
	ld   a, b                                        ; $5772: $78
	ld   h, l                                        ; $5773: $65
	ld   [hl], l                                     ; $5774: $75
	ld   l, c                                        ; $5775: $69
	ld   l, d                                        ; $5776: $6a
	and  a                                           ; $5777: $a7
	ret                                              ; $5778: $c9


	adc  d                                           ; $5779: $8a
	ld   h, a                                        ; $577a: $67
	add  h                                           ; $577b: $84
	add  [hl]                                        ; $577c: $86
	ld   e, c                                        ; $577d: $59
	ld   l, c                                        ; $577e: $69
	xor  b                                           ; $577f: $a8
	ret                                              ; $5780: $c9


	sbc  d                                           ; $5781: $9a
	ld   [hl], a                                     ; $5782: $77
	add  l                                           ; $5783: $85
	ld   [hl], a                                     ; $5784: $77
	ld   c, b                                        ; $5785: $48
	ld   [hl], a                                     ; $5786: $77
	xor  c                                           ; $5787: $a9
	xor  e                                           ; $5788: $ab
	adc  c                                           ; $5789: $89
	sub  a                                           ; $578a: $97
	sub  [hl]                                        ; $578b: $96
	ld   l, b                                        ; $578c: $68
	ld   d, [hl]                                     ; $578d: $56
	add  [hl]                                        ; $578e: $86
	sbc  c                                           ; $578f: $99
	adc  d                                           ; $5790: $8a
	xor  c                                           ; $5791: $a9
	sub  a                                           ; $5792: $97
	add  a                                           ; $5793: $87
	ld   d, a                                        ; $5794: $57
	ld   h, [hl]                                     ; $5795: $66
	sub  [hl]                                        ; $5796: $96
	sbc  d                                           ; $5797: $9a
	sbc  d                                           ; $5798: $9a
	sbc  c                                           ; $5799: $99
	sbc  b                                           ; $579a: $98
	adc  b                                           ; $579b: $88
	ld   h, a                                        ; $579c: $67
	ld   h, [hl]                                     ; $579d: $66
	add  [hl]                                        ; $579e: $86
	adc  c                                           ; $579f: $89
	adc  c                                           ; $57a0: $89
	xor  d                                           ; $57a1: $aa
	adc  c                                           ; $57a2: $89
	adc  b                                           ; $57a3: $88
	ld   [hl], a                                     ; $57a4: $77
	ld   [hl], l                                     ; $57a5: $75
	ld   [hl], a                                     ; $57a6: $77
	ld   a, d                                        ; $57a7: $7a
	sbc  c                                           ; $57a8: $99
	sbc  c                                           ; $57a9: $99
	sbc  c                                           ; $57aa: $99
	adc  b                                           ; $57ab: $88
	ld   [hl], a                                     ; $57ac: $77
	halt                                             ; $57ad: $76
	ld   a, b                                        ; $57ae: $78
	ld   a, b                                        ; $57af: $78
	sbc  c                                           ; $57b0: $99
	xor  c                                           ; $57b1: $a9
	sbc  b                                           ; $57b2: $98
	adc  b                                           ; $57b3: $88
	ld   [hl], a                                     ; $57b4: $77
	ld   [hl], a                                     ; $57b5: $77
	ld   l, b                                        ; $57b6: $68
	ld   [hl], a                                     ; $57b7: $77
	sbc  b                                           ; $57b8: $98
	xor  d                                           ; $57b9: $aa
	sbc  c                                           ; $57ba: $99
	adc  b                                           ; $57bb: $88
	add  a                                           ; $57bc: $87
	ld   [hl], a                                     ; $57bd: $77
	ld   [hl], a                                     ; $57be: $77
	ld   l, b                                        ; $57bf: $68
	ld   a, c                                        ; $57c0: $79
	sbc  c                                           ; $57c1: $99
	xor  b                                           ; $57c2: $a8
	sbc  c                                           ; $57c3: $99
	adc  c                                           ; $57c4: $89
	ld   [hl], a                                     ; $57c5: $77
	halt                                             ; $57c6: $76
	add  [hl]                                        ; $57c7: $86
	adc  c                                           ; $57c8: $89
	ld   a, c                                        ; $57c9: $79
	adc  b                                           ; $57ca: $88
	xor  c                                           ; $57cb: $a9
	xor  b                                           ; $57cc: $a8
	adc  c                                           ; $57cd: $89
	ld   [hl], a                                     ; $57ce: $77
	add  [hl]                                        ; $57cf: $86
	add  a                                           ; $57d0: $87
	ld   a, c                                        ; $57d1: $79
	ld   a, b                                        ; $57d2: $78
	sub  a                                           ; $57d3: $97
	sbc  b                                           ; $57d4: $98
	adc  c                                           ; $57d5: $89
	adc  b                                           ; $57d6: $88
	adc  b                                           ; $57d7: $88
	ld   a, b                                        ; $57d8: $78
	add  [hl]                                        ; $57d9: $86
	add  a                                           ; $57da: $87
	ld   a, c                                        ; $57db: $79
	ld   a, c                                        ; $57dc: $79
	adc  b                                           ; $57dd: $88
	sbc  b                                           ; $57de: $98
	sbc  c                                           ; $57df: $99
	sbc  c                                           ; $57e0: $99
	sbc  b                                           ; $57e1: $98
	adc  b                                           ; $57e2: $88
	adc  b                                           ; $57e3: $88
	adc  b                                           ; $57e4: $88
	add  a                                           ; $57e5: $87
	add  a                                           ; $57e6: $87
	ld   a, b                                        ; $57e7: $78
	ld   a, b                                        ; $57e8: $78
	add  a                                           ; $57e9: $87
	adc  c                                           ; $57ea: $89
	adc  c                                           ; $57eb: $89
	adc  b                                           ; $57ec: $88
	sbc  b                                           ; $57ed: $98
	sbc  b                                           ; $57ee: $98
	add  a                                           ; $57ef: $87
	ld   a, b                                        ; $57f0: $78
	ld   a, b                                        ; $57f1: $78
	add  a                                           ; $57f2: $87
	add  a                                           ; $57f3: $87
	sbc  b                                           ; $57f4: $98
	adc  b                                           ; $57f5: $88
	adc  b                                           ; $57f6: $88
	adc  b                                           ; $57f7: $88
	sbc  b                                           ; $57f8: $98
	adc  b                                           ; $57f9: $88
	adc  c                                           ; $57fa: $89
	adc  b                                           ; $57fb: $88
	add  a                                           ; $57fc: $87
	add  a                                           ; $57fd: $87
	ld   a, b                                        ; $57fe: $78
	ld   a, b                                        ; $57ff: $78
	adc  b                                           ; $5800: $88
	adc  b                                           ; $5801: $88
	sbc  b                                           ; $5802: $98
	sbc  c                                           ; $5803: $99
	adc  b                                           ; $5804: $88
	adc  c                                           ; $5805: $89
	adc  b                                           ; $5806: $88
	add  a                                           ; $5807: $87
	adc  b                                           ; $5808: $88
	adc  b                                           ; $5809: $88
	adc  b                                           ; $580a: $88
	adc  b                                           ; $580b: $88
	adc  b                                           ; $580c: $88
	sbc  b                                           ; $580d: $98
	adc  b                                           ; $580e: $88
	adc  b                                           ; $580f: $88
	ld   a, b                                        ; $5810: $78
	add  a                                           ; $5811: $87
	adc  b                                           ; $5812: $88
	adc  c                                           ; $5813: $89
	ld   a, c                                        ; $5814: $79
	adc  b                                           ; $5815: $88
	sbc  b                                           ; $5816: $98
	adc  b                                           ; $5817: $88
	adc  b                                           ; $5818: $88
	adc  b                                           ; $5819: $88
	sbc  b                                           ; $581a: $98
	adc  c                                           ; $581b: $89
	adc  c                                           ; $581c: $89
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

Jump_0c3_5fbf:
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
	sbc  c                                           ; $62d1: $99
	add  a                                           ; $62d2: $87
	adc  c                                           ; $62d3: $89
	sbc  b                                           ; $62d4: $98
	add  a                                           ; $62d5: $87
	adc  c                                           ; $62d6: $89
	sbc  b                                           ; $62d7: $98
	adc  b                                           ; $62d8: $88
	adc  b                                           ; $62d9: $88
	ld   [hl], a                                     ; $62da: $77
	sbc  c                                           ; $62db: $99
	sub  a                                           ; $62dc: $97
	ld   a, b                                        ; $62dd: $78
	adc  c                                           ; $62de: $89
	adc  b                                           ; $62df: $88
	sbc  c                                           ; $62e0: $99
	add  a                                           ; $62e1: $87
	sbc  c                                           ; $62e2: $99
	sbc  b                                           ; $62e3: $98
	ld   [hl], a                                     ; $62e4: $77
	adc  c                                           ; $62e5: $89
	add  a                                           ; $62e6: $87
	ld   a, b                                        ; $62e7: $78
	adc  b                                           ; $62e8: $88
	ld   [hl], a                                     ; $62e9: $77
	adc  c                                           ; $62ea: $89
	sbc  b                                           ; $62eb: $98
	add  a                                           ; $62ec: $87
	adc  b                                           ; $62ed: $88
	adc  c                                           ; $62ee: $89
	sbc  b                                           ; $62ef: $98
	ld   a, b                                        ; $62f0: $78
	ld   a, b                                        ; $62f1: $78
	sbc  b                                           ; $62f2: $98
	add  a                                           ; $62f3: $87
	ld   a, b                                        ; $62f4: $78
	sbc  c                                           ; $62f5: $99
	ld   [hl], a                                     ; $62f6: $77
	ld   a, b                                        ; $62f7: $78
	sub  a                                           ; $62f8: $97
	ld   h, a                                        ; $62f9: $67
	sbc  d                                           ; $62fa: $9a
	and  a                                           ; $62fb: $a7
	ld   l, b                                        ; $62fc: $68
	sbc  c                                           ; $62fd: $99
	ld   [hl], a                                     ; $62fe: $77
	ld   a, c                                        ; $62ff: $79
	sub  a                                           ; $6300: $97
	ld   [hl], a                                     ; $6301: $77
	sbc  b                                           ; $6302: $98
	adc  b                                           ; $6303: $88
	adc  b                                           ; $6304: $88
	adc  b                                           ; $6305: $88
	ld   a, b                                        ; $6306: $78
	adc  b                                           ; $6307: $88
	ld   [hl], a                                     ; $6308: $77
	ld   [hl], a                                     ; $6309: $77
	ld   [hl], a                                     ; $630a: $77
	adc  b                                           ; $630b: $88
	adc  b                                           ; $630c: $88
	adc  b                                           ; $630d: $88
	adc  b                                           ; $630e: $88
	add  a                                           ; $630f: $87
	ld   [hl], a                                     ; $6310: $77
	adc  b                                           ; $6311: $88
	adc  b                                           ; $6312: $88
	ld   a, b                                        ; $6313: $78
	adc  b                                           ; $6314: $88
	adc  b                                           ; $6315: $88
	adc  b                                           ; $6316: $88
	sbc  b                                           ; $6317: $98
	adc  b                                           ; $6318: $88
	sbc  b                                           ; $6319: $98
	add  a                                           ; $631a: $87
	adc  b                                           ; $631b: $88
	adc  b                                           ; $631c: $88
	ld   [hl], a                                     ; $631d: $77
	adc  c                                           ; $631e: $89
	add  a                                           ; $631f: $87
	ld   a, b                                        ; $6320: $78
	adc  b                                           ; $6321: $88
	add  a                                           ; $6322: $87
	adc  b                                           ; $6323: $88
	add  a                                           ; $6324: $87
	ld   a, b                                        ; $6325: $78
	sbc  c                                           ; $6326: $99
	add  a                                           ; $6327: $87
	adc  b                                           ; $6328: $88
	sbc  b                                           ; $6329: $98
	adc  b                                           ; $632a: $88
	sbc  b                                           ; $632b: $98
	adc  b                                           ; $632c: $88
	adc  b                                           ; $632d: $88
	adc  b                                           ; $632e: $88
	adc  b                                           ; $632f: $88
	adc  b                                           ; $6330: $88
	adc  b                                           ; $6331: $88
	sbc  c                                           ; $6332: $99
	adc  c                                           ; $6333: $89
	sbc  b                                           ; $6334: $98
	add  a                                           ; $6335: $87
	adc  c                                           ; $6336: $89
	sbc  b                                           ; $6337: $98
	ld   [hl], a                                     ; $6338: $77
	adc  c                                           ; $6339: $89
	sbc  b                                           ; $633a: $98
	ld   a, b                                        ; $633b: $78
	sbc  b                                           ; $633c: $98
	ld   [hl], a                                     ; $633d: $77
	ld   a, b                                        ; $633e: $78
	adc  c                                           ; $633f: $89
	add  a                                           ; $6340: $87
	ld   [hl], a                                     ; $6341: $77
	ld   [hl], a                                     ; $6342: $77
	adc  b                                           ; $6343: $88
	adc  c                                           ; $6344: $89
	add  a                                           ; $6345: $87
	ld   a, b                                        ; $6346: $78
	adc  b                                           ; $6347: $88
	adc  c                                           ; $6348: $89
	adc  b                                           ; $6349: $88
	add  a                                           ; $634a: $87
	ld   a, b                                        ; $634b: $78
	adc  c                                           ; $634c: $89
	adc  b                                           ; $634d: $88
	adc  b                                           ; $634e: $88
	ld   [hl], a                                     ; $634f: $77
	ld   [hl], a                                     ; $6350: $77
	adc  b                                           ; $6351: $88
	adc  b                                           ; $6352: $88
	sbc  c                                           ; $6353: $99
	add  a                                           ; $6354: $87
	ld   [hl], a                                     ; $6355: $77
	sbc  c                                           ; $6356: $99
	adc  b                                           ; $6357: $88
	adc  b                                           ; $6358: $88
	adc  b                                           ; $6359: $88
	adc  b                                           ; $635a: $88
	adc  c                                           ; $635b: $89
	sbc  b                                           ; $635c: $98
	ld   [hl], a                                     ; $635d: $77
	ld   a, b                                        ; $635e: $78
	add  a                                           ; $635f: $87
	ld   [hl], a                                     ; $6360: $77
	ld   [hl], a                                     ; $6361: $77
	ld   h, a                                        ; $6362: $67
	adc  c                                           ; $6363: $89
	sub  a                                           ; $6364: $97
	ld   a, b                                        ; $6365: $78
	sbc  e                                           ; $6366: $9b
	xor  c                                           ; $6367: $a9
	adc  c                                           ; $6368: $89
	xor  c                                           ; $6369: $a9
	sbc  b                                           ; $636a: $98
	adc  c                                           ; $636b: $89
	adc  b                                           ; $636c: $88
	halt                                             ; $636d: $76
	ld   h, [hl]                                     ; $636e: $66
	ld   h, [hl]                                     ; $636f: $66
	ld   [hl], a                                     ; $6370: $77
	ld   [hl], a                                     ; $6371: $77
	ld   a, b                                        ; $6372: $78
	adc  c                                           ; $6373: $89
	sbc  c                                           ; $6374: $99
	sbc  d                                           ; $6375: $9a
	xor  c                                           ; $6376: $a9
	sbc  b                                           ; $6377: $98
	adc  c                                           ; $6378: $89
	xor  d                                           ; $6379: $aa
	adc  b                                           ; $637a: $88
	ld   [hl], a                                     ; $637b: $77
	ld   a, b                                        ; $637c: $78
	ld   [hl], a                                     ; $637d: $77
	ld   h, [hl]                                     ; $637e: $66
	ld   h, l                                        ; $637f: $65
	ld   d, [hl]                                     ; $6380: $56
	ld   a, c                                        ; $6381: $79
	sbc  c                                           ; $6382: $99
	sbc  b                                           ; $6383: $98
	adc  d                                           ; $6384: $8a
	xor  c                                           ; $6385: $a9
	xor  c                                           ; $6386: $a9
	sbc  c                                           ; $6387: $99
	adc  c                                           ; $6388: $89
	adc  c                                           ; $6389: $89
	adc  c                                           ; $638a: $89
	adc  b                                           ; $638b: $88
	halt                                             ; $638c: $76
	ld   h, [hl]                                     ; $638d: $66
	ld   h, [hl]                                     ; $638e: $66
	ld   h, [hl]                                     ; $638f: $66
	ld   [hl], a                                     ; $6390: $77
	add  a                                           ; $6391: $87
	adc  e                                           ; $6392: $8b
	cp   d                                           ; $6393: $ba
	sbc  b                                           ; $6394: $98
	adc  d                                           ; $6395: $8a
	xor  d                                           ; $6396: $aa
	sbc  b                                           ; $6397: $98
	adc  c                                           ; $6398: $89
	sbc  b                                           ; $6399: $98
	adc  b                                           ; $639a: $88
	adc  b                                           ; $639b: $88
	halt                                             ; $639c: $76
	ld   d, h                                        ; $639d: $54
	ld   b, l                                        ; $639e: $45
	ld   a, c                                        ; $639f: $79
	add  a                                           ; $63a0: $87
	ld   a, c                                        ; $63a1: $79
	xor  e                                           ; $63a2: $ab
	xor  c                                           ; $63a3: $a9
	sbc  c                                           ; $63a4: $99
	xor  e                                           ; $63a5: $ab
	sub  a                                           ; $63a6: $97
	ld   a, c                                        ; $63a7: $79
	sbc  d                                           ; $63a8: $9a
	sub  a                                           ; $63a9: $97
	ld   [hl], a                                     ; $63aa: $77
	adc  b                                           ; $63ab: $88
	ld   [hl], l                                     ; $63ac: $75
	ld   d, l                                        ; $63ad: $55
	ld   h, a                                        ; $63ae: $67
	ld   [hl], a                                     ; $63af: $77
	ld   h, a                                        ; $63b0: $67
	xor  e                                           ; $63b1: $ab
	jp   z, $8a97                                    ; $63b2: $ca $97 $8a

	cp   d                                           ; $63b5: $ba
	adc  b                                           ; $63b6: $88
	sbc  b                                           ; $63b7: $98
	sub  a                                           ; $63b8: $97
	ld   a, b                                        ; $63b9: $78
	sbc  c                                           ; $63ba: $99
	ld   [hl], l                                     ; $63bb: $75
	ld   b, h                                        ; $63bc: $44
	ld   d, a                                        ; $63bd: $57
	adc  b                                           ; $63be: $88
	halt                                             ; $63bf: $76
	ld   a, c                                        ; $63c0: $79
	cp   e                                           ; $63c1: $bb
	sub  a                                           ; $63c2: $97
	adc  c                                           ; $63c3: $89
	cp   e                                           ; $63c4: $bb
	sub  a                                           ; $63c5: $97
	ld   a, b                                        ; $63c6: $78
	xor  d                                           ; $63c7: $aa
	add  a                                           ; $63c8: $87
	ld   a, b                                        ; $63c9: $78
	add  [hl]                                        ; $63ca: $86
	ld   d, l                                        ; $63cb: $55
	ld   d, [hl]                                     ; $63cc: $56
	ld   d, l                                        ; $63cd: $55
	ld   a, b                                        ; $63ce: $78
	adc  c                                           ; $63cf: $89
	sbc  c                                           ; $63d0: $99
	xor  h                                           ; $63d1: $ac
	xor  b                                           ; $63d2: $a8
	ld   a, b                                        ; $63d3: $78
	sbc  e                                           ; $63d4: $9b
	xor  b                                           ; $63d5: $a8
	ld   a, c                                        ; $63d6: $79
	sbc  d                                           ; $63d7: $9a
	sub  a                                           ; $63d8: $97
	ld   h, [hl]                                     ; $63d9: $66
	ld   [hl], a                                     ; $63da: $77
	ld   h, l                                        ; $63db: $65
	ld   b, h                                        ; $63dc: $44
	ld   l, b                                        ; $63dd: $68
	adc  b                                           ; $63de: $88
	ld   a, b                                        ; $63df: $78
	xor  d                                           ; $63e0: $aa
	sbc  c                                           ; $63e1: $99
	sbc  c                                           ; $63e2: $99
	xor  d                                           ; $63e3: $aa
	adc  b                                           ; $63e4: $88
	adc  c                                           ; $63e5: $89
	sbc  b                                           ; $63e6: $98
	adc  b                                           ; $63e7: $88
	adc  c                                           ; $63e8: $89
	add  [hl]                                        ; $63e9: $86
	ld   d, l                                        ; $63ea: $55
	ld   d, [hl]                                     ; $63eb: $56
	ld   h, [hl]                                     ; $63ec: $66
	ld   h, a                                        ; $63ed: $67
	adc  c                                           ; $63ee: $89
	xor  c                                           ; $63ef: $a9
	xor  d                                           ; $63f0: $aa
	xor  b                                           ; $63f1: $a8
	sbc  c                                           ; $63f2: $99
	sbc  c                                           ; $63f3: $99
	sbc  c                                           ; $63f4: $99
	sbc  c                                           ; $63f5: $99
	adc  b                                           ; $63f6: $88
	sbc  c                                           ; $63f7: $99
	adc  b                                           ; $63f8: $88
	ld   [hl], l                                     ; $63f9: $75
	ld   b, h                                        ; $63fa: $44
	ld   d, [hl]                                     ; $63fb: $56
	ld   [hl], a                                     ; $63fc: $77
	ld   [hl], a                                     ; $63fd: $77
	adc  b                                           ; $63fe: $88
	xor  e                                           ; $63ff: $ab
	xor  d                                           ; $6400: $aa
	sbc  b                                           ; $6401: $98
	xor  d                                           ; $6402: $aa
	sbc  b                                           ; $6403: $98
	adc  c                                           ; $6404: $89
	sbc  d                                           ; $6405: $9a
	sbc  c                                           ; $6406: $99
	add  a                                           ; $6407: $87
	ld   h, a                                        ; $6408: $67
	halt                                             ; $6409: $76
	ld   d, h                                        ; $640a: $54
	ld   b, l                                        ; $640b: $45
	ld   a, c                                        ; $640c: $79
	add  a                                           ; $640d: $87
	ld   l, b                                        ; $640e: $68
	call Call_0c3_66c9                               ; $640f: $cd $c9 $66
	sbc  e                                           ; $6412: $9b
	cp   c                                           ; $6413: $b9
	adc  b                                           ; $6414: $88
	sbc  c                                           ; $6415: $99
	adc  b                                           ; $6416: $88
	adc  b                                           ; $6417: $88
	halt                                             ; $6418: $76
	ld   d, l                                        ; $6419: $55
	ld   d, [hl]                                     ; $641a: $56
	ld   d, l                                        ; $641b: $55
	ld   h, a                                        ; $641c: $67
	adc  c                                           ; $641d: $89
	xor  d                                           ; $641e: $aa
	xor  c                                           ; $641f: $a9
	sbc  c                                           ; $6420: $99
	xor  c                                           ; $6421: $a9
	sbc  c                                           ; $6422: $99
	adc  b                                           ; $6423: $88
	sbc  c                                           ; $6424: $99
	xor  b                                           ; $6425: $a8
	ld   [hl], a                                     ; $6426: $77
	adc  b                                           ; $6427: $88
	halt                                             ; $6428: $76
	ld   d, h                                        ; $6429: $54
	ld   b, h                                        ; $642a: $44
	ld   l, c                                        ; $642b: $69
	cp   c                                           ; $642c: $b9
	halt                                             ; $642d: $76
	ld   a, d                                        ; $642e: $7a
	db   $db                                         ; $642f: $db
	sub  a                                           ; $6430: $97
	adc  d                                           ; $6431: $8a
	sbc  c                                           ; $6432: $99
	adc  b                                           ; $6433: $88
	xor  e                                           ; $6434: $ab
	sub  a                                           ; $6435: $97
	ld   h, [hl]                                     ; $6436: $66
	ld   a, b                                        ; $6437: $78
	add  [hl]                                        ; $6438: $86
	ld   b, e                                        ; $6439: $43
	dec  [hl]                                        ; $643a: $35
	adc  d                                           ; $643b: $8a
	sub  a                                           ; $643c: $97
	ld   l, c                                        ; $643d: $69
	call z, Call_0c3_79a7                            ; $643e: $cc $a7 $79
	cp   e                                           ; $6441: $bb
	sub  a                                           ; $6442: $97
	ld   a, c                                        ; $6443: $79
	sbc  c                                           ; $6444: $99
	sbc  b                                           ; $6445: $98
	ld   [hl], a                                     ; $6446: $77
	halt                                             ; $6447: $76
	ld   d, l                                        ; $6448: $55
	ld   d, l                                        ; $6449: $55
	ld   d, a                                        ; $644a: $57
	adc  c                                           ; $644b: $89
	add  a                                           ; $644c: $87
	adc  c                                           ; $644d: $89
	xor  d                                           ; $644e: $aa
	sbc  c                                           ; $644f: $99
	xor  d                                           ; $6450: $aa
	xor  b                                           ; $6451: $a8
	ld   h, a                                        ; $6452: $67
	xor  d                                           ; $6453: $aa
	xor  c                                           ; $6454: $a9
	halt                                             ; $6455: $76
	ld   h, [hl]                                     ; $6456: $66
	ld   a, b                                        ; $6457: $78
	ld   [hl], l                                     ; $6458: $75
	inc  sp                                          ; $6459: $33
	ld   e, c                                        ; $645a: $59
	sbc  b                                           ; $645b: $98
	sbc  c                                           ; $645c: $99
	cp   e                                           ; $645d: $bb
	xor  b                                           ; $645e: $a8
	adc  b                                           ; $645f: $88
	xor  d                                           ; $6460: $aa
	xor  c                                           ; $6461: $a9
	adc  c                                           ; $6462: $89
	sbc  b                                           ; $6463: $98
	add  a                                           ; $6464: $87
	adc  c                                           ; $6465: $89
	sub  a                                           ; $6466: $97
	ld   d, e                                        ; $6467: $53
	dec  [hl]                                        ; $6468: $35
	ld   l, b                                        ; $6469: $68
	sbc  c                                           ; $646a: $99
	ld   [hl], a                                     ; $646b: $77
	adc  c                                           ; $646c: $89
	cp   e                                           ; $646d: $bb
	sbc  c                                           ; $646e: $99
	sbc  c                                           ; $646f: $99
	xor  c                                           ; $6470: $a9
	adc  c                                           ; $6471: $89
	sbc  c                                           ; $6472: $99
	xor  c                                           ; $6473: $a9
	add  a                                           ; $6474: $87
	ld   h, [hl]                                     ; $6475: $66
	ld   [hl], a                                     ; $6476: $77
	halt                                             ; $6477: $76
	ld   b, e                                        ; $6478: $43
	ld   b, [hl]                                     ; $6479: $46
	sbc  e                                           ; $647a: $9b
	xor  b                                           ; $647b: $a8
	ld   [hl], a                                     ; $647c: $77
	sbc  e                                           ; $647d: $9b
	cp   d                                           ; $647e: $ba
	xor  d                                           ; $647f: $aa
	add  a                                           ; $6480: $87
	ld   a, b                                        ; $6481: $78
	sbc  c                                           ; $6482: $99
	xor  c                                           ; $6483: $a9
	add  a                                           ; $6484: $87
	ld   h, l                                        ; $6485: $65
	ld   h, [hl]                                     ; $6486: $66
	ld   [hl], l                                     ; $6487: $75
	ld   b, l                                        ; $6488: $45
	ld   a, d                                        ; $6489: $7a
	sub  a                                           ; $648a: $97
	ld   l, c                                        ; $648b: $69
	xor  e                                           ; $648c: $ab
	xor  d                                           ; $648d: $aa
	sbc  e                                           ; $648e: $9b
	and  a                                           ; $648f: $a7
	ld   a, c                                        ; $6490: $79
	xor  e                                           ; $6491: $ab
	sbc  b                                           ; $6492: $98
	sbc  b                                           ; $6493: $98
	ld   h, l                                        ; $6494: $65
	ld   d, [hl]                                     ; $6495: $56
	adc  b                                           ; $6496: $88
	ld   [hl], l                                     ; $6497: $75
	ld   b, [hl]                                     ; $6498: $46
	adc  c                                           ; $6499: $89
	ld   [hl], a                                     ; $649a: $77
	adc  e                                           ; $649b: $8b
	cp   c                                           ; $649c: $b9
	sbc  c                                           ; $649d: $99
	xor  d                                           ; $649e: $aa
	xor  c                                           ; $649f: $a9
	xor  c                                           ; $64a0: $a9
	adc  b                                           ; $64a1: $88
	ld   a, b                                        ; $64a2: $78
	sbc  d                                           ; $64a3: $9a
	sub  [hl]                                        ; $64a4: $96
	ld   b, h                                        ; $64a5: $44
	ld   d, l                                        ; $64a6: $55
	ld   h, a                                        ; $64a7: $67
	sbc  c                                           ; $64a8: $99
	add  l                                           ; $64a9: $85
	ld   b, a                                        ; $64aa: $47
	call $89c9                                       ; $64ab: $cd $c9 $89
	xor  c                                           ; $64ae: $a9
	adc  c                                           ; $64af: $89
	xor  d                                           ; $64b0: $aa
	xor  c                                           ; $64b1: $a9
	adc  c                                           ; $64b2: $89
	adc  b                                           ; $64b3: $88
	ld   h, [hl]                                     ; $64b4: $66
	ld   h, l                                        ; $64b5: $65
	ld   d, l                                        ; $64b6: $55
	ld   a, c                                        ; $64b7: $79
	sub  a                                           ; $64b8: $97
	ld   d, l                                        ; $64b9: $55
	ld   a, e                                        ; $64ba: $7b
	cp   d                                           ; $64bb: $ba
	sbc  d                                           ; $64bc: $9a
	sbc  d                                           ; $64bd: $9a
	add  a                                           ; $64be: $87
	sbc  d                                           ; $64bf: $9a
	sbc  d                                           ; $64c0: $9a
	sbc  b                                           ; $64c1: $98
	add  a                                           ; $64c2: $87
	ld   h, [hl]                                     ; $64c3: $66
	ld   [hl], a                                     ; $64c4: $77
	sbc  b                                           ; $64c5: $98
	ld   d, d                                        ; $64c6: $52
	dec  [hl]                                        ; $64c7: $35
	adc  d                                           ; $64c8: $8a
	sbc  b                                           ; $64c9: $98
	sbc  d                                           ; $64ca: $9a
	xor  d                                           ; $64cb: $aa
	xor  c                                           ; $64cc: $a9
	xor  d                                           ; $64cd: $aa
	xor  d                                           ; $64ce: $aa
	sbc  c                                           ; $64cf: $99
	ld   [hl], a                                     ; $64d0: $77
	adc  c                                           ; $64d1: $89
	cp   c                                           ; $64d2: $b9
	ld   [hl], l                                     ; $64d3: $75
	ld   b, l                                        ; $64d4: $45
	ld   [hl], a                                     ; $64d5: $77
	ld   d, l                                        ; $64d6: $55
	ld   l, b                                        ; $64d7: $68
	sub  a                                           ; $64d8: $97
	ld   l, b                                        ; $64d9: $68
	xor  d                                           ; $64da: $aa
	xor  e                                           ; $64db: $ab
	cp   d                                           ; $64dc: $ba
	sbc  b                                           ; $64dd: $98
	sbc  e                                           ; $64de: $9b
	sbc  b                                           ; $64df: $98
	sbc  b                                           ; $64e0: $98
	adc  b                                           ; $64e1: $88
	halt                                             ; $64e2: $76
	ld   h, [hl]                                     ; $64e3: $66
	ld   h, a                                        ; $64e4: $67
	ld   h, h                                        ; $64e5: $64
	ld   b, [hl]                                     ; $64e6: $46
	adc  b                                           ; $64e7: $88
	halt                                             ; $64e8: $76
	adc  c                                           ; $64e9: $89
	xor  e                                           ; $64ea: $ab
	res  5, b                                        ; $64eb: $cb $a8
	sbc  c                                           ; $64ed: $99
	sbc  c                                           ; $64ee: $99
	sbc  d                                           ; $64ef: $9a
	sbc  c                                           ; $64f0: $99
	ld   [hl], a                                     ; $64f1: $77
	ld   [hl], a                                     ; $64f2: $77
	ld   h, [hl]                                     ; $64f3: $66
	add  a                                           ; $64f4: $87
	ld   b, e                                        ; $64f5: $43
	ld   d, [hl]                                     ; $64f6: $56
	ld   [hl], a                                     ; $64f7: $77
	sbc  c                                           ; $64f8: $99
	sbc  b                                           ; $64f9: $98
	sbc  d                                           ; $64fa: $9a
	sbc  d                                           ; $64fb: $9a
	xor  e                                           ; $64fc: $ab
	cp   d                                           ; $64fd: $ba
	adc  c                                           ; $64fe: $89
	adc  c                                           ; $64ff: $89
	adc  c                                           ; $6500: $89
	sbc  c                                           ; $6501: $99
	halt                                             ; $6502: $76
	halt                                             ; $6503: $76
	ld   d, h                                        ; $6504: $54
	ld   b, [hl]                                     ; $6505: $46
	ld   [hl], a                                     ; $6506: $77
	ld   a, b                                        ; $6507: $78
	adc  b                                           ; $6508: $88
	xor  e                                           ; $6509: $ab
	sbc  d                                           ; $650a: $9a
	xor  b                                           ; $650b: $a8
	sbc  c                                           ; $650c: $99
	sbc  b                                           ; $650d: $98
	sbc  b                                           ; $650e: $98
	adc  b                                           ; $650f: $88
	xor  d                                           ; $6510: $aa
	add  [hl]                                        ; $6511: $86
	ld   h, l                                        ; $6512: $65
	ld   d, [hl]                                     ; $6513: $56
	ld   h, l                                        ; $6514: $65
	ld   h, [hl]                                     ; $6515: $66
	ld   h, a                                        ; $6516: $67
	adc  c                                           ; $6517: $89
	sbc  c                                           ; $6518: $99
	adc  d                                           ; $6519: $8a
	cp   e                                           ; $651a: $bb
	sbc  d                                           ; $651b: $9a
	sbc  b                                           ; $651c: $98
	sbc  c                                           ; $651d: $99
	xor  c                                           ; $651e: $a9
	ld   [hl], a                                     ; $651f: $77
	adc  b                                           ; $6520: $88
	ld   [hl], a                                     ; $6521: $77
	add  a                                           ; $6522: $87
	ld   d, h                                        ; $6523: $54
	ld   b, l                                        ; $6524: $45
	ld   h, [hl]                                     ; $6525: $66
	adc  d                                           ; $6526: $8a
	sbc  b                                           ; $6527: $98
	sbc  c                                           ; $6528: $99
	xor  d                                           ; $6529: $aa
	xor  d                                           ; $652a: $aa
	xor  d                                           ; $652b: $aa
	xor  c                                           ; $652c: $a9
	adc  b                                           ; $652d: $88
	sbc  b                                           ; $652e: $98
	ld   [hl], a                                     ; $652f: $77
	ld   a, b                                        ; $6530: $78
	ld   [hl], a                                     ; $6531: $77
	ld   h, a                                        ; $6532: $67
	ld   d, h                                        ; $6533: $54
	ld   h, [hl]                                     ; $6534: $66
	ld   h, a                                        ; $6535: $67
	adc  b                                           ; $6536: $88
	sbc  c                                           ; $6537: $99
	sbc  d                                           ; $6538: $9a
	xor  d                                           ; $6539: $aa
	sbc  e                                           ; $653a: $9b
	xor  c                                           ; $653b: $a9
	sbc  b                                           ; $653c: $98
	sbc  c                                           ; $653d: $99
	adc  c                                           ; $653e: $89
	sub  a                                           ; $653f: $97
	ld   h, a                                        ; $6540: $67
	ld   h, [hl]                                     ; $6541: $66
	ld   h, [hl]                                     ; $6542: $66
	ld   d, l                                        ; $6543: $55
	ld   h, [hl]                                     ; $6544: $66
	ld   h, a                                        ; $6545: $67
	adc  d                                           ; $6546: $8a
	sbc  d                                           ; $6547: $9a
	cp   d                                           ; $6548: $ba
	xor  d                                           ; $6549: $aa
	cp   c                                           ; $654a: $b9
	sbc  c                                           ; $654b: $99
	xor  d                                           ; $654c: $aa
	adc  b                                           ; $654d: $88
	ld   [hl], a                                     ; $654e: $77
	ld   [hl], a                                     ; $654f: $77
	halt                                             ; $6550: $76
	ld   h, [hl]                                     ; $6551: $66
	ld   h, l                                        ; $6552: $65
	ld   h, a                                        ; $6553: $67
	ld   [hl], a                                     ; $6554: $77
	ld   [hl], a                                     ; $6555: $77
	xor  c                                           ; $6556: $a9
	sbc  c                                           ; $6557: $99
	xor  c                                           ; $6558: $a9
	adc  d                                           ; $6559: $8a
	sbc  c                                           ; $655a: $99
	adc  d                                           ; $655b: $8a
	sbc  b                                           ; $655c: $98
	adc  b                                           ; $655d: $88
	ld   [hl], a                                     ; $655e: $77
	ld   a, b                                        ; $655f: $78
	ld   [hl], a                                     ; $6560: $77
	halt                                             ; $6561: $76
	ld   h, [hl]                                     ; $6562: $66
	ld   [hl], a                                     ; $6563: $77
	ld   a, b                                        ; $6564: $78
	adc  c                                           ; $6565: $89
	adc  c                                           ; $6566: $89
	adc  c                                           ; $6567: $89
	sbc  b                                           ; $6568: $98
	xor  d                                           ; $6569: $aa
	sbc  b                                           ; $656a: $98
	sbc  c                                           ; $656b: $99
	adc  b                                           ; $656c: $88
	adc  b                                           ; $656d: $88
	adc  b                                           ; $656e: $88
	add  a                                           ; $656f: $87
	ld   [hl], a                                     ; $6570: $77
	add  a                                           ; $6571: $87
	ld   a, b                                        ; $6572: $78
	halt                                             ; $6573: $76
	ld   a, b                                        ; $6574: $78
	ld   [hl], a                                     ; $6575: $77
	adc  b                                           ; $6576: $88
	adc  b                                           ; $6577: $88
	sbc  c                                           ; $6578: $99
	adc  c                                           ; $6579: $89
	adc  c                                           ; $657a: $89
	adc  b                                           ; $657b: $88
	sbc  c                                           ; $657c: $99
	sbc  b                                           ; $657d: $98
	sbc  b                                           ; $657e: $98
	adc  b                                           ; $657f: $88
	add  a                                           ; $6580: $87
	ld   a, b                                        ; $6581: $78
	ld   [hl], a                                     ; $6582: $77
	add  a                                           ; $6583: $87
	ld   a, b                                        ; $6584: $78
	ld   [hl], a                                     ; $6585: $77
	adc  b                                           ; $6586: $88
	adc  b                                           ; $6587: $88
	sbc  c                                           ; $6588: $99
	sbc  b                                           ; $6589: $98
	sbc  c                                           ; $658a: $99
	adc  b                                           ; $658b: $88
	adc  b                                           ; $658c: $88
	adc  b                                           ; $658d: $88
	adc  b                                           ; $658e: $88
	adc  b                                           ; $658f: $88
	add  a                                           ; $6590: $87
	ld   a, b                                        ; $6591: $78
	ld   [hl], a                                     ; $6592: $77
	ld   [hl], a                                     ; $6593: $77
	ld   [hl], a                                     ; $6594: $77
	ld   a, b                                        ; $6595: $78
	add  a                                           ; $6596: $87
	adc  c                                           ; $6597: $89
	sbc  c                                           ; $6598: $99
	sbc  c                                           ; $6599: $99
	adc  c                                           ; $659a: $89
	sbc  c                                           ; $659b: $99
	sbc  c                                           ; $659c: $99
	adc  b                                           ; $659d: $88
	adc  b                                           ; $659e: $88
	adc  b                                           ; $659f: $88
	ld   a, b                                        ; $65a0: $78
	ld   [hl], a                                     ; $65a1: $77
	add  a                                           ; $65a2: $87
	adc  b                                           ; $65a3: $88
	ld   [hl], a                                     ; $65a4: $77
	add  a                                           ; $65a5: $87
	ld   a, b                                        ; $65a6: $78
	adc  b                                           ; $65a7: $88
	adc  c                                           ; $65a8: $89
	sbc  c                                           ; $65a9: $99
	sbc  c                                           ; $65aa: $99
	sbc  c                                           ; $65ab: $99
	adc  c                                           ; $65ac: $89
	sbc  b                                           ; $65ad: $98
	sbc  b                                           ; $65ae: $98
	adc  b                                           ; $65af: $88
	adc  b                                           ; $65b0: $88
	add  a                                           ; $65b1: $87
	adc  b                                           ; $65b2: $88
	adc  b                                           ; $65b3: $88
	ld   [hl], a                                     ; $65b4: $77
	adc  b                                           ; $65b5: $88
	ld   a, b                                        ; $65b6: $78
	add  a                                           ; $65b7: $87
	adc  b                                           ; $65b8: $88
	adc  b                                           ; $65b9: $88
	sbc  b                                           ; $65ba: $98
	adc  b                                           ; $65bb: $88
	sbc  c                                           ; $65bc: $99
	adc  b                                           ; $65bd: $88
	sbc  b                                           ; $65be: $98
	adc  b                                           ; $65bf: $88
	adc  b                                           ; $65c0: $88
	ld   a, b                                        ; $65c1: $78
	ld   [hl], a                                     ; $65c2: $77
	add  a                                           ; $65c3: $87
	ld   a, b                                        ; $65c4: $78
	ld   [hl], a                                     ; $65c5: $77
	add  a                                           ; $65c6: $87
	adc  b                                           ; $65c7: $88
	adc  c                                           ; $65c8: $89
	adc  b                                           ; $65c9: $88
	sbc  b                                           ; $65ca: $98
	adc  d                                           ; $65cb: $8a
	add  a                                           ; $65cc: $87
	sbc  b                                           ; $65cd: $98
	ld   a, b                                        ; $65ce: $78
	sbc  b                                           ; $65cf: $98
	adc  b                                           ; $65d0: $88
	adc  b                                           ; $65d1: $88
	ld   [hl], a                                     ; $65d2: $77
	adc  b                                           ; $65d3: $88
	ld   [hl], a                                     ; $65d4: $77
	ld   [hl], a                                     ; $65d5: $77
	ld   [hl], a                                     ; $65d6: $77
	add  a                                           ; $65d7: $87
	ld   a, b                                        ; $65d8: $78
	adc  b                                           ; $65d9: $88
	sbc  c                                           ; $65da: $99
	adc  c                                           ; $65db: $89
	sbc  c                                           ; $65dc: $99
	sbc  b                                           ; $65dd: $98
	adc  c                                           ; $65de: $89
	adc  b                                           ; $65df: $88
	add  a                                           ; $65e0: $87
	ld   [hl], a                                     ; $65e1: $77
	ld   [hl], a                                     ; $65e2: $77
	ld   [hl], a                                     ; $65e3: $77
	ld   [hl], a                                     ; $65e4: $77
	ld   [hl], a                                     ; $65e5: $77
	ld   [hl], a                                     ; $65e6: $77
	adc  b                                           ; $65e7: $88
	adc  c                                           ; $65e8: $89
	xor  d                                           ; $65e9: $aa
	xor  c                                           ; $65ea: $a9
	sbc  c                                           ; $65eb: $99
	xor  b                                           ; $65ec: $a8
	adc  c                                           ; $65ed: $89
	ld   [hl], a                                     ; $65ee: $77
	ld   [hl], a                                     ; $65ef: $77
	halt                                             ; $65f0: $76
	ld   h, [hl]                                     ; $65f1: $66
	ld   h, [hl]                                     ; $65f2: $66
	ld   h, [hl]                                     ; $65f3: $66
	ld   [hl], a                                     ; $65f4: $77
	ld   a, c                                        ; $65f5: $79
	sbc  c                                           ; $65f6: $99
	sbc  d                                           ; $65f7: $9a
	xor  d                                           ; $65f8: $aa
	xor  d                                           ; $65f9: $aa
	xor  d                                           ; $65fa: $aa
	sbc  b                                           ; $65fb: $98
	adc  b                                           ; $65fc: $88
	ld   [hl], a                                     ; $65fd: $77
	ld   [hl], a                                     ; $65fe: $77
	ld   [hl], l                                     ; $65ff: $75
	ld   h, l                                        ; $6600: $65
	ld   d, l                                        ; $6601: $55
	ld   d, a                                        ; $6602: $57
	ld   h, a                                        ; $6603: $67
	adc  d                                           ; $6604: $8a
	xor  c                                           ; $6605: $a9
	res  5, e                                        ; $6606: $cb $ab
	cp   d                                           ; $6608: $ba
	adc  e                                           ; $6609: $8b
	adc  b                                           ; $660a: $88
	add  a                                           ; $660b: $87
	halt                                             ; $660c: $76
	ld   [hl], l                                     ; $660d: $75
	ld   d, l                                        ; $660e: $55
	ld   b, h                                        ; $660f: $44
	ld   d, a                                        ; $6610: $57
	ld   h, [hl]                                     ; $6611: $66
	sbc  d                                           ; $6612: $9a
	sbc  e                                           ; $6613: $9b
	res  3, h                                        ; $6614: $cb $9c
	cp   d                                           ; $6616: $ba
	xor  c                                           ; $6617: $a9
	sbc  b                                           ; $6618: $98
	sbc  b                                           ; $6619: $98
	ld   [hl], a                                     ; $661a: $77
	add  [hl]                                        ; $661b: $86
	ld   d, l                                        ; $661c: $55
	ld   b, d                                        ; $661d: $42
	dec  [hl]                                        ; $661e: $35
	ld   h, [hl]                                     ; $661f: $66
	adc  d                                           ; $6620: $8a
	xor  h                                           ; $6621: $ac
	call z, $a9bb                                    ; $6622: $cc $bb $a9
	sbc  b                                           ; $6625: $98
	sbc  b                                           ; $6626: $98
	adc  b                                           ; $6627: $88
	ld   [hl], a                                     ; $6628: $77
	ld   [hl], a                                     ; $6629: $77
	ld   d, l                                        ; $662a: $55
	ld   b, h                                        ; $662b: $44
	inc  [hl]                                        ; $662c: $34
	ld   h, l                                        ; $662d: $65
	ld   a, c                                        ; $662e: $79
	xor  h                                           ; $662f: $ac
	cp   l                                           ; $6630: $bd
	res  7, d                                        ; $6631: $cb $ba
	sbc  b                                           ; $6633: $98
	sbc  c                                           ; $6634: $99
	sbc  b                                           ; $6635: $98
	halt                                             ; $6636: $76
	ld   d, [hl]                                     ; $6637: $56
	ld   h, l                                        ; $6638: $65
	ld   d, h                                        ; $6639: $54
	inc  [hl]                                        ; $663a: $34
	halt                                             ; $663b: $76
	ld   l, d                                        ; $663c: $6a
	call z, $c9ce                                    ; $663d: $cc $ce $c9
	xor  c                                           ; $6640: $a9
	adc  c                                           ; $6641: $89
	sbc  c                                           ; $6642: $99
	adc  c                                           ; $6643: $89
	add  a                                           ; $6644: $87
	halt                                             ; $6645: $76
	ld   d, l                                        ; $6646: $55
	ld   b, e                                        ; $6647: $43
	inc  [hl]                                        ; $6648: $34
	halt                                             ; $6649: $76
	ld   a, c                                        ; $664a: $79
	cp   h                                           ; $664b: $bc
	cp   [hl]                                        ; $664c: $be
	cp   d                                           ; $664d: $ba
	ret  z                                           ; $664e: $c8

	adc  b                                           ; $664f: $88
	sbc  b                                           ; $6650: $98
	sbc  c                                           ; $6651: $99
	ld   h, a                                        ; $6652: $67
	halt                                             ; $6653: $76
	ld   d, h                                        ; $6654: $54
	ld   [hl-], a                                    ; $6655: $32
	ld   [hl], $76                                   ; $6656: $36 $76
	xor  d                                           ; $6658: $aa
	call z, $abde                                    ; $6659: $cc $de $ab
	xor  c                                           ; $665c: $a9
	sbc  b                                           ; $665d: $98
	sbc  b                                           ; $665e: $98
	add  a                                           ; $665f: $87
	ld   h, a                                        ; $6660: $67
	halt                                             ; $6661: $76
	ld   d, h                                        ; $6662: $54
	ld   [hl+], a                                    ; $6663: $22
	ld   b, a                                        ; $6664: $47
	ld   l, b                                        ; $6665: $68
	cp   e                                           ; $6666: $bb
	call z, $abeb                                    ; $6667: $cc $eb $ab
	adc  c                                           ; $666a: $89
	sbc  c                                           ; $666b: $99
	sbc  b                                           ; $666c: $98
	add  a                                           ; $666d: $87
	halt                                             ; $666e: $76
	ld   h, h                                        ; $666f: $64
	inc  sp                                          ; $6670: $33
	inc  hl                                          ; $6671: $23
	add  a                                           ; $6672: $87
	ld   a, h                                        ; $6673: $7c
	cp   e                                           ; $6674: $bb
	cp   h                                           ; $6675: $bc
	cp   c                                           ; $6676: $b9
	ret                                              ; $6677: $c9


	xor  e                                           ; $6678: $ab
	sbc  c                                           ; $6679: $99
	adc  b                                           ; $667a: $88
	ld   d, a                                        ; $667b: $57
	ld   h, l                                        ; $667c: $65
	ld   h, h                                        ; $667d: $64
	ld   [hl-], a                                    ; $667e: $32
	dec  [hl]                                        ; $667f: $35
	ld   a, b                                        ; $6680: $78
	cp   h                                           ; $6681: $bc
	cp   h                                           ; $6682: $bc
	call z, $a88b                                    ; $6683: $cc $8b $a8
	xor  b                                           ; $6686: $a8
	adc  b                                           ; $6687: $88
	add  a                                           ; $6688: $87
	ld   [hl], a                                     ; $6689: $77
	ld   d, l                                        ; $668a: $55
	ld   [hl-], a                                    ; $668b: $32
	inc  hl                                          ; $668c: $23
	ld   a, c                                        ; $668d: $79
	sbc  d                                           ; $668e: $9a
	cp   e                                           ; $668f: $bb
	xor  l                                           ; $6690: $ad
	cp   c                                           ; $6691: $b9
	ret                                              ; $6692: $c9


	sbc  c                                           ; $6693: $99
	sbc  d                                           ; $6694: $9a
	sbc  b                                           ; $6695: $98
	ld   h, a                                        ; $6696: $67
	ld   h, l                                        ; $6697: $65
	ld   b, e                                        ; $6698: $43

Jump_0c3_6699:
	inc  hl                                          ; $6699: $23
	ld   e, c                                        ; $669a: $59
	sbc  d                                           ; $669b: $9a
	jp   c, $bada                                    ; $669c: $da $da $ba

	xor  e                                           ; $669f: $ab
	adc  d                                           ; $66a0: $8a
	sbc  c                                           ; $66a1: $99
	adc  b                                           ; $66a2: $88
	add  a                                           ; $66a3: $87
	halt                                             ; $66a4: $76
	ld   h, d                                        ; $66a5: $62
	ld   [hl+], a                                    ; $66a6: $22
	dec  h                                           ; $66a7: $25
	sbc  b                                           ; $66a8: $98
	cp   l                                           ; $66a9: $bd
	call c, $8abb                                    ; $66aa: $dc $bb $8a
	sbc  b                                           ; $66ad: $98
	sbc  c                                           ; $66ae: $99
	xor  b                                           ; $66af: $a8
	sub  [hl]                                        ; $66b0: $96
	ld   d, l                                        ; $66b1: $55
	ld   d, h                                        ; $66b2: $54
	inc  hl                                          ; $66b3: $23
	dec  [hl]                                        ; $66b4: $35
	sbc  b                                           ; $66b5: $98
	cp   h                                           ; $66b6: $bc
	call z, $89bc                                    ; $66b7: $cc $bc $89
	xor  c                                           ; $66ba: $a9
	xor  c                                           ; $66bb: $a9
	sbc  b                                           ; $66bc: $98
	sub  a                                           ; $66bd: $97
	ld   [hl], a                                     ; $66be: $77
	ld   d, e                                        ; $66bf: $53
	ld   [de], a                                     ; $66c0: $12
	inc  d                                           ; $66c1: $14
	xor  b                                           ; $66c2: $a8
	adc  $bd                                         ; $66c3: $ce $bd
	xor  h                                           ; $66c5: $ac
	sbc  b                                           ; $66c6: $98
	rst  ToBoot                                         ; $66c7: $c7
	cp   d                                           ; $66c8: $ba

Call_0c3_66c9:
	sbc  c                                           ; $66c9: $99
	ld   [hl], a                                     ; $66ca: $77
	ld   d, a                                        ; $66cb: $57
	ld   h, l                                        ; $66cc: $65
	ld   [hl+], a                                    ; $66cd: $22
	inc  de                                          ; $66ce: $13
	sub  a                                           ; $66cf: $97
	cp   [hl]                                        ; $66d0: $be
	call Call_0c3_79cb                               ; $66d1: $cd $cb $79
	or   a                                           ; $66d4: $b7
	call z, $85a9                                    ; $66d5: $cc $a9 $85
	ld   b, l                                        ; $66d8: $45
	ld   b, h                                        ; $66d9: $44
	dec  h                                           ; $66da: $25
	dec  [hl]                                        ; $66db: $35
	sbc  c                                           ; $66dc: $99
	db   $db                                         ; $66dd: $db
	call z, $7abb                                    ; $66de: $cc $bb $7a
	xor  b                                           ; $66e1: $a8
	sbc  d                                           ; $66e2: $9a
	cp   c                                           ; $66e3: $b9
	sub  [hl]                                        ; $66e4: $96
	ld   b, [hl]                                     ; $66e5: $46
	ld   sp, $3934                                   ; $66e6: $31 $34 $39
	xor  c                                           ; $66e9: $a9
	db   $eb                                         ; $66ea: $eb
	res  5, c                                        ; $66eb: $cb $a9
	adc  h                                           ; $66ed: $8c
	adc  d                                           ; $66ee: $8a
	or   a                                           ; $66ef: $b7
	ld   [hl], a                                     ; $66f0: $77
	ld   [hl], l                                     ; $66f1: $75
	ld   [hl], l                                     ; $66f2: $75
	inc  hl                                          ; $66f3: $23
	inc  hl                                          ; $66f4: $23
	ld   [hl], a                                     ; $66f5: $77
	sbc  l                                           ; $66f6: $9d
	call z, $a8bc                                    ; $66f7: $cc $bc $a8
	or   a                                           ; $66fa: $b7
	sbc  d                                           ; $66fb: $9a
	xor  c                                           ; $66fc: $a9
	add  a                                           ; $66fd: $87
	dec  [hl]                                        ; $66fe: $35
	ld   d, e                                        ; $66ff: $53
	inc  [hl]                                        ; $6700: $34
	ld   d, [hl]                                     ; $6701: $56
	sbc  c                                           ; $6702: $99
	cp   h                                           ; $6703: $bc
	jp   z, $8ca9                                    ; $6704: $ca $a9 $8c

	xor  b                                           ; $6707: $a8
	sbc  c                                           ; $6708: $99
	sbc  b                                           ; $6709: $98
	add  h                                           ; $670a: $84
	ld   d, l                                        ; $670b: $55
	inc  [hl]                                        ; $670c: $34
	inc  sp                                          ; $670d: $33
	ld   e, c                                        ; $670e: $59
	xor  e                                           ; $670f: $ab
	ei                                               ; $6710: $fb
	xor  e                                           ; $6711: $ab
	add  a                                           ; $6712: $87
	res  3, e                                        ; $6713: $cb $9b
	sub  [hl]                                        ; $6715: $96
	ld   h, [hl]                                     ; $6716: $66
	ld   b, [hl]                                     ; $6717: $46
	ld   h, e                                        ; $6718: $63
	ld   b, h                                        ; $6719: $44
	ld   b, [hl]                                     ; $671a: $46
	xor  e                                           ; $671b: $ab
	cp   l                                           ; $671c: $bd
	cp   d                                           ; $671d: $ba
	ret                                              ; $671e: $c9


	adc  d                                           ; $671f: $8a
	adc  c                                           ; $6720: $89
	xor  b                                           ; $6721: $a8
	ld   a, b                                        ; $6722: $78
	ld   h, h                                        ; $6723: $64
	ld   [hl], h                                     ; $6724: $74
	inc  de                                          ; $6725: $13
	ld   d, h                                        ; $6726: $54
	xor  h                                           ; $6727: $ac
	sbc  h                                           ; $6728: $9c
	db   $db                                         ; $6729: $db
	cp   d                                           ; $672a: $ba
	add  a                                           ; $672b: $87
	xor  c                                           ; $672c: $a9
	sbc  h                                           ; $672d: $9c
	sub  [hl]                                        ; $672e: $96
	sub  [hl]                                        ; $672f: $96
	ld   b, h                                        ; $6730: $44
	ld   [hl-], a                                    ; $6731: $32
	ld   b, [hl]                                     ; $6732: $46
	ld   a, d                                        ; $6733: $7a
	xor  e                                           ; $6734: $ab

Jump_0c3_6735:
	call c, $879b                                    ; $6735: $dc $9b $87
	cp   d                                           ; $6738: $ba
	sbc  e                                           ; $6739: $9b
	sub  l                                           ; $673a: $95
	ld   d, l                                        ; $673b: $55
	ld   d, a                                        ; $673c: $57
	ld   d, d                                        ; $673d: $52
	ld   d, [hl]                                     ; $673e: $56
	ld   e, b                                        ; $673f: $58
	xor  b                                           ; $6740: $a8
	cp   l                                           ; $6741: $bd
	xor  e                                           ; $6742: $ab
	ret  z                                           ; $6743: $c8

	sbc  d                                           ; $6744: $9a
	ld   a, c                                        ; $6745: $79
	sub  [hl]                                        ; $6746: $96
	ld   h, [hl]                                     ; $6747: $66
	ld   d, l                                        ; $6748: $55
	ld   b, e                                        ; $6749: $43
	dec  h                                           ; $674a: $25
	ld   a, c                                        ; $674b: $79
	xor  d                                           ; $674c: $aa
	cp   l                                           ; $674d: $bd
	cp   d                                           ; $674e: $ba
	xor  b                                           ; $674f: $a8
	xor  c                                           ; $6750: $a9
	xor  c                                           ; $6751: $a9
	ld   [hl], a                                     ; $6752: $77
	ld   h, [hl]                                     ; $6753: $66
	ld   h, l                                        ; $6754: $65
	ld   [hl+], a                                    ; $6755: $22
	dec  [hl]                                        ; $6756: $35
	ld   a, d                                        ; $6757: $7a
	xor  d                                           ; $6758: $aa
	db   $db                                         ; $6759: $db
	cp   e                                           ; $675a: $bb
	sbc  c                                           ; $675b: $99
	xor  c                                           ; $675c: $a9
	sbc  d                                           ; $675d: $9a
	add  a                                           ; $675e: $87
	ld   h, h                                        ; $675f: $64
	ld   d, l                                        ; $6760: $55
	ld   b, e                                        ; $6761: $43
	dec  [hl]                                        ; $6762: $35
	adc  c                                           ; $6763: $89
	xor  e                                           ; $6764: $ab
	call z, $89ca                                    ; $6765: $cc $ca $89
	sub  a                                           ; $6768: $97
	sbc  c                                           ; $6769: $99
	adc  d                                           ; $676a: $8a
	ld   h, l                                        ; $676b: $65
	ld   b, d                                        ; $676c: $42
	inc  sp                                          ; $676d: $33
	ld   h, [hl]                                     ; $676e: $66
	sbc  h                                           ; $676f: $9c
	xor  h                                           ; $6770: $ac
	cp   c                                           ; $6771: $b9
	xor  d                                           ; $6772: $aa
	sbc  e                                           ; $6773: $9b
	cp   d                                           ; $6774: $ba
	adc  b                                           ; $6775: $88
	ld   h, h                                        ; $6776: $64
	ld   h, e                                        ; $6777: $63
	ld   [hl], $36                                   ; $6778: $36 $36
	add  [hl]                                        ; $677a: $86
	xor  d                                           ; $677b: $aa
	cp   h                                           ; $677c: $bc
	call z, $97ac                                    ; $677d: $cc $ac $97
	sub  a                                           ; $6780: $97
	ld   h, a                                        ; $6781: $67
	ld   a, b                                        ; $6782: $78
	add  [hl]                                        ; $6783: $86
	ld   b, e                                        ; $6784: $43
	inc  [hl]                                        ; $6785: $34
	ld   a, c                                        ; $6786: $79
	adc  d                                           ; $6787: $8a
	reti                                             ; $6788: $d9


	xor  d                                           ; $6789: $aa
	ld   a, d                                        ; $678a: $7a
	xor  d                                           ; $678b: $aa
	xor  d                                           ; $678c: $aa
	ld   [hl], l                                     ; $678d: $75
	ld   d, e                                        ; $678e: $53
	inc  de                                          ; $678f: $13
	ld   b, l                                        ; $6790: $45
	adc  d                                           ; $6791: $8a
	jp   z, $8bac                                    ; $6792: $ca $ac $8b

	xor  c                                           ; $6795: $a9
	cp   c                                           ; $6796: $b9

Jump_0c3_6797:
	xor  c                                           ; $6797: $a9
	halt                                             ; $6798: $76
	ld   h, [hl]                                     ; $6799: $66
	ld   d, h                                        ; $679a: $54
	ld   d, h                                        ; $679b: $54
	ld   c, b                                        ; $679c: $48
	adc  b                                           ; $679d: $88
	xor  h                                           ; $679e: $ac
	cp   l                                           ; $679f: $bd
	jp   z, $7797                                    ; $67a0: $ca $97 $77

	sbc  c                                           ; $67a3: $99
	cp   b                                           ; $67a4: $b8
	ld   [hl], l                                     ; $67a5: $75
	inc  hl                                          ; $67a6: $23
	dec  [hl]                                        ; $67a7: $35
	adc  c                                           ; $67a8: $89
	cp   e                                           ; $67a9: $bb
	cp   h                                           ; $67aa: $bc
	xor  e                                           ; $67ab: $ab
	xor  b                                           ; $67ac: $a8
	sbc  c                                           ; $67ad: $99
	adc  d                                           ; $67ae: $8a
	and  a                                           ; $67af: $a7
	ld   d, l                                        ; $67b0: $55
	ld   [de], a                                     ; $67b1: $12
	ld   d, l                                        ; $67b2: $55
	ld   a, d                                        ; $67b3: $7a
	sbc  d                                           ; $67b4: $9a
	sbc  h                                           ; $67b5: $9c
	sbc  c                                           ; $67b6: $99
	ret                                              ; $67b7: $c9


	cp   d                                           ; $67b8: $ba
	sbc  b                                           ; $67b9: $98
	ld   a, b                                        ; $67ba: $78
	ld   h, a                                        ; $67bb: $67
	ld   d, d                                        ; $67bc: $52
	ld   b, h                                        ; $67bd: $44
	ld   l, c                                        ; $67be: $69
	adc  d                                           ; $67bf: $8a
	cp   h                                           ; $67c0: $bc
	jp   c, Jump_0c3_78b7                            ; $67c1: $da $b7 $78

	ld   a, d                                        ; $67c4: $7a
	xor  c                                           ; $67c5: $a9
	ld   [hl], l                                     ; $67c6: $75
	ld   b, d                                        ; $67c7: $42
	ld   d, l                                        ; $67c8: $55
	ld   l, e                                        ; $67c9: $6b
	sbc  d                                           ; $67ca: $9a
	jp   z, $88aa                                    ; $67cb: $ca $aa $88

	adc  d                                           ; $67ce: $8a
	xor  e                                           ; $67cf: $ab
	and  a                                           ; $67d0: $a7
	ld   d, e                                        ; $67d1: $53
	ld   sp, $7a46                                   ; $67d2: $31 $46 $7a
	ret                                              ; $67d5: $c9


	sbc  e                                           ; $67d6: $9b
	cp   d                                           ; $67d7: $ba
	cp   e                                           ; $67d8: $bb
	sub  a                                           ; $67d9: $97
	add  a                                           ; $67da: $87
	adc  b                                           ; $67db: $88
	ld   e, b                                        ; $67dc: $58
	ld   h, c                                        ; $67dd: $61
	inc  [hl]                                        ; $67de: $34
	ld   c, e                                        ; $67df: $4b
	cp   d                                           ; $67e0: $ba
	call c, $b8bb                                    ; $67e1: $dc $bb $b8
	adc  b                                           ; $67e4: $88
	ld   a, d                                        ; $67e5: $7a
	and  a                                           ; $67e6: $a7
	halt                                             ; $67e7: $76
	ld   [hl+], a                                    ; $67e8: $22
	inc  [hl]                                        ; $67e9: $34
	adc  d                                           ; $67ea: $8a
	cp   l                                           ; $67eb: $bd
	cp   h                                           ; $67ec: $bc
	sbc  c                                           ; $67ed: $99
	add  [hl]                                        ; $67ee: $86
	xor  d                                           ; $67ef: $aa
	xor  e                                           ; $67f0: $ab
	add  [hl]                                        ; $67f1: $86
	ld   b, e                                        ; $67f2: $43
	ld   [de], a                                     ; $67f3: $12
	ld   b, [hl]                                     ; $67f4: $46
	call z, $cccb                                    ; $67f5: $cc $cb $cc
	xor  h                                           ; $67f8: $ac
	add  a                                           ; $67f9: $87
	add  a                                           ; $67fa: $87
	sbc  c                                           ; $67fb: $99
	add  [hl]                                        ; $67fc: $86
	ld   d, e                                        ; $67fd: $53
	inc  de                                          ; $67fe: $13
	ld   c, c                                        ; $67ff: $49
	xor  d                                           ; $6800: $aa
	cp   l                                           ; $6801: $bd
	call z, Call_0c3_78b9                            ; $6802: $cc $b9 $78
	ld   l, b                                        ; $6805: $68
	add  a                                           ; $6806: $87
	ld   [hl], l                                     ; $6807: $75
	ld   [hl-], a                                    ; $6808: $32
	inc  sp                                          ; $6809: $33
	adc  e                                           ; $680a: $8b
	sbc  l                                           ; $680b: $9d
	call z, $97ba                                    ; $680c: $cc $ba $97
	sbc  b                                           ; $680f: $98
	adc  d                                           ; $6810: $8a
	sub  [hl]                                        ; $6811: $96
	ld   h, e                                        ; $6812: $63
	ld   [de], a                                     ; $6813: $12
	ld   [hl], $bc                                   ; $6814: $36 $bc
	cp   l                                           ; $6816: $bd
	ei                                               ; $6817: $fb
	cp   d                                           ; $6818: $ba
	ld   l, b                                        ; $6819: $68
	ld   l, b                                        ; $681a: $68
	sbc  c                                           ; $681b: $99
	ld   [hl], l                                     ; $681c: $75
	ld   b, c                                        ; $681d: $41
	inc  de                                          ; $681e: $13
	ld   e, d                                        ; $681f: $5a
	cp   l                                           ; $6820: $bd
	call $c9ba                                       ; $6821: $cd $ba $c9
	sbc  c                                           ; $6824: $99
	ld   [hl], a                                     ; $6825: $77
	sub  l                                           ; $6826: $95
	ld   d, h                                        ; $6827: $54
	ld   [de], a                                     ; $6828: $12
	ld   b, [hl]                                     ; $6829: $46
	xor  h                                           ; $682a: $ac
	call $9bda                                       ; $682b: $cd $da $9b
	ld   [hl], a                                     ; $682e: $77
	sbc  b                                           ; $682f: $98
	adc  b                                           ; $6830: $88
	ld   [hl], l                                     ; $6831: $75
	ld   sp, $7b13                                   ; $6832: $31 $13 $7b
	sbc  $ee                                         ; $6835: $de $ee
	xor  d                                           ; $6837: $aa
	ld   [hl], a                                     ; $6838: $77
	add  a                                           ; $6839: $87
	sbc  b                                           ; $683a: $98
	halt                                             ; $683b: $76
	ld   b, d                                        ; $683c: $42
	inc  de                                          ; $683d: $13
	ld   l, c                                        ; $683e: $69
	cp   l                                           ; $683f: $bd
	sbc  $ba                                         ; $6840: $de $ba
	and  a                                           ; $6842: $a7
	add  a                                           ; $6843: $87
	add  a                                           ; $6844: $87
	ld   [hl], a                                     ; $6845: $77
	ld   d, e                                        ; $6846: $53
	ld   de, $be49                                   ; $6847: $11 $49 $be
	rst  $28                                         ; $684a: $ef
	cp   d                                           ; $684b: $ba
	and  a                                           ; $684c: $a7
	adc  b                                           ; $684d: $88
	ld   a, b                                        ; $684e: $78
	ld   h, h                                        ; $684f: $64
	inc  sp                                          ; $6850: $33
	inc  hl                                          ; $6851: $23
	ld   l, c                                        ; $6852: $69
	cp   h                                           ; $6853: $bc
	adc  $d9                                         ; $6854: $ce $d9
	ret  z                                           ; $6856: $c8

	ld   l, b                                        ; $6857: $68
	ld   [hl], a                                     ; $6858: $77
	halt                                             ; $6859: $76
	ld   d, l                                        ; $685a: $55
	ld   sp, $ae47                                   ; $685b: $31 $47 $ae
	xor  $e9                                         ; $685e: $ee $e9
	or   a                                           ; $6860: $b7
	ld   h, a                                        ; $6861: $67
	ld   a, c                                        ; $6862: $79
	add  a                                           ; $6863: $87
	ld   h, e                                        ; $6864: $63
	ld   de, $cf47                                   ; $6865: $11 $47 $cf
	rst  $28                                         ; $6868: $ef
	rst  ToBoot                                         ; $6869: $c7
	and  a                                           ; $686a: $a7
	ld   l, d                                        ; $686b: $6a
	sbc  b                                           ; $686c: $98
	ld   [hl], l                                     ; $686d: $75
	ld   [hl-], a                                    ; $686e: $32
	ld   [de], a                                     ; $686f: $12
	ld   l, d                                        ; $6870: $6a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6871: $cf
	rst  $28                                         ; $6872: $ef
	xor  b                                           ; $6873: $a8
	and  l                                           ; $6874: $a5
	adc  c                                           ; $6875: $89
	ld   l, c                                        ; $6876: $69
	ld   h, l                                        ; $6877: $65
	ld   b, d                                        ; $6878: $42
	ld   de, $ff78                                   ; $6879: $11 $78 $ff
	xor  $a9                                         ; $687c: $ee $a9
	halt                                             ; $687e: $76
	add  a                                           ; $687f: $87
	sub  a                                           ; $6880: $97
	ld   h, h                                        ; $6881: $64
	ld   [hl+], a                                    ; $6882: $22
	dec  d                                           ; $6883: $15
	xor  h                                           ; $6884: $ac
	rst  $38                                         ; $6885: $ff
	db   $ec                                         ; $6886: $ec
	adc  c                                           ; $6887: $89
	ld   a, b                                        ; $6888: $78
	sbc  c                                           ; $6889: $99
	sub  [hl]                                        ; $688a: $96
	ld   d, d                                        ; $688b: $52
	ld   de, $af19                                   ; $688c: $11 $19 $af
	db   $fd                                         ; $688f: $fd
	jp   hl                                          ; $6890: $e9


	ld   a, b                                        ; $6891: $78
	ld   l, b                                        ; $6892: $68
	xor  c                                           ; $6893: $a9
	add  a                                           ; $6894: $87
	ld   sp, $4b11                                   ; $6895: $31 $11 $4b
	rst  JumpTable                                         ; $6898: $df
	rst  $38                                         ; $6899: $ff
	add  $75                                         ; $689a: $c6 $75
	ld   a, c                                        ; $689c: $79
	xor  d                                           ; $689d: $aa
	add  h                                           ; $689e: $84
	ld   de, $bd13                                   ; $689f: $11 $13 $bd
	rst  $38                                         ; $68a2: $ff
	db   $ec                                         ; $68a3: $ec
	ld   [hl], a                                     ; $68a4: $77
	ld   d, [hl]                                     ; $68a5: $56
	sbc  d                                           ; $68a6: $9a
	cp   b                                           ; $68a7: $b8
	ld   h, c                                        ; $68a8: $61
	ld   de, $cf1a                                   ; $68a9: $11 $1a $cf
	cp   $d6                                         ; $68ac: $fe $d6
	ld   h, [hl]                                     ; $68ae: $66
	ld   e, c                                        ; $68af: $59
	cp   h                                           ; $68b0: $bc
	sub  [hl]                                        ; $68b1: $96
	ld   de, $ad11                                   ; $68b2: $11 $11 $ad
	rst  $38                                         ; $68b5: $ff
	db   $fd                                         ; $68b6: $fd
	add  l                                           ; $68b7: $85
	ld   d, l                                        ; $68b8: $55
	adc  e                                           ; $68b9: $8b
	cp   d                                           ; $68ba: $ba
	ld   h, e                                        ; $68bb: $63
	ld   de, $cf1a                                   ; $68bc: $11 $1a $cf
	rst  $38                                         ; $68bf: $ff
	ret                                              ; $68c0: $c9


	ld   d, l                                        ; $68c1: $55
	ld   e, b                                        ; $68c2: $58
	xor  l                                           ; $68c3: $ad
	or   a                                           ; $68c4: $b7
	ld   sp, $ac11                                   ; $68c5: $31 $11 $ac
	rst  $38                                         ; $68c8: $ff
	call c, $5594                                    ; $68c9: $dc $94 $55
	ld   a, d                                        ; $68cc: $7a
	jp   c, $1174                                    ; $68cd: $da $74 $11

	add  hl, de                                      ; $68d0: $19
	rst  JumpTable                                         ; $68d1: $df
	db   $fd                                         ; $68d2: $fd
	jp   z, Jump_0c3_5734                            ; $68d3: $ca $34 $57

	xor  [hl]                                        ; $68d6: $ae
	cp   b                                           ; $68d7: $b8
	ld   d, c                                        ; $68d8: $51
	ld   de, $df9d                                   ; $68d9: $11 $9d $df
	ld   a, [$45c4]                                  ; $68dc: $fa $c4 $45
	ld   a, d                                        ; $68df: $7a
	db   $dd                                         ; $68e0: $dd
	ld   [hl], h                                     ; $68e1: $74
	ld   de, $cf1d                                   ; $68e2: $11 $1d $cf
	ei                                               ; $68e5: $fb
	xor  e                                           ; $68e6: $ab
	inc  [hl]                                        ; $68e7: $34
	ld   l, b                                        ; $68e8: $68
	sbc  l                                           ; $68e9: $9d
	add  $51                                         ; $68ea: $c6 $51
	ld   de, $cfdd                                   ; $68ec: $11 $dd $cf
	ret  z                                           ; $68ef: $c8

	and  e                                           ; $68f0: $a3
	ld   b, l                                        ; $68f1: $45
	sbc  d                                           ; $68f2: $9a
	db   $dd                                         ; $68f3: $dd
	ld   h, e                                        ; $68f4: $63
	ld   de, $be1f                                   ; $68f5: $11 $1f $be
	ld   hl, sp-$76                                  ; $68f8: $f8 $8a
	inc  h                                           ; $68fa: $24
	ld   l, c                                        ; $68fb: $69
	sbc  l                                           ; $68fc: $9d
	or   l                                           ; $68fd: $b5
	ld   b, c                                        ; $68fe: $41
	ld   de, $bfed                                   ; $68ff: $11 $ed $bf
	sub  [hl]                                        ; $6902: $96
	pop  bc                                          ; $6903: $c1
	ld   d, a                                        ; $6904: $57
	sbc  d                                           ; $6905: $9a
	db   $eb                                         ; $6906: $eb
	ld   h, h                                        ; $6907: $64
	ld   de, $dc1f                                   ; $6908: $11 $1f $dc
	ld   sp, hl                                      ; $690b: $f9
	ld   l, h                                        ; $690c: $6c
	inc  d                                           ; $690d: $14
	ld   a, c                                        ; $690e: $79
	xor  [hl]                                        ; $690f: $ae
	or   h                                           ; $6910: $b4
	ld   d, c                                        ; $6911: $51
	ld   de, $9fdf                                   ; $6912: $11 $df $9f
	or   h                                           ; $6915: $b4
	pop  bc                                          ; $6916: $c1
	scf                                              ; $6917: $37
	sbc  e                                           ; $6918: $9b
	sbc  $55                                         ; $6919: $de $55
	ld   de, $f919                                   ; $691b: $11 $19 $f9
	rst  $38                                         ; $691e: $ff
	dec  hl                                          ; $691f: $2b
	ld   d, c                                        ; $6920: $51
	ld   h, a                                        ; $6921: $67
	cp   h                                           ; $6922: $bc
	ld   sp, hl                                      ; $6923: $f9
	ld   d, e                                        ; $6924: $53
	ld   de, $fb2d                                   ; $6925: $11 $2d $fb
	ei                                               ; $6928: $fb
	ld   c, d                                        ; $6929: $4a
	inc  de                                          ; $692a: $13
	ld   l, c                                        ; $692b: $69
	cp   [hl]                                        ; $692c: $be
	rst  $20                                         ; $692d: $e7
	ld   [hl], e                                     ; $692e: $73
	ld   de, $dc3d                                   ; $692f: $11 $3d $dc
	ld   a, [$2577]                                  ; $6932: $fa $77 $25
	ld   l, d                                        ; $6935: $6a
	cp   l                                           ; $6936: $bd
	rst  ToBoot                                         ; $6937: $c7
	ld   d, c                                        ; $6938: $51
	ld   d, $d5                                      ; $6939: $16 $d5
	rst  $38                                         ; $693b: $ff
	ld   e, h                                        ; $693c: $5c
	add  e                                           ; $693d: $83
	scf                                              ; $693e: $37
	ld   l, b                                        ; $693f: $68
	ld   a, [$43ab]                                  ; $6940: $fa $ab $43
	ld   b, c                                        ; $6943: $41
	ld   l, l                                        ; $6944: $6d
	cp   e                                           ; $6945: $bb
	ld   hl, sp+$49                                  ; $6946: $f8 $49
	ld   b, h                                        ; $6948: $44
	sbc  c                                           ; $6949: $99
	xor  l                                           ; $694a: $ad
	or   a                                           ; $694b: $b7
	ld   [hl], h                                     ; $694c: $74
	ld   [de], a                                     ; $694d: $12
	xor  e                                           ; $694e: $ab
	sbc  a                                           ; $694f: $9f
	push hl                                          ; $6950: $e5
	and  a                                           ; $6951: $a7
	daa                                              ; $6952: $27
	ld   [hl], a                                     ; $6953: $77
	xor  h                                           ; $6954: $ac
	sbc  c                                           ; $6955: $99
	add  l                                           ; $6956: $85
	ld   d, l                                        ; $6957: $55
	ld   b, l                                        ; $6958: $45
	sbc  d                                           ; $6959: $9a
	xor  l                                           ; $695a: $ad
	or   l                                           ; $695b: $b5
	sub  a                                           ; $695c: $97
	ld   b, a                                        ; $695d: $47
	sbc  c                                           ; $695e: $99
	xor  h                                           ; $695f: $ac
	add  a                                           ; $6960: $87
	sub  h                                           ; $6961: $94
	inc  [hl]                                        ; $6962: $34
	ld   e, d                                        ; $6963: $5a
	xor  h                                           ; $6964: $ac
	ld   sp, hl                                      ; $6965: $f9
	adc  c                                           ; $6966: $89
	ld   d, l                                        ; $6967: $55
	ld   [hl], a                                     ; $6968: $77
	ld   a, d                                        ; $6969: $7a
	cp   c                                           ; $696a: $b9
	cp   b                                           ; $696b: $b8
	ld   d, [hl]                                     ; $696c: $56
	ld   d, l                                        ; $696d: $55
	ld   h, [hl]                                     ; $696e: $66
	xor  h                                           ; $696f: $ac
	adc  l                                           ; $6970: $8d
	sub  h                                           ; $6971: $94
	sub  l                                           ; $6972: $95
	ld   e, b                                        ; $6973: $58
	sbc  c                                           ; $6974: $99
	xor  d                                           ; $6975: $aa
	sub  a                                           ; $6976: $97
	add  [hl]                                        ; $6977: $86
	ld   l, c                                        ; $6978: $69
	adc  c                                           ; $6979: $89
	xor  b                                           ; $697a: $a8
	ld   h, [hl]                                     ; $697b: $66
	add  [hl]                                        ; $697c: $86
	ld   a, d                                        ; $697d: $7a
	adc  b                                           ; $697e: $88
	xor  c                                           ; $697f: $a9
	ld   [hl], a                                     ; $6980: $77
	halt                                             ; $6981: $76
	adc  b                                           ; $6982: $88
	ld   a, d                                        ; $6983: $7a
	xor  b                                           ; $6984: $a8
	sbc  c                                           ; $6985: $99
	ld   [hl], a                                     ; $6986: $77
	ld   [hl], l                                     ; $6987: $75
	ld   l, c                                        ; $6988: $69
	adc  b                                           ; $6989: $88
	ret                                              ; $698a: $c9


	ld   l, d                                        ; $698b: $6a
	halt                                             ; $698c: $76
	sub  a                                           ; $698d: $97
	ld   a, c                                        ; $698e: $79
	and  a                                           ; $698f: $a7
	xor  c                                           ; $6990: $a9
	ld   a, b                                        ; $6991: $78
	halt                                             ; $6992: $76
	adc  c                                           ; $6993: $89
	ld   a, b                                        ; $6994: $78
	add  a                                           ; $6995: $87
	adc  c                                           ; $6996: $89
	ld   a, c                                        ; $6997: $79
	add  a                                           ; $6998: $87
	adc  c                                           ; $6999: $89
	adc  b                                           ; $699a: $88
	sub  a                                           ; $699b: $97
	ld   a, b                                        ; $699c: $78
	ld   [hl], a                                     ; $699d: $77
	adc  c                                           ; $699e: $89
	adc  c                                           ; $699f: $89
	sub  a                                           ; $69a0: $97
	halt                                             ; $69a1: $76
	ld   a, b                                        ; $69a2: $78
	adc  c                                           ; $69a3: $89
	sbc  b                                           ; $69a4: $98
	sbc  b                                           ; $69a5: $98
	ld   [hl], a                                     ; $69a6: $77
	add  a                                           ; $69a7: $87
	ld   a, b                                        ; $69a8: $78
	adc  c                                           ; $69a9: $89
	sbc  c                                           ; $69aa: $99
	adc  c                                           ; $69ab: $89
	ld   [hl], a                                     ; $69ac: $77
	adc  b                                           ; $69ad: $88
	adc  c                                           ; $69ae: $89
	sbc  b                                           ; $69af: $98
	adc  b                                           ; $69b0: $88
	ld   [hl], a                                     ; $69b1: $77
	ld   [hl], a                                     ; $69b2: $77
	adc  c                                           ; $69b3: $89
	adc  b                                           ; $69b4: $88
	adc  b                                           ; $69b5: $88
	adc  b                                           ; $69b6: $88
	adc  b                                           ; $69b7: $88
	adc  b                                           ; $69b8: $88
	sbc  b                                           ; $69b9: $98
	halt                                             ; $69ba: $76
	ld   l, c                                        ; $69bb: $69
	sbc  b                                           ; $69bc: $98
	xor  d                                           ; $69bd: $aa
	ld   a, d                                        ; $69be: $7a
	add  [hl]                                        ; $69bf: $86
	ld   [hl], a                                     ; $69c0: $77
	ld   a, c                                        ; $69c1: $79
	sbc  b                                           ; $69c2: $98
	sbc  b                                           ; $69c3: $98
	ld   [hl], a                                     ; $69c4: $77
	add  a                                           ; $69c5: $87
	adc  c                                           ; $69c6: $89
	sbc  b                                           ; $69c7: $98
	sbc  b                                           ; $69c8: $98
	adc  b                                           ; $69c9: $88
	ld   [hl], a                                     ; $69ca: $77
	adc  b                                           ; $69cb: $88
	adc  c                                           ; $69cc: $89
	sbc  b                                           ; $69cd: $98
	adc  b                                           ; $69ce: $88
	ld   [hl], a                                     ; $69cf: $77
	adc  b                                           ; $69d0: $88
	adc  b                                           ; $69d1: $88
	adc  b                                           ; $69d2: $88
	sbc  b                                           ; $69d3: $98
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
	add  c                                           ; $69ee: $81
	ld   de, $1111                                   ; $69ef: $11 $11 $11
	ld   de, $1111                                   ; $69f2: $11 $11 $11
	ld   de, $1111                                   ; $69f5: $11 $11 $11
	ld   de, $0011                                   ; $69f8: $11 $11 $00
	ld   c, b                                        ; $69fb: $48
	ld   de, $1111                                   ; $69fc: $11 $11 $11
	ld   de, $1111                                   ; $69ff: $11 $11 $11
	ld   de, $1111                                   ; $6a02: $11 $11 $11
	ld   de, $5413                                   ; $6a05: $11 $13 $54
	ld   d, h                                        ; $6a08: $54
	ld   d, h                                        ; $6a09: $54
	ld   b, c                                        ; $6a0a: $41
	rra                                              ; $6a0b: $1f
	rst  $38                                         ; $6a0c: $ff
	pop  af                                          ; $6a0d: $f1
	ld   de, $1211                                   ; $6a0e: $11 $11 $12
	pop  bc                                          ; $6a11: $c1
	ld   de, $dd1c                                   ; $6a12: $11 $1c $dd
	call z, $c1dd                                    ; $6a15: $cc $dd $c1
	ld   de, $1111                                   ; $6a18: $11 $11 $11
	ld   de, $1111                                   ; $6a1b: $11 $11 $11
	ld   de, $1111                                   ; $6a1e: $11 $11 $11
	ld   de, $1111                                   ; $6a21: $11 $11 $11
	ld   de, $5411                                   ; $6a24: $11 $11 $54
	ld   b, h                                        ; $6a27: $44
	or   d                                           ; $6a28: $b2
	ld   de, $5454                                   ; $6a29: $11 $54 $54
	ld   h, a                                        ; $6a2c: $67
	ld   [hl], d                                     ; $6a2d: $72
	ld   de, $1111                                   ; $6a2e: $11 $11 $11
	ld   de, $1112                                   ; $6a31: $11 $12 $11
	ld   [de], a                                     ; $6a34: $12
	ld   de, $1111                                   ; $6a35: $11 $11 $11
	ld   h, [hl]                                     ; $6a38: $66
	halt                                             ; $6a39: $76
	add  d                                           ; $6a3a: $82
	ld   de, $8888                                   ; $6a3b: $11 $88 $88
	adc  b                                           ; $6a3e: $88
	adc  b                                           ; $6a3f: $88
	adc  b                                           ; $6a40: $88
	adc  b                                           ; $6a41: $88
	ld   a, b                                        ; $6a42: $78
	ld   a, b                                        ; $6a43: $78
	adc  c                                           ; $6a44: $89
	adc  c                                           ; $6a45: $89
	adc  b                                           ; $6a46: $88
	adc  b                                           ; $6a47: $88
	adc  b                                           ; $6a48: $88
	sbc  c                                           ; $6a49: $99
	sbc  b                                           ; $6a4a: $98
	ld   [hl], a                                     ; $6a4b: $77
	ld   h, [hl]                                     ; $6a4c: $66
	ld   h, [hl]                                     ; $6a4d: $66
	ld   d, l                                        ; $6a4e: $55
	ld   d, [hl]                                     ; $6a4f: $56
	adc  d                                           ; $6a50: $8a
	cp   e                                           ; $6a51: $bb
	xor  d                                           ; $6a52: $aa
	sbc  d                                           ; $6a53: $9a
	xor  h                                           ; $6a54: $ac
	cp   h                                           ; $6a55: $bc
	res  7, c                                        ; $6a56: $cb $b9
	ld   [hl], e                                     ; $6a58: $73
	ld   de, $1211                                   ; $6a59: $11 $11 $12
	ld   b, [hl]                                     ; $6a5c: $46
	xor  l                                           ; $6a5d: $ad
	rst  $38                                         ; $6a5e: $ff
	rst  $38                                         ; $6a5f: $ff
	db   $ec                                         ; $6a60: $ec
	set  1, h                                        ; $6a61: $cb $cc
	res  7, b                                        ; $6a63: $cb $b8
	ld   sp, $1111                                   ; $6a65: $31 $11 $11
	daa                                              ; $6a68: $27
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a69: $cf
	rst  $38                                         ; $6a6a: $ff
	rst  $38                                         ; $6a6b: $ff
	call c, $bcba                                    ; $6a6c: $dc $ba $bc
	xor  $fc                                         ; $6a6f: $ee $fc
	add  d                                           ; $6a71: $82
	ld   de, $1211                                   ; $6a72: $11 $11 $12
	xor  a                                           ; $6a75: $af
	rst  $38                                         ; $6a76: $ff
	rst  $38                                         ; $6a77: $ff
	cp   d                                           ; $6a78: $ba
	sbc  d                                           ; $6a79: $9a
	xor  e                                           ; $6a7a: $ab
	rst  $38                                         ; $6a7b: $ff
	db   $fd                                         ; $6a7c: $fd
	sub  d                                           ; $6a7d: $92
	ld   de, $1111                                   ; $6a7e: $11 $11 $11
	xor  a                                           ; $6a81: $af
	rst  $38                                         ; $6a82: $ff
	rst  $38                                         ; $6a83: $ff
	or   a                                           ; $6a84: $b7
	ld   l, b                                        ; $6a85: $68
	xor  e                                           ; $6a86: $ab
	rst  $38                                         ; $6a87: $ff
	rst  $38                                         ; $6a88: $ff
	add  c                                           ; $6a89: $81
	ld   de, $1111                                   ; $6a8a: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a8d: $cf
	rst  $38                                         ; $6a8e: $ff
	rst  $38                                         ; $6a8f: $ff
	ld   [hl], h                                     ; $6a90: $74
	ld   d, a                                        ; $6a91: $57
	adc  $ff                                         ; $6a92: $ce $ff
	rst  $38                                         ; $6a94: $ff
	ld   [hl], c                                     ; $6a95: $71
	ld   de, $1411                                   ; $6a96: $11 $11 $14
	rst  $38                                         ; $6a99: $ff
	rst  $38                                         ; $6a9a: $ff
	ld   a, [$4732]                                  ; $6a9b: $fa $32 $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a9e: $cf
	rst  $38                                         ; $6a9f: $ff
	db   $fd                                         ; $6aa0: $fd
	ld   sp, $1111                                   ; $6aa1: $31 $11 $11
	rra                                              ; $6aa4: $1f
	rst  $38                                         ; $6aa5: $ff
	rst  $38                                         ; $6aa6: $ff
	db   $e3                                         ; $6aa7: $e3
	ld   de, $ff6a                                   ; $6aa8: $11 $6a $ff
	rst  $38                                         ; $6aab: $ff
	or   $11                                         ; $6aac: $f6 $11
	ld   de, rAUD1LEN                                   ; $6aae: $11 $11 $ff
	rst  $38                                         ; $6ab1: $ff
	cp   $41                                         ; $6ab2: $fe $41
	inc  d                                           ; $6ab4: $14
	adc  [hl]                                        ; $6ab5: $8e
	rst  $38                                         ; $6ab6: $ff
	rst  $38                                         ; $6ab7: $ff
	ld   h, c                                        ; $6ab8: $61
	ld   de, $1f11                                   ; $6ab9: $11 $11 $1f
	rst  $38                                         ; $6abc: $ff
	rst  $38                                         ; $6abd: $ff
	pop  de                                          ; $6abe: $d1
	ld   de, $ff58                                   ; $6abf: $11 $58 $ff
	rst  $38                                         ; $6ac2: $ff
	di                                               ; $6ac3: $f3
	ld   de, $1411                                   ; $6ac4: $11 $11 $14
	rst  $38                                         ; $6ac7: $ff
	rst  $38                                         ; $6ac8: $ff
	ld   sp, hl                                      ; $6ac9: $f9
	ld   de, $af15                                   ; $6aca: $11 $15 $af
	rst  $38                                         ; $6acd: $ff
	ei                                               ; $6ace: $fb
	ld   de, $1111                                   ; $6acf: $11 $11 $11
	rst  JumpTable                                         ; $6ad2: $df
	rst  $38                                         ; $6ad3: $ff
	rst  $38                                         ; $6ad4: $ff
	ld   sp, $7e13                                   ; $6ad5: $31 $13 $7e
	rst  $38                                         ; $6ad8: $ff
	rst  $38                                         ; $6ad9: $ff
	ld   b, c                                        ; $6ada: $41
	ld   de, $1f11                                   ; $6adb: $11 $11 $1f
	rst  $38                                         ; $6ade: $ff
	rst  $38                                         ; $6adf: $ff
	add  c                                           ; $6ae0: $81
	ld   de, $ff6a                                   ; $6ae1: $11 $6a $ff
	rst  $38                                         ; $6ae4: $ff
	pop  bc                                          ; $6ae5: $c1
	ld   de, $1f11                                   ; $6ae6: $11 $11 $1f
	rst  $38                                         ; $6ae9: $ff
	rst  $38                                         ; $6aea: $ff
	pop  de                                          ; $6aeb: $d1
	ld   de, rAUDENA                                   ; $6aec: $11 $26 $ff
	rst  $38                                         ; $6aef: $ff
	ldh  a, [c]                                      ; $6af0: $f2
	ld   de, $1611                                   ; $6af1: $11 $11 $16
	rst  $38                                         ; $6af4: $ff
	rst  $38                                         ; $6af5: $ff
	di                                               ; $6af6: $f3
	ld   de, $cf15                                   ; $6af7: $11 $15 $cf
	rst  $38                                         ; $6afa: $ff
	push af                                          ; $6afb: $f5
	ld   de, $1211                                   ; $6afc: $11 $11 $12
	rst  $38                                         ; $6aff: $ff
	rst  $38                                         ; $6b00: $ff
	di                                               ; $6b01: $f3
	ld   de, $df15                                   ; $6b02: $11 $15 $df
	rst  $38                                         ; $6b05: $ff
	or   $11                                         ; $6b06: $f6 $11
	ld   de, rAUD1LEN                                   ; $6b08: $11 $11 $ff
	rst  $38                                         ; $6b0b: $ff
	db   $f4                                         ; $6b0c: $f4
	ld   de, $af12                                   ; $6b0d: $11 $12 $af
	rst  $38                                         ; $6b10: $ff
	ld   a, [$1111]                                  ; $6b11: $fa $11 $11
	ld   de, $ffff                                   ; $6b14: $11 $ff $ff
	or   $11                                         ; $6b17: $f6 $11
	inc  de                                          ; $6b19: $13
	cp   a                                           ; $6b1a: $bf
	rst  $38                                         ; $6b1b: $ff
	ld   hl, sp+$11                                  ; $6b1c: $f8 $11
	ld   de, rAUD1ENV                                   ; $6b1e: $11 $12 $ff
	rst  $38                                         ; $6b21: $ff
	push af                                          ; $6b22: $f5
	ld   de, $ef15                                   ; $6b23: $11 $15 $ef
	rst  $38                                         ; $6b26: $ff
	push af                                          ; $6b27: $f5
	ld   de, $1611                                   ; $6b28: $11 $11 $16
	rst  $38                                         ; $6b2b: $ff
	rst  $38                                         ; $6b2c: $ff
	ldh  a, [c]                                      ; $6b2d: $f2
	ld   de, $ff16                                   ; $6b2e: $11 $16 $ff
	rst  $38                                         ; $6b31: $ff
	ldh  a, [c]                                      ; $6b32: $f2
	ld   de, $1d11                                   ; $6b33: $11 $11 $1d
	rst  $38                                         ; $6b36: $ff
	rst  $38                                         ; $6b37: $ff
	pop  af                                          ; $6b38: $f1
	ld   de, $ff1a                                   ; $6b39: $11 $1a $ff
	rst  $38                                         ; $6b3c: $ff
	pop  af                                          ; $6b3d: $f1
	ld   de, $1f11                                   ; $6b3e: $11 $11 $1f
	rst  $38                                         ; $6b41: $ff
	rst  $38                                         ; $6b42: $ff
	pop  bc                                          ; $6b43: $c1
	ld   de, $ff1f                                   ; $6b44: $11 $1f $ff
	rst  $38                                         ; $6b47: $ff
	pop  af                                          ; $6b48: $f1
	ld   de, $1f11                                   ; $6b49: $11 $11 $1f
	rst  $38                                         ; $6b4c: $ff
	rst  $38                                         ; $6b4d: $ff
	or   c                                           ; $6b4e: $b1
	ld   de, $ff1f                                   ; $6b4f: $11 $1f $ff
	rst  $38                                         ; $6b52: $ff
	or   c                                           ; $6b53: $b1
	ld   de, $5f11                                   ; $6b54: $11 $11 $5f
	rst  $38                                         ; $6b57: $ff

Jump_0c3_6b58:
	rst  $38                                         ; $6b58: $ff
	ld   [hl], c                                     ; $6b59: $71
	ld   de, $ff7f                                   ; $6b5a: $11 $7f $ff
	rst  $38                                         ; $6b5d: $ff
	and  c                                           ; $6b5e: $a1
	ld   de, $8f11                                   ; $6b5f: $11 $11 $8f
	rst  $38                                         ; $6b62: $ff
	rst  $38                                         ; $6b63: $ff
	ld   b, c                                        ; $6b64: $41
	ld   de, $ffaf                                   ; $6b65: $11 $af $ff
	rst  $38                                         ; $6b68: $ff
	and  c                                           ; $6b69: $a1
	ld   de, $7f11                                   ; $6b6a: $11 $11 $7f
	rst  $38                                         ; $6b6d: $ff
	rst  $38                                         ; $6b6e: $ff
	ld   hl, $af11                                   ; $6b6f: $21 $11 $af
	rst  $38                                         ; $6b72: $ff
	rst  $38                                         ; $6b73: $ff
	or   c                                           ; $6b74: $b1
	ld   de, $7f11                                   ; $6b75: $11 $11 $7f
	rst  $38                                         ; $6b78: $ff
	rst  $38                                         ; $6b79: $ff
	ld   d, c                                        ; $6b7a: $51
	ld   de, $ff9c                                   ; $6b7b: $11 $9c $ff
	rst  $38                                         ; $6b7e: $ff
	pop  de                                          ; $6b7f: $d1
	ld   de, $8f11                                   ; $6b80: $11 $11 $8f
	rst  $38                                         ; $6b83: $ff
	rst  $38                                         ; $6b84: $ff
	ld   [hl], c                                     ; $6b85: $71
	ld   [de], a                                     ; $6b86: $12
	adc  c                                           ; $6b87: $89
	rst  $38                                         ; $6b88: $ff
	rst  $38                                         ; $6b89: $ff
	pop  hl                                          ; $6b8a: $e1
	ld   de, $7f11                                   ; $6b8b: $11 $11 $7f
	rst  $38                                         ; $6b8e: $ff
	rst  $38                                         ; $6b8f: $ff
	sub  c                                           ; $6b90: $91
	ld   h, $77                                      ; $6b91: $26 $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b93: $cf
	rst  $38                                         ; $6b94: $ff
	and  c                                           ; $6b95: $a1
	ld   de, $bf14                                   ; $6b96: $11 $14 $bf
	rst  $38                                         ; $6b99: $ff
	rst  $38                                         ; $6b9a: $ff
	or   l                                           ; $6b9b: $b5
	ld   l, d                                        ; $6b9c: $6a
	sub  [hl]                                        ; $6b9d: $96
	xor  l                                           ; $6b9e: $ad
	rst  $38                                         ; $6b9f: $ff
	ld   d, c                                        ; $6ba0: $51
	ld   de, $df17                                   ; $6ba1: $11 $17 $df
	rst  $38                                         ; $6ba4: $ff
	rst  $38                                         ; $6ba5: $ff
	ret  z                                           ; $6ba6: $c8

	xor  h                                           ; $6ba7: $ac
	sbc  b                                           ; $6ba8: $98
	sbc  e                                           ; $6ba9: $9b
	rst  $38                                         ; $6baa: $ff
	ld   b, c                                        ; $6bab: $41
	ld   de, $ef19                                   ; $6bac: $11 $19 $ef
	rst  $28                                         ; $6baf: $ef
	rst  $38                                         ; $6bb0: $ff
	ld   a, [$8acc]                                  ; $6bb1: $fa $cc $8a
	xor  d                                           ; $6bb4: $aa
	cp   $21                                         ; $6bb5: $fe $21
	ld   de, $ee19                                   ; $6bb7: $11 $19 $ee
	cp   [hl]                                        ; $6bba: $be
	rst  $38                                         ; $6bbb: $ff
	ei                                               ; $6bbc: $fb
	adc  $bb                                         ; $6bbd: $ce $bb
	sbc  c                                           ; $6bbf: $99
	db   $db                                         ; $6bc0: $db
	ld   b, c                                        ; $6bc1: $41
	ld   de, wTitleScreenCounterBetweenBlinkAnimIdxes                                   ; $6bc2: $11 $16 $cc
	halt                                             ; $6bc5: $76
	xor  h                                           ; $6bc6: $ac
	db   $ec                                         ; $6bc7: $ec
	call $bacc                                       ; $6bc8: $cd $cc $ba
	res  0, a                                        ; $6bcb: $cb $87
	ld   hl, $7a35                                   ; $6bcd: $21 $35 $7a
	ld   h, d                                        ; $6bd0: $62
	inc  h                                           ; $6bd1: $24
	ld   a, c                                        ; $6bd2: $79
	xor  d                                           ; $6bd3: $aa
	rst  $28                                         ; $6bd4: $ef
	db   $ec                                         ; $6bd5: $ec
	xor  d                                           ; $6bd6: $aa
	db   $db                                         ; $6bd7: $db
	xor  b                                           ; $6bd8: $a8
	ld   b, e                                        ; $6bd9: $43
	ld   b, h                                        ; $6bda: $44
	ld   d, l                                        ; $6bdb: $55
	ld   sp, $7913                                   ; $6bdc: $31 $13 $79
	cp   [hl]                                        ; $6bdf: $be
	rst  $38                                         ; $6be0: $ff
	db   $ec                                         ; $6be1: $ec
	xor  h                                           ; $6be2: $ac
	db   $ec                                         ; $6be3: $ec
	cp   c                                           ; $6be4: $b9
	ld   sp, $3411                                   ; $6be5: $31 $11 $34
	ld   sp, $9c14                                   ; $6be8: $31 $14 $9c
	rst  JumpTable                                         ; $6beb: $df
	rst  $38                                         ; $6bec: $ff
	db   $ec                                         ; $6bed: $ec
	xor  h                                           ; $6bee: $ac
	call c, $1195                                    ; $6bef: $dc $95 $11
	ld   de, $3125                                   ; $6bf2: $11 $25 $31
	ld   e, d                                        ; $6bf5: $5a
	rst  JumpTable                                         ; $6bf6: $df
	rst  $38                                         ; $6bf7: $ff
	rst  $38                                         ; $6bf8: $ff
	jp   z, $dbad                                    ; $6bf9: $ca $ad $db

	ld   d, c                                        ; $6bfc: $51
	ld   de, $5512                                   ; $6bfd: $11 $12 $55
	ld   b, a                                        ; $6c00: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c01: $cf
	rst  $38                                         ; $6c02: $ff
	rst  $38                                         ; $6c03: $ff
	call c, $ddaa                                    ; $6c04: $dc $aa $dd
	or   l                                           ; $6c07: $b5
	ld   de, $1711                                   ; $6c08: $11 $11 $17
	sbc  c                                           ; $6c0b: $99
	rst  JumpTable                                         ; $6c0c: $df
	rst  $38                                         ; $6c0d: $ff
	rst  $38                                         ; $6c0e: $ff
	db   $db                                         ; $6c0f: $db
	xor  c                                           ; $6c10: $a9
	adc  $e9                                         ; $6c11: $ce $e9
	ld   de, $1511                                   ; $6c13: $11 $11 $15
	cp   l                                           ; $6c16: $bd
	rst  $38                                         ; $6c17: $ff
	rst  $38                                         ; $6c18: $ff
	rst  $38                                         ; $6c19: $ff
	rst  ToBoot                                         ; $6c1a: $c7
	adc  c                                           ; $6c1b: $89
	xor  a                                           ; $6c1c: $af
	db   $fc                                         ; $6c1d: $fc
	ld   b, c                                        ; $6c1e: $41
	ld   de, $6d11                                   ; $6c1f: $11 $11 $6d
	rst  $38                                         ; $6c22: $ff
	rst  $38                                         ; $6c23: $ff
	rst  $38                                         ; $6c24: $ff
	rst  ToBoot                                         ; $6c25: $c7
	ld   d, [hl]                                     ; $6c26: $56
	cp   a                                           ; $6c27: $bf
	rst  $38                                         ; $6c28: $ff
	sub  c                                           ; $6c29: $91
	ld   de, $3b11                                   ; $6c2a: $11 $11 $3b
	rst  $38                                         ; $6c2d: $ff
	rst  $38                                         ; $6c2e: $ff
	rst  $38                                         ; $6c2f: $ff
	rst  ToBoot                                         ; $6c30: $c7
	ld   b, [hl]                                     ; $6c31: $46
	sbc  a                                           ; $6c32: $9f
	rst  $38                                         ; $6c33: $ff
	ldh  a, [c]                                      ; $6c34: $f2
	ld   de, $1811                                   ; $6c35: $11 $11 $18
	rst  $38                                         ; $6c38: $ff
	rst  $38                                         ; $6c39: $ff
	rst  $38                                         ; $6c3a: $ff
	or   a                                           ; $6c3b: $b7
	dec  [hl]                                        ; $6c3c: $35
	ld   a, [hl]                                     ; $6c3d: $7e
	rst  $38                                         ; $6c3e: $ff
	or   $11                                         ; $6c3f: $f6 $11
	ld   de, $ef16                                   ; $6c41: $11 $16 $ef
	rst  $38                                         ; $6c44: $ff
	rst  $38                                         ; $6c45: $ff
	or   a                                           ; $6c46: $b7
	ld   b, h                                        ; $6c47: $44
	ld   a, a                                        ; $6c48: $7f
	rst  $38                                         ; $6c49: $ff
	ld   a, [$1111]                                  ; $6c4a: $fa $11 $11
	ld   d, $ef                                      ; $6c4d: $16 $ef
	rst  $38                                         ; $6c4f: $ff
	rst  $38                                         ; $6c50: $ff
	or   l                                           ; $6c51: $b5
	inc  sp                                          ; $6c52: $33
	ld   l, l                                        ; $6c53: $6d
	rst  $38                                         ; $6c54: $ff
	ei                                               ; $6c55: $fb
	ld   de, $1311                                   ; $6c56: $11 $11 $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c59: $cf
	rst  $38                                         ; $6c5a: $ff
	rst  $38                                         ; $6c5b: $ff
	add  $21                                         ; $6c5c: $c6 $21
	ld   c, l                                        ; $6c5e: $4d
	rst  $38                                         ; $6c5f: $ff
	rst  $38                                         ; $6c60: $ff
	ld   de, $1111                                   ; $6c61: $11 $11 $11
	cp   a                                           ; $6c64: $bf
	rst  $38                                         ; $6c65: $ff
	rst  $38                                         ; $6c66: $ff
	or   l                                           ; $6c67: $b5
	ld   de, $ff4b                                   ; $6c68: $11 $4b $ff
	rst  $38                                         ; $6c6b: $ff
	ld   hl, $1111                                   ; $6c6c: $21 $11 $11
	adc  a                                           ; $6c6f: $8f
	rst  $38                                         ; $6c70: $ff
	rst  $38                                         ; $6c71: $ff
	call nz, $1b11                                   ; $6c72: $c4 $11 $1b
	rst  $38                                         ; $6c75: $ff
	rst  $38                                         ; $6c76: $ff
	ld   h, c                                        ; $6c77: $61
	ld   de, $1f11                                   ; $6c78: $11 $11 $1f
	rst  $38                                         ; $6c7b: $ff
	rst  $38                                         ; $6c7c: $ff
	push de                                          ; $6c7d: $d5
	ld   de, $ff18                                   ; $6c7e: $11 $18 $ff
	rst  $38                                         ; $6c81: $ff
	pop  bc                                          ; $6c82: $c1
	ld   de, $1e11                                   ; $6c83: $11 $11 $1e
	rst  $38                                         ; $6c86: $ff
	rst  $38                                         ; $6c87: $ff
	pop  af                                          ; $6c88: $f1
	ld   de, $ff15                                   ; $6c89: $11 $15 $ff
	rst  $38                                         ; $6c8c: $ff
	pop  af                                          ; $6c8d: $f1
	ld   de, $1111                                   ; $6c8e: $11 $11 $11
	rst  $38                                         ; $6c91: $ff
	rst  $38                                         ; $6c92: $ff
	rst  $30                                         ; $6c93: $f7
	ld   de, $9f11                                   ; $6c94: $11 $11 $9f
	rst  $38                                         ; $6c97: $ff
	rst  $38                                         ; $6c98: $ff
	ld   de, $1111                                   ; $6c99: $11 $11 $11
	dec  de                                          ; $6c9c: $1b
	rst  $38                                         ; $6c9d: $ff
	rst  $38                                         ; $6c9e: $ff
	ld   sp, $1811                                   ; $6c9f: $31 $11 $18
	rst  $38                                         ; $6ca2: $ff
	rst  $38                                         ; $6ca3: $ff
	pop  af                                          ; $6ca4: $f1
	ld   de, $1111                                   ; $6ca5: $11 $11 $11
	rra                                              ; $6ca8: $1f
	rst  $38                                         ; $6ca9: $ff
	push af                                          ; $6caa: $f5
	ld   de, $1e11                                   ; $6cab: $11 $11 $1e
	rst  $38                                         ; $6cae: $ff
	rst  $38                                         ; $6caf: $ff
	pop  af                                          ; $6cb0: $f1
	ld   de, $9113                                   ; $6cb1: $11 $13 $91
	ld   de, $fbff                                   ; $6cb4: $11 $ff $fb
	ld   de, $1711                                   ; $6cb7: $11 $11 $17
	rst  $38                                         ; $6cba: $ff
	rst  $38                                         ; $6cbb: $ff
	cp   $11                                         ; $6cbc: $fe $11
	ld   de, $11c9                                   ; $6cbe: $11 $c9 $11
	rra                                              ; $6cc1: $1f
	rst  $38                                         ; $6cc2: $ff
	and  c                                           ; $6cc3: $a1
	ld   sp, $ef11                                   ; $6cc4: $31 $11 $ef
	rst  $38                                         ; $6cc7: $ff
	rst  $38                                         ; $6cc8: $ff
	pop  af                                          ; $6cc9: $f1
	ld   de, $512a                                   ; $6cca: $11 $2a $51
	ld   de, $ff2f                                   ; $6ccd: $11 $2f $ff
	sub  c                                           ; $6cd0: $91
	ld   de, $ff1b                                   ; $6cd1: $11 $1b $ff
	rst  $38                                         ; $6cd4: $ff
	rst  $38                                         ; $6cd5: $ff
	ld   b, c                                        ; $6cd6: $41
	ld   de, $31be                                   ; $6cd7: $11 $be $31
	ld   de, $ff8f                                   ; $6cda: $11 $8f $ff
	and  c                                           ; $6cdd: $a1
	ld   de, $ff2d                                   ; $6cde: $11 $2d $ff
	rst  $38                                         ; $6ce1: $ff
	cp   $31                                         ; $6ce2: $fe $31
	ld   [de], a                                     ; $6ce4: $12
	cp   e                                           ; $6ce5: $bb
	ld   de, $bf11                                   ; $6ce6: $11 $11 $bf
	rst  $38                                         ; $6ce9: $ff
	add  c                                           ; $6cea: $81
	ld   de, $ff4e                                   ; $6ceb: $11 $4e $ff
	rst  $38                                         ; $6cee: $ff
	db   $fc                                         ; $6cef: $fc
	ld   b, c                                        ; $6cf0: $41
	dec  d                                           ; $6cf1: $15
	xor  $11                                         ; $6cf2: $ee $11
	ld   de, $ff3f                                   ; $6cf4: $11 $3f $ff
	pop  de                                          ; $6cf7: $d1
	ld   de, $ff2d                                   ; $6cf8: $11 $2d $ff
	rst  $38                                         ; $6cfb: $ff
	db   $fc                                         ; $6cfc: $fc
	ld   sp, $ff16                                   ; $6cfd: $31 $16 $ff
	ld   hl, $1f11                                   ; $6d00: $21 $11 $1f
	rst  $38                                         ; $6d03: $ff
	di                                               ; $6d04: $f3
	ld   de, $ff1b                                   ; $6d05: $11 $1b $ff
	rst  $38                                         ; $6d08: $ff
	cp   $51                                         ; $6d09: $fe $51
	inc  de                                          ; $6d0b: $13
	cp   l                                           ; $6d0c: $bd
	ld   [hl], c                                     ; $6d0d: $71
	ld   de, $ff1c                                   ; $6d0e: $11 $1c $ff
	db   $fd                                         ; $6d11: $fd
	ld   de, $ff15                                   ; $6d12: $11 $15 $ff
	rst  $38                                         ; $6d15: $ff
	rst  $38                                         ; $6d16: $ff
	add  d                                           ; $6d17: $82
	inc  d                                           ; $6d18: $14
	cp   l                                           ; $6d19: $bd
	or   c                                           ; $6d1a: $b1
	ld   de, rAUD1LEN                                   ; $6d1b: $11 $11 $ff
	rst  $38                                         ; $6d1e: $ff
	ld   b, c                                        ; $6d1f: $41
	ld   de, $ffce                                   ; $6d20: $11 $ce $ff
	rst  $38                                         ; $6d23: $ff
	or   e                                           ; $6d24: $b3
	ld   de, $fb6e                                   ; $6d25: $11 $6e $fb
	ld   de, $1f11                                   ; $6d28: $11 $11 $1f
	rst  $38                                         ; $6d2b: $ff
	pop  af                                          ; $6d2c: $f1
	ld   de, $df6a                                   ; $6d2d: $11 $6a $df
	rst  $38                                         ; $6d30: $ff
	rst  $30                                         ; $6d31: $f7
	ld   de, $ef18                                   ; $6d32: $11 $18 $ef
	ld   h, c                                        ; $6d35: $61
	ld   de, rAUD1LEN                                   ; $6d36: $11 $11 $ff
	db   $fd                                         ; $6d39: $fd
	ld   de, $bf14                                   ; $6d3a: $11 $14 $bf
	rst  $38                                         ; $6d3d: $ff
	ld   a, [$1411]                                  ; $6d3e: $fa $11 $14
	sbc  a                                           ; $6d41: $9f
	or   c                                           ; $6d42: $b1
	ld   de, rAUD1ENV                                   ; $6d43: $11 $12 $ff
	rst  $38                                         ; $6d46: $ff
	ld   h, h                                        ; $6d47: $64
	ld   de, $ffef                                   ; $6d48: $11 $ef $ff
	rst  $30                                         ; $6d4b: $f7
	ld   de, $7a13                                   ; $6d4c: $11 $13 $7a
	ld   b, c                                        ; $6d4f: $41
	ld   de, $ff0f                                   ; $6d50: $11 $0f $ff
	ld   a, [$1e31]                                  ; $6d53: $fa $31 $1e
	rst  $38                                         ; $6d56: $ff
	db   $fc                                         ; $6d57: $fc
	ld   sp, $1111                                   ; $6d58: $31 $11 $11
	ld   a, [de]                                     ; $6d5b: $1a
	ld   sp, $ff1e                                   ; $6d5c: $31 $1e $ff
	di                                               ; $6d5f: $f3
	inc  d                                           ; $6d60: $14
	ld   l, h                                        ; $6d61: $6c
	rst  $38                                         ; $6d62: $ff
	ei                                               ; $6d63: $fb
	ld   de, $4611                                   ; $6d64: $11 $11 $46
	ld   de, $cf11                                   ; $6d67: $11 $11 $cf
	db   $fc                                         ; $6d6a: $fc
	db   $ec                                         ; $6d6b: $ec
	ld   h, [hl]                                     ; $6d6c: $66
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d6d: $cf
	rst  $38                                         ; $6d6e: $ff
	db   $fc                                         ; $6d6f: $fc
	ld   h, d                                        ; $6d70: $62
	ld   de, $4b11                                   ; $6d71: $11 $11 $4b
	ld   de, rAUD1ENV                                   ; $6d74: $11 $12 $ff
	rst  $38                                         ; $6d77: $ff
	ld   b, c                                        ; $6d78: $41
	jr   @+$01                                       ; $6d79: $18 $ff

	rst  $38                                         ; $6d7b: $ff
	sub  c                                           ; $6d7c: $91
	ld   de, $3813                                   ; $6d7d: $11 $13 $38
	and  c                                           ; $6d80: $a1
	ld   de, $ffff                                   ; $6d81: $11 $ff $ff
	push bc                                          ; $6d84: $c5
	ld   de, $ff9f                                   ; $6d85: $11 $9f $ff
	db   $e4                                         ; $6d88: $e4
	ld   de, $7714                                   ; $6d89: $11 $14 $77
	ld   b, c                                        ; $6d8c: $41
	ld   de, $ff17                                   ; $6d8d: $11 $17 $ff
	rst  $38                                         ; $6d90: $ff
	ld   h, c                                        ; $6d91: $61
	add  hl, de                                      ; $6d92: $19
	rst  $38                                         ; $6d93: $ff

jr_0c3_6d94:
	cp   $51                                         ; $6d94: $fe $51
	ld   de, $426a                                   ; $6d96: $11 $6a $42
	ld   [hl], c                                     ; $6d99: $71
	ld   de, $ff2f                                   ; $6d9a: $11 $2f $ff
	jp   nz, Jump_0c3_7f11                           ; $6d9d: $c2 $11 $7f

	rst  $38                                         ; $6da0: $ff
	and  h                                           ; $6da1: $a4
	ld   de, $7342                                   ; $6da2: $11 $42 $73
	dec  de                                          ; $6da5: $1b
	ld   [hl], c                                     ; $6da6: $71
	ld   de, $fcff                                   ; $6da7: $11 $ff $fc
	ld   d, c                                        ; $6daa: $51
	add  hl, de                                      ; $6dab: $19
	rst  $38                                         ; $6dac: $ff
	or   $11                                         ; $6dad: $f6 $11
	ld   c, e                                        ; $6daf: $4b
	rst  ToBoot                                         ; $6db0: $c7
	dec  [hl]                                        ; $6db1: $35
	ld   h, c                                        ; $6db2: $61
	ld   de, rAUD1LEN                                   ; $6db3: $11 $11 $ff
	rst  $38                                         ; $6db6: $ff
	ld   de, $ff15                                   ; $6db7: $11 $15 $ff
	ld   sp, hl                                      ; $6dba: $f9
	ld   de, $ca18                                   ; $6dbb: $11 $18 $ca
	add  h                                           ; $6dbe: $84
	and  l                                           ; $6dbf: $a5
	ld   de, $ff1b                                   ; $6dc0: $11 $1b $ff
	rst  $38                                         ; $6dc3: $ff
	ld   de, $ff1c                                   ; $6dc4: $11 $1c $ff
	rst  $38                                         ; $6dc7: $ff
	ld   de, $9d27                                   ; $6dc8: $11 $27 $9d
	pop  bc                                          ; $6dcb: $c1
	dec  hl                                          ; $6dcc: $2b
	ld   de, rAUD1LEN                                   ; $6dcd: $11 $11 $ff
	cp   $71                                         ; $6dd0: $fe $71
	inc  e                                           ; $6dd2: $1c
	rst  $38                                         ; $6dd3: $ff
	di                                               ; $6dd4: $f3
	ld   [de], a                                     ; $6dd5: $12
	ld   e, b                                        ; $6dd6: $58
	cp   $71                                         ; $6dd7: $fe $71
	inc  d                                           ; $6dd9: $14
	add  c                                           ; $6dda: $81
	ld   de, $ffbf                                   ; $6ddb: $11 $bf $ff
	db   $f4                                         ; $6dde: $f4
	rla                                              ; $6ddf: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6de0: $cf
	db   $fc                                         ; $6de1: $fc
	ld   b, c                                        ; $6de2: $41
	ld   e, d                                        ; $6de3: $5a
	xor  a                                           ; $6de4: $af
	and  c                                           ; $6de5: $a1
	add  hl, de                                      ; $6de6: $19
	inc  [hl]                                        ; $6de7: $34
	ld   de, $ff16                                   ; $6de8: $11 $16 $ff
	rst  $30                                         ; $6deb: $f7
	ld   hl, $ff4f                                   ; $6dec: $21 $4f $ff
	rst  $10                                         ; $6def: $d7
	jr   c, jr_0c3_6d94                              ; $6df0: $38 $a2

	ld   a, a                                        ; $6df2: $7f
	ld   hl, $713c                                   ; $6df3: $21 $3c $71
	ld   [de], a                                     ; $6df6: $12
	rst  $38                                         ; $6df7: $ff
	rst  $38                                         ; $6df8: $ff
	or   $19                                         ; $6df9: $f6 $19
	rst  $38                                         ; $6dfb: $ff
	ld   sp, hl                                      ; $6dfc: $f9
	ld   a, c                                        ; $6dfd: $79
	cp   c                                           ; $6dfe: $b9
	ld   b, a                                        ; $6dff: $47
	ld   d, c                                        ; $6e00: $51
	ld   sp, $11ce                                   ; $6e01: $31 $ce $11
	ld   a, [de]                                     ; $6e04: $1a
	db   $fd                                         ; $6e05: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e06: $cf
	db   $eb                                         ; $6e07: $eb
	ld   de, $79ff                                   ; $6e08: $11 $ff $79
	ld   l, b                                        ; $6e0b: $68
	reti                                             ; $6e0c: $d9


	ld   b, e                                        ; $6e0d: $43
	ld   hl, $765c                                   ; $6e0e: $21 $5c $76
	ld   de, $fc1f                                   ; $6e11: $11 $1f $fc
	ei                                               ; $6e14: $fb
	add  hl, hl                                      ; $6e15: $29
	db   $ed                                         ; $6e16: $ed
	db   $dd                                         ; $6e17: $dd
	ld   a, [$3518]                                  ; $6e18: $fa $18 $35
	or   $11                                         ; $6e1b: $f6 $11
	sbc  [hl]                                        ; $6e1d: $9e
	add  e                                           ; $6e1e: $83
	ld   de, $fc14                                   ; $6e1f: $11 $14 $fc
	rst  $38                                         ; $6e22: $ff
	ld   [hl], c                                     ; $6e23: $71
	rst  $38                                         ; $6e24: $ff
	xor  a                                           ; $6e25: $af
	ld   a, [$9885]                                  ; $6e26: $fa $85 $98
	ld   [de], a                                     ; $6e29: $12
	ld   d, d                                        ; $6e2a: $52
	inc  l                                           ; $6e2b: $2c
	ld   hl, sp+$11                                  ; $6e2c: $f8 $11
	ld   de, $dfff                                   ; $6e2e: $11 $ff $df
	pop  hl                                          ; $6e31: $e1
	sbc  a                                           ; $6e32: $9f
	xor  a                                           ; $6e33: $af
	ld   a, [$f73a]                                  ; $6e34: $fa $3a $f7
	add  hl, de                                      ; $6e37: $19
	ld   hl, $21ca                                   ; $6e38: $21 $ca $21
	ld   e, h                                        ; $6e3b: $5c
	ld   de, $339d                                   ; $6e3c: $11 $9d $33
	rst  $38                                         ; $6e3f: $ff
	ld   h, l                                        ; $6e40: $65
	xor  b                                           ; $6e41: $a8
	db   $fc                                         ; $6e42: $fc
	xor  l                                           ; $6e43: $ad
	res  2, h                                        ; $6e44: $cb $94
	ld   hl, $e31e                                   ; $6e46: $21 $1e $e3
	ld   b, d                                        ; $6e49: $42
	inc  d                                           ; $6e4a: $14
	ld   de, $f2bf                                   ; $6e4b: $11 $bf $f2
	ld   c, [hl]                                     ; $6e4e: $4e
	xor  l                                           ; $6e4f: $ad
	ld   a, d                                        ; $6e50: $7a
	rst  $38                                         ; $6e51: $ff
	pop  af                                          ; $6e52: $f1
	dec  e                                           ; $6e53: $1d
	ld   a, [$3712]                                  ; $6e54: $fa $12 $37
	scf                                              ; $6e57: $37
	add  c                                           ; $6e58: $81
	add  l                                           ; $6e59: $85
	dec  d                                           ; $6e5a: $15
	rst  $38                                         ; $6e5b: $ff
	ld   de, $e9ff                                   ; $6e5c: $11 $ff $e9
	add  [hl]                                        ; $6e5f: $86
	ld   sp, hl                                      ; $6e60: $f9
	rra                                              ; $6e61: $1f
	db   $fc                                         ; $6e62: $fc
	pop  af                                          ; $6e63: $f1
	inc  e                                           ; $6e64: $1c
	ld   sp, $41df                                   ; $6e65: $31 $df $41
	ld   de, $deb9                                   ; $6e68: $11 $b9 $de
	ld   [hl], e                                     ; $6e6b: $73
	ld   l, [hl]                                     ; $6e6c: $6e
	rst  $38                                         ; $6e6d: $ff
	ld   de, $c9ff                                   ; $6e6e: $11 $ff $c9
	sbc  b                                           ; $6e71: $98
	ld   b, l                                        ; $6e72: $45
	ld   a, c                                        ; $6e73: $79
	adc  c                                           ; $6e74: $89
	ld   h, c                                        ; $6e75: $61
	ld   h, $18                                      ; $6e76: $26 $18
	ld   [hl], c                                     ; $6e78: $71
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e79: $cf
	ld   sp, $ff6d                                   ; $6e7a: $31 $6d $ff
	add  $ad                                         ; $6e7d: $c6 $ad
	or   [hl]                                        ; $6e7f: $b6
	ld   l, a                                        ; $6e80: $6f
	or   $14                                         ; $6e81: $f6 $14
	ld   a, d                                        ; $6e83: $7a
	add  c                                           ; $6e84: $81
	ld   e, b                                        ; $6e85: $58
	ld   de, $3d25                                   ; $6e86: $11 $25 $3d
	ld   hl, sp+$3d                                  ; $6e89: $f8 $3d
	push af                                          ; $6e8b: $f5
	rla                                              ; $6e8c: $17
	rst  $38                                         ; $6e8d: $ff
	scf                                              ; $6e8e: $37
	halt                                             ; $6e8f: $76
	ld   a, [$9745]                                  ; $6e90: $fa $45 $97
	ld   d, l                                        ; $6e93: $55
	inc  d                                           ; $6e94: $14
	ld   [hl], d                                     ; $6e95: $72
	ld   d, $c7                                      ; $6e96: $16 $c7
	ld   a, [hl+]                                    ; $6e98: $2a
	ld   [hl-], a                                    ; $6e99: $32
	rst  $38                                         ; $6e9a: $ff
	or   a                                           ; $6e9b: $b7
	sbc  b                                           ; $6e9c: $98
	adc  l                                           ; $6e9d: $8d
	xor  d                                           ; $6e9e: $aa
	db   $ed                                         ; $6e9f: $ed
	cp   c                                           ; $6ea0: $b9
	ld   b, d                                        ; $6ea1: $42
	ld   c, b                                        ; $6ea2: $48
	ld   [hl], l                                     ; $6ea3: $75
	ld   h, c                                        ; $6ea4: $61
	dec  d                                           ; $6ea5: $15
	ld   d, a                                        ; $6ea6: $57
	ld   h, l                                        ; $6ea7: $65
	halt                                             ; $6ea8: $76
	ld   h, l                                        ; $6ea9: $65
	rst  $38                                         ; $6eaa: $ff
	scf                                              ; $6eab: $37
	ld   d, a                                        ; $6eac: $57
	rst  $38                                         ; $6ead: $ff
	rst  $38                                         ; $6eae: $ff
	ld   de, $fb7f                                   ; $6eaf: $11 $7f $fb
	ld   [de], a                                     ; $6eb2: $12
	inc  de                                          ; $6eb3: $13
	sub  [hl]                                        ; $6eb4: $96
	inc  [hl]                                        ; $6eb5: $34
	ld   hl, $3bba                                   ; $6eb6: $21 $ba $3b
	ld   d, d                                        ; $6eb9: $52
	rst  $38                                         ; $6eba: $ff
	ei                                               ; $6ebb: $fb
	ld   sp, $dfbf                                   ; $6ebc: $31 $bf $df
	push af                                          ; $6ebf: $f5
	ld   h, $2c                                      ; $6ec0: $26 $2c
	or   $45                                         ; $6ec2: $f6 $45
	ld   h, a                                        ; $6ec4: $67
	ld   h, c                                        ; $6ec5: $61
	inc  d                                           ; $6ec6: $14
	ld   a, a                                        ; $6ec7: $7f
	or   c                                           ; $6ec8: $b1
	dec  e                                           ; $6ec9: $1d
	ld   h, a                                        ; $6eca: $67
	rst  $38                                         ; $6ecb: $ff
	xor  b                                           ; $6ecc: $a8
	inc  d                                           ; $6ecd: $14
	rst  $38                                         ; $6ece: $ff
	ld   hl, sp+$6c                                  ; $6ecf: $f8 $6c
	and  e                                           ; $6ed1: $a3
	dec  d                                           ; $6ed2: $15
	xor  a                                           ; $6ed3: $af
	di                                               ; $6ed4: $f3
	rla                                              ; $6ed5: $17
	ld   [hl+], a                                    ; $6ed6: $22
	ld   b, c                                        ; $6ed7: $41
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ed8: $cf
	or   c                                           ; $6ed9: $b1
	ld   [de], a                                     ; $6eda: $12
	rst  $28                                         ; $6edb: $ef
	pop  af                                          ; $6edc: $f1
	ld   a, d                                        ; $6edd: $7a
	sub  l                                           ; $6ede: $95
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6edf: $cf
	rst  $38                                         ; $6ee0: $ff
	ld   d, c                                        ; $6ee1: $51
	add  hl, hl                                      ; $6ee2: $29
	db   $fd                                         ; $6ee3: $fd
	ld   de, $f15d                                   ; $6ee4: $11 $5d $f1
	ld   [de], a                                     ; $6ee7: $12
	add  hl, hl                                      ; $6ee8: $29
	add  [hl]                                        ; $6ee9: $86
	cp   e                                           ; $6eea: $bb
	ld   sp, $fb6f                                   ; $6eeb: $31 $6f $fb
	sbc  [hl]                                        ; $6eee: $9e
	and  [hl]                                        ; $6eef: $a6
	ld   [hl], h                                     ; $6ef0: $74
	rst  $38                                         ; $6ef1: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ef2: $cf
	sub  h                                           ; $6ef3: $94
	ld   sp, $aa6a                                   ; $6ef4: $31 $6a $aa
	ld   d, c                                        ; $6ef7: $51
	ld   b, l                                        ; $6ef8: $45
	ld   e, b                                        ; $6ef9: $58
	inc  sp                                          ; $6efa: $33
	ld   l, d                                        ; $6efb: $6a
	sbc  b                                           ; $6efc: $98
	sub  c                                           ; $6efd: $91
	ld   l, h                                        ; $6efe: $6c
	rst  $38                                         ; $6eff: $ff
	ld   b, a                                        ; $6f00: $47
	rst  JumpTable                                         ; $6f01: $df
	and  l                                           ; $6f02: $a5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f03: $cf
	cp   b                                           ; $6f04: $b8
	inc  h                                           ; $6f05: $24
	ei                                               ; $6f06: $fb
	ld   d, h                                        ; $6f07: $54
	add  hl, sp                                      ; $6f08: $39
	add  d                                           ; $6f09: $82

jr_0c3_6f0a:
	ld   sp, $8b4a                                   ; $6f0a: $31 $4a $8b
	pop  bc                                          ; $6f0d: $c1
	ld   [de], a                                     ; $6f0e: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f0f: $cf
	rst  $20                                         ; $6f10: $e7
	ld   b, e                                        ; $6f11: $43
	xor  [hl]                                        ; $6f12: $ae
	jp   hl                                          ; $6f13: $e9


	cp   e                                           ; $6f14: $bb
	sbc  e                                           ; $6f15: $9b
	halt                                             ; $6f16: $76
	and  l                                           ; $6f17: $a5
	ld   c, c                                        ; $6f18: $49
	ld   a, h                                        ; $6f19: $7c
	pop  bc                                          ; $6f1a: $c1
	inc  h                                           ; $6f1b: $24
	dec  a                                           ; $6f1c: $3d
	rst  ToBoot                                         ; $6f1d: $c7
	ld   h, h                                        ; $6f1e: $64
	ld   h, e                                        ; $6f1f: $63
	ld   d, a                                        ; $6f20: $57
	rst  JumpTable                                         ; $6f21: $df
	sbc  d                                           ; $6f22: $9a
	sbc  b                                           ; $6f23: $98
	cp   b                                           ; $6f24: $b8
	ld   e, h                                        ; $6f25: $5c
	db   $fd                                         ; $6f26: $fd
	or   l                                           ; $6f27: $b5
	ld   l, c                                        ; $6f28: $69
	ld   d, l                                        ; $6f29: $55
	add  hl, sp                                      ; $6f2a: $39
	jp   hl                                          ; $6f2b: $e9


	sub  l                                           ; $6f2c: $95
	ld   b, a                                        ; $6f2d: $47
	ld   d, d                                        ; $6f2e: $52
	add  hl, hl                                      ; $6f2f: $29
	jp   hl                                          ; $6f30: $e9


	ld   h, h                                        ; $6f31: $64
	jr   c, jr_0c3_6fab                              ; $6f32: $38 $77

	cp   a                                           ; $6f34: $bf
	ld   a, [$5933]                                  ; $6f35: $fa $33 $59
	call c, $96ca                                    ; $6f38: $dc $ca $96
	ld   b, a                                        ; $6f3b: $47
	ld   h, [hl]                                     ; $6f3c: $66
	ld   l, b                                        ; $6f3d: $68
	adc  d                                           ; $6f3e: $8a
	call nz, $4b23                                   ; $6f3f: $c4 $23 $4b
	and  l                                           ; $6f42: $a5
	ld   b, a                                        ; $6f43: $47
	cp   d                                           ; $6f44: $ba
	cp   e                                           ; $6f45: $bb
	scf                                              ; $6f46: $37
	rst  $28                                         ; $6f47: $ef
	push hl                                          ; $6f48: $e5
	jr   jr_0c3_6f0a                                 ; $6f49: $18 $bf

	and  $66                                         ; $6f4b: $e6 $66
	ld   h, [hl]                                     ; $6f4d: $66
	ld   c, b                                        ; $6f4e: $48
	cp   e                                           ; $6f4f: $bb
	add  d                                           ; $6f50: $82
	scf                                              ; $6f51: $37
	sbc  c                                           ; $6f52: $99
	ld   d, [hl]                                     ; $6f53: $56
	sbc  c                                           ; $6f54: $99
	sub  [hl]                                        ; $6f55: $96
	ld   b, [hl]                                     ; $6f56: $46
	sbc  d                                           ; $6f57: $9a
	sbc  b                                           ; $6f58: $98
	adc  $a9                                         ; $6f59: $ce $a9
	add  l                                           ; $6f5b: $85
	sbc  d                                           ; $6f5c: $9a
	adc  e                                           ; $6f5d: $8b
	adc  d                                           ; $6f5e: $8a
	add  $45                                         ; $6f5f: $c6 $45
	ld   h, [hl]                                     ; $6f61: $66
	adc  d                                           ; $6f62: $8a
	xor  d                                           ; $6f63: $aa
	ld   d, e                                        ; $6f64: $53
	ld   a, b                                        ; $6f65: $78
	ld   d, h                                        ; $6f66: $54
	ld   a, d                                        ; $6f67: $7a
	xor  h                                           ; $6f68: $ac
	sub  e                                           ; $6f69: $93
	ld   l, b                                        ; $6f6a: $68
	jp   z, $bc6a                                    ; $6f6b: $ca $6a $bc

	ld   [hl], e                                     ; $6f6e: $73
	ld   l, b                                        ; $6f6f: $68
	xor  c                                           ; $6f70: $a9
	ld   h, [hl]                                     ; $6f71: $66
	ld   a, d                                        ; $6f72: $7a
	xor  b                                           ; $6f73: $a8
	ld   h, l                                        ; $6f74: $65
	ld   h, a                                        ; $6f75: $67
	adc  b                                           ; $6f76: $88
	ld   h, [hl]                                     ; $6f77: $66
	sbc  b                                           ; $6f78: $98
	ld   h, [hl]                                     ; $6f79: $66
	ld   c, c                                        ; $6f7a: $49
	and  [hl]                                        ; $6f7b: $a6
	adc  h                                           ; $6f7c: $8c
	bit  4, l                                        ; $6f7d: $cb $65
	ld   a, c                                        ; $6f7f: $79
	cp   d                                           ; $6f80: $ba
	adc  b                                           ; $6f81: $88
	ld   a, c                                        ; $6f82: $79
	add  l                                           ; $6f83: $85
	ld   a, b                                        ; $6f84: $78
	sbc  c                                           ; $6f85: $99
	ld   [hl], l                                     ; $6f86: $75
	ld   b, h                                        ; $6f87: $44
	ld   a, e                                        ; $6f88: $7b
	xor  b                                           ; $6f89: $a8
	ld   l, c                                        ; $6f8a: $69
	ld   [hl], l                                     ; $6f8b: $75
	ld   h, [hl]                                     ; $6f8c: $66
	sbc  d                                           ; $6f8d: $9a
	xor  e                                           ; $6f8e: $ab
	sbc  c                                           ; $6f8f: $99
	xor  b                                           ; $6f90: $a8
	ld   a, c                                        ; $6f91: $79
	xor  e                                           ; $6f92: $ab
	sub  l                                           ; $6f93: $95
	ld   b, [hl]                                     ; $6f94: $46
	adc  d                                           ; $6f95: $8a
	xor  d                                           ; $6f96: $aa
	ld   a, b                                        ; $6f97: $78
	add  [hl]                                        ; $6f98: $86
	ld   d, [hl]                                     ; $6f99: $56
	ld   e, b                                        ; $6f9a: $58
	sub  a                                           ; $6f9b: $97
	sbc  c                                           ; $6f9c: $99
	add  [hl]                                        ; $6f9d: $86
	ld   h, a                                        ; $6f9e: $67
	sbc  d                                           ; $6f9f: $9a
	sbc  c                                           ; $6fa0: $99
	add  a                                           ; $6fa1: $87
	adc  c                                           ; $6fa2: $89
	xor  c                                           ; $6fa3: $a9
	add  l                                           ; $6fa4: $85
	sbc  l                                           ; $6fa5: $9d
	sbc  b                                           ; $6fa6: $98
	ld   d, e                                        ; $6fa7: $53
	adc  c                                           ; $6fa8: $89
	ld   a, c                                        ; $6fa9: $79
	sbc  c                                           ; $6faa: $99

jr_0c3_6fab:
	sub  [hl]                                        ; $6fab: $96
	inc  [hl]                                        ; $6fac: $34
	ld   l, b                                        ; $6fad: $68
	sbc  b                                           ; $6fae: $98
	cp   d                                           ; $6faf: $ba
	ld   [hl], h                                     ; $6fb0: $74
	ld   b, a                                        ; $6fb1: $47
	xor  d                                           ; $6fb2: $aa
	sbc  c                                           ; $6fb3: $99
	sbc  c                                           ; $6fb4: $99
	add  a                                           ; $6fb5: $87
	ld   d, [hl]                                     ; $6fb6: $56
	sbc  e                                           ; $6fb7: $9b
	db   $db                                         ; $6fb8: $db
	ld   h, [hl]                                     ; $6fb9: $66
	ld   a, c                                        ; $6fba: $79
	and  a                                           ; $6fbb: $a7
	ld   [hl], a                                     ; $6fbc: $77
	add  a                                           ; $6fbd: $87
	ld   h, a                                        ; $6fbe: $67
	xor  c                                           ; $6fbf: $a9
	ld   h, [hl]                                     ; $6fc0: $66
	adc  b                                           ; $6fc1: $88
	adc  b                                           ; $6fc2: $88
	sbc  b                                           ; $6fc3: $98
	add  [hl]                                        ; $6fc4: $86
	ld   a, b                                        ; $6fc5: $78
	sbc  b                                           ; $6fc6: $98
	sbc  c                                           ; $6fc7: $99
	sbc  b                                           ; $6fc8: $98
	ld   a, b                                        ; $6fc9: $78
	sbc  c                                           ; $6fca: $99
	halt                                             ; $6fcb: $76
	adc  c                                           ; $6fcc: $89
	sub  [hl]                                        ; $6fcd: $96
	ld   [hl], a                                     ; $6fce: $77
	ld   a, b                                        ; $6fcf: $78
	adc  c                                           ; $6fd0: $89
	xor  b                                           ; $6fd1: $a8
	ld   h, [hl]                                     ; $6fd2: $66
	ld   a, b                                        ; $6fd3: $78
	add  [hl]                                        ; $6fd4: $86
	ld   a, c                                        ; $6fd5: $79
	adc  c                                           ; $6fd6: $89
	xor  b                                           ; $6fd7: $a8
	sub  a                                           ; $6fd8: $97
	ld   a, b                                        ; $6fd9: $78
	adc  c                                           ; $6fda: $89
	sbc  b                                           ; $6fdb: $98
	ld   [hl], a                                     ; $6fdc: $77
	ld   a, b                                        ; $6fdd: $78
	ld   h, [hl]                                     ; $6fde: $66
	adc  c                                           ; $6fdf: $89
	sbc  c                                           ; $6fe0: $99
	add  a                                           ; $6fe1: $87
	ld   h, a                                        ; $6fe2: $67
	ld   [hl], a                                     ; $6fe3: $77
	adc  b                                           ; $6fe4: $88
	sbc  c                                           ; $6fe5: $99
	adc  b                                           ; $6fe6: $88
	ld   [hl], a                                     ; $6fe7: $77
	sbc  c                                           ; $6fe8: $99
	xor  c                                           ; $6fe9: $a9
	sbc  b                                           ; $6fea: $98
	add  a                                           ; $6feb: $87
	ld   a, c                                        ; $6fec: $79
	xor  b                                           ; $6fed: $a8
	ld   h, a                                        ; $6fee: $67
	sbc  b                                           ; $6fef: $98
	adc  b                                           ; $6ff0: $88
	adc  c                                           ; $6ff1: $89
	adc  b                                           ; $6ff2: $88
	ld   [hl], a                                     ; $6ff3: $77
	ld   [hl], a                                     ; $6ff4: $77
	ld   h, a                                        ; $6ff5: $67
	adc  c                                           ; $6ff6: $89
	adc  c                                           ; $6ff7: $89
	add  a                                           ; $6ff8: $87
	add  a                                           ; $6ff9: $87
	adc  c                                           ; $6ffa: $89
	sbc  d                                           ; $6ffb: $9a
	ld   a, b                                        ; $6ffc: $78
	sbc  b                                           ; $6ffd: $98
	adc  b                                           ; $6ffe: $88
	adc  b                                           ; $6fff: $88
	adc  c                                           ; $7000: $89
	ld   [hl], a                                     ; $7001: $77
	sbc  b                                           ; $7002: $98
	add  a                                           ; $7003: $87
	adc  b                                           ; $7004: $88
	adc  d                                           ; $7005: $8a
	adc  b                                           ; $7006: $88
	adc  b                                           ; $7007: $88
	add  a                                           ; $7008: $87
	ld   [hl], a                                     ; $7009: $77
	sbc  c                                           ; $700a: $99
	adc  b                                           ; $700b: $88
	adc  b                                           ; $700c: $88
	adc  b                                           ; $700d: $88
	adc  b                                           ; $700e: $88
	adc  c                                           ; $700f: $89
	adc  c                                           ; $7010: $89
	adc  b                                           ; $7011: $88
	adc  b                                           ; $7012: $88
	ld   [hl], a                                     ; $7013: $77
	sbc  c                                           ; $7014: $99
	adc  b                                           ; $7015: $88
	add  a                                           ; $7016: $87
	adc  c                                           ; $7017: $89
	adc  b                                           ; $7018: $88
	adc  b                                           ; $7019: $88
	sbc  c                                           ; $701a: $99
	ld   [hl], a                                     ; $701b: $77
	adc  b                                           ; $701c: $88
	sbc  b                                           ; $701d: $98
	adc  b                                           ; $701e: $88
	sbc  b                                           ; $701f: $98
	adc  b                                           ; $7020: $88
	sbc  b                                           ; $7021: $98
	add  a                                           ; $7022: $87
	sbc  b                                           ; $7023: $98
	adc  b                                           ; $7024: $88
	adc  b                                           ; $7025: $88
	adc  c                                           ; $7026: $89
	adc  b                                           ; $7027: $88
	ld   [hl], a                                     ; $7028: $77
	adc  b                                           ; $7029: $88
	adc  b                                           ; $702a: $88
	ld   [hl], a                                     ; $702b: $77
	ld   a, b                                        ; $702c: $78
	sbc  c                                           ; $702d: $99
	adc  b                                           ; $702e: $88
	ld   a, c                                        ; $702f: $79
	add  a                                           ; $7030: $87
	ld   a, b                                        ; $7031: $78
	adc  c                                           ; $7032: $89
	sub  a                                           ; $7033: $97
	ld   a, b                                        ; $7034: $78
	adc  c                                           ; $7035: $89
	adc  c                                           ; $7036: $89
	adc  c                                           ; $7037: $89
	adc  b                                           ; $7038: $88
	adc  b                                           ; $7039: $88
	adc  b                                           ; $703a: $88
	ld   a, b                                        ; $703b: $78
	sbc  b                                           ; $703c: $98
	ld   [hl], a                                     ; $703d: $77
	adc  c                                           ; $703e: $89
	sbc  c                                           ; $703f: $99
	adc  b                                           ; $7040: $88
	adc  c                                           ; $7041: $89
	ld   [hl], a                                     ; $7042: $77
	adc  b                                           ; $7043: $88
	sub  a                                           ; $7044: $97
	ld   [hl], a                                     ; $7045: $77
	adc  b                                           ; $7046: $88
	adc  b                                           ; $7047: $88
	adc  c                                           ; $7048: $89
	sbc  c                                           ; $7049: $99
	adc  b                                           ; $704a: $88
	ld   [hl], a                                     ; $704b: $77
	adc  b                                           ; $704c: $88
	ld   [hl], a                                     ; $704d: $77
	ld   [hl], a                                     ; $704e: $77
	sbc  b                                           ; $704f: $98
	ld   a, b                                        ; $7050: $78
	adc  c                                           ; $7051: $89
	sub  a                                           ; $7052: $97
	ld   a, b                                        ; $7053: $78
	adc  b                                           ; $7054: $88
	add  a                                           ; $7055: $87
	sbc  c                                           ; $7056: $99
	adc  b                                           ; $7057: $88
	ld   [hl], a                                     ; $7058: $77
	adc  b                                           ; $7059: $88
	add  a                                           ; $705a: $87
	ld   [hl], a                                     ; $705b: $77
	sbc  b                                           ; $705c: $98
	ld   [hl], a                                     ; $705d: $77
	adc  b                                           ; $705e: $88
	add  a                                           ; $705f: $87
	adc  b                                           ; $7060: $88
	adc  b                                           ; $7061: $88
	ld   a, b                                        ; $7062: $78
	adc  c                                           ; $7063: $89
	add  a                                           ; $7064: $87
	ld   a, b                                        ; $7065: $78
	adc  b                                           ; $7066: $88
	adc  b                                           ; $7067: $88
	adc  b                                           ; $7068: $88
	adc  c                                           ; $7069: $89
	adc  b                                           ; $706a: $88
	adc  b                                           ; $706b: $88
	ld   a, b                                        ; $706c: $78
	sbc  c                                           ; $706d: $99
	add  a                                           ; $706e: $87
	adc  b                                           ; $706f: $88
	adc  b                                           ; $7070: $88
	ld   a, b                                        ; $7071: $78
	adc  b                                           ; $7072: $88
	ld   a, b                                        ; $7073: $78
	adc  b                                           ; $7074: $88
	adc  b                                           ; $7075: $88
	adc  b                                           ; $7076: $88
	ld   [hl], a                                     ; $7077: $77
	adc  b                                           ; $7078: $88
	sbc  b                                           ; $7079: $98
	ld   [hl], a                                     ; $707a: $77
	sbc  b                                           ; $707b: $98
	ld   a, b                                        ; $707c: $78
	adc  b                                           ; $707d: $88
	adc  b                                           ; $707e: $88
	adc  b                                           ; $707f: $88
	adc  b                                           ; $7080: $88
	ld   a, b                                        ; $7081: $78
	adc  b                                           ; $7082: $88
	adc  b                                           ; $7083: $88
	adc  b                                           ; $7084: $88
	adc  b                                           ; $7085: $88
	adc  b                                           ; $7086: $88
	sbc  b                                           ; $7087: $98
	adc  b                                           ; $7088: $88
	adc  b                                           ; $7089: $88
	adc  b                                           ; $708a: $88
	add  a                                           ; $708b: $87
	adc  b                                           ; $708c: $88
	ld   [hl], a                                     ; $708d: $77
	adc  b                                           ; $708e: $88
	adc  b                                           ; $708f: $88
	adc  b                                           ; $7090: $88
	adc  b                                           ; $7091: $88
	ld   a, b                                        ; $7092: $78
	adc  b                                           ; $7093: $88
	add  a                                           ; $7094: $87
	adc  b                                           ; $7095: $88
	adc  b                                           ; $7096: $88
	adc  b                                           ; $7097: $88
	adc  b                                           ; $7098: $88
	adc  b                                           ; $7099: $88
	adc  b                                           ; $709a: $88
	adc  b                                           ; $709b: $88
	adc  b                                           ; $709c: $88
	adc  b                                           ; $709d: $88
	adc  b                                           ; $709e: $88
	adc  b                                           ; $709f: $88
	adc  b                                           ; $70a0: $88
	adc  b                                           ; $70a1: $88
	add  a                                           ; $70a2: $87
	adc  b                                           ; $70a3: $88
	adc  b                                           ; $70a4: $88
	ld   a, b                                        ; $70a5: $78
	adc  b                                           ; $70a6: $88
	adc  b                                           ; $70a7: $88
	adc  c                                           ; $70a8: $89
	adc  b                                           ; $70a9: $88
	adc  b                                           ; $70aa: $88
	adc  b                                           ; $70ab: $88
	adc  b                                           ; $70ac: $88
	adc  b                                           ; $70ad: $88
	adc  b                                           ; $70ae: $88
	adc  b                                           ; $70af: $88
	adc  c                                           ; $70b0: $89
	sbc  b                                           ; $70b1: $98
	adc  b                                           ; $70b2: $88
	adc  b                                           ; $70b3: $88
	adc  b                                           ; $70b4: $88
	adc  b                                           ; $70b5: $88
	adc  b                                           ; $70b6: $88
	adc  b                                           ; $70b7: $88
	adc  b                                           ; $70b8: $88
	adc  b                                           ; $70b9: $88
	adc  b                                           ; $70ba: $88
	adc  b                                           ; $70bb: $88
	adc  b                                           ; $70bc: $88
	adc  b                                           ; $70bd: $88
	adc  b                                           ; $70be: $88
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
	adc  b                                           ; $70cb: $88
	adc  b                                           ; $70cc: $88
	adc  b                                           ; $70cd: $88
	adc  b                                           ; $70ce: $88
	adc  b                                           ; $70cf: $88
	adc  b                                           ; $70d0: $88
	adc  b                                           ; $70d1: $88
	adc  b                                           ; $70d2: $88
	adc  b                                           ; $70d3: $88
	adc  b                                           ; $70d4: $88
	adc  b                                           ; $70d5: $88
	adc  b                                           ; $70d6: $88
	adc  b                                           ; $70d7: $88
	adc  b                                           ; $70d8: $88
	adc  b                                           ; $70d9: $88
	adc  b                                           ; $70da: $88
	adc  b                                           ; $70db: $88
	adc  b                                           ; $70dc: $88
	adc  b                                           ; $70dd: $88
	adc  b                                           ; $70de: $88
	adc  b                                           ; $70df: $88
	adc  b                                           ; $70e0: $88
	adc  b                                           ; $70e1: $88
	adc  b                                           ; $70e2: $88
	adc  b                                           ; $70e3: $88
	adc  b                                           ; $70e4: $88
	adc  b                                           ; $70e5: $88
	adc  b                                           ; $70e6: $88
	adc  b                                           ; $70e7: $88
	adc  b                                           ; $70e8: $88
	adc  b                                           ; $70e9: $88
	adc  b                                           ; $70ea: $88
	adc  b                                           ; $70eb: $88
	adc  b                                           ; $70ec: $88
	adc  b                                           ; $70ed: $88
	adc  b                                           ; $70ee: $88
	adc  b                                           ; $70ef: $88
	adc  b                                           ; $70f0: $88
	adc  b                                           ; $70f1: $88
	adc  b                                           ; $70f2: $88
	adc  b                                           ; $70f3: $88
	adc  b                                           ; $70f4: $88
	adc  b                                           ; $70f5: $88
	adc  b                                           ; $70f6: $88
	adc  b                                           ; $70f7: $88
	adc  b                                           ; $70f8: $88
	adc  b                                           ; $70f9: $88
	adc  b                                           ; $70fa: $88
	adc  b                                           ; $70fb: $88
	adc  b                                           ; $70fc: $88
	adc  b                                           ; $70fd: $88
	adc  b                                           ; $70fe: $88
	adc  b                                           ; $70ff: $88
	adc  b                                           ; $7100: $88
	adc  b                                           ; $7101: $88
	adc  b                                           ; $7102: $88
	adc  b                                           ; $7103: $88
	adc  b                                           ; $7104: $88
	adc  b                                           ; $7105: $88
	adc  b                                           ; $7106: $88
	adc  b                                           ; $7107: $88
	adc  b                                           ; $7108: $88
	adc  b                                           ; $7109: $88
	adc  b                                           ; $710a: $88
	adc  b                                           ; $710b: $88
	adc  b                                           ; $710c: $88
	adc  b                                           ; $710d: $88
	adc  b                                           ; $710e: $88
	adc  b                                           ; $710f: $88
	adc  b                                           ; $7110: $88
	adc  b                                           ; $7111: $88
	adc  b                                           ; $7112: $88
	adc  b                                           ; $7113: $88
	adc  b                                           ; $7114: $88
	adc  b                                           ; $7115: $88
	adc  b                                           ; $7116: $88
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
	adc  b                                           ; $7126: $88
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
	adc  b                                           ; $7132: $88
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
	adc  b                                           ; $7142: $88
	adc  b                                           ; $7143: $88
	adc  b                                           ; $7144: $88
	adc  b                                           ; $7145: $88
	adc  b                                           ; $7146: $88
	adc  b                                           ; $7147: $88
	adc  b                                           ; $7148: $88
	adc  b                                           ; $7149: $88
	adc  b                                           ; $714a: $88
	adc  b                                           ; $714b: $88
	adc  b                                           ; $714c: $88
	adc  b                                           ; $714d: $88
	adc  b                                           ; $714e: $88
	adc  b                                           ; $714f: $88
	adc  b                                           ; $7150: $88
	adc  b                                           ; $7151: $88
	adc  b                                           ; $7152: $88
	adc  b                                           ; $7153: $88
	adc  b                                           ; $7154: $88
	adc  b                                           ; $7155: $88
	adc  b                                           ; $7156: $88
	adc  b                                           ; $7157: $88
	adc  b                                           ; $7158: $88
	adc  b                                           ; $7159: $88
	adc  b                                           ; $715a: $88
	adc  b                                           ; $715b: $88
	adc  b                                           ; $715c: $88
	adc  b                                           ; $715d: $88
	adc  b                                           ; $715e: $88
	adc  b                                           ; $715f: $88
	adc  b                                           ; $7160: $88
	adc  b                                           ; $7161: $88
	adc  b                                           ; $7162: $88
	adc  b                                           ; $7163: $88
	adc  b                                           ; $7164: $88
	adc  b                                           ; $7165: $88
	adc  b                                           ; $7166: $88
	adc  b                                           ; $7167: $88
	adc  b                                           ; $7168: $88
	adc  b                                           ; $7169: $88
	adc  b                                           ; $716a: $88
	adc  b                                           ; $716b: $88
	adc  b                                           ; $716c: $88
	adc  b                                           ; $716d: $88
	adc  b                                           ; $716e: $88
	adc  b                                           ; $716f: $88
	adc  b                                           ; $7170: $88
	adc  b                                           ; $7171: $88
	adc  b                                           ; $7172: $88
	adc  b                                           ; $7173: $88
	adc  b                                           ; $7174: $88
	adc  b                                           ; $7175: $88
	adc  b                                           ; $7176: $88
	adc  b                                           ; $7177: $88
	adc  b                                           ; $7178: $88
	adc  b                                           ; $7179: $88
	adc  b                                           ; $717a: $88
	adc  b                                           ; $717b: $88
	adc  b                                           ; $717c: $88
	adc  b                                           ; $717d: $88
	adc  b                                           ; $717e: $88
	adc  b                                           ; $717f: $88
	adc  b                                           ; $7180: $88
	adc  b                                           ; $7181: $88
	adc  b                                           ; $7182: $88
	adc  b                                           ; $7183: $88
	adc  b                                           ; $7184: $88
	adc  b                                           ; $7185: $88
	adc  b                                           ; $7186: $88
	adc  b                                           ; $7187: $88
	adc  b                                           ; $7188: $88
	adc  b                                           ; $7189: $88
	adc  b                                           ; $718a: $88
	adc  b                                           ; $718b: $88
	adc  b                                           ; $718c: $88
	adc  b                                           ; $718d: $88
	adc  b                                           ; $718e: $88
	adc  b                                           ; $718f: $88
	adc  b                                           ; $7190: $88
	adc  b                                           ; $7191: $88
	adc  b                                           ; $7192: $88
	adc  b                                           ; $7193: $88
	adc  b                                           ; $7194: $88
	adc  b                                           ; $7195: $88
	adc  b                                           ; $7196: $88
	adc  b                                           ; $7197: $88
	adc  b                                           ; $7198: $88
	adc  b                                           ; $7199: $88
	adc  b                                           ; $719a: $88
	adc  b                                           ; $719b: $88
	adc  b                                           ; $719c: $88
	adc  b                                           ; $719d: $88
	adc  b                                           ; $719e: $88
	adc  b                                           ; $719f: $88
	adc  b                                           ; $71a0: $88
	adc  b                                           ; $71a1: $88
	adc  b                                           ; $71a2: $88
	adc  b                                           ; $71a3: $88
	adc  b                                           ; $71a4: $88
	adc  b                                           ; $71a5: $88
	adc  b                                           ; $71a6: $88
	adc  b                                           ; $71a7: $88
	adc  b                                           ; $71a8: $88
	adc  b                                           ; $71a9: $88
	adc  b                                           ; $71aa: $88
	adc  b                                           ; $71ab: $88
	adc  b                                           ; $71ac: $88
	adc  b                                           ; $71ad: $88
	adc  b                                           ; $71ae: $88
	adc  b                                           ; $71af: $88
	adc  b                                           ; $71b0: $88
	adc  b                                           ; $71b1: $88
	adc  b                                           ; $71b2: $88
	adc  b                                           ; $71b3: $88
	adc  b                                           ; $71b4: $88
	adc  b                                           ; $71b5: $88
	adc  b                                           ; $71b6: $88
	adc  b                                           ; $71b7: $88
	adc  b                                           ; $71b8: $88
	adc  b                                           ; $71b9: $88
	adc  b                                           ; $71ba: $88
	adc  b                                           ; $71bb: $88
	adc  b                                           ; $71bc: $88
	adc  b                                           ; $71bd: $88
	adc  b                                           ; $71be: $88
	adc  b                                           ; $71bf: $88
	adc  b                                           ; $71c0: $88
	adc  b                                           ; $71c1: $88
	adc  b                                           ; $71c2: $88
	adc  b                                           ; $71c3: $88
	adc  b                                           ; $71c4: $88
	adc  b                                           ; $71c5: $88
	adc  b                                           ; $71c6: $88
	adc  b                                           ; $71c7: $88
	adc  b                                           ; $71c8: $88
	adc  b                                           ; $71c9: $88
	adc  b                                           ; $71ca: $88
	adc  b                                           ; $71cb: $88
	adc  b                                           ; $71cc: $88
	adc  b                                           ; $71cd: $88
	adc  b                                           ; $71ce: $88
	adc  b                                           ; $71cf: $88
	adc  b                                           ; $71d0: $88
	adc  b                                           ; $71d1: $88
	adc  b                                           ; $71d2: $88
	adc  b                                           ; $71d3: $88
	adc  b                                           ; $71d4: $88
	adc  b                                           ; $71d5: $88
	adc  b                                           ; $71d6: $88
	adc  b                                           ; $71d7: $88
	adc  b                                           ; $71d8: $88
	adc  b                                           ; $71d9: $88
	adc  b                                           ; $71da: $88
	adc  b                                           ; $71db: $88
	adc  b                                           ; $71dc: $88
	adc  b                                           ; $71dd: $88
	adc  b                                           ; $71de: $88
	adc  b                                           ; $71df: $88
	adc  b                                           ; $71e0: $88
	adc  b                                           ; $71e1: $88
	adc  b                                           ; $71e2: $88
	adc  b                                           ; $71e3: $88
	adc  b                                           ; $71e4: $88
	adc  b                                           ; $71e5: $88
	adc  b                                           ; $71e6: $88
	adc  b                                           ; $71e7: $88
	adc  b                                           ; $71e8: $88
	adc  b                                           ; $71e9: $88
	adc  b                                           ; $71ea: $88
	adc  b                                           ; $71eb: $88
	adc  b                                           ; $71ec: $88
	adc  b                                           ; $71ed: $88
	adc  b                                           ; $71ee: $88
	adc  b                                           ; $71ef: $88
	adc  b                                           ; $71f0: $88
	adc  b                                           ; $71f1: $88
	adc  b                                           ; $71f2: $88
	adc  b                                           ; $71f3: $88
	adc  b                                           ; $71f4: $88
	adc  b                                           ; $71f5: $88
	adc  b                                           ; $71f6: $88
	adc  b                                           ; $71f7: $88
	adc  b                                           ; $71f8: $88
	adc  b                                           ; $71f9: $88
	adc  b                                           ; $71fa: $88
	adc  b                                           ; $71fb: $88
	adc  b                                           ; $71fc: $88
	adc  b                                           ; $71fd: $88
	adc  b                                           ; $71fe: $88
	adc  b                                           ; $71ff: $88
	adc  b                                           ; $7200: $88
	adc  b                                           ; $7201: $88
	adc  b                                           ; $7202: $88
	adc  b                                           ; $7203: $88
	adc  b                                           ; $7204: $88
	adc  b                                           ; $7205: $88
	adc  b                                           ; $7206: $88
	adc  b                                           ; $7207: $88
	adc  b                                           ; $7208: $88
	adc  b                                           ; $7209: $88
	adc  b                                           ; $720a: $88
	adc  b                                           ; $720b: $88
	adc  b                                           ; $720c: $88
	adc  b                                           ; $720d: $88
	adc  b                                           ; $720e: $88
	adc  b                                           ; $720f: $88
	adc  b                                           ; $7210: $88
	adc  b                                           ; $7211: $88
	adc  b                                           ; $7212: $88
	adc  b                                           ; $7213: $88
	adc  b                                           ; $7214: $88
	adc  b                                           ; $7215: $88
	adc  b                                           ; $7216: $88
	adc  b                                           ; $7217: $88
	adc  b                                           ; $7218: $88
	adc  b                                           ; $7219: $88
	adc  b                                           ; $721a: $88
	adc  b                                           ; $721b: $88
	adc  b                                           ; $721c: $88
	adc  b                                           ; $721d: $88
	adc  b                                           ; $721e: $88
	adc  b                                           ; $721f: $88
	adc  b                                           ; $7220: $88
	adc  b                                           ; $7221: $88
	adc  b                                           ; $7222: $88
	adc  b                                           ; $7223: $88
	adc  b                                           ; $7224: $88
	adc  b                                           ; $7225: $88
	adc  b                                           ; $7226: $88
	adc  b                                           ; $7227: $88
	adc  b                                           ; $7228: $88
	adc  b                                           ; $7229: $88
	adc  b                                           ; $722a: $88
	adc  b                                           ; $722b: $88
	adc  b                                           ; $722c: $88
	adc  b                                           ; $722d: $88
	adc  b                                           ; $722e: $88
	adc  b                                           ; $722f: $88
	adc  b                                           ; $7230: $88
	adc  b                                           ; $7231: $88
	adc  b                                           ; $7232: $88
	adc  b                                           ; $7233: $88
	adc  b                                           ; $7234: $88
	adc  b                                           ; $7235: $88
	adc  b                                           ; $7236: $88
	adc  b                                           ; $7237: $88
	adc  b                                           ; $7238: $88
	adc  b                                           ; $7239: $88
	adc  b                                           ; $723a: $88
	adc  b                                           ; $723b: $88
	adc  b                                           ; $723c: $88
	adc  b                                           ; $723d: $88
	adc  b                                           ; $723e: $88
	adc  b                                           ; $723f: $88
	adc  b                                           ; $7240: $88
	adc  b                                           ; $7241: $88
	adc  b                                           ; $7242: $88
	adc  b                                           ; $7243: $88
	adc  b                                           ; $7244: $88
	adc  b                                           ; $7245: $88
	adc  b                                           ; $7246: $88
	adc  b                                           ; $7247: $88
	adc  b                                           ; $7248: $88
	adc  b                                           ; $7249: $88
	adc  b                                           ; $724a: $88
	adc  b                                           ; $724b: $88
	adc  b                                           ; $724c: $88
	adc  b                                           ; $724d: $88
	adc  b                                           ; $724e: $88
	adc  b                                           ; $724f: $88
	adc  b                                           ; $7250: $88
	adc  b                                           ; $7251: $88
	adc  b                                           ; $7252: $88
	adc  b                                           ; $7253: $88
	adc  b                                           ; $7254: $88
	adc  b                                           ; $7255: $88
	adc  b                                           ; $7256: $88
	adc  b                                           ; $7257: $88
	adc  b                                           ; $7258: $88
	adc  b                                           ; $7259: $88
	adc  b                                           ; $725a: $88
	adc  b                                           ; $725b: $88
	adc  b                                           ; $725c: $88
	adc  b                                           ; $725d: $88
	adc  b                                           ; $725e: $88
	adc  b                                           ; $725f: $88
	adc  b                                           ; $7260: $88
	adc  b                                           ; $7261: $88
	adc  b                                           ; $7262: $88
	adc  b                                           ; $7263: $88
	adc  b                                           ; $7264: $88
	adc  b                                           ; $7265: $88
	adc  b                                           ; $7266: $88
	adc  b                                           ; $7267: $88
	adc  b                                           ; $7268: $88
	adc  b                                           ; $7269: $88
	adc  b                                           ; $726a: $88
	adc  b                                           ; $726b: $88
	adc  b                                           ; $726c: $88
	adc  b                                           ; $726d: $88
	adc  b                                           ; $726e: $88
	adc  b                                           ; $726f: $88
	adc  b                                           ; $7270: $88
	adc  b                                           ; $7271: $88
	adc  b                                           ; $7272: $88
	adc  b                                           ; $7273: $88
	adc  b                                           ; $7274: $88
	adc  b                                           ; $7275: $88
	adc  b                                           ; $7276: $88
	adc  b                                           ; $7277: $88
	adc  b                                           ; $7278: $88
	adc  b                                           ; $7279: $88
	adc  b                                           ; $727a: $88
	adc  b                                           ; $727b: $88
	adc  b                                           ; $727c: $88
	adc  b                                           ; $727d: $88
	adc  b                                           ; $727e: $88
	adc  b                                           ; $727f: $88
	adc  b                                           ; $7280: $88
	adc  b                                           ; $7281: $88
	adc  b                                           ; $7282: $88
	adc  b                                           ; $7283: $88
	adc  b                                           ; $7284: $88
	adc  b                                           ; $7285: $88
	adc  b                                           ; $7286: $88
	adc  b                                           ; $7287: $88
	adc  b                                           ; $7288: $88
	adc  b                                           ; $7289: $88
	adc  b                                           ; $728a: $88
	adc  b                                           ; $728b: $88
	adc  b                                           ; $728c: $88
	adc  b                                           ; $728d: $88
	adc  b                                           ; $728e: $88
	adc  b                                           ; $728f: $88
	adc  b                                           ; $7290: $88
	adc  b                                           ; $7291: $88
	adc  b                                           ; $7292: $88
	adc  b                                           ; $7293: $88
	adc  b                                           ; $7294: $88
	adc  b                                           ; $7295: $88
	adc  b                                           ; $7296: $88
	adc  b                                           ; $7297: $88
	adc  b                                           ; $7298: $88
	adc  b                                           ; $7299: $88
	adc  b                                           ; $729a: $88
	adc  b                                           ; $729b: $88
	adc  b                                           ; $729c: $88
	adc  b                                           ; $729d: $88
	adc  b                                           ; $729e: $88
	adc  b                                           ; $729f: $88
	adc  b                                           ; $72a0: $88
	adc  b                                           ; $72a1: $88
	adc  b                                           ; $72a2: $88
	adc  b                                           ; $72a3: $88
	adc  b                                           ; $72a4: $88
	adc  b                                           ; $72a5: $88
	adc  b                                           ; $72a6: $88
	adc  b                                           ; $72a7: $88
	adc  b                                           ; $72a8: $88
	adc  b                                           ; $72a9: $88
	adc  b                                           ; $72aa: $88
	adc  b                                           ; $72ab: $88
	adc  b                                           ; $72ac: $88
	adc  b                                           ; $72ad: $88
	adc  b                                           ; $72ae: $88
	adc  b                                           ; $72af: $88
	adc  b                                           ; $72b0: $88
	adc  b                                           ; $72b1: $88
	adc  b                                           ; $72b2: $88
	adc  b                                           ; $72b3: $88
	adc  b                                           ; $72b4: $88
	adc  b                                           ; $72b5: $88
	adc  b                                           ; $72b6: $88
	adc  b                                           ; $72b7: $88
	adc  b                                           ; $72b8: $88
	adc  b                                           ; $72b9: $88
	adc  b                                           ; $72ba: $88
	adc  b                                           ; $72bb: $88
	adc  b                                           ; $72bc: $88
	adc  b                                           ; $72bd: $88
	adc  b                                           ; $72be: $88
	adc  b                                           ; $72bf: $88
	adc  b                                           ; $72c0: $88
	adc  b                                           ; $72c1: $88
	adc  b                                           ; $72c2: $88
	adc  b                                           ; $72c3: $88
	adc  b                                           ; $72c4: $88
	adc  b                                           ; $72c5: $88
	adc  b                                           ; $72c6: $88
	adc  b                                           ; $72c7: $88
	adc  b                                           ; $72c8: $88
	adc  b                                           ; $72c9: $88
	adc  b                                           ; $72ca: $88
	adc  b                                           ; $72cb: $88
	adc  b                                           ; $72cc: $88
	adc  b                                           ; $72cd: $88
	adc  b                                           ; $72ce: $88
	adc  b                                           ; $72cf: $88
	adc  b                                           ; $72d0: $88
	adc  b                                           ; $72d1: $88
	adc  b                                           ; $72d2: $88
	adc  b                                           ; $72d3: $88
	adc  b                                           ; $72d4: $88
	adc  b                                           ; $72d5: $88
	adc  b                                           ; $72d6: $88
	adc  b                                           ; $72d7: $88
	adc  b                                           ; $72d8: $88
	adc  b                                           ; $72d9: $88
	adc  b                                           ; $72da: $88
	adc  b                                           ; $72db: $88
	adc  b                                           ; $72dc: $88
	adc  b                                           ; $72dd: $88
	adc  b                                           ; $72de: $88
	adc  b                                           ; $72df: $88
	adc  b                                           ; $72e0: $88
	adc  b                                           ; $72e1: $88
	adc  b                                           ; $72e2: $88
	adc  b                                           ; $72e3: $88
	adc  b                                           ; $72e4: $88
	adc  b                                           ; $72e5: $88
	adc  b                                           ; $72e6: $88
	adc  b                                           ; $72e7: $88
	adc  b                                           ; $72e8: $88
	adc  b                                           ; $72e9: $88
	adc  b                                           ; $72ea: $88
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
	adc  b                                           ; $72fa: $88
	adc  b                                           ; $72fb: $88
	adc  b                                           ; $72fc: $88
	adc  b                                           ; $72fd: $88
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
	sbc  b                                           ; $7317: $98
	adc  b                                           ; $7318: $88
	adc  b                                           ; $7319: $88
	adc  b                                           ; $731a: $88
	sbc  c                                           ; $731b: $99
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
	adc  c                                           ; $7330: $89
	adc  c                                           ; $7331: $89
	add  a                                           ; $7332: $87
	ld   a, b                                        ; $7333: $78
	sbc  b                                           ; $7334: $98
	sbc  b                                           ; $7335: $98
	ld   [hl], a                                     ; $7336: $77
	adc  b                                           ; $7337: $88
	adc  b                                           ; $7338: $88
	adc  b                                           ; $7339: $88
	adc  c                                           ; $733a: $89
	sbc  b                                           ; $733b: $98
	add  a                                           ; $733c: $87
	ld   a, b                                        ; $733d: $78
	sbc  b                                           ; $733e: $98
	sbc  b                                           ; $733f: $98
	add  a                                           ; $7340: $87
	adc  b                                           ; $7341: $88
	sbc  b                                           ; $7342: $98
	adc  b                                           ; $7343: $88
	adc  b                                           ; $7344: $88
	adc  b                                           ; $7345: $88
	adc  b                                           ; $7346: $88
	adc  b                                           ; $7347: $88
	adc  b                                           ; $7348: $88
	adc  b                                           ; $7349: $88
	sbc  c                                           ; $734a: $99
	adc  b                                           ; $734b: $88
	sbc  c                                           ; $734c: $99
	sbc  b                                           ; $734d: $98
	add  a                                           ; $734e: $87
	ld   a, b                                        ; $734f: $78
	sbc  c                                           ; $7350: $99
	add  a                                           ; $7351: $87
	ld   h, a                                        ; $7352: $67
	ld   a, c                                        ; $7353: $79
	xor  c                                           ; $7354: $a9
	sub  a                                           ; $7355: $97
	ld   h, [hl]                                     ; $7356: $66
	ld   a, d                                        ; $7357: $7a
	sbc  c                                           ; $7358: $99
	halt                                             ; $7359: $76
	ld   h, a                                        ; $735a: $67
	xor  d                                           ; $735b: $aa
	xor  c                                           ; $735c: $a9
	ld   h, l                                        ; $735d: $65
	ld   l, b                                        ; $735e: $68
	sbc  d                                           ; $735f: $9a
	sub  [hl]                                        ; $7360: $96
	ld   h, a                                        ; $7361: $67
	adc  d                                           ; $7362: $8a
	sbc  b                                           ; $7363: $98
	ld   [hl], a                                     ; $7364: $77
	sbc  c                                           ; $7365: $99
	sub  a                                           ; $7366: $97
	halt                                             ; $7367: $76
	ld   h, a                                        ; $7368: $67
	sbc  d                                           ; $7369: $9a
	add  [hl]                                        ; $736a: $86
	ld   h, a                                        ; $736b: $67
	sbc  b                                           ; $736c: $98
	sbc  c                                           ; $736d: $99
	add  a                                           ; $736e: $87
	ld   h, [hl]                                     ; $736f: $66
	ld   a, b                                        ; $7370: $78
	sub  a                                           ; $7371: $97
	ld   h, [hl]                                     ; $7372: $66
	ld   a, b                                        ; $7373: $78
	adc  b                                           ; $7374: $88
	add  a                                           ; $7375: $87
	adc  d                                           ; $7376: $8a
	sbc  b                                           ; $7377: $98
	halt                                             ; $7378: $76
	ld   a, b                                        ; $7379: $78
	adc  b                                           ; $737a: $88
	halt                                             ; $737b: $76
	ld   h, a                                        ; $737c: $67
	sbc  d                                           ; $737d: $9a
	sub  a                                           ; $737e: $97
	ld   a, c                                        ; $737f: $79
	adc  b                                           ; $7380: $88
	ld   [hl], a                                     ; $7381: $77
	ld   a, b                                        ; $7382: $78
	adc  b                                           ; $7383: $88
	add  a                                           ; $7384: $87
	adc  b                                           ; $7385: $88
	adc  b                                           ; $7386: $88
	add  a                                           ; $7387: $87
	ld   h, [hl]                                     ; $7388: $66
	ld   a, c                                        ; $7389: $79
	cp   d                                           ; $738a: $ba
	halt                                             ; $738b: $76
	ld   a, c                                        ; $738c: $79
	adc  b                                           ; $738d: $88
	adc  b                                           ; $738e: $88
	adc  b                                           ; $738f: $88
	ld   [hl], a                                     ; $7390: $77
	add  a                                           ; $7391: $87
	adc  c                                           ; $7392: $89
	add  a                                           ; $7393: $87
	ld   l, b                                        ; $7394: $68
	sbc  c                                           ; $7395: $99
	add  a                                           ; $7396: $87
	halt                                             ; $7397: $76
	adc  d                                           ; $7398: $8a
	xor  c                                           ; $7399: $a9
	add  [hl]                                        ; $739a: $86
	ld   d, [hl]                                     ; $739b: $56
	adc  e                                           ; $739c: $8b
	and  a                                           ; $739d: $a7
	ld   [hl], a                                     ; $739e: $77
	sbc  d                                           ; $739f: $9a
	add  a                                           ; $73a0: $87
	ld   [hl], a                                     ; $73a1: $77
	ld   a, b                                        ; $73a2: $78
	add  a                                           ; $73a3: $87
	ld   a, b                                        ; $73a4: $78
	ld   a, c                                        ; $73a5: $79
	adc  c                                           ; $73a6: $89
	xor  c                                           ; $73a7: $a9
	add  a                                           ; $73a8: $87
	adc  b                                           ; $73a9: $88
	add  [hl]                                        ; $73aa: $86
	ld   [hl], a                                     ; $73ab: $77
	sbc  d                                           ; $73ac: $9a
	sbc  b                                           ; $73ad: $98
	sub  a                                           ; $73ae: $97
	ld   a, c                                        ; $73af: $79
	sbc  b                                           ; $73b0: $98
	add  a                                           ; $73b1: $87
	ld   h, a                                        ; $73b2: $67
	ld   a, b                                        ; $73b3: $78
	add  l                                           ; $73b4: $85
	ld   b, [hl]                                     ; $73b5: $46
	ld   [hl], a                                     ; $73b6: $77
	adc  b                                           ; $73b7: $88
	adc  b                                           ; $73b8: $88
	adc  c                                           ; $73b9: $89
	ret                                              ; $73ba: $c9


	sbc  e                                           ; $73bb: $9b
	cp   e                                           ; $73bc: $bb
	cp   d                                           ; $73bd: $ba
	cp   e                                           ; $73be: $bb
	xor  b                                           ; $73bf: $a8
	sub  l                                           ; $73c0: $95
	ld   d, l                                        ; $73c1: $55
	ld   d, l                                        ; $73c2: $55
	ld   b, d                                        ; $73c3: $42
	ld   de, $9a24                                   ; $73c4: $11 $24 $9a
	xor  [hl]                                        ; $73c7: $ae
	rst  $38                                         ; $73c8: $ff
	rst  $38                                         ; $73c9: $ff
	call c, $eecc                                    ; $73ca: $dc $cc $ee
	cp   b                                           ; $73cd: $b8
	ld   d, e                                        ; $73ce: $53
	inc  hl                                          ; $73cf: $23
	ld   [hl-], a                                    ; $73d0: $32
	ld   de, $1211                                   ; $73d1: $11 $11 $12
	ld   l, c                                        ; $73d4: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73d5: $cf
	rst  $38                                         ; $73d6: $ff
	rst  $38                                         ; $73d7: $ff
	call $ffbe                                       ; $73d8: $cd $be $ff
	rst  $38                                         ; $73db: $ff
	push bc                                          ; $73dc: $c5
	ld   hl, $1111                                   ; $73dd: $21 $11 $11
	ld   de, $1711                                   ; $73e0: $11 $11 $17
	rst  $38                                         ; $73e3: $ff
	rst  $38                                         ; $73e4: $ff
	rst  $38                                         ; $73e5: $ff
	ei                                               ; $73e6: $fb
	adc  h                                           ; $73e7: $8c
	rst  $28                                         ; $73e8: $ef
	rst  $38                                         ; $73e9: $ff
	push de                                          ; $73ea: $d5
	ld   de, $1111                                   ; $73eb: $11 $11 $11
	ld   de, $1911                                   ; $73ee: $11 $11 $19
	rst  $38                                         ; $73f1: $ff
	rst  $38                                         ; $73f2: $ff
	rst  $38                                         ; $73f3: $ff
	push hl                                          ; $73f4: $e5
	jr   z, @+$01                                    ; $73f5: $28 $ff

	rst  $38                                         ; $73f7: $ff
	jp   nz, $1111                                   ; $73f8: $c2 $11 $11

	ld   de, $1111                                   ; $73fb: $11 $11 $11
	ld   a, a                                        ; $73fe: $7f
	rst  $38                                         ; $73ff: $ff
	rst  $38                                         ; $7400: $ff
	rst  $38                                         ; $7401: $ff
	ld   sp, $ff1a                                   ; $7402: $31 $1a $ff
	rst  $38                                         ; $7405: $ff
	ld   d, c                                        ; $7406: $51
	ld   de, $1111                                   ; $7407: $11 $11 $11
	ld   de, $ff3e                                   ; $740a: $11 $3e $ff
	rst  $38                                         ; $740d: $ff
	rst  $38                                         ; $740e: $ff
	pop  hl                                          ; $740f: $e1
	ld   [de], a                                     ; $7410: $12
	rst  $38                                         ; $7411: $ff
	rst  $38                                         ; $7412: $ff
	pop  bc                                          ; $7413: $c1
	ld   de, $1111                                   ; $7414: $11 $11 $11
	ld   de, $ff1d                                   ; $7417: $11 $1d $ff
	rst  $38                                         ; $741a: $ff
	rst  $38                                         ; $741b: $ff
	db   $fc                                         ; $741c: $fc
	ld   de, $ff5f                                   ; $741d: $11 $5f $ff
	or   $11                                         ; $7420: $f6 $11
	ld   de, $1111                                   ; $7422: $11 $11 $11
	add  hl, de                                      ; $7425: $19
	rst  $38                                         ; $7426: $ff
	rst  $38                                         ; $7427: $ff
	rst  $38                                         ; $7428: $ff
	rst  $38                                         ; $7429: $ff
	ld   de, $ff1e                                   ; $742a: $11 $1e $ff
	cp   $11                                         ; $742d: $fe $11
	ld   de, $1111                                   ; $742f: $11 $11 $11
	ld   d, $ff                                      ; $7432: $16 $ff
	rst  $38                                         ; $7434: $ff
	rst  $38                                         ; $7435: $ff
	rst  $38                                         ; $7436: $ff
	ld   hl, $ff1b                                   ; $7437: $21 $1b $ff
	rst  $38                                         ; $743a: $ff
	ld   de, $1111                                   ; $743b: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $743e: $11 $14 $ff
	rst  $38                                         ; $7441: $ff
	rst  $38                                         ; $7442: $ff
	rst  $38                                         ; $7443: $ff
	ld   sp, $ff19                                   ; $7444: $31 $19 $ff
	rst  $38                                         ; $7447: $ff
	ld   b, c                                        ; $7448: $41
	ld   de, $1111                                   ; $7449: $11 $11 $11
	dec  d                                           ; $744c: $15
	rst  $38                                         ; $744d: $ff
	rst  $38                                         ; $744e: $ff
	rst  $38                                         ; $744f: $ff
	rst  $38                                         ; $7450: $ff
	add  c                                           ; $7451: $81
	rla                                              ; $7452: $17
	rst  $38                                         ; $7453: $ff
	rst  $38                                         ; $7454: $ff
	ld   h, c                                        ; $7455: $61
	ld   de, $1111                                   ; $7456: $11 $11 $11
	ld   de, $ffff                                   ; $7459: $11 $ff $ff
	rst  $38                                         ; $745c: $ff
	rst  $38                                         ; $745d: $ff
	and  c                                           ; $745e: $a1
	inc  de                                          ; $745f: $13
	rst  $38                                         ; $7460: $ff
	rst  $38                                         ; $7461: $ff
	ld   h, c                                        ; $7462: $61
	ld   de, $1111                                   ; $7463: $11 $11 $11
	inc  d                                           ; $7466: $14
	rst  $38                                         ; $7467: $ff
	rst  $38                                         ; $7468: $ff
	rst  $38                                         ; $7469: $ff
	rst  $38                                         ; $746a: $ff
	add  c                                           ; $746b: $81
	rla                                              ; $746c: $17
	rst  $38                                         ; $746d: $ff
	rst  $38                                         ; $746e: $ff
	or   c                                           ; $746f: $b1
	ld   de, $1111                                   ; $7470: $11 $11 $11
	ld   [de], a                                     ; $7473: $12
	rst  $38                                         ; $7474: $ff
	rst  $38                                         ; $7475: $ff
	rst  $38                                         ; $7476: $ff
	rst  $38                                         ; $7477: $ff
	ld   de, $ff1a                                   ; $7478: $11 $1a $ff
	rst  $38                                         ; $747b: $ff
	or   c                                           ; $747c: $b1
	ld   de, $1111                                   ; $747d: $11 $11 $11
	rla                                              ; $7480: $17
	rst  $38                                         ; $7481: $ff
	rst  $38                                         ; $7482: $ff
	rst  $38                                         ; $7483: $ff
	ei                                               ; $7484: $fb
	ld   de, $ff3f                                   ; $7485: $11 $3f $ff
	rst  $38                                         ; $7488: $ff
	ld   [hl], c                                     ; $7489: $71
	ld   de, $1111                                   ; $748a: $11 $11 $11
	rra                                              ; $748d: $1f
	rst  $38                                         ; $748e: $ff
	rst  $38                                         ; $748f: $ff
	rst  $38                                         ; $7490: $ff
	ld   sp, hl                                      ; $7491: $f9
	ld   de, $ff8f                                   ; $7492: $11 $8f $ff
	rst  $38                                         ; $7495: $ff
	ld   hl, $1111                                   ; $7496: $21 $11 $11
	ld   de, $ff4f                                   ; $7499: $11 $4f $ff
	rst  $38                                         ; $749c: $ff
	rst  $38                                         ; $749d: $ff
	or   c                                           ; $749e: $b1
	ld   de, $ffff                                   ; $749f: $11 $ff $ff
	rst  $30                                         ; $74a2: $f7
	ld   de, $1111                                   ; $74a3: $11 $11 $11
	ld   de, $ffff                                   ; $74a6: $11 $ff $ff
	rst  $38                                         ; $74a9: $ff
	cp   $31                                         ; $74aa: $fe $31
	rra                                              ; $74ac: $1f
	rst  $38                                         ; $74ad: $ff
	rst  $38                                         ; $74ae: $ff
	pop  bc                                          ; $74af: $c1
	ld   de, $1111                                   ; $74b0: $11 $11 $11
	rra                                              ; $74b3: $1f
	rst  $38                                         ; $74b4: $ff
	rst  $38                                         ; $74b5: $ff
	rst  $38                                         ; $74b6: $ff
	di                                               ; $74b7: $f3
	ld   de, $ffcf                                   ; $74b8: $11 $cf $ff
	rst  $38                                         ; $74bb: $ff

jr_0c3_74bc:
	ld   de, $1111                                   ; $74bc: $11 $11 $11
	ld   de, $ffff                                   ; $74bf: $11 $ff $ff
	rst  $38                                         ; $74c2: $ff
	rst  $38                                         ; $74c3: $ff
	ld   h, c                                        ; $74c4: $61
	dec  de                                          ; $74c5: $1b
	rst  $38                                         ; $74c6: $ff
	rst  $38                                         ; $74c7: $ff
	ldh  a, [c]                                      ; $74c8: $f2
	ld   de, $1111                                   ; $74c9: $11 $11 $11
	rra                                              ; $74cc: $1f
	rst  $38                                         ; $74cd: $ff
	rst  $38                                         ; $74ce: $ff
	rst  $38                                         ; $74cf: $ff
	or   $11                                         ; $74d0: $f6 $11
	cp   a                                           ; $74d2: $bf
	rst  $38                                         ; $74d3: $ff
	db   $fd                                         ; $74d4: $fd
	ld   de, $1111                                   ; $74d5: $11 $11 $11
	ld   de, $ffcf                                   ; $74d8: $11 $cf $ff
	rst  $28                                         ; $74db: $ef
	rst  $38                                         ; $74dc: $ff
	and  c                                           ; $74dd: $a1
	ld   a, [de]                                     ; $74de: $1a
	rst  $38                                         ; $74df: $ff
	rst  $38                                         ; $74e0: $ff
	db   $d3                                         ; $74e1: $d3
	ld   de, $1111                                   ; $74e2: $11 $11 $11
	ld   e, $ff                                      ; $74e5: $1e $ff
	cp   $ff                                         ; $74e7: $fe $ff
	ld   sp, hl                                      ; $74e9: $f9
	ld   de, $ffef                                   ; $74ea: $11 $ef $ff
	cp   $41                                         ; $74ed: $fe $41
	ld   de, $1111                                   ; $74ef: $11 $11 $11
	xor  a                                           ; $74f2: $af
	rst  $38                                         ; $74f3: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $74f4: $cf
	rst  $38                                         ; $74f5: $ff
	db   $e4                                         ; $74f6: $e4
	dec  hl                                          ; $74f7: $2b
	rst  $38                                         ; $74f8: $ff
	cp   $b3                                         ; $74f9: $fe $b3
	ld   de, $1111                                   ; $74fb: $11 $11 $11
	jr   z, jr_0c3_74bc                              ; $74fe: $28 $bc

	cp   d                                           ; $7500: $ba
	rst  $28                                         ; $7501: $ef
	rst  $38                                         ; $7502: $ff
	and  l                                           ; $7503: $a5
	rst  JumpTable                                         ; $7504: $df
	rst  $38                                         ; $7505: $ff
	ld   [$1191], a                                  ; $7506: $ea $91 $11
	ld   de, $3511                                   ; $7509: $11 $11 $35
	add  [hl]                                        ; $750c: $86
	ld   a, l                                        ; $750d: $7d
	rst  $38                                         ; $750e: $ff
	rst  $38                                         ; $750f: $ff
	xor  c                                           ; $7510: $a9
	xor  l                                           ; $7511: $ad
	rst  $38                                         ; $7512: $ff
	db   $fd                                         ; $7513: $fd
	ld   d, c                                        ; $7514: $51
	ld   de, $1111                                   ; $7515: $11 $11 $11
	ld   l, b                                        ; $7518: $68
	xor  l                                           ; $7519: $ad
	cp   a                                           ; $751a: $bf
	rst  $38                                         ; $751b: $ff
	rst  $38                                         ; $751c: $ff
	halt                                             ; $751d: $76
	rst  $28                                         ; $751e: $ef
	rst  $38                                         ; $751f: $ff
	ei                                               ; $7520: $fb
	ld   hl, $1111                                   ; $7521: $21 $11 $11
	dec  d                                           ; $7524: $15
	sbc  e                                           ; $7525: $9b
	rst  $38                                         ; $7526: $ff
	rst  $38                                         ; $7527: $ff
	rst  $38                                         ; $7528: $ff
	push af                                          ; $7529: $f5
	ld   a, c                                        ; $752a: $79
	rst  $28                                         ; $752b: $ef
	db   $fd                                         ; $752c: $fd
	and  c                                           ; $752d: $a1
	ld   de, $1111                                   ; $752e: $11 $11 $11
	ld   l, a                                        ; $7531: $6f
	rst  $38                                         ; $7532: $ff
	rst  $38                                         ; $7533: $ff
	rst  $38                                         ; $7534: $ff
	db   $f4                                         ; $7535: $f4
	jr   @-$1f                                       ; $7536: $18 $df

	rst  $38                                         ; $7538: $ff
	pop  af                                          ; $7539: $f1
	ld   de, $1111                                   ; $753a: $11 $11 $11
	ld   l, a                                        ; $753d: $6f
	rst  $38                                         ; $753e: $ff
	rst  $38                                         ; $753f: $ff
	rst  $38                                         ; $7540: $ff
	pop  af                                          ; $7541: $f1
	add  hl, de                                      ; $7542: $19
	rst  $28                                         ; $7543: $ef
	rst  $38                                         ; $7544: $ff
	pop  af                                          ; $7545: $f1
	ld   de, $1111                                   ; $7546: $11 $11 $11
	rst  JumpTable                                         ; $7549: $df
	rst  $38                                         ; $754a: $ff
	rst  $38                                         ; $754b: $ff
	rst  $38                                         ; $754c: $ff
	ld   de, $ff3a                                   ; $754d: $11 $3a $ff
	rst  $38                                         ; $7550: $ff
	ld   sp, $1111                                   ; $7551: $31 $11 $11
	dec  l                                           ; $7554: $2d
	rst  $38                                         ; $7555: $ff
	rst  $38                                         ; $7556: $ff
	rst  $38                                         ; $7557: $ff
	sub  c                                           ; $7558: $91
	ld   de, $ffdf                                   ; $7559: $11 $df $ff
	add  c                                           ; $755c: $81
	ld   de, $1911                                   ; $755d: $11 $11 $19
	rst  $38                                         ; $7560: $ff
	rst  $38                                         ; $7561: $ff
	rst  $38                                         ; $7562: $ff
	and  c                                           ; $7563: $a1
	ld   de, $ff6f                                   ; $7564: $11 $6f $ff
	ld   b, c                                        ; $7567: $41
	ld   de, $1d11                                   ; $7568: $11 $11 $1d
	rst  $38                                         ; $756b: $ff
	rst  $38                                         ; $756c: $ff
	rst  $38                                         ; $756d: $ff
	ld   sp, $ef13                                   ; $756e: $31 $13 $ef
	db   $fd                                         ; $7571: $fd
	ld   de, $1111                                   ; $7572: $11 $11 $11
	rst  JumpTable                                         ; $7575: $df
	rst  $38                                         ; $7576: $ff
	rst  $38                                         ; $7577: $ff
	push af                                          ; $7578: $f5
	ld   de, $ff1f                                   ; $7579: $11 $1f $ff
	pop  hl                                          ; $757c: $e1
	ld   de, $1711                                   ; $757d: $11 $11 $17
	rst  $38                                         ; $7580: $ff
	rst  $38                                         ; $7581: $ff
	rst  $38                                         ; $7582: $ff
	ld   h, c                                        ; $7583: $61
	ld   de, $ff8f                                   ; $7584: $11 $8f $ff
	ld   hl, $1111                                   ; $7587: $21 $11 $11
	sbc  a                                           ; $758a: $9f
	rst  $38                                         ; $758b: $ff
	rst  $38                                         ; $758c: $ff
	rst  $30                                         ; $758d: $f7
	ld   de, $ff17                                   ; $758e: $11 $17 $ff
	pop  af                                          ; $7591: $f1
	ld   de, $1711                                   ; $7592: $11 $11 $17
	rst  $38                                         ; $7595: $ff
	rst  $38                                         ; $7596: $ff
	rst  $38                                         ; $7597: $ff
	ld   h, c                                        ; $7598: $61
	ld   de, $ff7f                                   ; $7599: $11 $7f $ff
	ld   de, $1111                                   ; $759c: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $759f: $cf
	rst  $38                                         ; $75a0: $ff
	rst  $38                                         ; $75a1: $ff
	call nc, $1f11                                   ; $75a2: $d4 $11 $1f
	rst  $38                                         ; $75a5: $ff
	pop  af                                          ; $75a6: $f1
	ld   de, $1d11                                   ; $75a7: $11 $11 $1d
	rst  $38                                         ; $75aa: $ff
	rst  $38                                         ; $75ab: $ff
	ei                                               ; $75ac: $fb
	ld   de, $ef12                                   ; $75ad: $11 $12 $ef
	rst  $38                                         ; $75b0: $ff
	ld   de, $1111                                   ; $75b1: $11 $11 $11
	rst  $38                                         ; $75b4: $ff
	rst  $38                                         ; $75b5: $ff
	rst  $38                                         ; $75b6: $ff
	sub  c                                           ; $75b7: $91
	ld   de, $ff5f                                   ; $75b8: $11 $5f $ff
	pop  af                                          ; $75bb: $f1
	ld   de, $1f11                                   ; $75bc: $11 $11 $1f
	rst  $38                                         ; $75bf: $ff
	rst  $38                                         ; $75c0: $ff
	or   $11                                         ; $75c1: $f6 $11
	rla                                              ; $75c3: $17
	rst  $38                                         ; $75c4: $ff
	ei                                               ; $75c5: $fb
	ld   de, $1211                                   ; $75c6: $11 $11 $12
	rst  $38                                         ; $75c9: $ff
	rst  $38                                         ; $75ca: $ff
	rst  $38                                         ; $75cb: $ff
	ld   sp, $bf11                                   ; $75cc: $31 $11 $bf
	rst  $38                                         ; $75cf: $ff
	ld   d, c                                        ; $75d0: $51
	ld   de, $bf11                                   ; $75d1: $11 $11 $bf
	rst  $38                                         ; $75d4: $ff
	rst  $38                                         ; $75d5: $ff
	or   c                                           ; $75d6: $b1
	ld   de, $ff4f                                   ; $75d7: $11 $4f $ff
	pop  af                                          ; $75da: $f1
	ld   de, $1f11                                   ; $75db: $11 $11 $1f
	rst  $38                                         ; $75de: $ff
	rst  $38                                         ; $75df: $ff
	or   $11                                         ; $75e0: $f6 $11
	ld   a, [de]                                     ; $75e2: $1a
	rst  $38                                         ; $75e3: $ff
	cp   $11                                         ; $75e4: $fe $11
	ld   de, rAUD1LOW                                   ; $75e6: $11 $13 $ff
	rst  $38                                         ; $75e9: $ff
	rst  $38                                         ; $75ea: $ff
	ld   hl, rAUD1HIGH                                   ; $75eb: $21 $14 $ff
	rst  $38                                         ; $75ee: $ff
	and  c                                           ; $75ef: $a1
	ld   de, $8f11                                   ; $75f0: $11 $11 $8f
	rst  $38                                         ; $75f3: $ff
	rst  $38                                         ; $75f4: $ff
	ld   [hl], c                                     ; $75f5: $71
	ld   de, $ff8f                                   ; $75f6: $11 $8f $ff
	pop  af                                          ; $75f9: $f1
	ld   de, $1f11                                   ; $75fa: $11 $11 $1f
	rst  $38                                         ; $75fd: $ff
	rst  $38                                         ; $75fe: $ff
	db   $e3                                         ; $75ff: $e3
	ld   de, $ff2d                                   ; $7600: $11 $2d $ff
	ei                                               ; $7603: $fb
	ld   de, $1811                                   ; $7604: $11 $11 $18
	rst  $38                                         ; $7607: $ff
	rst  $38                                         ; $7608: $ff
	push af                                          ; $7609: $f5
	ld   de, rAUD1HIGH                                   ; $760a: $11 $14 $ff
	rst  $38                                         ; $760d: $ff
	ld   b, c                                        ; $760e: $41
	ld   de, $ef11                                   ; $760f: $11 $11 $ef
	rst  $38                                         ; $7612: $ff
	rst  $38                                         ; $7613: $ff
	ld   de, $df11                                   ; $7614: $11 $11 $df
	rst  $38                                         ; $7617: $ff
	pop  af                                          ; $7618: $f1
	ld   de, $4f11                                   ; $7619: $11 $11 $4f
	rst  $38                                         ; $761c: $ff
	rst  $38                                         ; $761d: $ff
	ld   [hl], c                                     ; $761e: $71
	ld   de, $ff2f                                   ; $761f: $11 $2f $ff
	push af                                          ; $7622: $f5
	ld   de, $1e11                                   ; $7623: $11 $11 $1e
	rst  $38                                         ; $7626: $ff
	rst  $38                                         ; $7627: $ff
	pop  af                                          ; $7628: $f1
	ld   de, $ff19                                   ; $7629: $11 $19 $ff
	rst  $38                                         ; $762c: $ff
	ld   de, $1111                                   ; $762d: $11 $11 $11
	rst  $38                                         ; $7630: $ff
	rst  $38                                         ; $7631: $ff
	ld   sp, hl                                      ; $7632: $f9
	ld   de, rAUD1LEN                                   ; $7633: $11 $11 $ff
	rst  $38                                         ; $7636: $ff
	pop  de                                          ; $7637: $d1
	ld   de, $af11                                   ; $7638: $11 $11 $af
	rst  $38                                         ; $763b: $ff
	rst  $38                                         ; $763c: $ff
	ld   de, $3f11                                   ; $763d: $11 $11 $3f
	rst  $38                                         ; $7640: $ff
	push af                                          ; $7641: $f5
	ld   de, $1f11                                   ; $7642: $11 $11 $1f
	rst  $38                                         ; $7645: $ff
	rst  $38                                         ; $7646: $ff
	pop  af                                          ; $7647: $f1
	ld   de, $ff1b                                   ; $7648: $11 $1b $ff
	rst  $38                                         ; $764b: $ff
	ld   de, $1111                                   ; $764c: $11 $11 $11
	rst  $38                                         ; $764f: $ff
	rst  $38                                         ; $7650: $ff
	push af                                          ; $7651: $f5
	ld   de, rAUD1LEN                                   ; $7652: $11 $11 $ff
	rst  $38                                         ; $7655: $ff
	pop  af                                          ; $7656: $f1
	ld   de, $1f11                                   ; $7657: $11 $11 $1f
	rst  $38                                         ; $765a: $ff
	rst  $38                                         ; $765b: $ff
	ld   de, $1f11                                   ; $765c: $11 $11 $1f
	rst  $38                                         ; $765f: $ff
	rst  $38                                         ; $7660: $ff
	ld   de, $1111                                   ; $7661: $11 $11 $11
	rst  $38                                         ; $7664: $ff
	rst  $38                                         ; $7665: $ff
	pop  af                                          ; $7666: $f1
	ld   de, rAUD1LEN                                   ; $7667: $11 $11 $ff
	rst  $38                                         ; $766a: $ff
	pop  af                                          ; $766b: $f1
	ld   de, $1f11                                   ; $766c: $11 $11 $1f
	rst  $38                                         ; $766f: $ff
	rst  $38                                         ; $7670: $ff
	ld   de, $1f11                                   ; $7671: $11 $11 $1f
	rst  $38                                         ; $7674: $ff
	rst  $38                                         ; $7675: $ff
	ld   de, $1111                                   ; $7676: $11 $11 $11
	rst  $38                                         ; $7679: $ff
	rst  $38                                         ; $767a: $ff
	di                                               ; $767b: $f3
	ld   de, $bf11                                   ; $767c: $11 $11 $bf
	rst  $38                                         ; $767f: $ff
	push af                                          ; $7680: $f5
	ld   de, $1511                                   ; $7681: $11 $11 $15
	rst  $38                                         ; $7684: $ff
	rst  $38                                         ; $7685: $ff
	pop  bc                                          ; $7686: $c1
	ld   de, $ff16                                   ; $7687: $11 $16 $ff
	rst  $38                                         ; $768a: $ff
	pop  af                                          ; $768b: $f1
	ld   de, $1f11                                   ; $768c: $11 $11 $1f
	rst  $38                                         ; $768f: $ff
	rst  $38                                         ; $7690: $ff
	ld   de, $1f11                                   ; $7691: $11 $11 $1f
	rst  $38                                         ; $7694: $ff
	rst  $38                                         ; $7695: $ff
	ld   de, $1111                                   ; $7696: $11 $11 $11
	xor  a                                           ; $7699: $af
	rst  $38                                         ; $769a: $ff
	ld   hl, sp+$11                                  ; $769b: $f8 $11
	ld   de, $ffff                                   ; $769d: $11 $ff $ff
	rst  $38                                         ; $76a0: $ff
	ld   de, $1111                                   ; $76a1: $11 $11 $11
	rst  $38                                         ; $76a4: $ff
	rst  $38                                         ; $76a5: $ff
	pop  af                                          ; $76a6: $f1
	ld   de, rAUD1HIGH                                   ; $76a7: $11 $14 $ff
	rst  $38                                         ; $76aa: $ff
	pop  af                                          ; $76ab: $f1
	ld   de, $1911                                   ; $76ac: $11 $11 $19
	rst  $38                                         ; $76af: $ff
	rst  $38                                         ; $76b0: $ff
	sub  c                                           ; $76b1: $91
	ld   de, $ff1f                                   ; $76b2: $11 $1f $ff
	rst  $38                                         ; $76b5: $ff
	pop  af                                          ; $76b6: $f1
	ld   de, $1f11                                   ; $76b7: $11 $11 $1f

Call_0c3_76ba:
	rst  $38                                         ; $76ba: $ff
	db   $fd                                         ; $76bb: $fd
	ld   b, c                                        ; $76bc: $41
	ld   de, $ff1f                                   ; $76bd: $11 $1f $ff
	rst  $38                                         ; $76c0: $ff
	ld   [hl], c                                     ; $76c1: $71
	ld   de, $1f11                                   ; $76c2: $11 $11 $1f
	rst  $38                                         ; $76c5: $ff
	ld   sp, hl                                      ; $76c6: $f9
	ld   hl, $4f11                                   ; $76c7: $21 $11 $4f
	rst  $38                                         ; $76ca: $ff
	rst  $38                                         ; $76cb: $ff
	ld   de, $1111                                   ; $76cc: $11 $11 $11
	rra                                              ; $76cf: $1f
	rst  $38                                         ; $76d0: $ff
	xor  c                                           ; $76d1: $a9
	ld   sp, $9f11                                   ; $76d2: $31 $11 $9f
	rst  $38                                         ; $76d5: $ff
	rst  $38                                         ; $76d6: $ff
	ld   de, $1111                                   ; $76d7: $11 $11 $11
	rra                                              ; $76da: $1f
	rst  $38                                         ; $76db: $ff
	sbc  h                                           ; $76dc: $9c
	ld   h, c                                        ; $76dd: $61
	ld   de, $ff8f                                   ; $76de: $11 $8f $ff
	rst  $38                                         ; $76e1: $ff
	ld   sp, $1111                                   ; $76e2: $31 $11 $11
	dec  de                                          ; $76e5: $1b
	rst  $38                                         ; $76e6: $ff
	sbc  a                                           ; $76e7: $9f
	and  c                                           ; $76e8: $a1
	ld   de, $ff3f                                   ; $76e9: $11 $3f $ff
	rst  $38                                         ; $76ec: $ff
	ld   [hl], c                                     ; $76ed: $71
	ld   de, $1111                                   ; $76ee: $11 $11 $11
	rst  $38                                         ; $76f1: $ff
	sbc  h                                           ; $76f2: $9c
	pop  af                                          ; $76f3: $f1
	ld   de, $ff1f                                   ; $76f4: $11 $1f $ff
	rst  $38                                         ; $76f7: $ff
	pop  bc                                          ; $76f8: $c1
	ld   de, $1111                                   ; $76f9: $11 $11 $11
	rst  $38                                         ; $76fc: $ff
	db   $f4                                         ; $76fd: $f4
	push af                                          ; $76fe: $f5
	ld   de, $ff1f                                   ; $76ff: $11 $1f $ff
	rst  $38                                         ; $7702: $ff
	pop  af                                          ; $7703: $f1
	ld   de, $1121                                   ; $7704: $11 $21 $11
	rra                                              ; $7707: $1f
	ldh  a, [c]                                      ; $7708: $f2
	rst  $38                                         ; $7709: $ff
	ld   de, rAUD1LEN                                   ; $770a: $11 $11 $ff
	rst  $38                                         ; $770d: $ff
	ld   hl, sp+$11                                  ; $770e: $f8 $11
	ld   [de], a                                     ; $7710: $12
	ld   de, rAUD1LEN                                   ; $7711: $11 $11 $ff
	rra                                              ; $7714: $1f
	and  c                                           ; $7715: $a1
	ld   de, $ff5f                                   ; $7716: $11 $5f $ff
	rst  $38                                         ; $7719: $ff
	ld   de, $1111                                   ; $771a: $11 $11 $11
	ld   b, c                                        ; $771d: $41
	rra                                              ; $771e: $1f
	pop  af                                          ; $771f: $f1
	di                                               ; $7720: $f3
	ld   de, $ff17                                   ; $7721: $11 $17 $ff
	rst  $38                                         ; $7724: $ff
	di                                               ; $7725: $f3
	ld   de, $5711                                   ; $7726: $11 $11 $57
	ld   de, $1fff                                   ; $7729: $11 $ff $1f
	pop  de                                          ; $772c: $d1
	ld   de, $fe1f                                   ; $772d: $11 $1f $fe
	rst  $38                                         ; $7730: $ff
	pop  af                                          ; $7731: $f1
	inc  d                                           ; $7732: $14
	ld   hl, $1f63                                   ; $7733: $21 $63 $1f
	db   $f4                                         ; $7736: $f4
	adc  a                                           ; $7737: $8f
	ld   [de], a                                     ; $7738: $12
	ld   de, $ffff                                   ; $7739: $11 $ff $ff
	rst  $38                                         ; $773c: $ff
	ld   bc, $3117                                   ; $773d: $01 $17 $31
	ld   de, $d4af                                   ; $7740: $11 $af $d4
	pop  af                                          ; $7743: $f1
	ld   de, $ff1f                                   ; $7744: $11 $1f $ff
	rst  $38                                         ; $7747: $ff
	db   $fc                                         ; $7748: $fc
	ld   de, $4f11                                   ; $7749: $11 $11 $4f
	ld   d, c                                        ; $774c: $51
	ld   c, a                                        ; $774d: $4f
	pop  hl                                          ; $774e: $e1
	pop  af                                          ; $774f: $f1
	ld   de, $ff1f                                   ; $7750: $11 $1f $ff
	rst  $38                                         ; $7753: $ff
	db   $fd                                         ; $7754: $fd
	ld   de, $7a84                                   ; $7755: $11 $84 $7a
	ld   de, $16ff                                   ; $7758: $11 $ff $16
	pop  af                                          ; $775b: $f1
	ld   b, c                                        ; $775c: $41
	rra                                              ; $775d: $1f
	db   $fd                                         ; $775e: $fd
	rst  $38                                         ; $775f: $ff
	ld   hl, sp+$11                                  ; $7760: $f8 $11
	ld   d, d                                        ; $7762: $52
	xor  l                                           ; $7763: $ad
	ld   de, $11ef                                   ; $7764: $11 $ef $11
	ldh  a, [c]                                      ; $7767: $f2
	ld   d, c                                        ; $7768: $51
	rra                                              ; $7769: $1f
	db   $fd                                         ; $776a: $fd
	rst  $38                                         ; $776b: $ff
	ld   hl, sp+$11                                  ; $776c: $f8 $11
	ld   d, d                                        ; $776e: $52
	sbc  a                                           ; $776f: $9f
	ld   sp, $f11f                                   ; $7770: $31 $1f $f1
	db   $fd                                         ; $7773: $fd
	ld   d, c                                        ; $7774: $51
	dec  de                                          ; $7775: $1b
	db   $fd                                         ; $7776: $fd
	rst  $28                                         ; $7777: $ef
	db   $fd                                         ; $7778: $fd
	ld   de, $2d14                                   ; $7779: $11 $14 $2d
	pop  af                                          ; $777c: $f1
	add  hl, de                                      ; $777d: $19
	db   $f4                                         ; $777e: $f4
	rra                                              ; $777f: $1f
	ld   h, [hl]                                     ; $7780: $66
	ld   de, $cdff                                   ; $7781: $11 $ff $cd
	rst  $38                                         ; $7784: $ff
	ld   de, $1596                                   ; $7785: $11 $96 $15
	rst  $38                                         ; $7788: $ff
	ld   de, $911f                                   ; $7789: $11 $1f $91
	ei                                               ; $778c: $fb
	ld   [hl], c                                     ; $778d: $71
	rra                                              ; $778e: $1f
	ld   hl, sp-$31                                  ; $778f: $f8 $cf
	ldh  a, [c]                                      ; $7791: $f2
	add  hl, de                                      ; $7792: $19
	and  c                                           ; $7793: $a1
	cpl                                              ; $7794: $2f
	pop  af                                          ; $7795: $f1
	ld   de, $1fff                                   ; $7796: $11 $ff $1f
	db   $f4                                         ; $7799: $f4
	ld   de, $9a8f                                   ; $779a: $11 $8f $9a
	rst  $38                                         ; $779d: $ff
	or   c                                           ; $779e: $b1
	rra                                              ; $779f: $1f
	ld   d, c                                        ; $77a0: $51
	rst  $38                                         ; $77a1: $ff
	pop  bc                                          ; $77a2: $c1
	ld   de, $1fff                                   ; $77a3: $11 $ff $1f
	di                                               ; $77a6: $f3
	ld   de, $6dbf                                   ; $77a7: $11 $bf $6d
	rst  $38                                         ; $77aa: $ff
	ld   [hl], c                                     ; $77ab: $71
	rra                                              ; $77ac: $1f
	or   c                                           ; $77ad: $b1
	rst  JumpTable                                         ; $77ae: $df
	pop  bc                                          ; $77af: $c1
	ld   de, $1fff                                   ; $77b0: $11 $ff $1f
	push af                                          ; $77b3: $f5
	ld   de, $7b1f                                   ; $77b4: $11 $1f $7b
	rst  $38                                         ; $77b7: $ff
	pop  af                                          ; $77b8: $f1
	inc  de                                          ; $77b9: $13
	jp   hl                                          ; $77ba: $e9


	ld   e, a                                        ; $77bb: $5f
	db   $f4                                         ; $77bc: $f4
	ld   de, $f11f                                   ; $77bd: $11 $1f $f1
	rst  $38                                         ; $77c0: $ff
	ld   de, $d811                                   ; $77c1: $11 $11 $d8
	rst  $28                                         ; $77c4: $ef
	cp   $11                                         ; $77c5: $fe $11
	rla                                              ; $77c7: $17
	cp   $ff                                         ; $77c8: $fe $ff
	sub  c                                           ; $77ca: $91
	ld   de, $f91f                                   ; $77cb: $11 $1f $f9
	cp   $11                                         ; $77ce: $fe $11
	inc  d                                           ; $77d0: $14
	xor  l                                           ; $77d1: $ad
	rst  $38                                         ; $77d2: $ff
	rst  $30                                         ; $77d3: $f7
	ld   de, rAUD1ENV                                   ; $77d4: $11 $12 $ff
	rst  $38                                         ; $77d7: $ff
	sub  c                                           ; $77d8: $91
	ld   de, $fb1f                                   ; $77d9: $11 $1f $fb
	rst  $38                                         ; $77dc: $ff
	ld   de, $cd11                                   ; $77dd: $11 $11 $cd
	rst  $38                                         ; $77e0: $ff
	db   $fd                                         ; $77e1: $fd
	ld   de, $af11                                   ; $77e2: $11 $11 $af
	rst  $38                                         ; $77e5: $ff
	push bc                                          ; $77e6: $c5
	ld   de, rAUD1LEN                                   ; $77e7: $11 $11 $ff
	rst  JumpTable                                         ; $77ea: $df
	pop  af                                          ; $77eb: $f1
	ld   de, $ff1d                                   ; $77ec: $11 $1d $ff
	rst  $38                                         ; $77ef: $ff
	pop  de                                          ; $77f0: $d1
	ld   de, rAUD1HIGH                                   ; $77f1: $11 $14 $ff
	db   $fd                                         ; $77f4: $fd
	ld   d, c                                        ; $77f5: $51
	ld   de, rAUD1LEN                                   ; $77f6: $11 $11 $ff
	rst  $38                                         ; $77f9: $ff
	pop  af                                          ; $77fa: $f1
	ld   de, $ff1f                                   ; $77fb: $11 $1f $ff
	rst  $38                                         ; $77fe: $ff
	ld   [hl], c                                     ; $77ff: $71
	ld   de, $ff18                                   ; $7800: $11 $18 $ff
	db   $fd                                         ; $7803: $fd
	ld   d, c                                        ; $7804: $51
	ld   de, $cf11                                   ; $7805: $11 $11 $cf
	rst  $38                                         ; $7808: $ff
	inc  de                                          ; $7809: $13
	ld   de, rAUD1LEN                                   ; $780a: $11 $11 $ff
	rst  $38                                         ; $780d: $ff
	push bc                                          ; $780e: $c5
	ld   de, $ff16                                   ; $780f: $11 $16 $ff
	rst  $38                                         ; $7812: $ff
	or   $11                                         ; $7813: $f6 $11
	ld   de, $ff6c                                   ; $7815: $11 $6c $ff
	or   l                                           ; $7818: $b5
	ld   c, b                                        ; $7819: $48
	ld   de, $fcaa                                   ; $781a: $11 $aa $fc
	cp   [hl]                                        ; $781d: $be
	ld   h, d                                        ; $781e: $62
	inc  d                                           ; $781f: $14
	ld   [hl], a                                     ; $7820: $77
	cp   a                                           ; $7821: $bf
	db   $db                                         ; $7822: $db
	sub  [hl]                                        ; $7823: $96
	ld   h, a                                        ; $7824: $67
	ld   a, b                                        ; $7825: $78
	cp   b                                           ; $7826: $b8
	ld   h, [hl]                                     ; $7827: $66
	adc  b                                           ; $7828: $88
	ld   h, a                                        ; $7829: $67
	ld   d, d                                        ; $782a: $52
	ld   e, $f4                                      ; $782b: $1e $f4
	call c, $1478                                    ; $782d: $dc $78 $14
	xor  e                                           ; $7830: $ab
	xor  h                                           ; $7831: $ac
	db   $fd                                         ; $7832: $fd
	ld   h, h                                        ; $7833: $64
	ld   d, d                                        ; $7834: $52
	ld   b, e                                        ; $7835: $43
	ld   e, l                                        ; $7836: $5d
	xor  b                                           ; $7837: $a8
	xor  c                                           ; $7838: $a9
	or   h                                           ; $7839: $b4
	add  hl, de                                      ; $783a: $19
	adc  d                                           ; $783b: $8a
	sbc  e                                           ; $783c: $9b
	jp   hl                                          ; $783d: $e9


	ld   d, l                                        ; $783e: $55
	ld   h, l                                        ; $783f: $65
	ld   d, a                                        ; $7840: $57
	cp   l                                           ; $7841: $bd
	xor  d                                           ; $7842: $aa
	sub  a                                           ; $7843: $97
	ld   d, h                                        ; $7844: $54
	ld   l, c                                        ; $7845: $69
	xor  d                                           ; $7846: $aa
	xor  c                                           ; $7847: $a9
	add  [hl]                                        ; $7848: $86
	ld   d, a                                        ; $7849: $57
	ld   a, c                                        ; $784a: $79
	xor  d                                           ; $784b: $aa
	cp   b                                           ; $784c: $b8
	adc  b                                           ; $784d: $88
	ld   h, [hl]                                     ; $784e: $66
	ld   h, [hl]                                     ; $784f: $66
	sbc  c                                           ; $7850: $99
	ld   a, b                                        ; $7851: $78
	ld   h, c                                        ; $7852: $61
	rra                                              ; $7853: $1f
	push af                                          ; $7854: $f5
	jp   z, $1687                                    ; $7855: $ca $87 $16

	cp   e                                           ; $7858: $bb
	adc  $e7                                         ; $7859: $ce $e7
	ld   hl, $7915                                   ; $785b: $21 $15 $79
	db   $dd                                         ; $785e: $dd
	cp   d                                           ; $785f: $ba
	add  h                                           ; $7860: $84
	ld   d, l                                        ; $7861: $55
	ld   a, l                                        ; $7862: $7d
	db   $ec                                         ; $7863: $ec
	xor  c                                           ; $7864: $a9
	ld   h, e                                        ; $7865: $63
	ld   b, e                                        ; $7866: $43
	dec  d                                           ; $7867: $15
	adc  $fd                                         ; $7868: $ce $fd
	halt                                             ; $786a: $76
	ld   hl, $fe7f                                   ; $786b: $21 $7f $fe
	ld   [hl], a                                     ; $786e: $77
	ld   de, $bd13                                   ; $786f: $11 $13 $bd
	rst  $38                                         ; $7872: $ff
	push de                                          ; $7873: $d5

Call_0c3_7874:
	ld   de, $8f24                                   ; $7874: $11 $24 $8f

Jump_0c3_7877:
	rst  $38                                         ; $7877: $ff
	sub  l                                           ; $7878: $95
	ld   de, $cf15                                   ; $7879: $11 $15 $cf
	cp   $b6                                         ; $787c: $fe $b6
	ld   hl, $ad27                                   ; $787e: $21 $27 $ad
	db   $ed                                         ; $7881: $ed
	and  [hl]                                        ; $7882: $a6
	ld   [hl-], a                                    ; $7883: $32
	ld   b, [hl]                                     ; $7884: $46
	xor  l                                           ; $7885: $ad
	db   $db                                         ; $7886: $db
	sub  [hl]                                        ; $7887: $96
	ld   b, h                                        ; $7888: $44
	ld   b, [hl]                                     ; $7889: $46
	sbc  e                                           ; $788a: $9b
	res  2, a                                        ; $788b: $cb $97
	ld   d, h                                        ; $788d: $54
	ld   d, a                                        ; $788e: $57
	sbc  d                                           ; $788f: $9a
	xor  d                                           ; $7890: $aa
	sub  a                                           ; $7891: $97
	ld   d, [hl]                                     ; $7892: $56
	ld   h, a                                        ; $7893: $67
	adc  c                                           ; $7894: $89
	cp   d                                           ; $7895: $ba
	sub  a                                           ; $7896: $97
	ld   h, [hl]                                     ; $7897: $66
	ld   h, a                                        ; $7898: $67
	adc  c                                           ; $7899: $89
	xor  c                                           ; $789a: $a9
	adc  b                                           ; $789b: $88
	halt                                             ; $789c: $76
	ld   a, b                                        ; $789d: $78
	sbc  d                                           ; $789e: $9a
	sbc  c                                           ; $789f: $99
	sbc  b                                           ; $78a0: $98
	halt                                             ; $78a1: $76
	ld   a, b                                        ; $78a2: $78
	adc  c                                           ; $78a3: $89
	sbc  b                                           ; $78a4: $98
	sbc  b                                           ; $78a5: $98
	ld   a, b                                        ; $78a6: $78
	ld   [hl], a                                     ; $78a7: $77
	adc  b                                           ; $78a8: $88
	adc  c                                           ; $78a9: $89

Jump_0c3_78aa:
	adc  c                                           ; $78aa: $89
	add  a                                           ; $78ab: $87
	adc  b                                           ; $78ac: $88
	adc  b                                           ; $78ad: $88
	sbc  c                                           ; $78ae: $99
	sbc  b                                           ; $78af: $98
	ld   [hl], a                                     ; $78b0: $77
	add  a                                           ; $78b1: $87
	adc  b                                           ; $78b2: $88
	adc  b                                           ; $78b3: $88
	adc  b                                           ; $78b4: $88
	add  a                                           ; $78b5: $87
	adc  b                                           ; $78b6: $88

Jump_0c3_78b7:
	adc  b                                           ; $78b7: $88
	adc  b                                           ; $78b8: $88

Call_0c3_78b9:
	adc  b                                           ; $78b9: $88
	adc  b                                           ; $78ba: $88
	adc  b                                           ; $78bb: $88
	adc  b                                           ; $78bc: $88
	adc  b                                           ; $78bd: $88
	adc  b                                           ; $78be: $88
	add  a                                           ; $78bf: $87
	adc  c                                           ; $78c0: $89
	adc  b                                           ; $78c1: $88
	adc  c                                           ; $78c2: $89
	sbc  b                                           ; $78c3: $98
	adc  b                                           ; $78c4: $88
	adc  b                                           ; $78c5: $88
	adc  b                                           ; $78c6: $88
	adc  b                                           ; $78c7: $88
	add  a                                           ; $78c8: $87
	adc  b                                           ; $78c9: $88
	adc  b                                           ; $78ca: $88
	adc  b                                           ; $78cb: $88
	sbc  b                                           ; $78cc: $98
	adc  b                                           ; $78cd: $88
	adc  b                                           ; $78ce: $88
	adc  b                                           ; $78cf: $88
	adc  b                                           ; $78d0: $88
	adc  b                                           ; $78d1: $88
	adc  c                                           ; $78d2: $89
	sbc  b                                           ; $78d3: $98
	adc  b                                           ; $78d4: $88
	adc  b                                           ; $78d5: $88
	adc  b                                           ; $78d6: $88
	adc  c                                           ; $78d7: $89
	sbc  c                                           ; $78d8: $99
	adc  b                                           ; $78d9: $88
	adc  b                                           ; $78da: $88
	adc  b                                           ; $78db: $88
	adc  c                                           ; $78dc: $89
	adc  b                                           ; $78dd: $88
	adc  b                                           ; $78de: $88
	add  a                                           ; $78df: $87
	adc  b                                           ; $78e0: $88
	adc  b                                           ; $78e1: $88
	sbc  c                                           ; $78e2: $99
	adc  b                                           ; $78e3: $88
	ld   [hl], a                                     ; $78e4: $77
	adc  b                                           ; $78e5: $88
	adc  c                                           ; $78e6: $89
	sbc  b                                           ; $78e7: $98
	adc  b                                           ; $78e8: $88
	adc  b                                           ; $78e9: $88
	adc  b                                           ; $78ea: $88
	sbc  c                                           ; $78eb: $99
	adc  b                                           ; $78ec: $88
	adc  b                                           ; $78ed: $88
	adc  b                                           ; $78ee: $88
	adc  c                                           ; $78ef: $89
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
	ld   de, $1111                                   ; $7900: $11 $11 $11
	ld   de, $1111                                   ; $7903: $11 $11 $11
	ld   de, $1111                                   ; $7906: $11 $11 $11
	ld   de, $1111                                   ; $7909: $11 $11 $11
	ld   de, $1111                                   ; $790c: $11 $11 $11
	ld   de, $1111                                   ; $790f: $11 $11 $11
	ld   de, $1111                                   ; $7912: $11 $11 $11
	ld   de, $1111                                   ; $7915: $11 $11 $11
	ld   de, $1111                                   ; $7918: $11 $11 $11
	ld   de, $1111                                   ; $791b: $11 $11 $11
	ld   de, $1111                                   ; $791e: $11 $11 $11
	ld   de, $1111                                   ; $7921: $11 $11 $11
	ld   de, $0011                                   ; $7924: $11 $11 $00
	ld   c, b                                        ; $7927: $48
	ld   de, $1111                                   ; $7928: $11 $11 $11
	ld   de, $1111                                   ; $792b: $11 $11 $11
	ld   de, $1111                                   ; $792e: $11 $11 $11
	ld   de, $5413                                   ; $7931: $11 $13 $54
	ld   d, h                                        ; $7934: $54
	ld   d, h                                        ; $7935: $54
	ld   b, c                                        ; $7936: $41
	rra                                              ; $7937: $1f
	rst  $38                                         ; $7938: $ff
	pop  af                                          ; $7939: $f1
	ld   de, $1311                                   ; $793a: $11 $11 $13
	pop  de                                          ; $793d: $d1
	ld   de, $de1c                                   ; $793e: $11 $1c $de
	call z, $c1de                                    ; $7941: $cc $de $c1
	ld   de, $1111                                   ; $7944: $11 $11 $11
	ld   de, $1111                                   ; $7947: $11 $11 $11
	ld   de, $1111                                   ; $794a: $11 $11 $11
	ld   de, $1111                                   ; $794d: $11 $11 $11
	ld   de, $5411                                   ; $7950: $11 $11 $54
	ld   b, h                                        ; $7953: $44
	or   e                                           ; $7954: $b3
	ld   de, $5454                                   ; $7955: $11 $54 $54
	ld   h, a                                        ; $7958: $67
	ld   [hl], d                                     ; $7959: $72
	ld   de, $1111                                   ; $795a: $11 $11 $11
	ld   de, $1112                                   ; $795d: $11 $12 $11
	ld   [de], a                                     ; $7960: $12
	ld   de, $1111                                   ; $7961: $11 $11 $11
	ld   h, [hl]                                     ; $7964: $66
	halt                                             ; $7965: $76
	and  e                                           ; $7966: $a3
	ld   de, $8888                                   ; $7967: $11 $88 $88
	adc  b                                           ; $796a: $88
	adc  b                                           ; $796b: $88
	add  a                                           ; $796c: $87
	halt                                             ; $796d: $76
	ld   h, [hl]                                     ; $796e: $66
	ld   [hl], a                                     ; $796f: $77
	adc  c                                           ; $7970: $89
	sbc  c                                           ; $7971: $99
	xor  d                                           ; $7972: $aa
	xor  c                                           ; $7973: $a9
	sbc  c                                           ; $7974: $99
	sbc  b                                           ; $7975: $98
	adc  b                                           ; $7976: $88
	add  a                                           ; $7977: $87
	ld   [hl], a                                     ; $7978: $77
	ld   [hl], a                                     ; $7979: $77
	ld   a, b                                        ; $797a: $78
	sbc  c                                           ; $797b: $99
	sbc  d                                           ; $797c: $9a
	xor  d                                           ; $797d: $aa
	sbc  d                                           ; $797e: $9a
	sbc  c                                           ; $797f: $99
	adc  b                                           ; $7980: $88
	adc  b                                           ; $7981: $88
	adc  c                                           ; $7982: $89
	adc  b                                           ; $7983: $88
	halt                                             ; $7984: $76
	ld   d, h                                        ; $7985: $54
	ld   hl, $5724                                   ; $7986: $21 $24 $57
	adc  e                                           ; $7989: $8b
	res  7, e                                        ; $798a: $cb $bb
	cp   d                                           ; $798c: $ba
	xor  d                                           ; $798d: $aa
	xor  c                                           ; $798e: $a9

jr_0c3_798f:
	adc  b                                           ; $798f: $88
	ld   [hl], l                                     ; $7990: $75
	ld   d, l                                        ; $7991: $55
	ld   d, [hl]                                     ; $7992: $56
	adc  d                                           ; $7993: $8a
	cp   l                                           ; $7994: $bd
	db   $ed                                         ; $7995: $ed
	db   $ed                                         ; $7996: $ed
	jp   z, Jump_0c3_5397                            ; $7997: $ca $97 $53

	ld   de, $1111                                   ; $799a: $11 $11 $11
	ld   [hl], $ac                                   ; $799d: $36 $ac
	rst  JumpTable                                         ; $799f: $df
	cp   $dd                                         ; $79a0: $fe $dd
	jp   z, $87a8                                    ; $79a2: $ca $a8 $87

	ld   h, [hl]                                     ; $79a5: $66
	ld   h, [hl]                                     ; $79a6: $66

Call_0c3_79a7:
	adc  d                                           ; $79a7: $8a
	call $d9ee                                       ; $79a8: $cd $ee $d9
	ld   h, d                                        ; $79ab: $62
	ld   de, $1411                                   ; $79ac: $11 $11 $14
	ld   a, d                                        ; $79af: $7a
	set  1, e                                        ; $79b0: $cb $cb
	xor  d                                           ; $79b2: $aa
	xor  h                                           ; $79b3: $ac
	cp   l                                           ; $79b4: $bd
	cp   e                                           ; $79b5: $bb
	and  a                                           ; $79b6: $a7
	halt                                             ; $79b7: $76
	ld   a, b                                        ; $79b8: $78
	xor  [hl]                                        ; $79b9: $ae
	rst  $38                                         ; $79ba: $ff
	ret  c                                           ; $79bb: $d8

	ld   sp, $1111                                   ; $79bc: $31 $11 $11
	jr   z, jr_0c3_798f                              ; $79bf: $28 $ce

	db   $ec                                         ; $79c1: $ec
	res  3, d                                        ; $79c2: $cb $9a
	cp   l                                           ; $79c4: $bd
	xor  $dc                                         ; $79c5: $ee $dc
	sub  [hl]                                        ; $79c7: $96
	ld   b, h                                        ; $79c8: $44
	ld   l, c                                        ; $79c9: $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79ca: $cf

Call_0c3_79cb:
	db   $fd                                         ; $79cb: $fd
	sub  c                                           ; $79cc: $91
	ld   de, $1411                                   ; $79cd: $11 $11 $14
	xor  a                                           ; $79d0: $af
	cp   $ed                                         ; $79d1: $fe $ed
	sbc  b                                           ; $79d3: $98
	sbc  e                                           ; $79d4: $9b
	rst  JumpTable                                         ; $79d5: $df
	cp   $d8                                         ; $79d6: $fe $d8
	ld   d, d                                        ; $79d8: $52
	ld   [hl], $9e                                   ; $79d9: $36 $9e
	rst  $38                                         ; $79db: $ff
	push bc                                          ; $79dc: $c5
	ld   de, $1111                                   ; $79dd: $11 $11 $11
	xor  a                                           ; $79e0: $af
	rst  $38                                         ; $79e1: $ff
	db   $fd                                         ; $79e2: $fd
	and  [hl]                                        ; $79e3: $a6
	ld   e, c                                        ; $79e4: $59
	rst  JumpTable                                         ; $79e5: $df
	rst  $38                                         ; $79e6: $ff
	db   $fc                                         ; $79e7: $fc
	ld   h, d                                        ; $79e8: $62
	inc  de                                          ; $79e9: $13
	ld   a, l                                        ; $79ea: $7d
	rst  $38                                         ; $79eb: $ff
	ld   sp, hl                                      ; $79ec: $f9
	ld   de, $1111                                   ; $79ed: $11 $11 $11
	adc  a                                           ; $79f0: $8f
	rst  $38                                         ; $79f1: $ff
	db   $fd                                         ; $79f2: $fd
	and  [hl]                                        ; $79f3: $a6
	ld   l, c                                        ; $79f4: $69
	rst  $38                                         ; $79f5: $ff
	rst  $38                                         ; $79f6: $ff
	db   $fd                                         ; $79f7: $fd
	ld   b, c                                        ; $79f8: $41
	ld   de, $ff5c                                   ; $79f9: $11 $5c $ff
	db   $fd                                         ; $79fc: $fd
	ld   hl, $1111                                   ; $79fd: $21 $11 $11
	cpl                                              ; $7a00: $2f
	rst  $38                                         ; $7a01: $ff
	ei                                               ; $7a02: $fb
	sub  l                                           ; $7a03: $95
	ld   c, b                                        ; $7a04: $48
	rst  JumpTable                                         ; $7a05: $df
	rst  $38                                         ; $7a06: $ff
	db   $fd                                         ; $7a07: $fd
	ld   h, c                                        ; $7a08: $61
	ld   de, $ff5d                                   ; $7a09: $11 $5d $ff
	rst  $38                                         ; $7a0c: $ff
	ld   h, c                                        ; $7a0d: $61
	ld   de, $1911                                   ; $7a0e: $11 $11 $19
	rst  $38                                         ; $7a11: $ff
	db   $fd                                         ; $7a12: $fd
	ld   b, l                                        ; $7a13: $45
	ld   l, d                                        ; $7a14: $6a
	rst  $38                                         ; $7a15: $ff
	rst  $38                                         ; $7a16: $ff
	db   $fd                                         ; $7a17: $fd
	ld   [hl], c                                     ; $7a18: $71
	ld   de, $ff3b                                   ; $7a19: $11 $3b $ff
	rst  $38                                         ; $7a1c: $ff
	sub  c                                           ; $7a1d: $91
	ld   de, $1311                                   ; $7a1e: $11 $11 $13
	ld   a, h                                        ; $7a21: $7c
	call c, $cf95                                    ; $7a22: $dc $95 $cf
	rst  $38                                         ; $7a25: $ff
	rst  $38                                         ; $7a26: $ff
	db   $fd                                         ; $7a27: $fd
	ld   [hl], e                                     ; $7a28: $73
	ld   de, $df49                                   ; $7a29: $11 $49 $df
	rst  $38                                         ; $7a2c: $ff
	ret  c                                           ; $7a2d: $d8

	ld   de, $1111                                   ; $7a2e: $11 $11 $11
	dec  d                                           ; $7a31: $15
	rst  $38                                         ; $7a32: $ff
	rst  $38                                         ; $7a33: $ff
	ld   a, h                                        ; $7a34: $7c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a35: $cf
	rst  $38                                         ; $7a36: $ff
	rst  $38                                         ; $7a37: $ff
	ld   a, [$1241]                                  ; $7a38: $fa $41 $12
	ld   l, e                                        ; $7a3b: $6b
	rst  $28                                         ; $7a3c: $ef
	db   $fd                                         ; $7a3d: $fd
	ld   h, c                                        ; $7a3e: $61
	ld   de, $1311                                   ; $7a3f: $11 $11 $13
	cp   a                                           ; $7a42: $bf
	rst  JumpTable                                         ; $7a43: $df
	ld   l, b                                        ; $7a44: $68
	rst  $38                                         ; $7a45: $ff
	rst  $38                                         ; $7a46: $ff
	rst  $38                                         ; $7a47: $ff
	and  $21                                         ; $7a48: $e6 $21
	dec  d                                           ; $7a4a: $15
	sbc  [hl]                                        ; $7a4b: $9e
	rst  $38                                         ; $7a4c: $ff
	rst  $38                                         ; $7a4d: $ff
	sub  e                                           ; $7a4e: $93
	ld   de, $1111                                   ; $7a4f: $11 $11 $11
	cpl                                              ; $7a52: $2f
	rst  $38                                         ; $7a53: $ff
	ld   hl, sp-$41                                  ; $7a54: $f8 $bf
	rst  $38                                         ; $7a56: $ff
	rst  $38                                         ; $7a57: $ff
	db   $fd                                         ; $7a58: $fd
	ld   h, e                                        ; $7a59: $63
	ld   de, $bc47                                   ; $7a5a: $11 $47 $bc
	rst  $28                                         ; $7a5d: $ef
	ld   a, [$1151]                                  ; $7a5e: $fa $51 $11
	ld   de, $ff16                                   ; $7a61: $11 $16 $ff
	cp   $8f                                         ; $7a64: $fe $8f
	rst  $38                                         ; $7a66: $ff
	rst  $38                                         ; $7a67: $ff
	db   $fc                                         ; $7a68: $fc
	ld   b, c                                        ; $7a69: $41
	inc  de                                          ; $7a6a: $13
	ld   e, b                                        ; $7a6b: $58
	rst  JumpTable                                         ; $7a6c: $df
	rst  $38                                         ; $7a6d: $ff
	db   $fd                                         ; $7a6e: $fd
	ld   h, c                                        ; $7a6f: $61
	ld   de, $1411                                   ; $7a70: $11 $11 $14
	rst  $38                                         ; $7a73: $ff
	rst  $38                                         ; $7a74: $ff
	halt                                             ; $7a75: $76
	rst  $38                                         ; $7a76: $ff
	rst  $38                                         ; $7a77: $ff
	rst  $38                                         ; $7a78: $ff
	ld   b, c                                        ; $7a79: $41
	ld   de, $bf7b                                   ; $7a7a: $11 $7b $bf
	xor  l                                           ; $7a7d: $ad
	rst  JumpTable                                         ; $7a7e: $df
	ld   sp, hl                                      ; $7a7f: $f9
	ld   de, $1111                                   ; $7a80: $11 $11 $11
	ld   a, a                                        ; $7a83: $7f
	rst  $38                                         ; $7a84: $ff
	rst  $30                                         ; $7a85: $f7
	rst  $28                                         ; $7a86: $ef
	rst  $38                                         ; $7a87: $ff
	rst  $38                                         ; $7a88: $ff
	and  c                                           ; $7a89: $a1
	ld   de, $cf1a                                   ; $7a8a: $11 $1a $cf
	rst  $38                                         ; $7a8d: $ff
	rst  $38                                         ; $7a8e: $ff
	db   $fd                                         ; $7a8f: $fd
	ld   b, c                                        ; $7a90: $41
	ld   de, $4f11                                   ; $7a91: $11 $11 $4f
	rst  $38                                         ; $7a94: $ff
	db   $fd                                         ; $7a95: $fd
	rra                                              ; $7a96: $1f
	rst  $38                                         ; $7a97: $ff
	rst  $38                                         ; $7a98: $ff
	sub  c                                           ; $7a99: $91
	ld   de, $fd1a                                   ; $7a9a: $11 $1a $fd
	or   a                                           ; $7a9d: $b7
	adc  a                                           ; $7a9e: $8f
	rst  $38                                         ; $7a9f: $ff
	push af                                          ; $7aa0: $f5
	ld   de, $1c11                                   ; $7aa1: $11 $11 $1c
	rst  $38                                         ; $7aa4: $ff
	rst  $38                                         ; $7aa5: $ff
	push de                                          ; $7aa6: $d5
	rst  $38                                         ; $7aa7: $ff
	rst  $38                                         ; $7aa8: $ff
	sub  c                                           ; $7aa9: $91
	ld   de, $ef15                                   ; $7aaa: $11 $15 $ef
	ld   [$ffcb], a                                  ; $7aad: $ea $cb $ff
	rst  $38                                         ; $7ab0: $ff
	ld   de, $1111                                   ; $7ab1: $11 $11 $11
	rst  $38                                         ; $7ab4: $ff
	rst  $38                                         ; $7ab5: $ff
	cp   l                                           ; $7ab6: $bd
	ld   a, a                                        ; $7ab7: $7f
	rst  $38                                         ; $7ab8: $ff
	push af                                          ; $7ab9: $f5
	ld   de, rAUD1LEN                                   ; $7aba: $11 $11 $ff
	db   $fd                                         ; $7abd: $fd
	rla                                              ; $7abe: $17
	rst  $38                                         ; $7abf: $ff
	rst  $38                                         ; $7ac0: $ff
	pop  af                                          ; $7ac1: $f1
	ld   de, $1d11                                   ; $7ac2: $11 $11 $1d
	rst  $38                                         ; $7ac5: $ff
	ld   a, [$ffff]                                  ; $7ac6: $fa $ff $ff
	rst  $38                                         ; $7ac9: $ff
	sub  c                                           ; $7aca: $91
	ld   de, $e816                                   ; $7acb: $11 $16 $e8
	sub  $bf                                         ; $7ace: $d6 $bf
	rst  $38                                         ; $7ad0: $ff
	rst  $38                                         ; $7ad1: $ff
	ld   d, c                                        ; $7ad2: $51
	ld   de, $1111                                   ; $7ad3: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ad6: $cf
	rst  $38                                         ; $7ad7: $ff
	rst  $38                                         ; $7ad8: $ff
	rst  $38                                         ; $7ad9: $ff
	rst  $38                                         ; $7ada: $ff
	pop  af                                          ; $7adb: $f1
	ld   de, $cf17                                   ; $7adc: $11 $17 $cf
	rst  $38                                         ; $7adf: $ff
	rst  $38                                         ; $7ae0: $ff
	rst  $38                                         ; $7ae1: $ff
	rst  $38                                         ; $7ae2: $ff
	ld   h, c                                        ; $7ae3: $61
	ld   de, $1111                                   ; $7ae4: $11 $11 $11
	rst  $38                                         ; $7ae7: $ff
	rst  $38                                         ; $7ae8: $ff
	rst  $38                                         ; $7ae9: $ff
	rst  $38                                         ; $7aea: $ff
	rst  $38                                         ; $7aeb: $ff
	or   c                                           ; $7aec: $b1
	ld   de, $eb17                                   ; $7aed: $11 $17 $eb
	rst  JumpTable                                         ; $7af0: $df
	rst  $38                                         ; $7af1: $ff
	rst  $38                                         ; $7af2: $ff
	rst  $38                                         ; $7af3: $ff
	add  c                                           ; $7af4: $81
	ld   de, $1111                                   ; $7af5: $11 $11 $11
	rra                                              ; $7af8: $1f
	rst  $38                                         ; $7af9: $ff
	rst  $38                                         ; $7afa: $ff
	rst  $38                                         ; $7afb: $ff
	rst  $38                                         ; $7afc: $ff
	db   $fc                                         ; $7afd: $fc
	ld   de, $8f11                                   ; $7afe: $11 $11 $8f
	jp   c, $ffaf                                    ; $7b01: $da $af $ff

	rst  $38                                         ; $7b04: $ff
	cp   $11                                         ; $7b05: $fe $11
	ld   de, $1111                                   ; $7b07: $11 $11 $11
	rra                                              ; $7b0a: $1f
	rst  $38                                         ; $7b0b: $ff
	ret  z                                           ; $7b0c: $c8

	rst  $38                                         ; $7b0d: $ff
	rst  $38                                         ; $7b0e: $ff
	pop  af                                          ; $7b0f: $f1
	ld   de, $cf11                                   ; $7b10: $11 $11 $cf
	and  h                                           ; $7b13: $a4
	ld   c, e                                        ; $7b14: $4b
	rst  $38                                         ; $7b15: $ff
	rst  $38                                         ; $7b16: $ff
	push de                                          ; $7b17: $d5
	inc  h                                           ; $7b18: $24
	ld   [hl], a                                     ; $7b19: $77
	ld   de, $1f11                                   ; $7b1a: $11 $11 $1f
	rst  $38                                         ; $7b1d: $ff
	ld   b, c                                        ; $7b1e: $41
	dec  de                                          ; $7b1f: $1b
	rst  $38                                         ; $7b20: $ff
	ld   a, [$1a11]                                  ; $7b21: $fa $11 $1a
	rst  $38                                         ; $7b24: $ff
	db   $e4                                         ; $7b25: $e4
	ld   de, $ff7f                                   ; $7b26: $11 $7f $ff
	sub  h                                           ; $7b29: $94
	ld   c, d                                        ; $7b2a: $4a
	rst  $38                                         ; $7b2b: $ff
	sub  c                                           ; $7b2c: $91
	ld   de, $7c11                                   ; $7b2d: $11 $11 $7c
	jp   c, $1611                                    ; $7b30: $da $11 $16

	rst  $38                                         ; $7b33: $ff
	ld   a, [$5f11]                                  ; $7b34: $fa $11 $5f
	rst  $38                                         ; $7b37: $ff
	pop  bc                                          ; $7b38: $c1
	ld   de, $ff7f                                   ; $7b39: $11 $7f $ff
	ld   [hl], h                                     ; $7b3c: $74
	adc  a                                           ; $7b3d: $8f
	rst  $38                                         ; $7b3e: $ff
	ld   d, c                                        ; $7b3f: $51
	ld   de, $5f11                                   ; $7b40: $11 $11 $5f
	db   $fd                                         ; $7b43: $fd
	ld   de, $ff1f                                   ; $7b44: $11 $1f $ff
	push af                                          ; $7b47: $f5
	ld   de, $ff1d                                   ; $7b48: $11 $1d $ff
	or   e                                           ; $7b4b: $b3
	ld   de, $ffcf                                   ; $7b4c: $11 $cf $ff
	push bc                                          ; $7b4f: $c5
	ld   l, a                                        ; $7b50: $6f
	db   $fd                                         ; $7b51: $fd
	ld   de, $1111                                   ; $7b52: $11 $11 $11
	adc  a                                           ; $7b55: $8f
	rst  $38                                         ; $7b56: $ff
	halt                                             ; $7b57: $76
	rst  $38                                         ; $7b58: $ff
	rst  $38                                         ; $7b59: $ff
	ld   sp, $1711                                   ; $7b5a: $31 $11 $17
	xor  $ea                                         ; $7b5d: $ee $ea
	cp   a                                           ; $7b5f: $bf
	rst  $38                                         ; $7b60: $ff
	ld   hl, sp+$43                                  ; $7b61: $f8 $43
	ld   a, h                                        ; $7b63: $7c
	or   e                                           ; $7b64: $b3
	ld   de, $1b11                                   ; $7b65: $11 $11 $1b
	rst  $38                                         ; $7b68: $ff
	or   $16                                         ; $7b69: $f6 $16
	rst  $38                                         ; $7b6b: $ff
	di                                               ; $7b6c: $f3
	ld   de, rAUD1LEN                                   ; $7b6d: $11 $11 $ff
	rst  $38                                         ; $7b70: $ff
	ld   hl, $ffdf                                   ; $7b71: $21 $df $ff
	ld   bc, $ff15                                   ; $7b74: $01 $15 $ff
	ld   sp, hl                                      ; $7b77: $f9
	ld   de, $1111                                   ; $7b78: $11 $11 $11
	rst  $28                                         ; $7b7b: $ef
	rst  $38                                         ; $7b7c: $ff
	rst  $10                                         ; $7b7d: $d7
	sbc  a                                           ; $7b7e: $9f
	di                                               ; $7b7f: $f3
	ld   de, $1f11                                   ; $7b80: $11 $11 $1f
	rst  $38                                         ; $7b83: $ff
	rst  $38                                         ; $7b84: $ff
	ld   de, $5447                                   ; $7b85: $11 $47 $54
	ld   d, [hl]                                     ; $7b88: $56
	xor  a                                           ; $7b89: $af
	rst  $38                                         ; $7b8a: $ff
	pop  hl                                          ; $7b8b: $e1
	ld   de, $1111                                   ; $7b8c: $11 $11 $11
	adc  a                                           ; $7b8f: $8f
	rst  $38                                         ; $7b90: $ff
	rst  $38                                         ; $7b91: $ff
	call nc, $1111                                   ; $7b92: $d4 $11 $11
	ld   de, $ff1f                                   ; $7b95: $11 $1f $ff
	rst  $38                                         ; $7b98: $ff
	and  c                                           ; $7b99: $a1
	ld   de, $fc1e                                   ; $7b9a: $11 $1e $fc
	ld   e, c                                        ; $7b9d: $59
	rst  $38                                         ; $7b9e: $ff
	pop  af                                          ; $7b9f: $f1
	ld   de, $1111                                   ; $7ba0: $11 $11 $11
	rra                                              ; $7ba3: $1f
	rst  $38                                         ; $7ba4: $ff
	rst  $38                                         ; $7ba5: $ff
	ld   [hl], c                                     ; $7ba6: $71
	ld   de, $2136                                   ; $7ba7: $11 $36 $21
	ld   a, [de]                                     ; $7baa: $1a
	rst  $38                                         ; $7bab: $ff
	rst  $38                                         ; $7bac: $ff
	ldh  a, [c]                                      ; $7bad: $f2
	ld   de, $fc4d                                   ; $7bae: $11 $4d $fc
	adc  h                                           ; $7bb1: $8c
	rst  $38                                         ; $7bb2: $ff
	or   $11                                         ; $7bb3: $f6 $11
	ld   de, $1111                                   ; $7bb5: $11 $11 $11
	adc  a                                           ; $7bb8: $8f
	rst  $38                                         ; $7bb9: $ff
	pop  af                                          ; $7bba: $f1
	ld   de, $fc16                                   ; $7bbb: $11 $16 $fc
	ld   de, $ff1f                                   ; $7bbe: $11 $1f $ff
	rst  $30                                         ; $7bc1: $f7
	ld   de, $ff19                                   ; $7bc2: $11 $19 $ff
	rst  $10                                         ; $7bc5: $d7
	xor  a                                           ; $7bc6: $af
	rst  $38                                         ; $7bc7: $ff
	ld   h, c                                        ; $7bc8: $61
	ld   de, $316a                                   ; $7bc9: $11 $6a $31
	ld   de, $ff1f                                   ; $7bcc: $11 $1f $ff
	pop  af                                          ; $7bcf: $f1
	ld   de, $ff1f                                   ; $7bd0: $11 $1f $ff
	ld   d, c                                        ; $7bd3: $51
	dec  e                                           ; $7bd4: $1d
	rst  $38                                         ; $7bd5: $ff
	ld   hl, sp+$11                                  ; $7bd6: $f8 $11
	ld   a, [de]                                     ; $7bd8: $1a
	rst  $38                                         ; $7bd9: $ff
	or   e                                           ; $7bda: $b3
	ld   a, $ff                                      ; $7bdb: $3e $ff
	ldh  a, [c]                                      ; $7bdd: $f2
	ld   de, $7148                                   ; $7bde: $11 $48 $71
	ld   de, rAUD1LEN                                   ; $7be1: $11 $11 $ff
	rst  $38                                         ; $7be4: $ff
	ld   h, c                                        ; $7be5: $61
	ld   de, $fa8f                                   ; $7be6: $11 $8f $fa
	ld   de, $ff7f                                   ; $7be9: $11 $7f $ff
	jp   $af25                                       ; $7bec: $c3 $25 $af


	jp   hl                                          ; $7bef: $e9


	ld   [hl-], a                                    ; $7bf0: $32
	xor  a                                           ; $7bf1: $af
	rst  $38                                         ; $7bf2: $ff
	add  sp, $33                                     ; $7bf3: $e8 $33
	ld   b, l                                        ; $7bf5: $45
	ld   [hl], e                                     ; $7bf6: $73
	ld   de, $1111                                   ; $7bf7: $11 $11 $11
	rst  $38                                         ; $7bfa: $ff
	rst  $38                                         ; $7bfb: $ff
	add  c                                           ; $7bfc: $81
	ld   de, $ff4f                                   ; $7bfd: $11 $4f $ff
	ret  c                                           ; $7c00: $d8

	adc  h                                           ; $7c01: $8c
	call c, $cb99                                    ; $7c02: $dc $99 $cb
	xor  c                                           ; $7c05: $a9
	ld   h, h                                        ; $7c06: $64
	ld   c, b                                        ; $7c07: $48
	rst  $38                                         ; $7c08: $ff
	rst  $38                                         ; $7c09: $ff
	sub  $11                                         ; $7c0a: $d6 $11
	ld   h, $ad                                      ; $7c0c: $26 $ad
	sub  h                                           ; $7c0e: $94
	ld   de, $1111                                   ; $7c0f: $11 $11 $11
	inc  de                                          ; $7c12: $13
	rst  $38                                         ; $7c13: $ff
	cp   $11                                         ; $7c14: $fe $11
	inc  d                                           ; $7c16: $14
	rst  $38                                         ; $7c17: $ff
	cp   $74                                         ; $7c18: $fe $74
	ld   a, e                                        ; $7c1a: $7b
	sbc  $b9                                         ; $7c1b: $de $b9
	ld   h, [hl]                                     ; $7c1d: $66
	ld   h, [hl]                                     ; $7c1e: $66
	ld   h, a                                        ; $7c1f: $67
	xor  a                                           ; $7c20: $af
	rst  $38                                         ; $7c21: $ff
	ei                                               ; $7c22: $fb
	ld   h, h                                        ; $7c23: $64
	ld   [hl], $ae                                   ; $7c24: $36 $ae
	ret  z                                           ; $7c26: $c8

	ld   sp, $5512                                   ; $7c27: $31 $12 $55
	ld   sp, $3e11                                   ; $7c2a: $31 $11 $3e
	rst  $38                                         ; $7c2d: $ff
	and  d                                           ; $7c2e: $a2
	ld   de, $ff7f                                   ; $7c2f: $11 $7f $ff
	or   [hl]                                        ; $7c32: $b6
	ld   d, a                                        ; $7c33: $57
	cp   l                                           ; $7c34: $bd
	db   $db                                         ; $7c35: $db
	ld   [hl], l                                     ; $7c36: $75
	ld   d, a                                        ; $7c37: $57
	sbc  d                                           ; $7c38: $9a
	cp   c                                           ; $7c39: $b9
	sbc  d                                           ; $7c3a: $9a
	xor  l                                           ; $7c3b: $ad
	rst  $38                                         ; $7c3c: $ff
	sub  $45                                         ; $7c3d: $d6 $45
	sbc  h                                           ; $7c3f: $9c
	jp   z, Jump_0c3_5376                            ; $7c40: $ca $76 $53

	ld   h, a                                        ; $7c43: $67
	ld   [hl], h                                     ; $7c44: $74
	ld   de, $1111                                   ; $7c45: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c48: $cf
	ei                                               ; $7c49: $fb
	ld   d, c                                        ; $7c4a: $51
	inc  de                                          ; $7c4b: $13
	cp   a                                           ; $7c4c: $bf
	jp   c, $8989                                    ; $7c4d: $da $89 $89

	db   $dd                                         ; $7c50: $dd
	cp   d                                           ; $7c51: $ba
	xor  e                                           ; $7c52: $ab
	xor  c                                           ; $7c53: $a9
	ld   h, a                                        ; $7c54: $67
	ld   h, a                                        ; $7c55: $67
	adc  e                                           ; $7c56: $8b
	call $b9ed                                       ; $7c57: $cd $ed $b9
	ld   h, [hl]                                     ; $7c5a: $66
	ld   a, d                                        ; $7c5b: $7a
	cp   e                                           ; $7c5c: $bb
	or   a                                           ; $7c5d: $b7
	ld   h, [hl]                                     ; $7c5e: $66
	ld   b, [hl]                                     ; $7c5f: $46
	ld   d, [hl]                                     ; $7c60: $56
	ld   d, d                                        ; $7c61: $52
	ld   de, $2911                                   ; $7c62: $11 $11 $29
	cp   [hl]                                        ; $7c65: $be
	rst  ToBoot                                         ; $7c66: $c7
	ld   sp, $bf35                                   ; $7c67: $31 $35 $bf
	db   $fd                                         ; $7c6a: $fd
	or   [hl]                                        ; $7c6b: $b6
	ld   l, d                                        ; $7c6c: $6a
	sbc  $cb                                         ; $7c6d: $de $cb
	add  a                                           ; $7c6f: $87
	sbc  c                                           ; $7c70: $99
	ld   [hl], a                                     ; $7c71: $77
	sbc  e                                           ; $7c72: $9b
	xor  c                                           ; $7c73: $a9
	add  [hl]                                        ; $7c74: $86
	ld   l, b                                        ; $7c75: $68
	db   $dd                                         ; $7c76: $dd
	ret                                              ; $7c77: $c9


	sbc  b                                           ; $7c78: $98
	ld   l, c                                        ; $7c79: $69
	sbc  c                                           ; $7c7a: $99
	adc  b                                           ; $7c7b: $88
	sbc  c                                           ; $7c7c: $99
	add  l                                           ; $7c7d: $85
	ld   h, [hl]                                     ; $7c7e: $66
	ld   d, [hl]                                     ; $7c7f: $56
	ld   b, h                                        ; $7c80: $44
	ld   b, e                                        ; $7c81: $43
	ld   b, e                                        ; $7c82: $43
	inc  sp                                          ; $7c83: $33
	ld   d, [hl]                                     ; $7c84: $56
	ld   a, c                                        ; $7c85: $79
	sbc  c                                           ; $7c86: $99
	halt                                             ; $7c87: $76
	halt                                             ; $7c88: $76
	ld   a, d                                        ; $7c89: $7a
	cp   l                                           ; $7c8a: $bd
	jp   z, $8b75                                    ; $7c8b: $ca $75 $8b

	sbc  $b8                                         ; $7c8e: $de $b8
	ld   h, l                                        ; $7c90: $65
	sbc  d                                           ; $7c91: $9a
	xor  d                                           ; $7c92: $aa
	xor  d                                           ; $7c93: $aa
	ld   [hl], l                                     ; $7c94: $75
	sbc  h                                           ; $7c95: $9c
	call z, $87cc                                    ; $7c96: $cc $cc $87
	ld   d, [hl]                                     ; $7c99: $56
	ld   h, a                                        ; $7c9a: $67
	xor  h                                           ; $7c9b: $ac
	ret  z                                           ; $7c9c: $c8

	halt                                             ; $7c9d: $76
	inc  sp                                          ; $7c9e: $33
	ld   d, l                                        ; $7c9f: $55
	ld   d, [hl]                                     ; $7ca0: $56
	ld   d, d                                        ; $7ca1: $52
	inc  hl                                          ; $7ca2: $23
	ld   d, a                                        ; $7ca3: $57
	ld   [hl], l                                     ; $7ca4: $75
	ld   b, [hl]                                     ; $7ca5: $46
	ld   d, h                                        ; $7ca6: $54
	ld   l, b                                        ; $7ca7: $68
	xor  h                                           ; $7ca8: $ac
	reti                                             ; $7ca9: $d9


	ld   h, a                                        ; $7caa: $67
	xor  e                                           ; $7cab: $ab
	call z, $a8ba                                    ; $7cac: $cc $ba $a8
	ld   a, b                                        ; $7caf: $78
	sbc  e                                           ; $7cb0: $9b
	jp   z, Jump_0c3_6797                            ; $7cb1: $ca $97 $67

	xor  l                                           ; $7cb4: $ad
	db   $db                                         ; $7cb5: $db
	and  a                                           ; $7cb6: $a7
	ld   h, a                                        ; $7cb7: $67
	xor  h                                           ; $7cb8: $ac
	cp   d                                           ; $7cb9: $ba
	adc  b                                           ; $7cba: $88
	ld   d, l                                        ; $7cbb: $55
	ld   h, a                                        ; $7cbc: $67
	xor  d                                           ; $7cbd: $aa
	sub  [hl]                                        ; $7cbe: $96
	ld   d, h                                        ; $7cbf: $54
	ld   [hl], $65                                   ; $7cc0: $36 $65
	ld   a, b                                        ; $7cc2: $78
	ld   d, l                                        ; $7cc3: $55
	ld   b, l                                        ; $7cc4: $45
	dec  [hl]                                        ; $7cc5: $35
	adc  b                                           ; $7cc6: $88
	cp   b                                           ; $7cc7: $b8
	ld   [hl], a                                     ; $7cc8: $77
	ld   b, [hl]                                     ; $7cc9: $46
	sbc  e                                           ; $7cca: $9b
	cp   e                                           ; $7ccb: $bb
	and  l                                           ; $7ccc: $a5
	ld   a, b                                        ; $7ccd: $78
	cp   [hl]                                        ; $7cce: $be
	xor  d                                           ; $7ccf: $aa
	ld   [hl], a                                     ; $7cd0: $77
	adc  c                                           ; $7cd1: $89
	ret  z                                           ; $7cd2: $c8

	sbc  c                                           ; $7cd3: $99
	xor  e                                           ; $7cd4: $ab
	xor  c                                           ; $7cd5: $a9
	adc  b                                           ; $7cd6: $88
	sbc  d                                           ; $7cd7: $9a
	sub  a                                           ; $7cd8: $97
	ld   [hl], a                                     ; $7cd9: $77
	adc  d                                           ; $7cda: $8a
	cp   d                                           ; $7cdb: $ba
	add  a                                           ; $7cdc: $87
	ld   l, b                                        ; $7cdd: $68
	ld   a, b                                        ; $7cde: $78
	ld   [hl], a                                     ; $7cdf: $77
	ld   [hl], a                                     ; $7ce0: $77
	sub  [hl]                                        ; $7ce1: $96
	ld   d, [hl]                                     ; $7ce2: $56
	ld   h, a                                        ; $7ce3: $67
	ld   d, l                                        ; $7ce4: $55
	ld   [hl], l                                     ; $7ce5: $75
	ld   d, l                                        ; $7ce6: $55
	ld   h, l                                        ; $7ce7: $65
	ld   e, b                                        ; $7ce8: $58
	sbc  b                                           ; $7ce9: $98
	halt                                             ; $7cea: $76
	add  a                                           ; $7ceb: $87
	adc  c                                           ; $7cec: $89
	adc  d                                           ; $7ced: $8a
	sbc  c                                           ; $7cee: $99
	xor  c                                           ; $7cef: $a9
	sbc  d                                           ; $7cf0: $9a
	sub  a                                           ; $7cf1: $97
	ld   a, c                                        ; $7cf2: $79
	xor  e                                           ; $7cf3: $ab
	xor  d                                           ; $7cf4: $aa
	and  [hl]                                        ; $7cf5: $a6
	ld   l, e                                        ; $7cf6: $6b
	ret                                              ; $7cf7: $c9


	sbc  c                                           ; $7cf8: $99
	adc  b                                           ; $7cf9: $88
	sbc  e                                           ; $7cfa: $9b
	sbc  c                                           ; $7cfb: $99
	sbc  d                                           ; $7cfc: $9a
	sbc  c                                           ; $7cfd: $99
	add  [hl]                                        ; $7cfe: $86
	ld   [hl], a                                     ; $7cff: $77
	ld   a, c                                        ; $7d00: $79
	adc  c                                           ; $7d01: $89
	and  a                                           ; $7d02: $a7
	ld   h, l                                        ; $7d03: $65
	ld   h, h                                        ; $7d04: $64
	ld   l, c                                        ; $7d05: $69
	ld   h, a                                        ; $7d06: $67
	ld   h, [hl]                                     ; $7d07: $66
	ld   h, [hl]                                     ; $7d08: $66
	ld   h, l                                        ; $7d09: $65
	sbc  b                                           ; $7d0a: $98
	ld   a, b                                        ; $7d0b: $78
	sub  a                                           ; $7d0c: $97
	ld   d, [hl]                                     ; $7d0d: $56
	ld   l, b                                        ; $7d0e: $68
	adc  e                                           ; $7d0f: $8b
	sub  e                                           ; $7d10: $93
	ld   a, c                                        ; $7d11: $79
	xor  d                                           ; $7d12: $aa
	sbc  c                                           ; $7d13: $99
	ld   h, a                                        ; $7d14: $67
	sbc  d                                           ; $7d15: $9a
	cp   e                                           ; $7d16: $bb
	xor  b                                           ; $7d17: $a8
	ld   [hl], a                                     ; $7d18: $77
	xor  e                                           ; $7d19: $ab
	cp   e                                           ; $7d1a: $bb
	halt                                             ; $7d1b: $76
	ld   a, c                                        ; $7d1c: $79
	xor  d                                           ; $7d1d: $aa
	xor  c                                           ; $7d1e: $a9
	adc  b                                           ; $7d1f: $88
	adc  b                                           ; $7d20: $88
	adc  b                                           ; $7d21: $88
	ld   a, b                                        ; $7d22: $78
	adc  b                                           ; $7d23: $88
	sub  [hl]                                        ; $7d24: $96
	ld   [hl], a                                     ; $7d25: $77
	ld   a, b                                        ; $7d26: $78
	ld   a, c                                        ; $7d27: $79
	ld   [hl], a                                     ; $7d28: $77
	ld   h, l                                        ; $7d29: $65
	halt                                             ; $7d2a: $76
	ld   a, c                                        ; $7d2b: $79
	adc  b                                           ; $7d2c: $88
	ld   b, [hl]                                     ; $7d2d: $46
	ld   d, l                                        ; $7d2e: $55
	ld   [hl], a                                     ; $7d2f: $77
	sub  a                                           ; $7d30: $97
	sbc  c                                           ; $7d31: $99
	adc  b                                           ; $7d32: $88
	ld   h, [hl]                                     ; $7d33: $66
	ld   l, e                                        ; $7d34: $6b
	db   $db                                         ; $7d35: $db
	ld   [hl], h                                     ; $7d36: $74
	ld   d, a                                        ; $7d37: $57
	cp   l                                           ; $7d38: $bd
	xor  b                                           ; $7d39: $a8
	ld   l, c                                        ; $7d3a: $69
	adc  b                                           ; $7d3b: $88
	cp   c                                           ; $7d3c: $b9
	adc  b                                           ; $7d3d: $88
	cp   d                                           ; $7d3e: $ba
	sbc  c                                           ; $7d3f: $99
	ld   l, b                                        ; $7d40: $68
	adc  d                                           ; $7d41: $8a
	ret                                              ; $7d42: $c9


	sub  a                                           ; $7d43: $97
	ld   h, [hl]                                     ; $7d44: $66
	ld   a, c                                        ; $7d45: $79
	xor  d                                           ; $7d46: $aa
	sub  a                                           ; $7d47: $97
	ld   [hl], a                                     ; $7d48: $77
	ld   [hl], a                                     ; $7d49: $77
	adc  b                                           ; $7d4a: $88
	sbc  b                                           ; $7d4b: $98
	ld   [hl], a                                     ; $7d4c: $77
	ld   [hl], a                                     ; $7d4d: $77
	ld   h, [hl]                                     ; $7d4e: $66
	ld   a, c                                        ; $7d4f: $79
	sbc  c                                           ; $7d50: $99
	ld   [hl], l                                     ; $7d51: $75
	ld   b, [hl]                                     ; $7d52: $46
	add  a                                           ; $7d53: $87
	sbc  c                                           ; $7d54: $99
	ld   [hl], a                                     ; $7d55: $77
	ld   l, b                                        ; $7d56: $68
	ld   a, b                                        ; $7d57: $78
	sbc  b                                           ; $7d58: $98
	sub  a                                           ; $7d59: $97
	sub  a                                           ; $7d5a: $97
	ld   l, c                                        ; $7d5b: $69
	sbc  d                                           ; $7d5c: $9a
	sbc  d                                           ; $7d5d: $9a
	sub  a                                           ; $7d5e: $97
	ld   [hl], a                                     ; $7d5f: $77
	xor  b                                           ; $7d60: $a8
	ld   a, d                                        ; $7d61: $7a
	adc  d                                           ; $7d62: $8a
	sbc  c                                           ; $7d63: $99
	sub  a                                           ; $7d64: $97
	adc  b                                           ; $7d65: $88
	sbc  c                                           ; $7d66: $99
	xor  d                                           ; $7d67: $aa
	ld   a, b                                        ; $7d68: $78
	add  a                                           ; $7d69: $87
	ld   [hl], a                                     ; $7d6a: $77
	adc  b                                           ; $7d6b: $88
	sbc  c                                           ; $7d6c: $99
	halt                                             ; $7d6d: $76
	ld   [hl], a                                     ; $7d6e: $77
	adc  c                                           ; $7d6f: $89
	xor  c                                           ; $7d70: $a9
	ld   l, b                                        ; $7d71: $68
	ld   [hl], a                                     ; $7d72: $77
	ld   h, a                                        ; $7d73: $67
	sub  a                                           ; $7d74: $97
	adc  c                                           ; $7d75: $89
	ld   [hl], a                                     ; $7d76: $77
	ld   a, b                                        ; $7d77: $78
	ld   [hl], a                                     ; $7d78: $77
	add  a                                           ; $7d79: $87
	adc  b                                           ; $7d7a: $88
	halt                                             ; $7d7b: $76
	ld   a, b                                        ; $7d7c: $78
	sbc  d                                           ; $7d7d: $9a
	sub  a                                           ; $7d7e: $97
	ld   a, b                                        ; $7d7f: $78
	adc  c                                           ; $7d80: $89
	adc  c                                           ; $7d81: $89
	adc  b                                           ; $7d82: $88
	xor  b                                           ; $7d83: $a8
	adc  c                                           ; $7d84: $89
	sbc  b                                           ; $7d85: $98
	adc  c                                           ; $7d86: $89
	sbc  b                                           ; $7d87: $98
	ld   a, b                                        ; $7d88: $78
	adc  c                                           ; $7d89: $89
	adc  c                                           ; $7d8a: $89
	add  a                                           ; $7d8b: $87
	adc  b                                           ; $7d8c: $88
	sbc  c                                           ; $7d8d: $99
	adc  b                                           ; $7d8e: $88
	ld   h, a                                        ; $7d8f: $67
	adc  b                                           ; $7d90: $88
	sbc  c                                           ; $7d91: $99
	add  a                                           ; $7d92: $87
	adc  c                                           ; $7d93: $89
	sbc  c                                           ; $7d94: $99
	ld   a, b                                        ; $7d95: $78
	ld   [hl], a                                     ; $7d96: $77
	sbc  b                                           ; $7d97: $98
	sbc  c                                           ; $7d98: $99
	add  a                                           ; $7d99: $87
	ld   a, b                                        ; $7d9a: $78
	adc  b                                           ; $7d9b: $88
	adc  b                                           ; $7d9c: $88
	ld   [hl], a                                     ; $7d9d: $77
	ld   [hl], a                                     ; $7d9e: $77
	ld   [hl], a                                     ; $7d9f: $77
	adc  c                                           ; $7da0: $89
	ld   a, b                                        ; $7da1: $78
	add  a                                           ; $7da2: $87
	add  a                                           ; $7da3: $87
	adc  b                                           ; $7da4: $88
	adc  c                                           ; $7da5: $89
	ld   [hl], a                                     ; $7da6: $77
	sbc  b                                           ; $7da7: $98
	adc  c                                           ; $7da8: $89
	add  a                                           ; $7da9: $87
	adc  c                                           ; $7daa: $89
	sbc  c                                           ; $7dab: $99
	ld   [hl], a                                     ; $7dac: $77
	adc  b                                           ; $7dad: $88
	sbc  b                                           ; $7dae: $98
	adc  b                                           ; $7daf: $88
	sbc  b                                           ; $7db0: $98
	sbc  b                                           ; $7db1: $98
	adc  b                                           ; $7db2: $88
	adc  b                                           ; $7db3: $88
	adc  c                                           ; $7db4: $89
	adc  b                                           ; $7db5: $88
	adc  b                                           ; $7db6: $88
	ld   a, b                                        ; $7db7: $78
	adc  b                                           ; $7db8: $88
	adc  c                                           ; $7db9: $89
	ld   [hl], a                                     ; $7dba: $77
	adc  b                                           ; $7dbb: $88
	adc  b                                           ; $7dbc: $88
	adc  b                                           ; $7dbd: $88
	ld   a, b                                        ; $7dbe: $78
	ld   a, b                                        ; $7dbf: $78
	sbc  b                                           ; $7dc0: $98
	adc  b                                           ; $7dc1: $88
	adc  c                                           ; $7dc2: $89
	add  a                                           ; $7dc3: $87
	ld   [hl], a                                     ; $7dc4: $77
	ld   a, b                                        ; $7dc5: $78
	sbc  b                                           ; $7dc6: $98
	add  a                                           ; $7dc7: $87
	ld   [hl], a                                     ; $7dc8: $77
	adc  c                                           ; $7dc9: $89
	sbc  b                                           ; $7dca: $98
	ld   [hl], a                                     ; $7dcb: $77
	adc  c                                           ; $7dcc: $89
	adc  b                                           ; $7dcd: $88
	add  a                                           ; $7dce: $87
	adc  b                                           ; $7dcf: $88
	adc  b                                           ; $7dd0: $88
	add  a                                           ; $7dd1: $87
	ld   a, b                                        ; $7dd2: $78
	sbc  b                                           ; $7dd3: $98
	adc  b                                           ; $7dd4: $88
	add  a                                           ; $7dd5: $87
	adc  b                                           ; $7dd6: $88
	adc  c                                           ; $7dd7: $89
	adc  b                                           ; $7dd8: $88
	ld   [hl], a                                     ; $7dd9: $77
	adc  c                                           ; $7dda: $89
	adc  b                                           ; $7ddb: $88
	adc  b                                           ; $7ddc: $88
	adc  c                                           ; $7ddd: $89
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
	adc  c                                           ; $7df3: $89
	adc  b                                           ; $7df4: $88
	add  a                                           ; $7df5: $87
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

Jump_0c3_7f11:
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

Jump_0c3_7faa:
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
