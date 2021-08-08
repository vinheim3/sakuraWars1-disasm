; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0da", ROMX[$4000], BANK[$da]

	xor  e                                           ; $4000: $ab
	call z, $cbad                                    ; $4001: $cc $ad $cb
	cp   e                                           ; $4004: $bb
	call z, $87ba                                    ; $4005: $cc $ba $87
	ld   d, h                                        ; $4008: $54
	inc  sp                                          ; $4009: $33
	inc  sp                                          ; $400a: $33
	inc  [hl]                                        ; $400b: $34
	ld   b, [hl]                                     ; $400c: $46
	ld   [hl], a                                     ; $400d: $77
	adc  c                                           ; $400e: $89
	xor  e                                           ; $400f: $ab
	res  5, e                                        ; $4010: $cb $ab
	set  1, e                                        ; $4012: $cb $cb
	cp   d                                           ; $4014: $ba
	sub  a                                           ; $4015: $97
	ld   h, l                                        ; $4016: $65
	ld   d, l                                        ; $4017: $55
	ld   d, h                                        ; $4018: $54
	ld   b, h                                        ; $4019: $44
	ld   b, l                                        ; $401a: $45
	ld   h, [hl]                                     ; $401b: $66
	adc  b                                           ; $401c: $88
	sbc  c                                           ; $401d: $99
	xor  e                                           ; $401e: $ab
	cp   h                                           ; $401f: $bc
	call z, $aacb                                    ; $4020: $cc $cb $aa
	sub  a                                           ; $4023: $97
	ld   h, l                                        ; $4024: $65
	ld   h, [hl]                                     ; $4025: $66
	ld   b, l                                        ; $4026: $45
	ld   d, l                                        ; $4027: $55
	ld   h, [hl]                                     ; $4028: $66
	ld   h, a                                        ; $4029: $67
	ld   a, b                                        ; $402a: $78
	adc  b                                           ; $402b: $88
	sbc  d                                           ; $402c: $9a
	xor  d                                           ; $402d: $aa
	xor  d                                           ; $402e: $aa
	cp   e                                           ; $402f: $bb
	cp   d                                           ; $4030: $ba
	sbc  d                                           ; $4031: $9a
	add  [hl]                                        ; $4032: $86
	ld   [hl], a                                     ; $4033: $77
	halt                                             ; $4034: $76
	ld   h, l                                        ; $4035: $65
	ld   d, [hl]                                     ; $4036: $56
	ld   h, l                                        ; $4037: $65
	ld   h, a                                        ; $4038: $67
	ld   [hl], a                                     ; $4039: $77
	adc  c                                           ; $403a: $89
	sbc  d                                           ; $403b: $9a
	cp   d                                           ; $403c: $ba
	xor  c                                           ; $403d: $a9
	sbc  c                                           ; $403e: $99
	adc  b                                           ; $403f: $88
	ld   [hl], a                                     ; $4040: $77
	ld   a, b                                        ; $4041: $78
	halt                                             ; $4042: $76
	sub  a                                           ; $4043: $97
	ld   a, b                                        ; $4044: $78
	add  [hl]                                        ; $4045: $86
	ld   [hl], a                                     ; $4046: $77
	ld   [hl], a                                     ; $4047: $77
	ld   h, a                                        ; $4048: $67
	adc  b                                           ; $4049: $88
	ld   [hl], a                                     ; $404a: $77
	xor  c                                           ; $404b: $a9
	adc  b                                           ; $404c: $88
	sbc  c                                           ; $404d: $99
	xor  c                                           ; $404e: $a9
	ld   a, c                                        ; $404f: $79
	xor  b                                           ; $4050: $a8
	ld   a, b                                        ; $4051: $78
	ld   h, a                                        ; $4052: $67
	add  a                                           ; $4053: $87
	add  a                                           ; $4054: $87
	sbc  b                                           ; $4055: $98
	add  a                                           ; $4056: $87
	sbc  b                                           ; $4057: $98
	adc  d                                           ; $4058: $8a
	adc  c                                           ; $4059: $89
	adc  c                                           ; $405a: $89
	adc  b                                           ; $405b: $88
	adc  b                                           ; $405c: $88
	add  a                                           ; $405d: $87
	adc  b                                           ; $405e: $88
	adc  c                                           ; $405f: $89
	adc  b                                           ; $4060: $88
	sbc  b                                           ; $4061: $98
	sbc  c                                           ; $4062: $99
	adc  b                                           ; $4063: $88
	sbc  c                                           ; $4064: $99
	adc  b                                           ; $4065: $88
	add  a                                           ; $4066: $87
	adc  b                                           ; $4067: $88
	adc  b                                           ; $4068: $88
	adc  b                                           ; $4069: $88
	sbc  b                                           ; $406a: $98
	adc  c                                           ; $406b: $89
	sbc  b                                           ; $406c: $98
	sbc  b                                           ; $406d: $98
	add  a                                           ; $406e: $87
	adc  b                                           ; $406f: $88
	adc  b                                           ; $4070: $88
	adc  c                                           ; $4071: $89
	adc  b                                           ; $4072: $88
	adc  b                                           ; $4073: $88
	sbc  d                                           ; $4074: $9a
	sbc  c                                           ; $4075: $99
	sbc  c                                           ; $4076: $99
	sbc  b                                           ; $4077: $98
	sbc  c                                           ; $4078: $99
	adc  c                                           ; $4079: $89
	sbc  b                                           ; $407a: $98
	add  a                                           ; $407b: $87
	ld   a, b                                        ; $407c: $78
	adc  b                                           ; $407d: $88
	adc  c                                           ; $407e: $89
	adc  c                                           ; $407f: $89
	adc  b                                           ; $4080: $88
	adc  b                                           ; $4081: $88
	adc  c                                           ; $4082: $89
	sbc  b                                           ; $4083: $98
	sbc  b                                           ; $4084: $98
	sbc  c                                           ; $4085: $99
	adc  c                                           ; $4086: $89
	sbc  b                                           ; $4087: $98
	sbc  b                                           ; $4088: $98
	adc  c                                           ; $4089: $89
	adc  b                                           ; $408a: $88
	add  a                                           ; $408b: $87
	ld   [hl], a                                     ; $408c: $77
	ld   [hl], a                                     ; $408d: $77
	ld   a, b                                        ; $408e: $78
	adc  b                                           ; $408f: $88
	adc  b                                           ; $4090: $88
	sbc  c                                           ; $4091: $99
	adc  c                                           ; $4092: $89
	adc  b                                           ; $4093: $88
	adc  b                                           ; $4094: $88
	adc  b                                           ; $4095: $88
	adc  b                                           ; $4096: $88
	adc  b                                           ; $4097: $88
	adc  b                                           ; $4098: $88
	adc  b                                           ; $4099: $88
	ld   a, b                                        ; $409a: $78
	adc  b                                           ; $409b: $88
	adc  b                                           ; $409c: $88
	adc  b                                           ; $409d: $88
	add  a                                           ; $409e: $87
	ld   [hl], a                                     ; $409f: $77
	add  a                                           ; $40a0: $87
	ld   a, b                                        ; $40a1: $78
	adc  b                                           ; $40a2: $88
	adc  c                                           ; $40a3: $89
	adc  c                                           ; $40a4: $89
	adc  b                                           ; $40a5: $88
	adc  b                                           ; $40a6: $88
	adc  b                                           ; $40a7: $88
	adc  b                                           ; $40a8: $88
	ld   [hl], a                                     ; $40a9: $77
	ld   [hl], a                                     ; $40aa: $77
	ld   a, b                                        ; $40ab: $78
	adc  b                                           ; $40ac: $88
	adc  b                                           ; $40ad: $88
	adc  b                                           ; $40ae: $88
	adc  b                                           ; $40af: $88
	adc  b                                           ; $40b0: $88
	ld   a, b                                        ; $40b1: $78
	ld   a, b                                        ; $40b2: $78
	adc  b                                           ; $40b3: $88
	adc  b                                           ; $40b4: $88
	adc  b                                           ; $40b5: $88
	adc  b                                           ; $40b6: $88
	adc  b                                           ; $40b7: $88
	ld   a, b                                        ; $40b8: $78
	adc  b                                           ; $40b9: $88
	ld   [hl], a                                     ; $40ba: $77
	adc  b                                           ; $40bb: $88
	adc  b                                           ; $40bc: $88
	adc  b                                           ; $40bd: $88
	adc  b                                           ; $40be: $88
	adc  b                                           ; $40bf: $88
	adc  b                                           ; $40c0: $88
	adc  b                                           ; $40c1: $88
	adc  b                                           ; $40c2: $88
	adc  b                                           ; $40c3: $88
	ld   [hl], a                                     ; $40c4: $77
	ld   a, b                                        ; $40c5: $78
	add  a                                           ; $40c6: $87
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
	ld   a, b                                        ; $40d4: $78
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
	add  a                                           ; $40e0: $87
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
	adc  b                                           ; $4195: $88
	adc  b                                           ; $4196: $88

Jump_0da_4197:
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

Jump_0da_41ab:
	adc  b                                           ; $41ab: $88
	adc  b                                           ; $41ac: $88
	adc  b                                           ; $41ad: $88
	adc  b                                           ; $41ae: $88
	adc  b                                           ; $41af: $88
	adc  c                                           ; $41b0: $89
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
	adc  c                                           ; $41c0: $89
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
	sbc  b                                           ; $41cb: $98
	adc  b                                           ; $41cc: $88
	adc  c                                           ; $41cd: $89
	adc  b                                           ; $41ce: $88
	adc  b                                           ; $41cf: $88
	adc  b                                           ; $41d0: $88
	adc  b                                           ; $41d1: $88
	adc  b                                           ; $41d2: $88
	adc  b                                           ; $41d3: $88
	adc  b                                           ; $41d4: $88
	adc  b                                           ; $41d5: $88
	adc  b                                           ; $41d6: $88
	sbc  b                                           ; $41d7: $98
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
	sbc  b                                           ; $41e7: $98
	adc  b                                           ; $41e8: $88
	sbc  b                                           ; $41e9: $98
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
	adc  c                                           ; $41fa: $89
	adc  b                                           ; $41fb: $88
	adc  b                                           ; $41fc: $88
	adc  b                                           ; $41fd: $88
	adc  c                                           ; $41fe: $89
	adc  b                                           ; $41ff: $88
	adc  b                                           ; $4200: $88
	adc  c                                           ; $4201: $89
	adc  b                                           ; $4202: $88
	adc  b                                           ; $4203: $88
	adc  b                                           ; $4204: $88
	adc  b                                           ; $4205: $88
	sbc  b                                           ; $4206: $98
	adc  b                                           ; $4207: $88
	adc  b                                           ; $4208: $88
	sbc  c                                           ; $4209: $99
	adc  b                                           ; $420a: $88
	adc  b                                           ; $420b: $88
	ld   a, c                                        ; $420c: $79
	sbc  b                                           ; $420d: $98
	adc  b                                           ; $420e: $88
	adc  b                                           ; $420f: $88
	adc  b                                           ; $4210: $88
	sbc  c                                           ; $4211: $99
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
	sbc  b                                           ; $4224: $98
	ld   a, b                                        ; $4225: $78
	adc  b                                           ; $4226: $88
	adc  b                                           ; $4227: $88
	adc  b                                           ; $4228: $88
	adc  b                                           ; $4229: $88
	adc  b                                           ; $422a: $88
	sbc  b                                           ; $422b: $98
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
	adc  c                                           ; $423a: $89
	adc  b                                           ; $423b: $88
	adc  b                                           ; $423c: $88
	adc  b                                           ; $423d: $88
	adc  c                                           ; $423e: $89
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
	sbc  b                                           ; $424b: $98
	adc  b                                           ; $424c: $88
	adc  b                                           ; $424d: $88
	adc  b                                           ; $424e: $88
	adc  c                                           ; $424f: $89
	adc  b                                           ; $4250: $88
	ld   a, b                                        ; $4251: $78
	sbc  b                                           ; $4252: $98
	adc  b                                           ; $4253: $88
	adc  c                                           ; $4254: $89
	adc  b                                           ; $4255: $88
	adc  b                                           ; $4256: $88
	sbc  b                                           ; $4257: $98
	adc  b                                           ; $4258: $88
	adc  c                                           ; $4259: $89
	adc  b                                           ; $425a: $88
	adc  b                                           ; $425b: $88
	adc  b                                           ; $425c: $88
	adc  b                                           ; $425d: $88
	adc  b                                           ; $425e: $88
	adc  b                                           ; $425f: $88
	adc  c                                           ; $4260: $89
	adc  b                                           ; $4261: $88
	adc  b                                           ; $4262: $88
	adc  b                                           ; $4263: $88
	adc  b                                           ; $4264: $88
	sbc  b                                           ; $4265: $98
	adc  b                                           ; $4266: $88
	sbc  b                                           ; $4267: $98
	adc  b                                           ; $4268: $88
	adc  b                                           ; $4269: $88
	adc  b                                           ; $426a: $88
	adc  c                                           ; $426b: $89
	adc  b                                           ; $426c: $88
	adc  b                                           ; $426d: $88
	adc  b                                           ; $426e: $88
	add  a                                           ; $426f: $87
	adc  c                                           ; $4270: $89
	adc  b                                           ; $4271: $88
	adc  b                                           ; $4272: $88
	adc  b                                           ; $4273: $88
	adc  b                                           ; $4274: $88
	adc  b                                           ; $4275: $88
	adc  b                                           ; $4276: $88
	adc  b                                           ; $4277: $88
	sbc  b                                           ; $4278: $98
	adc  b                                           ; $4279: $88
	ld   a, b                                        ; $427a: $78
	adc  b                                           ; $427b: $88
	adc  b                                           ; $427c: $88
	adc  b                                           ; $427d: $88
	adc  b                                           ; $427e: $88
	adc  b                                           ; $427f: $88
	adc  b                                           ; $4280: $88
	adc  b                                           ; $4281: $88
	adc  b                                           ; $4282: $88
	sbc  b                                           ; $4283: $98
	adc  b                                           ; $4284: $88
	adc  b                                           ; $4285: $88
	adc  b                                           ; $4286: $88
	adc  b                                           ; $4287: $88
	adc  b                                           ; $4288: $88
	adc  b                                           ; $4289: $88
	adc  b                                           ; $428a: $88
	adc  b                                           ; $428b: $88
	sbc  b                                           ; $428c: $98
	adc  b                                           ; $428d: $88
	adc  b                                           ; $428e: $88
	adc  b                                           ; $428f: $88
	adc  b                                           ; $4290: $88
	sbc  b                                           ; $4291: $98
	adc  b                                           ; $4292: $88
	add  a                                           ; $4293: $87
	adc  b                                           ; $4294: $88
	adc  b                                           ; $4295: $88
	adc  b                                           ; $4296: $88
	adc  b                                           ; $4297: $88
	ld   a, b                                        ; $4298: $78
	sbc  b                                           ; $4299: $98
	adc  b                                           ; $429a: $88
	add  a                                           ; $429b: $87
	adc  b                                           ; $429c: $88
	adc  b                                           ; $429d: $88
	adc  b                                           ; $429e: $88
	ld   a, b                                        ; $429f: $78
	adc  c                                           ; $42a0: $89
	adc  b                                           ; $42a1: $88
	adc  b                                           ; $42a2: $88
	adc  b                                           ; $42a3: $88
	sbc  b                                           ; $42a4: $98
	adc  b                                           ; $42a5: $88
	adc  b                                           ; $42a6: $88
	sbc  b                                           ; $42a7: $98
	ld   a, b                                        ; $42a8: $78
	adc  b                                           ; $42a9: $88
	adc  b                                           ; $42aa: $88
	sbc  b                                           ; $42ab: $98
	adc  c                                           ; $42ac: $89
	adc  b                                           ; $42ad: $88
	adc  b                                           ; $42ae: $88
	adc  b                                           ; $42af: $88
	adc  b                                           ; $42b0: $88
	adc  b                                           ; $42b1: $88
	adc  b                                           ; $42b2: $88
	ld   a, b                                        ; $42b3: $78
	sbc  b                                           ; $42b4: $98
	adc  b                                           ; $42b5: $88
	adc  b                                           ; $42b6: $88
	adc  b                                           ; $42b7: $88
	ld   a, b                                        ; $42b8: $78
	sbc  b                                           ; $42b9: $98
	adc  b                                           ; $42ba: $88
	adc  b                                           ; $42bb: $88
	sbc  b                                           ; $42bc: $98
	adc  b                                           ; $42bd: $88
	adc  c                                           ; $42be: $89
	adc  b                                           ; $42bf: $88
	adc  b                                           ; $42c0: $88
	adc  b                                           ; $42c1: $88
	add  a                                           ; $42c2: $87
	adc  b                                           ; $42c3: $88
	adc  b                                           ; $42c4: $88
	add  a                                           ; $42c5: $87
	adc  b                                           ; $42c6: $88
	adc  b                                           ; $42c7: $88
	adc  b                                           ; $42c8: $88
	adc  b                                           ; $42c9: $88
	sbc  c                                           ; $42ca: $99
	adc  b                                           ; $42cb: $88
	sbc  c                                           ; $42cc: $99
	adc  b                                           ; $42cd: $88
	add  a                                           ; $42ce: $87
	ld   a, b                                        ; $42cf: $78
	adc  b                                           ; $42d0: $88
	ld   a, b                                        ; $42d1: $78
	adc  b                                           ; $42d2: $88
	ld   a, b                                        ; $42d3: $78
	adc  b                                           ; $42d4: $88
	sbc  b                                           ; $42d5: $98
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
	add  a                                           ; $42e2: $87
	adc  b                                           ; $42e3: $88
	adc  b                                           ; $42e4: $88
	adc  b                                           ; $42e5: $88
	adc  c                                           ; $42e6: $89
	adc  b                                           ; $42e7: $88
	sbc  b                                           ; $42e8: $98
	adc  c                                           ; $42e9: $89
	add  a                                           ; $42ea: $87
	adc  b                                           ; $42eb: $88
	adc  b                                           ; $42ec: $88
	adc  b                                           ; $42ed: $88
	adc  b                                           ; $42ee: $88
	adc  b                                           ; $42ef: $88
	adc  b                                           ; $42f0: $88
	adc  b                                           ; $42f1: $88
	sbc  b                                           ; $42f2: $98
	ld   a, c                                        ; $42f3: $79
	sbc  b                                           ; $42f4: $98
	adc  b                                           ; $42f5: $88
	adc  b                                           ; $42f6: $88
	adc  b                                           ; $42f7: $88
	sub  a                                           ; $42f8: $97
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
	add  a                                           ; $4314: $87
	adc  b                                           ; $4315: $88
	add  a                                           ; $4316: $87
	adc  b                                           ; $4317: $88
	adc  c                                           ; $4318: $89
	adc  b                                           ; $4319: $88
	adc  b                                           ; $431a: $88
	ld   a, c                                        ; $431b: $79
	adc  b                                           ; $431c: $88
	adc  b                                           ; $431d: $88
	add  a                                           ; $431e: $87
	adc  b                                           ; $431f: $88
	adc  b                                           ; $4320: $88
	adc  b                                           ; $4321: $88
	add  a                                           ; $4322: $87
	adc  b                                           ; $4323: $88
	adc  b                                           ; $4324: $88
	adc  b                                           ; $4325: $88
	adc  b                                           ; $4326: $88
	adc  b                                           ; $4327: $88
	add  a                                           ; $4328: $87
	adc  b                                           ; $4329: $88
	adc  b                                           ; $432a: $88
	adc  b                                           ; $432b: $88
	adc  b                                           ; $432c: $88
	adc  b                                           ; $432d: $88
	adc  b                                           ; $432e: $88
	adc  b                                           ; $432f: $88
	adc  b                                           ; $4330: $88
	adc  b                                           ; $4331: $88
	sbc  b                                           ; $4332: $98
	add  a                                           ; $4333: $87
	adc  b                                           ; $4334: $88
	ld   a, b                                        ; $4335: $78
	ld   [hl], a                                     ; $4336: $77
	adc  b                                           ; $4337: $88
	ld   a, b                                        ; $4338: $78
	adc  b                                           ; $4339: $88
	adc  b                                           ; $433a: $88
	ld   [hl], a                                     ; $433b: $77
	adc  c                                           ; $433c: $89
	adc  b                                           ; $433d: $88
	sbc  b                                           ; $433e: $98
	adc  b                                           ; $433f: $88
	ld   a, b                                        ; $4340: $78
	adc  b                                           ; $4341: $88
	add  a                                           ; $4342: $87
	adc  b                                           ; $4343: $88
	adc  b                                           ; $4344: $88
	ld   a, b                                        ; $4345: $78
	sbc  b                                           ; $4346: $98
	ld   [hl], a                                     ; $4347: $77
	adc  b                                           ; $4348: $88
	adc  b                                           ; $4349: $88
	ld   a, b                                        ; $434a: $78
	add  a                                           ; $434b: $87
	adc  b                                           ; $434c: $88
	ld   a, b                                        ; $434d: $78
	adc  b                                           ; $434e: $88
	adc  b                                           ; $434f: $88
	adc  b                                           ; $4350: $88
	sbc  b                                           ; $4351: $98
	adc  b                                           ; $4352: $88
	adc  b                                           ; $4353: $88
	adc  b                                           ; $4354: $88
	adc  b                                           ; $4355: $88
	ld   a, b                                        ; $4356: $78
	sbc  b                                           ; $4357: $98
	adc  b                                           ; $4358: $88
	adc  c                                           ; $4359: $89
	sub  a                                           ; $435a: $97
	ld   [hl], a                                     ; $435b: $77
	adc  b                                           ; $435c: $88
	add  a                                           ; $435d: $87
	ld   a, b                                        ; $435e: $78
	adc  b                                           ; $435f: $88
	adc  b                                           ; $4360: $88
	ld   a, b                                        ; $4361: $78
	adc  b                                           ; $4362: $88
	ld   a, b                                        ; $4363: $78
	add  a                                           ; $4364: $87
	ld   a, b                                        ; $4365: $78
	adc  c                                           ; $4366: $89
	sub  a                                           ; $4367: $97
	adc  c                                           ; $4368: $89
	adc  b                                           ; $4369: $88
	adc  b                                           ; $436a: $88
	sbc  c                                           ; $436b: $99
	adc  b                                           ; $436c: $88
	adc  b                                           ; $436d: $88
	add  a                                           ; $436e: $87
	ld   [hl], a                                     ; $436f: $77
	adc  b                                           ; $4370: $88
	adc  b                                           ; $4371: $88
	adc  b                                           ; $4372: $88
	ld   a, b                                        ; $4373: $78
	sbc  b                                           ; $4374: $98
	adc  b                                           ; $4375: $88
	sbc  b                                           ; $4376: $98
	sbc  b                                           ; $4377: $98
	ld   [hl], a                                     ; $4378: $77
	adc  b                                           ; $4379: $88
	ld   [hl], a                                     ; $437a: $77
	ld   [hl], a                                     ; $437b: $77
	adc  b                                           ; $437c: $88
	ld   [hl], a                                     ; $437d: $77
	adc  c                                           ; $437e: $89
	sbc  c                                           ; $437f: $99
	adc  b                                           ; $4380: $88
	adc  c                                           ; $4381: $89
	sbc  c                                           ; $4382: $99
	adc  c                                           ; $4383: $89
	sbc  c                                           ; $4384: $99
	adc  c                                           ; $4385: $89
	adc  b                                           ; $4386: $88
	adc  b                                           ; $4387: $88
	adc  b                                           ; $4388: $88
	add  a                                           ; $4389: $87
	ld   a, b                                        ; $438a: $78
	halt                                             ; $438b: $76
	ld   h, a                                        ; $438c: $67
	ld   [hl], a                                     ; $438d: $77
	halt                                             ; $438e: $76
	ld   [hl], a                                     ; $438f: $77
	ld   [hl], a                                     ; $4390: $77
	ld   [hl], a                                     ; $4391: $77
	ld   a, b                                        ; $4392: $78
	sbc  b                                           ; $4393: $98
	adc  c                                           ; $4394: $89
	sbc  c                                           ; $4395: $99
	sbc  c                                           ; $4396: $99
	xor  c                                           ; $4397: $a9
	xor  d                                           ; $4398: $aa
	sbc  c                                           ; $4399: $99
	xor  c                                           ; $439a: $a9
	xor  b                                           ; $439b: $a8
	adc  b                                           ; $439c: $88
	adc  b                                           ; $439d: $88
	ld   [hl], a                                     ; $439e: $77
	ld   h, [hl]                                     ; $439f: $66
	ld   h, l                                        ; $43a0: $65
	ld   d, h                                        ; $43a1: $54
	ld   d, h                                        ; $43a2: $54
	ld   d, l                                        ; $43a3: $55
	ld   d, l                                        ; $43a4: $55
	ld   h, [hl]                                     ; $43a5: $66
	ld   h, a                                        ; $43a6: $67
	adc  c                                           ; $43a7: $89
	xor  e                                           ; $43a8: $ab
	cp   h                                           ; $43a9: $bc
	db   $dd                                         ; $43aa: $dd
	xor  $dc                                         ; $43ab: $ee $dc
	call z, $a8ba                                    ; $43ad: $cc $ba $a8
	sbc  b                                           ; $43b0: $98
	halt                                             ; $43b1: $76
	ld   d, l                                        ; $43b2: $55
	ld   b, e                                        ; $43b3: $43
	ld   [de], a                                     ; $43b4: $12
	ld   b, h                                        ; $43b5: $44
	inc  sp                                          ; $43b6: $33
	inc  [hl]                                        ; $43b7: $34
	ld   d, [hl]                                     ; $43b8: $56
	ld   h, [hl]                                     ; $43b9: $66
	adc  d                                           ; $43ba: $8a
	cp   h                                           ; $43bb: $bc
	xor  $ef                                         ; $43bc: $ee $ef
	db   $fd                                         ; $43be: $fd
	db   $dd                                         ; $43bf: $dd
	call z, $88a9                                    ; $43c0: $cc $a9 $88
	sbc  b                                           ; $43c3: $98
	halt                                             ; $43c4: $76
	ld   d, l                                        ; $43c5: $55
	ld   d, e                                        ; $43c6: $53
	ld   de, $4334                                   ; $43c7: $11 $34 $43
	ld   [hl+], a                                    ; $43ca: $22
	ld   b, [hl]                                     ; $43cb: $46
	ld   h, l                                        ; $43cc: $65
	ld   a, d                                        ; $43cd: $7a
	call $efed                                       ; $43ce: $cd $ed $ef
	rst  $38                                         ; $43d1: $ff
	db   $dd                                         ; $43d2: $dd
	set  1, c                                        ; $43d3: $cb $c9
	ld   [hl], a                                     ; $43d5: $77
	adc  c                                           ; $43d6: $89
	halt                                             ; $43d7: $76
	ld   b, l                                        ; $43d8: $45
	ld   d, h                                        ; $43d9: $54
	ld   hl, $4325                                   ; $43da: $21 $25 $43
	ld   [hl+], a                                    ; $43dd: $22
	dec  [hl]                                        ; $43de: $35
	ld   h, l                                        ; $43df: $65
	ld   l, b                                        ; $43e0: $68
	cp   [hl]                                        ; $43e1: $be
	cp   $ef                                         ; $43e2: $fe $ef
	rst  $38                                         ; $43e4: $ff
	db   $ed                                         ; $43e5: $ed
	call z, $76b9                                    ; $43e6: $cc $b9 $76
	ld   a, b                                        ; $43e9: $78
	ld   h, l                                        ; $43ea: $65
	ld   b, h                                        ; $43eb: $44
	ld   d, h                                        ; $43ec: $54
	ld   de, $4315                                   ; $43ed: $11 $15 $43
	ld   [hl+], a                                    ; $43f0: $22
	ld   [hl], $75                                   ; $43f1: $36 $75
	ld   l, d                                        ; $43f3: $6a
	sbc  $ff                                         ; $43f4: $de $ff
	rst  $38                                         ; $43f6: $ff
	rst  $38                                         ; $43f7: $ff
	db   $ec                                         ; $43f8: $ec
	res  7, b                                        ; $43f9: $cb $b8
	ld   d, h                                        ; $43fb: $54
	ld   h, a                                        ; $43fc: $67
	ld   d, h                                        ; $43fd: $54
	inc  sp                                          ; $43fe: $33
	ld   b, e                                        ; $43ff: $43
	ld   de, $5326                                   ; $4400: $11 $26 $53
	inc  hl                                          ; $4403: $23
	ld   e, b                                        ; $4404: $58
	sub  [hl]                                        ; $4405: $96
	adc  h                                           ; $4406: $8c
	rst  $28                                         ; $4407: $ef
	rst  $38                                         ; $4408: $ff
	rst  $38                                         ; $4409: $ff
	rst  $38                                         ; $440a: $ff
	set  1, d                                        ; $440b: $cb $ca
	sub  [hl]                                        ; $440d: $96
	ld   b, e                                        ; $440e: $43
	ld   h, [hl]                                     ; $440f: $66
	ld   b, e                                        ; $4410: $43
	inc  hl                                          ; $4411: $23
	ld   b, d                                        ; $4412: $42
	ld   de, $4357                                   ; $4413: $11 $57 $43
	dec  [hl]                                        ; $4416: $35
	ld   a, c                                        ; $4417: $79
	add  a                                           ; $4418: $87
	xor  [hl]                                        ; $4419: $ae
	rst  $38                                         ; $441a: $ff
	rst  $38                                         ; $441b: $ff
	rst  $38                                         ; $441c: $ff
	db   $fd                                         ; $441d: $fd
	cp   d                                           ; $441e: $ba
	xor  c                                           ; $441f: $a9
	ld   [hl], h                                     ; $4420: $74
	inc  h                                           ; $4421: $24
	ld   h, l                                        ; $4422: $65
	ld   [hl+], a                                    ; $4423: $22
	inc  hl                                          ; $4424: $23
	ld   hl, $7513                                   ; $4425: $21 $13 $75
	ld   b, e                                        ; $4428: $43
	ld   b, a                                        ; $4429: $47
	sbc  c                                           ; $442a: $99
	ld   a, d                                        ; $442b: $7a
	rst  $28                                         ; $442c: $ef
	rst  $38                                         ; $442d: $ff
	rst  $38                                         ; $442e: $ff
	rst  $38                                         ; $442f: $ff
	db   $fc                                         ; $4430: $fc
	xor  d                                           ; $4431: $aa
	add  a                                           ; $4432: $87
	ld   b, d                                        ; $4433: $42
	dec  h                                           ; $4434: $25
	ld   d, d                                        ; $4435: $52
	ld   de, $1122                                   ; $4436: $11 $22 $11
	daa                                              ; $4439: $27
	ld   h, l                                        ; $443a: $65
	ld   b, l                                        ; $443b: $45
	ld   a, d                                        ; $443c: $7a
	xor  b                                           ; $443d: $a8
	xor  [hl]                                        ; $443e: $ae
	rst  $38                                         ; $443f: $ff
	rst  $38                                         ; $4440: $ff
	rst  $38                                         ; $4441: $ff
	rst  $38                                         ; $4442: $ff
	cp   d                                           ; $4443: $ba
	xor  c                                           ; $4444: $a9
	ld   [hl], l                                     ; $4445: $75
	ld   [hl+], a                                    ; $4446: $22
	ld   b, l                                        ; $4447: $45
	ld   [hl-], a                                    ; $4448: $32
	ld   [de], a                                     ; $4449: $12
	ld   hl, $6611                                   ; $444a: $21 $11 $66
	ld   d, l                                        ; $444d: $55
	ld   d, [hl]                                     ; $444e: $56
	xor  e                                           ; $444f: $ab
	sbc  c                                           ; $4450: $99
	rst  JumpTable                                         ; $4451: $df
	rst  $38                                         ; $4452: $ff
	rst  $38                                         ; $4453: $ff
	rst  $38                                         ; $4454: $ff
	db   $fc                                         ; $4455: $fc
	xor  d                                           ; $4456: $aa
	add  a                                           ; $4457: $87
	ld   d, e                                        ; $4458: $53
	inc  h                                           ; $4459: $24
	ld   d, h                                        ; $445a: $54
	ld   [hl+], a                                    ; $445b: $22
	inc  sp                                          ; $445c: $33
	ld   de, $6515                                   ; $445d: $11 $15 $65
	ld   d, l                                        ; $4460: $55
	ld   l, b                                        ; $4461: $68
	cp   d                                           ; $4462: $ba
	sbc  h                                           ; $4463: $9c
	rst  $38                                         ; $4464: $ff
	rst  $38                                         ; $4465: $ff
	rst  $38                                         ; $4466: $ff
	rst  $38                                         ; $4467: $ff
	db   $db                                         ; $4468: $db
	xor  c                                           ; $4469: $a9
	halt                                             ; $446a: $76
	ld   b, e                                        ; $446b: $43
	dec  [hl]                                        ; $446c: $35
	ld   b, h                                        ; $446d: $44
	inc  sp                                          ; $446e: $33
	ld   [hl-], a                                    ; $446f: $32
	ld   de, $5546                                   ; $4470: $11 $46 $55
	ld   b, l                                        ; $4473: $45
	ld   l, c                                        ; $4474: $69
	xor  b                                           ; $4475: $a8
	cp   l                                           ; $4476: $bd
	rst  $38                                         ; $4477: $ff
	rst  $38                                         ; $4478: $ff
	rst  $38                                         ; $4479: $ff
	cp   $ca                                         ; $447a: $fe $ca
	sbc  b                                           ; $447c: $98
	halt                                             ; $447d: $76
	ld   b, e                                        ; $447e: $43
	ld   d, l                                        ; $447f: $55
	ld   d, h                                        ; $4480: $54
	inc  [hl]                                        ; $4481: $34
	ld   [hl-], a                                    ; $4482: $32
	ld   de, $5456                                   ; $4483: $11 $56 $54
	ld   b, l                                        ; $4486: $45
	ld   l, b                                        ; $4487: $68
	sbc  b                                           ; $4488: $98
	xor  l                                           ; $4489: $ad
	rst  $38                                         ; $448a: $ff
	rst  $38                                         ; $448b: $ff
	rst  $38                                         ; $448c: $ff
	cp   $ca                                         ; $448d: $fe $ca
	sbc  b                                           ; $448f: $98
	halt                                             ; $4490: $76
	ld   d, h                                        ; $4491: $54
	ld   d, l                                        ; $4492: $55
	ld   d, l                                        ; $4493: $55
	ld   b, h                                        ; $4494: $44
	ld   [hl-], a                                    ; $4495: $32
	ld   [de], a                                     ; $4496: $12
	ld   d, l                                        ; $4497: $55
	ld   d, h                                        ; $4498: $54
	ld   b, l                                        ; $4499: $45
	ld   d, a                                        ; $449a: $57
	sbc  c                                           ; $449b: $99
	xor  h                                           ; $449c: $ac
	rst  $28                                         ; $449d: $ef
	rst  $38                                         ; $449e: $ff
	rst  $38                                         ; $449f: $ff
	cp   $db                                         ; $44a0: $fe $db
	sbc  b                                           ; $44a2: $98
	ld   [hl], a                                     ; $44a3: $77
	ld   d, l                                        ; $44a4: $55
	ld   h, [hl]                                     ; $44a5: $66
	ld   h, l                                        ; $44a6: $65
	ld   d, l                                        ; $44a7: $55
	ld   b, h                                        ; $44a8: $44
	ld   [hl+], a                                    ; $44a9: $22
	ld   b, l                                        ; $44aa: $45
	ld   d, h                                        ; $44ab: $54
	ld   b, h                                        ; $44ac: $44
	ld   b, [hl]                                     ; $44ad: $46
	ld   [hl], a                                     ; $44ae: $77
	sbc  e                                           ; $44af: $9b
	sbc  $ff                                         ; $44b0: $de $ff
	rst  $38                                         ; $44b2: $ff
	xor  $dc                                         ; $44b3: $ee $dc
	xor  c                                           ; $44b5: $a9
	adc  b                                           ; $44b6: $88
	halt                                             ; $44b7: $76
	ld   h, a                                        ; $44b8: $67
	halt                                             ; $44b9: $76
	ld   h, [hl]                                     ; $44ba: $66
	ld   d, l                                        ; $44bb: $55
	ld   b, e                                        ; $44bc: $43
	dec  [hl]                                        ; $44bd: $35
	ld   d, h                                        ; $44be: $54
	ld   b, h                                        ; $44bf: $44
	ld   b, h                                        ; $44c0: $44
	ld   d, [hl]                                     ; $44c1: $56
	ld   a, c                                        ; $44c2: $79
	xor  e                                           ; $44c3: $ab
	sbc  $fe                                         ; $44c4: $de $fe
	xor  $ed                                         ; $44c6: $ee $ed
	res  5, b                                        ; $44c8: $cb $a8
	sub  a                                           ; $44ca: $97
	ld   [hl], a                                     ; $44cb: $77
	ld   [hl], a                                     ; $44cc: $77
	ld   [hl], a                                     ; $44cd: $77
	ld   h, [hl]                                     ; $44ce: $66
	ld   h, l                                        ; $44cf: $65
	ld   b, e                                        ; $44d0: $43
	ld   b, l                                        ; $44d1: $45
	ld   b, h                                        ; $44d2: $44
	ld   b, e                                        ; $44d3: $43
	inc  [hl]                                        ; $44d4: $34
	ld   d, [hl]                                     ; $44d5: $56
	ld   a, c                                        ; $44d6: $79
	xor  e                                           ; $44d7: $ab
	adc  $ee                                         ; $44d8: $ce $ee
	db   $ed                                         ; $44da: $ed
	call z, $9acb                                    ; $44db: $cc $cb $9a
	sbc  b                                           ; $44de: $98
	sbc  b                                           ; $44df: $98
	sbc  b                                           ; $44e0: $98
	add  a                                           ; $44e1: $87
	ld   [hl], a                                     ; $44e2: $77
	ld   h, l                                        ; $44e3: $65
	ld   b, e                                        ; $44e4: $43
	ld   b, l                                        ; $44e5: $45
	ld   b, h                                        ; $44e6: $44
	inc  sp                                          ; $44e7: $33
	inc  sp                                          ; $44e8: $33
	ld   b, l                                        ; $44e9: $45
	ld   h, a                                        ; $44ea: $67
	sbc  e                                           ; $44eb: $9b
	call $dddd                                       ; $44ec: $cd $dd $dd
	call z, $bacb                                    ; $44ef: $cc $cb $ba
	xor  c                                           ; $44f2: $a9
	sbc  c                                           ; $44f3: $99
	adc  b                                           ; $44f4: $88
	adc  b                                           ; $44f5: $88
	ld   [hl], a                                     ; $44f6: $77
	halt                                             ; $44f7: $76
	ld   d, h                                        ; $44f8: $54
	ld   b, h                                        ; $44f9: $44
	ld   b, h                                        ; $44fa: $44
	ld   b, e                                        ; $44fb: $43
	inc  sp                                          ; $44fc: $33
	inc  [hl]                                        ; $44fd: $34
	ld   d, [hl]                                     ; $44fe: $56
	adc  c                                           ; $44ff: $89
	xor  h                                           ; $4500: $ac
	call c, $ddcd                                    ; $4501: $dc $cd $dd
	db   $db                                         ; $4504: $db
	cp   d                                           ; $4505: $ba
	cp   c                                           ; $4506: $b9
	xor  c                                           ; $4507: $a9
	xor  d                                           ; $4508: $aa
	sbc  c                                           ; $4509: $99
	add  a                                           ; $450a: $87
	ld   [hl], a                                     ; $450b: $77
	ld   h, l                                        ; $450c: $65
	ld   d, h                                        ; $450d: $54
	ld   b, h                                        ; $450e: $44
	ld   b, e                                        ; $450f: $43
	inc  sp                                          ; $4510: $33
	inc  sp                                          ; $4511: $33
	ld   b, l                                        ; $4512: $45
	ld   h, a                                        ; $4513: $67
	sbc  d                                           ; $4514: $9a
	cp   e                                           ; $4515: $bb
	call c, $cdcd                                    ; $4516: $dc $cd $cd
	call c, $aaba                                    ; $4519: $dc $ba $aa
	xor  d                                           ; $451c: $aa
	sbc  c                                           ; $451d: $99
	sbc  b                                           ; $451e: $98
	ld   [hl], a                                     ; $451f: $77
	halt                                             ; $4520: $76
	ld   h, l                                        ; $4521: $65
	ld   b, e                                        ; $4522: $43
	inc  [hl]                                        ; $4523: $34
	ld   b, e                                        ; $4524: $43
	inc  sp                                          ; $4525: $33
	inc  sp                                          ; $4526: $33
	ld   b, l                                        ; $4527: $45
	ld   h, a                                        ; $4528: $67
	sbc  d                                           ; $4529: $9a
	xor  h                                           ; $452a: $ac
	call $dcdc                                       ; $452b: $cd $dc $dc
	res  7, e                                        ; $452e: $cb $bb
	xor  c                                           ; $4530: $a9
	xor  d                                           ; $4531: $aa
	sbc  c                                           ; $4532: $99
	sbc  c                                           ; $4533: $99
	add  a                                           ; $4534: $87
	ld   [hl], a                                     ; $4535: $77
	ld   h, [hl]                                     ; $4536: $66
	ld   h, l                                        ; $4537: $65
	ld   b, h                                        ; $4538: $44
	ld   b, h                                        ; $4539: $44
	ld   b, h                                        ; $453a: $44
	ld   b, h                                        ; $453b: $44
	ld   b, l                                        ; $453c: $45
	ld   d, [hl]                                     ; $453d: $56
	ld   a, c                                        ; $453e: $79
	sbc  d                                           ; $453f: $9a
	cp   h                                           ; $4540: $bc
	cp   h                                           ; $4541: $bc
	call z, $cacc                                    ; $4542: $cc $cc $ca
	cp   d                                           ; $4545: $ba
	xor  d                                           ; $4546: $aa
	xor  c                                           ; $4547: $a9
	sbc  c                                           ; $4548: $99
	sbc  b                                           ; $4549: $98
	ld   [hl], a                                     ; $454a: $77
	ld   [hl], a                                     ; $454b: $77
	ld   h, [hl]                                     ; $454c: $66
	ld   h, l                                        ; $454d: $65
	ld   d, l                                        ; $454e: $55
	ld   d, l                                        ; $454f: $55
	ld   d, l                                        ; $4550: $55
	ld   b, h                                        ; $4551: $44
	ld   d, l                                        ; $4552: $55
	ld   h, [hl]                                     ; $4553: $66
	ld   a, c                                        ; $4554: $79
	sbc  d                                           ; $4555: $9a
	xor  e                                           ; $4556: $ab
	set  1, e                                        ; $4557: $cb $cb
	cp   e                                           ; $4559: $bb
	cp   d                                           ; $455a: $ba
	cp   d                                           ; $455b: $ba
	xor  d                                           ; $455c: $aa
	xor  c                                           ; $455d: $a9
	sbc  b                                           ; $455e: $98
	adc  b                                           ; $455f: $88
	add  a                                           ; $4560: $87
	ld   [hl], a                                     ; $4561: $77
	ld   [hl], a                                     ; $4562: $77
	ld   h, [hl]                                     ; $4563: $66
	ld   d, l                                        ; $4564: $55
	ld   d, l                                        ; $4565: $55
	ld   d, l                                        ; $4566: $55
	ld   d, l                                        ; $4567: $55
	ld   d, l                                        ; $4568: $55
	ld   d, [hl]                                     ; $4569: $56
	ld   a, b                                        ; $456a: $78
	sbc  c                                           ; $456b: $99
	xor  d                                           ; $456c: $aa
	cp   h                                           ; $456d: $bc
	cp   h                                           ; $456e: $bc
	call z, $aaba                                    ; $456f: $cc $ba $aa
	sbc  d                                           ; $4572: $9a
	sbc  c                                           ; $4573: $99
	sbc  c                                           ; $4574: $99
	sbc  c                                           ; $4575: $99
	adc  b                                           ; $4576: $88
	add  a                                           ; $4577: $87
	ld   [hl], a                                     ; $4578: $77
	halt                                             ; $4579: $76
	ld   h, l                                        ; $457a: $65
	ld   d, l                                        ; $457b: $55
	ld   d, l                                        ; $457c: $55
	ld   d, l                                        ; $457d: $55
	ld   d, l                                        ; $457e: $55
	ld   d, [hl]                                     ; $457f: $56
	ld   h, a                                        ; $4580: $67
	ld   a, c                                        ; $4581: $79
	sbc  c                                           ; $4582: $99
	cp   d                                           ; $4583: $ba
	cp   e                                           ; $4584: $bb
	cp   e                                           ; $4585: $bb
	cp   d                                           ; $4586: $ba
	cp   d                                           ; $4587: $ba
	sbc  c                                           ; $4588: $99
	xor  c                                           ; $4589: $a9
	sbc  c                                           ; $458a: $99
	adc  c                                           ; $458b: $89
	sbc  b                                           ; $458c: $98
	adc  b                                           ; $458d: $88
	add  a                                           ; $458e: $87
	ld   [hl], a                                     ; $458f: $77
	halt                                             ; $4590: $76
	ld   h, l                                        ; $4591: $65
	ld   d, l                                        ; $4592: $55
	ld   d, l                                        ; $4593: $55
	ld   d, l                                        ; $4594: $55
	ld   d, l                                        ; $4595: $55
	ld   d, [hl]                                     ; $4596: $56
	ld   h, a                                        ; $4597: $67
	ld   a, b                                        ; $4598: $78
	adc  d                                           ; $4599: $8a
	xor  e                                           ; $459a: $ab
	cp   d                                           ; $459b: $ba
	cp   d                                           ; $459c: $ba
	xor  e                                           ; $459d: $ab
	xor  d                                           ; $459e: $aa
	xor  d                                           ; $459f: $aa
	sbc  c                                           ; $45a0: $99
	sbc  c                                           ; $45a1: $99
	adc  b                                           ; $45a2: $88
	sbc  b                                           ; $45a3: $98
	adc  b                                           ; $45a4: $88
	adc  b                                           ; $45a5: $88
	ld   [hl], a                                     ; $45a6: $77
	ld   [hl], a                                     ; $45a7: $77
	ld   h, [hl]                                     ; $45a8: $66
	ld   d, l                                        ; $45a9: $55
	ld   d, l                                        ; $45aa: $55
	ld   d, l                                        ; $45ab: $55
	ld   d, l                                        ; $45ac: $55
	ld   d, l                                        ; $45ad: $55
	ld   h, [hl]                                     ; $45ae: $66
	ld   a, b                                        ; $45af: $78
	sbc  c                                           ; $45b0: $99
	sbc  d                                           ; $45b1: $9a
	xor  e                                           ; $45b2: $ab
	xor  e                                           ; $45b3: $ab
	cp   e                                           ; $45b4: $bb
	xor  c                                           ; $45b5: $a9
	sbc  d                                           ; $45b6: $9a
	sbc  c                                           ; $45b7: $99
	sbc  c                                           ; $45b8: $99
	sbc  c                                           ; $45b9: $99
	sbc  c                                           ; $45ba: $99
	adc  b                                           ; $45bb: $88
	adc  b                                           ; $45bc: $88
	ld   [hl], a                                     ; $45bd: $77
	ld   [hl], a                                     ; $45be: $77
	ld   h, [hl]                                     ; $45bf: $66
	ld   h, l                                        ; $45c0: $65
	ld   d, l                                        ; $45c1: $55
	ld   d, l                                        ; $45c2: $55
	ld   d, l                                        ; $45c3: $55
	ld   d, l                                        ; $45c4: $55
	ld   d, [hl]                                     ; $45c5: $56
	ld   [hl], a                                     ; $45c6: $77
	adc  b                                           ; $45c7: $88
	xor  c                                           ; $45c8: $a9
	xor  e                                           ; $45c9: $ab
	cp   d                                           ; $45ca: $ba
	xor  e                                           ; $45cb: $ab
	cp   d                                           ; $45cc: $ba
	sbc  d                                           ; $45cd: $9a
	sbc  c                                           ; $45ce: $99
	sbc  c                                           ; $45cf: $99
	sbc  c                                           ; $45d0: $99
	sbc  c                                           ; $45d1: $99
	sbc  b                                           ; $45d2: $98
	adc  b                                           ; $45d3: $88
	add  a                                           ; $45d4: $87
	ld   [hl], a                                     ; $45d5: $77
	halt                                             ; $45d6: $76
	ld   h, l                                        ; $45d7: $65
	ld   d, h                                        ; $45d8: $54
	ld   d, l                                        ; $45d9: $55
	ld   d, l                                        ; $45da: $55
	ld   h, l                                        ; $45db: $65
	ld   d, [hl]                                     ; $45dc: $56
	ld   h, a                                        ; $45dd: $67
	adc  b                                           ; $45de: $88
	sbc  d                                           ; $45df: $9a
	xor  e                                           ; $45e0: $ab
	xor  e                                           ; $45e1: $ab
	cp   d                                           ; $45e2: $ba
	xor  e                                           ; $45e3: $ab
	xor  c                                           ; $45e4: $a9
	xor  d                                           ; $45e5: $aa
	sbc  c                                           ; $45e6: $99
	sbc  c                                           ; $45e7: $99
	sbc  b                                           ; $45e8: $98
	sbc  b                                           ; $45e9: $98
	ld   [hl], a                                     ; $45ea: $77
	ld   [hl], a                                     ; $45eb: $77
	ld   [hl], a                                     ; $45ec: $77
	ld   h, [hl]                                     ; $45ed: $66
	ld   h, l                                        ; $45ee: $65
	ld   b, h                                        ; $45ef: $44
	ld   b, l                                        ; $45f0: $45
	ld   d, l                                        ; $45f1: $55
	ld   h, [hl]                                     ; $45f2: $66
	ld   d, [hl]                                     ; $45f3: $56
	ld   h, a                                        ; $45f4: $67
	adc  c                                           ; $45f5: $89
	sbc  d                                           ; $45f6: $9a
	xor  e                                           ; $45f7: $ab
	cp   e                                           ; $45f8: $bb
	cp   e                                           ; $45f9: $bb
	cp   e                                           ; $45fa: $bb
	xor  d                                           ; $45fb: $aa
	sbc  d                                           ; $45fc: $9a
	sbc  c                                           ; $45fd: $99
	sbc  c                                           ; $45fe: $99
	adc  c                                           ; $45ff: $89
	add  a                                           ; $4600: $87
	ld   [hl], a                                     ; $4601: $77
	halt                                             ; $4602: $76
	ld   h, [hl]                                     ; $4603: $66
	ld   d, l                                        ; $4604: $55
	ld   b, e                                        ; $4605: $43
	ld   [hl-], a                                    ; $4606: $32
	inc  [hl]                                        ; $4607: $34
	ld   d, l                                        ; $4608: $55
	ld   h, [hl]                                     ; $4609: $66
	ld   [hl], a                                     ; $460a: $77
	adc  c                                           ; $460b: $89
	xor  e                                           ; $460c: $ab
	cp   e                                           ; $460d: $bb
	call c, $ccdd                                    ; $460e: $dc $dd $cc
	cp   d                                           ; $4611: $ba
	xor  d                                           ; $4612: $aa
	sbc  b                                           ; $4613: $98
	adc  b                                           ; $4614: $88
	sbc  b                                           ; $4615: $98
	adc  b                                           ; $4616: $88
	halt                                             ; $4617: $76
	ld   h, l                                        ; $4618: $65
	ld   d, l                                        ; $4619: $55
	ld   b, h                                        ; $461a: $44
	ld   [hl-], a                                    ; $461b: $32
	ld   de, $4613                                   ; $461c: $11 $13 $46
	adc  b                                           ; $461f: $88
	sbc  d                                           ; $4620: $9a
	cp   h                                           ; $4621: $bc
	db   $dd                                         ; $4622: $dd
	db   $dd                                         ; $4623: $dd
	call $cccd                                       ; $4624: $cd $cd $cc
	xor  d                                           ; $4627: $aa
	sbc  c                                           ; $4628: $99
	adc  b                                           ; $4629: $88
	sbc  c                                           ; $462a: $99
	adc  c                                           ; $462b: $89
	add  a                                           ; $462c: $87
	halt                                             ; $462d: $76
	ld   b, e                                        ; $462e: $43
	ld   [hl-], a                                    ; $462f: $32
	ld   hl, $1101                                   ; $4630: $21 $01 $11
	dec  d                                           ; $4633: $15
	ld   a, d                                        ; $4634: $7a
	cp   h                                           ; $4635: $bc
	call $feff                                       ; $4636: $cd $ff $fe
	cp   e                                           ; $4639: $bb
	call z, $b9bb                                    ; $463a: $cc $bb $b9
	sbc  d                                           ; $463d: $9a
	sbc  c                                           ; $463e: $99
	xor  c                                           ; $463f: $a9
	sbc  c                                           ; $4640: $99
	sbc  c                                           ; $4641: $99
	halt                                             ; $4642: $76

Jump_0da_4643:
	ld   b, d                                        ; $4643: $42
	ld   de, $1111                                   ; $4644: $11 $11 $11
	ld   de, $8c15                                   ; $4647: $11 $15 $8c
	cp   $ef                                         ; $464a: $fe $ef
	rst  $38                                         ; $464c: $ff
	db   $ed                                         ; $464d: $ed
	xor  c                                           ; $464e: $a9
	xor  e                                           ; $464f: $ab
	cp   e                                           ; $4650: $bb
	res  5, e                                        ; $4651: $cb $ab
	cp   e                                           ; $4653: $bb
	cp   c                                           ; $4654: $b9
	adc  b                                           ; $4655: $88
	adc  b                                           ; $4656: $88
	ld   [hl], l                                     ; $4657: $75
	ld   sp, $1111                                   ; $4658: $31 $11 $11
	ld   de, $1611                                   ; $465b: $11 $11 $16
	xor  l                                           ; $465e: $ad
	rst  $38                                         ; $465f: $ff
	xor  $ee                                         ; $4660: $ee $ee
	db   $db                                         ; $4662: $db
	sbc  b                                           ; $4663: $98
	cp   h                                           ; $4664: $bc
	xor  $cb                                         ; $4665: $ee $cb
	cp   h                                           ; $4667: $bc
	call z, Call_0da_67b9                            ; $4668: $cc $b9 $67
	ld   [hl], a                                     ; $466b: $77
	ld   h, h                                        ; $466c: $64
	ld   de, $1111                                   ; $466d: $11 $11 $11
	ld   de, $1711                                   ; $4670: $11 $11 $17
	call $dfed                                       ; $4673: $cd $ed $df
	cp   $c9                                         ; $4676: $fe $c9
	adc  b                                           ; $4678: $88
	cp   [hl]                                        ; $4679: $be
	cp   $cb                                         ; $467a: $fe $cb
	call z, $a7dc                                    ; $467c: $cc $dc $a7
	ld   h, a                                        ; $467f: $67
	ld   [hl], a                                     ; $4680: $77
	ld   d, e                                        ; $4681: $53
	ld   bc, $2102                                   ; $4682: $01 $02 $21
	ld   de, $2811                                   ; $4685: $11 $11 $28
	call $ddfd                                       ; $4688: $cd $fd $dd
	db   $ed                                         ; $468b: $ed
	xor  c                                           ; $468c: $a9
	adc  d                                           ; $468d: $8a
	rst  JumpTable                                         ; $468e: $df
	rst  $38                                         ; $468f: $ff
	call z, $dbcc                                    ; $4690: $cc $cc $db
	sub  a                                           ; $4693: $97
	ld   h, a                                        ; $4694: $67
	ld   [hl], a                                     ; $4695: $77
	ld   d, d                                        ; $4696: $52
	ld   de, $1112                                   ; $4697: $11 $12 $11
	ld   de, $3911                                   ; $469a: $11 $11 $39
	cp   l                                           ; $469d: $bd
	xor  $ef                                         ; $469e: $ee $ef
	db   $eb                                         ; $46a0: $eb
	xor  b                                           ; $46a1: $a8
	adc  e                                           ; $46a2: $8b
	rst  $28                                         ; $46a3: $ef
	cp   $ed                                         ; $46a4: $fe $ed
	db   $dd                                         ; $46a6: $dd
	xor  b                                           ; $46a7: $a8
	halt                                             ; $46a8: $76
	ld   a, c                                        ; $46a9: $79
	add  [hl]                                        ; $46aa: $86
	ld   b, d                                        ; $46ab: $42
	ld   de, $1122                                   ; $46ac: $11 $22 $11
	ld   de, $2811                                   ; $46af: $11 $11 $28
	adc  $fe                                         ; $46b2: $ce $fe
	xor  $cc                                         ; $46b4: $ee $cc
	sbc  b                                           ; $46b6: $98
	sbc  e                                           ; $46b7: $9b
	rst  $28                                         ; $46b8: $ef
	rst  $38                                         ; $46b9: $ff
	db   $dd                                         ; $46ba: $dd
	res  7, c                                        ; $46bb: $cb $b9
	halt                                             ; $46bd: $76
	ld   h, a                                        ; $46be: $67
	halt                                             ; $46bf: $76
	ld   b, d                                        ; $46c0: $42
	ld   [hl+], a                                    ; $46c1: $22
	inc  hl                                          ; $46c2: $23
	ld   hl, $1111                                   ; $46c3: $21 $11 $11
	dec  hl                                          ; $46c6: $2b
	rst  JumpTable                                         ; $46c7: $df
	db   $fd                                         ; $46c8: $fd
	call z, $9abb                                    ; $46c9: $cc $bb $9a
	sbc  e                                           ; $46cc: $9b
	rst  $38                                         ; $46cd: $ff
	cp   $cb                                         ; $46ce: $fe $cb
	call z, $86a9                                    ; $46d0: $cc $a9 $86
	ld   l, b                                        ; $46d3: $68
	ld   h, h                                        ; $46d4: $64
	ld   [hl-], a                                    ; $46d5: $32
	inc  hl                                          ; $46d6: $23
	ld   b, e                                        ; $46d7: $43
	ld   de, $1111                                   ; $46d8: $11 $11 $11
	ld   l, h                                        ; $46db: $6c
	rst  $28                                         ; $46dc: $ef
	db   $fc                                         ; $46dd: $fc
	call Call_0da_78a7                               ; $46de: $cd $a7 $78
	xor  a                                           ; $46e1: $af
	rst  $38                                         ; $46e2: $ff
	cp   $bb                                         ; $46e3: $fe $bb
	jp   z, Jump_0da_7787                            ; $46e5: $ca $87 $77

	sbc  b                                           ; $46e8: $98
	ld   h, h                                        ; $46e9: $64
	ld   [hl+], a                                    ; $46ea: $22
	ld   b, h                                        ; $46eb: $44
	ld   b, d                                        ; $46ec: $42
	ld   de, $1111                                   ; $46ed: $11 $11 $11
	adc  h                                           ; $46f0: $8c
	rst  $38                                         ; $46f1: $ff
	cp   $c7                                         ; $46f2: $fe $c7
	ld   d, l                                        ; $46f4: $55
	adc  h                                           ; $46f5: $8c
	rst  $28                                         ; $46f6: $ef
	rst  $38                                         ; $46f7: $ff
	db   $fc                                         ; $46f8: $fc
	cp   d                                           ; $46f9: $ba
	xor  c                                           ; $46fa: $a9
	adc  c                                           ; $46fb: $89
	sbc  d                                           ; $46fc: $9a
	sub  [hl]                                        ; $46fd: $96
	ld   sp, $3412                                   ; $46fe: $31 $12 $34
	ld   b, d                                        ; $4701: $42
	ld   de, $1811                                   ; $4702: $11 $11 $18
	xor  $fe                                         ; $4705: $ee $fe
	call z, Call_0da_6776                            ; $4707: $cc $76 $67
	cp   l                                           ; $470a: $bd
	rst  $38                                         ; $470b: $ff
	cp   $ba                                         ; $470c: $fe $ba
	xor  d                                           ; $470e: $aa
	xor  c                                           ; $470f: $a9
	cp   d                                           ; $4710: $ba
	adc  b                                           ; $4711: $88
	ld   h, l                                        ; $4712: $65
	ld   [hl-], a                                    ; $4713: $32
	inc  [hl]                                        ; $4714: $34
	ld   d, e                                        ; $4715: $53
	ld   de, $1111                                   ; $4716: $11 $11 $11
	ld   a, [hl]                                     ; $4719: $7e
	rst  $38                                         ; $471a: $ff
	db   $eb                                         ; $471b: $eb
	xor  d                                           ; $471c: $aa
	halt                                             ; $471d: $76
	ld   a, b                                        ; $471e: $78
	rst  JumpTable                                         ; $471f: $df
	rst  $38                                         ; $4720: $ff
	db   $fc                                         ; $4721: $fc
	sbc  d                                           ; $4722: $9a
	cp   d                                           ; $4723: $ba
	sbc  c                                           ; $4724: $99
	adc  b                                           ; $4725: $88
	add  [hl]                                        ; $4726: $86
	ld   b, d                                        ; $4727: $42
	inc  hl                                          ; $4728: $23
	ld   b, h                                        ; $4729: $44
	ld   hl, $1111                                   ; $472a: $21 $11 $11
	ld   c, d                                        ; $472d: $4a
	rst  JumpTable                                         ; $472e: $df
	db   $fd                                         ; $472f: $fd
	cp   c                                           ; $4730: $b9
	ld   d, l                                        ; $4731: $55
	ld   a, c                                        ; $4732: $79
	rst  JumpTable                                         ; $4733: $df
	rst  $38                                         ; $4734: $ff
	db   $fd                                         ; $4735: $fd
	sbc  b                                           ; $4736: $98
	sbc  d                                           ; $4737: $9a
	xor  e                                           ; $4738: $ab
	xor  b                                           ; $4739: $a8
	ld   [hl], a                                     ; $473a: $77
	ld   b, e                                        ; $473b: $43
	ld   de, $4144                                   ; $473c: $11 $44 $41
	ld   de, $9a12                                   ; $473f: $11 $12 $9a
	rst  $38                                         ; $4742: $ff
	db   $ed                                         ; $4743: $ed
	sub  e                                           ; $4744: $93
	ld   d, l                                        ; $4745: $55
	ld   a, l                                        ; $4746: $7d
	rst  $38                                         ; $4747: $ff
	rst  $38                                         ; $4748: $ff
	jp   c, $8aa8                                    ; $4749: $da $a8 $8a

	cp   h                                           ; $474c: $bc
	jp   z, $0152                                    ; $474d: $ca $52 $01

	dec  h                                           ; $4750: $25
	ld   h, h                                        ; $4751: $64
	ld   de, $6a11                                   ; $4752: $11 $11 $6a
	call $abc9                                       ; $4755: $cd $c9 $ab
	sub  h                                           ; $4758: $94
	ld   b, a                                        ; $4759: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $475a: $cf
	rst  $38                                         ; $475b: $ff
	db   $eb                                         ; $475c: $eb
	sbc  c                                           ; $475d: $99
	cp   e                                           ; $475e: $bb
	sbc  c                                           ; $475f: $99
	adc  b                                           ; $4760: $88
	sub  [hl]                                        ; $4761: $96
	ld   [hl-], a                                    ; $4762: $32
	inc  de                                          ; $4763: $13
	ld   b, h                                        ; $4764: $44
	ld   [hl-], a                                    ; $4765: $32
	ld   [de], a                                     ; $4766: $12
	ld   l, b                                        ; $4767: $68
	xor  h                                           ; $4768: $ac
	xor  b                                           ; $4769: $a8
	sbc  c                                           ; $476a: $99
	ld   h, [hl]                                     ; $476b: $66
	adc  d                                           ; $476c: $8a
	rst  $28                                         ; $476d: $ef
	cp   $ca                                         ; $476e: $fe $ca
	sbc  h                                           ; $4770: $9c
	res  5, c                                        ; $4771: $cb $a9
	add  a                                           ; $4773: $87
	ld   d, d                                        ; $4774: $52
	ld   [de], a                                     ; $4775: $12
	ld   d, a                                        ; $4776: $57
	sub  h                                           ; $4777: $94
	ld   de, $db29                                   ; $4778: $11 $29 $db
	xor  c                                           ; $477b: $a9
	ld   a, c                                        ; $477c: $79
	ld   h, [hl]                                     ; $477d: $66
	ld   d, a                                        ; $477e: $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $477f: $cf
	rst  $38                                         ; $4780: $ff
	rst  $10                                         ; $4781: $d7
	ld   e, d                                        ; $4782: $5a
	xor  e                                           ; $4783: $ab
	jp   z, $5299                                    ; $4784: $ca $99 $52

	inc  de                                          ; $4787: $13
	ld   l, b                                        ; $4788: $68
	add  h                                           ; $4789: $84
	ld   [hl+], a                                    ; $478a: $22
	ld   c, b                                        ; $478b: $48
	xor  b                                           ; $478c: $a8
	xor  c                                           ; $478d: $a9
	adc  h                                           ; $478e: $8c
	sub  h                                           ; $478f: $94
	ld   d, [hl]                                     ; $4790: $56
	xor  a                                           ; $4791: $af
	rst  $38                                         ; $4792: $ff
	rst  ToBoot                                         ; $4793: $c7
	ld   d, [hl]                                     ; $4794: $56
	sbc  e                                           ; $4795: $9b
	cp   c                                           ; $4796: $b9
	ld   h, l                                        ; $4797: $65
	ld   [hl-], a                                    ; $4798: $32
	inc  [hl]                                        ; $4799: $34
	ld   h, a                                        ; $479a: $67
	ld   [hl], l                                     ; $479b: $75
	ld   [hl], $8a                                   ; $479c: $36 $8a
	rst  ToBoot                                         ; $479e: $c7
	ld   a, d                                        ; $479f: $7a
	adc  d                                           ; $47a0: $8a
	sub  h                                           ; $47a1: $94
	sbc  d                                           ; $47a2: $9a
	rst  $28                                         ; $47a3: $ef
	ld   hl, sp+$56                                  ; $47a4: $f8 $56
	ld   a, l                                        ; $47a6: $7d
	add  sp, $41                                     ; $47a7: $e8 $41
	ld   de, $a769                                   ; $47a9: $11 $69 $a7
	ld   sp, $bd26                                   ; $47ac: $31 $26 $bd
	sbc  b                                           ; $47af: $98
	and  a                                           ; $47b0: $a7
	ld   a, c                                        ; $47b1: $79
	ld   h, a                                        ; $47b2: $67
	sbc  a                                           ; $47b3: $9f
	rst  $38                                         ; $47b4: $ff
	add  $54                                         ; $47b5: $c6 $54
	cp   a                                           ; $47b7: $bf
	or   h                                           ; $47b8: $b4
	ld   de, $9916                                   ; $47b9: $11 $16 $99
	ld   [hl], h                                     ; $47bc: $74
	inc  de                                          ; $47bd: $13
	ld   l, d                                        ; $47be: $6a
	xor  d                                           ; $47bf: $aa
	ld   [hl], c                                     ; $47c0: $71
	sbc  l                                           ; $47c1: $9d
	call z, $8e94                                    ; $47c2: $cc $94 $8e
	rst  $38                                         ; $47c5: $ff
	push bc                                          ; $47c6: $c5
	dec  [hl]                                        ; $47c7: $35
	ld   a, e                                        ; $47c8: $7b
	ld   [hl], e                                     ; $47c9: $73
	ld   [hl-], a                                    ; $47ca: $32
	ld   l, b                                        ; $47cb: $68
	ld   [hl], h                                     ; $47cc: $74
	inc  [hl]                                        ; $47cd: $34
	ld   a, h                                        ; $47ce: $7c
	sub  l                                           ; $47cf: $95
	ld   [hl], $ac                                   ; $47d0: $36 $ac
	add  l                                           ; $47d2: $85
	sbc  h                                           ; $47d3: $9c
	cp   $cc                                         ; $47d4: $fe $cc
	xor  c                                           ; $47d6: $a9
	xor  d                                           ; $47d7: $aa
	ld   h, h                                        ; $47d8: $64
	inc  sp                                          ; $47d9: $33
	ld   a, d                                        ; $47da: $7a
	sub  a                                           ; $47db: $97
	ld   [hl-], a                                    ; $47dc: $32
	dec  h                                           ; $47dd: $25
	adc  e                                           ; $47de: $8b
	ret                                              ; $47df: $c9


	ld   d, l                                        ; $47e0: $55
	ld   a, e                                        ; $47e1: $7b
	xor  b                                           ; $47e2: $a8
	sbc  d                                           ; $47e3: $9a
	cp   [hl]                                        ; $47e4: $be
	jp   z, $68e8                                    ; $47e5: $ca $e8 $68

	ld   [hl-], a                                    ; $47e8: $32
	ld   b, [hl]                                     ; $47e9: $46
	adc  c                                           ; $47ea: $89
	ld   h, h                                        ; $47eb: $64
	ld   h, a                                        ; $47ec: $67
	ld   a, b                                        ; $47ed: $78
	add  a                                           ; $47ee: $87
	ld   h, a                                        ; $47ef: $67
	cp   e                                           ; $47f0: $bb
	xor  c                                           ; $47f1: $a9
	ld   l, c                                        ; $47f2: $69
	db   $dd                                         ; $47f3: $dd
	db   $eb                                         ; $47f4: $eb
	ld   a, c                                        ; $47f5: $79
	ld   d, l                                        ; $47f6: $55
	ld   d, e                                        ; $47f7: $53
	ld   l, c                                        ; $47f8: $69
	ld   [hl], l                                     ; $47f9: $75
	inc  sp                                          ; $47fa: $33
	ld   l, l                                        ; $47fb: $6d
	sub  $41                                         ; $47fc: $d6 $41
	ld   a, a                                        ; $47fe: $7f
	rst  JumpTable                                         ; $47ff: $df
	ld   h, c                                        ; $4800: $61
	adc  h                                           ; $4801: $8c
	rst  JumpTable                                         ; $4802: $df
	add  $97                                         ; $4803: $c6 $97
	ld   d, a                                        ; $4805: $57
	ld   sp, $876a                                   ; $4806: $31 $6a $87
	ld   h, l                                        ; $4809: $65
	ld   h, a                                        ; $480a: $67
	ld   h, h                                        ; $480b: $64
	adc  [hl]                                        ; $480c: $8e
	db   $eb                                         ; $480d: $eb
	sub  h                                           ; $480e: $94
	ld   a, c                                        ; $480f: $79
	cp   [hl]                                        ; $4810: $be

Call_0da_4811:
	xor  e                                           ; $4811: $ab
	sbc  c                                           ; $4812: $99
	or   a                                           ; $4813: $b7
	ld   b, c                                        ; $4814: $41
	daa                                              ; $4815: $27
	sbc  b                                           ; $4816: $98
	sub  a                                           ; $4817: $97
	ld   d, [hl]                                     ; $4818: $56
	add  l                                           ; $4819: $85
	ld   e, d                                        ; $481a: $5a
	xor  l                                           ; $481b: $ad
	add  sp, $69                                     ; $481c: $e8 $69
	sbc  e                                           ; $481e: $9b
	db   $ed                                         ; $481f: $ed
	cp   e                                           ; $4820: $bb
	ld   h, c                                        ; $4821: $61
	ld   [de], a                                     ; $4822: $12
	ld   a, [hl]                                     ; $4823: $7e
	sub  $23                                         ; $4824: $d6 $23
	ld   e, e                                        ; $4826: $5b
	or   l                                           ; $4827: $b5
	ld   d, l                                        ; $4828: $55
	sbc  [hl]                                        ; $4829: $9e
	db   $eb                                         ; $482a: $eb
	add  l                                           ; $482b: $85
	sbc  l                                           ; $482c: $9d
	cp   e                                           ; $482d: $bb
	ld   [hl], l                                     ; $482e: $75
	sbc  b                                           ; $482f: $98
	inc  hl                                          ; $4830: $23
	ld   d, [hl]                                     ; $4831: $56
	xor  c                                           ; $4832: $a9
	ld   [hl], h                                     ; $4833: $74
	ld   b, a                                        ; $4834: $47
	cp   e                                           ; $4835: $bb
	sub  a                                           ; $4836: $97
	adc  e                                           ; $4837: $8b
	sbc  e                                           ; $4838: $9b
	cp   d                                           ; $4839: $ba
	xor  e                                           ; $483a: $ab
	sub  [hl]                                        ; $483b: $96
	add  a                                           ; $483c: $87
	ld   b, [hl]                                     ; $483d: $46
	ld   b, h                                        ; $483e: $44
	ld   h, [hl]                                     ; $483f: $66
	sbc  d                                           ; $4840: $9a
	and  a                                           ; $4841: $a7
	inc  sp                                          ; $4842: $33
	ld   c, h                                        ; $4843: $4c
	rst  $38                                         ; $4844: $ff
	push de                                          ; $4845: $d5
	ld   h, a                                        ; $4846: $67
	ld   a, l                                        ; $4847: $7d
	xor  $71                                         ; $4848: $ee $71
	dec  d                                           ; $484a: $15
	sbc  e                                           ; $484b: $9b
	ld   [hl], d                                     ; $484c: $72
	dec  [hl]                                        ; $484d: $35
	xor  d                                           ; $484e: $aa
	ld   a, c                                        ; $484f: $79
	ld   h, a                                        ; $4850: $67
	sbc  d                                           ; $4851: $9a
	db   $dd                                         ; $4852: $dd
	sbc  b                                           ; $4853: $98
	cp   l                                           ; $4854: $bd
	sbc  b                                           ; $4855: $98
	ld   b, e                                        ; $4856: $43
	ld   [hl], l                                     ; $4857: $75
	ld   a, c                                        ; $4858: $79
	halt                                             ; $4859: $76
	adc  b                                           ; $485a: $88
	ld   [hl], h                                     ; $485b: $74
	ld   [hl], $af                                   ; $485c: $36 $af
	ei                                               ; $485e: $fb
	inc  [hl]                                        ; $485f: $34
	adc  h                                           ; $4860: $8c
	db   $fc                                         ; $4861: $fc
	ld   h, h                                        ; $4862: $64
	inc  d                                           ; $4863: $14
	sbc  d                                           ; $4864: $9a
	halt                                             ; $4865: $76
	dec  [hl]                                        ; $4866: $35
	cp   c                                           ; $4867: $b9
	sub  h                                           ; $4868: $94
	jr   @+$01                                       ; $4869: $18 $ff

	reti                                             ; $486b: $d9


	ld   h, $dd                                      ; $486c: $26 $dd
	rst  ToBoot                                         ; $486e: $c7
	ld   sp, $ba3a                                   ; $486f: $31 $3a $ba
	ld   d, c                                        ; $4872: $51
	ld   [hl], $bd                                   ; $4873: $36 $bd
	halt                                             ; $4875: $76
	ld   a, b                                        ; $4876: $78
	db   $fc                                         ; $4877: $fc
	sbc  b                                           ; $4878: $98
	ld   l, b                                        ; $4879: $68
	call c, $2365                                    ; $487a: $dc $65 $23
	adc  e                                           ; $487d: $8b
	push bc                                          ; $487e: $c5
	inc  [hl]                                        ; $487f: $34
	ld   e, h                                        ; $4880: $5c
	cp   c                                           ; $4881: $b9
	ld   a, b                                        ; $4882: $78
	sbc  h                                           ; $4883: $9c
	ld   [$aa76], a                                  ; $4884: $ea $76 $aa
	sub  l                                           ; $4887: $95
	inc  h                                           ; $4888: $24
	ld   e, d                                        ; $4889: $5a
	sub  l                                           ; $488a: $95
	ld   d, [hl]                                     ; $488b: $56
	xor  e                                           ; $488c: $ab
	adc  b                                           ; $488d: $88
	ld   l, c                                        ; $488e: $69
	db   $ec                                         ; $488f: $ec
	or   a                                           ; $4890: $b7
	ld   l, l                                        ; $4891: $6d
	cp   d                                           ; $4892: $ba
	ld   d, c                                        ; $4893: $51
	rla                                              ; $4894: $17
	cp   [hl]                                        ; $4895: $be
	and  d                                           ; $4896: $a2
	dec  [hl]                                        ; $4897: $35
	adc  h                                           ; $4898: $8c
	and  l                                           ; $4899: $a5
	ld   a, e                                        ; $489a: $7b
	call Call_0da_6897                               ; $489b: $cd $97 $68
	add  a                                           ; $489e: $87
	ld   h, [hl]                                     ; $489f: $66
	ld   l, c                                        ; $48a0: $69
	add  h                                           ; $48a1: $84
	ld   d, h                                        ; $48a2: $54
	adc  h                                           ; $48a3: $8c
	cp   d                                           ; $48a4: $ba
	ld   b, d                                        ; $48a5: $42
	sbc  a                                           ; $48a6: $9f
	ei                                               ; $48a7: $fb
	ld   b, c                                        ; $48a8: $41
	ld   a, l                                        ; $48a9: $7d
	add  a                                           ; $48aa: $87
	ld   d, c                                        ; $48ab: $51
	sub  a                                           ; $48ac: $97
	ld   e, c                                        ; $48ad: $59
	sub  a                                           ; $48ae: $97
	xor  c                                           ; $48af: $a9
	ld   e, b                                        ; $48b0: $58
	sbc  e                                           ; $48b1: $9b
	sbc  $87                                         ; $48b2: $de $87
	ld   h, l                                        ; $48b4: $65
	ld   [hl], l                                     ; $48b5: $75
	ld   h, a                                        ; $48b6: $67
	adc  c                                           ; $48b7: $89
	ld   [hl], l                                     ; $48b8: $75
	ld   b, [hl]                                     ; $48b9: $46
	adc  l                                           ; $48ba: $8d
	xor  b                                           ; $48bb: $a8
	ld   [hl], a                                     ; $48bc: $77
	cp   l                                           ; $48bd: $bd
	reti                                             ; $48be: $d9


	ld   d, h                                        ; $48bf: $54
	ld   d, a                                        ; $48c0: $57
	sbc  d                                           ; $48c1: $9a
	ld   [hl], l                                     ; $48c2: $75
	inc  [hl]                                        ; $48c3: $34
	ld   a, h                                        ; $48c4: $7c
	cp   b                                           ; $48c5: $b8
	add  l                                           ; $48c6: $85
	adc  h                                           ; $48c7: $8c
	call z, Call_0da_57c7                            ; $48c8: $cc $c7 $57
	ld   d, l                                        ; $48cb: $55
	ld   h, a                                        ; $48cc: $67
	xor  c                                           ; $48cd: $a9
	ld   h, h                                        ; $48ce: $64
	ld   a, c                                        ; $48cf: $79
	sbc  d                                           ; $48d0: $9a
	ld   a, b                                        ; $48d1: $78
	db   $eb                                         ; $48d2: $eb
	sbc  c                                           ; $48d3: $99
	ld   d, a                                        ; $48d4: $57
	xor  d                                           ; $48d5: $aa
	sub  h                                           ; $48d6: $94
	inc  de                                          ; $48d7: $13
	xor  h                                           ; $48d8: $ac
	and  l                                           ; $48d9: $a5
	ld   d, a                                        ; $48da: $57
	cp   h                                           ; $48db: $bc
	sub  l                                           ; $48dc: $95
	ld   e, d                                        ; $48dd: $5a
	cp   $b7                                         ; $48de: $fe $b7
	ld   d, $44                                      ; $48e0: $16 $44
	add  $a9                                         ; $48e2: $c6 $a9
	dec  [hl]                                        ; $48e4: $35
	ld   a, c                                        ; $48e5: $79
	call z, $9a67                                    ; $48e6: $cc $67 $9a
	db   $db                                         ; $48e9: $db
	ld   h, a                                        ; $48ea: $67
	ld   h, d                                        ; $48eb: $62
	ld   h, [hl]                                     ; $48ec: $66
	adc  e                                           ; $48ed: $8b
	ld   l, b                                        ; $48ee: $68
	sbc  c                                           ; $48ef: $99
	ld   d, [hl]                                     ; $48f0: $56
	sbc  c                                           ; $48f1: $99
	cp   e                                           ; $48f2: $bb
	xor  e                                           ; $48f3: $ab
	add  [hl]                                        ; $48f4: $86
	ld   [hl], l                                     ; $48f5: $75
	ld   d, h                                        ; $48f6: $54
	ld   e, d                                        ; $48f7: $5a
	or   a                                           ; $48f8: $b7
	ld   h, l                                        ; $48f9: $65
	ld   l, d                                        ; $48fa: $6a
	cp   c                                           ; $48fb: $b9
	xor  d                                           ; $48fc: $aa
	xor  h                                           ; $48fd: $ac
	ld   [hl], l                                     ; $48fe: $75
	ld   h, [hl]                                     ; $48ff: $66
	xor  d                                           ; $4900: $aa
	ld   h, h                                        ; $4901: $64
	inc  [hl]                                        ; $4902: $34
	ld   a, e                                        ; $4903: $7b
	jp   z, $aa77                                    ; $4904: $ca $77 $aa

	xor  d                                           ; $4907: $aa
	add  a                                           ; $4908: $87
	and  a                                           ; $4909: $a7
	add  a                                           ; $490a: $87
	ld   l, b                                        ; $490b: $68
	inc  [hl]                                        ; $490c: $34
	ld   [hl], a                                     ; $490d: $77
	adc  h                                           ; $490e: $8c
	xor  d                                           ; $490f: $aa
	ld   [hl], h                                     ; $4910: $74
	sbc  l                                           ; $4911: $9d
	db   $db                                         ; $4912: $db
	ld   h, h                                        ; $4913: $64
	ld   l, c                                        ; $4914: $69
	ld   h, l                                        ; $4915: $65
	ld   d, h                                        ; $4916: $54
	xor  c                                           ; $4917: $a9
	sbc  c                                           ; $4918: $99
	ld   d, a                                        ; $4919: $57
	ret                                              ; $491a: $c9


	ret                                              ; $491b: $c9


	adc  h                                           ; $491c: $8c
	ret  z                                           ; $491d: $c8

	ld   h, c                                        ; $491e: $61
	dec  h                                           ; $491f: $25
	sbc  d                                           ; $4920: $9a
	ld   a, b                                        ; $4921: $78
	adc  d                                           ; $4922: $8a
	and  [hl]                                        ; $4923: $a6
	ld   l, c                                        ; $4924: $69
	xor  e                                           ; $4925: $ab
	ret  z                                           ; $4926: $c8

	ld   [hl], a                                     ; $4927: $77
	ld   l, c                                        ; $4928: $69
	ld   [hl], l                                     ; $4929: $75
	dec  [hl]                                        ; $492a: $35
	ld   h, a                                        ; $492b: $67
	ret  z                                           ; $492c: $c8

	xor  l                                           ; $492d: $ad
	xor  d                                           ; $492e: $aa
	ld   h, h                                        ; $492f: $64
	xor  l                                           ; $4930: $ad
	jp   z, Jump_0da_4643                            ; $4931: $ca $43 $46

	adc  b                                           ; $4934: $88
	ld   h, e                                        ; $4935: $63
	ld   l, c                                        ; $4936: $69
	xor  $75                                         ; $4937: $ee $75
	ld   l, c                                        ; $4939: $69
	db   $ec                                         ; $493a: $ec
	add  l                                           ; $493b: $85
	ld   b, [hl]                                     ; $493c: $46
	ld   [hl], a                                     ; $493d: $77
	halt                                             ; $493e: $76
	ld   h, a                                        ; $493f: $67
	ld   e, c                                        ; $4940: $59
	jp   z, Jump_0da_7ab8                            ; $4941: $ca $b8 $7a

	sbc  h                                           ; $4944: $9c
	sub  a                                           ; $4945: $97
	ld   [hl], h                                     ; $4946: $74
	ld   d, [hl]                                     ; $4947: $56
	ld   l, c                                        ; $4948: $69
	add  l                                           ; $4949: $85
	ld   l, b                                        ; $494a: $68
	bit  7, b                                        ; $494b: $cb $78
	ld   l, l                                        ; $494d: $6d
	db   $db                                         ; $494e: $db
	and  h                                           ; $494f: $a4
	ld   b, e                                        ; $4950: $43
	scf                                              ; $4951: $37
	adc  c                                           ; $4952: $89
	cp   b                                           ; $4953: $b8
	ld   h, a                                        ; $4954: $67
	adc  e                                           ; $4955: $8b
	adc  c                                           ; $4956: $89
	xor  e                                           ; $4957: $ab
	cp   c                                           ; $4958: $b9
	ld   h, e                                        ; $4959: $63
	ld   h, [hl]                                     ; $495a: $66
	ld   a, d                                        ; $495b: $7a
	halt                                             ; $495c: $76
	ld   h, l                                        ; $495d: $65
	sbc  e                                           ; $495e: $9b
	cp   d                                           ; $495f: $ba
	add  a                                           ; $4960: $87
	xor  e                                           ; $4961: $ab
	xor  c                                           ; $4962: $a9
	ld   [hl], h                                     ; $4963: $74
	ld   h, [hl]                                     ; $4964: $66
	ld   l, b                                        ; $4965: $68
	ld   h, [hl]                                     ; $4966: $66
	cp   d                                           ; $4967: $ba
	ld   a, b                                        ; $4968: $78
	ld   e, e                                        ; $4969: $5b
	jp   c, Jump_0da_7898                            ; $496a: $da $98 $78

	ld   [hl], l                                     ; $496d: $75
	ld   [hl], a                                     ; $496e: $77
	ld   h, a                                        ; $496f: $67
	ld   h, a                                        ; $4970: $67
	xor  b                                           ; $4971: $a8
	sbc  e                                           ; $4972: $9b
	ld   a, e                                        ; $4973: $7b
	cp   c                                           ; $4974: $b9
	or   a                                           ; $4975: $b7
	ld   l, b                                        ; $4976: $68
	ld   d, a                                        ; $4977: $57
	sub  [hl]                                        ; $4978: $96
	add  h                                           ; $4979: $84
	ld   b, a                                        ; $497a: $47
	sbc  l                                           ; $497b: $9d
	jp   z, $8a97                                    ; $497c: $ca $97 $8a

	sbc  c                                           ; $497f: $99
	ld   b, [hl]                                     ; $4980: $46
	and  a                                           ; $4981: $a7
	ld   [hl], l                                     ; $4982: $75
	ld   [hl], $ba                                   ; $4983: $36 $ba
	xor  c                                           ; $4985: $a9
	ld   a, c                                        ; $4986: $79
	xor  h                                           ; $4987: $ac
	or   a                                           ; $4988: $b7
	ld   b, a                                        ; $4989: $47
	ld   a, b                                        ; $498a: $78
	ld   h, h                                        ; $498b: $64
	adc  c                                           ; $498c: $89
	ld   [hl], a                                     ; $498d: $77
	adc  b                                           ; $498e: $88
	res  3, b                                        ; $498f: $cb $98
	ld   l, c                                        ; $4991: $69
	xor  c                                           ; $4992: $a9
	add  l                                           ; $4993: $85
	dec  [hl]                                        ; $4994: $35
	adc  c                                           ; $4995: $89
	sub  a                                           ; $4996: $97
	adc  b                                           ; $4997: $88
	sbc  c                                           ; $4998: $99
	sbc  e                                           ; $4999: $9b
	xor  c                                           ; $499a: $a9
	ld   l, b                                        ; $499b: $68
	ld   h, [hl]                                     ; $499c: $66
	add  a                                           ; $499d: $87
	ld   a, c                                        ; $499e: $79
	add  [hl]                                        ; $499f: $86
	halt                                             ; $49a0: $76
	sbc  l                                           ; $49a1: $9d
	sbc  c                                           ; $49a2: $99
	add  [hl]                                        ; $49a3: $86
	cp   c                                           ; $49a4: $b9
	add  a                                           ; $49a5: $87
	ld   d, l                                        ; $49a6: $55
	ld   l, b                                        ; $49a7: $68
	ld   a, d                                        ; $49a8: $7a
	sub  [hl]                                        ; $49a9: $96
	sbc  b                                           ; $49aa: $98
	cp   e                                           ; $49ab: $bb
	adc  c                                           ; $49ac: $89
	sub  [hl]                                        ; $49ad: $96
	add  a                                           ; $49ae: $87
	ld   a, h                                        ; $49af: $7c
	ld   h, [hl]                                     ; $49b0: $66
	ld   h, h                                        ; $49b1: $64
	sbc  d                                           ; $49b2: $9a
	sbc  d                                           ; $49b3: $9a
	add  a                                           ; $49b4: $87
	adc  c                                           ; $49b5: $89
	cp   c                                           ; $49b6: $b9
	ld   [hl], l                                     ; $49b7: $75
	ld   e, b                                        ; $49b8: $58
	add  a                                           ; $49b9: $87
	ld   h, a                                        ; $49ba: $67
	sbc  d                                           ; $49bb: $9a
	xor  c                                           ; $49bc: $a9
	halt                                             ; $49bd: $76
	ld   a, d                                        ; $49be: $7a
	cp   d                                           ; $49bf: $ba
	sub  h                                           ; $49c0: $94
	scf                                              ; $49c1: $37
	ld   a, c                                        ; $49c2: $79
	and  a                                           ; $49c3: $a7
	add  a                                           ; $49c4: $87
	ld   a, b                                        ; $49c5: $78
	adc  d                                           ; $49c6: $8a
	xor  b                                           ; $49c7: $a8
	add  a                                           ; $49c8: $87
	halt                                             ; $49c9: $76
	adc  b                                           ; $49ca: $88
	ld   [hl], a                                     ; $49cb: $77
	ld   e, b                                        ; $49cc: $58
	xor  c                                           ; $49cd: $a9
	and  a                                           ; $49ce: $a7
	ld   l, b                                        ; $49cf: $68
	sbc  b                                           ; $49d0: $98
	and  a                                           ; $49d1: $a7
	ld   l, b                                        ; $49d2: $68
	ld   l, b                                        ; $49d3: $68
	add  [hl]                                        ; $49d4: $86
	ld   a, d                                        ; $49d5: $7a
	adc  c                                           ; $49d6: $89
	sub  a                                           ; $49d7: $97
	adc  d                                           ; $49d8: $8a
	sbc  b                                           ; $49d9: $98
	sub  l                                           ; $49da: $95
	ld   a, b                                        ; $49db: $78
	ld   l, c                                        ; $49dc: $69
	halt                                             ; $49dd: $76
	add  a                                           ; $49de: $87
	sbc  d                                           ; $49df: $9a
	ld   [hl], a                                     ; $49e0: $77
	sub  a                                           ; $49e1: $97
	sbc  c                                           ; $49e2: $99
	add  a                                           ; $49e3: $87
	sub  a                                           ; $49e4: $97
	ld   [hl], a                                     ; $49e5: $77
	ld   e, d                                        ; $49e6: $5a
	xor  b                                           ; $49e7: $a8
	ld   h, [hl]                                     ; $49e8: $66
	adc  c                                           ; $49e9: $89
	sbc  d                                           ; $49ea: $9a
	sub  a                                           ; $49eb: $97
	ld   [hl], a                                     ; $49ec: $77
	adc  c                                           ; $49ed: $89
	adc  b                                           ; $49ee: $88
	add  a                                           ; $49ef: $87
	ld   a, c                                        ; $49f0: $79
	ld   [hl], a                                     ; $49f1: $77
	add  a                                           ; $49f2: $87
	adc  c                                           ; $49f3: $89
	add  a                                           ; $49f4: $87
	adc  c                                           ; $49f5: $89
	sbc  c                                           ; $49f6: $99
	ld   d, a                                        ; $49f7: $57
	sbc  c                                           ; $49f8: $99
	adc  c                                           ; $49f9: $89
	sbc  c                                           ; $49fa: $99
	and  a                                           ; $49fb: $a7
	ld   h, a                                        ; $49fc: $67
	adc  d                                           ; $49fd: $8a
	and  a                                           ; $49fe: $a7
	ld   [hl], a                                     ; $49ff: $77
	ld   l, b                                        ; $4a00: $68
	add  a                                           ; $4a01: $87
	ld   a, b                                        ; $4a02: $78
	adc  c                                           ; $4a03: $89
	sub  a                                           ; $4a04: $97
	sub  [hl]                                        ; $4a05: $96
	ld   h, a                                        ; $4a06: $67
	adc  c                                           ; $4a07: $89
	sbc  c                                           ; $4a08: $99
	ld   [hl], a                                     ; $4a09: $77
	ld   [hl], a                                     ; $4a0a: $77
	ld   a, c                                        ; $4a0b: $79
	xor  b                                           ; $4a0c: $a8
	sub  a                                           ; $4a0d: $97
	ld   a, c                                        ; $4a0e: $79
	adc  b                                           ; $4a0f: $88
	sub  a                                           ; $4a10: $97
	adc  d                                           ; $4a11: $8a
	ld   a, d                                        ; $4a12: $7a
	add  a                                           ; $4a13: $87
	ld   [hl], a                                     ; $4a14: $77
	adc  c                                           ; $4a15: $89
	ld   [hl], a                                     ; $4a16: $77
	sbc  b                                           ; $4a17: $98
	adc  b                                           ; $4a18: $88
	ld   a, b                                        ; $4a19: $78
	sbc  b                                           ; $4a1a: $98
	sub  a                                           ; $4a1b: $97
	ld   a, c                                        ; $4a1c: $79
	adc  b                                           ; $4a1d: $88
	add  a                                           ; $4a1e: $87
	ld   [hl], a                                     ; $4a1f: $77
	sbc  c                                           ; $4a20: $99
	adc  b                                           ; $4a21: $88
	adc  b                                           ; $4a22: $88
	adc  b                                           ; $4a23: $88
	add  a                                           ; $4a24: $87
	ld   [hl], a                                     ; $4a25: $77
	adc  d                                           ; $4a26: $8a
	adc  b                                           ; $4a27: $88
	ld   a, b                                        ; $4a28: $78
	adc  b                                           ; $4a29: $88
	adc  b                                           ; $4a2a: $88
	adc  b                                           ; $4a2b: $88
	adc  b                                           ; $4a2c: $88
	adc  b                                           ; $4a2d: $88
	ld   a, b                                        ; $4a2e: $78
	ld   a, b                                        ; $4a2f: $78
	adc  c                                           ; $4a30: $89
	adc  b                                           ; $4a31: $88
	ld   [hl], a                                     ; $4a32: $77
	adc  c                                           ; $4a33: $89
	adc  b                                           ; $4a34: $88
	add  a                                           ; $4a35: $87
	adc  b                                           ; $4a36: $88
	adc  b                                           ; $4a37: $88
	ld   [hl], a                                     ; $4a38: $77
	adc  b                                           ; $4a39: $88
	sbc  c                                           ; $4a3a: $99
	ld   [hl], a                                     ; $4a3b: $77
	adc  b                                           ; $4a3c: $88
	sub  a                                           ; $4a3d: $97
	ld   [hl], a                                     ; $4a3e: $77
	ld   a, c                                        ; $4a3f: $79
	adc  b                                           ; $4a40: $88
	add  a                                           ; $4a41: $87
	adc  b                                           ; $4a42: $88
	adc  b                                           ; $4a43: $88
	ld   [hl], a                                     ; $4a44: $77
	sbc  c                                           ; $4a45: $99
	adc  b                                           ; $4a46: $88
	ld   [hl], a                                     ; $4a47: $77
	adc  c                                           ; $4a48: $89
	sbc  b                                           ; $4a49: $98
	ld   [hl], a                                     ; $4a4a: $77
	sbc  b                                           ; $4a4b: $98
	sbc  b                                           ; $4a4c: $98
	ld   a, b                                        ; $4a4d: $78
	adc  b                                           ; $4a4e: $88
	adc  b                                           ; $4a4f: $88
	sbc  c                                           ; $4a50: $99
	adc  b                                           ; $4a51: $88
	ld   [hl], a                                     ; $4a52: $77
	adc  b                                           ; $4a53: $88
	adc  b                                           ; $4a54: $88
	adc  b                                           ; $4a55: $88
	adc  b                                           ; $4a56: $88
	ld   a, b                                        ; $4a57: $78
	adc  b                                           ; $4a58: $88
	adc  b                                           ; $4a59: $88
	add  a                                           ; $4a5a: $87
	ld   a, b                                        ; $4a5b: $78
	adc  c                                           ; $4a5c: $89
	adc  b                                           ; $4a5d: $88
	ld   a, b                                        ; $4a5e: $78
	adc  c                                           ; $4a5f: $89
	sbc  b                                           ; $4a60: $98
	ld   [hl], a                                     ; $4a61: $77
	ld   a, b                                        ; $4a62: $78
	sbc  c                                           ; $4a63: $99
	adc  b                                           ; $4a64: $88
	ld   a, b                                        ; $4a65: $78
	sbc  b                                           ; $4a66: $98
	adc  b                                           ; $4a67: $88
	ld   a, b                                        ; $4a68: $78
	adc  b                                           ; $4a69: $88
	add  a                                           ; $4a6a: $87
	adc  b                                           ; $4a6b: $88
	adc  c                                           ; $4a6c: $89
	adc  c                                           ; $4a6d: $89
	adc  b                                           ; $4a6e: $88
	adc  b                                           ; $4a6f: $88
	add  a                                           ; $4a70: $87
	adc  c                                           ; $4a71: $89
	adc  b                                           ; $4a72: $88
	adc  b                                           ; $4a73: $88
	ld   [hl], a                                     ; $4a74: $77
	sbc  b                                           ; $4a75: $98
	sbc  b                                           ; $4a76: $98
	ld   a, b                                        ; $4a77: $78
	adc  b                                           ; $4a78: $88
	sub  a                                           ; $4a79: $97
	add  a                                           ; $4a7a: $87
	ld   a, b                                        ; $4a7b: $78
	adc  b                                           ; $4a7c: $88
	adc  b                                           ; $4a7d: $88
	adc  b                                           ; $4a7e: $88
	ld   a, b                                        ; $4a7f: $78
	adc  c                                           ; $4a80: $89
	sbc  b                                           ; $4a81: $98
	add  a                                           ; $4a82: $87
	adc  b                                           ; $4a83: $88
	sbc  b                                           ; $4a84: $98
	add  a                                           ; $4a85: $87
	adc  b                                           ; $4a86: $88
	adc  b                                           ; $4a87: $88
	adc  b                                           ; $4a88: $88
	adc  b                                           ; $4a89: $88
	adc  c                                           ; $4a8a: $89
	adc  b                                           ; $4a8b: $88
	add  a                                           ; $4a8c: $87
	adc  b                                           ; $4a8d: $88
	adc  c                                           ; $4a8e: $89
	adc  b                                           ; $4a8f: $88
	add  a                                           ; $4a90: $87
	adc  c                                           ; $4a91: $89
	adc  b                                           ; $4a92: $88
	adc  b                                           ; $4a93: $88
	adc  b                                           ; $4a94: $88
	adc  b                                           ; $4a95: $88
	adc  b                                           ; $4a96: $88
	adc  b                                           ; $4a97: $88
	adc  b                                           ; $4a98: $88
	adc  c                                           ; $4a99: $89
	adc  b                                           ; $4a9a: $88
	adc  b                                           ; $4a9b: $88
	sbc  b                                           ; $4a9c: $98
	adc  b                                           ; $4a9d: $88
	adc  b                                           ; $4a9e: $88
	adc  b                                           ; $4a9f: $88
	adc  b                                           ; $4aa0: $88
	adc  b                                           ; $4aa1: $88
	adc  b                                           ; $4aa2: $88
	ld   a, b                                        ; $4aa3: $78
	adc  c                                           ; $4aa4: $89
	adc  b                                           ; $4aa5: $88
	add  a                                           ; $4aa6: $87
	adc  b                                           ; $4aa7: $88
	adc  c                                           ; $4aa8: $89
	adc  b                                           ; $4aa9: $88
	add  a                                           ; $4aaa: $87
	adc  b                                           ; $4aab: $88
	adc  b                                           ; $4aac: $88
	ld   a, b                                        ; $4aad: $78
	adc  b                                           ; $4aae: $88
	adc  b                                           ; $4aaf: $88
	adc  b                                           ; $4ab0: $88
	adc  b                                           ; $4ab1: $88
	adc  b                                           ; $4ab2: $88
	adc  b                                           ; $4ab3: $88
	adc  b                                           ; $4ab4: $88
	adc  b                                           ; $4ab5: $88
	adc  b                                           ; $4ab6: $88
	adc  b                                           ; $4ab7: $88
	adc  b                                           ; $4ab8: $88
	adc  b                                           ; $4ab9: $88
	adc  b                                           ; $4aba: $88
	adc  b                                           ; $4abb: $88
	adc  b                                           ; $4abc: $88
	adc  b                                           ; $4abd: $88
	adc  b                                           ; $4abe: $88
	adc  b                                           ; $4abf: $88
	adc  b                                           ; $4ac0: $88
	adc  b                                           ; $4ac1: $88
	adc  b                                           ; $4ac2: $88
	adc  b                                           ; $4ac3: $88
	adc  b                                           ; $4ac4: $88
	adc  b                                           ; $4ac5: $88
	adc  b                                           ; $4ac6: $88
	adc  b                                           ; $4ac7: $88
	adc  b                                           ; $4ac8: $88
	adc  b                                           ; $4ac9: $88
	adc  b                                           ; $4aca: $88
	adc  b                                           ; $4acb: $88
	adc  b                                           ; $4acc: $88
	adc  b                                           ; $4acd: $88
	adc  b                                           ; $4ace: $88
	adc  b                                           ; $4acf: $88
	adc  b                                           ; $4ad0: $88
	adc  b                                           ; $4ad1: $88
	adc  b                                           ; $4ad2: $88
	adc  b                                           ; $4ad3: $88
	adc  b                                           ; $4ad4: $88
	adc  b                                           ; $4ad5: $88
	adc  b                                           ; $4ad6: $88
	adc  b                                           ; $4ad7: $88
	adc  b                                           ; $4ad8: $88
	adc  b                                           ; $4ad9: $88
	adc  b                                           ; $4ada: $88
	adc  b                                           ; $4adb: $88
	adc  b                                           ; $4adc: $88
	adc  b                                           ; $4add: $88
	adc  b                                           ; $4ade: $88
	adc  b                                           ; $4adf: $88
	adc  b                                           ; $4ae0: $88
	adc  b                                           ; $4ae1: $88
	adc  b                                           ; $4ae2: $88
	adc  b                                           ; $4ae3: $88
	adc  b                                           ; $4ae4: $88
	adc  b                                           ; $4ae5: $88
	adc  b                                           ; $4ae6: $88
	adc  b                                           ; $4ae7: $88
	adc  b                                           ; $4ae8: $88
	adc  b                                           ; $4ae9: $88
	adc  b                                           ; $4aea: $88
	adc  b                                           ; $4aeb: $88
	adc  b                                           ; $4aec: $88
	adc  b                                           ; $4aed: $88
	adc  b                                           ; $4aee: $88
	adc  b                                           ; $4aef: $88
	adc  b                                           ; $4af0: $88
	adc  b                                           ; $4af1: $88
	adc  b                                           ; $4af2: $88
	adc  b                                           ; $4af3: $88
	adc  b                                           ; $4af4: $88
	adc  b                                           ; $4af5: $88
	adc  b                                           ; $4af6: $88
	adc  b                                           ; $4af7: $88
	adc  b                                           ; $4af8: $88
	adc  b                                           ; $4af9: $88
	adc  b                                           ; $4afa: $88
	adc  b                                           ; $4afb: $88
	adc  b                                           ; $4afc: $88
	adc  b                                           ; $4afd: $88
	adc  b                                           ; $4afe: $88
	adc  b                                           ; $4aff: $88
	adc  b                                           ; $4b00: $88
	adc  b                                           ; $4b01: $88
	add  c                                           ; $4b02: $81
	ld   de, $1111                                   ; $4b03: $11 $11 $11
	ld   de, $1111                                   ; $4b06: $11 $11 $11
	ld   de, $1111                                   ; $4b09: $11 $11 $11
	ld   de, $1111                                   ; $4b0c: $11 $11 $11
	ld   de, $1111                                   ; $4b0f: $11 $11 $11
	ld   de, $1111                                   ; $4b12: $11 $11 $11
	ld   de, $1111                                   ; $4b15: $11 $11 $11
	ld   de, $1111                                   ; $4b18: $11 $11 $11
	ld   de, $1111                                   ; $4b1b: $11 $11 $11
	ld   de, $1111                                   ; $4b1e: $11 $11 $11
	ld   de, $1111                                   ; $4b21: $11 $11 $11
	ld   de, $1111                                   ; $4b24: $11 $11 $11
	ld   de, $1111                                   ; $4b27: $11 $11 $11
	ld   de, $1111                                   ; $4b2a: $11 $11 $11
	ld   de, $1111                                   ; $4b2d: $11 $11 $11
	ld   de, $0011                                   ; $4b30: $11 $11 $00
	ld   c, b                                        ; $4b33: $48
	ld   de, $1111                                   ; $4b34: $11 $11 $11
	ld   de, $1111                                   ; $4b37: $11 $11 $11
	ld   de, $1111                                   ; $4b3a: $11 $11 $11
	ld   de, $5413                                   ; $4b3d: $11 $13 $54
	ld   d, h                                        ; $4b40: $54
	ld   d, h                                        ; $4b41: $54
	ld   b, c                                        ; $4b42: $41
	rra                                              ; $4b43: $1f
	rst  $38                                         ; $4b44: $ff
	pop  af                                          ; $4b45: $f1
	ld   de, $1511                                   ; $4b46: $11 $11 $15
	ld   hl, $1c11                                   ; $4b49: $21 $11 $1c
	rst  JumpTable                                         ; $4b4c: $df
	sbc  h                                           ; $4b4d: $9c
	rst  JumpTable                                         ; $4b4e: $df
	sub  c                                           ; $4b4f: $91
	ld   de, $1111                                   ; $4b50: $11 $11 $11
	ld   de, $1111                                   ; $4b53: $11 $11 $11
	ld   de, $1111                                   ; $4b56: $11 $11 $11
	ld   de, $1111                                   ; $4b59: $11 $11 $11
	ld   de, $5411                                   ; $4b5c: $11 $11 $54
	ld   b, h                                        ; $4b5f: $44
	dec  h                                           ; $4b60: $25
	ld   de, $5454                                   ; $4b61: $11 $54 $54
	ld   h, a                                        ; $4b64: $67
	ld   [hl], d                                     ; $4b65: $72
	ld   de, $1111                                   ; $4b66: $11 $11 $11
	ld   de, $1112                                   ; $4b69: $11 $12 $11
	ld   [de], a                                     ; $4b6c: $12
	ld   de, $1111                                   ; $4b6d: $11 $11 $11
	ld   h, [hl]                                     ; $4b70: $66
	halt                                             ; $4b71: $76
	push af                                          ; $4b72: $f5
	ld   de, $8888                                   ; $4b73: $11 $88 $88
	adc  b                                           ; $4b76: $88
	adc  b                                           ; $4b77: $88
	adc  b                                           ; $4b78: $88
	adc  c                                           ; $4b79: $89
	sbc  c                                           ; $4b7a: $99
	sbc  c                                           ; $4b7b: $99
	sbc  c                                           ; $4b7c: $99
	sbc  c                                           ; $4b7d: $99
	adc  b                                           ; $4b7e: $88
	adc  b                                           ; $4b7f: $88
	adc  b                                           ; $4b80: $88
	add  a                                           ; $4b81: $87
	ld   [hl], a                                     ; $4b82: $77
	ld   [hl], a                                     ; $4b83: $77
	ld   [hl], a                                     ; $4b84: $77
	halt                                             ; $4b85: $76
	ld   h, [hl]                                     ; $4b86: $66
	ld   h, [hl]                                     ; $4b87: $66
	ld   h, a                                        ; $4b88: $67
	ld   [hl], a                                     ; $4b89: $77
	adc  c                                           ; $4b8a: $89
	adc  c                                           ; $4b8b: $89
	xor  d                                           ; $4b8c: $aa
	sbc  c                                           ; $4b8d: $99
	sbc  c                                           ; $4b8e: $99
	sbc  d                                           ; $4b8f: $9a
	sbc  c                                           ; $4b90: $99
	sbc  c                                           ; $4b91: $99
	sbc  c                                           ; $4b92: $99
	sbc  c                                           ; $4b93: $99
	sbc  b                                           ; $4b94: $98
	adc  b                                           ; $4b95: $88
	adc  c                                           ; $4b96: $89
	adc  b                                           ; $4b97: $88
	adc  b                                           ; $4b98: $88
	add  a                                           ; $4b99: $87
	ld   [hl], a                                     ; $4b9a: $77
	ld   [hl], a                                     ; $4b9b: $77
	ld   h, [hl]                                     ; $4b9c: $66
	ld   h, [hl]                                     ; $4b9d: $66
	ld   h, l                                        ; $4b9e: $65
	ld   d, l                                        ; $4b9f: $55
	ld   d, [hl]                                     ; $4ba0: $56
	ld   h, a                                        ; $4ba1: $67
	ld   a, b                                        ; $4ba2: $78
	adc  c                                           ; $4ba3: $89
	sbc  d                                           ; $4ba4: $9a
	xor  e                                           ; $4ba5: $ab
	xor  d                                           ; $4ba6: $aa
	xor  d                                           ; $4ba7: $aa
	sbc  d                                           ; $4ba8: $9a
	xor  c                                           ; $4ba9: $a9
	sbc  c                                           ; $4baa: $99
	sbc  c                                           ; $4bab: $99
	sbc  c                                           ; $4bac: $99
	sbc  c                                           ; $4bad: $99
	sbc  b                                           ; $4bae: $98
	adc  c                                           ; $4baf: $89
	sbc  b                                           ; $4bb0: $98
	add  a                                           ; $4bb1: $87
	ld   [hl], a                                     ; $4bb2: $77
	halt                                             ; $4bb3: $76
	ld   h, [hl]                                     ; $4bb4: $66
	ld   d, l                                        ; $4bb5: $55
	ld   b, h                                        ; $4bb6: $44
	ld   b, e                                        ; $4bb7: $43
	ld   b, h                                        ; $4bb8: $44
	ld   b, l                                        ; $4bb9: $45
	ld   h, a                                        ; $4bba: $67
	sbc  c                                           ; $4bbb: $99
	xor  d                                           ; $4bbc: $aa
	cp   e                                           ; $4bbd: $bb
	cp   h                                           ; $4bbe: $bc
	call z, $abbb                                    ; $4bbf: $cc $bb $ab
	xor  d                                           ; $4bc2: $aa
	xor  d                                           ; $4bc3: $aa
	sbc  c                                           ; $4bc4: $99
	sbc  d                                           ; $4bc5: $9a
	sbc  c                                           ; $4bc6: $99
	adc  c                                           ; $4bc7: $89
	adc  b                                           ; $4bc8: $88
	ld   [hl], a                                     ; $4bc9: $77
	halt                                             ; $4bca: $76
	ld   h, [hl]                                     ; $4bcb: $66
	ld   d, l                                        ; $4bcc: $55
	ld   b, e                                        ; $4bcd: $43
	inc  sp                                          ; $4bce: $33
	ld   [hl+], a                                    ; $4bcf: $22
	inc  hl                                          ; $4bd0: $23
	inc  [hl]                                        ; $4bd1: $34
	ld   h, a                                        ; $4bd2: $67
	adc  d                                           ; $4bd3: $8a
	cp   e                                           ; $4bd4: $bb
	db   $dd                                         ; $4bd5: $dd
	db   $dd                                         ; $4bd6: $dd
	db   $dd                                         ; $4bd7: $dd
	db   $db                                         ; $4bd8: $db
	cp   e                                           ; $4bd9: $bb
	cp   e                                           ; $4bda: $bb
	cp   e                                           ; $4bdb: $bb
	xor  e                                           ; $4bdc: $ab
	cp   d                                           ; $4bdd: $ba
	xor  c                                           ; $4bde: $a9
	sbc  b                                           ; $4bdf: $98
	ld   [hl], a                                     ; $4be0: $77
	ld   h, [hl]                                     ; $4be1: $66
	ld   h, l                                        ; $4be2: $65
	ld   d, h                                        ; $4be3: $54
	ld   [hl-], a                                    ; $4be4: $32
	ld   hl, $1111                                   ; $4be5: $21 $11 $11
	ld   de, $7835                                   ; $4be8: $11 $35 $78
	cp   h                                           ; $4beb: $bc
	db   $dd                                         ; $4bec: $dd
	rst  $38                                         ; $4bed: $ff
	cp   $ee                                         ; $4bee: $fe $ee
	db   $ed                                         ; $4bf0: $ed
	db   $dd                                         ; $4bf1: $dd
	call z, $bacb                                    ; $4bf2: $cc $cb $ba
	xor  c                                           ; $4bf5: $a9
	sub  a                                           ; $4bf6: $97
	halt                                             ; $4bf7: $76
	ld   d, l                                        ; $4bf8: $55
	ld   b, h                                        ; $4bf9: $44
	ld   b, e                                        ; $4bfa: $43
	ld   [hl+], a                                    ; $4bfb: $22
	ld   de, $1111                                   ; $4bfc: $11 $11 $11
	ld   bc, $7924                                   ; $4bff: $01 $24 $79
	xor  h                                           ; $4c02: $ac
	sbc  $ef                                         ; $4c03: $de $ef
	rst  $38                                         ; $4c05: $ff
	rst  $38                                         ; $4c06: $ff
	cp   $fe                                         ; $4c07: $fe $fe
	sbc  $dd                                         ; $4c09: $de $dd
	cp   e                                           ; $4c0b: $bb
	xor  c                                           ; $4c0c: $a9
	add  a                                           ; $4c0d: $87
	ld   h, l                                        ; $4c0e: $65
	ld   b, h                                        ; $4c0f: $44
	ld   b, e                                        ; $4c10: $43
	ld   [hl-], a                                    ; $4c11: $32
	ld   hl, $1111                                   ; $4c12: $21 $11 $11
	ld   de, $3512                                   ; $4c15: $11 $12 $35
	ld   a, b                                        ; $4c18: $78
	cp   h                                           ; $4c19: $bc
	db   $dd                                         ; $4c1a: $dd
	rst  $38                                         ; $4c1b: $ff
	rst  $38                                         ; $4c1c: $ff
	rst  $38                                         ; $4c1d: $ff
	rst  $38                                         ; $4c1e: $ff
	rst  $28                                         ; $4c1f: $ef
	xor  $ec                                         ; $4c20: $ee $ec
	res  5, b                                        ; $4c22: $cb $a8
	halt                                             ; $4c24: $76
	ld   d, h                                        ; $4c25: $54
	ld   b, h                                        ; $4c26: $44
	inc  sp                                          ; $4c27: $33
	inc  sp                                          ; $4c28: $33
	ld   [hl-], a                                    ; $4c29: $32
	ld   hl, $1111                                   ; $4c2a: $21 $11 $11
	ld   [de], a                                     ; $4c2d: $12
	inc  [hl]                                        ; $4c2e: $34
	ld   l, b                                        ; $4c2f: $68
	sbc  d                                           ; $4c30: $9a
	call $dddd                                       ; $4c31: $cd $dd $dd
	xor  $ee                                         ; $4c34: $ee $ee
	cp   $ff                                         ; $4c36: $fe $ff
	xor  $cc                                         ; $4c38: $ee $cc
	xor  b                                           ; $4c3a: $a8
	add  a                                           ; $4c3b: $87
	ld   h, [hl]                                     ; $4c3c: $66
	ld   d, l                                        ; $4c3d: $55
	ld   b, h                                        ; $4c3e: $44
	ld   b, h                                        ; $4c3f: $44
	ld   b, e                                        ; $4c40: $43
	inc  sp                                          ; $4c41: $33
	ld   hl, $1111                                   ; $4c42: $21 $11 $11
	inc  hl                                          ; $4c45: $23
	ld   d, [hl]                                     ; $4c46: $56
	ld   a, b                                        ; $4c47: $78
	xor  d                                           ; $4c48: $aa
	call z, $ddcc                                    ; $4c49: $cc $cc $dd
	db   $dd                                         ; $4c4c: $dd
	xor  $ef                                         ; $4c4d: $ee $ef
	xor  $dd                                         ; $4c4f: $ee $dd
	res  7, d                                        ; $4c51: $cb $ba
	add  a                                           ; $4c53: $87
	halt                                             ; $4c54: $76
	ld   d, [hl]                                     ; $4c55: $56
	ld   h, [hl]                                     ; $4c56: $66
	ld   d, l                                        ; $4c57: $55
	ld   b, e                                        ; $4c58: $43
	inc  sp                                          ; $4c59: $33
	ld   [hl+], a                                    ; $4c5a: $22
	ld   de, $2311                                   ; $4c5b: $11 $11 $23
	ld   b, [hl]                                     ; $4c5e: $46
	ld   a, b                                        ; $4c5f: $78
	adc  d                                           ; $4c60: $8a
	xor  d                                           ; $4c61: $aa
	cp   h                                           ; $4c62: $bc
	cp   h                                           ; $4c63: $bc
	call z, $decd                                    ; $4c64: $cc $cd $de
	xor  $dc                                         ; $4c67: $ee $dc
	call z, $a9cb                                    ; $4c69: $cc $cb $a9
	adc  b                                           ; $4c6c: $88
	ld   a, b                                        ; $4c6d: $78
	ld   [hl], a                                     ; $4c6e: $77
	ld   h, l                                        ; $4c6f: $65
	ld   d, h                                        ; $4c70: $54
	ld   b, h                                        ; $4c71: $44
	ld   [hl-], a                                    ; $4c72: $32
	ld   hl, $1211                                   ; $4c73: $21 $11 $12
	inc  hl                                          ; $4c76: $23
	ld   b, l                                        ; $4c77: $45
	ld   l, b                                        ; $4c78: $68
	adc  d                                           ; $4c79: $8a
	xor  e                                           ; $4c7a: $ab
	cp   e                                           ; $4c7b: $bb
	set  1, l                                        ; $4c7c: $cb $cd
	call $dede                                       ; $4c7e: $cd $de $de
	sbc  $ed                                         ; $4c81: $de $ed
	res  7, d                                        ; $4c83: $cb $ba
	sbc  c                                           ; $4c85: $99
	adc  b                                           ; $4c86: $88
	halt                                             ; $4c87: $76
	ld   d, l                                        ; $4c88: $55
	ld   b, h                                        ; $4c89: $44
	inc  sp                                          ; $4c8a: $33
	ld   [hl+], a                                    ; $4c8b: $22
	ld   de, $1211                                   ; $4c8c: $11 $11 $12
	inc  hl                                          ; $4c8f: $23
	ld   b, l                                        ; $4c90: $45
	ld   h, a                                        ; $4c91: $67
	adc  d                                           ; $4c92: $8a
	xor  e                                           ; $4c93: $ab
	xor  e                                           ; $4c94: $ab
	cp   h                                           ; $4c95: $bc
	cp   e                                           ; $4c96: $bb
	call z, $eedd                                    ; $4c97: $cc $dd $ee
	rst  $28                                         ; $4c9a: $ef
	xor  $dd                                         ; $4c9b: $ee $dd
	res  5, d                                        ; $4c9d: $cb $aa
	sub  a                                           ; $4c9f: $97
	halt                                             ; $4ca0: $76
	ld   d, l                                        ; $4ca1: $55
	ld   b, h                                        ; $4ca2: $44
	inc  sp                                          ; $4ca3: $33
	ld   [hl-], a                                    ; $4ca4: $32
	ld   [hl+], a                                    ; $4ca5: $22
	ld   de, $2312                                   ; $4ca6: $11 $12 $23
	ld   b, l                                        ; $4ca9: $45
	ld   h, a                                        ; $4caa: $67
	adc  b                                           ; $4cab: $88
	xor  d                                           ; $4cac: $aa
	cp   d                                           ; $4cad: $ba
	cp   e                                           ; $4cae: $bb
	cp   e                                           ; $4caf: $bb
	call z, $cdbc                                    ; $4cb0: $cc $bc $cd
	db   $ed                                         ; $4cb3: $ed
	xor  $dd                                         ; $4cb4: $ee $dd
	call z, $99ba                                    ; $4cb6: $cc $ba $99
	halt                                             ; $4cb9: $76
	ld   h, l                                        ; $4cba: $65
	ld   d, h                                        ; $4cbb: $54
	ld   b, e                                        ; $4cbc: $43
	inc  sp                                          ; $4cbd: $33
	inc  sp                                          ; $4cbe: $33
	ld   [hl-], a                                    ; $4cbf: $32
	ld   [hl+], a                                    ; $4cc0: $22
	ld   [hl+], a                                    ; $4cc1: $22
	inc  [hl]                                        ; $4cc2: $34
	ld   d, l                                        ; $4cc3: $55
	ld   h, a                                        ; $4cc4: $67
	adc  c                                           ; $4cc5: $89
	xor  d                                           ; $4cc6: $aa
	xor  d                                           ; $4cc7: $aa
	xor  e                                           ; $4cc8: $ab
	cp   e                                           ; $4cc9: $bb
	cp   e                                           ; $4cca: $bb
	set  1, l                                        ; $4ccb: $cb $cd
	call $dddd                                       ; $4ccd: $cd $dd $dd
	call z, $98b9                                    ; $4cd0: $cc $b9 $98
	ld   [hl], a                                     ; $4cd3: $77
	ld   h, [hl]                                     ; $4cd4: $66
	ld   d, l                                        ; $4cd5: $55
	ld   b, h                                        ; $4cd6: $44
	ld   b, h                                        ; $4cd7: $44
	ld   b, h                                        ; $4cd8: $44
	inc  sp                                          ; $4cd9: $33
	inc  sp                                          ; $4cda: $33
	inc  sp                                          ; $4cdb: $33
	inc  [hl]                                        ; $4cdc: $34
	ld   b, l                                        ; $4cdd: $45
	ld   h, a                                        ; $4cde: $67
	ld   a, c                                        ; $4cdf: $79
	sbc  d                                           ; $4ce0: $9a
	xor  d                                           ; $4ce1: $aa
	cp   d                                           ; $4ce2: $ba
	xor  d                                           ; $4ce3: $aa
	xor  d                                           ; $4ce4: $aa
	xor  e                                           ; $4ce5: $ab
	cp   e                                           ; $4ce6: $bb
	call z, $cddc                                    ; $4ce7: $cc $dc $cd
	call z, $99bb                                    ; $4cea: $cc $bb $99
	sbc  b                                           ; $4ced: $98
	ld   [hl], a                                     ; $4cee: $77
	ld   h, l                                        ; $4cef: $65
	ld   d, l                                        ; $4cf0: $55
	ld   d, h                                        ; $4cf1: $54
	ld   b, h                                        ; $4cf2: $44
	ld   b, h                                        ; $4cf3: $44
	inc  sp                                          ; $4cf4: $33
	inc  sp                                          ; $4cf5: $33
	inc  sp                                          ; $4cf6: $33
	ld   b, h                                        ; $4cf7: $44
	ld   d, [hl]                                     ; $4cf8: $56
	ld   [hl], a                                     ; $4cf9: $77
	adc  c                                           ; $4cfa: $89
	xor  c                                           ; $4cfb: $a9
	xor  d                                           ; $4cfc: $aa
	cp   e                                           ; $4cfd: $bb
	cp   e                                           ; $4cfe: $bb
	cp   e                                           ; $4cff: $bb
	xor  e                                           ; $4d00: $ab
	cp   e                                           ; $4d01: $bb
	call z, $dcdd                                    ; $4d02: $cc $dd $dc
	cp   e                                           ; $4d05: $bb
	xor  d                                           ; $4d06: $aa
	xor  c                                           ; $4d07: $a9
	add  a                                           ; $4d08: $87
	halt                                             ; $4d09: $76
	ld   h, l                                        ; $4d0a: $65
	ld   d, l                                        ; $4d0b: $55
	ld   d, h                                        ; $4d0c: $54
	ld   b, h                                        ; $4d0d: $44
	ld   b, h                                        ; $4d0e: $44
	inc  sp                                          ; $4d0f: $33
	inc  sp                                          ; $4d10: $33
	inc  sp                                          ; $4d11: $33
	ld   b, l                                        ; $4d12: $45
	ld   d, [hl]                                     ; $4d13: $56
	ld   [hl], a                                     ; $4d14: $77
	sbc  c                                           ; $4d15: $99
	xor  c                                           ; $4d16: $a9
	xor  d                                           ; $4d17: $aa
	cp   e                                           ; $4d18: $bb
	xor  d                                           ; $4d19: $aa
	cp   e                                           ; $4d1a: $bb
	xor  e                                           ; $4d1b: $ab
	cp   e                                           ; $4d1c: $bb
	call z, $cccd                                    ; $4d1d: $cc $cd $cc
	cp   e                                           ; $4d20: $bb
	xor  d                                           ; $4d21: $aa
	xor  c                                           ; $4d22: $a9
	sbc  b                                           ; $4d23: $98
	ld   [hl], a                                     ; $4d24: $77
	ld   h, [hl]                                     ; $4d25: $66
	ld   d, l                                        ; $4d26: $55
	ld   d, l                                        ; $4d27: $55
	ld   d, h                                        ; $4d28: $54
	ld   b, h                                        ; $4d29: $44
	ld   b, e                                        ; $4d2a: $43
	inc  sp                                          ; $4d2b: $33
	inc  [hl]                                        ; $4d2c: $34
	ld   b, l                                        ; $4d2d: $45
	ld   d, [hl]                                     ; $4d2e: $56
	ld   [hl], a                                     ; $4d2f: $77
	adc  b                                           ; $4d30: $88
	sbc  d                                           ; $4d31: $9a
	sbc  d                                           ; $4d32: $9a
	xor  d                                           ; $4d33: $aa
	xor  d                                           ; $4d34: $aa
	xor  e                                           ; $4d35: $ab
	cp   d                                           ; $4d36: $ba
	cp   h                                           ; $4d37: $bc
	cp   h                                           ; $4d38: $bc
	call z, $bbcc                                    ; $4d39: $cc $cc $bb
	xor  d                                           ; $4d3c: $aa
	xor  c                                           ; $4d3d: $a9
	adc  b                                           ; $4d3e: $88
	ld   [hl], a                                     ; $4d3f: $77
	ld   h, [hl]                                     ; $4d40: $66
	ld   h, l                                        ; $4d41: $65
	ld   d, l                                        ; $4d42: $55
	ld   d, l                                        ; $4d43: $55
	ld   b, h                                        ; $4d44: $44
	ld   b, h                                        ; $4d45: $44
	inc  sp                                          ; $4d46: $33
	inc  [hl]                                        ; $4d47: $34
	ld   b, h                                        ; $4d48: $44
	ld   d, l                                        ; $4d49: $55
	ld   h, a                                        ; $4d4a: $67
	ld   a, b                                        ; $4d4b: $78
	adc  c                                           ; $4d4c: $89
	xor  c                                           ; $4d4d: $a9
	xor  d                                           ; $4d4e: $aa
	xor  d                                           ; $4d4f: $aa
	xor  d                                           ; $4d50: $aa
	xor  e                                           ; $4d51: $ab
	xor  e                                           ; $4d52: $ab
	cp   h                                           ; $4d53: $bc
	call z, $cbcc                                    ; $4d54: $cc $cc $cb
	cp   d                                           ; $4d57: $ba
	xor  c                                           ; $4d58: $a9
	xor  c                                           ; $4d59: $a9
	sbc  b                                           ; $4d5a: $98
	ld   [hl], a                                     ; $4d5b: $77
	ld   h, [hl]                                     ; $4d5c: $66
	ld   h, l                                        ; $4d5d: $65
	ld   d, l                                        ; $4d5e: $55
	ld   d, l                                        ; $4d5f: $55
	ld   d, h                                        ; $4d60: $54
	ld   b, h                                        ; $4d61: $44
	inc  sp                                          ; $4d62: $33

jr_0da_4d63:
	inc  [hl]                                        ; $4d63: $34
	ld   b, h                                        ; $4d64: $44
	ld   d, [hl]                                     ; $4d65: $56
	ld   h, a                                        ; $4d66: $67
	adc  b                                           ; $4d67: $88
	adc  c                                           ; $4d68: $89
	sbc  c                                           ; $4d69: $99
	xor  d                                           ; $4d6a: $aa
	xor  d                                           ; $4d6b: $aa
	xor  d                                           ; $4d6c: $aa
	xor  d                                           ; $4d6d: $aa
	cp   e                                           ; $4d6e: $bb
	cp   h                                           ; $4d6f: $bc
	set  1, h                                        ; $4d70: $cb $cc
	cp   h                                           ; $4d72: $bc
	cp   d                                           ; $4d73: $ba
	xor  c                                           ; $4d74: $a9
	xor  c                                           ; $4d75: $a9
	sbc  b                                           ; $4d76: $98
	ld   [hl], a                                     ; $4d77: $77
	halt                                             ; $4d78: $76
	ld   h, [hl]                                     ; $4d79: $66
	ld   d, l                                        ; $4d7a: $55
	ld   d, l                                        ; $4d7b: $55
	ld   d, l                                        ; $4d7c: $55
	ld   b, h                                        ; $4d7d: $44
	ld   b, h                                        ; $4d7e: $44
	inc  [hl]                                        ; $4d7f: $34
	ld   b, h                                        ; $4d80: $44
	ld   d, l                                        ; $4d81: $55
	ld   h, a                                        ; $4d82: $67
	ld   a, b                                        ; $4d83: $78
	sbc  c                                           ; $4d84: $99
	sbc  d                                           ; $4d85: $9a
	sbc  d                                           ; $4d86: $9a
	xor  d                                           ; $4d87: $aa
	xor  d                                           ; $4d88: $aa
	xor  d                                           ; $4d89: $aa
	xor  e                                           ; $4d8a: $ab
	xor  e                                           ; $4d8b: $ab
	cp   h                                           ; $4d8c: $bc
	cp   e                                           ; $4d8d: $bb
	cp   e                                           ; $4d8e: $bb
	res  7, d                                        ; $4d8f: $cb $ba
	xor  e                                           ; $4d91: $ab
	cp   d                                           ; $4d92: $ba
	ld   [hl], a                                     ; $4d93: $77
	adc  b                                           ; $4d94: $88
	sub  a                                           ; $4d95: $97
	ld   h, [hl]                                     ; $4d96: $66
	ld   d, l                                        ; $4d97: $55
	ld   d, e                                        ; $4d98: $53
	dec  [hl]                                        ; $4d99: $35
	ld   d, c                                        ; $4d9a: $51
	ld   de, $1123                                   ; $4d9b: $11 $23 $11
	ld   b, l                                        ; $4d9e: $45
	sbc  c                                           ; $4d9f: $99
	adc  e                                           ; $4da0: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4da1: $cf
	db   $ec                                         ; $4da2: $ec
	rst  $28                                         ; $4da3: $ef
	cp   $ce                                         ; $4da4: $fe $ce
	call $ccca                                       ; $4da6: $cd $ca $cc
	res  3, h                                        ; $4da9: $cb $9c
	xor  d                                           ; $4dab: $aa
	ld   h, h                                        ; $4dac: $64
	ld   d, d                                        ; $4dad: $52
	ld   de, $1111                                   ; $4dae: $11 $11 $11
	ld   de, $1111                                   ; $4db1: $11 $11 $11
	jr   z, jr_0da_4d63                              ; $4db4: $28 $ad

	rst  $28                                         ; $4db6: $ef
	rst  $38                                         ; $4db7: $ff
	rst  $38                                         ; $4db8: $ff
	rst  $38                                         ; $4db9: $ff
	rst  $38                                         ; $4dba: $ff
	call c, Call_0da_65a7                            ; $4dbb: $dc $a7 $65
	ld   d, [hl]                                     ; $4dbe: $56

jr_0da_4dbf:
	ld   h, a                                        ; $4dbf: $67
	ld   a, b                                        ; $4dc0: $78
	add  a                                           ; $4dc1: $87
	ld   d, l                                        ; $4dc2: $55
	ld   b, d                                        ; $4dc3: $42
	ld   de, $1111                                   ; $4dc4: $11 $11 $11
	ld   de, $2811                                   ; $4dc7: $11 $11 $28
	rst  $38                                         ; $4dca: $ff
	rst  $38                                         ; $4dcb: $ff
	rst  $38                                         ; $4dcc: $ff
	rst  $38                                         ; $4dcd: $ff
	rst  $38                                         ; $4dce: $ff
	db   $fc                                         ; $4dcf: $fc
	halt                                             ; $4dd0: $76
	ld   [hl], e                                     ; $4dd1: $73
	ld   [de], a                                     ; $4dd2: $12
	ld   d, [hl]                                     ; $4dd3: $56
	ld   l, b                                        ; $4dd4: $68
	adc  $fe                                         ; $4dd5: $ce $fe
	call z, $11a4                                    ; $4dd7: $cc $a4 $11
	ld   de, $1111                                   ; $4dda: $11 $11 $11
	ld   de, rAUD1HIGH                                   ; $4ddd: $11 $14 $ff
	rst  $38                                         ; $4de0: $ff
	rst  $38                                         ; $4de1: $ff
	rst  $38                                         ; $4de2: $ff
	rst  $38                                         ; $4de3: $ff
	db   $fc                                         ; $4de4: $fc
	ld   b, c                                        ; $4de5: $41
	ld   de, $1511                                   ; $4de6: $11 $11 $15
	ld   l, b                                        ; $4de9: $68
	rst  $28                                         ; $4dea: $ef
	rst  $38                                         ; $4deb: $ff
	rst  $38                                         ; $4dec: $ff
	cp   $51                                         ; $4ded: $fe $51
	ld   de, $1111                                   ; $4def: $11 $11 $11
	ld   de, $4e11                                   ; $4df2: $11 $11 $4e
	rst  $38                                         ; $4df5: $ff
	rst  $38                                         ; $4df6: $ff
	rst  $38                                         ; $4df7: $ff
	rst  $38                                         ; $4df8: $ff
	rst  $38                                         ; $4df9: $ff
	and  c                                           ; $4dfa: $a1
	ld   de, $1111                                   ; $4dfb: $11 $11 $11
	jr   c, jr_0da_4dbf                              ; $4dfe: $38 $bf

	rst  $38                                         ; $4e00: $ff
	rst  $38                                         ; $4e01: $ff
	rst  $38                                         ; $4e02: $ff
	ei                                               ; $4e03: $fb
	ld   de, $1111                                   ; $4e04: $11 $11 $11
	ld   de, $1811                                   ; $4e07: $11 $11 $18
	cp   a                                           ; $4e0a: $bf
	rst  $38                                         ; $4e0b: $ff
	rst  $38                                         ; $4e0c: $ff
	rst  $38                                         ; $4e0d: $ff
	rst  $38                                         ; $4e0e: $ff
	rst  $30                                         ; $4e0f: $f7
	ld   hl, $1111                                   ; $4e10: $21 $11 $11
	ld   de, $ff7f                                   ; $4e13: $11 $7f $ff
	rst  $38                                         ; $4e16: $ff
	rst  $38                                         ; $4e17: $ff
	rst  $38                                         ; $4e18: $ff
	ei                                               ; $4e19: $fb
	ld   de, $1111                                   ; $4e1a: $11 $11 $11
	ld   de, $1a11                                   ; $4e1d: $11 $11 $1a
	rst  $38                                         ; $4e20: $ff
	rst  $38                                         ; $4e21: $ff
	rst  $38                                         ; $4e22: $ff
	rst  $38                                         ; $4e23: $ff
	rst  $38                                         ; $4e24: $ff
	or   d                                           ; $4e25: $b2
	ld   de, $1111                                   ; $4e26: $11 $11 $11
	ld   de, $ffaf                                   ; $4e29: $11 $af $ff
	rst  $38                                         ; $4e2c: $ff
	rst  $38                                         ; $4e2d: $ff
	rst  $38                                         ; $4e2e: $ff
	rst  $10                                         ; $4e2f: $d7
	ld   de, $1111                                   ; $4e30: $11 $11 $11
	ld   de, $4811                                   ; $4e33: $11 $11 $48
	rst  $38                                         ; $4e36: $ff
	rst  $38                                         ; $4e37: $ff
	rst  $38                                         ; $4e38: $ff
	rst  $38                                         ; $4e39: $ff
	rst  $38                                         ; $4e3a: $ff
	ld   d, c                                        ; $4e3b: $51
	ld   de, $1111                                   ; $4e3c: $11 $11 $11
	add  hl, de                                      ; $4e3f: $19
	rst  $28                                         ; $4e40: $ef
	rst  $38                                         ; $4e41: $ff
	rst  $38                                         ; $4e42: $ff
	rst  $38                                         ; $4e43: $ff
	rst  $38                                         ; $4e44: $ff
	add  c                                           ; $4e45: $81
	ld   de, $1111                                   ; $4e46: $11 $11 $11
	ld   de, $6c11                                   ; $4e49: $11 $11 $6c
	rst  $28                                         ; $4e4c: $ef
	rst  $38                                         ; $4e4d: $ff
	rst  $38                                         ; $4e4e: $ff
	rst  $38                                         ; $4e4f: $ff
	db   $ed                                         ; $4e50: $ed
	and  c                                           ; $4e51: $a1
	ld   de, $1111                                   ; $4e52: $11 $11 $11
	ld   d, $ff                                      ; $4e55: $16 $ff
	rst  $38                                         ; $4e57: $ff
	rst  $38                                         ; $4e58: $ff
	rst  $38                                         ; $4e59: $ff
	db   $ec                                         ; $4e5a: $ec
	ld   [hl], d                                     ; $4e5b: $72
	ld   de, $1111                                   ; $4e5c: $11 $11 $11
	ld   de, $4a11                                   ; $4e5f: $11 $11 $4a
	xor  l                                           ; $4e62: $ad
	rst  $38                                         ; $4e63: $ff
	rst  $38                                         ; $4e64: $ff
	rst  $38                                         ; $4e65: $ff
	call z, $34c7                                    ; $4e66: $cc $c7 $34
	ld   de, $3714                                   ; $4e69: $11 $14 $37
	rst  $38                                         ; $4e6c: $ff
	rst  $38                                         ; $4e6d: $ff
	rst  $38                                         ; $4e6e: $ff
	cp   $d8                                         ; $4e6f: $fe $d8
	ld   h, h                                        ; $4e71: $64
	ld   de, $1111                                   ; $4e72: $11 $11 $11
	ld   de, $4711                                   ; $4e75: $11 $11 $47
	adc  h                                           ; $4e78: $8c
	rst  $38                                         ; $4e79: $ff
	rst  $28                                         ; $4e7a: $ef
	rst  $38                                         ; $4e7b: $ff
	jp   c, Jump_0da_52b6                            ; $4e7c: $da $b6 $52

	ld   de, $3825                                   ; $4e7f: $11 $25 $38
	rst  $38                                         ; $4e82: $ff
	rst  $38                                         ; $4e83: $ff
	rst  $38                                         ; $4e84: $ff
	db   $fc                                         ; $4e85: $fc
	cp   c                                           ; $4e86: $b9
	ld   d, e                                        ; $4e87: $53
	ld   de, $1111                                   ; $4e88: $11 $11 $11
	ld   de, $6612                                   ; $4e8b: $11 $12 $66
	xor  l                                           ; $4e8e: $ad
	rst  $38                                         ; $4e8f: $ff
	rst  $38                                         ; $4e90: $ff
	rst  $38                                         ; $4e91: $ff
	ret                                              ; $4e92: $c9


	or   [hl]                                        ; $4e93: $b6
	ld   b, d                                        ; $4e94: $42
	ld   de, $6b36                                   ; $4e95: $11 $36 $6b
	rst  $38                                         ; $4e98: $ff
	rst  $38                                         ; $4e99: $ff
	rst  $38                                         ; $4e9a: $ff
	ld   [$4288], a                                  ; $4e9b: $ea $88 $42
	ld   de, $1111                                   ; $4e9e: $11 $11 $11
	ld   de, $5711                                   ; $4ea1: $11 $11 $57
	ld   e, d                                        ; $4ea4: $5a
	rst  $38                                         ; $4ea5: $ff
	cp   a                                           ; $4ea6: $bf
	rst  $38                                         ; $4ea7: $ff
	cp   h                                           ; $4ea8: $bc
	add  $53                                         ; $4ea9: $c6 $53
	ld   de, $2634                                   ; $4eab: $11 $34 $26
	rst  $28                                         ; $4eae: $ef
	rst  $38                                         ; $4eaf: $ff
	rst  $38                                         ; $4eb0: $ff
	db   $fd                                         ; $4eb1: $fd
	cp   d                                           ; $4eb2: $ba
	ld   d, h                                        ; $4eb3: $54
	ld   de, $1111                                   ; $4eb4: $11 $11 $11
	ld   de, $1311                                   ; $4eb7: $11 $11 $13
	ld   b, [hl]                                     ; $4eba: $46
	cp   a                                           ; $4ebb: $bf
	ei                                               ; $4ebc: $fb
	rst  $38                                         ; $4ebd: $ff
	db   $fc                                         ; $4ebe: $fc
	db   $dd                                         ; $4ebf: $dd
	ld   h, l                                        ; $4ec0: $65
	ld   hl, $2112                                   ; $4ec1: $21 $12 $21
	ld   a, h                                        ; $4ec4: $7c
	rst  $28                                         ; $4ec5: $ef
	rst  $38                                         ; $4ec6: $ff
	rst  $38                                         ; $4ec7: $ff
	db   $fd                                         ; $4ec8: $fd
	ret  z                                           ; $4ec9: $c8

	ld   d, c                                        ; $4eca: $51
	ld   [hl-], a                                    ; $4ecb: $32
	ld   de, $1111                                   ; $4ecc: $11 $11 $11
	ld   de, $3412                                   ; $4ecf: $11 $12 $34
	rst  $38                                         ; $4ed2: $ff
	call $fbff                                       ; $4ed3: $cd $ff $fb
	ei                                               ; $4ed6: $fb
	ld   b, h                                        ; $4ed7: $44
	ld   de, $1111                                   ; $4ed8: $11 $11 $11
	xor  [hl]                                        ; $4edb: $ae
	rst  $28                                         ; $4edc: $ef
	rst  $38                                         ; $4edd: $ff
	rst  $38                                         ; $4ede: $ff
	rst  $38                                         ; $4edf: $ff
	ld   sp, hl                                      ; $4ee0: $f9
	inc  [hl]                                        ; $4ee1: $34
	ld   h, c                                        ; $4ee2: $61
	ld   de, $1111                                   ; $4ee3: $11 $11 $11
	ld   de, $1311                                   ; $4ee6: $11 $11 $13
	rst  JumpTable                                         ; $4ee9: $df
	ld   [$fcff], a                                  ; $4eea: $ea $ff $fc
	rst  $38                                         ; $4eed: $ff
	ld   d, d                                        ; $4eee: $52
	ld   de, $1111                                   ; $4eef: $11 $11 $11
	adc  l                                           ; $4ef2: $8d
	rst  $38                                         ; $4ef3: $ff
	rst  $38                                         ; $4ef4: $ff
	rst  $38                                         ; $4ef5: $ff
	rst  $38                                         ; $4ef6: $ff
	db   $ed                                         ; $4ef7: $ed
	ld   [hl], e                                     ; $4ef8: $73
	ld   h, l                                        ; $4ef9: $65
	ld   hl, $1112                                   ; $4efa: $21 $12 $11
	ld   de, $1111                                   ; $4efd: $11 $11 $11
	ld   l, l                                        ; $4f00: $6d
	db   $fd                                         ; $4f01: $fd
	rst  $38                                         ; $4f02: $ff
	rst  $38                                         ; $4f03: $ff
	rst  JumpTable                                         ; $4f04: $df
	db   $e3                                         ; $4f05: $e3
	ld   de, $1111                                   ; $4f06: $11 $11 $11
	ld   a, [de]                                     ; $4f09: $1a
	rst  $28                                         ; $4f0a: $ef
	rst  $38                                         ; $4f0b: $ff
	rst  $38                                         ; $4f0c: $ff
	rst  $38                                         ; $4f0d: $ff
	cp   $a5                                         ; $4f0e: $fe $a5
	ld   d, a                                        ; $4f10: $57
	ld   [hl+], a                                    ; $4f11: $22
	ld   [de], a                                     ; $4f12: $12
	ld   hl, $1111                                   ; $4f13: $21 $11 $11
	ld   de, $ff16                                   ; $4f16: $11 $16 $ff
	rst  $38                                         ; $4f19: $ff
	rst  $38                                         ; $4f1a: $ff
	cp   $ef                                         ; $4f1b: $fe $ef
	ld   hl, $1111                                   ; $4f1d: $21 $11 $11
	ld   de, $ffbf                                   ; $4f20: $11 $bf $ff
	rst  $38                                         ; $4f23: $ff
	rst  $38                                         ; $4f24: $ff
	rst  $38                                         ; $4f25: $ff
	rst  $10                                         ; $4f26: $d7
	ld   d, h                                        ; $4f27: $54
	ld   d, d                                        ; $4f28: $52
	ld   de, $1123                                   ; $4f29: $11 $23 $11
	ld   de, $1111                                   ; $4f2c: $11 $11 $11
	xor  a                                           ; $4f2f: $af
	db   $ec                                         ; $4f30: $ec
	rst  $38                                         ; $4f31: $ff
	rst  $38                                         ; $4f32: $ff
	rst  $28                                         ; $4f33: $ef
	or   c                                           ; $4f34: $b1
	ld   de, $1111                                   ; $4f35: $11 $11 $11
	ld   a, $ff                                      ; $4f38: $3e $ff
	rst  $38                                         ; $4f3a: $ff
	rst  $38                                         ; $4f3b: $ff
	rst  $38                                         ; $4f3c: $ff
	db   $fc                                         ; $4f3d: $fc
	ld   d, e                                        ; $4f3e: $53
	ld   h, h                                        ; $4f3f: $64
	ld   de, $1113                                   ; $4f40: $11 $13 $11
	ld   de, $1111                                   ; $4f43: $11 $11 $11
	dec  e                                           ; $4f46: $1d
	ei                                               ; $4f47: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f48: $cf
	rst  $38                                         ; $4f49: $ff
	rst  $38                                         ; $4f4a: $ff
	rst  $30                                         ; $4f4b: $f7
	ld   de, $1111                                   ; $4f4c: $11 $11 $11
	rla                                              ; $4f4f: $17
	rst  $38                                         ; $4f50: $ff
	rst  $38                                         ; $4f51: $ff
	rst  $38                                         ; $4f52: $ff
	rst  $38                                         ; $4f53: $ff
	rst  $38                                         ; $4f54: $ff
	sub  e                                           ; $4f55: $93
	ld   [hl], $31                                   ; $4f56: $36 $31
	ld   [de], a                                     ; $4f58: $12
	ld   sp, $1111                                   ; $4f59: $31 $11 $11
	ld   de, $fb19                                   ; $4f5c: $11 $19 $fb
	ld   a, a                                        ; $4f5f: $7f
	rst  $38                                         ; $4f60: $ff
	rst  $38                                         ; $4f61: $ff
	db   $fc                                         ; $4f62: $fc
	ld   d, c                                        ; $4f63: $51
	ld   de, $1211                                   ; $4f64: $11 $11 $12
	db   $fd                                         ; $4f67: $fd
	rst  $38                                         ; $4f68: $ff
	rst  $38                                         ; $4f69: $ff
	rst  $38                                         ; $4f6a: $ff
	rst  $38                                         ; $4f6b: $ff
	push bc                                          ; $4f6c: $c5
	inc  h                                           ; $4f6d: $24
	ld   b, c                                        ; $4f6e: $41
	ld   de, $1121                                   ; $4f6f: $11 $21 $11
	ld   de, $1611                                   ; $4f72: $11 $11 $16
	db   $fc                                         ; $4f75: $fc
	ld   a, a                                        ; $4f76: $7f
	rst  $38                                         ; $4f77: $ff
	rst  $38                                         ; $4f78: $ff
	ei                                               ; $4f79: $fb
	ld   d, c                                        ; $4f7a: $51
	ld   de, $1111                                   ; $4f7b: $11 $11 $11
	db   $ed                                         ; $4f7e: $ed
	rst  $38                                         ; $4f7f: $ff
	rst  $38                                         ; $4f80: $ff
	rst  $38                                         ; $4f81: $ff
	rst  $38                                         ; $4f82: $ff
	add  $23                                         ; $4f83: $c6 $23
	ld   sp, $1111                                   ; $4f85: $31 $11 $11
	ld   de, $1111                                   ; $4f88: $11 $11 $11
	rra                                              ; $4f8b: $1f
	or   $bf                                         ; $4f8c: $f6 $bf
	rst  $38                                         ; $4f8e: $ff
	rst  $38                                         ; $4f8f: $ff
	add  sp, $51                                     ; $4f90: $e8 $51
	ld   de, $1811                                   ; $4f92: $11 $11 $18
	db   $dd                                         ; $4f95: $dd
	rst  $38                                         ; $4f96: $ff
	rst  $38                                         ; $4f97: $ff
	rst  $38                                         ; $4f98: $ff
	rst  $38                                         ; $4f99: $ff
	and  e                                           ; $4f9a: $a3
	inc  de                                          ; $4f9b: $13
	ld   de, $1111                                   ; $4f9c: $11 $11 $11
	ld   de, $1111                                   ; $4f9f: $11 $11 $11
	rst  $38                                         ; $4fa2: $ff
	ld   l, [hl]                                     ; $4fa3: $6e
	rst  $38                                         ; $4fa4: $ff

Jump_0da_4fa5:
	rst  $28                                         ; $4fa5: $ef
	ei                                               ; $4fa6: $fb
	ld   [hl], l                                     ; $4fa7: $75
	ld   de, $1111                                   ; $4fa8: $11 $11 $11
	sbc  h                                           ; $4fab: $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fac: $cf
	rst  $38                                         ; $4fad: $ff
	rst  $38                                         ; $4fae: $ff
	rst  $38                                         ; $4faf: $ff
	rst  $30                                         ; $4fb0: $f7
	ld   de, $1121                                   ; $4fb1: $11 $21 $11
	ld   de, $1111                                   ; $4fb4: $11 $11 $11
	ld   de, $5dff                                   ; $4fb7: $11 $ff $5d
	rst  $38                                         ; $4fba: $ff
	rst  $38                                         ; $4fbb: $ff
	ld   a, [$1168]                                  ; $4fbc: $fa $68 $11
	ld   [de], a                                     ; $4fbf: $12
	ld   de, $cfac                                   ; $4fc0: $11 $ac $cf
	rst  $38                                         ; $4fc3: $ff
	rst  $38                                         ; $4fc4: $ff
	rst  $38                                         ; $4fc5: $ff
	ld   hl, sp+$11                                  ; $4fc6: $f8 $11
	ld   hl, $1111                                   ; $4fc8: $21 $11 $11
	ld   de, $1e11                                   ; $4fcb: $11 $11 $1e
	db   $fc                                         ; $4fce: $fc
	ld   a, a                                        ; $4fcf: $7f
	rst  $38                                         ; $4fd0: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fd1: $cf
	db   $f4                                         ; $4fd2: $f4
	sub  c                                           ; $4fd3: $91
	ld   de, $1711                                   ; $4fd4: $11 $11 $17
	db   $dd                                         ; $4fd7: $dd
	rst  $38                                         ; $4fd8: $ff
	rst  $38                                         ; $4fd9: $ff
	rst  $38                                         ; $4fda: $ff
	rst  $38                                         ; $4fdb: $ff
	sub  d                                           ; $4fdc: $92
	ld   de, $1111                                   ; $4fdd: $11 $11 $11
	ld   de, $1111                                   ; $4fe0: $11 $11 $11
	rst  $38                                         ; $4fe3: $ff
	ld   c, a                                        ; $4fe4: $4f
	rst  $38                                         ; $4fe5: $ff
	db   $ed                                         ; $4fe6: $ed
	ld   hl, sp+$49                                  ; $4fe7: $f8 $49
	ld   de, $1113                                   ; $4fe9: $11 $13 $11
	rst  $38                                         ; $4fec: $ff
	rst  $38                                         ; $4fed: $ff
	rst  $38                                         ; $4fee: $ff
	rst  $38                                         ; $4fef: $ff
	cp   $c5                                         ; $4ff0: $fe $c5
	ld   de, $1111                                   ; $4ff2: $11 $11 $11
	ld   de, $1411                                   ; $4ff5: $11 $11 $14
	rst  $38                                         ; $4ff8: $ff
	cpl                                              ; $4ff9: $2f
	rst  $38                                         ; $4ffa: $ff
	adc  $f1                                         ; $4ffb: $ce $f1
	add  e                                           ; $4ffd: $83
	ld   de, $1114                                   ; $4ffe: $11 $14 $11
	rst  $38                                         ; $5001: $ff
	rst  $38                                         ; $5002: $ff
	rst  $38                                         ; $5003: $ff
	rst  $38                                         ; $5004: $ff
	bit  4, d                                        ; $5005: $cb $62
	ld   de, $1111                                   ; $5007: $11 $11 $11
	ld   de, $9f11                                   ; $500a: $11 $11 $9f
	or   $ff                                         ; $500d: $f6 $ff
	cp   $df                                         ; $500f: $fe $df
	add  hl, de                                      ; $5011: $19
	ld   de, $3111                                   ; $5012: $11 $11 $31
	ld   a, a                                        ; $5015: $7f
	rst  $38                                         ; $5016: $ff
	rst  $38                                         ; $5017: $ff
	rst  $38                                         ; $5018: $ff
	ld   hl, sp+$63                                  ; $5019: $f8 $63
	ld   de, $1111                                   ; $501b: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $501e: $11 $11 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5021: $cf
	rst  $38                                         ; $5022: $ff
	rst  $38                                         ; $5023: $ff
	ei                                               ; $5024: $fb
	ld   a, [de]                                     ; $5025: $1a
	ld   de, $1111                                   ; $5026: $11 $11 $11
	cp   a                                           ; $5029: $bf
	rst  $38                                         ; $502a: $ff
	rst  $38                                         ; $502b: $ff
	rst  $38                                         ; $502c: $ff
	ld   sp, hl                                      ; $502d: $f9
	ld   b, c                                        ; $502e: $41
	ld   de, $1111                                   ; $502f: $11 $11 $11
	ld   de, $f31f                                   ; $5032: $11 $1f $f3
	rst  $38                                         ; $5035: $ff
	rst  $38                                         ; $5036: $ff
	rst  JumpTable                                         ; $5037: $df
	ld   hl, $11d1                                   ; $5038: $21 $d1 $11
	ld   hl, $ff1f                                   ; $503b: $21 $1f $ff
	rst  $38                                         ; $503e: $ff
	rst  $38                                         ; $503f: $ff
	cp   $52                                         ; $5040: $fe $52
	ld   bc, $1111                                   ; $5042: $01 $11 $11
	ld   de, $f81f                                   ; $5045: $11 $1f $f8
	rst  $38                                         ; $5048: $ff
	rst  $38                                         ; $5049: $ff
	rst  $38                                         ; $504a: $ff
	ld   de, $11a1                                   ; $504b: $11 $a1 $11
	ld   de, $ff1f                                   ; $504e: $11 $1f $ff
	rst  $38                                         ; $5051: $ff
	rst  $38                                         ; $5052: $ff
	db   $fd                                         ; $5053: $fd
	ld   h, d                                        ; $5054: $62
	ld   de, $1111                                   ; $5055: $11 $11 $11
	ld   de, $8fff                                   ; $5058: $11 $ff $8f
	rst  $38                                         ; $505b: $ff
	rst  $38                                         ; $505c: $ff
	pop  af                                          ; $505d: $f1
	ld   h, [hl]                                     ; $505e: $66
	ld   de, $1111                                   ; $505f: $11 $11 $11
	rst  $28                                         ; $5062: $ef
	rst  $38                                         ; $5063: $ff
	rst  $38                                         ; $5064: $ff
	rst  $38                                         ; $5065: $ff
	ld   hl, sp+$21                                  ; $5066: $f8 $21
	ld   de, $1111                                   ; $5068: $11 $11 $11
	rst  $38                                         ; $506b: $ff
	ccf                                              ; $506c: $3f
	rst  $38                                         ; $506d: $ff
	rst  $38                                         ; $506e: $ff
	pop  af                                          ; $506f: $f1
	sbc  l                                           ; $5070: $9d
	ld   de, $1111                                   ; $5071: $11 $11 $11
	ld   l, a                                        ; $5074: $6f
	rst  $38                                         ; $5075: $ff
	rst  $38                                         ; $5076: $ff
	rst  $38                                         ; $5077: $ff
	cp   $61                                         ; $5078: $fe $61
	ld   de, $1111                                   ; $507a: $11 $11 $11
	ldh  a, [c]                                      ; $507d: $f2
	rst  $38                                         ; $507e: $ff
	rst  $38                                         ; $507f: $ff
	rst  $38                                         ; $5080: $ff
	call nc, $11f1                                   ; $5081: $d4 $f1 $11
	ld   de, $db15                                   ; $5084: $11 $15 $db
	rst  $38                                         ; $5087: $ff
	rst  $38                                         ; $5088: $ff
	cp   $f9                                         ; $5089: $fe $f9
	ld   h, c                                        ; $508b: $61
	ld   de, $f511                                   ; $508c: $11 $11 $f5
	cpl                                              ; $508f: $2f
	rst  $38                                         ; $5090: $ff
	rst  $38                                         ; $5091: $ff
	push af                                          ; $5092: $f5
	db   $fc                                         ; $5093: $fc
	ld   de, $1111                                   ; $5094: $11 $11 $11
	rst  ToBoot                                         ; $5097: $c7
	rst  $28                                         ; $5098: $ef
	rst  $38                                         ; $5099: $ff
	cp   $b7                                         ; $509a: $fe $b7
	and  c                                           ; $509c: $a1
	ld   de, $6219                                   ; $509d: $11 $19 $62
	ret  z                                           ; $50a0: $c8

	rst  $38                                         ; $50a1: $ff
	rst  $38                                         ; $50a2: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50a3: $cf
	ld   sp, hl                                      ; $50a4: $f9
	sub  c                                           ; $50a5: $91
	ld   de, $c91b                                   ; $50a6: $11 $1b $c9
	rst  $20                                         ; $50a9: $e7
	rst  $38                                         ; $50aa: $ff
	db   $fc                                         ; $50ab: $fc
	ld   de, $9611                                   ; $50ac: $11 $11 $96
	inc  de                                          ; $50af: $13
	ld   l, e                                        ; $50b0: $6b
	rst  $38                                         ; $50b1: $ff
	rst  $38                                         ; $50b2: $ff
	rst  $38                                         ; $50b3: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $50b4: $cf
	pop  de                                          ; $50b5: $d1
	ld   de, $7859                                   ; $50b6: $11 $59 $78
	ld   de, $4155                                   ; $50b9: $11 $55 $41
	add  hl, de                                      ; $50bc: $19
	db   $eb                                         ; $50bd: $eb
	jp   hl                                          ; $50be: $e9


	ld   a, a                                        ; $50bf: $7f
	rst  $38                                         ; $50c0: $ff
	ld   hl, sp-$79                                  ; $50c1: $f8 $87
	sbc  $41                                         ; $50c3: $de $41
	ld   [de], a                                     ; $50c5: $12
	call z, $11b6                                    ; $50c6: $cc $b6 $11
	ld   de, $c811                                   ; $50c9: $11 $11 $c8
	adc  a                                           ; $50cc: $8f
	cp   [hl]                                        ; $50cd: $be
	rst  $38                                         ; $50ce: $ff
	rst  $38                                         ; $50cf: $ff
	db   $ec                                         ; $50d0: $ec
	ld   l, l                                        ; $50d1: $6d
	add  c                                           ; $50d2: $81
	ld   de, $6813                                   ; $50d3: $11 $13 $68
	ld   de, $7f11                                   ; $50d6: $11 $11 $7f
	db   $fd                                         ; $50d9: $fd
	push bc                                          ; $50da: $c5
	sbc  a                                           ; $50db: $9f
	rst  $38                                         ; $50dc: $ff
	ret                                              ; $50dd: $c9


	ld   h, a                                        ; $50de: $67
	rst  $38                                         ; $50df: $ff
	ld   h, c                                        ; $50e0: $61
	ld   de, $6136                                   ; $50e1: $11 $36 $61
	ld   de, $ff17                                   ; $50e4: $11 $17 $ff
	rst  $38                                         ; $50e7: $ff
	ld   a, h                                        ; $50e8: $7c
	rst  $38                                         ; $50e9: $ff
	db   $fc                                         ; $50ea: $fc
	ld   h, c                                        ; $50eb: $61
	ld   l, $e8                                      ; $50ec: $2e $e8
	ld   de, $8414                                   ; $50ee: $11 $14 $84
	ld   de, rAUD1HIGH                                   ; $50f1: $11 $14 $ff
	cp   $49                                         ; $50f4: $fe $49
	rst  $38                                         ; $50f6: $ff
	rst  $38                                         ; $50f7: $ff
	sub  c                                           ; $50f8: $91
	ld   c, h                                        ; $50f9: $4c
	xor  d                                           ; $50fa: $aa
	ld   de, $1111                                   ; $50fb: $11 $11 $11
	ld   de, $ff4b                                   ; $50fe: $11 $4b $ff
	db   $fd                                         ; $5101: $fd
	rst  $38                                         ; $5102: $ff
	rst  $38                                         ; $5103: $ff
	db   $fc                                         ; $5104: $fc
	ld   b, [hl]                                     ; $5105: $46
	ld   h, [hl]                                     ; $5106: $66
	sub  e                                           ; $5107: $93
	ld   de, $1111                                   ; $5108: $11 $11 $11
	jp   z, $cfff                                    ; $510b: $ca $ff $cf

	rst  $38                                         ; $510e: $ff
	rst  $38                                         ; $510f: $ff
	or   $4a                                         ; $5110: $f6 $4a
	halt                                             ; $5112: $76
	ld   b, c                                        ; $5113: $41
	ld   de, $1b11                                   ; $5114: $11 $11 $1b
	sbc  $fb                                         ; $5117: $de $fb
	sbc  [hl]                                        ; $5119: $9e
	rst  $38                                         ; $511a: $ff
	rst  $38                                         ; $511b: $ff
	add  e                                           ; $511c: $83
	sbc  e                                           ; $511d: $9b
	cp   c                                           ; $511e: $b9
	ld   hl, $1111                                   ; $511f: $21 $11 $11
	xor  c                                           ; $5122: $a9
	sbc  $8a                                         ; $5123: $de $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5125: $cf
	rst  $38                                         ; $5126: $ff
	ld   hl, sp-$76                                  ; $5127: $f8 $8a
	xor  l                                           ; $5129: $ad
	sub  d                                           ; $512a: $92
	ld   de, $3911                                   ; $512b: $11 $11 $39
	xor  a                                           ; $512e: $af
	add  l                                           ; $512f: $85
	sbc  a                                           ; $5130: $9f
	rst  $38                                         ; $5131: $ff
	db   $fc                                         ; $5132: $fc
	ld   e, c                                        ; $5133: $59
	xor  h                                           ; $5134: $ac
	add  $11                                         ; $5135: $c6 $11
	ld   de, $ce2c                                   ; $5137: $11 $2c $ce
	sub  c                                           ; $513a: $91
	ld   e, c                                        ; $513b: $59
	rst  $38                                         ; $513c: $ff
	db   $fc                                         ; $513d: $fc
	ld   b, [hl]                                     ; $513e: $46
	xor  e                                           ; $513f: $ab
	reti                                             ; $5140: $d9


	ld   sp, $2c11                                   ; $5141: $31 $11 $2c
	sbc  $c2                                         ; $5144: $de $c2
	scf                                              ; $5146: $37
	rst  $38                                         ; $5147: $ff
	ei                                               ; $5148: $fb
	inc  [hl]                                        ; $5149: $34
	xor  l                                           ; $514a: $ad
	db   $fc                                         ; $514b: $fc
	ld   d, c                                        ; $514c: $51
	ld   de, $cd4d                                   ; $514d: $11 $4d $cd
	sub  c                                           ; $5150: $91
	dec  d                                           ; $5151: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5152: $cf
	ei                                               ; $5153: $fb
	ld   d, a                                        ; $5154: $57
	adc  $fb                                         ; $5155: $ce $fb
	ld   sp, $6c11                                   ; $5157: $31 $11 $6c
	call z, $2761                                    ; $515a: $cc $61 $27
	rst  $28                                         ; $515d: $ef
	ld   a, [$de6a]                                  ; $515e: $fa $6a $de
	rst  $20                                         ; $5161: $e7
	ld   de, $ac11                                   ; $5162: $11 $11 $ac
	db   $eb                                         ; $5165: $eb
	ld   sp, $ff4a                                   ; $5166: $31 $4a $ff
	rst  ToBoot                                         ; $5169: $c7
	ld   a, e                                        ; $516a: $7b
	adc  $a3                                         ; $516b: $ce $a3
	ld   de, $df1b                                   ; $516d: $11 $1b $df
	call nc, Call_0da_7c12                           ; $5170: $d4 $12 $7c
	db   $eb                                         ; $5173: $eb
	ld   [hl], a                                     ; $5174: $77
	xor  h                                           ; $5175: $ac
	reti                                             ; $5176: $d9


	ld   b, c                                        ; $5177: $41
	ld   de, $ffcf                                   ; $5178: $11 $cf $ff
	ld   d, c                                        ; $517b: $51
	add  hl, sp                                      ; $517c: $39
	db   $dd                                         ; $517d: $dd
	and  l                                           ; $517e: $a5
	ld   a, d                                        ; $517f: $7a
	call c, $1171                                    ; $5180: $dc $71 $11
	ld   e, h                                        ; $5183: $5c
	rst  $38                                         ; $5184: $ff
	push de                                          ; $5185: $d5
	scf                                              ; $5186: $37
	adc  $d8                                         ; $5187: $ce $d8
	ld   e, b                                        ; $5189: $58
	cp   e                                           ; $518a: $bb
	sub  c                                           ; $518b: $91
	ld   de, $ff1a                                   ; $518c: $11 $1a $ff
	ld   a, [$cf77]                                  ; $518f: $fa $77 $cf
	ld   sp, hl                                      ; $5192: $f9
	ld   b, [hl]                                     ; $5193: $46
	sbc  d                                           ; $5194: $9a
	add  c                                           ; $5195: $81
	ld   de, $ef16                                   ; $5196: $11 $16 $ef
	rst  $38                                         ; $5199: $ff
	xor  c                                           ; $519a: $a9
	rst  $28                                         ; $519b: $ef
	ld   a, [$7824]                                  ; $519c: $fa $24 $78
	add  c                                           ; $519f: $81
	ld   de, $ff16                                   ; $51a0: $11 $16 $ff
	rst  $38                                         ; $51a3: $ff
	db   $dd                                         ; $51a4: $dd
	rst  $38                                         ; $51a5: $ff
	rst  $30                                         ; $51a6: $f7
	ld   de, $5157                                   ; $51a7: $11 $57 $51
	ld   de, $ff1c                                   ; $51aa: $11 $1c $ff
	rst  $38                                         ; $51ad: $ff
	rst  $38                                         ; $51ae: $ff
	rst  $38                                         ; $51af: $ff
	pop  bc                                          ; $51b0: $c1
	ld   de, $1134                                   ; $51b1: $11 $34 $11
	ld   de, $ff5f                                   ; $51b4: $11 $5f $ff
	rst  $38                                         ; $51b7: $ff
	cp   $fd                                         ; $51b8: $fe $fd
	ld   de, $3111                                   ; $51ba: $11 $11 $31
	ld   de, rAUD1LEN                                   ; $51bd: $11 $11 $ff
	rst  $38                                         ; $51c0: $ff
	db   $fc                                         ; $51c1: $fc
	rst  JumpTable                                         ; $51c2: $df
	db   $d3                                         ; $51c3: $d3
	ld   de, $3113                                   ; $51c4: $11 $13 $31
	ld   de, $ff1f                                   ; $51c7: $11 $1f $ff
	rst  $38                                         ; $51ca: $ff
	cp   e                                           ; $51cb: $bb
	call z, $1151                                    ; $51cc: $cc $51 $11
	dec  [hl]                                        ; $51cf: $35
	ld   de, rAUD1LEN                                   ; $51d0: $11 $11 $ff
	rst  $38                                         ; $51d3: $ff
	ld   sp, hl                                      ; $51d4: $f9
	ld   a, c                                        ; $51d5: $79
	sub  h                                           ; $51d6: $94
	ld   de, $a215                                   ; $51d7: $11 $15 $a2
	ld   de, $ff1f                                   ; $51da: $11 $1f $ff
	rst  $38                                         ; $51dd: $ff
	add  [hl]                                        ; $51de: $86
	sbc  d                                           ; $51df: $9a
	ld   h, c                                        ; $51e0: $61
	ld   de, $715c                                   ; $51e1: $11 $5c $71
	ld   de, $ff5f                                   ; $51e4: $11 $5f $ff
	ei                                               ; $51e7: $fb
	adc  c                                           ; $51e8: $89
	sub  h                                           ; $51e9: $94
	ld   de, $ec18                                   ; $51ea: $11 $18 $ec
	ld   de, rAUD1LEN                                   ; $51ed: $11 $11 $ff
	rst  $38                                         ; $51f0: $ff
	add  $ac                                         ; $51f1: $c6 $ac
	ld   [hl], c                                     ; $51f3: $71
	ld   de, $f35f                                   ; $51f4: $11 $5f $f3
	ld   de, $ff1e                                   ; $51f7: $11 $1e $ff
	rst  $38                                         ; $51fa: $ff
	ld   a, c                                        ; $51fb: $79
	jp   z, $1111                                    ; $51fc: $ca $11 $11

	rst  $28                                         ; $51ff: $ef
	pop  hl                                          ; $5200: $e1
	ld   de, $ff1f                                   ; $5201: $11 $1f $ff
	cp   $cc                                         ; $5204: $fe $cc
	or   e                                           ; $5206: $b3
	ld   de, $ff1b                                   ; $5207: $11 $1b $ff
	ld   b, c                                        ; $520a: $41
	ld   de, $ff2f                                   ; $520b: $11 $2f $ff
	db   $fc                                         ; $520e: $fc
	call z, $1171                                    ; $520f: $cc $71 $11
	rra                                              ; $5212: $1f
	rst  $38                                         ; $5213: $ff
	ld   hl, $4f11                                   ; $5214: $21 $11 $4f
	rst  $38                                         ; $5217: $ff
	db   $fc                                         ; $5218: $fc
	db   $eb                                         ; $5219: $eb
	ld   h, c                                        ; $521a: $61
	ld   de, $ff2f                                   ; $521b: $11 $2f $ff
	ld   hl, $5f11                                   ; $521e: $21 $11 $5f
	rst  $38                                         ; $5221: $ff
	rst  $38                                         ; $5222: $ff
	jp   c, $1161                                    ; $5223: $da $61 $11

	ld   c, a                                        ; $5226: $4f
	rst  $38                                         ; $5227: $ff
	ld   de, $1f11                                   ; $5228: $11 $11 $1f
	rst  $38                                         ; $522b: $ff
	rst  $38                                         ; $522c: $ff
	rst  $30                                         ; $522d: $f7
	ld   b, c                                        ; $522e: $41
	ld   de, $ff4f                                   ; $522f: $11 $4f $ff
	ld   h, c                                        ; $5232: $61
	ld   de, $ff1f                                   ; $5233: $11 $1f $ff
	rst  $38                                         ; $5236: $ff
	or   $31                                         ; $5237: $f6 $31
	ld   de, $ff1f                                   ; $5239: $11 $1f $ff
	pop  af                                          ; $523c: $f1
	ld   de, rAUD1LEN                                   ; $523d: $11 $11 $ff
	rst  $38                                         ; $5240: $ff
	ld   sp, hl                                      ; $5241: $f9
	ld   de, $1f11                                   ; $5242: $11 $11 $1f
	rst  $38                                         ; $5245: $ff
	pop  af                                          ; $5246: $f1
	ld   de, $af11                                   ; $5247: $11 $11 $af
	rst  $38                                         ; $524a: $ff
	rst  $38                                         ; $524b: $ff
	ld   hl, $1711                                   ; $524c: $21 $11 $17
	rst  $38                                         ; $524f: $ff
	rst  $38                                         ; $5250: $ff
	ld   de, $1c11                                   ; $5251: $11 $11 $1c
	rst  $38                                         ; $5254: $ff
	rst  $38                                         ; $5255: $ff
	pop  bc                                          ; $5256: $c1
	ld   de, $cf11                                   ; $5257: $11 $11 $cf
	rst  $38                                         ; $525a: $ff
	pop  de                                          ; $525b: $d1
	ld   de, $6f11                                   ; $525c: $11 $11 $6f
	rst  $38                                         ; $525f: $ff
	db   $fd                                         ; $5260: $fd
	ld   de, $2d11                                   ; $5261: $11 $11 $2d
	rst  $38                                         ; $5264: $ff
	rst  $38                                         ; $5265: $ff
	ld   de, $1111                                   ; $5266: $11 $11 $11
	rst  $38                                         ; $5269: $ff
	rst  $38                                         ; $526a: $ff
	pop  af                                          ; $526b: $f1
	ld   de, $df11                                   ; $526c: $11 $11 $df
	rst  $38                                         ; $526f: $ff
	ldh  a, [c]                                      ; $5270: $f2
	ld   de, $1111                                   ; $5271: $11 $11 $11
	rst  $38                                         ; $5274: $ff
	rst  $38                                         ; $5275: $ff
	ld   [hl], c                                     ; $5276: $71
	ld   de, $ff19                                   ; $5277: $11 $19 $ff
	rst  $38                                         ; $527a: $ff
	or   c                                           ; $527b: $b1
	ld   de, $1111                                   ; $527c: $11 $11 $11
	rst  $38                                         ; $527f: $ff
	rst  $38                                         ; $5280: $ff
	add  c                                           ; $5281: $81
	ld   de, $ff2c                                   ; $5282: $11 $2c $ff
	rst  $38                                         ; $5285: $ff
	or   c                                           ; $5286: $b1
	ld   de, $1111                                   ; $5287: $11 $11 $11
	rra                                              ; $528a: $1f
	rst  $38                                         ; $528b: $ff
	pop  af                                          ; $528c: $f1
	ld   de, $ff2b                                   ; $528d: $11 $2b $ff
	rst  $38                                         ; $5290: $ff
	db   $f4                                         ; $5291: $f4
	ld   de, $2113                                   ; $5292: $11 $13 $21
	ld   de, $ffff                                   ; $5295: $11 $ff $ff
	ld   de, $cf13                                   ; $5298: $11 $13 $cf
	rst  $38                                         ; $529b: $ff
	rst  $38                                         ; $529c: $ff
	ld   [hl], c                                     ; $529d: $71
	ld   de, $3126                                   ; $529e: $11 $26 $31
	inc  d                                           ; $52a1: $14
	rst  $38                                         ; $52a2: $ff
	db   $fc                                         ; $52a3: $fc
	ld   de, $bf16                                   ; $52a4: $11 $16 $bf
	rst  $38                                         ; $52a7: $ff
	ld   a, [$1161]                                  ; $52a8: $fa $61 $11
	ld   e, h                                        ; $52ab: $5c
	and  c                                           ; $52ac: $a1
	ld   de, $ffff                                   ; $52ad: $11 $ff $ff
	ld   de, rAUD1LOW                                   ; $52b0: $11 $13 $ff
	db   $fd                                         ; $52b3: $fd
	rst  $38                                         ; $52b4: $ff
	ld   [hl], c                                     ; $52b5: $71

Jump_0da_52b6:
	ld   de, $f89f                                   ; $52b6: $11 $9f $f8
	ld   de, $ff1f                                   ; $52b9: $11 $1f $ff
	pop  af                                          ; $52bc: $f1
	ld   de, $ff2b                                   ; $52bd: $11 $2b $ff
	rst  $38                                         ; $52c0: $ff
	push af                                          ; $52c1: $f5
	ld   de, $ff1c                                   ; $52c2: $11 $1c $ff
	or   c                                           ; $52c5: $b1
	ld   de, $ff1f                                   ; $52c6: $11 $1f $ff
	push af                                          ; $52c9: $f5
	ld   de, $ff18                                   ; $52ca: $11 $18 $ff
	rst  $38                                         ; $52cd: $ff
	jp   nc, $1b11                                   ; $52ce: $d2 $11 $1b

	rst  $38                                         ; $52d1: $ff
	jp   hl                                          ; $52d2: $e9


	ld   de, $9f11                                   ; $52d3: $11 $11 $9f
	rst  $38                                         ; $52d6: $ff
	pop  bc                                          ; $52d7: $c1
	ld   de, $ff3f                                   ; $52d8: $11 $3f $ff
	rst  $38                                         ; $52db: $ff
	ld   sp, $7f11                                   ; $52dc: $31 $11 $7f
	rst  $38                                         ; $52df: $ff
	or   $11                                         ; $52e0: $f6 $11
	ld   de, $ff1f                                   ; $52e2: $11 $1f $ff
	pop  af                                          ; $52e5: $f1
	ld   de, $ff1b                                   ; $52e6: $11 $1b $ff
	rst  $38                                         ; $52e9: $ff
	ld   [hl], c                                     ; $52ea: $71
	ld   de, $ff4f                                   ; $52eb: $11 $4f $ff
	ld   a, [$1121]                                  ; $52ee: $fa $21 $11
	ld   de, $ff1b                                   ; $52f1: $11 $1b $ff
	di                                               ; $52f4: $f3
	ld   de, $ff1f                                   ; $52f5: $11 $1f $ff
	ld   sp, hl                                      ; $52f8: $f9
	ld   h, c                                        ; $52f9: $61
	ld   de, $ff4d                                   ; $52fa: $11 $4d $ff
	ld   a, [$1131]                                  ; $52fd: $fa $31 $11
	ld   c, l                                        ; $5300: $4d
	pop  bc                                          ; $5301: $c1
	ld   de, $ffff                                   ; $5302: $11 $ff $ff
	ld   de, $df14                                   ; $5305: $11 $14 $df
	rst  $38                                         ; $5308: $ff
	rst  $20                                         ; $5309: $e7
	ld   de, $ff1a                                   ; $530a: $11 $1a $ff
	db   $fd                                         ; $530d: $fd
	ld   [hl], d                                     ; $530e: $72
	ld   de, $ff1b                                   ; $530f: $11 $1b $ff
	and  c                                           ; $5312: $a1
	ld   de, $ff1f                                   ; $5313: $11 $1f $ff
	pop  af                                          ; $5316: $f1
	ld   de, $ff4d                                   ; $5317: $11 $4d $ff
	rst  $38                                         ; $531a: $ff
	ld   [hl], c                                     ; $531b: $71
	ld   de, $ff8f                                   ; $531c: $11 $8f $ff
	jp   hl                                          ; $531f: $e9


	ld   de, $df14                                   ; $5320: $11 $14 $df
	ld   a, [$1141]                                  ; $5323: $fa $41 $11
	ld   de, $ffff                                   ; $5326: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $5329: $11 $11 $ff
	rst  $38                                         ; $532c: $ff
	ld   sp, hl                                      ; $532d: $f9
	ld   de, rAUD1LEN                                   ; $532e: $11 $11 $ff
	rst  $38                                         ; $5331: $ff
	add  c                                           ; $5332: $81
	ld   de, $ff1c                                   ; $5333: $11 $1c $ff
	rst  $30                                         ; $5336: $f7
	ld   de, $5312                                   ; $5337: $11 $12 $53
	ld   de, $f8ff                                   ; $533a: $11 $ff $f8
	ld   de, $ff1f                                   ; $533d: $11 $1f $ff
	ei                                               ; $5340: $fb
	ld   [hl], l                                     ; $5341: $75
	ld   de, $ff1e                                   ; $5342: $11 $1e $ff
	ld   hl, sp+$11                                  ; $5345: $f8 $11
	ld   de, $ffaf                                   ; $5347: $11 $af $ff
	pop  de                                          ; $534a: $d1
	ld   de, $fc1b                                   ; $534b: $11 $1b $fc
	ld   b, c                                        ; $534e: $41
	rra                                              ; $534f: $1f
	rst  $38                                         ; $5350: $ff
	pop  de                                          ; $5351: $d1
	ld   de, $ffef                                   ; $5352: $11 $ef $ff
	rst  $20                                         ; $5355: $e7
	add  c                                           ; $5356: $81
	ld   de, $ffaf                                   ; $5357: $11 $af $ff
	pop  bc                                          ; $535a: $c1
	ld   de, $ff1b                                   ; $535b: $11 $1b $ff
	ld   a, [$1311]                                  ; $535e: $fa $11 $13
	ld   a, d                                        ; $5361: $7a
	rst  JumpTable                                         ; $5362: $df
	jp   $1711                                       ; $5363: $c3 $11 $17


	call c, $82ff                                    ; $5366: $dc $ff $82
	ld   de, $ff4e                                   ; $5369: $11 $4e $ff
	rst  $20                                         ; $536c: $e7
	ld   de, $af14                                   ; $536d: $11 $14 $af
	rst  $38                                         ; $5370: $ff
	call nz, $3901                                   ; $5371: $c4 $01 $39
	rst  $38                                         ; $5374: $ff
	jp   hl                                          ; $5375: $e9


	ld   hl, $8b47                                   ; $5376: $21 $47 $8b
	xor  e                                           ; $5379: $ab
	xor  b                                           ; $537a: $a8
	ld   hl, $ee28                                   ; $537b: $21 $28 $ee
	or   a                                           ; $537e: $b7
	ld   d, h                                        ; $537f: $54
	ld   e, b                                        ; $5380: $58
	sbc  d                                           ; $5381: $9a
	xor  c                                           ; $5382: $a9
	add  a                                           ; $5383: $87
	ld   h, a                                        ; $5384: $67
	sbc  d                                           ; $5385: $9a
	sbc  c                                           ; $5386: $99
	xor  d                                           ; $5387: $aa
	sub  [hl]                                        ; $5388: $96
	ld   d, [hl]                                     ; $5389: $56
	sbc  d                                           ; $538a: $9a
	xor  c                                           ; $538b: $a9
	halt                                             ; $538c: $76
	ld   [hl], l                                     ; $538d: $75
	ld   b, [hl]                                     ; $538e: $46
	ld   h, l                                        ; $538f: $65
	ld   de, $f6ff                                   ; $5390: $11 $ff $f6
	ld   de, $fe1f                                   ; $5393: $11 $1f $fe
	reti                                             ; $5396: $d9


	ld   d, h                                        ; $5397: $54
	ld   hl, $ff4e                                   ; $5398: $21 $4e $ff
	call nc, Call_0da_4811                           ; $539b: $d4 $11 $48
	call $a3dc                                       ; $539e: $cd $dc $a3
	ld   [de], a                                     ; $53a1: $12
	ld   l, e                                        ; $53a2: $6b
	xor  $a8                                         ; $53a3: $ee $a8
	ld   d, h                                        ; $53a5: $54
	ld   b, [hl]                                     ; $53a6: $46
	adc  e                                           ; $53a7: $8b
	res  0, [hl]                                     ; $53a8: $cb $86
	ld   b, h                                        ; $53aa: $44
	ld   l, b                                        ; $53ab: $68
	cp   h                                           ; $53ac: $bc
	cp   d                                           ; $53ad: $ba
	add  [hl]                                        ; $53ae: $86
	ld   b, l                                        ; $53af: $45
	ld   a, d                                        ; $53b0: $7a
	cp   d                                           ; $53b1: $ba
	add  a                                           ; $53b2: $87
	ld   h, [hl]                                     ; $53b3: $66
	ld   h, [hl]                                     ; $53b4: $66
	adc  d                                           ; $53b5: $8a
	xor  c                                           ; $53b6: $a9
	ld   [hl], l                                     ; $53b7: $75
	ld   d, a                                        ; $53b8: $57
	sbc  c                                           ; $53b9: $99
	adc  b                                           ; $53ba: $88
	adc  c                                           ; $53bb: $89
	sub  a                                           ; $53bc: $97
	ld   h, a                                        ; $53bd: $67
	adc  d                                           ; $53be: $8a
	sbc  b                                           ; $53bf: $98
	ld   a, b                                        ; $53c0: $78
	sbc  c                                           ; $53c1: $99
	add  a                                           ; $53c2: $87
	ld   a, b                                        ; $53c3: $78
	sbc  b                                           ; $53c4: $98
	ld   [hl], a                                     ; $53c5: $77
	ld   a, b                                        ; $53c6: $78
	sbc  b                                           ; $53c7: $98
	adc  b                                           ; $53c8: $88
	ld   [hl], a                                     ; $53c9: $77
	ld   [hl], a                                     ; $53ca: $77
	adc  b                                           ; $53cb: $88
	sbc  b                                           ; $53cc: $98
	ld   [hl], a                                     ; $53cd: $77
	ld   a, b                                        ; $53ce: $78
	sbc  c                                           ; $53cf: $99
	sbc  c                                           ; $53d0: $99
	ld   [hl], a                                     ; $53d1: $77
	ld   [hl], a                                     ; $53d2: $77
	ld   a, b                                        ; $53d3: $78
	sbc  c                                           ; $53d4: $99
	xor  c                                           ; $53d5: $a9
	halt                                             ; $53d6: $76
	ld   h, a                                        ; $53d7: $67
	adc  b                                           ; $53d8: $88
	sbc  c                                           ; $53d9: $99
	sbc  b                                           ; $53da: $98
	add  a                                           ; $53db: $87
	halt                                             ; $53dc: $76
	ld   a, b                                        ; $53dd: $78
	sbc  c                                           ; $53de: $99
	sub  a                                           ; $53df: $97
	ld   [hl], a                                     ; $53e0: $77
	ld   a, b                                        ; $53e1: $78
	sbc  b                                           ; $53e2: $98
	sbc  b                                           ; $53e3: $98
	adc  b                                           ; $53e4: $88
	ld   [hl], a                                     ; $53e5: $77
	ld   a, b                                        ; $53e6: $78
	adc  c                                           ; $53e7: $89
	sbc  b                                           ; $53e8: $98
	ld   [hl], a                                     ; $53e9: $77
	adc  b                                           ; $53ea: $88
	adc  b                                           ; $53eb: $88
	sbc  b                                           ; $53ec: $98
	adc  b                                           ; $53ed: $88
	ld   [hl], a                                     ; $53ee: $77
	ld   a, b                                        ; $53ef: $78
	adc  c                                           ; $53f0: $89
	adc  b                                           ; $53f1: $88
	add  a                                           ; $53f2: $87
	ld   [hl], a                                     ; $53f3: $77
	ld   a, b                                        ; $53f4: $78
	sbc  b                                           ; $53f5: $98
	add  a                                           ; $53f6: $87
	ld   [hl], a                                     ; $53f7: $77
	adc  c                                           ; $53f8: $89
	sbc  c                                           ; $53f9: $99
	add  a                                           ; $53fa: $87
	ld   [hl], a                                     ; $53fb: $77
	adc  b                                           ; $53fc: $88
	adc  b                                           ; $53fd: $88
	adc  b                                           ; $53fe: $88
	adc  c                                           ; $53ff: $89
	ld   [hl], a                                     ; $5400: $77
	ld   a, b                                        ; $5401: $78
	adc  c                                           ; $5402: $89
	sbc  b                                           ; $5403: $98
	sbc  b                                           ; $5404: $98
	add  a                                           ; $5405: $87
	ld   a, b                                        ; $5406: $78
	adc  c                                           ; $5407: $89
	sbc  b                                           ; $5408: $98
	adc  b                                           ; $5409: $88
	ld   [hl], a                                     ; $540a: $77
	ld   [hl], a                                     ; $540b: $77
	adc  c                                           ; $540c: $89
	adc  b                                           ; $540d: $88
	add  a                                           ; $540e: $87
	ld   [hl], a                                     ; $540f: $77
	adc  b                                           ; $5410: $88
	adc  c                                           ; $5411: $89
	adc  b                                           ; $5412: $88
	adc  b                                           ; $5413: $88
	add  a                                           ; $5414: $87
	adc  b                                           ; $5415: $88
	sbc  c                                           ; $5416: $99
	add  a                                           ; $5417: $87
	ld   a, c                                        ; $5418: $79
	sbc  b                                           ; $5419: $98
	add  a                                           ; $541a: $87
	ld   [hl], a                                     ; $541b: $77
	sbc  c                                           ; $541c: $99
	adc  b                                           ; $541d: $88
	ld   a, b                                        ; $541e: $78
	sbc  b                                           ; $541f: $98
	ld   [hl], a                                     ; $5420: $77
	adc  b                                           ; $5421: $88
	adc  b                                           ; $5422: $88
	adc  b                                           ; $5423: $88
	adc  b                                           ; $5424: $88
	adc  b                                           ; $5425: $88
	sbc  c                                           ; $5426: $99
	adc  b                                           ; $5427: $88
	ld   [hl], a                                     ; $5428: $77
	adc  b                                           ; $5429: $88
	adc  c                                           ; $542a: $89
	adc  b                                           ; $542b: $88
	add  a                                           ; $542c: $87
	ld   [hl], a                                     ; $542d: $77
	adc  b                                           ; $542e: $88
	adc  b                                           ; $542f: $88
	adc  c                                           ; $5430: $89
	sbc  b                                           ; $5431: $98
	ld   [hl], a                                     ; $5432: $77
	ld   a, c                                        ; $5433: $79
	adc  c                                           ; $5434: $89
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
	ld   [hl], a                                     ; $543f: $77
	adc  c                                           ; $5440: $89
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
	adc  c                                           ; $545d: $89
	adc  b                                           ; $545e: $88
	adc  b                                           ; $545f: $88
	adc  b                                           ; $5460: $88
	adc  b                                           ; $5461: $88
	sbc  c                                           ; $5462: $99
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

Jump_0da_5476:
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

Jump_0da_5597:
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

Call_0da_5795:
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

Call_0da_57c7:
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
	sbc  b                                           ; $5dcd: $98
	adc  b                                           ; $5dce: $88
	adc  b                                           ; $5dcf: $88
	adc  b                                           ; $5dd0: $88
	adc  b                                           ; $5dd1: $88
	sbc  b                                           ; $5dd2: $98
	adc  b                                           ; $5dd3: $88
	adc  b                                           ; $5dd4: $88
	adc  b                                           ; $5dd5: $88
	adc  b                                           ; $5dd6: $88
	sbc  b                                           ; $5dd7: $98
	adc  b                                           ; $5dd8: $88
	ld   a, b                                        ; $5dd9: $78
	adc  b                                           ; $5dda: $88
	adc  b                                           ; $5ddb: $88
	sbc  c                                           ; $5ddc: $99
	ld   a, b                                        ; $5ddd: $78
	adc  b                                           ; $5dde: $88
	adc  b                                           ; $5ddf: $88
	ld   a, b                                        ; $5de0: $78
	sbc  b                                           ; $5de1: $98
	sbc  b                                           ; $5de2: $98
	ld   a, b                                        ; $5de3: $78
	ld   a, b                                        ; $5de4: $78
	sbc  b                                           ; $5de5: $98
	add  a                                           ; $5de6: $87
	ld   a, b                                        ; $5de7: $78
	adc  b                                           ; $5de8: $88
	sbc  b                                           ; $5de9: $98
	adc  b                                           ; $5dea: $88
	adc  b                                           ; $5deb: $88
	adc  c                                           ; $5dec: $89
	add  a                                           ; $5ded: $87
	ld   a, b                                        ; $5dee: $78
	sbc  d                                           ; $5def: $9a
	add  a                                           ; $5df0: $87
	halt                                             ; $5df1: $76
	adc  d                                           ; $5df2: $8a
	sbc  b                                           ; $5df3: $98
	ld   [hl], a                                     ; $5df4: $77
	sbc  b                                           ; $5df5: $98
	sbc  b                                           ; $5df6: $98
	add  a                                           ; $5df7: $87
	adc  b                                           ; $5df8: $88
	ld   a, b                                        ; $5df9: $78
	cp   b                                           ; $5dfa: $b8
	ld   a, b                                        ; $5dfb: $78
	ld   h, a                                        ; $5dfc: $67
	xor  c                                           ; $5dfd: $a9
	ld   [hl], a                                     ; $5dfe: $77
	ld   a, b                                        ; $5dff: $78
	sbc  c                                           ; $5e00: $99
	add  a                                           ; $5e01: $87
	adc  c                                           ; $5e02: $89
	adc  b                                           ; $5e03: $88
	ld   a, b                                        ; $5e04: $78
	xor  c                                           ; $5e05: $a9
	ld   d, [hl]                                     ; $5e06: $56
	adc  c                                           ; $5e07: $89
	sbc  b                                           ; $5e08: $98
	sub  a                                           ; $5e09: $97
	ld   l, c                                        ; $5e0a: $69
	xor  c                                           ; $5e0b: $a9
	adc  c                                           ; $5e0c: $89
	add  a                                           ; $5e0d: $87
	ld   l, c                                        ; $5e0e: $69
	sub  h                                           ; $5e0f: $94
	xor  e                                           ; $5e10: $ab
	ld   l, b                                        ; $5e11: $68
	adc  b                                           ; $5e12: $88
	sub  l                                           ; $5e13: $95
	ld   e, c                                        ; $5e14: $59
	cp   d                                           ; $5e15: $ba
	halt                                             ; $5e16: $76
	ld   l, c                                        ; $5e17: $69
	sbc  c                                           ; $5e18: $99
	ld   a, c                                        ; $5e19: $79
	add  [hl]                                        ; $5e1a: $86
	xor  c                                           ; $5e1b: $a9
	add  a                                           ; $5e1c: $87
	ld   b, a                                        ; $5e1d: $47
	sbc  e                                           ; $5e1e: $9b
	or   a                                           ; $5e1f: $b7
	ld   d, a                                        ; $5e20: $57
	xor  e                                           ; $5e21: $ab
	sub  l                                           ; $5e22: $95
	ld   e, c                                        ; $5e23: $59
	ld   l, c                                        ; $5e24: $69
	xor  d                                           ; $5e25: $aa
	ld   d, l                                        ; $5e26: $55
	ret  z                                           ; $5e27: $c8

	ld   l, d                                        ; $5e28: $6a
	sbc  b                                           ; $5e29: $98
	cp   d                                           ; $5e2a: $ba
	ld   d, $cb                                      ; $5e2b: $16 $cb
	and  l                                           ; $5e2d: $a5
	ld   c, c                                        ; $5e2e: $49
	or   l                                           ; $5e2f: $b5
	xor  e                                           ; $5e30: $ab
	ld   b, l                                        ; $5e31: $45
	ld   l, l                                        ; $5e32: $6d
	and  [hl]                                        ; $5e33: $a6
	ld   l, b                                        ; $5e34: $68
	sub  l                                           ; $5e35: $95
	xor  c                                           ; $5e36: $a9
	add  a                                           ; $5e37: $87
	ld   c, e                                        ; $5e38: $4b
	sub  a                                           ; $5e39: $97
	add  [hl]                                        ; $5e3a: $86
	cp   c                                           ; $5e3b: $b9
	ld   c, b                                        ; $5e3c: $48
	ld   l, h                                        ; $5e3d: $6c
	ldh  [c], a                                      ; $5e3e: $e2
	ld   a, c                                        ; $5e3f: $79
	xor  b                                           ; $5e40: $a8
	ld   e, c                                        ; $5e41: $59
	ld   h, l                                        ; $5e42: $65
	xor  a                                           ; $5e43: $af
	sub  e                                           ; $5e44: $93
	ld   d, $f9                                      ; $5e45: $16 $f9
	db   $db                                         ; $5e47: $db
	inc  d                                           ; $5e48: $14
	rst  $10                                         ; $5e49: $d7
	ld   l, e                                        ; $5e4a: $6b
	sub  [hl]                                        ; $5e4b: $96
	adc  h                                           ; $5e4c: $8c
	ld   h, $f7                                      ; $5e4d: $26 $f7
	ld   h, $9a                                      ; $5e4f: $26 $9a
	adc  [hl]                                        ; $5e51: $8e
	ld   b, l                                        ; $5e52: $45
	or   [hl]                                        ; $5e53: $b6
	inc  a                                           ; $5e54: $3c
	or   d                                           ; $5e55: $b2
	rst  $30                                         ; $5e56: $f7
	ld   b, [hl]                                     ; $5e57: $46
	ld   c, a                                        ; $5e58: $4f
	ld   [hl], l                                     ; $5e59: $75
	cp   d                                           ; $5e5a: $ba
	ld   d, e                                        ; $5e5b: $53
	adc  l                                           ; $5e5c: $8d
	sbc  b                                           ; $5e5d: $98
	add  e                                           ; $5e5e: $83
	push bc                                          ; $5e5f: $c5
	scf                                              ; $5e60: $37
	rst  $38                                         ; $5e61: $ff
	inc  de                                          ; $5e62: $13
	ld   sp, hl                                      ; $5e63: $f9
	ld   e, $14                                      ; $5e64: $1e $14
	push af                                          ; $5e66: $f5
	ld   l, d                                        ; $5e67: $6a
	pop  af                                          ; $5e68: $f1
	rra                                              ; $5e69: $1f
	and  c                                           ; $5e6a: $a1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e6b: $cf
	inc  d                                           ; $5e6c: $14
	pop  de                                          ; $5e6d: $d1
	xor  a                                           ; $5e6e: $af
	dec  de                                          ; $5e6f: $1b
	ldh  a, [c]                                      ; $5e70: $f2
	ld   l, c                                        ; $5e71: $69
	pop  bc                                          ; $5e72: $c1
	cpl                                              ; $5e73: $2f
	add  c                                           ; $5e74: $81
	pop  bc                                          ; $5e75: $c1
	rra                                              ; $5e76: $1f
	or   [hl]                                        ; $5e77: $b6

jr_0da_5e78:
	and  c                                           ; $5e78: $a1
	rst  $30                                         ; $5e79: $f7
	rra                                              ; $5e7a: $1f
	cp   d                                           ; $5e7b: $ba
	pop  de                                          ; $5e7c: $d1
	ld   a, [hl]                                     ; $5e7d: $7e
	ld   l, [hl]                                     ; $5e7e: $6e
	ld   de, $5ff2                                   ; $5e7f: $11 $f2 $5f
	ld   [hl], e                                     ; $5e82: $73
	jr   jr_0da_5e78                                 ; $5e83: $18 $f3

	ret  z                                           ; $5e85: $c8

	cp   a                                           ; $5e86: $bf
	add  hl, de                                      ; $5e87: $19
	pop  af                                          ; $5e88: $f1
	ld   a, c                                        ; $5e89: $79
	db   $fc                                         ; $5e8a: $fc
	rla                                              ; $5e8b: $17
	ei                                               ; $5e8c: $fb
	cp   c                                           ; $5e8d: $b9
	ld   [hl], c                                     ; $5e8e: $71
	ld   hl, sp+$1f                                  ; $5e8f: $f8 $1f
	push de                                          ; $5e91: $d5
	ld   a, [de]                                     ; $5e92: $1a
	pop  af                                          ; $5e93: $f1
	ccf                                              ; $5e94: $3f
	and  l                                           ; $5e95: $a5
	cp   d                                           ; $5e96: $ba
	sub  c                                           ; $5e97: $91
	ld   l, a                                        ; $5e98: $6f
	ld   [de], a                                     ; $5e99: $12
	ei                                               ; $5e9a: $fb
	inc  a                                           ; $5e9b: $3c
	ld   sp, $11ff                                   ; $5e9c: $31 $ff $11
	di                                               ; $5e9f: $f3
	rra                                              ; $5ea0: $1f
	sub  c                                           ; $5ea1: $91
	db   $fd                                         ; $5ea2: $fd
	rra                                              ; $5ea3: $1f
	ld   [hl], c                                     ; $5ea4: $71
	jp   z, $1ff4                                    ; $5ea5: $ca $f4 $1f

	ld   b, c                                        ; $5ea8: $41
	and  h                                           ; $5ea9: $a4
	ld   a, [$411f]                                  ; $5eaa: $fa $1f $41
	ld   sp, hl                                      ; $5ead: $f9
	rra                                              ; $5eae: $1f
	ld   d, d                                        ; $5eaf: $52
	ld   a, d                                        ; $5eb0: $7a
	ld   hl, sp+$46                                  ; $5eb1: $f8 $46
	ld   l, d                                        ; $5eb3: $6a
	pop  af                                          ; $5eb4: $f1
	rst  $38                                         ; $5eb5: $ff
	rra                                              ; $5eb6: $1f
	pop  af                                          ; $5eb7: $f1
	ld   a, a                                        ; $5eb8: $7f
	pop  bc                                          ; $5eb9: $c1
	rst  $38                                         ; $5eba: $ff
	ld   e, $f1                                      ; $5ebb: $1e $f1
	rra                                              ; $5ebd: $1f
	and  c                                           ; $5ebe: $a1
	or   c                                           ; $5ebf: $b1
	ld   a, [de]                                     ; $5ec0: $1a
	and  c                                           ; $5ec1: $a1
	sbc  a                                           ; $5ec2: $9f
	ld   de, $17ff                                   ; $5ec3: $11 $ff $17
	ld   a, [de]                                     ; $5ec6: $1a
	push af                                          ; $5ec7: $f5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ec8: $cf
	rra                                              ; $5ec9: $1f
	and  h                                           ; $5eca: $a4
	rst  $30                                         ; $5ecb: $f7
	ld   e, $f3                                      ; $5ecc: $1e $f3
	add  [hl]                                        ; $5ece: $86
	ld   de, $1115                                   ; $5ecf: $11 $15 $11
	rst  $38                                         ; $5ed2: $ff
	rra                                              ; $5ed3: $1f
	rst  $38                                         ; $5ed4: $ff
	and  c                                           ; $5ed5: $a1
	pop  bc                                          ; $5ed6: $c1
	cp   a                                           ; $5ed7: $bf
	xor  a                                           ; $5ed8: $af
	ret  z                                           ; $5ed9: $c8

	sbc  a                                           ; $5eda: $9f
	ld   e, c                                        ; $5edb: $59
	pop  af                                          ; $5edc: $f1
	inc  [hl]                                        ; $5edd: $34
	ld   de, $1911                                   ; $5ede: $11 $11 $19
	rst  $38                                         ; $5ee1: $ff
	rst  $38                                         ; $5ee2: $ff
	ld   [hl], c                                     ; $5ee3: $71
	and  e                                           ; $5ee4: $a3
	ld   a, [de]                                     ; $5ee5: $1a
	rst  $38                                         ; $5ee6: $ff
	set  2, c                                        ; $5ee7: $cb $d1
	adc  a                                           ; $5ee9: $8f
	dec  l                                           ; $5eea: $2d
	di                                               ; $5eeb: $f3
	ld   de, $1111                                   ; $5eec: $11 $11 $11
	cp   a                                           ; $5eef: $bf
	rst  $38                                         ; $5ef0: $ff
	pop  af                                          ; $5ef1: $f1
	add  $15                                         ; $5ef2: $c6 $15
	rst  $38                                         ; $5ef4: $ff
	rst  $38                                         ; $5ef5: $ff
	and  c                                           ; $5ef6: $a1
	inc  d                                           ; $5ef7: $14
	ldh  a, [c]                                      ; $5ef8: $f2
	db   $fd                                         ; $5ef9: $fd
	ld   b, d                                        ; $5efa: $42
	ld   de, $1f11                                   ; $5efb: $11 $11 $1f
	rst  $38                                         ; $5efe: $ff
	or   $11                                         ; $5eff: $f6 $11
	dec  d                                           ; $5f01: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f02: $cf
	rst  $38                                         ; $5f03: $ff
	and  c                                           ; $5f04: $a1
	ld   de, $ff7f                                   ; $5f05: $11 $7f $ff
	pop  bc                                          ; $5f08: $c1
	ld   de, $1f11                                   ; $5f09: $11 $11 $1f
	rst  $38                                         ; $5f0c: $ff
	rst  $38                                         ; $5f0d: $ff
	ld   de, $cf13                                   ; $5f0e: $11 $13 $cf
	rst  $38                                         ; $5f11: $ff
	di                                               ; $5f12: $f3
	ld   de, $ff1a                                   ; $5f13: $11 $1a $ff
	rst  $30                                         ; $5f16: $f7
	ld   de, $1111                                   ; $5f17: $11 $11 $11
	xor  a                                           ; $5f1a: $af
	rst  $38                                         ; $5f1b: $ff
	pop  af                                          ; $5f1c: $f1
	ld   de, $ff3b                                   ; $5f1d: $11 $3b $ff
	ld   hl, sp+$21                                  ; $5f20: $f8 $21
	ld   de, $ffef                                   ; $5f22: $11 $ef $ff
	pop  de                                          ; $5f25: $d1
	ld   de, $1e11                                   ; $5f26: $11 $11 $1e
	rst  $38                                         ; $5f29: $ff
	rst  $38                                         ; $5f2a: $ff
	ld   de, rAUD1LEN                                   ; $5f2b: $11 $11 $ff
	rst  $38                                         ; $5f2e: $ff
	sub  d                                           ; $5f2f: $92
	ld   de, $ff1f                                   ; $5f30: $11 $1f $ff
	db   $fd                                         ; $5f33: $fd
	ld   de, $1111                                   ; $5f34: $11 $11 $11
	rra                                              ; $5f37: $1f
	rst  $38                                         ; $5f38: $ff
	ldh  a, [c]                                      ; $5f39: $f2
	ld   de, $ff1f                                   ; $5f3a: $11 $1f $ff
	rst  $38                                         ; $5f3d: $ff
	ld   d, h                                        ; $5f3e: $54
	ld   de, $ff6f                                   ; $5f3f: $11 $6f $ff
	ldh  a, [c]                                      ; $5f42: $f2
	ld   de, $1111                                   ; $5f43: $11 $11 $11
	rst  $38                                         ; $5f46: $ff
	rst  $38                                         ; $5f47: $ff
	ld   h, c                                        ; $5f48: $61
	ld   de, $ffff                                   ; $5f49: $11 $ff $ff
	ld   sp, hl                                      ; $5f4c: $f9
	ld   b, c                                        ; $5f4d: $41
	ld   de, $ffff                                   ; $5f4e: $11 $ff $ff
	or   c                                           ; $5f51: $b1
	ld   de, $1111                                   ; $5f52: $11 $11 $11
	rst  $38                                         ; $5f55: $ff
	rst  $38                                         ; $5f56: $ff
	ld   de, rAUD1LEN                                   ; $5f57: $11 $11 $ff
	rst  $38                                         ; $5f5a: $ff
	ret  z                                           ; $5f5b: $c8

	ld   d, c                                        ; $5f5c: $51
	inc  de                                          ; $5f5d: $13
	rst  $38                                         ; $5f5e: $ff
	rst  $38                                         ; $5f5f: $ff
	ld   [hl], c                                     ; $5f60: $71
	ld   de, $1711                                   ; $5f61: $11 $11 $17
	rst  $38                                         ; $5f64: $ff
	rst  $38                                         ; $5f65: $ff
	ld   de, rAUD1LOW                                   ; $5f66: $11 $13 $ff
	rst  $38                                         ; $5f69: $ff
	db   $db                                         ; $5f6a: $db
	ld   d, c                                        ; $5f6b: $51
	ld   de, $ffef                                   ; $5f6c: $11 $ef $ff
	add  c                                           ; $5f6f: $81
	ld   de, $1911                                   ; $5f70: $11 $11 $19
	rst  $38                                         ; $5f73: $ff
	rst  $38                                         ; $5f74: $ff
	ld   de, rAUD1LEN                                   ; $5f75: $11 $11 $ff
	rst  $38                                         ; $5f78: $ff
	rst  JumpTable                                         ; $5f79: $df
	ld   d, c                                        ; $5f7a: $51
	ld   de, $ffcf                                   ; $5f7b: $11 $cf $ff
	pop  de                                          ; $5f7e: $d1
	ld   de, $1211                                   ; $5f7f: $11 $11 $12
	rst  $38                                         ; $5f82: $ff
	rst  $38                                         ; $5f83: $ff
	ld   de, rAUD1LEN                                   ; $5f84: $11 $11 $ff
	rst  $38                                         ; $5f87: $ff
	rst  $38                                         ; $5f88: $ff
	pop  hl                                          ; $5f89: $e1
	ld   de, $ff3f                                   ; $5f8a: $11 $3f $ff
	pop  af                                          ; $5f8d: $f1
	ld   de, $1111                                   ; $5f8e: $11 $11 $11
	rst  $28                                         ; $5f91: $ef
	rst  $38                                         ; $5f92: $ff
	pop  af                                          ; $5f93: $f1
	ld   de, $ff1f                                   ; $5f94: $11 $1f $ff
	rst  $38                                         ; $5f97: $ff
	or   $11                                         ; $5f98: $f6 $11
	inc  e                                           ; $5f9a: $1c
	rst  $38                                         ; $5f9b: $ff
	cp   $11                                         ; $5f9c: $fe $11
	ld   de, $1f11                                   ; $5f9e: $11 $11 $1f
	rst  $38                                         ; $5fa1: $ff
	cp   $11                                         ; $5fa2: $fe $11
	ld   de, $ffdb                                   ; $5fa4: $11 $db $ff
	rst  $38                                         ; $5fa7: $ff
	and  c                                           ; $5fa8: $a1
	ld   de, $ffbf                                   ; $5fa9: $11 $bf $ff
	ldh  a, [c]                                      ; $5fac: $f2
	ld   de, $1111                                   ; $5fad: $11 $11 $11
	ccf                                              ; $5fb0: $3f
	rst  $38                                         ; $5fb1: $ff
	rst  $38                                         ; $5fb2: $ff
	ld   de, $8711                                   ; $5fb3: $11 $11 $87
	rst  $38                                         ; $5fb6: $ff
	rst  $38                                         ; $5fb7: $ff
	pop  de                                          ; $5fb8: $d1
	ld   de, $ff9f                                   ; $5fb9: $11 $9f $ff
	push af                                          ; $5fbc: $f5
	ld   de, $1211                                   ; $5fbd: $11 $11 $12
	ld   [hl+], a                                    ; $5fc0: $22
	rst  $38                                         ; $5fc1: $ff
	rst  $38                                         ; $5fc2: $ff
	ld   de, $3311                                   ; $5fc3: $11 $11 $33
	xor  a                                           ; $5fc6: $af
	rst  $38                                         ; $5fc7: $ff
	rst  $30                                         ; $5fc8: $f7
	ld   de, $ff3f                                   ; $5fc9: $11 $3f $ff
	rst  $38                                         ; $5fcc: $ff
	ld   b, c                                        ; $5fcd: $41
	ld   de, $3211                                   ; $5fce: $11 $11 $32
	rra                                              ; $5fd1: $1f
	rst  $38                                         ; $5fd2: $ff
	db   $f4                                         ; $5fd3: $f4
	ld   de, $1313                                   ; $5fd4: $11 $13 $13
	rst  $38                                         ; $5fd7: $ff
	rst  $38                                         ; $5fd8: $ff
	or   c                                           ; $5fd9: $b1
	ld   c, h                                        ; $5fda: $4c
	rst  $38                                         ; $5fdb: $ff
	rst  $38                                         ; $5fdc: $ff
	rst  ToBoot                                         ; $5fdd: $c7
	ld   de, $4511                                   ; $5fde: $11 $11 $45
	ld   de, $ff1f                                   ; $5fe1: $11 $1f $ff
	pop  af                                          ; $5fe4: $f1
	ld   de, $1b11                                   ; $5fe5: $11 $11 $1b
	rst  $38                                         ; $5fe8: $ff
	rst  $38                                         ; $5fe9: $ff
	and  a                                           ; $5fea: $a7
	call c, $ffdb                                    ; $5feb: $dc $db $ff
	db   $e4                                         ; $5fee: $e4
	ld   de, $2111                                   ; $5fef: $11 $11 $21
	ld   de, $ffaf                                   ; $5ff2: $11 $af $ff
	pop  bc                                          ; $5ff5: $c1
	ld   de, $1f11                                   ; $5ff6: $11 $11 $1f
	rst  $38                                         ; $5ff9: $ff
	ei                                               ; $5ffa: $fb
	cp   [hl]                                        ; $5ffb: $be
	ei                                               ; $5ffc: $fb
	adc  b                                           ; $5ffd: $88
	rst  $38                                         ; $5ffe: $ff
	pop  af                                          ; $5fff: $f1
	ld   de, $1111                                   ; $6000: $11 $11 $11
	ld   de, $ffbf                                   ; $6003: $11 $bf $ff
	di                                               ; $6006: $f3
	ld   sp, $1c11                                   ; $6007: $31 $11 $1c
	rst  $28                                         ; $600a: $ef
	db   $fd                                         ; $600b: $fd
	rst  $38                                         ; $600c: $ff
	rst  $38                                         ; $600d: $ff
	cp   e                                           ; $600e: $bb
	call c, $11b1                                    ; $600f: $dc $b1 $11
	ld   de, $1111                                   ; $6012: $11 $11 $11
	rra                                              ; $6015: $1f
	rst  $38                                         ; $6016: $ff
	rst  $38                                         ; $6017: $ff
	call nz, $1111                                   ; $6018: $c4 $11 $11
	cp   d                                           ; $601b: $ba
	db   $ec                                         ; $601c: $ec
	rst  $38                                         ; $601d: $ff
	rst  $38                                         ; $601e: $ff
	xor  $ec                                         ; $601f: $ee $ec
	ld   [hl], c                                     ; $6021: $71
	ld   de, $1111                                   ; $6022: $11 $11 $11
	ld   de, $ff2a                                   ; $6025: $11 $2a $ff
	rst  $38                                         ; $6028: $ff
	push hl                                          ; $6029: $e5
	ld   de, $9711                                   ; $602a: $11 $11 $97
	call $ffcf                                       ; $602d: $cd $cf $ff
	rst  $38                                         ; $6030: $ff
	cp   $b3                                         ; $6031: $fe $b3
	ld   de, $1111                                   ; $6033: $11 $11 $11
	ld   de, $ff17                                   ; $6036: $11 $17 $ff
	rst  $38                                         ; $6039: $ff
	ei                                               ; $603a: $fb
	ld   d, c                                        ; $603b: $51
	ld   de, $6817                                   ; $603c: $11 $17 $68
	sbc  a                                           ; $603f: $9f
	rst  $38                                         ; $6040: $ff
	rst  $38                                         ; $6041: $ff
	rst  $38                                         ; $6042: $ff
	or   e                                           ; $6043: $b3
	ld   de, $1111                                   ; $6044: $11 $11 $11
	ld   de, $af13                                   ; $6047: $11 $13 $af
	rst  $38                                         ; $604a: $ff
	rst  $38                                         ; $604b: $ff
	or   h                                           ; $604c: $b4
	ld   de, $4613                                   ; $604d: $11 $13 $46
	ld   a, d                                        ; $6050: $7a
	rst  $38                                         ; $6051: $ff
	rst  $38                                         ; $6052: $ff
	rst  $38                                         ; $6053: $ff
	ld   sp, hl                                      ; $6054: $f9
	ld   sp, $1111                                   ; $6055: $31 $11 $11
	ld   de, $3c11                                   ; $6058: $11 $11 $3c
	rst  $38                                         ; $605b: $ff
	rst  $38                                         ; $605c: $ff
	db   $fc                                         ; $605d: $fc
	add  e                                           ; $605e: $83
	ld   de, $2331                                   ; $605f: $11 $31 $23
	adc  a                                           ; $6062: $8f
	rst  $38                                         ; $6063: $ff
	rst  $38                                         ; $6064: $ff
	rst  $38                                         ; $6065: $ff
	sub  c                                           ; $6066: $91
	ld   de, $1111                                   ; $6067: $11 $11 $11
	ld   de, $ef11                                   ; $606a: $11 $11 $ef
	rst  $38                                         ; $606d: $ff
	rst  $38                                         ; $606e: $ff
	ld   a, [$1111]                                  ; $606f: $fa $11 $11
	ld   de, $cf16                                   ; $6072: $11 $16 $cf
	rst  $38                                         ; $6075: $ff
	rst  $38                                         ; $6076: $ff
	db   $fd                                         ; $6077: $fd
	ld   d, c                                        ; $6078: $51
	ld   de, $1111                                   ; $6079: $11 $11 $11
	ld   de, $ff1f                                   ; $607c: $11 $1f $ff
	rst  $38                                         ; $607f: $ff
	rst  $38                                         ; $6080: $ff
	and  $35                                         ; $6081: $e6 $35
	ld   hl, $3511                                   ; $6083: $21 $11 $35
	cp   [hl]                                        ; $6086: $be
	rst  $38                                         ; $6087: $ff
	rst  $38                                         ; $6088: $ff
	db   $eb                                         ; $6089: $eb
	ld   [hl], h                                     ; $608a: $74
	ld   de, $1111                                   ; $608b: $11 $11 $11
	ld   de, $ffaf                                   ; $608e: $11 $af $ff
	rst  $38                                         ; $6091: $ff
	rst  $38                                         ; $6092: $ff
	cp   $c6                                         ; $6093: $fe $c6
	ld   hl, $1131                                   ; $6095: $21 $31 $11
	ld   l, h                                        ; $6098: $6c
	xor  $ef                                         ; $6099: $ee $ef
	db   $fc                                         ; $609b: $fc
	sub  a                                           ; $609c: $97
	ld   sp, $1111                                   ; $609d: $31 $11 $11
	ld   de, $bf36                                   ; $60a0: $11 $36 $bf
	rst  $38                                         ; $60a3: $ff
	rst  $38                                         ; $60a4: $ff
	rst  $38                                         ; $60a5: $ff
	db   $fc                                         ; $60a6: $fc
	call z, $1273                                    ; $60a7: $cc $73 $12
	ld   b, e                                        ; $60aa: $43
	inc  [hl]                                        ; $60ab: $34
	ld   a, b                                        ; $60ac: $78
	adc  b                                           ; $60ad: $88
	ld   l, b                                        ; $60ae: $68
	ld   h, h                                        ; $60af: $64
	inc  [hl]                                        ; $60b0: $34
	ld   b, [hl]                                     ; $60b1: $46
	ld   h, h                                        ; $60b2: $64
	ld   h, [hl]                                     ; $60b3: $66
	adc  b                                           ; $60b4: $88
	xor  d                                           ; $60b5: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60b6: $cf
	xor  $ee                                         ; $60b7: $ee $ee
	jp   z, $8877                                    ; $60b9: $ca $77 $88

	add  a                                           ; $60bc: $87
	ld   [hl], a                                     ; $60bd: $77
	add  a                                           ; $60be: $87
	ld   a, b                                        ; $60bf: $78
	sbc  c                                           ; $60c0: $99
	sbc  c                                           ; $60c1: $99
	add  a                                           ; $60c2: $87
	ld   h, l                                        ; $60c3: $65
	ld   d, l                                        ; $60c4: $55
	ld   [hl-], a                                    ; $60c5: $32
	inc  hl                                          ; $60c6: $23
	ld   b, h                                        ; $60c7: $44
	ld   d, [hl]                                     ; $60c8: $56
	adc  c                                           ; $60c9: $89
	xor  h                                           ; $60ca: $ac
	call z, $cdde                                    ; $60cb: $cc $de $cd
	call c, $bacc                                    ; $60ce: $dc $cc $ba
	xor  d                                           ; $60d1: $aa
	sbc  b                                           ; $60d2: $98
	sbc  b                                           ; $60d3: $98
	add  a                                           ; $60d4: $87
	halt                                             ; $60d5: $76
	halt                                             ; $60d6: $76
	ld   d, l                                        ; $60d7: $55
	ld   b, h                                        ; $60d8: $44
	inc  sp                                          ; $60d9: $33
	inc  sp                                          ; $60da: $33
	inc  [hl]                                        ; $60db: $34
	inc  sp                                          ; $60dc: $33
	ld   b, l                                        ; $60dd: $45
	ld   h, a                                        ; $60de: $67
	adc  c                                           ; $60df: $89
	cp   h                                           ; $60e0: $bc
	call $eeee                                       ; $60e1: $cd $ee $ee
	xor  $ee                                         ; $60e4: $ee $ee
	call c, $98ca                                    ; $60e6: $dc $ca $98
	halt                                             ; $60e9: $76
	ld   h, [hl]                                     ; $60ea: $66
	ld   d, l                                        ; $60eb: $55
	ld   d, l                                        ; $60ec: $55
	ld   b, h                                        ; $60ed: $44
	ld   [hl-], a                                    ; $60ee: $32
	ld   [hl+], a                                    ; $60ef: $22
	inc  hl                                          ; $60f0: $23
	inc  sp                                          ; $60f1: $33
	inc  [hl]                                        ; $60f2: $34
	ld   d, [hl]                                     ; $60f3: $56
	adc  c                                           ; $60f4: $89
	xor  e                                           ; $60f5: $ab
	cp   e                                           ; $60f6: $bb
	call z, $ddcd                                    ; $60f7: $cc $cd $dd
	db   $dd                                         ; $60fa: $dd
	db   $dd                                         ; $60fb: $dd
	db   $dd                                         ; $60fc: $dd
	call z, $98ba                                    ; $60fd: $cc $ba $98
	ld   h, l                                        ; $6100: $65
	ld   d, l                                        ; $6101: $55
	ld   b, h                                        ; $6102: $44
	ld   b, h                                        ; $6103: $44
	ld   b, l                                        ; $6104: $45
	ld   d, h                                        ; $6105: $54
	ld   b, h                                        ; $6106: $44
	inc  sp                                          ; $6107: $33
	inc  sp                                          ; $6108: $33
	ld   b, h                                        ; $6109: $44
	ld   d, [hl]                                     ; $610a: $56
	ld   h, a                                        ; $610b: $67
	adc  c                                           ; $610c: $89
	cp   h                                           ; $610d: $bc
	adc  $ee                                         ; $610e: $ce $ee
	db   $dd                                         ; $6110: $dd
	call $bacc                                       ; $6111: $cd $cc $ba
	xor  d                                           ; $6114: $aa
	xor  c                                           ; $6115: $a9
	sbc  b                                           ; $6116: $98
	ld   [hl], a                                     ; $6117: $77
	halt                                             ; $6118: $76
	ld   h, [hl]                                     ; $6119: $66
	ld   d, l                                        ; $611a: $55
	ld   b, h                                        ; $611b: $44
	ld   b, h                                        ; $611c: $44
	ld   b, h                                        ; $611d: $44
	ld   b, h                                        ; $611e: $44
	ld   b, l                                        ; $611f: $45
	ld   d, l                                        ; $6120: $55
	ld   d, [hl]                                     ; $6121: $56
	ld   [hl], a                                     ; $6122: $77
	adc  b                                           ; $6123: $88
	sbc  d                                           ; $6124: $9a
	xor  d                                           ; $6125: $aa
	cp   h                                           ; $6126: $bc
	cp   e                                           ; $6127: $bb
	call z, $bccb                                    ; $6128: $cc $cb $bc
	jp   z, $88a9                                    ; $612b: $ca $a9 $88

	ld   [hl], a                                     ; $612e: $77
	ld   h, [hl]                                     ; $612f: $66
	ld   [hl], a                                     ; $6130: $77
	ld   [hl], a                                     ; $6131: $77
	ld   [hl], a                                     ; $6132: $77
	ld   [hl], a                                     ; $6133: $77
	ld   h, [hl]                                     ; $6134: $66
	ld   h, l                                        ; $6135: $65
	ld   h, l                                        ; $6136: $65
	ld   d, l                                        ; $6137: $55
	ld   d, l                                        ; $6138: $55
	ld   d, l                                        ; $6139: $55
	ld   d, [hl]                                     ; $613a: $56
	ld   [hl], a                                     ; $613b: $77
	sbc  b                                           ; $613c: $98
	sbc  d                                           ; $613d: $9a
	sbc  c                                           ; $613e: $99
	xor  d                                           ; $613f: $aa
	sbc  c                                           ; $6140: $99
	xor  e                                           ; $6141: $ab
	cp   e                                           ; $6142: $bb
	set  1, e                                        ; $6143: $cb $cb
	xor  d                                           ; $6145: $aa
	xor  c                                           ; $6146: $a9
	sbc  b                                           ; $6147: $98
	adc  b                                           ; $6148: $88
	add  a                                           ; $6149: $87
	ld   [hl], a                                     ; $614a: $77
	ld   [hl], a                                     ; $614b: $77
	ld   [hl], a                                     ; $614c: $77
	ld   [hl], a                                     ; $614d: $77
	ld   [hl], a                                     ; $614e: $77
	ld   h, [hl]                                     ; $614f: $66
	ld   d, h                                        ; $6150: $54
	ld   b, e                                        ; $6151: $43
	inc  [hl]                                        ; $6152: $34
	ld   b, l                                        ; $6153: $45
	ld   h, a                                        ; $6154: $67

Call_0da_6155:
	ld   a, b                                        ; $6155: $78
	sbc  c                                           ; $6156: $99
	xor  d                                           ; $6157: $aa
	xor  d                                           ; $6158: $aa
	xor  d                                           ; $6159: $aa
	xor  e                                           ; $615a: $ab
	cp   d                                           ; $615b: $ba
	xor  d                                           ; $615c: $aa
	xor  d                                           ; $615d: $aa
	xor  e                                           ; $615e: $ab
	cp   d                                           ; $615f: $ba
	xor  c                                           ; $6160: $a9
	sbc  b                                           ; $6161: $98
	add  a                                           ; $6162: $87
	ld   [hl], a                                     ; $6163: $77
	ld   [hl], a                                     ; $6164: $77
	ld   h, a                                        ; $6165: $67
	ld   [hl], a                                     ; $6166: $77
	halt                                             ; $6167: $76
	ld   h, [hl]                                     ; $6168: $66
	ld   h, [hl]                                     ; $6169: $66
	ld   h, l                                        ; $616a: $65
	ld   d, l                                        ; $616b: $55
	ld   d, l                                        ; $616c: $55
	ld   d, l                                        ; $616d: $55
	ld   d, [hl]                                     ; $616e: $56
	ld   a, b                                        ; $616f: $78
	adc  c                                           ; $6170: $89
	sbc  d                                           ; $6171: $9a
	cp   e                                           ; $6172: $bb
	xor  d                                           ; $6173: $aa
	xor  d                                           ; $6174: $aa
	cp   e                                           ; $6175: $bb
	xor  d                                           ; $6176: $aa
	xor  e                                           ; $6177: $ab
	xor  d                                           ; $6178: $aa
	xor  c                                           ; $6179: $a9
	xor  c                                           ; $617a: $a9
	sbc  c                                           ; $617b: $99
	adc  b                                           ; $617c: $88
	adc  b                                           ; $617d: $88
	ld   [hl], a                                     ; $617e: $77
	ld   [hl], a                                     ; $617f: $77
	ld   h, a                                        ; $6180: $67
	ld   [hl], a                                     ; $6181: $77
	halt                                             ; $6182: $76
	ld   h, [hl]                                     ; $6183: $66
	ld   h, [hl]                                     ; $6184: $66
	ld   h, [hl]                                     ; $6185: $66
	ld   h, [hl]                                     ; $6186: $66
	ld   d, l                                        ; $6187: $55
	ld   h, [hl]                                     ; $6188: $66
	ld   h, a                                        ; $6189: $67
	ld   a, b                                        ; $618a: $78
	sbc  c                                           ; $618b: $99
	xor  c                                           ; $618c: $a9
	xor  e                                           ; $618d: $ab
	cp   d                                           ; $618e: $ba
	cp   e                                           ; $618f: $bb
	xor  c                                           ; $6190: $a9
	sbc  d                                           ; $6191: $9a
	xor  c                                           ; $6192: $a9
	xor  d                                           ; $6193: $aa
	xor  c                                           ; $6194: $a9
	sbc  b                                           ; $6195: $98
	sbc  b                                           ; $6196: $98
	adc  b                                           ; $6197: $88
	adc  b                                           ; $6198: $88
	ld   a, b                                        ; $6199: $78
	ld   [hl], a                                     ; $619a: $77
	ld   [hl], a                                     ; $619b: $77
	ld   [hl], a                                     ; $619c: $77
	ld   [hl], a                                     ; $619d: $77
	ld   [hl], a                                     ; $619e: $77
	ld   [hl], a                                     ; $619f: $77
	ld   [hl], a                                     ; $61a0: $77
	halt                                             ; $61a1: $76
	ld   h, [hl]                                     ; $61a2: $66
	ld   h, [hl]                                     ; $61a3: $66
	ld   [hl], a                                     ; $61a4: $77
	ld   [hl], a                                     ; $61a5: $77
	adc  b                                           ; $61a6: $88
	sbc  b                                           ; $61a7: $98
	sbc  d                                           ; $61a8: $9a
	xor  c                                           ; $61a9: $a9
	sbc  c                                           ; $61aa: $99
	xor  d                                           ; $61ab: $aa
	sbc  c                                           ; $61ac: $99
	sbc  c                                           ; $61ad: $99
	sbc  b                                           ; $61ae: $98
	adc  b                                           ; $61af: $88
	sbc  b                                           ; $61b0: $98
	sbc  c                                           ; $61b1: $99
	adc  c                                           ; $61b2: $89
	sbc  c                                           ; $61b3: $99
	adc  c                                           ; $61b4: $89
	adc  b                                           ; $61b5: $88
	adc  b                                           ; $61b6: $88
	ld   a, b                                        ; $61b7: $78
	ld   [hl], a                                     ; $61b8: $77
	ld   [hl], a                                     ; $61b9: $77
	ld   [hl], a                                     ; $61ba: $77
	ld   [hl], a                                     ; $61bb: $77
	ld   [hl], a                                     ; $61bc: $77
	ld   h, a                                        ; $61bd: $67
	ld   h, [hl]                                     ; $61be: $66
	ld   h, [hl]                                     ; $61bf: $66
	ld   h, a                                        ; $61c0: $67
	ld   [hl], a                                     ; $61c1: $77
	adc  b                                           ; $61c2: $88
	sbc  b                                           ; $61c3: $98
	sbc  c                                           ; $61c4: $99
	sbc  c                                           ; $61c5: $99
	xor  c                                           ; $61c6: $a9
	sbc  c                                           ; $61c7: $99
	sbc  c                                           ; $61c8: $99
	sbc  c                                           ; $61c9: $99
	sbc  c                                           ; $61ca: $99
	sbc  c                                           ; $61cb: $99
	sbc  c                                           ; $61cc: $99
	sbc  c                                           ; $61cd: $99
	sbc  c                                           ; $61ce: $99
	sbc  b                                           ; $61cf: $98
	sbc  c                                           ; $61d0: $99
	adc  b                                           ; $61d1: $88
	adc  b                                           ; $61d2: $88
	add  a                                           ; $61d3: $87
	ld   [hl], a                                     ; $61d4: $77
	ld   [hl], a                                     ; $61d5: $77
	ld   [hl], a                                     ; $61d6: $77
	ld   [hl], a                                     ; $61d7: $77
	ld   h, a                                        ; $61d8: $67
	ld   h, [hl]                                     ; $61d9: $66
	ld   h, [hl]                                     ; $61da: $66
	ld   h, [hl]                                     ; $61db: $66
	ld   [hl], a                                     ; $61dc: $77
	ld   a, b                                        ; $61dd: $78
	adc  c                                           ; $61de: $89
	adc  c                                           ; $61df: $89
	sbc  c                                           ; $61e0: $99
	sbc  c                                           ; $61e1: $99
	sbc  c                                           ; $61e2: $99
	sbc  c                                           ; $61e3: $99
	xor  c                                           ; $61e4: $a9
	sbc  d                                           ; $61e5: $9a
	sbc  d                                           ; $61e6: $9a
	xor  d                                           ; $61e7: $aa
	xor  d                                           ; $61e8: $aa
	xor  c                                           ; $61e9: $a9
	adc  b                                           ; $61ea: $88
	sbc  b                                           ; $61eb: $98
	sbc  b                                           ; $61ec: $98
	adc  b                                           ; $61ed: $88
	adc  b                                           ; $61ee: $88
	ld   a, b                                        ; $61ef: $78
	ld   [hl], a                                     ; $61f0: $77
	ld   [hl], a                                     ; $61f1: $77
	halt                                             ; $61f2: $76
	ld   h, [hl]                                     ; $61f3: $66
	ld   h, l                                        ; $61f4: $65
	ld   h, l                                        ; $61f5: $65
	ld   h, [hl]                                     ; $61f6: $66
	ld   h, a                                        ; $61f7: $67
	ld   a, b                                        ; $61f8: $78
	adc  c                                           ; $61f9: $89
	sbc  c                                           ; $61fa: $99
	sbc  c                                           ; $61fb: $99
	sbc  c                                           ; $61fc: $99
	sbc  c                                           ; $61fd: $99
	sbc  c                                           ; $61fe: $99
	sbc  c                                           ; $61ff: $99
	sbc  c                                           ; $6200: $99
	xor  c                                           ; $6201: $a9
	xor  c                                           ; $6202: $a9
	sbc  c                                           ; $6203: $99
	sbc  c                                           ; $6204: $99
	adc  c                                           ; $6205: $89
	adc  b                                           ; $6206: $88
	adc  b                                           ; $6207: $88
	sub  a                                           ; $6208: $97
	add  a                                           ; $6209: $87
	ld   [hl], a                                     ; $620a: $77
	halt                                             ; $620b: $76
	halt                                             ; $620c: $76
	ld   h, [hl]                                     ; $620d: $66
	ld   d, [hl]                                     ; $620e: $56
	ld   d, l                                        ; $620f: $55
	ld   d, l                                        ; $6210: $55
	ld   h, [hl]                                     ; $6211: $66
	ld   [hl], a                                     ; $6212: $77
	ld   a, c                                        ; $6213: $79
	adc  b                                           ; $6214: $88
	sbc  c                                           ; $6215: $99
	xor  c                                           ; $6216: $a9
	sbc  c                                           ; $6217: $99
	sbc  c                                           ; $6218: $99
	xor  c                                           ; $6219: $a9
	xor  e                                           ; $621a: $ab
	xor  e                                           ; $621b: $ab
	sbc  d                                           ; $621c: $9a
	xor  c                                           ; $621d: $a9
	xor  c                                           ; $621e: $a9
	xor  c                                           ; $621f: $a9
	sbc  b                                           ; $6220: $98
	adc  b                                           ; $6221: $88
	ld   a, b                                        ; $6222: $78
	ld   h, a                                        ; $6223: $67
	ld   h, [hl]                                     ; $6224: $66
	ld   h, [hl]                                     ; $6225: $66
	ld   h, l                                        ; $6226: $65
	ld   d, l                                        ; $6227: $55
	ld   d, l                                        ; $6228: $55
	ld   d, l                                        ; $6229: $55
	ld   d, [hl]                                     ; $622a: $56
	ld   h, a                                        ; $622b: $67
	adc  c                                           ; $622c: $89
	adc  c                                           ; $622d: $89
	sbc  d                                           ; $622e: $9a
	sbc  c                                           ; $622f: $99
	sbc  c                                           ; $6230: $99
	sbc  d                                           ; $6231: $9a
	xor  c                                           ; $6232: $a9
	xor  c                                           ; $6233: $a9
	xor  c                                           ; $6234: $a9
	xor  d                                           ; $6235: $aa
	xor  d                                           ; $6236: $aa
	sbc  c                                           ; $6237: $99
	xor  c                                           ; $6238: $a9
	sbc  b                                           ; $6239: $98
	add  a                                           ; $623a: $87
	ld   [hl], a                                     ; $623b: $77
	ld   h, [hl]                                     ; $623c: $66
	ld   d, [hl]                                     ; $623d: $56
	ld   h, l                                        ; $623e: $65
	ld   d, h                                        ; $623f: $54
	ld   d, h                                        ; $6240: $54
	ld   b, h                                        ; $6241: $44
	ld   d, l                                        ; $6242: $55
	ld   h, a                                        ; $6243: $67
	ld   a, c                                        ; $6244: $79
	adc  d                                           ; $6245: $8a
	sbc  d                                           ; $6246: $9a
	xor  d                                           ; $6247: $aa
	xor  e                                           ; $6248: $ab
	cp   d                                           ; $6249: $ba
	cp   c                                           ; $624a: $b9
	sbc  e                                           ; $624b: $9b
	sbc  d                                           ; $624c: $9a
	sbc  d                                           ; $624d: $9a
	xor  c                                           ; $624e: $a9
	sbc  c                                           ; $624f: $99
	sbc  b                                           ; $6250: $98
	sub  a                                           ; $6251: $97
	adc  c                                           ; $6252: $89
	adc  c                                           ; $6253: $89
	ld   [hl], l                                     ; $6254: $75
	ld   h, l                                        ; $6255: $65
	ld   [hl-], a                                    ; $6256: $32
	ld   b, h                                        ; $6257: $44
	inc  sp                                          ; $6258: $33
	inc  sp                                          ; $6259: $33
	ld   b, l                                        ; $625a: $45
	ld   l, b                                        ; $625b: $68
	sbc  d                                           ; $625c: $9a
	sbc  e                                           ; $625d: $9b
	call z, $dccc                                    ; $625e: $cc $cc $dc
	call z, $aaab                                    ; $6261: $cc $ab $aa
	xor  d                                           ; $6264: $aa
	sub  a                                           ; $6265: $97
	add  a                                           ; $6266: $87
	sbc  b                                           ; $6267: $98
	ld   h, a                                        ; $6268: $67
	ld   d, l                                        ; $6269: $55
	inc  [hl]                                        ; $626a: $34
	ld   [hl], h                                     ; $626b: $74
	inc  d                                           ; $626c: $14
	ld   b, d                                        ; $626d: $42
	ld   [de], a                                     ; $626e: $12
	ld   b, l                                        ; $626f: $45
	ld   h, a                                        ; $6270: $67
	ld   l, d                                        ; $6271: $6a
	cp   d                                           ; $6272: $ba
	xor  l                                           ; $6273: $ad
	db   $ec                                         ; $6274: $ec
	db   $dd                                         ; $6275: $dd
	call z, $acca                                    ; $6276: $cc $ca $ac
	sbc  c                                           ; $6279: $99
	xor  e                                           ; $627a: $ab
	jp   z, Jump_0da_6887                            ; $627b: $ca $87 $68

	ld   d, h                                        ; $627e: $54
	ld   h, e                                        ; $627f: $63
	ld   b, [hl]                                     ; $6280: $46
	ld   de, $1133                                   ; $6281: $11 $33 $11
	dec  [hl]                                        ; $6284: $35
	scf                                              ; $6285: $37
	ld   a, b                                        ; $6286: $78
	db   $dd                                         ; $6287: $dd
	db   $dd                                         ; $6288: $dd
	rst  $38                                         ; $6289: $ff
	xor  $ef                                         ; $628a: $ee $ef
	call z, $b9ac                                    ; $628c: $cc $ac $b9
	sbc  b                                           ; $628f: $98
	add  a                                           ; $6290: $87
	add  a                                           ; $6291: $87
	ld   h, l                                        ; $6292: $65
	ld   [hl-], a                                    ; $6293: $32
	dec  d                                           ; $6294: $15
	add  c                                           ; $6295: $81
	ld   d, $11                                      ; $6296: $16 $11
	inc  de                                          ; $6298: $13
	ld   h, l                                        ; $6299: $65
	and  a                                           ; $629a: $a7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $629b: $cf
	db   $ec                                         ; $629c: $ec
	rst  $38                                         ; $629d: $ff
	rst  $28                                         ; $629e: $ef
	cp   $fb                                         ; $629f: $fe $fb
	jp   z, Jump_0da_69da                            ; $62a1: $ca $da $69

	sub  a                                           ; $62a4: $97
	ld   b, h                                        ; $62a5: $44
	ld   b, e                                        ; $62a6: $43
	ld   sp, $4116                                   ; $62a7: $31 $16 $41
	inc  d                                           ; $62aa: $14
	ld   de, $4917                                   ; $62ab: $11 $17 $49
	sbc  c                                           ; $62ae: $99
	rst  $38                                         ; $62af: $ff
	db   $fc                                         ; $62b0: $fc
	rst  $38                                         ; $62b1: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62b2: $cf
	rst  JumpTable                                         ; $62b3: $df
	call c, $e59a                                    ; $62b4: $dc $9a $e5
	ld   [hl], a                                     ; $62b7: $77
	add  l                                           ; $62b8: $85
	inc  [hl]                                        ; $62b9: $34
	inc  de                                          ; $62ba: $13
	ld   [de], a                                     ; $62bb: $12
	add  c                                           ; $62bc: $81
	inc  de                                          ; $62bd: $13
	ld   de, $8411                                   ; $62be: $11 $11 $84
	cp   c                                           ; $62c1: $b9
	rst  $28                                         ; $62c2: $ef
	rst  $38                                         ; $62c3: $ff
	rst  $38                                         ; $62c4: $ff
	rst  $38                                         ; $62c5: $ff
	cp   $fa                                         ; $62c6: $fe $fa
	cp   c                                           ; $62c8: $b9
	cp   d                                           ; $62c9: $ba
	add  hl, sp                                      ; $62ca: $39
	ld   h, [hl]                                     ; $62cb: $66
	inc  h                                           ; $62cc: $24
	ld   hl, $8111                                   ; $62cd: $21 $11 $81
	inc  d                                           ; $62d0: $14
	ld   de, $8511                                   ; $62d1: $11 $11 $85
	call z, $ffff                                    ; $62d4: $cc $ff $ff
	rst  $38                                         ; $62d7: $ff
	rst  $38                                         ; $62d8: $ff
	cp   $f7                                         ; $62d9: $fe $f7
	sub  [hl]                                        ; $62db: $96
	ld   a, b                                        ; $62dc: $78
	add  hl, de                                      ; $62dd: $19
	ld   d, h                                        ; $62de: $54
	ld   sp, $1821                                   ; $62df: $31 $21 $18
	ld   de, $1144                                   ; $62e2: $11 $44 $11
	ld   a, [de]                                     ; $62e5: $1a
	ld   e, h                                        ; $62e6: $5c
	cp   l                                           ; $62e7: $bd
	rst  $38                                         ; $62e8: $ff
	rst  $38                                         ; $62e9: $ff
	rst  $38                                         ; $62ea: $ff
	rst  JumpTable                                         ; $62eb: $df
	rst  $28                                         ; $62ec: $ef
	adc  b                                           ; $62ed: $88
	ld   h, [hl]                                     ; $62ee: $66
	sub  c                                           ; $62ef: $91
	halt                                             ; $62f0: $76
	ld   b, e                                        ; $62f1: $43
	inc  de                                          ; $62f2: $13
	ld   de, $1ac1                                   ; $62f3: $11 $c1 $1a
	ld   de, $a413                                   ; $62f6: $11 $13 $a4
	db   $eb                                         ; $62f9: $eb
	rst  $38                                         ; $62fa: $ff
	rst  $38                                         ; $62fb: $ff
	rst  $38                                         ; $62fc: $ff
	rst  $28                                         ; $62fd: $ef
	db   $fd                                         ; $62fe: $fd
	push af                                          ; $62ff: $f5
	and  l                                           ; $6300: $a5
	ld   h, [hl]                                     ; $6301: $66
	jr   jr_0da_6346                                 ; $6302: $18 $42

	ld   hl, $4b11                                   ; $6304: $21 $11 $4b
	ld   de, $11b1                                   ; $6307: $11 $b1 $11
	or   a                                           ; $630a: $b7
	ld   a, a                                        ; $630b: $7f
	xor  a                                           ; $630c: $af
	rst  $38                                         ; $630d: $ff
	rst  $38                                         ; $630e: $ff
	ld   a, [$dcff]                                  ; $630f: $fa $ff $dc
	ld   c, c                                        ; $6312: $49
	daa                                              ; $6313: $27
	ld   de, $2171                                   ; $6314: $11 $71 $21
	ld   de, $111c                                   ; $6317: $11 $1c $11
	pop  bc                                          ; $631a: $c1
	ld   de, $2f2f                                   ; $631b: $11 $2f $2f
	rst  $38                                         ; $631e: $ff
	rst  $38                                         ; $631f: $ff
	rst  $38                                         ; $6320: $ff
	rst  $38                                         ; $6321: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6322: $cf
	db   $ec                                         ; $6323: $ec
	ld   [hl], a                                     ; $6324: $77
	ld   d, e                                        ; $6325: $53
	ld   d, c                                        ; $6326: $51
	inc  [hl]                                        ; $6327: $34
	ld   hl, $1611                                   ; $6328: $21 $11 $16
	ld   sp, $1156                                   ; $632b: $31 $56 $11
	dec  e                                           ; $632e: $1d
	ld   a, b                                        ; $632f: $78
	rst  $38                                         ; $6330: $ff
	rst  $38                                         ; $6331: $ff
	rst  $38                                         ; $6332: $ff
	rst  $38                                         ; $6333: $ff
	rst  $38                                         ; $6334: $ff
	cp   $89                                         ; $6335: $fe $89
	ld   d, e                                        ; $6337: $53
	ld   d, c                                        ; $6338: $51
	inc  hl                                          ; $6339: $23
	ld   [hl-], a                                    ; $633a: $32
	ld   de, $7113                                   ; $633b: $11 $13 $71
	rla                                              ; $633e: $17
	ld   de, $a713                                   ; $633f: $11 $13 $a7
	rst  JumpTable                                         ; $6342: $df
	rst  $38                                         ; $6343: $ff
	rst  $38                                         ; $6344: $ff
	rst  $38                                         ; $6345: $ff

jr_0da_6346:
	rst  $38                                         ; $6346: $ff
	cp   $ba                                         ; $6347: $fe $ba
	sub  [hl]                                        ; $6349: $96
	ld   d, [hl]                                     ; $634a: $56
	ld   d, l                                        ; $634b: $55
	ld   h, l                                        ; $634c: $65
	ld   b, c                                        ; $634d: $41
	ld   de, $1152                                   ; $634e: $11 $52 $11
	ld   de, $2411                                   ; $6351: $11 $11 $24
	ld   l, d                                        ; $6354: $6a
	rst  $28                                         ; $6355: $ef
	rst  $38                                         ; $6356: $ff
	rst  $38                                         ; $6357: $ff
	rst  $38                                         ; $6358: $ff
	rst  $38                                         ; $6359: $ff
	rst  $38                                         ; $635a: $ff
	call c, $99bb                                    ; $635b: $dc $bb $99
	sub  a                                           ; $635e: $97
	ld   h, h                                        ; $635f: $64
	ld   de, $1113                                   ; $6360: $11 $13 $11
	ld   de, $1111                                   ; $6363: $11 $11 $11
	ld   [hl], $9c                                   ; $6366: $36 $9c
	rst  $38                                         ; $6368: $ff
	rst  $38                                         ; $6369: $ff
	rst  $38                                         ; $636a: $ff
	rst  $38                                         ; $636b: $ff
	rst  $38                                         ; $636c: $ff
	rst  $38                                         ; $636d: $ff
	db   $ed                                         ; $636e: $ed
	db   $db                                         ; $636f: $db
	cp   c                                           ; $6370: $b9
	ld   [hl], l                                     ; $6371: $75
	ld   hl, $1111                                   ; $6372: $21 $11 $11
	ld   de, $1111                                   ; $6375: $11 $11 $11
	inc  d                                           ; $6378: $14
	ld   l, d                                        ; $6379: $6a
	adc  $ff                                         ; $637a: $ce $ff
	rst  $38                                         ; $637c: $ff
	rst  $38                                         ; $637d: $ff
	rst  $38                                         ; $637e: $ff
	rst  $38                                         ; $637f: $ff
	rst  $38                                         ; $6380: $ff
	db   $fd                                         ; $6381: $fd
	jp   z, Jump_0da_4197                            ; $6382: $ca $97 $41

	ld   de, $1111                                   ; $6385: $11 $11 $11
	ld   de, $1211                                   ; $6388: $11 $11 $12
	ld   b, [hl]                                     ; $638b: $46
	cp   l                                           ; $638c: $bd
	rst  $28                                         ; $638d: $ef
	rst  $38                                         ; $638e: $ff
	rst  $38                                         ; $638f: $ff
	rst  $38                                         ; $6390: $ff
	rst  $38                                         ; $6391: $ff
	rst  $38                                         ; $6392: $ff
	rst  $38                                         ; $6393: $ff
	call c, Call_0da_63b8                            ; $6394: $dc $b8 $63
	ld   de, $1111                                   ; $6397: $11 $11 $11
	ld   de, $1111                                   ; $639a: $11 $11 $11
	inc  h                                           ; $639d: $24
	ld   a, h                                        ; $639e: $7c
	sbc  $ff                                         ; $639f: $de $ff
	rst  $38                                         ; $63a1: $ff
	rst  $38                                         ; $63a2: $ff
	rst  $38                                         ; $63a3: $ff
	rst  $38                                         ; $63a4: $ff
	rst  $38                                         ; $63a5: $ff
	db   $fc                                         ; $63a6: $fc
	cp   d                                           ; $63a7: $ba
	add  l                                           ; $63a8: $85
	ld   hl, $1111                                   ; $63a9: $21 $11 $11
	ld   de, $1111                                   ; $63ac: $11 $11 $11
	inc  de                                          ; $63af: $13
	ld   e, c                                        ; $63b0: $59
	adc  $ff                                         ; $63b1: $ce $ff
	rst  $38                                         ; $63b3: $ff
	rst  $38                                         ; $63b4: $ff
	rst  $38                                         ; $63b5: $ff
	rst  $38                                         ; $63b6: $ff
	rst  $38                                         ; $63b7: $ff

Call_0da_63b8:
	cp   $cb                                         ; $63b8: $fe $cb
	and  a                                           ; $63ba: $a7
	ld   b, c                                        ; $63bb: $41
	ld   de, $1111                                   ; $63bc: $11 $11 $11
	ld   de, $1111                                   ; $63bf: $11 $11 $11
	ld   b, [hl]                                     ; $63c2: $46
	xor  l                                           ; $63c3: $ad
	rst  JumpTable                                         ; $63c4: $df
	rst  $38                                         ; $63c5: $ff
	rst  $38                                         ; $63c6: $ff
	rst  $38                                         ; $63c7: $ff
	rst  $38                                         ; $63c8: $ff
	rst  $38                                         ; $63c9: $ff
	rst  $38                                         ; $63ca: $ff
	db   $eb                                         ; $63cb: $eb
	xor  b                                           ; $63cc: $a8
	ld   h, e                                        ; $63cd: $63
	ld   de, $1111                                   ; $63ce: $11 $11 $11
	ld   de, $1111                                   ; $63d1: $11 $11 $11
	inc  h                                           ; $63d4: $24
	ld   a, e                                        ; $63d5: $7b
	xor  $ff                                         ; $63d6: $ee $ff
	rst  $38                                         ; $63d8: $ff
	rst  $38                                         ; $63d9: $ff
	rst  $38                                         ; $63da: $ff
	rst  $38                                         ; $63db: $ff
	rst  $38                                         ; $63dc: $ff
	db   $fd                                         ; $63dd: $fd
	cp   e                                           ; $63de: $bb
	add  [hl]                                        ; $63df: $86
	ld   sp, $1111                                   ; $63e0: $31 $11 $11
	ld   de, $1111                                   ; $63e3: $11 $11 $11
	inc  de                                          ; $63e6: $13
	ld   d, a                                        ; $63e7: $57
	adc  $ef                                         ; $63e8: $ce $ef
	rst  $38                                         ; $63ea: $ff
	rst  $38                                         ; $63eb: $ff
	rst  $38                                         ; $63ec: $ff
	rst  $38                                         ; $63ed: $ff
	rst  $38                                         ; $63ee: $ff
	rst  $38                                         ; $63ef: $ff
	db   $db                                         ; $63f0: $db
	cp   b                                           ; $63f1: $b8
	ld   d, d                                        ; $63f2: $52
	ld   de, $1111                                   ; $63f3: $11 $11 $11
	ld   de, $1111                                   ; $63f6: $11 $11 $11
	dec  [hl]                                        ; $63f9: $35
	adc  h                                           ; $63fa: $8c
	rst  $28                                         ; $63fb: $ef
	rst  $38                                         ; $63fc: $ff
	rst  $38                                         ; $63fd: $ff
	rst  $38                                         ; $63fe: $ff
	rst  $38                                         ; $63ff: $ff
	rst  $38                                         ; $6400: $ff
	rst  $38                                         ; $6401: $ff
	db   $ed                                         ; $6402: $ed
	cp   d                                           ; $6403: $ba
	add  l                                           ; $6404: $85
	ld   hl, $1111                                   ; $6405: $21 $11 $11
	ld   de, $1111                                   ; $6408: $11 $11 $11
	inc  de                                          ; $640b: $13
	ld   e, b                                        ; $640c: $58
	call $ffff                                       ; $640d: $cd $ff $ff
	rst  $38                                         ; $6410: $ff
	rst  $38                                         ; $6411: $ff
	rst  $38                                         ; $6412: $ff
	rst  $38                                         ; $6413: $ff
	rst  $38                                         ; $6414: $ff
	db   $db                                         ; $6415: $db
	and  a                                           ; $6416: $a7
	ld   d, d                                        ; $6417: $52
	ld   de, $1111                                   ; $6418: $11 $11 $11
	ld   de, $1111                                   ; $641b: $11 $11 $11
	dec  [hl]                                        ; $641e: $35
	adc  h                                           ; $641f: $8c
	rst  JumpTable                                         ; $6420: $df
	rst  $38                                         ; $6421: $ff
	rst  $38                                         ; $6422: $ff
	rst  $38                                         ; $6423: $ff
	rst  $38                                         ; $6424: $ff
	rst  $38                                         ; $6425: $ff
	rst  $38                                         ; $6426: $ff
	db   $fc                                         ; $6427: $fc
	jp   z, $2175                                    ; $6428: $ca $75 $21

	ld   de, $1111                                   ; $642b: $11 $11 $11
	ld   de, $1411                                   ; $642e: $11 $11 $14
	ld   e, b                                        ; $6431: $58
	adc  $ff                                         ; $6432: $ce $ff
	rst  $38                                         ; $6434: $ff
	rst  $38                                         ; $6435: $ff
	rst  $38                                         ; $6436: $ff
	rst  $38                                         ; $6437: $ff
	rst  $38                                         ; $6438: $ff
	cp   $cb                                         ; $6439: $fe $cb
	and  a                                           ; $643b: $a7
	ld   b, d                                        ; $643c: $42
	ld   de, $1111                                   ; $643d: $11 $11 $11
	ld   de, $1111                                   ; $6440: $11 $11 $11
	ld   b, l                                        ; $6443: $45
	sbc  h                                           ; $6444: $9c
	rst  JumpTable                                         ; $6445: $df
	rst  $38                                         ; $6446: $ff
	rst  $38                                         ; $6447: $ff
	rst  $38                                         ; $6448: $ff
	rst  $38                                         ; $6449: $ff
	rst  $38                                         ; $644a: $ff
	cp   $dd                                         ; $644b: $fe $dd
	cp   c                                           ; $644d: $b9
	ld   [hl], e                                     ; $644e: $73
	ld   de, $1111                                   ; $644f: $11 $11 $11
	ld   de, $1111                                   ; $6452: $11 $11 $11
	dec  h                                           ; $6455: $25
	ld   l, c                                        ; $6456: $69
	sbc  $ff                                         ; $6457: $de $ff
	rst  $38                                         ; $6459: $ff
	rst  $38                                         ; $645a: $ff
	rst  $38                                         ; $645b: $ff
	rst  $38                                         ; $645c: $ff
	rst  $38                                         ; $645d: $ff
	xor  $cb                                         ; $645e: $ee $cb
	sub  [hl]                                        ; $6460: $96
	ld   sp, $1111                                   ; $6461: $31 $11 $11
	ld   de, $1111                                   ; $6464: $11 $11 $11
	inc  de                                          ; $6467: $13
	ld   d, a                                        ; $6468: $57
	cp   l                                           ; $6469: $bd
	rst  $38                                         ; $646a: $ff
	rst  $38                                         ; $646b: $ff
	rst  $38                                         ; $646c: $ff
	rst  $38                                         ; $646d: $ff
	rst  $38                                         ; $646e: $ff
	rst  $38                                         ; $646f: $ff
	cp   $db                                         ; $6470: $fe $db
	sub  a                                           ; $6472: $97
	ld   d, c                                        ; $6473: $51
	ld   de, $1111                                   ; $6474: $11 $11 $11
	ld   de, $1211                                   ; $6477: $11 $11 $12
	ld   d, [hl]                                     ; $647a: $56

jr_0da_647b:
	xor  h                                           ; $647b: $ac
	rst  $28                                         ; $647c: $ef
	rst  $38                                         ; $647d: $ff
	rst  $38                                         ; $647e: $ff
	rst  $38                                         ; $647f: $ff
	rst  $38                                         ; $6480: $ff
	rst  $38                                         ; $6481: $ff
	db   $ec                                         ; $6482: $ec
	jp   z, $2186                                    ; $6483: $ca $86 $21

	ld   de, $1121                                   ; $6486: $11 $21 $11
	ld   de, $6413                                   ; $6489: $11 $13 $64
	adc  e                                           ; $648c: $8b
	rst  $38                                         ; $648d: $ff
	rst  $38                                         ; $648e: $ff
	rst  $38                                         ; $648f: $ff
	rst  $38                                         ; $6490: $ff
	rst  $38                                         ; $6491: $ff
	db   $fd                                         ; $6492: $fd
	sbc  b                                           ; $6493: $98
	halt                                             ; $6494: $76
	ld   b, e                                        ; $6495: $43
	ld   hl, $1111                                   ; $6496: $21 $11 $11
	ld   d, c                                        ; $6499: $51
	ld   de, $4938                                   ; $649a: $11 $38 $49
	db   $fd                                         ; $649d: $fd
	rst  $38                                         ; $649e: $ff
	rst  $38                                         ; $649f: $ff
	rst  $38                                         ; $64a0: $ff
	rst  $38                                         ; $64a1: $ff
	db   $ec                                         ; $64a2: $ec
	xor  c                                           ; $64a3: $a9
	and  h                                           ; $64a4: $a4
	ld   [hl+], a                                    ; $64a5: $22
	inc  [hl]                                        ; $64a6: $34
	ld   [de], a                                     ; $64a7: $12
	ld   de, $1111                                   ; $64a8: $11 $11 $11
	add  a                                           ; $64ab: $87
	inc  de                                          ; $64ac: $13
	ld   a, e                                        ; $64ad: $7b
	adc  b                                           ; $64ae: $88
	rst  $38                                         ; $64af: $ff
	rst  $38                                         ; $64b0: $ff
	rst  $38                                         ; $64b1: $ff
	rst  $38                                         ; $64b2: $ff
	cp   $ca                                         ; $64b3: $fe $ca
	xor  c                                           ; $64b5: $a9
	sub  h                                           ; $64b6: $94

Call_0da_64b7:
	dec  [hl]                                        ; $64b7: $35
	ld   d, h                                        ; $64b8: $54
	ld   [de], a                                     ; $64b9: $12
	ld   de, $1511                                   ; $64ba: $11 $11 $15
	sub  c                                           ; $64bd: $91
	jr   jr_0da_647b                                 ; $64be: $18 $bb

	ld   l, l                                        ; $64c0: $6d
	rst  $38                                         ; $64c1: $ff
	rst  $38                                         ; $64c2: $ff
	rst  $38                                         ; $64c3: $ff
	rst  $38                                         ; $64c4: $ff
	xor  h                                           ; $64c5: $ac
	xor  e                                           ; $64c6: $ab
	ld   a, b                                        ; $64c7: $78
	ld   d, l                                        ; $64c8: $55
	sub  h                                           ; $64c9: $94
	ld   b, d                                        ; $64ca: $42
	ld   sp, $1111                                   ; $64cb: $31 $11 $11
	sub  a                                           ; $64ce: $97
	ld   de, $b8cc                                   ; $64cf: $11 $cc $b8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64d2: $cf
	rst  $38                                         ; $64d3: $ff
	xor  a                                           ; $64d4: $af
	rst  $38                                         ; $64d5: $ff
	adc  c                                           ; $64d6: $89
	jp   z, Jump_0da_78b5                            ; $64d7: $ca $b5 $78

	sub  a                                           ; $64da: $97
	ld   [hl], $53                                   ; $64db: $36 $53
	ld   de, $1b11                                   ; $64dd: $11 $11 $1b
	ld   de, $ba8d                                   ; $64e0: $11 $8d $ba
	sbc  h                                           ; $64e3: $9c
	rst  $38                                         ; $64e4: $ff
	cp   h                                           ; $64e5: $bc
	rst  $38                                         ; $64e6: $ff
	or   a                                           ; $64e7: $b7
	cp   c                                           ; $64e8: $b9
	and  a                                           ; $64e9: $a7
	dec  sp                                          ; $64ea: $3b
	xor  b                                           ; $64eb: $a8
	ld   d, a                                        ; $64ec: $57
	sub  e                                           ; $64ed: $93
	ld   hl, $1611                                   ; $64ee: $21 $11 $16
	add  c                                           ; $64f1: $81
	ld   e, $bb                                      ; $64f2: $1e $bb
	cp   h                                           ; $64f4: $bc
	rst  $38                                         ; $64f5: $ff
	ld   a, [$c8ff]                                  ; $64f6: $fa $ff $c8
	sbc  b                                           ; $64f9: $98
	ld   a, e                                        ; $64fa: $7b
	ld   b, a                                        ; $64fb: $47
	xor  b                                           ; $64fc: $a8
	add  [hl]                                        ; $64fd: $86
	sub  l                                           ; $64fe: $95
	ld   sp, $1111                                   ; $64ff: $31 $11 $11
	pop  bc                                          ; $6502: $c1
	dec  de                                          ; $6503: $1b
	call c, $ffcb                                    ; $6504: $dc $cb $ff
	ld   a, [$eaff]                                  ; $6507: $fa $ff $ea
	ld   d, a                                        ; $650a: $57
	ld   l, e                                        ; $650b: $6b
	ld   h, l                                        ; $650c: $65
	cp   b                                           ; $650d: $b8
	and  [hl]                                        ; $650e: $a6
	add  a                                           ; $650f: $87
	ld   sp, $1111                                   ; $6510: $31 $11 $11
	pop  hl                                          ; $6513: $e1
	dec  e                                           ; $6514: $1d
	xor  $da                                         ; $6515: $ee $da
	rst  $38                                         ; $6517: $ff
	ld   hl, sp-$21                                  ; $6518: $f8 $df
	reti                                             ; $651a: $d9


	scf                                              ; $651b: $37
	ld   a, d                                        ; $651c: $7a
	ld   h, h                                        ; $651d: $64
	cp   d                                           ; $651e: $ba
	or   [hl]                                        ; $651f: $b6
	adc  b                                           ; $6520: $88
	ld   sp, $1311                                   ; $6521: $31 $11 $13
	pop  hl                                          ; $6524: $e1
	rra                                              ; $6525: $1f
	rst  $38                                         ; $6526: $ff
	jp   z, $f5ff                                    ; $6527: $ca $ff $f5

	rst  $38                                         ; $652a: $ff
	or   l                                           ; $652b: $b5
	daa                                              ; $652c: $27
	adc  d                                           ; $652d: $8a
	ld   b, [hl]                                     ; $652e: $46
	db   $db                                         ; $652f: $db
	sub  l                                           ; $6530: $95
	and  [hl]                                        ; $6531: $a6
	ld   de, $1f11                                   ; $6532: $11 $11 $1f
	ld   sp, $fedf                                   ; $6535: $31 $df $fe
	cp   a                                           ; $6538: $bf
	rst  $38                                         ; $6539: $ff
	adc  b                                           ; $653a: $88
	cp   $61                                         ; $653b: $fe $61
	ld   d, a                                        ; $653d: $57
	and  [hl]                                        ; $653e: $a6
	inc  a                                           ; $653f: $3c
	db   $db                                         ; $6540: $db
	ld   h, a                                        ; $6541: $67
	add  d                                           ; $6542: $82
	ld   de, $c911                                   ; $6543: $11 $11 $c9
	ld   a, [de]                                     ; $6546: $1a
	rst  $38                                         ; $6547: $ff
	ei                                               ; $6548: $fb
	rst  $38                                         ; $6549: $ff
	ld   a, [$f65f]                                  ; $654a: $fa $5f $f6
	inc  d                                           ; $654d: $14
	ld   a, c                                        ; $654e: $79
	sub  d                                           ; $654f: $92
	xor  l                                           ; $6550: $ad
	add  $68                                         ; $6551: $c6 $68
	ld   hl, $1f11                                   ; $6553: $21 $11 $1f
	ld   h, c                                        ; $6556: $61
	rst  JumpTable                                         ; $6557: $df
	rst  $38                                         ; $6558: $ff
	cp   a                                           ; $6559: $bf
	rst  $38                                         ; $655a: $ff
	halt                                             ; $655b: $76
	cp   $51                                         ; $655c: $fe $51
	ld   d, [hl]                                     ; $655e: $56
	or   a                                           ; $655f: $b7
	inc  a                                           ; $6560: $3c
	call c, Call_0da_6155                            ; $6561: $dc $55 $61
	ld   de, $f113                                   ; $6564: $11 $13 $f1
	rra                                              ; $6567: $1f
	rst  $38                                         ; $6568: $ff
	rst  $28                                         ; $6569: $ef
	rst  $38                                         ; $656a: $ff
	di                                               ; $656b: $f3
	rst  JumpTable                                         ; $656c: $df
	and  c                                           ; $656d: $a1
	ld   d, $8c                                      ; $656e: $16 $8c
	scf                                              ; $6570: $37
	db   $ec                                         ; $6571: $ec
	sub  e                                           ; $6572: $93
	ld   h, c                                        ; $6573: $61
	ld   de, $f311                                   ; $6574: $11 $11 $f3
	rra                                              ; $6577: $1f
	rst  $38                                         ; $6578: $ff
	rst  $38                                         ; $6579: $ff
	rst  $38                                         ; $657a: $ff
	push af                                          ; $657b: $f5
	sbc  [hl]                                        ; $657c: $9e
	call nc, $8c15                                   ; $657d: $d4 $15 $8c
	ld   h, l                                        ; $6580: $65
	xor  l                                           ; $6581: $ad
	jp   $1141                                       ; $6582: $c3 $41 $11


	ld   de, $1ff3                                   ; $6585: $11 $f3 $1f
	rst  $38                                         ; $6588: $ff
	cp   $ff                                         ; $6589: $fe $ff
	or   $bd                                         ; $658b: $f6 $bd
	or   l                                           ; $658d: $b5
	dec  d                                           ; $658e: $15
	adc  l                                           ; $658f: $8d
	ld   h, a                                        ; $6590: $67
	xor  h                                           ; $6591: $ac
	and  e                                           ; $6592: $a3
	ld   b, c                                        ; $6593: $41
	ld   de, $f111                                   ; $6594: $11 $11 $f1
	rra                                              ; $6597: $1f

Call_0da_6598:
	rst  $38                                         ; $6598: $ff
	cp   $ff                                         ; $6599: $fe $ff
	rst  $30                                         ; $659b: $f7
	res  6, e                                        ; $659c: $cb $b3
	ld   d, $9c                                      ; $659e: $16 $9c
	ld   a, c                                        ; $65a0: $79
	sbc  l                                           ; $65a1: $9d
	add  e                                           ; $65a2: $83
	ld   hl, $1c11                                   ; $65a3: $21 $11 $1c
	ld   [hl], c                                     ; $65a6: $71

Call_0da_65a7:
	cp   a                                           ; $65a7: $bf
	rst  $38                                         ; $65a8: $ff
	rst  $38                                         ; $65a9: $ff
	rst  $38                                         ; $65aa: $ff
	cp   d                                           ; $65ab: $ba
	cp   e                                           ; $65ac: $bb
	sub  c                                           ; $65ad: $91
	ld   b, a                                        ; $65ae: $47
	xor  c                                           ; $65af: $a9
	ld   a, c                                        ; $65b0: $79
	cp   h                                           ; $65b1: $bc
	ld   [hl-], a                                    ; $65b2: $32
	ld   de, $9b11                                   ; $65b3: $11 $11 $9b
	dec  d                                           ; $65b6: $15
	rst  $38                                         ; $65b7: $ff

Call_0da_65b8:
	rst  $38                                         ; $65b8: $ff
	rst  $38                                         ; $65b9: $ff
	cp   $cb                                         ; $65ba: $fe $cb
	cp   e                                           ; $65bc: $bb
	ld   [de], a                                     ; $65bd: $12
	adc  b                                           ; $65be: $88
	sbc  b                                           ; $65bf: $98
	adc  d                                           ; $65c0: $8a
	push bc                                          ; $65c1: $c5
	ld   hl, $1811                                   ; $65c2: $21 $11 $18
	pop  bc                                          ; $65c5: $c1
	ld   e, a                                        ; $65c6: $5f
	rst  $38                                         ; $65c7: $ff
	rst  $38                                         ; $65c8: $ff
	rst  $38                                         ; $65c9: $ff
	db   $ec                                         ; $65ca: $ec
	xor  h                                           ; $65cb: $ac
	pop  de                                          ; $65cc: $d1
	jr   @+$7b                                       ; $65cd: $18 $79

	ld   [hl], a                                     ; $65cf: $77
	xor  d                                           ; $65d0: $aa
	ld   d, c                                        ; $65d1: $51
	ld   de, $d511                                   ; $65d2: $11 $11 $d5
	dec  e                                           ; $65d5: $1d
	rst  $38                                         ; $65d6: $ff
	db   $fd                                         ; $65d7: $fd
	rst  $38                                         ; $65d8: $ff
	cp   $d9                                         ; $65d9: $fe $d9
	add  sp, $14                                     ; $65db: $e8 $14
	ld   l, b                                        ; $65dd: $68
	sub  l                                           ; $65de: $95
	ld   l, c                                        ; $65df: $69
	add  e                                           ; $65e0: $83
	ld   de, $ad11                                   ; $65e1: $11 $11 $ad
	inc  d                                           ; $65e4: $14
	rst  $38                                         ; $65e5: $ff
	db   $fc                                         ; $65e6: $fc
	rst  $38                                         ; $65e7: $ff
	rst  $38                                         ; $65e8: $ff
	jp   hl                                          ; $65e9: $e9


	sbc  $32                                         ; $65ea: $de $32
	ld   b, l                                        ; $65ec: $45
	sub  [hl]                                        ; $65ed: $96
	ld   b, h                                        ; $65ee: $44
	ld   d, l                                        ; $65ef: $55
	ld   de, $be11                                   ; $65f0: $11 $11 $be
	ld   [de], a                                     ; $65f3: $12
	rst  $38                                         ; $65f4: $ff
	db   $fd                                         ; $65f5: $fd
	rst  JumpTable                                         ; $65f6: $df
	rst  $38                                         ; $65f7: $ff
	ld   sp, hl                                      ; $65f8: $f9
	adc  $64                                         ; $65f9: $ce $64
	inc  sp                                          ; $65fb: $33
	sub  a                                           ; $65fc: $97
	ld   b, d                                        ; $65fd: $42
	ld   [de], a                                     ; $65fe: $12
	ld   de, $ec11                                   ; $65ff: $11 $11 $ec
	ld   h, $cf                                      ; $6602: $26 $cf
	cp   $ef                                         ; $6604: $fe $ef
	rst  $38                                         ; $6606: $ff
	ld   a, [$97bc]                                  ; $6607: $fa $bc $97
	ld   d, e                                        ; $660a: $53
	ld   d, a                                        ; $660b: $57
	ld   d, c                                        ; $660c: $51
	ld   de, $1311                                   ; $660d: $11 $11 $13
	add  sp, $59                                     ; $6610: $e8 $59
	rst  JumpTable                                         ; $6612: $df
	rst  $28                                         ; $6613: $ef
	cp   $ff                                         ; $6614: $fe $ff
	db   $fd                                         ; $6616: $fd
	res  5, c                                        ; $6617: $cb $a9
	ld   h, l                                        ; $6619: $65
	ld   b, l                                        ; $661a: $45
	ld   sp, $1111                                   ; $661b: $31 $11 $11
	dec  de                                          ; $661e: $1b
	sub  $59                                         ; $661f: $d6 $59
	rst  $28                                         ; $6621: $ef
	rst  $38                                         ; $6622: $ff
	cp   $ff                                         ; $6623: $fe $ff
	rst  $38                                         ; $6625: $ff
	cp   c                                           ; $6626: $b9
	sbc  b                                           ; $6627: $98
	ld   [hl], l                                     ; $6628: $75
	ld   b, e                                        ; $6629: $43
	ld   hl, $1111                                   ; $662a: $21 $11 $11
	ld   l, h                                        ; $662d: $6c
	sub  [hl]                                        ; $662e: $96
	ld   l, b                                        ; $662f: $68
	call $cdff                                       ; $6630: $cd $ff $cd
	rst  $38                                         ; $6633: $ff
	db   $fd                                         ; $6634: $fd
	sbc  d                                           ; $6635: $9a
	xor  d                                           ; $6636: $aa
	sub  a                                           ; $6637: $97
	ld   d, h                                        ; $6638: $54
	ld   hl, $1311                                   ; $6639: $21 $11 $13
	sbc  c                                           ; $663c: $99
	ld   h, l                                        ; $663d: $65
	ld   b, l                                        ; $663e: $45
	ld   d, a                                        ; $663f: $57
	xor  d                                           ; $6640: $aa
	adc  c                                           ; $6641: $89
	adc  $fe                                         ; $6642: $ce $fe
	call c, $decc                                    ; $6644: $dc $cc $de
	jp   z, Jump_0da_5476                            ; $6647: $ca $76 $54

	ld   b, a                                        ; $664a: $47
	ld   h, e                                        ; $664b: $63
	ld   de, $1111                                   ; $664c: $11 $11 $11
	ld   b, h                                        ; $664f: $44
	ld   b, [hl]                                     ; $6650: $46
	sbc  l                                           ; $6651: $9d
	rst  $38                                         ; $6652: $ff
	rst  $38                                         ; $6653: $ff
	rst  $38                                         ; $6654: $ff
	rst  $38                                         ; $6655: $ff
	cp   $ca                                         ; $6656: $fe $ca
	add  a                                           ; $6658: $87
	ld   d, l                                        ; $6659: $55
	ld   d, c                                        ; $665a: $51
	ld   de, $1111                                   ; $665b: $11 $11 $11
	ld   de, $ac24                                   ; $665e: $11 $24 $ac
	rst  $28                                         ; $6661: $ef
	rst  $38                                         ; $6662: $ff
	rst  $38                                         ; $6663: $ff
	rst  $38                                         ; $6664: $ff
	rst  $38                                         ; $6665: $ff
	call c, Call_0da_65b8                            ; $6666: $dc $b8 $65
	ld   d, e                                        ; $6669: $53
	ld   de, $1111                                   ; $666a: $11 $11 $11
	ld   de, $7a13                                   ; $666d: $11 $13 $7a
	adc  $ff                                         ; $6670: $ce $ff
	rst  $38                                         ; $6672: $ff
	rst  $38                                         ; $6673: $ff
	rst  $38                                         ; $6674: $ff
	db   $fd                                         ; $6675: $fd
	cp   d                                           ; $6676: $ba
	halt                                             ; $6677: $76
	ld   d, l                                        ; $6678: $55
	ld   de, $1111                                   ; $6679: $11 $11 $11
	ld   de, $5a12                                   ; $667c: $11 $12 $5a
	call $ffff                                       ; $667f: $cd $ff $ff
	rst  $38                                         ; $6682: $ff
	rst  $38                                         ; $6683: $ff
	cp   $ca                                         ; $6684: $fe $ca
	sub  [hl]                                        ; $6686: $96
	ld   h, [hl]                                     ; $6687: $66
	ld   sp, $1111                                   ; $6688: $31 $11 $11
	ld   de, $4901                                   ; $668b: $11 $01 $49
	cp   l                                           ; $668e: $bd
	rst  $38                                         ; $668f: $ff
	rst  $38                                         ; $6690: $ff
	rst  $38                                         ; $6691: $ff
	rst  $38                                         ; $6692: $ff
	cp   $ca                                         ; $6693: $fe $ca
	add  a                                           ; $6695: $87
	ld   h, [hl]                                     ; $6696: $66
	ld   sp, $1111                                   ; $6697: $31 $11 $11
	ld   de, $3711                                   ; $669a: $11 $11 $37
	xor  l                                           ; $669d: $ad
	rst  $38                                         ; $669e: $ff
	rst  $38                                         ; $669f: $ff
	rst  $38                                         ; $66a0: $ff
	rst  $38                                         ; $66a1: $ff
	db   $fd                                         ; $66a2: $fd
	res  2, a                                        ; $66a3: $cb $97
	ld   h, [hl]                                     ; $66a5: $66
	ld   sp, $1111                                   ; $66a6: $31 $11 $11
	ld   de, $3711                                   ; $66a9: $11 $11 $37
	xor  l                                           ; $66ac: $ad
	rst  $38                                         ; $66ad: $ff
	rst  $38                                         ; $66ae: $ff
	rst  $38                                         ; $66af: $ff
	rst  $38                                         ; $66b0: $ff
	cp   $ca                                         ; $66b1: $fe $ca
	add  a                                           ; $66b3: $87
	ld   h, l                                        ; $66b4: $65
	ld   sp, $1111                                   ; $66b5: $31 $11 $11
	ld   de, $4711                                   ; $66b8: $11 $11 $47
	cp   [hl]                                        ; $66bb: $be
	rst  $38                                         ; $66bc: $ff
	rst  $38                                         ; $66bd: $ff
	rst  $38                                         ; $66be: $ff
	rst  $38                                         ; $66bf: $ff
	db   $fd                                         ; $66c0: $fd
	ret                                              ; $66c1: $c9


	sub  [hl]                                        ; $66c2: $96
	ld   d, l                                        ; $66c3: $55
	ld   hl, $1111                                   ; $66c4: $21 $11 $11
	ld   de, $4812                                   ; $66c7: $11 $12 $48
	adc  $ff                                         ; $66ca: $ce $ff
	rst  $38                                         ; $66cc: $ff
	rst  $38                                         ; $66cd: $ff
	rst  $38                                         ; $66ce: $ff
	db   $ec                                         ; $66cf: $ec
	xor  c                                           ; $66d0: $a9
	halt                                             ; $66d1: $76
	ld   d, h                                        ; $66d2: $54
	ld   de, $1111                                   ; $66d3: $11 $11 $11
	ld   de, $6a13                                   ; $66d6: $11 $13 $6a
	adc  $ff                                         ; $66d9: $ce $ff
	rst  $38                                         ; $66db: $ff
	rst  $38                                         ; $66dc: $ff
	rst  $38                                         ; $66dd: $ff
	call c, Call_0da_6598                            ; $66de: $dc $98 $65
	ld   d, e                                        ; $66e1: $53
	ld   de, $1111                                   ; $66e2: $11 $11 $11
	ld   de, $8b24                                   ; $66e5: $11 $24 $8b
	rst  $28                                         ; $66e8: $ef
	rst  $38                                         ; $66e9: $ff
	rst  $38                                         ; $66ea: $ff
	rst  $38                                         ; $66eb: $ff
	rst  $38                                         ; $66ec: $ff
	jp   c, Jump_0da_5597                            ; $66ed: $da $97 $55

	ld   b, c                                        ; $66f0: $41
	ld   de, $1111                                   ; $66f1: $11 $11 $11
	ld   [de], a                                     ; $66f4: $12
	ld   [hl], $ad                                   ; $66f5: $36 $ad
	rst  $38                                         ; $66f7: $ff
	rst  $38                                         ; $66f8: $ff
	rst  $38                                         ; $66f9: $ff
	rst  $38                                         ; $66fa: $ff
	db   $fd                                         ; $66fb: $fd
	cp   c                                           ; $66fc: $b9
	ld   [hl], l                                     ; $66fd: $75
	ld   d, h                                        ; $66fe: $54
	ld   hl, $1111                                   ; $66ff: $21 $11 $11
	ld   de, $6923                                   ; $6702: $11 $23 $69
	adc  $ff                                         ; $6705: $ce $ff
	rst  $38                                         ; $6707: $ff
	rst  $38                                         ; $6708: $ff
	rst  $38                                         ; $6709: $ff
	db   $eb                                         ; $670a: $eb
	and  a                                           ; $670b: $a7
	ld   d, h                                        ; $670c: $54
	ld   b, d                                        ; $670d: $42
	ld   de, $1111                                   ; $670e: $11 $11 $11
	ld   [de], a                                     ; $6711: $12
	dec  [hl]                                        ; $6712: $35
	adc  h                                           ; $6713: $8c
	rst  $28                                         ; $6714: $ef
	rst  $38                                         ; $6715: $ff
	rst  $38                                         ; $6716: $ff
	rst  $38                                         ; $6717: $ff
	cp   $ca                                         ; $6718: $fe $ca
	ld   [hl], l                                     ; $671a: $75
	ld   b, h                                        ; $671b: $44
	ld   hl, $1111                                   ; $671c: $21 $11 $11
	ld   de, $5823                                   ; $671f: $11 $23 $58
	adc  $ff                                         ; $6722: $ce $ff
	rst  $38                                         ; $6724: $ff
	rst  $38                                         ; $6725: $ff
	rst  $38                                         ; $6726: $ff
	db   $fc                                         ; $6727: $fc
	and  a                                           ; $6728: $a7
	ld   h, h                                        ; $6729: $64
	ld   b, d                                        ; $672a: $42
	ld   de, $1111                                   ; $672b: $11 $11 $11
	ld   [de], a                                     ; $672e: $12
	ld   b, [hl]                                     ; $672f: $46
	sbc  e                                           ; $6730: $9b
	rst  $28                                         ; $6731: $ef
	rst  $38                                         ; $6732: $ff
	rst  $38                                         ; $6733: $ff
	rst  $38                                         ; $6734: $ff
	cp   $c9                                         ; $6735: $fe $c9
	halt                                             ; $6737: $76
	ld   b, e                                        ; $6738: $43
	ld   hl, $1111                                   ; $6739: $21 $11 $11
	ld   de, $6924                                   ; $673c: $11 $24 $69
	adc  $ff                                         ; $673f: $ce $ff
	rst  $38                                         ; $6741: $ff
	rst  $38                                         ; $6742: $ff
	rst  $38                                         ; $6743: $ff
	db   $fc                                         ; $6744: $fc
	and  a                                           ; $6745: $a7
	ld   d, h                                        ; $6746: $54
	ld   sp, $1111                                   ; $6747: $31 $11 $11
	ld   de, $4612                                   ; $674a: $11 $12 $46
	sbc  h                                           ; $674d: $9c
	rst  $38                                         ; $674e: $ff
	rst  $38                                         ; $674f: $ff
	rst  $38                                         ; $6750: $ff
	rst  $38                                         ; $6751: $ff
	cp   $b9                                         ; $6752: $fe $b9
	ld   h, h                                        ; $6754: $64
	ld   [hl-], a                                    ; $6755: $32
	ld   bc, $1111                                   ; $6756: $01 $11 $11
	ld   [de], a                                     ; $6759: $12
	ld   e, b                                        ; $675a: $58
	cp   a                                           ; $675b: $bf
	rst  $38                                         ; $675c: $ff
	rst  $38                                         ; $675d: $ff
	rst  $38                                         ; $675e: $ff
	rst  $38                                         ; $675f: $ff
	add  $11                                         ; $6760: $c6 $11
	ld   de, $1211                                   ; $6762: $11 $11 $12
	dec  [hl]                                        ; $6765: $35
	adc  d                                           ; $6766: $8a
	rst  $28                                         ; $6767: $ef
	rst  $38                                         ; $6768: $ff
	rst  $38                                         ; $6769: $ff
	rst  $38                                         ; $676a: $ff
	rst  $38                                         ; $676b: $ff
	ret                                              ; $676c: $c9


	ld   b, c                                        ; $676d: $41
	ld   de, $1111                                   ; $676e: $11 $11 $11
	ld   e, a                                        ; $6771: $5f
	rst  $38                                         ; $6772: $ff
	rst  $38                                         ; $6773: $ff
	rst  $38                                         ; $6774: $ff
	rst  $38                                         ; $6775: $ff

Call_0da_6776:
	cp   b                                           ; $6776: $b8
	sbc  l                                           ; $6777: $9d
	db   $fd                                         ; $6778: $fd
	and  [hl]                                        ; $6779: $a6
	ld   hl, $1111                                   ; $677a: $21 $11 $11
	ld   de, $ff2f                                   ; $677d: $11 $2f $ff
	rst  $38                                         ; $6780: $ff
	rst  $38                                         ; $6781: $ff
	cp   $83                                         ; $6782: $fe $83
	ld   c, d                                        ; $6784: $4a
	rst  $38                                         ; $6785: $ff
	rst  $10                                         ; $6786: $d7
	ld   [hl-], a                                    ; $6787: $32
	ld   de, $1111                                   ; $6788: $11 $11 $11
	rrca                                             ; $678b: $0f
	rst  $38                                         ; $678c: $ff
	rst  $38                                         ; $678d: $ff
	rst  $38                                         ; $678e: $ff
	db   $fd                                         ; $678f: $fd
	ld   d, c                                        ; $6790: $51
	inc  l                                           ; $6791: $2c
	rst  $38                                         ; $6792: $ff
	rst  $20                                         ; $6793: $e7
	ld   [hl+], a                                    ; $6794: $22
	ld   bc, $1111                                   ; $6795: $01 $11 $11
	ld   e, a                                        ; $6798: $5f
	rst  $38                                         ; $6799: $ff
	cp   $ff                                         ; $679a: $fe $ff
	ld   sp, hl                                      ; $679c: $f9
	ld   bc, $ff2f                                   ; $679d: $01 $2f $ff
	db   $d3                                         ; $67a0: $d3
	ld   [hl+], a                                    ; $67a1: $22
	ld   hl, $1111                                   ; $67a2: $21 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67a5: $cf
	rst  $38                                         ; $67a6: $ff
	ei                                               ; $67a7: $fb
	rst  $38                                         ; $67a8: $ff
	push bc                                          ; $67a9: $c5
	ld   de, $ff7f                                   ; $67aa: $11 $7f $ff
	and  d                                           ; $67ad: $a2
	ld   [de], a                                     ; $67ae: $12
	ld   de, $1111                                   ; $67af: $11 $11 $11
	rst  $38                                         ; $67b2: $ff
	rst  $38                                         ; $67b3: $ff
	db   $fd                                         ; $67b4: $fd
	db   $ed                                         ; $67b5: $ed
	add  c                                           ; $67b6: $81
	ld   [de], a                                     ; $67b7: $12
	rst  $38                                         ; $67b8: $ff

Call_0da_67b9:
	rst  $38                                         ; $67b9: $ff
	ld   [hl], d                                     ; $67ba: $72
	ld   hl, $1111                                   ; $67bb: $21 $11 $11
	inc  d                                           ; $67be: $14
	rst  $38                                         ; $67bf: $ff
	rst  $38                                         ; $67c0: $ff
	call $31c9                                       ; $67c1: $cd $c9 $31
	ld   a, [hl+]                                    ; $67c4: $2a
	rst  $38                                         ; $67c5: $ff
	db   $fc                                         ; $67c6: $fc
	ld   [hl+], a                                    ; $67c7: $22
	ld   de, $1111                                   ; $67c8: $11 $11 $11
	rra                                              ; $67cb: $1f
	rst  $38                                         ; $67cc: $ff
	rst  $38                                         ; $67cd: $ff
	sbc  d                                           ; $67ce: $9a
	sub  l                                           ; $67cf: $95
	ld   hl, $ff7f                                   ; $67d0: $21 $7f $ff
	push af                                          ; $67d3: $f5
	ld   de, $1111                                   ; $67d4: $11 $11 $11
	ld   de, $ffaf                                   ; $67d7: $11 $af $ff
	ld   hl, sp-$45                                  ; $67da: $f8 $bb
	ld   d, d                                        ; $67dc: $52
	inc  d                                           ; $67dd: $14
	rst  $38                                         ; $67de: $ff
	rst  $38                                         ; $67df: $ff
	ld   [hl], c                                     ; $67e0: $71
	ld   [de], a                                     ; $67e1: $12
	ld   de, $1811                                   ; $67e2: $11 $11 $18
	rst  $38                                         ; $67e5: $ff
	rst  $38                                         ; $67e6: $ff
	adc  e                                           ; $67e7: $8b
	sub  [hl]                                        ; $67e8: $96
	ld   hl, $ff6f                                   ; $67e9: $21 $6f $ff
	rst  $30                                         ; $67ec: $f7
	ld   [de], a                                     ; $67ed: $12
	ld   hl, $1111                                   ; $67ee: $21 $11 $11
	cp   a                                           ; $67f1: $bf
	rst  $38                                         ; $67f2: $ff
	add  sp, -$55                                    ; $67f3: $e8 $ab
	ld   d, c                                        ; $67f5: $51
	jr   c, @+$01                                    ; $67f6: $38 $ff

	cp   $42                                         ; $67f8: $fe $42
	ld   [de], a                                     ; $67fa: $12
	ld   de, $1f11                                   ; $67fb: $11 $11 $1f
	rst  $38                                         ; $67fe: $ff
	ei                                               ; $67ff: $fb
	xor  e                                           ; $6800: $ab
	and  l                                           ; $6801: $a5
	dec  d                                           ; $6802: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6803: $cf
	rst  $38                                         ; $6804: $ff
	sub  d                                           ; $6805: $92
	ld   de, $1121                                   ; $6806: $11 $21 $11
	inc  de                                          ; $6809: $13
	rst  $38                                         ; $680a: $ff
	rst  $38                                         ; $680b: $ff
	ld   h, l                                        ; $680c: $65
	ld   a, c                                        ; $680d: $79
	sub  l                                           ; $680e: $95
	ld   a, l                                        ; $680f: $7d
	rst  $38                                         ; $6810: $ff
	rst  $30                                         ; $6811: $f7
	ld   de, $1111                                   ; $6812: $11 $11 $11
	ld   de, $ffff                                   ; $6815: $11 $ff $ff
	or   h                                           ; $6818: $b4
	cp   d                                           ; $6819: $ba
	ld   h, $ae                                      ; $681a: $26 $ae
	rst  $38                                         ; $681c: $ff
	and  $11                                         ; $681d: $e6 $11
	ld   sp, $1111                                   ; $681f: $31 $11 $11
	rst  $38                                         ; $6822: $ff

jr_0da_6823:
	rst  $38                                         ; $6823: $ff
	db   $d3                                         ; $6824: $d3
	ld   e, d                                        ; $6825: $5a
	ld   d, l                                        ; $6826: $55
	cp   l                                           ; $6827: $bd
	rst  $38                                         ; $6828: $ff
	rst  $20                                         ; $6829: $e7
	ld   de, $1111                                   ; $682a: $11 $11 $11
	ld   [de], a                                     ; $682d: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $682e: $cf

jr_0da_682f:
	rst  $38                                         ; $682f: $ff
	push hl                                          ; $6830: $e5
	sub  h                                           ; $6831: $94
	jr   jr_0da_6823                                 ; $6832: $18 $ef

	rst  $38                                         ; $6834: $ff
	rst  ToBoot                                         ; $6835: $c7
	ld   hl, $1111                                   ; $6836: $21 $11 $11
	inc  hl                                          ; $6839: $23
	rst  $28                                         ; $683a: $ef
	rst  $38                                         ; $683b: $ff
	and  $78                                         ; $683c: $e6 $78
	jr   z, jr_0da_682f                              ; $683e: $28 $ef

	ei                                               ; $6840: $fb
	jp   z, $1142                                    ; $6841: $ca $42 $11

	ld   de, $ef19                                   ; $6844: $11 $19 $ef
	rst  $38                                         ; $6847: $ff
	rst  $10                                         ; $6848: $d7
	ld   d, a                                        ; $6849: $57
	ld   a, [hl-]                                    ; $684a: $3a
	cp   [hl]                                        ; $684b: $be
	rst  $38                                         ; $684c: $ff
	or   [hl]                                        ; $684d: $b6
	ld   de, $2511                                   ; $684e: $11 $11 $25
	adc  a                                           ; $6851: $8f
	sbc  $f7                                         ; $6852: $de $f7
	sbc  l                                           ; $6854: $9d
	ld   de, $ffff                                   ; $6855: $11 $ff $ff
	sbc  b                                           ; $6858: $98
	push bc                                          ; $6859: $c5
	ld   de, $5511                                   ; $685a: $11 $11 $55
	xor  [hl]                                        ; $685d: $ae
	db   $dd                                         ; $685e: $dd
	jp   z, $17e7                                    ; $685f: $ca $e7 $17

	cp   a                                           ; $6862: $bf
	cp   $d8                                         ; $6863: $fe $d8
	add  c                                           ; $6865: $81
	ld   de, $192b                                   ; $6866: $11 $2b $19
	adc  $d7                                         ; $6869: $ce $d7
	ei                                               ; $686b: $fb
	ld   d, d                                        ; $686c: $52
	ccf                                              ; $686d: $3f
	db   $fd                                         ; $686e: $fd
	add  l                                           ; $686f: $85
	adc  $11                                         ; $6870: $ce $11
	ld   [de], a                                     ; $6872: $12
	ld   [hl], a                                     ; $6873: $77
	ld   c, h                                        ; $6874: $4c
	xor  c                                           ; $6875: $a9
	ei                                               ; $6876: $fb
	inc  de                                          ; $6877: $13
	ld   l, a                                        ; $6878: $6f
	ld   a, [$aec8]                                  ; $6879: $fa $c8 $ae
	jp   nz, $1811                                   ; $687c: $c2 $11 $18

	sub  l                                           ; $687f: $95
	sbc  a                                           ; $6880: $9f
	and  [hl]                                        ; $6881: $a6
	jp   c, Jump_0da_4fa5                            ; $6882: $da $a5 $4f

	rst  $38                                         ; $6885: $ff
	ld   a, [hl]                                     ; $6886: $7e

Jump_0da_6887:
	db   $e3                                         ; $6887: $e3
	ld   de, $6a16                                   ; $6888: $11 $16 $6a
	xor  l                                           ; $688b: $ad
	and  e                                           ; $688c: $a3
	xor  c                                           ; $688d: $a9
	adc  h                                           ; $688e: $8c
	ld   a, [de]                                     ; $688f: $1a
	rst  $38                                         ; $6890: $ff
	rst  $30                                         ; $6891: $f7
	or   h                                           ; $6892: $b4
	inc  de                                          ; $6893: $13
	inc  d                                           ; $6894: $14
	ld   a, b                                        ; $6895: $78
	or   [hl]                                        ; $6896: $b6

Call_0da_6897:
	add  h                                           ; $6897: $84
	add  hl, sp                                      ; $6898: $39
	rst  $38                                         ; $6899: $ff
	dec  [hl]                                        ; $689a: $35
	rst  $38                                         ; $689b: $ff
	or   $4f                                         ; $689c: $f6 $4f
	sub  l                                           ; $689e: $95
	ld   de, $466c                                   ; $689f: $11 $6c $46
	and  h                                           ; $68a2: $a4
	xor  b                                           ; $68a3: $a8
	sbc  a                                           ; $68a4: $9f
	sub  c                                           ; $68a5: $91
	sbc  [hl]                                        ; $68a6: $9e
	db   $fd                                         ; $68a7: $fd
	adc  e                                           ; $68a8: $8b
	and  d                                           ; $68a9: $a2
	ld   de, $b82b                                   ; $68aa: $11 $2b $b8
	ld   b, h                                        ; $68ad: $44
	db   $ed                                         ; $68ae: $ed
	ld   [hl], e                                     ; $68af: $73
	ld   c, e                                        ; $68b0: $4b
	sbc  $eb                                         ; $68b1: $de $eb
	sub  $69                                         ; $68b3: $d6 $69
	ld   de, $8977                                   ; $68b5: $11 $77 $89
	inc  sp                                          ; $68b8: $33
	or   a                                           ; $68b9: $b7
	cp   a                                           ; $68ba: $bf
	add  c                                           ; $68bb: $81
	ld   l, a                                        ; $68bc: $6f
	push hl                                          ; $68bd: $e5
	cp   $8c                                         ; $68be: $fe $8c
	ld   de, $6978                                   ; $68c0: $11 $78 $69
	sbc  h                                           ; $68c3: $9c
	db   $e4                                         ; $68c4: $e4
	ld   h, [hl]                                     ; $68c5: $66
	ld   a, e                                        ; $68c6: $7b
	ld   l, a                                        ; $68c7: $6f
	or   $3a                                         ; $68c8: $f6 $3a
	or   [hl]                                        ; $68ca: $b6
	ld   de, $855a                                   ; $68cb: $11 $5a $85
	ld   d, a                                        ; $68ce: $57
	db   $dd                                         ; $68cf: $dd
	ld   h, h                                        ; $68d0: $64
	cp   h                                           ; $68d1: $bc
	sbc  h                                           ; $68d2: $9c
	reti                                             ; $68d3: $d9


	xor  e                                           ; $68d4: $ab
	ld   b, a                                        ; $68d5: $47
	ld   de, $c95a                                   ; $68d6: $11 $5a $c9
	sbc  c                                           ; $68d9: $99
	ld   h, l                                        ; $68da: $65
	ld   a, l                                        ; $68db: $7d
	push bc                                          ; $68dc: $c5
	adc  a                                           ; $68dd: $8f
	rst  ToBoot                                         ; $68de: $c7
	add  [hl]                                        ; $68df: $86
	ld   b, d                                        ; $68e0: $42
	inc  de                                          ; $68e1: $13
	call z, Call_0da_5795                            ; $68e2: $cc $95 $57
	ld   h, a                                        ; $68e5: $67
	sbc  a                                           ; $68e6: $9f
	and  $99                                         ; $68e7: $e6 $99
	adc  e                                           ; $68e9: $8b
	and  d                                           ; $68ea: $a2
	ld   [hl], e                                     ; $68eb: $73
	rla                                              ; $68ec: $17
	cp   e                                           ; $68ed: $bb
	ld   [hl], h                                     ; $68ee: $74
	inc  a                                           ; $68ef: $3c
	db   $f4                                         ; $68f0: $f4
	cp   h                                           ; $68f1: $bc
	ld   c, l                                        ; $68f2: $4d
	and  $b9                                         ; $68f3: $e6 $b9
	sbc  e                                           ; $68f5: $9b
	ld   de, $fc8a                                   ; $68f6: $11 $8a $fc
	daa                                              ; $68f9: $27
	rst  ToBoot                                         ; $68fa: $c7
	ld   c, c                                        ; $68fb: $49
	or   a                                           ; $68fc: $b7
	xor  d                                           ; $68fd: $aa
	sbc  [hl]                                        ; $68fe: $9e
	sub  $71                                         ; $68ff: $d6 $71
	rla                                              ; $6901: $17
	xor  h                                           ; $6902: $ac
	add  l                                           ; $6903: $85
	sbc  l                                           ; $6904: $9d
	dec  [hl]                                        ; $6905: $35
	db   $f4                                         ; $6906: $f4
	xor  a                                           ; $6907: $af
	ld   l, d                                        ; $6908: $6a
	rst  JumpTable                                         ; $6909: $df
	ld   [hl], c                                     ; $690a: $71
	ld   [de], a                                     ; $690b: $12
	ld   h, [hl]                                     ; $690c: $66
	xor  h                                           ; $690d: $ac
	halt                                             ; $690e: $76
	and  d                                           ; $690f: $a2
	ccf                                              ; $6910: $3f
	or   h                                           ; $6911: $b4
	call z, $a8a8                                    ; $6912: $cc $a8 $a8
	ld   h, h                                        ; $6915: $64
	add  hl, sp                                      ; $6916: $39
	ld   [hl], a                                     ; $6917: $77
	adc  c                                           ; $6918: $89
	sbc  c                                           ; $6919: $99
	ld   [hl], l                                     ; $691a: $75
	adc  b                                           ; $691b: $88
	cp   c                                           ; $691c: $b9
	cp   h                                           ; $691d: $bc
	sub  [hl]                                        ; $691e: $96
	sbc  d                                           ; $691f: $9a
	ld   b, a                                        ; $6920: $47
	ld   c, b                                        ; $6921: $48
	ld   [hl], a                                     ; $6922: $77
	or   a                                           ; $6923: $b7
	ret  z                                           ; $6924: $c8

	ld   hl, $aeb9                                   ; $6925: $21 $b9 $ae
	xor  h                                           ; $6928: $ac
	add  [hl]                                        ; $6929: $86
	sbc  b                                           ; $692a: $98
	inc  [hl]                                        ; $692b: $34
	halt                                             ; $692c: $76
	adc  h                                           ; $692d: $8c
	sub  [hl]                                        ; $692e: $96
	sbc  b                                           ; $692f: $98
	ld   d, e                                        ; $6930: $53
	xor  e                                           ; $6931: $ab
	call z, $b567                                    ; $6932: $cc $67 $b5
	ld   l, e                                        ; $6935: $6b
	ld   l, b                                        ; $6936: $68
	sub  a                                           ; $6937: $97
	ld   a, c                                        ; $6938: $79
	sub  [hl]                                        ; $6939: $96
	adc  b                                           ; $693a: $88
	ld   h, a                                        ; $693b: $67
	and  h                                           ; $693c: $a4
	sbc  e                                           ; $693d: $9b
	ld   e, e                                        ; $693e: $5b
	push bc                                          ; $693f: $c5
	ld   a, b                                        ; $6940: $78
	ld   e, c                                        ; $6941: $59
	add  a                                           ; $6942: $87
	and  [hl]                                        ; $6943: $a6
	sub  a                                           ; $6944: $97
	ld   e, c                                        ; $6945: $59
	add  h                                           ; $6946: $84
	ld   a, c                                        ; $6947: $79
	ld   l, d                                        ; $6948: $6a
	sbc  b                                           ; $6949: $98
	sub  a                                           ; $694a: $97
	ld   l, b                                        ; $694b: $68
	sub  [hl]                                        ; $694c: $96
	ld   h, a                                        ; $694d: $67
	ld   a, b                                        ; $694e: $78
	sub  a                                           ; $694f: $97
	add  a                                           ; $6950: $87
	ld   [hl], a                                     ; $6951: $77
	ld   d, a                                        ; $6952: $57
	ld   l, d                                        ; $6953: $6a
	ld   a, c                                        ; $6954: $79
	add  a                                           ; $6955: $87
	add  a                                           ; $6956: $87
	xor  b                                           ; $6957: $a8
	adc  c                                           ; $6958: $89
	sbc  d                                           ; $6959: $9a
	adc  c                                           ; $695a: $89
	ld   a, c                                        ; $695b: $79
	xor  c                                           ; $695c: $a9
	sbc  b                                           ; $695d: $98
	sub  a                                           ; $695e: $97
	ld   [hl], a                                     ; $695f: $77
	adc  d                                           ; $6960: $8a
	sub  a                                           ; $6961: $97
	adc  c                                           ; $6962: $89
	sbc  c                                           ; $6963: $99
	adc  b                                           ; $6964: $88
	sbc  c                                           ; $6965: $99
	adc  c                                           ; $6966: $89
	adc  c                                           ; $6967: $89
	sub  a                                           ; $6968: $97
	sbc  b                                           ; $6969: $98
	sbc  c                                           ; $696a: $99
	sbc  b                                           ; $696b: $98
	adc  b                                           ; $696c: $88
	sbc  d                                           ; $696d: $9a
	adc  b                                           ; $696e: $88
	sbc  d                                           ; $696f: $9a
	adc  c                                           ; $6970: $89
	sbc  b                                           ; $6971: $98
	adc  c                                           ; $6972: $89
	sbc  b                                           ; $6973: $98
	adc  b                                           ; $6974: $88
	sbc  c                                           ; $6975: $99
	sbc  d                                           ; $6976: $9a
	adc  c                                           ; $6977: $89
	xor  b                                           ; $6978: $a8
	adc  c                                           ; $6979: $89
	sbc  c                                           ; $697a: $99
	add  a                                           ; $697b: $87
	adc  b                                           ; $697c: $88
	adc  c                                           ; $697d: $89
	adc  c                                           ; $697e: $89
	sbc  c                                           ; $697f: $99
	ld   a, c                                        ; $6980: $79
	adc  b                                           ; $6981: $88
	adc  b                                           ; $6982: $88
	sbc  b                                           ; $6983: $98
	adc  c                                           ; $6984: $89
	sbc  c                                           ; $6985: $99
	adc  b                                           ; $6986: $88
	adc  b                                           ; $6987: $88
	sbc  b                                           ; $6988: $98
	adc  c                                           ; $6989: $89
	adc  c                                           ; $698a: $89
	ld   [hl], a                                     ; $698b: $77
	adc  b                                           ; $698c: $88
	adc  b                                           ; $698d: $88
	add  a                                           ; $698e: $87
	sbc  b                                           ; $698f: $98
	sbc  b                                           ; $6990: $98
	ld   a, b                                        ; $6991: $78
	sbc  b                                           ; $6992: $98
	ld   a, b                                        ; $6993: $78
	ld   a, b                                        ; $6994: $78
	adc  b                                           ; $6995: $88
	ld   [hl], a                                     ; $6996: $77
	sub  a                                           ; $6997: $97
	ld   a, b                                        ; $6998: $78
	add  a                                           ; $6999: $87
	adc  b                                           ; $699a: $88
	adc  c                                           ; $699b: $89
	ld   a, b                                        ; $699c: $78
	add  a                                           ; $699d: $87
	ld   a, b                                        ; $699e: $78
	ld   a, b                                        ; $699f: $78
	adc  b                                           ; $69a0: $88
	ld   [hl], a                                     ; $69a1: $77
	add  a                                           ; $69a2: $87
	adc  b                                           ; $69a3: $88
	ld   [hl], a                                     ; $69a4: $77
	adc  b                                           ; $69a5: $88
	add  a                                           ; $69a6: $87
	ld   a, b                                        ; $69a7: $78
	add  a                                           ; $69a8: $87
	ld   [hl], a                                     ; $69a9: $77
	adc  b                                           ; $69aa: $88
	ld   [hl], a                                     ; $69ab: $77
	ld   a, b                                        ; $69ac: $78
	add  a                                           ; $69ad: $87
	ld   a, b                                        ; $69ae: $78
	ld   [hl], a                                     ; $69af: $77
	add  a                                           ; $69b0: $87
	ld   a, b                                        ; $69b1: $78
	add  a                                           ; $69b2: $87
	adc  b                                           ; $69b3: $88
	ld   a, b                                        ; $69b4: $78
	adc  b                                           ; $69b5: $88
	add  a                                           ; $69b6: $87
	ld   a, b                                        ; $69b7: $78
	ld   [hl], a                                     ; $69b8: $77
	adc  b                                           ; $69b9: $88
	ld   a, b                                        ; $69ba: $78
	adc  b                                           ; $69bb: $88
	ld   a, b                                        ; $69bc: $78
	adc  b                                           ; $69bd: $88
	ld   a, b                                        ; $69be: $78
	adc  b                                           ; $69bf: $88
	add  a                                           ; $69c0: $87
	adc  b                                           ; $69c1: $88
	adc  b                                           ; $69c2: $88
	adc  b                                           ; $69c3: $88
	add  a                                           ; $69c4: $87
	adc  b                                           ; $69c5: $88
	ld   a, b                                        ; $69c6: $78
	adc  b                                           ; $69c7: $88
	add  a                                           ; $69c8: $87
	adc  b                                           ; $69c9: $88
	adc  b                                           ; $69ca: $88
	adc  b                                           ; $69cb: $88
	add  a                                           ; $69cc: $87
	adc  b                                           ; $69cd: $88
	adc  b                                           ; $69ce: $88
	adc  b                                           ; $69cf: $88
	adc  b                                           ; $69d0: $88
	adc  b                                           ; $69d1: $88
	ld   [hl], a                                     ; $69d2: $77
	adc  b                                           ; $69d3: $88
	adc  b                                           ; $69d4: $88
	adc  b                                           ; $69d5: $88
	adc  b                                           ; $69d6: $88
	ld   a, b                                        ; $69d7: $78
	adc  b                                           ; $69d8: $88
	adc  b                                           ; $69d9: $88

Jump_0da_69da:
	adc  b                                           ; $69da: $88
	sbc  b                                           ; $69db: $98
	ld   a, b                                        ; $69dc: $78
	adc  b                                           ; $69dd: $88
	adc  b                                           ; $69de: $88
	adc  b                                           ; $69df: $88
	adc  b                                           ; $69e0: $88
	adc  b                                           ; $69e1: $88
	adc  b                                           ; $69e2: $88
	adc  b                                           ; $69e3: $88
	ld   [hl], a                                     ; $69e4: $77
	adc  b                                           ; $69e5: $88
	adc  b                                           ; $69e6: $88
	add  a                                           ; $69e7: $87
	adc  b                                           ; $69e8: $88
	adc  b                                           ; $69e9: $88
	adc  b                                           ; $69ea: $88
	adc  b                                           ; $69eb: $88
	adc  b                                           ; $69ec: $88
	add  a                                           ; $69ed: $87
	adc  b                                           ; $69ee: $88
	adc  b                                           ; $69ef: $88
	adc  b                                           ; $69f0: $88
	adc  b                                           ; $69f1: $88
	adc  b                                           ; $69f2: $88
	adc  b                                           ; $69f3: $88
	adc  b                                           ; $69f4: $88
	adc  b                                           ; $69f5: $88
	adc  b                                           ; $69f6: $88
	adc  b                                           ; $69f7: $88
	adc  b                                           ; $69f8: $88
	add  a                                           ; $69f9: $87
	adc  b                                           ; $69fa: $88
	adc  b                                           ; $69fb: $88
	adc  b                                           ; $69fc: $88
	adc  b                                           ; $69fd: $88
	adc  b                                           ; $69fe: $88
	adc  b                                           ; $69ff: $88
	adc  b                                           ; $6a00: $88
	adc  b                                           ; $6a01: $88
	adc  b                                           ; $6a02: $88
	adc  c                                           ; $6a03: $89
	add  a                                           ; $6a04: $87
	adc  b                                           ; $6a05: $88
	ld   a, b                                        ; $6a06: $78
	adc  b                                           ; $6a07: $88
	adc  b                                           ; $6a08: $88
	adc  b                                           ; $6a09: $88
	add  a                                           ; $6a0a: $87
	adc  b                                           ; $6a0b: $88
	adc  b                                           ; $6a0c: $88
	adc  b                                           ; $6a0d: $88
	adc  b                                           ; $6a0e: $88
	ld   a, b                                        ; $6a0f: $78
	add  a                                           ; $6a10: $87
	adc  b                                           ; $6a11: $88
	adc  b                                           ; $6a12: $88
	adc  b                                           ; $6a13: $88
	adc  b                                           ; $6a14: $88
	add  a                                           ; $6a15: $87
	adc  b                                           ; $6a16: $88
	adc  b                                           ; $6a17: $88
	sbc  b                                           ; $6a18: $98
	adc  b                                           ; $6a19: $88
	ld   a, b                                        ; $6a1a: $78
	add  a                                           ; $6a1b: $87
	adc  c                                           ; $6a1c: $89
	adc  b                                           ; $6a1d: $88
	adc  b                                           ; $6a1e: $88
	sbc  b                                           ; $6a1f: $98
	adc  b                                           ; $6a20: $88
	adc  b                                           ; $6a21: $88
	adc  b                                           ; $6a22: $88
	adc  b                                           ; $6a23: $88
	adc  b                                           ; $6a24: $88
	adc  c                                           ; $6a25: $89
	adc  b                                           ; $6a26: $88
	adc  b                                           ; $6a27: $88
	adc  b                                           ; $6a28: $88
	adc  b                                           ; $6a29: $88
	adc  b                                           ; $6a2a: $88
	adc  c                                           ; $6a2b: $89
	add  a                                           ; $6a2c: $87
	adc  b                                           ; $6a2d: $88
	sbc  b                                           ; $6a2e: $98
	ld   a, b                                        ; $6a2f: $78
	adc  b                                           ; $6a30: $88
	adc  b                                           ; $6a31: $88
	sbc  b                                           ; $6a32: $98
	adc  b                                           ; $6a33: $88
	adc  b                                           ; $6a34: $88
	sbc  c                                           ; $6a35: $99
	adc  b                                           ; $6a36: $88
	adc  b                                           ; $6a37: $88
	adc  b                                           ; $6a38: $88
	adc  b                                           ; $6a39: $88
	adc  b                                           ; $6a3a: $88
	adc  b                                           ; $6a3b: $88
	adc  b                                           ; $6a3c: $88
	adc  b                                           ; $6a3d: $88
	adc  b                                           ; $6a3e: $88
	adc  b                                           ; $6a3f: $88
	adc  b                                           ; $6a40: $88
	adc  b                                           ; $6a41: $88
	adc  b                                           ; $6a42: $88
	sbc  c                                           ; $6a43: $99
	adc  b                                           ; $6a44: $88
	adc  b                                           ; $6a45: $88
	sbc  b                                           ; $6a46: $98
	adc  b                                           ; $6a47: $88
	adc  b                                           ; $6a48: $88
	adc  b                                           ; $6a49: $88
	adc  c                                           ; $6a4a: $89
	adc  b                                           ; $6a4b: $88
	adc  b                                           ; $6a4c: $88
	sbc  b                                           ; $6a4d: $98
	adc  b                                           ; $6a4e: $88
	adc  b                                           ; $6a4f: $88
	sbc  b                                           ; $6a50: $98
	adc  b                                           ; $6a51: $88
	adc  b                                           ; $6a52: $88
	adc  b                                           ; $6a53: $88
	adc  b                                           ; $6a54: $88
	sbc  b                                           ; $6a55: $98
	adc  b                                           ; $6a56: $88
	adc  c                                           ; $6a57: $89
	adc  b                                           ; $6a58: $88
	adc  b                                           ; $6a59: $88
	adc  b                                           ; $6a5a: $88
	adc  b                                           ; $6a5b: $88
	adc  b                                           ; $6a5c: $88
	sbc  b                                           ; $6a5d: $98
	adc  c                                           ; $6a5e: $89
	sbc  b                                           ; $6a5f: $98
	adc  b                                           ; $6a60: $88
	adc  b                                           ; $6a61: $88
	adc  c                                           ; $6a62: $89
	adc  b                                           ; $6a63: $88
	adc  b                                           ; $6a64: $88
	adc  b                                           ; $6a65: $88
	adc  c                                           ; $6a66: $89
	adc  b                                           ; $6a67: $88
	sbc  b                                           ; $6a68: $98
	adc  b                                           ; $6a69: $88
	adc  b                                           ; $6a6a: $88
	adc  b                                           ; $6a6b: $88
	adc  b                                           ; $6a6c: $88
	adc  b                                           ; $6a6d: $88
	adc  b                                           ; $6a6e: $88
	adc  b                                           ; $6a6f: $88
	adc  b                                           ; $6a70: $88
	adc  b                                           ; $6a71: $88
	sbc  c                                           ; $6a72: $99
	adc  b                                           ; $6a73: $88
	adc  b                                           ; $6a74: $88
	adc  c                                           ; $6a75: $89
	adc  b                                           ; $6a76: $88
	sbc  b                                           ; $6a77: $98
	adc  b                                           ; $6a78: $88
	adc  c                                           ; $6a79: $89
	adc  b                                           ; $6a7a: $88
	adc  b                                           ; $6a7b: $88
	adc  c                                           ; $6a7c: $89
	adc  b                                           ; $6a7d: $88
	sbc  b                                           ; $6a7e: $98
	adc  b                                           ; $6a7f: $88
	adc  b                                           ; $6a80: $88
	sbc  b                                           ; $6a81: $98
	adc  c                                           ; $6a82: $89
	adc  b                                           ; $6a83: $88
	adc  c                                           ; $6a84: $89
	adc  b                                           ; $6a85: $88
	sbc  b                                           ; $6a86: $98
	adc  b                                           ; $6a87: $88
	adc  b                                           ; $6a88: $88
	adc  c                                           ; $6a89: $89
	adc  b                                           ; $6a8a: $88
	adc  b                                           ; $6a8b: $88
	sbc  b                                           ; $6a8c: $98
	adc  b                                           ; $6a8d: $88
	add  a                                           ; $6a8e: $87
	adc  b                                           ; $6a8f: $88
	add  a                                           ; $6a90: $87
	adc  c                                           ; $6a91: $89
	adc  b                                           ; $6a92: $88
	add  a                                           ; $6a93: $87
	sbc  b                                           ; $6a94: $98
	adc  b                                           ; $6a95: $88
	adc  b                                           ; $6a96: $88
	adc  c                                           ; $6a97: $89
	adc  b                                           ; $6a98: $88
	adc  b                                           ; $6a99: $88
	adc  b                                           ; $6a9a: $88
	adc  b                                           ; $6a9b: $88
	adc  b                                           ; $6a9c: $88
	adc  b                                           ; $6a9d: $88
	adc  b                                           ; $6a9e: $88
	adc  c                                           ; $6a9f: $89
	add  a                                           ; $6aa0: $87
	adc  b                                           ; $6aa1: $88
	adc  b                                           ; $6aa2: $88
	adc  b                                           ; $6aa3: $88
	adc  b                                           ; $6aa4: $88
	adc  b                                           ; $6aa5: $88
	adc  c                                           ; $6aa6: $89
	adc  b                                           ; $6aa7: $88
	add  a                                           ; $6aa8: $87
	adc  b                                           ; $6aa9: $88
	adc  c                                           ; $6aaa: $89
	adc  b                                           ; $6aab: $88
	adc  b                                           ; $6aac: $88
	adc  b                                           ; $6aad: $88
	sbc  b                                           ; $6aae: $98
	adc  b                                           ; $6aaf: $88
	sub  a                                           ; $6ab0: $97
	ld   a, c                                        ; $6ab1: $79
	adc  b                                           ; $6ab2: $88
	adc  b                                           ; $6ab3: $88
	adc  b                                           ; $6ab4: $88
	adc  b                                           ; $6ab5: $88
	adc  b                                           ; $6ab6: $88
	adc  b                                           ; $6ab7: $88
	adc  b                                           ; $6ab8: $88
	adc  b                                           ; $6ab9: $88
	adc  b                                           ; $6aba: $88
	add  a                                           ; $6abb: $87
	sbc  b                                           ; $6abc: $98
	adc  b                                           ; $6abd: $88
	adc  b                                           ; $6abe: $88
	sbc  b                                           ; $6abf: $98
	ld   a, b                                        ; $6ac0: $78
	adc  b                                           ; $6ac1: $88
	adc  b                                           ; $6ac2: $88
	adc  b                                           ; $6ac3: $88
	adc  b                                           ; $6ac4: $88
	adc  c                                           ; $6ac5: $89
	ld   [hl], a                                     ; $6ac6: $77
	add  a                                           ; $6ac7: $87
	sbc  c                                           ; $6ac8: $99
	adc  c                                           ; $6ac9: $89
	sbc  b                                           ; $6aca: $98
	add  a                                           ; $6acb: $87
	ld   a, b                                        ; $6acc: $78
	adc  c                                           ; $6acd: $89
	ld   a, b                                        ; $6ace: $78
	sbc  b                                           ; $6acf: $98
	ld   [hl], a                                     ; $6ad0: $77
	adc  b                                           ; $6ad1: $88
	ld   a, b                                        ; $6ad2: $78
	sbc  c                                           ; $6ad3: $99
	adc  b                                           ; $6ad4: $88
	adc  c                                           ; $6ad5: $89
	ld   a, b                                        ; $6ad6: $78
	adc  c                                           ; $6ad7: $89
	add  a                                           ; $6ad8: $87
	adc  b                                           ; $6ad9: $88
	sbc  b                                           ; $6ada: $98
	ld   a, b                                        ; $6adb: $78
	add  a                                           ; $6adc: $87
	ld   a, c                                        ; $6add: $79
	adc  c                                           ; $6ade: $89
	adc  b                                           ; $6adf: $88
	sbc  b                                           ; $6ae0: $98
	add  a                                           ; $6ae1: $87
	adc  c                                           ; $6ae2: $89
	adc  b                                           ; $6ae3: $88
	adc  b                                           ; $6ae4: $88
	add  a                                           ; $6ae5: $87
	adc  b                                           ; $6ae6: $88
	adc  b                                           ; $6ae7: $88
	adc  b                                           ; $6ae8: $88
	ld   a, b                                        ; $6ae9: $78
	adc  b                                           ; $6aea: $88
	adc  b                                           ; $6aeb: $88
	adc  c                                           ; $6aec: $89
	adc  b                                           ; $6aed: $88
	sbc  b                                           ; $6aee: $98
	adc  b                                           ; $6aef: $88
	adc  c                                           ; $6af0: $89
	adc  b                                           ; $6af1: $88
	adc  b                                           ; $6af2: $88
	sub  a                                           ; $6af3: $97
	ld   a, b                                        ; $6af4: $78
	adc  b                                           ; $6af5: $88
	adc  b                                           ; $6af6: $88
	add  a                                           ; $6af7: $87
	add  a                                           ; $6af8: $87
	ld   a, b                                        ; $6af9: $78
	adc  b                                           ; $6afa: $88
	adc  b                                           ; $6afb: $88
	adc  b                                           ; $6afc: $88
	adc  b                                           ; $6afd: $88
	sbc  b                                           ; $6afe: $98
	ld   a, b                                        ; $6aff: $78
	adc  b                                           ; $6b00: $88
	adc  b                                           ; $6b01: $88
	adc  b                                           ; $6b02: $88
	sbc  b                                           ; $6b03: $98
	ld   a, b                                        ; $6b04: $78
	adc  b                                           ; $6b05: $88
	adc  b                                           ; $6b06: $88
	sbc  c                                           ; $6b07: $99
	adc  b                                           ; $6b08: $88
	adc  b                                           ; $6b09: $88
	ld   [hl], a                                     ; $6b0a: $77
	sbc  b                                           ; $6b0b: $98
	adc  b                                           ; $6b0c: $88
	ld   a, b                                        ; $6b0d: $78
	sbc  b                                           ; $6b0e: $98
	add  a                                           ; $6b0f: $87
	adc  c                                           ; $6b10: $89
	adc  b                                           ; $6b11: $88
	adc  b                                           ; $6b12: $88
	sbc  b                                           ; $6b13: $98
	ld   [hl], a                                     ; $6b14: $77
	adc  c                                           ; $6b15: $89
	adc  b                                           ; $6b16: $88
	sbc  b                                           ; $6b17: $98
	adc  b                                           ; $6b18: $88
	sbc  b                                           ; $6b19: $98
	adc  c                                           ; $6b1a: $89
	adc  b                                           ; $6b1b: $88
	adc  b                                           ; $6b1c: $88
	adc  b                                           ; $6b1d: $88
	adc  b                                           ; $6b1e: $88
	adc  b                                           ; $6b1f: $88
	sbc  b                                           ; $6b20: $98
	adc  c                                           ; $6b21: $89
	sbc  b                                           ; $6b22: $98
	ld   a, b                                        ; $6b23: $78
	adc  b                                           ; $6b24: $88
	adc  b                                           ; $6b25: $88
	sbc  c                                           ; $6b26: $99
	sub  a                                           ; $6b27: $97
	ld   [hl], a                                     ; $6b28: $77
	adc  c                                           ; $6b29: $89
	adc  c                                           ; $6b2a: $89
	adc  b                                           ; $6b2b: $88
	ld   a, b                                        ; $6b2c: $78
	adc  b                                           ; $6b2d: $88
	adc  c                                           ; $6b2e: $89
	sbc  b                                           ; $6b2f: $98
	sbc  b                                           ; $6b30: $98
	ld   a, b                                        ; $6b31: $78
	adc  b                                           ; $6b32: $88
	add  a                                           ; $6b33: $87
	adc  c                                           ; $6b34: $89
	ld   a, b                                        ; $6b35: $78
	adc  b                                           ; $6b36: $88
	sbc  c                                           ; $6b37: $99
	ld   [hl], a                                     ; $6b38: $77
	sbc  b                                           ; $6b39: $98
	sbc  b                                           ; $6b3a: $98
	adc  c                                           ; $6b3b: $89
	adc  b                                           ; $6b3c: $88
	ld   [hl], a                                     ; $6b3d: $77
	adc  b                                           ; $6b3e: $88
	add  a                                           ; $6b3f: $87
	adc  b                                           ; $6b40: $88
	adc  b                                           ; $6b41: $88
	adc  b                                           ; $6b42: $88
	adc  b                                           ; $6b43: $88
	adc  b                                           ; $6b44: $88
	adc  b                                           ; $6b45: $88
	sbc  b                                           ; $6b46: $98
	adc  b                                           ; $6b47: $88
	adc  c                                           ; $6b48: $89
	adc  c                                           ; $6b49: $89
	sbc  b                                           ; $6b4a: $98
	adc  c                                           ; $6b4b: $89
	adc  b                                           ; $6b4c: $88
	sbc  b                                           ; $6b4d: $98
	add  a                                           ; $6b4e: $87
	adc  b                                           ; $6b4f: $88
	add  a                                           ; $6b50: $87
	adc  b                                           ; $6b51: $88
	adc  c                                           ; $6b52: $89
	adc  b                                           ; $6b53: $88
	adc  c                                           ; $6b54: $89
	adc  b                                           ; $6b55: $88
	adc  b                                           ; $6b56: $88
	adc  b                                           ; $6b57: $88
	adc  b                                           ; $6b58: $88
	add  a                                           ; $6b59: $87
	adc  b                                           ; $6b5a: $88
	add  a                                           ; $6b5b: $87
	adc  c                                           ; $6b5c: $89
	adc  b                                           ; $6b5d: $88
	ld   a, b                                        ; $6b5e: $78
	sbc  b                                           ; $6b5f: $98
	ld   a, b                                        ; $6b60: $78
	adc  b                                           ; $6b61: $88
	adc  b                                           ; $6b62: $88
	sbc  c                                           ; $6b63: $99
	adc  b                                           ; $6b64: $88
	adc  c                                           ; $6b65: $89
	sbc  b                                           ; $6b66: $98
	ld   a, b                                        ; $6b67: $78
	adc  b                                           ; $6b68: $88
	ld   a, b                                        ; $6b69: $78
	adc  b                                           ; $6b6a: $88
	ld   [hl], a                                     ; $6b6b: $77
	add  a                                           ; $6b6c: $87
	ld   [hl], a                                     ; $6b6d: $77
	adc  b                                           ; $6b6e: $88
	adc  b                                           ; $6b6f: $88
	sub  a                                           ; $6b70: $97
	sbc  b                                           ; $6b71: $98
	ld   a, b                                        ; $6b72: $78
	sbc  b                                           ; $6b73: $98
	adc  c                                           ; $6b74: $89
	sbc  b                                           ; $6b75: $98
	sbc  c                                           ; $6b76: $99
	adc  c                                           ; $6b77: $89
	add  a                                           ; $6b78: $87
	add  a                                           ; $6b79: $87
	adc  b                                           ; $6b7a: $88
	ld   [hl], a                                     ; $6b7b: $77
	add  a                                           ; $6b7c: $87
	ld   [hl], a                                     ; $6b7d: $77
	ld   [hl], a                                     ; $6b7e: $77
	ld   [hl], a                                     ; $6b7f: $77
	ld   [hl], a                                     ; $6b80: $77
	adc  b                                           ; $6b81: $88
	adc  c                                           ; $6b82: $89
	sbc  c                                           ; $6b83: $99
	sbc  d                                           ; $6b84: $9a
	xor  c                                           ; $6b85: $a9
	sbc  d                                           ; $6b86: $9a
	xor  d                                           ; $6b87: $aa
	xor  e                                           ; $6b88: $ab
	sbc  d                                           ; $6b89: $9a
	xor  b                                           ; $6b8a: $a8
	halt                                             ; $6b8b: $76
	ld   h, l                                        ; $6b8c: $65
	ld   d, h                                        ; $6b8d: $54
	ld   sp, $2411                                   ; $6b8e: $31 $11 $24
	ld   b, [hl]                                     ; $6b91: $46
	ld   a, b                                        ; $6b92: $78
	xor  h                                           ; $6b93: $ac
	xor  $ff                                         ; $6b94: $ee $ff
	rst  $38                                         ; $6b96: $ff
	rst  $38                                         ; $6b97: $ff
	db   $fc                                         ; $6b98: $fc
	cp   d                                           ; $6b99: $ba
	add  [hl]                                        ; $6b9a: $86
	ld   sp, $1111                                   ; $6b9b: $31 $11 $11
	ld   de, $1311                                   ; $6b9e: $11 $11 $13
	adc  h                                           ; $6ba1: $8c
	rst  JumpTable                                         ; $6ba2: $df
	rst  $38                                         ; $6ba3: $ff
	rst  $38                                         ; $6ba4: $ff
	rst  $38                                         ; $6ba5: $ff
	rst  $38                                         ; $6ba6: $ff
	db   $fc                                         ; $6ba7: $fc
	add  a                                           ; $6ba8: $87
	ld   h, h                                        ; $6ba9: $64
	ld   hl, $1111                                   ; $6baa: $21 $11 $11
	ld   de, $6622                                   ; $6bad: $11 $22 $66
	ld   a, l                                        ; $6bb0: $7d
	rst  $38                                         ; $6bb1: $ff
	rst  $38                                         ; $6bb2: $ff
	rst  $38                                         ; $6bb3: $ff
	rst  $38                                         ; $6bb4: $ff
	cp   $da                                         ; $6bb5: $fe $da
	and  l                                           ; $6bb7: $a5
	inc  sp                                          ; $6bb8: $33
	ld   sp, $1111                                   ; $6bb9: $31 $11 $11
	ld   de, $4613                                   ; $6bbc: $11 $13 $46
	xor  c                                           ; $6bbf: $a9
	rst  $28                                         ; $6bc0: $ef
	rst  $38                                         ; $6bc1: $ff
	rst  $38                                         ; $6bc2: $ff
	rst  $38                                         ; $6bc3: $ff
	rst  $38                                         ; $6bc4: $ff
	db   $eb                                         ; $6bc5: $eb
	sub  a                                           ; $6bc6: $97
	ld   h, d                                        ; $6bc7: $62
	ld   hl, $1111                                   ; $6bc8: $21 $11 $11
	ld   de, $4611                                   ; $6bcb: $11 $11 $46
	adc  d                                           ; $6bce: $8a
	rst  $28                                         ; $6bcf: $ef
	rst  $38                                         ; $6bd0: $ff
	rst  $38                                         ; $6bd1: $ff
	rst  $38                                         ; $6bd2: $ff
	rst  $38                                         ; $6bd3: $ff
	ei                                               ; $6bd4: $fb
	sub  a                                           ; $6bd5: $97
	ld   b, e                                        ; $6bd6: $43
	ld   de, $1111                                   ; $6bd7: $11 $11 $11
	ld   de, $3611                                   ; $6bda: $11 $11 $36
	adc  e                                           ; $6bdd: $8b
	rst  $28                                         ; $6bde: $ef
	rst  $38                                         ; $6bdf: $ff
	rst  $38                                         ; $6be0: $ff
	rst  $38                                         ; $6be1: $ff
	rst  $38                                         ; $6be2: $ff
	db   $fc                                         ; $6be3: $fc
	sub  [hl]                                        ; $6be4: $96
	ld   b, e                                        ; $6be5: $43
	ld   hl, $1111                                   ; $6be6: $21 $11 $11
	ld   de, $1311                                   ; $6be9: $11 $11 $13
	ld   a, c                                        ; $6bec: $79
	cp   [hl]                                        ; $6bed: $be
	rst  $38                                         ; $6bee: $ff
	rst  $38                                         ; $6bef: $ff
	rst  $38                                         ; $6bf0: $ff
	rst  $38                                         ; $6bf1: $ff
	cp   $b8                                         ; $6bf2: $fe $b8
	ld   h, h                                        ; $6bf4: $64
	ld   b, e                                        ; $6bf5: $43
	ld   hl, $1111                                   ; $6bf6: $21 $11 $11
	ld   de, $3611                                   ; $6bf9: $11 $11 $36
	adc  d                                           ; $6bfc: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bfd: $cf
	rst  $38                                         ; $6bfe: $ff
	rst  $38                                         ; $6bff: $ff
	rst  $38                                         ; $6c00: $ff
	rst  $38                                         ; $6c01: $ff
	db   $fc                                         ; $6c02: $fc
	add  [hl]                                        ; $6c03: $86
	ld   d, l                                        ; $6c04: $55
	ld   d, e                                        ; $6c05: $53
	ld   [hl-], a                                    ; $6c06: $32
	inc  hl                                          ; $6c07: $23
	ld   hl, $1111                                   ; $6c08: $21 $11 $11
	ld   [hl], $89                                   ; $6c0b: $36 $89
	cp   l                                           ; $6c0d: $bd
	rst  $38                                         ; $6c0e: $ff
	rst  $38                                         ; $6c0f: $ff
	cp   $ff                                         ; $6c10: $fe $ff
	db   $fd                                         ; $6c12: $fd
	add  a                                           ; $6c13: $87
	ld   [hl], a                                     ; $6c14: $77
	ld   h, [hl]                                     ; $6c15: $66
	ld   d, l                                        ; $6c16: $55
	ld   d, l                                        ; $6c17: $55
	ld   b, h                                        ; $6c18: $44
	ld   de, $1411                                   ; $6c19: $11 $11 $14
	ld   l, b                                        ; $6c1c: $68
	adc  d                                           ; $6c1d: $8a
	xor  l                                           ; $6c1e: $ad
	rst  $38                                         ; $6c1f: $ff
	db   $eb                                         ; $6c20: $eb
	adc  $ee                                         ; $6c21: $ce $ee
	res  5, c                                        ; $6c23: $cb $a9
	sbc  b                                           ; $6c25: $98
	sbc  b                                           ; $6c26: $98
	ld   [hl], a                                     ; $6c27: $77
	halt                                             ; $6c28: $76
	ld   h, l                                        ; $6c29: $65
	ld   hl, $2411                                   ; $6c2a: $21 $11 $24
	ld   d, [hl]                                     ; $6c2d: $56
	ld   h, [hl]                                     ; $6c2e: $66
	ld   d, a                                        ; $6c2f: $57
	xor  e                                           ; $6c30: $ab
	res  7, e                                        ; $6c31: $cb $bb
	call $dced                                       ; $6c33: $cd $ed $dc
	res  7, d                                        ; $6c36: $cb $ba
	sbc  c                                           ; $6c38: $99
	add  a                                           ; $6c39: $87
	halt                                             ; $6c3a: $76
	ld   h, [hl]                                     ; $6c3b: $66
	ld   d, h                                        ; $6c3c: $54
	inc  hl                                          ; $6c3d: $23
	ld   b, h                                        ; $6c3e: $44
	ld   b, h                                        ; $6c3f: $44
	ld   b, e                                        ; $6c40: $43
	inc  hl                                          ; $6c41: $23
	ld   d, [hl]                                     ; $6c42: $56
	sbc  d                                           ; $6c43: $9a
	cp   l                                           ; $6c44: $bd
	rst  JumpTable                                         ; $6c45: $df
	xor  $ee                                         ; $6c46: $ee $ee
	call c, $99ba                                    ; $6c48: $dc $ba $99
	adc  c                                           ; $6c4b: $89
	sbc  b                                           ; $6c4c: $98
	adc  c                                           ; $6c4d: $89
	halt                                             ; $6c4e: $76
	ld   d, h                                        ; $6c4f: $54
	ld   [hl+], a                                    ; $6c50: $22
	inc  sp                                          ; $6c51: $33
	inc  sp                                          ; $6c52: $33
	ld   [hl+], a                                    ; $6c53: $22
	inc  h                                           ; $6c54: $24
	ld   l, b                                        ; $6c55: $68
	xor  d                                           ; $6c56: $aa
	cp   e                                           ; $6c57: $bb
	call $dccc                                       ; $6c58: $cd $cc $dc
	res  7, e                                        ; $6c5b: $cb $bb
	xor  e                                           ; $6c5d: $ab
	xor  d                                           ; $6c5e: $aa
	cp   d                                           ; $6c5f: $ba
	xor  d                                           ; $6c60: $aa
	sbc  b                                           ; $6c61: $98
	halt                                             ; $6c62: $76
	ld   d, e                                        ; $6c63: $53
	inc  sp                                          ; $6c64: $33
	inc  sp                                          ; $6c65: $33
	ld   [hl-], a                                    ; $6c66: $32
	ld   hl, $5724                                   ; $6c67: $21 $24 $57
	adc  c                                           ; $6c6a: $89
	xor  e                                           ; $6c6b: $ab
	cp   h                                           ; $6c6c: $bc
	call $dcdd                                       ; $6c6d: $cd $dd $dc
	call z, $bbcb                                    ; $6c70: $cc $cb $bb
	res  5, c                                        ; $6c73: $cb $a9
	add  a                                           ; $6c75: $87
	ld   h, h                                        ; $6c76: $64
	ld   [hl-], a                                    ; $6c77: $32
	inc  hl                                          ; $6c78: $23
	ld   [hl-], a                                    ; $6c79: $32
	ld   [hl-], a                                    ; $6c7a: $32
	ld   de, $6735                                   ; $6c7b: $11 $35 $67
	sbc  c                                           ; $6c7e: $99
	xor  d                                           ; $6c7f: $aa
	call z, $cccc                                    ; $6c80: $cc $cc $cc
	call z, $ccbb                                    ; $6c83: $cc $bb $cc
	call z, $cacc                                    ; $6c86: $cc $cc $ca
	sbc  b                                           ; $6c89: $98
	halt                                             ; $6c8a: $76
	ld   d, h                                        ; $6c8b: $54
	ld   [hl-], a                                    ; $6c8c: $32
	ld   [hl+], a                                    ; $6c8d: $22
	ld   [hl+], a                                    ; $6c8e: $22
	ld   [hl+], a                                    ; $6c8f: $22
	inc  hl                                          ; $6c90: $23
	ld   b, [hl]                                     ; $6c91: $46
	ld   a, b                                        ; $6c92: $78
	adc  d                                           ; $6c93: $8a
	xor  h                                           ; $6c94: $ac
	call $dcdc                                       ; $6c95: $cd $dc $dc
	call z, $ccbc                                    ; $6c98: $cc $bc $cc
	cp   d                                           ; $6c9b: $ba
	xor  d                                           ; $6c9c: $aa
	sbc  b                                           ; $6c9d: $98
	halt                                             ; $6c9e: $76
	ld   h, l                                        ; $6c9f: $65
	ld   b, e                                        ; $6ca0: $43
	inc  sp                                          ; $6ca1: $33
	ld   [hl+], a                                    ; $6ca2: $22
	inc  hl                                          ; $6ca3: $23
	ld   [hl+], a                                    ; $6ca4: $22
	inc  [hl]                                        ; $6ca5: $34
	ld   d, [hl]                                     ; $6ca6: $56
	ld   a, c                                        ; $6ca7: $79
	xor  e                                           ; $6ca8: $ab
	cp   h                                           ; $6ca9: $bc
	call $cdcd                                       ; $6caa: $cd $cd $cd
	call c, $cbbc                                    ; $6cad: $dc $bc $cb
	call z, $98b9                                    ; $6cb0: $cc $b9 $98
	ld   [hl], a                                     ; $6cb3: $77
	ld   d, h                                        ; $6cb4: $54
	ld   [hl-], a                                    ; $6cb5: $32
	ld   de, $2321                                   ; $6cb6: $11 $21 $23
	inc  sp                                          ; $6cb9: $33
	inc  [hl]                                        ; $6cba: $34
	ld   h, a                                        ; $6cbb: $67
	sbc  d                                           ; $6cbc: $9a
	cp   h                                           ; $6cbd: $bc
	db   $dd                                         ; $6cbe: $dd
	call $dcee                                       ; $6cbf: $cd $ee $dc
	db   $db                                         ; $6cc2: $db
	cp   e                                           ; $6cc3: $bb
	cp   e                                           ; $6cc4: $bb
	xor  d                                           ; $6cc5: $aa
	xor  b                                           ; $6cc6: $a8
	add  [hl]                                        ; $6cc7: $86
	ld   d, h                                        ; $6cc8: $54
	ld   [hl-], a                                    ; $6cc9: $32
	ld   bc, $3412                                   ; $6cca: $01 $12 $34
	ld   d, h                                        ; $6ccd: $54
	ld   b, h                                        ; $6cce: $44
	ld   l, b                                        ; $6ccf: $68
	adc  d                                           ; $6cd0: $8a
	cp   h                                           ; $6cd1: $bc
	sbc  $ee                                         ; $6cd2: $de $ee
	db   $dd                                         ; $6cd4: $dd
	db   $ed                                         ; $6cd5: $ed
	call c, $aaaa                                    ; $6cd6: $dc $aa $aa
	sbc  c                                           ; $6cd9: $99
	sub  a                                           ; $6cda: $97
	halt                                             ; $6cdb: $76
	ld   d, d                                        ; $6cdc: $52
	ld   de, $1111                                   ; $6cdd: $11 $11 $11
	ld   b, [hl]                                     ; $6ce0: $46
	xor  l                                           ; $6ce1: $ad
	xor  c                                           ; $6ce2: $a9
	adc  c                                           ; $6ce3: $89
	xor  e                                           ; $6ce4: $ab
	cp   h                                           ; $6ce5: $bc
	db   $dd                                         ; $6ce6: $dd
	rst  $28                                         ; $6ce7: $ef
	db   $ed                                         ; $6ce8: $ed
	jp   z, $cbab                                    ; $6ce9: $ca $ab $cb

	sbc  c                                           ; $6cec: $99
	ld   [hl], a                                     ; $6ced: $77
	ld   h, l                                        ; $6cee: $65
	ld   sp, $1111                                   ; $6cef: $31 $11 $11
	ld   de, $ff59                                   ; $6cf2: $11 $59 $ff
	rst  $38                                         ; $6cf5: $ff
	xor  c                                           ; $6cf6: $a9
	or   [hl]                                        ; $6cf7: $b6
	sbc  c                                           ; $6cf8: $99
	sbc  e                                           ; $6cf9: $9b
	rst  $38                                         ; $6cfa: $ff
	db   $fc                                         ; $6cfb: $fc
	cp   b                                           ; $6cfc: $b8
	xor  h                                           ; $6cfd: $ac
	db   $db                                         ; $6cfe: $db
	xor  b                                           ; $6cff: $a8
	ld   h, h                                        ; $6d00: $64
	ld   sp, $1111                                   ; $6d01: $31 $11 $11
	ld   de, $df18                                   ; $6d04: $11 $18 $df
	rst  $38                                         ; $6d07: $ff
	add  sp, -$76                                    ; $6d08: $e8 $8a
	ld   b, a                                        ; $6d0a: $47
	ld   [hl], a                                     ; $6d0b: $77
	rst  $28                                         ; $6d0c: $ef
	rst  $38                                         ; $6d0d: $ff
	db   $db                                         ; $6d0e: $db
	sbc  d                                           ; $6d0f: $9a
	call c, $7498                                    ; $6d10: $dc $98 $74
	ld   [hl-], a                                    ; $6d13: $32
	ld   de, $1111                                   ; $6d14: $11 $11 $11
	ld   de, $ffcf                                   ; $6d17: $11 $cf $ff
	ld   sp, hl                                      ; $6d1a: $f9
	ld   e, c                                        ; $6d1b: $59
	sub  a                                           ; $6d1c: $97
	ld   [hl], l                                     ; $6d1d: $75
	adc  a                                           ; $6d1e: $8f
	rst  $38                                         ; $6d1f: $ff
	jp   hl                                          ; $6d20: $e9


	ld   h, a                                        ; $6d21: $67
	cp   a                                           ; $6d22: $bf
	ret  z                                           ; $6d23: $c8

	ld   d, e                                        ; $6d24: $53
	ld   [hl-], a                                    ; $6d25: $32
	ld   de, $1111                                   ; $6d26: $11 $11 $11
	ld   de, $ff9f                                   ; $6d29: $11 $9f $ff
	ei                                               ; $6d2c: $fb
	ld   d, l                                        ; $6d2d: $55
	or   a                                           ; $6d2e: $b7
	ld   h, [hl]                                     ; $6d2f: $66
	ld   a, [hl]                                     ; $6d30: $7e
	rst  $38                                         ; $6d31: $ff
	ld   sp, hl                                      ; $6d32: $f9
	ld   d, l                                        ; $6d33: $55
	xor  l                                           ; $6d34: $ad
	ld   [$1164], a                                  ; $6d35: $ea $64 $11
	ld   de, $1111                                   ; $6d38: $11 $11 $11
	ld   de, $ff1e                                   ; $6d3b: $11 $1e $ff
	rst  $38                                         ; $6d3e: $ff
	ld   [hl], h                                     ; $6d3f: $74
	xor  d                                           ; $6d40: $aa
	ld   h, l                                        ; $6d41: $65
	ld   e, c                                        ; $6d42: $59
	rst  $38                                         ; $6d43: $ff
	db   $fc                                         ; $6d44: $fc
	add  l                                           ; $6d45: $85
	ld   a, e                                        ; $6d46: $7b
	db   $eb                                         ; $6d47: $eb
	ld   [hl], l                                     ; $6d48: $75
	inc  sp                                          ; $6d49: $33
	ld   sp, $0111                                   ; $6d4a: $31 $11 $01
	ld   de, $ef11                                   ; $6d4d: $11 $11 $ef
	rst  $38                                         ; $6d50: $ff
	add  $59                                         ; $6d51: $c6 $59
	and  [hl]                                        ; $6d53: $a6
	ld   h, [hl]                                     ; $6d54: $66
	cp   a                                           ; $6d55: $bf
	rst  $38                                         ; $6d56: $ff
	sub  [hl]                                        ; $6d57: $96
	ld   l, b                                        ; $6d58: $68
	rst  $38                                         ; $6d59: $ff
	cp   b                                           ; $6d5a: $b8
	ld   h, h                                        ; $6d5b: $64
	ld   [hl-], a                                    ; $6d5c: $32
	ld   de, $1111                                   ; $6d5d: $11 $11 $11
	ld   de, $ff1a                                   ; $6d60: $11 $1a $ff
	cp   $94                                         ; $6d63: $fe $94
	cp   h                                           ; $6d65: $bc
	ld   h, [hl]                                     ; $6d66: $66
	ld   e, e                                        ; $6d67: $5b
	rst  $38                                         ; $6d68: $ff
	ei                                               ; $6d69: $fb
	halt                                             ; $6d6a: $76
	adc  l                                           ; $6d6b: $8d
	db   $fc                                         ; $6d6c: $fc
	add  [hl]                                        ; $6d6d: $86
	ld   d, l                                        ; $6d6e: $55
	ld   b, e                                        ; $6d6f: $43
	ld   de, $2121                                   ; $6d70: $11 $21 $21
	ld   de, $ff1d                                   ; $6d73: $11 $1d $ff
	db   $fd                                         ; $6d76: $fd
	halt                                             ; $6d77: $76
	adc  b                                           ; $6d78: $88
	ld   b, l                                        ; $6d79: $45
	sbc  l                                           ; $6d7a: $9d
	rst  $38                                         ; $6d7b: $ff
	jp   hl                                          ; $6d7c: $e9


	ld   h, [hl]                                     ; $6d7d: $66
	xor  h                                           ; $6d7e: $ac
	db   $ec                                         ; $6d7f: $ec
	xor  b                                           ; $6d80: $a8
	ld   d, e                                        ; $6d81: $53
	ld   [hl+], a                                    ; $6d82: $22
	inc  h                                           ; $6d83: $24
	ld   d, e                                        ; $6d84: $53
	ld   hl, $1a11                                   ; $6d85: $21 $11 $1a
	rst  $38                                         ; $6d88: $ff
	cp   $96                                         ; $6d89: $fe $96
	ld   l, c                                        ; $6d8b: $69
	ld   b, [hl]                                     ; $6d8c: $46
	sbc  [hl]                                        ; $6d8d: $9e
	rst  $38                                         ; $6d8e: $ff
	ld   hl, sp+$7a                                  ; $6d8f: $f8 $7a
	xor  l                                           ; $6d91: $ad
	call c, Call_0da_64b7                            ; $6d92: $dc $b7 $64
	inc  [hl]                                        ; $6d95: $34
	ld   b, [hl]                                     ; $6d96: $46
	ld   d, d                                        ; $6d97: $52
	ld   de, $1111                                   ; $6d98: $11 $11 $11
	rst  $38                                         ; $6d9b: $ff
	rst  $38                                         ; $6d9c: $ff
	rst  $20                                         ; $6d9d: $e7
	ld   h, $57                                      ; $6d9e: $26 $57
	sbc  e                                           ; $6da0: $9b
	rst  $38                                         ; $6da1: $ff
	db   $fd                                         ; $6da2: $fd
	adc  d                                           ; $6da3: $8a
	ld   a, d                                        ; $6da4: $7a
	call c, $86d8                                    ; $6da5: $dc $d8 $86
	inc  [hl]                                        ; $6da8: $34
	ld   b, l                                        ; $6da9: $45
	add  [hl]                                        ; $6daa: $86
	ld   sp, $1111                                   ; $6dab: $31 $11 $11
	ccf                                              ; $6dae: $3f
	rst  $38                                         ; $6daf: $ff
	ld   a, [$8555]                                  ; $6db0: $fa $55 $85
	ld   a, c                                        ; $6db3: $79
	cp   a                                           ; $6db4: $bf
	rst  $38                                         ; $6db5: $ff
	sub  a                                           ; $6db6: $97
	cp   b                                           ; $6db7: $b8
	sbc  $cb                                         ; $6db8: $de $cb
	xor  b                                           ; $6dba: $a8
	ld   h, l                                        ; $6dbb: $65
	ld   b, h                                        ; $6dbc: $44
	ld   a, c                                        ; $6dbd: $79
	ld   h, e                                        ; $6dbe: $63
	ld   de, $1111                                   ; $6dbf: $11 $11 $11
	sbc  a                                           ; $6dc2: $9f
	rst  $38                                         ; $6dc3: $ff
	ret  c                                           ; $6dc4: $d8

	scf                                              ; $6dc5: $37
	sub  [hl]                                        ; $6dc6: $96
	adc  d                                           ; $6dc7: $8a
	rst  $28                                         ; $6dc8: $ef
	db   $fc                                         ; $6dc9: $fc
	adc  c                                           ; $6dca: $89
	cp   e                                           ; $6dcb: $bb
	call z, $a6cd                                    ; $6dcc: $cc $cd $a6
	ld   b, d                                        ; $6dcf: $42
	ld   e, b                                        ; $6dd0: $58
	ld   a, b                                        ; $6dd1: $78
	ld   b, c                                        ; $6dd2: $41
	ld   de, $1411                                   ; $6dd3: $11 $11 $14
	rst  $38                                         ; $6dd6: $ff
	db   $fd                                         ; $6dd7: $fd
	add  a                                           ; $6dd8: $87
	ld   a, e                                        ; $6dd9: $7b
	ld   d, l                                        ; $6dda: $55
	ld   a, h                                        ; $6ddb: $7c
	rst  $38                                         ; $6ddc: $ff
	ld   a, [$cd9c]                                  ; $6ddd: $fa $9c $cd
	xor  d                                           ; $6de0: $aa
	call c, $35b6                                    ; $6de1: $dc $b6 $35
	ld   l, c                                        ; $6de4: $69
	add  [hl]                                        ; $6de5: $86
	ld   d, c                                        ; $6de6: $51
	ld   de, $1411                                   ; $6de7: $11 $11 $14
	rst  $38                                         ; $6dea: $ff
	db   $fc                                         ; $6deb: $fc
	ld   a, b                                        ; $6dec: $78
	ld   h, [hl]                                     ; $6ded: $66
	ld   d, a                                        ; $6dee: $57
	cp   [hl]                                        ; $6def: $be
	rst  $38                                         ; $6df0: $ff
	cp   e                                           ; $6df1: $bb
	xor  h                                           ; $6df2: $ac
	res  7, h                                        ; $6df3: $cb $bc
	db   $ec                                         ; $6df5: $ec
	add  l                                           ; $6df6: $85
	ld   d, [hl]                                     ; $6df7: $56
	add  a                                           ; $6df8: $87
	ld   [hl], a                                     ; $6df9: $77
	inc  sp                                          ; $6dfa: $33
	ld   de, $1211                                   ; $6dfb: $11 $11 $12
	cp   $cd                                         ; $6dfe: $fe $cd
	and  a                                           ; $6e00: $a7
	ld   a, c                                        ; $6e01: $79
	ld   h, [hl]                                     ; $6e02: $66
	sbc  l                                           ; $6e03: $9d
	rst  $38                                         ; $6e04: $ff
	db   $eb                                         ; $6e05: $eb
	cp   e                                           ; $6e06: $bb
	cp   e                                           ; $6e07: $bb
	call $96ed                                       ; $6e08: $cd $ed $96
	ld   d, a                                        ; $6e0b: $57
	ld   [hl], a                                     ; $6e0c: $77
	ld   h, h                                        ; $6e0d: $64
	ld   b, h                                        ; $6e0e: $44
	ld   de, $1111                                   ; $6e0f: $11 $11 $11
	cp   a                                           ; $6e12: $bf
	cp   a                                           ; $6e13: $bf
	rst  ToBoot                                         ; $6e14: $c7
	adc  c                                           ; $6e15: $89
	ld   h, [hl]                                     ; $6e16: $66
	cp   e                                           ; $6e17: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e18: $cf
	db   $eb                                         ; $6e19: $eb
	xor  h                                           ; $6e1a: $ac
	cp   e                                           ; $6e1b: $bb
	call c, $a6de                                    ; $6e1c: $dc $de $a6
	ld   b, l                                        ; $6e1f: $45
	ld   h, a                                        ; $6e20: $67
	ld   h, l                                        ; $6e21: $65
	ld   [hl], h                                     ; $6e22: $74
	ld   hl, $1111                                   ; $6e23: $21 $11 $11
	ld   e, $99                                      ; $6e26: $1e $99
	call $94ca                                       ; $6e28: $cd $ca $94
	ld   l, e                                        ; $6e2b: $6b
	rst  JumpTable                                         ; $6e2c: $df
	db   $dd                                         ; $6e2d: $dd
	xor  h                                           ; $6e2e: $ac
	db   $eb                                         ; $6e2f: $eb
	call z, $c8cd                                    ; $6e30: $cc $cd $c8
	ld   [hl], a                                     ; $6e33: $77
	ld   [hl], l                                     ; $6e34: $75
	ld   h, [hl]                                     ; $6e35: $66
	ld   d, l                                        ; $6e36: $55
	inc  sp                                          ; $6e37: $33
	ld   de, $1211                                   ; $6e38: $11 $11 $12
	jp   z, $db8c                                    ; $6e3b: $ca $8c $db

	xor  b                                           ; $6e3e: $a8
	ld   e, b                                        ; $6e3f: $58
	xor  h                                           ; $6e40: $ac
	xor  $ec                                         ; $6e41: $ee $ec
	db   $db                                         ; $6e43: $db
	xor  e                                           ; $6e44: $ab
	call $87ca                                       ; $6e45: $cd $ca $87

jr_0da_6e48:
	ld   [hl], a                                     ; $6e48: $77
	ld   d, l                                        ; $6e49: $55
	ld   d, [hl]                                     ; $6e4a: $56
	ld   d, l                                        ; $6e4b: $55
	ld   sp, $1111                                   ; $6e4c: $31 $11 $11
	ld   a, [de]                                     ; $6e4f: $1a
	add  l                                           ; $6e50: $85
	jp   z, $99cb                                    ; $6e51: $ca $cb $99

	ld   a, h                                        ; $6e54: $7c
	cp   e                                           ; $6e55: $bb
	db   $fd                                         ; $6e56: $fd
	cp   [hl]                                        ; $6e57: $be
	set  1, e                                        ; $6e58: $cb $cb
	reti                                             ; $6e5a: $d9


	cp   c                                           ; $6e5b: $b9
	sbc  e                                           ; $6e5c: $9b
	ld   [hl], a                                     ; $6e5d: $77
	ld   h, l                                        ; $6e5e: $65
	ld   h, h                                        ; $6e5f: $64
	ld   b, d                                        ; $6e60: $42
	inc  hl                                          ; $6e61: $23
	ld   de, $4a11                                   ; $6e62: $11 $11 $4a
	ld   [hl], a                                     ; $6e65: $77
	call z, $a9cb                                    ; $6e66: $cc $cb $a9
	sbc  d                                           ; $6e69: $9a
	cp   l                                           ; $6e6a: $bd
	db   $fc                                         ; $6e6b: $fc
	cp   l                                           ; $6e6c: $bd
	xor  h                                           ; $6e6d: $ac
	cp   e                                           ; $6e6e: $bb
	jp   z, $98ca                                    ; $6e6f: $ca $ca $98

	ld   h, a                                        ; $6e72: $67
	ld   d, h                                        ; $6e73: $54
	ld   d, h                                        ; $6e74: $54
	ld   b, h                                        ; $6e75: $44
	ld   [hl-], a                                    ; $6e76: $32
	ld   de, $6911                                   ; $6e77: $11 $11 $69
	jr   c, jr_0da_6e48                              ; $6e7a: $38 $cc

	sbc  h                                           ; $6e7c: $9c
	ret                                              ; $6e7d: $c9


	cp   e                                           ; $6e7e: $bb
	cp   l                                           ; $6e7f: $bd
	db   $fc                                         ; $6e80: $fc
	cp   l                                           ; $6e81: $bd
	res  7, d                                        ; $6e82: $cb $ba
	xor  e                                           ; $6e84: $ab
	xor  c                                           ; $6e85: $a9
	xor  d                                           ; $6e86: $aa
	halt                                             ; $6e87: $76
	ld   h, l                                        ; $6e88: $65
	ld   d, h                                        ; $6e89: $54
	inc  sp                                          ; $6e8a: $33
	inc  sp                                          ; $6e8b: $33
	ld   hl, $5711                                   ; $6e8c: $21 $11 $57
	add  hl, hl                                      ; $6e8f: $29
	cp   e                                           ; $6e90: $bb
	xor  e                                           ; $6e91: $ab
	jp   z, $bdbd                                    ; $6e92: $ca $bd $bd

	db   $ec                                         ; $6e95: $ec
	cp   h                                           ; $6e96: $bc
	res  5, e                                        ; $6e97: $cb $ab
	cp   d                                           ; $6e99: $ba
	cp   d                                           ; $6e9a: $ba
	xor  c                                           ; $6e9b: $a9
	add  a                                           ; $6e9c: $87
	ld   h, [hl]                                     ; $6e9d: $66
	ld   d, h                                        ; $6e9e: $54
	ld   b, e                                        ; $6e9f: $43
	ld   b, h                                        ; $6ea0: $44
	ld   hl, $1711                                   ; $6ea1: $21 $11 $17
	ld   b, d                                        ; $6ea4: $42
	sbc  h                                           ; $6ea5: $9c
	xor  c                                           ; $6ea6: $a9
	call c, $bebc                                    ; $6ea7: $dc $bc $be
	db   $ed                                         ; $6eaa: $ed
	sbc  h                                           ; $6eab: $9c
	db   $db                                         ; $6eac: $db
	cp   d                                           ; $6ead: $ba
	res  5, d                                        ; $6eae: $cb $aa
	xor  e                                           ; $6eb0: $ab
	add  a                                           ; $6eb1: $87
	add  a                                           ; $6eb2: $87
	ld   h, l                                        ; $6eb3: $65
	ld   b, l                                        ; $6eb4: $45
	ld   b, e                                        ; $6eb5: $43
	ld   [hl-], a                                    ; $6eb6: $32
	ld   de, $6213                                   ; $6eb7: $11 $13 $62
	ld   e, e                                        ; $6eba: $5b
	sbc  b                                           ; $6ebb: $98
	db   $dd                                         ; $6ebc: $dd
	cp   l                                           ; $6ebd: $bd
	db   $dd                                         ; $6ebe: $dd
	adc  $db                                         ; $6ebf: $ce $db
	call z, $aaab                                    ; $6ec1: $cc $ab $aa
	xor  d                                           ; $6ec4: $aa
	xor  d                                           ; $6ec5: $aa
	sbc  b                                           ; $6ec6: $98
	adc  b                                           ; $6ec7: $88
	halt                                             ; $6ec8: $76
	ld   h, l                                        ; $6ec9: $65
	inc  sp                                          ; $6eca: $33
	ld   b, e                                        ; $6ecb: $43
	ld   [hl+], a                                    ; $6ecc: $22
	ld   de, $3216                                   ; $6ecd: $11 $16 $32
	sbc  d                                           ; $6ed0: $9a
	xor  d                                           ; $6ed1: $aa
	xor  $bc                                         ; $6ed2: $ee $bc
	xor  $dd                                         ; $6ed4: $ee $dd
	cp   l                                           ; $6ed6: $bd
	res  5, d                                        ; $6ed7: $cb $aa
	cp   b                                           ; $6ed9: $b8
	sbc  c                                           ; $6eda: $99
	sbc  d                                           ; $6edb: $9a
	ld   a, c                                        ; $6edc: $79
	sbc  b                                           ; $6edd: $98
	ld   h, [hl]                                     ; $6ede: $66
	ld   h, l                                        ; $6edf: $65
	ld   b, h                                        ; $6ee0: $44
	ld   b, e                                        ; $6ee1: $43
	ld   de, $4411                                   ; $6ee2: $11 $11 $44
	ld   d, $a8                                      ; $6ee5: $16 $a8
	adc  l                                           ; $6ee7: $8d
	db   $db                                         ; $6ee8: $db
	sbc  $fd                                         ; $6ee9: $de $fd
	db   $ed                                         ; $6eeb: $ed
	adc  $ba                                         ; $6eec: $ce $ba
	xor  d                                           ; $6eee: $aa
	sbc  b                                           ; $6eef: $98
	adc  c                                           ; $6ef0: $89
	adc  b                                           ; $6ef1: $88
	adc  c                                           ; $6ef2: $89
	add  a                                           ; $6ef3: $87
	ld   [hl], a                                     ; $6ef4: $77
	ld   h, l                                        ; $6ef5: $65
	ld   d, l                                        ; $6ef6: $55
	inc  sp                                          ; $6ef7: $33
	ld   [hl+], a                                    ; $6ef8: $22
	ld   de, $1643                                   ; $6ef9: $11 $43 $16
	add  [hl]                                        ; $6efc: $86
	adc  l                                           ; $6efd: $8d
	set  3, [hl]                                     ; $6efe: $cb $de
	db   $fd                                         ; $6f00: $fd
	db   $ed                                         ; $6f01: $ed
	db   $dd                                         ; $6f02: $dd
	xor  e                                           ; $6f03: $ab
	cp   d                                           ; $6f04: $ba
	adc  b                                           ; $6f05: $88
	sub  [hl]                                        ; $6f06: $96
	ld   [hl], a                                     ; $6f07: $77
	ld   a, b                                        ; $6f08: $78
	ld   [hl], a                                     ; $6f09: $77
	ld   [hl], a                                     ; $6f0a: $77
	ld   h, [hl]                                     ; $6f0b: $66
	ld   h, l                                        ; $6f0c: $65
	ld   d, h                                        ; $6f0d: $54
	ld   b, e                                        ; $6f0e: $43
	ld   de, $1323                                   ; $6f0f: $11 $23 $13
	halt                                             ; $6f12: $76
	ld   a, c                                        ; $6f13: $79
	cp   e                                           ; $6f14: $bb
	call z, $feff                                    ; $6f15: $cc $ff $fe
	cp   $db                                         ; $6f18: $fe $db
	jp   z, $8688                                    ; $6f1a: $ca $88 $86

	ld   [hl], a                                     ; $6f1d: $77
	ld   h, a                                        ; $6f1e: $67
	ld   [hl], a                                     ; $6f1f: $77
	ld   a, b                                        ; $6f20: $78
	ld   [hl], a                                     ; $6f21: $77
	ld   [hl], a                                     ; $6f22: $77
	ld   h, [hl]                                     ; $6f23: $66
	ld   d, l                                        ; $6f24: $55
	ld   b, d                                        ; $6f25: $42
	inc  de                                          ; $6f26: $13
	ld   b, c                                        ; $6f27: $41
	ld   h, $55                                      ; $6f28: $26 $55
	ld   a, d                                        ; $6f2a: $7a
	sbc  d                                           ; $6f2b: $9a
	db   $dd                                         ; $6f2c: $dd
	rst  $38                                         ; $6f2d: $ff
	cp   $fd                                         ; $6f2e: $fe $fd
	db   $dd                                         ; $6f30: $dd
	xor  d                                           ; $6f31: $aa
	sbc  b                                           ; $6f32: $98
	ld   h, [hl]                                     ; $6f33: $66
	ld   h, l                                        ; $6f34: $65
	ld   h, [hl]                                     ; $6f35: $66
	ld   h, a                                        ; $6f36: $67
	ld   [hl], a                                     ; $6f37: $77
	ld   a, b                                        ; $6f38: $78
	add  a                                           ; $6f39: $87
	ld   [hl], a                                     ; $6f3a: $77
	ld   h, l                                        ; $6f3b: $65
	ld   d, h                                        ; $6f3c: $54
	inc  hl                                          ; $6f3d: $23
	ld   b, d                                        ; $6f3e: $42
	inc  [hl]                                        ; $6f3f: $34
	ld   b, [hl]                                     ; $6f40: $46
	ld   h, a                                        ; $6f41: $67
	sbc  d                                           ; $6f42: $9a
	cp   h                                           ; $6f43: $bc
	db   $fd                                         ; $6f44: $fd
	xor  $ee                                         ; $6f45: $ee $ee
	adc  $bb                                         ; $6f47: $ce $bb
	xor  b                                           ; $6f49: $a8
	halt                                             ; $6f4a: $76
	ld   h, l                                        ; $6f4b: $65
	ld   h, [hl]                                     ; $6f4c: $66
	ld   h, a                                        ; $6f4d: $67
	ld   h, a                                        ; $6f4e: $67
	adc  b                                           ; $6f4f: $88
	adc  b                                           ; $6f50: $88
	adc  b                                           ; $6f51: $88
	ld   [hl], a                                     ; $6f52: $77
	ld   h, l                                        ; $6f53: $65
	ld   b, e                                        ; $6f54: $43
	ld   b, h                                        ; $6f55: $44
	inc  hl                                          ; $6f56: $23
	ld   b, h                                        ; $6f57: $44
	ld   b, [hl]                                     ; $6f58: $46
	ld   [hl], a                                     ; $6f59: $77
	sbc  e                                           ; $6f5a: $9b
	cp   l                                           ; $6f5b: $bd
	adc  $ed                                         ; $6f5c: $ce $ed
	db   $ed                                         ; $6f5e: $ed
	db   $ec                                         ; $6f5f: $ec
	cp   d                                           ; $6f60: $ba
	adc  c                                           ; $6f61: $89
	ld   [hl], a                                     ; $6f62: $77
	ld   h, [hl]                                     ; $6f63: $66
	ld   [hl], l                                     ; $6f64: $75
	ld   h, [hl]                                     ; $6f65: $66
	ld   [hl], a                                     ; $6f66: $77
	ld   a, c                                        ; $6f67: $79
	adc  b                                           ; $6f68: $88
	sbc  b                                           ; $6f69: $98
	ld   [hl], a                                     ; $6f6a: $77
	ld   h, [hl]                                     ; $6f6b: $66
	ld   d, h                                        ; $6f6c: $54
	ld   b, h                                        ; $6f6d: $44
	inc  sp                                          ; $6f6e: $33
	ld   b, e                                        ; $6f6f: $43
	ld   b, [hl]                                     ; $6f70: $46
	ld   h, a                                        ; $6f71: $67
	ld   a, c                                        ; $6f72: $79
	xor  e                                           ; $6f73: $ab
	call z, $eedd                                    ; $6f74: $cc $dd $ee
	db   $ed                                         ; $6f77: $ed
	call z, $88a9                                    ; $6f78: $cc $a9 $88
	ld   [hl], a                                     ; $6f7b: $77
	halt                                             ; $6f7c: $76
	halt                                             ; $6f7d: $76
	ld   [hl], a                                     ; $6f7e: $77
	ld   a, b                                        ; $6f7f: $78
	ld   a, b                                        ; $6f80: $78
	ld   [hl], a                                     ; $6f81: $77
	add  a                                           ; $6f82: $87
	ld   h, a                                        ; $6f83: $67
	ld   d, l                                        ; $6f84: $55
	ld   b, h                                        ; $6f85: $44
	ld   b, e                                        ; $6f86: $43
	inc  [hl]                                        ; $6f87: $34
	ld   b, h                                        ; $6f88: $44
	ld   d, [hl]                                     ; $6f89: $56
	ld   [hl], a                                     ; $6f8a: $77
	adc  c                                           ; $6f8b: $89
	call z, $edce                                    ; $6f8c: $cc $ce $ed
	xor  $dc                                         ; $6f8f: $ee $dc
	cp   e                                           ; $6f91: $bb
	xor  c                                           ; $6f92: $a9
	adc  b                                           ; $6f93: $88
	ld   [hl], a                                     ; $6f94: $77
	ld   h, a                                        ; $6f95: $67
	halt                                             ; $6f96: $76
	ld   [hl], a                                     ; $6f97: $77
	ld   [hl], a                                     ; $6f98: $77
	ld   a, b                                        ; $6f99: $78
	ld   [hl], a                                     ; $6f9a: $77
	halt                                             ; $6f9b: $76
	ld   h, [hl]                                     ; $6f9c: $66
	ld   d, h                                        ; $6f9d: $54
	ld   b, e                                        ; $6f9e: $43
	ld   b, e                                        ; $6f9f: $43
	inc  [hl]                                        ; $6fa0: $34
	ld   b, h                                        ; $6fa1: $44
	ld   d, [hl]                                     ; $6fa2: $56
	ld   [hl], a                                     ; $6fa3: $77
	sbc  d                                           ; $6fa4: $9a
	set  1, [hl]                                     ; $6fa5: $cb $ce
	sbc  $ee                                         ; $6fa7: $de $ee
	db   $dd                                         ; $6fa9: $dd
	cp   e                                           ; $6faa: $bb
	xor  c                                           ; $6fab: $a9
	sbc  b                                           ; $6fac: $98
	ld   [hl], a                                     ; $6fad: $77
	halt                                             ; $6fae: $76
	ld   h, a                                        ; $6faf: $67
	ld   [hl], a                                     ; $6fb0: $77
	add  a                                           ; $6fb1: $87
	ld   [hl], a                                     ; $6fb2: $77
	ld   [hl], a                                     ; $6fb3: $77
	halt                                             ; $6fb4: $76
	ld   h, [hl]                                     ; $6fb5: $66
	ld   d, l                                        ; $6fb6: $55
	ld   b, e                                        ; $6fb7: $43
	ld   b, h                                        ; $6fb8: $44
	inc  [hl]                                        ; $6fb9: $34
	ld   d, h                                        ; $6fba: $54
	ld   h, [hl]                                     ; $6fbb: $66
	ld   l, b                                        ; $6fbc: $68
	sbc  d                                           ; $6fbd: $9a
	cp   h                                           ; $6fbe: $bc
	db   $dd                                         ; $6fbf: $dd
	xor  $ee                                         ; $6fc0: $ee $ee
	call c, $a9db                                    ; $6fc2: $dc $db $a9
	adc  b                                           ; $6fc5: $88
	ld   [hl], a                                     ; $6fc6: $77
	ld   h, [hl]                                     ; $6fc7: $66
	ld   h, [hl]                                     ; $6fc8: $66
	ld   [hl], a                                     ; $6fc9: $77
	ld   [hl], a                                     ; $6fca: $77
	ld   [hl], a                                     ; $6fcb: $77
	ld   [hl], a                                     ; $6fcc: $77
	halt                                             ; $6fcd: $76
	ld   h, [hl]                                     ; $6fce: $66
	ld   d, l                                        ; $6fcf: $55
	ld   b, h                                        ; $6fd0: $44
	inc  [hl]                                        ; $6fd1: $34
	ld   [hl-], a                                    ; $6fd2: $32
	ld   d, h                                        ; $6fd3: $54
	ld   b, [hl]                                     ; $6fd4: $46
	ld   l, b                                        ; $6fd5: $68
	sbc  e                                           ; $6fd6: $9b
	cp   h                                           ; $6fd7: $bc
	cp   $ff                                         ; $6fd8: $fe $ff
	cp   $ef                                         ; $6fda: $fe $ef
	call c, $a8b9                                    ; $6fdc: $dc $b9 $a8
	ld   [hl], a                                     ; $6fdf: $77
	ld   h, [hl]                                     ; $6fe0: $66
	ld   d, [hl]                                     ; $6fe1: $56
	ld   h, [hl]                                     ; $6fe2: $66
	halt                                             ; $6fe3: $76
	ld   [hl], a                                     ; $6fe4: $77
	ld   [hl], a                                     ; $6fe5: $77
	ld   h, [hl]                                     ; $6fe6: $66
	ld   h, l                                        ; $6fe7: $65
	ld   d, h                                        ; $6fe8: $54
	ld   [hl-], a                                    ; $6fe9: $32
	inc  sp                                          ; $6fea: $33
	inc  hl                                          ; $6feb: $23
	ld   b, h                                        ; $6fec: $44
	ld   d, [hl]                                     ; $6fed: $56
	adc  c                                           ; $6fee: $89
	cp   h                                           ; $6fef: $bc
	rst  JumpTable                                         ; $6ff0: $df
	rst  $28                                         ; $6ff1: $ef
	rst  $38                                         ; $6ff2: $ff
	rst  $38                                         ; $6ff3: $ff
	cp   $ba                                         ; $6ff4: $fe $ba
	sbc  b                                           ; $6ff6: $98
	halt                                             ; $6ff7: $76
	ld   h, l                                        ; $6ff8: $65
	ld   d, h                                        ; $6ff9: $54
	ld   d, l                                        ; $6ffa: $55
	ld   h, [hl]                                     ; $6ffb: $66
	ld   h, a                                        ; $6ffc: $67
	ld   [hl], a                                     ; $6ffd: $77
	halt                                             ; $6ffe: $76
	ld   h, l                                        ; $6fff: $65
	ld   d, h                                        ; $7000: $54
	ld   [hl-], a                                    ; $7001: $32
	inc  de                                          ; $7002: $13
	ld   de, $4534                                   ; $7003: $11 $34 $45
	adc  e                                           ; $7006: $8b
	cp   l                                           ; $7007: $bd
	rst  $38                                         ; $7008: $ff
	rst  $38                                         ; $7009: $ff
	rst  $38                                         ; $700a: $ff
	rst  $38                                         ; $700b: $ff
	rst  $38                                         ; $700c: $ff
	cp   c                                           ; $700d: $b9
	add  [hl]                                        ; $700e: $86
	ld   h, h                                        ; $700f: $64
	ld   b, h                                        ; $7010: $44
	ld   b, h                                        ; $7011: $44
	ld   b, l                                        ; $7012: $45
	ld   d, [hl]                                     ; $7013: $56
	ld   [hl], a                                     ; $7014: $77
	add  a                                           ; $7015: $87
	ld   h, a                                        ; $7016: $67
	ld   h, h                                        ; $7017: $64
	ld   [hl-], a                                    ; $7018: $32
	ld   de, $1421                                   ; $7019: $11 $21 $14
	ld   b, e                                        ; $701c: $43
	ld   a, e                                        ; $701d: $7b
	call z, $ffff                                    ; $701e: $cc $ff $ff
	rst  $38                                         ; $7021: $ff
	rst  $38                                         ; $7022: $ff
	db   $fd                                         ; $7023: $fd
	jp   z, Jump_0da_5476                            ; $7024: $ca $76 $54

	inc  hl                                          ; $7027: $23
	inc  sp                                          ; $7028: $33
	inc  [hl]                                        ; $7029: $34
	ld   d, [hl]                                     ; $702a: $56
	ld   [hl], a                                     ; $702b: $77
	ld   [hl], a                                     ; $702c: $77
	halt                                             ; $702d: $76
	ld   d, h                                        ; $702e: $54
	ld   hl, $1111                                   ; $702f: $21 $11 $11
	inc  de                                          ; $7032: $13
	ld   d, [hl]                                     ; $7033: $56
	sbc  l                                           ; $7034: $9d
	rst  JumpTable                                         ; $7035: $df
	rst  $38                                         ; $7036: $ff
	rst  $38                                         ; $7037: $ff
	rst  $38                                         ; $7038: $ff
	rst  $38                                         ; $7039: $ff
	db   $db                                         ; $703a: $db
	and  [hl]                                        ; $703b: $a6
	ld   h, e                                        ; $703c: $63
	ld   [hl-], a                                    ; $703d: $32
	inc  de                                          ; $703e: $13
	inc  sp                                          ; $703f: $33
	ld   d, l                                        ; $7040: $55
	ld   h, a                                        ; $7041: $67
	ld   [hl], a                                     ; $7042: $77
	ld   h, [hl]                                     ; $7043: $66
	ld   h, e                                        ; $7044: $63
	ld   hl, $1111                                   ; $7045: $21 $11 $11
	ld   de, $9c67                                   ; $7048: $11 $67 $9c
	rst  $38                                         ; $704b: $ff
	rst  $38                                         ; $704c: $ff
	rst  $38                                         ; $704d: $ff
	rst  $38                                         ; $704e: $ff
	rst  $38                                         ; $704f: $ff
	ld   a, [$4387]                                  ; $7050: $fa $87 $43
	ld   [de], a                                     ; $7053: $12
	ld   [hl-], a                                    ; $7054: $32
	ld   b, h                                        ; $7055: $44
	ld   h, a                                        ; $7056: $67
	ld   l, b                                        ; $7057: $68
	add  a                                           ; $7058: $87
	ld   h, h                                        ; $7059: $64
	ld   d, d                                        ; $705a: $52
	ld   de, $1111                                   ; $705b: $11 $11 $11
	inc  de                                          ; $705e: $13
	sbc  h                                           ; $705f: $9c
	rst  JumpTable                                         ; $7060: $df
	rst  $38                                         ; $7061: $ff
	rst  $38                                         ; $7062: $ff
	rst  $38                                         ; $7063: $ff
	rst  $38                                         ; $7064: $ff
	db   $fd                                         ; $7065: $fd
	xor  b                                           ; $7066: $a8
	ld   d, h                                        ; $7067: $54
	inc  sp                                          ; $7068: $33
	inc  hl                                          ; $7069: $23
	ld   d, l                                        ; $706a: $55
	ld   h, a                                        ; $706b: $67
	ld   a, b                                        ; $706c: $78
	ld   a, b                                        ; $706d: $78
	ld   [hl], l                                     ; $706e: $75
	ld   sp, $1111                                   ; $706f: $31 $11 $11
	ld   de, $7b12                                   ; $7072: $11 $12 $7b
	rst  $28                                         ; $7075: $ef
	rst  $38                                         ; $7076: $ff
	rst  $38                                         ; $7077: $ff
	rst  $38                                         ; $7078: $ff
	rst  $38                                         ; $7079: $ff
	ei                                               ; $707a: $fb
	sub  a                                           ; $707b: $97
	ld   h, e                                        ; $707c: $63
	inc  sp                                          ; $707d: $33
	inc  h                                           ; $707e: $24
	ld   d, [hl]                                     ; $707f: $56
	ld   a, b                                        ; $7080: $78
	xor  c                                           ; $7081: $a9
	ld   [hl], a                                     ; $7082: $77
	ld   h, l                                        ; $7083: $65
	ld   hl, $1111                                   ; $7084: $21 $11 $11
	ld   de, $8d34                                   ; $7087: $11 $34 $8d
	rst  $38                                         ; $708a: $ff
	rst  $38                                         ; $708b: $ff
	rst  $38                                         ; $708c: $ff
	rst  $38                                         ; $708d: $ff
	rst  $38                                         ; $708e: $ff
	cp   d                                           ; $708f: $ba
	ld   [hl], l                                     ; $7090: $75
	ld   b, d                                        ; $7091: $42
	inc  [hl]                                        ; $7092: $34
	ld   d, [hl]                                     ; $7093: $56
	ld   l, b                                        ; $7094: $68
	sbc  c                                           ; $7095: $99
	sub  a                                           ; $7096: $97
	ld   h, l                                        ; $7097: $65
	ld   sp, $1111                                   ; $7098: $31 $11 $11
	ld   de, $7a13                                   ; $709b: $11 $13 $7a
	rst  $28                                         ; $709e: $ef
	rst  $38                                         ; $709f: $ff
	rst  $38                                         ; $70a0: $ff
	rst  $38                                         ; $70a1: $ff
	rst  $38                                         ; $70a2: $ff
	call c, $6497                                    ; $70a3: $dc $97 $64
	ld   d, l                                        ; $70a6: $55
	ld   d, a                                        ; $70a7: $57
	adc  c                                           ; $70a8: $89
	xor  d                                           ; $70a9: $aa
	or   a                                           ; $70aa: $b7
	ld   h, l                                        ; $70ab: $65
	ld   sp, $1111                                   ; $70ac: $31 $11 $11
	ld   de, $3811                                   ; $70af: $11 $11 $38
	rst  JumpTable                                         ; $70b2: $df
	rst  $38                                         ; $70b3: $ff
	rst  $38                                         ; $70b4: $ff
	rst  $38                                         ; $70b5: $ff
	rst  $38                                         ; $70b6: $ff
	db   $ed                                         ; $70b7: $ed
	cp   b                                           ; $70b8: $b8
	ld   h, [hl]                                     ; $70b9: $66
	ld   h, a                                        ; $70ba: $67
	adc  b                                           ; $70bb: $88
	sbc  e                                           ; $70bc: $9b
	cp   h                                           ; $70bd: $bc
	xor  c                                           ; $70be: $a9
	ld   [hl], h                                     ; $70bf: $74
	ld   sp, $1111                                   ; $70c0: $31 $11 $11
	ld   de, $1411                                   ; $70c3: $11 $11 $14
	sbc  a                                           ; $70c6: $9f
	rst  $38                                         ; $70c7: $ff
	rst  $38                                         ; $70c8: $ff
	rst  $38                                         ; $70c9: $ff
	rst  $38                                         ; $70ca: $ff
	set  1, h                                        ; $70cb: $cb $cc
	and  [hl]                                        ; $70cd: $a6
	ld   [hl], a                                     ; $70ce: $77
	sbc  e                                           ; $70cf: $9b
	res  5, d                                        ; $70d0: $cb $aa
	jp   z, $2196                                    ; $70d2: $ca $96 $21

	ld   de, $1111                                   ; $70d5: $11 $11 $11
	ld   de, $6e11                                   ; $70d8: $11 $11 $6e
	rst  $38                                         ; $70db: $ff
	rst  $38                                         ; $70dc: $ff
	rst  $38                                         ; $70dd: $ff
	rst  $38                                         ; $70de: $ff
	xor  b                                           ; $70df: $a8
	cp   l                                           ; $70e0: $bd
	jp   c, $8d87                                    ; $70e1: $da $87 $8d

	db   $fd                                         ; $70e4: $fd
	cp   c                                           ; $70e5: $b9
	adc  c                                           ; $70e6: $89
	sbc  c                                           ; $70e7: $99
	ld   sp, $1111                                   ; $70e8: $31 $11 $11
	ld   de, $1111                                   ; $70eb: $11 $11 $11
	ld   c, h                                        ; $70ee: $4c
	rst  $38                                         ; $70ef: $ff
	rst  $38                                         ; $70f0: $ff
	rst  $38                                         ; $70f1: $ff
	rst  $38                                         ; $70f2: $ff
	res  3, d                                        ; $70f3: $cb $9a
	cp   l                                           ; $70f5: $bd
	ret  c                                           ; $70f6: $d8

	xor  d                                           ; $70f7: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70f8: $cf
	db   $fc                                         ; $70f9: $fc
	sub  [hl]                                        ; $70fa: $96
	ld   h, h                                        ; $70fb: $64
	ld   b, e                                        ; $70fc: $43
	ld   de, $1111                                   ; $70fd: $11 $11 $11
	ld   de, $6f11                                   ; $7100: $11 $11 $6f
	rst  $38                                         ; $7103: $ff
	rst  $38                                         ; $7104: $ff
	rst  $38                                         ; $7105: $ff
	cp   $da                                         ; $7106: $fe $da
	adc  d                                           ; $7108: $8a
	sbc  e                                           ; $7109: $9b
	jp   z, $dfcb                                    ; $710a: $ca $cb $df

	rst  $38                                         ; $710d: $ff
	and  [hl]                                        ; $710e: $a6
	ld   sp, $1111                                   ; $710f: $31 $11 $11
	ld   de, $1111                                   ; $7112: $11 $11 $11
	dec  d                                           ; $7115: $15
	rst  $38                                         ; $7116: $ff
	rst  $38                                         ; $7117: $ff
	rst  $38                                         ; $7118: $ff
	sbc  $ca                                         ; $7119: $de $ca
	and  a                                           ; $711b: $a7
	adc  c                                           ; $711c: $89
	adc  $ce                                         ; $711d: $ce $ce
	sbc  $ff                                         ; $711f: $de $ff
	ld   [$1163], a                                  ; $7121: $ea $63 $11
	ld   de, $1111                                   ; $7124: $11 $11 $11
	ld   de, $8e11                                   ; $7127: $11 $11 $8e
	rst  $38                                         ; $712a: $ff
	rst  $38                                         ; $712b: $ff
	ld   a, [$bba7]                                  ; $712c: $fa $a7 $bb
	sbc  e                                           ; $712f: $9b
	adc  d                                           ; $7130: $8a
	db   $dd                                         ; $7131: $dd
	rst  $38                                         ; $7132: $ff
	rst  $38                                         ; $7133: $ff
	cp   e                                           ; $7134: $bb
	and  l                                           ; $7135: $a5
	ld   d, c                                        ; $7136: $51
	ld   de, $1111                                   ; $7137: $11 $11 $11
	ld   de, $6f11                                   ; $713a: $11 $11 $6f
	rst  $38                                         ; $713d: $ff
	rst  $38                                         ; $713e: $ff
	ei                                               ; $713f: $fb
	ld   h, a                                        ; $7140: $67
	adc  c                                           ; $7141: $89
	sbc  b                                           ; $7142: $98
	sbc  b                                           ; $7143: $98
	cp   a                                           ; $7144: $bf
	rst  $38                                         ; $7145: $ff
	cp   $eb                                         ; $7146: $fe $eb
	xor  b                                           ; $7148: $a8
	ld   b, e                                        ; $7149: $43
	ld   de, $1111                                   ; $714a: $11 $11 $11
	ld   de, $6f11                                   ; $714d: $11 $11 $6f
	rst  $38                                         ; $7150: $ff
	rst  $38                                         ; $7151: $ff
	db   $db                                         ; $7152: $db
	xor  d                                           ; $7153: $aa
	halt                                             ; $7154: $76
	add  h                                           ; $7155: $84
	adc  l                                           ; $7156: $8d
	rst  JumpTable                                         ; $7157: $df
	rst  $38                                         ; $7158: $ff
	rst  $38                                         ; $7159: $ff
	ei                                               ; $715a: $fb
	or   a                                           ; $715b: $b7
	ld   sp, $1111                                   ; $715c: $31 $11 $11
	ld   de, $1511                                   ; $715f: $11 $11 $15
	rst  $38                                         ; $7162: $ff
	rst  $38                                         ; $7163: $ff
	rst  $38                                         ; $7164: $ff
	xor  e                                           ; $7165: $ab
	xor  c                                           ; $7166: $a9
	ld   [hl], $43                                   ; $7167: $36 $43
	cp   h                                           ; $7169: $bc
	rst  $28                                         ; $716a: $ef
	rst  $38                                         ; $716b: $ff
	rst  $38                                         ; $716c: $ff
	ld   [$1192], a                                  ; $716d: $ea $92 $11
	ld   de, $1111                                   ; $7170: $11 $11 $11
	ld   de, $ff4f                                   ; $7173: $11 $4f $ff
	rst  $38                                         ; $7176: $ff
	ret  c                                           ; $7177: $d8

	add  [hl]                                        ; $7178: $86
	sub  [hl]                                        ; $7179: $96
	ld   h, h                                        ; $717a: $64
	ld   h, $7c                                      ; $717b: $26 $7c
	rst  $38                                         ; $717d: $ff
	rst  $38                                         ; $717e: $ff
	rst  $38                                         ; $717f: $ff
	sub  l                                           ; $7180: $95
	ld   de, $1111                                   ; $7181: $11 $11 $11
	ld   de, $1d11                                   ; $7184: $11 $11 $1d
	rst  $38                                         ; $7187: $ff
	rst  $38                                         ; $7188: $ff
	ei                                               ; $7189: $fb
	inc  hl                                          ; $718a: $23
	ld   d, a                                        ; $718b: $57
	ld   h, l                                        ; $718c: $65
	ld   b, c                                        ; $718d: $41
	add  hl, sp                                      ; $718e: $39
	rst  JumpTable                                         ; $718f: $df
	rst  $38                                         ; $7190: $ff
	rst  $38                                         ; $7191: $ff
	or   e                                           ; $7192: $b3
	ld   de, $1111                                   ; $7193: $11 $11 $11
	ld   de, $1f11                                   ; $7196: $11 $11 $1f
	rst  $38                                         ; $7199: $ff
	rst  $38                                         ; $719a: $ff
	rst  $30                                         ; $719b: $f7
	ld   de, $6746                                   ; $719c: $11 $46 $67
	ld   hl, $ef26                                   ; $719f: $21 $26 $ef
	rst  $38                                         ; $71a2: $ff
	rst  $38                                         ; $71a3: $ff
	ld   [hl], c                                     ; $71a4: $71
	ld   de, $1111                                   ; $71a5: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $71a8: $11 $11 $ff
	rst  $38                                         ; $71ab: $ff
	rst  $38                                         ; $71ac: $ff
	ld   b, c                                        ; $71ad: $41
	inc  de                                          ; $71ae: $13
	ld   h, [hl]                                     ; $71af: $66
	add  c                                           ; $71b0: $81
	ld   de, $ff5e                                   ; $71b1: $11 $5e $ff
	rst  $38                                         ; $71b4: $ff
	di                                               ; $71b5: $f3
	ld   de, $1111                                   ; $71b6: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $71b9: $11 $11 $ff
	rst  $38                                         ; $71bc: $ff
	rst  $38                                         ; $71bd: $ff
	ld   sp, $7913                                   ; $71be: $31 $13 $79
	ld   [hl], c                                     ; $71c1: $71
	ld   de, $ff4f                                   ; $71c2: $11 $4f $ff
	rst  $38                                         ; $71c5: $ff
	pop  bc                                          ; $71c6: $c1
	ld   de, $1111                                   ; $71c7: $11 $11 $11
	ld   de, $ff1f                                   ; $71ca: $11 $1f $ff
	rst  $38                                         ; $71cd: $ff
	ldh  a, [c]                                      ; $71ce: $f2
	ld   de, $b829                                   ; $71cf: $11 $29 $b8
	ld   de, $ef12                                   ; $71d2: $11 $12 $ef
	rst  $38                                         ; $71d5: $ff
	ld   a, [$1111]                                  ; $71d6: $fa $11 $11
	ld   de, $1e11                                   ; $71d9: $11 $11 $1e
	rst  $38                                         ; $71dc: $ff
	rst  $38                                         ; $71dd: $ff
	db   $f4                                         ; $71de: $f4
	ld   de, $eb19                                   ; $71df: $11 $19 $eb
	ld   d, c                                        ; $71e2: $51
	ld   de, $ff9f                                   ; $71e3: $11 $9f $ff
	ld   sp, hl                                      ; $71e6: $f9
	ld   de, $1111                                   ; $71e7: $11 $11 $11
	inc  l                                           ; $71ea: $2c
	rst  $38                                         ; $71eb: $ff
	rst  $38                                         ; $71ec: $ff
	cp   $82                                         ; $71ed: $fe $82
	dec  d                                           ; $71ef: $15
	xor  d                                           ; $71f0: $aa
	and  l                                           ; $71f1: $a5
	ld   de, $ff15                                   ; $71f2: $11 $15 $ff
	ei                                               ; $71f5: $fb
	ld   de, $1e11                                   ; $71f6: $11 $11 $1e
	rst  $38                                         ; $71f9: $ff
	rst  $38                                         ; $71fa: $ff
	add  c                                           ; $71fb: $81
	inc  h                                           ; $71fc: $24
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71fd: $cf
	rst  $38                                         ; $71fe: $ff
	sub  c                                           ; $71ff: $91
	ld   de, $9814                                   ; $7200: $11 $14 $98
	ld   sp, $1a11                                   ; $7203: $31 $11 $1a
	rst  $38                                         ; $7206: $ff
	rst  $38                                         ; $7207: $ff
	ldh  [c], a                                      ; $7208: $e2
	ld   de, $ff6d                                   ; $7209: $11 $6d $ff
	ld   a, [$1131]                                  ; $720c: $fa $31 $11
	ld   de, $1111                                   ; $720f: $11 $11 $11
	cpl                                              ; $7212: $2f
	rst  $38                                         ; $7213: $ff
	rst  $38                                         ; $7214: $ff
	and  l                                           ; $7215: $a5
	ld   de, $de7c                                   ; $7216: $11 $7c $de
	or   l                                           ; $7219: $b5
	ld   b, c                                        ; $721a: $41
	ld   de, $1111                                   ; $721b: $11 $11 $11
	ld   e, $ff                                      ; $721e: $1e $ff
	rst  $38                                         ; $7220: $ff
	ret                                              ; $7221: $c9


	ld   d, e                                        ; $7222: $53
	sbc  [hl]                                        ; $7223: $9e
	rst  JumpTable                                         ; $7224: $df
	push de                                          ; $7225: $d5
	ld   hl, $1111                                   ; $7226: $21 $11 $11
	inc  d                                           ; $7229: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $722a: $cf
	rst  $38                                         ; $722b: $ff
	rst  $38                                         ; $722c: $ff
	ld   [hl], l                                     ; $722d: $75
	inc  h                                           ; $722e: $24
	xor  [hl]                                        ; $722f: $ae
	rst  JumpTable                                         ; $7230: $df
	sub  h                                           ; $7231: $94
	ld   de, $1111                                   ; $7232: $11 $11 $11
	xor  a                                           ; $7235: $af
	rst  $38                                         ; $7236: $ff
	rst  $38                                         ; $7237: $ff
	ld   d, [hl]                                     ; $7238: $56
	dec  d                                           ; $7239: $15
	xor  a                                           ; $723a: $af
	rst  $38                                         ; $723b: $ff
	rst  $30                                         ; $723c: $f7
	ld   sp, $1111                                   ; $723d: $31 $11 $11
	sbc  a                                           ; $7240: $9f
	rst  $38                                         ; $7241: $ff
	rst  $38                                         ; $7242: $ff
	halt                                             ; $7243: $76
	inc  h                                           ; $7244: $24
	adc  h                                           ; $7245: $8c
	rst  $28                                         ; $7246: $ef
	push bc                                          ; $7247: $c5
	ld   de, $1311                                   ; $7248: $11 $11 $13
	rst  $38                                         ; $724b: $ff
	rst  $38                                         ; $724c: $ff
	ld   hl, sp+$31                                  ; $724d: $f8 $31
	ld   d, $be                                      ; $724f: $16 $be
	rst  $38                                         ; $7251: $ff
	add  e                                           ; $7252: $83
	ld   de, $3f11                                   ; $7253: $11 $11 $3f
	rst  $38                                         ; $7256: $ff
	rst  $38                                         ; $7257: $ff
	ld   [hl], c                                     ; $7258: $71
	ld   de, $df6c                                   ; $7259: $11 $6c $df
	or   $11                                         ; $725c: $f6 $11
	ld   de, $ff18                                   ; $725e: $11 $18 $ff
	rst  $38                                         ; $7261: $ff
	ldh  a, [c]                                      ; $7262: $f2
	ld   de, $ef3a                                   ; $7263: $11 $3a $ef
	ei                                               ; $7266: $fb
	ld   sp, $1311                                   ; $7267: $31 $11 $13
	rst  $38                                         ; $726a: $ff
	rst  $38                                         ; $726b: $ff
	db   $f4                                         ; $726c: $f4
	ld   de, $cf15                                   ; $726d: $11 $15 $cf
	rst  $38                                         ; $7270: $ff
	ld   d, c                                        ; $7271: $51
	ld   de, rAUD1LOW                                   ; $7272: $11 $13 $ff
	rst  $38                                         ; $7275: $ff
	di                                               ; $7276: $f3
	ld   de, $df15                                   ; $7277: $11 $15 $df
	db   $fd                                         ; $727a: $fd
	ld   sp, $1711                                   ; $727b: $31 $11 $17
	rst  $38                                         ; $727e: $ff
	rst  $38                                         ; $727f: $ff
	di                                               ; $7280: $f3
	ld   de, $bc15                                   ; $7281: $11 $15 $bc
	ld   [$1111], a                                  ; $7284: $ea $11 $11
	dec  de                                          ; $7287: $1b
	rst  $38                                         ; $7288: $ff
	rst  $38                                         ; $7289: $ff
	pop  de                                          ; $728a: $d1
	ld   de, $df29                                   ; $728b: $11 $29 $df
	rst  $10                                         ; $728e: $d7
	ld   de, $1f11                                   ; $728f: $11 $11 $1f
	rst  $38                                         ; $7292: $ff
	rst  $38                                         ; $7293: $ff
	ld   d, c                                        ; $7294: $51
	ld   de, $ee6c                                   ; $7295: $11 $6c $ee
	sub  c                                           ; $7298: $91
	ld   de, $ef11                                   ; $7299: $11 $11 $ef
	rst  $38                                         ; $729c: $ff
	or   $11                                         ; $729d: $f6 $11
	ld   d, $be                                      ; $729f: $16 $be
	rst  $10                                         ; $72a1: $d7
	ld   de, $2f11                                   ; $72a2: $11 $11 $2f
	rst  $38                                         ; $72a5: $ff
	rst  $38                                         ; $72a6: $ff
	sub  c                                           ; $72a7: $91
	ld   de, $cc4b                                   ; $72a8: $11 $4b $cc
	sub  c                                           ; $72ab: $91
	ld   de, rAUD1HIGH                                   ; $72ac: $11 $14 $ff
	rst  $38                                         ; $72af: $ff
	or   $11                                         ; $72b0: $f6 $11
	rla                                              ; $72b2: $17
	xor  e                                           ; $72b3: $ab
	or   [hl]                                        ; $72b4: $b6
	ld   de, $6f11                                   ; $72b5: $11 $11 $6f
	rst  $38                                         ; $72b8: $ff
	rst  $38                                         ; $72b9: $ff
	ld   d, c                                        ; $72ba: $51
	inc  de                                          ; $72bb: $13
	ld   a, c                                        ; $72bc: $79
	xor  c                                           ; $72bd: $a9
	ld   d, c                                        ; $72be: $51
	ld   de, $ff1a                                   ; $72bf: $11 $1a $ff
	rst  $38                                         ; $72c2: $ff
	sub  e                                           ; $72c3: $93
	ld   [de], a                                     ; $72c4: $12
	ld   a, c                                        ; $72c5: $79
	sbc  b                                           ; $72c6: $98
	ld   d, c                                        ; $72c7: $51
	ld   de, $ff19                                   ; $72c8: $11 $19 $ff
	rst  $38                                         ; $72cb: $ff
	or   [hl]                                        ; $72cc: $b6
	inc  hl                                          ; $72cd: $23
	halt                                             ; $72ce: $76
	add  [hl]                                        ; $72cf: $86
	ld   b, d                                        ; $72d0: $42
	ld   de, $ff17                                   ; $72d1: $11 $17 $ff
	rst  $38                                         ; $72d4: $ff
	rst  ToBoot                                         ; $72d5: $c7
	ld   b, l                                        ; $72d6: $45
	ld   h, a                                        ; $72d7: $67
	add  l                                           ; $72d8: $85
	ld   [hl], d                                     ; $72d9: $72
	ld   de, $df15                                   ; $72da: $11 $15 $df
	rst  $38                                         ; $72dd: $ff
	ei                                               ; $72de: $fb
	inc  [hl]                                        ; $72df: $34
	ld   b, l                                        ; $72e0: $45
	ld   [hl], l                                     ; $72e1: $75
	ld   d, h                                        ; $72e2: $54
	ld   de, $bf14                                   ; $72e3: $11 $14 $bf
	rst  $38                                         ; $72e6: $ff
	ei                                               ; $72e7: $fb
	ld   h, l                                        ; $72e8: $65
	ld   d, l                                        ; $72e9: $55
	ld   [hl], l                                     ; $72ea: $75
	ld   d, e                                        ; $72eb: $53
	ld   de, $ef16                                   ; $72ec: $11 $16 $ef
	rst  $38                                         ; $72ef: $ff
	reti                                             ; $72f0: $d9


	ld   h, [hl]                                     ; $72f1: $66
	ld   h, [hl]                                     ; $72f2: $66
	ld   d, e                                        ; $72f3: $53
	ld   [hl-], a                                    ; $72f4: $32
	ld   [de], a                                     ; $72f5: $12
	add  hl, sp                                      ; $72f6: $39
	rst  $28                                         ; $72f7: $ef
	rst  $38                                         ; $72f8: $ff
	reti                                             ; $72f9: $d9


	ld   [hl], l                                     ; $72fa: $75
	halt                                             ; $72fb: $76
	ld   b, l                                        ; $72fc: $45
	inc  sp                                          ; $72fd: $33
	ld   [hl+], a                                    ; $72fe: $22
	ld   b, a                                        ; $72ff: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7300: $cf
	rst  $38                                         ; $7301: $ff
	add  sp, $54                                     ; $7302: $e8 $54
	ld   b, l                                        ; $7304: $45
	ld   h, l                                        ; $7305: $65
	ld   h, h                                        ; $7306: $64
	inc  hl                                          ; $7307: $23
	ld   c, b                                        ; $7308: $48
	rst  JumpTable                                         ; $7309: $df
	rst  $38                                         ; $730a: $ff
	jp   z, $6584                                    ; $730b: $ca $84 $65

	ld   b, l                                        ; $730e: $45
	ld   b, e                                        ; $730f: $43
	ld   b, l                                        ; $7310: $45
	ld   a, e                                        ; $7311: $7b
	call $9aec                                       ; $7312: $cd $ec $9a
	add  a                                           ; $7315: $87
	add  l                                           ; $7316: $85
	ld   b, h                                        ; $7317: $44
	ld   b, [hl]                                     ; $7318: $46
	sub  a                                           ; $7319: $97
	sbc  c                                           ; $731a: $99
	adc  d                                           ; $731b: $8a
	cp   e                                           ; $731c: $bb
	reti                                             ; $731d: $d9


	adc  b                                           ; $731e: $88
	ld   b, h                                        ; $731f: $44
	ld   d, h                                        ; $7320: $54
	adc  c                                           ; $7321: $89
	ld   a, c                                        ; $7322: $79
	adc  b                                           ; $7323: $88
	ret                                              ; $7324: $c9


	cp   h                                           ; $7325: $bc
	ld   a, c                                        ; $7326: $79
	halt                                             ; $7327: $76
	ld   [hl], a                                     ; $7328: $77
	ld   h, a                                        ; $7329: $67
	ld   [hl], a                                     ; $732a: $77
	sbc  c                                           ; $732b: $99
	adc  d                                           ; $732c: $8a
	xor  c                                           ; $732d: $a9
	cp   c                                           ; $732e: $b9
	ld   a, b                                        ; $732f: $78
	ld   h, [hl]                                     ; $7330: $66
	ld   [hl], l                                     ; $7331: $75
	ld   a, c                                        ; $7332: $79
	ld   a, c                                        ; $7333: $79
	sbc  b                                           ; $7334: $98
	sub  a                                           ; $7335: $97
	adc  c                                           ; $7336: $89
	sbc  d                                           ; $7337: $9a
	ld   [hl], a                                     ; $7338: $77
	halt                                             ; $7339: $76
	adc  b                                           ; $733a: $88
	ld   a, b                                        ; $733b: $78
	ld   a, b                                        ; $733c: $78
	cp   c                                           ; $733d: $b9
	sbc  d                                           ; $733e: $9a
	ld   h, a                                        ; $733f: $67
	halt                                             ; $7340: $76
	sbc  b                                           ; $7341: $98
	ld   l, c                                        ; $7342: $69
	adc  b                                           ; $7343: $88
	and  a                                           ; $7344: $a7
	adc  d                                           ; $7345: $8a
	ld   a, b                                        ; $7346: $78
	and  a                                           ; $7347: $a7
	sbc  b                                           ; $7348: $98
	ld   l, b                                        ; $7349: $68
	ld   [hl], a                                     ; $734a: $77
	sbc  c                                           ; $734b: $99
	ld   a, d                                        ; $734c: $7a
	add  a                                           ; $734d: $87
	sub  [hl]                                        ; $734e: $96
	adc  c                                           ; $734f: $89
	ld   a, c                                        ; $7350: $79
	add  a                                           ; $7351: $87
	sub  a                                           ; $7352: $97
	adc  b                                           ; $7353: $88
	ld   [hl], a                                     ; $7354: $77
	ld   a, b                                        ; $7355: $78
	adc  c                                           ; $7356: $89
	adc  b                                           ; $7357: $88
	sub  a                                           ; $7358: $97
	adc  b                                           ; $7359: $88
	ld   a, c                                        ; $735a: $79
	adc  b                                           ; $735b: $88
	sbc  b                                           ; $735c: $98
	sbc  c                                           ; $735d: $99
	ld   l, b                                        ; $735e: $68
	ld   [hl], a                                     ; $735f: $77
	ld   [hl], a                                     ; $7360: $77
	adc  c                                           ; $7361: $89
	sbc  c                                           ; $7362: $99
	adc  b                                           ; $7363: $88
	adc  b                                           ; $7364: $88
	sbc  c                                           ; $7365: $99
	adc  b                                           ; $7366: $88
	ld   [hl], a                                     ; $7367: $77
	ld   [hl], a                                     ; $7368: $77
	adc  c                                           ; $7369: $89
	sbc  c                                           ; $736a: $99
	sub  a                                           ; $736b: $97
	ld   [hl], a                                     ; $736c: $77
	ld   a, d                                        ; $736d: $7a
	sbc  b                                           ; $736e: $98
	sub  [hl]                                        ; $736f: $96
	ld   a, c                                        ; $7370: $79
	ld   a, d                                        ; $7371: $7a
	adc  b                                           ; $7372: $88
	ld   [hl], a                                     ; $7373: $77
	adc  c                                           ; $7374: $89
	adc  b                                           ; $7375: $88
	add  a                                           ; $7376: $87
	ld   [hl], a                                     ; $7377: $77
	adc  b                                           ; $7378: $88
	sbc  c                                           ; $7379: $99
	sbc  b                                           ; $737a: $98
	ld   a, b                                        ; $737b: $78
	ld   a, b                                        ; $737c: $78
	adc  b                                           ; $737d: $88
	add  a                                           ; $737e: $87
	ld   [hl], a                                     ; $737f: $77
	ld   a, c                                        ; $7380: $79
	sbc  b                                           ; $7381: $98
	sub  [hl]                                        ; $7382: $96
	ld   a, b                                        ; $7383: $78
	ld   a, c                                        ; $7384: $79
	sbc  c                                           ; $7385: $99
	add  a                                           ; $7386: $87
	ld   a, b                                        ; $7387: $78
	sbc  b                                           ; $7388: $98
	sbc  b                                           ; $7389: $98
	ld   a, c                                        ; $738a: $79
	ld   a, b                                        ; $738b: $78
	sbc  b                                           ; $738c: $98
	adc  c                                           ; $738d: $89
	ld   a, b                                        ; $738e: $78
	ld   [hl], a                                     ; $738f: $77
	sub  a                                           ; $7390: $97
	adc  c                                           ; $7391: $89
	sbc  c                                           ; $7392: $99
	ld   [hl], a                                     ; $7393: $77
	ld   [hl], a                                     ; $7394: $77
	ld   a, c                                        ; $7395: $79
	sub  a                                           ; $7396: $97
	sub  a                                           ; $7397: $97
	ld   a, c                                        ; $7398: $79
	adc  c                                           ; $7399: $89
	adc  b                                           ; $739a: $88
	sbc  b                                           ; $739b: $98
	ld   a, b                                        ; $739c: $78
	ld   a, b                                        ; $739d: $78
	ld   [hl], a                                     ; $739e: $77
	ld   [hl], a                                     ; $739f: $77
	sbc  c                                           ; $73a0: $99
	sbc  d                                           ; $73a1: $9a
	sbc  c                                           ; $73a2: $99
	add  a                                           ; $73a3: $87
	add  a                                           ; $73a4: $87
	adc  c                                           ; $73a5: $89
	ld   [hl], a                                     ; $73a6: $77
	halt                                             ; $73a7: $76
	adc  b                                           ; $73a8: $88
	adc  c                                           ; $73a9: $89
	sbc  b                                           ; $73aa: $98
	adc  b                                           ; $73ab: $88
	sbc  c                                           ; $73ac: $99
	adc  b                                           ; $73ad: $88
	add  a                                           ; $73ae: $87
	ld   a, b                                        ; $73af: $78
	adc  b                                           ; $73b0: $88
	add  a                                           ; $73b1: $87
	ld   a, c                                        ; $73b2: $79
	adc  c                                           ; $73b3: $89
	sbc  b                                           ; $73b4: $98
	sbc  b                                           ; $73b5: $98
	sbc  b                                           ; $73b6: $98
	ld   [hl], a                                     ; $73b7: $77
	ld   a, b                                        ; $73b8: $78
	adc  b                                           ; $73b9: $88
	adc  b                                           ; $73ba: $88
	add  a                                           ; $73bb: $87
	adc  b                                           ; $73bc: $88
	adc  b                                           ; $73bd: $88
	sbc  b                                           ; $73be: $98
	sbc  b                                           ; $73bf: $98
	adc  c                                           ; $73c0: $89
	ld   [hl], a                                     ; $73c1: $77
	ld   [hl], a                                     ; $73c2: $77
	sbc  c                                           ; $73c3: $99
	ld   a, c                                        ; $73c4: $79
	ld   [hl], a                                     ; $73c5: $77
	sub  a                                           ; $73c6: $97
	sbc  c                                           ; $73c7: $99
	adc  c                                           ; $73c8: $89
	add  a                                           ; $73c9: $87
	sbc  b                                           ; $73ca: $98
	ld   a, b                                        ; $73cb: $78
	ld   [hl], a                                     ; $73cc: $77
	adc  b                                           ; $73cd: $88
	adc  c                                           ; $73ce: $89
	add  a                                           ; $73cf: $87
	ld   [hl], a                                     ; $73d0: $77
	adc  c                                           ; $73d1: $89
	adc  c                                           ; $73d2: $89
	add  a                                           ; $73d3: $87
	add  a                                           ; $73d4: $87
	ld   a, b                                        ; $73d5: $78
	adc  b                                           ; $73d6: $88
	sbc  b                                           ; $73d7: $98
	adc  b                                           ; $73d8: $88
	ld   a, b                                        ; $73d9: $78
	sbc  b                                           ; $73da: $98
	sbc  b                                           ; $73db: $98
	ld   [hl], a                                     ; $73dc: $77
	ld   [hl], a                                     ; $73dd: $77
	adc  b                                           ; $73de: $88
	adc  b                                           ; $73df: $88
	adc  b                                           ; $73e0: $88
	adc  b                                           ; $73e1: $88
	sbc  c                                           ; $73e2: $99
	adc  b                                           ; $73e3: $88
	ld   [hl], a                                     ; $73e4: $77
	adc  b                                           ; $73e5: $88
	adc  c                                           ; $73e6: $89
	adc  b                                           ; $73e7: $88
	add  a                                           ; $73e8: $87
	adc  b                                           ; $73e9: $88
	ld   a, b                                        ; $73ea: $78
	adc  b                                           ; $73eb: $88
	sbc  b                                           ; $73ec: $98
	adc  b                                           ; $73ed: $88
	ld   a, b                                        ; $73ee: $78
	sbc  b                                           ; $73ef: $98
	sbc  b                                           ; $73f0: $98
	adc  b                                           ; $73f1: $88
	ld   [hl], a                                     ; $73f2: $77
	ld   a, b                                        ; $73f3: $78
	adc  b                                           ; $73f4: $88
	adc  b                                           ; $73f5: $88
	adc  b                                           ; $73f6: $88
	adc  b                                           ; $73f7: $88
	sbc  c                                           ; $73f8: $99
	adc  c                                           ; $73f9: $89
	adc  b                                           ; $73fa: $88
	adc  b                                           ; $73fb: $88
	ld   a, b                                        ; $73fc: $78
	adc  b                                           ; $73fd: $88
	sbc  b                                           ; $73fe: $98
	add  a                                           ; $73ff: $87
	ld   [hl], a                                     ; $7400: $77
	adc  b                                           ; $7401: $88
	sbc  c                                           ; $7402: $99
	sbc  c                                           ; $7403: $99
	adc  b                                           ; $7404: $88
	add  a                                           ; $7405: $87
	adc  b                                           ; $7406: $88
	sbc  b                                           ; $7407: $98
	sbc  b                                           ; $7408: $98
	adc  b                                           ; $7409: $88
	ld   a, b                                        ; $740a: $78
	add  a                                           ; $740b: $87
	adc  b                                           ; $740c: $88
	adc  b                                           ; $740d: $88
	adc  b                                           ; $740e: $88
	add  a                                           ; $740f: $87
	adc  c                                           ; $7410: $89
	sbc  b                                           ; $7411: $98
	adc  b                                           ; $7412: $88
	adc  b                                           ; $7413: $88
	adc  c                                           ; $7414: $89
	adc  b                                           ; $7415: $88
	add  a                                           ; $7416: $87
	ld   a, b                                        ; $7417: $78
	ld   a, b                                        ; $7418: $78
	adc  b                                           ; $7419: $88
	sbc  b                                           ; $741a: $98
	adc  c                                           ; $741b: $89
	adc  b                                           ; $741c: $88
	adc  b                                           ; $741d: $88
	adc  c                                           ; $741e: $89
	adc  b                                           ; $741f: $88
	add  a                                           ; $7420: $87
	adc  b                                           ; $7421: $88
	adc  b                                           ; $7422: $88
	adc  b                                           ; $7423: $88
	adc  b                                           ; $7424: $88
	adc  b                                           ; $7425: $88
	adc  b                                           ; $7426: $88
	adc  b                                           ; $7427: $88
	adc  b                                           ; $7428: $88
	adc  b                                           ; $7429: $88
	adc  c                                           ; $742a: $89
	sbc  b                                           ; $742b: $98
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
	sbc  c                                           ; $7436: $99
	adc  b                                           ; $7437: $88
	ld   [hl], a                                     ; $7438: $77
	ld   [hl], a                                     ; $7439: $77
	adc  c                                           ; $743a: $89
	sbc  c                                           ; $743b: $99
	add  a                                           ; $743c: $87
	adc  b                                           ; $743d: $88
	adc  b                                           ; $743e: $88
	adc  b                                           ; $743f: $88
	adc  b                                           ; $7440: $88
	adc  b                                           ; $7441: $88
	adc  b                                           ; $7442: $88
	add  a                                           ; $7443: $87
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
	sbc  b                                           ; $7453: $98
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
	ld   de, $1111                                   ; $7473: $11 $11 $11
	ld   de, $1111                                   ; $7476: $11 $11 $11
	ld   de, $1111                                   ; $7479: $11 $11 $11
	ld   de, $1111                                   ; $747c: $11 $11 $11
	ld   de, $1111                                   ; $747f: $11 $11 $11
	ld   de, $1111                                   ; $7482: $11 $11 $11
	ld   de, $1111                                   ; $7485: $11 $11 $11
	ld   de, $1111                                   ; $7488: $11 $11 $11
	ld   de, $1111                                   ; $748b: $11 $11 $11
	ld   de, $1111                                   ; $748e: $11 $11 $11
	ld   de, $1111                                   ; $7491: $11 $11 $11
	ld   de, $1111                                   ; $7494: $11 $11 $11
	ld   de, $1111                                   ; $7497: $11 $11 $11
	ld   de, $1111                                   ; $749a: $11 $11 $11
	ld   de, $4800                                   ; $749d: $11 $00 $48
	ld   de, $1111                                   ; $74a0: $11 $11 $11
	ld   de, $1111                                   ; $74a3: $11 $11 $11
	ld   de, $1111                                   ; $74a6: $11 $11 $11
	ld   de, $5413                                   ; $74a9: $11 $13 $54
	ld   d, h                                        ; $74ac: $54
	ld   d, h                                        ; $74ad: $54
	ld   b, c                                        ; $74ae: $41
	rra                                              ; $74af: $1f
	rst  $38                                         ; $74b0: $ff
	pop  af                                          ; $74b1: $f1
	ld   de, $1511                                   ; $74b2: $11 $11 $15
	ld   de, $1c11                                   ; $74b5: $11 $11 $1c
	rst  JumpTable                                         ; $74b8: $df
	sbc  h                                           ; $74b9: $9c
	rst  JumpTable                                         ; $74ba: $df
	sub  c                                           ; $74bb: $91
	ld   de, $1111                                   ; $74bc: $11 $11 $11
	ld   de, $1111                                   ; $74bf: $11 $11 $11
	ld   de, $1111                                   ; $74c2: $11 $11 $11
	ld   de, $1111                                   ; $74c5: $11 $11 $11
	ld   de, $5411                                   ; $74c8: $11 $11 $54
	ld   b, h                                        ; $74cb: $44
	push af                                          ; $74cc: $f5
	ld   de, $5454                                   ; $74cd: $11 $54 $54
	ld   h, a                                        ; $74d0: $67
	ld   [hl], d                                     ; $74d1: $72
	ld   de, $1111                                   ; $74d2: $11 $11 $11
	ld   de, $1112                                   ; $74d5: $11 $12 $11
	ld   [de], a                                     ; $74d8: $12
	ld   de, $1111                                   ; $74d9: $11 $11 $11
	ld   h, [hl]                                     ; $74dc: $66
	halt                                             ; $74dd: $76
	push hl                                          ; $74de: $e5
	ld   de, $9988                                   ; $74df: $11 $88 $99

jr_0da_74e2:
	ld   a, b                                        ; $74e2: $78
	sbc  b                                           ; $74e3: $98
	ld   a, c                                        ; $74e4: $79
	sbc  b                                           ; $74e5: $98
	sbc  c                                           ; $74e6: $99
	ret                                              ; $74e7: $c9


	ld   h, a                                        ; $74e8: $67
	ld   a, d                                        ; $74e9: $7a
	xor  b                                           ; $74ea: $a8
	sbc  d                                           ; $74eb: $9a
	ld   [hl], l                                     ; $74ec: $75
	ld   l, b                                        ; $74ed: $68
	and  a                                           ; $74ee: $a7
	ld   a, c                                        ; $74ef: $79
	adc  b                                           ; $74f0: $88
	ld   a, d                                        ; $74f1: $7a
	sbc  c                                           ; $74f2: $99
	xor  c                                           ; $74f3: $a9
	add  a                                           ; $74f4: $87
	sbc  c                                           ; $74f5: $99
	cp   c                                           ; $74f6: $b9
	ld   a, c                                        ; $74f7: $79
	add  [hl]                                        ; $74f8: $86
	ld   d, [hl]                                     ; $74f9: $56
	ld   a, e                                        ; $74fa: $7b
	add  [hl]                                        ; $74fb: $86
	adc  b                                           ; $74fc: $88
	ld   [hl], a                                     ; $74fd: $77
	add  a                                           ; $74fe: $87
	cp   c                                           ; $74ff: $b9
	adc  c                                           ; $7500: $89
	ld   l, b                                        ; $7501: $68
	ld   h, [hl]                                     ; $7502: $66
	add  a                                           ; $7503: $87
	ld   [hl], a                                     ; $7504: $77
	add  a                                           ; $7505: $87
	sub  a                                           ; $7506: $97
	adc  c                                           ; $7507: $89
	ld   a, b                                        ; $7508: $78
	adc  b                                           ; $7509: $88
	ld   a, b                                        ; $750a: $78
	add  a                                           ; $750b: $87
	adc  b                                           ; $750c: $88
	ld   [hl], a                                     ; $750d: $77
	ld   [hl], a                                     ; $750e: $77
	sbc  b                                           ; $750f: $98
	ld   [hl], a                                     ; $7510: $77
	ld   a, c                                        ; $7511: $79
	add  [hl]                                        ; $7512: $86
	sbc  c                                           ; $7513: $99
	ld   h, a                                        ; $7514: $67
	halt                                             ; $7515: $76
	sub  [hl]                                        ; $7516: $96
	ld   h, a                                        ; $7517: $67
	ld   h, a                                        ; $7518: $67
	add  a                                           ; $7519: $87
	ld   [hl], a                                     ; $751a: $77
	sbc  d                                           ; $751b: $9a
	halt                                             ; $751c: $76
	ld   a, c                                        ; $751d: $79
	add  [hl]                                        ; $751e: $86
	ld   h, a                                        ; $751f: $67
	ld   [hl], a                                     ; $7520: $77
	ld   d, h                                        ; $7521: $54
	ld   a, d                                        ; $7522: $7a
	add  h                                           ; $7523: $84
	ld   a, c                                        ; $7524: $79
	sub  l                                           ; $7525: $95
	ld   l, c                                        ; $7526: $69
	adc  c                                           ; $7527: $89
	add  a                                           ; $7528: $87
	ld   a, c                                        ; $7529: $79
	sub  a                                           ; $752a: $97
	xor  c                                           ; $752b: $a9
	ld   l, h                                        ; $752c: $6c
	and  e                                           ; $752d: $a3
	ld   l, c                                        ; $752e: $69
	ld   b, l                                        ; $752f: $45
	ld   sp, $2116                                   ; $7530: $31 $16 $21
	inc  d                                           ; $7533: $14
	ld   de, $9f18                                   ; $7534: $11 $18 $9f
	rst  $38                                         ; $7537: $ff
	rst  $38                                         ; $7538: $ff
	rst  $38                                         ; $7539: $ff
	rst  $38                                         ; $753a: $ff
	cp   $d7                                         ; $753b: $fe $d7
	ld   de, $1111                                   ; $753d: $11 $11 $11
	ld   de, $df11                                   ; $7540: $11 $11 $df
	rst  $38                                         ; $7543: $ff
	rst  $38                                         ; $7544: $ff
	rst  $38                                         ; $7545: $ff
	rst  $38                                         ; $7546: $ff
	rst  $38                                         ; $7547: $ff
	ld   b, c                                        ; $7548: $41
	ld   de, $1111                                   ; $7549: $11 $11 $11
	ld   de, $7fbc                                   ; $754c: $11 $bc $7f
	rst  $38                                         ; $754f: $ff
	rst  $38                                         ; $7550: $ff
	rst  $38                                         ; $7551: $ff
	db   $fd                                         ; $7552: $fd
	ld   a, b                                        ; $7553: $78
	ld   sp, $1111                                   ; $7554: $31 $11 $11
	ld   de, rAUD1LEN                                   ; $7557: $11 $11 $ff
	sbc  a                                           ; $755a: $9f
	rst  $38                                         ; $755b: $ff
	rst  $38                                         ; $755c: $ff
	rst  $38                                         ; $755d: $ff
	rst  $38                                         ; $755e: $ff
	jr   jr_0da_74e2                                 ; $755f: $18 $81

	ld   de, $1111                                   ; $7561: $11 $11 $11
	ld   de, $6fff                                   ; $7564: $11 $ff $6f
	rst  $38                                         ; $7567: $ff
	rst  $38                                         ; $7568: $ff
	rst  $38                                         ; $7569: $ff
	rst  $38                                         ; $756a: $ff
	scf                                              ; $756b: $37
	sub  c                                           ; $756c: $91
	ld   de, $1111                                   ; $756d: $11 $11 $11
	ld   de, $ca2f                                   ; $7570: $11 $2f $ca
	rst  $38                                         ; $7573: $ff
	rst  $38                                         ; $7574: $ff
	rst  $38                                         ; $7575: $ff
	rst  $38                                         ; $7576: $ff
	ld   h, c                                        ; $7577: $61
	jp   $1111                                       ; $7578: $c3 $11 $11


	ld   de, $1111                                   ; $757b: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $757e: $cf
	ld   a, a                                        ; $757f: $7f
	rst  $38                                         ; $7580: $ff
	rst  $38                                         ; $7581: $ff
	rst  $38                                         ; $7582: $ff
	db   $fd                                         ; $7583: $fd
	ld   c, b                                        ; $7584: $48
	ld   h, c                                        ; $7585: $61
	ld   de, $1111                                   ; $7586: $11 $11 $11
	ld   de, $cf11                                   ; $7589: $11 $11 $cf
	ld   a, a                                        ; $758c: $7f
	rst  $38                                         ; $758d: $ff
	rst  $38                                         ; $758e: $ff
	rst  $38                                         ; $758f: $ff
	rst  $38                                         ; $7590: $ff
	ld   b, [hl]                                     ; $7591: $46
	sub  c                                           ; $7592: $91
	ld   de, $1111                                   ; $7593: $11 $11 $11
	ld   de, $1f11                                   ; $7596: $11 $11 $1f
	or   $ff                                         ; $7599: $f6 $ff
	rst  $38                                         ; $759b: $ff
	rst  $38                                         ; $759c: $ff
	rst  $38                                         ; $759d: $ff
	ldh  a, [c]                                      ; $759e: $f2
	ld   a, e                                        ; $759f: $7b
	ld   de, $1111                                   ; $75a0: $11 $11 $11
	ld   de, $1111                                   ; $75a3: $11 $11 $11
	ld   sp, hl                                      ; $75a6: $f9
	ld   a, a                                        ; $75a7: $7f
	rst  $38                                         ; $75a8: $ff
	rst  $38                                         ; $75a9: $ff
	rst  $38                                         ; $75aa: $ff
	rst  $30                                         ; $75ab: $f7
	dec  de                                          ; $75ac: $1b
	ld   b, c                                        ; $75ad: $41
	ld   de, $1111                                   ; $75ae: $11 $11 $11
	ld   de, $3f11                                   ; $75b1: $11 $11 $3f
	sub  l                                           ; $75b4: $95
	rst  $38                                         ; $75b5: $ff
	rst  $38                                         ; $75b6: $ff
	rst  $38                                         ; $75b7: $ff
	rst  $38                                         ; $75b8: $ff
	add  c                                           ; $75b9: $81
	or   l                                           ; $75ba: $b5
	ld   de, $1111                                   ; $75bb: $11 $11 $11
	ld   de, $1111                                   ; $75be: $11 $11 $11
	rst  $38                                         ; $75c1: $ff
	xor  a                                           ; $75c2: $af
	rst  $38                                         ; $75c3: $ff
	rst  $38                                         ; $75c4: $ff
	rst  $38                                         ; $75c5: $ff
	db   $fd                                         ; $75c6: $fd
	dec  d                                           ; $75c7: $15
	ld   b, c                                        ; $75c8: $41
	ld   de, $1111                                   ; $75c9: $11 $11 $11
	ld   de, $1d31                                   ; $75cc: $11 $31 $1d
	rst  $38                                         ; $75cf: $ff
	rst  $38                                         ; $75d0: $ff
	rst  $38                                         ; $75d1: $ff
	rst  $38                                         ; $75d2: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75d3: $cf
	pop  af                                          ; $75d4: $f1
	ld   d, $11                                      ; $75d5: $16 $11
	ld   de, $1111                                   ; $75d7: $11 $11 $11
	ld   de, $1f11                                   ; $75da: $11 $11 $1f
	rst  $38                                         ; $75dd: $ff
	rst  $38                                         ; $75de: $ff
	rst  $38                                         ; $75df: $ff
	rst  $38                                         ; $75e0: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75e1: $cf
	add  c                                           ; $75e2: $81
	ld   de, $1111                                   ; $75e3: $11 $11 $11
	ld   de, $1111                                   ; $75e6: $11 $11 $11
	ld   de, $ffff                                   ; $75e9: $11 $ff $ff
	rst  $38                                         ; $75ec: $ff
	rst  $38                                         ; $75ed: $ff
	rst  $38                                         ; $75ee: $ff
	db   $fd                                         ; $75ef: $fd
	ld   de, $1141                                   ; $75f0: $11 $41 $11
	inc  d                                           ; $75f3: $14
	ld   de, $1111                                   ; $75f4: $11 $11 $11
	ld   [de], a                                     ; $75f7: $12
	rst  $38                                         ; $75f8: $ff
	rst  $28                                         ; $75f9: $ef
	rst  $38                                         ; $75fa: $ff
	rst  $38                                         ; $75fb: $ff
	db   $fc                                         ; $75fc: $fc
	db   $f4                                         ; $75fd: $f4
	ld   de, $1111                                   ; $75fe: $11 $11 $11
	jr   z, @-$5d                                    ; $7601: $28 $a1

	dec  de                                          ; $7603: $1b
	and  c                                           ; $7604: $a1
	ld   de, $c2bf                                   ; $7605: $11 $bf $c2
	rst  $38                                         ; $7608: $ff
	rst  $38                                         ; $7609: $ff
	rst  JumpTable                                         ; $760a: $df
	rst  $38                                         ; $760b: $ff
	ld   d, c                                        ; $760c: $51
	add  [hl]                                        ; $760d: $86
	ld   de, $2112                                   ; $760e: $11 $12 $21
	ld   de, $1112                                   ; $7611: $11 $12 $11
	ld   l, a                                        ; $7614: $6f
	ld   hl, sp-$01                                  ; $7615: $f8 $ff
	rst  $38                                         ; $7617: $ff
	cp   a                                           ; $7618: $bf
	rst  $38                                         ; $7619: $ff
	ld   d, c                                        ; $761a: $51
	ld   b, d                                        ; $761b: $42
	ld   de, $9915                                   ; $761c: $11 $15 $99
	jp   z, Jump_0da_41ab                            ; $761f: $ca $ab $41

	ld   de, $a11d                                   ; $7622: $11 $1d $a1
	rst  JumpTable                                         ; $7625: $df
	rst  $38                                         ; $7626: $ff
	rst  $38                                         ; $7627: $ff
	rst  $38                                         ; $7628: $ff
	pop  de                                          ; $7629: $d1
	sub  e                                           ; $762a: $93
	ld   de, $1111                                   ; $762b: $11 $11 $11
	ld   de, $2119                                   ; $762e: $11 $19 $21
	ld   d, $ff                                      ; $7631: $16 $ff
	ld   l, l                                        ; $7633: $6d
	rst  $38                                         ; $7634: $ff
	rst  $30                                         ; $7635: $f7
	rst  $38                                         ; $7636: $ff
	xor  d                                           ; $7637: $aa
	inc  d                                           ; $7638: $14
	sub  c                                           ; $7639: $91
	dec  [hl]                                        ; $763a: $35
	cp   [hl]                                        ; $763b: $be
	and  a                                           ; $763c: $a7
	ld   d, c                                        ; $763d: $51
	ld   sp, $1111                                   ; $763e: $31 $11 $11
	rra                                              ; $7641: $1f
	cp   $ff                                         ; $7642: $fe $ff
	rst  $38                                         ; $7644: $ff
	rst  $38                                         ; $7645: $ff
	cp   a                                           ; $7646: $bf
	ld   de, $1111                                   ; $7647: $11 $11 $11
	ld   a, [de]                                     ; $764a: $1a
	ld   a, h                                        ; $764b: $7c
	ld   a, [$23ff]                                  ; $764c: $fa $ff $23
	ld   de, $e111                                   ; $764f: $11 $11 $e1
	rra                                              ; $7652: $1f
	rst  $38                                         ; $7653: $ff
	rst  $38                                         ; $7654: $ff
	rst  $38                                         ; $7655: $ff
	ld   a, [$1176]                                  ; $7656: $fa $76 $11
	ld   de, $1111                                   ; $7659: $11 $11 $11
	ld   de, $2124                                   ; $765c: $11 $24 $21
	ld   d, $ff                                      ; $765f: $16 $ff
	ld   e, a                                        ; $7661: $5f
	rst  $38                                         ; $7662: $ff
	db   $fd                                         ; $7663: $fd
	ld   a, [$14d5]                                  ; $7664: $fa $d5 $14
	ld   de, $fe11                                   ; $7667: $11 $11 $fe
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $766a: $cf
	rst  $38                                         ; $766b: $ff
	jp   $1121                                       ; $766c: $c3 $21 $11


	ld   de, $671d                                   ; $766f: $11 $1d $67
	rst  $38                                         ; $7672: $ff
	rst  $38                                         ; $7673: $ff
	rst  $38                                         ; $7674: $ff
	cp   $31                                         ; $7675: $fe $31
	ld   de, $1911                                   ; $7677: $11 $11 $19
	adc  $ff                                         ; $767a: $ce $ff
	rst  $38                                         ; $767c: $ff
	and  c                                           ; $767d: $a1
	ld   de, $1811                                   ; $767e: $11 $11 $18
	ld   [hl], c                                     ; $7681: $71
	rst  JumpTable                                         ; $7682: $df
	rst  $38                                         ; $7683: $ff
	rst  $38                                         ; $7684: $ff
	rst  $38                                         ; $7685: $ff
	pop  af                                          ; $7686: $f1
	ld   de, $1311                                   ; $7687: $11 $11 $13
	xor  c                                           ; $768a: $a9
	sbc  h                                           ; $768b: $9c
	db   $fd                                         ; $768c: $fd
	and  [hl]                                        ; $768d: $a6
	ld   hl, $1111                                   ; $768e: $21 $11 $11
	push af                                          ; $7691: $f5
	ld   c, a                                        ; $7692: $4f
	rst  $38                                         ; $7693: $ff
	rst  $38                                         ; $7694: $ff
	rst  $38                                         ; $7695: $ff
	push af                                          ; $7696: $f5
	ld   de, $1111                                   ; $7697: $11 $11 $11
	adc  $df                                         ; $769a: $ce $df
	rst  $38                                         ; $769c: $ff
	db   $fd                                         ; $769d: $fd
	or   h                                           ; $769e: $b4
	ld   de, $1111                                   ; $769f: $11 $11 $11
	ld   de, $ff19                                   ; $76a2: $11 $19 $ff
	rst  $38                                         ; $76a5: $ff
	rst  $38                                         ; $76a6: $ff
	rst  $38                                         ; $76a7: $ff
	ret  c                                           ; $76a8: $d8

	ld   d, c                                        ; $76a9: $51
	ld   de, $5515                                   ; $76aa: $11 $15 $55
	sbc  h                                           ; $76ad: $9c
	or   l                                           ; $76ae: $b5
	ld   [hl+], a                                    ; $76af: $22
	ld   hl, $1111                                   ; $76b0: $21 $11 $11
	call c, $ff5f                                    ; $76b3: $dc $5f $ff
	rst  $38                                         ; $76b6: $ff
	rst  $38                                         ; $76b7: $ff
	ld   hl, sp+$31                                  ; $76b8: $f8 $31
	ld   de, $7c11                                   ; $76ba: $11 $11 $7c
	rst  $28                                         ; $76bd: $ef
	rst  $38                                         ; $76be: $ff
	rst  $38                                         ; $76bf: $ff
	ld   a, [$1171]                                  ; $76c0: $fa $71 $11
	ld   de, $1211                                   ; $76c3: $11 $11 $12
	db   $fc                                         ; $76c6: $fc
	rst  $38                                         ; $76c7: $ff
	rst  $38                                         ; $76c8: $ff
	rst  $38                                         ; $76c9: $ff
	rst  $38                                         ; $76ca: $ff
	pop  hl                                          ; $76cb: $e1
	ld   de, $1111                                   ; $76cc: $11 $11 $11
	xor  h                                           ; $76cf: $ac
	rst  $38                                         ; $76d0: $ff
	rst  $38                                         ; $76d1: $ff
	rst  $38                                         ; $76d2: $ff
	sub  $11                                         ; $76d3: $d6 $11
	ld   de, $1111                                   ; $76d5: $11 $11 $11
	set  7, a                                        ; $76d8: $cb $ff
	rst  $38                                         ; $76da: $ff
	rst  $38                                         ; $76db: $ff
	rst  $38                                         ; $76dc: $ff
	jp   $1111                                       ; $76dd: $c3 $11 $11


	ld   de, $ff5c                                   ; $76e0: $11 $5c $ff
	rst  $38                                         ; $76e3: $ff
	rst  $38                                         ; $76e4: $ff
	rst  $38                                         ; $76e5: $ff
	and  c                                           ; $76e6: $a1
	ld   de, $1111                                   ; $76e7: $11 $11 $11
	ld   de, $ffb9                                   ; $76ea: $11 $b9 $ff
	rst  $38                                         ; $76ed: $ff
	rst  $38                                         ; $76ee: $ff
	rst  $38                                         ; $76ef: $ff
	push af                                          ; $76f0: $f5
	ld   de, $1111                                   ; $76f1: $11 $11 $11
	jr   z, @-$3f                                    ; $76f4: $28 $bf

	rst  $38                                         ; $76f6: $ff
	rst  $38                                         ; $76f7: $ff
	rst  $38                                         ; $76f8: $ff
	db   $d3                                         ; $76f9: $d3
	ld   de, $1111                                   ; $76fa: $11 $11 $11
	ld   de, $ff68                                   ; $76fd: $11 $68 $ff
	rst  $38                                         ; $7700: $ff
	rst  $38                                         ; $7701: $ff
	rst  $38                                         ; $7702: $ff
	ld   hl, sp+$11                                  ; $7703: $f8 $11
	ld   de, $1111                                   ; $7705: $11 $11 $11
	ld   a, a                                        ; $7708: $7f
	rst  $38                                         ; $7709: $ff
	rst  $38                                         ; $770a: $ff
	rst  $38                                         ; $770b: $ff
	ld   sp, hl                                      ; $770c: $f9
	ld   de, $1111                                   ; $770d: $11 $11 $11
	ld   de, $af11                                   ; $7710: $11 $11 $af
	rst  $38                                         ; $7713: $ff
	rst  $38                                         ; $7714: $ff
	rst  $38                                         ; $7715: $ff
	rst  $38                                         ; $7716: $ff
	ld   [hl], c                                     ; $7717: $71
	ld   de, $1111                                   ; $7718: $11 $11 $11
	ld   d, $ff                                      ; $771b: $16 $ff
	rst  $38                                         ; $771d: $ff
	rst  $38                                         ; $771e: $ff
	rst  $38                                         ; $771f: $ff
	add  c                                           ; $7720: $81
	ld   de, $1111                                   ; $7721: $11 $11 $11
	ld   de, $ff19                                   ; $7724: $11 $19 $ff
	rst  $38                                         ; $7727: $ff
	rst  $38                                         ; $7728: $ff
	rst  $38                                         ; $7729: $ff
	db   $fc                                         ; $772a: $fc
	ld   h, h                                        ; $772b: $64
	ld   de, $1111                                   ; $772c: $11 $11 $11
	add  hl, hl                                      ; $772f: $29
	rst  $28                                         ; $7730: $ef
	rst  $38                                         ; $7731: $ff
	rst  $38                                         ; $7732: $ff
	db   $fc                                         ; $7733: $fc
	ld   d, c                                        ; $7734: $51
	ld   de, $1111                                   ; $7735: $11 $11 $11
	ld   de, $ff3d                                   ; $7738: $11 $3d $ff
	rst  $38                                         ; $773b: $ff
	rst  $38                                         ; $773c: $ff
	rst  $38                                         ; $773d: $ff
	db   $fd                                         ; $773e: $fd
	or   c                                           ; $773f: $b1
	ld   de, $1111                                   ; $7740: $11 $11 $11
	ld   b, a                                        ; $7743: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7744: $cf
	rst  $38                                         ; $7745: $ff
	rst  $38                                         ; $7746: $ff
	ei                                               ; $7747: $fb
	ld   h, c                                        ; $7748: $61
	ld   de, $1111                                   ; $7749: $11 $11 $11
	ld   de, $ff4e                                   ; $774c: $11 $4e $ff
	rst  $38                                         ; $774f: $ff
	rst  $38                                         ; $7750: $ff
	rst  $38                                         ; $7751: $ff
	rst  $38                                         ; $7752: $ff
	or   d                                           ; $7753: $b2
	ld   de, $1111                                   ; $7754: $11 $11 $11
	inc  h                                           ; $7757: $24
	cp   [hl]                                        ; $7758: $be
	rst  $38                                         ; $7759: $ff
	rst  $38                                         ; $775a: $ff
	db   $ec                                         ; $775b: $ec
	and  h                                           ; $775c: $a4
	ld   de, $1111                                   ; $775d: $11 $11 $11
	ld   de, $cb15                                   ; $7760: $11 $15 $cb
	rst  $28                                         ; $7763: $ef
	rst  $38                                         ; $7764: $ff
	rst  $38                                         ; $7765: $ff
	rst  $38                                         ; $7766: $ff
	db   $fd                                         ; $7767: $fd
	add  l                                           ; $7768: $85
	ld   d, e                                        ; $7769: $53
	ld   de, $3722                                   ; $776a: $11 $22 $37
	sbc  c                                           ; $776d: $99
	call $aada                                       ; $776e: $cd $da $aa
	ld   [hl], e                                     ; $7771: $73
	ld   de, $1111                                   ; $7772: $11 $11 $11
	ld   de, $7615                                   ; $7775: $11 $15 $76
	rst  $28                                         ; $7778: $ef
	rst  $38                                         ; $7779: $ff
	rst  $38                                         ; $777a: $ff
	rst  $38                                         ; $777b: $ff
	cp   $ca                                         ; $777c: $fe $ca
	and  l                                           ; $777e: $a5
	ld   d, l                                        ; $777f: $55
	ld   d, l                                        ; $7780: $55
	ld   l, c                                        ; $7781: $69
	ld   a, d                                        ; $7782: $7a
	cp   e                                           ; $7783: $bb
	sbc  c                                           ; $7784: $99
	xor  b                                           ; $7785: $a8
	halt                                             ; $7786: $76

Jump_0da_7787:
	ld   d, h                                        ; $7787: $54
	ld   hl, $1211                                   ; $7788: $21 $11 $12
	ld   de, $6615                                   ; $778b: $11 $15 $66
	sbc  h                                           ; $778e: $9c
	call $efef                                       ; $778f: $cd $ef $ef
	rst  $38                                         ; $7792: $ff
	db   $dd                                         ; $7793: $dd
	db   $eb                                         ; $7794: $eb
	xor  b                                           ; $7795: $a8
	add  a                                           ; $7796: $87
	ld   a, c                                        ; $7797: $79
	ld   [hl], a                                     ; $7798: $77
	ld   l, b                                        ; $7799: $68
	ld   [hl], a                                     ; $779a: $77
	sbc  c                                           ; $779b: $99
	sbc  b                                           ; $779c: $98
	sbc  c                                           ; $779d: $99
	adc  d                                           ; $779e: $8a
	add  a                                           ; $779f: $87
	ld   h, [hl]                                     ; $77a0: $66
	ld   d, e                                        ; $77a1: $53
	inc  sp                                          ; $77a2: $33
	ld   de, $2312                                   ; $77a3: $11 $12 $23
	ld   h, a                                        ; $77a6: $67
	sbc  e                                           ; $77a7: $9b
	db   $dd                                         ; $77a8: $dd
	rst  JumpTable                                         ; $77a9: $df
	xor  $cb                                         ; $77aa: $ee $cb
	xor  b                                           ; $77ac: $a8
	halt                                             ; $77ad: $76
	add  a                                           ; $77ae: $87
	ld   a, b                                        ; $77af: $78
	adc  c                                           ; $77b0: $89
	adc  d                                           ; $77b1: $8a
	xor  c                                           ; $77b2: $a9
	cp   d                                           ; $77b3: $ba
	xor  c                                           ; $77b4: $a9
	xor  c                                           ; $77b5: $a9
	xor  b                                           ; $77b6: $a8
	sbc  b                                           ; $77b7: $98
	sbc  c                                           ; $77b8: $99
	ld   [hl], a                                     ; $77b9: $77
	ld   [hl], a                                     ; $77ba: $77
	ld   [hl], l                                     ; $77bb: $75
	ld   d, h                                        ; $77bc: $54
	ld   b, e                                        ; $77bd: $43
	inc  sp                                          ; $77be: $33
	inc  [hl]                                        ; $77bf: $34
	ld   d, l                                        ; $77c0: $55
	ld   h, a                                        ; $77c1: $67
	adc  b                                           ; $77c2: $88
	sbc  c                                           ; $77c3: $99
	xor  d                                           ; $77c4: $aa
	cp   e                                           ; $77c5: $bb
	xor  d                                           ; $77c6: $aa
	xor  c                                           ; $77c7: $a9
	sbc  c                                           ; $77c8: $99
	sbc  c                                           ; $77c9: $99
	sbc  d                                           ; $77ca: $9a
	xor  c                                           ; $77cb: $a9
	sbc  c                                           ; $77cc: $99
	xor  c                                           ; $77cd: $a9
	sbc  c                                           ; $77ce: $99
	xor  c                                           ; $77cf: $a9
	xor  c                                           ; $77d0: $a9
	adc  b                                           ; $77d1: $88
	sbc  c                                           ; $77d2: $99
	ld   [hl], a                                     ; $77d3: $77
	ld   [hl], a                                     ; $77d4: $77
	halt                                             ; $77d5: $76
	ld   h, [hl]                                     ; $77d6: $66
	ld   h, l                                        ; $77d7: $65
	ld   d, h                                        ; $77d8: $54
	ld   b, h                                        ; $77d9: $44
	ld   b, h                                        ; $77da: $44
	ld   b, l                                        ; $77db: $45
	ld   h, [hl]                                     ; $77dc: $66
	ld   a, b                                        ; $77dd: $78
	sbc  c                                           ; $77de: $99
	sbc  d                                           ; $77df: $9a
	cp   d                                           ; $77e0: $ba
	xor  e                                           ; $77e1: $ab
	xor  e                                           ; $77e2: $ab
	xor  d                                           ; $77e3: $aa
	xor  c                                           ; $77e4: $a9
	sbc  c                                           ; $77e5: $99
	sbc  b                                           ; $77e6: $98
	sbc  c                                           ; $77e7: $99
	sbc  b                                           ; $77e8: $98
	adc  b                                           ; $77e9: $88
	adc  b                                           ; $77ea: $88
	adc  b                                           ; $77eb: $88
	adc  b                                           ; $77ec: $88
	adc  b                                           ; $77ed: $88
	add  a                                           ; $77ee: $87
	adc  b                                           ; $77ef: $88
	add  a                                           ; $77f0: $87
	adc  b                                           ; $77f1: $88
	adc  b                                           ; $77f2: $88
	adc  b                                           ; $77f3: $88
	adc  b                                           ; $77f4: $88
	ld   [hl], a                                     ; $77f5: $77
	ld   [hl], a                                     ; $77f6: $77
	ld   h, [hl]                                     ; $77f7: $66
	ld   h, [hl]                                     ; $77f8: $66
	ld   h, a                                        ; $77f9: $67
	ld   [hl], a                                     ; $77fa: $77
	adc  b                                           ; $77fb: $88
	adc  c                                           ; $77fc: $89
	sbc  c                                           ; $77fd: $99
	sbc  c                                           ; $77fe: $99
	sbc  b                                           ; $77ff: $98
	sbc  b                                           ; $7800: $98
	adc  b                                           ; $7801: $88
	adc  b                                           ; $7802: $88
	adc  b                                           ; $7803: $88
	adc  b                                           ; $7804: $88
	sbc  b                                           ; $7805: $98
	adc  b                                           ; $7806: $88
	adc  b                                           ; $7807: $88
	ld   [hl], a                                     ; $7808: $77
	ld   [hl], a                                     ; $7809: $77
	ld   [hl], a                                     ; $780a: $77
	ld   [hl], a                                     ; $780b: $77
	adc  b                                           ; $780c: $88
	adc  b                                           ; $780d: $88
	sbc  c                                           ; $780e: $99
	sbc  c                                           ; $780f: $99
	sbc  c                                           ; $7810: $99
	sbc  c                                           ; $7811: $99
	sbc  b                                           ; $7812: $98
	adc  b                                           ; $7813: $88
	adc  b                                           ; $7814: $88
	adc  b                                           ; $7815: $88
	adc  b                                           ; $7816: $88
	adc  b                                           ; $7817: $88
	adc  b                                           ; $7818: $88
	ld   [hl], a                                     ; $7819: $77
	ld   [hl], a                                     ; $781a: $77
	ld   [hl], a                                     ; $781b: $77
	ld   [hl], a                                     ; $781c: $77
	ld   [hl], a                                     ; $781d: $77
	ld   [hl], a                                     ; $781e: $77
	ld   a, b                                        ; $781f: $78
	adc  b                                           ; $7820: $88
	adc  c                                           ; $7821: $89
	adc  b                                           ; $7822: $88
	sbc  c                                           ; $7823: $99
	sbc  c                                           ; $7824: $99
	adc  b                                           ; $7825: $88
	adc  b                                           ; $7826: $88
	adc  b                                           ; $7827: $88
	ld   a, b                                        ; $7828: $78
	adc  b                                           ; $7829: $88
	adc  b                                           ; $782a: $88
	adc  c                                           ; $782b: $89
	sbc  c                                           ; $782c: $99
	adc  b                                           ; $782d: $88
	adc  b                                           ; $782e: $88
	ld   [hl], a                                     ; $782f: $77
	ld   [hl], a                                     ; $7830: $77
	ld   [hl], a                                     ; $7831: $77
	ld   [hl], a                                     ; $7832: $77
	ld   [hl], a                                     ; $7833: $77
	ld   a, b                                        ; $7834: $78
	adc  c                                           ; $7835: $89
	sbc  c                                           ; $7836: $99
	adc  b                                           ; $7837: $88
	adc  c                                           ; $7838: $89
	sbc  c                                           ; $7839: $99
	adc  b                                           ; $783a: $88
	adc  b                                           ; $783b: $88
	adc  b                                           ; $783c: $88
	adc  b                                           ; $783d: $88
	adc  c                                           ; $783e: $89
	adc  b                                           ; $783f: $88
	sbc  c                                           ; $7840: $99
	sbc  b                                           ; $7841: $98
	adc  b                                           ; $7842: $88
	add  a                                           ; $7843: $87
	ld   [hl], a                                     ; $7844: $77
	ld   [hl], a                                     ; $7845: $77
	ld   a, b                                        ; $7846: $78
	adc  b                                           ; $7847: $88
	adc  b                                           ; $7848: $88
	adc  b                                           ; $7849: $88
	adc  b                                           ; $784a: $88
	adc  b                                           ; $784b: $88
	ld   [hl], a                                     ; $784c: $77
	ld   [hl], a                                     ; $784d: $77
	ld   [hl], a                                     ; $784e: $77
	ld   [hl], a                                     ; $784f: $77
	ld   a, b                                        ; $7850: $78
	adc  b                                           ; $7851: $88
	sbc  c                                           ; $7852: $99
	sbc  c                                           ; $7853: $99
	sbc  c                                           ; $7854: $99
	sbc  b                                           ; $7855: $98
	adc  b                                           ; $7856: $88
	adc  b                                           ; $7857: $88
	ld   [hl], a                                     ; $7858: $77
	ld   a, b                                        ; $7859: $78
	adc  b                                           ; $785a: $88
	adc  c                                           ; $785b: $89
	sbc  b                                           ; $785c: $98
	sbc  c                                           ; $785d: $99
	adc  b                                           ; $785e: $88
	adc  b                                           ; $785f: $88
	add  a                                           ; $7860: $87
	ld   [hl], a                                     ; $7861: $77
	ld   [hl], a                                     ; $7862: $77
	ld   a, b                                        ; $7863: $78
	adc  b                                           ; $7864: $88
	adc  b                                           ; $7865: $88
	adc  b                                           ; $7866: $88
	adc  b                                           ; $7867: $88
	adc  b                                           ; $7868: $88
	adc  b                                           ; $7869: $88
	ld   [hl], a                                     ; $786a: $77
	ld   [hl], a                                     ; $786b: $77
	ld   [hl], a                                     ; $786c: $77
	ld   a, b                                        ; $786d: $78
	adc  b                                           ; $786e: $88
	adc  b                                           ; $786f: $88
	adc  b                                           ; $7870: $88
	adc  b                                           ; $7871: $88
	sbc  b                                           ; $7872: $98
	adc  b                                           ; $7873: $88
	adc  b                                           ; $7874: $88
	adc  b                                           ; $7875: $88
	adc  b                                           ; $7876: $88
	adc  b                                           ; $7877: $88
	adc  b                                           ; $7878: $88
	adc  b                                           ; $7879: $88
	adc  b                                           ; $787a: $88
	adc  b                                           ; $787b: $88
	adc  b                                           ; $787c: $88
	adc  b                                           ; $787d: $88
	adc  b                                           ; $787e: $88
	adc  b                                           ; $787f: $88
	adc  b                                           ; $7880: $88
	add  a                                           ; $7881: $87
	ld   [hl], a                                     ; $7882: $77
	ld   [hl], a                                     ; $7883: $77
	ld   a, b                                        ; $7884: $78
	adc  b                                           ; $7885: $88
	adc  b                                           ; $7886: $88
	adc  b                                           ; $7887: $88
	adc  b                                           ; $7888: $88
	adc  b                                           ; $7889: $88
	adc  b                                           ; $788a: $88
	adc  b                                           ; $788b: $88
	adc  b                                           ; $788c: $88
	adc  b                                           ; $788d: $88
	adc  b                                           ; $788e: $88
	adc  b                                           ; $788f: $88
	adc  b                                           ; $7890: $88
	adc  b                                           ; $7891: $88
	adc  b                                           ; $7892: $88
	adc  b                                           ; $7893: $88
	adc  b                                           ; $7894: $88
	add  a                                           ; $7895: $87
	ld   [hl], a                                     ; $7896: $77
	ld   a, b                                        ; $7897: $78

Jump_0da_7898:
	adc  b                                           ; $7898: $88
	adc  b                                           ; $7899: $88
	adc  b                                           ; $789a: $88
	adc  b                                           ; $789b: $88
	adc  b                                           ; $789c: $88
	adc  b                                           ; $789d: $88
	adc  b                                           ; $789e: $88
	adc  b                                           ; $789f: $88
	adc  b                                           ; $78a0: $88
	adc  b                                           ; $78a1: $88
	adc  b                                           ; $78a2: $88
	adc  b                                           ; $78a3: $88
	adc  b                                           ; $78a4: $88
	adc  b                                           ; $78a5: $88
	adc  b                                           ; $78a6: $88

Call_0da_78a7:
	adc  b                                           ; $78a7: $88
	adc  b                                           ; $78a8: $88
	adc  b                                           ; $78a9: $88
	adc  b                                           ; $78aa: $88
	adc  b                                           ; $78ab: $88
	adc  b                                           ; $78ac: $88
	adc  b                                           ; $78ad: $88
	adc  b                                           ; $78ae: $88
	adc  b                                           ; $78af: $88
	adc  b                                           ; $78b0: $88
	adc  b                                           ; $78b1: $88
	adc  b                                           ; $78b2: $88
	adc  b                                           ; $78b3: $88
	adc  b                                           ; $78b4: $88

Jump_0da_78b5:
	adc  b                                           ; $78b5: $88
	adc  b                                           ; $78b6: $88
	adc  b                                           ; $78b7: $88
	adc  b                                           ; $78b8: $88
	adc  b                                           ; $78b9: $88
	adc  b                                           ; $78ba: $88
	adc  b                                           ; $78bb: $88
	adc  b                                           ; $78bc: $88
	adc  b                                           ; $78bd: $88
	adc  b                                           ; $78be: $88
	adc  b                                           ; $78bf: $88
	adc  b                                           ; $78c0: $88
	adc  b                                           ; $78c1: $88
	adc  b                                           ; $78c2: $88
	adc  b                                           ; $78c3: $88
	adc  b                                           ; $78c4: $88
	adc  b                                           ; $78c5: $88
	adc  b                                           ; $78c6: $88
	adc  b                                           ; $78c7: $88
	adc  b                                           ; $78c8: $88
	adc  b                                           ; $78c9: $88
	adc  b                                           ; $78ca: $88
	adc  b                                           ; $78cb: $88
	adc  b                                           ; $78cc: $88
	adc  b                                           ; $78cd: $88
	adc  b                                           ; $78ce: $88
	adc  b                                           ; $78cf: $88
	adc  b                                           ; $78d0: $88
	adc  b                                           ; $78d1: $88
	adc  b                                           ; $78d2: $88
	adc  b                                           ; $78d3: $88
	adc  b                                           ; $78d4: $88
	adc  b                                           ; $78d5: $88
	adc  b                                           ; $78d6: $88
	adc  b                                           ; $78d7: $88
	adc  b                                           ; $78d8: $88
	adc  b                                           ; $78d9: $88
	adc  b                                           ; $78da: $88
	adc  b                                           ; $78db: $88
	adc  b                                           ; $78dc: $88
	adc  b                                           ; $78dd: $88
	adc  b                                           ; $78de: $88
	adc  b                                           ; $78df: $88
	adc  b                                           ; $78e0: $88
	adc  b                                           ; $78e1: $88
	adc  b                                           ; $78e2: $88
	adc  b                                           ; $78e3: $88
	adc  b                                           ; $78e4: $88
	adc  b                                           ; $78e5: $88
	adc  b                                           ; $78e6: $88
	adc  b                                           ; $78e7: $88
	adc  b                                           ; $78e8: $88
	adc  b                                           ; $78e9: $88
	adc  b                                           ; $78ea: $88
	adc  b                                           ; $78eb: $88
	adc  b                                           ; $78ec: $88
	adc  b                                           ; $78ed: $88
	adc  b                                           ; $78ee: $88
	adc  b                                           ; $78ef: $88
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
	adc  b                                           ; $7900: $88
	adc  b                                           ; $7901: $88
	adc  b                                           ; $7902: $88
	adc  b                                           ; $7903: $88
	adc  b                                           ; $7904: $88
	adc  b                                           ; $7905: $88
	adc  b                                           ; $7906: $88
	adc  b                                           ; $7907: $88
	adc  b                                           ; $7908: $88
	adc  b                                           ; $7909: $88
	adc  b                                           ; $790a: $88
	adc  b                                           ; $790b: $88
	adc  b                                           ; $790c: $88
	adc  b                                           ; $790d: $88
	adc  b                                           ; $790e: $88
	adc  b                                           ; $790f: $88
	adc  b                                           ; $7910: $88
	adc  b                                           ; $7911: $88
	adc  b                                           ; $7912: $88
	adc  b                                           ; $7913: $88
	adc  b                                           ; $7914: $88
	adc  b                                           ; $7915: $88
	adc  b                                           ; $7916: $88
	adc  b                                           ; $7917: $88
	adc  b                                           ; $7918: $88
	adc  b                                           ; $7919: $88
	adc  b                                           ; $791a: $88
	adc  b                                           ; $791b: $88
	adc  b                                           ; $791c: $88
	adc  b                                           ; $791d: $88
	adc  b                                           ; $791e: $88
	adc  b                                           ; $791f: $88
	adc  b                                           ; $7920: $88
	adc  b                                           ; $7921: $88
	adc  b                                           ; $7922: $88
	adc  b                                           ; $7923: $88
	adc  b                                           ; $7924: $88
	adc  b                                           ; $7925: $88
	adc  b                                           ; $7926: $88
	adc  b                                           ; $7927: $88
	adc  b                                           ; $7928: $88
	adc  b                                           ; $7929: $88
	adc  b                                           ; $792a: $88
	adc  b                                           ; $792b: $88
	adc  b                                           ; $792c: $88
	adc  b                                           ; $792d: $88
	adc  b                                           ; $792e: $88
	adc  b                                           ; $792f: $88
	adc  b                                           ; $7930: $88
	adc  b                                           ; $7931: $88
	adc  b                                           ; $7932: $88
	adc  b                                           ; $7933: $88
	adc  b                                           ; $7934: $88
	adc  b                                           ; $7935: $88
	adc  b                                           ; $7936: $88
	adc  b                                           ; $7937: $88
	adc  b                                           ; $7938: $88
	adc  b                                           ; $7939: $88
	adc  b                                           ; $793a: $88
	adc  b                                           ; $793b: $88
	adc  b                                           ; $793c: $88
	adc  b                                           ; $793d: $88
	adc  b                                           ; $793e: $88
	adc  b                                           ; $793f: $88
	adc  b                                           ; $7940: $88
	adc  b                                           ; $7941: $88
	adc  b                                           ; $7942: $88
	adc  b                                           ; $7943: $88
	adc  b                                           ; $7944: $88
	adc  b                                           ; $7945: $88
	adc  b                                           ; $7946: $88
	adc  b                                           ; $7947: $88
	adc  b                                           ; $7948: $88
	adc  b                                           ; $7949: $88
	adc  b                                           ; $794a: $88
	adc  b                                           ; $794b: $88
	adc  b                                           ; $794c: $88
	adc  b                                           ; $794d: $88
	adc  b                                           ; $794e: $88
	adc  b                                           ; $794f: $88
	adc  b                                           ; $7950: $88
	adc  b                                           ; $7951: $88
	adc  c                                           ; $7952: $89
	adc  d                                           ; $7953: $8a
	and  [hl]                                        ; $7954: $a6
	ld   e, c                                        ; $7955: $59
	db   $db                                         ; $7956: $db
	sbc  b                                           ; $7957: $98
	ld   e, b                                        ; $7958: $58
	cp   e                                           ; $7959: $bb
	ld   [hl], l                                     ; $795a: $75
	ld   l, b                                        ; $795b: $68
	sub  a                                           ; $795c: $97
	ld   d, l                                        ; $795d: $55
	ld   a, b                                        ; $795e: $78
	halt                                             ; $795f: $76
	ld   l, b                                        ; $7960: $68
	xor  b                                           ; $7961: $a8
	add  a                                           ; $7962: $87
	adc  c                                           ; $7963: $89
	sbc  b                                           ; $7964: $98
	ld   h, l                                        ; $7965: $65
	adc  e                                           ; $7966: $8b
	res  0, a                                        ; $7967: $cb $87
	adc  e                                           ; $7969: $8b
	xor  b                                           ; $796a: $a8
	ld   e, b                                        ; $796b: $58
	cp   d                                           ; $796c: $ba
	sub  [hl]                                        ; $796d: $96
	sbc  c                                           ; $796e: $99
	xor  b                                           ; $796f: $a8
	ld   h, l                                        ; $7970: $65
	ld   a, b                                        ; $7971: $78
	ld   d, h                                        ; $7972: $54
	ld   b, [hl]                                     ; $7973: $46
	ld   [hl], a                                     ; $7974: $77
	halt                                             ; $7975: $76
	ld   a, c                                        ; $7976: $79
	xor  e                                           ; $7977: $ab
	xor  d                                           ; $7978: $aa
	xor  c                                           ; $7979: $a9
	xor  c                                           ; $797a: $a9
	adc  b                                           ; $797b: $88
	ld   [hl], a                                     ; $797c: $77
	ld   [hl], a                                     ; $797d: $77
	ld   [hl], a                                     ; $797e: $77
	ld   [hl], a                                     ; $797f: $77
	adc  b                                           ; $7980: $88
	sbc  c                                           ; $7981: $99
	sbc  d                                           ; $7982: $9a
	xor  c                                           ; $7983: $a9
	sbc  c                                           ; $7984: $99
	xor  d                                           ; $7985: $aa
	adc  b                                           ; $7986: $88
	ld   a, b                                        ; $7987: $78
	add  a                                           ; $7988: $87
	ld   h, [hl]                                     ; $7989: $66
	ld   [hl], a                                     ; $798a: $77
	ld   [hl], a                                     ; $798b: $77
	ld   [hl], a                                     ; $798c: $77
	ld   h, [hl]                                     ; $798d: $66
	ld   d, h                                        ; $798e: $54
	ld   b, e                                        ; $798f: $43
	ld   hl, $8515                                   ; $7990: $21 $15 $85
	ld   l, c                                        ; $7993: $69
	cp   h                                           ; $7994: $bc
	rst  JumpTable                                         ; $7995: $df
	call c, $a6ed                                    ; $7996: $dc $ed $a6
	add  [hl]                                        ; $7999: $86
	ld   d, h                                        ; $799a: $54
	ld   d, [hl]                                     ; $799b: $56
	ld   c, c                                        ; $799c: $49
	xor  h                                           ; $799d: $ac
	sbc  $ed                                         ; $799e: $de $ed
	cp   $db                                         ; $79a0: $fe $db
	xor  b                                           ; $79a2: $a8
	ld   h, l                                        ; $79a3: $65
	ld   [hl-], a                                    ; $79a4: $32
	ld   de, $1111                                   ; $79a5: $11 $11 $11
	ld   de, $bb4f                                   ; $79a8: $11 $4f $bb
	rst  $38                                         ; $79ab: $ff
	rst  $38                                         ; $79ac: $ff
	rst  $38                                         ; $79ad: $ff
	ld   a, d                                        ; $79ae: $7a
	ld   l, b                                        ; $79af: $68
	ld   de, $1211                                   ; $79b0: $11 $11 $12
	sub  h                                           ; $79b3: $94
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79b4: $cf
	rst  $38                                         ; $79b5: $ff
	rst  $38                                         ; $79b6: $ff
	rst  $38                                         ; $79b7: $ff
	db   $db                                         ; $79b8: $db
	ld   h, [hl]                                     ; $79b9: $66
	ld   d, c                                        ; $79ba: $51
	ld   b, h                                        ; $79bb: $44
	ld   b, e                                        ; $79bc: $43
	ld   b, l                                        ; $79bd: $45
	ld   [hl+], a                                    ; $79be: $22
	ld   sp, $1111                                   ; $79bf: $31 $11 $11
	adc  $af                                         ; $79c2: $ce $af
	rst  $38                                         ; $79c4: $ff
	rst  $38                                         ; $79c5: $ff
	rst  $30                                         ; $79c6: $f7
	add  h                                           ; $79c7: $84
	ld   d, c                                        ; $79c8: $51
	ld   de, $6c11                                   ; $79c9: $11 $11 $6c
	rst  JumpTable                                         ; $79cc: $df
	rst  $38                                         ; $79cd: $ff
	rst  $38                                         ; $79ce: $ff
	ei                                               ; $79cf: $fb
	xor  b                                           ; $79d0: $a8
	ld   [hl], l                                     ; $79d1: $75
	ld   d, a                                        ; $79d2: $57
	scf                                              ; $79d3: $37
	sbc  d                                           ; $79d4: $9a
	xor  d                                           ; $79d5: $aa
	sub  a                                           ; $79d6: $97
	ld   d, l                                        ; $79d7: $55
	ld   de, $1111                                   ; $79d8: $11 $11 $11
	rra                                              ; $79db: $1f
	rst  $38                                         ; $79dc: $ff
	rst  $38                                         ; $79dd: $ff
	rst  $38                                         ; $79de: $ff
	rst  $38                                         ; $79df: $ff
	ld   de, $1111                                   ; $79e0: $11 $11 $11
	ld   sp, $ff6f                                   ; $79e3: $31 $6f $ff
	rst  $38                                         ; $79e6: $ff
	db   $fd                                         ; $79e7: $fd
	db   $ec                                         ; $79e8: $ec
	inc  hl                                          ; $79e9: $23
	ld   de, $dc36                                   ; $79ea: $11 $36 $dc
	rst  $38                                         ; $79ed: $ff
	rst  $38                                         ; $79ee: $ff
	jp   c, $1174                                    ; $79ef: $da $74 $11

	ld   de, $1111                                   ; $79f2: $11 $11 $11
	ld   e, a                                        ; $79f5: $5f
	rst  $38                                         ; $79f6: $ff
	rst  $38                                         ; $79f7: $ff
	ei                                               ; $79f8: $fb
	adc  e                                           ; $79f9: $8b
	ld   de, $1411                                   ; $79fa: $11 $11 $14
	db   $fc                                         ; $79fd: $fc
	rst  $38                                         ; $79fe: $ff
	rst  $38                                         ; $79ff: $ff
	db   $fd                                         ; $7a00: $fd
	ld   sp, $1614                                   ; $7a01: $31 $14 $16
	ld   [hl], a                                     ; $7a04: $77
	rst  $38                                         ; $7a05: $ff
	rst  $38                                         ; $7a06: $ff
	cp   $67                                         ; $7a07: $fe $67
	add  a                                           ; $7a09: $87
	ld   h, c                                        ; $7a0a: $61
	ld   de, $1111                                   ; $7a0b: $11 $11 $11
	ld   de, $ff1e                                   ; $7a0e: $11 $1e $ff
	rst  $38                                         ; $7a11: $ff
	or   [hl]                                        ; $7a12: $b6
	ld   a, [hl+]                                    ; $7a13: $2a
	ld   hl, $1811                                   ; $7a14: $21 $11 $18
	rst  $38                                         ; $7a17: $ff
	rst  JumpTable                                         ; $7a18: $df
	cp   $bc                                         ; $7a19: $fe $bc
	ld   hl, $5611                                   ; $7a1b: $21 $11 $56
	rst  $38                                         ; $7a1e: $ff
	rst  $38                                         ; $7a1f: $ff
	rst  $38                                         ; $7a20: $ff
	sbc  c                                           ; $7a21: $99
	ld   d, h                                        ; $7a22: $54
	ld   l, d                                        ; $7a23: $6a
	sub  [hl]                                        ; $7a24: $96
	ld   b, c                                        ; $7a25: $41
	ld   de, $1111                                   ; $7a26: $11 $11 $11
	ld   de, $ffff                                   ; $7a29: $11 $ff $ff
	ld   sp, hl                                      ; $7a2c: $f9
	ld   b, c                                        ; $7a2d: $41
	sub  d                                           ; $7a2e: $92
	ld   de, $bf11                                   ; $7a2f: $11 $11 $bf
	rst  $38                                         ; $7a32: $ff
	rst  $38                                         ; $7a33: $ff
	sub  l                                           ; $7a34: $95
	and  c                                           ; $7a35: $a1
	ld   de, $bf1a                                   ; $7a36: $11 $1a $bf
	rst  $38                                         ; $7a39: $ff
	rst  $38                                         ; $7a3a: $ff
	or   h                                           ; $7a3b: $b4
	ld   d, l                                        ; $7a3c: $55
	adc  d                                           ; $7a3d: $8a
	jp   c, $1143                                    ; $7a3e: $da $43 $11

	ld   de, $1111                                   ; $7a41: $11 $11 $11
	rra                                              ; $7a44: $1f
	rst  $38                                         ; $7a45: $ff
	rst  $38                                         ; $7a46: $ff
	ld   d, c                                        ; $7a47: $51
	inc  d                                           ; $7a48: $14
	ld   hl, $3f11                                   ; $7a49: $21 $11 $3f
	rst  $38                                         ; $7a4c: $ff
	ld   a, [$14b1]                                  ; $7a4d: $fa $b1 $14
	ld   de, rAUD1HIGH                                   ; $7a50: $11 $14 $ff
	rst  $38                                         ; $7a53: $ff
	db   $fc                                         ; $7a54: $fc
	add  h                                           ; $7a55: $84
	daa                                              ; $7a56: $27
	adc  $ba                                         ; $7a57: $ce $ba
	ld   [hl], c                                     ; $7a59: $71
	ld   de, $1111                                   ; $7a5a: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7a5d: $11 $11 $ff
	rst  $38                                         ; $7a60: $ff
	pop  hl                                          ; $7a61: $e1
	ld   de, $1271                                   ; $7a62: $11 $71 $12
	ld   e, $ff                                      ; $7a65: $1e $ff
	ei                                               ; $7a67: $fb
	ld   [hl+], a                                    ; $7a68: $22
	ld   de, $1131                                   ; $7a69: $11 $31 $11
	rst  $28                                         ; $7a6c: $ef
	rst  $38                                         ; $7a6d: $ff
	ei                                               ; $7a6e: $fb
	ld   de, $ff39                                   ; $7a6f: $11 $39 $ff
	push hl                                          ; $7a72: $e5
	ld   b, d                                        ; $7a73: $42
	ld   de, $1111                                   ; $7a74: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $7a77: $11 $12 $ff
	rst  $38                                         ; $7a7a: $ff
	pop  de                                          ; $7a7b: $d1
	ld   de, $1562                                   ; $7a7c: $11 $62 $15
	ld   c, a                                        ; $7a7f: $4f
	rst  $38                                         ; $7a80: $ff
	ld   hl, sp+$11                                  ; $7a81: $f8 $11
	ld   de, $5366                                   ; $7a83: $11 $66 $53
	rst  $38                                         ; $7a86: $ff
	rst  $38                                         ; $7a87: $ff
	di                                               ; $7a88: $f3
	ld   de, $ff7f                                   ; $7a89: $11 $7f $ff
	jp   nc, $1111                                   ; $7a8c: $d2 $11 $11

	ld   hl, $1111                                   ; $7a8f: $21 $11 $11
	rra                                              ; $7a92: $1f
	rst  $38                                         ; $7a93: $ff
	rst  $38                                         ; $7a94: $ff
	ld   de, $a111                                   ; $7a95: $11 $11 $a1
	ld   h, l                                        ; $7a98: $65
	rst  JumpTable                                         ; $7a99: $df
	rst  $38                                         ; $7a9a: $ff
	pop  de                                          ; $7a9b: $d1
	ld   de, $a916                                   ; $7a9c: $11 $16 $a9
	ld   l, e                                        ; $7a9f: $6b
	rst  $38                                         ; $7aa0: $ff
	rst  $38                                         ; $7aa1: $ff
	ld   b, c                                        ; $7aa2: $41
	jr   @+$01                                       ; $7aa3: $18 $ff

	db   $fd                                         ; $7aa5: $fd
	ld   hl, $1111                                   ; $7aa6: $21 $11 $11
	ld   de, $1711                                   ; $7aa9: $11 $11 $17
	rst  $38                                         ; $7aac: $ff
	rst  $38                                         ; $7aad: $ff
	ld   sp, $c111                                   ; $7aae: $31 $11 $c1
	ld   a, [de]                                     ; $7ab1: $1a
	adc  a                                           ; $7ab2: $8f
	rst  $38                                         ; $7ab3: $ff
	pop  af                                          ; $7ab4: $f1
	ld   de, $ba11                                   ; $7ab5: $11 $11 $ba

Jump_0da_7ab8:
	xor  d                                           ; $7ab8: $aa
	rst  $38                                         ; $7ab9: $ff
	rst  $38                                         ; $7aba: $ff
	ld   [hl], c                                     ; $7abb: $71
	dec  d                                           ; $7abc: $15
	rst  $38                                         ; $7abd: $ff
	rst  $38                                         ; $7abe: $ff
	ld   b, c                                        ; $7abf: $41
	ld   de, $1111                                   ; $7ac0: $11 $11 $11
	ld   de, $ff1f                                   ; $7ac3: $11 $1f $ff
	rst  $38                                         ; $7ac6: $ff
	ld   de, $9111                                   ; $7ac7: $11 $11 $91
	ld   [hl], a                                     ; $7aca: $77
	rst  $38                                         ; $7acb: $ff
	rst  $38                                         ; $7acc: $ff
	and  c                                           ; $7acd: $a1
	ld   de, $cc19                                   ; $7ace: $11 $19 $cc
	xor  a                                           ; $7ad1: $af
	rst  $38                                         ; $7ad2: $ff
	ei                                               ; $7ad3: $fb
	ld   de, $ff1e                                   ; $7ad4: $11 $1e $ff
	or   $11                                         ; $7ad7: $f6 $11
	ld   de, $1111                                   ; $7ad9: $11 $11 $11
	jr   @+$01                                       ; $7adc: $18 $ff

	rst  $38                                         ; $7ade: $ff
	ld   de, $9111                                   ; $7adf: $11 $11 $91
	add  hl, sp                                      ; $7ae2: $39
	ld   a, a                                        ; $7ae3: $7f
	rst  $38                                         ; $7ae4: $ff
	pop  af                                          ; $7ae5: $f1
	ld   de, $fd15                                   ; $7ae6: $11 $15 $fd
	call c, $fcff                                    ; $7ae9: $dc $ff $fc
	ld   de, $ff1d                                   ; $7aec: $11 $1d $ff
	rst  $30                                         ; $7aef: $f7
	ld   de, $1111                                   ; $7af0: $11 $11 $11
	ld   de, $ff1f                                   ; $7af3: $11 $1f $ff
	cp   $11                                         ; $7af6: $fe $11
	ld   d, $51                                      ; $7af8: $16 $51
	add  $ff                                         ; $7afa: $c6 $ff
	rst  $38                                         ; $7afc: $ff
	ld   sp, $5f11                                   ; $7afd: $31 $11 $5f
	rst  $38                                         ; $7b00: $ff
	rst  $38                                         ; $7b01: $ff
	ei                                               ; $7b02: $fb
	and  c                                           ; $7b03: $a1
	ld   [de], a                                     ; $7b04: $12
	rst  $28                                         ; $7b05: $ef
	rst  $38                                         ; $7b06: $ff
	ld   b, c                                        ; $7b07: $41
	ld   de, $1111                                   ; $7b08: $11 $11 $11
	ld   e, $ff                                      ; $7b0b: $1e $ff
	rst  $38                                         ; $7b0d: $ff
	ld   de, $e611                                   ; $7b0e: $11 $11 $e6
	db   $fc                                         ; $7b11: $fc
	sbc  a                                           ; $7b12: $9f
	rst  $38                                         ; $7b13: $ff
	ld   b, c                                        ; $7b14: $41
	ld   de, $ff3f                                   ; $7b15: $11 $3f $ff
	ld   a, [$94a7]                                  ; $7b18: $fa $a7 $94
	rla                                              ; $7b1b: $17
	rst  $38                                         ; $7b1c: $ff
	rst  $38                                         ; $7b1d: $ff
	ld   hl, $1111                                   ; $7b1e: $21 $11 $11
	ld   de, $ff1f                                   ; $7b21: $11 $1f $ff
	di                                               ; $7b24: $f3
	ld   de, $9f1b                                   ; $7b25: $11 $1b $9f
	rst  $30                                         ; $7b28: $f7
	rst  $28                                         ; $7b29: $ef
	ld   a, [$1111]                                  ; $7b2a: $fa $11 $11
	rst  $38                                         ; $7b2d: $ff
	rst  $38                                         ; $7b2e: $ff
	sub  $13                                         ; $7b2f: $d6 $13
	ld   b, c                                        ; $7b31: $41
	ld   a, a                                        ; $7b32: $7f
	rst  $38                                         ; $7b33: $ff
	rst  $30                                         ; $7b34: $f7
	ld   de, $1111                                   ; $7b35: $11 $11 $11
	rra                                              ; $7b38: $1f
	rst  $38                                         ; $7b39: $ff
	rst  $38                                         ; $7b3a: $ff
	ld   de, $8811                                   ; $7b3b: $11 $11 $88
	db   $fc                                         ; $7b3e: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b3f: $cf
	rst  $38                                         ; $7b40: $ff
	ld   de, $8f11                                   ; $7b41: $11 $11 $8f
	rst  $38                                         ; $7b44: $ff
	ld   a, [$5341]                                  ; $7b45: $fa $41 $53
	ld   l, [hl]                                     ; $7b48: $6e
	rst  $38                                         ; $7b49: $ff
	ld   hl, sp+$11                                  ; $7b4a: $f8 $11
	ld   de, $1f11                                   ; $7b4c: $11 $11 $1f
	rst  $38                                         ; $7b4f: $ff
	db   $f4                                         ; $7b50: $f4
	ld   de, $6f19                                   ; $7b51: $11 $19 $6f
	rst  $30                                         ; $7b54: $f7
	rst  $38                                         ; $7b55: $ff
	ld   a, [$1111]                                  ; $7b56: $fa $11 $11
	rst  $38                                         ; $7b59: $ff
	rst  $38                                         ; $7b5a: $ff
	sub  [hl]                                        ; $7b5b: $96
	inc  de                                          ; $7b5c: $13
	ld   d, h                                        ; $7b5d: $54
	adc  $ff                                         ; $7b5e: $ce $ff
	jp   nz, $1111                                   ; $7b60: $c2 $11 $11

	ld   d, $ff                                      ; $7b63: $16 $ff
	rst  $38                                         ; $7b65: $ff
	ld   de, $9311                                   ; $7b66: $11 $11 $93
	ei                                               ; $7b69: $fb
	sbc  a                                           ; $7b6a: $9f
	rst  $38                                         ; $7b6b: $ff
	add  c                                           ; $7b6c: $81
	ld   de, $ff6f                                   ; $7b6d: $11 $6f $ff
	or   $64                                         ; $7b70: $f6 $64
	xor  b                                           ; $7b72: $a8
	ld   a, e                                        ; $7b73: $7b
	sbc  e                                           ; $7b74: $9b
	push bc                                          ; $7b75: $c5
	ld   de, $1a11                                   ; $7b76: $11 $11 $1a
	rst  $38                                         ; $7b79: $ff
	rst  $38                                         ; $7b7a: $ff
	ld   de, $9413                                   ; $7b7b: $11 $13 $94
	push af                                          ; $7b7e: $f5
	xor  a                                           ; $7b7f: $af
	rst  $38                                         ; $7b80: $ff
	ld   h, c                                        ; $7b81: $61
	ld   de, $ffff                                   ; $7b82: $11 $ff $ff
	ld   [hl], c                                     ; $7b85: $71
	ld   d, l                                        ; $7b86: $55
	cp   c                                           ; $7b87: $b9
	sbc  c                                           ; $7b88: $99
	sbc  e                                           ; $7b89: $9b
	or   c                                           ; $7b8a: $b1
	ld   de, $bf11                                   ; $7b8b: $11 $11 $bf
	rst  $38                                         ; $7b8e: $ff
	pop  af                                          ; $7b8f: $f1
	ld   de, $7caa                                   ; $7b90: $11 $aa $7c
	ld   a, [de]                                     ; $7b93: $1a
	rst  $38                                         ; $7b94: $ff
	ld   sp, hl                                      ; $7b95: $f9
	ld   de, $ff1f                                   ; $7b96: $11 $1f $ff
	ldh  a, [c]                                      ; $7b99: $f2
	dec  [hl]                                        ; $7b9a: $35
	cp   [hl]                                        ; $7b9b: $be
	sub  a                                           ; $7b9c: $97
	ld   de, $1172                                   ; $7b9d: $11 $72 $11
	ld   de, $ffff                                   ; $7ba0: $11 $ff $ff
	ld   de, $d711                                   ; $7ba3: $11 $11 $d7
	pop  af                                          ; $7ba6: $f1
	rra                                              ; $7ba7: $1f
	rst  $38                                         ; $7ba8: $ff
	ld   hl, sp+$11                                  ; $7ba9: $f8 $11
	ld   l, a                                        ; $7bab: $6f
	rst  $38                                         ; $7bac: $ff
	sub  c                                           ; $7bad: $91
	dec  [hl]                                        ; $7bae: $35
	cp   $91                                         ; $7baf: $fe $91
	ld   de, $1111                                   ; $7bb1: $11 $11 $11
	rst  $38                                         ; $7bb4: $ff
	rst  $38                                         ; $7bb5: $ff
	ld   b, c                                        ; $7bb6: $41
	ld   de, $f265                                   ; $7bb7: $11 $65 $f2
	dec  e                                           ; $7bba: $1d
	rst  $38                                         ; $7bbb: $ff
	db   $fd                                         ; $7bbc: $fd
	ld   de, $ff5f                                   ; $7bbd: $11 $5f $ff
	sub  c                                           ; $7bc0: $91
	ld   de, $e2ff                                   ; $7bc1: $11 $ff $e2
	ld   de, $1f11                                   ; $7bc4: $11 $11 $1f
	rst  $38                                         ; $7bc7: $ff
	ld   hl, sp+$11                                  ; $7bc8: $f8 $11
	dec  d                                           ; $7bca: $15
	dec  e                                           ; $7bcb: $1d
	ld   [de], a                                     ; $7bcc: $12
	rst  $38                                         ; $7bcd: $ff
	rst  $38                                         ; $7bce: $ff
	ld   h, c                                        ; $7bcf: $61
	ld   a, [de]                                     ; $7bd0: $1a
	rst  $38                                         ; $7bd1: $ff
	push af                                          ; $7bd2: $f5
	inc  de                                          ; $7bd3: $13
	dec  e                                           ; $7bd4: $1d
	ret  c                                           ; $7bd5: $d8

	ld   de, $1f11                                   ; $7bd6: $11 $11 $1f
	rst  $38                                         ; $7bd9: $ff
	ld   hl, sp+$11                                  ; $7bda: $f8 $11
	add  hl, de                                      ; $7bdc: $19
	dec  e                                           ; $7bdd: $1d
	ld   de, $ffff                                   ; $7bde: $11 $ff $ff
	ld   b, c                                        ; $7be1: $41
	ld   a, [de]                                     ; $7be2: $1a
	rst  $38                                         ; $7be3: $ff
	ldh  a, [c]                                      ; $7be4: $f2
	ld   de, $b62f                                   ; $7be5: $11 $2f $b6
	ld   de, $8f11                                   ; $7be8: $11 $11 $8f
	rst  $38                                         ; $7beb: $ff
	pop  af                                          ; $7bec: $f1
	ld   de, $d2a1                                   ; $7bed: $11 $a1 $d2
	rra                                              ; $7bf0: $1f
	rst  $38                                         ; $7bf1: $ff
	ld   sp, hl                                      ; $7bf2: $f9
	ld   de, $ff7f                                   ; $7bf3: $11 $7f $ff
	ld   h, c                                        ; $7bf6: $61
	ld   de, $5199                                   ; $7bf7: $11 $99 $51
	ld   de, $ff1f                                   ; $7bfa: $11 $1f $ff
	ldh  a, [c]                                      ; $7bfd: $f2
	ld   de, $7c69                                   ; $7bfe: $11 $69 $7c
	ld   d, $ff                                      ; $7c01: $16 $ff
	cp   $71                                         ; $7c03: $fe $71
	ld   c, [hl]                                     ; $7c05: $4e
	rst  $38                                         ; $7c06: $ff
	or   c                                           ; $7c07: $b1
	ld   de, $1167                                   ; $7c08: $11 $67 $11
	ld   de, $ff2f                                   ; $7c0b: $11 $2f $ff
	pop  af                                          ; $7c0e: $f1
	ld   de, $c1c7                                   ; $7c0f: $11 $c7 $c1

Call_0da_7c12:
	ld   e, $ff                                      ; $7c12: $1e $ff
	ld   a, [$ef12]                                  ; $7c14: $fa $12 $ef
	db   $fc                                         ; $7c17: $fc
	ld   de, $6114                                   ; $7c18: $11 $14 $61
	ld   de, $ff1f                                   ; $7c1b: $11 $1f $ff
	rst  $30                                         ; $7c1e: $f7
	ld   sp, $e4bc                                   ; $7c1f: $31 $bc $e4
	ld   d, $9f                                      ; $7c22: $16 $9f
	cp   $61                                         ; $7c24: $fe $61
	sbc  a                                           ; $7c26: $9f
	rst  $38                                         ; $7c27: $ff
	ld   d, c                                        ; $7c28: $51
	ld   de, $1121                                   ; $7c29: $11 $21 $11
	rra                                              ; $7c2c: $1f
	rst  $38                                         ; $7c2d: $ff
	rst  $30                                         ; $7c2e: $f7
	dec  [hl]                                        ; $7c2f: $35
	db   $db                                         ; $7c30: $db
	pop  hl                                          ; $7c31: $e1
	rla                                              ; $7c32: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c33: $cf
	ei                                               ; $7c34: $fb
	add  hl, hl                                      ; $7c35: $29
	rst  $28                                         ; $7c36: $ef
	ld   sp, hl                                      ; $7c37: $f9
	ld   de, $1111                                   ; $7c38: $11 $11 $11
	ld   [de], a                                     ; $7c3b: $12
	rst  $38                                         ; $7c3c: $ff
	rst  $38                                         ; $7c3d: $ff
	or   a                                           ; $7c3e: $b7
	db   $dd                                         ; $7c3f: $dd
	ld   [$8f16], a                                  ; $7c40: $ea $16 $8f
	ld   sp, hl                                      ; $7c43: $f9
	ld   b, d                                        ; $7c44: $42
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c45: $cf
	cp   $61                                         ; $7c46: $fe $61
	ld   de, $1111                                   ; $7c48: $11 $11 $11
	rst  JumpTable                                         ; $7c4b: $df
	rst  $38                                         ; $7c4c: $ff
	ret  c                                           ; $7c4d: $d8

	sbc  $fd                                         ; $7c4e: $de $fd
	rla                                              ; $7c50: $17
	adc  a                                           ; $7c51: $8f
	rst  $30                                         ; $7c52: $f7
	ld   hl, $fe9f                                   ; $7c53: $21 $9f $fe
	ld   [hl], c                                     ; $7c56: $71
	ld   de, $1811                                   ; $7c57: $11 $11 $18
	rst  $38                                         ; $7c5a: $ff
	rst  $38                                         ; $7c5b: $ff
	rst  $38                                         ; $7c5c: $ff
	rst  $38                                         ; $7c5d: $ff
	db   $e4                                         ; $7c5e: $e4
	xor  e                                           ; $7c5f: $ab
	rst  $28                                         ; $7c60: $ef
	add  e                                           ; $7c61: $83
	daa                                              ; $7c62: $27
	xor  [hl]                                        ; $7c63: $ae
	sub  e                                           ; $7c64: $93
	ld   de, $2a11                                   ; $7c65: $11 $11 $2a
	adc  $ac                                         ; $7c68: $ce $ac
	rst  $38                                         ; $7c6a: $ff
	rst  $38                                         ; $7c6b: $ff
	ret  c                                           ; $7c6c: $d8

	rst  JumpTable                                         ; $7c6d: $df
	db   $fd                                         ; $7c6e: $fd
	ld   h, d                                        ; $7c6f: $62
	ld   h, $78                                      ; $7c70: $26 $78
	ld   b, c                                        ; $7c72: $41
	ld   de, $bd14                                   ; $7c73: $11 $14 $bd
	xor  b                                           ; $7c76: $a8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c77: $cf
	rst  $38                                         ; $7c78: $ff
	db   $fc                                         ; $7c79: $fc
	xor  a                                           ; $7c7a: $af
	rst  $38                                         ; $7c7b: $ff
	add  $47                                         ; $7c7c: $c6 $47
	add  [hl]                                        ; $7c7e: $86
	ld   hl, $1511                                   ; $7c7f: $21 $11 $15
	sbc  c                                           ; $7c82: $99
	ld   a, d                                        ; $7c83: $7a
	rst  $38                                         ; $7c84: $ff
	rst  $38                                         ; $7c85: $ff
	ld   [$eedf], a                                  ; $7c86: $ea $df $ee
	add  [hl]                                        ; $7c89: $86
	ld   l, d                                        ; $7c8a: $6a
	ld   [hl], e                                     ; $7c8b: $73
	ld   de, $3611                                   ; $7c8c: $11 $11 $36
	ld   [hl], l                                     ; $7c8f: $75
	sbc  a                                           ; $7c90: $9f
	rst  $38                                         ; $7c91: $ff
	rst  $38                                         ; $7c92: $ff
	rst  $28                                         ; $7c93: $ef
	rst  $38                                         ; $7c94: $ff
	jp   c, $a578                                    ; $7c95: $da $78 $a5

	ld   de, $1311                                   ; $7c98: $11 $11 $13
	ld   b, e                                        ; $7c9b: $43
	ld   e, h                                        ; $7c9c: $5c
	rst  $38                                         ; $7c9d: $ff
	rst  $38                                         ; $7c9e: $ff
	rst  $38                                         ; $7c9f: $ff
	rst  $38                                         ; $7ca0: $ff
	ei                                               ; $7ca1: $fb
	ld   [hl], a                                     ; $7ca2: $77
	cp   b                                           ; $7ca3: $b8
	ld   hl, $1211                                   ; $7ca4: $21 $11 $12
	ld   [hl-], a                                    ; $7ca7: $32
	ld   e, d                                        ; $7ca8: $5a
	rst  $28                                         ; $7ca9: $ef
	rst  $38                                         ; $7caa: $ff
	rst  $38                                         ; $7cab: $ff
	rst  $38                                         ; $7cac: $ff
	db   $ec                                         ; $7cad: $ec
	cp   d                                           ; $7cae: $ba
	sub  h                                           ; $7caf: $94
	ld   de, $1111                                   ; $7cb0: $11 $11 $11
	ld   [de], a                                     ; $7cb3: $12
	sbc  l                                           ; $7cb4: $9d
	rst  $28                                         ; $7cb5: $ef
	rst  $38                                         ; $7cb6: $ff
	rst  $38                                         ; $7cb7: $ff
	rst  $38                                         ; $7cb8: $ff
	db   $fd                                         ; $7cb9: $fd
	cp   d                                           ; $7cba: $ba
	ld   d, c                                        ; $7cbb: $51
	ld   de, $1111                                   ; $7cbc: $11 $11 $11
	daa                                              ; $7cbf: $27
	cp   l                                           ; $7cc0: $bd
	rst  $28                                         ; $7cc1: $ef
	rst  $38                                         ; $7cc2: $ff
	rst  $38                                         ; $7cc3: $ff
	rst  $38                                         ; $7cc4: $ff
	jp   z, $1184                                    ; $7cc5: $ca $84 $11

	ld   de, $1311                                   ; $7cc8: $11 $11 $13
	adc  d                                           ; $7ccb: $8a
	cp   [hl]                                        ; $7ccc: $be
	rst  $38                                         ; $7ccd: $ff
	rst  $38                                         ; $7cce: $ff
	rst  $38                                         ; $7ccf: $ff
	db   $fc                                         ; $7cd0: $fc
	and  a                                           ; $7cd1: $a7
	ld   hl, $1111                                   ; $7cd2: $21 $11 $11
	ld   de, $9b68                                   ; $7cd5: $11 $68 $9b
	rst  $38                                         ; $7cd8: $ff
	rst  $38                                         ; $7cd9: $ff
	rst  $38                                         ; $7cda: $ff
	db   $fd                                         ; $7cdb: $fd
	cp   b                                           ; $7cdc: $b8
	ld   b, c                                        ; $7cdd: $41
	ld   de, $1111                                   ; $7cde: $11 $11 $11
	ld   b, a                                        ; $7ce1: $47
	adc  e                                           ; $7ce2: $8b
	rst  $38                                         ; $7ce3: $ff
	rst  $38                                         ; $7ce4: $ff
	rst  $38                                         ; $7ce5: $ff
	cp   $b8                                         ; $7ce6: $fe $b8
	ld   d, c                                        ; $7ce8: $51
	ld   de, $1111                                   ; $7ce9: $11 $11 $11
	dec  [hl]                                        ; $7cec: $35
	ld   a, e                                        ; $7ced: $7b
	rst  $38                                         ; $7cee: $ff
	rst  $38                                         ; $7cef: $ff
	rst  $38                                         ; $7cf0: $ff
	rst  $38                                         ; $7cf1: $ff
	cp   b                                           ; $7cf2: $b8
	ld   b, c                                        ; $7cf3: $41
	ld   de, $1111                                   ; $7cf4: $11 $11 $11
	dec  [hl]                                        ; $7cf7: $35
	ld   l, h                                        ; $7cf8: $6c
	rst  $38                                         ; $7cf9: $ff
	rst  $38                                         ; $7cfa: $ff
	rst  $38                                         ; $7cfb: $ff
	cp   $c9                                         ; $7cfc: $fe $c9
	ld   sp, $1111                                   ; $7cfe: $31 $11 $11
	ld   de, $7d23                                   ; $7d01: $11 $23 $7d
	rst  $38                                         ; $7d04: $ff
	rst  $38                                         ; $7d05: $ff
	rst  $38                                         ; $7d06: $ff
	db   $fc                                         ; $7d07: $fc
	and  [hl]                                        ; $7d08: $a6
	ld   de, $1111                                   ; $7d09: $11 $11 $11
	ld   de, $ae35                                   ; $7d0c: $11 $35 $ae
	rst  $38                                         ; $7d0f: $ff
	rst  $38                                         ; $7d10: $ff
	rst  $38                                         ; $7d11: $ff
	db   $eb                                         ; $7d12: $eb
	ld   [hl], e                                     ; $7d13: $73
	ld   de, $1111                                   ; $7d14: $11 $11 $11
	ld   [de], a                                     ; $7d17: $12
	ld   c, c                                        ; $7d18: $49
	rst  $28                                         ; $7d19: $ef
	rst  $38                                         ; $7d1a: $ff
	rst  $38                                         ; $7d1b: $ff
	rst  $38                                         ; $7d1c: $ff
	ret                                              ; $7d1d: $c9


	ld   b, d                                        ; $7d1e: $42
	ld   de, $1111                                   ; $7d1f: $11 $11 $11
	inc  d                                           ; $7d22: $14
	sbc  h                                           ; $7d23: $9c
	rst  $38                                         ; $7d24: $ff
	rst  $38                                         ; $7d25: $ff
	rst  $38                                         ; $7d26: $ff
	db   $ed                                         ; $7d27: $ed
	add  l                                           ; $7d28: $85
	ld   hl, $1111                                   ; $7d29: $21 $11 $11
	ld   de, $bf38                                   ; $7d2c: $11 $38 $bf
	rst  $38                                         ; $7d2f: $ff
	rst  $38                                         ; $7d30: $ff
	rst  $38                                         ; $7d31: $ff
	ret  z                                           ; $7d32: $c8

	ld   d, d                                        ; $7d33: $52
	ld   de, $1111                                   ; $7d34: $11 $11 $11
	inc  d                                           ; $7d37: $14
	adc  l                                           ; $7d38: $8d
	rst  $38                                         ; $7d39: $ff
	rst  $38                                         ; $7d3a: $ff
	rst  $38                                         ; $7d3b: $ff
	db   $fc                                         ; $7d3c: $fc
	ld   [hl], h                                     ; $7d3d: $74
	ld   de, $1111                                   ; $7d3e: $11 $11 $11
	ld   [de], a                                     ; $7d41: $12
	ld   a, e                                        ; $7d42: $7b
	rst  $28                                         ; $7d43: $ef
	rst  $38                                         ; $7d44: $ff
	rst  $38                                         ; $7d45: $ff
	cp   $a6                                         ; $7d46: $fe $a6
	ld   sp, $1111                                   ; $7d48: $31 $11 $11
	ld   de, $cf47                                   ; $7d4b: $11 $47 $cf
	rst  $38                                         ; $7d4e: $ff
	rst  $38                                         ; $7d4f: $ff
	rst  $38                                         ; $7d50: $ff
	or   a                                           ; $7d51: $b7
	ld   d, d                                        ; $7d52: $52
	ld   de, $1111                                   ; $7d53: $11 $11 $11
	ld   h, $ae                                      ; $7d56: $26 $ae
	rst  $38                                         ; $7d58: $ff
	rst  $38                                         ; $7d59: $ff
	rst  $38                                         ; $7d5a: $ff
	ret  z                                           ; $7d5b: $c8

	ld   d, e                                        ; $7d5c: $53
	ld   de, $1111                                   ; $7d5d: $11 $11 $11
	ld   h, $ad                                      ; $7d60: $26 $ad
	rst  $38                                         ; $7d62: $ff
	rst  $38                                         ; $7d63: $ff
	rst  $38                                         ; $7d64: $ff
	ret  z                                           ; $7d65: $c8

	ld   d, e                                        ; $7d66: $53
	ld   de, $1111                                   ; $7d67: $11 $11 $11
	ld   h, $9e                                      ; $7d6a: $26 $9e
	rst  $38                                         ; $7d6c: $ff
	rst  $38                                         ; $7d6d: $ff
	cp   $b8                                         ; $7d6e: $fe $b8
	ld   h, e                                        ; $7d70: $63
	ld   de, $1111                                   ; $7d71: $11 $11 $11
	ld   [hl], $ad                                   ; $7d74: $36 $ad
	rst  $38                                         ; $7d76: $ff
	rst  $38                                         ; $7d77: $ff
	rst  $38                                         ; $7d78: $ff
	cp   c                                           ; $7d79: $b9
	ld   d, e                                        ; $7d7a: $53
	ld   de, $1111                                   ; $7d7b: $11 $11 $11
	ld   [hl], $9e                                   ; $7d7e: $36 $9e
	rst  $38                                         ; $7d80: $ff
	rst  $38                                         ; $7d81: $ff
	cp   $b9                                         ; $7d82: $fe $b9
	ld   h, e                                        ; $7d84: $63
	ld   de, $1111                                   ; $7d85: $11 $11 $11
	ld   [hl], $ae                                   ; $7d88: $36 $ae
	rst  $38                                         ; $7d8a: $ff
	rst  $38                                         ; $7d8b: $ff
	db   $fc                                         ; $7d8c: $fc
	cp   c                                           ; $7d8d: $b9
	ld   h, d                                        ; $7d8e: $62
	ld   hl, $1211                                   ; $7d8f: $21 $11 $12
	ld   [hl], $be                                   ; $7d92: $36 $be
	rst  $38                                         ; $7d94: $ff
	rst  $38                                         ; $7d95: $ff
	db   $fc                                         ; $7d96: $fc
	xor  b                                           ; $7d97: $a8
	ld   d, d                                        ; $7d98: $52
	ld   sp, $1311                                   ; $7d99: $31 $11 $13
	scf                                              ; $7d9c: $37
	cp   l                                           ; $7d9d: $bd
	rst  $28                                         ; $7d9e: $ef
	rst  $38                                         ; $7d9f: $ff
	db   $eb                                         ; $7da0: $eb
	sbc  b                                           ; $7da1: $98
	ld   d, e                                        ; $7da2: $53
	ld   sp, $2211                                   ; $7da3: $31 $11 $22
	ld   e, d                                        ; $7da6: $5a
	call $feff                                       ; $7da7: $cd $ff $fe
	cp   d                                           ; $7daa: $ba
	sub  a                                           ; $7dab: $97
	inc  hl                                          ; $7dac: $23
	ld   b, c                                        ; $7dad: $41
	ld   [de], a                                     ; $7dae: $12
	ld   d, e                                        ; $7daf: $53
	ld   e, e                                        ; $7db0: $5b
	xor  $ff                                         ; $7db1: $ee $ff
	ld   [$8399], a                                  ; $7db3: $ea $99 $83
	ld   h, $41                                      ; $7db6: $26 $41
	rla                                              ; $7db8: $17
	ld   d, d                                        ; $7db9: $52
	cp   [hl]                                        ; $7dba: $be
	call z, $c8ff                                    ; $7dbb: $cc $ff $c8
	adc  c                                           ; $7dbe: $89
	sub  d                                           ; $7dbf: $92
	scf                                              ; $7dc0: $37
	ld   hl, $3539                                   ; $7dc1: $21 $39 $35
	xor  $cf                                         ; $7dc4: $ee $cf
	rst  $38                                         ; $7dc6: $ff
	and  [hl]                                        ; $7dc7: $a6
	ld   [hl], a                                     ; $7dc8: $77
	ld   sp, $1146                                   ; $7dc9: $31 $46 $11
	adc  e                                           ; $7dcc: $8b
	dec  sp                                          ; $7dcd: $3b
	rst  $38                                         ; $7dce: $ff
	rst  $28                                         ; $7dcf: $ef
	db   $fc                                         ; $7dd0: $fc
	inc  sp                                          ; $7dd1: $33
	ld   d, d                                        ; $7dd2: $52
	ld   de, $1562                                   ; $7dd3: $11 $62 $15
	ld   [$ff9f], a                                  ; $7dd6: $ea $9f $ff
	rst  $38                                         ; $7dd9: $ff
	pop  bc                                          ; $7dda: $c1
	inc  de                                          ; $7ddb: $13
	ld   de, $1115                                   ; $7ddc: $11 $15 $11
	ld   l, a                                        ; $7ddf: $6f
	db   $dd                                         ; $7de0: $dd
	rst  $38                                         ; $7de1: $ff
	rst  $38                                         ; $7de2: $ff
	ld   hl, sp+$11                                  ; $7de3: $f8 $11
	ld   sp, $7111                                   ; $7de5: $31 $11 $71
	rra                                              ; $7de8: $1f
	ld   a, [$ffff]                                  ; $7de9: $fa $ff $ff
	cp   $11                                         ; $7dec: $fe $11
	ld   de, $8411                                   ; $7dee: $11 $11 $84
	rla                                              ; $7df1: $17
	rst  $38                                         ; $7df2: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7df3: $cf
	rst  $38                                         ; $7df4: $ff
	rst  $38                                         ; $7df5: $ff
	ld   d, c                                        ; $7df6: $51
	ld   [de], a                                     ; $7df7: $12
	ld   de, $1249                                   ; $7df8: $11 $49 $12
	rst  $38                                         ; $7dfb: $ff
	cp   a                                           ; $7dfc: $bf
	rst  $38                                         ; $7dfd: $ff
	rst  $38                                         ; $7dfe: $ff
	and  c                                           ; $7dff: $a1
	ld   de, $1b11                                   ; $7e00: $11 $11 $1b
	ld   d, c                                        ; $7e03: $51
	rst  JumpTable                                         ; $7e04: $df
	rst  JumpTable                                         ; $7e05: $df
	rst  $38                                         ; $7e06: $ff
	rst  $38                                         ; $7e07: $ff
	and  c                                           ; $7e08: $a1
	ld   de, $1b11                                   ; $7e09: $11 $11 $1b
	ld   [hl], c                                     ; $7e0c: $71
	cp   a                                           ; $7e0d: $bf
	rst  $38                                         ; $7e0e: $ff
	rst  $38                                         ; $7e0f: $ff
	rst  $38                                         ; $7e10: $ff
	pop  hl                                          ; $7e11: $e1
	ld   de, $1b11                                   ; $7e12: $11 $11 $1b
	and  d                                           ; $7e15: $a2
	ld   a, a                                        ; $7e16: $7f
	db   $fd                                         ; $7e17: $fd
	rst  $38                                         ; $7e18: $ff
	rst  $38                                         ; $7e19: $ff
	pop  de                                          ; $7e1a: $d1
	ld   de, $1911                                   ; $7e1b: $11 $11 $19
	or   l                                           ; $7e1e: $b5
	ld   l, a                                        ; $7e1f: $6f
	db   $fc                                         ; $7e20: $fc
	rst  $38                                         ; $7e21: $ff
	rst  $38                                         ; $7e22: $ff
	db   $d3                                         ; $7e23: $d3
	ld   de, $1611                                   ; $7e24: $11 $11 $16
	rst  $20                                         ; $7e27: $e7
	ld   c, a                                        ; $7e28: $4f
	db   $fd                                         ; $7e29: $fd
	rst  $38                                         ; $7e2a: $ff
	rst  $38                                         ; $7e2b: $ff
	db   $e4                                         ; $7e2c: $e4
	ld   de, $1111                                   ; $7e2d: $11 $11 $11
	ld   sp, hl                                      ; $7e30: $f9
	ccf                                              ; $7e31: $3f
	cp   $ff                                         ; $7e32: $fe $ff
	rst  $38                                         ; $7e34: $ff
	rst  $20                                         ; $7e35: $e7
	ld   de, $1111                                   ; $7e36: $11 $11 $11
	ld   sp, hl                                      ; $7e39: $f9
	ld   e, l                                        ; $7e3a: $5d
	rst  $38                                         ; $7e3b: $ff
	rst  $38                                         ; $7e3c: $ff
	rst  $38                                         ; $7e3d: $ff
	push de                                          ; $7e3e: $d5
	ld   de, $1111                                   ; $7e3f: $11 $11 $11
	ld   [$ff7a], a                                  ; $7e42: $ea $7a $ff
	rst  $28                                         ; $7e45: $ef
	rst  $38                                         ; $7e46: $ff
	or   $11                                         ; $7e47: $f6 $11
	ld   de, $dc11                                   ; $7e49: $11 $11 $dc
	adc  d                                           ; $7e4c: $8a
	rst  $38                                         ; $7e4d: $ff
	rst  $38                                         ; $7e4e: $ff
	rst  $38                                         ; $7e4f: $ff
	or   $11                                         ; $7e50: $f6 $11
	ld   de, $cd11                                   ; $7e52: $11 $11 $cd
	adc  d                                           ; $7e55: $8a
	rst  $38                                         ; $7e56: $ff
	rst  $38                                         ; $7e57: $ff
	rst  $38                                         ; $7e58: $ff
	rst  $30                                         ; $7e59: $f7
	ld   de, $1111                                   ; $7e5a: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e5d: $cf
	sbc  b                                           ; $7e5e: $98
	rst  $38                                         ; $7e5f: $ff
	rst  $28                                         ; $7e60: $ef
	rst  $38                                         ; $7e61: $ff
	rst  $30                                         ; $7e62: $f7
	ld   de, $1111                                   ; $7e63: $11 $11 $11
	cp   a                                           ; $7e66: $bf
	xor  b                                           ; $7e67: $a8
	rst  $38                                         ; $7e68: $ff
	rst  $38                                         ; $7e69: $ff
	rst  $38                                         ; $7e6a: $ff
	push af                                          ; $7e6b: $f5
	ld   de, $1111                                   ; $7e6c: $11 $11 $11
	xor  a                                           ; $7e6f: $af
	cp   d                                           ; $7e70: $ba
	rst  $38                                         ; $7e71: $ff
	rst  $38                                         ; $7e72: $ff
	rst  $38                                         ; $7e73: $ff
	ld   hl, sp+$11                                  ; $7e74: $f8 $11
	ld   de, $7f11                                   ; $7e76: $11 $11 $7f
	jp   c, $ffff                                    ; $7e79: $da $ff $ff

	rst  $38                                         ; $7e7c: $ff
	ld   hl, sp+$11                                  ; $7e7d: $f8 $11
	ld   de, $5f11                                   ; $7e7f: $11 $11 $5f
	db   $eb                                         ; $7e82: $eb
	rst  $38                                         ; $7e83: $ff
	rst  $38                                         ; $7e84: $ff
	rst  $38                                         ; $7e85: $ff
	ei                                               ; $7e86: $fb
	ld   de, $1111                                   ; $7e87: $11 $11 $11
	ccf                                              ; $7e8a: $3f
	ei                                               ; $7e8b: $fb
	rst  $38                                         ; $7e8c: $ff
	rst  $38                                         ; $7e8d: $ff
	rst  $38                                         ; $7e8e: $ff
	db   $fc                                         ; $7e8f: $fc
	ld   de, $1111                                   ; $7e90: $11 $11 $11
	rra                                              ; $7e93: $1f
	db   $fd                                         ; $7e94: $fd
	rst  $28                                         ; $7e95: $ef
	cp   $ff                                         ; $7e96: $fe $ff
	db   $fc                                         ; $7e98: $fc
	ld   de, $1111                                   ; $7e99: $11 $11 $11
	rra                                              ; $7e9c: $1f
	rst  $38                                         ; $7e9d: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7e9e: $cf
	cp   $ff                                         ; $7e9f: $fe $ff
	rst  $38                                         ; $7ea1: $ff
	ld   de, $1111                                   ; $7ea2: $11 $11 $11
	ld   e, $ff                                      ; $7ea5: $1e $ff
	rst  JumpTable                                         ; $7ea7: $df
	rst  $38                                         ; $7ea8: $ff
	rst  $38                                         ; $7ea9: $ff
	rst  $38                                         ; $7eaa: $ff
	ld   d, c                                        ; $7eab: $51
	ld   de, $1a11                                   ; $7eac: $11 $11 $1a
	rst  $38                                         ; $7eaf: $ff
	rst  $28                                         ; $7eb0: $ef
	rst  $38                                         ; $7eb1: $ff
	rst  $28                                         ; $7eb2: $ef
	rst  $38                                         ; $7eb3: $ff
	or   c                                           ; $7eb4: $b1
	ld   de, $1311                                   ; $7eb5: $11 $11 $13
	rst  $38                                         ; $7eb8: $ff
	rst  $28                                         ; $7eb9: $ef
	rst  $38                                         ; $7eba: $ff
	rst  $28                                         ; $7ebb: $ef
	rst  $38                                         ; $7ebc: $ff
	pop  de                                          ; $7ebd: $d1
	ld   de, $1111                                   ; $7ebe: $11 $11 $11
	rst  $38                                         ; $7ec1: $ff
	rst  $38                                         ; $7ec2: $ff
	rst  $38                                         ; $7ec3: $ff
	rst  $38                                         ; $7ec4: $ff
	rst  $38                                         ; $7ec5: $ff
	di                                               ; $7ec6: $f3
	ld   de, $1111                                   ; $7ec7: $11 $11 $11
	ld   a, a                                        ; $7eca: $7f
	rst  $38                                         ; $7ecb: $ff
	rst  $38                                         ; $7ecc: $ff
	rst  $38                                         ; $7ecd: $ff
	rst  $38                                         ; $7ece: $ff
	rst  $38                                         ; $7ecf: $ff
	ld   de, $1111                                   ; $7ed0: $11 $11 $11
	ld   e, $ff                                      ; $7ed3: $1e $ff
	rst  $38                                         ; $7ed5: $ff
	rst  $38                                         ; $7ed6: $ff
	rst  $38                                         ; $7ed7: $ff
	rst  $38                                         ; $7ed8: $ff
	or   c                                           ; $7ed9: $b1
	ld   de, $1411                                   ; $7eda: $11 $11 $14
	rst  $38                                         ; $7edd: $ff
	rst  $38                                         ; $7ede: $ff
	rst  $38                                         ; $7edf: $ff
	rst  $28                                         ; $7ee0: $ef
	rst  $38                                         ; $7ee1: $ff
	pop  af                                          ; $7ee2: $f1
	ld   de, $1111                                   ; $7ee3: $11 $11 $11
	adc  a                                           ; $7ee6: $8f
	rst  $38                                         ; $7ee7: $ff
	rst  $38                                         ; $7ee8: $ff
	cp   $ff                                         ; $7ee9: $fe $ff
	rst  $38                                         ; $7eeb: $ff
	ld   de, $1111                                   ; $7eec: $11 $11 $11
	rra                                              ; $7eef: $1f
	rst  $38                                         ; $7ef0: $ff
	rst  $38                                         ; $7ef1: $ff
	rst  $38                                         ; $7ef2: $ff
	rst  $28                                         ; $7ef3: $ef
	rst  $38                                         ; $7ef4: $ff
	add  c                                           ; $7ef5: $81
	ld   de, $1211                                   ; $7ef6: $11 $11 $12
	rst  JumpTable                                         ; $7ef9: $df
	rst  $38                                         ; $7efa: $ff
	rst  $38                                         ; $7efb: $ff
	rst  $38                                         ; $7efc: $ff
	rst  $38                                         ; $7efd: $ff
	ld   a, [$1111]                                  ; $7efe: $fa $11 $11
	ld   de, $ff1f                                   ; $7f01: $11 $1f $ff
	rst  $38                                         ; $7f04: $ff
	rst  $38                                         ; $7f05: $ff
	rst  $38                                         ; $7f06: $ff
	rst  $38                                         ; $7f07: $ff
	or   c                                           ; $7f08: $b1
	ld   de, $1111                                   ; $7f09: $11 $11 $11
	xor  a                                           ; $7f0c: $af
	db   $fd                                         ; $7f0d: $fd
	rst  $38                                         ; $7f0e: $ff
	rst  $38                                         ; $7f0f: $ff
	rst  $38                                         ; $7f10: $ff
	db   $fc                                         ; $7f11: $fc
	ld   de, $1111                                   ; $7f12: $11 $11 $11
	dec  h                                           ; $7f15: $25
	rst  $38                                         ; $7f16: $ff
	rst  JumpTable                                         ; $7f17: $df
	rst  $38                                         ; $7f18: $ff
	rst  $38                                         ; $7f19: $ff
	rst  $38                                         ; $7f1a: $ff
	db   $d3                                         ; $7f1b: $d3
	ld   de, $1111                                   ; $7f1c: $11 $11 $11
	ld   l, $ff                                      ; $7f1f: $2e $ff
	rst  $28                                         ; $7f21: $ef
	rst  $38                                         ; $7f22: $ff
	rst  $38                                         ; $7f23: $ff
	rst  $38                                         ; $7f24: $ff
	ld   h, c                                        ; $7f25: $61
	ld   de, $2111                                   ; $7f26: $11 $11 $21
	ld   a, a                                        ; $7f29: $7f
	rst  $38                                         ; $7f2a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f2b: $cf
	rst  $38                                         ; $7f2c: $ff
	rst  $38                                         ; $7f2d: $ff
	rst  $38                                         ; $7f2e: $ff
	ld   de, $1111                                   ; $7f2f: $11 $11 $11
	ld   de, $ffce                                   ; $7f32: $11 $ce $ff
	rst  $38                                         ; $7f35: $ff
	rst  $38                                         ; $7f36: $ff
	rst  $38                                         ; $7f37: $ff
	ei                                               ; $7f38: $fb
	ld   de, $1111                                   ; $7f39: $11 $11 $11
	inc  de                                          ; $7f3c: $13
	cp   l                                           ; $7f3d: $bd
	rst  $38                                         ; $7f3e: $ff
	rst  $38                                         ; $7f3f: $ff
	rst  $38                                         ; $7f40: $ff
	rst  $38                                         ; $7f41: $ff
	ld   sp, hl                                      ; $7f42: $f9
	ld   de, $1111                                   ; $7f43: $11 $11 $11
	ld   de, $ffff                                   ; $7f46: $11 $ff $ff
	rst  $38                                         ; $7f49: $ff
	rst  $38                                         ; $7f4a: $ff
	rst  $38                                         ; $7f4b: $ff
	ei                                               ; $7f4c: $fb
	ld   de, $1111                                   ; $7f4d: $11 $11 $11
	ld   de, $ffbe                                   ; $7f50: $11 $be $ff
	rst  $38                                         ; $7f53: $ff
	rst  $38                                         ; $7f54: $ff
	rst  $38                                         ; $7f55: $ff
	ld   sp, hl                                      ; $7f56: $f9
	ld   de, $1111                                   ; $7f57: $11 $11 $11
	ld   de, $ffaa                                   ; $7f5a: $11 $aa $ff
	rst  $38                                         ; $7f5d: $ff
	rst  $38                                         ; $7f5e: $ff
	rst  $38                                         ; $7f5f: $ff
	rst  $38                                         ; $7f60: $ff
	ld   [hl], c                                     ; $7f61: $71
	ld   de, $1111                                   ; $7f62: $11 $11 $11
	add  hl, de                                      ; $7f65: $19
	rst  $38                                         ; $7f66: $ff
	rst  $38                                         ; $7f67: $ff
	rst  $38                                         ; $7f68: $ff
	cp   $ff                                         ; $7f69: $fe $ff
	or   c                                           ; $7f6b: $b1
	ld   de, $1211                                   ; $7f6c: $11 $11 $12
	ld   de, $febf                                   ; $7f6f: $11 $bf $fe
	rst  $38                                         ; $7f72: $ff
	rst  $38                                         ; $7f73: $ff
	rst  $38                                         ; $7f74: $ff
	ld   hl, sp+$11                                  ; $7f75: $f8 $11
	ld   de, $1111                                   ; $7f77: $11 $11 $11
	add  hl, sp                                      ; $7f7a: $39
	rst  $38                                         ; $7f7b: $ff
	rst  JumpTable                                         ; $7f7c: $df
	rst  $38                                         ; $7f7d: $ff
	rst  $38                                         ; $7f7e: $ff
	rst  $38                                         ; $7f7f: $ff
	or   c                                           ; $7f80: $b1
	ld   de, $1311                                   ; $7f81: $11 $11 $13
	ld   de, $fb9f                                   ; $7f84: $11 $9f $fb
	rst  $38                                         ; $7f87: $ff
	rst  $38                                         ; $7f88: $ff
	rst  $38                                         ; $7f89: $ff
	db   $fd                                         ; $7f8a: $fd
	ld   b, c                                        ; $7f8b: $41
	ld   de, $1311                                   ; $7f8c: $11 $11 $13
	dec  d                                           ; $7f8f: $15
	rst  $38                                         ; $7f90: $ff
	rst  $38                                         ; $7f91: $ff
	rst  $38                                         ; $7f92: $ff
	cp   $ff                                         ; $7f93: $fe $ff
	ld   sp, hl                                      ; $7f95: $f9
	ld   hl, $1111                                   ; $7f96: $21 $11 $11
	ld   de, $ff19                                   ; $7f99: $11 $19 $ff
	cp   a                                           ; $7f9c: $bf
	rst  $38                                         ; $7f9d: $ff
	rst  $38                                         ; $7f9e: $ff
	rst  $38                                         ; $7f9f: $ff
	ld   hl, sp+$13                                  ; $7fa0: $f8 $13
	ld   de, $3111                                   ; $7fa2: $11 $11 $31
	inc  e                                           ; $7fa5: $1c
	db   $fd                                         ; $7fa6: $fd
	rst  JumpTable                                         ; $7fa7: $df
	rst  $38                                         ; $7fa8: $ff
	rst  $38                                         ; $7fa9: $ff
	rst  $38                                         ; $7faa: $ff
	ld   a, [$1161]                                  ; $7fab: $fa $61 $11
	ld   de, $1311                                   ; $7fae: $11 $11 $13
	cp   $df                                         ; $7fb1: $fe $df
	rst  $38                                         ; $7fb3: $ff
	rst  $38                                         ; $7fb4: $ff
	rst  $38                                         ; $7fb5: $ff
	rst  $38                                         ; $7fb6: $ff
	add  e                                           ; $7fb7: $83
	ld   hl, $1111                                   ; $7fb8: $21 $11 $11
	ld   de, $de8f                                   ; $7fbb: $11 $8f $de
	rst  $38                                         ; $7fbe: $ff
	rst  $38                                         ; $7fbf: $ff
	rst  $38                                         ; $7fc0: $ff
	rst  $38                                         ; $7fc1: $ff
	call c, $1141                                    ; $7fc2: $dc $41 $11
	ld   de, $1c11                                   ; $7fc5: $11 $11 $1c
	call c, $ffff                                    ; $7fc8: $dc $ff $ff
	rst  $38                                         ; $7fcb: $ff
	rst  $38                                         ; $7fcc: $ff
	db   $fd                                         ; $7fcd: $fd
	xor  b                                           ; $7fce: $a8
	ld   de, $1111                                   ; $7fcf: $11 $11 $11
	ld   de, $fc1f                                   ; $7fd2: $11 $1f $fc
	rst  $38                                         ; $7fd5: $ff
	rst  $38                                         ; $7fd6: $ff
	rst  $38                                         ; $7fd7: $ff
	rst  $38                                         ; $7fd8: $ff
	cp   $b2                                         ; $7fd9: $fe $b2
	ld   de, $1111                                   ; $7fdb: $11 $11 $11
	ld   de, $ff59                                   ; $7fde: $11 $59 $ff
	rst  $28                                         ; $7fe1: $ef
	rst  $38                                         ; $7fe2: $ff
	rst  $38                                         ; $7fe3: $ff
	rst  $38                                         ; $7fe4: $ff
	ld   a, [$1177]                                  ; $7fe5: $fa $77 $11
	ld   de, $1111                                   ; $7fe8: $11 $11 $11
	ld   a, $ce                                      ; $7feb: $3e $ce
	rst  $38                                         ; $7fed: $ff
	rst  $38                                         ; $7fee: $ff
	rst  $38                                         ; $7fef: $ff
	rst  $38                                         ; $7ff0: $ff
	rst  $38                                         ; $7ff1: $ff
	and  h                                           ; $7ff2: $a4
	ld   de, $1111                                   ; $7ff3: $11 $11 $11
	ld   de, $ff1a                                   ; $7ff6: $11 $1a $ff
	rst  $38                                         ; $7ff9: $ff
	rst  $38                                         ; $7ffa: $ff
	rst  $38                                         ; $7ffb: $ff
	rst  $38                                         ; $7ffc: $ff
	rst  $38                                         ; $7ffd: $ff
	xor  b                                           ; $7ffe: $a8
	db   $31                                         ; $7fff: $31
