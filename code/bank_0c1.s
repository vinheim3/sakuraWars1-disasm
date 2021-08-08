; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0c1", ROMX[$4000], BANK[$c1]

	ld   b, h                                        ; $4000: $44
	ld   b, h                                        ; $4001: $44
	ld   b, h                                        ; $4002: $44
	ld   d, l                                        ; $4003: $55
	ld   h, a                                        ; $4004: $67
	adc  b                                           ; $4005: $88
	sbc  d                                           ; $4006: $9a
	cp   e                                           ; $4007: $bb
	xor  e                                           ; $4008: $ab
	cp   e                                           ; $4009: $bb
	cp   h                                           ; $400a: $bc
	call z, $a9bb                                    ; $400b: $cc $bb $a9
	add  a                                           ; $400e: $87
	ld   [hl], a                                     ; $400f: $77
	ld   h, [hl]                                     ; $4010: $66
	ld   h, [hl]                                     ; $4011: $66
	ld   h, l                                        ; $4012: $65
	ld   d, l                                        ; $4013: $55
	ld   h, [hl]                                     ; $4014: $66
	ld   h, [hl]                                     ; $4015: $66
	ld   h, [hl]                                     ; $4016: $66
	ld   [hl], a                                     ; $4017: $77
	ld   [hl], a                                     ; $4018: $77
	adc  b                                           ; $4019: $88
	sbc  d                                           ; $401a: $9a
	sbc  c                                           ; $401b: $99
	sbc  b                                           ; $401c: $98
	adc  b                                           ; $401d: $88
	adc  b                                           ; $401e: $88
	adc  b                                           ; $401f: $88
	adc  c                                           ; $4020: $89
	sbc  c                                           ; $4021: $99
	adc  c                                           ; $4022: $89
	xor  d                                           ; $4023: $aa
	xor  c                                           ; $4024: $a9
	sbc  b                                           ; $4025: $98
	adc  b                                           ; $4026: $88
	ld   [hl], a                                     ; $4027: $77
	ld   h, [hl]                                     ; $4028: $66
	ld   h, [hl]                                     ; $4029: $66
	ld   h, [hl]                                     ; $402a: $66
	ld   [hl], a                                     ; $402b: $77
	ld   [hl], a                                     ; $402c: $77
	halt                                             ; $402d: $76
	ld   h, [hl]                                     ; $402e: $66
	ld   [hl], a                                     ; $402f: $77
	adc  c                                           ; $4030: $89
	xor  d                                           ; $4031: $aa
	xor  d                                           ; $4032: $aa
	xor  c                                           ; $4033: $a9
	xor  c                                           ; $4034: $a9
	adc  c                                           ; $4035: $89
	adc  b                                           ; $4036: $88
	adc  b                                           ; $4037: $88
	adc  b                                           ; $4038: $88
	add  a                                           ; $4039: $87
	ld   [hl], a                                     ; $403a: $77
	ld   h, [hl]                                     ; $403b: $66
	ld   h, [hl]                                     ; $403c: $66
	ld   [hl], a                                     ; $403d: $77
	adc  c                                           ; $403e: $89
	sbc  c                                           ; $403f: $99
	sbc  c                                           ; $4040: $99
	sbc  b                                           ; $4041: $98
	add  a                                           ; $4042: $87
	ld   [hl], a                                     ; $4043: $77
	ld   a, b                                        ; $4044: $78
	adc  b                                           ; $4045: $88
	adc  b                                           ; $4046: $88
	adc  b                                           ; $4047: $88
	add  a                                           ; $4048: $87
	ld   [hl], a                                     ; $4049: $77
	ld   [hl], a                                     ; $404a: $77
	adc  b                                           ; $404b: $88
	adc  c                                           ; $404c: $89
	xor  c                                           ; $404d: $a9
	sbc  c                                           ; $404e: $99
	xor  c                                           ; $404f: $a9
	adc  b                                           ; $4050: $88
	ld   [hl], a                                     ; $4051: $77
	ld   [hl], a                                     ; $4052: $77
	ld   [hl], a                                     ; $4053: $77
	ld   [hl], a                                     ; $4054: $77
	ld   [hl], a                                     ; $4055: $77
	ld   [hl], a                                     ; $4056: $77
	ld   [hl], a                                     ; $4057: $77
	ld   [hl], a                                     ; $4058: $77
	ld   a, b                                        ; $4059: $78
	adc  c                                           ; $405a: $89
	sbc  d                                           ; $405b: $9a
	sbc  c                                           ; $405c: $99
	sbc  d                                           ; $405d: $9a
	sbc  b                                           ; $405e: $98
	sbc  c                                           ; $405f: $99
	adc  b                                           ; $4060: $88
	adc  b                                           ; $4061: $88
	adc  c                                           ; $4062: $89
	adc  b                                           ; $4063: $88
	ld   [hl], a                                     ; $4064: $77
	ld   [hl], a                                     ; $4065: $77
	ld   [hl], a                                     ; $4066: $77
	ld   [hl], a                                     ; $4067: $77
	ld   a, b                                        ; $4068: $78
	adc  b                                           ; $4069: $88
	sbc  c                                           ; $406a: $99
	sbc  c                                           ; $406b: $99
	sbc  b                                           ; $406c: $98
	adc  b                                           ; $406d: $88
	adc  b                                           ; $406e: $88
	adc  b                                           ; $406f: $88
	sbc  c                                           ; $4070: $99
	sbc  c                                           ; $4071: $99
	adc  b                                           ; $4072: $88
	adc  b                                           ; $4073: $88
	adc  b                                           ; $4074: $88
	adc  b                                           ; $4075: $88
	adc  b                                           ; $4076: $88
	sbc  c                                           ; $4077: $99
	sbc  c                                           ; $4078: $99
	adc  b                                           ; $4079: $88
	adc  b                                           ; $407a: $88
	ld   [hl], a                                     ; $407b: $77
	ld   [hl], a                                     ; $407c: $77
	ld   a, b                                        ; $407d: $78
	adc  b                                           ; $407e: $88
	adc  b                                           ; $407f: $88
	ld   [hl], a                                     ; $4080: $77
	ld   [hl], a                                     ; $4081: $77
	ld   [hl], a                                     ; $4082: $77
	adc  b                                           ; $4083: $88
	adc  b                                           ; $4084: $88
	adc  b                                           ; $4085: $88
	sbc  c                                           ; $4086: $99
	adc  b                                           ; $4087: $88
	adc  c                                           ; $4088: $89
	sbc  b                                           ; $4089: $98
	adc  b                                           ; $408a: $88
	adc  b                                           ; $408b: $88
	adc  b                                           ; $408c: $88
	adc  b                                           ; $408d: $88
	adc  b                                           ; $408e: $88
	add  a                                           ; $408f: $87
	ld   [hl], a                                     ; $4090: $77
	ld   a, b                                        ; $4091: $78
	adc  b                                           ; $4092: $88
	adc  b                                           ; $4093: $88
	adc  b                                           ; $4094: $88
	adc  b                                           ; $4095: $88
	adc  b                                           ; $4096: $88
	adc  b                                           ; $4097: $88
	adc  b                                           ; $4098: $88
	adc  b                                           ; $4099: $88
	sbc  c                                           ; $409a: $99
	sbc  c                                           ; $409b: $99
	adc  b                                           ; $409c: $88
	adc  b                                           ; $409d: $88
	adc  b                                           ; $409e: $88
	adc  b                                           ; $409f: $88
	adc  b                                           ; $40a0: $88
	adc  b                                           ; $40a1: $88
	adc  b                                           ; $40a2: $88
	adc  c                                           ; $40a3: $89
	sbc  b                                           ; $40a4: $98
	adc  b                                           ; $40a5: $88
	adc  b                                           ; $40a6: $88
	ld   a, b                                        ; $40a7: $78
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
	adc  c                                           ; $40b7: $89
	sbc  c                                           ; $40b8: $99
	adc  b                                           ; $40b9: $88
	adc  b                                           ; $40ba: $88
	adc  b                                           ; $40bb: $88
	adc  b                                           ; $40bc: $88
	adc  c                                           ; $40bd: $89
	adc  b                                           ; $40be: $88
	adc  b                                           ; $40bf: $88
	adc  b                                           ; $40c0: $88
	adc  b                                           ; $40c1: $88
	ld   [hl], a                                     ; $40c2: $77
	ld   [hl], a                                     ; $40c3: $77
	adc  b                                           ; $40c4: $88
	adc  b                                           ; $40c5: $88
	adc  c                                           ; $40c6: $89
	adc  b                                           ; $40c7: $88
	adc  b                                           ; $40c8: $88
	adc  b                                           ; $40c9: $88
	adc  b                                           ; $40ca: $88
	sbc  c                                           ; $40cb: $99
	adc  c                                           ; $40cc: $89
	sbc  c                                           ; $40cd: $99
	adc  b                                           ; $40ce: $88
	adc  b                                           ; $40cf: $88
	ld   [hl], a                                     ; $40d0: $77
	ld   a, b                                        ; $40d1: $78
	adc  b                                           ; $40d2: $88
	adc  b                                           ; $40d3: $88
	adc  b                                           ; $40d4: $88
	adc  b                                           ; $40d5: $88
	ld   [hl], a                                     ; $40d6: $77
	ld   a, b                                        ; $40d7: $78
	adc  b                                           ; $40d8: $88
	sbc  c                                           ; $40d9: $99
	sbc  c                                           ; $40da: $99
	adc  b                                           ; $40db: $88
	adc  b                                           ; $40dc: $88
	adc  b                                           ; $40dd: $88
	adc  b                                           ; $40de: $88
	adc  b                                           ; $40df: $88
	adc  b                                           ; $40e0: $88
	sbc  c                                           ; $40e1: $99
	sbc  c                                           ; $40e2: $99
	adc  b                                           ; $40e3: $88
	adc  b                                           ; $40e4: $88
	ld   [hl], a                                     ; $40e5: $77
	adc  b                                           ; $40e6: $88
	adc  b                                           ; $40e7: $88
	adc  b                                           ; $40e8: $88
	adc  b                                           ; $40e9: $88
	adc  b                                           ; $40ea: $88
	adc  b                                           ; $40eb: $88
	adc  b                                           ; $40ec: $88
	adc  b                                           ; $40ed: $88
	adc  c                                           ; $40ee: $89
	sbc  c                                           ; $40ef: $99
	sbc  c                                           ; $40f0: $99
	adc  b                                           ; $40f1: $88
	adc  b                                           ; $40f2: $88
	adc  b                                           ; $40f3: $88
	adc  b                                           ; $40f4: $88
	adc  b                                           ; $40f5: $88
	adc  b                                           ; $40f6: $88
	adc  b                                           ; $40f7: $88
	add  a                                           ; $40f8: $87
	adc  b                                           ; $40f9: $88
	adc  b                                           ; $40fa: $88
	adc  b                                           ; $40fb: $88
	adc  c                                           ; $40fc: $89
	sbc  c                                           ; $40fd: $99
	sbc  b                                           ; $40fe: $98
	adc  b                                           ; $40ff: $88
	adc  b                                           ; $4100: $88
	adc  b                                           ; $4101: $88
	adc  b                                           ; $4102: $88
	adc  b                                           ; $4103: $88
	adc  b                                           ; $4104: $88
	adc  b                                           ; $4105: $88
	adc  b                                           ; $4106: $88
	ld   [hl], a                                     ; $4107: $77
	adc  b                                           ; $4108: $88
	adc  b                                           ; $4109: $88
	adc  b                                           ; $410a: $88
	sbc  c                                           ; $410b: $99
	sbc  b                                           ; $410c: $98
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
	adc  c                                           ; $4165: $89
	adc  b                                           ; $4166: $88
	adc  b                                           ; $4167: $88
	sbc  b                                           ; $4168: $98
	adc  b                                           ; $4169: $88
	adc  b                                           ; $416a: $88
	adc  c                                           ; $416b: $89
	sbc  e                                           ; $416c: $9b
	ret                                              ; $416d: $c9


	xor  d                                           ; $416e: $aa
	add  a                                           ; $416f: $87
	ld   a, d                                        ; $4170: $7a
	sbc  b                                           ; $4171: $98
	ld   a, b                                        ; $4172: $78
	xor  b                                           ; $4173: $a8
	or   [hl]                                        ; $4174: $b6
	ld   l, d                                        ; $4175: $6a
	ld   h, [hl]                                     ; $4176: $66
	ld   l, l                                        ; $4177: $6d
	call nc, $9769                                   ; $4178: $d4 $69 $97
	ld   h, a                                        ; $417b: $67
	sbc  b                                           ; $417c: $98
	sbc  c                                           ; $417d: $99
	ld   a, b                                        ; $417e: $78
	sbc  b                                           ; $417f: $98
	ld   a, d                                        ; $4180: $7a
	sbc  c                                           ; $4181: $99
	cp   b                                           ; $4182: $b8
	ld   d, l                                        ; $4183: $55
	ld   a, c                                        ; $4184: $79
	cp   c                                           ; $4185: $b9
	ld   [hl], l                                     ; $4186: $75
	halt                                             ; $4187: $76
	ld   d, [hl]                                     ; $4188: $56
	ld   l, b                                        ; $4189: $68
	add  a                                           ; $418a: $87
	ld   d, [hl]                                     ; $418b: $56
	halt                                             ; $418c: $76
	ld   h, a                                        ; $418d: $67
	sbc  b                                           ; $418e: $98
	sbc  c                                           ; $418f: $99
	adc  c                                           ; $4190: $89
	cp   d                                           ; $4191: $ba
	sbc  d                                           ; $4192: $9a
	sbc  b                                           ; $4193: $98
	sub  [hl]                                        ; $4194: $96
	ld   b, h                                        ; $4195: $44
	inc  sp                                          ; $4196: $33
	inc  hl                                          ; $4197: $23
	ld   b, h                                        ; $4198: $44
	ld   b, h                                        ; $4199: $44
	ld   l, b                                        ; $419a: $68
	xor  e                                           ; $419b: $ab
	adc  $fe                                         ; $419c: $ce $fe
	db   $ed                                         ; $419e: $ed
	sbc  $dc                                         ; $419f: $de $dc
	xor  b                                           ; $41a1: $a8
	ld   h, e                                        ; $41a2: $63
	ld   de, $1111                                   ; $41a3: $11 $11 $11
	inc  d                                           ; $41a6: $14
	ld   a, c                                        ; $41a7: $79
	call z, $ffcd                                    ; $41a8: $cc $cd $ff
	rst  $38                                         ; $41ab: $ff
	rst  $38                                         ; $41ac: $ff
	rst  $38                                         ; $41ad: $ff
	db   $ec                                         ; $41ae: $ec
	or   [hl]                                        ; $41af: $b6
	ld   de, $1111                                   ; $41b0: $11 $11 $11
	ld   de, $ff7c                                   ; $41b3: $11 $7c $ff
	rst  $38                                         ; $41b6: $ff
	rst  $38                                         ; $41b7: $ff
	rst  $38                                         ; $41b8: $ff
	rst  $38                                         ; $41b9: $ff
	rst  JumpTable                                         ; $41ba: $df
	rst  $38                                         ; $41bb: $ff
	db   $fd                                         ; $41bc: $fd
	ld   [hl], c                                     ; $41bd: $71
	ld   de, $1111                                   ; $41be: $11 $11 $11
	dec  d                                           ; $41c1: $15
	rst  JumpTable                                         ; $41c2: $df
	rst  $38                                         ; $41c3: $ff
	rst  $38                                         ; $41c4: $ff
	rst  $38                                         ; $41c5: $ff
	db   $fd                                         ; $41c6: $fd
	cp   c                                           ; $41c7: $b9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41c8: $cf
	rst  $38                                         ; $41c9: $ff
	ld   a, [$1121]                                  ; $41ca: $fa $21 $11
	ld   de, $9f11                                   ; $41cd: $11 $11 $9f
	rst  $38                                         ; $41d0: $ff
	rst  $38                                         ; $41d1: $ff
	rst  $38                                         ; $41d2: $ff
	db   $fd                                         ; $41d3: $fd
	cp   b                                           ; $41d4: $b8
	adc  h                                           ; $41d5: $8c
	rst  $38                                         ; $41d6: $ff
	rst  $38                                         ; $41d7: $ff
	sub  c                                           ; $41d8: $91
	ld   de, $1111                                   ; $41d9: $11 $11 $11
	ccf                                              ; $41dc: $3f
	rst  $38                                         ; $41dd: $ff
	rst  $38                                         ; $41de: $ff
	rst  $38                                         ; $41df: $ff
	db   $db                                         ; $41e0: $db
	adc  c                                           ; $41e1: $89
	adc  h                                           ; $41e2: $8c
	rst  $28                                         ; $41e3: $ef
	rst  $38                                         ; $41e4: $ff
	ldh  a, [c]                                      ; $41e5: $f2
	ld   de, $1111                                   ; $41e6: $11 $11 $11
	dec  e                                           ; $41e9: $1d
	rst  $38                                         ; $41ea: $ff
	rst  $38                                         ; $41eb: $ff
	rst  $38                                         ; $41ec: $ff
	add  $69                                         ; $41ed: $c6 $69
	xor  c                                           ; $41ef: $a9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41f0: $cf
	rst  $38                                         ; $41f1: $ff
	rst  $30                                         ; $41f2: $f7
	ld   de, $1111                                   ; $41f3: $11 $11 $11
	ld   [de], a                                     ; $41f6: $12
	rst  $38                                         ; $41f7: $ff
	rst  $38                                         ; $41f8: $ff
	rst  $38                                         ; $41f9: $ff
	or   $45                                         ; $41fa: $f6 $45
	sbc  d                                           ; $41fc: $9a
	cp   a                                           ; $41fd: $bf
	rst  $38                                         ; $41fe: $ff
	ei                                               ; $41ff: $fb
	ld   de, $1111                                   ; $4200: $11 $11 $11
	ld   de, $ffff                                   ; $4203: $11 $ff $ff
	rst  $38                                         ; $4206: $ff
	rst  $30                                         ; $4207: $f7
	inc  de                                          ; $4208: $13
	adc  e                                           ; $4209: $8b
	cp   a                                           ; $420a: $bf
	rst  $38                                         ; $420b: $ff
	rst  $38                                         ; $420c: $ff
	ld   sp, $1111                                   ; $420d: $31 $11 $11
	ld   de, $ff7f                                   ; $4210: $11 $7f $ff
	rst  $38                                         ; $4213: $ff
	ei                                               ; $4214: $fb
	ld   de, $cf3a                                   ; $4215: $11 $3a $cf
	rst  $38                                         ; $4218: $ff
	rst  $38                                         ; $4219: $ff
	ld   d, c                                        ; $421a: $51
	ld   de, $1111                                   ; $421b: $11 $11 $11
	rra                                              ; $421e: $1f
	rst  $38                                         ; $421f: $ff
	rst  $38                                         ; $4220: $ff
	rst  $38                                         ; $4221: $ff
	ld   de, $ce18                                   ; $4222: $11 $18 $ce
	rst  $38                                         ; $4225: $ff
	rst  $38                                         ; $4226: $ff
	and  c                                           ; $4227: $a1
	ld   de, $1111                                   ; $4228: $11 $11 $11
	dec  e                                           ; $422b: $1d
	rst  $38                                         ; $422c: $ff
	rst  $38                                         ; $422d: $ff
	rst  $38                                         ; $422e: $ff
	ld   d, c                                        ; $422f: $51
	dec  d                                           ; $4230: $15
	sbc  $ff                                         ; $4231: $de $ff
	rst  $38                                         ; $4233: $ff
	pop  de                                          ; $4234: $d1
	ld   de, $1111                                   ; $4235: $11 $11 $11
	jr   @+$01                                       ; $4238: $18 $ff

	rst  $38                                         ; $423a: $ff
	rst  $38                                         ; $423b: $ff
	ld   [hl], c                                     ; $423c: $71
	rla                                              ; $423d: $17
	rst  JumpTable                                         ; $423e: $df
	rst  $38                                         ; $423f: $ff
	rst  $38                                         ; $4240: $ff
	pop  hl                                          ; $4241: $e1
	ld   de, $1111                                   ; $4242: $11 $11 $11
	ld   [de], a                                     ; $4245: $12
	rst  $38                                         ; $4246: $ff
	rst  $38                                         ; $4247: $ff
	rst  $38                                         ; $4248: $ff
	or   c                                           ; $4249: $b1
	ld   d, $cf                                      ; $424a: $16 $cf
	rst  $38                                         ; $424c: $ff
	rst  $38                                         ; $424d: $ff
	ldh  a, [c]                                      ; $424e: $f2
	ld   de, $1111                                   ; $424f: $11 $11 $11
	ld   de, $ffff                                   ; $4252: $11 $ff $ff
	rst  $38                                         ; $4255: $ff
	db   $f4                                         ; $4256: $f4
	inc  de                                          ; $4257: $13
	sbc  a                                           ; $4258: $9f
	rst  $38                                         ; $4259: $ff
	rst  $38                                         ; $425a: $ff
	di                                               ; $425b: $f3
	ld   de, $1111                                   ; $425c: $11 $11 $11
	ld   de, $ffef                                   ; $425f: $11 $ef $ff
	rst  $38                                         ; $4262: $ff
	push af                                          ; $4263: $f5
	dec  d                                           ; $4264: $15
	xor  l                                           ; $4265: $ad
	rst  $38                                         ; $4266: $ff
	rst  $38                                         ; $4267: $ff
	db   $f4                                         ; $4268: $f4
	ld   de, $1111                                   ; $4269: $11 $11 $11
	ld   de, $ffff                                   ; $426c: $11 $ff $ff
	rst  $38                                         ; $426f: $ff
	rst  $30                                         ; $4270: $f7
	dec  [hl]                                        ; $4271: $35
	xor  h                                           ; $4272: $ac
	rst  $28                                         ; $4273: $ef
	rst  $38                                         ; $4274: $ff
	push af                                          ; $4275: $f5
	ld   de, $1111                                   ; $4276: $11 $11 $11
	ld   de, $ffff                                   ; $4279: $11 $ff $ff
	rst  $38                                         ; $427c: $ff
	ld   a, [$bf35]                                  ; $427d: $fa $35 $bf
	rst  $38                                         ; $4280: $ff
	rst  $38                                         ; $4281: $ff
	db   $f4                                         ; $4282: $f4
	ld   de, $1111                                   ; $4283: $11 $11 $11
	ld   de, $ffff                                   ; $4286: $11 $ff $ff
	rst  $38                                         ; $4289: $ff
	ld   hl, sp+$36                                  ; $428a: $f8 $36
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $428c: $cf
	rst  $38                                         ; $428d: $ff
	rst  $38                                         ; $428e: $ff
	pop  de                                          ; $428f: $d1
	ld   de, $1111                                   ; $4290: $11 $11 $11
	ld   d, $ff                                      ; $4293: $16 $ff
	rst  $38                                         ; $4295: $ff
	rst  $38                                         ; $4296: $ff
	rst  $30                                         ; $4297: $f7
	ld   b, a                                        ; $4298: $47
	cp   [hl]                                        ; $4299: $be
	rst  $38                                         ; $429a: $ff
	rst  $38                                         ; $429b: $ff
	sub  c                                           ; $429c: $91
	ld   de, $1111                                   ; $429d: $11 $11 $11
	ld   e, $ff                                      ; $42a0: $1e $ff
	rst  $38                                         ; $42a2: $ff
	rst  $38                                         ; $42a3: $ff
	push af                                          ; $42a4: $f5
	ld   l, c                                        ; $42a5: $69
	xor  [hl]                                        ; $42a6: $ae
	rst  $38                                         ; $42a7: $ff
	rst  $38                                         ; $42a8: $ff
	ld   hl, $1111                                   ; $42a9: $21 $11 $11
	ld   de, $ff7f                                   ; $42ac: $11 $7f $ff
	rst  $38                                         ; $42af: $ff
	rst  $38                                         ; $42b0: $ff
	and  l                                           ; $42b1: $a5
	ld   l, d                                        ; $42b2: $6a
	rst  JumpTable                                         ; $42b3: $df
	rst  $38                                         ; $42b4: $ff
	or   $11                                         ; $42b5: $f6 $11
	ld   de, $1411                                   ; $42b7: $11 $11 $14
	rst  $38                                         ; $42ba: $ff
	rst  $38                                         ; $42bb: $ff
	rst  $38                                         ; $42bc: $ff
	ei                                               ; $42bd: $fb
	ld   e, b                                        ; $42be: $58
	xor  c                                           ; $42bf: $a9
	cp   a                                           ; $42c0: $bf
	rst  $38                                         ; $42c1: $ff
	ld   h, c                                        ; $42c2: $61
	ld   de, $1111                                   ; $42c3: $11 $11 $11
	ld   l, $ff                                      ; $42c6: $2e $ff
	rst  $38                                         ; $42c8: $ff
	rst  $38                                         ; $42c9: $ff
	call nz, $9b78                                   ; $42ca: $c4 $78 $9b
	rst  $38                                         ; $42cd: $ff
	db   $f4                                         ; $42ce: $f4
	ld   de, $1111                                   ; $42cf: $11 $11 $11
	dec  d                                           ; $42d2: $15
	rst  $38                                         ; $42d3: $ff
	rst  $38                                         ; $42d4: $ff
	rst  $38                                         ; $42d5: $ff
	ld   a, [$4875]                                  ; $42d6: $fa $75 $48
	rst  $38                                         ; $42d9: $ff
	db   $fc                                         ; $42da: $fc
	ld   de, $1111                                   ; $42db: $11 $11 $11
	ld   de, $ff4f                                   ; $42de: $11 $4f $ff
	rst  $38                                         ; $42e1: $ff
	rst  $38                                         ; $42e2: $ff
	ld   [hl], c                                     ; $42e3: $71
	ld   d, $ff                                      ; $42e4: $16 $ff
	rst  $38                                         ; $42e6: $ff
	ld   h, c                                        ; $42e7: $61
	ld   de, $1111                                   ; $42e8: $11 $11 $11
	ld   c, [hl]                                     ; $42eb: $4e
	rst  $38                                         ; $42ec: $ff
	rst  $38                                         ; $42ed: $ff
	rst  $38                                         ; $42ee: $ff
	and  d                                           ; $42ef: $a2
	dec  d                                           ; $42f0: $15
	rst  $28                                         ; $42f1: $ef
	rst  $38                                         ; $42f2: $ff
	sub  c                                           ; $42f3: $91
	ld   de, $1111                                   ; $42f4: $11 $11 $11
	ld   l, l                                        ; $42f7: $6d
	rst  $38                                         ; $42f8: $ff
	rst  $38                                         ; $42f9: $ff
	rst  $38                                         ; $42fa: $ff
	or   e                                           ; $42fb: $b3
	ld   d, $cf                                      ; $42fc: $16 $cf
	rst  $38                                         ; $42fe: $ff
	sub  c                                           ; $42ff: $91
	ld   de, $1111                                   ; $4300: $11 $11 $11
	ld   a, d                                        ; $4303: $7a
	rst  $38                                         ; $4304: $ff
	rst  $38                                         ; $4305: $ff
	rst  $38                                         ; $4306: $ff
	push hl                                          ; $4307: $e5
	inc  d                                           ; $4308: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4309: $cf
	rst  $38                                         ; $430a: $ff
	pop  bc                                          ; $430b: $c1
	ld   de, $1111                                   ; $430c: $11 $11 $11
	dec  sp                                          ; $430f: $3b
	rst  $38                                         ; $4310: $ff
	rst  $38                                         ; $4311: $ff
	rst  $38                                         ; $4312: $ff
	jp   hl                                          ; $4313: $e9


	dec  [hl]                                        ; $4314: $35
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4315: $cf
	rst  $38                                         ; $4316: $ff
	call nc, $1111                                   ; $4317: $d4 $11 $11
	ld   de, $ff27                                   ; $431a: $11 $27 $ff
	rst  $38                                         ; $431d: $ff
	rst  $38                                         ; $431e: $ff
	db   $fc                                         ; $431f: $fc
	ld   d, l                                        ; $4320: $55
	sbc  [hl]                                        ; $4321: $9e
	cp   $d8                                         ; $4322: $fe $d8
	ld   de, $1111                                   ; $4324: $11 $11 $11
	inc  d                                           ; $4327: $14
	sbc  a                                           ; $4328: $9f
	rst  $38                                         ; $4329: $ff
	rst  $38                                         ; $432a: $ff
	rst  $38                                         ; $432b: $ff
	sub  l                                           ; $432c: $95
	ld   l, b                                        ; $432d: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $432e: $cf
	cp   $51                                         ; $432f: $fe $51
	ld   de, $1311                                   ; $4331: $11 $11 $13
	ld   l, b                                        ; $4334: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4335: $cf
	rst  $38                                         ; $4336: $ff
	rst  $38                                         ; $4337: $ff
	db   $fc                                         ; $4338: $fc
	sub  a                                           ; $4339: $97
	xor  h                                           ; $433a: $ac
	call $11d6                                       ; $433b: $cd $d6 $11
	ld   de, $1211                                   ; $433e: $11 $11 $12
	ld   l, e                                        ; $4341: $6b
	rst  $28                                         ; $4342: $ef
	rst  $38                                         ; $4343: $ff
	rst  $38                                         ; $4344: $ff
	call c, $ab99                                    ; $4345: $dc $99 $ab
	db   $ed                                         ; $4348: $ed
	add  l                                           ; $4349: $85
	ld   de, $1111                                   ; $434a: $11 $11 $11
	inc  b                                           ; $434d: $04
	ld   h, a                                        ; $434e: $67
	rst  JumpTable                                         ; $434f: $df
	rst  $38                                         ; $4350: $ff
	rst  $38                                         ; $4351: $ff
	ei                                               ; $4352: $fb
	sbc  c                                           ; $4353: $99
	xor  l                                           ; $4354: $ad
	call $21b6                                       ; $4355: $cd $b6 $21
	ld   de, $1211                                   ; $4358: $11 $11 $12
	ld   b, l                                        ; $435b: $45
	ld   l, l                                        ; $435c: $6d
	rst  $38                                         ; $435d: $ff
	rst  $38                                         ; $435e: $ff
	db   $ed                                         ; $435f: $ed
	jp   z, $de9a                                    ; $4360: $ca $9a $de

	cp   e                                           ; $4363: $bb
	ld   h, e                                        ; $4364: $63
	ld   de, $1111                                   ; $4365: $11 $11 $11
	ld   [hl-], a                                    ; $4368: $32
	ld   b, l                                        ; $4369: $45
	sbc  h                                           ; $436a: $9c
	rst  JumpTable                                         ; $436b: $df
	rst  $38                                         ; $436c: $ff
	db   $db                                         ; $436d: $db
	cp   h                                           ; $436e: $bc
	cp   d                                           ; $436f: $ba
	sbc  $b8                                         ; $4370: $de $b8
	ld   [hl], d                                     ; $4372: $72
	inc  [hl]                                        ; $4373: $34
	ld   de, $2424                                   ; $4374: $11 $24 $24
	inc  d                                           ; $4377: $14
	xor  l                                           ; $4378: $ad
	sbc  h                                           ; $4379: $9c
	rst  $38                                         ; $437a: $ff
	res  7, h                                        ; $437b: $cb $bc
	jp   c, $e9bf                                    ; $437d: $da $bf $e9

	ld   d, [hl]                                     ; $4380: $56
	ld   b, e                                        ; $4381: $43
	inc  sp                                          ; $4382: $33
	dec  d                                           ; $4383: $15
	ld   sp, $4a32                                   ; $4384: $31 $32 $4a
	cp   e                                           ; $4387: $bb
	db   $ed                                         ; $4388: $ed
	db   $ed                                         ; $4389: $ed
	ret                                              ; $438a: $c9


	call $dfbc                                       ; $438b: $cd $bc $df
	ld   h, h                                        ; $438e: $64
	sub  l                                           ; $438f: $95
	dec  d                                           ; $4390: $15
	ld   h, c                                        ; $4391: $61
	ld   d, h                                        ; $4392: $54
	ld   [hl], $45                                   ; $4393: $36 $45
	ld   l, b                                        ; $4395: $68
	cp   e                                           ; $4396: $bb
	adc  $bb                                         ; $4397: $ce $bb
	ret                                              ; $4399: $c9


	adc  $9c                                         ; $439a: $ce $9c
	sbc  c                                           ; $439c: $99
	sub  c                                           ; $439d: $91
	sub  [hl]                                        ; $439e: $96
	ld   c, c                                        ; $439f: $49
	ld   b, l                                        ; $43a0: $45
	add  d                                           ; $43a1: $82
	ld   d, a                                        ; $43a2: $57
	ld   a, [de]                                     ; $43a3: $1a
	ld   h, [hl]                                     ; $43a4: $66
	jp   z, $a9aa                                    ; $43a5: $ca $aa $a9

	xor  e                                           ; $43a8: $ab
	xor  c                                           ; $43a9: $a9
	ret                                              ; $43aa: $c9


	ld   a, e                                        ; $43ab: $7b
	and  h                                           ; $43ac: $a4
	sbc  d                                           ; $43ad: $9a
	ld   b, a                                        ; $43ae: $47
	ld   e, c                                        ; $43af: $59
	ld   h, h                                        ; $43b0: $64
	ld   [hl], l                                     ; $43b1: $75
	ld   e, e                                        ; $43b2: $5b
	ld   d, a                                        ; $43b3: $57
	rst  ToBoot                                         ; $43b4: $c7
	sbc  c                                           ; $43b5: $99
	and  a                                           ; $43b6: $a7
	cp   c                                           ; $43b7: $b9
	sbc  d                                           ; $43b8: $9a
	xor  c                                           ; $43b9: $a9
	adc  d                                           ; $43ba: $8a
	ld   h, a                                        ; $43bb: $67
	adc  d                                           ; $43bc: $8a
	ld   [hl], l                                     ; $43bd: $75
	sbc  e                                           ; $43be: $9b
	ld   h, a                                        ; $43bf: $67
	ld   [hl], l                                     ; $43c0: $75
	add  a                                           ; $43c1: $87
	ld   d, a                                        ; $43c2: $57
	and  l                                           ; $43c3: $a5
	adc  d                                           ; $43c4: $8a
	sub  a                                           ; $43c5: $97
	sbc  c                                           ; $43c6: $99
	ld   l, c                                        ; $43c7: $69
	sbc  d                                           ; $43c8: $9a
	ld   a, d                                        ; $43c9: $7a
	or   [hl]                                        ; $43ca: $b6
	cp   c                                           ; $43cb: $b9
	ld   l, b                                        ; $43cc: $68
	sub  a                                           ; $43cd: $97
	ld   [hl], a                                     ; $43ce: $77
	add  [hl]                                        ; $43cf: $86
	ld   [hl], a                                     ; $43d0: $77
	ld   l, c                                        ; $43d1: $69
	ld   a, b                                        ; $43d2: $78
	add  a                                           ; $43d3: $87
	halt                                             ; $43d4: $76
	sbc  b                                           ; $43d5: $98
	adc  d                                           ; $43d6: $8a
	adc  c                                           ; $43d7: $89
	or   a                                           ; $43d8: $b7
	sbc  h                                           ; $43d9: $9c
	sbc  c                                           ; $43da: $99
	add  a                                           ; $43db: $87
	and  [hl]                                        ; $43dc: $a6
	ld   a, c                                        ; $43dd: $79
	ld   h, a                                        ; $43de: $67
	add  a                                           ; $43df: $87
	ld   [hl], l                                     ; $43e0: $75
	adc  c                                           ; $43e1: $89
	ld   d, a                                        ; $43e2: $57
	ld   l, d                                        ; $43e3: $6a
	or   [hl]                                        ; $43e4: $b6
	adc  h                                           ; $43e5: $8c
	ld   a, b                                        ; $43e6: $78
	or   a                                           ; $43e7: $b7
	sub  a                                           ; $43e8: $97
	and  [hl]                                        ; $43e9: $a6
	sbc  c                                           ; $43ea: $99
	ld   h, a                                        ; $43eb: $67
	halt                                             ; $43ec: $76
	ld   l, e                                        ; $43ed: $6b
	ld   d, l                                        ; $43ee: $55
	adc  c                                           ; $43ef: $89
	ld   a, b                                        ; $43f0: $78
	sub  [hl]                                        ; $43f1: $96
	xor  d                                           ; $43f2: $aa
	sub  [hl]                                        ; $43f3: $96
	rst  ToBoot                                         ; $43f4: $c7
	adc  b                                           ; $43f5: $88
	sbc  c                                           ; $43f6: $99
	ld   d, a                                        ; $43f7: $57
	ld   l, e                                        ; $43f8: $6b
	ld   e, c                                        ; $43f9: $59
	halt                                             ; $43fa: $76
	ld   [hl], a                                     ; $43fb: $77
	sub  a                                           ; $43fc: $97
	add  h                                           ; $43fd: $84
	or   a                                           ; $43fe: $b7
	xor  c                                           ; $43ff: $a9
	ld   a, c                                        ; $4400: $79
	sbc  c                                           ; $4401: $99
	ld   a, [hl-]                                    ; $4402: $3a
	ld   a, b                                        ; $4403: $78
	adc  b                                           ; $4404: $88
	and  h                                           ; $4405: $a4
	sbc  d                                           ; $4406: $9a
	ld   h, l                                        ; $4407: $65
	and  a                                           ; $4408: $a7
	add  [hl]                                        ; $4409: $86
	adc  e                                           ; $440a: $8b
	ld   e, c                                        ; $440b: $59
	adc  c                                           ; $440c: $89
	sbc  c                                           ; $440d: $99
	add  a                                           ; $440e: $87
	ret                                              ; $440f: $c9


	ld   c, d                                        ; $4410: $4a
	call nc, $677b                                   ; $4411: $d4 $7b $67
	sub  [hl]                                        ; $4414: $96
	adc  c                                           ; $4415: $89
	sub  a                                           ; $4416: $97
	ld   a, d                                        ; $4417: $7a
	add  [hl]                                        ; $4418: $86
	sbc  d                                           ; $4419: $9a
	ld   a, c                                        ; $441a: $79
	adc  c                                           ; $441b: $89
	ld   a, b                                        ; $441c: $78
	sub  [hl]                                        ; $441d: $96
	xor  b                                           ; $441e: $a8
	ld   e, b                                        ; $441f: $58
	sub  [hl]                                        ; $4420: $96
	ld   a, d                                        ; $4421: $7a
	and  [hl]                                        ; $4422: $a6
	sbc  b                                           ; $4423: $98
	adc  b                                           ; $4424: $88
	ld   a, c                                        ; $4425: $79
	ld   a, b                                        ; $4426: $78
	add  a                                           ; $4427: $87
	adc  d                                           ; $4428: $8a
	ld   h, a                                        ; $4429: $67
	sub  a                                           ; $442a: $97
	sbc  b                                           ; $442b: $98
	sub  [hl]                                        ; $442c: $96
	sbc  c                                           ; $442d: $99
	ld   a, c                                        ; $442e: $79
	ld   a, b                                        ; $442f: $78
	ld   a, c                                        ; $4430: $79
	sbc  b                                           ; $4431: $98
	ld   a, c                                        ; $4432: $79
	ld   a, b                                        ; $4433: $78
	add  a                                           ; $4434: $87
	ld   [hl], a                                     ; $4435: $77
	or   a                                           ; $4436: $b7
	cp   c                                           ; $4437: $b9
	ld   l, c                                        ; $4438: $69
	ld   a, c                                        ; $4439: $79
	ld   a, b                                        ; $443a: $78
	sbc  b                                           ; $443b: $98
	ld   a, b                                        ; $443c: $78
	adc  b                                           ; $443d: $88
	add  [hl]                                        ; $443e: $86
	ld   a, b                                        ; $443f: $78
	sub  [hl]                                        ; $4440: $96
	adc  b                                           ; $4441: $88
	add  a                                           ; $4442: $87
	adc  c                                           ; $4443: $89
	ld   a, b                                        ; $4444: $78
	ld   a, c                                        ; $4445: $79
	add  a                                           ; $4446: $87
	ld   a, c                                        ; $4447: $79
	sbc  b                                           ; $4448: $98
	adc  c                                           ; $4449: $89
	ld   a, b                                        ; $444a: $78
	xor  c                                           ; $444b: $a9
	ld   h, l                                        ; $444c: $65
	or   [hl]                                        ; $444d: $b6
	adc  b                                           ; $444e: $88
	ld   a, c                                        ; $444f: $79
	sbc  b                                           ; $4450: $98
	ld   l, b                                        ; $4451: $68
	ld   a, c                                        ; $4452: $79
	ld   h, a                                        ; $4453: $67
	sbc  c                                           ; $4454: $99
	adc  b                                           ; $4455: $88
	adc  b                                           ; $4456: $88
	or   l                                           ; $4457: $b5
	add  a                                           ; $4458: $87
	sub  [hl]                                        ; $4459: $96
	adc  d                                           ; $445a: $8a
	sbc  c                                           ; $445b: $99
	ld   e, c                                        ; $445c: $59
	ld   e, b                                        ; $445d: $58
	ld   l, b                                        ; $445e: $68
	sub  a                                           ; $445f: $97
	or   a                                           ; $4460: $b7
	sub  a                                           ; $4461: $97
	ld   a, c                                        ; $4462: $79
	sub  [hl]                                        ; $4463: $96
	add  a                                           ; $4464: $87
	adc  d                                           ; $4465: $8a
	ld   l, d                                        ; $4466: $6a
	ld   a, c                                        ; $4467: $79
	ld   l, c                                        ; $4468: $69
	add  [hl]                                        ; $4469: $86
	add  a                                           ; $446a: $87
	adc  c                                           ; $446b: $89
	sub  [hl]                                        ; $446c: $96
	xor  c                                           ; $446d: $a9
	ld   h, a                                        ; $446e: $67
	or   a                                           ; $446f: $b7
	ld   l, c                                        ; $4470: $69
	sbc  b                                           ; $4471: $98
	ld   e, e                                        ; $4472: $5b
	add  [hl]                                        ; $4473: $86
	sbc  c                                           ; $4474: $99
	ld   [hl], a                                     ; $4475: $77
	sub  a                                           ; $4476: $97
	sub  [hl]                                        ; $4477: $96
	sbc  c                                           ; $4478: $99
	ld   a, e                                        ; $4479: $7b
	ld   h, a                                        ; $447a: $67
	xor  b                                           ; $447b: $a8
	ld   [hl], a                                     ; $447c: $77
	sbc  b                                           ; $447d: $98
	ld   [hl], a                                     ; $447e: $77
	sbc  b                                           ; $447f: $98
	ld   a, d                                        ; $4480: $7a
	ld   a, b                                        ; $4481: $78
	ld   a, c                                        ; $4482: $79
	sub  a                                           ; $4483: $97
	ld   a, b                                        ; $4484: $78
	and  [hl]                                        ; $4485: $a6
	sbc  c                                           ; $4486: $99
	ld   [hl], a                                     ; $4487: $77
	adc  d                                           ; $4488: $8a
	ld   a, b                                        ; $4489: $78
	ld   [hl], a                                     ; $448a: $77
	adc  c                                           ; $448b: $89
	sub  [hl]                                        ; $448c: $96
	sbc  b                                           ; $448d: $98
	adc  b                                           ; $448e: $88
	xor  b                                           ; $448f: $a8
	ld   l, b                                        ; $4490: $68
	ld   l, h                                        ; $4491: $6c
	ld   [hl], a                                     ; $4492: $77
	and  [hl]                                        ; $4493: $a6
	ld   l, c                                        ; $4494: $69

Jump_0c1_4495:
	or   a                                           ; $4495: $b7
	halt                                             ; $4496: $76
	sub  [hl]                                        ; $4497: $96
	adc  e                                           ; $4498: $8b
	sbc  b                                           ; $4499: $98
	ld   d, a                                        ; $449a: $57
	ld   a, c                                        ; $449b: $79
	sbc  b                                           ; $449c: $98
	adc  b                                           ; $449d: $88
	ld   d, a                                        ; $449e: $57
	sbc  d                                           ; $449f: $9a
	sbc  b                                           ; $44a0: $98
	add  l                                           ; $44a1: $85
	sbc  c                                           ; $44a2: $99
	add  a                                           ; $44a3: $87
	sbc  c                                           ; $44a4: $99
	halt                                             ; $44a5: $76
	xor  c                                           ; $44a6: $a9
	ld   a, c                                        ; $44a7: $79
	ld   l, b                                        ; $44a8: $68
	ld   l, c                                        ; $44a9: $69
	adc  c                                           ; $44aa: $89
	sub  a                                           ; $44ab: $97
	ld   a, b                                        ; $44ac: $78
	sub  [hl]                                        ; $44ad: $96
	sub  a                                           ; $44ae: $97
	ld   a, c                                        ; $44af: $79
	ld   [hl], a                                     ; $44b0: $77
	and  a                                           ; $44b1: $a7
	ld   l, d                                        ; $44b2: $6a
	ld   a, d                                        ; $44b3: $7a
	ld   [hl], a                                     ; $44b4: $77
	and  [hl]                                        ; $44b5: $a6
	ld   [hl], a                                     ; $44b6: $77
	xor  b                                           ; $44b7: $a8
	add  a                                           ; $44b8: $87
	sbc  b                                           ; $44b9: $98
	ld   a, c                                        ; $44ba: $79
	ld   a, b                                        ; $44bb: $78
	adc  c                                           ; $44bc: $89
	ld   a, b                                        ; $44bd: $78
	sbc  c                                           ; $44be: $99
	add  [hl]                                        ; $44bf: $86
	sbc  b                                           ; $44c0: $98
	ld   a, b                                        ; $44c1: $78
	sbc  b                                           ; $44c2: $98
	add  a                                           ; $44c3: $87
	ld   a, c                                        ; $44c4: $79
	ld   a, c                                        ; $44c5: $79
	adc  b                                           ; $44c6: $88
	ld   a, b                                        ; $44c7: $78
	sbc  b                                           ; $44c8: $98
	add  a                                           ; $44c9: $87
	adc  c                                           ; $44ca: $89
	sbc  b                                           ; $44cb: $98
	add  a                                           ; $44cc: $87
	add  a                                           ; $44cd: $87
	ld   a, c                                        ; $44ce: $79
	ld   a, b                                        ; $44cf: $78
	ld   a, b                                        ; $44d0: $78
	sub  [hl]                                        ; $44d1: $96
	ld   a, d                                        ; $44d2: $7a
	ld   a, b                                        ; $44d3: $78
	adc  b                                           ; $44d4: $88
	sub  a                                           ; $44d5: $97
	ld   a, c                                        ; $44d6: $79
	add  a                                           ; $44d7: $87
	add  a                                           ; $44d8: $87
	adc  c                                           ; $44d9: $89
	add  a                                           ; $44da: $87
	adc  b                                           ; $44db: $88
	add  a                                           ; $44dc: $87
	adc  b                                           ; $44dd: $88
	ld   a, b                                        ; $44de: $78
	sbc  b                                           ; $44df: $98
	ld   a, b                                        ; $44e0: $78
	sbc  b                                           ; $44e1: $98
	adc  b                                           ; $44e2: $88
	sub  a                                           ; $44e3: $97
	sbc  b                                           ; $44e4: $98
	ld   a, b                                        ; $44e5: $78
	add  a                                           ; $44e6: $87
	adc  b                                           ; $44e7: $88
	ld   a, c                                        ; $44e8: $79
	adc  b                                           ; $44e9: $88
	ld   a, b                                        ; $44ea: $78
	sub  a                                           ; $44eb: $97
	adc  b                                           ; $44ec: $88
	add  a                                           ; $44ed: $87
	adc  c                                           ; $44ee: $89
	ld   [hl], a                                     ; $44ef: $77
	adc  b                                           ; $44f0: $88
	adc  c                                           ; $44f1: $89
	ld   a, c                                        ; $44f2: $79
	ld   a, b                                        ; $44f3: $78
	adc  b                                           ; $44f4: $88
	adc  b                                           ; $44f5: $88
	sbc  b                                           ; $44f6: $98
	add  a                                           ; $44f7: $87
	adc  b                                           ; $44f8: $88
	add  a                                           ; $44f9: $87
	adc  c                                           ; $44fa: $89
	ld   a, c                                        ; $44fb: $79
	adc  b                                           ; $44fc: $88
	ld   a, c                                        ; $44fd: $79
	adc  b                                           ; $44fe: $88
	add  a                                           ; $44ff: $87
	add  a                                           ; $4500: $87
	adc  c                                           ; $4501: $89
	adc  b                                           ; $4502: $88
	add  a                                           ; $4503: $87
	adc  b                                           ; $4504: $88
	sbc  c                                           ; $4505: $99
	ld   a, b                                        ; $4506: $78
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
	sbc  b                                           ; $4515: $98
	adc  b                                           ; $4516: $88
	sbc  b                                           ; $4517: $98
	adc  b                                           ; $4518: $88
	adc  b                                           ; $4519: $88
	adc  c                                           ; $451a: $89
	add  a                                           ; $451b: $87
	sbc  b                                           ; $451c: $98
	adc  b                                           ; $451d: $88
	sub  a                                           ; $451e: $97
	ld   a, c                                        ; $451f: $79
	adc  c                                           ; $4520: $89
	adc  b                                           ; $4521: $88
	add  a                                           ; $4522: $87
	adc  b                                           ; $4523: $88
	add  a                                           ; $4524: $87
	sbc  c                                           ; $4525: $99
	adc  c                                           ; $4526: $89
	adc  c                                           ; $4527: $89
	add  a                                           ; $4528: $87
	adc  b                                           ; $4529: $88
	adc  b                                           ; $452a: $88
	adc  c                                           ; $452b: $89
	sub  a                                           ; $452c: $97
	ld   a, b                                        ; $452d: $78
	adc  b                                           ; $452e: $88
	adc  b                                           ; $452f: $88
	adc  b                                           ; $4530: $88
	adc  c                                           ; $4531: $89
	adc  b                                           ; $4532: $88
	sbc  b                                           ; $4533: $98
	sbc  b                                           ; $4534: $98
	adc  b                                           ; $4535: $88
	sbc  b                                           ; $4536: $98
	ld   a, b                                        ; $4537: $78
	adc  b                                           ; $4538: $88
	adc  c                                           ; $4539: $89
	adc  b                                           ; $453a: $88
	ld   a, b                                        ; $453b: $78
	adc  b                                           ; $453c: $88
	sbc  b                                           ; $453d: $98
	ld   a, b                                        ; $453e: $78
	adc  b                                           ; $453f: $88
	adc  c                                           ; $4540: $89
	adc  b                                           ; $4541: $88
	adc  b                                           ; $4542: $88
	adc  b                                           ; $4543: $88
	adc  c                                           ; $4544: $89
	adc  b                                           ; $4545: $88
	adc  b                                           ; $4546: $88
	adc  b                                           ; $4547: $88
	adc  b                                           ; $4548: $88
	adc  b                                           ; $4549: $88
	adc  b                                           ; $454a: $88
	adc  b                                           ; $454b: $88
	add  a                                           ; $454c: $87
	adc  b                                           ; $454d: $88
	adc  b                                           ; $454e: $88
	ld   a, c                                        ; $454f: $79
	adc  b                                           ; $4550: $88
	adc  b                                           ; $4551: $88
	adc  b                                           ; $4552: $88
	adc  b                                           ; $4553: $88
	adc  b                                           ; $4554: $88
	add  a                                           ; $4555: $87
	add  a                                           ; $4556: $87
	ld   a, b                                        ; $4557: $78
	sbc  b                                           ; $4558: $98
	adc  b                                           ; $4559: $88
	adc  b                                           ; $455a: $88
	adc  b                                           ; $455b: $88
	adc  b                                           ; $455c: $88
	sbc  b                                           ; $455d: $98
	adc  b                                           ; $455e: $88
	adc  b                                           ; $455f: $88
	adc  b                                           ; $4560: $88
	adc  b                                           ; $4561: $88
	adc  c                                           ; $4562: $89
	adc  b                                           ; $4563: $88
	adc  b                                           ; $4564: $88
	adc  b                                           ; $4565: $88
	adc  b                                           ; $4566: $88
	adc  b                                           ; $4567: $88
	adc  c                                           ; $4568: $89
	adc  b                                           ; $4569: $88
	adc  b                                           ; $456a: $88
	adc  b                                           ; $456b: $88
	adc  b                                           ; $456c: $88
	adc  b                                           ; $456d: $88
	adc  b                                           ; $456e: $88
	sbc  b                                           ; $456f: $98
	adc  b                                           ; $4570: $88
	ld   a, b                                        ; $4571: $78
	adc  b                                           ; $4572: $88
	adc  b                                           ; $4573: $88
	adc  c                                           ; $4574: $89
	add  a                                           ; $4575: $87
	sbc  b                                           ; $4576: $98
	adc  b                                           ; $4577: $88
	adc  b                                           ; $4578: $88
	adc  c                                           ; $4579: $89
	adc  b                                           ; $457a: $88
	adc  b                                           ; $457b: $88
	adc  b                                           ; $457c: $88
	adc  b                                           ; $457d: $88
	adc  b                                           ; $457e: $88
	adc  b                                           ; $457f: $88
	adc  b                                           ; $4580: $88
	adc  b                                           ; $4581: $88
	adc  c                                           ; $4582: $89
	sbc  b                                           ; $4583: $98
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
	adc  c                                           ; $45a3: $89
	adc  b                                           ; $45a4: $88
	adc  b                                           ; $45a5: $88
	adc  b                                           ; $45a6: $88
	adc  b                                           ; $45a7: $88
	adc  b                                           ; $45a8: $88
	adc  b                                           ; $45a9: $88
	add  a                                           ; $45aa: $87
	adc  b                                           ; $45ab: $88
	adc  b                                           ; $45ac: $88
	adc  c                                           ; $45ad: $89
	adc  b                                           ; $45ae: $88
	adc  b                                           ; $45af: $88
	adc  b                                           ; $45b0: $88
	adc  b                                           ; $45b1: $88
	adc  b                                           ; $45b2: $88
	add  a                                           ; $45b3: $87
	sbc  b                                           ; $45b4: $98
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
	sbc  c                                           ; $45c0: $99
	ld   a, b                                        ; $45c1: $78
	adc  c                                           ; $45c2: $89
	adc  b                                           ; $45c3: $88
	adc  c                                           ; $45c4: $89
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
	sbc  b                                           ; $45d1: $98
	adc  b                                           ; $45d2: $88
	adc  b                                           ; $45d3: $88
	adc  b                                           ; $45d4: $88
	adc  c                                           ; $45d5: $89
	adc  b                                           ; $45d6: $88
	adc  b                                           ; $45d7: $88
	adc  b                                           ; $45d8: $88
	adc  b                                           ; $45d9: $88
	sbc  b                                           ; $45da: $98
	adc  b                                           ; $45db: $88
	adc  b                                           ; $45dc: $88
	adc  b                                           ; $45dd: $88
	adc  b                                           ; $45de: $88
	adc  b                                           ; $45df: $88
	add  a                                           ; $45e0: $87
	adc  c                                           ; $45e1: $89
	adc  b                                           ; $45e2: $88
	adc  b                                           ; $45e3: $88
	adc  b                                           ; $45e4: $88
	adc  b                                           ; $45e5: $88
	adc  b                                           ; $45e6: $88
	adc  b                                           ; $45e7: $88
	adc  b                                           ; $45e8: $88
	sbc  b                                           ; $45e9: $98
	adc  b                                           ; $45ea: $88
	adc  b                                           ; $45eb: $88
	adc  b                                           ; $45ec: $88
	adc  b                                           ; $45ed: $88
	adc  b                                           ; $45ee: $88
	adc  b                                           ; $45ef: $88
	adc  b                                           ; $45f0: $88
	adc  c                                           ; $45f1: $89
	adc  b                                           ; $45f2: $88
	adc  b                                           ; $45f3: $88
	adc  b                                           ; $45f4: $88
	adc  b                                           ; $45f5: $88
	adc  b                                           ; $45f6: $88
	adc  b                                           ; $45f7: $88
	adc  b                                           ; $45f8: $88
	adc  b                                           ; $45f9: $88
	sbc  b                                           ; $45fa: $98
	ld   a, b                                        ; $45fb: $78
	sbc  c                                           ; $45fc: $99
	ld   a, b                                        ; $45fd: $78
	adc  b                                           ; $45fe: $88
	adc  b                                           ; $45ff: $88
	adc  b                                           ; $4600: $88
	adc  b                                           ; $4601: $88
	adc  b                                           ; $4602: $88
	adc  b                                           ; $4603: $88
	adc  b                                           ; $4604: $88
	sbc  b                                           ; $4605: $98
	adc  b                                           ; $4606: $88
	adc  c                                           ; $4607: $89
	adc  b                                           ; $4608: $88
	adc  c                                           ; $4609: $89
	adc  b                                           ; $460a: $88
	adc  b                                           ; $460b: $88
	adc  b                                           ; $460c: $88
	adc  b                                           ; $460d: $88
	adc  b                                           ; $460e: $88
	add  a                                           ; $460f: $87
	adc  b                                           ; $4610: $88
	adc  c                                           ; $4611: $89
	adc  c                                           ; $4612: $89
	ld   a, b                                        ; $4613: $78
	adc  b                                           ; $4614: $88
	adc  c                                           ; $4615: $89
	sbc  b                                           ; $4616: $98
	add  a                                           ; $4617: $87
	adc  b                                           ; $4618: $88
	adc  b                                           ; $4619: $88
	adc  b                                           ; $461a: $88
	adc  b                                           ; $461b: $88
	add  a                                           ; $461c: $87
	adc  b                                           ; $461d: $88
	sbc  b                                           ; $461e: $98
	adc  b                                           ; $461f: $88
	ld   a, b                                        ; $4620: $78
	adc  b                                           ; $4621: $88
	sbc  b                                           ; $4622: $98
	adc  b                                           ; $4623: $88
	adc  b                                           ; $4624: $88
	adc  b                                           ; $4625: $88
	sbc  c                                           ; $4626: $99
	ld   a, b                                        ; $4627: $78
	ld   [hl], a                                     ; $4628: $77
	adc  b                                           ; $4629: $88
	adc  b                                           ; $462a: $88
	sbc  b                                           ; $462b: $98
	adc  b                                           ; $462c: $88
	adc  b                                           ; $462d: $88
	adc  b                                           ; $462e: $88
	adc  b                                           ; $462f: $88
	adc  b                                           ; $4630: $88
	adc  b                                           ; $4631: $88
	ld   a, b                                        ; $4632: $78
	adc  b                                           ; $4633: $88
	adc  b                                           ; $4634: $88
	adc  b                                           ; $4635: $88
	adc  c                                           ; $4636: $89
	adc  b                                           ; $4637: $88
	add  a                                           ; $4638: $87
	adc  b                                           ; $4639: $88
	adc  b                                           ; $463a: $88
	ld   a, c                                        ; $463b: $79
	adc  b                                           ; $463c: $88
	sbc  b                                           ; $463d: $98
	adc  b                                           ; $463e: $88
	ld   a, b                                        ; $463f: $78
	sbc  c                                           ; $4640: $99
	add  a                                           ; $4641: $87
	add  a                                           ; $4642: $87
	adc  b                                           ; $4643: $88
	adc  b                                           ; $4644: $88
	adc  c                                           ; $4645: $89
	ld   [hl], a                                     ; $4646: $77
	ld   a, c                                        ; $4647: $79
	add  a                                           ; $4648: $87
	adc  b                                           ; $4649: $88
	sub  a                                           ; $464a: $97
	adc  c                                           ; $464b: $89
	adc  b                                           ; $464c: $88
	ld   a, b                                        ; $464d: $78
	adc  b                                           ; $464e: $88
	adc  c                                           ; $464f: $89
	adc  b                                           ; $4650: $88
	adc  c                                           ; $4651: $89
	adc  b                                           ; $4652: $88
	adc  c                                           ; $4653: $89
	sbc  b                                           ; $4654: $98
	ld   [hl], a                                     ; $4655: $77
	adc  c                                           ; $4656: $89
	adc  c                                           ; $4657: $89
	adc  c                                           ; $4658: $89
	add  a                                           ; $4659: $87
	add  a                                           ; $465a: $87
	ld   a, b                                        ; $465b: $78
	ld   a, b                                        ; $465c: $78
	sbc  c                                           ; $465d: $99
	sbc  c                                           ; $465e: $99
	adc  b                                           ; $465f: $88
	adc  b                                           ; $4660: $88
	adc  b                                           ; $4661: $88
	adc  b                                           ; $4662: $88
	add  a                                           ; $4663: $87
	add  a                                           ; $4664: $87
	adc  b                                           ; $4665: $88
	add  a                                           ; $4666: $87
	ld   [hl], a                                     ; $4667: $77
	adc  c                                           ; $4668: $89
	sbc  b                                           ; $4669: $98
	adc  b                                           ; $466a: $88
	adc  c                                           ; $466b: $89
	halt                                             ; $466c: $76
	ret                                              ; $466d: $c9


	ld   l, b                                        ; $466e: $68
	ld   a, c                                        ; $466f: $79
	adc  b                                           ; $4670: $88
	sbc  c                                           ; $4671: $99
	add  a                                           ; $4672: $87
	add  [hl]                                        ; $4673: $86
	sbc  b                                           ; $4674: $98
	ld   [hl], a                                     ; $4675: $77
	adc  b                                           ; $4676: $88
	add  a                                           ; $4677: $87
	adc  b                                           ; $4678: $88
	adc  b                                           ; $4679: $88
	adc  c                                           ; $467a: $89
	sub  a                                           ; $467b: $97
	ld   a, c                                        ; $467c: $79
	adc  b                                           ; $467d: $88
	adc  b                                           ; $467e: $88
	sbc  b                                           ; $467f: $98
	add  a                                           ; $4680: $87
	ld   [hl], a                                     ; $4681: $77
	ld   a, c                                        ; $4682: $79
	sbc  b                                           ; $4683: $98
	adc  b                                           ; $4684: $88
	adc  c                                           ; $4685: $89
	adc  b                                           ; $4686: $88
	add  a                                           ; $4687: $87
	ld   l, b                                        ; $4688: $68
	sbc  c                                           ; $4689: $99
	adc  b                                           ; $468a: $88
	ld   [hl], a                                     ; $468b: $77
	adc  c                                           ; $468c: $89
	adc  h                                           ; $468d: $8c
	rst  $10                                         ; $468e: $d7
	ld   [hl], l                                     ; $468f: $75
	ld   e, c                                        ; $4690: $59
	ld   [hl], a                                     ; $4691: $77
	adc  b                                           ; $4692: $88
	add  a                                           ; $4693: $87
	ld   e, b                                        ; $4694: $58
	sbc  c                                           ; $4695: $99
	ld   [hl], a                                     ; $4696: $77
	xor  c                                           ; $4697: $a9
	sub  a                                           ; $4698: $97
	ld   a, b                                        ; $4699: $78
	sub  a                                           ; $469a: $97
	ld   [hl], a                                     ; $469b: $77
	adc  c                                           ; $469c: $89
	ld   [hl], a                                     ; $469d: $77
	adc  b                                           ; $469e: $88
	sub  a                                           ; $469f: $97
	ld   a, c                                        ; $46a0: $79
	adc  b                                           ; $46a1: $88
	adc  c                                           ; $46a2: $89
	adc  c                                           ; $46a3: $89
	adc  c                                           ; $46a4: $89
	ld   a, b                                        ; $46a5: $78
	ld   a, b                                        ; $46a6: $78
	xor  b                                           ; $46a7: $a8
	adc  b                                           ; $46a8: $88
	adc  b                                           ; $46a9: $88
	sbc  c                                           ; $46aa: $99
	adc  b                                           ; $46ab: $88
	ld   [hl], a                                     ; $46ac: $77
	ld   [hl], a                                     ; $46ad: $77
	ld   a, b                                        ; $46ae: $78
	add  a                                           ; $46af: $87
	ld   [hl], a                                     ; $46b0: $77
	adc  c                                           ; $46b1: $89
	add  a                                           ; $46b2: $87
	ld   a, c                                        ; $46b3: $79
	xor  b                                           ; $46b4: $a8
	ld   a, b                                        ; $46b5: $78
	adc  e                                           ; $46b6: $8b
	sbc  b                                           ; $46b7: $98
	ld   a, c                                        ; $46b8: $79
	and  a                                           ; $46b9: $a7
	ld   h, a                                        ; $46ba: $67
	ld   a, d                                        ; $46bb: $7a
	halt                                             ; $46bc: $76
	add  a                                           ; $46bd: $87
	sub  a                                           ; $46be: $97
	ld   a, b                                        ; $46bf: $78
	xor  e                                           ; $46c0: $ab
	jp   z, $a9a8                                    ; $46c1: $ca $a8 $a9

	ld   a, d                                        ; $46c4: $7a
	xor  d                                           ; $46c5: $aa
	ld   h, h                                        ; $46c6: $64
	ld   h, [hl]                                     ; $46c7: $66
	ld   [hl], a                                     ; $46c8: $77
	ld   h, a                                        ; $46c9: $67
	add  a                                           ; $46ca: $87
	ld   [hl], a                                     ; $46cb: $77
	ld   a, b                                        ; $46cc: $78
	adc  c                                           ; $46cd: $89
	sub  a                                           ; $46ce: $97
	adc  d                                           ; $46cf: $8a
	ld   [hl], a                                     ; $46d0: $77
	ld   [hl], a                                     ; $46d1: $77
	adc  b                                           ; $46d2: $88
	ld   a, b                                        ; $46d3: $78
	adc  b                                           ; $46d4: $88
	halt                                             ; $46d5: $76
	adc  d                                           ; $46d6: $8a
	xor  d                                           ; $46d7: $aa
	ld   a, b                                        ; $46d8: $78
	add  [hl]                                        ; $46d9: $86
	sbc  b                                           ; $46da: $98
	ld   a, c                                        ; $46db: $79
	add  [hl]                                        ; $46dc: $86
	ld   a, c                                        ; $46dd: $79
	sbc  b                                           ; $46de: $98
	adc  b                                           ; $46df: $88
	sbc  b                                           ; $46e0: $98
	ld   l, c                                        ; $46e1: $69
	halt                                             ; $46e2: $76
	and  a                                           ; $46e3: $a7
	sub  a                                           ; $46e4: $97
	ld   h, a                                        ; $46e5: $67
	ld   a, b                                        ; $46e6: $78
	ld   h, [hl]                                     ; $46e7: $66
	sbc  c                                           ; $46e8: $99
	ld   l, b                                        ; $46e9: $68
	adc  b                                           ; $46ea: $88
	xor  b                                           ; $46eb: $a8
	xor  b                                           ; $46ec: $a8
	adc  d                                           ; $46ed: $8a
	xor  d                                           ; $46ee: $aa
	adc  c                                           ; $46ef: $89
	sbc  c                                           ; $46f0: $99
	ld   d, h                                        ; $46f1: $54
	ld   h, [hl]                                     ; $46f2: $66
	ld   h, [hl]                                     ; $46f3: $66
	ld   b, l                                        ; $46f4: $45
	ld   [hl], a                                     ; $46f5: $77
	ld   h, l                                        ; $46f6: $65
	ld   a, d                                        ; $46f7: $7a
	call c, $efbd                                    ; $46f8: $dc $bd $ef
	cp   e                                           ; $46fb: $bb
	cp   d                                           ; $46fc: $ba
	add  l                                           ; $46fd: $85
	inc  sp                                          ; $46fe: $33
	ld   hl, $1311                                   ; $46ff: $21 $11 $13
	ld   b, l                                        ; $4702: $45
	ld   l, d                                        ; $4703: $6a
	rst  JumpTable                                         ; $4704: $df
	rst  $38                                         ; $4705: $ff
	rst  $38                                         ; $4706: $ff
	rst  $38                                         ; $4707: $ff
	db   $fd                                         ; $4708: $fd
	cp   d                                           ; $4709: $ba
	ld   h, d                                        ; $470a: $62
	ld   de, $1111                                   ; $470b: $11 $11 $11
	inc  d                                           ; $470e: $14
	ld   h, a                                        ; $470f: $67
	xor  a                                           ; $4710: $af
	rst  $38                                         ; $4711: $ff
	rst  $38                                         ; $4712: $ff
	rst  $38                                         ; $4713: $ff
	rst  $38                                         ; $4714: $ff
	db   $ec                                         ; $4715: $ec
	and  a                                           ; $4716: $a7
	ld   de, $1111                                   ; $4717: $11 $11 $11
	ld   de, $df3a                                   ; $471a: $11 $3a $df
	rst  $38                                         ; $471d: $ff
	rst  $38                                         ; $471e: $ff
	rst  $38                                         ; $471f: $ff
	rst  $38                                         ; $4720: $ff
	db   $fd                                         ; $4721: $fd
	cp   c                                           ; $4722: $b9
	ld   h, c                                        ; $4723: $61
	ld   de, $1111                                   ; $4724: $11 $11 $11
	dec  d                                           ; $4727: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4728: $cf
	rst  $38                                         ; $4729: $ff
	rst  $38                                         ; $472a: $ff
	rst  $38                                         ; $472b: $ff
	cp   $ee                                         ; $472c: $fe $ee
	db   $db                                         ; $472e: $db
	sub  l                                           ; $472f: $95
	ld   de, $1111                                   ; $4730: $11 $11 $11
	ld   [de], a                                     ; $4733: $12
	cp   a                                           ; $4734: $bf
	rst  $38                                         ; $4735: $ff
	rst  $38                                         ; $4736: $ff
	rst  $38                                         ; $4737: $ff
	cp   $cc                                         ; $4738: $fe $cc
	db   $eb                                         ; $473a: $eb
	sub  a                                           ; $473b: $97
	ld   de, $1111                                   ; $473c: $11 $11 $11
	ld   de, $ffbf                                   ; $473f: $11 $bf $ff
	rst  $38                                         ; $4742: $ff
	rst  $38                                         ; $4743: $ff
	rst  $38                                         ; $4744: $ff
	cp   h                                           ; $4745: $bc
	db   $dd                                         ; $4746: $dd
	xor  d                                           ; $4747: $aa
	ld   b, c                                        ; $4748: $41
	ld   de, $1111                                   ; $4749: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $474c: $cf
	rst  $38                                         ; $474d: $ff
	rst  $38                                         ; $474e: $ff
	rst  $38                                         ; $474f: $ff
	cp   $ab                                         ; $4750: $fe $ab
	sbc  $aa                                         ; $4752: $de $aa
	ld   hl, $1111                                   ; $4754: $21 $11 $11
	inc  d                                           ; $4757: $14
	rst  $38                                         ; $4758: $ff
	rst  $38                                         ; $4759: $ff
	rst  $38                                         ; $475a: $ff
	rst  $38                                         ; $475b: $ff
	call $deab                                       ; $475c: $cd $ab $de
	cp   c                                           ; $475f: $b9
	ld   bc, $1111                                   ; $4760: $01 $11 $11
	jr   @+$01                                       ; $4763: $18 $ff

	rst  $38                                         ; $4765: $ff
	rst  $38                                         ; $4766: $ff
	rst  $38                                         ; $4767: $ff
	cp   d                                           ; $4768: $ba
	xor  l                                           ; $4769: $ad
	rst  $38                                         ; $476a: $ff
	or   [hl]                                        ; $476b: $b6
	ld   de, $1111                                   ; $476c: $11 $11 $11
	ld   c, [hl]                                     ; $476f: $4e
	rst  $38                                         ; $4770: $ff
	rst  $38                                         ; $4771: $ff
	rst  $38                                         ; $4772: $ff
	ei                                               ; $4773: $fb
	sbc  c                                           ; $4774: $99
	cp   [hl]                                        ; $4775: $be
	rst  $38                                         ; $4776: $ff
	sub  e                                           ; $4777: $93
	ld   de, $1111                                   ; $4778: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $477b: $cf
	rst  $38                                         ; $477c: $ff
	rst  $38                                         ; $477d: $ff
	rst  $38                                         ; $477e: $ff
	jp   hl                                          ; $477f: $e9


	sbc  d                                           ; $4780: $9a
	rst  JumpTable                                         ; $4781: $df
	ei                                               ; $4782: $fb
	ld   d, c                                        ; $4783: $51
	ld   de, $1811                                   ; $4784: $11 $11 $18
	rst  $38                                         ; $4787: $ff
	rst  $38                                         ; $4788: $ff
	rst  $38                                         ; $4789: $ff
	rst  $38                                         ; $478a: $ff
	sub  a                                           ; $478b: $97
	sbc  h                                           ; $478c: $9c
	rst  $38                                         ; $478d: $ff
	add  sp, $11                                     ; $478e: $e8 $11
	ld   de, $1f11                                   ; $4790: $11 $11 $1f
	rst  $38                                         ; $4793: $ff
	rst  $38                                         ; $4794: $ff
	rst  $38                                         ; $4795: $ff
	ei                                               ; $4796: $fb
	ld   [hl], a                                     ; $4797: $77
	cp   a                                           ; $4798: $bf
	rst  $38                                         ; $4799: $ff
	or   h                                           ; $479a: $b4
	ld   de, $1111                                   ; $479b: $11 $11 $11
	xor  a                                           ; $479e: $af
	rst  $38                                         ; $479f: $ff
	rst  $38                                         ; $47a0: $ff
	rst  $38                                         ; $47a1: $ff
	rst  $30                                         ; $47a2: $f7
	ld   a, c                                        ; $47a3: $79
	rst  $28                                         ; $47a4: $ef
	cp   $81                                         ; $47a5: $fe $81
	ld   de, $1511                                   ; $47a7: $11 $11 $15
	rst  $38                                         ; $47aa: $ff
	rst  $38                                         ; $47ab: $ff
	rst  $38                                         ; $47ac: $ff
	rst  $38                                         ; $47ad: $ff
	sub  l                                           ; $47ae: $95
	adc  e                                           ; $47af: $8b
	rst  $38                                         ; $47b0: $ff
	ei                                               ; $47b1: $fb
	ld   hl, $1111                                   ; $47b2: $21 $11 $11
	ld   e, $ff                                      ; $47b5: $1e $ff
	rst  $38                                         ; $47b7: $ff
	rst  $38                                         ; $47b8: $ff
	ei                                               ; $47b9: $fb
	ld   d, [hl]                                     ; $47ba: $56
	sbc  a                                           ; $47bb: $9f
	rst  $38                                         ; $47bc: $ff
	push de                                          ; $47bd: $d5
	ld   de, $1111                                   ; $47be: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47c1: $cf
	rst  $38                                         ; $47c2: $ff
	rst  $38                                         ; $47c3: $ff
	rst  $38                                         ; $47c4: $ff
	add  $48                                         ; $47c5: $c6 $48
	rst  JumpTable                                         ; $47c7: $df
	rst  $38                                         ; $47c8: $ff
	sub  c                                           ; $47c9: $91
	ld   de, $1511                                   ; $47ca: $11 $11 $15
	rst  $38                                         ; $47cd: $ff
	rst  $38                                         ; $47ce: $ff
	rst  $38                                         ; $47cf: $ff
	rst  $38                                         ; $47d0: $ff
	ld   [hl], l                                     ; $47d1: $75
	ld   a, e                                        ; $47d2: $7b
	rst  $38                                         ; $47d3: $ff
	ei                                               ; $47d4: $fb
	ld   hl, $1111                                   ; $47d5: $21 $11 $11
	rra                                              ; $47d8: $1f
	rst  $38                                         ; $47d9: $ff
	rst  $38                                         ; $47da: $ff
	rst  $38                                         ; $47db: $ff
	db   $fc                                         ; $47dc: $fc
	ld   b, l                                        ; $47dd: $45
	xor  a                                           ; $47de: $af
	rst  $38                                         ; $47df: $ff
	push hl                                          ; $47e0: $e5
	ld   de, $1111                                   ; $47e1: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $47e4: $cf
	rst  $38                                         ; $47e5: $ff
	rst  $38                                         ; $47e6: $ff
	rst  $38                                         ; $47e7: $ff
	and  $59                                         ; $47e8: $e6 $59
	rst  $28                                         ; $47ea: $ef
	cp   $81                                         ; $47eb: $fe $81
	ld   de, $1811                                   ; $47ed: $11 $11 $18
	rst  $38                                         ; $47f0: $ff
	rst  $38                                         ; $47f1: $ff
	rst  $38                                         ; $47f2: $ff
	rst  $38                                         ; $47f3: $ff
	sub  l                                           ; $47f4: $95
	sbc  h                                           ; $47f5: $9c
	rst  $38                                         ; $47f6: $ff
	ld   a, [$1111]                                  ; $47f7: $fa $11 $11
	ld   de, $ff3f                                   ; $47fa: $11 $3f $ff
	rst  $38                                         ; $47fd: $ff
	rst  $38                                         ; $47fe: $ff
	db   $fc                                         ; $47ff: $fc
	ld   h, [hl]                                     ; $4800: $66
	cp   a                                           ; $4801: $bf
	rst  $38                                         ; $4802: $ff
	or   h                                           ; $4803: $b4
	ld   de, $1111                                   ; $4804: $11 $11 $11
	rst  JumpTable                                         ; $4807: $df
	rst  $38                                         ; $4808: $ff
	rst  $38                                         ; $4809: $ff
	rst  $38                                         ; $480a: $ff
	ld   sp, hl                                      ; $480b: $f9
	ld   l, d                                        ; $480c: $6a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $480d: $cf
	db   $fd                                         ; $480e: $fd
	ld   [hl], c                                     ; $480f: $71
	ld   de, $1711                                   ; $4810: $11 $11 $17
	rst  $38                                         ; $4813: $ff
	rst  $38                                         ; $4814: $ff
	rst  $38                                         ; $4815: $ff
	rst  $38                                         ; $4816: $ff
	ret  c                                           ; $4817: $d8

	sbc  e                                           ; $4818: $9b
	rst  $38                                         ; $4819: $ff
	ld   sp, hl                                      ; $481a: $f9
	ld   hl, $1111                                   ; $481b: $21 $11 $11
	rra                                              ; $481e: $1f
	rst  $38                                         ; $481f: $ff
	rst  $38                                         ; $4820: $ff
	rst  $38                                         ; $4821: $ff
	rst  $38                                         ; $4822: $ff
	ret                                              ; $4823: $c9


	cp   h                                           ; $4824: $bc
	rst  $38                                         ; $4825: $ff
	or   l                                           ; $4826: $b5
	ld   de, $1111                                   ; $4827: $11 $11 $11
	adc  a                                           ; $482a: $8f
	rst  $38                                         ; $482b: $ff
	rst  $38                                         ; $482c: $ff
	rst  $38                                         ; $482d: $ff
	rst  $38                                         ; $482e: $ff
	cp   d                                           ; $482f: $ba
	adc  $fd                                         ; $4830: $ce $fd
	ld   [hl], c                                     ; $4832: $71
	ld   de, $1111                                   ; $4833: $11 $11 $11
	rst  JumpTable                                         ; $4836: $df
	rst  $38                                         ; $4837: $ff
	rst  $38                                         ; $4838: $ff
	rst  $38                                         ; $4839: $ff
	rst  $38                                         ; $483a: $ff
	set  1, a                                        ; $483b: $cb $cf
	ld   a, [$1141]                                  ; $483d: $fa $41 $11
	ld   de, $ff16                                   ; $4840: $11 $16 $ff
	rst  $38                                         ; $4843: $ff
	rst  $38                                         ; $4844: $ff
	rst  $38                                         ; $4845: $ff
	rst  $38                                         ; $4846: $ff
	call c, $d8de                                    ; $4847: $dc $de $d8
	ld   de, $1111                                   ; $484a: $11 $11 $11
	ld   a, [de]                                     ; $484d: $1a
	rst  $38                                         ; $484e: $ff
	rst  $38                                         ; $484f: $ff
	rst  $38                                         ; $4850: $ff
	rst  $38                                         ; $4851: $ff
	rst  $38                                         ; $4852: $ff
	db   $dd                                         ; $4853: $dd
	sbc  $b6                                         ; $4854: $de $b6
	ld   de, $1111                                   ; $4856: $11 $11 $11
	add  hl, de                                      ; $4859: $19
	rst  $38                                         ; $485a: $ff
	rst  $38                                         ; $485b: $ff
	rst  $38                                         ; $485c: $ff
	rst  $38                                         ; $485d: $ff
	rst  $38                                         ; $485e: $ff
	db   $ed                                         ; $485f: $ed
	res  4, a                                        ; $4860: $cb $a7
	ld   hl, $1111                                   ; $4862: $21 $11 $11
	rla                                              ; $4865: $17
	call $dfcc                                       ; $4866: $cd $cc $df
	rst  $38                                         ; $4869: $ff
	rst  $38                                         ; $486a: $ff
	db   $fc                                         ; $486b: $fc
	call c, $61da                                    ; $486c: $dc $da $61
	ld   de, $1111                                   ; $486f: $11 $11 $11
	ld   e, b                                        ; $4872: $58
	sbc  b                                           ; $4873: $98
	ld   a, c                                        ; $4874: $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4875: $cf
	rst  $38                                         ; $4876: $ff
	rst  $38                                         ; $4877: $ff
	db   $dd                                         ; $4878: $dd
	db   $ed                                         ; $4879: $ed
	ret  z                                           ; $487a: $c8

	ld   d, d                                        ; $487b: $52
	ld   de, $1411                                   ; $487c: $11 $11 $14
	ld   h, a                                        ; $487f: $67
	ld   d, h                                        ; $4880: $54
	dec  [hl]                                        ; $4881: $35
	sbc  l                                           ; $4882: $9d
	rst  $38                                         ; $4883: $ff
	db   $fc                                         ; $4884: $fc
	cp   l                                           ; $4885: $bd
	db   $ed                                         ; $4886: $ed
	db   $db                                         ; $4887: $db
	sub  a                                           ; $4888: $97
	ld   d, h                                        ; $4889: $54
	inc  [hl]                                        ; $488a: $34
	ld   d, l                                        ; $488b: $55
	ld   h, l                                        ; $488c: $65
	ld   b, d                                        ; $488d: $42
	ld   de, $9b36                                   ; $488e: $11 $36 $9b
	cp   h                                           ; $4891: $bc
	call z, $ddce                                    ; $4892: $cc $ce $dd
	call z, $99bb                                    ; $4895: $cc $bb $99
	sbc  b                                           ; $4898: $98
	halt                                             ; $4899: $76
	ld   d, e                                        ; $489a: $53
	ld   hl, $2311                                   ; $489b: $21 $11 $23
	ld   d, a                                        ; $489e: $57
	adc  b                                           ; $489f: $88
	xor  d                                           ; $48a0: $aa
	cp   l                                           ; $48a1: $bd
	rst  $38                                         ; $48a2: $ff
	cp   $ed                                         ; $48a3: $fe $ed
	db   $db                                         ; $48a5: $db
	xor  b                                           ; $48a6: $a8
	halt                                             ; $48a7: $76
	ld   d, h                                        ; $48a8: $54
	ld   [hl-], a                                    ; $48a9: $32
	ld   de, $1311                                   ; $48aa: $11 $11 $13
	ld   d, a                                        ; $48ad: $57
	adc  d                                           ; $48ae: $8a
	adc  $ff                                         ; $48af: $ce $ff
	cp   $ed                                         ; $48b1: $fe $ed
	db   $dd                                         ; $48b3: $dd
	res  5, b                                        ; $48b4: $cb $a8
	ld   [hl], l                                     ; $48b6: $75
	ld   b, d                                        ; $48b7: $42
	ld   de, $1211                                   ; $48b8: $11 $11 $12
	ld   b, l                                        ; $48bb: $45
	ld   h, a                                        ; $48bc: $67
	sbc  e                                           ; $48bd: $9b
	call z, $decd                                    ; $48be: $cc $cd $de
	db   $ed                                         ; $48c1: $ed
	call c, $a8ba                                    ; $48c2: $dc $ba $a8
	add  a                                           ; $48c5: $87
	ld   h, l                                        ; $48c6: $65
	ld   b, e                                        ; $48c7: $43
	ld   hl, $3322                                   ; $48c8: $21 $22 $33
	ld   b, l                                        ; $48cb: $45
	ld   a, b                                        ; $48cc: $78
	xor  d                                           ; $48cd: $aa
	call z, $cdcd                                    ; $48ce: $cc $cd $cd
	db   $ed                                         ; $48d1: $ed
	db   $ed                                         ; $48d2: $ed
	res  7, c                                        ; $48d3: $cb $b9
	halt                                             ; $48d5: $76
	ld   b, e                                        ; $48d6: $43
	ld   hl, $1211                                   ; $48d7: $21 $11 $12
	inc  hl                                          ; $48da: $23
	ld   b, [hl]                                     ; $48db: $46
	adc  d                                           ; $48dc: $8a
	xor  h                                           ; $48dd: $ac
	adc  $ee                                         ; $48de: $ce $ee
	rst  $28                                         ; $48e0: $ef
	xor  $cc                                         ; $48e1: $ee $cc
	cp   d                                           ; $48e3: $ba
	add  a                                           ; $48e4: $87
	ld   d, e                                        ; $48e5: $53
	ld   hl, $1111                                   ; $48e6: $21 $11 $11
	inc  hl                                          ; $48e9: $23
	ld   b, [hl]                                     ; $48ea: $46
	ld   a, c                                        ; $48eb: $79
	xor  e                                           ; $48ec: $ab
	call $efde                                       ; $48ed: $cd $de $ef
	cp   $dd                                         ; $48f0: $fe $dd
	cp   d                                           ; $48f2: $ba
	sbc  b                                           ; $48f3: $98
	ld   [hl], l                                     ; $48f4: $75
	ld   b, e                                        ; $48f5: $43
	ld   [hl+], a                                    ; $48f6: $22
	ld   de, $3422                                   ; $48f7: $11 $22 $34
	ld   d, [hl]                                     ; $48fa: $56
	adc  d                                           ; $48fb: $8a
	xor  e                                           ; $48fc: $ab
	call $ddcd                                       ; $48fd: $cd $cd $dd
	db   $ed                                         ; $4900: $ed
	call z, $98cb                                    ; $4901: $cc $cb $98
	ld   h, l                                        ; $4904: $65
	ld   b, e                                        ; $4905: $43
	ld   hl, $2312                                   ; $4906: $21 $12 $23
	ld   b, h                                        ; $4909: $44
	ld   d, a                                        ; $490a: $57
	adc  d                                           ; $490b: $8a
	xor  e                                           ; $490c: $ab
	call $eede                                       ; $490d: $cd $de $ee
	db   $dd                                         ; $4910: $dd
	cp   e                                           ; $4911: $bb
	xor  c                                           ; $4912: $a9
	add  a                                           ; $4913: $87
	ld   h, l                                        ; $4914: $65
	ld   b, d                                        ; $4915: $42
	ld   hl, $3422                                   ; $4916: $21 $22 $34
	ld   d, [hl]                                     ; $4919: $56
	ld   a, b                                        ; $491a: $78
	sbc  d                                           ; $491b: $9a
	cp   h                                           ; $491c: $bc
	call z, $dcdd                                    ; $491d: $cc $dd $dc
	call c, $a8bb                                    ; $4920: $dc $bb $a8
	add  a                                           ; $4923: $87
	ld   h, l                                        ; $4924: $65
	ld   b, e                                        ; $4925: $43
	ld   [hl-], a                                    ; $4926: $32
	inc  hl                                          ; $4927: $23
	ld   b, h                                        ; $4928: $44
	ld   d, [hl]                                     ; $4929: $56
	ld   h, a                                        ; $492a: $67
	adc  c                                           ; $492b: $89
	cp   e                                           ; $492c: $bb
	set  1, h                                        ; $492d: $cb $cc
	call z, $bbdc                                    ; $492f: $cc $dc $bb
	xor  c                                           ; $4932: $a9
	add  a                                           ; $4933: $87
	ld   h, l                                        ; $4934: $65
	ld   b, e                                        ; $4935: $43
	ld   [hl+], a                                    ; $4936: $22
	inc  hl                                          ; $4937: $23
	inc  [hl]                                        ; $4938: $34
	ld   d, l                                        ; $4939: $55
	ld   a, b                                        ; $493a: $78
	sbc  d                                           ; $493b: $9a
	cp   h                                           ; $493c: $bc
	call $dddc                                       ; $493d: $cd $dc $dd
	call c, $98ba                                    ; $4940: $dc $ba $98
	halt                                             ; $4943: $76
	ld   d, h                                        ; $4944: $54
	ld   [hl-], a                                    ; $4945: $32
	ld   [hl+], a                                    ; $4946: $22
	inc  sp                                          ; $4947: $33
	ld   b, l                                        ; $4948: $45
	ld   h, a                                        ; $4949: $67
	adc  c                                           ; $494a: $89
	xor  e                                           ; $494b: $ab
	cp   h                                           ; $494c: $bc
	call z, $dccd                                    ; $494d: $cc $cd $dc
	res  5, c                                        ; $4950: $cb $a9
	sbc  b                                           ; $4952: $98
	halt                                             ; $4953: $76
	ld   d, h                                        ; $4954: $54
	inc  sp                                          ; $4955: $33
	inc  sp                                          ; $4956: $33
	ld   b, h                                        ; $4957: $44
	ld   d, [hl]                                     ; $4958: $56
	ld   l, b                                        ; $4959: $68
	adc  c                                           ; $495a: $89
	xor  e                                           ; $495b: $ab
	cp   e                                           ; $495c: $bb
	cp   h                                           ; $495d: $bc
	set  1, d                                        ; $495e: $cb $ca
	cp   c                                           ; $4960: $b9
	sbc  b                                           ; $4961: $98
	add  a                                           ; $4962: $87
	ld   h, [hl]                                     ; $4963: $66
	ld   b, e                                        ; $4964: $43
	inc  sp                                          ; $4965: $33
	inc  [hl]                                        ; $4966: $34
	ld   d, l                                        ; $4967: $55
	ld   h, a                                        ; $4968: $67
	sbc  c                                           ; $4969: $99
	cp   h                                           ; $496a: $bc
	call z, $cccc                                    ; $496b: $cc $cc $cc
	jp   z, Jump_0c1_7799                            ; $496e: $ca $99 $77

	ld   [hl], a                                     ; $4971: $77
	ld   h, l                                        ; $4972: $65
	ld   b, e                                        ; $4973: $43
	inc  sp                                          ; $4974: $33
	ld   b, h                                        ; $4975: $44
	ld   d, [hl]                                     ; $4976: $56
	ld   a, c                                        ; $4977: $79
	xor  d                                           ; $4978: $aa
	cp   h                                           ; $4979: $bc
	call z, $dcec                                    ; $497a: $cc $ec $dc
	sub  a                                           ; $497d: $97
	ld   h, l                                        ; $497e: $65
	ld   d, [hl]                                     ; $497f: $56
	ld   h, l                                        ; $4980: $65
	ld   b, e                                        ; $4981: $43
	inc  sp                                          ; $4982: $33
	ld   b, h                                        ; $4983: $44
	ld   h, a                                        ; $4984: $67
	ld   a, d                                        ; $4985: $7a
	xor  e                                           ; $4986: $ab
	call c, $edcd                                    ; $4987: $dc $cd $ed
	res  2, l                                        ; $498a: $cb $95
	ld   d, h                                        ; $498c: $54
	ld   b, h                                        ; $498d: $44
	ld   d, l                                        ; $498e: $55
	ld   b, e                                        ; $498f: $43
	inc  sp                                          ; $4990: $33
	ld   b, [hl]                                     ; $4991: $46
	ld   a, b                                        ; $4992: $78
	sbc  h                                           ; $4993: $9c
	db   $ed                                         ; $4994: $ed
	db   $dd                                         ; $4995: $dd
	sbc  $ed                                         ; $4996: $de $ed
	cp   b                                           ; $4998: $b8
	ld   d, e                                        ; $4999: $53
	ld   [hl+], a                                    ; $499a: $22
	inc  hl                                          ; $499b: $23
	ld   b, e                                        ; $499c: $43
	ld   [hl+], a                                    ; $499d: $22
	inc  [hl]                                        ; $499e: $34
	ld   a, c                                        ; $499f: $79
	sbc  h                                           ; $49a0: $9c
	rst  $28                                         ; $49a1: $ef
	rst  $38                                         ; $49a2: $ff
	xor  $ff                                         ; $49a3: $ee $ff
	reti                                             ; $49a5: $d9


	ld   d, d                                        ; $49a6: $52
	ld   de, $2211                                   ; $49a7: $11 $11 $22
	ld   [hl+], a                                    ; $49aa: $22
	inc  hl                                          ; $49ab: $23
	ld   l, c                                        ; $49ac: $69
	xor  h                                           ; $49ad: $ac
	rst  $38                                         ; $49ae: $ff
	rst  $38                                         ; $49af: $ff
	rst  $38                                         ; $49b0: $ff
	rst  $38                                         ; $49b1: $ff
	jp   c, $1151                                    ; $49b2: $da $51 $11

	ld   de, $1111                                   ; $49b5: $11 $11 $11
	dec  [hl]                                        ; $49b8: $35
	adc  d                                           ; $49b9: $8a
	cp   [hl]                                        ; $49ba: $be
	rst  $38                                         ; $49bb: $ff
	rst  $38                                         ; $49bc: $ff
	rst  $38                                         ; $49bd: $ff
	rst  $38                                         ; $49be: $ff
	add  $11                                         ; $49bf: $c6 $11
	ld   de, $1111                                   ; $49c1: $11 $11 $11
	ld   de, $bc47                                   ; $49c4: $11 $47 $bc
	rst  $28                                         ; $49c7: $ef
	rst  $38                                         ; $49c8: $ff
	rst  $38                                         ; $49c9: $ff
	rst  $38                                         ; $49ca: $ff
	cp   $71                                         ; $49cb: $fe $71
	ld   de, $1111                                   ; $49cd: $11 $11 $11
	ld   de, $8c14                                   ; $49d0: $11 $14 $8c
	rst  JumpTable                                         ; $49d3: $df
	rst  $38                                         ; $49d4: $ff
	rst  $38                                         ; $49d5: $ff
	rst  $38                                         ; $49d6: $ff
	rst  $38                                         ; $49d7: $ff
	and  $11                                         ; $49d8: $e6 $11
	ld   de, $1111                                   ; $49da: $11 $11 $11
	ld   de, $ff5b                                   ; $49dd: $11 $5b $ff
	rst  $38                                         ; $49e0: $ff
	rst  $38                                         ; $49e1: $ff
	rst  $38                                         ; $49e2: $ff
	rst  $38                                         ; $49e3: $ff
	rst  $10                                         ; $49e4: $d7
	ld   de, $1111                                   ; $49e5: $11 $11 $11
	ld   de, $7e12                                   ; $49e8: $11 $12 $7e
	rst  $38                                         ; $49eb: $ff
	rst  $38                                         ; $49ec: $ff
	rst  $38                                         ; $49ed: $ff
	rst  $38                                         ; $49ee: $ff
	rst  $38                                         ; $49ef: $ff
	jp   nz, $1111                                   ; $49f0: $c2 $11 $11

	ld   de, $1511                                   ; $49f3: $11 $11 $15
	xor  a                                           ; $49f6: $af
	rst  $38                                         ; $49f7: $ff
	rst  $38                                         ; $49f8: $ff
	rst  $38                                         ; $49f9: $ff
	rst  $38                                         ; $49fa: $ff
	cp   $91                                         ; $49fb: $fe $91
	ld   de, $1111                                   ; $49fd: $11 $11 $11
	ld   de, $ef57                                   ; $4a00: $11 $57 $ef
	rst  $38                                         ; $4a03: $ff
	rst  $38                                         ; $4a04: $ff
	rst  $38                                         ; $4a05: $ff
	rst  $38                                         ; $4a06: $ff
	db   $fc                                         ; $4a07: $fc
	ld   hl, $1111                                   ; $4a08: $21 $11 $11
	ld   de, $7a13                                   ; $4a0b: $11 $13 $7a
	rst  $38                                         ; $4a0e: $ff
	rst  $38                                         ; $4a0f: $ff
	rst  $38                                         ; $4a10: $ff
	rst  $38                                         ; $4a11: $ff
	rst  $38                                         ; $4a12: $ff
	and  $11                                         ; $4a13: $e6 $11
	ld   de, $1111                                   ; $4a15: $11 $11 $11
	ld   d, $9f                                      ; $4a18: $16 $9f
	rst  $38                                         ; $4a1a: $ff
	rst  $38                                         ; $4a1b: $ff
	rst  $38                                         ; $4a1c: $ff
	rst  $38                                         ; $4a1d: $ff
	cp   $91                                         ; $4a1e: $fe $91
	ld   de, $1111                                   ; $4a20: $11 $11 $11
	ld   de, $ef56                                   ; $4a23: $11 $56 $ef
	rst  $38                                         ; $4a26: $ff
	rst  $38                                         ; $4a27: $ff
	rst  $38                                         ; $4a28: $ff
	rst  $38                                         ; $4a29: $ff
	db   $fd                                         ; $4a2a: $fd
	ld   de, $1111                                   ; $4a2b: $11 $11 $11
	ld   de, $5c13                                   ; $4a2e: $11 $13 $5c
	rst  $38                                         ; $4a31: $ff
	rst  $38                                         ; $4a32: $ff
	rst  $38                                         ; $4a33: $ff
	rst  $38                                         ; $4a34: $ff
	rst  $38                                         ; $4a35: $ff
	db   $e3                                         ; $4a36: $e3
	ld   de, $1111                                   ; $4a37: $11 $11 $11
	ld   de, $8f25                                   ; $4a3a: $11 $25 $8f
	rst  $38                                         ; $4a3d: $ff
	rst  $38                                         ; $4a3e: $ff
	rst  $38                                         ; $4a3f: $ff
	rst  $38                                         ; $4a40: $ff
	cp   $41                                         ; $4a41: $fe $41
	ld   de, $1111                                   ; $4a43: $11 $11 $11
	ld   de, $ff58                                   ; $4a46: $11 $58 $ff
	rst  $38                                         ; $4a49: $ff
	rst  $38                                         ; $4a4a: $ff
	rst  $38                                         ; $4a4b: $ff
	rst  $38                                         ; $4a4c: $ff
	push af                                          ; $4a4d: $f5
	ld   de, $1111                                   ; $4a4e: $11 $11 $11
	ld   de, $7f15                                   ; $4a51: $11 $15 $7f
	rst  $38                                         ; $4a54: $ff
	rst  $38                                         ; $4a55: $ff
	rst  $38                                         ; $4a56: $ff
	rst  $38                                         ; $4a57: $ff
	rst  $38                                         ; $4a58: $ff
	ld   sp, $1111                                   ; $4a59: $31 $11 $11
	ld   de, $5a12                                   ; $4a5c: $11 $12 $5a
	rst  $38                                         ; $4a5f: $ff
	rst  $38                                         ; $4a60: $ff
	rst  $38                                         ; $4a61: $ff
	rst  $38                                         ; $4a62: $ff
	rst  $38                                         ; $4a63: $ff
	db   $d3                                         ; $4a64: $d3
	ld   de, $1111                                   ; $4a65: $11 $11 $11
	ld   de, $af45                                   ; $4a68: $11 $45 $af
	rst  $38                                         ; $4a6b: $ff
	rst  $38                                         ; $4a6c: $ff
	rst  $38                                         ; $4a6d: $ff
	rst  $38                                         ; $4a6e: $ff
	db   $fc                                         ; $4a6f: $fc
	ld   de, $1111                                   ; $4a70: $11 $11 $11
	ld   de, $6c15                                   ; $4a73: $11 $15 $6c
	rst  $38                                         ; $4a76: $ff
	rst  $38                                         ; $4a77: $ff
	rst  $38                                         ; $4a78: $ff
	rst  $38                                         ; $4a79: $ff
	rst  $38                                         ; $4a7a: $ff
	and  c                                           ; $4a7b: $a1
	ld   de, $1111                                   ; $4a7c: $11 $11 $11
	ld   de, $ff68                                   ; $4a7f: $11 $68 $ff
	rst  $38                                         ; $4a82: $ff
	rst  $38                                         ; $4a83: $ff
	rst  $38                                         ; $4a84: $ff
	rst  $38                                         ; $4a85: $ff
	or   $11                                         ; $4a86: $f6 $11
	ld   de, $1111                                   ; $4a88: $11 $11 $11
	rla                                              ; $4a8b: $17
	cp   a                                           ; $4a8c: $bf
	rst  $38                                         ; $4a8d: $ff
	rst  $38                                         ; $4a8e: $ff
	rst  $38                                         ; $4a8f: $ff
	rst  $38                                         ; $4a90: $ff
	db   $fd                                         ; $4a91: $fd
	ld   sp, $1111                                   ; $4a92: $31 $11 $11
	ld   de, $9d15                                   ; $4a95: $11 $15 $9d
	rst  $38                                         ; $4a98: $ff
	rst  $38                                         ; $4a99: $ff
	rst  $38                                         ; $4a9a: $ff
	rst  $38                                         ; $4a9b: $ff
	rst  $38                                         ; $4a9c: $ff
	and  c                                           ; $4a9d: $a1
	ld   de, $1111                                   ; $4a9e: $11 $11 $11
	ld   de, $ff69                                   ; $4aa1: $11 $69 $ff
	rst  $38                                         ; $4aa4: $ff
	rst  $38                                         ; $4aa5: $ff
	rst  $38                                         ; $4aa6: $ff
	rst  $38                                         ; $4aa7: $ff
	rst  $30                                         ; $4aa8: $f7
	ld   de, $1111                                   ; $4aa9: $11 $11 $11
	ld   de, $bf18                                   ; $4aac: $11 $18 $bf
	rst  $38                                         ; $4aaf: $ff
	rst  $38                                         ; $4ab0: $ff
	rst  $38                                         ; $4ab1: $ff
	rst  $38                                         ; $4ab2: $ff
	cp   $51                                         ; $4ab3: $fe $51
	ld   de, $1111                                   ; $4ab5: $11 $11 $11
	ld   [de], a                                     ; $4ab8: $12
	ld   a, e                                        ; $4ab9: $7b
	rst  $38                                         ; $4aba: $ff
	rst  $38                                         ; $4abb: $ff
	rst  $38                                         ; $4abc: $ff
	rst  $38                                         ; $4abd: $ff
	rst  $38                                         ; $4abe: $ff
	push de                                          ; $4abf: $d5
	ld   de, $1111                                   ; $4ac0: $11 $11 $11
	ld   de, $bf47                                   ; $4ac3: $11 $47 $bf
	rst  $38                                         ; $4ac6: $ff
	rst  $38                                         ; $4ac7: $ff
	rst  $38                                         ; $4ac8: $ff
	rst  $38                                         ; $4ac9: $ff
	rst  $38                                         ; $4aca: $ff
	ld   d, c                                        ; $4acb: $51
	ld   de, $1111                                   ; $4acc: $11 $11 $11
	ld   de, $ff69                                   ; $4acf: $11 $69 $ff
	rst  $38                                         ; $4ad2: $ff
	rst  $38                                         ; $4ad3: $ff
	rst  $38                                         ; $4ad4: $ff
	rst  $38                                         ; $4ad5: $ff
	ld   sp, hl                                      ; $4ad6: $f9
	ld   de, $1111                                   ; $4ad7: $11 $11 $11
	ld   de, $5913                                   ; $4ada: $11 $13 $59
	rst  $28                                         ; $4add: $ef
	rst  $38                                         ; $4ade: $ff
	rst  $38                                         ; $4adf: $ff
	rst  $38                                         ; $4ae0: $ff
	rst  $38                                         ; $4ae1: $ff
	add  sp, $21                                     ; $4ae2: $e8 $21
	ld   de, $1111                                   ; $4ae4: $11 $11 $11
	ld   de, $9c46                                   ; $4ae7: $11 $46 $9c
	rst  $28                                         ; $4aea: $ef
	rst  $38                                         ; $4aeb: $ff
	rst  $38                                         ; $4aec: $ff
	db   $db                                         ; $4aed: $db
	xor  l                                           ; $4aee: $ad
	db   $ed                                         ; $4aef: $ed
	xor  c                                           ; $4af0: $a9
	add  [hl]                                        ; $4af1: $86
	ld   h, l                                        ; $4af2: $65
	ld   d, h                                        ; $4af3: $54
	ld   sp, $1111                                   ; $4af4: $31 $11 $11
	inc  h                                           ; $4af7: $24
	ld   d, a                                        ; $4af8: $57
	xor  h                                           ; $4af9: $ac
	call c, $eede                                    ; $4afa: $dc $de $ee
	db   $ed                                         ; $4afd: $ed
	call c, $97bb                                    ; $4afe: $dc $bb $97
	ld   h, l                                        ; $4b01: $65
	ld   [hl-], a                                    ; $4b02: $32
	ld   de, $2311                                   ; $4b03: $11 $11 $23
	ld   b, l                                        ; $4b06: $45
	ld   h, a                                        ; $4b07: $67
	adc  c                                           ; $4b08: $89
	cp   e                                           ; $4b09: $bb
	cp   e                                           ; $4b0a: $bb
	call $ddcc                                       ; $4b0b: $cd $cc $dd
	call c, $a8ba                                    ; $4b0e: $dc $ba $a8
	ld   h, h                                        ; $4b11: $64
	ld   [hl-], a                                    ; $4b12: $32
	ld   de, $2311                                   ; $4b13: $11 $11 $23
	ld   b, l                                        ; $4b16: $45
	ld   h, a                                        ; $4b17: $67
	sbc  c                                           ; $4b18: $99
	cp   h                                           ; $4b19: $bc
	call $eeed                                       ; $4b1a: $cd $ed $ee
	rst  $38                                         ; $4b1d: $ff
	db   $ed                                         ; $4b1e: $ed
	cp   d                                           ; $4b1f: $ba
	add  [hl]                                        ; $4b20: $86
	ld   b, d                                        ; $4b21: $42
	ld   de, $1211                                   ; $4b22: $11 $11 $12
	inc  [hl]                                        ; $4b25: $34
	ld   d, a                                        ; $4b26: $57
	adc  d                                           ; $4b27: $8a
	xor  d                                           ; $4b28: $aa
	call z, $ddcd                                    ; $4b29: $cc $cd $dd
	call $bbcd                                       ; $4b2c: $cd $cd $bb
	xor  b                                           ; $4b2f: $a8
	halt                                             ; $4b30: $76
	ld   b, e                                        ; $4b31: $43
	ld   [hl-], a                                    ; $4b32: $32
	ld   [hl+], a                                    ; $4b33: $22
	inc  hl                                          ; $4b34: $23
	ld   b, l                                        ; $4b35: $45
	ld   h, a                                        ; $4b36: $67
	ld   a, c                                        ; $4b37: $79
	sbc  d                                           ; $4b38: $9a
	sbc  e                                           ; $4b39: $9b
	cp   l                                           ; $4b3a: $bd
	db   $dd                                         ; $4b3b: $dd
	cp   d                                           ; $4b3c: $ba
	call $badc                                       ; $4b3d: $cd $dc $ba
	add  [hl]                                        ; $4b40: $86
	ld   d, h                                        ; $4b41: $54
	ld   [hl-], a                                    ; $4b42: $32
	ld   de, $3422                                   ; $4b43: $11 $22 $34
	ld   d, a                                        ; $4b46: $57
	adc  c                                           ; $4b47: $89
	xor  e                                           ; $4b48: $ab
	set  3, a                                        ; $4b49: $cb $df
	rst  $38                                         ; $4b4b: $ff
	cp   c                                           ; $4b4c: $b9
	sbc  d                                           ; $4b4d: $9a
	cp   d                                           ; $4b4e: $ba
	cp   b                                           ; $4b4f: $b8
	ld   d, d                                        ; $4b50: $52
	ld   de, $1112                                   ; $4b51: $11 $12 $11
	dec  [hl]                                        ; $4b54: $35
	ld   h, a                                        ; $4b55: $67
	adc  h                                           ; $4b56: $8c
	rst  $38                                         ; $4b57: $ff
	rst  $38                                         ; $4b58: $ff
	rst  $38                                         ; $4b59: $ff
	db   $fc                                         ; $4b5a: $fc
	cp   [hl]                                        ; $4b5b: $be
	push de                                          ; $4b5c: $d5
	inc  d                                           ; $4b5d: $14
	ld   hl, $1111                                   ; $4b5e: $21 $11 $11
	ld   de, $7936                                   ; $4b61: $11 $36 $79
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b64: $cf
	rst  $38                                         ; $4b65: $ff
	rst  $38                                         ; $4b66: $ff
	rst  $38                                         ; $4b67: $ff
	rst  $38                                         ; $4b68: $ff
	jp   z, $1161                                    ; $4b69: $ca $61 $11

	ld   de, $1111                                   ; $4b6c: $11 $11 $11
	dec  [hl]                                        ; $4b6f: $35
	sbc  e                                           ; $4b70: $9b
	rst  $38                                         ; $4b71: $ff
	rst  $38                                         ; $4b72: $ff
	rst  $38                                         ; $4b73: $ff
	rst  $38                                         ; $4b74: $ff
	cp   $b9                                         ; $4b75: $fe $b9
	ld   d, d                                        ; $4b77: $52
	ld   de, $1111                                   ; $4b78: $11 $11 $11
	ld   de, $cf99                                   ; $4b7b: $11 $99 $cf
	rst  $38                                         ; $4b7e: $ff
	rst  $38                                         ; $4b7f: $ff
	rst  $38                                         ; $4b80: $ff
	cp   $ec                                         ; $4b81: $fe $ec
	halt                                             ; $4b83: $76
	ld   hl, $1111                                   ; $4b84: $21 $11 $11
	ld   de, wTitleScreenCounterForResettingData                                   ; $4b87: $11 $17 $cc
	rst  $38                                         ; $4b8a: $ff
	rst  $38                                         ; $4b8b: $ff
	rst  $38                                         ; $4b8c: $ff
	rst  $38                                         ; $4b8d: $ff
	db   $fc                                         ; $4b8e: $fc
	jp   z, $1193                                    ; $4b8f: $ca $93 $11

	ld   de, $1111                                   ; $4b92: $11 $11 $11
	ld   l, h                                        ; $4b95: $6c
	rst  JumpTable                                         ; $4b96: $df
	rst  $38                                         ; $4b97: $ff
	rst  $38                                         ; $4b98: $ff
	rst  $38                                         ; $4b99: $ff
	rst  $38                                         ; $4b9a: $ff
	res  2, a                                        ; $4b9b: $cb $97
	ld   sp, $1111                                   ; $4b9d: $31 $11 $11
	ld   de, $fe19                                   ; $4ba0: $11 $19 $fe
	rst  $38                                         ; $4ba3: $ff
	rst  $38                                         ; $4ba4: $ff
	rst  $38                                         ; $4ba5: $ff
	rst  $38                                         ; $4ba6: $ff
	ld   sp, hl                                      ; $4ba7: $f9
	xor  c                                           ; $4ba8: $a9
	ld   d, c                                        ; $4ba9: $51
	ld   de, $1111                                   ; $4baa: $11 $11 $11
	ld   de, $ffdf                                   ; $4bad: $11 $df $ff
	rst  $38                                         ; $4bb0: $ff
	rst  $38                                         ; $4bb1: $ff
	rst  $38                                         ; $4bb2: $ff
	db   $fc                                         ; $4bb3: $fc
	ld   a, b                                        ; $4bb4: $78
	ld   [hl], h                                     ; $4bb5: $74
	ld   de, $1111                                   ; $4bb6: $11 $11 $11
	ld   de, $ff4f                                   ; $4bb9: $11 $4f $ff
	rst  $38                                         ; $4bbc: $ff
	rst  $38                                         ; $4bbd: $ff
	rst  $38                                         ; $4bbe: $ff
	rst  $38                                         ; $4bbf: $ff
	or   [hl]                                        ; $4bc0: $b6
	sub  [hl]                                        ; $4bc1: $96
	ld   b, c                                        ; $4bc2: $41
	ld   de, $1111                                   ; $4bc3: $11 $11 $11
	dec  d                                           ; $4bc6: $15
	rst  $38                                         ; $4bc7: $ff
	rst  $38                                         ; $4bc8: $ff
	rst  $38                                         ; $4bc9: $ff
	rst  $38                                         ; $4bca: $ff
	rst  $38                                         ; $4bcb: $ff
	ld   sp, hl                                      ; $4bcc: $f9
	ld   l, b                                        ; $4bcd: $68
	ld   h, l                                        ; $4bce: $65
	ld   de, $1111                                   ; $4bcf: $11 $11 $11
	ld   de, $ff3f                                   ; $4bd2: $11 $3f $ff
	rst  $38                                         ; $4bd5: $ff
	rst  $38                                         ; $4bd6: $ff
	rst  $38                                         ; $4bd7: $ff
	rst  $38                                         ; $4bd8: $ff
	and  h                                           ; $4bd9: $a4
	add  a                                           ; $4bda: $87
	ld   d, e                                        ; $4bdb: $53
	ld   de, $1111                                   ; $4bdc: $11 $11 $11
	inc  d                                           ; $4bdf: $14
	rst  JumpTable                                         ; $4be0: $df
	rst  $38                                         ; $4be1: $ff
	rst  $38                                         ; $4be2: $ff
	rst  $38                                         ; $4be3: $ff
	rst  $38                                         ; $4be4: $ff
	ei                                               ; $4be5: $fb
	ld   b, [hl]                                     ; $4be6: $46
	sub  a                                           ; $4be7: $97
	ld   h, c                                        ; $4be8: $61
	ld   de, $1111                                   ; $4be9: $11 $11 $11
	rla                                              ; $4bec: $17
	rst  $38                                         ; $4bed: $ff
	rst  $38                                         ; $4bee: $ff
	rst  $38                                         ; $4bef: $ff
	rst  $38                                         ; $4bf0: $ff
	rst  $38                                         ; $4bf1: $ff
	rst  $30                                         ; $4bf2: $f7
	ld   c, b                                        ; $4bf3: $48
	add  a                                           ; $4bf4: $87
	ld   d, c                                        ; $4bf5: $51
	ld   de, $1111                                   ; $4bf6: $11 $11 $11
	dec  hl                                          ; $4bf9: $2b
	rst  $38                                         ; $4bfa: $ff
	rst  $38                                         ; $4bfb: $ff
	rst  $38                                         ; $4bfc: $ff
	rst  $38                                         ; $4bfd: $ff
	db   $fd                                         ; $4bfe: $fd
	add  $57                                         ; $4bff: $c6 $57
	adc  b                                           ; $4c01: $88
	ld   [hl], d                                     ; $4c02: $72
	ld   de, $1111                                   ; $4c03: $11 $11 $11
	ld   a, [de]                                     ; $4c06: $1a
	rst  $38                                         ; $4c07: $ff
	rst  $38                                         ; $4c08: $ff
	rst  $38                                         ; $4c09: $ff
	rst  $38                                         ; $4c0a: $ff
	db   $fd                                         ; $4c0b: $fd
	or   a                                           ; $4c0c: $b7
	ld   d, a                                        ; $4c0d: $57
	sbc  b                                           ; $4c0e: $98
	add  [hl]                                        ; $4c0f: $86
	ld   de, $1111                                   ; $4c10: $11 $11 $11
	dec  d                                           ; $4c13: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c14: $cf
	rst  $38                                         ; $4c15: $ff
	rst  $38                                         ; $4c16: $ff
	rst  $38                                         ; $4c17: $ff
	db   $fd                                         ; $4c18: $fd
	sbc  d                                           ; $4c19: $9a
	ld   h, l                                        ; $4c1a: $65
	ld   a, d                                        ; $4c1b: $7a
	xor  e                                           ; $4c1c: $ab
	sub  c                                           ; $4c1d: $91
	ld   de, $1111                                   ; $4c1e: $11 $11 $11
	ld   c, e                                        ; $4c21: $4b
	rst  $38                                         ; $4c22: $ff
	rst  $38                                         ; $4c23: $ff
	rst  $38                                         ; $4c24: $ff
	rst  $38                                         ; $4c25: $ff
	add  sp, -$59                                    ; $4c26: $e8 $a7
	ld   b, [hl]                                     ; $4c28: $46
	sbc  d                                           ; $4c29: $9a
	cp   e                                           ; $4c2a: $bb
	ld   hl, $1111                                   ; $4c2b: $21 $11 $11
	ld   de, $ff7d                                   ; $4c2e: $11 $7d $ff
	rst  $38                                         ; $4c31: $ff
	rst  $38                                         ; $4c32: $ff
	rst  $38                                         ; $4c33: $ff
	and  a                                           ; $4c34: $a7
	and  [hl]                                        ; $4c35: $a6
	ld   b, [hl]                                     ; $4c36: $46
	cp   h                                           ; $4c37: $bc
	jp   c, $1151                                    ; $4c38: $da $51 $11

	ld   de, $3c11                                   ; $4c3b: $11 $11 $3c
	rst  $38                                         ; $4c3e: $ff
	rst  $38                                         ; $4c3f: $ff
	rst  $38                                         ; $4c40: $ff
	rst  $38                                         ; $4c41: $ff
	or   $66                                         ; $4c42: $f6 $66
	ld   b, e                                        ; $4c44: $43
	ld   a, h                                        ; $4c45: $7c
	rst  $28                                         ; $4c46: $ef
	sub  l                                           ; $4c47: $95
	ld   de, $1111                                   ; $4c48: $11 $11 $11
	ld   [de], a                                     ; $4c4b: $12
	cp   a                                           ; $4c4c: $bf
	rst  $38                                         ; $4c4d: $ff
	rst  $38                                         ; $4c4e: $ff
	rst  $38                                         ; $4c4f: $ff
	cp   $52                                         ; $4c50: $fe $52
	inc  sp                                          ; $4c52: $33
	dec  d                                           ; $4c53: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c54: $cf
	cp   $a5                                         ; $4c55: $fe $a5
	ld   de, $1111                                   ; $4c57: $11 $11 $11
	rla                                              ; $4c5a: $17
	rst  $38                                         ; $4c5b: $ff
	rst  $38                                         ; $4c5c: $ff
	rst  $38                                         ; $4c5d: $ff
	rst  $38                                         ; $4c5e: $ff
	ld   hl, sp+$11                                  ; $4c5f: $f8 $11
	inc  hl                                          ; $4c61: $23
	dec  h                                           ; $4c62: $25
	rst  $28                                         ; $4c63: $ef
	rst  $38                                         ; $4c64: $ff
	ld   [$1111], a                                  ; $4c65: $ea $11 $11
	ld   de, $ef15                                   ; $4c68: $11 $15 $ef
	rst  $38                                         ; $4c6b: $ff
	rst  $38                                         ; $4c6c: $ff
	rst  $38                                         ; $4c6d: $ff
	ld   sp, hl                                      ; $4c6e: $f9
	ld   de, $2212                                   ; $4c6f: $11 $12 $22
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c72: $cf
	rst  $38                                         ; $4c73: $ff
	rst  $38                                         ; $4c74: $ff
	add  c                                           ; $4c75: $81
	ld   de, $1111                                   ; $4c76: $11 $11 $11
	ld   l, a                                        ; $4c79: $6f
	rst  $38                                         ; $4c7a: $ff
	rst  $38                                         ; $4c7b: $ff
	rst  $38                                         ; $4c7c: $ff
	db   $fd                                         ; $4c7d: $fd
	ld   [hl], c                                     ; $4c7e: $71
	ld   de, $5e23                                   ; $4c7f: $11 $23 $5e
	rst  $38                                         ; $4c82: $ff
	rst  $38                                         ; $4c83: $ff
	ld   a, [$1111]                                  ; $4c84: $fa $11 $11
	ld   de, $af13                                   ; $4c87: $11 $13 $af
	rst  $38                                         ; $4c8a: $ff
	rst  $38                                         ; $4c8b: $ff
	rst  $38                                         ; $4c8c: $ff
	ld   a, [$1141]                                  ; $4c8d: $fa $41 $11
	ld   b, h                                        ; $4c90: $44
	sbc  a                                           ; $4c91: $9f
	rst  $38                                         ; $4c92: $ff
	rst  $38                                         ; $4c93: $ff
	jp   hl                                          ; $4c94: $e9


	ld   de, $1111                                   ; $4c95: $11 $11 $11
	ld   [de], a                                     ; $4c98: $12
	cp   a                                           ; $4c99: $bf
	rst  $38                                         ; $4c9a: $ff
	rst  $38                                         ; $4c9b: $ff
	rst  $38                                         ; $4c9c: $ff
	ld   [$1151], a                                  ; $4c9d: $ea $51 $11
	inc  de                                          ; $4ca0: $13
	ld   a, [hl]                                     ; $4ca1: $7e
	rst  $38                                         ; $4ca2: $ff
	rst  $38                                         ; $4ca3: $ff
	ei                                               ; $4ca4: $fb
	ld   de, $1111                                   ; $4ca5: $11 $11 $11
	ld   de, $ff8f                                   ; $4ca8: $11 $8f $ff
	rst  $38                                         ; $4cab: $ff
	rst  $38                                         ; $4cac: $ff
	ld   a, [$1161]                                  ; $4cad: $fa $61 $11
	ld   de, $ff3b                                   ; $4cb0: $11 $3b $ff
	rst  $38                                         ; $4cb3: $ff
	rst  $38                                         ; $4cb4: $ff
	sub  c                                           ; $4cb5: $91
	ld   de, $1111                                   ; $4cb6: $11 $11 $11
	add  hl, de                                      ; $4cb9: $19
	rst  $38                                         ; $4cba: $ff
	rst  $38                                         ; $4cbb: $ff
	rst  $38                                         ; $4cbc: $ff
	rst  $38                                         ; $4cbd: $ff
	or   h                                           ; $4cbe: $b4
	ld   de, $1511                                   ; $4cbf: $11 $11 $15
	rst  JumpTable                                         ; $4cc2: $df
	rst  $38                                         ; $4cc3: $ff
	rst  $38                                         ; $4cc4: $ff
	ld   a, [$1111]                                  ; $4cc5: $fa $11 $11
	ld   de, $6f11                                   ; $4cc8: $11 $11 $6f
	rst  $38                                         ; $4ccb: $ff
	rst  $38                                         ; $4ccc: $ff
	rst  $38                                         ; $4ccd: $ff
	rst  $38                                         ; $4cce: $ff
	sub  d                                           ; $4ccf: $92
	ld   de, $4a11                                   ; $4cd0: $11 $11 $4a
	rst  $38                                         ; $4cd3: $ff
	rst  $38                                         ; $4cd4: $ff
	rst  $38                                         ; $4cd5: $ff
	add  c                                           ; $4cd6: $81
	ld   de, $1111                                   ; $4cd7: $11 $11 $11
	inc  de                                          ; $4cda: $13
	adc  a                                           ; $4cdb: $8f
	rst  $38                                         ; $4cdc: $ff
	rst  $38                                         ; $4cdd: $ff
	rst  $38                                         ; $4cde: $ff
	db   $fd                                         ; $4cdf: $fd
	ld   [hl], l                                     ; $4ce0: $75
	ld   b, e                                        ; $4ce1: $43
	ld   [hl+], a                                    ; $4ce2: $22
	ld   l, d                                        ; $4ce3: $6a
	db   $dd                                         ; $4ce4: $dd
	rst  $38                                         ; $4ce5: $ff
	rst  $10                                         ; $4ce6: $d7
	ld   hl, $1111                                   ; $4ce7: $21 $11 $11
	ld   de, $ae25                                   ; $4cea: $11 $25 $ae
	rst  $38                                         ; $4ced: $ff
	rst  $38                                         ; $4cee: $ff
	rst  $38                                         ; $4cef: $ff
	ei                                               ; $4cf0: $fb
	sbc  c                                           ; $4cf1: $99
	add  [hl]                                        ; $4cf2: $86
	ld   b, [hl]                                     ; $4cf3: $46
	adc  c                                           ; $4cf4: $89
	sbc  d                                           ; $4cf5: $9a
	cp   c                                           ; $4cf6: $b9
	ld   [hl], e                                     ; $4cf7: $73
	ld   de, $1101                                   ; $4cf8: $11 $01 $11
	inc  d                                           ; $4cfb: $14
	ld   d, [hl]                                     ; $4cfc: $56
	adc  e                                           ; $4cfd: $8b
	sbc  $ee                                         ; $4cfe: $de $ee
	rst  $38                                         ; $4d00: $ff
	db   $ec                                         ; $4d01: $ec
	cp   e                                           ; $4d02: $bb
	cp   c                                           ; $4d03: $b9
	ld   [hl], a                                     ; $4d04: $77
	adc  b                                           ; $4d05: $88
	ld   [hl], a                                     ; $4d06: $77
	ld   [hl], a                                     ; $4d07: $77
	halt                                             ; $4d08: $76
	ld   d, [hl]                                     ; $4d09: $56
	ld   h, a                                        ; $4d0a: $67
	ld   h, [hl]                                     ; $4d0b: $66
	ld   h, [hl]                                     ; $4d0c: $66
	ld   h, [hl]                                     ; $4d0d: $66
	ld   h, [hl]                                     ; $4d0e: $66
	ld   h, [hl]                                     ; $4d0f: $66
	ld   h, [hl]                                     ; $4d10: $66
	ld   [hl], a                                     ; $4d11: $77
	ld   a, b                                        ; $4d12: $78
	adc  c                                           ; $4d13: $89
	xor  d                                           ; $4d14: $aa
	xor  d                                           ; $4d15: $aa
	cp   d                                           ; $4d16: $ba
	xor  d                                           ; $4d17: $aa
	xor  e                                           ; $4d18: $ab
	cp   d                                           ; $4d19: $ba
	xor  d                                           ; $4d1a: $aa
	sbc  c                                           ; $4d1b: $99
	xor  c                                           ; $4d1c: $a9
	adc  c                                           ; $4d1d: $89
	add  a                                           ; $4d1e: $87
	halt                                             ; $4d1f: $76
	ld   d, l                                        ; $4d20: $55
	ld   b, h                                        ; $4d21: $44
	ld   b, h                                        ; $4d22: $44
	ld   b, l                                        ; $4d23: $45
	ld   h, [hl]                                     ; $4d24: $66
	ld   [hl], a                                     ; $4d25: $77
	adc  c                                           ; $4d26: $89
	adc  b                                           ; $4d27: $88
	sbc  c                                           ; $4d28: $99
	sbc  c                                           ; $4d29: $99
	xor  d                                           ; $4d2a: $aa
	xor  e                                           ; $4d2b: $ab
	cp   d                                           ; $4d2c: $ba
	xor  d                                           ; $4d2d: $aa
	cp   d                                           ; $4d2e: $ba
	xor  c                                           ; $4d2f: $a9
	adc  b                                           ; $4d30: $88
	ld   [hl], a                                     ; $4d31: $77
	ld   [hl], a                                     ; $4d32: $77
	ld   [hl], a                                     ; $4d33: $77
	ld   [hl], a                                     ; $4d34: $77
	ld   [hl], a                                     ; $4d35: $77
	ld   h, [hl]                                     ; $4d36: $66
	ld   h, [hl]                                     ; $4d37: $66
	ld   h, [hl]                                     ; $4d38: $66
	ld   h, [hl]                                     ; $4d39: $66
	ld   [hl], a                                     ; $4d3a: $77
	adc  b                                           ; $4d3b: $88
	adc  c                                           ; $4d3c: $89
	sbc  d                                           ; $4d3d: $9a
	xor  d                                           ; $4d3e: $aa
	sbc  c                                           ; $4d3f: $99
	sbc  c                                           ; $4d40: $99
	adc  c                                           ; $4d41: $89
	sbc  c                                           ; $4d42: $99
	sbc  c                                           ; $4d43: $99
	sbc  c                                           ; $4d44: $99
	adc  b                                           ; $4d45: $88
	sbc  b                                           ; $4d46: $98
	add  a                                           ; $4d47: $87
	ld   [hl], a                                     ; $4d48: $77
	ld   [hl], a                                     ; $4d49: $77
	ld   [hl], a                                     ; $4d4a: $77
	ld   [hl], a                                     ; $4d4b: $77
	ld   [hl], a                                     ; $4d4c: $77
	ld   [hl], a                                     ; $4d4d: $77
	ld   [hl], a                                     ; $4d4e: $77
	ld   [hl], a                                     ; $4d4f: $77
	ld   [hl], a                                     ; $4d50: $77
	ld   a, b                                        ; $4d51: $78
	adc  b                                           ; $4d52: $88
	sbc  c                                           ; $4d53: $99
	adc  b                                           ; $4d54: $88
	adc  b                                           ; $4d55: $88
	adc  b                                           ; $4d56: $88
	sbc  c                                           ; $4d57: $99
	sbc  c                                           ; $4d58: $99
	adc  b                                           ; $4d59: $88
	adc  b                                           ; $4d5a: $88
	adc  b                                           ; $4d5b: $88
	adc  b                                           ; $4d5c: $88
	adc  b                                           ; $4d5d: $88
	adc  b                                           ; $4d5e: $88
	adc  b                                           ; $4d5f: $88
	ld   [hl], a                                     ; $4d60: $77
	ld   [hl], a                                     ; $4d61: $77
	ld   [hl], a                                     ; $4d62: $77
	ld   [hl], a                                     ; $4d63: $77
	ld   [hl], a                                     ; $4d64: $77
	adc  b                                           ; $4d65: $88
	adc  b                                           ; $4d66: $88
	adc  b                                           ; $4d67: $88
	adc  b                                           ; $4d68: $88
	adc  b                                           ; $4d69: $88
	adc  b                                           ; $4d6a: $88
	adc  b                                           ; $4d6b: $88
	sbc  c                                           ; $4d6c: $99
	sbc  c                                           ; $4d6d: $99
	sbc  c                                           ; $4d6e: $99
	sbc  b                                           ; $4d6f: $98
	adc  b                                           ; $4d70: $88
	adc  b                                           ; $4d71: $88
	adc  b                                           ; $4d72: $88
	adc  b                                           ; $4d73: $88
	ld   [hl], a                                     ; $4d74: $77
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
	sbc  c                                           ; $4d7f: $99
	sbc  c                                           ; $4d80: $99
	sbc  b                                           ; $4d81: $98
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
	sbc  c                                           ; $4e87: $99
	adc  b                                           ; $4e88: $88
	adc  b                                           ; $4e89: $88
	add  a                                           ; $4e8a: $87
	adc  b                                           ; $4e8b: $88
	ld   a, b                                        ; $4e8c: $78
	adc  b                                           ; $4e8d: $88
	adc  c                                           ; $4e8e: $89
	adc  b                                           ; $4e8f: $88
	adc  b                                           ; $4e90: $88
	adc  b                                           ; $4e91: $88
	adc  b                                           ; $4e92: $88
	adc  b                                           ; $4e93: $88
	adc  b                                           ; $4e94: $88
	adc  b                                           ; $4e95: $88
	sbc  b                                           ; $4e96: $98
	ld   [hl], a                                     ; $4e97: $77
	ld   a, b                                        ; $4e98: $78
	adc  b                                           ; $4e99: $88
	adc  b                                           ; $4e9a: $88
	adc  b                                           ; $4e9b: $88
	adc  c                                           ; $4e9c: $89
	adc  c                                           ; $4e9d: $89
	sbc  c                                           ; $4e9e: $99
	sbc  b                                           ; $4e9f: $98
	add  a                                           ; $4ea0: $87
	ld   [hl], a                                     ; $4ea1: $77
	ld   [hl], a                                     ; $4ea2: $77
	ld   a, b                                        ; $4ea3: $78
	adc  b                                           ; $4ea4: $88
	add  a                                           ; $4ea5: $87
	ld   a, b                                        ; $4ea6: $78
	adc  b                                           ; $4ea7: $88
	adc  b                                           ; $4ea8: $88
	adc  b                                           ; $4ea9: $88
	adc  b                                           ; $4eaa: $88
	adc  b                                           ; $4eab: $88
	adc  b                                           ; $4eac: $88
	sbc  c                                           ; $4ead: $99
	sbc  b                                           ; $4eae: $98
	adc  b                                           ; $4eaf: $88
	adc  b                                           ; $4eb0: $88
	adc  b                                           ; $4eb1: $88
	sbc  c                                           ; $4eb2: $99
	adc  b                                           ; $4eb3: $88
	halt                                             ; $4eb4: $76
	ld   h, l                                        ; $4eb5: $65
	ld   d, h                                        ; $4eb6: $54
	inc  [hl]                                        ; $4eb7: $34
	ld   d, a                                        ; $4eb8: $57
	adc  c                                           ; $4eb9: $89
	adc  d                                           ; $4eba: $8a
	cp   e                                           ; $4ebb: $bb
	xor  d                                           ; $4ebc: $aa
	xor  d                                           ; $4ebd: $aa
	xor  d                                           ; $4ebe: $aa
	adc  b                                           ; $4ebf: $88
	adc  d                                           ; $4ec0: $8a
	xor  d                                           ; $4ec1: $aa
	sbc  d                                           ; $4ec2: $9a
	cp   e                                           ; $4ec3: $bb
	cp   c                                           ; $4ec4: $b9
	add  a                                           ; $4ec5: $87
	ld   h, l                                        ; $4ec6: $65
	ld   b, d                                        ; $4ec7: $42
	ld   de, $7913                                   ; $4ec8: $11 $13 $79
	xor  e                                           ; $4ecb: $ab
	cp   l                                           ; $4ecc: $bd
	call c, Call_0c1_77b9                            ; $4ecd: $dc $b9 $77
	ld   a, b                                        ; $4ed0: $78
	sbc  b                                           ; $4ed1: $98
	sbc  c                                           ; $4ed2: $99
	cp   h                                           ; $4ed3: $bc
	cp   h                                           ; $4ed4: $bc
	res  5, d                                        ; $4ed5: $cb $aa
	xor  c                                           ; $4ed7: $a9
	sub  a                                           ; $4ed8: $97
	ld   h, h                                        ; $4ed9: $64
	ld   hl, $1111                                   ; $4eda: $21 $11 $11
	ld   l, d                                        ; $4edd: $6a
	call $eccd                                       ; $4ede: $cd $cd $ec
	and  a                                           ; $4ee1: $a7
	ld   d, l                                        ; $4ee2: $55
	ld   l, b                                        ; $4ee3: $68
	sbc  d                                           ; $4ee4: $9a
	xor  e                                           ; $4ee5: $ab
	call $cbdc                                       ; $4ee6: $cd $dc $cb
	cp   d                                           ; $4ee9: $ba
	sbc  c                                           ; $4eea: $99
	sbc  c                                           ; $4eeb: $99
	ld   [hl], l                                     ; $4eec: $75
	ld   [hl-], a                                    ; $4eed: $32
	ld   de, $1511                                   ; $4eee: $11 $11 $15
	cp   a                                           ; $4ef1: $bf
	cp   $ed                                         ; $4ef2: $fe $ed
	ret                                              ; $4ef4: $c9


	ld   d, e                                        ; $4ef5: $53
	ld   b, l                                        ; $4ef6: $45
	xor  e                                           ; $4ef7: $ab
	xor  h                                           ; $4ef8: $ac
	cp   h                                           ; $4ef9: $bc
	db   $ec                                         ; $4efa: $ec
	cp   e                                           ; $4efb: $bb
	cp   e                                           ; $4efc: $bb
	cp   d                                           ; $4efd: $ba
	xor  d                                           ; $4efe: $aa
	sbc  b                                           ; $4eff: $98
	ld   h, h                                        ; $4f00: $64
	ld   hl, $1111                                   ; $4f01: $21 $11 $11
	ld   d, $ef                                      ; $4f04: $16 $ef
	rst  $38                                         ; $4f06: $ff
	sbc  $b7                                         ; $4f07: $de $b7
	ld   hl, $bd16                                   ; $4f09: $21 $16 $bd
	db   $dd                                         ; $4f0c: $dd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f0d: $cf
	db   $ec                                         ; $4f0e: $ec
	xor  d                                           ; $4f0f: $aa
	sbc  h                                           ; $4f10: $9c
	cp   h                                           ; $4f11: $bc
	xor  d                                           ; $4f12: $aa
	xor  c                                           ; $4f13: $a9
	ld   h, h                                        ; $4f14: $64
	ld   hl, $1111                                   ; $4f15: $21 $11 $11
	inc  d                                           ; $4f18: $14
	rst  $38                                         ; $4f19: $ff
	rst  $38                                         ; $4f1a: $ff
	db   $dd                                         ; $4f1b: $dd
	cp   b                                           ; $4f1c: $b8
	ld   hl, $cf15                                   ; $4f1d: $21 $15 $cf
	rst  $38                                         ; $4f20: $ff
	db   $dd                                         ; $4f21: $dd
	db   $fd                                         ; $4f22: $fd
	xor  c                                           ; $4f23: $a9
	sbc  h                                           ; $4f24: $9c
	db   $ed                                         ; $4f25: $ed
	db   $db                                         ; $4f26: $db
	cp   c                                           ; $4f27: $b9
	ld   [hl], e                                     ; $4f28: $73
	ld   hl, $1111                                   ; $4f29: $21 $11 $11
	ld   de, $ff8f                                   ; $4f2c: $11 $8f $ff
	db   $eb                                         ; $4f2f: $eb
	bit  2, c                                        ; $4f30: $cb $51
	ld   de, $ff7f                                   ; $4f32: $11 $7f $ff
	db   $ec                                         ; $4f35: $ec
	sbc  $c8                                         ; $4f36: $de $c8
	sbc  d                                           ; $4f38: $9a
	rst  $38                                         ; $4f39: $ff
	db   $fd                                         ; $4f3a: $fd
	cp   e                                           ; $4f3b: $bb
	and  l                                           ; $4f3c: $a5
	ld   hl, $1111                                   ; $4f3d: $21 $11 $11
	ld   de, $ff19                                   ; $4f40: $11 $19 $ff
	cp   $bc                                         ; $4f43: $fe $bc
	sub  l                                           ; $4f45: $95
	ld   de, $ff17                                   ; $4f46: $11 $17 $ff
	rst  $38                                         ; $4f49: $ff
	cp   e                                           ; $4f4a: $bb
	db   $ec                                         ; $4f4b: $ec
	xor  b                                           ; $4f4c: $a8
	xor  a                                           ; $4f4d: $af
	rst  $38                                         ; $4f4e: $ff
	ld   a, [$6489]                                  ; $4f4f: $fa $89 $64
	ld   hl, $1121                                   ; $4f52: $21 $21 $11
	ld   de, $ff1f                                   ; $4f55: $11 $1f $ff
	db   $fd                                         ; $4f58: $fd
	cp   e                                           ; $4f59: $bb
	add  c                                           ; $4f5a: $81
	ld   de, $ff1c                                   ; $4f5b: $11 $1c $ff
	rst  $38                                         ; $4f5e: $ff
	rst  JumpTable                                         ; $4f5f: $df
	db   $fd                                         ; $4f60: $fd
	cp   b                                           ; $4f61: $b8
	cp   a                                           ; $4f62: $bf
	rst  $38                                         ; $4f63: $ff
	reti                                             ; $4f64: $d9


	add  [hl]                                        ; $4f65: $86
	ld   b, e                                        ; $4f66: $43
	ld   de, $1121                                   ; $4f67: $11 $21 $11
	ld   de, $ff2f                                   ; $4f6a: $11 $2f $ff
	db   $fc                                         ; $4f6d: $fc
	sbc  e                                           ; $4f6e: $9b
	ld   h, c                                        ; $4f6f: $61
	ld   de, $ff3f                                   ; $4f70: $11 $3f $ff
	db   $fd                                         ; $4f73: $fd
	rst  JumpTable                                         ; $4f74: $df
	db   $fd                                         ; $4f75: $fd
	xor  b                                           ; $4f76: $a8
	xor  a                                           ; $4f77: $af
	rst  $38                                         ; $4f78: $ff
	jp   c, Jump_0c1_5386                            ; $4f79: $da $86 $53

	ld   de, $1111                                   ; $4f7c: $11 $11 $11
	ld   de, $ff3f                                   ; $4f7f: $11 $3f $ff
	ei                                               ; $4f82: $fb
	xor  d                                           ; $4f83: $aa
	ld   [hl], c                                     ; $4f84: $71
	ld   de, $ff2e                                   ; $4f85: $11 $2e $ff
	cp   $df                                         ; $4f88: $fe $df
	rst  $38                                         ; $4f8a: $ff
	and  a                                           ; $4f8b: $a7
	sbc  [hl]                                        ; $4f8c: $9e
	rst  $38                                         ; $4f8d: $ff
	ld   [$5565], a                                  ; $4f8e: $ea $65 $55
	ld   sp, $1111                                   ; $4f91: $31 $11 $11
	ld   de, $ff1f                                   ; $4f94: $11 $1f $ff
	cp   $aa                                         ; $4f97: $fe $aa
	and  [hl]                                        ; $4f99: $a6
	ld   de, $ff17                                   ; $4f9a: $11 $17 $ff
	rst  $38                                         ; $4f9d: $ff
	rst  JumpTable                                         ; $4f9e: $df
	rst  $38                                         ; $4f9f: $ff
	ld   sp, hl                                      ; $4fa0: $f9
	ld   a, d                                        ; $4fa1: $7a
	rst  $38                                         ; $4fa2: $ff
	ld   a, [$6665]                                  ; $4fa3: $fa $65 $66
	ld   b, c                                        ; $4fa6: $41
	ld   de, $1111                                   ; $4fa7: $11 $11 $11
	add  hl, de                                      ; $4faa: $19
	rst  $38                                         ; $4fab: $ff
	rst  $38                                         ; $4fac: $ff
	cp   e                                           ; $4fad: $bb
	db   $db                                         ; $4fae: $db
	ld   d, c                                        ; $4faf: $51
	ld   de, $ffbf                                   ; $4fb0: $11 $bf $ff
	xor  $ff                                         ; $4fb3: $ee $ff
	cp   $97                                         ; $4fb5: $fe $97
	xor  [hl]                                        ; $4fb7: $ae
	cp   $84                                         ; $4fb8: $fe $84
	ld   b, [hl]                                     ; $4fba: $46
	ld   h, h                                        ; $4fbb: $64
	ld   de, $1111                                   ; $4fbc: $11 $11 $11
	ld   [de], a                                     ; $4fbf: $12
	rst  $38                                         ; $4fc0: $ff
	rst  $38                                         ; $4fc1: $ff
	cp   $ef                                         ; $4fc2: $fe $ef
	and  h                                           ; $4fc4: $a4
	ld   de, $ff29                                   ; $4fc5: $11 $29 $ff
	cp   $ff                                         ; $4fc8: $fe $ff
	rst  $38                                         ; $4fca: $ff
	ei                                               ; $4fcb: $fb
	sbc  d                                           ; $4fcc: $9a
	call $43a7                                       ; $4fcd: $cd $a7 $43
	inc  [hl]                                        ; $4fd0: $34
	ld   sp, $1111                                   ; $4fd1: $31 $11 $11
	ld   de, $ff6e                                   ; $4fd4: $11 $6e $ff
	cp   $ff                                         ; $4fd7: $fe $ff
	rst  $38                                         ; $4fd9: $ff
	or   a                                           ; $4fda: $b7
	ld   h, a                                        ; $4fdb: $67
	sbc  d                                           ; $4fdc: $9a
	xor  d                                           ; $4fdd: $aa
	xor  e                                           ; $4fde: $ab
	rst  JumpTable                                         ; $4fdf: $df
	rst  $38                                         ; $4fe0: $ff
	db   $ec                                         ; $4fe1: $ec
	cp   e                                           ; $4fe2: $bb
	xor  c                                           ; $4fe3: $a9
	halt                                             ; $4fe4: $76
	ld   h, [hl]                                     ; $4fe5: $66
	ld   h, l                                        ; $4fe6: $65
	ld   b, e                                        ; $4fe7: $43
	ld   de, $1111                                   ; $4fe8: $11 $11 $11
	inc  [hl]                                        ; $4feb: $34
	ld   b, h                                        ; $4fec: $44
	ld   b, h                                        ; $4fed: $44
	ld   l, b                                        ; $4fee: $68
	xor  e                                           ; $4fef: $ab
	db   $dd                                         ; $4ff0: $dd
	call z, $eeed                                    ; $4ff1: $cc $ed $ee
	db   $ed                                         ; $4ff4: $ed
	res  7, e                                        ; $4ff5: $cb $bb
	cp   d                                           ; $4ff7: $ba
	xor  c                                           ; $4ff8: $a9
	xor  d                                           ; $4ff9: $aa
	sbc  c                                           ; $4ffa: $99
	xor  c                                           ; $4ffb: $a9
	add  a                                           ; $4ffc: $87
	ld   h, l                                        ; $4ffd: $65
	ld   b, e                                        ; $4ffe: $43
	ld   hl, $1111                                   ; $4fff: $21 $11 $11
	ld   de, $3412                                   ; $5002: $11 $12 $34
	ld   d, a                                        ; $5005: $57
	adc  c                                           ; $5006: $89
	xor  e                                           ; $5007: $ab
	call $ffef                                       ; $5008: $cd $ef $ff
	rst  $38                                         ; $500b: $ff
	xor  $de                                         ; $500c: $ee $de
	call z, $aaba                                    ; $500e: $cc $ba $aa
	sbc  b                                           ; $5011: $98
	halt                                             ; $5012: $76
	ld   h, l                                        ; $5013: $65
	ld   b, e                                        ; $5014: $43
	ld   hl, $1111                                   ; $5015: $21 $11 $11
	ld   de, $2311                                   ; $5018: $11 $11 $23
	ld   d, [hl]                                     ; $501b: $56
	ld   a, c                                        ; $501c: $79
	xor  e                                           ; $501d: $ab
	call z, $ffef                                    ; $501e: $cc $ef $ff
	rst  $38                                         ; $5021: $ff
	xor  $ed                                         ; $5022: $ee $ed
	db   $dd                                         ; $5024: $dd
	cp   e                                           ; $5025: $bb
	cp   d                                           ; $5026: $ba
	xor  c                                           ; $5027: $a9
	sbc  b                                           ; $5028: $98
	ld   [hl], l                                     ; $5029: $75
	ld   b, e                                        ; $502a: $43
	ld   [hl+], a                                    ; $502b: $22
	ld   de, $1111                                   ; $502c: $11 $11 $11
	ld   de, $3512                                   ; $502f: $11 $12 $35
	ld   h, a                                        ; $5032: $67
	adc  c                                           ; $5033: $89
	cp   h                                           ; $5034: $bc
	sbc  $ff                                         ; $5035: $de $ff
	rst  $28                                         ; $5037: $ef
	xor  $ed                                         ; $5038: $ee $ed
	db   $dd                                         ; $503a: $dd
	call z, $aaba                                    ; $503b: $cc $ba $aa
	xor  b                                           ; $503e: $a8
	halt                                             ; $503f: $76
	ld   d, h                                        ; $5040: $54
	inc  sp                                          ; $5041: $33
	ld   de, $1111                                   ; $5042: $11 $11 $11
	ld   de, $1311                                   ; $5045: $11 $11 $13
	ld   d, a                                        ; $5048: $57
	sbc  d                                           ; $5049: $9a
	cp   h                                           ; $504a: $bc
	xor  $ef                                         ; $504b: $ee $ef
	rst  $38                                         ; $504d: $ff
	rst  $28                                         ; $504e: $ef
	xor  $ee                                         ; $504f: $ee $ee
	db   $ed                                         ; $5051: $ed
	set  1, d                                        ; $5052: $cb $ca
	xor  d                                           ; $5054: $aa
	add  a                                           ; $5055: $87
	ld   h, l                                        ; $5056: $65
	ld   [hl-], a                                    ; $5057: $32
	ld   de, $1111                                   ; $5058: $11 $11 $11
	ld   de, $1311                                   ; $505b: $11 $11 $13
	ld   d, a                                        ; $505e: $57
	adc  d                                           ; $505f: $8a
	cp   e                                           ; $5060: $bb
	call $ffef                                       ; $5061: $cd $ef $ff
	rst  $38                                         ; $5064: $ff
	cp   $ee                                         ; $5065: $fe $ee
	db   $ed                                         ; $5067: $ed
	db   $ec                                         ; $5068: $ec
	cp   e                                           ; $5069: $bb
	cp   d                                           ; $506a: $ba
	xor  c                                           ; $506b: $a9
	ld   [hl], l                                     ; $506c: $75
	ld   [hl-], a                                    ; $506d: $32
	ld   de, $1111                                   ; $506e: $11 $11 $11
	ld   de, $1211                                   ; $5071: $11 $11 $12
	ld   b, a                                        ; $5074: $47
	sbc  d                                           ; $5075: $9a
	cp   h                                           ; $5076: $bc
	call $ffff                                       ; $5077: $cd $ff $ff
	rst  $38                                         ; $507a: $ff
	db   $fd                                         ; $507b: $fd
	sbc  $ee                                         ; $507c: $de $ee
	db   $ed                                         ; $507e: $ed
	cp   e                                           ; $507f: $bb
	cp   e                                           ; $5080: $bb
	xor  d                                           ; $5081: $aa
	halt                                             ; $5082: $76
	ld   b, d                                        ; $5083: $42
	ld   de, $1111                                   ; $5084: $11 $11 $11
	ld   de, $1211                                   ; $5087: $11 $11 $12
	ld   b, a                                        ; $508a: $47
	xor  e                                           ; $508b: $ab
	cp   h                                           ; $508c: $bc
	db   $dd                                         ; $508d: $dd
	rst  $38                                         ; $508e: $ff
	rst  $38                                         ; $508f: $ff
	rst  $38                                         ; $5090: $ff
	cp   $ff                                         ; $5091: $fe $ff
	rst  $38                                         ; $5093: $ff
	db   $fd                                         ; $5094: $fd
	res  7, e                                        ; $5095: $cb $bb
	xor  c                                           ; $5097: $a9
	ld   [hl], l                                     ; $5098: $75
	ld   sp, $1111                                   ; $5099: $31 $11 $11
	ld   de, $1111                                   ; $509c: $11 $11 $11
	inc  de                                          ; $509f: $13
	ld   l, c                                        ; $50a0: $69
	cp   e                                           ; $50a1: $bb
	call z, $ffdf                                    ; $50a2: $cc $df $ff
	rst  $38                                         ; $50a5: $ff
	rst  $38                                         ; $50a6: $ff
	rst  $38                                         ; $50a7: $ff
	rst  $38                                         ; $50a8: $ff
	rst  $38                                         ; $50a9: $ff
	db   $ec                                         ; $50aa: $ec
	res  5, d                                        ; $50ab: $cb $aa
	sub  a                                           ; $50ad: $97
	ld   d, e                                        ; $50ae: $53
	ld   de, $1111                                   ; $50af: $11 $11 $11
	ld   de, $1111                                   ; $50b2: $11 $11 $11
	scf                                              ; $50b5: $37
	xor  d                                           ; $50b6: $aa
	call z, $ffcd                                    ; $50b7: $cc $cd $ff
	rst  $38                                         ; $50ba: $ff
	rst  $38                                         ; $50bb: $ff
	rst  $38                                         ; $50bc: $ff
	rst  $38                                         ; $50bd: $ff
	rst  $38                                         ; $50be: $ff
	rst  $38                                         ; $50bf: $ff
	res  5, c                                        ; $50c0: $cb $a9
	add  [hl]                                        ; $50c2: $86
	ld   sp, $1111                                   ; $50c3: $31 $11 $11

jr_0c1_50c6:
	ld   de, $1111                                   ; $50c6: $11 $11 $11
	ld   de, $ac59                                   ; $50c9: $11 $59 $ac
	db   $dd                                         ; $50cc: $dd
	rst  JumpTable                                         ; $50cd: $df
	rst  $38                                         ; $50ce: $ff
	rst  $38                                         ; $50cf: $ff
	rst  $38                                         ; $50d0: $ff
	rst  $38                                         ; $50d1: $ff
	rst  $38                                         ; $50d2: $ff
	rst  $38                                         ; $50d3: $ff
	cp   $da                                         ; $50d4: $fe $da
	add  [hl]                                        ; $50d6: $86
	ld   b, c                                        ; $50d7: $41
	ld   de, $1111                                   ; $50d8: $11 $11 $11
	ld   de, $1111                                   ; $50db: $11 $11 $11
	scf                                              ; $50de: $37
	xor  e                                           ; $50df: $ab
	call $ffef                                       ; $50e0: $cd $ef $ff
	rst  $38                                         ; $50e3: $ff
	rst  $38                                         ; $50e4: $ff
	rst  $38                                         ; $50e5: $ff
	rst  $38                                         ; $50e6: $ff
	rst  $38                                         ; $50e7: $ff
	rst  $38                                         ; $50e8: $ff
	db   $eb                                         ; $50e9: $eb
	sub  [hl]                                        ; $50ea: $96
	ld   sp, $1111                                   ; $50eb: $31 $11 $11
	ld   de, $1111                                   ; $50ee: $11 $11 $11
	ld   de, $bc48                                   ; $50f1: $11 $48 $bc
	call $ffef                                       ; $50f4: $cd $ef $ff
	rst  $38                                         ; $50f7: $ff
	rst  $38                                         ; $50f8: $ff
	rst  $38                                         ; $50f9: $ff
	rst  $38                                         ; $50fa: $ff
	rst  $38                                         ; $50fb: $ff
	rst  $38                                         ; $50fc: $ff
	jp   c, $1184                                    ; $50fd: $da $84 $11

	ld   de, $1111                                   ; $5100: $11 $11 $11
	ld   de, $1311                                   ; $5103: $11 $11 $13
	ld   a, d                                        ; $5106: $7a
	set  1, l                                        ; $5107: $cb $cd
	rst  $38                                         ; $5109: $ff
	rst  $38                                         ; $510a: $ff
	rst  $38                                         ; $510b: $ff
	rst  $38                                         ; $510c: $ff
	rst  $38                                         ; $510d: $ff
	rst  $38                                         ; $510e: $ff
	rst  $38                                         ; $510f: $ff
	db   $fd                                         ; $5110: $fd
	ret  z                                           ; $5111: $c8

	ld   d, c                                        ; $5112: $51
	ld   de, $1111                                   ; $5113: $11 $11 $11
	ld   de, $1111                                   ; $5116: $11 $11 $11
	jr   c, jr_0c1_50c6                              ; $5119: $38 $ab

	set  1, [hl]                                     ; $511b: $cb $ce
	rst  $38                                         ; $511d: $ff
	rst  $38                                         ; $511e: $ff
	rst  $38                                         ; $511f: $ff
	rst  $38                                         ; $5120: $ff
	rst  $38                                         ; $5121: $ff
	rst  $38                                         ; $5122: $ff
	rst  $38                                         ; $5123: $ff
	reti                                             ; $5124: $d9


	ld   h, d                                        ; $5125: $62
	ld   de, $1111                                   ; $5126: $11 $11 $11
	ld   de, $1111                                   ; $5129: $11 $11 $11
	jr   z, @-$52                                    ; $512c: $28 $ac

	cp   e                                           ; $512e: $bb
	call $ffff                                       ; $512f: $cd $ff $ff
	rst  $38                                         ; $5132: $ff

jr_0c1_5133:
	rst  $38                                         ; $5133: $ff
	rst  $38                                         ; $5134: $ff
	rst  $38                                         ; $5135: $ff
	cp   $c9                                         ; $5136: $fe $c9
	ld   d, c                                        ; $5138: $51
	ld   de, $1111                                   ; $5139: $11 $11 $11
	ld   de, $1111                                   ; $513c: $11 $11 $11
	ld   c, d                                        ; $513f: $4a
	call $decc                                       ; $5140: $cd $cc $de
	rst  $38                                         ; $5143: $ff
	rst  $38                                         ; $5144: $ff
	rst  $38                                         ; $5145: $ff
	rst  $38                                         ; $5146: $ff
	rst  $38                                         ; $5147: $ff
	rst  $38                                         ; $5148: $ff
	cp   $b7                                         ; $5149: $fe $b7
	ld   sp, $1111                                   ; $514b: $31 $11 $11
	ld   de, $1111                                   ; $514e: $11 $11 $11
	inc  de                                          ; $5151: $13
	adc  e                                           ; $5152: $8b
	call z, $cfcd                                    ; $5153: $cc $cd $cf
	rst  $38                                         ; $5156: $ff
	rst  $38                                         ; $5157: $ff
	rst  $38                                         ; $5158: $ff
	rst  $38                                         ; $5159: $ff
	rst  $28                                         ; $515a: $ef
	cp   $da                                         ; $515b: $fe $da
	ld   [hl], e                                     ; $515d: $73
	ld   de, $1111                                   ; $515e: $11 $11 $11
	ld   de, $1111                                   ; $5161: $11 $11 $11
	jr   c, jr_0c1_5133                              ; $5164: $38 $cd

	call z, $ffcd                                    ; $5166: $cc $cd $ff
	rst  $38                                         ; $5169: $ff
	rst  $38                                         ; $516a: $ff
	rst  $38                                         ; $516b: $ff
	rst  $38                                         ; $516c: $ff
	cp   $ed                                         ; $516d: $fe $ed
	sub  l                                           ; $516f: $95
	ld   de, $1111                                   ; $5170: $11 $11 $11
	ld   de, $1111                                   ; $5173: $11 $11 $11
	dec  d                                           ; $5176: $15
	xor  h                                           ; $5177: $ac
	db   $dd                                         ; $5178: $dd
	db   $ed                                         ; $5179: $ed
	rst  JumpTable                                         ; $517a: $df
	rst  $38                                         ; $517b: $ff
	rst  $38                                         ; $517c: $ff
	rst  $38                                         ; $517d: $ff
	rst  $38                                         ; $517e: $ff
	xor  $fd                                         ; $517f: $ee $fd
	or   [hl]                                        ; $5181: $b6
	ld   hl, $1111                                   ; $5182: $21 $11 $11
	ld   de, $1111                                   ; $5185: $11 $11 $11
	inc  de                                          ; $5188: $13
	sbc  h                                           ; $5189: $9c
	db   $dd                                         ; $518a: $dd
	xor  $ef                                         ; $518b: $ee $ef
	rst  $38                                         ; $518d: $ff
	rst  $38                                         ; $518e: $ff
	rst  $38                                         ; $518f: $ff
	rst  $38                                         ; $5190: $ff
	rst  $28                                         ; $5191: $ef
	db   $fd                                         ; $5192: $fd
	or   [hl]                                        ; $5193: $b6
	ld   hl, $1111                                   ; $5194: $21 $11 $11
	ld   de, $1111                                   ; $5197: $11 $11 $11
	inc  d                                           ; $519a: $14
	sbc  h                                           ; $519b: $9c
	db   $dd                                         ; $519c: $dd
	db   $ed                                         ; $519d: $ed
	rst  $28                                         ; $519e: $ef
	rst  $38                                         ; $519f: $ff
	rst  $38                                         ; $51a0: $ff
	rst  $38                                         ; $51a1: $ff
	cp   $ee                                         ; $51a2: $fe $ee
	db   $eb                                         ; $51a4: $eb
	add  h                                           ; $51a5: $84
	ld   de, $1111                                   ; $51a6: $11 $11 $11
	ld   de, $1111                                   ; $51a9: $11 $11 $11
	daa                                              ; $51ac: $27
	cp   l                                           ; $51ad: $bd
	rst  $28                                         ; $51ae: $ef
	rst  $38                                         ; $51af: $ff
	rst  $38                                         ; $51b0: $ff
	rst  $38                                         ; $51b1: $ff
	rst  $38                                         ; $51b2: $ff
	rst  $38                                         ; $51b3: $ff
	db   $ed                                         ; $51b4: $ed
	call z, $31a7                                    ; $51b5: $cc $a7 $31
	ld   de, $2111                                   ; $51b8: $11 $11 $21
	ld   de, $1411                                   ; $51bb: $11 $11 $14
	sbc  h                                           ; $51be: $9c
	cp   $ff                                         ; $51bf: $fe $ff
	rst  JumpTable                                         ; $51c1: $df
	rst  $38                                         ; $51c2: $ff
	rst  $38                                         ; $51c3: $ff
	rst  $38                                         ; $51c4: $ff
	xor  $cd                                         ; $51c5: $ee $cd
	ret                                              ; $51c7: $c9


	ld   sp, $1111                                   ; $51c8: $31 $11 $11
	dec  h                                           ; $51cb: $25
	ld   d, d                                        ; $51cc: $52
	ld   de, $ae14                                   ; $51cd: $11 $14 $ae
	rst  $38                                         ; $51d0: $ff
	cp   $dd                                         ; $51d1: $fe $dd
	rst  $38                                         ; $51d3: $ff
	rst  $38                                         ; $51d4: $ff
	rst  $38                                         ; $51d5: $ff
	db   $eb                                         ; $51d6: $eb
	add  [hl]                                        ; $51d7: $86
	ld   h, h                                        ; $51d8: $64
	ld   de, $1111                                   ; $51d9: $11 $11 $11
	ld   a, d                                        ; $51dc: $7a
	sub  a                                           ; $51dd: $97
	ld   sp, $bf25                                   ; $51de: $31 $25 $bf
	rst  $38                                         ; $51e1: $ff
	db   $fd                                         ; $51e2: $fd
	call z, $ffcf                                    ; $51e3: $cc $cf $ff
	rst  $38                                         ; $51e6: $ff
	db   $eb                                         ; $51e7: $eb
	ld   [hl], h                                     ; $51e8: $74
	ld   de, $1111                                   ; $51e9: $11 $11 $11
	add  hl, de                                      ; $51ec: $19
	xor  $c7                                         ; $51ed: $ee $c7
	ld   d, l                                        ; $51ef: $55
	ld   a, l                                        ; $51f0: $7d
	rst  $38                                         ; $51f1: $ff
	cp   $b8                                         ; $51f2: $fe $b8
	sbc  d                                           ; $51f4: $9a
	rst  JumpTable                                         ; $51f5: $df
	rst  $38                                         ; $51f6: $ff
	cp   $c7                                         ; $51f7: $fe $c7
	ld   sp, $1111                                   ; $51f9: $31 $11 $11
	inc  d                                           ; $51fc: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51fd: $cf
	db   $db                                         ; $51fe: $db
	ld   h, l                                        ; $51ff: $65
	ld   l, h                                        ; $5200: $6c
	rst  $38                                         ; $5201: $ff
	rst  $38                                         ; $5202: $ff
	ret  z                                           ; $5203: $c8

	ld   l, b                                        ; $5204: $68
	xor  [hl]                                        ; $5205: $ae
	rst  $38                                         ; $5206: $ff
	rst  $38                                         ; $5207: $ff
	ret  c                                           ; $5208: $d8

	ld   b, c                                        ; $5209: $41
	ld   de, $1711                                   ; $520a: $11 $11 $17
	rst  $38                                         ; $520d: $ff
	ld   [$7d55], a                                  ; $520e: $ea $55 $7d
	rst  $38                                         ; $5211: $ff
	rst  $38                                         ; $5212: $ff
	and  [hl]                                        ; $5213: $a6
	ld   b, a                                        ; $5214: $47
	xor  a                                           ; $5215: $af
	rst  $38                                         ; $5216: $ff
	cp   $c7                                         ; $5217: $fe $c7
	ld   de, $1111                                   ; $5219: $11 $11 $11
	dec  de                                          ; $521c: $1b
	rst  $38                                         ; $521d: $ff
	rst  $10                                         ; $521e: $d7
	ld   b, l                                        ; $521f: $45
	sbc  a                                           ; $5220: $9f
	rst  $38                                         ; $5221: $ff
	db   $fd                                         ; $5222: $fd
	ld   [hl], e                                     ; $5223: $73
	ld   b, a                                        ; $5224: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5225: $cf
	rst  $38                                         ; $5226: $ff
	db   $fc                                         ; $5227: $fc
	sub  h                                           ; $5228: $94
	ld   de, $1111                                   ; $5229: $11 $11 $11
	ld   a, a                                        ; $522c: $7f
	rst  $38                                         ; $522d: $ff
	and  l                                           ; $522e: $a5
	ld   [hl], $df                                   ; $522f: $36 $df
	rst  $38                                         ; $5231: $ff
	ld   a, [$6b42]                                  ; $5232: $fa $42 $6b
	rst  $38                                         ; $5235: $ff
	rst  $38                                         ; $5236: $ff
	reti                                             ; $5237: $d9


	ld   h, c                                        ; $5238: $61
	ld   de, $1511                                   ; $5239: $11 $11 $15
	rst  $38                                         ; $523c: $ff
	ei                                               ; $523d: $fb
	ld   b, d                                        ; $523e: $42
	ld   c, h                                        ; $523f: $4c
	rst  $38                                         ; $5240: $ff
	rst  $38                                         ; $5241: $ff
	or   h                                           ; $5242: $b4
	dec  d                                           ; $5243: $15
	xor  a                                           ; $5244: $af
	rst  $38                                         ; $5245: $ff
	db   $fd                                         ; $5246: $fd
	sub  [hl]                                        ; $5247: $96
	ld   de, $1111                                   ; $5248: $11 $11 $11
	ccf                                              ; $524b: $3f
	rst  $38                                         ; $524c: $ff
	call nz, $bf13                                   ; $524d: $c4 $13 $bf
	rst  $38                                         ; $5250: $ff
	ei                                               ; $5251: $fb
	ld   b, c                                        ; $5252: $41
	ld   e, c                                        ; $5253: $59
	rst  $38                                         ; $5254: $ff
	rst  $38                                         ; $5255: $ff
	ret  c                                           ; $5256: $d8

	ld   h, c                                        ; $5257: $61
	ld   de, $1511                                   ; $5258: $11 $11 $15
	rst  $38                                         ; $525b: $ff
	ei                                               ; $525c: $fb
	ld   sp, $ff3a                                   ; $525d: $31 $3a $ff
	rst  $38                                         ; $5260: $ff
	and  d                                           ; $5261: $a2
	dec  d                                           ; $5262: $15
	cp   a                                           ; $5263: $bf
	rst  $38                                         ; $5264: $ff
	db   $fc                                         ; $5265: $fc
	add  l                                           ; $5266: $85
	ld   bc, $1111                                   ; $5267: $01 $11 $11
	ld   l, a                                        ; $526a: $6f
	rst  $38                                         ; $526b: $ff
	or   c                                           ; $526c: $b1
	inc  de                                          ; $526d: $13
	cp   a                                           ; $526e: $bf
	rst  $38                                         ; $526f: $ff
	rst  $30                                         ; $5270: $f7
	ld   de, $ff6c                                   ; $5271: $11 $6c $ff
	rst  $38                                         ; $5274: $ff
	and  [hl]                                        ; $5275: $a6
	ld   b, c                                        ; $5276: $41
	ld   de, $1b11                                   ; $5277: $11 $11 $1b
	rst  $38                                         ; $527a: $ff
	or   $11                                         ; $527b: $f6 $11
	ld   c, a                                        ; $527d: $4f
	rst  $38                                         ; $527e: $ff
	db   $fc                                         ; $527f: $fc
	ld   sp, $ff19                                   ; $5280: $31 $19 $ff
	rst  $38                                         ; $5283: $ff
	rst  ToBoot                                         ; $5284: $c7
	ld   b, e                                        ; $5285: $43
	ld   de, $1311                                   ; $5286: $11 $11 $13
	rst  $38                                         ; $5289: $ff
	rst  $38                                         ; $528a: $ff
	ld   sp, $ff18                                   ; $528b: $31 $18 $ff
	rst  $38                                         ; $528e: $ff
	ld   [hl], c                                     ; $528f: $71
	inc  d                                           ; $5290: $14
	rst  JumpTable                                         ; $5291: $df
	rst  $38                                         ; $5292: $ff
	ld   sp, hl                                      ; $5293: $f9
	ld   b, e                                        ; $5294: $43
	ld   de, $1111                                   ; $5295: $11 $11 $11
	xor  a                                           ; $5298: $af
	rst  $38                                         ; $5299: $ff
	sub  c                                           ; $529a: $91
	inc  de                                          ; $529b: $13
	rst  $38                                         ; $529c: $ff
	rst  $38                                         ; $529d: $ff
	jp   $af11                                       ; $529e: $c3 $11 $af


	rst  $38                                         ; $52a1: $ff
	ei                                               ; $52a2: $fb
	ld   d, e                                        ; $52a3: $53
	ld   hl, $1111                                   ; $52a4: $21 $11 $11
	cpl                                              ; $52a7: $2f
	rst  $38                                         ; $52a8: $ff
	ldh  a, [c]                                      ; $52a9: $f2
	ld   de, $ff8f                                   ; $52aa: $11 $8f $ff
	or   $11                                         ; $52ad: $f6 $11
	ld   l, a                                        ; $52af: $6f
	rst  $38                                         ; $52b0: $ff
	cp   $73                                         ; $52b1: $fe $73
	ld   hl, $1111                                   ; $52b3: $21 $11 $11
	dec  de                                          ; $52b6: $1b
	rst  $38                                         ; $52b7: $ff
	rst  $30                                         ; $52b8: $f7
	ld   de, $ff4f                                   ; $52b9: $11 $4f $ff
	ld   a, [$2d11]                                  ; $52bc: $fa $11 $2d
	rst  $38                                         ; $52bf: $ff
	rst  $38                                         ; $52c0: $ff
	and  e                                           ; $52c1: $a3
	ld   [hl+], a                                    ; $52c2: $22
	ld   de, $1611                                   ; $52c3: $11 $11 $16
	rst  $38                                         ; $52c6: $ff
	ei                                               ; $52c7: $fb
	ld   de, $ff2c                                   ; $52c8: $11 $2c $ff
	db   $fd                                         ; $52cb: $fd
	ld   hl, $ff1b                                   ; $52cc: $21 $1b $ff
	rst  $38                                         ; $52cf: $ff
	or   h                                           ; $52d0: $b4
	ld   [hl+], a                                    ; $52d1: $22
	ld   de, $1311                                   ; $52d2: $11 $11 $13
	rst  $38                                         ; $52d5: $ff
	cp   $21                                         ; $52d6: $fe $21
	add  hl, de                                      ; $52d8: $19
	rst  $38                                         ; $52d9: $ff
	cp   $41                                         ; $52da: $fe $41
	jr   @+$01                                       ; $52dc: $18 $ff

	rst  $38                                         ; $52de: $ff
	or   l                                           ; $52df: $b5
	inc  hl                                          ; $52e0: $23
	ld   de, $1111                                   ; $52e1: $11 $11 $11
	rst  $28                                         ; $52e4: $ef
	rst  $38                                         ; $52e5: $ff
	ld   b, c                                        ; $52e6: $41
	rla                                              ; $52e7: $17
	rst  $38                                         ; $52e8: $ff
	rst  $38                                         ; $52e9: $ff
	ld   d, c                                        ; $52ea: $51
	ld   d, $ff                                      ; $52eb: $16 $ff
	rst  $38                                         ; $52ed: $ff
	add  $23                                         ; $52ee: $c6 $23
	ld   hl, $1111                                   ; $52f0: $21 $11 $11
	rst  JumpTable                                         ; $52f3: $df
	rst  $38                                         ; $52f4: $ff
	ld   h, c                                        ; $52f5: $61
	ld   b, $ff                                      ; $52f6: $06 $ff
	rst  $38                                         ; $52f8: $ff
	ld   h, c                                        ; $52f9: $61
	dec  d                                           ; $52fa: $15
	rst  $38                                         ; $52fb: $ff
	rst  $38                                         ; $52fc: $ff
	or   [hl]                                        ; $52fd: $b6
	inc  hl                                          ; $52fe: $23
	ld   hl, $1111                                   ; $52ff: $21 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5302: $cf
	rst  $38                                         ; $5303: $ff
	ld   [hl], c                                     ; $5304: $71
	ld   d, $ff                                      ; $5305: $16 $ff
	rst  $38                                         ; $5307: $ff
	ld   [hl], c                                     ; $5308: $71
	ld   d, $ff                                      ; $5309: $16 $ff
	rst  $38                                         ; $530b: $ff
	and  l                                           ; $530c: $a5
	inc  hl                                          ; $530d: $23
	ld   sp, $1111                                   ; $530e: $31 $11 $11
	cp   a                                           ; $5311: $bf
	rst  $38                                         ; $5312: $ff
	ld   [hl], c                                     ; $5313: $71
	ld   d, $ff                                      ; $5314: $16 $ff
	rst  $38                                         ; $5316: $ff
	ld   h, c                                        ; $5317: $61
	dec  d                                           ; $5318: $15
	rst  $38                                         ; $5319: $ff
	rst  $38                                         ; $531a: $ff
	sub  h                                           ; $531b: $94
	inc  hl                                          ; $531c: $23
	ld   hl, $1111                                   ; $531d: $21 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5320: $cf
	rst  $38                                         ; $5321: $ff
	ld   [hl], c                                     ; $5322: $71
	rla                                              ; $5323: $17
	rst  $38                                         ; $5324: $ff
	rst  $38                                         ; $5325: $ff
	ld   d, c                                        ; $5326: $51
	rla                                              ; $5327: $17
	rst  $38                                         ; $5328: $ff
	rst  $38                                         ; $5329: $ff
	sub  d                                           ; $532a: $92
	inc  de                                          ; $532b: $13
	ld   sp, $1111                                   ; $532c: $31 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $532f: $cf
	rst  $38                                         ; $5330: $ff
	ld   h, c                                        ; $5331: $61
	rla                                              ; $5332: $17
	rst  $38                                         ; $5333: $ff
	rst  $38                                         ; $5334: $ff
	ld   h, c                                        ; $5335: $61
	rla                                              ; $5336: $17
	rst  $38                                         ; $5337: $ff
	rst  $38                                         ; $5338: $ff
	sub  d                                           ; $5339: $92
	inc  de                                          ; $533a: $13
	ld   hl, $1111                                   ; $533b: $21 $11 $11
	rst  $28                                         ; $533e: $ef
	rst  $38                                         ; $533f: $ff
	ld   d, c                                        ; $5340: $51
	add  hl, hl                                      ; $5341: $29
	rst  $38                                         ; $5342: $ff
	rst  $38                                         ; $5343: $ff
	ld   d, c                                        ; $5344: $51
	ld   a, [de]                                     ; $5345: $1a
	rst  $38                                         ; $5346: $ff
	cp   $72                                         ; $5347: $fe $72
	inc  d                                           ; $5349: $14
	ld   de, $1111                                   ; $534a: $11 $11 $11
	rst  $38                                         ; $534d: $ff
	rst  $38                                         ; $534e: $ff
	ld   b, c                                        ; $534f: $41
	ld   a, [hl-]                                    ; $5350: $3a
	rst  $38                                         ; $5351: $ff
	db   $fc                                         ; $5352: $fc
	ld   b, c                                        ; $5353: $41
	inc  l                                           ; $5354: $2c
	rst  $38                                         ; $5355: $ff
	db   $fd                                         ; $5356: $fd
	ld   h, c                                        ; $5357: $61
	inc  d                                           ; $5358: $14
	ld   bc, $1311                                   ; $5359: $01 $11 $13
	rst  $38                                         ; $535c: $ff
	cp   $42                                         ; $535d: $fe $42
	ld   e, l                                        ; $535f: $5d
	rst  $38                                         ; $5360: $ff
	ei                                               ; $5361: $fb
	ld   sp, $ff4e                                   ; $5362: $31 $4e $ff
	ei                                               ; $5365: $fb
	ld   d, c                                        ; $5366: $51
	inc  h                                           ; $5367: $24
	ld   de, $1511                                   ; $5368: $11 $11 $15
	rst  $38                                         ; $536b: $ff
	ei                                               ; $536c: $fb
	inc  sp                                          ; $536d: $33
	ld   l, [hl]                                     ; $536e: $6e
	rst  $38                                         ; $536f: $ff
	ld   a, [$7f31]                                  ; $5370: $fa $31 $7f
	rst  $38                                         ; $5373: $ff
	ld   a, [$3441]                                  ; $5374: $fa $41 $34
	ld   de, $1711                                   ; $5377: $11 $11 $17
	rst  $38                                         ; $537a: $ff
	ld   a, [$8f34]                                  ; $537b: $fa $34 $8f
	rst  $38                                         ; $537e: $ff
	rst  $30                                         ; $537f: $f7
	inc  sp                                          ; $5380: $33
	sbc  a                                           ; $5381: $9f
	rst  $38                                         ; $5382: $ff
	ld   sp, hl                                      ; $5383: $f9
	ld   [hl-], a                                    ; $5384: $32
	ld   b, e                                        ; $5385: $43

Jump_0c1_5386:
	ld   de, $1811                                   ; $5386: $11 $11 $18
	rst  $38                                         ; $5389: $ff
	ld   hl, sp+$45                                  ; $538a: $f8 $45
	xor  a                                           ; $538c: $af
	rst  $38                                         ; $538d: $ff
	or   $34                                         ; $538e: $f6 $34
	cp   a                                           ; $5390: $bf
	rst  $38                                         ; $5391: $ff
	rst  $10                                         ; $5392: $d7
	ld   [hl-], a                                    ; $5393: $32
	ld   d, e                                        ; $5394: $53
	ld   de, $1911                                   ; $5395: $11 $11 $19
	rst  $38                                         ; $5398: $ff
	rst  $20                                         ; $5399: $e7
	ld   b, [hl]                                     ; $539a: $46
	cp   a                                           ; $539b: $bf
	rst  $38                                         ; $539c: $ff
	and  $35                                         ; $539d: $e6 $35
	rst  JumpTable                                         ; $539f: $df
	rst  $38                                         ; $53a0: $ff
	rst  ToBoot                                         ; $53a1: $c7
	ld   [hl-], a                                    ; $53a2: $32
	ld   d, e                                        ; $53a3: $53
	ld   de, $1911                                   ; $53a4: $11 $11 $19
	rst  $28                                         ; $53a7: $ef
	sub  $56                                         ; $53a8: $d6 $56
	cp   a                                           ; $53aa: $bf
	rst  $38                                         ; $53ab: $ff
	rst  $10                                         ; $53ac: $d7
	ld   b, l                                        ; $53ad: $45
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53ae: $cf
	rst  $38                                         ; $53af: $ff
	ret  c                                           ; $53b0: $d8

	inc  [hl]                                        ; $53b1: $34
	ld   d, e                                        ; $53b2: $53
	ld   de, $1711                                   ; $53b3: $11 $11 $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53b6: $cf
	add  $66                                         ; $53b7: $c6 $66
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53b9: $cf
	rst  $38                                         ; $53ba: $ff
	rst  ToBoot                                         ; $53bb: $c7
	ld   d, [hl]                                     ; $53bc: $56
	rst  JumpTable                                         ; $53bd: $df
	rst  $38                                         ; $53be: $ff
	ret  z                                           ; $53bf: $c8

	inc  [hl]                                        ; $53c0: $34
	ld   d, h                                        ; $53c1: $54
	ld   de, $1511                                   ; $53c2: $11 $11 $15
	adc  $c7                                         ; $53c5: $ce $c7
	ld   h, a                                        ; $53c7: $67
	xor  a                                           ; $53c8: $af
	rst  $38                                         ; $53c9: $ff
	add  sp, $66                                     ; $53ca: $e8 $66
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53cc: $cf
	rst  $38                                         ; $53cd: $ff
	jp   c, Jump_0c1_6655                            ; $53ce: $da $55 $66

	ld   hl, $1211                                   ; $53d1: $21 $11 $12
	adc  e                                           ; $53d4: $8b
	cp   b                                           ; $53d5: $b8
	ld   h, [hl]                                     ; $53d6: $66
	sbc  [hl]                                        ; $53d7: $9e
	rst  $38                                         ; $53d8: $ff
	ld   a, [$af77]                                  ; $53d9: $fa $77 $af
	rst  $38                                         ; $53dc: $ff
	ei                                               ; $53dd: $fb
	ld   [hl], l                                     ; $53de: $75
	ld   h, a                                        ; $53df: $67
	ld   d, c                                        ; $53e0: $51
	ld   de, $4911                                   ; $53e1: $11 $11 $49
	cp   c                                           ; $53e4: $b9
	ld   h, [hl]                                     ; $53e5: $66
	ld   a, h                                        ; $53e6: $7c
	rst  $38                                         ; $53e7: $ff
	db   $fd                                         ; $53e8: $fd
	sub  a                                           ; $53e9: $97
	sbc  l                                           ; $53ea: $9d
	rst  $38                                         ; $53eb: $ff
	cp   $97                                         ; $53ec: $fe $97
	ld   a, b                                        ; $53ee: $78
	add  h                                           ; $53ef: $84
	ld   de, $1511                                   ; $53f0: $11 $11 $15
	sbc  c                                           ; $53f3: $99
	ld   h, l                                        ; $53f4: $65
	ld   l, b                                        ; $53f5: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53f6: $cf
	cp   $b8                                         ; $53f7: $fe $b8
	adc  d                                           ; $53f9: $8a
	rst  $28                                         ; $53fa: $ef
	rst  $38                                         ; $53fb: $ff
	ret                                              ; $53fc: $c9


	adc  b                                           ; $53fd: $88
	xor  c                                           ; $53fe: $a9
	ld   d, c                                        ; $53ff: $51
	ld   de, $4711                                   ; $5400: $11 $11 $47
	ld   [hl], h                                     ; $5403: $74
	ld   b, l                                        ; $5404: $45
	adc  h                                           ; $5405: $8c
	rst  $28                                         ; $5406: $ef
	jp   c, $ce89                                    ; $5407: $da $89 $ce

	rst  $38                                         ; $540a: $ff
	db   $fc                                         ; $540b: $fc
	xor  c                                           ; $540c: $a9
	cp   e                                           ; $540d: $bb
	or   a                                           ; $540e: $b7
	ld   sp, $1211                                   ; $540f: $31 $11 $12
	dec  [hl]                                        ; $5412: $35
	inc  [hl]                                        ; $5413: $34
	ld   d, a                                        ; $5414: $57
	xor  e                                           ; $5415: $ab
	cp   e                                           ; $5416: $bb
	cp   d                                           ; $5417: $ba
	xor  e                                           ; $5418: $ab
	adc  $fe                                         ; $5419: $ce $fe
	db   $ed                                         ; $541b: $ed
	call $a7dc                                       ; $541c: $cd $dc $a7
	ld   sp, $1111                                   ; $541f: $31 $11 $11
	ld   [de], a                                     ; $5422: $12
	inc  hl                                          ; $5423: $23
	ld   b, [hl]                                     ; $5424: $46
	adc  d                                           ; $5425: $8a
	cp   e                                           ; $5426: $bb
	cp   e                                           ; $5427: $bb
	cp   e                                           ; $5428: $bb
	sbc  $de                                         ; $5429: $de $de
	rst  $38                                         ; $542b: $ff
	cp   $ed                                         ; $542c: $fe $ed
	ret                                              ; $542e: $c9


	ld   d, d                                        ; $542f: $52
	ld   de, $1111                                   ; $5430: $11 $11 $11
	ld   de, $7935                                   ; $5433: $11 $35 $79
	sbc  d                                           ; $5436: $9a
	cp   e                                           ; $5437: $bb
	cp   l                                           ; $5438: $bd
	adc  $ed                                         ; $5439: $ce $ed
	rst  $28                                         ; $543b: $ef
	rst  $38                                         ; $543c: $ff
	db   $fd                                         ; $543d: $fd
	cp   d                                           ; $543e: $ba
	ld   [hl], h                                     ; $543f: $74
	ld   de, $1111                                   ; $5440: $11 $11 $11
	ld   de, $5734                                   ; $5443: $11 $34 $57
	sbc  c                                           ; $5446: $99
	cp   h                                           ; $5447: $bc
	call z, $ddcc                                    ; $5448: $cc $cc $dd
	rst  $38                                         ; $544b: $ff
	rst  $38                                         ; $544c: $ff
	cp   $dc                                         ; $544d: $fe $dc
	and  a                                           ; $544f: $a7
	ld   sp, $1111                                   ; $5450: $31 $11 $11
	ld   de, $4513                                   ; $5453: $11 $13 $45
	ld   a, c                                        ; $5456: $79
	xor  e                                           ; $5457: $ab
	cp   h                                           ; $5458: $bc
	call $efcd                                       ; $5459: $cd $cd $ef
	rst  $38                                         ; $545c: $ff
	rst  $38                                         ; $545d: $ff
	db   $ec                                         ; $545e: $ec
	cp   d                                           ; $545f: $ba
	ld   [hl], h                                     ; $5460: $74
	ld   hl, $1111                                   ; $5461: $21 $11 $11
	ld   de, $5734                                   ; $5464: $11 $34 $57
	sbc  c                                           ; $5467: $99
	xor  h                                           ; $5468: $ac
	call z, $cddc                                    ; $5469: $cc $dc $cd
	rst  $28                                         ; $546c: $ef
	rst  $38                                         ; $546d: $ff
	cp   $ed                                         ; $546e: $fe $ed
	cp   c                                           ; $5470: $b9
	ld   h, h                                        ; $5471: $64
	ld   de, $1111                                   ; $5472: $11 $11 $11
	ld   [de], a                                     ; $5475: $12
	inc  [hl]                                        ; $5476: $34
	ld   h, a                                        ; $5477: $67
	sbc  d                                           ; $5478: $9a
	cp   h                                           ; $5479: $bc
	call z, $cdcc                                    ; $547a: $cc $cc $cd
	rst  $28                                         ; $547d: $ef
	rst  $28                                         ; $547e: $ef
	rst  $38                                         ; $547f: $ff
	db   $ed                                         ; $5480: $ed
	cp   c                                           ; $5481: $b9
	ld   [hl], h                                     ; $5482: $74
	ld   de, $1111                                   ; $5483: $11 $11 $11
	ld   [de], a                                     ; $5486: $12
	inc  [hl]                                        ; $5487: $34
	ld   d, a                                        ; $5488: $57
	sbc  d                                           ; $5489: $9a
	call z, $ccbb                                    ; $548a: $cc $bb $cc
	call c, $ffde                                    ; $548d: $dc $de $ff
	rst  $38                                         ; $5490: $ff
	call c, $86b9                                    ; $5491: $dc $b9 $86
	ld   sp, $1111                                   ; $5494: $31 $11 $11
	ld   de, $4623                                   ; $5497: $11 $23 $46
	adc  c                                           ; $549a: $89
	xor  e                                           ; $549b: $ab
	res  7, h                                        ; $549c: $cb $bc
	db   $dd                                         ; $549e: $dd
	sbc  $de                                         ; $549f: $de $de
	cp   $dd                                         ; $54a1: $fe $dd
	res  5, c                                        ; $54a3: $cb $a9
	ld   h, e                                        ; $54a5: $63
	ld   de, $1111                                   ; $54a6: $11 $11 $11
	ld   [de], a                                     ; $54a9: $12
	inc  [hl]                                        ; $54aa: $34
	ld   h, a                                        ; $54ab: $67
	sbc  d                                           ; $54ac: $9a
	call z, $cdbc                                    ; $54ad: $cc $bc $cd
	call $dedd                                       ; $54b0: $cd $dd $de
	xor  $dc                                         ; $54b3: $ee $dc
	cp   e                                           ; $54b5: $bb
	sbc  b                                           ; $54b6: $98
	ld   d, d                                        ; $54b7: $52
	ld   de, $1111                                   ; $54b8: $11 $11 $11
	ld   [de], a                                     ; $54bb: $12
	dec  [hl]                                        ; $54bc: $35
	ld   a, c                                        ; $54bd: $79
	sbc  e                                           ; $54be: $9b
	cp   e                                           ; $54bf: $bb
	call z, $bccc                                    ; $54c0: $cc $cc $bc
	call $eded                                       ; $54c3: $cd $ed $ed
	call c, $b8cc                                    ; $54c6: $dc $cc $b8
	ld   h, d                                        ; $54c9: $62
	ld   de, $1111                                   ; $54ca: $11 $11 $11
	ld   [de], a                                     ; $54cd: $12
	inc  [hl]                                        ; $54ce: $34
	ld   l, b                                        ; $54cf: $68
	xor  d                                           ; $54d0: $aa
	cp   h                                           ; $54d1: $bc
	cp   e                                           ; $54d2: $bb
	call z, $cccb                                    ; $54d3: $cc $cb $cc
	sbc  $de                                         ; $54d6: $de $de
	db   $ed                                         ; $54d8: $ed
	call z, $85ca                                    ; $54d9: $cc $ca $85
	ld   hl, $1111                                   ; $54dc: $21 $11 $11
	ld   de, $4623                                   ; $54df: $11 $23 $46
	adc  d                                           ; $54e2: $8a
	cp   e                                           ; $54e3: $bb
	cp   h                                           ; $54e4: $bc
	call $cbcb                                       ; $54e5: $cd $cb $cb
	call z, $ddde                                    ; $54e8: $cc $de $dd
	db   $ed                                         ; $54eb: $ed
	call z, Call_0c1_73ba                            ; $54ec: $cc $ba $73
	ld   de, $1111                                   ; $54ef: $11 $11 $11
	ld   de, $5723                                   ; $54f2: $11 $23 $57
	adc  e                                           ; $54f5: $8b
	cp   h                                           ; $54f6: $bc
	call $cbcd                                       ; $54f7: $cd $cd $cb
	set  1, h                                        ; $54fa: $cb $cc
	db   $dd                                         ; $54fc: $dd
	db   $ed                                         ; $54fd: $ed
	db   $dd                                         ; $54fe: $dd
	call z, $85ba                                    ; $54ff: $cc $ba $85
	ld   de, $1111                                   ; $5502: $11 $11 $11
	ld   de, $4623                                   ; $5505: $11 $23 $46
	sbc  d                                           ; $5508: $9a
	call z, $dddd                                    ; $5509: $cc $dd $dd
	call z, $aaba                                    ; $550c: $cc $ba $aa
	cp   e                                           ; $550f: $bb
	call c, $dedd                                    ; $5510: $dc $dd $de
	db   $dd                                         ; $5513: $dd
	cp   c                                           ; $5514: $b9
	ld   h, d                                        ; $5515: $62
	ld   de, $1111                                   ; $5516: $11 $11 $11
	ld   de, $6834                                   ; $5519: $11 $34 $68
	xor  e                                           ; $551c: $ab
	call z, $ccdd                                    ; $551d: $cc $dd $cc
	res  5, d                                        ; $5520: $cb $aa
	xor  d                                           ; $5522: $aa
	xor  e                                           ; $5523: $ab
	call z, $edde                                    ; $5524: $cc $de $ed
	db   $dd                                         ; $5527: $dd
	cp   c                                           ; $5528: $b9
	ld   h, e                                        ; $5529: $63
	ld   de, $1111                                   ; $552a: $11 $11 $11
	ld   de, $5824                                   ; $552d: $11 $24 $58
	sbc  d                                           ; $5530: $9a
	call z, $ccdc                                    ; $5531: $cc $dc $cc
	res  5, c                                        ; $5534: $cb $a9
	sbc  c                                           ; $5536: $99
	xor  e                                           ; $5537: $ab
	call z, $eedd                                    ; $5538: $cc $dd $ee
	cp   $dc                                         ; $553b: $fe $dc
	sub  [hl]                                        ; $553d: $96
	ld   sp, $1111                                   ; $553e: $31 $11 $11
	ld   de, $4512                                   ; $5541: $11 $12 $45
	adc  d                                           ; $5544: $8a
	cp   l                                           ; $5545: $bd
	db   $dd                                         ; $5546: $dd
	db   $dd                                         ; $5547: $dd
	call z, $a9bb                                    ; $5548: $cc $bb $a9
	sbc  c                                           ; $554b: $99
	sbc  d                                           ; $554c: $9a
	call $efee                                       ; $554d: $cd $ee $ef
	rst  $38                                         ; $5550: $ff
	db   $ec                                         ; $5551: $ec
	and  [hl]                                        ; $5552: $a6
	ld   hl, $1111                                   ; $5553: $21 $11 $11
	ld   de, $4512                                   ; $5556: $11 $12 $45
	adc  d                                           ; $5559: $8a
	xor  h                                           ; $555a: $ac
	db   $dd                                         ; $555b: $dd
	call z, $babc                                    ; $555c: $cc $bc $ba
	sbc  c                                           ; $555f: $99
	adc  c                                           ; $5560: $89
	sbc  c                                           ; $5561: $99
	cp   l                                           ; $5562: $bd
	rst  $28                                         ; $5563: $ef
	rst  $38                                         ; $5564: $ff
	rst  $38                                         ; $5565: $ff
	db   $ed                                         ; $5566: $ed
	cp   b                                           ; $5567: $b8
	ld   d, d                                        ; $5568: $52
	ld   de, $1111                                   ; $5569: $11 $11 $11
	ld   de, $5724                                   ; $556c: $11 $24 $57
	sbc  d                                           ; $556f: $9a
	call $cccc                                       ; $5570: $cd $cc $cc
	res  7, e                                        ; $5573: $cb $bb
	sbc  c                                           ; $5575: $99
	adc  c                                           ; $5576: $89
	sbc  d                                           ; $5577: $9a
	cp   h                                           ; $5578: $bc
	rst  $28                                         ; $5579: $ef
	rst  $38                                         ; $557a: $ff
	cp   $dc                                         ; $557b: $fe $dc
	and  a                                           ; $557d: $a7
	ld   b, c                                        ; $557e: $41
	ld   de, $1111                                   ; $557f: $11 $11 $11
	ld   de, $5824                                   ; $5582: $11 $24 $58
	sbc  h                                           ; $5585: $9c
	call $dddd                                       ; $5586: $cd $dd $dd
	call c, $99bb                                    ; $5589: $dc $bb $99
	sbc  b                                           ; $558c: $98
	adc  c                                           ; $558d: $89
	sbc  d                                           ; $558e: $9a
	call $ffef                                       ; $558f: $cd $ef $ff
	db   $ec                                         ; $5592: $ec
	cp   c                                           ; $5593: $b9
	ld   [hl], e                                     ; $5594: $73
	ld   de, $1111                                   ; $5595: $11 $11 $11
	ld   de, $5613                                   ; $5598: $11 $13 $56
	sbc  e                                           ; $559b: $9b
	adc  $ff                                         ; $559c: $ce $ff
	cp   $dd                                         ; $559e: $fe $dd
	res  5, c                                        ; $55a0: $cb $a9
	add  a                                           ; $55a2: $87
	halt                                             ; $55a3: $76
	ld   a, b                                        ; $55a4: $78
	xor  e                                           ; $55a5: $ab
	db   $dd                                         ; $55a6: $dd
	rst  $38                                         ; $55a7: $ff
	rst  $38                                         ; $55a8: $ff
	call c, $31c9                                    ; $55a9: $dc $c9 $31
	ld   de, $1111                                   ; $55ac: $11 $11 $11
	inc  de                                          ; $55af: $13
	ld   h, [hl]                                     ; $55b0: $66
	ld   l, e                                        ; $55b1: $6b
	xor  $ff                                         ; $55b2: $ee $ff
	sbc  $eb                                         ; $55b4: $de $eb
	xor  d                                           ; $55b6: $aa
	add  a                                           ; $55b7: $87
	ld   [hl], h                                     ; $55b8: $74
	ld   b, [hl]                                     ; $55b9: $46
	ld   h, [hl]                                     ; $55ba: $66
	sbc  d                                           ; $55bb: $9a
	cp   a                                           ; $55bc: $bf
	rst  $38                                         ; $55bd: $ff
	rst  $38                                         ; $55be: $ff
	xor  $c9                                         ; $55bf: $ee $c9
	ld   [hl], l                                     ; $55c1: $75
	ld   hl, $1111                                   ; $55c2: $21 $11 $11
	ld   de, $7d24                                   ; $55c5: $11 $24 $7d

Call_0c1_55c8:
	set  7, a                                        ; $55c8: $cb $ff
	rst  $28                                         ; $55ca: $ef
	ld   [$66ca], a                                  ; $55cb: $ea $ca $66
	ld   [hl], e                                     ; $55ce: $73
	ld   b, l                                        ; $55cf: $45
	inc  h                                           ; $55d0: $24
	ld   [hl], a                                     ; $55d1: $77
	adc  h                                           ; $55d2: $8c
	db   $dd                                         ; $55d3: $dd
	rst  $38                                         ; $55d4: $ff
	rst  $38                                         ; $55d5: $ff
	rst  $38                                         ; $55d6: $ff
	db   $ec                                         ; $55d7: $ec
	sub  a                                           ; $55d8: $97
	ld   d, c                                        ; $55d9: $51
	ld   de, $1111                                   ; $55da: $11 $11 $11
	ld   de, $ef69                                   ; $55dd: $11 $69 $ef
	cp   $ff                                         ; $55e0: $fe $ff
	cp   $b6                                         ; $55e2: $fe $b6
	add  [hl]                                        ; $55e4: $86
	ld   [hl-], a                                    ; $55e5: $32
	ld   b, e                                        ; $55e6: $43
	dec  [hl]                                        ; $55e7: $35
	ld   b, a                                        ; $55e8: $47
	xor  d                                           ; $55e9: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55ea: $cf
	rst  $38                                         ; $55eb: $ff
	rst  $38                                         ; $55ec: $ff
	rst  $38                                         ; $55ed: $ff
	db   $db                                         ; $55ee: $db
	ret                                              ; $55ef: $c9


	add  a                                           ; $55f0: $87
	ld   b, c                                        ; $55f1: $41
	ld   de, $1411                                   ; $55f2: $11 $11 $14
	inc  de                                          ; $55f5: $13
	cp   l                                           ; $55f6: $bd
	rst  $38                                         ; $55f7: $ff
	db   $ec                                         ; $55f8: $ec
	rst  $38                                         ; $55f9: $ff
	cp   d                                           ; $55fa: $ba
	ld   b, e                                        ; $55fb: $43
	ld   h, e                                        ; $55fc: $63
	inc  hl                                          ; $55fd: $23
	ld   d, h                                        ; $55fe: $54
	add  a                                           ; $55ff: $87
	ld   a, e                                        ; $5600: $7b
	call z, $dfee                                    ; $5601: $cc $ee $df
	cp   $fe                                         ; $5604: $fe $fe
	cp   h                                           ; $5606: $bc
	cp   d                                           ; $5607: $ba
	cp   b                                           ; $5608: $b8
	ld   b, c                                        ; $5609: $41
	ld   de, $1911                                   ; $560a: $11 $11 $19
	inc  d                                           ; $560d: $14
	call $d8ff                                       ; $560e: $cd $ff $d8
	db   $fd                                         ; $5611: $fd
	adc  c                                           ; $5612: $89
	ld   [hl-], a                                    ; $5613: $32
	ld   h, l                                        ; $5614: $65
	dec  [hl]                                        ; $5615: $35
	ld   h, l                                        ; $5616: $65
	cp   b                                           ; $5617: $b8
	ld   a, h                                        ; $5618: $7c
	call $beee                                       ; $5619: $cd $ee $be
	db   $db                                         ; $561c: $db
	db   $fd                                         ; $561d: $fd
	cp   l                                           ; $561e: $bd
	call c, $53cb                                    ; $561f: $dc $cb $53
	ld   de, $1c11                                   ; $5622: $11 $11 $1c
	and  c                                           ; $5625: $a1
	cp   [hl]                                        ; $5626: $be
	rst  JumpTable                                         ; $5627: $df
	push af                                          ; $5628: $f5
	sbc  a                                           ; $5629: $9f
	ld   a, b                                        ; $562a: $78
	ld   [hl], c                                     ; $562b: $71
	ld   d, a                                        ; $562c: $57
	ld   d, l                                        ; $562d: $55
	ld   [hl], h                                     ; $562e: $74
	xor  l                                           ; $562f: $ad
	ld   a, h                                        ; $5630: $7c
	db   $db                                         ; $5631: $db
	xor  $88                                         ; $5632: $ee $88
	db   $ec                                         ; $5634: $ec
	xor  l                                           ; $5635: $ad
	db   $dd                                         ; $5636: $dd
	rst  $38                                         ; $5637: $ff
	xor  $b8                                         ; $5638: $ee $b8
	ld   h, c                                        ; $563a: $61
	ld   de, $1f11                                   ; $563b: $11 $11 $1f
	rst  $30                                         ; $563e: $f7
	db   $ed                                         ; $563f: $ed
	rst  $38                                         ; $5640: $ff
	di                                               ; $5641: $f3
	ld   c, e                                        ; $5642: $4b
	ld   a, e                                        ; $5643: $7b
	ld   h, c                                        ; $5644: $61
	ld   d, a                                        ; $5645: $57
	ld   h, [hl]                                     ; $5646: $66
	ld   h, e                                        ; $5647: $63
	cp   l                                           ; $5648: $bd
	xor  l                                           ; $5649: $ad
	call z, Call_0c1_66ce                            ; $564a: $cc $ce $66
	cp   e                                           ; $564d: $bb
	db   $dd                                         ; $564e: $dd
	cp   [hl]                                        ; $564f: $be
	rst  $38                                         ; $5650: $ff
	ei                                               ; $5651: $fb
	ld   [hl], a                                     ; $5652: $77
	ld   d, c                                        ; $5653: $51
	ld   de, $1f11                                   ; $5654: $11 $11 $1f
	ld   a, [$effc]                                  ; $5657: $fa $fc $ef
	pop  af                                          ; $565a: $f1
	dec  bc                                          ; $565b: $0b
	ld   a, l                                        ; $565c: $7d
	add  c                                           ; $565d: $81
	ld   c, b                                        ; $565e: $48
	ld   h, [hl]                                     ; $565f: $66
	ld   [hl], c                                     ; $5660: $71
	call $dbdf                                       ; $5661: $cd $df $db
	cp   [hl]                                        ; $5664: $be
	ld   d, h                                        ; $5665: $54
	ld   l, c                                        ; $5666: $69
	rst  $38                                         ; $5667: $ff
	rst  $28                                         ; $5668: $ef
	cp   $fa                                         ; $5669: $fe $fa
	ld   h, a                                        ; $566b: $67
	ld   h, d                                        ; $566c: $62
	ld   de, $1c11                                   ; $566d: $11 $11 $1c
	rst  $38                                         ; $5670: $ff
	call $f76f                                       ; $5671: $cd $6f $f7
	ld   d, $9a                                      ; $5674: $16 $9a
	push af                                          ; $5676: $f5
	dec  d                                           ; $5677: $15
	add  l                                           ; $5678: $85
	or   h                                           ; $5679: $b4
	ld   e, [hl]                                     ; $567a: $5e
	rst  $38                                         ; $567b: $ff
	bit  5, d                                        ; $567c: $cb $6a
	add  d                                           ; $567e: $82
	ld   b, [hl]                                     ; $567f: $46
	sbc  a                                           ; $5680: $9f
	cp   $ff                                         ; $5681: $fe $ff
	rst  $38                                         ; $5683: $ff
	add  h                                           ; $5684: $84
	ld   a, b                                        ; $5685: $78
	ld   sp, $1111                                   ; $5686: $31 $11 $11
	rst  $28                                         ; $5689: $ef
	cp   $a2                                         ; $568a: $fe $a2
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $568c: $cf
	ld   h, c                                        ; $568d: $61
	ld   e, c                                        ; $568e: $59
	cp   a                                           ; $568f: $bf
	add  c                                           ; $5690: $81
	ld   d, a                                        ; $5691: $57
	ld   c, l                                        ; $5692: $4d
	ld   h, h                                        ; $5693: $64
	rst  $28                                         ; $5694: $ef
	db   $fc                                         ; $5695: $fc
	or   e                                           ; $5696: $b3
	ld   l, b                                        ; $5697: $68
	inc  [hl]                                        ; $5698: $34
	sub  a                                           ; $5699: $97
	rst  JumpTable                                         ; $569a: $df
	sbc  $ff                                         ; $569b: $de $ff
	cp   $75                                         ; $569d: $fe $75
	ld   a, b                                        ; $569f: $78
	ld   h, c                                        ; $56a0: $61
	ld   de, rAUD1LEN                                   ; $56a1: $11 $11 $ff
	rst  $38                                         ; $56a4: $ff
	add  c                                           ; $56a5: $81
	xor  a                                           ; $56a6: $af
	ld   b, c                                        ; $56a7: $41
	ld   l, d                                        ; $56a8: $6a
	rst  $28                                         ; $56a9: $ef
	and  c                                           ; $56aa: $a1
	ld   b, h                                        ; $56ab: $44
	ld   c, a                                        ; $56ac: $4f
	ld   [hl], l                                     ; $56ad: $75
	rst  $28                                         ; $56ae: $ef
	db   $fd                                         ; $56af: $fd
	sub  c                                           ; $56b0: $91
	ld   h, $55                                      ; $56b1: $26 $55
	sbc  c                                           ; $56b3: $99
	rst  JumpTable                                         ; $56b4: $df
	set  5, h                                        ; $56b5: $cb $ec
	rst  $38                                         ; $56b7: $ff
	res  1, b                                        ; $56b8: $cb $88
	ld   d, c                                        ; $56ba: $51
	ld   de, $1f11                                   ; $56bb: $11 $11 $1f
	rst  $38                                         ; $56be: $ff
	ldh  a, [c]                                      ; $56bf: $f2
	dec  d                                           ; $56c0: $15
	sub  $17                                         ; $56c1: $d6 $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56c3: $cf
	db   $fc                                         ; $56c4: $fc
	ld   de, $fb12                                   ; $56c5: $11 $12 $fb
	ld   l, [hl]                                     ; $56c8: $6e
	rst  $38                                         ; $56c9: $ff
	or   [hl]                                        ; $56ca: $b6
	ld   de, $6b69                                   ; $56cb: $11 $69 $6b
	sbc  h                                           ; $56ce: $9c
	db   $fd                                         ; $56cf: $fd
	sbc  c                                           ; $56d0: $99
	adc  l                                           ; $56d1: $8d
	rst  $38                                         ; $56d2: $ff
	ld   a, [$1162]                                  ; $56d3: $fa $62 $11
	ld   de, $1f11                                   ; $56d6: $11 $11 $1f
	rst  $38                                         ; $56d9: $ff
	pop  af                                          ; $56da: $f1
	inc  d                                           ; $56db: $14
	add  sp, $1a                                     ; $56dc: $e8 $1a
	rst  $38                                         ; $56de: $ff
	or   $11                                         ; $56df: $f6 $11
	inc  d                                           ; $56e1: $14
	cp   $9f                                         ; $56e2: $fe $9f
	db   $fc                                         ; $56e4: $fc
	sub  c                                           ; $56e5: $91
	ld   de, $ad8c                                   ; $56e6: $11 $8c $ad
	cp   c                                           ; $56e9: $b9
	call $bfb8                                       ; $56ea: $cd $b8 $bf
	rst  $38                                         ; $56ed: $ff
	push af                                          ; $56ee: $f5
	ld   [hl-], a                                    ; $56ef: $32
	ld   de, $1111                                   ; $56f0: $11 $11 $11
	ccf                                              ; $56f3: $3f
	rst  $38                                         ; $56f4: $ff
	add  c                                           ; $56f5: $81
	ld   d, $e9                                      ; $56f6: $16 $e9
	ld   l, $ff                                      ; $56f8: $2e $ff
	pop  af                                          ; $56fa: $f1
	ld   de, $ff1b                                   ; $56fb: $11 $1b $ff
	cp   a                                           ; $56fe: $bf
	ei                                               ; $56ff: $fb
	ld   sp, $df11                                   ; $5700: $31 $11 $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5703: $cf
	sub  [hl]                                        ; $5704: $96
	xor  c                                           ; $5705: $a9
	sbc  d                                           ; $5706: $9a
	cp   a                                           ; $5707: $bf
	rst  $38                                         ; $5708: $ff
	push af                                          ; $5709: $f5
	ld   de, $1114                                   ; $570a: $11 $14 $11
	ld   de, $ff1f                                   ; $570d: $11 $1f $ff
	pop  af                                          ; $5710: $f1
	ld   [de], a                                     ; $5711: $12
	rst  $38                                         ; $5712: $ff
	ld   c, c                                        ; $5713: $49
	rst  $38                                         ; $5714: $ff
	ld   hl, sp+$11                                  ; $5715: $f8 $11
	ld   d, $ff                                      ; $5717: $16 $ff
	cp   l                                           ; $5719: $bd
	jp   c, $1141                                    ; $571a: $da $41 $11

	cp   a                                           ; $571d: $bf
	db   $ed                                         ; $571e: $ed
	and  e                                           ; $571f: $a3
	ld   a, e                                        ; $5720: $7b
	add  a                                           ; $5721: $87
	cp   a                                           ; $5722: $bf
	rst  $38                                         ; $5723: $ff
	push af                                          ; $5724: $f5
	ld   de, $6115                                   ; $5725: $11 $15 $61
	ld   de, rAUD1LEN                                   ; $5728: $11 $11 $ff
	ld   sp, hl                                      ; $572b: $f9
	ld   de, $e45f                                   ; $572c: $11 $5f $e4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $572f: $cf
	rst  $38                                         ; $5730: $ff
	ld   sp, $9f11                                   ; $5731: $31 $11 $9f
	ei                                               ; $5734: $fb
	db   $db                                         ; $5735: $db
	ld   [hl], d                                     ; $5736: $72
	ld   de, $ff1d                                   ; $5737: $11 $1d $ff
	ret  c                                           ; $573a: $d8

	dec  h                                           ; $573b: $25
	adc  c                                           ; $573c: $89
	call $ffff                                       ; $573d: $cd $ff $ff
	ld   b, c                                        ; $5740: $41
	inc  de                                          ; $5741: $13
	sbc  c                                           ; $5742: $99
	ld   de, $1f11                                   ; $5743: $11 $11 $1f
	rst  $38                                         ; $5746: $ff
	pop  af                                          ; $5747: $f1
	inc  de                                          ; $5748: $13
	rst  $38                                         ; $5749: $ff
	ld   l, d                                        ; $574a: $6a
	rst  $38                                         ; $574b: $ff
	rst  $30                                         ; $574c: $f7
	ld   de, $ff16                                   ; $574d: $11 $16 $ff
	db   $dd                                         ; $5750: $dd
	or   a                                           ; $5751: $b7
	ld   b, c                                        ; $5752: $41
	ld   de, $fecf                                   ; $5753: $11 $cf $fe
	sub  c                                           ; $5756: $91
	ld   b, a                                        ; $5757: $47
	ld   a, l                                        ; $5758: $7d
	xor  $ff                                         ; $5759: $ee $ff
	or   $11                                         ; $575b: $f6 $11
	add  hl, hl                                      ; $575d: $29
	or   h                                           ; $575e: $b4
	ld   de, $bf11                                   ; $575f: $11 $11 $bf
	rst  $38                                         ; $5762: $ff
	ld   sp, $fc17                                   ; $5763: $31 $17 $fc
	ld   l, e                                        ; $5766: $6b
	rst  $28                                         ; $5767: $ef
	pop  af                                          ; $5768: $f1
	ld   de, $ff1f                                   ; $5769: $11 $1f $ff
	db   $dd                                         ; $576c: $dd
	add  [hl]                                        ; $576d: $86
	ld   sp, rAUD1HIGH                                   ; $576e: $31 $14 $ff
	db   $fc                                         ; $5771: $fc
	ld   hl, $7d66                                   ; $5772: $21 $66 $7d
	rst  $38                                         ; $5775: $ff
	rst  $38                                         ; $5776: $ff
	and  e                                           ; $5777: $a3
	inc  sp                                          ; $5778: $33
	ld   l, e                                        ; $5779: $6b
	sub  l                                           ; $577a: $95
	ld   hl, $1f11                                   ; $577b: $21 $11 $1f
	rst  $38                                         ; $577e: $ff
	pop  af                                          ; $577f: $f1
	ld   de, $8aaf                                   ; $5780: $11 $af $8a
	rst  $38                                         ; $5783: $ff
	or   $11                                         ; $5784: $f6 $11
	jr   @+$01                                       ; $5786: $18 $ff

	db   $fd                                         ; $5788: $fd
	add  [hl]                                        ; $5789: $86
	ld   b, c                                        ; $578a: $41
	ld   de, $ffdf                                   ; $578b: $11 $df $ff
	ld   h, c                                        ; $578e: $61
	ld   d, [hl]                                     ; $578f: $56
	ld   a, e                                        ; $5790: $7b
	rst  JumpTable                                         ; $5791: $df
	rst  $38                                         ; $5792: $ff
	ld   a, [$2853]                                  ; $5793: $fa $53 $28
	bit  6, c                                        ; $5796: $cb $71
	ld   de, rAUD1LEN                                   ; $5798: $11 $11 $ff
	db   $fd                                         ; $579b: $fd
	ld   de, $f81c                                   ; $579c: $11 $1c $f8
	rst  JumpTable                                         ; $579f: $df
	rst  $38                                         ; $57a0: $ff
	ld   hl, $bf11                                   ; $57a1: $21 $11 $bf
	rst  $38                                         ; $57a4: $ff
	sub  $54                                         ; $57a5: $d6 $54
	ld   de, $ff2f                                   ; $57a7: $11 $2f $ff
	db   $f4                                         ; $57aa: $f4
	dec  d                                           ; $57ab: $15
	ld   b, [hl]                                     ; $57ac: $46
	xor  [hl]                                        ; $57ad: $ae
	rst  $38                                         ; $57ae: $ff
	cp   $55                                         ; $57af: $fe $55
	ld   h, [hl]                                     ; $57b1: $66
	xor  d                                           ; $57b2: $aa
	sub  l                                           ; $57b3: $95
	ld   de, $4f11                                   ; $57b4: $11 $11 $4f
	rst  $38                                         ; $57b7: $ff
	ld   h, c                                        ; $57b8: $61
	ld   de, $9dfe                                   ; $57b9: $11 $fe $9d
	rst  $38                                         ; $57bc: $ff
	pop  af                                          ; $57bd: $f1
	ld   de, $ff1f                                   ; $57be: $11 $1f $ff
	ei                                               ; $57c1: $fb
	ld   d, l                                        ; $57c2: $55
	ld   b, c                                        ; $57c3: $41
	inc  d                                           ; $57c4: $14
	rst  $38                                         ; $57c5: $ff
	cp   $11                                         ; $57c6: $fe $11
	ld   b, h                                        ; $57c8: $44
	adc  d                                           ; $57c9: $8a

Call_0c1_57ca:
	rst  JumpTable                                         ; $57ca: $df
	rst  $38                                         ; $57cb: $ff
	push de                                          ; $57cc: $d5
	inc  h                                           ; $57cd: $24
	ld   a, e                                        ; $57ce: $7b
	xor  c                                           ; $57cf: $a9
	ld   d, c                                        ; $57d0: $51
	ld   de, rAUD1HIGH                                   ; $57d1: $11 $14 $ff
	rst  $30                                         ; $57d4: $f7
	ld   de, $ea1d                                   ; $57d5: $11 $1d $ea
	adc  $ff                                         ; $57d8: $ce $ff
	ld   de, rAUD1LEN                                   ; $57da: $11 $11 $ff
	rst  $38                                         ; $57dd: $ff
	and  h                                           ; $57de: $a4
	ld   d, h                                        ; $57df: $54
	ld   de, $ff5f                                   ; $57e0: $11 $5f $ff
	pop  de                                          ; $57e3: $d1
	inc  d                                           ; $57e4: $14
	ld   c, b                                        ; $57e5: $48
	sbc  c                                           ; $57e6: $99
	rst  $38                                         ; $57e7: $ff
	db   $fc                                         ; $57e8: $fc
	ld   b, c                                        ; $57e9: $41
	dec  sp                                          ; $57ea: $3b
	db   $fc                                         ; $57eb: $fc
	sub  h                                           ; $57ec: $94
	ld   de, $1f11                                   ; $57ed: $11 $11 $1f
	rst  $38                                         ; $57f0: $ff
	pop  af                                          ; $57f1: $f1
	ld   de, $ed8f                                   ; $57f2: $11 $8f $ed
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $57f5: $cf
	rst  $30                                         ; $57f6: $f7
	ld   de, $ff17                                   ; $57f7: $11 $17 $ff
	db   $fd                                         ; $57fa: $fd
	ld   d, h                                        ; $57fb: $54
	ld   d, c                                        ; $57fc: $51
	ld   de, $ffcf                                   ; $57fd: $11 $cf $ff
	ld   d, c                                        ; $5800: $51
	ld   [hl+], a                                    ; $5801: $22
	ld   a, d                                        ; $5802: $7a
	sbc  [hl]                                        ; $5803: $9e
	rst  $38                                         ; $5804: $ff
	add  sp, $64                                     ; $5805: $e8 $64
	adc  h                                           ; $5807: $8c
	cp   e                                           ; $5808: $bb
	sub  e                                           ; $5809: $93
	ld   de, $1f11                                   ; $580a: $11 $11 $1f
	rst  $38                                         ; $580d: $ff
	pop  af                                          ; $580e: $f1
	ld   de, $fd7f                                   ; $580f: $11 $7f $fd
	rst  JumpTable                                         ; $5812: $df
	ld   sp, hl                                      ; $5813: $f9
	ld   de, $ff15                                   ; $5814: $11 $15 $ff
	db   $fc                                         ; $5817: $fc
	ld   b, e                                        ; $5818: $43
	ld   d, c                                        ; $5819: $51
	ld   de, $ffcf                                   ; $581a: $11 $cf $ff
	ld   d, c                                        ; $581d: $51
	ld   [hl+], a                                    ; $581e: $22
	ld   a, d                                        ; $581f: $7a
	sbc  h                                           ; $5820: $9c
	rst  $38                                         ; $5821: $ff
	ei                                               ; $5822: $fb
	ld   d, c                                        ; $5823: $51
	ld   c, h                                        ; $5824: $4c
	db   $ed                                         ; $5825: $ed
	sub  e                                           ; $5826: $93
	ld   de, $1f11                                   ; $5827: $11 $11 $1f
	rst  $38                                         ; $582a: $ff
	pop  af                                          ; $582b: $f1
	ld   de, $fd2f                                   ; $582c: $11 $2f $fd
	rst  $28                                         ; $582f: $ef
	cp   $11                                         ; $5830: $fe $11
	ld   de, $feff                                   ; $5832: $11 $ff $fe
	ld   h, e                                        ; $5835: $63
	ld   b, d                                        ; $5836: $42
	ld   de, $ff9f                                   ; $5837: $11 $9f $ff
	sub  c                                           ; $583a: $91
	ld   de, $ac5a                                   ; $583b: $11 $5a $ac
	rst  $38                                         ; $583e: $ff
	db   $fc                                         ; $583f: $fc
	ld   h, e                                        ; $5840: $63
	dec  sp                                          ; $5841: $3b
	xor  $b5                                         ; $5842: $ee $b5
	ld   de, $1111                                   ; $5844: $11 $11 $11
	rst  $38                                         ; $5847: $ff
	rst  $38                                         ; $5848: $ff
	ld   de, $ff18                                   ; $5849: $11 $18 $ff
	rst  $38                                         ; $584c: $ff
	rst  $38                                         ; $584d: $ff
	ld   b, c                                        ; $584e: $41
	ld   de, $ff9f                                   ; $584f: $11 $9f $ff
	and  d                                           ; $5852: $a2
	inc  hl                                          ; $5853: $23
	ld   de, $ff4d                                   ; $5854: $11 $4d $ff
	di                                               ; $5857: $f3
	ld   de, $bb29                                   ; $5858: $11 $29 $bb
	rst  JumpTable                                         ; $585b: $df
	rst  $38                                         ; $585c: $ff
	and  l                                           ; $585d: $a5
	ld   h, $ce                                      ; $585e: $26 $ce
	ld   sp, hl                                      ; $5860: $f9
	ld   hl, $1111                                   ; $5861: $21 $11 $11
	sbc  a                                           ; $5864: $9f
	rst  $38                                         ; $5865: $ff
	ld   sp, rAUD1LEN                                   ; $5866: $31 $11 $ff
	rst  $38                                         ; $5869: $ff
	rst  JumpTable                                         ; $586a: $df
	pop  de                                          ; $586b: $d1
	ld   de, $ff1f                                   ; $586c: $11 $1f $ff
	push af                                          ; $586f: $f5
	inc  de                                          ; $5870: $13
	ld   sp, $ff29                                   ; $5871: $31 $29 $ff
	ld   sp, hl                                      ; $5874: $f9
	ld   de, $bb15                                   ; $5875: $11 $15 $bb
	cp   l                                           ; $5878: $bd
	call c, Call_0c1_6886                            ; $5879: $dc $86 $68
	rst  $38                                         ; $587c: $ff
	db   $fc                                         ; $587d: $fc
	ld   [hl], l                                     ; $587e: $75
	ld   sp, $1111                                   ; $587f: $31 $11 $11
	ld   e, $ff                                      ; $5882: $1e $ff
	pop  af                                          ; $5884: $f1
	ld   de, $ff5f                                   ; $5885: $11 $5f $ff
	ret                                              ; $5888: $c9


	ret                                              ; $5889: $c9


	ld   de, rAUD1LOW                                   ; $588a: $11 $13 $ff
	cp   $41                                         ; $588d: $fe $41
	inc  [hl]                                        ; $588f: $34
	ld   b, [hl]                                     ; $5890: $46
	cp   a                                           ; $5891: $bf
	rst  $38                                         ; $5892: $ff
	ld   [hl], c                                     ; $5893: $71
	ld   de, $bc6b                                   ; $5894: $11 $6b $bc
	db   $db                                         ; $5897: $db
	sub  [hl]                                        ; $5898: $96
	ld   [hl-], a                                    ; $5899: $32
	ld   c, e                                        ; $589a: $4b
	rst  $38                                         ; $589b: $ff
	db   $fd                                         ; $589c: $fd
	add  l                                           ; $589d: $85
	ld   [hl], $9a                                   ; $589e: $36 $9a
	sub  l                                           ; $58a0: $95
	ld   de, $8f11                                   ; $58a1: $11 $11 $8f
	rst  $38                                         ; $58a4: $ff
	ld   b, c                                        ; $58a5: $41
	inc  de                                          ; $58a6: $13
	rst  $38                                         ; $58a7: $ff
	call z, $a1ae                                    ; $58a8: $cc $ae $a1
	ld   de, $ff2f                                   ; $58ab: $11 $2f $ff
	and  $23                                         ; $58ae: $e6 $23
	ld   b, e                                        ; $58b0: $43
	ld   e, c                                        ; $58b1: $59
	rst  $28                                         ; $58b2: $ef

jr_0c1_58b3:
	ld   hl, sp+$11                                  ; $58b3: $f8 $11
	daa                                              ; $58b5: $27
	call z, $bacc                                    ; $58b6: $cc $cc $ba
	ld   h, e                                        ; $58b9: $63
	inc  h                                           ; $58ba: $24
	adc  e                                           ; $58bb: $8b
	res  0, a                                        ; $58bc: $cb $87
	adc  e                                           ; $58be: $8b
	cp   h                                           ; $58bf: $bc
	call z, $a7ca                                    ; $58c0: $cc $ca $a7
	ld   b, e                                        ; $58c3: $43
	ld   hl, $1111                                   ; $58c4: $21 $11 $11
	rst  $38                                         ; $58c7: $ff
	ei                                               ; $58c8: $fb
	ld   de, $ff1d                                   ; $58c9: $11 $1d $ff
	ret                                              ; $58cc: $c9


	cp   l                                           ; $58cd: $bd
	ld   hl, $ef11                                   ; $58ce: $21 $11 $ef
	rst  $38                                         ; $58d1: $ff
	ld   [hl], c                                     ; $58d2: $71
	inc  h                                           ; $58d3: $24
	ld   b, h                                        ; $58d4: $44
	adc  h                                           ; $58d5: $8c
	rst  $38                                         ; $58d6: $ff
	or   e                                           ; $58d7: $b3
	ld   de, $cc5b                                   ; $58d8: $11 $5b $cc
	cp   d                                           ; $58db: $ba
	xor  b                                           ; $58dc: $a8
	ld   b, d                                        ; $58dd: $42
	ld   c, b                                        ; $58de: $48
	cp   h                                           ; $58df: $bc
	cp   b                                           ; $58e0: $b8
	ld   [hl], a                                     ; $58e1: $77
	adc  b                                           ; $58e2: $88
	adc  c                                           ; $58e3: $89
	xor  [hl]                                        ; $58e4: $ae
	cp   $84                                         ; $58e5: $fe $84
	jr   c, jr_0c1_58b3                              ; $58e7: $38 $ca

	add  h                                           ; $58e9: $84
	ld   de, $1f11                                   ; $58ea: $11 $11 $1f
	rst  $38                                         ; $58ed: $ff
	pop  af                                          ; $58ee: $f1
	ld   de, $fe6f                                   ; $58ef: $11 $6f $fe
	cp   d                                           ; $58f2: $ba
	rst  $20                                         ; $58f3: $e7
	ld   de, $ff17                                   ; $58f4: $11 $17 $ff
	ld   a, [$4521]                                  ; $58f7: $fa $21 $45
	ld   d, a                                        ; $58fa: $57
	cp   a                                           ; $58fb: $bf
	cp   $51                                         ; $58fc: $fe $51
	inc  de                                          ; $58fe: $13
	sbc  h                                           ; $58ff: $9c
	call c, $85a9                                    ; $5900: $dc $a9 $85
	inc  sp                                          ; $5903: $33
	ld   l, e                                        ; $5904: $6b
	sbc  $b8                                         ; $5905: $de $b8
	ld   h, l                                        ; $5907: $65
	ld   a, e                                        ; $5908: $7b
	xor  $db                                         ; $5909: $ee $db
	sub  a                                           ; $590b: $97
	ld   d, h                                        ; $590c: $54
	ld   d, [hl]                                     ; $590d: $56
	ld   [hl], l                                     ; $590e: $75
	ld   de, rAUD1LEN                                   ; $590f: $11 $11 $ff
	cp   $11                                         ; $5912: $fe $11
	add  hl, de                                      ; $5914: $19
	rst  $38                                         ; $5915: $ff
	set  1, l                                        ; $5916: $cb $cd
	ld   d, c                                        ; $5918: $51
	ld   de, $ffaf                                   ; $5919: $11 $af $ff
	sub  d                                           ; $591c: $92
	inc  h                                           ; $591d: $24
	ld   b, h                                        ; $591e: $44
	ld   l, e                                        ; $591f: $6b
	rst  $38                                         ; $5920: $ff
	call nz, Call_0c1_5b11                           ; $5921: $c4 $11 $5b
	call c, $bacb                                    ; $5924: $dc $cb $ba
	ld   [hl], h                                     ; $5927: $74
	ld   c, b                                        ; $5928: $48
	rst  JumpTable                                         ; $5929: $df
	ld   [$8888], a                                  ; $592a: $ea $88 $88
	ld   [hl], a                                     ; $592d: $77
	adc  d                                           ; $592e: $8a
	sub  l                                           ; $592f: $95
	ld   de, $1f11                                   ; $5930: $11 $11 $1f
	rst  $38                                         ; $5933: $ff
	pop  af                                          ; $5934: $f1
	ld   de, $ff6f                                   ; $5935: $11 $6f $ff
	call c, $11b4                                    ; $5938: $dc $b4 $11
	add  hl, de                                      ; $593b: $19
	rst  $38                                         ; $593c: $ff
	ld   a, [$3431]                                  ; $593d: $fa $31 $34
	ld   e, b                                        ; $5940: $58
	rst  JumpTable                                         ; $5941: $df
	db   $fd                                         ; $5942: $fd
	ld   [hl], e                                     ; $5943: $73
	ld   l, b                                        ; $5944: $68
	cp   [hl]                                        ; $5945: $be
	db   $dd                                         ; $5946: $dd
	jp   z, Jump_0c1_4495                            ; $5947: $ca $95 $44

	ld   a, c                                        ; $594a: $79
	add  c                                           ; $594b: $81
	ld   de, rAUD1ENV                                   ; $594c: $11 $12 $ff
	ld   sp, hl                                      ; $594f: $f9
	ld   de, $ff1a                                   ; $5950: $11 $1a $ff
	xor  $fc                                         ; $5953: $ee $fc
	ld   de, rAUD1LEN                                   ; $5955: $11 $11 $ff
	rst  $38                                         ; $5958: $ff
	add  d                                           ; $5959: $82
	inc  hl                                          ; $595a: $23
	dec  [hl]                                        ; $595b: $35
	sbc  a                                           ; $595c: $9f
	rst  $38                                         ; $595d: $ff
	or   e                                           ; $595e: $b3
	ld   [de], a                                     ; $595f: $12
	sbc  a                                           ; $5960: $9f
	rst  $38                                         ; $5961: $ff
	ld   [$2284], a                                  ; $5962: $ea $84 $22
	ld   l, c                                        ; $5965: $69
	ld   [hl], c                                     ; $5966: $71
	ld   de, $ff16                                   ; $5967: $11 $16 $ff
	ld   sp, hl                                      ; $596a: $f9
	ld   de, $df17                                   ; $596b: $11 $17 $df
	cp   $c7                                         ; $596e: $fe $c7
	ld   hl, $df15                                   ; $5970: $21 $15 $df
	rst  $38                                         ; $5973: $ff
	reti                                             ; $5974: $d9


	ld   [hl-], a                                    ; $5975: $32
	scf                                              ; $5976: $37
	rst  $28                                         ; $5977: $ef
	db   $fc                                         ; $5978: $fc
	add  l                                           ; $5979: $85
	ld   l, c                                        ; $597a: $69
	cp   h                                           ; $597b: $bc
	db   $dd                                         ; $597c: $dd
	jp   z, $1131                                    ; $597d: $ca $31 $11

	ld   de, $9f12                                   ; $5980: $11 $12 $9f
	rst  $38                                         ; $5983: $ff
	ld   d, c                                        ; $5984: $51
	dec  d                                           ; $5985: $15
	rst  JumpTable                                         ; $5986: $df
	cp   $b4                                         ; $5987: $fe $b4
	ld   de, $ff1b                                   ; $5989: $11 $1b $ff
	ld   a, [$6843]                                  ; $598c: $fa $43 $68
	cp   l                                           ; $598f: $bd
	call z, Call_0c1_77d9                            ; $5990: $cc $d9 $77
	ld   a, d                                        ; $5993: $7a
	db   $dd                                         ; $5994: $dd
	cp   b                                           ; $5995: $b8
	ld   sp, $3123                                   ; $5996: $31 $23 $31
	ld   de, $ab36                                   ; $5999: $11 $36 $ab
	sbc  b                                           ; $599c: $98
	ld   [hl], a                                     ; $599d: $77
	ld   a, b                                        ; $599e: $78
	db   $dd                                         ; $599f: $dd
	sub  a                                           ; $59a0: $97
	ld   d, [hl]                                     ; $59a1: $56
	xor  e                                           ; $59a2: $ab
	res  5, e                                        ; $59a3: $cb $ab
	xor  e                                           ; $59a5: $ab
	sbc  c                                           ; $59a6: $99
	sbc  d                                           ; $59a7: $9a
	call z, $99b9                                    ; $59a8: $cc $b9 $99
	sbc  e                                           ; $59ab: $9b
	xor  d                                           ; $59ac: $aa
	xor  b                                           ; $59ad: $a8
	ld   h, h                                        ; $59ae: $64
	inc  sp                                          ; $59af: $33
	inc  sp                                          ; $59b0: $33
	ld   sp, $8b11                                   ; $59b1: $31 $11 $8b
	sbc  c                                           ; $59b4: $99
	ld   b, h                                        ; $59b5: $44
	sbc  c                                           ; $59b6: $99
	xor  b                                           ; $59b7: $a8
	ld   a, b                                        ; $59b8: $78
	cp   d                                           ; $59b9: $ba
	xor  e                                           ; $59ba: $ab
	sbc  c                                           ; $59bb: $99
	xor  e                                           ; $59bc: $ab
	cp   l                                           ; $59bd: $bd
	call z, $99a9                                    ; $59be: $cc $a9 $99
	cp   e                                           ; $59c1: $bb
	cp   d                                           ; $59c2: $ba
	xor  c                                           ; $59c3: $a9
	sbc  b                                           ; $59c4: $98
	adc  b                                           ; $59c5: $88
	adc  b                                           ; $59c6: $88
	ld   [hl], l                                     ; $59c7: $75
	ld   b, e                                        ; $59c8: $43
	inc  [hl]                                        ; $59c9: $34
	ld   hl, $1411                                   ; $59ca: $21 $11 $14
	ld   l, c                                        ; $59cd: $69
	xor  e                                           ; $59ce: $ab
	xor  b                                           ; $59cf: $a8
	ld   d, h                                        ; $59d0: $54
	sbc  d                                           ; $59d1: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59d2: $cf
	cp   b                                           ; $59d3: $b8
	sub  a                                           ; $59d4: $97
	sbc  l                                           ; $59d5: $9d
	rst  $28                                         ; $59d6: $ef
	db   $fc                                         ; $59d7: $fc
	cp   e                                           ; $59d8: $bb
	adc  d                                           ; $59d9: $8a
	call z, $a8bc                                    ; $59da: $cc $bc $a8
	sub  [hl]                                        ; $59dd: $96
	ld   l, c                                        ; $59de: $69
	ld   [hl], a                                     ; $59df: $77
	sub  l                                           ; $59e0: $95
	ld   b, h                                        ; $59e1: $44
	inc  sp                                          ; $59e2: $33
	ld   d, e                                        ; $59e3: $53
	ld   de, $4312                                   ; $59e4: $11 $12 $43
	ld   e, c                                        ; $59e7: $59
	db   $dd                                         ; $59e8: $dd
	and  l                                           ; $59e9: $a5
	inc  d                                           ; $59ea: $14
	rst  $28                                         ; $59eb: $ef
	db   $fd                                         ; $59ec: $fd
	ld   d, [hl]                                     ; $59ed: $56
	cp   e                                           ; $59ee: $bb
	db   $dd                                         ; $59ef: $dd
	cp   a                                           ; $59f0: $bf
	db   $fc                                         ; $59f1: $fc
	sbc  b                                           ; $59f2: $98
	sbc  e                                           ; $59f3: $9b
	db   $db                                         ; $59f4: $db
	xor  b                                           ; $59f5: $a8
	ld   [hl], a                                     ; $59f6: $77
	ld   h, [hl]                                     ; $59f7: $66
	ld   a, c                                        ; $59f8: $79
	and  a                                           ; $59f9: $a7
	ld   sp, $6624                                   ; $59fa: $31 $24 $66
	ld   b, e                                        ; $59fd: $43
	ld   hl, $3611                                   ; $59fe: $21 $11 $36
	adc  d                                           ; $5a01: $8a
	jp   z, $8879                                    ; $5a02: $ca $79 $88

	call c, $99bb                                    ; $5a05: $dc $bb $99
	call c, $cbbe                                    ; $5a08: $dc $be $cb
	db   $db                                         ; $5a0b: $db
	cp   h                                           ; $5a0c: $bc
	sbc  d                                           ; $5a0d: $9a
	cp   b                                           ; $5a0e: $b8
	adc  b                                           ; $5a0f: $88
	ld   [hl], a                                     ; $5a10: $77
	add  [hl]                                        ; $5a11: $86
	ld   [hl], a                                     ; $5a12: $77
	ld   d, [hl]                                     ; $5a13: $56
	ld   d, h                                        ; $5a14: $54
	ld   d, [hl]                                     ; $5a15: $56
	ld   b, e                                        ; $5a16: $43
	inc  hl                                          ; $5a17: $23
	inc  sp                                          ; $5a18: $33
	inc  hl                                          ; $5a19: $23
	ld   [hl], a                                     ; $5a1a: $77
	adc  d                                           ; $5a1b: $8a
	add  a                                           ; $5a1c: $87
	sbc  d                                           ; $5a1d: $9a
	xor  h                                           ; $5a1e: $ac
	xor  c                                           ; $5a1f: $a9
	xor  c                                           ; $5a20: $a9
	sbc  h                                           ; $5a21: $9c
	call c, $acba                                    ; $5a22: $dc $ba $ac
	cp   d                                           ; $5a25: $ba
	cp   d                                           ; $5a26: $ba
	xor  d                                           ; $5a27: $aa
	add  [hl]                                        ; $5a28: $86
	ld   l, b                                        ; $5a29: $68
	add  a                                           ; $5a2a: $87
	ld   h, l                                        ; $5a2b: $65
	ld   h, a                                        ; $5a2c: $67
	ld   [hl], a                                     ; $5a2d: $77
	ld   h, l                                        ; $5a2e: $65
	ld   d, l                                        ; $5a2f: $55
	ld   h, l                                        ; $5a30: $65
	ld   h, [hl]                                     ; $5a31: $66
	ld   b, l                                        ; $5a32: $45
	dec  [hl]                                        ; $5a33: $35
	sbc  c                                           ; $5a34: $99
	ld   a, b                                        ; $5a35: $78
	sub  a                                           ; $5a36: $97
	sbc  c                                           ; $5a37: $99
	adc  h                                           ; $5a38: $8c
	xor  b                                           ; $5a39: $a8
	xor  c                                           ; $5a3a: $a9
	xor  e                                           ; $5a3b: $ab
	xor  d                                           ; $5a3c: $aa
	cp   d                                           ; $5a3d: $ba
	xor  e                                           ; $5a3e: $ab
	xor  c                                           ; $5a3f: $a9
	cp   b                                           ; $5a40: $b8
	adc  c                                           ; $5a41: $89
	adc  c                                           ; $5a42: $89
	sub  [hl]                                        ; $5a43: $96
	ld   [hl], a                                     ; $5a44: $77
	ld   [hl], a                                     ; $5a45: $77
	halt                                             ; $5a46: $76
	ld   h, a                                        ; $5a47: $67
	sbc  b                                           ; $5a48: $98
	halt                                             ; $5a49: $76
	ld   d, l                                        ; $5a4a: $55
	ld   h, a                                        ; $5a4b: $67
	add  [hl]                                        ; $5a4c: $86
	ld   h, [hl]                                     ; $5a4d: $66
	ld   [hl], a                                     ; $5a4e: $77
	ld   l, c                                        ; $5a4f: $69
	xor  d                                           ; $5a50: $aa
	sub  [hl]                                        ; $5a51: $96
	ld   e, b                                        ; $5a52: $58
	xor  c                                           ; $5a53: $a9
	xor  b                                           ; $5a54: $a8
	adc  d                                           ; $5a55: $8a
	sbc  c                                           ; $5a56: $99
	xor  c                                           ; $5a57: $a9
	cp   h                                           ; $5a58: $bc
	add  a                                           ; $5a59: $87
	ld   l, b                                        ; $5a5a: $68
	cp   e                                           ; $5a5b: $bb
	and  a                                           ; $5a5c: $a7
	ld   [hl], a                                     ; $5a5d: $77
	sbc  c                                           ; $5a5e: $99
	ld   [hl], a                                     ; $5a5f: $77
	ld   a, c                                        ; $5a60: $79
	xor  b                                           ; $5a61: $a8
	ld   h, [hl]                                     ; $5a62: $66
	ld   h, a                                        ; $5a63: $67
	ld   [hl], a                                     ; $5a64: $77
	add  [hl]                                        ; $5a65: $86
	halt                                             ; $5a66: $76
	ld   h, a                                        ; $5a67: $67
	ld   [hl], a                                     ; $5a68: $77
	ld   a, b                                        ; $5a69: $78
	halt                                             ; $5a6a: $76
	ld   a, c                                        ; $5a6b: $79
	xor  c                                           ; $5a6c: $a9
	ld   h, h                                        ; $5a6d: $64
	ld   l, c                                        ; $5a6e: $69
	cp   d                                           ; $5a6f: $ba
	ld   [hl], a                                     ; $5a70: $77
	ld   a, d                                        ; $5a71: $7a
	cp   c                                           ; $5a72: $b9
	halt                                             ; $5a73: $76
	ld   a, d                                        ; $5a74: $7a
	xor  b                                           ; $5a75: $a8
	sbc  b                                           ; $5a76: $98
	sbc  b                                           ; $5a77: $98
	add  a                                           ; $5a78: $87
	adc  d                                           ; $5a79: $8a
	xor  b                                           ; $5a7a: $a8
	add  a                                           ; $5a7b: $87
	adc  c                                           ; $5a7c: $89
	halt                                             ; $5a7d: $76
	ld   [hl], a                                     ; $5a7e: $77
	ld   [hl], a                                     ; $5a7f: $77
	halt                                             ; $5a80: $76
	ld   a, c                                        ; $5a81: $79
	sbc  d                                           ; $5a82: $9a
	add  [hl]                                        ; $5a83: $86
	ld   h, a                                        ; $5a84: $67
	sub  a                                           ; $5a85: $97
	sbc  b                                           ; $5a86: $98
	ld   a, c                                        ; $5a87: $79
	ld   h, [hl]                                     ; $5a88: $66
	adc  c                                           ; $5a89: $89
	sbc  d                                           ; $5a8a: $9a
	sub  a                                           ; $5a8b: $97
	add  [hl]                                        ; $5a8c: $86
	ld   e, c                                        ; $5a8d: $59
	sbc  c                                           ; $5a8e: $99
	and  [hl]                                        ; $5a8f: $a6
	ld   d, a                                        ; $5a90: $57
	sbc  e                                           ; $5a91: $9b
	xor  c                                           ; $5a92: $a9
	ld   [hl], a                                     ; $5a93: $77
	adc  c                                           ; $5a94: $89
	sbc  b                                           ; $5a95: $98
	adc  b                                           ; $5a96: $88
	adc  c                                           ; $5a97: $89
	adc  c                                           ; $5a98: $89
	sbc  c                                           ; $5a99: $99
	add  a                                           ; $5a9a: $87
	adc  b                                           ; $5a9b: $88
	add  a                                           ; $5a9c: $87
	halt                                             ; $5a9d: $76
	adc  b                                           ; $5a9e: $88
	add  a                                           ; $5a9f: $87
	ld   a, b                                        ; $5aa0: $78
	adc  b                                           ; $5aa1: $88
	ld   [hl], a                                     ; $5aa2: $77
	ld   h, a                                        ; $5aa3: $67
	adc  c                                           ; $5aa4: $89
	sbc  b                                           ; $5aa5: $98
	halt                                             ; $5aa6: $76
	ld   [hl], a                                     ; $5aa7: $77
	xor  d                                           ; $5aa8: $aa
	add  a                                           ; $5aa9: $87
	ld   h, [hl]                                     ; $5aaa: $66
	adc  e                                           ; $5aab: $8b
	xor  b                                           ; $5aac: $a8
	adc  b                                           ; $5aad: $88
	sbc  c                                           ; $5aae: $99
	adc  b                                           ; $5aaf: $88
	adc  c                                           ; $5ab0: $89
	sbc  d                                           ; $5ab1: $9a
	sbc  c                                           ; $5ab2: $99
	add  a                                           ; $5ab3: $87
	ld   a, b                                        ; $5ab4: $78
	sbc  c                                           ; $5ab5: $99
	add  a                                           ; $5ab6: $87
	ld   h, [hl]                                     ; $5ab7: $66
	ld   a, c                                        ; $5ab8: $79
	xor  c                                           ; $5ab9: $a9
	sub  a                                           ; $5aba: $97
	ld   [hl], a                                     ; $5abb: $77
	ld   a, b                                        ; $5abc: $78
	sbc  b                                           ; $5abd: $98
	ld   [hl], a                                     ; $5abe: $77
	ld   [hl], a                                     ; $5abf: $77
	ld   a, b                                        ; $5ac0: $78
	adc  c                                           ; $5ac1: $89
	sbc  b                                           ; $5ac2: $98
	add  a                                           ; $5ac3: $87
	ld   a, b                                        ; $5ac4: $78
	adc  b                                           ; $5ac5: $88
	ld   [hl], a                                     ; $5ac6: $77
	sbc  c                                           ; $5ac7: $99
	adc  c                                           ; $5ac8: $89
	add  a                                           ; $5ac9: $87
	sbc  b                                           ; $5aca: $98
	adc  b                                           ; $5acb: $88
	adc  c                                           ; $5acc: $89
	sbc  b                                           ; $5acd: $98
	ld   a, b                                        ; $5ace: $78
	sbc  c                                           ; $5acf: $99
	sbc  b                                           ; $5ad0: $98
	ld   [hl], a                                     ; $5ad1: $77
	ld   a, b                                        ; $5ad2: $78
	sbc  c                                           ; $5ad3: $99
	ld   [hl], a                                     ; $5ad4: $77
	adc  b                                           ; $5ad5: $88
	sbc  c                                           ; $5ad6: $99
	ld   [hl], a                                     ; $5ad7: $77
	ld   a, b                                        ; $5ad8: $78
	sbc  b                                           ; $5ad9: $98
	ld   [hl], a                                     ; $5ada: $77
	adc  b                                           ; $5adb: $88
	sbc  b                                           ; $5adc: $98
	ld   [hl], a                                     ; $5add: $77
	adc  c                                           ; $5ade: $89
	adc  b                                           ; $5adf: $88
	add  a                                           ; $5ae0: $87
	sbc  b                                           ; $5ae1: $98
	ld   [hl], a                                     ; $5ae2: $77
	sbc  c                                           ; $5ae3: $99
	adc  b                                           ; $5ae4: $88
	ld   a, b                                        ; $5ae5: $78
	sbc  c                                           ; $5ae6: $99
	sbc  b                                           ; $5ae7: $98
	ld   a, b                                        ; $5ae8: $78
	adc  b                                           ; $5ae9: $88
	add  a                                           ; $5aea: $87
	ld   a, b                                        ; $5aeb: $78
	adc  b                                           ; $5aec: $88
	sbc  b                                           ; $5aed: $98
	adc  c                                           ; $5aee: $89
	adc  b                                           ; $5aef: $88
	add  a                                           ; $5af0: $87
	adc  b                                           ; $5af1: $88
	ld   [hl], a                                     ; $5af2: $77
	ld   [hl], a                                     ; $5af3: $77
	adc  b                                           ; $5af4: $88
	adc  b                                           ; $5af5: $88
	adc  b                                           ; $5af6: $88
	sbc  c                                           ; $5af7: $99
	ld   [hl], a                                     ; $5af8: $77
	ld   [hl], a                                     ; $5af9: $77
	sbc  b                                           ; $5afa: $98
	ld   [hl], a                                     ; $5afb: $77
	ld   a, b                                        ; $5afc: $78
	sbc  c                                           ; $5afd: $99
	sbc  b                                           ; $5afe: $98
	sbc  b                                           ; $5aff: $98
	add  a                                           ; $5b00: $87
	ld   a, b                                        ; $5b01: $78
	sbc  c                                           ; $5b02: $99
	xor  b                                           ; $5b03: $a8
	ld   a, b                                        ; $5b04: $78
	adc  b                                           ; $5b05: $88
	adc  b                                           ; $5b06: $88
	adc  c                                           ; $5b07: $89
	sbc  b                                           ; $5b08: $98
	add  a                                           ; $5b09: $87
	ld   [hl], a                                     ; $5b0a: $77
	adc  c                                           ; $5b0b: $89
	sub  a                                           ; $5b0c: $97
	ld   h, a                                        ; $5b0d: $67
	ld   a, b                                        ; $5b0e: $78
	sbc  b                                           ; $5b0f: $98
	adc  b                                           ; $5b10: $88

Call_0c1_5b11:
	adc  b                                           ; $5b11: $88
	adc  b                                           ; $5b12: $88
	ld   a, b                                        ; $5b13: $78
	add  a                                           ; $5b14: $87
	adc  b                                           ; $5b15: $88
	sbc  c                                           ; $5b16: $99
	sbc  b                                           ; $5b17: $98
	adc  b                                           ; $5b18: $88
	sbc  b                                           ; $5b19: $98
	add  a                                           ; $5b1a: $87
	ld   a, b                                        ; $5b1b: $78
	add  a                                           ; $5b1c: $87
	adc  c                                           ; $5b1d: $89
	adc  c                                           ; $5b1e: $89
	add  a                                           ; $5b1f: $87
	adc  b                                           ; $5b20: $88
	adc  c                                           ; $5b21: $89
	ld   [hl], a                                     ; $5b22: $77
	adc  b                                           ; $5b23: $88
	adc  b                                           ; $5b24: $88
	ld   [hl], a                                     ; $5b25: $77
	sbc  c                                           ; $5b26: $99
	adc  b                                           ; $5b27: $88
	ld   a, b                                        ; $5b28: $78
	sbc  b                                           ; $5b29: $98
	adc  b                                           ; $5b2a: $88
	adc  b                                           ; $5b2b: $88
	ld   [hl], a                                     ; $5b2c: $77
	adc  b                                           ; $5b2d: $88
	sbc  b                                           ; $5b2e: $98
	ld   [hl], a                                     ; $5b2f: $77
	ld   [hl], a                                     ; $5b30: $77
	sbc  c                                           ; $5b31: $99
	adc  b                                           ; $5b32: $88
	add  a                                           ; $5b33: $87
	adc  b                                           ; $5b34: $88
	adc  c                                           ; $5b35: $89
	adc  b                                           ; $5b36: $88
	ld   [hl], a                                     ; $5b37: $77
	adc  b                                           ; $5b38: $88
	sbc  c                                           ; $5b39: $99
	sbc  b                                           ; $5b3a: $98
	adc  c                                           ; $5b3b: $89
	adc  b                                           ; $5b3c: $88
	sbc  b                                           ; $5b3d: $98
	sub  a                                           ; $5b3e: $97
	ld   [hl], a                                     ; $5b3f: $77
	ld   a, c                                        ; $5b40: $79
	sbc  b                                           ; $5b41: $98
	adc  b                                           ; $5b42: $88
	ld   a, b                                        ; $5b43: $78
	adc  b                                           ; $5b44: $88
	adc  b                                           ; $5b45: $88
	add  a                                           ; $5b46: $87
	ld   a, b                                        ; $5b47: $78
	ld   a, b                                        ; $5b48: $78
	ld   [hl], a                                     ; $5b49: $77
	adc  b                                           ; $5b4a: $88
	sbc  c                                           ; $5b4b: $99
	ld   [hl], a                                     ; $5b4c: $77
	add  a                                           ; $5b4d: $87
	adc  b                                           ; $5b4e: $88
	ld   a, b                                        ; $5b4f: $78
	adc  b                                           ; $5b50: $88
	sbc  b                                           ; $5b51: $98
	ld   a, c                                        ; $5b52: $79
	adc  c                                           ; $5b53: $89
	sbc  b                                           ; $5b54: $98
	ld   [hl], a                                     ; $5b55: $77
	adc  b                                           ; $5b56: $88
	adc  b                                           ; $5b57: $88
	ld   a, c                                        ; $5b58: $79
	sub  a                                           ; $5b59: $97
	adc  b                                           ; $5b5a: $88
	adc  d                                           ; $5b5b: $8a
	sbc  b                                           ; $5b5c: $98
	add  a                                           ; $5b5d: $87
	adc  b                                           ; $5b5e: $88
	ld   [hl], a                                     ; $5b5f: $77
	sub  a                                           ; $5b60: $97
	ld   a, c                                        ; $5b61: $79
	ld   a, b                                        ; $5b62: $78
	adc  b                                           ; $5b63: $88
	sbc  d                                           ; $5b64: $9a
	adc  c                                           ; $5b65: $89
	sub  a                                           ; $5b66: $97
	ld   a, b                                        ; $5b67: $78
	ld   a, b                                        ; $5b68: $78
	add  a                                           ; $5b69: $87
	adc  c                                           ; $5b6a: $89
	adc  b                                           ; $5b6b: $88
	add  a                                           ; $5b6c: $87
	adc  c                                           ; $5b6d: $89
	adc  b                                           ; $5b6e: $88
	add  a                                           ; $5b6f: $87
	adc  c                                           ; $5b70: $89
	ld   a, b                                        ; $5b71: $78
	add  a                                           ; $5b72: $87
	adc  b                                           ; $5b73: $88
	adc  c                                           ; $5b74: $89
	sub  a                                           ; $5b75: $97
	adc  b                                           ; $5b76: $88
	ld   a, b                                        ; $5b77: $78
	adc  c                                           ; $5b78: $89
	sbc  b                                           ; $5b79: $98
	ld   [hl], a                                     ; $5b7a: $77
	ld   [hl], a                                     ; $5b7b: $77
	adc  c                                           ; $5b7c: $89
	adc  b                                           ; $5b7d: $88
	ld   [hl], a                                     ; $5b7e: $77
	sbc  b                                           ; $5b7f: $98
	adc  c                                           ; $5b80: $89
	adc  b                                           ; $5b81: $88
	add  a                                           ; $5b82: $87
	ld   [hl], a                                     ; $5b83: $77
	ld   a, c                                        ; $5b84: $79
	sbc  c                                           ; $5b85: $99
	adc  b                                           ; $5b86: $88
	ld   [hl], a                                     ; $5b87: $77
	adc  b                                           ; $5b88: $88
	adc  c                                           ; $5b89: $89
	add  a                                           ; $5b8a: $87
	ld   [hl], a                                     ; $5b8b: $77
	adc  b                                           ; $5b8c: $88
	adc  b                                           ; $5b8d: $88
	sbc  b                                           ; $5b8e: $98
	adc  b                                           ; $5b8f: $88
	ld   a, b                                        ; $5b90: $78
	adc  b                                           ; $5b91: $88
	sbc  b                                           ; $5b92: $98
	ld   [hl], a                                     ; $5b93: $77
	ld   [hl], a                                     ; $5b94: $77
	adc  d                                           ; $5b95: $8a
	sbc  b                                           ; $5b96: $98
	adc  b                                           ; $5b97: $88
	adc  b                                           ; $5b98: $88
	ld   [hl], a                                     ; $5b99: $77
	ld   [hl], a                                     ; $5b9a: $77
	ld   a, c                                        ; $5b9b: $79
	adc  b                                           ; $5b9c: $88
	sbc  b                                           ; $5b9d: $98
	adc  c                                           ; $5b9e: $89
	add  a                                           ; $5b9f: $87
	ld   a, b                                        ; $5ba0: $78
	adc  c                                           ; $5ba1: $89
	sbc  b                                           ; $5ba2: $98
	add  a                                           ; $5ba3: $87
	ld   h, a                                        ; $5ba4: $67
	adc  c                                           ; $5ba5: $89
	sbc  b                                           ; $5ba6: $98
	add  a                                           ; $5ba7: $87
	adc  b                                           ; $5ba8: $88
	ld   a, b                                        ; $5ba9: $78
	adc  b                                           ; $5baa: $88
	sbc  c                                           ; $5bab: $99
	ld   [hl], a                                     ; $5bac: $77
	adc  b                                           ; $5bad: $88
	adc  d                                           ; $5bae: $8a
	sub  a                                           ; $5baf: $97
	halt                                             ; $5bb0: $76
	ld   l, c                                        ; $5bb1: $69
	adc  d                                           ; $5bb2: $8a
	and  a                                           ; $5bb3: $a7
	ld   a, b                                        ; $5bb4: $78
	ld   a, c                                        ; $5bb5: $79
	sub  a                                           ; $5bb6: $97
	ld   a, c                                        ; $5bb7: $79
	adc  b                                           ; $5bb8: $88
	adc  b                                           ; $5bb9: $88
	sbc  b                                           ; $5bba: $98
	ld   a, b                                        ; $5bbb: $78
	adc  b                                           ; $5bbc: $88
	adc  b                                           ; $5bbd: $88
	ld   h, a                                        ; $5bbe: $67
	ld   a, b                                        ; $5bbf: $78
	sbc  b                                           ; $5bc0: $98
	ld   [hl], a                                     ; $5bc1: $77
	adc  b                                           ; $5bc2: $88
	sbc  c                                           ; $5bc3: $99
	add  a                                           ; $5bc4: $87
	ld   [hl], a                                     ; $5bc5: $77
	adc  b                                           ; $5bc6: $88
	ld   a, b                                        ; $5bc7: $78
	sbc  c                                           ; $5bc8: $99
	sbc  b                                           ; $5bc9: $98
	ld   [hl], a                                     ; $5bca: $77
	adc  d                                           ; $5bcb: $8a
	sbc  b                                           ; $5bcc: $98
	ld   [hl], a                                     ; $5bcd: $77
	sbc  b                                           ; $5bce: $98
	ld   a, b                                        ; $5bcf: $78
	ld   a, b                                        ; $5bd0: $78
	sbc  b                                           ; $5bd1: $98
	adc  b                                           ; $5bd2: $88
	add  a                                           ; $5bd3: $87
	adc  b                                           ; $5bd4: $88
	ld   a, b                                        ; $5bd5: $78
	sub  a                                           ; $5bd6: $97
	ld   [hl], a                                     ; $5bd7: $77
	ld   a, b                                        ; $5bd8: $78
	sub  a                                           ; $5bd9: $97
	adc  b                                           ; $5bda: $88
	sbc  d                                           ; $5bdb: $9a
	sub  a                                           ; $5bdc: $97
	ld   l, b                                        ; $5bdd: $68
	add  a                                           ; $5bde: $87
	halt                                             ; $5bdf: $76
	ld   a, c                                        ; $5be0: $79
	sbc  b                                           ; $5be1: $98
	add  a                                           ; $5be2: $87
	adc  e                                           ; $5be3: $8b
	xor  c                                           ; $5be4: $a9
	ld   [hl], l                                     ; $5be5: $75
	ld   l, c                                        ; $5be6: $69
	adc  b                                           ; $5be7: $88
	adc  b                                           ; $5be8: $88
	sbc  c                                           ; $5be9: $99
	sub  a                                           ; $5bea: $97
	adc  b                                           ; $5beb: $88
	adc  c                                           ; $5bec: $89
	add  a                                           ; $5bed: $87
	ld   [hl], a                                     ; $5bee: $77
	adc  c                                           ; $5bef: $89
	sbc  b                                           ; $5bf0: $98
	ld   [hl], a                                     ; $5bf1: $77
	sbc  b                                           ; $5bf2: $98
	sbc  b                                           ; $5bf3: $98
	ld   [hl], a                                     ; $5bf4: $77
	adc  c                                           ; $5bf5: $89
	sbc  c                                           ; $5bf6: $99
	add  a                                           ; $5bf7: $87
	ld   [hl], a                                     ; $5bf8: $77
	adc  c                                           ; $5bf9: $89
	add  a                                           ; $5bfa: $87
	ld   [hl], a                                     ; $5bfb: $77
	adc  c                                           ; $5bfc: $89
	adc  b                                           ; $5bfd: $88
	sbc  c                                           ; $5bfe: $99
	adc  b                                           ; $5bff: $88
	add  a                                           ; $5c00: $87
	ld   [hl], a                                     ; $5c01: $77
	ld   a, b                                        ; $5c02: $78
	sbc  c                                           ; $5c03: $99
	add  a                                           ; $5c04: $87
	ld   h, [hl]                                     ; $5c05: $66
	sbc  b                                           ; $5c06: $98
	adc  c                                           ; $5c07: $89
	ld   [hl], a                                     ; $5c08: $77
	adc  b                                           ; $5c09: $88
	ld   a, b                                        ; $5c0a: $78
	xor  d                                           ; $5c0b: $aa
	xor  c                                           ; $5c0c: $a9
	ld   [hl], a                                     ; $5c0d: $77
	halt                                             ; $5c0e: $76
	adc  b                                           ; $5c0f: $88
	adc  e                                           ; $5c10: $8b
	xor  c                                           ; $5c11: $a9
	halt                                             ; $5c12: $76
	ld   l, c                                        ; $5c13: $69
	cp   c                                           ; $5c14: $b9
	sbc  b                                           ; $5c15: $98
	ld   h, a                                        ; $5c16: $67
	sub  a                                           ; $5c17: $97
	ld   a, b                                        ; $5c18: $78
	sbc  c                                           ; $5c19: $99
	add  a                                           ; $5c1a: $87
	ld   h, a                                        ; $5c1b: $67
	xor  c                                           ; $5c1c: $a9
	add  a                                           ; $5c1d: $87
	ld   d, [hl]                                     ; $5c1e: $56
	add  a                                           ; $5c1f: $87
	ld   a, c                                        ; $5c20: $79
	sub  a                                           ; $5c21: $97
	halt                                             ; $5c22: $76
	ld   a, d                                        ; $5c23: $7a
	xor  b                                           ; $5c24: $a8
	halt                                             ; $5c25: $76
	ld   a, d                                        ; $5c26: $7a
	xor  c                                           ; $5c27: $a9
	adc  c                                           ; $5c28: $89
	adc  e                                           ; $5c29: $8b
	cp   b                                           ; $5c2a: $b8
	adc  b                                           ; $5c2b: $88
	sbc  e                                           ; $5c2c: $9b
	sbc  b                                           ; $5c2d: $98
	sbc  c                                           ; $5c2e: $99
	xor  c                                           ; $5c2f: $a9
	add  a                                           ; $5c30: $87
	sbc  c                                           ; $5c31: $99
	sbc  b                                           ; $5c32: $98
	ld   [hl], l                                     ; $5c33: $75
	ld   l, b                                        ; $5c34: $68
	halt                                             ; $5c35: $76
	ld   h, [hl]                                     ; $5c36: $66
	ld   [hl], a                                     ; $5c37: $77
	ld   [hl], l                                     ; $5c38: $75
	inc  sp                                          ; $5c39: $33
	dec  [hl]                                        ; $5c3a: $35
	ld   a, c                                        ; $5c3b: $79
	sbc  c                                           ; $5c3c: $99
	add  [hl]                                        ; $5c3d: $86
	adc  e                                           ; $5c3e: $8b
	cp   h                                           ; $5c3f: $bc
	ret                                              ; $5c40: $c9


	xor  h                                           ; $5c41: $ac
	sbc  e                                           ; $5c42: $9b
	xor  c                                           ; $5c43: $a9
	call z, $cacc                                    ; $5c44: $cc $cc $ca
	adc  c                                           ; $5c47: $89
	sbc  c                                           ; $5c48: $99
	xor  c                                           ; $5c49: $a9
	add  a                                           ; $5c4a: $87
	ld   h, l                                        ; $5c4b: $65
	ld   h, l                                        ; $5c4c: $65
	ld   d, [hl]                                     ; $5c4d: $56
	ld   d, h                                        ; $5c4e: $54
	ld   hl, $2511                                   ; $5c4f: $21 $11 $25
	ld   b, l                                        ; $5c52: $45
	ld   a, b                                        ; $5c53: $78
	xor  e                                           ; $5c54: $ab
	halt                                             ; $5c55: $76
	ld   a, c                                        ; $5c56: $79
	adc  $cb                                         ; $5c57: $ce $cb
	xor  e                                           ; $5c59: $ab
	call $dcdc                                       ; $5c5a: $cd $dc $dc
	call z, $abcb                                    ; $5c5d: $cc $cb $ab
	sbc  c                                           ; $5c60: $99
	xor  c                                           ; $5c61: $a9
	ld   h, [hl]                                     ; $5c62: $66
	ld   d, l                                        ; $5c63: $55
	ld   h, a                                        ; $5c64: $67
	ld   d, h                                        ; $5c65: $54
	ld   sp, $1211                                   ; $5c66: $31 $11 $12
	ld   h, l                                        ; $5c69: $65

jr_0c1_5c6a:
	ld   b, [hl]                                     ; $5c6a: $46
	ld   l, b                                        ; $5c6b: $68
	adc  b                                           ; $5c6c: $88
	ld   l, c                                        ; $5c6d: $69
	cp   h                                           ; $5c6e: $bc
	res  3, d                                        ; $5c6f: $cb $9a
	cp   e                                           ; $5c71: $bb
	res  7, h                                        ; $5c72: $cb $bc
	adc  $dc                                         ; $5c74: $ce $dc
	db   $db                                         ; $5c76: $db
	cp   h                                           ; $5c77: $bc
	xor  d                                           ; $5c78: $aa
	xor  c                                           ; $5c79: $a9
	sbc  c                                           ; $5c7a: $99
	halt                                             ; $5c7b: $76
	ld   d, l                                        ; $5c7c: $55
	ld   b, e                                        ; $5c7d: $43
	ld   hl, $1122                                   ; $5c7e: $21 $22 $11
	ld   de, $9b58                                   ; $5c81: $11 $58 $9b
	xor  b                                           ; $5c84: $a8
	adc  b                                           ; $5c85: $88
	sbc  c                                           ; $5c86: $99
	xor  d                                           ; $5c87: $aa
	cp   l                                           ; $5c88: $bd
	db   $ec                                         ; $5c89: $ec
	xor  b                                           ; $5c8a: $a8
	adc  e                                           ; $5c8b: $8b
	sbc  $dc                                         ; $5c8c: $de $dc
	call z, $99bb                                    ; $5c8e: $cc $bb $99
	cp   h                                           ; $5c91: $bc
	cp   d                                           ; $5c92: $ba
	sbc  b                                           ; $5c93: $98
	ld   [hl], l                                     ; $5c94: $75
	inc  sp                                          ; $5c95: $33
	ld   b, e                                        ; $5c96: $43
	ld   de, $1111                                   ; $5c97: $11 $11 $11
	jr   jr_0c1_5c6a                                 ; $5c9a: $18 $ce

	ret  c                                           ; $5c9c: $d8

	dec  [hl]                                        ; $5c9d: $35
	ld   a, b                                        ; $5c9e: $78
	cp   e                                           ; $5c9f: $bb
	xor  h                                           ; $5ca0: $ac
	ld   [$9a89], a                                  ; $5ca1: $ea $89 $9a
	db   $db                                         ; $5ca4: $db
	cp   e                                           ; $5ca5: $bb
	cp   e                                           ; $5ca6: $bb
	xor  d                                           ; $5ca7: $aa
	sbc  d                                           ; $5ca8: $9a
	res  7, e                                        ; $5ca9: $cb $bb
	xor  d                                           ; $5cab: $aa
	jp   z, $3375                                    ; $5cac: $ca $75 $33

	ld   [hl-], a                                    ; $5caf: $32
	ld   de, $1111                                   ; $5cb0: $11 $11 $11
	ld   e, l                                        ; $5cb3: $5d
	rst  $38                                         ; $5cb4: $ff
	or   l                                           ; $5cb5: $b5
	ld   [hl+], a                                    ; $5cb6: $22
	ld   a, d                                        ; $5cb7: $7a
	sbc  h                                           ; $5cb8: $9c
	call c, Call_0c1_55c8                            ; $5cb9: $dc $c8 $55
	cp   a                                           ; $5cbc: $bf
	db   $ed                                         ; $5cbd: $ed
	cp   d                                           ; $5cbe: $ba
	cp   d                                           ; $5cbf: $ba
	adc  b                                           ; $5cc0: $88
	xor  h                                           ; $5cc1: $ac
	sbc  $bb                                         ; $5cc2: $de $bb
	xor  e                                           ; $5cc4: $ab
	cp   e                                           ; $5cc5: $bb
	sub  [hl]                                        ; $5cc6: $96
	ld   b, e                                        ; $5cc7: $43
	ld   hl, $1111                                   ; $5cc8: $21 $11 $11
	inc  de                                          ; $5ccb: $13
	rst  $38                                         ; $5ccc: $ff
	cp   $21                                         ; $5ccd: $fe $21

jr_0c1_5ccf:
	inc  d                                           ; $5ccf: $14
	adc  c                                           ; $5cd0: $89
	cp   a                                           ; $5cd1: $bf
	cp   $92                                         ; $5cd2: $fe $92
	dec  d                                           ; $5cd4: $15
	rst  JumpTable                                         ; $5cd5: $df
	rst  $38                                         ; $5cd6: $ff
	jp   z, Jump_0c1_77a9                            ; $5cd7: $ca $a9 $77

	xor  [hl]                                        ; $5cda: $ae
	xor  $cc                                         ; $5cdb: $ee $cc
	res  4, a                                        ; $5cdd: $cb $a7
	ld   h, [hl]                                     ; $5cdf: $66
	ld   b, d                                        ; $5ce0: $42
	ld   de, $1111                                   ; $5ce1: $11 $11 $11
	ld   a, a                                        ; $5ce4: $7f
	rst  $38                                         ; $5ce5: $ff
	and  c                                           ; $5ce6: $a1
	ld   [de], a                                     ; $5ce7: $12
	ld   d, l                                        ; $5ce8: $55
	ld   l, e                                        ; $5ce9: $6b
	rst  $38                                         ; $5cea: $ff
	rst  $30                                         ; $5ceb: $f7
	ld   de, $ff4a                                   ; $5cec: $11 $4a $ff
	rst  $38                                         ; $5cef: $ff
	jp   hl                                          ; $5cf0: $e9


	ld   h, h                                        ; $5cf1: $64
	ld   e, b                                        ; $5cf2: $58
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cf3: $cf
	rst  $38                                         ; $5cf4: $ff
	db   $fd                                         ; $5cf5: $fd
	and  a                                           ; $5cf6: $a7
	ld   d, [hl]                                     ; $5cf7: $56
	halt                                             ; $5cf8: $76
	ld   sp, $1111                                   ; $5cf9: $31 $11 $11
	ld   de, $ffff                                   ; $5cfc: $11 $ff $ff
	ld   hl, $4314                                   ; $5cff: $21 $14 $43
	ld   a, a                                        ; $5d02: $7f
	rst  $38                                         ; $5d03: $ff
	pop  bc                                          ; $5d04: $c1
	inc  de                                          ; $5d05: $13
	ld   a, e                                        ; $5d06: $7b
	rst  $38                                         ; $5d07: $ff
	rst  $38                                         ; $5d08: $ff
	rst  $10                                         ; $5d09: $d7
	ld   d, h                                        ; $5d0a: $54
	ld   l, c                                        ; $5d0b: $69
	adc  $ff                                         ; $5d0c: $ce $ff
	db   $fd                                         ; $5d0e: $fd
	add  h                                           ; $5d0f: $84
	ld   b, l                                        ; $5d10: $45
	ld   d, e                                        ; $5d11: $53
	ld   de, $1111                                   ; $5d12: $11 $11 $11
	rra                                              ; $5d15: $1f
	rst  $38                                         ; $5d16: $ff
	push af                                          ; $5d17: $f5
	ld   [de], a                                     ; $5d18: $12
	ld   d, d                                        ; $5d19: $52
	ld   de, $ffdf                                   ; $5d1a: $11 $df $ff
	ld   d, d                                        ; $5d1d: $52
	ld   d, a                                        ; $5d1e: $57
	adc  d                                           ; $5d1f: $8a
	rst  JumpTable                                         ; $5d20: $df
	rst  $38                                         ; $5d21: $ff
	and  [hl]                                        ; $5d22: $a6
	ld   h, a                                        ; $5d23: $67
	sbc  c                                           ; $5d24: $99
	cp   [hl]                                        ; $5d25: $be
	rst  $38                                         ; $5d26: $ff
	ei                                               ; $5d27: $fb
	ld   h, h                                        ; $5d28: $64
	ld   b, e                                        ; $5d29: $43
	ld   de, $1111                                   ; $5d2a: $11 $11 $11
	ld   de, $ff4f                                   ; $5d2d: $11 $4f $ff
	pop  de                                          ; $5d30: $d1
	daa                                              ; $5d31: $27
	ld   sp, $ff17                                   ; $5d32: $31 $17 $ff
	ld   sp, hl                                      ; $5d35: $f9
	jr   c, jr_0c1_5ccf                              ; $5d36: $38 $97

	sbc  d                                           ; $5d38: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d39: $cf
	db   $fc                                         ; $5d3a: $fc
	sbc  c                                           ; $5d3b: $99
	cp   d                                           ; $5d3c: $ba
	xor  e                                           ; $5d3d: $ab
	cp   a                                           ; $5d3e: $bf
	rst  $38                                         ; $5d3f: $ff
	ld   [$2165], a                                  ; $5d40: $ea $65 $21
	ld   de, $1111                                   ; $5d43: $11 $11 $11
	inc  de                                          ; $5d46: $13
	rst  $38                                         ; $5d47: $ff
	db   $fd                                         ; $5d48: $fd
	inc  h                                           ; $5d49: $24
	add  h                                           ; $5d4a: $84
	ld   de, $ff5f                                   ; $5d4b: $11 $5f $ff
	and  [hl]                                        ; $5d4e: $a6
	call Call_0c1_57ca                               ; $5d4f: $cd $ca $57
	cp   h                                           ; $5d52: $bc
	call z, $eeef                                    ; $5d53: $cc $ef $ee
	sbc  b                                           ; $5d56: $98
	rst  $28                                         ; $5d57: $ef
	cp   $aa                                         ; $5d58: $fe $aa
	ld   [hl], d                                     ; $5d5a: $72
	ld   de, $1111                                   ; $5d5b: $11 $11 $11
	ld   de, $ffff                                   ; $5d5e: $11 $ff $ff
	add  [hl]                                        ; $5d61: $86
	sub  a                                           ; $5d62: $97
	ld   de, $ff18                                   ; $5d63: $11 $18 $ff
	ld   [$fdff], a                                  ; $5d66: $ea $ff $fd
	ld   d, e                                        ; $5d69: $53
	ld   l, d                                        ; $5d6a: $6a
	cp   d                                           ; $5d6b: $ba
	rst  JumpTable                                         ; $5d6c: $df
	rst  $38                                         ; $5d6d: $ff
	rst  ToBoot                                         ; $5d6e: $c7
	sbc  d                                           ; $5d6f: $9a
	call $a5bb                                       ; $5d70: $cd $bb $a5
	ld   de, $1111                                   ; $5d73: $11 $11 $11
	ld   de, $ff8f                                   ; $5d76: $11 $8f $ff
	ld   a, [$51cb]                                  ; $5d79: $fa $cb $51
	ld   de, $ca8c                                   ; $5d7c: $11 $8c $ca
	rst  $28                                         ; $5d7f: $ef
	rst  $38                                         ; $5d80: $ff
	add  h                                           ; $5d81: $84
	ld   a, e                                        ; $5d82: $7b
	xor  b                                           ; $5d83: $a8
	adc  h                                           ; $5d84: $8c
	rst  $38                                         ; $5d85: $ff
	ld   hl, sp+$7b                                  ; $5d86: $f8 $7b
	call z, $9787                                    ; $5d88: $cc $87 $97
	ld   de, $1111                                   ; $5d8b: $11 $11 $11
	ld   de, $ffbf                                   ; $5d8e: $11 $bf $ff
	db   $fd                                         ; $5d91: $fd
	db   $ec                                         ; $5d92: $ec
	ld   h, c                                        ; $5d93: $61
	ld   [de], a                                     ; $5d94: $12
	ld   h, a                                        ; $5d95: $67
	ld   a, d                                        ; $5d96: $7a
	rst  $38                                         ; $5d97: $ff
	rst  $38                                         ; $5d98: $ff
	cp   e                                           ; $5d99: $bb
	db   $ed                                         ; $5d9a: $ed
	xor  b                                           ; $5d9b: $a8
	sbc  l                                           ; $5d9c: $9d
	db   $fd                                         ; $5d9d: $fd
	xor  c                                           ; $5d9e: $a9
	xor  h                                           ; $5d9f: $ac
	xor  c                                           ; $5da0: $a9
	ld   [hl], a                                     ; $5da1: $77
	ld   [hl], e                                     ; $5da2: $73
	ld   de, $1111                                   ; $5da3: $11 $11 $11
	inc  d                                           ; $5da6: $14
	rst  $28                                         ; $5da7: $ef
	rst  $38                                         ; $5da8: $ff
	rst  $38                                         ; $5da9: $ff
	ei                                               ; $5daa: $fb
	ld   h, e                                        ; $5dab: $63
	ld   b, l                                        ; $5dac: $45
	ld   b, h                                        ; $5dad: $44
	ld   a, l                                        ; $5dae: $7d
	rst  $38                                         ; $5daf: $ff
	rst  $38                                         ; $5db0: $ff
	rst  $38                                         ; $5db1: $ff
	db   $fd                                         ; $5db2: $fd
	cp   h                                           ; $5db3: $bc
	call z, $8998                                    ; $5db4: $cc $98 $89
	sbc  c                                           ; $5db7: $99
	adc  b                                           ; $5db8: $88
	sbc  b                                           ; $5db9: $98
	ld   d, c                                        ; $5dba: $51
	ld   de, $1111                                   ; $5dbb: $11 $11 $11
	inc  d                                           ; $5dbe: $14
	xor  h                                           ; $5dbf: $ac
	rst  $28                                         ; $5dc0: $ef
	rst  $38                                         ; $5dc1: $ff
	db   $fd                                         ; $5dc2: $fd
	xor  b                                           ; $5dc3: $a8
	sbc  c                                           ; $5dc4: $99
	halt                                             ; $5dc5: $76
	ld   [hl], a                                     ; $5dc6: $77
	sbc  e                                           ; $5dc7: $9b
	cp   h                                           ; $5dc8: $bc
	rst  $28                                         ; $5dc9: $ef
	cp   $dc                                         ; $5dca: $fe $dc
	cp   d                                           ; $5dcc: $ba
	add  a                                           ; $5dcd: $87
	ld   h, [hl]                                     ; $5dce: $66
	ld   [hl], a                                     ; $5dcf: $77
	ld   h, [hl]                                     ; $5dd0: $66
	ld   h, [hl]                                     ; $5dd1: $66
	ld   d, h                                        ; $5dd2: $54
	ld   b, e                                        ; $5dd3: $43
	ld   [hl-], a                                    ; $5dd4: $32
	ld   de, $4512                                   ; $5dd5: $11 $12 $45
	ld   h, [hl]                                     ; $5dd8: $66
	ld   a, c                                        ; $5dd9: $79
	xor  d                                           ; $5dda: $aa
	xor  c                                           ; $5ddb: $a9
	xor  e                                           ; $5ddc: $ab
	xor  d                                           ; $5ddd: $aa
	xor  c                                           ; $5dde: $a9
	xor  d                                           ; $5ddf: $aa
	sbc  c                                           ; $5de0: $99
	xor  d                                           ; $5de1: $aa
	xor  d                                           ; $5de2: $aa
	sbc  d                                           ; $5de3: $9a
	xor  d                                           ; $5de4: $aa
	xor  d                                           ; $5de5: $aa
	xor  c                                           ; $5de6: $a9
	xor  d                                           ; $5de7: $aa
	xor  c                                           ; $5de8: $a9
	sbc  d                                           ; $5de9: $9a
	sbc  c                                           ; $5dea: $99
	sbc  b                                           ; $5deb: $98
	add  a                                           ; $5dec: $87
	ld   [hl], a                                     ; $5ded: $77
	halt                                             ; $5dee: $76
	ld   h, [hl]                                     ; $5def: $66
	ld   h, [hl]                                     ; $5df0: $66
	ld   h, [hl]                                     ; $5df1: $66
	ld   h, [hl]                                     ; $5df2: $66
	ld   h, l                                        ; $5df3: $65
	ld   h, [hl]                                     ; $5df4: $66
	ld   h, [hl]                                     ; $5df5: $66
	ld   h, [hl]                                     ; $5df6: $66
	ld   h, a                                        ; $5df7: $67
	ld   a, b                                        ; $5df8: $78
	adc  c                                           ; $5df9: $89
	sbc  d                                           ; $5dfa: $9a
	xor  c                                           ; $5dfb: $a9
	sbc  d                                           ; $5dfc: $9a
	xor  d                                           ; $5dfd: $aa
	xor  d                                           ; $5dfe: $aa
	xor  e                                           ; $5dff: $ab
	cp   d                                           ; $5e00: $ba
	xor  c                                           ; $5e01: $a9
	sbc  c                                           ; $5e02: $99
	sbc  b                                           ; $5e03: $98
	adc  b                                           ; $5e04: $88
	adc  b                                           ; $5e05: $88
	adc  b                                           ; $5e06: $88
	adc  b                                           ; $5e07: $88
	adc  b                                           ; $5e08: $88
	ld   [hl], a                                     ; $5e09: $77
	ld   [hl], a                                     ; $5e0a: $77
	ld   [hl], a                                     ; $5e0b: $77
	ld   [hl], a                                     ; $5e0c: $77
	ld   [hl], a                                     ; $5e0d: $77
	halt                                             ; $5e0e: $76
	ld   h, [hl]                                     ; $5e0f: $66
	ld   [hl], a                                     ; $5e10: $77
	ld   [hl], a                                     ; $5e11: $77
	ld   a, b                                        ; $5e12: $78
	adc  b                                           ; $5e13: $88
	adc  b                                           ; $5e14: $88
	adc  b                                           ; $5e15: $88
	adc  c                                           ; $5e16: $89
	adc  c                                           ; $5e17: $89
	sbc  d                                           ; $5e18: $9a
	sbc  c                                           ; $5e19: $99
	sbc  c                                           ; $5e1a: $99
	sbc  c                                           ; $5e1b: $99
	adc  b                                           ; $5e1c: $88
	adc  b                                           ; $5e1d: $88
	adc  c                                           ; $5e1e: $89
	sbc  c                                           ; $5e1f: $99
	adc  b                                           ; $5e20: $88
	adc  b                                           ; $5e21: $88
	add  a                                           ; $5e22: $87
	ld   [hl], a                                     ; $5e23: $77
	ld   [hl], a                                     ; $5e24: $77
	ld   [hl], a                                     ; $5e25: $77
	ld   [hl], a                                     ; $5e26: $77
	ld   [hl], a                                     ; $5e27: $77
	ld   a, b                                        ; $5e28: $78
	adc  b                                           ; $5e29: $88
	adc  b                                           ; $5e2a: $88
	adc  b                                           ; $5e2b: $88
	adc  b                                           ; $5e2c: $88
	adc  b                                           ; $5e2d: $88
	add  a                                           ; $5e2e: $87
	ld   [hl], a                                     ; $5e2f: $77
	adc  b                                           ; $5e30: $88
	adc  b                                           ; $5e31: $88
	add  a                                           ; $5e32: $87
	ld   [hl], a                                     ; $5e33: $77
	ld   a, b                                        ; $5e34: $78
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
	sbc  c                                           ; $5e41: $99
	sbc  c                                           ; $5e42: $99
	sbc  c                                           ; $5e43: $99
	sbc  b                                           ; $5e44: $98
	adc  b                                           ; $5e45: $88
	adc  b                                           ; $5e46: $88
	adc  b                                           ; $5e47: $88
	adc  b                                           ; $5e48: $88
	adc  b                                           ; $5e49: $88
	adc  b                                           ; $5e4a: $88
	adc  b                                           ; $5e4b: $88
	adc  b                                           ; $5e4c: $88
	add  a                                           ; $5e4d: $87
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
	adc  c                                           ; $5e59: $89
	sbc  c                                           ; $5e5a: $99
	sbc  c                                           ; $5e5b: $99
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
	sbc  c                                           ; $6046: $99
	adc  b                                           ; $6047: $88
	adc  b                                           ; $6048: $88
	adc  b                                           ; $6049: $88
	adc  c                                           ; $604a: $89
	adc  b                                           ; $604b: $88
	ld   a, b                                        ; $604c: $78
	adc  b                                           ; $604d: $88
	ld   [hl], a                                     ; $604e: $77
	adc  c                                           ; $604f: $89
	sbc  b                                           ; $6050: $98
	adc  b                                           ; $6051: $88
	sbc  b                                           ; $6052: $98
	add  a                                           ; $6053: $87
	adc  b                                           ; $6054: $88
	adc  b                                           ; $6055: $88
	adc  b                                           ; $6056: $88
	adc  b                                           ; $6057: $88
	adc  b                                           ; $6058: $88
	adc  b                                           ; $6059: $88
	add  a                                           ; $605a: $87
	ld   [hl], a                                     ; $605b: $77
	adc  b                                           ; $605c: $88
	sbc  b                                           ; $605d: $98
	ld   a, b                                        ; $605e: $78
	adc  b                                           ; $605f: $88
	ld   a, b                                        ; $6060: $78
	sbc  c                                           ; $6061: $99
	add  a                                           ; $6062: $87
	adc  b                                           ; $6063: $88
	add  a                                           ; $6064: $87
	ld   a, b                                        ; $6065: $78
	adc  b                                           ; $6066: $88
	ld   [hl], a                                     ; $6067: $77
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
	add  a                                           ; $6072: $87
	adc  b                                           ; $6073: $88
	add  a                                           ; $6074: $87
	adc  b                                           ; $6075: $88
	add  a                                           ; $6076: $87
	ld   [hl], a                                     ; $6077: $77
	ld   [hl], a                                     ; $6078: $77
	ld   [hl], a                                     ; $6079: $77
	ld   [hl], a                                     ; $607a: $77
	ld   [hl], a                                     ; $607b: $77
	ld   [hl], a                                     ; $607c: $77
	ld   [hl], a                                     ; $607d: $77
	ld   a, c                                        ; $607e: $79
	adc  d                                           ; $607f: $8a
	xor  d                                           ; $6080: $aa
	cp   d                                           ; $6081: $ba
	cp   e                                           ; $6082: $bb
	xor  e                                           ; $6083: $ab
	xor  d                                           ; $6084: $aa
	xor  d                                           ; $6085: $aa
	sbc  c                                           ; $6086: $99
	adc  b                                           ; $6087: $88
	add  a                                           ; $6088: $87
	ld   [hl], a                                     ; $6089: $77
	halt                                             ; $608a: $76
	ld   h, [hl]                                     ; $608b: $66
	ld   h, [hl]                                     ; $608c: $66
	ld   d, e                                        ; $608d: $53
	inc  sp                                          ; $608e: $33
	inc  hl                                          ; $608f: $23
	inc  [hl]                                        ; $6090: $34
	ld   h, a                                        ; $6091: $67
	adc  d                                           ; $6092: $8a
	xor  h                                           ; $6093: $ac
	db   $dd                                         ; $6094: $dd
	rst  JumpTable                                         ; $6095: $df
	db   $dd                                         ; $6096: $dd
	db   $ec                                         ; $6097: $ec
	cp   e                                           ; $6098: $bb
	cp   e                                           ; $6099: $bb
	cp   e                                           ; $609a: $bb
	xor  d                                           ; $609b: $aa
	sbc  c                                           ; $609c: $99
	sbc  c                                           ; $609d: $99
	add  a                                           ; $609e: $87
	ld   [hl], l                                     ; $609f: $75
	ld   b, e                                        ; $60a0: $43
	ld   de, $1111                                   ; $60a1: $11 $11 $11
	ld   [de], a                                     ; $60a4: $12
	ld   b, a                                        ; $60a5: $47
	xor  d                                           ; $60a6: $aa
	rst  JumpTable                                         ; $60a7: $df
	rst  $38                                         ; $60a8: $ff
	rst  $38                                         ; $60a9: $ff
	cp   $dc                                         ; $60aa: $fe $dc
	cp   d                                           ; $60ac: $ba
	sbc  d                                           ; $60ad: $9a
	cp   e                                           ; $60ae: $bb
	xor  d                                           ; $60af: $aa
	xor  c                                           ; $60b0: $a9
	adc  b                                           ; $60b1: $88
	halt                                             ; $60b2: $76
	ld   d, d                                        ; $60b3: $52
	ld   de, $1111                                   ; $60b4: $11 $11 $11
	ld   de, $ce59                                   ; $60b7: $11 $59 $ce
	rst  $38                                         ; $60ba: $ff
	rst  $38                                         ; $60bb: $ff
	rst  $38                                         ; $60bc: $ff
	db   $ed                                         ; $60bd: $ed
	xor  e                                           ; $60be: $ab
	xor  c                                           ; $60bf: $a9
	adc  b                                           ; $60c0: $88
	sbc  b                                           ; $60c1: $98
	ld   [hl], a                                     ; $60c2: $77
	ld   a, c                                        ; $60c3: $79
	ld   [hl], l                                     ; $60c4: $75
	ld   h, l                                        ; $60c5: $65
	ld   sp, $1111                                   ; $60c6: $31 $11 $11
	ld   de, $7e44                                   ; $60c9: $11 $44 $7e
	rst  $38                                         ; $60cc: $ff
	rst  $38                                         ; $60cd: $ff
	rst  $38                                         ; $60ce: $ff
	db   $ed                                         ; $60cf: $ed
	db   $dd                                         ; $60d0: $dd
	cp   c                                           ; $60d1: $b9
	xor  d                                           ; $60d2: $aa
	and  a                                           ; $60d3: $a7
	ld   a, b                                        ; $60d4: $78
	ld   [hl], a                                     ; $60d5: $77
	ld   [hl], a                                     ; $60d6: $77
	ld   h, l                                        ; $60d7: $65
	ld   hl, $1111                                   ; $60d8: $21 $11 $11
	ld   de, $8c14                                   ; $60db: $11 $14 $8c
	rst  $28                                         ; $60de: $ef
	rst  $38                                         ; $60df: $ff
	rst  $38                                         ; $60e0: $ff
	rst  $38                                         ; $60e1: $ff
	rst  $38                                         ; $60e2: $ff
	call c, $ccbb                                    ; $60e3: $dc $bb $cc
	res  7, e                                        ; $60e6: $cb $bb
	xor  c                                           ; $60e8: $a9
	ld   [hl], h                                     ; $60e9: $74
	ld   [hl-], a                                    ; $60ea: $32
	ld   de, $1111                                   ; $60eb: $11 $11 $11
	ld   de, $7b14                                   ; $60ee: $11 $14 $7b
	rst  $38                                         ; $60f1: $ff
	rst  $38                                         ; $60f2: $ff
	rst  $38                                         ; $60f3: $ff
	rst  $38                                         ; $60f4: $ff
	rst  $28                                         ; $60f5: $ef
	db   $db                                         ; $60f6: $db
	cp   e                                           ; $60f7: $bb
	cp   d                                           ; $60f8: $ba
	sbc  c                                           ; $60f9: $99
	sbc  c                                           ; $60fa: $99
	ld   [hl], a                                     ; $60fb: $77
	ld   h, h                                        ; $60fc: $64
	ld   sp, $1111                                   ; $60fd: $31 $11 $11
	ld   de, $6611                                   ; $6100: $11 $11 $66
	cp   a                                           ; $6103: $bf
	rst  $38                                         ; $6104: $ff
	rst  $38                                         ; $6105: $ff
	rst  $38                                         ; $6106: $ff
	rst  $28                                         ; $6107: $ef
	db   $dd                                         ; $6108: $dd
	xor  c                                           ; $6109: $a9
	call z, $8998                                    ; $610a: $cc $98 $89
	halt                                             ; $610d: $76
	ld   [hl], a                                     ; $610e: $77
	ld   b, c                                        ; $610f: $41
	ld   de, $1111                                   ; $6110: $11 $11 $11
	ld   de, $9e23                                   ; $6113: $11 $23 $9e
	rst  $38                                         ; $6116: $ff
	rst  $38                                         ; $6117: $ff
	rst  $38                                         ; $6118: $ff
	rst  $38                                         ; $6119: $ff
	db   $fd                                         ; $611a: $fd
	db   $ed                                         ; $611b: $ed
	cp   e                                           ; $611c: $bb
	db   $db                                         ; $611d: $db
	sbc  b                                           ; $611e: $98
	ld   a, b                                        ; $611f: $78
	halt                                             ; $6120: $76
	ld   b, h                                        ; $6121: $44
	ld   de, $1111                                   ; $6122: $11 $11 $11
	ld   de, $8b11                                   ; $6125: $11 $11 $8b
	rst  JumpTable                                         ; $6128: $df
	rst  $38                                         ; $6129: $ff
	rst  $38                                         ; $612a: $ff
	rst  $38                                         ; $612b: $ff
	db   $fc                                         ; $612c: $fc
	rst  JumpTable                                         ; $612d: $df
	call c, $baab                                    ; $612e: $dc $ab $ba
	ld   a, b                                        ; $6131: $78
	sub  a                                           ; $6132: $97
	ld   h, h                                        ; $6133: $64
	ld   [hl-], a                                    ; $6134: $32
	ld   de, $1111                                   ; $6135: $11 $11 $11
	ld   de, $7f05                                   ; $6138: $11 $05 $7f
	rst  $38                                         ; $613b: $ff
	rst  $38                                         ; $613c: $ff
	rst  $38                                         ; $613d: $ff
	cp   $ff                                         ; $613e: $fe $ff
	res  7, [hl]                                     ; $6140: $cb $be
	ret                                              ; $6142: $c9


	adc  c                                           ; $6143: $89
	sub  [hl]                                        ; $6144: $96
	halt                                             ; $6145: $76
	ld   b, e                                        ; $6146: $43
	ld   de, $1111                                   ; $6147: $11 $11 $11
	ld   de, $9a13                                   ; $614a: $11 $13 $9a
	rst  $38                                         ; $614d: $ff
	rst  $38                                         ; $614e: $ff
	rst  $38                                         ; $614f: $ff
	rst  $38                                         ; $6150: $ff
	sbc  $fc                                         ; $6151: $de $fc
	call z, $97cc                                    ; $6153: $cc $cc $97
	sbc  b                                           ; $6156: $98
	ld   h, [hl]                                     ; $6157: $66
	ld   h, h                                        ; $6158: $64
	ld   de, $1111                                   ; $6159: $11 $11 $11
	ld   de, $4912                                   ; $615c: $11 $12 $49
	rst  $28                                         ; $615f: $ef
	rst  $38                                         ; $6160: $ff
	rst  $38                                         ; $6161: $ff
	rst  $38                                         ; $6162: $ff
	rst  $38                                         ; $6163: $ff
	db   $fd                                         ; $6164: $fd
	db   $dd                                         ; $6165: $dd
	call $98b8                                       ; $6166: $cd $b8 $98
	add  [hl]                                        ; $6169: $86
	ld   b, h                                        ; $616a: $44
	ld   de, $1111                                   ; $616b: $11 $11 $11
	ld   de, $1a11                                   ; $616e: $11 $11 $1a
	rst  $38                                         ; $6171: $ff
	rst  $38                                         ; $6172: $ff
	rst  $38                                         ; $6173: $ff
	rst  $38                                         ; $6174: $ff
	rst  $38                                         ; $6175: $ff
	db   $fd                                         ; $6176: $fd
	db   $dd                                         ; $6177: $dd
	res  3, c                                        ; $6178: $cb $99
	add  l                                           ; $617a: $85
	ld   l, b                                        ; $617b: $68
	ld   h, d                                        ; $617c: $62
	ld   [hl+], a                                    ; $617d: $22
	ld   de, $1111                                   ; $617e: $11 $11 $11
	ld   de, $9c34                                   ; $6181: $11 $34 $9c
	rst  $38                                         ; $6184: $ff
	rst  $38                                         ; $6185: $ff
	rst  $38                                         ; $6186: $ff
	rst  $38                                         ; $6187: $ff
	rst  $38                                         ; $6188: $ff
	cp   $cc                                         ; $6189: $fe $cc
	jp   z, Jump_0c1_7698                            ; $618b: $ca $98 $76

	ld   h, h                                        ; $618e: $64
	ld   sp, $1111                                   ; $618f: $31 $11 $11
	ld   de, $1111                                   ; $6192: $11 $11 $11
	ld   a, h                                        ; $6195: $7c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6196: $cf
	rst  $38                                         ; $6197: $ff
	rst  $38                                         ; $6198: $ff
	rst  $38                                         ; $6199: $ff
	rst  $38                                         ; $619a: $ff
	db   $fd                                         ; $619b: $fd
	xor  $c9                                         ; $619c: $ee $c9
	adc  b                                           ; $619e: $88
	halt                                             ; $619f: $76
	ld   h, l                                        ; $61a0: $65
	ld   d, h                                        ; $61a1: $54
	ld   hl, $1111                                   ; $61a2: $21 $11 $11
	ld   de, $3612                                   ; $61a5: $11 $12 $36
	sbc  e                                           ; $61a8: $9b
	rst  $28                                         ; $61a9: $ef
	rst  $38                                         ; $61aa: $ff
	rst  $38                                         ; $61ab: $ff
	rst  $38                                         ; $61ac: $ff
	rst  $38                                         ; $61ad: $ff
	db   $fd                                         ; $61ae: $fd
	call $88b9                                       ; $61af: $cd $b9 $88
	ld   h, a                                        ; $61b2: $67
	ld   [hl], h                                     ; $61b3: $74
	ld   d, h                                        ; $61b4: $54
	ld   [hl+], a                                    ; $61b5: $22
	ld   de, $1111                                   ; $61b6: $11 $11 $11
	inc  hl                                          ; $61b9: $23
	inc  [hl]                                        ; $61ba: $34
	ld   l, b                                        ; $61bb: $68
	xor  h                                           ; $61bc: $ac
	adc  $ff                                         ; $61bd: $ce $ff
	cp   $fe                                         ; $61bf: $fe $fe
	db   $dd                                         ; $61c1: $dd
	call c, $aadb                                    ; $61c2: $dc $db $aa
	xor  d                                           ; $61c5: $aa
	sub  a                                           ; $61c6: $97
	halt                                             ; $61c7: $76
	ld   h, l                                        ; $61c8: $65
	ld   b, e                                        ; $61c9: $43
	inc  sp                                          ; $61ca: $33
	ld   hl, $2211                                   ; $61cb: $21 $11 $22
	inc  hl                                          ; $61ce: $23
	ld   b, l                                        ; $61cf: $45
	ld   h, a                                        ; $61d0: $67
	sbc  d                                           ; $61d1: $9a
	cp   e                                           ; $61d2: $bb
	call $ffef                                       ; $61d3: $cd $ef $ff
	rst  $38                                         ; $61d6: $ff
	cp   $dc                                         ; $61d7: $fe $dc
	res  5, d                                        ; $61d9: $cb $aa
	xor  c                                           ; $61db: $a9
	add  a                                           ; $61dc: $87
	ld   h, l                                        ; $61dd: $65
	ld   b, e                                        ; $61de: $43
	ld   [hl+], a                                    ; $61df: $22
	ld   de, $1111                                   ; $61e0: $11 $11 $11
	ld   de, $5734                                   ; $61e3: $11 $34 $57
	adc  d                                           ; $61e6: $8a
	call $ffef                                       ; $61e7: $cd $ef $ff
	rst  $38                                         ; $61ea: $ff
	rst  $38                                         ; $61eb: $ff
	rst  $38                                         ; $61ec: $ff
	call c, $a8ca                                    ; $61ed: $dc $ca $a8
	ld   [hl], a                                     ; $61f0: $77
	ld   d, l                                        ; $61f1: $55
	ld   b, e                                        ; $61f2: $43
	ld   hl, $1111                                   ; $61f3: $21 $11 $11
	ld   de, $1311                                   ; $61f6: $11 $11 $13
	ld   b, [hl]                                     ; $61f9: $46
	adc  d                                           ; $61fa: $8a
	adc  $ff                                         ; $61fb: $ce $ff
	rst  $38                                         ; $61fd: $ff
	rst  $38                                         ; $61fe: $ff
	rst  $38                                         ; $61ff: $ff
	rst  $38                                         ; $6200: $ff
	db   $ec                                         ; $6201: $ec
	cp   e                                           ; $6202: $bb
	sbc  b                                           ; $6203: $98
	halt                                             ; $6204: $76
	ld   d, e                                        ; $6205: $53
	ld   hl, $1111                                   ; $6206: $21 $11 $11
	ld   de, $1111                                   ; $6209: $11 $11 $11
	dec  [hl]                                        ; $620c: $35
	ld   a, c                                        ; $620d: $79
	cp   [hl]                                        ; $620e: $be
	rst  $38                                         ; $620f: $ff
	rst  $38                                         ; $6210: $ff
	rst  $38                                         ; $6211: $ff
	rst  $38                                         ; $6212: $ff
	rst  $38                                         ; $6213: $ff
	db   $ed                                         ; $6214: $ed
	cp   c                                           ; $6215: $b9
	sub  a                                           ; $6216: $97
	ld   h, l                                        ; $6217: $65
	ld   [hl-], a                                    ; $6218: $32
	ld   de, $1111                                   ; $6219: $11 $11 $11
	ld   de, $3511                                   ; $621c: $11 $11 $35
	ld   a, b                                        ; $621f: $78
	cp   l                                           ; $6220: $bd
	rst  $28                                         ; $6221: $ef
	rst  $38                                         ; $6222: $ff
	rst  $38                                         ; $6223: $ff
	rst  $38                                         ; $6224: $ff
	rst  $38                                         ; $6225: $ff
	db   $ec                                         ; $6226: $ec
	cp   d                                           ; $6227: $ba
	sub  a                                           ; $6228: $97
	ld   h, h                                        ; $6229: $64
	ld   sp, $1101                                   ; $622a: $31 $01 $11
	ld   de, $1211                                   ; $622d: $11 $11 $12
	ld   b, [hl]                                     ; $6230: $46
	ld   a, d                                        ; $6231: $7a
	call $ffff                                       ; $6232: $cd $ff $ff
	rst  $38                                         ; $6235: $ff
	rst  $38                                         ; $6236: $ff
	rst  $38                                         ; $6237: $ff
	db   $db                                         ; $6238: $db
	xor  c                                           ; $6239: $a9
	halt                                             ; $623a: $76
	ld   b, e                                        ; $623b: $43
	ld   hl, $1111                                   ; $623c: $21 $11 $11
	ld   de, $2311                                   ; $623f: $11 $11 $23
	ld   d, a                                        ; $6242: $57
	sbc  e                                           ; $6243: $9b
	adc  $ff                                         ; $6244: $ce $ff
	rst  $38                                         ; $6246: $ff
	rst  $38                                         ; $6247: $ff
	rst  $38                                         ; $6248: $ff
	cp   $db                                         ; $6249: $fe $db
	sbc  b                                           ; $624b: $98
	ld   h, l                                        ; $624c: $65
	ld   b, d                                        ; $624d: $42
	ld   de, $1111                                   ; $624e: $11 $11 $11
	ld   de, $2411                                   ; $6251: $11 $11 $24
	ld   l, b                                        ; $6254: $68
	xor  h                                           ; $6255: $ac
	rst  $28                                         ; $6256: $ef
	rst  $38                                         ; $6257: $ff
	rst  $38                                         ; $6258: $ff
	rst  $38                                         ; $6259: $ff
	rst  $38                                         ; $625a: $ff
	cp   $da                                         ; $625b: $fe $da
	sub  [hl]                                        ; $625d: $96
	ld   b, e                                        ; $625e: $43
	ld   de, $1111                                   ; $625f: $11 $11 $11
	ld   de, $1211                                   ; $6262: $11 $11 $12
	ld   [hl], $9b                                   ; $6265: $36 $9b
	rst  JumpTable                                         ; $6267: $df
	rst  $38                                         ; $6268: $ff
	rst  $38                                         ; $6269: $ff
	rst  $38                                         ; $626a: $ff
	rst  $38                                         ; $626b: $ff
	rst  $38                                         ; $626c: $ff
	db   $ec                                         ; $626d: $ec
	and  a                                           ; $626e: $a7
	ld   d, e                                        ; $626f: $53
	ld   hl, $1111                                   ; $6270: $21 $11 $11
	ld   de, $1111                                   ; $6273: $11 $11 $11
	dec  [hl]                                        ; $6276: $35
	adc  c                                           ; $6277: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6278: $cf
	rst  $38                                         ; $6279: $ff
	rst  $38                                         ; $627a: $ff
	rst  $38                                         ; $627b: $ff
	rst  $38                                         ; $627c: $ff
	rst  $38                                         ; $627d: $ff
	db   $fc                                         ; $627e: $fc
	and  a                                           ; $627f: $a7
	ld   d, e                                        ; $6280: $53
	ld   hl, $1111                                   ; $6281: $21 $11 $11
	ld   de, $1111                                   ; $6284: $11 $11 $11
	ld   [hl], $8a                                   ; $6287: $36 $8a
	rst  JumpTable                                         ; $6289: $df
	rst  $38                                         ; $628a: $ff
	rst  $38                                         ; $628b: $ff
	rst  $38                                         ; $628c: $ff
	rst  $38                                         ; $628d: $ff
	rst  $38                                         ; $628e: $ff
	res  2, [hl]                                     ; $628f: $cb $96
	ld   [hl-], a                                    ; $6291: $32
	ld   de, $1111                                   ; $6292: $11 $11 $11
	ld   de, $3611                                   ; $6295: $11 $11 $36
	sbc  h                                           ; $6298: $9c
	rst  $28                                         ; $6299: $ef
	rst  $38                                         ; $629a: $ff
	rst  $38                                         ; $629b: $ff
	rst  $38                                         ; $629c: $ff
	rst  $38                                         ; $629d: $ff
	rst  $38                                         ; $629e: $ff
	jp   c, $1173                                    ; $629f: $da $73 $11

	ld   de, $1111                                   ; $62a2: $11 $11 $11
	ld   de, $7e14                                   ; $62a5: $11 $14 $7e
	rst  $38                                         ; $62a8: $ff
	rst  $38                                         ; $62a9: $ff
	rst  $38                                         ; $62aa: $ff
	rst  $38                                         ; $62ab: $ff
	rst  $38                                         ; $62ac: $ff
	call c, Call_0c1_63a8                            ; $62ad: $dc $a8 $63
	ld   de, $1111                                   ; $62b0: $11 $11 $11
	ld   de, $2611                                   ; $62b3: $11 $11 $26
	cp   [hl]                                        ; $62b6: $be
	rst  $38                                         ; $62b7: $ff
	rst  $38                                         ; $62b8: $ff
	rst  $38                                         ; $62b9: $ff
	rst  $38                                         ; $62ba: $ff
	rst  $38                                         ; $62bb: $ff
	db   $fd                                         ; $62bc: $fd
	and  a                                           ; $62bd: $a7
	ld   hl, $1111                                   ; $62be: $21 $11 $11
	ld   de, $3611                                   ; $62c1: $11 $11 $36
	adc  $ff                                         ; $62c4: $ce $ff
	rst  $38                                         ; $62c6: $ff
	rst  $38                                         ; $62c7: $ff
	rst  $38                                         ; $62c8: $ff
	rst  $38                                         ; $62c9: $ff
	rst  $38                                         ; $62ca: $ff
	ret                                              ; $62cb: $c9


	ld   b, c                                        ; $62cc: $41
	ld   de, $1111                                   ; $62cd: $11 $11 $11
	ld   de, $bf15                                   ; $62d0: $11 $15 $bf
	rst  $38                                         ; $62d3: $ff
	rst  $38                                         ; $62d4: $ff
	rst  $38                                         ; $62d5: $ff
	rst  $38                                         ; $62d6: $ff
	rst  $38                                         ; $62d7: $ff
	rst  $38                                         ; $62d8: $ff
	db   $fd                                         ; $62d9: $fd
	sub  c                                           ; $62da: $91
	ld   de, $1111                                   ; $62db: $11 $11 $11
	ld   de, $bf13                                   ; $62de: $11 $13 $bf
	rst  $38                                         ; $62e1: $ff
	rst  $38                                         ; $62e2: $ff
	rst  $38                                         ; $62e3: $ff
	rst  $38                                         ; $62e4: $ff
	rst  $38                                         ; $62e5: $ff
	rst  $38                                         ; $62e6: $ff
	db   $fc                                         ; $62e7: $fc
	ld   [hl], c                                     ; $62e8: $71
	ld   de, $1111                                   ; $62e9: $11 $11 $11
	ld   de, $ff17                                   ; $62ec: $11 $17 $ff
	rst  $38                                         ; $62ef: $ff
	rst  $38                                         ; $62f0: $ff
	rst  $38                                         ; $62f1: $ff
	rst  $38                                         ; $62f2: $ff
	rst  $38                                         ; $62f3: $ff
	sbc  $ba                                         ; $62f4: $de $ba
	ld   de, $1111                                   ; $62f6: $11 $11 $11
	ld   de, $af14                                   ; $62f9: $11 $14 $af
	rst  $38                                         ; $62fc: $ff
	rst  $38                                         ; $62fd: $ff
	rst  $38                                         ; $62fe: $ff
	rst  $38                                         ; $62ff: $ff
	rst  $38                                         ; $6300: $ff
	rst  $38                                         ; $6301: $ff
	call c, $1171                                    ; $6302: $dc $71 $11
	ld   de, $1111                                   ; $6305: $11 $11 $11
	ld   e, h                                        ; $6308: $5c
	rst  $38                                         ; $6309: $ff
	rst  $38                                         ; $630a: $ff
	rst  $38                                         ; $630b: $ff
	rst  $38                                         ; $630c: $ff
	rst  $38                                         ; $630d: $ff
	db   $fd                                         ; $630e: $fd
	call z, $11a4                                    ; $630f: $cc $a4 $11
	ld   de, $1111                                   ; $6312: $11 $11 $11
	dec  a                                           ; $6315: $3d
	rst  $38                                         ; $6316: $ff
	rst  $38                                         ; $6317: $ff
	rst  $38                                         ; $6318: $ff
	rst  $38                                         ; $6319: $ff
	rst  $38                                         ; $631a: $ff
	rst  $38                                         ; $631b: $ff
	res  4, l                                        ; $631c: $cb $a5
	ld   de, $1111                                   ; $631e: $11 $11 $11
	ld   [de], a                                     ; $6321: $12
	inc  a                                           ; $6322: $3c
	rst  $38                                         ; $6323: $ff
	rst  $38                                         ; $6324: $ff
	rst  $38                                         ; $6325: $ff
	rst  $38                                         ; $6326: $ff
	rst  $38                                         ; $6327: $ff
	db   $fd                                         ; $6328: $fd
	cp   e                                           ; $6329: $bb
	and  [hl]                                        ; $632a: $a6
	ld   de, $1111                                   ; $632b: $11 $11 $11
	inc  d                                           ; $632e: $14
	ld   a, h                                        ; $632f: $7c
	rst  $38                                         ; $6330: $ff
	rst  $38                                         ; $6331: $ff
	rst  $38                                         ; $6332: $ff
	rst  $38                                         ; $6333: $ff
	rst  $38                                         ; $6334: $ff
	db   $fd                                         ; $6335: $fd
	res  0, c                                        ; $6336: $cb $81
	ld   de, $1111                                   ; $6338: $11 $11 $11
	inc  [hl]                                        ; $633b: $34
	ld   a, a                                        ; $633c: $7f
	rst  $38                                         ; $633d: $ff
	rst  $38                                         ; $633e: $ff
	rst  $38                                         ; $633f: $ff
	rst  $38                                         ; $6340: $ff
	rst  $38                                         ; $6341: $ff
	db   $eb                                         ; $6342: $eb
	and  a                                           ; $6343: $a7
	ld   sp, $1111                                   ; $6344: $31 $11 $11
	ld   a, [hl+]                                    ; $6347: $2a
	and  [hl]                                        ; $6348: $a6
	rst  JumpTable                                         ; $6349: $df
	rst  $38                                         ; $634a: $ff
	rst  $38                                         ; $634b: $ff
	rst  $38                                         ; $634c: $ff
	rst  $38                                         ; $634d: $ff
	rst  $38                                         ; $634e: $ff
	rst  ToBoot                                         ; $634f: $c7
	ld   d, e                                        ; $6350: $53
	ld   de, $1211                                   ; $6351: $11 $11 $12
	and  [hl]                                        ; $6354: $a6
	ccf                                              ; $6355: $3f
	rst  $38                                         ; $6356: $ff
	rst  $38                                         ; $6357: $ff
	rst  $38                                         ; $6358: $ff
	rst  $38                                         ; $6359: $ff
	rst  $38                                         ; $635a: $ff
	db   $fd                                         ; $635b: $fd
	ld   h, e                                        ; $635c: $63
	ld   de, $1111                                   ; $635d: $11 $11 $11
	xor  h                                           ; $6360: $ac
	halt                                             ; $6361: $76
	rst  $38                                         ; $6362: $ff
	rst  $38                                         ; $6363: $ff
	rst  $38                                         ; $6364: $ff
	rst  $38                                         ; $6365: $ff
	rst  $38                                         ; $6366: $ff
	cp   $72                                         ; $6367: $fe $72
	ld   de, $1111                                   ; $6369: $11 $11 $11
	cp   a                                           ; $636c: $bf
	add  $df                                         ; $636d: $c6 $df
	rst  $38                                         ; $636f: $ff
	rst  $28                                         ; $6370: $ef
	rst  $38                                         ; $6371: $ff
	rst  $38                                         ; $6372: $ff
	db   $fd                                         ; $6373: $fd
	sub  d                                           ; $6374: $92
	ld   de, $1111                                   ; $6375: $11 $11 $11
	xor  a                                           ; $6378: $af
	add  sp, -$01                                    ; $6379: $e8 $ff
	rst  $38                                         ; $637b: $ff
	rst  $38                                         ; $637c: $ff
	rst  $38                                         ; $637d: $ff
	rst  $38                                         ; $637e: $ff
	ei                                               ; $637f: $fb
	ld   [hl], d                                     ; $6380: $72
	ld   de, $1611                                   ; $6381: $11 $11 $16
	rst  $38                                         ; $6384: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6385: $cf
	rst  $38                                         ; $6386: $ff
	rst  $38                                         ; $6387: $ff
	rst  $28                                         ; $6388: $ef
	rst  $38                                         ; $6389: $ff
	rst  $38                                         ; $638a: $ff
	add  $11                                         ; $638b: $c6 $11
	ld   de, $1f11                                   ; $638d: $11 $11 $1f
	rst  $38                                         ; $6390: $ff
	cp   [hl]                                        ; $6391: $be
	rst  $38                                         ; $6392: $ff
	db   $fc                                         ; $6393: $fc
	rst  $38                                         ; $6394: $ff
	rst  $38                                         ; $6395: $ff
	db   $fd                                         ; $6396: $fd
	add  d                                           ; $6397: $82
	ld   de, $1111                                   ; $6398: $11 $11 $11
	rst  $38                                         ; $639b: $ff
	cp   $ff                                         ; $639c: $fe $ff
	rst  $38                                         ; $639e: $ff
	rst  $38                                         ; $639f: $ff
	rst  $38                                         ; $63a0: $ff
	rst  $38                                         ; $63a1: $ff
	sub  l                                           ; $63a2: $95
	ld   de, $1111                                   ; $63a3: $11 $11 $11
	ld   e, a                                        ; $63a6: $5f
	rst  $38                                         ; $63a7: $ff

Call_0c1_63a8:
	rst  JumpTable                                         ; $63a8: $df
	rst  $38                                         ; $63a9: $ff
	rst  $38                                         ; $63aa: $ff
	rst  $38                                         ; $63ab: $ff
	rst  $38                                         ; $63ac: $ff
	ld   sp, hl                                      ; $63ad: $f9
	ld   d, c                                        ; $63ae: $51
	ld   de, $1c11                                   ; $63af: $11 $11 $1c
	rst  $38                                         ; $63b2: $ff
	rst  $38                                         ; $63b3: $ff
	rst  $38                                         ; $63b4: $ff
	rst  $38                                         ; $63b5: $ff
	rst  $38                                         ; $63b6: $ff
	rst  $38                                         ; $63b7: $ff
	db   $fd                                         ; $63b8: $fd
	ld   d, c                                        ; $63b9: $51
	ld   de, $1d11                                   ; $63ba: $11 $11 $1d
	rst  $38                                         ; $63bd: $ff
	rst  $28                                         ; $63be: $ef
	rst  $38                                         ; $63bf: $ff
	db   $ec                                         ; $63c0: $ec
	rst  $28                                         ; $63c1: $ef
	rst  $38                                         ; $63c2: $ff
	ei                                               ; $63c3: $fb
	ld   d, c                                        ; $63c4: $51
	ld   de, $1f11                                   ; $63c5: $11 $11 $1f
	rst  $38                                         ; $63c8: $ff
	rst  $28                                         ; $63c9: $ef
	rst  $38                                         ; $63ca: $ff
	set  7, a                                        ; $63cb: $cb $ff
	rst  $38                                         ; $63cd: $ff
	ld   sp, hl                                      ; $63ce: $f9
	ld   hl, $1111                                   ; $63cf: $21 $11 $11
	ld   l, a                                        ; $63d2: $6f
	rst  $38                                         ; $63d3: $ff
	rst  $38                                         ; $63d4: $ff
	rst  $38                                         ; $63d5: $ff
	call $ffff                                       ; $63d6: $cd $ff $ff
	pop  de                                          ; $63d9: $d1
	ld   de, $1111                                   ; $63da: $11 $11 $11
	rst  $38                                         ; $63dd: $ff
	cp   $bf                                         ; $63de: $fe $bf
	rst  $38                                         ; $63e0: $ff
	xor  [hl]                                        ; $63e1: $ae
	rst  $38                                         ; $63e2: $ff
	rst  $38                                         ; $63e3: $ff
	ld   b, c                                        ; $63e4: $41
	ld   de, $1a11                                   ; $63e5: $11 $11 $1a
	rst  $38                                         ; $63e8: $ff
	cp   $ff                                         ; $63e9: $fe $ff
	db   $fd                                         ; $63eb: $fd
	xor  a                                           ; $63ec: $af
	rst  $38                                         ; $63ed: $ff
	or   $11                                         ; $63ee: $f6 $11
	ld   de, $cf11                                   ; $63f0: $11 $11 $cf
	rst  $38                                         ; $63f3: $ff
	call $ddff                                       ; $63f4: $cd $ff $dd
	rst  $38                                         ; $63f7: $ff
	rst  $38                                         ; $63f8: $ff
	ld   h, c                                        ; $63f9: $61
	ld   de, $1e11                                   ; $63fa: $11 $11 $1e
	rst  $38                                         ; $63fd: $ff
	cp   $ff                                         ; $63fe: $fe $ff
	ei                                               ; $6400: $fb
	sbc  a                                           ; $6401: $9f
	rst  $38                                         ; $6402: $ff
	di                                               ; $6403: $f3
	ld   de, $1111                                   ; $6404: $11 $11 $11
	rst  $38                                         ; $6407: $ff
	rst  $38                                         ; $6408: $ff
	ld   a, h                                        ; $6409: $7c
	rst  $38                                         ; $640a: $ff
	db   $ec                                         ; $640b: $ec
	rst  $38                                         ; $640c: $ff
	rst  $38                                         ; $640d: $ff
	ld   de, $1111                                   ; $640e: $11 $11 $11
	ld   a, a                                        ; $6411: $7f
	rst  $38                                         ; $6412: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6413: $cf
	cp   $cd                                         ; $6414: $fe $cd
	rst  $38                                         ; $6416: $ff
	rst  $38                                         ; $6417: $ff
	ld   b, c                                        ; $6418: $41
	ld   de, $1f11                                   ; $6419: $11 $11 $1f
	rst  $38                                         ; $641c: $ff
	rst  $38                                         ; $641d: $ff
	rst  $38                                         ; $641e: $ff
	ld   sp, hl                                      ; $641f: $f9
	rst  JumpTable                                         ; $6420: $df
	rst  $38                                         ; $6421: $ff
	pop  af                                          ; $6422: $f1
	ld   de, $1f11                                   ; $6423: $11 $11 $1f
	rst  $38                                         ; $6426: $ff
	rst  $38                                         ; $6427: $ff
	db   $fd                                         ; $6428: $fd
	call z, $ffff                                    ; $6429: $cc $ff $ff
	pop  af                                          ; $642c: $f1
	ld   de, $1f11                                   ; $642d: $11 $11 $1f
	rst  $38                                         ; $6430: $ff
	rst  $38                                         ; $6431: $ff
	db   $eb                                         ; $6432: $eb
	xor  l                                           ; $6433: $ad
	rst  $38                                         ; $6434: $ff
	rst  $38                                         ; $6435: $ff
	pop  af                                          ; $6436: $f1
	ld   de, $1f11                                   ; $6437: $11 $11 $1f
	rst  $38                                         ; $643a: $ff
	cp   $ed                                         ; $643b: $fe $ed
	call $ffff                                       ; $643d: $cd $ff $ff
	pop  bc                                          ; $6440: $c1
	ld   de, $2f11                                   ; $6441: $11 $11 $2f
	rst  $38                                         ; $6444: $ff
	db   $fd                                         ; $6445: $fd
	db   $ed                                         ; $6446: $ed
	rst  JumpTable                                         ; $6447: $df
	rst  $38                                         ; $6448: $ff
	rst  $38                                         ; $6449: $ff
	ld   b, c                                        ; $644a: $41
	ld   de, rAUD1LEN                                   ; $644b: $11 $11 $ff
	rst  $38                                         ; $644e: $ff
	cp   $ff                                         ; $644f: $fe $ff
	rst  $38                                         ; $6451: $ff
	rst  $38                                         ; $6452: $ff
	rst  $38                                         ; $6453: $ff
	ld   de, $1511                                   ; $6454: $11 $11 $15
	rst  $38                                         ; $6457: $ff
	rst  $38                                         ; $6458: $ff
	sbc  $ff                                         ; $6459: $de $ff
	rst  $38                                         ; $645b: $ff
	rst  $38                                         ; $645c: $ff
	pop  af                                          ; $645d: $f1
	ld   de, $6f11                                   ; $645e: $11 $11 $6f
	rst  $38                                         ; $6461: $ff
	rst  $38                                         ; $6462: $ff
	rst  JumpTable                                         ; $6463: $df
	rst  $38                                         ; $6464: $ff
	rst  $38                                         ; $6465: $ff
	rst  $38                                         ; $6466: $ff
	ld   sp, $1111                                   ; $6467: $31 $11 $11
	rst  $38                                         ; $646a: $ff
	rst  $38                                         ; $646b: $ff
	call $ffdf                                       ; $646c: $cd $df $ff
	rst  $38                                         ; $646f: $ff
	ldh  a, [c]                                      ; $6470: $f2
	ld   de, $1f11                                   ; $6471: $11 $11 $1f
	rst  $38                                         ; $6474: $ff
	db   $fc                                         ; $6475: $fc
	sbc  d                                           ; $6476: $9a
	rst  $38                                         ; $6477: $ff
	rst  $38                                         ; $6478: $ff
	rst  $38                                         ; $6479: $ff
	ld   de, $1111                                   ; $647a: $11 $11 $11
	rst  $38                                         ; $647d: $ff
	db   $fd                                         ; $647e: $fd
	ld   l, e                                        ; $647f: $6b
	rst  $38                                         ; $6480: $ff
	rst  $38                                         ; $6481: $ff
	rst  $38                                         ; $6482: $ff
	pop  af                                          ; $6483: $f1
	ld   de, $5f11                                   ; $6484: $11 $11 $5f
	rst  $38                                         ; $6487: $ff
	or   a                                           ; $6488: $b7
	ld   a, a                                        ; $6489: $7f
	rst  $38                                         ; $648a: $ff
	rst  $38                                         ; $648b: $ff
	db   $fd                                         ; $648c: $fd
	ld   de, $1f11                                   ; $648d: $11 $11 $1f
	rst  $38                                         ; $6490: $ff
	ld   a, [$ff58]                                  ; $6491: $fa $58 $ff
	rst  $38                                         ; $6494: $ff
	rst  $38                                         ; $6495: $ff
	ld   sp, $1111                                   ; $6496: $31 $11 $11
	rst  $38                                         ; $6499: $ff
	rst  $38                                         ; $649a: $ff
	ld   d, l                                        ; $649b: $55
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $649c: $cf
	rst  $38                                         ; $649d: $ff
	rst  $38                                         ; $649e: $ff
	pop  af                                          ; $649f: $f1
	ld   de, $6f11                                   ; $64a0: $11 $11 $6f
	rst  $38                                         ; $64a3: $ff
	ret  c                                           ; $64a4: $d8

	ld   l, h                                        ; $64a5: $6c
	rst  $38                                         ; $64a6: $ff
	rst  $38                                         ; $64a7: $ff
	ld   hl, sp+$11                                  ; $64a8: $f8 $11
	ld   de, $ff1f                                   ; $64aa: $11 $1f $ff
	ret  c                                           ; $64ad: $d8

	xor  $ff                                         ; $64ae: $ee $ff
	rst  $38                                         ; $64b0: $ff
	rst  $38                                         ; $64b1: $ff
	ld   de, $1c11                                   ; $64b2: $11 $11 $1c
	rst  $38                                         ; $64b5: $ff
	push af                                          ; $64b6: $f5
	ld   c, l                                        ; $64b7: $4d
	rst  $38                                         ; $64b8: $ff
	rst  $38                                         ; $64b9: $ff
	rst  $38                                         ; $64ba: $ff
	ld   d, c                                        ; $64bb: $51
	ld   de, $ff16                                   ; $64bc: $11 $16 $ff
	ld   a, [$cf79]                                  ; $64bf: $fa $79 $cf
	rst  $38                                         ; $64c2: $ff
	rst  $38                                         ; $64c3: $ff
	ld   [hl], c                                     ; $64c4: $71
	ld   de, rAUD1LEN                                   ; $64c5: $11 $11 $ff
	rst  $38                                         ; $64c8: $ff
	add  [hl]                                        ; $64c9: $86
	sbc  a                                           ; $64ca: $9f
	rst  $38                                         ; $64cb: $ff
	rst  $38                                         ; $64cc: $ff
	pop  af                                          ; $64cd: $f1
	ld   de, rAUD1LEN                                   ; $64ce: $11 $11 $ff
	cp   $75                                         ; $64d1: $fe $75
	cp   a                                           ; $64d3: $bf
	rst  $38                                         ; $64d4: $ff
	rst  $38                                         ; $64d5: $ff
	pop  af                                          ; $64d6: $f1
	ld   de, $bf11                                   ; $64d7: $11 $11 $bf
	cp   $9a                                         ; $64da: $fe $9a
	rst  $28                                         ; $64dc: $ef
	rst  $38                                         ; $64dd: $ff
	rst  $38                                         ; $64de: $ff
	ldh  a, [c]                                      ; $64df: $f2
	ld   de, $af11                                   ; $64e0: $11 $11 $af
	db   $fc                                         ; $64e3: $fc
	ld   l, b                                        ; $64e4: $68
	rst  $28                                         ; $64e5: $ef
	rst  $38                                         ; $64e6: $ff
	rst  $38                                         ; $64e7: $ff
	ldh  a, [c]                                      ; $64e8: $f2
	ld   de, $1d11                                   ; $64e9: $11 $11 $1d
	rst  $38                                         ; $64ec: $ff
	sub  a                                           ; $64ed: $97
	cp   a                                           ; $64ee: $bf
	rst  $38                                         ; $64ef: $ff
	rst  $38                                         ; $64f0: $ff
	ld   sp, hl                                      ; $64f1: $f9
	ld   de, $1f11                                   ; $64f2: $11 $11 $1f
	rst  $38                                         ; $64f5: $ff
	or   h                                           ; $64f6: $b4
	ld   l, a                                        ; $64f7: $6f
	rst  $38                                         ; $64f8: $ff
	rst  $38                                         ; $64f9: $ff
	ld   sp, hl                                      ; $64fa: $f9
	ld   de, $1b11                                   ; $64fb: $11 $11 $1b
	rst  $38                                         ; $64fe: $ff
	add  $8f                                         ; $64ff: $c6 $8f
	rst  $38                                         ; $6501: $ff
	rst  $38                                         ; $6502: $ff
	ld   sp, hl                                      ; $6503: $f9
	ld   de, $1111                                   ; $6504: $11 $11 $11
	rst  $38                                         ; $6507: $ff
	rst  $30                                         ; $6508: $f7
	ld   c, d                                        ; $6509: $4a
	rst  $38                                         ; $650a: $ff
	rst  $38                                         ; $650b: $ff
	cp   d                                           ; $650c: $ba
	ld   sp, $1611                                   ; $650d: $31 $11 $16
	rst  $38                                         ; $6510: $ff
	add  h                                           ; $6511: $84
	ld   a, l                                        ; $6512: $7d
	rst  $38                                         ; $6513: $ff
	rst  $38                                         ; $6514: $ff
	ld   [$1151], a                                  ; $6515: $ea $51 $11
	ld   [de], a                                     ; $6518: $12
	rst  $38                                         ; $6519: $ff
	push de                                          ; $651a: $d5
	rla                                              ; $651b: $17
	rst  $38                                         ; $651c: $ff
	rst  $38                                         ; $651d: $ff
	ei                                               ; $651e: $fb
	ld   sp, $1111                                   ; $651f: $31 $11 $11
	dec  sp                                          ; $6522: $3b
	call c, $ef74                                    ; $6523: $dc $74 $ef
	rst  $38                                         ; $6526: $ff
	ld   sp, hl                                      ; $6527: $f9
	ld   b, h                                        ; $6528: $44
	ld   de, $1b11                                   ; $6529: $11 $11 $1b
	db   $eb                                         ; $652c: $eb
	halt                                             ; $652d: $76
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $652e: $cf
	rst  $38                                         ; $652f: $ff
	cp   $87                                         ; $6530: $fe $87
	ld   sp, $1611                                   ; $6532: $31 $11 $16
	call $6f94                                       ; $6535: $cd $94 $6f
	rst  $38                                         ; $6538: $ff
	db   $fc                                         ; $6539: $fc
	ld   c, b                                        ; $653a: $48
	ld   h, c                                        ; $653b: $61
	ld   de, $8811                                   ; $653c: $11 $11 $88
	ld   d, l                                        ; $653f: $55
	sbc  a                                           ; $6540: $9f
	rst  $38                                         ; $6541: $ff
	db   $fc                                         ; $6542: $fc
	jr   z, @-$05                                    ; $6543: $28 $f9

	ld   de, $4211                                   ; $6545: $11 $11 $42
	inc  d                                           ; $6548: $14
	rst  $28                                         ; $6549: $ef
	rst  $38                                         ; $654a: $ff
	rst  $38                                         ; $654b: $ff
	ld   a, b                                        ; $654c: $78
	xor  a                                           ; $654d: $af
	sub  c                                           ; $654e: $91
	ld   de, $5315                                   ; $654f: $11 $15 $53
	dec  sp                                          ; $6552: $3b
	rst  $38                                         ; $6553: $ff
	rst  $38                                         ; $6554: $ff
	rst  $20                                         ; $6555: $e7
	call $11b3                                       ; $6556: $cd $b3 $11
	ld   de, $8d11                                   ; $6559: $11 $11 $8d
	cp   c                                           ; $655c: $b9
	rst  $38                                         ; $655d: $ff
	db   $fc                                         ; $655e: $fc
	ld   l, d                                        ; $655f: $6a
	db   $ed                                         ; $6560: $ed
	ld   h, c                                        ; $6561: $61
	ld   de, $1711                                   ; $6562: $11 $11 $17
	jp   z, $ff7b                                    ; $6565: $ca $7b $ff

	ei                                               ; $6568: $fb
	ld   [hl], l                                     ; $6569: $75
	xor  l                                           ; $656a: $ad
	or   d                                           ; $656b: $b2
	ld   de, $a817                                   ; $656c: $11 $17 $a8
	ld   h, a                                        ; $656f: $67
	sbc  a                                           ; $6570: $9f
	rst  $38                                         ; $6571: $ff
	ld   [$da68], a                                  ; $6572: $ea $68 $da
	ld   sp, $6613                                   ; $6575: $31 $13 $66
	ld   h, l                                        ; $6578: $65
	halt                                             ; $6579: $76
	ld   a, a                                        ; $657a: $7f
	rst  $38                                         ; $657b: $ff
	or   h                                           ; $657c: $b4
	ld   a, b                                        ; $657d: $78
	call z, $1281                                    ; $657e: $cc $81 $12
	ld   d, d                                        ; $6581: $52
	ld   c, d                                        ; $6582: $4a
	and  l                                           ; $6583: $a5
	ld   e, l                                        ; $6584: $5d
	rst  $38                                         ; $6585: $ff
	or   h                                           ; $6586: $b4
	scf                                              ; $6587: $37
	rst  $38                                         ; $6588: $ff
	pop  bc                                          ; $6589: $c1
	ld   [de], a                                     ; $658a: $12
	ld   h, l                                        ; $658b: $65
	ld   h, [hl]                                     ; $658c: $66
	ld   h, a                                        ; $658d: $67
	ld   l, l                                        ; $658e: $6d
	rst  $38                                         ; $658f: $ff
	db   $e3                                         ; $6590: $e3
	ld   a, [hl-]                                    ; $6591: $3a
	rst  $38                                         ; $6592: $ff
	ld   sp, $7329                                   ; $6593: $31 $29 $73
	ld   de, $b86d                                   ; $6596: $11 $6d $b8
	cp   h                                           ; $6599: $bc
	ei                                               ; $659a: $fb
	cp   h                                           ; $659b: $bc
	xor  h                                           ; $659c: $ac
	cp   b                                           ; $659d: $b8
	ld   de, $4556                                   ; $659e: $11 $56 $45
	ld   d, c                                        ; $65a1: $51
	add  hl, sp                                      ; $65a2: $39
	cp   e                                           ; $65a3: $bb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65a4: $cf
	jp   hl                                          ; $65a5: $e9


	xor  b                                           ; $65a6: $a8
	adc  c                                           ; $65a7: $89
	cp   b                                           ; $65a8: $b8
	ld   b, l                                        ; $65a9: $45
	ld   d, d                                        ; $65aa: $52
	ld   h, $78                                      ; $65ab: $26 $78
	adc  b                                           ; $65ad: $88
	call z, $bbca                                    ; $65ae: $cc $ca $bb
	cp   d                                           ; $65b1: $ba
	add  a                                           ; $65b2: $87
	ld   b, l                                        ; $65b3: $45
	ld   d, [hl]                                     ; $65b4: $56
	halt                                             ; $65b5: $76
	ld   a, c                                        ; $65b6: $79
	ld   [hl], d                                     ; $65b7: $72
	ld   c, e                                        ; $65b8: $4b
	db   $fd                                         ; $65b9: $fd
	ld   h, [hl]                                     ; $65ba: $66
	xor  l                                           ; $65bb: $ad
	and  a                                           ; $65bc: $a7
	adc  c                                           ; $65bd: $89
	add  [hl]                                        ; $65be: $86
	ld   l, c                                        ; $65bf: $69
	halt                                             ; $65c0: $76
	adc  d                                           ; $65c1: $8a
	ld   [hl], l                                     ; $65c2: $75
	ld   d, a                                        ; $65c3: $57
	adc  e                                           ; $65c4: $8b
	call c, $8d75                                    ; $65c5: $dc $75 $8d
	reti                                             ; $65c8: $d9


	ld   b, l                                        ; $65c9: $45
	ld   h, a                                        ; $65ca: $67
	xor  e                                           ; $65cb: $ab
	ld   [hl], e                                     ; $65cc: $73
	ld   d, a                                        ; $65cd: $57
	sbc  b                                           ; $65ce: $98
	adc  c                                           ; $65cf: $89
	cp   d                                           ; $65d0: $ba
	ld   [hl], h                                     ; $65d1: $74
	ld   e, d                                        ; $65d2: $5a
	db   $fd                                         ; $65d3: $fd
	add  h                                           ; $65d4: $84
	ld   e, b                                        ; $65d5: $58
	sbc  d                                           ; $65d6: $9a
	xor  d                                           ; $65d7: $aa
	ld   [hl], e                                     ; $65d8: $73
	inc  d                                           ; $65d9: $14
	cp   [hl]                                        ; $65da: $be
	sub  l                                           ; $65db: $95
	ld   d, a                                        ; $65dc: $57
	cp   c                                           ; $65dd: $b9
	ld   h, a                                        ; $65de: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65df: $cf
	or   h                                           ; $65e0: $b4
	ld   e, b                                        ; $65e1: $58
	xor  d                                           ; $65e2: $aa
	add  a                                           ; $65e3: $87
	ld   a, c                                        ; $65e4: $79
	sub  l                                           ; $65e5: $95
	ld   l, b                                        ; $65e6: $68
	jp   z, $8b87                                    ; $65e7: $ca $87 $8b

	xor  b                                           ; $65ea: $a8
	add  a                                           ; $65eb: $87
	ld   a, c                                        ; $65ec: $79
	cp   d                                           ; $65ed: $ba
	add  a                                           ; $65ee: $87
	ld   h, a                                        ; $65ef: $67
	add  a                                           ; $65f0: $87
	ld   a, d                                        ; $65f1: $7a
	xor  d                                           ; $65f2: $aa
	sub  [hl]                                        ; $65f3: $96
	inc  [hl]                                        ; $65f4: $34
	xor  [hl]                                        ; $65f5: $ae
	and  l                                           ; $65f6: $a5
	ld   l, b                                        ; $65f7: $68
	adc  b                                           ; $65f8: $88
	sub  a                                           ; $65f9: $97
	ld   l, c                                        ; $65fa: $69
	and  [hl]                                        ; $65fb: $a6
	ld   l, b                                        ; $65fc: $68
	xor  d                                           ; $65fd: $aa
	add  a                                           ; $65fe: $87
	ld   e, b                                        ; $65ff: $58
	sbc  c                                           ; $6600: $99
	ld   h, l                                        ; $6601: $65
	ld   a, h                                        ; $6602: $7c
	ret  c                                           ; $6603: $d8

	ld   b, h                                        ; $6604: $44
	adc  h                                           ; $6605: $8c
	or   a                                           ; $6606: $b7
	ld   b, a                                        ; $6607: $47
	cp   e                                           ; $6608: $bb
	ld   [hl], h                                     ; $6609: $74
	ld   a, d                                        ; $660a: $7a
	and  [hl]                                        ; $660b: $a6
	ld   d, a                                        ; $660c: $57
	sbc  c                                           ; $660d: $99
	ld   [hl], a                                     ; $660e: $77
	sbc  b                                           ; $660f: $98
	sub  a                                           ; $6610: $97
	ld   l, b                                        ; $6611: $68
	cp   d                                           ; $6612: $ba
	ld   h, h                                        ; $6613: $64
	ld   a, d                                        ; $6614: $7a
	xor  c                                           ; $6615: $a9
	sub  l                                           ; $6616: $95
	ld   d, a                                        ; $6617: $57
	add  a                                           ; $6618: $87
	adc  c                                           ; $6619: $89
	sbc  b                                           ; $661a: $98
	ld   h, [hl]                                     ; $661b: $66
	xor  e                                           ; $661c: $ab
	cp   c                                           ; $661d: $b9
	ld   h, [hl]                                     ; $661e: $66
	adc  c                                           ; $661f: $89
	ld   [hl], a                                     ; $6620: $77
	ld   a, b                                        ; $6621: $78
	xor  b                                           ; $6622: $a8
	ld   h, [hl]                                     ; $6623: $66
	sub  a                                           ; $6624: $97
	adc  d                                           ; $6625: $8a
	sub  a                                           ; $6626: $97
	adc  c                                           ; $6627: $89
	sbc  b                                           ; $6628: $98
	adc  c                                           ; $6629: $89
	sbc  c                                           ; $662a: $99
	ld   h, [hl]                                     ; $662b: $66
	sbc  e                                           ; $662c: $9b
	sub  a                                           ; $662d: $97
	ld   h, a                                        ; $662e: $67
	sbc  e                                           ; $662f: $9b
	cp   c                                           ; $6630: $b9
	ld   a, b                                        ; $6631: $78
	sbc  d                                           ; $6632: $9a
	xor  b                                           ; $6633: $a8
	halt                                             ; $6634: $76
	ld   l, b                                        ; $6635: $68
	adc  c                                           ; $6636: $89
	xor  d                                           ; $6637: $aa
	adc  c                                           ; $6638: $89
	sbc  b                                           ; $6639: $98
	sbc  d                                           ; $663a: $9a
	xor  b                                           ; $663b: $a8
	ld   [hl], a                                     ; $663c: $77
	adc  b                                           ; $663d: $88
	add  [hl]                                        ; $663e: $86
	ld   l, c                                        ; $663f: $69
	xor  c                                           ; $6640: $a9
	ld   [hl], a                                     ; $6641: $77
	ld   a, b                                        ; $6642: $78
	sub  a                                           ; $6643: $97
	ld   d, l                                        ; $6644: $55
	ld   h, a                                        ; $6645: $67
	adc  c                                           ; $6646: $89
	sub  a                                           ; $6647: $97
	ld   h, [hl]                                     ; $6648: $66
	ld   a, c                                        ; $6649: $79
	sub  a                                           ; $664a: $97
	ld   h, a                                        ; $664b: $67
	add  a                                           ; $664c: $87
	ld   [hl], a                                     ; $664d: $77
	ld   [hl], a                                     ; $664e: $77
	ld   [hl], a                                     ; $664f: $77
	ld   [hl], a                                     ; $6650: $77
	ld   [hl], a                                     ; $6651: $77
	adc  b                                           ; $6652: $88
	add  [hl]                                        ; $6653: $86
	ld   h, [hl]                                     ; $6654: $66

Jump_0c1_6655:
	sbc  d                                           ; $6655: $9a
	ld   [hl], l                                     ; $6656: $75
	ld   l, b                                        ; $6657: $68
	sbc  b                                           ; $6658: $98
	ld   h, [hl]                                     ; $6659: $66
	sbc  c                                           ; $665a: $99
	adc  b                                           ; $665b: $88
	ld   a, b                                        ; $665c: $78
	adc  b                                           ; $665d: $88
	ld   [hl], a                                     ; $665e: $77
	adc  c                                           ; $665f: $89
	ld   [hl], a                                     ; $6660: $77
	adc  b                                           ; $6661: $88
	ld   [hl], a                                     ; $6662: $77
	ld   a, b                                        ; $6663: $78
	add  a                                           ; $6664: $87
	ld   a, c                                        ; $6665: $79
	sbc  c                                           ; $6666: $99
	ld   [hl], a                                     ; $6667: $77
	adc  c                                           ; $6668: $89
	sub  a                                           ; $6669: $97
	ld   a, b                                        ; $666a: $78
	ld   [hl], a                                     ; $666b: $77
	ld   a, c                                        ; $666c: $79
	sbc  b                                           ; $666d: $98
	ld   [hl], a                                     ; $666e: $77
	ld   a, c                                        ; $666f: $79
	sbc  c                                           ; $6670: $99
	ld   [hl], a                                     ; $6671: $77
	ld   [hl], a                                     ; $6672: $77
	ld   [hl], a                                     ; $6673: $77
	adc  c                                           ; $6674: $89
	sbc  b                                           ; $6675: $98
	add  a                                           ; $6676: $87
	ld   l, c                                        ; $6677: $69
	sbc  b                                           ; $6678: $98
	sbc  b                                           ; $6679: $98
	add  a                                           ; $667a: $87
	ld   a, b                                        ; $667b: $78
	adc  c                                           ; $667c: $89
	sbc  b                                           ; $667d: $98
	adc  c                                           ; $667e: $89
	adc  c                                           ; $667f: $89
	adc  c                                           ; $6680: $89
	adc  b                                           ; $6681: $88
	sbc  c                                           ; $6682: $99
	sbc  c                                           ; $6683: $99
	sbc  b                                           ; $6684: $98
	ld   a, b                                        ; $6685: $78
	xor  c                                           ; $6686: $a9
	add  a                                           ; $6687: $87
	ld   a, b                                        ; $6688: $78
	adc  c                                           ; $6689: $89
	sbc  b                                           ; $668a: $98
	adc  b                                           ; $668b: $88
	sbc  c                                           ; $668c: $99
	adc  c                                           ; $668d: $89
	adc  b                                           ; $668e: $88
	sbc  c                                           ; $668f: $99
	sbc  c                                           ; $6690: $99
	sbc  b                                           ; $6691: $98
	sbc  c                                           ; $6692: $99
	sbc  c                                           ; $6693: $99
	adc  c                                           ; $6694: $89
	adc  b                                           ; $6695: $88
	sbc  b                                           ; $6696: $98
	adc  c                                           ; $6697: $89
	adc  c                                           ; $6698: $89
	adc  b                                           ; $6699: $88
	adc  c                                           ; $669a: $89
	sub  a                                           ; $669b: $97
	ld   h, a                                        ; $669c: $67
	adc  c                                           ; $669d: $89
	adc  b                                           ; $669e: $88
	ld   [hl], a                                     ; $669f: $77
	add  a                                           ; $66a0: $87
	ld   a, b                                        ; $66a1: $78
	add  a                                           ; $66a2: $87
	ld   [hl], a                                     ; $66a3: $77
	ld   [hl], a                                     ; $66a4: $77
	ld   [hl], a                                     ; $66a5: $77
	ld   [hl], a                                     ; $66a6: $77
	adc  b                                           ; $66a7: $88
	add  a                                           ; $66a8: $87
	ld   [hl], a                                     ; $66a9: $77
	ld   [hl], a                                     ; $66aa: $77
	ld   [hl], a                                     ; $66ab: $77
	ld   a, b                                        ; $66ac: $78
	add  a                                           ; $66ad: $87
	ld   [hl], a                                     ; $66ae: $77
	adc  b                                           ; $66af: $88
	ld   [hl], a                                     ; $66b0: $77
	adc  b                                           ; $66b1: $88
	ld   [hl], a                                     ; $66b2: $77
	ld   [hl], a                                     ; $66b3: $77
	adc  c                                           ; $66b4: $89
	add  a                                           ; $66b5: $87
	ld   [hl], a                                     ; $66b6: $77
	adc  c                                           ; $66b7: $89
	add  a                                           ; $66b8: $87
	ld   a, c                                        ; $66b9: $79
	add  a                                           ; $66ba: $87
	ld   [hl], a                                     ; $66bb: $77
	ld   a, c                                        ; $66bc: $79
	add  a                                           ; $66bd: $87
	ld   a, b                                        ; $66be: $78
	adc  c                                           ; $66bf: $89
	sbc  b                                           ; $66c0: $98
	ld   a, b                                        ; $66c1: $78
	sbc  b                                           ; $66c2: $98
	add  a                                           ; $66c3: $87
	ld   a, b                                        ; $66c4: $78
	sbc  b                                           ; $66c5: $98
	adc  c                                           ; $66c6: $89
	sbc  b                                           ; $66c7: $98
	adc  b                                           ; $66c8: $88
	sbc  c                                           ; $66c9: $99
	ld   [hl], a                                     ; $66ca: $77
	adc  b                                           ; $66cb: $88
	sbc  b                                           ; $66cc: $98
	ld   [hl], a                                     ; $66cd: $77

Call_0c1_66ce:
	adc  b                                           ; $66ce: $88
	adc  b                                           ; $66cf: $88
	adc  b                                           ; $66d0: $88
	ld   a, c                                        ; $66d1: $79
	adc  b                                           ; $66d2: $88
	add  a                                           ; $66d3: $87
	ld   a, b                                        ; $66d4: $78
	adc  c                                           ; $66d5: $89
	adc  b                                           ; $66d6: $88
	ld   [hl], a                                     ; $66d7: $77
	sbc  c                                           ; $66d8: $99
	adc  b                                           ; $66d9: $88
	ld   [hl], a                                     ; $66da: $77
	adc  c                                           ; $66db: $89
	add  a                                           ; $66dc: $87
	adc  b                                           ; $66dd: $88
	adc  b                                           ; $66de: $88
	adc  b                                           ; $66df: $88
	adc  b                                           ; $66e0: $88
	adc  b                                           ; $66e1: $88
	sbc  b                                           ; $66e2: $98
	add  a                                           ; $66e3: $87
	ld   a, b                                        ; $66e4: $78
	sbc  c                                           ; $66e5: $99
	sbc  b                                           ; $66e6: $98
	ld   a, b                                        ; $66e7: $78
	adc  b                                           ; $66e8: $88
	sbc  c                                           ; $66e9: $99
	sbc  b                                           ; $66ea: $98
	adc  b                                           ; $66eb: $88
	adc  c                                           ; $66ec: $89
	sbc  b                                           ; $66ed: $98
	add  a                                           ; $66ee: $87
	adc  c                                           ; $66ef: $89
	sbc  b                                           ; $66f0: $98
	adc  b                                           ; $66f1: $88
	adc  c                                           ; $66f2: $89
	adc  b                                           ; $66f3: $88
	adc  b                                           ; $66f4: $88
	adc  b                                           ; $66f5: $88
	adc  b                                           ; $66f6: $88
	adc  b                                           ; $66f7: $88
	adc  b                                           ; $66f8: $88
	adc  b                                           ; $66f9: $88
	adc  c                                           ; $66fa: $89
	sbc  b                                           ; $66fb: $98
	adc  b                                           ; $66fc: $88
	adc  b                                           ; $66fd: $88
	sbc  b                                           ; $66fe: $98
	adc  b                                           ; $66ff: $88
	adc  b                                           ; $6700: $88
	sbc  b                                           ; $6701: $98
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
	add  c                                           ; $6724: $81
	ld   de, $1111                                   ; $6725: $11 $11 $11
	ld   de, $1111                                   ; $6728: $11 $11 $11
	ld   de, $1111                                   ; $672b: $11 $11 $11
	ld   de, $1111                                   ; $672e: $11 $11 $11
	ld   de, $1111                                   ; $6731: $11 $11 $11
	ld   de, $1111                                   ; $6734: $11 $11 $11
	ld   de, $1111                                   ; $6737: $11 $11 $11
	ld   de, $1111                                   ; $673a: $11 $11 $11
	ld   de, $1111                                   ; $673d: $11 $11 $11
	ld   de, $1111                                   ; $6740: $11 $11 $11
	ld   de, $1111                                   ; $6743: $11 $11 $11
	ld   de, $1111                                   ; $6746: $11 $11 $11
	ld   de, $1111                                   ; $6749: $11 $11 $11
	ld   de, $1111                                   ; $674c: $11 $11 $11
	ld   de, $1111                                   ; $674f: $11 $11 $11
	ld   de, $1111                                   ; $6752: $11 $11 $11
	ld   de, $1111                                   ; $6755: $11 $11 $11
	ld   de, $1111                                   ; $6758: $11 $11 $11
	ld   de, $1111                                   ; $675b: $11 $11 $11
	nop                                              ; $675e: $00
	ld   c, b                                        ; $675f: $48
	ld   de, $1111                                   ; $6760: $11 $11 $11
	ld   de, $1111                                   ; $6763: $11 $11 $11
	ld   de, $1111                                   ; $6766: $11 $11 $11
	ld   de, $5413                                   ; $6769: $11 $13 $54
	ld   d, h                                        ; $676c: $54
	ld   d, h                                        ; $676d: $54
	ld   b, c                                        ; $676e: $41
	rra                                              ; $676f: $1f
	rst  $38                                         ; $6770: $ff
	pop  af                                          ; $6771: $f1
	ld   de, $1711                                   ; $6772: $11 $11 $17
	ld   h, c                                        ; $6775: $61
	ld   de, $de1c                                   ; $6776: $11 $1c $de
	call z, $c1de                                    ; $6779: $cc $de $c1
	ld   de, $1111                                   ; $677c: $11 $11 $11
	ld   de, $1111                                   ; $677f: $11 $11 $11
	ld   de, $1111                                   ; $6782: $11 $11 $11
	ld   de, $1111                                   ; $6785: $11 $11 $11
	ld   de, $5411                                   ; $6788: $11 $11 $54
	ld   b, h                                        ; $678b: $44
	ld   d, a                                        ; $678c: $57
	ld   de, $5454                                   ; $678d: $11 $54 $54
	ld   h, a                                        ; $6790: $67
	ld   [hl], d                                     ; $6791: $72
	ld   de, $1111                                   ; $6792: $11 $11 $11
	ld   de, $1112                                   ; $6795: $11 $12 $11
	ld   [de], a                                     ; $6798: $12
	ld   de, $1111                                   ; $6799: $11 $11 $11
	ld   h, [hl]                                     ; $679c: $66
	halt                                             ; $679d: $76
	scf                                              ; $679e: $37
	ld   de, $8988                                   ; $679f: $11 $88 $89
	sbc  b                                           ; $67a2: $98
	adc  b                                           ; $67a3: $88
	adc  b                                           ; $67a4: $88
	adc  b                                           ; $67a5: $88
	adc  b                                           ; $67a6: $88
	adc  b                                           ; $67a7: $88
	adc  c                                           ; $67a8: $89
	sbc  c                                           ; $67a9: $99
	adc  b                                           ; $67aa: $88
	adc  b                                           ; $67ab: $88
	adc  b                                           ; $67ac: $88
	adc  b                                           ; $67ad: $88
	adc  b                                           ; $67ae: $88
	adc  b                                           ; $67af: $88
	adc  b                                           ; $67b0: $88
	adc  b                                           ; $67b1: $88
	adc  c                                           ; $67b2: $89
	sbc  c                                           ; $67b3: $99
	sbc  c                                           ; $67b4: $99
	adc  b                                           ; $67b5: $88
	add  a                                           ; $67b6: $87
	halt                                             ; $67b7: $76
	ld   d, l                                        ; $67b8: $55
	ld   d, l                                        ; $67b9: $55
	ld   d, l                                        ; $67ba: $55
	ld   h, [hl]                                     ; $67bb: $66
	ld   h, a                                        ; $67bc: $67
	ld   a, b                                        ; $67bd: $78
	adc  b                                           ; $67be: $88
	adc  c                                           ; $67bf: $89
	sbc  b                                           ; $67c0: $98
	adc  c                                           ; $67c1: $89
	sbc  d                                           ; $67c2: $9a
	sbc  c                                           ; $67c3: $99
	xor  d                                           ; $67c4: $aa
	xor  d                                           ; $67c5: $aa
	xor  d                                           ; $67c6: $aa
	xor  d                                           ; $67c7: $aa
	xor  d                                           ; $67c8: $aa
	sbc  c                                           ; $67c9: $99
	sbc  d                                           ; $67ca: $9a
	xor  c                                           ; $67cb: $a9
	sbc  c                                           ; $67cc: $99
	adc  b                                           ; $67cd: $88
	sbc  c                                           ; $67ce: $99
	adc  b                                           ; $67cf: $88
	adc  b                                           ; $67d0: $88
	adc  b                                           ; $67d1: $88
	add  a                                           ; $67d2: $87
	ld   [hl], a                                     ; $67d3: $77
	halt                                             ; $67d4: $76
	ld   h, l                                        ; $67d5: $65
	ld   d, h                                        ; $67d6: $54
	ld   b, h                                        ; $67d7: $44
	ld   b, h                                        ; $67d8: $44
	ld   b, l                                        ; $67d9: $45
	ld   h, [hl]                                     ; $67da: $66
	ld   [hl], a                                     ; $67db: $77
	adc  c                                           ; $67dc: $89
	adc  c                                           ; $67dd: $89
	sbc  d                                           ; $67de: $9a
	xor  c                                           ; $67df: $a9
	xor  d                                           ; $67e0: $aa
	xor  e                                           ; $67e1: $ab
	cp   e                                           ; $67e2: $bb
	xor  d                                           ; $67e3: $aa
	cp   d                                           ; $67e4: $ba
	xor  d                                           ; $67e5: $aa
	xor  d                                           ; $67e6: $aa
	xor  d                                           ; $67e7: $aa
	xor  c                                           ; $67e8: $a9
	xor  c                                           ; $67e9: $a9
	sbc  c                                           ; $67ea: $99
	sbc  b                                           ; $67eb: $98
	adc  b                                           ; $67ec: $88
	adc  b                                           ; $67ed: $88
	add  a                                           ; $67ee: $87
	halt                                             ; $67ef: $76
	ld   h, [hl]                                     ; $67f0: $66
	ld   d, l                                        ; $67f1: $55
	ld   d, h                                        ; $67f2: $54
	ld   [hl+], a                                    ; $67f3: $22
	ld   b, e                                        ; $67f4: $43
	inc  sp                                          ; $67f5: $33
	ld   d, l                                        ; $67f6: $55
	ld   h, a                                        ; $67f7: $67
	adc  d                                           ; $67f8: $8a
	sbc  d                                           ; $67f9: $9a
	sbc  e                                           ; $67fa: $9b
	cp   e                                           ; $67fb: $bb
	xor  d                                           ; $67fc: $aa
	cp   e                                           ; $67fd: $bb
	cp   e                                           ; $67fe: $bb
	cp   d                                           ; $67ff: $ba
	cp   e                                           ; $6800: $bb
	xor  e                                           ; $6801: $ab
	cp   d                                           ; $6802: $ba
	sbc  d                                           ; $6803: $9a
	sbc  c                                           ; $6804: $99
	sbc  d                                           ; $6805: $9a
	xor  c                                           ; $6806: $a9
	sbc  b                                           ; $6807: $98
	adc  c                                           ; $6808: $89
	ld   [hl], a                                     ; $6809: $77
	halt                                             ; $680a: $76
	ld   h, l                                        ; $680b: $65
	ld   b, e                                        ; $680c: $43
	inc  hl                                          ; $680d: $23
	ld   b, c                                        ; $680e: $41
	inc  de                                          ; $680f: $13
	ld   de, $6515                                   ; $6810: $11 $15 $65
	adc  b                                           ; $6813: $88
	xor  h                                           ; $6814: $ac
	set  1, a                                        ; $6815: $cb $cf
	set  1, l                                        ; $6817: $cb $cd
	cp   e                                           ; $6819: $bb
	cp   h                                           ; $681a: $bc
	cp   d                                           ; $681b: $ba
	cp   d                                           ; $681c: $ba
	xor  d                                           ; $681d: $aa
	xor  d                                           ; $681e: $aa
	xor  d                                           ; $681f: $aa
	adc  d                                           ; $6820: $8a
	xor  c                                           ; $6821: $a9
	ld   a, c                                        ; $6822: $79
	add  a                                           ; $6823: $87
	halt                                             ; $6824: $76
	ld   h, l                                        ; $6825: $65
	ld   d, e                                        ; $6826: $53
	ld   hl, $3111                                   ; $6827: $21 $11 $31
	ld   de, $1521                                   ; $682a: $11 $21 $15
	sub  a                                           ; $682d: $97
	cp   l                                           ; $682e: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $682f: $cf
	cp   $ef                                         ; $6830: $fe $ef
	db   $fd                                         ; $6832: $fd
	rst  $28                                         ; $6833: $ef
	call z, $aacb                                    ; $6834: $cc $cb $aa
	sub  [hl]                                        ; $6837: $96
	adc  b                                           ; $6838: $88
	ld   h, a                                        ; $6839: $67
	sbc  b                                           ; $683a: $98
	ld   a, c                                        ; $683b: $79
	xor  d                                           ; $683c: $aa
	sbc  d                                           ; $683d: $9a
	sbc  c                                           ; $683e: $99
	sub  a                                           ; $683f: $97
	ld   d, [hl]                                     ; $6840: $56
	ld   d, c                                        ; $6841: $51
	ld   de, $1111                                   ; $6842: $11 $11 $11
	ld   de, $2721                                   ; $6845: $11 $21 $27
	adc  c                                           ; $6848: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6849: $cf
	rst  $38                                         ; $684a: $ff
	rst  $38                                         ; $684b: $ff
	rst  $38                                         ; $684c: $ff
	rst  $38                                         ; $684d: $ff
	db   $fd                                         ; $684e: $fd
	call $98c7                                       ; $684f: $cd $c7 $98
	ld   h, l                                        ; $6852: $65
	ld   h, l                                        ; $6853: $65
	ld   e, b                                        ; $6854: $58
	ld   h, [hl]                                     ; $6855: $66
	cp   e                                           ; $6856: $bb
	sbc  e                                           ; $6857: $9b
	db   $db                                         ; $6858: $db
	xor  c                                           ; $6859: $a9
	sub  l                                           ; $685a: $95
	ld   d, d                                        ; $685b: $52
	ld   de, $1111                                   ; $685c: $11 $11 $11
	ld   de, $1711                                   ; $685f: $11 $11 $17
	xor  d                                           ; $6862: $aa
	rst  JumpTable                                         ; $6863: $df
	rst  $38                                         ; $6864: $ff
	rst  $38                                         ; $6865: $ff
	rst  $38                                         ; $6866: $ff
	rst  $38                                         ; $6867: $ff
	cp   $dd                                         ; $6868: $fe $dd
	cp   c                                           ; $686a: $b9
	add  [hl]                                        ; $686b: $86
	ld   d, l                                        ; $686c: $55
	ld   b, e                                        ; $686d: $43
	ld   d, [hl]                                     ; $686e: $56
	ld   d, [hl]                                     ; $686f: $56
	sbc  e                                           ; $6870: $9b
	cp   h                                           ; $6871: $bc
	call c, Call_0c1_75ba                            ; $6872: $dc $ba $75
	ld   hl, $1111                                   ; $6875: $21 $11 $11
	ld   de, $1111                                   ; $6878: $11 $11 $11
	ld   a, h                                        ; $687b: $7c
	cp   a                                           ; $687c: $bf
	rst  $38                                         ; $687d: $ff
	rst  $38                                         ; $687e: $ff
	rst  $38                                         ; $687f: $ff
	rst  $38                                         ; $6880: $ff
	rst  $38                                         ; $6881: $ff
	db   $fd                                         ; $6882: $fd
	sbc  d                                           ; $6883: $9a
	and  [hl]                                        ; $6884: $a6
	inc  [hl]                                        ; $6885: $34

Call_0c1_6886:
	inc  sp                                          ; $6886: $33
	ld   [hl+], a                                    ; $6887: $22
	ld   h, a                                        ; $6888: $67
	adc  b                                           ; $6889: $88
	db   $dd                                         ; $688a: $dd
	adc  $fd                                         ; $688b: $ce $fd
	cp   c                                           ; $688d: $b9
	ld   d, d                                        ; $688e: $52
	ld   de, $1111                                   ; $688f: $11 $11 $11
	ld   de, $1511                                   ; $6892: $11 $11 $15
	db   $ed                                         ; $6895: $ed
	rst  $38                                         ; $6896: $ff
	rst  $38                                         ; $6897: $ff
	rst  $38                                         ; $6898: $ff
	rst  $38                                         ; $6899: $ff
	cp   $ff                                         ; $689a: $fe $ff
	or   a                                           ; $689c: $b7
	and  a                                           ; $689d: $a7
	ld   [hl-], a                                    ; $689e: $32
	ld   [de], a                                     ; $689f: $12
	ld   de, $7716                                   ; $68a0: $11 $16 $77
	cp   a                                           ; $68a3: $bf
	db   $fd                                         ; $68a4: $fd
	rst  $38                                         ; $68a5: $ff
	db   $eb                                         ; $68a6: $eb
	cp   b                                           ; $68a7: $b8
	ld   sp, $1111                                   ; $68a8: $31 $11 $11
	ld   de, $1111                                   ; $68ab: $11 $11 $11
	inc  h                                           ; $68ae: $24
	rst  $28                                         ; $68af: $ef
	rst  $38                                         ; $68b0: $ff
	rst  $38                                         ; $68b1: $ff
	rst  $38                                         ; $68b2: $ff
	rst  $38                                         ; $68b3: $ff
	cp   $ff                                         ; $68b4: $fe $ff
	and  l                                           ; $68b6: $a5
	ld   [hl], l                                     ; $68b7: $75
	ld   hl, $1212                                   ; $68b8: $21 $12 $12
	scf                                              ; $68bb: $37
	adc  c                                           ; $68bc: $89
	rst  JumpTable                                         ; $68bd: $df
	rst  $38                                         ; $68be: $ff
	rst  $38                                         ; $68bf: $ff
	db   $ec                                         ; $68c0: $ec
	sub  [hl]                                        ; $68c1: $96
	ld   hl, $1111                                   ; $68c2: $21 $11 $11
	ld   de, $1111                                   ; $68c5: $11 $11 $11
	inc  de                                          ; $68c8: $13
	rst  JumpTable                                         ; $68c9: $df

jr_0c1_68ca:
	rst  $38                                         ; $68ca: $ff
	rst  $38                                         ; $68cb: $ff
	rst  $38                                         ; $68cc: $ff
	rst  $38                                         ; $68cd: $ff
	rst  $38                                         ; $68ce: $ff
	rst  $38                                         ; $68cf: $ff
	or   a                                           ; $68d0: $b7
	ld   [hl], h                                     ; $68d1: $74
	ld   hl, $1211                                   ; $68d2: $21 $11 $12
	ld   [hl], $8a                                   ; $68d5: $36 $8a
	cp   [hl]                                        ; $68d7: $be
	rst  $38                                         ; $68d8: $ff
	rst  $38                                         ; $68d9: $ff
	db   $fd                                         ; $68da: $fd
	sub  [hl]                                        ; $68db: $96
	ld   hl, $1111                                   ; $68dc: $21 $11 $11
	ld   de, $1111                                   ; $68df: $11 $11 $11
	ld   [de], a                                     ; $68e2: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68e3: $cf
	rst  $38                                         ; $68e4: $ff
	rst  $38                                         ; $68e5: $ff
	rst  $38                                         ; $68e6: $ff
	rst  $38                                         ; $68e7: $ff
	rst  $38                                         ; $68e8: $ff
	rst  $38                                         ; $68e9: $ff
	ret                                              ; $68ea: $c9


	ld   h, l                                        ; $68eb: $65
	ld   sp, $1211                                   ; $68ec: $31 $11 $12
	dec  [hl]                                        ; $68ef: $35
	adc  d                                           ; $68f0: $8a
	cp   a                                           ; $68f1: $bf
	rst  $38                                         ; $68f2: $ff
	rst  $38                                         ; $68f3: $ff
	db   $ec                                         ; $68f4: $ec
	sub  [hl]                                        ; $68f5: $96
	ld   sp, $1111                                   ; $68f6: $31 $11 $11
	ld   de, $1111                                   ; $68f9: $11 $11 $11
	jr   jr_0c1_68ca                                 ; $68fc: $18 $cc

	rst  $38                                         ; $68fe: $ff
	rst  $38                                         ; $68ff: $ff
	rst  $38                                         ; $6900: $ff
	rst  $38                                         ; $6901: $ff
	rst  $38                                         ; $6902: $ff
	rst  $38                                         ; $6903: $ff
	xor  e                                           ; $6904: $ab
	ld   [hl], h                                     ; $6905: $74
	ld   sp, $3321                                   ; $6906: $31 $21 $33
	ld   d, a                                        ; $6909: $57
	xor  d                                           ; $690a: $aa
	adc  $ef                                         ; $690b: $ce $ef
	db   $dd                                         ; $690d: $dd
	add  a                                           ; $690e: $87
	ld   b, c                                        ; $690f: $41
	ld   de, $1111                                   ; $6910: $11 $11 $11
	ld   de, $2a11                                   ; $6913: $11 $11 $2a
	xor  h                                           ; $6916: $ac
	rst  $38                                         ; $6917: $ff
	rst  $38                                         ; $6918: $ff
	rst  $38                                         ; $6919: $ff
	rst  $38                                         ; $691a: $ff
	rst  $38                                         ; $691b: $ff
	cp   $a9                                         ; $691c: $fe $a9
	halt                                             ; $691e: $76
	inc  [hl]                                        ; $691f: $34
	ld   b, e                                        ; $6920: $43
	scf                                              ; $6921: $37
	halt                                             ; $6922: $76
	xor  d                                           ; $6923: $aa
	call z, $a9bc                                    ; $6924: $cc $bc $a9
	halt                                             ; $6927: $76
	ld   d, e                                        ; $6928: $53
	ld   de, $1111                                   ; $6929: $11 $11 $11
	ld   de, $1611                                   ; $692c: $11 $11 $16
	sbc  d                                           ; $692f: $9a
	cp   a                                           ; $6930: $bf
	rst  $38                                         ; $6931: $ff
	rst  $38                                         ; $6932: $ff
	rst  $38                                         ; $6933: $ff
	rst  $38                                         ; $6934: $ff
	rst  $38                                         ; $6935: $ff
	cp   e                                           ; $6936: $bb
	xor  c                                           ; $6937: $a9
	add  [hl]                                        ; $6938: $86
	ld   e, b                                        ; $6939: $58
	add  l                                           ; $693a: $85
	ld   a, c                                        ; $693b: $79
	sbc  b                                           ; $693c: $98
	sbc  c                                           ; $693d: $99
	sbc  c                                           ; $693e: $99
	add  a                                           ; $693f: $87
	halt                                             ; $6940: $76
	ld   b, e                                        ; $6941: $43
	ld   de, $1111                                   ; $6942: $11 $11 $11
	ld   de, $1411                                   ; $6945: $11 $11 $14
	ld   l, b                                        ; $6948: $68
	cp   l                                           ; $6949: $bd
	rst  $38                                         ; $694a: $ff
	cp   $ff                                         ; $694b: $fe $ff
	cp   $ef                                         ; $694d: $fe $ef
	res  7, h                                        ; $694f: $cb $bc
	cp   c                                           ; $6951: $b9
	sbc  c                                           ; $6952: $99
	xor  c                                           ; $6953: $a9
	add  a                                           ; $6954: $87
	sbc  b                                           ; $6955: $98
	ld   [hl], a                                     ; $6956: $77
	ld   a, b                                        ; $6957: $78
	ld   h, a                                        ; $6958: $67
	ld   h, a                                        ; $6959: $67
	ld   [hl], l                                     ; $695a: $75
	ld   d, h                                        ; $695b: $54
	ld   b, e                                        ; $695c: $43
	ld   de, $1122                                   ; $695d: $11 $22 $11
	ld   [de], a                                     ; $6960: $12
	ld   [hl+], a                                    ; $6961: $22
	ld   b, [hl]                                     ; $6962: $46
	adc  c                                           ; $6963: $89
	xor  e                                           ; $6964: $ab
	call $dedd                                       ; $6965: $cd $dd $de
	call $dcce                                       ; $6968: $cd $ce $dc
	call c, $badc                                    ; $696b: $dc $dc $ba
	cp   d                                           ; $696e: $ba
	adc  b                                           ; $696f: $88
	adc  b                                           ; $6970: $88
	halt                                             ; $6971: $76
	ld   [hl], a                                     ; $6972: $77
	ld   h, [hl]                                     ; $6973: $66
	ld   h, a                                        ; $6974: $67
	ld   h, [hl]                                     ; $6975: $66
	ld   h, [hl]                                     ; $6976: $66
	ld   d, l                                        ; $6977: $55
	ld   b, e                                        ; $6978: $43
	inc  [hl]                                        ; $6979: $34
	ld   sp, $3212                                   ; $697a: $31 $12 $32
	inc  [hl]                                        ; $697d: $34
	ld   h, a                                        ; $697e: $67
	adc  c                                           ; $697f: $89
	sbc  e                                           ; $6980: $9b
	set  1, h                                        ; $6981: $cb $cc
	call z, $dccc                                    ; $6983: $cc $cc $dc
	call z, $ccdc                                    ; $6986: $cc $dc $cc
	cp   e                                           ; $6989: $bb
	xor  d                                           ; $698a: $aa
	adc  b                                           ; $698b: $88
	sbc  b                                           ; $698c: $98
	add  a                                           ; $698d: $87
	ld   [hl], a                                     ; $698e: $77
	ld   [hl], a                                     ; $698f: $77
	ld   h, a                                        ; $6990: $67
	ld   h, [hl]                                     ; $6991: $66
	ld   h, [hl]                                     ; $6992: $66
	ld   h, l                                        ; $6993: $65
	ld   d, h                                        ; $6994: $54
	ld   b, h                                        ; $6995: $44
	ld   b, h                                        ; $6996: $44
	ld   [hl-], a                                    ; $6997: $32
	inc  [hl]                                        ; $6998: $34
	ld   b, h                                        ; $6999: $44
	ld   d, [hl]                                     ; $699a: $56
	ld   a, c                                        ; $699b: $79
	sbc  c                                           ; $699c: $99
	xor  e                                           ; $699d: $ab
	xor  d                                           ; $699e: $aa
	xor  e                                           ; $699f: $ab
	xor  d                                           ; $69a0: $aa
	xor  e                                           ; $69a1: $ab
	cp   d                                           ; $69a2: $ba
	cp   d                                           ; $69a3: $ba
	xor  e                                           ; $69a4: $ab
	xor  d                                           ; $69a5: $aa
	xor  d                                           ; $69a6: $aa
	xor  c                                           ; $69a7: $a9
	sbc  c                                           ; $69a8: $99
	sbc  c                                           ; $69a9: $99
	sbc  b                                           ; $69aa: $98
	adc  b                                           ; $69ab: $88
	add  a                                           ; $69ac: $87
	ld   [hl], a                                     ; $69ad: $77
	ld   [hl], a                                     ; $69ae: $77
	ld   h, [hl]                                     ; $69af: $66
	ld   h, [hl]                                     ; $69b0: $66
	ld   h, [hl]                                     ; $69b1: $66
	ld   h, [hl]                                     ; $69b2: $66
	ld   h, [hl]                                     ; $69b3: $66
	ld   d, l                                        ; $69b4: $55
	ld   d, l                                        ; $69b5: $55
	ld   d, l                                        ; $69b6: $55
	ld   d, l                                        ; $69b7: $55
	ld   h, [hl]                                     ; $69b8: $66
	ld   h, a                                        ; $69b9: $67
	ld   a, b                                        ; $69ba: $78
	adc  c                                           ; $69bb: $89
	adc  c                                           ; $69bc: $89
	sbc  c                                           ; $69bd: $99
	xor  c                                           ; $69be: $a9
	xor  d                                           ; $69bf: $aa
	xor  d                                           ; $69c0: $aa
	xor  d                                           ; $69c1: $aa
	xor  d                                           ; $69c2: $aa
	xor  c                                           ; $69c3: $a9
	sbc  c                                           ; $69c4: $99
	xor  c                                           ; $69c5: $a9
	sbc  c                                           ; $69c6: $99
	sbc  b                                           ; $69c7: $98
	adc  b                                           ; $69c8: $88
	sbc  c                                           ; $69c9: $99
	adc  b                                           ; $69ca: $88
	adc  b                                           ; $69cb: $88
	adc  b                                           ; $69cc: $88
	adc  b                                           ; $69cd: $88
	ld   a, b                                        ; $69ce: $78
	ld   [hl], a                                     ; $69cf: $77
	ld   [hl], a                                     ; $69d0: $77
	ld   [hl], a                                     ; $69d1: $77
	ld   [hl], a                                     ; $69d2: $77
	halt                                             ; $69d3: $76
	ld   h, [hl]                                     ; $69d4: $66
	ld   h, [hl]                                     ; $69d5: $66
	ld   h, l                                        ; $69d6: $65
	ld   h, [hl]                                     ; $69d7: $66
	ld   h, [hl]                                     ; $69d8: $66
	ld   h, [hl]                                     ; $69d9: $66
	ld   [hl], a                                     ; $69da: $77
	adc  b                                           ; $69db: $88
	adc  c                                           ; $69dc: $89
	sbc  c                                           ; $69dd: $99
	sbc  d                                           ; $69de: $9a
	sbc  c                                           ; $69df: $99
	sbc  c                                           ; $69e0: $99
	sbc  c                                           ; $69e1: $99
	sbc  c                                           ; $69e2: $99
	sbc  c                                           ; $69e3: $99
	sbc  c                                           ; $69e4: $99
	sbc  b                                           ; $69e5: $98
	adc  b                                           ; $69e6: $88
	adc  c                                           ; $69e7: $89
	sbc  c                                           ; $69e8: $99
	adc  b                                           ; $69e9: $88
	adc  b                                           ; $69ea: $88
	add  a                                           ; $69eb: $87
	ld   [hl], a                                     ; $69ec: $77
	ld   [hl], a                                     ; $69ed: $77
	ld   [hl], a                                     ; $69ee: $77
	ld   [hl], a                                     ; $69ef: $77
	ld   [hl], a                                     ; $69f0: $77
	ld   [hl], a                                     ; $69f1: $77
	adc  b                                           ; $69f2: $88
	adc  b                                           ; $69f3: $88
	sbc  c                                           ; $69f4: $99
	sbc  c                                           ; $69f5: $99
	sbc  c                                           ; $69f6: $99
	sbc  c                                           ; $69f7: $99
	sbc  c                                           ; $69f8: $99
	adc  b                                           ; $69f9: $88
	adc  b                                           ; $69fa: $88
	adc  b                                           ; $69fb: $88
	adc  b                                           ; $69fc: $88
	adc  b                                           ; $69fd: $88
	adc  b                                           ; $69fe: $88
	adc  b                                           ; $69ff: $88
	adc  b                                           ; $6a00: $88
	adc  b                                           ; $6a01: $88
	adc  b                                           ; $6a02: $88
	adc  b                                           ; $6a03: $88
	adc  b                                           ; $6a04: $88
	adc  b                                           ; $6a05: $88
	adc  b                                           ; $6a06: $88
	add  a                                           ; $6a07: $87
	ld   [hl], a                                     ; $6a08: $77
	ld   [hl], a                                     ; $6a09: $77
	ld   [hl], a                                     ; $6a0a: $77
	adc  b                                           ; $6a0b: $88
	adc  b                                           ; $6a0c: $88
	adc  b                                           ; $6a0d: $88
	adc  b                                           ; $6a0e: $88
	adc  c                                           ; $6a0f: $89
	sbc  c                                           ; $6a10: $99
	adc  b                                           ; $6a11: $88
	sbc  b                                           ; $6a12: $98
	adc  b                                           ; $6a13: $88
	adc  b                                           ; $6a14: $88
	adc  b                                           ; $6a15: $88
	adc  c                                           ; $6a16: $89
	sbc  c                                           ; $6a17: $99
	sbc  c                                           ; $6a18: $99
	sbc  c                                           ; $6a19: $99
	sbc  c                                           ; $6a1a: $99
	sbc  c                                           ; $6a1b: $99
	adc  b                                           ; $6a1c: $88
	adc  b                                           ; $6a1d: $88
	adc  b                                           ; $6a1e: $88
	adc  b                                           ; $6a1f: $88
	adc  b                                           ; $6a20: $88
	adc  b                                           ; $6a21: $88
	adc  b                                           ; $6a22: $88
	adc  b                                           ; $6a23: $88
	adc  b                                           ; $6a24: $88
	adc  b                                           ; $6a25: $88
	adc  b                                           ; $6a26: $88
	adc  b                                           ; $6a27: $88
	adc  b                                           ; $6a28: $88
	adc  b                                           ; $6a29: $88
	adc  b                                           ; $6a2a: $88
	adc  b                                           ; $6a2b: $88
	adc  b                                           ; $6a2c: $88
	adc  b                                           ; $6a2d: $88
	adc  b                                           ; $6a2e: $88
	adc  c                                           ; $6a2f: $89
	sbc  c                                           ; $6a30: $99
	sbc  b                                           ; $6a31: $98
	adc  b                                           ; $6a32: $88
	adc  b                                           ; $6a33: $88
	adc  c                                           ; $6a34: $89
	sbc  c                                           ; $6a35: $99
	sbc  b                                           ; $6a36: $98
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
	adc  b                                           ; $6a43: $88
	adc  b                                           ; $6a44: $88
	adc  b                                           ; $6a45: $88
	adc  b                                           ; $6a46: $88
	adc  b                                           ; $6a47: $88
	adc  b                                           ; $6a48: $88
	adc  b                                           ; $6a49: $88
	adc  b                                           ; $6a4a: $88
	adc  b                                           ; $6a4b: $88
	adc  b                                           ; $6a4c: $88
	adc  b                                           ; $6a4d: $88
	adc  b                                           ; $6a4e: $88
	adc  b                                           ; $6a4f: $88
	adc  b                                           ; $6a50: $88
	adc  b                                           ; $6a51: $88
	adc  b                                           ; $6a52: $88
	adc  b                                           ; $6a53: $88
	adc  b                                           ; $6a54: $88
	adc  b                                           ; $6a55: $88
	adc  b                                           ; $6a56: $88
	adc  b                                           ; $6a57: $88
	adc  b                                           ; $6a58: $88
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
	adc  b                                           ; $6a67: $88
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
	adc  b                                           ; $6a79: $88
	adc  b                                           ; $6a7a: $88
	adc  b                                           ; $6a7b: $88
	adc  b                                           ; $6a7c: $88
	adc  b                                           ; $6a7d: $88
	adc  b                                           ; $6a7e: $88
	adc  b                                           ; $6a7f: $88
	sbc  b                                           ; $6a80: $98
	adc  b                                           ; $6a81: $88
	adc  b                                           ; $6a82: $88
	adc  b                                           ; $6a83: $88
	adc  b                                           ; $6a84: $88
	adc  b                                           ; $6a85: $88
	adc  b                                           ; $6a86: $88
	adc  b                                           ; $6a87: $88
	adc  b                                           ; $6a88: $88
	adc  b                                           ; $6a89: $88
	adc  b                                           ; $6a8a: $88
	adc  b                                           ; $6a8b: $88
	adc  b                                           ; $6a8c: $88
	adc  b                                           ; $6a8d: $88
	adc  b                                           ; $6a8e: $88
	adc  b                                           ; $6a8f: $88
	adc  b                                           ; $6a90: $88
	adc  b                                           ; $6a91: $88
	adc  b                                           ; $6a92: $88
	adc  b                                           ; $6a93: $88
	adc  b                                           ; $6a94: $88
	adc  b                                           ; $6a95: $88
	adc  b                                           ; $6a96: $88
	adc  b                                           ; $6a97: $88
	adc  b                                           ; $6a98: $88
	adc  b                                           ; $6a99: $88
	adc  b                                           ; $6a9a: $88
	adc  b                                           ; $6a9b: $88
	adc  b                                           ; $6a9c: $88
	adc  b                                           ; $6a9d: $88
	adc  b                                           ; $6a9e: $88
	adc  b                                           ; $6a9f: $88
	adc  b                                           ; $6aa0: $88
	adc  b                                           ; $6aa1: $88
	adc  b                                           ; $6aa2: $88
	adc  b                                           ; $6aa3: $88
	adc  b                                           ; $6aa4: $88
	adc  b                                           ; $6aa5: $88
	adc  b                                           ; $6aa6: $88
	adc  b                                           ; $6aa7: $88
	adc  b                                           ; $6aa8: $88
	adc  b                                           ; $6aa9: $88
	adc  b                                           ; $6aaa: $88
	adc  b                                           ; $6aab: $88
	adc  b                                           ; $6aac: $88
	adc  b                                           ; $6aad: $88
	adc  b                                           ; $6aae: $88
	adc  b                                           ; $6aaf: $88
	adc  b                                           ; $6ab0: $88
	adc  b                                           ; $6ab1: $88
	adc  b                                           ; $6ab2: $88
	adc  b                                           ; $6ab3: $88
	adc  b                                           ; $6ab4: $88
	adc  b                                           ; $6ab5: $88
	adc  b                                           ; $6ab6: $88
	adc  b                                           ; $6ab7: $88
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
	sbc  b                                           ; $6ac9: $98
	ld   a, b                                        ; $6aca: $78
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
	adc  b                                           ; $6ae4: $88
	adc  b                                           ; $6ae5: $88
	adc  b                                           ; $6ae6: $88
	adc  b                                           ; $6ae7: $88
	adc  b                                           ; $6ae8: $88
	adc  b                                           ; $6ae9: $88
	adc  b                                           ; $6aea: $88
	adc  b                                           ; $6aeb: $88
	adc  b                                           ; $6aec: $88
	adc  b                                           ; $6aed: $88
	adc  b                                           ; $6aee: $88
	adc  b                                           ; $6aef: $88
	adc  b                                           ; $6af0: $88
	adc  b                                           ; $6af1: $88
	adc  b                                           ; $6af2: $88
	adc  b                                           ; $6af3: $88
	adc  b                                           ; $6af4: $88
	adc  b                                           ; $6af5: $88
	adc  b                                           ; $6af6: $88
	adc  b                                           ; $6af7: $88
	adc  b                                           ; $6af8: $88
	adc  b                                           ; $6af9: $88
	adc  b                                           ; $6afa: $88
	adc  b                                           ; $6afb: $88
	adc  b                                           ; $6afc: $88
	adc  b                                           ; $6afd: $88
	adc  b                                           ; $6afe: $88
	adc  b                                           ; $6aff: $88
	adc  b                                           ; $6b00: $88
	adc  b                                           ; $6b01: $88
	adc  b                                           ; $6b02: $88
	adc  b                                           ; $6b03: $88
	adc  b                                           ; $6b04: $88
	adc  b                                           ; $6b05: $88
	adc  b                                           ; $6b06: $88
	adc  b                                           ; $6b07: $88
	adc  b                                           ; $6b08: $88
	adc  b                                           ; $6b09: $88
	adc  b                                           ; $6b0a: $88
	adc  b                                           ; $6b0b: $88
	adc  b                                           ; $6b0c: $88
	adc  b                                           ; $6b0d: $88
	adc  b                                           ; $6b0e: $88
	adc  b                                           ; $6b0f: $88
	adc  b                                           ; $6b10: $88
	adc  b                                           ; $6b11: $88
	adc  b                                           ; $6b12: $88
	adc  b                                           ; $6b13: $88
	adc  b                                           ; $6b14: $88
	adc  b                                           ; $6b15: $88
	adc  b                                           ; $6b16: $88
	adc  b                                           ; $6b17: $88
	sbc  b                                           ; $6b18: $98
	ld   a, b                                        ; $6b19: $78
	adc  b                                           ; $6b1a: $88
	adc  b                                           ; $6b1b: $88
	adc  b                                           ; $6b1c: $88
	adc  c                                           ; $6b1d: $89
	adc  b                                           ; $6b1e: $88
	adc  b                                           ; $6b1f: $88
	adc  b                                           ; $6b20: $88
	adc  b                                           ; $6b21: $88
	adc  b                                           ; $6b22: $88
	adc  b                                           ; $6b23: $88
	adc  b                                           ; $6b24: $88
	adc  b                                           ; $6b25: $88
	adc  b                                           ; $6b26: $88
	adc  b                                           ; $6b27: $88
	adc  c                                           ; $6b28: $89
	add  a                                           ; $6b29: $87
	adc  b                                           ; $6b2a: $88
	adc  b                                           ; $6b2b: $88
	adc  b                                           ; $6b2c: $88
	adc  b                                           ; $6b2d: $88
	adc  b                                           ; $6b2e: $88
	adc  b                                           ; $6b2f: $88
	adc  b                                           ; $6b30: $88
	sbc  b                                           ; $6b31: $98
	adc  c                                           ; $6b32: $89
	adc  b                                           ; $6b33: $88
	adc  b                                           ; $6b34: $88
	adc  c                                           ; $6b35: $89
	sbc  b                                           ; $6b36: $98
	adc  b                                           ; $6b37: $88
	adc  b                                           ; $6b38: $88
	adc  b                                           ; $6b39: $88
	adc  b                                           ; $6b3a: $88
	adc  b                                           ; $6b3b: $88
	adc  b                                           ; $6b3c: $88
	sbc  b                                           ; $6b3d: $98
	adc  b                                           ; $6b3e: $88
	adc  b                                           ; $6b3f: $88
	ld   [hl], a                                     ; $6b40: $77
	ld   [hl], a                                     ; $6b41: $77
	ld   h, a                                        ; $6b42: $67
	ld   [hl], a                                     ; $6b43: $77
	ld   [hl], a                                     ; $6b44: $77
	ld   [hl], a                                     ; $6b45: $77
	ld   [hl], a                                     ; $6b46: $77
	adc  b                                           ; $6b47: $88
	adc  c                                           ; $6b48: $89
	sbc  d                                           ; $6b49: $9a
	xor  b                                           ; $6b4a: $a8
	sbc  c                                           ; $6b4b: $99
	xor  c                                           ; $6b4c: $a9
	sbc  c                                           ; $6b4d: $99
	sbc  d                                           ; $6b4e: $9a
	sbc  c                                           ; $6b4f: $99
	xor  c                                           ; $6b50: $a9
	sbc  d                                           ; $6b51: $9a
	sbc  c                                           ; $6b52: $99
	sub  a                                           ; $6b53: $97
	halt                                             ; $6b54: $76
	ld   h, l                                        ; $6b55: $65
	ld   d, h                                        ; $6b56: $54
	ld   d, l                                        ; $6b57: $55
	ld   h, l                                        ; $6b58: $65
	ld   d, l                                        ; $6b59: $55
	ld   d, [hl]                                     ; $6b5a: $56
	adc  c                                           ; $6b5b: $89
	sbc  b                                           ; $6b5c: $98
	sbc  c                                           ; $6b5d: $99
	xor  d                                           ; $6b5e: $aa
	xor  c                                           ; $6b5f: $a9
	xor  c                                           ; $6b60: $a9
	xor  d                                           ; $6b61: $aa
	xor  d                                           ; $6b62: $aa
	cp   d                                           ; $6b63: $ba
	xor  d                                           ; $6b64: $aa
	cp   e                                           ; $6b65: $bb
	xor  d                                           ; $6b66: $aa
	sbc  b                                           ; $6b67: $98
	adc  b                                           ; $6b68: $88
	ld   h, l                                        ; $6b69: $65
	ld   b, e                                        ; $6b6a: $43
	inc  hl                                          ; $6b6b: $23
	ld   d, h                                        ; $6b6c: $54
	inc  sp                                          ; $6b6d: $33
	dec  [hl]                                        ; $6b6e: $35
	ld   l, b                                        ; $6b6f: $68
	sbc  b                                           ; $6b70: $98
	sbc  c                                           ; $6b71: $99
	xor  e                                           ; $6b72: $ab
	res  7, d                                        ; $6b73: $cb $ba
	cp   e                                           ; $6b75: $bb
	cp   e                                           ; $6b76: $bb
	xor  d                                           ; $6b77: $aa
	xor  e                                           ; $6b78: $ab
	cp   e                                           ; $6b79: $bb
	sbc  c                                           ; $6b7a: $99
	xor  c                                           ; $6b7b: $a9
	add  a                                           ; $6b7c: $87
	ld   h, h                                        ; $6b7d: $64
	ld   hl, $4312                                   ; $6b7e: $21 $12 $43
	ld   [hl+], a                                    ; $6b81: $22
	dec  [hl]                                        ; $6b82: $35
	ld   a, h                                        ; $6b83: $7c
	cp   d                                           ; $6b84: $ba
	xor  e                                           ; $6b85: $ab
	call $b9ec                                       ; $6b86: $cd $ec $b9
	xor  d                                           ; $6b89: $aa
	xor  d                                           ; $6b8a: $aa
	sbc  b                                           ; $6b8b: $98
	adc  d                                           ; $6b8c: $8a
	xor  e                                           ; $6b8d: $ab
	xor  c                                           ; $6b8e: $a9
	sbc  c                                           ; $6b8f: $99
	add  [hl]                                        ; $6b90: $86
	ld   sp, $1311                                   ; $6b91: $31 $11 $13
	ld   [hl+], a                                    ; $6b94: $22
	inc  hl                                          ; $6b95: $23
	ld   e, d                                        ; $6b96: $5a
	rst  $28                                         ; $6b97: $ef
	db   $dd                                         ; $6b98: $dd
	sbc  $ee                                         ; $6b99: $de $ee
	db   $eb                                         ; $6b9b: $eb
	adc  b                                           ; $6b9c: $88
	adc  c                                           ; $6b9d: $89
	adc  b                                           ; $6b9e: $88
	add  a                                           ; $6b9f: $87
	xor  e                                           ; $6ba0: $ab
	cp   e                                           ; $6ba1: $bb
	xor  c                                           ; $6ba2: $a9
	halt                                             ; $6ba3: $76
	ld   b, d                                        ; $6ba4: $42
	ld   de, $1112                                   ; $6ba5: $11 $12 $11
	ld   [de], a                                     ; $6ba8: $12
	ld   b, a                                        ; $6ba9: $47
	rst  $38                                         ; $6baa: $ff
	cp   $ef                                         ; $6bab: $fe $ef
	rst  $38                                         ; $6bad: $ff
	db   $fc                                         ; $6bae: $fc
	halt                                             ; $6baf: $76
	ld   d, [hl]                                     ; $6bb0: $56
	ld   h, a                                        ; $6bb1: $67
	ld   [hl], l                                     ; $6bb2: $75
	ld   a, d                                        ; $6bb3: $7a
	call $a8dc                                       ; $6bb4: $cd $dc $a8
	ld   h, d                                        ; $6bb7: $62
	ld   de, $2212                                   ; $6bb8: $11 $12 $22
	ld   de, $ff27                                   ; $6bbb: $11 $27 $ff
	rst  $38                                         ; $6bbe: $ff
	db   $dd                                         ; $6bbf: $dd
	rst  $38                                         ; $6bc0: $ff
	db   $fd                                         ; $6bc1: $fd
	ld   h, h                                        ; $6bc2: $64
	ld   b, [hl]                                     ; $6bc3: $46
	adc  b                                           ; $6bc4: $88
	ld   h, e                                        ; $6bc5: $63
	ld   e, b                                        ; $6bc6: $58
	sbc  $fe                                         ; $6bc7: $de $fe
	xor  c                                           ; $6bc9: $a9
	ld   h, h                                        ; $6bca: $64
	ld   de, $1111                                   ; $6bcb: $11 $11 $11
	ld   de, $ff49                                   ; $6bce: $11 $49 $ff
	rst  $38                                         ; $6bd1: $ff
	rst  $38                                         ; $6bd2: $ff
	rst  $38                                         ; $6bd3: $ff
	ld   [$4553], a                                  ; $6bd4: $ea $53 $45
	ld   h, l                                        ; $6bd7: $65
	ld   h, l                                        ; $6bd8: $65
	ld   a, e                                        ; $6bd9: $7b
	rst  $38                                         ; $6bda: $ff
	rst  $38                                         ; $6bdb: $ff
	cp   d                                           ; $6bdc: $ba
	ld   h, e                                        ; $6bdd: $63
	ld   de, $1111                                   ; $6bde: $11 $11 $11
	ld   de, $ff49                                   ; $6be1: $11 $49 $ff
	rst  $38                                         ; $6be4: $ff
	rst  $38                                         ; $6be5: $ff
	cp   $e9                                         ; $6be6: $fe $e9
	ld   sp, $3711                                   ; $6be8: $31 $11 $37
	sbc  b                                           ; $6beb: $98
	sbc  l                                           ; $6bec: $9d
	rst  $38                                         ; $6bed: $ff
	rst  $38                                         ; $6bee: $ff
	ld   a, [$1151]                                  ; $6bef: $fa $51 $11
	ld   de, $0311                                   ; $6bf2: $11 $11 $03
	ld   c, e                                        ; $6bf5: $4b
	rst  $38                                         ; $6bf6: $ff
	rst  $38                                         ; $6bf7: $ff
	cp   $ec                                         ; $6bf8: $fe $ec
	cp   c                                           ; $6bfa: $b9
	ld   de, $2611                                   ; $6bfb: $11 $11 $26
	sbc  d                                           ; $6bfe: $9a
	xor  [hl]                                        ; $6bff: $ae
	rst  $38                                         ; $6c00: $ff
	rst  $38                                         ; $6c01: $ff
	ld   a, [$1162]                                  ; $6c02: $fa $62 $11
	ld   de, $4a11                                   ; $6c05: $11 $11 $4a
	ret  c                                           ; $6c08: $d8

	rst  $28                                         ; $6c09: $ef
	rst  $38                                         ; $6c0a: $ff
	rst  $38                                         ; $6c0b: $ff
	ld   h, c                                        ; $6c0c: $61
	inc  de                                          ; $6c0d: $13
	ld   [hl], c                                     ; $6c0e: $71
	ld   de, $ef17                                   ; $6c0f: $11 $17 $ef
	rst  $38                                         ; $6c12: $ff
	rst  $38                                         ; $6c13: $ff
	rst  $38                                         ; $6c14: $ff
	db   $fc                                         ; $6c15: $fc
	ld   sp, $1111                                   ; $6c16: $31 $11 $11
	ld   de, $ff3a                                   ; $6c19: $11 $3a $ff
	rst  $28                                         ; $6c1c: $ef
	rst  $38                                         ; $6c1d: $ff
	rst  $38                                         ; $6c1e: $ff
	pop  af                                          ; $6c1f: $f1
	ld   de, $1112                                   ; $6c20: $11 $12 $11
	rla                                              ; $6c23: $17
	rst  $38                                         ; $6c24: $ff
	rst  $38                                         ; $6c25: $ff
	rst  $38                                         ; $6c26: $ff
	rst  $38                                         ; $6c27: $ff
	ld   sp, hl                                      ; $6c28: $f9
	ld   b, c                                        ; $6c29: $41
	ld   de, $1111                                   ; $6c2a: $11 $11 $11
	rra                                              ; $6c2d: $1f
	rst  $38                                         ; $6c2e: $ff
	db   $fc                                         ; $6c2f: $fc
	rst  $38                                         ; $6c30: $ff
	rst  $38                                         ; $6c31: $ff
	or   l                                           ; $6c32: $b5
	ld   de, $5111                                   ; $6c33: $11 $11 $51
	ld   [de], a                                     ; $6c36: $12
	rst  $38                                         ; $6c37: $ff
	rst  $38                                         ; $6c38: $ff
	cp   $ff                                         ; $6c39: $fe $ff
	ei                                               ; $6c3b: $fb
	ld   d, c                                        ; $6c3c: $51
	ld   de, $1111                                   ; $6c3d: $11 $11 $11
	ld   de, $ffff                                   ; $6c40: $11 $ff $ff

Jump_0c1_6c43:
	sbc  a                                           ; $6c43: $9f
	rst  $38                                         ; $6c44: $ff
	ld   hl, sp+$11                                  ; $6c45: $f8 $11
	ld   de, $114a                                   ; $6c47: $11 $4a $11
	ld   e, a                                        ; $6c4a: $5f
	rst  $38                                         ; $6c4b: $ff
	rst  $38                                         ; $6c4c: $ff
	sbc  d                                           ; $6c4d: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c4e: $cf
	sub  l                                           ; $6c4f: $95
	ld   de, $3112                                   ; $6c50: $11 $12 $31
	ld   de, $ff1f                                   ; $6c53: $11 $1f $ff
	di                                               ; $6c56: $f3
	set  7, a                                        ; $6c57: $cb $ff
	sub  h                                           ; $6c59: $94
	ld   de, $f513                                   ; $6c5a: $11 $13 $f5
	inc  d                                           ; $6c5d: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c5e: $cf
	rst  $38                                         ; $6c5f: $ff
	or   $78                                         ; $6c60: $f6 $78
	db   $fc                                         ; $6c62: $fc
	ld   d, e                                        ; $6c63: $53
	ld   de, $4157                                   ; $6c64: $11 $57 $41
	ld   de, $ff2f                                   ; $6c67: $11 $2f $ff
	add  h                                           ; $6c6a: $84
	db   $dd                                         ; $6c6b: $dd
	rst  $38                                         ; $6c6c: $ff
	ld   h, c                                        ; $6c6d: $61
	ld   de, $d11a                                   ; $6c6e: $11 $1a $d1
	ld   [hl], $ff                                   ; $6c71: $36 $ff
	rst  $38                                         ; $6c73: $ff
	or   e                                           ; $6c74: $b3
	ld   l, d                                        ; $6c75: $6a
	ld   sp, hl                                      ; $6c76: $f9
	ld   b, c                                        ; $6c77: $41
	ld   d, $9a                                      ; $6c78: $16 $9a
	ld   hl, $3f11                                   ; $6c7a: $21 $11 $3f
	rst  $38                                         ; $6c7d: $ff
	ld   h, h                                        ; $6c7e: $64
	rst  $28                                         ; $6c7f: $ef
	rst  $38                                         ; $6c80: $ff
	ld   d, c                                        ; $6c81: $51
	ld   de, $d43a                                   ; $6c82: $11 $3a $d4
	jr   @+$01                                       ; $6c85: $18 $ff

	rst  $38                                         ; $6c87: $ff
	or   d                                           ; $6c88: $b2
	ld   a, [hl-]                                    ; $6c89: $3a
	jp   c, $1641                                    ; $6c8a: $da $41 $16

	cp   e                                           ; $6c8d: $bb
	ld   sp, $1f11                                   ; $6c8e: $31 $11 $1f
	rst  $38                                         ; $6c91: $ff
	or   h                                           ; $6c92: $b4
	rst  JumpTable                                         ; $6c93: $df
	rst  $38                                         ; $6c94: $ff
	sub  c                                           ; $6c95: $91
	ld   de, $c717                                   ; $6c96: $11 $17 $c7
	ld   d, l                                        ; $6c99: $55
	rst  $38                                         ; $6c9a: $ff
	rst  $38                                         ; $6c9b: $ff
	push bc                                          ; $6c9c: $c5
	ld   d, $b8                                      ; $6c9d: $16 $b8
	ld   d, d                                        ; $6c9f: $52
	scf                                              ; $6ca0: $37
	cp   [hl]                                        ; $6ca1: $be
	add  c                                           ; $6ca2: $81
	ld   de, rAUD1ENV                                   ; $6ca3: $11 $12 $ff
	ld   a, [$ffaf]                                  ; $6ca6: $fa $af $ff
	db   $f4                                         ; $6ca9: $f4
	ld   de, $8d11                                   ; $6caa: $11 $11 $8d
	sbc  d                                           ; $6cad: $9a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cae: $cf
	rst  $38                                         ; $6caf: $ff
	ld   sp, hl                                      ; $6cb0: $f9
	ld   [hl-], a                                    ; $6cb1: $32
	ld   c, b                                        ; $6cb2: $48
	ld   d, l                                        ; $6cb3: $55
	ld   d, [hl]                                     ; $6cb4: $56
	cp   l                                           ; $6cb5: $bd
	push bc                                          ; $6cb6: $c5
	ld   de, $4f11                                   ; $6cb7: $11 $11 $4f
	rst  $38                                         ; $6cba: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cbb: $cf
	rst  $38                                         ; $6cbc: $ff
	db   $fd                                         ; $6cbd: $fd
	ld   sp, $1911                                   ; $6cbe: $31 $11 $19
	db   $dd                                         ; $6cc1: $dd
	rst  $38                                         ; $6cc2: $ff
	rst  $38                                         ; $6cc3: $ff
	rst  $38                                         ; $6cc4: $ff
	ld   [hl], c                                     ; $6cc5: $71
	inc  de                                          ; $6cc6: $13
	ld   d, h                                        ; $6cc7: $54
	ld   l, b                                        ; $6cc8: $68
	cp   a                                           ; $6cc9: $bf
	db   $fc                                         ; $6cca: $fc
	ld   b, c                                        ; $6ccb: $41
	ld   de, rAUD1LEN                                   ; $6ccc: $11 $11 $ff
	rst  $38                                         ; $6ccf: $ff
	rst  $38                                         ; $6cd0: $ff
	rst  $28                                         ; $6cd1: $ef
	ldh  a, [c]                                      ; $6cd2: $f2
	ld   de, $5f11                                   ; $6cd3: $11 $11 $5f
	rst  $38                                         ; $6cd6: $ff
	rst  $38                                         ; $6cd7: $ff
	rst  $38                                         ; $6cd8: $ff
	rst  $30                                         ; $6cd9: $f7
	ld   de, $3712                                   ; $6cda: $11 $12 $37
	cp   a                                           ; $6cdd: $bf
	rst  $38                                         ; $6cde: $ff
	or   h                                           ; $6cdf: $b4
	ld   de, $1611                                   ; $6ce0: $11 $11 $16
	rst  $38                                         ; $6ce3: $ff
	rst  $38                                         ; $6ce4: $ff
	db   $fd                                         ; $6ce5: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ce6: $cf
	ld   b, c                                        ; $6ce7: $41
	ld   de, $ef11                                   ; $6ce8: $11 $11 $ef
	rst  $38                                         ; $6ceb: $ff
	rst  $38                                         ; $6cec: $ff
	ei                                               ; $6ced: $fb
	add  d                                           ; $6cee: $82
	ld   de, $5e12                                   ; $6cef: $11 $12 $5e
	rst  $38                                         ; $6cf2: $ff
	ei                                               ; $6cf3: $fb
	ld   d, c                                        ; $6cf4: $51
	ld   de, $1811                                   ; $6cf5: $11 $11 $18
	rst  $38                                         ; $6cf8: $ff
	rst  $38                                         ; $6cf9: $ff
	db   $f4                                         ; $6cfa: $f4
	ld   a, h                                        ; $6cfb: $7c
	ld   hl, $1111                                   ; $6cfc: $21 $11 $11
	rst  $38                                         ; $6cff: $ff
	rst  $38                                         ; $6d00: $ff
	ei                                               ; $6d01: $fb
	ld   l, b                                        ; $6d02: $68
	ld   [hl], e                                     ; $6d03: $73
	ld   de, $cf12                                   ; $6d04: $11 $12 $cf
	rst  $38                                         ; $6d07: $ff
	db   $e4                                         ; $6d08: $e4
	ld   de, $1111                                   ; $6d09: $11 $11 $11
	dec  de                                          ; $6d0c: $1b
	rst  $38                                         ; $6d0d: $ff
	rst  $38                                         ; $6d0e: $ff
	pop  de                                          ; $6d0f: $d1
	dec  de                                          ; $6d10: $1b
	ld   d, h                                        ; $6d11: $54
	ld   de, rAUD1LOW                                   ; $6d12: $11 $13 $ff
	rst  $38                                         ; $6d15: $ff
	ld   [hl], c                                     ; $6d16: $71
	add  hl, de                                      ; $6d17: $19
	cp   b                                           ; $6d18: $b8
	ld   hl, rAUD1LOW                                   ; $6d19: $21 $13 $ff
	rst  $38                                         ; $6d1c: $ff
	ld   [hl], c                                     ; $6d1d: $71
	ld   de, $1141                                   ; $6d1e: $11 $41 $11
	ld   de, $ffff                                   ; $6d21: $11 $ff $ff
	ld   b, c                                        ; $6d24: $41
	ld   a, [de]                                     ; $6d25: $1a
	ld   [$1111], a                                  ; $6d26: $ea $11 $11
	rst  $38                                         ; $6d29: $ff
	rst  $38                                         ; $6d2a: $ff
	ld   de, $fd16                                   ; $6d2b: $11 $16 $fd
	ld   b, c                                        ; $6d2e: $41
	inc  d                                           ; $6d2f: $14
	rst  $38                                         ; $6d30: $ff
	rst  $38                                         ; $6d31: $ff
	ld   h, c                                        ; $6d32: $61
	inc  de                                          ; $6d33: $13
	sub  l                                           ; $6d34: $95
	ld   de, $1f11                                   ; $6d35: $11 $11 $1f
	rst  $38                                         ; $6d38: $ff
	pop  af                                          ; $6d39: $f1
	ld   de, $b1af                                   ; $6d3a: $11 $af $b1
	ld   de, $ff8f                                   ; $6d3d: $11 $8f $ff
	pop  af                                          ; $6d40: $f1
	ld   de, $e3bf                                   ; $6d41: $11 $bf $e3
	ld   de, $ff8f                                   ; $6d44: $11 $8f $ff
	di                                               ; $6d47: $f3
	ld   [de], a                                     ; $6d48: $12
	sbc  h                                           ; $6d49: $9c
	ld   b, c                                        ; $6d4a: $41
	ld   de, $1f11                                   ; $6d4b: $11 $11 $1f
	rst  $38                                         ; $6d4e: $ff
	pop  af                                          ; $6d4f: $f1
	ld   de, $a14f                                   ; $6d50: $11 $4f $a1
	ld   de, $ffdf                                   ; $6d53: $11 $df $ff
	pop  de                                          ; $6d56: $d1
	ld   de, $c4bf                                   ; $6d57: $11 $bf $c4
	ld   de, $ffcf                                   ; $6d5a: $11 $cf $ff
	sub  h                                           ; $6d5d: $94
	inc  d                                           ; $6d5e: $14
	sbc  e                                           ; $6d5f: $9b
	ld   h, c                                        ; $6d60: $61
	ld   de, $1111                                   ; $6d61: $11 $11 $11
	rst  $38                                         ; $6d64: $ff
	rst  $38                                         ; $6d65: $ff
	ld   de, $f914                                   ; $6d66: $11 $14 $f9
	ld   hl, $ff1c                                   ; $6d69: $21 $1c $ff
	db   $fc                                         ; $6d6c: $fc
	ld   de, $b92b                                   ; $6d6d: $11 $2b $b9
	ld   d, c                                        ; $6d70: $51
	dec  hl                                          ; $6d71: $2b
	rst  $38                                         ; $6d72: $ff
	ld   a, [$4852]                                  ; $6d73: $fa $52 $48
	and  a                                           ; $6d76: $a7
	ld   hl, $1111                                   ; $6d77: $21 $11 $11
	add  hl, de                                      ; $6d7a: $19
	rst  $38                                         ; $6d7b: $ff
	db   $fc                                         ; $6d7c: $fc
	ld   de, $f81e                                   ; $6d7d: $11 $1e $f8
	ld   de, $ff3e                                   ; $6d80: $11 $3e $ff
	push af                                          ; $6d83: $f5
	ld   de, $cb6b                                   ; $6d84: $11 $6b $cb
	ld   hl, $ff5f                                   ; $6d87: $21 $5f $ff
	jp   hl                                          ; $6d8a: $e9


	inc  sp                                          ; $6d8b: $33
	ld   l, d                                        ; $6d8c: $6a
	and  [hl]                                        ; $6d8d: $a6
	ld   sp, $1111                                   ; $6d8e: $31 $11 $11
	jr   @+$01                                       ; $6d91: $18 $ff

	db   $fc                                         ; $6d93: $fc
	ld   de, $f71f                                   ; $6d94: $11 $1f $f7
	ld   de, $ff1e                                   ; $6d97: $11 $1e $ff
	db   $f4                                         ; $6d9a: $f4
	ld   de, $ba7b                                   ; $6d9b: $11 $7b $ba
	ld   de, $ff4f                                   ; $6d9e: $11 $4f $ff
	or   $23                                         ; $6da1: $f6 $23
	ld   l, h                                        ; $6da3: $6c
	rst  ToBoot                                         ; $6da4: $c7
	ld   b, c                                        ; $6da5: $41
	ld   de, $1111                                   ; $6da6: $11 $11 $11
	rst  $38                                         ; $6da9: $ff
	rst  $38                                         ; $6daa: $ff
	ld   hl, $fb12                                   ; $6dab: $21 $12 $fb
	ld   hl, $ff1c                                   ; $6dae: $21 $1c $ff
	db   $fc                                         ; $6db1: $fc
	ld   de, $8b28                                   ; $6db2: $11 $28 $8b
	ld   d, c                                        ; $6db5: $51
	dec  a                                           ; $6db6: $3d
	rst  $38                                         ; $6db7: $ff
	ld   sp, hl                                      ; $6db8: $f9
	ld   [hl+], a                                    ; $6db9: $22
	dec  sp                                          ; $6dba: $3b
	ret  z                                           ; $6dbb: $c8

	ld   d, d                                        ; $6dbc: $52
	ld   de, $1111                                   ; $6dbd: $11 $11 $11
	sbc  a                                           ; $6dc0: $9f
	rst  $38                                         ; $6dc1: $ff
	pop  de                                          ; $6dc2: $d1
	ld   de, $51ef                                   ; $6dc3: $11 $ef $51
	dec  d                                           ; $6dc6: $15
	rst  $38                                         ; $6dc7: $ff
	rst  $38                                         ; $6dc8: $ff
	ld   b, c                                        ; $6dc9: $41
	dec  d                                           ; $6dca: $15
	ld   a, d                                        ; $6dcb: $7a
	sub  h                                           ; $6dcc: $94
	jr   c, @+$01                                    ; $6dcd: $38 $ff

	ei                                               ; $6dcf: $fb
	ld   sp, $db27                                   ; $6dd0: $31 $27 $db
	ld   [hl], h                                     ; $6dd3: $74
	ld   [hl-], a                                    ; $6dd4: $32
	ld   de, $1f11                                   ; $6dd5: $11 $11 $1f
	rst  $38                                         ; $6dd8: $ff
	push af                                          ; $6dd9: $f5
	ld   de, $d31f                                   ; $6dda: $11 $1f $d3
	ld   de, $ffaf                                   ; $6ddd: $11 $af $ff
	pop  hl                                          ; $6de0: $e1
	ld   de, $db57                                   ; $6de1: $11 $57 $db
	ld   h, [hl]                                     ; $6de4: $66
	cp   a                                           ; $6de5: $bf
	cp   $83                                         ; $6de6: $fe $83
	inc  [hl]                                        ; $6de8: $34
	xor  h                                           ; $6de9: $ac
	xor  b                                           ; $6dea: $a8
	ld   d, d                                        ; $6deb: $52
	ld   de, $1111                                   ; $6dec: $11 $11 $11
	rst  $38                                         ; $6def: $ff
	rst  $38                                         ; $6df0: $ff
	ld   sp, $f711                                   ; $6df1: $31 $11 $f7
	ld   de, $ff1c                                   ; $6df4: $11 $1c $ff
	ei                                               ; $6df7: $fb
	ld   de, $af14                                   ; $6df8: $11 $14 $af
	or   a                                           ; $6dfb: $b7
	ld   l, [hl]                                     ; $6dfc: $6e
	rst  $38                                         ; $6dfd: $ff
	push bc                                          ; $6dfe: $c5
	inc  hl                                          ; $6dff: $23
	ld   l, h                                        ; $6e00: $6c
	cp   b                                           ; $6e01: $b8
	ld   b, d                                        ; $6e02: $42
	ld   hl, $1111                                   ; $6e03: $21 $11 $11
	sbc  a                                           ; $6e06: $9f
	rst  $38                                         ; $6e07: $ff
	pop  af                                          ; $6e08: $f1
	ld   de, $318b                                   ; $6e09: $11 $8b $31
	add  hl, de                                      ; $6e0c: $19
	rst  $38                                         ; $6e0d: $ff
	rst  $38                                         ; $6e0e: $ff
	ld   b, c                                        ; $6e0f: $41
	ld   de, $ca5c                                   ; $6e10: $11 $5c $ca
	sbc  h                                           ; $6e13: $9c
	rst  $38                                         ; $6e14: $ff
	ld   hl, sp+$21                                  ; $6e15: $f8 $21
	add  hl, sp                                      ; $6e17: $39
	jp   z, $2163                                    ; $6e18: $ca $63 $21

	ld   de, $1f11                                   ; $6e1b: $11 $11 $1f
	rst  $38                                         ; $6e1e: $ff
	db   $f4                                         ; $6e1f: $f4
	ld   de, $823f                                   ; $6e20: $11 $3f $82
	ld   de, $ffbf                                   ; $6e23: $11 $bf $ff
	pop  bc                                          ; $6e26: $c1
	ld   de, $ca4b                                   ; $6e27: $11 $4b $ca
	ld   a, c                                        ; $6e2a: $79
	rst  $38                                         ; $6e2b: $ff
	ei                                               ; $6e2c: $fb
	ld   h, h                                        ; $6e2d: $64
	ld   e, c                                        ; $6e2e: $59
	jp   z, $2163                                    ; $6e2f: $ca $63 $21

	ld   de, $1b11                                   ; $6e32: $11 $11 $1b
	rst  $38                                         ; $6e35: $ff
	db   $fd                                         ; $6e36: $fd
	ld   de, $f71d                                   ; $6e37: $11 $1d $f7
	ld   de, $ff6f                                   ; $6e3a: $11 $6f $ff
	pop  af                                          ; $6e3d: $f1
	ld   de, $ed19                                   ; $6e3e: $11 $19 $ed
	sub  a                                           ; $6e41: $97
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e42: $cf
	cp   $73                                         ; $6e43: $fe $73
	ld   [hl], $cd                                   ; $6e45: $36 $cd
	add  h                                           ; $6e47: $84
	inc  sp                                          ; $6e48: $33
	ld   [hl+], a                                    ; $6e49: $22
	ld   de, rAUD1LEN                                   ; $6e4a: $11 $11 $ff
	rst  $38                                         ; $6e4d: $ff
	sub  c                                           ; $6e4e: $91
	ld   de, $61fe                                   ; $6e4f: $11 $fe $61
	dec  de                                          ; $6e52: $1b
	rst  $38                                         ; $6e53: $ff
	rst  $38                                         ; $6e54: $ff
	ld   de, $cf12                                   ; $6e55: $11 $12 $cf
	ld   a, [$ff8e]                                  ; $6e58: $fa $8e $ff
	and  d                                           ; $6e5b: $a2
	inc  de                                          ; $6e5c: $13
	sbc  [hl]                                        ; $6e5d: $9e
	jp   hl                                          ; $6e5e: $e9


	ld   [hl-], a                                    ; $6e5f: $32
	ld   [hl+], a                                    ; $6e60: $22
	ld   hl, $1f11                                   ; $6e61: $21 $11 $1f
	rst  $38                                         ; $6e64: $ff
	ld   sp, hl                                      ; $6e65: $f9
	ld   de, $da1d                                   ; $6e66: $11 $1d $da
	ld   de, $ffcf                                   ; $6e69: $11 $cf $ff
	pop  af                                          ; $6e6c: $f1
	ld   de, $ff1e                                   ; $6e6d: $11 $1e $ff
	ret  c                                           ; $6e70: $d8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e71: $cf
	ld   sp, hl                                      ; $6e72: $f9
	ld   sp, $df27                                   ; $6e73: $31 $27 $df
	and  e                                           ; $6e76: $a3
	ld   hl, $1123                                   ; $6e77: $21 $23 $11
	ld   de, $ffff                                   ; $6e7a: $11 $ff $ff
	ld   d, c                                        ; $6e7d: $51
	ld   de, $b1fe                                   ; $6e7e: $11 $fe $b1
	dec  l                                           ; $6e81: $2d
	rst  $38                                         ; $6e82: $ff
	db   $fc                                         ; $6e83: $fc

jr_0c1_6e84:
	ld   de, rAUD1ENV                                   ; $6e84: $11 $12 $ff
	db   $fc                                         ; $6e87: $fc
	adc  e                                           ; $6e88: $8b
	rst  $38                                         ; $6e89: $ff
	add  e                                           ; $6e8a: $83
	ld   [de], a                                     ; $6e8b: $12
	adc  [hl]                                        ; $6e8c: $8e
	jp   hl                                          ; $6e8d: $e9


	ld   b, e                                        ; $6e8e: $43
	ld   [hl+], a                                    ; $6e8f: $22
	ld   de, $1f11                                   ; $6e90: $11 $11 $1f
	rst  $38                                         ; $6e93: $ff
	or   $11                                         ; $6e94: $f6 $11
	rra                                              ; $6e96: $1f
	cp   $21                                         ; $6e97: $fe $21
	cp   a                                           ; $6e99: $bf
	rst  $38                                         ; $6e9a: $ff
	pop  de                                          ; $6e9b: $d1
	ld   de, $ff1f                                   ; $6e9c: $11 $1f $ff
	sub  $ae                                         ; $6e9f: $d6 $ae
	jp   hl                                          ; $6ea1: $e9


	ld   b, d                                        ; $6ea2: $42
	jr   z, jr_0c1_6e84                              ; $6ea3: $28 $df

	and  h                                           ; $6ea5: $a4
	ld   sp, $1122                                   ; $6ea6: $31 $22 $11
	ld   de, $ffff                                   ; $6ea9: $11 $ff $ff
	sub  c                                           ; $6eac: $91
	ld   de, $f4df                                   ; $6ead: $11 $df $f4
	ld   a, [de]                                     ; $6eb0: $1a
	rst  $38                                         ; $6eb1: $ff
	rst  $38                                         ; $6eb2: $ff
	ld   de, rAUD1LEN                                   ; $6eb3: $11 $11 $ff
	rst  $38                                         ; $6eb6: $ff
	ld   l, b                                        ; $6eb7: $68
	cp   [hl]                                        ; $6eb8: $be
	and  l                                           ; $6eb9: $a5
	ld   [hl-], a                                    ; $6eba: $32
	ld   a, h                                        ; $6ebb: $7c
	db   $ec                                         ; $6ebc: $ec
	ld   h, h                                        ; $6ebd: $64
	ld   de, $1121                                   ; $6ebe: $11 $21 $11
	ld   e, $ff                                      ; $6ec1: $1e $ff
	db   $fc                                         ; $6ec3: $fc
	ld   de, $ff1b                                   ; $6ec4: $11 $1b $ff
	ld   [hl], c                                     ; $6ec7: $71
	sbc  [hl]                                        ; $6ec8: $9e
	rst  $38                                         ; $6ec9: $ff
	pop  af                                          ; $6eca: $f1
	ld   de, $ff1f                                   ; $6ecb: $11 $1f $ff
	db   $e4                                         ; $6ece: $e4
	ld   a, h                                        ; $6ecf: $7c
	db   $eb                                         ; $6ed0: $eb
	ld   d, e                                        ; $6ed1: $53
	ld   d, $ef                                      ; $6ed2: $16 $ef
	sub  $32                                         ; $6ed4: $d6 $32
	inc  h                                           ; $6ed6: $24
	ld   b, c                                        ; $6ed7: $41
	ld   de, $ff1f                                   ; $6ed8: $11 $1f $ff
	pop  af                                          ; $6edb: $f1
	ld   de, $ff1f                                   ; $6edc: $11 $1f $ff
	ld   de, $ff8f                                   ; $6edf: $11 $8f $ff
	add  c                                           ; $6ee2: $81
	ld   de, $ff7f                                   ; $6ee3: $11 $7f $ff
	ld   h, d                                        ; $6ee6: $62
	adc  l                                           ; $6ee7: $8d
	ld   a, [$1941]                                  ; $6ee8: $fa $41 $19
	rst  $28                                         ; $6eeb: $ef
	or   h                                           ; $6eec: $b4
	ld   hl, $3146                                   ; $6eed: $21 $46 $31
	ld   de, $ff1f                                   ; $6ef0: $11 $1f $ff
	pop  af                                          ; $6ef3: $f1
	ld   de, $ff3f                                   ; $6ef4: $11 $3f $ff
	ld   [de], a                                     ; $6ef7: $12
	adc  a                                           ; $6ef8: $8f
	rst  $38                                         ; $6ef9: $ff
	ld   de, rAUD1LEN                                   ; $6efa: $11 $11 $ff
	db   $fd                                         ; $6efd: $fd
	ld   de, $fc5f                                   ; $6efe: $11 $5f $fc
	ld   h, c                                        ; $6f01: $61
	ld   a, [hl+]                                    ; $6f02: $2a
	rst  $38                                         ; $6f03: $ff
	add  h                                           ; $6f04: $84
	ld   [de], a                                     ; $6f05: $12
	sbc  c                                           ; $6f06: $99
	ld   b, c                                        ; $6f07: $41
	ld   de, $ff1f                                   ; $6f08: $11 $1f $ff
	pop  af                                          ; $6f0b: $f1
	ld   de, $ff5f                                   ; $6f0c: $11 $5f $ff
	ld   de, $ff6f                                   ; $6f0f: $11 $6f $ff
	ld   de, rAUD1ENV                                   ; $6f12: $11 $12 $ff
	ei                                               ; $6f15: $fb
	ld   de, $ff3f                                   ; $6f16: $11 $3f $ff
	add  d                                           ; $6f19: $82
	add  hl, hl                                      ; $6f1a: $29
	db   $ec                                         ; $6f1b: $ec
	ld   h, e                                        ; $6f1c: $63
	inc  h                                           ; $6f1d: $24
	sbc  c                                           ; $6f1e: $99
	ld   sp, $1f11                                   ; $6f1f: $31 $11 $1f
	rst  $38                                         ; $6f22: $ff
	pop  af                                          ; $6f23: $f1
	ld   de, $ff1f                                   ; $6f24: $11 $1f $ff
	ld   hl, $ff8f                                   ; $6f27: $21 $8f $ff
	ld   de, rAUD1LOW                                   ; $6f2a: $11 $13 $ff
	db   $fd                                         ; $6f2d: $fd
	ld   de, $ff5d                                   ; $6f2e: $11 $5d $ff
	sub  h                                           ; $6f31: $94
	ld   c, e                                        ; $6f32: $4b
	bit  2, d                                        ; $6f33: $cb $52
	dec  [hl]                                        ; $6f35: $35
	xor  c                                           ; $6f36: $a9
	ld   b, c                                        ; $6f37: $41
	ld   de, $ff1f                                   ; $6f38: $11 $1f $ff
	pop  af                                          ; $6f3b: $f1
	ld   de, $ff1f                                   ; $6f3c: $11 $1f $ff
	ld   [hl-], a                                    ; $6f3f: $32
	xor  a                                           ; $6f40: $af
	rst  $38                                         ; $6f41: $ff
	ld   hl, rAUD1LOW                                   ; $6f42: $21 $13 $ff
	cp   $11                                         ; $6f45: $fe $11
	ld   l, l                                        ; $6f47: $6d
	db   $fd                                         ; $6f48: $fd
	add  l                                           ; $6f49: $85
	ld   e, h                                        ; $6f4a: $5c
	db   $fd                                         ; $6f4b: $fd
	ld   h, c                                        ; $6f4c: $61
	dec  [hl]                                        ; $6f4d: $35
	call $1171                                       ; $6f4e: $cd $71 $11
	ld   de, $ffff                                   ; $6f51: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $6f54: $11 $11 $ff
	push af                                          ; $6f57: $f5
	add  hl, sp                                      ; $6f58: $39
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f59: $cf
	di                                               ; $6f5a: $f3
	ld   de, $ff5f                                   ; $6f5b: $11 $5f $ff
	pop  de                                          ; $6f5e: $d1
	dec  d                                           ; $6f5f: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f60: $cf
	reti                                             ; $6f61: $d9


	ld   h, [hl]                                     ; $6f62: $66
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f63: $cf
	push bc                                          ; $6f64: $c5
	inc  de                                          ; $6f65: $13
	ld   l, e                                        ; $6f66: $6b
	ret  c                                           ; $6f67: $d8

	ld   de, $1f11                                   ; $6f68: $11 $11 $1f
	rst  $38                                         ; $6f6b: $ff
	push af                                          ; $6f6c: $f5
	ld   de, $ff1f                                   ; $6f6d: $11 $1f $ff
	and  d                                           ; $6f70: $a2
	xor  e                                           ; $6f71: $ab
	rst  $38                                         ; $6f72: $ff
	ld   [hl], c                                     ; $6f73: $71
	ld   de, $ffbf                                   ; $6f74: $11 $bf $ff
	ld   b, c                                        ; $6f77: $41
	add  hl, de                                      ; $6f78: $19
	xor  $b6                                         ; $6f79: $ee $b6
	ld   b, a                                        ; $6f7b: $47
	rst  $28                                         ; $6f7c: $ef
	sub  $22                                         ; $6f7d: $d6 $22
	ld   e, h                                        ; $6f7f: $5c
	ret  z                                           ; $6f80: $c8

	ld   de, $1111                                   ; $6f81: $11 $11 $11
	rst  $38                                         ; $6f84: $ff
	rst  $38                                         ; $6f85: $ff
	ld   de, rAUD1LEN                                   ; $6f86: $11 $11 $ff
	push af                                          ; $6f89: $f5
	ld   e, c                                        ; $6f8a: $59
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f8b: $cf
	pop  bc                                          ; $6f8c: $c1
	ld   de, $ff7f                                   ; $6f8d: $11 $7f $ff
	pop  de                                          ; $6f90: $d1
	inc  d                                           ; $6f91: $14
	sbc  [hl]                                        ; $6f92: $9e
	res  1, b                                        ; $6f93: $cb $88
	call $13b5                                       ; $6f95: $cd $b5 $13
	ld   l, e                                        ; $6f98: $6b
	rst  $10                                         ; $6f99: $d7
	ld   de, $1d11                                   ; $6f9a: $11 $11 $1d
	rst  $38                                         ; $6f9d: $ff
	push af                                          ; $6f9e: $f5
	ld   de, $ff1f                                   ; $6f9f: $11 $1f $ff
	add  c                                           ; $6fa2: $81
	sbc  d                                           ; $6fa3: $9a
	rst  $38                                         ; $6fa4: $ff
	ld   [hl], c                                     ; $6fa5: $71
	ld   de, $ffbf                                   ; $6fa6: $11 $bf $ff
	ld   d, c                                        ; $6fa9: $51
	add  hl, hl                                      ; $6faa: $29
	db   $dd                                         ; $6fab: $dd
	and  a                                           ; $6fac: $a7
	ld   l, c                                        ; $6fad: $69
	xor  $b5                                         ; $6fae: $ee $b5
	inc  [hl]                                        ; $6fb0: $34
	ld   a, h                                        ; $6fb1: $7c
	rst  ToBoot                                         ; $6fb2: $c7
	ld   de, $1111                                   ; $6fb3: $11 $11 $11
	rst  $38                                         ; $6fb6: $ff
	rst  $38                                         ; $6fb7: $ff
	ld   b, c                                        ; $6fb8: $41
	ld   de, $faff                                   ; $6fb9: $11 $ff $fa
	add  hl, hl                                      ; $6fbc: $29
	adc  a                                           ; $6fbd: $8f
	push af                                          ; $6fbe: $f5
	ld   de, $ff4e                                   ; $6fbf: $11 $4e $ff
	ldh  a, [c]                                      ; $6fc2: $f2
	ld   de, $dc6d                                   ; $6fc3: $11 $6d $dc
	xor  b                                           ; $6fc6: $a8
	cp   [hl]                                        ; $6fc7: $be
	add  $22                                         ; $6fc8: $c6 $22
	ld   e, c                                        ; $6fca: $59
	call c, $1161                                    ; $6fcb: $dc $61 $11
	ld   de, $ff4f                                   ; $6fce: $11 $4f $ff
	pop  de                                          ; $6fd1: $d1
	ld   de, $ff7f                                   ; $6fd2: $11 $7f $ff
	ld   c, b                                        ; $6fd5: $48
	ld   a, l                                        ; $6fd6: $7d
	ld   sp, hl                                      ; $6fd7: $f9
	ld   de, $ff1a                                   ; $6fd8: $11 $1a $ff
	rst  $30                                         ; $6fdb: $f7
	ld   de, $ec5b                                   ; $6fdc: $11 $5b $ec
	sub  a                                           ; $6fdf: $97
	sbc  [hl]                                        ; $6fe0: $9e
	jp   hl                                          ; $6fe1: $e9


	ld   b, e                                        ; $6fe2: $43
	ld   e, b                                        ; $6fe3: $58
	call $11a4                                       ; $6fe4: $cd $a4 $11
	ld   de, rAUD1LEN                                   ; $6fe7: $11 $11 $ff
	rst  $38                                         ; $6fea: $ff
	ld   de, rAUD1LEN                                   ; $6feb: $11 $11 $ff
	rst  $30                                         ; $6fee: $f7
	ld   c, c                                        ; $6fef: $49
	xor  a                                           ; $6ff0: $af
	jp   nc, $6f11                                   ; $6ff1: $d2 $11 $6f

	rst  $38                                         ; $6ff4: $ff
	pop  hl                                          ; $6ff5: $e1
	ld   de, $fd8e                                   ; $6ff6: $11 $8e $fd
	sbc  b                                           ; $6ff9: $98
	adc  $a4                                         ; $6ffa: $ce $a4
	ld   [de], a                                     ; $6ffc: $12
	ld   a, h                                        ; $6ffd: $7c
	db   $fd                                         ; $6ffe: $fd
	ld   d, c                                        ; $6fff: $51
	ld   de, $1f11                                   ; $7000: $11 $11 $1f
	rst  $38                                         ; $7003: $ff
	pop  af                                          ; $7004: $f1
	ld   de, $ff1f                                   ; $7005: $11 $1f $ff
	ld   [hl], a                                     ; $7008: $77
	sbc  e                                           ; $7009: $9b
	ld   a, [$1711]                                  ; $700a: $fa $11 $17
	rst  $38                                         ; $700d: $ff
	ei                                               ; $700e: $fb
	ld   de, $ed29                                   ; $700f: $11 $29 $ed
	or   [hl]                                        ; $7012: $b6
	ld   a, e                                        ; $7013: $7b
	db   $ec                                         ; $7014: $ec
	ld   h, e                                        ; $7015: $63
	ld   b, a                                        ; $7016: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7017: $cf
	rst  $20                                         ; $7018: $e7
	ld   hl, $1111                                   ; $7019: $21 $11 $11
	ld   de, $feff                                   ; $701c: $11 $ff $fe
	ld   de, $ff18                                   ; $701f: $11 $18 $ff
	ldh  a, [c]                                      ; $7022: $f2
	ld   d, h                                        ; $7023: $54
	rst  $28                                         ; $7024: $ef
	sub  c                                           ; $7025: $91
	ld   de, $ffbf                                   ; $7026: $11 $bf $ff
	ld   b, c                                        ; $7029: $41
	inc  de                                          ; $702a: $13
	rst  $28                                         ; $702b: $ef
	ld   a, [$de36]                                  ; $702c: $fa $36 $de
	or   l                                           ; $702f: $b5
	inc  hl                                          ; $7030: $23
	ld   a, a                                        ; $7031: $7f
	db   $fc                                         ; $7032: $fc
	ld   d, c                                        ; $7033: $51
	ld   de, $1121                                   ; $7034: $11 $21 $11
	rst  $38                                         ; $7037: $ff
	rst  $38                                         ; $7038: $ff
	ld   hl, rAUD1LEN                                   ; $7039: $21 $11 $ff
	db   $fc                                         ; $703c: $fc
	ld   h, $5f                                      ; $703d: $26 $5f
	push af                                          ; $703f: $f5
	ld   de, $ff4f                                   ; $7040: $11 $4f $ff
	pop  af                                          ; $7043: $f1
	ld   de, $fe7f                                   ; $7044: $11 $7f $fe
	ld   [hl], h                                     ; $7047: $74
	sbc  [hl]                                        ; $7048: $9e
	reti                                             ; $7049: $d9


	ld   [hl-], a                                    ; $704a: $32
	ld   l, e                                        ; $704b: $6b
	rst  $38                                         ; $704c: $ff
	sub  e                                           ; $704d: $93
	ld   de, $1124                                   ; $704e: $11 $24 $11
	ld   d, $ff                                      ; $7051: $16 $ff
	ld   hl, sp+$11                                  ; $7053: $f8 $11
	rra                                              ; $7055: $1f
	rst  $38                                         ; $7056: $ff
	pop  af                                          ; $7057: $f1
	ld   b, h                                        ; $7058: $44
	rst  $38                                         ; $7059: $ff
	ld   [hl], c                                     ; $705a: $71
	ld   de, $ffef                                   ; $705b: $11 $ef $ff
	ld   de, $ff15                                   ; $705e: $11 $15 $ff
	ld   hl, sp+$36                                  ; $7061: $f8 $36
	sbc  $a3                                         ; $7063: $de $a3
	inc  de                                          ; $7065: $13
	cp   a                                           ; $7066: $bf
	db   $fd                                         ; $7067: $fd
	ld   sp, $6611                                   ; $7068: $31 $11 $66
	ld   de, $ff1c                                   ; $706b: $11 $1c $ff
	pop  af                                          ; $706e: $f1
	ld   de, $ff1f                                   ; $706f: $11 $1f $ff
	or   c                                           ; $7072: $b1
	inc  d                                           ; $7073: $14
	rst  $38                                         ; $7074: $ff
	ld   h, c                                        ; $7075: $61
	inc  de                                          ; $7076: $13
	rst  $38                                         ; $7077: $ff
	db   $fd                                         ; $7078: $fd
	ld   de, $ff1a                                   ; $7079: $11 $1a $ff
	push hl                                          ; $707c: $e5
	dec  h                                           ; $707d: $25
	call $15a3                                       ; $707e: $cd $a3 $15
	rst  JumpTable                                         ; $7081: $df
	ei                                               ; $7082: $fb
	ld   de, $7712                                   ; $7083: $11 $12 $77
	ld   de, $ff1b                                   ; $7086: $11 $1b $ff
	pop  af                                          ; $7089: $f1
	ld   de, $ff1f                                   ; $708a: $11 $1f $ff
	or   c                                           ; $708d: $b1
	inc  d                                           ; $708e: $14
	rst  $38                                         ; $708f: $ff
	ld   [hl], c                                     ; $7090: $71
	inc  d                                           ; $7091: $14
	rst  $38                                         ; $7092: $ff
	db   $fc                                         ; $7093: $fc
	ld   de, $ff1c                                   ; $7094: $11 $1c $ff
	db   $e4                                         ; $7097: $e4
	dec  h                                           ; $7098: $25
	xor  $a3                                         ; $7099: $ee $a3
	dec  d                                           ; $709b: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $709c: $cf
	ei                                               ; $709d: $fb
	ld   de, $9713                                   ; $709e: $11 $13 $97
	ld   de, $ff17                                   ; $70a1: $11 $17 $ff
	db   $f4                                         ; $70a4: $f4
	ld   de, $ff1f                                   ; $70a5: $11 $1f $ff
	pop  de                                          ; $70a8: $d1
	inc  d                                           ; $70a9: $14
	rst  $38                                         ; $70aa: $ff
	ld   [hl], c                                     ; $70ab: $71
	ld   [de], a                                     ; $70ac: $12
	rst  $38                                         ; $70ad: $ff
	cp   $11                                         ; $70ae: $fe $11
	ld   a, [de]                                     ; $70b0: $1a
	rst  $38                                         ; $70b1: $ff
	push af                                          ; $70b2: $f5
	dec  h                                           ; $70b3: $25
	sbc  $a4                                         ; $70b4: $de $a4
	inc  d                                           ; $70b6: $14
	cp   a                                           ; $70b7: $bf
	db   $fd                                         ; $70b8: $fd
	ld   hl, $8913                                   ; $70b9: $21 $13 $89
	ld   hl, rAUD1LEN                                   ; $70bc: $21 $11 $ff
	db   $fd                                         ; $70bf: $fd
	ld   de, $ff19                                   ; $70c0: $11 $19 $ff
	pop  af                                          ; $70c3: $f1
	inc  de                                          ; $70c4: $13
	cp   a                                           ; $70c5: $bf
	or   c                                           ; $70c6: $b1
	ld   de, $ffdf                                   ; $70c7: $11 $df $ff
	ld   de, $ff15                                   ; $70ca: $11 $15 $ff
	ld   sp, hl                                      ; $70cd: $f9
	inc  [hl]                                        ; $70ce: $34
	cp   [hl]                                        ; $70cf: $be
	add  $13                                         ; $70d0: $c6 $13
	adc  a                                           ; $70d2: $8f
	rst  $38                                         ; $70d3: $ff
	ld   d, c                                        ; $70d4: $51
	ld   de, $3167                                   ; $70d5: $11 $67 $31
	ld   de, $ffff                                   ; $70d8: $11 $ff $ff
	ld   de, rAUD1LEN                                   ; $70db: $11 $11 $ff
	db   $f4                                         ; $70de: $f4
	ld   [de], a                                     ; $70df: $12
	adc  a                                           ; $70e0: $8f
	pop  hl                                          ; $70e1: $e1
	ld   de, $ffbf                                   ; $70e2: $11 $bf $ff
	ld   d, c                                        ; $70e5: $51
	ld   de, $fbff                                   ; $70e6: $11 $ff $fb
	ld   b, d                                        ; $70e9: $42
	ld   a, l                                        ; $70ea: $7d
	ret  z                                           ; $70eb: $c8

	ld   [hl+], a                                    ; $70ec: $22
	ld   l, [hl]                                     ; $70ed: $6e
	rst  $38                                         ; $70ee: $ff
	add  c                                           ; $70ef: $81
	ld   de, $6157                                   ; $70f0: $11 $57 $61
	ld   de, $ff7f                                   ; $70f3: $11 $7f $ff
	ld   b, c                                        ; $70f6: $41
	ld   de, $fcff                                   ; $70f7: $11 $ff $fc
	ld   de, $f74f                                   ; $70fa: $11 $4f $f7
	ld   de, $ff4f                                   ; $70fd: $11 $4f $ff
	pop  bc                                          ; $7100: $c1
	ld   de, $febf                                   ; $7101: $11 $bf $fe
	ld   h, d                                        ; $7104: $62
	ld   e, l                                        ; $7105: $5d
	ld   [$5b41], a                                  ; $7106: $ea $41 $5b
	rst  $38                                         ; $7109: $ff
	db   $d3                                         ; $710a: $d3
	ld   de, $7337                                   ; $710b: $11 $37 $73
	ld   de, $ff1f                                   ; $710e: $11 $1f $ff
	pop  af                                          ; $7111: $f1
	ld   de, $ff1f                                   ; $7112: $11 $1f $ff
	ld   b, c                                        ; $7115: $41
	add  hl, hl                                      ; $7116: $29
	cp   $11                                         ; $7117: $fe $11
	inc  e                                           ; $7119: $1c
	rst  $38                                         ; $711a: $ff
	di                                               ; $711b: $f3
	ld   de, $ff3f                                   ; $711c: $11 $3f $ff
	sub  e                                           ; $711f: $93
	jr   c, @-$11                                    ; $7120: $38 $ed

	ld   [hl], c                                     ; $7122: $71
	daa                                              ; $7123: $27
	rst  $38                                         ; $7124: $ff
	ld   hl, sp+$11                                  ; $7125: $f8 $11
	ld   d, $95                                      ; $7127: $16 $95
	ld   de, rAUD1LEN                                   ; $7129: $11 $11 $ff
	ei                                               ; $712c: $fb
	ld   de, $ff19                                   ; $712d: $11 $19 $ff
	pop  af                                          ; $7130: $f1
	dec  d                                           ; $7131: $15
	rst  JumpTable                                         ; $7132: $df
	and  c                                           ; $7133: $a1
	ld   de, $ffff                                   ; $7134: $11 $ff $ff
	ld   de, $ff19                                   ; $7137: $11 $19 $ff
	or   $24                                         ; $713a: $f6 $24
	adc  $b5                                         ; $713c: $ce $b5
	inc  d                                           ; $713e: $14
	xor  a                                           ; $713f: $af
	rst  $38                                         ; $7140: $ff
	ld   [hl], c                                     ; $7141: $71
	inc  de                                          ; $7142: $13
	ld   [hl], a                                     ; $7143: $77
	ld   b, c                                        ; $7144: $41
	ld   de, $ff1f                                   ; $7145: $11 $1f $ff
	pop  bc                                          ; $7148: $c1
	ld   de, $ff5f                                   ; $7149: $11 $5f $ff
	ld   hl, $fa5b                                   ; $714c: $21 $5b $fa
	ld   de, $ff1f                                   ; $714f: $11 $1f $ff
	pop  hl                                          ; $7152: $e1
	ld   de, $fe9f                                   ; $7153: $11 $9f $fe
	ld   [hl], e                                     ; $7156: $73
	ld   e, h                                        ; $7157: $5c
	ld   [$5a42], a                                  ; $7158: $ea $42 $5a
	rst  $38                                         ; $715b: $ff
	ret  c                                           ; $715c: $d8

	ld   [hl-], a                                    ; $715d: $32
	ld   [hl], $63                                   ; $715e: $36 $63
	ld   de, rAUD1LEN                                   ; $7160: $11 $11 $ff
	rst  $38                                         ; $7163: $ff
	ld   de, rAUD1LEN                                   ; $7164: $11 $11 $ff
	rst  $30                                         ; $7167: $f7
	inc  d                                           ; $7168: $14
	adc  a                                           ; $7169: $8f
	jp   nc, $cf11                                   ; $716a: $d2 $11 $cf

	rst  $38                                         ; $716d: $ff
	ld   sp, $ff15                                   ; $716e: $31 $15 $ff
	ld   hl, sp+$45                                  ; $7171: $f8 $45
	xor  l                                           ; $7173: $ad
	or   l                                           ; $7174: $b5
	inc  h                                           ; $7175: $24
	xor  [hl]                                        ; $7176: $ae
	db   $fd                                         ; $7177: $fd
	add  l                                           ; $7178: $85
	ld   b, h                                        ; $7179: $44
	ld   d, [hl]                                     ; $717a: $56
	ld   b, d                                        ; $717b: $42
	ld   de, rAUD1ENV                                   ; $717c: $11 $12 $ff
	ld   sp, hl                                      ; $717f: $f9
	ld   de, $ff18                                   ; $7180: $11 $18 $ff
	pop  de                                          ; $7183: $d1
	rla                                              ; $7184: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7185: $cf
	add  c                                           ; $7186: $81
	inc  de                                          ; $7187: $13
	rst  $38                                         ; $7188: $ff
	ld   a, [$1b11]                                  ; $7189: $fa $11 $1b
	rst  $38                                         ; $718c: $ff
	push bc                                          ; $718d: $c5
	ld   c, b                                        ; $718e: $48
	call $2783                                       ; $718f: $cd $83 $27
	rst  JumpTable                                         ; $7192: $df
	ld   sp, hl                                      ; $7193: $f9
	ld   h, l                                        ; $7194: $65
	ld   h, [hl]                                     ; $7195: $66
	ld   h, l                                        ; $7196: $65
	ld   hl, $1611                                   ; $7197: $21 $11 $16
	rst  $38                                         ; $719a: $ff
	or   $11                                         ; $719b: $f6 $11
	dec  e                                           ; $719d: $1d
	rst  $38                                         ; $719e: $ff
	pop  bc                                          ; $719f: $c1
	add  hl, hl                                      ; $71a0: $29
	rst  $38                                         ; $71a1: $ff
	ld   b, c                                        ; $71a2: $41
	jr   @+$01                                       ; $71a3: $18 $ff

	rst  $30                                         ; $71a5: $f7
	ld   de, $ff2e                                   ; $71a6: $11 $2e $ff
	and  l                                           ; $71a9: $a5
	ld   e, d                                        ; $71aa: $5a
	db   $eb                                         ; $71ab: $eb
	ld   h, d                                        ; $71ac: $62

jr_0c1_71ad:
	ld   c, c                                        ; $71ad: $49
	rst  JumpTable                                         ; $71ae: $df
	rst  ToBoot                                         ; $71af: $c7
	ld   d, [hl]                                     ; $71b0: $56
	sub  a                                           ; $71b1: $97
	ld   h, h                                        ; $71b2: $64
	ld   [hl-], a                                    ; $71b3: $32
	ld   de, rAUD1LOW                                   ; $71b4: $11 $13 $ff
	ld   a, [$1a11]                                  ; $71b7: $fa $11 $1a
	rst  $38                                         ; $71ba: $ff
	pop  bc                                          ; $71bb: $c1
	jr   jr_0c1_71ad                                 ; $71bc: $18 $ef

	ld   h, c                                        ; $71be: $61
	dec  d                                           ; $71bf: $15
	rst  $38                                         ; $71c0: $ff
	ld   sp, hl                                      ; $71c1: $f9
	ld   de, $ff1c                                   ; $71c2: $11 $1c $ff
	and  l                                           ; $71c5: $a5
	ld   e, d                                        ; $71c6: $5a
	db   $ed                                         ; $71c7: $ed
	ld   h, d                                        ; $71c8: $62
	add  hl, sp                                      ; $71c9: $39
	rst  JumpTable                                         ; $71ca: $df
	rst  $10                                         ; $71cb: $d7
	ld   b, [hl]                                     ; $71cc: $46
	xor  c                                           ; $71cd: $a9
	ld   [hl], e                                     ; $71ce: $73
	ld   de, $1111                                   ; $71cf: $11 $11 $11
	rst  $38                                         ; $71d2: $ff
	db   $fd                                         ; $71d3: $fd
	ld   de, rAUD1HIGH                                   ; $71d4: $11 $14 $ff
	di                                               ; $71d7: $f3
	rla                                              ; $71d8: $17
	cp   a                                           ; $71d9: $bf
	add  c                                           ; $71da: $81
	inc  de                                          ; $71db: $13
	rst  $38                                         ; $71dc: $ff
	ei                                               ; $71dd: $fb
	ld   de, $ff1a                                   ; $71de: $11 $1a $ff
	or   [hl]                                        ; $71e1: $b6
	ld   e, d                                        ; $71e2: $5a
	call c, $3873                                    ; $71e3: $dc $73 $38
	rst  JumpTable                                         ; $71e6: $df
	rst  ToBoot                                         ; $71e7: $c7
	ld   b, [hl]                                     ; $71e8: $46
	sbc  d                                           ; $71e9: $9a
	sub  l                                           ; $71ea: $95
	ld   hl, $1121                                   ; $71eb: $21 $21 $11
	ld   l, a                                        ; $71ee: $6f
	rst  $38                                         ; $71ef: $ff
	ld   d, c                                        ; $71f0: $51
	ld   de, $fbef                                   ; $71f1: $11 $ef $fb
	inc  b                                           ; $71f4: $04
	adc  [hl]                                        ; $71f5: $8e
	db   $e4                                         ; $71f6: $e4
	ld   de, $ff9f                                   ; $71f7: $11 $9f $ff
	ld   h, c                                        ; $71fa: $61
	inc  d                                           ; $71fb: $14
	rst  $28                                         ; $71fc: $ef
	ld   [$bd57], a                                  ; $71fd: $ea $57 $bd
	and  h                                           ; $7200: $a4
	dec  h                                           ; $7201: $25
	cp   a                                           ; $7202: $bf
	ld   [$7a54], a                                  ; $7203: $ea $54 $7a
	or   a                                           ; $7206: $b7
	ld   sp, $1122                                   ; $7207: $31 $22 $11
	rra                                              ; $720a: $1f
	rst  $38                                         ; $720b: $ff
	pop  af                                          ; $720c: $f1
	ld   de, $ff1f                                   ; $720d: $11 $1f $ff
	ld   d, c                                        ; $7210: $51
	ld   l, d                                        ; $7211: $6a
	ld   a, [$1e11]                                  ; $7212: $fa $11 $1e
	rst  $38                                         ; $7215: $ff
	pop  de                                          ; $7216: $d1
	ld   de, $fd9f                                   ; $7217: $11 $9f $fd
	ld   [hl], l                                     ; $721a: $75
	sbc  h                                           ; $721b: $9c
	rst  ToBoot                                         ; $721c: $c7
	inc  sp                                          ; $721d: $33
	adc  [hl]                                        ; $721e: $8e
	db   $fd                                         ; $721f: $fd
	ld   [hl], h                                     ; $7220: $74
	ld   e, b                                        ; $7221: $58
	xor  b                                           ; $7222: $a8
	ld   d, d                                        ; $7223: $52
	inc  hl                                          ; $7224: $23
	ld   hl, rAUD1LOW                                   ; $7225: $21 $13 $ff
	rst  $30                                         ; $7228: $f7
	ld   de, $ff1f                                   ; $7229: $11 $1f $ff
	and  c                                           ; $722c: $a1
	ld   c, c                                        ; $722d: $49
	rst  $38                                         ; $722e: $ff
	ld   b, c                                        ; $722f: $41
	add  hl, de                                      ; $7230: $19
	rst  $38                                         ; $7231: $ff
	or   $11                                         ; $7232: $f6 $11
	ld   c, a                                        ; $7234: $4f
	rst  $38                                         ; $7235: $ff
	sub  l                                           ; $7236: $95
	ld   a, h                                        ; $7237: $7c
	reti                                             ; $7238: $d9


	ld   b, d                                        ; $7239: $42
	ld   e, e                                        ; $723a: $5b
	db   $ed                                         ; $723b: $ed
	and  [hl]                                        ; $723c: $a6
	ld   h, a                                        ; $723d: $67
	halt                                             ; $723e: $76
	ld   b, e                                        ; $723f: $43
	inc  hl                                          ; $7240: $23
	ld   de, $ff1b                                   ; $7241: $11 $1b $ff
	pop  af                                          ; $7244: $f1
	ld   de, $ff1f                                   ; $7245: $11 $1f $ff
	ld   d, c                                        ; $7248: $51
	ld   a, e                                        ; $7249: $7b
	db   $fc                                         ; $724a: $fc
	ld   de, $ff1e                                   ; $724b: $11 $1e $ff
	pop  hl                                          ; $724e: $e1
	ld   de, $fc9f                                   ; $724f: $11 $9f $fc
	ld   h, l                                        ; $7252: $65
	sbc  [hl]                                        ; $7253: $9e
	rst  $10                                         ; $7254: $d7
	ld   de, $fe6e                                   ; $7255: $11 $6e $fe
	ld   [hl], e                                     ; $7258: $73
	ld   e, c                                        ; $7259: $59
	cp   b                                           ; $725a: $b8
	ld   b, c                                        ; $725b: $41
	inc  d                                           ; $725c: $14
	ld   sp, rAUD1ENV                                   ; $725d: $31 $12 $ff
	or   $11                                         ; $7260: $f6 $11
	rra                                              ; $7262: $1f
	rst  $38                                         ; $7263: $ff
	sub  c                                           ; $7264: $91
	ld   e, c                                        ; $7265: $59
	rst  $38                                         ; $7266: $ff
	ld   hl, $ff1b                                   ; $7267: $21 $1b $ff
	di                                               ; $726a: $f3
	ld   de, $fc7f                                   ; $726b: $11 $7f $fc
	ld   [hl], h                                     ; $726e: $74
	adc  l                                           ; $726f: $8d
	add  sp, $21                                     ; $7270: $e8 $21
	ld   l, l                                        ; $7272: $6d
	rst  $38                                         ; $7273: $ff
	sub  e                                           ; $7274: $93
	ld   [hl], $99                                   ; $7275: $36 $99
	ld   h, d                                        ; $7277: $62
	ld   de, $1f11                                   ; $7278: $11 $11 $1f
	rst  $38                                         ; $727b: $ff
	add  c                                           ; $727c: $81
	ld   de, $fadf                                   ; $727d: $11 $df $fa
	rla                                              ; $7280: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7281: $cf
	pop  af                                          ; $7282: $f1
	ld   de, $ffbf                                   ; $7283: $11 $bf $ff
	ld   b, c                                        ; $7286: $41
	ld   d, $ff                                      ; $7287: $16 $ff
	add  $59                                         ; $7289: $c6 $59
	rst  JumpTable                                         ; $728b: $df
	add  d                                           ; $728c: $82
	inc  d                                           ; $728d: $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $728e: $cf
	ld   sp, hl                                      ; $728f: $f9
	ld   [hl-], a                                    ; $7290: $32
	adc  d                                           ; $7291: $8a
	and  [hl]                                        ; $7292: $a6
	ld   sp, $1134                                   ; $7293: $31 $34 $11
	ld   a, [de]                                     ; $7296: $1a
	rst  $38                                         ; $7297: $ff
	pop  af                                          ; $7298: $f1
	ld   de, $ff1f                                   ; $7299: $11 $1f $ff
	ld   sp, $f9ad                                   ; $729c: $31 $ad $f9
	ld   de, $ff2f                                   ; $729f: $11 $2f $ff
	and  c                                           ; $72a2: $a1
	ld   [de], a                                     ; $72a3: $12
	rst  JumpTable                                         ; $72a4: $df
	jp   hl                                          ; $72a5: $e9


	ld   d, a                                        ; $72a6: $57
	sbc  $b3                                         ; $72a7: $de $b3
	inc  de                                          ; $72a9: $13
	cp   a                                           ; $72aa: $bf
	ei                                               ; $72ab: $fb
	ld   sp, $c96b                                   ; $72ac: $31 $6b $c9
	ld   b, e                                        ; $72af: $43
	dec  [hl]                                        ; $72b0: $35
	ld   b, c                                        ; $72b1: $41
	ld   de, $ffff                                   ; $72b2: $11 $ff $ff
	ld   de, $ff16                                   ; $72b5: $11 $16 $ff
	or   c                                           ; $72b8: $b1
	dec  a                                           ; $72b9: $3d
	rst  $38                                         ; $72ba: $ff
	ld   b, c                                        ; $72bb: $41
	rla                                              ; $72bc: $17
	rst  $38                                         ; $72bd: $ff
	db   $f4                                         ; $72be: $f4
	ld   de, $fb8f                                   ; $72bf: $11 $8f $fb
	ld   d, [hl]                                     ; $72c2: $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72c3: $cf
	push bc                                          ; $72c4: $c5
	ld   de, $fd8f                                   ; $72c5: $11 $8f $fd
	ld   d, c                                        ; $72c8: $51
	ld   c, h                                        ; $72c9: $4c
	jp   hl                                          ; $72ca: $e9


	ld   b, d                                        ; $72cb: $42
	ld   b, [hl]                                     ; $72cc: $46
	sub  h                                           ; $72cd: $94
	ld   de, $ff1f                                   ; $72ce: $11 $1f $ff
	ld   d, c                                        ; $72d1: $51
	ld   de, $f4ff                                   ; $72d2: $11 $ff $f4
	add  hl, de                                      ; $72d5: $19
	rst  $28                                         ; $72d6: $ef
	jp   $ef11                                       ; $72d7: $c3 $11 $ef


	ld   sp, hl                                      ; $72da: $f9
	ld   hl, $fd4e                                   ; $72db: $21 $4e $fd
	ld   h, l                                        ; $72de: $65
	ld   a, l                                        ; $72df: $7d
	jp   c, Jump_0c1_6c43                            ; $72e0: $da $43 $6c

	db   $ec                                         ; $72e3: $ec
	sub  [hl]                                        ; $72e4: $96
	ld   h, a                                        ; $72e5: $67
	sbc  c                                           ; $72e6: $99
	add  [hl]                                        ; $72e7: $86
	ld   h, a                                        ; $72e8: $67
	halt                                             ; $72e9: $76
	ld   b, e                                        ; $72ea: $43
	ld   de, $bf11                                   ; $72eb: $11 $11 $bf
	rst  $38                                         ; $72ee: $ff
	ld   de, rAUD1HIGH                                   ; $72ef: $11 $14 $ff
	or   d                                           ; $72f2: $b2
	ld   l, a                                        ; $72f3: $6f
	ei                                               ; $72f4: $fb
	ld   hl, $ff1b                                   ; $72f5: $21 $1b $ff
	or   l                                           ; $72f8: $b5
	ld   [hl], $ac                                   ; $72f9: $36 $ac
	cp   d                                           ; $72fb: $ba
	xor  e                                           ; $72fc: $ab
	and  a                                           ; $72fd: $a7
	ld   b, h                                        ; $72fe: $44
	ld   a, d                                        ; $72ff: $7a
	cp   e                                           ; $7300: $bb
	sub  [hl]                                        ; $7301: $96
	ld   [hl], a                                     ; $7302: $77
	ld   d, [hl]                                     ; $7303: $56
	ld   a, c                                        ; $7304: $79
	cp   d                                           ; $7305: $ba
	add  h                                           ; $7306: $84
	inc  [hl]                                        ; $7307: $34
	ld   [hl], a                                     ; $7308: $77
	ld   b, e                                        ; $7309: $43
	ld   bc, $ff18                                   ; $730a: $01 $18 $ff
	di                                               ; $730d: $f3
	ld   de, $fd6d                                   ; $730e: $11 $6d $fd
	ld   [hl], a                                     ; $7311: $77
	sbc  e                                           ; $7312: $9b
	sub  [hl]                                        ; $7313: $96
	ld   e, b                                        ; $7314: $58
	sbc  $c6                                         ; $7315: $de $c6
	dec  [hl]                                        ; $7317: $35
	sbc  l                                           ; $7318: $9d
	db   $db                                         ; $7319: $db
	ld   [hl], a                                     ; $731a: $77
	adc  d                                           ; $731b: $8a
	add  a                                           ; $731c: $87
	ld   l, b                                        ; $731d: $68
	xor  d                                           ; $731e: $aa
	add  l                                           ; $731f: $85
	ld   d, [hl]                                     ; $7320: $56
	adc  c                                           ; $7321: $89
	sbc  c                                           ; $7322: $99
	ld   a, b                                        ; $7323: $78
	xor  b                                           ; $7324: $a8
	ld   h, l                                        ; $7325: $65
	ld   h, [hl]                                     ; $7326: $66
	halt                                             ; $7327: $76
	ld   b, e                                        ; $7328: $43
	ld   b, l                                        ; $7329: $45
	ld   b, c                                        ; $732a: $41
	dec  sp                                          ; $732b: $3b
	db   $ed                                         ; $732c: $ed
	sub  h                                           ; $732d: $94
	inc  hl                                          ; $732e: $23
	xor  h                                           ; $732f: $ac
	ret  z                                           ; $7330: $c8

	sbc  d                                           ; $7331: $9a
	sub  a                                           ; $7332: $97
	ld   h, a                                        ; $7333: $67
	sbc  e                                           ; $7334: $9b
	jp   z, $8977                                    ; $7335: $ca $77 $89

	xor  c                                           ; $7338: $a9
	sbc  c                                           ; $7339: $99
	cp   d                                           ; $733a: $ba
	add  [hl]                                        ; $733b: $86
	ld   l, b                                        ; $733c: $68
	sbc  c                                           ; $733d: $99
	sub  a                                           ; $733e: $97
	ld   a, c                                        ; $733f: $79
	add  a                                           ; $7340: $87
	ld   l, b                                        ; $7341: $68
	cp   d                                           ; $7342: $ba
	sbc  b                                           ; $7343: $98
	ld   h, [hl]                                     ; $7344: $66
	adc  b                                           ; $7345: $88
	ld   [hl], l                                     ; $7346: $75
	ld   l, c                                        ; $7347: $69
	and  [hl]                                        ; $7348: $a6
	inc  sp                                          ; $7349: $33
	dec  [hl]                                        ; $734a: $35
	ld   d, [hl]                                     ; $734b: $56
	sbc  c                                           ; $734c: $99
	sbc  b                                           ; $734d: $98
	halt                                             ; $734e: $76
	ld   l, b                                        ; $734f: $68
	sbc  c                                           ; $7350: $99
	xor  c                                           ; $7351: $a9
	add  a                                           ; $7352: $87
	sbc  e                                           ; $7353: $9b
	xor  c                                           ; $7354: $a9
	sbc  c                                           ; $7355: $99
	adc  c                                           ; $7356: $89
	sbc  c                                           ; $7357: $99
	adc  c                                           ; $7358: $89
	sbc  d                                           ; $7359: $9a
	sbc  d                                           ; $735a: $9a
	sub  a                                           ; $735b: $97
	ld   a, c                                        ; $735c: $79
	sub  a                                           ; $735d: $97
	ld   a, c                                        ; $735e: $79
	sbc  b                                           ; $735f: $98
	ld   a, b                                        ; $7360: $78
	sbc  b                                           ; $7361: $98
	adc  c                                           ; $7362: $89
	ld   [hl], a                                     ; $7363: $77
	adc  h                                           ; $7364: $8c
	xor  b                                           ; $7365: $a8
	halt                                             ; $7366: $76
	ld   [hl], a                                     ; $7367: $77
	sbc  b                                           ; $7368: $98
	ld   h, [hl]                                     ; $7369: $66
	halt                                             ; $736a: $76
	ld   d, [hl]                                     ; $736b: $56
	ld   [hl], a                                     ; $736c: $77
	ld   b, e                                        ; $736d: $43
	ld   e, b                                        ; $736e: $58
	sub  a                                           ; $736f: $97
	ld   h, h                                        ; $7370: $64
	ld   l, b                                        ; $7371: $68
	xor  c                                           ; $7372: $a9
	ld   [hl], a                                     ; $7373: $77
	sbc  d                                           ; $7374: $9a
	xor  c                                           ; $7375: $a9
	add  a                                           ; $7376: $87
	sbc  d                                           ; $7377: $9a
	xor  c                                           ; $7378: $a9
	ld   a, c                                        ; $7379: $79
	xor  d                                           ; $737a: $aa
	sbc  c                                           ; $737b: $99
	ld   [hl], a                                     ; $737c: $77
	sbc  d                                           ; $737d: $9a
	sbc  c                                           ; $737e: $99
	sbc  c                                           ; $737f: $99
	sbc  c                                           ; $7380: $99
	and  a                                           ; $7381: $a7
	ld   a, c                                        ; $7382: $79
	sbc  b                                           ; $7383: $98
	adc  c                                           ; $7384: $89
	ld   [hl], a                                     ; $7385: $77
	xor  d                                           ; $7386: $aa
	and  a                                           ; $7387: $a7
	ld   h, a                                        ; $7388: $67
	ld   a, b                                        ; $7389: $78
	sbc  b                                           ; $738a: $98
	halt                                             ; $738b: $76
	halt                                             ; $738c: $76
	ld   [hl], a                                     ; $738d: $77
	ld   [hl], a                                     ; $738e: $77
	ld   h, h                                        ; $738f: $64
	ld   b, a                                        ; $7390: $47
	sub  a                                           ; $7391: $97
	ld   d, l                                        ; $7392: $55
	ld   h, a                                        ; $7393: $67
	sub  a                                           ; $7394: $97
	ld   d, a                                        ; $7395: $57
	adc  e                                           ; $7396: $8b
	adc  b                                           ; $7397: $88
	ld   [hl], a                                     ; $7398: $77
	adc  b                                           ; $7399: $88
	sbc  d                                           ; $739a: $9a
	adc  b                                           ; $739b: $88
	xor  b                                           ; $739c: $a8
	add  a                                           ; $739d: $87
	adc  d                                           ; $739e: $8a
	sbc  c                                           ; $739f: $99
	adc  c                                           ; $73a0: $89
	xor  c                                           ; $73a1: $a9
	sbc  b                                           ; $73a2: $98
	sbc  d                                           ; $73a3: $9a
	cp   d                                           ; $73a4: $ba
	ld   [hl], a                                     ; $73a5: $77
	sub  a                                           ; $73a6: $97
	ld   l, c                                        ; $73a7: $69
	cp   c                                           ; $73a8: $b9
	sbc  c                                           ; $73a9: $99
	halt                                             ; $73aa: $76
	ld   e, b                                        ; $73ab: $58
	and  a                                           ; $73ac: $a7
	ld   a, c                                        ; $73ad: $79
	add  a                                           ; $73ae: $87
	ld   l, b                                        ; $73af: $68
	add  [hl]                                        ; $73b0: $86
	halt                                             ; $73b1: $76
	ld   h, [hl]                                     ; $73b2: $66
	ld   h, [hl]                                     ; $73b3: $66
	ld   d, [hl]                                     ; $73b4: $56
	ld   a, b                                        ; $73b5: $78
	ld   d, l                                        ; $73b6: $55
	ld   a, c                                        ; $73b7: $79
	add  a                                           ; $73b8: $87
	ld   a, d                                        ; $73b9: $7a

Call_0c1_73ba:
	sub  a                                           ; $73ba: $97
	ld   a, b                                        ; $73bb: $78
	xor  c                                           ; $73bc: $a9
	ld   a, b                                        ; $73bd: $78
	xor  c                                           ; $73be: $a9
	sbc  b                                           ; $73bf: $98
	ld   [hl], a                                     ; $73c0: $77
	adc  c                                           ; $73c1: $89
	adc  b                                           ; $73c2: $88
	sbc  d                                           ; $73c3: $9a
	sbc  c                                           ; $73c4: $99
	add  a                                           ; $73c5: $87
	ld   a, b                                        ; $73c6: $78
	sbc  c                                           ; $73c7: $99
	sbc  e                                           ; $73c8: $9b
	cp   c                                           ; $73c9: $b9
	ld   h, a                                        ; $73ca: $67
	sbc  c                                           ; $73cb: $99
	sbc  c                                           ; $73cc: $99
	ld   [hl], a                                     ; $73cd: $77
	adc  b                                           ; $73ce: $88
	adc  b                                           ; $73cf: $88
	add  a                                           ; $73d0: $87
	adc  b                                           ; $73d1: $88
	halt                                             ; $73d2: $76
	ld   [hl], a                                     ; $73d3: $77
	ld   [hl], a                                     ; $73d4: $77
	ld   h, a                                        ; $73d5: $67
	adc  b                                           ; $73d6: $88
	ld   h, [hl]                                     ; $73d7: $66
	ld   h, [hl]                                     ; $73d8: $66
	add  a                                           ; $73d9: $87
	ld   h, a                                        ; $73da: $67
	halt                                             ; $73db: $76
	ld   a, b                                        ; $73dc: $78
	ld   h, [hl]                                     ; $73dd: $66
	sbc  d                                           ; $73de: $9a
	xor  b                                           ; $73df: $a8
	add  a                                           ; $73e0: $87
	sbc  d                                           ; $73e1: $9a
	sub  [hl]                                        ; $73e2: $96
	ld   l, c                                        ; $73e3: $69
	bit  6, a                                        ; $73e4: $cb $77
	ld   a, d                                        ; $73e6: $7a
	xor  b                                           ; $73e7: $a8
	ld   a, c                                        ; $73e8: $79
	xor  d                                           ; $73e9: $aa
	sub  [hl]                                        ; $73ea: $96
	ld   a, c                                        ; $73eb: $79
	adc  c                                           ; $73ec: $89
	and  a                                           ; $73ed: $a7
	ld   a, b                                        ; $73ee: $78
	ld   a, b                                        ; $73ef: $78
	sbc  b                                           ; $73f0: $98
	adc  c                                           ; $73f1: $89
	sub  a                                           ; $73f2: $97
	ld   l, c                                        ; $73f3: $69
	add  a                                           ; $73f4: $87
	add  a                                           ; $73f5: $87
	adc  c                                           ; $73f6: $89
	adc  b                                           ; $73f7: $88
	ld   [hl], a                                     ; $73f8: $77
	adc  c                                           ; $73f9: $89
	ld   [hl], a                                     ; $73fa: $77
	ld   a, b                                        ; $73fb: $78
	ld   [hl], a                                     ; $73fc: $77
	sub  a                                           ; $73fd: $97
	ld   d, a                                        ; $73fe: $57
	sub  a                                           ; $73ff: $97
	ld   a, b                                        ; $7400: $78
	ld   [hl], a                                     ; $7401: $77
	sbc  b                                           ; $7402: $98
	ld   b, a                                        ; $7403: $47
	cp   c                                           ; $7404: $b9
	halt                                             ; $7405: $76
	sbc  e                                           ; $7406: $9b
	xor  b                                           ; $7407: $a8
	ld   [hl], a                                     ; $7408: $77
	adc  d                                           ; $7409: $8a
	xor  b                                           ; $740a: $a8
	ld   a, b                                        ; $740b: $78
	sbc  b                                           ; $740c: $98
	adc  c                                           ; $740d: $89
	sbc  d                                           ; $740e: $9a
	add  [hl]                                        ; $740f: $86
	ld   a, c                                        ; $7410: $79
	sbc  b                                           ; $7411: $98
	ld   [hl], a                                     ; $7412: $77
	sbc  c                                           ; $7413: $99
	sub  a                                           ; $7414: $97
	ld   h, a                                        ; $7415: $67
	sbc  b                                           ; $7416: $98
	ld   a, b                                        ; $7417: $78
	adc  b                                           ; $7418: $88
	sub  a                                           ; $7419: $97
	sbc  c                                           ; $741a: $99
	sub  a                                           ; $741b: $97
	adc  b                                           ; $741c: $88
	ld   [hl], a                                     ; $741d: $77
	ld   a, b                                        ; $741e: $78
	adc  b                                           ; $741f: $88
	ld   [hl], a                                     ; $7420: $77
	adc  b                                           ; $7421: $88
	ld   [hl], a                                     ; $7422: $77
	sbc  b                                           ; $7423: $98
	ld   a, b                                        ; $7424: $78
	ld   a, b                                        ; $7425: $78
	adc  c                                           ; $7426: $89
	sbc  c                                           ; $7427: $99
	ld   a, b                                        ; $7428: $78
	sbc  d                                           ; $7429: $9a
	ld   l, c                                        ; $742a: $69
	sbc  b                                           ; $742b: $98
	sbc  b                                           ; $742c: $98
	xor  b                                           ; $742d: $a8
	ld   a, b                                        ; $742e: $78
	cp   b                                           ; $742f: $b8
	ld   a, c                                        ; $7430: $79
	adc  b                                           ; $7431: $88
	sbc  b                                           ; $7432: $98
	adc  b                                           ; $7433: $88
	ld   a, b                                        ; $7434: $78
	ld   [hl], a                                     ; $7435: $77
	sbc  c                                           ; $7436: $99
	halt                                             ; $7437: $76
	ld   l, b                                        ; $7438: $68
	sbc  b                                           ; $7439: $98
	sub  a                                           ; $743a: $97
	sbc  c                                           ; $743b: $99
	ld   a, c                                        ; $743c: $79
	sbc  c                                           ; $743d: $99
	add  a                                           ; $743e: $87
	adc  b                                           ; $743f: $88
	ld   [hl], a                                     ; $7440: $77
	sbc  b                                           ; $7441: $98
	ld   a, c                                        ; $7442: $79
	sbc  b                                           ; $7443: $98
	ld   [hl], a                                     ; $7444: $77
	add  a                                           ; $7445: $87
	sbc  b                                           ; $7446: $98
	sub  a                                           ; $7447: $97
	adc  b                                           ; $7448: $88
	ld   a, b                                        ; $7449: $78
	add  a                                           ; $744a: $87
	ld   a, c                                        ; $744b: $79
	sbc  b                                           ; $744c: $98
	ld   [hl], a                                     ; $744d: $77
	ld   a, c                                        ; $744e: $79
	xor  b                                           ; $744f: $a8
	adc  b                                           ; $7450: $88
	sbc  c                                           ; $7451: $99
	ld   a, b                                        ; $7452: $78
	sbc  b                                           ; $7453: $98
	ld   [hl], a                                     ; $7454: $77
	adc  c                                           ; $7455: $89
	sbc  b                                           ; $7456: $98
	ld   a, b                                        ; $7457: $78
	adc  b                                           ; $7458: $88
	sbc  b                                           ; $7459: $98
	sbc  c                                           ; $745a: $99
	ld   [hl], a                                     ; $745b: $77
	adc  b                                           ; $745c: $88
	adc  b                                           ; $745d: $88
	add  a                                           ; $745e: $87
	ld   a, b                                        ; $745f: $78
	adc  b                                           ; $7460: $88
	sbc  b                                           ; $7461: $98
	adc  c                                           ; $7462: $89
	adc  b                                           ; $7463: $88
	sbc  b                                           ; $7464: $98
	ld   a, b                                        ; $7465: $78
	add  a                                           ; $7466: $87
	add  a                                           ; $7467: $87
	adc  c                                           ; $7468: $89
	adc  c                                           ; $7469: $89
	adc  d                                           ; $746a: $8a
	ld   [hl], a                                     ; $746b: $77
	adc  b                                           ; $746c: $88
	adc  b                                           ; $746d: $88
	ld   [hl], a                                     ; $746e: $77
	sbc  b                                           ; $746f: $98
	ld   a, b                                        ; $7470: $78
	ld   a, b                                        ; $7471: $78
	sbc  c                                           ; $7472: $99
	ld   [hl], a                                     ; $7473: $77
	adc  b                                           ; $7474: $88
	adc  b                                           ; $7475: $88
	adc  c                                           ; $7476: $89
	sbc  b                                           ; $7477: $98
	ld   a, b                                        ; $7478: $78
	sub  a                                           ; $7479: $97
	ld   a, c                                        ; $747a: $79
	adc  c                                           ; $747b: $89
	sbc  b                                           ; $747c: $98
	ld   [hl], a                                     ; $747d: $77
	adc  d                                           ; $747e: $8a
	sbc  b                                           ; $747f: $98
	adc  b                                           ; $7480: $88
	ld   a, b                                        ; $7481: $78
	adc  b                                           ; $7482: $88
	add  a                                           ; $7483: $87
	add  a                                           ; $7484: $87
	adc  b                                           ; $7485: $88
	adc  b                                           ; $7486: $88
	ld   a, b                                        ; $7487: $78
	sbc  b                                           ; $7488: $98
	sub  a                                           ; $7489: $97
	ld   h, a                                        ; $748a: $67
	adc  c                                           ; $748b: $89
	adc  b                                           ; $748c: $88
	ld   a, b                                        ; $748d: $78
	add  a                                           ; $748e: $87
	sbc  c                                           ; $748f: $99
	sbc  c                                           ; $7490: $99
	ld   [hl], a                                     ; $7491: $77
	adc  c                                           ; $7492: $89
	adc  b                                           ; $7493: $88
	add  a                                           ; $7494: $87
	adc  b                                           ; $7495: $88
	ld   [hl], a                                     ; $7496: $77
	adc  c                                           ; $7497: $89
	ld   [hl], a                                     ; $7498: $77
	ld   [hl], a                                     ; $7499: $77
	sbc  b                                           ; $749a: $98
	and  a                                           ; $749b: $a7
	ld   a, b                                        ; $749c: $78
	sbc  c                                           ; $749d: $99
	ld   [hl], a                                     ; $749e: $77
	ld   a, b                                        ; $749f: $78
	sbc  b                                           ; $74a0: $98
	sub  a                                           ; $74a1: $97
	sbc  c                                           ; $74a2: $99
	adc  c                                           ; $74a3: $89
	adc  b                                           ; $74a4: $88
	ld   [hl], a                                     ; $74a5: $77
	ld   a, b                                        ; $74a6: $78
	sbc  c                                           ; $74a7: $99
	add  [hl]                                        ; $74a8: $86
	ld   a, c                                        ; $74a9: $79
	xor  c                                           ; $74aa: $a9
	ld   [hl], a                                     ; $74ab: $77
	ld   a, c                                        ; $74ac: $79
	xor  b                                           ; $74ad: $a8
	ld   [hl], a                                     ; $74ae: $77
	adc  c                                           ; $74af: $89
	sbc  c                                           ; $74b0: $99
	ld   [hl], a                                     ; $74b1: $77
	ld   a, b                                        ; $74b2: $78
	xor  b                                           ; $74b3: $a8
	ld   [hl], a                                     ; $74b4: $77
	ld   a, b                                        ; $74b5: $78
	sbc  b                                           ; $74b6: $98
	ld   [hl], a                                     ; $74b7: $77
	add  a                                           ; $74b8: $87
	adc  c                                           ; $74b9: $89
	add  a                                           ; $74ba: $87
	ld   h, a                                        ; $74bb: $67
	sbc  b                                           ; $74bc: $98
	adc  b                                           ; $74bd: $88
	ld   a, b                                        ; $74be: $78
	sbc  b                                           ; $74bf: $98
	adc  b                                           ; $74c0: $88
	add  a                                           ; $74c1: $87
	adc  c                                           ; $74c2: $89
	add  a                                           ; $74c3: $87
	ld   a, b                                        ; $74c4: $78
	adc  b                                           ; $74c5: $88
	sub  a                                           ; $74c6: $97
	adc  c                                           ; $74c7: $89
	add  a                                           ; $74c8: $87
	adc  b                                           ; $74c9: $88
	sbc  b                                           ; $74ca: $98
	ld   a, b                                        ; $74cb: $78
	adc  b                                           ; $74cc: $88
	sbc  b                                           ; $74cd: $98
	ld   a, c                                        ; $74ce: $79
	adc  b                                           ; $74cf: $88
	ld   [hl], a                                     ; $74d0: $77
	ld   a, b                                        ; $74d1: $78
	sbc  b                                           ; $74d2: $98
	ld   [hl], a                                     ; $74d3: $77
	adc  b                                           ; $74d4: $88
	sbc  c                                           ; $74d5: $99
	ld   [hl], a                                     ; $74d6: $77
	ld   a, b                                        ; $74d7: $78
	sub  a                                           ; $74d8: $97
	adc  b                                           ; $74d9: $88
	adc  b                                           ; $74da: $88
	adc  b                                           ; $74db: $88
	adc  b                                           ; $74dc: $88
	add  a                                           ; $74dd: $87
	ld   a, c                                        ; $74de: $79
	adc  c                                           ; $74df: $89
	ld   [hl], a                                     ; $74e0: $77
	adc  c                                           ; $74e1: $89
	sbc  c                                           ; $74e2: $99
	ld   [hl], a                                     ; $74e3: $77
	ld   a, b                                        ; $74e4: $78
	adc  c                                           ; $74e5: $89
	add  a                                           ; $74e6: $87
	adc  b                                           ; $74e7: $88
	adc  b                                           ; $74e8: $88
	adc  c                                           ; $74e9: $89
	add  a                                           ; $74ea: $87
	ld   a, c                                        ; $74eb: $79
	adc  c                                           ; $74ec: $89
	add  a                                           ; $74ed: $87
	ld   a, c                                        ; $74ee: $79
	sbc  b                                           ; $74ef: $98
	ld   [hl], a                                     ; $74f0: $77
	adc  b                                           ; $74f1: $88
	sbc  b                                           ; $74f2: $98
	add  a                                           ; $74f3: $87
	ld   a, b                                        ; $74f4: $78
	sbc  c                                           ; $74f5: $99
	add  a                                           ; $74f6: $87
	ld   [hl], a                                     ; $74f7: $77
	adc  b                                           ; $74f8: $88
	add  a                                           ; $74f9: $87
	ld   [hl], a                                     ; $74fa: $77
	sbc  c                                           ; $74fb: $99
	adc  b                                           ; $74fc: $88
	adc  b                                           ; $74fd: $88
	adc  b                                           ; $74fe: $88
	adc  b                                           ; $74ff: $88
	adc  b                                           ; $7500: $88
	adc  b                                           ; $7501: $88
	adc  b                                           ; $7502: $88
	adc  b                                           ; $7503: $88
	adc  c                                           ; $7504: $89
	adc  b                                           ; $7505: $88
	add  a                                           ; $7506: $87
	adc  c                                           ; $7507: $89
	adc  b                                           ; $7508: $88
	adc  b                                           ; $7509: $88
	adc  b                                           ; $750a: $88
	adc  b                                           ; $750b: $88
	add  a                                           ; $750c: $87
	ld   a, b                                        ; $750d: $78
	adc  b                                           ; $750e: $88
	adc  b                                           ; $750f: $88
	adc  b                                           ; $7510: $88
	adc  c                                           ; $7511: $89
	adc  b                                           ; $7512: $88
	adc  b                                           ; $7513: $88
	adc  b                                           ; $7514: $88
	adc  b                                           ; $7515: $88
	ld   [hl], a                                     ; $7516: $77
	adc  b                                           ; $7517: $88
	sbc  b                                           ; $7518: $98
	add  a                                           ; $7519: $87
	adc  b                                           ; $751a: $88
	adc  b                                           ; $751b: $88
	ld   [hl], a                                     ; $751c: $77
	ld   a, b                                        ; $751d: $78
	adc  b                                           ; $751e: $88
	ld   [hl], a                                     ; $751f: $77
	adc  c                                           ; $7520: $89
	sbc  b                                           ; $7521: $98
	add  a                                           ; $7522: $87
	ld   a, b                                        ; $7523: $78
	sbc  c                                           ; $7524: $99
	adc  b                                           ; $7525: $88
	adc  b                                           ; $7526: $88
	adc  b                                           ; $7527: $88
	sbc  c                                           ; $7528: $99
	add  a                                           ; $7529: $87
	ld   [hl], a                                     ; $752a: $77
	adc  b                                           ; $752b: $88
	adc  b                                           ; $752c: $88
	ld   a, b                                        ; $752d: $78
	sbc  c                                           ; $752e: $99
	add  a                                           ; $752f: $87
	add  a                                           ; $7530: $87
	adc  b                                           ; $7531: $88
	adc  b                                           ; $7532: $88
	add  a                                           ; $7533: $87
	adc  b                                           ; $7534: $88
	adc  b                                           ; $7535: $88
	ld   a, b                                        ; $7536: $78
	adc  b                                           ; $7537: $88
	adc  b                                           ; $7538: $88
	adc  b                                           ; $7539: $88
	adc  b                                           ; $753a: $88
	adc  b                                           ; $753b: $88
	adc  b                                           ; $753c: $88
	adc  b                                           ; $753d: $88
	adc  b                                           ; $753e: $88
	adc  b                                           ; $753f: $88
	adc  b                                           ; $7540: $88
	adc  b                                           ; $7541: $88
	adc  b                                           ; $7542: $88
	adc  b                                           ; $7543: $88
	sbc  b                                           ; $7544: $98
	adc  b                                           ; $7545: $88
	adc  b                                           ; $7546: $88
	adc  b                                           ; $7547: $88
	adc  b                                           ; $7548: $88
	ld   a, b                                        ; $7549: $78
	adc  b                                           ; $754a: $88
	adc  b                                           ; $754b: $88
	adc  b                                           ; $754c: $88
	adc  b                                           ; $754d: $88
	ld   [hl], a                                     ; $754e: $77
	adc  b                                           ; $754f: $88
	adc  b                                           ; $7550: $88
	ld   a, b                                        ; $7551: $78
	adc  b                                           ; $7552: $88
	adc  b                                           ; $7553: $88
	adc  b                                           ; $7554: $88
	adc  b                                           ; $7555: $88
	adc  b                                           ; $7556: $88
	adc  b                                           ; $7557: $88
	adc  b                                           ; $7558: $88
	adc  b                                           ; $7559: $88
	adc  b                                           ; $755a: $88
	adc  b                                           ; $755b: $88
	adc  b                                           ; $755c: $88
	adc  b                                           ; $755d: $88
	adc  b                                           ; $755e: $88
	adc  b                                           ; $755f: $88
	adc  b                                           ; $7560: $88
	ld   a, b                                        ; $7561: $78
	adc  b                                           ; $7562: $88
	adc  b                                           ; $7563: $88
	ld   a, b                                        ; $7564: $78
	adc  b                                           ; $7565: $88
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

Call_0c1_75ba:
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
	adc  b                                           ; $7694: $88
	adc  b                                           ; $7695: $88
	adc  b                                           ; $7696: $88
	adc  b                                           ; $7697: $88

Jump_0c1_7698:
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
	adc  b                                           ; $76a8: $88
	adc  b                                           ; $76a9: $88
	adc  b                                           ; $76aa: $88
	adc  b                                           ; $76ab: $88
	adc  b                                           ; $76ac: $88
	adc  b                                           ; $76ad: $88
	adc  b                                           ; $76ae: $88
	adc  b                                           ; $76af: $88
	adc  b                                           ; $76b0: $88
	adc  b                                           ; $76b1: $88
	adc  b                                           ; $76b2: $88
	adc  b                                           ; $76b3: $88
	adc  b                                           ; $76b4: $88
	adc  b                                           ; $76b5: $88
	adc  b                                           ; $76b6: $88
	adc  b                                           ; $76b7: $88
	adc  b                                           ; $76b8: $88
	adc  b                                           ; $76b9: $88
	adc  b                                           ; $76ba: $88
	adc  b                                           ; $76bb: $88
	adc  b                                           ; $76bc: $88
	adc  b                                           ; $76bd: $88
	adc  b                                           ; $76be: $88
	adc  b                                           ; $76bf: $88
	adc  b                                           ; $76c0: $88
	adc  b                                           ; $76c1: $88
	adc  b                                           ; $76c2: $88
	adc  b                                           ; $76c3: $88
	adc  b                                           ; $76c4: $88
	adc  b                                           ; $76c5: $88
	adc  b                                           ; $76c6: $88
	adc  b                                           ; $76c7: $88
	adc  b                                           ; $76c8: $88
	adc  b                                           ; $76c9: $88
	adc  b                                           ; $76ca: $88
	adc  b                                           ; $76cb: $88
	adc  b                                           ; $76cc: $88
	adc  b                                           ; $76cd: $88
	adc  b                                           ; $76ce: $88
	adc  b                                           ; $76cf: $88
	adc  b                                           ; $76d0: $88
	adc  b                                           ; $76d1: $88
	adc  b                                           ; $76d2: $88
	adc  b                                           ; $76d3: $88
	adc  b                                           ; $76d4: $88
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
	adc  b                                           ; $76df: $88
	adc  b                                           ; $76e0: $88
	adc  b                                           ; $76e1: $88
	adc  b                                           ; $76e2: $88
	adc  b                                           ; $76e3: $88
	adc  b                                           ; $76e4: $88
	adc  b                                           ; $76e5: $88
	adc  b                                           ; $76e6: $88
	adc  b                                           ; $76e7: $88
	adc  b                                           ; $76e8: $88
	adc  b                                           ; $76e9: $88
	adc  b                                           ; $76ea: $88
	adc  b                                           ; $76eb: $88
	adc  b                                           ; $76ec: $88
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
	adc  b                                           ; $76f7: $88
	adc  b                                           ; $76f8: $88
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

Jump_0c1_7799:
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

Jump_0c1_77a9:
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

Call_0c1_77b9:
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

Call_0c1_77d9:
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
	adc  b                                           ; $7862: $88
	adc  b                                           ; $7863: $88
	adc  b                                           ; $7864: $88
	adc  b                                           ; $7865: $88
	adc  b                                           ; $7866: $88
	adc  b                                           ; $7867: $88
	adc  b                                           ; $7868: $88
	adc  b                                           ; $7869: $88
	adc  b                                           ; $786a: $88
	adc  b                                           ; $786b: $88
	adc  b                                           ; $786c: $88
	adc  b                                           ; $786d: $88
	adc  b                                           ; $786e: $88
	adc  b                                           ; $786f: $88
	adc  b                                           ; $7870: $88
	adc  b                                           ; $7871: $88
	adc  b                                           ; $7872: $88
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
	adc  b                                           ; $7881: $88
	adc  b                                           ; $7882: $88
	adc  b                                           ; $7883: $88
	adc  b                                           ; $7884: $88
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
	adc  b                                           ; $7895: $88
	adc  b                                           ; $7896: $88
	adc  b                                           ; $7897: $88
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
	adc  b                                           ; $7952: $88
	adc  b                                           ; $7953: $88
	adc  b                                           ; $7954: $88
	adc  b                                           ; $7955: $88
	adc  b                                           ; $7956: $88
	adc  b                                           ; $7957: $88
	adc  b                                           ; $7958: $88
	adc  b                                           ; $7959: $88
	adc  b                                           ; $795a: $88
	adc  b                                           ; $795b: $88
	adc  b                                           ; $795c: $88
	adc  b                                           ; $795d: $88
	adc  b                                           ; $795e: $88
	adc  b                                           ; $795f: $88
	adc  b                                           ; $7960: $88
	adc  b                                           ; $7961: $88
	adc  b                                           ; $7962: $88
	adc  b                                           ; $7963: $88
	adc  b                                           ; $7964: $88
	adc  b                                           ; $7965: $88
	adc  b                                           ; $7966: $88
	adc  b                                           ; $7967: $88
	adc  b                                           ; $7968: $88
	adc  b                                           ; $7969: $88
	adc  b                                           ; $796a: $88
	adc  b                                           ; $796b: $88
	adc  b                                           ; $796c: $88
	adc  b                                           ; $796d: $88
	adc  b                                           ; $796e: $88
	adc  b                                           ; $796f: $88
	adc  b                                           ; $7970: $88
	adc  b                                           ; $7971: $88
	adc  b                                           ; $7972: $88
	adc  b                                           ; $7973: $88
	adc  b                                           ; $7974: $88
	adc  b                                           ; $7975: $88
	adc  b                                           ; $7976: $88
	adc  b                                           ; $7977: $88
	adc  b                                           ; $7978: $88
	adc  b                                           ; $7979: $88
	adc  b                                           ; $797a: $88
	adc  b                                           ; $797b: $88
	adc  b                                           ; $797c: $88
	adc  b                                           ; $797d: $88
	adc  b                                           ; $797e: $88
	adc  b                                           ; $797f: $88
	adc  b                                           ; $7980: $88
	adc  b                                           ; $7981: $88
	adc  b                                           ; $7982: $88
	adc  b                                           ; $7983: $88
	adc  b                                           ; $7984: $88
	adc  b                                           ; $7985: $88
	adc  b                                           ; $7986: $88
	adc  b                                           ; $7987: $88
	adc  b                                           ; $7988: $88
	adc  b                                           ; $7989: $88
	adc  b                                           ; $798a: $88
	adc  b                                           ; $798b: $88
	adc  b                                           ; $798c: $88
	adc  b                                           ; $798d: $88
	adc  b                                           ; $798e: $88
	adc  b                                           ; $798f: $88
	adc  b                                           ; $7990: $88
	adc  b                                           ; $7991: $88
	adc  b                                           ; $7992: $88
	adc  b                                           ; $7993: $88
	adc  b                                           ; $7994: $88
	adc  b                                           ; $7995: $88
	adc  b                                           ; $7996: $88
	adc  b                                           ; $7997: $88
	adc  b                                           ; $7998: $88
	adc  b                                           ; $7999: $88
	adc  b                                           ; $799a: $88
	adc  b                                           ; $799b: $88
	adc  b                                           ; $799c: $88
	adc  b                                           ; $799d: $88
	adc  b                                           ; $799e: $88
	adc  b                                           ; $799f: $88
	adc  b                                           ; $79a0: $88
	adc  b                                           ; $79a1: $88
	adc  b                                           ; $79a2: $88
	adc  b                                           ; $79a3: $88
	adc  b                                           ; $79a4: $88
	adc  b                                           ; $79a5: $88
	adc  b                                           ; $79a6: $88
	adc  b                                           ; $79a7: $88
	adc  b                                           ; $79a8: $88
	adc  b                                           ; $79a9: $88
	adc  b                                           ; $79aa: $88
	adc  b                                           ; $79ab: $88
	adc  b                                           ; $79ac: $88
	adc  b                                           ; $79ad: $88
	adc  b                                           ; $79ae: $88
	adc  b                                           ; $79af: $88
	adc  b                                           ; $79b0: $88
	adc  b                                           ; $79b1: $88
	adc  b                                           ; $79b2: $88
	adc  b                                           ; $79b3: $88
	adc  b                                           ; $79b4: $88
	adc  b                                           ; $79b5: $88
	adc  b                                           ; $79b6: $88
	adc  b                                           ; $79b7: $88
	adc  b                                           ; $79b8: $88
	adc  b                                           ; $79b9: $88
	adc  b                                           ; $79ba: $88
	adc  b                                           ; $79bb: $88
	adc  b                                           ; $79bc: $88
	adc  b                                           ; $79bd: $88
	adc  b                                           ; $79be: $88
	adc  b                                           ; $79bf: $88
	adc  b                                           ; $79c0: $88
	adc  b                                           ; $79c1: $88
	adc  b                                           ; $79c2: $88
	adc  b                                           ; $79c3: $88
	adc  b                                           ; $79c4: $88
	adc  b                                           ; $79c5: $88
	adc  b                                           ; $79c6: $88
	adc  b                                           ; $79c7: $88
	adc  b                                           ; $79c8: $88
	adc  b                                           ; $79c9: $88
	adc  b                                           ; $79ca: $88
	adc  b                                           ; $79cb: $88
	adc  b                                           ; $79cc: $88
	adc  b                                           ; $79cd: $88
	adc  b                                           ; $79ce: $88
	adc  b                                           ; $79cf: $88
	adc  b                                           ; $79d0: $88
	adc  b                                           ; $79d1: $88
	adc  b                                           ; $79d2: $88
	adc  b                                           ; $79d3: $88
	adc  b                                           ; $79d4: $88
	adc  b                                           ; $79d5: $88
	adc  b                                           ; $79d6: $88
	adc  b                                           ; $79d7: $88
	adc  b                                           ; $79d8: $88
	adc  b                                           ; $79d9: $88
	adc  b                                           ; $79da: $88
	adc  b                                           ; $79db: $88
	adc  b                                           ; $79dc: $88
	adc  b                                           ; $79dd: $88
	adc  b                                           ; $79de: $88
	adc  b                                           ; $79df: $88
	adc  b                                           ; $79e0: $88
	adc  b                                           ; $79e1: $88
	adc  b                                           ; $79e2: $88
	adc  b                                           ; $79e3: $88
	adc  b                                           ; $79e4: $88
	adc  b                                           ; $79e5: $88
	adc  b                                           ; $79e6: $88
	adc  b                                           ; $79e7: $88
	adc  b                                           ; $79e8: $88
	adc  b                                           ; $79e9: $88
	adc  b                                           ; $79ea: $88
	adc  b                                           ; $79eb: $88
	adc  b                                           ; $79ec: $88
	adc  b                                           ; $79ed: $88
	adc  b                                           ; $79ee: $88
	adc  b                                           ; $79ef: $88
	adc  b                                           ; $79f0: $88
	adc  b                                           ; $79f1: $88
	adc  b                                           ; $79f2: $88
	adc  b                                           ; $79f3: $88
	adc  b                                           ; $79f4: $88
	adc  b                                           ; $79f5: $88
	adc  b                                           ; $79f6: $88
	adc  b                                           ; $79f7: $88
	adc  b                                           ; $79f8: $88
	adc  b                                           ; $79f9: $88
	adc  b                                           ; $79fa: $88
	adc  b                                           ; $79fb: $88
	adc  b                                           ; $79fc: $88
	adc  b                                           ; $79fd: $88
	adc  b                                           ; $79fe: $88
	adc  b                                           ; $79ff: $88
	adc  b                                           ; $7a00: $88
	adc  b                                           ; $7a01: $88
	adc  b                                           ; $7a02: $88
	adc  b                                           ; $7a03: $88
	adc  b                                           ; $7a04: $88
	adc  b                                           ; $7a05: $88
	adc  b                                           ; $7a06: $88
	adc  b                                           ; $7a07: $88
	adc  b                                           ; $7a08: $88
	adc  b                                           ; $7a09: $88
	adc  b                                           ; $7a0a: $88
	adc  b                                           ; $7a0b: $88
	adc  b                                           ; $7a0c: $88
	adc  b                                           ; $7a0d: $88
	adc  b                                           ; $7a0e: $88
	adc  b                                           ; $7a0f: $88
	adc  b                                           ; $7a10: $88
	adc  b                                           ; $7a11: $88
	adc  b                                           ; $7a12: $88
	adc  b                                           ; $7a13: $88
	adc  b                                           ; $7a14: $88
	adc  b                                           ; $7a15: $88
	adc  b                                           ; $7a16: $88
	adc  b                                           ; $7a17: $88
	adc  b                                           ; $7a18: $88
	adc  b                                           ; $7a19: $88
	adc  b                                           ; $7a1a: $88
	adc  b                                           ; $7a1b: $88
	adc  b                                           ; $7a1c: $88
	adc  b                                           ; $7a1d: $88
	adc  b                                           ; $7a1e: $88
	adc  b                                           ; $7a1f: $88
	adc  b                                           ; $7a20: $88
	adc  b                                           ; $7a21: $88
	adc  b                                           ; $7a22: $88
	adc  b                                           ; $7a23: $88
	adc  b                                           ; $7a24: $88
	adc  b                                           ; $7a25: $88
	adc  b                                           ; $7a26: $88
	adc  b                                           ; $7a27: $88
	adc  b                                           ; $7a28: $88
	adc  b                                           ; $7a29: $88
	adc  b                                           ; $7a2a: $88
	adc  b                                           ; $7a2b: $88
	adc  b                                           ; $7a2c: $88
	adc  b                                           ; $7a2d: $88
	adc  b                                           ; $7a2e: $88
	adc  b                                           ; $7a2f: $88
	adc  b                                           ; $7a30: $88
	adc  b                                           ; $7a31: $88
	adc  b                                           ; $7a32: $88
	adc  b                                           ; $7a33: $88
	adc  b                                           ; $7a34: $88
	adc  b                                           ; $7a35: $88
	adc  b                                           ; $7a36: $88
	adc  b                                           ; $7a37: $88
	adc  b                                           ; $7a38: $88
	adc  b                                           ; $7a39: $88
	adc  b                                           ; $7a3a: $88
	adc  b                                           ; $7a3b: $88
	adc  b                                           ; $7a3c: $88
	adc  b                                           ; $7a3d: $88
	adc  b                                           ; $7a3e: $88
	adc  b                                           ; $7a3f: $88
	adc  b                                           ; $7a40: $88
	adc  b                                           ; $7a41: $88
	adc  b                                           ; $7a42: $88
	adc  b                                           ; $7a43: $88
	adc  b                                           ; $7a44: $88
	adc  b                                           ; $7a45: $88
	adc  b                                           ; $7a46: $88
	adc  b                                           ; $7a47: $88
	adc  b                                           ; $7a48: $88
	adc  b                                           ; $7a49: $88
	adc  b                                           ; $7a4a: $88
	adc  b                                           ; $7a4b: $88
	adc  b                                           ; $7a4c: $88
	adc  b                                           ; $7a4d: $88
	adc  b                                           ; $7a4e: $88
	adc  b                                           ; $7a4f: $88
	adc  b                                           ; $7a50: $88
	adc  b                                           ; $7a51: $88
	adc  b                                           ; $7a52: $88
	adc  b                                           ; $7a53: $88
	adc  b                                           ; $7a54: $88
	adc  b                                           ; $7a55: $88
	adc  b                                           ; $7a56: $88
	adc  b                                           ; $7a57: $88
	adc  b                                           ; $7a58: $88
	adc  b                                           ; $7a59: $88
	adc  b                                           ; $7a5a: $88
	adc  b                                           ; $7a5b: $88
	adc  b                                           ; $7a5c: $88
	adc  b                                           ; $7a5d: $88
	adc  b                                           ; $7a5e: $88
	adc  b                                           ; $7a5f: $88
	adc  b                                           ; $7a60: $88
	adc  b                                           ; $7a61: $88
	adc  b                                           ; $7a62: $88
	adc  b                                           ; $7a63: $88
	adc  b                                           ; $7a64: $88
	adc  b                                           ; $7a65: $88
	adc  b                                           ; $7a66: $88
	adc  b                                           ; $7a67: $88
	adc  b                                           ; $7a68: $88
	adc  b                                           ; $7a69: $88
	adc  b                                           ; $7a6a: $88
	adc  b                                           ; $7a6b: $88
	adc  b                                           ; $7a6c: $88
	adc  b                                           ; $7a6d: $88
	adc  b                                           ; $7a6e: $88
	adc  b                                           ; $7a6f: $88
	adc  b                                           ; $7a70: $88
	adc  b                                           ; $7a71: $88
	adc  b                                           ; $7a72: $88
	adc  b                                           ; $7a73: $88
	adc  b                                           ; $7a74: $88
	adc  b                                           ; $7a75: $88
	adc  b                                           ; $7a76: $88
	adc  b                                           ; $7a77: $88
	adc  b                                           ; $7a78: $88
	adc  b                                           ; $7a79: $88
	adc  b                                           ; $7a7a: $88
	adc  b                                           ; $7a7b: $88
	adc  b                                           ; $7a7c: $88
	adc  b                                           ; $7a7d: $88
	adc  b                                           ; $7a7e: $88
	adc  b                                           ; $7a7f: $88
	adc  b                                           ; $7a80: $88
	adc  b                                           ; $7a81: $88
	adc  b                                           ; $7a82: $88
	adc  b                                           ; $7a83: $88
	adc  b                                           ; $7a84: $88
	adc  b                                           ; $7a85: $88
	adc  b                                           ; $7a86: $88
	adc  b                                           ; $7a87: $88
	adc  b                                           ; $7a88: $88
	adc  b                                           ; $7a89: $88
	adc  b                                           ; $7a8a: $88
	adc  b                                           ; $7a8b: $88
	adc  b                                           ; $7a8c: $88
	adc  b                                           ; $7a8d: $88
	adc  b                                           ; $7a8e: $88
	adc  b                                           ; $7a8f: $88
	adc  b                                           ; $7a90: $88
	adc  b                                           ; $7a91: $88
	adc  b                                           ; $7a92: $88
	adc  b                                           ; $7a93: $88
	adc  b                                           ; $7a94: $88
	adc  b                                           ; $7a95: $88
	adc  b                                           ; $7a96: $88
	adc  b                                           ; $7a97: $88
	adc  b                                           ; $7a98: $88
	adc  b                                           ; $7a99: $88
	adc  b                                           ; $7a9a: $88
	adc  b                                           ; $7a9b: $88
	adc  b                                           ; $7a9c: $88
	adc  b                                           ; $7a9d: $88
	adc  b                                           ; $7a9e: $88
	adc  b                                           ; $7a9f: $88
	adc  b                                           ; $7aa0: $88
	adc  b                                           ; $7aa1: $88
	adc  b                                           ; $7aa2: $88
	adc  b                                           ; $7aa3: $88
	adc  b                                           ; $7aa4: $88
	adc  b                                           ; $7aa5: $88
	adc  b                                           ; $7aa6: $88
	adc  b                                           ; $7aa7: $88
	adc  b                                           ; $7aa8: $88
	adc  b                                           ; $7aa9: $88
	adc  b                                           ; $7aaa: $88
	adc  b                                           ; $7aab: $88
	adc  b                                           ; $7aac: $88
	adc  b                                           ; $7aad: $88
	adc  b                                           ; $7aae: $88
	adc  b                                           ; $7aaf: $88
	adc  b                                           ; $7ab0: $88
	adc  b                                           ; $7ab1: $88
	adc  b                                           ; $7ab2: $88
	adc  b                                           ; $7ab3: $88
	adc  b                                           ; $7ab4: $88
	adc  b                                           ; $7ab5: $88
	adc  b                                           ; $7ab6: $88
	adc  b                                           ; $7ab7: $88
	adc  b                                           ; $7ab8: $88
	adc  b                                           ; $7ab9: $88
	adc  b                                           ; $7aba: $88
	adc  b                                           ; $7abb: $88
	adc  b                                           ; $7abc: $88
	adc  b                                           ; $7abd: $88
	adc  b                                           ; $7abe: $88
	adc  b                                           ; $7abf: $88
	adc  b                                           ; $7ac0: $88
	adc  b                                           ; $7ac1: $88
	adc  b                                           ; $7ac2: $88
	adc  b                                           ; $7ac3: $88
	adc  b                                           ; $7ac4: $88
	adc  b                                           ; $7ac5: $88
	adc  b                                           ; $7ac6: $88
	adc  b                                           ; $7ac7: $88
	adc  b                                           ; $7ac8: $88
	adc  b                                           ; $7ac9: $88
	adc  b                                           ; $7aca: $88
	adc  b                                           ; $7acb: $88
	adc  b                                           ; $7acc: $88
	adc  b                                           ; $7acd: $88
	adc  b                                           ; $7ace: $88
	adc  b                                           ; $7acf: $88
	adc  b                                           ; $7ad0: $88
	adc  b                                           ; $7ad1: $88
	adc  b                                           ; $7ad2: $88
	adc  b                                           ; $7ad3: $88
	adc  b                                           ; $7ad4: $88
	adc  b                                           ; $7ad5: $88
	adc  b                                           ; $7ad6: $88
	adc  b                                           ; $7ad7: $88
	adc  b                                           ; $7ad8: $88
	adc  b                                           ; $7ad9: $88
	adc  b                                           ; $7ada: $88
	adc  b                                           ; $7adb: $88
	adc  b                                           ; $7adc: $88
	adc  b                                           ; $7add: $88
	adc  b                                           ; $7ade: $88
	adc  b                                           ; $7adf: $88
	adc  b                                           ; $7ae0: $88
	adc  b                                           ; $7ae1: $88
	adc  b                                           ; $7ae2: $88
	adc  b                                           ; $7ae3: $88
	adc  b                                           ; $7ae4: $88
	adc  b                                           ; $7ae5: $88
	adc  b                                           ; $7ae6: $88
	adc  b                                           ; $7ae7: $88
	adc  b                                           ; $7ae8: $88
	adc  b                                           ; $7ae9: $88
	adc  b                                           ; $7aea: $88
	adc  b                                           ; $7aeb: $88
	adc  b                                           ; $7aec: $88
	adc  b                                           ; $7aed: $88
	adc  b                                           ; $7aee: $88
	adc  b                                           ; $7aef: $88
	adc  b                                           ; $7af0: $88
	adc  b                                           ; $7af1: $88
	adc  b                                           ; $7af2: $88
	adc  b                                           ; $7af3: $88
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
	adc  b                                           ; $7b00: $88
	adc  b                                           ; $7b01: $88
	adc  b                                           ; $7b02: $88
	adc  b                                           ; $7b03: $88
	adc  b                                           ; $7b04: $88
	adc  b                                           ; $7b05: $88
	adc  b                                           ; $7b06: $88
	adc  b                                           ; $7b07: $88
	adc  b                                           ; $7b08: $88
	adc  b                                           ; $7b09: $88
	adc  b                                           ; $7b0a: $88
	adc  b                                           ; $7b0b: $88
	adc  b                                           ; $7b0c: $88
	adc  b                                           ; $7b0d: $88
	adc  b                                           ; $7b0e: $88
	adc  b                                           ; $7b0f: $88
	adc  b                                           ; $7b10: $88
	adc  b                                           ; $7b11: $88
	adc  b                                           ; $7b12: $88
	adc  b                                           ; $7b13: $88
	adc  b                                           ; $7b14: $88
	adc  b                                           ; $7b15: $88
	adc  b                                           ; $7b16: $88
	adc  b                                           ; $7b17: $88
	adc  b                                           ; $7b18: $88
	adc  b                                           ; $7b19: $88
	adc  b                                           ; $7b1a: $88
	adc  b                                           ; $7b1b: $88
	adc  b                                           ; $7b1c: $88
	adc  b                                           ; $7b1d: $88
	adc  b                                           ; $7b1e: $88
	adc  b                                           ; $7b1f: $88
	adc  b                                           ; $7b20: $88
	adc  b                                           ; $7b21: $88
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
	adc  b                                           ; $7b37: $88
	adc  b                                           ; $7b38: $88
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
	adc  b                                           ; $7b9d: $88
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
	adc  b                                           ; $7bb3: $88
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
