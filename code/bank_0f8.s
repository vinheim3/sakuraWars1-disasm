; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0f8", ROMX[$4000], BANK[$f8]

	adc  c                                           ; $4000: $89
	xor  c                                           ; $4001: $a9
	sbc  b                                           ; $4002: $98
	adc  b                                           ; $4003: $88
	adc  b                                           ; $4004: $88
	adc  b                                           ; $4005: $88
	add  a                                           ; $4006: $87
	ld   [hl], a                                     ; $4007: $77
	ld   [hl], a                                     ; $4008: $77
	ld   [hl], a                                     ; $4009: $77
	ld   [hl], a                                     ; $400a: $77
	ld   [hl], a                                     ; $400b: $77
	ld   a, b                                        ; $400c: $78
	adc  c                                           ; $400d: $89
	sbc  c                                           ; $400e: $99
	adc  b                                           ; $400f: $88
	adc  b                                           ; $4010: $88
	adc  b                                           ; $4011: $88
	sbc  c                                           ; $4012: $99
	adc  b                                           ; $4013: $88
	sbc  c                                           ; $4014: $99
	sbc  c                                           ; $4015: $99
	sbc  c                                           ; $4016: $99
	adc  b                                           ; $4017: $88
	adc  b                                           ; $4018: $88
	adc  b                                           ; $4019: $88
	adc  b                                           ; $401a: $88
	add  a                                           ; $401b: $87
	ld   [hl], a                                     ; $401c: $77
	ld   [hl], a                                     ; $401d: $77
	ld   [hl], a                                     ; $401e: $77
	ld   [hl], a                                     ; $401f: $77
	adc  b                                           ; $4020: $88
	adc  b                                           ; $4021: $88
	sbc  c                                           ; $4022: $99
	sbc  c                                           ; $4023: $99
	sbc  c                                           ; $4024: $99
	sbc  c                                           ; $4025: $99
	sbc  b                                           ; $4026: $98
	adc  b                                           ; $4027: $88
	sbc  c                                           ; $4028: $99
	sbc  c                                           ; $4029: $99
	sbc  c                                           ; $402a: $99
	adc  b                                           ; $402b: $88
	adc  b                                           ; $402c: $88
	adc  b                                           ; $402d: $88
	adc  b                                           ; $402e: $88
	add  a                                           ; $402f: $87
	ld   [hl], a                                     ; $4030: $77
	ld   [hl], a                                     ; $4031: $77
	ld   [hl], a                                     ; $4032: $77
	ld   [hl], a                                     ; $4033: $77
	ld   a, b                                        ; $4034: $78
	adc  b                                           ; $4035: $88
	adc  b                                           ; $4036: $88
	adc  b                                           ; $4037: $88
	adc  b                                           ; $4038: $88
	sbc  c                                           ; $4039: $99
	sbc  c                                           ; $403a: $99
	sbc  c                                           ; $403b: $99
	sbc  c                                           ; $403c: $99
	sbc  c                                           ; $403d: $99
	adc  b                                           ; $403e: $88
	adc  b                                           ; $403f: $88
	adc  b                                           ; $4040: $88
	adc  b                                           ; $4041: $88
	adc  b                                           ; $4042: $88
	adc  b                                           ; $4043: $88
	add  a                                           ; $4044: $87
	ld   [hl], a                                     ; $4045: $77
	ld   [hl], a                                     ; $4046: $77
	ld   [hl], a                                     ; $4047: $77
	ld   a, b                                        ; $4048: $78
	adc  b                                           ; $4049: $88
	adc  b                                           ; $404a: $88
	adc  b                                           ; $404b: $88
	adc  b                                           ; $404c: $88
	adc  b                                           ; $404d: $88
	adc  b                                           ; $404e: $88
	sbc  c                                           ; $404f: $99
	sbc  b                                           ; $4050: $98
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
	ld   a, b                                        ; $405b: $78
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
	adc  c                                           ; $4118: $89
	sbc  b                                           ; $4119: $98
	ld   [hl], a                                     ; $411a: $77
	sbc  c                                           ; $411b: $99
	add  a                                           ; $411c: $87
	ld   [hl], a                                     ; $411d: $77
	adc  c                                           ; $411e: $89
	add  a                                           ; $411f: $87
	add  a                                           ; $4120: $87
	adc  c                                           ; $4121: $89
	adc  c                                           ; $4122: $89
	adc  b                                           ; $4123: $88
	ld   [hl], a                                     ; $4124: $77
	sbc  b                                           ; $4125: $98
	xor  b                                           ; $4126: $a8
	halt                                             ; $4127: $76
	ld   a, b                                        ; $4128: $78
	adc  b                                           ; $4129: $88
	ld   h, [hl]                                     ; $412a: $66
	ld   a, c                                        ; $412b: $79
	xor  b                                           ; $412c: $a8
	add  a                                           ; $412d: $87
	adc  c                                           ; $412e: $89
	xor  c                                           ; $412f: $a9
	sbc  b                                           ; $4130: $98
	ld   a, c                                        ; $4131: $79
	cp   d                                           ; $4132: $ba
	sub  [hl]                                        ; $4133: $96
	ld   h, a                                        ; $4134: $67
	sbc  d                                           ; $4135: $9a
	sub  a                                           ; $4136: $97
	ld   h, a                                        ; $4137: $67
	add  a                                           ; $4138: $87
	ld   [hl], a                                     ; $4139: $77
	adc  b                                           ; $413a: $88
	add  a                                           ; $413b: $87
	adc  b                                           ; $413c: $88
	xor  d                                           ; $413d: $aa
	sub  [hl]                                        ; $413e: $96
	ld   h, a                                        ; $413f: $67
	sbc  d                                           ; $4140: $9a
	ld   [hl], a                                     ; $4141: $77
	ld   h, a                                        ; $4142: $67
	xor  d                                           ; $4143: $aa
	xor  b                                           ; $4144: $a8
	sbc  b                                           ; $4145: $98
	adc  c                                           ; $4146: $89
	adc  b                                           ; $4147: $88
	ld   [hl], a                                     ; $4148: $77
	ld   h, [hl]                                     ; $4149: $66
	ld   a, b                                        ; $414a: $78
	sbc  b                                           ; $414b: $98
	halt                                             ; $414c: $76
	ld   l, b                                        ; $414d: $68
	xor  c                                           ; $414e: $a9
	halt                                             ; $414f: $76
	ld   h, a                                        ; $4150: $67
	adc  d                                           ; $4151: $8a
	sub  a                                           ; $4152: $97
	ld   a, b                                        ; $4153: $78
	xor  d                                           ; $4154: $aa
	sbc  c                                           ; $4155: $99
	ld   [hl], a                                     ; $4156: $77
	halt                                             ; $4157: $76
	ld   a, c                                        ; $4158: $79
	sbc  c                                           ; $4159: $99
	halt                                             ; $415a: $76
	ld   l, c                                        ; $415b: $69
	xor  d                                           ; $415c: $aa
	add  [hl]                                        ; $415d: $86
	ld   a, c                                        ; $415e: $79
	sbc  d                                           ; $415f: $9a
	ld   h, l                                        ; $4160: $65
	ld   d, [hl]                                     ; $4161: $56
	sbc  b                                           ; $4162: $98
	ld   h, l                                        ; $4163: $65
	ld   h, a                                        ; $4164: $67
	sbc  d                                           ; $4165: $9a
	sbc  b                                           ; $4166: $98
	sbc  d                                           ; $4167: $9a
	res  5, b                                        ; $4168: $cb $a8
	ld   a, b                                        ; $416a: $78
	xor  d                                           ; $416b: $aa
	adc  b                                           ; $416c: $88
	sbc  c                                           ; $416d: $99
	sbc  b                                           ; $416e: $98
	add  [hl]                                        ; $416f: $86
	ld   h, a                                        ; $4170: $67
	ld   [hl], l                                     ; $4171: $75
	ld   de, $ba27                                   ; $4172: $11 $27 $ba
	halt                                             ; $4175: $76
	ld   l, b                                        ; $4176: $68
	call $9cb9                                       ; $4177: $cd $b9 $9c
	call z, Call_0f8_77a8                            ; $417a: $cc $a8 $77
	xor  e                                           ; $417d: $ab
	cp   d                                           ; $417e: $ba
	xor  d                                           ; $417f: $aa
	sub  a                                           ; $4180: $97
	ld   d, e                                        ; $4181: $53
	ld   hl, $1111                                   ; $4182: $21 $11 $11
	ld   l, h                                        ; $4185: $6c
	rst  $38                                         ; $4186: $ff
	res  7, l                                        ; $4187: $cb $bd
	call c, Call_0f8_7997                            ; $4189: $dc $97 $79
	xor  c                                           ; $418c: $a9
	ld   h, a                                        ; $418d: $67
	xor  [hl]                                        ; $418e: $ae
	rst  $38                                         ; $418f: $ff
	or   h                                           ; $4190: $b4
	ld   de, $2124                                   ; $4191: $11 $24 $21
	ld   de, $ff1b                                   ; $4194: $11 $1b $ff
	ld   a, [$df69]                                  ; $4197: $fa $69 $df
	ei                                               ; $419a: $fb
	ld   h, [hl]                                     ; $419b: $66
	sbc  d                                           ; $419c: $9a
	ld   [hl], a                                     ; $419d: $77
	xor  a                                           ; $419e: $af
	rst  $38                                         ; $419f: $ff
	db   $e4                                         ; $41a0: $e4
	ld   de, $6115                                   ; $41a1: $11 $15 $61
	ld   de, $ff1a                                   ; $41a4: $11 $1a $ff
	ei                                               ; $41a7: $fb
	ld   de, $ff7f                                   ; $41a8: $11 $7f $ff
	sub  l                                           ; $41ab: $95
	ld   d, a                                        ; $41ac: $57
	adc  c                                           ; $41ad: $89
	cp   a                                           ; $41ae: $bf
	rst  $38                                         ; $41af: $ff
	rst  $30                                         ; $41b0: $f7
	ld   de, $aa14                                   ; $41b1: $11 $14 $aa
	ld   de, rAUD1LEN                                   ; $41b4: $11 $11 $ff
	rst  $38                                         ; $41b7: $ff
	ld   h, c                                        ; $41b8: $61
	jr   @+$01                                       ; $41b9: $18 $ff

	ld   a, [$6745]                                  ; $41bb: $fa $45 $67
	xor  l                                           ; $41be: $ad
	rst  $38                                         ; $41bf: $ff
	rst  $38                                         ; $41c0: $ff
	ld   h, c                                        ; $41c1: $61
	ld   de, $6138                                   ; $41c2: $11 $38 $61
	ld   de, $ff2f                                   ; $41c5: $11 $2f $ff
	pop  af                                          ; $41c8: $f1
	ld   de, $ffaf                                   ; $41c9: $11 $af $ff
	ld   [hl], c                                     ; $41cc: $71
	ld   [de], a                                     ; $41cd: $12
	sbc  a                                           ; $41ce: $9f
	rst  $38                                         ; $41cf: $ff
	db   $fc                                         ; $41d0: $fc
	ld   de, $7c11                                   ; $41d1: $11 $11 $7c
	ld   h, c                                        ; $41d4: $61
	ld   de, $ff1f                                   ; $41d5: $11 $1f $ff
	pop  af                                          ; $41d8: $f1
	ld   de, $ff7f                                   ; $41d9: $11 $7f $ff
	and  c                                           ; $41dc: $a1
	inc  de                                          ; $41dd: $13
	adc  a                                           ; $41de: $8f
	rst  $38                                         ; $41df: $ff
	db   $fc                                         ; $41e0: $fc
	ld   hl, $3611                                   ; $41e1: $21 $11 $36
	ld   h, c                                        ; $41e4: $61
	ld   de, $ff3f                                   ; $41e5: $11 $3f $ff
	pop  af                                          ; $41e8: $f1
	ld   de, $ff5f                                   ; $41e9: $11 $5f $ff
	sub  c                                           ; $41ec: $91
	ld   de, $ff9f                                   ; $41ed: $11 $9f $ff
	or   $11                                         ; $41f0: $f6 $11
	ld   [de], a                                     ; $41f2: $12
	sbc  d                                           ; $41f3: $9a
	ld   de, rAUD1LEN                                   ; $41f4: $11 $11 $ff
	rst  $38                                         ; $41f7: $ff
	ld   de, rAUD1LEN                                   ; $41f8: $11 $11 $ff
	db   $fd                                         ; $41fb: $fd
	ld   de, $ff17                                   ; $41fc: $11 $17 $ff
	rst  $38                                         ; $41ff: $ff
	ld   h, c                                        ; $4200: $61
	ld   de, $5136                                   ; $4201: $11 $36 $51
	ld   de, $ff5f                                   ; $4204: $11 $5f $ff
	pop  af                                          ; $4207: $f1
	ld   de, $ff3f                                   ; $4208: $11 $3f $ff
	pop  bc                                          ; $420b: $c1
	ld   de, $ff8f                                   ; $420c: $11 $8f $ff
	call nc, $1211                                   ; $420f: $d4 $11 $12
	ld   hl, $1f11                                   ; $4212: $21 $11 $1f
	rst  $38                                         ; $4215: $ff
	push af                                          ; $4216: $f5
	ld   de, $ff1e                                   ; $4217: $11 $1e $ff
	push af                                          ; $421a: $f5
	ld   de, $ff1f                                   ; $421b: $11 $1f $ff
	ld   hl, sp+$11                                  ; $421e: $f8 $11
	ld   de, $1111                                   ; $4220: $11 $11 $11
	rra                                              ; $4223: $1f
	rst  $38                                         ; $4224: $ff
	pop  af                                          ; $4225: $f1
	ld   de, $ff1c                                   ; $4226: $11 $1c $ff
	rst  $30                                         ; $4229: $f7
	ld   hl, $ff19                                   ; $422a: $21 $19 $ff
	rst  $38                                         ; $422d: $ff
	and  c                                           ; $422e: $a1
	ld   de, $1111                                   ; $422f: $11 $11 $11
	rra                                              ; $4232: $1f
	rst  $38                                         ; $4233: $ff
	push af                                          ; $4234: $f5
	ld   de, $bf19                                   ; $4235: $11 $19 $bf
	ld   hl, sp-$46                                  ; $4238: $f8 $ba
	jr   @+$01                                       ; $423a: $18 $ff

	rst  $38                                         ; $423c: $ff
	or   c                                           ; $423d: $b1
	ld   de, $1111                                   ; $423e: $11 $11 $11
	rst  $38                                         ; $4241: $ff
	rst  $38                                         ; $4242: $ff
	or   c                                           ; $4243: $b1
	ld   de, $ff9d                                   ; $4244: $11 $9d $ff
	ld   a, e                                        ; $4247: $7b
	push af                                          ; $4248: $f5
	ld   l, c                                        ; $4249: $69
	sbc  a                                           ; $424a: $9f
	rst  $38                                         ; $424b: $ff
	or   c                                           ; $424c: $b1
	ld   de, $1f11                                   ; $424d: $11 $11 $1f
	rst  $38                                         ; $4250: $ff
	ei                                               ; $4251: $fb
	ld   de, $8e14                                   ; $4252: $11 $14 $8e
	di                                               ; $4255: $f3
	rst  $28                                         ; $4256: $ef
	adc  h                                           ; $4257: $8c
	or   e                                           ; $4258: $b3
	ld   l, a                                        ; $4259: $6f
	rst  $38                                         ; $425a: $ff
	pop  bc                                          ; $425b: $c1
	ld   de, rAUD1LEN                                   ; $425c: $11 $11 $ff
	rst  $38                                         ; $425f: $ff
	ld   de, $ef11                                   ; $4260: $11 $11 $ef
	rst  $38                                         ; $4263: $ff
	rla                                              ; $4264: $17
	rst  $30                                         ; $4265: $f7
	rst  $38                                         ; $4266: $ff
	ld   d, l                                        ; $4267: $55
	ld   a, a                                        ; $4268: $7f
	cp   $11                                         ; $4269: $fe $11
	ld   de, $ff3f                                   ; $426b: $11 $3f $ff
	pop  af                                          ; $426e: $f1
	ld   de, $ff1f                                   ; $426f: $11 $1f $ff
	add  c                                           ; $4272: $81
	db   $e4                                         ; $4273: $e4
	rst  $38                                         ; $4274: $ff
	or   l                                           ; $4275: $b5
	inc  h                                           ; $4276: $24
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4277: $cf
	pop  af                                          ; $4278: $f1
	ld   de, $ff1f                                   ; $4279: $11 $1f $ff
	ld   a, [$1611]                                  ; $427c: $fa $11 $16
	rst  $38                                         ; $427f: $ff
	pop  af                                          ; $4280: $f1
	ld   b, h                                        ; $4281: $44
	rra                                              ; $4282: $1f
	cp   $81                                         ; $4283: $fe $81
	ld   d, a                                        ; $4285: $57
	ld   a, [$1311]                                  ; $4286: $fa $11 $13
	rst  $38                                         ; $4289: $ff
	rst  $38                                         ; $428a: $ff
	ld   de, rAUD1LEN                                   ; $428b: $11 $11 $ff
	rst  $30                                         ; $428e: $f7
	dec  h                                           ; $428f: $25
	rra                                              ; $4290: $1f
	cp   $e4                                         ; $4291: $fe $e4
	ld   b, [hl]                                     ; $4293: $46
	cp   d                                           ; $4294: $ba
	ld   de, $ff15                                   ; $4295: $11 $15 $ff
	rst  $38                                         ; $4298: $ff
	ld   de, $ef11                                   ; $4299: $11 $11 $ef
	or   $93                                         ; $429c: $f6 $93
	rra                                              ; $429e: $1f
	cp   $c5                                         ; $429f: $fe $c5
	ld   h, a                                        ; $42a1: $67
	rst  $30                                         ; $42a2: $f7
	ld   de, $ff1d                                   ; $42a3: $11 $1d $ff
	db   $fc                                         ; $42a6: $fc
	ld   de, $ef11                                   ; $42a7: $11 $11 $ef
	di                                               ; $42aa: $f3
	pop  de                                          ; $42ab: $d1
	rra                                              ; $42ac: $1f
	cp   $a4                                         ; $42ad: $fe $a4
	ld   d, a                                        ; $42af: $57
	pop  hl                                          ; $42b0: $e1
	ld   de, $ff1f                                   ; $42b1: $11 $1f $ff
	pop  af                                          ; $42b4: $f1
	ld   de, $ff1a                                   ; $42b5: $11 $1a $ff
	xor  e                                           ; $42b8: $ab
	ld   [hl], c                                     ; $42b9: $71
	rst  $38                                         ; $42ba: $ff
	call z, Call_0f8_5f54                            ; $42bb: $cc $54 $5f
	ld   h, c                                        ; $42be: $61
	ld   de, $ffff                                   ; $42bf: $11 $ff $ff
	ld   de, $7f11                                   ; $42c2: $11 $11 $7f
	db   $fc                                         ; $42c5: $fc
	sbc  e                                           ; $42c6: $9b
	rra                                              ; $42c7: $1f
	db   $fc                                         ; $42c8: $fc
	push bc                                          ; $42c9: $c5
	inc  sp                                          ; $42ca: $33
	ld   sp, hl                                      ; $42cb: $f9
	ld   de, $ff1f                                   ; $42cc: $11 $1f $ff
	pop  af                                          ; $42cf: $f1
	ld   de, $ff17                                   ; $42d0: $11 $17 $ff
	cp   c                                           ; $42d3: $b9
	and  c                                           ; $42d4: $a1
	rst  $38                                         ; $42d5: $ff
	call c, $1f42                                    ; $42d6: $dc $42 $1f
	add  c                                           ; $42d9: $81
	ld   de, $ffff                                   ; $42da: $11 $ff $ff
	ld   de, $bf11                                   ; $42dd: $11 $11 $bf
	push af                                          ; $42e0: $f5
	or   [hl]                                        ; $42e1: $b6
	rra                                              ; $42e2: $1f
	cp   $a2                                         ; $42e3: $fe $a2
	ld   [de], a                                     ; $42e5: $12
	pop  af                                          ; $42e6: $f1
	ld   de, $ff1f                                   ; $42e7: $11 $1f $ff
	pop  af                                          ; $42ea: $f1
	ld   de, $ff1d                                   ; $42eb: $11 $1d $ff
	ld   e, $17                                      ; $42ee: $1e $17
	rst  $38                                         ; $42f0: $ff
	push af                                          ; $42f1: $f5
	ld   de, $119f                                   ; $42f2: $11 $9f $11
	jr   @+$01                                       ; $42f5: $18 $ff

	ldh  a, [c]                                      ; $42f7: $f2
	ld   de, $ff17                                   ; $42f8: $11 $17 $ff
	add  a                                           ; $42fb: $87
	add  c                                           ; $42fc: $81
	rst  $38                                         ; $42fd: $ff
	db   $fc                                         ; $42fe: $fc
	ld   de, $211f                                   ; $42ff: $11 $1f $21
	ld   de, $ffff                                   ; $4302: $11 $ff $ff
	ld   de, $9f12                                   ; $4305: $11 $12 $9f
	pop  af                                          ; $4308: $f1
	pop  bc                                          ; $4309: $c1
	rst  $38                                         ; $430a: $ff
	rst  $38                                         ; $430b: $ff
	ld   de, $6116                                   ; $430c: $11 $16 $61
	ld   de, $ffff                                   ; $430f: $11 $ff $ff
	ld   hl, $8d11                                   ; $4312: $21 $11 $8d
	pop  af                                          ; $4315: $f1
	ld   h, d                                        ; $4316: $62
	xor  a                                           ; $4317: $af
	rst  $38                                         ; $4318: $ff
	ld   d, c                                        ; $4319: $51
	ld   de, $1151                                   ; $431a: $11 $51 $11
	cp   a                                           ; $431d: $bf
	rst  $38                                         ; $431e: $ff
	sub  [hl]                                        ; $431f: $96
	ld   de, $f185                                   ; $4320: $11 $85 $f1
	inc  d                                           ; $4323: $14
	adc  a                                           ; $4324: $8f
	rst  $38                                         ; $4325: $ff
	and  h                                           ; $4326: $a4
	ld   b, c                                        ; $4327: $41
	ld   b, c                                        ; $4328: $41
	ld   de, $ff5f                                   ; $4329: $11 $5f $ff
	ld   a, [$d311]                                  ; $432c: $fa $11 $d3
	pop  af                                          ; $432f: $f1
	inc  de                                          ; $4330: $13
	ld   c, a                                        ; $4331: $4f
	rst  $38                                         ; $4332: $ff
	rst  $30                                         ; $4333: $f7
	sub  c                                           ; $4334: $91
	ld   b, c                                        ; $4335: $41
	ld   de, $ff1f                                   ; $4336: $11 $1f $ff
	db   $fc                                         ; $4339: $fc
	ld   h, h                                        ; $433a: $64
	rst  $30                                         ; $433b: $f7
	pop  af                                          ; $433c: $f1
	ld   de, $ff1f                                   ; $433d: $11 $1f $ff
	db   $fc                                         ; $4340: $fc
	db   $e3                                         ; $4341: $e3
	sub  c                                           ; $4342: $91
	ld   de, $9f19                                   ; $4343: $11 $19 $9f
	res  4, a                                        ; $4346: $cb $a7
	db   $fd                                         ; $4348: $fd
	push af                                          ; $4349: $f5
	inc  de                                          ; $434a: $13
	dec  e                                           ; $434b: $1d
	cp   a                                           ; $434c: $bf
	db   $ec                                         ; $434d: $ec
	or   $a1                                         ; $434e: $f6 $a1
	ld   de, $7f1a                                   ; $4350: $11 $1a $7f
	ld   h, $99                                      ; $4353: $26 $99
	rst  $38                                         ; $4355: $ff
	or   $58                                         ; $4356: $f6 $58
	cpl                                              ; $4358: $2f
	adc  h                                           ; $4359: $8c
	sbc  d                                           ; $435a: $9a
	or   l                                           ; $435b: $b5
	and  c                                           ; $435c: $a1
	ld   de, $9b5b                                   ; $435d: $11 $5b $9b
	inc  d                                           ; $4360: $14
	ld   c, c                                        ; $4361: $49
	rst  $38                                         ; $4362: $ff
	ld   hl, sp-$58                                  ; $4363: $f8 $a8
	sbc  a                                           ; $4365: $9f
	xor  [hl]                                        ; $4366: $ae
	ld   a, e                                        ; $4367: $7b
	sub  [hl]                                        ; $4368: $96
	ld   h, c                                        ; $4369: $61
	ld   de, $757a                                   ; $436a: $11 $7a $75
	inc  d                                           ; $436d: $14
	ld   a, [hl+]                                    ; $436e: $2a
	call $a9f8                                       ; $436f: $cd $f8 $a9
	xor  $df                                         ; $4372: $ee $df
	sbc  e                                           ; $4374: $9b
	adc  b                                           ; $4375: $88
	ld   b, c                                        ; $4376: $41
	ld   [hl-], a                                    ; $4377: $32
	add  a                                           ; $4378: $87
	ld   d, c                                        ; $4379: $51
	inc  de                                          ; $437a: $13
	dec  sp                                          ; $437b: $3b
	xor  d                                           ; $437c: $aa
	adc  c                                           ; $437d: $89
	xor  e                                           ; $437e: $ab
	db   $fc                                         ; $437f: $fc
	xor  $cc                                         ; $4380: $ee $cc
	cp   e                                           ; $4382: $bb
	ld   h, l                                        ; $4383: $65
	ld   b, l                                        ; $4384: $45
	ld   [hl], l                                     ; $4385: $75
	ld   hl, $5922                                   ; $4386: $21 $22 $59
	ld   [hl], a                                     ; $4389: $77
	ld   c, b                                        ; $438a: $48
	xor  l                                           ; $438b: $ad
	rst  $38                                         ; $438c: $ff
	ei                                               ; $438d: $fb
	db   $ec                                         ; $438e: $ec
	sbc  $97                                         ; $438f: $de $97
	jr   c, jr_0f8_43e6                              ; $4391: $38 $53

	ld   hl, $6511                                   ; $4393: $21 $11 $65
	ld   [hl], a                                     ; $4396: $77
	ld   [hl], $8d                                   ; $4397: $36 $8d
	rst  $38                                         ; $4399: $ff
	db   $ec                                         ; $439a: $ec
	db   $ed                                         ; $439b: $ed
	cp   $a7                                         ; $439c: $fe $a7
	ld   e, c                                        ; $439e: $59
	ld   b, e                                        ; $439f: $43
	ld   de, $4411                                   ; $43a0: $11 $11 $44
	ld   [hl], a                                     ; $43a3: $77
	ld   b, a                                        ; $43a4: $47
	sbc  h                                           ; $43a5: $9c
	rst  $38                                         ; $43a6: $ff
	db   $ed                                         ; $43a7: $ed
	db   $fd                                         ; $43a8: $fd
	db   $ed                                         ; $43a9: $ed
	and  a                                           ; $43aa: $a7
	ld   a, c                                        ; $43ab: $79
	inc  sp                                          ; $43ac: $33
	ld   de, $4311                                   ; $43ad: $11 $11 $43
	ld   [hl], l                                     ; $43b0: $75
	ld   b, a                                        ; $43b1: $47
	sbc  [hl]                                        ; $43b2: $9e
	rst  $28                                         ; $43b3: $ef
	sbc  $fd                                         ; $43b4: $de $fd
	db   $fd                                         ; $43b6: $fd
	and  a                                           ; $43b7: $a7
	ld   [hl], a                                     ; $43b8: $77
	inc  hl                                          ; $43b9: $23
	ld   de, $3411                                   ; $43ba: $11 $11 $34
	add  h                                           ; $43bd: $84
	ld   l, b                                        ; $43be: $68
	xor  [hl]                                        ; $43bf: $ae
	rst  $28                                         ; $43c0: $ef
	rst  JumpTable                                         ; $43c1: $df
	xor  $fc                                         ; $43c2: $ee $fc
	or   a                                           ; $43c4: $b7
	sub  [hl]                                        ; $43c5: $96
	ld   [hl+], a                                    ; $43c6: $22
	ld   de, $2412                                   ; $43c7: $11 $12 $24
	ld   [hl], h                                     ; $43ca: $74
	adc  b                                           ; $43cb: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43cc: $cf
	rst  $38                                         ; $43cd: $ff
	rst  JumpTable                                         ; $43ce: $df
	xor  $fb                                         ; $43cf: $ee $fb
	and  [hl]                                        ; $43d1: $a6
	and  l                                           ; $43d2: $a5
	ld   sp, $1311                                   ; $43d3: $31 $11 $13
	dec  h                                           ; $43d6: $25
	ld   d, h                                        ; $43d7: $54
	ld   a, b                                        ; $43d8: $78
	xor  $ff                                         ; $43d9: $ee $ff
	rst  $28                                         ; $43db: $ef
	rst  $28                                         ; $43dc: $ef
	db   $db                                         ; $43dd: $db
	sub  [hl]                                        ; $43de: $96
	sub  h                                           ; $43df: $94
	ld   sp, $1311                                   ; $43e0: $31 $11 $13
	dec  h                                           ; $43e3: $25
	ld   b, h                                        ; $43e4: $44
	ld   a, c                                        ; $43e5: $79

jr_0f8_43e6:
	rst  $28                                         ; $43e6: $ef
	cp   $ef                                         ; $43e7: $fe $ef
	rst  JumpTable                                         ; $43e9: $df
	bit  6, [hl]                                     ; $43ea: $cb $76
	sub  h                                           ; $43ec: $94
	ld   sp, $1311                                   ; $43ed: $31 $11 $13
	ld   h, $44                                      ; $43f0: $26 $44
	ld   a, d                                        ; $43f2: $7a
	rst  $38                                         ; $43f3: $ff
	cp   $ff                                         ; $43f4: $fe $ff
	rst  $28                                         ; $43f6: $ef
	call c, $8476                                    ; $43f7: $dc $76 $84
	ld   sp, $1311                                   ; $43fa: $31 $11 $13
	dec  [hl]                                        ; $43fd: $35
	ld   b, h                                        ; $43fe: $44
	ld   l, d                                        ; $43ff: $6a
	rst  $28                                         ; $4400: $ef
	db   $fd                                         ; $4401: $fd
	rst  $38                                         ; $4402: $ff
	rst  $28                                         ; $4403: $ef
	bit  4, [hl]                                     ; $4404: $cb $66
	ld   [hl], h                                     ; $4406: $74
	ld   sp, $2211                                   ; $4407: $31 $11 $22
	ld   [hl], $34                                   ; $440a: $36 $34
	ld   l, c                                        ; $440c: $69
	rst  JumpTable                                         ; $440d: $df
	db   $fd                                         ; $440e: $fd
	rst  $38                                         ; $440f: $ff
	rst  $38                                         ; $4410: $ff
	db   $db                                         ; $4411: $db
	ld   h, [hl]                                     ; $4412: $66
	ld   [hl], h                                     ; $4413: $74
	ld   sp, $2211                                   ; $4414: $31 $11 $22
	dec  [hl]                                        ; $4417: $35
	ld   b, h                                        ; $4418: $44
	ld   l, c                                        ; $4419: $69
	rst  JumpTable                                         ; $441a: $df
	cp   $ff                                         ; $441b: $fe $ff
	rst  $38                                         ; $441d: $ff
	call c, $7466                                    ; $441e: $dc $66 $74
	ld   sp, $1211                                   ; $4421: $31 $11 $12
	dec  [hl]                                        ; $4424: $35
	ld   b, h                                        ; $4425: $44
	ld   l, c                                        ; $4426: $69
	adc  $fe                                         ; $4427: $ce $fe
	rst  $38                                         ; $4429: $ff
	rst  $38                                         ; $442a: $ff
	db   $ec                                         ; $442b: $ec
	halt                                             ; $442c: $76
	ld   [hl], l                                     ; $442d: $75
	ld   sp, $1211                                   ; $442e: $31 $11 $12
	dec  [hl]                                        ; $4431: $35
	ld   d, h                                        ; $4432: $54
	ld   l, b                                        ; $4433: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4434: $cf
	cp   $ef                                         ; $4435: $fe $ef
	rst  $38                                         ; $4437: $ff
	db   $fd                                         ; $4438: $fd
	sub  l                                           ; $4439: $95
	ld   h, [hl]                                     ; $443a: $66
	ld   b, c                                        ; $443b: $41
	ld   de, $2412                                   ; $443c: $11 $12 $24
	ld   d, l                                        ; $443f: $55
	ld   e, b                                        ; $4440: $58
	cp   l                                           ; $4441: $bd
	cp   $ef                                         ; $4442: $fe $ef
	rst  $38                                         ; $4444: $ff
	cp   $a5                                         ; $4445: $fe $a5
	ld   d, [hl]                                     ; $4447: $56
	ld   d, d                                        ; $4448: $52
	ld   de, $2312                                   ; $4449: $11 $12 $23
	ld   d, l                                        ; $444c: $55
	ld   d, a                                        ; $444d: $57
	xor  h                                           ; $444e: $ac
	rst  $28                                         ; $444f: $ef
	rst  $28                                         ; $4450: $ef
	rst  $38                                         ; $4451: $ff
	rst  $38                                         ; $4452: $ff
	rst  ToBoot                                         ; $4453: $c7
	ld   b, [hl]                                     ; $4454: $46
	ld   h, h                                        ; $4455: $64
	ld   de, $2211                                   ; $4456: $11 $11 $22
	ld   b, l                                        ; $4459: $45
	ld   d, [hl]                                     ; $445a: $56
	sbc  e                                           ; $445b: $9b
	xor  $ed                                         ; $445c: $ee $ed
	rst  $38                                         ; $445e: $ff
	rst  $38                                         ; $445f: $ff
	db   $eb                                         ; $4460: $eb
	ld   d, h                                        ; $4461: $54
	ld   h, l                                        ; $4462: $65
	ld   sp, $2111                                   ; $4463: $31 $11 $21
	inc  [hl]                                        ; $4466: $34
	ld   h, l                                        ; $4467: $65
	ld   a, c                                        ; $4468: $79
	adc  $ee                                         ; $4469: $ce $ee
	rst  $28                                         ; $446b: $ef
	rst  $28                                         ; $446c: $ef
	cp   $a4                                         ; $446d: $fe $a4
	ld   b, [hl]                                     ; $446f: $46
	ld   d, d                                        ; $4470: $52
	ld   bc, $1311                                   ; $4471: $01 $11 $13
	ld   d, a                                        ; $4474: $57
	ld   e, b                                        ; $4475: $58

Jump_0f8_4476:
	xor  h                                           ; $4476: $ac
	rst  $38                                         ; $4477: $ff
	xor  $fe                                         ; $4478: $ee $fe
	rst  $38                                         ; $447a: $ff
	jp   hl                                          ; $447b: $e9


	ld   b, h                                        ; $447c: $44
	ld   d, l                                        ; $447d: $55
	ld   de, $1111                                   ; $447e: $11 $11 $11
	dec  [hl]                                        ; $4481: $35
	ld   [hl], l                                     ; $4482: $75
	sbc  c                                           ; $4483: $99
	sbc  $ee                                         ; $4484: $de $ee
	rst  $28                                         ; $4486: $ef
	rst  $28                                         ; $4487: $ef
	rst  $38                                         ; $4488: $ff
	and  h                                           ; $4489: $a4
	dec  [hl]                                        ; $448a: $35
	ld   h, c                                        ; $448b: $61
	ld   de, $0311                                   ; $448c: $11 $11 $03
	ld   c, b                                        ; $448f: $48
	ld   e, b                                        ; $4490: $58
	xor  e                                           ; $4491: $ab
	rst  $28                                         ; $4492: $ef
	db   $fd                                         ; $4493: $fd
	cp   $ff                                         ; $4494: $fe $ff
	db   $fc                                         ; $4496: $fc
	ld   d, e                                        ; $4497: $53
	ld   [hl], $32                                   ; $4498: $36 $32
	ld   de, $2311                                   ; $449a: $11 $11 $23
	add  a                                           ; $449d: $87
	ld   l, c                                        ; $449e: $69
	cp   [hl]                                        ; $449f: $be
	rst  $28                                         ; $44a0: $ef
	rst  $28                                         ; $44a1: $ef
	rst  $38                                         ; $44a2: $ff
	rst  $38                                         ; $44a3: $ff
	ld   hl, sp+$41                                  ; $44a4: $f8 $41
	ld   d, l                                        ; $44a6: $55
	ld   [de], a                                     ; $44a7: $12
	ld   de, $2511                                   ; $44a8: $11 $11 $25
	sub  [hl]                                        ; $44ab: $96
	sbc  d                                           ; $44ac: $9a
	rst  JumpTable                                         ; $44ad: $df
	rst  $38                                         ; $44ae: $ff
	rst  JumpTable                                         ; $44af: $df
	rst  $28                                         ; $44b0: $ef
	rst  $38                                         ; $44b1: $ff
	rst  $10                                         ; $44b2: $d7
	ld   sp, $2164                                   ; $44b3: $31 $64 $21
	ld   de, $2711                                   ; $44b6: $11 $11 $27
	sub  [hl]                                        ; $44b9: $96
	adc  c                                           ; $44ba: $89
	sbc  $fe                                         ; $44bb: $de $fe
	rst  $28                                         ; $44bd: $ef
	rst  JumpTable                                         ; $44be: $df
	rst  $38                                         ; $44bf: $ff
	rst  $10                                         ; $44c0: $d7
	ld   sp, $2174                                   ; $44c1: $31 $74 $21
	ld   de, $2711                                   ; $44c4: $11 $11 $27
	sub  [hl]                                        ; $44c7: $96
	sbc  d                                           ; $44c8: $9a
	adc  $ff                                         ; $44c9: $ce $ff
	rst  $28                                         ; $44cb: $ef
	rst  JumpTable                                         ; $44cc: $df
	rst  $38                                         ; $44cd: $ff
	jp   hl                                          ; $44ce: $e9


	ld   b, c                                        ; $44cf: $41
	ld   h, l                                        ; $44d0: $65
	ld   [hl+], a                                    ; $44d1: $22
	ld   de, $2611                                   ; $44d2: $11 $11 $26
	and  l                                           ; $44d5: $a5
	ld   a, c                                        ; $44d6: $79
	cp   [hl]                                        ; $44d7: $be
	rst  $38                                         ; $44d8: $ff
	rst  JumpTable                                         ; $44d9: $df
	xor  $ff                                         ; $44da: $ee $ff
	ei                                               ; $44dc: $fb
	ld   h, c                                        ; $44dd: $61
	scf                                              ; $44de: $37
	inc  sp                                          ; $44df: $33
	ld   de, $1311                                   ; $44e0: $11 $11 $13
	sub  a                                           ; $44e3: $97
	ld   l, c                                        ; $44e4: $69
	sbc  l                                           ; $44e5: $9d
	rst  $38                                         ; $44e6: $ff
	rst  $28                                         ; $44e7: $ef
	db   $fc                                         ; $44e8: $fc
	rst  $38                                         ; $44e9: $ff
	rst  $38                                         ; $44ea: $ff
	sub  h                                           ; $44eb: $94
	dec  d                                           ; $44ec: $15
	ld   h, e                                        ; $44ed: $63
	ld   sp, $1111                                   ; $44ee: $31 $11 $11
	ld   e, c                                        ; $44f1: $59
	ld   h, [hl]                                     ; $44f2: $66
	adc  c                                           ; $44f3: $89
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44f4: $cf
	cp   $fe                                         ; $44f5: $fe $fe
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44f7: $cf
	rst  $38                                         ; $44f8: $ff
	ld   [$5641], a                                  ; $44f9: $ea $41 $56
	ld   b, d                                        ; $44fc: $42
	ld   de, $1511                                   ; $44fd: $11 $11 $15
	add  a                                           ; $4500: $87
	ld   h, a                                        ; $4501: $67
	adc  l                                           ; $4502: $8d
	rst  $38                                         ; $4503: $ff
	cp   $fc                                         ; $4504: $fe $fc
	rst  $38                                         ; $4506: $ff
	rst  $38                                         ; $4507: $ff
	rst  ToBoot                                         ; $4508: $c7
	inc  de                                          ; $4509: $13
	ld   d, [hl]                                     ; $450a: $56
	ld   sp, $1111                                   ; $450b: $31 $11 $11
	scf                                              ; $450e: $37
	sub  [hl]                                        ; $450f: $96
	ld   h, a                                        ; $4510: $67
	cp   [hl]                                        ; $4511: $be
	rst  $38                                         ; $4512: $ff
	rst  $38                                         ; $4513: $ff
	adc  $ff                                         ; $4514: $ce $ff
	cp   $b3                                         ; $4516: $fe $b3
	inc  de                                          ; $4518: $13
	ld   h, [hl]                                     ; $4519: $66
	ld   hl, $1111                                   ; $451a: $21 $11 $11
	ld   b, a                                        ; $451d: $47
	sub  l                                           ; $451e: $95
	ld   [hl], a                                     ; $451f: $77
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4520: $cf
	rst  $38                                         ; $4521: $ff
	xor  $cf                                         ; $4522: $ee $cf
	rst  $38                                         ; $4524: $ff
	db   $fd                                         ; $4525: $fd
	sub  d                                           ; $4526: $92
	ld   [de], a                                     ; $4527: $12
	ld   [hl], l                                     ; $4528: $75
	ld   hl, $1111                                   ; $4529: $21 $11 $11
	ld   c, b                                        ; $452c: $48
	sub  h                                           ; $452d: $94
	ld   h, a                                        ; $452e: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $452f: $cf
	rst  $38                                         ; $4530: $ff
	rst  $38                                         ; $4531: $ff
	cp   [hl]                                        ; $4532: $be
	rst  $38                                         ; $4533: $ff
	rst  $38                                         ; $4534: $ff
	call nz, Call_0f8_5821                           ; $4535: $c4 $21 $58
	ld   sp, $1111                                   ; $4538: $31 $11 $11
	ld   b, l                                        ; $453b: $45
	or   [hl]                                        ; $453c: $b6
	ld   d, [hl]                                     ; $453d: $56
	xor  a                                           ; $453e: $af
	rst  $38                                         ; $453f: $ff
	cp   $db                                         ; $4540: $fe $db
	rst  $38                                         ; $4542: $ff
	rst  $38                                         ; $4543: $ff
	jp   hl                                          ; $4544: $e9


	ld   sp, $7216                                   ; $4545: $31 $16 $72
	ld   de, $1511                                   ; $4548: $11 $11 $15
	ld   l, d                                        ; $454b: $6a
	ld   h, l                                        ; $454c: $65
	ld   l, e                                        ; $454d: $6b
	rst  $38                                         ; $454e: $ff
	rst  $38                                         ; $454f: $ff
	db   $ec                                         ; $4550: $ec
	cp   a                                           ; $4551: $bf
	rst  $38                                         ; $4552: $ff
	cp   $83                                         ; $4553: $fe $83
	ld   sp, $4138                                   ; $4555: $31 $38 $41
	ld   de, $5611                                   ; $4558: $11 $11 $56
	sbc  d                                           ; $455b: $9a
	ld   b, a                                        ; $455c: $47
	sbc  a                                           ; $455d: $9f
	rst  $38                                         ; $455e: $ff
	db   $fc                                         ; $455f: $fc
	jp   z, $ffcf                                    ; $4560: $ca $cf $ff

	ei                                               ; $4563: $fb
	ld   h, e                                        ; $4564: $63
	ld   b, d                                        ; $4565: $42
	ld   c, b                                        ; $4566: $48
	ld   hl, $1111                                   ; $4567: $21 $11 $11
	ld   [hl], l                                     ; $456a: $75
	sbc  c                                           ; $456b: $99
	ld   b, a                                        ; $456c: $47
	sbc  a                                           ; $456d: $9f
	rst  $38                                         ; $456e: $ff
	ei                                               ; $456f: $fb
	jp   z, $ffcf                                    ; $4570: $ca $cf $ff

	db   $eb                                         ; $4573: $eb
	ld   [hl], l                                     ; $4574: $75
	ld   [hl], h                                     ; $4575: $74
	daa                                              ; $4576: $27
	ld   d, c                                        ; $4577: $51
	ld   de, $4511                                   ; $4578: $11 $11 $45
	ld   c, e                                        ; $457b: $4b
	ld   b, l                                        ; $457c: $45
	sbc  h                                           ; $457d: $9c
	rst  $38                                         ; $457e: $ff
	db   $fc                                         ; $457f: $fc
	xor  h                                           ; $4580: $ac
	sbc  a                                           ; $4581: $9f
	rst  $38                                         ; $4582: $ff
	db   $fd                                         ; $4583: $fd
	or   a                                           ; $4584: $b7
	adc  c                                           ; $4585: $89
	ld   d, h                                        ; $4586: $54
	ld   d, h                                        ; $4587: $54
	ld   de, $1111                                   ; $4588: $11 $11 $11
	ld   [hl-], a                                    ; $458b: $32
	add  l                                           ; $458c: $85
	ld   e, e                                        ; $458d: $5b
	cp   a                                           ; $458e: $bf
	rst  $28                                         ; $458f: $ef
	db   $db                                         ; $4590: $db
	ld   a, [$ffff]                                  ; $4591: $fa $ff $ff
	db   $fd                                         ; $4594: $fd
	sbc  e                                           ; $4595: $9b
	sub  [hl]                                        ; $4596: $96
	ld   b, c                                        ; $4597: $41
	ld   b, e                                        ; $4598: $43
	ld   de, $1111                                   ; $4599: $11 $11 $11
	ld   d, c                                        ; $459c: $51
	sub  [hl]                                        ; $459d: $96
	ld   a, e                                        ; $459e: $7b
	xor  a                                           ; $459f: $af
	rst  $28                                         ; $45a0: $ef
	db   $fc                                         ; $45a1: $fc
	jp   c, $ffef                                    ; $45a2: $da $ef $ff

	ret                                              ; $45a5: $c9


	adc  b                                           ; $45a6: $88
	and  [hl]                                        ; $45a7: $a6
	ld   b, c                                        ; $45a8: $41
	inc  d                                           ; $45a9: $14
	dec  d                                           ; $45aa: $15
	ld   de, $7621                                   ; $45ab: $11 $21 $76
	adc  a                                           ; $45ae: $8f
	ld   e, [hl]                                     ; $45af: $5e
	xor  d                                           ; $45b0: $aa
	ld   a, [$cbfa]                                  ; $45b1: $fa $fa $cb
	ld   c, [hl]                                     ; $45b4: $4e
	rst  $28                                         ; $45b5: $ef
	db   $fc                                         ; $45b6: $fc
	or   l                                           ; $45b7: $b5
	add  a                                           ; $45b8: $87
	inc  de                                          ; $45b9: $13
	ld   de, $9e12                                   ; $45ba: $11 $12 $9e
	add  l                                           ; $45bd: $85
	ld   c, b                                        ; $45be: $48
	db   $eb                                         ; $45bf: $eb
	db   $fc                                         ; $45c0: $fc
	adc  b                                           ; $45c1: $88
	add  hl, de                                      ; $45c2: $19
	ld   c, a                                        ; $45c3: $4f
	cp   b                                           ; $45c4: $b8
	pop  de                                          ; $45c5: $d1
	sbc  [hl]                                        ; $45c6: $9e
	rst  $38                                         ; $45c7: $ff
	rst  $38                                         ; $45c8: $ff
	ld   d, a                                        ; $45c9: $57
	ld   [hl], d                                     ; $45ca: $72
	ld   b, c                                        ; $45cb: $41
	ld   de, $8f17                                   ; $45cc: $11 $17 $8f
	db   $e4                                         ; $45cf: $e4
	and  c                                           ; $45d0: $a1
	db   $eb                                         ; $45d1: $eb
	rst  $38                                         ; $45d2: $ff
	ld   a, [de]                                     ; $45d3: $1a
	dec  d                                           ; $45d4: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45d5: $cf
	ld   sp, hl                                      ; $45d6: $f9
	or   c                                           ; $45d7: $b1
	ld   c, a                                        ; $45d8: $4f
	rst  $38                                         ; $45d9: $ff
	ld   sp, hl                                      ; $45da: $f9
	inc  h                                           ; $45db: $24
	add  l                                           ; $45dc: $85
	add  c                                           ; $45dd: $81
	ld   de, $ff1b                                   ; $45de: $11 $1b $ff
	pop  af                                          ; $45e1: $f1
	sub  c                                           ; $45e2: $91
	ld   a, a                                        ; $45e3: $7f
	rst  $38                                         ; $45e4: $ff
	ld   [de], a                                     ; $45e5: $12
	ld   de, $f7ff                                   ; $45e6: $11 $ff $f7
	ld   de, $ff1f                                   ; $45e9: $11 $1f $ff
	push af                                          ; $45ec: $f5
	dec  d                                           ; $45ed: $15
	rst  $28                                         ; $45ee: $ef
	db   $d3                                         ; $45ef: $d3
	ld   de, rAUD1LEN                                   ; $45f0: $11 $11 $ff
	rst  $38                                         ; $45f3: $ff
	ld   de, $fe1f                                   ; $45f4: $11 $1f $fe
	pop  af                                          ; $45f7: $f1
	ld   de, $ffdf                                   ; $45f8: $11 $df $ff
	ld   de, $ff15                                   ; $45fb: $11 $15 $ff
	ld   sp, hl                                      ; $45fe: $f9
	ld   d, [hl]                                     ; $45ff: $56
	rst  $38                                         ; $4600: $ff
	push af                                          ; $4601: $f5
	ld   de, $1c11                                   ; $4602: $11 $11 $1c
	rst  $38                                         ; $4605: $ff
	ld   sp, hl                                      ; $4606: $f9
	jr   jr_0f8_4668                                 ; $4607: $18 $5f

	ld   l, b                                        ; $4609: $68
	ld   hl, $fff7                                   ; $460a: $21 $f7 $ff
	and  $17                                         ; $460d: $e6 $17
	ld   e, $fe                                      ; $460f: $1e $fe
	db   $dd                                         ; $4611: $dd
	cp   $fe                                         ; $4612: $fe $fe
	ld   d, c                                        ; $4614: $51
	ld   de, $1111                                   ; $4615: $11 $11 $11
	rst  $38                                         ; $4618: $ff
	rst  $38                                         ; $4619: $ff
	dec  d                                           ; $461a: $15
	dec  e                                           ; $461b: $1d
	adc  e                                           ; $461c: $8b
	pop  af                                          ; $461d: $f1
	db   $e4                                         ; $461e: $e4
	rst  $28                                         ; $461f: $ef
	db   $fc                                         ; $4620: $fc
	inc  d                                           ; $4621: $14
	rla                                              ; $4622: $17
	rst  $38                                         ; $4623: $ff
	rst  $38                                         ; $4624: $ff
	ld   sp, hl                                      ; $4625: $f9
	rst  $38                                         ; $4626: $ff
	ld   [hl], h                                     ; $4627: $74
	ld   de, $1111                                   ; $4628: $11 $11 $11
	rst  $38                                         ; $462b: $ff
	rst  $38                                         ; $462c: $ff
	ld   de, $f512                                   ; $462d: $11 $12 $f5
	pop  af                                          ; $4630: $f1
	inc  e                                           ; $4631: $1c
	ccf                                              ; $4632: $3f
	rst  $38                                         ; $4633: $ff
	ld   de, $ff31                                   ; $4634: $11 $31 $ff
	rst  $38                                         ; $4637: $ff
	db   $eb                                         ; $4638: $eb
	cp   a                                           ; $4639: $bf
	add  $51                                         ; $463a: $c6 $51
	ld   de, $1f11                                   ; $463c: $11 $11 $1f
	rst  $38                                         ; $463f: $ff
	pop  af                                          ; $4640: $f1
	ld   sp, $7f5d                                   ; $4641: $31 $5d $7f
	rla                                              ; $4644: $17
	add  h                                           ; $4645: $84
	cp   $f1                                         ; $4646: $fe $f1
	ld   sp, $ef1f                                   ; $4648: $31 $1f $ef
	cp   $ad                                         ; $464b: $fe $ad
	ld   a, [$1177]                                  ; $464d: $fa $77 $11
	ld   de, rAUD1LEN                                   ; $4650: $11 $11 $ff
	rst  $38                                         ; $4653: $ff
	inc  de                                          ; $4654: $13
	ld   [de], a                                     ; $4655: $12
	reti                                             ; $4656: $d9


	pop  af                                          ; $4657: $f1
	ld   h, [hl]                                     ; $4658: $66
	cpl                                              ; $4659: $2f
	rst  $38                                         ; $465a: $ff
	inc  d                                           ; $465b: $14
	ld   de, $fffc                                   ; $465c: $11 $fc $ff
	jp   z, $caef                                    ; $465f: $ca $ef $ca

	add  c                                           ; $4662: $81
	ld   de, $1711                                   ; $4663: $11 $11 $17
	rst  $38                                         ; $4666: $ff
	ei                                               ; $4667: $fb

jr_0f8_4668:
	inc  d                                           ; $4668: $14
	rra                                              ; $4669: $1f
	ld   l, a                                        ; $466a: $6f
	or   c                                           ; $466b: $b1
	pop  bc                                          ; $466c: $c1
	rst  $38                                         ; $466d: $ff
	db   $fd                                         ; $466e: $fd
	dec  d                                           ; $466f: $15
	ld   a, [de]                                     ; $4670: $1a
	xor  $fd                                         ; $4671: $ee $fd
	call z, $cbef                                    ; $4673: $cc $ef $cb
	ld   b, c                                        ; $4676: $41
	ld   de, $1e11                                   ; $4677: $11 $11 $1e
	rst  $38                                         ; $467a: $ff
	push af                                          ; $467b: $f5
	ld   sp, $5f1e                                   ; $467c: $31 $1e $5f
	ld   [de], a                                     ; $467f: $12
	add  c                                           ; $4680: $81
	db   $fc                                         ; $4681: $fc
	push af                                          ; $4682: $f5
	inc  de                                          ; $4683: $13
	dec  e                                           ; $4684: $1d
	rst  JumpTable                                         ; $4685: $df
	db   $fd                                         ; $4686: $fd
	call $9aff                                       ; $4687: $cd $ff $9a
	ld   hl, $1111                                   ; $468a: $21 $11 $11
	rla                                              ; $468d: $17
	rst  $38                                         ; $468e: $ff
	ld   sp, hl                                      ; $468f: $f9
	ld   hl, $4f1e                                   ; $4690: $21 $1e $4f
	ld   d, c                                        ; $4693: $51
	add  c                                           ; $4694: $81
	db   $fd                                         ; $4695: $fd
	ld   a, [$1a45]                                  ; $4696: $fa $45 $1a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4699: $cf
	db   $fd                                         ; $469a: $fd
	cp   l                                           ; $469b: $bd
	rst  $38                                         ; $469c: $ff
	cp   e                                           ; $469d: $bb
	ld   h, c                                        ; $469e: $61
	ld   hl, $1111                                   ; $469f: $21 $11 $11
	rst  $38                                         ; $46a2: $ff
	rst  $38                                         ; $46a3: $ff
	rla                                              ; $46a4: $17
	rla                                              ; $46a5: $17
	adc  d                                           ; $46a6: $8a
	pop  af                                          ; $46a7: $f1
	add  c                                           ; $46a8: $81
	ld   a, a                                        ; $46a9: $7f
	rst  $38                                         ; $46aa: $ff
	ld   b, a                                        ; $46ab: $47
	ld   de, $edbe                                   ; $46ac: $11 $be $ed
	cp   d                                           ; $46af: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46b0: $cf
	db   $fc                                         ; $46b1: $fc
	jp   $1111                                       ; $46b2: $c3 $11 $11


	ld   de, $ff1f                                   ; $46b5: $11 $1f $ff
	push af                                          ; $46b8: $f5
	ld   h, c                                        ; $46b9: $61
	add  [hl]                                        ; $46ba: $86
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46bb: $cf
	rla                                              ; $46bc: $17
	jr   @+$01                                       ; $46bd: $18 $ff

	or   $91                                         ; $46bf: $f6 $91
	add  hl, de                                      ; $46c1: $19
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46c2: $cf
	db   $eb                                         ; $46c3: $eb
	sbc  e                                           ; $46c4: $9b
	rst  $38                                         ; $46c5: $ff
	call $0143                               ; $46c6: $cd $43 $01
	ld   de, $af11                                   ; $46c9: $11 $11 $af
	rst  $38                                         ; $46cc: $ff
	sbc  b                                           ; $46cd: $98
	ld   [de], a                                     ; $46ce: $12
	and  l                                           ; $46cf: $a5
	ldh  a, [c]                                      ; $46d0: $f2
	ld   d, e                                        ; $46d1: $53
	rra                                              ; $46d2: $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46d3: $cf
	cp   c                                           ; $46d4: $b9
	ld   d, c                                        ; $46d5: $51
	ld   l, e                                        ; $46d6: $6b
	sbc  $c8                                         ; $46d7: $de $c8
	sbc  h                                           ; $46d9: $9c
	db   $fd                                         ; $46da: $fd
	ld   a, [$1133]                                  ; $46db: $fa $33 $11
	ld   de, $ce11                                   ; $46de: $11 $11 $ce
	rst  $38                                         ; $46e1: $ff
	adc  c                                           ; $46e2: $89
	ld   d, $69                                      ; $46e3: $16 $69
	pop  af                                          ; $46e5: $f1
	ld   [hl], c                                     ; $46e6: $71
	dec  a                                           ; $46e7: $3d
	rst  $28                                         ; $46e8: $ef
	cp   l                                           ; $46e9: $bd
	ld   b, c                                        ; $46ea: $41
	ld   l, c                                        ; $46eb: $69
	sbc  $c8                                         ; $46ec: $de $c8
	ld   a, l                                        ; $46ee: $7d
	rst  $38                                         ; $46ef: $ff
	ld   sp, hl                                      ; $46f0: $f9
	ld   h, d                                        ; $46f1: $62
	ld   de, $1111                                   ; $46f2: $11 $11 $11
	ld   a, [hl]                                     ; $46f5: $7e
	rst  $38                                         ; $46f6: $ff
	reti                                             ; $46f7: $d9


	inc  h                                           ; $46f8: $24
	sub  [hl]                                        ; $46f9: $96
	ldh  a, [c]                                      ; $46fa: $f2
	ld   d, d                                        ; $46fb: $52
	dec  de                                          ; $46fc: $1b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46fd: $cf
	call Call_0f8_5981                               ; $46fe: $cd $81 $59
	call z, Call_0f8_59b7                            ; $4701: $cc $b7 $59
	rst  $38                                         ; $4704: $ff
	cp   $95                                         ; $4705: $fe $95
	ld   [hl+], a                                    ; $4707: $22
	ld   de, $1511                                   ; $4708: $11 $11 $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $470b: $cf
	db   $fc                                         ; $470c: $fc
	or   h                                           ; $470d: $b4
	ld   d, [hl]                                     ; $470e: $56
	sbc  a                                           ; $470f: $9f
	ld   [hl], $11                                   ; $4710: $36 $11
	adc  h                                           ; $4712: $8c
	cp   $e7                                         ; $4713: $fe $e7
	dec  h                                           ; $4715: $25
	sbc  e                                           ; $4716: $9b
	db   $db                                         ; $4717: $db
	ld   [hl], l                                     ; $4718: $75
	sbc  l                                           ; $4719: $9d
	rst  $38                                         ; $471a: $ff
	jp   hl                                          ; $471b: $e9


	ld   d, e                                        ; $471c: $53
	ld   [hl+], a                                    ; $471d: $22
	ld   hl, $1811                                   ; $471e: $21 $11 $18
	rst  $38                                         ; $4721: $ff
	db   $fc                                         ; $4722: $fc
	add  l                                           ; $4723: $85
	sbc  c                                           ; $4724: $99
	ld   a, [$1554]                                  ; $4725: $fa $54 $15
	ld   a, [hl]                                     ; $4728: $7e
	cp   $d6                                         ; $4729: $fe $d6
	ld   l, c                                        ; $472b: $69
	sbc  h                                           ; $472c: $9c
	cp   b                                           ; $472d: $b8
	ld   h, [hl]                                     ; $472e: $66
	xor  e                                           ; $472f: $ab
	rst  $38                                         ; $4730: $ff
	cp   c                                           ; $4731: $b9
	ld   h, l                                        ; $4732: $65
	ld   b, h                                        ; $4733: $44
	ld   hl, $1611                                   ; $4734: $21 $11 $16
	cp   a                                           ; $4737: $bf
	cp   e                                           ; $4738: $bb
	adc  b                                           ; $4739: $88
	call z, $a6fb                                    ; $473a: $cc $fb $a6
	ld   [hl], $69                                   ; $473d: $36 $69
	xor  d                                           ; $473f: $aa
	add  a                                           ; $4740: $87
	ld   l, b                                        ; $4741: $68
	sbc  e                                           ; $4742: $9b
	jp   z, $bb98                                    ; $4743: $ca $98 $bb

	db   $dd                                         ; $4746: $dd
	xor  d                                           ; $4747: $aa
	ld   a, b                                        ; $4748: $78
	halt                                             ; $4749: $76
	ld   d, d                                        ; $474a: $52
	ld   de, $5813                                   ; $474b: $11 $13 $58
	add  a                                           ; $474e: $87
	ld   [hl], a                                     ; $474f: $77
	xor  e                                           ; $4750: $ab
	xor  $bb                                         ; $4751: $ee $bb
	adc  c                                           ; $4753: $89
	adc  b                                           ; $4754: $88
	xor  b                                           ; $4755: $a8
	add  [hl]                                        ; $4756: $86
	ld   d, [hl]                                     ; $4757: $56
	adc  d                                           ; $4758: $8a
	xor  c                                           ; $4759: $a9
	xor  c                                           ; $475a: $a9
	xor  d                                           ; $475b: $aa
	cp   h                                           ; $475c: $bc
	res  5, c                                        ; $475d: $cb $a9
	sbc  c                                           ; $475f: $99
	ld   [hl], a                                     ; $4760: $77
	ld   d, e                                        ; $4761: $53
	ld   de, $5445                                   ; $4762: $11 $45 $54
	inc  sp                                          ; $4765: $33
	ld   [hl], $8a                                   ; $4766: $36 $8a
	call z, $bbba                                    ; $4768: $cc $ba $bb
	xor  e                                           ; $476b: $ab
	cp   e                                           ; $476c: $bb
	sbc  c                                           ; $476d: $99
	ld   [hl], a                                     ; $476e: $77
	sbc  b                                           ; $476f: $98
	adc  b                                           ; $4770: $88
	ld   [hl], a                                     ; $4771: $77
	sbc  c                                           ; $4772: $99
	xor  e                                           ; $4773: $ab
	cp   e                                           ; $4774: $bb
	xor  e                                           ; $4775: $ab
	xor  d                                           ; $4776: $aa
	add  a                                           ; $4777: $87
	ld   d, e                                        ; $4778: $53
	ld   [hl+], a                                    ; $4779: $22
	ld   [hl+], a                                    ; $477a: $22
	ld   hl, $5622                                   ; $477b: $21 $22 $56
	sbc  e                                           ; $477e: $9b
	cp   e                                           ; $477f: $bb
	xor  h                                           ; $4780: $ac
	cp   h                                           ; $4781: $bc
	call c, $98cb                                    ; $4782: $dc $cb $98
	adc  b                                           ; $4785: $88
	sbc  b                                           ; $4786: $98
	sub  a                                           ; $4787: $97
	ld   a, b                                        ; $4788: $78
	adc  c                                           ; $4789: $89
	xor  d                                           ; $478a: $aa
	xor  c                                           ; $478b: $a9
	xor  d                                           ; $478c: $aa
	xor  c                                           ; $478d: $a9
	sub  a                                           ; $478e: $97
	ld   d, e                                        ; $478f: $53
	inc  de                                          ; $4790: $13
	ld   [hl-], a                                    ; $4791: $32
	ld   [hl+], a                                    ; $4792: $22
	ld   [hl+], a                                    ; $4793: $22
	ld   d, [hl]                                     ; $4794: $56
	sbc  h                                           ; $4795: $9c
	res  5, l                                        ; $4796: $cb $ad
	call z, $badd                                    ; $4798: $cc $dd $ba
	add  a                                           ; $479b: $87
	adc  c                                           ; $479c: $89
	sbc  b                                           ; $479d: $98
	add  a                                           ; $479e: $87
	ld   h, a                                        ; $479f: $67
	adc  d                                           ; $47a0: $8a
	xor  e                                           ; $47a1: $ab
	xor  c                                           ; $47a2: $a9
	xor  d                                           ; $47a3: $aa
	sbc  c                                           ; $47a4: $99
	add  [hl]                                        ; $47a5: $86
	ld   d, e                                        ; $47a6: $53
	inc  h                                           ; $47a7: $24
	inc  sp                                          ; $47a8: $33
	ld   [hl+], a                                    ; $47a9: $22
	ld   [hl+], a                                    ; $47aa: $22
	ld   h, [hl]                                     ; $47ab: $66
	xor  e                                           ; $47ac: $ab
	res  7, l                                        ; $47ad: $cb $bd
	cp   l                                           ; $47af: $bd
	call c, $87a9                                    ; $47b0: $dc $a9 $87
	sbc  c                                           ; $47b3: $99
	adc  b                                           ; $47b4: $88
	add  a                                           ; $47b5: $87
	ld   a, b                                        ; $47b6: $78
	sbc  d                                           ; $47b7: $9a
	xor  d                                           ; $47b8: $aa
	sbc  d                                           ; $47b9: $9a
	sbc  d                                           ; $47ba: $9a
	xor  d                                           ; $47bb: $aa
	sub  a                                           ; $47bc: $97
	ld   d, e                                        ; $47bd: $53
	inc  d                                           ; $47be: $14
	ld   [hl-], a                                    ; $47bf: $32
	ld   hl, $5622                                   ; $47c0: $21 $22 $56
	sbc  h                                           ; $47c3: $9c
	call z, $bcac                                    ; $47c4: $cc $ac $bc
	call c, $97ba                                    ; $47c7: $dc $ba $97
	adc  c                                           ; $47ca: $89
	sbc  c                                           ; $47cb: $99
	sub  a                                           ; $47cc: $97
	ld   h, a                                        ; $47cd: $67
	ld   a, c                                        ; $47ce: $79
	xor  e                                           ; $47cf: $ab
	cp   d                                           ; $47d0: $ba
	xor  c                                           ; $47d1: $a9
	xor  d                                           ; $47d2: $aa
	sbc  c                                           ; $47d3: $99
	ld   [hl], l                                     ; $47d4: $75
	ld   hl, $2333                                   ; $47d5: $21 $33 $23
	ld   [hl+], a                                    ; $47d8: $22
	dec  h                                           ; $47d9: $25
	ld   l, c                                        ; $47da: $69
	set  1, e                                        ; $47db: $cb $cb
	cp   h                                           ; $47dd: $bc
	cp   l                                           ; $47de: $bd
	call c, Call_0f8_78b9                            ; $47df: $dc $b9 $78
	adc  c                                           ; $47e2: $89
	adc  c                                           ; $47e3: $89
	halt                                             ; $47e4: $76
	ld   [hl], a                                     ; $47e5: $77
	adc  c                                           ; $47e6: $89
	cp   d                                           ; $47e7: $ba
	xor  d                                           ; $47e8: $aa
	xor  d                                           ; $47e9: $aa
	xor  d                                           ; $47ea: $aa
	cp   d                                           ; $47eb: $ba
	add  [hl]                                        ; $47ec: $86
	ld   [hl-], a                                    ; $47ed: $32
	inc  de                                          ; $47ee: $13
	inc  sp                                          ; $47ef: $33
	ld   hl, $6722                                   ; $47f0: $21 $22 $67
	xor  l                                           ; $47f3: $ad
	res  5, l                                        ; $47f4: $cb $ad
	call z, $cbdc                                    ; $47f6: $cc $dc $cb
	sub  a                                           ; $47f9: $97
	ld   a, b                                        ; $47fa: $78
	adc  b                                           ; $47fb: $88
	add  a                                           ; $47fc: $87
	ld   h, a                                        ; $47fd: $67
	ld   a, b                                        ; $47fe: $78
	xor  e                                           ; $47ff: $ab
	cp   e                                           ; $4800: $bb
	cp   d                                           ; $4801: $ba
	xor  e                                           ; $4802: $ab
	xor  d                                           ; $4803: $aa
	sbc  b                                           ; $4804: $98
	ld   d, e                                        ; $4805: $53
	ld   hl, $3324                                   ; $4806: $21 $24 $33
	inc  hl                                          ; $4809: $23
	dec  h                                           ; $480a: $25
	adc  b                                           ; $480b: $88
	call z, $cbdb                                    ; $480c: $cc $db $cb
	cp   l                                           ; $480f: $bd
	db   $db                                         ; $4810: $db
	xor  d                                           ; $4811: $aa
	ld   h, a                                        ; $4812: $67
	ld   [hl], a                                     ; $4813: $77
	adc  b                                           ; $4814: $88
	sub  a                                           ; $4815: $97
	add  a                                           ; $4816: $87
	adc  c                                           ; $4817: $89
	cp   h                                           ; $4818: $bc
	cp   e                                           ; $4819: $bb
	xor  c                                           ; $481a: $a9
	xor  c                                           ; $481b: $a9
	sbc  c                                           ; $481c: $99
	add  [hl]                                        ; $481d: $86
	ld   b, d                                        ; $481e: $42
	ld   de, $3343                                   ; $481f: $11 $43 $33
	inc  sp                                          ; $4822: $33
	ld   b, a                                        ; $4823: $47
	adc  h                                           ; $4824: $8c
	call $bacc                                       ; $4825: $cd $cc $ba
	call z, $b7cb                                    ; $4828: $cc $cb $b7
	ld   [hl], a                                     ; $482b: $77
	ld   [hl], a                                     ; $482c: $77
	adc  c                                           ; $482d: $89
	ld   a, b                                        ; $482e: $78
	adc  b                                           ; $482f: $88
	adc  d                                           ; $4830: $8a
	cp   e                                           ; $4831: $bb
	cp   d                                           ; $4832: $ba
	xor  c                                           ; $4833: $a9
	xor  c                                           ; $4834: $a9
	sbc  c                                           ; $4835: $99
	halt                                             ; $4836: $76
	ld   b, e                                        ; $4837: $43
	ld   de, $3333                                   ; $4838: $11 $33 $33
	inc  hl                                          ; $483b: $23
	ld   [hl], $7a                                   ; $483c: $36 $7a
	db   $ec                                         ; $483e: $ec
	call c, $bccb                                    ; $483f: $dc $cb $bc
	res  7, b                                        ; $4842: $cb $b8
	ld   [hl], a                                     ; $4844: $77
	ld   h, a                                        ; $4845: $67
	ld   a, c                                        ; $4846: $79
	adc  b                                           ; $4847: $88
	add  a                                           ; $4848: $87
	adc  c                                           ; $4849: $89
	sbc  d                                           ; $484a: $9a
	xor  d                                           ; $484b: $aa
	cp   c                                           ; $484c: $b9
	sbc  c                                           ; $484d: $99
	sbc  b                                           ; $484e: $98
	ld   [hl], a                                     ; $484f: $77
	ld   h, h                                        ; $4850: $64
	ld   hl, $4612                                   ; $4851: $21 $12 $46
	ld   b, h                                        ; $4854: $44
	ld   b, h                                        ; $4855: $44
	add  a                                           ; $4856: $87
	sbc  $cf                                         ; $4857: $de $cf
	jp   z, $aaa8                                    ; $4859: $ca $a8 $aa

	sbc  d                                           ; $485c: $9a
	ld   l, b                                        ; $485d: $68
	ld   [hl], l                                     ; $485e: $75
	sub  a                                           ; $485f: $97
	cp   e                                           ; $4860: $bb
	xor  l                                           ; $4861: $ad
	sbc  d                                           ; $4862: $9a
	xor  b                                           ; $4863: $a8
	cp   d                                           ; $4864: $ba
	cp   e                                           ; $4865: $bb
	adc  b                                           ; $4866: $88
	ld   d, l                                        ; $4867: $55
	ld   d, e                                        ; $4868: $53
	ld   d, e                                        ; $4869: $53
	ld   de, $6711                                   ; $486a: $11 $11 $67
	rst  $38                                         ; $486d: $ff
	rst  JumpTable                                         ; $486e: $df
	ld   e, e                                        ; $486f: $5b
	ld   a, h                                        ; $4870: $7c
	ld   sp, hl                                      ; $4871: $f9
	or   l                                           ; $4872: $b5
	inc  sp                                          ; $4873: $33
	ld   b, [hl]                                     ; $4874: $46
	cp   e                                           ; $4875: $bb
	db   $db                                         ; $4876: $db
	adc  c                                           ; $4877: $89
	ld   e, c                                        ; $4878: $59
	sbc  d                                           ; $4879: $9a
	res  3, b                                        ; $487a: $cb $98
	ld   a, b                                        ; $487c: $78
	sbc  e                                           ; $487d: $9b
	db   $db                                         ; $487e: $db
	xor  b                                           ; $487f: $a8
	ld   h, l                                        ; $4880: $65
	ld   d, l                                        ; $4881: $55
	ld   h, [hl]                                     ; $4882: $66
	ld   b, d                                        ; $4883: $42
	ld   de, $bd13                                   ; $4884: $11 $13 $bd
	rst  $38                                         ; $4887: $ff
	ret  z                                           ; $4888: $c8

	dec  h                                           ; $4889: $25
	ld   e, h                                        ; $488a: $5c
	jp   c, $2496                                    ; $488b: $da $96 $24

	adc  b                                           ; $488e: $88
	db   $ed                                         ; $488f: $ed
	rst  $10                                         ; $4890: $d7
	ld   h, h                                        ; $4891: $64
	ld   c, b                                        ; $4892: $48
	call $78dc                                       ; $4893: $cd $dc $78
	ld   a, b                                        ; $4896: $78
	sbc  e                                           ; $4897: $9b
	jp   z, Jump_0f8_5587                            ; $4898: $ca $87 $55

	ld   [hl], a                                     ; $489b: $77
	ld   [hl], a                                     ; $489c: $77
	ld   h, e                                        ; $489d: $63
	ld   de, $7b11                                   ; $489e: $11 $11 $7b
	rst  $38                                         ; $48a1: $ff
	db   $db                                         ; $48a2: $db
	ld   [hl], e                                     ; $48a3: $73
	ld   b, [hl]                                     ; $48a4: $46
	res  5, c                                        ; $48a5: $cb $a9
	ld   [hl], d                                     ; $48a7: $72
	ld   [hl], a                                     ; $48a8: $77
	adc  [hl]                                        ; $48a9: $8e
	db   $db                                         ; $48aa: $db
	sub  a                                           ; $48ab: $97
	ld   b, l                                        ; $48ac: $45
	ld   a, d                                        ; $48ad: $7a
	cp   h                                           ; $48ae: $bc
	ret  c                                           ; $48af: $d8

	add  a                                           ; $48b0: $87
	ld   [hl], a                                     ; $48b1: $77
	cp   d                                           ; $48b2: $ba
	xor  d                                           ; $48b3: $aa
	sub  [hl]                                        ; $48b4: $96
	ld   h, [hl]                                     ; $48b5: $66
	ld   [hl], a                                     ; $48b6: $77
	sub  a                                           ; $48b7: $97
	ld   d, h                                        ; $48b8: $54
	ld   de, $ab11                                   ; $48b9: $11 $11 $ab
	rst  $38                                         ; $48bc: $ff
	bit  0, c                                        ; $48bd: $cb $41
	scf                                              ; $48bf: $37
	xor  e                                           ; $48c0: $ab
	cp   e                                           ; $48c1: $bb
	ld   [hl], h                                     ; $48c2: $74
	ld   [hl], l                                     ; $48c3: $75
	sbc  l                                           ; $48c4: $9d
	call c, $35a7                                    ; $48c5: $dc $a7 $35
	ld   l, c                                        ; $48c8: $69
	cp   [hl]                                        ; $48c9: $be
	jp   c, Jump_0f8_6898                            ; $48ca: $da $98 $68

	cp   d                                           ; $48cd: $ba
	cp   e                                           ; $48ce: $bb
	sub  a                                           ; $48cf: $97
	ld   h, l                                        ; $48d0: $65
	ld   h, a                                        ; $48d1: $67
	add  a                                           ; $48d2: $87
	ld   h, h                                        ; $48d3: $64
	ld   de, $8c11                                   ; $48d4: $11 $11 $8c
	rst  $38                                         ; $48d7: $ff
	call c, $2551                                    ; $48d8: $dc $51 $25
	adc  h                                           ; $48db: $8c
	db   $dd                                         ; $48dc: $dd
	and  l                                           ; $48dd: $a5
	ld   h, h                                        ; $48de: $64
	ld   l, e                                        ; $48df: $6b
	res  7, c                                        ; $48e0: $cb $b9
	ld   d, l                                        ; $48e2: $55
	ld   d, a                                        ; $48e3: $57
	xor  l                                           ; $48e4: $ad
	db   $dd                                         ; $48e5: $dd
	cp   c                                           ; $48e6: $b9
	ld   h, l                                        ; $48e7: $65
	ld   [hl], a                                     ; $48e8: $77
	xor  e                                           ; $48e9: $ab
	xor  b                                           ; $48ea: $a8
	ld   [hl], l                                     ; $48eb: $75
	ld   d, [hl]                                     ; $48ec: $56
	ld   a, b                                        ; $48ed: $78
	adc  b                                           ; $48ee: $88
	ld   d, d                                        ; $48ef: $52
	ld   de, $9f17                                   ; $48f0: $11 $17 $9f
	cp   $d7                                         ; $48f3: $fe $d7
	ld   hl, $bc36                                   ; $48f5: $21 $36 $bc
	db   $dd                                         ; $48f8: $dd
	ld   h, [hl]                                     ; $48f9: $66
	ld   b, h                                        ; $48fa: $44
	adc  e                                           ; $48fb: $8b
	cp   h                                           ; $48fc: $bc
	or   a                                           ; $48fd: $b7
	ld   h, h                                        ; $48fe: $64
	ld   l, b                                        ; $48ff: $68
	xor  h                                           ; $4900: $ac
	call c, Call_0f8_56c8                            ; $4901: $dc $c8 $56
	ld   l, b                                        ; $4904: $68
	xor  e                                           ; $4905: $ab
	sbc  c                                           ; $4906: $99
	halt                                             ; $4907: $76
	ld   d, [hl]                                     ; $4908: $56
	ld   [hl], a                                     ; $4909: $77
	sbc  b                                           ; $490a: $98
	ld   h, h                                        ; $490b: $64
	ld   de, $9f15                                   ; $490c: $11 $15 $9f
	rst  $38                                         ; $490f: $ff
	ld   hl, sp+$21                                  ; $4910: $f8 $21
	dec  d                                           ; $4912: $15
	sbc  h                                           ; $4913: $9c
	xor  $88                                         ; $4914: $ee $88
	ld   b, e                                        ; $4916: $43
	ld   a, c                                        ; $4917: $79
	xor  l                                           ; $4918: $ad
	jp   c, Jump_0f8_5685                            ; $4919: $da $85 $56

	adc  h                                           ; $491c: $8c
	db   $dd                                         ; $491d: $dd
	reti                                             ; $491e: $d9


	ld   h, [hl]                                     ; $491f: $66
	ld   b, [hl]                                     ; $4920: $46
	adc  d                                           ; $4921: $8a
	sbc  d                                           ; $4922: $9a
	sub  a                                           ; $4923: $97
	ld   h, [hl]                                     ; $4924: $66
	ld   [hl], a                                     ; $4925: $77
	adc  b                                           ; $4926: $88
	halt                                             ; $4927: $76
	ld   b, c                                        ; $4928: $41
	ld   de, $df48                                   ; $4929: $11 $48 $df
	rst  $38                                         ; $492c: $ff
	or   h                                           ; $492d: $b4
	ld   de, $ab36                                   ; $492e: $11 $36 $ab
	db   $eb                                         ; $4931: $eb
	and  a                                           ; $4932: $a7
	ld   d, a                                        ; $4933: $57
	adc  b                                           ; $4934: $88
	cp   l                                           ; $4935: $bd
	xor  d                                           ; $4936: $aa
	halt                                             ; $4937: $76
	ld   l, b                                        ; $4938: $68
	xor  e                                           ; $4939: $ab
	db   $dd                                         ; $493a: $dd
	cp   b                                           ; $493b: $b8
	ld   [hl], l                                     ; $493c: $75
	ld   d, a                                        ; $493d: $57
	adc  b                                           ; $493e: $88
	cp   c                                           ; $493f: $b9
	adc  b                                           ; $4940: $88
	ld   h, [hl]                                     ; $4941: $66
	ld   [hl], a                                     ; $4942: $77
	adc  b                                           ; $4943: $88
	halt                                             ; $4944: $76
	ld   b, d                                        ; $4945: $42
	ld   de, $9f17                                   ; $4946: $11 $17 $9f
	cp   $f7                                         ; $4949: $fe $f7
	ld   sp, $9a24                                   ; $494b: $31 $24 $9a
	db   $dd                                         ; $494e: $dd
	cp   e                                           ; $494f: $bb
	ld   h, [hl]                                     ; $4950: $66
	ld   [hl], a                                     ; $4951: $77
	adc  e                                           ; $4952: $8b
	sbc  d                                           ; $4953: $9a
	sub  a                                           ; $4954: $97
	ld   [hl], a                                     ; $4955: $77
	adc  c                                           ; $4956: $89
	cp   h                                           ; $4957: $bc
	reti                                             ; $4958: $d9


	add  a                                           ; $4959: $87
	ld   d, [hl]                                     ; $495a: $56
	ld   a, b                                        ; $495b: $78
	sbc  d                                           ; $495c: $9a
	sbc  c                                           ; $495d: $99
	ld   [hl], a                                     ; $495e: $77
	halt                                             ; $495f: $76
	ld   [hl], a                                     ; $4960: $77
	ld   [hl], a                                     ; $4961: $77
	ld   h, h                                        ; $4962: $64
	ld   hl, $7b13                                   ; $4963: $21 $13 $7b
	rst  $38                                         ; $4966: $ff
	db   $fd                                         ; $4967: $fd
	ld   h, e                                        ; $4968: $63
	ld   [de], a                                     ; $4969: $12
	ld   e, b                                        ; $496a: $58
	sbc  [hl]                                        ; $496b: $9e
	db   $db                                         ; $496c: $db
	or   [hl]                                        ; $496d: $b6
	ld   h, a                                        ; $496e: $67
	ld   l, b                                        ; $496f: $68
	xor  c                                           ; $4970: $a9
	cp   d                                           ; $4971: $ba
	adc  b                                           ; $4972: $88
	adc  b                                           ; $4973: $88
	xor  d                                           ; $4974: $aa
	xor  h                                           ; $4975: $ac
	sbc  b                                           ; $4976: $98
	halt                                             ; $4977: $76
	ld   [hl], a                                     ; $4978: $77
	ld   a, d                                        ; $4979: $7a
	sbc  b                                           ; $497a: $98
	sub  a                                           ; $497b: $97
	ld   [hl], a                                     ; $497c: $77
	ld   h, a                                        ; $497d: $67
	ld   [hl], a                                     ; $497e: $77
	ld   [hl], l                                     ; $497f: $75
	ld   b, d                                        ; $4980: $42
	ld   de, $df57                                   ; $4981: $11 $57 $df
	rst  $38                                         ; $4984: $ff
	add  $31                                         ; $4985: $c6 $31
	dec  h                                           ; $4987: $25
	ld   a, e                                        ; $4988: $7b
	db   $ec                                         ; $4989: $ec
	db   $db                                         ; $498a: $db
	halt                                             ; $498b: $76
	ld   h, l                                        ; $498c: $65
	ld   a, c                                        ; $498d: $79
	xor  h                                           ; $498e: $ac
	sbc  d                                           ; $498f: $9a
	sub  a                                           ; $4990: $97
	adc  d                                           ; $4991: $8a
	sbc  d                                           ; $4992: $9a
	cp   c                                           ; $4993: $b9
	add  a                                           ; $4994: $87
	ld   h, [hl]                                     ; $4995: $66
	ld   h, a                                        ; $4996: $67
	sbc  c                                           ; $4997: $99
	xor  c                                           ; $4998: $a9
	add  a                                           ; $4999: $87
	halt                                             ; $499a: $76
	ld   [hl], a                                     ; $499b: $77
	ld   h, a                                        ; $499c: $67
	ld   h, h                                        ; $499d: $64
	ld   sp, $6b15                                   ; $499e: $31 $15 $6b
	cp   $fc                                         ; $49a1: $fe $fc
	ld   [hl], h                                     ; $49a3: $74
	ld   [hl+], a                                    ; $49a4: $22
	ld   d, a                                        ; $49a5: $57
	sbc  a                                           ; $49a6: $9f
	sbc  $b7                                         ; $49a7: $de $b7
	ld   h, l                                        ; $49a9: $65
	ld   d, [hl]                                     ; $49aa: $56
	adc  d                                           ; $49ab: $8a
	cp   d                                           ; $49ac: $ba
	cp   d                                           ; $49ad: $ba
	adc  b                                           ; $49ae: $88
	adc  b                                           ; $49af: $88
	xor  d                                           ; $49b0: $aa
	sbc  d                                           ; $49b1: $9a
	ld   [hl], a                                     ; $49b2: $77
	ld   h, [hl]                                     ; $49b3: $66
	ld   a, c                                        ; $49b4: $79
	sbc  c                                           ; $49b5: $99
	sbc  b                                           ; $49b6: $98
	add  a                                           ; $49b7: $87
	ld   h, a                                        ; $49b8: $67
	ld   [hl], a                                     ; $49b9: $77
	halt                                             ; $49ba: $76
	ld   d, e                                        ; $49bb: $53
	ld   de, $af47                                   ; $49bc: $11 $47 $af
	rst  $28                                         ; $49bf: $ef
	ret  c                                           ; $49c0: $d8

	ld   d, d                                        ; $49c1: $52
	inc  h                                           ; $49c2: $24
	ld   l, c                                        ; $49c3: $69
	db   $ed                                         ; $49c4: $ed
	db   $ec                                         ; $49c5: $ec
	add  a                                           ; $49c6: $87
	ld   d, l                                        ; $49c7: $55
	ld   e, b                                        ; $49c8: $58
	sbc  e                                           ; $49c9: $9b
	xor  e                                           ; $49ca: $ab
	xor  c                                           ; $49cb: $a9
	adc  b                                           ; $49cc: $88
	adc  c                                           ; $49cd: $89
	xor  c                                           ; $49ce: $a9
	sbc  b                                           ; $49cf: $98
	halt                                             ; $49d0: $76
	ld   h, [hl]                                     ; $49d1: $66
	ld   a, b                                        ; $49d2: $78
	sbc  d                                           ; $49d3: $9a
	sbc  c                                           ; $49d4: $99
	add  a                                           ; $49d5: $87
	ld   [hl], a                                     ; $49d6: $77
	ld   [hl], a                                     ; $49d7: $77
	halt                                             ; $49d8: $76
	ld   d, h                                        ; $49d9: $54
	ld   hl, $9f27                                   ; $49da: $21 $27 $9f
	cp   $e9                                         ; $49dd: $fe $e9
	ld   d, d                                        ; $49df: $52
	inc  de                                          ; $49e0: $13
	ld   h, a                                        ; $49e1: $67
	sbc  $ce                                         ; $49e2: $de $ce
	add  a                                           ; $49e4: $87
	ld   d, h                                        ; $49e5: $54
	ld   b, a                                        ; $49e6: $47
	adc  e                                           ; $49e7: $8b
	cp   e                                           ; $49e8: $bb
	cp   b                                           ; $49e9: $b8
	adc  b                                           ; $49ea: $88
	ld   a, b                                        ; $49eb: $78
	sbc  c                                           ; $49ec: $99
	sbc  b                                           ; $49ed: $98
	add  a                                           ; $49ee: $87
	ld   h, [hl]                                     ; $49ef: $66
	ld   [hl], a                                     ; $49f0: $77
	sbc  d                                           ; $49f1: $9a
	xor  d                                           ; $49f2: $aa
	sbc  b                                           ; $49f3: $98
	add  a                                           ; $49f4: $87
	ld   [hl], a                                     ; $49f5: $77
	ld   [hl], a                                     ; $49f6: $77
	halt                                             ; $49f7: $76
	ld   d, e                                        ; $49f8: $53
	ld   de, $cf57                                   ; $49f9: $11 $57 $cf
	rst  $28                                         ; $49fc: $ef
	or   a                                           ; $49fd: $b7
	ld   b, d                                        ; $49fe: $42
	dec  [hl]                                        ; $49ff: $35
	ld   a, d                                        ; $4a00: $7a
	db   $dd                                         ; $4a01: $dd
	jp   c, Jump_0f8_4476                            ; $4a02: $da $76 $44

	ld   d, a                                        ; $4a05: $57
	xor  h                                           ; $4a06: $ac
	cp   e                                           ; $4a07: $bb
	xor  c                                           ; $4a08: $a9
	ld   [hl], a                                     ; $4a09: $77
	ld   a, b                                        ; $4a0a: $78
	sbc  d                                           ; $4a0b: $9a
	xor  c                                           ; $4a0c: $a9
	add  [hl]                                        ; $4a0d: $86
	ld   h, [hl]                                     ; $4a0e: $66
	ld   a, b                                        ; $4a0f: $78
	sbc  d                                           ; $4a10: $9a
	cp   c                                           ; $4a11: $b9
	sbc  b                                           ; $4a12: $98
	ld   [hl], a                                     ; $4a13: $77
	ld   [hl], a                                     ; $4a14: $77
	adc  b                                           ; $4a15: $88
	ld   [hl], a                                     ; $4a16: $77
	ld   d, h                                        ; $4a17: $54
	ld   hl, $8e26                                   ; $4a18: $21 $26 $8e
	cp   $e9                                         ; $4a1b: $fe $e9
	ld   h, e                                        ; $4a1d: $63
	inc  hl                                          ; $4a1e: $23
	ld   h, a                                        ; $4a1f: $67
	call $87dd                                       ; $4a20: $cd $dd $87
	ld   d, h                                        ; $4a23: $54
	ld   b, [hl]                                     ; $4a24: $46
	adc  d                                           ; $4a25: $8a
	cp   e                                           ; $4a26: $bb
	ret                                              ; $4a27: $c9


	sub  a                                           ; $4a28: $97
	ld   [hl], a                                     ; $4a29: $77
	adc  c                                           ; $4a2a: $89
	sbc  c                                           ; $4a2b: $99
	sub  a                                           ; $4a2c: $97
	ld   h, [hl]                                     ; $4a2d: $66
	ld   h, a                                        ; $4a2e: $67
	adc  c                                           ; $4a2f: $89
	sbc  d                                           ; $4a30: $9a
	xor  c                                           ; $4a31: $a9
	sbc  b                                           ; $4a32: $98
	add  a                                           ; $4a33: $87
	ld   [hl], a                                     ; $4a34: $77
	ld   [hl], a                                     ; $4a35: $77
	ld   [hl], l                                     ; $4a36: $75
	ld   b, d                                        ; $4a37: $42
	inc  de                                          ; $4a38: $13
	ld   l, c                                        ; $4a39: $69
	xor  $ee                                         ; $4a3a: $ee $ee
	add  [hl]                                        ; $4a3c: $86
	ld   b, d                                        ; $4a3d: $42
	ld   b, [hl]                                     ; $4a3e: $46
	adc  e                                           ; $4a3f: $8b
	call z, Call_0f8_75c8                            ; $4a40: $cc $c8 $75
	ld   b, l                                        ; $4a43: $45
	ld   l, b                                        ; $4a44: $68
	xor  d                                           ; $4a45: $aa
	res  3, c                                        ; $4a46: $cb $99
	ld   [hl], a                                     ; $4a48: $77
	adc  c                                           ; $4a49: $89
	sbc  d                                           ; $4a4a: $9a
	adc  c                                           ; $4a4b: $89
	halt                                             ; $4a4c: $76
	ld   h, [hl]                                     ; $4a4d: $66
	ld   a, b                                        ; $4a4e: $78
	adc  d                                           ; $4a4f: $8a
	cp   e                                           ; $4a50: $bb
	xor  c                                           ; $4a51: $a9
	adc  b                                           ; $4a52: $88
	ld   [hl], a                                     ; $4a53: $77
	halt                                             ; $4a54: $76
	ld   [hl], a                                     ; $4a55: $77
	ld   h, l                                        ; $4a56: $65
	ld   sp, $8d26                                   ; $4a57: $31 $26 $8d
	cp   $e9                                         ; $4a5a: $fe $e9
	ld   [hl], h                                     ; $4a5c: $74
	inc  [hl]                                        ; $4a5d: $34
	ld   d, a                                        ; $4a5e: $57
	cp   h                                           ; $4a5f: $bc
	db   $dd                                         ; $4a60: $dd
	xor  b                                           ; $4a61: $a8
	ld   h, h                                        ; $4a62: $64
	ld   b, l                                        ; $4a63: $45
	ld   a, d                                        ; $4a64: $7a
	xor  h                                           ; $4a65: $ac
	ret                                              ; $4a66: $c9


	xor  b                                           ; $4a67: $a8
	adc  b                                           ; $4a68: $88
	sbc  c                                           ; $4a69: $99
	sbc  b                                           ; $4a6a: $98
	sub  a                                           ; $4a6b: $97
	ld   h, [hl]                                     ; $4a6c: $66
	ld   h, a                                        ; $4a6d: $67
	adc  c                                           ; $4a6e: $89
	xor  d                                           ; $4a6f: $aa
	cp   d                                           ; $4a70: $ba
	sbc  c                                           ; $4a71: $99
	add  a                                           ; $4a72: $87
	ld   [hl], a                                     ; $4a73: $77
	ld   [hl], a                                     ; $4a74: $77
	ld   h, l                                        ; $4a75: $65
	ld   b, d                                        ; $4a76: $42
	dec  d                                           ; $4a77: $15
	ld   a, d                                        ; $4a78: $7a
	db   $fd                                         ; $4a79: $fd
	db   $eb                                         ; $4a7a: $eb
	add  [hl]                                        ; $4a7b: $86
	inc  sp                                          ; $4a7c: $33
	ld   b, [hl]                                     ; $4a7d: $46
	sbc  h                                           ; $4a7e: $9c
	cp   l                                           ; $4a7f: $bd
	xor  c                                           ; $4a80: $a9
	ld   [hl], l                                     ; $4a81: $75
	ld   d, h                                        ; $4a82: $54
	ld   l, b                                        ; $4a83: $68
	xor  d                                           ; $4a84: $aa
	cp   d                                           ; $4a85: $ba
	xor  c                                           ; $4a86: $a9
	adc  b                                           ; $4a87: $88
	adc  c                                           ; $4a88: $89
	xor  c                                           ; $4a89: $a9
	adc  b                                           ; $4a8a: $88
	ld   h, [hl]                                     ; $4a8b: $66
	ld   h, [hl]                                     ; $4a8c: $66
	adc  c                                           ; $4a8d: $89
	sbc  e                                           ; $4a8e: $9b
	xor  d                                           ; $4a8f: $aa
	sbc  b                                           ; $4a90: $98
	add  a                                           ; $4a91: $87
	ld   [hl], a                                     ; $4a92: $77
	ld   [hl], a                                     ; $4a93: $77
	halt                                             ; $4a94: $76
	ld   b, d                                        ; $4a95: $42
	inc  d                                           ; $4a96: $14
	ld   a, d                                        ; $4a97: $7a
	db   $dd                                         ; $4a98: $dd
	call c, $3386                                    ; $4a99: $dc $86 $33
	ld   b, l                                        ; $4a9c: $45
	adc  h                                           ; $4a9d: $8c
	call z, $85b9                                    ; $4a9e: $cc $b9 $85
	ld   d, l                                        ; $4aa1: $55
	ld   h, a                                        ; $4aa2: $67
	sbc  c                                           ; $4aa3: $99
	xor  d                                           ; $4aa4: $aa
	sbc  b                                           ; $4aa5: $98
	ld   a, b                                        ; $4aa6: $78
	sbc  c                                           ; $4aa7: $99
	sbc  c                                           ; $4aa8: $99
	sbc  c                                           ; $4aa9: $99
	halt                                             ; $4aaa: $76
	ld   h, [hl]                                     ; $4aab: $66
	ld   a, b                                        ; $4aac: $78
	sbc  d                                           ; $4aad: $9a
	xor  d                                           ; $4aae: $aa
	xor  c                                           ; $4aaf: $a9
	ld   [hl], a                                     ; $4ab0: $77
	ld   [hl], a                                     ; $4ab1: $77
	adc  b                                           ; $4ab2: $88
	sbc  c                                           ; $4ab3: $99
	sbc  b                                           ; $4ab4: $98
	halt                                             ; $4ab5: $76
	ld   b, e                                        ; $4ab6: $43
	inc  h                                           ; $4ab7: $24
	ld   a, c                                        ; $4ab8: $79
	cp   l                                           ; $4ab9: $bd
	res  0, a                                        ; $4aba: $cb $87
	ld   d, h                                        ; $4abc: $54
	ld   d, [hl]                                     ; $4abd: $56
	adc  d                                           ; $4abe: $8a
	xor  d                                           ; $4abf: $aa
	xor  b                                           ; $4ac0: $a8
	add  [hl]                                        ; $4ac1: $86
	ld   h, [hl]                                     ; $4ac2: $66
	ld   l, b                                        ; $4ac3: $68
	adc  d                                           ; $4ac4: $8a
	sbc  d                                           ; $4ac5: $9a
	adc  c                                           ; $4ac6: $89
	adc  b                                           ; $4ac7: $88
	sbc  b                                           ; $4ac8: $98
	sbc  b                                           ; $4ac9: $98
	sub  a                                           ; $4aca: $97
	halt                                             ; $4acb: $76
	ld   h, [hl]                                     ; $4acc: $66
	ld   a, c                                        ; $4acd: $79
	sbc  d                                           ; $4ace: $9a
	xor  c                                           ; $4acf: $a9
	sbc  b                                           ; $4ad0: $98
	ld   [hl], a                                     ; $4ad1: $77
	ld   h, a                                        ; $4ad2: $67
	adc  b                                           ; $4ad3: $88
	sbc  d                                           ; $4ad4: $9a
	sbc  b                                           ; $4ad5: $98
	add  a                                           ; $4ad6: $87
	ld   [hl], a                                     ; $4ad7: $77
	ld   a, b                                        ; $4ad8: $78
	sbc  b                                           ; $4ad9: $98
	adc  b                                           ; $4ada: $88
	sbc  b                                           ; $4adb: $98
	add  a                                           ; $4adc: $87
	adc  b                                           ; $4add: $88
	adc  c                                           ; $4ade: $89
	add  a                                           ; $4adf: $87
	ld   h, l                                        ; $4ae0: $65
	ld   b, h                                        ; $4ae1: $44
	ld   h, a                                        ; $4ae2: $67
	xor  e                                           ; $4ae3: $ab
	res  3, c                                        ; $4ae4: $cb $99
	ld   h, l                                        ; $4ae6: $65
	ld   d, l                                        ; $4ae7: $55
	ld   a, b                                        ; $4ae8: $78
	xor  d                                           ; $4ae9: $aa
	cp   d                                           ; $4aea: $ba
	sub  a                                           ; $4aeb: $97
	halt                                             ; $4aec: $76
	ld   h, a                                        ; $4aed: $67
	adc  c                                           ; $4aee: $89
	xor  d                                           ; $4aef: $aa
	sbc  b                                           ; $4af0: $98
	add  a                                           ; $4af1: $87
	ld   [hl], a                                     ; $4af2: $77
	adc  c                                           ; $4af3: $89
	adc  c                                           ; $4af4: $89
	add  a                                           ; $4af5: $87
	ld   [hl], a                                     ; $4af6: $77
	ld   [hl], a                                     ; $4af7: $77
	ld   a, c                                        ; $4af8: $79
	adc  c                                           ; $4af9: $89
	sbc  b                                           ; $4afa: $98
	add  a                                           ; $4afb: $87
	ld   [hl], a                                     ; $4afc: $77
	ld   a, b                                        ; $4afd: $78
	sbc  b                                           ; $4afe: $98
	sbc  b                                           ; $4aff: $98
	sbc  b                                           ; $4b00: $98
	ld   [hl], a                                     ; $4b01: $77
	ld   [hl], a                                     ; $4b02: $77
	adc  b                                           ; $4b03: $88
	sbc  b                                           ; $4b04: $98
	sbc  b                                           ; $4b05: $98
	adc  b                                           ; $4b06: $88
	ld   [hl], a                                     ; $4b07: $77
	adc  b                                           ; $4b08: $88
	adc  b                                           ; $4b09: $88
	adc  b                                           ; $4b0a: $88
	add  a                                           ; $4b0b: $87
	ld   [hl], a                                     ; $4b0c: $77
	ld   a, b                                        ; $4b0d: $78
	adc  b                                           ; $4b0e: $88
	sbc  c                                           ; $4b0f: $99
	adc  b                                           ; $4b10: $88
	add  a                                           ; $4b11: $87
	adc  b                                           ; $4b12: $88
	adc  b                                           ; $4b13: $88
	sbc  c                                           ; $4b14: $99
	sbc  b                                           ; $4b15: $98
	adc  b                                           ; $4b16: $88
	adc  b                                           ; $4b17: $88
	adc  b                                           ; $4b18: $88
	adc  c                                           ; $4b19: $89
	sbc  c                                           ; $4b1a: $99
	adc  b                                           ; $4b1b: $88
	adc  b                                           ; $4b1c: $88
	adc  b                                           ; $4b1d: $88
	adc  b                                           ; $4b1e: $88
	adc  b                                           ; $4b1f: $88
	adc  b                                           ; $4b20: $88
	adc  b                                           ; $4b21: $88
	ld   [hl], a                                     ; $4b22: $77
	adc  b                                           ; $4b23: $88
	adc  b                                           ; $4b24: $88
	sbc  b                                           ; $4b25: $98
	adc  b                                           ; $4b26: $88
	adc  b                                           ; $4b27: $88
	adc  b                                           ; $4b28: $88
	adc  b                                           ; $4b29: $88
	adc  b                                           ; $4b2a: $88
	adc  b                                           ; $4b2b: $88
	adc  b                                           ; $4b2c: $88
	adc  b                                           ; $4b2d: $88
	adc  b                                           ; $4b2e: $88
	adc  b                                           ; $4b2f: $88
	adc  b                                           ; $4b30: $88
	adc  b                                           ; $4b31: $88
	adc  b                                           ; $4b32: $88
	adc  b                                           ; $4b33: $88
	adc  b                                           ; $4b34: $88
	adc  b                                           ; $4b35: $88
	adc  b                                           ; $4b36: $88
	adc  b                                           ; $4b37: $88
	adc  b                                           ; $4b38: $88
	adc  b                                           ; $4b39: $88
	adc  b                                           ; $4b3a: $88
	adc  b                                           ; $4b3b: $88
	adc  b                                           ; $4b3c: $88
	adc  b                                           ; $4b3d: $88
	adc  b                                           ; $4b3e: $88
	adc  b                                           ; $4b3f: $88
	adc  b                                           ; $4b40: $88
	adc  b                                           ; $4b41: $88
	adc  b                                           ; $4b42: $88
	adc  b                                           ; $4b43: $88
	adc  b                                           ; $4b44: $88
	adc  b                                           ; $4b45: $88
	adc  b                                           ; $4b46: $88
	adc  b                                           ; $4b47: $88
	adc  b                                           ; $4b48: $88
	adc  b                                           ; $4b49: $88
	adc  b                                           ; $4b4a: $88
	adc  b                                           ; $4b4b: $88
	adc  b                                           ; $4b4c: $88
	adc  b                                           ; $4b4d: $88
	adc  b                                           ; $4b4e: $88
	adc  b                                           ; $4b4f: $88
	adc  b                                           ; $4b50: $88
	adc  b                                           ; $4b51: $88
	adc  b                                           ; $4b52: $88
	adc  b                                           ; $4b53: $88
	adc  b                                           ; $4b54: $88
	adc  b                                           ; $4b55: $88
	adc  b                                           ; $4b56: $88
	adc  b                                           ; $4b57: $88
	adc  b                                           ; $4b58: $88
	adc  b                                           ; $4b59: $88
	adc  b                                           ; $4b5a: $88
	adc  b                                           ; $4b5b: $88
	adc  b                                           ; $4b5c: $88
	adc  b                                           ; $4b5d: $88
	adc  b                                           ; $4b5e: $88
	adc  b                                           ; $4b5f: $88
	adc  b                                           ; $4b60: $88
	adc  b                                           ; $4b61: $88
	adc  b                                           ; $4b62: $88
	adc  b                                           ; $4b63: $88
	adc  b                                           ; $4b64: $88
	adc  b                                           ; $4b65: $88
	adc  b                                           ; $4b66: $88
	adc  b                                           ; $4b67: $88
	adc  b                                           ; $4b68: $88
	adc  b                                           ; $4b69: $88
	adc  b                                           ; $4b6a: $88
	adc  b                                           ; $4b6b: $88
	adc  b                                           ; $4b6c: $88
	adc  b                                           ; $4b6d: $88
	adc  b                                           ; $4b6e: $88
	adc  b                                           ; $4b6f: $88
	adc  b                                           ; $4b70: $88
	adc  b                                           ; $4b71: $88
	adc  b                                           ; $4b72: $88
	adc  b                                           ; $4b73: $88
	adc  b                                           ; $4b74: $88
	adc  b                                           ; $4b75: $88
	adc  b                                           ; $4b76: $88
	adc  b                                           ; $4b77: $88
	adc  b                                           ; $4b78: $88
	adc  b                                           ; $4b79: $88
	adc  b                                           ; $4b7a: $88
	adc  b                                           ; $4b7b: $88
	adc  b                                           ; $4b7c: $88
	adc  b                                           ; $4b7d: $88
	adc  b                                           ; $4b7e: $88
	adc  b                                           ; $4b7f: $88
	adc  b                                           ; $4b80: $88
	adc  b                                           ; $4b81: $88
	adc  b                                           ; $4b82: $88
	adc  b                                           ; $4b83: $88
	adc  b                                           ; $4b84: $88
	adc  b                                           ; $4b85: $88
	adc  b                                           ; $4b86: $88
	adc  b                                           ; $4b87: $88
	adc  b                                           ; $4b88: $88
	adc  b                                           ; $4b89: $88
	adc  b                                           ; $4b8a: $88
	adc  b                                           ; $4b8b: $88
	adc  b                                           ; $4b8c: $88
	adc  b                                           ; $4b8d: $88
	adc  b                                           ; $4b8e: $88
	adc  b                                           ; $4b8f: $88
	adc  b                                           ; $4b90: $88
	adc  b                                           ; $4b91: $88
	adc  b                                           ; $4b92: $88
	adc  b                                           ; $4b93: $88
	adc  b                                           ; $4b94: $88
	adc  b                                           ; $4b95: $88
	adc  b                                           ; $4b96: $88
	adc  b                                           ; $4b97: $88
	adc  b                                           ; $4b98: $88
	adc  b                                           ; $4b99: $88
	adc  b                                           ; $4b9a: $88
	adc  b                                           ; $4b9b: $88
	adc  b                                           ; $4b9c: $88
	adc  b                                           ; $4b9d: $88
	adc  b                                           ; $4b9e: $88
	adc  b                                           ; $4b9f: $88
	adc  b                                           ; $4ba0: $88
	adc  b                                           ; $4ba1: $88
	adc  b                                           ; $4ba2: $88
	adc  b                                           ; $4ba3: $88
	adc  b                                           ; $4ba4: $88
	adc  b                                           ; $4ba5: $88
	adc  b                                           ; $4ba6: $88
	adc  b                                           ; $4ba7: $88
	adc  b                                           ; $4ba8: $88
	adc  b                                           ; $4ba9: $88
	adc  b                                           ; $4baa: $88
	adc  b                                           ; $4bab: $88
	adc  b                                           ; $4bac: $88
	adc  b                                           ; $4bad: $88
	adc  b                                           ; $4bae: $88
	adc  b                                           ; $4baf: $88
	adc  b                                           ; $4bb0: $88
	adc  b                                           ; $4bb1: $88
	adc  b                                           ; $4bb2: $88
	adc  b                                           ; $4bb3: $88
	adc  b                                           ; $4bb4: $88
	adc  b                                           ; $4bb5: $88
	adc  b                                           ; $4bb6: $88
	adc  b                                           ; $4bb7: $88
	adc  b                                           ; $4bb8: $88
	adc  b                                           ; $4bb9: $88
	adc  b                                           ; $4bba: $88
	adc  b                                           ; $4bbb: $88
	adc  b                                           ; $4bbc: $88
	adc  b                                           ; $4bbd: $88
	adc  b                                           ; $4bbe: $88
	adc  b                                           ; $4bbf: $88
	adc  b                                           ; $4bc0: $88
	adc  b                                           ; $4bc1: $88
	adc  b                                           ; $4bc2: $88
	adc  b                                           ; $4bc3: $88
	adc  b                                           ; $4bc4: $88
	adc  b                                           ; $4bc5: $88
	adc  b                                           ; $4bc6: $88
	adc  b                                           ; $4bc7: $88
	adc  b                                           ; $4bc8: $88
	adc  b                                           ; $4bc9: $88
	adc  b                                           ; $4bca: $88
	adc  b                                           ; $4bcb: $88
	adc  b                                           ; $4bcc: $88
	adc  b                                           ; $4bcd: $88
	adc  b                                           ; $4bce: $88
	adc  b                                           ; $4bcf: $88
	adc  b                                           ; $4bd0: $88
	adc  b                                           ; $4bd1: $88
	adc  b                                           ; $4bd2: $88
	adc  b                                           ; $4bd3: $88
	adc  b                                           ; $4bd4: $88
	adc  b                                           ; $4bd5: $88
	adc  b                                           ; $4bd6: $88
	adc  b                                           ; $4bd7: $88
	adc  b                                           ; $4bd8: $88
	adc  b                                           ; $4bd9: $88
	adc  b                                           ; $4bda: $88
	adc  b                                           ; $4bdb: $88
	adc  b                                           ; $4bdc: $88
	adc  b                                           ; $4bdd: $88
	adc  b                                           ; $4bde: $88
	adc  b                                           ; $4bdf: $88
	adc  b                                           ; $4be0: $88
	adc  b                                           ; $4be1: $88
	adc  b                                           ; $4be2: $88
	adc  b                                           ; $4be3: $88
	adc  b                                           ; $4be4: $88
	adc  b                                           ; $4be5: $88
	adc  b                                           ; $4be6: $88
	adc  b                                           ; $4be7: $88
	adc  b                                           ; $4be8: $88
	adc  b                                           ; $4be9: $88
	adc  b                                           ; $4bea: $88
	adc  b                                           ; $4beb: $88
	adc  b                                           ; $4bec: $88
	adc  b                                           ; $4bed: $88
	adc  b                                           ; $4bee: $88
	adc  b                                           ; $4bef: $88
	adc  b                                           ; $4bf0: $88
	adc  b                                           ; $4bf1: $88
	adc  b                                           ; $4bf2: $88
	adc  b                                           ; $4bf3: $88
	adc  b                                           ; $4bf4: $88
	adc  b                                           ; $4bf5: $88
	adc  b                                           ; $4bf6: $88
	adc  b                                           ; $4bf7: $88
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
	adc  c                                           ; $5527: $89
	adc  c                                           ; $5528: $89
	sbc  d                                           ; $5529: $9a
	sbc  c                                           ; $552a: $99
	sbc  c                                           ; $552b: $99
	halt                                             ; $552c: $76
	ld   d, h                                        ; $552d: $54
	inc  [hl]                                        ; $552e: $34
	ld   b, [hl]                                     ; $552f: $46
	adc  c                                           ; $5530: $89
	cp   h                                           ; $5531: $bc
	call $97cc                                       ; $5532: $cd $cc $97
	ld   [hl], l                                     ; $5535: $75
	ld   b, h                                        ; $5536: $44
	ld   b, l                                        ; $5537: $45
	ld   h, a                                        ; $5538: $67
	sbc  d                                           ; $5539: $9a
	xor  d                                           ; $553a: $aa
	cp   d                                           ; $553b: $ba
	xor  d                                           ; $553c: $aa
	sbc  c                                           ; $553d: $99
	sbc  c                                           ; $553e: $99
	sbc  c                                           ; $553f: $99
	sbc  b                                           ; $5540: $98
	adc  b                                           ; $5541: $88
	halt                                             ; $5542: $76
	ld   b, e                                        ; $5543: $43
	ld   [hl-], a                                    ; $5544: $32
	dec  [hl]                                        ; $5545: $35
	ld   l, d                                        ; $5546: $6a
	call z, $edfe                                    ; $5547: $cc $fe $ed
	xor  d                                           ; $554a: $aa
	ld   h, h                                        ; $554b: $64
	ld   b, d                                        ; $554c: $42
	inc  [hl]                                        ; $554d: $34
	ld   b, a                                        ; $554e: $47
	adc  d                                           ; $554f: $8a
	xor  e                                           ; $5550: $ab
	call z, $a9aa                                    ; $5551: $cc $aa $a9
	xor  c                                           ; $5554: $a9
	sbc  c                                           ; $5555: $99
	sbc  b                                           ; $5556: $98
	ld   [hl], l                                     ; $5557: $75
	ld   b, d                                        ; $5558: $42
	ld   de, $5611                                   ; $5559: $11 $11 $56
	cp   [hl]                                        ; $555c: $be
	rst  $38                                         ; $555d: $ff
	rst  $38                                         ; $555e: $ff
	ld   a, [$22a5]                                  ; $555f: $fa $a5 $22
	ld   de, $6823                                   ; $5562: $11 $23 $68
	xor  l                                           ; $5565: $ad
	sbc  $dd                                         ; $5566: $de $dd
	res  7, d                                        ; $5568: $cb $ba
	sbc  c                                           ; $556a: $99
	sub  a                                           ; $556b: $97
	ld   h, h                                        ; $556c: $64
	ld   de, $1211                                   ; $556d: $11 $11 $12
	jr   c, @-$0f                                    ; $5570: $38 $ef

	rst  $38                                         ; $5572: $ff
	rst  $38                                         ; $5573: $ff
	db   $db                                         ; $5574: $db
	ld   h, c                                        ; $5575: $61
	ld   de, $1511                                   ; $5576: $11 $11 $15
	ld   a, e                                        ; $5579: $7b
	rst  $28                                         ; $557a: $ef
	rst  $38                                         ; $557b: $ff
	cp   $db                                         ; $557c: $fe $db
	jp   z, $4297                                    ; $557e: $ca $97 $42

	ld   de, $1111                                   ; $5581: $11 $11 $11
	ld   [hl], $ff                                   ; $5584: $36 $ff

Call_0f8_5586:
	rst  $38                                         ; $5586: $ff

Jump_0f8_5587:
	rst  $38                                         ; $5587: $ff
	ei                                               ; $5588: $fb
	ld   [hl], c                                     ; $5589: $71
	ld   de, $1211                                   ; $558a: $11 $11 $12
	ld   a, e                                        ; $558d: $7b
	rst  $38                                         ; $558e: $ff
	rst  $38                                         ; $558f: $ff
	rst  $38                                         ; $5590: $ff
	cp   $b9                                         ; $5591: $fe $b9
	ld   d, d                                        ; $5593: $52
	ld   de, $1111                                   ; $5594: $11 $11 $11
	inc  d                                           ; $5597: $14
	ld   a, a                                        ; $5598: $7f
	rst  $38                                         ; $5599: $ff
	rst  $38                                         ; $559a: $ff
	rst  $38                                         ; $559b: $ff
	ret  z                                           ; $559c: $c8

	ld   de, $1111                                   ; $559d: $11 $11 $11
	dec  d                                           ; $55a0: $15
	xor  a                                           ; $55a1: $af
	rst  $38                                         ; $55a2: $ff
	rst  $38                                         ; $55a3: $ff
	rst  $38                                         ; $55a4: $ff
	db   $fd                                         ; $55a5: $fd
	sub  d                                           ; $55a6: $92
	ld   de, $1111                                   ; $55a7: $11 $11 $11
	ld   de, $ff6f                                   ; $55aa: $11 $6f $ff
	rst  $38                                         ; $55ad: $ff
	rst  $38                                         ; $55ae: $ff
	ld   a, [$1111]                                  ; $55af: $fa $11 $11
	ld   de, $7f13                                   ; $55b2: $11 $13 $7f

jr_0f8_55b5:
	rst  $38                                         ; $55b5: $ff
	rst  $38                                         ; $55b6: $ff
	rst  $38                                         ; $55b7: $ff
	cp   $91                                         ; $55b8: $fe $91
	ld   de, $1111                                   ; $55ba: $11 $11 $11
	ld   [de], a                                     ; $55bd: $12
	adc  a                                           ; $55be: $8f
	rst  $38                                         ; $55bf: $ff
	rst  $38                                         ; $55c0: $ff
	rst  $38                                         ; $55c1: $ff
	ret  c                                           ; $55c2: $d8

	ld   de, $1111                                   ; $55c3: $11 $11 $11
	inc  d                                           ; $55c6: $14
	adc  a                                           ; $55c7: $8f
	rst  $38                                         ; $55c8: $ff
	rst  $38                                         ; $55c9: $ff
	rst  $38                                         ; $55ca: $ff
	db   $fc                                         ; $55cb: $fc
	ld   b, c                                        ; $55cc: $41
	ld   de, $1111                                   ; $55cd: $11 $11 $11
	add  hl, bc                                      ; $55d0: $09
	rst  $38                                         ; $55d1: $ff
	rst  $38                                         ; $55d2: $ff
	rst  $38                                         ; $55d3: $ff
	rst  $38                                         ; $55d4: $ff
	ld   [hl], c                                     ; $55d5: $71
	ld   de, $1111                                   ; $55d6: $11 $11 $11
	ld   c, c                                        ; $55d9: $49
	rst  $38                                         ; $55da: $ff
	rst  $38                                         ; $55db: $ff
	rst  $38                                         ; $55dc: $ff
	cp   $61                                         ; $55dd: $fe $61
	ld   de, $1111                                   ; $55df: $11 $11 $11
	ld   e, $ff                                      ; $55e2: $1e $ff
	rst  $38                                         ; $55e4: $ff
	rst  $38                                         ; $55e5: $ff
	db   $fd                                         ; $55e6: $fd
	ld   sp, $1111                                   ; $55e7: $31 $11 $11
	ld   de, $ef5c                                   ; $55ea: $11 $5c $ef
	rst  $38                                         ; $55ed: $ff
	rst  $38                                         ; $55ee: $ff
	rst  $20                                         ; $55ef: $e7
	ld   de, $1111                                   ; $55f0: $11 $11 $11
	ld   d, $af                                      ; $55f3: $16 $af
	rst  $38                                         ; $55f5: $ff
	rst  $38                                         ; $55f6: $ff
	rst  $38                                         ; $55f7: $ff
	add  l                                           ; $55f8: $85
	ld   de, $1111                                   ; $55f9: $11 $11 $11
	add  hl, hl                                      ; $55fc: $29
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55fd: $cf
	rst  $38                                         ; $55fe: $ff
	rst  $38                                         ; $55ff: $ff
	ret  c                                           ; $5600: $d8

	ld   de, $1111                                   ; $5601: $11 $11 $11
	jr   jr_0f8_55b5                                 ; $5604: $18 $af

	rst  $38                                         ; $5606: $ff
	rst  $38                                         ; $5607: $ff
	rst  $38                                         ; $5608: $ff
	ld   [hl], l                                     ; $5609: $75
	ld   de, $1311                                   ; $560a: $11 $11 $13
	ld   e, e                                        ; $560d: $5b
	rst  JumpTable                                         ; $560e: $df
	rst  $38                                         ; $560f: $ff
	cp   $82                                         ; $5610: $fe $82
	ld   de, $1111                                   ; $5612: $11 $11 $11
	adc  e                                           ; $5615: $8b
	rst  $38                                         ; $5616: $ff
	rst  $38                                         ; $5617: $ff
	rst  $38                                         ; $5618: $ff
	ld   hl, sp+$53                                  ; $5619: $f8 $53
	ld   de, $4311                                   ; $561b: $11 $11 $43
	call z, $ffff                                    ; $561e: $cc $ff $ff
	add  $11                                         ; $5621: $c6 $11
	ld   de, $1c11                                   ; $5623: $11 $11 $1c
	rst  JumpTable                                         ; $5626: $df
	rst  $38                                         ; $5627: $ff
	rst  $38                                         ; $5628: $ff
	db   $fd                                         ; $5629: $fd
	ld   b, [hl]                                     ; $562a: $46
	ld   de, $5521                                   ; $562b: $11 $21 $55
	ld   l, a                                        ; $562e: $6f
	rst  JumpTable                                         ; $562f: $df
	rst  $38                                         ; $5630: $ff
	db   $f4                                         ; $5631: $f4
	ld   de, $1111                                   ; $5632: $11 $11 $11
	inc  e                                           ; $5635: $1c
	rst  $28                                         ; $5636: $ef
	rst  $38                                         ; $5637: $ff
	rst  $38                                         ; $5638: $ff
	call z, $2134                                    ; $5639: $cc $34 $21
	ld   b, c                                        ; $563c: $41
	ld   e, b                                        ; $563d: $58
	ld   a, a                                        ; $563e: $7f
	rst  $38                                         ; $563f: $ff
	db   $fc                                         ; $5640: $fc
	pop  bc                                          ; $5641: $c1
	ld   de, $1111                                   ; $5642: $11 $11 $11
	cp   a                                           ; $5645: $bf
	rst  $38                                         ; $5646: $ff
	rst  $38                                         ; $5647: $ff
	ld   a, [$34d5]                                  ; $5648: $fa $d5 $34
	dec  d                                           ; $564b: $15
	ld   [hl+], a                                    ; $564c: $22
	and  [hl]                                        ; $564d: $a6
	rst  $28                                         ; $564e: $ef
	rst  $28                                         ; $564f: $ef
	cp   b                                           ; $5650: $b8
	ld   hl, $1111                                   ; $5651: $21 $11 $11
	ld   a, [de]                                     ; $5654: $1a
	rst  $38                                         ; $5655: $ff
	rst  $38                                         ; $5656: $ff
	rst  $38                                         ; $5657: $ff
	sbc  e                                           ; $5658: $9b
	ld   b, e                                        ; $5659: $43
	ld   b, c                                        ; $565a: $41
	ld   d, l                                        ; $565b: $55
	ld   c, h                                        ; $565c: $4c
	xor  a                                           ; $565d: $af
	cp   $f7                                         ; $565e: $fe $f7
	ld   de, $1111                                   ; $5660: $11 $11 $11
	ld   h, $ff                                      ; $5663: $26 $ff
	rst  $38                                         ; $5665: $ff
	rst  $38                                         ; $5666: $ff
	cp   c                                           ; $5667: $b9
	ld   [hl], c                                     ; $5668: $71
	ld   d, c                                        ; $5669: $51
	dec  h                                           ; $566a: $25
	dec  hl                                          ; $566b: $2b
	call $f8ff                                       ; $566c: $cd $ff $f8
	ld   de, $1111                                   ; $566f: $11 $11 $11
	ld   h, $ff                                      ; $5672: $26 $ff
	rst  $38                                         ; $5674: $ff
	rst  $38                                         ; $5675: $ff
	xor  e                                           ; $5676: $ab
	add  c                                           ; $5677: $81
	ld   h, c                                        ; $5678: $61
	dec  d                                           ; $5679: $15
	inc  e                                           ; $567a: $1c
	adc  $fe                                         ; $567b: $ce $fe
	db   $e4                                         ; $567d: $e4
	ld   de, $1211                                   ; $567e: $11 $11 $12
	ccf                                              ; $5681: $3f
	rst  $38                                         ; $5682: $ff
	rst  $38                                         ; $5683: $ff
	rst  $38                                         ; $5684: $ff

Jump_0f8_5685:
	sbc  h                                           ; $5685: $9c
	ld   b, [hl]                                     ; $5686: $46
	ld   d, c                                        ; $5687: $51
	ld   d, c                                        ; $5688: $51
	ld   c, h                                        ; $5689: $4c
	xor  a                                           ; $568a: $af
	ld   [$1151], a                                  ; $568b: $ea $51 $11
	ld   de, $ff46                                   ; $568e: $11 $46 $ff
	rst  $38                                         ; $5691: $ff
	rst  $38                                         ; $5692: $ff
	cp   h                                           ; $5693: $bc
	or   [hl]                                        ; $5694: $b6
	sub  a                                           ; $5695: $97
	inc  h                                           ; $5696: $24
	ld   b, e                                        ; $5697: $43
	cp   d                                           ; $5698: $ba
	db   $fc                                         ; $5699: $fc
	ld   h, d                                        ; $569a: $62
	ld   de, $4611                                   ; $569b: $11 $11 $46
	rst  $28                                         ; $569e: $ef
	rst  $38                                         ; $569f: $ff
	rst  $38                                         ; $56a0: $ff
	rst  $30                                         ; $56a1: $f7
	jp   z, $738a                                    ; $56a2: $ca $8a $73

	ld   b, h                                        ; $56a5: $44
	ld   l, l                                        ; $56a6: $6d
	xor  l                                           ; $56a7: $ad
	ld   h, c                                        ; $56a8: $61
	ld   de, $4a11                                   ; $56a9: $11 $11 $4a
	rst  JumpTable                                         ; $56ac: $df
	rst  $38                                         ; $56ad: $ff
	cp   $f4                                         ; $56ae: $fe $f4
	jp   c, Jump_0f8_76ba                            ; $56b0: $da $ba $76

	ld   d, $5d                                      ; $56b3: $16 $5d
	res  2, c                                        ; $56b5: $cb $91
	ld   de, $6b11                                   ; $56b7: $11 $11 $6b
	rst  $38                                         ; $56ba: $ff
	rst  $38                                         ; $56bb: $ff
	cp   $f3                                         ; $56bc: $fe $f3
	ei                                               ; $56be: $fb
	jp   hl                                          ; $56bf: $e9


	ld   [hl+], a                                    ; $56c0: $22
	ld   [de], a                                     ; $56c1: $12
	ld   e, a                                        ; $56c2: $5f
	rst  JumpTable                                         ; $56c3: $df
	ld   h, c                                        ; $56c4: $61
	ld   de, $fd11                                   ; $56c5: $11 $11 $fd

Call_0f8_56c8:
	rst  $38                                         ; $56c8: $ff
	rst  $38                                         ; $56c9: $ff
	cpl                                              ; $56ca: $2f
	adc  l                                           ; $56cb: $8d
	cp   $f4                                         ; $56cc: $fe $f4
	ld   sp, $9f11                                   ; $56ce: $31 $11 $9f
	cp   h                                           ; $56d1: $bc
	ld   de, $1a11                                   ; $56d2: $11 $11 $1a
	rst  $38                                         ; $56d5: $ff
	rst  $38                                         ; $56d6: $ff
	db   $f4                                         ; $56d7: $f4
	call z, $ef9f                                    ; $56d8: $cc $9f $ef
	ld   [hl], c                                     ; $56db: $71
	ld   de, $fb46                                   ; $56dc: $11 $46 $fb
	sub  c                                           ; $56df: $91
	ld   de, $ef11                                   ; $56e0: $11 $11 $ef
	rst  $38                                         ; $56e3: $ff
	rst  $38                                         ; $56e4: $ff
	ld   e, $8e                                      ; $56e5: $1e $8e
	rst  $38                                         ; $56e7: $ff
	ldh  a, [c]                                      ; $56e8: $f2
	ld   de, $af16                                   ; $56e9: $11 $16 $af
	or   h                                           ; $56ec: $b4
	ld   de, $7e11                                   ; $56ed: $11 $11 $7e
	rst  $38                                         ; $56f0: $ff
	rst  $38                                         ; $56f1: $ff
	sub  e                                           ; $56f2: $93
	rst  $30                                         ; $56f3: $f7
	rst  $38                                         ; $56f4: $ff
	rst  $38                                         ; $56f5: $ff
	ld   [de], a                                     ; $56f6: $12
	ld   de, $e48b                                   ; $56f7: $11 $8b $e4
	ld   de, $1e11                                   ; $56fa: $11 $11 $1e
	rst  $28                                         ; $56fd: $ef
	rst  $38                                         ; $56fe: $ff
	ldh  a, [c]                                      ; $56ff: $f2
	ld   a, [$ffff]                                  ; $5700: $fa $ff $ff
	ld   de, $a611                                   ; $5703: $11 $11 $a6
	ret  z                                           ; $5706: $c8

	ld   de, $1d11                                   ; $5707: $11 $11 $1d
	xor  a                                           ; $570a: $af
	ld   hl, sp-$4d                                  ; $570b: $f8 $b3
	sbc  l                                           ; $570d: $9d
	cp   a                                           ; $570e: $bf
	rst  $38                                         ; $570f: $ff
	push de                                          ; $5710: $d5
	ld   [hl], d                                     ; $5711: $72
	ld   a, c                                        ; $5712: $79
	ld   a, c                                        ; $5713: $79
	ld   d, h                                        ; $5714: $54
	ld   d, l                                        ; $5715: $55
	ld   d, [hl]                                     ; $5716: $56
	halt                                             ; $5717: $76
	add  [hl]                                        ; $5718: $86
	ld   h, l                                        ; $5719: $65
	ld   [hl], $59                                   ; $571a: $36 $59
	call $aafa                                       ; $571c: $cd $fa $aa
	ld   a, d                                        ; $571f: $7a
	cp   d                                           ; $5720: $ba
	res  3, c                                        ; $5721: $cb $99
	add  a                                           ; $5723: $87
	ld   h, a                                        ; $5724: $67
	ld   h, [hl]                                     ; $5725: $66
	ld   d, h                                        ; $5726: $54
	ld   b, c                                        ; $5727: $41
	ld   b, e                                        ; $5728: $43
	ld   e, d                                        ; $5729: $5a
	xor  l                                           ; $572a: $ad
	cp   d                                           ; $572b: $ba
	xor  b                                           ; $572c: $a8
	cp   d                                           ; $572d: $ba
	call z, $89bc                                    ; $572e: $cc $bc $89
	halt                                             ; $5731: $76
	add  a                                           ; $5732: $87
	halt                                             ; $5733: $76
	ld   b, h                                        ; $5734: $44
	inc  sp                                          ; $5735: $33
	ld   d, l                                        ; $5736: $55
	adc  b                                           ; $5737: $88
	sbc  d                                           ; $5738: $9a
	xor  d                                           ; $5739: $aa
	xor  d                                           ; $573a: $aa
	cp   h                                           ; $573b: $bc
	call c, $88ba                                    ; $573c: $dc $ba $88
	halt                                             ; $573f: $76
	ld   [hl], l                                     ; $5740: $75
	ld   h, h                                        ; $5741: $64
	ld   b, h                                        ; $5742: $44
	ld   b, [hl]                                     ; $5743: $46
	ld   l, b                                        ; $5744: $68
	sbc  c                                           ; $5745: $99
	adc  b                                           ; $5746: $88
	adc  c                                           ; $5747: $89
	sbc  d                                           ; $5748: $9a
	cp   h                                           ; $5749: $bc
	cp   e                                           ; $574a: $bb
	xor  c                                           ; $574b: $a9
	adc  b                                           ; $574c: $88
	ld   [hl], a                                     ; $574d: $77
	ld   h, l                                        ; $574e: $65
	ld   b, l                                        ; $574f: $45
	ld   d, l                                        ; $5750: $55
	ld   h, a                                        ; $5751: $67
	adc  b                                           ; $5752: $88
	add  a                                           ; $5753: $87
	adc  b                                           ; $5754: $88
	adc  c                                           ; $5755: $89
	cp   h                                           ; $5756: $bc
	cp   e                                           ; $5757: $bb
	cp   d                                           ; $5758: $ba
	sbc  b                                           ; $5759: $98
	adc  b                                           ; $575a: $88
	halt                                             ; $575b: $76
	ld   d, h                                        ; $575c: $54
	ld   d, l                                        ; $575d: $55
	ld   h, a                                        ; $575e: $67
	ld   a, b                                        ; $575f: $78
	add  a                                           ; $5760: $87
	ld   [hl], a                                     ; $5761: $77
	ld   a, c                                        ; $5762: $79
	sbc  e                                           ; $5763: $9b
	cp   h                                           ; $5764: $bc
	xor  e                                           ; $5765: $ab
	sbc  c                                           ; $5766: $99
	sbc  c                                           ; $5767: $99
	add  a                                           ; $5768: $87
	ld   h, l                                        ; $5769: $65
	ld   b, l                                        ; $576a: $45
	ld   d, [hl]                                     ; $576b: $56
	ld   a, b                                        ; $576c: $78
	sbc  b                                           ; $576d: $98
	halt                                             ; $576e: $76
	ld   h, a                                        ; $576f: $67
	adc  d                                           ; $5770: $8a
	xor  d                                           ; $5771: $aa
	cp   d                                           ; $5772: $ba
	cp   d                                           ; $5773: $ba
	xor  d                                           ; $5774: $aa
	sbc  c                                           ; $5775: $99
	halt                                             ; $5776: $76
	ld   d, h                                        ; $5777: $54
	ld   b, l                                        ; $5778: $45
	ld   h, a                                        ; $5779: $67
	adc  b                                           ; $577a: $88
	add  a                                           ; $577b: $87
	ld   [hl], a                                     ; $577c: $77
	ld   a, b                                        ; $577d: $78
	sbc  d                                           ; $577e: $9a
	cp   e                                           ; $577f: $bb
	cp   e                                           ; $5780: $bb
	xor  d                                           ; $5781: $aa
	sbc  c                                           ; $5782: $99
	xor  b                                           ; $5783: $a8
	halt                                             ; $5784: $76
	ld   d, h                                        ; $5785: $54
	ld   b, l                                        ; $5786: $45
	ld   h, a                                        ; $5787: $67
	adc  b                                           ; $5788: $88
	ld   [hl], a                                     ; $5789: $77
	ld   [hl], a                                     ; $578a: $77
	adc  b                                           ; $578b: $88
	xor  d                                           ; $578c: $aa
	xor  d                                           ; $578d: $aa
	xor  d                                           ; $578e: $aa
	xor  d                                           ; $578f: $aa
	xor  d                                           ; $5790: $aa
	sbc  b                                           ; $5791: $98
	ld   h, l                                        ; $5792: $65
	ld   b, h                                        ; $5793: $44
	ld   d, [hl]                                     ; $5794: $56
	ld   a, b                                        ; $5795: $78
	adc  b                                           ; $5796: $88
	ld   [hl], a                                     ; $5797: $77
	ld   h, a                                        ; $5798: $67
	adc  c                                           ; $5799: $89
	xor  e                                           ; $579a: $ab
	xor  e                                           ; $579b: $ab
	xor  c                                           ; $579c: $a9
	sbc  c                                           ; $579d: $99
	sbc  c                                           ; $579e: $99
	sub  a                                           ; $579f: $97
	ld   h, l                                        ; $57a0: $65
	ld   b, l                                        ; $57a1: $45
	ld   h, a                                        ; $57a2: $67
	adc  c                                           ; $57a3: $89
	sbc  b                                           ; $57a4: $98
	ld   [hl], a                                     ; $57a5: $77
	ld   h, a                                        ; $57a6: $67
	sbc  c                                           ; $57a7: $99
	xor  d                                           ; $57a8: $aa
	xor  c                                           ; $57a9: $a9
	xor  c                                           ; $57aa: $a9
	sbc  d                                           ; $57ab: $9a
	xor  d                                           ; $57ac: $aa
	sub  a                                           ; $57ad: $97
	ld   d, h                                        ; $57ae: $54
	ld   b, l                                        ; $57af: $45
	ld   h, a                                        ; $57b0: $67
	sbc  c                                           ; $57b1: $99
	add  a                                           ; $57b2: $87
	ld   [hl], a                                     ; $57b3: $77
	ld   a, b                                        ; $57b4: $78
	sbc  d                                           ; $57b5: $9a
	xor  d                                           ; $57b6: $aa
	sbc  c                                           ; $57b7: $99
	xor  d                                           ; $57b8: $aa
	xor  d                                           ; $57b9: $aa
	xor  c                                           ; $57ba: $a9
	add  [hl]                                        ; $57bb: $86
	ld   d, h                                        ; $57bc: $54
	ld   b, l                                        ; $57bd: $45
	ld   l, b                                        ; $57be: $68
	adc  b                                           ; $57bf: $88
	add  a                                           ; $57c0: $87
	ld   [hl], a                                     ; $57c1: $77
	ld   a, b                                        ; $57c2: $78
	xor  d                                           ; $57c3: $aa
	xor  d                                           ; $57c4: $aa
	sbc  d                                           ; $57c5: $9a
	xor  c                                           ; $57c6: $a9
	sbc  d                                           ; $57c7: $9a
	xor  c                                           ; $57c8: $a9
	halt                                             ; $57c9: $76
	ld   d, h                                        ; $57ca: $54
	ld   d, [hl]                                     ; $57cb: $56
	ld   a, b                                        ; $57cc: $78
	adc  b                                           ; $57cd: $88
	add  a                                           ; $57ce: $87
	ld   [hl], a                                     ; $57cf: $77
	adc  c                                           ; $57d0: $89
	xor  d                                           ; $57d1: $aa
	xor  d                                           ; $57d2: $aa
	xor  c                                           ; $57d3: $a9
	xor  d                                           ; $57d4: $aa
	cp   d                                           ; $57d5: $ba
	add  a                                           ; $57d6: $87
	ld   h, [hl]                                     ; $57d7: $66
	ld   d, h                                        ; $57d8: $54
	ld   d, [hl]                                     ; $57d9: $56
	ld   a, b                                        ; $57da: $78
	adc  b                                           ; $57db: $88
	add  a                                           ; $57dc: $87
	ld   h, a                                        ; $57dd: $67
	adc  c                                           ; $57de: $89
	xor  d                                           ; $57df: $aa
	cp   d                                           ; $57e0: $ba
	xor  b                                           ; $57e1: $a8
	sbc  d                                           ; $57e2: $9a
	xor  e                                           ; $57e3: $ab
	sbc  b                                           ; $57e4: $98
	ld   h, l                                        ; $57e5: $65
	ld   b, h                                        ; $57e6: $44
	ld   d, a                                        ; $57e7: $57
	adc  b                                           ; $57e8: $88
	sbc  b                                           ; $57e9: $98
	ld   [hl], a                                     ; $57ea: $77
	ld   a, b                                        ; $57eb: $78
	adc  d                                           ; $57ec: $8a
	xor  d                                           ; $57ed: $aa
	xor  c                                           ; $57ee: $a9
	sbc  c                                           ; $57ef: $99
	sbc  c                                           ; $57f0: $99
	xor  e                                           ; $57f1: $ab
	sub  a                                           ; $57f2: $97
	ld   d, h                                        ; $57f3: $54
	ld   b, l                                        ; $57f4: $45
	ld   h, a                                        ; $57f5: $67
	adc  b                                           ; $57f6: $88
	add  [hl]                                        ; $57f7: $86
	ld   h, [hl]                                     ; $57f8: $66
	ld   a, b                                        ; $57f9: $78
	xor  d                                           ; $57fa: $aa
	cp   e                                           ; $57fb: $bb
	xor  c                                           ; $57fc: $a9
	sbc  c                                           ; $57fd: $99
	sbc  c                                           ; $57fe: $99
	sbc  c                                           ; $57ff: $99
	add  [hl]                                        ; $5800: $86
	ld   b, h                                        ; $5801: $44
	ld   b, l                                        ; $5802: $45
	ld   a, b                                        ; $5803: $78
	sbc  b                                           ; $5804: $98
	add  a                                           ; $5805: $87
	ld   [hl], a                                     ; $5806: $77
	sbc  c                                           ; $5807: $99
	xor  e                                           ; $5808: $ab
	xor  d                                           ; $5809: $aa
	sbc  c                                           ; $580a: $99
	adc  b                                           ; $580b: $88
	xor  d                                           ; $580c: $aa
	sub  a                                           ; $580d: $97
	ld   h, h                                        ; $580e: $64
	ld   d, l                                        ; $580f: $55
	ld   b, a                                        ; $5810: $47
	sbc  c                                           ; $5811: $99
	sbc  b                                           ; $5812: $98
	add  [hl]                                        ; $5813: $86
	adc  c                                           ; $5814: $89
	cp   d                                           ; $5815: $ba
	cp   h                                           ; $5816: $bc
	cp   h                                           ; $5817: $bc
	ld   a, b                                        ; $5818: $78
	ld   a, c                                        ; $5819: $79
	xor  d                                           ; $581a: $aa
	add  d                                           ; $581b: $82
	ld   sp, $9c37                                   ; $581c: $31 $37 $9c
	xor  e                                           ; $581f: $ab
	add  [hl]                                        ; $5820: $86

Call_0f8_5821:
	sbc  d                                           ; $5821: $9a
	cp   c                                           ; $5822: $b9
	xor  c                                           ; $5823: $a9
	ld   a, d                                        ; $5824: $7a
	ld   e, b                                        ; $5825: $58
	ld   [hl], l                                     ; $5826: $75
	ld   h, e                                        ; $5827: $63
	ld   h, e                                        ; $5828: $63
	ld   e, c                                        ; $5829: $59
	ld   a, l                                        ; $582a: $7d
	cp   a                                           ; $582b: $bf
	db   $ec                                         ; $582c: $ec
	ld   hl, sp+$63                                  ; $582d: $f8 $63
	add  hl, sp                                      ; $582f: $39
	ld   l, h                                        ; $5830: $6c
	push bc                                          ; $5831: $c5
	ld   b, c                                        ; $5832: $41
	ld   de, $af2d                                   ; $5833: $11 $2d $af
	cp   $f8                                         ; $5836: $fe $f8
	push af                                          ; $5838: $f5
	ld   [hl-], a                                    ; $5839: $32
	add  hl, de                                      ; $583a: $19
	dec  e                                           ; $583b: $1d
	sub  e                                           ; $583c: $93
	ld   h, c                                        ; $583d: $61
	ld   sp, $ff8f                                   ; $583e: $31 $8f $ff
	rst  $38                                         ; $5841: $ff
	cp   $b1                                         ; $5842: $fe $b1
	ld   de, $3b11                                   ; $5844: $11 $11 $3b
	ld   [de], a                                     ; $5847: $12
	inc  de                                          ; $5848: $13
	ld   l, $ff                                      ; $5849: $2e $ff
	rst  $38                                         ; $584b: $ff
	rst  $38                                         ; $584c: $ff
	ret                                              ; $584d: $c9


	ld   de, $1111                                   ; $584e: $11 $11 $11
	ld   b, c                                        ; $5851: $41
	inc  sp                                          ; $5852: $33
	db   $eb                                         ; $5853: $eb
	rst  $38                                         ; $5854: $ff
	rst  $38                                         ; $5855: $ff
	rst  $38                                         ; $5856: $ff
	adc  e                                           ; $5857: $8b
	ld   de, $1111                                   ; $5858: $11 $11 $11
	dec  h                                           ; $585b: $25
	add  hl, hl                                      ; $585c: $29
	rst  $28                                         ; $585d: $ef
	rst  $38                                         ; $585e: $ff
	rst  $38                                         ; $585f: $ff
	rst  $38                                         ; $5860: $ff
	pop  hl                                          ; $5861: $e1
	ld   [hl], c                                     ; $5862: $71
	ld   de, $1f11                                   ; $5863: $11 $11 $1f
	rst  $28                                         ; $5866: $ef
	rst  $38                                         ; $5867: $ff
	rst  $38                                         ; $5868: $ff
	rst  $38                                         ; $5869: $ff
	rst  $38                                         ; $586a: $ff
	and  c                                           ; $586b: $a1
	ld   [de], a                                     ; $586c: $12
	ld   de, $1111                                   ; $586d: $11 $11 $11
	rst  $38                                         ; $5870: $ff
	rst  $38                                         ; $5871: $ff
	rst  $38                                         ; $5872: $ff
	rst  $38                                         ; $5873: $ff
	rst  $38                                         ; $5874: $ff
	and  c                                           ; $5875: $a1
	ld   de, $1111                                   ; $5876: $11 $11 $11
	ld   de, $ffff                                   ; $5879: $11 $ff $ff
	rst  $38                                         ; $587c: $ff
	ld   a, a                                        ; $587d: $7f
	db   $fd                                         ; $587e: $fd
	add  d                                           ; $587f: $82
	ld   de, $1131                                   ; $5880: $11 $31 $11
	ld   de, $ffff                                   ; $5883: $11 $ff $ff
	rst  $38                                         ; $5886: $ff
	dec  hl                                          ; $5887: $2b
	rst  $38                                         ; $5888: $ff
	sub  e                                           ; $5889: $93
	ld   de, $1117                                   ; $588a: $11 $17 $11
	ld   de, $ff2f                                   ; $588d: $11 $2f $ff
	rst  JumpTable                                         ; $5890: $df
	sub  c                                           ; $5891: $91
	rst  $38                                         ; $5892: $ff
	reti                                             ; $5893: $d9


	ld   h, c                                        ; $5894: $61
	jr   jr_0f8_58a8                                 ; $5895: $18 $11

	ld   [de], a                                     ; $5897: $12
	rra                                              ; $5898: $1f
	rst  $38                                         ; $5899: $ff
	ld   sp, hl                                      ; $589a: $f9
	pop  af                                          ; $589b: $f1
	xor  a                                           ; $589c: $af
	db   $fc                                         ; $589d: $fc
	ld   [hl], c                                     ; $589e: $71
	ld   [de], a                                     ; $589f: $12
	ld   [hl], c                                     ; $58a0: $71
	ld   de, rAUD1LOW                                   ; $58a1: $11 $13 $ff
	db   $fc                                         ; $58a4: $fc
	ret  c                                           ; $58a5: $d8

	rra                                              ; $58a6: $1f
	ei                                               ; $58a7: $fb

jr_0f8_58a8:
	or   e                                           ; $58a8: $b3
	ld   de, $1171                                   ; $58a9: $11 $71 $11
	ld   de, $ffff                                   ; $58ac: $11 $ff $ff
	ld   a, h                                        ; $58af: $7c
	dec  de                                          ; $58b0: $1b
	ei                                               ; $58b1: $fb
	or   a                                           ; $58b2: $b7
	ld   [de], a                                     ; $58b3: $12
	ld   h, e                                        ; $58b4: $63
	ld   de, rAUD1LEN                                   ; $58b5: $11 $11 $ff
	rst  $38                                         ; $58b8: $ff
	ld   e, d                                        ; $58b9: $5a
	ld   de, $dbff                                   ; $58ba: $11 $ff $db
	ld   de, $1136                                   ; $58bd: $11 $36 $11
	ld   de, $ff3f                                   ; $58c0: $11 $3f $ff
	ld   [$ff51], a                                  ; $58c3: $ea $51 $ff
	cp   a                                           ; $58c6: $bf
	ld   [hl], e                                     ; $58c7: $73
	ld   [hl], $11                                   ; $58c8: $36 $11
	ld   [de], a                                     ; $58ca: $12
	rra                                              ; $58cb: $1f
	rst  $38                                         ; $58cc: $ff
	or   $a1                                         ; $58cd: $f6 $a1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58cf: $cf
	xor  a                                           ; $58d0: $af
	and  h                                           ; $58d1: $a4
	ld   h, $11                                      ; $58d2: $26 $11
	inc  d                                           ; $58d4: $14
	rra                                              ; $58d5: $1f
	rst  $38                                         ; $58d6: $ff
	or   $d1                                         ; $58d7: $f6 $d1
	rra                                              ; $58d9: $1f
	xor  [hl]                                        ; $58da: $ae
	rst  $10                                         ; $58db: $d7
	ld   b, h                                        ; $58dc: $44
	ld   h, c                                        ; $58dd: $61
	inc  de                                          ; $58de: $13
	inc  e                                           ; $58df: $1c
	rst  $38                                         ; $58e0: $ff
	rst  $30                                         ; $58e1: $f7
	pop  bc                                          ; $58e2: $c1
	rra                                              ; $58e3: $1f
	db   $ed                                         ; $58e4: $ed
	ld   hl, sp+$61                                  ; $58e5: $f8 $61
	add  c                                           ; $58e7: $81
	ld   de, rAUD1HIGH                                   ; $58e8: $11 $14 $ff
	ei                                               ; $58eb: $fb
	sub  [hl]                                        ; $58ec: $96
	rra                                              ; $58ed: $1f
	ld   sp, hl                                      ; $58ee: $f9
	ei                                               ; $58ef: $fb
	add  d                                           ; $58f0: $82
	add  c                                           ; $58f1: $81
	ld   de, $ff31                                   ; $58f2: $11 $31 $ff
	cp   $7a                                         ; $58f5: $fe $7a
	inc  e                                           ; $58f7: $1c
	ld   sp, hl                                      ; $58f8: $f9
	db   $fd                                         ; $58f9: $fd
	and  d                                           ; $58fa: $a2
	ld   h, c                                        ; $58fb: $61
	ld   de, $ff61                                   ; $58fc: $11 $61 $ff
	rst  $38                                         ; $58ff: $ff
	ld   e, l                                        ; $5900: $5d
	inc  d                                           ; $5901: $14
	ld   sp, hl                                      ; $5902: $f9
	cp   $b4                                         ; $5903: $fe $b4
	inc  sp                                          ; $5905: $33
	ld   de, $ff71                                   ; $5906: $11 $71 $ff
	rst  $38                                         ; $5909: $ff
	ld   c, l                                        ; $590a: $4d
	ld   de, $dffb                                   ; $590b: $11 $fb $df
	push de                                          ; $590e: $d5
	ld   hl, $6111                                   ; $590f: $21 $11 $61
	rst  $38                                         ; $5912: $ff
	rst  $38                                         ; $5913: $ff
	dec  sp                                          ; $5914: $3b
	ld   de, $cffc                                   ; $5915: $11 $fc $cf
	push de                                          ; $5918: $d5
	ld   de, $6311                                   ; $5919: $11 $11 $63
	rst  $38                                         ; $591c: $ff
	rst  $38                                         ; $591d: $ff
	dec  sp                                          ; $591e: $3b
	ld   de, $aefc                                   ; $591f: $11 $fc $ae
	and  $11                                         ; $5922: $e6 $11
	ld   de, $ff55                                   ; $5924: $11 $55 $ff
	rst  $38                                         ; $5927: $ff
	ld   a, [de]                                     ; $5928: $1a
	inc  de                                          ; $5929: $13
	db   $fc                                         ; $592a: $fc
	adc  $e6                                         ; $592b: $ce $e6
	ld   de, $5811                                   ; $592d: $11 $11 $58
	rst  $38                                         ; $5930: $ff
	db   $fc                                         ; $5931: $fc
	jr   jr_0f8_594b                                 ; $5932: $18 $17

	ld   a, [$d5cd]                                  ; $5934: $fa $cd $d5
	ld   de, $5c11                                   ; $5937: $11 $11 $5c
	rst  $38                                         ; $593a: $ff
	ld   hl, sp+$16                                  ; $593b: $f8 $16
	dec  e                                           ; $593d: $1d
	ld   sp, hl                                      ; $593e: $f9
	set  2, l                                        ; $593f: $cb $d5
	ld   de, $5f11                                   ; $5941: $11 $11 $5f
	rst  $38                                         ; $5944: $ff
	push af                                          ; $5945: $f5
	inc  de                                          ; $5946: $13
	rra                                              ; $5947: $1f
	ld   hl, sp-$34                                  ; $5948: $f8 $cc
	push bc                                          ; $594a: $c5

jr_0f8_594b:
	ld   de, $6f11                                   ; $594b: $11 $11 $6f
	rst  $38                                         ; $594e: $ff
	di                                               ; $594f: $f3
	inc  hl                                          ; $5950: $23
	rra                                              ; $5951: $1f
	ld   hl, sp-$44                                  ; $5952: $f8 $bc
	and  h                                           ; $5954: $a4
	ld   de, $7f11                                   ; $5955: $11 $11 $7f
	rst  $38                                         ; $5958: $ff
	ldh  a, [c]                                      ; $5959: $f2
	ld   [hl-], a                                    ; $595a: $32
	cpl                                              ; $595b: $2f
	rst  $30                                         ; $595c: $f7
	call $11a4                                       ; $595d: $cd $a4 $11
	ld   de, $ffbf                                   ; $5960: $11 $bf $ff
	pop  hl                                          ; $5963: $e1
	ld   d, c                                        ; $5964: $51
	ld   l, a                                        ; $5965: $6f
	rst  $10                                         ; $5966: $d7
	adc  $93                                         ; $5967: $ce $93
	ld   de, rAUD1LOW                                   ; $5969: $11 $13 $ff
	rst  $38                                         ; $596c: $ff
	sub  c                                           ; $596d: $91
	ld   d, e                                        ; $596e: $53
	xor  a                                           ; $596f: $af
	and  [hl]                                        ; $5970: $a6
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5971: $cf
	sub  d                                           ; $5972: $92
	ld   de, $ff16                                   ; $5973: $11 $16 $ff
	rst  $38                                         ; $5976: $ff
	ld   [hl-], a                                    ; $5977: $32
	ld   h, [hl]                                     ; $5978: $66
	rst  JumpTable                                         ; $5979: $df
	ld   h, l                                        ; $597a: $65
	rst  JumpTable                                         ; $597b: $df
	add  c                                           ; $597c: $81
	ld   de, $ff19                                   ; $597d: $11 $19 $ff
	rst  $38                                         ; $5980: $ff

Call_0f8_5981:
	inc  de                                          ; $5981: $13
	ld   a, d                                        ; $5982: $7a
	db   $fd                                         ; $5983: $fd
	ld   b, h                                        ; $5984: $44
	rst  JumpTable                                         ; $5985: $df
	ld   [hl], c                                     ; $5986: $71
	ld   de, $ff1d                                   ; $5987: $11 $1d $ff
	ld   a, [$7e13]                                  ; $598a: $fa $13 $7e
	ld   a, [$df34]                                  ; $598d: $fa $34 $df
	ld   d, c                                        ; $5990: $51
	ld   de, $ff1f                                   ; $5991: $11 $1f $ff
	di                                               ; $5994: $f3
	inc  de                                          ; $5995: $13
	sbc  a                                           ; $5996: $9f
	or   $34                                         ; $5997: $f6 $34
	cp   [hl]                                        ; $5999: $be
	ld   de, $6f11                                   ; $599a: $11 $11 $6f
	rst  $38                                         ; $599d: $ff
	pop  af                                          ; $599e: $f1
	inc  de                                          ; $599f: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59a0: $cf
	push af                                          ; $59a1: $f5
	ld   d, l                                        ; $59a2: $55
	and  a                                           ; $59a3: $a7
	ld   de, rAUD1LEN                                   ; $59a4: $11 $11 $ff
	rst  $38                                         ; $59a7: $ff
	ld   d, c                                        ; $59a8: $51
	dec  d                                           ; $59a9: $15
	rst  $38                                         ; $59aa: $ff
	and  [hl]                                        ; $59ab: $a6
	ld   h, h                                        ; $59ac: $64
	ld   [hl], c                                     ; $59ad: $71
	ld   de, $ff17                                   ; $59ae: $11 $17 $ff
	rst  $38                                         ; $59b1: $ff
	ld   de, $ff3c                                   ; $59b2: $11 $3c $ff
	ld   e, b                                        ; $59b5: $58
	ld   h, h                                        ; $59b6: $64

Call_0f8_59b7:
	ld   de, $2f11                                   ; $59b7: $11 $11 $2f
	rst  $38                                         ; $59ba: $ff
	db   $f4                                         ; $59bb: $f4
	ld   [de], a                                     ; $59bc: $12
	cp   a                                           ; $59bd: $bf
	ld   sp, hl                                      ; $59be: $f9
	ld   l, c                                        ; $59bf: $69
	ld   d, c                                        ; $59c0: $51
	ld   de, rAUD1LEN                                   ; $59c1: $11 $11 $ff
	rst  $38                                         ; $59c4: $ff
	sub  c                                           ; $59c5: $91
	add  hl, hl                                      ; $59c6: $29
	rst  $38                                         ; $59c7: $ff
	or   a                                           ; $59c8: $b7
	add  a                                           ; $59c9: $87
	ld   de, $1e11                                   ; $59ca: $11 $11 $1e
	rst  $38                                         ; $59cd: $ff
	ei                                               ; $59ce: $fb
	ld   de, $febf                                   ; $59cf: $11 $bf $fe
	ld   a, b                                        ; $59d2: $78
	ld   h, e                                        ; $59d3: $63
	ld   de, $8f12                                   ; $59d4: $11 $12 $8f
	rst  $38                                         ; $59d7: $ff
	push de                                          ; $59d8: $d5
	add  hl, de                                      ; $59d9: $19
	rst  $38                                         ; $59da: $ff
	ld   a, [$4196]                                  ; $59db: $fa $96 $41
	ld   de, $ff36                                   ; $59de: $11 $36 $ff
	ld   sp, hl                                      ; $59e1: $f9
	sub  c                                           ; $59e2: $91
	ld   c, a                                        ; $59e3: $4f
	db   $fd                                         ; $59e4: $fd
	swap e                                           ; $59e5: $cb $33
	ld   de, $6f12                                   ; $59e7: $11 $12 $6f
	rst  $38                                         ; $59ea: $ff
	sbc  c                                           ; $59eb: $99
	ld   b, e                                        ; $59ec: $43
	rst  $38                                         ; $59ed: $ff
	call c, $11c4                                    ; $59ee: $dc $c4 $11
	ld   de, $bf27                                   ; $59f1: $11 $27 $bf
	rst  $30                                         ; $59f4: $f7
	ld   l, b                                        ; $59f5: $68
	ld   e, l                                        ; $59f6: $5d
	rst  $38                                         ; $59f7: $ff
	xor  h                                           ; $59f8: $ac
	add  c                                           ; $59f9: $81
	ld   hl, $9511                                   ; $59fa: $21 $11 $95
	rst  $28                                         ; $59fd: $ef
	ld   [hl], e                                     ; $59fe: $73
	add  h                                           ; $59ff: $84
	ld   a, a                                        ; $5a00: $7f
	ld   a, [$34ab]                                  ; $5a01: $fa $ab $34
	sub  e                                           ; $5a04: $93
	ld   e, d                                        ; $5a05: $5a
	ld   l, b                                        ; $5a06: $68
	ret  c                                           ; $5a07: $d8

	dec  d                                           ; $5a08: $15
	ld   h, e                                        ; $5a09: $63
	xor  a                                           ; $5a0a: $af
	sub  a                                           ; $5a0b: $97
	cp   c                                           ; $5a0c: $b9
	ld   l, e                                        ; $5a0d: $6b
	and  [hl]                                        ; $5a0e: $a6
	xor  e                                           ; $5a0f: $ab
	ld   a, d                                        ; $5a10: $7a
	and  h                                           ; $5a11: $a4
	ld   [hl], $34                                   ; $5a12: $36 $34
	call $9679                                       ; $5a14: $cd $79 $96
	sbc  d                                           ; $5a17: $9a
	ld   e, c                                        ; $5a18: $59
	or   a                                           ; $5a19: $b7
	xor  e                                           ; $5a1a: $ab
	ld   h, d                                        ; $5a1b: $62
	ld   d, e                                        ; $5a1c: $53
	ld   c, e                                        ; $5a1d: $4b
	ld   a, [$5799]                                  ; $5a1e: $fa $99 $57
	or   l                                           ; $5a21: $b5
	ld   e, e                                        ; $5a22: $5b
	ld   a, c                                        ; $5a23: $79
	jp   c, $2333                                    ; $5a24: $da $33 $23

	xor  a                                           ; $5a27: $af
	db   $fd                                         ; $5a28: $fd
	rst  ToBoot                                         ; $5a29: $c7
	ld   hl, $7711                                   ; $5a2a: $21 $11 $77
	cp   a                                           ; $5a2d: $bf
	sub  l                                           ; $5a2e: $95
	ld   d, h                                        ; $5a2f: $54
	adc  a                                           ; $5a30: $8f
	rst  $38                                         ; $5a31: $ff
	db   $db                                         ; $5a32: $db
	ld   d, c                                        ; $5a33: $51
	ld   de, $9f14                                   ; $5a34: $11 $14 $9f
	ld   sp, hl                                      ; $5a37: $f9
	sub  a                                           ; $5a38: $97
	adc  a                                           ; $5a39: $8f
	rst  $38                                         ; $5a3a: $ff
	db   $eb                                         ; $5a3b: $eb
	ld   [hl], e                                     ; $5a3c: $73
	ld   de, $2e11                                   ; $5a3d: $11 $11 $2e
	rst  $38                                         ; $5a40: $ff
	cp   c                                           ; $5a41: $b9
	adc  e                                           ; $5a42: $8b
	rst  $38                                         ; $5a43: $ff
	db   $fc                                         ; $5a44: $fc
	and  e                                           ; $5a45: $a3
	ld   de, $1a11                                   ; $5a46: $11 $11 $1a
	rst  $38                                         ; $5a49: $ff
	xor  c                                           ; $5a4a: $a9
	adc  b                                           ; $5a4b: $88
	rst  $38                                         ; $5a4c: $ff
	ei                                               ; $5a4d: $fb
	add  $21                                         ; $5a4e: $c6 $21
	ld   de, $bf13                                   ; $5a50: $11 $13 $bf
	ld   sp, hl                                      ; $5a53: $f9
	ld   [hl], a                                     ; $5a54: $77
	sbc  a                                           ; $5a55: $9f
	rst  $38                                         ; $5a56: $ff
	cp   e                                           ; $5a57: $bb
	ld   h, c                                        ; $5a58: $61
	ld   de, $6c13                                   ; $5a59: $11 $13 $6c
	ld   hl, sp+$47                                  ; $5a5c: $f8 $47
	ld   l, b                                        ; $5a5e: $68
	rst  $38                                         ; $5a5f: $ff
	res  6, [hl]                                     ; $5a60: $cb $b6
	ld   b, l                                        ; $5a62: $45
	inc  de                                          ; $5a63: $13
	ld   [hl], a                                     ; $5a64: $77
	cp   h                                           ; $5a65: $bc
	ld   [hl], d                                     ; $5a66: $72
	inc  [hl]                                        ; $5a67: $34
	ld   a, a                                        ; $5a68: $7f
	ld   a, [$769a]                                  ; $5a69: $fa $9a $76
	ld   [hl], a                                     ; $5a6c: $77
	ld   a, c                                        ; $5a6d: $79
	sbc  h                                           ; $5a6e: $9c
	or   [hl]                                        ; $5a6f: $b6
	inc  de                                          ; $5a70: $13
	dec  [hl]                                        ; $5a71: $35
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a72: $cf
	cp   b                                           ; $5a73: $b8
	add  a                                           ; $5a74: $87
	ld   h, [hl]                                     ; $5a75: $66
	ld   c, c                                        ; $5a76: $49
	cp   e                                           ; $5a77: $bb
	db   $ed                                         ; $5a78: $ed
	ld   sp, $7f22                                   ; $5a79: $31 $22 $7f
	db   $fc                                         ; $5a7c: $fc
	add  a                                           ; $5a7d: $87
	ld   b, e                                        ; $5a7e: $43
	ld   [hl+], a                                    ; $5a7f: $22
	ld   l, c                                        ; $5a80: $69
	sbc  [hl]                                        ; $5a81: $9e
	jp   Jump_0f8_5f34                               ; $5a82: $c3 $34 $5f


	rst  $38                                         ; $5a85: $ff
	reti                                             ; $5a86: $d9


	ld   sp, $4611                                   ; $5a87: $31 $11 $46
	cp   a                                           ; $5a8a: $bf
	jp   $df6a                                       ; $5a8b: $c3 $6a $df


	rst  $38                                         ; $5a8e: $ff
	add  a                                           ; $5a8f: $87
	ld   hl, $1211                                   ; $5a90: $21 $11 $12
	rst  $28                                         ; $5a93: $ef
	ld   sp, hl                                      ; $5a94: $f9
	jp   z, $fcff                                    ; $5a95: $ca $ff $fc

	ld   h, [hl]                                     ; $5a98: $66
	ld   de, $1411                                   ; $5a99: $11 $11 $14
	rst  $38                                         ; $5a9c: $ff
	ei                                               ; $5a9d: $fb
	db   $fd                                         ; $5a9e: $fd
	rst  $38                                         ; $5a9f: $ff
	ld   hl, sp+$66                                  ; $5aa0: $f8 $66
	ld   de, $1a11                                   ; $5aa2: $11 $11 $1a
	rst  $38                                         ; $5aa5: $ff
	set  7, [hl]                                     ; $5aa6: $cb $fe
	rst  $38                                         ; $5aa8: $ff
	di                                               ; $5aa9: $f3
	ld   h, [hl]                                     ; $5aaa: $66
	ld   de, $1c11                                   ; $5aab: $11 $11 $1c
	rst  $38                                         ; $5aae: $ff
	cp   l                                           ; $5aaf: $bd
	cp   $ff                                         ; $5ab0: $fe $ff
	db   $e3                                         ; $5ab2: $e3
	halt                                             ; $5ab3: $76
	ld   de, $0f11                                   ; $5ab4: $11 $11 $0f
	rst  $38                                         ; $5ab7: $ff
	sbc  l                                           ; $5ab8: $9d
	db   $fd                                         ; $5ab9: $fd
	rst  $38                                         ; $5aba: $ff
	jp   $1195                                       ; $5abb: $c3 $95 $11


	ld   de, $ff1f                                   ; $5abe: $11 $1f $ff
	sbc  [hl]                                        ; $5ac1: $9e
	rst  $38                                         ; $5ac2: $ff
	rst  $38                                         ; $5ac3: $ff
	call nz, $11a4                                   ; $5ac4: $c4 $a4 $11
	ld   de, $ff1f                                   ; $5ac7: $11 $1f $ff
	xor  [hl]                                        ; $5aca: $ae
	cp   $ff                                         ; $5acb: $fe $ff
	db   $e4                                         ; $5acd: $e4
	add  h                                           ; $5ace: $84
	ld   de, $1e11                                   ; $5acf: $11 $11 $1e
	rst  $38                                         ; $5ad2: $ff
	xor  l                                           ; $5ad3: $ad
	cp   $ff                                         ; $5ad4: $fe $ff
	push af                                          ; $5ad6: $f5
	add  l                                           ; $5ad7: $85
	ld   de, $1c11                                   ; $5ad8: $11 $11 $1c
	rst  $38                                         ; $5adb: $ff
	sbc  h                                           ; $5adc: $9c
	cp   $ff                                         ; $5add: $fe $ff
	push af                                          ; $5adf: $f5
	ld   [hl], l                                     ; $5ae0: $75
	ld   de, $1b11                                   ; $5ae1: $11 $11 $1b
	rst  $38                                         ; $5ae4: $ff
	adc  l                                           ; $5ae5: $8d
	rst  $38                                         ; $5ae6: $ff
	rst  $38                                         ; $5ae7: $ff
	db   $f4                                         ; $5ae8: $f4
	ld   [hl], l                                     ; $5ae9: $75
	ld   de, $1d11                                   ; $5aea: $11 $11 $1d
	rst  $38                                         ; $5aed: $ff
	adc  l                                           ; $5aee: $8d
	cp   $ff                                         ; $5aef: $fe $ff
	db   $f4                                         ; $5af1: $f4
	ld   [hl], h                                     ; $5af2: $74
	ld   de, $1f11                                   ; $5af3: $11 $11 $1f
	rst  $38                                         ; $5af6: $ff
	ld   a, a                                        ; $5af7: $7f
	rst  $38                                         ; $5af8: $ff
	rst  $38                                         ; $5af9: $ff
	or   d                                           ; $5afa: $b2
	add  c                                           ; $5afb: $81
	ld   de, $3f11                                   ; $5afc: $11 $11 $3f
	db   $fc                                         ; $5aff: $fc
	sbc  a                                           ; $5b00: $9f
	rst  $38                                         ; $5b01: $ff
	rst  $38                                         ; $5b02: $ff
	ld   d, e                                        ; $5b03: $53
	sub  c                                           ; $5b04: $91
	ld   de, $8f11                                   ; $5b05: $11 $11 $8f
	rst  $30                                         ; $5b08: $f7
	rst  JumpTable                                         ; $5b09: $df
	rst  $38                                         ; $5b0a: $ff
	rst  $38                                         ; $5b0b: $ff
	rla                                              ; $5b0c: $17
	ld   d, c                                        ; $5b0d: $51
	ld   de, rAUD1LEN                                   ; $5b0e: $11 $11 $ff
	rst  $30                                         ; $5b11: $f7
	rst  $38                                         ; $5b12: $ff
	rst  $28                                         ; $5b13: $ef
	rst  $30                                         ; $5b14: $f7
	add  hl, hl                                      ; $5b15: $29
	ld   de, $1711                                   ; $5b16: $11 $11 $17
	rst  $38                                         ; $5b19: $ff
	adc  l                                           ; $5b1a: $8d
	rst  $38                                         ; $5b1b: $ff
	rst  $38                                         ; $5b1c: $ff
	pop  af                                          ; $5b1d: $f1
	halt                                             ; $5b1e: $76
	ld   de, $1f11                                   ; $5b1f: $11 $11 $1f
	rst  $38                                         ; $5b22: $ff
	cp   a                                           ; $5b23: $bf
	db   $fc                                         ; $5b24: $fc
	rst  $38                                         ; $5b25: $ff
	sub  h                                           ; $5b26: $94
	and  c                                           ; $5b27: $a1
	ld   de, $6f11                                   ; $5b28: $11 $11 $6f
	db   $fd                                         ; $5b2b: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b2c: $cf
	rst  $38                                         ; $5b2d: $ff
	rst  $38                                         ; $5b2e: $ff
	scf                                              ; $5b2f: $37
	ld   [hl], c                                     ; $5b30: $71
	ld   de, $bf11                                   ; $5b31: $11 $11 $bf
	ei                                               ; $5b34: $fb
	rst  $38                                         ; $5b35: $ff
	rst  $28                                         ; $5b36: $ef
	db   $fc                                         ; $5b37: $fc
	ld   e, d                                        ; $5b38: $5a
	ld   de, $1311                                   ; $5b39: $11 $11 $13
	rst  $38                                         ; $5b3c: $ff
	db   $fc                                         ; $5b3d: $fc
	rst  $38                                         ; $5b3e: $ff
	rst  $38                                         ; $5b3f: $ff
	rst  $30                                         ; $5b40: $f7
	ld   l, b                                        ; $5b41: $68
	ld   de, $1411                                   ; $5b42: $11 $11 $14
	rst  $38                                         ; $5b45: $ff
	rst  $38                                         ; $5b46: $ff
	cp   $ff                                         ; $5b47: $fe $ff
	rst  $30                                         ; $5b49: $f7
	sub  l                                           ; $5b4a: $95
	ld   de, $1811                                   ; $5b4b: $11 $11 $18
	rst  $38                                         ; $5b4e: $ff
	rst  $38                                         ; $5b4f: $ff
	db   $fd                                         ; $5b50: $fd
	rst  $38                                         ; $5b51: $ff
	ld   sp, hl                                      ; $5b52: $f9
	sub  e                                           ; $5b53: $93
	ld   de, $1911                                   ; $5b54: $11 $11 $19
	rst  $38                                         ; $5b57: $ff
	rst  $38                                         ; $5b58: $ff
	rst  $38                                         ; $5b59: $ff
	rst  $38                                         ; $5b5a: $ff
	ld   hl, sp+$73                                  ; $5b5b: $f8 $73
	ld   de, $1a11                                   ; $5b5d: $11 $11 $1a
	rst  $38                                         ; $5b60: $ff
	rst  $38                                         ; $5b61: $ff
	rst  $38                                         ; $5b62: $ff
	rst  $38                                         ; $5b63: $ff
	ld   sp, hl                                      ; $5b64: $f9
	add  e                                           ; $5b65: $83
	ld   de, $1a11                                   ; $5b66: $11 $11 $1a
	rst  $38                                         ; $5b69: $ff
	rst  $38                                         ; $5b6a: $ff
	rst  $38                                         ; $5b6b: $ff
	rst  $38                                         ; $5b6c: $ff
	ld   sp, hl                                      ; $5b6d: $f9
	sub  h                                           ; $5b6e: $94
	ld   de, $1811                                   ; $5b6f: $11 $11 $18
	rst  $38                                         ; $5b72: $ff
	rst  $38                                         ; $5b73: $ff
	rst  $38                                         ; $5b74: $ff
	rst  $38                                         ; $5b75: $ff
	ld   a, [$1183]                                  ; $5b76: $fa $83 $11
	ld   de, rAUD1HIGH                                   ; $5b79: $11 $14 $ff
	rst  $38                                         ; $5b7c: $ff
	rst  $38                                         ; $5b7d: $ff
	rst  $38                                         ; $5b7e: $ff
	db   $fc                                         ; $5b7f: $fc
	sub  e                                           ; $5b80: $93
	ld   de, $1111                                   ; $5b81: $11 $11 $11
	rst  $28                                         ; $5b84: $ef
	rst  $38                                         ; $5b85: $ff
	cp   $ff                                         ; $5b86: $fe $ff
	rst  $38                                         ; $5b88: $ff
	or   [hl]                                        ; $5b89: $b6
	ld   hl, $1111                                   ; $5b8a: $21 $11 $11
	xor  a                                           ; $5b8d: $af
	rst  $38                                         ; $5b8e: $ff
	rst  $38                                         ; $5b8f: $ff
	rst  $28                                         ; $5b90: $ef
	rst  $38                                         ; $5b91: $ff
	ret                                              ; $5b92: $c9


	ld   hl, $1111                                   ; $5b93: $21 $11 $11
	ld   l, $ff                                      ; $5b96: $2e $ff
	rst  $38                                         ; $5b98: $ff
	rst  $38                                         ; $5b99: $ff
	rst  $38                                         ; $5b9a: $ff
	ld   a, [$1141]                                  ; $5b9b: $fa $41 $11
	ld   de, $ff17                                   ; $5b9e: $11 $17 $ff
	rst  $38                                         ; $5ba1: $ff
	rst  $38                                         ; $5ba2: $ff
	rst  $38                                         ; $5ba3: $ff
	db   $fc                                         ; $5ba4: $fc
	ld   [hl], d                                     ; $5ba5: $72
	ld   de, $1111                                   ; $5ba6: $11 $11 $11
	cp   a                                           ; $5ba9: $bf
	rst  $38                                         ; $5baa: $ff
	rst  $38                                         ; $5bab: $ff
	rst  $38                                         ; $5bac: $ff
	rst  $38                                         ; $5bad: $ff
	or   l                                           ; $5bae: $b5
	ld   de, $1111                                   ; $5baf: $11 $11 $11
	ccf                                              ; $5bb2: $3f
	rst  $38                                         ; $5bb3: $ff
	rst  $38                                         ; $5bb4: $ff
	rst  $38                                         ; $5bb5: $ff
	rst  $38                                         ; $5bb6: $ff
	ld   [$1121], a                                  ; $5bb7: $ea $21 $11
	ld   de, $ff16                                   ; $5bba: $11 $16 $ff
	rst  $38                                         ; $5bbd: $ff
	rst  $38                                         ; $5bbe: $ff
	rst  $38                                         ; $5bbf: $ff
	db   $fd                                         ; $5bc0: $fd
	ld   [hl], d                                     ; $5bc1: $72
	ld   de, $1111                                   ; $5bc2: $11 $11 $11
	ld   a, a                                        ; $5bc5: $7f
	rst  $38                                         ; $5bc6: $ff
	rst  $38                                         ; $5bc7: $ff
	rst  JumpTable                                         ; $5bc8: $df
	rst  $38                                         ; $5bc9: $ff
	reti                                             ; $5bca: $d9


	ld   sp, $1111                                   ; $5bcb: $31 $11 $11
	rla                                              ; $5bce: $17
	rst  $38                                         ; $5bcf: $ff
	rst  $38                                         ; $5bd0: $ff
	cp   $ff                                         ; $5bd1: $fe $ff
	rst  $38                                         ; $5bd3: $ff
	and  c                                           ; $5bd4: $a1
	ld   [hl+], a                                    ; $5bd5: $22
	ld   de, $1f11                                   ; $5bd6: $11 $11 $1f
	rst  $38                                         ; $5bd9: $ff
	rst  $38                                         ; $5bda: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5bdb: $cf
	rst  $38                                         ; $5bdc: $ff
	db   $fc                                         ; $5bdd: $fc
	ld   hl, $1131                                   ; $5bde: $21 $31 $11
	ld   de, $ffbf                                   ; $5be1: $11 $bf $ff
	ei                                               ; $5be4: $fb
	rst  $38                                         ; $5be5: $ff
	rst  $38                                         ; $5be6: $ff
	push af                                          ; $5be7: $f5
	inc  d                                           ; $5be8: $14
	ld   de, $1311                                   ; $5be9: $11 $11 $13
	rst  $38                                         ; $5bec: $ff
	rst  $38                                         ; $5bed: $ff
	call c, $ffff                                    ; $5bee: $dc $ff $ff
	or   d                                           ; $5bf1: $b2
	inc  [hl]                                        ; $5bf2: $34
	ld   de, $1b11                                   ; $5bf3: $11 $11 $1b
	rst  $38                                         ; $5bf6: $ff
	rst  $38                                         ; $5bf7: $ff
	cp   a                                           ; $5bf8: $bf
	rst  $38                                         ; $5bf9: $ff
	rst  $38                                         ; $5bfa: $ff
	ld   h, e                                        ; $5bfb: $63
	ld   d, d                                        ; $5bfc: $52
	ld   de, $1d11                                   ; $5bfd: $11 $11 $1d
	rst  $38                                         ; $5c00: $ff
	cp   $cf                                         ; $5c01: $fe $cf
	rst  $38                                         ; $5c03: $ff
	rst  $38                                         ; $5c04: $ff
	ld   d, h                                        ; $5c05: $54
	ld   d, c                                        ; $5c06: $51
	ld   de, $1d11                                   ; $5c07: $11 $11 $1d
	rst  $38                                         ; $5c0a: $ff
	db   $fc                                         ; $5c0b: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c0c: $cf
	rst  $38                                         ; $5c0d: $ff
	cp   $53                                         ; $5c0e: $fe $53
	ld   b, e                                        ; $5c10: $43
	ld   de, $1a11                                   ; $5c11: $11 $11 $1a
	rst  $38                                         ; $5c14: $ff
	db   $fc                                         ; $5c15: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c16: $cf
	rst  $38                                         ; $5c17: $ff
	rst  $38                                         ; $5c18: $ff
	ld   [hl], h                                     ; $5c19: $74
	ld   b, [hl]                                     ; $5c1a: $46
	ld   de, $1511                                   ; $5c1b: $11 $11 $15
	rst  $38                                         ; $5c1e: $ff
	cp   $ad                                         ; $5c1f: $fe $ad
	rst  $38                                         ; $5c21: $ff
	rst  $38                                         ; $5c22: $ff
	and  e                                           ; $5c23: $a3
	ld   [hl], $71                                   ; $5c24: $36 $71
	ld   de, $9f11                                   ; $5c26: $11 $11 $9f
	rst  $38                                         ; $5c29: $ff
	jp   z, $ffdf                                    ; $5c2a: $ca $df $ff

	ld   hl, sp+$34                                  ; $5c2d: $f8 $34
	ld   a, c                                        ; $5c2f: $79
	ld   de, $1911                                   ; $5c30: $11 $11 $19
	rst  $38                                         ; $5c33: $ff
	db   $fc                                         ; $5c34: $fc
	adc  l                                           ; $5c35: $8d
	rst  $38                                         ; $5c36: $ff
	rst  $38                                         ; $5c37: $ff
	add  e                                           ; $5c38: $83
	ld   e, c                                        ; $5c39: $59
	or   l                                           ; $5c3a: $b5
	ld   de, $5f11                                   ; $5c3b: $11 $11 $5f
	rst  $38                                         ; $5c3e: $ff
	or   [hl]                                        ; $5c3f: $b6
	sbc  a                                           ; $5c40: $9f
	rst  $38                                         ; $5c41: $ff
	ld   a, [$7c34]                                  ; $5c42: $fa $34 $7c
	pop  de                                          ; $5c45: $d1
	ld   de, $df11                                   ; $5c46: $11 $11 $df
	cp   $74                                         ; $5c49: $fe $74
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c4b: $cf
	rst  $38                                         ; $5c4c: $ff
	push af                                          ; $5c4d: $f5
	inc  d                                           ; $5c4e: $14
	sbc  a                                           ; $5c4f: $9f
	pop  af                                          ; $5c50: $f1
	ld   de, rAUD1LEN                                   ; $5c51: $11 $11 $ff
	db   $fc                                         ; $5c54: $fc
	ld   b, c                                        ; $5c55: $41
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c56: $cf
	rst  $38                                         ; $5c57: $ff
	push af                                          ; $5c58: $f5
	dec  h                                           ; $5c59: $25
	cp   a                                           ; $5c5a: $bf
	ldh  a, [c]                                      ; $5c5b: $f2
	ld   de, $ef11                                   ; $5c5c: $11 $11 $ef
	db   $fc                                         ; $5c5f: $fc
	ld   sp, $ff9f                                   ; $5c60: $31 $9f $ff
	rst  $30                                         ; $5c63: $f7
	inc  [hl]                                        ; $5c64: $34
	xor  a                                           ; $5c65: $af
	ld   hl, sp+$11                                  ; $5c66: $f8 $11
	ld   de, $ff6f                                   ; $5c68: $11 $6f $ff
	ld   h, c                                        ; $5c6b: $61
	ld   c, a                                        ; $5c6c: $4f
	rst  $38                                         ; $5c6d: $ff
	db   $fd                                         ; $5c6e: $fd
	ld   d, h                                        ; $5c6f: $54
	ld   l, a                                        ; $5c70: $6f
	rst  $38                                         ; $5c71: $ff
	ld   de, $1e11                                   ; $5c72: $11 $11 $1e
	rst  $38                                         ; $5c75: $ff
	sub  d                                           ; $5c76: $92
	ld   a, [de]                                     ; $5c77: $1a
	rst  $38                                         ; $5c78: $ff
	rst  $38                                         ; $5c79: $ff
	sub  l                                           ; $5c7a: $95
	ld   e, c                                        ; $5c7b: $59
	rst  $38                                         ; $5c7c: $ff
	and  c                                           ; $5c7d: $a1
	ld   de, rAUD1ENV                                   ; $5c7e: $11 $12 $ff
	ret  c                                           ; $5c81: $d8

	inc  h                                           ; $5c82: $24
	rst  $28                                         ; $5c83: $ef
	rst  $38                                         ; $5c84: $ff
	ld   sp, hl                                      ; $5c85: $f9
	ld   d, l                                        ; $5c86: $55
	xor  a                                           ; $5c87: $af
	or   $11                                         ; $5c88: $f6 $11
	ld   de, $fd6f                                   ; $5c8a: $11 $6f $fd
	ld   h, c                                        ; $5c8d: $61
	ld   e, a                                        ; $5c8e: $5f
	rst  $38                                         ; $5c8f: $ff
	rst  $38                                         ; $5c90: $ff
	add  l                                           ; $5c91: $85
	ld   l, e                                        ; $5c92: $6b
	rst  $38                                         ; $5c93: $ff
	ld   d, c                                        ; $5c94: $51
	ld   de, $ff17                                   ; $5c95: $11 $17 $ff
	push bc                                          ; $5c98: $c5
	dec  d                                           ; $5c99: $15
	rst  $28                                         ; $5c9a: $ef
	rst  $38                                         ; $5c9b: $ff
	ld   hl, sp+$56                                  ; $5c9c: $f8 $56
	cp   a                                           ; $5c9e: $bf
	push af                                          ; $5c9f: $f5
	ld   de, $7f11                                   ; $5ca0: $11 $11 $7f
	db   $eb                                         ; $5ca3: $eb
	ld   b, c                                        ; $5ca4: $41
	ld   e, [hl]                                     ; $5ca5: $5e
	rst  $38                                         ; $5ca6: $ff
	rst  $38                                         ; $5ca7: $ff
	add  [hl]                                        ; $5ca8: $86
	ld   l, h                                        ; $5ca9: $6c
	rst  $38                                         ; $5caa: $ff
	ld   [hl], c                                     ; $5cab: $71
	ld   de, $dd15                                   ; $5cac: $11 $15 $dd
	sub  l                                           ; $5caf: $95
	inc  h                                           ; $5cb0: $24
	cp   a                                           ; $5cb1: $bf
	rst  $38                                         ; $5cb2: $ff
	ld   a, [$be77]                                  ; $5cb3: $fa $77 $be
	ei                                               ; $5cb6: $fb
	ld   de, $2c11                                   ; $5cb7: $11 $11 $2c
	ld   [$2961], a                                  ; $5cba: $ea $61 $29
	rst  $38                                         ; $5cbd: $ff
	rst  $38                                         ; $5cbe: $ff
	rst  ToBoot                                         ; $5cbf: $c7
	ld   a, c                                        ; $5cc0: $79
	rst  JumpTable                                         ; $5cc1: $df
	push de                                          ; $5cc2: $d5
	ld   de, $8c11                                   ; $5cc3: $11 $11 $8c
	or   a                                           ; $5cc6: $b7
	ld   sp, $ff4c                                   ; $5cc7: $31 $4c $ff
	cp   $a7                                         ; $5cca: $fe $a7
	adc  d                                           ; $5ccc: $8a
	xor  $a3                                         ; $5ccd: $ee $a3
	ld   de, $ab14                                   ; $5ccf: $11 $14 $ab
	add  h                                           ; $5cd2: $84
	ld   [hl+], a                                    ; $5cd3: $22
	ld   l, l                                        ; $5cd4: $6d
	rst  $38                                         ; $5cd5: $ff
	ei                                               ; $5cd6: $fb
	adc  b                                           ; $5cd7: $88
	xor  h                                           ; $5cd8: $ac
	db   $ed                                         ; $5cd9: $ed
	and  h                                           ; $5cda: $a4
	ld   de, $8815                                   ; $5cdb: $11 $15 $88
	ld   h, h                                        ; $5cde: $64
	inc  sp                                          ; $5cdf: $33
	ld   a, h                                        ; $5ce0: $7c
	rst  $38                                         ; $5ce1: $ff
	db   $eb                                         ; $5ce2: $eb
	sbc  d                                           ; $5ce3: $9a
	cp   h                                           ; $5ce4: $bc
	db   $db                                         ; $5ce5: $db
	add  l                                           ; $5ce6: $85
	ld   [hl+], a                                    ; $5ce7: $22
	ld   b, a                                        ; $5ce8: $47
	add  a                                           ; $5ce9: $87
	ld   d, e                                        ; $5cea: $53
	dec  [hl]                                        ; $5ceb: $35
	ld   a, d                                        ; $5cec: $7a
	call z, $9aa9                                    ; $5ced: $cc $a9 $9a
	cp   h                                           ; $5cf0: $bc
	jp   z, Jump_0f8_6677                            ; $5cf1: $ca $77 $66

	ld   [hl], a                                     ; $5cf4: $77
	halt                                             ; $5cf5: $76
	ld   d, l                                        ; $5cf6: $55
	ld   d, [hl]                                     ; $5cf7: $56
	ld   [hl], a                                     ; $5cf8: $77
	add  a                                           ; $5cf9: $87
	ld   a, b                                        ; $5cfa: $78
	xor  e                                           ; $5cfb: $ab
	cp   e                                           ; $5cfc: $bb
	xor  b                                           ; $5cfd: $a8
	add  a                                           ; $5cfe: $87
	sbc  e                                           ; $5cff: $9b
	sbc  c                                           ; $5d00: $99
	add  [hl]                                        ; $5d01: $86
	ld   h, [hl]                                     ; $5d02: $66
	ld   h, a                                        ; $5d03: $67
	ld   [hl], a                                     ; $5d04: $77
	ld   h, [hl]                                     ; $5d05: $66
	ld   h, [hl]                                     ; $5d06: $66
	ld   a, b                                        ; $5d07: $78
	sbc  c                                           ; $5d08: $99
	sbc  c                                           ; $5d09: $99
	adc  b                                           ; $5d0a: $88
	sbc  c                                           ; $5d0b: $99
	xor  c                                           ; $5d0c: $a9
	sbc  c                                           ; $5d0d: $99
	adc  b                                           ; $5d0e: $88
	adc  b                                           ; $5d0f: $88
	adc  b                                           ; $5d10: $88
	halt                                             ; $5d11: $76
	ld   h, [hl]                                     ; $5d12: $66
	ld   h, [hl]                                     ; $5d13: $66
	ld   [hl], a                                     ; $5d14: $77
	ld   [hl], a                                     ; $5d15: $77
	ld   a, b                                        ; $5d16: $78
	adc  b                                           ; $5d17: $88
	sbc  c                                           ; $5d18: $99
	xor  c                                           ; $5d19: $a9
	sbc  c                                           ; $5d1a: $99
	xor  c                                           ; $5d1b: $a9
	sbc  d                                           ; $5d1c: $9a
	adc  b                                           ; $5d1d: $88
	ld   [hl], a                                     ; $5d1e: $77
	halt                                             ; $5d1f: $76
	ld   h, [hl]                                     ; $5d20: $66
	ld   h, [hl]                                     ; $5d21: $66
	ld   h, [hl]                                     ; $5d22: $66
	ld   [hl], a                                     ; $5d23: $77
	adc  c                                           ; $5d24: $89
	adc  c                                           ; $5d25: $89
	sbc  d                                           ; $5d26: $9a
	xor  c                                           ; $5d27: $a9
	sbc  d                                           ; $5d28: $9a
	sbc  c                                           ; $5d29: $99
	sbc  c                                           ; $5d2a: $99
	sbc  b                                           ; $5d2b: $98
	sub  a                                           ; $5d2c: $97
	halt                                             ; $5d2d: $76
	ld   h, [hl]                                     ; $5d2e: $66
	ld   h, [hl]                                     ; $5d2f: $66
	ld   h, a                                        ; $5d30: $67
	ld   [hl], a                                     ; $5d31: $77
	ld   a, b                                        ; $5d32: $78
	adc  c                                           ; $5d33: $89
	sbc  c                                           ; $5d34: $99
	sbc  c                                           ; $5d35: $99
	sbc  c                                           ; $5d36: $99
	sbc  c                                           ; $5d37: $99
	sbc  b                                           ; $5d38: $98
	sbc  b                                           ; $5d39: $98
	adc  b                                           ; $5d3a: $88
	ld   [hl], a                                     ; $5d3b: $77
	ld   [hl], a                                     ; $5d3c: $77
	ld   [hl], a                                     ; $5d3d: $77
	ld   [hl], a                                     ; $5d3e: $77
	ld   [hl], a                                     ; $5d3f: $77
	ld   a, b                                        ; $5d40: $78
	adc  c                                           ; $5d41: $89
	sbc  b                                           ; $5d42: $98
	adc  b                                           ; $5d43: $88
	adc  c                                           ; $5d44: $89
	sbc  c                                           ; $5d45: $99
	sbc  c                                           ; $5d46: $99
	sbc  c                                           ; $5d47: $99
	sbc  c                                           ; $5d48: $99
	adc  b                                           ; $5d49: $88
	adc  b                                           ; $5d4a: $88
	ld   [hl], a                                     ; $5d4b: $77
	ld   [hl], a                                     ; $5d4c: $77
	ld   [hl], a                                     ; $5d4d: $77
	ld   [hl], a                                     ; $5d4e: $77
	ld   [hl], a                                     ; $5d4f: $77
	adc  b                                           ; $5d50: $88
	adc  c                                           ; $5d51: $89
	sbc  c                                           ; $5d52: $99
	sbc  c                                           ; $5d53: $99
	sbc  c                                           ; $5d54: $99
	sbc  c                                           ; $5d55: $99
	sbc  c                                           ; $5d56: $99
	sbc  c                                           ; $5d57: $99
	sbc  b                                           ; $5d58: $98
	adc  b                                           ; $5d59: $88
	add  a                                           ; $5d5a: $87
	ld   [hl], a                                     ; $5d5b: $77
	ld   [hl], a                                     ; $5d5c: $77
	ld   [hl], a                                     ; $5d5d: $77
	ld   a, b                                        ; $5d5e: $78
	adc  b                                           ; $5d5f: $88
	adc  c                                           ; $5d60: $89
	sbc  c                                           ; $5d61: $99
	sbc  c                                           ; $5d62: $99
	adc  b                                           ; $5d63: $88
	adc  b                                           ; $5d64: $88
	adc  b                                           ; $5d65: $88
	adc  b                                           ; $5d66: $88
	adc  b                                           ; $5d67: $88
	adc  b                                           ; $5d68: $88
	adc  b                                           ; $5d69: $88
	adc  b                                           ; $5d6a: $88
	adc  b                                           ; $5d6b: $88
	add  a                                           ; $5d6c: $87
	ld   [hl], a                                     ; $5d6d: $77
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
	ld   a, b                                        ; $5ef9: $78
	adc  b                                           ; $5efa: $88
	sbc  b                                           ; $5efb: $98
	adc  b                                           ; $5efc: $88
	adc  c                                           ; $5efd: $89
	adc  b                                           ; $5efe: $88
	adc  b                                           ; $5eff: $88
	sbc  b                                           ; $5f00: $98
	add  a                                           ; $5f01: $87
	ld   a, b                                        ; $5f02: $78
	adc  c                                           ; $5f03: $89
	sbc  b                                           ; $5f04: $98
	ld   [hl], a                                     ; $5f05: $77
	adc  c                                           ; $5f06: $89
	sbc  b                                           ; $5f07: $98
	add  a                                           ; $5f08: $87
	ld   a, c                                        ; $5f09: $79
	sbc  c                                           ; $5f0a: $99
	add  a                                           ; $5f0b: $87
	ld   a, c                                        ; $5f0c: $79
	sbc  b                                           ; $5f0d: $98
	add  a                                           ; $5f0e: $87
	ld   a, b                                        ; $5f0f: $78
	sbc  c                                           ; $5f10: $99
	add  a                                           ; $5f11: $87
	ld   a, b                                        ; $5f12: $78
	sbc  c                                           ; $5f13: $99
	adc  b                                           ; $5f14: $88
	adc  b                                           ; $5f15: $88
	adc  c                                           ; $5f16: $89
	sbc  b                                           ; $5f17: $98
	ld   [hl], a                                     ; $5f18: $77
	adc  c                                           ; $5f19: $89
	adc  b                                           ; $5f1a: $88
	adc  b                                           ; $5f1b: $88
	ld   a, b                                        ; $5f1c: $78
	sbc  c                                           ; $5f1d: $99
	ld   [hl], a                                     ; $5f1e: $77
	adc  c                                           ; $5f1f: $89
	add  a                                           ; $5f20: $87
	ld   [hl], a                                     ; $5f21: $77
	sbc  c                                           ; $5f22: $99
	sbc  b                                           ; $5f23: $98
	ld   [hl], a                                     ; $5f24: $77
	adc  c                                           ; $5f25: $89
	sbc  b                                           ; $5f26: $98
	ld   [hl], a                                     ; $5f27: $77
	sbc  d                                           ; $5f28: $9a
	sbc  b                                           ; $5f29: $98
	ld   [hl], a                                     ; $5f2a: $77
	adc  b                                           ; $5f2b: $88
	sbc  c                                           ; $5f2c: $99
	ld   [hl], a                                     ; $5f2d: $77
	adc  b                                           ; $5f2e: $88
	adc  b                                           ; $5f2f: $88
	halt                                             ; $5f30: $76
	ld   a, c                                        ; $5f31: $79
	adc  b                                           ; $5f32: $88
	halt                                             ; $5f33: $76

Jump_0f8_5f34:
	ld   l, b                                        ; $5f34: $68
	adc  c                                           ; $5f35: $89
	xor  b                                           ; $5f36: $a8
	adc  b                                           ; $5f37: $88
	sbc  d                                           ; $5f38: $9a
	sbc  b                                           ; $5f39: $98
	ld   [hl], a                                     ; $5f3a: $77
	ld   [hl], a                                     ; $5f3b: $77
	ld   a, b                                        ; $5f3c: $78
	add  a                                           ; $5f3d: $87
	ld   h, [hl]                                     ; $5f3e: $66
	ld   a, b                                        ; $5f3f: $78
	sbc  d                                           ; $5f40: $9a
	add  a                                           ; $5f41: $87
	ld   a, c                                        ; $5f42: $79
	xor  d                                           ; $5f43: $aa
	xor  d                                           ; $5f44: $aa
	xor  d                                           ; $5f45: $aa
	sbc  b                                           ; $5f46: $98
	sbc  b                                           ; $5f47: $98
	ld   h, h                                        ; $5f48: $64
	ld   d, a                                        ; $5f49: $57
	ld   h, [hl]                                     ; $5f4a: $66
	halt                                             ; $5f4b: $76
	ld   l, b                                        ; $5f4c: $68
	sbc  c                                           ; $5f4d: $99
	ld   a, b                                        ; $5f4e: $78
	adc  d                                           ; $5f4f: $8a
	jp   z, $a9aa                                    ; $5f50: $ca $aa $a9

	sub  l                                           ; $5f53: $95

Call_0f8_5f54:
	inc  h                                           ; $5f54: $24
	xor  l                                           ; $5f55: $ad
	ld   h, e                                        ; $5f56: $63
	dec  [hl]                                        ; $5f57: $35
	xor  l                                           ; $5f58: $ad
	or   [hl]                                        ; $5f59: $b6
	ld   c, b                                        ; $5f5a: $48
	cp   l                                           ; $5f5b: $bd
	ld   [$ccac], a                                  ; $5f5c: $ea $ac $cc
	sub  c                                           ; $5f5f: $91
	ld   de, $f81e                                   ; $5f60: $11 $1e $f8
	ld   b, e                                        ; $5f63: $43
	ld   a, a                                        ; $5f64: $7f
	db   $fd                                         ; $5f65: $fd
	ld   b, d                                        ; $5f66: $42
	ld   l, l                                        ; $5f67: $6d
	rst  $38                                         ; $5f68: $ff
	xor  b                                           ; $5f69: $a8
	xor  l                                           ; $5f6a: $ad
	and  c                                           ; $5f6b: $a1
	ld   de, $fa7f                                   ; $5f6c: $11 $7f $fa
	ld   b, c                                        ; $5f6f: $41
	adc  a                                           ; $5f70: $8f
	ld   sp, hl                                      ; $5f71: $f9
	ld   de, $ff5f                                   ; $5f72: $11 $5f $ff
	adc  d                                           ; $5f75: $8a
	db   $eb                                         ; $5f76: $eb
	ld   de, rAUD1LEN                                   ; $5f77: $11 $11 $ff
	ld   sp, hl                                      ; $5f7a: $f9
	dec  [hl]                                        ; $5f7b: $35
	rst  $38                                         ; $5f7c: $ff
	or   c                                           ; $5f7d: $b1
	ld   de, $fccf                                   ; $5f7e: $11 $cf $fc
	xor  [hl]                                        ; $5f81: $ae
	pop  de                                          ; $5f82: $d1
	ld   de, $ff1f                                   ; $5f83: $11 $1f $ff
	rst  ToBoot                                         ; $5f86: $c7
	ld   c, a                                        ; $5f87: $4f
	ld   sp, hl                                      ; $5f88: $f9
	ld   de, $ff1b                                   ; $5f89: $11 $1b $ff
	db   $fd                                         ; $5f8c: $fd
	sbc  $41                                         ; $5f8d: $de $41
	ld   de, $ff1f                                   ; $5f8f: $11 $1f $ff
	ld   [$e14f], a                                  ; $5f92: $ea $4f $e1
	ld   de, $ff8f                                   ; $5f95: $11 $8f $ff
	xor  $77                                         ; $5f98: $ee $77
	ld   de, $1f11                                   ; $5f9a: $11 $11 $1f
	rst  $38                                         ; $5f9d: $ff
	db   $fd                                         ; $5f9e: $fd
	ld   de, $1181                                   ; $5f9f: $11 $81 $11
	ld   e, a                                        ; $5fa2: $5f
	rst  $38                                         ; $5fa3: $ff
	or   $11                                         ; $5fa4: $f6 $11
	inc  d                                           ; $5fa6: $14
	add  c                                           ; $5fa7: $81
	ld   de, $feff                                   ; $5fa8: $11 $ff $fe
	ld   de, $8c1f                                   ; $5fab: $11 $1f $8c
	rra                                              ; $5fae: $1f
	rst  $38                                         ; $5faf: $ff
	push af                                          ; $5fb0: $f5
	ld   de, $f71f                                   ; $5fb1: $11 $1f $f7
	ld   de, $feff                                   ; $5fb4: $11 $ff $fe
	ld   de, $ff1f                                   ; $5fb7: $11 $1f $ff
	ld   de, $ffff                                   ; $5fba: $11 $ff $ff
	ld   de, $f61f                                   ; $5fbd: $11 $1f $f6
	ld   de, $ff9f                                   ; $5fc0: $11 $9f $ff
	ld   de, $ff19                                   ; $5fc3: $11 $19 $ff
	ld   [hl], c                                     ; $5fc6: $71
	rst  $28                                         ; $5fc7: $ef
	rst  $38                                         ; $5fc8: $ff
	ld   de, $f71f                                   ; $5fc9: $11 $1f $f7
	ld   de, $ff1f                                   ; $5fcc: $11 $1f $ff
	ld   de, rAUD1LEN                                   ; $5fcf: $11 $11 $ff
	pop  de                                          ; $5fd2: $d1
	ld   a, a                                        ; $5fd3: $7f
	rst  $38                                         ; $5fd4: $ff
	ld   de, $ff1f                                   ; $5fd5: $11 $1f $ff
	ld   de, $ff1f                                   ; $5fd8: $11 $1f $ff
	ld   hl, rAUD1LEN                                   ; $5fdb: $21 $11 $ff
	pop  af                                          ; $5fde: $f1
	rra                                              ; $5fdf: $1f
	rst  $38                                         ; $5fe0: $ff
	ld   hl, $ff1f                                   ; $5fe1: $21 $1f $ff
	ld   de, $ff1a                                   ; $5fe4: $11 $1a $ff
	pop  af                                          ; $5fe7: $f1
	ld   de, $f97f                                   ; $5fe8: $11 $7f $f9
	inc  e                                           ; $5feb: $1c
	rst  $38                                         ; $5fec: $ff
	ld   [hl], c                                     ; $5fed: $71
	ld   a, [de]                                     ; $5fee: $1a
	rst  $38                                         ; $5fef: $ff
	ld   [hl], c                                     ; $5ff0: $71
	ld   de, $f1ff                                   ; $5ff1: $11 $ff $f1
	ld   de, $fc1f                                   ; $5ff4: $11 $1f $fc
	ld   d, d                                        ; $5ff7: $52
	rst  $38                                         ; $5ff8: $ff
	or   c                                           ; $5ff9: $b1
	ld   de, $f1ff                                   ; $5ffa: $11 $ff $f1
	ld   de, $ff1f                                   ; $5ffd: $11 $1f $ff
	ld   de, rAUD1LEN                                   ; $6000: $11 $11 $ff
	sub  h                                           ; $6003: $94
	sbc  a                                           ; $6004: $9f
	di                                               ; $6005: $f3
	ld   de, $fe9f                                   ; $6006: $11 $9f $fe
	ld   de, $ff1f                                   ; $6009: $11 $1f $ff
	pop  af                                          ; $600c: $f1
	ld   de, $fa6f                                   ; $600d: $11 $6f $fa
	ld   e, a                                        ; $6010: $5f
	db   $fc                                         ; $6011: $fc
	ld   de, $ff1f                                   ; $6012: $11 $1f $ff
	ld   sp, rAUD1LEN                                   ; $6015: $31 $11 $ff
	push af                                          ; $6018: $f5
	ld   de, $fc1e                                   ; $6019: $11 $1e $fc
	add  a                                           ; $601c: $87
	rst  $38                                         ; $601d: $ff
	ld   h, c                                        ; $601e: $61
	ld   de, $f1ff                                   ; $601f: $11 $ff $f1
	ld   de, $ff1f                                   ; $6022: $11 $1f $ff
	ld   de, rAUD1LEN                                   ; $6025: $11 $11 $ff
	cp   c                                           ; $6028: $b9
	xor  a                                           ; $6029: $af
	pop  af                                          ; $602a: $f1
	ld   de, $ff4f                                   ; $602b: $11 $4f $ff
	ld   de, rAUD1LEN                                   ; $602e: $11 $11 $ff
	pop  af                                          ; $6031: $f1
	ld   de, $fa1f                                   ; $6032: $11 $1f $fa
	sbc  l                                           ; $6035: $9d
	cp   $11                                         ; $6036: $fe $11
	dec  de                                          ; $6038: $1b
	rst  $38                                         ; $6039: $ff
	pop  bc                                          ; $603a: $c1
	ld   de, $ffff                                   ; $603b: $11 $ff $ff
	ld   de, $ff16                                   ; $603e: $11 $16 $ff
	sbc  b                                           ; $6041: $98
	rst  $38                                         ; $6042: $ff
	pop  bc                                          ; $6043: $c1
	ld   de, $f6ff                                   ; $6044: $11 $ff $f6
	ld   de, $ff1f                                   ; $6047: $11 $1f $ff
	or   c                                           ; $604a: $b1
	ld   de, $d8cf                                   ; $604b: $11 $cf $d8
	xor  a                                           ; $604e: $af
	ld   sp, hl                                      ; $604f: $f9
	ld   de, $ff1f                                   ; $6050: $11 $1f $ff
	ld   de, rAUD1LEN                                   ; $6053: $11 $11 $ff
	db   $f4                                         ; $6056: $f4
	ld   de, $fb1f                                   ; $6057: $11 $1f $fb
	adc  e                                           ; $605a: $8b
	rst  $38                                         ; $605b: $ff
	ld   d, c                                        ; $605c: $51
	ld   de, $f1ff                                   ; $605d: $11 $ff $f1
	ld   de, $ff1f                                   ; $6060: $11 $1f $ff
	ld   de, rAUD1LEN                                   ; $6063: $11 $11 $ff
	add  l                                           ; $6066: $85
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6067: $cf
	di                                               ; $6068: $f3
	ld   de, $ff1f                                   ; $6069: $11 $1f $ff
	ld   de, rAUD1LEN                                   ; $606c: $11 $11 $ff
	pop  af                                          ; $606f: $f1
	ld   de, $f71f                                   ; $6070: $11 $1f $f7
	ld   c, l                                        ; $6073: $4d
	rst  $38                                         ; $6074: $ff
	ld   sp, rAUD1LEN                                   ; $6075: $31 $11 $ff
	pop  af                                          ; $6078: $f1
	ld   de, $ff1f                                   ; $6079: $11 $1f $ff
	ld   de, rAUD1LEN                                   ; $607c: $11 $11 $ff
	ld   h, h                                        ; $607f: $64
	rst  JumpTable                                         ; $6080: $df
	or   $11                                         ; $6081: $f6 $11
	rra                                              ; $6083: $1f
	rst  $38                                         ; $6084: $ff
	ld   de, rAUD1LEN                                   ; $6085: $11 $11 $ff
	pop  af                                          ; $6088: $f1
	ld   de, $f71f                                   ; $6089: $11 $1f $f7
	dec  hl                                          ; $608c: $2b
	rst  $38                                         ; $608d: $ff
	and  c                                           ; $608e: $a1
	ld   de, $f1ff                                   ; $608f: $11 $ff $f1
	ld   de, $ff1f                                   ; $6092: $11 $1f $ff
	ld   de, rAUD1LEN                                   ; $6095: $11 $11 $ff
	ld   [hl], c                                     ; $6098: $71
	ld   a, a                                        ; $6099: $7f
	rst  $38                                         ; $609a: $ff
	ld   hl, $ff1f                                   ; $609b: $21 $1f $ff
	ld   hl, rAUD1LEN                                   ; $609e: $21 $11 $ff
	db   $f4                                         ; $60a1: $f4
	ld   de, $f91f                                   ; $60a2: $11 $1f $f9
	inc  de                                          ; $60a5: $13
	rst  JumpTable                                         ; $60a6: $df
	ld   sp, hl                                      ; $60a7: $f9
	ld   de, $fa9f                                   ; $60a8: $11 $9f $fa
	ld   de, $ff1f                                   ; $60ab: $11 $1f $ff
	pop  af                                          ; $60ae: $f1
	ld   de, $f4ff                                   ; $60af: $11 $ff $f4
	dec  d                                           ; $60b2: $15
	rst  $38                                         ; $60b3: $ff
	pop  af                                          ; $60b4: $f1
	ld   de, $f1ef                                   ; $60b5: $11 $ef $f1
	ld   de, $ff1f                                   ; $60b8: $11 $1f $ff
	ld   de, rAUD1LOW                                   ; $60bb: $11 $13 $ff
	sub  c                                           ; $60be: $91
	inc  e                                           ; $60bf: $1c
	rst  $38                                         ; $60c0: $ff
	pop  hl                                          ; $60c1: $e1
	inc  de                                          ; $60c2: $13
	rst  $38                                         ; $60c3: $ff
	add  c                                           ; $60c4: $81
	ld   de, $ffcf                                   ; $60c5: $11 $cf $ff
	ld   de, $fe1d                                   ; $60c8: $11 $1d $fe
	ld   h, c                                        ; $60cb: $61
	dec  de                                          ; $60cc: $1b
	rst  $38                                         ; $60cd: $ff
	pop  de                                          ; $60ce: $d1
	dec  d                                           ; $60cf: $15
	rst  $38                                         ; $60d0: $ff
	ld   b, c                                        ; $60d1: $41
	ld   de, $ff8f                                   ; $60d2: $11 $8f $ff
	ld   de, $fc3d                                   ; $60d5: $11 $3d $fc
	add  e                                           ; $60d8: $83
	ld   h, $ab                                      ; $60d9: $26 $ab
	ret  z                                           ; $60db: $c8

	adc  c                                           ; $60dc: $89
	xor  c                                           ; $60dd: $a9
	ld   h, [hl]                                     ; $60de: $66
	ld   b, l                                        ; $60df: $45
	ld   e, b                                        ; $60e0: $58
	cp   d                                           ; $60e1: $ba
	ld   [hl], l                                     ; $60e2: $75
	ld   b, [hl]                                     ; $60e3: $46
	cp   h                                           ; $60e4: $bc
	jp   hl                                          ; $60e5: $e9


	ld   d, h                                        ; $60e6: $54
	ld   a, e                                        ; $60e7: $7b
	res  0, [hl]                                     ; $60e8: $cb $86
	ld   l, d                                        ; $60ea: $6a
	xor  c                                           ; $60eb: $a9
	ld   d, e                                        ; $60ec: $53
	ld   b, a                                        ; $60ed: $47
	cp   l                                           ; $60ee: $bd
	sub  h                                           ; $60ef: $94
	inc  hl                                          ; $60f0: $23
	adc  h                                           ; $60f1: $8c
	jp   c, Jump_0f8_7a54                            ; $60f2: $da $54 $7a

	call c, Call_0f8_7b75                            ; $60f5: $dc $75 $7b
	cp   c                                           ; $60f8: $b9
	ld   d, d                                        ; $60f9: $52
	scf                                              ; $60fa: $37
	cp   l                                           ; $60fb: $bd
	and  h                                           ; $60fc: $a4
	ld   [hl+], a                                    ; $60fd: $22
	ld   a, e                                        ; $60fe: $7b
	jp   c, Jump_0f8_7c65                            ; $60ff: $da $65 $7c

	db   $db                                         ; $6102: $db
	add  a                                           ; $6103: $87
	adc  e                                           ; $6104: $8b
	cp   c                                           ; $6105: $b9
	ld   b, c                                        ; $6106: $41
	ld   h, $bb                                      ; $6107: $26 $bb
	and  l                                           ; $6109: $a5
	ld   [hl-], a                                    ; $610a: $32
	ld   e, d                                        ; $610b: $5a
	call Call_0f8_7a96                               ; $610c: $cd $96 $7a
	cp   l                                           ; $610f: $bd
	xor  c                                           ; $6110: $a9
	ld   a, b                                        ; $6111: $78
	xor  b                                           ; $6112: $a8
	ld   h, d                                        ; $6113: $62
	inc  de                                          ; $6114: $13
	adc  h                                           ; $6115: $8c
	rst  ToBoot                                         ; $6116: $c7
	ld   b, e                                        ; $6117: $43
	ld   c, d                                        ; $6118: $4a
	adc  $b7                                         ; $6119: $ce $b7
	ld   e, b                                        ; $611b: $58
	cp   l                                           ; $611c: $bd
	ret                                              ; $611d: $c9


	ld   [hl], a                                     ; $611e: $77
	cp   c                                           ; $611f: $b9
	ld   [hl], d                                     ; $6120: $72
	ld   de, $d96b                                   ; $6121: $11 $6b $d9
	ld   b, h                                        ; $6124: $44
	ld   c, c                                        ; $6125: $49
	adc  $c7                                         ; $6126: $ce $c7
	ld   b, [hl]                                     ; $6128: $46
	cp   l                                           ; $6129: $bd
	ret  z                                           ; $612a: $c8

	add  a                                           ; $612b: $87
	xor  e                                           ; $612c: $ab
	ld   [hl], e                                     ; $612d: $73
	ld   de, $fc5b                                   ; $612e: $11 $5b $fc
	ld   d, h                                        ; $6131: $54
	add  hl, sp                                      ; $6132: $39
	rst  $38                                         ; $6133: $ff
	sub  $35                                         ; $6134: $d6 $35
	xor  h                                           ; $6136: $ac
	ret                                              ; $6137: $c9


	add  a                                           ; $6138: $87
	sbc  d                                           ; $6139: $9a
	ld   [hl], e                                     ; $613a: $73
	ld   de, $fe4e                                   ; $613b: $11 $4e $fe
	ld   b, e                                        ; $613e: $43
	daa                                              ; $613f: $27
	rst  $38                                         ; $6140: $ff
	push af                                          ; $6141: $f5
	inc  d                                           ; $6142: $14
	cp   [hl]                                        ; $6143: $be
	jp   c, $ab97                                    ; $6144: $da $97 $ab

	ld   [hl], e                                     ; $6147: $73
	ld   de, $ff2f                                   ; $6148: $11 $2f $ff
	ld   b, c                                        ; $614b: $41
	rla                                              ; $614c: $17
	rst  $38                                         ; $614d: $ff
	db   $e3                                         ; $614e: $e3
	ld   [de], a                                     ; $614f: $12
	cp   a                                           ; $6150: $bf
	ld   a, [$ab88]                                  ; $6151: $fa $88 $ab
	ld   [hl], d                                     ; $6154: $72
	ld   de, $ff1e                                   ; $6155: $11 $1e $ff
	ld   [hl], c                                     ; $6158: $71
	dec  d                                           ; $6159: $15
	rst  $38                                         ; $615a: $ff
	push af                                          ; $615b: $f5
	ld   de, $fc9f                                   ; $615c: $11 $9f $fc
	ld   a, d                                        ; $615f: $7a
	xor  h                                           ; $6160: $ac
	ld   [hl], e                                     ; $6161: $73
	ld   de, $ff19                                   ; $6162: $11 $19 $ff
	pop  de                                          ; $6165: $d1
	ld   [de], a                                     ; $6166: $12
	rst  JumpTable                                         ; $6167: $df
	ld   sp, hl                                      ; $6168: $f9
	ld   de, $fe7f                                   ; $6169: $11 $7f $fe
	ld   a, c                                        ; $616c: $79
	xor  l                                           ; $616d: $ad
	sub  d                                           ; $616e: $92
	ld   de, rAUD1LOW                                   ; $616f: $11 $13 $ff
	ldh  a, [c]                                      ; $6172: $f2
	ld   de, $faaf                                   ; $6173: $11 $af $fa
	ld   de, $ff4f                                   ; $6176: $11 $4f $ff
	add  a                                           ; $6179: $87
	xor  l                                           ; $617a: $ad
	jp   $1111                                       ; $617b: $c3 $11 $11


	rst  $38                                         ; $617e: $ff
	rst  $30                                         ; $617f: $f7
	ld   de, $fc2f                                   ; $6180: $11 $2f $fc
	ld   de, $ff2f                                   ; $6183: $11 $2f $ff
	and  e                                           ; $6186: $a3
	adc  e                                           ; $6187: $8b
	call nc, $1111                                   ; $6188: $d4 $11 $11
	rst  $38                                         ; $618b: $ff
	rst  $38                                         ; $618c: $ff
	ld   de, $ee19                                   ; $618d: $11 $19 $ee
	ld   d, c                                        ; $6190: $51
	rra                                              ; $6191: $1f
	rst  $38                                         ; $6192: $ff
	pop  de                                          ; $6193: $d1
	ld   c, b                                        ; $6194: $48
	ret  z                                           ; $6195: $c8

	ld   de, $5f11                                   ; $6196: $11 $11 $5f
	rst  $38                                         ; $6199: $ff
	ld   de, $de11                                   ; $619a: $11 $11 $de
	or   c                                           ; $619d: $b1
	inc  e                                           ; $619e: $1c
	rst  $38                                         ; $619f: $ff
	pop  af                                          ; $61a0: $f1
	dec  d                                           ; $61a1: $15
	cp   [hl]                                        ; $61a2: $be
	ld   d, c                                        ; $61a3: $51
	ld   de, $ff1f                                   ; $61a4: $11 $1f $ff
	ld   h, c                                        ; $61a7: $61
	ld   de, $f6bf                                   ; $61a8: $11 $bf $f6
	jr   @+$01                                       ; $61ab: $18 $ff

	pop  af                                          ; $61ad: $f1
	ld   de, $e2df                                   ; $61ae: $11 $df $e2
	ld   de, $ff1f                                   ; $61b1: $11 $1f $ff
	pop  de                                          ; $61b4: $d1
	ld   de, $f8cf                                   ; $61b5: $11 $cf $f8
	inc  de                                          ; $61b8: $13
	rst  $38                                         ; $61b9: $ff
	pop  af                                          ; $61ba: $f1
	ld   de, $f4ff                                   ; $61bb: $11 $ff $f4
	ld   de, $ff1f                                   ; $61be: $11 $1f $ff
	pop  af                                          ; $61c1: $f1
	ld   de, $f8bf                                   ; $61c2: $11 $bf $f8
	ld   [de], a                                     ; $61c5: $12
	rst  $38                                         ; $61c6: $ff
	pop  af                                          ; $61c7: $f1
	ld   de, $f6ff                                   ; $61c8: $11 $ff $f6
	ld   de, $ff1b                                   ; $61cb: $11 $1b $ff
	pop  af                                          ; $61ce: $f1
	ld   de, $fa7f                                   ; $61cf: $11 $7f $fa
	ld   de, $f1ff                                   ; $61d2: $11 $ff $f1
	ld   de, $f9ff                                   ; $61d5: $11 $ff $f9
	ld   de, rAUD1LOW                                   ; $61d8: $11 $13 $ff
	pop  af                                          ; $61db: $f1
	ld   de, $fc1f                                   ; $61dc: $11 $1f $fc
	ld   de, $f1ff                                   ; $61df: $11 $ff $f1
	ld   de, $fbff                                   ; $61e2: $11 $ff $fb
	ld   de, rAUD1LEN                                   ; $61e5: $11 $11 $ff
	pop  af                                          ; $61e8: $f1
	ld   de, $fe1f                                   ; $61e9: $11 $1f $fe
	ld   hl, $f1ff                                   ; $61ec: $21 $ff $f1
	ld   de, $feff                                   ; $61ef: $11 $ff $fe
	ld   de, rAUD1LEN                                   ; $61f2: $11 $11 $ff
	pop  af                                          ; $61f5: $f1
	ld   de, $ff1f                                   ; $61f6: $11 $1f $ff
	ld   d, c                                        ; $61f9: $51
	rst  JumpTable                                         ; $61fa: $df
	pop  af                                          ; $61fb: $f1
	ld   de, $ffef                                   ; $61fc: $11 $ef $ff
	ld   de, rAUD1LEN                                   ; $61ff: $11 $11 $ff
	rst  $30                                         ; $6202: $f7
	ld   de, $ff1d                                   ; $6203: $11 $1d $ff
	add  c                                           ; $6206: $81
	cp   a                                           ; $6207: $bf
	pop  af                                          ; $6208: $f1
	ld   de, $ffcf                                   ; $6209: $11 $cf $ff
	ld   de, rAUD1LEN                                   ; $620c: $11 $11 $ff
	ld   sp, hl                                      ; $620f: $f9
	ld   de, $ff1c                                   ; $6210: $11 $1c $ff
	sub  c                                           ; $6213: $91
	cp   a                                           ; $6214: $bf
	pop  af                                          ; $6215: $f1
	ld   de, $ffdf                                   ; $6216: $11 $df $ff
	ld   de, rAUD1LEN                                   ; $6219: $11 $11 $ff
	db   $fc                                         ; $621c: $fc
	ld   de, $ff18                                   ; $621d: $11 $18 $ff
	or   h                                           ; $6220: $b4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6221: $cf
	pop  af                                          ; $6222: $f1
	ld   de, $ffdf                                   ; $6223: $11 $df $ff
	ld   de, rAUD1LEN                                   ; $6226: $11 $11 $ff
	rst  $38                                         ; $6229: $ff
	ld   de, $ff15                                   ; $622a: $11 $15 $ff
	add  $cf                                         ; $622d: $c6 $cf
	pop  af                                          ; $622f: $f1
	ld   de, $ffef                                   ; $6230: $11 $ef $ff
	ld   de, rAUD1LEN                                   ; $6233: $11 $11 $ff
	rst  $38                                         ; $6236: $ff
	ld   de, rAUD1LOW                                   ; $6237: $11 $13 $ff
	rst  ToBoot                                         ; $623a: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $623b: $cf
	pop  af                                          ; $623c: $f1
	ld   de, $ffdf                                   ; $623d: $11 $df $ff
	ld   de, rAUD1LEN                                   ; $6240: $11 $11 $ff
	rst  $38                                         ; $6243: $ff
	ld   de, rAUD1LEN                                   ; $6244: $11 $11 $ff
	sub  $ef                                         ; $6247: $d6 $ef
	pop  af                                          ; $6249: $f1
	ld   de, $ffdf                                   ; $624a: $11 $df $ff
	ld   de, rAUD1LEN                                   ; $624d: $11 $11 $ff
	cp   $11                                         ; $6250: $fe $11
	ld   [de], a                                     ; $6252: $12
	rst  $38                                         ; $6253: $ff
	add  $ef                                         ; $6254: $c6 $ef
	pop  af                                          ; $6256: $f1
	ld   de, $ffcf                                   ; $6257: $11 $cf $ff
	ld   de, rAUD1LEN                                   ; $625a: $11 $11 $ff
	db   $fc                                         ; $625d: $fc
	ld   de, rAUD1HIGH                                   ; $625e: $11 $14 $ff
	sub  l                                           ; $6261: $95
	rst  $38                                         ; $6262: $ff
	pop  af                                          ; $6263: $f1
	ld   de, $ffbf                                   ; $6264: $11 $bf $ff
	ld   de, rAUD1LEN                                   ; $6267: $11 $11 $ff
	ei                                               ; $626a: $fb
	ld   de, rAUD1HIGH                                   ; $626b: $11 $14 $ff
	add  h                                           ; $626e: $84
	rst  $38                                         ; $626f: $ff
	pop  af                                          ; $6270: $f1
	ld   de, $ff9f                                   ; $6271: $11 $9f $ff
	ld   de, rAUD1LEN                                   ; $6274: $11 $11 $ff
	push af                                          ; $6277: $f5
	ld   de, $ff19                                   ; $6278: $11 $19 $ff
	ld   d, c                                        ; $627b: $51
	rst  $38                                         ; $627c: $ff
	pop  af                                          ; $627d: $f1
	ld   de, $ffaf                                   ; $627e: $11 $af $ff
	ld   de, rAUD1LEN                                   ; $6281: $11 $11 $ff
	push af                                          ; $6284: $f5
	ld   de, $fd19                                   ; $6285: $11 $19 $fd
	ld   sp, $f2ff                                   ; $6288: $31 $ff $f2
	ld   de, $ff6f                                   ; $628b: $11 $6f $ff
	ld   de, rAUD1LEN                                   ; $628e: $11 $11 $ff
	db   $f4                                         ; $6291: $f4
	ld   de, $fd1a                                   ; $6292: $11 $1a $fd
	ld   de, $f6ff                                   ; $6295: $11 $ff $f6
	ld   de, $fe4f                                   ; $6298: $11 $4f $fe
	ld   de, rAUD1LEN                                   ; $629b: $11 $11 $ff
	db   $f4                                         ; $629e: $f4
	ld   de, $fd1b                                   ; $629f: $11 $1b $fd
	ld   de, $fbff                                   ; $62a2: $11 $ff $fb
	ld   de, $fd1f                                   ; $62a5: $11 $1f $fd
	ld   hl, rAUD1LEN                                   ; $62a8: $21 $11 $ff

Jump_0f8_62ab:
	push af                                          ; $62ab: $f5
	ld   de, $fd1c                                   ; $62ac: $11 $1c $fd
	ld   de, $ffff                                   ; $62af: $11 $ff $ff
	ld   de, $fd1f                                   ; $62b2: $11 $1f $fd
	ld   b, c                                        ; $62b5: $41
	ld   de, $f9ff                                   ; $62b6: $11 $ff $f9
	ld   de, $fe19                                   ; $62b9: $11 $19 $fe
	ld   de, $ffdf                                   ; $62bc: $11 $df $ff
	ld   b, c                                        ; $62bf: $41
	ld   a, [de]                                     ; $62c0: $1a
	db   $fc                                         ; $62c1: $fc
	ld   d, c                                        ; $62c2: $51
	ld   de, $ffcf                                   ; $62c3: $11 $cf $ff
	ld   de, rAUD1HIGH                                   ; $62c6: $11 $14 $ff
	ld   sp, $ff9f                                   ; $62c9: $31 $9f $ff
	pop  bc                                          ; $62cc: $c1
	dec  d                                           ; $62cd: $15
	db   $fc                                         ; $62ce: $fc
	ld   d, e                                        ; $62cf: $53
	ld   de, $ff1f                                   ; $62d0: $11 $1f $ff
	ld   hl, rAUD1LEN                                   ; $62d3: $21 $11 $ff
	ld   [hl], c                                     ; $62d6: $71
	rra                                              ; $62d7: $1f
	rst  $38                                         ; $62d8: $ff
	di                                               ; $62d9: $f3
	ld   [de], a                                     ; $62da: $12
	call z, $1155                                    ; $62db: $cc $55 $11
	rra                                              ; $62de: $1f
	rst  $38                                         ; $62df: $ff
	push de                                          ; $62e0: $d5
	ld   de, $b1ee                                   ; $62e1: $11 $ee $b1
	jr   @+$01                                       ; $62e4: $18 $ff

	rst  $38                                         ; $62e6: $ff
	ld   [hl+], a                                    ; $62e7: $22
	adc  h                                           ; $62e8: $8c
	ld   h, l                                        ; $62e9: $65
	ld   hl, rAUD1LEN                                   ; $62ea: $21 $11 $ff
	ld   sp, hl                                      ; $62ed: $f9
	and  c                                           ; $62ee: $a1
	ld   l, a                                        ; $62ef: $6f
	ret  c                                           ; $62f0: $d8

	ld   de, $ff5c                                   ; $62f1: $11 $5c $ff
	or   l                                           ; $62f4: $b5
	ld   a, e                                        ; $62f5: $7b
	reti                                             ; $62f6: $d9


	add  h                                           ; $62f7: $84
	ld   de, $db2a                                   ; $62f8: $11 $2a $db
	ld   e, b                                        ; $62fb: $58
	ld   c, c                                        ; $62fc: $49
	rst  $28                                         ; $62fd: $ef
	jp   $bb59                                       ; $62fe: $c3 $59 $bb


	and  a                                           ; $6301: $a7
	ld   b, e                                        ; $6302: $43
	adc  h                                           ; $6303: $8c
	cp   c                                           ; $6304: $b9
	ld   h, [hl]                                     ; $6305: $66
	ld   b, a                                        ; $6306: $47
	cp   e                                           ; $6307: $bb
	ld   [hl], h                                     ; $6308: $74
	ld   d, l                                        ; $6309: $55
	ld   a, c                                        ; $630a: $79
	cp   b                                           ; $630b: $b8
	ld   d, a                                        ; $630c: $57
	sbc  d                                           ; $630d: $9a
	adc  c                                           ; $630e: $89
	add  a                                           ; $630f: $87
	ld   a, d                                        ; $6310: $7a
	cp   d                                           ; $6311: $ba
	xor  c                                           ; $6312: $a9
	sub  a                                           ; $6313: $97
	ld   a, c                                        ; $6314: $79
	sbc  c                                           ; $6315: $99
	halt                                             ; $6316: $76
	ld   d, l                                        ; $6317: $55
	ld   h, a                                        ; $6318: $67
	ld   [hl], a                                     ; $6319: $77
	ld   [hl], a                                     ; $631a: $77
	ld   [hl], a                                     ; $631b: $77
	add  a                                           ; $631c: $87
	adc  c                                           ; $631d: $89
	xor  c                                           ; $631e: $a9
	xor  d                                           ; $631f: $aa
	sbc  c                                           ; $6320: $99
	sbc  d                                           ; $6321: $9a
	sbc  c                                           ; $6322: $99
	sbc  c                                           ; $6323: $99
	ld   [hl], a                                     ; $6324: $77
	ld   [hl], a                                     ; $6325: $77
	ld   [hl], a                                     ; $6326: $77
	halt                                             ; $6327: $76
	ld   h, [hl]                                     ; $6328: $66
	ld   h, [hl]                                     ; $6329: $66
	ld   l, b                                        ; $632a: $68
	sbc  b                                           ; $632b: $98
	adc  c                                           ; $632c: $89
	adc  b                                           ; $632d: $88
	adc  c                                           ; $632e: $89
	sbc  d                                           ; $632f: $9a
	xor  c                                           ; $6330: $a9
	sbc  b                                           ; $6331: $98
	adc  d                                           ; $6332: $8a
	xor  c                                           ; $6333: $a9
	sbc  c                                           ; $6334: $99
	ld   [hl], a                                     ; $6335: $77
	halt                                             ; $6336: $76
	ld   h, [hl]                                     ; $6337: $66
	ld   h, [hl]                                     ; $6338: $66
	ld   h, a                                        ; $6339: $67
	ld   [hl], a                                     ; $633a: $77
	adc  c                                           ; $633b: $89
	sbc  c                                           ; $633c: $99
	sbc  c                                           ; $633d: $99
	add  a                                           ; $633e: $87
	adc  c                                           ; $633f: $89
	xor  d                                           ; $6340: $aa
	xor  c                                           ; $6341: $a9
	sbc  c                                           ; $6342: $99
	xor  c                                           ; $6343: $a9
	sbc  c                                           ; $6344: $99
	add  a                                           ; $6345: $87
	ld   [hl], a                                     ; $6346: $77
	ld   h, l                                        ; $6347: $65
	ld   d, [hl]                                     ; $6348: $56
	ld   [hl], a                                     ; $6349: $77
	ld   [hl], a                                     ; $634a: $77
	ld   [hl], a                                     ; $634b: $77
	adc  b                                           ; $634c: $88
	sbc  c                                           ; $634d: $99
	adc  b                                           ; $634e: $88
	adc  b                                           ; $634f: $88
	adc  c                                           ; $6350: $89
	sbc  d                                           ; $6351: $9a
	sbc  c                                           ; $6352: $99
	sbc  c                                           ; $6353: $99
	sbc  c                                           ; $6354: $99
	adc  b                                           ; $6355: $88
	sbc  b                                           ; $6356: $98
	adc  b                                           ; $6357: $88
	halt                                             ; $6358: $76
	ld   h, a                                        ; $6359: $67
	ld   [hl], a                                     ; $635a: $77
	ld   [hl], a                                     ; $635b: $77
	ld   [hl], a                                     ; $635c: $77
	adc  b                                           ; $635d: $88
	adc  b                                           ; $635e: $88
	add  a                                           ; $635f: $87
	ld   a, b                                        ; $6360: $78
	sbc  b                                           ; $6361: $98
	adc  b                                           ; $6362: $88
	sbc  c                                           ; $6363: $99
	xor  d                                           ; $6364: $aa
	adc  b                                           ; $6365: $88
	adc  c                                           ; $6366: $89
	sbc  c                                           ; $6367: $99
	adc  b                                           ; $6368: $88
	ld   [hl], a                                     ; $6369: $77
	ld   a, b                                        ; $636a: $78
	add  a                                           ; $636b: $87
	halt                                             ; $636c: $76
	ld   h, a                                        ; $636d: $67
	ld   [hl], a                                     ; $636e: $77
	ld   [hl], a                                     ; $636f: $77
	ld   a, b                                        ; $6370: $78
	sbc  b                                           ; $6371: $98
	sbc  b                                           ; $6372: $98
	adc  c                                           ; $6373: $89
	sbc  c                                           ; $6374: $99
	adc  c                                           ; $6375: $89
	add  a                                           ; $6376: $87
	adc  b                                           ; $6377: $88
	xor  c                                           ; $6378: $a9
	sbc  c                                           ; $6379: $99
	adc  c                                           ; $637a: $89
	sbc  c                                           ; $637b: $99
	sub  a                                           ; $637c: $97
	ld   a, b                                        ; $637d: $78
	adc  b                                           ; $637e: $88
	ld   [hl], a                                     ; $637f: $77
	ld   [hl], a                                     ; $6380: $77
	adc  b                                           ; $6381: $88
	add  a                                           ; $6382: $87
	ld   [hl], a                                     ; $6383: $77
	ld   a, b                                        ; $6384: $78
	adc  b                                           ; $6385: $88
	adc  b                                           ; $6386: $88
	ld   [hl], a                                     ; $6387: $77
	sbc  b                                           ; $6388: $98
	sbc  b                                           ; $6389: $98
	adc  b                                           ; $638a: $88
	sbc  c                                           ; $638b: $99
	adc  b                                           ; $638c: $88
	adc  b                                           ; $638d: $88
	sbc  b                                           ; $638e: $98
	sbc  c                                           ; $638f: $99
	sbc  b                                           ; $6390: $98
	adc  b                                           ; $6391: $88
	adc  c                                           ; $6392: $89
	sub  a                                           ; $6393: $97
	ld   [hl], a                                     ; $6394: $77
	ld   a, b                                        ; $6395: $78
	adc  b                                           ; $6396: $88
	ld   a, b                                        ; $6397: $78
	adc  b                                           ; $6398: $88
	ld   [hl], a                                     ; $6399: $77
	ld   [hl], a                                     ; $639a: $77
	ld   a, b                                        ; $639b: $78
	adc  b                                           ; $639c: $88
	adc  b                                           ; $639d: $88
	adc  b                                           ; $639e: $88
	sbc  c                                           ; $639f: $99
	sbc  c                                           ; $63a0: $99
	adc  b                                           ; $63a1: $88
	adc  b                                           ; $63a2: $88
	sbc  c                                           ; $63a3: $99
	adc  b                                           ; $63a4: $88
	adc  b                                           ; $63a5: $88
	adc  b                                           ; $63a6: $88
	sbc  c                                           ; $63a7: $99
	adc  b                                           ; $63a8: $88
	adc  b                                           ; $63a9: $88
	ld   [hl], a                                     ; $63aa: $77
	ld   [hl], a                                     ; $63ab: $77
	adc  b                                           ; $63ac: $88
	sbc  b                                           ; $63ad: $98
	adc  b                                           ; $63ae: $88
	adc  b                                           ; $63af: $88
	adc  b                                           ; $63b0: $88
	adc  b                                           ; $63b1: $88
	adc  b                                           ; $63b2: $88
	adc  b                                           ; $63b3: $88
	adc  c                                           ; $63b4: $89
	sbc  c                                           ; $63b5: $99
	adc  b                                           ; $63b6: $88
	adc  b                                           ; $63b7: $88
	adc  b                                           ; $63b8: $88
	adc  b                                           ; $63b9: $88
	sbc  c                                           ; $63ba: $99
	adc  b                                           ; $63bb: $88
	adc  b                                           ; $63bc: $88
	sbc  c                                           ; $63bd: $99
	sbc  b                                           ; $63be: $98
	add  a                                           ; $63bf: $87
	ld   [hl], a                                     ; $63c0: $77
	adc  b                                           ; $63c1: $88
	adc  b                                           ; $63c2: $88
	adc  b                                           ; $63c3: $88
	add  a                                           ; $63c4: $87
	adc  b                                           ; $63c5: $88
	adc  b                                           ; $63c6: $88
	adc  b                                           ; $63c7: $88
	adc  b                                           ; $63c8: $88
	adc  b                                           ; $63c9: $88
	adc  c                                           ; $63ca: $89
	sbc  c                                           ; $63cb: $99
	adc  b                                           ; $63cc: $88
	adc  b                                           ; $63cd: $88
	adc  b                                           ; $63ce: $88
	sbc  b                                           ; $63cf: $98
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
	sbc  c                                           ; $63e4: $99
	sbc  c                                           ; $63e5: $99
	adc  b                                           ; $63e6: $88
	adc  b                                           ; $63e7: $88
	adc  b                                           ; $63e8: $88
	adc  b                                           ; $63e9: $88
	adc  b                                           ; $63ea: $88
	adc  b                                           ; $63eb: $88
	adc  b                                           ; $63ec: $88
	adc  b                                           ; $63ed: $88
	add  a                                           ; $63ee: $87
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
	sbc  b                                           ; $641c: $98
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
	sbc  b                                           ; $6496: $98
	adc  b                                           ; $6497: $88
	sbc  b                                           ; $6498: $98
	adc  c                                           ; $6499: $89
	adc  b                                           ; $649a: $88
	sbc  c                                           ; $649b: $99
	sbc  b                                           ; $649c: $98
	sbc  c                                           ; $649d: $99
	sbc  b                                           ; $649e: $98
	adc  b                                           ; $649f: $88
	adc  c                                           ; $64a0: $89
	xor  c                                           ; $64a1: $a9
	adc  c                                           ; $64a2: $89
	sub  a                                           ; $64a3: $97
	ld   a, c                                        ; $64a4: $79
	add  a                                           ; $64a5: $87
	ld   a, c                                        ; $64a6: $79
	adc  b                                           ; $64a7: $88
	sbc  b                                           ; $64a8: $98
	halt                                             ; $64a9: $76
	ld   d, h                                        ; $64aa: $54
	ld   [hl], $88                                   ; $64ab: $36 $88
	ld   h, h                                        ; $64ad: $64
	ld   l, c                                        ; $64ae: $69
	sbc  b                                           ; $64af: $98
	ld   a, d                                        ; $64b0: $7a
	sbc  h                                           ; $64b1: $9c
	cp   e                                           ; $64b2: $bb
	jp   z, $a7dc                                    ; $64b3: $ca $dc $a7

	ld   b, c                                        ; $64b6: $41
	ld   de, $31aa                                   ; $64b7: $11 $aa $31
	ld   a, e                                        ; $64ba: $7b
	xor  h                                           ; $64bb: $ac
	sbc  d                                           ; $64bc: $9a
	adc  l                                           ; $64bd: $8d
	ld   a, [$ea76]                                  ; $64be: $fa $76 $ea
	adc  h                                           ; $64c1: $8c
	xor  h                                           ; $64c2: $ac
	ld   h, e                                        ; $64c3: $63
	ld   de, $b11e                                   ; $64c4: $11 $1e $b1
	dec  e                                           ; $64c7: $1d
	db   $fc                                         ; $64c8: $fc
	cp   h                                           ; $64c9: $bc
	db   $fd                                         ; $64ca: $fd
	rst  $38                                         ; $64cb: $ff
	ld   b, [hl]                                     ; $64cc: $46
	adc  l                                           ; $64cd: $8d
	ld   d, c                                        ; $64ce: $51
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64cf: $cf
	push hl                                          ; $64d0: $e5
	ld   de, $fa11                                   ; $64d1: $11 $11 $fa
	ld   de, $66ff                                   ; $64d4: $11 $ff $66
	rst  $28                                         ; $64d7: $ef
	add  sp, -$07                                    ; $64d8: $e8 $f9
	sbc  b                                           ; $64da: $98
	add  h                                           ; $64db: $84
	dec  e                                           ; $64dc: $1d
	db   $fd                                         ; $64dd: $fd
	ld   l, b                                        ; $64de: $68
	and  c                                           ; $64df: $a1
	ld   de, $11f9                                   ; $64e0: $11 $f9 $11
	rst  $38                                         ; $64e3: $ff
	add  hl, sp                                      ; $64e4: $39
	rst  $38                                         ; $64e5: $ff
	jp   z, $a7f5                                    ; $64e6: $ca $f5 $a7

	ld   [hl], c                                     ; $64e9: $71
	rra                                              ; $64ea: $1f
	ld   hl, sp+$7d                                  ; $64eb: $f8 $7d
	pop  hl                                          ; $64ed: $e1
	ld   de, $11f8                                   ; $64ee: $11 $f8 $11
	rst  $38                                         ; $64f1: $ff
	ld   d, $ff                                      ; $64f2: $16 $ff
	di                                               ; $64f4: $f3
	ld   [$13f2], a                                  ; $64f5: $ea $f2 $13
	adc  a                                           ; $64f8: $8f
	or   [hl]                                        ; $64f9: $b6
	rst  JumpTable                                         ; $64fa: $df
	pop  bc                                          ; $64fb: $c1
	ld   de, $11fa                                   ; $64fc: $11 $fa $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64ff: $cf
	ld   sp, $f1ef                                   ; $6500: $31 $ef $f1
	xor  a                                           ; $6503: $af
	pop  af                                          ; $6504: $f1
	ld   a, [de]                                     ; $6505: $1a
	call $ff4a                                       ; $6506: $cd $4a $ff
	or   d                                           ; $6509: $b2
	ld   de, $6119                                   ; $650a: $11 $19 $61
	dec  e                                           ; $650d: $1d
	pop  af                                          ; $650e: $f1
	ld   e, a                                        ; $650f: $5f
	db   $fc                                         ; $6510: $fc
	rra                                              ; $6511: $1f
	ld   hl, sp+$12                                  ; $6512: $f8 $12
	and  $48                                         ; $6514: $e6 $48
	rst  $38                                         ; $6516: $ff
	cp   d                                           ; $6517: $ba
	and  h                                           ; $6518: $a4
	ld   de, $118d                                   ; $6519: $11 $8d $11
	ld   a, a                                        ; $651c: $7f
	ld   d, c                                        ; $651d: $51
	rst  $38                                         ; $651e: $ff
	pop  af                                          ; $651f: $f1
	rst  $28                                         ; $6520: $ef
	add  c                                           ; $6521: $81
	rra                                              ; $6522: $1f
	ld   [hl], d                                     ; $6523: $72
	ld   l, a                                        ; $6524: $6f
	db   $fc                                         ; $6525: $fc
	sbc  l                                           ; $6526: $9d
	and  c                                           ; $6527: $a1
	ld   de, $11f2                                   ; $6528: $11 $f2 $11
	rst  $38                                         ; $652b: $ff
	dec  de                                          ; $652c: $1b
	rst  $38                                         ; $652d: $ff
	ld   de, $11fe                                   ; $652e: $11 $fe $11
	sbc  a                                           ; $6531: $9f
	ld   [de], a                                     ; $6532: $12
	rst  $28                                         ; $6533: $ef
	ld   hl, sp-$01                                  ; $6534: $f8 $ff
	ld   h, c                                        ; $6536: $61
	ld   de, $11d1                                   ; $6537: $11 $d1 $11
	rst  $38                                         ; $653a: $ff
	dec  e                                           ; $653b: $1d
	rst  $38                                         ; $653c: $ff
	ld   de, $11fd                                   ; $653d: $11 $fd $11
	cp   a                                           ; $6540: $bf
	ld   de, $e5ff                                   ; $6541: $11 $ff $e5
	rst  $38                                         ; $6544: $ff
	add  c                                           ; $6545: $81
	ld   de, $1171                                   ; $6546: $11 $71 $11
	rst  $38                                         ; $6549: $ff
	dec  [hl]                                        ; $654a: $35
	rst  $38                                         ; $654b: $ff
	sub  c                                           ; $654c: $91
	rst  $38                                         ; $654d: $ff
	ld   de, $213f                                   ; $654e: $11 $3f $21
	xor  a                                           ; $6551: $af
	di                                               ; $6552: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6553: $cf
	pop  af                                          ; $6554: $f1
	ld   de, $1112                                   ; $6555: $11 $12 $11
	cpl                                              ; $6558: $2f
	di                                               ; $6559: $f3
	rst  $28                                         ; $655a: $ef
	db   $f4                                         ; $655b: $f4
	rra                                              ; $655c: $1f
	pop  bc                                          ; $655d: $c1
	ld   a, [de]                                     ; $655e: $1a
	pop  af                                          ; $655f: $f1
	rra                                              ; $6560: $1f
	ld   a, [$f75f]                                  ; $6561: $fa $5f $f7
	ld   de, $3111                                   ; $6564: $11 $11 $31
	inc  de                                          ; $6567: $13
	rst  $38                                         ; $6568: $ff
	rra                                              ; $6569: $1f
	rst  $38                                         ; $656a: $ff
	inc  de                                          ; $656b: $13
	ei                                               ; $656c: $fb
	ld   de, $11fe                                   ; $656d: $11 $fe $11
	rst  $38                                         ; $6570: $ff
	ld   [hl], l                                     ; $6571: $75
	rst  $38                                         ; $6572: $ff
	ld   sp, $1211                                   ; $6573: $31 $11 $12
	ld   de, $e34f                                   ; $6576: $11 $4f $e3
	rst  $38                                         ; $6579: $ff
	pop  af                                          ; $657a: $f1
	xor  a                                           ; $657b: $af
	add  c                                           ; $657c: $81
	rra                                              ; $657d: $1f
	and  c                                           ; $657e: $a1
	cpl                                              ; $657f: $2f
	db   $f4                                         ; $6580: $f4
	ld   e, a                                        ; $6581: $5f
	pop  af                                          ; $6582: $f1
	ld   de, $1113                                   ; $6583: $11 $13 $11
	ld   a, [hl+]                                    ; $6586: $2a
	ldh  a, [c]                                      ; $6587: $f2
	xor  a                                           ; $6588: $af
	ei                                               ; $6589: $fb
	rra                                              ; $658a: $1f
	di                                               ; $658b: $f3
	rla                                              ; $658c: $17
	ldh  a, [c]                                      ; $658d: $f2
	ld   a, [de]                                     ; $658e: $1a
	ei                                               ; $658f: $fb
	ld   a, [de]                                     ; $6590: $1a
	ei                                               ; $6591: $fb
	ld   de, $3146                                   ; $6592: $11 $46 $31
	ld   [hl], $c9                                   ; $6595: $36 $c9
	cpl                                              ; $6597: $2f
	rst  $38                                         ; $6598: $ff
	ld   e, c                                        ; $6599: $59
	db   $fc                                         ; $659a: $fc
	ld   hl, $11dd                                   ; $659b: $21 $dd $11
	rst  $28                                         ; $659e: $ef
	ld   [hl], d                                     ; $659f: $72
	rst  $28                                         ; $65a0: $ef
	ld   h, c                                        ; $65a1: $61
	daa                                              ; $65a2: $27
	ld   [hl], $55                                   ; $65a3: $36 $55
	ld   h, $c5                                      ; $65a5: $26 $c5
	adc  l                                           ; $65a7: $8d
	ld   sp, hl                                      ; $65a8: $f9
	ld   e, a                                        ; $65a9: $5f
	or   $27                                         ; $65aa: $f6 $27
	and  $1a                                         ; $65ac: $e6 $1a
	db   $eb                                         ; $65ae: $eb
	ld   c, c                                        ; $65af: $49
	ld   a, [$a744]                                  ; $65b0: $fa $44 $a7
	ld   d, $95                                      ; $65b3: $16 $95
	inc  d                                           ; $65b5: $14
	rst  ToBoot                                         ; $65b6: $c7
	ld   c, c                                        ; $65b7: $49
	db   $eb                                         ; $65b8: $eb
	ld   e, c                                        ; $65b9: $59
	jp   hl                                          ; $65ba: $e9


	ld   b, l                                        ; $65bb: $45
	call z, $dd47                                    ; $65bc: $cc $47 $dd
	add  [hl]                                        ; $65bf: $86
	call $9986                                       ; $65c0: $cd $86 $99
	ld   b, e                                        ; $65c3: $43
	adc  b                                           ; $65c4: $88
	ld   b, e                                        ; $65c5: $43
	ld   a, e                                        ; $65c6: $7b
	ld   h, h                                        ; $65c7: $64
	adc  e                                           ; $65c8: $8b
	add  h                                           ; $65c9: $84
	ld   l, d                                        ; $65ca: $6a
	sub  l                                           ; $65cb: $95
	ld   a, h                                        ; $65cc: $7c
	cp   c                                           ; $65cd: $b9
	sbc  h                                           ; $65ce: $9c
	ret                                              ; $65cf: $c9


	adc  e                                           ; $65d0: $8b
	or   a                                           ; $65d1: $b7
	ld   l, c                                        ; $65d2: $69
	sub  [hl]                                        ; $65d3: $96
	ld   l, b                                        ; $65d4: $68
	xor  b                                           ; $65d5: $a8
	ld   h, a                                        ; $65d6: $67
	add  a                                           ; $65d7: $87
	ld   b, h                                        ; $65d8: $44
	ld   h, l                                        ; $65d9: $65
	ld   b, h                                        ; $65da: $44
	ld   a, c                                        ; $65db: $79
	adc  c                                           ; $65dc: $89
	xor  h                                           ; $65dd: $ac
	cp   d                                           ; $65de: $ba
	cp   e                                           ; $65df: $bb
	sbc  b                                           ; $65e0: $98
	sbc  b                                           ; $65e1: $98
	add  a                                           ; $65e2: $87
	adc  c                                           ; $65e3: $89
	xor  c                                           ; $65e4: $a9
	sbc  c                                           ; $65e5: $99
	xor  c                                           ; $65e6: $a9
	ld   [hl], a                                     ; $65e7: $77
	ld   [hl], l                                     ; $65e8: $75
	ld   b, h                                        ; $65e9: $44
	ld   d, h                                        ; $65ea: $54
	ld   b, [hl]                                     ; $65eb: $46
	ld   [hl], a                                     ; $65ec: $77
	ld   a, d                                        ; $65ed: $7a
	cp   c                                           ; $65ee: $b9
	sbc  c                                           ; $65ef: $99
	xor  b                                           ; $65f0: $a8
	adc  c                                           ; $65f1: $89
	adc  b                                           ; $65f2: $88
	adc  b                                           ; $65f3: $88
	xor  c                                           ; $65f4: $a9
	xor  c                                           ; $65f5: $a9
	sbc  d                                           ; $65f6: $9a
	sbc  c                                           ; $65f7: $99
	adc  b                                           ; $65f8: $88
	add  a                                           ; $65f9: $87
	ld   [hl], a                                     ; $65fa: $77
	ld   h, [hl]                                     ; $65fb: $66
	ld   h, [hl]                                     ; $65fc: $66
	ld   h, [hl]                                     ; $65fd: $66
	ld   h, [hl]                                     ; $65fe: $66
	halt                                             ; $65ff: $76
	ld   h, a                                        ; $6600: $67
	adc  b                                           ; $6601: $88
	adc  c                                           ; $6602: $89
	sbc  c                                           ; $6603: $99
	sbc  c                                           ; $6604: $99
	xor  c                                           ; $6605: $a9
	sbc  c                                           ; $6606: $99
	sbc  c                                           ; $6607: $99
	adc  c                                           ; $6608: $89
	adc  b                                           ; $6609: $88
	sbc  c                                           ; $660a: $99
	sbc  c                                           ; $660b: $99
	sbc  c                                           ; $660c: $99
	sbc  b                                           ; $660d: $98
	adc  b                                           ; $660e: $88
	ld   [hl], a                                     ; $660f: $77
	ld   h, [hl]                                     ; $6610: $66
	ld   h, [hl]                                     ; $6611: $66
	ld   h, [hl]                                     ; $6612: $66
	ld   h, [hl]                                     ; $6613: $66
	ld   [hl], a                                     ; $6614: $77
	ld   [hl], a                                     ; $6615: $77
	sbc  b                                           ; $6616: $98
	sbc  c                                           ; $6617: $99
	xor  c                                           ; $6618: $a9
	sbc  c                                           ; $6619: $99
	sbc  c                                           ; $661a: $99
	adc  c                                           ; $661b: $89
	sbc  b                                           ; $661c: $98
	adc  b                                           ; $661d: $88
	adc  b                                           ; $661e: $88
	sbc  c                                           ; $661f: $99
	sbc  b                                           ; $6620: $98
	sbc  b                                           ; $6621: $98
	sbc  b                                           ; $6622: $98
	adc  c                                           ; $6623: $89
	adc  b                                           ; $6624: $88
	adc  b                                           ; $6625: $88
	ld   [hl], a                                     ; $6626: $77
	ld   [hl], a                                     ; $6627: $77
	halt                                             ; $6628: $76
	ld   [hl], a                                     ; $6629: $77
	ld   h, [hl]                                     ; $662a: $66
	ld   [hl], a                                     ; $662b: $77
	ld   [hl], a                                     ; $662c: $77
	adc  c                                           ; $662d: $89
	adc  c                                           ; $662e: $89
	sbc  c                                           ; $662f: $99
	sbc  c                                           ; $6630: $99
	sbc  c                                           ; $6631: $99
	sbc  b                                           ; $6632: $98
	adc  b                                           ; $6633: $88
	sbc  c                                           ; $6634: $99
	adc  b                                           ; $6635: $88
	adc  b                                           ; $6636: $88
	adc  b                                           ; $6637: $88
	adc  c                                           ; $6638: $89
	adc  b                                           ; $6639: $88
	adc  c                                           ; $663a: $89
	add  a                                           ; $663b: $87
	adc  b                                           ; $663c: $88
	ld   [hl], a                                     ; $663d: $77
	ld   [hl], a                                     ; $663e: $77
	ld   [hl], a                                     ; $663f: $77
	ld   a, b                                        ; $6640: $78
	add  a                                           ; $6641: $87
	adc  b                                           ; $6642: $88
	adc  b                                           ; $6643: $88
	adc  b                                           ; $6644: $88
	adc  b                                           ; $6645: $88
	adc  c                                           ; $6646: $89
	adc  c                                           ; $6647: $89
	adc  b                                           ; $6648: $88
	sbc  b                                           ; $6649: $98
	adc  b                                           ; $664a: $88
	sbc  c                                           ; $664b: $99
	add  a                                           ; $664c: $87
	adc  b                                           ; $664d: $88
	adc  b                                           ; $664e: $88
	adc  b                                           ; $664f: $88
	adc  b                                           ; $6650: $88
	adc  b                                           ; $6651: $88
	add  a                                           ; $6652: $87
	ld   [hl], a                                     ; $6653: $77
	ld   [hl], a                                     ; $6654: $77
	ld   a, b                                        ; $6655: $78
	adc  b                                           ; $6656: $88
	adc  b                                           ; $6657: $88
	adc  b                                           ; $6658: $88
	adc  b                                           ; $6659: $88
	sbc  c                                           ; $665a: $99
	adc  b                                           ; $665b: $88
	sbc  b                                           ; $665c: $98
	sbc  b                                           ; $665d: $98
	sbc  b                                           ; $665e: $98
	sbc  b                                           ; $665f: $98
	sbc  c                                           ; $6660: $99
	adc  b                                           ; $6661: $88
	adc  b                                           ; $6662: $88
	add  a                                           ; $6663: $87
	ld   a, b                                        ; $6664: $78
	adc  b                                           ; $6665: $88
	ld   a, b                                        ; $6666: $78
	adc  b                                           ; $6667: $88
	ld   a, b                                        ; $6668: $78
	adc  b                                           ; $6669: $88
	ld   a, b                                        ; $666a: $78
	adc  b                                           ; $666b: $88
	adc  b                                           ; $666c: $88
	adc  c                                           ; $666d: $89
	sbc  b                                           ; $666e: $98
	adc  c                                           ; $666f: $89
	adc  b                                           ; $6670: $88
	adc  c                                           ; $6671: $89
	adc  b                                           ; $6672: $88
	adc  b                                           ; $6673: $88
	adc  b                                           ; $6674: $88
	adc  b                                           ; $6675: $88
	adc  b                                           ; $6676: $88

Jump_0f8_6677:
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
	adc  b                                           ; $6687: $88
	adc  c                                           ; $6688: $89
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
	sbc  b                                           ; $6698: $98
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
	adc  c                                           ; $66f5: $89
	adc  b                                           ; $66f6: $88
	adc  c                                           ; $66f7: $89
	add  a                                           ; $66f8: $87
	adc  d                                           ; $66f9: $8a
	sub  l                                           ; $66fa: $95
	ld   l, d                                        ; $66fb: $6a
	sub  a                                           ; $66fc: $97
	halt                                             ; $66fd: $76
	ld   a, b                                        ; $66fe: $78
	add  a                                           ; $66ff: $87
	ld   a, c                                        ; $6700: $79
	sub  a                                           ; $6701: $97
	adc  c                                           ; $6702: $89
	sbc  c                                           ; $6703: $99
	adc  c                                           ; $6704: $89
	call c, $aa54                                    ; $6705: $dc $54 $aa
	ld   b, e                                        ; $6708: $43
	ld   a, b                                        ; $6709: $78
	ld   d, h                                        ; $670a: $54
	adc  b                                           ; $670b: $88
	sbc  d                                           ; $670c: $9a
	adc  c                                           ; $670d: $89
	sub  a                                           ; $670e: $97
	adc  l                                           ; $670f: $8d
	ret  c                                           ; $6710: $d8

	ld   b, a                                        ; $6711: $47
	or   a                                           ; $6712: $b7
	ld   h, a                                        ; $6713: $67
	ld   [hl], a                                     ; $6714: $77
	ld   h, a                                        ; $6715: $67
	sbc  b                                           ; $6716: $98
	ld   h, [hl]                                     ; $6717: $66
	adc  d                                           ; $6718: $8a
	sbc  b                                           ; $6719: $98
	sbc  b                                           ; $671a: $98
	sbc  b                                           ; $671b: $98
	sbc  d                                           ; $671c: $9a
	sbc  c                                           ; $671d: $99
	sbc  b                                           ; $671e: $98
	ld   a, b                                        ; $671f: $78
	adc  b                                           ; $6720: $88
	add  a                                           ; $6721: $87
	ld   a, b                                        ; $6722: $78
	add  a                                           ; $6723: $87
	ld   a, b                                        ; $6724: $78
	adc  c                                           ; $6725: $89
	sbc  b                                           ; $6726: $98
	sbc  b                                           ; $6727: $98
	ld   a, b                                        ; $6728: $78
	xor  c                                           ; $6729: $a9
	ld   [hl], a                                     ; $672a: $77
	ld   [hl], a                                     ; $672b: $77
	ld   [hl], a                                     ; $672c: $77
	add  a                                           ; $672d: $87
	ld   h, [hl]                                     ; $672e: $66
	adc  b                                           ; $672f: $88
	add  a                                           ; $6730: $87
	adc  d                                           ; $6731: $8a
	sbc  b                                           ; $6732: $98
	adc  c                                           ; $6733: $89
	xor  d                                           ; $6734: $aa
	sbc  c                                           ; $6735: $99
	adc  c                                           ; $6736: $89
	xor  d                                           ; $6737: $aa
	xor  c                                           ; $6738: $a9
	sbc  b                                           ; $6739: $98
	add  a                                           ; $673a: $87
	ld   h, l                                        ; $673b: $65
	ld   b, [hl]                                     ; $673c: $46
	sbc  b                                           ; $673d: $98
	ld   d, e                                        ; $673e: $53
	ld   l, d                                        ; $673f: $6a
	sub  l                                           ; $6740: $95
	ld   e, c                                        ; $6741: $59
	cp   c                                           ; $6742: $b9
	ld   h, a                                        ; $6743: $67
	sbc  d                                           ; $6744: $9a
	sub  a                                           ; $6745: $97
	sbc  d                                           ; $6746: $9a
	sbc  c                                           ; $6747: $99
	sbc  d                                           ; $6748: $9a
	xor  d                                           ; $6749: $aa
	sbc  c                                           ; $674a: $99
	sbc  d                                           ; $674b: $9a
	sub  a                                           ; $674c: $97
	ld   b, h                                        ; $674d: $44
	ld   d, [hl]                                     ; $674e: $56
	add  a                                           ; $674f: $87
	ld   h, h                                        ; $6750: $64
	ld   c, d                                        ; $6751: $4a
	or   a                                           ; $6752: $b7
	ld   d, a                                        ; $6753: $57
	xor  d                                           ; $6754: $aa
	ld   h, [hl]                                     ; $6755: $66
	sbc  d                                           ; $6756: $9a
	sub  a                                           ; $6757: $97
	sbc  c                                           ; $6758: $99
	adc  c                                           ; $6759: $89
	xor  e                                           ; $675a: $ab
	sbc  d                                           ; $675b: $9a
	xor  e                                           ; $675c: $ab
	xor  c                                           ; $675d: $a9
	add  a                                           ; $675e: $87
	ld   d, c                                        ; $675f: $51
	inc  de                                          ; $6760: $13
	bit  4, c                                        ; $6761: $cb $61
	ld   a, a                                        ; $6763: $7f
	or   $3a                                         ; $6764: $f6 $3a
	ret                                              ; $6766: $c9


	dec  d                                           ; $6767: $15
	jp   z, $ab75                                    ; $6768: $ca $75 $ab

	sub  a                                           ; $676b: $97
	cp   l                                           ; $676c: $bd
	xor  b                                           ; $676d: $a8
	sbc  e                                           ; $676e: $9b
	and  a                                           ; $676f: $a7
	ld   b, h                                        ; $6770: $44
	ld   de, $e81d                                   ; $6771: $11 $1d $e8
	scf                                              ; $6774: $37
	rst  $38                                         ; $6775: $ff
	sub  c                                           ; $6776: $91
	adc  e                                           ; $6777: $8b
	ld   [hl], c                                     ; $6778: $71
	dec  sp                                          ; $6779: $3b
	sbc  b                                           ; $677a: $98
	ld   a, h                                        ; $677b: $7c
	cp   h                                           ; $677c: $bc
	cp   h                                           ; $677d: $bc
	sub  a                                           ; $677e: $97
	cp   h                                           ; $677f: $bc
	or   l                                           ; $6780: $b5
	ld   de, $1a11                                   ; $6781: $11 $11 $1a
	rst  $38                                         ; $6784: $ff
	ld   a, b                                        ; $6785: $78
	rst  $38                                         ; $6786: $ff
	or   c                                           ; $6787: $b1
	rla                                              ; $6788: $17
	ld   h, d                                        ; $6789: $62
	add  hl, hl                                      ; $678a: $29
	cp   c                                           ; $678b: $b9
	xor  l                                           ; $678c: $ad
	cp   $ca                                         ; $678d: $fe $ca
	or   a                                           ; $678f: $b7
	xor  e                                           ; $6790: $ab
	and  e                                           ; $6791: $a3
	ld   de, $1f11                                   ; $6792: $11 $11 $1f
	rst  $38                                         ; $6795: $ff
	sbc  e                                           ; $6796: $9b
	rst  $38                                         ; $6797: $ff
	ld   sp, $7415                                   ; $6798: $31 $15 $74
	xor  a                                           ; $679b: $af
	db   $eb                                         ; $679c: $eb
	sbc  $c7                                         ; $679d: $de $c7
	xor  a                                           ; $679f: $af
	reti                                             ; $67a0: $d9


	adc  e                                           ; $67a1: $8b
	ld   h, c                                        ; $67a2: $61
	ld   de, rAUD1LEN                                   ; $67a3: $11 $11 $ff
	db   $fc                                         ; $67a6: $fc
	ccf                                              ; $67a7: $3f
	di                                               ; $67a8: $f3
	ld   de, $9d5c                                   ; $67a9: $11 $5c $9d
	rst  $38                                         ; $67ac: $ff
	cp   b                                           ; $67ad: $b8
	sub  a                                           ; $67ae: $97
	ld   a, [hl-]                                    ; $67af: $3a
	rst  $38                                         ; $67b0: $ff
	add  $85                                         ; $67b1: $c6 $85
	ld   de, $1c11                                   ; $67b3: $11 $11 $1c
	rst  $38                                         ; $67b6: $ff
	pop  af                                          ; $67b7: $f1
	dec  e                                           ; $67b8: $1d
	ld   b, c                                        ; $67b9: $41
	inc  de                                          ; $67ba: $13
	cp   $ff                                         ; $67bb: $fe $ff
	or   $11                                         ; $67bd: $f6 $11
	sub  c                                           ; $67bf: $91
	xor  a                                           ; $67c0: $af
	rst  $38                                         ; $67c1: $ff
	ld   de, $1101                                   ; $67c2: $11 $01 $11
	ld   de, $ff1f                                   ; $67c5: $11 $1f $ff
	ld   d, c                                        ; $67c8: $51
	jr   jr_0f8_67dc                                 ; $67c9: $18 $11

	ld   e, $ff                                      ; $67cb: $1e $ff
	rst  $38                                         ; $67cd: $ff
	ld   de, $b81b                                   ; $67ce: $11 $1b $b8
	rst  $38                                         ; $67d1: $ff
	di                                               ; $67d2: $f3
	ld   de, $5415                                   ; $67d3: $11 $15 $54
	ld   de, $ff1f                                   ; $67d6: $11 $1f $ff
	ld   de, $c75a                                   ; $67d9: $11 $5a $c7

jr_0f8_67dc:
	ld   a, a                                        ; $67dc: $7f
	rst  $28                                         ; $67dd: $ef
	db   $f4                                         ; $67de: $f4
	ld   de, $ff2f                                   ; $67df: $11 $2f $ff
	rst  $38                                         ; $67e2: $ff
	and  c                                           ; $67e3: $a1
	ld   [de], a                                     ; $67e4: $12
	xor  h                                           ; $67e5: $ac
	sub  e                                           ; $67e6: $93
	ld   de, $ff8f                                   ; $67e7: $11 $8f $ff
	ld   de, $fdab                                   ; $67ea: $11 $ab $fd
	xor  e                                           ; $67ed: $ab
	xor  a                                           ; $67ee: $af
	pop  af                                          ; $67ef: $f1
	ld   de, $ffcf                                   ; $67f0: $11 $cf $ff
	rst  $38                                         ; $67f3: $ff
	ld   de, $fc1b                                   ; $67f4: $11 $1b $fc
	ld   [hl], c                                     ; $67f7: $71
	ld   de, $fcff                                   ; $67f8: $11 $ff $fc
	ld   de, $ff8a                                   ; $67fb: $11 $8a $ff
	adc  b                                           ; $67fe: $88
	cp   a                                           ; $67ff: $bf
	pop  af                                          ; $6800: $f1
	ld   de, $ffff                                   ; $6801: $11 $ff $ff
	ld   sp, hl                                      ; $6804: $f9
	ld   de, $fe3e                                   ; $6805: $11 $3e $fe
	ld   d, c                                        ; $6808: $51
	ld   de, $ffff                                   ; $6809: $11 $ff $ff
	ld   de, $ff18                                   ; $680c: $11 $18 $ff
	sub  [hl]                                        ; $680f: $96
	cp   [hl]                                        ; $6810: $be
	pop  hl                                          ; $6811: $e1
	ld   de, $ffef                                   ; $6812: $11 $ef $ff
	rst  $30                                         ; $6815: $f7
	ld   de, $ff3e                                   ; $6816: $11 $3e $ff
	ld   d, c                                        ; $6819: $51
	ld   de, $ff5f                                   ; $681a: $11 $5f $ff
	ld   de, $ff16                                   ; $681d: $11 $16 $ff
	rst  $30                                         ; $6820: $f7
	xor  e                                           ; $6821: $ab
	or   e                                           ; $6822: $b3
	ld   de, $ffcf                                   ; $6823: $11 $cf $ff
	ld   sp, hl                                      ; $6826: $f9
	ld   de, $ff1d                                   ; $6827: $11 $1d $ff
	sub  c                                           ; $682a: $91
	ld   de, $ff1f                                   ; $682b: $11 $1f $ff
	pop  af                                          ; $682e: $f1
	ld   de, $fe8f                                   ; $682f: $11 $8f $fe
	adc  b                                           ; $6832: $88
	ld   a, b                                        ; $6833: $78
	ld   de, $ff6f                                   ; $6834: $11 $6f $ff
	cp   $21                                         ; $6837: $fe $21
	add  hl, de                                      ; $6839: $19
	rst  $38                                         ; $683a: $ff
	pop  af                                          ; $683b: $f1
	ld   de, rAUD1ENV                                   ; $683c: $11 $12 $ff
	ei                                               ; $683f: $fb
	ld   de, $ff1b                                   ; $6840: $11 $1b $ff
	rst  $20                                         ; $6843: $e7
	ld   d, e                                        ; $6844: $53
	ld   d, c                                        ; $6845: $51
	ld   a, [de]                                     ; $6846: $1a
	rst  $38                                         ; $6847: $ff
	rst  $38                                         ; $6848: $ff
	sub  c                                           ; $6849: $91
	ld   de, $fbef                                   ; $684a: $11 $ef $fb
	ld   de, $3f11                                   ; $684d: $11 $11 $3f
	rst  $38                                         ; $6850: $ff
	or   c                                           ; $6851: $b1
	ld   de, $ffbf                                   ; $6852: $11 $bf $ff
	ld   b, c                                        ; $6855: $41
	inc  d                                           ; $6856: $14
	ld   de, $ffff                                   ; $6857: $11 $ff $ff
	add  $11                                         ; $685a: $c6 $11
	ccf                                              ; $685c: $3f
	rst  $38                                         ; $685d: $ff
	sub  c                                           ; $685e: $91
	ld   de, rAUD1ENV                                   ; $685f: $11 $12 $ff
	rst  $38                                         ; $6862: $ff
	ld   de, $ff18                                   ; $6863: $11 $18 $ff
	db   $f4                                         ; $6866: $f4
	ld   de, $3f24                                   ; $6867: $11 $24 $3f
	rst  $38                                         ; $686a: $ff
	db   $fc                                         ; $686b: $fc
	ld   h, d                                        ; $686c: $62
	inc  d                                           ; $686d: $14
	rst  $38                                         ; $686e: $ff
	ld   sp, hl                                      ; $686f: $f9
	ld   de, $1f11                                   ; $6870: $11 $11 $1f
	rst  $38                                         ; $6873: $ff
	pop  af                                          ; $6874: $f1
	ld   de, $ff4f                                   ; $6875: $11 $4f $ff
	ld   [hl], c                                     ; $6878: $71
	ld   de, $df75                                   ; $6879: $11 $75 $df
	cp   $c7                                         ; $687c: $fe $c7
	ld   d, c                                        ; $687e: $51
	ld   a, $ff                                      ; $687f: $3e $ff
	and  e                                           ; $6881: $a3
	ld   de, $3f11                                   ; $6882: $11 $11 $3f
	rst  $38                                         ; $6885: $ff
	and  c                                           ; $6886: $a1
	ld   de, $ffdf                                   ; $6887: $11 $df $ff
	ld   de, $7915                                   ; $688a: $11 $15 $79
	rst  $38                                         ; $688d: $ff
	db   $ec                                         ; $688e: $ec
	sub  l                                           ; $688f: $95
	ld   b, d                                        ; $6890: $42
	cp   a                                           ; $6891: $bf
	call c, $1161                                    ; $6892: $dc $61 $11
	ld   de, $ffbf                                   ; $6895: $11 $bf $ff

Jump_0f8_6898:
	ld   de, rAUD1LEN                                   ; $6898: $11 $11 $ff
	rst  $30                                         ; $689b: $f7
	ld   de, $9f19                                   ; $689c: $11 $19 $9f
	cp   $db                                         ; $689f: $fe $db
	ld   h, e                                        ; $68a1: $63
	scf                                              ; $68a2: $37
	cp   $c8                                         ; $68a3: $fe $c8
	ld   b, c                                        ; $68a5: $41
	ld   de, rAUD1LEN                                   ; $68a6: $11 $11 $ff
	rst  $38                                         ; $68a9: $ff
	ld   de, rAUD1HIGH                                   ; $68aa: $11 $14 $ff
	pop  af                                          ; $68ad: $f1
	ld   de, $bf1c                                   ; $68ae: $11 $1c $bf
	db   $fc                                         ; $68b1: $fc
	ret  c                                           ; $68b2: $d8

	inc  sp                                          ; $68b3: $33
	ld   e, h                                        ; $68b4: $5c
	cp   $a4                                         ; $68b5: $fe $a4
	ld   hl, $1111                                   ; $68b7: $21 $11 $11
	rst  $38                                         ; $68ba: $ff
	rst  $38                                         ; $68bb: $ff
	ld   de, $ff15                                   ; $68bc: $11 $15 $ff
	pop  af                                          ; $68bf: $f1
	ld   de, $df0d                                   ; $68c0: $11 $0d $df
	ei                                               ; $68c3: $fb
	ret  c                                           ; $68c4: $d8

	inc  hl                                          ; $68c5: $23
	ld   e, l                                        ; $68c6: $5d
	cp   $92                                         ; $68c7: $fe $92
	ld   de, $1122                                   ; $68c9: $11 $22 $11
	rst  $38                                         ; $68cc: $ff
	rst  $38                                         ; $68cd: $ff
	ld   de, rAUD1HIGH                                   ; $68ce: $11 $14 $ff
	pop  af                                          ; $68d1: $f1
	ld   de, $ff1f                                   ; $68d2: $11 $1f $ff
	ld   sp, hl                                      ; $68d5: $f9
	cp   b                                           ; $68d6: $b8
	inc  h                                           ; $68d7: $24
	ld   e, l                                        ; $68d8: $5d
	rst  $38                                         ; $68d9: $ff
	and  d                                           ; $68da: $a2
	ld   de, $1143                                   ; $68db: $11 $43 $11
	sbc  a                                           ; $68de: $9f
	rst  $38                                         ; $68df: $ff
	ld   de, rAUD1LEN                                   ; $68e0: $11 $11 $ff
	push af                                          ; $68e3: $f5
	ld   de, $ff1e                                   ; $68e4: $11 $1e $ff
	ld   hl, sp-$67                                  ; $68e7: $f8 $99
	dec  [hl]                                        ; $68e9: $35
	ld   e, d                                        ; $68ea: $5a
	rst  $38                                         ; $68eb: $ff
	or   h                                           ; $68ec: $b4
	ld   de, $2134                                   ; $68ed: $11 $34 $21
	rra                                              ; $68f0: $1f
	rst  $38                                         ; $68f1: $ff
	sub  c                                           ; $68f2: $91
	ld   de, $ffff                                   ; $68f3: $11 $ff $ff
	ld   de, $ff18                                   ; $68f6: $11 $18 $ff
	ld   a, [$4469]                                  ; $68f9: $fa $69 $44
	ld   h, a                                        ; $68fc: $67
	rst  $38                                         ; $68fd: $ff
	and  $11                                         ; $68fe: $e6 $11
	dec  h                                           ; $6900: $25
	ld   b, c                                        ; $6901: $41
	rra                                              ; $6902: $1f
	rst  $38                                         ; $6903: $ff
	pop  af                                          ; $6904: $f1
	ld   de, $ff3f                                   ; $6905: $11 $3f $ff
	ld   hl, rAUD1LEN                                   ; $6908: $21 $11 $ff
	cp   $67                                         ; $690b: $fe $67
	add  e                                           ; $690d: $83
	ld   [hl], l                                     ; $690e: $75
	xor  a                                           ; $690f: $af
	db   $fc                                         ; $6910: $fc
	ld   b, c                                        ; $6911: $41
	inc  de                                          ; $6912: $13
	inc  sp                                          ; $6913: $33
	ld   [de], a                                     ; $6914: $12
	rst  $38                                         ; $6915: $ff
	ld   a, [$1f11]                                  ; $6916: $fa $11 $1f
	rst  $38                                         ; $6919: $ff
	pop  af                                          ; $691a: $f1
	ld   de, $ff6f                                   ; $691b: $11 $6f $ff
	or   l                                           ; $691e: $b5
	sub  [hl]                                        ; $691f: $96
	ld   b, a                                        ; $6920: $47
	ld   c, [hl]                                     ; $6921: $4e
	rst  $38                                         ; $6922: $ff
	and  c                                           ; $6923: $a1
	ld   de, $5134                                   ; $6924: $11 $34 $51
	cp   a                                           ; $6927: $bf
	rst  $38                                         ; $6928: $ff
	ld   de, rAUD1LEN                                   ; $6929: $11 $11 $ff
	ld   sp, hl                                      ; $692c: $f9
	ld   de, $ff1a                                   ; $692d: $11 $1a $ff
	ld   hl, sp+$6a                                  ; $6930: $f8 $6a
	ld   d, a                                        ; $6932: $57
	ld   d, [hl]                                     ; $6933: $56
	rst  $38                                         ; $6934: $ff
	ld   sp, hl                                      ; $6935: $f9
	ld   de, $5313                                   ; $6936: $11 $13 $53
	rra                                              ; $6939: $1f
	rst  $38                                         ; $693a: $ff
	pop  af                                          ; $693b: $f1
	ld   de, $ff6f                                   ; $693c: $11 $6f $ff
	ld   sp, $cf11                                   ; $693f: $31 $11 $cf
	ld   a, [$9768]                                  ; $6942: $fa $68 $97
	ld   [hl], e                                     ; $6945: $73
	ld   a, [hl]                                     ; $6946: $7e
	rst  $38                                         ; $6947: $ff
	add  c                                           ; $6948: $81
	ld   de, $2535                                   ; $6949: $11 $35 $25
	rst  $38                                         ; $694c: $ff
	ei                                               ; $694d: $fb
	ld   de, $ff1b                                   ; $694e: $11 $1b $ff
	ldh  a, [c]                                      ; $6951: $f2
	ld   de, $ff4d                                   ; $6952: $11 $4d $ff
	add  a                                           ; $6955: $87
	xor  c                                           ; $6956: $a9
	add  [hl]                                        ; $6957: $86
	add  hl, sp                                      ; $6958: $39
	rst  $28                                         ; $6959: $ef
	and  $11                                         ; $695a: $e6 $11
	ld   [de], a                                     ; $695c: $12
	ld   d, e                                        ; $695d: $53
	rst  $38                                         ; $695e: $ff
	rst  $38                                         ; $695f: $ff
	ld   de, rAUD1LEN                                   ; $6960: $11 $11 $ff
	ld   a, [$1911]                                  ; $6963: $fa $11 $19
	rst  $38                                         ; $6966: $ff
	add  $99                                         ; $6967: $c6 $99
	adc  b                                           ; $6969: $88
	ld   [hl], $cf                                   ; $696a: $36 $cf
	ei                                               ; $696c: $fb
	ld   de, $5411                                   ; $696d: $11 $11 $54
	xor  a                                           ; $6970: $af
	rst  $38                                         ; $6971: $ff
	ld   [hl], c                                     ; $6972: $71
	ld   de, $ffbf                                   ; $6973: $11 $bf $ff
	ld   sp, $af14                                   ; $6976: $31 $14 $af
	ld   hl, sp+$79                                  ; $6979: $f8 $79
	ld   a, d                                        ; $697b: $7a
	ld   d, e                                        ; $697c: $53
	xor  h                                           ; $697d: $ac
	cp   $61                                         ; $697e: $fe $61
	ld   de, $7f36                                   ; $6980: $11 $36 $7f
	rst  $38                                         ; $6983: $ff
	pop  bc                                          ; $6984: $c1
	ld   de, $ff7f                                   ; $6985: $11 $7f $ff
	ld   h, c                                        ; $6988: $61
	ld   de, $fbaf                                   ; $6989: $11 $af $fb
	ld   l, b                                        ; $698c: $68
	ld   a, b                                        ; $698d: $78
	add  h                                           ; $698e: $84
	xor  h                                           ; $698f: $ac
	rst  $38                                         ; $6990: $ff
	add  c                                           ; $6991: $81
	ld   de, $4f24                                   ; $6992: $11 $24 $4f
	rst  $38                                         ; $6995: $ff
	pop  af                                          ; $6996: $f1
	ld   de, $ff3f                                   ; $6997: $11 $3f $ff
	ld   [hl], c                                     ; $699a: $71
	ld   de, $fcaf                                   ; $699b: $11 $af $fc
	halt                                             ; $699e: $76
	ld   [hl], a                                     ; $699f: $77
	sub  l                                           ; $69a0: $95
	ld   a, e                                        ; $69a1: $7b
	rst  JumpTable                                         ; $69a2: $df
	call nz, $1411                                   ; $69a3: $c4 $11 $14
	ld   c, d                                        ; $69a6: $4a
	rst  $38                                         ; $69a7: $ff
	di                                               ; $69a8: $f3
	ld   de, $ff1f                                   ; $69a9: $11 $1f $ff
	pop  hl                                          ; $69ac: $e1
	ld   de, $ff7e                                   ; $69ad: $11 $7e $ff
	add  [hl]                                        ; $69b0: $86
	ld   h, a                                        ; $69b1: $67
	and  a                                           ; $69b2: $a7
	ld   l, c                                        ; $69b3: $69
	cp   a                                           ; $69b4: $bf
	ld   hl, sp+$11                                  ; $69b5: $f8 $11

Jump_0f8_69b7:
	inc  de                                          ; $69b7: $13
	ld   b, [hl]                                     ; $69b8: $46
	rst  $38                                         ; $69b9: $ff
	ei                                               ; $69ba: $fb
	ld   de, $ff18                                   ; $69bb: $11 $18 $ff
	db   $f4                                         ; $69be: $f4
	ld   de, $ff3b                                   ; $69bf: $11 $3b $ff
	sub  a                                           ; $69c2: $97
	ld   h, [hl]                                     ; $69c3: $66
	adc  b                                           ; $69c4: $88
	ld   l, b                                        ; $69c5: $68
	adc  h                                           ; $69c6: $8c
	db   $fc                                         ; $69c7: $fc
	ld   h, c                                        ; $69c8: $61
	ld   de, $ef32                                   ; $69c9: $11 $32 $ef
	rst  $38                                         ; $69cc: $ff
	ld   de, rAUD1LEN                                   ; $69cd: $11 $11 $ff
	ld   sp, hl                                      ; $69d0: $f9
	ld   de, $ff17                                   ; $69d1: $11 $17 $ff
	and  a                                           ; $69d4: $a7
	ld   h, a                                        ; $69d5: $67
	adc  c                                           ; $69d6: $89
	ld   h, a                                        ; $69d7: $67
	sbc  d                                           ; $69d8: $9a
	db   $db                                         ; $69d9: $db
	sub  [hl]                                        ; $69da: $96
	ld   b, e                                        ; $69db: $43
	ld   hl, $ff1a                                   ; $69dc: $21 $1a $ff
	pop  af                                          ; $69df: $f1
	ld   de, $ff1f                                   ; $69e0: $11 $1f $ff
	or   c                                           ; $69e3: $b1
	ld   de, $f98e                                   ; $69e4: $11 $8e $f9
	halt                                             ; $69e7: $76
	sbc  d                                           ; $69e8: $9a
	sub  l                                           ; $69e9: $95
	ld   e, b                                        ; $69ea: $58
	xor  [hl]                                        ; $69eb: $ae
	ret  z                                           ; $69ec: $c8

	ld   d, l                                        ; $69ed: $55
	ld   a, b                                        ; $69ee: $78
	ld   d, c                                        ; $69ef: $51
	rra                                              ; $69f0: $1f
	rst  $38                                         ; $69f1: $ff
	pop  af                                          ; $69f2: $f1
	ld   de, $ff7f                                   ; $69f3: $11 $7f $ff
	ld   sp, $bf15                                   ; $69f6: $31 $15 $bf
	add  $67                                         ; $69f9: $c6 $67
	cp   e                                           ; $69fb: $bb
	ld   h, e                                        ; $69fc: $63
	ld   e, c                                        ; $69fd: $59
	xor  $a5                                         ; $69fe: $ee $a5
	inc  h                                           ; $6a00: $24
	sbc  h                                           ; $6a01: $9c
	sub  c                                           ; $6a02: $91
	rla                                              ; $6a03: $17
	rst  $38                                         ; $6a04: $ff
	pop  af                                          ; $6a05: $f1
	ld   de, $ff2f                                   ; $6a06: $11 $2f $ff
	ld   d, c                                        ; $6a09: $51
	inc  d                                           ; $6a0a: $14
	sbc  a                                           ; $6a0b: $9f
	sub  $67                                         ; $6a0c: $d6 $67
	cp   e                                           ; $6a0e: $bb
	add  h                                           ; $6a0f: $84
	ld   b, [hl]                                     ; $6a10: $46
	cp   [hl]                                        ; $6a11: $be
	reti                                             ; $6a12: $d9


	ld   b, e                                        ; $6a13: $43
	ld   e, c                                        ; $6a14: $59
	cp   h                                           ; $6a15: $bc
	sub  c                                           ; $6a16: $91
	rla                                              ; $6a17: $17
	rst  $38                                         ; $6a18: $ff
	pop  af                                          ; $6a19: $f1
	ld   de, $fe5f                                   ; $6a1a: $11 $5f $fe
	ld   b, c                                        ; $6a1d: $41
	rla                                              ; $6a1e: $17
	sbc  [hl]                                        ; $6a1f: $9e
	and  [hl]                                        ; $6a20: $a6
	ld   [hl], a                                     ; $6a21: $77
	xor  b                                           ; $6a22: $a8
	ld   h, l                                        ; $6a23: $65
	ld   a, b                                        ; $6a24: $78
	cp   h                                           ; $6a25: $bc
	and  [hl]                                        ; $6a26: $a6
	ld   d, [hl]                                     ; $6a27: $56
	adc  e                                           ; $6a28: $8b
	cp   d                                           ; $6a29: $ba
	halt                                             ; $6a2a: $76
	ld   h, a                                        ; $6a2b: $67
	add  a                                           ; $6a2c: $87
	inc  [hl]                                        ; $6a2d: $34
	cp   [hl]                                        ; $6a2e: $be
	ld   hl, sp+$11                                  ; $6a2f: $f8 $11
	ld   a, [de]                                     ; $6a31: $1a
	rst  $38                                         ; $6a32: $ff
	and  e                                           ; $6a33: $a3
	inc  d                                           ; $6a34: $14
	adc  d                                           ; $6a35: $8a
	cp   b                                           ; $6a36: $b8
	ld   [hl], a                                     ; $6a37: $77
	sbc  d                                           ; $6a38: $9a
	sub  a                                           ; $6a39: $97
	ld   h, a                                        ; $6a3a: $67
	adc  c                                           ; $6a3b: $89
	xor  b                                           ; $6a3c: $a8
	ld   [hl], a                                     ; $6a3d: $77
	ld   a, c                                        ; $6a3e: $79
	sbc  b                                           ; $6a3f: $98
	adc  b                                           ; $6a40: $88
	ld   [hl], a                                     ; $6a41: $77
	ld   a, b                                        ; $6a42: $78
	adc  c                                           ; $6a43: $89
	adc  b                                           ; $6a44: $88
	ld   [hl], a                                     ; $6a45: $77
	ld   a, b                                        ; $6a46: $78
	add  a                                           ; $6a47: $87
	ld   a, b                                        ; $6a48: $78
	adc  b                                           ; $6a49: $88
	adc  b                                           ; $6a4a: $88
	sbc  c                                           ; $6a4b: $99
	sbc  b                                           ; $6a4c: $98
	ld   [hl], a                                     ; $6a4d: $77
	ld   a, c                                        ; $6a4e: $79
	xor  c                                           ; $6a4f: $a9
	halt                                             ; $6a50: $76
	ld   a, c                                        ; $6a51: $79
	cp   d                                           ; $6a52: $ba
	add  [hl]                                        ; $6a53: $86
	ld   h, a                                        ; $6a54: $67
	sbc  d                                           ; $6a55: $9a
	sub  [hl]                                        ; $6a56: $96
	ld   h, a                                        ; $6a57: $67
	adc  d                                           ; $6a58: $8a
	xor  c                                           ; $6a59: $a9
	ld   [hl], l                                     ; $6a5a: $75
	ld   a, b                                        ; $6a5b: $78
	sbc  c                                           ; $6a5c: $99
	sbc  b                                           ; $6a5d: $98
	halt                                             ; $6a5e: $76
	ld   a, b                                        ; $6a5f: $78
	xor  e                                           ; $6a60: $ab
	and  a                                           ; $6a61: $a7
	ld   d, h                                        ; $6a62: $54
	ld   h, l                                        ; $6a63: $65
	adc  l                                           ; $6a64: $8d
	db   $dd                                         ; $6a65: $dd
	ld   d, d                                        ; $6a66: $52
	inc  [hl]                                        ; $6a67: $34
	cp   l                                           ; $6a68: $bd
	jp   hl                                          ; $6a69: $e9


	ld   b, h                                        ; $6a6a: $44
	ld   h, a                                        ; $6a6b: $67
	adc  d                                           ; $6a6c: $8a
	sbc  c                                           ; $6a6d: $99
	adc  c                                           ; $6a6e: $89
	sub  a                                           ; $6a6f: $97
	ld   h, a                                        ; $6a70: $67
	adc  c                                           ; $6a71: $89
	xor  b                                           ; $6a72: $a8
	add  a                                           ; $6a73: $87
	ld   a, b                                        ; $6a74: $78
	sbc  c                                           ; $6a75: $99
	adc  c                                           ; $6a76: $89
	sbc  c                                           ; $6a77: $99
	adc  b                                           ; $6a78: $88
	ld   [hl], a                                     ; $6a79: $77
	ld   a, b                                        ; $6a7a: $78
	sbc  c                                           ; $6a7b: $99
	sbc  b                                           ; $6a7c: $98
	ld   [hl], a                                     ; $6a7d: $77
	ld   a, b                                        ; $6a7e: $78
	sbc  b                                           ; $6a7f: $98
	sbc  b                                           ; $6a80: $98
	ld   [hl], a                                     ; $6a81: $77
	adc  b                                           ; $6a82: $88
	sbc  b                                           ; $6a83: $98
	adc  b                                           ; $6a84: $88
	adc  b                                           ; $6a85: $88
	adc  b                                           ; $6a86: $88
	adc  b                                           ; $6a87: $88
	adc  b                                           ; $6a88: $88
	sbc  b                                           ; $6a89: $98
	sbc  b                                           ; $6a8a: $98
	add  a                                           ; $6a8b: $87
	ld   a, b                                        ; $6a8c: $78
	adc  c                                           ; $6a8d: $89
	adc  b                                           ; $6a8e: $88
	adc  b                                           ; $6a8f: $88
	ld   a, b                                        ; $6a90: $78
	adc  b                                           ; $6a91: $88
	sbc  b                                           ; $6a92: $98
	adc  b                                           ; $6a93: $88
	adc  b                                           ; $6a94: $88
	adc  b                                           ; $6a95: $88
	adc  b                                           ; $6a96: $88
	adc  b                                           ; $6a97: $88
	adc  b                                           ; $6a98: $88
	adc  b                                           ; $6a99: $88
	sbc  b                                           ; $6a9a: $98
	adc  b                                           ; $6a9b: $88
	adc  b                                           ; $6a9c: $88
	adc  b                                           ; $6a9d: $88
	adc  b                                           ; $6a9e: $88
	adc  b                                           ; $6a9f: $88
	adc  b                                           ; $6aa0: $88
	adc  b                                           ; $6aa1: $88
	adc  b                                           ; $6aa2: $88
	adc  b                                           ; $6aa3: $88
	sbc  b                                           ; $6aa4: $98
	adc  b                                           ; $6aa5: $88
	adc  b                                           ; $6aa6: $88
	adc  c                                           ; $6aa7: $89
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
	sbc  b                                           ; $6abf: $98
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
	add  c                                           ; $6b0c: $81
	ld   de, $1111                                   ; $6b0d: $11 $11 $11
	ld   de, $1111                                   ; $6b10: $11 $11 $11
	ld   de, $1111                                   ; $6b13: $11 $11 $11
	ld   de, $1111                                   ; $6b16: $11 $11 $11
	ld   de, $1111                                   ; $6b19: $11 $11 $11
	ld   de, $1111                                   ; $6b1c: $11 $11 $11
	ld   de, $1111                                   ; $6b1f: $11 $11 $11
	ld   de, $1111                                   ; $6b22: $11 $11 $11
	ld   de, $1111                                   ; $6b25: $11 $11 $11
	ld   de, $1111                                   ; $6b28: $11 $11 $11
	ld   de, $1111                                   ; $6b2b: $11 $11 $11
	ld   de, $1111                                   ; $6b2e: $11 $11 $11
	ld   de, $4800                                   ; $6b31: $11 $00 $48
	ld   de, $1111                                   ; $6b34: $11 $11 $11
	ld   de, $1111                                   ; $6b37: $11 $11 $11
	ld   de, $1111                                   ; $6b3a: $11 $11 $11
	ld   de, $5413                                   ; $6b3d: $11 $13 $54
	ld   d, h                                        ; $6b40: $54
	ld   d, h                                        ; $6b41: $54
	ld   b, c                                        ; $6b42: $41
	rra                                              ; $6b43: $1f
	rst  $38                                         ; $6b44: $ff
	pop  af                                          ; $6b45: $f1
	ld   de, $1311                                   ; $6b46: $11 $11 $13
	ld   de, $1c11                                   ; $6b49: $11 $11 $1c
	sbc  $dc                                         ; $6b4c: $de $dc
	sbc  $d1                                         ; $6b4e: $de $d1
	ld   de, $1111                                   ; $6b50: $11 $11 $11
	ld   de, $1111                                   ; $6b53: $11 $11 $11
	ld   de, $1111                                   ; $6b56: $11 $11 $11
	ld   de, $1111                                   ; $6b59: $11 $11 $11
	ld   de, $5411                                   ; $6b5c: $11 $11 $54
	ld   b, h                                        ; $6b5f: $44
	inc  de                                          ; $6b60: $13
	ld   de, $5454                                   ; $6b61: $11 $54 $54
	ld   h, a                                        ; $6b64: $67
	ld   [hl], d                                     ; $6b65: $72
	ld   de, $1111                                   ; $6b66: $11 $11 $11
	ld   de, $1112                                   ; $6b69: $11 $12 $11
	ld   [de], a                                     ; $6b6c: $12
	ld   de, $1111                                   ; $6b6d: $11 $11 $11
	ld   h, [hl]                                     ; $6b70: $66
	halt                                             ; $6b71: $76
	di                                               ; $6b72: $f3
	ld   de, $8788                                   ; $6b73: $11 $88 $87
	sbc  b                                           ; $6b76: $98
	adc  b                                           ; $6b77: $88
	ld   a, c                                        ; $6b78: $79
	add  a                                           ; $6b79: $87
	add  a                                           ; $6b7a: $87
	sub  a                                           ; $6b7b: $97
	adc  b                                           ; $6b7c: $88
	ld   a, c                                        ; $6b7d: $79
	ld   [hl], a                                     ; $6b7e: $77
	add  a                                           ; $6b7f: $87
	ld   a, c                                        ; $6b80: $79
	and  a                                           ; $6b81: $a7
	sbc  b                                           ; $6b82: $98
	ld   a, d                                        ; $6b83: $7a
	ld   [hl], a                                     ; $6b84: $77
	sub  a                                           ; $6b85: $97
	adc  c                                           ; $6b86: $89
	ld   a, b                                        ; $6b87: $78
	add  a                                           ; $6b88: $87
	sub  a                                           ; $6b89: $97
	ld   a, c                                        ; $6b8a: $79
	ld   a, b                                        ; $6b8b: $78
	sub  a                                           ; $6b8c: $97
	adc  c                                           ; $6b8d: $89
	ld   a, b                                        ; $6b8e: $78
	add  a                                           ; $6b8f: $87
	adc  b                                           ; $6b90: $88
	ld   a, b                                        ; $6b91: $78
	adc  c                                           ; $6b92: $89
	add  a                                           ; $6b93: $87
	ld   [hl], a                                     ; $6b94: $77
	adc  d                                           ; $6b95: $8a
	sbc  b                                           ; $6b96: $98
	ld   a, b                                        ; $6b97: $78
	sbc  b                                           ; $6b98: $98
	adc  b                                           ; $6b99: $88
	ld   a, b                                        ; $6b9a: $78
	adc  b                                           ; $6b9b: $88
	add  a                                           ; $6b9c: $87
	sub  a                                           ; $6b9d: $97
	adc  b                                           ; $6b9e: $88
	ld   a, c                                        ; $6b9f: $79
	add  a                                           ; $6ba0: $87
	adc  b                                           ; $6ba1: $88
	ld   a, b                                        ; $6ba2: $78
	add  a                                           ; $6ba3: $87
	adc  b                                           ; $6ba4: $88
	ld   a, c                                        ; $6ba5: $79
	ld   a, b                                        ; $6ba6: $78
	add  a                                           ; $6ba7: $87
	sbc  b                                           ; $6ba8: $98
	ld   a, c                                        ; $6ba9: $79
	add  a                                           ; $6baa: $87
	sub  a                                           ; $6bab: $97
	adc  c                                           ; $6bac: $89
	ld   a, b                                        ; $6bad: $78
	add  a                                           ; $6bae: $87
	add  a                                           ; $6baf: $87
	adc  b                                           ; $6bb0: $88
	ld   a, c                                        ; $6bb1: $79
	add  a                                           ; $6bb2: $87
	add  a                                           ; $6bb3: $87
	adc  b                                           ; $6bb4: $88
	ld   a, c                                        ; $6bb5: $79
	ld   a, b                                        ; $6bb6: $78
	add  a                                           ; $6bb7: $87
	add  a                                           ; $6bb8: $87
	sbc  b                                           ; $6bb9: $98
	ld   a, c                                        ; $6bba: $79
	ld   a, b                                        ; $6bbb: $78
	add  a                                           ; $6bbc: $87
	adc  b                                           ; $6bbd: $88
	ld   l, d                                        ; $6bbe: $6a
	add  [hl]                                        ; $6bbf: $86
	sub  a                                           ; $6bc0: $97
	adc  d                                           ; $6bc1: $8a
	ld   a, b                                        ; $6bc2: $78
	sub  a                                           ; $6bc3: $97
	ld   a, c                                        ; $6bc4: $79
	ld   a, b                                        ; $6bc5: $78
	sub  [hl]                                        ; $6bc6: $96
	ld   a, c                                        ; $6bc7: $79
	xor  b                                           ; $6bc8: $a8
	adc  b                                           ; $6bc9: $88
	ld   a, c                                        ; $6bca: $79
	add  a                                           ; $6bcb: $87
	sub  a                                           ; $6bcc: $97
	adc  c                                           ; $6bcd: $89
	ld   a, c                                        ; $6bce: $79
	ld   [hl], a                                     ; $6bcf: $77
	sub  [hl]                                        ; $6bd0: $96
	sub  a                                           ; $6bd1: $97
	ld   a, c                                        ; $6bd2: $79
	ld   l, b                                        ; $6bd3: $68
	add  [hl]                                        ; $6bd4: $86
	sub  a                                           ; $6bd5: $97
	ld   a, e                                        ; $6bd6: $7b
	ld   l, b                                        ; $6bd7: $68
	and  [hl]                                        ; $6bd8: $a6
	sbc  b                                           ; $6bd9: $98
	ld   a, d                                        ; $6bda: $7a
	ld   a, c                                        ; $6bdb: $79
	and  [hl]                                        ; $6bdc: $a6
	adc  b                                           ; $6bdd: $88
	ld   a, c                                        ; $6bde: $79
	ld   [hl], a                                     ; $6bdf: $77
	ld   h, a                                        ; $6be0: $67
	ld   a, b                                        ; $6be1: $78
	ld   [hl], a                                     ; $6be2: $77
	sub  a                                           ; $6be3: $97
	adc  c                                           ; $6be4: $89
	adc  b                                           ; $6be5: $88
	sbc  b                                           ; $6be6: $98
	adc  c                                           ; $6be7: $89
	adc  c                                           ; $6be8: $89
	ld   a, b                                        ; $6be9: $78
	halt                                             ; $6bea: $76
	add  a                                           ; $6beb: $87
	adc  b                                           ; $6bec: $88
	ld   a, b                                        ; $6bed: $78
	adc  b                                           ; $6bee: $88
	adc  c                                           ; $6bef: $89
	ld   a, c                                        ; $6bf0: $79
	adc  b                                           ; $6bf1: $88
	sub  a                                           ; $6bf2: $97
	adc  b                                           ; $6bf3: $88
	ld   a, b                                        ; $6bf4: $78
	ld   a, b                                        ; $6bf5: $78
	add  a                                           ; $6bf6: $87
	add  a                                           ; $6bf7: $87
	add  a                                           ; $6bf8: $87
	sbc  b                                           ; $6bf9: $98
	ld   a, c                                        ; $6bfa: $79
	ld   a, b                                        ; $6bfb: $78
	adc  b                                           ; $6bfc: $88
	add  a                                           ; $6bfd: $87
	adc  b                                           ; $6bfe: $88
	add  a                                           ; $6bff: $87
	sbc  b                                           ; $6c00: $98
	adc  b                                           ; $6c01: $88
	ld   a, b                                        ; $6c02: $78
	sbc  b                                           ; $6c03: $98
	ld   a, c                                        ; $6c04: $79
	add  a                                           ; $6c05: $87
	sub  a                                           ; $6c06: $97
	add  a                                           ; $6c07: $87
	ld   a, b                                        ; $6c08: $78
	ld   a, b                                        ; $6c09: $78
	add  a                                           ; $6c0a: $87
	sub  a                                           ; $6c0b: $97
	adc  b                                           ; $6c0c: $88
	ld   a, c                                        ; $6c0d: $79
	add  a                                           ; $6c0e: $87
	sub  a                                           ; $6c0f: $97
	sbc  c                                           ; $6c10: $99
	ld   l, c                                        ; $6c11: $69
	ld   [hl], a                                     ; $6c12: $77
	sub  a                                           ; $6c13: $97
	adc  b                                           ; $6c14: $88
	adc  c                                           ; $6c15: $89
	ld   a, c                                        ; $6c16: $79
	sub  [hl]                                        ; $6c17: $96
	and  a                                           ; $6c18: $a7
	ld   a, c                                        ; $6c19: $79
	ld   l, d                                        ; $6c1a: $6a
	ld   [hl], a                                     ; $6c1b: $77
	and  [hl]                                        ; $6c1c: $a6
	xor  c                                           ; $6c1d: $a9
	ld   l, d                                        ; $6c1e: $6a
	ld   l, c                                        ; $6c1f: $69
	sub  [hl]                                        ; $6c20: $96
	and  a                                           ; $6c21: $a7
	ld   a, c                                        ; $6c22: $79
	ld   a, c                                        ; $6c23: $79
	add  a                                           ; $6c24: $87
	and  a                                           ; $6c25: $a7
	adc  d                                           ; $6c26: $8a
	ld   l, b                                        ; $6c27: $68
	sub  a                                           ; $6c28: $97
	add  a                                           ; $6c29: $87
	sbc  b                                           ; $6c2a: $98
	ld   a, c                                        ; $6c2b: $79
	ld   a, c                                        ; $6c2c: $79
	add  a                                           ; $6c2d: $87
	sub  a                                           ; $6c2e: $97
	adc  b                                           ; $6c2f: $88
	sbc  b                                           ; $6c30: $98
	adc  b                                           ; $6c31: $88
	ld   a, b                                        ; $6c32: $78
	ld   a, b                                        ; $6c33: $78
	add  a                                           ; $6c34: $87
	add  a                                           ; $6c35: $87
	adc  b                                           ; $6c36: $88
	adc  b                                           ; $6c37: $88
	adc  b                                           ; $6c38: $88
	adc  b                                           ; $6c39: $88
	adc  b                                           ; $6c3a: $88
	sub  a                                           ; $6c3b: $97
	adc  b                                           ; $6c3c: $88
	ld   a, b                                        ; $6c3d: $78
	add  a                                           ; $6c3e: $87
	adc  c                                           ; $6c3f: $89
	ld   a, c                                        ; $6c40: $79
	add  a                                           ; $6c41: $87
	and  a                                           ; $6c42: $a7
	sbc  b                                           ; $6c43: $98
	ld   a, b                                        ; $6c44: $78
	sub  a                                           ; $6c45: $97
	adc  c                                           ; $6c46: $89
	ld   [hl], a                                     ; $6c47: $77
	sbc  b                                           ; $6c48: $98
	ld   a, b                                        ; $6c49: $78
	ld   a, b                                        ; $6c4a: $78
	add  a                                           ; $6c4b: $87
	and  [hl]                                        ; $6c4c: $a6
	adc  e                                           ; $6c4d: $8b
	ld   l, c                                        ; $6c4e: $69
	sub  a                                           ; $6c4f: $97
	and  a                                           ; $6c50: $a7
	adc  c                                           ; $6c51: $89
	ld   l, d                                        ; $6c52: $6a
	ld   [hl], a                                     ; $6c53: $77
	and  a                                           ; $6c54: $a7
	sbc  b                                           ; $6c55: $98
	ld   a, b                                        ; $6c56: $78
	ld   a, c                                        ; $6c57: $79
	ld   a, b                                        ; $6c58: $78
	sbc  b                                           ; $6c59: $98
	add  a                                           ; $6c5a: $87
	sbc  b                                           ; $6c5b: $98
	sub  a                                           ; $6c5c: $97
	adc  c                                           ; $6c5d: $89
	adc  c                                           ; $6c5e: $89
	ld   a, b                                        ; $6c5f: $78
	add  a                                           ; $6c60: $87
	sub  a                                           ; $6c61: $97
	add  a                                           ; $6c62: $87
	adc  b                                           ; $6c63: $88
	ld   a, c                                        ; $6c64: $79
	ld   a, b                                        ; $6c65: $78
	adc  b                                           ; $6c66: $88
	ld   a, c                                        ; $6c67: $79
	add  a                                           ; $6c68: $87
	sub  a                                           ; $6c69: $97
	sbc  c                                           ; $6c6a: $99
	ld   a, c                                        ; $6c6b: $79
	ld   [hl], a                                     ; $6c6c: $77
	sub  [hl]                                        ; $6c6d: $96
	adc  b                                           ; $6c6e: $88
	ld   a, d                                        ; $6c6f: $7a
	ld   a, b                                        ; $6c70: $78
	sub  a                                           ; $6c71: $97
	ld   a, c                                        ; $6c72: $79
	ld   a, b                                        ; $6c73: $78
	and  a                                           ; $6c74: $a7
	xor  b                                           ; $6c75: $a8
	adc  c                                           ; $6c76: $89
	adc  b                                           ; $6c77: $88
	adc  c                                           ; $6c78: $89
	ld   a, c                                        ; $6c79: $79
	add  a                                           ; $6c7a: $87
	sub  a                                           ; $6c7b: $97
	ld   a, c                                        ; $6c7c: $79
	ld   a, b                                        ; $6c7d: $78
	add  a                                           ; $6c7e: $87
	sub  a                                           ; $6c7f: $97
	adc  b                                           ; $6c80: $88
	ld   a, b                                        ; $6c81: $78
	adc  b                                           ; $6c82: $88
	adc  b                                           ; $6c83: $88
	adc  b                                           ; $6c84: $88
	ld   a, c                                        ; $6c85: $79
	ld   [hl], a                                     ; $6c86: $77
	sub  a                                           ; $6c87: $97
	add  a                                           ; $6c88: $87
	adc  c                                           ; $6c89: $89
	ld   a, c                                        ; $6c8a: $79
	adc  b                                           ; $6c8b: $88
	sbc  b                                           ; $6c8c: $98
	adc  c                                           ; $6c8d: $89
	adc  b                                           ; $6c8e: $88
	adc  b                                           ; $6c8f: $88
	sbc  b                                           ; $6c90: $98
	sbc  c                                           ; $6c91: $99
	adc  c                                           ; $6c92: $89
	adc  b                                           ; $6c93: $88
	adc  c                                           ; $6c94: $89
	adc  b                                           ; $6c95: $88
	ld   a, b                                        ; $6c96: $78
	add  [hl]                                        ; $6c97: $86
	add  a                                           ; $6c98: $87
	ld   a, b                                        ; $6c99: $78
	ld   a, b                                        ; $6c9a: $78
	ld   [hl], a                                     ; $6c9b: $77
	sub  [hl]                                        ; $6c9c: $96
	add  a                                           ; $6c9d: $87
	add  a                                           ; $6c9e: $87
	ld   a, b                                        ; $6c9f: $78
	adc  b                                           ; $6ca0: $88
	adc  b                                           ; $6ca1: $88
	ld   a, b                                        ; $6ca2: $78
	adc  b                                           ; $6ca3: $88
	sbc  c                                           ; $6ca4: $99
	adc  c                                           ; $6ca5: $89
	adc  c                                           ; $6ca6: $89
	xor  b                                           ; $6ca7: $a8
	adc  c                                           ; $6ca8: $89
	sbc  c                                           ; $6ca9: $99
	adc  d                                           ; $6caa: $8a
	sbc  b                                           ; $6cab: $98
	sbc  b                                           ; $6cac: $98
	sbc  b                                           ; $6cad: $98
	adc  c                                           ; $6cae: $89
	ld   a, b                                        ; $6caf: $78
	add  a                                           ; $6cb0: $87
	sub  a                                           ; $6cb1: $97
	adc  c                                           ; $6cb2: $89
	ld   l, b                                        ; $6cb3: $68
	ld   [hl], a                                     ; $6cb4: $77
	halt                                             ; $6cb5: $76
	ld   [hl], a                                     ; $6cb6: $77
	ld   [hl], a                                     ; $6cb7: $77
	halt                                             ; $6cb8: $76
	ld   [hl], a                                     ; $6cb9: $77
	ld   l, b                                        ; $6cba: $68
	ld   [hl], a                                     ; $6cbb: $77
	ld   [hl], a                                     ; $6cbc: $77
	sbc  b                                           ; $6cbd: $98
	ld   a, c                                        ; $6cbe: $79
	adc  b                                           ; $6cbf: $88
	sbc  c                                           ; $6cc0: $99
	sbc  c                                           ; $6cc1: $99
	sbc  c                                           ; $6cc2: $99
	sbc  d                                           ; $6cc3: $9a
	xor  c                                           ; $6cc4: $a9
	xor  c                                           ; $6cc5: $a9
	sbc  c                                           ; $6cc6: $99
	sbc  c                                           ; $6cc7: $99
	xor  c                                           ; $6cc8: $a9
	sbc  c                                           ; $6cc9: $99
	sub  a                                           ; $6cca: $97
	sbc  b                                           ; $6ccb: $98
	add  a                                           ; $6ccc: $87
	ld   a, b                                        ; $6ccd: $78
	ld   [hl], a                                     ; $6cce: $77
	halt                                             ; $6ccf: $76
	ld   [hl], a                                     ; $6cd0: $77
	ld   [hl], a                                     ; $6cd1: $77
	add  a                                           ; $6cd2: $87
	ld   a, c                                        ; $6cd3: $79
	ld   [hl], a                                     ; $6cd4: $77
	add  a                                           ; $6cd5: $87
	adc  b                                           ; $6cd6: $88
	ld   a, b                                        ; $6cd7: $78
	ld   [hl], a                                     ; $6cd8: $77
	sub  [hl]                                        ; $6cd9: $96
	add  a                                           ; $6cda: $87
	ld   h, a                                        ; $6cdb: $67
	ld   h, a                                        ; $6cdc: $67
	ld   [hl], a                                     ; $6cdd: $77
	ld   h, a                                        ; $6cde: $67
	add  a                                           ; $6cdf: $87
	xor  b                                           ; $6ce0: $a8
	sbc  d                                           ; $6ce1: $9a
	sbc  d                                           ; $6ce2: $9a
	sbc  c                                           ; $6ce3: $99
	xor  c                                           ; $6ce4: $a9
	sbc  d                                           ; $6ce5: $9a
	sbc  c                                           ; $6ce6: $99
	sbc  b                                           ; $6ce7: $98
	xor  b                                           ; $6ce8: $a8
	ld   a, b                                        ; $6ce9: $78
	ld   [hl], a                                     ; $6cea: $77
	halt                                             ; $6ceb: $76
	ld   [hl], a                                     ; $6cec: $77
	ld   [hl], a                                     ; $6ced: $77
	ld   [hl], a                                     ; $6cee: $77
	add  a                                           ; $6cef: $87
	ld   a, c                                        ; $6cf0: $79
	ld   a, c                                        ; $6cf1: $79
	add  a                                           ; $6cf2: $87
	sbc  b                                           ; $6cf3: $98
	ld   a, c                                        ; $6cf4: $79
	add  a                                           ; $6cf5: $87
	add  a                                           ; $6cf6: $87
	adc  b                                           ; $6cf7: $88
	ld   a, c                                        ; $6cf8: $79
	add  a                                           ; $6cf9: $87
	sbc  b                                           ; $6cfa: $98
	adc  b                                           ; $6cfb: $88
	adc  c                                           ; $6cfc: $89
	adc  b                                           ; $6cfd: $88
	adc  b                                           ; $6cfe: $88
	ld   a, c                                        ; $6cff: $79
	ld   [hl], a                                     ; $6d00: $77
	halt                                             ; $6d01: $76
	halt                                             ; $6d02: $76
	ld   h, [hl]                                     ; $6d03: $66
	ld   h, [hl]                                     ; $6d04: $66
	ld   h, [hl]                                     ; $6d05: $66
	ld   h, [hl]                                     ; $6d06: $66
	ld   [hl], a                                     ; $6d07: $77
	ld   a, b                                        ; $6d08: $78
	adc  b                                           ; $6d09: $88
	sbc  c                                           ; $6d0a: $99
	cp   d                                           ; $6d0b: $ba
	cp   e                                           ; $6d0c: $bb
	cp   e                                           ; $6d0d: $bb
	res  7, d                                        ; $6d0e: $cb $ba
	xor  c                                           ; $6d10: $a9
	sbc  c                                           ; $6d11: $99
	adc  b                                           ; $6d12: $88
	ld   [hl], a                                     ; $6d13: $77
	ld   [hl], a                                     ; $6d14: $77
	ld   [hl], a                                     ; $6d15: $77
	halt                                             ; $6d16: $76
	ld   [hl], a                                     ; $6d17: $77
	ld   [hl], a                                     ; $6d18: $77
	ld   [hl], a                                     ; $6d19: $77
	ld   [hl], a                                     ; $6d1a: $77
	add  a                                           ; $6d1b: $87
	ld   [hl], a                                     ; $6d1c: $77
	ld   l, b                                        ; $6d1d: $68
	ld   d, [hl]                                     ; $6d1e: $56
	ld   h, l                                        ; $6d1f: $65
	ld   h, l                                        ; $6d20: $65
	ld   d, [hl]                                     ; $6d21: $56
	ld   h, a                                        ; $6d22: $67
	ld   a, b                                        ; $6d23: $78
	adc  c                                           ; $6d24: $89
	xor  d                                           ; $6d25: $aa
	call z, $cccc                                    ; $6d26: $cc $cc $cc
	xor  e                                           ; $6d29: $ab
	xor  d                                           ; $6d2a: $aa
	sbc  b                                           ; $6d2b: $98
	add  a                                           ; $6d2c: $87
	ld   [hl], a                                     ; $6d2d: $77
	ld   h, a                                        ; $6d2e: $67
	ld   h, [hl]                                     ; $6d2f: $66
	ld   h, [hl]                                     ; $6d30: $66
	ld   [hl], a                                     ; $6d31: $77
	ld   [hl], a                                     ; $6d32: $77
	ld   a, b                                        ; $6d33: $78
	ld   [hl], a                                     ; $6d34: $77
	sbc  b                                           ; $6d35: $98
	adc  b                                           ; $6d36: $88
	sbc  b                                           ; $6d37: $98
	sbc  c                                           ; $6d38: $99
	sbc  c                                           ; $6d39: $99
	adc  c                                           ; $6d3a: $89
	adc  c                                           ; $6d3b: $89
	sbc  b                                           ; $6d3c: $98
	sbc  c                                           ; $6d3d: $99
	sbc  b                                           ; $6d3e: $98
	add  a                                           ; $6d3f: $87
	sub  a                                           ; $6d40: $97
	ld   a, b                                        ; $6d41: $78
	halt                                             ; $6d42: $76
	ld   [hl], l                                     ; $6d43: $75
	ld   d, l                                        ; $6d44: $55
	ld   b, l                                        ; $6d45: $45
	ld   b, h                                        ; $6d46: $44
	ld   b, l                                        ; $6d47: $45
	ld   d, l                                        ; $6d48: $55
	ld   [hl], a                                     ; $6d49: $77
	sbc  c                                           ; $6d4a: $99
	xor  h                                           ; $6d4b: $ac
	cp   h                                           ; $6d4c: $bc
	db   $ec                                         ; $6d4d: $ec
	db   $dd                                         ; $6d4e: $dd
	cp   e                                           ; $6d4f: $bb
	cp   d                                           ; $6d50: $ba
	xor  c                                           ; $6d51: $a9
	sbc  b                                           ; $6d52: $98
	add  a                                           ; $6d53: $87
	add  a                                           ; $6d54: $87
	ld   h, a                                        ; $6d55: $67
	halt                                             ; $6d56: $76
	ld   [hl], a                                     ; $6d57: $77
	ld   l, b                                        ; $6d58: $68
	ld   [hl], a                                     ; $6d59: $77
	sub  a                                           ; $6d5a: $97
	adc  b                                           ; $6d5b: $88
	ld   a, b                                        ; $6d5c: $78
	ld   a, b                                        ; $6d5d: $78
	adc  b                                           ; $6d5e: $88
	sbc  b                                           ; $6d5f: $98
	adc  b                                           ; $6d60: $88
	adc  b                                           ; $6d61: $88
	adc  b                                           ; $6d62: $88
	ld   a, b                                        ; $6d63: $78
	ld   [hl], a                                     ; $6d64: $77
	halt                                             ; $6d65: $76
	ld   h, [hl]                                     ; $6d66: $66
	ld   h, l                                        ; $6d67: $65
	ld   h, [hl]                                     ; $6d68: $66
	ld   h, a                                        ; $6d69: $67
	ld   a, b                                        ; $6d6a: $78
	adc  c                                           ; $6d6b: $89
	xor  e                                           ; $6d6c: $ab
	xor  e                                           ; $6d6d: $ab
	jp   z, $99ba                                    ; $6d6e: $ca $ba $99

	sbc  b                                           ; $6d71: $98
	sub  a                                           ; $6d72: $97
	ld   [hl], a                                     ; $6d73: $77
	ld   [hl], a                                     ; $6d74: $77
	ld   [hl], a                                     ; $6d75: $77
	ld   h, a                                        ; $6d76: $67
	ld   [hl], a                                     ; $6d77: $77
	ld   a, b                                        ; $6d78: $78
	adc  c                                           ; $6d79: $89
	sbc  d                                           ; $6d7a: $9a
	xor  c                                           ; $6d7b: $a9
	sbc  d                                           ; $6d7c: $9a
	sbc  d                                           ; $6d7d: $9a
	xor  c                                           ; $6d7e: $a9
	sbc  b                                           ; $6d7f: $98
	sbc  b                                           ; $6d80: $98
	ld   [hl], a                                     ; $6d81: $77
	halt                                             ; $6d82: $76
	ld   [hl], a                                     ; $6d83: $77
	ld   h, a                                        ; $6d84: $67
	ld   h, l                                        ; $6d85: $65
	ld   d, e                                        ; $6d86: $53
	ld   c, d                                        ; $6d87: $4a
	ld   hl, $3cc3                                   ; $6d88: $21 $c3 $3c
	ld   l, c                                        ; $6d8b: $69
	sbc  c                                           ; $6d8c: $99
	db   $db                                         ; $6d8d: $db
	cp   l                                           ; $6d8e: $bd
	jp   c, $abdc                                    ; $6d8f: $da $dc $ab

	xor  c                                           ; $6d92: $a9
	sbc  b                                           ; $6d93: $98
	sub  a                                           ; $6d94: $97
	ld   h, a                                        ; $6d95: $67
	halt                                             ; $6d96: $76
	ld   l, b                                        ; $6d97: $68
	ld   h, a                                        ; $6d98: $67
	ld   [hl], a                                     ; $6d99: $77
	add  a                                           ; $6d9a: $87
	adc  b                                           ; $6d9b: $88
	sbc  c                                           ; $6d9c: $99
	adc  c                                           ; $6d9d: $89
	adc  b                                           ; $6d9e: $88
	adc  c                                           ; $6d9f: $89
	add  a                                           ; $6da0: $87
	add  a                                           ; $6da1: $87
	adc  b                                           ; $6da2: $88
	ld   a, b                                        ; $6da3: $78
	add  a                                           ; $6da4: $87
	ld   [hl], a                                     ; $6da5: $77
	ld   d, l                                        ; $6da6: $55
	ld   b, l                                        ; $6da7: $45
	add  c                                           ; $6da8: $81
	ld   c, e                                        ; $6da9: $4b
	ld   d, $a6                                      ; $6daa: $16 $a6
	sbc  d                                           ; $6dac: $9a
	xor  h                                           ; $6dad: $ac
	cp   e                                           ; $6dae: $bb
	call z, $c9ba                                    ; $6daf: $cc $ba $c9
	sbc  c                                           ; $6db2: $99
	sub  a                                           ; $6db3: $97
	ld   a, b                                        ; $6db4: $78
	ld   h, a                                        ; $6db5: $67
	ld   [hl], a                                     ; $6db6: $77
	ld   [hl], a                                     ; $6db7: $77
	sub  a                                           ; $6db8: $97
	sbc  b                                           ; $6db9: $98
	sbc  b                                           ; $6dba: $98
	sbc  c                                           ; $6dbb: $99
	adc  b                                           ; $6dbc: $88
	ld   [hl], a                                     ; $6dbd: $77
	sub  a                                           ; $6dbe: $97
	ld   l, b                                        ; $6dbf: $68
	ld   [hl], a                                     ; $6dc0: $77
	adc  b                                           ; $6dc1: $88
	adc  b                                           ; $6dc2: $88
	adc  b                                           ; $6dc3: $88
	adc  c                                           ; $6dc4: $89
	ld   a, b                                        ; $6dc5: $78
	ld   [hl], l                                     ; $6dc6: $75
	ld   b, l                                        ; $6dc7: $45
	ld   [hl], e                                     ; $6dc8: $73
	add  hl, de                                      ; $6dc9: $19
	ld   d, c                                        ; $6dca: $51
	sbc  b                                           ; $6dcb: $98
	ld   l, c                                        ; $6dcc: $69
	xor  e                                           ; $6dcd: $ab
	xor  h                                           ; $6dce: $ac
	call z, $cbca                                    ; $6dcf: $cc $ca $cb
	sbc  e                                           ; $6dd2: $9b
	xor  b                                           ; $6dd3: $a8
	ld   a, c                                        ; $6dd4: $79
	halt                                             ; $6dd5: $76
	add  a                                           ; $6dd6: $87
	ld   h, a                                        ; $6dd7: $67
	add  a                                           ; $6dd8: $87
	ld   a, b                                        ; $6dd9: $78
	adc  b                                           ; $6dda: $88
	ld   a, c                                        ; $6ddb: $79
	sub  a                                           ; $6ddc: $97
	adc  c                                           ; $6ddd: $89
	adc  b                                           ; $6dde: $88
	sbc  b                                           ; $6ddf: $98
	ld   a, b                                        ; $6de0: $78
	adc  b                                           ; $6de1: $88
	add  a                                           ; $6de2: $87
	add  a                                           ; $6de3: $87
	ld   [hl], a                                     ; $6de4: $77
	halt                                             ; $6de5: $76
	ld   d, l                                        ; $6de6: $55
	ld   b, [hl]                                     ; $6de7: $46
	ld   h, c                                        ; $6de8: $61
	ld   l, c                                        ; $6de9: $69
	rla                                              ; $6dea: $17
	and  [hl]                                        ; $6deb: $a6
	sbc  d                                           ; $6dec: $9a
	cp   e                                           ; $6ded: $bb
	call z, $9abd                                    ; $6dee: $cc $bd $9a
	reti                                             ; $6df1: $d9


	sbc  d                                           ; $6df2: $9a
	sub  [hl]                                        ; $6df3: $96
	ld   a, c                                        ; $6df4: $79
	ld   d, a                                        ; $6df5: $57
	add  [hl]                                        ; $6df6: $86
	ld   a, b                                        ; $6df7: $78
	add  a                                           ; $6df8: $87
	sbc  c                                           ; $6df9: $99
	adc  b                                           ; $6dfa: $88
	sbc  b                                           ; $6dfb: $98
	adc  b                                           ; $6dfc: $88
	adc  b                                           ; $6dfd: $88
	add  a                                           ; $6dfe: $87
	add  a                                           ; $6dff: $87
	ld   a, b                                        ; $6e00: $78
	add  a                                           ; $6e01: $87
	ld   a, b                                        ; $6e02: $78
	ld   [hl], a                                     ; $6e03: $77
	add  [hl]                                        ; $6e04: $86
	ld   h, l                                        ; $6e05: $65
	ld   b, h                                        ; $6e06: $44
	add  h                                           ; $6e07: $84
	ld   a, [de]                                     ; $6e08: $1a
	ld   [hl], c                                     ; $6e09: $71
	xor  d                                           ; $6e0a: $aa
	ld   l, b                                        ; $6e0b: $68
	cp   e                                           ; $6e0c: $bb
	sbc  h                                           ; $6e0d: $9c
	call z, $bddb                                    ; $6e0e: $cc $db $bd
	sbc  b                                           ; $6e11: $98
	xor  c                                           ; $6e12: $a9
	ld   l, c                                        ; $6e13: $69
	add  l                                           ; $6e14: $85
	ld   a, b                                        ; $6e15: $78
	ld   h, [hl]                                     ; $6e16: $66
	add  a                                           ; $6e17: $87
	ld   l, b                                        ; $6e18: $68
	ld   a, b                                        ; $6e19: $78
	sub  a                                           ; $6e1a: $97
	sbc  c                                           ; $6e1b: $99
	ld   a, c                                        ; $6e1c: $79
	sub  a                                           ; $6e1d: $97
	adc  d                                           ; $6e1e: $8a
	ld   [hl], a                                     ; $6e1f: $77
	sbc  b                                           ; $6e20: $98
	ld   a, b                                        ; $6e21: $78
	sub  [hl]                                        ; $6e22: $96
	ld   [hl], a                                     ; $6e23: $77
	ld   h, l                                        ; $6e24: $65
	ld   b, e                                        ; $6e25: $43
	ld   d, a                                        ; $6e26: $57
	inc  de                                          ; $6e27: $13
	jp   nz, $963c                                   ; $6e28: $c2 $3c $96

	xor  l                                           ; $6e2b: $ad
	cp   d                                           ; $6e2c: $ba
	db   $ec                                         ; $6e2d: $ec
	cp   l                                           ; $6e2e: $bd
	cp   e                                           ; $6e2f: $bb
	xor  d                                           ; $6e30: $aa
	sbc  c                                           ; $6e31: $99
	sub  a                                           ; $6e32: $97
	sub  a                                           ; $6e33: $97
	ld   h, a                                        ; $6e34: $67
	halt                                             ; $6e35: $76
	ld   a, b                                        ; $6e36: $78
	ld   [hl], a                                     ; $6e37: $77
	adc  b                                           ; $6e38: $88
	sbc  b                                           ; $6e39: $98
	adc  c                                           ; $6e3a: $89
	sub  a                                           ; $6e3b: $97
	adc  c                                           ; $6e3c: $89
	ld   [hl], a                                     ; $6e3d: $77
	adc  b                                           ; $6e3e: $88
	ld   a, b                                        ; $6e3f: $78
	add  a                                           ; $6e40: $87
	adc  b                                           ; $6e41: $88
	ld   [hl], a                                     ; $6e42: $77
	halt                                             ; $6e43: $76
	ld   b, h                                        ; $6e44: $44
	ld   d, a                                        ; $6e45: $57
	ld   hl, $19b6                                   ; $6e46: $21 $b6 $19
	and  a                                           ; $6e49: $a7
	ld   a, h                                        ; $6e4a: $7c
	ret  z                                           ; $6e4b: $c8

	cp   l                                           ; $6e4c: $bd
	jp   c, $a8be                                    ; $6e4d: $da $be $a8

	jp   z, $a787                                    ; $6e50: $ca $87 $a7

	ld   l, b                                        ; $6e53: $68
	ld   [hl], a                                     ; $6e54: $77
	ld   l, b                                        ; $6e55: $68
	add  [hl]                                        ; $6e56: $86
	adc  c                                           ; $6e57: $89
	sub  a                                           ; $6e58: $97
	adc  c                                           ; $6e59: $89
	ld   a, b                                        ; $6e5a: $78
	adc  b                                           ; $6e5b: $88
	ld   [hl], a                                     ; $6e5c: $77
	add  a                                           ; $6e5d: $87
	ld   [hl], a                                     ; $6e5e: $77
	ld   [hl], a                                     ; $6e5f: $77
	ld   l, b                                        ; $6e60: $68
	halt                                             ; $6e61: $76
	ld   h, h                                        ; $6e62: $64
	ld   b, e                                        ; $6e63: $43
	add  a                                           ; $6e64: $87
	rla                                              ; $6e65: $17
	jp   nc, $b64e                                   ; $6e66: $d2 $4e $b6

	cp   a                                           ; $6e69: $bf
	cp   c                                           ; $6e6a: $b9
	sbc  $a8                                         ; $6e6b: $de $a8
	call z, $c868                                    ; $6e6d: $cc $68 $c8
	ld   l, c                                        ; $6e70: $69
	and  [hl]                                        ; $6e71: $a6
	ld   l, c                                        ; $6e72: $69
	add  a                                           ; $6e73: $87
	ld   a, c                                        ; $6e74: $79
	add  a                                           ; $6e75: $87
	sbc  d                                           ; $6e76: $9a
	add  a                                           ; $6e77: $87
	sbc  d                                           ; $6e78: $9a
	ld   h, a                                        ; $6e79: $67
	ld   a, b                                        ; $6e7a: $78
	ld   d, l                                        ; $6e7b: $55
	add  [hl]                                        ; $6e7c: $86
	ld   d, a                                        ; $6e7d: $57
	sub  [hl]                                        ; $6e7e: $96
	ld   l, d                                        ; $6e7f: $6a
	add  [hl]                                        ; $6e80: $86
	ld   h, [hl]                                     ; $6e81: $66
	ld   b, h                                        ; $6e82: $44
	and  l                                           ; $6e83: $a5
	ld   a, [de]                                     ; $6e84: $1a
	or   c                                           ; $6e85: $b1
	ld   l, l                                        ; $6e86: $6d
	and  l                                           ; $6e87: $a5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e88: $cf
	sbc  b                                           ; $6e89: $98
	db   $dd                                         ; $6e8a: $dd
	xor  b                                           ; $6e8b: $a8
	call $c968                                       ; $6e8c: $cd $68 $c9
	ld   l, b                                        ; $6e8f: $68
	and  [hl]                                        ; $6e90: $a6
	ld   l, b                                        ; $6e91: $68
	sub  a                                           ; $6e92: $97
	ld   a, c                                        ; $6e93: $79
	sub  a                                           ; $6e94: $97
	sbc  d                                           ; $6e95: $9a
	xor  b                                           ; $6e96: $a8
	sbc  c                                           ; $6e97: $99
	ld   [hl], a                                     ; $6e98: $77
	ld   [hl], a                                     ; $6e99: $77
	ld   d, l                                        ; $6e9a: $55
	ld   h, l                                        ; $6e9b: $65
	ld   b, l                                        ; $6e9c: $45
	halt                                             ; $6e9d: $76
	ld   e, b                                        ; $6e9e: $58
	ld   [hl], l                                     ; $6e9f: $75
	ld   d, h                                        ; $6ea0: $54
	adc  e                                           ; $6ea1: $8b
	ld   hl, $1bfa                                   ; $6ea2: $21 $fa $1b
	ld   hl, sp+$5d                                  ; $6ea5: $f8 $5d
	rst  $30                                         ; $6ea7: $f7
	adc  h                                           ; $6ea8: $8c
	ret                                              ; $6ea9: $c9


	ld   a, d                                        ; $6eaa: $7a
	ret  z                                           ; $6eab: $c8

	ld   l, d                                        ; $6eac: $6a
	or   a                                           ; $6ead: $b7
	ld   a, d                                        ; $6eae: $7a
	and  [hl]                                        ; $6eaf: $a6
	ld   a, d                                        ; $6eb0: $7a
	and  a                                           ; $6eb1: $a7
	adc  e                                           ; $6eb2: $8b
	sbc  b                                           ; $6eb3: $98
	cp   e                                           ; $6eb4: $bb
	sbc  b                                           ; $6eb5: $98
	sbc  b                                           ; $6eb6: $98
	ld   h, [hl]                                     ; $6eb7: $66
	ld   h, l                                        ; $6eb8: $65
	ld   b, e                                        ; $6eb9: $43
	ld   d, h                                        ; $6eba: $54
	inc  [hl]                                        ; $6ebb: $34
	ld   h, [hl]                                     ; $6ebc: $66
	ld   d, [hl]                                     ; $6ebd: $56
	ld   h, h                                        ; $6ebe: $64
	ld   c, e                                        ; $6ebf: $4b
	pop  de                                          ; $6ec0: $d1
	ld   c, a                                        ; $6ec1: $4f
	sub  c                                           ; $6ec2: $91
	rst  JumpTable                                         ; $6ec3: $df
	sub  e                                           ; $6ec4: $93
	rst  $38                                         ; $6ec5: $ff
	ld   b, [hl]                                     ; $6ec6: $46
	bit  0, [hl]                                     ; $6ec7: $cb $46
	cp   b                                           ; $6ec9: $b8
	ld   a, b                                        ; $6eca: $78
	xor  d                                           ; $6ecb: $aa
	adc  b                                           ; $6ecc: $88
	xor  e                                           ; $6ecd: $ab
	sub  a                                           ; $6ece: $97
	xor  e                                           ; $6ecf: $ab
	sub  a                                           ; $6ed0: $97
	cp   d                                           ; $6ed1: $ba
	ld   a, c                                        ; $6ed2: $79
	sbc  b                                           ; $6ed3: $98
	ld   [hl], a                                     ; $6ed4: $77
	halt                                             ; $6ed5: $76
	ld   d, l                                        ; $6ed6: $55
	ld   d, l                                        ; $6ed7: $55
	ld   b, h                                        ; $6ed8: $44
	ld   d, [hl]                                     ; $6ed9: $56
	ld   d, [hl]                                     ; $6eda: $56
	ld   [hl], a                                     ; $6edb: $77
	ld   b, e                                        ; $6edc: $43
	ld   b, a                                        ; $6edd: $47
	jp   nz, $d11f                                   ; $6ede: $c2 $1f $d1

	sbc  a                                           ; $6ee1: $9f
	db   $e3                                         ; $6ee2: $e3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ee3: $cf
	and  l                                           ; $6ee4: $a5
	xor  l                                           ; $6ee5: $ad
	ld   [hl], e                                     ; $6ee6: $73
	xor  e                                           ; $6ee7: $ab
	ld   [hl], l                                     ; $6ee8: $75
	sbc  e                                           ; $6ee9: $9b
	sub  a                                           ; $6eea: $97
	sbc  h                                           ; $6eeb: $9c
	and  a                                           ; $6eec: $a7
	sbc  h                                           ; $6eed: $9c
	sub  a                                           ; $6eee: $97
	sbc  h                                           ; $6eef: $9c
	add  a                                           ; $6ef0: $87
	sbc  c                                           ; $6ef1: $99
	ld   [hl], l                                     ; $6ef2: $75
	ld   h, [hl]                                     ; $6ef3: $66
	ld   b, h                                        ; $6ef4: $44
	ld   b, l                                        ; $6ef5: $45
	ld   b, h                                        ; $6ef6: $44
	ld   h, a                                        ; $6ef7: $67
	halt                                             ; $6ef8: $76
	ld   [hl], a                                     ; $6ef9: $77
	ld   d, d                                        ; $6efa: $52
	ld   a, [hl-]                                    ; $6efb: $3a
	pop  bc                                          ; $6efc: $c1
	rra                                              ; $6efd: $1f
	pop  de                                          ; $6efe: $d1
	adc  a                                           ; $6eff: $8f
	di                                               ; $6f00: $f3
	xor  a                                           ; $6f01: $af
	or   l                                           ; $6f02: $b5
	xor  h                                           ; $6f03: $ac
	add  a                                           ; $6f04: $87
	ld   [hl], a                                     ; $6f05: $77
	cp   b                                           ; $6f06: $b8
	ld   e, c                                        ; $6f07: $59
	ret  c                                           ; $6f08: $d8

	ld   e, e                                        ; $6f09: $5b
	add  sp, $7b                                     ; $6f0a: $e8 $7b
	ret  c                                           ; $6f0c: $d8

	adc  e                                           ; $6f0d: $8b
	and  a                                           ; $6f0e: $a7
	ld   l, b                                        ; $6f0f: $68
	ld   [hl], h                                     ; $6f10: $74
	ld   d, l                                        ; $6f11: $55
	ld   b, d                                        ; $6f12: $42
	dec  [hl]                                        ; $6f13: $35
	ld   d, e                                        ; $6f14: $53
	ld   l, c                                        ; $6f15: $69
	halt                                             ; $6f16: $76
	sbc  b                                           ; $6f17: $98
	ld   b, c                                        ; $6f18: $41
	ld   c, a                                        ; $6f19: $4f
	or   c                                           ; $6f1a: $b1
	ld   l, a                                        ; $6f1b: $6f
	sub  c                                           ; $6f1c: $91
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f1d: $cf
	jp   nz, $95cf                                   ; $6f1e: $c2 $cf $95

	ld   a, d                                        ; $6f21: $7a
	and  [hl]                                        ; $6f22: $a6
	add  hl, sp                                      ; $6f23: $39
	add  sp, $4b                                     ; $6f24: $e8 $4b
	ld   sp, hl                                      ; $6f26: $f9
	ld   e, e                                        ; $6f27: $5b
	ld   sp, hl                                      ; $6f28: $f9
	ld   l, d                                        ; $6f29: $6a
	cp   b                                           ; $6f2a: $b8
	ld   [hl], a                                     ; $6f2b: $77
	sbc  c                                           ; $6f2c: $99
	ld   h, l                                        ; $6f2d: $65
	ld   a, b                                        ; $6f2e: $78
	ld   d, h                                        ; $6f2f: $54
	ld   h, l                                        ; $6f30: $65
	ld   b, h                                        ; $6f31: $44
	ld   b, [hl]                                     ; $6f32: $46
	ld   d, [hl]                                     ; $6f33: $56
	ld   h, l                                        ; $6f34: $65
	ld   b, c                                        ; $6f35: $41
	add  hl, de                                      ; $6f36: $19
	db   $f4                                         ; $6f37: $f4
	rra                                              ; $6f38: $1f
	or   $4f                                         ; $6f39: $f6 $4f
	rst  $30                                         ; $6f3b: $f7
	inc  a                                           ; $6f3c: $3c
	add  $36                                         ; $6f3d: $c6 $36
	ld   l, c                                        ; $6f3f: $69
	sub  d                                           ; $6f40: $92
	xor  a                                           ; $6f41: $af
	rst  ToBoot                                         ; $6f42: $c7
	cp   a                                           ; $6f43: $bf
	and  a                                           ; $6f44: $a7
	call z, $9896                                    ; $6f45: $cc $96 $98
	ld   a, b                                        ; $6f48: $78
	ld   h, a                                        ; $6f49: $67
	ld   a, b                                        ; $6f4a: $78
	ld   h, h                                        ; $6f4b: $64
	add  [hl]                                        ; $6f4c: $86
	inc  sp                                          ; $6f4d: $33
	ld   h, l                                        ; $6f4e: $65
	inc  h                                           ; $6f4f: $24
	ld   [hl], l                                     ; $6f50: $75
	ld   [hl+], a                                    ; $6f51: $22
	ld   hl, $c14f                                   ; $6f52: $21 $4f $c1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f55: $cf
	push hl                                          ; $6f56: $e5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f57: $cf
	db   $e3                                         ; $6f58: $e3
	ld   a, b                                        ; $6f59: $78
	ld   [hl], l                                     ; $6f5a: $75
	ld   [de], a                                     ; $6f5b: $12
	cp   e                                           ; $6f5c: $bb
	ld   c, c                                        ; $6f5d: $49
	rst  $38                                         ; $6f5e: $ff
	cp   d                                           ; $6f5f: $ba
	cp   $99                                         ; $6f60: $fe $99
	sbc  b                                           ; $6f62: $98
	ld   h, a                                        ; $6f63: $67
	ld   d, l                                        ; $6f64: $55
	sbc  b                                           ; $6f65: $98
	ld   [hl], a                                     ; $6f66: $77
	xor  d                                           ; $6f67: $aa
	ld   h, a                                        ; $6f68: $67
	halt                                             ; $6f69: $76
	ld   d, h                                        ; $6f6a: $54
	inc  sp                                          ; $6f6b: $33
	ld   b, l                                        ; $6f6c: $45
	ld   [hl-], a                                    ; $6f6d: $32
	ld   hl, rAUD1LEN                                   ; $6f6e: $21 $11 $ff
	inc  de                                          ; $6f71: $13
	rst  $38                                         ; $6f72: $ff
	and  l                                           ; $6f73: $a5
	rst  $38                                         ; $6f74: $ff
	ld   h, d                                        ; $6f75: $62
	dec  [hl]                                        ; $6f76: $35
	ld   d, e                                        ; $6f77: $53
	ld   h, $fc                                      ; $6f78: $26 $fc
	xor  l                                           ; $6f7a: $ad
	rst  $38                                         ; $6f7b: $ff
	res  7, c                                        ; $6f7c: $cb $b9
	add  l                                           ; $6f7e: $85
	ld   b, h                                        ; $6f7f: $44
	ld   a, b                                        ; $6f80: $78
	ld   b, a                                        ; $6f81: $47
	call z, $ca98                                    ; $6f82: $cc $98 $ca
	ld   [hl], l                                     ; $6f85: $75
	ld   b, e                                        ; $6f86: $43
	ld   [hl+], a                                    ; $6f87: $22
	ld   [de], a                                     ; $6f88: $12
	ld   b, e                                        ; $6f89: $43
	ld   [hl+], a                                    ; $6f8a: $22
	ld   [hl-], a                                    ; $6f8b: $32
	ld   c, a                                        ; $6f8c: $4f
	rst  $30                                         ; $6f8d: $f7
	ccf                                              ; $6f8e: $3f
	db   $fc                                         ; $6f8f: $fc
	ld   c, c                                        ; $6f90: $49
	rst  $30                                         ; $6f91: $f7
	ld   [hl+], a                                    ; $6f92: $22
	ld   [hl], $88                                   ; $6f93: $36 $88
	ld   l, [hl]                                     ; $6f95: $6e
	cp   $ed                                         ; $6f96: $fe $ed
	ei                                               ; $6f98: $fb
	add  a                                           ; $6f99: $87
	ld   b, l                                        ; $6f9a: $45
	ld   d, [hl]                                     ; $6f9b: $56
	ld   e, b                                        ; $6f9c: $58
	res  7, e                                        ; $6f9d: $cb $bb
	call c, Call_0f8_5586                            ; $6f9f: $dc $86 $55
	ld   b, c                                        ; $6fa2: $41
	ld   [de], a                                     ; $6fa3: $12
	ld   d, h                                        ; $6fa4: $54
	ld   [hl], $64                                   ; $6fa5: $36 $64
	ld   de, $d85c                                   ; $6fa7: $11 $5c $d8
	ld   l, h                                        ; $6faa: $6c
	rst  $38                                         ; $6fab: $ff
	sub  a                                           ; $6fac: $97
	cp   h                                           ; $6fad: $bc
	ld   [hl], d                                     ; $6fae: $72
	ld   [hl], $97                                   ; $6faf: $36 $97
	ld   l, d                                        ; $6fb1: $6a
	rst  $38                                         ; $6fb2: $ff
	cp   e                                           ; $6fb3: $bb
	db   $dd                                         ; $6fb4: $dd
	sub  a                                           ; $6fb5: $97
	ld   d, [hl]                                     ; $6fb6: $56
	sbc  b                                           ; $6fb7: $98
	ld   a, c                                        ; $6fb8: $79
	sbc  $ba                                         ; $6fb9: $de $ba
	cp   e                                           ; $6fbb: $bb
	add  l                                           ; $6fbc: $85
	inc  sp                                          ; $6fbd: $33
	ld   b, e                                        ; $6fbe: $43
	ld   [de], a                                     ; $6fbf: $12
	ld   b, l                                        ; $6fc0: $45
	ld   d, [hl]                                     ; $6fc1: $56
	ld   h, l                                        ; $6fc2: $65
	ld   de, $fc18                                   ; $6fc3: $11 $18 $fc
	ld   a, [de]                                     ; $6fc6: $1a
	rst  $38                                         ; $6fc7: $ff
	sub  e                                           ; $6fc8: $93
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fc9: $cf
	ld   [hl], c                                     ; $6fca: $71
	dec  d                                           ; $6fcb: $15
	cp   b                                           ; $6fcc: $b8
	ld   d, a                                        ; $6fcd: $57
	rst  $38                                         ; $6fce: $ff
	ld   sp, hl                                      ; $6fcf: $f9
	cp   l                                           ; $6fd0: $bd
	rst  ToBoot                                         ; $6fd1: $c7
	ld   [hl+], a                                    ; $6fd2: $22
	adc  e                                           ; $6fd3: $8b
	sub  a                                           ; $6fd4: $97
	cp   a                                           ; $6fd5: $bf
	db   $eb                                         ; $6fd6: $eb
	xor  d                                           ; $6fd7: $aa
	add  l                                           ; $6fd8: $85
	ld   hl, $2124                                   ; $6fd9: $21 $24 $21
	ld   e, b                                        ; $6fdc: $58
	sub  a                                           ; $6fdd: $97
	ld   [hl], a                                     ; $6fde: $77
	ld   hl, rAUD1LEN                                   ; $6fdf: $21 $11 $ff
	ld   de, $f1ff                                   ; $6fe2: $11 $ff $f1
	sbc  a                                           ; $6fe5: $9f
	or   l                                           ; $6fe6: $b5
	ld   de, $949c                                   ; $6fe7: $11 $9c $94
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6fea: $cf
	cp   $6a                                         ; $6feb: $fe $6a
	ret                                              ; $6fed: $c9


	ld   de, $d94b                                   ; $6fee: $11 $4b $d9
	sbc  [hl]                                        ; $6ff1: $9e
	cp   $87                                         ; $6ff2: $fe $87
	add  [hl]                                        ; $6ff4: $86
	ld   hl, $6514                                   ; $6ff5: $21 $14 $65
	ld   b, [hl]                                     ; $6ff8: $46
	cp   e                                           ; $6ff9: $bb
	ld   d, c                                        ; $6ffa: $51
	ld   de, rAUD1LOW                                   ; $6ffb: $11 $13 $ff
	jr   @+$01                                       ; $6ffe: $18 $ff

	jp   nz, Jump_0f8_62ab                           ; $7000: $c2 $ab $62

	ld   de, $cc59                                   ; $7003: $11 $59 $cc
	rst  $28                                         ; $7006: $ef
	rst  $38                                         ; $7007: $ff
	sbc  d                                           ; $7008: $9a
	sub  h                                           ; $7009: $94
	ld   de, $bc59                                   ; $700a: $11 $59 $bc
	rst  $28                                         ; $700d: $ef
	cp   $a8                                         ; $700e: $fe $a8
	ld   [hl], h                                     ; $7010: $74
	ld   bc, $3512                                   ; $7011: $01 $12 $35
	ld   d, e                                        ; $7014: $53
	ld   a, c                                        ; $7015: $79
	ld   [hl], c                                     ; $7016: $71
	ld   de, $f21f                                   ; $7017: $11 $1f $f2
	rra                                              ; $701a: $1f
	rst  $38                                         ; $701b: $ff
	ld   de, $61aa                                   ; $701c: $11 $aa $61
	inc  d                                           ; $701f: $14
	cp   a                                           ; $7020: $bf
	jp   c, $f7ff                                    ; $7021: $da $ff $f7

	add  hl, sp                                      ; $7024: $39
	add  d                                           ; $7025: $82
	inc  d                                           ; $7026: $14
	cp   l                                           ; $7027: $bd
	xor  $ef                                         ; $7028: $ee $ef
	ld   [$2362], a                                  ; $702a: $ea $62 $23
	ld   hl, $9817                                   ; $702d: $21 $17 $98
	adc  c                                           ; $7030: $89
	and  l                                           ; $7031: $a5
	ld   de, $1f11                                   ; $7032: $11 $11 $1f
	pop  af                                          ; $7035: $f1
	adc  a                                           ; $7036: $8f
	cp   $15                                         ; $7037: $fe $15
	ld   b, h                                        ; $7039: $44
	ld   sp, $ff15                                   ; $703a: $31 $15 $ff
	rst  $38                                         ; $703d: $ff
	rst  $38                                         ; $703e: $ff
	rst  $30                                         ; $703f: $f7
	ld   de, $1654                                   ; $7040: $11 $54 $16
	rst  JumpTable                                         ; $7043: $df
	rst  $38                                         ; $7044: $ff
	db   $ec                                         ; $7045: $ec
	xor  c                                           ; $7046: $a9
	ld   b, c                                        ; $7047: $41
	ld   [de], a                                     ; $7048: $12
	inc  sp                                          ; $7049: $33
	ld   d, [hl]                                     ; $704a: $56
	ld   l, c                                        ; $704b: $69
	sub  l                                           ; $704c: $95
	ld   de, $4f11                                   ; $704d: $11 $11 $4f
	pop  af                                          ; $7050: $f1
	ld   l, a                                        ; $7051: $6f
	db   $fd                                         ; $7052: $fd
	ld   [de], a                                     ; $7053: $12
	dec  [hl]                                        ; $7054: $35
	ld   h, c                                        ; $7055: $61
	ld   d, $ff                                      ; $7056: $16 $ff
	db   $fc                                         ; $7058: $fc
	rst  $38                                         ; $7059: $ff
	or   $11                                         ; $705a: $f6 $11
	ld   b, l                                        ; $705c: $45
	ld   b, a                                        ; $705d: $47
	rst  $28                                         ; $705e: $ef
	rst  $38                                         ; $705f: $ff
	db   $db                                         ; $7060: $db
	sub  [hl]                                        ; $7061: $96
	ld   sp, $5513                                   ; $7062: $31 $13 $55
	ld   l, c                                        ; $7065: $69
	xor  b                                           ; $7066: $a8
	ld   d, h                                        ; $7067: $54
	ld   de, $2f11                                   ; $7068: $11 $11 $2f
	di                                               ; $706b: $f3
	ld   e, a                                        ; $706c: $5f
	rst  $38                                         ; $706d: $ff
	ld   de, $6111                                   ; $706e: $11 $11 $61
	dec  d                                           ; $7071: $15
	rst  $38                                         ; $7072: $ff
	db   $fd                                         ; $7073: $fd
	rst  JumpTable                                         ; $7074: $df
	rst  $30                                         ; $7075: $f7
	ld   de, $9928                                   ; $7076: $11 $28 $99
	rst  $28                                         ; $7079: $ef
	rst  $38                                         ; $707a: $ff
	ret  z                                           ; $707b: $c8

	ld   h, l                                        ; $707c: $65
	ld   b, c                                        ; $707d: $41
	ld   [de], a                                     ; $707e: $12
	ld   l, c                                        ; $707f: $69
	halt                                             ; $7080: $76
	ld   h, l                                        ; $7081: $65
	ld   b, c                                        ; $7082: $41
	ld   de, rAUD1LOW                                   ; $7083: $11 $13 $ff
	ld   d, [hl]                                     ; $7086: $56
	rst  $38                                         ; $7087: $ff
	pop  af                                          ; $7088: $f1
	ld   de, $2117                                   ; $7089: $11 $17 $21
	ld   l, a                                        ; $708c: $6f
	rst  $38                                         ; $708d: $ff
	cp   b                                           ; $708e: $b8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $708f: $cf
	sub  c                                           ; $7090: $91
	ld   [de], a                                     ; $7091: $12
	sbc  e                                           ; $7092: $9b
	db   $dd                                         ; $7093: $dd
	rst  $38                                         ; $7094: $ff
	ei                                               ; $7095: $fb
	ld   d, h                                        ; $7096: $54
	ld   d, h                                        ; $7097: $54
	ld   de, $9737                                   ; $7098: $11 $37 $97
	ld   h, [hl]                                     ; $709b: $66
	ld   h, d                                        ; $709c: $62
	ld   de, $bf11                                   ; $709d: $11 $11 $bf
	pop  af                                          ; $70a0: $f1
	cp   a                                           ; $70a1: $bf
	ei                                               ; $70a2: $fb
	ld   de, $7115                                   ; $70a3: $11 $15 $71
	add  hl, de                                      ; $70a6: $19
	rst  $38                                         ; $70a7: $ff
	ld   sp, hl                                      ; $70a8: $f9
	xor  a                                           ; $70a9: $af
	di                                               ; $70aa: $f3
	ld   de, $ab7a                                   ; $70ab: $11 $7a $ab
	rst  $38                                         ; $70ae: $ff
	rst  $38                                         ; $70af: $ff
	and  [hl]                                        ; $70b0: $a6
	ld   h, [hl]                                     ; $70b1: $66
	ld   sp, $7813                                   ; $70b2: $31 $13 $78
	ld   d, h                                        ; $70b5: $54
	ld   b, e                                        ; $70b6: $43
	ld   de, rAUD1LEN                                   ; $70b7: $11 $11 $ff
	pop  af                                          ; $70ba: $f1
	rst  $28                                         ; $70bb: $ef
	ld   sp, hl                                      ; $70bc: $f9
	ld   de, $7118                                   ; $70bd: $11 $18 $71
	dec  de                                          ; $70c0: $1b
	rst  $38                                         ; $70c1: $ff
	and  $8f                                         ; $70c2: $e6 $8f
	ldh  [c], a                                      ; $70c4: $e2
	ld   de, $ce8c                                   ; $70c5: $11 $8c $ce
	rst  $38                                         ; $70c8: $ff
	rst  $38                                         ; $70c9: $ff
	ld   [hl], e                                     ; $70ca: $73
	ld   d, [hl]                                     ; $70cb: $56
	ld   hl, $6735                                   ; $70cc: $21 $35 $67
	add  [hl]                                        ; $70cf: $86
	ld   de, $1411                                   ; $70d0: $11 $11 $14
	rst  $38                                         ; $70d3: $ff
	ld   b, $ff                                      ; $70d4: $06 $ff
	pop  af                                          ; $70d6: $f1
	ld   de, $113b                                   ; $70d7: $11 $3b $11
	ld   c, a                                        ; $70da: $4f
	rst  $38                                         ; $70db: $ff
	sbc  b                                           ; $70dc: $98
	adc  $71                                         ; $70dd: $ce $71
	inc  de                                          ; $70df: $13
	xor  e                                           ; $70e0: $ab
	cp   a                                           ; $70e1: $bf
	rst  $38                                         ; $70e2: $ff
	db   $fd                                         ; $70e3: $fd
	ld   h, h                                        ; $70e4: $64
	ld   d, l                                        ; $70e5: $55
	ld   de, $6536                                   ; $70e6: $11 $36 $65
	ld   [hl-], a                                    ; $70e9: $32
	ld   de, rAUD1LEN                                   ; $70ea: $11 $11 $ff
	pop  af                                          ; $70ed: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70ee: $cf
	cp   $11                                         ; $70ef: $fe $11
	ld   a, [de]                                     ; $70f1: $1a
	and  c                                           ; $70f2: $a1
	add  hl, de                                      ; $70f3: $19
	rst  $38                                         ; $70f4: $ff
	add  sp, -$62                                    ; $70f5: $e8 $9e
	push de                                          ; $70f7: $d5
	ld   de, $aa7c                                   ; $70f8: $11 $7c $aa
	rst  $38                                         ; $70fb: $ff
	rst  $38                                         ; $70fc: $ff
	or   l                                           ; $70fd: $b5
	ld   l, b                                        ; $70fe: $68
	ld   b, c                                        ; $70ff: $41
	dec  b                                           ; $7100: $05
	ld   h, h                                        ; $7101: $64
	ld   b, e                                        ; $7102: $43
	ld   de, $1f11                                   ; $7103: $11 $11 $1f
	ld   sp, hl                                      ; $7106: $f9
	rra                                              ; $7107: $1f
	rst  $38                                         ; $7108: $ff
	ld   d, c                                        ; $7109: $51
	ld   de, $11b5                                   ; $710a: $11 $b5 $11
	rst  $38                                         ; $710d: $ff
	ei                                               ; $710e: $fb
	adc  e                                           ; $710f: $8b
	add  sp, $21                                     ; $7110: $e8 $21
	ld   a, [de]                                     ; $7112: $1a
	reti                                             ; $7113: $d9


	sbc  a                                           ; $7114: $9f
	rst  $38                                         ; $7115: $ff
	ld   [$7389], a                                  ; $7116: $ea $89 $73
	ld   [de], a                                     ; $7119: $12
	ld   h, l                                        ; $711a: $65
	ld   de, $1111                                   ; $711b: $11 $11 $11
	rra                                              ; $711e: $1f
	rst  $38                                         ; $711f: $ff
	dec  de                                          ; $7120: $1b

jr_0f8_7121:
	rst  $38                                         ; $7121: $ff
	pop  bc                                          ; $7122: $c1
	ld   de, $11a9                                   ; $7123: $11 $a9 $11

jr_0f8_7126:
	sbc  a                                           ; $7126: $9f
	db   $fc                                         ; $7127: $fc
	ld   e, c                                        ; $7128: $59
	ei                                               ; $7129: $fb
	ld   de, $db1a                                   ; $712a: $11 $1a $db
	ld   a, e                                        ; $712d: $7b
	rst  $38                                         ; $712e: $ff
	ret  c                                           ; $712f: $d8

	adc  e                                           ; $7130: $8b
	or   [hl]                                        ; $7131: $b6
	inc  de                                          ; $7132: $13
	ld   h, [hl]                                     ; $7133: $66
	ld   hl, $1111                                   ; $7134: $21 $11 $11
	jr   @+$01                                       ; $7137: $18 $ff

	dec  d                                           ; $7139: $15
	rst  $38                                         ; $713a: $ff
	pop  af                                          ; $713b: $f1
	ld   de, $118c                                   ; $713c: $11 $8c $11
	ld   c, a                                        ; $713f: $4f
	rst  $38                                         ; $7140: $ff
	ld   l, b                                        ; $7141: $68
	cp   $21                                         ; $7142: $fe $21
	jr   jr_0f8_7121                                 ; $7144: $18 $db

	ld   a, d                                        ; $7146: $7a
	rst  $38                                         ; $7147: $ff
	ld   sp, hl                                      ; $7148: $f9
	ld   a, c                                        ; $7149: $79
	or   a                                           ; $714a: $b7
	ld   [hl-], a                                    ; $714b: $32
	ld   b, [hl]                                     ; $714c: $46
	ld   b, c                                        ; $714d: $41
	ld   de, $1111                                   ; $714e: $11 $11 $11
	rst  $38                                         ; $7151: $ff
	ld   [bc], a                                     ; $7152: $02
	rst  $38                                         ; $7153: $ff
	pop  af                                          ; $7154: $f1
	ld   de, $116c                                   ; $7155: $11 $6c $11
	cpl                                              ; $7158: $2f
	rst  $38                                         ; $7159: $ff
	ld   a, c                                        ; $715a: $79
	rst  $38                                         ; $715b: $ff
	ld   b, c                                        ; $715c: $41
	jr   jr_0f8_7126                                 ; $715d: $18 $c7

	ld   l, d                                        ; $715f: $6a
	rst  $38                                         ; $7160: $ff
	ld   a, [$b79c]                                  ; $7161: $fa $9c $b7
	inc  sp                                          ; $7164: $33
	ld   h, [hl]                                     ; $7165: $66
	ld   hl, $1111                                   ; $7166: $21 $11 $11
	ld   de, $91ff                                   ; $7169: $11 $ff $91
	rst  $38                                         ; $716c: $ff
	push af                                          ; $716d: $f5
	ld   de, $113e                                   ; $716e: $11 $3e $11
	rra                                              ; $7171: $1f
	rst  $38                                         ; $7172: $ff
	ld   [hl], a                                     ; $7173: $77
	rst  $38                                         ; $7174: $ff
	add  c                                           ; $7175: $81
	rla                                              ; $7176: $17
	sub  $28                                         ; $7177: $d6 $28
	rst  $38                                         ; $7179: $ff
	ei                                               ; $717a: $fb
	cp   h                                           ; $717b: $bc
	rst  ToBoot                                         ; $717c: $c7
	inc  sp                                          ; $717d: $33
	ld   h, [hl]                                     ; $717e: $66
	ld   hl, $1111                                   ; $717f: $21 $11 $11
	ld   de, $81ff                                   ; $7182: $11 $ff $81
	rst  $38                                         ; $7185: $ff
	db   $f4                                         ; $7186: $f4
	ld   de, $117a                                   ; $7187: $11 $7a $11
	rra                                              ; $718a: $1f
	cp   $6c                                         ; $718b: $fe $6c
	rst  $38                                         ; $718d: $ff
	ld   h, c                                        ; $718e: $61
	dec  hl                                          ; $718f: $2b
	and  c                                           ; $7190: $a1
	ld   a, [de]                                     ; $7191: $1a
	rst  $38                                         ; $7192: $ff
	jp   c, $e5ff                                    ; $7193: $da $ff $e5

	dec  h                                           ; $7196: $25
	ld   [hl], d                                     ; $7197: $72
	ld   de, $1111                                   ; $7198: $11 $11 $11
	ld   a, [de]                                     ; $719b: $1a
	rst  $38                                         ; $719c: $ff
	rla                                              ; $719d: $17
	rst  $38                                         ; $719e: $ff
	pop  hl                                          ; $719f: $e1
	dec  d                                           ; $71a0: $15
	or   d                                           ; $71a1: $b2
	ld   de, $f8cf                                   ; $71a2: $11 $cf $f8
	xor  a                                           ; $71a5: $af
	db   $fc                                         ; $71a6: $fc
	ld   de, $218c                                   ; $71a7: $11 $8c $21
	ld   l, a                                        ; $71aa: $6f
	cp   $cd                                         ; $71ab: $fe $cd
	rst  $38                                         ; $71ad: $ff
	sub  h                                           ; $71ae: $94
	ld   l, c                                        ; $71af: $69
	ld   b, c                                        ; $71b0: $41
	ld   de, $1111                                   ; $71b1: $11 $11 $11
	rra                                              ; $71b4: $1f
	ei                                               ; $71b5: $fb
	rra                                              ; $71b6: $1f
	rst  $38                                         ; $71b7: $ff
	ld   b, c                                        ; $71b8: $41
	ld   e, d                                        ; $71b9: $5a
	sub  c                                           ; $71ba: $91
	ld   [de], a                                     ; $71bb: $12
	rst  $28                                         ; $71bc: $ef
	sub  [hl]                                        ; $71bd: $96
	rst  $38                                         ; $71be: $ff
	db   $f4                                         ; $71bf: $f4
	ld   [$11c6], sp                                 ; $71c0: $08 $c6 $11
	sbc  [hl]                                        ; $71c3: $9e
	ret  z                                           ; $71c4: $c8

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71c5: $cf
	db   $fd                                         ; $71c6: $fd
	sbc  c                                           ; $71c7: $99
	and  [hl]                                        ; $71c8: $a6
	ld   de, $1111                                   ; $71c9: $11 $11 $11
	ld   de, $f11f                                   ; $71cc: $11 $1f $f1
	ld   a, a                                        ; $71cf: $7f
	rst  $38                                         ; $71d0: $ff
	ld   de, $1178                                   ; $71d1: $11 $78 $11
	rla                                              ; $71d4: $17
	cp   $4f                                         ; $71d5: $fe $4f
	rst  $38                                         ; $71d7: $ff
	db   $d3                                         ; $71d8: $d3
	xor  e                                           ; $71d9: $ab
	and  c                                           ; $71da: $a1
	inc  d                                           ; $71db: $14
	cp   e                                           ; $71dc: $bb
	ld   e, d                                        ; $71dd: $5a
	rst  $38                                         ; $71de: $ff
	db   $fd                                         ; $71df: $fd
	call c, $1182                                    ; $71e0: $dc $82 $11
	ld   de, $1111                                   ; $71e3: $11 $11 $11
	rst  $38                                         ; $71e6: $ff
	ld   hl, $f1ff                                   ; $71e7: $21 $ff $f1
	ld   e, l                                        ; $71ea: $5d
	ld   d, c                                        ; $71eb: $51
	ld   de, $9139                                   ; $71ec: $11 $39 $91
	rst  $38                                         ; $71ef: $ff
	rst  $38                                         ; $71f0: $ff
	xor  a                                           ; $71f1: $af
	jp   hl                                          ; $71f2: $e9


	ld   hl, $4127                                   ; $71f3: $21 $27 $41
	ld   a, a                                        ; $71f6: $7f
	rst  $38                                         ; $71f7: $ff
	rst  $38                                         ; $71f8: $ff
	ld   a, [$1141]                                  ; $71f9: $fa $41 $11
	ld   de, $1f11                                   ; $71fc: $11 $11 $1f
	pop  af                                          ; $71ff: $f1
	ld   l, a                                        ; $7200: $6f
	rst  $38                                         ; $7201: $ff
	ld   c, l                                        ; $7202: $4d
	di                                               ; $7203: $f3
	ld   de, $1111                                   ; $7204: $11 $11 $11
	rra                                              ; $7207: $1f
	rst  $38                                         ; $7208: $ff
	rst  $38                                         ; $7209: $ff
	rst  $38                                         ; $720a: $ff
	or   h                                           ; $720b: $b4
	inc  d                                           ; $720c: $14
	ld   sp, $dc15                                   ; $720d: $31 $15 $dc
	rst  JumpTable                                         ; $7210: $df
	rst  $38                                         ; $7211: $ff
	res  0, h                                        ; $7212: $cb $84
	ld   de, $1111                                   ; $7214: $11 $11 $11
	rst  $38                                         ; $7217: $ff
	jr   @+$01                                       ; $7218: $18 $ff

	ei                                               ; $721a: $fb
	rst  $38                                         ; $721b: $ff
	add  c                                           ; $721c: $81
	ld   de, $1111                                   ; $721d: $11 $11 $11
	rst  $38                                         ; $7220: $ff
	rst  $38                                         ; $7221: $ff
	rst  $38                                         ; $7222: $ff
	rst  $38                                         ; $7223: $ff
	rst  $20                                         ; $7224: $e7
	sub  c                                           ; $7225: $91
	ld   de, $1824                                   ; $7226: $11 $24 $18
	rst  $38                                         ; $7229: $ff
	rst  $38                                         ; $722a: $ff
	ei                                               ; $722b: $fb
	ld   h, c                                        ; $722c: $61
	ld   de, $6511                                   ; $722d: $11 $11 $65
	rla                                              ; $7230: $17
	rst  $38                                         ; $7231: $ff
	rst  $38                                         ; $7232: $ff
	rst  $38                                         ; $7233: $ff
	ld   hl, sp+$12                                  ; $7234: $f8 $12
	ld   de, $5111                                   ; $7236: $11 $11 $51
	dec  c                                           ; $7239: $0d
	rst  $38                                         ; $723a: $ff
	rst  $38                                         ; $723b: $ff
	rst  $38                                         ; $723c: $ff
	ld   a, [$1142]                                  ; $723d: $fa $42 $11
	ld   [de], a                                     ; $7240: $12
	ld   [hl], l                                     ; $7241: $75
	ld   l, [hl]                                     ; $7242: $6e
	ld   [$1185], a                                  ; $7243: $ea $85 $11
	rla                                              ; $7246: $17
	add  c                                           ; $7247: $81
	rra                                              ; $7248: $1f
	db   $fd                                         ; $7249: $fd
	rst  JumpTable                                         ; $724a: $df
	rst  $38                                         ; $724b: $ff
	ld   a, [$11db]                                  ; $724c: $fa $db $11
	inc  de                                          ; $724f: $13
	ld   de, $a93b                                   ; $7250: $11 $3b $a9
	rst  $38                                         ; $7253: $ff
	rst  $38                                         ; $7254: $ff
	rst  $38                                         ; $7255: $ff
	db   $fd                                         ; $7256: $fd
	ld   h, e                                        ; $7257: $63
	ld   [hl], l                                     ; $7258: $75
	ld   de, $1155                                   ; $7259: $11 $55 $11
	ld   de, $7f11                                   ; $725c: $11 $11 $7f
	ld   de, $caff                                   ; $725f: $11 $ff $ca
	rst  $38                                         ; $7262: $ff
	call z, $c189                                    ; $7263: $cc $89 $c1
	ld   de, $1691                                   ; $7266: $11 $91 $16
	bit  7, e                                        ; $7269: $cb $7b
	rst  $38                                         ; $726b: $ff
	cp   $ff                                         ; $726c: $fe $ff
	reti                                             ; $726e: $d9


	ld   l, l                                        ; $726f: $6d
	and  d                                           ; $7270: $a2
	dec  h                                           ; $7271: $25
	ld   h, c                                        ; $7272: $61
	ld   de, $1111                                   ; $7273: $11 $11 $11
	di                                               ; $7276: $f3
	rra                                              ; $7277: $1f
	cp   $af                                         ; $7278: $fe $af
	rst  $38                                         ; $727a: $ff
	call $21af                                       ; $727b: $cd $af $21
	rla                                              ; $727e: $17
	ld   b, c                                        ; $727f: $41
	ld   a, [hl+]                                    ; $7280: $2a
	ld   h, h                                        ; $7281: $64
	adc  a                                           ; $7282: $8f
	rst  $38                                         ; $7283: $ff
	rst  $38                                         ; $7284: $ff
	cp   $ec                                         ; $7285: $fe $ec
	db   $dd                                         ; $7287: $dd
	inc  [hl]                                        ; $7288: $34
	ld   h, h                                        ; $7289: $64
	ld   de, $1111                                   ; $728a: $11 $11 $11
	rra                                              ; $728d: $1f
	ld   sp, $ebff                                   ; $728e: $31 $ff $eb
	rst  $38                                         ; $7291: $ff
	ei                                               ; $7292: $fb
	ei                                               ; $7293: $fb
	pop  af                                          ; $7294: $f1
	inc  de                                          ; $7295: $13
	ld   sp, $b114                                   ; $7296: $31 $14 $b1
	add  hl, hl                                      ; $7299: $29
	db   $fc                                         ; $729a: $fc
	cp   a                                           ; $729b: $bf
	rst  $38                                         ; $729c: $ff
	rst  $28                                         ; $729d: $ef
	rst  $38                                         ; $729e: $ff
	push de                                          ; $729f: $d5
	sbc  b                                           ; $72a0: $98
	ld   de, $1111                                   ; $72a1: $11 $11 $11
	ld   de, $1fd1                                   ; $72a4: $11 $d1 $1f
	ei                                               ; $72a7: $fb
	rst  $38                                         ; $72a8: $ff
	ei                                               ; $72a9: $fb
	rst  $38                                         ; $72aa: $ff
	db   $fd                                         ; $72ab: $fd
	inc  de                                          ; $72ac: $13
	ld   sp, $a111                                   ; $72ad: $31 $11 $a1
	inc  de                                          ; $72b0: $13
	rst  JumpTable                                         ; $72b1: $df
	ld   e, a                                        ; $72b2: $5f
	rst  $38                                         ; $72b3: $ff
	rst  $38                                         ; $72b4: $ff
	rst  $38                                         ; $72b5: $ff
	db   $fd                                         ; $72b6: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72b7: $cf
	ld   sp, $1111                                   ; $72b8: $31 $11 $11
	ld   de, $1812                                   ; $72bb: $11 $12 $18
	or   $cf                                         ; $72be: $f6 $cf
	rst  $38                                         ; $72c0: $ff
	rst  $38                                         ; $72c1: $ff
	rst  $38                                         ; $72c2: $ff
	and  e                                           ; $72c3: $a3
	or   c                                           ; $72c4: $b1
	ld   de, $1114                                   ; $72c5: $11 $14 $11
	ld   c, d                                        ; $72c8: $4a
	ld   b, h                                        ; $72c9: $44
	rst  $38                                         ; $72ca: $ff
	rst  $38                                         ; $72cb: $ff
	rst  $38                                         ; $72cc: $ff
	rst  $38                                         ; $72cd: $ff
	rst  $38                                         ; $72ce: $ff
	ldh  [c], a                                      ; $72cf: $e2
	ld   h, c                                        ; $72d0: $61
	ld   de, $1111                                   ; $72d1: $11 $11 $11
	ld   de, $2e7f                                   ; $72d4: $11 $7f $2e
	rst  $38                                         ; $72d7: $ff
	rst  $38                                         ; $72d8: $ff
	rst  $38                                         ; $72d9: $ff
	rst  $38                                         ; $72da: $ff
	xor  l                                           ; $72db: $ad
	ld   sp, $1111                                   ; $72dc: $31 $11 $11
	ld   de, $4f11                                   ; $72df: $11 $11 $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72e2: $cf
	rst  $38                                         ; $72e3: $ff
	rst  $38                                         ; $72e4: $ff
	rst  $38                                         ; $72e5: $ff
	rst  $38                                         ; $72e6: $ff
	xor  h                                           ; $72e7: $ac
	ld   b, c                                        ; $72e8: $41
	ld   de, $1111                                   ; $72e9: $11 $11 $11
	ld   [de], a                                     ; $72ec: $12
	add  c                                           ; $72ed: $81
	xor  a                                           ; $72ee: $af
	rst  $38                                         ; $72ef: $ff
	rst  $38                                         ; $72f0: $ff
	rst  $38                                         ; $72f1: $ff
	rst  $38                                         ; $72f2: $ff
	ld   a, [$4141]                                  ; $72f3: $fa $41 $41
	ld   de, $1111                                   ; $72f6: $11 $11 $11
	add  h                                           ; $72f9: $84
	cp   a                                           ; $72fa: $bf
	rst  $38                                         ; $72fb: $ff
	rst  $38                                         ; $72fc: $ff
	rst  $38                                         ; $72fd: $ff
	rst  $38                                         ; $72fe: $ff
	rst  $30                                         ; $72ff: $f7
	ld   sp, $1111                                   ; $7300: $31 $11 $11
	ld   de, $1831                                   ; $7303: $11 $31 $18
	xor  a                                           ; $7306: $af
	rst  $38                                         ; $7307: $ff
	rst  $38                                         ; $7308: $ff
	rst  $38                                         ; $7309: $ff
	rst  $38                                         ; $730a: $ff
	db   $ed                                         ; $730b: $ed
	xor  h                                           ; $730c: $ac
	ld   de, $1141                                   ; $730d: $11 $41 $11
	ld   de, $7d16                                   ; $7310: $11 $16 $7d
	rst  $28                                         ; $7313: $ef
	rst  $38                                         ; $7314: $ff
	rst  $38                                         ; $7315: $ff
	rst  $38                                         ; $7316: $ff
	ld   [hl], a                                     ; $7317: $77
	ld   hl, $1111                                   ; $7318: $21 $11 $11
	ld   de, $3514                                   ; $731b: $11 $14 $35
	sbc  a                                           ; $731e: $9f
	rst  $28                                         ; $731f: $ef
	rst  $38                                         ; $7320: $ff
	rst  $38                                         ; $7321: $ff
	rst  $38                                         ; $7322: $ff
	db   $fc                                         ; $7323: $fc
	ld   l, l                                        ; $7324: $6d
	ld   d, d                                        ; $7325: $52
	ld   hl, $2321                                   ; $7326: $21 $21 $23
	ld   c, b                                        ; $7329: $48
	ld   a, e                                        ; $732a: $7b
	db   $ed                                         ; $732b: $ed
	sbc  $f8                                         ; $732c: $de $f8
	ld   e, b                                        ; $732e: $58
	and  c                                           ; $732f: $a1
	jr   jr_0f8_7343                                 ; $7330: $18 $11

	ld   [hl-], a                                    ; $7332: $32
	ld   [hl-], a                                    ; $7333: $32
	adc  [hl]                                        ; $7334: $8e
	xor  a                                           ; $7335: $af
	rst  JumpTable                                         ; $7336: $df
	ei                                               ; $7337: $fb
	rst  $38                                         ; $7338: $ff
	ld   sp, hl                                      ; $7339: $f9
	xor  a                                           ; $733a: $af
	ld   d, a                                        ; $733b: $57
	add  a                                           ; $733c: $87
	ld   h, d                                        ; $733d: $62
	ld   [hl], l                                     ; $733e: $75
	ld   d, a                                        ; $733f: $57
	sbc  e                                           ; $7340: $9b
	sbc  e                                           ; $7341: $9b
	cp   d                                           ; $7342: $ba

jr_0f8_7343:
	rst  ToBoot                                         ; $7343: $c7
	ld   h, h                                        ; $7344: $64
	add  [hl]                                        ; $7345: $86
	ld   [de], a                                     ; $7346: $12
	ld   h, c                                        ; $7347: $61
	inc  d                                           ; $7348: $14
	inc  de                                          ; $7349: $13
	ld   c, h                                        ; $734a: $4c
	xor  l                                           ; $734b: $ad
	db   $ec                                         ; $734c: $ec
	cp   $ef                                         ; $734d: $fe $ef
	cp   $9f                                         ; $734f: $fe $9f
	and  [hl]                                        ; $7351: $a6
	and  l                                           ; $7352: $a5
	ld   [hl], h                                     ; $7353: $74
	ld   b, l                                        ; $7354: $45
	ld   b, a                                        ; $7355: $47
	ld   l, b                                        ; $7356: $68
	sbc  c                                           ; $7357: $99
	xor  b                                           ; $7358: $a8
	cp   b                                           ; $7359: $b8
	ld   h, l                                        ; $735a: $65
	ld   l, d                                        ; $735b: $6a
	ld   de, $16a1                                   ; $735c: $11 $a1 $16
	inc  d                                           ; $735f: $14
	add  hl, sp                                      ; $7360: $39
	xor  c                                           ; $7361: $a9
	db   $eb                                         ; $7362: $eb
	rst  $38                                         ; $7363: $ff
	xor  a                                           ; $7364: $af
	db   $ed                                         ; $7365: $ed
	cp   [hl]                                        ; $7366: $be
	rst  $10                                         ; $7367: $d7
	ret                                              ; $7368: $c9


	add  a                                           ; $7369: $87
	ld   e, c                                        ; $736a: $59
	ld   d, a                                        ; $736b: $57
	ld   [hl], a                                     ; $736c: $77
	sub  a                                           ; $736d: $97
	sub  a                                           ; $736e: $97
	add  a                                           ; $736f: $87
	dec  [hl]                                        ; $7370: $35
	ld   b, a                                        ; $7371: $47
	ld   de, $18b1                                   ; $7372: $11 $b1 $18
	dec  d                                           ; $7375: $15
	ld   c, d                                        ; $7376: $4a
	cp   d                                           ; $7377: $ba
	ei                                               ; $7378: $fb
	rst  $38                                         ; $7379: $ff
	xor  a                                           ; $737a: $af
	db   $ed                                         ; $737b: $ed
	cp   l                                           ; $737c: $bd
	rst  $10                                         ; $737d: $d7
	ret  z                                           ; $737e: $c8

	sbc  b                                           ; $737f: $98
	ld   l, d                                        ; $7380: $6a
	ld   e, c                                        ; $7381: $59
	add  a                                           ; $7382: $87
	sub  a                                           ; $7383: $97
	and  a                                           ; $7384: $a7
	add  [hl]                                        ; $7385: $86
	inc  h                                           ; $7386: $24
	ld   d, l                                        ; $7387: $55
	ld   de, $2681                                   ; $7388: $11 $81 $26
	rla                                              ; $738b: $17
	dec  sp                                          ; $738c: $3b
	cp   e                                           ; $738d: $bb
	call c, $dffb                                    ; $738e: $dc $fb $df
	call $b8cf                                       ; $7391: $cd $cf $b8
	ret  c                                           ; $7394: $d8

	and  a                                           ; $7395: $a7
	ld   a, b                                        ; $7396: $78
	ld   e, d                                        ; $7397: $5a
	ld   a, b                                        ; $7398: $78
	add  a                                           ; $7399: $87
	sub  [hl]                                        ; $739a: $96
	add  l                                           ; $739b: $85
	inc  h                                           ; $739c: $24
	ld   [hl], d                                     ; $739d: $72
	rla                                              ; $739e: $17
	ld   hl, $2671                                   ; $739f: $21 $71 $26
	inc  a                                           ; $73a2: $3c
	adc  h                                           ; $73a3: $8c
	cp   [hl]                                        ; $73a4: $be
	ld   hl, sp-$01                                  ; $73a5: $f8 $ff
	adc  $cf                                         ; $73a7: $ce $cf
	xor  e                                           ; $73a9: $ab
	ret                                              ; $73aa: $c9


	sub  [hl]                                        ; $73ab: $96
	and  a                                           ; $73ac: $a7
	ld   a, d                                        ; $73ad: $7a
	ld   l, c                                        ; $73ae: $69
	ld   h, a                                        ; $73af: $67
	add  h                                           ; $73b0: $84
	ld   [hl], e                                     ; $73b1: $73
	inc  d                                           ; $73b2: $14
	ld   h, c                                        ; $73b3: $61
	ld   a, [de]                                     ; $73b4: $1a
	ld   de, $8381                                   ; $73b5: $11 $81 $83
	ld   a, l                                        ; $73b8: $7d
	adc  l                                           ; $73b9: $8d
	cp   a                                           ; $73ba: $bf
	set  7, h                                        ; $73bb: $cb $fc
	xor  $fe                                         ; $73bd: $ee $fe
	sbc  a                                           ; $73bf: $9f
	cp   c                                           ; $73c0: $b9
	sbc  b                                           ; $73c1: $98
	and  [hl]                                        ; $73c2: $a6
	xor  b                                           ; $73c3: $a8
	ld   a, b                                        ; $73c4: $78
	ld   l, b                                        ; $73c5: $68
	ld   d, l                                        ; $73c6: $55
	ld   d, c                                        ; $73c7: $51
	ld   [hl], $11                                   ; $73c8: $36 $11
	add  c                                           ; $73ca: $81
	jr   @+$16                                       ; $73cb: $18 $14

	ld   h, h                                        ; $73cd: $64
	reti                                             ; $73ce: $d9


	call z, $afff                                    ; $73cf: $cc $ff $af
	db   $ec                                         ; $73d2: $ec
	db   $fd                                         ; $73d3: $fd
	ld   a, [$aadc]                                  ; $73d4: $fa $dc $aa
	sbc  d                                           ; $73d7: $9a
	ld   a, b                                        ; $73d8: $78
	sub  a                                           ; $73d9: $97
	sub  a                                           ; $73da: $97
	add  a                                           ; $73db: $87
	ld   b, l                                        ; $73dc: $45
	inc  de                                          ; $73dd: $13
	ld   h, c                                        ; $73de: $61
	rla                                              ; $73df: $17
	ld   de, $3671                                   ; $73e0: $11 $71 $36
	ld   c, l                                        ; $73e3: $4d
	adc  e                                           ; $73e4: $8b
	rst  JumpTable                                         ; $73e5: $df
	ei                                               ; $73e6: $fb
	rst  $38                                         ; $73e7: $ff
	rst  JumpTable                                         ; $73e8: $df
	rst  JumpTable                                         ; $73e9: $df
	xor  l                                           ; $73ea: $ad
	jp   c, $b8b9                                    ; $73eb: $da $b9 $b8

	adc  c                                           ; $73ee: $89
	adc  b                                           ; $73ef: $88
	ld   [hl], a                                     ; $73f0: $77
	ld   h, h                                        ; $73f1: $64
	ld   b, c                                        ; $73f2: $41
	ld   [hl], $11                                   ; $73f3: $36 $11
	ld   [hl], c                                     ; $73f5: $71
	ld   d, $15                                      ; $73f6: $16 $15
	ld   b, l                                        ; $73f8: $45
	reti                                             ; $73f9: $d9


	call $dffe                                       ; $73fa: $cd $fe $df
	rst  $28                                         ; $73fd: $ef
	cp   $fb                                         ; $73fe: $fe $fb
	db   $fd                                         ; $7400: $fd
	xor  d                                           ; $7401: $aa
	sbc  e                                           ; $7402: $9b
	adc  b                                           ; $7403: $88
	sub  a                                           ; $7404: $97
	add  [hl]                                        ; $7405: $86
	add  l                                           ; $7406: $85
	ld   b, h                                        ; $7407: $44
	inc  d                                           ; $7408: $14
	ld   sp, $1114                                   ; $7409: $31 $14 $11
	ld   b, c                                        ; $740c: $41
	ld   h, e                                        ; $740d: $63
	ld   a, l                                        ; $740e: $7d
	adc  h                                           ; $740f: $8c
	rst  $38                                         ; $7410: $ff
	rst  JumpTable                                         ; $7411: $df
	db   $fc                                         ; $7412: $fc
	rst  $38                                         ; $7413: $ff
	rst  $38                                         ; $7414: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7415: $cf
	res  7, d                                        ; $7416: $cb $ba
	xor  b                                           ; $7418: $a8
	sbc  c                                           ; $7419: $99
	ld   [hl], a                                     ; $741a: $77
	ld   [hl], a                                     ; $741b: $77
	ld   b, e                                        ; $741c: $43
	ld   sp, $1651                                   ; $741d: $31 $51 $16
	ld   de, $1651                                   ; $7420: $11 $51 $16
	inc  e                                           ; $7423: $1c
	sbc  c                                           ; $7424: $99
	rst  $28                                         ; $7425: $ef
	db   $fc                                         ; $7426: $fc
	rst  $38                                         ; $7427: $ff
	rst  $28                                         ; $7428: $ef
	rst  $38                                         ; $7429: $ff
	call $cafb                                       ; $742a: $cd $fb $ca
	xor  d                                           ; $742d: $aa
	adc  d                                           ; $742e: $8a
	adc  b                                           ; $742f: $88
	ld   h, a                                        ; $7430: $67
	ld   h, d                                        ; $7431: $62
	ld   b, c                                        ; $7432: $41
	inc  sp                                          ; $7433: $33
	ld   de, $1231                                   ; $7434: $11 $31 $12
	dec  d                                           ; $7437: $15
	daa                                              ; $7438: $27
	rst  ToBoot                                         ; $7439: $c7
	adc  $fd                                         ; $743a: $ce $fd
	rst  $38                                         ; $743c: $ff
	rst  $28                                         ; $743d: $ef
	rst  $38                                         ; $743e: $ff
	db   $fd                                         ; $743f: $fd
	db   $fd                                         ; $7440: $fd
	call z, $99bc                                    ; $7441: $cc $bc $99
	and  a                                           ; $7444: $a7
	ld   h, [hl]                                     ; $7445: $66
	ld   [hl], e                                     ; $7446: $73
	ld   [hl+], a                                    ; $7447: $22
	inc  h                                           ; $7448: $24
	ld   de, $1451                                   ; $7449: $11 $51 $14
	inc  d                                           ; $744c: $14
	inc  [hl]                                        ; $744d: $34
	sub  $bf                                         ; $744e: $d6 $bf
	db   $fd                                         ; $7450: $fd
	rst  JumpTable                                         ; $7451: $df
	xor  $ff                                         ; $7452: $ee $ff
	db   $fc                                         ; $7454: $fc
	cp   $bd                                         ; $7455: $fe $bd
	cp   h                                           ; $7457: $bc
	xor  b                                           ; $7458: $a8
	cp   b                                           ; $7459: $b8
	halt                                             ; $745a: $76
	ld   [hl], h                                     ; $745b: $74
	ld   [de], a                                     ; $745c: $12
	ld   [de], a                                     ; $745d: $12
	ld   de, $1331                                   ; $745e: $11 $31 $13
	ld   de, $b843                                   ; $7461: $11 $43 $b8
	sbc  [hl]                                        ; $7464: $9e
	xor  $df                                         ; $7465: $ee $df
	db   $fd                                         ; $7467: $fd
	rst  $38                                         ; $7468: $ff
	cp   $ff                                         ; $7469: $fe $ff
	cp   h                                           ; $746b: $bc
	call z, $a9a9                                    ; $746c: $cc $a9 $a9
	halt                                             ; $746f: $76
	ld   [hl], l                                     ; $7470: $75
	inc  de                                          ; $7471: $13
	ld   hl, $1111                                   ; $7472: $21 $11 $11
	ld   [de], a                                     ; $7475: $12
	ld   de, $a951                                   ; $7476: $11 $51 $a9
	ld   a, a                                        ; $7479: $7f
	sbc  $df                                         ; $747a: $de $df
	cp   $ff                                         ; $747c: $fe $ff
	cp   $ff                                         ; $747e: $fe $ff
	call $c8cb                                       ; $7480: $cd $cb $c8
	xor  c                                           ; $7483: $a9
	ld   [hl], a                                     ; $7484: $77
	ld   h, [hl]                                     ; $7485: $66
	ld   [de], a                                     ; $7486: $12
	ld   [de], a                                     ; $7487: $12
	ld   de, $1221                                   ; $7488: $11 $21 $12
	ld   de, $a941                                   ; $748b: $11 $41 $a9
	ld   l, l                                        ; $748e: $6d
	db   $ed                                         ; $748f: $ed
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7490: $cf
	cp   $ff                                         ; $7491: $fe $ff
	rst  $38                                         ; $7493: $ff
	rst  $28                                         ; $7494: $ef
	call $cadc                                       ; $7495: $cd $dc $ca
	xor  c                                           ; $7498: $a9
	add  a                                           ; $7499: $87
	halt                                             ; $749a: $76
	inc  hl                                          ; $749b: $23
	ld   [de], a                                     ; $749c: $12
	ld   de, $1111                                   ; $749d: $11 $11 $11
	ld   de, $7a41                                   ; $74a0: $11 $41 $7a
	ld   e, h                                        ; $74a3: $5c
	sbc  $cf                                         ; $74a4: $de $cf
	db   $fd                                         ; $74a6: $fd
	rst  $38                                         ; $74a7: $ff
	rst  $38                                         ; $74a8: $ff
	rst  $28                                         ; $74a9: $ef
	db   $dd                                         ; $74aa: $dd
	db   $ec                                         ; $74ab: $ec
	jp   z, $88aa                                    ; $74ac: $ca $aa $88

	ld   [hl], a                                     ; $74af: $77
	ld   [hl+], a                                    ; $74b0: $22
	ld   hl, $1111                                   ; $74b1: $21 $11 $11
	ld   de, $2221                                   ; $74b4: $11 $21 $22
	ld   c, d                                        ; $74b7: $4a
	ld   e, e                                        ; $74b8: $5b
	db   $ec                                         ; $74b9: $ec
	rst  JumpTable                                         ; $74ba: $df
	cp   $ff                                         ; $74bb: $fe $ff
	rst  $38                                         ; $74bd: $ff
	rst  $38                                         ; $74be: $ff
	db   $fd                                         ; $74bf: $fd
	db   $ec                                         ; $74c0: $ec
	res  5, e                                        ; $74c1: $cb $ab
	sbc  b                                           ; $74c3: $98
	ld   [hl], a                                     ; $74c4: $77
	ld   b, d                                        ; $74c5: $42
	ld   hl, $1331                                   ; $74c6: $21 $31 $13
	ld   de, $2231                                   ; $74c9: $11 $31 $22
	dec  hl                                          ; $74cc: $2b
	ld   e, c                                        ; $74cd: $59
	db   $ed                                         ; $74ce: $ed
	db   $dd                                         ; $74cf: $dd
	cp   $ff                                         ; $74d0: $fe $ff
	rst  $38                                         ; $74d2: $ff
	rst  $28                                         ; $74d3: $ef
	db   $fc                                         ; $74d4: $fc
	db   $ec                                         ; $74d5: $ec
	call c, $89ab                                    ; $74d6: $dc $ab $89
	ld   [hl], a                                     ; $74d9: $77
	ld   d, d                                        ; $74da: $52
	ld   sp, $1121                                   ; $74db: $31 $21 $11
	ld   de, $1411                                   ; $74de: $11 $11 $14
	add  hl, de                                      ; $74e1: $19
	ld   [hl], a                                     ; $74e2: $77
	call c, $ffdd                                    ; $74e3: $dc $dd $ff
	rst  $28                                         ; $74e6: $ef
	rst  $38                                         ; $74e7: $ff
	rst  $38                                         ; $74e8: $ff
	db   $fd                                         ; $74e9: $fd
	xor  $cd                                         ; $74ea: $ee $cd
	cp   e                                           ; $74ec: $bb
	xor  b                                           ; $74ed: $a8
	add  a                                           ; $74ee: $87
	ld   h, d                                        ; $74ef: $62
	ld   [hl+], a                                    ; $74f0: $22
	ld   hl, $1112                                   ; $74f1: $21 $12 $11
	ld   de, $0a12                                   ; $74f4: $11 $12 $0a
	ld   h, a                                        ; $74f7: $67
	call c, $ffdc                                    ; $74f8: $dc $dc $ff
	rst  JumpTable                                         ; $74fb: $df
	rst  $38                                         ; $74fc: $ff
	rst  $38                                         ; $74fd: $ff
	db   $fd                                         ; $74fe: $fd
	cp   $cc                                         ; $74ff: $fe $cc
	xor  e                                           ; $7501: $ab
	sbc  b                                           ; $7502: $98
	adc  b                                           ; $7503: $88
	ld   h, d                                        ; $7504: $62
	ld   [hl-], a                                    ; $7505: $32
	ld   hl, $1111                                   ; $7506: $21 $11 $11
	ld   de, $1913                                   ; $7509: $11 $13 $19
	halt                                             ; $750c: $76
	call c, $ffcc                                    ; $750d: $dc $cc $ff
	rst  $28                                         ; $7510: $ef
	rst  $38                                         ; $7511: $ff
	rst  $38                                         ; $7512: $ff
	cp   $ee                                         ; $7513: $fe $ee
	call z, $b8bb                                    ; $7515: $cc $bb $b8
	adc  b                                           ; $7518: $88
	ld   h, d                                        ; $7519: $62
	ld   b, d                                        ; $751a: $42
	ld   hl, $1111                                   ; $751b: $21 $11 $11
	ld   de, $1813                                   ; $751e: $11 $13 $18
	ld   h, [hl]                                     ; $7521: $66
	call z, $ffcb                                    ; $7522: $cc $cb $ff
	rst  JumpTable                                         ; $7525: $df
	rst  $38                                         ; $7526: $ff
	rst  $28                                         ; $7527: $ef
	cp   $ee                                         ; $7528: $fe $ee
	db   $dd                                         ; $752a: $dd
	cp   h                                           ; $752b: $bc
	xor  c                                           ; $752c: $a9
	adc  b                                           ; $752d: $88
	ld   [hl], d                                     ; $752e: $72
	ld   b, e                                        ; $752f: $43
	ld   de, $1111                                   ; $7530: $11 $11 $11
	ld   de, $1613                                   ; $7533: $11 $13 $16
	halt                                             ; $7536: $76
	cp   e                                           ; $7537: $bb
	call z, $cfef                                    ; $7538: $cc $ef $cf
	rst  $38                                         ; $753b: $ff
	rst  $38                                         ; $753c: $ff
	cp   $df                                         ; $753d: $fe $df
	call $b9cb                                       ; $753f: $cd $cb $b9
	sbc  b                                           ; $7542: $98
	ld   [hl], d                                     ; $7543: $72
	ld   b, e                                        ; $7544: $43
	ld   de, $1111                                   ; $7545: $11 $11 $11
	ld   de, $1712                                   ; $7548: $11 $12 $17
	ld   h, [hl]                                     ; $754b: $66
	cp   e                                           ; $754c: $bb
	call z, $cfee                                    ; $754d: $cc $ee $cf
	rst  $38                                         ; $7550: $ff
	rst  $38                                         ; $7551: $ff
	db   $fd                                         ; $7552: $fd
	rst  $28                                         ; $7553: $ef
	db   $dd                                         ; $7554: $dd
	cp   h                                           ; $7555: $bc
	xor  c                                           ; $7556: $a9
	add  a                                           ; $7557: $87
	ld   [hl], e                                     ; $7558: $73
	ld   b, e                                        ; $7559: $43
	ld   de, $1111                                   ; $755a: $11 $11 $11
	ld   de, $1712                                   ; $755d: $11 $12 $17
	ld   d, [hl]                                     ; $7560: $56
	cp   d                                           ; $7561: $ba
	cp   h                                           ; $7562: $bc
	cp   $cf                                         ; $7563: $fe $cf
	rst  $38                                         ; $7565: $ff
	rst  $28                                         ; $7566: $ef
	db   $fd                                         ; $7567: $fd
	rst  $28                                         ; $7568: $ef
	db   $dd                                         ; $7569: $dd
	cp   l                                           ; $756a: $bd
	xor  c                                           ; $756b: $a9
	sub  a                                           ; $756c: $97
	ld   [hl], h                                     ; $756d: $74
	ld   b, e                                        ; $756e: $43
	ld   hl, $1112                                   ; $756f: $21 $12 $11
	ld   de, $1812                                   ; $7572: $11 $12 $18
	ld   b, a                                        ; $7575: $47
	xor  d                                           ; $7576: $aa
	cp   e                                           ; $7577: $bb
	cp   $df                                         ; $7578: $fe $df
	rst  $28                                         ; $757a: $ef
	rst  $28                                         ; $757b: $ef
	db   $fd                                         ; $757c: $fd
	db   $fd                                         ; $757d: $fd
	call c, $aacc                                    ; $757e: $dc $cc $aa
	sub  a                                           ; $7581: $97
	ld   [hl], h                                     ; $7582: $74
	ld   b, e                                        ; $7583: $43
	ld   hl, $1112                                   ; $7584: $21 $12 $11
	ld   de, $1712                                   ; $7587: $11 $12 $17
	ld   d, [hl]                                     ; $758a: $56
	xor  d                                           ; $758b: $aa
	set  5, l                                        ; $758c: $cb $ed
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $758e: $cf
	rst  $38                                         ; $758f: $ff
	rst  $28                                         ; $7590: $ef
	db   $fd                                         ; $7591: $fd
	cp   $dd                                         ; $7592: $fe $dd
	call $9799                                       ; $7594: $cd $99 $97
	ld   [hl], h                                     ; $7597: $74
	ld   d, e                                        ; $7598: $53
	ld   sp, $1112                                   ; $7599: $31 $12 $11
	ld   hl, $1712                                   ; $759c: $21 $12 $17
	ld   b, [hl]                                     ; $759f: $46
	cp   c                                           ; $75a0: $b9
	cp   d                                           ; $75a1: $ba
	db   $ed                                         ; $75a2: $ed
	adc  $ef                                         ; $75a3: $ce $ef
	rst  JumpTable                                         ; $75a5: $df
	db   $fd                                         ; $75a6: $fd
	db   $fd                                         ; $75a7: $fd
	db   $dd                                         ; $75a8: $dd
	cp   l                                           ; $75a9: $bd
	xor  c                                           ; $75aa: $a9
	xor  b                                           ; $75ab: $a8
	ld   [hl], l                                     ; $75ac: $75
	ld   d, e                                        ; $75ad: $53
	ld   [hl-], a                                    ; $75ae: $32
	ld   de, $1111                                   ; $75af: $11 $11 $11
	inc  de                                          ; $75b2: $13
	ld   d, $55                                      ; $75b3: $16 $55
	xor  c                                           ; $75b5: $a9
	cp   e                                           ; $75b6: $bb
	db   $dd                                         ; $75b7: $dd
	adc  $ee                                         ; $75b8: $ce $ee
	xor  $fd                                         ; $75ba: $ee $fd
	xor  $cd                                         ; $75bc: $ee $cd
	cp   l                                           ; $75be: $bd
	ret                                              ; $75bf: $c9


	sbc  c                                           ; $75c0: $99
	halt                                             ; $75c1: $76
	ld   d, h                                        ; $75c2: $54
	ld   [hl-], a                                    ; $75c3: $32
	ld   de, $1111                                   ; $75c4: $11 $11 $11
	ld   [de], a                                     ; $75c7: $12

Call_0f8_75c8:
	inc  hl                                          ; $75c8: $23
	ld   [hl], h                                     ; $75c9: $74
	adc  d                                           ; $75ca: $8a
	xor  h                                           ; $75cb: $ac
	call $fedd                                       ; $75cc: $cd $dd $fe
	cp   $ff                                         ; $75cf: $fe $ff
	rst  JumpTable                                         ; $75d1: $df
	call c, $c9cc                                    ; $75d2: $dc $cc $c9
	xor  d                                           ; $75d5: $aa
	sub  [hl]                                        ; $75d6: $96
	ld   d, h                                        ; $75d7: $54
	inc  sp                                          ; $75d8: $33
	ld   de, $1111                                   ; $75d9: $11 $11 $11
	ld   de, $6522                                   ; $75dc: $11 $22 $65
	ld   l, d                                        ; $75df: $6a
	sbc  d                                           ; $75e0: $9a
	call z, $eecc                                    ; $75e1: $cc $cc $ee
	cp   $ff                                         ; $75e4: $fe $ff
	xor  $ec                                         ; $75e6: $ee $ec
	call z, $a9cb                                    ; $75e8: $cc $cb $a9
	sub  a                                           ; $75eb: $97
	ld   d, l                                        ; $75ec: $55
	ld   b, e                                        ; $75ed: $43
	ld   hl, $1111                                   ; $75ee: $21 $11 $11
	ld   hl, $2822                                   ; $75f1: $21 $22 $28
	ld   c, b                                        ; $75f4: $48
	xor  c                                           ; $75f5: $a9
	call z, $eeec                                    ; $75f6: $cc $ec $ee
	rst  $28                                         ; $75f9: $ef
	rst  $28                                         ; $75fa: $ef
	db   $fd                                         ; $75fb: $fd
	db   $ed                                         ; $75fc: $ed
	call z, $babc                                    ; $75fd: $cc $bc $ba
	sbc  b                                           ; $7600: $98
	ld   [hl], l                                     ; $7601: $75
	ld   b, e                                        ; $7602: $43
	ld   sp, $1111                                   ; $7603: $31 $11 $11
	ld   de, $1613                                   ; $7606: $11 $13 $16
	ld   h, l                                        ; $7609: $65
	xor  d                                           ; $760a: $aa
	cp   e                                           ; $760b: $bb
	adc  $cf                                         ; $760c: $ce $cf
	xor  $ee                                         ; $760e: $ee $ee
	db   $fd                                         ; $7610: $fd
	xor  $dc                                         ; $7611: $ee $dc
	call z, $99c9                                    ; $7613: $cc $c9 $99
	halt                                             ; $7616: $76
	ld   b, h                                        ; $7617: $44
	ld   sp, $1111                                   ; $7618: $31 $11 $11
	inc  de                                          ; $761b: $13
	ld   de, $8541                                   ; $761c: $11 $41 $85
	ld   a, e                                        ; $761f: $7b
	sbc  l                                           ; $7620: $9d
	cp   [hl]                                        ; $7621: $be
	db   $dd                                         ; $7622: $dd
	db   $fd                                         ; $7623: $fd
	cp   $ff                                         ; $7624: $fe $ff
	adc  $dc                                         ; $7626: $ce $dc
	db   $db                                         ; $7628: $db
	cp   e                                           ; $7629: $bb
	sbc  d                                           ; $762a: $9a
	ld   [hl], a                                     ; $762b: $77
	ld   b, e                                        ; $762c: $43
	ld   b, c                                        ; $762d: $41
	ld   de, $1111                                   ; $762e: $11 $11 $11
	ld   sp, $3823                                   ; $7631: $31 $23 $38
	ld   e, d                                        ; $7634: $5a
	cp   d                                           ; $7635: $ba
	call c, $effe                                    ; $7636: $dc $fe $ef
	rst  $28                                         ; $7639: $ef
	rst  $28                                         ; $763a: $ef
	db   $fc                                         ; $763b: $fc
	db   $fc                                         ; $763c: $fc
	db   $dd                                         ; $763d: $dd
	xor  e                                           ; $763e: $ab
	sbc  c                                           ; $763f: $99
	add  a                                           ; $7640: $87
	ld   h, e                                        ; $7641: $63
	ld   b, e                                        ; $7642: $43
	ld   de, $1111                                   ; $7643: $11 $11 $11
	ld   de, $2714                                   ; $7646: $11 $14 $27
	ld   [hl], a                                     ; $7649: $77
	jp   z, $decc                                    ; $764a: $ca $cc $de

	rst  JumpTable                                         ; $764d: $df
	rst  $38                                         ; $764e: $ff
	cp   $fd                                         ; $764f: $fe $fd
	xor  $cd                                         ; $7651: $ee $cd
	cp   h                                           ; $7653: $bc
	cp   c                                           ; $7654: $b9
	sub  a                                           ; $7655: $97
	ld   h, e                                        ; $7656: $63
	inc  [hl]                                        ; $7657: $34
	ld   de, $1111                                   ; $7658: $11 $11 $11
	ld   de, $2514                                   ; $765b: $11 $14 $25
	add  [hl]                                        ; $765e: $86
	cp   e                                           ; $765f: $bb
	call $dfdf                                       ; $7660: $cd $df $df
	rst  $38                                         ; $7663: $ff
	cp   $fe                                         ; $7664: $fe $fe
	rst  $28                                         ; $7666: $ef
	call c, $b8cc                                    ; $7667: $dc $cc $b8
	sbc  b                                           ; $766a: $98
	ld   h, e                                        ; $766b: $63
	inc  h                                           ; $766c: $24
	ld   de, $1111                                   ; $766d: $11 $11 $11
	ld   de, $2612                                   ; $7670: $11 $12 $26
	halt                                             ; $7673: $76
	call z, $dfcc                                    ; $7674: $cc $cc $df
	rst  $28                                         ; $7677: $ef
	rst  $38                                         ; $7678: $ff
	rst  $38                                         ; $7679: $ff
	rst  $38                                         ; $767a: $ff
	xor  $ed                                         ; $767b: $ee $ed
	res  5, b                                        ; $767d: $cb $a8
	sbc  b                                           ; $767f: $98
	ld   h, d                                        ; $7680: $62
	inc  sp                                          ; $7681: $33
	ld   de, $1111                                   ; $7682: $11 $11 $11
	ld   de, $3713                                   ; $7685: $11 $13 $37
	halt                                             ; $7688: $76
	call c, $efbc                                    ; $7689: $dc $bc $ef
	rst  JumpTable                                         ; $768c: $df
	rst  $38                                         ; $768d: $ff
	rst  $38                                         ; $768e: $ff
	db   $fd                                         ; $768f: $fd
	sbc  $cc                                         ; $7690: $de $cc
	cp   h                                           ; $7692: $bc
	and  a                                           ; $7693: $a7
	add  a                                           ; $7694: $87
	ld   b, c                                        ; $7695: $41
	ld   [hl-], a                                    ; $7696: $32
	ld   de, $1111                                   ; $7697: $11 $11 $11
	ld   hl, $3813                                   ; $769a: $21 $13 $38
	ld   l, c                                        ; $769d: $69
	db   $db                                         ; $769e: $db
	db   $dd                                         ; $769f: $dd
	rst  $38                                         ; $76a0: $ff
	rst  JumpTable                                         ; $76a1: $df
	rst  $38                                         ; $76a2: $ff
	rst  $38                                         ; $76a3: $ff
	db   $fd                                         ; $76a4: $fd
	xor  $dc                                         ; $76a5: $ee $dc
	cp   e                                           ; $76a7: $bb
	sub  a                                           ; $76a8: $97
	sub  [hl]                                        ; $76a9: $96
	ld   sp, $1141                                   ; $76aa: $31 $41 $11
	ld   de, $2111                                   ; $76ad: $11 $11 $21
	ld   [hl+], a                                    ; $76b0: $22
	ld   l, b                                        ; $76b1: $68
	ld   e, e                                        ; $76b2: $5b
	call z, $fcce                                    ; $76b3: $cc $ce $fc
	rst  $38                                         ; $76b6: $ff
	rst  $38                                         ; $76b7: $ff
	rst  $28                                         ; $76b8: $ef
	db   $eb                                         ; $76b9: $eb

Jump_0f8_76ba:
	db   $fd                                         ; $76ba: $fd
	jp   z, $69cb                                    ; $76bb: $ca $cb $69

	ld   [hl], h                                     ; $76be: $74
	ld   [de], a                                     ; $76bf: $12
	ld   sp, $1111                                   ; $76c0: $31 $11 $11
	inc  de                                          ; $76c3: $13
	ld   de, $9534                                   ; $76c4: $11 $34 $95
	sbc  [hl]                                        ; $76c7: $9e
	db   $dd                                         ; $76c8: $dd
	rst  JumpTable                                         ; $76c9: $df
	db   $ec                                         ; $76ca: $ec
	rst  $38                                         ; $76cb: $ff
	cp   $ff                                         ; $76cc: $fe $ff
	call $baec                                       ; $76ce: $cd $ec $ba
	rst  ToBoot                                         ; $76d1: $c7
	ld   a, c                                        ; $76d2: $79
	ld   d, c                                        ; $76d3: $51
	inc  hl                                          ; $76d4: $23
	ld   de, $1111                                   ; $76d5: $11 $11 $11
	ld   de, $4a12                                   ; $76d8: $11 $12 $4a
	ld   a, c                                        ; $76db: $79
	sbc  $dc                                         ; $76dc: $de $dc
	rst  $38                                         ; $76de: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76df: $cf
	rst  $38                                         ; $76e0: $ff
	xor  $fd                                         ; $76e1: $ee $fd
	db   $dd                                         ; $76e3: $dd
	db   $db                                         ; $76e4: $db
	xor  e                                           ; $76e5: $ab
	sub  a                                           ; $76e6: $97
	add  l                                           ; $76e7: $85
	ld   [de], a                                     ; $76e8: $12
	ld   sp, $1111                                   ; $76e9: $31 $11 $11
	ld   de, $3411                                   ; $76ec: $11 $11 $34
	sub  a                                           ; $76ef: $97
	sbc  h                                           ; $76f0: $9c
	db   $dd                                         ; $76f1: $dd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76f2: $cf
	db   $fd                                         ; $76f3: $fd
	rst  $38                                         ; $76f4: $ff
	rst  $38                                         ; $76f5: $ff
	rst  $38                                         ; $76f6: $ff
	db   $ed                                         ; $76f7: $ed
	call c, $b9c9                                    ; $76f8: $dc $c9 $b9
	ld   h, a                                        ; $76fb: $67
	ld   b, c                                        ; $76fc: $41
	ld   [hl+], a                                    ; $76fd: $22
	ld   de, $1111                                   ; $76fe: $11 $11 $11
	ld   hl, $5913                                   ; $7701: $21 $13 $59
	ld   a, e                                        ; $7704: $7b
	adc  $dd                                         ; $7705: $ce $dd
	rst  $38                                         ; $7707: $ff
	rst  JumpTable                                         ; $7708: $df
	rst  $38                                         ; $7709: $ff
	rst  $28                                         ; $770a: $ef
	db   $fc                                         ; $770b: $fc
	db   $dd                                         ; $770c: $dd
	db   $db                                         ; $770d: $db
	sbc  d                                           ; $770e: $9a
	ld   [hl], a                                     ; $770f: $77
	ld   [hl], e                                     ; $7710: $73
	ld   [de], a                                     ; $7711: $12
	ld   hl, $2111                                   ; $7712: $21 $11 $21
	inc  de                                          ; $7715: $13
	inc  de                                          ; $7716: $13
	scf                                              ; $7717: $37
	and  a                                           ; $7718: $a7
	cp   l                                           ; $7719: $bd
	db   $fc                                         ; $771a: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $771b: $cf
	db   $ed                                         ; $771c: $ed
	rst  $38                                         ; $771d: $ff
	db   $fd                                         ; $771e: $fd
	rst  $38                                         ; $771f: $ff
	cp   l                                           ; $7720: $bd
	call z, $b6a9                                    ; $7721: $cc $a9 $b6
	halt                                             ; $7724: $76
	ld   [hl+], a                                    ; $7725: $22
	ld   [hl+], a                                    ; $7726: $22
	ld   de, $1111                                   ; $7727: $11 $11 $11
	ld   hl, $a944                                   ; $772a: $21 $44 $a9
	sbc  h                                           ; $772d: $9c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $772e: $cf
	adc  $fd                                         ; $772f: $ce $fd
	rst  $28                                         ; $7731: $ef
	cp   $df                                         ; $7732: $fe $df
	set  1, h                                        ; $7734: $cb $cc
	cp   c                                           ; $7736: $b9
	xor  c                                           ; $7737: $a9
	ld   h, a                                        ; $7738: $67
	ld   b, c                                        ; $7739: $41
	ld   [de], a                                     ; $773a: $12
	ld   hl, $1115                                   ; $773b: $21 $15 $11
	ld   b, c                                        ; $773e: $41
	inc  hl                                          ; $773f: $23
	ld   a, d                                        ; $7740: $7a
	ld   a, l                                        ; $7741: $7d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7742: $cf
	db   $eb                                         ; $7743: $eb
	rst  $38                                         ; $7744: $ff
	sbc  $ff                                         ; $7745: $de $ff
	cp   [hl]                                        ; $7747: $be
	ld   [$cacc], a                                  ; $7748: $ea $cc $ca
	sbc  e                                           ; $774b: $9b
	ld   [hl], a                                     ; $774c: $77
	ld   h, d                                        ; $774d: $62
	ld   [hl+], a                                    ; $774e: $22
	ld   hl, $2111                                   ; $774f: $21 $11 $21
	inc  d                                           ; $7752: $14
	inc  de                                          ; $7753: $13
	ld   e, d                                        ; $7754: $5a
	sbc  c                                           ; $7755: $99
	db   $ed                                         ; $7756: $ed
	db   $fd                                         ; $7757: $fd
	rst  $28                                         ; $7758: $ef
	db   $ed                                         ; $7759: $ed
	rst  $28                                         ; $775a: $ef
	jp   c, $acfc                                    ; $775b: $da $fc $ac

	cp   e                                           ; $775e: $bb
	xor  c                                           ; $775f: $a9
	sub  a                                           ; $7760: $97
	add  e                                           ; $7761: $83
	inc  de                                          ; $7762: $13
	ld   [de], a                                     ; $7763: $12
	ld   de, $1551                                   ; $7764: $11 $51 $15
	ld   [de], a                                     ; $7767: $12
	ld   a, [hl-]                                    ; $7768: $3a
	or   a                                           ; $7769: $b7
	db   $ed                                         ; $776a: $ed
	rst  $28                                         ; $776b: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $776c: $cf
	cp   $df                                         ; $776d: $fe $df
	ld   a, [$abce]                                  ; $776f: $fa $ce $ab
	xor  e                                           ; $7772: $ab
	sbc  c                                           ; $7773: $99
	and  a                                           ; $7774: $a7
	add  [hl]                                        ; $7775: $86
	ld   [de], a                                     ; $7776: $12
	inc  h                                           ; $7777: $24
	ld   de, $1241                                   ; $7778: $11 $41 $12
	ld   d, c                                        ; $777b: $51
	daa                                              ; $777c: $27
	rst  ToBoot                                         ; $777d: $c7
	cp   [hl]                                        ; $777e: $be
	rst  JumpTable                                         ; $777f: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7780: $cf
	cp   $dd                                         ; $7781: $fe $dd
	ei                                               ; $7783: $fb
	sbc  [hl]                                        ; $7784: $9e
	cp   c                                           ; $7785: $b9
	cp   e                                           ; $7786: $bb
	xor  b                                           ; $7787: $a8
	xor  b                                           ; $7788: $a8
	ld   [hl], a                                     ; $7789: $77
	ld   hl, $1125                                   ; $778a: $21 $25 $11
	inc  h                                           ; $778d: $24
	ld   de, $1673                                   ; $778e: $11 $73 $16
	ld   [$ef9f], a                                  ; $7791: $ea $9f $ef
	sbc  $ff                                         ; $7794: $de $ff
	call z, $8cfd                                    ; $7796: $cc $fd $8c
	reti                                             ; $7799: $d9


	sbc  d                                           ; $779a: $9a
	ret                                              ; $779b: $c9


	sbc  c                                           ; $779c: $99
	adc  b                                           ; $779d: $88
	ld   b, c                                        ; $779e: $41
	inc  d                                           ; $779f: $14
	ld   hl, $1117                                   ; $77a0: $21 $17 $11
	ld   h, [hl]                                     ; $77a3: $66
	inc  de                                          ; $77a4: $13
	db   $dd                                         ; $77a5: $dd
	ld   a, [hl]                                     ; $77a6: $7e
	rst  $38                                         ; $77a7: $ff

Call_0f8_77a8:
	db   $fd                                         ; $77a8: $fd
	rst  $38                                         ; $77a9: $ff
	db   $db                                         ; $77aa: $db
	rst  JumpTable                                         ; $77ab: $df
	adc  b                                           ; $77ac: $88
	call z, $ca98                                    ; $77ad: $cc $98 $ca
	ld   a, b                                        ; $77b0: $78
	sbc  d                                           ; $77b1: $9a
	ld   b, c                                        ; $77b2: $41
	inc  hl                                          ; $77b3: $23
	ld   b, c                                        ; $77b4: $41
	rla                                              ; $77b5: $17
	ld   de, $3129                                   ; $77b6: $11 $29 $31
	cp   a                                           ; $77b9: $bf
	ld   a, e                                        ; $77ba: $7b
	rst  $38                                         ; $77bb: $ff
	db   $fd                                         ; $77bc: $fd
	rst  $38                                         ; $77bd: $ff
	db   $ec                                         ; $77be: $ec
	cp   a                                           ; $77bf: $bf
	or   [hl]                                        ; $77c0: $b6
	xor  h                                           ; $77c1: $ac
	or   [hl]                                        ; $77c2: $b6
	cp   l                                           ; $77c3: $bd
	ld   [hl], a                                     ; $77c4: $77
	sbc  e                                           ; $77c5: $9b
	ld   d, c                                        ; $77c6: $51
	ld   [de], a                                     ; $77c7: $12
	ld   d, c                                        ; $77c8: $51
	inc  de                                          ; $77c9: $13
	ld   h, c                                        ; $77ca: $61
	add  hl, de                                      ; $77cb: $19
	ld   [hl], c                                     ; $77cc: $71
	ld   e, a                                        ; $77cd: $5f
	ret  c                                           ; $77ce: $d8

	rst  $38                                         ; $77cf: $ff
	db   $fc                                         ; $77d0: $fc
	rst  $38                                         ; $77d1: $ff
	db   $ec                                         ; $77d2: $ec
	sbc  [hl]                                        ; $77d3: $9e
	rst  $10                                         ; $77d4: $d7
	ld   a, e                                        ; $77d5: $7b
	sub  $7d                                         ; $77d6: $d6 $7d
	or   [hl]                                        ; $77d8: $b6
	ld   a, e                                        ; $77d9: $7b
	sub  c                                           ; $77da: $91
	ld   [de], a                                     ; $77db: $12
	ld   h, c                                        ; $77dc: $61
	ld   de, $17c1                                   ; $77dd: $11 $c1 $17
	jp   nz, $f81f                                   ; $77e0: $c2 $1f $f8

	rst  $28                                         ; $77e3: $ef
	db   $fc                                         ; $77e4: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77e5: $cf
	rst  $38                                         ; $77e6: $ff
	ld   l, d                                        ; $77e7: $6a
	ld   hl, sp+$47                                  ; $77e8: $f8 $47
	ld   a, [$d83b]                                  ; $77ea: $fa $3b $d8
	ld   a, [hl-]                                    ; $77ed: $3a
	pop  bc                                          ; $77ee: $c1
	ld   de, $1192                                   ; $77ef: $11 $92 $11
	pop  hl                                          ; $77f2: $e1
	rla                                              ; $77f3: $17
	di                                               ; $77f4: $f3
	rra                                              ; $77f5: $1f
	db   $fc                                         ; $77f6: $fc

jr_0f8_77f7:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77f7: $cf
	db   $fd                                         ; $77f8: $fd
	cp   h                                           ; $77f9: $bc
	rst  $38                                         ; $77fa: $ff
	jr   z, jr_0f8_77f7                              ; $77fb: $28 $fa

	inc  h                                           ; $77fd: $24
	ei                                               ; $77fe: $fb
	add  hl, hl                                      ; $77ff: $29
	db   $eb                                         ; $7800: $eb
	add  hl, hl                                      ; $7801: $29
	or   c                                           ; $7802: $b1
	ld   de, $19e1                                   ; $7803: $11 $e1 $19
	sub  c                                           ; $7806: $91
	ld   d, $f1                                      ; $7807: $16 $f1
	ld   e, a                                        ; $7809: $5f
	rst  $28                                         ; $780a: $ef
	cp   a                                           ; $780b: $bf
	rst  $38                                         ; $780c: $ff
	push de                                          ; $780d: $d5
	rst  $38                                         ; $780e: $ff
	ld   h, $ce                                      ; $780f: $26 $ce
	inc  d                                           ; $7811: $14
	ei                                               ; $7812: $fb
	ld   h, a                                        ; $7813: $67
	ei                                               ; $7814: $fb
	ld   e, e                                        ; $7815: $5b
	ld   b, d                                        ; $7816: $42
	inc  de                                          ; $7817: $13
	pop  bc                                          ; $7818: $c1
	ld   e, $11                                      ; $7819: $1e $11
	inc  e                                           ; $781b: $1c
	and  c                                           ; $781c: $a1
	rst  $38                                         ; $781d: $ff
	rst  JumpTable                                         ; $781e: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $781f: $cf
	rst  $28                                         ; $7820: $ef
	or   [hl]                                        ; $7821: $b6
	ld   a, [$da45]                                  ; $7822: $fa $45 $da
	dec  de                                          ; $7825: $1b
	ld   [$f77a], a                                  ; $7826: $ea $7a $f7
	xor  b                                           ; $7829: $a8
	ld   de, $111e                                   ; $782a: $11 $1e $11
	rst  $10                                         ; $782d: $d7
	ld   de, $19af                                   ; $782e: $11 $af $19
	db   $fd                                         ; $7831: $fd
	db   $fd                                         ; $7832: $fd
	rst  $38                                         ; $7833: $ff
	rst  $38                                         ; $7834: $ff
	ld   e, $f5                                      ; $7835: $1e $f5
	ld   d, $f2                                      ; $7837: $16 $f2
	ld   e, $d9                                      ; $7839: $1e $d9
	ld   a, [hl]                                     ; $783b: $7e
	cp   d                                           ; $783c: $ba
	pop  de                                          ; $783d: $d1
	ld   de, $11a8                                   ; $783e: $11 $a8 $11
	pop  af                                          ; $7841: $f1
	ld   de, $1ff9                                   ; $7842: $11 $f9 $1f
	rst  $38                                         ; $7845: $ff
	cp   $fe                                         ; $7846: $fe $fe
	rst  $30                                         ; $7848: $f7
	ccf                                              ; $7849: $3f
	db   $d3                                         ; $784a: $d3
	inc  e                                           ; $784b: $1c
	pop  bc                                          ; $784c: $c1
	ld   a, l                                        ; $784d: $7d
	add  sp, -$33                                    ; $784e: $e8 $cd
	sbc  a                                           ; $7850: $9f
	ld   h, c                                        ; $7851: $61
	dec  d                                           ; $7852: $15
	pop  af                                          ; $7853: $f1
	inc  e                                           ; $7854: $1c
	and  c                                           ; $7855: $a1
	ld   a, [de]                                     ; $7856: $1a
	db   $f4                                         ; $7857: $f4
	xor  a                                           ; $7858: $af
	rst  $38                                         ; $7859: $ff
	db   $fc                                         ; $785a: $fc
	sbc  a                                           ; $785b: $9f
	pop  af                                          ; $785c: $f1
	ld   e, l                                        ; $785d: $5d
	pop  hl                                          ; $785e: $e1
	inc  e                                           ; $785f: $1c
	ld   [hl], a                                     ; $7860: $77
	sbc  e                                           ; $7861: $9b
	cp   [hl]                                        ; $7862: $be
	or   $bf                                         ; $7863: $f6 $bf
	ld   d, c                                        ; $7865: $51
	rra                                              ; $7866: $1f
	and  c                                           ; $7867: $a1
	dec  e                                           ; $7868: $1d
	ld   b, c                                        ; $7869: $41
	inc  e                                           ; $786a: $1c
	db   $db                                         ; $786b: $db
	ei                                               ; $786c: $fb
	rst  $38                                         ; $786d: $ff
	ld   sp, hl                                      ; $786e: $f9
	ld   a, a                                        ; $786f: $7f
	ldh  a, [c]                                      ; $7870: $f2
	ld   a, [hl-]                                    ; $7871: $3a
	or   c                                           ; $7872: $b1
	ld   b, l                                        ; $7873: $45
	ld   e, l                                        ; $7874: $5d
	rst  $10                                         ; $7875: $d7
	ld   a, a                                        ; $7876: $7f
	or   $aa                                         ; $7877: $f6 $aa
	ld   b, c                                        ; $7879: $41
	rra                                              ; $787a: $1f
	ld   de, $1157                                   ; $787b: $11 $57 $11
	xor  l                                           ; $787e: $ad
	ld   l, a                                        ; $787f: $6f
	db   $fd                                         ; $7880: $fd
	rst  $38                                         ; $7881: $ff
	db   $f4                                         ; $7882: $f4
	rst  $38                                         ; $7883: $ff
	add  h                                           ; $7884: $84
	ld   e, e                                        ; $7885: $5b
	inc  d                                           ; $7886: $14
	sub  d                                           ; $7887: $92
	ld   l, [hl]                                     ; $7888: $6e
	or   $9f                                         ; $7889: $f6 $9f
	jp   z, $1185                                    ; $788b: $ca $85 $11

	rst  ToBoot                                         ; $788e: $c7
	ld   de, $11b5                                   ; $788f: $11 $b5 $11
	jp   c, $ddcf                                    ; $7892: $da $cf $dd

	rst  $38                                         ; $7895: $ff
	call nc, $82ff                                   ; $7896: $d4 $ff $82
	halt                                             ; $7899: $76
	add  hl, hl                                      ; $789a: $29
	ld   [hl], d                                     ; $789b: $72
	adc  a                                           ; $789c: $8f
	push af                                          ; $789d: $f5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $789e: $cf
	ret                                              ; $789f: $c9


	ld   [hl], e                                     ; $78a0: $73
	ld   de, $11e3                                   ; $78a1: $11 $e3 $11
	push bc                                          ; $78a4: $c5
	inc  de                                          ; $78a5: $13
	xor  b                                           ; $78a6: $a8
	rst  $38                                         ; $78a7: $ff
	cp   c                                           ; $78a8: $b9
	rst  $38                                         ; $78a9: $ff
	push de                                          ; $78aa: $d5
	call c, $83a7                                    ; $78ab: $dc $a7 $83
	dec  l                                           ; $78ae: $2d
	or   l                                           ; $78af: $b5
	ld   l, [hl]                                     ; $78b0: $6e
	ld   [$79cb], a                                  ; $78b1: $ea $cb $79
	and  e                                           ; $78b4: $a3
	ld   de, $11d8                                   ; $78b5: $11 $d8 $11
	ld   h, [hl]                                     ; $78b8: $66

Call_0f8_78b9:
	ld   e, b                                        ; $78b9: $58
	ld   [hl], d                                     ; $78ba: $72
	sbc  a                                           ; $78bb: $9f
	rst  ToBoot                                         ; $78bc: $c7
	ld   a, l                                        ; $78bd: $7d
	jp   z, Jump_0f8_69b7                            ; $78be: $ca $b7 $69

	db   $eb                                         ; $78c1: $eb
	ld   l, e                                        ; $78c2: $6b
	cp   d                                           ; $78c3: $ba
	cp   h                                           ; $78c4: $bc
	or   a                                           ; $78c5: $b7
	cp   h                                           ; $78c6: $bc
	xor  c                                           ; $78c7: $a9
	xor  c                                           ; $78c8: $a9
	ld   l, b                                        ; $78c9: $68
	sbc  b                                           ; $78ca: $98
	ld   b, e                                        ; $78cb: $43
	ld   d, h                                        ; $78cc: $54
	inc  [hl]                                        ; $78cd: $34
	ld   b, h                                        ; $78ce: $44
	dec  h                                           ; $78cf: $25
	ld   h, [hl]                                     ; $78d0: $66
	ld   h, [hl]                                     ; $78d1: $66
	ld   h, [hl]                                     ; $78d2: $66
	adc  d                                           ; $78d3: $8a
	sbc  b                                           ; $78d4: $98
	sbc  d                                           ; $78d5: $9a
	cp   e                                           ; $78d6: $bb
	res  5, h                                        ; $78d7: $cb $ac
	db   $eb                                         ; $78d9: $eb
	xor  h                                           ; $78da: $ac
	call z, $b9bd                                    ; $78db: $cc $bd $b9
	sbc  c                                           ; $78de: $99
	ld   [hl], a                                     ; $78df: $77
	ld   h, e                                        ; $78e0: $63
	ld   [hl+], a                                    ; $78e1: $22
	inc  sp                                          ; $78e2: $33
	ld   [hl-], a                                    ; $78e3: $32
	inc  hl                                          ; $78e4: $23
	ld   d, [hl]                                     ; $78e5: $56
	ld   h, l                                        ; $78e6: $65
	ld   h, [hl]                                     ; $78e7: $66
	ld   a, c                                        ; $78e8: $79
	xor  c                                           ; $78e9: $a9
	sbc  c                                           ; $78ea: $99
	cp   e                                           ; $78eb: $bb
	cp   h                                           ; $78ec: $bc
	call z, $dced                                    ; $78ed: $cc $ed $dc
	call z, $badc                                    ; $78f0: $cc $dc $ba
	sub  a                                           ; $78f3: $97
	sbc  b                                           ; $78f4: $98
	ld   d, d                                        ; $78f5: $52
	ld   [de], a                                     ; $78f6: $12
	inc  hl                                          ; $78f7: $23
	ld   [hl-], a                                    ; $78f8: $32
	ld   [de], a                                     ; $78f9: $12
	ld   d, [hl]                                     ; $78fa: $56
	ld   h, [hl]                                     ; $78fb: $66
	ld   d, [hl]                                     ; $78fc: $56
	ld   a, c                                        ; $78fd: $79
	xor  c                                           ; $78fe: $a9
	adc  c                                           ; $78ff: $89
	cp   h                                           ; $7900: $bc
	db   $dd                                         ; $7901: $dd
	call $fcff                                       ; $7902: $cd $ff $fc
	cp   l                                           ; $7905: $bd
	db   $dd                                         ; $7906: $dd
	and  [hl]                                        ; $7907: $a6
	ld   [hl-], a                                    ; $7908: $32
	ld   a, d                                        ; $7909: $7a
	ld   d, c                                        ; $790a: $51
	ld   de, $4124                                   ; $790b: $11 $24 $41
	inc  d                                           ; $790e: $14
	call z, $ad76                                    ; $790f: $cc $76 $ad
	db   $dd                                         ; $7912: $dd
	sub  a                                           ; $7913: $97
	xor  a                                           ; $7914: $af
	rst  $10                                         ; $7915: $d7
	ld   a, e                                        ; $7916: $7b
	rst  $28                                         ; $7917: $ef
	ld   [$e98e], a                                  ; $7918: $ea $8e $e9
	ld   d, [hl]                                     ; $791b: $56
	ld   h, c                                        ; $791c: $61
	ld   de, $11c2                                   ; $791d: $11 $c2 $11
	ld   d, [hl]                                     ; $7920: $56
	adc  h                                           ; $7921: $8c
	add  d                                           ; $7922: $82
	rst  $38                                         ; $7923: $ff
	or   $af                                         ; $7924: $f6 $af
	cp   d                                           ; $7926: $ba
	sub  e                                           ; $7927: $93
	rla                                              ; $7928: $17
	call nc, $ff19                                   ; $7929: $d4 $19 $ff
	rst  $28                                         ; $792c: $ef
	set  7, a                                        ; $792d: $cb $ff
	ld   d, c                                        ; $792f: $51
	ld   sp, $e111                                   ; $7930: $31 $11 $e1
	ld   de, $8fc9                                   ; $7933: $11 $c9 $8f
	rst  $20                                         ; $7936: $e7
	rst  $38                                         ; $7937: $ff
	push af                                          ; $7938: $f5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7939: $cf
	add  h                                           ; $793a: $84
	ld   d, c                                        ; $793b: $51
	inc  d                                           ; $793c: $14
	or   c                                           ; $793d: $b1
	inc  e                                           ; $793e: $1c
	rst  $38                                         ; $793f: $ff
	rst  $38                                         ; $7940: $ff
	db   $fc                                         ; $7941: $fc
	rst  $38                                         ; $7942: $ff
	ld   h, c                                        ; $7943: $61
	ld   de, $a115                                   ; $7944: $11 $15 $a1
	ld   d, $f9                                      ; $7947: $16 $f9
	cp   a                                           ; $7949: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $794a: $cf
	rst  $38                                         ; $794b: $ff
	or   h                                           ; $794c: $b4
	rst  $38                                         ; $794d: $ff
	ld   d, d                                        ; $794e: $52
	ld   de, $6117                                   ; $794f: $11 $17 $61
	cpl                                              ; $7952: $2f
	rst  $38                                         ; $7953: $ff
	rst  $38                                         ; $7954: $ff
	rst  $38                                         ; $7955: $ff
	cp   $11                                         ; $7956: $fe $11
	ld   de, $111c                                   ; $7958: $11 $1c $11
	rra                                              ; $795b: $1f
	call c, $fffe                                    ; $795c: $dc $fe $ff
	db   $fd                                         ; $795f: $fd
	ld   a, $f6                                      ; $7960: $3e $f6
	ld   de, $4511                                   ; $7962: $11 $11 $45
	inc  de                                          ; $7965: $13
	rst  $38                                         ; $7966: $ff
	rst  $38                                         ; $7967: $ff
	rst  $38                                         ; $7968: $ff
	rst  $38                                         ; $7969: $ff
	or   c                                           ; $796a: $b1
	ld   de, $f111                                   ; $796b: $11 $11 $f1
	ld   d, $ff                                      ; $796e: $16 $ff
	rst  $38                                         ; $7970: $ff
	rst  $38                                         ; $7971: $ff
	rst  $38                                         ; $7972: $ff
	ld   [hl], c                                     ; $7973: $71
	cp   l                                           ; $7974: $bd
	ld   de, $1511                                   ; $7975: $11 $11 $15
	ld   [hl], c                                     ; $7978: $71
	xor  a                                           ; $7979: $af
	rst  $38                                         ; $797a: $ff
	rst  $38                                         ; $797b: $ff
	rst  $38                                         ; $797c: $ff
	ldh  a, [c]                                      ; $797d: $f2
	ld   de, $7911                                   ; $797e: $11 $11 $79
	ld   de, $ffff                                   ; $7981: $11 $ff $ff
	rst  $38                                         ; $7984: $ff
	rst  $38                                         ; $7985: $ff
	pop  af                                          ; $7986: $f1
	ld   de, $1111                                   ; $7987: $11 $11 $11
	ld   [de], a                                     ; $798a: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $798b: $cf
	rst  JumpTable                                         ; $798c: $df
	rst  $38                                         ; $798d: $ff
	rst  $38                                         ; $798e: $ff
	ld   a, [$1182]                                  ; $798f: $fa $82 $11
	ld   de, $111f                                   ; $7992: $11 $1f $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7995: $cf
	rst  $38                                         ; $7996: $ff

Call_0f8_7997:
	rst  $38                                         ; $7997: $ff
	rst  $38                                         ; $7998: $ff
	pop  af                                          ; $7999: $f1
	ld   de, $1111                                   ; $799a: $11 $11 $11
	ld   de, $ffff                                   ; $799d: $11 $ff $ff
	rst  $38                                         ; $79a0: $ff
	rst  $38                                         ; $79a1: $ff
	push af                                          ; $79a2: $f5
	ld   de, $1111                                   ; $79a3: $11 $11 $11
	ld   de, $1ff1                                   ; $79a6: $11 $f1 $1f
	rst  $38                                         ; $79a9: $ff
	rst  $38                                         ; $79aa: $ff
	call c, $11fa                                    ; $79ab: $dc $fa $11
	ld   de, $1111                                   ; $79ae: $11 $11 $11
	rst  $38                                         ; $79b1: $ff
	rst  $38                                         ; $79b2: $ff
	rst  $38                                         ; $79b3: $ff
	rst  $38                                         ; $79b4: $ff
	pop  bc                                          ; $79b5: $c1
	ld   de, $1111                                   ; $79b6: $11 $11 $11
	ld   de, $36ff                                   ; $79b9: $11 $ff $36
	rst  $38                                         ; $79bc: $ff
	rst  $38                                         ; $79bd: $ff
	pop  bc                                          ; $79be: $c1
	ld   a, [de]                                     ; $79bf: $1a
	ld   de, $3511                                   ; $79c0: $11 $11 $35
	add  hl, sp                                      ; $79c3: $39
	rst  $38                                         ; $79c4: $ff
	rst  $38                                         ; $79c5: $ff
	rst  $38                                         ; $79c6: $ff
	rst  $38                                         ; $79c7: $ff
	pop  bc                                          ; $79c8: $c1
	ld   de, $1111                                   ; $79c9: $11 $11 $11
	ld   de, $f1ff                                   ; $79cc: $11 $ff $f1
	rst  $38                                         ; $79cf: $ff
	rst  $38                                         ; $79d0: $ff
	pop  af                                          ; $79d1: $f1
	ld   de, $1191                                   ; $79d2: $11 $91 $11
	rra                                              ; $79d5: $1f
	rst  $38                                         ; $79d6: $ff
	rst  $38                                         ; $79d7: $ff
	rst  $38                                         ; $79d8: $ff
	db   $fc                                         ; $79d9: $fc
	xor  l                                           ; $79da: $ad
	or   e                                           ; $79db: $b3
	ld   de, $1111                                   ; $79dc: $11 $11 $11
	ld   de, $f17f                                   ; $79df: $11 $7f $f1
	ld   l, a                                        ; $79e2: $6f
	rst  $38                                         ; $79e3: $ff
	pop  af                                          ; $79e4: $f1
	ld   de, $11c7                                   ; $79e5: $11 $c7 $11
	rra                                              ; $79e8: $1f
	rst  $38                                         ; $79e9: $ff
	cp   $ff                                         ; $79ea: $fe $ff
	rst  $38                                         ; $79ec: $ff
	sbc  b                                           ; $79ed: $98
	sub  a                                           ; $79ee: $97
	ld   hl, $1211                                   ; $79ef: $21 $11 $12
	ld   de, $f81f                                   ; $79f2: $11 $1f $f8
	rra                                              ; $79f5: $1f
	rst  $38                                         ; $79f6: $ff
	or   $11                                         ; $79f7: $f6 $11
	adc  [hl]                                        ; $79f9: $8e
	ld   de, $ff19                                   ; $79fa: $11 $19 $ff
	db   $fd                                         ; $79fd: $fd
	rst  $38                                         ; $79fe: $ff
	rst  $38                                         ; $79ff: $ff
	rst  ToBoot                                         ; $7a00: $c7
	adc  c                                           ; $7a01: $89
	ld   h, c                                        ; $7a02: $61
	ld   de, $1111                                   ; $7a03: $11 $11 $11
	rra                                              ; $7a06: $1f
	cp   $1f                                         ; $7a07: $fe $1f
	rst  $38                                         ; $7a09: $ff
	cp   $11                                         ; $7a0a: $fe $11
	dec  l                                           ; $7a0c: $2d
	ld   hl, $cf14                                   ; $7a0d: $21 $14 $cf
	rst  $38                                         ; $7a10: $ff
	rst  JumpTable                                         ; $7a11: $df
	rst  $38                                         ; $7a12: $ff
	rst  $30                                         ; $7a13: $f7
	ld   b, h                                        ; $7a14: $44
	ld   d, d                                        ; $7a15: $52
	ld   de, $1111                                   ; $7a16: $11 $11 $11
	rra                                              ; $7a19: $1f
	db   $fd                                         ; $7a1a: $fd
	ld   e, a                                        ; $7a1b: $5f
	rst  $38                                         ; $7a1c: $ff
	cp   $11                                         ; $7a1d: $fe $11
	inc  e                                           ; $7a1f: $1c
	ld   b, c                                        ; $7a20: $41
	ld   d, $cf                                      ; $7a21: $16 $cf
	rst  $38                                         ; $7a23: $ff
	rst  JumpTable                                         ; $7a24: $df
	rst  $38                                         ; $7a25: $ff
	rst  $30                                         ; $7a26: $f7
	ld   b, e                                        ; $7a27: $43
	ld   [hl-], a                                    ; $7a28: $32
	ld   de, $1111                                   ; $7a29: $11 $11 $11
	rra                                              ; $7a2c: $1f
	db   $fd                                         ; $7a2d: $fd
	cpl                                              ; $7a2e: $2f
	rst  $38                                         ; $7a2f: $ff
	rst  $38                                         ; $7a30: $ff
	ld   de, $611b                                   ; $7a31: $11 $1b $61
	dec  d                                           ; $7a34: $15
	cp   a                                           ; $7a35: $bf
	rst  $38                                         ; $7a36: $ff
	rst  JumpTable                                         ; $7a37: $df
	rst  $38                                         ; $7a38: $ff
	ld   hl, sp+$43                                  ; $7a39: $f8 $43
	ld   b, e                                        ; $7a3b: $43
	ld   de, $1111                                   ; $7a3c: $11 $11 $11
	rra                                              ; $7a3f: $1f
	ldh  a, [c]                                      ; $7a40: $f2
	ld   l, a                                        ; $7a41: $6f
	rst  $38                                         ; $7a42: $ff
	cp   $11                                         ; $7a43: $fe $11
	dec  a                                           ; $7a45: $3d
	ld   de, $bf16                                   ; $7a46: $11 $16 $bf
	rst  $38                                         ; $7a49: $ff
	rst  JumpTable                                         ; $7a4a: $df
	rst  $38                                         ; $7a4b: $ff
	rst  $30                                         ; $7a4c: $f7
	ld   b, c                                        ; $7a4d: $41
	ld   de, $1111                                   ; $7a4e: $11 $11 $11
	ld   de, $f1cf                                   ; $7a51: $11 $cf $f1

Jump_0f8_7a54:
	rst  $38                                         ; $7a54: $ff
	rst  $38                                         ; $7a55: $ff
	pop  af                                          ; $7a56: $f1
	ld   de, $117a                                   ; $7a57: $11 $7a $11
	dec  de                                          ; $7a5a: $1b
	rst  $38                                         ; $7a5b: $ff
	rst  $38                                         ; $7a5c: $ff
	rst  $38                                         ; $7a5d: $ff
	rst  $38                                         ; $7a5e: $ff
	push de                                          ; $7a5f: $d5
	ld   b, c                                        ; $7a60: $41
	ld   de, $1111                                   ; $7a61: $11 $11 $11
	ld   de, $f4ff                                   ; $7a64: $11 $ff $f4
	rst  $38                                         ; $7a67: $ff
	rst  $38                                         ; $7a68: $ff
	pop  af                                          ; $7a69: $f1
	ld   de, $1178                                   ; $7a6a: $11 $78 $11
	dec  e                                           ; $7a6d: $1d
	rst  $38                                         ; $7a6e: $ff
	rst  $38                                         ; $7a6f: $ff
	rst  $38                                         ; $7a70: $ff
	rst  $38                                         ; $7a71: $ff
	call nz, $1111                                   ; $7a72: $c4 $11 $11
	ld   de, $1a11                                   ; $7a75: $11 $11 $1a
	rst  $38                                         ; $7a78: $ff
	rra                                              ; $7a79: $1f
	rst  $38                                         ; $7a7a: $ff
	rst  $38                                         ; $7a7b: $ff
	ld   de, $c115                                   ; $7a7c: $11 $15 $c1
	ld   de, $ff5f                                   ; $7a7f: $11 $5f $ff
	cp   $ff                                         ; $7a82: $fe $ff
	rst  $38                                         ; $7a84: $ff
	ld   h, c                                        ; $7a85: $61
	ld   de, $1111                                   ; $7a86: $11 $11 $11
	ld   de, $f15f                                   ; $7a89: $11 $5f $f1
	rst  JumpTable                                         ; $7a8c: $df
	rst  $38                                         ; $7a8d: $ff
	ldh  a, [c]                                      ; $7a8e: $f2
	ld   de, $112b                                   ; $7a8f: $11 $2b $11
	ld   de, $ffff                                   ; $7a92: $11 $ff $ff
	rst  $38                                         ; $7a95: $ff

Call_0f8_7a96:
	rst  $38                                         ; $7a96: $ff
	ld   sp, hl                                      ; $7a97: $f9
	ld   de, $1111                                   ; $7a98: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7a9b: $11 $11 $ff
	add  hl, hl                                      ; $7a9e: $29
	rst  $38                                         ; $7a9f: $ff
	rst  $38                                         ; $7aa0: $ff
	or   c                                           ; $7aa1: $b1
	ld   de, $1181                                   ; $7aa2: $11 $81 $11
	dec  de                                          ; $7aa5: $1b
	rst  $38                                         ; $7aa6: $ff
	rst  $38                                         ; $7aa7: $ff
	rst  $38                                         ; $7aa8: $ff
	rst  $38                                         ; $7aa9: $ff
	pop  de                                          ; $7aaa: $d1
	ld   de, $1111                                   ; $7aab: $11 $11 $11
	ld   de, $f11f                                   ; $7aae: $11 $1f $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ab1: $cf
	rst  $38                                         ; $7ab2: $ff
	ld   a, [$1711]                                  ; $7ab3: $fa $11 $17
	ld   de, $7f11                                   ; $7ab6: $11 $11 $7f
	rst  $38                                         ; $7ab9: $ff
	rst  $38                                         ; $7aba: $ff
	rst  $38                                         ; $7abb: $ff
	cp   $11                                         ; $7abc: $fe $11
	ld   de, $1111                                   ; $7abe: $11 $11 $11
	rra                                              ; $7ac1: $1f
	rst  $38                                         ; $7ac2: $ff
	rra                                              ; $7ac3: $1f
	rst  $38                                         ; $7ac4: $ff
	rst  $38                                         ; $7ac5: $ff
	ld   de, $6114                                   ; $7ac6: $11 $14 $61
	ld   de, $ff19                                   ; $7ac9: $11 $19 $ff
	rst  $38                                         ; $7acc: $ff
	rst  $38                                         ; $7acd: $ff
	rst  $38                                         ; $7ace: $ff
	or   c                                           ; $7acf: $b1
	ld   de, $1111                                   ; $7ad0: $11 $11 $11
	ld   de, $1eff                                   ; $7ad3: $11 $ff $1e
	rst  $38                                         ; $7ad6: $ff
	rst  $38                                         ; $7ad7: $ff
	pop  af                                          ; $7ad8: $f1
	ld   de, $1151                                   ; $7ad9: $11 $51 $11
	ld   de, $ffcf                                   ; $7adc: $11 $cf $ff
	rst  $38                                         ; $7adf: $ff
	rst  $38                                         ; $7ae0: $ff
	ld   a, [$1111]                                  ; $7ae1: $fa $11 $11
	ld   de, rAUD1LEN                                   ; $7ae4: $11 $11 $ff
	ld   h, l                                        ; $7ae7: $65
	rst  $38                                         ; $7ae8: $ff
	rst  $38                                         ; $7ae9: $ff
	push af                                          ; $7aea: $f5
	inc  de                                          ; $7aeb: $13
	ld   d, d                                        ; $7aec: $52
	ld   de, $1d11                                   ; $7aed: $11 $11 $1d
	rst  $38                                         ; $7af0: $ff
	rst  $38                                         ; $7af1: $ff
	rst  $38                                         ; $7af2: $ff
	rst  $38                                         ; $7af3: $ff
	sub  c                                           ; $7af4: $91
	ld   de, $1111                                   ; $7af5: $11 $11 $11
	cpl                                              ; $7af8: $2f
	ld   h, c                                        ; $7af9: $61
	cp   a                                           ; $7afa: $bf
	rst  $38                                         ; $7afb: $ff
	rst  $38                                         ; $7afc: $ff
	scf                                              ; $7afd: $37
	jp   z, $1181                                    ; $7afe: $ca $81 $11

	dec  d                                           ; $7b01: $15
	or   a                                           ; $7b02: $b7
	adc  [hl]                                        ; $7b03: $8e
	rst  $38                                         ; $7b04: $ff
	rst  $38                                         ; $7b05: $ff
	rst  $30                                         ; $7b06: $f7
	inc  sp                                          ; $7b07: $33
	ld   d, c                                        ; $7b08: $51
	ld   de, $711f                                   ; $7b09: $11 $1f $71
	ld   d, $ff                                      ; $7b0c: $16 $ff
	rst  $38                                         ; $7b0e: $ff
	adc  c                                           ; $7b0f: $89
	cp   h                                           ; $7b10: $bc
	sbc  $51                                         ; $7b11: $de $51
	dec  d                                           ; $7b13: $15
	jp   z, Jump_0f8_7d65                            ; $7b14: $ca $65 $7d

	cp   $a8                                         ; $7b17: $fe $a8
	sbc  c                                           ; $7b19: $99
	ld   [hl], l                                     ; $7b1a: $75

jr_0f8_7b1b:
	ld   [hl-], a                                    ; $7b1b: $32
	adc  h                                           ; $7b1c: $8c
	ld   [hl], c                                     ; $7b1d: $71
	dec  d                                           ; $7b1e: $15
	sbc  d                                           ; $7b1f: $9a
	jp   z, $8a55                                    ; $7b20: $ca $55 $8a

	xor  d                                           ; $7b23: $aa
	and  l                                           ; $7b24: $a5
	ld   [hl], $ac                                   ; $7b25: $36 $ac
	sbc  c                                           ; $7b27: $99
	ld   a, d                                        ; $7b28: $7a
	sbc  $ca                                         ; $7b29: $de $ca
	xor  d                                           ; $7b2b: $aa
	xor  d                                           ; $7b2c: $aa
	sub  [hl]                                        ; $7b2d: $96
	ld   e, b                                        ; $7b2e: $58
	and  l                                           ; $7b2f: $a5
	ld   [hl+], a                                    ; $7b30: $22
	ld   b, l                                        ; $7b31: $45
	ld   e, c                                        ; $7b32: $59
	ld   [hl], h                                     ; $7b33: $74
	ld   b, [hl]                                     ; $7b34: $46
	adc  c                                           ; $7b35: $89
	cp   d                                           ; $7b36: $ba
	ld   h, l                                        ; $7b37: $65
	ld   a, d                                        ; $7b38: $7a
	res  5, c                                        ; $7b39: $cb $a9
	sbc  h                                           ; $7b3b: $9c
	db   $ed                                         ; $7b3c: $ed
	cp   d                                           ; $7b3d: $ba
	xor  e                                           ; $7b3e: $ab
	xor  d                                           ; $7b3f: $aa
	ld   [hl], l                                     ; $7b40: $75
	sbc  e                                           ; $7b41: $9b
	ld   d, d                                        ; $7b42: $52
	inc  de                                          ; $7b43: $13
	ld   b, h                                        ; $7b44: $44
	ld   [hl], a                                     ; $7b45: $77
	ld   [hl-], a                                    ; $7b46: $32
	ld   e, b                                        ; $7b47: $58
	sbc  e                                           ; $7b48: $9b
	or   a                                           ; $7b49: $b7
	ld   b, [hl]                                     ; $7b4a: $46
	cp   [hl]                                        ; $7b4b: $be
	cp   c                                           ; $7b4c: $b9
	sbc  c                                           ; $7b4d: $99
	adc  $e9                                         ; $7b4e: $ce $e9
	sbc  c                                           ; $7b50: $99
	xor  e                                           ; $7b51: $ab
	and  l                                           ; $7b52: $a5
	jr   c, jr_0f8_7b1b                              ; $7b53: $38 $c6

	ld   bc, $6924                                   ; $7b55: $01 $24 $69
	add  e                                           ; $7b58: $83
	ld   h, $bc                                      ; $7b59: $26 $bc
	cp   h                                           ; $7b5b: $bc
	ld   [hl], d                                     ; $7b5c: $72
	ld   e, l                                        ; $7b5d: $5d
	ld   a, [$9e77]                                  ; $7b5e: $fa $77 $9e
	db   $fc                                         ; $7b61: $fc
	halt                                             ; $7b62: $76
	ld   l, c                                        ; $7b63: $69
	sub  [hl]                                        ; $7b64: $96
	ld   de, $51ce                                   ; $7b65: $11 $ce $51
	dec  d                                           ; $7b68: $15
	ld   a, d                                        ; $7b69: $7a
	ld   a, [$af23]                                  ; $7b6a: $fa $23 $af
	call c, $28a4                                    ; $7b6d: $dc $a4 $28
	db   $fd                                         ; $7b70: $fd
	halt                                             ; $7b71: $76
	ld   a, e                                        ; $7b72: $7b
	rst  $38                                         ; $7b73: $ff
	or   l                                           ; $7b74: $b5

Call_0f8_7b75:
	ld   b, h                                        ; $7b75: $44
	ld   b, l                                        ; $7b76: $45
	ld   de, $b14f                                   ; $7b77: $11 $4f $b1
	inc  d                                           ; $7b7a: $14
	xor  l                                           ; $7b7b: $ad
	rst  $38                                         ; $7b7c: $ff
	ld   [hl], c                                     ; $7b7d: $71
	sbc  a                                           ; $7b7e: $9f
	db   $fc                                         ; $7b7f: $fc
	sub  d                                           ; $7b80: $92
	inc  de                                          ; $7b81: $13
	adc  $96                                         ; $7b82: $ce $96
	ld   l, c                                        ; $7b84: $69
	rst  $38                                         ; $7b85: $ff
	rst  $20                                         ; $7b86: $e7
	ld   b, d                                        ; $7b87: $42
	ld   de, $4f11                                   ; $7b88: $11 $11 $4f
	ld   [hl], c                                     ; $7b8b: $71
	ld   d, $df                                      ; $7b8c: $16 $df
	rst  $38                                         ; $7b8e: $ff
	sub  l                                           ; $7b8f: $95
	rst  $28                                         ; $7b90: $ef
	ei                                               ; $7b91: $fb
	ld   h, c                                        ; $7b92: $61
	ld   de, $97ab                                   ; $7b93: $11 $ab $97
	ld   a, e                                        ; $7b96: $7b
	rst  $38                                         ; $7b97: $ff
	ld   a, [$1151]                                  ; $7b98: $fa $51 $11
	ld   de, $11ce                                   ; $7b9b: $11 $ce $11
	add  hl, de                                      ; $7b9e: $19
	rst  $38                                         ; $7b9f: $ff
	rst  $38                                         ; $7ba0: $ff
	ld   e, c                                        ; $7ba1: $59
	rst  $38                                         ; $7ba2: $ff
	ei                                               ; $7ba3: $fb
	ld   de, $9b13                                   ; $7ba4: $11 $13 $9b
	cp   b                                           ; $7ba7: $b8
	adc  [hl]                                        ; $7ba8: $8e
	rst  $38                                         ; $7ba9: $ff
	db   $fc                                         ; $7baa: $fc
	ld   b, c                                        ; $7bab: $41
	ld   de, $f614                                   ; $7bac: $11 $14 $f6
	ld   de, $ff1e                                   ; $7baf: $11 $1e $ff
	ld   hl, sp+$5e                                  ; $7bb2: $f8 $5e
	rst  $38                                         ; $7bb4: $ff
	or   $11                                         ; $7bb5: $f6 $11
	ld   d, $ce                                      ; $7bb7: $16 $ce
	reti                                             ; $7bb9: $d9


	xor  a                                           ; $7bba: $af
	rst  $38                                         ; $7bbb: $ff
	ld   a, [$1111]                                  ; $7bbc: $fa $11 $11
	rrca                                             ; $7bbf: $0f
	and  c                                           ; $7bc0: $a1
	ld   de, $ffcf                                   ; $7bc1: $11 $cf $ff
	push bc                                          ; $7bc4: $c5
	xor  a                                           ; $7bc5: $af
	rst  $38                                         ; $7bc6: $ff
	or   c                                           ; $7bc7: $b1
	ld   de, $ff1a                                   ; $7bc8: $11 $1a $ff
	db   $ec                                         ; $7bcb: $ec
	rst  JumpTable                                         ; $7bcc: $df
	rst  $38                                         ; $7bcd: $ff
	ldh  [c], a                                      ; $7bce: $e2
	ld   de, $fd11                                   ; $7bcf: $11 $11 $fd
	ld   de, $ff19                                   ; $7bd2: $11 $19 $ff
	rst  $38                                         ; $7bd5: $ff
	jp   c, $fe9b                                    ; $7bd6: $da $9b $fe

	ld   de, $4f11                                   ; $7bd9: $11 $11 $4f
	rst  $38                                         ; $7bdc: $ff
	db   $fc                                         ; $7bdd: $fc
	cp   a                                           ; $7bde: $bf
	rst  $38                                         ; $7bdf: $ff
	ld   b, c                                        ; $7be0: $41
	ld   de, $811f                                   ; $7be1: $11 $1f $81
	ld   de, $ffef                                   ; $7be4: $11 $ef $ff
	rst  $38                                         ; $7be7: $ff
	ld   d, c                                        ; $7be8: $51
	ld   a, l                                        ; $7be9: $7d
	add  c                                           ; $7bea: $81
	ld   de, $ff15                                   ; $7beb: $11 $15 $ff
	rst  $38                                         ; $7bee: $ff
	add  $cf                                         ; $7bef: $c6 $cf
	pop  af                                          ; $7bf1: $f1
	ld   de, $1112                                   ; $7bf2: $11 $12 $11
	ld   b, a                                        ; $7bf5: $47
	rst  $28                                         ; $7bf6: $ef
	rst  $38                                         ; $7bf7: $ff
	rst  $38                                         ; $7bf8: $ff
	pop  af                                          ; $7bf9: $f1
	inc  d                                           ; $7bfa: $14
	ld   de, $1111                                   ; $7bfb: $11 $11 $11
	cp   a                                           ; $7bfe: $bf
	rst  $38                                         ; $7bff: $ff
	ld   a, [$6179]                                  ; $7c00: $fa $79 $61
	ld   de, $1111                                   ; $7c03: $11 $11 $11
	ld   c, [hl]                                     ; $7c06: $4e
	rst  $38                                         ; $7c07: $ff
	rst  $38                                         ; $7c08: $ff
	rst  $38                                         ; $7c09: $ff
	rst  ToBoot                                         ; $7c0a: $c7
	ld   [hl], c                                     ; $7c0b: $71
	ld   de, $1511                                   ; $7c0c: $11 $11 $15
	rst  $38                                         ; $7c0f: $ff
	rst  $38                                         ; $7c10: $ff
	rst  $38                                         ; $7c11: $ff
	jp   c, $1131                                    ; $7c12: $da $31 $11

	ld   de, $6d11                                   ; $7c15: $11 $11 $6d
	rst  $38                                         ; $7c18: $ff
	rst  $38                                         ; $7c19: $ff
	rst  $38                                         ; $7c1a: $ff
	ld   h, h                                        ; $7c1b: $64
	ld   sp, $1111                                   ; $7c1c: $31 $11 $11
	dec  d                                           ; $7c1f: $15
	rst  $38                                         ; $7c20: $ff
	rst  $38                                         ; $7c21: $ff
	cp   $84                                         ; $7c22: $fe $84
	ld   de, $1111                                   ; $7c24: $11 $11 $11
	inc  d                                           ; $7c27: $14
	cp   a                                           ; $7c28: $bf
	rst  $38                                         ; $7c29: $ff
	rst  $38                                         ; $7c2a: $ff
	cp   $74                                         ; $7c2b: $fe $74
	ld   de, $1111                                   ; $7c2d: $11 $11 $11
	ld   e, $ff                                      ; $7c30: $1e $ff
	rst  $38                                         ; $7c32: $ff
	ld   hl, sp+$41                                  ; $7c33: $f8 $41
	ld   de, $1111                                   ; $7c35: $11 $11 $11
	daa                                              ; $7c38: $27
	rst  $38                                         ; $7c39: $ff
	rst  $38                                         ; $7c3a: $ff
	rst  $38                                         ; $7c3b: $ff
	ld   sp, hl                                      ; $7c3c: $f9
	ld   b, c                                        ; $7c3d: $41
	ld   de, $1111                                   ; $7c3e: $11 $11 $11
	adc  a                                           ; $7c41: $8f
	rst  $38                                         ; $7c42: $ff
	rst  $38                                         ; $7c43: $ff
	call nc, $1111                                   ; $7c44: $d4 $11 $11
	ld   de, $6e11                                   ; $7c47: $11 $11 $6e
	rst  $38                                         ; $7c4a: $ff
	rst  $38                                         ; $7c4b: $ff
	rst  $38                                         ; $7c4c: $ff
	rst  $30                                         ; $7c4d: $f7
	ld   de, $1111                                   ; $7c4e: $11 $11 $11
	inc  d                                           ; $7c51: $14
	rst  $38                                         ; $7c52: $ff
	rst  $38                                         ; $7c53: $ff
	rst  $38                                         ; $7c54: $ff
	add  c                                           ; $7c55: $81
	ld   de, $1111                                   ; $7c56: $11 $11 $11
	ld   d, $bf                                      ; $7c59: $16 $bf
	rst  $38                                         ; $7c5b: $ff
	rst  $38                                         ; $7c5c: $ff
	rst  $38                                         ; $7c5d: $ff
	add  d                                           ; $7c5e: $82
	ld   de, $1111                                   ; $7c5f: $11 $11 $11
	dec  e                                           ; $7c62: $1d
	rst  $38                                         ; $7c63: $ff
	rst  $38                                         ; $7c64: $ff

Jump_0f8_7c65:
	cp   $41                                         ; $7c65: $fe $41
	ld   de, $1111                                   ; $7c67: $11 $11 $11
	dec  de                                          ; $7c6a: $1b
	rst  $38                                         ; $7c6b: $ff
	rst  $38                                         ; $7c6c: $ff
	rst  $38                                         ; $7c6d: $ff
	db   $fc                                         ; $7c6e: $fc
	ld   d, c                                        ; $7c6f: $51
	ld   de, $1111                                   ; $7c70: $11 $11 $11
	adc  a                                           ; $7c73: $8f
	rst  $38                                         ; $7c74: $ff
	rst  $38                                         ; $7c75: $ff
	ld   hl, sp+$11                                  ; $7c76: $f8 $11
	ld   de, $1111                                   ; $7c78: $11 $11 $11
	xor  a                                           ; $7c7b: $af
	rst  $38                                         ; $7c7c: $ff
	rst  $38                                         ; $7c7d: $ff
	rst  $38                                         ; $7c7e: $ff
	ld   hl, sp+$11                                  ; $7c7f: $f8 $11
	ld   de, $1411                                   ; $7c81: $11 $11 $14
	rst  $38                                         ; $7c84: $ff
	rst  $38                                         ; $7c85: $ff
	rst  $38                                         ; $7c86: $ff
	db   $d3                                         ; $7c87: $d3
	ld   de, $1111                                   ; $7c88: $11 $11 $11
	ld   d, $ef                                      ; $7c8b: $16 $ef
	rst  $38                                         ; $7c8d: $ff
	rst  $38                                         ; $7c8e: $ff
	rst  $38                                         ; $7c8f: $ff
	call nz, $1111                                   ; $7c90: $c4 $11 $11
	ld   de, $ff1f                                   ; $7c93: $11 $1f $ff
	rst  $38                                         ; $7c96: $ff
	rst  $38                                         ; $7c97: $ff
	ld   [hl], c                                     ; $7c98: $71
	ld   de, $1111                                   ; $7c99: $11 $11 $11
	cpl                                              ; $7c9c: $2f
	rst  $38                                         ; $7c9d: $ff
	rst  $38                                         ; $7c9e: $ff
	rst  $38                                         ; $7c9f: $ff
	rst  $38                                         ; $7ca0: $ff
	ld   [hl], c                                     ; $7ca1: $71
	ld   de, $1111                                   ; $7ca2: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ca5: $cf
	rst  $38                                         ; $7ca6: $ff
	rst  $38                                         ; $7ca7: $ff
	ld   sp, hl                                      ; $7ca8: $f9
	ld   de, $1111                                   ; $7ca9: $11 $11 $11
	ld   de, $ffff                                   ; $7cac: $11 $ff $ff
	rst  $38                                         ; $7caf: $ff
	rst  $38                                         ; $7cb0: $ff
	ld   sp, hl                                      ; $7cb1: $f9
	ld   de, $1111                                   ; $7cb2: $11 $11 $11
	ld   a, [de]                                     ; $7cb5: $1a
	rst  $38                                         ; $7cb6: $ff
	rst  $38                                         ; $7cb7: $ff
	rst  $38                                         ; $7cb8: $ff
	and  c                                           ; $7cb9: $a1
	ld   de, $1111                                   ; $7cba: $11 $11 $11
	ld   e, $ff                                      ; $7cbd: $1e $ff
	rst  $38                                         ; $7cbf: $ff
	rst  $38                                         ; $7cc0: $ff
	rst  $38                                         ; $7cc1: $ff
	or   c                                           ; $7cc2: $b1
	ld   de, $1111                                   ; $7cc3: $11 $11 $11
	sbc  a                                           ; $7cc6: $9f
	rst  $38                                         ; $7cc7: $ff
	rst  $38                                         ; $7cc8: $ff
	ld   sp, hl                                      ; $7cc9: $f9
	ld   de, $1111                                   ; $7cca: $11 $11 $11
	ld   de, $ffcc                                   ; $7ccd: $11 $cc $ff
	rst  $38                                         ; $7cd0: $ff
	rst  $38                                         ; $7cd1: $ff
	ld   a, [$1111]                                  ; $7cd2: $fa $11 $11
	ld   de, $ff19                                   ; $7cd5: $11 $19 $ff
	rst  $38                                         ; $7cd8: $ff
	rst  $38                                         ; $7cd9: $ff
	ld   [hl], c                                     ; $7cda: $71
	ld   de, $1111                                   ; $7cdb: $11 $11 $11
	inc  e                                           ; $7cde: $1c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7cdf: $cf
	rst  $38                                         ; $7ce0: $ff
	rst  $38                                         ; $7ce1: $ff
	rst  $38                                         ; $7ce2: $ff
	sub  c                                           ; $7ce3: $91
	ld   de, $1111                                   ; $7ce4: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ce7: $cf
	rst  $38                                         ; $7ce8: $ff
	rst  $38                                         ; $7ce9: $ff
	ldh  a, [c]                                      ; $7cea: $f2
	ld   de, $1111                                   ; $7ceb: $11 $11 $11
	ld   de, $ffbf                                   ; $7cee: $11 $bf $ff
	rst  $38                                         ; $7cf1: $ff
	rst  $38                                         ; $7cf2: $ff
	or   $11                                         ; $7cf3: $f6 $11
	ld   de, $1f11                                   ; $7cf5: $11 $11 $1f
	rst  $38                                         ; $7cf8: $ff
	rst  $38                                         ; $7cf9: $ff
	db   $fc                                         ; $7cfa: $fc
	ld   de, $1111                                   ; $7cfb: $11 $11 $11
	ld   de, $ff57                                   ; $7cfe: $11 $57 $ff
	rst  $38                                         ; $7d01: $ff
	rst  $38                                         ; $7d02: $ff
	ei                                               ; $7d03: $fb
	ld   sp, $1111                                   ; $7d04: $31 $11 $11
	inc  d                                           ; $7d07: $14
	rst  $38                                         ; $7d08: $ff
	rst  $38                                         ; $7d09: $ff
	rst  $38                                         ; $7d0a: $ff
	ld   sp, $1111                                   ; $7d0b: $31 $11 $11
	ld   de, $af13                                   ; $7d0e: $11 $13 $af
	rst  $38                                         ; $7d11: $ff
	rst  $38                                         ; $7d12: $ff
	rst  $38                                         ; $7d13: $ff
	ld   h, c                                        ; $7d14: $61
	ld   de, $1111                                   ; $7d15: $11 $11 $11
	xor  a                                           ; $7d18: $af
	rst  $38                                         ; $7d19: $ff
	rst  $38                                         ; $7d1a: $ff
	and  c                                           ; $7d1b: $a1
	ld   de, $1111                                   ; $7d1c: $11 $11 $11
	ld   de, $ff2f                                   ; $7d1f: $11 $2f $ff
	rst  $38                                         ; $7d22: $ff
	rst  $38                                         ; $7d23: $ff
	sub  l                                           ; $7d24: $95
	ld   de, $1111                                   ; $7d25: $11 $11 $11
	rrca                                             ; $7d28: $0f
	rst  $38                                         ; $7d29: $ff
	rst  $38                                         ; $7d2a: $ff
	pop  af                                          ; $7d2b: $f1
	ld   de, $1111                                   ; $7d2c: $11 $11 $11
	ld   de, $ff1b                                   ; $7d2f: $11 $1b $ff
	rst  $38                                         ; $7d32: $ff
	rst  $38                                         ; $7d33: $ff
	sub  [hl]                                        ; $7d34: $96
	ld   d, c                                        ; $7d35: $51
	ld   de, $1b11                                   ; $7d36: $11 $11 $1b
	rst  $38                                         ; $7d39: $ff
	rst  $38                                         ; $7d3a: $ff
	di                                               ; $7d3b: $f3
	ld   de, $1111                                   ; $7d3c: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $7d3f: $11 $12 $ff
	rst  $38                                         ; $7d42: $ff
	rst  $38                                         ; $7d43: $ff
	or   l                                           ; $7d44: $b5
	sub  c                                           ; $7d45: $91
	ld   de, $1411                                   ; $7d46: $11 $11 $14
	rst  $38                                         ; $7d49: $ff
	rst  $38                                         ; $7d4a: $ff
	or   $11                                         ; $7d4b: $f6 $11
	ld   de, $1111                                   ; $7d4d: $11 $11 $11
	ld   de, $ffff                                   ; $7d50: $11 $ff $ff
	rst  $38                                         ; $7d53: $ff
	or   $c4                                         ; $7d54: $f6 $c4
	ld   de, $1111                                   ; $7d56: $11 $11 $11
	rst  $38                                         ; $7d59: $ff
	rst  $38                                         ; $7d5a: $ff
	db   $fd                                         ; $7d5b: $fd
	ld   de, $1111                                   ; $7d5c: $11 $11 $11
	ld   de, $cf11                                   ; $7d5f: $11 $11 $cf
	rst  $38                                         ; $7d62: $ff
	rst  $38                                         ; $7d63: $ff
	ld   sp, hl                                      ; $7d64: $f9

Jump_0f8_7d65:
	xor  d                                           ; $7d65: $aa
	ld   de, $1111                                   ; $7d66: $11 $11 $11
	xor  a                                           ; $7d69: $af
	rst  $38                                         ; $7d6a: $ff
	rst  $38                                         ; $7d6b: $ff
	ld   [hl], c                                     ; $7d6c: $71
	ld   de, $1111                                   ; $7d6d: $11 $11 $11
	ld   de, $ff1f                                   ; $7d70: $11 $1f $ff
	rst  $38                                         ; $7d73: $ff
	rst  $38                                         ; $7d74: $ff
	ld   l, h                                        ; $7d75: $6c
	ld   hl, $1111                                   ; $7d76: $21 $11 $11
	rra                                              ; $7d79: $1f
	rst  $38                                         ; $7d7a: $ff
	rst  $38                                         ; $7d7b: $ff
	pop  de                                          ; $7d7c: $d1
	ld   de, $1111                                   ; $7d7d: $11 $11 $11
	inc  de                                          ; $7d80: $13
	ld   e, $ff                                      ; $7d81: $1e $ff
	rst  $38                                         ; $7d83: $ff
	rst  $38                                         ; $7d84: $ff
	ld   e, [hl]                                     ; $7d85: $5e
	and  c                                           ; $7d86: $a1
	ld   de, $1b11                                   ; $7d87: $11 $11 $1b
	rst  $38                                         ; $7d8a: $ff
	rst  $38                                         ; $7d8b: $ff
	ld   hl, sp+$13                                  ; $7d8c: $f8 $13
	ld   de, $1111                                   ; $7d8e: $11 $11 $11
	ld   hl, $ffff                                   ; $7d91: $21 $ff $ff
	rst  $38                                         ; $7d94: $ff
	db   $f4                                         ; $7d95: $f4
	ldh  a, [c]                                      ; $7d96: $f2
	ld   de, $1111                                   ; $7d97: $11 $11 $11
	rst  $38                                         ; $7d9a: $ff
	rst  $38                                         ; $7d9b: $ff
	rst  $38                                         ; $7d9c: $ff
	inc  de                                          ; $7d9d: $13
	ld   h, c                                        ; $7d9e: $61
	ld   de, $1111                                   ; $7d9f: $11 $11 $11
	cpl                                              ; $7da2: $2f
	rst  $28                                         ; $7da3: $ef
	rst  $38                                         ; $7da4: $ff
	db   $f4                                         ; $7da5: $f4
	rst  $38                                         ; $7da6: $ff
	ld   de, $1111                                   ; $7da7: $11 $11 $11
	ld   l, a                                        ; $7daa: $6f
	rst  $38                                         ; $7dab: $ff
	rst  $38                                         ; $7dac: $ff
	ldh  a, [c]                                      ; $7dad: $f2
	push bc                                          ; $7dae: $c5
	ld   de, $1113                                   ; $7daf: $11 $13 $11
	ld   a, [de]                                     ; $7db2: $1a
	ei                                               ; $7db3: $fb
	rst  $38                                         ; $7db4: $ff
	rst  $38                                         ; $7db5: $ff
	rra                                              ; $7db6: $1f
	pop  af                                          ; $7db7: $f1
	ld   de, $1f11                                   ; $7db8: $11 $11 $1f
	rst  $38                                         ; $7dbb: $ff
	rst  $38                                         ; $7dbc: $ff
	db   $fc                                         ; $7dbd: $fc
	ld   e, a                                        ; $7dbe: $5f
	ld   sp, $5111                                   ; $7dbf: $31 $11 $51
	ld   de, $cfff                                   ; $7dc2: $11 $ff $cf
	rst  $38                                         ; $7dc5: $ff
	ldh  a, [c]                                      ; $7dc6: $f2
	db   $fc                                         ; $7dc7: $fc
	ld   de, $1111                                   ; $7dc8: $11 $11 $11
	rst  $38                                         ; $7dcb: $ff
	rst  $38                                         ; $7dcc: $ff
	rst  $38                                         ; $7dcd: $ff
	cp   h                                           ; $7dce: $bc
	pop  af                                          ; $7dcf: $f1
	ld   de, $1185                                   ; $7dd0: $11 $85 $11
	rra                                              ; $7dd3: $1f
	rst  JumpTable                                         ; $7dd4: $df
	rst  $38                                         ; $7dd5: $ff
	or   $ff                                         ; $7dd6: $f6 $ff
	add  c                                           ; $7dd8: $81
	ld   de, $3f11                                   ; $7dd9: $11 $11 $3f
	ei                                               ; $7ddc: $fb
	rst  $38                                         ; $7ddd: $ff
	ei                                               ; $7dde: $fb
	db   $fc                                         ; $7ddf: $fc
	ld   de, $111f                                   ; $7de0: $11 $1f $11
	ld   de, $fffc                                   ; $7de3: $11 $fc $ff
	rst  $38                                         ; $7de6: $ff
	ld   a, a                                        ; $7de7: $7f
	pop  af                                          ; $7de8: $f1
	ld   de, $1c11                                   ; $7de9: $11 $11 $1c
	pop  af                                          ; $7dec: $f1
	rst  JumpTable                                         ; $7ded: $df
	rst  $38                                         ; $7dee: $ff
	ld   c, a                                        ; $7def: $4f
	ld   [hl], c                                     ; $7df0: $71
	ld   de, $11f1                                   ; $7df1: $11 $f1 $11
	rra                                              ; $7df4: $1f
	rst  JumpTable                                         ; $7df5: $df
	cp   $ff                                         ; $7df6: $fe $ff
	rst  $38                                         ; $7df8: $ff
	ld   de, $1111                                   ; $7df9: $11 $11 $11
	ld   c, a                                        ; $7dfc: $4f
	rra                                              ; $7dfd: $1f
	rst  $38                                         ; $7dfe: $ff
	pop  af                                          ; $7dff: $f1
	ei                                               ; $7e00: $fb
	ld   de, $111f                                   ; $7e01: $11 $1f $11
	ld   de, $fffa                                   ; $7e04: $11 $fa $ff
	rst  JumpTable                                         ; $7e07: $df
	rst  $38                                         ; $7e08: $ff
	pop  af                                          ; $7e09: $f1
	ld   de, $1111                                   ; $7e0a: $11 $11 $11
	pop  bc                                          ; $7e0d: $c1
	rst  $38                                         ; $7e0e: $ff
	rst  $38                                         ; $7e0f: $ff
	ccf                                              ; $7e10: $3f
	pop  af                                          ; $7e11: $f1
	ld   de, $11f1                                   ; $7e12: $11 $f1 $11
	ld   e, $ff                                      ; $7e15: $1e $ff
	rst  $38                                         ; $7e17: $ff
	rst  $38                                         ; $7e18: $ff
	rst  $38                                         ; $7e19: $ff
	ld   b, c                                        ; $7e1a: $41
	ld   de, $1c11                                   ; $7e1b: $11 $11 $1c
	dec  e                                           ; $7e1e: $1d
	rst  $38                                         ; $7e1f: $ff
	ld   a, [$11ff]                                  ; $7e20: $fa $ff $11
	ld   a, [de]                                     ; $7e23: $1a
	ld   d, c                                        ; $7e24: $51
	ld   de, $bf6f                                   ; $7e25: $11 $6f $bf
	db   $fc                                         ; $7e28: $fc
	rst  $38                                         ; $7e29: $ff
	rst  $38                                         ; $7e2a: $ff
	ld   de, $1111                                   ; $7e2b: $11 $11 $11
	add  c                                           ; $7e2e: $81
	ld   a, a                                        ; $7e2f: $7f
	rst  $38                                         ; $7e30: $ff
	xor  e                                           ; $7e31: $ab
	ldh  a, [c]                                      ; $7e32: $f2
	ld   de, $111f                                   ; $7e33: $11 $1f $11
	ld   de, $fff7                                   ; $7e36: $11 $f7 $ff
	ld   c, a                                        ; $7e39: $4f
	rst  $38                                         ; $7e3a: $ff
	pop  af                                          ; $7e3b: $f1
	ld   de, $1311                                   ; $7e3c: $11 $11 $13
	ld   sp, $ffff                                   ; $7e3f: $31 $ff $ff
	ld   l, a                                        ; $7e42: $6f
	sub  c                                           ; $7e43: $91
	ld   de, $11c1                                   ; $7e44: $11 $c1 $11
	jr   @+$01                                       ; $7e47: $18 $ff

	rst  $38                                         ; $7e49: $ff
	rst  $38                                         ; $7e4a: $ff
	rst  $38                                         ; $7e4b: $ff
	or   c                                           ; $7e4c: $b1
	ld   de, $1611                                   ; $7e4d: $11 $11 $16
	ld   a, [de]                                     ; $7e50: $1a
	rst  $38                                         ; $7e51: $ff
	db   $fc                                         ; $7e52: $fc
	rst  $38                                         ; $7e53: $ff
	ld   b, e                                        ; $7e54: $43
	ld   de, $11c1                                   ; $7e55: $11 $c1 $11
	rra                                              ; $7e58: $1f
	rst  $38                                         ; $7e59: $ff
	rst  $38                                         ; $7e5a: $ff
	rst  $38                                         ; $7e5b: $ff
	rst  $38                                         ; $7e5c: $ff
	ld   de, $1111                                   ; $7e5d: $11 $11 $11
	ld   a, [de]                                     ; $7e60: $1a
	rra                                              ; $7e61: $1f
	rst  $38                                         ; $7e62: $ff
	ld   sp, hl                                      ; $7e63: $f9
	rst  $38                                         ; $7e64: $ff
	ld   hl, $f111                                   ; $7e65: $21 $11 $f1
	ld   de, $ff1f                                   ; $7e68: $11 $1f $ff
	or   $ff                                         ; $7e6b: $f6 $ff
	rst  $38                                         ; $7e6d: $ff
	ld   de, $2111                                   ; $7e6e: $11 $11 $21
	inc  e                                           ; $7e71: $1c
	rra                                              ; $7e72: $1f
	rst  $38                                         ; $7e73: $ff
	ld   sp, hl                                      ; $7e74: $f9
	rst  $38                                         ; $7e75: $ff
	ld   de, $f111                                   ; $7e76: $11 $11 $f1
	ld   de, $ff1f                                   ; $7e79: $11 $1f $ff
	di                                               ; $7e7c: $f3
	rst  $38                                         ; $7e7d: $ff
	rst  $38                                         ; $7e7e: $ff
	ld   de, $4111                                   ; $7e7f: $11 $11 $41
	dec  de                                          ; $7e82: $1b
	rra                                              ; $7e83: $1f
	rst  $38                                         ; $7e84: $ff
	ld   hl, sp-$01                                  ; $7e85: $f8 $ff
	ld   de, $f111                                   ; $7e87: $11 $11 $f1
	ld   de, $ff1f                                   ; $7e8a: $11 $1f $ff
	push af                                          ; $7e8d: $f5
	rst  $38                                         ; $7e8e: $ff
	rst  $38                                         ; $7e8f: $ff
	ld   de, $3111                                   ; $7e90: $11 $11 $31
	inc  e                                           ; $7e93: $1c
	rra                                              ; $7e94: $1f
	rst  $38                                         ; $7e95: $ff
	ld   hl, sp-$01                                  ; $7e96: $f8 $ff
	ld   de, $1111                                   ; $7e98: $11 $11 $11
	ld   de, $ff1d                                   ; $7e9b: $11 $1d $ff
	rst  $38                                         ; $7e9e: $ff
	rst  $28                                         ; $7e9f: $ef
	rst  $38                                         ; $7ea0: $ff
	ld   sp, $1111                                   ; $7ea1: $31 $11 $11
	dec  e                                           ; $7ea4: $1d
	ccf                                              ; $7ea5: $3f
	rst  $38                                         ; $7ea6: $ff
	rst  $38                                         ; $7ea7: $ff
	rst  $38                                         ; $7ea8: $ff
	ld   de, $1511                                   ; $7ea9: $11 $11 $15
	ld   de, rAUD1LEN                                   ; $7eac: $11 $11 $ff
	rst  $38                                         ; $7eaf: $ff
	cp   a                                           ; $7eb0: $bf
	rst  $38                                         ; $7eb1: $ff
	pop  af                                          ; $7eb2: $f1
	ld   de, $1811                                   ; $7eb3: $11 $11 $18
	call nc, $ffff                                   ; $7eb6: $d4 $ff $ff
	cp   a                                           ; $7eb9: $bf
	or   c                                           ; $7eba: $b1
	ld   de, $6111                                   ; $7ebb: $11 $11 $61
	ld   de, $ffbf                                   ; $7ebe: $11 $bf $ff
	db   $fc                                         ; $7ec1: $fc
	ld   a, [$11f9]                                  ; $7ec2: $fa $f9 $11
	ld   de, $ea11                                   ; $7ec5: $11 $11 $ea
	rst  $28                                         ; $7ec8: $ef
	rst  $38                                         ; $7ec9: $ff
	cp   $f1                                         ; $7eca: $fe $f1
	ld   de, $1a11                                   ; $7ecc: $11 $11 $1a
	ld   de, $ff1f                                   ; $7ecf: $11 $1f $ff
	rst  $38                                         ; $7ed2: $ff
	sbc  a                                           ; $7ed3: $9f
	ld   l, a                                        ; $7ed4: $6f
	ld   [hl], c                                     ; $7ed5: $71
	ld   de, $1f11                                   ; $7ed6: $11 $11 $1f
	rst  $38                                         ; $7ed9: $ff
	rst  $38                                         ; $7eda: $ff
	rst  $38                                         ; $7edb: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7edc: $cf
	ld   de, $1111                                   ; $7edd: $11 $11 $11
	add  c                                           ; $7ee0: $81
	ld   d, h                                        ; $7ee1: $54
	rst  JumpTable                                         ; $7ee2: $df
	rst  $38                                         ; $7ee3: $ff
	ld   a, [$9bf1]                                  ; $7ee4: $fa $f1 $9b
	ld   de, $1111                                   ; $7ee7: $11 $11 $11
	rst  $38                                         ; $7eea: $ff
	rst  $38                                         ; $7eeb: $ff
	rst  $38                                         ; $7eec: $ff
	db   $fd                                         ; $7eed: $fd
	pop  af                                          ; $7eee: $f1
	ld   de, $1511                                   ; $7eef: $11 $11 $15
	dec  h                                           ; $7ef2: $25
	ld   [$ffff], a                                  ; $7ef3: $ea $ff $ff
	db   $fd                                         ; $7ef6: $fd
	ld   de, $11e1                                   ; $7ef7: $11 $e1 $11
	ld   de, $ff1f                                   ; $7efa: $11 $1f $ff
	rst  $38                                         ; $7efd: $ff
	rst  $38                                         ; $7efe: $ff
	rst  $28                                         ; $7eff: $ef
	ld   de, $1111                                   ; $7f00: $11 $11 $11
	inc  e                                           ; $7f03: $1c
	ld   c, a                                        ; $7f04: $4f
	rst  JumpTable                                         ; $7f05: $df
	rst  $38                                         ; $7f06: $ff
	rst  $38                                         ; $7f07: $ff
	ld   d, e                                        ; $7f08: $53
	dec  de                                          ; $7f09: $1b
	ld   de, $1111                                   ; $7f0a: $11 $11 $11
	rst  $38                                         ; $7f0d: $ff
	rst  $38                                         ; $7f0e: $ff
	rst  $38                                         ; $7f0f: $ff
	rst  $38                                         ; $7f10: $ff
	or   a                                           ; $7f11: $b7
	ld   de, $1111                                   ; $7f12: $11 $11 $11
	ld   hl, sp-$01                                  ; $7f15: $f8 $ff
	rst  $38                                         ; $7f17: $ff
	rst  $38                                         ; $7f18: $ff
	ldh  a, [c]                                      ; $7f19: $f2
	ld   de, $1171                                   ; $7f1a: $11 $71 $11
	ld   de, $ff4f                                   ; $7f1d: $11 $4f $ff
	rst  $38                                         ; $7f20: $ff
	rst  $38                                         ; $7f21: $ff
	ld   [$1121], a                                  ; $7f22: $ea $21 $11
	ld   de, $efdd                                   ; $7f25: $11 $dd $ef
	rst  $38                                         ; $7f28: $ff
	rst  $38                                         ; $7f29: $ff
	ld   hl, sp+$21                                  ; $7f2a: $f8 $21
	dec  d                                           ; $7f2c: $15
	ld   de, $1511                                   ; $7f2d: $11 $11 $15
	rst  $38                                         ; $7f30: $ff
	rst  $38                                         ; $7f31: $ff
	rst  $38                                         ; $7f32: $ff
	rst  $30                                         ; $7f33: $f7
	pop  af                                          ; $7f34: $f1
	ld   de, $1f11                                   ; $7f35: $11 $11 $1f
	rst  $38                                         ; $7f38: $ff
	rst  $38                                         ; $7f39: $ff
	rst  $38                                         ; $7f3a: $ff
	rst  $38                                         ; $7f3b: $ff
	ld   de, $1111                                   ; $7f3c: $11 $11 $11
	ld   de, $af11                                   ; $7f3f: $11 $11 $af
	rst  $38                                         ; $7f42: $ff
	rst  $38                                         ; $7f43: $ff
	cp   $6f                                         ; $7f44: $fe $6f
	ld   de, $1e11                                   ; $7f46: $11 $11 $1e
	rst  $38                                         ; $7f49: $ff
	ld   sp, hl                                      ; $7f4a: $f9
	rst  $38                                         ; $7f4b: $ff
	rst  $38                                         ; $7f4c: $ff
	ldh  a, [c]                                      ; $7f4d: $f2
	ld   de, $1111                                   ; $7f4e: $11 $11 $11
	ld   de, $ff1f                                   ; $7f51: $11 $1f $ff
	rst  $38                                         ; $7f54: $ff
	ld   l, c                                        ; $7f55: $69
	inc  e                                           ; $7f56: $1c
	and  c                                           ; $7f57: $a1
	ld   de, rAUD1LEN                                   ; $7f58: $11 $11 $ff
	rst  $38                                         ; $7f5b: $ff
	rst  JumpTable                                         ; $7f5c: $df
	rst  $38                                         ; $7f5d: $ff
	db   $fd                                         ; $7f5e: $fd
	ld   de, $1d11                                   ; $7f5f: $11 $11 $1d
	ld   de, rAUD1LEN                                   ; $7f62: $11 $11 $ff
	rst  $38                                         ; $7f65: $ff
	push af                                          ; $7f66: $f5
	ld   de, $11c1                                   ; $7f67: $11 $c1 $11
	ld   de, $ff5f                                   ; $7f6a: $11 $5f $ff
	rst  $38                                         ; $7f6d: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f6e: $cf
	rst  $38                                         ; $7f6f: $ff
	pop  af                                          ; $7f70: $f1
	ld   de, $fb11                                   ; $7f71: $11 $11 $fb
	or   c                                           ; $7f74: $b1
	rst  $28                                         ; $7f75: $ef
	rst  $38                                         ; $7f76: $ff
	rst  $38                                         ; $7f77: $ff
	ld   de, $1111                                   ; $7f78: $11 $11 $11
	ld   de, $ff18                                   ; $7f7b: $11 $18 $ff
	rst  $38                                         ; $7f7e: $ff
	ld   sp, hl                                      ; $7f7f: $f9
	rst  $38                                         ; $7f80: $ff
	db   $f4                                         ; $7f81: $f4
	ld   de, $4711                                   ; $7f82: $11 $11 $47
	ld   sp, hl                                      ; $7f85: $f9
	rst  $38                                         ; $7f86: $ff
	rst  $38                                         ; $7f87: $ff
	rst  $38                                         ; $7f88: $ff
	pop  af                                          ; $7f89: $f1
	ld   de, $1111                                   ; $7f8a: $11 $11 $11
	dec  d                                           ; $7f8d: $15
	rst  $38                                         ; $7f8e: $ff
	rst  $38                                         ; $7f8f: $ff
	rst  $38                                         ; $7f90: $ff
	rst  $38                                         ; $7f91: $ff
	call nc, $1111                                   ; $7f92: $d4 $11 $11
	ld   de, $fffd                                   ; $7f95: $11 $fd $ff
	rst  $38                                         ; $7f98: $ff
	rst  $38                                         ; $7f99: $ff
	pop  af                                          ; $7f9a: $f1
	ld   de, $1111                                   ; $7f9b: $11 $11 $11
	jr   @+$01                                       ; $7f9e: $18 $ff

	rst  $38                                         ; $7fa0: $ff
	rst  $38                                         ; $7fa1: $ff
	rst  $38                                         ; $7fa2: $ff
	add  sp, $11                                     ; $7fa3: $e8 $11
	ld   de, $fe11                                   ; $7fa5: $11 $11 $fe
	rst  $38                                         ; $7fa8: $ff
	rst  $38                                         ; $7fa9: $ff
	rst  $38                                         ; $7faa: $ff
	pop  af                                          ; $7fab: $f1
	ld   de, $1111                                   ; $7fac: $11 $11 $11
	rla                                              ; $7faf: $17
	rst  $38                                         ; $7fb0: $ff
	rst  $38                                         ; $7fb1: $ff
	rst  $38                                         ; $7fb2: $ff
	rst  $38                                         ; $7fb3: $ff
	cp   c                                           ; $7fb4: $b9
	ld   de, $1111                                   ; $7fb5: $11 $11 $11
	rst  $38                                         ; $7fb8: $ff
	rst  $38                                         ; $7fb9: $ff
	rst  $38                                         ; $7fba: $ff
	rst  $38                                         ; $7fbb: $ff
	pop  af                                          ; $7fbc: $f1
	ld   de, $1111                                   ; $7fbd: $11 $11 $11
	ld   d, $ff                                      ; $7fc0: $16 $ff
	rst  $38                                         ; $7fc2: $ff
	rst  $38                                         ; $7fc3: $ff
	rst  $38                                         ; $7fc4: $ff
	push hl                                          ; $7fc5: $e5
	ld   de, $1111                                   ; $7fc6: $11 $11 $11
	rst  $38                                         ; $7fc9: $ff
	rst  $38                                         ; $7fca: $ff
	rst  $38                                         ; $7fcb: $ff
	rst  $38                                         ; $7fcc: $ff
	pop  af                                          ; $7fcd: $f1
	ld   de, $1111                                   ; $7fce: $11 $11 $11
	ld   [hl], l                                     ; $7fd1: $75
	rst  $38                                         ; $7fd2: $ff
	rst  $38                                         ; $7fd3: $ff
	rst  $38                                         ; $7fd4: $ff
	ei                                               ; $7fd5: $fb
	pop  af                                          ; $7fd6: $f1
	ld   de, $1211                                   ; $7fd7: $11 $11 $12
	rst  $38                                         ; $7fda: $ff
	rst  $38                                         ; $7fdb: $ff
	rst  $38                                         ; $7fdc: $ff
	rst  $38                                         ; $7fdd: $ff
	and  c                                           ; $7fde: $a1
	ld   de, $1111                                   ; $7fdf: $11 $11 $11
	sbc  d                                           ; $7fe2: $9a
	rst  $38                                         ; $7fe3: $ff
	rst  $38                                         ; $7fe4: $ff
	rst  $28                                         ; $7fe5: $ef
	ld   a, [$11f1]                                  ; $7fe6: $fa $f1 $11
	ld   de, $ff19                                   ; $7fe9: $11 $19 $ff
	rst  $38                                         ; $7fec: $ff
	rst  $38                                         ; $7fed: $ff
	rst  $38                                         ; $7fee: $ff
	ld   hl, $1111                                   ; $7fef: $21 $11 $11
	jr   @+$71                                       ; $7ff2: $18 $6f

	rst  $38                                         ; $7ff4: $ff
	rst  $38                                         ; $7ff5: $ff
	rst  $38                                         ; $7ff6: $ff
	rst  JumpTable                                         ; $7ff7: $df
	ld   de, $1111                                   ; $7ff8: $11 $11 $11
	cpl                                              ; $7ffb: $2f
	rst  $38                                         ; $7ffc: $ff
	rst  $38                                         ; $7ffd: $ff
	rst  $38                                         ; $7ffe: $ff
	db   $fa                                         ; $7fff: $fa
