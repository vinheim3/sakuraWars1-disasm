; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0a6", ROMX[$4000], BANK[$a6]

	sbc  b                                           ; $4000: $98
	ld   [hl], a                                     ; $4001: $77
	adc  c                                           ; $4002: $89
	adc  b                                           ; $4003: $88
	sbc  b                                           ; $4004: $98
	ld   [hl], a                                     ; $4005: $77
	adc  b                                           ; $4006: $88
	sbc  c                                           ; $4007: $99
	sbc  b                                           ; $4008: $98
	add  a                                           ; $4009: $87
	ld   [hl], a                                     ; $400a: $77
	ld   a, b                                        ; $400b: $78
	adc  c                                           ; $400c: $89
	sbc  b                                           ; $400d: $98
	adc  b                                           ; $400e: $88
	adc  b                                           ; $400f: $88
	adc  b                                           ; $4010: $88
	adc  b                                           ; $4011: $88
	adc  b                                           ; $4012: $88
	adc  b                                           ; $4013: $88
	adc  b                                           ; $4014: $88
	adc  b                                           ; $4015: $88
	adc  b                                           ; $4016: $88
	sbc  b                                           ; $4017: $98
	adc  b                                           ; $4018: $88
	ld   [hl], a                                     ; $4019: $77
	adc  b                                           ; $401a: $88
	sbc  c                                           ; $401b: $99
	adc  b                                           ; $401c: $88
	ld   a, b                                        ; $401d: $78
	adc  c                                           ; $401e: $89
	adc  b                                           ; $401f: $88
	add  a                                           ; $4020: $87
	ld   a, b                                        ; $4021: $78
	adc  c                                           ; $4022: $89
	adc  b                                           ; $4023: $88
	adc  b                                           ; $4024: $88
	adc  b                                           ; $4025: $88
	adc  b                                           ; $4026: $88
	adc  b                                           ; $4027: $88
	adc  b                                           ; $4028: $88
	adc  b                                           ; $4029: $88
	adc  b                                           ; $402a: $88
	sbc  b                                           ; $402b: $98
	adc  b                                           ; $402c: $88
	adc  b                                           ; $402d: $88
	adc  c                                           ; $402e: $89
	sbc  b                                           ; $402f: $98
	adc  b                                           ; $4030: $88
	adc  b                                           ; $4031: $88
	adc  b                                           ; $4032: $88
	adc  b                                           ; $4033: $88
	adc  b                                           ; $4034: $88
	adc  b                                           ; $4035: $88
	adc  b                                           ; $4036: $88
	adc  b                                           ; $4037: $88
	adc  b                                           ; $4038: $88
	adc  b                                           ; $4039: $88
	adc  b                                           ; $403a: $88
	adc  b                                           ; $403b: $88
	adc  b                                           ; $403c: $88
	adc  b                                           ; $403d: $88
	add  a                                           ; $403e: $87
	adc  b                                           ; $403f: $88
	sbc  c                                           ; $4040: $99
	adc  b                                           ; $4041: $88
	adc  b                                           ; $4042: $88
	adc  b                                           ; $4043: $88
	adc  b                                           ; $4044: $88
	adc  b                                           ; $4045: $88
	adc  b                                           ; $4046: $88
	adc  b                                           ; $4047: $88
	adc  b                                           ; $4048: $88
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
	adc  b                                           ; $405e: $88
	adc  b                                           ; $405f: $88
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
	adc  b                                           ; $406c: $88
	adc  b                                           ; $406d: $88
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
	adc  b                                           ; $407a: $88
	adc  b                                           ; $407b: $88
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

Call_0a6_4195:
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
	adc  b                                           ; $41a1: $88
	adc  b                                           ; $41a2: $88
	adc  b                                           ; $41a3: $88
	adc  b                                           ; $41a4: $88
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

Jump_0a6_4386:
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
	adc  b                                           ; $43b5: $88
	adc  b                                           ; $43b6: $88
	adc  b                                           ; $43b7: $88
	adc  b                                           ; $43b8: $88
	adc  b                                           ; $43b9: $88
	adc  b                                           ; $43ba: $88
	adc  b                                           ; $43bb: $88
	adc  b                                           ; $43bc: $88
	adc  b                                           ; $43bd: $88
	adc  b                                           ; $43be: $88
	adc  b                                           ; $43bf: $88
	adc  b                                           ; $43c0: $88
	adc  b                                           ; $43c1: $88
	adc  b                                           ; $43c2: $88
	adc  b                                           ; $43c3: $88
	adc  b                                           ; $43c4: $88
	adc  b                                           ; $43c5: $88
	adc  b                                           ; $43c6: $88
	adc  b                                           ; $43c7: $88
	adc  b                                           ; $43c8: $88
	adc  b                                           ; $43c9: $88
	adc  b                                           ; $43ca: $88
	adc  b                                           ; $43cb: $88
	adc  b                                           ; $43cc: $88
	adc  b                                           ; $43cd: $88
	adc  b                                           ; $43ce: $88
	adc  b                                           ; $43cf: $88
	adc  b                                           ; $43d0: $88
	adc  b                                           ; $43d1: $88
	adc  b                                           ; $43d2: $88
	adc  b                                           ; $43d3: $88
	adc  b                                           ; $43d4: $88
	adc  b                                           ; $43d5: $88
	adc  b                                           ; $43d6: $88
	adc  b                                           ; $43d7: $88
	adc  b                                           ; $43d8: $88
	adc  b                                           ; $43d9: $88
	adc  b                                           ; $43da: $88
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
	adc  b                                           ; $43e8: $88
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
	adc  b                                           ; $43f4: $88
	adc  b                                           ; $43f5: $88
	adc  b                                           ; $43f6: $88
	adc  b                                           ; $43f7: $88
	adc  b                                           ; $43f8: $88
	adc  b                                           ; $43f9: $88
	adc  b                                           ; $43fa: $88
	adc  b                                           ; $43fb: $88
	adc  b                                           ; $43fc: $88
	adc  b                                           ; $43fd: $88
	adc  b                                           ; $43fe: $88
	adc  b                                           ; $43ff: $88
	adc  b                                           ; $4400: $88
	adc  b                                           ; $4401: $88
	adc  b                                           ; $4402: $88
	adc  b                                           ; $4403: $88
	adc  b                                           ; $4404: $88
	adc  b                                           ; $4405: $88
	adc  b                                           ; $4406: $88
	adc  b                                           ; $4407: $88
	adc  b                                           ; $4408: $88
	adc  b                                           ; $4409: $88
	adc  b                                           ; $440a: $88
	adc  b                                           ; $440b: $88
	adc  b                                           ; $440c: $88
	adc  b                                           ; $440d: $88
	adc  b                                           ; $440e: $88
	adc  b                                           ; $440f: $88
	adc  b                                           ; $4410: $88
	adc  b                                           ; $4411: $88
	adc  b                                           ; $4412: $88
	adc  b                                           ; $4413: $88
	adc  b                                           ; $4414: $88
	adc  b                                           ; $4415: $88
	adc  b                                           ; $4416: $88
	adc  b                                           ; $4417: $88
	adc  b                                           ; $4418: $88
	adc  b                                           ; $4419: $88
	adc  b                                           ; $441a: $88
	adc  b                                           ; $441b: $88
	adc  b                                           ; $441c: $88
	adc  b                                           ; $441d: $88
	adc  b                                           ; $441e: $88
	adc  b                                           ; $441f: $88
	adc  b                                           ; $4420: $88
	adc  b                                           ; $4421: $88
	adc  b                                           ; $4422: $88
	adc  b                                           ; $4423: $88
	adc  b                                           ; $4424: $88
	adc  b                                           ; $4425: $88
	adc  b                                           ; $4426: $88
	adc  b                                           ; $4427: $88
	adc  b                                           ; $4428: $88
	adc  b                                           ; $4429: $88
	adc  b                                           ; $442a: $88
	adc  b                                           ; $442b: $88
	adc  b                                           ; $442c: $88
	adc  b                                           ; $442d: $88
	adc  b                                           ; $442e: $88
	adc  b                                           ; $442f: $88
	adc  b                                           ; $4430: $88
	adc  b                                           ; $4431: $88
	adc  b                                           ; $4432: $88
	adc  b                                           ; $4433: $88
	adc  b                                           ; $4434: $88
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
	adc  b                                           ; $4440: $88
	adc  b                                           ; $4441: $88
	adc  b                                           ; $4442: $88
	adc  b                                           ; $4443: $88
	adc  b                                           ; $4444: $88
	adc  b                                           ; $4445: $88
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

Jump_0a6_4495:
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
	adc  b                                           ; $47b6: $88
	adc  b                                           ; $47b7: $88
	adc  b                                           ; $47b8: $88
	adc  b                                           ; $47b9: $88
	adc  b                                           ; $47ba: $88
	adc  b                                           ; $47bb: $88
	adc  b                                           ; $47bc: $88
	adc  b                                           ; $47bd: $88
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
	adc  b                                           ; $47d8: $88
	adc  b                                           ; $47d9: $88
	adc  b                                           ; $47da: $88
	adc  b                                           ; $47db: $88
	adc  b                                           ; $47dc: $88
	adc  b                                           ; $47dd: $88
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
	adc  b                                           ; $47ed: $88
	adc  b                                           ; $47ee: $88
	adc  b                                           ; $47ef: $88
	adc  b                                           ; $47f0: $88
	adc  b                                           ; $47f1: $88
	adc  b                                           ; $47f2: $88
	adc  b                                           ; $47f3: $88
	adc  b                                           ; $47f4: $88
	adc  b                                           ; $47f5: $88
	adc  b                                           ; $47f6: $88
	adc  b                                           ; $47f7: $88
	adc  b                                           ; $47f8: $88
	adc  b                                           ; $47f9: $88
	adc  b                                           ; $47fa: $88
	adc  b                                           ; $47fb: $88
	adc  b                                           ; $47fc: $88
	adc  b                                           ; $47fd: $88
	adc  b                                           ; $47fe: $88
	adc  b                                           ; $47ff: $88
	adc  b                                           ; $4800: $88
	adc  b                                           ; $4801: $88
	adc  b                                           ; $4802: $88
	adc  b                                           ; $4803: $88
	adc  b                                           ; $4804: $88
	adc  b                                           ; $4805: $88
	adc  b                                           ; $4806: $88
	adc  b                                           ; $4807: $88
	adc  b                                           ; $4808: $88
	adc  b                                           ; $4809: $88
	adc  b                                           ; $480a: $88
	adc  b                                           ; $480b: $88
	adc  b                                           ; $480c: $88
	adc  b                                           ; $480d: $88
	adc  b                                           ; $480e: $88
	adc  b                                           ; $480f: $88
	adc  b                                           ; $4810: $88
	adc  b                                           ; $4811: $88
	adc  b                                           ; $4812: $88
	adc  b                                           ; $4813: $88
	adc  b                                           ; $4814: $88
	adc  b                                           ; $4815: $88
	adc  b                                           ; $4816: $88
	adc  b                                           ; $4817: $88
	adc  b                                           ; $4818: $88
	adc  b                                           ; $4819: $88
	adc  b                                           ; $481a: $88
	adc  b                                           ; $481b: $88
	adc  b                                           ; $481c: $88
	adc  b                                           ; $481d: $88
	adc  b                                           ; $481e: $88
	adc  b                                           ; $481f: $88
	adc  b                                           ; $4820: $88
	adc  b                                           ; $4821: $88
	adc  b                                           ; $4822: $88
	adc  b                                           ; $4823: $88
	adc  b                                           ; $4824: $88
	adc  b                                           ; $4825: $88
	adc  b                                           ; $4826: $88
	adc  b                                           ; $4827: $88
	adc  b                                           ; $4828: $88
	adc  b                                           ; $4829: $88
	adc  b                                           ; $482a: $88
	adc  b                                           ; $482b: $88
	adc  b                                           ; $482c: $88
	adc  b                                           ; $482d: $88
	adc  b                                           ; $482e: $88
	adc  b                                           ; $482f: $88
	adc  b                                           ; $4830: $88
	adc  b                                           ; $4831: $88
	adc  b                                           ; $4832: $88
	adc  b                                           ; $4833: $88
	adc  b                                           ; $4834: $88
	adc  b                                           ; $4835: $88
	adc  b                                           ; $4836: $88
	adc  b                                           ; $4837: $88
	adc  b                                           ; $4838: $88
	adc  b                                           ; $4839: $88
	adc  b                                           ; $483a: $88
	adc  b                                           ; $483b: $88
	adc  b                                           ; $483c: $88
	adc  b                                           ; $483d: $88
	adc  b                                           ; $483e: $88
	adc  b                                           ; $483f: $88
	adc  b                                           ; $4840: $88
	adc  b                                           ; $4841: $88
	adc  b                                           ; $4842: $88
	adc  b                                           ; $4843: $88
	adc  b                                           ; $4844: $88
	adc  b                                           ; $4845: $88
	adc  b                                           ; $4846: $88
	adc  b                                           ; $4847: $88
	adc  b                                           ; $4848: $88
	adc  b                                           ; $4849: $88
	adc  b                                           ; $484a: $88
	adc  b                                           ; $484b: $88
	adc  b                                           ; $484c: $88
	adc  b                                           ; $484d: $88
	adc  b                                           ; $484e: $88
	adc  b                                           ; $484f: $88
	adc  b                                           ; $4850: $88
	adc  b                                           ; $4851: $88
	adc  b                                           ; $4852: $88
	adc  b                                           ; $4853: $88
	adc  b                                           ; $4854: $88
	adc  b                                           ; $4855: $88
	adc  b                                           ; $4856: $88
	adc  b                                           ; $4857: $88
	adc  b                                           ; $4858: $88
	adc  b                                           ; $4859: $88
	adc  b                                           ; $485a: $88
	adc  b                                           ; $485b: $88
	adc  b                                           ; $485c: $88
	adc  b                                           ; $485d: $88
	adc  b                                           ; $485e: $88
	adc  b                                           ; $485f: $88
	adc  b                                           ; $4860: $88
	adc  b                                           ; $4861: $88
	adc  b                                           ; $4862: $88
	adc  b                                           ; $4863: $88
	adc  b                                           ; $4864: $88
	adc  b                                           ; $4865: $88
	adc  b                                           ; $4866: $88
	adc  b                                           ; $4867: $88
	adc  b                                           ; $4868: $88
	adc  b                                           ; $4869: $88
	adc  b                                           ; $486a: $88
	adc  b                                           ; $486b: $88
	adc  b                                           ; $486c: $88
	adc  b                                           ; $486d: $88
	adc  b                                           ; $486e: $88
	adc  b                                           ; $486f: $88
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
	adc  b                                           ; $487e: $88
	adc  b                                           ; $487f: $88
	adc  b                                           ; $4880: $88
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
	adc  b                                           ; $4893: $88
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
	adc  b                                           ; $48a6: $88
	adc  b                                           ; $48a7: $88
	adc  b                                           ; $48a8: $88
	adc  b                                           ; $48a9: $88
	adc  b                                           ; $48aa: $88
	adc  b                                           ; $48ab: $88
	adc  b                                           ; $48ac: $88
	adc  b                                           ; $48ad: $88
	adc  b                                           ; $48ae: $88
	adc  b                                           ; $48af: $88
	adc  b                                           ; $48b0: $88
	adc  b                                           ; $48b1: $88
	adc  b                                           ; $48b2: $88
	adc  b                                           ; $48b3: $88
	adc  b                                           ; $48b4: $88
	adc  b                                           ; $48b5: $88
	adc  b                                           ; $48b6: $88
	adc  b                                           ; $48b7: $88
	adc  b                                           ; $48b8: $88
	adc  b                                           ; $48b9: $88
	adc  b                                           ; $48ba: $88
	adc  b                                           ; $48bb: $88
	adc  b                                           ; $48bc: $88
	adc  b                                           ; $48bd: $88
	adc  b                                           ; $48be: $88
	adc  b                                           ; $48bf: $88
	adc  b                                           ; $48c0: $88
	adc  b                                           ; $48c1: $88
	adc  b                                           ; $48c2: $88
	adc  b                                           ; $48c3: $88
	adc  b                                           ; $48c4: $88
	adc  b                                           ; $48c5: $88
	adc  b                                           ; $48c6: $88
	adc  b                                           ; $48c7: $88
	adc  b                                           ; $48c8: $88
	adc  b                                           ; $48c9: $88
	adc  b                                           ; $48ca: $88
	adc  b                                           ; $48cb: $88
	adc  b                                           ; $48cc: $88
	adc  b                                           ; $48cd: $88
	adc  b                                           ; $48ce: $88
	adc  b                                           ; $48cf: $88
	adc  b                                           ; $48d0: $88
	adc  b                                           ; $48d1: $88
	adc  b                                           ; $48d2: $88
	adc  b                                           ; $48d3: $88
	adc  b                                           ; $48d4: $88
	adc  b                                           ; $48d5: $88
	adc  b                                           ; $48d6: $88
	adc  b                                           ; $48d7: $88
	adc  b                                           ; $48d8: $88
	adc  b                                           ; $48d9: $88
	adc  b                                           ; $48da: $88
	adc  b                                           ; $48db: $88
	adc  b                                           ; $48dc: $88
	adc  b                                           ; $48dd: $88
	adc  b                                           ; $48de: $88
	adc  b                                           ; $48df: $88
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
	adc  b                                           ; $48f9: $88
	adc  b                                           ; $48fa: $88
	adc  b                                           ; $48fb: $88
	adc  b                                           ; $48fc: $88
	adc  b                                           ; $48fd: $88
	adc  b                                           ; $48fe: $88
	adc  b                                           ; $48ff: $88
	adc  b                                           ; $4900: $88
	adc  c                                           ; $4901: $89
	sbc  c                                           ; $4902: $99
	adc  b                                           ; $4903: $88
	adc  b                                           ; $4904: $88
	adc  b                                           ; $4905: $88
	adc  b                                           ; $4906: $88
	adc  b                                           ; $4907: $88
	sbc  c                                           ; $4908: $99
	adc  c                                           ; $4909: $89
	sbc  c                                           ; $490a: $99
	sbc  c                                           ; $490b: $99
	sbc  b                                           ; $490c: $98
	sbc  b                                           ; $490d: $98
	ld   [hl], a                                     ; $490e: $77
	ld   h, [hl]                                     ; $490f: $66
	ld   d, l                                        ; $4910: $55
	ld   d, l                                        ; $4911: $55
	ld   d, l                                        ; $4912: $55
	ld   h, [hl]                                     ; $4913: $66
	ld   a, b                                        ; $4914: $78
	adc  d                                           ; $4915: $8a
	xor  d                                           ; $4916: $aa
	cp   h                                           ; $4917: $bc
	res  5, d                                        ; $4918: $cb $aa
	xor  b                                           ; $491a: $a8
	adc  b                                           ; $491b: $88
	halt                                             ; $491c: $76
	ld   d, l                                        ; $491d: $55
	ld   b, h                                        ; $491e: $44
	ld   b, h                                        ; $491f: $44
	ld   d, l                                        ; $4920: $55
	ld   d, [hl]                                     ; $4921: $56
	ld   [hl], a                                     ; $4922: $77
	sbc  c                                           ; $4923: $99
	xor  d                                           ; $4924: $aa
	cp   h                                           ; $4925: $bc
	cp   e                                           ; $4926: $bb
	cp   e                                           ; $4927: $bb
	cp   e                                           ; $4928: $bb
	cp   e                                           ; $4929: $bb
	cp   d                                           ; $492a: $ba
	sbc  b                                           ; $492b: $98
	halt                                             ; $492c: $76
	ld   d, h                                        ; $492d: $54
	ld   b, e                                        ; $492e: $43
	inc  sp                                          ; $492f: $33
	inc  [hl]                                        ; $4930: $34
	ld   b, l                                        ; $4931: $45
	ld   h, a                                        ; $4932: $67
	adc  b                                           ; $4933: $88
	sbc  d                                           ; $4934: $9a
	xor  e                                           ; $4935: $ab
	xor  e                                           ; $4936: $ab
	call z, $decd                                    ; $4937: $cc $cd $de
	call z, $97ba                                    ; $493a: $cc $ba $97
	ld   h, h                                        ; $493d: $64
	ld   [hl-], a                                    ; $493e: $32
	ld   hl, $2311                                   ; $493f: $21 $11 $23
	ld   b, l                                        ; $4942: $45
	ld   h, a                                        ; $4943: $67
	sbc  c                                           ; $4944: $99
	xor  c                                           ; $4945: $a9
	xor  e                                           ; $4946: $ab
	cp   e                                           ; $4947: $bb
	call $ffee                                       ; $4948: $cd $ee $ff
	db   $ed                                         ; $494b: $ed
	jp   z, $5497                                    ; $494c: $ca $97 $54

	ld   hl, $1111                                   ; $494f: $21 $11 $11
	ld   [de], a                                     ; $4952: $12
	ld   b, l                                        ; $4953: $45
	ld   h, a                                        ; $4954: $67
	adc  c                                           ; $4955: $89
	sbc  d                                           ; $4956: $9a
	xor  d                                           ; $4957: $aa
	call z, $ffde                                    ; $4958: $cc $de $ff
	rst  $38                                         ; $495b: $ff
	db   $fd                                         ; $495c: $fd
	jp   z, Jump_0a6_5397                            ; $495d: $ca $97 $53

	ld   hl, $1111                                   ; $4960: $21 $11 $11
	ld   [de], a                                     ; $4963: $12
	inc  [hl]                                        ; $4964: $34
	ld   h, a                                        ; $4965: $67
	adc  c                                           ; $4966: $89
	sbc  d                                           ; $4967: $9a
	cp   e                                           ; $4968: $bb
	call z, $ffde                                    ; $4969: $cc $de $ff
	rst  $38                                         ; $496c: $ff
	cp   $da                                         ; $496d: $fe $da
	sub  a                                           ; $496f: $97
	ld   d, e                                        ; $4970: $53
	ld   hl, $1111                                   ; $4971: $21 $11 $11
	ld   de, $5623                                   ; $4974: $11 $23 $56
	ld   a, b                                        ; $4977: $78
	xor  d                                           ; $4978: $aa
	cp   e                                           ; $4979: $bb
	call $ffef                                       ; $497a: $cd $ef $ff
	rst  $38                                         ; $497d: $ff
	cp   $cb                                         ; $497e: $fe $cb
	sub  a                                           ; $4980: $97
	ld   d, e                                        ; $4981: $53
	ld   hl, $1111                                   ; $4982: $21 $11 $11
	ld   de, $4512                                   ; $4985: $11 $12 $45
	ld   a, b                                        ; $4988: $78
	sbc  d                                           ; $4989: $9a
	cp   h                                           ; $498a: $bc
	xor  $ff                                         ; $498b: $ee $ff
	rst  $38                                         ; $498d: $ff
	rst  $38                                         ; $498e: $ff
	rst  $38                                         ; $498f: $ff
	jp   z, Jump_0a6_5387                            ; $4990: $ca $87 $53

	ld   hl, $1111                                   ; $4993: $21 $11 $11
	ld   de, $3412                                   ; $4996: $11 $12 $34
	ld   h, a                                        ; $4999: $67
	adc  d                                           ; $499a: $8a
	cp   l                                           ; $499b: $bd
	rst  $28                                         ; $499c: $ef
	rst  $38                                         ; $499d: $ff
	rst  $38                                         ; $499e: $ff
	rst  $38                                         ; $499f: $ff
	rst  $38                                         ; $49a0: $ff
	db   $db                                         ; $49a1: $db
	add  a                                           ; $49a2: $87
	ld   d, e                                        ; $49a3: $53
	ld   hl, $1111                                   ; $49a4: $21 $11 $11
	ld   de, $2311                                   ; $49a7: $11 $11 $23
	ld   d, [hl]                                     ; $49aa: $56
	ld   a, c                                        ; $49ab: $79
	cp   h                                           ; $49ac: $bc
	rst  JumpTable                                         ; $49ad: $df
	rst  $38                                         ; $49ae: $ff
	rst  $38                                         ; $49af: $ff
	rst  $38                                         ; $49b0: $ff
	rst  $38                                         ; $49b1: $ff
	db   $db                                         ; $49b2: $db
	and  a                                           ; $49b3: $a7
	ld   h, h                                        ; $49b4: $64
	ld   [hl-], a                                    ; $49b5: $32
	ld   de, $1111                                   ; $49b6: $11 $11 $11
	ld   de, $4523                                   ; $49b9: $11 $23 $45
	ld   l, b                                        ; $49bc: $68
	xor  e                                           ; $49bd: $ab
	adc  $ff                                         ; $49be: $ce $ff
	rst  $38                                         ; $49c0: $ff
	rst  $38                                         ; $49c1: $ff
	rst  $38                                         ; $49c2: $ff
	db   $ec                                         ; $49c3: $ec
	xor  b                                           ; $49c4: $a8
	ld   [hl], l                                     ; $49c5: $75
	ld   b, e                                        ; $49c6: $43
	ld   hl, $1111                                   ; $49c7: $21 $11 $11
	ld   de, $3412                                   ; $49ca: $11 $12 $34
	ld   d, [hl]                                     ; $49cd: $56
	ld   a, c                                        ; $49ce: $79
	xor  e                                           ; $49cf: $ab
	rst  JumpTable                                         ; $49d0: $df
	rst  $38                                         ; $49d1: $ff
	rst  $38                                         ; $49d2: $ff
	rst  $38                                         ; $49d3: $ff
	xor  $ca                                         ; $49d4: $ee $ca
	xor  b                                           ; $49d6: $a8
	ld   [hl], l                                     ; $49d7: $75
	ld   b, e                                        ; $49d8: $43
	ld   [hl-], a                                    ; $49d9: $32
	ld   hl, $1211                                   ; $49da: $21 $11 $12
	inc  hl                                          ; $49dd: $23
	inc  [hl]                                        ; $49de: $34
	ld   d, [hl]                                     ; $49df: $56
	ld   a, b                                        ; $49e0: $78
	sbc  e                                           ; $49e1: $9b
	adc  $ef                                         ; $49e2: $ce $ef
	rst  $38                                         ; $49e4: $ff
	rst  $38                                         ; $49e5: $ff
	db   $fd                                         ; $49e6: $fd
	res  5, c                                        ; $49e7: $cb $a9
	add  a                                           ; $49e9: $87
	ld   h, l                                        ; $49ea: $65
	ld   b, e                                        ; $49eb: $43
	ld   [hl-], a                                    ; $49ec: $32
	ld   [hl+], a                                    ; $49ed: $22
	ld   [hl+], a                                    ; $49ee: $22
	inc  hl                                          ; $49ef: $23
	inc  [hl]                                        ; $49f0: $34
	ld   b, l                                        ; $49f1: $45
	ld   d, [hl]                                     ; $49f2: $56
	ld   a, c                                        ; $49f3: $79
	sbc  d                                           ; $49f4: $9a
	call $ffde                                       ; $49f5: $cd $de $ff
	db   $ed                                         ; $49f8: $ed
	db   $dd                                         ; $49f9: $dd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49fa: $cf
	jp   z, $cbb8                                    ; $49fb: $ca $b8 $cb

	ld   l, b                                        ; $49fe: $68
	ld   h, l                                        ; $49ff: $65
	ld   b, e                                        ; $4a00: $43
	ld   b, h                                        ; $4a01: $44
	ld   d, d                                        ; $4a02: $52
	inc  bc                                          ; $4a03: $03
	ld   b, e                                        ; $4a04: $43
	inc  sp                                          ; $4a05: $33
	adc  d                                           ; $4a06: $8a
	and  [hl]                                        ; $4a07: $a6
	ld   a, l                                        ; $4a08: $7d
	xor  e                                           ; $4a09: $ab
	rst  $38                                         ; $4a0a: $ff
	db   $fc                                         ; $4a0b: $fc
	cp   e                                           ; $4a0c: $bb
	rst  $38                                         ; $4a0d: $ff
	and  $48                                         ; $4a0e: $e6 $48
	ld   d, c                                        ; $4a10: $51
	add  hl, de                                      ; $4a11: $19
	ld   sp, $1111                                   ; $4a12: $31 $11 $11
	ld   [de], a                                     ; $4a15: $12
	xor  d                                           ; $4a16: $aa
	call z, $ffcf                                    ; $4a17: $cc $cf $ff
	rst  $38                                         ; $4a1a: $ff
	rst  $38                                         ; $4a1b: $ff
	db   $fd                                         ; $4a1c: $fd
	jp   z, $1132                                    ; $4a1d: $ca $32 $11

	ld   de, $1111                                   ; $4a20: $11 $11 $11
	ld   de, $bf11                                   ; $4a23: $11 $11 $bf
	rst  $38                                         ; $4a26: $ff
	rst  $38                                         ; $4a27: $ff
	rst  $38                                         ; $4a28: $ff
	rst  $38                                         ; $4a29: $ff
	rst  $38                                         ; $4a2a: $ff
	rst  $38                                         ; $4a2b: $ff
	db   $e3                                         ; $4a2c: $e3
	ld   de, $1111                                   ; $4a2d: $11 $11 $11
	ld   de, $1111                                   ; $4a30: $11 $11 $11
	rst  $38                                         ; $4a33: $ff
	ld   a, a                                        ; $4a34: $7f
	rst  $38                                         ; $4a35: $ff
	rst  $38                                         ; $4a36: $ff
	rst  $38                                         ; $4a37: $ff
	cp   $ff                                         ; $4a38: $fe $ff
	and  c                                           ; $4a3a: $a1
	ld   de, $1111                                   ; $4a3b: $11 $11 $11
	ld   de, $1311                                   ; $4a3e: $11 $11 $13
	rst  $38                                         ; $4a41: $ff
	rst  $38                                         ; $4a42: $ff
	rst  $38                                         ; $4a43: $ff
	rst  $38                                         ; $4a44: $ff
	rst  $38                                         ; $4a45: $ff
	ei                                               ; $4a46: $fb
	cp   $41                                         ; $4a47: $fe $41
	ld   de, $1111                                   ; $4a49: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $4a4c: $11 $12 $ff
	rst  $38                                         ; $4a4f: $ff
	rst  $38                                         ; $4a50: $ff
	rst  $38                                         ; $4a51: $ff
	ei                                               ; $4a52: $fb
	rst  $38                                         ; $4a53: $ff
	ld   a, [$1141]                                  ; $4a54: $fa $41 $11
	ld   de, $1111                                   ; $4a57: $11 $11 $11
	ld   e, c                                        ; $4a5a: $59
	rst  $38                                         ; $4a5b: $ff
	rst  $38                                         ; $4a5c: $ff
	rst  $38                                         ; $4a5d: $ff
	rst  $38                                         ; $4a5e: $ff
	ld   e, [hl]                                     ; $4a5f: $5e
	db   $fc                                         ; $4a60: $fc
	and  h                                           ; $4a61: $a4
	ld   b, c                                        ; $4a62: $41
	ld   de, $1111                                   ; $4a63: $11 $11 $11
	add  e                                           ; $4a66: $83
	rra                                              ; $4a67: $1f
	rst  $38                                         ; $4a68: $ff
	rst  $38                                         ; $4a69: $ff
	rst  $38                                         ; $4a6a: $ff
	rst  $38                                         ; $4a6b: $ff
	call $d1ff                                       ; $4a6c: $cd $ff $d1
	ld   de, $1111                                   ; $4a6f: $11 $11 $11
	ld   de, $8d95                                   ; $4a72: $11 $95 $8d
	rst  $38                                         ; $4a75: $ff
	rst  $38                                         ; $4a76: $ff
	rst  $38                                         ; $4a77: $ff
	inc  d                                           ; $4a78: $14
	rst  $38                                         ; $4a79: $ff
	add  [hl]                                        ; $4a7a: $86
	push hl                                          ; $4a7b: $e5
	ld   de, $1111                                   ; $4a7c: $11 $11 $11
	ld   de, $ff19                                   ; $4a7f: $11 $19 $ff
	rst  $38                                         ; $4a82: $ff
	rst  $38                                         ; $4a83: $ff
	rst  $38                                         ; $4a84: $ff
	xor  a                                           ; $4a85: $af
	adc  $d3                                         ; $4a86: $ce $d3
	ld   de, $1111                                   ; $4a88: $11 $11 $11
	ld   de, $aa18                                   ; $4a8b: $11 $18 $aa
	rst  $38                                         ; $4a8e: $ff
	cp   $ff                                         ; $4a8f: $fe $ff
	sub  c                                           ; $4a91: $91
	rst  $38                                         ; $4a92: $ff
	ld   h, a                                        ; $4a93: $67
	add  $11                                         ; $4a94: $c6 $11
	ld   de, $1111                                   ; $4a96: $11 $11 $11
	inc  e                                           ; $4a99: $1c
	rst  $38                                         ; $4a9a: $ff
	rst  $38                                         ; $4a9b: $ff
	xor  a                                           ; $4a9c: $af
	push af                                          ; $4a9d: $f5
	xor  a                                           ; $4a9e: $af
	jp   z, $11d8                                    ; $4a9f: $ca $d8 $11

	ld   de, $1111                                   ; $4aa2: $11 $11 $11
	ld   de, $fcbf                                   ; $4aa5: $11 $bf $fc
	rst  $38                                         ; $4aa8: $ff
	adc  a                                           ; $4aa9: $8f
	rst  $38                                         ; $4aaa: $ff
	cp   a                                           ; $4aab: $bf
	cp   a                                           ; $4aac: $bf
	or   c                                           ; $4aad: $b1
	ld   de, $1111                                   ; $4aae: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $4ab1: $11 $14 $ff
	rst  $38                                         ; $4ab4: $ff
	rst  $38                                         ; $4ab5: $ff
	rst  $38                                         ; $4ab6: $ff
	rla                                              ; $4ab7: $17
	rst  $38                                         ; $4ab8: $ff
	and  e                                           ; $4ab9: $a3
	ld   h, c                                        ; $4aba: $61
	ld   de, $1111                                   ; $4abb: $11 $11 $11
	ld   de, $ff84                                   ; $4abe: $11 $84 $ff
	rst  $38                                         ; $4ac1: $ff
	rst  $38                                         ; $4ac2: $ff
	cp   a                                           ; $4ac3: $bf
	xor  h                                           ; $4ac4: $ac
	xor  a                                           ; $4ac5: $af
	reti                                             ; $4ac6: $d9


	ld   de, $1111                                   ; $4ac7: $11 $11 $11
	ld   de, $8f12                                   ; $4aca: $11 $12 $8f
	rst  $38                                         ; $4acd: $ff
	rst  $38                                         ; $4ace: $ff
	rst  $38                                         ; $4acf: $ff
	rst  $38                                         ; $4ad0: $ff
	ld   l, c                                        ; $4ad1: $69
	rst  JumpTable                                         ; $4ad2: $df
	ld   b, c                                        ; $4ad3: $41
	ld   de, $1111                                   ; $4ad4: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $4ad7: $11 $11 $ff
	rst  $38                                         ; $4ada: $ff
	rst  $38                                         ; $4adb: $ff
	db   $fd                                         ; $4adc: $fd
	db   $fc                                         ; $4add: $fc
	ret                                              ; $4ade: $c9


	ld   sp, hl                                      ; $4adf: $f9
	ld   de, $1111                                   ; $4ae0: $11 $11 $11
	ld   de, $f311                                   ; $4ae3: $11 $11 $f3
	rra                                              ; $4ae6: $1f
	db   $f4                                         ; $4ae7: $f4
	cpl                                              ; $4ae8: $2f
	pop  af                                          ; $4ae9: $f1
	rra                                              ; $4aea: $1f
	ld   a, [$d11e]                                  ; $4aeb: $fa $1e $d1
	ld   de, $1111                                   ; $4aee: $11 $11 $11
	ld   de, $9f3a                                   ; $4af1: $11 $3a $9f
	rst  $38                                         ; $4af4: $ff
	rst  $38                                         ; $4af5: $ff
	db   $fd                                         ; $4af6: $fd
	ld   l, e                                        ; $4af7: $6b
	ei                                               ; $4af8: $fb
	ld   a, l                                        ; $4af9: $7d
	add  c                                           ; $4afa: $81
	ld   de, $1111                                   ; $4afb: $11 $11 $11
	ld   de, $5f41                                   ; $4afe: $11 $41 $5f
	rst  $38                                         ; $4b01: $ff
	rst  $38                                         ; $4b02: $ff
	rst  $38                                         ; $4b03: $ff
	db   $dd                                         ; $4b04: $dd
	rst  $38                                         ; $4b05: $ff
	xor  e                                           ; $4b06: $ab
	and  [hl]                                        ; $4b07: $a6
	ld   de, $1111                                   ; $4b08: $11 $11 $11
	ld   de, $5e11                                   ; $4b0b: $11 $11 $5e
	cp   $ff                                         ; $4b0e: $fe $ff
	rst  $38                                         ; $4b10: $ff
	rst  $38                                         ; $4b11: $ff
	db   $fd                                         ; $4b12: $fd
	cp   a                                           ; $4b13: $bf
	ld   sp, hl                                      ; $4b14: $f9
	inc  de                                          ; $4b15: $13
	ld   de, $2111                                   ; $4b16: $11 $11 $21
	ld   de, $2d21                                   ; $4b19: $11 $21 $2d
	db   $fd                                         ; $4b1c: $fd
	rst  $38                                         ; $4b1d: $ff
	rst  $38                                         ; $4b1e: $ff
	rst  $38                                         ; $4b1f: $ff
	cp   $df                                         ; $4b20: $fe $df
	ld   a, [$1121]                                  ; $4b22: $fa $21 $11
	ld   de, $1111                                   ; $4b25: $11 $11 $11
	ld   [de], a                                     ; $4b28: $12
	inc  de                                          ; $4b29: $13
	rst  $28                                         ; $4b2a: $ef
	cp   a                                           ; $4b2b: $bf
	rst  $38                                         ; $4b2c: $ff
	rst  $38                                         ; $4b2d: $ff
	rst  $38                                         ; $4b2e: $ff
	xor  e                                           ; $4b2f: $ab
	db   $eb                                         ; $4b30: $eb
	add  h                                           ; $4b31: $84
	ld   [de], a                                     ; $4b32: $12
	ld   de, $1111                                   ; $4b33: $11 $11 $11
	ld   de, $1934                                   ; $4b36: $11 $34 $19
	rst  $38                                         ; $4b39: $ff
	rst  $38                                         ; $4b3a: $ff
	rst  $38                                         ; $4b3b: $ff
	db   $dd                                         ; $4b3c: $dd
	cp   $7d                                         ; $4b3d: $fe $7d
	reti                                             ; $4b3f: $d9


	ld   h, e                                        ; $4b40: $63
	ld   hl, $1111                                   ; $4b41: $21 $11 $11
	ld   de, $2311                                   ; $4b44: $11 $11 $23
	ld   e, e                                        ; $4b47: $5b
	rst  $38                                         ; $4b48: $ff
	rst  $38                                         ; $4b49: $ff
	rst  $38                                         ; $4b4a: $ff
	rst  $28                                         ; $4b4b: $ef
	call z, $baec                                    ; $4b4c: $cc $ec $ba
	ld   d, c                                        ; $4b4f: $51
	ld   de, $1111                                   ; $4b50: $11 $11 $11
	ld   de, $1512                                   ; $4b53: $11 $12 $15
	db   $dd                                         ; $4b56: $dd
	xor  a                                           ; $4b57: $af
	rst  $38                                         ; $4b58: $ff
	rst  $38                                         ; $4b59: $ff
	cp   $ae                                         ; $4b5a: $fe $ae
	ei                                               ; $4b5c: $fb
	ld   e, c                                        ; $4b5d: $59
	ld   b, c                                        ; $4b5e: $41
	ld   de, $1111                                   ; $4b5f: $11 $11 $11
	ld   de, $8d11                                   ; $4b62: $11 $11 $8d
	cp   a                                           ; $4b65: $bf
	rst  $38                                         ; $4b66: $ff
	rst  $38                                         ; $4b67: $ff
	rst  $38                                         ; $4b68: $ff
	jp   z, Jump_0a6_77ff                            ; $4b69: $ca $ff $77

	sub  h                                           ; $4b6c: $94
	ld   de, $1111                                   ; $4b6d: $11 $11 $11
	ld   de, $4911                                   ; $4b70: $11 $11 $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b73: $cf
	rst  $38                                         ; $4b74: $ff
	rst  $38                                         ; $4b75: $ff
	rst  $38                                         ; $4b76: $ff
	cp   $ef                                         ; $4b77: $fe $ef
	jp   z, $1171                                    ; $4b79: $ca $71 $11

	ld   de, $1111                                   ; $4b7c: $11 $11 $11
	ld   de, $ef16                                   ; $4b7f: $11 $16 $ef
	rst  $38                                         ; $4b82: $ff
	rst  $38                                         ; $4b83: $ff
	rst  $38                                         ; $4b84: $ff
	cp   $de                                         ; $4b85: $fe $de
	ld   [$1171], a                                  ; $4b87: $ea $71 $11
	ld   de, $1111                                   ; $4b8a: $11 $11 $11
	ld   de, $ef5b                                   ; $4b8d: $11 $5b $ef
	rst  $38                                         ; $4b90: $ff
	rst  $38                                         ; $4b91: $ff
	rst  $38                                         ; $4b92: $ff
	db   $fc                                         ; $4b93: $fc
	rst  $38                                         ; $4b94: $ff
	cp   b                                           ; $4b95: $b8
	ld   d, c                                        ; $4b96: $51
	ld   de, $1111                                   ; $4b97: $11 $11 $11
	ld   de, $db18                                   ; $4b9a: $11 $18 $db
	rst  $38                                         ; $4b9d: $ff
	rst  $38                                         ; $4b9e: $ff
	rst  $38                                         ; $4b9f: $ff
	cp   $bf                                         ; $4ba0: $fe $bf
	db   $fd                                         ; $4ba2: $fd
	ld   [hl], h                                     ; $4ba3: $74
	ld   de, $1111                                   ; $4ba4: $11 $11 $11
	ld   de, $6914                                   ; $4ba7: $11 $14 $69
	rst  $38                                         ; $4baa: $ff
	rst  $38                                         ; $4bab: $ff
	rst  $38                                         ; $4bac: $ff
	rst  $38                                         ; $4bad: $ff
	cp   $ed                                         ; $4bae: $fe $ed
	jp   hl                                          ; $4bb0: $e9


	ld   de, $1111                                   ; $4bb1: $11 $11 $11
	ld   de, $2811                                   ; $4bb4: $11 $11 $28
	rst  $28                                         ; $4bb7: $ef
	rst  $38                                         ; $4bb8: $ff
	rst  $38                                         ; $4bb9: $ff
	rst  $38                                         ; $4bba: $ff
	db   $fd                                         ; $4bbb: $fd
	rst  $38                                         ; $4bbc: $ff
	cp   d                                           ; $4bbd: $ba
	ld   d, c                                        ; $4bbe: $51
	ld   de, $1111                                   ; $4bbf: $11 $11 $11
	ld   de, $ef68                                   ; $4bc2: $11 $68 $ef
	rst  $38                                         ; $4bc5: $ff
	rst  $38                                         ; $4bc6: $ff
	rst  $38                                         ; $4bc7: $ff
	ei                                               ; $4bc8: $fb
	rst  $28                                         ; $4bc9: $ef
	ld   sp, hl                                      ; $4bca: $f9
	ld   b, c                                        ; $4bcb: $41
	ld   de, $1111                                   ; $4bcc: $11 $11 $11
	ld   [de], a                                     ; $4bcf: $12
	add  hl, de                                      ; $4bd0: $19
	rst  $38                                         ; $4bd1: $ff
	rst  $38                                         ; $4bd2: $ff
	rst  $38                                         ; $4bd3: $ff
	db   $fd                                         ; $4bd4: $fd
	rst  $38                                         ; $4bd5: $ff
	reti                                             ; $4bd6: $d9


	db   $ec                                         ; $4bd7: $ec
	ld   b, c                                        ; $4bd8: $41
	ld   de, $1111                                   ; $4bd9: $11 $11 $11
	ld   de, $ff3c                                   ; $4bdc: $11 $3c $ff
	rst  $38                                         ; $4bdf: $ff
	rst  $38                                         ; $4be0: $ff
	rst  $38                                         ; $4be1: $ff
	cp   $ef                                         ; $4be2: $fe $ef
	ret  c                                           ; $4be4: $d8

	ld   d, c                                        ; $4be5: $51
	ld   de, $1111                                   ; $4be6: $11 $11 $11
	ld   de, $ff5e                                   ; $4be9: $11 $5e $ff
	rst  $38                                         ; $4bec: $ff
	rst  $38                                         ; $4bed: $ff
	rst  $38                                         ; $4bee: $ff
	rst  $38                                         ; $4bef: $ff
	rst  $38                                         ; $4bf0: $ff
	ld   a, [$1141]                                  ; $4bf1: $fa $41 $11
	ld   de, $1111                                   ; $4bf4: $11 $11 $11
	add  hl, sp                                      ; $4bf7: $39
	rst  $28                                         ; $4bf8: $ef
	rst  $38                                         ; $4bf9: $ff
	rst  $38                                         ; $4bfa: $ff
	rst  $38                                         ; $4bfb: $ff
	rst  $38                                         ; $4bfc: $ff
	rst  $38                                         ; $4bfd: $ff
	ei                                               ; $4bfe: $fb
	add  c                                           ; $4bff: $81
	ld   de, $1111                                   ; $4c00: $11 $11 $11
	ld   de, $af27                                   ; $4c03: $11 $27 $af
	rst  $38                                         ; $4c06: $ff
	rst  $38                                         ; $4c07: $ff
	rst  $38                                         ; $4c08: $ff
	db   $fd                                         ; $4c09: $fd
	rst  $38                                         ; $4c0a: $ff
	rst  $38                                         ; $4c0b: $ff
	jp   z, $1111                                    ; $4c0c: $ca $11 $11

	ld   de, $1122                                   ; $4c0f: $11 $22 $11
	ld   l, d                                        ; $4c12: $6a
	xor  d                                           ; $4c13: $aa
	rst  $28                                         ; $4c14: $ef
	cp   $ff                                         ; $4c15: $fe $ff
	rst  $38                                         ; $4c17: $ff
	rst  $38                                         ; $4c18: $ff
	db   $fc                                         ; $4c19: $fc
	cp   b                                           ; $4c1a: $b8
	ld   de, $1114                                   ; $4c1b: $11 $14 $11
	inc  d                                           ; $4c1e: $14
	ld   d, c                                        ; $4c1f: $51
	rla                                              ; $4c20: $17
	and  l                                           ; $4c21: $a5
	sbc  c                                           ; $4c22: $99
	rst  $38                                         ; $4c23: $ff
	db   $db                                         ; $4c24: $db
	rst  $38                                         ; $4c25: $ff
	rst  JumpTable                                         ; $4c26: $df
	rst  JumpTable                                         ; $4c27: $df
	rst  $30                                         ; $4c28: $f7
	rla                                              ; $4c29: $17
	ld   [hl], c                                     ; $4c2a: $71
	ld   hl, $1167                                   ; $4c2b: $21 $67 $11
	ld   b, h                                        ; $4c2e: $44
	inc  h                                           ; $4c2f: $24
	ld   e, c                                        ; $4c30: $59
	adc  c                                           ; $4c31: $89
	jp   z, $ee8c                                    ; $4c32: $ca $8c $ee

	cp   b                                           ; $4c35: $b8
	xor  $89                                         ; $4c36: $ee $89
	sbc  l                                           ; $4c38: $9d
	and  e                                           ; $4c39: $a3
	ld   a, b                                        ; $4c3a: $78
	sub  [hl]                                        ; $4c3b: $96
	ld   b, e                                        ; $4c3c: $43
	adc  d                                           ; $4c3d: $8a
	inc  d                                           ; $4c3e: $14
	ld   l, c                                        ; $4c3f: $69
	ld   [hl], d                                     ; $4c40: $72
	ld   e, b                                        ; $4c41: $58
	ld   [hl], a                                     ; $4c42: $77
	ld   h, a                                        ; $4c43: $67
	xor  c                                           ; $4c44: $a9
	sbc  b                                           ; $4c45: $98
	cp   l                                           ; $4c46: $bd
	jp   z, $a99c                                    ; $4c47: $ca $9c $a9

	sbc  e                                           ; $4c4a: $9b
	ret  c                                           ; $4c4b: $d8

	ld   a, c                                        ; $4c4c: $79
	ld   [hl], a                                     ; $4c4d: $77
	ld   h, h                                        ; $4c4e: $64
	halt                                             ; $4c4f: $76
	ld   b, h                                        ; $4c50: $44
	ld   d, [hl]                                     ; $4c51: $56
	ld   d, h                                        ; $4c52: $54
	ld   h, a                                        ; $4c53: $67
	sbc  c                                           ; $4c54: $99
	adc  e                                           ; $4c55: $8b
	ret                                              ; $4c56: $c9


	sbc  h                                           ; $4c57: $9c
	cp   d                                           ; $4c58: $ba
	adc  e                                           ; $4c59: $8b
	jp   z, $969a                                    ; $4c5a: $ca $9a $96

	ld   h, h                                        ; $4c5d: $64
	ld   h, a                                        ; $4c5e: $67
	adc  b                                           ; $4c5f: $88
	ld   h, h                                        ; $4c60: $64
	ld   l, b                                        ; $4c61: $68
	ld   d, l                                        ; $4c62: $55
	ld   l, d                                        ; $4c63: $6a
	sub  a                                           ; $4c64: $97
	sbc  c                                           ; $4c65: $99
	and  a                                           ; $4c66: $a7
	adc  d                                           ; $4c67: $8a
	xor  c                                           ; $4c68: $a9
	sub  a                                           ; $4c69: $97
	ld   h, a                                        ; $4c6a: $67
	adc  b                                           ; $4c6b: $88
	ld   [hl], a                                     ; $4c6c: $77
	ld   [hl], a                                     ; $4c6d: $77
	ld   h, [hl]                                     ; $4c6e: $66
	ld   a, c                                        ; $4c6f: $79
	ld   [hl], a                                     ; $4c70: $77
	adc  b                                           ; $4c71: $88
	adc  b                                           ; $4c72: $88
	ld   a, c                                        ; $4c73: $79
	sbc  b                                           ; $4c74: $98
	ld   [hl], a                                     ; $4c75: $77
	sbc  c                                           ; $4c76: $99
	ld   [hl], a                                     ; $4c77: $77
	add  a                                           ; $4c78: $87
	ld   h, a                                        ; $4c79: $67
	ld   a, c                                        ; $4c7a: $79
	ld   h, a                                        ; $4c7b: $67
	ld   a, c                                        ; $4c7c: $79
	sub  [hl]                                        ; $4c7d: $96
	sbc  b                                           ; $4c7e: $98
	adc  b                                           ; $4c7f: $88
	ld   a, c                                        ; $4c80: $79
	adc  b                                           ; $4c81: $88
	ld   a, c                                        ; $4c82: $79
	sbc  c                                           ; $4c83: $99
	ld   [hl], a                                     ; $4c84: $77
	adc  b                                           ; $4c85: $88
	ld   h, [hl]                                     ; $4c86: $66
	adc  b                                           ; $4c87: $88
	add  a                                           ; $4c88: $87
	ld   [hl], a                                     ; $4c89: $77
	adc  c                                           ; $4c8a: $89
	adc  c                                           ; $4c8b: $89
	adc  c                                           ; $4c8c: $89
	adc  c                                           ; $4c8d: $89
	adc  c                                           ; $4c8e: $89
	adc  b                                           ; $4c8f: $88
	ld   [hl], a                                     ; $4c90: $77
	sbc  b                                           ; $4c91: $98
	ld   [hl], a                                     ; $4c92: $77
	ld   [hl], a                                     ; $4c93: $77
	ld   h, [hl]                                     ; $4c94: $66
	ld   h, a                                        ; $4c95: $67
	add  a                                           ; $4c96: $87
	adc  b                                           ; $4c97: $88
	adc  b                                           ; $4c98: $88
	ld   a, b                                        ; $4c99: $78
	ld   [hl], a                                     ; $4c9a: $77
	adc  c                                           ; $4c9b: $89
	xor  c                                           ; $4c9c: $a9
	sbc  b                                           ; $4c9d: $98
	ld   [hl], a                                     ; $4c9e: $77
	ld   [hl], a                                     ; $4c9f: $77
	ld   [hl], a                                     ; $4ca0: $77
	halt                                             ; $4ca1: $76
	ld   [hl], a                                     ; $4ca2: $77
	ld   [hl], a                                     ; $4ca3: $77
	ld   [hl], a                                     ; $4ca4: $77
	ld   [hl], a                                     ; $4ca5: $77
	ld   a, b                                        ; $4ca6: $78
	sbc  c                                           ; $4ca7: $99
	sbc  b                                           ; $4ca8: $98
	adc  b                                           ; $4ca9: $88
	sbc  c                                           ; $4caa: $99
	add  a                                           ; $4cab: $87
	adc  b                                           ; $4cac: $88
	sbc  b                                           ; $4cad: $98
	adc  b                                           ; $4cae: $88
	ld   [hl], a                                     ; $4caf: $77
	ld   h, a                                        ; $4cb0: $67
	ld   [hl], a                                     ; $4cb1: $77
	ld   a, b                                        ; $4cb2: $78
	adc  b                                           ; $4cb3: $88
	ld   [hl], a                                     ; $4cb4: $77
	adc  b                                           ; $4cb5: $88
	adc  b                                           ; $4cb6: $88
	adc  c                                           ; $4cb7: $89
	sbc  c                                           ; $4cb8: $99
	adc  b                                           ; $4cb9: $88
	adc  b                                           ; $4cba: $88
	ld   [hl], a                                     ; $4cbb: $77
	ld   [hl], a                                     ; $4cbc: $77
	adc  b                                           ; $4cbd: $88
	ld   [hl], a                                     ; $4cbe: $77
	ld   [hl], a                                     ; $4cbf: $77
	ld   [hl], a                                     ; $4cc0: $77
	adc  b                                           ; $4cc1: $88
	adc  b                                           ; $4cc2: $88
	adc  c                                           ; $4cc3: $89
	adc  b                                           ; $4cc4: $88
	sbc  b                                           ; $4cc5: $98
	sbc  b                                           ; $4cc6: $98
	ld   a, d                                        ; $4cc7: $7a
	ld   h, a                                        ; $4cc8: $67
	sub  [hl]                                        ; $4cc9: $96
	and  a                                           ; $4cca: $a7
	ld   a, b                                        ; $4ccb: $78
	ld   e, b                                        ; $4ccc: $58
	ld   h, [hl]                                     ; $4ccd: $66
	sbc  b                                           ; $4cce: $98
	adc  c                                           ; $4ccf: $89
	ld   a, c                                        ; $4cd0: $79
	add  a                                           ; $4cd1: $87
	adc  c                                           ; $4cd2: $89
	xor  c                                           ; $4cd3: $a9
	sbc  c                                           ; $4cd4: $99
	adc  b                                           ; $4cd5: $88
	ld   [hl], a                                     ; $4cd6: $77
	adc  b                                           ; $4cd7: $88
	adc  b                                           ; $4cd8: $88
	add  a                                           ; $4cd9: $87
	ld   [hl], a                                     ; $4cda: $77
	ld   [hl], a                                     ; $4cdb: $77
	sbc  b                                           ; $4cdc: $98
	sbc  c                                           ; $4cdd: $99
	adc  b                                           ; $4cde: $88
	adc  b                                           ; $4cdf: $88
	ld   a, c                                        ; $4ce0: $79
	adc  c                                           ; $4ce1: $89
	sbc  c                                           ; $4ce2: $99
	sbc  b                                           ; $4ce3: $98
	halt                                             ; $4ce4: $76
	and  a                                           ; $4ce5: $a7
	adc  c                                           ; $4ce6: $89
	ld   l, c                                        ; $4ce7: $69
	ld   [hl], a                                     ; $4ce8: $77
	ld   [hl], a                                     ; $4ce9: $77
	sbc  b                                           ; $4cea: $98
	sbc  b                                           ; $4ceb: $98
	sbc  c                                           ; $4cec: $99
	sub  a                                           ; $4ced: $97
	adc  c                                           ; $4cee: $89
	adc  c                                           ; $4cef: $89
	ld   a, b                                        ; $4cf0: $78
	adc  b                                           ; $4cf1: $88
	ld   a, b                                        ; $4cf2: $78
	sub  a                                           ; $4cf3: $97
	adc  b                                           ; $4cf4: $88
	add  a                                           ; $4cf5: $87
	add  a                                           ; $4cf6: $87
	ld   [hl], a                                     ; $4cf7: $77
	ld   a, c                                        ; $4cf8: $79
	adc  c                                           ; $4cf9: $89
	add  a                                           ; $4cfa: $87
	sbc  c                                           ; $4cfb: $99
	ld   a, b                                        ; $4cfc: $78
	ld   a, c                                        ; $4cfd: $79
	sbc  b                                           ; $4cfe: $98
	adc  b                                           ; $4cff: $88
	adc  b                                           ; $4d00: $88
	ld   [hl], a                                     ; $4d01: $77
	ld   a, c                                        ; $4d02: $79
	sbc  b                                           ; $4d03: $98
	adc  b                                           ; $4d04: $88
	ld   a, b                                        ; $4d05: $78
	add  a                                           ; $4d06: $87
	adc  c                                           ; $4d07: $89
	adc  c                                           ; $4d08: $89
	sbc  c                                           ; $4d09: $99
	adc  b                                           ; $4d0a: $88
	adc  b                                           ; $4d0b: $88
	ld   a, c                                        ; $4d0c: $79
	adc  b                                           ; $4d0d: $88
	adc  b                                           ; $4d0e: $88
	sub  a                                           ; $4d0f: $97
	adc  b                                           ; $4d10: $88
	ld   [hl], a                                     ; $4d11: $77
	adc  b                                           ; $4d12: $88
	sbc  b                                           ; $4d13: $98
	adc  b                                           ; $4d14: $88
	adc  b                                           ; $4d15: $88
	ld   a, c                                        ; $4d16: $79
	sbc  c                                           ; $4d17: $99
	add  a                                           ; $4d18: $87
	sbc  b                                           ; $4d19: $98
	ld   [hl], a                                     ; $4d1a: $77
	ld   l, c                                        ; $4d1b: $69
	adc  b                                           ; $4d1c: $88
	adc  b                                           ; $4d1d: $88
	add  a                                           ; $4d1e: $87
	add  a                                           ; $4d1f: $87
	adc  b                                           ; $4d20: $88
	sbc  c                                           ; $4d21: $99
	sbc  c                                           ; $4d22: $99
	ld   a, b                                        ; $4d23: $78
	sbc  b                                           ; $4d24: $98
	adc  c                                           ; $4d25: $89
	adc  c                                           ; $4d26: $89
	adc  b                                           ; $4d27: $88
	adc  b                                           ; $4d28: $88
	ld   [hl], a                                     ; $4d29: $77
	adc  c                                           ; $4d2a: $89
	adc  b                                           ; $4d2b: $88
	adc  b                                           ; $4d2c: $88
	ld   a, b                                        ; $4d2d: $78
	ld   a, b                                        ; $4d2e: $78
	adc  b                                           ; $4d2f: $88
	sbc  b                                           ; $4d30: $98
	sbc  c                                           ; $4d31: $99
	adc  b                                           ; $4d32: $88
	adc  b                                           ; $4d33: $88
	ld   a, c                                        ; $4d34: $79
	xor  b                                           ; $4d35: $a8
	sbc  b                                           ; $4d36: $98
	add  a                                           ; $4d37: $87
	add  a                                           ; $4d38: $87
	ld   a, b                                        ; $4d39: $78
	adc  b                                           ; $4d3a: $88
	adc  b                                           ; $4d3b: $88
	add  a                                           ; $4d3c: $87
	adc  b                                           ; $4d3d: $88
	adc  b                                           ; $4d3e: $88
	ld   a, c                                        ; $4d3f: $79
	xor  b                                           ; $4d40: $a8
	adc  b                                           ; $4d41: $88
	sbc  c                                           ; $4d42: $99
	add  a                                           ; $4d43: $87
	ld   a, b                                        ; $4d44: $78
	adc  b                                           ; $4d45: $88
	adc  b                                           ; $4d46: $88
	sbc  b                                           ; $4d47: $98
	adc  b                                           ; $4d48: $88
	ld   a, b                                        ; $4d49: $78
	adc  b                                           ; $4d4a: $88
	adc  b                                           ; $4d4b: $88
	sbc  c                                           ; $4d4c: $99
	sbc  b                                           ; $4d4d: $98
	add  a                                           ; $4d4e: $87
	ld   a, b                                        ; $4d4f: $78
	adc  b                                           ; $4d50: $88
	adc  b                                           ; $4d51: $88
	adc  c                                           ; $4d52: $89
	sbc  b                                           ; $4d53: $98
	ld   a, b                                        ; $4d54: $78
	adc  b                                           ; $4d55: $88
	sub  a                                           ; $4d56: $97
	adc  b                                           ; $4d57: $88
	adc  b                                           ; $4d58: $88
	adc  b                                           ; $4d59: $88
	adc  b                                           ; $4d5a: $88
	add  a                                           ; $4d5b: $87
	adc  b                                           ; $4d5c: $88
	add  a                                           ; $4d5d: $87
	adc  c                                           ; $4d5e: $89
	adc  b                                           ; $4d5f: $88
	adc  c                                           ; $4d60: $89
	adc  b                                           ; $4d61: $88
	adc  b                                           ; $4d62: $88
	sbc  b                                           ; $4d63: $98
	adc  b                                           ; $4d64: $88
	adc  b                                           ; $4d65: $88
	add  a                                           ; $4d66: $87
	adc  b                                           ; $4d67: $88
	adc  b                                           ; $4d68: $88
	ld   a, b                                        ; $4d69: $78
	adc  b                                           ; $4d6a: $88
	adc  b                                           ; $4d6b: $88
	add  a                                           ; $4d6c: $87
	sbc  b                                           ; $4d6d: $98
	add  a                                           ; $4d6e: $87
	ld   a, b                                        ; $4d6f: $78
	sub  a                                           ; $4d70: $97
	adc  c                                           ; $4d71: $89
	ld   a, c                                        ; $4d72: $79
	adc  c                                           ; $4d73: $89
	sub  a                                           ; $4d74: $97
	add  a                                           ; $4d75: $87
	adc  b                                           ; $4d76: $88
	sbc  b                                           ; $4d77: $98
	ld   a, b                                        ; $4d78: $78
	sbc  b                                           ; $4d79: $98
	add  a                                           ; $4d7a: $87
	adc  c                                           ; $4d7b: $89
	ld   [hl], a                                     ; $4d7c: $77
	adc  b                                           ; $4d7d: $88
	adc  c                                           ; $4d7e: $89
	ld   [hl], a                                     ; $4d7f: $77
	sbc  b                                           ; $4d80: $98
	adc  c                                           ; $4d81: $89
	ld   a, b                                        ; $4d82: $78
	ld   a, c                                        ; $4d83: $79
	sbc  b                                           ; $4d84: $98
	add  a                                           ; $4d85: $87
	adc  c                                           ; $4d86: $89
	ld   a, b                                        ; $4d87: $78
	adc  b                                           ; $4d88: $88
	ld   [hl], a                                     ; $4d89: $77
	adc  b                                           ; $4d8a: $88
	sbc  b                                           ; $4d8b: $98
	ld   a, b                                        ; $4d8c: $78
	adc  b                                           ; $4d8d: $88
	adc  b                                           ; $4d8e: $88
	sbc  b                                           ; $4d8f: $98
	ld   [hl], a                                     ; $4d90: $77
	sbc  b                                           ; $4d91: $98
	add  a                                           ; $4d92: $87
	sbc  b                                           ; $4d93: $98
	ld   a, b                                        ; $4d94: $78
	adc  b                                           ; $4d95: $88
	ld   [hl], a                                     ; $4d96: $77
	add  a                                           ; $4d97: $87
	ld   a, b                                        ; $4d98: $78
	sbc  b                                           ; $4d99: $98
	ld   [hl], a                                     ; $4d9a: $77
	adc  c                                           ; $4d9b: $89
	adc  c                                           ; $4d9c: $89
	ld   a, b                                        ; $4d9d: $78
	adc  b                                           ; $4d9e: $88
	ld   a, b                                        ; $4d9f: $78
	adc  c                                           ; $4da0: $89
	add  a                                           ; $4da1: $87
	ld   a, c                                        ; $4da2: $79
	sbc  b                                           ; $4da3: $98
	ld   a, b                                        ; $4da4: $78
	adc  b                                           ; $4da5: $88
	ld   a, b                                        ; $4da6: $78
	sub  a                                           ; $4da7: $97
	adc  b                                           ; $4da8: $88
	sbc  b                                           ; $4da9: $98
	adc  c                                           ; $4daa: $89
	sbc  b                                           ; $4dab: $98
	ld   a, b                                        ; $4dac: $78
	adc  b                                           ; $4dad: $88
	adc  b                                           ; $4dae: $88
	add  a                                           ; $4daf: $87
	adc  c                                           ; $4db0: $89
	adc  b                                           ; $4db1: $88
	add  a                                           ; $4db2: $87
	adc  c                                           ; $4db3: $89
	ld   a, b                                        ; $4db4: $78
	sbc  b                                           ; $4db5: $98
	ld   [hl], a                                     ; $4db6: $77
	adc  b                                           ; $4db7: $88
	sub  a                                           ; $4db8: $97
	adc  b                                           ; $4db9: $88
	adc  c                                           ; $4dba: $89
	ld   a, b                                        ; $4dbb: $78
	adc  c                                           ; $4dbc: $89
	adc  b                                           ; $4dbd: $88
	add  a                                           ; $4dbe: $87
	adc  b                                           ; $4dbf: $88
	ld   [hl], a                                     ; $4dc0: $77
	adc  b                                           ; $4dc1: $88
	adc  b                                           ; $4dc2: $88
	ld   a, b                                        ; $4dc3: $78
	adc  c                                           ; $4dc4: $89
	adc  b                                           ; $4dc5: $88
	adc  b                                           ; $4dc6: $88
	adc  b                                           ; $4dc7: $88
	ld   a, b                                        ; $4dc8: $78
	sbc  b                                           ; $4dc9: $98
	sbc  b                                           ; $4dca: $98
	add  a                                           ; $4dcb: $87
	adc  c                                           ; $4dcc: $89
	sbc  c                                           ; $4dcd: $99
	ld   a, b                                        ; $4dce: $78
	adc  b                                           ; $4dcf: $88
	adc  b                                           ; $4dd0: $88
	adc  c                                           ; $4dd1: $89
	adc  b                                           ; $4dd2: $88
	ld   a, b                                        ; $4dd3: $78
	adc  c                                           ; $4dd4: $89
	adc  b                                           ; $4dd5: $88
	sbc  c                                           ; $4dd6: $99
	adc  b                                           ; $4dd7: $88
	ld   a, b                                        ; $4dd8: $78
	sbc  c                                           ; $4dd9: $99
	sbc  b                                           ; $4dda: $98
	sbc  b                                           ; $4ddb: $98
	adc  b                                           ; $4ddc: $88
	sbc  c                                           ; $4ddd: $99
	adc  c                                           ; $4dde: $89
	adc  b                                           ; $4ddf: $88
	sbc  b                                           ; $4de0: $98
	sbc  b                                           ; $4de1: $98
	adc  b                                           ; $4de2: $88
	adc  b                                           ; $4de3: $88
	sbc  c                                           ; $4de4: $99
	adc  c                                           ; $4de5: $89
	adc  b                                           ; $4de6: $88
	adc  b                                           ; $4de7: $88
	adc  c                                           ; $4de8: $89
	sbc  c                                           ; $4de9: $99
	adc  b                                           ; $4dea: $88
	adc  b                                           ; $4deb: $88
	adc  b                                           ; $4dec: $88
	sbc  b                                           ; $4ded: $98
	sbc  c                                           ; $4dee: $99
	adc  b                                           ; $4def: $88
	adc  b                                           ; $4df0: $88
	adc  c                                           ; $4df1: $89
	sbc  b                                           ; $4df2: $98
	adc  b                                           ; $4df3: $88
	adc  b                                           ; $4df4: $88
	adc  b                                           ; $4df5: $88
	adc  b                                           ; $4df6: $88
	adc  b                                           ; $4df7: $88
	sbc  b                                           ; $4df8: $98
	sbc  b                                           ; $4df9: $98
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
	xor  d                                           ; $4edb: $aa
	ld   e, b                                        ; $4edc: $58
	ld   sp, hl                                      ; $4edd: $f9
	ld   a, [hl-]                                    ; $4ede: $3a
	db   $e4                                         ; $4edf: $e4
	dec  a                                           ; $4ee0: $3d
	db   $e3                                         ; $4ee1: $e3
	ld   e, a                                        ; $4ee2: $5f
	pop  af                                          ; $4ee3: $f1
	rra                                              ; $4ee4: $1f
	ldh  a, [c]                                      ; $4ee5: $f2
	ld   a, [de]                                     ; $4ee6: $1a
	ld   sp, hl                                      ; $4ee7: $f9
	rla                                              ; $4ee8: $17
	db   $fc                                         ; $4ee9: $fc
	inc  de                                          ; $4eea: $13
	rst  $38                                         ; $4eeb: $ff
	ld   b, [hl]                                     ; $4eec: $46
	jp   c, $aa13                                    ; $4eed: $da $13 $aa

	ld   b, h                                        ; $4ef0: $44
	cp   c                                           ; $4ef1: $b9
	ld   b, h                                        ; $4ef2: $44
	adc  c                                           ; $4ef3: $89
	ld   d, l                                        ; $4ef4: $55
	sbc  c                                           ; $4ef5: $99
	halt                                             ; $4ef6: $76
	adc  c                                           ; $4ef7: $89
	halt                                             ; $4ef8: $76
	ld   h, a                                        ; $4ef9: $67
	halt                                             ; $4efa: $76
	sbc  c                                           ; $4efb: $99
	sbc  b                                           ; $4efc: $98
	ld   [hl], a                                     ; $4efd: $77
	ld   a, b                                        ; $4efe: $78
	ld   a, b                                        ; $4eff: $78
	sub  a                                           ; $4f00: $97
	ld   l, b                                        ; $4f01: $68
	add  [hl]                                        ; $4f02: $86
	ld   h, a                                        ; $4f03: $67
	sub  a                                           ; $4f04: $97
	ld   l, b                                        ; $4f05: $68
	xor  e                                           ; $4f06: $ab
	xor  e                                           ; $4f07: $ab
	sbc  b                                           ; $4f08: $98
	sub  a                                           ; $4f09: $97
	adc  d                                           ; $4f0a: $8a
	ld   d, l                                        ; $4f0b: $55
	ld   a, c                                        ; $4f0c: $79
	ld   [hl], l                                     ; $4f0d: $75
	ld   l, b                                        ; $4f0e: $68
	sub  l                                           ; $4f0f: $95
	ld   l, c                                        ; $4f10: $69
	sub  a                                           ; $4f11: $97
	sbc  c                                           ; $4f12: $99
	ld   [hl], a                                     ; $4f13: $77
	sbc  c                                           ; $4f14: $99
	ld   [hl], a                                     ; $4f15: $77
	ld   a, b                                        ; $4f16: $78
	halt                                             ; $4f17: $76
	ld   a, b                                        ; $4f18: $78
	halt                                             ; $4f19: $76
	ld   a, c                                        ; $4f1a: $79
	ld   [hl], a                                     ; $4f1b: $77
	sbc  c                                           ; $4f1c: $99
	add  a                                           ; $4f1d: $87
	adc  c                                           ; $4f1e: $89
	ld   [hl], a                                     ; $4f1f: $77
	sbc  c                                           ; $4f20: $99
	halt                                             ; $4f21: $76
	ld   a, b                                        ; $4f22: $78
	ld   [hl], a                                     ; $4f23: $77
	ld   a, b                                        ; $4f24: $78
	ld   [hl], a                                     ; $4f25: $77
	ld   a, c                                        ; $4f26: $79
	add  a                                           ; $4f27: $87
	ld   a, c                                        ; $4f28: $79
	sub  a                                           ; $4f29: $97
	ld   a, c                                        ; $4f2a: $79
	add  a                                           ; $4f2b: $87
	ld   a, b                                        ; $4f2c: $78
	adc  c                                           ; $4f2d: $89
	xor  c                                           ; $4f2e: $a9
	sbc  d                                           ; $4f2f: $9a
	sbc  b                                           ; $4f30: $98
	add  a                                           ; $4f31: $87
	ld   h, l                                        ; $4f32: $65
	ld   d, e                                        ; $4f33: $53
	inc  [hl]                                        ; $4f34: $34
	inc  sp                                          ; $4f35: $33
	ld   e, b                                        ; $4f36: $58
	sbc  e                                           ; $4f37: $9b
	rst  $28                                         ; $4f38: $ef
	rst  $38                                         ; $4f39: $ff
	db   $ec                                         ; $4f3a: $ec
	db   $db                                         ; $4f3b: $db
	xor  c                                           ; $4f3c: $a9
	sub  [hl]                                        ; $4f3d: $96
	inc  hl                                          ; $4f3e: $23
	ld   hl, $2111                                   ; $4f3f: $21 $11 $21
	ld   de, $3a11                                   ; $4f42: $11 $11 $3a
	rst  $38                                         ; $4f45: $ff
	rst  $38                                         ; $4f46: $ff
	rst  $38                                         ; $4f47: $ff
	rst  $38                                         ; $4f48: $ff
	db   $fd                                         ; $4f49: $fd
	xor  h                                           ; $4f4a: $ac
	db   $ec                                         ; $4f4b: $ec
	ld   b, c                                        ; $4f4c: $41
	ld   de, $1111                                   ; $4f4d: $11 $11 $11
	ld   sp, $ff5f                                   ; $4f50: $31 $5f $ff
	rst  $38                                         ; $4f53: $ff
	rst  $38                                         ; $4f54: $ff
	cp   b                                           ; $4f55: $b8
	call z, $fe6a                                    ; $4f56: $cc $6a $fe
	ld   h, c                                        ; $4f59: $61
	ld   de, $1111                                   ; $4f5a: $11 $11 $11
	ld   d, l                                        ; $4f5d: $55
	rra                                              ; $4f5e: $1f
	rst  $38                                         ; $4f5f: $ff
	rst  $38                                         ; $4f60: $ff
	rst  $38                                         ; $4f61: $ff
	call nc, Call_0a6_74ab                           ; $4f62: $d4 $ab $74
	rst  $38                                         ; $4f65: $ff
	di                                               ; $4f66: $f3
	ld   de, $1111                                   ; $4f67: $11 $11 $11
	ld   [de], a                                     ; $4f6a: $12
	inc  sp                                          ; $4f6b: $33
	rst  $38                                         ; $4f6c: $ff
	rst  $38                                         ; $4f6d: $ff
	rst  $38                                         ; $4f6e: $ff
	ld   sp, hl                                      ; $4f6f: $f9
	inc  de                                          ; $4f70: $13
	and  [hl]                                        ; $4f71: $a6
	sbc  a                                           ; $4f72: $9f
	cp   $21                                         ; $4f73: $fe $21
	ld   de, $1111                                   ; $4f75: $11 $11 $11
	ld   h, a                                        ; $4f78: $67
	ld   l, a                                        ; $4f79: $6f
	rst  $38                                         ; $4f7a: $ff
	rst  $38                                         ; $4f7b: $ff
	rst  $38                                         ; $4f7c: $ff
	ld   hl, $ac19                                   ; $4f7d: $21 $19 $ac
	rst  $38                                         ; $4f80: $ff
	pop  de                                          ; $4f81: $d1
	ld   de, $1111                                   ; $4f82: $11 $11 $11
	inc  e                                           ; $4f85: $1c
	ld   a, [hl]                                     ; $4f86: $7e
	rst  $38                                         ; $4f87: $ff
	rst  $38                                         ; $4f88: $ff
	rst  $38                                         ; $4f89: $ff
	and  c                                           ; $4f8a: $a1
	inc  d                                           ; $4f8b: $14
	db   $dd                                         ; $4f8c: $dd
	rst  $38                                         ; $4f8d: $ff
	ld   hl, sp+$11                                  ; $4f8e: $f8 $11
	ld   de, $1511                                   ; $4f90: $11 $11 $15
	xor  c                                           ; $4f93: $a9
	rst  $38                                         ; $4f94: $ff
	rst  $38                                         ; $4f95: $ff
	rst  $38                                         ; $4f96: $ff
	pop  hl                                          ; $4f97: $e1
	ld   de, $ff9f                                   ; $4f98: $11 $9f $ff
	rst  $38                                         ; $4f9b: $ff
	ld   hl, $1111                                   ; $4f9c: $21 $11 $11
	ld   de, $ffcc                                   ; $4f9f: $11 $cc $ff
	rst  $38                                         ; $4fa2: $ff
	rst  $38                                         ; $4fa3: $ff
	or   a                                           ; $4fa4: $b7
	ld   de, $ff1f                                   ; $4fa5: $11 $1f $ff
	rst  $38                                         ; $4fa8: $ff
	or   c                                           ; $4fa9: $b1
	ld   de, $1111                                   ; $4faa: $11 $11 $11
	rra                                              ; $4fad: $1f
	rst  $38                                         ; $4fae: $ff
	rst  $38                                         ; $4faf: $ff
	rst  $38                                         ; $4fb0: $ff
	sub  l                                           ; $4fb1: $95
	ld   hl, rAUD1HIGH                                   ; $4fb2: $21 $14 $ff
	rst  $38                                         ; $4fb5: $ff
	or   $11                                         ; $4fb6: $f6 $11
	ld   de, $1111                                   ; $4fb8: $11 $11 $11
	rst  $38                                         ; $4fbb: $ff
	rst  $38                                         ; $4fbc: $ff
	rst  $38                                         ; $4fbd: $ff
	di                                               ; $4fbe: $f3
	ld   de, $7f11                                   ; $4fbf: $11 $11 $7f
	rst  $38                                         ; $4fc2: $ff
	db   $fd                                         ; $4fc3: $fd
	ld   sp, $1111                                   ; $4fc4: $31 $11 $11
	ld   de, $ff0f                                   ; $4fc7: $11 $0f $ff
	rst  $38                                         ; $4fca: $ff
	rst  $38                                         ; $4fcb: $ff
	ld   de, $1911                                   ; $4fcc: $11 $11 $19
	rst  $38                                         ; $4fcf: $ff
	rst  $38                                         ; $4fd0: $ff
	and  d                                           ; $4fd1: $a2
	ld   de, $1111                                   ; $4fd2: $11 $11 $11
	ld   de, $ffff                                   ; $4fd5: $11 $ff $ff
	rst  $38                                         ; $4fd8: $ff
	pop  af                                          ; $4fd9: $f1
	inc  d                                           ; $4fda: $14
	ld   de, $ff5f                                   ; $4fdb: $11 $5f $ff
	db   $fd                                         ; $4fde: $fd
	ld   b, c                                        ; $4fdf: $41
	ld   de, $1111                                   ; $4fe0: $11 $11 $11
	dec  de                                          ; $4fe3: $1b
	rst  $38                                         ; $4fe4: $ff
	rst  $38                                         ; $4fe5: $ff
	rst  $38                                         ; $4fe6: $ff
	ld   [hl], c                                     ; $4fe7: $71
	inc  de                                          ; $4fe8: $13
	ld   de, $ffff                                   ; $4fe9: $11 $ff $ff
	ld   sp, hl                                      ; $4fec: $f9
	ld   de, $1111                                   ; $4fed: $11 $11 $11
	ld   de, $ff1b                                   ; $4ff0: $11 $1b $ff
	rst  $38                                         ; $4ff3: $ff
	rst  $38                                         ; $4ff4: $ff
	ld   [hl], c                                     ; $4ff5: $71
	inc  d                                           ; $4ff6: $14
	ld   de, $ffff                                   ; $4ff7: $11 $ff $ff
	rst  $20                                         ; $4ffa: $e7
	ld   de, $1111                                   ; $4ffb: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $4ffe: $11 $11 $ff
	rst  $38                                         ; $5001: $ff
	rst  $38                                         ; $5002: $ff
	pop  af                                          ; $5003: $f1
	dec  d                                           ; $5004: $15
	ld   de, $ff9f                                   ; $5005: $11 $9f $ff
	ld   hl, sp+$51                                  ; $5008: $f8 $51
	ld   de, $1111                                   ; $500a: $11 $11 $11
	ld   de, $ff4f                                   ; $500d: $11 $4f $ff
	rst  $38                                         ; $5010: $ff
	ei                                               ; $5011: $fb
	ld   de, $1b61                                   ; $5012: $11 $61 $1b
	rst  $38                                         ; $5015: $ff
	db   $fc                                         ; $5016: $fc
	add  h                                           ; $5017: $84
	ld   de, $2117                                   ; $5018: $11 $17 $21
	ld   de, rAUD1LEN                                   ; $501b: $11 $11 $ff
	rst  $38                                         ; $501e: $ff
	rst  $38                                         ; $501f: $ff
	pop  af                                          ; $5020: $f1
	inc  de                                          ; $5021: $13
	ld   hl, $ff6f                                   ; $5022: $21 $6f $ff
	ld   sp, hl                                      ; $5025: $f9
	ld   [hl], c                                     ; $5026: $71
	ld   de, $1163                                   ; $5027: $11 $63 $11
	ld   de, $ff1b                                   ; $502a: $11 $1b $ff
	rst  $38                                         ; $502d: $ff
	rst  $38                                         ; $502e: $ff
	sub  c                                           ; $502f: $91
	inc  d                                           ; $5030: $14
	inc  hl                                          ; $5031: $23
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5032: $cf
	rst  $38                                         ; $5033: $ff
	xor  b                                           ; $5034: $a8
	ld   d, c                                        ; $5035: $51
	dec  h                                           ; $5036: $25
	ld   [hl], e                                     ; $5037: $73
	ld   de, $1a11                                   ; $5038: $11 $11 $1a
	rst  $38                                         ; $503b: $ff
	rst  $38                                         ; $503c: $ff
	rst  $38                                         ; $503d: $ff
	sub  c                                           ; $503e: $91
	inc  d                                           ; $503f: $14
	inc  d                                           ; $5040: $14
	rst  JumpTable                                         ; $5041: $df
	rst  $38                                         ; $5042: $ff
	xor  b                                           ; $5043: $a8
	add  d                                           ; $5044: $82
	ld   b, a                                        ; $5045: $47
	ld   [hl], e                                     ; $5046: $73
	ld   de, $1211                                   ; $5047: $11 $11 $12
	rst  $38                                         ; $504a: $ff
	rst  $38                                         ; $504b: $ff
	rst  $38                                         ; $504c: $ff
	pop  bc                                          ; $504d: $c1
	inc  de                                          ; $504e: $13
	dec  h                                           ; $504f: $25
	rst  JumpTable                                         ; $5050: $df
	rst  $38                                         ; $5051: $ff
	ret  c                                           ; $5052: $d8

	add  e                                           ; $5053: $83
	ld   b, [hl]                                     ; $5054: $46
	add  a                                           ; $5055: $87
	ld   de, $1111                                   ; $5056: $11 $11 $11
	rst  $38                                         ; $5059: $ff
	rst  $38                                         ; $505a: $ff
	rst  $38                                         ; $505b: $ff
	rst  $30                                         ; $505c: $f7
	ld   [de], a                                     ; $505d: $12
	ld   [hl], h                                     ; $505e: $74
	ld   a, [hl]                                     ; $505f: $7e
	rst  $38                                         ; $5060: $ff
	ld   hl, sp-$79                                  ; $5061: $f8 $87
	ld   d, [hl]                                     ; $5063: $56
	adc  c                                           ; $5064: $89
	ld   d, c                                        ; $5065: $51
	ld   de, $1f11                                   ; $5066: $11 $11 $1f
	rst  $38                                         ; $5069: $ff
	rst  $38                                         ; $506a: $ff
	rst  $38                                         ; $506b: $ff
	ld   [hl], c                                     ; $506c: $71
	ld   d, l                                        ; $506d: $55
	ld   h, a                                        ; $506e: $67
	rst  $38                                         ; $506f: $ff
	db   $fd                                         ; $5070: $fd
	ld   a, c                                        ; $5071: $79
	ld   [hl], a                                     ; $5072: $77
	adc  c                                           ; $5073: $89
	sub  l                                           ; $5074: $95
	ld   de, $1111                                   ; $5075: $11 $11 $11
	rst  $38                                         ; $5078: $ff
	rst  $38                                         ; $5079: $ff
	rst  $38                                         ; $507a: $ff
	ld   a, [$4515]                                  ; $507b: $fa $15 $45
	ld   l, h                                        ; $507e: $6c
	rst  $38                                         ; $507f: $ff
	reti                                             ; $5080: $d9


	xor  c                                           ; $5081: $a9
	sbc  b                                           ; $5082: $98
	sbc  b                                           ; $5083: $98
	ld   d, c                                        ; $5084: $51
	ld   de, $1f11                                   ; $5085: $11 $11 $1f
	rst  $38                                         ; $5088: $ff
	rst  $38                                         ; $5089: $ff
	rst  $38                                         ; $508a: $ff
	push de                                          ; $508b: $d5
	ld   h, h                                        ; $508c: $64
	ld   b, l                                        ; $508d: $45
	sbc  l                                           ; $508e: $9d
	cp   $aa                                         ; $508f: $fe $aa
	sbc  c                                           ; $5091: $99
	xor  d                                           ; $5092: $aa
	halt                                             ; $5093: $76
	ld   de, $1111                                   ; $5094: $11 $11 $11
	sbc  a                                           ; $5097: $9f
	rst  $28                                         ; $5098: $ef
	rst  $38                                         ; $5099: $ff
	rst  $38                                         ; $509a: $ff
	sbc  b                                           ; $509b: $98
	halt                                             ; $509c: $76
	ld   d, l                                        ; $509d: $55
	ld   a, e                                        ; $509e: $7b
	res  7, e                                        ; $509f: $cb $bb
	cp   e                                           ; $50a1: $bb
	cp   b                                           ; $50a2: $b8
	ld   [hl], l                                     ; $50a3: $75
	ld   de, $1111                                   ; $50a4: $11 $11 $11
	xor  d                                           ; $50a7: $aa
	sbc  a                                           ; $50a8: $9f
	rst  $38                                         ; $50a9: $ff
	rst  $38                                         ; $50aa: $ff
	call c, Call_0a6_56a7                            ; $50ab: $dc $a7 $56
	ld   a, e                                        ; $50ae: $7b
	cp   d                                           ; $50af: $ba
	xor  e                                           ; $50b0: $ab
	xor  e                                           ; $50b1: $ab
	and  a                                           ; $50b2: $a7
	ld   h, [hl]                                     ; $50b3: $66
	ld   b, d                                        ; $50b4: $42
	ld   de, $4511                                   ; $50b5: $11 $11 $45
	ld   c, b                                        ; $50b8: $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50b9: $cf
	rst  $38                                         ; $50ba: $ff
	call c, $aada                                    ; $50bb: $dc $da $aa
	sbc  c                                           ; $50be: $99
	xor  e                                           ; $50bf: $ab
	cp   e                                           ; $50c0: $bb
	cp   e                                           ; $50c1: $bb
	xor  c                                           ; $50c2: $a9
	ld   [hl], a                                     ; $50c3: $77
	ld   h, [hl]                                     ; $50c4: $66
	ld   h, e                                        ; $50c5: $63
	ld   hl, $6624                                   ; $50c6: $21 $24 $66
	ld   h, a                                        ; $50c9: $67
	adc  c                                           ; $50ca: $89
	xor  c                                           ; $50cb: $a9
	sbc  b                                           ; $50cc: $98
	adc  c                                           ; $50cd: $89
	sbc  b                                           ; $50ce: $98
	xor  e                                           ; $50cf: $ab
	sbc  $dc                                         ; $50d0: $de $dc
	cp   h                                           ; $50d2: $bc
	cp   c                                           ; $50d3: $b9
	halt                                             ; $50d4: $76
	ld   h, a                                        ; $50d5: $67
	ld   h, a                                        ; $50d6: $67
	sbc  b                                           ; $50d7: $98
	sbc  b                                           ; $50d8: $98
	ld   [hl], a                                     ; $50d9: $77
	ld   [hl], a                                     ; $50da: $77
	ld   h, l                                        ; $50db: $65
	ld   b, h                                        ; $50dc: $44
	ld   d, [hl]                                     ; $50dd: $56
	ld   h, a                                        ; $50de: $67
	sbc  d                                           ; $50df: $9a
	call $dcdc                                       ; $50e0: $cd $dc $dc
	cp   e                                           ; $50e3: $bb
	xor  c                                           ; $50e4: $a9
	sbc  b                                           ; $50e5: $98
	sbc  c                                           ; $50e6: $99
	adc  b                                           ; $50e7: $88
	adc  b                                           ; $50e8: $88
	halt                                             ; $50e9: $76
	ld   d, l                                        ; $50ea: $55
	ld   b, d                                        ; $50eb: $42
	inc  [hl]                                        ; $50ec: $34
	ld   d, l                                        ; $50ed: $55
	ld   d, [hl]                                     ; $50ee: $56
	ld   a, c                                        ; $50ef: $79
	cp   e                                           ; $50f0: $bb
	cp   h                                           ; $50f1: $bc
	call c, $bbcd                                    ; $50f2: $dc $cd $bb
	cp   e                                           ; $50f5: $bb
	cp   h                                           ; $50f6: $bc
	sbc  b                                           ; $50f7: $98
	and  a                                           ; $50f8: $a7
	ld   b, h                                        ; $50f9: $44
	inc  sp                                          ; $50fa: $33
	ld   sp, $1311                                   ; $50fb: $31 $11 $13
	halt                                             ; $50fe: $76
	ld   l, d                                        ; $50ff: $6a
	rst  JumpTable                                         ; $5100: $df
	db   $ed                                         ; $5101: $ed
	cp   h                                           ; $5102: $bc
	jp   z, $bdbb                                    ; $5103: $ca $bb $bd

	call c, $97cc                                    ; $5106: $dc $cc $97
	ld   h, l                                        ; $5109: $65
	ld   hl, $1111                                   ; $510a: $21 $11 $11
	ld   de, $ac5b                                   ; $510d: $11 $5b $ac
	rst  $38                                         ; $5110: $ff
	rst  $38                                         ; $5111: $ff
	jp   z, $89a9                                    ; $5112: $ca $a9 $89

	sbc  e                                           ; $5115: $9b
	xor  $cc                                         ; $5116: $ee $cc
	xor  c                                           ; $5118: $a9
	sub  a                                           ; $5119: $97
	ld   sp, $1111                                   ; $511a: $31 $11 $11
	ld   de, $ae7d                                   ; $511d: $11 $7d $ae
	rst  $38                                         ; $5120: $ff
	rst  $38                                         ; $5121: $ff
	xor  c                                           ; $5122: $a9
	and  a                                           ; $5123: $a7
	ld   d, a                                        ; $5124: $57
	sbc  h                                           ; $5125: $9c
	db   $ed                                         ; $5126: $ed
	call z, $b7ba                                    ; $5127: $cc $ba $b7
	ld   b, d                                        ; $512a: $42
	ld   de, $1111                                   ; $512b: $11 $11 $11
	xor  l                                           ; $512e: $ad
	cp   a                                           ; $512f: $bf
	rst  $38                                         ; $5130: $ff
	cp   $98                                         ; $5131: $fe $98
	sub  [hl]                                        ; $5133: $96
	ld   l, b                                        ; $5134: $68
	cp   [hl]                                        ; $5135: $be
	db   $ed                                         ; $5136: $ed
	call z, $97bb                                    ; $5137: $cc $bb $97
	ld   b, d                                        ; $513a: $42
	ld   de, $1111                                   ; $513b: $11 $11 $11
	db   $dd                                         ; $513e: $dd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $513f: $cf
	rst  $38                                         ; $5140: $ff
	ei                                               ; $5141: $fb
	sbc  b                                           ; $5142: $98
	ld   [hl], l                                     ; $5143: $75
	ld   a, c                                        ; $5144: $79
	adc  $ed                                         ; $5145: $ce $ed
	db   $db                                         ; $5147: $db
	cp   e                                           ; $5148: $bb
	or   [hl]                                        ; $5149: $b6
	ld   sp, $1111                                   ; $514a: $31 $11 $11
	inc  d                                           ; $514d: $14
	xor  $ff                                         ; $514e: $ee $ff
	rst  $38                                         ; $5150: $ff
	ld   sp, hl                                      ; $5151: $f9
	ld   [hl], a                                     ; $5152: $77
	ld   d, [hl]                                     ; $5153: $56
	adc  e                                           ; $5154: $8b
	rst  $28                                         ; $5155: $ef
	db   $ec                                         ; $5156: $ec
	res  5, e                                        ; $5157: $cb $ab
	sub  [hl]                                        ; $5159: $96
	ld   sp, $1111                                   ; $515a: $31 $11 $11
	dec  de                                          ; $515d: $1b
	cp   $ff                                         ; $515e: $fe $ff
	rst  $38                                         ; $5160: $ff
	or   l                                           ; $5161: $b5
	ld   d, a                                        ; $5162: $57
	ld   d, [hl]                                     ; $5163: $56
	cp   [hl]                                        ; $5164: $be
	rst  $38                                         ; $5165: $ff
	set  3, d                                        ; $5166: $cb $da
	cp   e                                           ; $5168: $bb
	add  l                                           ; $5169: $85
	ld   de, $1111                                   ; $516a: $11 $11 $11
	cpl                                              ; $516d: $2f
	cp   $ff                                         ; $516e: $fe $ff
	cp   $55                                         ; $5170: $fe $55
	ld   [hl], l                                     ; $5172: $75
	ld   c, c                                        ; $5173: $49
	rst  $28                                         ; $5174: $ef
	db   $fd                                         ; $5175: $fd
	call z, $dcba                                    ; $5176: $cc $ba $dc
	add  l                                           ; $5179: $85
	ld   de, $1111                                   ; $517a: $11 $11 $11
	cp   a                                           ; $517d: $bf
	rst  $38                                         ; $517e: $ff
	rst  $38                                         ; $517f: $ff
	ld   hl, sp+$55                                  ; $5180: $f8 $55
	ld   d, e                                        ; $5182: $53
	ld   c, l                                        ; $5183: $4d
	db   $fd                                         ; $5184: $fd
	db   $dd                                         ; $5185: $dd
	call z, $ec9b                                    ; $5186: $cc $9b $ec
	ld   h, h                                        ; $5189: $64
	ld   de, $1111                                   ; $518a: $11 $11 $11
	rst  $38                                         ; $518d: $ff
	rst  $38                                         ; $518e: $ff
	rst  $38                                         ; $518f: $ff
	push af                                          ; $5190: $f5
	ld   h, $53                                      ; $5191: $26 $53
	ld   a, a                                        ; $5193: $7f
	cp   $cb                                         ; $5194: $fe $cb
	res  3, h                                        ; $5196: $cb $9c
	ld   a, [$1162]                                  ; $5198: $fa $62 $11
	ld   de, rAUD1ENV                                   ; $519b: $11 $12 $ff
	rst  $38                                         ; $519e: $ff
	rst  $38                                         ; $519f: $ff
	sub  e                                           ; $51a0: $93
	inc  h                                           ; $51a1: $24
	ld   d, [hl]                                     ; $51a2: $56
	cp   a                                           ; $51a3: $bf
	db   $fd                                         ; $51a4: $fd
	res  5, c                                        ; $51a5: $cb $a9
	xor  [hl]                                        ; $51a7: $ae
	ei                                               ; $51a8: $fb
	ld   h, c                                        ; $51a9: $61
	ld   de, $1711                                   ; $51aa: $11 $11 $17
	rst  $38                                         ; $51ad: $ff
	rst  $38                                         ; $51ae: $ff
	rst  $38                                         ; $51af: $ff
	ld   [hl], c                                     ; $51b0: $71
	dec  [hl]                                        ; $51b1: $35
	ld   [hl], $cf                                   ; $51b2: $36 $cf
	db   $fd                                         ; $51b4: $fd
	db   $db                                         ; $51b5: $db
	cp   b                                           ; $51b6: $b8
	xor  [hl]                                        ; $51b7: $ae
	ld   a, [$1161]                                  ; $51b8: $fa $61 $11
	ld   de, $ff1d                                   ; $51bb: $11 $1d $ff
	rst  $38                                         ; $51be: $ff
	rst  $38                                         ; $51bf: $ff
	ld   sp, $5756                                   ; $51c0: $31 $56 $57
	rst  $28                                         ; $51c3: $ef
	jp   hl                                          ; $51c4: $e9


	cp   e                                           ; $51c5: $bb
	cp   d                                           ; $51c6: $ba
	cp   a                                           ; $51c7: $bf
	ld   hl, sp+$31                                  ; $51c8: $f8 $31
	ld   de, $1f11                                   ; $51ca: $11 $11 $1f
	rst  $38                                         ; $51cd: $ff
	rst  $38                                         ; $51ce: $ff
	db   $fc                                         ; $51cf: $fc
	ld   [hl-], a                                    ; $51d0: $32
	ld   b, l                                        ; $51d1: $45
	ld   l, c                                        ; $51d2: $69
	rst  $38                                         ; $51d3: $ff
	jp   c, $aaba                                    ; $51d4: $da $ba $aa

	rst  JumpTable                                         ; $51d7: $df
	rst  $20                                         ; $51d8: $e7
	ld   sp, $1111                                   ; $51d9: $31 $11 $11
	rra                                              ; $51dc: $1f
	rst  $38                                         ; $51dd: $ff
	rst  $38                                         ; $51de: $ff
	ld   a, [$7611]                                  ; $51df: $fa $11 $76
	ld   e, d                                        ; $51e2: $5a
	rst  $38                                         ; $51e3: $ff
	cp   d                                           ; $51e4: $ba
	cp   h                                           ; $51e5: $bc
	xor  c                                           ; $51e6: $a9
	rst  $28                                         ; $51e7: $ef
	sub  $11                                         ; $51e8: $d6 $11
	ld   de, $3f11                                   ; $51ea: $11 $11 $3f
	rst  $38                                         ; $51ed: $ff
	rst  $38                                         ; $51ee: $ff
	ld   hl, sp+$12                                  ; $51ef: $f8 $12
	halt                                             ; $51f1: $76
	ld   e, e                                        ; $51f2: $5b
	rst  $38                                         ; $51f3: $ff
	cp   e                                           ; $51f4: $bb
	cp   e                                           ; $51f5: $bb
	xor  d                                           ; $51f6: $aa
	rst  $38                                         ; $51f7: $ff
	add  $11                                         ; $51f8: $c6 $11
	ld   de, $6f11                                   ; $51fa: $11 $11 $6f
	rst  $38                                         ; $51fd: $ff
	rst  $38                                         ; $51fe: $ff
	rst  $30                                         ; $51ff: $f7
	dec  h                                           ; $5200: $25
	ld   [hl], l                                     ; $5201: $75
	ld   l, h                                        ; $5202: $6c
	rst  $38                                         ; $5203: $ff
	xor  e                                           ; $5204: $ab
	res  5, e                                        ; $5205: $cb $ab
	rst  $38                                         ; $5207: $ff
	sub  h                                           ; $5208: $94
	ld   de, $1111                                   ; $5209: $11 $11 $11
	sbc  a                                           ; $520c: $9f
	rst  $38                                         ; $520d: $ff
	rst  $38                                         ; $520e: $ff
	or   $45                                         ; $520f: $f6 $45
	ld   h, h                                        ; $5211: $64
	ld   l, [hl]                                     ; $5212: $6e
	db   $fd                                         ; $5213: $fd
	cp   [hl]                                        ; $5214: $be
	res  5, h                                        ; $5215: $cb $ac
	db   $fd                                         ; $5217: $fd
	ld   [hl], h                                     ; $5218: $74
	ld   de, $1111                                   ; $5219: $11 $11 $11
	cp   a                                           ; $521c: $bf
	rst  $38                                         ; $521d: $ff
	rst  $38                                         ; $521e: $ff
	rst  $30                                         ; $521f: $f7
	ld   d, l                                        ; $5220: $55
	ld   b, h                                        ; $5221: $44
	ld   a, l                                        ; $5222: $7d
	db   $fd                                         ; $5223: $fd
	db   $dd                                         ; $5224: $dd
	res  5, e                                        ; $5225: $cb $ab
	db   $ec                                         ; $5227: $ec
	ld   h, h                                        ; $5228: $64
	ld   de, $1111                                   ; $5229: $11 $11 $11
	rst  $28                                         ; $522c: $ef
	rst  $38                                         ; $522d: $ff
	rst  $38                                         ; $522e: $ff
	or   l                                           ; $522f: $b5
	ld   h, [hl]                                     ; $5230: $66
	ld   b, h                                        ; $5231: $44
	adc  a                                           ; $5232: $8f
	ei                                               ; $5233: $fb
	call $adba                                       ; $5234: $cd $ba $ad
	ei                                               ; $5237: $fb
	ld   d, h                                        ; $5238: $54
	ld   de, $1111                                   ; $5239: $11 $11 $11
	rst  $38                                         ; $523c: $ff
	rst  $38                                         ; $523d: $ff
	rst  $38                                         ; $523e: $ff
	or   [hl]                                        ; $523f: $b6
	ld   h, a                                        ; $5240: $67
	inc  sp                                          ; $5241: $33
	xor  a                                           ; $5242: $af
	ld   [$dadf], a                                  ; $5243: $ea $df $da
	xor  [hl]                                        ; $5246: $ae
	add  sp, $53                                     ; $5247: $e8 $53
	ld   de, $1211                                   ; $5249: $11 $11 $12
	cp   $ef                                         ; $524c: $fe $ef
	rst  $38                                         ; $524e: $ff
	or   [hl]                                        ; $524f: $b6
	sub  a                                           ; $5250: $97
	ld   [hl+], a                                    ; $5251: $22
	sbc  a                                           ; $5252: $9f
	db   $db                                         ; $5253: $db
	rst  JumpTable                                         ; $5254: $df
	reti                                             ; $5255: $d9


	sbc  [hl]                                        ; $5256: $9e
	rst  $20                                         ; $5257: $e7
	ld   d, d                                        ; $5258: $52
	ld   de, $1611                                   ; $5259: $11 $11 $16
	db   $ec                                         ; $525c: $ec
	rst  $38                                         ; $525d: $ff
	rst  $38                                         ; $525e: $ff
	cp   c                                           ; $525f: $b9
	add  [hl]                                        ; $5260: $86
	inc  h                                           ; $5261: $24
	xor  a                                           ; $5262: $af
	call c, $c9ef                                    ; $5263: $dc $ef $c9
	cp   l                                           ; $5266: $bd
	or   [hl]                                        ; $5267: $b6
	ld   d, d                                        ; $5268: $52
	ld   de, $1711                                   ; $5269: $11 $11 $17
	cp   h                                           ; $526c: $bc
	rst  JumpTable                                         ; $526d: $df
	rst  $38                                         ; $526e: $ff
	cp   d                                           ; $526f: $ba
	and  [hl]                                        ; $5270: $a6
	inc  [hl]                                        ; $5271: $34
	xor  [hl]                                        ; $5272: $ae
	cp   e                                           ; $5273: $bb
	rst  $38                                         ; $5274: $ff
	db   $db                                         ; $5275: $db
	cp   l                                           ; $5276: $bd
	and  l                                           ; $5277: $a5
	ld   b, c                                        ; $5278: $41
	ld   de, $1711                                   ; $5279: $11 $11 $17
	sbc  e                                           ; $527c: $9b
	rst  $28                                         ; $527d: $ef
	rst  $38                                         ; $527e: $ff
	call z, $35b6                                    ; $527f: $cc $b6 $35
	xor  h                                           ; $5282: $ac
	xor  e                                           ; $5283: $ab
	rst  $38                                         ; $5284: $ff
	db   $db                                         ; $5285: $db
	call Call_0a6_4195                               ; $5286: $cd $95 $41
	ld   de, $1811                                   ; $5289: $11 $11 $18
	sbc  d                                           ; $528c: $9a
	rst  $38                                         ; $528d: $ff
	rst  $38                                         ; $528e: $ff
	db   $db                                         ; $528f: $db
	or   [hl]                                        ; $5290: $b6
	ld   [hl], $9b                                   ; $5291: $36 $9b
	xor  h                                           ; $5293: $ac
	xor  $cc                                         ; $5294: $ee $cc
	res  0, l                                        ; $5296: $cb $85
	ld   hl, $1111                                   ; $5298: $21 $11 $11
	daa                                              ; $529b: $27
	ld   a, e                                        ; $529c: $7b
	rst  $38                                         ; $529d: $ff
	rst  $38                                         ; $529e: $ff
	sbc  $b6                                         ; $529f: $de $b6
	ld   d, a                                        ; $52a1: $57
	xor  d                                           ; $52a2: $aa
	sbc  h                                           ; $52a3: $9c
	db   $fd                                         ; $52a4: $fd
	cp   e                                           ; $52a5: $bb
	jp   z, $1164                                    ; $52a6: $ca $64 $11

	ld   de, $4511                                   ; $52a9: $11 $11 $45
	ld   l, h                                        ; $52ac: $6c
	rst  $38                                         ; $52ad: $ff
	rst  $38                                         ; $52ae: $ff
	rst  $38                                         ; $52af: $ff
	sub  a                                           ; $52b0: $97
	ld   a, d                                        ; $52b1: $7a
	sbc  b                                           ; $52b2: $98
	sbc  h                                           ; $52b3: $9c
	db   $db                                         ; $52b4: $db
	cp   e                                           ; $52b5: $bb
	and  a                                           ; $52b6: $a7
	ld   d, d                                        ; $52b7: $52
	ld   bc, $1311                                   ; $52b8: $01 $11 $13
	inc  [hl]                                        ; $52bb: $34
	adc  [hl]                                        ; $52bc: $8e
	rst  $38                                         ; $52bd: $ff
	rst  $28                                         ; $52be: $ef
	db   $fd                                         ; $52bf: $fd
	xor  c                                           ; $52c0: $a9
	sbc  d                                           ; $52c1: $9a
	sbc  c                                           ; $52c2: $99
	cp   e                                           ; $52c3: $bb
	cp   d                                           ; $52c4: $ba
	xor  c                                           ; $52c5: $a9
	add  l                                           ; $52c6: $85
	ld   b, d                                        ; $52c7: $42
	ld   de, $3511                                   ; $52c8: $11 $11 $35
	ld   b, l                                        ; $52cb: $45
	sbc  h                                           ; $52cc: $9c
	res  7, h                                        ; $52cd: $cb $bc
	res  5, c                                        ; $52cf: $cb $a9
	sbc  c                                           ; $52d1: $99
	adc  c                                           ; $52d2: $89
	xor  e                                           ; $52d3: $ab
	xor  d                                           ; $52d4: $aa
	sbc  c                                           ; $52d5: $99
	ld   [hl], a                                     ; $52d6: $77
	ld   h, [hl]                                     ; $52d7: $66
	ld   h, [hl]                                     ; $52d8: $66
	ld   d, l                                        ; $52d9: $55
	ld   h, [hl]                                     ; $52da: $66
	halt                                             ; $52db: $76
	ld   l, b                                        ; $52dc: $68
	adc  b                                           ; $52dd: $88
	ld   [hl], a                                     ; $52de: $77
	ld   [hl], a                                     ; $52df: $77
	ld   [hl], a                                     ; $52e0: $77
	ld   a, b                                        ; $52e1: $78
	adc  c                                           ; $52e2: $89
	xor  e                                           ; $52e3: $ab
	cp   l                                           ; $52e4: $bd
	call c, $bacb                                    ; $52e5: $dc $cb $ba
	xor  d                                           ; $52e8: $aa
	sbc  c                                           ; $52e9: $99
	add  a                                           ; $52ea: $87
	ld   [hl], a                                     ; $52eb: $77
	ld   h, [hl]                                     ; $52ec: $66
	ld   h, [hl]                                     ; $52ed: $66
	ld   d, l                                        ; $52ee: $55
	ld   h, [hl]                                     ; $52ef: $66
	ld   h, [hl]                                     ; $52f0: $66
	ld   h, a                                        ; $52f1: $67
	ld   a, c                                        ; $52f2: $79
	xor  d                                           ; $52f3: $aa
	cp   e                                           ; $52f4: $bb
	cp   e                                           ; $52f5: $bb
	cp   h                                           ; $52f6: $bc
	cp   d                                           ; $52f7: $ba
	cp   d                                           ; $52f8: $ba
	xor  c                                           ; $52f9: $a9
	sbc  b                                           ; $52fa: $98
	halt                                             ; $52fb: $76
	ld   h, [hl]                                     ; $52fc: $66
	ld   d, l                                        ; $52fd: $55
	ld   b, h                                        ; $52fe: $44
	ld   b, h                                        ; $52ff: $44
	ld   b, h                                        ; $5300: $44
	ld   b, l                                        ; $5301: $45
	ld   h, a                                        ; $5302: $67
	sbc  d                                           ; $5303: $9a
	cp   e                                           ; $5304: $bb
	call z, $cbdc                                    ; $5305: $cc $dc $cb
	cp   d                                           ; $5308: $ba
	xor  d                                           ; $5309: $aa
	adc  b                                           ; $530a: $88
	halt                                             ; $530b: $76
	ld   d, l                                        ; $530c: $55
	ld   d, h                                        ; $530d: $54
	ld   b, e                                        ; $530e: $43
	ld   b, h                                        ; $530f: $44
	ld   b, h                                        ; $5310: $44
	ld   b, [hl]                                     ; $5311: $46
	ld   [hl], a                                     ; $5312: $77
	sbc  e                                           ; $5313: $9b
	cp   h                                           ; $5314: $bc
	sbc  $ed                                         ; $5315: $de $ed
	call c, $bacb                                    ; $5317: $dc $cb $ba
	add  a                                           ; $531a: $87
	ld   h, l                                        ; $531b: $65
	ld   d, h                                        ; $531c: $54
	ld   b, e                                        ; $531d: $43
	inc  sp                                          ; $531e: $33
	ld   b, e                                        ; $531f: $43
	ld   b, l                                        ; $5320: $45
	ld   h, a                                        ; $5321: $67
	adc  c                                           ; $5322: $89
	xor  h                                           ; $5323: $ac
	db   $dd                                         ; $5324: $dd
	xor  $ee                                         ; $5325: $ee $ee
	db   $dd                                         ; $5327: $dd
	jp   z, Jump_0a6_6597                            ; $5328: $ca $97 $65

	ld   b, h                                        ; $532b: $44
	inc  sp                                          ; $532c: $33
	inc  hl                                          ; $532d: $23
	inc  sp                                          ; $532e: $33
	inc  [hl]                                        ; $532f: $34
	ld   d, [hl]                                     ; $5330: $56
	ld   a, c                                        ; $5331: $79
	xor  e                                           ; $5332: $ab
	sbc  $ff                                         ; $5333: $de $ff
	rst  $28                                         ; $5335: $ef
	db   $ed                                         ; $5336: $ed
	res  5, b                                        ; $5337: $cb $a8
	ld   h, l                                        ; $5339: $65
	ld   b, h                                        ; $533a: $44
	ld   [hl-], a                                    ; $533b: $32
	inc  hl                                          ; $533c: $23
	inc  sp                                          ; $533d: $33
	inc  [hl]                                        ; $533e: $34
	ld   d, [hl]                                     ; $533f: $56
	ld   a, c                                        ; $5340: $79
	cp   h                                           ; $5341: $bc
	xor  $ef                                         ; $5342: $ee $ef
	rst  $38                                         ; $5344: $ff
	db   $ed                                         ; $5345: $ed
	res  0, a                                        ; $5346: $cb $87
	ld   d, h                                        ; $5348: $54
	ld   b, e                                        ; $5349: $43
	ld   [hl+], a                                    ; $534a: $22
	ld   [hl+], a                                    ; $534b: $22
	inc  hl                                          ; $534c: $23
	dec  [hl]                                        ; $534d: $35
	ld   h, a                                        ; $534e: $67
	adc  d                                           ; $534f: $8a
	cp   l                                           ; $5350: $bd
	rst  $28                                         ; $5351: $ef
	rst  $38                                         ; $5352: $ff
	rst  $38                                         ; $5353: $ff
	db   $ed                                         ; $5354: $ed
	xor  c                                           ; $5355: $a9
	ld   [hl], l                                     ; $5356: $75
	ld   b, e                                        ; $5357: $43
	ld   [hl-], a                                    ; $5358: $32
	ld   de, $2322                                   ; $5359: $11 $22 $23
	ld   d, [hl]                                     ; $535c: $56
	ld   a, b                                        ; $535d: $78
	xor  h                                           ; $535e: $ac
	rst  JumpTable                                         ; $535f: $df
	rst  $38                                         ; $5360: $ff
	rst  $38                                         ; $5361: $ff
	db   $ed                                         ; $5362: $ed
	jp   c, Jump_0a6_4386                            ; $5363: $da $86 $43

	ld   [hl-], a                                    ; $5366: $32
	ld   de, $1211                                   ; $5367: $11 $11 $12
	dec  [hl]                                        ; $536a: $35
	ld   h, a                                        ; $536b: $67
	adc  d                                           ; $536c: $8a
	rst  JumpTable                                         ; $536d: $df
	rst  $38                                         ; $536e: $ff
	rst  $38                                         ; $536f: $ff
	rst  $38                                         ; $5370: $ff
	call c, Call_0a6_54a7                            ; $5371: $dc $a7 $54
	ld   [hl-], a                                    ; $5374: $32
	ld   de, $1211                                   ; $5375: $11 $11 $12
	inc  h                                           ; $5378: $24
	ld   h, a                                        ; $5379: $67
	sbc  d                                           ; $537a: $9a
	rst  JumpTable                                         ; $537b: $df
	rst  $38                                         ; $537c: $ff
	rst  $38                                         ; $537d: $ff
	rst  $38                                         ; $537e: $ff
	call c, Call_0a6_53a8                            ; $537f: $dc $a8 $53
	ld   [hl-], a                                    ; $5382: $32
	ld   de, $1101                                   ; $5383: $11 $01 $11
	inc  h                                           ; $5386: $24

Jump_0a6_5387:
	ld   h, a                                        ; $5387: $67
	sbc  e                                           ; $5388: $9b
	rst  JumpTable                                         ; $5389: $df
	rst  $38                                         ; $538a: $ff
	rst  $38                                         ; $538b: $ff
	rst  $38                                         ; $538c: $ff
	db   $ec                                         ; $538d: $ec
	and  a                                           ; $538e: $a7
	ld   b, e                                        ; $538f: $43
	ld   hl, $1111                                   ; $5390: $21 $11 $11
	ld   de, $6724                                   ; $5393: $11 $24 $67
	xor  h                                           ; $5396: $ac

Jump_0a6_5397:
	rst  $38                                         ; $5397: $ff
	rst  $38                                         ; $5398: $ff
	rst  $38                                         ; $5399: $ff
	rst  $38                                         ; $539a: $ff
	jp   c, $3275                                    ; $539b: $da $75 $32

	ld   de, $1111                                   ; $539e: $11 $11 $11
	ld   de, $7946                                   ; $53a1: $11 $46 $79
	adc  $ff                                         ; $53a4: $ce $ff
	rst  $38                                         ; $53a6: $ff
	rst  $38                                         ; $53a7: $ff

Call_0a6_53a8:
	db   $fc                                         ; $53a8: $fc
	or   a                                           ; $53a9: $b7
	ld   d, h                                        ; $53aa: $54
	ld   hl, $1111                                   ; $53ab: $21 $11 $11
	ld   de, $6825                                   ; $53ae: $11 $25 $68
	cp   l                                           ; $53b1: $bd
	rst  $38                                         ; $53b2: $ff
	rst  $38                                         ; $53b3: $ff
	rst  $38                                         ; $53b4: $ff
	cp   $b8                                         ; $53b5: $fe $b8
	ld   d, h                                        ; $53b7: $54
	ld   hl, $1111                                   ; $53b8: $21 $11 $11
	ld   de, $6725                                   ; $53bb: $11 $25 $67
	sbc  h                                           ; $53be: $9c
	rst  $38                                         ; $53bf: $ff
	rst  $38                                         ; $53c0: $ff
	rst  $38                                         ; $53c1: $ff
	cp   $b8                                         ; $53c2: $fe $b8
	ld   d, e                                        ; $53c4: $53
	ld   sp, $1111                                   ; $53c5: $31 $11 $11
	ld   de, $7825                                   ; $53c8: $11 $25 $78
	xor  l                                           ; $53cb: $ad
	rst  $38                                         ; $53cc: $ff
	rst  $38                                         ; $53cd: $ff
	rst  $38                                         ; $53ce: $ff
	cp   $b7                                         ; $53cf: $fe $b7
	ld   b, e                                        ; $53d1: $43
	ld   hl, $1111                                   ; $53d2: $21 $11 $11
	ld   de, $7926                                   ; $53d5: $11 $26 $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53d8: $cf
	rst  $38                                         ; $53d9: $ff
	rst  $38                                         ; $53da: $ff
	rst  $38                                         ; $53db: $ff
	db   $eb                                         ; $53dc: $eb
	add  l                                           ; $53dd: $85
	ld   b, d                                        ; $53de: $42
	ld   de, $1111                                   ; $53df: $11 $11 $11
	ld   [de], a                                     ; $53e2: $12
	ld   l, b                                        ; $53e3: $68
	cp   l                                           ; $53e4: $bd
	rst  $38                                         ; $53e5: $ff
	rst  $38                                         ; $53e6: $ff
	rst  $38                                         ; $53e7: $ff
	db   $fc                                         ; $53e8: $fc
	ld   [hl], c                                     ; $53e9: $71
	inc  hl                                          ; $53ea: $23
	ld   de, $3112                                   ; $53eb: $11 $12 $31
	ld   h, $99                                      ; $53ee: $26 $99
	xor  a                                           ; $53f0: $af
	rst  $38                                         ; $53f1: $ff
	rst  $38                                         ; $53f2: $ff
	rst  $38                                         ; $53f3: $ff
	or   [hl]                                        ; $53f4: $b6
	ld   de, $1114                                   ; $53f5: $11 $14 $11
	ld   d, $96                                      ; $53f8: $16 $96
	ld   l, h                                        ; $53fa: $6c
	db   $fd                                         ; $53fb: $fd
	call $efff                                       ; $53fc: $cd $ff $ef
	db   $fd                                         ; $53ff: $fd
	ld   [hl], c                                     ; $5400: $71
	ld   de, $1116                                   ; $5401: $11 $16 $11
	ld   l, h                                        ; $5404: $6c
	rst  $30                                         ; $5405: $f7
	cp   a                                           ; $5406: $bf
	db   $fc                                         ; $5407: $fc
	cp   a                                           ; $5408: $bf
	cp   $ef                                         ; $5409: $fe $ef
	ld   hl, sp+$11                                  ; $540b: $f8 $11
	ld   de, $1a62                                   ; $540d: $11 $62 $1a
	rst  $38                                         ; $5410: $ff
	cp   d                                           ; $5411: $ba
	rst  $38                                         ; $5412: $ff
	sub  a                                           ; $5413: $97
	rst  $38                                         ; $5414: $ff
	call c, Call_0a6_61ff                            ; $5415: $dc $ff $61
	ld   de, $311a                                   ; $5418: $11 $1a $31
	rst  $38                                         ; $541b: $ff
	ei                                               ; $541c: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $541d: $cf
	and  $5f                                         ; $541e: $e6 $5f
	ei                                               ; $5420: $fb
	cp   a                                           ; $5421: $bf
	pop  af                                          ; $5422: $f1
	ld   de, $f111                                   ; $5423: $11 $11 $f1
	ld   e, a                                        ; $5426: $5f
	rst  $38                                         ; $5427: $ff
	ld   a, a                                        ; $5428: $7f
	db   $f4                                         ; $5429: $f4
	ld   [$9fff], sp                                 ; $542a: $08 $ff $9f
	db   $f4                                         ; $542d: $f4
	ld   de, $f411                                   ; $542e: $11 $11 $f4
	rra                                              ; $5431: $1f
	rst  $38                                         ; $5432: $ff
	sbc  [hl]                                        ; $5433: $9e
	db   $f4                                         ; $5434: $f4
	inc  de                                          ; $5435: $13
	rst  $38                                         ; $5436: $ff
	adc  a                                           ; $5437: $8f
	ld   hl, sp+$11                                  ; $5438: $f8 $11
	ld   de, $1ffe                                   ; $543a: $11 $fe $1f
	rst  $38                                         ; $543d: $ff
	sub  a                                           ; $543e: $97
	or   $11                                         ; $543f: $f6 $11
	rst  $38                                         ; $5441: $ff
	ld   l, a                                        ; $5442: $6f
	ld   sp, hl                                      ; $5443: $f9
	ld   de, rAUD1LEN                                   ; $5444: $11 $11 $ff
	rra                                              ; $5447: $1f
	rst  $38                                         ; $5448: $ff
	ld   a, d                                        ; $5449: $7a
	pop  af                                          ; $544a: $f1
	ld   de, $6ffd                                   ; $544b: $11 $fd $6f
	ldh  a, [c]                                      ; $544e: $f2
	ld   de, $f511                                   ; $544f: $11 $11 $f5
	cp   a                                           ; $5452: $bf
	rst  $38                                         ; $5453: $ff
	cpl                                              ; $5454: $2f
	pop  af                                          ; $5455: $f1
	rla                                              ; $5456: $17
	ld   hl, sp-$71                                  ; $5457: $f8 $8f
	pop  af                                          ; $5459: $f1
	ld   de, $f11f                                   ; $545a: $11 $1f $f1
	rst  $38                                         ; $545d: $ff
	ld   sp, hl                                      ; $545e: $f9
	cp   a                                           ; $545f: $bf
	ld   de, $c21f                                   ; $5460: $11 $1f $c2
	rst  $38                                         ; $5463: $ff
	ld   de, $6f11                                   ; $5464: $11 $11 $6f
	ld   e, a                                        ; $5467: $5f
	rst  $38                                         ; $5468: $ff
	ld   a, [$11fc]                                  ; $5469: $fa $fc $11
	jp   c, $f44f                                    ; $546c: $da $4f $f4

	ld   de, $f715                                   ; $546f: $11 $15 $f7
	rst  $38                                         ; $5472: $ff
	ld   sp, hl                                      ; $5473: $f9
	ld   l, a                                        ; $5474: $6f
	pop  hl                                          ; $5475: $e1
	rra                                              ; $5476: $1f
	ld   h, c                                        ; $5477: $61
	rst  $38                                         ; $5478: $ff
	ld   de, $af11                                   ; $5479: $11 $11 $af
	rst  $38                                         ; $547c: $ff
	rst  $38                                         ; $547d: $ff
	xor  a                                           ; $547e: $af
	ld   hl, sp+$11                                  ; $547f: $f8 $11
	db   $e3                                         ; $5481: $e3
	rra                                              ; $5482: $1f
	pop  af                                          ; $5483: $f1
	ld   de, $fd1f                                   ; $5484: $11 $1f $fd
	rst  $38                                         ; $5487: $ff
	rst  $30                                         ; $5488: $f7
	rst  $38                                         ; $5489: $ff
	ld   sp, $121d                                   ; $548a: $31 $1d $12
	rst  $38                                         ; $548d: $ff
	ld   de, rAUD1LEN                                   ; $548e: $11 $11 $ff
	rst  $38                                         ; $5491: $ff
	db   $fd                                         ; $5492: $fd
	cp   a                                           ; $5493: $bf
	pop  af                                          ; $5494: $f1
	inc  e                                           ; $5495: $1c
	ld   sp, $11bf                                   ; $5496: $31 $bf $11
	ld   de, $cfff                                   ; $5499: $11 $ff $cf
	rst  $38                                         ; $549c: $ff
	ld   a, a                                        ; $549d: $7f
	pop  af                                          ; $549e: $f1
	inc  de                                          ; $549f: $13
	pop  bc                                          ; $54a0: $c1
	cpl                                              ; $54a1: $2f
	pop  af                                          ; $54a2: $f1
	ld   de, $bfbf                                   ; $54a3: $11 $bf $bf
	rst  $38                                         ; $54a6: $ff

Call_0a6_54a7:
	db   $ec                                         ; $54a7: $ec
	di                                               ; $54a8: $f3
	ld   de, $1f81                                   ; $54a9: $11 $81 $1f
	pop  af                                          ; $54ac: $f1
	ld   de, $ff1f                                   ; $54ad: $11 $1f $ff
	rst  $38                                         ; $54b0: $ff
	ld   a, [$11ff]                                  ; $54b1: $fa $ff $11
	sub  l                                           ; $54b4: $95
	dec  de                                          ; $54b5: $1b
	pop  af                                          ; $54b6: $f1
	ld   de, $ff1f                                   ; $54b7: $11 $1f $ff
	rst  $38                                         ; $54ba: $ff
	ld   a, [$11ff]                                  ; $54bb: $fa $ff $11
	pop  de                                          ; $54be: $d1
	ld   e, $f1                                      ; $54bf: $1e $f1
	ld   de, $ff1f                                   ; $54c1: $11 $1f $ff
	rst  $38                                         ; $54c4: $ff
	db   $fd                                         ; $54c5: $fd
	ei                                               ; $54c6: $fb
	ld   de, $1fa1                                   ; $54c7: $11 $a1 $1f
	pop  af                                          ; $54ca: $f1
	ld   de, $df9f                                   ; $54cb: $11 $9f $df
	rst  $38                                         ; $54ce: $ff
	cp   $f3                                         ; $54cf: $fe $f3
	ld   de, $4f71                                   ; $54d1: $11 $71 $4f
	sub  c                                           ; $54d4: $91
	ld   de, $ffff                                   ; $54d5: $11 $ff $ff
	rst  $38                                         ; $54d8: $ff
	rst  $38                                         ; $54d9: $ff
	pop  af                                          ; $54da: $f1
	ld   [de], a                                     ; $54db: $12
	ld   sp, $21be                                   ; $54dc: $31 $be $21
	ld   de, $ffff                                   ; $54df: $11 $ff $ff
	rst  $38                                         ; $54e2: $ff
	rst  $28                                         ; $54e3: $ef
	pop  af                                          ; $54e4: $f1
	inc  de                                          ; $54e5: $13
	ld   de, $11da                                   ; $54e6: $11 $da $11
	ld   e, $ff                                      ; $54e9: $1e $ff
	rst  $38                                         ; $54eb: $ff
	rst  $38                                         ; $54ec: $ff
	rst  $38                                         ; $54ed: $ff
	ld   d, c                                        ; $54ee: $51
	ld   de, $b216                                   ; $54ef: $11 $16 $b2
	ld   de, $ff1f                                   ; $54f2: $11 $1f $ff
	rst  $38                                         ; $54f5: $ff
	rst  $38                                         ; $54f6: $ff
	rst  $38                                         ; $54f7: $ff
	ld   de, $1c31                                   ; $54f8: $11 $31 $1c
	sub  c                                           ; $54fb: $91
	ld   de, $afff                                   ; $54fc: $11 $ff $af
	rst  $38                                         ; $54ff: $ff
	rst  $38                                         ; $5500: $ff
	pop  af                                          ; $5501: $f1
	ld   de, $7e11                                   ; $5502: $11 $11 $7e
	ld   hl, rAUD1LEN                                   ; $5505: $21 $11 $ff
	rst  $38                                         ; $5508: $ff
	rst  $38                                         ; $5509: $ff
	rst  $38                                         ; $550a: $ff
	pop  af                                          ; $550b: $f1
	ld   de, $a912                                   ; $550c: $11 $12 $a9
	ld   de, $fe1f                                   ; $550f: $11 $1f $fe
	rst  $38                                         ; $5512: $ff
	rst  $38                                         ; $5513: $ff
	rst  $38                                         ; $5514: $ff
	ld   de, $1711                                   ; $5515: $11 $11 $17
	add  c                                           ; $5518: $81
	ld   de, $ef4f                                   ; $5519: $11 $4f $ef
	rst  $38                                         ; $551c: $ff
	rst  $38                                         ; $551d: $ff
	db   $f4                                         ; $551e: $f4
	ld   de, $5911                                   ; $551f: $11 $11 $59
	ld   hl, rAUD1LEN                                   ; $5522: $21 $11 $ff
	rst  $38                                         ; $5525: $ff
	rst  $38                                         ; $5526: $ff
	rst  $38                                         ; $5527: $ff
	or   c                                           ; $5528: $b1
	ld   de, $7716                                   ; $5529: $11 $16 $77
	ld   de, $ff1f                                   ; $552c: $11 $1f $ff
	rst  $38                                         ; $552f: $ff
	rst  $38                                         ; $5530: $ff
	rst  $38                                         ; $5531: $ff
	ld   de, $4711                                   ; $5532: $11 $11 $47
	ld   d, c                                        ; $5535: $51
	ld   de, $ff6f                                   ; $5536: $11 $6f $ff
	rst  $38                                         ; $5539: $ff
	rst  $38                                         ; $553a: $ff
	pop  af                                          ; $553b: $f1
	ld   de, $8812                                   ; $553c: $11 $12 $88
	ld   de, $fe11                                   ; $553f: $11 $11 $fe
	rst  $38                                         ; $5542: $ff
	rst  $38                                         ; $5543: $ff
	rst  $38                                         ; $5544: $ff
	ld   de, $1c11                                   ; $5545: $11 $11 $1c
	sub  c                                           ; $5548: $91
	ld   de, $ff1f                                   ; $5549: $11 $1f $ff
	rst  $38                                         ; $554c: $ff
	rst  $38                                         ; $554d: $ff
	di                                               ; $554e: $f3
	ld   de, $7c11                                   ; $554f: $11 $11 $7c
	add  c                                           ; $5552: $81
	ld   de, $efbf                                   ; $5553: $11 $bf $ef
	rst  $38                                         ; $5556: $ff
	rst  $38                                         ; $5557: $ff
	pop  bc                                          ; $5558: $c1
	ld   de, $9b12                                   ; $5559: $11 $12 $9b
	ld   de, $fc19                                   ; $555c: $11 $19 $fc
	rst  $38                                         ; $555f: $ff
	rst  $38                                         ; $5560: $ff
	db   $fd                                         ; $5561: $fd
	ld   de, $1f11                                   ; $5562: $11 $11 $1f
	pop  de                                          ; $5565: $d1
	ld   de, $bf1f                                   ; $5566: $11 $1f $bf
	rst  $38                                         ; $5569: $ff
	rst  $38                                         ; $556a: $ff
	pop  af                                          ; $556b: $f1
	ld   de, rAUD1LEN                                   ; $556c: $11 $11 $ff
	ld   de, $8b11                                   ; $556f: $11 $11 $8b
	rst  $38                                         ; $5572: $ff
	rst  $38                                         ; $5573: $ff
	rst  $38                                         ; $5574: $ff
	ld   de, $1d11                                   ; $5575: $11 $11 $1d
	pop  de                                          ; $5578: $d1
	ld   de, rAUD1LOW                                   ; $5579: $11 $13 $ff
	rst  $38                                         ; $557c: $ff
	rst  $38                                         ; $557d: $ff
	db   $f4                                         ; $557e: $f4
	ld   de, $9b11                                   ; $557f: $11 $11 $9b
	ld   d, c                                        ; $5582: $51
	ld   de, $ff1b                                   ; $5583: $11 $1b $ff
	rst  $38                                         ; $5586: $ff
	rst  $38                                         ; $5587: $ff
	sub  c                                           ; $5588: $91
	ld   de, $fb11                                   ; $5589: $11 $11 $fb
	ld   [hl-], a                                    ; $558c: $32
	ld   de, $ff7a                                   ; $558d: $11 $7a $ff
	rst  $38                                         ; $5590: $ff
	rst  $38                                         ; $5591: $ff
	ld   de, $1a11                                   ; $5592: $11 $11 $1a
	pop  hl                                          ; $5595: $e1

Call_0a6_5596:
	ld   de, $8f11                                   ; $5596: $11 $11 $8f
	rst  $38                                         ; $5599: $ff
	rst  $38                                         ; $559a: $ff
	push af                                          ; $559b: $f5
	ld   de, $8e11                                   ; $559c: $11 $11 $8e
	ld   b, c                                        ; $559f: $41
	ld   bc, $af1e                                   ; $55a0: $01 $1e $af
	rst  $38                                         ; $55a3: $ff
	rst  $38                                         ; $55a4: $ff
	pop  af                                          ; $55a5: $f1
	ld   de, $dd14                                   ; $55a6: $11 $14 $dd
	ld   [de], a                                     ; $55a9: $12
	ld   de, $ff7a                                   ; $55aa: $11 $7a $ff
	rst  $38                                         ; $55ad: $ff
	rst  $38                                         ; $55ae: $ff
	ld   b, c                                        ; $55af: $41
	ld   de, $8b29                                   ; $55b0: $11 $29 $8b
	ld   d, c                                        ; $55b3: $51
	ld   d, $4a                                      ; $55b4: $16 $4a
	rst  $38                                         ; $55b6: $ff
	rst  $38                                         ; $55b7: $ff
	ld   sp, hl                                      ; $55b8: $f9
	ld   de, $3d11                                   ; $55b9: $11 $11 $3d
	pop  af                                          ; $55bc: $f1
	ld   h, c                                        ; $55bd: $61
	ld   a, [de]                                     ; $55be: $1a
	ld   a, a                                        ; $55bf: $7f
	rst  $38                                         ; $55c0: $ff
	rst  $38                                         ; $55c1: $ff
	di                                               ; $55c2: $f3
	ld   de, $b717                                   ; $55c3: $11 $17 $b7
	and  l                                           ; $55c6: $a5
	ld   de, $4f4b                                   ; $55c7: $11 $4b $4f
	rst  $38                                         ; $55ca: $ff
	rst  $38                                         ; $55cb: $ff
	pop  af                                          ; $55cc: $f1
	ld   de, $9b16                                   ; $55cd: $11 $16 $9b
	ld   d, l                                        ; $55d0: $55
	ld   de, $bf78                                   ; $55d1: $11 $78 $bf
	rst  $38                                         ; $55d4: $ff
	db   $fc                                         ; $55d5: $fc
	add  c                                           ; $55d6: $81
	ld   de, $5a57                                   ; $55d7: $11 $57 $5a
	ld   [hl], c                                     ; $55da: $71
	ld   [de], a                                     ; $55db: $12
	cp   b                                           ; $55dc: $b8
	rst  JumpTable                                         ; $55dd: $df
	rst  $38                                         ; $55de: $ff
	push af                                          ; $55df: $f5
	ld   hl, $6b12                                   ; $55e0: $21 $12 $6b
	ld   [hl], h                                     ; $55e3: $74
	sub  c                                           ; $55e4: $91
	inc  de                                          ; $55e5: $13
	rst  ToBoot                                         ; $55e6: $c7
	rst  $38                                         ; $55e7: $ff
	rst  $38                                         ; $55e8: $ff
	rst  $10                                         ; $55e9: $d7
	ld   de, wTitleScreenGirlHairAnimIdx                                   ; $55ea: $11 $12 $cc
	ld   sp, hl                                      ; $55ed: $f9
	ld   sp, $3717                                   ; $55ee: $31 $17 $37
	rst  $38                                         ; $55f1: $ff
	rst  $38                                         ; $55f2: $ff
	or   h                                           ; $55f3: $b4
	ld   de, $bf11                                   ; $55f4: $11 $11 $bf
	jp   z, $1451                                    ; $55f7: $ca $51 $14

	xor  a                                           ; $55fa: $af
	rst  $38                                         ; $55fb: $ff
	cp   $71                                         ; $55fc: $fe $71
	ld   de, $ae1c                                   ; $55fe: $11 $1c $ae
	sub  $51                                         ; $5601: $d6 $51
	dec  de                                          ; $5603: $1b
	cp   a                                           ; $5604: $bf
	rst  $38                                         ; $5605: $ff
	db   $fd                                         ; $5606: $fd
	and  c                                           ; $5607: $a1
	ld   de, $cb5f                                   ; $5608: $11 $5f $cb
	or   a                                           ; $560b: $b7
	ld   de, $4e55                                   ; $560c: $11 $55 $4e
	rst  $38                                         ; $560f: $ff
	rst  $38                                         ; $5610: $ff
	sub  c                                           ; $5611: $91
	ld   de, $dc27                                   ; $5612: $11 $27 $dc
	add  e                                           ; $5615: $83
	ld   b, c                                        ; $5616: $41
	ld   d, $cc                                      ; $5617: $16 $cc
	rst  $38                                         ; $5619: $ff
	ld   a, [$1378]                                  ; $561a: $fa $78 $13
	ld   h, l                                        ; $561d: $65
	sbc  d                                           ; $561e: $9a
	ld   [hl], l                                     ; $561f: $75
	inc  [hl]                                        ; $5620: $34
	ld   [hl+], a                                    ; $5621: $22
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5622: $cf
	rst  $28                                         ; $5623: $ef
	ld   sp, hl                                      ; $5624: $f9
	ld   h, $74                                      ; $5625: $26 $74
	ld   c, h                                        ; $5627: $4c
	and  [hl]                                        ; $5628: $a6
	add  [hl]                                        ; $5629: $86
	inc  [hl]                                        ; $562a: $34
	ld   [hl], l                                     ; $562b: $75
	ld   l, a                                        ; $562c: $6f
	reti                                             ; $562d: $d9


	cp   e                                           ; $562e: $bb
	ld   [hl], d                                     ; $562f: $72
	cp   [hl]                                        ; $5630: $be
	adc  c                                           ; $5631: $89
	sub  a                                           ; $5632: $97
	jr   z, @-$5b                                    ; $5633: $28 $a3

	ld   d, a                                        ; $5635: $57
	ld   d, a                                        ; $5636: $57
	cp   $77                                         ; $5637: $fe $77
	sub  h                                           ; $5639: $94
	ld   c, d                                        ; $563a: $4a
	ld   sp, hl                                      ; $563b: $f9
	sbc  d                                           ; $563c: $9a
	inc  de                                          ; $563d: $13
	ld   c, d                                        ; $563e: $4a
	sub  e                                           ; $563f: $93
	and  a                                           ; $5640: $a7
	ld   l, e                                        ; $5641: $6b
	cp   e                                           ; $5642: $bb
	ld   h, a                                        ; $5643: $67
	halt                                             ; $5644: $76
	sbc  e                                           ; $5645: $9b
	ret                                              ; $5646: $c9


	xor  c                                           ; $5647: $a9
	ld   h, e                                        ; $5648: $63
	adc  b                                           ; $5649: $88
	ld   h, $b7                                      ; $564a: $26 $b7
	ld   e, e                                        ; $564c: $5b
	or   [hl]                                        ; $564d: $b6
	ld   d, [hl]                                     ; $564e: $56
	ld   l, b                                        ; $564f: $68
	cp   l                                           ; $5650: $bd
	db   $fc                                         ; $5651: $fc
	or   [hl]                                        ; $5652: $b6
	ld   [hl], h                                     ; $5653: $74
	ld   d, $58                                      ; $5654: $16 $58
	sbc  d                                           ; $5656: $9a
	xor  b                                           ; $5657: $a8
	sub  l                                           ; $5658: $95
	ld   d, a                                        ; $5659: $57
	ld   h, [hl]                                     ; $565a: $66
	xor  l                                           ; $565b: $ad
	ei                                               ; $565c: $fb
	cp   d                                           ; $565d: $ba
	ld   d, c                                        ; $565e: $51
	dec  [hl]                                        ; $565f: $35
	scf                                              ; $5660: $37
	call c, $a49c                                    ; $5661: $dc $9c $a4
	inc  [hl]                                        ; $5664: $34
	add  [hl]                                        ; $5665: $86
	sbc  a                                           ; $5666: $9f
	ret                                              ; $5667: $c9


	ld   a, b                                        ; $5668: $78
	ld   d, e                                        ; $5669: $53
	sbc  b                                           ; $566a: $98
	ld   a, d                                        ; $566b: $7a
	cp   b                                           ; $566c: $b8
	ld   [hl], a                                     ; $566d: $77
	halt                                             ; $566e: $76
	ld   l, c                                        ; $566f: $69
	ld   a, c                                        ; $5670: $79
	sbc  c                                           ; $5671: $99
	xor  d                                           ; $5672: $aa
	or   a                                           ; $5673: $b7
	ld   d, [hl]                                     ; $5674: $56
	ld   d, [hl]                                     ; $5675: $56
	sbc  d                                           ; $5676: $9a
	xor  b                                           ; $5677: $a8
	xor  e                                           ; $5678: $ab
	ld   h, a                                        ; $5679: $67
	halt                                             ; $567a: $76
	ld   e, b                                        ; $567b: $58
	or   [hl]                                        ; $567c: $b6
	sbc  d                                           ; $567d: $9a
	ld   d, a                                        ; $567e: $57
	xor  b                                           ; $567f: $a8
	ld   d, a                                        ; $5680: $57
	or   a                                           ; $5681: $b7
	adc  e                                           ; $5682: $8b
	or   a                                           ; $5683: $b7
	adc  d                                           ; $5684: $8a
	ld   d, l                                        ; $5685: $55
	sbc  b                                           ; $5686: $98
	ld   l, c                                        ; $5687: $69
	cp   d                                           ; $5688: $ba
	ld   a, b                                        ; $5689: $78
	add  l                                           ; $568a: $85
	ld   h, a                                        ; $568b: $67
	ld   a, c                                        ; $568c: $79
	adc  c                                           ; $568d: $89
	sbc  d                                           ; $568e: $9a
	xor  b                                           ; $568f: $a8
	sbc  b                                           ; $5690: $98
	ld   h, [hl]                                     ; $5691: $66
	ld   a, b                                        ; $5692: $78
	ld   a, c                                        ; $5693: $79
	add  a                                           ; $5694: $87
	add  a                                           ; $5695: $87
	ld   [hl], a                                     ; $5696: $77
	xor  d                                           ; $5697: $aa
	sbc  b                                           ; $5698: $98
	halt                                             ; $5699: $76
	ld   a, c                                        ; $569a: $79
	xor  c                                           ; $569b: $a9
	sub  a                                           ; $569c: $97
	ld   [hl], a                                     ; $569d: $77
	sbc  d                                           ; $569e: $9a
	adc  b                                           ; $569f: $88
	add  a                                           ; $56a0: $87
	halt                                             ; $56a1: $76
	adc  b                                           ; $56a2: $88
	adc  b                                           ; $56a3: $88
	ld   l, b                                        ; $56a4: $68
	add  a                                           ; $56a5: $87
	ld   [hl], a                                     ; $56a6: $77

Call_0a6_56a7:
	adc  b                                           ; $56a7: $88
	ld   a, c                                        ; $56a8: $79
	xor  c                                           ; $56a9: $a9
	adc  b                                           ; $56aa: $88
	sub  a                                           ; $56ab: $97
	ld   [hl], a                                     ; $56ac: $77
	sbc  c                                           ; $56ad: $99
	adc  d                                           ; $56ae: $8a
	sub  a                                           ; $56af: $97
	add  a                                           ; $56b0: $87
	ld   [hl], a                                     ; $56b1: $77
	adc  d                                           ; $56b2: $8a
	adc  b                                           ; $56b3: $88
	sbc  b                                           ; $56b4: $98
	halt                                             ; $56b5: $76
	ld   a, c                                        ; $56b6: $79
	ld   [hl], a                                     ; $56b7: $77
	ld   a, c                                        ; $56b8: $79
	sbc  b                                           ; $56b9: $98
	sbc  c                                           ; $56ba: $99
	add  a                                           ; $56bb: $87
	ld   [hl], a                                     ; $56bc: $77
	ld   [hl], a                                     ; $56bd: $77
	xor  c                                           ; $56be: $a9
	sbc  b                                           ; $56bf: $98
	add  a                                           ; $56c0: $87
	ld   l, b                                        ; $56c1: $68
	adc  b                                           ; $56c2: $88
	adc  b                                           ; $56c3: $88
	sbc  b                                           ; $56c4: $98
	sbc  c                                           ; $56c5: $99
	halt                                             ; $56c6: $76
	ld   [hl], a                                     ; $56c7: $77
	adc  c                                           ; $56c8: $89
	sbc  c                                           ; $56c9: $99
	halt                                             ; $56ca: $76
	ld   h, [hl]                                     ; $56cb: $66
	ld   a, c                                        ; $56cc: $79
	adc  c                                           ; $56cd: $89
	adc  c                                           ; $56ce: $89
	sbc  b                                           ; $56cf: $98
	add  a                                           ; $56d0: $87
	ld   [hl], a                                     ; $56d1: $77
	ld   a, b                                        ; $56d2: $78
	sbc  c                                           ; $56d3: $99
	adc  b                                           ; $56d4: $88
	halt                                             ; $56d5: $76
	ld   [hl], a                                     ; $56d6: $77
	adc  c                                           ; $56d7: $89
	sbc  c                                           ; $56d8: $99
	sbc  b                                           ; $56d9: $98
	sbc  b                                           ; $56da: $98
	adc  b                                           ; $56db: $88
	adc  b                                           ; $56dc: $88
	ld   a, c                                        ; $56dd: $79
	sbc  b                                           ; $56de: $98
	add  a                                           ; $56df: $87
	adc  b                                           ; $56e0: $88
	adc  b                                           ; $56e1: $88
	adc  b                                           ; $56e2: $88
	adc  b                                           ; $56e3: $88
	adc  b                                           ; $56e4: $88
	ld   a, b                                        ; $56e5: $78
	adc  c                                           ; $56e6: $89
	sbc  b                                           ; $56e7: $98
	add  a                                           ; $56e8: $87
	adc  b                                           ; $56e9: $88
	adc  b                                           ; $56ea: $88
	adc  b                                           ; $56eb: $88
	ld   a, b                                        ; $56ec: $78
	adc  b                                           ; $56ed: $88
	add  a                                           ; $56ee: $87
	adc  b                                           ; $56ef: $88
	adc  c                                           ; $56f0: $89
	adc  b                                           ; $56f1: $88
	adc  b                                           ; $56f2: $88
	ld   [hl], a                                     ; $56f3: $77
	adc  b                                           ; $56f4: $88
	adc  c                                           ; $56f5: $89
	sbc  c                                           ; $56f6: $99
	adc  b                                           ; $56f7: $88
	adc  b                                           ; $56f8: $88
	add  a                                           ; $56f9: $87
	ld   a, b                                        ; $56fa: $78
	adc  b                                           ; $56fb: $88
	adc  b                                           ; $56fc: $88
	adc  b                                           ; $56fd: $88
	adc  b                                           ; $56fe: $88
	adc  b                                           ; $56ff: $88
	adc  b                                           ; $5700: $88
	adc  b                                           ; $5701: $88
	sbc  b                                           ; $5702: $98
	add  a                                           ; $5703: $87
	ld   [hl], a                                     ; $5704: $77
	ld   a, b                                        ; $5705: $78
	adc  b                                           ; $5706: $88
	adc  b                                           ; $5707: $88
	adc  b                                           ; $5708: $88
	adc  b                                           ; $5709: $88
	adc  b                                           ; $570a: $88
	adc  b                                           ; $570b: $88
	adc  b                                           ; $570c: $88
	sbc  b                                           ; $570d: $98
	adc  b                                           ; $570e: $88
	ld   [hl], a                                     ; $570f: $77
	ld   a, b                                        ; $5710: $78
	adc  b                                           ; $5711: $88
	adc  b                                           ; $5712: $88
	adc  b                                           ; $5713: $88
	adc  b                                           ; $5714: $88
	adc  b                                           ; $5715: $88
	adc  b                                           ; $5716: $88
	adc  b                                           ; $5717: $88
	adc  b                                           ; $5718: $88
	ld   a, b                                        ; $5719: $78
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

Call_0a6_57a5:
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

Jump_0a6_57d7:
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

Call_0a6_59a7:
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

Call_0a6_61ff:
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
	sbc  b                                           ; $6373: $98
	ld   a, b                                        ; $6374: $78
	sbc  c                                           ; $6375: $99
	xor  c                                           ; $6376: $a9
	sbc  b                                           ; $6377: $98
	add  a                                           ; $6378: $87
	ld   [hl], a                                     ; $6379: $77
	ld   [hl], a                                     ; $637a: $77
	adc  b                                           ; $637b: $88
	sbc  c                                           ; $637c: $99
	sbc  c                                           ; $637d: $99
	sbc  c                                           ; $637e: $99
	add  a                                           ; $637f: $87
	ld   [hl], a                                     ; $6380: $77
	ld   [hl], a                                     ; $6381: $77
	ld   a, b                                        ; $6382: $78
	sbc  b                                           ; $6383: $98
	adc  c                                           ; $6384: $89
	adc  b                                           ; $6385: $88
	adc  b                                           ; $6386: $88
	ld   [hl], a                                     ; $6387: $77
	ld   [hl], a                                     ; $6388: $77
	adc  b                                           ; $6389: $88
	adc  c                                           ; $638a: $89
	sbc  b                                           ; $638b: $98
	adc  c                                           ; $638c: $89
	sbc  b                                           ; $638d: $98
	cp   c                                           ; $638e: $b9
	adc  a                                           ; $638f: $8f
	or   a                                           ; $6390: $b7
	and  [hl]                                        ; $6391: $a6
	ld   h, h                                        ; $6392: $64
	dec  [hl]                                        ; $6393: $35
	ld   b, d                                        ; $6394: $42
	ld   h, a                                        ; $6395: $67
	xor  e                                           ; $6396: $ab
	sbc  h                                           ; $6397: $9c
	db   $ed                                         ; $6398: $ed
	db   $db                                         ; $6399: $db
	xor  b                                           ; $639a: $a8
	ld   h, [hl]                                     ; $639b: $66
	ld   h, h                                        ; $639c: $64
	ld   b, h                                        ; $639d: $44
	inc  sp                                          ; $639e: $33
	ld   [hl+], a                                    ; $639f: $22
	ld   l, d                                        ; $63a0: $6a
	ld   a, b                                        ; $63a1: $78
	rst  $38                                         ; $63a2: $ff
	rst  $38                                         ; $63a3: $ff
	call z, Call_0a6_57a5                            ; $63a4: $cc $a5 $57
	ld   b, l                                        ; $63a7: $45
	ld   [hl], a                                     ; $63a8: $77
	ld   h, e                                        ; $63a9: $63
	ld   b, [hl]                                     ; $63aa: $46
	inc  [hl]                                        ; $63ab: $34
	sub  h                                           ; $63ac: $94
	ld   e, [hl]                                     ; $63ad: $5e
	rst  $38                                         ; $63ae: $ff
	cp   $ea                                         ; $63af: $fe $ea
	ld   e, b                                        ; $63b1: $58
	ld   [hl], l                                     ; $63b2: $75
	add  a                                           ; $63b3: $87
	ld   h, h                                        ; $63b4: $64
	inc  d                                           ; $63b5: $14
	ld   b, c                                        ; $63b6: $41
	ld   h, $67                                      ; $63b7: $26 $67
	rst  $38                                         ; $63b9: $ff
	rst  $38                                         ; $63ba: $ff
	db   $fd                                         ; $63bb: $fd
	ld   d, [hl]                                     ; $63bc: $56
	ld   h, a                                        ; $63bd: $67
	ld   b, a                                        ; $63be: $47
	sub  h                                           ; $63bf: $94
	ld   [de], a                                     ; $63c0: $12
	ld   d, d                                        ; $63c1: $52
	inc  de                                          ; $63c2: $13
	add  e                                           ; $63c3: $83
	cp   a                                           ; $63c4: $bf
	rst  $38                                         ; $63c5: $ff
	cp   $a6                                         ; $63c6: $fe $a6
	ld   d, l                                        ; $63c8: $55
	ld   h, a                                        ; $63c9: $67
	ld   h, h                                        ; $63ca: $64
	ld   sp, $1144                                   ; $63cb: $31 $44 $11
	ld   e, c                                        ; $63ce: $59
	xor  l                                           ; $63cf: $ad
	rst  $38                                         ; $63d0: $ff
	ei                                               ; $63d1: $fb
	cp   b                                           ; $63d2: $b8
	ld   b, e                                        ; $63d3: $43
	ld   a, d                                        ; $63d4: $7a
	ld   [hl], h                                     ; $63d5: $74
	ld   [hl-], a                                    ; $63d6: $32
	inc  sp                                          ; $63d7: $33
	ld   b, c                                        ; $63d8: $41
	add  hl, bc                                      ; $63d9: $09
	xor  a                                           ; $63da: $af
	rst  $38                                         ; $63db: $ff
	ei                                               ; $63dc: $fb
	and  a                                           ; $63dd: $a7
	ld   h, [hl]                                     ; $63de: $66
	adc  b                                           ; $63df: $88
	ld   h, e                                        ; $63e0: $63
	ld   [de], a                                     ; $63e1: $12
	inc  [hl]                                        ; $63e2: $34
	ld   sp, $cf28                                   ; $63e3: $31 $28 $cf
	rst  $38                                         ; $63e6: $ff
	ei                                               ; $63e7: $fb
	and  [hl]                                        ; $63e8: $a6
	ld   h, [hl]                                     ; $63e9: $66
	ld   [hl], l                                     ; $63ea: $75
	ld   d, [hl]                                     ; $63eb: $56
	inc  [hl]                                        ; $63ec: $34
	dec  [hl]                                        ; $63ed: $35
	ld   hl, $bf2a                                   ; $63ee: $21 $2a $bf
	rst  $38                                         ; $63f1: $ff
	jp   c, Jump_0a6_57d7                            ; $63f2: $da $d7 $57

	and  a                                           ; $63f5: $a7
	ld   l, b                                        ; $63f6: $68
	ld   b, e                                        ; $63f7: $43
	ld   [hl], $11                                   ; $63f8: $36 $11
	add  hl, de                                      ; $63fa: $19
	sbc  d                                           ; $63fb: $9a
	rst  $38                                         ; $63fc: $ff
	call c, Call_0a6_65ca                            ; $63fd: $dc $ca $65
	and  a                                           ; $6400: $a7
	add  a                                           ; $6401: $87
	ld   d, h                                        ; $6402: $54
	ld   [de], a                                     ; $6403: $12
	ld   de, $6c16                                   ; $6404: $11 $16 $6c
	rst  $38                                         ; $6407: $ff
	db   $fd                                         ; $6408: $fd
	xor  d                                           ; $6409: $aa
	ld   h, [hl]                                     ; $640a: $66
	xor  c                                           ; $640b: $a9
	add  [hl]                                        ; $640c: $86
	ld   d, c                                        ; $640d: $51
	ld   d, $21                                      ; $640e: $16 $21
	ld   [de], a                                     ; $6410: $12
	adc  h                                           ; $6411: $8c
	rst  $38                                         ; $6412: $ff
	rst  $38                                         ; $6413: $ff
	add  $99                                         ; $6414: $c6 $99
	sbc  b                                           ; $6416: $98
	add  [hl]                                        ; $6417: $86
	ld   b, e                                        ; $6418: $43
	dec  h                                           ; $6419: $25
	ld   hl, $8c13                                   ; $641a: $21 $13 $8c
	rst  $38                                         ; $641d: $ff
	cp   $9b                                         ; $641e: $fe $9b
	rst  ToBoot                                         ; $6420: $c7
	sbc  h                                           ; $6421: $9c
	ld   d, l                                        ; $6422: $55
	ld   h, h                                        ; $6423: $64
	inc  [hl]                                        ; $6424: $34
	ld   hl, $5c13                                   ; $6425: $21 $13 $5c
	db   $fd                                         ; $6428: $fd
	db   $fd                                         ; $6429: $fd
	ld   a, a                                        ; $642a: $7f
	cp   b                                           ; $642b: $b8
	ld   l, d                                        ; $642c: $6a
	add  a                                           ; $642d: $87
	add  [hl]                                        ; $642e: $86
	ld   d, a                                        ; $642f: $57
	ld   sp, $4711                                   ; $6430: $31 $11 $47
	call c, $efec                                    ; $6433: $dc $ec $ef
	xor  l                                           ; $6436: $ad
	xor  c                                           ; $6437: $a9
	and  [hl]                                        ; $6438: $a6
	ld   a, c                                        ; $6439: $79
	sub  h                                           ; $643a: $94
	ld   de, $1623                                   ; $643b: $11 $23 $16
	or   a                                           ; $643e: $b7
	sbc  h                                           ; $643f: $9c
	db   $fd                                         ; $6440: $fd
	cp   a                                           ; $6441: $bf
	ret  z                                           ; $6442: $c8

	ld   e, b                                        ; $6443: $58
	adc  e                                           ; $6444: $8b
	halt                                             ; $6445: $76
	ld   sp, $4243                                   ; $6446: $31 $43 $42
	ld   h, $cb                                      ; $6449: $26 $cb
	adc  $db                                         ; $644b: $ce $db
	xor  e                                           ; $644d: $ab
	ld   a, l                                        ; $644e: $7d
	sub  $77                                         ; $644f: $d6 $77
	ld   [hl-], a                                    ; $6451: $32
	ld   d, [hl]                                     ; $6452: $56
	ld   sp, $c417                                   ; $6453: $31 $17 $c4
	ld   d, a                                        ; $6456: $57
	ld   l, [hl]                                     ; $6457: $6e
	reti                                             ; $6458: $d9


	cp   [hl]                                        ; $6459: $be
	ld   sp, hl                                      ; $645a: $f9
	ld   c, d                                        ; $645b: $4a
	and  a                                           ; $645c: $a7
	ld   h, [hl]                                     ; $645d: $66
	ld   b, h                                        ; $645e: $44
	inc  hl                                          ; $645f: $23
	ld   d, [hl]                                     ; $6460: $56
	ld   [hl], e                                     ; $6461: $73
	ld   a, d                                        ; $6462: $7a
	add  a                                           ; $6463: $87
	xor  e                                           ; $6464: $ab
	adc  $bb                                         ; $6465: $ce $bb
	res  3, c                                        ; $6467: $cb $99
	add  a                                           ; $6469: $87
	ld   a, c                                        ; $646a: $79
	sbc  b                                           ; $646b: $98
	sub  [hl]                                        ; $646c: $96
	ld   l, b                                        ; $646d: $68
	sbc  c                                           ; $646e: $99
	add  a                                           ; $646f: $87
	sbc  c                                           ; $6470: $99
	sbc  c                                           ; $6471: $99
	sbc  d                                           ; $6472: $9a
	sbc  c                                           ; $6473: $99
	sbc  c                                           ; $6474: $99
	xor  d                                           ; $6475: $aa
	sbc  d                                           ; $6476: $9a
	sbc  d                                           ; $6477: $9a
	add  a                                           ; $6478: $87
	sbc  b                                           ; $6479: $98
	halt                                             ; $647a: $76
	ld   a, c                                        ; $647b: $79
	sbc  b                                           ; $647c: $98
	adc  c                                           ; $647d: $89
	adc  b                                           ; $647e: $88
	ld   a, b                                        ; $647f: $78
	ld   a, b                                        ; $6480: $78
	add  a                                           ; $6481: $87
	adc  b                                           ; $6482: $88
	adc  b                                           ; $6483: $88
	sbc  c                                           ; $6484: $99
	sbc  c                                           ; $6485: $99
	sbc  b                                           ; $6486: $98
	sbc  b                                           ; $6487: $98
	sbc  c                                           ; $6488: $99
	sbc  b                                           ; $6489: $98
	adc  b                                           ; $648a: $88
	add  a                                           ; $648b: $87
	adc  b                                           ; $648c: $88
	adc  b                                           ; $648d: $88
	adc  b                                           ; $648e: $88
	sbc  c                                           ; $648f: $99
	adc  b                                           ; $6490: $88
	adc  b                                           ; $6491: $88
	sbc  c                                           ; $6492: $99
	adc  b                                           ; $6493: $88
	sbc  b                                           ; $6494: $98
	add  a                                           ; $6495: $87
	adc  b                                           ; $6496: $88
	ld   [hl], a                                     ; $6497: $77
	ld   a, c                                        ; $6498: $79
	sub  a                                           ; $6499: $97
	ld   a, b                                        ; $649a: $78
	sbc  b                                           ; $649b: $98
	adc  c                                           ; $649c: $89
	sbc  c                                           ; $649d: $99
	adc  b                                           ; $649e: $88
	sbc  b                                           ; $649f: $98
	sub  a                                           ; $64a0: $97
	ld   [hl], a                                     ; $64a1: $77
	add  a                                           ; $64a2: $87
	ld   h, a                                        ; $64a3: $67
	adc  c                                           ; $64a4: $89
	adc  b                                           ; $64a5: $88
	adc  b                                           ; $64a6: $88
	add  a                                           ; $64a7: $87
	ld   a, b                                        ; $64a8: $78
	ld   a, b                                        ; $64a9: $78
	adc  b                                           ; $64aa: $88
	adc  b                                           ; $64ab: $88
	ld   [hl], a                                     ; $64ac: $77
	adc  b                                           ; $64ad: $88
	ld   [hl], a                                     ; $64ae: $77
	sbc  c                                           ; $64af: $99
	adc  b                                           ; $64b0: $88
	sbc  c                                           ; $64b1: $99
	add  a                                           ; $64b2: $87
	adc  b                                           ; $64b3: $88
	ld   a, b                                        ; $64b4: $78
	adc  b                                           ; $64b5: $88
	adc  b                                           ; $64b6: $88
	add  a                                           ; $64b7: $87
	ld   [hl], a                                     ; $64b8: $77
	ld   [hl], a                                     ; $64b9: $77
	ld   [hl], a                                     ; $64ba: $77
	sbc  c                                           ; $64bb: $99
	adc  b                                           ; $64bc: $88
	add  a                                           ; $64bd: $87
	ld   [hl], a                                     ; $64be: $77
	ld   a, b                                        ; $64bf: $78
	ld   a, c                                        ; $64c0: $79
	adc  b                                           ; $64c1: $88
	ld   a, b                                        ; $64c2: $78
	add  a                                           ; $64c3: $87
	ld   [hl], a                                     ; $64c4: $77
	ld   a, b                                        ; $64c5: $78
	adc  b                                           ; $64c6: $88
	adc  b                                           ; $64c7: $88
	ld   [hl], a                                     ; $64c8: $77
	ld   [hl], a                                     ; $64c9: $77
	ld   a, b                                        ; $64ca: $78
	adc  b                                           ; $64cb: $88
	adc  b                                           ; $64cc: $88
	add  a                                           ; $64cd: $87
	ld   [hl], a                                     ; $64ce: $77
	ld   a, b                                        ; $64cf: $78
	add  a                                           ; $64d0: $87
	sbc  c                                           ; $64d1: $99
	adc  b                                           ; $64d2: $88
	ld   a, b                                        ; $64d3: $78
	adc  b                                           ; $64d4: $88
	ld   [hl], a                                     ; $64d5: $77
	adc  b                                           ; $64d6: $88
	adc  b                                           ; $64d7: $88
	add  a                                           ; $64d8: $87
	sub  a                                           ; $64d9: $97
	ld   [hl], a                                     ; $64da: $77
	adc  c                                           ; $64db: $89
	sbc  c                                           ; $64dc: $99
	adc  c                                           ; $64dd: $89
	add  a                                           ; $64de: $87
	adc  b                                           ; $64df: $88
	add  a                                           ; $64e0: $87
	ld   a, b                                        ; $64e1: $78
	sbc  b                                           ; $64e2: $98
	ld   [hl], a                                     ; $64e3: $77
	add  a                                           ; $64e4: $87
	ld   [hl], a                                     ; $64e5: $77
	adc  b                                           ; $64e6: $88
	adc  b                                           ; $64e7: $88
	adc  b                                           ; $64e8: $88
	adc  b                                           ; $64e9: $88
	adc  c                                           ; $64ea: $89
	add  a                                           ; $64eb: $87
	adc  c                                           ; $64ec: $89
	adc  b                                           ; $64ed: $88
	ld   [hl], a                                     ; $64ee: $77
	ld   [hl], a                                     ; $64ef: $77
	add  a                                           ; $64f0: $87
	ld   a, b                                        ; $64f1: $78
	sbc  b                                           ; $64f2: $98
	adc  b                                           ; $64f3: $88
	adc  b                                           ; $64f4: $88
	adc  c                                           ; $64f5: $89
	add  a                                           ; $64f6: $87
	adc  b                                           ; $64f7: $88
	adc  b                                           ; $64f8: $88
	adc  b                                           ; $64f9: $88
	add  a                                           ; $64fa: $87
	ld   a, b                                        ; $64fb: $78
	ld   a, b                                        ; $64fc: $78
	ld   a, c                                        ; $64fd: $79
	adc  b                                           ; $64fe: $88
	adc  b                                           ; $64ff: $88
	add  a                                           ; $6500: $87
	add  a                                           ; $6501: $87
	adc  b                                           ; $6502: $88
	ld   a, b                                        ; $6503: $78
	adc  c                                           ; $6504: $89
	ld   [hl], a                                     ; $6505: $77
	adc  b                                           ; $6506: $88
	ld   [hl], a                                     ; $6507: $77
	adc  c                                           ; $6508: $89
	sub  a                                           ; $6509: $97
	adc  b                                           ; $650a: $88
	add  a                                           ; $650b: $87
	adc  b                                           ; $650c: $88
	adc  b                                           ; $650d: $88
	ld   [hl], a                                     ; $650e: $77
	adc  b                                           ; $650f: $88
	add  a                                           ; $6510: $87
	ld   a, b                                        ; $6511: $78
	adc  b                                           ; $6512: $88
	ld   a, b                                        ; $6513: $78
	sbc  b                                           ; $6514: $98
	adc  c                                           ; $6515: $89
	adc  b                                           ; $6516: $88
	sbc  b                                           ; $6517: $98
	adc  b                                           ; $6518: $88
	ld   a, b                                        ; $6519: $78
	ld   [hl], a                                     ; $651a: $77
	adc  b                                           ; $651b: $88
	adc  b                                           ; $651c: $88
	ld   [hl], a                                     ; $651d: $77
	ld   a, b                                        ; $651e: $78
	adc  b                                           ; $651f: $88
	adc  b                                           ; $6520: $88
	ld   a, b                                        ; $6521: $78
	adc  b                                           ; $6522: $88
	sbc  b                                           ; $6523: $98
	adc  b                                           ; $6524: $88
	add  a                                           ; $6525: $87
	ld   a, b                                        ; $6526: $78
	adc  c                                           ; $6527: $89
	adc  b                                           ; $6528: $88
	adc  b                                           ; $6529: $88
	sbc  b                                           ; $652a: $98
	adc  b                                           ; $652b: $88
	sbc  b                                           ; $652c: $98
	ld   [hl], a                                     ; $652d: $77
	adc  b                                           ; $652e: $88
	ld   a, b                                        ; $652f: $78
	adc  b                                           ; $6530: $88
	adc  b                                           ; $6531: $88
	adc  b                                           ; $6532: $88
	adc  b                                           ; $6533: $88
	sub  a                                           ; $6534: $97
	adc  b                                           ; $6535: $88
	sbc  b                                           ; $6536: $98
	ld   [hl], a                                     ; $6537: $77
	adc  b                                           ; $6538: $88
	adc  b                                           ; $6539: $88
	sbc  b                                           ; $653a: $98
	adc  b                                           ; $653b: $88
	adc  b                                           ; $653c: $88
	adc  b                                           ; $653d: $88
	adc  b                                           ; $653e: $88
	ld   a, b                                        ; $653f: $78
	adc  c                                           ; $6540: $89
	ld   a, b                                        ; $6541: $78
	adc  c                                           ; $6542: $89
	adc  b                                           ; $6543: $88
	ld   a, b                                        ; $6544: $78
	adc  b                                           ; $6545: $88
	sbc  c                                           ; $6546: $99
	ld   [hl], a                                     ; $6547: $77
	add  a                                           ; $6548: $87
	adc  b                                           ; $6549: $88
	adc  b                                           ; $654a: $88
	adc  b                                           ; $654b: $88
	sbc  c                                           ; $654c: $99
	adc  c                                           ; $654d: $89
	sbc  c                                           ; $654e: $99
	adc  b                                           ; $654f: $88
	adc  b                                           ; $6550: $88
	adc  b                                           ; $6551: $88
	adc  b                                           ; $6552: $88
	adc  b                                           ; $6553: $88
	add  a                                           ; $6554: $87
	adc  b                                           ; $6555: $88
	sbc  b                                           ; $6556: $98
	sbc  c                                           ; $6557: $99
	sbc  b                                           ; $6558: $98
	adc  b                                           ; $6559: $88
	adc  c                                           ; $655a: $89
	adc  b                                           ; $655b: $88
	adc  b                                           ; $655c: $88
	adc  b                                           ; $655d: $88
	ld   a, b                                        ; $655e: $78
	adc  b                                           ; $655f: $88
	adc  c                                           ; $6560: $89
	sub  a                                           ; $6561: $97
	sbc  b                                           ; $6562: $98
	ld   [hl], a                                     ; $6563: $77
	adc  c                                           ; $6564: $89
	sbc  b                                           ; $6565: $98
	adc  b                                           ; $6566: $88
	sbc  c                                           ; $6567: $99
	adc  b                                           ; $6568: $88
	sbc  c                                           ; $6569: $99
	adc  b                                           ; $656a: $88
	adc  b                                           ; $656b: $88
	adc  b                                           ; $656c: $88
	adc  b                                           ; $656d: $88
	adc  b                                           ; $656e: $88
	ld   a, b                                        ; $656f: $78
	adc  b                                           ; $6570: $88
	ld   a, c                                        ; $6571: $79
	sbc  b                                           ; $6572: $98
	adc  b                                           ; $6573: $88
	sbc  c                                           ; $6574: $99
	adc  b                                           ; $6575: $88
	adc  b                                           ; $6576: $88
	adc  b                                           ; $6577: $88
	ld   a, c                                        ; $6578: $79
	adc  b                                           ; $6579: $88
	ld   a, b                                        ; $657a: $78
	sbc  b                                           ; $657b: $98
	adc  b                                           ; $657c: $88
	sbc  b                                           ; $657d: $98
	sbc  b                                           ; $657e: $98
	adc  b                                           ; $657f: $88
	sub  a                                           ; $6580: $97
	ld   a, b                                        ; $6581: $78
	adc  b                                           ; $6582: $88
	adc  b                                           ; $6583: $88
	adc  b                                           ; $6584: $88
	adc  b                                           ; $6585: $88
	sbc  b                                           ; $6586: $98
	sbc  b                                           ; $6587: $98
	adc  b                                           ; $6588: $88
	adc  b                                           ; $6589: $88
	add  a                                           ; $658a: $87
	ld   a, c                                        ; $658b: $79
	adc  b                                           ; $658c: $88
	adc  c                                           ; $658d: $89
	sbc  b                                           ; $658e: $98
	adc  b                                           ; $658f: $88
	adc  b                                           ; $6590: $88
	adc  b                                           ; $6591: $88
	adc  c                                           ; $6592: $89
	sbc  c                                           ; $6593: $99
	adc  b                                           ; $6594: $88
	sbc  b                                           ; $6595: $98
	adc  b                                           ; $6596: $88

Jump_0a6_6597:
	adc  b                                           ; $6597: $88
	adc  b                                           ; $6598: $88
	adc  b                                           ; $6599: $88
	adc  b                                           ; $659a: $88
	ld   a, c                                        ; $659b: $79
	adc  b                                           ; $659c: $88
	adc  b                                           ; $659d: $88
	sbc  b                                           ; $659e: $98
	sbc  b                                           ; $659f: $98
	adc  b                                           ; $65a0: $88
	adc  b                                           ; $65a1: $88
	adc  b                                           ; $65a2: $88
	sbc  b                                           ; $65a3: $98
	adc  b                                           ; $65a4: $88
	adc  b                                           ; $65a5: $88
	adc  c                                           ; $65a6: $89
	add  a                                           ; $65a7: $87
	ld   a, b                                        ; $65a8: $78
	adc  b                                           ; $65a9: $88
	adc  c                                           ; $65aa: $89
	sbc  b                                           ; $65ab: $98
	adc  b                                           ; $65ac: $88
	adc  b                                           ; $65ad: $88
	sbc  b                                           ; $65ae: $98
	adc  c                                           ; $65af: $89
	sbc  b                                           ; $65b0: $98
	ld   a, b                                        ; $65b1: $78
	adc  b                                           ; $65b2: $88
	adc  b                                           ; $65b3: $88
	adc  b                                           ; $65b4: $88
	adc  b                                           ; $65b5: $88
	sbc  b                                           ; $65b6: $98
	adc  c                                           ; $65b7: $89
	adc  c                                           ; $65b8: $89
	adc  b                                           ; $65b9: $88
	sbc  b                                           ; $65ba: $98
	adc  c                                           ; $65bb: $89
	add  a                                           ; $65bc: $87
	adc  c                                           ; $65bd: $89
	add  a                                           ; $65be: $87
	adc  b                                           ; $65bf: $88
	ld   a, b                                        ; $65c0: $78
	adc  b                                           ; $65c1: $88
	adc  c                                           ; $65c2: $89
	adc  c                                           ; $65c3: $89
	adc  b                                           ; $65c4: $88
	sbc  c                                           ; $65c5: $99
	adc  b                                           ; $65c6: $88
	adc  b                                           ; $65c7: $88
	adc  c                                           ; $65c8: $89
	adc  b                                           ; $65c9: $88

Call_0a6_65ca:
	sbc  c                                           ; $65ca: $99
	adc  b                                           ; $65cb: $88
	adc  b                                           ; $65cc: $88
	sbc  b                                           ; $65cd: $98
	ld   a, b                                        ; $65ce: $78
	sbc  b                                           ; $65cf: $98
	adc  b                                           ; $65d0: $88
	adc  c                                           ; $65d1: $89
	sbc  b                                           ; $65d2: $98
	adc  b                                           ; $65d3: $88
	adc  b                                           ; $65d4: $88
	ld   a, c                                        ; $65d5: $79
	add  a                                           ; $65d6: $87
	add  a                                           ; $65d7: $87
	adc  b                                           ; $65d8: $88
	ld   a, b                                        ; $65d9: $78
	sbc  c                                           ; $65da: $99
	adc  b                                           ; $65db: $88
	adc  b                                           ; $65dc: $88
	sub  a                                           ; $65dd: $97
	ld   a, b                                        ; $65de: $78
	sub  a                                           ; $65df: $97
	adc  b                                           ; $65e0: $88
	adc  b                                           ; $65e1: $88
	ld   [hl], a                                     ; $65e2: $77
	sbc  b                                           ; $65e3: $98
	ld   a, b                                        ; $65e4: $78
	sbc  b                                           ; $65e5: $98
	adc  b                                           ; $65e6: $88
	adc  b                                           ; $65e7: $88
	add  a                                           ; $65e8: $87
	adc  b                                           ; $65e9: $88
	adc  b                                           ; $65ea: $88
	adc  b                                           ; $65eb: $88
	adc  c                                           ; $65ec: $89
	adc  b                                           ; $65ed: $88
	adc  c                                           ; $65ee: $89
	ld   [hl], a                                     ; $65ef: $77
	sbc  c                                           ; $65f0: $99
	add  a                                           ; $65f1: $87
	ld   a, b                                        ; $65f2: $78
	add  a                                           ; $65f3: $87
	ld   a, b                                        ; $65f4: $78
	adc  b                                           ; $65f5: $88
	adc  b                                           ; $65f6: $88
	adc  b                                           ; $65f7: $88
	add  a                                           ; $65f8: $87
	adc  b                                           ; $65f9: $88
	adc  b                                           ; $65fa: $88
	add  a                                           ; $65fb: $87
	adc  c                                           ; $65fc: $89
	adc  b                                           ; $65fd: $88
	sbc  c                                           ; $65fe: $99
	sbc  c                                           ; $65ff: $99
	adc  c                                           ; $6600: $89
	sbc  b                                           ; $6601: $98
	ld   a, b                                        ; $6602: $78
	ld   [hl], a                                     ; $6603: $77
	add  a                                           ; $6604: $87
	ld   a, b                                        ; $6605: $78
	adc  c                                           ; $6606: $89
	sbc  d                                           ; $6607: $9a
	xor  d                                           ; $6608: $aa
	xor  c                                           ; $6609: $a9
	adc  b                                           ; $660a: $88
	ld   [hl], a                                     ; $660b: $77
	halt                                             ; $660c: $76
	ld   [hl], a                                     ; $660d: $77
	ld   [hl], a                                     ; $660e: $77
	adc  c                                           ; $660f: $89
	sbc  c                                           ; $6610: $99
	adc  b                                           ; $6611: $88
	sub  a                                           ; $6612: $97
	ld   a, b                                        ; $6613: $78
	ld   [hl], a                                     ; $6614: $77
	adc  c                                           ; $6615: $89
	sbc  e                                           ; $6616: $9b
	cp   e                                           ; $6617: $bb
	cp   d                                           ; $6618: $ba
	sbc  b                                           ; $6619: $98
	sub  a                                           ; $661a: $97
	ld   d, l                                        ; $661b: $55
	ld   b, d                                        ; $661c: $42
	ld   [hl-], a                                    ; $661d: $32
	dec  h                                           ; $661e: $25
	ld   h, l                                        ; $661f: $65
	sbc  d                                           ; $6620: $9a
	adc  d                                           ; $6621: $8a
	xor  $ef                                         ; $6622: $ee $ef
	rst  $38                                         ; $6624: $ff
	cp   $dc                                         ; $6625: $fe $dc
	jp   z, $1173                                    ; $6627: $ca $73 $11

	ld   de, $1111                                   ; $662a: $11 $11 $11
	ld   [de], a                                     ; $662d: $12
	rst  $38                                         ; $662e: $ff
	rst  $38                                         ; $662f: $ff
	rst  $38                                         ; $6630: $ff
	rst  $38                                         ; $6631: $ff
	rst  $38                                         ; $6632: $ff
	ld   sp, hl                                      ; $6633: $f9
	ld   de, $1111                                   ; $6634: $11 $11 $11
	ld   de, $1c11                                   ; $6637: $11 $11 $1c
	rst  $38                                         ; $663a: $ff
	rst  $38                                         ; $663b: $ff
	rst  $38                                         ; $663c: $ff
	rst  $38                                         ; $663d: $ff
	rst  $38                                         ; $663e: $ff
	db   $f4                                         ; $663f: $f4
	ld   de, $1111                                   ; $6640: $11 $11 $11
	ld   de, $1f11                                   ; $6643: $11 $11 $1f
	rst  $38                                         ; $6646: $ff
	rst  $38                                         ; $6647: $ff
	rst  $38                                         ; $6648: $ff
	rst  $38                                         ; $6649: $ff
	rst  $38                                         ; $664a: $ff
	sub  c                                           ; $664b: $91
	ld   de, $1111                                   ; $664c: $11 $11 $11
	ld   de, $cf11                                   ; $664f: $11 $11 $cf
	rst  $38                                         ; $6652: $ff
	rst  $38                                         ; $6653: $ff
	rst  $38                                         ; $6654: $ff
	rst  $38                                         ; $6655: $ff
	db   $fd                                         ; $6656: $fd
	ld   de, $1111                                   ; $6657: $11 $11 $11
	ld   de, $1f11                                   ; $665a: $11 $11 $1f
	rst  $38                                         ; $665d: $ff
	rst  $38                                         ; $665e: $ff
	rst  $38                                         ; $665f: $ff
	rst  $38                                         ; $6660: $ff
	rst  $38                                         ; $6661: $ff
	sub  c                                           ; $6662: $91
	ld   de, $1111                                   ; $6663: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $6666: $11 $11 $ff
	rst  $38                                         ; $6669: $ff
	rst  $38                                         ; $666a: $ff
	rst  $38                                         ; $666b: $ff
	rst  $38                                         ; $666c: $ff
	db   $f4                                         ; $666d: $f4
	ld   de, $1111                                   ; $666e: $11 $11 $11
	ld   de, $7f11                                   ; $6671: $11 $11 $7f
	rst  $38                                         ; $6674: $ff
	rst  $38                                         ; $6675: $ff
	rst  $38                                         ; $6676: $ff
	rst  $38                                         ; $6677: $ff
	cp   $11                                         ; $6678: $fe $11
	ld   de, $1111                                   ; $667a: $11 $11 $11
	ld   de, $ff1f                                   ; $667d: $11 $1f $ff
	rst  $38                                         ; $6680: $ff
	rst  $38                                         ; $6681: $ff
	rst  $38                                         ; $6682: $ff
	rst  $38                                         ; $6683: $ff
	sub  c                                           ; $6684: $91
	ld   de, $1111                                   ; $6685: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $6688: $11 $11 $ff
	rst  $38                                         ; $668b: $ff
	rst  $38                                         ; $668c: $ff
	rst  $38                                         ; $668d: $ff
	rst  $38                                         ; $668e: $ff
	push af                                          ; $668f: $f5
	ld   de, $1111                                   ; $6690: $11 $11 $11
	ld   de, $4f11                                   ; $6693: $11 $11 $4f
	rst  $38                                         ; $6696: $ff
	rst  $38                                         ; $6697: $ff
	rst  $38                                         ; $6698: $ff
	rst  $38                                         ; $6699: $ff
	rst  $38                                         ; $669a: $ff
	ld   h, c                                        ; $669b: $61
	ld   de, $1111                                   ; $669c: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $669f: $11 $11 $ff
	rst  $38                                         ; $66a2: $ff
	rst  $38                                         ; $66a3: $ff
	rst  $38                                         ; $66a4: $ff
	rst  $38                                         ; $66a5: $ff
	ld   sp, hl                                      ; $66a6: $f9
	ld   de, $1111                                   ; $66a7: $11 $11 $11
	ld   de, $1a11                                   ; $66aa: $11 $11 $1a
	rst  $38                                         ; $66ad: $ff
	rst  $38                                         ; $66ae: $ff
	rst  $38                                         ; $66af: $ff
	rst  $38                                         ; $66b0: $ff
	rst  $38                                         ; $66b1: $ff
	jp   nz, $1111                                   ; $66b2: $c2 $11 $11

	ld   de, $1111                                   ; $66b5: $11 $11 $11
	cpl                                              ; $66b8: $2f
	rst  $38                                         ; $66b9: $ff
	rst  $38                                         ; $66ba: $ff
	rst  $38                                         ; $66bb: $ff
	rst  $38                                         ; $66bc: $ff
	rst  $38                                         ; $66bd: $ff
	and  c                                           ; $66be: $a1
	ld   de, $1111                                   ; $66bf: $11 $11 $11
	ld   de, $4d11                                   ; $66c2: $11 $11 $4d
	rst  $38                                         ; $66c5: $ff
	rst  $38                                         ; $66c6: $ff
	rst  $38                                         ; $66c7: $ff
	rst  $38                                         ; $66c8: $ff
	rst  $38                                         ; $66c9: $ff
	add  d                                           ; $66ca: $82
	ld   de, $1111                                   ; $66cb: $11 $11 $11
	ld   de, $5812                                   ; $66ce: $11 $12 $58
	rst  $38                                         ; $66d1: $ff
	rst  $38                                         ; $66d2: $ff
	rst  $38                                         ; $66d3: $ff
	rst  $38                                         ; $66d4: $ff
	cp   $c6                                         ; $66d5: $fe $c6
	ld   de, $1111                                   ; $66d7: $11 $11 $11
	ld   de, $2411                                   ; $66da: $11 $11 $24
	sbc  a                                           ; $66dd: $9f
	rst  $38                                         ; $66de: $ff
	rst  $38                                         ; $66df: $ff
	rst  $38                                         ; $66e0: $ff
	rst  $38                                         ; $66e1: $ff
	db   $fc                                         ; $66e2: $fc
	add  a                                           ; $66e3: $87
	ld   de, $1111                                   ; $66e4: $11 $11 $11
	ld   de, $1611                                   ; $66e7: $11 $11 $16
	xor  h                                           ; $66ea: $ac
	rst  $38                                         ; $66eb: $ff
	rst  $38                                         ; $66ec: $ff
	rst  $38                                         ; $66ed: $ff
	rst  $38                                         ; $66ee: $ff
	db   $fd                                         ; $66ef: $fd
	cp   c                                           ; $66f0: $b9
	ld   d, d                                        ; $66f1: $52
	ld   de, $1111                                   ; $66f2: $11 $11 $11
	ld   de, $3811                                   ; $66f5: $11 $11 $38
	ld   a, b                                        ; $66f8: $78
	xor  l                                           ; $66f9: $ad
	rst  $38                                         ; $66fa: $ff
	rst  $38                                         ; $66fb: $ff
	rst  $38                                         ; $66fc: $ff
	db   $fd                                         ; $66fd: $fd
	res  4, a                                        ; $66fe: $cb $a7
	ld   b, h                                        ; $6700: $44
	ld   [hl-], a                                    ; $6701: $32
	ld   de, $3313                                   ; $6702: $11 $13 $33
	inc  [hl]                                        ; $6705: $34
	ld   d, [hl]                                     ; $6706: $56
	ld   [hl], a                                     ; $6707: $77
	sbc  d                                           ; $6708: $9a
	xor  h                                           ; $6709: $ac
	call $eedf                                       ; $670a: $cd $df $ee
	call c, $87b9                                    ; $670d: $dc $b9 $87
	ld   h, [hl]                                     ; $6710: $66
	ld   d, h                                        ; $6711: $54
	inc  [hl]                                        ; $6712: $34
	ld   b, l                                        ; $6713: $45
	ld   d, [hl]                                     ; $6714: $56
	ld   [hl], a                                     ; $6715: $77
	ld   a, b                                        ; $6716: $78
	adc  b                                           ; $6717: $88
	adc  c                                           ; $6718: $89
	adc  c                                           ; $6719: $89
	sbc  b                                           ; $671a: $98
	adc  b                                           ; $671b: $88
	sbc  c                                           ; $671c: $99
	sbc  b                                           ; $671d: $98
	sbc  b                                           ; $671e: $98
	adc  c                                           ; $671f: $89
	adc  b                                           ; $6720: $88
	sbc  c                                           ; $6721: $99
	adc  c                                           ; $6722: $89
	sbc  b                                           ; $6723: $98
	add  a                                           ; $6724: $87
	ld   [hl], a                                     ; $6725: $77
	ld   [hl], a                                     ; $6726: $77
	adc  b                                           ; $6727: $88
	add  a                                           ; $6728: $87
	ld   [hl], a                                     ; $6729: $77
	ld   [hl], a                                     ; $672a: $77
	ld   [hl], a                                     ; $672b: $77
	ld   a, b                                        ; $672c: $78
	ld   a, b                                        ; $672d: $78
	adc  b                                           ; $672e: $88
	adc  b                                           ; $672f: $88
	sbc  c                                           ; $6730: $99
	adc  b                                           ; $6731: $88
	sbc  c                                           ; $6732: $99
	sbc  c                                           ; $6733: $99
	sbc  b                                           ; $6734: $98
	ld   [hl], a                                     ; $6735: $77
	ld   [hl], a                                     ; $6736: $77
	ld   [hl], a                                     ; $6737: $77
	ld   [hl], a                                     ; $6738: $77
	ld   [hl], a                                     ; $6739: $77
	adc  b                                           ; $673a: $88
	adc  b                                           ; $673b: $88
	sbc  b                                           ; $673c: $98
	adc  c                                           ; $673d: $89
	sbc  c                                           ; $673e: $99
	sbc  c                                           ; $673f: $99
	adc  b                                           ; $6740: $88
	ld   [hl], a                                     ; $6741: $77
	halt                                             ; $6742: $76
	ld   h, [hl]                                     ; $6743: $66
	ld   [hl], a                                     ; $6744: $77
	ld   [hl], a                                     ; $6745: $77
	adc  b                                           ; $6746: $88
	sbc  c                                           ; $6747: $99
	adc  d                                           ; $6748: $8a
	sbc  c                                           ; $6749: $99
	sbc  c                                           ; $674a: $99
	sbc  b                                           ; $674b: $98
	add  a                                           ; $674c: $87
	ld   [hl], a                                     ; $674d: $77
	ld   h, [hl]                                     ; $674e: $66
	ld   h, [hl]                                     ; $674f: $66
	ld   [hl], a                                     ; $6750: $77
	ld   [hl], a                                     ; $6751: $77
	adc  b                                           ; $6752: $88
	adc  b                                           ; $6753: $88
	sbc  c                                           ; $6754: $99
	sbc  d                                           ; $6755: $9a
	xor  d                                           ; $6756: $aa
	xor  c                                           ; $6757: $a9
	adc  b                                           ; $6758: $88
	add  a                                           ; $6759: $87
	ld   h, [hl]                                     ; $675a: $66
	ld   h, [hl]                                     ; $675b: $66
	ld   h, a                                        ; $675c: $67
	ld   [hl], a                                     ; $675d: $77
	ld   a, b                                        ; $675e: $78
	sbc  c                                           ; $675f: $99
	xor  c                                           ; $6760: $a9
	sbc  c                                           ; $6761: $99
	xor  d                                           ; $6762: $aa
	sbc  c                                           ; $6763: $99
	adc  b                                           ; $6764: $88
	add  a                                           ; $6765: $87
	ld   [hl], a                                     ; $6766: $77
	ld   h, [hl]                                     ; $6767: $66
	ld   h, [hl]                                     ; $6768: $66
	ld   [hl], a                                     ; $6769: $77
	ld   a, b                                        ; $676a: $78
	sbc  c                                           ; $676b: $99
	adc  c                                           ; $676c: $89
	adc  c                                           ; $676d: $89
	adc  b                                           ; $676e: $88
	adc  b                                           ; $676f: $88
	sbc  c                                           ; $6770: $99
	adc  b                                           ; $6771: $88
	add  a                                           ; $6772: $87
	ld   [hl], a                                     ; $6773: $77
	ld   [hl], a                                     ; $6774: $77
	ld   [hl], a                                     ; $6775: $77
	adc  b                                           ; $6776: $88
	adc  b                                           ; $6777: $88
	adc  b                                           ; $6778: $88
	adc  b                                           ; $6779: $88
	ld   [hl], a                                     ; $677a: $77
	adc  b                                           ; $677b: $88
	sbc  c                                           ; $677c: $99
	sbc  c                                           ; $677d: $99
	sbc  b                                           ; $677e: $98
	adc  b                                           ; $677f: $88
	add  a                                           ; $6780: $87
	adc  b                                           ; $6781: $88
	adc  c                                           ; $6782: $89
	adc  c                                           ; $6783: $89
	add  a                                           ; $6784: $87
	ld   [hl], a                                     ; $6785: $77
	ld   [hl], a                                     ; $6786: $77
	add  a                                           ; $6787: $87
	adc  c                                           ; $6788: $89
	adc  c                                           ; $6789: $89
	adc  b                                           ; $678a: $88
	adc  b                                           ; $678b: $88
	adc  b                                           ; $678c: $88
	adc  c                                           ; $678d: $89
	sbc  b                                           ; $678e: $98
	adc  b                                           ; $678f: $88
	ld   [hl], a                                     ; $6790: $77
	ld   [hl], a                                     ; $6791: $77
	ld   [hl], a                                     ; $6792: $77
	ld   a, b                                        ; $6793: $78
	adc  b                                           ; $6794: $88
	adc  b                                           ; $6795: $88
	adc  b                                           ; $6796: $88

Call_0a6_6797:
	adc  b                                           ; $6797: $88
	sbc  b                                           ; $6798: $98
	sbc  c                                           ; $6799: $99
	adc  c                                           ; $679a: $89
	sbc  b                                           ; $679b: $98
	adc  b                                           ; $679c: $88
	ld   [hl], a                                     ; $679d: $77
	ld   a, b                                        ; $679e: $78
	adc  b                                           ; $679f: $88
	adc  b                                           ; $67a0: $88
	adc  b                                           ; $67a1: $88
	adc  b                                           ; $67a2: $88
	adc  b                                           ; $67a3: $88
	adc  b                                           ; $67a4: $88
	adc  b                                           ; $67a5: $88
	sbc  b                                           ; $67a6: $98
	ld   a, b                                        ; $67a7: $78
	adc  b                                           ; $67a8: $88
	ld   a, b                                        ; $67a9: $78
	adc  c                                           ; $67aa: $89
	adc  c                                           ; $67ab: $89
	sbc  b                                           ; $67ac: $98
	adc  c                                           ; $67ad: $89
	adc  c                                           ; $67ae: $89
	sbc  b                                           ; $67af: $98
	adc  b                                           ; $67b0: $88
	adc  b                                           ; $67b1: $88
	add  a                                           ; $67b2: $87
	adc  b                                           ; $67b3: $88
	ld   [hl], a                                     ; $67b4: $77
	adc  b                                           ; $67b5: $88
	adc  c                                           ; $67b6: $89
	sbc  b                                           ; $67b7: $98
	adc  c                                           ; $67b8: $89
	sbc  b                                           ; $67b9: $98
	sbc  b                                           ; $67ba: $98
	sbc  b                                           ; $67bb: $98
	adc  c                                           ; $67bc: $89
	adc  b                                           ; $67bd: $88
	ld   a, b                                        ; $67be: $78
	ld   [hl], a                                     ; $67bf: $77
	ld   [hl], a                                     ; $67c0: $77
	adc  b                                           ; $67c1: $88
	adc  b                                           ; $67c2: $88
	adc  c                                           ; $67c3: $89
	adc  c                                           ; $67c4: $89
	adc  c                                           ; $67c5: $89
	adc  c                                           ; $67c6: $89
	adc  c                                           ; $67c7: $89
	sbc  c                                           ; $67c8: $99
	adc  b                                           ; $67c9: $88
	ld   [hl], a                                     ; $67ca: $77
	ld   [hl], a                                     ; $67cb: $77
	adc  b                                           ; $67cc: $88
	adc  b                                           ; $67cd: $88
	adc  b                                           ; $67ce: $88
	sbc  c                                           ; $67cf: $99
	sbc  c                                           ; $67d0: $99
	sbc  b                                           ; $67d1: $98
	adc  b                                           ; $67d2: $88
	sbc  c                                           ; $67d3: $99
	sbc  b                                           ; $67d4: $98
	add  a                                           ; $67d5: $87
	ld   [hl], a                                     ; $67d6: $77
	adc  b                                           ; $67d7: $88
	adc  b                                           ; $67d8: $88
	sbc  b                                           ; $67d9: $98
	adc  b                                           ; $67da: $88
	adc  b                                           ; $67db: $88
	adc  b                                           ; $67dc: $88
	adc  c                                           ; $67dd: $89
	sbc  c                                           ; $67de: $99
	sbc  b                                           ; $67df: $98
	sbc  b                                           ; $67e0: $98
	adc  b                                           ; $67e1: $88
	adc  b                                           ; $67e2: $88
	adc  b                                           ; $67e3: $88
	adc  b                                           ; $67e4: $88
	adc  b                                           ; $67e5: $88
	adc  b                                           ; $67e6: $88
	adc  b                                           ; $67e7: $88
	adc  b                                           ; $67e8: $88
	adc  b                                           ; $67e9: $88
	sbc  b                                           ; $67ea: $98
	sbc  b                                           ; $67eb: $98
	adc  b                                           ; $67ec: $88
	adc  b                                           ; $67ed: $88
	adc  b                                           ; $67ee: $88
	adc  c                                           ; $67ef: $89
	adc  b                                           ; $67f0: $88
	adc  b                                           ; $67f1: $88
	adc  b                                           ; $67f2: $88
	adc  b                                           ; $67f3: $88
	adc  b                                           ; $67f4: $88
	adc  b                                           ; $67f5: $88
	adc  c                                           ; $67f6: $89
	add  a                                           ; $67f7: $87
	adc  b                                           ; $67f8: $88
	adc  b                                           ; $67f9: $88
	adc  c                                           ; $67fa: $89
	sbc  b                                           ; $67fb: $98
	adc  c                                           ; $67fc: $89
	sbc  b                                           ; $67fd: $98
	adc  b                                           ; $67fe: $88
	adc  c                                           ; $67ff: $89
	adc  b                                           ; $6800: $88
	adc  b                                           ; $6801: $88
	adc  b                                           ; $6802: $88
	adc  b                                           ; $6803: $88
	adc  b                                           ; $6804: $88
	adc  b                                           ; $6805: $88
	adc  b                                           ; $6806: $88
	adc  b                                           ; $6807: $88
	adc  c                                           ; $6808: $89
	adc  b                                           ; $6809: $88
	adc  c                                           ; $680a: $89
	sbc  c                                           ; $680b: $99
	adc  b                                           ; $680c: $88
	adc  b                                           ; $680d: $88
	adc  b                                           ; $680e: $88
	add  a                                           ; $680f: $87
	add  a                                           ; $6810: $87
	ld   a, b                                        ; $6811: $78
	adc  b                                           ; $6812: $88
	adc  b                                           ; $6813: $88
	adc  c                                           ; $6814: $89
	sbc  c                                           ; $6815: $99
	sbc  c                                           ; $6816: $99
	adc  b                                           ; $6817: $88
	adc  b                                           ; $6818: $88
	adc  b                                           ; $6819: $88
	add  a                                           ; $681a: $87
	ld   a, b                                        ; $681b: $78
	adc  b                                           ; $681c: $88
	adc  b                                           ; $681d: $88
	adc  c                                           ; $681e: $89
	adc  b                                           ; $681f: $88
	adc  b                                           ; $6820: $88
	adc  b                                           ; $6821: $88
	adc  b                                           ; $6822: $88
	adc  b                                           ; $6823: $88
	adc  b                                           ; $6824: $88
	adc  b                                           ; $6825: $88
	adc  b                                           ; $6826: $88
	adc  b                                           ; $6827: $88
	adc  c                                           ; $6828: $89
	adc  b                                           ; $6829: $88
	adc  b                                           ; $682a: $88
	adc  b                                           ; $682b: $88
	add  a                                           ; $682c: $87
	adc  c                                           ; $682d: $89
	adc  b                                           ; $682e: $88
	adc  c                                           ; $682f: $89
	sbc  b                                           ; $6830: $98
	adc  b                                           ; $6831: $88
	adc  b                                           ; $6832: $88
	add  a                                           ; $6833: $87
	ld   a, b                                        ; $6834: $78
	adc  b                                           ; $6835: $88
	adc  b                                           ; $6836: $88
	adc  b                                           ; $6837: $88
	adc  b                                           ; $6838: $88
	sbc  c                                           ; $6839: $99
	adc  b                                           ; $683a: $88
	adc  b                                           ; $683b: $88
	adc  b                                           ; $683c: $88
	adc  b                                           ; $683d: $88
	adc  b                                           ; $683e: $88
	ld   a, b                                        ; $683f: $78
	adc  b                                           ; $6840: $88
	adc  b                                           ; $6841: $88
	adc  b                                           ; $6842: $88
	adc  b                                           ; $6843: $88
	adc  b                                           ; $6844: $88
	adc  b                                           ; $6845: $88
	ld   a, b                                        ; $6846: $78
	adc  b                                           ; $6847: $88
	adc  b                                           ; $6848: $88
	adc  b                                           ; $6849: $88
	adc  b                                           ; $684a: $88
	adc  b                                           ; $684b: $88
	adc  b                                           ; $684c: $88
	ld   a, b                                        ; $684d: $78
	adc  b                                           ; $684e: $88
	ld   [hl], a                                     ; $684f: $77
	ld   a, b                                        ; $6850: $78
	ld   a, b                                        ; $6851: $78
	adc  b                                           ; $6852: $88
	sbc  b                                           ; $6853: $98
	adc  c                                           ; $6854: $89
	sbc  c                                           ; $6855: $99
	adc  b                                           ; $6856: $88
	adc  b                                           ; $6857: $88
	adc  b                                           ; $6858: $88
	add  a                                           ; $6859: $87
	adc  b                                           ; $685a: $88
	adc  b                                           ; $685b: $88
	ld   [hl], a                                     ; $685c: $77
	adc  c                                           ; $685d: $89
	add  a                                           ; $685e: $87
	adc  b                                           ; $685f: $88
	adc  b                                           ; $6860: $88
	adc  b                                           ; $6861: $88
	adc  b                                           ; $6862: $88
	adc  b                                           ; $6863: $88
	adc  c                                           ; $6864: $89
	adc  b                                           ; $6865: $88
	adc  b                                           ; $6866: $88
	add  a                                           ; $6867: $87
	adc  b                                           ; $6868: $88
	ld   [hl], a                                     ; $6869: $77
	add  a                                           ; $686a: $87
	adc  b                                           ; $686b: $88
	adc  c                                           ; $686c: $89
	sbc  b                                           ; $686d: $98
	adc  b                                           ; $686e: $88
	adc  c                                           ; $686f: $89
	add  a                                           ; $6870: $87
	ld   a, b                                        ; $6871: $78
	add  a                                           ; $6872: $87
	ld   [hl], a                                     ; $6873: $77
	adc  b                                           ; $6874: $88
	adc  b                                           ; $6875: $88
	adc  c                                           ; $6876: $89
	sbc  b                                           ; $6877: $98
	adc  c                                           ; $6878: $89
	adc  b                                           ; $6879: $88
	adc  b                                           ; $687a: $88
	add  a                                           ; $687b: $87
	ld   a, b                                        ; $687c: $78
	add  a                                           ; $687d: $87
	ld   a, b                                        ; $687e: $78
	adc  b                                           ; $687f: $88
	adc  b                                           ; $6880: $88
	adc  b                                           ; $6881: $88
	adc  b                                           ; $6882: $88
	adc  b                                           ; $6883: $88
	sbc  c                                           ; $6884: $99
	adc  b                                           ; $6885: $88
	add  a                                           ; $6886: $87
	adc  b                                           ; $6887: $88
	ld   [hl], a                                     ; $6888: $77
	ld   [hl], a                                     ; $6889: $77
	ld   [hl], a                                     ; $688a: $77
	ld   a, b                                        ; $688b: $78
	sbc  b                                           ; $688c: $98
	sbc  b                                           ; $688d: $98
	sbc  c                                           ; $688e: $99
	adc  b                                           ; $688f: $88
	sbc  c                                           ; $6890: $99
	sbc  b                                           ; $6891: $98
	ld   [hl], a                                     ; $6892: $77
	halt                                             ; $6893: $76
	ld   d, l                                        ; $6894: $55
	ld   h, [hl]                                     ; $6895: $66
	ld   a, b                                        ; $6896: $78
	xor  e                                           ; $6897: $ab
	res  5, e                                        ; $6898: $cb $ab
	cp   d                                           ; $689a: $ba
	sbc  b                                           ; $689b: $98
	halt                                             ; $689c: $76
	ld   d, h                                        ; $689d: $54
	ld   b, e                                        ; $689e: $43
	ld   hl, $5624                                   ; $689f: $21 $24 $56
	cp   a                                           ; $68a2: $bf
	rst  $38                                         ; $68a3: $ff
	rst  $38                                         ; $68a4: $ff
	rst  $38                                         ; $68a5: $ff
	sub  e                                           ; $68a6: $93
	ld   de, $1111                                   ; $68a7: $11 $11 $11
	ld   de, $ff1f                                   ; $68aa: $11 $1f $ff
	rst  $38                                         ; $68ad: $ff
	rst  $38                                         ; $68ae: $ff
	push af                                          ; $68af: $f5
	ld   b, e                                        ; $68b0: $43
	ld   de, $1a11                                   ; $68b1: $11 $11 $1a
	ld   de, $ffff                                   ; $68b4: $11 $ff $ff
	rst  $38                                         ; $68b7: $ff
	rst  $38                                         ; $68b8: $ff
	ld   b, c                                        ; $68b9: $41
	ld   de, $1111                                   ; $68ba: $11 $11 $11
	pop  af                                          ; $68bd: $f1
	rra                                              ; $68be: $1f
	rst  $38                                         ; $68bf: $ff
	rst  $38                                         ; $68c0: $ff
	rst  $38                                         ; $68c1: $ff
	push af                                          ; $68c2: $f5
	ld   de, $1111                                   ; $68c3: $11 $11 $11
	rra                                              ; $68c6: $1f
	ld   hl, $ffaf                                   ; $68c7: $21 $af $ff
	rst  $38                                         ; $68ca: $ff
	rst  $38                                         ; $68cb: $ff
	add  c                                           ; $68cc: $81
	ld   de, $1111                                   ; $68cd: $11 $11 $11
	di                                               ; $68d0: $f3
	jr   @+$01                                       ; $68d1: $18 $ff

	rst  $38                                         ; $68d3: $ff
	rst  $38                                         ; $68d4: $ff
	ld   sp, hl                                      ; $68d5: $f9
	ld   de, $1111                                   ; $68d6: $11 $11 $11
	rra                                              ; $68d9: $1f
	ld   de, $ffbf                                   ; $68da: $11 $bf $ff
	rst  $38                                         ; $68dd: $ff
	rst  $38                                         ; $68de: $ff
	ld   [hl], c                                     ; $68df: $71
	ld   de, $1111                                   ; $68e0: $11 $11 $11
	ld   [hl], c                                     ; $68e3: $71
	rra                                              ; $68e4: $1f
	rst  $38                                         ; $68e5: $ff
	rst  $38                                         ; $68e6: $ff
	rst  $38                                         ; $68e7: $ff
	pop  af                                          ; $68e8: $f1
	ld   de, $1111                                   ; $68e9: $11 $11 $11
	ld   b, c                                        ; $68ec: $41
	dec  d                                           ; $68ed: $15
	rst  $38                                         ; $68ee: $ff
	rst  $38                                         ; $68ef: $ff
	rst  $38                                         ; $68f0: $ff
	rst  $38                                         ; $68f1: $ff
	ld   de, $1111                                   ; $68f2: $11 $11 $11
	ld   de, $cf12                                   ; $68f5: $11 $12 $cf
	rst  $38                                         ; $68f8: $ff
	rst  $38                                         ; $68f9: $ff
	rst  $38                                         ; $68fa: $ff
	ld   d, c                                        ; $68fb: $51
	ld   de, $1111                                   ; $68fc: $11 $11 $11
	ld   de, $ff6f                                   ; $68ff: $11 $6f $ff
	rst  $38                                         ; $6902: $ff
	rst  $38                                         ; $6903: $ff
	pop  af                                          ; $6904: $f1
	ld   de, $1111                                   ; $6905: $11 $11 $11
	ld   de, $ff4f                                   ; $6908: $11 $4f $ff
	rst  $38                                         ; $690b: $ff
	rst  $38                                         ; $690c: $ff
	di                                               ; $690d: $f3
	ld   de, $1111                                   ; $690e: $11 $11 $11
	ld   de, $ff1a                                   ; $6911: $11 $1a $ff
	rst  $38                                         ; $6914: $ff
	rst  $38                                         ; $6915: $ff
	ld   a, [$1111]                                  ; $6916: $fa $11 $11
	ld   de, $1311                                   ; $6919: $11 $11 $13
	rst  $38                                         ; $691c: $ff
	rst  $38                                         ; $691d: $ff
	rst  $38                                         ; $691e: $ff
	rst  $38                                         ; $691f: $ff
	ld   hl, $1111                                   ; $6920: $21 $11 $11
	ld   de, $df11                                   ; $6923: $11 $11 $df
	rst  $38                                         ; $6926: $ff
	rst  $38                                         ; $6927: $ff
	rst  $38                                         ; $6928: $ff
	ld   [hl], c                                     ; $6929: $71
	ld   de, $1111                                   ; $692a: $11 $11 $11
	ld   de, $ff7f                                   ; $692d: $11 $7f $ff
	rst  $38                                         ; $6930: $ff
	rst  $38                                         ; $6931: $ff
	db   $d3                                         ; $6932: $d3
	ld   de, $1111                                   ; $6933: $11 $11 $11
	ld   de, $ff4f                                   ; $6936: $11 $4f $ff
	rst  $38                                         ; $6939: $ff
	rst  $38                                         ; $693a: $ff
	push af                                          ; $693b: $f5
	ld   de, $1111                                   ; $693c: $11 $11 $11
	ld   de, $ff1f                                   ; $693f: $11 $1f $ff
	rst  $38                                         ; $6942: $ff
	rst  $38                                         ; $6943: $ff
	rst  $30                                         ; $6944: $f7
	ld   sp, $1111                                   ; $6945: $31 $11 $11
	ld   de, $ff1d                                   ; $6948: $11 $1d $ff
	rst  $38                                         ; $694b: $ff
	rst  $38                                         ; $694c: $ff
	ld   a, [$1141]                                  ; $694d: $fa $41 $11
	ld   de, $1a11                                   ; $6950: $11 $11 $1a
	rst  $38                                         ; $6953: $ff
	rst  $38                                         ; $6954: $ff
	rst  $38                                         ; $6955: $ff
	ld   a, [$1151]                                  ; $6956: $fa $51 $11
	ld   de, $1711                                   ; $6959: $11 $11 $17
	rst  $38                                         ; $695c: $ff
	rst  $38                                         ; $695d: $ff
	rst  $38                                         ; $695e: $ff
	db   $fc                                         ; $695f: $fc
	ld   d, c                                        ; $6960: $51
	ld   de, $1111                                   ; $6961: $11 $11 $11
	ld   d, $ff                                      ; $6964: $16 $ff
	rst  $38                                         ; $6966: $ff
	rst  $38                                         ; $6967: $ff
	db   $fd                                         ; $6968: $fd
	ld   d, c                                        ; $6969: $51
	ld   de, $1111                                   ; $696a: $11 $11 $11
	ld   d, $ff                                      ; $696d: $16 $ff
	rst  $38                                         ; $696f: $ff
	rst  $38                                         ; $6970: $ff
	db   $fd                                         ; $6971: $fd
	ld   h, c                                        ; $6972: $61
	ld   de, $1111                                   ; $6973: $11 $11 $11
	jr   @+$01                                       ; $6976: $18 $ff

	rst  $38                                         ; $6978: $ff
	rst  $38                                         ; $6979: $ff
	db   $fd                                         ; $697a: $fd
	ld   h, c                                        ; $697b: $61
	ld   de, $1111                                   ; $697c: $11 $11 $11
	inc  e                                           ; $697f: $1c
	rst  $38                                         ; $6980: $ff
	rst  $38                                         ; $6981: $ff
	rst  $38                                         ; $6982: $ff
	ld   a, [$1161]                                  ; $6983: $fa $61 $11
	ld   de, $2f11                                   ; $6986: $11 $11 $2f
	rst  $38                                         ; $6989: $ff
	rst  $38                                         ; $698a: $ff
	rst  $38                                         ; $698b: $ff
	ld   hl, sp+$21                                  ; $698c: $f8 $21
	ld   de, $1111                                   ; $698e: $11 $11 $11
	ld   l, a                                        ; $6991: $6f
	rst  $38                                         ; $6992: $ff
	rst  $38                                         ; $6993: $ff
	rst  $38                                         ; $6994: $ff
	and  [hl]                                        ; $6995: $a6
	ld   de, $1111                                   ; $6996: $11 $11 $11
	ld   [de], a                                     ; $6999: $12
	rst  JumpTable                                         ; $699a: $df
	rst  $38                                         ; $699b: $ff
	rst  $38                                         ; $699c: $ff
	rst  $38                                         ; $699d: $ff
	add  d                                           ; $699e: $82
	ld   de, $1111                                   ; $699f: $11 $11 $11
	ld   a, [de]                                     ; $69a2: $1a
	rst  $38                                         ; $69a3: $ff
	rst  $38                                         ; $69a4: $ff
	rst  $38                                         ; $69a5: $ff
	ld   a, [$1131]                                  ; $69a6: $fa $31 $11
	ld   de, $5f11                                   ; $69a9: $11 $11 $5f
	rst  $38                                         ; $69ac: $ff
	rst  $38                                         ; $69ad: $ff
	rst  $38                                         ; $69ae: $ff
	push bc                                          ; $69af: $c5
	ld   de, $1111                                   ; $69b0: $11 $11 $11
	ld   d, $ff                                      ; $69b3: $16 $ff
	rst  $38                                         ; $69b5: $ff
	rst  $38                                         ; $69b6: $ff
	ei                                               ; $69b7: $fb
	ld   b, c                                        ; $69b8: $41
	ld   de, $1211                                   ; $69b9: $11 $11 $12
	ld   e, a                                        ; $69bc: $5f
	rst  $38                                         ; $69bd: $ff
	rst  $38                                         ; $69be: $ff
	rst  $38                                         ; $69bf: $ff
	and  d                                           ; $69c0: $a2
	ld   de, $1111                                   ; $69c1: $11 $11 $11
	ld   b, [hl]                                     ; $69c4: $46
	rst  $38                                         ; $69c5: $ff
	rst  $38                                         ; $69c6: $ff
	rst  $38                                         ; $69c7: $ff
	ld   sp, hl                                      ; $69c8: $f9
	ld   sp, $1111                                   ; $69c9: $31 $11 $11
	inc  d                                           ; $69cc: $14
	adc  a                                           ; $69cd: $8f
	rst  $38                                         ; $69ce: $ff
	rst  $38                                         ; $69cf: $ff
	cp   $82                                         ; $69d0: $fe $82
	ld   de, $1111                                   ; $69d2: $11 $11 $11
	ld   c, e                                        ; $69d5: $4b
	rst  $38                                         ; $69d6: $ff
	rst  $38                                         ; $69d7: $ff
	rst  $38                                         ; $69d8: $ff
	add  $11                                         ; $69d9: $c6 $11
	ld   de, $3611                                   ; $69db: $11 $11 $36
	rst  $38                                         ; $69de: $ff
	rst  $38                                         ; $69df: $ff
	rst  $38                                         ; $69e0: $ff
	jp   hl                                          ; $69e1: $e9


	ld   sp, $1111                                   ; $69e2: $31 $11 $11
	inc  [hl]                                        ; $69e5: $34
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69e6: $cf
	rst  $38                                         ; $69e7: $ff
	rst  $38                                         ; $69e8: $ff
	db   $eb                                         ; $69e9: $eb
	ld   h, c                                        ; $69ea: $61
	ld   de, $3411                                   ; $69eb: $11 $11 $34
	adc  a                                           ; $69ee: $8f
	rst  $38                                         ; $69ef: $ff
	rst  $38                                         ; $69f0: $ff
	ei                                               ; $69f1: $fb
	ld   [hl], d                                     ; $69f2: $72
	ld   de, $2511                                   ; $69f3: $11 $11 $25
	ld   a, [hl]                                     ; $69f6: $7e
	rst  $38                                         ; $69f7: $ff
	rst  $38                                         ; $69f8: $ff
	db   $ec                                         ; $69f9: $ec
	add  l                                           ; $69fa: $85
	ld   de, $1611                                   ; $69fb: $11 $11 $16
	ld   l, h                                        ; $69fe: $6c
	rst  $38                                         ; $69ff: $ff
	rst  $38                                         ; $6a00: $ff
	ei                                               ; $6a01: $fb
	add  [hl]                                        ; $6a02: $86
	ld   de, $1611                                   ; $6a03: $11 $11 $16
	ld   l, d                                        ; $6a06: $6a
	rst  $38                                         ; $6a07: $ff
	rst  $38                                         ; $6a08: $ff
	db   $ec                                         ; $6a09: $ec
	sub  a                                           ; $6a0a: $97
	ld   sp, $1411                                   ; $6a0b: $31 $11 $14
	ld   e, c                                        ; $6a0e: $59
	rst  JumpTable                                         ; $6a0f: $df
	rst  $38                                         ; $6a10: $ff
	db   $fc                                         ; $6a11: $fc
	xor  b                                           ; $6a12: $a8
	ld   b, c                                        ; $6a13: $41
	ld   de, $5614                                   ; $6a14: $11 $14 $56
	adc  $ff                                         ; $6a17: $ce $ff
	db   $fd                                         ; $6a19: $fd
	xor  c                                           ; $6a1a: $a9
	ld   h, c                                        ; $6a1b: $61
	ld   de, $4613                                   ; $6a1c: $11 $13 $46
	xor  [hl]                                        ; $6a1f: $ae
	rst  $38                                         ; $6a20: $ff
	db   $fd                                         ; $6a21: $fd
	cp   e                                           ; $6a22: $bb
	ld   [hl], e                                     ; $6a23: $73
	ld   hl, $5512                                   ; $6a24: $21 $12 $55
	adc  e                                           ; $6a27: $8b
	rst  $28                                         ; $6a28: $ef
	db   $dd                                         ; $6a29: $dd
	jp   z, Jump_0a6_4495                            ; $6a2a: $ca $95 $44

	ld   hl, $8b46                                   ; $6a2d: $21 $46 $8b
	xor  e                                           ; $6a30: $ab
	db   $ec                                         ; $6a31: $ec
	xor  d                                           ; $6a32: $aa
	add  a                                           ; $6a33: $87
	ld   d, e                                        ; $6a34: $53
	inc  sp                                          ; $6a35: $33
	ld   d, [hl]                                     ; $6a36: $56
	ld   l, d                                        ; $6a37: $6a
	cp   d                                           ; $6a38: $ba
	cp   d                                           ; $6a39: $ba
	call z, Call_0a6_6797                            ; $6a3a: $cc $97 $67
	ld   [hl], l                                     ; $6a3d: $75
	ld   b, [hl]                                     ; $6a3e: $46
	adc  c                                           ; $6a3f: $89
	adc  c                                           ; $6a40: $89
	call z, $89a7                                    ; $6a41: $cc $a7 $89
	ld   [hl], l                                     ; $6a44: $75
	ld   b, l                                        ; $6a45: $45
	add  a                                           ; $6a46: $87
	ld   l, c                                        ; $6a47: $69
	sbc  c                                           ; $6a48: $99
	adc  b                                           ; $6a49: $88
	cp   e                                           ; $6a4a: $bb
	sub  a                                           ; $6a4b: $97
	ld   [hl], a                                     ; $6a4c: $77
	add  [hl]                                        ; $6a4d: $86
	ld   h, a                                        ; $6a4e: $67
	adc  b                                           ; $6a4f: $88
	ld   a, c                                        ; $6a50: $79
	sbc  c                                           ; $6a51: $99
	ld   a, b                                        ; $6a52: $78
	sbc  c                                           ; $6a53: $99
	add  a                                           ; $6a54: $87
	adc  b                                           ; $6a55: $88
	add  a                                           ; $6a56: $87
	ld   a, c                                        ; $6a57: $79
	sbc  b                                           ; $6a58: $98
	adc  b                                           ; $6a59: $88
	adc  b                                           ; $6a5a: $88
	ld   a, b                                        ; $6a5b: $78
	sbc  c                                           ; $6a5c: $99
	adc  b                                           ; $6a5d: $88
	adc  b                                           ; $6a5e: $88
	ld   [hl], a                                     ; $6a5f: $77
	adc  b                                           ; $6a60: $88
	adc  b                                           ; $6a61: $88
	adc  b                                           ; $6a62: $88
	add  a                                           ; $6a63: $87
	adc  b                                           ; $6a64: $88
	sbc  c                                           ; $6a65: $99
	adc  b                                           ; $6a66: $88
	adc  b                                           ; $6a67: $88
	ld   [hl], a                                     ; $6a68: $77
	adc  b                                           ; $6a69: $88
	adc  b                                           ; $6a6a: $88
	adc  b                                           ; $6a6b: $88
	adc  b                                           ; $6a6c: $88
	adc  c                                           ; $6a6d: $89
	sbc  b                                           ; $6a6e: $98
	adc  b                                           ; $6a6f: $88
	add  a                                           ; $6a70: $87
	ld   a, b                                        ; $6a71: $78
	adc  c                                           ; $6a72: $89
	sbc  b                                           ; $6a73: $98
	adc  c                                           ; $6a74: $89
	adc  b                                           ; $6a75: $88
	ld   a, b                                        ; $6a76: $78
	add  a                                           ; $6a77: $87
	ld   [hl], a                                     ; $6a78: $77
	adc  b                                           ; $6a79: $88
	adc  c                                           ; $6a7a: $89
	adc  b                                           ; $6a7b: $88
	sbc  b                                           ; $6a7c: $98
	sbc  c                                           ; $6a7d: $99
	add  a                                           ; $6a7e: $87
	ld   [hl], a                                     ; $6a7f: $77
	ld   [hl], a                                     ; $6a80: $77
	ld   a, b                                        ; $6a81: $78
	adc  b                                           ; $6a82: $88
	sbc  c                                           ; $6a83: $99
	sbc  c                                           ; $6a84: $99
	sbc  b                                           ; $6a85: $98
	sbc  b                                           ; $6a86: $98
	ld   [hl], a                                     ; $6a87: $77
	ld   [hl], a                                     ; $6a88: $77
	ld   [hl], a                                     ; $6a89: $77
	ld   a, b                                        ; $6a8a: $78
	sbc  b                                           ; $6a8b: $98
	sbc  c                                           ; $6a8c: $99
	sbc  c                                           ; $6a8d: $99
	sbc  c                                           ; $6a8e: $99
	add  a                                           ; $6a8f: $87
	ld   [hl], a                                     ; $6a90: $77
	ld   [hl], a                                     ; $6a91: $77
	ld   [hl], a                                     ; $6a92: $77
	adc  b                                           ; $6a93: $88
	adc  c                                           ; $6a94: $89
	sbc  c                                           ; $6a95: $99
	sbc  b                                           ; $6a96: $98
	sbc  b                                           ; $6a97: $98
	ld   [hl], a                                     ; $6a98: $77
	ld   [hl], a                                     ; $6a99: $77
	ld   [hl], a                                     ; $6a9a: $77
	ld   a, b                                        ; $6a9b: $78
	sbc  c                                           ; $6a9c: $99
	sbc  c                                           ; $6a9d: $99
	sbc  c                                           ; $6a9e: $99
	adc  c                                           ; $6a9f: $89
	add  a                                           ; $6aa0: $87
	ld   [hl], a                                     ; $6aa1: $77
	ld   [hl], a                                     ; $6aa2: $77
	ld   a, b                                        ; $6aa3: $78
	adc  c                                           ; $6aa4: $89
	adc  c                                           ; $6aa5: $89
	sbc  b                                           ; $6aa6: $98
	adc  c                                           ; $6aa7: $89
	adc  b                                           ; $6aa8: $88
	ld   [hl], a                                     ; $6aa9: $77
	ld   [hl], a                                     ; $6aaa: $77
	ld   [hl], a                                     ; $6aab: $77
	adc  b                                           ; $6aac: $88
	sbc  c                                           ; $6aad: $99
	adc  b                                           ; $6aae: $88
	adc  c                                           ; $6aaf: $89
	adc  b                                           ; $6ab0: $88
	adc  b                                           ; $6ab1: $88
	add  a                                           ; $6ab2: $87
	ld   a, b                                        ; $6ab3: $78
	adc  b                                           ; $6ab4: $88
	adc  b                                           ; $6ab5: $88
	sbc  c                                           ; $6ab6: $99
	sbc  c                                           ; $6ab7: $99
	adc  b                                           ; $6ab8: $88
	adc  b                                           ; $6ab9: $88
	adc  b                                           ; $6aba: $88
	adc  b                                           ; $6abb: $88
	adc  b                                           ; $6abc: $88
	adc  b                                           ; $6abd: $88
	adc  b                                           ; $6abe: $88
	adc  b                                           ; $6abf: $88
	adc  b                                           ; $6ac0: $88
	adc  b                                           ; $6ac1: $88
	adc  b                                           ; $6ac2: $88
	adc  b                                           ; $6ac3: $88
	adc  b                                           ; $6ac4: $88
	adc  b                                           ; $6ac5: $88
	adc  b                                           ; $6ac6: $88
	adc  b                                           ; $6ac7: $88
	adc  b                                           ; $6ac8: $88
	adc  b                                           ; $6ac9: $88
	adc  b                                           ; $6aca: $88
	adc  b                                           ; $6acb: $88
	adc  b                                           ; $6acc: $88
	adc  b                                           ; $6acd: $88
	adc  b                                           ; $6ace: $88
	adc  b                                           ; $6acf: $88
	adc  b                                           ; $6ad0: $88
	adc  b                                           ; $6ad1: $88
	adc  b                                           ; $6ad2: $88
	adc  b                                           ; $6ad3: $88
	adc  b                                           ; $6ad4: $88
	adc  b                                           ; $6ad5: $88
	adc  b                                           ; $6ad6: $88
	adc  b                                           ; $6ad7: $88
	adc  b                                           ; $6ad8: $88
	adc  b                                           ; $6ad9: $88
	adc  b                                           ; $6ada: $88
	adc  b                                           ; $6adb: $88
	adc  b                                           ; $6adc: $88
	adc  b                                           ; $6add: $88
	adc  b                                           ; $6ade: $88
	adc  b                                           ; $6adf: $88
	adc  b                                           ; $6ae0: $88
	adc  b                                           ; $6ae1: $88
	adc  b                                           ; $6ae2: $88
	adc  b                                           ; $6ae3: $88
	ld   de, $1111                                   ; $6ae4: $11 $11 $11
	ld   de, $1111                                   ; $6ae7: $11 $11 $11
	nop                                              ; $6aea: $00
	ld   c, b                                        ; $6aeb: $48
	ld   de, $1111                                   ; $6aec: $11 $11 $11
	ld   de, $1111                                   ; $6aef: $11 $11 $11
	ld   de, $1111                                   ; $6af2: $11 $11 $11
	ld   de, $5413                                   ; $6af5: $11 $13 $54
	ld   d, h                                        ; $6af8: $54
	ld   d, h                                        ; $6af9: $54
	ld   b, c                                        ; $6afa: $41
	rra                                              ; $6afb: $1f
	rst  $38                                         ; $6afc: $ff
	pop  af                                          ; $6afd: $f1
	ld   de, $1711                                   ; $6afe: $11 $11 $17
	pop  bc                                          ; $6b01: $c1
	ld   de, $df1c                                   ; $6b02: $11 $1c $df
	sbc  h                                           ; $6b05: $9c
	rst  JumpTable                                         ; $6b06: $df
	sub  c                                           ; $6b07: $91
	ld   de, $1111                                   ; $6b08: $11 $11 $11
	ld   de, $1111                                   ; $6b0b: $11 $11 $11
	ld   de, $1111                                   ; $6b0e: $11 $11 $11
	ld   de, $1111                                   ; $6b11: $11 $11 $11
	ld   de, $5411                                   ; $6b14: $11 $11 $54
	ld   b, h                                        ; $6b17: $44
	rst  ToBoot                                         ; $6b18: $c7
	ld   de, $5454                                   ; $6b19: $11 $54 $54
	ld   h, a                                        ; $6b1c: $67
	ld   [hl], d                                     ; $6b1d: $72
	ld   de, $1111                                   ; $6b1e: $11 $11 $11
	ld   de, $1112                                   ; $6b21: $11 $12 $11
	ld   [de], a                                     ; $6b24: $12
	ld   de, $1111                                   ; $6b25: $11 $11 $11
	ld   h, [hl]                                     ; $6b28: $66
	halt                                             ; $6b29: $76
	sub  a                                           ; $6b2a: $97
	ld   de, $8888                                   ; $6b2b: $11 $88 $88
	adc  b                                           ; $6b2e: $88
	adc  b                                           ; $6b2f: $88
	adc  b                                           ; $6b30: $88
	adc  b                                           ; $6b31: $88
	adc  b                                           ; $6b32: $88
	adc  b                                           ; $6b33: $88
	adc  b                                           ; $6b34: $88
	adc  b                                           ; $6b35: $88
	adc  b                                           ; $6b36: $88
	adc  b                                           ; $6b37: $88
	adc  b                                           ; $6b38: $88
	adc  b                                           ; $6b39: $88
	adc  b                                           ; $6b3a: $88
	adc  b                                           ; $6b3b: $88
	adc  b                                           ; $6b3c: $88
	adc  b                                           ; $6b3d: $88
	adc  b                                           ; $6b3e: $88
	adc  b                                           ; $6b3f: $88
	adc  b                                           ; $6b40: $88
	adc  b                                           ; $6b41: $88
	adc  b                                           ; $6b42: $88
	adc  b                                           ; $6b43: $88
	adc  b                                           ; $6b44: $88
	adc  b                                           ; $6b45: $88
	adc  b                                           ; $6b46: $88
	adc  b                                           ; $6b47: $88
	adc  b                                           ; $6b48: $88
	adc  b                                           ; $6b49: $88
	adc  b                                           ; $6b4a: $88
	adc  b                                           ; $6b4b: $88
	adc  b                                           ; $6b4c: $88
	adc  b                                           ; $6b4d: $88
	adc  b                                           ; $6b4e: $88
	adc  b                                           ; $6b4f: $88
	adc  b                                           ; $6b50: $88
	adc  b                                           ; $6b51: $88
	adc  b                                           ; $6b52: $88
	adc  b                                           ; $6b53: $88
	adc  b                                           ; $6b54: $88
	adc  b                                           ; $6b55: $88
	adc  b                                           ; $6b56: $88
	adc  b                                           ; $6b57: $88
	adc  b                                           ; $6b58: $88
	adc  b                                           ; $6b59: $88
	adc  b                                           ; $6b5a: $88
	adc  b                                           ; $6b5b: $88
	adc  b                                           ; $6b5c: $88
	adc  b                                           ; $6b5d: $88
	adc  b                                           ; $6b5e: $88
	adc  b                                           ; $6b5f: $88
	adc  b                                           ; $6b60: $88
	adc  b                                           ; $6b61: $88
	adc  b                                           ; $6b62: $88
	adc  b                                           ; $6b63: $88
	adc  b                                           ; $6b64: $88
	adc  b                                           ; $6b65: $88
	adc  b                                           ; $6b66: $88
	adc  b                                           ; $6b67: $88
	adc  b                                           ; $6b68: $88
	adc  b                                           ; $6b69: $88
	adc  b                                           ; $6b6a: $88
	adc  b                                           ; $6b6b: $88
	adc  b                                           ; $6b6c: $88
	adc  b                                           ; $6b6d: $88
	adc  b                                           ; $6b6e: $88
	adc  b                                           ; $6b6f: $88
	adc  b                                           ; $6b70: $88
	adc  b                                           ; $6b71: $88
	adc  b                                           ; $6b72: $88
	adc  b                                           ; $6b73: $88
	adc  b                                           ; $6b74: $88
	adc  b                                           ; $6b75: $88
	adc  b                                           ; $6b76: $88
	adc  b                                           ; $6b77: $88
	adc  b                                           ; $6b78: $88
	adc  b                                           ; $6b79: $88
	adc  b                                           ; $6b7a: $88
	adc  b                                           ; $6b7b: $88
	adc  b                                           ; $6b7c: $88
	adc  b                                           ; $6b7d: $88
	adc  b                                           ; $6b7e: $88
	adc  b                                           ; $6b7f: $88
	adc  b                                           ; $6b80: $88
	adc  b                                           ; $6b81: $88
	adc  b                                           ; $6b82: $88
	adc  b                                           ; $6b83: $88
	adc  b                                           ; $6b84: $88
	adc  b                                           ; $6b85: $88
	adc  b                                           ; $6b86: $88
	adc  b                                           ; $6b87: $88
	adc  b                                           ; $6b88: $88
	adc  b                                           ; $6b89: $88
	adc  b                                           ; $6b8a: $88
	adc  b                                           ; $6b8b: $88
	adc  b                                           ; $6b8c: $88
	adc  b                                           ; $6b8d: $88
	adc  b                                           ; $6b8e: $88
	adc  b                                           ; $6b8f: $88
	adc  b                                           ; $6b90: $88
	adc  b                                           ; $6b91: $88
	adc  b                                           ; $6b92: $88
	adc  b                                           ; $6b93: $88
	adc  b                                           ; $6b94: $88
	adc  b                                           ; $6b95: $88
	adc  b                                           ; $6b96: $88
	adc  b                                           ; $6b97: $88
	adc  b                                           ; $6b98: $88
	adc  b                                           ; $6b99: $88
	adc  b                                           ; $6b9a: $88
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
	adc  b                                           ; $6ba6: $88
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
	adc  c                                           ; $6bdb: $89
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
	add  a                                           ; $6bee: $87
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
	adc  b                                           ; $6bfb: $88
	adc  b                                           ; $6bfc: $88
	adc  b                                           ; $6bfd: $88
	adc  b                                           ; $6bfe: $88
	adc  b                                           ; $6bff: $88
	adc  b                                           ; $6c00: $88
	adc  b                                           ; $6c01: $88
	adc  b                                           ; $6c02: $88
	adc  b                                           ; $6c03: $88
	adc  b                                           ; $6c04: $88
	adc  b                                           ; $6c05: $88
	adc  b                                           ; $6c06: $88
	adc  b                                           ; $6c07: $88
	sbc  b                                           ; $6c08: $98
	adc  b                                           ; $6c09: $88
	adc  b                                           ; $6c0a: $88
	adc  b                                           ; $6c0b: $88
	adc  b                                           ; $6c0c: $88
	adc  b                                           ; $6c0d: $88
	adc  b                                           ; $6c0e: $88
	adc  b                                           ; $6c0f: $88
	sbc  b                                           ; $6c10: $98
	adc  b                                           ; $6c11: $88
	adc  b                                           ; $6c12: $88
	adc  b                                           ; $6c13: $88
	adc  b                                           ; $6c14: $88
	adc  b                                           ; $6c15: $88
	adc  b                                           ; $6c16: $88
	adc  b                                           ; $6c17: $88
	adc  b                                           ; $6c18: $88
	adc  b                                           ; $6c19: $88
	adc  b                                           ; $6c1a: $88
	adc  b                                           ; $6c1b: $88
	adc  c                                           ; $6c1c: $89
	adc  b                                           ; $6c1d: $88
	adc  b                                           ; $6c1e: $88
	adc  b                                           ; $6c1f: $88
	adc  b                                           ; $6c20: $88
	adc  b                                           ; $6c21: $88
	adc  b                                           ; $6c22: $88
	adc  b                                           ; $6c23: $88
	adc  b                                           ; $6c24: $88
	adc  b                                           ; $6c25: $88
	sbc  b                                           ; $6c26: $98
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
	adc  c                                           ; $6c42: $89
	adc  b                                           ; $6c43: $88
	adc  b                                           ; $6c44: $88
	adc  b                                           ; $6c45: $88
	adc  b                                           ; $6c46: $88
	adc  b                                           ; $6c47: $88
	adc  b                                           ; $6c48: $88
	adc  b                                           ; $6c49: $88
	adc  b                                           ; $6c4a: $88
	sbc  b                                           ; $6c4b: $98
	adc  b                                           ; $6c4c: $88
	adc  b                                           ; $6c4d: $88
	adc  b                                           ; $6c4e: $88
	adc  b                                           ; $6c4f: $88
	sbc  b                                           ; $6c50: $98
	adc  b                                           ; $6c51: $88
	adc  c                                           ; $6c52: $89
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
	sbc  b                                           ; $6c66: $98
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
	adc  c                                           ; $6c76: $89
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
	add  a                                           ; $6c8b: $87
	adc  b                                           ; $6c8c: $88
	adc  b                                           ; $6c8d: $88
	adc  c                                           ; $6c8e: $89
	adc  b                                           ; $6c8f: $88
	adc  b                                           ; $6c90: $88
	adc  b                                           ; $6c91: $88
	adc  b                                           ; $6c92: $88
	adc  b                                           ; $6c93: $88
	adc  b                                           ; $6c94: $88
	sbc  b                                           ; $6c95: $98
	adc  b                                           ; $6c96: $88
	adc  b                                           ; $6c97: $88
	adc  b                                           ; $6c98: $88
	adc  b                                           ; $6c99: $88
	adc  b                                           ; $6c9a: $88
	adc  b                                           ; $6c9b: $88
	adc  b                                           ; $6c9c: $88
	adc  b                                           ; $6c9d: $88
	sbc  c                                           ; $6c9e: $99
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
	adc  c                                           ; $6cab: $89
	adc  b                                           ; $6cac: $88
	adc  b                                           ; $6cad: $88
	adc  b                                           ; $6cae: $88
	adc  b                                           ; $6caf: $88
	adc  b                                           ; $6cb0: $88
	adc  b                                           ; $6cb1: $88
	adc  b                                           ; $6cb2: $88
	adc  b                                           ; $6cb3: $88
	adc  b                                           ; $6cb4: $88
	sbc  b                                           ; $6cb5: $98
	adc  b                                           ; $6cb6: $88
	adc  b                                           ; $6cb7: $88
	adc  b                                           ; $6cb8: $88
	adc  b                                           ; $6cb9: $88
	adc  b                                           ; $6cba: $88
	sbc  b                                           ; $6cbb: $98
	adc  b                                           ; $6cbc: $88
	adc  b                                           ; $6cbd: $88
	adc  b                                           ; $6cbe: $88
	adc  b                                           ; $6cbf: $88
	adc  b                                           ; $6cc0: $88
	adc  c                                           ; $6cc1: $89
	adc  b                                           ; $6cc2: $88
	adc  b                                           ; $6cc3: $88
	adc  b                                           ; $6cc4: $88
	adc  b                                           ; $6cc5: $88
	adc  b                                           ; $6cc6: $88
	adc  b                                           ; $6cc7: $88
	adc  b                                           ; $6cc8: $88
	sbc  b                                           ; $6cc9: $98
	adc  b                                           ; $6cca: $88
	adc  c                                           ; $6ccb: $89
	adc  b                                           ; $6ccc: $88
	adc  b                                           ; $6ccd: $88
	adc  b                                           ; $6cce: $88
	adc  b                                           ; $6ccf: $88
	adc  c                                           ; $6cd0: $89
	adc  b                                           ; $6cd1: $88
	adc  b                                           ; $6cd2: $88
	adc  b                                           ; $6cd3: $88
	adc  b                                           ; $6cd4: $88
	adc  b                                           ; $6cd5: $88
	adc  b                                           ; $6cd6: $88
	adc  c                                           ; $6cd7: $89
	adc  b                                           ; $6cd8: $88
	adc  b                                           ; $6cd9: $88
	adc  b                                           ; $6cda: $88
	adc  b                                           ; $6cdb: $88
	add  a                                           ; $6cdc: $87
	add  a                                           ; $6cdd: $87
	ld   l, d                                        ; $6cde: $6a
	xor  b                                           ; $6cdf: $a8
	sbc  b                                           ; $6ce0: $98
	add  a                                           ; $6ce1: $87
	ld   a, b                                        ; $6ce2: $78
	sbc  b                                           ; $6ce3: $98
	sbc  b                                           ; $6ce4: $98
	adc  b                                           ; $6ce5: $88
	adc  b                                           ; $6ce6: $88
	ld   a, b                                        ; $6ce7: $78
	adc  c                                           ; $6ce8: $89
	adc  b                                           ; $6ce9: $88
	sub  a                                           ; $6cea: $97
	sbc  b                                           ; $6ceb: $98
	adc  b                                           ; $6cec: $88
	adc  c                                           ; $6ced: $89
	adc  b                                           ; $6cee: $88
	adc  b                                           ; $6cef: $88
	adc  b                                           ; $6cf0: $88
	sbc  b                                           ; $6cf1: $98
	ld   a, b                                        ; $6cf2: $78
	sbc  c                                           ; $6cf3: $99
	add  a                                           ; $6cf4: $87
	adc  c                                           ; $6cf5: $89
	sbc  b                                           ; $6cf6: $98
	adc  b                                           ; $6cf7: $88
	adc  c                                           ; $6cf8: $89
	add  a                                           ; $6cf9: $87
	ld   a, b                                        ; $6cfa: $78
	add  a                                           ; $6cfb: $87
	adc  c                                           ; $6cfc: $89
	xor  c                                           ; $6cfd: $a9
	ld   a, b                                        ; $6cfe: $78
	ld   a, b                                        ; $6cff: $78
	sbc  b                                           ; $6d00: $98
	adc  b                                           ; $6d01: $88
	adc  b                                           ; $6d02: $88
	sbc  c                                           ; $6d03: $99
	add  a                                           ; $6d04: $87
	adc  b                                           ; $6d05: $88
	sbc  b                                           ; $6d06: $98
	adc  c                                           ; $6d07: $89
	adc  b                                           ; $6d08: $88
	ld   a, b                                        ; $6d09: $78
	add  a                                           ; $6d0a: $87
	adc  b                                           ; $6d0b: $88
	adc  b                                           ; $6d0c: $88
	ld   a, b                                        ; $6d0d: $78
	sbc  c                                           ; $6d0e: $99
	ld   a, b                                        ; $6d0f: $78
	sbc  c                                           ; $6d10: $99
	add  a                                           ; $6d11: $87
	adc  b                                           ; $6d12: $88
	ld   [hl], a                                     ; $6d13: $77
	ld   [hl], a                                     ; $6d14: $77
	adc  b                                           ; $6d15: $88
	add  a                                           ; $6d16: $87
	ld   a, c                                        ; $6d17: $79
	add  a                                           ; $6d18: $87
	add  a                                           ; $6d19: $87
	adc  b                                           ; $6d1a: $88
	adc  b                                           ; $6d1b: $88
	sbc  b                                           ; $6d1c: $98
	xor  c                                           ; $6d1d: $a9
	ld   a, b                                        ; $6d1e: $78
	adc  b                                           ; $6d1f: $88
	ld   [hl], a                                     ; $6d20: $77
	sbc  c                                           ; $6d21: $99
	ld   a, b                                        ; $6d22: $78
	add  a                                           ; $6d23: $87
	ld   [hl], a                                     ; $6d24: $77
	adc  b                                           ; $6d25: $88
	ld   a, b                                        ; $6d26: $78
	ld   a, b                                        ; $6d27: $78
	xor  c                                           ; $6d28: $a9
	ld   a, c                                        ; $6d29: $79
	ld   [hl], a                                     ; $6d2a: $77
	adc  c                                           ; $6d2b: $89
	sbc  b                                           ; $6d2c: $98
	ld   a, b                                        ; $6d2d: $78
	ld   [hl], a                                     ; $6d2e: $77
	adc  c                                           ; $6d2f: $89
	sbc  b                                           ; $6d30: $98
	ld   [hl], a                                     ; $6d31: $77
	sbc  b                                           ; $6d32: $98
	ld   [hl], a                                     ; $6d33: $77
	adc  b                                           ; $6d34: $88
	adc  c                                           ; $6d35: $89
	add  a                                           ; $6d36: $87
	adc  b                                           ; $6d37: $88
	ld   a, c                                        ; $6d38: $79
	adc  b                                           ; $6d39: $88
	ld   [hl], h                                     ; $6d3a: $74
	xor  b                                           ; $6d3b: $a8
	ld   l, c                                        ; $6d3c: $69
	sbc  b                                           ; $6d3d: $98
	sbc  b                                           ; $6d3e: $98
	ld   [hl], a                                     ; $6d3f: $77
	sub  a                                           ; $6d40: $97
	ld   h, a                                        ; $6d41: $67
	adc  b                                           ; $6d42: $88
	ld   a, b                                        ; $6d43: $78
	ld   [hl], a                                     ; $6d44: $77
	sbc  b                                           ; $6d45: $98
	sub  [hl]                                        ; $6d46: $96
	ld   l, b                                        ; $6d47: $68
	ld   a, c                                        ; $6d48: $79
	cp   c                                           ; $6d49: $b9
	adc  b                                           ; $6d4a: $88
	adc  c                                           ; $6d4b: $89
	ld   a, b                                        ; $6d4c: $78
	sub  a                                           ; $6d4d: $97
	ld   a, b                                        ; $6d4e: $78
	halt                                             ; $6d4f: $76
	sub  a                                           ; $6d50: $97
	ld   b, a                                        ; $6d51: $47
	sub  [hl]                                        ; $6d52: $96
	ld   a, d                                        ; $6d53: $7a
	adc  b                                           ; $6d54: $88
	adc  d                                           ; $6d55: $8a
	cp   e                                           ; $6d56: $bb
	add  [hl]                                        ; $6d57: $86
	ld   a, b                                        ; $6d58: $78
	add  a                                           ; $6d59: $87
	add  a                                           ; $6d5a: $87
	ld   b, [hl]                                     ; $6d5b: $46
	cp   e                                           ; $6d5c: $bb
	sbc  b                                           ; $6d5d: $98
	xor  h                                           ; $6d5e: $ac
	ld   [hl], l                                     ; $6d5f: $75
	ld   l, c                                        ; $6d60: $69
	or   a                                           ; $6d61: $b7
	ld   h, [hl]                                     ; $6d62: $66
	ld   h, a                                        ; $6d63: $67
	sub  [hl]                                        ; $6d64: $96
	adc  e                                           ; $6d65: $8b
	sbc  c                                           ; $6d66: $99
	sbc  b                                           ; $6d67: $98
	ld   a, c                                        ; $6d68: $79
	adc  b                                           ; $6d69: $88
	sub  [hl]                                        ; $6d6a: $96
	ld   a, d                                        ; $6d6b: $7a
	sub  [hl]                                        ; $6d6c: $96
	adc  d                                           ; $6d6d: $8a
	adc  c                                           ; $6d6e: $89
	xor  d                                           ; $6d6f: $aa
	ld   a, c                                        ; $6d70: $79
	xor  b                                           ; $6d71: $a8
	sub  [hl]                                        ; $6d72: $96
	ld   a, c                                        ; $6d73: $79
	or   a                                           ; $6d74: $b7
	ld   d, a                                        ; $6d75: $57
	ld   d, [hl]                                     ; $6d76: $56
	halt                                             ; $6d77: $76
	ld   d, a                                        ; $6d78: $57
	ld   [hl], l                                     ; $6d79: $75
	ld   h, [hl]                                     ; $6d7a: $66
	sbc  b                                           ; $6d7b: $98
	sbc  b                                           ; $6d7c: $98
	sbc  d                                           ; $6d7d: $9a
	sbc  b                                           ; $6d7e: $98
	adc  c                                           ; $6d7f: $89
	adc  c                                           ; $6d80: $89
	xor  d                                           ; $6d81: $aa
	sbc  c                                           ; $6d82: $99
	sbc  b                                           ; $6d83: $98
	xor  c                                           ; $6d84: $a9
	sbc  c                                           ; $6d85: $99
	ld   a, b                                        ; $6d86: $78
	ld   h, h                                        ; $6d87: $64
	ld   sp, $1111                                   ; $6d88: $31 $11 $11
	inc  de                                          ; $6d8b: $13
	dec  [hl]                                        ; $6d8c: $35
	ld   l, d                                        ; $6d8d: $6a
	cp   a                                           ; $6d8e: $bf
	rst  $38                                         ; $6d8f: $ff
	rst  $38                                         ; $6d90: $ff
	rst  $38                                         ; $6d91: $ff
	rst  $38                                         ; $6d92: $ff
	cp   h                                           ; $6d93: $bc
	xor  c                                           ; $6d94: $a9
	ld   h, a                                        ; $6d95: $67
	ld   h, l                                        ; $6d96: $65
	ld   sp, $1111                                   ; $6d97: $31 $11 $11
	ld   de, $c31a                                   ; $6d9a: $11 $1a $c3
	add  hl, sp                                      ; $6d9d: $39
	rst  $38                                         ; $6d9e: $ff
	rst  $38                                         ; $6d9f: $ff
	rst  $38                                         ; $6da0: $ff
	rst  $38                                         ; $6da1: $ff
	jp   z, $8123                                    ; $6da2: $ca $23 $81

	ld   de, $fcac                                   ; $6da5: $11 $ac $fc
	xor  a                                           ; $6da8: $af
	ei                                               ; $6da9: $fb
	ld   de, $1111                                   ; $6daa: $11 $11 $11
	add  hl, de                                      ; $6dad: $19
	add  d                                           ; $6dae: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6daf: $cf
	rst  $38                                         ; $6db0: $ff
	rst  $38                                         ; $6db1: $ff
	rst  $38                                         ; $6db2: $ff
	rst  $38                                         ; $6db3: $ff
	ld   de, $1111                                   ; $6db4: $11 $11 $11
	ld   l, $ff                                      ; $6db7: $2e $ff
	rst  $38                                         ; $6db9: $ff
	rst  $38                                         ; $6dba: $ff
	rst  $30                                         ; $6dbb: $f7
	ld   de, $1111                                   ; $6dbc: $11 $11 $11
	rra                                              ; $6dbf: $1f
	rst  $30                                         ; $6dc0: $f7
	rst  $38                                         ; $6dc1: $ff
	rst  $38                                         ; $6dc2: $ff
	rst  $38                                         ; $6dc3: $ff
	rra                                              ; $6dc4: $1f
	ld   [hl], c                                     ; $6dc5: $71
	ld   de, $f311                                   ; $6dc6: $11 $11 $f3
	xor  a                                           ; $6dc9: $af
	rst  $38                                         ; $6dca: $ff
	rst  $38                                         ; $6dcb: $ff
	ld   l, a                                        ; $6dcc: $6f
	or   $11                                         ; $6dcd: $f6 $11
	ld   de, $1111                                   ; $6dcf: $11 $11 $11
	rst  $38                                         ; $6dd2: $ff
	rst  $38                                         ; $6dd3: $ff
	rst  $38                                         ; $6dd4: $ff
	rst  $38                                         ; $6dd5: $ff
	ld   de, $1161                                   ; $6dd6: $11 $61 $11
	ld   de, $ffaf                                   ; $6dd9: $11 $af $ff
	rst  $38                                         ; $6ddc: $ff
	rst  $38                                         ; $6ddd: $ff
	ld   b, c                                        ; $6dde: $41
	ld   l, c                                        ; $6ddf: $69
	ld   de, $1111                                   ; $6de0: $11 $11 $11
	ld   de, $ff9f                                   ; $6de3: $11 $9f $ff
	db   $fd                                         ; $6de6: $fd
	rst  $38                                         ; $6de7: $ff
	pop  af                                          ; $6de8: $f1
	ld   d, $17                                      ; $6de9: $16 $17
	ld   d, c                                        ; $6deb: $51
	rra                                              ; $6dec: $1f
	rst  $38                                         ; $6ded: $ff
	rst  $38                                         ; $6dee: $ff
	rst  $38                                         ; $6def: $ff
	db   $f4                                         ; $6df0: $f4
	ld   d, $b7                                      ; $6df1: $16 $b7
	ld   de, $3111                                   ; $6df3: $11 $11 $31
	ld   de, $ffff                                   ; $6df6: $11 $ff $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6df9: $cf
	rst  $38                                         ; $6dfa: $ff
	ld   de, $4514                                   ; $6dfb: $11 $14 $45
	ld   [de], a                                     ; $6dfe: $12
	adc  a                                           ; $6dff: $8f
	rst  $38                                         ; $6e00: $ff
	cp   $fe                                         ; $6e01: $fe $fe
	and  e                                           ; $6e03: $a3
	inc  l                                           ; $6e04: $2c
	rst  ToBoot                                         ; $6e05: $c7
	ld   de, $1111                                   ; $6e06: $11 $11 $11
	ld   de, $ffff                                   ; $6e09: $11 $ff $ff
	rst  $38                                         ; $6e0c: $ff
	cp   $11                                         ; $6e0d: $fe $11
	inc  de                                          ; $6e0f: $13
	inc  sp                                          ; $6e10: $33
	scf                                              ; $6e11: $37
	rst  $38                                         ; $6e12: $ff
	rst  $38                                         ; $6e13: $ff
	cp   e                                           ; $6e14: $bb
	and  [hl]                                        ; $6e15: $a6
	ld   b, d                                        ; $6e16: $42
	sbc  a                                           ; $6e17: $9f
	ei                                               ; $6e18: $fb
	ld   d, e                                        ; $6e19: $53
	ld   de, $1111                                   ; $6e1a: $11 $11 $11
	ld   e, a                                        ; $6e1d: $5f
	rst  $38                                         ; $6e1e: $ff
	rst  $38                                         ; $6e1f: $ff
	rst  $38                                         ; $6e20: $ff
	ld   d, c                                        ; $6e21: $51
	ld   de, $ab38                                   ; $6e22: $11 $38 $ab
	rst  $38                                         ; $6e25: $ff
	rst  $38                                         ; $6e26: $ff
	sub  h                                           ; $6e27: $94
	inc  de                                          ; $6e28: $13
	ld   d, [hl]                                     ; $6e29: $56
	adc  a                                           ; $6e2a: $8f
	rst  $38                                         ; $6e2b: $ff
	jp   nz, $1111                                   ; $6e2c: $c2 $11 $11

	ld   de, rAUD1LEN                                   ; $6e2f: $11 $11 $ff
	rst  $38                                         ; $6e32: $ff
	db   $fc                                         ; $6e33: $fc
	sub  d                                           ; $6e34: $92
	ld   de, $ff16                                   ; $6e35: $11 $16 $ff
	rst  $38                                         ; $6e38: $ff
	rst  $38                                         ; $6e39: $ff
	db   $f4                                         ; $6e3a: $f4
	ld   de, $ae35                                   ; $6e3b: $11 $35 $ae
	rst  $38                                         ; $6e3e: $ff
	db   $fc                                         ; $6e3f: $fc
	ld   de, $1111                                   ; $6e40: $11 $11 $11
	ld   de, $ff19                                   ; $6e43: $11 $19 $ff
	rst  $38                                         ; $6e46: $ff
	and  [hl]                                        ; $6e47: $a6
	ld   sp, $1f11                                   ; $6e48: $31 $11 $1f
	rst  $38                                         ; $6e4b: $ff
	rst  $38                                         ; $6e4c: $ff
	rst  $38                                         ; $6e4d: $ff
	add  c                                           ; $6e4e: $81
	ld   de, $ff6d                                   ; $6e4f: $11 $6d $ff
	rst  $38                                         ; $6e52: $ff
	pop  af                                          ; $6e53: $f1
	ld   de, $2115                                   ; $6e54: $11 $15 $21
	ld   de, rAUD1HIGH                                   ; $6e57: $11 $14 $ff
	rst  $38                                         ; $6e5a: $ff
	push bc                                          ; $6e5b: $c5
	ld   de, $1f11                                   ; $6e5c: $11 $11 $1f
	rst  $38                                         ; $6e5f: $ff
	cp   $ba                                         ; $6e60: $fe $ba
	and  d                                           ; $6e62: $a2
	ld   de, $ff9f                                   ; $6e63: $11 $9f $ff
	rst  $38                                         ; $6e66: $ff
	sub  c                                           ; $6e67: $91
	ld   de, $3136                                   ; $6e68: $11 $36 $31
	ld   de, rAUD1LEN                                   ; $6e6b: $11 $11 $ff
	rst  $38                                         ; $6e6e: $ff
	and  d                                           ; $6e6f: $a2
	ld   de, $1b11                                   ; $6e70: $11 $11 $1b
	rst  $38                                         ; $6e73: $ff
	cp   $ba                                         ; $6e74: $fe $ba
	ret  z                                           ; $6e76: $c8

	ld   de, $ff5f                                   ; $6e77: $11 $5f $ff
	rst  $38                                         ; $6e7a: $ff
	and  d                                           ; $6e7b: $a2
	ld   de, $5116                                   ; $6e7c: $11 $16 $51
	ld   de, rAUD1LEN                                   ; $6e7f: $11 $11 $ff
	rst  $38                                         ; $6e82: $ff
	sub  h                                           ; $6e83: $94
	ld   de, $1411                                   ; $6e84: $11 $11 $14
	rst  $38                                         ; $6e87: $ff
	rst  $38                                         ; $6e88: $ff
	cp   h                                           ; $6e89: $bc
	db   $eb                                         ; $6e8a: $eb
	ld   de, $ff2e                                   ; $6e8b: $11 $2e $ff
	rst  $38                                         ; $6e8e: $ff
	push bc                                          ; $6e8f: $c5
	ld   de, $7116                                   ; $6e90: $11 $16 $71
	ld   de, $6f11                                   ; $6e93: $11 $11 $6f
	rst  $38                                         ; $6e96: $ff
	cp   c                                           ; $6e97: $b9
	ld   [hl+], a                                    ; $6e98: $22
	ld   de, rAUD1LEN                                   ; $6e99: $11 $11 $ff
	rst  $38                                         ; $6e9c: $ff
	call c, $21cf                                    ; $6e9d: $dc $cf $21
	dec  de                                          ; $6ea0: $1b
	rst  $38                                         ; $6ea1: $ff
	rst  $38                                         ; $6ea2: $ff
	ret  z                                           ; $6ea3: $c8

	ld   de, $4114                                   ; $6ea4: $11 $14 $41
	ld   de, $6f11                                   ; $6ea7: $11 $11 $6f
	rst  $38                                         ; $6eaa: $ff
	db   $ed                                         ; $6eab: $ed
	ld   d, d                                        ; $6eac: $52
	ld   de, rAUD1LEN                                   ; $6ead: $11 $11 $ff
	rst  $38                                         ; $6eb0: $ff
	db   $ed                                         ; $6eb1: $ed
	rst  $38                                         ; $6eb2: $ff
	ld   hl, $ff1a                                   ; $6eb3: $21 $1a $ff
	rst  $38                                         ; $6eb6: $ff
	db   $db                                         ; $6eb7: $db
	ld   b, c                                        ; $6eb8: $41
	ld   [de], a                                     ; $6eb9: $12
	ld   b, c                                        ; $6eba: $41
	ld   de, $1f11                                   ; $6ebb: $11 $11 $1f
	rst  $38                                         ; $6ebe: $ff
	xor  l                                           ; $6ebf: $ad
	ld   [hl], l                                     ; $6ec0: $75
	ld   de, rAUD1LEN                                   ; $6ec1: $11 $11 $ff
	db   $fd                                         ; $6ec4: $fd
	rst  $38                                         ; $6ec5: $ff
	rst  $38                                         ; $6ec6: $ff
	ld   de, $fe1e                                   ; $6ec7: $11 $1e $fe
	db   $fd                                         ; $6eca: $fd
	rst  $28                                         ; $6ecb: $ef
	ld   [hl], c                                     ; $6ecc: $71
	inc  d                                           ; $6ecd: $14
	ld   [hl], d                                     ; $6ece: $72
	ld   de, $1f11                                   ; $6ecf: $11 $11 $1f
	rst  $38                                         ; $6ed2: $ff
	rst  JumpTable                                         ; $6ed3: $df
	and  l                                           ; $6ed4: $a5
	ld   de, rAUD1LEN                                   ; $6ed5: $11 $11 $ff
	db   $fc                                         ; $6ed8: $fc
	rst  $38                                         ; $6ed9: $ff
	rst  $38                                         ; $6eda: $ff
	ld   de, $e94f                                   ; $6edb: $11 $4f $e9
	db   $db                                         ; $6ede: $db
	rst  $38                                         ; $6edf: $ff
	ld   [hl], c                                     ; $6ee0: $71
	ld   [de], a                                     ; $6ee1: $12
	ld   b, d                                        ; $6ee2: $42
	ld   de, $1f11                                   ; $6ee3: $11 $11 $1f
	rst  $38                                         ; $6ee6: $ff
	rst  JumpTable                                         ; $6ee7: $df
	add  a                                           ; $6ee8: $87
	ld   de, rAUD1LEN                                   ; $6ee9: $11 $11 $ff
	db   $fd                                         ; $6eec: $fd
	ld   a, [$11ff]                                  ; $6eed: $fa $ff $11
	ld   l, a                                        ; $6ef0: $6f
	db   $fd                                         ; $6ef1: $fd
	rst  ToBoot                                         ; $6ef2: $c7
	rst  $38                                         ; $6ef3: $ff
	ld   [hl], c                                     ; $6ef4: $71
	dec  d                                           ; $6ef5: $15
	ld   h, e                                        ; $6ef6: $63
	ld   de, $1611                                   ; $6ef7: $11 $11 $16
	rst  $38                                         ; $6efa: $ff
	cp   a                                           ; $6efb: $bf
	or   l                                           ; $6efc: $b5
	ld   de, rAUD1LEN                                   ; $6efd: $11 $11 $ff
	rst  $38                                         ; $6f00: $ff
	ld   a, [$64af]                                  ; $6f01: $fa $af $64
	ld   a, a                                        ; $6f04: $7f
	db   $fd                                         ; $6f05: $fd
	or   [hl]                                        ; $6f06: $b6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f07: $cf
	push bc                                          ; $6f08: $c5
	inc  d                                           ; $6f09: $14
	ld   h, e                                        ; $6f0a: $63
	ld   de, $1111                                   ; $6f0b: $11 $11 $11
	rst  $38                                         ; $6f0e: $ff
	rst  $38                                         ; $6f0f: $ff
	rst  $30                                         ; $6f10: $f7
	ld   h, h                                        ; $6f11: $64
	ld   de, $ff6f                                   ; $6f12: $11 $6f $ff
	ei                                               ; $6f15: $fb
	ld   l, a                                        ; $6f16: $6f
	rst  ToBoot                                         ; $6f17: $c7
	sbc  [hl]                                        ; $6f18: $9e
	rst  $38                                         ; $6f19: $ff
	ret  c                                           ; $6f1a: $d8

	sbc  l                                           ; $6f1b: $9d
	or   a                                           ; $6f1c: $b7
	inc  d                                           ; $6f1d: $14
	ld   h, h                                        ; $6f1e: $64
	ld   de, $1111                                   ; $6f1f: $11 $11 $11
	xor  a                                           ; $6f22: $af
	rst  $38                                         ; $6f23: $ff
	cp   $b6                                         ; $6f24: $fe $b6
	ld   de, $ff1d                                   ; $6f26: $11 $1d $ff
	cp   $7b                                         ; $6f29: $fe $7b
	ld   [$ff9e], a                                  ; $6f2b: $ea $9e $ff
	reti                                             ; $6f2e: $d9


	adc  e                                           ; $6f2f: $8b
	ret                                              ; $6f30: $c9


	inc  [hl]                                        ; $6f31: $34
	ld   h, l                                        ; $6f32: $65
	ld   hl, $1111                                   ; $6f33: $21 $11 $11
	rra                                              ; $6f36: $1f
	rst  $38                                         ; $6f37: $ff
	rst  $38                                         ; $6f38: $ff
	ei                                               ; $6f39: $fb
	sub  c                                           ; $6f3a: $91
	ld   a, [de]                                     ; $6f3b: $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f3c: $cf
	rst  $38                                         ; $6f3d: $ff
	sbc  e                                           ; $6f3e: $9b
	ret  z                                           ; $6f3f: $c8

	xor  d                                           ; $6f40: $aa
	rst  $38                                         ; $6f41: $ff
	db   $fc                                         ; $6f42: $fc
	adc  h                                           ; $6f43: $8c
	cp   d                                           ; $6f44: $ba
	ld   b, e                                        ; $6f45: $43
	ld   d, [hl]                                     ; $6f46: $56
	ld   b, c                                        ; $6f47: $41
	ld   de, $1311                                   ; $6f48: $11 $11 $13
	rst  $38                                         ; $6f4b: $ff
	rst  $38                                         ; $6f4c: $ff
	rst  $38                                         ; $6f4d: $ff
	sub  $15                                         ; $6f4e: $d6 $15
	xor  e                                           ; $6f50: $ab
	rst  $38                                         ; $6f51: $ff
	db   $eb                                         ; $6f52: $eb
	cp   c                                           ; $6f53: $b9
	sbc  d                                           ; $6f54: $9a
	cp   a                                           ; $6f55: $bf
	sbc  $dc                                         ; $6f56: $de $dc
	bit  4, e                                        ; $6f58: $cb $63
	ld   b, h                                        ; $6f5a: $44
	ld   b, d                                        ; $6f5b: $42
	ld   de, $1111                                   ; $6f5c: $11 $11 $11
	cp   [hl]                                        ; $6f5f: $be
	cp   a                                           ; $6f60: $bf
	rst  $38                                         ; $6f61: $ff
	db   $fc                                         ; $6f62: $fc
	ld   h, e                                        ; $6f63: $63
	sbc  d                                           ; $6f64: $9a
	cp   a                                           ; $6f65: $bf
	cp   $ca                                         ; $6f66: $fe $ca
	sbc  b                                           ; $6f68: $98
	xor  e                                           ; $6f69: $ab
	set  3, [hl]                                     ; $6f6a: $cb $de
	call c, Call_0a6_5596                            ; $6f6c: $dc $96 $55
	ld   b, d                                        ; $6f6f: $42
	ld   hl, $1111                                   ; $6f70: $21 $11 $11
	dec  de                                          ; $6f73: $1b
	xor  b                                           ; $6f74: $a8
	rst  $38                                         ; $6f75: $ff
	rst  $38                                         ; $6f76: $ff
	rst  $10                                         ; $6f77: $d7
	ld   a, h                                        ; $6f78: $7c
	xor  h                                           ; $6f79: $ac
	rst  $28                                         ; $6f7a: $ef
	db   $eb                                         ; $6f7b: $eb
	cp   c                                           ; $6f7c: $b9
	adc  b                                           ; $6f7d: $88
	xor  d                                           ; $6f7e: $aa
	cp   h                                           ; $6f7f: $bc
	db   $ed                                         ; $6f80: $ed
	jp   z, $5376                                    ; $6f81: $ca $76 $53

	ld   de, $1111                                   ; $6f84: $11 $11 $11
	ld   de, $8eb9                                   ; $6f87: $11 $b9 $8e
	rst  $38                                         ; $6f8a: $ff
	cp   $89                                         ; $6f8b: $fe $89
	db   $eb                                         ; $6f8d: $eb
	rst  JumpTable                                         ; $6f8e: $df
	cp   $b9                                         ; $6f8f: $fe $b9
	add  a                                           ; $6f91: $87
	adc  b                                           ; $6f92: $88
	xor  e                                           ; $6f93: $ab
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f94: $cf
	db   $dd                                         ; $6f95: $dd
	xor  b                                           ; $6f96: $a8
	ld   h, h                                        ; $6f97: $64
	ld   sp, $1111                                   ; $6f98: $31 $11 $11
	ld   de, $6719                                   ; $6f9b: $11 $19 $67
	call $daff                                       ; $6f9e: $cd $ff $da
	adc  $df                                         ; $6fa1: $ce $df
	xor  $ed                                         ; $6fa3: $ee $ed
	sbc  b                                           ; $6fa5: $98
	ld   [hl], a                                     ; $6fa6: $77
	adc  c                                           ; $6fa7: $89
	cp   e                                           ; $6fa8: $bb
	xor  $ca                                         ; $6fa9: $ee $ca
	add  a                                           ; $6fab: $87
	ld   d, e                                        ; $6fac: $53
	ld   de, $1111                                   ; $6fad: $11 $11 $11
	ld   de, $5a43                                   ; $6fb0: $11 $43 $5a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fb3: $cf
	cp   $ce                                         ; $6fb4: $fe $ce
	rst  $38                                         ; $6fb6: $ff
	rst  $38                                         ; $6fb7: $ff
	db   $ed                                         ; $6fb8: $ed
	ret                                              ; $6fb9: $c9


	ld   [hl], a                                     ; $6fba: $77
	ld   [hl], a                                     ; $6fbb: $77
	sbc  c                                           ; $6fbc: $99
	sbc  h                                           ; $6fbd: $9c
	db   $dd                                         ; $6fbe: $dd
	cp   c                                           ; $6fbf: $b9
	halt                                             ; $6fc0: $76
	ld   d, d                                        ; $6fc1: $52
	ld   de, $1111                                   ; $6fc2: $11 $11 $11
	ld   de, $7934                                   ; $6fc5: $11 $34 $79
	sbc  $fd                                         ; $6fc8: $de $fd
	rst  JumpTable                                         ; $6fca: $df
	rst  $38                                         ; $6fcb: $ff
	rst  $38                                         ; $6fcc: $ff
	xor  $b9                                         ; $6fcd: $ee $b9
	halt                                             ; $6fcf: $76
	ld   h, a                                        ; $6fd0: $67
	adc  b                                           ; $6fd1: $88
	xor  d                                           ; $6fd2: $aa
	cp   e                                           ; $6fd3: $bb
	sub  a                                           ; $6fd4: $97
	ld   h, [hl]                                     ; $6fd5: $66
	ld   b, e                                        ; $6fd6: $43
	ld   [hl+], a                                    ; $6fd7: $22
	ld   de, $1211                                   ; $6fd8: $11 $11 $12
	dec  h                                           ; $6fdb: $25
	ld   l, c                                        ; $6fdc: $69
	cp   h                                           ; $6fdd: $bc
	xor  $ff                                         ; $6fde: $ee $ff
	rst  $38                                         ; $6fe0: $ff
	rst  $38                                         ; $6fe1: $ff
	db   $ec                                         ; $6fe2: $ec
	cp   c                                           ; $6fe3: $b9
	ld   [hl], a                                     ; $6fe4: $77
	ld   h, a                                        ; $6fe5: $67
	ld   a, c                                        ; $6fe6: $79
	sbc  c                                           ; $6fe7: $99
	xor  c                                           ; $6fe8: $a9
	add  a                                           ; $6fe9: $87
	ld   h, [hl]                                     ; $6fea: $66
	ld   d, h                                        ; $6feb: $54
	ld   b, e                                        ; $6fec: $43
	ld   hl, $2211                                   ; $6fed: $21 $11 $22
	inc  sp                                          ; $6ff0: $33
	ld   b, [hl]                                     ; $6ff1: $46
	adc  d                                           ; $6ff2: $8a
	call $ffef                                       ; $6ff3: $cd $ef $ff
	rst  $38                                         ; $6ff6: $ff
	db   $ed                                         ; $6ff7: $ed
	cp   d                                           ; $6ff8: $ba
	xor  c                                           ; $6ff9: $a9
	adc  c                                           ; $6ffa: $89
	xor  c                                           ; $6ffb: $a9
	sbc  b                                           ; $6ffc: $98
	adc  b                                           ; $6ffd: $88
	ld   [hl], a                                     ; $6ffe: $77
	ld   h, [hl]                                     ; $6fff: $66
	ld   h, [hl]                                     ; $7000: $66
	ld   h, l                                        ; $7001: $65
	ld   b, e                                        ; $7002: $43
	ld   hl, $3322                                   ; $7003: $21 $22 $33
	inc  sp                                          ; $7006: $33
	ld   b, l                                        ; $7007: $45
	ld   a, b                                        ; $7008: $78
	sbc  d                                           ; $7009: $9a
	cp   l                                           ; $700a: $bd
	rst  $28                                         ; $700b: $ef
	cp   $ef                                         ; $700c: $fe $ef
	rst  $38                                         ; $700e: $ff
	xor  $cb                                         ; $700f: $ee $cb
	xor  c                                           ; $7011: $a9
	sub  a                                           ; $7012: $97
	halt                                             ; $7013: $76
	ld   h, l                                        ; $7014: $65
	ld   d, l                                        ; $7015: $55
	ld   b, h                                        ; $7016: $44
	inc  sp                                          ; $7017: $33
	ld   [hl-], a                                    ; $7018: $32
	ld   [hl+], a                                    ; $7019: $22
	ld   [hl-], a                                    ; $701a: $32
	ld   [hl+], a                                    ; $701b: $22
	inc  sp                                          ; $701c: $33
	ld   b, [hl]                                     ; $701d: $46
	ld   a, b                                        ; $701e: $78
	sbc  h                                           ; $701f: $9c
	rst  JumpTable                                         ; $7020: $df
	rst  $38                                         ; $7021: $ff
	rst  $38                                         ; $7022: $ff
	rst  $38                                         ; $7023: $ff
	cp   $ec                                         ; $7024: $fe $ec
	cp   d                                           ; $7026: $ba
	sbc  b                                           ; $7027: $98
	ld   [hl], a                                     ; $7028: $77
	ld   h, [hl]                                     ; $7029: $66
	ld   d, h                                        ; $702a: $54
	ld   b, h                                        ; $702b: $44
	ld   b, e                                        ; $702c: $43
	inc  sp                                          ; $702d: $33
	ld   [hl+], a                                    ; $702e: $22
	inc  hl                                          ; $702f: $23
	ld   [hl-], a                                    ; $7030: $32
	inc  hl                                          ; $7031: $23
	inc  [hl]                                        ; $7032: $34
	ld   d, a                                        ; $7033: $57
	sbc  c                                           ; $7034: $99
	cp   l                                           ; $7035: $bd
	rst  $28                                         ; $7036: $ef
	rst  $38                                         ; $7037: $ff
	rst  $38                                         ; $7038: $ff
	rst  $38                                         ; $7039: $ff
	xor  $cc                                         ; $703a: $ee $cc
	cp   c                                           ; $703c: $b9
	sbc  c                                           ; $703d: $99
	halt                                             ; $703e: $76
	ld   d, l                                        ; $703f: $55
	ld   b, h                                        ; $7040: $44
	ld   b, e                                        ; $7041: $43
	inc  sp                                          ; $7042: $33
	inc  sp                                          ; $7043: $33
	ld   [hl+], a                                    ; $7044: $22
	inc  sp                                          ; $7045: $33
	ld   [hl-], a                                    ; $7046: $32
	inc  hl                                          ; $7047: $23
	inc  [hl]                                        ; $7048: $34
	ld   h, a                                        ; $7049: $67
	adc  d                                           ; $704a: $8a
	call $ffff                                       ; $704b: $cd $ff $ff
	rst  $38                                         ; $704e: $ff
	rst  $38                                         ; $704f: $ff
	db   $fd                                         ; $7050: $fd
	call z, $88ba                                    ; $7051: $cc $ba $88
	halt                                             ; $7054: $76
	ld   d, h                                        ; $7055: $54
	ld   b, h                                        ; $7056: $44
	ld   b, h                                        ; $7057: $44
	ld   b, h                                        ; $7058: $44
	inc  sp                                          ; $7059: $33
	ld   [hl+], a                                    ; $705a: $22
	inc  sp                                          ; $705b: $33
	ld   [hl+], a                                    ; $705c: $22
	inc  sp                                          ; $705d: $33
	ld   b, h                                        ; $705e: $44
	ld   h, a                                        ; $705f: $67
	sbc  d                                           ; $7060: $9a
	call $ffee                                       ; $7061: $cd $ee $ff
	rst  $38                                         ; $7064: $ff
	rst  $38                                         ; $7065: $ff
	db   $ed                                         ; $7066: $ed
	db   $db                                         ; $7067: $db
	xor  c                                           ; $7068: $a9
	sub  a                                           ; $7069: $97
	halt                                             ; $706a: $76
	ld   d, l                                        ; $706b: $55
	ld   d, h                                        ; $706c: $54
	ld   b, h                                        ; $706d: $44
	ld   b, h                                        ; $706e: $44
	inc  sp                                          ; $706f: $33
	ld   [hl+], a                                    ; $7070: $22
	inc  sp                                          ; $7071: $33
	inc  sp                                          ; $7072: $33
	inc  sp                                          ; $7073: $33
	ld   b, l                                        ; $7074: $45
	ld   h, a                                        ; $7075: $67
	sbc  c                                           ; $7076: $99
	cp   h                                           ; $7077: $bc
	sbc  $ff                                         ; $7078: $de $ff
	rst  $38                                         ; $707a: $ff
	rst  $38                                         ; $707b: $ff
	db   $ed                                         ; $707c: $ed
	jp   z, $9799                                    ; $707d: $ca $99 $97

	halt                                             ; $7080: $76
	ld   h, l                                        ; $7081: $65
	ld   d, h                                        ; $7082: $54
	ld   b, h                                        ; $7083: $44
	ld   b, h                                        ; $7084: $44
	inc  sp                                          ; $7085: $33
	ld   [hl-], a                                    ; $7086: $32
	inc  sp                                          ; $7087: $33
	inc  sp                                          ; $7088: $33
	inc  sp                                          ; $7089: $33
	ld   b, h                                        ; $708a: $44
	ld   h, a                                        ; $708b: $67
	adc  c                                           ; $708c: $89
	call $ffef                                       ; $708d: $cd $ef $ff
	rst  $38                                         ; $7090: $ff
	cp   $ed                                         ; $7091: $fe $ed
	res  5, c                                        ; $7093: $cb $a9
	adc  b                                           ; $7095: $88
	halt                                             ; $7096: $76
	ld   h, l                                        ; $7097: $65
	ld   b, h                                        ; $7098: $44
	ld   b, h                                        ; $7099: $44
	ld   b, h                                        ; $709a: $44
	ld   b, e                                        ; $709b: $43
	inc  sp                                          ; $709c: $33
	inc  sp                                          ; $709d: $33
	ld   [hl-], a                                    ; $709e: $32
	inc  sp                                          ; $709f: $33
	inc  [hl]                                        ; $70a0: $34
	ld   h, a                                        ; $70a1: $67
	sbc  d                                           ; $70a2: $9a
	call z, $ffef                                    ; $70a3: $cc $ef $ff
	rst  $38                                         ; $70a6: $ff
	rst  $38                                         ; $70a7: $ff
	db   $ed                                         ; $70a8: $ed
	res  5, c                                        ; $70a9: $cb $a9
	sbc  b                                           ; $70ab: $98
	halt                                             ; $70ac: $76
	ld   h, l                                        ; $70ad: $65
	ld   d, h                                        ; $70ae: $54
	ld   b, h                                        ; $70af: $44
	ld   b, h                                        ; $70b0: $44
	inc  sp                                          ; $70b1: $33
	ld   [hl-], a                                    ; $70b2: $32
	inc  sp                                          ; $70b3: $33
	ld   [hl+], a                                    ; $70b4: $22
	inc  sp                                          ; $70b5: $33
	ld   b, l                                        ; $70b6: $45
	ld   h, a                                        ; $70b7: $67
	adc  d                                           ; $70b8: $8a
	call z, $ffdf                                    ; $70b9: $cc $df $ff
	rst  $38                                         ; $70bc: $ff
	cp   $ee                                         ; $70bd: $fe $ee
	call z, $88b9                                    ; $70bf: $cc $b9 $88
	halt                                             ; $70c2: $76
	ld   h, l                                        ; $70c3: $65
	ld   d, h                                        ; $70c4: $54
	ld   b, h                                        ; $70c5: $44
	ld   b, e                                        ; $70c6: $43
	inc  sp                                          ; $70c7: $33
	ld   [hl+], a                                    ; $70c8: $22
	inc  sp                                          ; $70c9: $33
	inc  hl                                          ; $70ca: $23
	inc  sp                                          ; $70cb: $33
	ld   b, l                                        ; $70cc: $45
	ld   h, a                                        ; $70cd: $67
	adc  d                                           ; $70ce: $8a
	call z, $ffdf                                    ; $70cf: $cc $df $ff
	rst  $38                                         ; $70d2: $ff
	cp   $ed                                         ; $70d3: $fe $ed
	res  7, c                                        ; $70d5: $cb $b9
	sbc  b                                           ; $70d7: $98
	halt                                             ; $70d8: $76
	ld   h, l                                        ; $70d9: $65
	ld   d, h                                        ; $70da: $54
	ld   b, h                                        ; $70db: $44
	inc  sp                                          ; $70dc: $33
	ld   [hl-], a                                    ; $70dd: $32
	ld   [hl+], a                                    ; $70de: $22
	inc  sp                                          ; $70df: $33
	inc  hl                                          ; $70e0: $23
	inc  [hl]                                        ; $70e1: $34
	ld   b, l                                        ; $70e2: $45
	ld   a, b                                        ; $70e3: $78
	sbc  e                                           ; $70e4: $9b
	adc  $ff                                         ; $70e5: $ce $ff
	rst  $38                                         ; $70e7: $ff
	rst  $38                                         ; $70e8: $ff
	xor  $ed                                         ; $70e9: $ee $ed
	cp   e                                           ; $70eb: $bb
	xor  c                                           ; $70ec: $a9
	adc  b                                           ; $70ed: $88
	halt                                             ; $70ee: $76
	ld   d, l                                        ; $70ef: $55
	ld   b, h                                        ; $70f0: $44
	ld   b, e                                        ; $70f1: $43
	inc  sp                                          ; $70f2: $33
	ld   [hl+], a                                    ; $70f3: $22
	ld   [hl+], a                                    ; $70f4: $22
	ld   [hl+], a                                    ; $70f5: $22
	inc  sp                                          ; $70f6: $33
	inc  [hl]                                        ; $70f7: $34
	ld   d, a                                        ; $70f8: $57
	sbc  c                                           ; $70f9: $99
	cp   h                                           ; $70fa: $bc
	xor  $ff                                         ; $70fb: $ee $ff
	rst  $38                                         ; $70fd: $ff
	rst  $38                                         ; $70fe: $ff
	db   $ed                                         ; $70ff: $ed
	call z, $98ba                                    ; $7100: $cc $ba $98
	add  a                                           ; $7103: $87
	ld   h, l                                        ; $7104: $65
	ld   d, h                                        ; $7105: $54
	ld   b, h                                        ; $7106: $44
	inc  sp                                          ; $7107: $33
	ld   [hl+], a                                    ; $7108: $22
	ld   [de], a                                     ; $7109: $12
	ld   [hl+], a                                    ; $710a: $22
	ld   [hl+], a                                    ; $710b: $22
	inc  [hl]                                        ; $710c: $34
	ld   d, [hl]                                     ; $710d: $56
	adc  c                                           ; $710e: $89
	cp   l                                           ; $710f: $bd
	rst  $28                                         ; $7110: $ef
	rst  $38                                         ; $7111: $ff
	rst  $38                                         ; $7112: $ff
	rst  $38                                         ; $7113: $ff
	db   $fd                                         ; $7114: $fd
	res  5, c                                        ; $7115: $cb $a9
	sbc  b                                           ; $7117: $98
	halt                                             ; $7118: $76
	ld   h, l                                        ; $7119: $65
	ld   d, h                                        ; $711a: $54
	ld   b, h                                        ; $711b: $44
	inc  sp                                          ; $711c: $33
	ld   [hl-], a                                    ; $711d: $32
	ld   de, $2321                                   ; $711e: $11 $21 $23
	inc  sp                                          ; $7121: $33
	ld   b, [hl]                                     ; $7122: $46
	adc  c                                           ; $7123: $89
	cp   l                                           ; $7124: $bd
	rst  $28                                         ; $7125: $ef
	rst  $38                                         ; $7126: $ff
	rst  $38                                         ; $7127: $ff
	rst  $38                                         ; $7128: $ff
	db   $ed                                         ; $7129: $ed
	db   $db                                         ; $712a: $db
	cp   c                                           ; $712b: $b9
	sub  a                                           ; $712c: $97
	ld   [hl], a                                     ; $712d: $77
	ld   h, l                                        ; $712e: $65
	ld   d, h                                        ; $712f: $54
	ld   b, e                                        ; $7130: $43
	inc  sp                                          ; $7131: $33
	ld   hl, $1111                                   ; $7132: $21 $11 $11
	inc  de                                          ; $7135: $13
	inc  [hl]                                        ; $7136: $34
	ld   d, a                                        ; $7137: $57
	sbc  e                                           ; $7138: $9b
	call $ffff                                       ; $7139: $cd $ff $ff
	rst  $38                                         ; $713c: $ff
	rst  $38                                         ; $713d: $ff
	xor  $cb                                         ; $713e: $ee $cb
	sbc  b                                           ; $7140: $98
	ld   [hl], a                                     ; $7141: $77
	ld   h, [hl]                                     ; $7142: $66
	ld   d, h                                        ; $7143: $54
	ld   b, e                                        ; $7144: $43
	ld   [hl+], a                                    ; $7145: $22
	ld   hl, $1111                                   ; $7146: $21 $11 $11
	ld   [de], a                                     ; $7149: $12
	ld   [hl-], a                                    ; $714a: $32
	ld   b, [hl]                                     ; $714b: $46
	ld   a, c                                        ; $714c: $79
	cp   h                                           ; $714d: $bc
	rst  $28                                         ; $714e: $ef
	rst  $38                                         ; $714f: $ff
	rst  $38                                         ; $7150: $ff
	rst  $38                                         ; $7151: $ff
	cp   $dc                                         ; $7152: $fe $dc
	xor  d                                           ; $7154: $aa
	add  a                                           ; $7155: $87
	ld   h, [hl]                                     ; $7156: $66
	ld   d, h                                        ; $7157: $54
	inc  sp                                          ; $7158: $33
	ld   [hl+], a                                    ; $7159: $22
	ld   de, $0111                                   ; $715a: $11 $11 $01
	ld   [de], a                                     ; $715d: $12
	inc  hl                                          ; $715e: $23
	ld   d, [hl]                                     ; $715f: $56
	adc  c                                           ; $7160: $89
	call $ffff                                       ; $7161: $cd $ff $ff
	rst  $38                                         ; $7164: $ff
	rst  $38                                         ; $7165: $ff
	rst  $38                                         ; $7166: $ff
	db   $db                                         ; $7167: $db
	xor  c                                           ; $7168: $a9
	ld   [hl], a                                     ; $7169: $77
	ld   h, l                                        ; $716a: $65
	ld   b, h                                        ; $716b: $44
	ld   [hl-], a                                    ; $716c: $32
	ld   hl, $1111                                   ; $716d: $21 $11 $11
	ld   de, $2421                                   ; $7170: $11 $21 $24
	ld   d, a                                        ; $7173: $57
	sbc  d                                           ; $7174: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7175: $cf
	rst  $38                                         ; $7176: $ff
	rst  $38                                         ; $7177: $ff
	rst  $38                                         ; $7178: $ff
	rst  $38                                         ; $7179: $ff
	db   $ed                                         ; $717a: $ed
	cp   d                                           ; $717b: $ba
	xor  b                                           ; $717c: $a8
	ld   [hl], a                                     ; $717d: $77
	ld   h, l                                        ; $717e: $65
	ld   b, h                                        ; $717f: $44
	ld   [hl-], a                                    ; $7180: $32
	ld   hl, $0111                                   ; $7181: $21 $11 $01
	ld   [de], a                                     ; $7184: $12
	inc  de                                          ; $7185: $13
	ld   b, l                                        ; $7186: $45
	ld   a, b                                        ; $7187: $78
	cp   l                                           ; $7188: $bd
	rst  $28                                         ; $7189: $ef
	rst  $38                                         ; $718a: $ff
	rst  $38                                         ; $718b: $ff
	rst  $38                                         ; $718c: $ff
	cp   $cb                                         ; $718d: $fe $cb
	xor  c                                           ; $718f: $a9
	add  a                                           ; $7190: $87
	ld   [hl], l                                     ; $7191: $75
	ld   d, h                                        ; $7192: $54
	ld   [hl-], a                                    ; $7193: $32
	ld   hl, $1111                                   ; $7194: $21 $11 $11
	inc  de                                          ; $7197: $13
	ld   [de], a                                     ; $7198: $12
	ld   b, l                                        ; $7199: $45
	ld   l, b                                        ; $719a: $68
	sbc  h                                           ; $719b: $9c
	sbc  $ff                                         ; $719c: $de $ff
	rst  $38                                         ; $719e: $ff
	rst  $38                                         ; $719f: $ff
	db   $fd                                         ; $71a0: $fd
	db   $db                                         ; $71a1: $db
	xor  c                                           ; $71a2: $a9
	adc  b                                           ; $71a3: $88
	ld   [hl], l                                     ; $71a4: $75
	ld   d, h                                        ; $71a5: $54
	ld   [hl-], a                                    ; $71a6: $32
	ld   hl, $1112                                   ; $71a7: $21 $12 $11
	ld   [hl-], a                                    ; $71aa: $32
	inc  d                                           ; $71ab: $14
	ld   d, l                                        ; $71ac: $55
	adc  c                                           ; $71ad: $89
	cp   h                                           ; $71ae: $bc
	rst  JumpTable                                         ; $71af: $df
	rst  $38                                         ; $71b0: $ff
	rst  $38                                         ; $71b1: $ff
	cp   $ed                                         ; $71b2: $fe $ed
	cp   d                                           ; $71b4: $ba
	sbc  b                                           ; $71b5: $98
	add  [hl]                                        ; $71b6: $86
	ld   d, l                                        ; $71b7: $55
	ld   b, e                                        ; $71b8: $43
	ld   [hl+], a                                    ; $71b9: $22
	ld   de, $1421                                   ; $71ba: $11 $21 $14
	ld   [de], a                                     ; $71bd: $12
	ld   d, l                                        ; $71be: $55
	ld   l, b                                        ; $71bf: $68
	sbc  e                                           ; $71c0: $9b
	adc  $ff                                         ; $71c1: $ce $ff
	rst  $38                                         ; $71c3: $ff
	rst  $38                                         ; $71c4: $ff
	db   $ec                                         ; $71c5: $ec
	cp   e                                           ; $71c6: $bb
	xor  b                                           ; $71c7: $a8
	ld   [hl], a                                     ; $71c8: $77
	ld   d, l                                        ; $71c9: $55
	ld   d, h                                        ; $71ca: $54
	ld   [hl-], a                                    ; $71cb: $32
	ld   [de], a                                     ; $71cc: $12
	ld   hl, $3314                                   ; $71cd: $21 $14 $33
	ld   h, l                                        ; $71d0: $65
	ld   a, b                                        ; $71d1: $78
	sbc  e                                           ; $71d2: $9b
	db   $dd                                         ; $71d3: $dd
	rst  $38                                         ; $71d4: $ff
	rst  $38                                         ; $71d5: $ff
	cp   $ec                                         ; $71d6: $fe $ec
	xor  d                                           ; $71d8: $aa
	sbc  b                                           ; $71d9: $98
	ld   h, [hl]                                     ; $71da: $66
	ld   d, l                                        ; $71db: $55
	ld   b, e                                        ; $71dc: $43
	ld   [hl+], a                                    ; $71dd: $22
	ld   de, $3531                                   ; $71de: $11 $31 $35
	dec  h                                           ; $71e1: $25
	halt                                             ; $71e2: $76
	adc  d                                           ; $71e3: $8a
	cp   l                                           ; $71e4: $bd
	sbc  $ff                                         ; $71e5: $de $ff
	rst  $38                                         ; $71e7: $ff
	db   $fd                                         ; $71e8: $fd
	call c, $87a9                                    ; $71e9: $dc $a9 $87
	ld   d, l                                        ; $71ec: $55
	ld   b, h                                        ; $71ed: $44
	ld   [hl-], a                                    ; $71ee: $32
	ld   hl, $1322                                   ; $71ef: $21 $22 $13
	ld   b, e                                        ; $71f2: $43
	ld   b, [hl]                                     ; $71f3: $46
	ld   a, b                                        ; $71f4: $78
	cp   d                                           ; $71f5: $ba
	rst  JumpTable                                         ; $71f6: $df
	rst  $28                                         ; $71f7: $ef
	rst  $38                                         ; $71f8: $ff
	rst  $38                                         ; $71f9: $ff
	call c, $88ca                                    ; $71fa: $dc $ca $88
	ld   h, l                                        ; $71fd: $65
	ld   b, h                                        ; $71fe: $44
	ld   [hl-], a                                    ; $71ff: $32
	ld   hl, $1112                                   ; $7200: $21 $12 $11
	ld   d, e                                        ; $7203: $53
	ld   [hl], $77                                   ; $7204: $36 $77
	xor  h                                           ; $7206: $ac
	adc  $ff                                         ; $7207: $ce $ff
	rst  $38                                         ; $7209: $ff
	rst  $38                                         ; $720a: $ff
	db   $ed                                         ; $720b: $ed
	cp   d                                           ; $720c: $ba
	sbc  c                                           ; $720d: $99
	ld   [hl], l                                     ; $720e: $75
	ld   d, h                                        ; $720f: $54
	ld   [hl-], a                                    ; $7210: $32
	ld   de, $1211                                   ; $7211: $11 $11 $12
	inc  [hl]                                        ; $7214: $34
	ld   b, [hl]                                     ; $7215: $46
	ld   [hl], a                                     ; $7216: $77
	sbc  e                                           ; $7217: $9b
	cp   [hl]                                        ; $7218: $be
	rst  $38                                         ; $7219: $ff
	rst  $38                                         ; $721a: $ff
	rst  $38                                         ; $721b: $ff
	cp   $ca                                         ; $721c: $fe $ca
	xor  c                                           ; $721e: $a9
	ld   [hl], l                                     ; $721f: $75
	ld   d, h                                        ; $7220: $54
	ld   [hl-], a                                    ; $7221: $32
	ld   hl, $2211                                   ; $7222: $21 $11 $22
	inc  [hl]                                        ; $7225: $34
	ld   d, [hl]                                     ; $7226: $56
	ld   a, c                                        ; $7227: $79
	sbc  e                                           ; $7228: $9b
	adc  $ee                                         ; $7229: $ce $ee
	rst  $38                                         ; $722b: $ff
	db   $ed                                         ; $722c: $ed
	db   $ed                                         ; $722d: $ed
	cp   e                                           ; $722e: $bb
	sub  a                                           ; $722f: $97
	ld   h, l                                        ; $7230: $65
	ld   d, h                                        ; $7231: $54
	ld   [hl+], a                                    ; $7232: $22
	ld   hl, $2422                                   ; $7233: $21 $22 $24
	ld   b, h                                        ; $7236: $44
	ld   h, a                                        ; $7237: $67
	ld   a, c                                        ; $7238: $79
	cp   h                                           ; $7239: $bc
	sbc  $ef                                         ; $723a: $de $ef
	rst  $38                                         ; $723c: $ff
	db   $dd                                         ; $723d: $dd
	db   $db                                         ; $723e: $db
	xor  c                                           ; $723f: $a9
	add  a                                           ; $7240: $87
	ld   d, [hl]                                     ; $7241: $56
	ld   b, e                                        ; $7242: $43
	ld   [hl-], a                                    ; $7243: $32
	ld   [hl+], a                                    ; $7244: $22
	inc  hl                                          ; $7245: $23
	dec  [hl]                                        ; $7246: $35
	ld   d, l                                        ; $7247: $55
	ld   a, c                                        ; $7248: $79
	sbc  c                                           ; $7249: $99
	call z, $dedd                                    ; $724a: $cc $dd $de
	db   $ed                                         ; $724d: $ed
	res  7, c                                        ; $724e: $cb $b9
	sbc  b                                           ; $7250: $98
	halt                                             ; $7251: $76
	ld   d, l                                        ; $7252: $55
	ld   [hl-], a                                    ; $7253: $32
	inc  sp                                          ; $7254: $33
	inc  sp                                          ; $7255: $33
	ld   d, l                                        ; $7256: $55
	ld   d, [hl]                                     ; $7257: $56
	ld   a, b                                        ; $7258: $78
	sbc  c                                           ; $7259: $99
	cp   e                                           ; $725a: $bb
	call $ddec                                       ; $725b: $cd $ec $dd
	call z, $98ba                                    ; $725e: $cc $ba $98
	halt                                             ; $7261: $76
	ld   d, l                                        ; $7262: $55
	ld   b, e                                        ; $7263: $43
	ld   b, h                                        ; $7264: $44
	ld   b, h                                        ; $7265: $44
	ld   d, l                                        ; $7266: $55
	ld   h, l                                        ; $7267: $65
	ld   a, c                                        ; $7268: $79
	adc  c                                           ; $7269: $89
	cp   e                                           ; $726a: $bb
	set  1, l                                        ; $726b: $cb $cd
	cp   d                                           ; $726d: $ba
	jp   z, $9899                                    ; $726e: $ca $99 $98

	ld   h, [hl]                                     ; $7271: $66
	ld   d, l                                        ; $7272: $55
	ld   d, h                                        ; $7273: $54
	ld   d, l                                        ; $7274: $55
	ld   b, l                                        ; $7275: $45
	ld   h, [hl]                                     ; $7276: $66
	ld   h, a                                        ; $7277: $67
	adc  b                                           ; $7278: $88
	sbc  d                                           ; $7279: $9a
	xor  e                                           ; $727a: $ab
	xor  h                                           ; $727b: $ac
	cp   d                                           ; $727c: $ba
	cp   e                                           ; $727d: $bb
	sbc  d                                           ; $727e: $9a
	sbc  c                                           ; $727f: $99
	add  a                                           ; $7280: $87
	ld   h, a                                        ; $7281: $67
	ld   d, l                                        ; $7282: $55
	ld   h, [hl]                                     ; $7283: $66
	ld   d, l                                        ; $7284: $55
	ld   d, [hl]                                     ; $7285: $56
	ld   h, a                                        ; $7286: $67
	ld   l, b                                        ; $7287: $68
	sub  a                                           ; $7288: $97
	sbc  c                                           ; $7289: $99
	sbc  d                                           ; $728a: $9a
	xor  d                                           ; $728b: $aa
	xor  d                                           ; $728c: $aa
	sbc  d                                           ; $728d: $9a
	sub  a                                           ; $728e: $97
	and  a                                           ; $728f: $a7
	ld   l, c                                        ; $7290: $69
	halt                                             ; $7291: $76
	ld   [hl], l                                     ; $7292: $75
	ld   e, b                                        ; $7293: $58
	ld   d, [hl]                                     ; $7294: $56
	add  [hl]                                        ; $7295: $86
	add  a                                           ; $7296: $87
	ld   h, a                                        ; $7297: $67
	sbc  b                                           ; $7298: $98
	ld   a, c                                        ; $7299: $79
	sbc  b                                           ; $729a: $98
	sbc  c                                           ; $729b: $99
	sbc  b                                           ; $729c: $98
	xor  c                                           ; $729d: $a9
	sbc  b                                           ; $729e: $98
	sbc  c                                           ; $729f: $99
	sbc  b                                           ; $72a0: $98
	adc  c                                           ; $72a1: $89
	adc  b                                           ; $72a2: $88
	ld   a, b                                        ; $72a3: $78
	ld   l, c                                        ; $72a4: $69
	ld   h, [hl]                                     ; $72a5: $66
	and  l                                           ; $72a6: $a5
	ld   [hl], a                                     ; $72a7: $77
	adc  b                                           ; $72a8: $88
	ld   a, c                                        ; $72a9: $79
	adc  d                                           ; $72aa: $8a
	ld   [hl], a                                     ; $72ab: $77
	sbc  d                                           ; $72ac: $9a
	add  a                                           ; $72ad: $87
	sbc  b                                           ; $72ae: $98
	sub  [hl]                                        ; $72af: $96
	ld   a, c                                        ; $72b0: $79
	add  a                                           ; $72b1: $87
	ld   a, d                                        ; $72b2: $7a
	sub  [hl]                                        ; $72b3: $96
	adc  b                                           ; $72b4: $88
	ld   [hl], a                                     ; $72b5: $77
	ld   l, b                                        ; $72b6: $68
	add  a                                           ; $72b7: $87
	adc  b                                           ; $72b8: $88
	add  a                                           ; $72b9: $87
	ld   l, c                                        ; $72ba: $69
	sbc  b                                           ; $72bb: $98
	adc  b                                           ; $72bc: $88
	and  a                                           ; $72bd: $a7
	sbc  c                                           ; $72be: $99
	adc  c                                           ; $72bf: $89
	adc  d                                           ; $72c0: $8a
	sbc  b                                           ; $72c1: $98
	sbc  b                                           ; $72c2: $98
	sbc  c                                           ; $72c3: $99
	adc  b                                           ; $72c4: $88
	sbc  b                                           ; $72c5: $98
	add  a                                           ; $72c6: $87
	and  a                                           ; $72c7: $a7
	ld   [hl], a                                     ; $72c8: $77
	adc  c                                           ; $72c9: $89
	ld   l, c                                        ; $72ca: $69
	ld   a, d                                        ; $72cb: $7a
	ld   [hl], a                                     ; $72cc: $77
	xor  b                                           ; $72cd: $a8
	adc  b                                           ; $72ce: $88
	and  a                                           ; $72cf: $a7
	sbc  b                                           ; $72d0: $98
	adc  e                                           ; $72d1: $8b
	ld   l, b                                        ; $72d2: $68
	sub  a                                           ; $72d3: $97
	ld   a, b                                        ; $72d4: $78
	ld   [hl], a                                     ; $72d5: $77
	sub  [hl]                                        ; $72d6: $96
	ld   a, c                                        ; $72d7: $79
	add  a                                           ; $72d8: $87
	and  a                                           ; $72d9: $a7
	adc  d                                           ; $72da: $8a
	ld   l, d                                        ; $72db: $6a
	and  a                                           ; $72dc: $a7
	sbc  b                                           ; $72dd: $98
	ld   [hl], a                                     ; $72de: $77
	sub  [hl]                                        ; $72df: $96
	sbc  c                                           ; $72e0: $99
	ld   l, c                                        ; $72e1: $69
	sub  a                                           ; $72e2: $97
	ld   a, c                                        ; $72e3: $79
	ld   [hl], a                                     ; $72e4: $77
	sub  a                                           ; $72e5: $97
	adc  d                                           ; $72e6: $8a
	ld   [hl], a                                     ; $72e7: $77
	and  a                                           ; $72e8: $a7
	adc  c                                           ; $72e9: $89
	ld   a, c                                        ; $72ea: $79
	sub  a                                           ; $72eb: $97
	adc  c                                           ; $72ec: $89
	ld   l, b                                        ; $72ed: $68
	add  a                                           ; $72ee: $87
	sub  a                                           ; $72ef: $97
	ld   a, b                                        ; $72f0: $78
	add  a                                           ; $72f1: $87
	adc  c                                           ; $72f2: $89
	adc  b                                           ; $72f3: $88
	ld   a, b                                        ; $72f4: $78
	and  a                                           ; $72f5: $a7
	adc  c                                           ; $72f6: $89
	ld   [hl], a                                     ; $72f7: $77
	adc  b                                           ; $72f8: $88
	ld   l, c                                        ; $72f9: $69
	ld   l, c                                        ; $72fa: $69
	sub  a                                           ; $72fb: $97
	adc  b                                           ; $72fc: $88
	sub  a                                           ; $72fd: $97
	sub  a                                           ; $72fe: $97
	xor  b                                           ; $72ff: $a8
	ld   a, b                                        ; $7300: $78
	ld   [hl], a                                     ; $7301: $77
	adc  c                                           ; $7302: $89
	ld   a, c                                        ; $7303: $79
	add  a                                           ; $7304: $87
	ld   a, c                                        ; $7305: $79
	ld   a, c                                        ; $7306: $79
	sbc  b                                           ; $7307: $98
	adc  c                                           ; $7308: $89
	add  a                                           ; $7309: $87
	sub  a                                           ; $730a: $97
	adc  b                                           ; $730b: $88
	sbc  b                                           ; $730c: $98
	adc  b                                           ; $730d: $88
	ld   l, c                                        ; $730e: $69
	ld   h, a                                        ; $730f: $67
	sub  [hl]                                        ; $7310: $96
	add  [hl]                                        ; $7311: $86
	adc  b                                           ; $7312: $88
	adc  b                                           ; $7313: $88
	adc  c                                           ; $7314: $89
	adc  c                                           ; $7315: $89
	adc  c                                           ; $7316: $89
	sbc  b                                           ; $7317: $98
	sbc  b                                           ; $7318: $98
	sub  a                                           ; $7319: $97
	adc  b                                           ; $731a: $88
	ld   a, b                                        ; $731b: $78
	ld   a, c                                        ; $731c: $79
	ld   a, b                                        ; $731d: $78
	add  a                                           ; $731e: $87
	ld   [hl], a                                     ; $731f: $77
	halt                                             ; $7320: $76
	sbc  b                                           ; $7321: $98
	adc  b                                           ; $7322: $88
	adc  c                                           ; $7323: $89
	ld   a, c                                        ; $7324: $79
	ld   a, c                                        ; $7325: $79
	adc  c                                           ; $7326: $89
	sbc  c                                           ; $7327: $99
	adc  b                                           ; $7328: $88
	sub  a                                           ; $7329: $97
	adc  c                                           ; $732a: $89
	adc  c                                           ; $732b: $89
	ld   a, c                                        ; $732c: $79
	add  a                                           ; $732d: $87
	ld   l, c                                        ; $732e: $69
	ld   [hl], a                                     ; $732f: $77
	sub  [hl]                                        ; $7330: $96
	add  a                                           ; $7331: $87
	add  a                                           ; $7332: $87
	sbc  c                                           ; $7333: $99
	adc  c                                           ; $7334: $89
	ld   a, d                                        ; $7335: $7a
	ld   a, c                                        ; $7336: $79
	adc  b                                           ; $7337: $88
	adc  b                                           ; $7338: $88
	add  a                                           ; $7339: $87
	adc  b                                           ; $733a: $88
	adc  b                                           ; $733b: $88
	ld   a, b                                        ; $733c: $78
	ld   [hl], a                                     ; $733d: $77
	ld   a, c                                        ; $733e: $79
	ld   [hl], a                                     ; $733f: $77
	add  a                                           ; $7340: $87
	adc  b                                           ; $7341: $88
	add  a                                           ; $7342: $87
	add  a                                           ; $7343: $87
	sbc  c                                           ; $7344: $99
	ld   a, b                                        ; $7345: $78
	adc  c                                           ; $7346: $89
	adc  c                                           ; $7347: $89
	sbc  b                                           ; $7348: $98
	sbc  b                                           ; $7349: $98
	adc  b                                           ; $734a: $88
	add  a                                           ; $734b: $87
	ld   a, b                                        ; $734c: $78
	ld   h, a                                        ; $734d: $67
	ld   [hl], a                                     ; $734e: $77
	adc  b                                           ; $734f: $88
	add  a                                           ; $7350: $87
	sbc  b                                           ; $7351: $98
	ld   a, c                                        ; $7352: $79
	adc  b                                           ; $7353: $88
	sbc  b                                           ; $7354: $98
	sbc  b                                           ; $7355: $98
	adc  b                                           ; $7356: $88
	adc  b                                           ; $7357: $88
	adc  b                                           ; $7358: $88
	ld   a, c                                        ; $7359: $79
	ld   a, b                                        ; $735a: $78
	ld   [hl], a                                     ; $735b: $77
	add  a                                           ; $735c: $87
	adc  b                                           ; $735d: $88
	add  a                                           ; $735e: $87
	sbc  b                                           ; $735f: $98
	ld   a, b                                        ; $7360: $78
	adc  b                                           ; $7361: $88
	adc  b                                           ; $7362: $88
	adc  c                                           ; $7363: $89
	add  a                                           ; $7364: $87
	add  a                                           ; $7365: $87
	ld   a, b                                        ; $7366: $78
	sub  a                                           ; $7367: $97
	adc  b                                           ; $7368: $88
	ld   a, b                                        ; $7369: $78
	ld   [hl], a                                     ; $736a: $77
	sbc  b                                           ; $736b: $98
	adc  c                                           ; $736c: $89
	add  a                                           ; $736d: $87
	add  a                                           ; $736e: $87
	ld   a, b                                        ; $736f: $78
	ld   a, b                                        ; $7370: $78
	adc  b                                           ; $7371: $88
	adc  b                                           ; $7372: $88
	ld   a, b                                        ; $7373: $78
	sub  a                                           ; $7374: $97
	sbc  b                                           ; $7375: $98
	add  a                                           ; $7376: $87
	adc  b                                           ; $7377: $88
	adc  b                                           ; $7378: $88
	adc  b                                           ; $7379: $88
	adc  b                                           ; $737a: $88
	adc  b                                           ; $737b: $88
	add  a                                           ; $737c: $87
	adc  b                                           ; $737d: $88
	adc  b                                           ; $737e: $88
	ld   a, c                                        ; $737f: $79
	adc  b                                           ; $7380: $88
	adc  b                                           ; $7381: $88
	add  a                                           ; $7382: $87
	sub  a                                           ; $7383: $97
	sbc  b                                           ; $7384: $98
	adc  c                                           ; $7385: $89
	adc  b                                           ; $7386: $88
	adc  b                                           ; $7387: $88
	ld   a, c                                        ; $7388: $79
	ld   a, c                                        ; $7389: $79
	adc  b                                           ; $738a: $88
	sub  a                                           ; $738b: $97
	adc  b                                           ; $738c: $88
	adc  c                                           ; $738d: $89
	add  a                                           ; $738e: $87
	add  a                                           ; $738f: $87
	adc  c                                           ; $7390: $89
	ld   a, c                                        ; $7391: $79
	add  a                                           ; $7392: $87
	sbc  b                                           ; $7393: $98
	adc  c                                           ; $7394: $89
	adc  b                                           ; $7395: $88
	sbc  b                                           ; $7396: $98
	adc  c                                           ; $7397: $89
	adc  c                                           ; $7398: $89
	adc  b                                           ; $7399: $88
	adc  c                                           ; $739a: $89
	add  a                                           ; $739b: $87
	sbc  b                                           ; $739c: $98
	adc  b                                           ; $739d: $88
	ld   a, b                                        ; $739e: $78
	adc  b                                           ; $739f: $88
	adc  c                                           ; $73a0: $89
	add  a                                           ; $73a1: $87
	sbc  b                                           ; $73a2: $98
	adc  c                                           ; $73a3: $89
	ld   a, b                                        ; $73a4: $78
	adc  c                                           ; $73a5: $89
	ld   a, b                                        ; $73a6: $78
	add  a                                           ; $73a7: $87
	and  a                                           ; $73a8: $a7
	sbc  b                                           ; $73a9: $98
	ld   a, b                                        ; $73aa: $78
	ld   a, b                                        ; $73ab: $78
	ld   a, b                                        ; $73ac: $78
	sbc  b                                           ; $73ad: $98
	adc  b                                           ; $73ae: $88
	adc  b                                           ; $73af: $88
	adc  b                                           ; $73b0: $88
	adc  b                                           ; $73b1: $88
	adc  b                                           ; $73b2: $88
	adc  b                                           ; $73b3: $88
	sub  a                                           ; $73b4: $97
	sbc  c                                           ; $73b5: $99
	ld   a, c                                        ; $73b6: $79
	adc  b                                           ; $73b7: $88
	adc  b                                           ; $73b8: $88
	adc  c                                           ; $73b9: $89
	ld   a, b                                        ; $73ba: $78
	adc  b                                           ; $73bb: $88
	adc  b                                           ; $73bc: $88
	adc  b                                           ; $73bd: $88
	add  a                                           ; $73be: $87
	adc  b                                           ; $73bf: $88
	ld   a, b                                        ; $73c0: $78
	adc  c                                           ; $73c1: $89
	ld   a, b                                        ; $73c2: $78
	adc  b                                           ; $73c3: $88
	adc  b                                           ; $73c4: $88
	adc  b                                           ; $73c5: $88
	sbc  b                                           ; $73c6: $98
	adc  b                                           ; $73c7: $88
	ld   a, b                                        ; $73c8: $78
	adc  b                                           ; $73c9: $88
	sbc  b                                           ; $73ca: $98
	adc  b                                           ; $73cb: $88
	adc  b                                           ; $73cc: $88
	adc  b                                           ; $73cd: $88
	adc  b                                           ; $73ce: $88
	adc  b                                           ; $73cf: $88
	adc  b                                           ; $73d0: $88
	adc  c                                           ; $73d1: $89
	adc  b                                           ; $73d2: $88
	ld   a, b                                        ; $73d3: $78
	ld   a, b                                        ; $73d4: $78
	add  a                                           ; $73d5: $87
	sub  a                                           ; $73d6: $97
	sub  a                                           ; $73d7: $97
	adc  b                                           ; $73d8: $88
	ld   a, c                                        ; $73d9: $79
	ld   a, d                                        ; $73da: $7a
	ld   a, b                                        ; $73db: $78
	add  a                                           ; $73dc: $87
	sub  a                                           ; $73dd: $97
	add  a                                           ; $73de: $87
	adc  b                                           ; $73df: $88
	sbc  b                                           ; $73e0: $98
	ld   a, c                                        ; $73e1: $79
	ld   a, b                                        ; $73e2: $78
	sbc  b                                           ; $73e3: $98
	adc  b                                           ; $73e4: $88
	add  a                                           ; $73e5: $87
	sbc  b                                           ; $73e6: $98
	adc  c                                           ; $73e7: $89
	ld   a, b                                        ; $73e8: $78
	adc  c                                           ; $73e9: $89
	ld   a, b                                        ; $73ea: $78
	adc  b                                           ; $73eb: $88
	add  a                                           ; $73ec: $87
	sbc  b                                           ; $73ed: $98
	adc  b                                           ; $73ee: $88
	sbc  b                                           ; $73ef: $98
	adc  b                                           ; $73f0: $88
	adc  c                                           ; $73f1: $89
	ld   a, c                                        ; $73f2: $79
	adc  c                                           ; $73f3: $89
	adc  b                                           ; $73f4: $88
	sbc  b                                           ; $73f5: $98
	adc  b                                           ; $73f6: $88
	add  a                                           ; $73f7: $87
	sbc  b                                           ; $73f8: $98
	adc  c                                           ; $73f9: $89
	adc  b                                           ; $73fa: $88
	adc  c                                           ; $73fb: $89
	adc  b                                           ; $73fc: $88
	adc  b                                           ; $73fd: $88
	sbc  b                                           ; $73fe: $98
	sub  a                                           ; $73ff: $97
	sbc  b                                           ; $7400: $98
	adc  c                                           ; $7401: $89
	ld   a, c                                        ; $7402: $79
	ld   a, c                                        ; $7403: $79
	adc  b                                           ; $7404: $88
	add  a                                           ; $7405: $87
	sub  a                                           ; $7406: $97
	adc  c                                           ; $7407: $89
	adc  b                                           ; $7408: $88
	add  a                                           ; $7409: $87
	adc  b                                           ; $740a: $88
	ld   a, c                                        ; $740b: $79
	ld   a, b                                        ; $740c: $78
	sub  a                                           ; $740d: $97
	ld   a, b                                        ; $740e: $78
	sbc  b                                           ; $740f: $98
	adc  b                                           ; $7410: $88
	adc  b                                           ; $7411: $88
	add  a                                           ; $7412: $87
	sbc  b                                           ; $7413: $98
	adc  b                                           ; $7414: $88
	adc  b                                           ; $7415: $88
	sbc  b                                           ; $7416: $98
	ld   a, c                                        ; $7417: $79
	adc  b                                           ; $7418: $88
	adc  b                                           ; $7419: $88
	sub  a                                           ; $741a: $97
	adc  c                                           ; $741b: $89
	adc  b                                           ; $741c: $88
	adc  b                                           ; $741d: $88
	adc  c                                           ; $741e: $89
	adc  b                                           ; $741f: $88
	add  a                                           ; $7420: $87
	sbc  b                                           ; $7421: $98
	ld   a, c                                        ; $7422: $79
	adc  c                                           ; $7423: $89
	ld   a, c                                        ; $7424: $79
	adc  b                                           ; $7425: $88
	add  a                                           ; $7426: $87
	adc  b                                           ; $7427: $88
	ld   a, c                                        ; $7428: $79
	sbc  b                                           ; $7429: $98
	ld   a, c                                        ; $742a: $79
	add  a                                           ; $742b: $87
	ld   a, b                                        ; $742c: $78
	sub  a                                           ; $742d: $97
	add  a                                           ; $742e: $87
	sub  a                                           ; $742f: $97
	adc  c                                           ; $7430: $89
	ld   a, c                                        ; $7431: $79
	ld   l, c                                        ; $7432: $69
	ld   a, b                                        ; $7433: $78
	sub  a                                           ; $7434: $97
	add  a                                           ; $7435: $87
	sub  a                                           ; $7436: $97
	sbc  b                                           ; $7437: $98
	ld   a, b                                        ; $7438: $78
	adc  b                                           ; $7439: $88
	adc  c                                           ; $743a: $89
	ld   a, b                                        ; $743b: $78
	adc  b                                           ; $743c: $88
	sub  a                                           ; $743d: $97
	adc  b                                           ; $743e: $88
	add  a                                           ; $743f: $87
	sbc  c                                           ; $7440: $99
	ld   a, d                                        ; $7441: $7a
	ld   l, b                                        ; $7442: $68
	adc  b                                           ; $7443: $88
	adc  b                                           ; $7444: $88
	and  a                                           ; $7445: $a7
	sub  a                                           ; $7446: $97
	sub  a                                           ; $7447: $97
	ld   a, c                                        ; $7448: $79
	ld   a, d                                        ; $7449: $7a
	ld   a, c                                        ; $744a: $79
	add  a                                           ; $744b: $87
	add  a                                           ; $744c: $87
	add  a                                           ; $744d: $87
	add  a                                           ; $744e: $87
	adc  c                                           ; $744f: $89
	ld   a, c                                        ; $7450: $79
	adc  c                                           ; $7451: $89
	ld   a, b                                        ; $7452: $78
	ld   [hl], a                                     ; $7453: $77
	add  a                                           ; $7454: $87
	and  a                                           ; $7455: $a7
	adc  c                                           ; $7456: $89
	adc  b                                           ; $7457: $88
	ld   a, c                                        ; $7458: $79
	ld   l, c                                        ; $7459: $69
	ld   a, b                                        ; $745a: $78
	and  [hl]                                        ; $745b: $a6
	and  a                                           ; $745c: $a7
	adc  b                                           ; $745d: $88
	ld   a, c                                        ; $745e: $79
	ld   a, c                                        ; $745f: $79
	ld   l, d                                        ; $7460: $6a
	add  a                                           ; $7461: $87
	xor  b                                           ; $7462: $a8
	add  a                                           ; $7463: $87
	sub  a                                           ; $7464: $97
	add  a                                           ; $7465: $87
	ld   a, d                                        ; $7466: $7a
	ld   a, c                                        ; $7467: $79
	adc  b                                           ; $7468: $88
	add  a                                           ; $7469: $87
	ld   a, b                                        ; $746a: $78
	sub  a                                           ; $746b: $97
	adc  b                                           ; $746c: $88
	adc  b                                           ; $746d: $88
	adc  b                                           ; $746e: $88
	ld   a, d                                        ; $746f: $7a
	add  a                                           ; $7470: $87
	sbc  b                                           ; $7471: $98
	add  a                                           ; $7472: $87
	ld   a, b                                        ; $7473: $78
	add  a                                           ; $7474: $87
	ld   a, b                                        ; $7475: $78
	add  a                                           ; $7476: $87
	xor  b                                           ; $7477: $a8
	adc  c                                           ; $7478: $89
	ld   h, a                                        ; $7479: $67
	ld   a, c                                        ; $747a: $79
	ld   a, b                                        ; $747b: $78
	adc  b                                           ; $747c: $88
	sub  a                                           ; $747d: $97
	add  a                                           ; $747e: $87
	add  a                                           ; $747f: $87
	adc  c                                           ; $7480: $89
	ld   a, c                                        ; $7481: $79
	ld   a, b                                        ; $7482: $78
	adc  b                                           ; $7483: $88
	adc  b                                           ; $7484: $88
	sbc  b                                           ; $7485: $98
	add  a                                           ; $7486: $87
	adc  b                                           ; $7487: $88
	adc  b                                           ; $7488: $88
	ld   a, b                                        ; $7489: $78
	adc  c                                           ; $748a: $89
	ld   [hl], a                                     ; $748b: $77
	adc  c                                           ; $748c: $89
	add  a                                           ; $748d: $87
	sbc  b                                           ; $748e: $98
	ld   a, b                                        ; $748f: $78
	ld   a, b                                        ; $7490: $78
	add  a                                           ; $7491: $87
	add  a                                           ; $7492: $87
	adc  b                                           ; $7493: $88
	adc  b                                           ; $7494: $88
	ld   a, c                                        ; $7495: $79
	sub  a                                           ; $7496: $97
	ld   a, b                                        ; $7497: $78
	adc  b                                           ; $7498: $88
	ld   a, b                                        ; $7499: $78
	adc  c                                           ; $749a: $89
	ld   a, b                                        ; $749b: $78
	adc  b                                           ; $749c: $88
	sub  [hl]                                        ; $749d: $96
	adc  d                                           ; $749e: $8a
	ld   a, b                                        ; $749f: $78
	adc  c                                           ; $74a0: $89
	add  a                                           ; $74a1: $87
	sbc  b                                           ; $74a2: $98
	ld   a, b                                        ; $74a3: $78
	adc  b                                           ; $74a4: $88
	ld   a, b                                        ; $74a5: $78
	adc  c                                           ; $74a6: $89
	add  a                                           ; $74a7: $87
	adc  c                                           ; $74a8: $89
	adc  b                                           ; $74a9: $88
	adc  b                                           ; $74aa: $88

Call_0a6_74ab:
	sbc  b                                           ; $74ab: $98
	adc  b                                           ; $74ac: $88
	add  a                                           ; $74ad: $87
	adc  c                                           ; $74ae: $89
	sub  a                                           ; $74af: $97
	sbc  b                                           ; $74b0: $98
	ld   a, b                                        ; $74b1: $78
	ld   a, b                                        ; $74b2: $78
	sbc  b                                           ; $74b3: $98
	adc  b                                           ; $74b4: $88
	ld   a, b                                        ; $74b5: $78
	adc  c                                           ; $74b6: $89
	sub  a                                           ; $74b7: $97
	sbc  b                                           ; $74b8: $98
	ld   a, b                                        ; $74b9: $78
	ld   a, b                                        ; $74ba: $78
	sub  a                                           ; $74bb: $97
	adc  c                                           ; $74bc: $89
	ld   a, b                                        ; $74bd: $78
	add  a                                           ; $74be: $87
	sub  a                                           ; $74bf: $97
	sbc  c                                           ; $74c0: $99
	ld   [hl], a                                     ; $74c1: $77
	adc  b                                           ; $74c2: $88
	ld   [hl], a                                     ; $74c3: $77
	ld   a, c                                        ; $74c4: $79
	ld   a, b                                        ; $74c5: $78
	xor  b                                           ; $74c6: $a8
	ld   a, b                                        ; $74c7: $78
	sbc  b                                           ; $74c8: $98
	ld   h, a                                        ; $74c9: $67
	sbc  c                                           ; $74ca: $99
	ld   [hl], a                                     ; $74cb: $77
	and  a                                           ; $74cc: $a7
	ld   [hl], a                                     ; $74cd: $77
	sbc  c                                           ; $74ce: $99
	ld   l, b                                        ; $74cf: $68
	sbc  c                                           ; $74d0: $99
	ld   l, c                                        ; $74d1: $69
	add  [hl]                                        ; $74d2: $86
	adc  b                                           ; $74d3: $88
	add  a                                           ; $74d4: $87
	adc  c                                           ; $74d5: $89
	sub  a                                           ; $74d6: $97
	adc  b                                           ; $74d7: $88
	sbc  b                                           ; $74d8: $98
	ld   a, c                                        ; $74d9: $79
	adc  b                                           ; $74da: $88
	ld   a, b                                        ; $74db: $78
	adc  b                                           ; $74dc: $88
	ld   a, b                                        ; $74dd: $78
	ld   a, c                                        ; $74de: $79
	ld   [hl], a                                     ; $74df: $77
	sbc  c                                           ; $74e0: $99
	add  [hl]                                        ; $74e1: $86
	adc  c                                           ; $74e2: $89
	and  [hl]                                        ; $74e3: $a6
	adc  b                                           ; $74e4: $88
	xor  c                                           ; $74e5: $a9
	ld   e, c                                        ; $74e6: $59
	adc  b                                           ; $74e7: $88
	ld   a, b                                        ; $74e8: $78
	adc  c                                           ; $74e9: $89
	add  a                                           ; $74ea: $87
	adc  b                                           ; $74eb: $88
	sub  a                                           ; $74ec: $97
	sbc  b                                           ; $74ed: $98
	sbc  b                                           ; $74ee: $98
	adc  c                                           ; $74ef: $89
	adc  b                                           ; $74f0: $88
	ld   a, b                                        ; $74f1: $78
	ld   a, c                                        ; $74f2: $79
	ld   a, b                                        ; $74f3: $78
	adc  b                                           ; $74f4: $88
	add  a                                           ; $74f5: $87
	sub  a                                           ; $74f6: $97
	sbc  c                                           ; $74f7: $99
	add  a                                           ; $74f8: $87
	ld   a, b                                        ; $74f9: $78
	sbc  b                                           ; $74fa: $98
	ld   a, c                                        ; $74fb: $79
	adc  c                                           ; $74fc: $89
	adc  b                                           ; $74fd: $88
	adc  b                                           ; $74fe: $88
	adc  b                                           ; $74ff: $88
	sub  a                                           ; $7500: $97
	sbc  b                                           ; $7501: $98
	adc  b                                           ; $7502: $88
	adc  b                                           ; $7503: $88
	adc  b                                           ; $7504: $88
	adc  b                                           ; $7505: $88
	adc  b                                           ; $7506: $88
	ld   a, c                                        ; $7507: $79
	sbc  c                                           ; $7508: $99
	add  a                                           ; $7509: $87
	sbc  b                                           ; $750a: $98
	adc  b                                           ; $750b: $88
	adc  b                                           ; $750c: $88
	sbc  b                                           ; $750d: $98
	adc  b                                           ; $750e: $88
	adc  b                                           ; $750f: $88
	adc  b                                           ; $7510: $88
	adc  b                                           ; $7511: $88
	adc  b                                           ; $7512: $88
	adc  b                                           ; $7513: $88
	adc  b                                           ; $7514: $88
	sbc  c                                           ; $7515: $99
	ld   [hl], a                                     ; $7516: $77
	adc  b                                           ; $7517: $88
	sbc  b                                           ; $7518: $98
	adc  b                                           ; $7519: $88
	ld   a, b                                        ; $751a: $78
	sbc  b                                           ; $751b: $98
	ld   a, b                                        ; $751c: $78
	adc  b                                           ; $751d: $88
	ld   [hl], a                                     ; $751e: $77
	adc  c                                           ; $751f: $89
	add  a                                           ; $7520: $87
	adc  b                                           ; $7521: $88
	adc  b                                           ; $7522: $88
	ld   a, c                                        ; $7523: $79
	adc  b                                           ; $7524: $88
	add  a                                           ; $7525: $87
	adc  b                                           ; $7526: $88
	adc  b                                           ; $7527: $88
	adc  b                                           ; $7528: $88
	add  a                                           ; $7529: $87
	ld   a, b                                        ; $752a: $78
	adc  b                                           ; $752b: $88
	adc  b                                           ; $752c: $88
	adc  b                                           ; $752d: $88
	adc  b                                           ; $752e: $88
	adc  b                                           ; $752f: $88
	adc  b                                           ; $7530: $88
	adc  b                                           ; $7531: $88
	adc  b                                           ; $7532: $88
	adc  b                                           ; $7533: $88
	ld   [hl], a                                     ; $7534: $77
	adc  b                                           ; $7535: $88
	adc  b                                           ; $7536: $88
	ld   a, b                                        ; $7537: $78
	adc  b                                           ; $7538: $88
	ld   [hl], a                                     ; $7539: $77
	adc  b                                           ; $753a: $88
	sub  a                                           ; $753b: $97
	ld   a, b                                        ; $753c: $78
	adc  b                                           ; $753d: $88
	ld   [hl], a                                     ; $753e: $77
	ld   a, b                                        ; $753f: $78
	and  a                                           ; $7540: $a7
	ld   h, a                                        ; $7541: $67
	sbc  d                                           ; $7542: $9a
	ld   h, [hl]                                     ; $7543: $66
	sbc  e                                           ; $7544: $9b
	sub  l                                           ; $7545: $95
	ld   l, c                                        ; $7546: $69
	sub  a                                           ; $7547: $97
	ld   h, a                                        ; $7548: $67
	sbc  c                                           ; $7549: $99
	ld   [hl], a                                     ; $754a: $77
	ld   a, c                                        ; $754b: $79
	and  a                                           ; $754c: $a7
	ld   h, a                                        ; $754d: $67
	sbc  b                                           ; $754e: $98
	adc  b                                           ; $754f: $88
	add  a                                           ; $7550: $87
	sbc  b                                           ; $7551: $98
	add  a                                           ; $7552: $87
	ld   a, b                                        ; $7553: $78
	xor  c                                           ; $7554: $a9
	halt                                             ; $7555: $76
	adc  c                                           ; $7556: $89
	add  a                                           ; $7557: $87
	ld   a, b                                        ; $7558: $78
	add  a                                           ; $7559: $87
	ld   [hl], a                                     ; $755a: $77
	sbc  b                                           ; $755b: $98
	ld   [hl], a                                     ; $755c: $77
	adc  b                                           ; $755d: $88
	add  a                                           ; $755e: $87
	adc  c                                           ; $755f: $89
	adc  b                                           ; $7560: $88
	ld   a, b                                        ; $7561: $78
	adc  b                                           ; $7562: $88
	ld   a, b                                        ; $7563: $78
	sbc  b                                           ; $7564: $98
	ld   a, b                                        ; $7565: $78
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

Call_0a6_7694:
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
	adc  c                                           ; $76a8: $89

Jump_0a6_76a9:
	sbc  d                                           ; $76a9: $9a
	or   a                                           ; $76aa: $b7
	ld   b, l                                        ; $76ab: $45
	sbc  e                                           ; $76ac: $9b
	and  [hl]                                        ; $76ad: $a6
	ld   d, a                                        ; $76ae: $57
	sbc  b                                           ; $76af: $98
	ld   [hl], a                                     ; $76b0: $77
	adc  d                                           ; $76b1: $8a
	xor  c                                           ; $76b2: $a9
	halt                                             ; $76b3: $76
	ld   a, b                                        ; $76b4: $78
	sbc  b                                           ; $76b5: $98
	add  a                                           ; $76b6: $87
	ld   [hl], a                                     ; $76b7: $77
	halt                                             ; $76b8: $76
	sbc  h                                           ; $76b9: $9c
	sub  l                                           ; $76ba: $95
	ld   c, c                                        ; $76bb: $49
	jp   z, $a976                                    ; $76bc: $ca $76 $a9

	add  l                                           ; $76bf: $85
	ld   l, c                                        ; $76c0: $69
	sbc  b                                           ; $76c1: $98
	ld   [hl], a                                     ; $76c2: $77
	ld   a, c                                        ; $76c3: $79
	sbc  d                                           ; $76c4: $9a
	xor  b                                           ; $76c5: $a8
	ld   h, a                                        ; $76c6: $67
	sbc  e                                           ; $76c7: $9b
	and  a                                           ; $76c8: $a7
	ld   b, h                                        ; $76c9: $44
	adc  c                                           ; $76ca: $89
	add  [hl]                                        ; $76cb: $86
	adc  c                                           ; $76cc: $89
	xor  c                                           ; $76cd: $a9
	ld   a, b                                        ; $76ce: $78
	adc  d                                           ; $76cf: $8a
	sub  [hl]                                        ; $76d0: $96
	ld   h, [hl]                                     ; $76d1: $66
	ld   [hl], a                                     ; $76d2: $77
	ld   [hl], l                                     ; $76d3: $75
	ld   [hl], a                                     ; $76d4: $77
	sbc  b                                           ; $76d5: $98
	adc  b                                           ; $76d6: $88
	sbc  d                                           ; $76d7: $9a
	sbc  c                                           ; $76d8: $99
	sbc  d                                           ; $76d9: $9a
	ld   [hl], l                                     ; $76da: $75
	ld   d, a                                        ; $76db: $57
	xor  b                                           ; $76dc: $a8
	ld   h, h                                        ; $76dd: $64
	ld   b, a                                        ; $76de: $47
	cp   h                                           ; $76df: $bc
	sub  a                                           ; $76e0: $97
	ld   l, c                                        ; $76e1: $69
	adc  c                                           ; $76e2: $89
	adc  c                                           ; $76e3: $89
	xor  c                                           ; $76e4: $a9
	xor  b                                           ; $76e5: $a8
	ld   h, h                                        ; $76e6: $64
	ld   e, c                                        ; $76e7: $59
	xor  b                                           ; $76e8: $a8
	ld   b, h                                        ; $76e9: $44
	cp   a                                           ; $76ea: $bf
	ld   a, [$8c24]                                  ; $76eb: $fa $24 $8c
	and  h                                           ; $76ee: $a4
	dec  h                                           ; $76ef: $25
	sbc  d                                           ; $76f0: $9a
	ld   [hl], e                                     ; $76f1: $73
	ld   de, $de4a                                   ; $76f2: $11 $4a $de
	xor  d                                           ; $76f5: $aa
	sbc  b                                           ; $76f6: $98
	halt                                             ; $76f7: $76
	ld   a, b                                        ; $76f8: $78
	sbc  b                                           ; $76f9: $98
	cp   h                                           ; $76fa: $bc
	db   $ec                                         ; $76fb: $ec
	sbc  b                                           ; $76fc: $98
	adc  d                                           ; $76fd: $8a
	add  a                                           ; $76fe: $87
	ld   h, [hl]                                     ; $76ff: $66
	adc  c                                           ; $7700: $89
	add  h                                           ; $7701: $84
	ld   b, [hl]                                     ; $7702: $46
	ld   [hl], h                                     ; $7703: $74
	ld   a, e                                        ; $7704: $7b
	call c, $9a97                                    ; $7705: $dc $97 $9a
	cp   e                                           ; $7708: $bb
	adc  b                                           ; $7709: $88
	sbc  c                                           ; $770a: $99
	ld   h, l                                        ; $770b: $65
	ld   a, d                                        ; $770c: $7a
	xor  b                                           ; $770d: $a8
	halt                                             ; $770e: $76
	ld   h, [hl]                                     ; $770f: $66
	ld   d, [hl]                                     ; $7710: $56
	ld   h, a                                        ; $7711: $67
	sbc  c                                           ; $7712: $99
	ld   [hl], l                                     ; $7713: $75
	ld   h, a                                        ; $7714: $67
	adc  c                                           ; $7715: $89
	adc  b                                           ; $7716: $88
	sbc  d                                           ; $7717: $9a
	xor  b                                           ; $7718: $a8
	adc  b                                           ; $7719: $88
	sbc  b                                           ; $771a: $98
	ld   l, c                                        ; $771b: $69
	sbc  e                                           ; $771c: $9b
	sub  l                                           ; $771d: $95
	ld   e, b                                        ; $771e: $58
	xor  b                                           ; $771f: $a8
	ld   h, [hl]                                     ; $7720: $66
	sbc  d                                           ; $7721: $9a
	halt                                             ; $7722: $76
	ld   l, b                                        ; $7723: $68
	xor  b                                           ; $7724: $a8
	ld   h, l                                        ; $7725: $65
	ld   h, a                                        ; $7726: $67
	sub  a                                           ; $7727: $97
	ld   [hl], a                                     ; $7728: $77
	ld   h, [hl]                                     ; $7729: $66
	ld   l, c                                        ; $772a: $69
	sbc  b                                           ; $772b: $98
	adc  c                                           ; $772c: $89
	sub  a                                           ; $772d: $97
	sbc  d                                           ; $772e: $9a
	xor  c                                           ; $772f: $a9
	sbc  c                                           ; $7730: $99
	xor  d                                           ; $7731: $aa
	adc  b                                           ; $7732: $88
	sbc  c                                           ; $7733: $99
	add  h                                           ; $7734: $84
	ld   l, b                                        ; $7735: $68
	add  [hl]                                        ; $7736: $86
	inc  [hl]                                        ; $7737: $34
	ld   l, c                                        ; $7738: $69
	ld   [hl], h                                     ; $7739: $74
	ld   b, a                                        ; $773a: $47
	xor  c                                           ; $773b: $a9
	ld   h, [hl]                                     ; $773c: $66
	adc  h                                           ; $773d: $8c
	cp   e                                           ; $773e: $bb
	adc  e                                           ; $773f: $8b
	db   $dd                                         ; $7740: $dd
	cp   d                                           ; $7741: $ba
	call z, $9adb                                    ; $7742: $cc $db $9a
	xor  c                                           ; $7745: $a9
	halt                                             ; $7746: $76
	ld   h, [hl]                                     ; $7747: $66
	ld   sp, $2112                                   ; $7748: $31 $12 $21
	ld   de, $4324                                   ; $774b: $11 $24 $43
	ld   a, d                                        ; $774e: $7a
	adc  $ef                                         ; $774f: $ce $ef
	rst  $38                                         ; $7751: $ff
	rst  $38                                         ; $7752: $ff
	rst  $38                                         ; $7753: $ff
	rst  $38                                         ; $7754: $ff
	jp   z, $52a7                                    ; $7755: $ca $a7 $52

	ld   de, $1111                                   ; $7758: $11 $11 $11
	ld   de, $2511                                   ; $775b: $11 $11 $25
	adc  c                                           ; $775e: $89
	cp   a                                           ; $775f: $bf
	rst  $38                                         ; $7760: $ff
	rst  $38                                         ; $7761: $ff
	rst  $38                                         ; $7762: $ff
	rst  $38                                         ; $7763: $ff
	rst  $38                                         ; $7764: $ff
	bit  6, h                                        ; $7765: $cb $74
	ld   sp, $1111                                   ; $7767: $31 $11 $11
	ld   de, $1111                                   ; $776a: $11 $11 $11
	ld   b, h                                        ; $776d: $44
	adc  d                                           ; $776e: $8a
	rst  JumpTable                                         ; $776f: $df
	rst  $38                                         ; $7770: $ff
	rst  $38                                         ; $7771: $ff
	rst  $38                                         ; $7772: $ff
	rst  $38                                         ; $7773: $ff
	rst  $38                                         ; $7774: $ff
	ld   a, [$3274]                                  ; $7775: $fa $74 $32
	ld   de, $1111                                   ; $7778: $11 $11 $11
	ld   de, $2411                                   ; $777b: $11 $11 $24
	ld   l, c                                        ; $777e: $69
	sbc  $ff                                         ; $777f: $de $ff
	rst  $38                                         ; $7781: $ff
	rst  $38                                         ; $7782: $ff
	rst  $38                                         ; $7783: $ff
	rst  $38                                         ; $7784: $ff
	db   $fc                                         ; $7785: $fc
	add  l                                           ; $7786: $85
	ld   b, d                                        ; $7787: $42
	ld   de, $1111                                   ; $7788: $11 $11 $11
	ld   de, $1311                                   ; $778b: $11 $11 $13

jr_0a6_778e:
	ld   c, c                                        ; $778e: $49
	sbc  $ff                                         ; $778f: $de $ff
	rst  $38                                         ; $7791: $ff
	rst  $38                                         ; $7792: $ff
	rst  $38                                         ; $7793: $ff
	rst  $38                                         ; $7794: $ff
	cp   $a7                                         ; $7795: $fe $a7
	ld   d, d                                        ; $7797: $52
	ld   de, $1111                                   ; $7798: $11 $11 $11
	ld   de, $1111                                   ; $779b: $11 $11 $11
	ld   h, $bc                                      ; $779e: $26 $bc
	rst  $38                                         ; $77a0: $ff
	rst  $38                                         ; $77a1: $ff
	rst  $38                                         ; $77a2: $ff
	rst  $38                                         ; $77a3: $ff
	rst  $38                                         ; $77a4: $ff
	rst  $38                                         ; $77a5: $ff
	jp   c, $2175                                    ; $77a6: $da $75 $21

	ld   de, $1111                                   ; $77a9: $11 $11 $11
	ld   de, $1511                                   ; $77ac: $11 $11 $15
	sbc  e                                           ; $77af: $9b
	db   $fd                                         ; $77b0: $fd
	rst  $38                                         ; $77b1: $ff
	rst  $38                                         ; $77b2: $ff
	rst  $38                                         ; $77b3: $ff
	rst  $38                                         ; $77b4: $ff
	rst  $38                                         ; $77b5: $ff
	ei                                               ; $77b6: $fb
	sub  [hl]                                        ; $77b7: $96
	ld   b, d                                        ; $77b8: $42
	ld   hl, $1111                                   ; $77b9: $21 $11 $11
	ld   de, $1111                                   ; $77bc: $11 $11 $11
	jr   c, jr_0a6_778e                              ; $77bf: $38 $cd

	rst  $38                                         ; $77c1: $ff
	rst  $38                                         ; $77c2: $ff
	rst  $38                                         ; $77c3: $ff
	rst  $38                                         ; $77c4: $ff
	rst  $38                                         ; $77c5: $ff
	rst  $38                                         ; $77c6: $ff
	ret  z                                           ; $77c7: $c8

	ld   h, h                                        ; $77c8: $64
	ld   sp, $1101                                   ; $77c9: $31 $01 $11
	ld   de, $1111                                   ; $77cc: $11 $11 $11
	inc  de                                          ; $77cf: $13
	ld   a, e                                        ; $77d0: $7b
	xor  [hl]                                        ; $77d1: $ae
	rst  $38                                         ; $77d2: $ff
	rst  $38                                         ; $77d3: $ff
	rst  $38                                         ; $77d4: $ff
	rst  $38                                         ; $77d5: $ff
	rst  $38                                         ; $77d6: $ff
	cp   $97                                         ; $77d7: $fe $97
	ld   d, e                                        ; $77d9: $53
	ld   hl, $1111                                   ; $77da: $21 $11 $11
	ld   de, $1111                                   ; $77dd: $11 $11 $11
	dec  [hl]                                        ; $77e0: $35
	xor  d                                           ; $77e1: $aa
	cp   a                                           ; $77e2: $bf
	rst  $38                                         ; $77e3: $ff
	rst  $38                                         ; $77e4: $ff
	rst  $38                                         ; $77e5: $ff
	rst  $38                                         ; $77e6: $ff
	rst  $38                                         ; $77e7: $ff
	ei                                               ; $77e8: $fb
	sub  a                                           ; $77e9: $97
	ld   d, e                                        ; $77ea: $53
	ld   de, $1111                                   ; $77eb: $11 $11 $11
	ld   de, $1111                                   ; $77ee: $11 $11 $11
	ld   b, l                                        ; $77f1: $45
	sbc  d                                           ; $77f2: $9a
	cp   a                                           ; $77f3: $bf
	rst  $38                                         ; $77f4: $ff
	rst  $38                                         ; $77f5: $ff
	rst  $38                                         ; $77f6: $ff
	rst  $38                                         ; $77f7: $ff
	rst  $38                                         ; $77f8: $ff
	ld   a, [$5287]                                  ; $77f9: $fa $87 $52
	ld   de, $1111                                   ; $77fc: $11 $11 $11

Jump_0a6_77ff:
	ld   de, $1111                                   ; $77ff: $11 $11 $11
	dec  [hl]                                        ; $7802: $35
	sub  a                                           ; $7803: $97
	cp   a                                           ; $7804: $bf
	rst  $38                                         ; $7805: $ff
	rst  $38                                         ; $7806: $ff
	rst  $38                                         ; $7807: $ff
	rst  $38                                         ; $7808: $ff
	rst  $38                                         ; $7809: $ff
	ei                                               ; $780a: $fb
	sbc  c                                           ; $780b: $99
	ld   h, d                                        ; $780c: $62
	ld   de, $1111                                   ; $780d: $11 $11 $11
	ld   de, $1111                                   ; $7810: $11 $11 $11
	inc  de                                          ; $7813: $13
	ld   h, a                                        ; $7814: $67
	adc  l                                           ; $7815: $8d
	rst  $28                                         ; $7816: $ef
	rst  $38                                         ; $7817: $ff
	rst  $38                                         ; $7818: $ff
	rst  $38                                         ; $7819: $ff
	rst  $38                                         ; $781a: $ff
	cp   $aa                                         ; $781b: $fe $aa
	sub  h                                           ; $781d: $94
	ld   sp, $1122                                   ; $781e: $31 $22 $11
	ld   de, $1111                                   ; $7821: $11 $11 $11
	ld   de, $5718                                   ; $7824: $11 $18 $57
	adc  h                                           ; $7827: $8c
	cp   $ff                                         ; $7828: $fe $ff
	rst  $38                                         ; $782a: $ff
	rst  $38                                         ; $782b: $ff
	rst  $38                                         ; $782c: $ff
	db   $eb                                         ; $782d: $eb
	and  a                                           ; $782e: $a7
	ld   [hl], h                                     ; $782f: $74
	ld   b, l                                        ; $7830: $45
	ld   d, l                                        ; $7831: $55
	inc  hl                                          ; $7832: $23
	ld   b, d                                        ; $7833: $42
	ld   de, $1233                                   ; $7834: $11 $33 $12
	inc  de                                          ; $7837: $13
	ld   [hl+], a                                    ; $7838: $22
	ld   b, l                                        ; $7839: $45
	sbc  b                                           ; $783a: $98
	call z, $ffef                                    ; $783b: $cc $ef $ff
	rst  $38                                         ; $783e: $ff
	rst  $38                                         ; $783f: $ff
	rst  $28                                         ; $7840: $ef
	db   $ec                                         ; $7841: $ec
	jp   c, $a7b8                                    ; $7842: $da $b8 $a7

	halt                                             ; $7845: $76
	inc  [hl]                                        ; $7846: $34
	ld   [de], a                                     ; $7847: $12
	ld   de, $1111                                   ; $7848: $11 $11 $11
	ld   de, $4612                                   ; $784b: $11 $12 $46
	adc  d                                           ; $784e: $8a
	cp   [hl]                                        ; $784f: $be
	rst  $38                                         ; $7850: $ff
	rst  $38                                         ; $7851: $ff
	rst  $38                                         ; $7852: $ff
	rst  $38                                         ; $7853: $ff
	rst  $38                                         ; $7854: $ff
	call c, $97ba                                    ; $7855: $dc $ba $97
	ld   h, l                                        ; $7858: $65
	ld   d, h                                        ; $7859: $54
	ld   [hl-], a                                    ; $785a: $32
	ld   hl, $1101                                   ; $785b: $21 $01 $11
	ld   de, $1311                                   ; $785e: $11 $11 $13
	ld   b, [hl]                                     ; $7861: $46
	adc  c                                           ; $7862: $89
	cp   [hl]                                        ; $7863: $be
	rst  $38                                         ; $7864: $ff
	rst  $38                                         ; $7865: $ff
	rst  $38                                         ; $7866: $ff
	rst  $38                                         ; $7867: $ff
	rst  $38                                         ; $7868: $ff
	db   $ec                                         ; $7869: $ec
	jp   z, Jump_0a6_76a9                            ; $786a: $ca $a9 $76

	ld   d, l                                        ; $786d: $55
	ld   b, e                                        ; $786e: $43
	ld   [hl+], a                                    ; $786f: $22
	ld   de, $1111                                   ; $7870: $11 $11 $11
	ld   bc, $3512                                   ; $7873: $01 $12 $35
	ld   l, c                                        ; $7876: $69
	sbc  h                                           ; $7877: $9c
	sbc  $ff                                         ; $7878: $de $ff
	rst  $38                                         ; $787a: $ff
	rst  $38                                         ; $787b: $ff
	rst  $38                                         ; $787c: $ff
	db   $ed                                         ; $787d: $ed
	call c, $98aa                                    ; $787e: $dc $aa $98
	halt                                             ; $7881: $76
	ld   d, l                                        ; $7882: $55
	ld   d, e                                        ; $7883: $53
	ld   [hl+], a                                    ; $7884: $22
	ld   de, $1111                                   ; $7885: $11 $11 $11
	ld   de, $4523                                   ; $7888: $11 $23 $45
	ld   a, b                                        ; $788b: $78
	xor  h                                           ; $788c: $ac
	adc  $ef                                         ; $788d: $ce $ef
	rst  $38                                         ; $788f: $ff
	rst  $38                                         ; $7890: $ff
	rst  $38                                         ; $7891: $ff
	db   $dd                                         ; $7892: $dd
	call c, $98bb                                    ; $7893: $dc $bb $98
	add  a                                           ; $7896: $87
	ld   h, [hl]                                     ; $7897: $66
	ld   d, h                                        ; $7898: $54
	inc  sp                                          ; $7899: $33
	ld   hl, $1111                                   ; $789a: $21 $11 $11
	ld   de, $3412                                   ; $789d: $11 $12 $34
	ld   d, a                                        ; $78a0: $57
	adc  d                                           ; $78a1: $8a
	cp   h                                           ; $78a2: $bc
	sbc  $ef                                         ; $78a3: $de $ef
	rst  $38                                         ; $78a5: $ff
	rst  $38                                         ; $78a6: $ff
	cp   $dd                                         ; $78a7: $fe $dd
	res  7, d                                        ; $78a9: $cb $ba
	sbc  c                                           ; $78ab: $99
	halt                                             ; $78ac: $76
	ld   d, l                                        ; $78ad: $55
	ld   b, h                                        ; $78ae: $44
	inc  sp                                          ; $78af: $33
	ld   hl, $1111                                   ; $78b0: $21 $11 $11
	ld   de, $3522                                   ; $78b3: $11 $22 $35
	ld   h, a                                        ; $78b6: $67
	sbc  e                                           ; $78b7: $9b
	cp   h                                           ; $78b8: $bc
	xor  $ef                                         ; $78b9: $ee $ef
	rst  $38                                         ; $78bb: $ff
	rst  $38                                         ; $78bc: $ff
	xor  $dc                                         ; $78bd: $ee $dc
	cp   e                                           ; $78bf: $bb
	cp   c                                           ; $78c0: $b9
	add  a                                           ; $78c1: $87
	ld   h, [hl]                                     ; $78c2: $66
	ld   d, h                                        ; $78c3: $54
	ld   b, e                                        ; $78c4: $43
	ld   [hl-], a                                    ; $78c5: $32
	ld   [hl+], a                                    ; $78c6: $22
	ld   de, $2322                                   ; $78c7: $11 $22 $23
	inc  sp                                          ; $78ca: $33
	ld   b, l                                        ; $78cb: $45
	ld   a, b                                        ; $78cc: $78
	sbc  e                                           ; $78cd: $9b
	call $fede                                       ; $78ce: $cd $de $fe
	rst  $38                                         ; $78d1: $ff
	xor  $dd                                         ; $78d2: $ee $dd
	call z, $99ba                                    ; $78d4: $cc $ba $99
	adc  b                                           ; $78d7: $88
	halt                                             ; $78d8: $76
	ld   d, l                                        ; $78d9: $55
	ld   d, l                                        ; $78da: $55
	ld   b, h                                        ; $78db: $44
	inc  sp                                          ; $78dc: $33
	inc  sp                                          ; $78dd: $33
	inc  [hl]                                        ; $78de: $34
	ld   b, h                                        ; $78df: $44
	ld   b, h                                        ; $78e0: $44
	ld   b, l                                        ; $78e1: $45
	ld   h, a                                        ; $78e2: $67
	adc  b                                           ; $78e3: $88
	xor  e                                           ; $78e4: $ab
	cp   h                                           ; $78e5: $bc
	call $dcde                                       ; $78e6: $cd $de $dc
	call z, $bacc                                    ; $78e9: $cc $cc $ba
	cp   c                                           ; $78ec: $b9
	xor  c                                           ; $78ed: $a9
	sbc  b                                           ; $78ee: $98
	ld   [hl], a                                     ; $78ef: $77
	halt                                             ; $78f0: $76
	ld   h, [hl]                                     ; $78f1: $66
	ld   d, l                                        ; $78f2: $55
	ld   d, l                                        ; $78f3: $55
	ld   d, h                                        ; $78f4: $54
	ld   b, h                                        ; $78f5: $44
	ld   b, h                                        ; $78f6: $44
	ld   b, l                                        ; $78f7: $45
	ld   h, l                                        ; $78f8: $65
	ld   d, [hl]                                     ; $78f9: $56
	ld   [hl], a                                     ; $78fa: $77
	adc  d                                           ; $78fb: $8a
	xor  e                                           ; $78fc: $ab
	xor  e                                           ; $78fd: $ab
	cp   e                                           ; $78fe: $bb
	db   $dd                                         ; $78ff: $dd
	call z, $aabc                                    ; $7900: $cc $bc $aa
	xor  c                                           ; $7903: $a9
	sbc  c                                           ; $7904: $99
	sbc  b                                           ; $7905: $98
	add  a                                           ; $7906: $87
	ld   [hl], a                                     ; $7907: $77
	ld   [hl], a                                     ; $7908: $77
	ld   [hl], a                                     ; $7909: $77
	ld   [hl], a                                     ; $790a: $77
	ld   h, [hl]                                     ; $790b: $66
	ld   h, [hl]                                     ; $790c: $66
	ld   d, l                                        ; $790d: $55
	ld   h, l                                        ; $790e: $65
	ld   d, l                                        ; $790f: $55
	ld   h, [hl]                                     ; $7910: $66
	ld   d, [hl]                                     ; $7911: $56
	ld   h, a                                        ; $7912: $67
	adc  b                                           ; $7913: $88
	adc  c                                           ; $7914: $89
	xor  c                                           ; $7915: $a9
	xor  d                                           ; $7916: $aa
	xor  e                                           ; $7917: $ab
	cp   d                                           ; $7918: $ba
	cp   d                                           ; $7919: $ba
	xor  d                                           ; $791a: $aa
	sbc  c                                           ; $791b: $99
	sbc  c                                           ; $791c: $99
	sbc  c                                           ; $791d: $99
	adc  b                                           ; $791e: $88
	sbc  c                                           ; $791f: $99
	adc  b                                           ; $7920: $88
	sbc  c                                           ; $7921: $99
	add  a                                           ; $7922: $87
	adc  b                                           ; $7923: $88
	ld   [hl], a                                     ; $7924: $77
	halt                                             ; $7925: $76
	ld   h, [hl]                                     ; $7926: $66
	ld   h, [hl]                                     ; $7927: $66
	ld   h, a                                        ; $7928: $67
	ld   h, [hl]                                     ; $7929: $66
	ld   h, [hl]                                     ; $792a: $66
	ld   [hl], a                                     ; $792b: $77
	cp   e                                           ; $792c: $bb
	ld   l, b                                        ; $792d: $68
	sub  a                                           ; $792e: $97
	ld   [hl], a                                     ; $792f: $77
	sbc  c                                           ; $7930: $99
	xor  h                                           ; $7931: $ac
	and  l                                           ; $7932: $a5
	sbc  d                                           ; $7933: $9a
	sbc  d                                           ; $7934: $9a
	cp   d                                           ; $7935: $ba
	cp   e                                           ; $7936: $bb
	adc  h                                           ; $7937: $8c
	xor  $fd                                         ; $7938: $ee $fd
	jp   z, $a999                                    ; $793a: $ca $99 $a9

	ld   h, [hl]                                     ; $793d: $66
	ld   h, a                                        ; $793e: $67
	ld   b, e                                        ; $793f: $43
	ld   b, l                                        ; $7940: $45
	ld   h, h                                        ; $7941: $64
	ld   b, h                                        ; $7942: $44
	ld   d, l                                        ; $7943: $55
	ld   b, h                                        ; $7944: $44
	ld   b, [hl]                                     ; $7945: $46
	ld   h, l                                        ; $7946: $65
	ld   d, [hl]                                     ; $7947: $56
	ld   a, b                                        ; $7948: $78
	sbc  b                                           ; $7949: $98
	sbc  e                                           ; $794a: $9b
	xor  e                                           ; $794b: $ab
	cp   h                                           ; $794c: $bc
	call $cbcb                                       ; $794d: $cd $cb $cb
	xor  d                                           ; $7950: $aa
	xor  c                                           ; $7951: $a9
	sbc  d                                           ; $7952: $9a
	add  a                                           ; $7953: $87
	ld   h, l                                        ; $7954: $65
	ld   d, h                                        ; $7955: $54
	ld   hl, $1111                                   ; $7956: $21 $11 $11
	ld   de, $1212                                   ; $7959: $11 $12 $12
	ld   d, a                                        ; $795c: $57
	adc  b                                           ; $795d: $88
	xor  e                                           ; $795e: $ab
	xor  $df                                         ; $795f: $ee $df
	rst  $38                                         ; $7961: $ff
	rst  $28                                         ; $7962: $ef
	sbc  $ec                                         ; $7963: $de $ec
	cp   d                                           ; $7965: $ba
	sbc  c                                           ; $7966: $99
	xor  b                                           ; $7967: $a8
	sbc  b                                           ; $7968: $98
	ld   h, l                                        ; $7969: $65
	ld   sp, $1101                                   ; $796a: $31 $01 $11
	ld   de, $1111                                   ; $796d: $11 $11 $11
	ld   d, a                                        ; $7970: $57
	call $ffdd                                       ; $7971: $cd $dd $ff
	rst  $28                                         ; $7974: $ef
	rst  $38                                         ; $7975: $ff
	rst  $38                                         ; $7976: $ff
	db   $dd                                         ; $7977: $dd
	ld   a, [$99a8]                                  ; $7978: $fa $a8 $99
	sbc  b                                           ; $797b: $98
	adc  c                                           ; $797c: $89
	ld   h, d                                        ; $797d: $62
	ld   [de], a                                     ; $797e: $12
	ld   hl, $1111                                   ; $797f: $21 $11 $11
	ld   de, $be16                                   ; $7982: $11 $16 $be
	xor  e                                           ; $7985: $ab
	rst  $38                                         ; $7986: $ff
	db   $ed                                         ; $7987: $ed
	rst  $38                                         ; $7988: $ff
	rst  $38                                         ; $7989: $ff
	xor  $ff                                         ; $798a: $ee $ff
	cp   d                                           ; $798c: $ba
	sbc  e                                           ; $798d: $9b
	sbc  b                                           ; $798e: $98
	ld   [hl], a                                     ; $798f: $77
	ld   h, e                                        ; $7990: $63
	ld   de, $1111                                   ; $7991: $11 $11 $11
	ld   de, $2922                                   ; $7994: $11 $22 $29
	xor  h                                           ; $7997: $ac
	db   $fc                                         ; $7998: $fc
	sbc  l                                           ; $7999: $9d
	db   $fd                                         ; $799a: $fd
	rst  $38                                         ; $799b: $ff
	rst  $38                                         ; $799c: $ff
	cp   $ee                                         ; $799d: $fe $ee
	call z, $9998                                    ; $799f: $cc $98 $99
	add  [hl]                                        ; $79a2: $86
	ld   sp, $1111                                   ; $79a3: $31 $11 $11
	ld   de, $5411                                   ; $79a6: $11 $11 $54
	ld   c, e                                        ; $79a9: $4b
	ret  z                                           ; $79aa: $c8

	db   $fc                                         ; $79ab: $fc
	adc  a                                           ; $79ac: $8f
	xor  $ff                                         ; $79ad: $ee $ff
	rst  $38                                         ; $79af: $ff
	db   $ec                                         ; $79b0: $ec
	db   $fd                                         ; $79b1: $fd
	db   $ec                                         ; $79b2: $ec
	adc  b                                           ; $79b3: $88
	sbc  c                                           ; $79b4: $99
	ld   h, e                                        ; $79b5: $63
	ld   [de], a                                     ; $79b6: $12
	ld   hl, $1111                                   ; $79b7: $21 $11 $11
	ld   d, $27                                      ; $79ba: $16 $27
	reti                                             ; $79bc: $d9


	ld   a, h                                        ; $79bd: $7c
	reti                                             ; $79be: $d9


	ret  z                                           ; $79bf: $c8

	cp   a                                           ; $79c0: $bf
	rst  $38                                         ; $79c1: $ff
	rst  $38                                         ; $79c2: $ff
	rst  $38                                         ; $79c3: $ff
	call z, $99cb                                    ; $79c4: $cc $cb $99
	add  [hl]                                        ; $79c7: $86
	ld   h, d                                        ; $79c8: $62
	ld   de, $1121                                   ; $79c9: $11 $21 $11
	ld   de, $39a6                                   ; $79cc: $11 $a6 $39
	ld   a, a                                        ; $79cf: $7f
	rst  $20                                         ; $79d0: $e7
	cp   e                                           ; $79d1: $bb
	sbc  d                                           ; $79d2: $9a
	rst  $38                                         ; $79d3: $ff
	rst  $38                                         ; $79d4: $ff
	adc  $fe                                         ; $79d5: $ce $fe
	or   a                                           ; $79d7: $b7
	xor  e                                           ; $79d8: $ab
	ld   [hl], a                                     ; $79d9: $77
	add  l                                           ; $79da: $85
	ld   b, c                                        ; $79db: $41
	inc  de                                          ; $79dc: $13
	ld   de, $1b11                                   ; $79dd: $11 $11 $1b
	ld   [hl], d                                     ; $79e0: $72
	sbc  h                                           ; $79e1: $9c
	call c, $9aa7                                    ; $79e2: $dc $a7 $9a
	cp   [hl]                                        ; $79e5: $be
	rst  $38                                         ; $79e6: $ff
	rst  $38                                         ; $79e7: $ff
	call c, $cacb                                    ; $79e8: $dc $cb $ca
	xor  c                                           ; $79eb: $a9
	ld   a, b                                        ; $79ec: $78
	ld   b, c                                        ; $79ed: $41
	ld   de, $1122                                   ; $79ee: $11 $22 $11
	ld   de, $179a                                   ; $79f1: $11 $9a $17
	cp   l                                           ; $79f4: $bd
	rst  $10                                         ; $79f5: $d7
	ld   l, h                                        ; $79f6: $6c
	ld   hl, sp-$73                                  ; $79f7: $f8 $8d
	rst  $38                                         ; $79f9: $ff
	db   $fc                                         ; $79fa: $fc
	cp   [hl]                                        ; $79fb: $be
	jp   z, $9889                                    ; $79fc: $ca $89 $98

	ld   [hl], h                                     ; $79ff: $74
	ld   sp, $1124                                   ; $7a00: $31 $24 $11
	ld   de, $7217                                   ; $7a03: $11 $17 $72
	sbc  c                                           ; $7a06: $99
	xor  a                                           ; $7a07: $af
	xor  e                                           ; $7a08: $ab
	or   h                                           ; $7a09: $b4
	adc  a                                           ; $7a0a: $8f
	db   $fd                                         ; $7a0b: $fd
	rst  $38                                         ; $7a0c: $ff
	rst  $38                                         ; $7a0d: $ff
	ld   l, e                                        ; $7a0e: $6b
	cp   c                                           ; $7a0f: $b9
	sub  $69                                         ; $7a10: $d6 $69
	add  [hl]                                        ; $7a12: $86
	ld   de, $3124                                   ; $7a13: $11 $24 $31
	ld   de, $7757                                   ; $7a16: $11 $57 $77
	ld   d, [hl]                                     ; $7a19: $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a1a: $cf
	or   h                                           ; $7a1b: $b4
	ld   a, h                                        ; $7a1c: $7c
	rst  $38                                         ; $7a1d: $ff
	xor  h                                           ; $7a1e: $ac
	rst  $38                                         ; $7a1f: $ff
	db   $ed                                         ; $7a20: $ed
	adc  d                                           ; $7a21: $8a
	call z, Call_0a6_7694                            ; $7a22: $cc $94 $76
	ld   [hl], e                                     ; $7a25: $73
	ld   de, $1123                                   ; $7a26: $11 $23 $11
	inc  de                                          ; $7a29: $13
	or   a                                           ; $7a2a: $b7
	rla                                              ; $7a2b: $17
	sbc  h                                           ; $7a2c: $9c
	add  $6d                                         ; $7a2d: $c6 $6d
	rst  $30                                         ; $7a2f: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a30: $cf
	rst  $38                                         ; $7a31: $ff
	sbc  e                                           ; $7a32: $9b
	rst  $38                                         ; $7a33: $ff
	add  a                                           ; $7a34: $87
	xor  d                                           ; $7a35: $aa
	sub  l                                           ; $7a36: $95
	ld   d, e                                        ; $7a37: $53
	ld   d, l                                        ; $7a38: $55
	inc  de                                          ; $7a39: $13
	ld   sp, $5911                                   ; $7a3a: $31 $11 $59
	dec  [hl]                                        ; $7a3d: $35
	cp   d                                           ; $7a3e: $ba
	ld   d, [hl]                                     ; $7a3f: $56
	db   $fd                                         ; $7a40: $fd
	dec  d                                           ; $7a41: $15
	rst  $38                                         ; $7a42: $ff
	db   $fc                                         ; $7a43: $fc
	ld   e, l                                        ; $7a44: $5d
	cp   $b7                                         ; $7a45: $fe $b7
	cp   a                                           ; $7a47: $bf
	and  l                                           ; $7a48: $a5
	ld   b, l                                        ; $7a49: $45
	ld   [hl], h                                     ; $7a4a: $74
	ld   [hl-], a                                    ; $7a4b: $32
	ld   b, [hl]                                     ; $7a4c: $46
	ld   b, c                                        ; $7a4d: $41
	ld   de, $169b                                   ; $7a4e: $11 $9b $16
	xor  d                                           ; $7a51: $aa
	cp   $52                                         ; $7a52: $fe $52
	ld   a, b                                        ; $7a54: $78
	rst  $38                                         ; $7a55: $ff
	db   $db                                         ; $7a56: $db
	ld   a, h                                        ; $7a57: $7c
	ld   a, [$af68]                                  ; $7a58: $fa $68 $af
	add  d                                           ; $7a5b: $82
	ld   e, b                                        ; $7a5c: $58
	ld   b, c                                        ; $7a5d: $41
	inc  h                                           ; $7a5e: $24
	sub  h                                           ; $7a5f: $94
	ld   de, $d81b                                   ; $7a60: $11 $1b $d8
	ld   b, d                                        ; $7a63: $42
	ld   a, h                                        ; $7a64: $7c
	or   h                                           ; $7a65: $b4
	sbc  [hl]                                        ; $7a66: $9e
	xor  c                                           ; $7a67: $a9
	rst  JumpTable                                         ; $7a68: $df
	rst  $38                                         ; $7a69: $ff
	halt                                             ; $7a6a: $76
	ld   c, a                                        ; $7a6b: $4f
	ei                                               ; $7a6c: $fb
	ld   [hl], h                                     ; $7a6d: $74
	ld   a, b                                        ; $7a6e: $78
	ld   h, c                                        ; $7a6f: $61
	daa                                              ; $7a70: $27
	sub  a                                           ; $7a71: $97
	ld   de, $5513                                   ; $7a72: $11 $13 $55
	ld   h, l                                        ; $7a75: $65
	sbc  a                                           ; $7a76: $9f
	ld   sp, hl                                      ; $7a77: $f9
	ld   h, e                                        ; $7a78: $63
	ld   l, a                                        ; $7a79: $6f
	jp   hl                                          ; $7a7a: $e9


	rst  $38                                         ; $7a7b: $ff
	jp   z, $e77a                                    ; $7a7c: $ca $7a $e7

	sbc  d                                           ; $7a7f: $9a
	ld   a, d                                        ; $7a80: $7a
	add  e                                           ; $7a81: $83
	ld   [de], a                                     ; $7a82: $12
	ld   e, b                                        ; $7a83: $58
	ld   d, d                                        ; $7a84: $52
	inc  h                                           ; $7a85: $24
	ld   l, c                                        ; $7a86: $69
	ld   b, c                                        ; $7a87: $41
	ld   a, c                                        ; $7a88: $79
	db   $db                                         ; $7a89: $db
	ld   l, c                                        ; $7a8a: $69
	ret  z                                           ; $7a8b: $c8

	ld   e, l                                        ; $7a8c: $5d
	rst  $38                                         ; $7a8d: $ff
	cp   b                                           ; $7a8e: $b8
	sbc  a                                           ; $7a8f: $9f
	jp   c, $8a87                                    ; $7a90: $da $87 $8a

	ld   [hl], l                                     ; $7a93: $75
	ld   h, l                                        ; $7a94: $65
	ld   h, d                                        ; $7a95: $62
	inc  h                                           ; $7a96: $24
	ld   d, h                                        ; $7a97: $54
	ld   d, a                                        ; $7a98: $57
	ld   sp, $918f                                   ; $7a99: $31 $8f $91
	ld   c, a                                        ; $7a9c: $4f
	db   $f4                                         ; $7a9d: $f4
	dec  de                                          ; $7a9e: $1b
	db   $fd                                         ; $7a9f: $fd
	sub  h                                           ; $7aa0: $94
	rst  JumpTable                                         ; $7aa1: $df
	rst  ToBoot                                         ; $7aa2: $c7
	ld   l, a                                        ; $7aa3: $6f
	xor  d                                           ; $7aa4: $aa
	ld   d, d                                        ; $7aa5: $52
	ld   [hl], l                                     ; $7aa6: $75
	ld   d, l                                        ; $7aa7: $55
	ld   h, h                                        ; $7aa8: $64
	ld   d, e                                        ; $7aa9: $53
	ld   b, d                                        ; $7aaa: $42
	add  hl, sp                                      ; $7aab: $39
	ld   h, [hl]                                     ; $7aac: $66
	and  l                                           ; $7aad: $a5
	sbc  a                                           ; $7aae: $9f
	sub  a                                           ; $7aaf: $97
	ld   l, b                                        ; $7ab0: $68
	cp   a                                           ; $7ab1: $bf
	pop  af                                          ; $7ab2: $f1
	rst  JumpTable                                         ; $7ab3: $df
	ld   hl, sp+$16                                  ; $7ab4: $f8 $16
	cp   [hl]                                        ; $7ab6: $be
	ld   [hl], a                                     ; $7ab7: $77
	inc  h                                           ; $7ab8: $24
	sub  a                                           ; $7ab9: $97
	ld   b, c                                        ; $7aba: $41
	ld   h, a                                        ; $7abb: $67
	ld   h, h                                        ; $7abc: $64
	ld   h, l                                        ; $7abd: $65
	dec  [hl]                                        ; $7abe: $35
	ld   a, c                                        ; $7abf: $79
	sbc  e                                           ; $7ac0: $9b
	ld   d, h                                        ; $7ac1: $54
	cp   h                                           ; $7ac2: $bc
	xor  d                                           ; $7ac3: $aa
	xor  a                                           ; $7ac4: $af
	di                                               ; $7ac5: $f3
	adc  e                                           ; $7ac6: $8b
	adc  $5a                                         ; $7ac7: $ce $5a
	sub  e                                           ; $7ac9: $93
	ld   b, [hl]                                     ; $7aca: $46
	adc  b                                           ; $7acb: $88
	ld   [hl], l                                     ; $7acc: $75
	ld   d, h                                        ; $7acd: $54
	ld   h, [hl]                                     ; $7ace: $66
	add  hl, sp                                      ; $7acf: $39

jr_0a6_7ad0:
	ld   d, c                                        ; $7ad0: $51
	jr   c, jr_0a6_7ad0                              ; $7ad1: $38 $fd

	ld   [hl-], a                                    ; $7ad3: $32
	ld   l, a                                        ; $7ad4: $6f
	push af                                          ; $7ad5: $f5
	ccf                                              ; $7ad6: $3f
	ei                                               ; $7ad7: $fb
	rla                                              ; $7ad8: $17
	rst  $38                                         ; $7ad9: $ff
	ld   [hl], c                                     ; $7ada: $71
	ld   a, b                                        ; $7adb: $78
	sub  a                                           ; $7adc: $97
	ld   d, l                                        ; $7add: $55
	ld   [hl], $59                                   ; $7ade: $36 $59
	ld   h, c                                        ; $7ae0: $61
	ld   b, l                                        ; $7ae1: $45
	ret  z                                           ; $7ae2: $c8

	ld   de, $d4af                                   ; $7ae3: $11 $af $d4
	ld   [hl+], a                                    ; $7ae6: $22
	rst  $38                                         ; $7ae7: $ff
	inc  de                                          ; $7ae8: $13
	rst  $38                                         ; $7ae9: $ff
	ld   h, e                                        ; $7aea: $63
	xor  a                                           ; $7aeb: $af
	cp   c                                           ; $7aec: $b9
	ld   de, $54fe                                   ; $7aed: $11 $fe $54
	ld   d, a                                        ; $7af0: $57
	add  [hl]                                        ; $7af1: $86
	dec  [hl]                                        ; $7af2: $35
	ld   e, c                                        ; $7af3: $59
	sub  h                                           ; $7af4: $94
	ld   [hl-], a                                    ; $7af5: $32
	ld   l, [hl]                                     ; $7af6: $6e
	reti                                             ; $7af7: $d9


	ld   b, h                                        ; $7af8: $44
	set  5, l                                        ; $7af9: $cb $ed
	add  hl, hl                                      ; $7afb: $29
	db   $fd                                         ; $7afc: $fd
	sub  a                                           ; $7afd: $97
	inc  l                                           ; $7afe: $2c
	push hl                                          ; $7aff: $e5
	ld   b, l                                        ; $7b00: $45
	sbc  c                                           ; $7b01: $99
	and  [hl]                                        ; $7b02: $a6
	dec  [hl]                                        ; $7b03: $35
	ld   l, c                                        ; $7b04: $69
	ld   [hl], a                                     ; $7b05: $77
	ld   d, l                                        ; $7b06: $55
	ld   d, a                                        ; $7b07: $57
	ld   d, [hl]                                     ; $7b08: $56
	db   $fc                                         ; $7b09: $fc
	or   d                                           ; $7b0a: $b2
	dec  de                                          ; $7b0b: $1b
	cp   $7c                                         ; $7b0c: $fe $7c
	inc  a                                           ; $7b0e: $3c
	and  h                                           ; $7b0f: $a4
	rst  $30                                         ; $7b10: $f7
	ld   [hl], a                                     ; $7b11: $77
	and  l                                           ; $7b12: $a5
	ld   a, b                                        ; $7b13: $78
	dec  sp                                          ; $7b14: $3b
	ld   d, $8a                                      ; $7b15: $16 $8a
	sub  h                                           ; $7b17: $94
	ld   h, h                                        ; $7b18: $64
	add  $88                                         ; $7b19: $c6 $88
	sbc  h                                           ; $7b1b: $9c
	rla                                              ; $7b1c: $17
	rst  $28                                         ; $7b1d: $ef
	or   h                                           ; $7b1e: $b4
	adc  l                                           ; $7b1f: $8d
	or   l                                           ; $7b20: $b5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b21: $cf
	and  a                                           ; $7b22: $a7
	inc  sp                                          ; $7b23: $33
	adc  l                                           ; $7b24: $8d
	ld   [hl], c                                     ; $7b25: $71
	sbc  l                                           ; $7b26: $9d
	sub  l                                           ; $7b27: $95
	daa                                              ; $7b28: $27
	sub  a                                           ; $7b29: $97
	ld   h, $ab                                      ; $7b2a: $26 $ab
	ld   h, a                                        ; $7b2c: $67
	db   $fc                                         ; $7b2d: $fc
	ld   [hl-], a                                    ; $7b2e: $32
	ld   a, a                                        ; $7b2f: $7f
	rst  $30                                         ; $7b30: $f7
	xor  d                                           ; $7b31: $aa
	sub  $58                                         ; $7b32: $d6 $58
	ld   a, a                                        ; $7b34: $7f
	or   l                                           ; $7b35: $b5
	ld   b, h                                        ; $7b36: $44
	adc  [hl]                                        ; $7b37: $8e
	ld   d, c                                        ; $7b38: $51
	and  l                                           ; $7b39: $a5
	adc  d                                           ; $7b3a: $8a
	ld   b, a                                        ; $7b3b: $47
	add  l                                           ; $7b3c: $85
	ld   l, c                                        ; $7b3d: $69
	ld   l, d                                        ; $7b3e: $6a
	jp   hl                                          ; $7b3f: $e9


	sbc  b                                           ; $7b40: $98
	sbc  e                                           ; $7b41: $9b
	ld   c, e                                        ; $7b42: $4b
	rst  ToBoot                                         ; $7b43: $c7
	xor  d                                           ; $7b44: $aa
	adc  c                                           ; $7b45: $89
	and  l                                           ; $7b46: $a5
	ld   h, a                                        ; $7b47: $67
	sbc  e                                           ; $7b48: $9b
	ld   d, [hl]                                     ; $7b49: $56
	ld   e, d                                        ; $7b4a: $5a
	push de                                          ; $7b4b: $d5
	ld   b, a                                        ; $7b4c: $47
	and  [hl]                                        ; $7b4d: $a6
	ld   [hl], a                                     ; $7b4e: $77
	ld   a, h                                        ; $7b4f: $7c
	ld   d, a                                        ; $7b50: $57
	ld   h, l                                        ; $7b51: $65
	jp   hl                                          ; $7b52: $e9


	cp   d                                           ; $7b53: $ba
	sbc  b                                           ; $7b54: $98
	ld   e, l                                        ; $7b55: $5d
	sub  l                                           ; $7b56: $95
	jp   z, $36b7                                    ; $7b57: $ca $b7 $36

	ld   a, e                                        ; $7b5a: $7b
	ld   h, h                                        ; $7b5b: $64
	ld   l, c                                        ; $7b5c: $69
	rst  ToBoot                                         ; $7b5d: $c7
	ld   h, l                                        ; $7b5e: $65
	cp   d                                           ; $7b5f: $ba
	ld   b, h                                        ; $7b60: $44
	ld   e, c                                        ; $7b61: $59
	jp   z, $8b78                                    ; $7b62: $ca $78 $8b

	ld   d, a                                        ; $7b65: $57
	xor  c                                           ; $7b66: $a9
	call c, $8797                                    ; $7b67: $dc $97 $87
	add  h                                           ; $7b6a: $84
	ld   e, e                                        ; $7b6b: $5b
	ld   a, d                                        ; $7b6c: $7a
	ld   d, [hl]                                     ; $7b6d: $56
	cp   c                                           ; $7b6e: $b9
	ld   h, l                                        ; $7b6f: $65
	adc  b                                           ; $7b70: $88
	and  [hl]                                        ; $7b71: $a6
	ld   b, a                                        ; $7b72: $47
	ld   h, [hl]                                     ; $7b73: $66
	adc  d                                           ; $7b74: $8a
	ret                                              ; $7b75: $c9


	ld   [hl], a                                     ; $7b76: $77
	sbc  e                                           ; $7b77: $9b
	ld   h, a                                        ; $7b78: $67
	cp   e                                           ; $7b79: $bb
	ld   [hl], l                                     ; $7b7a: $75
	sbc  c                                           ; $7b7b: $99
	sub  [hl]                                        ; $7b7c: $96
	ld   a, b                                        ; $7b7d: $78
	xor  d                                           ; $7b7e: $aa
	halt                                             ; $7b7f: $76
	ld   l, b                                        ; $7b80: $68
	ld   a, c                                        ; $7b81: $79
	ld   d, [hl]                                     ; $7b82: $56
	sub  a                                           ; $7b83: $97
	add  [hl]                                        ; $7b84: $86
	ld   e, c                                        ; $7b85: $59
	cp   d                                           ; $7b86: $ba
	ld   h, l                                        ; $7b87: $65
	ld   l, e                                        ; $7b88: $6b
	rst  $10                                         ; $7b89: $d7
	ld   e, b                                        ; $7b8a: $58
	sub  a                                           ; $7b8b: $97
	ld   h, l                                        ; $7b8c: $65
	xor  e                                           ; $7b8d: $ab
	add  l                                           ; $7b8e: $85
	ld   b, [hl]                                     ; $7b8f: $46
	xor  e                                           ; $7b90: $ab
	ld   h, [hl]                                     ; $7b91: $66
	ld   a, b                                        ; $7b92: $78
	and  a                                           ; $7b93: $a7
	ld   h, l                                        ; $7b94: $65
	adc  c                                           ; $7b95: $89
	ld   [hl], l                                     ; $7b96: $75
	ld   a, c                                        ; $7b97: $79
	adc  b                                           ; $7b98: $88
	ld   h, [hl]                                     ; $7b99: $66
	adc  d                                           ; $7b9a: $8a
	halt                                             ; $7b9b: $76
	adc  b                                           ; $7b9c: $88
	and  a                                           ; $7b9d: $a7
	ld   [hl], a                                     ; $7b9e: $77
	ld   d, a                                        ; $7b9f: $57
	ld   [hl], a                                     ; $7ba0: $77
	add  a                                           ; $7ba1: $87
	ld   l, b                                        ; $7ba2: $68
	ld   [hl], a                                     ; $7ba3: $77
	ld   h, [hl]                                     ; $7ba4: $66
	ld   [hl], l                                     ; $7ba5: $75
	ld   h, a                                        ; $7ba6: $67
	sbc  b                                           ; $7ba7: $98
	halt                                             ; $7ba8: $76
	ld   h, a                                        ; $7ba9: $67
	halt                                             ; $7baa: $76
	ld   d, a                                        ; $7bab: $57
	ld   [hl], a                                     ; $7bac: $77
	ld   [hl], a                                     ; $7bad: $77
	ld   [hl], l                                     ; $7bae: $75
	ld   d, h                                        ; $7baf: $54
	ld   d, l                                        ; $7bb0: $55
	ld   h, a                                        ; $7bb1: $67
	ld   h, a                                        ; $7bb2: $67
	halt                                             ; $7bb3: $76
	ld   [hl], a                                     ; $7bb4: $77
	adc  b                                           ; $7bb5: $88
	adc  d                                           ; $7bb6: $8a
	sbc  e                                           ; $7bb7: $9b
	sbc  b                                           ; $7bb8: $98
	xor  b                                           ; $7bb9: $a8
	xor  c                                           ; $7bba: $a9
	xor  c                                           ; $7bbb: $a9
	sbc  b                                           ; $7bbc: $98
	xor  c                                           ; $7bbd: $a9
	sbc  d                                           ; $7bbe: $9a
	sbc  d                                           ; $7bbf: $9a
	xor  d                                           ; $7bc0: $aa
	xor  d                                           ; $7bc1: $aa
	cp   e                                           ; $7bc2: $bb
	xor  e                                           ; $7bc3: $ab
	call z, $babb                                    ; $7bc4: $cc $bb $ba
	sbc  d                                           ; $7bc7: $9a
	cp   e                                           ; $7bc8: $bb
	xor  d                                           ; $7bc9: $aa
	xor  d                                           ; $7bca: $aa
	xor  d                                           ; $7bcb: $aa
	xor  d                                           ; $7bcc: $aa
	xor  d                                           ; $7bcd: $aa
	sbc  c                                           ; $7bce: $99
	sbc  d                                           ; $7bcf: $9a
	sbc  c                                           ; $7bd0: $99
	xor  c                                           ; $7bd1: $a9
	sbc  d                                           ; $7bd2: $9a
	xor  c                                           ; $7bd3: $a9
	sbc  c                                           ; $7bd4: $99
	sbc  d                                           ; $7bd5: $9a
	xor  b                                           ; $7bd6: $a8
	sbc  c                                           ; $7bd7: $99
	sbc  b                                           ; $7bd8: $98
	adc  b                                           ; $7bd9: $88
	adc  b                                           ; $7bda: $88
	ld   [hl], a                                     ; $7bdb: $77
	ld   a, b                                        ; $7bdc: $78
	adc  b                                           ; $7bdd: $88
	adc  b                                           ; $7bde: $88
	adc  c                                           ; $7bdf: $89
	adc  b                                           ; $7be0: $88
	adc  b                                           ; $7be1: $88
	adc  c                                           ; $7be2: $89
	adc  b                                           ; $7be3: $88
	sbc  b                                           ; $7be4: $98
	add  a                                           ; $7be5: $87
	ld   a, b                                        ; $7be6: $78
	adc  b                                           ; $7be7: $88
	ld   [hl], a                                     ; $7be8: $77
	ld   [hl], a                                     ; $7be9: $77
	ld   [hl], a                                     ; $7bea: $77
	ld   a, b                                        ; $7beb: $78
	adc  b                                           ; $7bec: $88
	adc  b                                           ; $7bed: $88
	adc  b                                           ; $7bee: $88
	adc  b                                           ; $7bef: $88
	adc  b                                           ; $7bf0: $88
	adc  b                                           ; $7bf1: $88
	adc  b                                           ; $7bf2: $88
	ld   [hl], a                                     ; $7bf3: $77
	ld   [hl], a                                     ; $7bf4: $77
	ld   [hl], a                                     ; $7bf5: $77
	ld   [hl], a                                     ; $7bf6: $77
	adc  b                                           ; $7bf7: $88
	adc  b                                           ; $7bf8: $88
	ld   [hl], a                                     ; $7bf9: $77
	adc  b                                           ; $7bfa: $88
	adc  b                                           ; $7bfb: $88
	adc  b                                           ; $7bfc: $88
	add  a                                           ; $7bfd: $87
	ld   [hl], a                                     ; $7bfe: $77
	ld   [hl], a                                     ; $7bff: $77
	ld   [hl], a                                     ; $7c00: $77
	ld   [hl], a                                     ; $7c01: $77
	ld   [hl], a                                     ; $7c02: $77
	ld   [hl], a                                     ; $7c03: $77
	adc  b                                           ; $7c04: $88
	sbc  b                                           ; $7c05: $98
	sbc  c                                           ; $7c06: $99
	sbc  b                                           ; $7c07: $98
	sbc  b                                           ; $7c08: $98
	adc  b                                           ; $7c09: $88
	sbc  b                                           ; $7c0a: $98
	adc  b                                           ; $7c0b: $88
	ld   [hl], a                                     ; $7c0c: $77
	ld   [hl], a                                     ; $7c0d: $77
	ld   [hl], a                                     ; $7c0e: $77
	ld   h, [hl]                                     ; $7c0f: $66
	ld   [hl], a                                     ; $7c10: $77
	ld   [hl], a                                     ; $7c11: $77
	adc  b                                           ; $7c12: $88
	sbc  b                                           ; $7c13: $98
	sbc  c                                           ; $7c14: $99
	adc  c                                           ; $7c15: $89
	adc  c                                           ; $7c16: $89
	adc  b                                           ; $7c17: $88
	adc  b                                           ; $7c18: $88
	ld   [hl], a                                     ; $7c19: $77
	ld   [hl], a                                     ; $7c1a: $77
	ld   [hl], a                                     ; $7c1b: $77
	ld   [hl], a                                     ; $7c1c: $77
	ld   [hl], a                                     ; $7c1d: $77
	ld   [hl], a                                     ; $7c1e: $77
	adc  b                                           ; $7c1f: $88
	adc  c                                           ; $7c20: $89
	sbc  c                                           ; $7c21: $99
	sbc  c                                           ; $7c22: $99
	sbc  b                                           ; $7c23: $98
	sbc  b                                           ; $7c24: $98
	adc  b                                           ; $7c25: $88
	add  a                                           ; $7c26: $87
	ld   [hl], a                                     ; $7c27: $77
	ld   [hl], a                                     ; $7c28: $77
	ld   a, b                                        ; $7c29: $78
	ld   [hl], a                                     ; $7c2a: $77
	ld   [hl], a                                     ; $7c2b: $77
	adc  b                                           ; $7c2c: $88
	adc  b                                           ; $7c2d: $88
	adc  c                                           ; $7c2e: $89
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
	ld   a, b                                        ; $7c39: $78
	adc  b                                           ; $7c3a: $88
	ld   a, b                                        ; $7c3b: $78
	add  a                                           ; $7c3c: $87
	ld   [hl], a                                     ; $7c3d: $77
	adc  b                                           ; $7c3e: $88
	adc  b                                           ; $7c3f: $88
	adc  b                                           ; $7c40: $88
	adc  b                                           ; $7c41: $88
	adc  b                                           ; $7c42: $88
	adc  b                                           ; $7c43: $88
	adc  b                                           ; $7c44: $88
	adc  b                                           ; $7c45: $88
	adc  b                                           ; $7c46: $88
	add  a                                           ; $7c47: $87
	ld   [hl], a                                     ; $7c48: $77
	ld   [hl], a                                     ; $7c49: $77
	ld   [hl], a                                     ; $7c4a: $77
	ld   [hl], a                                     ; $7c4b: $77
	ld   a, b                                        ; $7c4c: $78
	adc  b                                           ; $7c4d: $88
	adc  b                                           ; $7c4e: $88
	adc  b                                           ; $7c4f: $88
	adc  b                                           ; $7c50: $88
	adc  b                                           ; $7c51: $88
	add  a                                           ; $7c52: $87
	ld   [hl], a                                     ; $7c53: $77
	ld   [hl], a                                     ; $7c54: $77
	ld   [hl], a                                     ; $7c55: $77
	ld   [hl], a                                     ; $7c56: $77
	ld   [hl], a                                     ; $7c57: $77
	ld   [hl], a                                     ; $7c58: $77
	ld   [hl], a                                     ; $7c59: $77
	adc  b                                           ; $7c5a: $88
	adc  b                                           ; $7c5b: $88
	adc  b                                           ; $7c5c: $88
	add  a                                           ; $7c5d: $87
	ld   [hl], a                                     ; $7c5e: $77
	ld   [hl], a                                     ; $7c5f: $77
	ld   [hl], a                                     ; $7c60: $77
	ld   [hl], a                                     ; $7c61: $77
	ld   [hl], a                                     ; $7c62: $77
	ld   [hl], a                                     ; $7c63: $77
	ld   [hl], a                                     ; $7c64: $77
	ld   a, b                                        ; $7c65: $78
	ld   [hl], a                                     ; $7c66: $77
	adc  b                                           ; $7c67: $88
	ld   [hl], a                                     ; $7c68: $77
	ld   [hl], a                                     ; $7c69: $77
	ld   [hl], a                                     ; $7c6a: $77
	ld   [hl], a                                     ; $7c6b: $77
	ld   [hl], a                                     ; $7c6c: $77
	ld   [hl], a                                     ; $7c6d: $77
	ld   [hl], a                                     ; $7c6e: $77
	ld   a, b                                        ; $7c6f: $78
	ld   a, b                                        ; $7c70: $78
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
	adc  c                                           ; $7e1e: $89
	adc  b                                           ; $7e1f: $88
	adc  b                                           ; $7e20: $88
	sbc  b                                           ; $7e21: $98
	sbc  b                                           ; $7e22: $98
	ld   a, b                                        ; $7e23: $78
	adc  b                                           ; $7e24: $88
	adc  b                                           ; $7e25: $88
	adc  b                                           ; $7e26: $88
	adc  b                                           ; $7e27: $88
	adc  b                                           ; $7e28: $88
	sbc  c                                           ; $7e29: $99
	adc  b                                           ; $7e2a: $88
	sbc  c                                           ; $7e2b: $99
	adc  b                                           ; $7e2c: $88
	adc  c                                           ; $7e2d: $89
	adc  b                                           ; $7e2e: $88
	adc  c                                           ; $7e2f: $89
	sbc  c                                           ; $7e30: $99
	sbc  b                                           ; $7e31: $98
	ld   a, b                                        ; $7e32: $78
	cp   d                                           ; $7e33: $ba
	ld   a, d                                        ; $7e34: $7a
	call $9ba6                                       ; $7e35: $cd $a6 $9b
	or   a                                           ; $7e38: $b7
	ld   a, d                                        ; $7e39: $7a
	sub  [hl]                                        ; $7e3a: $96
	ld   b, h                                        ; $7e3b: $44
	ld   l, b                                        ; $7e3c: $68
	adc  b                                           ; $7e3d: $88
	ld   l, c                                        ; $7e3e: $69
	xor  c                                           ; $7e3f: $a9
	sbc  b                                           ; $7e40: $98
	call $a8b9                                       ; $7e41: $cd $b9 $a8
	halt                                             ; $7e44: $76
	ld   d, [hl]                                     ; $7e45: $56
	ld   d, [hl]                                     ; $7e46: $56
	ld   h, a                                        ; $7e47: $67
	halt                                             ; $7e48: $76
	sbc  e                                           ; $7e49: $9b
	add  a                                           ; $7e4a: $87
	adc  b                                           ; $7e4b: $88
	sub  a                                           ; $7e4c: $97
	ld   l, b                                        ; $7e4d: $68
	adc  b                                           ; $7e4e: $88
	ld   h, [hl]                                     ; $7e4f: $66
	halt                                             ; $7e50: $76
	ld   h, [hl]                                     ; $7e51: $66
	ld   [hl], a                                     ; $7e52: $77
	ld   [hl], a                                     ; $7e53: $77
	ld   [hl], a                                     ; $7e54: $77
	halt                                             ; $7e55: $76
	ld   [hl], a                                     ; $7e56: $77
	ld   [hl], a                                     ; $7e57: $77
	ld   [hl], a                                     ; $7e58: $77
	halt                                             ; $7e59: $76
	ld   h, a                                        ; $7e5a: $67
	ld   [hl], a                                     ; $7e5b: $77
	ld   [hl], a                                     ; $7e5c: $77
	adc  b                                           ; $7e5d: $88
	ld   [hl], a                                     ; $7e5e: $77
	ld   [hl], a                                     ; $7e5f: $77
	ld   [hl], a                                     ; $7e60: $77
	ld   [hl], a                                     ; $7e61: $77
	adc  b                                           ; $7e62: $88
	ld   [hl], a                                     ; $7e63: $77
	adc  c                                           ; $7e64: $89
	add  a                                           ; $7e65: $87
	adc  c                                           ; $7e66: $89
	ld   [hl], a                                     ; $7e67: $77
	adc  c                                           ; $7e68: $89
	add  a                                           ; $7e69: $87
	add  a                                           ; $7e6a: $87
	ld   h, [hl]                                     ; $7e6b: $66
	ld   a, b                                        ; $7e6c: $78
	sbc  b                                           ; $7e6d: $98
	sbc  c                                           ; $7e6e: $99
	adc  b                                           ; $7e6f: $88
	ld   h, l                                        ; $7e70: $65
	ld   a, d                                        ; $7e71: $7a
	add  a                                           ; $7e72: $87
	ld   [hl], a                                     ; $7e73: $77
	adc  b                                           ; $7e74: $88
	ld   [hl], a                                     ; $7e75: $77
	adc  c                                           ; $7e76: $89
	add  l                                           ; $7e77: $85
	ld   l, b                                        ; $7e78: $68
	xor  d                                           ; $7e79: $aa
	ld   a, b                                        ; $7e7a: $78
	ld   a, b                                        ; $7e7b: $78
	sub  a                                           ; $7e7c: $97
	adc  c                                           ; $7e7d: $89
	sbc  b                                           ; $7e7e: $98
	adc  c                                           ; $7e7f: $89
	xor  d                                           ; $7e80: $aa
	sub  a                                           ; $7e81: $97
	ld   l, b                                        ; $7e82: $68
	add  a                                           ; $7e83: $87
	sbc  l                                           ; $7e84: $9d
	xor  b                                           ; $7e85: $a8
	ld   [hl], a                                     ; $7e86: $77
	sbc  b                                           ; $7e87: $98
	sbc  b                                           ; $7e88: $98
	halt                                             ; $7e89: $76
	adc  b                                           ; $7e8a: $88
	ld   [hl], a                                     ; $7e8b: $77
	adc  c                                           ; $7e8c: $89
	ld   h, l                                        ; $7e8d: $65
	ld   l, d                                        ; $7e8e: $6a
	xor  c                                           ; $7e8f: $a9
	ld   h, [hl]                                     ; $7e90: $66
	ld   h, a                                        ; $7e91: $67
	sbc  c                                           ; $7e92: $99
	ld   [hl], a                                     ; $7e93: $77
	and  a                                           ; $7e94: $a7
	adc  d                                           ; $7e95: $8a
	and  a                                           ; $7e96: $a7
	adc  e                                           ; $7e97: $8b
	cp   h                                           ; $7e98: $bc
	sbc  c                                           ; $7e99: $99
	adc  c                                           ; $7e9a: $89
	sbc  e                                           ; $7e9b: $9b
	res  3, c                                        ; $7e9c: $cb $99
	ret                                              ; $7e9e: $c9


	add  l                                           ; $7e9f: $85
	ld   a, e                                        ; $7ea0: $7b
	sbc  c                                           ; $7ea1: $99
	ld   l, b                                        ; $7ea2: $68
	add  a                                           ; $7ea3: $87
	ld   d, l                                        ; $7ea4: $55
	sub  l                                           ; $7ea5: $95
	ld   d, e                                        ; $7ea6: $53
	inc  sp                                          ; $7ea7: $33
	dec  h                                           ; $7ea8: $25
	ld   sp, $465c                                   ; $7ea9: $31 $5c $46
	cp   d                                           ; $7eac: $ba
	jp   z, $c9ae                                    ; $7ead: $ca $ae $c9

	adc  $bd                                         ; $7eb0: $ce $bd
	set  5, l                                        ; $7eb2: $cb $ed
	sbc  h                                           ; $7eb4: $9c
	sbc  $da                                         ; $7eb5: $de $da
	sbc  h                                           ; $7eb7: $9c
	ret  z                                           ; $7eb8: $c8

	ld   [hl], a                                     ; $7eb9: $77
	ld   a, b                                        ; $7eba: $78
	ld   h, h                                        ; $7ebb: $64
	ld   b, l                                        ; $7ebc: $45
	ld   b, d                                        ; $7ebd: $42
	ld   bc, $2311                                   ; $7ebe: $01 $11 $23
	ld   d, $b7                                      ; $7ec1: $16 $b7
	ld   e, e                                        ; $7ec3: $5b
	db   $fd                                         ; $7ec4: $fd
	ld   [hl], a                                     ; $7ec5: $77
	xor  $bc                                         ; $7ec6: $ee $bc
	xor  [hl]                                        ; $7ec8: $ae
	db   $ec                                         ; $7ec9: $ec
	sbc  e                                           ; $7eca: $9b
	ld   [$dcb9], a                                  ; $7ecb: $ea $b9 $dc
	call z, Call_0a6_59a7                            ; $7ece: $cc $a7 $59
	ld   h, l                                        ; $7ed1: $65
	inc  [hl]                                        ; $7ed2: $34
	ld   h, l                                        ; $7ed3: $65
	ld   hl, $1131                                   ; $7ed4: $21 $31 $11
	dec  [hl]                                        ; $7ed7: $35
	ld   b, h                                        ; $7ed8: $44
	ld   e, c                                        ; $7ed9: $59
	adc  $b8                                         ; $7eda: $ce $b8
	cp   d                                           ; $7edc: $ba
	db   $db                                         ; $7edd: $db
	db   $dd                                         ; $7ede: $dd
	xor  l                                           ; $7edf: $ad
	set  1, [hl]                                     ; $7ee0: $cb $ce
	xor  e                                           ; $7ee2: $ab
	cp   c                                           ; $7ee3: $b9
	call z, $d89a                                    ; $7ee4: $cc $9a $d8
	ld   d, [hl]                                     ; $7ee7: $56
	ld   d, [hl]                                     ; $7ee8: $56
	ld   [hl], e                                     ; $7ee9: $73
	dec  h                                           ; $7eea: $25
	ld   b, d                                        ; $7eeb: $42
	ld   hl, $3511                                   ; $7eec: $21 $11 $35
	inc  d                                           ; $7eef: $14
	sbc  d                                           ; $7ef0: $9a
	xor  h                                           ; $7ef1: $ac
	xor  d                                           ; $7ef2: $aa
	jp   hl                                          ; $7ef3: $e9


	call $cbed                                       ; $7ef4: $cd $ed $cb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ef7: $cf
	adc  e                                           ; $7ef8: $8b
	xor  l                                           ; $7ef9: $ad
	cp   c                                           ; $7efa: $b9
	jp   z, $a7c7                                    ; $7efb: $ca $c7 $a7

	add  a                                           ; $7efe: $87
	ld   b, a                                        ; $7eff: $47
	ld   d, l                                        ; $7f00: $55
	ld   [de], a                                     ; $7f01: $12
	inc  hl                                          ; $7f02: $23
	ld   de, $7512                                   ; $7f03: $11 $12 $75
	ld   d, $ca                                      ; $7f06: $16 $ca
	sbc  h                                           ; $7f08: $9c
	cp   d                                           ; $7f09: $ba
	jp   c, $fdad                                    ; $7f0a: $da $ad $fd

	xor  l                                           ; $7f0d: $ad
	call z, $bacb                                    ; $7f0e: $cc $cb $ba
	xor  b                                           ; $7f11: $a8
	xor  d                                           ; $7f12: $aa
	xor  e                                           ; $7f13: $ab
	add  a                                           ; $7f14: $87
	ld   h, h                                        ; $7f15: $64
	ld   b, a                                        ; $7f16: $47
	ld   b, d                                        ; $7f17: $42
	ld   b, e                                        ; $7f18: $43
	inc  sp                                          ; $7f19: $33
	ld   de, $3213                                   ; $7f1a: $11 $13 $32
	adc  d                                           ; $7f1d: $8a
	jp   z, $acbd                                    ; $7f1e: $ca $bd $ac

	xor  b                                           ; $7f21: $a8
	call c, $dbcb                                    ; $7f22: $dc $cb $db
	cp   l                                           ; $7f25: $bd
	sbc  d                                           ; $7f26: $9a
	cp   h                                           ; $7f27: $bc
	xor  e                                           ; $7f28: $ab
	cp   c                                           ; $7f29: $b9
	or   a                                           ; $7f2a: $b7
	ld   h, l                                        ; $7f2b: $65
	ld   d, [hl]                                     ; $7f2c: $56
	ld   d, e                                        ; $7f2d: $53
	ld   [hl], $51                                   ; $7f2e: $36 $51
	ld   de, $2411                                   ; $7f30: $11 $11 $24
	ld   b, a                                        ; $7f33: $47
	xor  d                                           ; $7f34: $aa
	cp   e                                           ; $7f35: $bb
	xor  e                                           ; $7f36: $ab
	xor  e                                           ; $7f37: $ab
	call $eabd                                       ; $7f38: $cd $bd $ea
	call c, $cbbb                                    ; $7f3b: $dc $bb $cb
	xor  e                                           ; $7f3e: $ab
	sbc  h                                           ; $7f3f: $9c
	sbc  d                                           ; $7f40: $9a
	add  l                                           ; $7f41: $85
	ld   d, l                                        ; $7f42: $55
	halt                                             ; $7f43: $76
	ld   h, h                                        ; $7f44: $64
	ld   b, e                                        ; $7f45: $43
	ld   de, $1411                                   ; $7f46: $11 $11 $14
	ld   b, e                                        ; $7f49: $43
	adc  d                                           ; $7f4a: $8a
	xor  e                                           ; $7f4b: $ab
	reti                                             ; $7f4c: $d9


	xor  l                                           ; $7f4d: $ad
	xor  h                                           ; $7f4e: $ac
	db   $ed                                         ; $7f4f: $ed
	xor  e                                           ; $7f50: $ab
	call $adba                                       ; $7f51: $cd $ba $ad
	reti                                             ; $7f54: $d9


	xor  d                                           ; $7f55: $aa
	ret                                              ; $7f56: $c9


	ld   [hl], a                                     ; $7f57: $77
	sub  a                                           ; $7f58: $97
	inc  [hl]                                        ; $7f59: $34
	ld   h, [hl]                                     ; $7f5a: $66
	ld   b, h                                        ; $7f5b: $44
	inc  hl                                          ; $7f5c: $23
	ld   sp, $3411                                   ; $7f5d: $31 $11 $34
	ld   c, c                                        ; $7f60: $49
	push bc                                          ; $7f61: $c5
	ld   e, a                                        ; $7f62: $5f
	ei                                               ; $7f63: $fb
	sbc  h                                           ; $7f64: $9c
	xor  [hl]                                        ; $7f65: $ae
	reti                                             ; $7f66: $d9


	cp   a                                           ; $7f67: $bf
	ld   sp, hl                                      ; $7f68: $f9
	xor  c                                           ; $7f69: $a9
	cp   e                                           ; $7f6a: $bb
	xor  d                                           ; $7f6b: $aa
	xor  e                                           ; $7f6c: $ab
	sbc  c                                           ; $7f6d: $99
	ld   h, a                                        ; $7f6e: $67
	ld   d, [hl]                                     ; $7f6f: $56
	ld   h, h                                        ; $7f70: $64
	ld   b, h                                        ; $7f71: $44
	ld   d, h                                        ; $7f72: $54
	ld   sp, $1211                                   ; $7f73: $31 $11 $12
	ld   [hl-], a                                    ; $7f76: $32
	ld   l, h                                        ; $7f77: $6c
	and  a                                           ; $7f78: $a7
	xor  [hl]                                        ; $7f79: $ae
	cp   d                                           ; $7f7a: $ba
	xor  l                                           ; $7f7b: $ad
	db   $ec                                         ; $7f7c: $ec
	cp   d                                           ; $7f7d: $ba
	db   $ed                                         ; $7f7e: $ed
	xor  e                                           ; $7f7f: $ab
	xor  d                                           ; $7f80: $aa
	xor  c                                           ; $7f81: $a9
	adc  d                                           ; $7f82: $8a
	sbc  c                                           ; $7f83: $99
	xor  c                                           ; $7f84: $a9
	ld   [hl], a                                     ; $7f85: $77
	add  [hl]                                        ; $7f86: $86
	ld   b, e                                        ; $7f87: $43
	ld   d, l                                        ; $7f88: $55
	ld   [hl-], a                                    ; $7f89: $32
	inc  sp                                          ; $7f8a: $33
	ld   de, $6525                                   ; $7f8b: $11 $25 $65
	ld   d, a                                        ; $7f8e: $57
	jp   z, $aba9                                    ; $7f8f: $ca $a9 $ab

	call z, $da9e                                    ; $7f92: $cc $9e $da
	call z, $a8ba                                    ; $7f95: $cc $ba $a8
	xor  d                                           ; $7f98: $aa
	xor  d                                           ; $7f99: $aa
	xor  d                                           ; $7f9a: $aa
	adc  b                                           ; $7f9b: $88
	ld   [hl], a                                     ; $7f9c: $77
	halt                                             ; $7f9d: $76
	ld   h, l                                        ; $7f9e: $65
	ld   h, l                                        ; $7f9f: $65
	ld   d, l                                        ; $7fa0: $55
	ld   b, d                                        ; $7fa1: $42
	ld   hl, $5425                                   ; $7fa2: $21 $25 $54
	ld   l, b                                        ; $7fa5: $68
	ld   l, b                                        ; $7fa6: $68
	xor  d                                           ; $7fa7: $aa
	xor  c                                           ; $7fa8: $a9
	cp   e                                           ; $7fa9: $bb
	db   $db                                         ; $7faa: $db
	xor  e                                           ; $7fab: $ab
	xor  e                                           ; $7fac: $ab
	xor  d                                           ; $7fad: $aa
	xor  e                                           ; $7fae: $ab
	sbc  b                                           ; $7faf: $98
	sbc  c                                           ; $7fb0: $99
	xor  d                                           ; $7fb1: $aa
	sbc  b                                           ; $7fb2: $98
	adc  b                                           ; $7fb3: $88
	add  a                                           ; $7fb4: $87
	ld   h, a                                        ; $7fb5: $67
	ld   h, a                                        ; $7fb6: $67
	halt                                             ; $7fb7: $76
	ld   h, l                                        ; $7fb8: $65
	ld   d, l                                        ; $7fb9: $55
	inc  sp                                          ; $7fba: $33
	dec  [hl]                                        ; $7fbb: $35
	ld   h, l                                        ; $7fbc: $65
	ld   d, a                                        ; $7fbd: $57
	ld   l, b                                        ; $7fbe: $68
	add  a                                           ; $7fbf: $87
	sbc  h                                           ; $7fc0: $9c
	xor  d                                           ; $7fc1: $aa
	xor  d                                           ; $7fc2: $aa
	cp   c                                           ; $7fc3: $b9
	sbc  d                                           ; $7fc4: $9a
	xor  d                                           ; $7fc5: $aa
	cp   d                                           ; $7fc6: $ba
	adc  e                                           ; $7fc7: $8b
	sbc  d                                           ; $7fc8: $9a
	xor  d                                           ; $7fc9: $aa
	adc  c                                           ; $7fca: $89
	sbc  c                                           ; $7fcb: $99
	sub  a                                           ; $7fcc: $97
	sbc  b                                           ; $7fcd: $98
	adc  b                                           ; $7fce: $88
	adc  b                                           ; $7fcf: $88
	ld   l, b                                        ; $7fd0: $68
	halt                                             ; $7fd1: $76
	ld   [hl], a                                     ; $7fd2: $77
	ld   h, l                                        ; $7fd3: $65
	ld   d, l                                        ; $7fd4: $55
	halt                                             ; $7fd5: $76
	ld   h, [hl]                                     ; $7fd6: $66
	ld   [hl], a                                     ; $7fd7: $77
	ld   [hl], a                                     ; $7fd8: $77
	add  a                                           ; $7fd9: $87
	sub  a                                           ; $7fda: $97
	sbc  c                                           ; $7fdb: $99
	xor  c                                           ; $7fdc: $a9
	sbc  d                                           ; $7fdd: $9a
	adc  d                                           ; $7fde: $8a
	xor  e                                           ; $7fdf: $ab
	jp   z, $b9b8                                    ; $7fe0: $ca $b8 $b9

	xor  c                                           ; $7fe3: $a9
	sbc  d                                           ; $7fe4: $9a
	sbc  c                                           ; $7fe5: $99
	xor  e                                           ; $7fe6: $ab
	adc  d                                           ; $7fe7: $8a
	sbc  b                                           ; $7fe8: $98
	sub  a                                           ; $7fe9: $97
	adc  b                                           ; $7fea: $88
	add  [hl]                                        ; $7feb: $86
	halt                                             ; $7fec: $76
	ld   h, [hl]                                     ; $7fed: $66
	ld   h, [hl]                                     ; $7fee: $66
	ld   d, [hl]                                     ; $7fef: $56
	ld   b, l                                        ; $7ff0: $45
	ld   h, [hl]                                     ; $7ff1: $66
	ld   d, a                                        ; $7ff2: $57
	ld   h, a                                        ; $7ff3: $67
	add  a                                           ; $7ff4: $87
	ld   a, b                                        ; $7ff5: $78
	xor  d                                           ; $7ff6: $aa
	xor  c                                           ; $7ff7: $a9
	xor  e                                           ; $7ff8: $ab
	cp   d                                           ; $7ff9: $ba
	cp   d                                           ; $7ffa: $ba
	xor  d                                           ; $7ffb: $aa
	sbc  d                                           ; $7ffc: $9a
	sbc  e                                           ; $7ffd: $9b
	xor  d                                           ; $7ffe: $aa
	sbc  c                                           ; $7fff: $99
