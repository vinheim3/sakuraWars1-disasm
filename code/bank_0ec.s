; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0ec", ROMX[$4000], BANK[$ec]

	sbc  h                                           ; $4000: $9c
	xor  c                                           ; $4001: $a9
	cp   l                                           ; $4002: $bd
	ld   [$76a7], a                                  ; $4003: $ea $a7 $76
	ld   [hl], a                                     ; $4006: $77
	ld   d, e                                        ; $4007: $53
	ld   [de], a                                     ; $4008: $12
	ld   a, d                                        ; $4009: $7a
	sbc  b                                           ; $400a: $98
	sbc  e                                           ; $400b: $9b
	xor  h                                           ; $400c: $ac
	call c, $8687                                    ; $400d: $dc $87 $86
	ld   h, l                                        ; $4010: $65
	ld   d, e                                        ; $4011: $53
	inc  d                                           ; $4012: $14
	adc  d                                           ; $4013: $8a
	xor  d                                           ; $4014: $aa
	xor  h                                           ; $4015: $ac
	sbc  $ba                                         ; $4016: $de $ba
	add  a                                           ; $4018: $87
	ld   h, [hl]                                     ; $4019: $66
	ld   h, l                                        ; $401a: $65
	ld   b, c                                        ; $401b: $41
	dec  d                                           ; $401c: $15
	xor  e                                           ; $401d: $ab
	cp   c                                           ; $401e: $b9
	xor  [hl]                                        ; $401f: $ae
	db   $ec                                         ; $4020: $ec
	xor  c                                           ; $4021: $a9
	add  [hl]                                        ; $4022: $86
	ld   a, c                                        ; $4023: $79
	ld   h, h                                        ; $4024: $64
	ld   hl, $bb17                                   ; $4025: $21 $17 $bb
	cp   d                                           ; $4028: $ba
	call $bacc                                       ; $4029: $cd $cc $ba
	ld   [hl], h                                     ; $402c: $74
	ld   e, b                                        ; $402d: $58
	ld   [hl], e                                     ; $402e: $73
	ld   de, $bb39                                   ; $402f: $11 $39 $bb
	call z, $cbba                                    ; $4032: $cc $ba $cb
	add  [hl]                                        ; $4035: $86
	ld   h, a                                        ; $4036: $67
	sub  a                                           ; $4037: $97
	ld   b, d                                        ; $4038: $42
	ld   de, $cc5b                                   ; $4039: $11 $5b $cc
	cp   e                                           ; $403c: $bb
	jp   z, $a7bb                                    ; $403d: $ca $bb $a7

	ld   h, a                                        ; $4040: $67
	add  l                                           ; $4041: $85
	ld   [hl-], a                                    ; $4042: $32
	inc  d                                           ; $4043: $14
	sbc  e                                           ; $4044: $9b
	call z, $beaa                                    ; $4045: $cc $aa $be
	cp   c                                           ; $4048: $b9
	add  a                                           ; $4049: $87
	add  a                                           ; $404a: $87
	ld   h, l                                        ; $404b: $65
	ld   b, c                                        ; $404c: $41
	inc  d                                           ; $404d: $14
	sbc  e                                           ; $404e: $9b
	cp   d                                           ; $404f: $ba
	cp   h                                           ; $4050: $bc
	cp   d                                           ; $4051: $ba
	cp   e                                           ; $4052: $bb
	ld   [hl], a                                     ; $4053: $77
	ld   [hl], a                                     ; $4054: $77
	ld   h, h                                        ; $4055: $64
	ld   de, $bc18                                   ; $4056: $11 $18 $bc
	cp   h                                           ; $4059: $bc
	res  7, d                                        ; $405a: $cb $ba
	cp   d                                           ; $405c: $ba
	halt                                             ; $405d: $76
	ld   [hl], a                                     ; $405e: $77
	ld   b, d                                        ; $405f: $42
	ld   de, $cf39                                   ; $4060: $11 $39 $cf
	ret                                              ; $4063: $c9


	xor  h                                           ; $4064: $ac
	db   $db                                         ; $4065: $db
	sbc  c                                           ; $4066: $99
	add  [hl]                                        ; $4067: $86
	ld   h, l                                        ; $4068: $65
	ld   b, e                                        ; $4069: $43
	ld   de, $cb6b                                   ; $406a: $11 $6b $cb
	cp   h                                           ; $406d: $bc
	call z, $a8b9                                    ; $406e: $cc $b9 $a8
	halt                                             ; $4071: $76
	ld   [hl], a                                     ; $4072: $77
	ld   b, c                                        ; $4073: $41
	ld   de, $dc7b                                   ; $4074: $11 $7b $dc
	xor  e                                           ; $4077: $ab
	cp   l                                           ; $4078: $bd
	jp   z, Jump_0ec_7687                            ; $4079: $ca $87 $76

	ld   h, l                                        ; $407c: $65
	ld   b, c                                        ; $407d: $41
	inc  de                                          ; $407e: $13
	xor  l                                           ; $407f: $ad
	jp   z, $ccab                                    ; $4080: $ca $ab $cc

	cp   e                                           ; $4083: $bb
	add  [hl]                                        ; $4084: $86
	ld   e, b                                        ; $4085: $58
	add  l                                           ; $4086: $85
	ld   [hl-], a                                    ; $4087: $32
	dec  h                                           ; $4088: $25
	adc  d                                           ; $4089: $8a
	res  7, d                                        ; $408a: $cb $ba
	cp   e                                           ; $408c: $bb
	xor  d                                           ; $408d: $aa
	sub  a                                           ; $408e: $97
	ld   h, a                                        ; $408f: $67
	ld   h, [hl]                                     ; $4090: $66
	ld   d, e                                        ; $4091: $53
	inc  d                                           ; $4092: $14
	sbc  h                                           ; $4093: $9c
	reti                                             ; $4094: $d9


	sbc  c                                           ; $4095: $99
	call z, Call_0ec_78b9                            ; $4096: $cc $b9 $78
	ld   h, a                                        ; $4099: $67
	ld   h, [hl]                                     ; $409a: $66
	ld   d, e                                        ; $409b: $53
	inc  d                                           ; $409c: $14
	sbc  h                                           ; $409d: $9c
	cp   d                                           ; $409e: $ba
	xor  c                                           ; $409f: $a9
	cp   d                                           ; $40a0: $ba
	xor  d                                           ; $40a1: $aa
	sub  a                                           ; $40a2: $97
	ld   h, a                                        ; $40a3: $67
	ld   [hl], a                                     ; $40a4: $77
	ld   d, e                                        ; $40a5: $53
	inc  h                                           ; $40a6: $24
	ld   a, c                                        ; $40a7: $79
	call z, $9ac8                                    ; $40a8: $cc $c8 $9a
	call z, Call_0ec_5797                            ; $40ab: $cc $97 $57
	ld   [hl], a                                     ; $40ae: $77
	ld   d, e                                        ; $40af: $53
	ld   [de], a                                     ; $40b0: $12
	ld   a, d                                        ; $40b1: $7a
	res  7, d                                        ; $40b2: $cb $ba
	sbc  d                                           ; $40b4: $9a
	xor  h                                           ; $40b5: $ac
	add  a                                           ; $40b6: $87
	ld   l, b                                        ; $40b7: $68
	sub  [hl]                                        ; $40b8: $96
	ld   h, h                                        ; $40b9: $64
	ld   b, d                                        ; $40ba: $42
	ld   e, c                                        ; $40bb: $59
	cp   l                                           ; $40bc: $bd
	ret                                              ; $40bd: $c9


	adc  d                                           ; $40be: $8a
	xor  e                                           ; $40bf: $ab
	sbc  b                                           ; $40c0: $98
	add  a                                           ; $40c1: $87
	halt                                             ; $40c2: $76
	halt                                             ; $40c3: $76
	ld   b, d                                        ; $40c4: $42
	scf                                              ; $40c5: $37
	xor  l                                           ; $40c6: $ad
	cp   c                                           ; $40c7: $b9
	adc  c                                           ; $40c8: $89
	cp   e                                           ; $40c9: $bb
	cp   c                                           ; $40ca: $b9
	add  a                                           ; $40cb: $87
	ld   h, a                                        ; $40cc: $67
	ld   h, a                                        ; $40cd: $67
	ld   d, e                                        ; $40ce: $53
	dec  h                                           ; $40cf: $25
	sbc  d                                           ; $40d0: $9a
	cp   e                                           ; $40d1: $bb
	cp   c                                           ; $40d2: $b9
	sbc  d                                           ; $40d3: $9a
	cp   d                                           ; $40d4: $ba
	adc  b                                           ; $40d5: $88
	ld   l, b                                        ; $40d6: $68
	halt                                             ; $40d7: $76
	ld   d, h                                        ; $40d8: $54
	inc  sp                                          ; $40d9: $33
	ld   e, c                                        ; $40da: $59
	cp   e                                           ; $40db: $bb
	cp   c                                           ; $40dc: $b9
	adc  d                                           ; $40dd: $8a
	xor  h                                           ; $40de: $ac
	sbc  c                                           ; $40df: $99
	add  a                                           ; $40e0: $87
	add  [hl]                                        ; $40e1: $86
	halt                                             ; $40e2: $76
	ld   d, e                                        ; $40e3: $53
	ld   b, [hl]                                     ; $40e4: $46
	sbc  d                                           ; $40e5: $9a
	cp   h                                           ; $40e6: $bc
	sbc  b                                           ; $40e7: $98
	sbc  c                                           ; $40e8: $99
	cp   c                                           ; $40e9: $b9
	add  a                                           ; $40ea: $87
	ld   [hl], a                                     ; $40eb: $77
	ld   h, a                                        ; $40ec: $67
	ld   h, [hl]                                     ; $40ed: $66
	ld   b, h                                        ; $40ee: $44
	ld   l, b                                        ; $40ef: $68
	res  5, c                                        ; $40f0: $cb $a9
	adc  d                                           ; $40f2: $8a
	xor  d                                           ; $40f3: $aa
	sbc  c                                           ; $40f4: $99
	ld   [hl], a                                     ; $40f5: $77
	ld   [hl], a                                     ; $40f6: $77
	add  a                                           ; $40f7: $87
	ld   d, e                                        ; $40f8: $53
	ld   b, [hl]                                     ; $40f9: $46
	sbc  d                                           ; $40fa: $9a
	sbc  d                                           ; $40fb: $9a
	adc  c                                           ; $40fc: $89
	xor  d                                           ; $40fd: $aa
	and  a                                           ; $40fe: $a7
	adc  b                                           ; $40ff: $88
	adc  b                                           ; $4100: $88
	ld   a, b                                        ; $4101: $78
	ld   h, [hl]                                     ; $4102: $66
	inc  sp                                          ; $4103: $33
	ld   d, a                                        ; $4104: $57
	xor  e                                           ; $4105: $ab
	cp   c                                           ; $4106: $b9
	sbc  d                                           ; $4107: $9a
	sbc  d                                           ; $4108: $9a
	sbc  b                                           ; $4109: $98
	sbc  b                                           ; $410a: $98
	add  a                                           ; $410b: $87
	ld   [hl], a                                     ; $410c: $77
	ld   h, l                                        ; $410d: $65
	ld   b, h                                        ; $410e: $44
	ld   e, b                                        ; $410f: $58
	xor  d                                           ; $4110: $aa
	xor  c                                           ; $4111: $a9
	sbc  c                                           ; $4112: $99
	xor  d                                           ; $4113: $aa
	adc  b                                           ; $4114: $88
	adc  c                                           ; $4115: $89
	add  a                                           ; $4116: $87

Call_0ec_4117:
	halt                                             ; $4117: $76
	ld   h, l                                        ; $4118: $65
	ld   b, h                                        ; $4119: $44
	ld   l, d                                        ; $411a: $6a
	res  2, a                                        ; $411b: $cb $97
	sbc  d                                           ; $411d: $9a
	cp   d                                           ; $411e: $ba
	ld   a, b                                        ; $411f: $78
	adc  b                                           ; $4120: $88
	adc  b                                           ; $4121: $88
	add  a                                           ; $4122: $87
	ld   h, h                                        ; $4123: $64
	ld   d, l                                        ; $4124: $55
	ld   a, c                                        ; $4125: $79
	xor  e                                           ; $4126: $ab
	adc  b                                           ; $4127: $88
	sbc  c                                           ; $4128: $99
	cp   c                                           ; $4129: $b9
	sbc  b                                           ; $412a: $98
	sbc  c                                           ; $412b: $99
	adc  b                                           ; $412c: $88
	ld   [hl], a                                     ; $412d: $77
	ld   h, [hl]                                     ; $412e: $66
	ld   d, h                                        ; $412f: $54
	ld   e, c                                        ; $4130: $59
	cp   e                                           ; $4131: $bb
	sub  a                                           ; $4132: $97
	sbc  e                                           ; $4133: $9b
	cp   c                                           ; $4134: $b9
	sbc  c                                           ; $4135: $99
	sbc  c                                           ; $4136: $99
	ld   a, b                                        ; $4137: $78
	ld   [hl], a                                     ; $4138: $77
	ld   h, l                                        ; $4139: $65
	ld   d, h                                        ; $413a: $54
	ld   l, c                                        ; $413b: $69
	cp   e                                           ; $413c: $bb
	sbc  b                                           ; $413d: $98
	adc  c                                           ; $413e: $89
	cp   c                                           ; $413f: $b9
	adc  b                                           ; $4140: $88
	adc  b                                           ; $4141: $88
	add  a                                           ; $4142: $87
	ld   a, b                                        ; $4143: $78
	halt                                             ; $4144: $76
	ld   d, h                                        ; $4145: $54
	ld   b, a                                        ; $4146: $47
	sbc  d                                           ; $4147: $9a
	xor  b                                           ; $4148: $a8
	xor  d                                           ; $4149: $aa
	xor  d                                           ; $414a: $aa
	sbc  c                                           ; $414b: $99
	sbc  c                                           ; $414c: $99
	ld   a, c                                        ; $414d: $79
	adc  b                                           ; $414e: $88
	halt                                             ; $414f: $76
	ld   d, h                                        ; $4150: $54
	ld   b, [hl]                                     ; $4151: $46
	xor  d                                           ; $4152: $aa
	xor  b                                           ; $4153: $a8
	xor  e                                           ; $4154: $ab
	sbc  c                                           ; $4155: $99
	adc  c                                           ; $4156: $89
	adc  b                                           ; $4157: $88
	ld   [hl], a                                     ; $4158: $77
	add  a                                           ; $4159: $87
	ld   [hl], a                                     ; $415a: $77
	ld   h, l                                        ; $415b: $65
	ld   d, l                                        ; $415c: $55
	ld   a, d                                        ; $415d: $7a
	xor  c                                           ; $415e: $a9
	adc  c                                           ; $415f: $89
	sbc  c                                           ; $4160: $99
	sbc  b                                           ; $4161: $98
	sbc  c                                           ; $4162: $99
	add  a                                           ; $4163: $87
	adc  c                                           ; $4164: $89
	sbc  b                                           ; $4165: $98
	halt                                             ; $4166: $76
	ld   d, h                                        ; $4167: $54
	ld   e, b                                        ; $4168: $58
	xor  d                                           ; $4169: $aa
	sbc  c                                           ; $416a: $99
	cp   e                                           ; $416b: $bb
	sbc  c                                           ; $416c: $99
	adc  d                                           ; $416d: $8a
	adc  b                                           ; $416e: $88
	ld   a, b                                        ; $416f: $78
	sbc  b                                           ; $4170: $98
	add  a                                           ; $4171: $87
	ld   h, l                                        ; $4172: $65
	ld   b, l                                        ; $4173: $45
	adc  d                                           ; $4174: $8a
	xor  b                                           ; $4175: $a8
	adc  d                                           ; $4176: $8a
	xor  d                                           ; $4177: $aa
	sbc  c                                           ; $4178: $99
	adc  b                                           ; $4179: $88
	add  a                                           ; $417a: $87
	adc  c                                           ; $417b: $89
	adc  b                                           ; $417c: $88
	ld   [hl], a                                     ; $417d: $77
	ld   d, l                                        ; $417e: $55
	ld   b, [hl]                                     ; $417f: $46
	sbc  d                                           ; $4180: $9a
	sbc  b                                           ; $4181: $98
	xor  d                                           ; $4182: $aa
	xor  c                                           ; $4183: $a9
	adc  b                                           ; $4184: $88
	sbc  c                                           ; $4185: $99
	adc  c                                           ; $4186: $89
	sbc  b                                           ; $4187: $98
	add  a                                           ; $4188: $87
	halt                                             ; $4189: $76
	ld   b, h                                        ; $418a: $44
	ld   e, c                                        ; $418b: $59
	sbc  c                                           ; $418c: $99
	sbc  b                                           ; $418d: $98
	sbc  d                                           ; $418e: $9a
	sbc  b                                           ; $418f: $98
	adc  b                                           ; $4190: $88
	adc  b                                           ; $4191: $88
	adc  b                                           ; $4192: $88
	sbc  b                                           ; $4193: $98
	sbc  b                                           ; $4194: $98
	ld   [hl], l                                     ; $4195: $75
	ld   b, l                                        ; $4196: $45
	ld   a, c                                        ; $4197: $79
	xor  c                                           ; $4198: $a9
	adc  c                                           ; $4199: $89
	xor  d                                           ; $419a: $aa
	sbc  b                                           ; $419b: $98
	adc  b                                           ; $419c: $88
	adc  b                                           ; $419d: $88
	adc  b                                           ; $419e: $88
	sbc  c                                           ; $419f: $99
	sbc  c                                           ; $41a0: $99
	halt                                             ; $41a1: $76
	ld   d, h                                        ; $41a2: $54
	ld   d, a                                        ; $41a3: $57
	xor  c                                           ; $41a4: $a9
	adc  c                                           ; $41a5: $89
	cp   e                                           ; $41a6: $bb
	xor  c                                           ; $41a7: $a9
	adc  b                                           ; $41a8: $88
	adc  c                                           ; $41a9: $89
	sbc  b                                           ; $41aa: $98
	adc  b                                           ; $41ab: $88
	sbc  c                                           ; $41ac: $99
	sub  [hl]                                        ; $41ad: $96
	ld   d, l                                        ; $41ae: $55
	ld   b, [hl]                                     ; $41af: $46
	adc  d                                           ; $41b0: $8a
	sbc  b                                           ; $41b1: $98
	sbc  d                                           ; $41b2: $9a
	xor  b                                           ; $41b3: $a8
	ld   a, c                                        ; $41b4: $79
	sbc  c                                           ; $41b5: $99
	adc  c                                           ; $41b6: $89
	sbc  b                                           ; $41b7: $98
	sbc  b                                           ; $41b8: $98
	sbc  b                                           ; $41b9: $98
	ld   h, l                                        ; $41ba: $65
	ld   b, l                                        ; $41bb: $45
	ld   a, c                                        ; $41bc: $79
	xor  b                                           ; $41bd: $a8
	sbc  d                                           ; $41be: $9a
	xor  c                                           ; $41bf: $a9
	adc  b                                           ; $41c0: $88
	sbc  c                                           ; $41c1: $99
	sbc  b                                           ; $41c2: $98
	adc  b                                           ; $41c3: $88
	adc  b                                           ; $41c4: $88
	sbc  c                                           ; $41c5: $99
	halt                                             ; $41c6: $76
	ld   b, h                                        ; $41c7: $44
	ld   l, c                                        ; $41c8: $69
	sbc  b                                           ; $41c9: $98
	adc  b                                           ; $41ca: $88
	xor  c                                           ; $41cb: $a9
	sbc  c                                           ; $41cc: $99
	adc  b                                           ; $41cd: $88
	adc  c                                           ; $41ce: $89
	adc  c                                           ; $41cf: $89
	adc  b                                           ; $41d0: $88
	adc  c                                           ; $41d1: $89
	sub  a                                           ; $41d2: $97
	ld   d, h                                        ; $41d3: $54
	ld   d, [hl]                                     ; $41d4: $56
	sbc  d                                           ; $41d5: $9a
	sbc  b                                           ; $41d6: $98
	adc  d                                           ; $41d7: $8a
	sbc  c                                           ; $41d8: $99
	adc  b                                           ; $41d9: $88
	sbc  b                                           ; $41da: $98
	adc  c                                           ; $41db: $89
	adc  c                                           ; $41dc: $89
	adc  b                                           ; $41dd: $88
	adc  c                                           ; $41de: $89
	halt                                             ; $41df: $76
	ld   d, l                                        ; $41e0: $55
	ld   l, b                                        ; $41e1: $68
	sbc  c                                           ; $41e2: $99
	sbc  c                                           ; $41e3: $99
	sbc  c                                           ; $41e4: $99
	sbc  c                                           ; $41e5: $99
	sbc  c                                           ; $41e6: $99
	adc  b                                           ; $41e7: $88
	adc  c                                           ; $41e8: $89
	sbc  b                                           ; $41e9: $98
	adc  b                                           ; $41ea: $88
	add  a                                           ; $41eb: $87
	ld   h, [hl]                                     ; $41ec: $66
	ld   h, [hl]                                     ; $41ed: $66
	ld   a, c                                        ; $41ee: $79
	sbc  b                                           ; $41ef: $98
	adc  b                                           ; $41f0: $88
	sbc  c                                           ; $41f1: $99
	adc  c                                           ; $41f2: $89
	adc  c                                           ; $41f3: $89
	sub  a                                           ; $41f4: $97
	adc  b                                           ; $41f5: $88
	sbc  b                                           ; $41f6: $98
	adc  b                                           ; $41f7: $88
	ld   [hl], a                                     ; $41f8: $77
	ld   h, [hl]                                     ; $41f9: $66
	ld   h, [hl]                                     ; $41fa: $66
	sbc  d                                           ; $41fb: $9a
	sbc  b                                           ; $41fc: $98
	sbc  c                                           ; $41fd: $99
	sbc  c                                           ; $41fe: $99
	adc  b                                           ; $41ff: $88
	sbc  c                                           ; $4200: $99
	ld   a, b                                        ; $4201: $78
	sbc  c                                           ; $4202: $99
	sbc  b                                           ; $4203: $98
	sbc  b                                           ; $4204: $98
	ld   [hl], a                                     ; $4205: $77
	ld   [hl], a                                     ; $4206: $77
	ld   h, a                                        ; $4207: $67
	adc  d                                           ; $4208: $8a
	sbc  c                                           ; $4209: $99
	adc  c                                           ; $420a: $89
	adc  b                                           ; $420b: $88
	adc  b                                           ; $420c: $88
	sbc  b                                           ; $420d: $98
	adc  b                                           ; $420e: $88
	adc  c                                           ; $420f: $89
	adc  b                                           ; $4210: $88
	adc  b                                           ; $4211: $88
	ld   [hl], a                                     ; $4212: $77
	halt                                             ; $4213: $76
	ld   h, a                                        ; $4214: $67
	sbc  c                                           ; $4215: $99
	sbc  b                                           ; $4216: $98
	sbc  c                                           ; $4217: $99
	adc  b                                           ; $4218: $88
	adc  c                                           ; $4219: $89
	sbc  b                                           ; $421a: $98
	adc  b                                           ; $421b: $88
	sbc  c                                           ; $421c: $99
	adc  b                                           ; $421d: $88
	adc  b                                           ; $421e: $88
	ld   [hl], a                                     ; $421f: $77
	ld   [hl], a                                     ; $4220: $77
	ld   a, b                                        ; $4221: $78
	sbc  b                                           ; $4222: $98
	ld   [hl], a                                     ; $4223: $77
	adc  b                                           ; $4224: $88
	adc  b                                           ; $4225: $88
	adc  b                                           ; $4226: $88
	adc  b                                           ; $4227: $88
	adc  b                                           ; $4228: $88
	adc  c                                           ; $4229: $89
	adc  b                                           ; $422a: $88
	adc  b                                           ; $422b: $88
	add  a                                           ; $422c: $87
	ld   [hl], a                                     ; $422d: $77
	adc  b                                           ; $422e: $88
	adc  c                                           ; $422f: $89
	add  a                                           ; $4230: $87
	ld   a, b                                        ; $4231: $78
	adc  b                                           ; $4232: $88
	adc  c                                           ; $4233: $89
	sbc  c                                           ; $4234: $99
	adc  b                                           ; $4235: $88
	adc  c                                           ; $4236: $89
	adc  b                                           ; $4237: $88
	adc  b                                           ; $4238: $88
	adc  b                                           ; $4239: $88
	adc  b                                           ; $423a: $88
	ld   a, b                                        ; $423b: $78
	adc  c                                           ; $423c: $89
	sbc  b                                           ; $423d: $98
	ld   [hl], a                                     ; $423e: $77
	adc  c                                           ; $423f: $89
	sbc  b                                           ; $4240: $98
	adc  b                                           ; $4241: $88
	adc  b                                           ; $4242: $88
	adc  b                                           ; $4243: $88
	adc  b                                           ; $4244: $88
	adc  b                                           ; $4245: $88
	adc  b                                           ; $4246: $88
	adc  b                                           ; $4247: $88
	ld   [hl], a                                     ; $4248: $77
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
	add  a                                           ; $431e: $87
	adc  c                                           ; $431f: $89
	adc  b                                           ; $4320: $88
	adc  b                                           ; $4321: $88
	adc  b                                           ; $4322: $88
	adc  b                                           ; $4323: $88
	adc  b                                           ; $4324: $88
	adc  b                                           ; $4325: $88
	adc  c                                           ; $4326: $89
	adc  b                                           ; $4327: $88
	ld   a, b                                        ; $4328: $78
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
	sbc  b                                           ; $4337: $98
	adc  b                                           ; $4338: $88
	adc  b                                           ; $4339: $88
	add  a                                           ; $433a: $87
	adc  b                                           ; $433b: $88
	adc  b                                           ; $433c: $88
	adc  c                                           ; $433d: $89
	sbc  b                                           ; $433e: $98
	adc  b                                           ; $433f: $88
	adc  b                                           ; $4340: $88
	ld   [hl], a                                     ; $4341: $77
	adc  b                                           ; $4342: $88
	add  a                                           ; $4343: $87
	adc  c                                           ; $4344: $89
	adc  b                                           ; $4345: $88
	adc  b                                           ; $4346: $88
	adc  c                                           ; $4347: $89
	adc  c                                           ; $4348: $89
	sbc  b                                           ; $4349: $98
	adc  b                                           ; $434a: $88
	adc  b                                           ; $434b: $88
	ld   [hl], a                                     ; $434c: $77
	ld   a, b                                        ; $434d: $78
	adc  b                                           ; $434e: $88
	add  a                                           ; $434f: $87
	sbc  c                                           ; $4350: $99
	sbc  c                                           ; $4351: $99
	sbc  b                                           ; $4352: $98
	adc  b                                           ; $4353: $88
	ld   [hl], a                                     ; $4354: $77
	ld   [hl], a                                     ; $4355: $77
	ld   [hl], a                                     ; $4356: $77
	add  a                                           ; $4357: $87
	adc  b                                           ; $4358: $88
	sbc  b                                           ; $4359: $98
	ld   a, b                                        ; $435a: $78
	xor  h                                           ; $435b: $ac
	and  a                                           ; $435c: $a7
	ld   h, a                                        ; $435d: $67
	halt                                             ; $435e: $76
	ld   h, a                                        ; $435f: $67
	adc  c                                           ; $4360: $89
	adc  b                                           ; $4361: $88
	sbc  b                                           ; $4362: $98
	ld   [hl], a                                     ; $4363: $77
	sbc  d                                           ; $4364: $9a
	cp   d                                           ; $4365: $ba
	add  [hl]                                        ; $4366: $86
	ld   h, l                                        ; $4367: $65
	ld   h, a                                        ; $4368: $67
	ld   a, b                                        ; $4369: $78
	sbc  c                                           ; $436a: $99
	adc  b                                           ; $436b: $88
	ld   [hl], a                                     ; $436c: $77
	adc  d                                           ; $436d: $8a
	xor  d                                           ; $436e: $aa
	and  a                                           ; $436f: $a7
	ld   h, [hl]                                     ; $4370: $66
	ld   h, l                                        ; $4371: $65
	ld   l, c                                        ; $4372: $69
	sbc  d                                           ; $4373: $9a
	sbc  b                                           ; $4374: $98
	add  a                                           ; $4375: $87
	ld   l, b                                        ; $4376: $68
	call z, Call_0ec_7787                            ; $4377: $cc $87 $77
	ld   h, l                                        ; $437a: $65
	ld   d, a                                        ; $437b: $57
	xor  d                                           ; $437c: $aa
	adc  b                                           ; $437d: $88
	ld   a, b                                        ; $437e: $78
	sbc  c                                           ; $437f: $99
	cp   e                                           ; $4380: $bb
	xor  b                                           ; $4381: $a8
	ld   h, [hl]                                     ; $4382: $66
	ld   d, l                                        ; $4383: $55
	ld   h, a                                        ; $4384: $67
	xor  c                                           ; $4385: $a9
	adc  c                                           ; $4386: $89
	add  a                                           ; $4387: $87
	adc  d                                           ; $4388: $8a
	cp   d                                           ; $4389: $ba
	ld   [hl], a                                     ; $438a: $77
	halt                                             ; $438b: $76
	ld   d, l                                        ; $438c: $55
	ld   a, b                                        ; $438d: $78
	sbc  c                                           ; $438e: $99
	adc  d                                           ; $438f: $8a
	adc  b                                           ; $4390: $88
	cp   h                                           ; $4391: $bc
	xor  b                                           ; $4392: $a8
	ld   h, a                                        ; $4393: $67
	halt                                             ; $4394: $76
	ld   d, l                                        ; $4395: $55
	adc  c                                           ; $4396: $89
	sbc  b                                           ; $4397: $98
	adc  c                                           ; $4398: $89
	sbc  d                                           ; $4399: $9a
	cp   d                                           ; $439a: $ba
	add  a                                           ; $439b: $87
	ld   h, [hl]                                     ; $439c: $66
	ld   d, l                                        ; $439d: $55
	ld   a, b                                        ; $439e: $78
	sbc  b                                           ; $439f: $98
	sbc  d                                           ; $43a0: $9a
	sbc  d                                           ; $43a1: $9a
	cp   e                                           ; $43a2: $bb
	xor  b                                           ; $43a3: $a8
	ld   d, l                                        ; $43a4: $55
	ld   d, [hl]                                     ; $43a5: $56
	ld   h, [hl]                                     ; $43a6: $66
	ld   a, b                                        ; $43a7: $78
	sbc  c                                           ; $43a8: $99
	sbc  d                                           ; $43a9: $9a
	xor  l                                           ; $43aa: $ad
	or   [hl]                                        ; $43ab: $b6
	ld   d, [hl]                                     ; $43ac: $56
	halt                                             ; $43ad: $76
	ld   b, l                                        ; $43ae: $45
	ld   a, d                                        ; $43af: $7a
	xor  c                                           ; $43b0: $a9
	adc  c                                           ; $43b1: $89
	xor  h                                           ; $43b2: $ac
	or   a                                           ; $43b3: $b7
	ld   h, [hl]                                     ; $43b4: $66
	ld   [hl], l                                     ; $43b5: $75
	ld   [hl], $89                                   ; $43b6: $36 $89
	adc  c                                           ; $43b8: $89
	cp   e                                           ; $43b9: $bb
	xor  e                                           ; $43ba: $ab
	sub  a                                           ; $43bb: $97
	halt                                             ; $43bc: $76
	ld   h, h                                        ; $43bd: $64
	ld   b, [hl]                                     ; $43be: $46
	ld   a, c                                        ; $43bf: $79
	adc  d                                           ; $43c0: $8a
	sbc  e                                           ; $43c1: $9b
	jp   z, $9677                                    ; $43c2: $ca $77 $96

	ld   b, e                                        ; $43c5: $43
	ld   l, c                                        ; $43c6: $69
	add  a                                           ; $43c7: $87
	adc  e                                           ; $43c8: $8b
	call z, Call_0ec_75ca                            ; $43c9: $cc $ca $75
	halt                                             ; $43cc: $76
	ld   b, l                                        ; $43cd: $45
	ld   l, c                                        ; $43ce: $69
	sbc  b                                           ; $43cf: $98
	xor  h                                           ; $43d0: $ac
	db   $ec                                         ; $43d1: $ec
	ld   [hl], a                                     ; $43d2: $77
	adc  b                                           ; $43d3: $88
	ld   h, e                                        ; $43d4: $63
	ld   b, [hl]                                     ; $43d5: $46
	ld   a, b                                        ; $43d6: $78
	adc  d                                           ; $43d7: $8a
	xor  e                                           ; $43d8: $ab
	jp   c, Jump_0ec_6686                            ; $43d9: $da $86 $66

	ld   d, h                                        ; $43dc: $54
	ld   d, a                                        ; $43dd: $57
	sbc  b                                           ; $43de: $98
	sbc  e                                           ; $43df: $9b
	db   $db                                         ; $43e0: $db
	add  a                                           ; $43e1: $87
	ld   a, b                                        ; $43e2: $78
	ld   h, h                                        ; $43e3: $64
	ld   b, a                                        ; $43e4: $47
	sbc  b                                           ; $43e5: $98
	ld   a, c                                        ; $43e6: $79
	rst  JumpTable                                         ; $43e7: $df
	or   l                                           ; $43e8: $b5
	ld   a, c                                        ; $43e9: $79
	ld   [hl], h                                     ; $43ea: $74
	ld   b, a                                        ; $43eb: $47
	ld   a, c                                        ; $43ec: $79
	adc  c                                           ; $43ed: $89
	cp   e                                           ; $43ee: $bb
	xor  b                                           ; $43ef: $a8
	ld   [hl], a                                     ; $43f0: $77
	ld   [hl], l                                     ; $43f1: $75
	ld   d, l                                        ; $43f2: $55
	ld   a, d                                        ; $43f3: $7a
	adc  b                                           ; $43f4: $88
	sbc  h                                           ; $43f5: $9c
	ret  z                                           ; $43f6: $c8

	ld   h, a                                        ; $43f7: $67
	sub  [hl]                                        ; $43f8: $96
	ld   b, [hl]                                     ; $43f9: $46
	adc  c                                           ; $43fa: $89
	adc  c                                           ; $43fb: $89
	xor  h                                           ; $43fc: $ac
	sub  a                                           ; $43fd: $97
	ld   [hl], a                                     ; $43fe: $77
	ld   h, l                                        ; $43ff: $65
	ld   l, b                                        ; $4400: $68
	ld   [hl], a                                     ; $4401: $77
	sbc  d                                           ; $4402: $9a
	cp   d                                           ; $4403: $ba
	sub  [hl]                                        ; $4404: $96
	ld   h, a                                        ; $4405: $67
	halt                                             ; $4406: $76
	ld   d, a                                        ; $4407: $57
	ld   a, c                                        ; $4408: $79
	xor  e                                           ; $4409: $ab
	cp   e                                           ; $440a: $bb
	halt                                             ; $440b: $76
	ld   [hl], a                                     ; $440c: $77
	ld   h, l                                        ; $440d: $65
	ld   [hl], a                                     ; $440e: $77
	sbc  c                                           ; $440f: $99
	xor  e                                           ; $4410: $ab
	and  a                                           ; $4411: $a7
	ld   e, b                                        ; $4412: $58
	sub  a                                           ; $4413: $97
	ld   b, [hl]                                     ; $4414: $46
	sbc  c                                           ; $4415: $99
	sbc  b                                           ; $4416: $98
	cp   e                                           ; $4417: $bb
	halt                                             ; $4418: $76
	xor  c                                           ; $4419: $a9
	ld   d, h                                        ; $441a: $54
	ld   l, c                                        ; $441b: $69
	add  a                                           ; $441c: $87
	sbc  h                                           ; $441d: $9c
	ret  c                                           ; $441e: $d8

	ld   c, b                                        ; $441f: $48
	sub  [hl]                                        ; $4420: $96
	ld   b, h                                        ; $4421: $44
	adc  b                                           ; $4422: $88
	adc  c                                           ; $4423: $89
	cp   l                                           ; $4424: $bd
	and  l                                           ; $4425: $a5
	ld   a, b                                        ; $4426: $78
	halt                                             ; $4427: $76
	ld   d, a                                        ; $4428: $57
	ld   a, b                                        ; $4429: $78
	xor  h                                           ; $442a: $ac
	or   a                                           ; $442b: $b7
	ld   l, d                                        ; $442c: $6a
	sub  [hl]                                        ; $442d: $96
	ld   b, [hl]                                     ; $442e: $46
	add  a                                           ; $442f: $87
	ld   a, c                                        ; $4430: $79
	call Call_0ec_58a6                               ; $4431: $cd $a6 $58
	add  [hl]                                        ; $4434: $86
	ld   b, [hl]                                     ; $4435: $46
	sbc  c                                           ; $4436: $99
	sbc  d                                           ; $4437: $9a
	jp   z, $9767                                    ; $4438: $ca $67 $97

	ld   d, l                                        ; $443b: $55
	ld   a, b                                        ; $443c: $78
	ld   a, c                                        ; $443d: $79
	cp   d                                           ; $443e: $ba
	add  a                                           ; $443f: $87
	adc  d                                           ; $4440: $8a
	ld   h, l                                        ; $4441: $65
	ld   h, [hl]                                     ; $4442: $66
	adc  c                                           ; $4443: $89
	xor  e                                           ; $4444: $ab
	xor  c                                           ; $4445: $a9
	ld   a, c                                        ; $4446: $79
	add  a                                           ; $4447: $87
	ld   d, l                                        ; $4448: $55
	ld   [hl], a                                     ; $4449: $77
	adc  d                                           ; $444a: $8a
	jp   z, $8976                                    ; $444b: $ca $76 $89

	ld   [hl], l                                     ; $444e: $75
	ld   h, a                                        ; $444f: $67
	sbc  d                                           ; $4450: $9a
	sbc  e                                           ; $4451: $9b
	sbc  b                                           ; $4452: $98
	ld   a, b                                        ; $4453: $78
	add  [hl]                                        ; $4454: $86
	ld   b, [hl]                                     ; $4455: $46
	ld   a, c                                        ; $4456: $79
	xor  e                                           ; $4457: $ab
	cp   b                                           ; $4458: $b8
	ld   l, c                                        ; $4459: $69
	sub  a                                           ; $445a: $97
	ld   b, l                                        ; $445b: $45
	sbc  d                                           ; $445c: $9a
	sub  a                                           ; $445d: $97
	cp   l                                           ; $445e: $bd
	halt                                             ; $445f: $76
	ld   a, c                                        ; $4460: $79
	add  h                                           ; $4461: $84
	ld   e, b                                        ; $4462: $58
	xor  d                                           ; $4463: $aa
	sbc  d                                           ; $4464: $9a
	sub  [hl]                                        ; $4465: $96
	adc  d                                           ; $4466: $8a
	ld   [hl], h                                     ; $4467: $74
	ld   c, c                                        ; $4468: $49
	cp   c                                           ; $4469: $b9
	adc  c                                           ; $446a: $89
	xor  c                                           ; $446b: $a9
	ld   h, a                                        ; $446c: $67
	sub  [hl]                                        ; $446d: $96
	ld   d, [hl]                                     ; $446e: $56
	sbc  d                                           ; $446f: $9a
	sbc  c                                           ; $4470: $99
	cp   d                                           ; $4471: $ba
	ld   h, [hl]                                     ; $4472: $66
	sbc  b                                           ; $4473: $98
	ld   d, l                                        ; $4474: $55

Jump_0ec_4475:
	adc  d                                           ; $4475: $8a
	sbc  c                                           ; $4476: $99
	xor  e                                           ; $4477: $ab
	sub  a                                           ; $4478: $97
	halt                                             ; $4479: $76
	ld   h, [hl]                                     ; $447a: $66
	ld   a, b                                        ; $447b: $78
	sbc  d                                           ; $447c: $9a
	xor  d                                           ; $447d: $aa
	halt                                             ; $447e: $76
	sbc  c                                           ; $447f: $99
	ld   h, l                                        ; $4480: $65
	ld   l, b                                        ; $4481: $68
	xor  c                                           ; $4482: $a9
	sbc  d                                           ; $4483: $9a
	cp   b                                           ; $4484: $b8
	ld   [hl], a                                     ; $4485: $77
	ld   [hl], h                                     ; $4486: $74
	ld   b, a                                        ; $4487: $47
	xor  c                                           ; $4488: $a9
	xor  d                                           ; $4489: $aa
	xor  d                                           ; $448a: $aa
	halt                                             ; $448b: $76
	sub  [hl]                                        ; $448c: $96
	ld   b, l                                        ; $448d: $45
	xor  d                                           ; $448e: $aa
	sbc  d                                           ; $448f: $9a
	xor  b                                           ; $4490: $a8
	ld   [hl], a                                     ; $4491: $77
	sub  a                                           ; $4492: $97
	ld   d, h                                        ; $4493: $54
	ld   l, d                                        ; $4494: $6a
	sbc  c                                           ; $4495: $99
	xor  e                                           ; $4496: $ab
	sub  [hl]                                        ; $4497: $96
	adc  b                                           ; $4498: $88
	ld   d, h                                        ; $4499: $54
	ld   e, c                                        ; $449a: $59
	sbc  c                                           ; $449b: $99
	cp   l                                           ; $449c: $bd
	sub  [hl]                                        ; $449d: $96
	ld   a, d                                        ; $449e: $7a
	ld   [hl], h                                     ; $449f: $74
	ld   b, a                                        ; $44a0: $47
	xor  d                                           ; $44a1: $aa
	ld   a, b                                        ; $44a2: $78
	call z, $8776                                    ; $44a3: $cc $76 $87
	ld   h, l                                        ; $44a6: $65

Call_0ec_44a7:
	ld   a, c                                        ; $44a7: $79
	xor  d                                           ; $44a8: $aa
	xor  e                                           ; $44a9: $ab
	sub  a                                           ; $44aa: $97
	add  [hl]                                        ; $44ab: $86
	ld   b, h                                        ; $44ac: $44
	ld   a, d                                        ; $44ad: $7a
	sbc  c                                           ; $44ae: $99
	xor  e                                           ; $44af: $ab
	cp   b                                           ; $44b0: $b8
	ld   a, b                                        ; $44b1: $78
	ld   h, h                                        ; $44b2: $64
	ld   l, b                                        ; $44b3: $68
	sbc  b                                           ; $44b4: $98
	ld   a, d                                        ; $44b5: $7a
	reti                                             ; $44b6: $d9


	ld   a, b                                        ; $44b7: $78
	halt                                             ; $44b8: $76
	ld   d, [hl]                                     ; $44b9: $56
	adc  b                                           ; $44ba: $88
	adc  c                                           ; $44bb: $89
	bit  6, [hl]                                     ; $44bc: $cb $76
	sub  a                                           ; $44be: $97
	ld   b, h                                        ; $44bf: $44
	ld   a, b                                        ; $44c0: $78
	adc  b                                           ; $44c1: $88
	sbc  l                                           ; $44c2: $9d
	rst  ToBoot                                         ; $44c3: $c7
	ld   d, a                                        ; $44c4: $57
	halt                                             ; $44c5: $76
	ld   h, [hl]                                     ; $44c6: $66
	adc  c                                           ; $44c7: $89
	adc  c                                           ; $44c8: $89
	cp   l                                           ; $44c9: $bd
	sub  a                                           ; $44ca: $97
	add  [hl]                                        ; $44cb: $86
	ld   h, l                                        ; $44cc: $65
	ld   a, c                                        ; $44cd: $79
	adc  b                                           ; $44ce: $88
	xor  a                                           ; $44cf: $af
	add  $57                                         ; $44d0: $c6 $57
	halt                                             ; $44d2: $76
	ld   h, a                                        ; $44d3: $67
	adc  b                                           ; $44d4: $88
	adc  c                                           ; $44d5: $89
	cp   l                                           ; $44d6: $bd
	add  [hl]                                        ; $44d7: $86
	ld   b, [hl]                                     ; $44d8: $46
	add  a                                           ; $44d9: $87
	ld   h, [hl]                                     ; $44da: $66
	adc  d                                           ; $44db: $8a
	cp   d                                           ; $44dc: $ba
	add  a                                           ; $44dd: $87
	xor  b                                           ; $44de: $a8
	ld   b, h                                        ; $44df: $44
	ld   a, c                                        ; $44e0: $79
	sub  a                                           ; $44e1: $97
	ld   a, d                                        ; $44e2: $7a
	db   $ec                                         ; $44e3: $ec
	ld   h, [hl]                                     ; $44e4: $66
	add  a                                           ; $44e5: $87
	ld   d, l                                        ; $44e6: $55
	ld   a, c                                        ; $44e7: $79
	add  a                                           ; $44e8: $87
	sbc  l                                           ; $44e9: $9d
	add  $67                                         ; $44ea: $c6 $67
	halt                                             ; $44ec: $76
	ld   d, a                                        ; $44ed: $57
	adc  b                                           ; $44ee: $88
	ld   l, d                                        ; $44ef: $6a
	db   $fc                                         ; $44f0: $fc
	halt                                             ; $44f1: $76
	ld   h, a                                        ; $44f2: $67
	ld   d, [hl]                                     ; $44f3: $56
	adc  b                                           ; $44f4: $88
	halt                                             ; $44f5: $76
	xor  [hl]                                        ; $44f6: $ae
	ret  c                                           ; $44f7: $d8

	ld   d, [hl]                                     ; $44f8: $56
	ld   [hl], a                                     ; $44f9: $77
	ld   d, [hl]                                     ; $44fa: $56
	ld   [hl], a                                     ; $44fb: $77
	ld   a, c                                        ; $44fc: $79
	adc  $95                                         ; $44fd: $ce $95
	ld   h, a                                        ; $44ff: $67
	ld   h, l                                        ; $4500: $65
	ld   a, b                                        ; $4501: $78
	ld   [hl], a                                     ; $4502: $77
	ld   a, e                                        ; $4503: $7b
	db   $ed                                         ; $4504: $ed
	ld   [hl], h                                     ; $4505: $74
	ld   l, c                                        ; $4506: $69
	ld   h, l                                        ; $4507: $65
	ld   l, b                                        ; $4508: $68
	ld   [hl], a                                     ; $4509: $77
	cp   l                                           ; $450a: $bd
	ret  z                                           ; $450b: $c8

	ld   h, a                                        ; $450c: $67
	ld   h, [hl]                                     ; $450d: $66
	ld   h, a                                        ; $450e: $67
	ld   [hl], a                                     ; $450f: $77
	adc  c                                           ; $4510: $89
	cp   l                                           ; $4511: $bd
	and  [hl]                                        ; $4512: $a6
	ld   l, b                                        ; $4513: $68
	ld   [hl], h                                     ; $4514: $74
	ld   [hl], a                                     ; $4515: $77
	ld   [hl], a                                     ; $4516: $77
	sbc  h                                           ; $4517: $9c
	db   $db                                         ; $4518: $db
	ld   h, a                                        ; $4519: $67
	halt                                             ; $451a: $76
	ld   d, [hl]                                     ; $451b: $56
	adc  b                                           ; $451c: $88
	halt                                             ; $451d: $76
	xor  l                                           ; $451e: $ad
	jp   c, Jump_0ec_5666                            ; $451f: $da $66 $56

	ld   [hl], a                                     ; $4522: $77
	ld   [hl], a                                     ; $4523: $77
	ld   a, b                                        ; $4524: $78
	adc  $c6                                         ; $4525: $ce $c6
	ld   b, [hl]                                     ; $4527: $46
	add  [hl]                                        ; $4528: $86
	ld   d, a                                        ; $4529: $57
	sbc  b                                           ; $452a: $98
	ld   a, d                                        ; $452b: $7a
	db   $dd                                         ; $452c: $dd
	sub  h                                           ; $452d: $94
	ld   h, a                                        ; $452e: $67
	ld   [hl], a                                     ; $452f: $77
	ld   h, a                                        ; $4530: $67
	add  a                                           ; $4531: $87
	adc  e                                           ; $4532: $8b
	db   $db                                         ; $4533: $db
	ld   h, h                                        ; $4534: $64
	ld   l, b                                        ; $4535: $68
	ld   h, [hl]                                     ; $4536: $66
	ld   [hl], a                                     ; $4537: $77
	adc  c                                           ; $4538: $89
	sbc  e                                           ; $4539: $9b
	jp   c, Jump_0ec_6666                            ; $453a: $da $66 $66

	ld   a, b                                        ; $453d: $78
	ld   [hl], a                                     ; $453e: $77
	ld   [hl], a                                     ; $453f: $77
	xor  h                                           ; $4540: $ac
	ret  z                                           ; $4541: $c8

	ld   h, [hl]                                     ; $4542: $66
	ld   h, a                                        ; $4543: $67
	ld   h, a                                        ; $4544: $67
	ld   h, a                                        ; $4545: $67
	ld   a, b                                        ; $4546: $78
	call Call_0ec_45c7                               ; $4547: $cd $c7 $45
	ld   a, c                                        ; $454a: $79
	ld   h, [hl]                                     ; $454b: $66
	ld   l, b                                        ; $454c: $68
	sbc  c                                           ; $454d: $99
	res  4, [hl]                                     ; $454e: $cb $a6
	ld   l, b                                        ; $4550: $68
	add  [hl]                                        ; $4551: $86
	ld   d, [hl]                                     ; $4552: $56
	sbc  b                                           ; $4553: $98
	ld   a, b                                        ; $4554: $78
	cp   [hl]                                        ; $4555: $be
	and  l                                           ; $4556: $a5
	ld   b, a                                        ; $4557: $47
	add  a                                           ; $4558: $87
	ld   h, a                                        ; $4559: $67
	ld   [hl], a                                     ; $455a: $77
	adc  c                                           ; $455b: $89
	call z, Call_0ec_66a7                            ; $455c: $cc $a7 $66
	ld   h, a                                        ; $455f: $67
	halt                                             ; $4560: $76
	ld   [hl], a                                     ; $4561: $77
	adc  e                                           ; $4562: $8b
	call z, Call_0ec_7676                            ; $4563: $cc $76 $76
	halt                                             ; $4566: $76
	ld   [hl], a                                     ; $4567: $77
	ld   a, b                                        ; $4568: $78
	adc  e                                           ; $4569: $8b
	db   $dd                                         ; $456a: $dd
	add  l                                           ; $456b: $85
	ld   d, [hl]                                     ; $456c: $56
	halt                                             ; $456d: $76
	ld   h, a                                        ; $456e: $67
	adc  b                                           ; $456f: $88
	sbc  d                                           ; $4570: $9a
	bit  6, [hl]                                     ; $4571: $cb $76
	ld   h, [hl]                                     ; $4573: $66
	ld   h, a                                        ; $4574: $67
	adc  b                                           ; $4575: $88
	add  a                                           ; $4576: $87
	adc  e                                           ; $4577: $8b
	bit  6, l                                        ; $4578: $cb $75
	ld   d, a                                        ; $457a: $57
	add  a                                           ; $457b: $87
	ld   h, [hl]                                     ; $457c: $66
	add  a                                           ; $457d: $87
	adc  d                                           ; $457e: $8a
	cp   e                                           ; $457f: $bb
	sub  [hl]                                        ; $4580: $96
	ld   d, a                                        ; $4581: $57
	ld   a, c                                        ; $4582: $79
	halt                                             ; $4583: $76
	adc  c                                           ; $4584: $89
	xor  d                                           ; $4585: $aa
	cp   d                                           ; $4586: $ba
	add  a                                           ; $4587: $87
	adc  b                                           ; $4588: $88
	ld   h, l                                        ; $4589: $65
	ld   a, b                                        ; $458a: $78
	ld   [hl], a                                     ; $458b: $77
	adc  d                                           ; $458c: $8a
	cp   h                                           ; $458d: $bc
	sub  [hl]                                        ; $458e: $96
	ld   d, [hl]                                     ; $458f: $56
	sub  a                                           ; $4590: $97
	add  a                                           ; $4591: $87
	ld   h, a                                        ; $4592: $67
	adc  c                                           ; $4593: $89
	xor  e                                           ; $4594: $ab
	xor  b                                           ; $4595: $a8
	ld   d, [hl]                                     ; $4596: $56
	ld   [hl], a                                     ; $4597: $77
	ld   [hl], a                                     ; $4598: $77
	ld   h, a                                        ; $4599: $67
	sbc  c                                           ; $459a: $99
	xor  d                                           ; $459b: $aa
	cp   b                                           ; $459c: $b8
	ld   d, [hl]                                     ; $459d: $56
	ld   [hl], a                                     ; $459e: $77
	adc  b                                           ; $459f: $88
	ld   h, [hl]                                     ; $45a0: $66
	adc  d                                           ; $45a1: $8a
	xor  d                                           ; $45a2: $aa
	xor  e                                           ; $45a3: $ab
	and  l                                           ; $45a4: $a5
	ld   b, a                                        ; $45a5: $47
	sub  a                                           ; $45a6: $97
	ld   d, a                                        ; $45a7: $57
	sbc  b                                           ; $45a8: $98
	ld   a, b                                        ; $45a9: $78
	cp   e                                           ; $45aa: $bb
	sub  [hl]                                        ; $45ab: $96
	ld   h, [hl]                                     ; $45ac: $66
	ld   [hl], a                                     ; $45ad: $77
	adc  b                                           ; $45ae: $88
	ld   h, a                                        ; $45af: $67
	adc  d                                           ; $45b0: $8a
	xor  e                                           ; $45b1: $ab
	or   a                                           ; $45b2: $b7
	halt                                             ; $45b3: $76
	ld   [hl], a                                     ; $45b4: $77
	adc  b                                           ; $45b5: $88
	ld   h, a                                        ; $45b6: $67
	adc  d                                           ; $45b7: $8a
	xor  c                                           ; $45b8: $a9
	xor  d                                           ; $45b9: $aa
	add  a                                           ; $45ba: $87
	ld   h, [hl]                                     ; $45bb: $66
	adc  b                                           ; $45bc: $88
	halt                                             ; $45bd: $76
	adc  c                                           ; $45be: $89
	sbc  b                                           ; $45bf: $98
	sbc  d                                           ; $45c0: $9a
	and  [hl]                                        ; $45c1: $a6
	ld   d, [hl]                                     ; $45c2: $56
	adc  c                                           ; $45c3: $89
	ld   [hl], l                                     ; $45c4: $75
	ld   l, c                                        ; $45c5: $69
	xor  c                                           ; $45c6: $a9

Call_0ec_45c7:
	adc  d                                           ; $45c7: $8a
	cp   b                                           ; $45c8: $b8
	ld   h, l                                        ; $45c9: $65
	add  a                                           ; $45ca: $87
	ld   [hl], a                                     ; $45cb: $77
	ld   a, b                                        ; $45cc: $78
	ld   a, b                                        ; $45cd: $78
	xor  d                                           ; $45ce: $aa
	sbc  c                                           ; $45cf: $99
	sub  a                                           ; $45d0: $97
	ld   d, [hl]                                     ; $45d1: $56
	adc  c                                           ; $45d2: $89
	halt                                             ; $45d3: $76
	adc  c                                           ; $45d4: $89
	sbc  d                                           ; $45d5: $9a
	xor  c                                           ; $45d6: $a9
	adc  b                                           ; $45d7: $88
	halt                                             ; $45d8: $76
	ld   e, b                                        ; $45d9: $58
	sub  a                                           ; $45da: $97
	ld   d, a                                        ; $45db: $57
	xor  d                                           ; $45dc: $aa
	adc  c                                           ; $45dd: $89
	sbc  b                                           ; $45de: $98
	halt                                             ; $45df: $76
	adc  b                                           ; $45e0: $88
	add  a                                           ; $45e1: $87
	ld   a, b                                        ; $45e2: $78
	adc  b                                           ; $45e3: $88
	sbc  e                                           ; $45e4: $9b
	xor  b                                           ; $45e5: $a8
	ld   h, [hl]                                     ; $45e6: $66
	ld   l, b                                        ; $45e7: $68
	sbc  b                                           ; $45e8: $98
	ld   h, l                                        ; $45e9: $65
	adc  d                                           ; $45ea: $8a
	sbc  b                                           ; $45eb: $98
	sbc  e                                           ; $45ec: $9b
	add  [hl]                                        ; $45ed: $86
	ld   h, a                                        ; $45ee: $67
	adc  b                                           ; $45ef: $88
	ld   [hl], a                                     ; $45f0: $77
	ld   a, b                                        ; $45f1: $78
	sbc  b                                           ; $45f2: $98
	adc  c                                           ; $45f3: $89
	sbc  d                                           ; $45f4: $9a
	add  a                                           ; $45f5: $87
	halt                                             ; $45f6: $76
	adc  b                                           ; $45f7: $88
	ld   [hl], a                                     ; $45f8: $77
	ld   a, c                                        ; $45f9: $79
	sbc  c                                           ; $45fa: $99
	xor  d                                           ; $45fb: $aa
	sub  a                                           ; $45fc: $97
	halt                                             ; $45fd: $76
	ld   a, c                                        ; $45fe: $79
	sub  a                                           ; $45ff: $97
	ld   h, a                                        ; $4600: $67
	adc  c                                           ; $4601: $89
	adc  c                                           ; $4602: $89
	xor  d                                           ; $4603: $aa
	sub  a                                           ; $4604: $97
	halt                                             ; $4605: $76
	ld   a, b                                        ; $4606: $78
	halt                                             ; $4607: $76
	ld   a, c                                        ; $4608: $79
	sbc  b                                           ; $4609: $98
	adc  c                                           ; $460a: $89
	xor  c                                           ; $460b: $a9
	halt                                             ; $460c: $76
	ld   a, b                                        ; $460d: $78
	ld   [hl], a                                     ; $460e: $77
	ld   [hl], a                                     ; $460f: $77
	ld   [hl], a                                     ; $4610: $77
	sbc  d                                           ; $4611: $9a
	xor  b                                           ; $4612: $a8
	adc  b                                           ; $4613: $88
	ld   [hl], a                                     ; $4614: $77
	ld   a, c                                        ; $4615: $79
	sub  a                                           ; $4616: $97
	ld   h, a                                        ; $4617: $67
	sbc  c                                           ; $4618: $99
	sbc  b                                           ; $4619: $98
	sbc  d                                           ; $461a: $9a
	add  a                                           ; $461b: $87
	ld   h, a                                        ; $461c: $67
	adc  b                                           ; $461d: $88
	halt                                             ; $461e: $76
	ld   a, c                                        ; $461f: $79
	xor  c                                           ; $4620: $a9
	adc  c                                           ; $4621: $89
	adc  b                                           ; $4622: $88
	sbc  b                                           ; $4623: $98
	ld   [hl], a                                     ; $4624: $77
	adc  b                                           ; $4625: $88
	add  a                                           ; $4626: $87
	add  a                                           ; $4627: $87
	adc  c                                           ; $4628: $89
	sbc  b                                           ; $4629: $98
	adc  b                                           ; $462a: $88
	sub  a                                           ; $462b: $97
	ld   a, b                                        ; $462c: $78
	ld   a, b                                        ; $462d: $78
	ld   [hl], a                                     ; $462e: $77
	ld   a, b                                        ; $462f: $78
	sbc  b                                           ; $4630: $98
	sbc  c                                           ; $4631: $99
	sbc  b                                           ; $4632: $98
	ld   [hl], a                                     ; $4633: $77
	ld   a, b                                        ; $4634: $78
	adc  b                                           ; $4635: $88
	ld   [hl], a                                     ; $4636: $77
	adc  b                                           ; $4637: $88
	adc  c                                           ; $4638: $89
	xor  d                                           ; $4639: $aa
	add  a                                           ; $463a: $87
	adc  b                                           ; $463b: $88
	ld   [hl], a                                     ; $463c: $77
	sbc  c                                           ; $463d: $99
	halt                                             ; $463e: $76
	adc  c                                           ; $463f: $89
	add  a                                           ; $4640: $87
	adc  c                                           ; $4641: $89
	sbc  b                                           ; $4642: $98
	ld   a, b                                        ; $4643: $78
	add  a                                           ; $4644: $87
	ld   a, b                                        ; $4645: $78
	add  a                                           ; $4646: $87
	ld   a, b                                        ; $4647: $78
	sbc  c                                           ; $4648: $99
	adc  c                                           ; $4649: $89
	sbc  c                                           ; $464a: $99
	ld   [hl], a                                     ; $464b: $77
	adc  b                                           ; $464c: $88
	add  a                                           ; $464d: $87
	add  a                                           ; $464e: $87
	adc  b                                           ; $464f: $88
	sbc  b                                           ; $4650: $98
	sbc  b                                           ; $4651: $98
	sbc  b                                           ; $4652: $98
	ld   a, b                                        ; $4653: $78
	ld   a, c                                        ; $4654: $79
	sub  a                                           ; $4655: $97
	ld   a, b                                        ; $4656: $78
	adc  b                                           ; $4657: $88
	adc  b                                           ; $4658: $88
	adc  b                                           ; $4659: $88
	adc  c                                           ; $465a: $89
	adc  b                                           ; $465b: $88
	sbc  b                                           ; $465c: $98
	add  a                                           ; $465d: $87
	ld   a, b                                        ; $465e: $78
	adc  c                                           ; $465f: $89
	adc  b                                           ; $4660: $88
	adc  b                                           ; $4661: $88
	adc  c                                           ; $4662: $89
	sbc  b                                           ; $4663: $98
	adc  b                                           ; $4664: $88
	ld   [hl], a                                     ; $4665: $77
	adc  b                                           ; $4666: $88
	add  a                                           ; $4667: $87
	adc  c                                           ; $4668: $89
	adc  b                                           ; $4669: $88
	adc  c                                           ; $466a: $89
	sbc  b                                           ; $466b: $98
	ld   a, b                                        ; $466c: $78
	sbc  b                                           ; $466d: $98
	ld   a, b                                        ; $466e: $78
	sbc  b                                           ; $466f: $98
	adc  b                                           ; $4670: $88
	adc  b                                           ; $4671: $88
	adc  c                                           ; $4672: $89
	sbc  b                                           ; $4673: $98
	adc  b                                           ; $4674: $88

Call_0ec_4675:
	adc  b                                           ; $4675: $88
	ld   a, b                                        ; $4676: $78
	sbc  b                                           ; $4677: $98
	ld   [hl], a                                     ; $4678: $77
	adc  b                                           ; $4679: $88
	add  a                                           ; $467a: $87
	adc  b                                           ; $467b: $88
	adc  b                                           ; $467c: $88
	ld   a, b                                        ; $467d: $78
	adc  b                                           ; $467e: $88
	adc  b                                           ; $467f: $88
	adc  b                                           ; $4680: $88
	adc  b                                           ; $4681: $88
	adc  b                                           ; $4682: $88
	adc  b                                           ; $4683: $88
	ld   a, b                                        ; $4684: $78
	adc  b                                           ; $4685: $88
	adc  b                                           ; $4686: $88
	adc  b                                           ; $4687: $88
	sbc  b                                           ; $4688: $98
	adc  b                                           ; $4689: $88
	adc  b                                           ; $468a: $88
	ld   a, b                                        ; $468b: $78
	adc  c                                           ; $468c: $89
	adc  b                                           ; $468d: $88
	adc  b                                           ; $468e: $88
	adc  b                                           ; $468f: $88
	sbc  b                                           ; $4690: $98
	adc  b                                           ; $4691: $88
	adc  b                                           ; $4692: $88
	adc  b                                           ; $4693: $88

Jump_0ec_4694:
	ld   a, b                                        ; $4694: $78
	adc  b                                           ; $4695: $88
	adc  b                                           ; $4696: $88
	adc  b                                           ; $4697: $88
	adc  b                                           ; $4698: $88
	sbc  b                                           ; $4699: $98
	add  a                                           ; $469a: $87
	adc  c                                           ; $469b: $89
	adc  b                                           ; $469c: $88
	ld   a, b                                        ; $469d: $78
	adc  c                                           ; $469e: $89
	adc  b                                           ; $469f: $88
	adc  b                                           ; $46a0: $88
	adc  b                                           ; $46a1: $88
	adc  b                                           ; $46a2: $88
	adc  b                                           ; $46a3: $88
	sbc  b                                           ; $46a4: $98
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

Call_0ec_46df:
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
	add  a                                           ; $4791: $87
	ld   [hl], a                                     ; $4792: $77
	ld   a, b                                        ; $4793: $78
	sbc  c                                           ; $4794: $99
	adc  b                                           ; $4795: $88
	adc  b                                           ; $4796: $88
	sbc  b                                           ; $4797: $98
	adc  b                                           ; $4798: $88
	add  a                                           ; $4799: $87
	ld   h, l                                        ; $479a: $65
	ld   e, c                                        ; $479b: $59
	res  0, [hl]                                     ; $479c: $cb $86
	ld   l, c                                        ; $479e: $69
	xor  d                                           ; $479f: $aa
	cp   b                                           ; $47a0: $b8
	ld   h, h                                        ; $47a1: $64
	ld   b, [hl]                                     ; $47a2: $46
	sbc  e                                           ; $47a3: $9b
	ret                                              ; $47a4: $c9


	ld   d, l                                        ; $47a5: $55
	ld   a, d                                        ; $47a6: $7a
	cp   e                                           ; $47a7: $bb
	and  a                                           ; $47a8: $a7
	ld   b, e                                        ; $47a9: $43
	ld   b, l                                        ; $47aa: $45
	sbc  l                                           ; $47ab: $9d
	add  sp, $33                                     ; $47ac: $e8 $33
	ld   a, e                                        ; $47ae: $7b
	call c, Call_0ec_4675                            ; $47af: $dc $75 $46
	sbc  d                                           ; $47b2: $9a
	and  a                                           ; $47b3: $a7
	ld   h, l                                        ; $47b4: $65
	ld   a, c                                        ; $47b5: $79
	xor  e                                           ; $47b6: $ab
	sbc  b                                           ; $47b7: $98
	ld   a, b                                        ; $47b8: $78
	adc  c                                           ; $47b9: $89
	sbc  c                                           ; $47ba: $99
	ld   h, e                                        ; $47bb: $63
	dec  d                                           ; $47bc: $15
	rst  $28                                         ; $47bd: $ef
	and  h                                           ; $47be: $a4
	ld   c, b                                        ; $47bf: $48
	sbc  e                                           ; $47c0: $9b
	xor  c                                           ; $47c1: $a9
	add  l                                           ; $47c2: $85
	ld   b, [hl]                                     ; $47c3: $46
	xor  h                                           ; $47c4: $ac
	sub  a                                           ; $47c5: $97
	ld   h, [hl]                                     ; $47c6: $66
	ld   [hl], a                                     ; $47c7: $77
	adc  c                                           ; $47c8: $89
	xor  e                                           ; $47c9: $ab
	sub  [hl]                                        ; $47ca: $96
	ld   l, c                                        ; $47cb: $69
	xor  d                                           ; $47cc: $aa
	and  a                                           ; $47cd: $a7
	ld   d, e                                        ; $47ce: $53
	inc  h                                           ; $47cf: $24
	rst  JumpTable                                         ; $47d0: $df
	call nz, $9c15                                   ; $47d1: $c4 $15 $9c
	jp   z, Jump_0ec_4694                            ; $47d4: $ca $94 $46

	sbc  h                                           ; $47d7: $9c
	cp   b                                           ; $47d8: $b8
	ld   d, l                                        ; $47d9: $55
	ld   a, e                                        ; $47da: $7b
	cp   c                                           ; $47db: $b9
	ld   h, e                                        ; $47dc: $63
	ld   c, c                                        ; $47dd: $49
	db   $db                                         ; $47de: $db
	sub  [hl]                                        ; $47df: $96
	ld   a, c                                        ; $47e0: $79
	sbc  d                                           ; $47e1: $9a
	add  [hl]                                        ; $47e2: $86
	ld   hl, $fc4d                                   ; $47e3: $21 $4d $fc
	ld   hl, $cd6a                                   ; $47e6: $21 $6a $cd
	sbc  c                                           ; $47e9: $99
	ld   b, d                                        ; $47ea: $42
	ld   c, b                                        ; $47eb: $48
	call c, Call_0ec_6696                            ; $47ec: $dc $96 $66
	adc  d                                           ; $47ef: $8a
	jp   z, Jump_0ec_5875                            ; $47f0: $ca $75 $58

	xor  c                                           ; $47f3: $a9
	sbc  b                                           ; $47f4: $98
	halt                                             ; $47f5: $76
	ld   d, h                                        ; $47f6: $54
	ld   b, a                                        ; $47f7: $47
	rst  JumpTable                                         ; $47f8: $df
	or   d                                           ; $47f9: $b2
	ld   d, $ee                                      ; $47fa: $16 $ee
	cp   b                                           ; $47fc: $b8
	ld   [hl], l                                     ; $47fd: $75
	ld   b, [hl]                                     ; $47fe: $46
	halt                                             ; $47ff: $76
	inc  [hl]                                        ; $4800: $34
	rst  $38                                         ; $4801: $ff
	add  c                                           ; $4802: $81
	dec  sp                                          ; $4803: $3b
	call Call_0ec_6496                               ; $4804: $cd $96 $64
	ld   a, c                                        ; $4807: $79
	cp   d                                           ; $4808: $ba
	add  [hl]                                        ; $4809: $86
	ld   l, c                                        ; $480a: $69
	xor  e                                           ; $480b: $ab
	ld   h, e                                        ; $480c: $63
	rla                                              ; $480d: $17
	rst  $38                                         ; $480e: $ff
	add  d                                           ; $480f: $82
	ld   l, d                                        ; $4810: $6a
	cp   e                                           ; $4811: $bb
	xor  d                                           ; $4812: $aa
	ld   h, h                                        ; $4813: $64
	inc  hl                                          ; $4814: $23
	ld   b, d                                        ; $4815: $42
	rst  $28                                         ; $4816: $ef
	pop  de                                          ; $4817: $d1
	ld   d, $ef                                      ; $4818: $16 $ef
	push af                                          ; $481a: $f5
	ld   h, c                                        ; $481b: $61
	scf                                              ; $481c: $37
	rst  JumpTable                                         ; $481d: $df
	and  l                                           ; $481e: $a5
	daa                                              ; $481f: $27
	halt                                             ; $4820: $76
	dec  d                                           ; $4821: $15
	rst  $38                                         ; $4822: $ff
	ld   [hl], c                                     ; $4823: $71
	ld   a, [de]                                     ; $4824: $1a
	rst  $28                                         ; $4825: $ef
	ret                                              ; $4826: $c9


	ld   sp, $ea4b                                   ; $4827: $31 $4b $ea
	ld   d, d                                        ; $482a: $52
	ld   de, $f6df                                   ; $482b: $11 $df $f6
	inc  d                                           ; $482e: $14
	ld   a, a                                        ; $482f: $7f
	db   $fc                                         ; $4830: $fc
	sub  c                                           ; $4831: $91
	dec  d                                           ; $4832: $15
	res  0, l                                        ; $4833: $cb $85
	ld   [de], a                                     ; $4835: $12
	rst  $38                                         ; $4836: $ff
	call nz, $9d47                                   ; $4837: $c4 $47 $9d
	xor  l                                           ; $483a: $ad
	add  h                                           ; $483b: $84
	ld   b, h                                        ; $483c: $44
	sub  [hl]                                        ; $483d: $96
	ld   d, c                                        ; $483e: $51
	ld   e, a                                        ; $483f: $5f
	ld   sp, hl                                      ; $4840: $f9
	inc  d                                           ; $4841: $14
	sbc  l                                           ; $4842: $9d
	add  sp, -$5b                                    ; $4843: $e8 $a5
	ld   b, [hl]                                     ; $4845: $46
	sbc  h                                           ; $4846: $9c
	add  l                                           ; $4847: $85
	ld   de, $f76f                                   ; $4848: $11 $6f $f7
	ld   de, $ff6b                                   ; $484b: $11 $6b $ff
	di                                               ; $484e: $f3
	ld   de, $d9bf                                   ; $484f: $11 $bf $d9
	ld   de, $ff1f                                   ; $4852: $11 $1f $ff
	ld   de, rAUDENA                                   ; $4855: $11 $26 $ff
	ld   a, [$3d11]                                  ; $4858: $fa $11 $3d
	db   $fc                                         ; $485b: $fc
	ld   sp, $ff19                                   ; $485c: $31 $19 $ff
	add  c                                           ; $485f: $81
	inc  d                                           ; $4860: $14
	cp   a                                           ; $4861: $bf
	rst  $38                                         ; $4862: $ff
	ld   de, $fe19                                   ; $4863: $11 $19 $fe
	ld   h, c                                        ; $4866: $61
	ld   [de], a                                     ; $4867: $12
	rst  $38                                         ; $4868: $ff
	pop  bc                                          ; $4869: $c1
	inc  de                                          ; $486a: $13
	adc  a                                           ; $486b: $8f
	cp   $41                                         ; $486c: $fe $41
	dec  h                                           ; $486e: $25
	db   $dd                                         ; $486f: $dd
	sub  c                                           ; $4870: $91
	ld   de, $f1ff                                   ; $4871: $11 $ff $f1
	ld   [de], a                                     ; $4874: $12
	ld   a, a                                        ; $4875: $7f
	cp   $71                                         ; $4876: $fe $71
	inc  d                                           ; $4878: $14

jr_0ec_4879:
	db   $ed                                         ; $4879: $ed
	ld   [hl], c                                     ; $487a: $71
	ld   de, $f3ff                                   ; $487b: $11 $ff $f3
	inc  de                                          ; $487e: $13
	adc  a                                           ; $487f: $8f
	cp   $71                                         ; $4880: $fe $71
	ld   h, $c8                                      ; $4882: $26 $c8
	ld   b, c                                        ; $4884: $41
	ld   a, [de]                                     ; $4885: $1a
	rst  $38                                         ; $4886: $ff
	ld   [hl], c                                     ; $4887: $71
	jr   z, jr_0ec_4879                              ; $4888: $28 $ef

	swap d                                           ; $488a: $cb $32
	ld   e, d                                        ; $488c: $5a
	or   h                                           ; $488d: $b4
	ld   de, $ff2f                                   ; $488e: $11 $2f $ff
	ld   [hl], d                                     ; $4891: $72
	ld   c, c                                        ; $4892: $49
	xor  $d9                                         ; $4893: $ee $d9
	inc  h                                           ; $4895: $24
	ld   d, a                                        ; $4896: $57
	ld   d, e                                        ; $4897: $53
	ld   de, $e6ff                                   ; $4898: $11 $ff $e6
	ld   b, [hl]                                     ; $489b: $46
	sbc  h                                           ; $489c: $9c
	cp   l                                           ; $489d: $bd
	and  e                                           ; $489e: $a3
	ld   b, l                                        ; $489f: $45
	ld   h, h                                        ; $48a0: $64
	ld   hl, $fe4e                                   ; $48a1: $21 $4e $fe
	add  [hl]                                        ; $48a4: $86
	sbc  d                                           ; $48a5: $9a
	cp   c                                           ; $48a6: $b9
	ret  z                                           ; $48a7: $c8

	ld   b, l                                        ; $48a8: $45
	inc  [hl]                                        ; $48a9: $34
	ld   [hl+], a                                    ; $48aa: $22
	dec  sp                                          ; $48ab: $3b
	db   $fc                                         ; $48ac: $fc
	cp   c                                           ; $48ad: $b9
	xor  b                                           ; $48ae: $a8
	xor  h                                           ; $48af: $ac
	jp   z, $3622                                    ; $48b0: $ca $22 $36

	ld   d, e                                        ; $48b3: $53
	ld   c, e                                        ; $48b4: $4b
	ld   a, [wPostPrologueScriptEngineGameState]                                  ; $48b5: $fa $9a $cc
	call c, $1195                                    ; $48b8: $dc $95 $11
	ld   d, [hl]                                     ; $48bb: $56
	ld   d, d                                        ; $48bc: $52
	adc  [hl]                                        ; $48bd: $8e
	xor  c                                           ; $48be: $a9
	sbc  h                                           ; $48bf: $9c
	cp   l                                           ; $48c0: $bd
	ld   [CheckIfReachedLastKanjiIdxInCurrTextBox], a                                  ; $48c1: $ea $71 $14
	ld   d, l                                        ; $48c4: $55
	rla                                              ; $48c5: $17
	db   $fc                                         ; $48c6: $fc
	adc  d                                           ; $48c7: $8a
	res  7, [hl]                                     ; $48c8: $cb $be
	jp   c, $3411                                    ; $48ca: $da $11 $34

	ld   d, d                                        ; $48cd: $52
	ld   c, [hl]                                     ; $48ce: $4e
	ld   hl, sp-$65                                  ; $48cf: $f8 $9b
	set  5, a                                        ; $48d1: $cb $ef
	sub  e                                           ; $48d3: $93
	ld   de, $5455                                   ; $48d4: $11 $55 $54
	adc  $97                                         ; $48d7: $ce $97
	cp   [hl]                                        ; $48d9: $be
	xor  $ea                                         ; $48da: $ee $ea
	ld   b, c                                        ; $48dc: $41
	inc  d                                           ; $48dd: $14
	ld   d, h                                        ; $48de: $54
	ld   h, $fc                                      ; $48df: $26 $fc
	adc  h                                           ; $48e1: $8c
	db   $db                                         ; $48e2: $db
	xor  l                                           ; $48e3: $ad
	jp   hl                                          ; $48e4: $e9


	ld   b, c                                        ; $48e5: $41
	inc  de                                          ; $48e6: $13
	ld   b, h                                        ; $48e7: $44
	ld   c, e                                        ; $48e8: $4b
	add  sp, -$43                                    ; $48e9: $e8 $bd
	cp   d                                           ; $48eb: $ba
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48ec: $cf
	add  $11                                         ; $48ed: $c6 $11
	inc  sp                                          ; $48ef: $33
	ld   b, h                                        ; $48f0: $44
	ld   a, e                                        ; $48f1: $7b
	cp   c                                           ; $48f2: $b9
	db   $ed                                         ; $48f3: $ed
	sbc  d                                           ; $48f4: $9a
	rst  $28                                         ; $48f5: $ef
	and  l                                           ; $48f6: $a5
	ld   de, $6524                                   ; $48f7: $11 $24 $65
	ld   l, d                                        ; $48fa: $6a
	xor  d                                           ; $48fb: $aa
	db   $ed                                         ; $48fc: $ed
	xor  e                                           ; $48fd: $ab
	db   $fd                                         ; $48fe: $fd
	add  h                                           ; $48ff: $84
	inc  hl                                          ; $4900: $23
	ld   [hl-], a                                    ; $4901: $32
	ld   [hl+], a                                    ; $4902: $22
	adc  a                                           ; $4903: $8f
	jp   z, $9cca                                    ; $4904: $ca $ca $9c

	db   $ed                                         ; $4907: $ed
	and  h                                           ; $4908: $a4
	ld   [de], a                                     ; $4909: $12
	inc  sp                                          ; $490a: $33
	ld   [de], a                                     ; $490b: $12
	xor  a                                           ; $490c: $af
	call $abc9                                       ; $490d: $cd $c9 $ab
	db   $ec                                         ; $4910: $ec
	sub  h                                           ; $4911: $94
	ld   hl, $3612                                   ; $4912: $21 $12 $36
	adc  $ab                                         ; $4915: $ce $ab
	res  5, h                                        ; $4917: $cb $ac
	db   $eb                                         ; $4919: $eb
	ld   [hl], d                                     ; $491a: $72
	ld   [hl+], a                                    ; $491b: $22
	ld   de, $be15                                   ; $491c: $11 $15 $be
	cp   [hl]                                        ; $491f: $be
	cp   c                                           ; $4920: $b9
	cp   l                                           ; $4921: $bd
	db   $ec                                         ; $4922: $ec
	ld   [hl], d                                     ; $4923: $72
	ld   de, $2721                                   ; $4924: $11 $21 $27
	call z, $caae                                    ; $4927: $cc $ae $ca
	sbc  l                                           ; $492a: $9d
	ei                                               ; $492b: $fb
	ld   [hl], d                                     ; $492c: $72
	ld   hl, $4811                                   ; $492d: $21 $11 $48
	call c, $babf                                    ; $4930: $dc $bf $ba
	cp   [hl]                                        ; $4933: $be
	jp   c, $1172                                    ; $4934: $da $72 $11

	ld   de, $fe28                                   ; $4937: $11 $28 $fe
	cp   l                                           ; $493a: $bd
	jp   c, $ea9d                                    ; $493b: $da $9d $ea

	ld   h, d                                        ; $493e: $62
	ld   hl, $3811                                   ; $493f: $21 $11 $38
	db   $ed                                         ; $4942: $ed
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4943: $cf
	cp   d                                           ; $4944: $ba
	xor  [hl]                                        ; $4945: $ae
	db   $eb                                         ; $4946: $eb
	ld   [hl], d                                     ; $4947: $72
	ld   hl, $1811                                   ; $4948: $21 $11 $18
	cp   $ef                                         ; $494b: $fe $ef
	res  5, h                                        ; $494d: $cb $ac
	res  0, d                                        ; $494f: $cb $82
	ld   de, $3911                                   ; $4951: $11 $11 $39
	cp   $de                                         ; $4954: $fe $de
	db   $db                                         ; $4956: $db
	xor  l                                           ; $4957: $ad
	jp   z, $2174                                    ; $4958: $ca $74 $21

	ld   de, $fe3b                                   ; $495b: $11 $3b $fe
	rst  $38                                         ; $495e: $ff
	cp   c                                           ; $495f: $b9
	xor  l                                           ; $4960: $ad
	jp   z, $2174                                    ; $4961: $ca $74 $21

	ld   de, $fe19                                   ; $4964: $11 $19 $fe
	rst  $38                                         ; $4967: $ff
	db   $db                                         ; $4968: $db
	sbc  h                                           ; $4969: $9c
	cp   e                                           ; $496a: $bb
	sub  h                                           ; $496b: $94
	ld   sp, $2911                                   ; $496c: $31 $11 $29
	sbc  $ff                                         ; $496f: $de $ff
	jp   c, $a99c                                    ; $4971: $da $9c $a9

	add  [hl]                                        ; $4974: $86
	ld   b, c                                        ; $4975: $41
	ld   de, $de18                                   ; $4976: $11 $18 $de
	rst  $38                                         ; $4979: $ff
	db   $eb                                         ; $497a: $eb
	cp   e                                           ; $497b: $bb
	sbc  c                                           ; $497c: $99
	sub  a                                           ; $497d: $97
	ld   b, c                                        ; $497e: $41
	ld   de, $cd17                                   ; $497f: $11 $17 $cd
	rst  $38                                         ; $4982: $ff
	ei                                               ; $4983: $fb
	cp   h                                           ; $4984: $bc
	sbc  b                                           ; $4985: $98
	sbc  c                                           ; $4986: $99
	ld   b, c                                        ; $4987: $41
	ld   de, $bb16                                   ; $4988: $11 $16 $bb
	rst  $38                                         ; $498b: $ff
	db   $fd                                         ; $498c: $fd
	call z, Call_0ec_7996                            ; $498d: $cc $96 $79
	ld   h, d                                        ; $4990: $62
	ld   de, $a917                                   ; $4991: $11 $17 $a9
	rst  $28                                         ; $4994: $ef
	db   $fd                                         ; $4995: $fd
	db   $ed                                         ; $4996: $ed
	sub  [hl]                                        ; $4997: $96
	ld   a, c                                        ; $4998: $79
	ld   h, d                                        ; $4999: $62
	ld   de, $c813                                   ; $499a: $11 $13 $c8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $499d: $cf
	db   $fd                                         ; $499e: $fd
	rst  $28                                         ; $499f: $ef
	and  [hl]                                        ; $49a0: $a6
	ld   a, b                                        ; $49a1: $78
	ld   h, d                                        ; $49a2: $62
	ld   de, $a711                                   ; $49a3: $11 $11 $a7
	xor  a                                           ; $49a6: $af
	db   $fd                                         ; $49a7: $fd
	rst  $28                                         ; $49a8: $ef
	or   a                                           ; $49a9: $b7
	ld   a, c                                        ; $49aa: $79
	ld   h, e                                        ; $49ab: $63
	ld   sp, $9711                                   ; $49ac: $31 $11 $97
	ld   l, a                                        ; $49af: $6f
	rst  $38                                         ; $49b0: $ff
	rst  $38                                         ; $49b1: $ff
	reti                                             ; $49b2: $d9


	adc  b                                           ; $49b3: $88
	add  e                                           ; $49b4: $83
	ld   sp, $5811                                   ; $49b5: $31 $11 $58
	dec  a                                           ; $49b8: $3d
	rst  $38                                         ; $49b9: $ff
	rst  JumpTable                                         ; $49ba: $df
	ld   a, [$9498]                                  ; $49bb: $fa $98 $94
	inc  sp                                          ; $49be: $33
	ld   de, $3619                                   ; $49bf: $11 $19 $36
	rst  $38                                         ; $49c2: $ff
	rst  $38                                         ; $49c3: $ff
	cp   $a9                                         ; $49c4: $fe $a9
	and  [hl]                                        ; $49c6: $a6
	ld   b, h                                        ; $49c7: $44
	ld   de, $7115                                   ; $49c8: $11 $15 $71
	cp   a                                           ; $49cb: $bf
	call c, $cbff                                    ; $49cc: $dc $ff $cb
	xor  b                                           ; $49cf: $a8
	ld   d, [hl]                                     ; $49d0: $56
	ld   b, c                                        ; $49d1: $41
	ld   de, $2c65                                   ; $49d2: $11 $65 $2c
	db   $eb                                         ; $49d5: $eb
	rst  $28                                         ; $49d6: $ef
	db   $ed                                         ; $49d7: $ed
	res  2, [hl]                                     ; $49d8: $cb $96
	ld   [hl], l                                     ; $49da: $75
	ld   de, $6314                                   ; $49db: $11 $14 $63
	adc  l                                           ; $49de: $8d
	xor  h                                           ; $49df: $ac
	rst  $38                                         ; $49e0: $ff
	call c, Call_0ec_78c9                            ; $49e1: $dc $c9 $78
	ld   h, h                                        ; $49e4: $64
	ld   [hl-], a                                    ; $49e5: $32
	dec  [hl]                                        ; $49e6: $35
	ld   d, l                                        ; $49e7: $55
	adc  c                                           ; $49e8: $89
	sbc  e                                           ; $49e9: $9b
	call z, $bacb                                    ; $49ea: $cc $cb $ba
	adc  b                                           ; $49ed: $88
	ld   [hl], a                                     ; $49ee: $77
	halt                                             ; $49ef: $76
	ld   b, l                                        ; $49f0: $45
	ld   h, l                                        ; $49f1: $65
	ld   d, a                                        ; $49f2: $57
	add  a                                           ; $49f3: $87
	adc  d                                           ; $49f4: $8a
	cp   e                                           ; $49f5: $bb
	xor  e                                           ; $49f6: $ab
	xor  d                                           ; $49f7: $aa
	sbc  b                                           ; $49f8: $98
	adc  c                                           ; $49f9: $89
	add  l                                           ; $49fa: $85
	ld   d, [hl]                                     ; $49fb: $56
	ld   d, [hl]                                     ; $49fc: $56
	ld   h, [hl]                                     ; $49fd: $66
	ld   [hl], a                                     ; $49fe: $77
	ld   a, b                                        ; $49ff: $78
	sbc  d                                           ; $4a00: $9a
	cp   e                                           ; $4a01: $bb
	xor  c                                           ; $4a02: $a9
	sbc  c                                           ; $4a03: $99
	ld   a, c                                        ; $4a04: $79
	add  a                                           ; $4a05: $87
	adc  c                                           ; $4a06: $89
	ld   d, [hl]                                     ; $4a07: $56
	sub  a                                           ; $4a08: $97
	ld   e, b                                        ; $4a09: $58
	sub  [hl]                                        ; $4a0a: $96
	ld   l, b                                        ; $4a0b: $68
	ld   [hl], a                                     ; $4a0c: $77
	sbc  c                                           ; $4a0d: $99
	adc  b                                           ; $4a0e: $88
	adc  b                                           ; $4a0f: $88
	sbc  d                                           ; $4a10: $9a
	cp   b                                           ; $4a11: $b8
	sbc  d                                           ; $4a12: $9a
	sbc  c                                           ; $4a13: $99
	adc  c                                           ; $4a14: $89
	add  [hl]                                        ; $4a15: $86
	ld   h, [hl]                                     ; $4a16: $66
	ld   h, [hl]                                     ; $4a17: $66
	ld   h, [hl]                                     ; $4a18: $66
	ld   [hl], a                                     ; $4a19: $77
	ld   a, b                                        ; $4a1a: $78
	sbc  b                                           ; $4a1b: $98
	sbc  d                                           ; $4a1c: $9a
	xor  d                                           ; $4a1d: $aa
	xor  c                                           ; $4a1e: $a9
	xor  c                                           ; $4a1f: $a9
	add  a                                           ; $4a20: $87
	adc  c                                           ; $4a21: $89
	halt                                             ; $4a22: $76
	halt                                             ; $4a23: $76
	ld   h, a                                        ; $4a24: $67
	ld   [hl], a                                     ; $4a25: $77
	ld   [hl], a                                     ; $4a26: $77
	adc  b                                           ; $4a27: $88
	adc  b                                           ; $4a28: $88
	adc  c                                           ; $4a29: $89
	sbc  b                                           ; $4a2a: $98
	adc  c                                           ; $4a2b: $89
	adc  c                                           ; $4a2c: $89
	sbc  c                                           ; $4a2d: $99
	sbc  c                                           ; $4a2e: $99
	adc  c                                           ; $4a2f: $89
	ld   a, b                                        ; $4a30: $78
	ld   [hl], a                                     ; $4a31: $77
	ld   [hl], a                                     ; $4a32: $77
	ld   [hl], a                                     ; $4a33: $77
	ld   [hl], a                                     ; $4a34: $77
	ld   [hl], a                                     ; $4a35: $77
	adc  b                                           ; $4a36: $88
	adc  c                                           ; $4a37: $89
	adc  b                                           ; $4a38: $88
	sbc  c                                           ; $4a39: $99
	sbc  b                                           ; $4a3a: $98
	sbc  b                                           ; $4a3b: $98
	sbc  b                                           ; $4a3c: $98
	sbc  b                                           ; $4a3d: $98
	add  a                                           ; $4a3e: $87
	ld   [hl], a                                     ; $4a3f: $77
	ld   [hl], a                                     ; $4a40: $77
	ld   [hl], a                                     ; $4a41: $77
	ld   [hl], a                                     ; $4a42: $77
	ld   [hl], a                                     ; $4a43: $77
	adc  b                                           ; $4a44: $88
	adc  b                                           ; $4a45: $88
	sbc  b                                           ; $4a46: $98
	sbc  c                                           ; $4a47: $99
	sbc  c                                           ; $4a48: $99
	sbc  c                                           ; $4a49: $99
	sbc  c                                           ; $4a4a: $99
	adc  b                                           ; $4a4b: $88
	adc  b                                           ; $4a4c: $88
	ld   a, b                                        ; $4a4d: $78
	adc  b                                           ; $4a4e: $88
	adc  b                                           ; $4a4f: $88
	add  a                                           ; $4a50: $87
	ld   [hl], a                                     ; $4a51: $77
	add  a                                           ; $4a52: $87
	adc  b                                           ; $4a53: $88
	adc  b                                           ; $4a54: $88
	adc  b                                           ; $4a55: $88
	adc  b                                           ; $4a56: $88
	sbc  b                                           ; $4a57: $98
	adc  b                                           ; $4a58: $88
	adc  c                                           ; $4a59: $89
	adc  b                                           ; $4a5a: $88
	adc  b                                           ; $4a5b: $88
	adc  b                                           ; $4a5c: $88
	add  a                                           ; $4a5d: $87
	ld   [hl], a                                     ; $4a5e: $77
	ld   [hl], a                                     ; $4a5f: $77
	adc  b                                           ; $4a60: $88
	adc  b                                           ; $4a61: $88
	sbc  c                                           ; $4a62: $99
	adc  b                                           ; $4a63: $88
	sbc  b                                           ; $4a64: $98

Jump_0ec_4a65:
	adc  b                                           ; $4a65: $88
	adc  b                                           ; $4a66: $88
	adc  b                                           ; $4a67: $88
	ld   [hl], a                                     ; $4a68: $77
	adc  b                                           ; $4a69: $88
	adc  b                                           ; $4a6a: $88
	adc  b                                           ; $4a6b: $88
	adc  b                                           ; $4a6c: $88
	adc  b                                           ; $4a6d: $88
	adc  b                                           ; $4a6e: $88
	adc  b                                           ; $4a6f: $88
	adc  b                                           ; $4a70: $88
	adc  b                                           ; $4a71: $88
	adc  b                                           ; $4a72: $88
	adc  b                                           ; $4a73: $88
	adc  b                                           ; $4a74: $88
	adc  b                                           ; $4a75: $88
	adc  b                                           ; $4a76: $88
	adc  b                                           ; $4a77: $88
	adc  b                                           ; $4a78: $88
	adc  b                                           ; $4a79: $88
	adc  b                                           ; $4a7a: $88
	adc  b                                           ; $4a7b: $88
	adc  c                                           ; $4a7c: $89
	sbc  b                                           ; $4a7d: $98
	adc  b                                           ; $4a7e: $88
	adc  b                                           ; $4a7f: $88
	adc  b                                           ; $4a80: $88
	adc  b                                           ; $4a81: $88
	adc  b                                           ; $4a82: $88
	adc  b                                           ; $4a83: $88
	adc  b                                           ; $4a84: $88
	adc  c                                           ; $4a85: $89
	sbc  b                                           ; $4a86: $98
	adc  b                                           ; $4a87: $88
	adc  b                                           ; $4a88: $88
	adc  b                                           ; $4a89: $88
	adc  b                                           ; $4a8a: $88
	adc  b                                           ; $4a8b: $88
	adc  b                                           ; $4a8c: $88
	adc  b                                           ; $4a8d: $88
	adc  b                                           ; $4a8e: $88
	adc  b                                           ; $4a8f: $88
	adc  b                                           ; $4a90: $88
	adc  b                                           ; $4a91: $88
	adc  b                                           ; $4a92: $88
	adc  b                                           ; $4a93: $88
	adc  b                                           ; $4a94: $88
	adc  b                                           ; $4a95: $88
	adc  b                                           ; $4a96: $88
	adc  b                                           ; $4a97: $88
	adc  b                                           ; $4a98: $88
	adc  b                                           ; $4a99: $88
	adc  b                                           ; $4a9a: $88
	adc  b                                           ; $4a9b: $88
	adc  b                                           ; $4a9c: $88
	adc  b                                           ; $4a9d: $88
	adc  b                                           ; $4a9e: $88
	adc  b                                           ; $4a9f: $88
	adc  b                                           ; $4aa0: $88
	adc  b                                           ; $4aa1: $88
	adc  b                                           ; $4aa2: $88
	adc  b                                           ; $4aa3: $88
	adc  b                                           ; $4aa4: $88
	adc  b                                           ; $4aa5: $88
	adc  b                                           ; $4aa6: $88
	adc  b                                           ; $4aa7: $88
	adc  b                                           ; $4aa8: $88
	adc  b                                           ; $4aa9: $88
	adc  b                                           ; $4aaa: $88
	adc  b                                           ; $4aab: $88
	adc  b                                           ; $4aac: $88
	adc  b                                           ; $4aad: $88
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
	adc  b                                           ; $4b02: $88
	adc  b                                           ; $4b03: $88
	adc  b                                           ; $4b04: $88
	adc  b                                           ; $4b05: $88
	adc  b                                           ; $4b06: $88
	adc  b                                           ; $4b07: $88
	adc  b                                           ; $4b08: $88
	adc  b                                           ; $4b09: $88
	adc  b                                           ; $4b0a: $88
	adc  b                                           ; $4b0b: $88
	adc  b                                           ; $4b0c: $88
	adc  b                                           ; $4b0d: $88
	adc  b                                           ; $4b0e: $88
	adc  b                                           ; $4b0f: $88
	adc  b                                           ; $4b10: $88
	adc  b                                           ; $4b11: $88
	adc  b                                           ; $4b12: $88
	adc  b                                           ; $4b13: $88
	adc  b                                           ; $4b14: $88
	adc  b                                           ; $4b15: $88
	adc  b                                           ; $4b16: $88
	adc  b                                           ; $4b17: $88
	adc  b                                           ; $4b18: $88
	adc  b                                           ; $4b19: $88
	adc  b                                           ; $4b1a: $88
	adc  b                                           ; $4b1b: $88
	adc  b                                           ; $4b1c: $88
	adc  b                                           ; $4b1d: $88
	adc  b                                           ; $4b1e: $88
	adc  b                                           ; $4b1f: $88
	adc  b                                           ; $4b20: $88
	adc  b                                           ; $4b21: $88
	adc  b                                           ; $4b22: $88
	adc  b                                           ; $4b23: $88
	adc  b                                           ; $4b24: $88
	adc  b                                           ; $4b25: $88
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
	sbc  b                                           ; $4ba5: $98
	ld   l, c                                        ; $4ba6: $69
	add  [hl]                                        ; $4ba7: $86
	sub  a                                           ; $4ba8: $97
	sbc  c                                           ; $4ba9: $99
	ld   l, b                                        ; $4baa: $68
	adc  b                                           ; $4bab: $88
	sub  [hl]                                        ; $4bac: $96
	adc  c                                           ; $4bad: $89
	ld   a, b                                        ; $4bae: $78
	sub  a                                           ; $4baf: $97
	sbc  b                                           ; $4bb0: $98
	ld   a, b                                        ; $4bb1: $78
	ld   a, c                                        ; $4bb2: $79
	add  [hl]                                        ; $4bb3: $86
	or   a                                           ; $4bb4: $b7
	adc  c                                           ; $4bb5: $89
	adc  b                                           ; $4bb6: $88
	adc  b                                           ; $4bb7: $88
	adc  b                                           ; $4bb8: $88
	ld   [hl], a                                     ; $4bb9: $77
	adc  c                                           ; $4bba: $89
	ld   a, b                                        ; $4bbb: $78
	adc  c                                           ; $4bbc: $89
	add  a                                           ; $4bbd: $87
	sub  a                                           ; $4bbe: $97
	sbc  b                                           ; $4bbf: $98
	ld   a, c                                        ; $4bc0: $79
	add  a                                           ; $4bc1: $87
	adc  b                                           ; $4bc2: $88
	ld   a, b                                        ; $4bc3: $78
	adc  b                                           ; $4bc4: $88
	add  a                                           ; $4bc5: $87
	sbc  b                                           ; $4bc6: $98
	adc  b                                           ; $4bc7: $88
	adc  b                                           ; $4bc8: $88
	ld   a, b                                        ; $4bc9: $78
	adc  b                                           ; $4bca: $88
	adc  b                                           ; $4bcb: $88
	adc  b                                           ; $4bcc: $88
	adc  b                                           ; $4bcd: $88
	adc  b                                           ; $4bce: $88
	add  a                                           ; $4bcf: $87
	adc  b                                           ; $4bd0: $88
	adc  c                                           ; $4bd1: $89
	sbc  b                                           ; $4bd2: $98
	sub  a                                           ; $4bd3: $97
	ld   a, c                                        ; $4bd4: $79
	add  a                                           ; $4bd5: $87
	sub  a                                           ; $4bd6: $97
	ld   a, b                                        ; $4bd7: $78
	sbc  b                                           ; $4bd8: $98
	ld   a, b                                        ; $4bd9: $78
	adc  b                                           ; $4bda: $88
	adc  b                                           ; $4bdb: $88
	add  a                                           ; $4bdc: $87
	add  a                                           ; $4bdd: $87
	add  a                                           ; $4bde: $87
	adc  b                                           ; $4bdf: $88
	adc  c                                           ; $4be0: $89
	adc  c                                           ; $4be1: $89
	ld   a, c                                        ; $4be2: $79
	adc  b                                           ; $4be3: $88
	adc  b                                           ; $4be4: $88
	add  a                                           ; $4be5: $87
	add  a                                           ; $4be6: $87
	adc  b                                           ; $4be7: $88
	ld   a, b                                        ; $4be8: $78
	ld   [hl], a                                     ; $4be9: $77
	adc  c                                           ; $4bea: $89
	ld   a, b                                        ; $4beb: $78
	sub  a                                           ; $4bec: $97
	adc  c                                           ; $4bed: $89
	adc  b                                           ; $4bee: $88
	add  a                                           ; $4bef: $87
	add  a                                           ; $4bf0: $87
	ld   a, c                                        ; $4bf1: $79
	ld   [hl], a                                     ; $4bf2: $77
	and  a                                           ; $4bf3: $a7
	ld   a, c                                        ; $4bf4: $79
	adc  b                                           ; $4bf5: $88
	sbc  b                                           ; $4bf6: $98
	add  a                                           ; $4bf7: $87
	add  a                                           ; $4bf8: $87
	ld   a, b                                        ; $4bf9: $78
	adc  b                                           ; $4bfa: $88
	ld   a, c                                        ; $4bfb: $79
	sbc  b                                           ; $4bfc: $98
	adc  c                                           ; $4bfd: $89
	sbc  b                                           ; $4bfe: $98
	adc  b                                           ; $4bff: $88
	ld   a, b                                        ; $4c00: $78
	add  a                                           ; $4c01: $87
	ld   [hl], a                                     ; $4c02: $77
	ld   a, b                                        ; $4c03: $78
	adc  b                                           ; $4c04: $88
	adc  b                                           ; $4c05: $88
	adc  c                                           ; $4c06: $89
	sbc  c                                           ; $4c07: $99
	adc  b                                           ; $4c08: $88
	sbc  c                                           ; $4c09: $99
	sbc  b                                           ; $4c0a: $98
	sbc  b                                           ; $4c0b: $98
	adc  b                                           ; $4c0c: $88
	ld   [hl], a                                     ; $4c0d: $77
	ld   [hl], a                                     ; $4c0e: $77
	ld   [hl], a                                     ; $4c0f: $77
	ld   [hl], a                                     ; $4c10: $77
	adc  b                                           ; $4c11: $88
	adc  b                                           ; $4c12: $88
	sbc  c                                           ; $4c13: $99
	sbc  c                                           ; $4c14: $99
	sbc  b                                           ; $4c15: $98
	adc  c                                           ; $4c16: $89
	sbc  b                                           ; $4c17: $98
	add  a                                           ; $4c18: $87
	ld   [hl], a                                     ; $4c19: $77
	ld   [hl], a                                     ; $4c1a: $77
	ld   [hl], a                                     ; $4c1b: $77
	ld   a, b                                        ; $4c1c: $78
	ld   a, c                                        ; $4c1d: $79
	sbc  c                                           ; $4c1e: $99
	sbc  c                                           ; $4c1f: $99
	sbc  c                                           ; $4c20: $99
	sbc  c                                           ; $4c21: $99
	adc  c                                           ; $4c22: $89
	sbc  b                                           ; $4c23: $98
	ld   a, b                                        ; $4c24: $78
	ld   [hl], a                                     ; $4c25: $77
	add  [hl]                                        ; $4c26: $86
	ld   [hl], a                                     ; $4c27: $77
	ld   h, a                                        ; $4c28: $67
	ld   [hl], a                                     ; $4c29: $77
	adc  c                                           ; $4c2a: $89
	adc  c                                           ; $4c2b: $89
	adc  c                                           ; $4c2c: $89
	sbc  b                                           ; $4c2d: $98
	adc  c                                           ; $4c2e: $89
	sbc  b                                           ; $4c2f: $98
	adc  b                                           ; $4c30: $88
	sbc  b                                           ; $4c31: $98
	add  a                                           ; $4c32: $87
	adc  b                                           ; $4c33: $88
	ld   a, b                                        ; $4c34: $78
	ld   h, a                                        ; $4c35: $67
	add  [hl]                                        ; $4c36: $86
	adc  b                                           ; $4c37: $88
	ld   a, b                                        ; $4c38: $78
	adc  b                                           ; $4c39: $88
	sbc  c                                           ; $4c3a: $99
	adc  c                                           ; $4c3b: $89
	adc  c                                           ; $4c3c: $89
	xor  b                                           ; $4c3d: $a8
	sbc  b                                           ; $4c3e: $98
	adc  c                                           ; $4c3f: $89
	ld   [hl], a                                     ; $4c40: $77
	sub  [hl]                                        ; $4c41: $96
	add  a                                           ; $4c42: $87
	ld   e, c                                        ; $4c43: $59
	halt                                             ; $4c44: $76
	add  a                                           ; $4c45: $87
	ld   a, c                                        ; $4c46: $79
	adc  b                                           ; $4c47: $88
	cp   b                                           ; $4c48: $b8
	sbc  d                                           ; $4c49: $9a
	sbc  d                                           ; $4c4a: $9a
	sbc  b                                           ; $4c4b: $98
	sbc  b                                           ; $4c4c: $98
	add  a                                           ; $4c4d: $87
	ld   a, b                                        ; $4c4e: $78
	ld   h, a                                        ; $4c4f: $67
	ld   [hl], l                                     ; $4c50: $75
	sub  a                                           ; $4c51: $97
	ld   l, c                                        ; $4c52: $69
	ld   [hl], a                                     ; $4c53: $77
	xor  c                                           ; $4c54: $a9
	adc  e                                           ; $4c55: $8b
	adc  c                                           ; $4c56: $89
	xor  b                                           ; $4c57: $a8
	sbc  c                                           ; $4c58: $99
	adc  d                                           ; $4c59: $8a
	sub  a                                           ; $4c5a: $97
	add  [hl]                                        ; $4c5b: $86
	sub  [hl]                                        ; $4c5c: $96
	ld   l, b                                        ; $4c5d: $68
	ld   b, a                                        ; $4c5e: $47
	ld   [hl], l                                     ; $4c5f: $75
	adc  b                                           ; $4c60: $88
	ld   l, c                                        ; $4c61: $69

jr_0ec_4c62:
	and  a                                           ; $4c62: $a7
	cp   c                                           ; $4c63: $b9
	adc  e                                           ; $4c64: $8b
	sbc  c                                           ; $4c65: $99
	xor  b                                           ; $4c66: $a8
	sbc  c                                           ; $4c67: $99
	ld   h, a                                        ; $4c68: $67
	add  h                                           ; $4c69: $84
	ld   [hl], a                                     ; $4c6a: $77
	jr   c, jr_0ec_4ce1                              ; $4c6b: $38 $74

	sbc  c                                           ; $4c6d: $99
	ld   l, d                                        ; $4c6e: $6a
	sub  a                                           ; $4c6f: $97
	jp   z, $998c                                    ; $4c70: $ca $8c $99

	cp   b                                           ; $4c73: $b8
	adc  c                                           ; $4c74: $89
	ld   c, b                                        ; $4c75: $48
	ld   [hl], d                                     ; $4c76: $72
	add  l                                           ; $4c77: $85
	ld   a, [hl-]                                    ; $4c78: $3a

jr_0ec_4c79:
	ld   d, l                                        ; $4c79: $55
	and  a                                           ; $4c7a: $a7
	ld   a, l                                        ; $4c7b: $7d
	adc  c                                           ; $4c7c: $89
	add  sp, -$53                                    ; $4c7d: $e8 $ad
	ld   a, d                                        ; $4c7f: $7a
	or   [hl]                                        ; $4c80: $b6
	sub  [hl]                                        ; $4c81: $96
	ld   h, a                                        ; $4c82: $67
	scf                                              ; $4c83: $37
	ld   b, h                                        ; $4c84: $44
	add  l                                           ; $4c85: $85
	ld   l, c                                        ; $4c86: $69
	add  a                                           ; $4c87: $87
	ret  c                                           ; $4c88: $d8

	xor  [hl]                                        ; $4c89: $ae
	sbc  d                                           ; $4c8a: $9a
	rst  $10                                         ; $4c8b: $d7
	xor  e                                           ; $4c8c: $ab
	ld   l, b                                        ; $4c8d: $68
	ld   d, a                                        ; $4c8e: $57
	ld   b, h                                        ; $4c8f: $44
	add  d                                           ; $4c90: $82
	ld   l, b                                        ; $4c91: $68
	ld   b, a                                        ; $4c92: $47
	and  [hl]                                        ; $4c93: $a6
	xor  l                                           ; $4c94: $ad
	ld   a, h                                        ; $4c95: $7c
	rst  $10                                         ; $4c96: $d7
	call c, Call_0ec_756d                            ; $4c97: $dc $6d $75
	halt                                             ; $4c9a: $76
	ld   d, d                                        ; $4c9b: $52
	and  c                                           ; $4c9c: $a1
	ld   c, d                                        ; $4c9d: $4a
	scf                                              ; $4c9e: $37
	and  a                                           ; $4c9f: $a7
	adc  a                                           ; $4ca0: $8f
	ld   a, e                                        ; $4ca1: $7b
	rst  $30                                         ; $4ca2: $f7
	call $a26b                                       ; $4ca3: $cd $6b $a2
	ld   [hl], a                                     ; $4ca6: $77
	inc  hl                                          ; $4ca7: $23
	and  c                                           ; $4ca8: $a1
	ld   c, d                                        ; $4ca9: $4a
	jr   jr_0ec_4c62                                 ; $4caa: $18 $b6

	sbc  a                                           ; $4cac: $9f
	ld   l, l                                        ; $4cad: $6d
	or   $dc                                         ; $4cae: $f6 $dc
	ld   l, d                                        ; $4cb0: $6a
	and  c                                           ; $4cb1: $a1
	adc  b                                           ; $4cb2: $88
	rla                                              ; $4cb3: $17
	sub  c                                           ; $4cb4: $91
	sbc  d                                           ; $4cb5: $9a
	dec  de                                          ; $4cb6: $1b
	call nz, Call_0ec_5fef                           ; $4cb7: $c4 $ef $5f
	rst  ToBoot                                         ; $4cba: $c7
	ld   a, [$515c]                                  ; $4cbb: $fa $5c $51
	pop  de                                          ; $4cbe: $d1
	dec  e                                           ; $4cbf: $1d
	inc  de                                          ; $4cc0: $13
	db   $d3                                         ; $4cc1: $d3
	ld   e, a                                        ; $4cc2: $5f
	ld   e, c                                        ; $4cc3: $59
	or   $df                                         ; $4cc4: $f6 $df
	ld   a, d                                        ; $4cc6: $7a
	db   $e4                                         ; $4cc7: $e4
	adc  b                                           ; $4cc8: $88
	inc  e                                           ; $4cc9: $1c
	ld   hl, $3bb1                                   ; $4cca: $21 $b1 $3b
	ld   h, h                                        ; $4ccd: $64
	ld   hl, sp-$71                                  ; $4cce: $f8 $8f
	ld   a, e                                        ; $4cd0: $7b
	ld   sp, hl                                      ; $4cd1: $f9
	adc  [hl]                                        ; $4cd2: $8e
	ld   d, [hl]                                     ; $4cd3: $56
	ld   [hl], c                                     ; $4cd4: $71
	sub  c                                           ; $4cd5: $91
	ld   h, [hl]                                     ; $4cd6: $66
	add  hl, de                                      ; $4cd7: $19
	halt                                             ; $4cd8: $76
	xor  a                                           ; $4cd9: $af
	ld   l, a                                        ; $4cda: $6f
	or   $fc                                         ; $4cdb: $f6 $fc
	adc  e                                           ; $4cdd: $8b
	or   d                                           ; $4cde: $b2
	ld   [hl], e                                     ; $4cdf: $73
	ld   d, d                                        ; $4ce0: $52

jr_0ec_4ce1:
	add  hl, de                                      ; $4ce1: $19
	jr   jr_0ec_4c79                                 ; $4ce2: $18 $95

	sbc  a                                           ; $4ce4: $9f
	sbc  e                                           ; $4ce5: $9b
	or   $ee                                         ; $4ce6: $f6 $ee
	ld   a, d                                        ; $4ce8: $7a
	or   e                                           ; $4ce9: $b3
	ld   [hl], $41                                   ; $4cea: $36 $41
	add  hl, sp                                      ; $4cec: $39
	add  hl, de                                      ; $4ced: $19
	and  l                                           ; $4cee: $a5
	xor  a                                           ; $4cef: $af
	sbc  e                                           ; $4cf0: $9b
	db   $f4                                         ; $4cf1: $f4
	cp   $5b                                         ; $4cf2: $fe $5b
	and  e                                           ; $4cf4: $a3
	add  hl, de                                      ; $4cf5: $19
	ld   sp, $1ea5                                   ; $4cf6: $31 $a5 $1e
	add  l                                           ; $4cf9: $85
	rst  $28                                         ; $4cfa: $ef
	ld   l, a                                        ; $4cfb: $6f
	di                                               ; $4cfc: $f3
	ld   a, [$715a]                                  ; $4cfd: $fa $5a $71
	dec  sp                                          ; $4d00: $3b
	inc  d                                           ; $4d01: $14
	pop  de                                          ; $4d02: $d1
	adc  [hl]                                        ; $4d03: $8e
	ld   e, b                                        ; $4d04: $58
	ld   a, [$6a8f]                                  ; $4d05: $fa $8f $6a
	db   $f4                                         ; $4d08: $f4
	ld   a, c                                        ; $4d09: $79
	ld   hl, $1fd1                                   ; $4d0a: $21 $d1 $1f
	inc  de                                          ; $4d0d: $13
	ld   hl, sp+$6f                                  ; $4d0e: $f8 $6f
	db   $e4                                         ; $4d10: $e4
	ei                                               ; $4d11: $fb
	ld   e, a                                        ; $4d12: $5f
	ld   [hl], l                                     ; $4d13: $75
	add  e                                           ; $4d14: $83
	inc  e                                           ; $4d15: $1c
	ld   de, $4ff1                                   ; $4d16: $11 $f1 $4f
	and  a                                           ; $4d19: $a7
	rst  $38                                         ; $4d1a: $ff
	ld   l, a                                        ; $4d1b: $6f
	and  a                                           ; $4d1c: $a7
	rst  $20                                         ; $4d1d: $e7
	ld   b, a                                        ; $4d1e: $47
	ld   hl, $2dc1                                   ; $4d1f: $21 $c1 $2d
	add  hl, de                                      ; $4d22: $19
	jp   c, $c78f                                    ; $4d23: $da $8f $c7

	or   $ac                                         ; $4d26: $f6 $ac
	ld   h, h                                        ; $4d28: $64
	ld   d, c                                        ; $4d29: $51
	add  hl, sp                                      ; $4d2a: $39
	dec  de                                          ; $4d2b: $1b
	ld   [hl], c                                     ; $4d2c: $71
	db   $db                                         ; $4d2d: $db
	xor  e                                           ; $4d2e: $ab
	rst  $30                                         ; $4d2f: $f7
	rst  JumpTable                                         ; $4d30: $df
	ld   c, l                                        ; $4d31: $4d
	sub  l                                           ; $4d32: $95
	ld   b, e                                        ; $4d33: $43
	add  hl, de                                      ; $4d34: $19
	ld   de, $ace1                                   ; $4d35: $11 $e1 $ac
	ret                                              ; $4d38: $c9


	rst  $38                                         ; $4d39: $ff
	ld   e, a                                        ; $4d3a: $5f
	sub  a                                           ; $4d3b: $97
	or   [hl]                                        ; $4d3c: $b6
	ld   b, e                                        ; $4d3d: $43
	inc  d                                           ; $4d3e: $14
	ld   h, c                                        ; $4d3f: $61
	push de                                          ; $4d40: $d5
	ld   c, [hl]                                     ; $4d41: $4e
	cp   e                                           ; $4d42: $bb
	xor  a                                           ; $4d43: $af
	ld   l, l                                        ; $4d44: $6d
	db   $f4                                         ; $4d45: $f4
	or   a                                           ; $4d46: $b7
	ld   d, e                                        ; $4d47: $53
	ld   [hl+], a                                    ; $4d48: $22
	add  c                                           ; $4d49: $81
	adc  d                                           ; $4d4a: $8a
	ld   e, $bd                                      ; $4d4b: $1e $bd
	adc  a                                           ; $4d4d: $8f
	or   a                                           ; $4d4e: $b7
	push af                                          ; $4d4f: $f5
	sbc  c                                           ; $4d50: $99
	ld   d, e                                        ; $4d51: $53
	inc  de                                          ; $4d52: $13
	sub  c                                           ; $4d53: $91
	ld   e, [hl]                                     ; $4d54: $5e
	dec  e                                           ; $4d55: $1d
	call z, $f49f                                    ; $4d56: $cc $9f $f4
	rst  $30                                         ; $4d59: $f7
	ld   l, d                                        ; $4d5a: $6a
	ld   d, e                                        ; $4d5b: $53
	inc  de                                          ; $4d5c: $13
	add  c                                           ; $4d5d: $81
	cpl                                              ; $4d5e: $2f
	inc  e                                           ; $4d5f: $1c
	call c, $f3bc                                    ; $4d60: $dc $bc $f3
	ld   sp, hl                                      ; $4d63: $f9
	ld   e, c                                        ; $4d64: $59
	ld   h, h                                        ; $4d65: $64
	inc  de                                          ; $4d66: $13
	add  c                                           ; $4d67: $81
	rra                                              ; $4d68: $1f
	add  hl, de                                      ; $4d69: $19
	db   $eb                                         ; $4d6a: $eb
	cp   e                                           ; $4d6b: $bb
	db   $f4                                         ; $4d6c: $f4
	db   $ec                                         ; $4d6d: $ec
	ld   c, c                                        ; $4d6e: $49
	ld   h, l                                        ; $4d6f: $65
	ld   [de], a                                     ; $4d70: $12

jr_0ec_4d71:
	sub  c                                           ; $4d71: $91
	rra                                              ; $4d72: $1f
	jr   z, jr_0ec_4d71                              ; $4d73: $28 $fc

	cp   d                                           ; $4d75: $ba
	db   $f4                                         ; $4d76: $f4
	call Call_0ec_6658                               ; $4d77: $cd $58 $66
	ld   de, $1fa2                                   ; $4d7a: $11 $a2 $1f
	ld   b, a                                        ; $4d7d: $47
	call c, $f6d7                                    ; $4d7e: $dc $d7 $f6
	xor  l                                           ; $4d81: $ad
	ld   [hl], a                                     ; $4d82: $77
	ld   e, c                                        ; $4d83: $59
	ld   de, $1fb4                                   ; $4d84: $11 $b4 $1f
	ld   d, [hl]                                     ; $4d87: $56
	call z, $f9d6                                    ; $4d88: $cc $d6 $f9
	sbc  d                                           ; $4d8b: $9a
	sub  a                                           ; $4d8c: $97
	ld   c, c                                        ; $4d8d: $49
	ld   de, $1e97                                   ; $4d8e: $11 $97 $1e
	add  l                                           ; $4d91: $85
	cp   e                                           ; $4d92: $bb
	or   $fa                                         ; $4d93: $f6 $fa
	xor  c                                           ; $4d95: $a9
	sbc  c                                           ; $4d96: $99
	jr   c, jr_0ec_4dea                              ; $4d97: $38 $51

	ld   l, e                                        ; $4d99: $6b
	dec  de                                          ; $4d9a: $1b
	and  l                                           ; $4d9b: $a5
	cp   d                                           ; $4d9c: $ba
	or   $fc                                         ; $4d9d: $f6 $fc
	xor  c                                           ; $4d9f: $a9
	adc  h                                           ; $4da0: $8c
	ld   b, [hl]                                     ; $4da1: $46
	ld   h, c                                        ; $4da2: $61
	dec  l                                           ; $4da3: $2d
	dec  d                                           ; $4da4: $15
	push de                                          ; $4da5: $d5
	xor  c                                           ; $4da6: $a9
	ld   hl, sp-$43                                  ; $4da7: $f8 $bd
	sbc  d                                           ; $4da9: $9a
	ld   l, e                                        ; $4daa: $6b
	ld   [hl], h                                     ; $4dab: $74
	ld   [hl], h                                     ; $4dac: $74
	ld   a, [de]                                     ; $4dad: $1a
	ld   [hl], c                                     ; $4dae: $71
	ret  z                                           ; $4daf: $c8

	sbc  b                                           ; $4db0: $98
	cp   e                                           ; $4db1: $bb
	ld   a, h                                        ; $4db2: $7c
	sbc  d                                           ; $4db3: $9a
	ld   [hl], a                                     ; $4db4: $77
	or   l                                           ; $4db5: $b5
	ld   l, b                                        ; $4db6: $68
	inc  sp                                          ; $4db7: $33
	push bc                                          ; $4db8: $c5
	ld   c, l                                        ; $4db9: $4d
	adc  c                                           ; $4dba: $89
	adc  h                                           ; $4dbb: $8c
	and  a                                           ; $4dbc: $a7
	cp   c                                           ; $4dbd: $b9
	sub  a                                           ; $4dbe: $97
	adc  d                                           ; $4dbf: $8a
	ld   h, [hl]                                     ; $4dc0: $66
	ld   [hl], h                                     ; $4dc1: $74
	ld   e, h                                        ; $4dc2: $5c
	ld   b, [hl]                                     ; $4dc3: $46
	or   a                                           ; $4dc4: $b7
	sub  a                                           ; $4dc5: $97
	cp   c                                           ; $4dc6: $b9
	adc  e                                           ; $4dc7: $8b
	adc  d                                           ; $4dc8: $8a
	ld   a, b                                        ; $4dc9: $78
	sub  a                                           ; $4dca: $97
	ld   h, a                                        ; $4dcb: $67
	ld   h, a                                        ; $4dcc: $67
	and  l                                           ; $4dcd: $a5
	ld   a, d                                        ; $4dce: $7a
	ld   a, b                                        ; $4dcf: $78
	sbc  c                                           ; $4dd0: $99
	sbc  b                                           ; $4dd1: $98
	sbc  b                                           ; $4dd2: $98
	sbc  b                                           ; $4dd3: $98
	ld   a, b                                        ; $4dd4: $78
	add  a                                           ; $4dd5: $87

jr_0ec_4dd6:
	adc  b                                           ; $4dd6: $88
	ld   a, e                                        ; $4dd7: $7b
	ld   [hl], a                                     ; $4dd8: $77
	sub  a                                           ; $4dd9: $97
	sub  a                                           ; $4dda: $97
	ld   a, c                                        ; $4ddb: $79
	ld   a, b                                        ; $4ddc: $78
	ld   a, b                                        ; $4ddd: $78
	add  a                                           ; $4dde: $87
	sbc  c                                           ; $4ddf: $99
	adc  c                                           ; $4de0: $89
	adc  b                                           ; $4de1: $88
	xor  c                                           ; $4de2: $a9
	ld   [hl], a                                     ; $4de3: $77
	sub  a                                           ; $4de4: $97
	ld   [hl], a                                     ; $4de5: $77
	ld   [hl], a                                     ; $4de6: $77
	ld   [hl], a                                     ; $4de7: $77
	adc  c                                           ; $4de8: $89
	adc  c                                           ; $4de9: $89

jr_0ec_4dea:
	sbc  d                                           ; $4dea: $9a
	adc  c                                           ; $4deb: $89
	sbc  b                                           ; $4dec: $98
	and  a                                           ; $4ded: $a7
	ld   a, b                                        ; $4dee: $78
	ld   [hl], a                                     ; $4def: $77
	halt                                             ; $4df0: $76
	ld   [hl], a                                     ; $4df1: $77
	ld   [hl], a                                     ; $4df2: $77
	adc  c                                           ; $4df3: $89
	adc  c                                           ; $4df4: $89
	sbc  c                                           ; $4df5: $99
	sbc  c                                           ; $4df6: $99
	adc  b                                           ; $4df7: $88
	xor  b                                           ; $4df8: $a8
	ld   l, b                                        ; $4df9: $68
	ld   [hl], a                                     ; $4dfa: $77
	ld   h, [hl]                                     ; $4dfb: $66
	add  [hl]                                        ; $4dfc: $86
	adc  b                                           ; $4dfd: $88
	sbc  c                                           ; $4dfe: $99
	adc  c                                           ; $4dff: $89
	sbc  c                                           ; $4e00: $99
	sbc  c                                           ; $4e01: $99
	adc  b                                           ; $4e02: $88
	sub  a                                           ; $4e03: $97
	ld   l, b                                        ; $4e04: $68
	ld   [hl], a                                     ; $4e05: $77
	ld   h, a                                        ; $4e06: $67
	sub  a                                           ; $4e07: $97
	adc  b                                           ; $4e08: $88
	sbc  d                                           ; $4e09: $9a
	sbc  b                                           ; $4e0a: $98
	sbc  b                                           ; $4e0b: $98
	adc  b                                           ; $4e0c: $88
	ld   a, b                                        ; $4e0d: $78
	and  [hl]                                        ; $4e0e: $a6
	ld   l, b                                        ; $4e0f: $68
	ld   a, b                                        ; $4e10: $78
	ld   h, a                                        ; $4e11: $67
	add  a                                           ; $4e12: $87
	sbc  c                                           ; $4e13: $99
	sbc  c                                           ; $4e14: $99
	sbc  b                                           ; $4e15: $98
	xor  c                                           ; $4e16: $a9
	add  a                                           ; $4e17: $87
	ld   a, b                                        ; $4e18: $78
	add  l                                           ; $4e19: $85
	ld   l, b                                        ; $4e1a: $68
	ld   a, b                                        ; $4e1b: $78
	ld   l, c                                        ; $4e1c: $69
	sub  a                                           ; $4e1d: $97
	xor  b                                           ; $4e1e: $a8
	xor  c                                           ; $4e1f: $a9
	adc  c                                           ; $4e20: $89
	sbc  b                                           ; $4e21: $98
	halt                                             ; $4e22: $76
	ld   l, d                                        ; $4e23: $6a
	ld   [hl], h                                     ; $4e24: $74
	adc  b                                           ; $4e25: $88
	add  a                                           ; $4e26: $87
	ld   l, d                                        ; $4e27: $6a
	adc  b                                           ; $4e28: $88
	sbc  c                                           ; $4e29: $99
	cp   c                                           ; $4e2a: $b9
	adc  b                                           ; $4e2b: $88
	add  a                                           ; $4e2c: $87
	ld   h, l                                        ; $4e2d: $65
	adc  d                                           ; $4e2e: $8a
	ld   d, [hl]                                     ; $4e2f: $56
	adc  b                                           ; $4e30: $88
	and  [hl]                                        ; $4e31: $a6
	sbc  d                                           ; $4e32: $9a
	ld   a, d                                        ; $4e33: $7a
	ld   a, d                                        ; $4e34: $7a
	and  a                                           ; $4e35: $a7
	adc  c                                           ; $4e36: $89
	ld   [hl], a                                     ; $4e37: $77
	ld   d, l                                        ; $4e38: $55
	and  a                                           ; $4e39: $a7
	jr   c, jr_0ec_4dd6                              ; $4e3a: $38 $9a

	halt                                             ; $4e3c: $76
	ret  z                                           ; $4e3d: $c8

	sbc  c                                           ; $4e3e: $99
	adc  d                                           ; $4e3f: $8a
	ld   a, b                                        ; $4e40: $78
	sub  a                                           ; $4e41: $97
	ld   [hl], l                                     ; $4e42: $75
	ld   a, [hl-]                                    ; $4e43: $3a
	and  e                                           ; $4e44: $a3
	adc  d                                           ; $4e45: $8a
	sbc  d                                           ; $4e46: $9a
	ld   e, l                                        ; $4e47: $5d
	sub  [hl]                                        ; $4e48: $96
	and  [hl]                                        ; $4e49: $a6
	and  a                                           ; $4e4a: $a7
	ld   a, d                                        ; $4e4b: $7a
	ld   [hl], a                                     ; $4e4c: $77
	ld   d, e                                        ; $4e4d: $53
	adc  l                                           ; $4e4e: $8d
	scf                                              ; $4e4f: $37
	ret                                              ; $4e50: $c9


	or   h                                           ; $4e51: $b4
	call z, Call_0ec_794b                            ; $4e52: $cc $4b $79
	add  [hl]                                        ; $4e55: $86
	cp   b                                           ; $4e56: $b8
	ld   h, [hl]                                     ; $4e57: $66
	ld   [hl], $d3                                   ; $4e58: $36 $d3
	ld   e, l                                        ; $4e5a: $5d
	adc  h                                           ; $4e5b: $8c
	dec  sp                                          ; $4e5c: $3b
	pop  hl                                          ; $4e5d: $e1
	or   a                                           ; $4e5e: $b7
	sbc  c                                           ; $4e5f: $99
	ld   e, l                                        ; $4e60: $5d
	add  [hl]                                        ; $4e61: $86
	ld   h, d                                        ; $4e62: $62
	ld   e, [hl]                                     ; $4e63: $5e
	ld   b, h                                        ; $4e64: $44
	ld   hl, sp-$2d                                  ; $4e65: $f8 $d3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e67: $cf
	dec  de                                          ; $4e68: $1b
	ld   a, b                                        ; $4e69: $78
	add  l                                           ; $4e6a: $85
	ld   hl, sp+$66                                  ; $4e6b: $f8 $66
	ld   sp, $1fe9                                   ; $4e6d: $31 $e9 $1f
	sbc  l                                           ; $4e70: $9d
	ld   c, b                                        ; $4e71: $48
	pop  af                                          ; $4e72: $f1
	sbc  b                                           ; $4e73: $98
	ld   a, b                                        ; $4e74: $78
	ld   e, a                                        ; $4e75: $5f
	sub  a                                           ; $4e76: $97
	ld   h, l                                        ; $4e77: $65
	ld   a, [de]                                     ; $4e78: $1a
	pop  af                                          ; $4e79: $f1
	call z, $1fb9                                    ; $4e7a: $cc $b9 $1f
	ld   [hl-], a                                    ; $4e7d: $32
	or   l                                           ; $4e7e: $b5
	or   h                                           ; $4e7f: $b4
	db   $dd                                         ; $4e80: $dd
	ld   h, [hl]                                     ; $4e81: $66
	ld   d, c                                        ; $4e82: $51
	rra                                              ; $4e83: $1f
	ld   b, h                                        ; $4e84: $44
	ei                                               ; $4e85: $fb
	pop  de                                          ; $4e86: $d1
	db   $dd                                         ; $4e87: $dd
	dec  de                                          ; $4e88: $1b
	ld   a, d                                        ; $4e89: $7a
	adc  d                                           ; $4e8a: $8a
	rst  $30                                         ; $4e8b: $f7
	ld   d, h                                        ; $4e8c: $54
	ld   de, $1ffd                                   ; $4e8d: $11 $fd $1f
	call c, $f135                                    ; $4e90: $dc $35 $f1
	ld   e, e                                        ; $4e93: $5b
	adc  e                                           ; $4e94: $8b
	adc  a                                           ; $4e95: $8f
	or   l                                           ; $4e96: $b5
	ld   b, e                                        ; $4e97: $43
	inc  de                                          ; $4e98: $13
	or   $4f                                         ; $4e99: $f6 $4f
	cp   b                                           ; $4e9b: $b8
	inc  e                                           ; $4e9c: $1c
	pop  bc                                          ; $4e9d: $c1
	ret                                              ; $4e9e: $c9


	jp   z, Jump_0ec_53ce                            ; $4e9f: $ca $ce $53

	ld   sp, $f11f                                   ; $4ea2: $31 $1f $f1
	rst  $28                                         ; $4ea5: $ef
	add  d                                           ; $4ea6: $82
	rra                                              ; $4ea7: $1f
	ld   de, $e8fa                                   ; $4ea8: $11 $fa $e8
	ret                                              ; $4eab: $c9


	inc  sp                                          ; $4eac: $33
	ld   sp, $a12f                                   ; $4ead: $31 $2f $a1
	ld   a, [$9f61]                                  ; $4eb0: $fa $61 $9f
	dec  e                                           ; $4eb3: $1d
	db   $ed                                         ; $4eb4: $ed
	or   a                                           ; $4eb5: $b7
	or   l                                           ; $4eb6: $b5
	inc  [hl]                                        ; $4eb7: $34
	ld   hl, $1dff                                   ; $4eb8: $21 $ff $1d
	or   $11                                         ; $4ebb: $f6 $11
	di                                               ; $4ebd: $f3
	ld   c, a                                        ; $4ebe: $4f
	xor  h                                           ; $4ebf: $ac
	ld   e, b                                        ; $4ec0: $58
	sub  h                                           ; $4ec1: $94
	dec  [hl]                                        ; $4ec2: $35
	ld   a, [de]                                     ; $4ec3: $1a
	ldh  a, [c]                                      ; $4ec4: $f2
	ld   c, a                                        ; $4ec5: $4f
	ld   h, e                                        ; $4ec6: $63
	rra                                              ; $4ec7: $1f
	pop  bc                                          ; $4ec8: $c1
	db   $fc                                         ; $4ec9: $fc
	or   [hl]                                        ; $4eca: $b6
	ld   e, d                                        ; $4ecb: $5a
	ld   h, e                                        ; $4ecc: $63

jr_0ec_4ecd:
	ld   d, c                                        ; $4ecd: $51
	ld   a, a                                        ; $4ece: $7f
	ld   d, c                                        ; $4ecf: $51
	rst  $30                                         ; $4ed0: $f7
	ld   b, c                                        ; $4ed1: $41
	rst  $38                                         ; $4ed2: $ff
	rra                                              ; $4ed3: $1f
	jp   c, $9874                                    ; $4ed4: $da $74 $98

	dec  h                                           ; $4ed7: $25
	jr   jr_0ec_4ecd                                 ; $4ed8: $18 $f3

	rra                                              ; $4eda: $1f
	ld   h, e                                        ; $4edb: $63
	rra                                              ; $4edc: $1f
	pop  af                                          ; $4edd: $f1
	db   $fd                                         ; $4ede: $fd
	add  [hl]                                        ; $4edf: $86
	ld   c, c                                        ; $4ee0: $49
	sub  d                                           ; $4ee1: $92
	ld   b, c                                        ; $4ee2: $41
	cp   a                                           ; $4ee3: $bf
	inc  de                                          ; $4ee4: $13
	push af                                          ; $4ee5: $f5
	ld   sp, $2ffd                                   ; $4ee6: $31 $fd $2f
	cp   b                                           ; $4ee9: $b8
	ld   h, e                                        ; $4eea: $63
	sbc  c                                           ; $4eeb: $99
	inc  h                                           ; $4eec: $24
	rra                                              ; $4eed: $1f
	pop  af                                          ; $4eee: $f1
	ld   a, a                                        ; $4eef: $7f
	ld   b, c                                        ; $4ef0: $41
	rra                                              ; $4ef1: $1f
	and  e                                           ; $4ef2: $a3
	ld   a, [$4975]                                  ; $4ef3: $fa $75 $49
	add  c                                           ; $4ef6: $81
	inc  d                                           ; $4ef7: $14
	db   $fd                                         ; $4ef8: $fd
	rra                                              ; $4ef9: $1f
	sub  e                                           ; $4efa: $93
	add  hl, de                                      ; $4efb: $19
	di                                               ; $4efc: $f3
	xor  [hl]                                        ; $4efd: $ae
	add  [hl]                                        ; $4efe: $86
	ld   b, [hl]                                     ; $4eff: $46
	call nz, $df11                                   ; $4f00: $c4 $11 $df
	ld   de, $11f5                                   ; $4f03: $11 $f5 $11
	rst  $38                                         ; $4f06: $ff
	ld   a, $b6                                      ; $4f07: $3e $b6
	ld   h, e                                        ; $4f09: $63
	sbc  e                                           ; $4f0a: $9b
	ld   hl, $d14f                                   ; $4f0b: $21 $4f $d1
	db   $db                                         ; $4f0e: $db
	ld   sp, $58af                                   ; $4f0f: $31 $af $58
	add  sp, $64                                     ; $4f12: $e8 $64
	ld   l, e                                        ; $4f14: $6b
	ld   h, c                                        ; $4f15: $61
	rra                                              ; $4f16: $1f
	pop  af                                          ; $4f17: $f1

jr_0ec_4f18:
	ccf                                              ; $4f18: $3f
	ld   h, c                                        ; $4f19: $61
	rra                                              ; $4f1a: $1f
	db   $d3                                         ; $4f1b: $d3
	jp   c, Jump_0ec_4a65                            ; $4f1c: $da $65 $4a

	sub  c                                           ; $4f1f: $91
	jr   jr_0ec_4f18                                 ; $4f20: $18 $f6

	rra                                              ; $4f22: $1f
	and  e                                           ; $4f23: $a3
	ld   e, $f4                                      ; $4f24: $1e $f4
	sbc  h                                           ; $4f26: $9c
	halt                                             ; $4f27: $76
	ld   b, a                                        ; $4f28: $47
	jp   rAUD1HIGH                                       ; $4f29: $c3 $14 $ff


	dec  de                                          ; $4f2c: $1b
	push bc                                          ; $4f2d: $c5
	rla                                              ; $4f2e: $17
	rst  $30                                         ; $4f2f: $f7
	ld   a, h                                        ; $4f30: $7c
	ld   [hl], a                                     ; $4f31: $77
	ld   b, l                                        ; $4f32: $45
	sub  $11                                         ; $4f33: $d6 $11
	rst  $38                                         ; $4f35: $ff
	inc  d                                           ; $4f36: $14
	rst  $30                                         ; $4f37: $f7
	ld   de, $4cfd                                   ; $4f38: $11 $fd $4c
	add  [hl]                                        ; $4f3b: $86
	ld   h, h                                        ; $4f3c: $64
	cp   c                                           ; $4f3d: $b9
	ld   de, $11ff                                   ; $4f3e: $11 $ff $11
	ld   hl, sp+$21                                  ; $4f41: $f8 $21
	rst  $38                                         ; $4f43: $ff
	ld   c, c                                        ; $4f44: $49
	and  [hl]                                        ; $4f45: $a6
	ld   [hl], h                                     ; $4f46: $74
	sbc  h                                           ; $4f47: $9c
	ld   de, $41cf                                   ; $4f48: $11 $cf $41
	db   $eb                                         ; $4f4b: $eb
	ld   sp, $58ff                                   ; $4f4c: $31 $ff $58
	sub  [hl]                                        ; $4f4f: $96
	add  e                                           ; $4f50: $83
	adc  l                                           ; $4f51: $8d
	ld   sp, $718f                                   ; $4f52: $31 $8f $71
	jp   z, $df51                                    ; $4f55: $ca $51 $df

	ld   l, c                                        ; $4f58: $69
	add  [hl]                                        ; $4f59: $86
	sub  h                                           ; $4f5a: $94
	ld   l, h                                        ; $4f5b: $6c
	ld   b, c                                        ; $4f5c: $41
	ld   a, a                                        ; $4f5d: $7f
	add  c                                           ; $4f5e: $81
	cp   e                                           ; $4f5f: $bb
	ld   h, c                                        ; $4f60: $61
	rst  JumpTable                                         ; $4f61: $df
	ld   l, c                                        ; $4f62: $69
	sub  l                                           ; $4f63: $95
	add  h                                           ; $4f64: $84
	ld   l, h                                        ; $4f65: $6c
	ld   b, c                                        ; $4f66: $41
	xor  a                                           ; $4f67: $af
	ld   h, c                                        ; $4f68: $61
	cp   d                                           ; $4f69: $ba
	ld   d, c                                        ; $4f6a: $51
	rst  $28                                         ; $4f6b: $ef
	ld   a, c                                        ; $4f6c: $79
	ld   [hl], l                                     ; $4f6d: $75
	add  h                                           ; $4f6e: $84
	ld   a, h                                        ; $4f6f: $7c
	ld   sp, $21cf                                   ; $4f70: $31 $cf $21
	ret                                              ; $4f73: $c9


	ld   b, d                                        ; $4f74: $42
	rst  $38                                         ; $4f75: $ff
	ld   a, d                                        ; $4f76: $7a
	ld   [hl], h                                     ; $4f77: $74
	add  h                                           ; $4f78: $84
	ld   a, h                                        ; $4f79: $7c
	ld   de, $11ff                                   ; $4f7a: $11 $ff $11
	cp   b                                           ; $4f7d: $b8
	inc  sp                                          ; $4f7e: $33
	cp   $7b                                         ; $4f7f: $fe $7b
	ld   d, l                                        ; $4f81: $55
	add  e                                           ; $4f82: $83
	adc  d                                           ; $4f83: $8a
	ld   de, $14ff                                   ; $4f84: $11 $ff $14
	or   [hl]                                        ; $4f87: $b6
	rla                                              ; $4f88: $17
	ld   a, [$469b]                                  ; $4f89: $fa $9b $46
	ld   [hl], e                                     ; $4f8c: $73
	and  a                                           ; $4f8d: $a7
	ld   d, $fe                                      ; $4f8e: $16 $fe
	add  hl, de                                      ; $4f90: $19
	and  l                                           ; $4f91: $a5
	inc  e                                           ; $4f92: $1c
	rst  $30                                         ; $4f93: $f7
	cp   c                                           ; $4f94: $b9
	jr   c, jr_0ec_4feb                              ; $4f95: $38 $54

	and  e                                           ; $4f97: $a3
	rra                                              ; $4f98: $1f
	ldh  a, [c]                                      ; $4f99: $f2
	dec  de                                          ; $4f9a: $1b
	add  d                                           ; $4f9b: $82
	ccf                                              ; $4f9c: $3f
	rst  $30                                         ; $4f9d: $f7
	or   a                                           ; $4f9e: $b7
	ld   d, a                                        ; $4f9f: $57
	scf                                              ; $4fa0: $37
	and  c                                           ; $4fa1: $a1
	ccf                                              ; $4fa2: $3f
	pop  af                                          ; $4fa3: $f1
	ld   e, e                                        ; $4fa4: $5b
	ld   d, c                                        ; $4fa5: $51
	xor  a                                           ; $4fa6: $af
	sbc  c                                           ; $4fa7: $99
	sub  l                                           ; $4fa8: $95
	sub  h                                           ; $4fa9: $94
	ld   a, [hl+]                                    ; $4faa: $2a
	ld   d, c                                        ; $4fab: $51
	rst  $38                                         ; $4fac: $ff
	ld   hl, $24a8                                   ; $4fad: $21 $a8 $24
	cp   $9b                                         ; $4fb0: $fe $9b
	ld   b, a                                        ; $4fb2: $47
	add  c                                           ; $4fb3: $81
	ld   l, c                                        ; $4fb4: $69
	ld   d, $fe                                      ; $4fb5: $16 $fe
	rla                                              ; $4fb7: $17
	sub  h                                           ; $4fb8: $94
	inc  l                                           ; $4fb9: $2c
	ld   sp, hl                                      ; $4fba: $f9
	rst  ToBoot                                         ; $4fbb: $c7
	ld   e, d                                        ; $4fbc: $5a
	ld   [hl-], a                                    ; $4fbd: $32
	and  d                                           ; $4fbe: $a2
	rra                                              ; $4fbf: $1f
	pop  af                                          ; $4fc0: $f1
	ld   a, [hl-]                                    ; $4fc1: $3a
	ld   d, d                                        ; $4fc2: $52
	xor  a                                           ; $4fc3: $af
	cp   h                                           ; $4fc4: $bc
	sub  h                                           ; $4fc5: $94
	add  [hl]                                        ; $4fc6: $86
	add  hl, de                                      ; $4fc7: $19
	ld   d, c                                        ; $4fc8: $51
	rst  $38                                         ; $4fc9: $ff
	ld   hl, $36a6                                   ; $4fca: $21 $a6 $36
	db   $fd                                         ; $4fcd: $fd
	cp   e                                           ; $4fce: $bb
	ld   c, b                                        ; $4fcf: $48
	ld   [hl], c                                     ; $4fd0: $71
	ld   a, c                                        ; $4fd1: $79
	jr   @-$06                                       ; $4fd2: $18 $f8

	ld   a, [de]                                     ; $4fd4: $1a
	ld   [hl], e                                     ; $4fd5: $73
	ld   e, [hl]                                     ; $4fd6: $5e
	db   $db                                         ; $4fd7: $db
	call nc, $1579                                   ; $4fd8: $d4 $79 $15
	or   c                                           ; $4fdb: $b1
	cpl                                              ; $4fdc: $2f
	pop  af                                          ; $4fdd: $f1
	adc  c                                           ; $4fde: $89
	dec  h                                           ; $4fdf: $25
	cp   [hl]                                        ; $4fe0: $be
	adc  $55                                         ; $4fe1: $ce $55
	or   d                                           ; $4fe3: $b2
	dec  de                                          ; $4fe4: $1b
	ld   hl, $15ff                                   ; $4fe5: $21 $ff $15
	and  d                                           ; $4fe8: $a2
	dec  sp                                          ; $4fe9: $3b
	ei                                               ; $4fea: $fb

jr_0ec_4feb:
	rst  $20                                         ; $4feb: $e7
	ld   c, d                                        ; $4fec: $4a
	ld   sp, $1fa4                                   ; $4fed: $31 $a4 $1f
	pop  af                                          ; $4ff0: $f1
	dec  hl                                          ; $4ff1: $2b
	inc  sp                                          ; $4ff2: $33
	adc  l                                           ; $4ff3: $8d
	adc  $93                                         ; $4ff4: $ce $93
	and  l                                           ; $4ff6: $a5
	jr   jr_0ec_505a                                 ; $4ff7: $18 $61

	rst  $38                                         ; $4ff9: $ff
	ld   hl, $37c3                                   ; $4ffa: $21 $c3 $37
	db   $dd                                         ; $4ffd: $dd
	db   $db                                         ; $4ffe: $db
	ld   c, c                                        ; $4fff: $49
	ld   h, c                                        ; $5000: $61
	halt                                             ; $5001: $76
	ld   e, $f5                                      ; $5002: $1e $f5
	inc  e                                           ; $5004: $1c
	ld   [hl-], a                                    ; $5005: $32
	ld   a, h                                        ; $5006: $7c
	db   $dd                                         ; $5007: $dd
	or   l                                           ; $5008: $b5
	sub  [hl]                                        ; $5009: $96
	ld   d, $71                                      ; $500a: $16 $71
	cp   a                                           ; $500c: $bf
	sub  c                                           ; $500d: $91
	and  h                                           ; $500e: $a4
	ld   h, $bd                                      ; $500f: $26 $bd
	db   $dd                                         ; $5011: $dd
	ld   l, c                                        ; $5012: $69
	ld   [hl], c                                     ; $5013: $71
	ld   d, a                                        ; $5014: $57
	ld   a, [de]                                     ; $5015: $1a
	ld   a, [$411a]                                  ; $5016: $fa $1a $41
	ld   l, d                                        ; $5019: $6a
	sbc  $c6                                         ; $501a: $de $c6
	sub  [hl]                                        ; $501c: $96
	dec  d                                           ; $501d: $15
	ld   [hl], c                                     ; $501e: $71
	adc  a                                           ; $501f: $8f
	pop  de                                          ; $5020: $d1
	and  l                                           ; $5021: $a5
	dec  d                                           ; $5022: $15
	xor  h                                           ; $5023: $ac
	xor  $78                                         ; $5024: $ee $78
	add  c                                           ; $5026: $81
	jr   c, jr_0ec_5040                              ; $5027: $38 $17

	cp   $1b                                         ; $5029: $fe $1b
	ld   h, c                                        ; $502b: $61
	ld   c, c                                        ; $502c: $49
	db   $dd                                         ; $502d: $dd
	add  sp, -$78                                    ; $502e: $e8 $88
	ld   [de], a                                     ; $5030: $12
	ld   [hl], c                                     ; $5031: $71
	adc  a                                           ; $5032: $8f
	pop  bc                                          ; $5033: $c1
	or   l                                           ; $5034: $b5
	inc  de                                          ; $5035: $13
	sbc  h                                           ; $5036: $9c
	rst  JumpTable                                         ; $5037: $df
	sbc  b                                           ; $5038: $98
	add  c                                           ; $5039: $81
	rla                                              ; $503a: $17
	add  hl, de                                      ; $503b: $19
	db   $fd                                         ; $503c: $fd
	dec  de                                          ; $503d: $1b
	ld   d, c                                        ; $503e: $51
	add  hl, sp                                      ; $503f: $39

jr_0ec_5040:
	call c, Call_0ec_79fb                            ; $5040: $dc $fb $79
	ld   de, $bf61                                   ; $5043: $11 $61 $bf
	or   h                                           ; $5046: $b4
	and  l                                           ; $5047: $a5
	ld   [hl+], a                                    ; $5048: $22
	xor  h                                           ; $5049: $ac
	cp   a                                           ; $504a: $bf
	cp   b                                           ; $504b: $b8
	add  c                                           ; $504c: $81
	inc  d                                           ; $504d: $14
	rra                                              ; $504e: $1f
	rst  $30                                         ; $504f: $f7
	ld   a, d                                        ; $5050: $7a
	ld   [hl-], a                                    ; $5051: $32
	ld   a, [hl-]                                    ; $5052: $3a
	set  7, e                                        ; $5053: $cb $fb
	add  a                                           ; $5055: $87
	ld   de, $ff31                                   ; $5056: $11 $31 $ff
	ld   l, c                                        ; $5059: $69

jr_0ec_505a:
	or   d                                           ; $505a: $b2
	inc  hl                                          ; $505b: $23
	sbc  e                                           ; $505c: $9b
	cp   a                                           ; $505d: $bf
	ret  c                                           ; $505e: $d8

	ld   d, c                                        ; $505f: $51
	ld   de, $f74f                                   ; $5060: $11 $4f $f7
	reti                                             ; $5063: $d9


	ld   [hl+], a                                    ; $5064: $22
	ld   c, c                                        ; $5065: $49
	cp   h                                           ; $5066: $bc
	db   $fd                                         ; $5067: $fd
	add  h                                           ; $5068: $84
	ld   de, $fa1a                                   ; $5069: $11 $1a $fa
	cp   l                                           ; $506c: $bd
	ld   [hl], e                                     ; $506d: $73
	ld   h, $89                                      ; $506e: $26 $89
	rst  JumpTable                                         ; $5070: $df
	or   a                                           ; $5071: $b7
	ld   sp, $fc14                                   ; $5072: $31 $14 $fc
	adc  a                                           ; $5075: $8f
	or   [hl]                                        ; $5076: $b6
	inc  [hl]                                        ; $5077: $34
	add  a                                           ; $5078: $87
	sbc  [hl]                                        ; $5079: $9e
	reti                                             ; $507a: $d9


	ld   h, d                                        ; $507b: $62
	ld   de, $7ccf                                   ; $507c: $11 $cf $7c
	jp   c, Jump_0ec_7863                            ; $507f: $da $63 $78

	ld   a, e                                        ; $5082: $7b
	call c, $1184                                    ; $5083: $dc $84 $11
	sbc  [hl]                                        ; $5086: $9e
	ld   l, c                                        ; $5087: $69
	jp   c, Jump_0ec_5a95                            ; $5088: $da $95 $5a

	ld   [hl], a                                     ; $508b: $77
	cp   e                                           ; $508c: $bb
	sub  l                                           ; $508d: $95
	ld   hl, $578f                                   ; $508e: $21 $8f $57
	jp   c, $49b7                                    ; $5091: $da $b7 $49

	and  a                                           ; $5094: $a7
	adc  d                                           ; $5095: $8a
	and  a                                           ; $5096: $a7
	ld   sp, $946f                                   ; $5097: $31 $6f $94
	xor  b                                           ; $509a: $a8
	ret                                              ; $509b: $c9


	ld   c, b                                        ; $509c: $48
	xor  c                                           ; $509d: $a9
	sbc  b                                           ; $509e: $98
	sbc  b                                           ; $509f: $98
	ld   d, c                                        ; $50a0: $51
	ld   c, a                                        ; $50a1: $4f
	or   [hl]                                        ; $50a2: $b6
	sub  a                                           ; $50a3: $97
	xor  l                                           ; $50a4: $ad
	halt                                             ; $50a5: $76
	sbc  d                                           ; $50a6: $9a
	xor  b                                           ; $50a7: $a8
	ld   [hl], a                                     ; $50a8: $77
	ld   h, e                                        ; $50a9: $63
	dec  sp                                          ; $50aa: $3b
	or   a                                           ; $50ab: $b7
	sub  a                                           ; $50ac: $97
	ld   a, e                                        ; $50ad: $7b
	and  a                                           ; $50ae: $a7
	adc  c                                           ; $50af: $89
	xor  d                                           ; $50b0: $aa
	halt                                             ; $50b1: $76
	ld   d, l                                        ; $50b2: $55
	ld   c, d                                        ; $50b3: $4a
	rst  ToBoot                                         ; $50b4: $c7
	sbc  c                                           ; $50b5: $99
	ld   a, e                                        ; $50b6: $7b
	and  a                                           ; $50b7: $a7
	adc  c                                           ; $50b8: $89
	xor  d                                           ; $50b9: $aa
	add  a                                           ; $50ba: $87
	ld   d, h                                        ; $50bb: $54
	ld   c, c                                        ; $50bc: $49
	cp   b                                           ; $50bd: $b8
	adc  b                                           ; $50be: $88
	ld   a, e                                        ; $50bf: $7b
	xor  b                                           ; $50c0: $a8
	ld   a, b                                        ; $50c1: $78
	xor  d                                           ; $50c2: $aa
	sub  a                                           ; $50c3: $97
	ld   d, l                                        ; $50c4: $55
	ld   b, a                                        ; $50c5: $47
	cp   b                                           ; $50c6: $b8
	sbc  b                                           ; $50c7: $98
	ld   a, d                                        ; $50c8: $7a
	xor  c                                           ; $50c9: $a9
	ld   a, b                                        ; $50ca: $78
	sbc  d                                           ; $50cb: $9a
	sbc  b                                           ; $50cc: $98
	ld   h, l                                        ; $50cd: $65
	ld   d, [hl]                                     ; $50ce: $56
	sbc  b                                           ; $50cf: $98
	adc  b                                           ; $50d0: $88
	ld   a, c                                        ; $50d1: $79
	xor  c                                           ; $50d2: $a9
	add  a                                           ; $50d3: $87
	adc  d                                           ; $50d4: $8a
	sbc  b                                           ; $50d5: $98
	ld   [hl], l                                     ; $50d6: $75
	ld   d, a                                        ; $50d7: $57
	add  a                                           ; $50d8: $87
	add  a                                           ; $50d9: $87
	ld   a, d                                        ; $50da: $7a
	xor  c                                           ; $50db: $a9
	adc  b                                           ; $50dc: $88
	sbc  d                                           ; $50dd: $9a
	xor  c                                           ; $50de: $a9
	halt                                             ; $50df: $76
	ld   h, a                                        ; $50e0: $67
	sub  a                                           ; $50e1: $97
	ld   [hl], a                                     ; $50e2: $77
	ld   l, c                                        ; $50e3: $69
	xor  c                                           ; $50e4: $a9
	adc  b                                           ; $50e5: $88
	sbc  c                                           ; $50e6: $99
	xor  c                                           ; $50e7: $a9
	halt                                             ; $50e8: $76
	ld   h, a                                        ; $50e9: $67
	add  a                                           ; $50ea: $87
	ld   [hl], a                                     ; $50eb: $77
	ld   l, b                                        ; $50ec: $68
	sbc  c                                           ; $50ed: $99
	sbc  c                                           ; $50ee: $99
	adc  c                                           ; $50ef: $89
	xor  b                                           ; $50f0: $a8
	halt                                             ; $50f1: $76
	ld   l, b                                        ; $50f2: $68
	sub  a                                           ; $50f3: $97
	ld   [hl], a                                     ; $50f4: $77
	ld   h, a                                        ; $50f5: $67
	xor  c                                           ; $50f6: $a9
	adc  b                                           ; $50f7: $88
	sbc  c                                           ; $50f8: $99
	sbc  b                                           ; $50f9: $98
	halt                                             ; $50fa: $76
	ld   l, b                                        ; $50fb: $68
	sbc  b                                           ; $50fc: $98
	ld   [hl], a                                     ; $50fd: $77
	ld   h, a                                        ; $50fe: $67
	adc  c                                           ; $50ff: $89
	sbc  c                                           ; $5100: $99
	adc  c                                           ; $5101: $89
	sbc  c                                           ; $5102: $99
	add  [hl]                                        ; $5103: $86
	ld   l, b                                        ; $5104: $68
	xor  c                                           ; $5105: $a9
	halt                                             ; $5106: $76
	ld   h, a                                        ; $5107: $67
	sbc  b                                           ; $5108: $98
	adc  b                                           ; $5109: $88
	sbc  c                                           ; $510a: $99
	xor  c                                           ; $510b: $a9
	sub  a                                           ; $510c: $97
	ld   l, b                                        ; $510d: $68
	sbc  c                                           ; $510e: $99
	add  a                                           ; $510f: $87
	ld   d, a                                        ; $5110: $57
	add  a                                           ; $5111: $87
	add  a                                           ; $5112: $87
	adc  d                                           ; $5113: $8a
	xor  d                                           ; $5114: $aa
	sub  a                                           ; $5115: $97
	ld   l, b                                        ; $5116: $68
	sbc  b                                           ; $5117: $98
	add  a                                           ; $5118: $87
	ld   h, a                                        ; $5119: $67
	adc  b                                           ; $511a: $88
	ld   [hl], a                                     ; $511b: $77
	ld   a, c                                        ; $511c: $79
	sbc  d                                           ; $511d: $9a
	sub  a                                           ; $511e: $97
	ld   [hl], a                                     ; $511f: $77
	sbc  b                                           ; $5120: $98
	ld   [hl], a                                     ; $5121: $77
	ld   h, a                                        ; $5122: $67
	adc  b                                           ; $5123: $88
	ld   [hl], a                                     ; $5124: $77
	ld   a, c                                        ; $5125: $79
	sbc  c                                           ; $5126: $99
	sbc  b                                           ; $5127: $98
	ld   a, b                                        ; $5128: $78
	sbc  c                                           ; $5129: $99
	ld   [hl], a                                     ; $512a: $77
	ld   h, a                                        ; $512b: $67
	adc  b                                           ; $512c: $88
	add  a                                           ; $512d: $87
	ld   a, b                                        ; $512e: $78
	sbc  c                                           ; $512f: $99
	adc  b                                           ; $5130: $88
	ld   a, c                                        ; $5131: $79
	xor  b                                           ; $5132: $a8
	ld   [hl], a                                     ; $5133: $77
	ld   d, a                                        ; $5134: $57
	adc  b                                           ; $5135: $88
	add  a                                           ; $5136: $87
	ld   a, b                                        ; $5137: $78
	xor  c                                           ; $5138: $a9
	add  a                                           ; $5139: $87
	ld   a, c                                        ; $513a: $79
	xor  c                                           ; $513b: $a9
	halt                                             ; $513c: $76
	ld   d, a                                        ; $513d: $57
	sbc  b                                           ; $513e: $98
	add  a                                           ; $513f: $87
	ld   a, c                                        ; $5140: $79
	xor  c                                           ; $5141: $a9
	add  a                                           ; $5142: $87
	ld   a, c                                        ; $5143: $79
	sbc  c                                           ; $5144: $99
	add  [hl]                                        ; $5145: $86
	ld   d, a                                        ; $5146: $57
	sbc  b                                           ; $5147: $98
	add  a                                           ; $5148: $87
	adc  d                                           ; $5149: $8a
	xor  c                                           ; $514a: $a9
	sub  a                                           ; $514b: $97
	ld   a, c                                        ; $514c: $79
	xor  c                                           ; $514d: $a9
	add  [hl]                                        ; $514e: $86
	ld   e, b                                        ; $514f: $58
	adc  b                                           ; $5150: $88
	add  a                                           ; $5151: $87
	sbc  c                                           ; $5152: $99
	xor  c                                           ; $5153: $a9
	add  [hl]                                        ; $5154: $86
	ld   a, d                                        ; $5155: $7a
	adc  c                                           ; $5156: $89
	ld   [hl], l                                     ; $5157: $75
	ld   l, b                                        ; $5158: $68
	adc  c                                           ; $5159: $89
	ld   [hl], a                                     ; $515a: $77
	sbc  d                                           ; $515b: $9a
	xor  c                                           ; $515c: $a9
	ld   [hl], a                                     ; $515d: $77
	adc  c                                           ; $515e: $89
	adc  b                                           ; $515f: $88
	ld   h, l                                        ; $5160: $65
	adc  c                                           ; $5161: $89
	adc  c                                           ; $5162: $89
	ld   a, b                                        ; $5163: $78
	xor  c                                           ; $5164: $a9
	xor  b                                           ; $5165: $a8
	ld   l, b                                        ; $5166: $68
	xor  b                                           ; $5167: $a8
	add  a                                           ; $5168: $87
	ld   d, [hl]                                     ; $5169: $56
	sbc  b                                           ; $516a: $98
	sbc  b                                           ; $516b: $98
	ld   a, c                                        ; $516c: $79
	xor  d                                           ; $516d: $aa
	sub  a                                           ; $516e: $97
	ld   a, c                                        ; $516f: $79
	sbc  b                                           ; $5170: $98
	add  l                                           ; $5171: $85
	ld   e, b                                        ; $5172: $58
	sbc  c                                           ; $5173: $99
	sbc  b                                           ; $5174: $98
	adc  d                                           ; $5175: $8a
	sbc  c                                           ; $5176: $99
	halt                                             ; $5177: $76
	adc  c                                           ; $5178: $89
	adc  c                                           ; $5179: $89
	ld   h, h                                        ; $517a: $64
	ld   a, b                                        ; $517b: $78
	adc  d                                           ; $517c: $8a
	sbc  c                                           ; $517d: $99
	xor  d                                           ; $517e: $aa
	sbc  b                                           ; $517f: $98
	ld   h, a                                        ; $5180: $67
	sbc  b                                           ; $5181: $98

jr_0ec_5182:
	sub  a                                           ; $5182: $97
	ld   d, [hl]                                     ; $5183: $56
	sbc  b                                           ; $5184: $98
	xor  b                                           ; $5185: $a8
	adc  d                                           ; $5186: $8a
	xor  c                                           ; $5187: $a9
	add  l                                           ; $5188: $85
	ld   l, c                                        ; $5189: $69
	adc  b                                           ; $518a: $88
	add  l                                           ; $518b: $85
	ld   l, c                                        ; $518c: $69
	adc  d                                           ; $518d: $8a
	sbc  b                                           ; $518e: $98
	sbc  d                                           ; $518f: $9a
	sbc  c                                           ; $5190: $99
	ld   h, [hl]                                     ; $5191: $66
	adc  b                                           ; $5192: $88
	ld   a, b                                        ; $5193: $78
	ld   d, [hl]                                     ; $5194: $56
	sbc  c                                           ; $5195: $99
	xor  d                                           ; $5196: $aa
	sbc  c                                           ; $5197: $99
	xor  c                                           ; $5198: $a9
	add  l                                           ; $5199: $85
	ld   l, b                                        ; $519a: $68
	add  a                                           ; $519b: $87
	ld   [hl], h                                     ; $519c: $74
	ld   l, d                                        ; $519d: $6a
	xor  d                                           ; $519e: $aa
	xor  c                                           ; $519f: $a9
	xor  e                                           ; $51a0: $ab
	sbc  b                                           ; $51a1: $98
	ld   d, l                                        ; $51a2: $55
	sbc  b                                           ; $51a3: $98
	add  a                                           ; $51a4: $87
	ld   b, [hl]                                     ; $51a5: $46
	sbc  d                                           ; $51a6: $9a
	cp   c                                           ; $51a7: $b9
	sbc  d                                           ; $51a8: $9a
	xor  c                                           ; $51a9: $a9
	ld   [hl], e                                     ; $51aa: $73
	ld   e, c                                        ; $51ab: $59
	adc  b                                           ; $51ac: $88
	ld   [hl], e                                     ; $51ad: $73
	ld   a, e                                        ; $51ae: $7b
	xor  d                                           ; $51af: $aa
	xor  c                                           ; $51b0: $a9
	xor  e                                           ; $51b1: $ab
	sub  [hl]                                        ; $51b2: $96
	dec  h                                           ; $51b3: $25
	and  a                                           ; $51b4: $a7
	add  [hl]                                        ; $51b5: $86
	jr   c, jr_0ec_5182                              ; $51b6: $38 $ca

	xor  c                                           ; $51b8: $a9
	adc  e                                           ; $51b9: $8b
	xor  b                                           ; $51ba: $a8
	ld   b, c                                        ; $51bb: $41

jr_0ec_51bc:
	ld   l, c                                        ; $51bc: $69
	ld   a, c                                        ; $51bd: $79
	ld   d, e                                        ; $51be: $53
	xor  h                                           ; $51bf: $ac
	cp   e                                           ; $51c0: $bb
	sbc  d                                           ; $51c1: $9a
	jp   c, $1872                                    ; $51c2: $da $72 $18

	sub  a                                           ; $51c5: $97
	add  h                                           ; $51c6: $84
	ld   e, h                                        ; $51c7: $5c
	jp   z, $bc98                                    ; $51c8: $ca $98 $bc

	sub  l                                           ; $51cb: $95
	ld   [de], a                                     ; $51cc: $12
	xor  b                                           ; $51cd: $a8
	ld   [hl], a                                     ; $51ce: $77
	jr   c, jr_0ec_51bc                              ; $51cf: $38 $eb

	xor  b                                           ; $51d1: $a8
	adc  l                                           ; $51d2: $8d
	or   [hl]                                        ; $51d3: $b6
	ld   hl, $676c                                   ; $51d4: $21 $6c $67
	ld   h, h                                        ; $51d7: $64
	sbc  $a9                                         ; $51d8: $de $a9
	adc  e                                           ; $51da: $8b
	add  sp, $41                                     ; $51db: $e8 $41
	dec  de                                          ; $51dd: $1b
	and  l                                           ; $51de: $a5
	add  h                                           ; $51df: $84
	adc  a                                           ; $51e0: $8f
	ret                                              ; $51e1: $c9


	adc  c                                           ; $51e2: $89
	db   $ec                                         ; $51e3: $ec
	ld   d, d                                        ; $51e4: $52
	inc  de                                          ; $51e5: $13
	or   $58                                         ; $51e6: $f6 $58
	ld   c, l                                        ; $51e8: $4d
	ld   hl, sp-$67                                  ; $51e9: $f8 $99
	cp   [hl]                                        ; $51eb: $be
	add  e                                           ; $51ec: $83
	ld   de, $28ad                                   ; $51ed: $11 $ad $28
	add  [hl]                                        ; $51f0: $86
	db   $fc                                         ; $51f1: $fc
	ld   l, d                                        ; $51f2: $6a
	xor  h                                           ; $51f3: $ac
	or   h                                           ; $51f4: $b4
	ld   sp, $641e                                   ; $51f5: $31 $1e $64
	add  $cf                                         ; $51f8: $c6 $cf
	ld   a, b                                        ; $51fa: $78
	cp   d                                           ; $51fb: $ba
	add  $31                                         ; $51fc: $c6 $31
	ld   a, [de]                                     ; $51fe: $1a
	pop  bc                                          ; $51ff: $c1
	ret                                              ; $5200: $c9


	ld   a, a                                        ; $5201: $7f
	sub  a                                           ; $5202: $97
	cp   c                                           ; $5203: $b9
	ret                                              ; $5204: $c9


	ld   b, h                                        ; $5205: $44
	ld   [de], a                                     ; $5206: $12
	di                                               ; $5207: $f3
	ld   a, a                                        ; $5208: $7f
	ld   e, [hl]                                     ; $5209: $5e
	and  $ba                                         ; $520a: $e6 $ba
	cp   e                                           ; $520c: $bb
	ld   b, [hl]                                     ; $520d: $46
	ld   de, $1ff6                                   ; $520e: $11 $f6 $1f
	ld   a, b                                        ; $5211: $78
	or   $8d                                         ; $5212: $f6 $8d
	xor  b                                           ; $5214: $a8
	ld   l, d                                        ; $5215: $6a
	ld   de, $1ff9                                   ; $5216: $11 $f9 $1f
	or   h                                           ; $5219: $b4
	rst  $30                                         ; $521a: $f7
	adc  [hl]                                        ; $521b: $8e
	sub  a                                           ; $521c: $97
	adc  d                                           ; $521d: $8a
	ld   de, $1ffd                                   ; $521e: $11 $fd $1f
	ldh  a, [c]                                      ; $5221: $f2
	jp   hl                                          ; $5222: $e9


	xor  e                                           ; $5223: $ab
	ld   a, d                                        ; $5224: $7a
	and  a                                           ; $5225: $a7
	ld   de, $1fdd                                   ; $5226: $11 $dd $1f
	pop  af                                          ; $5229: $f1
	call $8c98                                       ; $522a: $cd $98 $8c
	sub  l                                           ; $522d: $95
	ld   hl, $1fad                                   ; $522e: $21 $ad $1f
	pop  af                                          ; $5231: $f1
	sbc  $98                                         ; $5232: $de $98
	xor  h                                           ; $5234: $ac
	ld   [hl], l                                     ; $5235: $75
	ld   sp, $1e8e                                   ; $5236: $31 $8e $1e
	pop  af                                          ; $5239: $f1
	xor  $88                                         ; $523a: $ee $88
	xor  h                                           ; $523c: $ac
	halt                                             ; $523d: $76
	ld   sp, $1f9d                                   ; $523e: $31 $9d $1f
	pop  af                                          ; $5241: $f1
	cp   $98                                         ; $5242: $fe $98
	xor  h                                           ; $5244: $ac
	ld   [hl], l                                     ; $5245: $75
	ld   hl, $1fbb                                   ; $5246: $21 $bb $1f
	pop  af                                          ; $5249: $f1
	db   $fc                                         ; $524a: $fc
	sbc  c                                           ; $524b: $99
	cp   h                                           ; $524c: $bc
	ld   h, [hl]                                     ; $524d: $66
	ld   bc, $1fc8                                   ; $524e: $01 $c8 $1f
	jp   nz, $a9fa                                   ; $5251: $c2 $fa $a9

	bit  4, l                                        ; $5254: $cb $65
	ld   de, $1fe4                                   ; $5256: $11 $e4 $1f
	ld   h, l                                        ; $5259: $65
	ld   sp, hl                                      ; $525a: $f9
	cp   c                                           ; $525b: $b9
	jp   c, $1254                                    ; $525c: $da $54 $12

	pop  af                                          ; $525f: $f1
	ld   e, a                                        ; $5260: $5f
	ld   a, [de]                                     ; $5261: $1a
	ld   sp, hl                                      ; $5262: $f9
	cp   b                                           ; $5263: $b8
	jp   hl                                          ; $5264: $e9


	ld   b, d                                        ; $5265: $42
	rla                                              ; $5266: $17
	pop  bc                                          ; $5267: $c1
	rst  $38                                         ; $5268: $ff
	rra                                              ; $5269: $1f
	ret                                              ; $526a: $c9


	xor  c                                           ; $526b: $a9
	sub  $41                                         ; $526c: $d6 $41
	dec  e                                           ; $526e: $1d
	ld   d, c                                        ; $526f: $51
	or   $5f                                         ; $5270: $f6 $5f
	sbc  h                                           ; $5272: $9c
	adc  h                                           ; $5273: $8c
	or   l                                           ; $5274: $b5
	ld   hl, $194d                                   ; $5275: $21 $4d $19
	pop  af                                          ; $5278: $f1
	db   $ed                                         ; $5279: $ed
	sbc  h                                           ; $527a: $9c
	adc  l                                           ; $527b: $8d
	ld   [hl], e                                     ; $527c: $73
	ld   de, $1fb7                                   ; $527d: $11 $b7 $1f
	and  e                                           ; $5280: $a3
	ld   sp, hl                                      ; $5281: $f9
	add  sp, -$44                                    ; $5282: $e8 $bc
	ld   b, d                                        ; $5284: $42
	inc  d                                           ; $5285: $14
	pop  de                                          ; $5286: $d1
	adc  a                                           ; $5287: $8f
	dec  e                                           ; $5288: $1d
	db   $db                                         ; $5289: $db
	cp   b                                           ; $528a: $b8
	rst  $20                                         ; $528b: $e7
	ld   hl, $311c                                   ; $528c: $21 $1c $31
	db   $f4                                         ; $528f: $f4
	ld   a, a                                        ; $5290: $7f
	sbc  l                                           ; $5291: $9d
	adc  [hl]                                        ; $5292: $8e
	and  e                                           ; $5293: $a3
	ld   de, $1f98                                   ; $5294: $11 $98 $1f
	jp   nz, $d9fa                                   ; $5297: $c2 $fa $d9

	sbc  $23                                         ; $529a: $de $23
	inc  d                                           ; $529c: $14
	or   c                                           ; $529d: $b1
	cp   a                                           ; $529e: $bf
	ld   e, $dd                                      ; $529f: $1e $dd
	cp   c                                           ; $52a1: $b9
	di                                               ; $52a2: $f3
	ld   hl, $172a                                   ; $52a3: $21 $2a $17
	di                                               ; $52a6: $f3
	cp   l                                           ; $52a7: $bd
	db   $db                                         ; $52a8: $db
	ld   a, a                                        ; $52a9: $7f
	ld   d, c                                        ; $52aa: $51
	ld   de, $6fa1                                   ; $52ab: $11 $a1 $6f
	ld   c, h                                        ; $52ae: $4c
	call c, $f6d7                                    ; $52af: $dc $d7 $f6
	ld   de, $151b                                   ; $52b2: $11 $1b $15
	push af                                          ; $52b5: $f5
	xor  [hl]                                        ; $52b6: $ae
	call Call_0ec_717f                               ; $52b7: $cd $7f $71
	ld   hl, $5f91                                   ; $52ba: $21 $91 $5f
	ld   e, e                                        ; $52bd: $5b
	sbc  $c8                                         ; $52be: $de $c8
	or   $11                                         ; $52c0: $f6 $11
	add  hl, de                                      ; $52c2: $19
	rla                                              ; $52c3: $17
	push af                                          ; $52c4: $f5
	call $bffa                                       ; $52c5: $cd $fa $bf
	ld   [hl-], a                                    ; $52c8: $32
	ld   [bc], a                                     ; $52c9: $02
	ld   [hl], c                                     ; $52ca: $71
	xor  l                                           ; $52cb: $ad
	ld   l, l                                        ; $52cc: $6d
	rst  $28                                         ; $52cd: $ef
	adc  [hl]                                        ; $52ce: $8e
	pop  af                                          ; $52cf: $f1
	ld   hl, $1c44                                   ; $52d0: $21 $44 $1c
	sub  a                                           ; $52d3: $97
	rst  $28                                         ; $52d4: $ef
	ld   hl, sp-$04                                  ; $52d5: $f8 $fc

jr_0ec_52d7:
	ld   [de], a                                     ; $52d7: $12
	dec  d                                           ; $52d8: $15
	ld   [de], a                                     ; $52d9: $12
	and  $9e                                         ; $52da: $e6 $9e
	db   $fd                                         ; $52dc: $fd
	xor  a                                           ; $52dd: $af
	ld   h, c                                        ; $52de: $61
	ld   hl, $7a51                                   ; $52df: $21 $51 $7a
	ld   e, l                                        ; $52e2: $5d
	rst  $38                                         ; $52e3: $ff
	cp   [hl]                                        ; $52e4: $be
	di                                               ; $52e5: $f3
	ld   de, $1a41                                   ; $52e6: $11 $41 $1a
	ld   l, b                                        ; $52e9: $68
	rst  $28                                         ; $52ea: $ef
	db   $ec                                         ; $52eb: $ec
	ld   a, [$2331]                                  ; $52ec: $fa $31 $23
	ld   d, $75                                      ; $52ef: $16 $75
	adc  $fe                                         ; $52f1: $ce $fe
	rst  $38                                         ; $52f3: $ff
	ld   d, h                                        ; $52f4: $54
	inc  d                                           ; $52f5: $14
	ld   de, $8d83                                   ; $52f6: $11 $83 $8d
	cp   $ff                                         ; $52f9: $fe $ff
	add  l                                           ; $52fb: $85
	inc  sp                                          ; $52fc: $33
	ld   de, $5b63                                   ; $52fd: $11 $63 $5b
	rst  $38                                         ; $5300: $ff
	rst  $28                                         ; $5301: $ef
	rst  $10                                         ; $5302: $d7
	ld   b, h                                        ; $5303: $44
	ld   b, c                                        ; $5304: $41
	inc  [hl]                                        ; $5305: $34
	jr   z, jr_0ec_52d7                              ; $5306: $28 $cf

	rst  $28                                         ; $5308: $ef
	ld   sp, hl                                      ; $5309: $f9
	ld   [hl], h                                     ; $530a: $74
	ld   b, c                                        ; $530b: $41
	inc  d                                           ; $530c: $14
	dec  d                                           ; $530d: $15
	sbc  [hl]                                        ; $530e: $9e
	rst  $28                                         ; $530f: $ef
	ei                                               ; $5310: $fb
	sub  [hl]                                        ; $5311: $96
	ld   d, h                                        ; $5312: $54
	inc  de                                          ; $5313: $13
	ld   [hl+], a                                    ; $5314: $22
	ld   a, e                                        ; $5315: $7b
	db   $ed                                         ; $5316: $ed
	rst  $38                                         ; $5317: $ff
	xor  d                                           ; $5318: $aa
	ld   d, [hl]                                     ; $5319: $56
	ld   sp, $4732                                   ; $531a: $31 $32 $47
	call $cbef                                       ; $531d: $cd $ef $cb
	and  l                                           ; $5320: $a5
	ld   h, c                                        ; $5321: $61
	inc  sp                                          ; $5322: $33
	inc  h                                           ; $5323: $24
	adc  e                                           ; $5324: $8b
	cp   a                                           ; $5325: $bf
	ei                                               ; $5326: $fb
	cp   b                                           ; $5327: $b8
	halt                                             ; $5328: $76
	inc  hl                                          ; $5329: $23
	ld   [hl-], a                                    ; $532a: $32
	ld   c, c                                        ; $532b: $49
	xor  e                                           ; $532c: $ab
	db   $fd                                         ; $532d: $fd
	xor  e                                           ; $532e: $ab
	ld   a, b                                        ; $532f: $78
	ld   h, e                                        ; $5330: $63
	ld   b, h                                        ; $5331: $44
	dec  h                                           ; $5332: $25
	sbc  c                                           ; $5333: $99
	cp   a                                           ; $5334: $bf
	xor  e                                           ; $5335: $ab
	or   a                                           ; $5336: $b7
	sub  [hl]                                        ; $5337: $96
	ld   b, l                                        ; $5338: $45
	ld   b, e                                        ; $5339: $43
	ld   l, c                                        ; $533a: $69
	adc  h                                           ; $533b: $8c
	reti                                             ; $533c: $d9


	cp   d                                           ; $533d: $ba
	ld   a, c                                        ; $533e: $79
	ld   h, l                                        ; $533f: $65
	ld   h, h                                        ; $5340: $64
	ld   b, a                                        ; $5341: $47
	add  a                                           ; $5342: $87
	call z, $888b                                    ; $5343: $cc $8b $88
	and  [hl]                                        ; $5346: $a6
	ld   h, a                                        ; $5347: $67
	ld   d, l                                        ; $5348: $55
	ld   a, b                                        ; $5349: $78
	ld   a, e                                        ; $534a: $7b
	cp   b                                           ; $534b: $b8
	or   a                                           ; $534c: $b7
	sbc  b                                           ; $534d: $98
	ld   h, a                                        ; $534e: $67
	halt                                             ; $534f: $76
	ld   l, b                                        ; $5350: $68
	adc  b                                           ; $5351: $88
	cp   c                                           ; $5352: $b9
	adc  c                                           ; $5353: $89
	ld   a, b                                        ; $5354: $78
	add  [hl]                                        ; $5355: $86
	add  a                                           ; $5356: $87
	ld   h, a                                        ; $5357: $67
	adc  c                                           ; $5358: $89
	adc  e                                           ; $5359: $8b
	sbc  b                                           ; $535a: $98
	add  a                                           ; $535b: $87
	add  a                                           ; $535c: $87
	adc  b                                           ; $535d: $88
	ld   [hl], a                                     ; $535e: $77
	ld   a, c                                        ; $535f: $79
	sbc  c                                           ; $5360: $99
	sub  a                                           ; $5361: $97
	ld   [hl], a                                     ; $5362: $77
	adc  b                                           ; $5363: $88
	ld   a, c                                        ; $5364: $79
	add  a                                           ; $5365: $87
	adc  b                                           ; $5366: $88
	adc  b                                           ; $5367: $88
	adc  b                                           ; $5368: $88
	ld   [hl], a                                     ; $5369: $77
	ld   a, b                                        ; $536a: $78
	sub  a                                           ; $536b: $97
	sub  a                                           ; $536c: $97
	adc  c                                           ; $536d: $89
	adc  c                                           ; $536e: $89
	adc  b                                           ; $536f: $88
	ld   [hl], a                                     ; $5370: $77
	adc  b                                           ; $5371: $88
	sbc  b                                           ; $5372: $98
	sbc  b                                           ; $5373: $98
	adc  b                                           ; $5374: $88
	adc  b                                           ; $5375: $88
	adc  b                                           ; $5376: $88
	add  a                                           ; $5377: $87
	adc  b                                           ; $5378: $88
	adc  b                                           ; $5379: $88
	adc  c                                           ; $537a: $89
	adc  b                                           ; $537b: $88
	add  a                                           ; $537c: $87
	add  a                                           ; $537d: $87
	ld   a, b                                        ; $537e: $78
	ld   a, b                                        ; $537f: $78
	sbc  c                                           ; $5380: $99
	sbc  c                                           ; $5381: $99
	sbc  b                                           ; $5382: $98
	adc  b                                           ; $5383: $88
	add  a                                           ; $5384: $87
	ld   a, b                                        ; $5385: $78
	adc  b                                           ; $5386: $88
	sbc  c                                           ; $5387: $99
	sbc  b                                           ; $5388: $98
	adc  b                                           ; $5389: $88
	add  a                                           ; $538a: $87
	ld   a, b                                        ; $538b: $78
	ld   a, b                                        ; $538c: $78
	sbc  b                                           ; $538d: $98
	sbc  b                                           ; $538e: $98
	sbc  b                                           ; $538f: $98
	add  a                                           ; $5390: $87
	ld   [hl], a                                     ; $5391: $77
	ld   a, b                                        ; $5392: $78
	adc  b                                           ; $5393: $88
	sbc  b                                           ; $5394: $98
	adc  b                                           ; $5395: $88
	adc  b                                           ; $5396: $88
	add  a                                           ; $5397: $87
	ld   [hl], a                                     ; $5398: $77
	ld   [hl], a                                     ; $5399: $77
	adc  b                                           ; $539a: $88
	adc  b                                           ; $539b: $88
	sbc  c                                           ; $539c: $99
	adc  b                                           ; $539d: $88
	adc  b                                           ; $539e: $88
	ld   [hl], a                                     ; $539f: $77
	ld   [hl], a                                     ; $53a0: $77
	adc  b                                           ; $53a1: $88
	sbc  c                                           ; $53a2: $99
	adc  c                                           ; $53a3: $89
	adc  b                                           ; $53a4: $88
	add  a                                           ; $53a5: $87
	ld   [hl], a                                     ; $53a6: $77
	ld   [hl], a                                     ; $53a7: $77
	adc  b                                           ; $53a8: $88
	adc  b                                           ; $53a9: $88
	sbc  c                                           ; $53aa: $99
	adc  c                                           ; $53ab: $89
	adc  b                                           ; $53ac: $88
	ld   [hl], a                                     ; $53ad: $77
	ld   [hl], a                                     ; $53ae: $77
	ld   a, b                                        ; $53af: $78
	adc  c                                           ; $53b0: $89
	adc  b                                           ; $53b1: $88
	sbc  b                                           ; $53b2: $98
	adc  b                                           ; $53b3: $88
	add  a                                           ; $53b4: $87
	ld   [hl], a                                     ; $53b5: $77
	ld   a, b                                        ; $53b6: $78
	adc  b                                           ; $53b7: $88
	sbc  c                                           ; $53b8: $99
	sbc  c                                           ; $53b9: $99
	sbc  b                                           ; $53ba: $98
	adc  b                                           ; $53bb: $88
	ld   [hl], a                                     ; $53bc: $77
	ld   [hl], a                                     ; $53bd: $77
	adc  b                                           ; $53be: $88
	adc  b                                           ; $53bf: $88
	sbc  c                                           ; $53c0: $99
	adc  b                                           ; $53c1: $88
	adc  c                                           ; $53c2: $89
	adc  b                                           ; $53c3: $88
	add  a                                           ; $53c4: $87
	ld   a, b                                        ; $53c5: $78
	adc  b                                           ; $53c6: $88
	adc  c                                           ; $53c7: $89
	sbc  b                                           ; $53c8: $98
	adc  b                                           ; $53c9: $88
	add  a                                           ; $53ca: $87
	adc  b                                           ; $53cb: $88
	ld   [hl], a                                     ; $53cc: $77
	add  a                                           ; $53cd: $87

Jump_0ec_53ce:
	adc  b                                           ; $53ce: $88
	adc  c                                           ; $53cf: $89
	adc  c                                           ; $53d0: $89
	adc  b                                           ; $53d1: $88
	sbc  b                                           ; $53d2: $98
	ld   a, b                                        ; $53d3: $78
	ld   a, b                                        ; $53d4: $78
	adc  b                                           ; $53d5: $88
	sbc  b                                           ; $53d6: $98
	sbc  b                                           ; $53d7: $98
	sbc  c                                           ; $53d8: $99
	adc  b                                           ; $53d9: $88
	add  a                                           ; $53da: $87
	ld   [hl], a                                     ; $53db: $77
	add  a                                           ; $53dc: $87
	adc  c                                           ; $53dd: $89
	adc  c                                           ; $53de: $89
	sbc  c                                           ; $53df: $99
	sbc  b                                           ; $53e0: $98
	adc  b                                           ; $53e1: $88
	add  a                                           ; $53e2: $87
	add  a                                           ; $53e3: $87
	adc  b                                           ; $53e4: $88
	adc  b                                           ; $53e5: $88
	sbc  c                                           ; $53e6: $99
	adc  c                                           ; $53e7: $89
	adc  b                                           ; $53e8: $88
	adc  b                                           ; $53e9: $88
	ld   a, b                                        ; $53ea: $78
	adc  b                                           ; $53eb: $88
	adc  b                                           ; $53ec: $88
	adc  b                                           ; $53ed: $88
	sbc  b                                           ; $53ee: $98
	sbc  b                                           ; $53ef: $98
	adc  b                                           ; $53f0: $88
	ld   [hl], a                                     ; $53f1: $77
	ld   a, b                                        ; $53f2: $78
	adc  b                                           ; $53f3: $88
	adc  c                                           ; $53f4: $89
	sbc  c                                           ; $53f5: $99
	adc  c                                           ; $53f6: $89
	adc  b                                           ; $53f7: $88
	adc  b                                           ; $53f8: $88
	adc  b                                           ; $53f9: $88
	adc  b                                           ; $53fa: $88
	adc  b                                           ; $53fb: $88
	sbc  c                                           ; $53fc: $99
	sbc  b                                           ; $53fd: $98
	adc  b                                           ; $53fe: $88
	adc  b                                           ; $53ff: $88
	adc  b                                           ; $5400: $88
	adc  b                                           ; $5401: $88
	adc  b                                           ; $5402: $88
	sbc  b                                           ; $5403: $98
	adc  c                                           ; $5404: $89
	adc  b                                           ; $5405: $88
	adc  b                                           ; $5406: $88
	adc  b                                           ; $5407: $88
	adc  b                                           ; $5408: $88
	adc  b                                           ; $5409: $88
	adc  c                                           ; $540a: $89
	adc  c                                           ; $540b: $89
	adc  b                                           ; $540c: $88
	adc  b                                           ; $540d: $88
	adc  b                                           ; $540e: $88
	adc  b                                           ; $540f: $88
	adc  b                                           ; $5410: $88
	adc  b                                           ; $5411: $88
	adc  b                                           ; $5412: $88
	sbc  b                                           ; $5413: $98
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
	adc  c                                           ; $5495: $89
	adc  b                                           ; $5496: $88
	adc  b                                           ; $5497: $88
	adc  b                                           ; $5498: $88
	adc  b                                           ; $5499: $88
	adc  b                                           ; $549a: $88
	ld   a, b                                        ; $549b: $78
	ld   a, b                                        ; $549c: $78
	adc  b                                           ; $549d: $88
	adc  b                                           ; $549e: $88
	adc  b                                           ; $549f: $88
	sbc  b                                           ; $54a0: $98
	adc  b                                           ; $54a1: $88
	adc  b                                           ; $54a2: $88
	adc  b                                           ; $54a3: $88
	adc  b                                           ; $54a4: $88
	adc  b                                           ; $54a5: $88
	adc  b                                           ; $54a6: $88
	ld   a, b                                        ; $54a7: $78
	add  a                                           ; $54a8: $87
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
	sbc  b                                           ; $54c1: $98
	sbc  b                                           ; $54c2: $98
	adc  b                                           ; $54c3: $88
	adc  b                                           ; $54c4: $88
	adc  c                                           ; $54c5: $89
	adc  c                                           ; $54c6: $89
	adc  b                                           ; $54c7: $88
	adc  b                                           ; $54c8: $88
	sbc  b                                           ; $54c9: $98
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
	sbc  b                                           ; $54d4: $98
	adc  b                                           ; $54d5: $88
	sbc  b                                           ; $54d6: $98
	adc  c                                           ; $54d7: $89
	sbc  c                                           ; $54d8: $99
	ld   a, b                                        ; $54d9: $78
	sub  a                                           ; $54da: $97
	sbc  b                                           ; $54db: $98
	ld   a, b                                        ; $54dc: $78
	add  a                                           ; $54dd: $87
	ld   a, c                                        ; $54de: $79
	adc  b                                           ; $54df: $88
	adc  b                                           ; $54e0: $88
	adc  b                                           ; $54e1: $88
	sub  a                                           ; $54e2: $97
	adc  c                                           ; $54e3: $89
	ld   a, b                                        ; $54e4: $78
	add  a                                           ; $54e5: $87
	adc  b                                           ; $54e6: $88
	ld   a, b                                        ; $54e7: $78
	adc  b                                           ; $54e8: $88
	add  a                                           ; $54e9: $87
	adc  c                                           ; $54ea: $89
	sbc  b                                           ; $54eb: $98
	adc  b                                           ; $54ec: $88
	adc  b                                           ; $54ed: $88
	ld   a, b                                        ; $54ee: $78
	ld   a, b                                        ; $54ef: $78
	ld   [hl], a                                     ; $54f0: $77
	add  a                                           ; $54f1: $87
	adc  b                                           ; $54f2: $88
	sbc  b                                           ; $54f3: $98
	adc  c                                           ; $54f4: $89
	sbc  c                                           ; $54f5: $99
	sbc  c                                           ; $54f6: $99
	ld   a, b                                        ; $54f7: $78
	add  [hl]                                        ; $54f8: $86
	ld   [hl], a                                     ; $54f9: $77
	halt                                             ; $54fa: $76
	ld   a, b                                        ; $54fb: $78
	ld   a, b                                        ; $54fc: $78
	xor  d                                           ; $54fd: $aa
	sbc  d                                           ; $54fe: $9a
	xor  b                                           ; $54ff: $a8
	adc  b                                           ; $5500: $88
	ld   [hl], a                                     ; $5501: $77
	ld   h, [hl]                                     ; $5502: $66
	ld   h, a                                        ; $5503: $67
	ld   h, [hl]                                     ; $5504: $66
	adc  c                                           ; $5505: $89
	sbc  d                                           ; $5506: $9a
	cp   d                                           ; $5507: $ba
	xor  d                                           ; $5508: $aa
	xor  c                                           ; $5509: $a9
	add  a                                           ; $550a: $87
	ld   d, [hl]                                     ; $550b: $56
	ld   d, l                                        ; $550c: $55
	ld   h, [hl]                                     ; $550d: $66
	ld   a, b                                        ; $550e: $78
	sbc  e                                           ; $550f: $9b
	xor  h                                           ; $5510: $ac
	cp   d                                           ; $5511: $ba
	xor  c                                           ; $5512: $a9
	add  a                                           ; $5513: $87
	ld   h, h                                        ; $5514: $64
	ld   b, h                                        ; $5515: $44
	ld   [hl], $67                                   ; $5516: $36 $67
	sbc  e                                           ; $5518: $9b
	call $aaeb                                       ; $5519: $cd $eb $aa
	ld   [hl], a                                     ; $551c: $77
	ld   d, h                                        ; $551d: $54
	inc  h                                           ; $551e: $24
	ld   [hl-], a                                    ; $551f: $32
	ld   h, [hl]                                     ; $5520: $66
	sbc  e                                           ; $5521: $9b
	sbc  $df                                         ; $5522: $de $df
	res  4, a                                        ; $5524: $cb $a7
	ld   d, e                                        ; $5526: $53
	ld   hl, $3632                                   ; $5527: $21 $32 $36
	ld   a, h                                        ; $552a: $7c
	rst  JumpTable                                         ; $552b: $df
	rst  $38                                         ; $552c: $ff
	db   $fc                                         ; $552d: $fc
	or   a                                           ; $552e: $b7
	ld   d, e                                        ; $552f: $53
	ld   hl, $1512                                   ; $5530: $21 $12 $15
	ld   a, d                                        ; $5533: $7a
	rst  JumpTable                                         ; $5534: $df
	rst  $38                                         ; $5535: $ff
	cp   $b9                                         ; $5536: $fe $b9
	ld   d, h                                        ; $5538: $54
	ld   de, $2211                                   ; $5539: $11 $11 $22
	ld   l, d                                        ; $553c: $6a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $553d: $cf
	rst  $38                                         ; $553e: $ff
	rst  $38                                         ; $553f: $ff
	jp   c, $3175                                    ; $5540: $da $75 $31

	ld   de, $3813                                   ; $5543: $11 $13 $38
	cp   l                                           ; $5546: $bd
	rst  $38                                         ; $5547: $ff
	rst  $38                                         ; $5548: $ff
	ei                                               ; $5549: $fb
	add  a                                           ; $554a: $87
	ld   sp, $1111                                   ; $554b: $31 $11 $11
	ld   b, h                                        ; $554e: $44
	xor  h                                           ; $554f: $ac
	rst  $38                                         ; $5550: $ff
	rst  $38                                         ; $5551: $ff
	xor  $96                                         ; $5552: $ee $96
	ld   h, d                                        ; $5554: $62
	ld   de, $2411                                   ; $5555: $11 $11 $24
	ld   e, e                                        ; $5558: $5b
	xor  $ff                                         ; $5559: $ee $ff
	rst  $38                                         ; $555b: $ff
	reti                                             ; $555c: $d9


	halt                                             ; $555d: $76
	ld   b, c                                        ; $555e: $41
	ld   de, $5611                                   ; $555f: $11 $11 $56
	adc  l                                           ; $5562: $8d
	rst  JumpTable                                         ; $5563: $df
	rst  $38                                         ; $5564: $ff
	db   $ec                                         ; $5565: $ec
	rst  ToBoot                                         ; $5566: $c7
	ld   d, l                                        ; $5567: $55
	ld   sp, $1411                                   ; $5568: $31 $11 $14
	ld   h, a                                        ; $556b: $67
	xor  l                                           ; $556c: $ad
	xor  $fe                                         ; $556d: $ee $fe
	res  4, [hl]                                     ; $556f: $cb $a6
	ld   h, l                                        ; $5571: $65
	inc  sp                                          ; $5572: $33
	ld   hl, $7725                                   ; $5573: $21 $25 $77
	xor  h                                           ; $5576: $ac
	call $bcfd                                       ; $5577: $cd $fd $bc
	or   a                                           ; $557a: $b7
	ld   h, a                                        ; $557b: $67
	ld   b, e                                        ; $557c: $43
	ld   [hl-], a                                    ; $557d: $32
	inc  de                                          ; $557e: $13
	ld   h, [hl]                                     ; $557f: $66
	ld   a, d                                        ; $5580: $7a
	call c, $ccdf                                    ; $5581: $dc $df $cc
	cp   d                                           ; $5584: $ba
	ld   [hl], a                                     ; $5585: $77
	ld   h, h                                        ; $5586: $64
	inc  sp                                          ; $5587: $33
	ld   de, $6a56                                   ; $5588: $11 $56 $6a
	xor  h                                           ; $558b: $ac
	adc  $eb                                         ; $558c: $ce $eb
	res  0, a                                        ; $558e: $cb $87
	halt                                             ; $5590: $76
	ld   b, h                                        ; $5591: $44
	ld   sp, $6625                                   ; $5592: $31 $25 $66

Call_0ec_5595:
	sbc  e                                           ; $5595: $9b
	cp   h                                           ; $5596: $bc
	xor  $dd                                         ; $5597: $ee $dd
	cp   c                                           ; $5599: $b9
	add  a                                           ; $559a: $87
	ld   d, h                                        ; $559b: $54
	ld   b, e                                        ; $559c: $43
	ld   [de], a                                     ; $559d: $12
	ld   b, [hl]                                     ; $559e: $46
	ld   a, b                                        ; $559f: $78
	xor  e                                           ; $55a0: $ab
	db   $dd                                         ; $55a1: $dd
	db   $ed                                         ; $55a2: $ed
	cp   e                                           ; $55a3: $bb
	add  a                                           ; $55a4: $87
	ld   h, [hl]                                     ; $55a5: $66
	ld   d, h                                        ; $55a6: $54
	ld   b, e                                        ; $55a7: $43
	inc  sp                                          ; $55a8: $33
	ld   h, a                                        ; $55a9: $67
	ld   a, d                                        ; $55aa: $7a
	xor  h                                           ; $55ab: $ac
	sbc  $db                                         ; $55ac: $de $db
	cp   c                                           ; $55ae: $b9
	ld   [hl], a                                     ; $55af: $77
	halt                                             ; $55b0: $76
	ld   d, l                                        ; $55b1: $55
	ld   b, e                                        ; $55b2: $43
	ld   b, h                                        ; $55b3: $44
	ld   h, a                                        ; $55b4: $67
	adc  c                                           ; $55b5: $89
	xor  h                                           ; $55b6: $ac
	call $a9db                                       ; $55b7: $cd $db $a9
	add  a                                           ; $55ba: $87
	halt                                             ; $55bb: $76
	ld   h, [hl]                                     ; $55bc: $66
	ld   b, h                                        ; $55bd: $44
	ld   b, h                                        ; $55be: $44
	halt                                             ; $55bf: $76
	ld   a, d                                        ; $55c0: $7a
	sbc  d                                           ; $55c1: $9a
	cp   l                                           ; $55c2: $bd
	cp   e                                           ; $55c3: $bb
	cp   c                                           ; $55c4: $b9
	adc  b                                           ; $55c5: $88
	halt                                             ; $55c6: $76
	ld   h, [hl]                                     ; $55c7: $66
	ld   d, h                                        ; $55c8: $54
	ld   b, h                                        ; $55c9: $44
	ld   h, a                                        ; $55ca: $67
	ld   a, b                                        ; $55cb: $78
	xor  e                                           ; $55cc: $ab
	xor  l                                           ; $55cd: $ad
	res  5, e                                        ; $55ce: $cb $ab
	sbc  b                                           ; $55d0: $98
	adc  b                                           ; $55d1: $88
	ld   h, [hl]                                     ; $55d2: $66
	ld   d, h                                        ; $55d3: $54
	ld   b, e                                        ; $55d4: $43
	ld   d, [hl]                                     ; $55d5: $56
	ld   a, b                                        ; $55d6: $78
	adc  e                                           ; $55d7: $8b
	cp   h                                           ; $55d8: $bc
	res  7, d                                        ; $55d9: $cb $ba
	sbc  b                                           ; $55db: $98
	add  a                                           ; $55dc: $87
	ld   h, [hl]                                     ; $55dd: $66
	ld   h, h                                        ; $55de: $64
	ld   b, h                                        ; $55df: $44
	ld   b, l                                        ; $55e0: $45
	ld   l, b                                        ; $55e1: $68
	ld   a, c                                        ; $55e2: $79
	cp   e                                           ; $55e3: $bb
	call $a9cb                                       ; $55e4: $cd $cb $a9
	adc  b                                           ; $55e7: $88
	add  a                                           ; $55e8: $87
	halt                                             ; $55e9: $76
	ld   d, e                                        ; $55ea: $53
	inc  [hl]                                        ; $55eb: $34
	ld   b, a                                        ; $55ec: $47
	ld   [hl], a                                     ; $55ed: $77
	cp   d                                           ; $55ee: $ba
	db   $dd                                         ; $55ef: $dd
	call c, $88bb                                    ; $55f0: $dc $bb $88
	add  [hl]                                        ; $55f3: $86
	ld   h, [hl]                                     ; $55f4: $66
	ld   b, h                                        ; $55f5: $44
	inc  [hl]                                        ; $55f6: $34
	ld   d, [hl]                                     ; $55f7: $56
	ld   a, b                                        ; $55f8: $78
	xor  e                                           ; $55f9: $ab
	cp   l                                           ; $55fa: $bd
	db   $db                                         ; $55fb: $db
	res  1, b                                        ; $55fc: $cb $88
	add  a                                           ; $55fe: $87
	ld   h, a                                        ; $55ff: $67
	ld   h, l                                        ; $5600: $65
	ld   b, e                                        ; $5601: $43
	ld   b, l                                        ; $5602: $45
	ld   h, a                                        ; $5603: $67
	ld   a, c                                        ; $5604: $79
	cp   h                                           ; $5605: $bc
	db   $ed                                         ; $5606: $ed
	res  7, b                                        ; $5607: $cb $b8
	ld   [hl], a                                     ; $5609: $77
	ld   h, [hl]                                     ; $560a: $66
	ld   h, [hl]                                     ; $560b: $66
	ld   d, l                                        ; $560c: $55
	ld   b, l                                        ; $560d: $45
	ld   d, a                                        ; $560e: $57
	ld   [hl], a                                     ; $560f: $77
	xor  e                                           ; $5610: $ab
	cp   l                                           ; $5611: $bd
	db   $db                                         ; $5612: $db
	cp   d                                           ; $5613: $ba
	sbc  b                                           ; $5614: $98
	add  a                                           ; $5615: $87
	ld   h, [hl]                                     ; $5616: $66
	ld   h, l                                        ; $5617: $65
	ld   b, h                                        ; $5618: $44
	ld   b, l                                        ; $5619: $45
	ld   h, a                                        ; $561a: $67
	ld   a, e                                        ; $561b: $7b
	xor  e                                           ; $561c: $ab
	call c, $a8cc                                    ; $561d: $dc $cc $a8
	add  a                                           ; $5620: $87
	ld   h, [hl]                                     ; $5621: $66
	ld   [hl], l                                     ; $5622: $75
	ld   d, h                                        ; $5623: $54
	ld   b, l                                        ; $5624: $45
	ld   d, a                                        ; $5625: $57
	ld   a, b                                        ; $5626: $78
	xor  e                                           ; $5627: $ab
	call $aadb                                       ; $5628: $cd $db $aa
	adc  b                                           ; $562b: $88
	halt                                             ; $562c: $76
	halt                                             ; $562d: $76
	ld   h, l                                        ; $562e: $65
	ld   b, h                                        ; $562f: $44
	ld   d, [hl]                                     ; $5630: $56
	ld   h, [hl]                                     ; $5631: $66
	adc  c                                           ; $5632: $89
	xor  h                                           ; $5633: $ac
	call c, $a9cc                                    ; $5634: $dc $cc $a9
	add  a                                           ; $5637: $87
	ld   h, a                                        ; $5638: $67
	ld   h, l                                        ; $5639: $65
	ld   d, h                                        ; $563a: $54
	ld   b, l                                        ; $563b: $45
	ld   h, [hl]                                     ; $563c: $66
	ld   h, a                                        ; $563d: $67
	adc  e                                           ; $563e: $8b
	call $cbdc                                       ; $563f: $cd $dc $cb
	sbc  b                                           ; $5642: $98
	add  a                                           ; $5643: $87
	ld   h, a                                        ; $5644: $67
	ld   h, l                                        ; $5645: $65
	ld   d, h                                        ; $5646: $54
	ld   b, l                                        ; $5647: $45
	ld   h, [hl]                                     ; $5648: $66
	ld   l, c                                        ; $5649: $69
	sbc  e                                           ; $564a: $9b
	call $a9db                                       ; $564b: $cd $db $a9
	add  a                                           ; $564e: $87
	ld   [hl], a                                     ; $564f: $77
	halt                                             ; $5650: $76
	ld   h, l                                        ; $5651: $65
	ld   b, h                                        ; $5652: $44
	ld   d, [hl]                                     ; $5653: $56
	ld   h, [hl]                                     ; $5654: $66
	adc  c                                           ; $5655: $89
	xor  l                                           ; $5656: $ad
	call z, $99db                                    ; $5657: $cc $db $99
	add  a                                           ; $565a: $87
	ld   [hl], a                                     ; $565b: $77
	ld   h, [hl]                                     ; $565c: $66
	ld   h, h                                        ; $565d: $64
	ld   b, l                                        ; $565e: $45
	ld   d, [hl]                                     ; $565f: $56
	ld   d, [hl]                                     ; $5660: $56
	sbc  b                                           ; $5661: $98
	call $cabd                                       ; $5662: $cd $bd $ca
	sbc  c                                           ; $5665: $99

Jump_0ec_5666:
	add  [hl]                                        ; $5666: $86
	ld   [hl], a                                     ; $5667: $77
	ld   h, a                                        ; $5668: $67
	ld   d, e                                        ; $5669: $53
	ld   d, l                                        ; $566a: $55
	ld   b, [hl]                                     ; $566b: $46
	ld   h, a                                        ; $566c: $67
	xor  d                                           ; $566d: $aa
	cp   h                                           ; $566e: $bc
	call $98ba                                       ; $566f: $cd $ba $98
	add  a                                           ; $5672: $87
	ld   [hl], a                                     ; $5673: $77
	ld   h, [hl]                                     ; $5674: $66
	ld   b, h                                        ; $5675: $44
	ld   d, h                                        ; $5676: $54
	ld   d, [hl]                                     ; $5677: $56
	ld   l, c                                        ; $5678: $69
	sbc  e                                           ; $5679: $9b
	set  1, l                                        ; $567a: $cb $cd
	xor  e                                           ; $567c: $ab
	sbc  c                                           ; $567d: $99
	ld   [hl], a                                     ; $567e: $77
	halt                                             ; $567f: $76
	ld   h, l                                        ; $5680: $65
	ld   b, h                                        ; $5681: $44
	ld   d, h                                        ; $5682: $54
	ld   d, [hl]                                     ; $5683: $56
	ld   l, c                                        ; $5684: $69
	sbc  d                                           ; $5685: $9a
	db   $eb                                         ; $5686: $eb
	call c, $a8ba                                    ; $5687: $dc $ba $a8
	ld   [hl], a                                     ; $568a: $77
	halt                                             ; $568b: $76
	ld   h, l                                        ; $568c: $65
	ld   b, h                                        ; $568d: $44
	ld   d, h                                        ; $568e: $54
	ld   d, [hl]                                     ; $568f: $56
	ld   l, c                                        ; $5690: $69
	xor  e                                           ; $5691: $ab
	call z, $bbdb                                    ; $5692: $cc $db $bb
	adc  c                                           ; $5695: $89
	ld   [hl], a                                     ; $5696: $77
	halt                                             ; $5697: $76
	ld   h, l                                        ; $5698: $65
	ld   b, h                                        ; $5699: $44
	ld   d, h                                        ; $569a: $54
	ld   d, [hl]                                     ; $569b: $56
	ld   l, b                                        ; $569c: $68
	sbc  d                                           ; $569d: $9a
	call c, $aadc                                    ; $569e: $dc $dc $aa
	sbc  b                                           ; $56a1: $98
	add  a                                           ; $56a2: $87
	ld   [hl], a                                     ; $56a3: $77
	ld   h, [hl]                                     ; $56a4: $66
	ld   b, h                                        ; $56a5: $44
	ld   d, h                                        ; $56a6: $54
	ld   d, [hl]                                     ; $56a7: $56
	ld   e, b                                        ; $56a8: $58
	xor  d                                           ; $56a9: $aa
	call z, $cacd                                    ; $56aa: $cc $cd $ca
	xor  c                                           ; $56ad: $a9
	add  a                                           ; $56ae: $87
	ld   [hl], a                                     ; $56af: $77
	ld   h, [hl]                                     ; $56b0: $66
	ld   b, h                                        ; $56b1: $44
	ld   d, l                                        ; $56b2: $55
	ld   d, [hl]                                     ; $56b3: $56
	ld   h, a                                        ; $56b4: $67
	adc  c                                           ; $56b5: $89
	set  3, h                                        ; $56b6: $cb $dc
	res  7, c                                        ; $56b8: $cb $b9
	sub  a                                           ; $56ba: $97
	ld   [hl], a                                     ; $56bb: $77
	ld   h, [hl]                                     ; $56bc: $66
	ld   d, h                                        ; $56bd: $54
	ld   b, l                                        ; $56be: $45
	ld   d, [hl]                                     ; $56bf: $56
	ld   h, [hl]                                     ; $56c0: $66
	sbc  c                                           ; $56c1: $99
	cp   h                                           ; $56c2: $bc
	cp   l                                           ; $56c3: $bd
	res  5, d                                        ; $56c4: $cb $aa
	adc  b                                           ; $56c6: $88
	ld   [hl], a                                     ; $56c7: $77
	halt                                             ; $56c8: $76
	ld   h, l                                        ; $56c9: $65
	ld   b, l                                        ; $56ca: $45
	ld   d, l                                        ; $56cb: $55
	ld   h, [hl]                                     ; $56cc: $66
	ld   a, c                                        ; $56cd: $79
	sbc  e                                           ; $56ce: $9b
	cp   e                                           ; $56cf: $bb
	call z, $98ab                                    ; $56d0: $cc $ab $98
	add  a                                           ; $56d3: $87
	ld   [hl], a                                     ; $56d4: $77
	ld   h, l                                        ; $56d5: $65
	ld   b, h                                        ; $56d6: $44
	ld   d, l                                        ; $56d7: $55
	ld   h, [hl]                                     ; $56d8: $66
	ld   l, c                                        ; $56d9: $69
	sbc  c                                           ; $56da: $99
	cp   e                                           ; $56db: $bb
	cp   h                                           ; $56dc: $bc
	jp   z, $88a9                                    ; $56dd: $ca $a9 $88

	halt                                             ; $56e0: $76
	halt                                             ; $56e1: $76
	ld   d, h                                        ; $56e2: $54
	ld   d, l                                        ; $56e3: $55
	ld   d, [hl]                                     ; $56e4: $56
	ld   h, a                                        ; $56e5: $67
	sbc  c                                           ; $56e6: $99
	cp   e                                           ; $56e7: $bb
	cp   h                                           ; $56e8: $bc
	cp   d                                           ; $56e9: $ba
	cp   d                                           ; $56ea: $ba
	adc  b                                           ; $56eb: $88
	ld   [hl], a                                     ; $56ec: $77
	halt                                             ; $56ed: $76
	ld   h, l                                        ; $56ee: $65
	ld   b, l                                        ; $56ef: $45
	ld   d, l                                        ; $56f0: $55
	ld   h, [hl]                                     ; $56f1: $66
	ld   a, b                                        ; $56f2: $78
	sbc  e                                           ; $56f3: $9b
	cp   h                                           ; $56f4: $bc
	call z, $a8bb                                    ; $56f5: $cc $bb $a8
	add  a                                           ; $56f8: $87
	ld   [hl], a                                     ; $56f9: $77
	ld   h, [hl]                                     ; $56fa: $66
	ld   d, h                                        ; $56fb: $54
	ld   d, [hl]                                     ; $56fc: $56
	ld   d, [hl]                                     ; $56fd: $56
	ld   h, a                                        ; $56fe: $67
	sbc  b                                           ; $56ff: $98
	cp   d                                           ; $5700: $ba
	call z, $b9bc                                    ; $5701: $cc $bc $b9
	sub  a                                           ; $5704: $97
	ld   [hl], a                                     ; $5705: $77
	ld   h, a                                        ; $5706: $67
	ld   h, [hl]                                     ; $5707: $66
	ld   d, l                                        ; $5708: $55
	ld   h, l                                        ; $5709: $65
	ld   h, [hl]                                     ; $570a: $66
	ld   h, a                                        ; $570b: $67
	sbc  d                                           ; $570c: $9a
	cp   e                                           ; $570d: $bb
	res  7, d                                        ; $570e: $cb $ba
	sbc  d                                           ; $5710: $9a
	add  a                                           ; $5711: $87
	add  a                                           ; $5712: $87
	ld   [hl], a                                     ; $5713: $77
	ld   h, l                                        ; $5714: $65
	ld   d, [hl]                                     ; $5715: $56
	ld   d, l                                        ; $5716: $55
	ld   h, [hl]                                     ; $5717: $66
	ld   a, c                                        ; $5718: $79
	sbc  e                                           ; $5719: $9b
	xor  h                                           ; $571a: $ac
	set  1, d                                        ; $571b: $cb $ca
	xor  c                                           ; $571d: $a9
	ld   a, b                                        ; $571e: $78
	ld   [hl], a                                     ; $571f: $77
	ld   [hl], a                                     ; $5720: $77
	ld   h, l                                        ; $5721: $65
	ld   d, [hl]                                     ; $5722: $56
	ld   d, l                                        ; $5723: $55
	ld   h, [hl]                                     ; $5724: $66
	ld   a, b                                        ; $5725: $78
	sbc  e                                           ; $5726: $9b
	cp   h                                           ; $5727: $bc
	cp   e                                           ; $5728: $bb
	cp   c                                           ; $5729: $b9
	xor  c                                           ; $572a: $a9
	ld   a, b                                        ; $572b: $78
	ld   [hl], a                                     ; $572c: $77
	halt                                             ; $572d: $76
	ld   d, l                                        ; $572e: $55
	ld   d, [hl]                                     ; $572f: $56
	ld   d, [hl]                                     ; $5730: $56
	ld   h, [hl]                                     ; $5731: $66
	ld   a, b                                        ; $5732: $78
	xor  d                                           ; $5733: $aa
	xor  e                                           ; $5734: $ab
	cp   d                                           ; $5735: $ba
	cp   d                                           ; $5736: $ba
	sbc  c                                           ; $5737: $99
	ld   a, b                                        ; $5738: $78
	ld   [hl], a                                     ; $5739: $77
	halt                                             ; $573a: $76
	ld   d, l                                        ; $573b: $55
	ld   d, [hl]                                     ; $573c: $56
	ld   d, [hl]                                     ; $573d: $56
	ld   h, [hl]                                     ; $573e: $66
	adc  c                                           ; $573f: $89
	sbc  e                                           ; $5740: $9b
	cp   h                                           ; $5741: $bc
	cp   d                                           ; $5742: $ba
	cp   d                                           ; $5743: $ba
	sbc  b                                           ; $5744: $98
	ld   [hl], a                                     ; $5745: $77
	ld   [hl], a                                     ; $5746: $77
	halt                                             ; $5747: $76
	ld   h, l                                        ; $5748: $65
	ld   d, [hl]                                     ; $5749: $56
	ld   d, [hl]                                     ; $574a: $56
	ld   h, l                                        ; $574b: $65
	adc  b                                           ; $574c: $88
	adc  h                                           ; $574d: $8c
	cp   e                                           ; $574e: $bb
	jp   z, $99ba                                    ; $574f: $ca $ba $99

	add  a                                           ; $5752: $87
	ld   [hl], a                                     ; $5753: $77
	ld   h, [hl]                                     ; $5754: $66
	ld   h, l                                        ; $5755: $65
	ld   d, [hl]                                     ; $5756: $56
	ld   d, [hl]                                     ; $5757: $56
	ld   h, l                                        ; $5758: $65
	adc  b                                           ; $5759: $88
	adc  e                                           ; $575a: $8b
	jp   z, $abdc                                    ; $575b: $ca $dc $ab

	sbc  b                                           ; $575e: $98
	add  a                                           ; $575f: $87
	ld   a, b                                        ; $5760: $78
	ld   h, [hl]                                     ; $5761: $66
	ld   h, l                                        ; $5762: $65
	ld   d, [hl]                                     ; $5763: $56
	ld   d, [hl]                                     ; $5764: $56
	ld   h, [hl]                                     ; $5765: $66
	ld   a, c                                        ; $5766: $79
	sbc  d                                           ; $5767: $9a
	res  7, h                                        ; $5768: $cb $bc
	xor  d                                           ; $576a: $aa
	sub  a                                           ; $576b: $97
	sub  a                                           ; $576c: $97
	ld   h, a                                        ; $576d: $67
	halt                                             ; $576e: $76
	ld   h, l                                        ; $576f: $65
	ld   d, [hl]                                     ; $5770: $56
	ld   d, l                                        ; $5771: $55
	ld   h, l                                        ; $5772: $65
	ld   a, b                                        ; $5773: $78
	sbc  e                                           ; $5774: $9b
	cp   h                                           ; $5775: $bc
	cp   h                                           ; $5776: $bc
	cp   c                                           ; $5777: $b9
	xor  b                                           ; $5778: $a8
	adc  b                                           ; $5779: $88
	ld   h, a                                        ; $577a: $67
	halt                                             ; $577b: $76
	ld   h, l                                        ; $577c: $65
	ld   d, [hl]                                     ; $577d: $56
	ld   d, l                                        ; $577e: $55
	ld   h, [hl]                                     ; $577f: $66
	ld   a, b                                        ; $5780: $78
	sbc  d                                           ; $5781: $9a
	cp   e                                           ; $5782: $bb
	cp   h                                           ; $5783: $bc
	cp   c                                           ; $5784: $b9
	xor  c                                           ; $5785: $a9
	ld   a, b                                        ; $5786: $78
	ld   [hl], a                                     ; $5787: $77
	halt                                             ; $5788: $76
	ld   h, l                                        ; $5789: $65
	ld   b, [hl]                                     ; $578a: $46
	ld   h, l                                        ; $578b: $65
	ld   h, [hl]                                     ; $578c: $66
	ld   l, c                                        ; $578d: $69
	sbc  c                                           ; $578e: $99
	call z, $b9bb                                    ; $578f: $cc $bb $b9
	sbc  c                                           ; $5792: $99
	ld   a, b                                        ; $5793: $78
	ld   [hl], a                                     ; $5794: $77
	ld   [hl], a                                     ; $5795: $77
	ld   h, [hl]                                     ; $5796: $66

Call_0ec_5797:
	ld   b, l                                        ; $5797: $45
	ld   h, h                                        ; $5798: $64
	ld   h, a                                        ; $5799: $67
	ld   l, c                                        ; $579a: $69
	xor  d                                           ; $579b: $aa
	call z, $c9bc                                    ; $579c: $cc $bc $c9
	xor  c                                           ; $579f: $a9
	ld   [hl], a                                     ; $57a0: $77
	halt                                             ; $57a1: $76
	ld   [hl], a                                     ; $57a2: $77
	ld   h, [hl]                                     ; $57a3: $66
	ld   b, l                                        ; $57a4: $45
	ld   h, h                                        ; $57a5: $64

Call_0ec_57a6:
	ld   h, a                                        ; $57a6: $67
	ld   l, b                                        ; $57a7: $68
	xor  c                                           ; $57a8: $a9
	cp   h                                           ; $57a9: $bc
	cp   e                                           ; $57aa: $bb
	jp   z, Jump_0ec_77aa                            ; $57ab: $ca $aa $77

	add  [hl]                                        ; $57ae: $86
	ld   [hl], a                                     ; $57af: $77
	ld   h, [hl]                                     ; $57b0: $66
	ld   b, h                                        ; $57b1: $44
	ld   h, l                                        ; $57b2: $65
	ld   d, a                                        ; $57b3: $57
	ld   h, a                                        ; $57b4: $67
	cp   d                                           ; $57b5: $ba
	cp   l                                           ; $57b6: $bd
	res  7, d                                        ; $57b7: $cb $ba
	sbc  d                                           ; $57b9: $9a
	ld   [hl], a                                     ; $57ba: $77
	add  [hl]                                        ; $57bb: $86
	ld   [hl], a                                     ; $57bc: $77
	ld   h, [hl]                                     ; $57bd: $66
	ld   d, h                                        ; $57be: $54
	ld   h, [hl]                                     ; $57bf: $66
	ld   c, b                                        ; $57c0: $48
	halt                                             ; $57c1: $76
	cp   d                                           ; $57c2: $ba
	xor  l                                           ; $57c3: $ad
	cp   e                                           ; $57c4: $bb
	cp   d                                           ; $57c5: $ba
	sbc  d                                           ; $57c6: $9a
	add  [hl]                                        ; $57c7: $86
	add  a                                           ; $57c8: $87
	ld   l, b                                        ; $57c9: $68
	halt                                             ; $57ca: $76
	ld   d, h                                        ; $57cb: $54
	ld   h, [hl]                                     ; $57cc: $66
	ld   c, b                                        ; $57cd: $48
	ld   h, a                                        ; $57ce: $67
	cp   d                                           ; $57cf: $ba
	xor  l                                           ; $57d0: $ad
	cp   e                                           ; $57d1: $bb
	jp   z, $8689                                    ; $57d2: $ca $89 $86

	add  a                                           ; $57d5: $87
	ld   l, b                                        ; $57d6: $68
	halt                                             ; $57d7: $76
	ld   d, e                                        ; $57d8: $53
	ld   h, a                                        ; $57d9: $67
	add  hl, sp                                      ; $57da: $39
	ld   [hl], l                                     ; $57db: $75
	res  5, l                                        ; $57dc: $cb $ad
	jp   z, Jump_0ec_79ca                            ; $57de: $ca $ca $79

	add  [hl]                                        ; $57e1: $86
	add  a                                           ; $57e2: $87
	ld   l, b                                        ; $57e3: $68
	ld   [hl], l                                     ; $57e4: $75
	ld   h, e                                        ; $57e5: $63
	ld   [hl], a                                     ; $57e6: $77
	add  hl, hl                                      ; $57e7: $29
	add  l                                           ; $57e8: $85
	db   $db                                         ; $57e9: $db
	sbc  l                                           ; $57ea: $9d
	jp   z, Jump_0ec_79ba                            ; $57eb: $ca $ba $79

	add  l                                           ; $57ee: $85
	adc  b                                           ; $57ef: $88
	ld   l, b                                        ; $57f0: $68
	ld   [hl], l                                     ; $57f1: $75
	ld   h, e                                        ; $57f2: $63
	halt                                             ; $57f3: $76
	add  hl, sp                                      ; $57f4: $39
	halt                                             ; $57f5: $76
	jp   c, $c9ad                                    ; $57f6: $da $ad $c9

	xor  c                                           ; $57f9: $a9
	ld   a, b                                        ; $57fa: $78
	add  l                                           ; $57fb: $85
	adc  b                                           ; $57fc: $88
	ld   l, c                                        ; $57fd: $69
	ld   [hl], l                                     ; $57fe: $75
	ld   h, e                                        ; $57ff: $63
	halt                                             ; $5800: $76
	ld   a, [hl-]                                    ; $5801: $3a
	halt                                             ; $5802: $76
	jp   c, $caad                                    ; $5803: $da $ad $ca

	xor  c                                           ; $5806: $a9
	ld   h, a                                        ; $5807: $67
	sub  l                                           ; $5808: $95
	adc  c                                           ; $5809: $89
	ld   l, d                                        ; $580a: $6a
	ld   [hl], l                                     ; $580b: $75
	ld   h, h                                        ; $580c: $64
	add  l                                           ; $580d: $85
	ld   a, [hl-]                                    ; $580e: $3a
	ld   h, a                                        ; $580f: $67
	jp   hl                                          ; $5810: $e9


	cp   l                                           ; $5811: $bd
	jp   z, Jump_0ec_6799                            ; $5812: $ca $99 $67

	add  l                                           ; $5815: $85
	sbc  c                                           ; $5816: $99
	ld   l, d                                        ; $5817: $6a
	ld   [hl], l                                     ; $5818: $75
	ld   b, l                                        ; $5819: $45
	sub  e                                           ; $581a: $93
	ld   l, d                                        ; $581b: $6a
	ld   c, d                                        ; $581c: $4a
	ret                                              ; $581d: $c9


	call c, $99b9                                    ; $581e: $dc $b9 $99
	ld   e, b                                        ; $5821: $58
	ld   [hl], l                                     ; $5822: $75
	and  a                                           ; $5823: $a7
	ld   a, d                                        ; $5824: $7a
	ld   h, l                                        ; $5825: $65
	ld   [hl], $91                                   ; $5826: $36 $91
	adc  d                                           ; $5828: $8a
	ld   c, l                                        ; $5829: $4d
	ret                                              ; $582a: $c9


	call c, $97a8                                    ; $582b: $dc $a8 $97
	ld   e, c                                        ; $582e: $59
	ld   h, l                                        ; $582f: $65
	and  a                                           ; $5830: $a7
	adc  c                                           ; $5831: $89
	ld   h, l                                        ; $5832: $65
	jr   c, jr_0ec_58a6                              ; $5833: $38 $71

	cp   c                                           ; $5835: $b9
	ld   e, a                                        ; $5836: $5f
	xor  d                                           ; $5837: $aa
	res  2, a                                        ; $5838: $cb $97
	and  [hl]                                        ; $583a: $a6
	ld   e, c                                        ; $583b: $59
	ld   h, [hl]                                     ; $583c: $66
	and  a                                           ; $583d: $a7
	adc  b                                           ; $583e: $88
	ld   d, d                                        ; $583f: $52
	ld   a, c                                        ; $5840: $79
	ld   a, [de]                                     ; $5841: $1a
	or   h                                           ; $5842: $b4
	call c, $ca9c                                    ; $5843: $dc $9c $ca
	ld   l, d                                        ; $5846: $6a
	ld   [hl], h                                     ; $5847: $74
	sub  a                                           ; $5848: $97
	ld   e, e                                        ; $5849: $5b
	sbc  b                                           ; $584a: $98
	add  a                                           ; $584b: $87
	ld   b, d                                        ; $584c: $42
	sub  l                                           ; $584d: $95
	dec  e                                           ; $584e: $1d
	ld   [hl], a                                     ; $584f: $77
	ld   a, [$c7ab]                                  ; $5850: $fa $ab $c7
	ld   l, c                                        ; $5853: $69
	ld   d, [hl]                                     ; $5854: $56
	and  [hl]                                        ; $5855: $a6
	ld   a, d                                        ; $5856: $7a
	ld   [hl], a                                     ; $5857: $77
	ld   [hl], e                                     ; $5858: $73
	ld   c, e                                        ; $5859: $4b
	ld   h, $d5                                      ; $585a: $26 $d5
	call $bbaa                                       ; $585c: $cd $aa $bb
	ld   d, a                                        ; $585f: $57
	add  e                                           ; $5860: $83
	ld   a, c                                        ; $5861: $79
	ld   e, d                                        ; $5862: $5a
	xor  b                                           ; $5863: $a8
	add  [hl]                                        ; $5864: $86
	ld   [hl-], a                                    ; $5865: $32
	or   h                                           ; $5866: $b4
	ccf                                              ; $5867: $3f
	ld   a, d                                        ; $5868: $7a
	ei                                               ; $5869: $fb
	cp   d                                           ; $586a: $ba
	or   [hl]                                        ; $586b: $b6
	ld   l, b                                        ; $586c: $68
	ld   d, [hl]                                     ; $586d: $56
	sub  [hl]                                        ; $586e: $96
	sbc  c                                           ; $586f: $99
	ld   [hl], a                                     ; $5870: $77
	ld   d, d                                        ; $5871: $52
	sub  a                                           ; $5872: $97
	dec  l                                           ; $5873: $2d
	sbc  b                                           ; $5874: $98

Jump_0ec_5875:
	jp   c, $a7c8                                    ; $5875: $da $c8 $a7

	ld   c, b                                        ; $5878: $48
	ld   h, l                                        ; $5879: $65
	sub  a                                           ; $587a: $97
	adc  c                                           ; $587b: $89
	add  a                                           ; $587c: $87
	ld   d, d                                        ; $587d: $52
	ld   a, d                                        ; $587e: $7a
	ld   a, [de]                                     ; $587f: $1a
	rst  ToBoot                                         ; $5880: $c7
	db   $db                                         ; $5881: $db
	ret  z                                           ; $5882: $c8

	xor  c                                           ; $5883: $a9
	ld   b, a                                        ; $5884: $47
	sub  l                                           ; $5885: $95
	sbc  c                                           ; $5886: $99
	ld   a, c                                        ; $5887: $79
	add  a                                           ; $5888: $87
	ld   b, d                                        ; $5889: $42
	sbc  c                                           ; $588a: $99
	dec  hl                                          ; $588b: $2b
	rst  ToBoot                                         ; $588c: $c7
	db   $db                                         ; $588d: $db
	or   a                                           ; $588e: $b7
	adc  c                                           ; $588f: $89
	scf                                              ; $5890: $37
	sub  [hl]                                        ; $5891: $96
	adc  c                                           ; $5892: $89
	ld   a, b                                        ; $5893: $78
	ld   [hl], a                                     ; $5894: $77
	inc  sp                                          ; $5895: $33
	cp   b                                           ; $5896: $b8
	ld   c, [hl]                                     ; $5897: $4e
	cp   c                                           ; $5898: $b9
	jp   z, $a7a5                                    ; $5899: $ca $a5 $a7

	ld   a, [hl-]                                    ; $589c: $3a
	add  [hl]                                        ; $589d: $86
	sbc  b                                           ; $589e: $98
	ld   [hl], a                                     ; $589f: $77
	ld   h, h                                        ; $58a0: $64
	dec  hl                                          ; $58a1: $2b
	sub  h                                           ; $58a2: $94
	db   $eb                                         ; $58a3: $eb
	sbc  e                                           ; $58a4: $9b
	cp   c                                           ; $58a5: $b9

Call_0ec_58a6:
jr_0ec_58a6:
	ld   e, c                                        ; $58a6: $59
	add  e                                           ; $58a7: $83
	sbc  d                                           ; $58a8: $9a
	ld   l, c                                        ; $58a9: $69
	adc  b                                           ; $58aa: $88
	halt                                             ; $58ab: $76
	ld   d, d                                        ; $58ac: $52
	sbc  e                                           ; $58ad: $9b
	ld   c, d                                        ; $58ae: $4a
	ret  c                                           ; $58af: $d8

	cp   d                                           ; $58b0: $ba
	and  [hl]                                        ; $58b1: $a6
	ld   l, d                                        ; $58b2: $6a
	ld   d, a                                        ; $58b3: $57
	sub  [hl]                                        ; $58b4: $96
	ld   a, c                                        ; $58b5: $79
	halt                                             ; $58b6: $76
	ld   d, e                                        ; $58b7: $53
	ld   a, l                                        ; $58b8: $7d
	ld   l, c                                        ; $58b9: $69
	add  sp, -$57                                    ; $58ba: $e8 $a9
	and  a                                           ; $58bc: $a7
	ld   l, d                                        ; $58bd: $6a
	ld   h, [hl]                                     ; $58be: $66
	and  a                                           ; $58bf: $a7
	ld   l, b                                        ; $58c0: $68
	halt                                             ; $58c1: $76
	ld   d, h                                        ; $58c2: $54
	ld   e, e                                        ; $58c3: $5b
	and  l                                           ; $58c4: $a5
	ld   [$a88a], a                                  ; $58c5: $ea $8a $a8
	ld   e, c                                        ; $58c8: $59
	sub  [hl]                                        ; $58c9: $96
	xor  c                                           ; $58ca: $a9
	ld   h, a                                        ; $58cb: $67
	halt                                             ; $58cc: $76
	ld   d, e                                        ; $58cd: $53
	ld   l, h                                        ; $58ce: $6c
	sub  [hl]                                        ; $58cf: $96
	jp   hl                                          ; $58d0: $e9


	adc  c                                           ; $58d1: $89
	sbc  b                                           ; $58d2: $98
	ld   e, d                                        ; $58d3: $5a
	add  [hl]                                        ; $58d4: $86
	sbc  b                                           ; $58d5: $98
	ld   h, a                                        ; $58d6: $67
	ld   [hl], a                                     ; $58d7: $77
	ld   d, e                                        ; $58d8: $53
	adc  l                                           ; $58d9: $8d
	ld   [hl], a                                     ; $58da: $77
	ld   hl, sp+$78                                  ; $58db: $f8 $78
	xor  b                                           ; $58dd: $a8
	ld   e, h                                        ; $58de: $5c
	add  a                                           ; $58df: $87
	and  a                                           ; $58e0: $a7
	ld   h, a                                        ; $58e1: $67
	halt                                             ; $58e2: $76
	ld   b, h                                        ; $58e3: $44
	cp   l                                           ; $58e4: $bd
	ld   e, d                                        ; $58e5: $5a
	sub  $78                                         ; $58e6: $d6 $78
	and  l                                           ; $58e8: $a5
	ld   a, h                                        ; $58e9: $7c
	ld   l, b                                        ; $58ea: $68
	sub  a                                           ; $58eb: $97
	ld   h, [hl]                                     ; $58ec: $66
	ld   [hl], l                                     ; $58ed: $75
	add  hl, sp                                      ; $58ee: $39
	rst  $30                                         ; $58ef: $f7
	adc  a                                           ; $58f0: $8f
	add  [hl]                                        ; $58f1: $86
	ld   a, e                                        ; $58f2: $7b
	add  h                                           ; $58f3: $84
	ret  z                                           ; $58f4: $c8

	ld   l, c                                        ; $58f5: $69
	halt                                             ; $58f6: $76
	ld   h, a                                        ; $58f7: $67
	ld   [hl], e                                     ; $58f8: $73
	ld   e, a                                        ; $58f9: $5f
	or   h                                           ; $58fa: $b4
	bit  4, [hl]                                     ; $58fb: $cb $66
	adc  h                                           ; $58fd: $8c
	ld   c, b                                        ; $58fe: $48
	push bc                                          ; $58ff: $c5
	ld   [hl], a                                     ; $5900: $77
	ld   h, [hl]                                     ; $5901: $66
	ld   a, c                                        ; $5902: $79
	ld   d, e                                        ; $5903: $53
	rst  JumpTable                                         ; $5904: $df
	ld   c, c                                        ; $5905: $49
	add  $67                                         ; $5906: $c6 $67
	rst  ToBoot                                         ; $5908: $c7
	ld   l, [hl]                                     ; $5909: $6e
	ld   h, [hl]                                     ; $590a: $66
	add  [hl]                                        ; $590b: $86
	ld   h, [hl]                                     ; $590c: $66
	add  [hl]                                        ; $590d: $86
	ld   a, [hl+]                                    ; $590e: $2a
	or   $8c                                         ; $590f: $f6 $8c
	ld   [hl], a                                     ; $5911: $77
	ld   l, h                                        ; $5912: $6c
	and  l                                           ; $5913: $a5
	ret                                              ; $5914: $c9


	ld   e, b                                        ; $5915: $58
	ld   h, a                                        ; $5916: $67
	ld   [hl], a                                     ; $5917: $77
	add  e                                           ; $5918: $83
	ld   e, a                                        ; $5919: $5f
	and  h                                           ; $591a: $a4
	ret                                              ; $591b: $c9


	halt                                             ; $591c: $76
	adc  h                                           ; $591d: $8c
	ld   l, d                                        ; $591e: $6a
	and  l                                           ; $591f: $a5
	halt                                             ; $5920: $76
	ld   [hl], a                                     ; $5921: $77
	ld   a, b                                        ; $5922: $78
	ld   d, h                                        ; $5923: $54
	db   $dd                                         ; $5924: $dd
	ld   c, e                                        ; $5925: $4b
	and  a                                           ; $5926: $a7
	halt                                             ; $5927: $76
	sub  $8d                                         ; $5928: $d6 $8d
	ld   d, a                                        ; $592a: $57
	ld   [hl], a                                     ; $592b: $77
	add  a                                           ; $592c: $87
	and  a                                           ; $592d: $a7
	ld   b, h                                        ; $592e: $44
	sbc  [hl]                                        ; $592f: $9e
	ld   c, c                                        ; $5930: $49
	sub  $85                                         ; $5931: $d6 $85

Jump_0ec_5933:
	rst  $10                                         ; $5933: $d7
	ld   l, h                                        ; $5934: $6c
	ld   [hl], a                                     ; $5935: $77
	ld   [hl], a                                     ; $5936: $77
	adc  b                                           ; $5937: $88
	adc  c                                           ; $5938: $89
	ld   h, l                                        ; $5939: $65
	ld   a, [hl+]                                    ; $593a: $2a
	db   $e3                                         ; $593b: $e3
	jp   z, Jump_0ec_5d78                            ; $593c: $ca $78 $5d

	ld   h, a                                        ; $593f: $67
	or   [hl]                                        ; $5940: $b6
	adc  b                                           ; $5941: $88
	sbc  b                                           ; $5942: $98
	ld   l, b                                        ; $5943: $68
	sub  l                                           ; $5944: $95
	ld   h, d                                        ; $5945: $62
	sbc  a                                           ; $5946: $9f
	ld   e, c                                        ; $5947: $59
	or   [hl]                                        ; $5948: $b6
	sub  h                                           ; $5949: $94
	ret                                              ; $594a: $c9


	ld   e, l                                        ; $594b: $5d
	ld   a, b                                        ; $594c: $78
	ld   [hl], a                                     ; $594d: $77
	and  a                                           ; $594e: $a7
	ld   a, b                                        ; $594f: $78
	ld   h, h                                        ; $5950: $64
	ld   a, [hl+]                                    ; $5951: $2a
	db   $f4                                         ; $5952: $f4
	sbc  h                                           ; $5953: $9c
	ld   h, a                                        ; $5954: $67
	ld   c, h                                        ; $5955: $4c
	and  [hl]                                        ; $5956: $a6
	rst  ToBoot                                         ; $5957: $c7
	halt                                             ; $5958: $76
	ld   a, d                                        ; $5959: $7a
	adc  c                                           ; $595a: $89
	add  l                                           ; $595b: $85
	ld   [hl-], a                                    ; $595c: $32
	cp   a                                           ; $595d: $bf
	ld   c, e                                        ; $595e: $4b
	and  [hl]                                        ; $595f: $a6
	ld   [hl], l                                     ; $5960: $75
	rst  ToBoot                                         ; $5961: $c7
	ld   a, h                                        ; $5962: $7c
	ld   l, b                                        ; $5963: $68
	ld   [hl], a                                     ; $5964: $77
	add  a                                           ; $5965: $87
	add  a                                           ; $5966: $87
	ld   b, d                                        ; $5967: $42
	sbc  a                                           ; $5968: $9f
	ld   h, a                                        ; $5969: $67
	or   [hl]                                        ; $596a: $b6
	add  e                                           ; $596b: $83
	jp   z, Jump_0ec_776c                            ; $596c: $ca $6c $77

	ld   h, a                                        ; $596f: $67
	sbc  b                                           ; $5970: $98
	sub  a                                           ; $5971: $97
	ld   b, c                                        ; $5972: $41
	cp   a                                           ; $5973: $bf
	ld   c, c                                        ; $5974: $49
	or   [hl]                                        ; $5975: $b6
	ld   [hl], e                                     ; $5976: $73
	reti                                             ; $5977: $d9


	ld   a, h                                        ; $5978: $7c
	ld   a, b                                        ; $5979: $78
	ld   l, c                                        ; $597a: $69
	xor  b                                           ; $597b: $a8
	sub  a                                           ; $597c: $97
	ld   b, c                                        ; $597d: $41
	cp   a                                           ; $597e: $bf
	ld   c, c                                        ; $597f: $49
	or   [hl]                                        ; $5980: $b6
	ld   [hl], e                                     ; $5981: $73
	ret                                              ; $5982: $c9


	ld   a, e                                        ; $5983: $7b

Call_0ec_5984:
	ld   [hl], a                                     ; $5984: $77
	ld   l, b                                        ; $5985: $68
	sbc  b                                           ; $5986: $98
	add  a                                           ; $5987: $87
	ld   [hl-], a                                    ; $5988: $32
	xor  $3a                                         ; $5989: $ee $3a
	sub  a                                           ; $598b: $97
	ld   h, h                                        ; $598c: $64
	ret  c                                           ; $598d: $d8

	sbc  e                                           ; $598e: $9b
	ld   l, b                                        ; $598f: $68
	ld   l, c                                        ; $5990: $69
	sbc  b                                           ; $5991: $98
	add  l                                           ; $5992: $85
	ld   h, $fa                                      ; $5993: $26 $fa
	ld   e, h                                        ; $5995: $5c
	ld   [hl], a                                     ; $5996: $77
	ld   b, a                                        ; $5997: $47
	and  $b9                                         ; $5998: $e6 $b9
	ld   l, b                                        ; $599a: $68
	ld   l, c                                        ; $599b: $69

jr_0ec_599c:
	sbc  b                                           ; $599c: $98
	ld   [hl], e                                     ; $599d: $73
	dec  a                                           ; $599e: $3d
	db   $e4                                         ; $599f: $e4
	xor  c                                           ; $59a0: $a9
	ld   h, [hl]                                     ; $59a1: $66
	ld   c, l                                        ; $59a2: $4d
	sbc  b                                           ; $59a3: $98
	or   [hl]                                        ; $59a4: $b6
	ld   [hl], a                                     ; $59a5: $77
	ld   a, c                                        ; $59a6: $79
	adc  b                                           ; $59a7: $88
	ld   b, d                                        ; $59a8: $42
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $59a9: $cf
	ld   c, c                                        ; $59aa: $49
	and  [hl]                                        ; $59ab: $a6
	ld   [hl], h                                     ; $59ac: $74
	call z, Call_0ec_667c                            ; $59ad: $cc $7c $66
	halt                                             ; $59b0: $76
	sbc  c                                           ; $59b1: $99
	ld   [hl], h                                     ; $59b2: $74
	inc  l                                           ; $59b3: $2c
	db   $f4                                         ; $59b4: $f4
	adc  d                                           ; $59b5: $8a
	ld   h, a                                        ; $59b6: $67
	ld   c, h                                        ; $59b7: $4c
	rst  ToBoot                                         ; $59b8: $c7
	or   [hl]                                        ; $59b9: $b6
	ld   h, a                                        ; $59ba: $67
	ld   l, d                                        ; $59bb: $6a
	add  a                                           ; $59bc: $87
	ld   b, h                                        ; $59bd: $44
	ei                                               ; $59be: $fb
	ld   a, [hl-]                                    ; $59bf: $3a
	sub  [hl]                                        ; $59c0: $96
	ld   h, [hl]                                     ; $59c1: $66
	ld   [$667a], a                                  ; $59c2: $ea $7a $66
	ld   l, b                                        ; $59c5: $68
	and  a                                           ; $59c6: $a7
	ld   d, e                                        ; $59c7: $53
	cp   a                                           ; $59c8: $bf
	ld   b, a                                        ; $59c9: $47
	or   l                                           ; $59ca: $b5
	ld   h, l                                        ; $59cb: $65
	adc  $69                                         ; $59cc: $ce $69
	add  l                                           ; $59ce: $85
	ld   h, a                                        ; $59cf: $67
	xor  b                                           ; $59d0: $a8
	ld   d, e                                        ; $59d1: $53
	sbc  a                                           ; $59d2: $9f
	ld   h, l                                        ; $59d3: $65
	or   [hl]                                        ; $59d4: $b6
	ld   h, l                                        ; $59d5: $65
	xor  [hl]                                        ; $59d6: $ae
	ld   a, b                                        ; $59d7: $78
	sub  [hl]                                        ; $59d8: $96
	ld   d, [hl]                                     ; $59d9: $56
	xor  c                                           ; $59da: $a9
	ld   d, h                                        ; $59db: $54
	xor  a                                           ; $59dc: $af
	ld   d, l                                        ; $59dd: $55
	add  $65                                         ; $59de: $c6 $65
	adc  $69                                         ; $59e0: $ce $69
	add  [hl]                                        ; $59e2: $86
	ld   d, [hl]                                     ; $59e3: $56
	xor  b                                           ; $59e4: $a8
	ld   b, l                                        ; $59e5: $45
	rst  $28                                         ; $59e6: $ef
	scf                                              ; $59e7: $37
	and  [hl]                                        ; $59e8: $a6
	ld   h, [hl]                                     ; $59e9: $66
	db   $ec                                         ; $59ea: $ec
	ld   e, c                                        ; $59eb: $59
	add  [hl]                                        ; $59ec: $86
	ld   d, a                                        ; $59ed: $57
	and  [hl]                                        ; $59ee: $a6
	ld   a, [hl-]                                    ; $59ef: $3a
	ld   hl, sp+$3a                                  ; $59f0: $f8 $3a
	halt                                             ; $59f2: $76
	ld   l, e                                        ; $59f3: $6b
	rst  $30                                         ; $59f4: $f7
	ld   a, d                                        ; $59f5: $7a
	ld   d, h                                        ; $59f6: $54
	ld   l, c                                        ; $59f7: $69
	ld   [hl], e                                     ; $59f8: $73
	adc  a                                           ; $59f9: $8f
	and  e                                           ; $59fa: $a3
	sub  a                                           ; $59fb: $97
	ld   d, [hl]                                     ; $59fc: $56
	sbc  a                                           ; $59fd: $9f
	sub  [hl]                                        ; $59fe: $96
	sub  l                                           ; $59ff: $95
	ld   d, [hl]                                     ; $5a00: $56
	sbc  c                                           ; $5a01: $99
	ld   [hl], $fb                                   ; $5a02: $36 $fb
	jr   z, jr_0ec_599c                              ; $5a04: $28 $96

	ld   l, b                                        ; $5a06: $68
	ld   a, [$6549]                                  ; $5a07: $fa $49 $65
	ld   e, c                                        ; $5a0a: $59
	and  e                                           ; $5a0b: $a3
	ld   a, a                                        ; $5a0c: $7f
	and  e                                           ; $5a0d: $a3
	ld   [hl], a                                     ; $5a0e: $77
	ld   h, a                                        ; $5a0f: $67
	sbc  a                                           ; $5a10: $9f
	sub  l                                           ; $5a11: $95
	sub  l                                           ; $5a12: $95
	ld   d, [hl]                                     ; $5a13: $56
	adc  c                                           ; $5a14: $89
	dec  sp                                          ; $5a15: $3b
	rst  $30                                         ; $5a16: $f7
	ld   c, b                                        ; $5a17: $48
	ld   h, a                                        ; $5a18: $67
	ld   l, h                                        ; $5a19: $6c
	rst  $30                                         ; $5a1a: $f7
	ld   a, c                                        ; $5a1b: $79
	ld   b, l                                        ; $5a1c: $45
	ld   l, d                                        ; $5a1d: $6a
	ld   h, h                                        ; $5a1e: $64
	cp   $26                                         ; $5a1f: $fe $26
	halt                                             ; $5a21: $76
	ld   a, b                                        ; $5a22: $78
	db   $fc                                         ; $5a23: $fc
	ld   e, b                                        ; $5a24: $58
	ld   d, h                                        ; $5a25: $54
	ld   l, b                                        ; $5a26: $68
	sub  h                                           ; $5a27: $94
	xor  a                                           ; $5a28: $af
	ld   d, e                                        ; $5a29: $53
	sub  l                                           ; $5a2a: $95
	ld   [hl], a                                     ; $5a2b: $77
	rst  JumpTable                                         ; $5a2c: $df
	ld   h, a                                        ; $5a2d: $67
	ld   [hl], e                                     ; $5a2e: $73
	ld   d, a                                        ; $5a2f: $57
	and  l                                           ; $5a30: $a5
	ld   a, a                                        ; $5a31: $7f
	and  c                                           ; $5a32: $a1
	halt                                             ; $5a33: $76
	ld   h, a                                        ; $5a34: $67
	cp   a                                           ; $5a35: $bf
	add  [hl]                                        ; $5a36: $86
	add  e                                           ; $5a37: $83
	ld   b, [hl]                                     ; $5a38: $46
	sbc  b                                           ; $5a39: $98
	ld   e, a                                        ; $5a3a: $5f
	ldh  [c], a                                      ; $5a3b: $e2
	ld   d, [hl]                                     ; $5a3c: $56
	ld   h, a                                        ; $5a3d: $67
	adc  a                                           ; $5a3e: $8f
	push de                                          ; $5a3f: $d5
	add  h                                           ; $5a40: $84
	dec  [hl]                                        ; $5a41: $35
	adc  c                                           ; $5a42: $89
	ld   e, [hl]                                     ; $5a43: $5e
	ldh  a, [c]                                      ; $5a44: $f2
	ld   b, a                                        ; $5a45: $47
	ld   d, a                                        ; $5a46: $57
	ld   a, a                                        ; $5a47: $7f
	push hl                                          ; $5a48: $e5
	sub  l                                           ; $5a49: $95
	dec  [hl]                                        ; $5a4a: $35
	ld   a, c                                        ; $5a4b: $79
	ld   e, [hl]                                     ; $5a4c: $5e
	di                                               ; $5a4d: $f3
	ld   b, a                                        ; $5a4e: $47
	ld   b, a                                        ; $5a4f: $47
	adc  a                                           ; $5a50: $8f
	and  $84                                         ; $5a51: $e6 $84
	dec  h                                           ; $5a53: $25
	adc  d                                           ; $5a54: $8a
	ld   e, [hl]                                     ; $5a55: $5e
	di                                               ; $5a56: $f3
	scf                                              ; $5a57: $37
	ld   b, a                                        ; $5a58: $47
	sbc  a                                           ; $5a59: $9f
	and  $84                                         ; $5a5a: $e6 $84
	inc  h                                           ; $5a5c: $24
	adc  d                                           ; $5a5d: $8a
	ld   e, [hl]                                     ; $5a5e: $5e
	di                                               ; $5a5f: $f3
	scf                                              ; $5a60: $37
	ld   [hl], $9f                                   ; $5a61: $36 $9f
	rst  $20                                         ; $5a63: $e7
	sub  h                                           ; $5a64: $94
	inc  hl                                          ; $5a65: $23

jr_0ec_5a66:
	adc  d                                           ; $5a66: $8a
	ld   l, a                                        ; $5a67: $6f
	di                                               ; $5a68: $f3
	ld   b, a                                        ; $5a69: $47
	ld   [hl], $9f                                   ; $5a6a: $36 $9f
	rst  $20                                         ; $5a6c: $e7
	add  h                                           ; $5a6d: $84
	inc  hl                                          ; $5a6e: $23
	ld   a, b                                        ; $5a6f: $78
	ld   a, a                                        ; $5a70: $7f
	pop  af                                          ; $5a71: $f1
	ld   h, [hl]                                     ; $5a72: $66
	ld   h, $bf                                      ; $5a73: $26 $bf
	ret                                              ; $5a75: $c9


	sub  d                                           ; $5a76: $92
	inc  hl                                          ; $5a77: $23
	add  a                                           ; $5a78: $87
	adc  a                                           ; $5a79: $8f
	pop  de                                          ; $5a7a: $d1
	ld   h, l                                        ; $5a7b: $65
	daa                                              ; $5a7c: $27
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a7d: $cf
	cp   d                                           ; $5a7e: $ba
	ld   [hl], e                                     ; $5a7f: $73
	inc  h                                           ; $5a80: $24
	add  a                                           ; $5a81: $87
	sbc  a                                           ; $5a82: $9f
	or   c                                           ; $5a83: $b1
	add  l                                           ; $5a84: $85
	jr   z, jr_0ec_5a66                              ; $5a85: $28 $df

	xor  d                                           ; $5a87: $aa
	ld   [hl], d                                     ; $5a88: $72
	inc  d                                           ; $5a89: $14
	halt                                             ; $5a8a: $76
	rst  $28                                         ; $5a8b: $ef
	ld   [hl], e                                     ; $5a8c: $73
	sub  c                                           ; $5a8d: $91

jr_0ec_5a8e:
	add  hl, sp                                      ; $5a8e: $39
	cp   $ba                                         ; $5a8f: $fe $ba
	ld   d, c                                        ; $5a91: $51
	dec  d                                           ; $5a92: $15
	ld   h, a                                        ; $5a93: $67
	rst  $38                                         ; $5a94: $ff

Jump_0ec_5a95:
	jr   c, @+$63                                    ; $5a95: $38 $61

	ld   e, e                                        ; $5a97: $5b
	db   $fc                                         ; $5a98: $fc
	jp   z, $1631                                    ; $5a99: $ca $31 $16

	ld   e, h                                        ; $5a9c: $5c
	ld   a, [$1159]                                  ; $5a9d: $fa $59 $11
	ld   l, [hl]                                     ; $5aa0: $6e
	ei                                               ; $5aa1: $fb
	rst  $20                                         ; $5aa2: $e7
	ld   de, $9f34                                   ; $5aa3: $11 $34 $9f
	rst  $30                                         ; $5aa6: $f7
	or   e                                           ; $5aa7: $b3
	inc  d                                           ; $5aa8: $14
	cp   a                                           ; $5aa9: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5aaa: $cf
	or   d                                           ; $5aab: $b2
	ld   de, rAUDENA                                   ; $5aac: $11 $26 $ff
	adc  l                                           ; $5aaf: $8d
	ld   h, c                                        ; $5ab0: $61
	jr   z, jr_0ec_5a8e                              ; $5ab1: $28 $db

	db   $ed                                         ; $5ab3: $ed
	ld   d, c                                        ; $5ab4: $51
	ld   de, $cd8f                                   ; $5ab5: $11 $8f $cd
	db   $e4                                         ; $5ab8: $e4
	inc  sp                                          ; $5ab9: $33
	ld   a, e                                        ; $5aba: $7b
	cp   [hl]                                        ; $5abb: $be
	and  l                                           ; $5abc: $a5
	ld   sp, $a94d                                   ; $5abd: $31 $4d $a9
	rst  $30                                         ; $5ac0: $f7
	add  hl, sp                                      ; $5ac1: $39
	ld   [hl], a                                     ; $5ac2: $77
	sbc  h                                           ; $5ac3: $9c
	and  l                                           ; $5ac4: $a5
	ld   d, d                                        ; $5ac5: $52
	ld   a, [hl]                                     ; $5ac6: $7e
	ld   c, b                                        ; $5ac7: $48
	db   $f4                                         ; $5ac8: $f4
	ld   e, d                                        ; $5ac9: $5a
	sub  a                                           ; $5aca: $97
	xor  h                                           ; $5acb: $ac
	ld   [hl], l                                     ; $5acc: $75
	ld   d, d                                        ; $5acd: $52
	ld   c, a                                        ; $5ace: $4f
	or   l                                           ; $5acf: $b5
	ld   sp, hl                                      ; $5ad0: $f9
	scf                                              ; $5ad1: $37
	ld   a, c                                        ; $5ad2: $79
	adc  e                                           ; $5ad3: $8b
	or   [hl]                                        ; $5ad4: $b6
	ld   d, e                                        ; $5ad5: $53
	add  hl, de                                      ; $5ad6: $19
	and  $bf                                         ; $5ad7: $e6 $bf
	ld   h, $98                                      ; $5ad9: $26 $98
	ld   a, d                                        ; $5adb: $7a
	push de                                          ; $5adc: $d5
	ld   d, e                                        ; $5add: $53
	ld   a, $85                                      ; $5ade: $3e $85
	ld   hl, sp+$3a                                  ; $5ae0: $f8 $3a
	sub  a                                           ; $5ae2: $97
	adc  h                                           ; $5ae3: $8c
	sub  [hl]                                        ; $5ae4: $96
	ld   h, e                                        ; $5ae5: $63
	inc  a                                           ; $5ae6: $3c
	and  h                                           ; $5ae7: $a4
	ld   a, [$874b]                                  ; $5ae8: $fa $4b $87
	ld   a, e                                        ; $5aeb: $7b
	sub  l                                           ; $5aec: $95
	ld   [hl], e                                     ; $5aed: $73
	ld   a, l                                        ; $5aee: $7d
	ld   c, b                                        ; $5aef: $48
	push af                                          ; $5af0: $f5
	ld   a, e                                        ; $5af1: $7b
	add  a                                           ; $5af2: $87
	adc  d                                           ; $5af3: $8a
	ld   d, l                                        ; $5af4: $55
	ld   d, e                                        ; $5af5: $53
	jp   z, $b23e                                    ; $5af6: $ca $3e $b2

	xor  e                                           ; $5af9: $ab
	ld   [hl], a                                     ; $5afa: $77
	ret                                              ; $5afb: $c9


	ld   [hl], $36                                   ; $5afc: $36 $36
	push hl                                          ; $5afe: $e5
	ld   a, a                                        ; $5aff: $7f
	ld   b, l                                        ; $5b00: $45
	ret  z                                           ; $5b01: $c8

	ld   a, c                                        ; $5b02: $79
	or   [hl]                                        ; $5b03: $b6
	ld   d, l                                        ; $5b04: $55
	ld   a, [hl+]                                    ; $5b05: $2a
	or   e                                           ; $5b06: $b3
	db   $ec                                         ; $5b07: $ec
	dec  sp                                          ; $5b08: $3b
	or   a                                           ; $5b09: $b7
	ld   a, d                                        ; $5b0a: $7a
	and  l                                           ; $5b0b: $a5
	ld   [hl], e                                     ; $5b0c: $73
	ld   e, l                                        ; $5b0d: $5d
	ld   d, [hl]                                     ; $5b0e: $56
	or   $6c                                         ; $5b0f: $f6 $6c
	add  a                                           ; $5b11: $87
	sbc  e                                           ; $5b12: $9b
	ld   d, [hl]                                     ; $5b13: $56
	ld   h, d                                        ; $5b14: $62
	xor  h                                           ; $5b15: $ac
	ld   a, [hl-]                                    ; $5b16: $3a
	db   $d3                                         ; $5b17: $d3
	sbc  e                                           ; $5b18: $9b
	adc  b                                           ; $5b19: $88
	cp   d                                           ; $5b1a: $ba
	ld   b, [hl]                                     ; $5b1b: $46
	inc  [hl]                                        ; $5b1c: $34
	rst  ToBoot                                         ; $5b1d: $c7
	ld   e, a                                        ; $5b1e: $5f
	ld   [hl], h                                     ; $5b1f: $74
	ret  z                                           ; $5b20: $c8

	ld   a, d                                        ; $5b21: $7a
	or   [hl]                                        ; $5b22: $b6
	ld   d, [hl]                                     ; $5b23: $56
	rla                                              ; $5b24: $17
	or   h                                           ; $5b25: $b4
	cp   [hl]                                        ; $5b26: $be
	ld   c, d                                        ; $5b27: $4a
	or   a                                           ; $5b28: $b7
	ld   a, d                                        ; $5b29: $7a
	and  h                                           ; $5b2a: $a4
	ld   [hl], h                                     ; $5b2b: $74
	ld   c, e                                        ; $5b2c: $4b
	ld   h, l                                        ; $5b2d: $65
	ld   hl, sp+$6d                                  ; $5b2e: $f8 $6d
	and  a                                           ; $5b30: $a7
	sbc  e                                           ; $5b31: $9b
	ld   d, l                                        ; $5b32: $55
	ld   h, d                                        ; $5b33: $62
	sbc  c                                           ; $5b34: $99
	ld   c, h                                        ; $5b35: $4c
	or   h                                           ; $5b36: $b4
	call z, $b889                                    ; $5b37: $cc $89 $b8
	ld   b, [hl]                                     ; $5b3a: $46
	ld   [hl], $a4                                   ; $5b3b: $36 $a4
	sbc  l                                           ; $5b3d: $9d
	ld   l, c                                        ; $5b3e: $69
	ret  z                                           ; $5b3f: $c8

	sbc  e                                           ; $5b40: $9b
	and  l                                           ; $5b41: $a5
	ld   h, h                                        ; $5b42: $64
	ld   c, c                                        ; $5b43: $49
	ld   d, [hl]                                     ; $5b44: $56
	rst  $10                                         ; $5b45: $d7
	ld   a, h                                        ; $5b46: $7c
	sbc  b                                           ; $5b47: $98
	xor  d                                           ; $5b48: $aa
	ld   h, l                                        ; $5b49: $65
	ld   d, h                                        ; $5b4a: $54
	add  [hl]                                        ; $5b4b: $86
	ld   e, e                                        ; $5b4c: $5b
	add  [hl]                                        ; $5b4d: $86
	jp   z, $b89a                                    ; $5b4e: $ca $9a $b8

	ld   h, [hl]                                     ; $5b51: $66
	ld   b, a                                        ; $5b52: $47
	ld   h, h                                        ; $5b53: $64
	sbc  b                                           ; $5b54: $98
	ld   l, e                                        ; $5b55: $6b
	cp   c                                           ; $5b56: $b9
	cp   e                                           ; $5b57: $bb
	sub  a                                           ; $5b58: $97
	ld   h, [hl]                                     ; $5b59: $66
	halt                                             ; $5b5a: $76
	ld   e, c                                        ; $5b5b: $59
	halt                                             ; $5b5c: $76
	sbc  d                                           ; $5b5d: $9a
	adc  d                                           ; $5b5e: $8a
	xor  c                                           ; $5b5f: $a9
	add  a                                           ; $5b60: $87
	ld   a, c                                        ; $5b61: $79
	ld   h, [hl]                                     ; $5b62: $66
	sub  [hl]                                        ; $5b63: $96
	ld   l, b                                        ; $5b64: $68
	add  a                                           ; $5b65: $87
	sbc  d                                           ; $5b66: $9a
	adc  b                                           ; $5b67: $88
	adc  b                                           ; $5b68: $88
	sub  a                                           ; $5b69: $97
	ld   a, b                                        ; $5b6a: $78
	ld   [hl], a                                     ; $5b6b: $77
	sbc  b                                           ; $5b6c: $98
	ld   a, b                                        ; $5b6d: $78
	sbc  b                                           ; $5b6e: $98
	adc  c                                           ; $5b6f: $89
	adc  b                                           ; $5b70: $88
	add  a                                           ; $5b71: $87
	sub  a                                           ; $5b72: $97
	ld   a, c                                        ; $5b73: $79
	add  a                                           ; $5b74: $87
	adc  b                                           ; $5b75: $88
	adc  b                                           ; $5b76: $88
	sbc  b                                           ; $5b77: $98
	adc  c                                           ; $5b78: $89
	adc  c                                           ; $5b79: $89
	add  a                                           ; $5b7a: $87
	adc  b                                           ; $5b7b: $88
	ld   a, b                                        ; $5b7c: $78
	adc  b                                           ; $5b7d: $88
	adc  b                                           ; $5b7e: $88
	adc  c                                           ; $5b7f: $89
	adc  b                                           ; $5b80: $88
	adc  c                                           ; $5b81: $89
	ld   a, b                                        ; $5b82: $78
	add  a                                           ; $5b83: $87
	ld   a, b                                        ; $5b84: $78
	adc  b                                           ; $5b85: $88
	adc  c                                           ; $5b86: $89
	adc  c                                           ; $5b87: $89
	sbc  b                                           ; $5b88: $98
	adc  b                                           ; $5b89: $88
	adc  b                                           ; $5b8a: $88
	ld   a, b                                        ; $5b8b: $78
	adc  b                                           ; $5b8c: $88
	adc  b                                           ; $5b8d: $88
	adc  c                                           ; $5b8e: $89
	sbc  c                                           ; $5b8f: $99
	sbc  b                                           ; $5b90: $98
	adc  b                                           ; $5b91: $88
	add  a                                           ; $5b92: $87
	adc  b                                           ; $5b93: $88
	adc  b                                           ; $5b94: $88
	adc  b                                           ; $5b95: $88
	adc  b                                           ; $5b96: $88
	sbc  c                                           ; $5b97: $99
	sbc  b                                           ; $5b98: $98
	adc  b                                           ; $5b99: $88
	ld   [hl], a                                     ; $5b9a: $77
	adc  b                                           ; $5b9b: $88
	adc  b                                           ; $5b9c: $88
	adc  c                                           ; $5b9d: $89
	adc  b                                           ; $5b9e: $88
	sbc  c                                           ; $5b9f: $99
	adc  b                                           ; $5ba0: $88
	adc  b                                           ; $5ba1: $88
	ld   a, b                                        ; $5ba2: $78
	add  a                                           ; $5ba3: $87
	adc  b                                           ; $5ba4: $88
	sbc  c                                           ; $5ba5: $99
	adc  c                                           ; $5ba6: $89
	sbc  b                                           ; $5ba7: $98
	adc  b                                           ; $5ba8: $88
	add  a                                           ; $5ba9: $87
	adc  b                                           ; $5baa: $88
	ld   a, b                                        ; $5bab: $78
	adc  b                                           ; $5bac: $88
	sbc  b                                           ; $5bad: $98
	sbc  c                                           ; $5bae: $99
	adc  b                                           ; $5baf: $88
	adc  b                                           ; $5bb0: $88
	adc  b                                           ; $5bb1: $88
	adc  b                                           ; $5bb2: $88
	adc  b                                           ; $5bb3: $88
	adc  c                                           ; $5bb4: $89
	adc  b                                           ; $5bb5: $88
	sbc  b                                           ; $5bb6: $98
	adc  b                                           ; $5bb7: $88
	ld   a, b                                        ; $5bb8: $78
	ld   a, b                                        ; $5bb9: $78
	adc  b                                           ; $5bba: $88
	sbc  b                                           ; $5bbb: $98
	adc  b                                           ; $5bbc: $88
	adc  b                                           ; $5bbd: $88
	adc  b                                           ; $5bbe: $88
	adc  b                                           ; $5bbf: $88
	ld   a, b                                        ; $5bc0: $78
	ld   a, b                                        ; $5bc1: $78
	adc  b                                           ; $5bc2: $88
	sbc  c                                           ; $5bc3: $99
	adc  c                                           ; $5bc4: $89
	adc  b                                           ; $5bc5: $88
	adc  b                                           ; $5bc6: $88
	adc  b                                           ; $5bc7: $88
	add  a                                           ; $5bc8: $87
	adc  b                                           ; $5bc9: $88
	adc  c                                           ; $5bca: $89
	sbc  c                                           ; $5bcb: $99
	sbc  b                                           ; $5bcc: $98
	adc  b                                           ; $5bcd: $88
	adc  b                                           ; $5bce: $88
	adc  b                                           ; $5bcf: $88
	adc  b                                           ; $5bd0: $88
	adc  b                                           ; $5bd1: $88
	adc  b                                           ; $5bd2: $88
	adc  c                                           ; $5bd3: $89
	adc  b                                           ; $5bd4: $88
	add  a                                           ; $5bd5: $87
	adc  b                                           ; $5bd6: $88
	adc  b                                           ; $5bd7: $88
	adc  c                                           ; $5bd8: $89
	adc  b                                           ; $5bd9: $88
	sbc  b                                           ; $5bda: $98
	adc  b                                           ; $5bdb: $88
	adc  b                                           ; $5bdc: $88
	adc  b                                           ; $5bdd: $88
	adc  b                                           ; $5bde: $88
	adc  b                                           ; $5bdf: $88
	adc  b                                           ; $5be0: $88
	adc  c                                           ; $5be1: $89
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
	ld   a, b                                        ; $5bec: $78
	adc  b                                           ; $5bed: $88
	sbc  c                                           ; $5bee: $99
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
	sbc  b                                           ; $5bfe: $98
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

jr_0ec_5cf2:
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
	sbc  b                                           ; $5d17: $98
	adc  b                                           ; $5d18: $88
	adc  b                                           ; $5d19: $88
	adc  b                                           ; $5d1a: $88
	sbc  b                                           ; $5d1b: $98
	adc  b                                           ; $5d1c: $88
	ld   a, b                                        ; $5d1d: $78
	sbc  b                                           ; $5d1e: $98
	ld   a, b                                        ; $5d1f: $78
	add  a                                           ; $5d20: $87
	ld   a, c                                        ; $5d21: $79
	halt                                             ; $5d22: $76
	sbc  d                                           ; $5d23: $9a
	ld   h, a                                        ; $5d24: $67
	or   a                                           ; $5d25: $b7
	ld   l, d                                        ; $5d26: $6a
	and  [hl]                                        ; $5d27: $a6
	sbc  d                                           ; $5d28: $9a
	ld   h, l                                        ; $5d29: $65
	adc  e                                           ; $5d2a: $8b
	jr   c, jr_0ec_5cf2                              ; $5d2b: $38 $c5

	ld   l, e                                        ; $5d2d: $6b
	or   [hl]                                        ; $5d2e: $b6
	bit  2, l                                        ; $5d2f: $cb $55
	ld   a, d                                        ; $5d31: $7a
	ld   h, $c5                                      ; $5d32: $26 $c5
	ld   c, l                                        ; $5d34: $4d
	sub  $ed                                         ; $5d35: $d6 $ed
	ld   d, l                                        ; $5d37: $55
	ld   h, a                                        ; $5d38: $67
	ld   b, d                                        ; $5d39: $42
	xor  b                                           ; $5d3a: $a8
	inc  a                                           ; $5d3b: $3c
	ld   sp, hl                                      ; $5d3c: $f9
	cp   a                                           ; $5d3d: $bf
	ld   h, e                                        ; $5d3e: $63
	ld   d, l                                        ; $5d3f: $55
	ld   h, c                                        ; $5d40: $61
	adc  e                                           ; $5d41: $8b
	ld   c, c                                        ; $5d42: $49
	db   $fc                                         ; $5d43: $fc
	adc  a                                           ; $5d44: $8f
	sub  c                                           ; $5d45: $91
	inc  [hl]                                        ; $5d46: $34
	ld   [hl], d                                     ; $5d47: $72
	ld   l, a                                        ; $5d48: $6f
	ld   [hl], a                                     ; $5d49: $77
	cp   $5d                                         ; $5d4a: $fe $5d
	pop  de                                          ; $5d4c: $d1
	inc  de                                          ; $5d4d: $13
	add  l                                           ; $5d4e: $85
	ld   c, a                                        ; $5d4f: $4f
	call nz, Call_0ec_46df                           ; $5d50: $c4 $df $46
	di                                               ; $5d53: $f3
	dec  d                                           ; $5d54: $15
	ld   c, c                                        ; $5d55: $49
	ld   a, b                                        ; $5d56: $78
	ld   hl, sp+$5c                                  ; $5d57: $f8 $5c
	and  e                                           ; $5d59: $a3
	xor  [hl]                                        ; $5d5a: $ae
	ld   [hl], $81                                   ; $5d5b: $36 $81
	ld   l, a                                        ; $5d5d: $6f
	add  hl, sp                                      ; $5d5e: $39
	db   $f4                                         ; $5d5f: $f4
	ld   l, l                                        ; $5d60: $6d
	or   l                                           ; $5d61: $b5
	db   $db                                         ; $5d62: $db
	ld   [hl], $31                                   ; $5d63: $36 $31
	cp   d                                           ; $5d65: $ba
	ccf                                              ; $5d66: $3f
	or   e                                           ; $5d67: $b3
	cp   h                                           ; $5d68: $bc
	ld   d, [hl]                                     ; $5d69: $56
	push af                                          ; $5d6a: $f5
	ld   [hl], $19                                   ; $5d6b: $36 $19
	db   $e3                                         ; $5d6d: $e3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d6e: $cf
	rla                                              ; $5d6f: $17
	rst  ToBoot                                         ; $5d70: $c7
	ld   e, a                                        ; $5d71: $5f
	or   d                                           ; $5d72: $b2
	ld   [hl], d                                     ; $5d73: $72
	dec  e                                           ; $5d74: $1d
	pop  de                                          ; $5d75: $d1
	db   $fd                                         ; $5d76: $fd
	add  hl, de                                      ; $5d77: $19

Jump_0ec_5d78:
	push bc                                          ; $5d78: $c5
	ld   e, a                                        ; $5d79: $5f
	ld   [hl], e                                     ; $5d7a: $73
	ld   h, c                                        ; $5d7b: $61
	ld   c, a                                        ; $5d7c: $4f
	ld   d, [hl]                                     ; $5d7d: $56
	di                                               ; $5d7e: $f3
	dec  hl                                          ; $5d7f: $2b
	and  e                                           ; $5d80: $a3
	rst  JumpTable                                         ; $5d81: $df
	dec  [hl]                                        ; $5d82: $35
	ld   d, c                                        ; $5d83: $51
	ld   l, a                                        ; $5d84: $6f
	dec  hl                                          ; $5d85: $2b
	pop  af                                          ; $5d86: $f1
	dec  sp                                          ; $5d87: $3b
	sub  d                                           ; $5d88: $92
	cp   $35                                         ; $5d89: $fe $35
	ld   b, c                                        ; $5d8b: $41
	xor  a                                           ; $5d8c: $af
	rra                                              ; $5d8d: $1f
	pop  af                                          ; $5d8e: $f1

jr_0ec_5d8f:
	ld   c, h                                        ; $5d8f: $4c
	sub  e                                           ; $5d90: $93
	db   $fd                                         ; $5d91: $fd
	dec  d                                           ; $5d92: $15
	ld   sp, $1fdf                                   ; $5d93: $31 $df $1f
	pop  af                                          ; $5d96: $f1
	inc  a                                           ; $5d97: $3c
	sub  h                                           ; $5d98: $94
	rst  $38                                         ; $5d99: $ff
	inc  d                                           ; $5d9a: $14
	ld   hl, $2fff                                   ; $5d9b: $21 $ff $2f
	pop  de                                          ; $5d9e: $d1
	ld   a, [hl-]                                    ; $5d9f: $3a
	and  l                                           ; $5da0: $a5
	rst  $38                                         ; $5da1: $ff
	inc  bc                                          ; $5da2: $03
	ld   hl, $2fff                                   ; $5da3: $21 $ff $2f
	pop  bc                                          ; $5da6: $c1
	ld   a, [hl+]                                    ; $5da7: $2a
	and  l                                           ; $5da8: $a5
	rst  $38                                         ; $5da9: $ff
	ld   [de], a                                     ; $5daa: $12
	ld   hl, $2fff                                   ; $5dab: $21 $ff $2f
	pop  de                                          ; $5dae: $d1
	ld   a, [de]                                     ; $5daf: $1a
	push bc                                          ; $5db0: $c5
	rst  $38                                         ; $5db1: $ff
	ld   de, $ef21                                   ; $5db2: $11 $21 $ef
	ld   c, a                                        ; $5db5: $4f
	pop  bc                                          ; $5db6: $c1
	jr   jr_0ec_5d8f                                 ; $5db7: $18 $d6

	rst  $38                                         ; $5db9: $ff
	ld   de, rAUD1LEN                                   ; $5dba: $11 $11 $ff
	ld   e, a                                        ; $5dbd: $5f
	pop  hl                                          ; $5dbe: $e1
	rla                                              ; $5dbf: $17
	rst  $30                                         ; $5dc0: $f7
	rst  $38                                         ; $5dc1: $ff
	ld   de, $bf11                                   ; $5dc2: $11 $11 $bf
	adc  l                                           ; $5dc5: $8d
	pop  hl                                          ; $5dc6: $e1
	dec  d                                           ; $5dc7: $15
	ld   a, [$21ff]                                  ; $5dc8: $fa $ff $21
	ld   de, $bbaf                                   ; $5dcb: $11 $af $bb
	pop  hl                                          ; $5dce: $e1
	inc  de                                          ; $5dcf: $13
	db   $fd                                         ; $5dd0: $fd
	rst  $38                                         ; $5dd1: $ff
	ld   sp, $af11                                   ; $5dd2: $31 $11 $af
	jp   c, $12e1                                    ; $5dd5: $da $e1 $12

	rst  $38                                         ; $5dd8: $ff
	rst  $28                                         ; $5dd9: $ef
	ld   sp, $9f11                                   ; $5dda: $31 $11 $9f
	rst  $30                                         ; $5ddd: $f7
	pop  de                                          ; $5dde: $d1
	ld   de, $cfff                                   ; $5ddf: $11 $ff $cf
	ld   d, c                                        ; $5de2: $51
	ld   de, $f57f                                   ; $5de3: $11 $7f $f5
	and  c                                           ; $5de6: $a1
	ld   de, $efff                                   ; $5de7: $11 $ff $ef
	ld   [hl], c                                     ; $5dea: $71
	ld   de, $f58f                                   ; $5deb: $11 $8f $f5
	add  c                                           ; $5dee: $81
	ld   de, $dfff                                   ; $5def: $11 $ff $df
	ld   h, c                                        ; $5df2: $61
	ld   de, $f4bf                                   ; $5df3: $11 $bf $f4
	ld   h, c                                        ; $5df6: $61
	ld   [de], a                                     ; $5df7: $12
	rst  $38                                         ; $5df8: $ff
	db   $dd                                         ; $5df9: $dd
	ld   b, c                                        ; $5dfa: $41
	ld   [de], a                                     ; $5dfb: $12
	rst  JumpTable                                         ; $5dfc: $df
	ldh  a, [c]                                      ; $5dfd: $f2
	ld   b, c                                        ; $5dfe: $41
	inc  d                                           ; $5dff: $14
	rst  $38                                         ; $5e00: $ff
	ld   [$1321], a                                  ; $5e01: $ea $21 $13
	rst  $38                                         ; $5e04: $ff
	pop  af                                          ; $5e05: $f1
	ld   hl, $ff16                                   ; $5e06: $21 $16 $ff
	xor  b                                           ; $5e09: $a8
	ld   de, $ff15                                   ; $5e0a: $11 $15 $ff
	or   c                                           ; $5e0d: $b1
	ld   de, $ff1a                                   ; $5e0e: $11 $1a $ff
	ld   [hl], l                                     ; $5e11: $75
	ld   de, $ff1a                                   ; $5e12: $11 $1a $ff
	ld   sp, $5f11                                   ; $5e15: $31 $11 $5f
	rst  $38                                         ; $5e18: $ff
	ld   b, c                                        ; $5e19: $41
	ld   de, $ff3f                                   ; $5e1a: $11 $3f $ff
	ld   de, $9f12                                   ; $5e1d: $11 $12 $9f
	ld   sp, hl                                      ; $5e20: $f9
	ld   hl, $6f12                                   ; $5e21: $21 $12 $6f
	push af                                          ; $5e24: $f5
	ld   de, $df16                                   ; $5e25: $11 $16 $df
	di                                               ; $5e28: $f3
	ld   de, rAUDVOL                                   ; $5e29: $11 $24 $ff
	pop  af                                          ; $5e2c: $f1
	ld   de, $ff4b                                   ; $5e2d: $11 $4b $ff
	sub  c                                           ; $5e30: $91
	ld   de, $ff67                                   ; $5e31: $11 $67 $ff
	ld   de, $af13                                   ; $5e34: $11 $13 $af
	rst  $38                                         ; $5e37: $ff
	ld   de, $5f16                                   ; $5e38: $11 $16 $5f
	ld   sp, hl                                      ; $5e3b: $f9
	ld   de, $ef1a                                   ; $5e3c: $11 $1a $ef
	di                                               ; $5e3f: $f3
	ld   de, $cf56                                   ; $5e40: $11 $56 $cf
	pop  af                                          ; $5e43: $f1
	ld   de, $ff8c                                   ; $5e44: $11 $8c $ff
	add  c                                           ; $5e47: $81
	ld   de, $ff97                                   ; $5e48: $11 $97 $ff
	ld   hl, $cf16                                   ; $5e4b: $21 $16 $cf
	rst  $38                                         ; $5e4e: $ff
	ld   de, $6f19                                   ; $5e4f: $11 $19 $6f
	or   $11                                         ; $5e52: $f6 $11
	dec  a                                           ; $5e54: $3d
	rst  $28                                         ; $5e55: $ef
	ldh  a, [c]                                      ; $5e56: $f2
	ld   de, $ff87                                   ; $5e57: $11 $87 $ff
	pop  bc                                          ; $5e5a: $c1
	ld   de, $ffcd                                   ; $5e5b: $11 $cd $ff
	ld   d, c                                        ; $5e5e: $51
	dec  d                                           ; $5e5f: $15
	sbc  e                                           ; $5e60: $9b
	rst  $38                                         ; $5e61: $ff
	ld   de, $df1b                                   ; $5e62: $11 $1b $df
	ld   hl, sp+$11                                  ; $5e65: $f8 $11
	dec  de                                          ; $5e67: $1b
	adc  a                                           ; $5e68: $8f
	pop  af                                          ; $5e69: $f1
	ld   de, $ff8e                                   ; $5e6a: $11 $8e $ff
	pop  de                                          ; $5e6d: $d1
	ld   de, $ffb6                                   ; $5e6e: $11 $b6 $ff
	ld   sp, $ef16                                   ; $5e71: $31 $16 $ef
	rst  $38                                         ; $5e74: $ff
	ld   de, $6f1a                                   ; $5e75: $11 $1a $6f
	rst  $30                                         ; $5e78: $f7
	ld   de, $ef3d                                   ; $5e79: $11 $3d $ef
	di                                               ; $5e7c: $f3
	ld   de, $ff96                                   ; $5e7d: $11 $96 $ff
	sub  c                                           ; $5e80: $91
	ld   de, $ffde                                   ; $5e81: $11 $de $ff
	ld   b, c                                        ; $5e84: $41
	rla                                              ; $5e85: $17
	ld   a, a                                        ; $5e86: $7f
	db   $fd                                         ; $5e87: $fd
	ld   de, $ef1c                                   ; $5e88: $11 $1c $ef
	push af                                          ; $5e8b: $f5
	ld   de, $ef57                                   ; $5e8c: $11 $57 $ef
	pop  af                                          ; $5e8f: $f1
	ld   de, $ffce                                   ; $5e90: $11 $ce $ff
	ld   h, c                                        ; $5e93: $61
	inc  d                                           ; $5e94: $14
	adc  l                                           ; $5e95: $8d
	rst  $38                                         ; $5e96: $ff
	ld   de, $ef1b                                   ; $5e97: $11 $1b $ef
	rst  $30                                         ; $5e9a: $f7
	ld   de, $cf38                                   ; $5e9b: $11 $38 $cf
	pop  af                                          ; $5e9e: $f1
	ld   de, $ffbe                                   ; $5e9f: $11 $be $ff
	ld   [hl], c                                     ; $5ea2: $71
	ld   [de], a                                     ; $5ea3: $12
	sbc  e                                           ; $5ea4: $9b
	rst  $38                                         ; $5ea5: $ff
	ld   de, $ef1a                                   ; $5ea6: $11 $1a $ef
	ld   hl, sp+$11                                  ; $5ea9: $f8 $11
	jr   z, @-$3f                                    ; $5eab: $28 $bf

	pop  af                                          ; $5ead: $f1
	ld   de, $ffae                                   ; $5eae: $11 $ae $ff
	ld   [hl], c                                     ; $5eb1: $71
	ld   [de], a                                     ; $5eb2: $12
	sbc  e                                           ; $5eb3: $9b
	rst  $38                                         ; $5eb4: $ff
	ld   de, $ef1a                                   ; $5eb5: $11 $1a $ef
	ld   hl, sp+$11                                  ; $5eb8: $f8 $11
	add  hl, hl                                      ; $5eba: $29
	cp   a                                           ; $5ebb: $bf
	pop  af                                          ; $5ebc: $f1
	ld   de, $ffaf                                   ; $5ebd: $11 $af $ff
	add  c                                           ; $5ec0: $81
	ld   de, $ff9a                                   ; $5ec1: $11 $9a $ff
	ld   de, $ff19                                   ; $5ec4: $11 $19 $ff
	ld   sp, hl                                      ; $5ec7: $f9
	ld   de, $9f1b                                   ; $5ec8: $11 $1b $9f
	di                                               ; $5ecb: $f3
	ld   de, $ff8f                                   ; $5ecc: $11 $8f $ff
	or   c                                           ; $5ecf: $b1
	ld   de, $ffb7                                   ; $5ed0: $11 $b7 $ff
	sub  c                                           ; $5ed3: $91
	inc  d                                           ; $5ed4: $14
	rst  $38                                         ; $5ed5: $ff
	rst  $38                                         ; $5ed6: $ff
	ld   hl, $7f1b                                   ; $5ed7: $21 $1b $7f
	db   $fc                                         ; $5eda: $fc
	ld   de, $ff1e                                   ; $5edb: $11 $1e $ff
	db   $f4                                         ; $5ede: $f4
	ld   de, $ff87                                   ; $5edf: $11 $87 $ff
	pop  af                                          ; $5ee2: $f1
	ld   de, $ffcf                                   ; $5ee3: $11 $cf $ff
	ld   h, c                                        ; $5ee6: $61
	inc  d                                           ; $5ee7: $14
	adc  e                                           ; $5ee8: $8b
	rst  $38                                         ; $5ee9: $ff
	ld   de, $ff19                                   ; $5eea: $11 $19 $ff
	ld   sp, hl                                      ; $5eed: $f9
	ld   de, $9f19                                   ; $5eee: $11 $19 $9f
	ldh  a, [c]                                      ; $5ef1: $f2
	ld   de, $ff8f                                   ; $5ef2: $11 $8f $ff
	or   c                                           ; $5ef5: $b1
	ld   de, $ffa8                                   ; $5ef6: $11 $a8 $ff
	ld   d, c                                        ; $5ef9: $51
	ld   d, $ff                                      ; $5efa: $16 $ff
	cp   $11                                         ; $5efc: $fe $11
	add  hl, de                                      ; $5efe: $19
	adc  a                                           ; $5eff: $8f
	or   $11                                         ; $5f00: $f6 $11
	ld   e, [hl]                                     ; $5f02: $5e
	rst  $38                                         ; $5f03: $ff
	pop  hl                                          ; $5f04: $e1
	ld   de, $ff88                                   ; $5f05: $11 $88 $ff
	ld   h, c                                        ; $5f08: $61
	inc  d                                           ; $5f09: $14
	rst  JumpTable                                         ; $5f0a: $df
	rst  $38                                         ; $5f0b: $ff
	ld   de, $8f17                                   ; $5f0c: $11 $17 $8f
	push af                                          ; $5f0f: $f5
	ld   de, $ff4e                                   ; $5f10: $11 $4e $ff
	pop  hl                                          ; $5f13: $e1
	ld   de, $ff6a                                   ; $5f14: $11 $6a $ff
	ld   b, c                                        ; $5f17: $41
	dec  d                                           ; $5f18: $15
	rst  JumpTable                                         ; $5f19: $df
	cp   $11                                         ; $5f1a: $fe $11
	ld   d, $bf                                      ; $5f1c: $16 $bf
	pop  af                                          ; $5f1e: $f1
	ld   de, $ff6e                                   ; $5f1f: $11 $6e $ff
	or   c                                           ; $5f22: $b1
	ld   [de], a                                     ; $5f23: $12
	ld   e, a                                        ; $5f24: $5f
	rst  $38                                         ; $5f25: $ff
	ld   de, $ff19                                   ; $5f26: $11 $19 $ff
	or   $11                                         ; $5f29: $f6 $11
	ld   b, a                                        ; $5f2b: $47
	rst  $38                                         ; $5f2c: $ff
	ld   [hl], c                                     ; $5f2d: $71
	ld   [de], a                                     ; $5f2e: $12
	xor  a                                           ; $5f2f: $af
	rst  $38                                         ; $5f30: $ff
	ld   de, rAUD1HIGH                                   ; $5f31: $11 $14 $ff
	pop  af                                          ; $5f34: $f1
	ld   de, $ff6e                                   ; $5f35: $11 $6e $ff
	ld   [hl], c                                     ; $5f38: $71
	ld   de, $f59f                                   ; $5f39: $11 $9f $f5
	ld   de, $ff29                                   ; $5f3c: $11 $29 $ff
	pop  bc                                          ; $5f3f: $c1
	ld   de, $f85f                                   ; $5f40: $11 $5f $f8
	ld   de, $ff17                                   ; $5f43: $11 $17 $ff
	pop  hl                                          ; $5f46: $e1
	ld   de, $f95f                                   ; $5f47: $11 $5f $f9
	ld   hl, $ff16                                   ; $5f4a: $21 $16 $ff
	pop  bc                                          ; $5f4d: $c1
	ld   de, $f9bf                                   ; $5f4e: $11 $bf $f9
	ld   hl, $ff19                                   ; $5f51: $21 $19 $ff
	ld   d, c                                        ; $5f54: $51
	inc  de                                          ; $5f55: $13
	rst  $38                                         ; $5f56: $ff
	sub  a                                           ; $5f57: $97
	ld   hl, $f94f                                   ; $5f58: $21 $4f $f9
	ld   de, $f72f                                   ; $5f5b: $11 $2f $f7
	ld   h, h                                        ; $5f5e: $64
	dec  h                                           ; $5f5f: $25
	rst  $38                                         ; $5f60: $ff
	sub  c                                           ; $5f61: $91
	ld   de, $b3ff                                   ; $5f62: $11 $ff $b3
	ld   sp, $fe4c                                   ; $5f65: $31 $4c $fe
	ld   de, $fe1e                                   ; $5f68: $11 $1e $fe
	ld   b, h                                        ; $5f6b: $44
	inc  de                                          ; $5f6c: $13
	cp   a                                           ; $5f6d: $bf
	pop  af                                          ; $5f6e: $f1
	ld   de, $d4cf                                   ; $5f6f: $11 $cf $d4
	ld   b, d                                        ; $5f72: $42
	ld   c, d                                        ; $5f73: $4a
	cp   $11                                         ; $5f74: $fe $11
	rra                                              ; $5f76: $1f
	ld   a, [$3445]                                  ; $5f77: $fa $45 $34
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f7a: $cf
	or   c                                           ; $5f7b: $b1
	ld   [de], a                                     ; $5f7c: $12
	rst  $38                                         ; $5f7d: $ff
	ld   [hl], e                                     ; $5f7e: $73
	ld   b, h                                        ; $5f7f: $44
	ld   a, a                                        ; $5f80: $7f
	rst  $30                                         ; $5f81: $f7
	ld   de, $e3af                                   ; $5f82: $11 $af $e3
	ld   b, l                                        ; $5f85: $45
	ld   c, c                                        ; $5f86: $49
	rst  $38                                         ; $5f87: $ff
	ld   de, $f71f                                   ; $5f88: $11 $1f $f7
	inc  h                                           ; $5f8b: $24
	ld   d, [hl]                                     ; $5f8c: $56
	rst  $28                                         ; $5f8d: $ef
	sub  c                                           ; $5f8e: $91
	add  hl, de                                      ; $5f8f: $19
	rst  $38                                         ; $5f90: $ff
	inc  sp                                          ; $5f91: $33
	ld   d, [hl]                                     ; $5f92: $56
	xor  a                                           ; $5f93: $af
	pop  af                                          ; $5f94: $f1
	ld   de, $62ff                                   ; $5f95: $11 $ff $62
	ld   b, [hl]                                     ; $5f98: $46
	ld   a, [hl]                                     ; $5f99: $7e
	rst  $30                                         ; $5f9a: $f7
	ld   de, $a2ff                                   ; $5f9b: $11 $ff $a2
	ld   b, l                                        ; $5f9e: $45
	ld   e, e                                        ; $5f9f: $5b
	db   $fc                                         ; $5fa0: $fc
	ld   de, $f37f                                   ; $5fa1: $11 $7f $f3
	dec  [hl]                                        ; $5fa4: $35
	ld   e, b                                        ; $5fa5: $58
	rst  $38                                         ; $5fa6: $ff
	ld   hl, $f61f                                   ; $5fa7: $21 $1f $f6
	inc  h                                           ; $5faa: $24
	ld   h, a                                        ; $5fab: $67
	rst  $28                                         ; $5fac: $ef
	ld   [hl], c                                     ; $5fad: $71
	rra                                              ; $5fae: $1f
	ld   sp, hl                                      ; $5faf: $f9
	inc  de                                          ; $5fb0: $13
	ld   h, [hl]                                     ; $5fb1: $66
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5fb2: $cf
	or   c                                           ; $5fb3: $b1
	dec  de                                          ; $5fb4: $1b
	db   $fd                                         ; $5fb5: $fd
	ld   [hl-], a                                    ; $5fb6: $32
	ld   d, [hl]                                     ; $5fb7: $56
	sbc  a                                           ; $5fb8: $9f
	pop  af                                          ; $5fb9: $f1
	dec  d                                           ; $5fba: $15
	rst  $38                                         ; $5fbb: $ff
	ld   b, e                                        ; $5fbc: $43
	ld   d, [hl]                                     ; $5fbd: $56
	adc  a                                           ; $5fbe: $8f
	db   $f4                                         ; $5fbf: $f4
	ld   de, $62ff                                   ; $5fc0: $11 $ff $62
	ld   b, [hl]                                     ; $5fc3: $46
	ld   a, l                                        ; $5fc4: $7d
	ld   sp, hl                                      ; $5fc5: $f9
	ld   de, $92ff                                   ; $5fc6: $11 $ff $92
	scf                                              ; $5fc9: $37
	ld   a, d                                        ; $5fca: $7a
	db   $fc                                         ; $5fcb: $fc
	ld   de, $e2af                                   ; $5fcc: $11 $af $e2
	dec  h                                           ; $5fcf: $25
	ld   a, c                                        ; $5fd0: $79
	rst  $38                                         ; $5fd1: $ff
	ld   de, $f44f                                   ; $5fd2: $11 $4f $f4
	inc  h                                           ; $5fd5: $24
	ld   l, c                                        ; $5fd6: $69
	rst  $38                                         ; $5fd7: $ff
	ld   d, c                                        ; $5fd8: $51
	rra                                              ; $5fd9: $1f
	rst  $30                                         ; $5fda: $f7
	inc  hl                                          ; $5fdb: $23
	ld   l, b                                        ; $5fdc: $68
	rst  JumpTable                                         ; $5fdd: $df
	and  c                                           ; $5fde: $a1
	rra                                              ; $5fdf: $1f
	ei                                               ; $5fe0: $fb
	inc  hl                                          ; $5fe1: $23
	ld   h, a                                        ; $5fe2: $67
	xor  a                                           ; $5fe3: $af
	pop  de                                          ; $5fe4: $d1
	ld   a, [de]                                     ; $5fe5: $1a
	cp   $33                                         ; $5fe6: $fe $33
	ld   d, a                                        ; $5fe8: $57
	sbc  a                                           ; $5fe9: $9f
	pop  af                                          ; $5fea: $f1
	dec  d                                           ; $5feb: $15
	rst  $38                                         ; $5fec: $ff
	ld   b, d                                        ; $5fed: $42
	ld   b, a                                        ; $5fee: $47

Call_0ec_5fef:
jr_0ec_5fef:
	adc  [hl]                                        ; $5fef: $8e
	push af                                          ; $5ff0: $f5
	ld   de, $72ff                                   ; $5ff1: $11 $ff $72
	ld   [hl], $8d                                   ; $5ff4: $36 $8d
	ld   sp, hl                                      ; $5ff6: $f9
	ld   de, $a3ff                                   ; $5ff7: $11 $ff $a3
	ld   [hl], $8b                                   ; $5ffa: $36 $8b
	ei                                               ; $5ffc: $fb
	ld   de, $f3af                                   ; $5ffd: $11 $af $f3
	inc  d                                           ; $6000: $14
	ld   a, d                                        ; $6001: $7a
	rst  $38                                         ; $6002: $ff
	ld   de, $f63f                                   ; $6003: $11 $3f $f6
	inc  h                                           ; $6006: $24
	ld   l, b                                        ; $6007: $68
	rst  $28                                         ; $6008: $ef
	ld   h, c                                        ; $6009: $61
	rra                                              ; $600a: $1f
	ld   hl, sp+$23                                  ; $600b: $f8 $23
	ld   l, b                                        ; $600d: $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $600e: $cf
	sub  c                                           ; $600f: $91
	ld   e, $fc                                      ; $6010: $1e $fc
	ld   [hl-], a                                    ; $6012: $32
	ld   e, b                                        ; $6013: $58
	cp   a                                           ; $6014: $bf
	pop  bc                                          ; $6015: $c1
	jr   @+$01                                       ; $6016: $18 $ff

	ld   b, d                                        ; $6018: $42
	ld   b, a                                        ; $6019: $47
	xor  a                                           ; $601a: $af
	ldh  a, [c]                                      ; $601b: $f2
	inc  de                                          ; $601c: $13
	rst  $38                                         ; $601d: $ff
	ld   d, d                                        ; $601e: $52
	ld   b, a                                        ; $601f: $47
	adc  [hl]                                        ; $6020: $8e
	or   $11                                         ; $6021: $f6 $11
	rst  $38                                         ; $6023: $ff
	ld   [hl], d                                     ; $6024: $72
	scf                                              ; $6025: $37
	sbc  h                                           ; $6026: $9c
	ld   a, [rAUD1LEN]                                  ; $6027: $fa $11 $ff
	jp   nz, $8b25                                   ; $602a: $c2 $25 $8b

	cp   $11                                         ; $602d: $fe $11
	adc  a                                           ; $602f: $8f
	db   $f4                                         ; $6030: $f4
	inc  h                                           ; $6031: $24
	adc  c                                           ; $6032: $89
	rst  $28                                         ; $6033: $ef
	ld   sp, $f62f                                   ; $6034: $31 $2f $f6
	inc  de                                          ; $6037: $13
	ld   a, c                                        ; $6038: $79
	rst  $28                                         ; $6039: $ef
	ld   [hl], c                                     ; $603a: $71
	rra                                              ; $603b: $1f
	ld   hl, sp+$22                                  ; $603c: $f8 $22
	ld   l, b                                        ; $603e: $68
	cp   a                                           ; $603f: $bf
	or   c                                           ; $6040: $b1
	dec  e                                           ; $6041: $1d
	db   $fc                                         ; $6042: $fc
	ld   [hl-], a                                    ; $6043: $32
	ld   l, b                                        ; $6044: $68
	xor  a                                           ; $6045: $af
	pop  hl                                          ; $6046: $e1
	rla                                              ; $6047: $17
	rst  $38                                         ; $6048: $ff
	ld   b, c                                        ; $6049: $41
	ld   e, b                                        ; $604a: $58
	sbc  [hl]                                        ; $604b: $9e
	di                                               ; $604c: $f3
	ld   de, $61ff                                   ; $604d: $11 $ff $61
	jr   c, jr_0ec_5fef                              ; $6050: $38 $9d

	ld   hl, sp+$11                                  ; $6052: $f8 $11
	rst  $38                                         ; $6054: $ff
	add  c                                           ; $6055: $81
	scf                                              ; $6056: $37
	adc  e                                           ; $6057: $8b
	ei                                               ; $6058: $fb
	ld   de, $e2df                                   ; $6059: $11 $df $e2
	dec  d                                           ; $605c: $15
	adc  c                                           ; $605d: $89
	rst  $38                                         ; $605e: $ff
	ld   de, $f46f                                   ; $605f: $11 $6f $f4
	inc  d                                           ; $6062: $14
	sbc  c                                           ; $6063: $99
	rst  $28                                         ; $6064: $ef
	ld   b, c                                        ; $6065: $41
	rra                                              ; $6066: $1f
	or   $13                                         ; $6067: $f6 $13
	sbc  b                                           ; $6069: $98
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $606a: $cf
	add  c                                           ; $606b: $81
	rra                                              ; $606c: $1f
	ld   a, [$7911]                                  ; $606d: $fa $11 $79
	xor  a                                           ; $6070: $af
	pop  bc                                          ; $6071: $c1
	inc  e                                           ; $6072: $1c
	cp   $31                                         ; $6073: $fe $31
	ld   e, c                                        ; $6075: $59
	sbc  a                                           ; $6076: $9f
	pop  hl                                          ; $6077: $e1
	dec  d                                           ; $6078: $15
	rst  $38                                         ; $6079: $ff
	ld   b, c                                        ; $607a: $41
	ld   c, b                                        ; $607b: $48
	adc  l                                           ; $607c: $8d
	push af                                          ; $607d: $f5
	ld   de, $71ff                                   ; $607e: $11 $ff $71
	add  hl, sp                                      ; $6081: $39
	adc  e                                           ; $6082: $8b
	ld   sp, hl                                      ; $6083: $f9
	ld   de, $a1ff                                   ; $6084: $11 $ff $a1
	daa                                              ; $6087: $27
	sbc  c                                           ; $6088: $99
	db   $fc                                         ; $6089: $fc
	ld   de, $e3cf                                   ; $608a: $11 $cf $e3
	ld   d, $99                                      ; $608d: $16 $99
	rst  $38                                         ; $608f: $ff
	ld   de, $f46f                                   ; $6090: $11 $6f $f4
	dec  d                                           ; $6093: $15
	sbc  b                                           ; $6094: $98
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6095: $cf
	ld   b, c                                        ; $6096: $41
	rra                                              ; $6097: $1f
	rst  $30                                         ; $6098: $f7
	inc  de                                          ; $6099: $13
	adc  b                                           ; $609a: $88
	cp   a                                           ; $609b: $bf
	add  c                                           ; $609c: $81
	rra                                              ; $609d: $1f
	ld   a, [$8812]                                  ; $609e: $fa $12 $88
	sbc  a                                           ; $60a1: $9f
	pop  bc                                          ; $60a2: $c1
	dec  e                                           ; $60a3: $1d
	cp   $21                                         ; $60a4: $fe $21
	ld   a, c                                        ; $60a6: $79
	adc  a                                           ; $60a7: $8f
	pop  hl                                          ; $60a8: $e1
	ld   d, $ff                                      ; $60a9: $16 $ff
	ld   b, c                                        ; $60ab: $41
	ld   e, c                                        ; $60ac: $59
	ld   a, [hl]                                     ; $60ad: $7e
	db   $f4                                         ; $60ae: $f4
	ld   de, $71ff                                   ; $60af: $11 $ff $71
	ld   c, c                                        ; $60b2: $49
	ld   a, e                                        ; $60b3: $7b
	ld   sp, hl                                      ; $60b4: $f9
	ld   de, $a1ff                                   ; $60b5: $11 $ff $a1
	add  hl, sp                                      ; $60b8: $39
	ld   a, c                                        ; $60b9: $79
	db   $fc                                         ; $60ba: $fc
	ld   de, $e2df                                   ; $60bb: $11 $df $e2
	daa                                              ; $60be: $27
	ld   [hl], a                                     ; $60bf: $77
	rst  $38                                         ; $60c0: $ff
	ld   de, $f46f                                   ; $60c1: $11 $6f $f4
	ld   d, $86                                      ; $60c4: $16 $86
	rst  JumpTable                                         ; $60c6: $df
	ld   b, c                                        ; $60c7: $41
	rra                                              ; $60c8: $1f
	ld   hl, sp+$14                                  ; $60c9: $f8 $14
	add  [hl]                                        ; $60cb: $86
	cp   a                                           ; $60cc: $bf
	sub  c                                           ; $60cd: $91
	rra                                              ; $60ce: $1f
	db   $fc                                         ; $60cf: $fc
	inc  hl                                          ; $60d0: $23
	halt                                             ; $60d1: $76
	adc  a                                           ; $60d2: $8f
	pop  de                                          ; $60d3: $d1
	ld   a, [de]                                     ; $60d4: $1a
	rst  $38                                         ; $60d5: $ff
	ld   [hl-], a                                    ; $60d6: $32
	ld   [hl], a                                     ; $60d7: $77
	ld   a, a                                        ; $60d8: $7f
	pop  af                                          ; $60d9: $f1
	ld   [de], a                                     ; $60da: $12
	rst  $38                                         ; $60db: $ff
	ld   h, d                                        ; $60dc: $62
	ld   d, a                                        ; $60dd: $57
	ld   l, l                                        ; $60de: $6d
	or   $11                                         ; $60df: $f6 $11
	rst  $38                                         ; $60e1: $ff
	or   d                                           ; $60e2: $b2
	ld   b, a                                        ; $60e3: $47
	ld   l, e                                        ; $60e4: $6b
	ld   a, [$cf11]                                  ; $60e5: $fa $11 $cf
	di                                               ; $60e8: $f3
	ld   [hl], $59                                   ; $60e9: $36 $59
	cp   $11                                         ; $60eb: $fe $11
	ld   l, a                                        ; $60ed: $6f
	push af                                          ; $60ee: $f5
	ld   h, $67                                      ; $60ef: $26 $67
	rst  $28                                         ; $60f1: $ef
	ld   sp, $fa1f                                   ; $60f2: $31 $1f $fa
	dec  [hl]                                        ; $60f5: $35
	ld   d, l                                        ; $60f6: $55
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $60f7: $cf
	add  c                                           ; $60f8: $81
	rra                                              ; $60f9: $1f
	db   $fd                                         ; $60fa: $fd
	inc  [hl]                                        ; $60fb: $34
	ld   h, [hl]                                     ; $60fc: $66
	xor  a                                           ; $60fd: $af
	or   c                                           ; $60fe: $b1
	ld   a, [de]                                     ; $60ff: $1a
	rst  $38                                         ; $6100: $ff
	ld   b, h                                        ; $6101: $44
	ld   h, [hl]                                     ; $6102: $66
	sbc  a                                           ; $6103: $9f
	pop  hl                                          ; $6104: $e1
	dec  d                                           ; $6105: $15
	rst  $38                                         ; $6106: $ff
	add  d                                           ; $6107: $82
	dec  [hl]                                        ; $6108: $35
	sbc  [hl]                                        ; $6109: $9e
	db   $f4                                         ; $610a: $f4
	ld   de, $a4ff                                   ; $610b: $11 $ff $a4
	ld   d, l                                        ; $610e: $55
	ld   l, e                                        ; $610f: $6b
	rst  $30                                         ; $6110: $f7
	ld   de, $c3ff                                   ; $6111: $11 $ff $c3
	ld   b, [hl]                                     ; $6114: $46
	ld   a, e                                        ; $6115: $7b
	ld   sp, hl                                      ; $6116: $f9
	ld   de, $f4cf                                   ; $6117: $11 $cf $f4
	ld   [hl], $6a                                   ; $611a: $36 $6a
	db   $ec                                         ; $611c: $ec
	ld   de, $f66f                                   ; $611d: $11 $6f $f6
	ld   [hl], $78                                   ; $6120: $36 $78
	sbc  $21                                         ; $6122: $de $21
	ccf                                              ; $6124: $3f
	ld   sp, hl                                      ; $6125: $f9
	inc  h                                           ; $6126: $24
	ld   a, b                                        ; $6127: $78
	cp   [hl]                                        ; $6128: $be
	ld   h, c                                        ; $6129: $61
	rra                                              ; $612a: $1f
	db   $fd                                         ; $612b: $fd
	ld   b, e                                        ; $612c: $43
	ld   h, a                                        ; $612d: $67
	xor  [hl]                                        ; $612e: $ae
	add  c                                           ; $612f: $81
	inc  e                                           ; $6130: $1c
	db   $fd                                         ; $6131: $fd
	ld   d, l                                        ; $6132: $55
	ld   h, l                                        ; $6133: $65
	adc  l                                           ; $6134: $8d
	sub  c                                           ; $6135: $91
	dec  de                                          ; $6136: $1b
	cp   $65                                         ; $6137: $fe $65
	halt                                             ; $6139: $76
	ld   a, h                                        ; $613a: $7c
	and  c                                           ; $613b: $a1
	dec  de                                          ; $613c: $1b
	rst  $38                                         ; $613d: $ff
	ld   h, h                                        ; $613e: $64
	ld   [hl], a                                     ; $613f: $77
	sbc  h                                           ; $6140: $9c
	sub  c                                           ; $6141: $91
	ld   a, [de]                                     ; $6142: $1a
	cp   $65                                         ; $6143: $fe $65
	ld   h, [hl]                                     ; $6145: $66
	adc  e                                           ; $6146: $8b
	and  c                                           ; $6147: $a1
	ld   a, [de]                                     ; $6148: $1a
	cp   $65                                         ; $6149: $fe $65
	ld   [hl], a                                     ; $614b: $77
	ld   a, e                                        ; $614c: $7b
	sub  c                                           ; $614d: $91
	add  hl, de                                      ; $614e: $19
	cp   $75                                         ; $614f: $fe $75
	ld   h, a                                        ; $6151: $67
	ld   a, e                                        ; $6152: $7b
	sub  c                                           ; $6153: $91
	add  hl, de                                      ; $6154: $19
	rst  $38                                         ; $6155: $ff
	add  l                                           ; $6156: $85
	ld   [hl], a                                     ; $6157: $77
	adc  e                                           ; $6158: $8b
	and  d                                           ; $6159: $a2
	rla                                              ; $615a: $17
	rst  $38                                         ; $615b: $ff
	sub  l                                           ; $615c: $95
	ld   [hl], a                                     ; $615d: $77
	ld   a, e                                        ; $615e: $7b
	jp   rAUD1HIGH                                       ; $615f: $c3 $14 $ff


	and  l                                           ; $6162: $a5
	ld   d, [hl]                                     ; $6163: $56
	ld   a, d                                        ; $6164: $7a
	push bc                                          ; $6165: $c5
	ld   de, $d7ef                                   ; $6166: $11 $ef $d7
	ld   h, l                                        ; $6169: $65
	ld   e, c                                        ; $616a: $59
	ret  z                                           ; $616b: $c8

	ld   de, $d7cf                                   ; $616c: $11 $cf $d7
	ld   d, a                                        ; $616f: $57
	adc  d                                           ; $6170: $8a
	ret                                              ; $6171: $c9


	ld   de, $fa8f                                   ; $6172: $11 $8f $fa
	ld   h, l                                        ; $6175: $65
	ld   l, b                                        ; $6176: $68
	call c, $2f31                                    ; $6177: $dc $31 $2f
	db   $fc                                         ; $617a: $fc
	add  [hl]                                        ; $617b: $86
	ld   d, [hl]                                     ; $617c: $56
	cp   [hl]                                        ; $617d: $be
	ld   [hl], c                                     ; $617e: $71
	add  hl, de                                      ; $617f: $19
	rst  $38                                         ; $6180: $ff
	and  a                                           ; $6181: $a7
	ld   h, h                                        ; $6182: $64
	ld   a, l                                        ; $6183: $7d
	jp   nz, $ff15                                   ; $6184: $c2 $15 $ff

	or   a                                           ; $6187: $b7
	halt                                             ; $6188: $76
	ld   a, e                                        ; $6189: $7b
	call nz, $df11                                   ; $618a: $c4 $11 $df
	add  sp, $65                                     ; $618d: $e8 $65
	ld   e, c                                        ; $618f: $59
	ld   a, [$6f11]                                  ; $6190: $fa $11 $6f
	ei                                               ; $6193: $fb
	ld   [hl], a                                     ; $6194: $77
	ld   h, a                                        ; $6195: $67
	db   $dd                                         ; $6196: $dd
	ld   d, c                                        ; $6197: $51
	inc  e                                           ; $6198: $1c
	cp   $a7                                         ; $6199: $fe $a7
	ld   d, h                                        ; $619b: $54
	sbc  l                                           ; $619c: $9d
	and  c                                           ; $619d: $a1
	ld   d, $ff                                      ; $619e: $16 $ff
	sub  a                                           ; $61a0: $97
	ld   [hl], a                                     ; $61a1: $77
	adc  h                                           ; $61a2: $8c
	push bc                                          ; $61a3: $c5
	ld   de, $f7af                                   ; $61a4: $11 $af $f7
	ld   h, [hl]                                     ; $61a7: $66
	ld   a, c                                        ; $61a8: $79
	db   $fd                                         ; $61a9: $fd
	ld   sp, $ff19                                   ; $61aa: $31 $19 $ff
	and  a                                           ; $61ad: $a7
	ld   d, a                                        ; $61ae: $57
	xor  l                                           ; $61af: $ad
	and  d                                           ; $61b0: $a2
	ld   de, $e9bf                                   ; $61b1: $11 $bf $e9
	ld   h, [hl]                                     ; $61b4: $66
	adc  h                                           ; $61b5: $8c
	reti                                             ; $61b6: $d9


	ld   de, $fe2c                                   ; $61b7: $11 $2c $fe
	ld   [hl], l                                     ; $61ba: $75
	ld   l, c                                        ; $61bb: $69
	db   $dd                                         ; $61bc: $dd
	add  c                                           ; $61bd: $81
	inc  de                                          ; $61be: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61bf: $cf
	add  sp, $66                                     ; $61c0: $e8 $66
	sbc  e                                           ; $61c2: $9b
	ret  c                                           ; $61c3: $d8

	ld   de, $fd3b                                   ; $61c4: $11 $3b $fd
	sbc  b                                           ; $61c7: $98
	sbc  b                                           ; $61c8: $98
	cp   h                                           ; $61c9: $bc
	ld   [hl], c                                     ; $61ca: $71
	inc  d                                           ; $61cb: $14
	cp   a                                           ; $61cc: $bf
	rst  ToBoot                                         ; $61cd: $c7
	ld   l, b                                        ; $61ce: $68
	sbc  h                                           ; $61cf: $9c
	rst  ToBoot                                         ; $61d0: $c7
	ld   de, $fd3a                                   ; $61d1: $11 $3a $fd
	sbc  b                                           ; $61d4: $98
	adc  d                                           ; $61d5: $8a
	xor  d                                           ; $61d6: $aa
	add  d                                           ; $61d7: $82
	inc  de                                          ; $61d8: $13
	ld   a, e                                        ; $61d9: $7b
	db   $ec                                         ; $61da: $ec
	sbc  c                                           ; $61db: $99
	sbc  e                                           ; $61dc: $9b
	cp   b                                           ; $61dd: $b8
	ld   sp, $be16                                   ; $61de: $31 $16 $be
	xor  b                                           ; $61e1: $a8
	xor  d                                           ; $61e2: $aa
	cp   e                                           ; $61e3: $bb
	sub  l                                           ; $61e4: $95
	ld   de, $dd58                                   ; $61e5: $11 $58 $dd
	xor  d                                           ; $61e8: $aa
	sbc  c                                           ; $61e9: $99
	xor  d                                           ; $61ea: $aa
	ld   [hl], d                                     ; $61eb: $72
	ld   [de], a                                     ; $61ec: $12
	adc  h                                           ; $61ed: $8c
	db   $eb                                         ; $61ee: $eb
	sbc  d                                           ; $61ef: $9a
	xor  d                                           ; $61f0: $aa
	sub  a                                           ; $61f1: $97
	ld   sp, $9d26                                   ; $61f2: $31 $26 $9d
	reti                                             ; $61f5: $d9


	xor  d                                           ; $61f6: $aa
	xor  d                                           ; $61f7: $aa
	sub  l                                           ; $61f8: $95
	ld   de, $de37                                   ; $61f9: $11 $37 $de
	cp   c                                           ; $61fc: $b9
	sbc  d                                           ; $61fd: $9a
	xor  d                                           ; $61fe: $aa
	add  h                                           ; $61ff: $84
	ld   de, $fe49                                   ; $6200: $11 $49 $fe
	cp   d                                           ; $6203: $ba
	add  a                                           ; $6204: $87
	xor  e                                           ; $6205: $ab
	sub  e                                           ; $6206: $93
	ld   de, $fe5a                                   ; $6207: $11 $5a $fe
	jp   z, $ba77                                    ; $620a: $ca $77 $ba

	ld   [hl], d                                     ; $620d: $72
	ld   [de], a                                     ; $620e: $12
	ld   c, h                                        ; $620f: $4c
	db   $fd                                         ; $6210: $fd
	res  2, a                                        ; $6211: $cb $97
	adc  c                                           ; $6213: $89
	ld   [hl], d                                     ; $6214: $72
	ld   [de], a                                     ; $6215: $12
	ld   e, h                                        ; $6216: $5c
	call c, $a9cc                                    ; $6217: $dc $cc $a9
	sub  a                                           ; $621a: $97
	ld   d, c                                        ; $621b: $51
	inc  d                                           ; $621c: $14
	adc  l                                           ; $621d: $8d
	db   $db                                         ; $621e: $db
	res  3, c                                        ; $621f: $cb $99
	sbc  b                                           ; $6221: $98
	ld   h, c                                        ; $6222: $61
	ld   de, $ed6e                                   ; $6223: $11 $6e $ed
	db   $eb                                         ; $6226: $eb
	ld   h, [hl]                                     ; $6227: $66
	adc  d                                           ; $6228: $8a
	ld   h, c                                        ; $6229: $61
	ld   de, $fd6e                                   ; $622a: $11 $6e $fd
	db   $db                                         ; $622d: $db
	sub  a                                           ; $622e: $97
	ld   a, b                                        ; $622f: $78
	ld   h, d                                        ; $6230: $62
	ld   de, $fe5e                                   ; $6231: $11 $5e $fe
	jp   z, $8887                                    ; $6234: $ca $87 $88

	ld   h, d                                        ; $6237: $62
	ld   de, $dc5d                                   ; $6238: $11 $5d $dc
	xor  $85                                         ; $623b: $ee $85
	ld   l, b                                        ; $623d: $68
	ld   [hl], e                                     ; $623e: $73
	ld   [de], a                                     ; $623f: $12
	ld   c, d                                        ; $6240: $4a
	db   $ed                                         ; $6241: $ed
	call Call_0ec_77b8                               ; $6242: $cd $b8 $77
	ld   h, h                                        ; $6245: $64
	ld   [de], a                                     ; $6246: $12
	add  hl, sp                                      ; $6247: $39
	cp   $cb                                         ; $6248: $fe $cb
	sbc  c                                           ; $624a: $99
	sbc  b                                           ; $624b: $98
	ld   [hl], h                                     ; $624c: $74
	ld   de, $ef38                                   ; $624d: $11 $38 $ef
	ret                                              ; $6250: $c9


	xor  d                                           ; $6251: $aa
	xor  b                                           ; $6252: $a8
	add  [hl]                                        ; $6253: $86
	ld   de, $ce27                                   ; $6254: $11 $27 $ce
	jp   z, $8abb                                    ; $6257: $ca $bb $8a

	sub  a                                           ; $625a: $97
	ld   hl, $8d24                                   ; $625b: $21 $24 $8d
	db   $eb                                         ; $625e: $eb
	xor  d                                           ; $625f: $aa
	xor  e                                           ; $6260: $ab
	cp   c                                           ; $6261: $b9
	ld   d, c                                        ; $6262: $51
	ld   [de], a                                     ; $6263: $12
	ld   e, d                                        ; $6264: $5a
	rst  $28                                         ; $6265: $ef
	cp   d                                           ; $6266: $ba
	xor  d                                           ; $6267: $aa
	cp   c                                           ; $6268: $b9
	ld   h, h                                        ; $6269: $64
	ld   de, $be46                                   ; $626a: $11 $46 $be
	jp   c, $baac                                    ; $626d: $da $ac $ba

	add  [hl]                                        ; $6270: $86
	ld   hl, $7c15                                   ; $6271: $21 $15 $7c
	db   $fc                                         ; $6274: $fc
	res  7, d                                        ; $6275: $cb $ba
	sub  a                                           ; $6277: $97
	ld   h, c                                        ; $6278: $61
	ld   de, $ff48                                   ; $6279: $11 $48 $ff
	ret                                              ; $627c: $c9


	adc  d                                           ; $627d: $8a
	cp   c                                           ; $627e: $b9
	ld   [hl], h                                     ; $627f: $74
	ld   de, $bf26                                   ; $6280: $11 $26 $bf
	call c, $b9bc                                    ; $6283: $dc $bc $b9
	ld   [hl], a                                     ; $6286: $77
	ld   d, c                                        ; $6287: $51
	ld   [de], a                                     ; $6288: $12
	ld   l, h                                        ; $6289: $6c
	db   $fd                                         ; $628a: $fd
	cp   e                                           ; $628b: $bb
	xor  d                                           ; $628c: $aa
	sbc  b                                           ; $628d: $98
	add  [hl]                                        ; $628e: $86
	ld   de, $bf26                                   ; $628f: $11 $26 $bf
	db   $fd                                         ; $6292: $fd
	sub  a                                           ; $6293: $97
	sbc  d                                           ; $6294: $9a
	cp   c                                           ; $6295: $b9
	ld   d, c                                        ; $6296: $51
	ld   de, $ff5b                                   ; $6297: $11 $5b $ff
	reti                                             ; $629a: $d9


	adc  b                                           ; $629b: $88
	xor  d                                           ; $629c: $aa
	sub  [hl]                                        ; $629d: $96
	ld   de, $9f25                                   ; $629e: $11 $25 $9f
	db   $fc                                         ; $62a1: $fc
	xor  c                                           ; $62a2: $a9
	sbc  d                                           ; $62a3: $9a
	sbc  b                                           ; $62a4: $98
	ld   h, c                                        ; $62a5: $61
	ld   de, $ef5a                                   ; $62a6: $11 $5a $ef
	ret                                              ; $62a9: $c9


	adc  c                                           ; $62aa: $89
	bit  6, l                                        ; $62ab: $cb $75
	ld   hl, $9e25                                   ; $62ad: $21 $25 $9e
	db   $eb                                         ; $62b0: $eb
	xor  d                                           ; $62b1: $aa
	cp   d                                           ; $62b2: $ba
	xor  b                                           ; $62b3: $a8
	ld   [hl], e                                     ; $62b4: $73
	ld   de, $9e56                                   ; $62b5: $11 $56 $9e
	db   $ed                                         ; $62b8: $ed
	res  5, b                                        ; $62b9: $cb $a8
	ld   a, b                                        ; $62bb: $78
	ld   [hl], c                                     ; $62bc: $71
	ld   de, $ff48                                   ; $62bd: $11 $48 $ff
	jp   c, $bb8a                                    ; $62c0: $da $8a $bb

	sub  [hl]                                        ; $62c3: $96
	ld   hl, $7c14                                   ; $62c4: $21 $14 $7c
	db   $fc                                         ; $62c7: $fc
	cp   e                                           ; $62c8: $bb
	cp   c                                           ; $62c9: $b9
	sbc  d                                           ; $62ca: $9a
	sub  h                                           ; $62cb: $94
	ld   de, $9e46                                   ; $62cc: $11 $46 $9e
	db   $ec                                         ; $62cf: $ec
	cp   e                                           ; $62d0: $bb
	xor  d                                           ; $62d1: $aa
	sub  a                                           ; $62d2: $97
	ld   h, d                                        ; $62d3: $62
	ld   de, $cf56                                   ; $62d4: $11 $56 $cf
	ei                                               ; $62d7: $fb
	xor  e                                           ; $62d8: $ab
	xor  d                                           ; $62d9: $aa
	add  [hl]                                        ; $62da: $86
	ld   b, c                                        ; $62db: $41
	inc  de                                          ; $62dc: $13
	ld   h, a                                        ; $62dd: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62de: $cf
	db   $eb                                         ; $62df: $eb
	cp   e                                           ; $62e0: $bb
	xor  c                                           ; $62e1: $a9
	ld   [hl], a                                     ; $62e2: $77
	ld   sp, $7a14                                   ; $62e3: $31 $14 $7a
	xor  $cb                                         ; $62e6: $ee $cb
	cp   d                                           ; $62e8: $ba
	xor  c                                           ; $62e9: $a9
	ld   [hl], l                                     ; $62ea: $75
	ld   hl, $6905                                   ; $62eb: $21 $05 $69
	rst  $38                                         ; $62ee: $ff
	call z, $b7cb                                    ; $62ef: $cc $cb $b7
	ld   h, h                                        ; $62f2: $64
	ld   hl, $7c15                                   ; $62f3: $21 $15 $7c
	db   $ed                                         ; $62f6: $ed
	cp   l                                           ; $62f7: $bd
	jp   z, $6397                                    ; $62f8: $ca $97 $63

	ld   bc, $7b36                                   ; $62fb: $01 $36 $7b
	db   $db                                         ; $62fe: $db
	cp   a                                           ; $62ff: $bf
	reti                                             ; $6300: $d9


	ld   [hl], l                                     ; $6301: $75
	ld   h, l                                        ; $6302: $65
	ld   sp, $5a35                                   ; $6303: $31 $35 $5a
	rst  $28                                         ; $6306: $ef
	xor  $b8                                         ; $6307: $ee $b8
	ld   [hl], a                                     ; $6309: $77
	halt                                             ; $630a: $76
	ld   hl, $7c14                                   ; $630b: $21 $14 $7c
	cp   $cb                                         ; $630e: $fe $cb
	cp   e                                           ; $6310: $bb
	cp   c                                           ; $6311: $b9
	ld   d, e                                        ; $6312: $53
	ld   de, $7737                                   ; $6313: $11 $37 $77
	cp   [hl]                                        ; $6316: $be
	xor  $e9                                         ; $6317: $ee $e9
	halt                                             ; $6319: $76
	ld   h, [hl]                                     ; $631a: $66
	ld   sp, $6914                                   ; $631b: $31 $14 $69
	adc  $dc                                         ; $631e: $ce $dc
	db   $eb                                         ; $6320: $eb
	and  a                                           ; $6321: $a7
	ld   d, h                                        ; $6322: $54
	ld   b, c                                        ; $6323: $41
	inc  de                                          ; $6324: $13
	ld   a, c                                        ; $6325: $79
	cp   l                                           ; $6326: $bd
	call z, $a7fe                                    ; $6327: $cc $fe $a7
	ld   d, e                                        ; $632a: $53
	ld   [hl-], a                                    ; $632b: $32
	inc  h                                           ; $632c: $24
	ld   h, [hl]                                     ; $632d: $66
	adc  h                                           ; $632e: $8c
	rst  $28                                         ; $632f: $ef
	rst  $38                                         ; $6330: $ff
	and  l                                           ; $6331: $a5
	ld   b, [hl]                                     ; $6332: $46
	ld   [hl], h                                     ; $6333: $74
	ld   de, $7a46                                   ; $6334: $11 $46 $7a
	rst  $28                                         ; $6337: $ef
	db   $ed                                         ; $6338: $ed
	cp   b                                           ; $6339: $b8
	ld   h, l                                        ; $633a: $65
	ld   d, l                                        ; $633b: $55
	ld   sp, $7925                                   ; $633c: $31 $25 $79
	rst  $28                                         ; $633f: $ef
	set  3, e                                        ; $6340: $cb $db
	halt                                             ; $6342: $76
	ld   h, [hl]                                     ; $6343: $66
	ld   d, d                                        ; $6344: $52
	inc  d                                           ; $6345: $14
	ld   [hl], a                                     ; $6346: $77
	xor  [hl]                                        ; $6347: $ae
	db   $ed                                         ; $6348: $ed
	db   $dd                                         ; $6349: $dd
	xor  b                                           ; $634a: $a8
	ld   h, l                                        ; $634b: $65
	ld   b, h                                        ; $634c: $44
	inc  sp                                          ; $634d: $33
	ld   d, [hl]                                     ; $634e: $56
	ld   l, c                                        ; $634f: $69
	xor  $ed                                         ; $6350: $ee $ed
	cp   d                                           ; $6352: $ba
	add  a                                           ; $6353: $87
	ld   d, e                                        ; $6354: $53
	ld   [hl-], a                                    ; $6355: $32
	ld   [hl], $87                                   ; $6356: $36 $87
	adc  h                                           ; $6358: $8c
	xor  $ec                                         ; $6359: $ee $ec
	sub  l                                           ; $635b: $95
	ld   d, l                                        ; $635c: $55
	ld   h, l                                        ; $635d: $65
	ld   hl, $8e46                                   ; $635e: $21 $46 $8e
	db   $fd                                         ; $6361: $fd
	xor  e                                           ; $6362: $ab
	jp   z, Jump_0ec_4475                            ; $6363: $ca $75 $44

	ld   b, d                                        ; $6366: $42
	dec  [hl]                                        ; $6367: $35
	ld   a, b                                        ; $6368: $78
	cp   [hl]                                        ; $6369: $be
	xor  $ea                                         ; $636a: $ee $ea
	ld   h, l                                        ; $636c: $65
	ld   h, a                                        ; $636d: $67
	ld   h, e                                        ; $636e: $63
	ld   [de], a                                     ; $636f: $12
	ld   a, b                                        ; $6370: $78
	adc  l                                           ; $6371: $8d
	db   $ec                                         ; $6372: $ec
	cp   [hl]                                        ; $6373: $be
	jp   c, $3474                                    ; $6374: $da $74 $34

	ld   b, d                                        ; $6377: $42
	ld   c, b                                        ; $6378: $48
	sub  a                                           ; $6379: $97
	adc  e                                           ; $637a: $8b
	rst  JumpTable                                         ; $637b: $df
	db   $fc                                         ; $637c: $fc
	ld   [hl], h                                     ; $637d: $74
	ld   b, [hl]                                     ; $637e: $46
	halt                                             ; $637f: $76
	ld   [hl-], a                                    ; $6380: $32
	ld   b, a                                        ; $6381: $47
	ld   a, c                                        ; $6382: $79
	db   $dd                                         ; $6383: $dd
	call Call_0ec_75da                               ; $6384: $cd $da $75
	ld   d, l                                        ; $6387: $55
	ld   b, h                                        ; $6388: $44
	ld   b, l                                        ; $6389: $45
	halt                                             ; $638a: $76
	ld   l, d                                        ; $638b: $6a
	db   $ed                                         ; $638c: $ed
	db   $ed                                         ; $638d: $ed
	sub  a                                           ; $638e: $97
	ld   d, h                                        ; $638f: $54
	ld   h, a                                        ; $6390: $67
	ld   d, d                                        ; $6391: $52
	ld   [hl], $89                                   ; $6392: $36 $89
	sbc  e                                           ; $6394: $9b
	db   $ec                                         ; $6395: $ec
	call z, Call_0ec_44a7                            ; $6396: $cc $a7 $44
	ld   d, a                                        ; $6399: $57
	ld   h, h                                        ; $639a: $64
	ld   b, l                                        ; $639b: $45
	ld   e, c                                        ; $639c: $59
	xor  $cb                                         ; $639d: $ee $cb
	call c, Call_0ec_5595                            ; $639f: $dc $95 $55
	ld   d, l                                        ; $63a2: $55
	inc  [hl]                                        ; $63a3: $34
	ld   [hl], a                                     ; $63a4: $77
	ld   h, a                                        ; $63a5: $67
	cp   l                                           ; $63a6: $bd
	rst  $38                                         ; $63a7: $ff
	rst  ToBoot                                         ; $63a8: $c7
	ld   b, h                                        ; $63a9: $44
	ld   a, b                                        ; $63aa: $78
	ld   h, d                                        ; $63ab: $62
	dec  h                                           ; $63ac: $25
	adc  b                                           ; $63ad: $88
	ld   l, b                                        ; $63ae: $68
	rst  JumpTable                                         ; $63af: $df
	call c, $56b7                                    ; $63b0: $dc $b7 $56
	add  a                                           ; $63b3: $87
	ld   b, c                                        ; $63b4: $41
	daa                                              ; $63b5: $27
	or   a                                           ; $63b6: $b7
	ld   l, b                                        ; $63b7: $68
	call z, $d8cf                                    ; $63b8: $cc $cf $d8
	inc  [hl]                                        ; $63bb: $34
	ld   d, [hl]                                     ; $63bc: $56
	ld   h, l                                        ; $63bd: $65
	ld   b, l                                        ; $63be: $45
	add  [hl]                                        ; $63bf: $86
	ld   a, c                                        ; $63c0: $79
	xor  $cd                                         ; $63c1: $ee $cd
	ret  z                                           ; $63c3: $c8

	inc  sp                                          ; $63c4: $33
	ld   l, c                                        ; $63c5: $69
	ld   [hl], h                                     ; $63c6: $74
	inc  h                                           ; $63c7: $24
	ld   a, b                                        ; $63c8: $78
	sbc  h                                           ; $63c9: $9c
	db   $db                                         ; $63ca: $db
	call Call_0ec_65a9                               ; $63cb: $cd $a9 $65
	ld   b, l                                        ; $63ce: $45
	ld   b, l                                        ; $63cf: $45
	ld   d, a                                        ; $63d0: $57
	sbc  b                                           ; $63d1: $98
	ld   a, c                                        ; $63d2: $79
	cp   d                                           ; $63d3: $ba
	rst  JumpTable                                         ; $63d4: $df
	rst  $20                                         ; $63d5: $e7
	ld   de, $955a                                   ; $63d6: $11 $5a $95
	inc  [hl]                                        ; $63d9: $34
	ld   h, a                                        ; $63da: $67
	adc  h                                           ; $63db: $8c
	call c, $baab                                    ; $63dc: $dc $ab $ba
	ld   [hl], h                                     ; $63df: $74
	ld   b, l                                        ; $63e0: $45
	ld   d, h                                        ; $63e1: $54
	ld   d, a                                        ; $63e2: $57
	sub  a                                           ; $63e3: $97
	ld   e, b                                        ; $63e4: $58
	db   $dd                                         ; $63e5: $dd
	cp   l                                           ; $63e6: $bd
	jp   c, Jump_0ec_5933                            ; $63e7: $da $33 $59

	add  h                                           ; $63ea: $84
	dec  [hl]                                        ; $63eb: $35
	adc  b                                           ; $63ec: $88
	ld   l, b                                        ; $63ed: $68
	db   $dd                                         ; $63ee: $dd
	cp   d                                           ; $63ef: $ba
	call z, $34a6                                    ; $63f0: $cc $a6 $34
	ld   h, [hl]                                     ; $63f3: $66
	ld   d, l                                        ; $63f4: $55
	adc  c                                           ; $63f5: $89
	ld   h, [hl]                                     ; $63f6: $66
	xor  l                                           ; $63f7: $ad
	call z, $84da                                    ; $63f8: $cc $da $84
	ld   b, [hl]                                     ; $63fb: $46
	ld   [hl], a                                     ; $63fc: $77
	ld   d, h                                        ; $63fd: $54
	ld   e, b                                        ; $63fe: $58
	sub  [hl]                                        ; $63ff: $96
	ld   a, h                                        ; $6400: $7c
	call c, $b7cb                                    ; $6401: $dc $cb $b7
	ld   d, l                                        ; $6404: $55
	halt                                             ; $6405: $76
	ld   b, e                                        ; $6406: $43
	ld   e, c                                        ; $6407: $59
	and  a                                           ; $6408: $a7
	ld   d, a                                        ; $6409: $57
	cp   [hl]                                        ; $640a: $be
	cp   $b7                                         ; $640b: $fe $b7
	inc  [hl]                                        ; $640d: $34
	ld   l, b                                        ; $640e: $68
	ld   [hl], h                                     ; $640f: $74
	inc  [hl]                                        ; $6410: $34
	adc  d                                           ; $6411: $8a
	adc  b                                           ; $6412: $88
	xor  e                                           ; $6413: $ab
	cp   l                                           ; $6414: $bd
	db   $eb                                         ; $6415: $eb
	ld   h, e                                        ; $6416: $63
	ld   d, a                                        ; $6417: $57
	add  [hl]                                        ; $6418: $86
	inc  [hl]                                        ; $6419: $34
	ld   a, d                                        ; $641a: $7a
	cp   b                                           ; $641b: $b8
	ld   l, b                                        ; $641c: $68
	cp   d                                           ; $641d: $ba
	adc  $c8                                         ; $641e: $ce $c8
	ld   b, e                                        ; $6420: $43
	ld   d, a                                        ; $6421: $57
	add  [hl]                                        ; $6422: $86
	ld   d, a                                        ; $6423: $57
	sub  a                                           ; $6424: $97
	ld   b, a                                        ; $6425: $47
	cp   [hl]                                        ; $6426: $be
	jp   z, Jump_0ec_74cb                            ; $6427: $ca $cb $74

	ld   l, c                                        ; $642a: $69
	add  h                                           ; $642b: $84
	inc  h                                           ; $642c: $24
	adc  e                                           ; $642d: $8b
	sub  l                                           ; $642e: $95
	ld   e, c                                        ; $642f: $59
	cp   e                                           ; $6430: $bb
	xor  $a5                                         ; $6431: $ee $a5
	ld   b, [hl]                                     ; $6433: $46
	ld   a, b                                        ; $6434: $78
	ld   d, h                                        ; $6435: $54
	ld   e, b                                        ; $6436: $58
	sbc  c                                           ; $6437: $99
	ld   d, [hl]                                     ; $6438: $56
	cp   h                                           ; $6439: $bc
	cp   h                                           ; $643a: $bc
	db   $db                                         ; $643b: $db
	ld   d, e                                        ; $643c: $53
	ld   e, c                                        ; $643d: $59
	sub  [hl]                                        ; $643e: $96
	ld   b, h                                        ; $643f: $44
	ld   a, d                                        ; $6440: $7a
	and  a                                           ; $6441: $a7
	ld   l, b                                        ; $6442: $68
	sbc  e                                           ; $6443: $9b
	xor  $b6                                         ; $6444: $ee $b6
	ld   b, l                                        ; $6446: $45
	ld   a, b                                        ; $6447: $78
	add  [hl]                                        ; $6448: $86
	ld   d, l                                        ; $6449: $55
	ld   a, b                                        ; $644a: $78
	add  a                                           ; $644b: $87
	adc  d                                           ; $644c: $8a
	call z, $86ba                                    ; $644d: $cc $ba $86
	ld   h, l                                        ; $6450: $65
	ld   a, b                                        ; $6451: $78
	ld   h, h                                        ; $6452: $64
	ld   c, b                                        ; $6453: $48
	xor  c                                           ; $6454: $a9
	ld   d, a                                        ; $6455: $57
	sbc  e                                           ; $6456: $9b
	sbc  h                                           ; $6457: $9c
	db   $eb                                         ; $6458: $eb
	ld   h, e                                        ; $6459: $63
	ld   l, d                                        ; $645a: $6a
	sub  [hl]                                        ; $645b: $96
	ld   b, h                                        ; $645c: $44
	ld   a, d                                        ; $645d: $7a
	add  l                                           ; $645e: $85
	ld   e, c                                        ; $645f: $59
	cp   d                                           ; $6460: $ba
	cp   [hl]                                        ; $6461: $be
	rst  $20                                         ; $6462: $e7
	inc  h                                           ; $6463: $24
	adc  d                                           ; $6464: $8a
	ld   [hl], h                                     ; $6465: $74
	ld   b, l                                        ; $6466: $45
	ld   a, c                                        ; $6467: $79
	adc  b                                           ; $6468: $88
	sbc  b                                           ; $6469: $98
	ld   a, d                                        ; $646a: $7a
	cp   $a5                                         ; $646b: $fe $a5
	ld   b, a                                        ; $646d: $47
	sbc  b                                           ; $646e: $98
	ld   h, l                                        ; $646f: $65
	ld   b, l                                        ; $6470: $45
	adc  d                                           ; $6471: $8a
	ld   [hl], l                                     ; $6472: $75
	ld   a, d                                        ; $6473: $7a
	cp   l                                           ; $6474: $bd
	db   $fd                                         ; $6475: $fd
	ld   [hl], e                                     ; $6476: $73
	ld   b, a                                        ; $6477: $47
	sbc  c                                           ; $6478: $99
	ld   h, e                                        ; $6479: $63
	ld   c, b                                        ; $647a: $48
	sbc  b                                           ; $647b: $98
	halt                                             ; $647c: $76
	xor  e                                           ; $647d: $ab
	xor  e                                           ; $647e: $ab
	db   $ec                                         ; $647f: $ec
	ld   h, h                                        ; $6480: $64
	ld   e, b                                        ; $6481: $58
	sub  a                                           ; $6482: $97
	ld   b, e                                        ; $6483: $43
	ld   e, c                                        ; $6484: $59
	and  a                                           ; $6485: $a7
	ld   b, [hl]                                     ; $6486: $46
	sbc  e                                           ; $6487: $9b
	call $33d8                                       ; $6488: $cd $d8 $33
	ld   a, e                                        ; $648b: $7b
	sub  l                                           ; $648c: $95
	inc  [hl]                                        ; $648d: $34
	ld   e, b                                        ; $648e: $58
	xor  b                                           ; $648f: $a8
	ld   [hl], a                                     ; $6490: $77
	adc  c                                           ; $6491: $89
	cp   l                                           ; $6492: $bd
	db   $eb                                         ; $6493: $eb
	ld   h, l                                        ; $6494: $65
	ld   l, c                                        ; $6495: $69

Call_0ec_6496:
	add  a                                           ; $6496: $87
	ld   b, e                                        ; $6497: $43
	ld   e, b                                        ; $6498: $58
	xor  c                                           ; $6499: $a9
	ld   d, [hl]                                     ; $649a: $56
	sbc  e                                           ; $649b: $9b
	adc  $d9                                         ; $649c: $ce $d9
	ld   d, l                                        ; $649e: $55
	ld   l, b                                        ; $649f: $68
	sub  a                                           ; $64a0: $97
	ld   d, e                                        ; $64a1: $53
	ld   e, c                                        ; $64a2: $59
	xor  b                                           ; $64a3: $a8
	ld   h, [hl]                                     ; $64a4: $66
	adc  c                                           ; $64a5: $89
	cp   h                                           ; $64a6: $bc
	db   $db                                         ; $64a7: $db
	ld   h, h                                        ; $64a8: $64
	ld   l, c                                        ; $64a9: $69
	sbc  b                                           ; $64aa: $98
	ld   d, e                                        ; $64ab: $53
	ld   d, [hl]                                     ; $64ac: $56
	sbc  c                                           ; $64ad: $99
	ld   h, [hl]                                     ; $64ae: $66
	adc  d                                           ; $64af: $8a
	cp   e                                           ; $64b0: $bb
	db   $ec                                         ; $64b1: $ec
	ld   [hl], h                                     ; $64b2: $74
	ld   e, b                                        ; $64b3: $58
	xor  c                                           ; $64b4: $a9
	ld   b, e                                        ; $64b5: $43
	ld   d, a                                        ; $64b6: $57
	sbc  b                                           ; $64b7: $98
	ld   h, [hl]                                     ; $64b8: $66
	sbc  d                                           ; $64b9: $9a
	sbc  d                                           ; $64ba: $9a
	db   $dd                                         ; $64bb: $dd
	and  l                                           ; $64bc: $a5
	ld   b, a                                        ; $64bd: $47
	xor  c                                           ; $64be: $a9
	ld   d, h                                        ; $64bf: $54
	ld   b, l                                        ; $64c0: $45
	sbc  c                                           ; $64c1: $99
	halt                                             ; $64c2: $76
	ld   a, c                                        ; $64c3: $79
	xor  e                                           ; $64c4: $ab
	db   $dd                                         ; $64c5: $dd
	and  l                                           ; $64c6: $a5
	ld   b, a                                        ; $64c7: $47
	xor  d                                           ; $64c8: $aa
	ld   h, e                                        ; $64c9: $63
	dec  [hl]                                        ; $64ca: $35
	sbc  d                                           ; $64cb: $9a
	add  l                                           ; $64cc: $85
	ld   a, c                                        ; $64cd: $79
	xor  b                                           ; $64ce: $a8
	cp   a                                           ; $64cf: $bf
	sub  $35                                         ; $64d0: $d6 $35
	sbc  d                                           ; $64d2: $9a
	add  [hl]                                        ; $64d3: $86
	ld   b, h                                        ; $64d4: $44
	ld   l, d                                        ; $64d5: $6a
	xor  b                                           ; $64d6: $a8
	ld   h, a                                        ; $64d7: $67
	xor  b                                           ; $64d8: $a8
	sbc  l                                           ; $64d9: $9d
	ei                                               ; $64da: $fb
	ld   b, e                                        ; $64db: $43
	ld   a, d                                        ; $64dc: $7a
	sub  a                                           ; $64dd: $97
	ld   d, h                                        ; $64de: $54
	ld   b, a                                        ; $64df: $47
	xor  c                                           ; $64e0: $a9
	ld   d, l                                        ; $64e1: $55
	adc  e                                           ; $64e2: $8b
	xor  e                                           ; $64e3: $ab
	call c, $6974                                    ; $64e4: $dc $74 $69
	and  a                                           ; $64e7: $a7
	ld   b, e                                        ; $64e8: $43
	ld   b, a                                        ; $64e9: $47
	sbc  d                                           ; $64ea: $9a
	add  l                                           ; $64eb: $85
	ld   l, c                                        ; $64ec: $69
	xor  e                                           ; $64ed: $ab
	sbc  $a6                                         ; $64ee: $de $a6
	ld   b, [hl]                                     ; $64f0: $46
	sbc  d                                           ; $64f1: $9a
	sub  [hl]                                        ; $64f2: $96
	inc  sp                                          ; $64f3: $33
	ld   l, d                                        ; $64f4: $6a
	cp   c                                           ; $64f5: $b9
	ld   h, [hl]                                     ; $64f6: $66
	sbc  b                                           ; $64f7: $98
	cp   a                                           ; $64f8: $bf
	ld   a, [$7b33]                                  ; $64f9: $fa $33 $7b
	and  [hl]                                        ; $64fc: $a6
	ld   b, h                                        ; $64fd: $44
	ld   d, [hl]                                     ; $64fe: $56
	xor  d                                           ; $64ff: $aa
	add  l                                           ; $6500: $85
	ld   e, b                                        ; $6501: $58
	xor  h                                           ; $6502: $ac
	db   $ed                                         ; $6503: $ed
	add  e                                           ; $6504: $83
	scf                                              ; $6505: $37
	cp   e                                           ; $6506: $bb
	sub  l                                           ; $6507: $95
	inc  [hl]                                        ; $6508: $34
	ld   a, e                                        ; $6509: $7b
	or   a                                           ; $650a: $b7
	ld   b, [hl]                                     ; $650b: $46
	sbc  c                                           ; $650c: $99
	cp   l                                           ; $650d: $bd
	ld   sp, hl                                      ; $650e: $f9
	ld   b, h                                        ; $650f: $44
	xor  e                                           ; $6510: $ab
	sub  [hl]                                        ; $6511: $96
	ld   d, h                                        ; $6512: $54
	ld   d, a                                        ; $6513: $57
	sbc  d                                           ; $6514: $9a
	ld   [hl], l                                     ; $6515: $75
	ld   a, d                                        ; $6516: $7a
	xor  e                                           ; $6517: $ab
	call z, Call_0ec_58a6                            ; $6518: $cc $a6 $58
	xor  b                                           ; $651b: $a8
	ld   h, h                                        ; $651c: $64
	ld   b, l                                        ; $651d: $45
	adc  d                                           ; $651e: $8a
	xor  b                                           ; $651f: $a8
	ld   d, [hl]                                     ; $6520: $56
	sbc  c                                           ; $6521: $99
	xor  h                                           ; $6522: $ac
	db   $db                                         ; $6523: $db
	ld   h, l                                        ; $6524: $65
	ld   l, b                                        ; $6525: $68
	xor  c                                           ; $6526: $a9
	ld   [hl], l                                     ; $6527: $75
	ld   b, l                                        ; $6528: $45
	adc  d                                           ; $6529: $8a
	add  [hl]                                        ; $652a: $86
	ld   l, c                                        ; $652b: $69
	xor  c                                           ; $652c: $a9
	cp   h                                           ; $652d: $bc
	or   a                                           ; $652e: $b7
	ld   d, [hl]                                     ; $652f: $56
	xor  d                                           ; $6530: $aa
	add  l                                           ; $6531: $85
	ld   d, l                                        ; $6532: $55
	ld   l, b                                        ; $6533: $68
	xor  d                                           ; $6534: $aa
	ld   h, l                                        ; $6535: $65
	ld   a, b                                        ; $6536: $78
	xor  h                                           ; $6537: $ac
	call c, Call_0ec_5984                            ; $6538: $dc $84 $59
	xor  c                                           ; $653b: $a9
	ld   [hl], l                                     ; $653c: $75
	ld   b, h                                        ; $653d: $44
	ld   a, d                                        ; $653e: $7a
	and  [hl]                                        ; $653f: $a6
	ld   d, a                                        ; $6540: $57
	cp   d                                           ; $6541: $ba
	xor  e                                           ; $6542: $ab
	cp   c                                           ; $6543: $b9
	halt                                             ; $6544: $76
	ld   a, c                                        ; $6545: $79
	ld   [hl], a                                     ; $6546: $77
	ld   h, [hl]                                     ; $6547: $66
	ld   h, a                                        ; $6548: $67
	adc  b                                           ; $6549: $88
	ld   h, l                                        ; $654a: $65
	ld   a, d                                        ; $654b: $7a
	xor  c                                           ; $654c: $a9
	sbc  d                                           ; $654d: $9a
	cp   c                                           ; $654e: $b9
	ld   h, [hl]                                     ; $654f: $66
	adc  d                                           ; $6550: $8a
	sub  a                                           ; $6551: $97
	ld   d, l                                        ; $6552: $55
	ld   d, [hl]                                     ; $6553: $56
	sbc  c                                           ; $6554: $99
	halt                                             ; $6555: $76
	ld   a, d                                        ; $6556: $7a
	cp   d                                           ; $6557: $ba
	cp   e                                           ; $6558: $bb
	and  a                                           ; $6559: $a7
	ld   l, b                                        ; $655a: $68
	sbc  b                                           ; $655b: $98
	halt                                             ; $655c: $76
	ld   d, l                                        ; $655d: $55
	ld   a, b                                        ; $655e: $78
	sbc  b                                           ; $655f: $98
	ld   d, [hl]                                     ; $6560: $56
	sbc  d                                           ; $6561: $9a
	xor  d                                           ; $6562: $aa
	res  0, l                                        ; $6563: $cb $85
	ld   l, d                                        ; $6565: $6a
	cp   b                                           ; $6566: $b8
	ld   h, l                                        ; $6567: $65
	ld   d, l                                        ; $6568: $55
	ld   l, c                                        ; $6569: $69
	and  a                                           ; $656a: $a7
	ld   d, [hl]                                     ; $656b: $56
	xor  e                                           ; $656c: $ab
	cp   e                                           ; $656d: $bb
	jp   z, $8a75                                    ; $656e: $ca $75 $8a

	and  a                                           ; $6571: $a7
	ld   d, l                                        ; $6572: $55
	ld   d, [hl]                                     ; $6573: $56
	ld   a, b                                        ; $6574: $78
	sub  a                                           ; $6575: $97
	ld   l, b                                        ; $6576: $68
	sbc  c                                           ; $6577: $99
	cp   e                                           ; $6578: $bb
	and  a                                           ; $6579: $a7
	ld   d, a                                        ; $657a: $57
	xor  e                                           ; $657b: $ab
	add  l                                           ; $657c: $85
	ld   d, [hl]                                     ; $657d: $56
	ld   h, a                                        ; $657e: $67
	adc  d                                           ; $657f: $8a
	add  l                                           ; $6580: $85
	ld   e, c                                        ; $6581: $59
	res  3, c                                        ; $6582: $cb $99
	cp   c                                           ; $6584: $b9
	adc  b                                           ; $6585: $88
	adc  b                                           ; $6586: $88
	halt                                             ; $6587: $76
	ld   h, [hl]                                     ; $6588: $66
	ld   h, [hl]                                     ; $6589: $66
	adc  d                                           ; $658a: $8a
	ld   [hl], l                                     ; $658b: $75
	ld   l, c                                        ; $658c: $69
	cp   e                                           ; $658d: $bb
	xor  d                                           ; $658e: $aa
	sbc  b                                           ; $658f: $98
	ld   a, b                                        ; $6590: $78
	sbc  c                                           ; $6591: $99
	halt                                             ; $6592: $76
	ld   h, [hl]                                     ; $6593: $66
	ld   h, [hl]                                     ; $6594: $66
	adc  c                                           ; $6595: $89
	add  l                                           ; $6596: $85
	ld   l, c                                        ; $6597: $69
	cp   d                                           ; $6598: $ba
	xor  e                                           ; $6599: $ab
	xor  c                                           ; $659a: $a9
	ld   h, a                                        ; $659b: $67
	xor  d                                           ; $659c: $aa
	add  [hl]                                        ; $659d: $86
	ld   h, l                                        ; $659e: $65
	ld   h, a                                        ; $659f: $67
	sbc  c                                           ; $65a0: $99
	ld   [hl], h                                     ; $65a1: $74
	ld   e, b                                        ; $65a2: $58
	cp   d                                           ; $65a3: $ba
	sbc  c                                           ; $65a4: $99
	sbc  c                                           ; $65a5: $99
	sbc  d                                           ; $65a6: $9a
	sbc  b                                           ; $65a7: $98
	ld   h, [hl]                                     ; $65a8: $66

Call_0ec_65a9:
	ld   [hl], a                                     ; $65a9: $77
	ld   h, [hl]                                     ; $65aa: $66
	ld   a, b                                        ; $65ab: $78
	add  [hl]                                        ; $65ac: $86
	ld   l, b                                        ; $65ad: $68
	cp   d                                           ; $65ae: $ba
	sbc  d                                           ; $65af: $9a
	xor  d                                           ; $65b0: $aa
	ld   [hl], a                                     ; $65b1: $77
	adc  c                                           ; $65b2: $89
	add  a                                           ; $65b3: $87
	ld   h, [hl]                                     ; $65b4: $66
	ld   h, [hl]                                     ; $65b5: $66
	ld   a, b                                        ; $65b6: $78
	sub  [hl]                                        ; $65b7: $96
	ld   d, [hl]                                     ; $65b8: $56
	sbc  e                                           ; $65b9: $9b
	cp   e                                           ; $65ba: $bb
	sbc  b                                           ; $65bb: $98
	ld   [hl], a                                     ; $65bc: $77
	sbc  c                                           ; $65bd: $99
	sub  a                                           ; $65be: $97
	ld   h, l                                        ; $65bf: $65
	ld   d, [hl]                                     ; $65c0: $56
	adc  c                                           ; $65c1: $89
	sub  a                                           ; $65c2: $97
	ld   d, [hl]                                     ; $65c3: $56
	sbc  d                                           ; $65c4: $9a
	xor  c                                           ; $65c5: $a9
	sbc  d                                           ; $65c6: $9a
	sbc  b                                           ; $65c7: $98
	ld   a, c                                        ; $65c8: $79
	sbc  c                                           ; $65c9: $99
	sub  a                                           ; $65ca: $97
	ld   d, l                                        ; $65cb: $55
	ld   l, b                                        ; $65cc: $68
	xor  c                                           ; $65cd: $a9
	ld   h, l                                        ; $65ce: $65
	ld   l, c                                        ; $65cf: $69
	cp   h                                           ; $65d0: $bc
	xor  c                                           ; $65d1: $a9
	sub  a                                           ; $65d2: $97
	adc  c                                           ; $65d3: $89
	xor  c                                           ; $65d4: $a9
	halt                                             ; $65d5: $76
	ld   d, l                                        ; $65d6: $55
	ld   l, b                                        ; $65d7: $68
	adc  c                                           ; $65d8: $89
	ld   [hl], l                                     ; $65d9: $75
	ld   l, c                                        ; $65da: $69
	cp   e                                           ; $65db: $bb
	xor  d                                           ; $65dc: $aa
	adc  b                                           ; $65dd: $88
	adc  c                                           ; $65de: $89
	xor  c                                           ; $65df: $a9
	ld   [hl], a                                     ; $65e0: $77
	ld   [hl], a                                     ; $65e1: $77
	ld   h, [hl]                                     ; $65e2: $66
	adc  c                                           ; $65e3: $89
	add  [hl]                                        ; $65e4: $86
	ld   d, [hl]                                     ; $65e5: $56
	xor  e                                           ; $65e6: $ab
	sbc  c                                           ; $65e7: $99
	sbc  c                                           ; $65e8: $99
	sbc  b                                           ; $65e9: $98
	adc  c                                           ; $65ea: $89
	sbc  b                                           ; $65eb: $98
	ld   [hl], a                                     ; $65ec: $77
	ld   h, l                                        ; $65ed: $65
	ld   l, b                                        ; $65ee: $68
	sbc  c                                           ; $65ef: $99
	ld   [hl], l                                     ; $65f0: $75
	ld   a, c                                        ; $65f1: $79
	xor  d                                           ; $65f2: $aa
	sbc  b                                           ; $65f3: $98
	sbc  c                                           ; $65f4: $99
	adc  c                                           ; $65f5: $89
	xor  c                                           ; $65f6: $a9
	halt                                             ; $65f7: $76
	ld   h, a                                        ; $65f8: $67
	ld   [hl], a                                     ; $65f9: $77
	ld   a, c                                        ; $65fa: $79
	sub  [hl]                                        ; $65fb: $96
	ld   d, a                                        ; $65fc: $57
	xor  e                                           ; $65fd: $ab
	xor  b                                           ; $65fe: $a8
	sbc  c                                           ; $65ff: $99
	sbc  c                                           ; $6600: $99
	sbc  c                                           ; $6601: $99
	sub  a                                           ; $6602: $97
	ld   h, [hl]                                     ; $6603: $66
	ld   [hl], a                                     ; $6604: $77
	ld   h, a                                        ; $6605: $67
	sbc  b                                           ; $6606: $98
	ld   [hl], l                                     ; $6607: $75
	ld   l, b                                        ; $6608: $68
	res  2, a                                        ; $6609: $cb $97
	adc  c                                           ; $660b: $89
	sbc  d                                           ; $660c: $9a
	xor  c                                           ; $660d: $a9
	halt                                             ; $660e: $76
	ld   [hl], a                                     ; $660f: $77
	ld   [hl], a                                     ; $6610: $77
	ld   a, c                                        ; $6611: $79
	sbc  b                                           ; $6612: $98
	ld   d, l                                        ; $6613: $55
	ld   a, d                                        ; $6614: $7a
	xor  c                                           ; $6615: $a9
	sbc  d                                           ; $6616: $9a
	xor  c                                           ; $6617: $a9
	adc  b                                           ; $6618: $88
	xor  c                                           ; $6619: $a9
	add  [hl]                                        ; $661a: $86
	ld   h, a                                        ; $661b: $67
	ld   h, [hl]                                     ; $661c: $66
	ld   a, b                                        ; $661d: $78
	add  a                                           ; $661e: $87
	ld   d, [hl]                                     ; $661f: $56
	sbc  d                                           ; $6620: $9a
	xor  d                                           ; $6621: $aa
	adc  b                                           ; $6622: $88
	adc  b                                           ; $6623: $88
	sbc  c                                           ; $6624: $99
	sbc  b                                           ; $6625: $98
	ld   [hl], a                                     ; $6626: $77
	ld   [hl], a                                     ; $6627: $77
	ld   [hl], a                                     ; $6628: $77
	adc  c                                           ; $6629: $89
	add  [hl]                                        ; $662a: $86
	ld   d, [hl]                                     ; $662b: $56
	adc  e                                           ; $662c: $8b
	cp   c                                           ; $662d: $b9
	adc  b                                           ; $662e: $88
	adc  d                                           ; $662f: $8a
	xor  c                                           ; $6630: $a9
	adc  b                                           ; $6631: $88
	ld   [hl], a                                     ; $6632: $77
	ld   [hl], a                                     ; $6633: $77
	ld   [hl], a                                     ; $6634: $77
	adc  b                                           ; $6635: $88
	add  [hl]                                        ; $6636: $86
	ld   d, [hl]                                     ; $6637: $56
	xor  h                                           ; $6638: $ac
	xor  b                                           ; $6639: $a8
	ld   a, b                                        ; $663a: $78
	sbc  b                                           ; $663b: $98
	sbc  d                                           ; $663c: $9a
	xor  b                                           ; $663d: $a8
	halt                                             ; $663e: $76
	ld   [hl], a                                     ; $663f: $77
	ld   [hl], a                                     ; $6640: $77
	adc  c                                           ; $6641: $89
	add  [hl]                                        ; $6642: $86
	ld   d, [hl]                                     ; $6643: $56
	sbc  d                                           ; $6644: $9a
	xor  c                                           ; $6645: $a9
	ld   a, b                                        ; $6646: $78
	adc  c                                           ; $6647: $89
	sbc  d                                           ; $6648: $9a
	sbc  b                                           ; $6649: $98
	ld   [hl], a                                     ; $664a: $77
	ld   [hl], a                                     ; $664b: $77
	ld   [hl], a                                     ; $664c: $77
	adc  b                                           ; $664d: $88
	add  [hl]                                        ; $664e: $86
	ld   d, [hl]                                     ; $664f: $56
	sbc  d                                           ; $6650: $9a
	xor  c                                           ; $6651: $a9
	adc  b                                           ; $6652: $88
	adc  b                                           ; $6653: $88
	xor  c                                           ; $6654: $a9
	sbc  b                                           ; $6655: $98
	ld   [hl], a                                     ; $6656: $77
	ld   [hl], a                                     ; $6657: $77

Call_0ec_6658:
	ld   [hl], a                                     ; $6658: $77
	ld   [hl], a                                     ; $6659: $77
	add  a                                           ; $665a: $87
	halt                                             ; $665b: $76
	ld   a, b                                        ; $665c: $78
	xor  d                                           ; $665d: $aa
	sub  a                                           ; $665e: $97
	adc  c                                           ; $665f: $89
	sbc  d                                           ; $6660: $9a
	sbc  c                                           ; $6661: $99
	sbc  b                                           ; $6662: $98
	ld   [hl], a                                     ; $6663: $77
	ld   [hl], a                                     ; $6664: $77
	ld   [hl], a                                     ; $6665: $77

Jump_0ec_6666:
	adc  b                                           ; $6666: $88
	halt                                             ; $6667: $76
	ld   h, a                                        ; $6668: $67
	xor  d                                           ; $6669: $aa
	sbc  b                                           ; $666a: $98
	ld   a, c                                        ; $666b: $79
	sbc  d                                           ; $666c: $9a
	xor  d                                           ; $666d: $aa
	sbc  c                                           ; $666e: $99
	halt                                             ; $666f: $76
	ld   [hl], a                                     ; $6670: $77
	ld   [hl], a                                     ; $6671: $77
	ld   a, b                                        ; $6672: $78
	add  a                                           ; $6673: $87
	ld   h, a                                        ; $6674: $67
	adc  d                                           ; $6675: $8a
	cp   c                                           ; $6676: $b9
	adc  b                                           ; $6677: $88
	adc  b                                           ; $6678: $88
	sbc  d                                           ; $6679: $9a
	sbc  c                                           ; $667a: $99
	ld   [hl], a                                     ; $667b: $77

Call_0ec_667c:
	ld   [hl], a                                     ; $667c: $77
	add  a                                           ; $667d: $87
	ld   [hl], a                                     ; $667e: $77
	adc  b                                           ; $667f: $88
	halt                                             ; $6680: $76
	ld   l, b                                        ; $6681: $68
	xor  c                                           ; $6682: $a9
	sub  a                                           ; $6683: $97
	adc  c                                           ; $6684: $89
	sbc  c                                           ; $6685: $99

Jump_0ec_6686:
	sbc  c                                           ; $6686: $99
	sbc  b                                           ; $6687: $98
	ld   [hl], a                                     ; $6688: $77
	ld   [hl], a                                     ; $6689: $77
	ld   [hl], a                                     ; $668a: $77
	ld   [hl], a                                     ; $668b: $77
	sbc  b                                           ; $668c: $98
	halt                                             ; $668d: $76
	ld   a, c                                        ; $668e: $79
	xor  c                                           ; $668f: $a9
	adc  b                                           ; $6690: $88
	adc  c                                           ; $6691: $89
	sbc  d                                           ; $6692: $9a
	sbc  b                                           ; $6693: $98
	add  a                                           ; $6694: $87
	ld   a, b                                        ; $6695: $78

Call_0ec_6696:
	ld   [hl], a                                     ; $6696: $77
	ld   [hl], a                                     ; $6697: $77
	ld   a, b                                        ; $6698: $78
	sbc  b                                           ; $6699: $98
	ld   [hl], a                                     ; $669a: $77
	ld   a, b                                        ; $669b: $78
	sbc  b                                           ; $669c: $98
	adc  b                                           ; $669d: $88
	adc  b                                           ; $669e: $88
	adc  c                                           ; $669f: $89
	sbc  b                                           ; $66a0: $98
	adc  b                                           ; $66a1: $88
	ld   a, b                                        ; $66a2: $78
	ld   [hl], a                                     ; $66a3: $77
	ld   [hl], a                                     ; $66a4: $77
	ld   a, b                                        ; $66a5: $78
	adc  b                                           ; $66a6: $88

Call_0ec_66a7:
	halt                                             ; $66a7: $76
	ld   a, c                                        ; $66a8: $79
	xor  d                                           ; $66a9: $aa
	add  a                                           ; $66aa: $87
	ld   a, b                                        ; $66ab: $78
	sbc  c                                           ; $66ac: $99
	adc  c                                           ; $66ad: $89
	add  a                                           ; $66ae: $87
	adc  b                                           ; $66af: $88
	add  a                                           ; $66b0: $87
	ld   [hl], a                                     ; $66b1: $77
	ld   a, b                                        ; $66b2: $78
	adc  b                                           ; $66b3: $88
	halt                                             ; $66b4: $76
	ld   a, b                                        ; $66b5: $78
	sbc  c                                           ; $66b6: $99
	add  a                                           ; $66b7: $87
	adc  b                                           ; $66b8: $88
	sbc  c                                           ; $66b9: $99
	sbc  c                                           ; $66ba: $99
	sbc  b                                           ; $66bb: $98
	adc  b                                           ; $66bc: $88
	add  a                                           ; $66bd: $87
	ld   [hl], a                                     ; $66be: $77
	ld   a, b                                        ; $66bf: $78
	adc  b                                           ; $66c0: $88
	halt                                             ; $66c1: $76
	ld   a, b                                        ; $66c2: $78
	sbc  c                                           ; $66c3: $99
	sbc  b                                           ; $66c4: $98
	adc  b                                           ; $66c5: $88
	adc  d                                           ; $66c6: $8a
	xor  b                                           ; $66c7: $a8
	sbc  b                                           ; $66c8: $98
	adc  b                                           ; $66c9: $88
	adc  b                                           ; $66ca: $88
	ld   [hl], a                                     ; $66cb: $77
	ld   [hl], a                                     ; $66cc: $77
	adc  b                                           ; $66cd: $88
	add  a                                           ; $66ce: $87
	ld   h, a                                        ; $66cf: $67
	sbc  d                                           ; $66d0: $9a
	sbc  b                                           ; $66d1: $98
	ld   a, b                                        ; $66d2: $78
	sbc  c                                           ; $66d3: $99
	sbc  c                                           ; $66d4: $99
	adc  b                                           ; $66d5: $88
	add  a                                           ; $66d6: $87
	adc  b                                           ; $66d7: $88
	add  a                                           ; $66d8: $87
	ld   [hl], a                                     ; $66d9: $77
	ld   [hl], a                                     ; $66da: $77
	adc  b                                           ; $66db: $88
	ld   [hl], a                                     ; $66dc: $77
	adc  c                                           ; $66dd: $89
	adc  b                                           ; $66de: $88
	adc  b                                           ; $66df: $88
	adc  c                                           ; $66e0: $89
	adc  b                                           ; $66e1: $88
	sbc  c                                           ; $66e2: $99
	sbc  c                                           ; $66e3: $99
	adc  b                                           ; $66e4: $88
	adc  b                                           ; $66e5: $88
	ld   [hl], a                                     ; $66e6: $77
	ld   [hl], a                                     ; $66e7: $77
	adc  b                                           ; $66e8: $88
	ld   [hl], a                                     ; $66e9: $77
	ld   [hl], a                                     ; $66ea: $77
	adc  c                                           ; $66eb: $89
	sbc  c                                           ; $66ec: $99
	adc  b                                           ; $66ed: $88
	adc  c                                           ; $66ee: $89
	sbc  b                                           ; $66ef: $98
	sbc  c                                           ; $66f0: $99
	adc  b                                           ; $66f1: $88
	adc  b                                           ; $66f2: $88
	adc  b                                           ; $66f3: $88
	ld   [hl], a                                     ; $66f4: $77
	ld   [hl], a                                     ; $66f5: $77
	adc  b                                           ; $66f6: $88
	ld   [hl], a                                     ; $66f7: $77
	ld   a, b                                        ; $66f8: $78
	adc  c                                           ; $66f9: $89
	adc  b                                           ; $66fa: $88
	adc  b                                           ; $66fb: $88
	adc  b                                           ; $66fc: $88
	adc  c                                           ; $66fd: $89
	sbc  c                                           ; $66fe: $99
	adc  b                                           ; $66ff: $88
	add  a                                           ; $6700: $87
	ld   [hl], a                                     ; $6701: $77
	ld   a, b                                        ; $6702: $78
	adc  b                                           ; $6703: $88
	ld   [hl], a                                     ; $6704: $77
	ld   [hl], a                                     ; $6705: $77
	adc  b                                           ; $6706: $88
	adc  b                                           ; $6707: $88
	adc  b                                           ; $6708: $88
	adc  c                                           ; $6709: $89
	sbc  c                                           ; $670a: $99
	adc  c                                           ; $670b: $89
	adc  b                                           ; $670c: $88
	adc  b                                           ; $670d: $88
	sbc  b                                           ; $670e: $98
	ld   [hl], a                                     ; $670f: $77
	ld   [hl], a                                     ; $6710: $77
	adc  b                                           ; $6711: $88
	add  a                                           ; $6712: $87
	ld   a, b                                        ; $6713: $78
	adc  b                                           ; $6714: $88
	adc  b                                           ; $6715: $88
	adc  b                                           ; $6716: $88
	adc  b                                           ; $6717: $88
	sbc  b                                           ; $6718: $98
	adc  c                                           ; $6719: $89
	adc  c                                           ; $671a: $89
	sbc  c                                           ; $671b: $99
	adc  b                                           ; $671c: $88
	ld   [hl], a                                     ; $671d: $77
	ld   [hl], a                                     ; $671e: $77
	ld   [hl], a                                     ; $671f: $77
	ld   [hl], a                                     ; $6720: $77
	adc  b                                           ; $6721: $88
	adc  b                                           ; $6722: $88
	adc  b                                           ; $6723: $88
	adc  b                                           ; $6724: $88
	adc  b                                           ; $6725: $88
	adc  b                                           ; $6726: $88
	adc  c                                           ; $6727: $89
	adc  b                                           ; $6728: $88
	adc  b                                           ; $6729: $88
	adc  b                                           ; $672a: $88
	add  a                                           ; $672b: $87
	ld   [hl], a                                     ; $672c: $77
	ld   [hl], a                                     ; $672d: $77
	adc  b                                           ; $672e: $88
	ld   [hl], a                                     ; $672f: $77
	adc  b                                           ; $6730: $88
	adc  b                                           ; $6731: $88
	adc  b                                           ; $6732: $88
	sbc  c                                           ; $6733: $99
	adc  b                                           ; $6734: $88
	adc  b                                           ; $6735: $88
	sbc  b                                           ; $6736: $98
	adc  b                                           ; $6737: $88
	adc  b                                           ; $6738: $88
	adc  b                                           ; $6739: $88
	ld   a, b                                        ; $673a: $78
	adc  b                                           ; $673b: $88
	ld   a, b                                        ; $673c: $78
	adc  b                                           ; $673d: $88
	add  a                                           ; $673e: $87
	adc  b                                           ; $673f: $88
	adc  b                                           ; $6740: $88
	adc  b                                           ; $6741: $88
	adc  b                                           ; $6742: $88
	adc  b                                           ; $6743: $88
	adc  c                                           ; $6744: $89
	sbc  b                                           ; $6745: $98
	adc  b                                           ; $6746: $88
	adc  b                                           ; $6747: $88
	adc  b                                           ; $6748: $88
	add  a                                           ; $6749: $87
	ld   a, b                                        ; $674a: $78
	adc  b                                           ; $674b: $88
	adc  b                                           ; $674c: $88
	ld   [hl], a                                     ; $674d: $77
	adc  b                                           ; $674e: $88
	adc  b                                           ; $674f: $88
	adc  b                                           ; $6750: $88
	adc  b                                           ; $6751: $88
	adc  c                                           ; $6752: $89
	sbc  c                                           ; $6753: $99
	adc  c                                           ; $6754: $89
	sbc  c                                           ; $6755: $99
	adc  b                                           ; $6756: $88
	ld   [hl], a                                     ; $6757: $77
	adc  b                                           ; $6758: $88
	adc  b                                           ; $6759: $88
	adc  b                                           ; $675a: $88
	adc  b                                           ; $675b: $88
	adc  b                                           ; $675c: $88
	adc  b                                           ; $675d: $88
	adc  b                                           ; $675e: $88
	ld   [hl], a                                     ; $675f: $77
	adc  c                                           ; $6760: $89
	adc  b                                           ; $6761: $88
	adc  b                                           ; $6762: $88
	sbc  b                                           ; $6763: $98
	sbc  c                                           ; $6764: $99
	adc  b                                           ; $6765: $88
	adc  b                                           ; $6766: $88
	ld   [hl], a                                     ; $6767: $77
	adc  b                                           ; $6768: $88
	adc  b                                           ; $6769: $88
	add  a                                           ; $676a: $87
	ld   a, b                                        ; $676b: $78
	adc  b                                           ; $676c: $88
	adc  b                                           ; $676d: $88
	adc  b                                           ; $676e: $88
	adc  b                                           ; $676f: $88
	adc  b                                           ; $6770: $88
	sbc  c                                           ; $6771: $99
	sbc  c                                           ; $6772: $99
	adc  b                                           ; $6773: $88
	adc  b                                           ; $6774: $88
	adc  b                                           ; $6775: $88
	add  a                                           ; $6776: $87
	ld   a, b                                        ; $6777: $78
	adc  b                                           ; $6778: $88
	adc  b                                           ; $6779: $88
	adc  b                                           ; $677a: $88
	adc  b                                           ; $677b: $88
	adc  b                                           ; $677c: $88
	adc  b                                           ; $677d: $88
	adc  c                                           ; $677e: $89
	sbc  c                                           ; $677f: $99
	adc  b                                           ; $6780: $88
	adc  b                                           ; $6781: $88
	sbc  c                                           ; $6782: $99
	adc  b                                           ; $6783: $88
	add  a                                           ; $6784: $87
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
	adc  c                                           ; $678f: $89
	adc  b                                           ; $6790: $88
	sbc  b                                           ; $6791: $98
	adc  b                                           ; $6792: $88
	adc  b                                           ; $6793: $88
	adc  b                                           ; $6794: $88
	adc  b                                           ; $6795: $88
	adc  b                                           ; $6796: $88
	adc  b                                           ; $6797: $88
	adc  b                                           ; $6798: $88

Jump_0ec_6799:
	adc  b                                           ; $6799: $88
	adc  b                                           ; $679a: $88
	adc  b                                           ; $679b: $88
	adc  b                                           ; $679c: $88
	adc  b                                           ; $679d: $88
	sbc  c                                           ; $679e: $99
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
	ld   de, $1111                                   ; $67e2: $11 $11 $11
	ld   de, $1111                                   ; $67e5: $11 $11 $11
	ld   de, $1111                                   ; $67e8: $11 $11 $11
	ld   de, $1111                                   ; $67eb: $11 $11 $11
	nop                                              ; $67ee: $00
	ld   c, b                                        ; $67ef: $48
	ld   de, $1111                                   ; $67f0: $11 $11 $11
	ld   de, $1111                                   ; $67f3: $11 $11 $11
	ld   de, $1111                                   ; $67f6: $11 $11 $11
	ld   de, $5413                                   ; $67f9: $11 $13 $54
	ld   d, h                                        ; $67fc: $54
	ld   d, h                                        ; $67fd: $54
	ld   b, c                                        ; $67fe: $41
	rra                                              ; $67ff: $1f
	rst  $38                                         ; $6800: $ff
	pop  af                                          ; $6801: $f1
	ld   de, $1711                                   ; $6802: $11 $11 $17
	or   c                                           ; $6805: $b1
	ld   de, $de1c                                   ; $6806: $11 $1c $de
	cp   h                                           ; $6809: $bc
	sbc  $b1                                         ; $680a: $de $b1
	ld   de, $1111                                   ; $680c: $11 $11 $11
	ld   de, $1111                                   ; $680f: $11 $11 $11
	ld   de, $1111                                   ; $6812: $11 $11 $11
	ld   de, $1111                                   ; $6815: $11 $11 $11
	ld   de, $5411                                   ; $6818: $11 $11 $54
	ld   b, h                                        ; $681b: $44
	or   a                                           ; $681c: $b7
	ld   de, $5454                                   ; $681d: $11 $54 $54
	ld   h, a                                        ; $6820: $67
	ld   [hl], d                                     ; $6821: $72
	ld   de, $1111                                   ; $6822: $11 $11 $11
	ld   de, $1112                                   ; $6825: $11 $12 $11
	ld   [de], a                                     ; $6828: $12
	ld   de, $1111                                   ; $6829: $11 $11 $11
	ld   h, [hl]                                     ; $682c: $66
	halt                                             ; $682d: $76
	add  a                                           ; $682e: $87
	ld   de, $8888                                   ; $682f: $11 $88 $88
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
	adc  c                                           ; $684e: $89
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
	adc  c                                           ; $6859: $89
	adc  b                                           ; $685a: $88
	adc  c                                           ; $685b: $89
	adc  b                                           ; $685c: $88
	sbc  b                                           ; $685d: $98
	sbc  b                                           ; $685e: $98
	adc  b                                           ; $685f: $88
	adc  b                                           ; $6860: $88
	adc  c                                           ; $6861: $89
	adc  b                                           ; $6862: $88
	sbc  b                                           ; $6863: $98
	adc  c                                           ; $6864: $89
	adc  b                                           ; $6865: $88
	adc  b                                           ; $6866: $88
	add  a                                           ; $6867: $87
	adc  b                                           ; $6868: $88
	adc  b                                           ; $6869: $88
	adc  b                                           ; $686a: $88
	adc  c                                           ; $686b: $89
	adc  c                                           ; $686c: $89
	adc  b                                           ; $686d: $88
	add  a                                           ; $686e: $87
	adc  b                                           ; $686f: $88
	add  a                                           ; $6870: $87
	add  a                                           ; $6871: $87
	adc  c                                           ; $6872: $89
	ld   a, b                                        ; $6873: $78
	adc  b                                           ; $6874: $88
	adc  b                                           ; $6875: $88
	adc  b                                           ; $6876: $88
	adc  b                                           ; $6877: $88
	adc  b                                           ; $6878: $88
	adc  b                                           ; $6879: $88
	adc  b                                           ; $687a: $88
	adc  b                                           ; $687b: $88
	adc  c                                           ; $687c: $89
	adc  b                                           ; $687d: $88
	sbc  b                                           ; $687e: $98
	sbc  b                                           ; $687f: $98
	adc  b                                           ; $6880: $88
	ld   a, c                                        ; $6881: $79
	adc  b                                           ; $6882: $88
	adc  b                                           ; $6883: $88
	adc  b                                           ; $6884: $88
	sbc  b                                           ; $6885: $98
	add  a                                           ; $6886: $87
	sbc  c                                           ; $6887: $99
	ld   a, b                                        ; $6888: $78
	sbc  b                                           ; $6889: $98
	ld   a, c                                        ; $688a: $79
	add  a                                           ; $688b: $87
	sbc  b                                           ; $688c: $98
	adc  b                                           ; $688d: $88
	adc  b                                           ; $688e: $88
	adc  b                                           ; $688f: $88
	adc  c                                           ; $6890: $89
	add  a                                           ; $6891: $87
	sbc  b                                           ; $6892: $98
	adc  c                                           ; $6893: $89
	ld   a, b                                        ; $6894: $78
	adc  b                                           ; $6895: $88
	adc  b                                           ; $6896: $88
	ld   [hl], a                                     ; $6897: $77
	and  a                                           ; $6898: $a7
	adc  c                                           ; $6899: $89
	adc  b                                           ; $689a: $88
	sbc  b                                           ; $689b: $98
	adc  b                                           ; $689c: $88
	adc  b                                           ; $689d: $88
	adc  c                                           ; $689e: $89
	adc  c                                           ; $689f: $89
	add  a                                           ; $68a0: $87
	adc  c                                           ; $68a1: $89
	ld   a, b                                        ; $68a2: $78
	sub  a                                           ; $68a3: $97
	adc  b                                           ; $68a4: $88
	sub  a                                           ; $68a5: $97
	sub  a                                           ; $68a6: $97
	adc  b                                           ; $68a7: $88
	ld   a, b                                        ; $68a8: $78
	ld   a, b                                        ; $68a9: $78
	ld   a, b                                        ; $68aa: $78
	add  a                                           ; $68ab: $87
	sub  a                                           ; $68ac: $97
	adc  b                                           ; $68ad: $88
	adc  c                                           ; $68ae: $89
	ld   a, c                                        ; $68af: $79
	add  a                                           ; $68b0: $87
	sub  a                                           ; $68b1: $97
	sub  a                                           ; $68b2: $97
	sub  a                                           ; $68b3: $97
	sbc  c                                           ; $68b4: $99
	ld   a, d                                        ; $68b5: $7a
	adc  b                                           ; $68b6: $88
	adc  c                                           ; $68b7: $89
	ld   l, c                                        ; $68b8: $69
	sub  a                                           ; $68b9: $97
	adc  c                                           ; $68ba: $89
	ld   [hl], a                                     ; $68bb: $77
	sub  a                                           ; $68bc: $97
	adc  b                                           ; $68bd: $88
	add  a                                           ; $68be: $87
	adc  c                                           ; $68bf: $89
	ld   l, b                                        ; $68c0: $68
	sub  [hl]                                        ; $68c1: $96
	ld   [hl], a                                     ; $68c2: $77
	ld   [hl], a                                     ; $68c3: $77
	adc  c                                           ; $68c4: $89
	adc  c                                           ; $68c5: $89
	sbc  d                                           ; $68c6: $9a
	sbc  c                                           ; $68c7: $99
	sbc  c                                           ; $68c8: $99
	adc  b                                           ; $68c9: $88
	add  a                                           ; $68ca: $87
	ld   h, [hl]                                     ; $68cb: $66
	halt                                             ; $68cc: $76
	ld   h, [hl]                                     ; $68cd: $66
	ld   [hl], a                                     ; $68ce: $77
	sbc  c                                           ; $68cf: $99
	xor  d                                           ; $68d0: $aa
	xor  e                                           ; $68d1: $ab
	xor  d                                           ; $68d2: $aa
	xor  d                                           ; $68d3: $aa
	add  a                                           ; $68d4: $87
	sub  l                                           ; $68d5: $95
	ld   d, a                                        ; $68d6: $57
	dec  [hl]                                        ; $68d7: $35
	ld   h, [hl]                                     ; $68d8: $66
	ld   a, b                                        ; $68d9: $78
	xor  c                                           ; $68da: $a9
	cp   e                                           ; $68db: $bb
	set  1, e                                        ; $68dc: $cb $cb
	sbc  d                                           ; $68de: $9a
	halt                                             ; $68df: $76
	ld   [hl], l                                     ; $68e0: $75
	ld   b, l                                        ; $68e1: $45
	dec  h                                           ; $68e2: $25
	ld   d, l                                        ; $68e3: $55
	ld   [hl], a                                     ; $68e4: $77
	xor  e                                           ; $68e5: $ab
	set  3, l                                        ; $68e6: $cb $dd
	call z, $85aa                                    ; $68e8: $cc $aa $85
	ld   h, [hl]                                     ; $68eb: $66
	inc  [hl]                                        ; $68ec: $34
	ld   b, d                                        ; $68ed: $42
	ld   b, h                                        ; $68ee: $44
	ld   b, a                                        ; $68ef: $47
	ld   a, b                                        ; $68f0: $78
	xor  e                                           ; $68f1: $ab
	adc  $cd                                         ; $68f2: $ce $cd
	db   $eb                                         ; $68f4: $eb
	ret                                              ; $68f5: $c9


	add  a                                           ; $68f6: $87
	dec  [hl]                                        ; $68f7: $35
	ld   d, c                                        ; $68f8: $51
	ld   d, d                                        ; $68f9: $52
	rla                                              ; $68fa: $17
	daa                                              ; $68fb: $27
	ld   [hl], a                                     ; $68fc: $77
	call z, $fcce                                    ; $68fd: $cc $ce $fc
	db   $fc                                         ; $6900: $fc
	cp   h                                           ; $6901: $bc
	ld   [hl], a                                     ; $6902: $77
	inc  [hl]                                        ; $6903: $34
	ld   d, c                                        ; $6904: $51
	ld   b, e                                        ; $6905: $43
	rla                                              ; $6906: $17
	ld   h, $96                                      ; $6907: $26 $96
	call z, $feed                                    ; $6909: $cc $ed $fe
	rst  $28                                         ; $690c: $ef
	cp   [hl]                                        ; $690d: $be
	add  a                                           ; $690e: $87
	inc  sp                                          ; $690f: $33
	ld   h, c                                        ; $6910: $61
	inc  sp                                          ; $6911: $33
	rla                                              ; $6912: $17
	inc  d                                           ; $6913: $14
	and  [hl]                                        ; $6914: $a6
	call $ffee                                       ; $6915: $cd $ee $ff
	rst  $38                                         ; $6918: $ff
	cp   [hl]                                        ; $6919: $be
	add  [hl]                                        ; $691a: $86
	ld   sp, $2471                                   ; $691b: $31 $71 $24
	rla                                              ; $691e: $17
	inc  b                                           ; $691f: $04
	or   l                                           ; $6920: $b5
	sbc  $ef                                         ; $6921: $de $ef
	rst  $38                                         ; $6923: $ff
	rst  $38                                         ; $6924: $ff
	adc  $85                                         ; $6925: $ce $85
	ld   sp, $3261                                   ; $6927: $31 $61 $32
	add  hl, de                                      ; $692a: $19
	ld   d, $a6                                      ; $692b: $16 $a6
	rst  $28                                         ; $692d: $ef
	rst  $38                                         ; $692e: $ff
	cp   $ff                                         ; $692f: $fe $ff
	adc  $65                                         ; $6931: $ce $65
	ld   [de], a                                     ; $6933: $12
	ld   sp, $1a71                                   ; $6934: $31 $71 $1a
	add  hl, de                                      ; $6937: $19
	sub  a                                           ; $6938: $97
	cp   $ff                                         ; $6939: $fe $ff
	rst  $38                                         ; $693b: $ff
	db   $fd                                         ; $693c: $fd
	db   $ed                                         ; $693d: $ed
	ld   b, l                                        ; $693e: $45
	dec  d                                           ; $693f: $15
	ld   de, $3691                                   ; $6940: $11 $91 $36
	ld   e, $6a                                      ; $6943: $1e $6a
	rst  $38                                         ; $6945: $ff
	rst  $38                                         ; $6946: $ff
	rst  $38                                         ; $6947: $ff
	ld   a, [$42f8]                                  ; $6948: $fa $f8 $42
	dec  d                                           ; $694b: $15
	inc  de                                          ; $694c: $13
	ld   hl, $4ec1                                   ; $694d: $21 $c1 $4e
	ccf                                              ; $6950: $3f
	cp   $ff                                         ; $6951: $fe $ff
	rst  $38                                         ; $6953: $ff
	db   $dd                                         ; $6954: $dd
	db   $f4                                         ; $6955: $f4
	ld   d, c                                        ; $6956: $51
	ld   sp, $111a                                   ; $6957: $31 $1a $11
	pop  bc                                          ; $695a: $c1
	ld   hl, sp+$6f                                  ; $695b: $f8 $6f
	rst  JumpTable                                         ; $695d: $df
	rst  $38                                         ; $695e: $ff
	rst  $38                                         ; $695f: $ff
	sbc  a                                           ; $6960: $9f
	and  e                                           ; $6961: $a3
	ld   b, c                                        ; $6962: $41
	ld   h, c                                        ; $6963: $61
	jr   @+$1d                                       ; $6964: $18 $1b

	ld   hl, $fff1                                   ; $6966: $21 $f1 $ff
	rst  JumpTable                                         ; $6969: $df
	db   $fd                                         ; $696a: $fd
	cp   $bf                                         ; $696b: $fe $bf
	ld   b, l                                        ; $696d: $45
	ld   de, $a141                                   ; $696e: $11 $41 $a1
	rra                                              ; $6971: $1f
	inc  e                                           ; $6972: $1c
	jp   nc, $fffd                                   ; $6973: $d2 $fd $ff

	rst  $38                                         ; $6976: $ff
	ld   hl, sp-$04                                  ; $6977: $f8 $fc
	dec  [hl]                                        ; $6979: $35
	rla                                              ; $697a: $17
	ld   de, $87c1                                   ; $697b: $11 $c1 $87
	rra                                              ; $697e: $1f
	inc  l                                           ; $697f: $2c
	ld   a, [$dfff]                                  ; $6980: $fa $ff $df
	ld   sp, hl                                      ; $6983: $f9
	db   $f4                                         ; $6984: $f4
	ld   h, c                                        ; $6985: $61
	ld   d, $18                                      ; $6986: $16 $18
	ld   de, $8ff1                                   ; $6988: $11 $f1 $8f
	rra                                              ; $698b: $1f
	xor  $ff                                         ; $698c: $ee $ff
	rst  $28                                         ; $698e: $ef
	adc  a                                           ; $698f: $8f
	jp   nz, $8161                                   ; $6990: $c2 $61 $81

	ld   e, $16                                      ; $6993: $1e $16
	and  c                                           ; $6995: $a1
	di                                               ; $6996: $f3
	cp   a                                           ; $6997: $bf
	xor  a                                           ; $6998: $af
	db   $fc                                         ; $6999: $fc
	rst  $38                                         ; $699a: $ff
	adc  a                                           ; $699b: $8f
	ld   b, [hl]                                     ; $699c: $46
	ld   de, $8181                                   ; $699d: $11 $81 $81
	rra                                              ; $69a0: $1f
	rla                                              ; $69a1: $17
	pop  af                                          ; $69a2: $f1
	cp   $df                                         ; $69a3: $fe $df
	cp   $f7                                         ; $69a5: $fe $f7
	db   $fc                                         ; $69a7: $fc
	ld   d, $18                                      ; $69a8: $16 $18
	ld   de, $89e1                                   ; $69aa: $11 $e1 $89
	rra                                              ; $69ad: $1f
	ld   a, [hl+]                                    ; $69ae: $2a
	ld   hl, sp-$01                                  ; $69af: $f8 $ff
	cp   a                                           ; $69b1: $bf
	rst  $20                                         ; $69b2: $e7
	ldh  a, [c]                                      ; $69b3: $f2
	ld   h, c                                        ; $69b4: $61
	rla                                              ; $69b5: $17
	ld   a, [de]                                     ; $69b6: $1a
	ld   de, $bff1                                   ; $69b7: $11 $f1 $bf
	rra                                              ; $69ba: $1f
	db   $dd                                         ; $69bb: $dd
	cp   $df                                         ; $69bc: $fe $df
	ld   e, a                                        ; $69be: $5f
	or   c                                           ; $69bf: $b1
	ld   d, c                                        ; $69c0: $51
	and  c                                           ; $69c1: $a1
	inc  e                                           ; $69c2: $1c
	ld   e, $31                                      ; $69c3: $1e $31
	pop  af                                          ; $69c5: $f1
	rst  $38                                         ; $69c6: $ff
	sbc  a                                           ; $69c7: $9f
	ld   a, [$9ffa]                                  ; $69c8: $fa $fa $9f
	ld   d, $14                                      ; $69cb: $16 $14
	ld   de, $1ff1                                   ; $69cd: $11 $f1 $1f
	rra                                              ; $69d0: $1f
	add  h                                           ; $69d1: $84
	ld   a, [$afff]                                  ; $69d2: $fa $ff $af
	db   $f4                                         ; $69d5: $f4
	db   $f4                                         ; $69d6: $f4
	ld   hl, $1b16                                   ; $69d7: $21 $16 $1b
	ld   de, $bff1                                   ; $69da: $11 $f1 $bf
	rra                                              ; $69dd: $1f
	db   $fc                                         ; $69de: $fc
	cp   $df                                         ; $69df: $fe $df
	ld   c, a                                        ; $69e1: $4f
	or   c                                           ; $69e2: $b1
	ld   d, c                                        ; $69e3: $51
	add  c                                           ; $69e4: $81
	ld   [hl], $1f                                   ; $69e5: $36 $1f
	ld   [de], a                                     ; $69e7: $12
	pop  af                                          ; $69e8: $f1
	rst  $38                                         ; $69e9: $ff
	sbc  a                                           ; $69ea: $9f
	ld   sp, hl                                      ; $69eb: $f9
	rst  $30                                         ; $69ec: $f7
	cp   a                                           ; $69ed: $bf
	dec  d                                           ; $69ee: $15
	ld   d, $11                                      ; $69ef: $16 $11
	and  c                                           ; $69f1: $a1
	ldh  a, [c]                                      ; $69f2: $f2
	rra                                              ; $69f3: $1f
	rra                                              ; $69f4: $1f
	ld   hl, sp-$01                                  ; $69f5: $f8 $ff
	adc  a                                           ; $69f7: $8f
	xor  b                                           ; $69f8: $a8
	pop  af                                          ; $69f9: $f1
	ld   b, c                                        ; $69fa: $41
	ld   d, c                                        ; $69fb: $51
	dec  de                                          ; $69fc: $1b
	inc  e                                           ; $69fd: $1c
	ld   d, c                                        ; $69fe: $51
	ldh  a, [c]                                      ; $69ff: $f2
	rst  JumpTable                                         ; $6a00: $df
	adc  a                                           ; $6a01: $8f
	rst  $30                                         ; $6a02: $f7
	db   $fc                                         ; $6a03: $fc
	ld   a, a                                        ; $6a04: $7f
	inc  de                                          ; $6a05: $13
	dec  d                                           ; $6a06: $15
	ld   de, $b7c1                                   ; $6a07: $11 $c1 $b7
	rra                                              ; $6a0a: $1f
	dec  sp                                          ; $6a0b: $3b
	ld   sp, hl                                      ; $6a0c: $f9
	rst  $38                                         ; $6a0d: $ff
	ld   a, a                                        ; $6a0e: $7f
	add  $f1                                         ; $6a0f: $c6 $f1
	ld   sp, $1c51                                   ; $6a11: $31 $51 $1c
	dec  e                                           ; $6a14: $1d
	ld   h, c                                        ; $6a15: $61
	di                                               ; $6a16: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a17: $cf
	adc  a                                           ; $6a18: $8f
	or   $fb                                         ; $6a19: $f6 $fb
	ld   l, a                                        ; $6a1b: $6f
	inc  de                                          ; $6a1c: $13
	inc  d                                           ; $6a1d: $14
	ld   de, $f391                                   ; $6a1e: $11 $91 $f3
	rra                                              ; $6a21: $1f
	ld   l, $f8                                      ; $6a22: $2e $f8
	rst  $38                                         ; $6a24: $ff
	ld   l, a                                        ; $6a25: $6f
	sbc  b                                           ; $6a26: $98
	pop  af                                          ; $6a27: $f1
	ld   hl, $2751                                   ; $6a28: $21 $51 $27
	rra                                              ; $6a2b: $1f
	ld   de, $fff1                                   ; $6a2c: $11 $f1 $ff
	ld   a, a                                        ; $6a2f: $7f
	or   $f6                                         ; $6a30: $f6 $f6
	cp   a                                           ; $6a32: $bf
	ld   [de], a                                     ; $6a33: $12
	dec  d                                           ; $6a34: $15
	rla                                              ; $6a35: $17
	ld   hl, $6ff1                                   ; $6a36: $21 $f1 $6f
	rrca                                             ; $6a39: $0f
	rst  $30                                         ; $6a3a: $f7
	rst  $38                                         ; $6a3b: $ff
	adc  a                                           ; $6a3c: $8f
	ld   a, $c1                                      ; $6a3d: $3e $c1
	ld   de, $c131                                   ; $6a3f: $11 $31 $c1
	rra                                              ; $6a42: $1f
	inc  e                                           ; $6a43: $1c
	pop  af                                          ; $6a44: $f1
	rst  $38                                         ; $6a45: $ff
	adc  a                                           ; $6a46: $8f
	cp   e                                           ; $6a47: $bb
	pop  af                                          ; $6a48: $f1
	rst  $30                                         ; $6a49: $f7
	ld   de, $1f31                                   ; $6a4a: $11 $31 $1f
	ld   de, $fcf1                                   ; $6a4d: $11 $f1 $fc
	ld   l, a                                        ; $6a50: $6f
	call c, $fff7                                    ; $6a51: $dc $f7 $ff
	rra                                              ; $6a54: $1f
	ld   de, $1115                                   ; $6a55: $11 $15 $11
	pop  de                                          ; $6a58: $d1
	ret  z                                           ; $6a59: $c8

	rra                                              ; $6a5a: $1f
	ld   l, h                                        ; $6a5b: $6c
	ld   a, [$4fff]                                  ; $6a5c: $fa $ff $4f
	or   l                                           ; $6a5f: $b5
	pop  af                                          ; $6a60: $f1
	ld   de, $6551                                   ; $6a61: $11 $51 $65
	rra                                              ; $6a64: $1f
	dec  d                                           ; $6a65: $15
	ldh  a, [c]                                      ; $6a66: $f2
	rst  $38                                         ; $6a67: $ff
	ld   a, a                                        ; $6a68: $7f
	or   $f3                                         ; $6a69: $f6 $f3
	call z, $3111                                    ; $6a6b: $cc $11 $31
	rra                                              ; $6a6e: $1f
	ld   de, $fff1                                   ; $6a6f: $11 $f1 $ff
	ld   c, a                                        ; $6a72: $4f
	ld   a, [$dff8]                                  ; $6a73: $fa $f8 $df
	rra                                              ; $6a76: $1f
	ld   sp, $1116                                   ; $6a77: $31 $16 $11
	pop  de                                          ; $6a7a: $d1
	or   $1f                                         ; $6a7b: $f6 $1f
	ld   l, l                                        ; $6a7d: $6d
	ld   a, [$4fff]                                  ; $6a7e: $fa $ff $4f
	or   l                                           ; $6a81: $b5
	pop  af                                          ; $6a82: $f1
	ld   [de], a                                     ; $6a83: $12
	ld   b, c                                        ; $6a84: $41
	pop  bc                                          ; $6a85: $c1
	rra                                              ; $6a86: $1f
	dec  de                                          ; $6a87: $1b
	db   $f4                                         ; $6a88: $f4
	rst  $38                                         ; $6a89: $ff
	sbc  a                                           ; $6a8a: $9f
	jp   hl                                          ; $6a8b: $e9


	pop  af                                          ; $6a8c: $f1
	rst  $10                                         ; $6a8d: $d7
	ld   de, $1f61                                   ; $6a8e: $11 $61 $1f
	add  hl, de                                      ; $6a91: $19
	pop  de                                          ; $6a92: $d1
	ld   sp, hl                                      ; $6a93: $f9
	cp   a                                           ; $6a94: $bf
	cp   [hl]                                        ; $6a95: $be
	db   $f4                                         ; $6a96: $f4
	db   $fd                                         ; $6a97: $fd
	cpl                                              ; $6a98: $2f
	ld   de, $1915                                   ; $6a99: $11 $15 $19
	ld   b, c                                        ; $6a9c: $41
	pop  af                                          ; $6a9d: $f1
	adc  a                                           ; $6a9e: $8f
	ld   c, a                                        ; $6a9f: $4f
	ld   hl, sp-$01                                  ; $6aa0: $f8 $ff
	ld   l, a                                        ; $6aa2: $6f
	ld   a, [hl-]                                    ; $6aa3: $3a
	add  c                                           ; $6aa4: $81
	ld   d, $11                                      ; $6aa5: $16 $11
	pop  af                                          ; $6aa7: $f1
	ld   l, a                                        ; $6aa8: $6f
	rra                                              ; $6aa9: $1f

jr_0ec_6aaa:
	xor  c                                           ; $6aaa: $a9
	db   $fc                                         ; $6aab: $fc
	rst  $28                                         ; $6aac: $ef
	ld   e, a                                        ; $6aad: $5f
	pop  af                                          ; $6aae: $f1
	pop  hl                                          ; $6aaf: $e1
	ld   [de], a                                     ; $6ab0: $12
	ld   h, c                                        ; $6ab1: $61
	sub  l                                           ; $6ab2: $95
	rra                                              ; $6ab3: $1f
	jr   jr_0ec_6aaa                                 ; $6ab4: $18 $f4

	rst  $38                                         ; $6ab6: $ff
	adc  a                                           ; $6ab7: $8f
	or   $f3                                         ; $6ab8: $f6 $f3
	xor  b                                           ; $6aba: $a8
	ld   de, $1f61                                   ; $6abb: $11 $61 $1f
	add  hl, de                                      ; $6abe: $19
	pop  hl                                          ; $6abf: $e1
	ld   hl, sp-$41                                  ; $6ac0: $f8 $bf
	adc  $f5                                         ; $6ac2: $ce $f5
	cp   $2d                                         ; $6ac4: $fe $2d
	ld   de, $1b24                                   ; $6ac6: $11 $24 $1b
	ld   de, $cff1                                   ; $6ac9: $11 $f1 $cf
	ld   c, a                                        ; $6acc: $4f
	ld   sp, hl                                      ; $6acd: $f9
	db   $fd                                         ; $6ace: $fd
	adc  a                                           ; $6acf: $8f
	dec  de                                          ; $6ad0: $1b
	ld   d, c                                        ; $6ad1: $51
	rla                                              ; $6ad2: $17
	ld   de, $f8f1                                   ; $6ad3: $11 $f1 $f8
	rra                                              ; $6ad6: $1f
	ld   e, a                                        ; $6ad7: $5f
	ld   a, [$4fff]                                  ; $6ad8: $fa $ff $4f
	add  l                                           ; $6adb: $85
	or   c                                           ; $6adc: $b1
	inc  d                                           ; $6add: $14
	ld   de, $1ff1                                   ; $6ade: $11 $f1 $1f
	rra                                              ; $6ae1: $1f

jr_0ec_6ae2:
	rst  $20                                         ; $6ae2: $e7
	cp   $bf                                         ; $6ae3: $fe $bf
	ld   a, l                                        ; $6ae5: $7d
	pop  af                                          ; $6ae6: $f1
	pop  bc                                          ; $6ae7: $c1
	ld   [de], a                                     ; $6ae8: $12
	ld   d, c                                        ; $6ae9: $51
	sub  l                                           ; $6aea: $95
	rra                                              ; $6aeb: $1f
	jr   jr_0ec_6ae2                                 ; $6aec: $18 $f4

	rst  $38                                         ; $6aee: $ff
	adc  a                                           ; $6aef: $8f
	or   $f3                                         ; $6af0: $f6 $f3
	sub  [hl]                                        ; $6af2: $96
	ld   de, $1f81                                   ; $6af3: $11 $81 $1f
	rra                                              ; $6af6: $1f
	sub  c                                           ; $6af7: $91
	rst  $30                                         ; $6af8: $f7
	rst  $38                                         ; $6af9: $ff
	xor  a                                           ; $6afa: $af
	db   $f4                                         ; $6afb: $f4
	ld   hl, sp+$49                                  ; $6afc: $f8 $49
	ld   de, $1f61                                   ; $6afe: $11 $61 $1f
	inc  de                                          ; $6b01: $13
	pop  af                                          ; $6b02: $f1
	db   $fd                                         ; $6b03: $fd
	xor  a                                           ; $6b04: $af
	db   $fc                                         ; $6b05: $fc
	rst  $30                                         ; $6b06: $f7
	sbc  $2a                                         ; $6b07: $de $2a
	ld   de, $1e33                                   ; $6b09: $11 $33 $1e
	ld   de, $fff1                                   ; $6b0c: $11 $f1 $ff
	adc  a                                           ; $6b0f: $8f
	ei                                               ; $6b10: $fb
	ei                                               ; $6b11: $fb
	sbc  a                                           ; $6b12: $9f
	ld   a, [hl+]                                    ; $6b13: $2a
	ld   hl, $1617                                   ; $6b14: $21 $17 $16
	sub  c                                           ; $6b17: $91
	pop  af                                          ; $6b18: $f1
	ld   a, a                                        ; $6b19: $7f
	ld   l, a                                        ; $6b1a: $6f
	ld   a, [$6fff]                                  ; $6b1b: $fa $ff $6f
	ld   c, b                                        ; $6b1e: $48
	ld   d, c                                        ; $6b1f: $51
	rla                                              ; $6b20: $17
	ld   de, $faf1                                   ; $6b21: $11 $f1 $fa
	rra                                              ; $6b24: $1f
	ld   a, a                                        ; $6b25: $7f
	ei                                               ; $6b26: $fb
	rst  $38                                         ; $6b27: $ff
	ld   e, a                                        ; $6b28: $5f
	ld   [hl], l                                     ; $6b29: $75
	add  c                                           ; $6b2a: $81
	ld   d, $11                                      ; $6b2b: $16 $11
	pop  af                                          ; $6b2d: $f1
	adc  a                                           ; $6b2e: $8f
	rra                                              ; $6b2f: $1f
	cp   l                                           ; $6b30: $bd
	db   $fd                                         ; $6b31: $fd
	rst  $38                                         ; $6b32: $ff
	ld   l, a                                        ; $6b33: $6f
	or   e                                           ; $6b34: $b3
	sub  c                                           ; $6b35: $91
	dec  d                                           ; $6b36: $15
	ld   bc, $1ff1                                   ; $6b37: $01 $f1 $1f
	rra                                              ; $6b3a: $1f
	ld   hl, sp-$01                                  ; $6b3b: $f8 $ff
	cp   a                                           ; $6b3d: $bf
	sbc  e                                           ; $6b3e: $9b
	ldh  a, [c]                                      ; $6b3f: $f2
	and  c                                           ; $6b40: $a1
	ld   [de], a                                     ; $6b41: $12
	ld   b, c                                        ; $6b42: $41
	pop  bc                                          ; $6b43: $c1
	rra                                              ; $6b44: $1f
	dec  e                                           ; $6b45: $1d
	or   $ff                                         ; $6b46: $f6 $ff
	xor  a                                           ; $6b48: $af
	ret  z                                           ; $6b49: $c8

	di                                               ; $6b4a: $f3
	sub  d                                           ; $6b4b: $92
	ld   de, $7871                                   ; $6b4c: $11 $71 $78
	rra                                              ; $6b4f: $1f
	daa                                              ; $6b50: $27
	or   $ff                                         ; $6b51: $f6 $ff
	sbc  a                                           ; $6b53: $9f
	push af                                          ; $6b54: $f5
	db   $f4                                         ; $6b55: $f4
	ld   [hl], l                                     ; $6b56: $75
	ld   de, $1f71                                   ; $6b57: $11 $71 $1f
	rra                                              ; $6b5a: $1f
	and  c                                           ; $6b5b: $a1
	ld   sp, hl                                      ; $6b5c: $f9
	rst  $28                                         ; $6b5d: $ef
	cp   a                                           ; $6b5e: $bf
	push af                                          ; $6b5f: $f5
	ld   hl, sp+$47                                  ; $6b60: $f8 $47
	ld   de, $1f61                                   ; $6b62: $11 $61 $1f
	dec  d                                           ; $6b65: $15
	pop  af                                          ; $6b66: $f1
	db   $fd                                         ; $6b67: $fd
	sbc  a                                           ; $6b68: $9f
	db   $eb                                         ; $6b69: $eb
	rst  $30                                         ; $6b6a: $f7
	call z, $1138                                    ; $6b6b: $cc $38 $11
	inc  h                                           ; $6b6e: $24
	rra                                              ; $6b6f: $1f
	ld   de, $eff1                                   ; $6b70: $11 $f1 $ef
	ld   a, a                                        ; $6b73: $7f
	ld   sp, hl                                      ; $6b74: $f9
	ei                                               ; $6b75: $fb
	ld   a, a                                        ; $6b76: $7f
	jr   c, jr_0ec_6b9a                              ; $6b77: $38 $21

	rla                                              ; $6b79: $17
	ld   d, $a1                                      ; $6b7a: $16 $a1
	di                                               ; $6b7c: $f3
	ld   l, a                                        ; $6b7d: $6f
	ld   a, a                                        ; $6b7e: $7f
	ld   a, [$4fff]                                  ; $6b7f: $fa $ff $4f
	ld   h, l                                        ; $6b82: $65
	ld   d, c                                        ; $6b83: $51
	jr   jr_0ec_6b97                                 ; $6b84: $18 $11

	pop  af                                          ; $6b86: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b87: $cf
	rra                                              ; $6b88: $1f
	cp   e                                           ; $6b89: $bb
	db   $fc                                         ; $6b8a: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b8b: $cf
	ld   e, l                                        ; $6b8c: $5d
	or   e                                           ; $6b8d: $b3
	ld   [hl], c                                     ; $6b8e: $71
	inc  d                                           ; $6b8f: $14
	ld   hl, $1ff1                                   ; $6b90: $21 $f1 $1f
	rra                                              ; $6b93: $1f
	rst  $30                                         ; $6b94: $f7
	rst  $38                                         ; $6b95: $ff
	adc  a                                           ; $6b96: $8f

jr_0ec_6b97:
	or   a                                           ; $6b97: $b7
	di                                               ; $6b98: $f3
	ld   [hl], e                                     ; $6b99: $73

jr_0ec_6b9a:
	ld   de, $5c91                                   ; $6b9a: $11 $91 $5c
	rra                                              ; $6b9d: $1f
	ld   d, h                                        ; $6b9e: $54
	rst  $30                                         ; $6b9f: $f7
	rst  $38                                         ; $6ba0: $ff
	sbc  a                                           ; $6ba1: $9f
	db   $f4                                         ; $6ba2: $f4
	rst  $30                                         ; $6ba3: $f7
	ld   b, [hl]                                     ; $6ba4: $46
	ld   de, $1f71                                   ; $6ba5: $11 $71 $1f
	inc  de                                          ; $6ba8: $13
	pop  af                                          ; $6ba9: $f1
	rst  $38                                         ; $6baa: $ff
	adc  a                                           ; $6bab: $8f
	ld   a, [$9ef9]                                  ; $6bac: $fa $f9 $9e
	scf                                              ; $6baf: $37
	ld   hl, $1819                                   ; $6bb0: $21 $19 $18
	and  c                                           ; $6bb3: $a1
	db   $f4                                         ; $6bb4: $f4
	ld   l, a                                        ; $6bb5: $6f
	adc  a                                           ; $6bb6: $8f
	ld   sp, hl                                      ; $6bb7: $f9
	rst  $38                                         ; $6bb8: $ff
	ld   c, a                                        ; $6bb9: $4f
	ld   [hl], l                                     ; $6bba: $75
	ld   h, c                                        ; $6bbb: $61
	rla                                              ; $6bbc: $17
	ld   de, $3ff1                                   ; $6bbd: $11 $f1 $3f
	rra                                              ; $6bc0: $1f
	rst  $30                                         ; $6bc1: $f7
	rst  $38                                         ; $6bc2: $ff
	adc  a                                           ; $6bc3: $8f
	and  a                                           ; $6bc4: $a7
	db   $e3                                         ; $6bc5: $e3
	ld   [hl], e                                     ; $6bc6: $73
	ld   de, $5da1                                   ; $6bc7: $11 $a1 $5d
	rra                                              ; $6bca: $1f
	sub  d                                           ; $6bcb: $92
	ld   a, [$addf]                                  ; $6bcc: $fa $df $ad
	db   $f4                                         ; $6bcf: $f4
	reti                                             ; $6bd0: $d9


	ld   b, [hl]                                     ; $6bd1: $46
	ld   de, $1f54                                   ; $6bd2: $11 $54 $1f
	ld   de, $eff1                                   ; $6bd5: $11 $f1 $ef
	ld   l, a                                        ; $6bd8: $6f
	rst  $30                                         ; $6bd9: $f7
	db   $fc                                         ; $6bda: $fc
	ld   l, a                                        ; $6bdb: $6f
	ld   b, [hl]                                     ; $6bdc: $46
	ld   b, c                                        ; $6bdd: $41
	dec  de                                          ; $6bde: $1b
	ld   de, $eff1                                   ; $6bdf: $11 $f1 $ef
	rra                                              ; $6be2: $1f
	jp   z, $affc                                    ; $6be3: $ca $fc $af

	ld   l, e                                        ; $6be6: $6b
	or   h                                           ; $6be7: $b4
	ld   h, d                                        ; $6be8: $62
	ld   [de], a                                     ; $6be9: $12
	sub  c                                           ; $6bea: $91
	add  $1f                                         ; $6beb: $c6 $1f
	scf                                              ; $6bed: $37
	rst  $30                                         ; $6bee: $f7
	rst  $38                                         ; $6bef: $ff
	adc  a                                           ; $6bf0: $8f
	db   $f4                                         ; $6bf1: $f4
	rst  $30                                         ; $6bf2: $f7
	ld   d, l                                        ; $6bf3: $55
	ld   de, $1f81                                   ; $6bf4: $11 $81 $1f
	dec  d                                           ; $6bf7: $15
	pop  af                                          ; $6bf8: $f1
	rst  $38                                         ; $6bf9: $ff
	ld   a, a                                        ; $6bfa: $7f
	ld   hl, sp-$07                                  ; $6bfb: $f8 $f9
	sbc  [hl]                                        ; $6bfd: $9e
	ld   d, [hl]                                     ; $6bfe: $56
	ld   sp, $151b                                   ; $6bff: $31 $1b $15
	pop  hl                                          ; $6c02: $e1
	ld   sp, hl                                      ; $6c03: $f9
	cpl                                              ; $6c04: $2f
	cp   e                                           ; $6c05: $bb
	ei                                               ; $6c06: $fb
	rst  JumpTable                                         ; $6c07: $df
	ld   e, l                                        ; $6c08: $5d
	sub  l                                           ; $6c09: $95
	ld   h, d                                        ; $6c0a: $62
	dec  d                                           ; $6c0b: $15
	ld   d, c                                        ; $6c0c: $51
	pop  af                                          ; $6c0d: $f1
	rra                                              ; $6c0e: $1f
	dec  e                                           ; $6c0f: $1d
	rst  $30                                         ; $6c10: $f7
	rst  $38                                         ; $6c11: $ff
	adc  a                                           ; $6c12: $8f
	add  $d6                                         ; $6c13: $c6 $d6
	ld   h, h                                        ; $6c15: $64
	ld   de, $1fa1                                   ; $6c16: $11 $a1 $1f
	dec  e                                           ; $6c19: $1d
	pop  af                                          ; $6c1a: $f1
	db   $fd                                         ; $6c1b: $fd
	xor  a                                           ; $6c1c: $af
	ld   [$aaf7], a                                  ; $6c1d: $ea $f7 $aa
	ld   d, [hl]                                     ; $6c20: $56
	ld   hl, $1d27                                   ; $6c21: $21 $27 $1d
	ld   b, c                                        ; $6c24: $41
	di                                               ; $6c25: $f3
	sbc  a                                           ; $6c26: $9f
	adc  a                                           ; $6c27: $8f
	ld   sp, hl                                      ; $6c28: $f9
	cp   $6d                                         ; $6c29: $fe $6d
	ld   h, [hl]                                     ; $6c2b: $66
	ld   sp, $1119                                   ; $6c2c: $31 $19 $11
	pop  af                                          ; $6c2f: $f1
	xor  a                                           ; $6c30: $af
	rra                                              ; $6c31: $1f
	ld   a, [$affe]                                  ; $6c32: $fa $fe $af
	sbc  d                                           ; $6c35: $9a
	and  [hl]                                        ; $6c36: $a6
	ld   d, c                                        ; $6c37: $51
	ld   [de], a                                     ; $6c38: $12
	ld   [hl], c                                     ; $6c39: $71
	call nc, $391f                                   ; $6c3a: $d4 $1f $39
	ld   hl, sp-$01                                  ; $6c3d: $f8 $ff
	xor  a                                           ; $6c3f: $af
	rst  $20                                         ; $6c40: $e7
	or   a                                           ; $6c41: $b7
	ld   h, d                                        ; $6c42: $62
	ld   de, $1f81                                   ; $6c43: $11 $81 $1f
	dec  e                                           ; $6c46: $1d
	jp   nc, $bffc                                   ; $6c47: $d2 $fc $bf

	call z, $a9f8                                    ; $6c4a: $cc $f8 $a9
	ld   h, h                                        ; $6c4d: $64
	ld   de, $1e34                                   ; $6c4e: $11 $34 $1e
	ld   de, $cff2                                   ; $6c51: $11 $f2 $cf
	sbc  a                                           ; $6c54: $9f
	ld   a, [$8afc]                                  ; $6c55: $fa $fc $8a
	ld   h, l                                        ; $6c58: $65
	ld   hl, $1318                                   ; $6c59: $21 $18 $13
	or   c                                           ; $6c5c: $b1
	ld   a, [$cb3f]                                  ; $6c5d: $fa $3f $cb
	ei                                               ; $6c60: $fb
	rst  JumpTable                                         ; $6c61: $df
	adc  e                                           ; $6c62: $8b
	add  [hl]                                        ; $6c63: $86
	ld   sp, $1115                                   ; $6c64: $31 $15 $11
	pop  af                                          ; $6c67: $f1
	ld   c, a                                        ; $6c68: $4f
	rra                                              ; $6c69: $1f
	ld   sp, hl                                      ; $6c6a: $f9
	rst  $38                                         ; $6c6b: $ff
	sbc  a                                           ; $6c6c: $9f
	xor  c                                           ; $6c6d: $a9
	and  [hl]                                        ; $6c6e: $a6
	ld   b, d                                        ; $6c6f: $42
	ld   de, $8761                                   ; $6c70: $11 $61 $87
	rra                                              ; $6c73: $1f
	ld   h, [hl]                                     ; $6c74: $66
	ld   a, [$beef]                                  ; $6c75: $fa $ef $be
	rst  $20                                         ; $6c78: $e7
	xor  b                                           ; $6c79: $a8
	ld   d, d                                        ; $6c7a: $52
	ld   de, $1f71                                   ; $6c7b: $11 $71 $1f
	add  hl, de                                      ; $6c7e: $19
	pop  af                                          ; $6c7f: $f1
	rst  $38                                         ; $6c80: $ff
	sbc  a                                           ; $6c81: $9f
	ei                                               ; $6c82: $fb
	ld   sp, hl                                      ; $6c83: $f9
	sbc  c                                           ; $6c84: $99
	ld   [hl], e                                     ; $6c85: $73
	ld   hl, $1b25                                   ; $6c86: $21 $25 $1b
	ld   b, c                                        ; $6c89: $41
	db   $f4                                         ; $6c8a: $f4
	adc  a                                           ; $6c8b: $8f
	sbc  a                                           ; $6c8c: $9f
	ld   a, [$89ed]                                  ; $6c8d: $fa $ed $89
	ld   [hl], l                                     ; $6c90: $75
	ld   hl, $1117                                   ; $6c91: $21 $17 $11
	pop  de                                          ; $6c94: $d1
	cp   [hl]                                        ; $6c95: $be
	cpl                                              ; $6c96: $2f
	ld   sp, hl                                      ; $6c97: $f9
	cp   $af                                         ; $6c98: $fe $af
	sbc  c                                           ; $6c9a: $99
	sub  a                                           ; $6c9b: $97
	ld   [hl-], a                                    ; $6c9c: $32
	inc  de                                          ; $6c9d: $13
	ld   d, c                                        ; $6c9e: $51
	or   e                                           ; $6c9f: $b3
	rra                                              ; $6ca0: $1f
	ld   c, c                                        ; $6ca1: $49
	ld   a, [$beff]                                  ; $6ca2: $fa $ff $be
	jp   hl                                          ; $6ca5: $e9


	xor  b                                           ; $6ca6: $a8
	ld   d, d                                        ; $6ca7: $52
	ld   de, $1d71                                   ; $6ca8: $11 $71 $1d
	add  hl, de                                      ; $6cab: $19
	ldh  a, [c]                                      ; $6cac: $f2
	cp   $af                                         ; $6cad: $fe $af
	db   $eb                                         ; $6caf: $eb
	ld   a, [$7499]                                  ; $6cb0: $fa $99 $74
	ld   sp, $1926                                   ; $6cb3: $31 $26 $19
	ld   h, c                                        ; $6cb6: $61
	or   $6f                                         ; $6cb7: $f6 $6f
	xor  l                                           ; $6cb9: $ad
	ld   a, [$99ee]                                  ; $6cba: $fa $ee $99
	add  [hl]                                        ; $6cbd: $86
	ld   [hl-], a                                    ; $6cbe: $32
	ld   d, $01                                      ; $6cbf: $16 $01
	pop  de                                          ; $6cc1: $d1
	ld   e, a                                        ; $6cc2: $5f
	ld   l, $f9                                      ; $6cc3: $2e $f9
	rst  $38                                         ; $6cc5: $ff
	cp   a                                           ; $6cc6: $bf
	cp   c                                           ; $6cc7: $b9
	sub  a                                           ; $6cc8: $97
	ld   d, e                                        ; $6cc9: $53
	ld   de, $3c81                                   ; $6cca: $11 $81 $3c
	dec  e                                           ; $6ccd: $1d
	jp   $affd                                       ; $6cce: $c3 $fd $af


	set  7, d                                        ; $6cd1: $cb $fa
	xor  c                                           ; $6cd3: $a9
	ld   [hl], h                                     ; $6cd4: $74
	ld   sp, $1a26                                   ; $6cd5: $31 $26 $1a
	ld   d, c                                        ; $6cd8: $51
	or   $7f                                         ; $6cd9: $f6 $7f
	xor  [hl]                                        ; $6cdb: $ae
	ei                                               ; $6cdc: $fb
	db   $ed                                         ; $6cdd: $ed
	sbc  d                                           ; $6cde: $9a
	sub  [hl]                                        ; $6cdf: $96
	inc  sp                                          ; $6ce0: $33
	ld   d, $21                                      ; $6ce1: $16 $21
	pop  de                                          ; $6ce3: $d1
	ccf                                              ; $6ce4: $3f
	dec  l                                           ; $6ce5: $2d
	ld   hl, sp-$01                                  ; $6ce6: $f8 $ff
	cp   [hl]                                        ; $6ce8: $be
	cp   c                                           ; $6ce9: $b9
	sbc  b                                           ; $6cea: $98
	ld   d, e                                        ; $6ceb: $53
	ld   hl, $1d81                                   ; $6cec: $21 $81 $1d
	ld   a, [de]                                     ; $6cef: $1a
	ldh  a, [c]                                      ; $6cf0: $f2
	rst  $38                                         ; $6cf1: $ff
	sbc  a                                           ; $6cf2: $9f
	db   $eb                                         ; $6cf3: $eb
	ld   [$84a9], a                                  ; $6cf4: $ea $a9 $84
	ld   b, c                                        ; $6cf7: $41
	add  hl, de                                      ; $6cf8: $19
	dec  d                                           ; $6cf9: $15
	or   c                                           ; $6cfa: $b1
	db   $db                                         ; $6cfb: $db
	ccf                                              ; $6cfc: $3f
	jp   z, $cffd                                    ; $6cfd: $ca $fd $cf

	xor  c                                           ; $6d00: $a9
	sub  a                                           ; $6d01: $97
	inc  [hl]                                        ; $6d02: $34
	ld   [de], a                                     ; $6d03: $12
	ld   [hl], c                                     ; $6d04: $71
	sub  a                                           ; $6d05: $97
	rra                                              ; $6d06: $1f
	halt                                             ; $6d07: $76
	ld   a, [$ccdf]                                  ; $6d08: $fa $df $cc
	ld   [$6399], a                                  ; $6d0b: $ea $99 $63
	ld   b, c                                        ; $6d0e: $41
	ld   b, l                                        ; $6d0f: $45
	inc  e                                           ; $6d10: $1c
	ld   sp, $9ff4                                   ; $6d11: $31 $f4 $9f
	sbc  [hl]                                        ; $6d14: $9e
	db   $fc                                         ; $6d15: $fc
	sbc  $a9                                         ; $6d16: $de $a9
	sub  [hl]                                        ; $6d18: $96
	ld   b, e                                        ; $6d19: $43
	ld   d, $21                                      ; $6d1a: $16 $21
	pop  bc                                          ; $6d1c: $c1
	ccf                                              ; $6d1d: $3f
	inc  a                                           ; $6d1e: $3c
	ld   a, [$bdff]                                  ; $6d1f: $fa $ff $bd
	reti                                             ; $6d22: $d9


	sbc  c                                           ; $6d23: $99
	ld   d, h                                        ; $6d24: $54
	ld   hl, $1c71                                   ; $6d25: $21 $71 $1c
	rla                                              ; $6d28: $17
	db   $e3                                         ; $6d29: $e3
	rst  $38                                         ; $6d2a: $ff
	xor  a                                           ; $6d2b: $af
	ei                                               ; $6d2c: $fb
	db   $ed                                         ; $6d2d: $ed
	sbc  d                                           ; $6d2e: $9a
	add  h                                           ; $6d2f: $84
	ld   b, c                                        ; $6d30: $41
	jr   jr_0ec_6d46                                 ; $6d31: $18 $13

	and  c                                           ; $6d33: $a1
	bit  1, a                                        ; $6d34: $cb $4f
	db   $db                                         ; $6d36: $db
	cp   $be                                         ; $6d37: $fe $be
	ret                                              ; $6d39: $c9


	sbc  b                                           ; $6d3a: $98
	inc  [hl]                                        ; $6d3b: $34
	ld   [de], a                                     ; $6d3c: $12
	ld   h, c                                        ; $6d3d: $61
	halt                                             ; $6d3e: $76
	ld   e, $77                                      ; $6d3f: $1e $77
	db   $fc                                         ; $6d41: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d42: $cf
	call c, $9aeb                                    ; $6d43: $dc $eb $9a

jr_0ec_6d46:
	ld   h, e                                        ; $6d46: $63
	ld   b, c                                        ; $6d47: $41
	ld   b, e                                        ; $6d48: $43
	ld   a, [de]                                     ; $6d49: $1a
	ld   [hl+], a                                    ; $6d4a: $22
	push af                                          ; $6d4b: $f5
	xor  a                                           ; $6d4c: $af
	cp   [hl]                                        ; $6d4d: $be
	db   $fc                                         ; $6d4e: $fc
	call $95a9                                       ; $6d4f: $cd $a9 $95
	ld   b, e                                        ; $6d52: $43
	ld   d, $11                                      ; $6d53: $16 $11
	and  c                                           ; $6d55: $a1
	ld   l, l                                        ; $6d56: $6d
	ld   c, h                                        ; $6d57: $4c
	ld   a, [$bdff]                                  ; $6d58: $fa $ff $bd
	ret  c                                           ; $6d5b: $d8

	sbc  d                                           ; $6d5c: $9a
	ld   b, l                                        ; $6d5d: $45
	ld   hl, $2861                                   ; $6d5e: $21 $61 $28
	add  hl, de                                      ; $6d61: $19
	or   l                                           ; $6d62: $b5
	xor  $bf                                         ; $6d63: $ee $bf
	ei                                               ; $6d65: $fb
	db   $dd                                         ; $6d66: $dd
	adc  d                                           ; $6d67: $8a
	sub  h                                           ; $6d68: $94
	ld   b, c                                        ; $6d69: $41
	ld   d, $15                                      ; $6d6a: $16 $15
	ld   [hl], c                                     ; $6d6c: $71
	ret  z                                           ; $6d6d: $c8

	ld   l, a                                        ; $6d6e: $6f
	call z, $bdfd                                    ; $6d6f: $cc $fd $bd
	and  a                                           ; $6d72: $a7
	sub  a                                           ; $6d73: $97
	ld   b, l                                        ; $6d74: $45
	dec  d                                           ; $6d75: $15
	ld   b, c                                        ; $6d76: $41
	and  e                                           ; $6d77: $a3
	ld   e, [hl]                                     ; $6d78: $5e
	ld   l, e                                        ; $6d79: $6b
	jp   c, $9acd                                    ; $6d7a: $da $cd $9a

	rst  ToBoot                                         ; $6d7d: $c7
	sbc  c                                           ; $6d7e: $99
	ld   d, [hl]                                     ; $6d7f: $56
	ld   b, d                                        ; $6d80: $42
	add  d                                           ; $6d81: $82
	ld   c, d                                        ; $6d82: $4a
	add  hl, hl                                      ; $6d83: $29
	or   [hl]                                        ; $6d84: $b6
	call z, $d99c                                    ; $6d85: $cc $9c $d9
	ret                                              ; $6d88: $c9


	ld   a, d                                        ; $6d89: $7a
	ld   [hl], l                                     ; $6d8a: $75
	ld   h, e                                        ; $6d8b: $63
	ld   d, [hl]                                     ; $6d8c: $56
	add  hl, de                                      ; $6d8d: $19
	ld   d, h                                        ; $6d8e: $54
	rst  $10                                         ; $6d8f: $d7
	xor  l                                           ; $6d90: $ad
	xor  e                                           ; $6d91: $ab
	reti                                             ; $6d92: $d9


	cp   e                                           ; $6d93: $bb
	ld   a, b                                        ; $6d94: $78
	add  l                                           ; $6d95: $85
	ld   d, h                                        ; $6d96: $54
	scf                                              ; $6d97: $37
	ld   h, $93                                      ; $6d98: $26 $93
	cp   c                                           ; $6d9a: $b9
	adc  h                                           ; $6d9b: $8c
	cp   d                                           ; $6d9c: $ba
	call c, $87ac                                    ; $6d9d: $dc $ac $87
	sub  [hl]                                        ; $6da0: $96
	ld   d, l                                        ; $6da1: $55
	scf                                              ; $6da2: $37
	ld   b, e                                        ; $6da3: $43
	and  e                                           ; $6da4: $a3
	sbc  e                                           ; $6da5: $9b
	ld   a, h                                        ; $6da6: $7c
	cp   d                                           ; $6da7: $ba
	call $a79b                                       ; $6da8: $cd $9b $a7
	sbc  b                                           ; $6dab: $98
	ld   d, l                                        ; $6dac: $55
	ld   b, l                                        ; $6dad: $45
	ld   h, d                                        ; $6dae: $62
	sub  l                                           ; $6daf: $95
	ld   l, h                                        ; $6db0: $6c
	ld   a, e                                        ; $6db1: $7b
	res  7, l                                        ; $6db2: $cb $bd
	cp   e                                           ; $6db4: $bb
	cp   b                                           ; $6db5: $b8
	adc  b                                           ; $6db6: $88
	ld   h, l                                        ; $6db7: $65
	ld   b, l                                        ; $6db8: $45
	ld   [hl], d                                     ; $6db9: $72
	ld   [hl], a                                     ; $6dba: $77
	ld   c, h                                        ; $6dbb: $4c
	adc  c                                           ; $6dbc: $89
	res  7, h                                        ; $6dbd: $cb $bc
	cp   c                                           ; $6dbf: $b9
	ret                                              ; $6dc0: $c9


	adc  b                                           ; $6dc1: $88
	ld   h, l                                        ; $6dc2: $65
	ld   d, h                                        ; $6dc3: $54
	ld   [hl], e                                     ; $6dc4: $73
	ld   e, d                                        ; $6dc5: $5a
	dec  sp                                          ; $6dc6: $3b
	xor  b                                           ; $6dc7: $a8
	db   $db                                         ; $6dc8: $db
	xor  h                                           ; $6dc9: $ac
	ret                                              ; $6dca: $c9


	cp   c                                           ; $6dcb: $b9
	ld   a, c                                        ; $6dcc: $79
	ld   [hl], l                                     ; $6dcd: $75
	ld   d, e                                        ; $6dce: $53
	ld   [hl], l                                     ; $6dcf: $75
	ld   a, [hl-]                                    ; $6dd0: $3a
	ld   b, a                                        ; $6dd1: $47
	rst  ToBoot                                         ; $6dd2: $c7
	call z, $caaa                                    ; $6dd3: $cc $aa $ca
	xor  e                                           ; $6dd6: $ab
	ld   a, b                                        ; $6dd7: $78
	add  l                                           ; $6dd8: $85
	ld   h, h                                        ; $6dd9: $64
	ld   d, a                                        ; $6dda: $57
	jr   z, jr_0ec_6e52                              ; $6ddb: $28 $75

	ret  z                                           ; $6ddd: $c8

	xor  h                                           ; $6dde: $ac
	cp   e                                           ; $6ddf: $bb
	cp   h                                           ; $6de0: $bc
	sbc  h                                           ; $6de1: $9c
	sub  a                                           ; $6de2: $97
	sub  [hl]                                        ; $6de3: $96
	ld   d, l                                        ; $6de4: $55
	ld   b, a                                        ; $6de5: $47
	ld   b, l                                        ; $6de6: $45
	sub  h                                           ; $6de7: $94
	xor  c                                           ; $6de8: $a9
	sbc  e                                           ; $6de9: $9b
	cp   e                                           ; $6dea: $bb
	xor  h                                           ; $6deb: $ac
	sbc  d                                           ; $6dec: $9a
	and  a                                           ; $6ded: $a7
	add  a                                           ; $6dee: $87
	ld   d, l                                        ; $6def: $55
	ld   b, [hl]                                     ; $6df0: $46
	ld   d, h                                        ; $6df1: $54
	sub  l                                           ; $6df2: $95
	ld   a, d                                        ; $6df3: $7a
	adc  d                                           ; $6df4: $8a
	cp   e                                           ; $6df5: $bb
	xor  h                                           ; $6df6: $ac
	xor  d                                           ; $6df7: $aa
	xor  b                                           ; $6df8: $a8
	sbc  b                                           ; $6df9: $98
	ld   h, l                                        ; $6dfa: $65
	ld   d, l                                        ; $6dfb: $55
	ld   h, e                                        ; $6dfc: $63
	halt                                             ; $6dfd: $76
	ld   e, d                                        ; $6dfe: $5a
	adc  d                                           ; $6dff: $8a
	xor  e                                           ; $6e00: $ab
	xor  e                                           ; $6e01: $ab
	cp   d                                           ; $6e02: $ba
	cp   c                                           ; $6e03: $b9
	adc  b                                           ; $6e04: $88
	halt                                             ; $6e05: $76
	ld   d, l                                        ; $6e06: $55
	ld   h, h                                        ; $6e07: $64
	ld   e, b                                        ; $6e08: $58
	ld   c, b                                        ; $6e09: $48
	sbc  b                                           ; $6e0a: $98
	xor  d                                           ; $6e0b: $aa
	cp   e                                           ; $6e0c: $bb
	cp   d                                           ; $6e0d: $ba
	cp   d                                           ; $6e0e: $ba
	adc  c                                           ; $6e0f: $89
	halt                                             ; $6e10: $76
	ld   h, l                                        ; $6e11: $65
	ld   h, [hl]                                     ; $6e12: $66
	ld   b, a                                        ; $6e13: $47
	ld   d, [hl]                                     ; $6e14: $56
	sbc  b                                           ; $6e15: $98
	xor  c                                           ; $6e16: $a9
	cp   c                                           ; $6e17: $b9
	cp   d                                           ; $6e18: $ba
	xor  e                                           ; $6e19: $ab
	sbc  c                                           ; $6e1a: $99
	add  a                                           ; $6e1b: $87
	ld   h, l                                        ; $6e1c: $65
	ld   d, a                                        ; $6e1d: $57
	ld   d, l                                        ; $6e1e: $55
	ld   [hl], l                                     ; $6e1f: $75
	adc  c                                           ; $6e20: $89
	adc  c                                           ; $6e21: $89
	xor  c                                           ; $6e22: $a9
	xor  e                                           ; $6e23: $ab
	sbc  d                                           ; $6e24: $9a
	xor  b                                           ; $6e25: $a8
	sbc  b                                           ; $6e26: $98
	halt                                             ; $6e27: $76
	ld   d, [hl]                                     ; $6e28: $56
	ld   [hl], l                                     ; $6e29: $75
	ld   [hl], a                                     ; $6e2a: $77
	ld   l, b                                        ; $6e2b: $68
	adc  b                                           ; $6e2c: $88
	adc  c                                           ; $6e2d: $89
	sbc  c                                           ; $6e2e: $99
	xor  b                                           ; $6e2f: $a8
	sbc  c                                           ; $6e30: $99
	adc  c                                           ; $6e31: $89
	add  a                                           ; $6e32: $87
	halt                                             ; $6e33: $76
	ld   h, a                                        ; $6e34: $67
	ld   d, a                                        ; $6e35: $57
	halt                                             ; $6e36: $76
	ld   a, b                                        ; $6e37: $78
	ld   a, b                                        ; $6e38: $78
	sbc  c                                           ; $6e39: $99
	sbc  c                                           ; $6e3a: $99
	adc  c                                           ; $6e3b: $89
	sbc  b                                           ; $6e3c: $98
	adc  b                                           ; $6e3d: $88
	ld   a, b                                        ; $6e3e: $78
	ld   [hl], a                                     ; $6e3f: $77
	add  [hl]                                        ; $6e40: $86
	ld   h, a                                        ; $6e41: $67
	ld   h, [hl]                                     ; $6e42: $66
	halt                                             ; $6e43: $76
	ld   a, b                                        ; $6e44: $78
	adc  b                                           ; $6e45: $88
	sbc  c                                           ; $6e46: $99
	adc  c                                           ; $6e47: $89
	sbc  c                                           ; $6e48: $99
	sbc  b                                           ; $6e49: $98
	adc  b                                           ; $6e4a: $88
	add  a                                           ; $6e4b: $87
	add  [hl]                                        ; $6e4c: $86
	ld   [hl], a                                     ; $6e4d: $77
	ld   h, a                                        ; $6e4e: $67
	ld   h, [hl]                                     ; $6e4f: $66
	ld   [hl], a                                     ; $6e50: $77
	ld   a, b                                        ; $6e51: $78

jr_0ec_6e52:
	sbc  b                                           ; $6e52: $98
	sbc  d                                           ; $6e53: $9a
	sbc  c                                           ; $6e54: $99
	sbc  b                                           ; $6e55: $98
	sbc  c                                           ; $6e56: $99
	adc  b                                           ; $6e57: $88
	halt                                             ; $6e58: $76
	halt                                             ; $6e59: $76
	ld   h, [hl]                                     ; $6e5a: $66
	ld   h, [hl]                                     ; $6e5b: $66
	ld   [hl], a                                     ; $6e5c: $77
	ld   a, c                                        ; $6e5d: $79
	sbc  c                                           ; $6e5e: $99
	xor  d                                           ; $6e5f: $aa
	xor  c                                           ; $6e60: $a9
	sbc  c                                           ; $6e61: $99
	adc  c                                           ; $6e62: $89
	adc  b                                           ; $6e63: $88
	halt                                             ; $6e64: $76
	halt                                             ; $6e65: $76
	ld   h, [hl]                                     ; $6e66: $66
	ld   h, [hl]                                     ; $6e67: $66
	ld   [hl], a                                     ; $6e68: $77
	adc  b                                           ; $6e69: $88
	sbc  c                                           ; $6e6a: $99
	sbc  c                                           ; $6e6b: $99
	sbc  d                                           ; $6e6c: $9a
	sbc  c                                           ; $6e6d: $99
	adc  c                                           ; $6e6e: $89
	adc  b                                           ; $6e6f: $88
	halt                                             ; $6e70: $76
	halt                                             ; $6e71: $76
	ld   h, [hl]                                     ; $6e72: $66
	ld   h, [hl]                                     ; $6e73: $66
	ld   [hl], a                                     ; $6e74: $77
	adc  b                                           ; $6e75: $88
	sbc  c                                           ; $6e76: $99
	sbc  d                                           ; $6e77: $9a
	sbc  c                                           ; $6e78: $99
	sbc  c                                           ; $6e79: $99
	adc  c                                           ; $6e7a: $89
	adc  b                                           ; $6e7b: $88
	halt                                             ; $6e7c: $76
	halt                                             ; $6e7d: $76
	ld   h, [hl]                                     ; $6e7e: $66
	ld   h, [hl]                                     ; $6e7f: $66
	ld   [hl], a                                     ; $6e80: $77
	adc  b                                           ; $6e81: $88
	sbc  d                                           ; $6e82: $9a
	sbc  c                                           ; $6e83: $99
	xor  c                                           ; $6e84: $a9
	xor  c                                           ; $6e85: $a9
	adc  c                                           ; $6e86: $89
	adc  b                                           ; $6e87: $88
	halt                                             ; $6e88: $76
	ld   h, [hl]                                     ; $6e89: $66
	ld   h, [hl]                                     ; $6e8a: $66
	ld   h, [hl]                                     ; $6e8b: $66
	ld   [hl], a                                     ; $6e8c: $77
	adc  c                                           ; $6e8d: $89
	sbc  d                                           ; $6e8e: $9a
	xor  c                                           ; $6e8f: $a9
	xor  d                                           ; $6e90: $aa
	xor  c                                           ; $6e91: $a9
	adc  b                                           ; $6e92: $88
	adc  b                                           ; $6e93: $88
	ld   h, [hl]                                     ; $6e94: $66
	ld   h, [hl]                                     ; $6e95: $66
	ld   h, [hl]                                     ; $6e96: $66
	ld   h, a                                        ; $6e97: $67
	ld   [hl], a                                     ; $6e98: $77
	sbc  c                                           ; $6e99: $99
	sbc  c                                           ; $6e9a: $99
	xor  c                                           ; $6e9b: $a9
	xor  c                                           ; $6e9c: $a9
	xor  c                                           ; $6e9d: $a9
	sbc  b                                           ; $6e9e: $98
	add  a                                           ; $6e9f: $87
	ld   h, a                                        ; $6ea0: $67
	ld   h, [hl]                                     ; $6ea1: $66
	ld   h, [hl]                                     ; $6ea2: $66
	ld   h, a                                        ; $6ea3: $67
	ld   a, b                                        ; $6ea4: $78
	adc  c                                           ; $6ea5: $89
	sbc  d                                           ; $6ea6: $9a
	xor  c                                           ; $6ea7: $a9
	xor  c                                           ; $6ea8: $a9
	xor  b                                           ; $6ea9: $a8
	add  a                                           ; $6eaa: $87
	add  a                                           ; $6eab: $87
	ld   h, a                                        ; $6eac: $67
	ld   h, [hl]                                     ; $6ead: $66
	ld   h, [hl]                                     ; $6eae: $66
	ld   h, a                                        ; $6eaf: $67
	adc  b                                           ; $6eb0: $88
	sbc  c                                           ; $6eb1: $99
	sbc  d                                           ; $6eb2: $9a
	sbc  d                                           ; $6eb3: $9a
	xor  d                                           ; $6eb4: $aa
	sbc  b                                           ; $6eb5: $98
	add  a                                           ; $6eb6: $87
	ld   [hl], a                                     ; $6eb7: $77
	ld   h, a                                        ; $6eb8: $67
	ld   h, [hl]                                     ; $6eb9: $66
	ld   h, [hl]                                     ; $6eba: $66
	ld   h, a                                        ; $6ebb: $67
	adc  c                                           ; $6ebc: $89
	sbc  c                                           ; $6ebd: $99
	xor  d                                           ; $6ebe: $aa
	sbc  d                                           ; $6ebf: $9a
	xor  d                                           ; $6ec0: $aa
	sbc  c                                           ; $6ec1: $99
	add  a                                           ; $6ec2: $87
	halt                                             ; $6ec3: $76
	halt                                             ; $6ec4: $76
	ld   h, [hl]                                     ; $6ec5: $66
	ld   h, [hl]                                     ; $6ec6: $66
	ld   [hl], a                                     ; $6ec7: $77
	adc  c                                           ; $6ec8: $89
	xor  c                                           ; $6ec9: $a9
	xor  d                                           ; $6eca: $aa
	xor  d                                           ; $6ecb: $aa
	sbc  d                                           ; $6ecc: $9a
	sbc  b                                           ; $6ecd: $98
	ld   [hl], a                                     ; $6ece: $77
	halt                                             ; $6ecf: $76
	halt                                             ; $6ed0: $76
	ld   h, [hl]                                     ; $6ed1: $66
	ld   h, [hl]                                     ; $6ed2: $66
	ld   a, b                                        ; $6ed3: $78
	sbc  d                                           ; $6ed4: $9a
	xor  d                                           ; $6ed5: $aa
	xor  d                                           ; $6ed6: $aa
	xor  d                                           ; $6ed7: $aa
	sbc  d                                           ; $6ed8: $9a
	adc  b                                           ; $6ed9: $88
	ld   [hl], a                                     ; $6eda: $77
	ld   h, [hl]                                     ; $6edb: $66
	halt                                             ; $6edc: $76
	ld   h, [hl]                                     ; $6edd: $66
	ld   h, a                                        ; $6ede: $67
	adc  c                                           ; $6edf: $89
	sbc  d                                           ; $6ee0: $9a
	xor  d                                           ; $6ee1: $aa
	xor  c                                           ; $6ee2: $a9
	xor  c                                           ; $6ee3: $a9
	xor  c                                           ; $6ee4: $a9
	add  a                                           ; $6ee5: $87
	halt                                             ; $6ee6: $76
	ld   h, [hl]                                     ; $6ee7: $66
	ld   h, [hl]                                     ; $6ee8: $66
	ld   h, [hl]                                     ; $6ee9: $66
	ld   [hl], a                                     ; $6eea: $77
	adc  c                                           ; $6eeb: $89
	sbc  c                                           ; $6eec: $99
	xor  d                                           ; $6eed: $aa
	xor  d                                           ; $6eee: $aa
	xor  d                                           ; $6eef: $aa
	sbc  c                                           ; $6ef0: $99
	ld   [hl], a                                     ; $6ef1: $77
	ld   h, [hl]                                     ; $6ef2: $66
	ld   h, [hl]                                     ; $6ef3: $66
	ld   h, [hl]                                     ; $6ef4: $66
	ld   h, [hl]                                     ; $6ef5: $66
	ld   a, b                                        ; $6ef6: $78
	sbc  d                                           ; $6ef7: $9a
	xor  c                                           ; $6ef8: $a9
	xor  d                                           ; $6ef9: $aa
	xor  d                                           ; $6efa: $aa
	xor  d                                           ; $6efb: $aa
	add  a                                           ; $6efc: $87
	halt                                             ; $6efd: $76
	ld   h, [hl]                                     ; $6efe: $66
	ld   h, [hl]                                     ; $6eff: $66
	ld   h, [hl]                                     ; $6f00: $66
	ld   h, a                                        ; $6f01: $67
	adc  b                                           ; $6f02: $88
	sbc  d                                           ; $6f03: $9a
	sbc  e                                           ; $6f04: $9b
	xor  d                                           ; $6f05: $aa
	xor  c                                           ; $6f06: $a9
	xor  b                                           ; $6f07: $a8
	ld   [hl], a                                     ; $6f08: $77
	ld   h, [hl]                                     ; $6f09: $66
	ld   h, [hl]                                     ; $6f0a: $66
	ld   h, [hl]                                     ; $6f0b: $66
	ld   h, [hl]                                     ; $6f0c: $66
	ld   a, b                                        ; $6f0d: $78
	sbc  d                                           ; $6f0e: $9a
	xor  c                                           ; $6f0f: $a9
	xor  d                                           ; $6f10: $aa
	sbc  d                                           ; $6f11: $9a
	sbc  d                                           ; $6f12: $9a
	sbc  b                                           ; $6f13: $98
	ld   [hl], a                                     ; $6f14: $77
	ld   h, [hl]                                     ; $6f15: $66
	ld   h, [hl]                                     ; $6f16: $66
	ld   h, [hl]                                     ; $6f17: $66
	ld   h, a                                        ; $6f18: $67
	adc  c                                           ; $6f19: $89
	sbc  d                                           ; $6f1a: $9a
	sbc  d                                           ; $6f1b: $9a
	xor  d                                           ; $6f1c: $aa
	xor  d                                           ; $6f1d: $aa
	xor  c                                           ; $6f1e: $a9
	add  a                                           ; $6f1f: $87
	halt                                             ; $6f20: $76
	ld   h, [hl]                                     ; $6f21: $66
	ld   h, [hl]                                     ; $6f22: $66
	ld   h, [hl]                                     ; $6f23: $66
	ld   [hl], a                                     ; $6f24: $77
	sbc  c                                           ; $6f25: $99
	xor  d                                           ; $6f26: $aa
	xor  d                                           ; $6f27: $aa
	sbc  d                                           ; $6f28: $9a
	xor  d                                           ; $6f29: $aa
	sbc  b                                           ; $6f2a: $98
	ld   [hl], a                                     ; $6f2b: $77
	ld   h, [hl]                                     ; $6f2c: $66
	ld   h, [hl]                                     ; $6f2d: $66
	ld   h, [hl]                                     ; $6f2e: $66
	ld   h, [hl]                                     ; $6f2f: $66
	ld   a, b                                        ; $6f30: $78
	sbc  d                                           ; $6f31: $9a
	sbc  d                                           ; $6f32: $9a
	xor  c                                           ; $6f33: $a9
	xor  d                                           ; $6f34: $aa
	xor  c                                           ; $6f35: $a9
	sub  a                                           ; $6f36: $97
	halt                                             ; $6f37: $76
	ld   h, [hl]                                     ; $6f38: $66
	ld   h, [hl]                                     ; $6f39: $66
	ld   h, [hl]                                     ; $6f3a: $66
	ld   h, a                                        ; $6f3b: $67
	adc  b                                           ; $6f3c: $88
	sbc  c                                           ; $6f3d: $99
	sbc  d                                           ; $6f3e: $9a
	xor  d                                           ; $6f3f: $aa
	xor  c                                           ; $6f40: $a9
	xor  b                                           ; $6f41: $a8
	ld   [hl], a                                     ; $6f42: $77
	ld   h, [hl]                                     ; $6f43: $66
	ld   h, [hl]                                     ; $6f44: $66
	ld   h, [hl]                                     ; $6f45: $66
	ld   h, [hl]                                     ; $6f46: $66
	ld   a, b                                        ; $6f47: $78
	sbc  d                                           ; $6f48: $9a
	sbc  c                                           ; $6f49: $99
	xor  d                                           ; $6f4a: $aa
	xor  d                                           ; $6f4b: $aa
	sbc  d                                           ; $6f4c: $9a
	add  a                                           ; $6f4d: $87
	halt                                             ; $6f4e: $76
	ld   h, [hl]                                     ; $6f4f: $66
	ld   h, [hl]                                     ; $6f50: $66
	ld   h, [hl]                                     ; $6f51: $66
	ld   h, a                                        ; $6f52: $67
	adc  c                                           ; $6f53: $89
	xor  c                                           ; $6f54: $a9
	sbc  d                                           ; $6f55: $9a
	xor  d                                           ; $6f56: $aa
	xor  c                                           ; $6f57: $a9
	xor  c                                           ; $6f58: $a9
	add  a                                           ; $6f59: $87
	halt                                             ; $6f5a: $76
	ld   h, [hl]                                     ; $6f5b: $66
	ld   h, [hl]                                     ; $6f5c: $66
	ld   h, [hl]                                     ; $6f5d: $66
	ld   [hl], a                                     ; $6f5e: $77
	adc  c                                           ; $6f5f: $89
	sbc  d                                           ; $6f60: $9a
	xor  d                                           ; $6f61: $aa
	xor  d                                           ; $6f62: $aa
	xor  d                                           ; $6f63: $aa
	sbc  b                                           ; $6f64: $98
	ld   [hl], a                                     ; $6f65: $77
	ld   h, [hl]                                     ; $6f66: $66
	ld   h, [hl]                                     ; $6f67: $66
	ld   h, [hl]                                     ; $6f68: $66
	ld   h, [hl]                                     ; $6f69: $66
	ld   a, b                                        ; $6f6a: $78
	adc  c                                           ; $6f6b: $89
	xor  c                                           ; $6f6c: $a9
	xor  d                                           ; $6f6d: $aa
	xor  d                                           ; $6f6e: $aa
	sbc  c                                           ; $6f6f: $99
	add  a                                           ; $6f70: $87
	halt                                             ; $6f71: $76
	ld   h, [hl]                                     ; $6f72: $66
	ld   h, [hl]                                     ; $6f73: $66
	ld   h, [hl]                                     ; $6f74: $66
	ld   h, a                                        ; $6f75: $67
	adc  c                                           ; $6f76: $89
	xor  d                                           ; $6f77: $aa
	sbc  d                                           ; $6f78: $9a
	xor  d                                           ; $6f79: $aa
	xor  c                                           ; $6f7a: $a9
	xor  c                                           ; $6f7b: $a9
	ld   [hl], a                                     ; $6f7c: $77
	halt                                             ; $6f7d: $76
	ld   h, [hl]                                     ; $6f7e: $66
	ld   h, [hl]                                     ; $6f7f: $66
	ld   h, [hl]                                     ; $6f80: $66
	ld   [hl], a                                     ; $6f81: $77
	sbc  c                                           ; $6f82: $99
	xor  c                                           ; $6f83: $a9
	xor  d                                           ; $6f84: $aa
	xor  d                                           ; $6f85: $aa
	sbc  c                                           ; $6f86: $99
	add  a                                           ; $6f87: $87
	ld   [hl], a                                     ; $6f88: $77
	ld   h, [hl]                                     ; $6f89: $66
	ld   h, [hl]                                     ; $6f8a: $66
	ld   h, [hl]                                     ; $6f8b: $66
	ld   h, a                                        ; $6f8c: $67
	ld   a, b                                        ; $6f8d: $78
	sbc  d                                           ; $6f8e: $9a
	xor  d                                           ; $6f8f: $aa
	xor  d                                           ; $6f90: $aa
	xor  c                                           ; $6f91: $a9
	sbc  b                                           ; $6f92: $98
	ld   [hl], a                                     ; $6f93: $77
	halt                                             ; $6f94: $76
	ld   h, [hl]                                     ; $6f95: $66
	ld   h, [hl]                                     ; $6f96: $66
	ld   h, [hl]                                     ; $6f97: $66
	ld   [hl], a                                     ; $6f98: $77
	adc  c                                           ; $6f99: $89
	xor  d                                           ; $6f9a: $aa
	xor  d                                           ; $6f9b: $aa
	xor  d                                           ; $6f9c: $aa
	xor  d                                           ; $6f9d: $aa
	adc  b                                           ; $6f9e: $88
	ld   [hl], a                                     ; $6f9f: $77
	ld   h, [hl]                                     ; $6fa0: $66
	halt                                             ; $6fa1: $76
	ld   h, [hl]                                     ; $6fa2: $66
	ld   h, a                                        ; $6fa3: $67
	ld   a, b                                        ; $6fa4: $78
	sbc  d                                           ; $6fa5: $9a
	sbc  c                                           ; $6fa6: $99
	xor  d                                           ; $6fa7: $aa
	xor  d                                           ; $6fa8: $aa
	sbc  c                                           ; $6fa9: $99
	ld   [hl], a                                     ; $6faa: $77
	halt                                             ; $6fab: $76
	halt                                             ; $6fac: $76
	ld   h, [hl]                                     ; $6fad: $66
	ld   h, [hl]                                     ; $6fae: $66
	ld   a, b                                        ; $6faf: $78
	sbc  c                                           ; $6fb0: $99
	xor  d                                           ; $6fb1: $aa
	sbc  d                                           ; $6fb2: $9a
	xor  d                                           ; $6fb3: $aa
	xor  c                                           ; $6fb4: $a9
	add  a                                           ; $6fb5: $87
	ld   [hl], a                                     ; $6fb6: $77
	ld   h, a                                        ; $6fb7: $67
	ld   h, [hl]                                     ; $6fb8: $66
	ld   h, [hl]                                     ; $6fb9: $66
	ld   [hl], a                                     ; $6fba: $77
	adc  b                                           ; $6fbb: $88
	xor  c                                           ; $6fbc: $a9
	sbc  d                                           ; $6fbd: $9a
	xor  c                                           ; $6fbe: $a9
	sbc  c                                           ; $6fbf: $99
	sub  a                                           ; $6fc0: $97
	ld   [hl], a                                     ; $6fc1: $77
	ld   h, [hl]                                     ; $6fc2: $66
	halt                                             ; $6fc3: $76
	ld   h, a                                        ; $6fc4: $67
	ld   [hl], a                                     ; $6fc5: $77
	adc  b                                           ; $6fc6: $88
	sbc  d                                           ; $6fc7: $9a
	sbc  d                                           ; $6fc8: $9a
	xor  c                                           ; $6fc9: $a9
	sbc  d                                           ; $6fca: $9a
	adc  b                                           ; $6fcb: $88
	halt                                             ; $6fcc: $76
	ld   [hl], l                                     ; $6fcd: $75
	ld   h, [hl]                                     ; $6fce: $66
	ld   h, a                                        ; $6fcf: $67
	ld   [hl], a                                     ; $6fd0: $77
	adc  c                                           ; $6fd1: $89
	sbc  d                                           ; $6fd2: $9a
	cp   d                                           ; $6fd3: $ba
	xor  d                                           ; $6fd4: $aa
	sbc  c                                           ; $6fd5: $99
	sub  a                                           ; $6fd6: $97
	halt                                             ; $6fd7: $76
	ld   h, [hl]                                     ; $6fd8: $66
	ld   d, [hl]                                     ; $6fd9: $56
	ld   h, [hl]                                     ; $6fda: $66
	ld   [hl], a                                     ; $6fdb: $77
	adc  b                                           ; $6fdc: $88
	sbc  d                                           ; $6fdd: $9a
	xor  e                                           ; $6fde: $ab
	xor  d                                           ; $6fdf: $aa
	sbc  c                                           ; $6fe0: $99
	sbc  b                                           ; $6fe1: $98
	halt                                             ; $6fe2: $76
	ld   d, [hl]                                     ; $6fe3: $56
	ld   d, [hl]                                     ; $6fe4: $56
	ld   h, [hl]                                     ; $6fe5: $66
	ld   [hl], a                                     ; $6fe6: $77
	sbc  b                                           ; $6fe7: $98
	xor  d                                           ; $6fe8: $aa
	xor  e                                           ; $6fe9: $ab
	xor  d                                           ; $6fea: $aa
	sbc  d                                           ; $6feb: $9a
	adc  b                                           ; $6fec: $88
	ld   h, l                                        ; $6fed: $65
	ld   d, l                                        ; $6fee: $55
	ld   b, l                                        ; $6fef: $45
	ld   h, l                                        ; $6ff0: $65
	ld   [hl], a                                     ; $6ff1: $77
	adc  c                                           ; $6ff2: $89
	cp   d                                           ; $6ff3: $ba
	xor  e                                           ; $6ff4: $ab
	xor  e                                           ; $6ff5: $ab
	xor  c                                           ; $6ff6: $a9
	adc  b                                           ; $6ff7: $88
	ld   h, l                                        ; $6ff8: $65
	ld   d, l                                        ; $6ff9: $55
	ld   b, l                                        ; $6ffa: $45
	ld   h, l                                        ; $6ffb: $65
	adc  b                                           ; $6ffc: $88
	sbc  c                                           ; $6ffd: $99
	xor  e                                           ; $6ffe: $ab
	cp   h                                           ; $6fff: $bc
	cp   d                                           ; $7000: $ba
	sbc  c                                           ; $7001: $99
	add  a                                           ; $7002: $87
	ld   h, h                                        ; $7003: $64
	ld   d, l                                        ; $7004: $55
	ld   b, l                                        ; $7005: $45
	ld   h, l                                        ; $7006: $65
	adc  c                                           ; $7007: $89
	xor  d                                           ; $7008: $aa
	cp   h                                           ; $7009: $bc
	cp   h                                           ; $700a: $bc
	xor  d                                           ; $700b: $aa
	sbc  b                                           ; $700c: $98
	ld   [hl], a                                     ; $700d: $77
	ld   d, h                                        ; $700e: $54
	ld   d, h                                        ; $700f: $54
	ld   b, l                                        ; $7010: $45
	ld   h, [hl]                                     ; $7011: $66
	adc  c                                           ; $7012: $89
	sbc  d                                           ; $7013: $9a
	cp   h                                           ; $7014: $bc
	cp   h                                           ; $7015: $bc
	xor  d                                           ; $7016: $aa
	adc  b                                           ; $7017: $88
	halt                                             ; $7018: $76
	ld   d, h                                        ; $7019: $54
	ld   d, h                                        ; $701a: $54
	ld   b, l                                        ; $701b: $45
	ld   h, [hl]                                     ; $701c: $66
	sbc  b                                           ; $701d: $98
	xor  d                                           ; $701e: $aa
	cp   h                                           ; $701f: $bc
	call z, $98ab                                    ; $7020: $cc $ab $98
	halt                                             ; $7023: $76
	ld   b, e                                        ; $7024: $43
	ld   d, e                                        ; $7025: $53
	ld   b, [hl]                                     ; $7026: $46
	ld   h, a                                        ; $7027: $67
	xor  c                                           ; $7028: $a9
	cp   e                                           ; $7029: $bb
	call z, $aacc                                    ; $702a: $cc $cc $aa
	adc  b                                           ; $702d: $88
	ld   h, [hl]                                     ; $702e: $66
	inc  [hl]                                        ; $702f: $34
	ld   d, e                                        ; $7030: $53
	ld   d, [hl]                                     ; $7031: $56
	ld   l, b                                        ; $7032: $68
	sbc  d                                           ; $7033: $9a
	cp   e                                           ; $7034: $bb
	set  3, d                                        ; $7035: $cb $da
	cp   c                                           ; $7037: $b9
	adc  b                                           ; $7038: $88
	ld   d, l                                        ; $7039: $55
	inc  [hl]                                        ; $703a: $34
	ld   b, e                                        ; $703b: $43
	ld   d, [hl]                                     ; $703c: $56
	ld   l, c                                        ; $703d: $69
	sbc  d                                           ; $703e: $9a
	set  1, h                                        ; $703f: $cb $cc
	jp   c, $87b9                                    ; $7041: $da $b9 $87

	ld   d, h                                        ; $7044: $54
	dec  h                                           ; $7045: $25
	inc  [hl]                                        ; $7046: $34
	ld   h, [hl]                                     ; $7047: $66
	ld   a, d                                        ; $7048: $7a
	xor  e                                           ; $7049: $ab
	cp   l                                           ; $704a: $bd
	cp   h                                           ; $704b: $bc
	jp   z, $85a7                                    ; $704c: $ca $a7 $85

	ld   b, e                                        ; $704f: $43
	dec  [hl]                                        ; $7050: $35
	dec  [hl]                                        ; $7051: $35
	halt                                             ; $7052: $76
	sbc  d                                           ; $7053: $9a
	cp   e                                           ; $7054: $bb
	call $aacc                                       ; $7055: $cd $cc $aa
	add  a                                           ; $7058: $87
	ld   [hl], h                                     ; $7059: $74
	ld   b, d                                        ; $705a: $42
	ld   d, e                                        ; $705b: $53
	ld   b, a                                        ; $705c: $47
	ld   l, b                                        ; $705d: $68
	xor  e                                           ; $705e: $ab
	call z, $ccdc                                    ; $705f: $cc $dc $cc
	xor  c                                           ; $7062: $a9
	ld   [hl], a                                     ; $7063: $77
	ld   d, h                                        ; $7064: $54
	inc  sp                                          ; $7065: $33
	ld   d, e                                        ; $7066: $53
	ld   h, a                                        ; $7067: $67
	ld   l, d                                        ; $7068: $6a
	cp   e                                           ; $7069: $bb
	call z, $dadb                                    ; $706a: $cc $db $da
	xor  c                                           ; $706d: $a9
	ld   [hl], a                                     ; $706e: $77
	ld   b, e                                        ; $706f: $43
	inc  h                                           ; $7070: $24
	inc  [hl]                                        ; $7071: $34
	halt                                             ; $7072: $76
	sbc  e                                           ; $7073: $9b
	cp   h                                           ; $7074: $bc
	call $cacc                                       ; $7075: $cd $cc $ca
	sub  [hl]                                        ; $7078: $96
	ld   [hl], l                                     ; $7079: $75
	ld   [hl-], a                                    ; $707a: $32
	dec  [hl]                                        ; $707b: $35
	ld   [hl], $77                                   ; $707c: $36 $77
	cp   d                                           ; $707e: $ba
	cp   h                                           ; $707f: $bc
	call c, $aabc                                    ; $7080: $dc $bc $aa
	add  [hl]                                        ; $7083: $86
	ld   h, e                                        ; $7084: $63
	ld   [hl-], a                                    ; $7085: $32
	ld   d, e                                        ; $7086: $53
	ld   c, b                                        ; $7087: $48
	ld   l, c                                        ; $7088: $69
	jp   z, $dccc                                    ; $7089: $ca $cc $dc

	cp   e                                           ; $708c: $bb
	sbc  d                                           ; $708d: $9a
	ld   h, a                                        ; $708e: $67
	ld   b, e                                        ; $708f: $43
	inc  hl                                          ; $7090: $23
	ld   d, e                                        ; $7091: $53
	ld   [hl], a                                     ; $7092: $77
	ld   a, h                                        ; $7093: $7c
	xor  h                                           ; $7094: $ac
	db   $dd                                         ; $7095: $dd
	cp   e                                           ; $7096: $bb
	ret                                              ; $7097: $c9


	sub  a                                           ; $7098: $97
	ld   h, l                                        ; $7099: $65
	inc  sp                                          ; $709a: $33
	dec  [hl]                                        ; $709b: $35
	ld   [hl], $86                                   ; $709c: $36 $86
	cp   e                                           ; $709e: $bb
	call z, $bccc                                    ; $709f: $cc $cc $bc
	sbc  c                                           ; $70a2: $99
	sub  [hl]                                        ; $70a3: $96
	ld   h, e                                        ; $70a4: $63
	ld   [hl-], a                                    ; $70a5: $32
	ld   b, h                                        ; $70a6: $44
	ld   c, c                                        ; $70a7: $49
	ld   l, c                                        ; $70a8: $69
	set  3, l                                        ; $70a9: $cb $dd
	call c, $8acb                                    ; $70ab: $dc $cb $8a
	ld   h, [hl]                                     ; $70ae: $66
	ld   d, e                                        ; $70af: $53
	inc  hl                                          ; $70b0: $23
	ld   d, e                                        ; $70b1: $53
	ld   a, b                                        ; $70b2: $78
	ld   a, h                                        ; $70b3: $7c
	cp   h                                           ; $70b4: $bc
	call c, $c9cb                                    ; $70b5: $dc $cb $c9
	and  a                                           ; $70b8: $a7
	ld   h, [hl]                                     ; $70b9: $66
	inc  sp                                          ; $70ba: $33
	dec  [hl]                                        ; $70bb: $35
	ld   b, l                                        ; $70bc: $45
	add  a                                           ; $70bd: $87
	cp   h                                           ; $70be: $bc
	cp   l                                           ; $70bf: $bd
	call $a8bc                                       ; $70c0: $cd $bc $a8
	add  [hl]                                        ; $70c3: $86
	ld   h, h                                        ; $70c4: $64
	ld   [hl+], a                                    ; $70c5: $22
	ld   b, h                                        ; $70c6: $44
	ld   c, b                                        ; $70c7: $48
	ld   a, c                                        ; $70c8: $79
	jp   c, $cccc                                    ; $70c9: $da $cc $cc

	cp   d                                           ; $70cc: $ba
	adc  c                                           ; $70cd: $89
	ld   h, [hl]                                     ; $70ce: $66
	ld   d, d                                        ; $70cf: $52
	inc  sp                                          ; $70d0: $33
	ld   d, e                                        ; $70d1: $53
	ld   a, b                                        ; $70d2: $78
	ld   a, h                                        ; $70d3: $7c
	cp   h                                           ; $70d4: $bc
	call c, $c8ba                                    ; $70d5: $dc $ba $c8
	sub  a                                           ; $70d8: $97
	ld   d, [hl]                                     ; $70d9: $56
	ld   [hl-], a                                    ; $70da: $32
	dec  [hl]                                        ; $70db: $35
	ld   b, l                                        ; $70dc: $45
	sub  [hl]                                        ; $70dd: $96
	xor  l                                           ; $70de: $ad
	cp   l                                           ; $70df: $bd
	call z, $98bc                                    ; $70e0: $cc $bc $98
	sub  [hl]                                        ; $70e3: $96
	ld   h, e                                        ; $70e4: $63
	ld   [hl+], a                                    ; $70e5: $22
	ld   b, h                                        ; $70e6: $44
	ld   c, c                                        ; $70e7: $49
	ld   a, c                                        ; $70e8: $79
	jp   z, $ccdd                                    ; $70e9: $ca $dd $cc

	cp   d                                           ; $70ec: $ba
	sbc  b                                           ; $70ed: $98
	ld   h, [hl]                                     ; $70ee: $66
	ld   b, d                                        ; $70ef: $42
	inc  h                                           ; $70f0: $24
	ld   d, e                                        ; $70f1: $53
	adc  c                                           ; $70f2: $89
	ld   a, l                                        ; $70f3: $7d
	set  3, h                                        ; $70f4: $cb $dc
	jp   z, $97b8                                    ; $70f6: $ca $b8 $97

	ld   h, l                                        ; $70f9: $65
	ld   [hl-], a                                    ; $70fa: $32
	dec  [hl]                                        ; $70fb: $35
	ld   b, l                                        ; $70fc: $45
	and  a                                           ; $70fd: $a7
	xor  l                                           ; $70fe: $ad
	xor  l                                           ; $70ff: $ad
	cp   h                                           ; $7100: $bc
	xor  e                                           ; $7101: $ab
	sbc  b                                           ; $7102: $98
	sub  [hl]                                        ; $7103: $96
	ld   h, h                                        ; $7104: $64
	ld   [hl+], a                                    ; $7105: $22
	ld   b, l                                        ; $7106: $45
	ld   c, c                                        ; $7107: $49
	ld   a, c                                        ; $7108: $79
	jp   c, $bbdd                                    ; $7109: $da $dd $bb

	cp   d                                           ; $710c: $ba
	adc  b                                           ; $710d: $88
	ld   h, [hl]                                     ; $710e: $66
	ld   d, d                                        ; $710f: $52
	inc  hl                                          ; $7110: $23
	ld   d, e                                        ; $7111: $53
	ld   a, c                                        ; $7112: $79
	ld   a, l                                        ; $7113: $7d
	cp   h                                           ; $7114: $bc
	call c, $a8ba                                    ; $7115: $dc $ba $a8
	add  a                                           ; $7118: $87
	ld   d, l                                        ; $7119: $55
	ld   [hl-], a                                    ; $711a: $32
	dec  [hl]                                        ; $711b: $35
	ld   b, l                                        ; $711c: $45
	and  a                                           ; $711d: $a7
	xor  h                                           ; $711e: $ac
	xor  l                                           ; $711f: $ad
	cp   e                                           ; $7120: $bb
	cp   d                                           ; $7121: $ba
	xor  b                                           ; $7122: $a8
	add  [hl]                                        ; $7123: $86
	ld   h, h                                        ; $7124: $64
	ld   [hl+], a                                    ; $7125: $22
	ld   b, l                                        ; $7126: $45
	ld   c, b                                        ; $7127: $48
	sub  a                                           ; $7128: $97
	db   $db                                         ; $7129: $db
	call z, $abbc                                    ; $712a: $cc $bc $ab
	sbc  b                                           ; $712d: $98
	halt                                             ; $712e: $76
	ld   d, e                                        ; $712f: $53
	inc  hl                                          ; $7130: $23
	ld   d, h                                        ; $7131: $54
	ld   l, c                                        ; $7132: $69
	ld   a, e                                        ; $7133: $7b
	db   $db                                         ; $7134: $db
	call c, $a9ba                                    ; $7135: $dc $ba $a9
	adc  b                                           ; $7138: $88
	ld   h, [hl]                                     ; $7139: $66
	ld   b, d                                        ; $713a: $42
	dec  h                                           ; $713b: $25
	ld   d, h                                        ; $713c: $54
	and  a                                           ; $713d: $a7
	adc  [hl]                                        ; $713e: $8e
	xor  l                                           ; $713f: $ad
	jp   c, $b9c9                                    ; $7140: $da $c9 $b9

	add  a                                           ; $7143: $87
	ld   h, l                                        ; $7144: $65
	ld   [hl-], a                                    ; $7145: $32
	ld   [hl], $46                                   ; $7146: $36 $46
	and  [hl]                                        ; $7148: $a6
	cp   h                                           ; $7149: $bc
	xor  l                                           ; $714a: $ad
	cp   h                                           ; $714b: $bc
	cp   d                                           ; $714c: $ba
	xor  b                                           ; $714d: $a8
	add  [hl]                                        ; $714e: $86
	ld   h, h                                        ; $714f: $64
	inc  hl                                          ; $7150: $23
	ld   b, l                                        ; $7151: $45
	ld   c, b                                        ; $7152: $48
	add  a                                           ; $7153: $87
	jp   c, $bccd                                    ; $7154: $da $cd $bc

	sbc  d                                           ; $7157: $9a
	adc  b                                           ; $7158: $88
	halt                                             ; $7159: $76
	ld   h, e                                        ; $715a: $63
	inc  sp                                          ; $715b: $33
	ld   d, l                                        ; $715c: $55
	ld   e, d                                        ; $715d: $5a
	ld   a, c                                        ; $715e: $79
	reti                                             ; $715f: $d9


	call z, $aabb                                    ; $7160: $cc $bb $aa
	adc  b                                           ; $7163: $88
	ld   h, [hl]                                     ; $7164: $66
	ld   d, e                                        ; $7165: $53
	inc  [hl]                                        ; $7166: $34
	ld   h, h                                        ; $7167: $64
	ld   l, c                                        ; $7168: $69
	ld   l, h                                        ; $7169: $6c
	jp   z, $baea                                    ; $716a: $ca $ea $ba

	sbc  d                                           ; $716d: $9a
	add  a                                           ; $716e: $87
	ld   h, [hl]                                     ; $716f: $66
	ld   b, e                                        ; $7170: $43
	inc  [hl]                                        ; $7171: $34
	ld   d, h                                        ; $7172: $54
	adc  b                                           ; $7173: $88
	ld   a, l                                        ; $7174: $7d
	cp   h                                           ; $7175: $bc
	jp   c, $99c9                                    ; $7176: $da $c9 $99

	ld   [hl], a                                     ; $7179: $77
	ld   h, [hl]                                     ; $717a: $66
	ld   b, e                                        ; $717b: $43
	dec  [hl]                                        ; $717c: $35
	ld   h, l                                        ; $717d: $65
	adc  c                                           ; $717e: $89

Call_0ec_717f:
	adc  h                                           ; $717f: $8c
	xor  h                                           ; $7180: $ac
	set  1, d                                        ; $7181: $cb $ca
	xor  b                                           ; $7183: $a8
	add  a                                           ; $7184: $87
	ld   h, [hl]                                     ; $7185: $66
	ld   b, e                                        ; $7186: $43
	ld   b, l                                        ; $7187: $45
	ld   d, l                                        ; $7188: $55
	sub  a                                           ; $7189: $97
	sbc  l                                           ; $718a: $9d
	sbc  l                                           ; $718b: $9d
	jp   z, $a9ca                                    ; $718c: $ca $ca $a9

	add  a                                           ; $718f: $87
	ld   h, [hl]                                     ; $7190: $66
	inc  sp                                          ; $7191: $33
	ld   [hl], $55                                   ; $7192: $36 $55
	and  a                                           ; $7194: $a7
	sbc  l                                           ; $7195: $9d
	sbc  l                                           ; $7196: $9d
	jp   z, $99c9                                    ; $7197: $ca $c9 $99

	halt                                             ; $719a: $76
	ld   h, l                                        ; $719b: $65
	ld   b, e                                        ; $719c: $43
	ld   b, [hl]                                     ; $719d: $46
	ld   d, [hl]                                     ; $719e: $56
	and  [hl]                                        ; $719f: $a6
	cp   l                                           ; $71a0: $bd
	xor  l                                           ; $71a1: $ad
	cp   e                                           ; $71a2: $bb
	cp   c                                           ; $71a3: $b9
	sbc  c                                           ; $71a4: $99
	ld   [hl], a                                     ; $71a5: $77
	ld   h, l                                        ; $71a6: $65
	ld   b, e                                        ; $71a7: $43
	ld   b, l                                        ; $71a8: $45
	ld   d, l                                        ; $71a9: $55
	and  a                                           ; $71aa: $a7
	xor  l                                           ; $71ab: $ad
	xor  l                                           ; $71ac: $ad
	cp   d                                           ; $71ad: $ba
	jp   z, Jump_0ec_77a8                            ; $71ae: $ca $a8 $77

	ld   h, [hl]                                     ; $71b1: $66
	ld   b, h                                        ; $71b2: $44
	ld   b, [hl]                                     ; $71b3: $46
	ld   h, l                                        ; $71b4: $65
	and  a                                           ; $71b5: $a7
	sbc  l                                           ; $71b6: $9d
	sbc  h                                           ; $71b7: $9c
	cp   d                                           ; $71b8: $ba
	cp   c                                           ; $71b9: $b9
	sbc  b                                           ; $71ba: $98
	add  a                                           ; $71bb: $87
	halt                                             ; $71bc: $76
	ld   b, e                                        ; $71bd: $43
	ld   [hl], $54                                   ; $71be: $36 $54
	and  a                                           ; $71c0: $a7
	sbc  h                                           ; $71c1: $9c
	sbc  l                                           ; $71c2: $9d
	jp   z, $9aca                                    ; $71c3: $ca $ca $9a

	ld   [hl], a                                     ; $71c6: $77
	halt                                             ; $71c7: $76
	ld   d, h                                        ; $71c8: $54
	dec  [hl]                                        ; $71c9: $35
	ld   [hl], h                                     ; $71ca: $74
	xor  c                                           ; $71cb: $a9
	ld   l, l                                        ; $71cc: $6d
	xor  e                                           ; $71cd: $ab
	reti                                             ; $71ce: $d9


	cp   d                                           ; $71cf: $ba
	adc  c                                           ; $71d0: $89
	add  a                                           ; $71d1: $87
	halt                                             ; $71d2: $76
	ld   d, h                                        ; $71d3: $54
	ld   b, h                                        ; $71d4: $44
	ld   [hl], h                                     ; $71d5: $74
	ld   a, d                                        ; $71d6: $7a
	ld   e, h                                        ; $71d7: $5c
	cp   c                                           ; $71d8: $b9
	jp   c, $99bb                                    ; $71d9: $da $bb $99

	sub  [hl]                                        ; $71dc: $96
	ld   [hl], a                                     ; $71dd: $77
	ld   h, l                                        ; $71de: $65
	ld   b, e                                        ; $71df: $43
	ld   h, l                                        ; $71e0: $65
	ld   e, c                                        ; $71e1: $59
	ld   l, b                                        ; $71e2: $68
	ret                                              ; $71e3: $c9


	call z, $a9ac                                    ; $71e4: $cc $ac $a9
	sub  a                                           ; $71e7: $97
	ld   [hl], a                                     ; $71e8: $77
	ld   h, [hl]                                     ; $71e9: $66
	ld   d, e                                        ; $71ea: $53
	ld   d, a                                        ; $71eb: $57
	add  hl, sp                                      ; $71ec: $39
	add  l                                           ; $71ed: $85
	reti                                             ; $71ee: $d9


	xor  [hl]                                        ; $71ef: $ae
	sbc  h                                           ; $71f0: $9c
	cp   c                                           ; $71f1: $b9
	xor  b                                           ; $71f2: $a8
	ld   [hl], a                                     ; $71f3: $77
	halt                                             ; $71f4: $76
	ld   d, h                                        ; $71f5: $54
	scf                                              ; $71f6: $37
	ld   d, h                                        ; $71f7: $54
	and  [hl]                                        ; $71f8: $a6
	sbc  l                                           ; $71f9: $9d
	adc  h                                           ; $71fa: $8c
	cp   d                                           ; $71fb: $ba
	ret                                              ; $71fc: $c9


	sbc  c                                           ; $71fd: $99
	ld   [hl], a                                     ; $71fe: $77
	ld   [hl], a                                     ; $71ff: $77
	ld   d, l                                        ; $7200: $55
	ld   b, h                                        ; $7201: $44
	ld   [hl], h                                     ; $7202: $74
	ld   a, b                                        ; $7203: $78
	ld   l, h                                        ; $7204: $6c
	xor  d                                           ; $7205: $aa
	jp   c, $9abb                                    ; $7206: $da $bb $9a

	sub  a                                           ; $7209: $97
	add  a                                           ; $720a: $87
	ld   h, l                                        ; $720b: $65
	ld   b, e                                        ; $720c: $43
	ld   h, l                                        ; $720d: $65
	ld   c, d                                        ; $720e: $4a
	ld   l, b                                        ; $720f: $68
	reti                                             ; $7210: $d9


	call z, $aa9c                                    ; $7211: $cc $9c $aa
	and  a                                           ; $7214: $a7
	add  a                                           ; $7215: $87
	ld   h, [hl]                                     ; $7216: $66
	ld   d, h                                        ; $7217: $54
	ld   b, a                                        ; $7218: $47
	ld   b, [hl]                                     ; $7219: $46
	sub  [hl]                                        ; $721a: $96
	cp   e                                           ; $721b: $bb
	sbc  h                                           ; $721c: $9c
	cp   e                                           ; $721d: $bb
	ret                                              ; $721e: $c9


	xor  d                                           ; $721f: $aa
	ld   a, b                                        ; $7220: $78
	halt                                             ; $7221: $76
	ld   h, l                                        ; $7222: $65
	dec  [hl]                                        ; $7223: $35
	ld   h, h                                        ; $7224: $64
	adc  b                                           ; $7225: $88
	ld   l, h                                        ; $7226: $6c
	sbc  c                                           ; $7227: $99
	jp   c, $9abc                                    ; $7228: $da $bc $9a

	sub  a                                           ; $722b: $97
	add  a                                           ; $722c: $87
	ld   h, [hl]                                     ; $722d: $66
	ld   b, e                                        ; $722e: $43
	ld   h, l                                        ; $722f: $65
	ld   c, c                                        ; $7230: $49
	ld   h, a                                        ; $7231: $67
	cp   c                                           ; $7232: $b9
	cp   e                                           ; $7233: $bb
	xor  e                                           ; $7234: $ab
	xor  c                                           ; $7235: $a9
	sbc  b                                           ; $7236: $98
	add  a                                           ; $7237: $87
	halt                                             ; $7238: $76
	ld   d, h                                        ; $7239: $54
	ld   b, a                                        ; $723a: $47
	ld   b, [hl]                                     ; $723b: $46
	add  [hl]                                        ; $723c: $86
	xor  d                                           ; $723d: $aa
	xor  h                                           ; $723e: $ac
	xor  e                                           ; $723f: $ab
	ret                                              ; $7240: $c9


	cp   c                                           ; $7241: $b9
	adc  b                                           ; $7242: $88
	ld   [hl], a                                     ; $7243: $77
	ld   h, [hl]                                     ; $7244: $66
	inc  [hl]                                        ; $7245: $34
	ld   [hl], e                                     ; $7246: $73
	ld   a, b                                        ; $7247: $78
	ld   e, d                                        ; $7248: $5a
	sbc  c                                           ; $7249: $99
	jp   z, $9bbb                                    ; $724a: $ca $bb $9b

	adc  c                                           ; $724d: $89
	add  a                                           ; $724e: $87
	halt                                             ; $724f: $76
	ld   h, e                                        ; $7250: $63
	ld   d, [hl]                                     ; $7251: $56
	ld   c, b                                        ; $7252: $48
	halt                                             ; $7253: $76
	cp   b                                           ; $7254: $b8
	xor  e                                           ; $7255: $ab
	cp   e                                           ; $7256: $bb
	xor  e                                           ; $7257: $ab
	sbc  b                                           ; $7258: $98
	add  a                                           ; $7259: $87
	halt                                             ; $725a: $76
	ld   h, l                                        ; $725b: $65
	ld   [hl], $64                                   ; $725c: $36 $64
	add  [hl]                                        ; $725e: $86
	ld   a, e                                        ; $725f: $7b
	adc  e                                           ; $7260: $8b
	cp   d                                           ; $7261: $ba
	jp   z, $88aa                                    ; $7262: $ca $aa $88

	add  a                                           ; $7265: $87
	halt                                             ; $7266: $76
	ld   d, e                                        ; $7267: $53
	ld   h, l                                        ; $7268: $65
	ld   c, b                                        ; $7269: $48
	ld   h, a                                        ; $726a: $67
	xor  b                                           ; $726b: $a8
	cp   d                                           ; $726c: $ba
	xor  e                                           ; $726d: $ab
	xor  d                                           ; $726e: $aa
	sbc  c                                           ; $726f: $99
	add  a                                           ; $7270: $87
	add  [hl]                                        ; $7271: $86
	ld   h, l                                        ; $7272: $65
	ld   [hl], $54                                   ; $7273: $36 $54
	add  [hl]                                        ; $7275: $86
	ld   a, c                                        ; $7276: $79
	sbc  d                                           ; $7277: $9a
	xor  e                                           ; $7278: $ab
	cp   e                                           ; $7279: $bb
	cp   c                                           ; $727a: $b9
	sbc  c                                           ; $727b: $99
	adc  b                                           ; $727c: $88
	ld   h, [hl]                                     ; $727d: $66
	ld   d, h                                        ; $727e: $54
	ld   h, l                                        ; $727f: $65
	ld   c, b                                        ; $7280: $48
	ld   h, a                                        ; $7281: $67
	sbc  b                                           ; $7282: $98
	cp   d                                           ; $7283: $ba
	xor  h                                           ; $7284: $ac
	cp   d                                           ; $7285: $ba
	sbc  c                                           ; $7286: $99
	adc  b                                           ; $7287: $88
	add  a                                           ; $7288: $87
	ld   h, l                                        ; $7289: $65
	ld   b, [hl]                                     ; $728a: $46
	ld   d, h                                        ; $728b: $54
	halt                                             ; $728c: $76
	ld   l, c                                        ; $728d: $69
	adc  d                                           ; $728e: $8a
	xor  d                                           ; $728f: $aa
	cp   d                                           ; $7290: $ba
	xor  d                                           ; $7291: $aa
	xor  b                                           ; $7292: $a8
	sbc  b                                           ; $7293: $98
	ld   [hl], a                                     ; $7294: $77
	ld   h, h                                        ; $7295: $64
	ld   d, [hl]                                     ; $7296: $56
	ld   b, a                                        ; $7297: $47
	ld   h, [hl]                                     ; $7298: $66
	sbc  b                                           ; $7299: $98
	xor  e                                           ; $729a: $ab
	cp   e                                           ; $729b: $bb
	cp   e                                           ; $729c: $bb
	sbc  c                                           ; $729d: $99
	sbc  c                                           ; $729e: $99
	sub  a                                           ; $729f: $97
	halt                                             ; $72a0: $76
	ld   d, l                                        ; $72a1: $55
	ld   h, h                                        ; $72a2: $64
	ld   d, a                                        ; $72a3: $57
	ld   e, b                                        ; $72a4: $58
	adc  c                                           ; $72a5: $89
	xor  d                                           ; $72a6: $aa
	xor  e                                           ; $72a7: $ab
	cp   d                                           ; $72a8: $ba
	xor  c                                           ; $72a9: $a9
	sbc  b                                           ; $72aa: $98
	ld   [hl], a                                     ; $72ab: $77
	ld   [hl], l                                     ; $72ac: $75
	ld   d, [hl]                                     ; $72ad: $56
	ld   d, l                                        ; $72ae: $55
	ld   [hl], l                                     ; $72af: $75
	ld   l, c                                        ; $72b0: $69
	adc  c                                           ; $72b1: $89
	xor  d                                           ; $72b2: $aa
	cp   e                                           ; $72b3: $bb
	xor  d                                           ; $72b4: $aa
	sbc  b                                           ; $72b5: $98
	sbc  b                                           ; $72b6: $98
	ld   [hl], a                                     ; $72b7: $77
	ld   h, l                                        ; $72b8: $65
	ld   h, [hl]                                     ; $72b9: $66
	ld   b, [hl]                                     ; $72ba: $46
	ld   h, l                                        ; $72bb: $65
	adc  b                                           ; $72bc: $88
	sbc  e                                           ; $72bd: $9b
	xor  d                                           ; $72be: $aa
	cp   d                                           ; $72bf: $ba
	cp   d                                           ; $72c0: $ba
	sbc  c                                           ; $72c1: $99
	sbc  b                                           ; $72c2: $98
	halt                                             ; $72c3: $76
	ld   d, l                                        ; $72c4: $55
	ld   h, l                                        ; $72c5: $65
	ld   d, [hl]                                     ; $72c6: $56
	ld   d, a                                        ; $72c7: $57
	adc  b                                           ; $72c8: $88
	xor  e                                           ; $72c9: $ab
	xor  h                                           ; $72ca: $ac
	xor  d                                           ; $72cb: $aa
	cp   c                                           ; $72cc: $b9
	sbc  b                                           ; $72cd: $98
	add  a                                           ; $72ce: $87
	halt                                             ; $72cf: $76
	ld   d, l                                        ; $72d0: $55
	ld   h, h                                        ; $72d1: $64
	ld   h, [hl]                                     ; $72d2: $66
	ld   e, b                                        ; $72d3: $58
	adc  b                                           ; $72d4: $88
	cp   d                                           ; $72d5: $ba
	cp   e                                           ; $72d6: $bb
	cp   e                                           ; $72d7: $bb
	xor  c                                           ; $72d8: $a9
	sbc  b                                           ; $72d9: $98
	ld   [hl], a                                     ; $72da: $77
	ld   h, l                                        ; $72db: $65
	ld   d, [hl]                                     ; $72dc: $56
	ld   b, l                                        ; $72dd: $45
	ld   h, l                                        ; $72de: $65
	ld   a, b                                        ; $72df: $78
	adc  d                                           ; $72e0: $8a
	xor  d                                           ; $72e1: $aa
	res  5, e                                        ; $72e2: $cb $ab
	xor  d                                           ; $72e4: $aa
	adc  b                                           ; $72e5: $88
	ld   [hl], a                                     ; $72e6: $77
	ld   d, l                                        ; $72e7: $55
	ld   h, l                                        ; $72e8: $65
	ld   d, [hl]                                     ; $72e9: $56
	ld   d, a                                        ; $72ea: $57
	add  a                                           ; $72eb: $87
	sbc  d                                           ; $72ec: $9a
	cp   e                                           ; $72ed: $bb
	cp   e                                           ; $72ee: $bb
	xor  d                                           ; $72ef: $aa
	xor  d                                           ; $72f0: $aa
	adc  b                                           ; $72f1: $88
	halt                                             ; $72f2: $76
	ld   d, l                                        ; $72f3: $55
	ld   h, h                                        ; $72f4: $64
	ld   h, l                                        ; $72f5: $65
	ld   h, a                                        ; $72f6: $67
	ld   a, c                                        ; $72f7: $79
	xor  d                                           ; $72f8: $aa
	xor  e                                           ; $72f9: $ab
	cp   e                                           ; $72fa: $bb
	cp   c                                           ; $72fb: $b9
	sbc  b                                           ; $72fc: $98
	sub  a                                           ; $72fd: $97
	halt                                             ; $72fe: $76
	ld   d, [hl]                                     ; $72ff: $56
	ld   d, l                                        ; $7300: $55
	ld   h, l                                        ; $7301: $65
	ld   h, a                                        ; $7302: $67
	ld   a, c                                        ; $7303: $79
	xor  d                                           ; $7304: $aa
	xor  d                                           ; $7305: $aa
	xor  e                                           ; $7306: $ab
	cp   d                                           ; $7307: $ba
	sbc  b                                           ; $7308: $98
	add  a                                           ; $7309: $87
	ld   [hl], l                                     ; $730a: $75
	ld   d, [hl]                                     ; $730b: $56
	ld   d, l                                        ; $730c: $55
	ld   h, l                                        ; $730d: $65
	ld   h, a                                        ; $730e: $67
	ld   a, c                                        ; $730f: $79
	sbc  d                                           ; $7310: $9a
	cp   e                                           ; $7311: $bb
	xor  e                                           ; $7312: $ab
	xor  d                                           ; $7313: $aa
	xor  b                                           ; $7314: $a8
	add  a                                           ; $7315: $87
	ld   [hl], l                                     ; $7316: $75
	ld   h, l                                        ; $7317: $65
	ld   d, l                                        ; $7318: $55
	ld   d, [hl]                                     ; $7319: $56
	ld   h, a                                        ; $731a: $67
	ld   a, c                                        ; $731b: $79
	sbc  d                                           ; $731c: $9a
	cp   d                                           ; $731d: $ba
	cp   d                                           ; $731e: $ba
	xor  d                                           ; $731f: $aa
	xor  b                                           ; $7320: $a8
	sub  a                                           ; $7321: $97
	ld   [hl], l                                     ; $7322: $75
	ld   h, [hl]                                     ; $7323: $66
	ld   d, l                                        ; $7324: $55
	ld   d, l                                        ; $7325: $55
	ld   h, a                                        ; $7326: $67
	ld   a, c                                        ; $7327: $79
	sbc  d                                           ; $7328: $9a
	xor  e                                           ; $7329: $ab
	xor  e                                           ; $732a: $ab
	cp   c                                           ; $732b: $b9
	sbc  b                                           ; $732c: $98
	sbc  b                                           ; $732d: $98
	halt                                             ; $732e: $76
	ld   h, [hl]                                     ; $732f: $66
	ld   d, l                                        ; $7330: $55
	ld   d, l                                        ; $7331: $55
	ld   h, a                                        ; $7332: $67
	ld   a, c                                        ; $7333: $79
	xor  d                                           ; $7334: $aa
	xor  e                                           ; $7335: $ab
	cp   e                                           ; $7336: $bb
	xor  d                                           ; $7337: $aa
	sbc  c                                           ; $7338: $99
	sbc  b                                           ; $7339: $98
	halt                                             ; $733a: $76
	ld   d, [hl]                                     ; $733b: $56
	ld   d, l                                        ; $733c: $55
	ld   d, l                                        ; $733d: $55
	ld   d, a                                        ; $733e: $57
	ld   a, c                                        ; $733f: $79
	xor  c                                           ; $7340: $a9
	cp   e                                           ; $7341: $bb
	cp   e                                           ; $7342: $bb
	xor  d                                           ; $7343: $aa
	xor  c                                           ; $7344: $a9
	sbc  b                                           ; $7345: $98
	halt                                             ; $7346: $76
	ld   h, l                                        ; $7347: $65
	ld   d, l                                        ; $7348: $55
	ld   b, [hl]                                     ; $7349: $46
	ld   d, [hl]                                     ; $734a: $56
	ld   [hl], a                                     ; $734b: $77
	sbc  d                                           ; $734c: $9a
	sbc  e                                           ; $734d: $9b
	cp   d                                           ; $734e: $ba
	cp   d                                           ; $734f: $ba
	xor  c                                           ; $7350: $a9
	sbc  b                                           ; $7351: $98
	add  a                                           ; $7352: $87
	ld   h, [hl]                                     ; $7353: $66
	ld   d, l                                        ; $7354: $55
	ld   d, l                                        ; $7355: $55
	ld   d, l                                        ; $7356: $55
	ld   [hl], a                                     ; $7357: $77
	adc  d                                           ; $7358: $8a
	sbc  e                                           ; $7359: $9b
	cp   d                                           ; $735a: $ba
	cp   e                                           ; $735b: $bb
	xor  e                                           ; $735c: $ab
	sbc  c                                           ; $735d: $99
	add  a                                           ; $735e: $87
	halt                                             ; $735f: $76
	ld   d, l                                        ; $7360: $55
	ld   d, h                                        ; $7361: $54
	ld   d, l                                        ; $7362: $55
	ld   d, a                                        ; $7363: $57
	ld   a, b                                        ; $7364: $78
	xor  c                                           ; $7365: $a9
	xor  e                                           ; $7366: $ab
	xor  e                                           ; $7367: $ab
	xor  d                                           ; $7368: $aa
	xor  c                                           ; $7369: $a9
	sbc  c                                           ; $736a: $99
	ld   [hl], a                                     ; $736b: $77
	ld   h, l                                        ; $736c: $65
	ld   h, l                                        ; $736d: $65
	ld   d, l                                        ; $736e: $55
	ld   d, [hl]                                     ; $736f: $56
	ld   [hl], a                                     ; $7370: $77
	sbc  d                                           ; $7371: $9a
	xor  e                                           ; $7372: $ab
	cp   e                                           ; $7373: $bb
	res  5, e                                        ; $7374: $cb $ab
	sbc  c                                           ; $7376: $99
	sub  a                                           ; $7377: $97
	halt                                             ; $7378: $76
	ld   d, [hl]                                     ; $7379: $56
	ld   d, h                                        ; $737a: $54
	ld   h, l                                        ; $737b: $65
	ld   d, a                                        ; $737c: $57
	ld   a, b                                        ; $737d: $78
	sbc  c                                           ; $737e: $99
	xor  e                                           ; $737f: $ab
	cp   e                                           ; $7380: $bb
	cp   d                                           ; $7381: $ba
	cp   c                                           ; $7382: $b9
	sbc  b                                           ; $7383: $98
	ld   [hl], a                                     ; $7384: $77
	ld   h, [hl]                                     ; $7385: $66
	ld   h, [hl]                                     ; $7386: $66
	ld   d, l                                        ; $7387: $55
	ld   d, l                                        ; $7388: $55
	ld   h, a                                        ; $7389: $67
	ld   a, b                                        ; $738a: $78
	sbc  c                                           ; $738b: $99
	xor  d                                           ; $738c: $aa
	cp   e                                           ; $738d: $bb
	cp   e                                           ; $738e: $bb
	xor  c                                           ; $738f: $a9
	sbc  b                                           ; $7390: $98
	ld   [hl], a                                     ; $7391: $77
	ld   h, [hl]                                     ; $7392: $66
	ld   h, l                                        ; $7393: $65
	ld   d, [hl]                                     ; $7394: $56
	ld   b, [hl]                                     ; $7395: $46
	ld   h, [hl]                                     ; $7396: $66
	adc  c                                           ; $7397: $89
	sbc  d                                           ; $7398: $9a
	xor  e                                           ; $7399: $ab
	res  5, e                                        ; $739a: $cb $ab
	sbc  c                                           ; $739c: $99
	sbc  b                                           ; $739d: $98
	add  a                                           ; $739e: $87
	ld   h, [hl]                                     ; $739f: $66
	ld   h, l                                        ; $73a0: $65
	ld   d, [hl]                                     ; $73a1: $56
	ld   d, [hl]                                     ; $73a2: $56
	ld   h, a                                        ; $73a3: $67
	sbc  c                                           ; $73a4: $99
	sbc  e                                           ; $73a5: $9b
	xor  d                                           ; $73a6: $aa
	cp   d                                           ; $73a7: $ba
	cp   d                                           ; $73a8: $ba
	xor  d                                           ; $73a9: $aa
	sbc  b                                           ; $73aa: $98
	add  a                                           ; $73ab: $87
	ld   h, [hl]                                     ; $73ac: $66
	ld   h, l                                        ; $73ad: $65
	ld   h, l                                        ; $73ae: $65
	ld   d, [hl]                                     ; $73af: $56
	ld   h, a                                        ; $73b0: $67
	adc  c                                           ; $73b1: $89
	sbc  e                                           ; $73b2: $9b
	xor  e                                           ; $73b3: $ab
	cp   d                                           ; $73b4: $ba
	xor  e                                           ; $73b5: $ab
	sbc  d                                           ; $73b6: $9a
	sbc  b                                           ; $73b7: $98
	add  a                                           ; $73b8: $87
	ld   h, [hl]                                     ; $73b9: $66
	ld   h, l                                        ; $73ba: $65
	ld   d, l                                        ; $73bb: $55
	ld   d, [hl]                                     ; $73bc: $56
	ld   h, a                                        ; $73bd: $67
	adc  c                                           ; $73be: $89
	sbc  d                                           ; $73bf: $9a
	cp   e                                           ; $73c0: $bb
	cp   d                                           ; $73c1: $ba
	xor  e                                           ; $73c2: $ab
	sbc  d                                           ; $73c3: $9a
	adc  b                                           ; $73c4: $88
	add  a                                           ; $73c5: $87
	ld   h, [hl]                                     ; $73c6: $66
	ld   h, l                                        ; $73c7: $65
	ld   d, l                                        ; $73c8: $55
	ld   d, [hl]                                     ; $73c9: $56
	ld   h, [hl]                                     ; $73ca: $66
	ld   a, b                                        ; $73cb: $78
	sbc  d                                           ; $73cc: $9a
	cp   e                                           ; $73cd: $bb
	cp   e                                           ; $73ce: $bb
	xor  d                                           ; $73cf: $aa
	xor  c                                           ; $73d0: $a9
	sbc  c                                           ; $73d1: $99
	sbc  b                                           ; $73d2: $98
	ld   h, [hl]                                     ; $73d3: $66
	ld   h, l                                        ; $73d4: $65
	ld   d, l                                        ; $73d5: $55
	ld   d, l                                        ; $73d6: $55
	ld   h, [hl]                                     ; $73d7: $66
	ld   [hl], a                                     ; $73d8: $77
	adc  c                                           ; $73d9: $89
	xor  d                                           ; $73da: $aa
	cp   e                                           ; $73db: $bb
	cp   e                                           ; $73dc: $bb
	cp   c                                           ; $73dd: $b9
	xor  c                                           ; $73de: $a9
	adc  b                                           ; $73df: $88
	halt                                             ; $73e0: $76
	ld   h, [hl]                                     ; $73e1: $66
	ld   d, l                                        ; $73e2: $55
	ld   d, h                                        ; $73e3: $54
	ld   d, [hl]                                     ; $73e4: $56
	ld   h, a                                        ; $73e5: $67
	adc  c                                           ; $73e6: $89
	xor  e                                           ; $73e7: $ab
	xor  e                                           ; $73e8: $ab
	cp   e                                           ; $73e9: $bb
	xor  d                                           ; $73ea: $aa
	xor  d                                           ; $73eb: $aa
	adc  b                                           ; $73ec: $88
	sub  a                                           ; $73ed: $97
	ld   h, [hl]                                     ; $73ee: $66
	ld   h, l                                        ; $73ef: $65
	ld   d, l                                        ; $73f0: $55
	ld   d, l                                        ; $73f1: $55
	ld   d, [hl]                                     ; $73f2: $56
	ld   [hl], a                                     ; $73f3: $77
	adc  c                                           ; $73f4: $89
	cp   e                                           ; $73f5: $bb
	res  7, d                                        ; $73f6: $cb $ba
	xor  c                                           ; $73f8: $a9
	xor  c                                           ; $73f9: $a9
	adc  c                                           ; $73fa: $89
	halt                                             ; $73fb: $76
	ld   h, [hl]                                     ; $73fc: $66
	ld   d, l                                        ; $73fd: $55
	ld   d, l                                        ; $73fe: $55
	ld   d, l                                        ; $73ff: $55
	ld   h, a                                        ; $7400: $67
	ld   a, c                                        ; $7401: $79
	sbc  d                                           ; $7402: $9a
	cp   h                                           ; $7403: $bc
	cp   e                                           ; $7404: $bb
	cp   d                                           ; $7405: $ba
	xor  d                                           ; $7406: $aa
	sbc  c                                           ; $7407: $99
	add  a                                           ; $7408: $87
	halt                                             ; $7409: $76
	ld   h, l                                        ; $740a: $65
	ld   d, l                                        ; $740b: $55
	ld   d, l                                        ; $740c: $55
	ld   d, [hl]                                     ; $740d: $56
	ld   h, a                                        ; $740e: $67
	adc  c                                           ; $740f: $89
	xor  e                                           ; $7410: $ab
	res  7, e                                        ; $7411: $cb $bb
	cp   d                                           ; $7413: $ba
	sbc  d                                           ; $7414: $9a
	sbc  c                                           ; $7415: $99
	add  a                                           ; $7416: $87
	ld   h, [hl]                                     ; $7417: $66
	ld   h, l                                        ; $7418: $65
	ld   d, l                                        ; $7419: $55
	ld   d, l                                        ; $741a: $55
	ld   d, [hl]                                     ; $741b: $56
	ld   h, a                                        ; $741c: $67
	adc  c                                           ; $741d: $89
	xor  e                                           ; $741e: $ab
	cp   e                                           ; $741f: $bb
	cp   e                                           ; $7420: $bb
	xor  d                                           ; $7421: $aa
	xor  c                                           ; $7422: $a9
	sbc  b                                           ; $7423: $98
	add  a                                           ; $7424: $87
	ld   h, [hl]                                     ; $7425: $66
	ld   h, [hl]                                     ; $7426: $66
	ld   h, l                                        ; $7427: $65
	ld   d, l                                        ; $7428: $55
	ld   d, [hl]                                     ; $7429: $56
	ld   h, a                                        ; $742a: $67
	adc  c                                           ; $742b: $89
	sbc  d                                           ; $742c: $9a
	xor  e                                           ; $742d: $ab
	cp   d                                           ; $742e: $ba
	xor  c                                           ; $742f: $a9
	sbc  d                                           ; $7430: $9a
	sbc  b                                           ; $7431: $98
	add  a                                           ; $7432: $87
	halt                                             ; $7433: $76
	ld   h, [hl]                                     ; $7434: $66
	ld   h, [hl]                                     ; $7435: $66
	ld   d, [hl]                                     ; $7436: $56
	ld   h, [hl]                                     ; $7437: $66
	ld   h, a                                        ; $7438: $67
	ld   a, c                                        ; $7439: $79
	sbc  d                                           ; $743a: $9a
	xor  d                                           ; $743b: $aa
	xor  d                                           ; $743c: $aa
	xor  d                                           ; $743d: $aa
	sbc  d                                           ; $743e: $9a
	sbc  c                                           ; $743f: $99
	sbc  b                                           ; $7440: $98
	ld   [hl], a                                     ; $7441: $77
	ld   [hl], a                                     ; $7442: $77
	ld   h, [hl]                                     ; $7443: $66
	ld   h, [hl]                                     ; $7444: $66
	ld   h, [hl]                                     ; $7445: $66
	ld   h, [hl]                                     ; $7446: $66
	ld   [hl], a                                     ; $7447: $77
	sbc  c                                           ; $7448: $99
	sbc  c                                           ; $7449: $99
	xor  c                                           ; $744a: $a9
	sbc  c                                           ; $744b: $99
	xor  d                                           ; $744c: $aa
	xor  c                                           ; $744d: $a9
	adc  c                                           ; $744e: $89
	adc  b                                           ; $744f: $88
	ld   [hl], a                                     ; $7450: $77
	ld   [hl], a                                     ; $7451: $77
	ld   [hl], a                                     ; $7452: $77
	ld   h, [hl]                                     ; $7453: $66
	ld   h, [hl]                                     ; $7454: $66
	ld   h, a                                        ; $7455: $67
	ld   [hl], a                                     ; $7456: $77
	adc  c                                           ; $7457: $89
	sbc  c                                           ; $7458: $99
	sbc  d                                           ; $7459: $9a
	xor  c                                           ; $745a: $a9
	sbc  c                                           ; $745b: $99
	sbc  c                                           ; $745c: $99
	adc  c                                           ; $745d: $89
	sbc  b                                           ; $745e: $98
	adc  b                                           ; $745f: $88
	ld   [hl], a                                     ; $7460: $77
	ld   [hl], a                                     ; $7461: $77
	halt                                             ; $7462: $76
	ld   h, [hl]                                     ; $7463: $66
	ld   [hl], a                                     ; $7464: $77
	ld   [hl], a                                     ; $7465: $77
	adc  b                                           ; $7466: $88
	sbc  b                                           ; $7467: $98
	sbc  c                                           ; $7468: $99
	sbc  c                                           ; $7469: $99
	sbc  c                                           ; $746a: $99
	sbc  b                                           ; $746b: $98
	adc  b                                           ; $746c: $88
	sbc  c                                           ; $746d: $99
	adc  b                                           ; $746e: $88
	add  a                                           ; $746f: $87
	ld   [hl], a                                     ; $7470: $77
	ld   [hl], a                                     ; $7471: $77
	ld   [hl], a                                     ; $7472: $77
	ld   [hl], a                                     ; $7473: $77
	ld   [hl], a                                     ; $7474: $77
	ld   a, b                                        ; $7475: $78
	adc  b                                           ; $7476: $88
	sbc  b                                           ; $7477: $98
	adc  b                                           ; $7478: $88
	sbc  b                                           ; $7479: $98
	adc  b                                           ; $747a: $88
	adc  b                                           ; $747b: $88
	sbc  c                                           ; $747c: $99
	sbc  b                                           ; $747d: $98
	adc  b                                           ; $747e: $88
	adc  b                                           ; $747f: $88
	ld   [hl], a                                     ; $7480: $77
	ld   [hl], a                                     ; $7481: $77
	ld   [hl], a                                     ; $7482: $77
	ld   [hl], a                                     ; $7483: $77
	ld   [hl], a                                     ; $7484: $77
	adc  b                                           ; $7485: $88
	adc  b                                           ; $7486: $88
	sbc  c                                           ; $7487: $99
	sbc  c                                           ; $7488: $99
	sbc  b                                           ; $7489: $98
	sbc  c                                           ; $748a: $99
	sbc  c                                           ; $748b: $99
	sbc  b                                           ; $748c: $98
	adc  b                                           ; $748d: $88
	adc  b                                           ; $748e: $88
	adc  b                                           ; $748f: $88
	add  a                                           ; $7490: $87
	add  a                                           ; $7491: $87
	ld   [hl], a                                     ; $7492: $77
	ld   [hl], a                                     ; $7493: $77
	adc  b                                           ; $7494: $88
	adc  b                                           ; $7495: $88
	adc  b                                           ; $7496: $88
	adc  b                                           ; $7497: $88
	adc  b                                           ; $7498: $88
	adc  b                                           ; $7499: $88
	adc  b                                           ; $749a: $88
	adc  b                                           ; $749b: $88
	adc  b                                           ; $749c: $88
	adc  b                                           ; $749d: $88
	adc  b                                           ; $749e: $88
	adc  b                                           ; $749f: $88
	adc  b                                           ; $74a0: $88
	adc  b                                           ; $74a1: $88
	adc  b                                           ; $74a2: $88
	adc  b                                           ; $74a3: $88
	adc  b                                           ; $74a4: $88
	adc  b                                           ; $74a5: $88
	adc  b                                           ; $74a6: $88
	adc  b                                           ; $74a7: $88
	adc  b                                           ; $74a8: $88
	adc  b                                           ; $74a9: $88
	adc  b                                           ; $74aa: $88
	adc  b                                           ; $74ab: $88
	adc  b                                           ; $74ac: $88
	adc  b                                           ; $74ad: $88
	adc  b                                           ; $74ae: $88
	adc  b                                           ; $74af: $88
	adc  b                                           ; $74b0: $88
	adc  b                                           ; $74b1: $88
	adc  b                                           ; $74b2: $88
	adc  b                                           ; $74b3: $88
	adc  b                                           ; $74b4: $88
	adc  b                                           ; $74b5: $88
	adc  b                                           ; $74b6: $88
	adc  b                                           ; $74b7: $88
	adc  b                                           ; $74b8: $88
	adc  b                                           ; $74b9: $88
	adc  b                                           ; $74ba: $88
	adc  b                                           ; $74bb: $88
	adc  b                                           ; $74bc: $88
	adc  b                                           ; $74bd: $88
	adc  b                                           ; $74be: $88
	adc  b                                           ; $74bf: $88
	adc  b                                           ; $74c0: $88
	adc  b                                           ; $74c1: $88
	adc  b                                           ; $74c2: $88
	adc  b                                           ; $74c3: $88
	adc  b                                           ; $74c4: $88
	adc  b                                           ; $74c5: $88
	adc  b                                           ; $74c6: $88
	adc  b                                           ; $74c7: $88
	adc  b                                           ; $74c8: $88
	adc  b                                           ; $74c9: $88
	adc  b                                           ; $74ca: $88

Jump_0ec_74cb:
	adc  b                                           ; $74cb: $88
	adc  b                                           ; $74cc: $88
	adc  b                                           ; $74cd: $88
	adc  b                                           ; $74ce: $88
	adc  b                                           ; $74cf: $88
	adc  b                                           ; $74d0: $88
	adc  b                                           ; $74d1: $88
	adc  b                                           ; $74d2: $88
	adc  b                                           ; $74d3: $88
	adc  b                                           ; $74d4: $88
	adc  b                                           ; $74d5: $88
	adc  b                                           ; $74d6: $88
	adc  b                                           ; $74d7: $88
	adc  b                                           ; $74d8: $88
	adc  b                                           ; $74d9: $88
	adc  b                                           ; $74da: $88
	adc  b                                           ; $74db: $88
	adc  b                                           ; $74dc: $88
	adc  b                                           ; $74dd: $88
	adc  b                                           ; $74de: $88
	adc  b                                           ; $74df: $88
	adc  b                                           ; $74e0: $88
	adc  b                                           ; $74e1: $88
	adc  b                                           ; $74e2: $88
	adc  b                                           ; $74e3: $88
	adc  b                                           ; $74e4: $88
	adc  b                                           ; $74e5: $88
	adc  b                                           ; $74e6: $88
	adc  b                                           ; $74e7: $88
	adc  b                                           ; $74e8: $88
	adc  b                                           ; $74e9: $88
	adc  b                                           ; $74ea: $88
	adc  b                                           ; $74eb: $88
	adc  b                                           ; $74ec: $88
	adc  b                                           ; $74ed: $88
	adc  b                                           ; $74ee: $88
	adc  b                                           ; $74ef: $88
	adc  b                                           ; $74f0: $88
	adc  b                                           ; $74f1: $88
	adc  b                                           ; $74f2: $88
	adc  b                                           ; $74f3: $88
	adc  b                                           ; $74f4: $88
	adc  b                                           ; $74f5: $88
	adc  b                                           ; $74f6: $88
	adc  b                                           ; $74f7: $88
	adc  b                                           ; $74f8: $88
	adc  b                                           ; $74f9: $88
	adc  b                                           ; $74fa: $88
	adc  b                                           ; $74fb: $88
	adc  b                                           ; $74fc: $88
	adc  b                                           ; $74fd: $88
	adc  b                                           ; $74fe: $88
	adc  b                                           ; $74ff: $88
	adc  b                                           ; $7500: $88
	adc  b                                           ; $7501: $88
	adc  b                                           ; $7502: $88
	adc  b                                           ; $7503: $88
	adc  b                                           ; $7504: $88
	adc  b                                           ; $7505: $88
	adc  b                                           ; $7506: $88
	adc  b                                           ; $7507: $88
	adc  b                                           ; $7508: $88
	adc  b                                           ; $7509: $88
	adc  b                                           ; $750a: $88
	adc  b                                           ; $750b: $88
	adc  b                                           ; $750c: $88
	adc  b                                           ; $750d: $88
	adc  b                                           ; $750e: $88
	adc  b                                           ; $750f: $88
	adc  b                                           ; $7510: $88
	adc  b                                           ; $7511: $88
	adc  b                                           ; $7512: $88
	adc  b                                           ; $7513: $88
	adc  b                                           ; $7514: $88
	adc  b                                           ; $7515: $88
	adc  b                                           ; $7516: $88
	adc  b                                           ; $7517: $88
	adc  b                                           ; $7518: $88
	adc  b                                           ; $7519: $88
	adc  b                                           ; $751a: $88
	adc  b                                           ; $751b: $88
	adc  b                                           ; $751c: $88
	adc  b                                           ; $751d: $88
	adc  b                                           ; $751e: $88
	adc  b                                           ; $751f: $88
	adc  b                                           ; $7520: $88
	adc  b                                           ; $7521: $88
	adc  b                                           ; $7522: $88
	adc  b                                           ; $7523: $88
	adc  b                                           ; $7524: $88
	adc  b                                           ; $7525: $88
	adc  b                                           ; $7526: $88
	adc  b                                           ; $7527: $88
	adc  b                                           ; $7528: $88
	adc  b                                           ; $7529: $88
	adc  b                                           ; $752a: $88
	adc  b                                           ; $752b: $88
	adc  b                                           ; $752c: $88
	adc  b                                           ; $752d: $88
	adc  b                                           ; $752e: $88
	adc  b                                           ; $752f: $88
	adc  b                                           ; $7530: $88
	adc  b                                           ; $7531: $88
	adc  b                                           ; $7532: $88
	adc  b                                           ; $7533: $88
	adc  b                                           ; $7534: $88
	adc  b                                           ; $7535: $88
	adc  b                                           ; $7536: $88
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
	adc  b                                           ; $7544: $88
	adc  b                                           ; $7545: $88
	adc  b                                           ; $7546: $88
	adc  b                                           ; $7547: $88
	adc  b                                           ; $7548: $88
	adc  b                                           ; $7549: $88
	adc  b                                           ; $754a: $88
	adc  b                                           ; $754b: $88
	adc  b                                           ; $754c: $88
	adc  b                                           ; $754d: $88
	adc  b                                           ; $754e: $88
	adc  b                                           ; $754f: $88
	adc  b                                           ; $7550: $88
	adc  b                                           ; $7551: $88
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
	adc  b                                           ; $7561: $88
	adc  b                                           ; $7562: $88
	adc  b                                           ; $7563: $88
	adc  b                                           ; $7564: $88
	adc  b                                           ; $7565: $88
	adc  b                                           ; $7566: $88
	adc  b                                           ; $7567: $88
	adc  b                                           ; $7568: $88
	adc  b                                           ; $7569: $88
	adc  b                                           ; $756a: $88
	adc  b                                           ; $756b: $88
	adc  b                                           ; $756c: $88

Call_0ec_756d:
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

Call_0ec_75ca:
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

Call_0ec_75da:
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

Call_0ec_7676:
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

Jump_0ec_7687:
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

Jump_0ec_776c:
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

Call_0ec_7787:
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

Jump_0ec_77a8:
	adc  b                                           ; $77a8: $88
	adc  b                                           ; $77a9: $88

Jump_0ec_77aa:
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

Call_0ec_77b8:
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
	sbc  b                                           ; $77dd: $98

jr_0ec_77de:
	adc  b                                           ; $77de: $88
	adc  b                                           ; $77df: $88
	adc  b                                           ; $77e0: $88
	adc  b                                           ; $77e1: $88
	adc  b                                           ; $77e2: $88
	adc  c                                           ; $77e3: $89
	adc  b                                           ; $77e4: $88
	adc  b                                           ; $77e5: $88
	adc  b                                           ; $77e6: $88
	adc  b                                           ; $77e7: $88
	adc  b                                           ; $77e8: $88
	adc  b                                           ; $77e9: $88
	adc  b                                           ; $77ea: $88
	ld   a, b                                        ; $77eb: $78
	adc  b                                           ; $77ec: $88
	adc  b                                           ; $77ed: $88
	adc  b                                           ; $77ee: $88
	adc  c                                           ; $77ef: $89
	adc  c                                           ; $77f0: $89
	adc  b                                           ; $77f1: $88
	adc  c                                           ; $77f2: $89
	add  a                                           ; $77f3: $87
	add  a                                           ; $77f4: $87
	ld   [hl], a                                     ; $77f5: $77
	ld   [hl], a                                     ; $77f6: $77
	ld   [hl], a                                     ; $77f7: $77
	ld   a, b                                        ; $77f8: $78
	adc  c                                           ; $77f9: $89
	xor  d                                           ; $77fa: $aa
	sbc  c                                           ; $77fb: $99
	xor  b                                           ; $77fc: $a8
	adc  b                                           ; $77fd: $88
	ld   h, [hl]                                     ; $77fe: $66
	halt                                             ; $77ff: $76
	ld   d, a                                        ; $7800: $57
	ld   h, [hl]                                     ; $7801: $66
	sbc  b                                           ; $7802: $98
	sbc  c                                           ; $7803: $99
	cp   d                                           ; $7804: $ba
	xor  e                                           ; $7805: $ab
	sbc  c                                           ; $7806: $99
	sbc  b                                           ; $7807: $98
	ld   h, [hl]                                     ; $7808: $66
	ld   b, l                                        ; $7809: $45
	ld   [hl], e                                     ; $780a: $73
	ld   h, a                                        ; $780b: $67
	ld   l, c                                        ; $780c: $69
	xor  d                                           ; $780d: $aa
	sbc  h                                           ; $780e: $9c
	cp   d                                           ; $780f: $ba
	jp   c, $8599                                    ; $7810: $da $99 $85

	ld   d, e                                        ; $7813: $53
	daa                                              ; $7814: $27
	inc  [hl]                                        ; $7815: $34
	sub  l                                           ; $7816: $95
	adc  h                                           ; $7817: $8c
	jp   z, $9ddf                                    ; $7818: $ca $df $9d

	xor  b                                           ; $781b: $a8
	add  [hl]                                        ; $781c: $86
	ld   b, c                                        ; $781d: $41
	inc  de                                          ; $781e: $13
	ld   d, c                                        ; $781f: $51
	ld   a, b                                        ; $7820: $78
	ld   l, l                                        ; $7821: $6d
	sbc  $df                                         ; $7822: $de $df
	set  5, b                                        ; $7824: $cb $e8
	ld   h, [hl]                                     ; $7826: $66
	ld   sp, $2115                                   ; $7827: $31 $15 $21
	or   a                                           ; $782a: $b7
	ld   a, a                                        ; $782b: $7f
	cp   $ef                                         ; $782c: $fe $ef
	sbc  d                                           ; $782e: $9a
	call nc, $1154                                   ; $782f: $d4 $54 $11
	rla                                              ; $7832: $17
	dec  d                                           ; $7833: $15
	push af                                          ; $7834: $f5
	rst  JumpTable                                         ; $7835: $df
	db   $fc                                         ; $7836: $fc
	rst  $38                                         ; $7837: $ff
	ld   c, a                                        ; $7838: $4f
	add  c                                           ; $7839: $81
	ld   sp, $b111                                   ; $783a: $31 $11 $b1
	rra                                              ; $783d: $1f
	sbc  d                                           ; $783e: $9a
	rst  $38                                         ; $783f: $ff
	rst  JumpTable                                         ; $7840: $df
	di                                               ; $7841: $f3
	sbc  h                                           ; $7842: $9c
	ld   de, $1b11                                   ; $7843: $11 $11 $1b
	ld   hl, $dffa                                   ; $7846: $21 $fa $df
	db   $fc                                         ; $7849: $fc
	rst  JumpTable                                         ; $784a: $df
	jr   z, jr_0ec_77de                              ; $784b: $28 $91

	ld   de, $c111                                   ; $784d: $11 $11 $c1
	ld   a, a                                        ; $7850: $7f
	xor  a                                           ; $7851: $af
	rst  $38                                         ; $7852: $ff
	xor  a                                           ; $7853: $af
	pop  af                                          ; $7854: $f1
	or   l                                           ; $7855: $b5
	ld   de, $3b11                                   ; $7856: $11 $11 $3b
	rra                                              ; $7859: $1f
	ei                                               ; $785a: $fb
	rst  $38                                         ; $785b: $ff
	ld   sp, hl                                      ; $785c: $f9
	rst  $30                                         ; $785d: $f7
	ld   a, [de]                                     ; $785e: $1a
	ld   de, $1b11                                   ; $785f: $11 $11 $1b
	ld   c, c                                        ; $7862: $49

Jump_0ec_7863:
	db   $fc                                         ; $7863: $fc
	rst  $38                                         ; $7864: $ff
	ld   sp, hl                                      ; $7865: $f9
	call Call_0ec_4117                               ; $7866: $cd $17 $41
	ld   de, $771b                                   ; $7869: $11 $1b $77
	db   $fc                                         ; $786c: $fc
	rst  $38                                         ; $786d: $ff
	ei                                               ; $786e: $fb
	sbc  [hl]                                        ; $786f: $9e
	inc  d                                           ; $7870: $14
	ld   [hl], c                                     ; $7871: $71
	ld   de, $a71a                                   ; $7872: $11 $1a $a7
	rst  $38                                         ; $7875: $ff
	rst  $38                                         ; $7876: $ff
	ei                                               ; $7877: $fb
	ld   l, l                                        ; $7878: $6d
	ld   [hl-], a                                    ; $7879: $32
	add  c                                           ; $787a: $81
	ld   de, $d719                                   ; $787b: $11 $19 $d7
	rst  $38                                         ; $787e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $787f: $cf
	ei                                               ; $7880: $fb
	ld   l, e                                        ; $7881: $6b
	ld   d, c                                        ; $7882: $51
	ld   [hl], c                                     ; $7883: $71
	ld   de, $f716                                   ; $7884: $11 $16 $f7
	rst  $38                                         ; $7887: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7888: $cf
	ei                                               ; $7889: $fb
	ld   l, c                                        ; $788a: $69
	ld   [hl], c                                     ; $788b: $71
	ld   d, e                                        ; $788c: $53
	ld   de, $f816                                   ; $788d: $11 $16 $f8
	rst  $38                                         ; $7890: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7891: $cf
	ei                                               ; $7892: $fb
	ld   e, c                                        ; $7893: $59
	sub  c                                           ; $7894: $91
	ld   d, h                                        ; $7895: $54
	ld   de, $f914                                   ; $7896: $11 $14 $f9
	rst  JumpTable                                         ; $7899: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $789a: $cf
	ei                                               ; $789b: $fb
	ld   h, [hl]                                     ; $789c: $66
	sub  c                                           ; $789d: $91
	ld   [hl], $11                                   ; $789e: $36 $11
	dec  d                                           ; $78a0: $15
	ld   sp, hl                                      ; $78a1: $f9
	rst  $38                                         ; $78a2: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78a3: $cf
	db   $eb                                         ; $78a4: $eb
	ld   h, l                                        ; $78a5: $65
	and  d                                           ; $78a6: $a2
	dec  [hl]                                        ; $78a7: $35
	ld   de, $f915                                   ; $78a8: $11 $15 $f9
	rst  $28                                         ; $78ab: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78ac: $cf
	jp   hl                                          ; $78ad: $e9


	ld   h, l                                        ; $78ae: $65
	or   d                                           ; $78af: $b2
	ld   h, $11                                      ; $78b0: $26 $11
	rla                                              ; $78b2: $17
	ld   sp, hl                                      ; $78b3: $f9
	rst  $38                                         ; $78b4: $ff
	cp   [hl]                                        ; $78b5: $be
	jp   c, $b266                                    ; $78b6: $da $66 $b2

Call_0ec_78b9:
	dec  [hl]                                        ; $78b9: $35
	ld   de, $f91a                                   ; $78ba: $11 $1a $f9
	rst  $38                                         ; $78bd: $ff
	xor  [hl]                                        ; $78be: $ae
	ret                                              ; $78bf: $c9


	ld   d, a                                        ; $78c0: $57
	or   d                                           ; $78c1: $b2
	ld   b, h                                        ; $78c2: $44
	ld   de, $f71c                                   ; $78c3: $11 $1c $f7
	rst  $38                                         ; $78c6: $ff
	sbc  [hl]                                        ; $78c7: $9e
	cp   b                                           ; $78c8: $b8

Call_0ec_78c9:
	ld   d, a                                        ; $78c9: $57
	or   c                                           ; $78ca: $b1
	inc  sp                                          ; $78cb: $33
	ld   de, $f61f                                   ; $78cc: $11 $1f $f6
	rst  $38                                         ; $78cf: $ff
	xor  h                                           ; $78d0: $ac
	adc  d                                           ; $78d1: $8a
	ld   e, b                                        ; $78d2: $58
	or   c                                           ; $78d3: $b1
	ld   b, c                                        ; $78d4: $41
	ld   de, $f82f                                   ; $78d5: $11 $2f $f8
	rst  $38                                         ; $78d8: $ff
	sbc  e                                           ; $78d9: $9b
	ld   a, c                                        ; $78da: $79
	ld   e, d                                        ; $78db: $5a
	and  c                                           ; $78dc: $a1
	ld   sp, $5f11                                   ; $78dd: $31 $11 $5f
	ld   sp, hl                                      ; $78e0: $f9
	db   $fc                                         ; $78e1: $fc
	sbc  e                                           ; $78e2: $9b
	ld   a, c                                        ; $78e3: $79
	ld   l, e                                        ; $78e4: $6b
	add  c                                           ; $78e5: $81
	ld   hl, $af11                                   ; $78e6: $21 $11 $af
	cp   h                                           ; $78e9: $bc
	ld   sp, hl                                      ; $78ea: $f9
	xor  c                                           ; $78eb: $a9
	adc  c                                           ; $78ec: $89
	ld   a, l                                        ; $78ed: $7d
	ld   d, c                                        ; $78ee: $51
	ld   de, rAUD1LEN                                   ; $78ef: $11 $11 $ff
	adc  a                                           ; $78f2: $8f
	rst  $30                                         ; $78f3: $f7
	and  [hl]                                        ; $78f4: $a6
	cp   d                                           ; $78f5: $ba
	ld   a, h                                        ; $78f6: $7c
	ld   de, $1411                                   ; $78f7: $11 $11 $14
	rst  $38                                         ; $78fa: $ff
	ld   l, a                                        ; $78fb: $6f
	add  $a6                                         ; $78fc: $c6 $a6
	ret  c                                           ; $78fe: $d8

	xor  d                                           ; $78ff: $aa
	ld   de, $1911                                   ; $7900: $11 $11 $19
	rst  $38                                         ; $7903: $ff
	sbc  a                                           ; $7904: $9f
	ld   a, b                                        ; $7905: $78
	adc  c                                           ; $7906: $89
	rst  $30                                         ; $7907: $f7
	or   h                                           ; $7908: $b4
	ld   de, $4f11                                   ; $7909: $11 $11 $4f
	rst  $30                                         ; $790c: $f7
	rst  $28                                         ; $790d: $ef
	ld   c, d                                        ; $790e: $4a
	ld   a, l                                        ; $790f: $7d
	rst  $10                                         ; $7910: $d7
	and  c                                           ; $7911: $a1
	ld   de, $7f14                                   ; $7912: $11 $14 $7f
	push af                                          ; $7915: $f5
	ld   hl, sp+$6b                                  ; $7916: $f8 $6b
	adc  a                                           ; $7918: $8f
	and  a                                           ; $7919: $a7
	ld   b, c                                        ; $791a: $41
	ld   de, rAUD1HIGH                                   ; $791b: $11 $14 $ff
	sbc  c                                           ; $791e: $99
	di                                               ; $791f: $f3
	cp   d                                           ; $7920: $ba
	rst  $28                                         ; $7921: $ef
	ld   h, a                                        ; $7922: $67
	ld   de, $3611                                   ; $7923: $11 $11 $36
	rst  $38                                         ; $7926: $ff
	dec  l                                           ; $7927: $2d
	sub  l                                           ; $7928: $95
	ld   [$43fb], a                                  ; $7929: $ea $fb $43
	ld   de, $4f11                                   ; $792c: $11 $11 $4f
	rst  $30                                         ; $792f: $f7
	ld   c, a                                        ; $7930: $4f
	inc  a                                           ; $7931: $3c
	sbc  $f4                                         ; $7932: $de $f4
	ld   sp, $2513                                   ; $7934: $31 $13 $25
	ld   c, a                                        ; $7937: $4f
	pop  af                                          ; $7938: $f1
	cp   e                                           ; $7939: $bb
	ld   l, a                                        ; $793a: $6f
	cp   a                                           ; $793b: $bf
	or   c                                           ; $793c: $b1
	ld   de, $3423                                   ; $793d: $11 $23 $34
	xor  a                                           ; $7940: $af
	and  c                                           ; $7941: $a1
	rst  $30                                         ; $7942: $f7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7943: $cf
	rst  JumpTable                                         ; $7944: $df
	ld   sp, $5211                                   ; $7945: $31 $11 $52
	inc  sp                                          ; $7948: $33
	rst  $38                                         ; $7949: $ff
	add  hl, de                                      ; $794a: $19

Call_0ec_794b:
	rst  ToBoot                                         ; $794b: $c7
	db   $fc                                         ; $794c: $fc
	ld   a, [$1411]                                  ; $794d: $fa $11 $14
	ld   d, e                                        ; $7950: $53
	ld   a, [hl-]                                    ; $7951: $3a
	ld   hl, sp+$1f                                  ; $7952: $f8 $1f
	ld   a, a                                        ; $7954: $7f
	db   $fc                                         ; $7955: $fc
	pop  af                                          ; $7956: $f1
	ld   de, $3328                                   ; $7957: $11 $28 $33
	cpl                                              ; $795a: $2f
	pop  af                                          ; $795b: $f1
	cp   e                                           ; $795c: $bb
	xor  a                                           ; $795d: $af
	cp   a                                           ; $795e: $bf
	ld   [hl], c                                     ; $795f: $71
	ld   de, $1285                                   ; $7960: $11 $85 $12
	rst  $28                                         ; $7963: $ef
	ld   b, e                                        ; $7964: $43
	jp   hl                                          ; $7965: $e9


	db   $fd                                         ; $7966: $fd
	rl   c                                           ; $7967: $cb $11
	ld   d, $81                                      ; $7969: $16 $81
	rla                                              ; $796b: $17
	db   $fc                                         ; $796c: $fc
	ld   e, $9f                                      ; $796d: $1e $9f
	ld   a, [$11e1]                                  ; $796f: $fa $e1 $11
	ld   c, e                                        ; $7972: $4b
	ld   sp, $f14f                                   ; $7973: $31 $4f $f1
	cp   h                                           ; $7976: $bc
	rst  JumpTable                                         ; $7977: $df
	cp   l                                           ; $7978: $bd
	ld   b, c                                        ; $7979: $41
	ld   [de], a                                     ; $797a: $12
	sub  h                                           ; $797b: $94
	inc  de                                          ; $797c: $13
	rst  $38                                         ; $797d: $ff
	rla                                              ; $797e: $17
	db   $dd                                         ; $797f: $dd
	ei                                               ; $7980: $fb
	sub  $11                                         ; $7981: $d6 $11
	ld   a, [de]                                     ; $7983: $1a
	sub  c                                           ; $7984: $91
	rra                                              ; $7985: $1f

Call_0ec_7986:
	di                                               ; $7986: $f3
	ld   e, a                                        ; $7987: $5f
	rst  JumpTable                                         ; $7988: $df
	res  0, c                                        ; $7989: $cb $81
	ld   [de], a                                     ; $798b: $12
	sub  a                                           ; $798c: $97
	ld   de, $34ff                                   ; $798d: $11 $ff $34
	cp   l                                           ; $7990: $bd
	db   $fd                                         ; $7991: $fd
	ret  c                                           ; $7992: $d8

	ld   de, $811b                                   ; $7993: $11 $1b $81

Call_0ec_7996:
	rra                                              ; $7996: $1f
	db   $f4                                         ; $7997: $f4
	ld   c, l                                        ; $7998: $4d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7999: $cf
	call c, $1191                                    ; $799a: $dc $91 $11
	add  [hl]                                        ; $799d: $86
	inc  de                                          ; $799e: $13
	rst  $38                                         ; $799f: $ff
	inc  h                                           ; $79a0: $24
	xor  [hl]                                        ; $79a1: $ae
	db   $fd                                         ; $79a2: $fd
	or   l                                           ; $79a3: $b5
	ld   de, $613b                                   ; $79a4: $11 $3b $61
	ld   e, a                                        ; $79a7: $5f
	pop  af                                          ; $79a8: $f1
	ld   e, d                                        ; $79a9: $5a
	rst  $38                                         ; $79aa: $ff
	swap c                                           ; $79ab: $cb $31
	inc  d                                           ; $79ad: $14
	or   l                                           ; $79ae: $b5
	ld   d, $ff                                      ; $79af: $16 $ff
	daa                                              ; $79b1: $27
	sbc  a                                           ; $79b2: $9f
	ld   a, [$11b1]                                  ; $79b3: $fa $b1 $11
	ld   l, d                                        ; $79b6: $6a
	ld   de, $72ff                                   ; $79b7: $11 $ff $72

Jump_0ec_79ba:
	sbc  h                                           ; $79ba: $9c
	cp   $b7                                         ; $79bb: $fe $b7
	ld   de, $712a                                   ; $79bd: $11 $2a $71
	cpl                                              ; $79c0: $2f
	db   $f4                                         ; $79c1: $f4
	ld   e, c                                        ; $79c2: $59
	rst  $28                                         ; $79c3: $ef
	bit  0, c                                        ; $79c4: $cb $41
	inc  de                                          ; $79c6: $13
	and  e                                           ; $79c7: $a3
	jr   @+$01                                       ; $79c8: $18 $ff

Jump_0ec_79ca:
	dec  h                                           ; $79ca: $25
	sbc  a                                           ; $79cb: $9f
	ei                                               ; $79cc: $fb
	add  c                                           ; $79cd: $81
	ld   de, $1189                                   ; $79ce: $11 $89 $11
	rst  $38                                         ; $79d1: $ff
	ld   [hl], h                                     ; $79d2: $74
	sbc  l                                           ; $79d3: $9d
	db   $fd                                         ; $79d4: $fd
	sub  h                                           ; $79d5: $94
	ld   de, $4139                                   ; $79d6: $11 $39 $41
	ld   l, a                                        ; $79d9: $6f
	di                                               ; $79da: $f3
	ld   e, c                                        ; $79db: $59
	rst  $38                                         ; $79dc: $ff
	cp   b                                           ; $79dd: $b8
	ld   de, $b117                                   ; $79de: $11 $17 $b1
	inc  e                                           ; $79e1: $1c
	ld   a, [$cf38]                                  ; $79e2: $fa $38 $cf
	ld   sp, hl                                      ; $79e5: $f9
	ld   d, c                                        ; $79e6: $51
	ld   [de], a                                     ; $79e7: $12
	add  h                                           ; $79e8: $84
	ld   d, $ff                                      ; $79e9: $16 $ff
	inc  sp                                          ; $79eb: $33
	ld   a, a                                        ; $79ec: $7f
	db   $fc                                         ; $79ed: $fc
	add  c                                           ; $79ee: $81
	ld   de, $119b                                   ; $79ef: $11 $9b $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79f2: $cf
	or   h                                           ; $79f3: $b4
	ld   l, h                                        ; $79f4: $6c
	rst  $38                                         ; $79f5: $ff
	and  h                                           ; $79f6: $a4
	ld   de, $4139                                   ; $79f7: $11 $39 $41
	ld   l, a                                        ; $79fa: $6f

Call_0ec_79fb:
	db   $f4                                         ; $79fb: $f4
	ld   c, b                                        ; $79fc: $48
	rst  $38                                         ; $79fd: $ff
	ret                                              ; $79fe: $c9


	ld   de, $a119                                   ; $79ff: $11 $19 $a1
	dec  e                                           ; $7a02: $1d
	ei                                               ; $7a03: $fb
	ld   b, l                                        ; $7a04: $45
	cp   a                                           ; $7a05: $bf
	ei                                               ; $7a06: $fb
	ld   h, c                                        ; $7a07: $61
	inc  de                                          ; $7a08: $13
	or   l                                           ; $7a09: $b5
	inc  de                                          ; $7a0a: $13
	rst  $38                                         ; $7a0b: $ff
	ld   d, d                                        ; $7a0c: $52
	ld   e, a                                        ; $7a0d: $5f
	db   $fd                                         ; $7a0e: $fd
	and  c                                           ; $7a0f: $a1
	ld   de, $118d                                   ; $7a10: $11 $8d $11
	adc  a                                           ; $7a13: $8f
	di                                               ; $7a14: $f3
	add  hl, sp                                      ; $7a15: $39
	rst  $38                                         ; $7a16: $ff
	sub  $11                                         ; $7a17: $d6 $11
	dec  hl                                          ; $7a19: $2b
	ld   [hl], c                                     ; $7a1a: $71
	rra                                              ; $7a1b: $1f
	rst  $30                                         ; $7a1c: $f7
	ld   [de], a                                     ; $7a1d: $12
	rst  $38                                         ; $7a1e: $ff
	cp   $11                                         ; $7a1f: $fe $11
	rla                                              ; $7a21: $17
	push af                                          ; $7a22: $f5
	ld   de, $71ff                                   ; $7a23: $11 $ff $71
	ld   e, $ff                                      ; $7a26: $1e $ff
	di                                               ; $7a28: $f3
	ld   de, $716f                                   ; $7a29: $11 $6f $71
	rra                                              ; $7a2c: $1f
	push af                                          ; $7a2d: $f5
	ld   de, $dcff                                   ; $7a2e: $11 $ff $dc
	ld   d, c                                        ; $7a31: $51
	inc  d                                           ; $7a32: $14
	ld   a, [$ef11]                                  ; $7a33: $fa $11 $ef
	pop  de                                          ; $7a36: $d1
	ld   a, [de]                                     ; $7a37: $1a
	rst  $38                                         ; $7a38: $ff
	sub  [hl]                                        ; $7a39: $96
	ld   h, c                                        ; $7a3a: $61
	ld   e, $f5                                      ; $7a3b: $1e $f5
	ld   de, $71ff                                   ; $7a3d: $11 $ff $71
	dec  e                                           ; $7a40: $1d
	rst  $38                                         ; $7a41: $ff
	cp   b                                           ; $7a42: $b8
	ld   sp, $f33f                                   ; $7a43: $31 $3f $f3
	ld   de, $51ff                                   ; $7a46: $11 $ff $51
	dec  e                                           ; $7a49: $1d
	rst  $38                                         ; $7a4a: $ff
	and  a                                           ; $7a4b: $a7
	ld   b, c                                        ; $7a4c: $41
	ld   c, a                                        ; $7a4d: $4f
	di                                               ; $7a4e: $f3
	ld   de, $21ff                                   ; $7a4f: $11 $ff $21
	rra                                              ; $7a52: $1f
	cp   $87                                         ; $7a53: $fe $87
	ld   b, c                                        ; $7a55: $41
	ld   e, a                                        ; $7a56: $5f
	pop  de                                          ; $7a57: $d1
	ld   de, $11ff                                   ; $7a58: $11 $ff $11
	rra                                              ; $7a5b: $1f
	db   $fd                                         ; $7a5c: $fd
	add  a                                           ; $7a5d: $87
	ld   b, c                                        ; $7a5e: $41
	adc  a                                           ; $7a5f: $8f
	or   c                                           ; $7a60: $b1
	ld   [de], a                                     ; $7a61: $12
	rst  $38                                         ; $7a62: $ff
	ld   de, $fe1f                                   ; $7a63: $11 $1f $fe
	sub  [hl]                                        ; $7a66: $96
	ld   sp, $c17f                                   ; $7a67: $31 $7f $c1
	inc  de                                          ; $7a6a: $13
	rst  $38                                         ; $7a6b: $ff
	ld   de, $fc1f                                   ; $7a6c: $11 $1f $fc
	ld   [hl], a                                     ; $7a6f: $77
	ld   b, c                                        ; $7a70: $41
	adc  a                                           ; $7a71: $8f
	or   c                                           ; $7a72: $b1
	inc  d                                           ; $7a73: $14
	rst  $38                                         ; $7a74: $ff
	ld   de, $fc1f                                   ; $7a75: $11 $1f $fc
	halt                                             ; $7a78: $76
	ld   b, c                                        ; $7a79: $41
	adc  a                                           ; $7a7a: $8f
	or   c                                           ; $7a7b: $b1
	dec  d                                           ; $7a7c: $15
	rst  $38                                         ; $7a7d: $ff
	ld   de, $fc1f                                   ; $7a7e: $11 $1f $fc
	ld   h, [hl]                                     ; $7a81: $66
	ld   d, c                                        ; $7a82: $51
	adc  a                                           ; $7a83: $8f
	or   c                                           ; $7a84: $b1
	inc  de                                          ; $7a85: $13
	rst  $38                                         ; $7a86: $ff
	ld   de, $fc1f                                   ; $7a87: $11 $1f $fc
	ld   h, [hl]                                     ; $7a8a: $66
	ld   b, c                                        ; $7a8b: $41
	adc  a                                           ; $7a8c: $8f
	pop  bc                                          ; $7a8d: $c1
	inc  de                                          ; $7a8e: $13
	rst  $38                                         ; $7a8f: $ff
	ld   de, $fc1f                                   ; $7a90: $11 $1f $fc
	ld   d, [hl]                                     ; $7a93: $56
	ld   d, c                                        ; $7a94: $51
	adc  a                                           ; $7a95: $8f
	pop  bc                                          ; $7a96: $c1
	inc  de                                          ; $7a97: $13
	rst  $38                                         ; $7a98: $ff
	ld   de, $fc1f                                   ; $7a99: $11 $1f $fc
	ld   d, l                                        ; $7a9c: $55
	ld   d, d                                        ; $7a9d: $52
	ld   a, a                                        ; $7a9e: $7f
	or   c                                           ; $7a9f: $b1
	inc  de                                          ; $7aa0: $13
	rst  $38                                         ; $7aa1: $ff
	ld   de, $fc1f                                   ; $7aa2: $11 $1f $fc
	ld   b, l                                        ; $7aa5: $45
	ld   d, d                                        ; $7aa6: $52
	adc  a                                           ; $7aa7: $8f
	pop  bc                                          ; $7aa8: $c1
	inc  de                                          ; $7aa9: $13
	rst  $38                                         ; $7aaa: $ff
	ld   de, $fb1f                                   ; $7aab: $11 $1f $fb
	dec  [hl]                                        ; $7aae: $35
	ld   d, e                                        ; $7aaf: $53
	adc  l                                           ; $7ab0: $8d
	pop  bc                                          ; $7ab1: $c1
	dec  d                                           ; $7ab2: $15
	rst  $38                                         ; $7ab3: $ff
	ld   de, $fb1f                                   ; $7ab4: $11 $1f $fb
	dec  [hl]                                        ; $7ab7: $35
	ld   h, h                                        ; $7ab8: $64
	adc  l                                           ; $7ab9: $8d
	pop  bc                                          ; $7aba: $c1
	inc  d                                           ; $7abb: $14
	rst  $38                                         ; $7abc: $ff
	ld   de, $fc1f                                   ; $7abd: $11 $1f $fc
	inc  [hl]                                        ; $7ac0: $34
	ld   h, e                                        ; $7ac1: $63
	ld   a, [hl]                                     ; $7ac2: $7e
	pop  bc                                          ; $7ac3: $c1
	inc  d                                           ; $7ac4: $14
	rst  $38                                         ; $7ac5: $ff
	ld   de, $fc1f                                   ; $7ac6: $11 $1f $fc
	inc  h                                           ; $7ac9: $24
	ld   h, h                                        ; $7aca: $64
	sbc  l                                           ; $7acb: $9d
	pop  bc                                          ; $7acc: $c1
	ld   d, $ff                                      ; $7acd: $16 $ff
	ld   de, $fb1f                                   ; $7acf: $11 $1f $fb
	inc  h                                           ; $7ad2: $24
	ld   h, h                                        ; $7ad3: $64
	sbc  [hl]                                        ; $7ad4: $9e
	and  c                                           ; $7ad5: $a1
	rla                                              ; $7ad6: $17
	rst  $38                                         ; $7ad7: $ff
	ld   de, $fa1f                                   ; $7ad8: $11 $1f $fa
	inc  h                                           ; $7adb: $24
	ld   d, l                                        ; $7adc: $55
	sbc  l                                           ; $7add: $9d

jr_0ec_7ade:
	sub  c                                           ; $7ade: $91
	inc  e                                           ; $7adf: $1c
	rst  $38                                         ; $7ae0: $ff
	ld   de, $f94f                                   ; $7ae1: $11 $4f $f9
	inc  h                                           ; $7ae4: $24
	ld   h, [hl]                                     ; $7ae5: $66
	xor  l                                           ; $7ae6: $ad
	ld   [hl], c                                     ; $7ae7: $71
	rra                                              ; $7ae8: $1f
	rst  $38                                         ; $7ae9: $ff
	ld   de, $f77f                                   ; $7aea: $11 $7f $f7
	inc  h                                           ; $7aed: $24
	ld   d, a                                        ; $7aee: $57
	xor  e                                           ; $7aef: $ab
	ld   b, c                                        ; $7af0: $41
	rra                                              ; $7af1: $1f
	ei                                               ; $7af2: $fb
	ld   de, $f4cf                                   ; $7af3: $11 $cf $f4
	dec  h                                           ; $7af6: $25
	ld   l, b                                        ; $7af7: $68
	xor  d                                           ; $7af8: $aa
	ld   de, $f54f                                   ; $7af9: $11 $4f $f5
	ld   de, $d2ff                                   ; $7afc: $11 $ff $d2
	dec  h                                           ; $7aff: $25
	ld   a, c                                        ; $7b00: $79
	cp   b                                           ; $7b01: $b8
	ld   de, $f1ef                                   ; $7b02: $11 $ef $f1
	ld   d, $ff                                      ; $7b05: $16 $ff
	add  d                                           ; $7b07: $82
	dec  [hl]                                        ; $7b08: $35
	adc  c                                           ; $7b09: $89
	or   h                                           ; $7b0a: $b4
	ld   de, $a1ff                                   ; $7b0b: $11 $ff $a1
	ld   e, $ff                                      ; $7b0e: $1e $ff
	ld   b, c                                        ; $7b10: $41
	ld   b, a                                        ; $7b11: $47
	xor  c                                           ; $7b12: $a9
	ld   [hl], c                                     ; $7b13: $71
	dec  e                                           ; $7b14: $1d
	rst  $38                                         ; $7b15: $ff
	ld   hl, $f85f                                   ; $7b16: $21 $5f $f8

jr_0ec_7b19:
	ld   [de], a                                     ; $7b19: $12
	ld   l, d                                        ; $7b1a: $6a
	and  a                                           ; $7b1b: $a7
	ld   hl, $fa3f                                   ; $7b1c: $21 $3f $fa
	ld   de, $f5df                                   ; $7b1f: $11 $df $f5
	inc  de                                          ; $7b22: $13
	adc  d                                           ; $7b23: $8a
	and  [hl]                                        ; $7b24: $a6
	ld   de, $f3ef                                   ; $7b25: $11 $ef $f3
	ld   d, $ff                                      ; $7b28: $16 $ff
	sub  d                                           ; $7b2a: $92
	ld   d, $bb                                      ; $7b2b: $16 $bb
	ld   [hl], c                                     ; $7b2d: $71
	rla                                              ; $7b2e: $17
	rst  $38                                         ; $7b2f: $ff
	ld   [hl], c                                     ; $7b30: $71
	rra                                              ; $7b31: $1f
	db   $fd                                         ; $7b32: $fd
	ld   d, c                                        ; $7b33: $51
	jr   c, jr_0ec_7ade                              ; $7b34: $38 $a8

	ld   sp, $fc1f                                   ; $7b36: $31 $1f $fc
	ld   de, $f7af                                   ; $7b39: $11 $af $f7
	ld   [hl+], a                                    ; $7b3c: $22
	ld   a, d                                        ; $7b3d: $7a
	sub  [hl]                                        ; $7b3e: $96
	ld   de, $f5cf                                   ; $7b3f: $11 $cf $f5
	ld   d, $ff                                      ; $7b42: $16 $ff
	and  h                                           ; $7b44: $a4
	dec  h                                           ; $7b45: $25
	xor  d                                           ; $7b46: $aa
	ld   [hl], c                                     ; $7b47: $71
	rla                                              ; $7b48: $17
	rst  $38                                         ; $7b49: $ff
	add  c                                           ; $7b4a: $81
	ccf                                              ; $7b4b: $3f
	db   $fc                                         ; $7b4c: $fc
	ld   b, d                                        ; $7b4d: $42
	ld   c, c                                        ; $7b4e: $49
	cp   b                                           ; $7b4f: $b8
	ld   hl, $f95f                                   ; $7b50: $21 $5f $f9
	inc  hl                                          ; $7b53: $23
	rst  $28                                         ; $7b54: $ef
	push bc                                          ; $7b55: $c5
	inc  hl                                          ; $7b56: $23
	sbc  d                                           ; $7b57: $9a
	sub  e                                           ; $7b58: $93
	inc  d                                           ; $7b59: $14
	rst  $38                                         ; $7b5a: $ff
	or   e                                           ; $7b5b: $b3
	dec  l                                           ; $7b5c: $2d
	cp   $62                                         ; $7b5d: $fe $62
	jr   c, jr_0ec_7b19                              ; $7b5f: $38 $b8

	ld   sp, $fb4f                                   ; $7b61: $31 $4f $fb
	inc  sp                                          ; $7b64: $33
	cp   a                                           ; $7b65: $bf
	sub  $22                                         ; $7b66: $d6 $22
	ld   a, e                                        ; $7b68: $7b
	sub  e                                           ; $7b69: $93
	dec  d                                           ; $7b6a: $15
	rst  $38                                         ; $7b6b: $ff
	sub  e                                           ; $7b6c: $93
	ld   e, l                                        ; $7b6d: $5d
	db   $fc                                         ; $7b6e: $fc
	ld   d, d                                        ; $7b6f: $52
	ld   c, c                                        ; $7b70: $49
	and  a                                           ; $7b71: $a7
	ld   hl, $d88f                                   ; $7b72: $21 $8f $d8
	scf                                              ; $7b75: $37
	rst  $38                                         ; $7b76: $ff
	or   h                                           ; $7b77: $b4
	inc  h                                           ; $7b78: $24
	sbc  d                                           ; $7b79: $9a
	ld   h, c                                        ; $7b7a: $61
	dec  sp                                          ; $7b7b: $3b
	db   $ec                                         ; $7b7c: $ec
	ld   h, l                                        ; $7b7d: $65
	sbc  [hl]                                        ; $7b7e: $9e
	add  sp, $33                                     ; $7b7f: $e8 $33
	ld   l, d                                        ; $7b81: $6a
	ld   [hl], e                                     ; $7b82: $73
	jr   @-$21                                       ; $7b83: $18 $dd

	add  l                                           ; $7b85: $85
	adc  [hl]                                        ; $7b86: $8e
	ld   [$5853], a                                  ; $7b87: $ea $53 $58
	sub  h                                           ; $7b8a: $94
	inc  d                                           ; $7b8b: $14
	adc  $b6                                         ; $7b8c: $ce $b6
	ld   l, d                                        ; $7b8e: $6a
	db   $fd                                         ; $7b8f: $fd
	ld   [hl], e                                     ; $7b90: $73
	ld   b, a                                        ; $7b91: $47
	sub  [hl]                                        ; $7b92: $96
	inc  hl                                          ; $7b93: $23
	xor  l                                           ; $7b94: $ad
	or   a                                           ; $7b95: $b7
	ld   l, e                                        ; $7b96: $6b
	db   $ed                                         ; $7b97: $ed
	ld   [hl], h                                     ; $7b98: $74
	ld   c, b                                        ; $7b99: $48
	sub  [hl]                                        ; $7b9a: $96
	ld   [hl+], a                                    ; $7b9b: $22
	adc  h                                           ; $7b9c: $8c
	ret  z                                           ; $7b9d: $c8

	ld   a, d                                        ; $7b9e: $7a
	db   $dd                                         ; $7b9f: $dd
	sub  l                                           ; $7ba0: $95
	ld   b, [hl]                                     ; $7ba1: $46
	add  [hl]                                        ; $7ba2: $86
	ld   [hl+], a                                    ; $7ba3: $22
	adc  h                                           ; $7ba4: $8c
	or   a                                           ; $7ba5: $b7
	ld   a, e                                        ; $7ba6: $7b
	db   $ed                                         ; $7ba7: $ed
	ld   [hl], h                                     ; $7ba8: $74
	ld   c, b                                        ; $7ba9: $48
	sub  l                                           ; $7baa: $95
	inc  hl                                          ; $7bab: $23
	adc  h                                           ; $7bac: $8c
	or   a                                           ; $7bad: $b7
	ld   a, e                                        ; $7bae: $7b
	db   $ed                                         ; $7baf: $ed
	ld   [hl], h                                     ; $7bb0: $74
	ld   e, b                                        ; $7bb1: $58
	add  h                                           ; $7bb2: $84
	dec  h                                           ; $7bb3: $25
	xor  h                                           ; $7bb4: $ac
	sub  [hl]                                        ; $7bb5: $96
	sbc  l                                           ; $7bb6: $9d
	ei                                               ; $7bb7: $fb
	ld   h, h                                        ; $7bb8: $64
	ld   l, c                                        ; $7bb9: $69
	ld   [hl], e                                     ; $7bba: $73
	dec  d                                           ; $7bbb: $15
	cp   h                                           ; $7bbc: $bc
	sub  a                                           ; $7bbd: $97
	adc  l                                           ; $7bbe: $8d
	jp   hl                                          ; $7bbf: $e9


	ld   d, l                                        ; $7bc0: $55
	adc  c                                           ; $7bc1: $89
	ld   d, c                                        ; $7bc2: $51
	add  hl, sp                                      ; $7bc3: $39
	ret                                              ; $7bc4: $c9


	ld   h, a                                        ; $7bc5: $67
	cp   [hl]                                        ; $7bc6: $be
	rst  $10                                         ; $7bc7: $d7
	ld   b, l                                        ; $7bc8: $45
	sbc  c                                           ; $7bc9: $99
	ld   d, c                                        ; $7bca: $51
	ld   c, c                                        ; $7bcb: $49
	cp   c                                           ; $7bcc: $b9
	ld   a, c                                        ; $7bcd: $79
	adc  $a5                                         ; $7bce: $ce $a5
	ld   d, a                                        ; $7bd0: $57
	sub  [hl]                                        ; $7bd1: $96
	inc  h                                           ; $7bd2: $24
	sbc  d                                           ; $7bd3: $9a
	and  a                                           ; $7bd4: $a7
	adc  e                                           ; $7bd5: $8b
	db   $ec                                         ; $7bd6: $ec
	ld   [hl], l                                     ; $7bd7: $75
	ld   l, b                                        ; $7bd8: $68
	add  h                                           ; $7bd9: $84
	ld   h, $aa                                      ; $7bda: $26 $aa
	sub  a                                           ; $7bdc: $97
	xor  l                                           ; $7bdd: $ad
	reti                                             ; $7bde: $d9


	ld   d, [hl]                                     ; $7bdf: $56
	adc  c                                           ; $7be0: $89
	ld   b, d                                        ; $7be1: $42
	ld   c, c                                        ; $7be2: $49
	xor  c                                           ; $7be3: $a9
	ld   a, c                                        ; $7be4: $79
	call Call_0ec_57a6                               ; $7be5: $cd $a6 $57
	add  [hl]                                        ; $7be8: $86
	inc  [hl]                                        ; $7be9: $34
	ld   a, c                                        ; $7bea: $79
	xor  b                                           ; $7beb: $a8
	adc  h                                           ; $7bec: $8c
	db   $db                                         ; $7bed: $db
	halt                                             ; $7bee: $76
	adc  b                                           ; $7bef: $88
	ld   h, e                                        ; $7bf0: $63
	ld   b, a                                        ; $7bf1: $47
	sbc  c                                           ; $7bf2: $99
	ld   a, b                                        ; $7bf3: $78
	cp   l                                           ; $7bf4: $bd
	cp   b                                           ; $7bf5: $b8
	ld   h, a                                        ; $7bf6: $67
	add  a                                           ; $7bf7: $87
	ld   b, e                                        ; $7bf8: $43
	ld   l, c                                        ; $7bf9: $69
	sbc  b                                           ; $7bfa: $98
	adc  d                                           ; $7bfb: $8a
	call z, Call_0ec_7986                            ; $7bfc: $cc $86 $79
	ld   [hl], h                                     ; $7bff: $74
	ld   b, [hl]                                     ; $7c00: $46
	adc  c                                           ; $7c01: $89
	adc  b                                           ; $7c02: $88
	xor  h                                           ; $7c03: $ac
	cp   c                                           ; $7c04: $b9
	ld   [hl], a                                     ; $7c05: $77
	sub  a                                           ; $7c06: $97
	ld   d, h                                        ; $7c07: $54
	ld   e, b                                        ; $7c08: $58
	xor  c                                           ; $7c09: $a9
	adc  d                                           ; $7c0a: $8a
	cp   h                                           ; $7c0b: $bc
	and  a                                           ; $7c0c: $a7
	ld   a, b                                        ; $7c0d: $78
	add  l                                           ; $7c0e: $85
	ld   b, l                                        ; $7c0f: $45
	adc  c                                           ; $7c10: $89
	sbc  b                                           ; $7c11: $98
	xor  e                                           ; $7c12: $ab
	cp   d                                           ; $7c13: $ba
	ld   [hl], a                                     ; $7c14: $77
	add  a                                           ; $7c15: $87
	ld   d, h                                        ; $7c16: $54
	ld   e, b                                        ; $7c17: $58
	sbc  b                                           ; $7c18: $98
	adc  c                                           ; $7c19: $89
	cp   e                                           ; $7c1a: $bb
	xor  b                                           ; $7c1b: $a8
	ld   a, b                                        ; $7c1c: $78
	halt                                             ; $7c1d: $76
	ld   b, l                                        ; $7c1e: $45
	ld   a, c                                        ; $7c1f: $79
	sbc  c                                           ; $7c20: $99
	sbc  e                                           ; $7c21: $9b
	cp   c                                           ; $7c22: $b9
	add  a                                           ; $7c23: $87
	add  a                                           ; $7c24: $87
	ld   h, h                                        ; $7c25: $64
	ld   d, a                                        ; $7c26: $57
	adc  c                                           ; $7c27: $89
	sbc  d                                           ; $7c28: $9a
	cp   e                                           ; $7c29: $bb
	sbc  b                                           ; $7c2a: $98
	ld   a, b                                        ; $7c2b: $78
	halt                                             ; $7c2c: $76
	ld   b, l                                        ; $7c2d: $45
	ld   a, b                                        ; $7c2e: $78
	adc  c                                           ; $7c2f: $89
	sbc  e                                           ; $7c30: $9b
	cp   d                                           ; $7c31: $ba
	sub  a                                           ; $7c32: $97
	add  a                                           ; $7c33: $87
	ld   h, l                                        ; $7c34: $65
	ld   d, a                                        ; $7c35: $57
	adc  b                                           ; $7c36: $88
	adc  c                                           ; $7c37: $89
	xor  d                                           ; $7c38: $aa
	sbc  c                                           ; $7c39: $99
	adc  b                                           ; $7c3a: $88
	halt                                             ; $7c3b: $76
	ld   d, l                                        ; $7c3c: $55
	ld   l, b                                        ; $7c3d: $68
	adc  c                                           ; $7c3e: $89
	sbc  d                                           ; $7c3f: $9a
	cp   c                                           ; $7c40: $b9
	sbc  b                                           ; $7c41: $98
	add  a                                           ; $7c42: $87
	ld   h, l                                        ; $7c43: $65
	ld   d, [hl]                                     ; $7c44: $56
	adc  c                                           ; $7c45: $89
	adc  c                                           ; $7c46: $89
	xor  d                                           ; $7c47: $aa
	sbc  b                                           ; $7c48: $98
	adc  b                                           ; $7c49: $88
	halt                                             ; $7c4a: $76
	ld   d, l                                        ; $7c4b: $55
	ld   l, b                                        ; $7c4c: $68
	adc  b                                           ; $7c4d: $88
	sbc  c                                           ; $7c4e: $99
	xor  d                                           ; $7c4f: $aa
	adc  b                                           ; $7c50: $88
	add  a                                           ; $7c51: $87
	ld   h, l                                        ; $7c52: $65
	ld   d, [hl]                                     ; $7c53: $56
	adc  c                                           ; $7c54: $89
	adc  c                                           ; $7c55: $89
	sbc  d                                           ; $7c56: $9a
	sbc  c                                           ; $7c57: $99
	adc  b                                           ; $7c58: $88
	add  [hl]                                        ; $7c59: $86
	ld   d, l                                        ; $7c5a: $55
	ld   h, a                                        ; $7c5b: $67
	adc  b                                           ; $7c5c: $88
	sbc  d                                           ; $7c5d: $9a
	xor  c                                           ; $7c5e: $a9
	sbc  c                                           ; $7c5f: $99
	adc  b                                           ; $7c60: $88
	ld   [hl], l                                     ; $7c61: $75
	ld   d, [hl]                                     ; $7c62: $56
	ld   a, c                                        ; $7c63: $79
	adc  b                                           ; $7c64: $88
	sbc  c                                           ; $7c65: $99
	xor  c                                           ; $7c66: $a9
	adc  c                                           ; $7c67: $89
	add  a                                           ; $7c68: $87
	ld   h, l                                        ; $7c69: $65
	ld   d, a                                        ; $7c6a: $57
	adc  b                                           ; $7c6b: $88
	sbc  c                                           ; $7c6c: $99
	sbc  c                                           ; $7c6d: $99
	sbc  b                                           ; $7c6e: $98
	adc  b                                           ; $7c6f: $88
	halt                                             ; $7c70: $76
	ld   d, l                                        ; $7c71: $55
	ld   l, b                                        ; $7c72: $68
	adc  b                                           ; $7c73: $88
	sbc  d                                           ; $7c74: $9a
	sbc  d                                           ; $7c75: $9a
	adc  c                                           ; $7c76: $89
	sbc  b                                           ; $7c77: $98
	ld   h, l                                        ; $7c78: $65
	ld   d, [hl]                                     ; $7c79: $56
	adc  b                                           ; $7c7a: $88
	adc  c                                           ; $7c7b: $89
	sbc  d                                           ; $7c7c: $9a
	xor  c                                           ; $7c7d: $a9
	adc  c                                           ; $7c7e: $89
	add  a                                           ; $7c7f: $87
	ld   h, l                                        ; $7c80: $65
	ld   h, a                                        ; $7c81: $67
	sbc  b                                           ; $7c82: $98
	sbc  c                                           ; $7c83: $99
	sbc  d                                           ; $7c84: $9a
	sbc  c                                           ; $7c85: $99
	adc  b                                           ; $7c86: $88
	halt                                             ; $7c87: $76
	ld   d, l                                        ; $7c88: $55
	ld   a, b                                        ; $7c89: $78
	adc  c                                           ; $7c8a: $89
	sbc  c                                           ; $7c8b: $99
	sbc  c                                           ; $7c8c: $99
	sbc  b                                           ; $7c8d: $98
	sbc  b                                           ; $7c8e: $98
	halt                                             ; $7c8f: $76
	ld   d, [hl]                                     ; $7c90: $56
	ld   a, c                                        ; $7c91: $79
	sbc  c                                           ; $7c92: $99
	sbc  c                                           ; $7c93: $99
	sbc  c                                           ; $7c94: $99
	sbc  b                                           ; $7c95: $98
	add  a                                           ; $7c96: $87
	ld   h, l                                        ; $7c97: $65
	ld   h, a                                        ; $7c98: $67
	adc  b                                           ; $7c99: $88
	sbc  c                                           ; $7c9a: $99
	sbc  c                                           ; $7c9b: $99
	sbc  c                                           ; $7c9c: $99
	sbc  b                                           ; $7c9d: $98
	add  a                                           ; $7c9e: $87
	ld   h, [hl]                                     ; $7c9f: $66
	ld   h, a                                        ; $7ca0: $67
	adc  c                                           ; $7ca1: $89
	sbc  c                                           ; $7ca2: $99
	sbc  c                                           ; $7ca3: $99
	sbc  c                                           ; $7ca4: $99
	sbc  c                                           ; $7ca5: $99
	halt                                             ; $7ca6: $76
	ld   h, [hl]                                     ; $7ca7: $66
	ld   h, a                                        ; $7ca8: $67
	adc  c                                           ; $7ca9: $89
	sbc  c                                           ; $7caa: $99
	sbc  c                                           ; $7cab: $99
	sbc  c                                           ; $7cac: $99
	sbc  b                                           ; $7cad: $98
	halt                                             ; $7cae: $76
	ld   h, [hl]                                     ; $7caf: $66
	ld   a, b                                        ; $7cb0: $78
	adc  c                                           ; $7cb1: $89
	sbc  c                                           ; $7cb2: $99
	sbc  c                                           ; $7cb3: $99
	sbc  c                                           ; $7cb4: $99
	adc  b                                           ; $7cb5: $88
	halt                                             ; $7cb6: $76
	ld   h, [hl]                                     ; $7cb7: $66
	ld   a, b                                        ; $7cb8: $78
	sbc  c                                           ; $7cb9: $99
	sbc  c                                           ; $7cba: $99
	sbc  c                                           ; $7cbb: $99
	sbc  c                                           ; $7cbc: $99
	adc  b                                           ; $7cbd: $88
	halt                                             ; $7cbe: $76
	ld   h, [hl]                                     ; $7cbf: $66
	ld   a, c                                        ; $7cc0: $79
	sbc  c                                           ; $7cc1: $99
	sbc  c                                           ; $7cc2: $99
	sbc  c                                           ; $7cc3: $99
	sbc  c                                           ; $7cc4: $99
	add  a                                           ; $7cc5: $87
	ld   h, [hl]                                     ; $7cc6: $66
	ld   h, [hl]                                     ; $7cc7: $66
	ld   a, c                                        ; $7cc8: $79
	sbc  c                                           ; $7cc9: $99
	sbc  c                                           ; $7cca: $99
	sbc  c                                           ; $7ccb: $99
	sbc  c                                           ; $7ccc: $99
	sub  a                                           ; $7ccd: $97
	ld   h, [hl]                                     ; $7cce: $66
	ld   h, a                                        ; $7ccf: $67
	ld   a, c                                        ; $7cd0: $79
	sbc  c                                           ; $7cd1: $99
	sbc  c                                           ; $7cd2: $99
	sbc  c                                           ; $7cd3: $99
	sbc  c                                           ; $7cd4: $99
	sub  a                                           ; $7cd5: $97
	ld   h, [hl]                                     ; $7cd6: $66
	ld   h, a                                        ; $7cd7: $67
	ld   a, c                                        ; $7cd8: $79
	sbc  c                                           ; $7cd9: $99
	sbc  c                                           ; $7cda: $99
	sbc  c                                           ; $7cdb: $99
	sbc  c                                           ; $7cdc: $99
	sub  a                                           ; $7cdd: $97
	halt                                             ; $7cde: $76
	ld   h, a                                        ; $7cdf: $67
	ld   a, c                                        ; $7ce0: $79
	sbc  d                                           ; $7ce1: $9a
	sbc  c                                           ; $7ce2: $99
	sbc  c                                           ; $7ce3: $99
	sbc  b                                           ; $7ce4: $98
	sub  a                                           ; $7ce5: $97
	halt                                             ; $7ce6: $76
	ld   h, a                                        ; $7ce7: $67
	ld   a, c                                        ; $7ce8: $79
	sbc  d                                           ; $7ce9: $9a
	sbc  c                                           ; $7cea: $99
	adc  b                                           ; $7ceb: $88
	adc  b                                           ; $7cec: $88
	sbc  b                                           ; $7ced: $98
	halt                                             ; $7cee: $76
	ld   h, a                                        ; $7cef: $67
	ld   a, c                                        ; $7cf0: $79
	sbc  d                                           ; $7cf1: $9a
	sbc  c                                           ; $7cf2: $99
	adc  b                                           ; $7cf3: $88
	sbc  c                                           ; $7cf4: $99
	adc  b                                           ; $7cf5: $88
	ld   [hl], a                                     ; $7cf6: $77
	ld   h, a                                        ; $7cf7: $67
	ld   a, b                                        ; $7cf8: $78
	sbc  c                                           ; $7cf9: $99
	sbc  c                                           ; $7cfa: $99
	adc  c                                           ; $7cfb: $89
	sbc  c                                           ; $7cfc: $99
	adc  b                                           ; $7cfd: $88
	ld   [hl], a                                     ; $7cfe: $77
	ld   [hl], a                                     ; $7cff: $77
	ld   a, b                                        ; $7d00: $78
	adc  c                                           ; $7d01: $89
	sbc  c                                           ; $7d02: $99
	adc  c                                           ; $7d03: $89
	sbc  c                                           ; $7d04: $99
	adc  b                                           ; $7d05: $88
	ld   [hl], a                                     ; $7d06: $77
	ld   [hl], a                                     ; $7d07: $77
	ld   a, b                                        ; $7d08: $78
	sbc  c                                           ; $7d09: $99
	sbc  c                                           ; $7d0a: $99
	adc  c                                           ; $7d0b: $89
	adc  b                                           ; $7d0c: $88
	adc  b                                           ; $7d0d: $88
	add  a                                           ; $7d0e: $87
	ld   [hl], a                                     ; $7d0f: $77
	ld   [hl], a                                     ; $7d10: $77
	adc  b                                           ; $7d11: $88
	sbc  c                                           ; $7d12: $99
	adc  c                                           ; $7d13: $89
	adc  b                                           ; $7d14: $88
	adc  b                                           ; $7d15: $88
	add  a                                           ; $7d16: $87
	ld   [hl], a                                     ; $7d17: $77
	ld   [hl], a                                     ; $7d18: $77
	adc  c                                           ; $7d19: $89
	adc  c                                           ; $7d1a: $89
	adc  c                                           ; $7d1b: $89
	adc  b                                           ; $7d1c: $88
	adc  b                                           ; $7d1d: $88
	adc  b                                           ; $7d1e: $88
	ld   [hl], a                                     ; $7d1f: $77
	ld   [hl], a                                     ; $7d20: $77
	adc  b                                           ; $7d21: $88
	adc  b                                           ; $7d22: $88
	adc  c                                           ; $7d23: $89
	adc  b                                           ; $7d24: $88
	adc  b                                           ; $7d25: $88
	adc  b                                           ; $7d26: $88
	ld   [hl], a                                     ; $7d27: $77
	ld   [hl], a                                     ; $7d28: $77
	ld   a, b                                        ; $7d29: $78
	sbc  b                                           ; $7d2a: $98
	adc  b                                           ; $7d2b: $88
	sbc  b                                           ; $7d2c: $98
	adc  b                                           ; $7d2d: $88
	adc  b                                           ; $7d2e: $88
	add  a                                           ; $7d2f: $87
	ld   [hl], a                                     ; $7d30: $77
	ld   a, b                                        ; $7d31: $78
	adc  c                                           ; $7d32: $89
	adc  b                                           ; $7d33: $88
	sbc  b                                           ; $7d34: $98
	adc  b                                           ; $7d35: $88
	adc  b                                           ; $7d36: $88
	adc  b                                           ; $7d37: $88
	ld   [hl], a                                     ; $7d38: $77
	ld   [hl], a                                     ; $7d39: $77
	adc  b                                           ; $7d3a: $88
	sbc  b                                           ; $7d3b: $98
	sbc  c                                           ; $7d3c: $99
	adc  b                                           ; $7d3d: $88
	adc  b                                           ; $7d3e: $88
	adc  b                                           ; $7d3f: $88
	ld   [hl], a                                     ; $7d40: $77
	ld   [hl], a                                     ; $7d41: $77
	adc  b                                           ; $7d42: $88
	sbc  c                                           ; $7d43: $99
	sbc  c                                           ; $7d44: $99
	adc  b                                           ; $7d45: $88
	adc  b                                           ; $7d46: $88
	adc  b                                           ; $7d47: $88
	add  a                                           ; $7d48: $87
	ld   [hl], a                                     ; $7d49: $77
	adc  b                                           ; $7d4a: $88
	adc  c                                           ; $7d4b: $89
	sbc  c                                           ; $7d4c: $99
	adc  b                                           ; $7d4d: $88
	adc  b                                           ; $7d4e: $88
	adc  b                                           ; $7d4f: $88
	adc  b                                           ; $7d50: $88
	adc  b                                           ; $7d51: $88
	adc  b                                           ; $7d52: $88
	adc  b                                           ; $7d53: $88
	sbc  c                                           ; $7d54: $99
	sbc  b                                           ; $7d55: $98
	adc  b                                           ; $7d56: $88
	adc  b                                           ; $7d57: $88
	adc  b                                           ; $7d58: $88
	adc  b                                           ; $7d59: $88
	adc  b                                           ; $7d5a: $88
	adc  b                                           ; $7d5b: $88
	adc  b                                           ; $7d5c: $88
	sbc  b                                           ; $7d5d: $98
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
