; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $032", ROMX[$4000], BANK[$32]

if def(VWF)
	INCBIN "en_creditsHeaders.2bpp"
else

	nop                                              ; $4000: $00
	nop                                              ; $4001: $00
	nop                                              ; $4002: $00
	nop                                              ; $4003: $00
	nop                                              ; $4004: $00
	nop                                              ; $4005: $00
	nop                                              ; $4006: $00
	nop                                              ; $4007: $00
	nop                                              ; $4008: $00
	nop                                              ; $4009: $00
	nop                                              ; $400a: $00
	nop                                              ; $400b: $00
	nop                                              ; $400c: $00
	nop                                              ; $400d: $00
	nop                                              ; $400e: $00
	nop                                              ; $400f: $00
	nop                                              ; $4010: $00
	nop                                              ; $4011: $00
	nop                                              ; $4012: $00
	nop                                              ; $4013: $00
	nop                                              ; $4014: $00
	nop                                              ; $4015: $00
	nop                                              ; $4016: $00
	nop                                              ; $4017: $00
	nop                                              ; $4018: $00
	nop                                              ; $4019: $00
	nop                                              ; $401a: $00
	nop                                              ; $401b: $00
	nop                                              ; $401c: $00
	nop                                              ; $401d: $00
	nop                                              ; $401e: $00
	nop                                              ; $401f: $00
	nop                                              ; $4020: $00
	nop                                              ; $4021: $00
	nop                                              ; $4022: $00
	nop                                              ; $4023: $00
	nop                                              ; $4024: $00
	nop                                              ; $4025: $00
	nop                                              ; $4026: $00
	nop                                              ; $4027: $00
	nop                                              ; $4028: $00
	nop                                              ; $4029: $00
	nop                                              ; $402a: $00
	nop                                              ; $402b: $00
	nop                                              ; $402c: $00
	nop                                              ; $402d: $00
	nop                                              ; $402e: $00
	nop                                              ; $402f: $00
	nop                                              ; $4030: $00
	nop                                              ; $4031: $00
	nop                                              ; $4032: $00
	nop                                              ; $4033: $00
	nop                                              ; $4034: $00
	nop                                              ; $4035: $00
	nop                                              ; $4036: $00
	nop                                              ; $4037: $00
	nop                                              ; $4038: $00
	nop                                              ; $4039: $00
	nop                                              ; $403a: $00
	nop                                              ; $403b: $00
	nop                                              ; $403c: $00
	nop                                              ; $403d: $00
	nop                                              ; $403e: $00
	nop                                              ; $403f: $00
	nop                                              ; $4040: $00
	nop                                              ; $4041: $00
	nop                                              ; $4042: $00
	nop                                              ; $4043: $00
	nop                                              ; $4044: $00
	nop                                              ; $4045: $00
	nop                                              ; $4046: $00
	nop                                              ; $4047: $00
	nop                                              ; $4048: $00
	nop                                              ; $4049: $00
	nop                                              ; $404a: $00
	nop                                              ; $404b: $00
	nop                                              ; $404c: $00
	nop                                              ; $404d: $00
	nop                                              ; $404e: $00
	nop                                              ; $404f: $00
	nop                                              ; $4050: $00
	nop                                              ; $4051: $00
	nop                                              ; $4052: $00
	nop                                              ; $4053: $00
	nop                                              ; $4054: $00
	nop                                              ; $4055: $00
	nop                                              ; $4056: $00
	nop                                              ; $4057: $00
	nop                                              ; $4058: $00
	nop                                              ; $4059: $00
	nop                                              ; $405a: $00
	nop                                              ; $405b: $00
	nop                                              ; $405c: $00
	nop                                              ; $405d: $00
	nop                                              ; $405e: $00
	nop                                              ; $405f: $00
	nop                                              ; $4060: $00
	nop                                              ; $4061: $00
	nop                                              ; $4062: $00
	nop                                              ; $4063: $00
	nop                                              ; $4064: $00
	nop                                              ; $4065: $00
	nop                                              ; $4066: $00
	nop                                              ; $4067: $00
	nop                                              ; $4068: $00
	nop                                              ; $4069: $00
	nop                                              ; $406a: $00
	nop                                              ; $406b: $00
	nop                                              ; $406c: $00
	nop                                              ; $406d: $00
	nop                                              ; $406e: $00
	nop                                              ; $406f: $00
	nop                                              ; $4070: $00
	nop                                              ; $4071: $00
	nop                                              ; $4072: $00
	nop                                              ; $4073: $00
	nop                                              ; $4074: $00
	nop                                              ; $4075: $00
	nop                                              ; $4076: $00
	nop                                              ; $4077: $00
	nop                                              ; $4078: $00
	nop                                              ; $4079: $00
	nop                                              ; $407a: $00
	nop                                              ; $407b: $00
	nop                                              ; $407c: $00
	nop                                              ; $407d: $00
	nop                                              ; $407e: $00
	nop                                              ; $407f: $00
	nop                                              ; $4080: $00
	nop                                              ; $4081: $00
	nop                                              ; $4082: $00
	nop                                              ; $4083: $00
	nop                                              ; $4084: $00
	nop                                              ; $4085: $00
	nop                                              ; $4086: $00
	nop                                              ; $4087: $00
	nop                                              ; $4088: $00
	nop                                              ; $4089: $00
	nop                                              ; $408a: $00
	nop                                              ; $408b: $00
	nop                                              ; $408c: $00
	nop                                              ; $408d: $00
	nop                                              ; $408e: $00
	nop                                              ; $408f: $00
	nop                                              ; $4090: $00
	nop                                              ; $4091: $00
	nop                                              ; $4092: $00
	nop                                              ; $4093: $00
	nop                                              ; $4094: $00
	nop                                              ; $4095: $00
	nop                                              ; $4096: $00
	nop                                              ; $4097: $00
	nop                                              ; $4098: $00
	nop                                              ; $4099: $00
	nop                                              ; $409a: $00
	nop                                              ; $409b: $00
	nop                                              ; $409c: $00
	nop                                              ; $409d: $00
	nop                                              ; $409e: $00
	nop                                              ; $409f: $00
	nop                                              ; $40a0: $00
	nop                                              ; $40a1: $00
	nop                                              ; $40a2: $00
	nop                                              ; $40a3: $00
	nop                                              ; $40a4: $00
	nop                                              ; $40a5: $00
	nop                                              ; $40a6: $00
	nop                                              ; $40a7: $00
	nop                                              ; $40a8: $00
	nop                                              ; $40a9: $00
	nop                                              ; $40aa: $00
	nop                                              ; $40ab: $00
	nop                                              ; $40ac: $00
	nop                                              ; $40ad: $00
	nop                                              ; $40ae: $00
	nop                                              ; $40af: $00
	nop                                              ; $40b0: $00
	nop                                              ; $40b1: $00
	nop                                              ; $40b2: $00
	nop                                              ; $40b3: $00
	nop                                              ; $40b4: $00
	nop                                              ; $40b5: $00
	nop                                              ; $40b6: $00
	nop                                              ; $40b7: $00
	nop                                              ; $40b8: $00
	nop                                              ; $40b9: $00
	nop                                              ; $40ba: $00
	nop                                              ; $40bb: $00
	nop                                              ; $40bc: $00
	nop                                              ; $40bd: $00
	nop                                              ; $40be: $00
	nop                                              ; $40bf: $00
	nop                                              ; $40c0: $00
	nop                                              ; $40c1: $00
	nop                                              ; $40c2: $00
	inc  c                                           ; $40c3: $0c
	nop                                              ; $40c4: $00
	rrca                                             ; $40c5: $0f
	nop                                              ; $40c6: $00
	inc  c                                           ; $40c7: $0c
	nop                                              ; $40c8: $00
	rrca                                             ; $40c9: $0f
	nop                                              ; $40ca: $00
	jr   jr_032_40cd                                 ; $40cb: $18 $00

jr_032_40cd:
	rlca                                             ; $40cd: $07
	nop                                              ; $40ce: $00
	ld   b, $00                                      ; $40cf: $06 $00
	ld   b, $00                                      ; $40d1: $06 $00
	rrca                                             ; $40d3: $0f
	nop                                              ; $40d4: $00
	ld   bc, $0700                                   ; $40d5: $01 $00 $07
	nop                                              ; $40d8: $00
	dec  e                                           ; $40d9: $1d
	nop                                              ; $40da: $00
	ld   bc, $0300                                   ; $40db: $01 $00 $03
	nop                                              ; $40de: $00
	nop                                              ; $40df: $00
	nop                                              ; $40e0: $00
	nop                                              ; $40e1: $00
	nop                                              ; $40e2: $00
	ret  nz                                          ; $40e3: $c0

	nop                                              ; $40e4: $00
	or   $00                                         ; $40e5: $f6 $00
	add  $00                                         ; $40e7: $c6 $00
	or   $00                                         ; $40e9: $f6 $00
	add  $00                                         ; $40eb: $c6 $00
	cp   $00                                         ; $40ed: $fe $00
	ret  c                                           ; $40ef: $d8

	nop                                              ; $40f0: $00
	reti                                             ; $40f1: $d9


	nop                                              ; $40f2: $00
	rst  $38                                         ; $40f3: $ff
	nop                                              ; $40f4: $00
	ld   hl, sp+$00                                  ; $40f5: $f8 $00
	sbc  e                                           ; $40f7: $9b
	nop                                              ; $40f8: $00
	sbc  [hl]                                        ; $40f9: $9e
	nop                                              ; $40fa: $00
	adc  [hl]                                        ; $40fb: $8e
	nop                                              ; $40fc: $00
	db   $e3                                         ; $40fd: $e3
	nop                                              ; $40fe: $00
	nop                                              ; $40ff: $00
	nop                                              ; $4100: $00
	nop                                              ; $4101: $00
	nop                                              ; $4102: $00
	jp   $c300                                       ; $4103: $c3 $00 $c3


	nop                                              ; $4106: $00
	rst  ToBoot                                         ; $4107: $c7
	nop                                              ; $4108: $00
	add  $00                                         ; $4109: $c6 $00
	adc  $00                                         ; $410b: $ce $00
	sbc  $00                                         ; $410d: $de $00
	add  $00                                         ; $410f: $c6 $00
	add  $00                                         ; $4111: $c6 $00
	add  $00                                         ; $4113: $c6 $00
	ld   b, $00                                      ; $4115: $06 $00
	add  [hl]                                        ; $4117: $86
	nop                                              ; $4118: $00
	ld   b, $00                                      ; $4119: $06 $00
	ld   b, $00                                      ; $411b: $06 $00
	add  $00                                         ; $411d: $c6 $00
	nop                                              ; $411f: $00
	nop                                              ; $4120: $00
	nop                                              ; $4121: $00
	nop                                              ; $4122: $00
	jr   nc, jr_032_4125                             ; $4123: $30 $00

jr_032_4125:
	jr   nc, jr_032_4127                             ; $4125: $30 $00

jr_032_4127:
	jr   nc, jr_032_4129                             ; $4127: $30 $00

jr_032_4129:
	ld   a, a                                        ; $4129: $7f
	nop                                              ; $412a: $00
	ld   l, h                                        ; $412b: $6c
	nop                                              ; $412c: $00
	call z, $0f00                                    ; $412d: $cc $00 $0f
	nop                                              ; $4130: $00
	inc  c                                           ; $4131: $0c
	nop                                              ; $4132: $00
	inc  c                                           ; $4133: $0c
	nop                                              ; $4134: $00
	rrca                                             ; $4135: $0f
	nop                                              ; $4136: $00
	inc  c                                           ; $4137: $0c
	nop                                              ; $4138: $00
	inc  c                                           ; $4139: $0c
	nop                                              ; $413a: $00
	inc  c                                           ; $413b: $0c
	nop                                              ; $413c: $00
	inc  c                                           ; $413d: $0c
	nop                                              ; $413e: $00
	nop                                              ; $413f: $00
	nop                                              ; $4140: $00
	nop                                              ; $4141: $00
	nop                                              ; $4142: $00
	inc  bc                                          ; $4143: $03
	nop                                              ; $4144: $00
	inc  bc                                          ; $4145: $03
	nop                                              ; $4146: $00
	rlca                                             ; $4147: $07
	nop                                              ; $4148: $00
	add  $00                                         ; $4149: $c6 $00
	rrca                                             ; $414b: $0f
	nop                                              ; $414c: $00
	inc  bc                                          ; $414d: $03
	nop                                              ; $414e: $00
	add  $00                                         ; $414f: $c6 $00
	rra                                              ; $4151: $1f
	nop                                              ; $4152: $00
	inc  bc                                          ; $4153: $03
	nop                                              ; $4154: $00
	rlc  b                                           ; $4155: $cb $00
	dec  bc                                          ; $4157: $0b
	nop                                              ; $4158: $00
	dec  bc                                          ; $4159: $0b
	nop                                              ; $415a: $00
	inc  de                                          ; $415b: $13
	nop                                              ; $415c: $00
	inc  bc                                          ; $415d: $03
	nop                                              ; $415e: $00
	nop                                              ; $415f: $00
	nop                                              ; $4160: $00
	nop                                              ; $4161: $00
	nop                                              ; $4162: $00
	rrca                                             ; $4163: $0f
	nop                                              ; $4164: $00
	inc  sp                                          ; $4165: $33
	nop                                              ; $4166: $00
	inc  sp                                          ; $4167: $33
	nop                                              ; $4168: $00
	ld   l, l                                        ; $4169: $6d
	nop                                              ; $416a: $00
	adc  h                                           ; $416b: $8c
	nop                                              ; $416c: $00
	add  hl, de                                      ; $416d: $19
	nop                                              ; $416e: $00
	ccf                                              ; $416f: $3f
	nop                                              ; $4170: $00
	jp   nz, $0f00                                   ; $4171: $c2 $00 $0f

	nop                                              ; $4174: $00
	xor  l                                           ; $4175: $ad
	nop                                              ; $4176: $00
	db   $ec                                         ; $4177: $ec
	nop                                              ; $4178: $00
	ld   l, h                                        ; $4179: $6c
	nop                                              ; $417a: $00
	dec  l                                           ; $417b: $2d
	nop                                              ; $417c: $00
	rlca                                             ; $417d: $07
	nop                                              ; $417e: $00
	nop                                              ; $417f: $00
	nop                                              ; $4180: $00
	nop                                              ; $4181: $00
	nop                                              ; $4182: $00
	ld   b, $00                                      ; $4183: $06 $00
	ld   b, $00                                      ; $4185: $06 $00
	rra                                              ; $4187: $1f
	nop                                              ; $4188: $00
	add  [hl]                                        ; $4189: $86
	nop                                              ; $418a: $00
	add  $00                                         ; $418b: $c6 $00
	ld   b, $00                                      ; $418d: $06 $00
	rlca                                             ; $418f: $07
	nop                                              ; $4190: $00
	ld   b, $00                                      ; $4191: $06 $00
	ld   e, $00                                      ; $4193: $1e $00
	ld   b, [hl]                                     ; $4195: $46
	nop                                              ; $4196: $00
	ld   h, [hl]                                     ; $4197: $66
	nop                                              ; $4198: $00
	and  $00                                         ; $4199: $e6 $00
	adc  [hl]                                        ; $419b: $8e
	nop                                              ; $419c: $00
	add  [hl]                                        ; $419d: $86
	nop                                              ; $419e: $00
	nop                                              ; $419f: $00
	nop                                              ; $41a0: $00
	nop                                              ; $41a1: $00
	nop                                              ; $41a2: $00
	ld   h, b                                        ; $41a3: $60
	nop                                              ; $41a4: $00
	ld   h, a                                        ; $41a5: $67
	nop                                              ; $41a6: $00
	db   $fc                                         ; $41a7: $fc
	nop                                              ; $41a8: $00
	ld   h, c                                        ; $41a9: $61
	nop                                              ; $41aa: $00
	ld   h, c                                        ; $41ab: $61
	nop                                              ; $41ac: $00
	ccf                                              ; $41ad: $3f
	nop                                              ; $41ae: $00
	add  b                                           ; $41af: $80
	nop                                              ; $41b0: $00
	ld   a, a                                        ; $41b1: $7f
	nop                                              ; $41b2: $00
	ld   h, e                                        ; $41b3: $63
	nop                                              ; $41b4: $00
	ld   h, e                                        ; $41b5: $63
	nop                                              ; $41b6: $00
	ld   a, a                                        ; $41b7: $7f
	nop                                              ; $41b8: $00
	ld   h, e                                        ; $41b9: $63
	nop                                              ; $41ba: $00
	ld   h, e                                        ; $41bb: $63
	nop                                              ; $41bc: $00
	ld   a, a                                        ; $41bd: $7f
	nop                                              ; $41be: $00
	nop                                              ; $41bf: $00
	nop                                              ; $41c0: $00
	nop                                              ; $41c1: $00
	nop                                              ; $41c2: $00
	add  hl, de                                      ; $41c3: $19
	nop                                              ; $41c4: $00
	add  hl, de                                      ; $41c5: $19
	nop                                              ; $41c6: $00
	ld   a, a                                        ; $41c7: $7f
	nop                                              ; $41c8: $00
	jr   jr_032_41cb                                 ; $41c9: $18 $00

jr_032_41cb:
	jr   jr_032_41cd                                 ; $41cb: $18 $00

jr_032_41cd:
	jr   jr_032_41cf                                 ; $41cd: $18 $00

jr_032_41cf:
	ld   e, $00                                      ; $41cf: $1e $00
	jr   jr_032_41d3                                 ; $41d1: $18 $00

jr_032_41d3:
	ld   a, b                                        ; $41d3: $78
	nop                                              ; $41d4: $00
	jr   jr_032_41d7                                 ; $41d5: $18 $00

jr_032_41d7:
	jr   jr_032_41d9                                 ; $41d7: $18 $00

jr_032_41d9:
	add  hl, de                                      ; $41d9: $19
	nop                                              ; $41da: $00
	jr   c, jr_032_41dd                              ; $41db: $38 $00

jr_032_41dd:
	jr   jr_032_41df                                 ; $41dd: $18 $00

jr_032_41df:
	nop                                              ; $41df: $00
	nop                                              ; $41e0: $00
	nop                                              ; $41e1: $00
	nop                                              ; $41e2: $00
	rst  $38                                         ; $41e3: $ff
	nop                                              ; $41e4: $00
	add  e                                           ; $41e5: $83
	nop                                              ; $41e6: $00
	sub  e                                           ; $41e7: $93
	nop                                              ; $41e8: $00
	cp   $00                                         ; $41e9: $fe $00
	stop                                             ; $41eb: $10 $00
	cp   $00                                         ; $41ed: $fe $00
	sub  $00                                         ; $41ef: $d6 $00
	cp   $00                                         ; $41f1: $fe $00
	sub  $00                                         ; $41f3: $d6 $00
	cp   $00                                         ; $41f5: $fe $00
	stop                                             ; $41f7: $10 $00
	rst  $38                                         ; $41f9: $ff
	nop                                              ; $41fa: $00
	stop                                             ; $41fb: $10 $00
	stop                                             ; $41fd: $10 $00
	nop                                              ; $41ff: $00
	nop                                              ; $4200: $00
	nop                                              ; $4201: $00
	nop                                              ; $4202: $00
	nop                                              ; $4203: $00
	nop                                              ; $4204: $00
	nop                                              ; $4205: $00
	nop                                              ; $4206: $00
	nop                                              ; $4207: $00
	nop                                              ; $4208: $00
	nop                                              ; $4209: $00
	nop                                              ; $420a: $00
	nop                                              ; $420b: $00
	nop                                              ; $420c: $00
	nop                                              ; $420d: $00
	nop                                              ; $420e: $00
	nop                                              ; $420f: $00
	nop                                              ; $4210: $00
	nop                                              ; $4211: $00
	nop                                              ; $4212: $00
	nop                                              ; $4213: $00
	nop                                              ; $4214: $00
	nop                                              ; $4215: $00
	nop                                              ; $4216: $00
	nop                                              ; $4217: $00
	nop                                              ; $4218: $00
	nop                                              ; $4219: $00
	nop                                              ; $421a: $00
	nop                                              ; $421b: $00
	nop                                              ; $421c: $00
	nop                                              ; $421d: $00
	nop                                              ; $421e: $00
	nop                                              ; $421f: $00
	nop                                              ; $4220: $00
	nop                                              ; $4221: $00
	nop                                              ; $4222: $00
	nop                                              ; $4223: $00
	nop                                              ; $4224: $00
	nop                                              ; $4225: $00
	nop                                              ; $4226: $00
	nop                                              ; $4227: $00
	nop                                              ; $4228: $00
	nop                                              ; $4229: $00
	nop                                              ; $422a: $00
	nop                                              ; $422b: $00
	nop                                              ; $422c: $00
	nop                                              ; $422d: $00
	nop                                              ; $422e: $00
	nop                                              ; $422f: $00
	nop                                              ; $4230: $00
	nop                                              ; $4231: $00
	nop                                              ; $4232: $00
	nop                                              ; $4233: $00
	nop                                              ; $4234: $00
	nop                                              ; $4235: $00
	nop                                              ; $4236: $00
	nop                                              ; $4237: $00
	nop                                              ; $4238: $00
	nop                                              ; $4239: $00
	nop                                              ; $423a: $00
	nop                                              ; $423b: $00
	nop                                              ; $423c: $00
	nop                                              ; $423d: $00
	nop                                              ; $423e: $00
	nop                                              ; $423f: $00
	nop                                              ; $4240: $00
	nop                                              ; $4241: $00
	nop                                              ; $4242: $00
	nop                                              ; $4243: $00
	nop                                              ; $4244: $00
	nop                                              ; $4245: $00
	nop                                              ; $4246: $00
	nop                                              ; $4247: $00
	nop                                              ; $4248: $00
	nop                                              ; $4249: $00
	nop                                              ; $424a: $00
	nop                                              ; $424b: $00
	nop                                              ; $424c: $00
	nop                                              ; $424d: $00
	nop                                              ; $424e: $00
	nop                                              ; $424f: $00
	nop                                              ; $4250: $00
	nop                                              ; $4251: $00
	nop                                              ; $4252: $00
	nop                                              ; $4253: $00
	nop                                              ; $4254: $00
	nop                                              ; $4255: $00
	nop                                              ; $4256: $00
	nop                                              ; $4257: $00
	nop                                              ; $4258: $00
	nop                                              ; $4259: $00
	nop                                              ; $425a: $00
	nop                                              ; $425b: $00
	nop                                              ; $425c: $00
	nop                                              ; $425d: $00
	nop                                              ; $425e: $00
	nop                                              ; $425f: $00
	nop                                              ; $4260: $00
	nop                                              ; $4261: $00
	nop                                              ; $4262: $00
	nop                                              ; $4263: $00
	nop                                              ; $4264: $00
	nop                                              ; $4265: $00
	nop                                              ; $4266: $00
	nop                                              ; $4267: $00
	nop                                              ; $4268: $00
	nop                                              ; $4269: $00
	nop                                              ; $426a: $00
	nop                                              ; $426b: $00
	nop                                              ; $426c: $00
	nop                                              ; $426d: $00
	nop                                              ; $426e: $00
	nop                                              ; $426f: $00
	nop                                              ; $4270: $00
	nop                                              ; $4271: $00
	nop                                              ; $4272: $00
	nop                                              ; $4273: $00
	nop                                              ; $4274: $00
	nop                                              ; $4275: $00
	nop                                              ; $4276: $00
	nop                                              ; $4277: $00
	nop                                              ; $4278: $00
	nop                                              ; $4279: $00
	nop                                              ; $427a: $00
	nop                                              ; $427b: $00
	nop                                              ; $427c: $00
	nop                                              ; $427d: $00
	nop                                              ; $427e: $00
	nop                                              ; $427f: $00
	nop                                              ; $4280: $00
	nop                                              ; $4281: $00
	nop                                              ; $4282: $00
	nop                                              ; $4283: $00
	nop                                              ; $4284: $00
	nop                                              ; $4285: $00
	nop                                              ; $4286: $00
	nop                                              ; $4287: $00
	nop                                              ; $4288: $00
	nop                                              ; $4289: $00
	nop                                              ; $428a: $00
	nop                                              ; $428b: $00
	nop                                              ; $428c: $00
	nop                                              ; $428d: $00
	nop                                              ; $428e: $00
	nop                                              ; $428f: $00
	nop                                              ; $4290: $00
	nop                                              ; $4291: $00
	nop                                              ; $4292: $00
	nop                                              ; $4293: $00
	nop                                              ; $4294: $00
	nop                                              ; $4295: $00
	nop                                              ; $4296: $00
	nop                                              ; $4297: $00
	nop                                              ; $4298: $00
	nop                                              ; $4299: $00
	nop                                              ; $429a: $00
	nop                                              ; $429b: $00
	nop                                              ; $429c: $00
	nop                                              ; $429d: $00
	nop                                              ; $429e: $00
	nop                                              ; $429f: $00
	nop                                              ; $42a0: $00
	nop                                              ; $42a1: $00
	nop                                              ; $42a2: $00
	ld   bc, $0100                                   ; $42a3: $01 $00 $01
	nop                                              ; $42a6: $00
	inc  bc                                          ; $42a7: $03
	nop                                              ; $42a8: $00
	inc  bc                                          ; $42a9: $03
	nop                                              ; $42aa: $00
	rlca                                             ; $42ab: $07
	nop                                              ; $42ac: $00
	ld   bc, $0300                                   ; $42ad: $01 $00 $03
	nop                                              ; $42b0: $00
	rrca                                             ; $42b1: $0f
	nop                                              ; $42b2: $00
	ld   bc, $0500                                   ; $42b3: $01 $00 $05
	nop                                              ; $42b6: $00
	dec  b                                           ; $42b7: $05
	nop                                              ; $42b8: $00
	dec  b                                           ; $42b9: $05
	nop                                              ; $42ba: $00
	add  hl, bc                                      ; $42bb: $09
	nop                                              ; $42bc: $00
	ld   bc, $0000                                   ; $42bd: $01 $00 $00
	nop                                              ; $42c0: $00
	nop                                              ; $42c1: $00
	nop                                              ; $42c2: $00
	add  a                                           ; $42c3: $87
	nop                                              ; $42c4: $00
	sbc  c                                           ; $42c5: $99
	nop                                              ; $42c6: $00
	sbc  c                                           ; $42c7: $99
	nop                                              ; $42c8: $00
	ld   [hl], $00                                   ; $42c9: $36 $00
	add  $00                                         ; $42cb: $c6 $00
	adc  h                                           ; $42cd: $8c
	nop                                              ; $42ce: $00
	rra                                              ; $42cf: $1f
	nop                                              ; $42d0: $00
	pop  hl                                          ; $42d1: $e1
	nop                                              ; $42d2: $00
	add  a                                           ; $42d3: $87
	nop                                              ; $42d4: $00
	sub  $00                                         ; $42d5: $d6 $00
	or   $00                                         ; $42d7: $f6 $00
	or   [hl]                                        ; $42d9: $b6
	nop                                              ; $42da: $00
	sub  [hl]                                        ; $42db: $96
	nop                                              ; $42dc: $00
	add  e                                           ; $42dd: $83
	nop                                              ; $42de: $00
	nop                                              ; $42df: $00
	nop                                              ; $42e0: $00
	nop                                              ; $42e1: $00
	nop                                              ; $42e2: $00
	add  c                                           ; $42e3: $81
	nop                                              ; $42e4: $00
	add  c                                           ; $42e5: $81
	nop                                              ; $42e6: $00
	add  c                                           ; $42e7: $81
	nop                                              ; $42e8: $00
	jp   Jump_032_6200                               ; $42e9: $c3 $00 $62


	nop                                              ; $42ec: $00
	add  [hl]                                        ; $42ed: $86
	nop                                              ; $42ee: $00
	adc  a                                           ; $42ef: $8f
	nop                                              ; $42f0: $00
	jr   jr_032_42f3                                 ; $42f1: $18 $00

jr_032_42f3:
	add  e                                           ; $42f3: $83
	nop                                              ; $42f4: $00
	and  e                                           ; $42f5: $a3
	nop                                              ; $42f6: $00
	inc  sp                                          ; $42f7: $33
	nop                                              ; $42f8: $00
	ld   [hl], e                                     ; $42f9: $73
	nop                                              ; $42fa: $00
	jp   $c300                                       ; $42fb: $c3 $00 $c3


	nop                                              ; $42fe: $00
	nop                                              ; $42ff: $00
	nop                                              ; $4300: $00
	nop                                              ; $4301: $00
	nop                                              ; $4302: $00
	ldh  a, [rP1]                                    ; $4303: $f0 $00
	ld   sp, $3800                                   ; $4305: $31 $00 $38
	nop                                              ; $4308: $00
	jr   jr_032_430b                                 ; $4309: $18 $00

jr_032_430b:
	inc  e                                           ; $430b: $1c
	nop                                              ; $430c: $00
	inc  c                                           ; $430d: $0c
	nop                                              ; $430e: $00
	cp   $00                                         ; $430f: $fe $00
	inc  bc                                          ; $4311: $03
	nop                                              ; $4312: $00
	db   $fc                                         ; $4313: $fc
	nop                                              ; $4314: $00
	inc  c                                           ; $4315: $0c
	nop                                              ; $4316: $00
	inc  c                                           ; $4317: $0c
	nop                                              ; $4318: $00
	inc  c                                           ; $4319: $0c
	nop                                              ; $431a: $00
	inc  c                                           ; $431b: $0c
	nop                                              ; $431c: $00
	db   $fc                                         ; $431d: $fc
	nop                                              ; $431e: $00
	nop                                              ; $431f: $00
	nop                                              ; $4320: $00
	nop                                              ; $4321: $00
	nop                                              ; $4322: $00
	nop                                              ; $4323: $00
	nop                                              ; $4324: $00
	rst  $38                                         ; $4325: $ff
	nop                                              ; $4326: $00
	inc  bc                                          ; $4327: $03
	nop                                              ; $4328: $00
	inc  bc                                          ; $4329: $03
	nop                                              ; $432a: $00
	inc  bc                                          ; $432b: $03
	nop                                              ; $432c: $00
	inc  bc                                          ; $432d: $03
	nop                                              ; $432e: $00
	inc  bc                                          ; $432f: $03
	nop                                              ; $4330: $00
	add  e                                           ; $4331: $83
	nop                                              ; $4332: $00
	inc  bc                                          ; $4333: $03
	nop                                              ; $4334: $00
	rlca                                             ; $4335: $07
	nop                                              ; $4336: $00
	ld   b, $00                                      ; $4337: $06 $00
	ld   c, $00                                      ; $4339: $0e $00
	inc  e                                           ; $433b: $1c
	nop                                              ; $433c: $00
	ldh  a, [rP1]                                    ; $433d: $f0 $00
	nop                                              ; $433f: $00
	nop                                              ; $4340: $00
	nop                                              ; $4341: $00
	nop                                              ; $4342: $00
	ldh  [rP1], a                                    ; $4343: $e0 $00
	or   a                                           ; $4345: $b7
	nop                                              ; $4346: $00
	or   [hl]                                        ; $4347: $b6
	nop                                              ; $4348: $00
	or   [hl]                                        ; $4349: $b6
	nop                                              ; $434a: $00
	and  $00                                         ; $434b: $e6 $00
	ld   b, $00                                      ; $434d: $06 $00
	ld   b, $00                                      ; $434f: $06 $00
	ld   b, $00                                      ; $4351: $06 $00
	ld   b, $00                                      ; $4353: $06 $00
	ld   b, $00                                      ; $4355: $06 $00
	ld   b, $00                                      ; $4357: $06 $00
	ld   b, $00                                      ; $4359: $06 $00
	ld   b, $00                                      ; $435b: $06 $00
	rlca                                             ; $435d: $07
	nop                                              ; $435e: $00
	nop                                              ; $435f: $00
	nop                                              ; $4360: $00
	nop                                              ; $4361: $00
	nop                                              ; $4362: $00
	nop                                              ; $4363: $00
	nop                                              ; $4364: $00
	ld   sp, hl                                      ; $4365: $f9
	nop                                              ; $4366: $00
	jr   jr_032_4369                                 ; $4367: $18 $00

jr_032_4369:
	jr   jr_032_436b                                 ; $4369: $18 $00

jr_032_436b:
	jr   jr_032_436d                                 ; $436b: $18 $00

jr_032_436d:
	dec  de                                          ; $436d: $1b
	nop                                              ; $436e: $00
	jr   jr_032_4371                                 ; $436f: $18 $00

jr_032_4371:
	jr   jr_032_4373                                 ; $4371: $18 $00

jr_032_4373:
	jr   jr_032_4375                                 ; $4373: $18 $00

jr_032_4375:
	jr   jr_032_4377                                 ; $4375: $18 $00

jr_032_4377:
	jr   jr_032_4379                                 ; $4377: $18 $00

jr_032_4379:
	jr   jr_032_437b                                 ; $4379: $18 $00

jr_032_437b:
	jr   jr_032_437d                                 ; $437b: $18 $00

jr_032_437d:
	ld   sp, hl                                      ; $437d: $f9
	nop                                              ; $437e: $00
	nop                                              ; $437f: $00
	nop                                              ; $4380: $00
	nop                                              ; $4381: $00
	nop                                              ; $4382: $00
	inc  bc                                          ; $4383: $03
	nop                                              ; $4384: $00
	rst  $38                                         ; $4385: $ff
	nop                                              ; $4386: $00
	inc  bc                                          ; $4387: $03
	nop                                              ; $4388: $00
	nop                                              ; $4389: $00
	nop                                              ; $438a: $00
	nop                                              ; $438b: $00
	nop                                              ; $438c: $00
	rst  $38                                         ; $438d: $ff
	nop                                              ; $438e: $00
	jr   jr_032_4391                                 ; $438f: $18 $00

jr_032_4391:
	jr   jr_032_4393                                 ; $4391: $18 $00

jr_032_4393:
	jr   jr_032_4395                                 ; $4393: $18 $00

jr_032_4395:
	jr   jr_032_4397                                 ; $4395: $18 $00

jr_032_4397:
	jr   jr_032_4399                                 ; $4397: $18 $00

jr_032_4399:
	jr   c, jr_032_439b                              ; $4399: $38 $00

jr_032_439b:
	ld   [hl], b                                     ; $439b: $70
	nop                                              ; $439c: $00
	pop  bc                                          ; $439d: $c1
	nop                                              ; $439e: $00
	nop                                              ; $439f: $00
	nop                                              ; $43a0: $00
	nop                                              ; $43a1: $00
	nop                                              ; $43a2: $00
	ld   h, b                                        ; $43a3: $60
	nop                                              ; $43a4: $00
	ld   h, b                                        ; $43a5: $60
	nop                                              ; $43a6: $00
	ld   h, b                                        ; $43a7: $60
	nop                                              ; $43a8: $00
	inc  bc                                          ; $43a9: $03
	nop                                              ; $43aa: $00
	nop                                              ; $43ab: $00
	nop                                              ; $43ac: $00
	nop                                              ; $43ad: $00
	nop                                              ; $43ae: $00
	nop                                              ; $43af: $00
	nop                                              ; $43b0: $00
	rra                                              ; $43b1: $1f
	nop                                              ; $43b2: $00
	nop                                              ; $43b3: $00
	nop                                              ; $43b4: $00
	ldh  [rP1], a                                    ; $43b5: $e0 $00
	jr   nc, jr_032_43b9                             ; $43b7: $30 $00

jr_032_43b9:
	jr   nc, jr_032_43bb                             ; $43b9: $30 $00

jr_032_43bb:
	jr   nc, jr_032_43bd                             ; $43bb: $30 $00

jr_032_43bd:
	ld   hl, sp+$00                                  ; $43bd: $f8 $00
	nop                                              ; $43bf: $00
	nop                                              ; $43c0: $00
	nop                                              ; $43c1: $00
	nop                                              ; $43c2: $00
	ld   h, e                                        ; $43c3: $63
	nop                                              ; $43c4: $00
	ld   h, e                                        ; $43c5: $63
	nop                                              ; $43c6: $00
	ld   h, e                                        ; $43c7: $63
	nop                                              ; $43c8: $00
	rst  $38                                         ; $43c9: $ff
	nop                                              ; $43ca: $00
	ld   h, e                                        ; $43cb: $63
	nop                                              ; $43cc: $00
	ld   h, e                                        ; $43cd: $63
	nop                                              ; $43ce: $00
	ld   h, e                                        ; $43cf: $63
	nop                                              ; $43d0: $00
	inc  bc                                          ; $43d1: $03
	nop                                              ; $43d2: $00
	inc  bc                                          ; $43d3: $03
	nop                                              ; $43d4: $00
	inc  bc                                          ; $43d5: $03
	nop                                              ; $43d6: $00
	rlca                                             ; $43d7: $07
	nop                                              ; $43d8: $00
	ld   b, $00                                      ; $43d9: $06 $00
	ld   c, $00                                      ; $43db: $0e $00
	jr   c, jr_032_43df                              ; $43dd: $38 $00

jr_032_43df:
	nop                                              ; $43df: $00
	nop                                              ; $43e0: $00
	nop                                              ; $43e1: $00
	nop                                              ; $43e2: $00
	nop                                              ; $43e3: $00
	nop                                              ; $43e4: $00
	nop                                              ; $43e5: $00
	nop                                              ; $43e6: $00
	nop                                              ; $43e7: $00
	nop                                              ; $43e8: $00
	ldh  [rP1], a                                    ; $43e9: $e0 $00
	nop                                              ; $43eb: $00
	nop                                              ; $43ec: $00
	nop                                              ; $43ed: $00
	nop                                              ; $43ee: $00
	nop                                              ; $43ef: $00
	nop                                              ; $43f0: $00
	rra                                              ; $43f1: $1f
	nop                                              ; $43f2: $00
	nop                                              ; $43f3: $00
	nop                                              ; $43f4: $00
	nop                                              ; $43f5: $00
	nop                                              ; $43f6: $00
	nop                                              ; $43f7: $00
	nop                                              ; $43f8: $00
	nop                                              ; $43f9: $00
	nop                                              ; $43fa: $00
	nop                                              ; $43fb: $00
	nop                                              ; $43fc: $00
	nop                                              ; $43fd: $00
	nop                                              ; $43fe: $00
	nop                                              ; $43ff: $00
	nop                                              ; $4400: $00
	nop                                              ; $4401: $00
	nop                                              ; $4402: $00
	nop                                              ; $4403: $00
	nop                                              ; $4404: $00
	nop                                              ; $4405: $00
	nop                                              ; $4406: $00
	nop                                              ; $4407: $00
	nop                                              ; $4408: $00
	nop                                              ; $4409: $00
	nop                                              ; $440a: $00
	nop                                              ; $440b: $00
	nop                                              ; $440c: $00
	nop                                              ; $440d: $00
	nop                                              ; $440e: $00
	nop                                              ; $440f: $00
	nop                                              ; $4410: $00
	nop                                              ; $4411: $00
	nop                                              ; $4412: $00
	nop                                              ; $4413: $00
	nop                                              ; $4414: $00
	nop                                              ; $4415: $00
	nop                                              ; $4416: $00
	nop                                              ; $4417: $00
	nop                                              ; $4418: $00
	nop                                              ; $4419: $00
	nop                                              ; $441a: $00
	nop                                              ; $441b: $00
	nop                                              ; $441c: $00
	nop                                              ; $441d: $00
	nop                                              ; $441e: $00
	nop                                              ; $441f: $00
	nop                                              ; $4420: $00
	nop                                              ; $4421: $00
	nop                                              ; $4422: $00
	nop                                              ; $4423: $00
	nop                                              ; $4424: $00
	nop                                              ; $4425: $00
	nop                                              ; $4426: $00
	nop                                              ; $4427: $00
	nop                                              ; $4428: $00
	nop                                              ; $4429: $00
	nop                                              ; $442a: $00
	nop                                              ; $442b: $00
	nop                                              ; $442c: $00
	nop                                              ; $442d: $00
	nop                                              ; $442e: $00
	nop                                              ; $442f: $00
	nop                                              ; $4430: $00
	nop                                              ; $4431: $00
	nop                                              ; $4432: $00
	nop                                              ; $4433: $00
	nop                                              ; $4434: $00
	nop                                              ; $4435: $00
	nop                                              ; $4436: $00
	nop                                              ; $4437: $00
	nop                                              ; $4438: $00
	nop                                              ; $4439: $00
	nop                                              ; $443a: $00
	nop                                              ; $443b: $00
	nop                                              ; $443c: $00
	nop                                              ; $443d: $00
	nop                                              ; $443e: $00
	nop                                              ; $443f: $00
	nop                                              ; $4440: $00
	nop                                              ; $4441: $00
	nop                                              ; $4442: $00
	nop                                              ; $4443: $00
	nop                                              ; $4444: $00
	nop                                              ; $4445: $00
	nop                                              ; $4446: $00
	nop                                              ; $4447: $00
	nop                                              ; $4448: $00
	nop                                              ; $4449: $00
	nop                                              ; $444a: $00
	nop                                              ; $444b: $00
	nop                                              ; $444c: $00
	nop                                              ; $444d: $00
	nop                                              ; $444e: $00
	nop                                              ; $444f: $00
	nop                                              ; $4450: $00
	nop                                              ; $4451: $00
	nop                                              ; $4452: $00
	nop                                              ; $4453: $00
	nop                                              ; $4454: $00
	nop                                              ; $4455: $00
	nop                                              ; $4456: $00
	nop                                              ; $4457: $00
	nop                                              ; $4458: $00
	nop                                              ; $4459: $00
	nop                                              ; $445a: $00
	nop                                              ; $445b: $00
	nop                                              ; $445c: $00
	nop                                              ; $445d: $00
	nop                                              ; $445e: $00
	nop                                              ; $445f: $00
	nop                                              ; $4460: $00
	nop                                              ; $4461: $00
	nop                                              ; $4462: $00
	nop                                              ; $4463: $00
	nop                                              ; $4464: $00
	nop                                              ; $4465: $00
	nop                                              ; $4466: $00
	nop                                              ; $4467: $00
	nop                                              ; $4468: $00
	nop                                              ; $4469: $00
	nop                                              ; $446a: $00
	nop                                              ; $446b: $00
	nop                                              ; $446c: $00
	nop                                              ; $446d: $00
	nop                                              ; $446e: $00
	nop                                              ; $446f: $00
	nop                                              ; $4470: $00
	nop                                              ; $4471: $00
	nop                                              ; $4472: $00
	nop                                              ; $4473: $00
	nop                                              ; $4474: $00
	nop                                              ; $4475: $00
	nop                                              ; $4476: $00
	nop                                              ; $4477: $00
	nop                                              ; $4478: $00
	nop                                              ; $4479: $00
	nop                                              ; $447a: $00
	nop                                              ; $447b: $00
	nop                                              ; $447c: $00
	nop                                              ; $447d: $00
	nop                                              ; $447e: $00
	nop                                              ; $447f: $00
	nop                                              ; $4480: $00
	nop                                              ; $4481: $00
	nop                                              ; $4482: $00
	nop                                              ; $4483: $00
	nop                                              ; $4484: $00
	nop                                              ; $4485: $00
	nop                                              ; $4486: $00
	nop                                              ; $4487: $00
	nop                                              ; $4488: $00
	nop                                              ; $4489: $00
	nop                                              ; $448a: $00
	nop                                              ; $448b: $00
	nop                                              ; $448c: $00
	nop                                              ; $448d: $00
	nop                                              ; $448e: $00
	nop                                              ; $448f: $00
	nop                                              ; $4490: $00
	nop                                              ; $4491: $00
	nop                                              ; $4492: $00
	nop                                              ; $4493: $00
	nop                                              ; $4494: $00
	nop                                              ; $4495: $00
	nop                                              ; $4496: $00
	nop                                              ; $4497: $00
	nop                                              ; $4498: $00
	nop                                              ; $4499: $00
	nop                                              ; $449a: $00
	nop                                              ; $449b: $00
	nop                                              ; $449c: $00
	nop                                              ; $449d: $00
	nop                                              ; $449e: $00
	nop                                              ; $449f: $00
	nop                                              ; $44a0: $00
	nop                                              ; $44a1: $00
	nop                                              ; $44a2: $00
	nop                                              ; $44a3: $00
	nop                                              ; $44a4: $00
	nop                                              ; $44a5: $00
	nop                                              ; $44a6: $00
	nop                                              ; $44a7: $00
	nop                                              ; $44a8: $00
	nop                                              ; $44a9: $00
	nop                                              ; $44aa: $00
	nop                                              ; $44ab: $00
	nop                                              ; $44ac: $00
	nop                                              ; $44ad: $00
	nop                                              ; $44ae: $00
	nop                                              ; $44af: $00
	nop                                              ; $44b0: $00
	nop                                              ; $44b1: $00
	nop                                              ; $44b2: $00
	nop                                              ; $44b3: $00
	nop                                              ; $44b4: $00
	nop                                              ; $44b5: $00
	nop                                              ; $44b6: $00
	nop                                              ; $44b7: $00
	nop                                              ; $44b8: $00
	nop                                              ; $44b9: $00
	nop                                              ; $44ba: $00
	nop                                              ; $44bb: $00
	nop                                              ; $44bc: $00
	nop                                              ; $44bd: $00
	nop                                              ; $44be: $00
	nop                                              ; $44bf: $00
	nop                                              ; $44c0: $00
	nop                                              ; $44c1: $00
	nop                                              ; $44c2: $00
	inc  c                                           ; $44c3: $0c
	nop                                              ; $44c4: $00
	inc  c                                           ; $44c5: $0c
	nop                                              ; $44c6: $00
	rrca                                             ; $44c7: $0f
	nop                                              ; $44c8: $00
	inc  c                                           ; $44c9: $0c
	nop                                              ; $44ca: $00
	db   $fc                                         ; $44cb: $fc
	nop                                              ; $44cc: $00
	inc  c                                           ; $44cd: $0c
	nop                                              ; $44ce: $00
	rrca                                             ; $44cf: $0f
	nop                                              ; $44d0: $00
	ld   c, $00                                      ; $44d1: $0e $00
	cp   $00                                         ; $44d3: $fe $00
	ld   b, $00                                      ; $44d5: $06 $00
	ld   b, $00                                      ; $44d7: $06 $00
	ld   b, $00                                      ; $44d9: $06 $00
	ld   b, $00                                      ; $44db: $06 $00
	ld   b, $00                                      ; $44dd: $06 $00
	nop                                              ; $44df: $00
	nop                                              ; $44e0: $00
	nop                                              ; $44e1: $00
	nop                                              ; $44e2: $00
	nop                                              ; $44e3: $00
	nop                                              ; $44e4: $00
	nop                                              ; $44e5: $00
	nop                                              ; $44e6: $00
	ret  nz                                          ; $44e7: $c0

	nop                                              ; $44e8: $00
	nop                                              ; $44e9: $00
	nop                                              ; $44ea: $00
	nop                                              ; $44eb: $00
	nop                                              ; $44ec: $00
	ld   bc, $e000                                   ; $44ed: $01 $00 $e0
	nop                                              ; $44f0: $00
	nop                                              ; $44f1: $00
	nop                                              ; $44f2: $00
	jr   nc, jr_032_44f5                             ; $44f3: $30 $00

jr_032_44f5:
	ld   a, $00                                      ; $44f5: $3e $00
	halt                                             ; $44f7: $76
	nop                                              ; $44f8: $00
	ld   d, $00                                      ; $44f9: $16 $00
	jr   jr_032_44fd                                 ; $44fb: $18 $00

jr_032_44fd:
	jr   jr_032_44ff                                 ; $44fd: $18 $00

jr_032_44ff:
	nop                                              ; $44ff: $00
	nop                                              ; $4500: $00
	nop                                              ; $4501: $00
	nop                                              ; $4502: $00
	nop                                              ; $4503: $00
	nop                                              ; $4504: $00
	cp   $00                                         ; $4505: $fe $00
	nop                                              ; $4507: $00
	nop                                              ; $4508: $00
	nop                                              ; $4509: $00
	nop                                              ; $450a: $00
	nop                                              ; $450b: $00
	nop                                              ; $450c: $00
	rst  $38                                         ; $450d: $ff
	nop                                              ; $450e: $00
	inc  bc                                          ; $450f: $03
	nop                                              ; $4510: $00
	inc  bc                                          ; $4511: $03
	nop                                              ; $4512: $00
	inc  bc                                          ; $4513: $03
	nop                                              ; $4514: $00
	inc  bc                                          ; $4515: $03
	nop                                              ; $4516: $00
	inc  bc                                          ; $4517: $03
	nop                                              ; $4518: $00
	ld   b, $00                                      ; $4519: $06 $00
	inc  e                                           ; $451b: $1c
	nop                                              ; $451c: $00
	ldh  a, [rP1]                                    ; $451d: $f0 $00
	nop                                              ; $451f: $00
	nop                                              ; $4520: $00
	nop                                              ; $4521: $00
	nop                                              ; $4522: $00
	nop                                              ; $4523: $00
	nop                                              ; $4524: $00
	ccf                                              ; $4525: $3f
	nop                                              ; $4526: $00
	jr   nc, jr_032_4529                             ; $4527: $30 $00

jr_032_4529:
	jr   nc, jr_032_452b                             ; $4529: $30 $00

jr_032_452b:
	jr   nc, jr_032_452d                             ; $452b: $30 $00

jr_032_452d:
	jr   nc, jr_032_452f                             ; $452d: $30 $00

jr_032_452f:
	jr   nz, jr_032_4531                             ; $452f: $20 $00

jr_032_4531:
	ld   b, b                                        ; $4531: $40
	nop                                              ; $4532: $00
	nop                                              ; $4533: $00
	nop                                              ; $4534: $00
	ld   bc, $0100                                   ; $4535: $01 $00 $01
	nop                                              ; $4538: $00
	inc  bc                                          ; $4539: $03
	nop                                              ; $453a: $00
	rlca                                             ; $453b: $07
	nop                                              ; $453c: $00
	inc  a                                           ; $453d: $3c
	nop                                              ; $453e: $00
	nop                                              ; $453f: $00
	nop                                              ; $4540: $00
	nop                                              ; $4541: $00
	nop                                              ; $4542: $00
	nop                                              ; $4543: $00
	nop                                              ; $4544: $00
	rst  ToBoot                                         ; $4545: $c7
	nop                                              ; $4546: $00
	add  $00                                         ; $4547: $c6 $00
	add  $00                                         ; $4549: $c6 $00
	add  $00                                         ; $454b: $c6 $00
	add  $00                                         ; $454d: $c6 $00
	call $d800                                       ; $454f: $cd $00 $d8
	nop                                              ; $4552: $00
	ret  nz                                          ; $4553: $c0

	nop                                              ; $4554: $00
	ret  nz                                          ; $4555: $c0

	nop                                              ; $4556: $00
	add  b                                           ; $4557: $80
	nop                                              ; $4558: $00
	add  b                                           ; $4559: $80
	nop                                              ; $455a: $00
	ld   bc, $0700                                   ; $455b: $01 $00 $07
	nop                                              ; $455e: $00
	nop                                              ; $455f: $00
	nop                                              ; $4560: $00
	nop                                              ; $4561: $00
	nop                                              ; $4562: $00
	nop                                              ; $4563: $00
	nop                                              ; $4564: $00
	ld   hl, sp+$00                                  ; $4565: $f8 $00
	jr   jr_032_4569                                 ; $4567: $18 $00

jr_032_4569:
	jr   jr_032_456b                                 ; $4569: $18 $00

jr_032_456b:
	jr   jr_032_456d                                 ; $456b: $18 $00

jr_032_456d:
	jr   jr_032_456f                                 ; $456d: $18 $00

jr_032_456f:
	jr   jr_032_4571                                 ; $456f: $18 $00

jr_032_4571:
	ld   sp, hl                                      ; $4571: $f9
	nop                                              ; $4572: $00
	jr   c, jr_032_4575                              ; $4573: $38 $00

jr_032_4575:
	jr   nc, jr_032_4577                             ; $4575: $30 $00

jr_032_4577:
	ld   [hl], b                                     ; $4577: $70
	nop                                              ; $4578: $00
	ldh  [rP1], a                                    ; $4579: $e0 $00
	ret  nz                                          ; $457b: $c0

	nop                                              ; $457c: $00
	nop                                              ; $457d: $00
	nop                                              ; $457e: $00
	nop                                              ; $457f: $00
	nop                                              ; $4580: $00
	nop                                              ; $4581: $00
	nop                                              ; $4582: $00
	nop                                              ; $4583: $00
	nop                                              ; $4584: $00
	inc  bc                                          ; $4585: $03
	nop                                              ; $4586: $00
	inc  bc                                          ; $4587: $03
	nop                                              ; $4588: $00
	inc  bc                                          ; $4589: $03
	nop                                              ; $458a: $00
	inc  bc                                          ; $458b: $03
	nop                                              ; $458c: $00
	inc  bc                                          ; $458d: $03
	nop                                              ; $458e: $00
	inc  bc                                          ; $458f: $03
	nop                                              ; $4590: $00
	di                                               ; $4591: $f3
	nop                                              ; $4592: $00
	inc  bc                                          ; $4593: $03
	nop                                              ; $4594: $00
	inc  bc                                          ; $4595: $03
	nop                                              ; $4596: $00
	ld   b, $00                                      ; $4597: $06 $00
	ld   b, $00                                      ; $4599: $06 $00
	inc  c                                           ; $459b: $0c
	nop                                              ; $459c: $00
	nop                                              ; $459d: $00
	nop                                              ; $459e: $00
	nop                                              ; $459f: $00
	nop                                              ; $45a0: $00
	nop                                              ; $45a1: $00
	nop                                              ; $45a2: $00
	nop                                              ; $45a3: $00
	nop                                              ; $45a4: $00
	rst  $38                                         ; $45a5: $ff
	nop                                              ; $45a6: $00
	inc  c                                           ; $45a7: $0c
	nop                                              ; $45a8: $00
	ld   a, a                                        ; $45a9: $7f
	nop                                              ; $45aa: $00
	ld   h, e                                        ; $45ab: $63
	nop                                              ; $45ac: $00
	ld   a, a                                        ; $45ad: $7f
	nop                                              ; $45ae: $00
	ld   h, e                                        ; $45af: $63
	nop                                              ; $45b0: $00
	ld   a, a                                        ; $45b1: $7f
	nop                                              ; $45b2: $00
	inc  c                                           ; $45b3: $0c
	nop                                              ; $45b4: $00
	ld   l, l                                        ; $45b5: $6d
	nop                                              ; $45b6: $00
	ld   l, l                                        ; $45b7: $6d
	nop                                              ; $45b8: $00
	call z, $0c00                                    ; $45b9: $cc $00 $0c
	nop                                              ; $45bc: $00
	inc  e                                           ; $45bd: $1c
	nop                                              ; $45be: $00
	nop                                              ; $45bf: $00
	nop                                              ; $45c0: $00
	nop                                              ; $45c1: $00
	nop                                              ; $45c2: $00
	nop                                              ; $45c3: $00
	nop                                              ; $45c4: $00
	cp   a                                           ; $45c5: $bf
	nop                                              ; $45c6: $00
	jr   nc, jr_032_45c9                             ; $45c7: $30 $00

jr_032_45c9:
	ld   sp, $0f00                                   ; $45c9: $31 $00 $0f
	nop                                              ; $45cc: $00
	inc  bc                                          ; $45cd: $03
	nop                                              ; $45ce: $00
	inc  bc                                          ; $45cf: $03
	nop                                              ; $45d0: $00
	ld   c, $00                                      ; $45d1: $0e $00
	nop                                              ; $45d3: $00
	nop                                              ; $45d4: $00
	adc  a                                           ; $45d5: $8f
	nop                                              ; $45d6: $00
	add  e                                           ; $45d7: $83
	nop                                              ; $45d8: $00
	add  $00                                         ; $45d9: $c6 $00
	inc  e                                           ; $45db: $1c
	nop                                              ; $45dc: $00
	nop                                              ; $45dd: $00
	nop                                              ; $45de: $00
	nop                                              ; $45df: $00
	nop                                              ; $45e0: $00
	nop                                              ; $45e1: $00
	nop                                              ; $45e2: $00
	ret  nz                                          ; $45e3: $c0

	nop                                              ; $45e4: $00
	rst  $38                                         ; $45e5: $ff
	nop                                              ; $45e6: $00
	inc  bc                                          ; $45e7: $03
	nop                                              ; $45e8: $00
	add  e                                           ; $45e9: $83
	nop                                              ; $45ea: $00
	db   $fc                                         ; $45eb: $fc
	nop                                              ; $45ec: $00
	jr   c, jr_032_45ef                              ; $45ed: $38 $00

jr_032_45ef:
	ldh  a, [rP1]                                    ; $45ef: $f0 $00
	inc  e                                           ; $45f1: $1c
	nop                                              ; $45f2: $00
	ret  nz                                          ; $45f3: $c0

	nop                                              ; $45f4: $00
	cp   $00                                         ; $45f5: $fe $00
	ldh  a, [rP1]                                    ; $45f7: $f0 $00
	ret  c                                           ; $45f9: $d8

	nop                                              ; $45fa: $00
	adc  $00                                         ; $45fb: $ce $00
	ret  nz                                          ; $45fd: $c0

	nop                                              ; $45fe: $00
	nop                                              ; $45ff: $00
	nop                                              ; $4600: $00
	nop                                              ; $4601: $00
	nop                                              ; $4602: $00
	nop                                              ; $4603: $00
	nop                                              ; $4604: $00
	nop                                              ; $4605: $00
	nop                                              ; $4606: $00
	nop                                              ; $4607: $00
	nop                                              ; $4608: $00
	nop                                              ; $4609: $00
	nop                                              ; $460a: $00
	nop                                              ; $460b: $00
	nop                                              ; $460c: $00
	nop                                              ; $460d: $00
	nop                                              ; $460e: $00
	nop                                              ; $460f: $00
	nop                                              ; $4610: $00
	nop                                              ; $4611: $00
	nop                                              ; $4612: $00
	nop                                              ; $4613: $00
	nop                                              ; $4614: $00
	nop                                              ; $4615: $00
	nop                                              ; $4616: $00
	nop                                              ; $4617: $00
	nop                                              ; $4618: $00
	nop                                              ; $4619: $00
	nop                                              ; $461a: $00
	nop                                              ; $461b: $00
	nop                                              ; $461c: $00
	nop                                              ; $461d: $00
	nop                                              ; $461e: $00
	nop                                              ; $461f: $00
	nop                                              ; $4620: $00
	nop                                              ; $4621: $00
	nop                                              ; $4622: $00
	nop                                              ; $4623: $00
	nop                                              ; $4624: $00
	nop                                              ; $4625: $00
	nop                                              ; $4626: $00
	nop                                              ; $4627: $00
	nop                                              ; $4628: $00
	nop                                              ; $4629: $00
	nop                                              ; $462a: $00
	nop                                              ; $462b: $00
	nop                                              ; $462c: $00
	nop                                              ; $462d: $00
	nop                                              ; $462e: $00
	nop                                              ; $462f: $00
	nop                                              ; $4630: $00
	nop                                              ; $4631: $00
	nop                                              ; $4632: $00
	nop                                              ; $4633: $00
	nop                                              ; $4634: $00
	nop                                              ; $4635: $00
	nop                                              ; $4636: $00
	nop                                              ; $4637: $00
	nop                                              ; $4638: $00
	nop                                              ; $4639: $00
	nop                                              ; $463a: $00
	nop                                              ; $463b: $00
	nop                                              ; $463c: $00
	nop                                              ; $463d: $00
	nop                                              ; $463e: $00
	nop                                              ; $463f: $00
	nop                                              ; $4640: $00
	nop                                              ; $4641: $00
	nop                                              ; $4642: $00
	nop                                              ; $4643: $00
	nop                                              ; $4644: $00
	nop                                              ; $4645: $00
	nop                                              ; $4646: $00
	nop                                              ; $4647: $00
	nop                                              ; $4648: $00
	nop                                              ; $4649: $00
	nop                                              ; $464a: $00
	nop                                              ; $464b: $00
	nop                                              ; $464c: $00
	nop                                              ; $464d: $00
	nop                                              ; $464e: $00
	nop                                              ; $464f: $00
	nop                                              ; $4650: $00
	nop                                              ; $4651: $00
	nop                                              ; $4652: $00
	nop                                              ; $4653: $00
	nop                                              ; $4654: $00
	nop                                              ; $4655: $00
	nop                                              ; $4656: $00
	nop                                              ; $4657: $00
	nop                                              ; $4658: $00
	nop                                              ; $4659: $00
	nop                                              ; $465a: $00
	nop                                              ; $465b: $00
	nop                                              ; $465c: $00
	nop                                              ; $465d: $00
	nop                                              ; $465e: $00
	nop                                              ; $465f: $00
	nop                                              ; $4660: $00
	nop                                              ; $4661: $00
	nop                                              ; $4662: $00
	nop                                              ; $4663: $00
	nop                                              ; $4664: $00
	nop                                              ; $4665: $00
	nop                                              ; $4666: $00
	nop                                              ; $4667: $00
	nop                                              ; $4668: $00
	nop                                              ; $4669: $00
	nop                                              ; $466a: $00
	inc  bc                                          ; $466b: $03
	nop                                              ; $466c: $00
	nop                                              ; $466d: $00
	nop                                              ; $466e: $00
	nop                                              ; $466f: $00
	nop                                              ; $4670: $00
	nop                                              ; $4671: $00
	nop                                              ; $4672: $00
	inc  bc                                          ; $4673: $03
	nop                                              ; $4674: $00
	nop                                              ; $4675: $00
	nop                                              ; $4676: $00
	nop                                              ; $4677: $00
	nop                                              ; $4678: $00
	nop                                              ; $4679: $00
	nop                                              ; $467a: $00
	nop                                              ; $467b: $00
	nop                                              ; $467c: $00
	nop                                              ; $467d: $00
	nop                                              ; $467e: $00
	nop                                              ; $467f: $00
	nop                                              ; $4680: $00
	nop                                              ; $4681: $00
	nop                                              ; $4682: $00
	jr   nc, jr_032_4685                             ; $4683: $30 $00

jr_032_4685:
	jr   nc, jr_032_4687                             ; $4685: $30 $00

jr_032_4687:
	ccf                                              ; $4687: $3f
	nop                                              ; $4688: $00
	jr   nc, jr_032_468b                             ; $4689: $30 $00

jr_032_468b:
	ldh  a, [rP1]                                    ; $468b: $f0 $00
	jr   nc, jr_032_468f                             ; $468d: $30 $00

jr_032_468f:
	ccf                                              ; $468f: $3f
	nop                                              ; $4690: $00
	jr   c, jr_032_4693                              ; $4691: $38 $00

jr_032_4693:
	ld   hl, sp+$00                                  ; $4693: $f8 $00
	jr   jr_032_4697                                 ; $4695: $18 $00

jr_032_4697:
	add  hl, de                                      ; $4697: $19
	nop                                              ; $4698: $00
	jr   jr_032_469b                                 ; $4699: $18 $00

jr_032_469b:
	jr   jr_032_469d                                 ; $469b: $18 $00

jr_032_469d:
	jr   jr_032_469f                                 ; $469d: $18 $00

jr_032_469f:
	nop                                              ; $469f: $00
	nop                                              ; $46a0: $00
	nop                                              ; $46a1: $00
	nop                                              ; $46a2: $00
	nop                                              ; $46a3: $00
	nop                                              ; $46a4: $00
	inc  bc                                          ; $46a5: $03
	nop                                              ; $46a6: $00
	nop                                              ; $46a7: $00
	nop                                              ; $46a8: $00
	nop                                              ; $46a9: $00
	nop                                              ; $46aa: $00
	nop                                              ; $46ab: $00
	nop                                              ; $46ac: $00
	rlca                                             ; $46ad: $07
	nop                                              ; $46ae: $00
	add  b                                           ; $46af: $80
	nop                                              ; $46b0: $00
	nop                                              ; $46b1: $00
	nop                                              ; $46b2: $00
	ret  nz                                          ; $46b3: $c0

	nop                                              ; $46b4: $00
	ld   hl, sp+$00                                  ; $46b5: $f8 $00
	ret  c                                           ; $46b7: $d8

	nop                                              ; $46b8: $00
	ld   e, b                                        ; $46b9: $58
	nop                                              ; $46ba: $00
	ld   h, b                                        ; $46bb: $60
	nop                                              ; $46bc: $00
	ld   h, e                                        ; $46bd: $63
	nop                                              ; $46be: $00
	nop                                              ; $46bf: $00
	nop                                              ; $46c0: $00
	nop                                              ; $46c1: $00
	nop                                              ; $46c2: $00
	nop                                              ; $46c3: $00
	nop                                              ; $46c4: $00
	ld   hl, sp+$00                                  ; $46c5: $f8 $00
	nop                                              ; $46c7: $00
	nop                                              ; $46c8: $00
	nop                                              ; $46c9: $00
	nop                                              ; $46ca: $00
	nop                                              ; $46cb: $00
	nop                                              ; $46cc: $00
	db   $fc                                         ; $46cd: $fc
	nop                                              ; $46ce: $00
	inc  c                                           ; $46cf: $0c
	nop                                              ; $46d0: $00
	dec  c                                           ; $46d1: $0d
	nop                                              ; $46d2: $00
	inc  c                                           ; $46d3: $0c
	nop                                              ; $46d4: $00
	inc  c                                           ; $46d5: $0c
	nop                                              ; $46d6: $00
	inc  c                                           ; $46d7: $0c
	nop                                              ; $46d8: $00
	jr   jr_032_46db                                 ; $46d9: $18 $00

jr_032_46db:
	ld   [hl], b                                     ; $46db: $70
	nop                                              ; $46dc: $00
	ret  nz                                          ; $46dd: $c0

	nop                                              ; $46de: $00
	nop                                              ; $46df: $00
	nop                                              ; $46e0: $00
	nop                                              ; $46e1: $00
	nop                                              ; $46e2: $00
	nop                                              ; $46e3: $00
	nop                                              ; $46e4: $00
	rst  $38                                         ; $46e5: $ff
	nop                                              ; $46e6: $00
	jp   $c300                                       ; $46e7: $c3 $00 $c3


	nop                                              ; $46ea: $00
	jp   $c300                                       ; $46eb: $c3 $00 $c3


	nop                                              ; $46ee: $00
	add  e                                           ; $46ef: $83
	nop                                              ; $46f0: $00
	inc  bc                                          ; $46f1: $03
	nop                                              ; $46f2: $00
	inc  bc                                          ; $46f3: $03
	nop                                              ; $46f4: $00
	rlca                                             ; $46f5: $07
	nop                                              ; $46f6: $00
	ld   b, $00                                      ; $46f7: $06 $00
	ld   c, $00                                      ; $46f9: $0e $00
	inc  e                                           ; $46fb: $1c
	nop                                              ; $46fc: $00
	ldh  a, [rP1]                                    ; $46fd: $f0 $00
	nop                                              ; $46ff: $00
	nop                                              ; $4700: $00
	nop                                              ; $4701: $00
	nop                                              ; $4702: $00
	nop                                              ; $4703: $00
	nop                                              ; $4704: $00
	rra                                              ; $4705: $1f
	nop                                              ; $4706: $00
	jr   jr_032_4709                                 ; $4707: $18 $00

jr_032_4709:
	jr   jr_032_470b                                 ; $4709: $18 $00

jr_032_470b:
	jr   jr_032_470d                                 ; $470b: $18 $00

jr_032_470d:
	jr   jr_032_470f                                 ; $470d: $18 $00

jr_032_470f:
	inc  [hl]                                        ; $470f: $34
	nop                                              ; $4710: $00
	ld   h, e                                        ; $4711: $63
	nop                                              ; $4712: $00
	nop                                              ; $4713: $00
	nop                                              ; $4714: $00
	nop                                              ; $4715: $00
	nop                                              ; $4716: $00
	ld   bc, $0300                                   ; $4717: $01 $00 $03
	nop                                              ; $471a: $00
	rlca                                             ; $471b: $07
	nop                                              ; $471c: $00
	inc  e                                           ; $471d: $1c
	nop                                              ; $471e: $00
	nop                                              ; $471f: $00
	nop                                              ; $4720: $00
	nop                                              ; $4721: $00
	nop                                              ; $4722: $00
	nop                                              ; $4723: $00
	nop                                              ; $4724: $00
	ldh  [rP1], a                                    ; $4725: $e0 $00
	ld   h, b                                        ; $4727: $60
	nop                                              ; $4728: $00
	ld   h, b                                        ; $4729: $60
	nop                                              ; $472a: $00
	ld   h, b                                        ; $472b: $60
	nop                                              ; $472c: $00
	ld   h, b                                        ; $472d: $60
	nop                                              ; $472e: $00
	ld   h, b                                        ; $472f: $60
	nop                                              ; $4730: $00
	rst  $20                                         ; $4731: $e7
	nop                                              ; $4732: $00
	ldh  [rP1], a                                    ; $4733: $e0 $00
	ret  nz                                          ; $4735: $c0

	nop                                              ; $4736: $00
	ret  nz                                          ; $4737: $c0

	nop                                              ; $4738: $00
	add  b                                           ; $4739: $80
	nop                                              ; $473a: $00
	nop                                              ; $473b: $00
	nop                                              ; $473c: $00
	nop                                              ; $473d: $00
	nop                                              ; $473e: $00
	nop                                              ; $473f: $00
	nop                                              ; $4740: $00
	nop                                              ; $4741: $00
	nop                                              ; $4742: $00
	nop                                              ; $4743: $00
	nop                                              ; $4744: $00
	rra                                              ; $4745: $1f
	nop                                              ; $4746: $00
	nop                                              ; $4747: $00
	nop                                              ; $4748: $00
	nop                                              ; $4749: $00
	nop                                              ; $474a: $00
	nop                                              ; $474b: $00
	nop                                              ; $474c: $00
	ccf                                              ; $474d: $3f
	nop                                              ; $474e: $00
	ld   bc, $c100                                   ; $474f: $01 $00 $c1
	nop                                              ; $4752: $00
	ld   bc, $0100                                   ; $4753: $01 $00 $01
	nop                                              ; $4756: $00
	ld   bc, $0300                                   ; $4757: $01 $00 $03
	nop                                              ; $475a: $00
	rlca                                             ; $475b: $07
	nop                                              ; $475c: $00
	inc  e                                           ; $475d: $1c
	nop                                              ; $475e: $00
	nop                                              ; $475f: $00
	nop                                              ; $4760: $00
	nop                                              ; $4761: $00
	nop                                              ; $4762: $00
	ld   [hl], $00                                   ; $4763: $36 $00
	or   $00                                         ; $4765: $f6 $00
	ld   [hl], $00                                   ; $4767: $36 $00
	inc  bc                                          ; $4769: $03
	nop                                              ; $476a: $00
	nop                                              ; $476b: $00
	nop                                              ; $476c: $00
	ldh  a, [rP1]                                    ; $476d: $f0 $00
	add  b                                           ; $476f: $80
	nop                                              ; $4770: $00
	add  b                                           ; $4771: $80
	nop                                              ; $4772: $00
	add  b                                           ; $4773: $80
	nop                                              ; $4774: $00
	add  b                                           ; $4775: $80
	nop                                              ; $4776: $00
	add  b                                           ; $4777: $80
	nop                                              ; $4778: $00
	add  b                                           ; $4779: $80
	nop                                              ; $477a: $00
	nop                                              ; $477b: $00
	nop                                              ; $477c: $00
	nop                                              ; $477d: $00
	nop                                              ; $477e: $00
	nop                                              ; $477f: $00
	nop                                              ; $4780: $00
	nop                                              ; $4781: $00
	nop                                              ; $4782: $00
	ld   h, e                                        ; $4783: $63
	nop                                              ; $4784: $00
	ld   h, e                                        ; $4785: $63
	nop                                              ; $4786: $00
	ld   h, e                                        ; $4787: $63
	nop                                              ; $4788: $00
	rst  $38                                         ; $4789: $ff
	nop                                              ; $478a: $00
	ld   h, e                                        ; $478b: $63
	nop                                              ; $478c: $00
	ld   h, e                                        ; $478d: $63
	nop                                              ; $478e: $00
	ld   h, e                                        ; $478f: $63
	nop                                              ; $4790: $00
	inc  bc                                          ; $4791: $03
	nop                                              ; $4792: $00
	inc  bc                                          ; $4793: $03
	nop                                              ; $4794: $00
	inc  bc                                          ; $4795: $03
	nop                                              ; $4796: $00
	rlca                                             ; $4797: $07
	nop                                              ; $4798: $00
	ld   b, $00                                      ; $4799: $06 $00
	ld   c, $00                                      ; $479b: $0e $00
	jr   c, jr_032_479f                              ; $479d: $38 $00

jr_032_479f:
	nop                                              ; $479f: $00
	nop                                              ; $47a0: $00
	nop                                              ; $47a1: $00
	nop                                              ; $47a2: $00
	ld   [hl], $00                                   ; $47a3: $36 $00
	ld   [hl], $00                                   ; $47a5: $36 $00
	ld   [hl], $00                                   ; $47a7: $36 $00
	ldh  [rP1], a                                    ; $47a9: $e0 $00
	nop                                              ; $47ab: $00
	nop                                              ; $47ac: $00
	ld   bc, $0f00                                   ; $47ad: $01 $00 $0f
	nop                                              ; $47b0: $00
	nop                                              ; $47b1: $00
	nop                                              ; $47b2: $00
	nop                                              ; $47b3: $00
	nop                                              ; $47b4: $00
	nop                                              ; $47b5: $00
	nop                                              ; $47b6: $00
	nop                                              ; $47b7: $00
	nop                                              ; $47b8: $00
	nop                                              ; $47b9: $00
	nop                                              ; $47ba: $00
	nop                                              ; $47bb: $00
	nop                                              ; $47bc: $00
	nop                                              ; $47bd: $00
	nop                                              ; $47be: $00
	nop                                              ; $47bf: $00
	nop                                              ; $47c0: $00
	nop                                              ; $47c1: $00
	nop                                              ; $47c2: $00
	nop                                              ; $47c3: $00
	nop                                              ; $47c4: $00
	jr   jr_032_47c7                                 ; $47c5: $18 $00

jr_032_47c7:
	jr   jr_032_47c9                                 ; $47c7: $18 $00

jr_032_47c9:
	dec  sp                                          ; $47c9: $3b
	nop                                              ; $47ca: $00
	ld   [hl], e                                     ; $47cb: $73
	nop                                              ; $47cc: $00
	pop  hl                                          ; $47cd: $e1
	nop                                              ; $47ce: $00
	ldh  [rP1], a                                    ; $47cf: $e0 $00
	ld   h, b                                        ; $47d1: $60
	nop                                              ; $47d2: $00
	ld   h, b                                        ; $47d3: $60
	nop                                              ; $47d4: $00
	ld   h, b                                        ; $47d5: $60
	nop                                              ; $47d6: $00
	ld   h, b                                        ; $47d7: $60
	nop                                              ; $47d8: $00
	ld   h, b                                        ; $47d9: $60
	nop                                              ; $47da: $00
	ld   h, b                                        ; $47db: $60
	nop                                              ; $47dc: $00
	ld   h, e                                        ; $47dd: $63
	nop                                              ; $47de: $00
	nop                                              ; $47df: $00
	nop                                              ; $47e0: $00
	nop                                              ; $47e1: $00
	nop                                              ; $47e2: $00
	nop                                              ; $47e3: $00
	nop                                              ; $47e4: $00
	inc  bc                                          ; $47e5: $03
	nop                                              ; $47e6: $00
	inc  bc                                          ; $47e7: $03
	nop                                              ; $47e8: $00
	inc  bc                                          ; $47e9: $03
	nop                                              ; $47ea: $00
	add  e                                           ; $47eb: $83
	nop                                              ; $47ec: $00
	db   $e3                                         ; $47ed: $e3
	nop                                              ; $47ee: $00
	inc  bc                                          ; $47ef: $03
	nop                                              ; $47f0: $00
	inc  bc                                          ; $47f1: $03
	nop                                              ; $47f2: $00
	inc  bc                                          ; $47f3: $03
	nop                                              ; $47f4: $00
	rlca                                             ; $47f5: $07
	nop                                              ; $47f6: $00
	ld   b, $00                                      ; $47f7: $06 $00
	ld   c, $00                                      ; $47f9: $0e $00
	inc  a                                           ; $47fb: $3c
	nop                                              ; $47fc: $00
	ldh  a, [rP1]                                    ; $47fd: $f0 $00
	nop                                              ; $47ff: $00
	nop                                              ; $4800: $00
	nop                                              ; $4801: $00
	nop                                              ; $4802: $00
	nop                                              ; $4803: $00
	nop                                              ; $4804: $00
	nop                                              ; $4805: $00
	nop                                              ; $4806: $00
	nop                                              ; $4807: $00
	nop                                              ; $4808: $00
	nop                                              ; $4809: $00
	nop                                              ; $480a: $00
	nop                                              ; $480b: $00
	nop                                              ; $480c: $00
	nop                                              ; $480d: $00
	nop                                              ; $480e: $00
	nop                                              ; $480f: $00
	nop                                              ; $4810: $00
	nop                                              ; $4811: $00
	nop                                              ; $4812: $00
	nop                                              ; $4813: $00
	nop                                              ; $4814: $00
	nop                                              ; $4815: $00
	nop                                              ; $4816: $00
	nop                                              ; $4817: $00
	nop                                              ; $4818: $00
	nop                                              ; $4819: $00
	nop                                              ; $481a: $00
	nop                                              ; $481b: $00
	nop                                              ; $481c: $00
	nop                                              ; $481d: $00
	nop                                              ; $481e: $00
	nop                                              ; $481f: $00
	nop                                              ; $4820: $00
	nop                                              ; $4821: $00
	nop                                              ; $4822: $00
	nop                                              ; $4823: $00
	nop                                              ; $4824: $00
	nop                                              ; $4825: $00
	nop                                              ; $4826: $00
	nop                                              ; $4827: $00
	nop                                              ; $4828: $00
	nop                                              ; $4829: $00
	nop                                              ; $482a: $00
	nop                                              ; $482b: $00
	nop                                              ; $482c: $00
	nop                                              ; $482d: $00
	nop                                              ; $482e: $00
	nop                                              ; $482f: $00
	nop                                              ; $4830: $00
	nop                                              ; $4831: $00
	nop                                              ; $4832: $00
	nop                                              ; $4833: $00
	nop                                              ; $4834: $00
	nop                                              ; $4835: $00
	nop                                              ; $4836: $00
	nop                                              ; $4837: $00
	nop                                              ; $4838: $00
	nop                                              ; $4839: $00
	nop                                              ; $483a: $00
	nop                                              ; $483b: $00
	nop                                              ; $483c: $00
	nop                                              ; $483d: $00
	nop                                              ; $483e: $00
	nop                                              ; $483f: $00
	nop                                              ; $4840: $00
	nop                                              ; $4841: $00
	nop                                              ; $4842: $00
	nop                                              ; $4843: $00
	nop                                              ; $4844: $00
	nop                                              ; $4845: $00
	nop                                              ; $4846: $00
	nop                                              ; $4847: $00
	nop                                              ; $4848: $00
	nop                                              ; $4849: $00
	nop                                              ; $484a: $00
	nop                                              ; $484b: $00
	nop                                              ; $484c: $00
	nop                                              ; $484d: $00
	nop                                              ; $484e: $00
	nop                                              ; $484f: $00
	nop                                              ; $4850: $00
	nop                                              ; $4851: $00
	nop                                              ; $4852: $00
	nop                                              ; $4853: $00
	nop                                              ; $4854: $00
	nop                                              ; $4855: $00
	nop                                              ; $4856: $00
	nop                                              ; $4857: $00
	nop                                              ; $4858: $00
	nop                                              ; $4859: $00
	nop                                              ; $485a: $00
	nop                                              ; $485b: $00
	nop                                              ; $485c: $00
	nop                                              ; $485d: $00
	nop                                              ; $485e: $00
	nop                                              ; $485f: $00
	nop                                              ; $4860: $00
	nop                                              ; $4861: $00
	nop                                              ; $4862: $00
	nop                                              ; $4863: $00
	nop                                              ; $4864: $00
	nop                                              ; $4865: $00
	nop                                              ; $4866: $00
	nop                                              ; $4867: $00
	nop                                              ; $4868: $00
	nop                                              ; $4869: $00
	nop                                              ; $486a: $00
	nop                                              ; $486b: $00
	nop                                              ; $486c: $00
	nop                                              ; $486d: $00
	nop                                              ; $486e: $00
	nop                                              ; $486f: $00
	nop                                              ; $4870: $00
	nop                                              ; $4871: $00
	nop                                              ; $4872: $00
	nop                                              ; $4873: $00
	nop                                              ; $4874: $00
	nop                                              ; $4875: $00
	nop                                              ; $4876: $00
	nop                                              ; $4877: $00
	nop                                              ; $4878: $00
	nop                                              ; $4879: $00
	nop                                              ; $487a: $00
	nop                                              ; $487b: $00
	nop                                              ; $487c: $00
	nop                                              ; $487d: $00
	nop                                              ; $487e: $00
	nop                                              ; $487f: $00
	nop                                              ; $4880: $00
	nop                                              ; $4881: $00
	nop                                              ; $4882: $00
	nop                                              ; $4883: $00
	nop                                              ; $4884: $00
	nop                                              ; $4885: $00
	nop                                              ; $4886: $00
	nop                                              ; $4887: $00
	nop                                              ; $4888: $00
	nop                                              ; $4889: $00
	nop                                              ; $488a: $00
	nop                                              ; $488b: $00
	nop                                              ; $488c: $00
	nop                                              ; $488d: $00
	nop                                              ; $488e: $00
	nop                                              ; $488f: $00
	nop                                              ; $4890: $00
	nop                                              ; $4891: $00
	nop                                              ; $4892: $00
	nop                                              ; $4893: $00
	nop                                              ; $4894: $00
	nop                                              ; $4895: $00
	nop                                              ; $4896: $00
	nop                                              ; $4897: $00
	nop                                              ; $4898: $00
	nop                                              ; $4899: $00
	nop                                              ; $489a: $00
	nop                                              ; $489b: $00
	nop                                              ; $489c: $00
	nop                                              ; $489d: $00
	nop                                              ; $489e: $00
	nop                                              ; $489f: $00
	nop                                              ; $48a0: $00
	nop                                              ; $48a1: $00
	nop                                              ; $48a2: $00
	nop                                              ; $48a3: $00
	nop                                              ; $48a4: $00
	nop                                              ; $48a5: $00
	nop                                              ; $48a6: $00
	nop                                              ; $48a7: $00
	nop                                              ; $48a8: $00
	nop                                              ; $48a9: $00
	nop                                              ; $48aa: $00
	nop                                              ; $48ab: $00
	nop                                              ; $48ac: $00
	ld   bc, $0000                                   ; $48ad: $01 $00 $00
	nop                                              ; $48b0: $00
	nop                                              ; $48b1: $00
	nop                                              ; $48b2: $00
	nop                                              ; $48b3: $00
	nop                                              ; $48b4: $00
	nop                                              ; $48b5: $00
	nop                                              ; $48b6: $00
	nop                                              ; $48b7: $00
	nop                                              ; $48b8: $00
	nop                                              ; $48b9: $00
	nop                                              ; $48ba: $00
	nop                                              ; $48bb: $00
	nop                                              ; $48bc: $00
	nop                                              ; $48bd: $00
	nop                                              ; $48be: $00
	nop                                              ; $48bf: $00
	nop                                              ; $48c0: $00
	nop                                              ; $48c1: $00
	nop                                              ; $48c2: $00
	inc  sp                                          ; $48c3: $33
	nop                                              ; $48c4: $00
	inc  sp                                          ; $48c5: $33
	nop                                              ; $48c6: $00
	ld   [hl], e                                     ; $48c7: $73
	nop                                              ; $48c8: $00
	ld   h, a                                        ; $48c9: $67
	nop                                              ; $48ca: $00
	and  $00                                         ; $48cb: $e6 $00
	db   $ec                                         ; $48cd: $ec
	nop                                              ; $48ce: $00
	ld   h, b                                        ; $48cf: $60
	nop                                              ; $48d0: $00
	ld   h, b                                        ; $48d1: $60
	nop                                              ; $48d2: $00
	ld   h, b                                        ; $48d3: $60
	nop                                              ; $48d4: $00
	ld   h, b                                        ; $48d5: $60
	nop                                              ; $48d6: $00
	ld   h, b                                        ; $48d7: $60
	nop                                              ; $48d8: $00
	ld   h, b                                        ; $48d9: $60
	nop                                              ; $48da: $00
	ld   h, b                                        ; $48db: $60
	nop                                              ; $48dc: $00
	ld   h, b                                        ; $48dd: $60
	nop                                              ; $48de: $00
	nop                                              ; $48df: $00
	nop                                              ; $48e0: $00
	nop                                              ; $48e1: $00
	nop                                              ; $48e2: $00
	nop                                              ; $48e3: $00
	nop                                              ; $48e4: $00
	nop                                              ; $48e5: $00
	nop                                              ; $48e6: $00
	nop                                              ; $48e7: $00
	nop                                              ; $48e8: $00
	db   $fd                                         ; $48e9: $fd
	nop                                              ; $48ea: $00
	pop  bc                                          ; $48eb: $c1
	nop                                              ; $48ec: $00
	pop  bc                                          ; $48ed: $c1
	nop                                              ; $48ee: $00
	db   $fd                                         ; $48ef: $fd
	nop                                              ; $48f0: $00
	pop  bc                                          ; $48f1: $c1
	nop                                              ; $48f2: $00
	pop  bc                                          ; $48f3: $c1
	nop                                              ; $48f4: $00
	db   $fd                                         ; $48f5: $fd
	nop                                              ; $48f6: $00
	pop  bc                                          ; $48f7: $c1
	nop                                              ; $48f8: $00
	pop  bc                                          ; $48f9: $c1
	nop                                              ; $48fa: $00
	pop  bc                                          ; $48fb: $c1
	nop                                              ; $48fc: $00
	pop  bc                                          ; $48fd: $c1
	nop                                              ; $48fe: $00
	nop                                              ; $48ff: $00
	nop                                              ; $4900: $00
	nop                                              ; $4901: $00
	nop                                              ; $4902: $00
	ld   [hl], $00                                   ; $4903: $36 $00
	ld   [hl], $00                                   ; $4905: $36 $00
	ld   [hl], $00                                   ; $4907: $36 $00
	rst  $38                                         ; $4909: $ff
	nop                                              ; $490a: $00
	or   [hl]                                        ; $490b: $b6
	nop                                              ; $490c: $00
	or   [hl]                                        ; $490d: $b6
	nop                                              ; $490e: $00
	or   [hl]                                        ; $490f: $b6
	nop                                              ; $4910: $00
	or   [hl]                                        ; $4911: $b6
	nop                                              ; $4912: $00
	rst  $38                                         ; $4913: $ff
	nop                                              ; $4914: $00
	or   [hl]                                        ; $4915: $b6
	nop                                              ; $4916: $00
	or   [hl]                                        ; $4917: $b6
	nop                                              ; $4918: $00
	or   [hl]                                        ; $4919: $b6
	nop                                              ; $491a: $00
	or   [hl]                                        ; $491b: $b6
	nop                                              ; $491c: $00
	rst  $38                                         ; $491d: $ff
	nop                                              ; $491e: $00
	nop                                              ; $491f: $00
	nop                                              ; $4920: $00
	nop                                              ; $4921: $00
	nop                                              ; $4922: $00
	nop                                              ; $4923: $00
	nop                                              ; $4924: $00
	nop                                              ; $4925: $00
	nop                                              ; $4926: $00
	ld   bc, $c000                                   ; $4927: $01 $00 $c0
	nop                                              ; $492a: $00
	ret  nz                                          ; $492b: $c0

	nop                                              ; $492c: $00
	jp   $c000                                       ; $492d: $c3 $00 $c0


	nop                                              ; $4930: $00
	call z, $cc00                                    ; $4931: $cc $00 $cc
	nop                                              ; $4934: $00
	ret  nz                                          ; $4935: $c0

	nop                                              ; $4936: $00
	ret  nz                                          ; $4937: $c0

	nop                                              ; $4938: $00
	ret  nz                                          ; $4939: $c0

	nop                                              ; $493a: $00
	ret  nz                                          ; $493b: $c0

	nop                                              ; $493c: $00
	ret  nz                                          ; $493d: $c0

	nop                                              ; $493e: $00
	nop                                              ; $493f: $00
	nop                                              ; $4940: $00
	nop                                              ; $4941: $00
	nop                                              ; $4942: $00
	jr   jr_032_4945                                 ; $4943: $18 $00

jr_032_4945:
	jr   jr_032_4947                                 ; $4945: $18 $00

jr_032_4947:
	rst  $38                                         ; $4947: $ff
	nop                                              ; $4948: $00
	ld   h, [hl]                                     ; $4949: $66
	nop                                              ; $494a: $00
	ld   h, [hl]                                     ; $494b: $66
	nop                                              ; $494c: $00
	rst  $38                                         ; $494d: $ff
	nop                                              ; $494e: $00
	nop                                              ; $494f: $00
	nop                                              ; $4950: $00
	ld   a, a                                        ; $4951: $7f
	nop                                              ; $4952: $00
	ld   h, e                                        ; $4953: $63
	nop                                              ; $4954: $00
	ld   h, e                                        ; $4955: $63
	nop                                              ; $4956: $00
	ld   a, a                                        ; $4957: $7f
	nop                                              ; $4958: $00
	ld   h, e                                        ; $4959: $63
	nop                                              ; $495a: $00
	ld   h, e                                        ; $495b: $63
	nop                                              ; $495c: $00
	ld   a, a                                        ; $495d: $7f
	nop                                              ; $495e: $00
	nop                                              ; $495f: $00
	nop                                              ; $4960: $00
	nop                                              ; $4961: $00
	nop                                              ; $4962: $00
	nop                                              ; $4963: $00
	nop                                              ; $4964: $00
	nop                                              ; $4965: $00
	nop                                              ; $4966: $00
	or   e                                           ; $4967: $b3
	nop                                              ; $4968: $00
	dec  de                                          ; $4969: $1b
	nop                                              ; $496a: $00
	inc  bc                                          ; $496b: $03
	nop                                              ; $496c: $00
	db   $db                                         ; $496d: $db
	nop                                              ; $496e: $00
	inc  sp                                          ; $496f: $33
	nop                                              ; $4970: $00
	nop                                              ; $4971: $00
	nop                                              ; $4972: $00
	rra                                              ; $4973: $1f
	nop                                              ; $4974: $00
	inc  bc                                          ; $4975: $03
	nop                                              ; $4976: $00
	inc  bc                                          ; $4977: $03
	nop                                              ; $4978: $00
	ld   b, $00                                      ; $4979: $06 $00
	inc  e                                           ; $497b: $1c
	nop                                              ; $497c: $00
	nop                                              ; $497d: $00
	nop                                              ; $497e: $00
	nop                                              ; $497f: $00
	nop                                              ; $4980: $00
	nop                                              ; $4981: $00
	nop                                              ; $4982: $00
	ret  nz                                          ; $4983: $c0

	nop                                              ; $4984: $00
	ret  nz                                          ; $4985: $c0

	nop                                              ; $4986: $00
	di                                               ; $4987: $f3
	nop                                              ; $4988: $00
	ld   [hl], $00                                   ; $4989: $36 $00
	ldh  a, [rP1]                                    ; $498b: $f0 $00
	ld   [hl], $00                                   ; $498d: $36 $00
	di                                               ; $498f: $f3
	nop                                              ; $4990: $00
	ret  nz                                          ; $4991: $c0

	nop                                              ; $4992: $00
	cp   $00                                         ; $4993: $fe $00
	ldh  [rP1], a                                    ; $4995: $e0 $00
	ldh  a, [rP1]                                    ; $4997: $f0 $00
	ret  c                                           ; $4999: $d8

	nop                                              ; $499a: $00
	adc  $00                                         ; $499b: $ce $00
	ret  nz                                          ; $499d: $c0

	nop                                              ; $499e: $00
	nop                                              ; $499f: $00
	nop                                              ; $49a0: $00
	nop                                              ; $49a1: $00
	nop                                              ; $49a2: $00
	nop                                              ; $49a3: $00
	nop                                              ; $49a4: $00
	ld   a, a                                        ; $49a5: $7f
	nop                                              ; $49a6: $00
	ld   l, e                                        ; $49a7: $6b
	nop                                              ; $49a8: $00
	ld   a, a                                        ; $49a9: $7f
	nop                                              ; $49aa: $00
	ld   h, [hl]                                     ; $49ab: $66
	nop                                              ; $49ac: $00
	ld   a, h                                        ; $49ad: $7c
	nop                                              ; $49ae: $00
	ld   l, b                                        ; $49af: $68
	nop                                              ; $49b0: $00
	ld   a, l                                        ; $49b1: $7d
	nop                                              ; $49b2: $00
	nop                                              ; $49b3: $00
	nop                                              ; $49b4: $00
	ld   a, a                                        ; $49b5: $7f
	nop                                              ; $49b6: $00
	ld   l, d                                        ; $49b7: $6a
	nop                                              ; $49b8: $00
	ld   l, d                                        ; $49b9: $6a
	nop                                              ; $49ba: $00
	ld   l, d                                        ; $49bb: $6a
	nop                                              ; $49bc: $00
	rst  $38                                         ; $49bd: $ff
	nop                                              ; $49be: $00
	nop                                              ; $49bf: $00
	nop                                              ; $49c0: $00
	nop                                              ; $49c1: $00
	nop                                              ; $49c2: $00
	inc  bc                                          ; $49c3: $03
	nop                                              ; $49c4: $00
	inc  bc                                          ; $49c5: $03
	nop                                              ; $49c6: $00
	db   $e3                                         ; $49c7: $e3
	nop                                              ; $49c8: $00
	rrca                                             ; $49c9: $0f
	nop                                              ; $49ca: $00
	rlca                                             ; $49cb: $07
	nop                                              ; $49cc: $00
	rrca                                             ; $49cd: $0f
	nop                                              ; $49ce: $00
	dec  bc                                          ; $49cf: $0b
	nop                                              ; $49d0: $00
	db   $e3                                         ; $49d1: $e3
	nop                                              ; $49d2: $00
	inc  bc                                          ; $49d3: $03
	nop                                              ; $49d4: $00
	jp   $c300                                       ; $49d5: $c3 $00 $c3


	nop                                              ; $49d8: $00
	jp   $c300                                       ; $49d9: $c3 $00 $c3


	nop                                              ; $49dc: $00
	db   $e3                                         ; $49dd: $e3
	nop                                              ; $49de: $00
	nop                                              ; $49df: $00
	nop                                              ; $49e0: $00
	nop                                              ; $49e1: $00
	nop                                              ; $49e2: $00
	nop                                              ; $49e3: $00
	nop                                              ; $49e4: $00
	rst  JumpTable                                         ; $49e5: $df
	nop                                              ; $49e6: $00
	inc  bc                                          ; $49e7: $03
	nop                                              ; $49e8: $00
	db   $db                                         ; $49e9: $db
	nop                                              ; $49ea: $00
	sbc  e                                           ; $49eb: $9b
	nop                                              ; $49ec: $00
	ld   c, [hl]                                     ; $49ed: $4e
	nop                                              ; $49ee: $00
	add  hl, de                                      ; $49ef: $19
	nop                                              ; $49f0: $00
	cp   $00                                         ; $49f1: $fe $00
	ld   b, $00                                      ; $49f3: $06 $00
	cp   $00                                         ; $49f5: $fe $00
	ld   b, $00                                      ; $49f7: $06 $00
	cp   $00                                         ; $49f9: $fe $00
	ld   b, $00                                      ; $49fb: $06 $00
	cp   $00                                         ; $49fd: $fe $00
	nop                                              ; $49ff: $00
	nop                                              ; $4a00: $00
	nop                                              ; $4a01: $00
	nop                                              ; $4a02: $00
	nop                                              ; $4a03: $00
	nop                                              ; $4a04: $00
	ld   a, a                                        ; $4a05: $7f
	nop                                              ; $4a06: $00
	inc  c                                           ; $4a07: $0c
	nop                                              ; $4a08: $00
	inc  c                                           ; $4a09: $0c
	nop                                              ; $4a0a: $00
	inc  c                                           ; $4a0b: $0c
	nop                                              ; $4a0c: $00
	inc  c                                           ; $4a0d: $0c
	nop                                              ; $4a0e: $00
	inc  c                                           ; $4a0f: $0c
	nop                                              ; $4a10: $00
	inc  c                                           ; $4a11: $0c
	nop                                              ; $4a12: $00
	inc  c                                           ; $4a13: $0c
	nop                                              ; $4a14: $00
	inc  c                                           ; $4a15: $0c
	nop                                              ; $4a16: $00
	inc  c                                           ; $4a17: $0c
	nop                                              ; $4a18: $00
	inc  c                                           ; $4a19: $0c
	nop                                              ; $4a1a: $00
	inc  c                                           ; $4a1b: $0c
	nop                                              ; $4a1c: $00
	ld   a, a                                        ; $4a1d: $7f
	nop                                              ; $4a1e: $00
	nop                                              ; $4a1f: $00
	nop                                              ; $4a20: $00
	nop                                              ; $4a21: $00
	nop                                              ; $4a22: $00
	nop                                              ; $4a23: $00
	nop                                              ; $4a24: $00
	sbc  a                                           ; $4a25: $9f
	nop                                              ; $4a26: $00
	jr   jr_032_4a29                                 ; $4a27: $18 $00

jr_032_4a29:
	jr   jr_032_4a2b                                 ; $4a29: $18 $00

jr_032_4a2b:
	jr   jr_032_4a2d                                 ; $4a2b: $18 $00

jr_032_4a2d:
	jr   jr_032_4a2f                                 ; $4a2d: $18 $00

jr_032_4a2f:
	stop                                             ; $4a2f: $10 $00
	jr   nz, jr_032_4a33                             ; $4a31: $20 $00

jr_032_4a33:
	nop                                              ; $4a33: $00
	nop                                              ; $4a34: $00
	nop                                              ; $4a35: $00
	nop                                              ; $4a36: $00
	nop                                              ; $4a37: $00
	nop                                              ; $4a38: $00
	ld   bc, $0300                                   ; $4a39: $01 $00 $03
	nop                                              ; $4a3c: $00
	sbc  [hl]                                        ; $4a3d: $9e
	nop                                              ; $4a3e: $00
	nop                                              ; $4a3f: $00
	nop                                              ; $4a40: $00
	nop                                              ; $4a41: $00
	nop                                              ; $4a42: $00
	ld   [hl], $00                                   ; $4a43: $36 $00
	or   $00                                         ; $4a45: $f6 $00
	halt                                             ; $4a47: $76
	nop                                              ; $4a48: $00
	ld   h, b                                        ; $4a49: $60
	nop                                              ; $4a4a: $00
	ld   h, a                                        ; $4a4b: $67
	nop                                              ; $4a4c: $00
	ld   h, b                                        ; $4a4d: $60
	nop                                              ; $4a4e: $00
	ld   h, b                                        ; $4a4f: $60
	nop                                              ; $4a50: $00
	ld   h, b                                        ; $4a51: $60
	nop                                              ; $4a52: $00
	ld   h, b                                        ; $4a53: $60
	nop                                              ; $4a54: $00
	ldh  [rP1], a                                    ; $4a55: $e0 $00
	ret  nz                                          ; $4a57: $c0

	nop                                              ; $4a58: $00
	ret  nz                                          ; $4a59: $c0

	nop                                              ; $4a5a: $00
	add  b                                           ; $4a5b: $80
	nop                                              ; $4a5c: $00
	nop                                              ; $4a5d: $00
	nop                                              ; $4a5e: $00
	nop                                              ; $4a5f: $00
	nop                                              ; $4a60: $00
	nop                                              ; $4a61: $00
	nop                                              ; $4a62: $00
	ld   b, $00                                      ; $4a63: $06 $00
	add  $00                                         ; $4a65: $c6 $00
	add  $00                                         ; $4a67: $c6 $00
	ret  nz                                          ; $4a69: $c0

	nop                                              ; $4a6a: $00
	rst  $38                                         ; $4a6b: $ff
	nop                                              ; $4a6c: $00
	jp   wIsGBC                                       ; $4a6d: $c3 $00 $c2


	nop                                              ; $4a70: $00
	ret  nz                                          ; $4a71: $c0

	nop                                              ; $4a72: $00
	ret  nz                                          ; $4a73: $c0

	nop                                              ; $4a74: $00
	ret  nz                                          ; $4a75: $c0

	nop                                              ; $4a76: $00
	ret  nz                                          ; $4a77: $c0

	nop                                              ; $4a78: $00
	ret  nz                                          ; $4a79: $c0

	nop                                              ; $4a7a: $00
	ldh  [rP1], a                                    ; $4a7b: $e0 $00
	ld   a, [hl]                                     ; $4a7d: $7e
	nop                                              ; $4a7e: $00
	nop                                              ; $4a7f: $00
	nop                                              ; $4a80: $00
	nop                                              ; $4a81: $00
	nop                                              ; $4a82: $00
	ret  nz                                          ; $4a83: $c0

	nop                                              ; $4a84: $00
	rst  JumpTable                                         ; $4a85: $df
	nop                                              ; $4a86: $00
	ret  c                                           ; $4a87: $d8

	nop                                              ; $4a88: $00
	jr   jr_032_4a8b                                 ; $4a89: $18 $00

jr_032_4a8b:
	jr   jr_032_4a8d                                 ; $4a8b: $18 $00

jr_032_4a8d:
	jr   jr_032_4a8f                                 ; $4a8d: $18 $00

jr_032_4a8f:
	stop                                             ; $4a8f: $10 $00
	jr   nz, jr_032_4a93                             ; $4a91: $20 $00

jr_032_4a93:
	nop                                              ; $4a93: $00
	nop                                              ; $4a94: $00
	nop                                              ; $4a95: $00
	nop                                              ; $4a96: $00
	nop                                              ; $4a97: $00
	nop                                              ; $4a98: $00
	ld   bc, $0300                                   ; $4a99: $01 $00 $03
	nop                                              ; $4a9c: $00
	ld   e, $00                                      ; $4a9d: $1e $00
	nop                                              ; $4a9f: $00
	nop                                              ; $4aa0: $00
	nop                                              ; $4aa1: $00
	nop                                              ; $4aa2: $00
	nop                                              ; $4aa3: $00
	nop                                              ; $4aa4: $00
	rst  $20                                         ; $4aa5: $e7
	nop                                              ; $4aa6: $00
	ld   h, b                                        ; $4aa7: $60
	nop                                              ; $4aa8: $00
	ld   h, b                                        ; $4aa9: $60
	nop                                              ; $4aaa: $00
	ld   h, b                                        ; $4aab: $60
	nop                                              ; $4aac: $00
	ld   l, a                                        ; $4aad: $6f
	nop                                              ; $4aae: $00
	ld   h, b                                        ; $4aaf: $60
	nop                                              ; $4ab0: $00
	ld   h, b                                        ; $4ab1: $60
	nop                                              ; $4ab2: $00
	ld   h, b                                        ; $4ab3: $60
	nop                                              ; $4ab4: $00
	ldh  [rP1], a                                    ; $4ab5: $e0 $00
	ret  nz                                          ; $4ab7: $c0

	nop                                              ; $4ab8: $00
	ret  nz                                          ; $4ab9: $c0

	nop                                              ; $4aba: $00
	add  c                                           ; $4abb: $81
	nop                                              ; $4abc: $00
	rlca                                             ; $4abd: $07
	nop                                              ; $4abe: $00
	nop                                              ; $4abf: $00
	nop                                              ; $4ac0: $00
	nop                                              ; $4ac1: $00
	nop                                              ; $4ac2: $00
	nop                                              ; $4ac3: $00
	nop                                              ; $4ac4: $00
	ld   hl, sp+$00                                  ; $4ac5: $f8 $00
	nop                                              ; $4ac7: $00
	nop                                              ; $4ac8: $00
	nop                                              ; $4ac9: $00
	nop                                              ; $4aca: $00
	nop                                              ; $4acb: $00
	nop                                              ; $4acc: $00
	db   $fc                                         ; $4acd: $fc
	nop                                              ; $4ace: $00
	ld   h, b                                        ; $4acf: $60
	nop                                              ; $4ad0: $00
	ld   h, b                                        ; $4ad1: $60
	nop                                              ; $4ad2: $00
	ld   h, c                                        ; $4ad3: $61
	nop                                              ; $4ad4: $00
	ld   h, a                                        ; $4ad5: $67
	nop                                              ; $4ad6: $00
	ld   h, c                                        ; $4ad7: $61
	nop                                              ; $4ad8: $00
	pop  hl                                          ; $4ad9: $e1
	nop                                              ; $4ada: $00
	pop  bc                                          ; $4adb: $c1
	nop                                              ; $4adc: $00
	ld   bc, $0000                                   ; $4add: $01 $00 $00
	nop                                              ; $4ae0: $00
	nop                                              ; $4ae1: $00
	nop                                              ; $4ae2: $00
	nop                                              ; $4ae3: $00
	nop                                              ; $4ae4: $00
	ccf                                              ; $4ae5: $3f
	nop                                              ; $4ae6: $00
	nop                                              ; $4ae7: $00
	nop                                              ; $4ae8: $00
	nop                                              ; $4ae9: $00
	nop                                              ; $4aea: $00
	nop                                              ; $4aeb: $00
	nop                                              ; $4aec: $00
	nop                                              ; $4aed: $00
	nop                                              ; $4aee: $00
	nop                                              ; $4aef: $00
	nop                                              ; $4af0: $00
	ld   h, b                                        ; $4af1: $60
	nop                                              ; $4af2: $00
	ret  nz                                          ; $4af3: $c0

	nop                                              ; $4af4: $00
	add  b                                           ; $4af5: $80
	nop                                              ; $4af6: $00
	add  b                                           ; $4af7: $80
	nop                                              ; $4af8: $00
	add  c                                           ; $4af9: $81
	nop                                              ; $4afa: $00
	add  e                                           ; $4afb: $83
	nop                                              ; $4afc: $00
	sbc  [hl]                                        ; $4afd: $9e
	nop                                              ; $4afe: $00
	nop                                              ; $4aff: $00
	nop                                              ; $4b00: $00
	nop                                              ; $4b01: $00
	nop                                              ; $4b02: $00
	ld   [hl], $00                                   ; $4b03: $36 $00
	or   $00                                         ; $4b05: $f6 $00
	halt                                             ; $4b07: $76
	nop                                              ; $4b08: $00
	ld   h, b                                        ; $4b09: $60
	nop                                              ; $4b0a: $00
	ld   h, b                                        ; $4b0b: $60
	nop                                              ; $4b0c: $00
	ld   h, b                                        ; $4b0d: $60
	nop                                              ; $4b0e: $00
	ld   h, b                                        ; $4b0f: $60
	nop                                              ; $4b10: $00
	ld   h, b                                        ; $4b11: $60
	nop                                              ; $4b12: $00
	ld   h, b                                        ; $4b13: $60
	nop                                              ; $4b14: $00
	ldh  [rP1], a                                    ; $4b15: $e0 $00
	ret  nz                                          ; $4b17: $c0

	nop                                              ; $4b18: $00
	ret  nz                                          ; $4b19: $c0

	nop                                              ; $4b1a: $00
	add  b                                           ; $4b1b: $80
	nop                                              ; $4b1c: $00
	nop                                              ; $4b1d: $00
	nop                                              ; $4b1e: $00
	nop                                              ; $4b1f: $00
	nop                                              ; $4b20: $00
	nop                                              ; $4b21: $00
	nop                                              ; $4b22: $00
	nop                                              ; $4b23: $00
	nop                                              ; $4b24: $00
	rst  $38                                         ; $4b25: $ff
	nop                                              ; $4b26: $00
	ld   bc, $0100                                   ; $4b27: $01 $00 $01
	nop                                              ; $4b2a: $00
	ld   bc, $0100                                   ; $4b2b: $01 $00 $01
	nop                                              ; $4b2e: $00
	ld   bc, $0100                                   ; $4b2f: $01 $00 $01
	nop                                              ; $4b32: $00
	ld   bc, $0300                                   ; $4b33: $01 $00 $03
	nop                                              ; $4b36: $00
	inc  bc                                          ; $4b37: $03
	nop                                              ; $4b38: $00
	rlca                                             ; $4b39: $07
	nop                                              ; $4b3a: $00
	ld   c, $00                                      ; $4b3b: $0e $00
	ld   a, b                                        ; $4b3d: $78
	nop                                              ; $4b3e: $00
	nop                                              ; $4b3f: $00
	nop                                              ; $4b40: $00
	nop                                              ; $4b41: $00
	nop                                              ; $4b42: $00
	ld   [hl], b                                     ; $4b43: $70
	nop                                              ; $4b44: $00
	db   $db                                         ; $4b45: $db
	nop                                              ; $4b46: $00
	db   $db                                         ; $4b47: $db
	nop                                              ; $4b48: $00
	db   $db                                         ; $4b49: $db
	nop                                              ; $4b4a: $00
	di                                               ; $4b4b: $f3
	nop                                              ; $4b4c: $00
	add  e                                           ; $4b4d: $83
	nop                                              ; $4b4e: $00
	add  e                                           ; $4b4f: $83
	nop                                              ; $4b50: $00
	add  e                                           ; $4b51: $83
	nop                                              ; $4b52: $00
	add  e                                           ; $4b53: $83
	nop                                              ; $4b54: $00
	add  e                                           ; $4b55: $83
	nop                                              ; $4b56: $00
	inc  bc                                          ; $4b57: $03
	nop                                              ; $4b58: $00
	inc  bc                                          ; $4b59: $03
	nop                                              ; $4b5a: $00
	inc  bc                                          ; $4b5b: $03
	nop                                              ; $4b5c: $00
	inc  bc                                          ; $4b5d: $03
	nop                                              ; $4b5e: $00
	nop                                              ; $4b5f: $00
	nop                                              ; $4b60: $00
	nop                                              ; $4b61: $00
	nop                                              ; $4b62: $00
	nop                                              ; $4b63: $00
	nop                                              ; $4b64: $00
	db   $fc                                         ; $4b65: $fc
	nop                                              ; $4b66: $00
	inc  c                                           ; $4b67: $0c
	nop                                              ; $4b68: $00
	inc  c                                           ; $4b69: $0c
	nop                                              ; $4b6a: $00
	inc  c                                           ; $4b6b: $0c
	nop                                              ; $4b6c: $00
	dec  c                                           ; $4b6d: $0d
	nop                                              ; $4b6e: $00
	inc  c                                           ; $4b6f: $0c
	nop                                              ; $4b70: $00
	inc  c                                           ; $4b71: $0c
	nop                                              ; $4b72: $00
	inc  c                                           ; $4b73: $0c
	nop                                              ; $4b74: $00
	inc  c                                           ; $4b75: $0c
	nop                                              ; $4b76: $00
	inc  c                                           ; $4b77: $0c
	nop                                              ; $4b78: $00
	inc  c                                           ; $4b79: $0c
	nop                                              ; $4b7a: $00
	inc  c                                           ; $4b7b: $0c
	nop                                              ; $4b7c: $00
	db   $fc                                         ; $4b7d: $fc
	nop                                              ; $4b7e: $00
	nop                                              ; $4b7f: $00
	nop                                              ; $4b80: $00
	nop                                              ; $4b81: $00
	nop                                              ; $4b82: $00
	ld   bc, $ff00                                   ; $4b83: $01 $00 $ff
	nop                                              ; $4b86: $00
	ld   bc, $0000                                   ; $4b87: $01 $00 $00
	nop                                              ; $4b8a: $00
	nop                                              ; $4b8b: $00
	nop                                              ; $4b8c: $00
	rst  $38                                         ; $4b8d: $ff
	nop                                              ; $4b8e: $00
	inc  c                                           ; $4b8f: $0c
	nop                                              ; $4b90: $00
	inc  c                                           ; $4b91: $0c
	nop                                              ; $4b92: $00
	inc  c                                           ; $4b93: $0c
	nop                                              ; $4b94: $00
	inc  c                                           ; $4b95: $0c
	nop                                              ; $4b96: $00
	inc  c                                           ; $4b97: $0c
	nop                                              ; $4b98: $00
	inc  e                                           ; $4b99: $1c
	nop                                              ; $4b9a: $00
	jr   c, jr_032_4b9d                              ; $4b9b: $38 $00

jr_032_4b9d:
	ldh  [rP1], a                                    ; $4b9d: $e0 $00
	nop                                              ; $4b9f: $00
	nop                                              ; $4ba0: $00
	nop                                              ; $4ba1: $00
	nop                                              ; $4ba2: $00
	or   b                                           ; $4ba3: $b0
	nop                                              ; $4ba4: $00
	or   b                                           ; $4ba5: $b0
	nop                                              ; $4ba6: $00
	or   b                                           ; $4ba7: $b0
	nop                                              ; $4ba8: $00
	ld   bc, $0000                                   ; $4ba9: $01 $00 $00
	nop                                              ; $4bac: $00
	add  b                                           ; $4bad: $80
	nop                                              ; $4bae: $00
	nop                                              ; $4baf: $00
	nop                                              ; $4bb0: $00
	rrca                                             ; $4bb1: $0f
	nop                                              ; $4bb2: $00
	nop                                              ; $4bb3: $00
	nop                                              ; $4bb4: $00
	ld   [hl], b                                     ; $4bb5: $70
	nop                                              ; $4bb6: $00
	jr   jr_032_4bb9                                 ; $4bb7: $18 $00

jr_032_4bb9:
	jr   jr_032_4bbb                                 ; $4bb9: $18 $00

jr_032_4bbb:
	jr   jr_032_4bbd                                 ; $4bbb: $18 $00

jr_032_4bbd:
	db   $fc                                         ; $4bbd: $fc
	nop                                              ; $4bbe: $00
	nop                                              ; $4bbf: $00
	nop                                              ; $4bc0: $00
	nop                                              ; $4bc1: $00
	nop                                              ; $4bc2: $00
	ld   sp, $3100                                   ; $4bc3: $31 $00 $31
	nop                                              ; $4bc6: $00
	ld   sp, $ff00                                   ; $4bc7: $31 $00 $ff
	nop                                              ; $4bca: $00
	ld   sp, $3100                                   ; $4bcb: $31 $00 $31
	nop                                              ; $4bce: $00
	ld   sp, $8100                                   ; $4bcf: $31 $00 $81
	nop                                              ; $4bd2: $00
	ld   bc, $0100                                   ; $4bd3: $01 $00 $01
	nop                                              ; $4bd6: $00
	inc  bc                                          ; $4bd7: $03
	nop                                              ; $4bd8: $00
	inc  bc                                          ; $4bd9: $03
	nop                                              ; $4bda: $00
	rlca                                             ; $4bdb: $07
	nop                                              ; $4bdc: $00
	inc  e                                           ; $4bdd: $1c
	nop                                              ; $4bde: $00
	nop                                              ; $4bdf: $00
	nop                                              ; $4be0: $00
	nop                                              ; $4be1: $00
	nop                                              ; $4be2: $00
	add  b                                           ; $4be3: $80
	nop                                              ; $4be4: $00
	add  b                                           ; $4be5: $80
	nop                                              ; $4be6: $00
	add  b                                           ; $4be7: $80
	nop                                              ; $4be8: $00
	ldh  a, [rP1]                                    ; $4be9: $f0 $00
	add  b                                           ; $4beb: $80
	nop                                              ; $4bec: $00
	add  b                                           ; $4bed: $80
	nop                                              ; $4bee: $00
	add  b                                           ; $4bef: $80
	nop                                              ; $4bf0: $00
	sbc  a                                           ; $4bf1: $9f
	nop                                              ; $4bf2: $00
	add  b                                           ; $4bf3: $80
	nop                                              ; $4bf4: $00
	add  b                                           ; $4bf5: $80
	nop                                              ; $4bf6: $00
	add  b                                           ; $4bf7: $80
	nop                                              ; $4bf8: $00
	nop                                              ; $4bf9: $00
	nop                                              ; $4bfa: $00
	nop                                              ; $4bfb: $00
	nop                                              ; $4bfc: $00
	nop                                              ; $4bfd: $00
	nop                                              ; $4bfe: $00
	nop                                              ; $4bff: $00
	nop                                              ; $4c00: $00
	nop                                              ; $4c01: $00
	nop                                              ; $4c02: $00
	nop                                              ; $4c03: $00
	nop                                              ; $4c04: $00
	nop                                              ; $4c05: $00
	nop                                              ; $4c06: $00
	nop                                              ; $4c07: $00
	nop                                              ; $4c08: $00
	nop                                              ; $4c09: $00
	nop                                              ; $4c0a: $00
	nop                                              ; $4c0b: $00
	nop                                              ; $4c0c: $00
	nop                                              ; $4c0d: $00
	nop                                              ; $4c0e: $00
	nop                                              ; $4c0f: $00
	nop                                              ; $4c10: $00
	nop                                              ; $4c11: $00
	nop                                              ; $4c12: $00
	nop                                              ; $4c13: $00
	nop                                              ; $4c14: $00
	nop                                              ; $4c15: $00
	nop                                              ; $4c16: $00
	nop                                              ; $4c17: $00
	nop                                              ; $4c18: $00
	nop                                              ; $4c19: $00
	nop                                              ; $4c1a: $00
	nop                                              ; $4c1b: $00
	nop                                              ; $4c1c: $00
	nop                                              ; $4c1d: $00
	nop                                              ; $4c1e: $00
	nop                                              ; $4c1f: $00
	nop                                              ; $4c20: $00
	nop                                              ; $4c21: $00
	nop                                              ; $4c22: $00
	nop                                              ; $4c23: $00
	nop                                              ; $4c24: $00
	nop                                              ; $4c25: $00
	nop                                              ; $4c26: $00
	nop                                              ; $4c27: $00
	nop                                              ; $4c28: $00
	nop                                              ; $4c29: $00
	nop                                              ; $4c2a: $00
	nop                                              ; $4c2b: $00
	nop                                              ; $4c2c: $00
	nop                                              ; $4c2d: $00
	nop                                              ; $4c2e: $00
	nop                                              ; $4c2f: $00
	nop                                              ; $4c30: $00
	nop                                              ; $4c31: $00
	nop                                              ; $4c32: $00
	nop                                              ; $4c33: $00
	nop                                              ; $4c34: $00
	nop                                              ; $4c35: $00
	nop                                              ; $4c36: $00
	nop                                              ; $4c37: $00
	nop                                              ; $4c38: $00
	nop                                              ; $4c39: $00
	nop                                              ; $4c3a: $00
	nop                                              ; $4c3b: $00
	nop                                              ; $4c3c: $00
	nop                                              ; $4c3d: $00
	nop                                              ; $4c3e: $00
	nop                                              ; $4c3f: $00
	nop                                              ; $4c40: $00
	nop                                              ; $4c41: $00
	nop                                              ; $4c42: $00
	nop                                              ; $4c43: $00
	nop                                              ; $4c44: $00
	nop                                              ; $4c45: $00
	nop                                              ; $4c46: $00
	nop                                              ; $4c47: $00
	nop                                              ; $4c48: $00
	nop                                              ; $4c49: $00
	nop                                              ; $4c4a: $00
	nop                                              ; $4c4b: $00
	nop                                              ; $4c4c: $00
	nop                                              ; $4c4d: $00
	nop                                              ; $4c4e: $00
	nop                                              ; $4c4f: $00
	nop                                              ; $4c50: $00
	nop                                              ; $4c51: $00
	nop                                              ; $4c52: $00
	nop                                              ; $4c53: $00
	nop                                              ; $4c54: $00
	nop                                              ; $4c55: $00
	nop                                              ; $4c56: $00
	nop                                              ; $4c57: $00
	nop                                              ; $4c58: $00
	nop                                              ; $4c59: $00
	nop                                              ; $4c5a: $00
	nop                                              ; $4c5b: $00
	nop                                              ; $4c5c: $00
	nop                                              ; $4c5d: $00
	nop                                              ; $4c5e: $00
	nop                                              ; $4c5f: $00
	nop                                              ; $4c60: $00
	nop                                              ; $4c61: $00
	nop                                              ; $4c62: $00
	nop                                              ; $4c63: $00
	nop                                              ; $4c64: $00
	nop                                              ; $4c65: $00
	nop                                              ; $4c66: $00
	nop                                              ; $4c67: $00
	nop                                              ; $4c68: $00
	nop                                              ; $4c69: $00
	nop                                              ; $4c6a: $00
	nop                                              ; $4c6b: $00
	nop                                              ; $4c6c: $00
	nop                                              ; $4c6d: $00
	nop                                              ; $4c6e: $00
	nop                                              ; $4c6f: $00
	nop                                              ; $4c70: $00
	nop                                              ; $4c71: $00
	nop                                              ; $4c72: $00
	nop                                              ; $4c73: $00
	nop                                              ; $4c74: $00
	nop                                              ; $4c75: $00
	nop                                              ; $4c76: $00
	nop                                              ; $4c77: $00
	nop                                              ; $4c78: $00
	nop                                              ; $4c79: $00
	nop                                              ; $4c7a: $00
	nop                                              ; $4c7b: $00
	nop                                              ; $4c7c: $00
	nop                                              ; $4c7d: $00
	nop                                              ; $4c7e: $00
	nop                                              ; $4c7f: $00
	nop                                              ; $4c80: $00
	nop                                              ; $4c81: $00
	nop                                              ; $4c82: $00
	nop                                              ; $4c83: $00
	nop                                              ; $4c84: $00
	nop                                              ; $4c85: $00
	nop                                              ; $4c86: $00
	nop                                              ; $4c87: $00
	nop                                              ; $4c88: $00
	nop                                              ; $4c89: $00
	nop                                              ; $4c8a: $00
	nop                                              ; $4c8b: $00
	nop                                              ; $4c8c: $00
	nop                                              ; $4c8d: $00
	nop                                              ; $4c8e: $00
	nop                                              ; $4c8f: $00
	nop                                              ; $4c90: $00
	nop                                              ; $4c91: $00
	nop                                              ; $4c92: $00
	nop                                              ; $4c93: $00
	nop                                              ; $4c94: $00
	nop                                              ; $4c95: $00
	nop                                              ; $4c96: $00
	nop                                              ; $4c97: $00
	nop                                              ; $4c98: $00
	nop                                              ; $4c99: $00
	nop                                              ; $4c9a: $00
	nop                                              ; $4c9b: $00
	nop                                              ; $4c9c: $00
	nop                                              ; $4c9d: $00
	nop                                              ; $4c9e: $00
	nop                                              ; $4c9f: $00
	nop                                              ; $4ca0: $00
	nop                                              ; $4ca1: $00
	nop                                              ; $4ca2: $00
	nop                                              ; $4ca3: $00
	nop                                              ; $4ca4: $00
	nop                                              ; $4ca5: $00
	nop                                              ; $4ca6: $00
	nop                                              ; $4ca7: $00
	nop                                              ; $4ca8: $00
	nop                                              ; $4ca9: $00
	nop                                              ; $4caa: $00
	nop                                              ; $4cab: $00
	nop                                              ; $4cac: $00
	nop                                              ; $4cad: $00
	nop                                              ; $4cae: $00
	nop                                              ; $4caf: $00
	nop                                              ; $4cb0: $00
	nop                                              ; $4cb1: $00
	nop                                              ; $4cb2: $00
	nop                                              ; $4cb3: $00
	nop                                              ; $4cb4: $00
	nop                                              ; $4cb5: $00
	nop                                              ; $4cb6: $00
	nop                                              ; $4cb7: $00
	nop                                              ; $4cb8: $00
	nop                                              ; $4cb9: $00
	nop                                              ; $4cba: $00
	nop                                              ; $4cbb: $00
	nop                                              ; $4cbc: $00
	nop                                              ; $4cbd: $00
	nop                                              ; $4cbe: $00
	nop                                              ; $4cbf: $00
	nop                                              ; $4cc0: $00
	nop                                              ; $4cc1: $00
	nop                                              ; $4cc2: $00
	nop                                              ; $4cc3: $00
	nop                                              ; $4cc4: $00
	nop                                              ; $4cc5: $00
	nop                                              ; $4cc6: $00
	nop                                              ; $4cc7: $00
	nop                                              ; $4cc8: $00
	nop                                              ; $4cc9: $00
	nop                                              ; $4cca: $00
	nop                                              ; $4ccb: $00
	nop                                              ; $4ccc: $00
	nop                                              ; $4ccd: $00
	nop                                              ; $4cce: $00
	nop                                              ; $4ccf: $00
	nop                                              ; $4cd0: $00
	nop                                              ; $4cd1: $00
	nop                                              ; $4cd2: $00
	nop                                              ; $4cd3: $00
	nop                                              ; $4cd4: $00
	nop                                              ; $4cd5: $00
	nop                                              ; $4cd6: $00
	nop                                              ; $4cd7: $00
	nop                                              ; $4cd8: $00
	nop                                              ; $4cd9: $00
	nop                                              ; $4cda: $00
	nop                                              ; $4cdb: $00
	nop                                              ; $4cdc: $00
	nop                                              ; $4cdd: $00
	nop                                              ; $4cde: $00
	nop                                              ; $4cdf: $00
	nop                                              ; $4ce0: $00
	nop                                              ; $4ce1: $00
	nop                                              ; $4ce2: $00
	nop                                              ; $4ce3: $00
	nop                                              ; $4ce4: $00
	nop                                              ; $4ce5: $00
	nop                                              ; $4ce6: $00
	nop                                              ; $4ce7: $00
	nop                                              ; $4ce8: $00
	nop                                              ; $4ce9: $00
	nop                                              ; $4cea: $00
	nop                                              ; $4ceb: $00
	nop                                              ; $4cec: $00
	nop                                              ; $4ced: $00
	nop                                              ; $4cee: $00
	nop                                              ; $4cef: $00
	nop                                              ; $4cf0: $00
	nop                                              ; $4cf1: $00
	nop                                              ; $4cf2: $00
	nop                                              ; $4cf3: $00
	nop                                              ; $4cf4: $00
	nop                                              ; $4cf5: $00
	nop                                              ; $4cf6: $00
	nop                                              ; $4cf7: $00
	nop                                              ; $4cf8: $00
	nop                                              ; $4cf9: $00
	nop                                              ; $4cfa: $00
	nop                                              ; $4cfb: $00
	nop                                              ; $4cfc: $00
	nop                                              ; $4cfd: $00
	nop                                              ; $4cfe: $00
	nop                                              ; $4cff: $00
	nop                                              ; $4d00: $00
	nop                                              ; $4d01: $00
	nop                                              ; $4d02: $00
	nop                                              ; $4d03: $00
	nop                                              ; $4d04: $00
	ld   bc, $0000                                   ; $4d05: $01 $00 $00
	nop                                              ; $4d08: $00
	nop                                              ; $4d09: $00
	nop                                              ; $4d0a: $00
	nop                                              ; $4d0b: $00
	nop                                              ; $4d0c: $00
	nop                                              ; $4d0d: $00
	nop                                              ; $4d0e: $00
	nop                                              ; $4d0f: $00
	nop                                              ; $4d10: $00
	nop                                              ; $4d11: $00
	nop                                              ; $4d12: $00
	nop                                              ; $4d13: $00
	nop                                              ; $4d14: $00
	nop                                              ; $4d15: $00
	nop                                              ; $4d16: $00
	nop                                              ; $4d17: $00
	nop                                              ; $4d18: $00
	nop                                              ; $4d19: $00
	nop                                              ; $4d1a: $00
	nop                                              ; $4d1b: $00
	nop                                              ; $4d1c: $00
	nop                                              ; $4d1d: $00
	nop                                              ; $4d1e: $00
	nop                                              ; $4d1f: $00
	nop                                              ; $4d20: $00
	nop                                              ; $4d21: $00
	nop                                              ; $4d22: $00
	nop                                              ; $4d23: $00
	nop                                              ; $4d24: $00
	rst  $38                                         ; $4d25: $ff
	nop                                              ; $4d26: $00
	inc  bc                                          ; $4d27: $03
	nop                                              ; $4d28: $00
	inc  bc                                          ; $4d29: $03
	nop                                              ; $4d2a: $00
	inc  bc                                          ; $4d2b: $03
	nop                                              ; $4d2c: $00
	inc  bc                                          ; $4d2d: $03
	nop                                              ; $4d2e: $00
	inc  bc                                          ; $4d2f: $03
	nop                                              ; $4d30: $00
	inc  bc                                          ; $4d31: $03
	nop                                              ; $4d32: $00
	inc  bc                                          ; $4d33: $03
	nop                                              ; $4d34: $00
	rlca                                             ; $4d35: $07
	nop                                              ; $4d36: $00
	ld   b, $00                                      ; $4d37: $06 $00
	ld   c, $00                                      ; $4d39: $0e $00
	inc  e                                           ; $4d3b: $1c
	nop                                              ; $4d3c: $00
	ldh  a, [rP1]                                    ; $4d3d: $f0 $00
	nop                                              ; $4d3f: $00
	nop                                              ; $4d40: $00
	nop                                              ; $4d41: $00
	nop                                              ; $4d42: $00
	ldh  [rP1], a                                    ; $4d43: $e0 $00
	or   a                                           ; $4d45: $b7
	nop                                              ; $4d46: $00
	or   [hl]                                        ; $4d47: $b6
	nop                                              ; $4d48: $00
	or   [hl]                                        ; $4d49: $b6
	nop                                              ; $4d4a: $00
	and  $00                                         ; $4d4b: $e6 $00
	ld   b, $00                                      ; $4d4d: $06 $00
	ld   b, $00                                      ; $4d4f: $06 $00
	ld   b, $00                                      ; $4d51: $06 $00
	ld   b, $00                                      ; $4d53: $06 $00
	ld   b, $00                                      ; $4d55: $06 $00
	ld   b, $00                                      ; $4d57: $06 $00
	ld   b, $00                                      ; $4d59: $06 $00
	ld   b, $00                                      ; $4d5b: $06 $00
	rlca                                             ; $4d5d: $07
	nop                                              ; $4d5e: $00
	nop                                              ; $4d5f: $00
	nop                                              ; $4d60: $00
	nop                                              ; $4d61: $00
	nop                                              ; $4d62: $00
	nop                                              ; $4d63: $00
	nop                                              ; $4d64: $00
	ld   sp, hl                                      ; $4d65: $f9
	nop                                              ; $4d66: $00
	jr   jr_032_4d69                                 ; $4d67: $18 $00

jr_032_4d69:
	jr   jr_032_4d6b                                 ; $4d69: $18 $00

jr_032_4d6b:
	jr   jr_032_4d6d                                 ; $4d6b: $18 $00

jr_032_4d6d:
	dec  de                                          ; $4d6d: $1b
	nop                                              ; $4d6e: $00
	jr   jr_032_4d71                                 ; $4d6f: $18 $00

jr_032_4d71:
	jr   jr_032_4d73                                 ; $4d71: $18 $00

jr_032_4d73:
	jr   jr_032_4d75                                 ; $4d73: $18 $00

jr_032_4d75:
	jr   jr_032_4d77                                 ; $4d75: $18 $00

jr_032_4d77:
	jr   jr_032_4d79                                 ; $4d77: $18 $00

jr_032_4d79:
	jr   jr_032_4d7b                                 ; $4d79: $18 $00

jr_032_4d7b:
	jr   jr_032_4d7d                                 ; $4d7b: $18 $00

jr_032_4d7d:
	ld   sp, hl                                      ; $4d7d: $f9
	nop                                              ; $4d7e: $00
	nop                                              ; $4d7f: $00
	nop                                              ; $4d80: $00
	nop                                              ; $4d81: $00
	nop                                              ; $4d82: $00
	inc  bc                                          ; $4d83: $03
	nop                                              ; $4d84: $00
	rst  $38                                         ; $4d85: $ff
	nop                                              ; $4d86: $00
	inc  bc                                          ; $4d87: $03
	nop                                              ; $4d88: $00
	nop                                              ; $4d89: $00
	nop                                              ; $4d8a: $00
	nop                                              ; $4d8b: $00
	nop                                              ; $4d8c: $00
	rst  $38                                         ; $4d8d: $ff
	nop                                              ; $4d8e: $00
	jr   jr_032_4d91                                 ; $4d8f: $18 $00

jr_032_4d91:
	jr   jr_032_4d93                                 ; $4d91: $18 $00

jr_032_4d93:
	jr   jr_032_4d95                                 ; $4d93: $18 $00

jr_032_4d95:
	jr   jr_032_4d97                                 ; $4d95: $18 $00

jr_032_4d97:
	jr   jr_032_4d99                                 ; $4d97: $18 $00

jr_032_4d99:
	jr   c, jr_032_4d9b                              ; $4d99: $38 $00

jr_032_4d9b:
	ld   [hl], b                                     ; $4d9b: $70
	nop                                              ; $4d9c: $00
	pop  bc                                          ; $4d9d: $c1
	nop                                              ; $4d9e: $00
	nop                                              ; $4d9f: $00
	nop                                              ; $4da0: $00
	nop                                              ; $4da1: $00
	nop                                              ; $4da2: $00
	ld   h, b                                        ; $4da3: $60
	nop                                              ; $4da4: $00
	ld   h, b                                        ; $4da5: $60
	nop                                              ; $4da6: $00
	ld   h, b                                        ; $4da7: $60
	nop                                              ; $4da8: $00
	inc  bc                                          ; $4da9: $03
	nop                                              ; $4daa: $00
	nop                                              ; $4dab: $00
	nop                                              ; $4dac: $00
	nop                                              ; $4dad: $00
	nop                                              ; $4dae: $00
	nop                                              ; $4daf: $00
	nop                                              ; $4db0: $00
	rra                                              ; $4db1: $1f
	nop                                              ; $4db2: $00
	nop                                              ; $4db3: $00
	nop                                              ; $4db4: $00
	ldh  [rP1], a                                    ; $4db5: $e0 $00
	jr   nc, jr_032_4db9                             ; $4db7: $30 $00

jr_032_4db9:
	jr   nc, jr_032_4dbb                             ; $4db9: $30 $00

jr_032_4dbb:
	jr   nc, jr_032_4dbd                             ; $4dbb: $30 $00

jr_032_4dbd:
	ld   hl, sp+$00                                  ; $4dbd: $f8 $00
	nop                                              ; $4dbf: $00
	nop                                              ; $4dc0: $00
	nop                                              ; $4dc1: $00
	nop                                              ; $4dc2: $00
	ld   h, e                                        ; $4dc3: $63
	nop                                              ; $4dc4: $00
	ld   h, e                                        ; $4dc5: $63
	nop                                              ; $4dc6: $00
	ld   h, e                                        ; $4dc7: $63
	nop                                              ; $4dc8: $00
	rst  $38                                         ; $4dc9: $ff
	nop                                              ; $4dca: $00
	ld   h, e                                        ; $4dcb: $63
	nop                                              ; $4dcc: $00
	ld   h, e                                        ; $4dcd: $63
	nop                                              ; $4dce: $00
	ld   h, e                                        ; $4dcf: $63
	nop                                              ; $4dd0: $00
	inc  bc                                          ; $4dd1: $03
	nop                                              ; $4dd2: $00
	inc  bc                                          ; $4dd3: $03
	nop                                              ; $4dd4: $00
	inc  bc                                          ; $4dd5: $03
	nop                                              ; $4dd6: $00
	rlca                                             ; $4dd7: $07
	nop                                              ; $4dd8: $00
	ld   b, $00                                      ; $4dd9: $06 $00
	ld   c, $00                                      ; $4ddb: $0e $00
	jr   c, jr_032_4ddf                              ; $4ddd: $38 $00

jr_032_4ddf:
	nop                                              ; $4ddf: $00
	nop                                              ; $4de0: $00
	nop                                              ; $4de1: $00
	nop                                              ; $4de2: $00
	nop                                              ; $4de3: $00
	nop                                              ; $4de4: $00
	nop                                              ; $4de5: $00
	nop                                              ; $4de6: $00
	nop                                              ; $4de7: $00
	nop                                              ; $4de8: $00
	ldh  [rP1], a                                    ; $4de9: $e0 $00
	nop                                              ; $4deb: $00
	nop                                              ; $4dec: $00
	nop                                              ; $4ded: $00
	nop                                              ; $4dee: $00
	nop                                              ; $4def: $00
	nop                                              ; $4df0: $00
	rra                                              ; $4df1: $1f
	nop                                              ; $4df2: $00
	nop                                              ; $4df3: $00
	nop                                              ; $4df4: $00
	nop                                              ; $4df5: $00
	nop                                              ; $4df6: $00
	nop                                              ; $4df7: $00
	nop                                              ; $4df8: $00
	nop                                              ; $4df9: $00
	nop                                              ; $4dfa: $00
	nop                                              ; $4dfb: $00
	nop                                              ; $4dfc: $00
	nop                                              ; $4dfd: $00
	nop                                              ; $4dfe: $00
	nop                                              ; $4dff: $00
	nop                                              ; $4e00: $00
	nop                                              ; $4e01: $00
	nop                                              ; $4e02: $00
	nop                                              ; $4e03: $00
	nop                                              ; $4e04: $00
	nop                                              ; $4e05: $00
	nop                                              ; $4e06: $00
	nop                                              ; $4e07: $00
	nop                                              ; $4e08: $00
	nop                                              ; $4e09: $00
	nop                                              ; $4e0a: $00
	nop                                              ; $4e0b: $00
	nop                                              ; $4e0c: $00
	nop                                              ; $4e0d: $00
	nop                                              ; $4e0e: $00
	nop                                              ; $4e0f: $00
	nop                                              ; $4e10: $00
	nop                                              ; $4e11: $00
	nop                                              ; $4e12: $00
	nop                                              ; $4e13: $00
	nop                                              ; $4e14: $00
	nop                                              ; $4e15: $00
	nop                                              ; $4e16: $00
	nop                                              ; $4e17: $00
	nop                                              ; $4e18: $00
	nop                                              ; $4e19: $00
	nop                                              ; $4e1a: $00
	nop                                              ; $4e1b: $00
	nop                                              ; $4e1c: $00
	nop                                              ; $4e1d: $00
	nop                                              ; $4e1e: $00
	nop                                              ; $4e1f: $00
	nop                                              ; $4e20: $00
	nop                                              ; $4e21: $00
	nop                                              ; $4e22: $00
	nop                                              ; $4e23: $00
	nop                                              ; $4e24: $00
	rra                                              ; $4e25: $1f
	nop                                              ; $4e26: $00
	nop                                              ; $4e27: $00
	nop                                              ; $4e28: $00
	nop                                              ; $4e29: $00
	nop                                              ; $4e2a: $00
	ld   bc, $0100                                   ; $4e2b: $01 $00 $01
	nop                                              ; $4e2e: $00
	ld   bc, $0100                                   ; $4e2f: $01 $00 $01
	nop                                              ; $4e32: $00
	ld   bc, $0100                                   ; $4e33: $01 $00 $01
	nop                                              ; $4e36: $00
	ld   bc, $0100                                   ; $4e37: $01 $00 $01
	nop                                              ; $4e3a: $00
	inc  bc                                          ; $4e3b: $03
	nop                                              ; $4e3c: $00
	ld   c, $00                                      ; $4e3d: $0e $00
	nop                                              ; $4e3f: $00
	nop                                              ; $4e40: $00
	nop                                              ; $4e41: $00
	nop                                              ; $4e42: $00
	nop                                              ; $4e43: $00
	nop                                              ; $4e44: $00
	db   $fc                                         ; $4e45: $fc
	nop                                              ; $4e46: $00
	inc  c                                           ; $4e47: $0c
	nop                                              ; $4e48: $00
	dec  c                                           ; $4e49: $0d
	nop                                              ; $4e4a: $00
	adc  h                                           ; $4e4b: $8c
	nop                                              ; $4e4c: $00
	adc  b                                           ; $4e4d: $88
	nop                                              ; $4e4e: $00
	adc  c                                           ; $4e4f: $89
	nop                                              ; $4e50: $00
	sub  b                                           ; $4e51: $90
	nop                                              ; $4e52: $00
	add  b                                           ; $4e53: $80
	nop                                              ; $4e54: $00
	add  b                                           ; $4e55: $80
	nop                                              ; $4e56: $00
	add  b                                           ; $4e57: $80
	nop                                              ; $4e58: $00
	add  b                                           ; $4e59: $80
	nop                                              ; $4e5a: $00
	nop                                              ; $4e5b: $00
	nop                                              ; $4e5c: $00
	ld   bc, $0000                                   ; $4e5d: $01 $00 $00
	nop                                              ; $4e60: $00
	nop                                              ; $4e61: $00
	nop                                              ; $4e62: $00
	nop                                              ; $4e63: $00
	nop                                              ; $4e64: $00
	inc  bc                                          ; $4e65: $03
	nop                                              ; $4e66: $00
	inc  bc                                          ; $4e67: $03
	nop                                              ; $4e68: $00
	db   $e3                                         ; $4e69: $e3
	nop                                              ; $4e6a: $00
	inc  bc                                          ; $4e6b: $03
	nop                                              ; $4e6c: $00
	inc  bc                                          ; $4e6d: $03
	nop                                              ; $4e6e: $00
	db   $e3                                         ; $4e6f: $e3
	nop                                              ; $4e70: $00
	inc  bc                                          ; $4e71: $03
	nop                                              ; $4e72: $00
	inc  bc                                          ; $4e73: $03
	nop                                              ; $4e74: $00
	inc  bc                                          ; $4e75: $03
	nop                                              ; $4e76: $00
	rlca                                             ; $4e77: $07
	nop                                              ; $4e78: $00
	ld   c, $00                                      ; $4e79: $0e $00
	inc  e                                           ; $4e7b: $1c
	nop                                              ; $4e7c: $00
	ldh  a, [rP1]                                    ; $4e7d: $f0 $00
	nop                                              ; $4e7f: $00
	nop                                              ; $4e80: $00
	nop                                              ; $4e81: $00
	nop                                              ; $4e82: $00
	nop                                              ; $4e83: $00
	nop                                              ; $4e84: $00
	ld   a, a                                        ; $4e85: $7f
	nop                                              ; $4e86: $00
	ld   bc, $0100                                   ; $4e87: $01 $00 $01
	nop                                              ; $4e8a: $00
	ld   bc, $0300                                   ; $4e8b: $01 $00 $03
	nop                                              ; $4e8e: $00
	inc  bc                                          ; $4e8f: $03
	nop                                              ; $4e90: $00
	ld   b, $00                                      ; $4e91: $06 $00
	rrca                                             ; $4e93: $0f
	nop                                              ; $4e94: $00
	add  hl, de                                      ; $4e95: $19
	nop                                              ; $4e96: $00
	ld   sp, $3000                                   ; $4e97: $31 $00 $30
	nop                                              ; $4e9a: $00
	ld   h, b                                        ; $4e9b: $60
	nop                                              ; $4e9c: $00
	ld   h, b                                        ; $4e9d: $60
	nop                                              ; $4e9e: $00
	nop                                              ; $4e9f: $00
	nop                                              ; $4ea0: $00
	nop                                              ; $4ea1: $00
	nop                                              ; $4ea2: $00
	nop                                              ; $4ea3: $00
	nop                                              ; $4ea4: $00
	adc  a                                           ; $4ea5: $8f
	nop                                              ; $4ea6: $00
	adc  h                                           ; $4ea7: $8c
	nop                                              ; $4ea8: $00
	adc  h                                           ; $4ea9: $8c
	nop                                              ; $4eaa: $00
	adc  h                                           ; $4eab: $8c
	nop                                              ; $4eac: $00
	adc  h                                           ; $4ead: $8c
	nop                                              ; $4eae: $00
	ld   a, [de]                                     ; $4eaf: $1a
	nop                                              ; $4eb0: $00
	ld   sp, $0000                                   ; $4eb1: $31 $00 $00
	nop                                              ; $4eb4: $00
	nop                                              ; $4eb5: $00
	nop                                              ; $4eb6: $00
	add  b                                           ; $4eb7: $80
	nop                                              ; $4eb8: $00
	add  c                                           ; $4eb9: $81
	nop                                              ; $4eba: $00
	jp   $ce00                                       ; $4ebb: $c3 $00 $ce


	nop                                              ; $4ebe: $00
	nop                                              ; $4ebf: $00
	nop                                              ; $4ec0: $00
	nop                                              ; $4ec1: $00
	nop                                              ; $4ec2: $00
	nop                                              ; $4ec3: $00
	nop                                              ; $4ec4: $00
	ldh  a, [rP1]                                    ; $4ec5: $f0 $00
	jr   nc, jr_032_4ec9                             ; $4ec7: $30 $00

jr_032_4ec9:
	ld   [hl], $00                                   ; $4ec9: $36 $00
	scf                                              ; $4ecb: $37
	nop                                              ; $4ecc: $00
	inc  sp                                          ; $4ecd: $33
	nop                                              ; $4ece: $00
	jr   nc, jr_032_4ed1                             ; $4ecf: $30 $00

jr_032_4ed1:
	ldh  a, [rP1]                                    ; $4ed1: $f0 $00
	ld   [hl], b                                     ; $4ed3: $70
	nop                                              ; $4ed4: $00
	ld   h, b                                        ; $4ed5: $60
	nop                                              ; $4ed6: $00
	ldh  [rP1], a                                    ; $4ed7: $e0 $00
	ret  nz                                          ; $4ed9: $c0

	nop                                              ; $4eda: $00
	add  b                                           ; $4edb: $80
	nop                                              ; $4edc: $00
	rlca                                             ; $4edd: $07
	nop                                              ; $4ede: $00
	nop                                              ; $4edf: $00
	nop                                              ; $4ee0: $00
	nop                                              ; $4ee1: $00
	nop                                              ; $4ee2: $00
	nop                                              ; $4ee3: $00
	nop                                              ; $4ee4: $00
	ld   b, $00                                      ; $4ee5: $06 $00
	ld   b, $00                                      ; $4ee7: $06 $00
	ld   b, $00                                      ; $4ee9: $06 $00
	ld   b, $00                                      ; $4eeb: $06 $00
	add  $00                                         ; $4eed: $c6 $00
	ld   b, $00                                      ; $4eef: $06 $00
	ld   b, $00                                      ; $4ef1: $06 $00
	ld   b, $00                                      ; $4ef3: $06 $00
	ld   c, $00                                      ; $4ef5: $0e $00
	inc  c                                           ; $4ef7: $0c
	nop                                              ; $4ef8: $00
	inc  e                                           ; $4ef9: $1c
	nop                                              ; $4efa: $00
	ld   a, b                                        ; $4efb: $78
	nop                                              ; $4efc: $00
	ldh  [rP1], a                                    ; $4efd: $e0 $00
	nop                                              ; $4eff: $00
	nop                                              ; $4f00: $00
	nop                                              ; $4f01: $00
	nop                                              ; $4f02: $00
	nop                                              ; $4f03: $00
	nop                                              ; $4f04: $00
	ld   h, c                                        ; $4f05: $61
	nop                                              ; $4f06: $00
	ld   h, b                                        ; $4f07: $60
	nop                                              ; $4f08: $00
	ld   h, b                                        ; $4f09: $60
	nop                                              ; $4f0a: $00
	ld   h, b                                        ; $4f0b: $60
	nop                                              ; $4f0c: $00
	ld   h, b                                        ; $4f0d: $60
	nop                                              ; $4f0e: $00
	ld   a, b                                        ; $4f0f: $78
	nop                                              ; $4f10: $00
	ld   l, [hl]                                     ; $4f11: $6e
	nop                                              ; $4f12: $00
	ld   h, e                                        ; $4f13: $63
	nop                                              ; $4f14: $00
	ld   h, b                                        ; $4f15: $60
	nop                                              ; $4f16: $00
	ld   h, b                                        ; $4f17: $60
	nop                                              ; $4f18: $00
	ld   h, b                                        ; $4f19: $60
	nop                                              ; $4f1a: $00
	ld   h, b                                        ; $4f1b: $60
	nop                                              ; $4f1c: $00
	ld   h, b                                        ; $4f1d: $60
	nop                                              ; $4f1e: $00
	nop                                              ; $4f1f: $00
	nop                                              ; $4f20: $00
	nop                                              ; $4f21: $00
	nop                                              ; $4f22: $00
	nop                                              ; $4f23: $00
	nop                                              ; $4f24: $00
	rst  $38                                         ; $4f25: $ff
	nop                                              ; $4f26: $00
	inc  bc                                          ; $4f27: $03
	nop                                              ; $4f28: $00
	inc  bc                                          ; $4f29: $03
	nop                                              ; $4f2a: $00
	inc  bc                                          ; $4f2b: $03
	nop                                              ; $4f2c: $00
	inc  bc                                          ; $4f2d: $03
	nop                                              ; $4f2e: $00
	inc  bc                                          ; $4f2f: $03
	nop                                              ; $4f30: $00
	inc  bc                                          ; $4f31: $03
	nop                                              ; $4f32: $00
	inc  bc                                          ; $4f33: $03
	nop                                              ; $4f34: $00
	rlca                                             ; $4f35: $07
	nop                                              ; $4f36: $00
	ld   b, $00                                      ; $4f37: $06 $00
	ld   c, $00                                      ; $4f39: $0e $00
	inc  e                                           ; $4f3b: $1c
	nop                                              ; $4f3c: $00
	ldh  a, [rP1]                                    ; $4f3d: $f0 $00
	nop                                              ; $4f3f: $00
	nop                                              ; $4f40: $00
	nop                                              ; $4f41: $00
	nop                                              ; $4f42: $00
	ldh  [rP1], a                                    ; $4f43: $e0 $00
	or   a                                           ; $4f45: $b7
	nop                                              ; $4f46: $00
	or   [hl]                                        ; $4f47: $b6
	nop                                              ; $4f48: $00
	or   [hl]                                        ; $4f49: $b6
	nop                                              ; $4f4a: $00
	and  $00                                         ; $4f4b: $e6 $00
	ld   b, $00                                      ; $4f4d: $06 $00
	ld   b, $00                                      ; $4f4f: $06 $00
	ld   b, $00                                      ; $4f51: $06 $00
	ld   b, $00                                      ; $4f53: $06 $00
	ld   b, $00                                      ; $4f55: $06 $00
	ld   b, $00                                      ; $4f57: $06 $00
	ld   b, $00                                      ; $4f59: $06 $00
	ld   b, $00                                      ; $4f5b: $06 $00
	rlca                                             ; $4f5d: $07
	nop                                              ; $4f5e: $00
	nop                                              ; $4f5f: $00
	nop                                              ; $4f60: $00
	nop                                              ; $4f61: $00
	nop                                              ; $4f62: $00
	nop                                              ; $4f63: $00
	nop                                              ; $4f64: $00
	ld   sp, hl                                      ; $4f65: $f9
	nop                                              ; $4f66: $00
	jr   jr_032_4f69                                 ; $4f67: $18 $00

jr_032_4f69:
	jr   jr_032_4f6b                                 ; $4f69: $18 $00

jr_032_4f6b:
	jr   jr_032_4f6d                                 ; $4f6b: $18 $00

jr_032_4f6d:
	dec  de                                          ; $4f6d: $1b
	nop                                              ; $4f6e: $00
	jr   jr_032_4f71                                 ; $4f6f: $18 $00

jr_032_4f71:
	jr   jr_032_4f73                                 ; $4f71: $18 $00

jr_032_4f73:
	jr   jr_032_4f75                                 ; $4f73: $18 $00

jr_032_4f75:
	jr   jr_032_4f77                                 ; $4f75: $18 $00

jr_032_4f77:
	jr   jr_032_4f79                                 ; $4f77: $18 $00

jr_032_4f79:
	jr   jr_032_4f7b                                 ; $4f79: $18 $00

jr_032_4f7b:
	jr   jr_032_4f7d                                 ; $4f7b: $18 $00

jr_032_4f7d:
	ld   sp, hl                                      ; $4f7d: $f9
	nop                                              ; $4f7e: $00
	nop                                              ; $4f7f: $00
	nop                                              ; $4f80: $00
	nop                                              ; $4f81: $00
	nop                                              ; $4f82: $00
	inc  bc                                          ; $4f83: $03
	nop                                              ; $4f84: $00
	rst  $38                                         ; $4f85: $ff
	nop                                              ; $4f86: $00
	inc  bc                                          ; $4f87: $03
	nop                                              ; $4f88: $00
	nop                                              ; $4f89: $00
	nop                                              ; $4f8a: $00
	nop                                              ; $4f8b: $00
	nop                                              ; $4f8c: $00
	rst  $38                                         ; $4f8d: $ff
	nop                                              ; $4f8e: $00
	jr   jr_032_4f91                                 ; $4f8f: $18 $00

jr_032_4f91:
	jr   jr_032_4f93                                 ; $4f91: $18 $00

jr_032_4f93:
	jr   jr_032_4f95                                 ; $4f93: $18 $00

jr_032_4f95:
	jr   jr_032_4f97                                 ; $4f95: $18 $00

jr_032_4f97:
	jr   jr_032_4f99                                 ; $4f97: $18 $00

jr_032_4f99:
	jr   c, jr_032_4f9b                              ; $4f99: $38 $00

jr_032_4f9b:
	ld   [hl], b                                     ; $4f9b: $70
	nop                                              ; $4f9c: $00
	pop  bc                                          ; $4f9d: $c1
	nop                                              ; $4f9e: $00
	nop                                              ; $4f9f: $00
	nop                                              ; $4fa0: $00
	nop                                              ; $4fa1: $00
	nop                                              ; $4fa2: $00
	ld   h, b                                        ; $4fa3: $60
	nop                                              ; $4fa4: $00
	ld   h, b                                        ; $4fa5: $60
	nop                                              ; $4fa6: $00
	ld   h, b                                        ; $4fa7: $60
	nop                                              ; $4fa8: $00
	inc  bc                                          ; $4fa9: $03
	nop                                              ; $4faa: $00
	nop                                              ; $4fab: $00
	nop                                              ; $4fac: $00
	nop                                              ; $4fad: $00
	nop                                              ; $4fae: $00
	nop                                              ; $4faf: $00
	nop                                              ; $4fb0: $00
	rra                                              ; $4fb1: $1f
	nop                                              ; $4fb2: $00
	nop                                              ; $4fb3: $00
	nop                                              ; $4fb4: $00
	ldh  [rP1], a                                    ; $4fb5: $e0 $00
	jr   nc, jr_032_4fb9                             ; $4fb7: $30 $00

jr_032_4fb9:
	jr   nc, jr_032_4fbb                             ; $4fb9: $30 $00

jr_032_4fbb:
	jr   nc, jr_032_4fbd                             ; $4fbb: $30 $00

jr_032_4fbd:
	ld   hl, sp+$00                                  ; $4fbd: $f8 $00
	nop                                              ; $4fbf: $00
	nop                                              ; $4fc0: $00
	nop                                              ; $4fc1: $00
	nop                                              ; $4fc2: $00
	ld   h, e                                        ; $4fc3: $63
	nop                                              ; $4fc4: $00
	ld   h, e                                        ; $4fc5: $63
	nop                                              ; $4fc6: $00
	ld   h, e                                        ; $4fc7: $63
	nop                                              ; $4fc8: $00
	rst  $38                                         ; $4fc9: $ff
	nop                                              ; $4fca: $00
	ld   h, e                                        ; $4fcb: $63
	nop                                              ; $4fcc: $00
	ld   h, e                                        ; $4fcd: $63
	nop                                              ; $4fce: $00
	ld   h, e                                        ; $4fcf: $63
	nop                                              ; $4fd0: $00
	inc  bc                                          ; $4fd1: $03
	nop                                              ; $4fd2: $00
	inc  bc                                          ; $4fd3: $03
	nop                                              ; $4fd4: $00
	inc  bc                                          ; $4fd5: $03
	nop                                              ; $4fd6: $00
	rlca                                             ; $4fd7: $07
	nop                                              ; $4fd8: $00
	ld   b, $00                                      ; $4fd9: $06 $00
	ld   c, $00                                      ; $4fdb: $0e $00
	jr   c, jr_032_4fdf                              ; $4fdd: $38 $00

jr_032_4fdf:
	nop                                              ; $4fdf: $00
	nop                                              ; $4fe0: $00
	nop                                              ; $4fe1: $00
	nop                                              ; $4fe2: $00
	nop                                              ; $4fe3: $00
	nop                                              ; $4fe4: $00
	nop                                              ; $4fe5: $00
	nop                                              ; $4fe6: $00
	nop                                              ; $4fe7: $00
	nop                                              ; $4fe8: $00
	ldh  [rP1], a                                    ; $4fe9: $e0 $00
	nop                                              ; $4feb: $00
	nop                                              ; $4fec: $00
	nop                                              ; $4fed: $00
	nop                                              ; $4fee: $00
	nop                                              ; $4fef: $00
	nop                                              ; $4ff0: $00
	rra                                              ; $4ff1: $1f
	nop                                              ; $4ff2: $00
	nop                                              ; $4ff3: $00
	nop                                              ; $4ff4: $00
	nop                                              ; $4ff5: $00
	nop                                              ; $4ff6: $00
	nop                                              ; $4ff7: $00
	nop                                              ; $4ff8: $00
	nop                                              ; $4ff9: $00
	nop                                              ; $4ffa: $00
	nop                                              ; $4ffb: $00
	nop                                              ; $4ffc: $00
	nop                                              ; $4ffd: $00
	nop                                              ; $4ffe: $00
	nop                                              ; $4fff: $00
	nop                                              ; $5000: $00
	nop                                              ; $5001: $00
	nop                                              ; $5002: $00
	nop                                              ; $5003: $00
	nop                                              ; $5004: $00
	nop                                              ; $5005: $00
	nop                                              ; $5006: $00
	nop                                              ; $5007: $00
	nop                                              ; $5008: $00
	nop                                              ; $5009: $00
	nop                                              ; $500a: $00
	nop                                              ; $500b: $00
	nop                                              ; $500c: $00
	nop                                              ; $500d: $00
	nop                                              ; $500e: $00
	nop                                              ; $500f: $00
	nop                                              ; $5010: $00
	nop                                              ; $5011: $00
	nop                                              ; $5012: $00
	nop                                              ; $5013: $00
	nop                                              ; $5014: $00
	nop                                              ; $5015: $00
	nop                                              ; $5016: $00
	nop                                              ; $5017: $00
	nop                                              ; $5018: $00
	nop                                              ; $5019: $00
	nop                                              ; $501a: $00
	nop                                              ; $501b: $00
	nop                                              ; $501c: $00
	nop                                              ; $501d: $00
	nop                                              ; $501e: $00
	nop                                              ; $501f: $00
	nop                                              ; $5020: $00
	nop                                              ; $5021: $00
	nop                                              ; $5022: $00
	nop                                              ; $5023: $00
	nop                                              ; $5024: $00
	nop                                              ; $5025: $00
	nop                                              ; $5026: $00
	nop                                              ; $5027: $00
	nop                                              ; $5028: $00
	nop                                              ; $5029: $00
	nop                                              ; $502a: $00
	nop                                              ; $502b: $00
	nop                                              ; $502c: $00
	nop                                              ; $502d: $00
	nop                                              ; $502e: $00
	nop                                              ; $502f: $00
	nop                                              ; $5030: $00
	nop                                              ; $5031: $00
	nop                                              ; $5032: $00
	nop                                              ; $5033: $00
	nop                                              ; $5034: $00
	nop                                              ; $5035: $00
	nop                                              ; $5036: $00
	nop                                              ; $5037: $00
	nop                                              ; $5038: $00
	nop                                              ; $5039: $00
	nop                                              ; $503a: $00
	nop                                              ; $503b: $00
	nop                                              ; $503c: $00
	nop                                              ; $503d: $00
	nop                                              ; $503e: $00
	nop                                              ; $503f: $00
	nop                                              ; $5040: $00
	nop                                              ; $5041: $00
	nop                                              ; $5042: $00
	nop                                              ; $5043: $00
	nop                                              ; $5044: $00
	nop                                              ; $5045: $00
	nop                                              ; $5046: $00
	nop                                              ; $5047: $00
	nop                                              ; $5048: $00
	nop                                              ; $5049: $00
	nop                                              ; $504a: $00
	nop                                              ; $504b: $00
	nop                                              ; $504c: $00
	nop                                              ; $504d: $00
	nop                                              ; $504e: $00
	nop                                              ; $504f: $00
	nop                                              ; $5050: $00
	nop                                              ; $5051: $00
	nop                                              ; $5052: $00
	nop                                              ; $5053: $00
	nop                                              ; $5054: $00
	nop                                              ; $5055: $00
	nop                                              ; $5056: $00
	nop                                              ; $5057: $00
	nop                                              ; $5058: $00
	nop                                              ; $5059: $00
	nop                                              ; $505a: $00
	nop                                              ; $505b: $00
	nop                                              ; $505c: $00
	nop                                              ; $505d: $00
	nop                                              ; $505e: $00
	nop                                              ; $505f: $00
	nop                                              ; $5060: $00
	nop                                              ; $5061: $00
	nop                                              ; $5062: $00
	nop                                              ; $5063: $00
	nop                                              ; $5064: $00
	nop                                              ; $5065: $00
	nop                                              ; $5066: $00
	nop                                              ; $5067: $00
	nop                                              ; $5068: $00
	nop                                              ; $5069: $00
	nop                                              ; $506a: $00
	nop                                              ; $506b: $00
	nop                                              ; $506c: $00
	nop                                              ; $506d: $00
	nop                                              ; $506e: $00
	nop                                              ; $506f: $00
	nop                                              ; $5070: $00
	nop                                              ; $5071: $00
	nop                                              ; $5072: $00
	nop                                              ; $5073: $00
	nop                                              ; $5074: $00
	nop                                              ; $5075: $00
	nop                                              ; $5076: $00
	nop                                              ; $5077: $00
	nop                                              ; $5078: $00
	nop                                              ; $5079: $00
	nop                                              ; $507a: $00
	nop                                              ; $507b: $00
	nop                                              ; $507c: $00
	nop                                              ; $507d: $00
	nop                                              ; $507e: $00
	nop                                              ; $507f: $00
	nop                                              ; $5080: $00
	nop                                              ; $5081: $00
	nop                                              ; $5082: $00
	nop                                              ; $5083: $00
	nop                                              ; $5084: $00
	nop                                              ; $5085: $00
	nop                                              ; $5086: $00
	nop                                              ; $5087: $00
	nop                                              ; $5088: $00
	nop                                              ; $5089: $00
	nop                                              ; $508a: $00
	nop                                              ; $508b: $00
	nop                                              ; $508c: $00
	nop                                              ; $508d: $00
	nop                                              ; $508e: $00
	nop                                              ; $508f: $00
	nop                                              ; $5090: $00
	nop                                              ; $5091: $00
	nop                                              ; $5092: $00
	nop                                              ; $5093: $00
	nop                                              ; $5094: $00
	nop                                              ; $5095: $00
	nop                                              ; $5096: $00
	nop                                              ; $5097: $00
	nop                                              ; $5098: $00
	nop                                              ; $5099: $00
	nop                                              ; $509a: $00
	nop                                              ; $509b: $00
	nop                                              ; $509c: $00
	nop                                              ; $509d: $00
	nop                                              ; $509e: $00
	nop                                              ; $509f: $00
	nop                                              ; $50a0: $00
	nop                                              ; $50a1: $00
	nop                                              ; $50a2: $00
	nop                                              ; $50a3: $00
	nop                                              ; $50a4: $00
	nop                                              ; $50a5: $00
	nop                                              ; $50a6: $00
	nop                                              ; $50a7: $00
	nop                                              ; $50a8: $00
	nop                                              ; $50a9: $00
	nop                                              ; $50aa: $00
	nop                                              ; $50ab: $00
	nop                                              ; $50ac: $00
	nop                                              ; $50ad: $00
	nop                                              ; $50ae: $00
	nop                                              ; $50af: $00
	nop                                              ; $50b0: $00
	nop                                              ; $50b1: $00
	nop                                              ; $50b2: $00
	nop                                              ; $50b3: $00
	nop                                              ; $50b4: $00
	nop                                              ; $50b5: $00
	nop                                              ; $50b6: $00
	nop                                              ; $50b7: $00
	nop                                              ; $50b8: $00
	nop                                              ; $50b9: $00
	nop                                              ; $50ba: $00
	nop                                              ; $50bb: $00
	nop                                              ; $50bc: $00
	nop                                              ; $50bd: $00
	nop                                              ; $50be: $00
	nop                                              ; $50bf: $00
	nop                                              ; $50c0: $00
	nop                                              ; $50c1: $00
	nop                                              ; $50c2: $00
	nop                                              ; $50c3: $00
	nop                                              ; $50c4: $00
	nop                                              ; $50c5: $00
	nop                                              ; $50c6: $00
	nop                                              ; $50c7: $00
	nop                                              ; $50c8: $00
	nop                                              ; $50c9: $00
	nop                                              ; $50ca: $00
	nop                                              ; $50cb: $00
	nop                                              ; $50cc: $00
	nop                                              ; $50cd: $00
	nop                                              ; $50ce: $00
	nop                                              ; $50cf: $00
	nop                                              ; $50d0: $00
	nop                                              ; $50d1: $00
	nop                                              ; $50d2: $00
	nop                                              ; $50d3: $00
	nop                                              ; $50d4: $00
	nop                                              ; $50d5: $00
	nop                                              ; $50d6: $00
	nop                                              ; $50d7: $00
	nop                                              ; $50d8: $00
	nop                                              ; $50d9: $00
	nop                                              ; $50da: $00
	nop                                              ; $50db: $00
	nop                                              ; $50dc: $00
	nop                                              ; $50dd: $00
	nop                                              ; $50de: $00
	nop                                              ; $50df: $00
	nop                                              ; $50e0: $00
	nop                                              ; $50e1: $00
	nop                                              ; $50e2: $00
	nop                                              ; $50e3: $00
	nop                                              ; $50e4: $00
	nop                                              ; $50e5: $00
	nop                                              ; $50e6: $00
	nop                                              ; $50e7: $00
	nop                                              ; $50e8: $00
	nop                                              ; $50e9: $00
	nop                                              ; $50ea: $00
	nop                                              ; $50eb: $00
	nop                                              ; $50ec: $00
	nop                                              ; $50ed: $00
	nop                                              ; $50ee: $00
	nop                                              ; $50ef: $00
	nop                                              ; $50f0: $00
	nop                                              ; $50f1: $00
	nop                                              ; $50f2: $00
	nop                                              ; $50f3: $00
	nop                                              ; $50f4: $00
	nop                                              ; $50f5: $00
	nop                                              ; $50f6: $00
	nop                                              ; $50f7: $00
	nop                                              ; $50f8: $00
	nop                                              ; $50f9: $00
	nop                                              ; $50fa: $00
	nop                                              ; $50fb: $00
	nop                                              ; $50fc: $00
	nop                                              ; $50fd: $00
	nop                                              ; $50fe: $00
	nop                                              ; $50ff: $00
	nop                                              ; $5100: $00
	nop                                              ; $5101: $00
	nop                                              ; $5102: $00
	nop                                              ; $5103: $00
	nop                                              ; $5104: $00
	nop                                              ; $5105: $00
	nop                                              ; $5106: $00
	nop                                              ; $5107: $00
	nop                                              ; $5108: $00
	nop                                              ; $5109: $00
	nop                                              ; $510a: $00
	nop                                              ; $510b: $00
	nop                                              ; $510c: $00
	nop                                              ; $510d: $00
	nop                                              ; $510e: $00
	nop                                              ; $510f: $00
	nop                                              ; $5110: $00
	nop                                              ; $5111: $00
	nop                                              ; $5112: $00
	nop                                              ; $5113: $00
	nop                                              ; $5114: $00
	nop                                              ; $5115: $00
	nop                                              ; $5116: $00
	nop                                              ; $5117: $00
	nop                                              ; $5118: $00
	nop                                              ; $5119: $00
	nop                                              ; $511a: $00
	nop                                              ; $511b: $00
	nop                                              ; $511c: $00
	nop                                              ; $511d: $00
	nop                                              ; $511e: $00
	nop                                              ; $511f: $00
	nop                                              ; $5120: $00
	nop                                              ; $5121: $00
	nop                                              ; $5122: $00
	nop                                              ; $5123: $00
	nop                                              ; $5124: $00
	rlca                                             ; $5125: $07
	nop                                              ; $5126: $00
	nop                                              ; $5127: $00
	nop                                              ; $5128: $00
	nop                                              ; $5129: $00
	nop                                              ; $512a: $00
	nop                                              ; $512b: $00
	nop                                              ; $512c: $00
	rrca                                             ; $512d: $0f
	nop                                              ; $512e: $00
	nop                                              ; $512f: $00
	nop                                              ; $5130: $00
	nop                                              ; $5131: $00
	nop                                              ; $5132: $00
	nop                                              ; $5133: $00
	nop                                              ; $5134: $00
	nop                                              ; $5135: $00
	nop                                              ; $5136: $00
	nop                                              ; $5137: $00
	nop                                              ; $5138: $00
	nop                                              ; $5139: $00
	nop                                              ; $513a: $00
	ld   bc, $0700                                   ; $513b: $01 $00 $07
	nop                                              ; $513e: $00
	nop                                              ; $513f: $00
	nop                                              ; $5140: $00
	nop                                              ; $5141: $00
	nop                                              ; $5142: $00
	dec  c                                           ; $5143: $0d
	nop                                              ; $5144: $00
	db   $fd                                         ; $5145: $fd
	nop                                              ; $5146: $00
	dec  c                                           ; $5147: $0d
	nop                                              ; $5148: $00
	nop                                              ; $5149: $00
	nop                                              ; $514a: $00
	nop                                              ; $514b: $00
	nop                                              ; $514c: $00
	db   $fc                                         ; $514d: $fc
	nop                                              ; $514e: $00
	ld   h, b                                        ; $514f: $60
	nop                                              ; $5150: $00
	ld   h, b                                        ; $5151: $60
	nop                                              ; $5152: $00
	ld   h, b                                        ; $5153: $60
	nop                                              ; $5154: $00
	ld   h, e                                        ; $5155: $63
	nop                                              ; $5156: $00
	ld   h, b                                        ; $5157: $60
	nop                                              ; $5158: $00
	ldh  [rP1], a                                    ; $5159: $e0 $00
	ret  nz                                          ; $515b: $c0

	nop                                              ; $515c: $00
	nop                                              ; $515d: $00
	nop                                              ; $515e: $00
	nop                                              ; $515f: $00
	nop                                              ; $5160: $00
	nop                                              ; $5161: $00
	nop                                              ; $5162: $00
	add  b                                           ; $5163: $80
	nop                                              ; $5164: $00
	add  [hl]                                        ; $5165: $86
	nop                                              ; $5166: $00
	add  [hl]                                        ; $5167: $86
	nop                                              ; $5168: $00
	ld   b, $00                                      ; $5169: $06 $00
	ld   b, $00                                      ; $516b: $06 $00
	ld   b, $00                                      ; $516d: $06 $00
	ld   b, $00                                      ; $516f: $06 $00
	ld   [hl], $00                                   ; $5171: $36 $00
	and  $00                                         ; $5173: $e6 $00
	add  $00                                         ; $5175: $c6 $00
	add  $00                                         ; $5177: $c6 $00
	add  $00                                         ; $5179: $c6 $00
	add  $00                                         ; $517b: $c6 $00
	rst  ToBoot                                         ; $517d: $c7
	nop                                              ; $517e: $00
	nop                                              ; $517f: $00
	nop                                              ; $5180: $00
	nop                                              ; $5181: $00
	nop                                              ; $5182: $00
	nop                                              ; $5183: $00
	nop                                              ; $5184: $00
	inc  bc                                          ; $5185: $03
	nop                                              ; $5186: $00
	inc  bc                                          ; $5187: $03
	nop                                              ; $5188: $00
	inc  bc                                          ; $5189: $03
	nop                                              ; $518a: $00
	inc  bc                                          ; $518b: $03
	nop                                              ; $518c: $00
	inc  bc                                          ; $518d: $03
	nop                                              ; $518e: $00
	ld   [bc], a                                     ; $518f: $02
	nop                                              ; $5190: $00
	inc  b                                           ; $5191: $04
	nop                                              ; $5192: $00
	nop                                              ; $5193: $00
	nop                                              ; $5194: $00
	jr   jr_032_5197                                 ; $5195: $18 $00

jr_032_5197:
	jr   jr_032_5199                                 ; $5197: $18 $00

jr_032_5199:
	jr   nc, jr_032_519b                             ; $5199: $30 $00

jr_032_519b:
	ldh  [rP1], a                                    ; $519b: $e0 $00
	add  e                                           ; $519d: $83
	nop                                              ; $519e: $00
	nop                                              ; $519f: $00
	nop                                              ; $51a0: $00
	nop                                              ; $51a1: $00
	nop                                              ; $51a2: $00
	nop                                              ; $51a3: $00
	nop                                              ; $51a4: $00
	db   $fc                                         ; $51a5: $fc
	nop                                              ; $51a6: $00
	inc  c                                           ; $51a7: $0c
	nop                                              ; $51a8: $00
	inc  c                                           ; $51a9: $0c
	nop                                              ; $51aa: $00
	inc  c                                           ; $51ab: $0c
	nop                                              ; $51ac: $00
	inc  c                                           ; $51ad: $0c
	nop                                              ; $51ae: $00
	inc  c                                           ; $51af: $0c
	nop                                              ; $51b0: $00
	dec  c                                           ; $51b1: $0d
	nop                                              ; $51b2: $00
	inc  c                                           ; $51b3: $0c
	nop                                              ; $51b4: $00
	inc  e                                           ; $51b5: $1c
	nop                                              ; $51b6: $00
	jr   jr_032_51b9                                 ; $51b7: $18 $00

jr_032_51b9:
	jr   c, jr_032_51bb                              ; $51b9: $38 $00

jr_032_51bb:
	ld   [hl], b                                     ; $51bb: $70
	nop                                              ; $51bc: $00
	ret  nz                                          ; $51bd: $c0

	nop                                              ; $51be: $00
	nop                                              ; $51bf: $00
	nop                                              ; $51c0: $00
	nop                                              ; $51c1: $00
	nop                                              ; $51c2: $00
	nop                                              ; $51c3: $00
	nop                                              ; $51c4: $00
	ld   a, a                                        ; $51c5: $7f
	nop                                              ; $51c6: $00
	ld   h, c                                        ; $51c7: $61
	nop                                              ; $51c8: $00
	ld   h, c                                        ; $51c9: $61
	nop                                              ; $51ca: $00
	ld   h, c                                        ; $51cb: $61
	nop                                              ; $51cc: $00
	ld   h, c                                        ; $51cd: $61
	nop                                              ; $51ce: $00
	pop  de                                          ; $51cf: $d1
	nop                                              ; $51d0: $00
	adc  a                                           ; $51d1: $8f
	nop                                              ; $51d2: $00
	inc  bc                                          ; $51d3: $03
	nop                                              ; $51d4: $00
	inc  bc                                          ; $51d5: $03
	nop                                              ; $51d6: $00
	rlca                                             ; $51d7: $07
	nop                                              ; $51d8: $00
	ld   c, $00                                      ; $51d9: $0e $00
	inc  e                                           ; $51db: $1c
	nop                                              ; $51dc: $00
	ld   [hl], b                                     ; $51dd: $70
	nop                                              ; $51de: $00
	nop                                              ; $51df: $00
	nop                                              ; $51e0: $00
	nop                                              ; $51e1: $00
	nop                                              ; $51e2: $00
	nop                                              ; $51e3: $00
	nop                                              ; $51e4: $00
	add  b                                           ; $51e5: $80
	nop                                              ; $51e6: $00
	add  b                                           ; $51e7: $80
	nop                                              ; $51e8: $00
	add  b                                           ; $51e9: $80
	nop                                              ; $51ea: $00
	add  b                                           ; $51eb: $80
	nop                                              ; $51ec: $00
	add  b                                           ; $51ed: $80
	nop                                              ; $51ee: $00
	add  b                                           ; $51ef: $80
	nop                                              ; $51f0: $00
	sbc  a                                           ; $51f1: $9f
	nop                                              ; $51f2: $00
	add  b                                           ; $51f3: $80
	nop                                              ; $51f4: $00
	nop                                              ; $51f5: $00
	nop                                              ; $51f6: $00
	nop                                              ; $51f7: $00
	nop                                              ; $51f8: $00
	nop                                              ; $51f9: $00
	nop                                              ; $51fa: $00
	nop                                              ; $51fb: $00
	nop                                              ; $51fc: $00
	nop                                              ; $51fd: $00
	nop                                              ; $51fe: $00
	nop                                              ; $51ff: $00
	nop                                              ; $5200: $00
	nop                                              ; $5201: $00
	nop                                              ; $5202: $00
	nop                                              ; $5203: $00
	nop                                              ; $5204: $00
	nop                                              ; $5205: $00
	nop                                              ; $5206: $00
	nop                                              ; $5207: $00
	nop                                              ; $5208: $00
	nop                                              ; $5209: $00
	nop                                              ; $520a: $00
	nop                                              ; $520b: $00
	nop                                              ; $520c: $00
	nop                                              ; $520d: $00
	nop                                              ; $520e: $00
	nop                                              ; $520f: $00
	nop                                              ; $5210: $00
	nop                                              ; $5211: $00
	nop                                              ; $5212: $00
	nop                                              ; $5213: $00
	nop                                              ; $5214: $00
	nop                                              ; $5215: $00
	nop                                              ; $5216: $00
	nop                                              ; $5217: $00
	nop                                              ; $5218: $00
	nop                                              ; $5219: $00
	nop                                              ; $521a: $00
	nop                                              ; $521b: $00
	nop                                              ; $521c: $00
	nop                                              ; $521d: $00
	nop                                              ; $521e: $00
	nop                                              ; $521f: $00
	nop                                              ; $5220: $00
	nop                                              ; $5221: $00
	nop                                              ; $5222: $00
	nop                                              ; $5223: $00
	nop                                              ; $5224: $00
	nop                                              ; $5225: $00
	nop                                              ; $5226: $00
	nop                                              ; $5227: $00
	nop                                              ; $5228: $00
	nop                                              ; $5229: $00
	nop                                              ; $522a: $00
	nop                                              ; $522b: $00
	nop                                              ; $522c: $00
	nop                                              ; $522d: $00
	nop                                              ; $522e: $00
	nop                                              ; $522f: $00
	nop                                              ; $5230: $00
	nop                                              ; $5231: $00
	nop                                              ; $5232: $00
	nop                                              ; $5233: $00
	nop                                              ; $5234: $00
	nop                                              ; $5235: $00
	nop                                              ; $5236: $00
	nop                                              ; $5237: $00
	nop                                              ; $5238: $00
	nop                                              ; $5239: $00
	nop                                              ; $523a: $00
	nop                                              ; $523b: $00
	nop                                              ; $523c: $00
	nop                                              ; $523d: $00
	nop                                              ; $523e: $00
	nop                                              ; $523f: $00
	nop                                              ; $5240: $00
	nop                                              ; $5241: $00
	nop                                              ; $5242: $00
	nop                                              ; $5243: $00
	nop                                              ; $5244: $00
	nop                                              ; $5245: $00
	nop                                              ; $5246: $00
	nop                                              ; $5247: $00
	nop                                              ; $5248: $00
	nop                                              ; $5249: $00
	nop                                              ; $524a: $00
	nop                                              ; $524b: $00
	nop                                              ; $524c: $00
	nop                                              ; $524d: $00
	nop                                              ; $524e: $00
	nop                                              ; $524f: $00
	nop                                              ; $5250: $00
	nop                                              ; $5251: $00
	nop                                              ; $5252: $00
	nop                                              ; $5253: $00
	nop                                              ; $5254: $00
	nop                                              ; $5255: $00
	nop                                              ; $5256: $00
	nop                                              ; $5257: $00
	nop                                              ; $5258: $00
	nop                                              ; $5259: $00
	nop                                              ; $525a: $00
	nop                                              ; $525b: $00
	nop                                              ; $525c: $00
	nop                                              ; $525d: $00
	nop                                              ; $525e: $00
	nop                                              ; $525f: $00
	nop                                              ; $5260: $00
	nop                                              ; $5261: $00
	nop                                              ; $5262: $00
	nop                                              ; $5263: $00
	nop                                              ; $5264: $00
	nop                                              ; $5265: $00
	nop                                              ; $5266: $00
	nop                                              ; $5267: $00
	nop                                              ; $5268: $00
	nop                                              ; $5269: $00
	nop                                              ; $526a: $00
	nop                                              ; $526b: $00
	nop                                              ; $526c: $00
	nop                                              ; $526d: $00
	nop                                              ; $526e: $00
	nop                                              ; $526f: $00
	nop                                              ; $5270: $00
	nop                                              ; $5271: $00
	nop                                              ; $5272: $00
	nop                                              ; $5273: $00
	nop                                              ; $5274: $00
	nop                                              ; $5275: $00
	nop                                              ; $5276: $00
	nop                                              ; $5277: $00
	nop                                              ; $5278: $00
	nop                                              ; $5279: $00
	nop                                              ; $527a: $00
	nop                                              ; $527b: $00
	nop                                              ; $527c: $00
	nop                                              ; $527d: $00
	nop                                              ; $527e: $00
	nop                                              ; $527f: $00
	nop                                              ; $5280: $00
	nop                                              ; $5281: $00
	nop                                              ; $5282: $00
	nop                                              ; $5283: $00
	nop                                              ; $5284: $00
	nop                                              ; $5285: $00
	nop                                              ; $5286: $00
	nop                                              ; $5287: $00
	nop                                              ; $5288: $00
	nop                                              ; $5289: $00
	nop                                              ; $528a: $00
	nop                                              ; $528b: $00
	nop                                              ; $528c: $00
	nop                                              ; $528d: $00
	nop                                              ; $528e: $00
	nop                                              ; $528f: $00
	nop                                              ; $5290: $00
	nop                                              ; $5291: $00
	nop                                              ; $5292: $00
	nop                                              ; $5293: $00
	nop                                              ; $5294: $00
	nop                                              ; $5295: $00
	nop                                              ; $5296: $00
	nop                                              ; $5297: $00
	nop                                              ; $5298: $00
	nop                                              ; $5299: $00
	nop                                              ; $529a: $00
	nop                                              ; $529b: $00
	nop                                              ; $529c: $00
	nop                                              ; $529d: $00
	nop                                              ; $529e: $00
	nop                                              ; $529f: $00
	nop                                              ; $52a0: $00
	nop                                              ; $52a1: $00
	nop                                              ; $52a2: $00
	nop                                              ; $52a3: $00
	nop                                              ; $52a4: $00
	nop                                              ; $52a5: $00
	nop                                              ; $52a6: $00
	nop                                              ; $52a7: $00
	nop                                              ; $52a8: $00
	nop                                              ; $52a9: $00
	nop                                              ; $52aa: $00
	nop                                              ; $52ab: $00
	nop                                              ; $52ac: $00
	nop                                              ; $52ad: $00
	nop                                              ; $52ae: $00
	nop                                              ; $52af: $00
	nop                                              ; $52b0: $00
	nop                                              ; $52b1: $00
	nop                                              ; $52b2: $00
	nop                                              ; $52b3: $00
	nop                                              ; $52b4: $00
	nop                                              ; $52b5: $00
	nop                                              ; $52b6: $00
	nop                                              ; $52b7: $00
	nop                                              ; $52b8: $00
	nop                                              ; $52b9: $00
	nop                                              ; $52ba: $00
	nop                                              ; $52bb: $00
	nop                                              ; $52bc: $00
	nop                                              ; $52bd: $00
	nop                                              ; $52be: $00
	nop                                              ; $52bf: $00
	nop                                              ; $52c0: $00
	nop                                              ; $52c1: $00
	nop                                              ; $52c2: $00
	nop                                              ; $52c3: $00
	nop                                              ; $52c4: $00
	nop                                              ; $52c5: $00
	nop                                              ; $52c6: $00
	nop                                              ; $52c7: $00
	nop                                              ; $52c8: $00
	nop                                              ; $52c9: $00
	nop                                              ; $52ca: $00
	nop                                              ; $52cb: $00
	nop                                              ; $52cc: $00
	nop                                              ; $52cd: $00
	nop                                              ; $52ce: $00
	nop                                              ; $52cf: $00
	nop                                              ; $52d0: $00
	nop                                              ; $52d1: $00
	nop                                              ; $52d2: $00
	nop                                              ; $52d3: $00
	nop                                              ; $52d4: $00
	nop                                              ; $52d5: $00
	nop                                              ; $52d6: $00
	nop                                              ; $52d7: $00
	nop                                              ; $52d8: $00
	nop                                              ; $52d9: $00
	nop                                              ; $52da: $00
	nop                                              ; $52db: $00
	nop                                              ; $52dc: $00
	nop                                              ; $52dd: $00
	nop                                              ; $52de: $00
	nop                                              ; $52df: $00
	nop                                              ; $52e0: $00
	nop                                              ; $52e1: $00
	nop                                              ; $52e2: $00
	nop                                              ; $52e3: $00
	nop                                              ; $52e4: $00
	nop                                              ; $52e5: $00
	nop                                              ; $52e6: $00
	nop                                              ; $52e7: $00
	nop                                              ; $52e8: $00
	nop                                              ; $52e9: $00
	nop                                              ; $52ea: $00
	nop                                              ; $52eb: $00
	nop                                              ; $52ec: $00
	nop                                              ; $52ed: $00
	nop                                              ; $52ee: $00
	nop                                              ; $52ef: $00
	nop                                              ; $52f0: $00
	nop                                              ; $52f1: $00
	nop                                              ; $52f2: $00
	nop                                              ; $52f3: $00
	nop                                              ; $52f4: $00
	nop                                              ; $52f5: $00
	nop                                              ; $52f6: $00
	nop                                              ; $52f7: $00
	nop                                              ; $52f8: $00
	nop                                              ; $52f9: $00
	nop                                              ; $52fa: $00
	nop                                              ; $52fb: $00
	nop                                              ; $52fc: $00
	nop                                              ; $52fd: $00
	nop                                              ; $52fe: $00
	nop                                              ; $52ff: $00
	nop                                              ; $5300: $00
	nop                                              ; $5301: $00
	nop                                              ; $5302: $00
	nop                                              ; $5303: $00
	nop                                              ; $5304: $00
	nop                                              ; $5305: $00
	nop                                              ; $5306: $00
	nop                                              ; $5307: $00
	nop                                              ; $5308: $00
	nop                                              ; $5309: $00
	nop                                              ; $530a: $00
	nop                                              ; $530b: $00
	nop                                              ; $530c: $00
	nop                                              ; $530d: $00
	nop                                              ; $530e: $00
	nop                                              ; $530f: $00
	nop                                              ; $5310: $00
	nop                                              ; $5311: $00
	nop                                              ; $5312: $00
	nop                                              ; $5313: $00
	nop                                              ; $5314: $00
	nop                                              ; $5315: $00
	nop                                              ; $5316: $00
	nop                                              ; $5317: $00
	nop                                              ; $5318: $00
	nop                                              ; $5319: $00
	nop                                              ; $531a: $00
	nop                                              ; $531b: $00
	nop                                              ; $531c: $00
	nop                                              ; $531d: $00
	nop                                              ; $531e: $00
	nop                                              ; $531f: $00
	nop                                              ; $5320: $00
	nop                                              ; $5321: $00
	nop                                              ; $5322: $00
	inc  c                                           ; $5323: $0c
	nop                                              ; $5324: $00
	inc  c                                           ; $5325: $0c
	nop                                              ; $5326: $00
	ld   a, a                                        ; $5327: $7f
	nop                                              ; $5328: $00
	nop                                              ; $5329: $00
	nop                                              ; $532a: $00
	nop                                              ; $532b: $00
	nop                                              ; $532c: $00
	ld   a, $00                                      ; $532d: $3e $00
	nop                                              ; $532f: $00
	nop                                              ; $5330: $00
	ld   a, $00                                      ; $5331: $3e $00
	nop                                              ; $5333: $00
	nop                                              ; $5334: $00
	nop                                              ; $5335: $00
	nop                                              ; $5336: $00
	ld   a, $00                                      ; $5337: $3e $00
	ld   [hl], $00                                   ; $5339: $36 $00
	ld   [hl], $00                                   ; $533b: $36 $00
	ld   a, $00                                      ; $533d: $3e $00
	nop                                              ; $533f: $00
	nop                                              ; $5340: $00
	nop                                              ; $5341: $00
	nop                                              ; $5342: $00
	nop                                              ; $5343: $00
	nop                                              ; $5344: $00
	db   $fc                                         ; $5345: $fc
	nop                                              ; $5346: $00
	call z, $cc00                                    ; $5347: $cc $00 $cc
	nop                                              ; $534a: $00
	call z, $8700                                    ; $534b: $cc $00 $87
	nop                                              ; $534e: $00
	nop                                              ; $534f: $00
	nop                                              ; $5350: $00
	db   $fc                                         ; $5351: $fc
	nop                                              ; $5352: $00
	ld   l, h                                        ; $5353: $6c
	nop                                              ; $5354: $00
	ld   l, h                                        ; $5355: $6c
	nop                                              ; $5356: $00
	jr   c, jr_032_5359                              ; $5357: $38 $00

jr_032_5359:
	jr   c, jr_032_535b                              ; $5359: $38 $00

jr_032_535b:
	ld   l, h                                        ; $535b: $6c
	nop                                              ; $535c: $00
	add  a                                           ; $535d: $87
	nop                                              ; $535e: $00
	nop                                              ; $535f: $00
	nop                                              ; $5360: $00
	nop                                              ; $5361: $00
	nop                                              ; $5362: $00
	ld   b, $00                                      ; $5363: $06 $00
	ld   b, $00                                      ; $5365: $06 $00
	rst  $38                                         ; $5367: $ff
	nop                                              ; $5368: $00
	ret  nz                                          ; $5369: $c0

	nop                                              ; $536a: $00
	ret  nz                                          ; $536b: $c0

	nop                                              ; $536c: $00
	ccf                                              ; $536d: $3f
	nop                                              ; $536e: $00
	ld   b, $00                                      ; $536f: $06 $00
	ld   b, $00                                      ; $5371: $06 $00
	ld   b, $00                                      ; $5373: $06 $00
	scf                                              ; $5375: $37
	nop                                              ; $5376: $00
	ld   [hl], $00                                   ; $5377: $36 $00
	ld   a, $00                                      ; $5379: $3e $00
	ld   l, $00                                      ; $537b: $2e $00
	ld   b, e                                        ; $537d: $43
	nop                                              ; $537e: $00
	nop                                              ; $537f: $00
	nop                                              ; $5380: $00
	nop                                              ; $5381: $00
	nop                                              ; $5382: $00
	nop                                              ; $5383: $00
	nop                                              ; $5384: $00
	nop                                              ; $5385: $00
	nop                                              ; $5386: $00
	ldh  a, [rP1]                                    ; $5387: $f0 $00
	jr   nc, jr_032_538b                             ; $5389: $30 $00

jr_032_538b:
	jr   nc, jr_032_538d                             ; $538b: $30 $00

jr_032_538d:
	ret  nz                                          ; $538d: $c0

	nop                                              ; $538e: $00
	nop                                              ; $538f: $00
	nop                                              ; $5390: $00
	inc  c                                           ; $5391: $0c
	nop                                              ; $5392: $00
	inc  c                                           ; $5393: $0c
	nop                                              ; $5394: $00
	ret  nz                                          ; $5395: $c0

	nop                                              ; $5396: $00
	nop                                              ; $5397: $00
	nop                                              ; $5398: $00
	nop                                              ; $5399: $00
	nop                                              ; $539a: $00
	nop                                              ; $539b: $00
	nop                                              ; $539c: $00
	pop  af                                          ; $539d: $f1
	nop                                              ; $539e: $00
	nop                                              ; $539f: $00
	nop                                              ; $53a0: $00
	nop                                              ; $53a1: $00
	nop                                              ; $53a2: $00
	nop                                              ; $53a3: $00
	nop                                              ; $53a4: $00
	cp   $00                                         ; $53a5: $fe $00
	rst  $10                                         ; $53a7: $d7
	nop                                              ; $53a8: $00
	cp   $00                                         ; $53a9: $fe $00
	call z, $f800                                    ; $53ab: $cc $00 $f8
	nop                                              ; $53ae: $00
	ret  nc                                          ; $53af: $d0

	nop                                              ; $53b0: $00
	ei                                               ; $53b1: $fb
	nop                                              ; $53b2: $00
	nop                                              ; $53b3: $00
	nop                                              ; $53b4: $00
	rst  $38                                         ; $53b5: $ff
	nop                                              ; $53b6: $00
	push de                                          ; $53b7: $d5
	nop                                              ; $53b8: $00
	push de                                          ; $53b9: $d5
	nop                                              ; $53ba: $00
	push de                                          ; $53bb: $d5
	nop                                              ; $53bc: $00
	rst  $38                                         ; $53bd: $ff
	nop                                              ; $53be: $00
	nop                                              ; $53bf: $00
	nop                                              ; $53c0: $00
	nop                                              ; $53c1: $00
	nop                                              ; $53c2: $00
	ld   b, $00                                      ; $53c3: $06 $00
	ld   b, $00                                      ; $53c5: $06 $00
	adc  $00                                         ; $53c7: $ce $00
	dec  c                                           ; $53c9: $0d
	nop                                              ; $53ca: $00
	inc  e                                           ; $53cb: $1c
	nop                                              ; $53cc: $00
	dec  a                                           ; $53cd: $3d
	nop                                              ; $53ce: $00
	dec  c                                           ; $53cf: $0d
	nop                                              ; $53d0: $00
	call $0d00                                       ; $53d1: $cd $00 $0d
	nop                                              ; $53d4: $00
	adc  l                                           ; $53d5: $8d
	nop                                              ; $53d6: $00
	adc  l                                           ; $53d7: $8d
	nop                                              ; $53d8: $00
	adc  l                                           ; $53d9: $8d
	nop                                              ; $53da: $00
	adc  l                                           ; $53db: $8d
	nop                                              ; $53dc: $00
	call $0000                                      ; $53dd: $cd $00 $00
	nop                                              ; $53e0: $00
	nop                                              ; $53e1: $00
	nop                                              ; $53e2: $00
	ret  nz                                          ; $53e3: $c0

	nop                                              ; $53e4: $00
	rst  $38                                         ; $53e5: $ff
	nop                                              ; $53e6: $00
	add  $00                                         ; $53e7: $c6 $00
	and  [hl]                                        ; $53e9: $a6
	nop                                              ; $53ea: $00
	inc  a                                           ; $53eb: $3c
	nop                                              ; $53ec: $00
	inc  e                                           ; $53ed: $1c
	nop                                              ; $53ee: $00
	ld   [hl], a                                     ; $53ef: $77
	nop                                              ; $53f0: $00
	inc  c                                           ; $53f1: $0c
	nop                                              ; $53f2: $00
	jr   c, jr_032_53f5                              ; $53f3: $38 $00

jr_032_53f5:
	ld   h, [hl]                                     ; $53f5: $66
	nop                                              ; $53f6: $00
	inc  e                                           ; $53f7: $1c
	nop                                              ; $53f8: $00
	ld   [hl], e                                     ; $53f9: $73
	nop                                              ; $53fa: $00
	ld   c, $00                                      ; $53fb: $0e $00
	ld   a, b                                        ; $53fd: $78
	nop                                              ; $53fe: $00
	nop                                              ; $53ff: $00
	nop                                              ; $5400: $00
	nop                                              ; $5401: $00
	nop                                              ; $5402: $00
	nop                                              ; $5403: $00
	nop                                              ; $5404: $00
	nop                                              ; $5405: $00
	nop                                              ; $5406: $00
	nop                                              ; $5407: $00
	nop                                              ; $5408: $00
	nop                                              ; $5409: $00
	nop                                              ; $540a: $00
	nop                                              ; $540b: $00
	nop                                              ; $540c: $00
	nop                                              ; $540d: $00
	nop                                              ; $540e: $00
	nop                                              ; $540f: $00
	nop                                              ; $5410: $00
	nop                                              ; $5411: $00
	nop                                              ; $5412: $00
	nop                                              ; $5413: $00
	nop                                              ; $5414: $00
	nop                                              ; $5415: $00
	nop                                              ; $5416: $00
	nop                                              ; $5417: $00
	nop                                              ; $5418: $00
	nop                                              ; $5419: $00
	nop                                              ; $541a: $00
	nop                                              ; $541b: $00
	nop                                              ; $541c: $00
	nop                                              ; $541d: $00
	nop                                              ; $541e: $00
	nop                                              ; $541f: $00
	nop                                              ; $5420: $00
	nop                                              ; $5421: $00
	nop                                              ; $5422: $00
	nop                                              ; $5423: $00
	nop                                              ; $5424: $00
	nop                                              ; $5425: $00
	nop                                              ; $5426: $00
	nop                                              ; $5427: $00
	nop                                              ; $5428: $00
	nop                                              ; $5429: $00
	nop                                              ; $542a: $00
	nop                                              ; $542b: $00
	nop                                              ; $542c: $00
	nop                                              ; $542d: $00
	nop                                              ; $542e: $00
	nop                                              ; $542f: $00
	nop                                              ; $5430: $00
	nop                                              ; $5431: $00
	nop                                              ; $5432: $00
	nop                                              ; $5433: $00
	nop                                              ; $5434: $00
	nop                                              ; $5435: $00
	nop                                              ; $5436: $00
	nop                                              ; $5437: $00
	nop                                              ; $5438: $00
	nop                                              ; $5439: $00
	nop                                              ; $543a: $00
	nop                                              ; $543b: $00
	nop                                              ; $543c: $00
	nop                                              ; $543d: $00
	nop                                              ; $543e: $00
	nop                                              ; $543f: $00
	nop                                              ; $5440: $00
	nop                                              ; $5441: $00
	nop                                              ; $5442: $00
	nop                                              ; $5443: $00
	nop                                              ; $5444: $00
	nop                                              ; $5445: $00
	nop                                              ; $5446: $00
	nop                                              ; $5447: $00
	nop                                              ; $5448: $00
	nop                                              ; $5449: $00
	nop                                              ; $544a: $00
	nop                                              ; $544b: $00
	nop                                              ; $544c: $00
	nop                                              ; $544d: $00
	nop                                              ; $544e: $00
	nop                                              ; $544f: $00
	nop                                              ; $5450: $00
	nop                                              ; $5451: $00
	nop                                              ; $5452: $00
	nop                                              ; $5453: $00
	nop                                              ; $5454: $00
	nop                                              ; $5455: $00
	nop                                              ; $5456: $00
	nop                                              ; $5457: $00
	nop                                              ; $5458: $00
	nop                                              ; $5459: $00
	nop                                              ; $545a: $00
	nop                                              ; $545b: $00
	nop                                              ; $545c: $00
	nop                                              ; $545d: $00
	nop                                              ; $545e: $00
	nop                                              ; $545f: $00
	nop                                              ; $5460: $00
	nop                                              ; $5461: $00
	nop                                              ; $5462: $00
	nop                                              ; $5463: $00
	nop                                              ; $5464: $00
	nop                                              ; $5465: $00
	nop                                              ; $5466: $00
	nop                                              ; $5467: $00
	nop                                              ; $5468: $00
	nop                                              ; $5469: $00
	nop                                              ; $546a: $00
	nop                                              ; $546b: $00
	nop                                              ; $546c: $00
	nop                                              ; $546d: $00
	nop                                              ; $546e: $00
	nop                                              ; $546f: $00
	nop                                              ; $5470: $00
	nop                                              ; $5471: $00
	nop                                              ; $5472: $00
	nop                                              ; $5473: $00
	nop                                              ; $5474: $00
	nop                                              ; $5475: $00
	nop                                              ; $5476: $00
	nop                                              ; $5477: $00
	nop                                              ; $5478: $00
	nop                                              ; $5479: $00
	nop                                              ; $547a: $00
	nop                                              ; $547b: $00
	nop                                              ; $547c: $00
	nop                                              ; $547d: $00
	nop                                              ; $547e: $00
	nop                                              ; $547f: $00
	nop                                              ; $5480: $00
	nop                                              ; $5481: $00
	nop                                              ; $5482: $00
	nop                                              ; $5483: $00
	nop                                              ; $5484: $00
	nop                                              ; $5485: $00
	nop                                              ; $5486: $00
	nop                                              ; $5487: $00
	nop                                              ; $5488: $00
	nop                                              ; $5489: $00
	nop                                              ; $548a: $00
	nop                                              ; $548b: $00
	nop                                              ; $548c: $00
	nop                                              ; $548d: $00
	nop                                              ; $548e: $00
	nop                                              ; $548f: $00
	nop                                              ; $5490: $00
	nop                                              ; $5491: $00
	nop                                              ; $5492: $00
	nop                                              ; $5493: $00
	nop                                              ; $5494: $00
	nop                                              ; $5495: $00
	nop                                              ; $5496: $00
	nop                                              ; $5497: $00
	nop                                              ; $5498: $00
	nop                                              ; $5499: $00
	nop                                              ; $549a: $00
	nop                                              ; $549b: $00
	nop                                              ; $549c: $00
	nop                                              ; $549d: $00
	nop                                              ; $549e: $00
	nop                                              ; $549f: $00
	nop                                              ; $54a0: $00
	nop                                              ; $54a1: $00
	nop                                              ; $54a2: $00
	nop                                              ; $54a3: $00
	nop                                              ; $54a4: $00
	nop                                              ; $54a5: $00
	nop                                              ; $54a6: $00
	nop                                              ; $54a7: $00
	nop                                              ; $54a8: $00
	nop                                              ; $54a9: $00
	nop                                              ; $54aa: $00
	nop                                              ; $54ab: $00
	nop                                              ; $54ac: $00
	nop                                              ; $54ad: $00
	nop                                              ; $54ae: $00
	nop                                              ; $54af: $00
	nop                                              ; $54b0: $00
	nop                                              ; $54b1: $00
	nop                                              ; $54b2: $00
	nop                                              ; $54b3: $00
	nop                                              ; $54b4: $00
	nop                                              ; $54b5: $00
	nop                                              ; $54b6: $00
	nop                                              ; $54b7: $00
	nop                                              ; $54b8: $00
	nop                                              ; $54b9: $00
	nop                                              ; $54ba: $00
	nop                                              ; $54bb: $00
	nop                                              ; $54bc: $00
	nop                                              ; $54bd: $00
	nop                                              ; $54be: $00
	nop                                              ; $54bf: $00
	nop                                              ; $54c0: $00
	nop                                              ; $54c1: $00
	nop                                              ; $54c2: $00
	nop                                              ; $54c3: $00
	nop                                              ; $54c4: $00
	nop                                              ; $54c5: $00
	nop                                              ; $54c6: $00
	nop                                              ; $54c7: $00
	nop                                              ; $54c8: $00
	nop                                              ; $54c9: $00
	nop                                              ; $54ca: $00
	nop                                              ; $54cb: $00
	nop                                              ; $54cc: $00
	nop                                              ; $54cd: $00
	nop                                              ; $54ce: $00
	nop                                              ; $54cf: $00
	nop                                              ; $54d0: $00
	nop                                              ; $54d1: $00
	nop                                              ; $54d2: $00
	nop                                              ; $54d3: $00
	nop                                              ; $54d4: $00
	nop                                              ; $54d5: $00
	nop                                              ; $54d6: $00
	nop                                              ; $54d7: $00
	nop                                              ; $54d8: $00
	nop                                              ; $54d9: $00
	nop                                              ; $54da: $00
	nop                                              ; $54db: $00
	nop                                              ; $54dc: $00
	nop                                              ; $54dd: $00
	nop                                              ; $54de: $00
	nop                                              ; $54df: $00
	nop                                              ; $54e0: $00
	nop                                              ; $54e1: $00
	nop                                              ; $54e2: $00
	nop                                              ; $54e3: $00
	nop                                              ; $54e4: $00
	nop                                              ; $54e5: $00
	nop                                              ; $54e6: $00
	nop                                              ; $54e7: $00
	nop                                              ; $54e8: $00
	nop                                              ; $54e9: $00
	nop                                              ; $54ea: $00
	nop                                              ; $54eb: $00
	nop                                              ; $54ec: $00
	nop                                              ; $54ed: $00
	nop                                              ; $54ee: $00
	nop                                              ; $54ef: $00
	nop                                              ; $54f0: $00
	nop                                              ; $54f1: $00
	nop                                              ; $54f2: $00
	nop                                              ; $54f3: $00
	nop                                              ; $54f4: $00
	nop                                              ; $54f5: $00
	nop                                              ; $54f6: $00
	nop                                              ; $54f7: $00
	nop                                              ; $54f8: $00
	nop                                              ; $54f9: $00
	nop                                              ; $54fa: $00
	nop                                              ; $54fb: $00
	nop                                              ; $54fc: $00
	nop                                              ; $54fd: $00
	nop                                              ; $54fe: $00
	nop                                              ; $54ff: $00
	nop                                              ; $5500: $00
	nop                                              ; $5501: $00
	nop                                              ; $5502: $00
	nop                                              ; $5503: $00
	nop                                              ; $5504: $00
	nop                                              ; $5505: $00
	nop                                              ; $5506: $00
	nop                                              ; $5507: $00
	nop                                              ; $5508: $00
	nop                                              ; $5509: $00
	nop                                              ; $550a: $00
	nop                                              ; $550b: $00
	nop                                              ; $550c: $00
	nop                                              ; $550d: $00
	nop                                              ; $550e: $00
	nop                                              ; $550f: $00
	nop                                              ; $5510: $00
	nop                                              ; $5511: $00
	nop                                              ; $5512: $00
	nop                                              ; $5513: $00
	nop                                              ; $5514: $00
	nop                                              ; $5515: $00
	nop                                              ; $5516: $00
	nop                                              ; $5517: $00
	nop                                              ; $5518: $00
	nop                                              ; $5519: $00
	nop                                              ; $551a: $00
	nop                                              ; $551b: $00
	nop                                              ; $551c: $00
	nop                                              ; $551d: $00
	nop                                              ; $551e: $00
	nop                                              ; $551f: $00
	nop                                              ; $5520: $00
	nop                                              ; $5521: $00
	nop                                              ; $5522: $00
	nop                                              ; $5523: $00
	nop                                              ; $5524: $00
	nop                                              ; $5525: $00
	nop                                              ; $5526: $00
	nop                                              ; $5527: $00
	nop                                              ; $5528: $00
	nop                                              ; $5529: $00
	nop                                              ; $552a: $00
	nop                                              ; $552b: $00
	nop                                              ; $552c: $00
	nop                                              ; $552d: $00
	nop                                              ; $552e: $00
	nop                                              ; $552f: $00
	nop                                              ; $5530: $00
	nop                                              ; $5531: $00
	nop                                              ; $5532: $00
	nop                                              ; $5533: $00
	nop                                              ; $5534: $00
	nop                                              ; $5535: $00
	nop                                              ; $5536: $00
	nop                                              ; $5537: $00
	nop                                              ; $5538: $00
	nop                                              ; $5539: $00
	nop                                              ; $553a: $00
	nop                                              ; $553b: $00
	nop                                              ; $553c: $00
	nop                                              ; $553d: $00
	nop                                              ; $553e: $00
	nop                                              ; $553f: $00
	nop                                              ; $5540: $00
	nop                                              ; $5541: $00
	nop                                              ; $5542: $00
	nop                                              ; $5543: $00
	nop                                              ; $5544: $00
	nop                                              ; $5545: $00
	nop                                              ; $5546: $00
	nop                                              ; $5547: $00
	nop                                              ; $5548: $00
	ld   bc, $0000                                   ; $5549: $01 $00 $00
	nop                                              ; $554c: $00
	nop                                              ; $554d: $00
	nop                                              ; $554e: $00
	ld   bc, $0000                                   ; $554f: $01 $00 $00
	nop                                              ; $5552: $00
	nop                                              ; $5553: $00
	nop                                              ; $5554: $00
	nop                                              ; $5555: $00
	nop                                              ; $5556: $00
	nop                                              ; $5557: $00
	nop                                              ; $5558: $00
	nop                                              ; $5559: $00
	nop                                              ; $555a: $00
	nop                                              ; $555b: $00
	nop                                              ; $555c: $00
	ld   bc, $0000                                   ; $555d: $01 $00 $00
	nop                                              ; $5560: $00
	nop                                              ; $5561: $00
	nop                                              ; $5562: $00
	nop                                              ; $5563: $00
	nop                                              ; $5564: $00
	inc  bc                                          ; $5565: $03
	nop                                              ; $5566: $00
	inc  bc                                          ; $5567: $03
	nop                                              ; $5568: $00
	db   $e3                                         ; $5569: $e3
	nop                                              ; $556a: $00
	inc  bc                                          ; $556b: $03
	nop                                              ; $556c: $00
	inc  bc                                          ; $556d: $03
	nop                                              ; $556e: $00
	db   $e3                                         ; $556f: $e3
	nop                                              ; $5570: $00
	inc  bc                                          ; $5571: $03
	nop                                              ; $5572: $00
	inc  bc                                          ; $5573: $03
	nop                                              ; $5574: $00
	inc  bc                                          ; $5575: $03
	nop                                              ; $5576: $00
	rlca                                             ; $5577: $07
	nop                                              ; $5578: $00
	ld   c, $00                                      ; $5579: $0e $00
	inc  e                                           ; $557b: $1c
	nop                                              ; $557c: $00
	ldh  a, [rP1]                                    ; $557d: $f0 $00
	nop                                              ; $557f: $00
	nop                                              ; $5580: $00
	nop                                              ; $5581: $00
	nop                                              ; $5582: $00
	nop                                              ; $5583: $00
	nop                                              ; $5584: $00
	ld   bc, $0100                                   ; $5585: $01 $00 $01
	nop                                              ; $5588: $00
	ld   bc, $7f00                                   ; $5589: $01 $00 $7f
	nop                                              ; $558c: $00
	ld   bc, $0100                                   ; $558d: $01 $00 $01
	nop                                              ; $5590: $00
	ld   bc, $0100                                   ; $5591: $01 $00 $01
	nop                                              ; $5594: $00
	ld   bc, $0300                                   ; $5595: $01 $00 $03
	nop                                              ; $5598: $00
	inc  bc                                          ; $5599: $03
	nop                                              ; $559a: $00
	rlca                                             ; $559b: $07
	nop                                              ; $559c: $00
	ld   a, $00                                      ; $559d: $3e $00
	nop                                              ; $559f: $00
	nop                                              ; $55a0: $00
	nop                                              ; $55a1: $00
	nop                                              ; $55a2: $00
	nop                                              ; $55a3: $00
	nop                                              ; $55a4: $00
	add  b                                           ; $55a5: $80
	nop                                              ; $55a6: $00
	add  [hl]                                        ; $55a7: $86
	nop                                              ; $55a8: $00
	add  [hl]                                        ; $55a9: $86
	nop                                              ; $55aa: $00
	and  $00                                         ; $55ab: $e6 $00
	add  [hl]                                        ; $55ad: $86
	nop                                              ; $55ae: $00
	add  [hl]                                        ; $55af: $86
	nop                                              ; $55b0: $00
	add  [hl]                                        ; $55b1: $86
	nop                                              ; $55b2: $00
	add  [hl]                                        ; $55b3: $86
	nop                                              ; $55b4: $00
	add  b                                           ; $55b5: $80
	nop                                              ; $55b6: $00
	add  b                                           ; $55b7: $80
	nop                                              ; $55b8: $00
	nop                                              ; $55b9: $00
	nop                                              ; $55ba: $00
	nop                                              ; $55bb: $00
	nop                                              ; $55bc: $00
	rlca                                             ; $55bd: $07
	nop                                              ; $55be: $00
	nop                                              ; $55bf: $00
	nop                                              ; $55c0: $00
	nop                                              ; $55c1: $00
	nop                                              ; $55c2: $00
	nop                                              ; $55c3: $00
	nop                                              ; $55c4: $00
	jr   nc, jr_032_55c7                             ; $55c5: $30 $00

jr_032_55c7:
	jr   nc, jr_032_55c9                             ; $55c7: $30 $00

jr_032_55c9:
	jr   nc, jr_032_55cb                             ; $55c9: $30 $00

jr_032_55cb:
	scf                                              ; $55cb: $37
	nop                                              ; $55cc: $00
	jr   nc, jr_032_55cf                             ; $55cd: $30 $00

jr_032_55cf:
	jr   nc, jr_032_55d1                             ; $55cf: $30 $00

jr_032_55d1:
	jr   nc, jr_032_55d3                             ; $55d1: $30 $00

jr_032_55d3:
	jr   nc, jr_032_55d5                             ; $55d3: $30 $00

jr_032_55d5:
	jr   nc, jr_032_55d7                             ; $55d5: $30 $00

jr_032_55d7:
	jr   nc, jr_032_55d9                             ; $55d7: $30 $00

jr_032_55d9:
	ld   [hl], e                                     ; $55d9: $73
	nop                                              ; $55da: $00
	ldh  [rP1], a                                    ; $55db: $e0 $00
	add  b                                           ; $55dd: $80
	nop                                              ; $55de: $00
	nop                                              ; $55df: $00
	nop                                              ; $55e0: $00
	nop                                              ; $55e1: $00
	nop                                              ; $55e2: $00
	nop                                              ; $55e3: $00
	nop                                              ; $55e4: $00
	inc  c                                           ; $55e5: $0c
	nop                                              ; $55e6: $00
	inc  c                                           ; $55e7: $0c
	nop                                              ; $55e8: $00
	inc  c                                           ; $55e9: $0c
	nop                                              ; $55ea: $00
	rst  $38                                         ; $55eb: $ff
	nop                                              ; $55ec: $00
	inc  e                                           ; $55ed: $1c
	nop                                              ; $55ee: $00
	inc  e                                           ; $55ef: $1c
	nop                                              ; $55f0: $00
	inc  a                                           ; $55f1: $3c
	nop                                              ; $55f2: $00
	inc  a                                           ; $55f3: $3c
	nop                                              ; $55f4: $00
	ld   l, h                                        ; $55f5: $6c
	nop                                              ; $55f6: $00
	call z, $0c00                                    ; $55f7: $cc $00 $0c
	nop                                              ; $55fa: $00
	inc  c                                           ; $55fb: $0c
	nop                                              ; $55fc: $00
	jr   c, jr_032_55ff                              ; $55fd: $38 $00

jr_032_55ff:
	nop                                              ; $55ff: $00
	nop                                              ; $5600: $00
	nop                                              ; $5601: $00
	nop                                              ; $5602: $00
	nop                                              ; $5603: $00
	nop                                              ; $5604: $00
	nop                                              ; $5605: $00
	nop                                              ; $5606: $00
	nop                                              ; $5607: $00
	nop                                              ; $5608: $00
	nop                                              ; $5609: $00
	nop                                              ; $560a: $00
	nop                                              ; $560b: $00
	nop                                              ; $560c: $00
	nop                                              ; $560d: $00
	nop                                              ; $560e: $00
	nop                                              ; $560f: $00
	nop                                              ; $5610: $00
	nop                                              ; $5611: $00
	nop                                              ; $5612: $00
	nop                                              ; $5613: $00
	nop                                              ; $5614: $00
	nop                                              ; $5615: $00
	nop                                              ; $5616: $00
	nop                                              ; $5617: $00
	nop                                              ; $5618: $00
	nop                                              ; $5619: $00
	nop                                              ; $561a: $00
	nop                                              ; $561b: $00
	nop                                              ; $561c: $00
	nop                                              ; $561d: $00
	nop                                              ; $561e: $00
	nop                                              ; $561f: $00
	nop                                              ; $5620: $00
	nop                                              ; $5621: $00
	nop                                              ; $5622: $00
	nop                                              ; $5623: $00
	nop                                              ; $5624: $00
	nop                                              ; $5625: $00
	nop                                              ; $5626: $00
	nop                                              ; $5627: $00
	nop                                              ; $5628: $00
	nop                                              ; $5629: $00
	nop                                              ; $562a: $00
	nop                                              ; $562b: $00
	nop                                              ; $562c: $00
	nop                                              ; $562d: $00
	nop                                              ; $562e: $00
	nop                                              ; $562f: $00
	nop                                              ; $5630: $00
	nop                                              ; $5631: $00
	nop                                              ; $5632: $00
	nop                                              ; $5633: $00
	nop                                              ; $5634: $00
	nop                                              ; $5635: $00
	nop                                              ; $5636: $00
	nop                                              ; $5637: $00
	nop                                              ; $5638: $00
	nop                                              ; $5639: $00
	nop                                              ; $563a: $00
	nop                                              ; $563b: $00
	nop                                              ; $563c: $00
	nop                                              ; $563d: $00
	nop                                              ; $563e: $00
	nop                                              ; $563f: $00
	nop                                              ; $5640: $00
	nop                                              ; $5641: $00
	nop                                              ; $5642: $00
	nop                                              ; $5643: $00
	nop                                              ; $5644: $00
	nop                                              ; $5645: $00
	nop                                              ; $5646: $00
	nop                                              ; $5647: $00
	nop                                              ; $5648: $00
	nop                                              ; $5649: $00
	nop                                              ; $564a: $00
	nop                                              ; $564b: $00
	nop                                              ; $564c: $00
	nop                                              ; $564d: $00
	nop                                              ; $564e: $00
	nop                                              ; $564f: $00
	nop                                              ; $5650: $00
	nop                                              ; $5651: $00
	nop                                              ; $5652: $00
	nop                                              ; $5653: $00
	nop                                              ; $5654: $00
	nop                                              ; $5655: $00
	nop                                              ; $5656: $00
	nop                                              ; $5657: $00
	nop                                              ; $5658: $00
	nop                                              ; $5659: $00
	nop                                              ; $565a: $00
	nop                                              ; $565b: $00
	nop                                              ; $565c: $00
	nop                                              ; $565d: $00
	nop                                              ; $565e: $00
	nop                                              ; $565f: $00
	nop                                              ; $5660: $00
	nop                                              ; $5661: $00
	nop                                              ; $5662: $00
	nop                                              ; $5663: $00
	nop                                              ; $5664: $00
	nop                                              ; $5665: $00
	nop                                              ; $5666: $00
	nop                                              ; $5667: $00
	nop                                              ; $5668: $00
	nop                                              ; $5669: $00
	nop                                              ; $566a: $00
	nop                                              ; $566b: $00
	nop                                              ; $566c: $00
	nop                                              ; $566d: $00
	nop                                              ; $566e: $00
	nop                                              ; $566f: $00
	nop                                              ; $5670: $00
	nop                                              ; $5671: $00
	nop                                              ; $5672: $00
	nop                                              ; $5673: $00
	nop                                              ; $5674: $00
	nop                                              ; $5675: $00
	nop                                              ; $5676: $00
	nop                                              ; $5677: $00
	nop                                              ; $5678: $00
	nop                                              ; $5679: $00
	nop                                              ; $567a: $00
	nop                                              ; $567b: $00
	nop                                              ; $567c: $00
	nop                                              ; $567d: $00
	nop                                              ; $567e: $00
	nop                                              ; $567f: $00
	nop                                              ; $5680: $00
	nop                                              ; $5681: $00
	nop                                              ; $5682: $00
	nop                                              ; $5683: $00
	nop                                              ; $5684: $00
	nop                                              ; $5685: $00
	nop                                              ; $5686: $00
	nop                                              ; $5687: $00
	nop                                              ; $5688: $00
	nop                                              ; $5689: $00
	nop                                              ; $568a: $00
	ld   c, $00                                      ; $568b: $0e $00
	inc  bc                                          ; $568d: $03
	nop                                              ; $568e: $00
	nop                                              ; $568f: $00
	nop                                              ; $5690: $00
	nop                                              ; $5691: $00
	nop                                              ; $5692: $00
	nop                                              ; $5693: $00
	nop                                              ; $5694: $00
	nop                                              ; $5695: $00
	nop                                              ; $5696: $00
	nop                                              ; $5697: $00
	nop                                              ; $5698: $00
	nop                                              ; $5699: $00
	nop                                              ; $569a: $00
	inc  bc                                          ; $569b: $03
	nop                                              ; $569c: $00
	ld   e, $00                                      ; $569d: $1e $00
	nop                                              ; $569f: $00
	nop                                              ; $56a0: $00
	nop                                              ; $56a1: $00
	nop                                              ; $56a2: $00
	nop                                              ; $56a3: $00
	nop                                              ; $56a4: $00
	ld   h, b                                        ; $56a5: $60
	nop                                              ; $56a6: $00
	ld   h, b                                        ; $56a7: $60
	nop                                              ; $56a8: $00
	ld   h, b                                        ; $56a9: $60
	nop                                              ; $56aa: $00
	ld   h, b                                        ; $56ab: $60
	nop                                              ; $56ac: $00
	ldh  [rP1], a                                    ; $56ad: $e0 $00
	db   $e3                                         ; $56af: $e3
	nop                                              ; $56b0: $00
	ld   a, b                                        ; $56b1: $78
	nop                                              ; $56b2: $00
	ld   l, h                                        ; $56b3: $6c
	nop                                              ; $56b4: $00
	ld   h, b                                        ; $56b5: $60
	nop                                              ; $56b6: $00
	ldh  [rP1], a                                    ; $56b7: $e0 $00
	ret  nz                                          ; $56b9: $c0

	nop                                              ; $56ba: $00
	add  b                                           ; $56bb: $80
	nop                                              ; $56bc: $00
	nop                                              ; $56bd: $00
	nop                                              ; $56be: $00
	nop                                              ; $56bf: $00
	nop                                              ; $56c0: $00
	nop                                              ; $56c1: $00
	nop                                              ; $56c2: $00
	nop                                              ; $56c3: $00
	nop                                              ; $56c4: $00
	ld   b, $00                                      ; $56c5: $06 $00
	ld   b, $00                                      ; $56c7: $06 $00
	ld   c, $00                                      ; $56c9: $0e $00
	inc  e                                           ; $56cb: $1c
	nop                                              ; $56cc: $00
	ld   a, b                                        ; $56cd: $78
	nop                                              ; $56ce: $00
	ld   hl, sp+$00                                  ; $56cf: $f8 $00
	jr   jr_032_56d3                                 ; $56d1: $18 $00

jr_032_56d3:
	jr   jr_032_56d5                                 ; $56d3: $18 $00

jr_032_56d5:
	jr   jr_032_56d7                                 ; $56d5: $18 $00

jr_032_56d7:
	jr   jr_032_56d9                                 ; $56d7: $18 $00

jr_032_56d9:
	jr   jr_032_56db                                 ; $56d9: $18 $00

jr_032_56db:
	jr   jr_032_56dd                                 ; $56db: $18 $00

jr_032_56dd:
	jr   jr_032_56df                                 ; $56dd: $18 $00

jr_032_56df:
	nop                                              ; $56df: $00
	nop                                              ; $56e0: $00
	nop                                              ; $56e1: $00
	nop                                              ; $56e2: $00
	nop                                              ; $56e3: $00
	nop                                              ; $56e4: $00
	nop                                              ; $56e5: $00
	nop                                              ; $56e6: $00
	nop                                              ; $56e7: $00
	nop                                              ; $56e8: $00
	ret  nz                                          ; $56e9: $c0

	nop                                              ; $56ea: $00
	ldh  [rP1], a                                    ; $56eb: $e0 $00
	ld   a, b                                        ; $56ed: $78
	nop                                              ; $56ee: $00
	nop                                              ; $56ef: $00
	nop                                              ; $56f0: $00
	nop                                              ; $56f1: $00
	nop                                              ; $56f2: $00
	nop                                              ; $56f3: $00
	nop                                              ; $56f4: $00
	ld   bc, $0100                                   ; $56f5: $01 $00 $01
	nop                                              ; $56f8: $00
	inc  bc                                          ; $56f9: $03
	nop                                              ; $56fa: $00
	rrca                                             ; $56fb: $0f
	nop                                              ; $56fc: $00
	db   $fc                                         ; $56fd: $fc
	nop                                              ; $56fe: $00
	nop                                              ; $56ff: $00
	nop                                              ; $5700: $00
	nop                                              ; $5701: $00
	nop                                              ; $5702: $00
	nop                                              ; $5703: $00
	nop                                              ; $5704: $00
	rst  JumpTable                                         ; $5705: $df
	nop                                              ; $5706: $00
	ret  nz                                          ; $5707: $c0

	nop                                              ; $5708: $00
	ret  nz                                          ; $5709: $c0

	nop                                              ; $570a: $00
	ret  nz                                          ; $570b: $c0

	nop                                              ; $570c: $00
	ret  nz                                          ; $570d: $c0

	nop                                              ; $570e: $00
	ret  nz                                          ; $570f: $c0

	nop                                              ; $5710: $00
	ret  nz                                          ; $5711: $c0

	nop                                              ; $5712: $00
	ret  nz                                          ; $5713: $c0

	nop                                              ; $5714: $00
	ret  nz                                          ; $5715: $c0

	nop                                              ; $5716: $00
	add  b                                           ; $5717: $80
	nop                                              ; $5718: $00
	add  b                                           ; $5719: $80
	nop                                              ; $571a: $00
	ld   bc, $0f00                                   ; $571b: $01 $00 $0f
	nop                                              ; $571e: $00
	nop                                              ; $571f: $00
	nop                                              ; $5720: $00
	nop                                              ; $5721: $00
	nop                                              ; $5722: $00
	ld   c, $00                                      ; $5723: $0e $00
	ei                                               ; $5725: $fb
	nop                                              ; $5726: $00
	dec  sp                                          ; $5727: $3b
	nop                                              ; $5728: $00
	dec  sp                                          ; $5729: $3b
	nop                                              ; $572a: $00
	ld   a, $00                                      ; $572b: $3e $00
	jr   nc, jr_032_572f                             ; $572d: $30 $00

jr_032_572f:
	jr   nc, jr_032_5731                             ; $572f: $30 $00

jr_032_5731:
	jr   nc, jr_032_5733                             ; $5731: $30 $00

jr_032_5733:
	jr   nc, jr_032_5735                             ; $5733: $30 $00

jr_032_5735:
	ld   [hl], b                                     ; $5735: $70
	nop                                              ; $5736: $00
	ld   h, b                                        ; $5737: $60
	nop                                              ; $5738: $00
	ldh  [rP1], a                                    ; $5739: $e0 $00
	ret  nz                                          ; $573b: $c0

	nop                                              ; $573c: $00
	nop                                              ; $573d: $00
	nop                                              ; $573e: $00
	nop                                              ; $573f: $00
	nop                                              ; $5740: $00
	nop                                              ; $5741: $00
	nop                                              ; $5742: $00
	nop                                              ; $5743: $00
	nop                                              ; $5744: $00
	ld   a, a                                        ; $5745: $7f
	nop                                              ; $5746: $00
	ld   h, c                                        ; $5747: $61
	nop                                              ; $5748: $00
	ld   h, c                                        ; $5749: $61
	nop                                              ; $574a: $00
	ld   h, c                                        ; $574b: $61
	nop                                              ; $574c: $00
	ld   h, c                                        ; $574d: $61
	nop                                              ; $574e: $00
	ld   h, c                                        ; $574f: $61
	nop                                              ; $5750: $00
	ld   h, c                                        ; $5751: $61
	nop                                              ; $5752: $00
	ld   h, c                                        ; $5753: $61
	nop                                              ; $5754: $00
	ld   h, c                                        ; $5755: $61
	nop                                              ; $5756: $00
	ld   h, c                                        ; $5757: $61
	nop                                              ; $5758: $00
	ld   h, c                                        ; $5759: $61
	nop                                              ; $575a: $00
	ld   h, c                                        ; $575b: $61
	nop                                              ; $575c: $00
	ld   a, a                                        ; $575d: $7f
	nop                                              ; $575e: $00
	nop                                              ; $575f: $00
	nop                                              ; $5760: $00
	nop                                              ; $5761: $00
	nop                                              ; $5762: $00
	nop                                              ; $5763: $00
	nop                                              ; $5764: $00
	sbc  a                                           ; $5765: $9f
	nop                                              ; $5766: $00
	sbc  b                                           ; $5767: $98
	nop                                              ; $5768: $00
	sbc  b                                           ; $5769: $98
	nop                                              ; $576a: $00
	sbc  b                                           ; $576b: $98
	nop                                              ; $576c: $00
	sbc  b                                           ; $576d: $98
	nop                                              ; $576e: $00
	sub  b                                           ; $576f: $90
	nop                                              ; $5770: $00
	and  b                                           ; $5771: $a0
	nop                                              ; $5772: $00
	add  b                                           ; $5773: $80
	nop                                              ; $5774: $00
	add  b                                           ; $5775: $80
	nop                                              ; $5776: $00
	add  b                                           ; $5777: $80
	nop                                              ; $5778: $00
	add  c                                           ; $5779: $81
	nop                                              ; $577a: $00
	add  e                                           ; $577b: $83
	nop                                              ; $577c: $00
	sbc  [hl]                                        ; $577d: $9e
	nop                                              ; $577e: $00
	nop                                              ; $577f: $00
	nop                                              ; $5780: $00
	nop                                              ; $5781: $00
	nop                                              ; $5782: $00
	ld   [hl], $00                                   ; $5783: $36 $00
	or   $00                                         ; $5785: $f6 $00
	halt                                             ; $5787: $76
	nop                                              ; $5788: $00
	ld   h, b                                        ; $5789: $60
	nop                                              ; $578a: $00
	ld   h, b                                        ; $578b: $60
	nop                                              ; $578c: $00
	ld   h, c                                        ; $578d: $61
	nop                                              ; $578e: $00
	ld   h, b                                        ; $578f: $60
	nop                                              ; $5790: $00
	ld   h, b                                        ; $5791: $60
	nop                                              ; $5792: $00
	ld   h, b                                        ; $5793: $60
	nop                                              ; $5794: $00
	ldh  [rP1], a                                    ; $5795: $e0 $00
	ret  nz                                          ; $5797: $c0

	nop                                              ; $5798: $00
	ret  nz                                          ; $5799: $c0

	nop                                              ; $579a: $00
	add  b                                           ; $579b: $80
	nop                                              ; $579c: $00
	nop                                              ; $579d: $00
	nop                                              ; $579e: $00
	nop                                              ; $579f: $00
	nop                                              ; $57a0: $00
	nop                                              ; $57a1: $00
	nop                                              ; $57a2: $00
	nop                                              ; $57a3: $00
	nop                                              ; $57a4: $00
	cp   $00                                         ; $57a5: $fe $00
	nop                                              ; $57a7: $00
	nop                                              ; $57a8: $00
	nop                                              ; $57a9: $00
	nop                                              ; $57aa: $00
	nop                                              ; $57ab: $00
	nop                                              ; $57ac: $00
	rst  $38                                         ; $57ad: $ff
	nop                                              ; $57ae: $00
	inc  bc                                          ; $57af: $03
	nop                                              ; $57b0: $00
	inc  bc                                          ; $57b1: $03
	nop                                              ; $57b2: $00
	inc  bc                                          ; $57b3: $03
	nop                                              ; $57b4: $00
	inc  bc                                          ; $57b5: $03
	nop                                              ; $57b6: $00
	inc  bc                                          ; $57b7: $03
	nop                                              ; $57b8: $00
	ld   b, $00                                      ; $57b9: $06 $00
	inc  e                                           ; $57bb: $1c
	nop                                              ; $57bc: $00
	ldh  a, [rP1]                                    ; $57bd: $f0 $00
	nop                                              ; $57bf: $00
	nop                                              ; $57c0: $00
	nop                                              ; $57c1: $00
	nop                                              ; $57c2: $00
	nop                                              ; $57c3: $00
	nop                                              ; $57c4: $00
	ld   a, a                                        ; $57c5: $7f
	nop                                              ; $57c6: $00
	ld   bc, $0100                                   ; $57c7: $01 $00 $01
	nop                                              ; $57ca: $00
	ld   bc, $0100                                   ; $57cb: $01 $00 $01
	nop                                              ; $57ce: $00
	ld   bc, $0100                                   ; $57cf: $01 $00 $01
	nop                                              ; $57d2: $00
	ld   bc, $3300                                   ; $57d3: $01 $00 $33
	nop                                              ; $57d6: $00
	ld   e, $00                                      ; $57d7: $1e $00
	inc  c                                           ; $57d9: $0c
	nop                                              ; $57da: $00
	ld   b, $00                                      ; $57db: $06 $00
	inc  bc                                          ; $57dd: $03
	nop                                              ; $57de: $00
	nop                                              ; $57df: $00
	nop                                              ; $57e0: $00
	nop                                              ; $57e1: $00
	nop                                              ; $57e2: $00
	nop                                              ; $57e3: $00
	nop                                              ; $57e4: $00
	add  b                                           ; $57e5: $80
	nop                                              ; $57e6: $00
	add  b                                           ; $57e7: $80
	nop                                              ; $57e8: $00
	add  b                                           ; $57e9: $80
	nop                                              ; $57ea: $00
	add  b                                           ; $57eb: $80
	nop                                              ; $57ec: $00
	add  b                                           ; $57ed: $80
	nop                                              ; $57ee: $00
	add  b                                           ; $57ef: $80
	nop                                              ; $57f0: $00
	sbc  a                                           ; $57f1: $9f
	nop                                              ; $57f2: $00
	add  b                                           ; $57f3: $80
	nop                                              ; $57f4: $00
	nop                                              ; $57f5: $00
	nop                                              ; $57f6: $00
	nop                                              ; $57f7: $00
	nop                                              ; $57f8: $00
	nop                                              ; $57f9: $00
	nop                                              ; $57fa: $00
	nop                                              ; $57fb: $00
	nop                                              ; $57fc: $00
	nop                                              ; $57fd: $00
	nop                                              ; $57fe: $00
	nop                                              ; $57ff: $00
	nop                                              ; $5800: $00
	nop                                              ; $5801: $00
	nop                                              ; $5802: $00
	nop                                              ; $5803: $00
	nop                                              ; $5804: $00
	nop                                              ; $5805: $00
	nop                                              ; $5806: $00
	nop                                              ; $5807: $00
	nop                                              ; $5808: $00
	nop                                              ; $5809: $00
	nop                                              ; $580a: $00
	nop                                              ; $580b: $00
	nop                                              ; $580c: $00
	nop                                              ; $580d: $00
	nop                                              ; $580e: $00
	nop                                              ; $580f: $00
	nop                                              ; $5810: $00
	nop                                              ; $5811: $00
	nop                                              ; $5812: $00
	nop                                              ; $5813: $00
	nop                                              ; $5814: $00
	nop                                              ; $5815: $00
	nop                                              ; $5816: $00
	nop                                              ; $5817: $00
	nop                                              ; $5818: $00
	nop                                              ; $5819: $00
	nop                                              ; $581a: $00
	nop                                              ; $581b: $00
	nop                                              ; $581c: $00
	nop                                              ; $581d: $00
	nop                                              ; $581e: $00
	nop                                              ; $581f: $00
	nop                                              ; $5820: $00
	nop                                              ; $5821: $00
	nop                                              ; $5822: $00
	nop                                              ; $5823: $00
	nop                                              ; $5824: $00
	nop                                              ; $5825: $00
	nop                                              ; $5826: $00
	nop                                              ; $5827: $00
	nop                                              ; $5828: $00
	nop                                              ; $5829: $00
	nop                                              ; $582a: $00
	nop                                              ; $582b: $00
	nop                                              ; $582c: $00
	nop                                              ; $582d: $00
	nop                                              ; $582e: $00
	nop                                              ; $582f: $00
	nop                                              ; $5830: $00
	nop                                              ; $5831: $00
	nop                                              ; $5832: $00
	nop                                              ; $5833: $00
	nop                                              ; $5834: $00
	nop                                              ; $5835: $00
	nop                                              ; $5836: $00
	nop                                              ; $5837: $00
	nop                                              ; $5838: $00
	nop                                              ; $5839: $00
	nop                                              ; $583a: $00
	nop                                              ; $583b: $00
	nop                                              ; $583c: $00
	nop                                              ; $583d: $00
	nop                                              ; $583e: $00
	nop                                              ; $583f: $00
	nop                                              ; $5840: $00
	nop                                              ; $5841: $00
	nop                                              ; $5842: $00
	nop                                              ; $5843: $00
	nop                                              ; $5844: $00
	nop                                              ; $5845: $00
	nop                                              ; $5846: $00
	nop                                              ; $5847: $00
	nop                                              ; $5848: $00
	nop                                              ; $5849: $00
	nop                                              ; $584a: $00
	nop                                              ; $584b: $00
	nop                                              ; $584c: $00
	nop                                              ; $584d: $00
	nop                                              ; $584e: $00
	nop                                              ; $584f: $00
	nop                                              ; $5850: $00
	nop                                              ; $5851: $00
	nop                                              ; $5852: $00
	nop                                              ; $5853: $00
	nop                                              ; $5854: $00
	nop                                              ; $5855: $00
	nop                                              ; $5856: $00
	nop                                              ; $5857: $00
	nop                                              ; $5858: $00
	nop                                              ; $5859: $00
	nop                                              ; $585a: $00
	nop                                              ; $585b: $00
	nop                                              ; $585c: $00
	nop                                              ; $585d: $00
	nop                                              ; $585e: $00
	nop                                              ; $585f: $00
	nop                                              ; $5860: $00
	nop                                              ; $5861: $00
	nop                                              ; $5862: $00
	nop                                              ; $5863: $00
	nop                                              ; $5864: $00
	nop                                              ; $5865: $00
	nop                                              ; $5866: $00
	nop                                              ; $5867: $00
	nop                                              ; $5868: $00
	nop                                              ; $5869: $00
	nop                                              ; $586a: $00
	nop                                              ; $586b: $00
	nop                                              ; $586c: $00
	nop                                              ; $586d: $00
	nop                                              ; $586e: $00
	nop                                              ; $586f: $00
	nop                                              ; $5870: $00
	nop                                              ; $5871: $00
	nop                                              ; $5872: $00
	nop                                              ; $5873: $00
	nop                                              ; $5874: $00
	nop                                              ; $5875: $00
	nop                                              ; $5876: $00
	nop                                              ; $5877: $00
	nop                                              ; $5878: $00
	nop                                              ; $5879: $00
	nop                                              ; $587a: $00
	nop                                              ; $587b: $00
	nop                                              ; $587c: $00
	nop                                              ; $587d: $00
	nop                                              ; $587e: $00
	nop                                              ; $587f: $00
	nop                                              ; $5880: $00
	nop                                              ; $5881: $00
	nop                                              ; $5882: $00
	nop                                              ; $5883: $00
	nop                                              ; $5884: $00
	nop                                              ; $5885: $00
	nop                                              ; $5886: $00
	nop                                              ; $5887: $00
	nop                                              ; $5888: $00
	nop                                              ; $5889: $00
	nop                                              ; $588a: $00
	nop                                              ; $588b: $00
	nop                                              ; $588c: $00
	nop                                              ; $588d: $00
	nop                                              ; $588e: $00
	nop                                              ; $588f: $00
	nop                                              ; $5890: $00
	nop                                              ; $5891: $00
	nop                                              ; $5892: $00
	nop                                              ; $5893: $00
	nop                                              ; $5894: $00
	nop                                              ; $5895: $00
	nop                                              ; $5896: $00
	nop                                              ; $5897: $00
	nop                                              ; $5898: $00
	nop                                              ; $5899: $00
	nop                                              ; $589a: $00
	nop                                              ; $589b: $00
	nop                                              ; $589c: $00
	nop                                              ; $589d: $00
	nop                                              ; $589e: $00
	nop                                              ; $589f: $00
	nop                                              ; $58a0: $00
	nop                                              ; $58a1: $00
	nop                                              ; $58a2: $00
	jr   jr_032_58a5                                 ; $58a3: $18 $00

jr_032_58a5:
	jr   jr_032_58a7                                 ; $58a5: $18 $00

jr_032_58a7:
	jr   jr_032_58a9                                 ; $58a7: $18 $00

jr_032_58a9:
	rst  $38                                         ; $58a9: $ff
	nop                                              ; $58aa: $00
	jr   jr_032_58ad                                 ; $58ab: $18 $00

jr_032_58ad:
	jr   jr_032_58af                                 ; $58ad: $18 $00

jr_032_58af:
	jr   jr_032_58b1                                 ; $58af: $18 $00

jr_032_58b1:
	nop                                              ; $58b1: $00
	nop                                              ; $58b2: $00
	nop                                              ; $58b3: $00
	nop                                              ; $58b4: $00
	nop                                              ; $58b5: $00
	nop                                              ; $58b6: $00
	ld   bc, $0100                                   ; $58b7: $01 $00 $01
	nop                                              ; $58ba: $00
	inc  bc                                          ; $58bb: $03
	nop                                              ; $58bc: $00
	ld   c, $00                                      ; $58bd: $0e $00
	nop                                              ; $58bf: $00
	nop                                              ; $58c0: $00
	nop                                              ; $58c1: $00
	nop                                              ; $58c2: $00
	ret  nz                                          ; $58c3: $c0

	nop                                              ; $58c4: $00
	rst  ToBoot                                         ; $58c5: $c7
	nop                                              ; $58c6: $00
	ret  nz                                          ; $58c7: $c0

	nop                                              ; $58c8: $00
	ld   hl, sp+$00                                  ; $58c9: $f8 $00
	ret  nz                                          ; $58cb: $c0

	nop                                              ; $58cc: $00
	ret  nz                                          ; $58cd: $c0

	nop                                              ; $58ce: $00
	ret  nz                                          ; $58cf: $c0

	nop                                              ; $58d0: $00
	ret  nz                                          ; $58d1: $c0

	nop                                              ; $58d2: $00
	ret  nz                                          ; $58d3: $c0

	nop                                              ; $58d4: $00
	ret  nz                                          ; $58d5: $c0

	nop                                              ; $58d6: $00
	ret  nz                                          ; $58d7: $c0

	nop                                              ; $58d8: $00
	add  b                                           ; $58d9: $80
	nop                                              ; $58da: $00
	add  b                                           ; $58db: $80
	nop                                              ; $58dc: $00
	inc  bc                                          ; $58dd: $03
	nop                                              ; $58de: $00
	nop                                              ; $58df: $00
	nop                                              ; $58e0: $00
	nop                                              ; $58e1: $00
	nop                                              ; $58e2: $00
	ld   b, $00                                      ; $58e3: $06 $00
	cp   $00                                         ; $58e5: $fe $00
	ld   c, $00                                      ; $58e7: $0e $00
	inc  c                                           ; $58e9: $0c
	nop                                              ; $58ea: $00
	inc  c                                           ; $58eb: $0c
	nop                                              ; $58ec: $00
	inc  c                                           ; $58ed: $0c
	nop                                              ; $58ee: $00
	inc  c                                           ; $58ef: $0c
	nop                                              ; $58f0: $00
	inc  c                                           ; $58f1: $0c
	nop                                              ; $58f2: $00
	inc  c                                           ; $58f3: $0c
	nop                                              ; $58f4: $00
	inc  e                                           ; $58f5: $1c
	nop                                              ; $58f6: $00
	jr   jr_032_58f9                                 ; $58f7: $18 $00

jr_032_58f9:
	jr   c, jr_032_58fb                              ; $58f9: $38 $00

jr_032_58fb:
	ld   [hl], b                                     ; $58fb: $70
	nop                                              ; $58fc: $00
	ret  nz                                          ; $58fd: $c0

	nop                                              ; $58fe: $00
	nop                                              ; $58ff: $00
	nop                                              ; $5900: $00
	nop                                              ; $5901: $00
	nop                                              ; $5902: $00
	ret  nz                                          ; $5903: $c0

	nop                                              ; $5904: $00
	rst  JumpTable                                         ; $5905: $df
	nop                                              ; $5906: $00
	ret  nz                                          ; $5907: $c0

	nop                                              ; $5908: $00
	nop                                              ; $5909: $00
	nop                                              ; $590a: $00
	nop                                              ; $590b: $00
	nop                                              ; $590c: $00
	nop                                              ; $590d: $00
	nop                                              ; $590e: $00
	nop                                              ; $590f: $00
	nop                                              ; $5910: $00
	nop                                              ; $5911: $00
	nop                                              ; $5912: $00
	nop                                              ; $5913: $00
	nop                                              ; $5914: $00
	nop                                              ; $5915: $00
	nop                                              ; $5916: $00
	nop                                              ; $5917: $00
	nop                                              ; $5918: $00
	nop                                              ; $5919: $00
	nop                                              ; $591a: $00
	ld   bc, $0f00                                   ; $591b: $01 $00 $0f
	nop                                              ; $591e: $00
	nop                                              ; $591f: $00
	nop                                              ; $5920: $00
	nop                                              ; $5921: $00
	nop                                              ; $5922: $00
	ld   c, $00                                      ; $5923: $0e $00
	ei                                               ; $5925: $fb
	nop                                              ; $5926: $00
	dec  sp                                          ; $5927: $3b
	nop                                              ; $5928: $00
	dec  sp                                          ; $5929: $3b
	nop                                              ; $592a: $00
	ld   a, $00                                      ; $592b: $3e $00
	jr   nc, jr_032_592f                             ; $592d: $30 $00

jr_032_592f:
	jr   nc, jr_032_5931                             ; $592f: $30 $00

jr_032_5931:
	jr   nc, jr_032_5933                             ; $5931: $30 $00

jr_032_5933:
	jr   nc, jr_032_5935                             ; $5933: $30 $00

jr_032_5935:
	ld   [hl], b                                     ; $5935: $70
	nop                                              ; $5936: $00
	ld   h, b                                        ; $5937: $60
	nop                                              ; $5938: $00
	ldh  [rP1], a                                    ; $5939: $e0 $00
	ret  nz                                          ; $593b: $c0

	nop                                              ; $593c: $00
	nop                                              ; $593d: $00
	nop                                              ; $593e: $00
	nop                                              ; $593f: $00
	nop                                              ; $5940: $00
	nop                                              ; $5941: $00
	nop                                              ; $5942: $00
	nop                                              ; $5943: $00
	nop                                              ; $5944: $00
	ld   a, a                                        ; $5945: $7f
	nop                                              ; $5946: $00
	ld   h, c                                        ; $5947: $61
	nop                                              ; $5948: $00
	ld   h, c                                        ; $5949: $61
	nop                                              ; $594a: $00
	ld   h, c                                        ; $594b: $61
	nop                                              ; $594c: $00
	ld   h, c                                        ; $594d: $61
	nop                                              ; $594e: $00
	ld   h, c                                        ; $594f: $61
	nop                                              ; $5950: $00
	ld   h, c                                        ; $5951: $61
	nop                                              ; $5952: $00
	ld   h, c                                        ; $5953: $61
	nop                                              ; $5954: $00
	ld   h, c                                        ; $5955: $61
	nop                                              ; $5956: $00
	ld   h, c                                        ; $5957: $61
	nop                                              ; $5958: $00
	ld   h, c                                        ; $5959: $61
	nop                                              ; $595a: $00
	ld   h, c                                        ; $595b: $61
	nop                                              ; $595c: $00
	ld   a, a                                        ; $595d: $7f
	nop                                              ; $595e: $00
	nop                                              ; $595f: $00
	nop                                              ; $5960: $00
	nop                                              ; $5961: $00
	nop                                              ; $5962: $00
	nop                                              ; $5963: $00
	nop                                              ; $5964: $00
	sbc  a                                           ; $5965: $9f
	nop                                              ; $5966: $00
	sbc  b                                           ; $5967: $98
	nop                                              ; $5968: $00
	sbc  b                                           ; $5969: $98
	nop                                              ; $596a: $00
	sbc  b                                           ; $596b: $98
	nop                                              ; $596c: $00
	sbc  b                                           ; $596d: $98
	nop                                              ; $596e: $00
	sub  b                                           ; $596f: $90
	nop                                              ; $5970: $00
	and  b                                           ; $5971: $a0
	nop                                              ; $5972: $00
	add  b                                           ; $5973: $80
	nop                                              ; $5974: $00
	add  b                                           ; $5975: $80
	nop                                              ; $5976: $00
	add  b                                           ; $5977: $80
	nop                                              ; $5978: $00
	add  c                                           ; $5979: $81
	nop                                              ; $597a: $00
	add  e                                           ; $597b: $83
	nop                                              ; $597c: $00
	sbc  [hl]                                        ; $597d: $9e
	nop                                              ; $597e: $00
	nop                                              ; $597f: $00
	nop                                              ; $5980: $00
	nop                                              ; $5981: $00
	nop                                              ; $5982: $00
	ld   [hl], $00                                   ; $5983: $36 $00
	or   $00                                         ; $5985: $f6 $00
	halt                                             ; $5987: $76
	nop                                              ; $5988: $00
	ld   h, b                                        ; $5989: $60
	nop                                              ; $598a: $00
	ld   h, b                                        ; $598b: $60
	nop                                              ; $598c: $00
	ld   h, c                                        ; $598d: $61
	nop                                              ; $598e: $00
	ld   h, b                                        ; $598f: $60
	nop                                              ; $5990: $00
	ld   h, b                                        ; $5991: $60
	nop                                              ; $5992: $00
	ld   h, b                                        ; $5993: $60
	nop                                              ; $5994: $00
	ldh  [rP1], a                                    ; $5995: $e0 $00
	ret  nz                                          ; $5997: $c0

	nop                                              ; $5998: $00
	ret  nz                                          ; $5999: $c0

	nop                                              ; $599a: $00
	add  b                                           ; $599b: $80
	nop                                              ; $599c: $00
	nop                                              ; $599d: $00
	nop                                              ; $599e: $00
	nop                                              ; $599f: $00
	nop                                              ; $59a0: $00
	nop                                              ; $59a1: $00
	nop                                              ; $59a2: $00
	nop                                              ; $59a3: $00
	nop                                              ; $59a4: $00
	cp   $00                                         ; $59a5: $fe $00
	nop                                              ; $59a7: $00
	nop                                              ; $59a8: $00
	nop                                              ; $59a9: $00
	nop                                              ; $59aa: $00
	nop                                              ; $59ab: $00
	nop                                              ; $59ac: $00
	rst  $38                                         ; $59ad: $ff
	nop                                              ; $59ae: $00
	inc  bc                                          ; $59af: $03
	nop                                              ; $59b0: $00
	inc  bc                                          ; $59b1: $03
	nop                                              ; $59b2: $00
	inc  bc                                          ; $59b3: $03
	nop                                              ; $59b4: $00
	inc  bc                                          ; $59b5: $03
	nop                                              ; $59b6: $00
	inc  bc                                          ; $59b7: $03
	nop                                              ; $59b8: $00
	ld   b, $00                                      ; $59b9: $06 $00
	inc  e                                           ; $59bb: $1c
	nop                                              ; $59bc: $00
	ldh  a, [rP1]                                    ; $59bd: $f0 $00
	nop                                              ; $59bf: $00
	nop                                              ; $59c0: $00
	nop                                              ; $59c1: $00
	nop                                              ; $59c2: $00
	nop                                              ; $59c3: $00
	nop                                              ; $59c4: $00
	ld   a, a                                        ; $59c5: $7f
	nop                                              ; $59c6: $00
	ld   bc, $0100                                   ; $59c7: $01 $00 $01
	nop                                              ; $59ca: $00
	ld   bc, $0100                                   ; $59cb: $01 $00 $01
	nop                                              ; $59ce: $00
	ld   bc, $0100                                   ; $59cf: $01 $00 $01
	nop                                              ; $59d2: $00
	ld   bc, $3300                                   ; $59d3: $01 $00 $33
	nop                                              ; $59d6: $00
	ld   e, $00                                      ; $59d7: $1e $00
	inc  c                                           ; $59d9: $0c
	nop                                              ; $59da: $00
	ld   b, $00                                      ; $59db: $06 $00
	inc  bc                                          ; $59dd: $03
	nop                                              ; $59de: $00
	nop                                              ; $59df: $00
	nop                                              ; $59e0: $00
	nop                                              ; $59e1: $00
	nop                                              ; $59e2: $00
	nop                                              ; $59e3: $00
	nop                                              ; $59e4: $00
	add  b                                           ; $59e5: $80
	nop                                              ; $59e6: $00
	add  b                                           ; $59e7: $80
	nop                                              ; $59e8: $00
	add  b                                           ; $59e9: $80
	nop                                              ; $59ea: $00
	add  b                                           ; $59eb: $80
	nop                                              ; $59ec: $00
	add  b                                           ; $59ed: $80
	nop                                              ; $59ee: $00
	add  b                                           ; $59ef: $80
	nop                                              ; $59f0: $00
	sbc  a                                           ; $59f1: $9f
	nop                                              ; $59f2: $00
	add  b                                           ; $59f3: $80
	nop                                              ; $59f4: $00
	nop                                              ; $59f5: $00
	nop                                              ; $59f6: $00
	nop                                              ; $59f7: $00
	nop                                              ; $59f8: $00
	nop                                              ; $59f9: $00
	nop                                              ; $59fa: $00
	nop                                              ; $59fb: $00
	nop                                              ; $59fc: $00
	nop                                              ; $59fd: $00
	nop                                              ; $59fe: $00
	nop                                              ; $59ff: $00
	nop                                              ; $5a00: $00
	nop                                              ; $5a01: $00
	nop                                              ; $5a02: $00
	nop                                              ; $5a03: $00
	nop                                              ; $5a04: $00
	nop                                              ; $5a05: $00
	nop                                              ; $5a06: $00
	nop                                              ; $5a07: $00
	nop                                              ; $5a08: $00
	nop                                              ; $5a09: $00
	nop                                              ; $5a0a: $00
	nop                                              ; $5a0b: $00
	nop                                              ; $5a0c: $00
	nop                                              ; $5a0d: $00
	nop                                              ; $5a0e: $00
	nop                                              ; $5a0f: $00
	nop                                              ; $5a10: $00
	nop                                              ; $5a11: $00
	nop                                              ; $5a12: $00
	nop                                              ; $5a13: $00
	nop                                              ; $5a14: $00
	nop                                              ; $5a15: $00
	nop                                              ; $5a16: $00
	nop                                              ; $5a17: $00
	nop                                              ; $5a18: $00
	nop                                              ; $5a19: $00
	nop                                              ; $5a1a: $00
	nop                                              ; $5a1b: $00
	nop                                              ; $5a1c: $00
	nop                                              ; $5a1d: $00
	nop                                              ; $5a1e: $00
	nop                                              ; $5a1f: $00
	nop                                              ; $5a20: $00
	nop                                              ; $5a21: $00
	nop                                              ; $5a22: $00
	nop                                              ; $5a23: $00
	nop                                              ; $5a24: $00
	nop                                              ; $5a25: $00
	nop                                              ; $5a26: $00
	nop                                              ; $5a27: $00
	nop                                              ; $5a28: $00
	nop                                              ; $5a29: $00
	nop                                              ; $5a2a: $00
	nop                                              ; $5a2b: $00
	nop                                              ; $5a2c: $00
	nop                                              ; $5a2d: $00
	nop                                              ; $5a2e: $00
	nop                                              ; $5a2f: $00
	nop                                              ; $5a30: $00
	nop                                              ; $5a31: $00
	nop                                              ; $5a32: $00
	nop                                              ; $5a33: $00
	nop                                              ; $5a34: $00
	nop                                              ; $5a35: $00
	nop                                              ; $5a36: $00
	nop                                              ; $5a37: $00
	nop                                              ; $5a38: $00
	nop                                              ; $5a39: $00
	nop                                              ; $5a3a: $00
	nop                                              ; $5a3b: $00
	nop                                              ; $5a3c: $00
	nop                                              ; $5a3d: $00
	nop                                              ; $5a3e: $00
	nop                                              ; $5a3f: $00
	nop                                              ; $5a40: $00
	nop                                              ; $5a41: $00
	nop                                              ; $5a42: $00
	nop                                              ; $5a43: $00
	nop                                              ; $5a44: $00
	rlca                                             ; $5a45: $07
	nop                                              ; $5a46: $00
	ld   b, $00                                      ; $5a47: $06 $00
	ld   b, $00                                      ; $5a49: $06 $00
	ld   b, $00                                      ; $5a4b: $06 $00
	ld   b, $00                                      ; $5a4d: $06 $00
	inc  b                                           ; $5a4f: $04
	nop                                              ; $5a50: $00
	ld   [rRAMG], sp                                 ; $5a51: $08 $00 $00
	nop                                              ; $5a54: $00
	nop                                              ; $5a55: $00
	nop                                              ; $5a56: $00
	nop                                              ; $5a57: $00
	nop                                              ; $5a58: $00
	nop                                              ; $5a59: $00
	nop                                              ; $5a5a: $00
	nop                                              ; $5a5b: $00
	nop                                              ; $5a5c: $00
	rlca                                             ; $5a5d: $07
	nop                                              ; $5a5e: $00
	nop                                              ; $5a5f: $00
	nop                                              ; $5a60: $00
	nop                                              ; $5a61: $00
	nop                                              ; $5a62: $00
	dec  c                                           ; $5a63: $0d
	nop                                              ; $5a64: $00
	db   $fd                                         ; $5a65: $fd
	nop                                              ; $5a66: $00
	dec  e                                           ; $5a67: $1d
	nop                                              ; $5a68: $00
	jr   jr_032_5a6b                                 ; $5a69: $18 $00

jr_032_5a6b:
	jr   jr_032_5a6d                                 ; $5a6b: $18 $00

jr_032_5a6d:
	jr   jr_032_5a6f                                 ; $5a6d: $18 $00

jr_032_5a6f:
	jr   jr_032_5a71                                 ; $5a6f: $18 $00

jr_032_5a71:
	jr   jr_032_5a73                                 ; $5a71: $18 $00

jr_032_5a73:
	jr   jr_032_5a75                                 ; $5a73: $18 $00

jr_032_5a75:
	jr   c, jr_032_5a77                              ; $5a75: $38 $00

jr_032_5a77:
	jr   nc, jr_032_5a79                             ; $5a77: $30 $00

jr_032_5a79:
	ld   [hl], b                                     ; $5a79: $70
	nop                                              ; $5a7a: $00
	ldh  [rP1], a                                    ; $5a7b: $e0 $00
	add  b                                           ; $5a7d: $80
	nop                                              ; $5a7e: $00
	nop                                              ; $5a7f: $00
	nop                                              ; $5a80: $00
	nop                                              ; $5a81: $00
	nop                                              ; $5a82: $00
	add  b                                           ; $5a83: $80
	nop                                              ; $5a84: $00
	cp   a                                           ; $5a85: $bf
	nop                                              ; $5a86: $00
	add  b                                           ; $5a87: $80
	nop                                              ; $5a88: $00
	nop                                              ; $5a89: $00
	nop                                              ; $5a8a: $00
	nop                                              ; $5a8b: $00
	nop                                              ; $5a8c: $00
	ld   a, a                                        ; $5a8d: $7f
	nop                                              ; $5a8e: $00
	nop                                              ; $5a8f: $00
	nop                                              ; $5a90: $00
	nop                                              ; $5a91: $00
	nop                                              ; $5a92: $00
	nop                                              ; $5a93: $00
	nop                                              ; $5a94: $00
	nop                                              ; $5a95: $00
	nop                                              ; $5a96: $00
	nop                                              ; $5a97: $00
	nop                                              ; $5a98: $00
	ld   bc, $0700                                   ; $5a99: $01 $00 $07
	nop                                              ; $5a9c: $00
	inc  a                                           ; $5a9d: $3c
	nop                                              ; $5a9e: $00
	nop                                              ; $5a9f: $00
	nop                                              ; $5aa0: $00
	nop                                              ; $5aa1: $00
	nop                                              ; $5aa2: $00
	nop                                              ; $5aa3: $00
	nop                                              ; $5aa4: $00
	sbc  a                                           ; $5aa5: $9f
	nop                                              ; $5aa6: $00
	nop                                              ; $5aa7: $00
	nop                                              ; $5aa8: $00
	nop                                              ; $5aa9: $00
	nop                                              ; $5aaa: $00
	nop                                              ; $5aab: $00
	nop                                              ; $5aac: $00
	ret  nz                                          ; $5aad: $c0

	nop                                              ; $5aae: $00
	ret  nz                                          ; $5aaf: $c0

	nop                                              ; $5ab0: $00
	ret  nz                                          ; $5ab1: $c0

	nop                                              ; $5ab2: $00
	ret  nz                                          ; $5ab3: $c0

	nop                                              ; $5ab4: $00
	ret  nz                                          ; $5ab5: $c0

	nop                                              ; $5ab6: $00
	ret  nz                                          ; $5ab7: $c0

	nop                                              ; $5ab8: $00
	add  b                                           ; $5ab9: $80
	nop                                              ; $5aba: $00
	ld   bc, $0f00                                   ; $5abb: $01 $00 $0f
	nop                                              ; $5abe: $00
	nop                                              ; $5abf: $00
	nop                                              ; $5ac0: $00
	nop                                              ; $5ac1: $00
	nop                                              ; $5ac2: $00
	nop                                              ; $5ac3: $00
	nop                                              ; $5ac4: $00
	ldh  a, [rP1]                                    ; $5ac5: $f0 $00
	jr   nc, jr_032_5ac9                             ; $5ac7: $30 $00

jr_032_5ac9:
	jr   nc, jr_032_5acb                             ; $5ac9: $30 $00

jr_032_5acb:
	jr   nc, jr_032_5acd                             ; $5acb: $30 $00

jr_032_5acd:
	jr   nc, jr_032_5acf                             ; $5acd: $30 $00

jr_032_5acf:
	jr   nc, jr_032_5ad1                             ; $5acf: $30 $00

jr_032_5ad1:
	jr   nc, jr_032_5ad3                             ; $5ad1: $30 $00

jr_032_5ad3:
	ld   sp, $7700                                   ; $5ad3: $31 $00 $77
	nop                                              ; $5ad6: $00
	ld   h, c                                        ; $5ad7: $61
	nop                                              ; $5ad8: $00
	pop  hl                                          ; $5ad9: $e1
	nop                                              ; $5ada: $00
	pop  bc                                          ; $5adb: $c1
	nop                                              ; $5adc: $00
	ld   bc, $0000                                   ; $5add: $01 $00 $00
	nop                                              ; $5ae0: $00
	nop                                              ; $5ae1: $00
	nop                                              ; $5ae2: $00
	nop                                              ; $5ae3: $00
	nop                                              ; $5ae4: $00
	nop                                              ; $5ae5: $00
	nop                                              ; $5ae6: $00
	nop                                              ; $5ae7: $00
	nop                                              ; $5ae8: $00
	nop                                              ; $5ae9: $00
	nop                                              ; $5aea: $00
	nop                                              ; $5aeb: $00
	nop                                              ; $5aec: $00
	nop                                              ; $5aed: $00
	nop                                              ; $5aee: $00
	nop                                              ; $5aef: $00
	nop                                              ; $5af0: $00
	ld   l, d                                        ; $5af1: $6a
	nop                                              ; $5af2: $00
	jp   z, $8a00                                    ; $5af3: $ca $00 $8a

	nop                                              ; $5af6: $00
	add  b                                           ; $5af7: $80
	nop                                              ; $5af8: $00
	add  c                                           ; $5af9: $81
	nop                                              ; $5afa: $00
	add  e                                           ; $5afb: $83
	nop                                              ; $5afc: $00
	adc  [hl]                                        ; $5afd: $8e
	nop                                              ; $5afe: $00
	nop                                              ; $5aff: $00
	nop                                              ; $5b00: $00
	nop                                              ; $5b01: $00
	nop                                              ; $5b02: $00
	nop                                              ; $5b03: $00
	nop                                              ; $5b04: $00
	rrca                                             ; $5b05: $0f
	nop                                              ; $5b06: $00
	inc  c                                           ; $5b07: $0c
	nop                                              ; $5b08: $00
	inc  c                                           ; $5b09: $0c
	nop                                              ; $5b0a: $00
	inc  c                                           ; $5b0b: $0c
	nop                                              ; $5b0c: $00
	inc  c                                           ; $5b0d: $0c
	nop                                              ; $5b0e: $00
	ld   [$d000], sp                                 ; $5b0f: $08 $00 $d0
	nop                                              ; $5b12: $00
	ret  nz                                          ; $5b13: $c0

	nop                                              ; $5b14: $00
	ret  nz                                          ; $5b15: $c0

	nop                                              ; $5b16: $00
	ret  nz                                          ; $5b17: $c0

	nop                                              ; $5b18: $00
	ret  nz                                          ; $5b19: $c0

	nop                                              ; $5b1a: $00
	add  c                                           ; $5b1b: $81
	nop                                              ; $5b1c: $00
	rrca                                             ; $5b1d: $0f
	nop                                              ; $5b1e: $00
	nop                                              ; $5b1f: $00
	nop                                              ; $5b20: $00
	nop                                              ; $5b21: $00
	nop                                              ; $5b22: $00
	nop                                              ; $5b23: $00
	nop                                              ; $5b24: $00
	di                                               ; $5b25: $f3
	nop                                              ; $5b26: $00
	jr   nc, jr_032_5b29                             ; $5b27: $30 $00

jr_032_5b29:
	jr   nc, jr_032_5b2b                             ; $5b29: $30 $00

jr_032_5b2b:
	jr   nc, jr_032_5b2d                             ; $5b2b: $30 $00

jr_032_5b2d:
	scf                                              ; $5b2d: $37
	nop                                              ; $5b2e: $00
	jr   nc, jr_032_5b31                             ; $5b2f: $30 $00

jr_032_5b31:
	jr   nc, jr_032_5b33                             ; $5b31: $30 $00

jr_032_5b33:
	jr   nc, jr_032_5b35                             ; $5b33: $30 $00

jr_032_5b35:
	ld   [hl], b                                     ; $5b35: $70
	nop                                              ; $5b36: $00
	ld   h, b                                        ; $5b37: $60
	nop                                              ; $5b38: $00
	ldh  [rP1], a                                    ; $5b39: $e0 $00
	ret  nz                                          ; $5b3b: $c0

	nop                                              ; $5b3c: $00
	inc  bc                                          ; $5b3d: $03
	nop                                              ; $5b3e: $00
	nop                                              ; $5b3f: $00
	nop                                              ; $5b40: $00
	nop                                              ; $5b41: $00
	nop                                              ; $5b42: $00
	ld   b, $00                                      ; $5b43: $06 $00
	cp   $00                                         ; $5b45: $fe $00
	ld   b, $00                                      ; $5b47: $06 $00
	nop                                              ; $5b49: $00
	nop                                              ; $5b4a: $00
	nop                                              ; $5b4b: $00
	nop                                              ; $5b4c: $00
	cp   $00                                         ; $5b4d: $fe $00
	jr   nc, jr_032_5b51                             ; $5b4f: $30 $00

jr_032_5b51:
	jr   nc, jr_032_5b53                             ; $5b51: $30 $00

jr_032_5b53:
	jr   nc, jr_032_5b55                             ; $5b53: $30 $00

jr_032_5b55:
	jr   nc, jr_032_5b57                             ; $5b55: $30 $00

jr_032_5b57:
	jr   nc, jr_032_5b59                             ; $5b57: $30 $00

jr_032_5b59:
	ld   [hl], b                                     ; $5b59: $70
	nop                                              ; $5b5a: $00
	ldh  [rP1], a                                    ; $5b5b: $e0 $00
	add  b                                           ; $5b5d: $80
	nop                                              ; $5b5e: $00
	nop                                              ; $5b5f: $00
	nop                                              ; $5b60: $00
	nop                                              ; $5b61: $00
	nop                                              ; $5b62: $00
	call z, $cc00                                    ; $5b63: $cc $00 $cc
	nop                                              ; $5b66: $00
	call z, $7f00                                    ; $5b67: $cc $00 $7f
	nop                                              ; $5b6a: $00
	inc  c                                           ; $5b6b: $0c
	nop                                              ; $5b6c: $00
	inc  c                                           ; $5b6d: $0c
	nop                                              ; $5b6e: $00
	inc  c                                           ; $5b6f: $0c
	nop                                              ; $5b70: $00
	nop                                              ; $5b71: $00
	nop                                              ; $5b72: $00
	nop                                              ; $5b73: $00
	nop                                              ; $5b74: $00
	nop                                              ; $5b75: $00
	nop                                              ; $5b76: $00
	nop                                              ; $5b77: $00
	nop                                              ; $5b78: $00
	nop                                              ; $5b79: $00
	nop                                              ; $5b7a: $00
	ld   bc, $0700                                   ; $5b7b: $01 $00 $07
	nop                                              ; $5b7e: $00
	nop                                              ; $5b7f: $00
	nop                                              ; $5b80: $00
	nop                                              ; $5b81: $00
	nop                                              ; $5b82: $00
	ld   h, [hl]                                     ; $5b83: $66
	nop                                              ; $5b84: $00
	ld   h, [hl]                                     ; $5b85: $66
	nop                                              ; $5b86: $00
	ld   h, [hl]                                     ; $5b87: $66
	nop                                              ; $5b88: $00
	db   $fc                                         ; $5b89: $fc
	nop                                              ; $5b8a: $00
	ld   h, b                                        ; $5b8b: $60
	nop                                              ; $5b8c: $00
	ld   h, b                                        ; $5b8d: $60
	nop                                              ; $5b8e: $00
	ld   h, c                                        ; $5b8f: $61
	nop                                              ; $5b90: $00
	ld   h, b                                        ; $5b91: $60
	nop                                              ; $5b92: $00
	ld   h, b                                        ; $5b93: $60
	nop                                              ; $5b94: $00
	ld   h, b                                        ; $5b95: $60
	nop                                              ; $5b96: $00
	ldh  [rP1], a                                    ; $5b97: $e0 $00
	ret  nz                                          ; $5b99: $c0

	nop                                              ; $5b9a: $00
	ret  nz                                          ; $5b9b: $c0

	nop                                              ; $5b9c: $00
	nop                                              ; $5b9d: $00
	nop                                              ; $5b9e: $00
	nop                                              ; $5b9f: $00
	nop                                              ; $5ba0: $00
	nop                                              ; $5ba1: $00
	nop                                              ; $5ba2: $00
	ret  nz                                          ; $5ba3: $c0

	nop                                              ; $5ba4: $00
	jp   $c300                                       ; $5ba5: $c3 $00 $c3


	nop                                              ; $5ba8: $00
	rlca                                             ; $5ba9: $07
	nop                                              ; $5baa: $00
	ld   c, $00                                      ; $5bab: $0e $00
	inc  a                                           ; $5bad: $3c
	nop                                              ; $5bae: $00
	db   $fc                                         ; $5baf: $fc
	nop                                              ; $5bb0: $00
	inc  c                                           ; $5bb1: $0c
	nop                                              ; $5bb2: $00
	inc  c                                           ; $5bb3: $0c
	nop                                              ; $5bb4: $00
	inc  c                                           ; $5bb5: $0c
	nop                                              ; $5bb6: $00
	inc  c                                           ; $5bb7: $0c
	nop                                              ; $5bb8: $00
	inc  c                                           ; $5bb9: $0c
	nop                                              ; $5bba: $00
	inc  c                                           ; $5bbb: $0c
	nop                                              ; $5bbc: $00
	inc  c                                           ; $5bbd: $0c
	nop                                              ; $5bbe: $00
	nop                                              ; $5bbf: $00
	nop                                              ; $5bc0: $00
	nop                                              ; $5bc1: $00
	nop                                              ; $5bc2: $00
	nop                                              ; $5bc3: $00
	nop                                              ; $5bc4: $00
	ld   bc, $0100                                   ; $5bc5: $01 $00 $01
	nop                                              ; $5bc8: $00
	ld   bc, $7f00                                   ; $5bc9: $01 $00 $7f
	nop                                              ; $5bcc: $00
	ld   bc, $0100                                   ; $5bcd: $01 $00 $01
	nop                                              ; $5bd0: $00
	ld   bc, $0100                                   ; $5bd1: $01 $00 $01
	nop                                              ; $5bd4: $00
	ld   bc, $0300                                   ; $5bd5: $01 $00 $03
	nop                                              ; $5bd8: $00
	inc  bc                                          ; $5bd9: $03
	nop                                              ; $5bda: $00
	rlca                                             ; $5bdb: $07
	nop                                              ; $5bdc: $00
	ld   a, $00                                      ; $5bdd: $3e $00
	nop                                              ; $5bdf: $00
	nop                                              ; $5be0: $00
	nop                                              ; $5be1: $00
	nop                                              ; $5be2: $00
	nop                                              ; $5be3: $00
	nop                                              ; $5be4: $00
	add  b                                           ; $5be5: $80
	nop                                              ; $5be6: $00
	add  b                                           ; $5be7: $80
	nop                                              ; $5be8: $00
	add  b                                           ; $5be9: $80
	nop                                              ; $5bea: $00
	ldh  [rP1], a                                    ; $5beb: $e0 $00
	add  b                                           ; $5bed: $80
	nop                                              ; $5bee: $00
	add  b                                           ; $5bef: $80
	nop                                              ; $5bf0: $00
	sbc  a                                           ; $5bf1: $9f
	nop                                              ; $5bf2: $00
	add  b                                           ; $5bf3: $80
	nop                                              ; $5bf4: $00
	add  b                                           ; $5bf5: $80
	nop                                              ; $5bf6: $00
	add  b                                           ; $5bf7: $80
	nop                                              ; $5bf8: $00
	nop                                              ; $5bf9: $00
	nop                                              ; $5bfa: $00
	nop                                              ; $5bfb: $00
	nop                                              ; $5bfc: $00
	nop                                              ; $5bfd: $00
	nop                                              ; $5bfe: $00
	nop                                              ; $5bff: $00
	nop                                              ; $5c00: $00
	nop                                              ; $5c01: $00
	nop                                              ; $5c02: $00
	nop                                              ; $5c03: $00
	nop                                              ; $5c04: $00
	nop                                              ; $5c05: $00
	nop                                              ; $5c06: $00
	nop                                              ; $5c07: $00
	nop                                              ; $5c08: $00
	nop                                              ; $5c09: $00
	nop                                              ; $5c0a: $00
	nop                                              ; $5c0b: $00
	nop                                              ; $5c0c: $00
	nop                                              ; $5c0d: $00
	nop                                              ; $5c0e: $00
	nop                                              ; $5c0f: $00
	nop                                              ; $5c10: $00
	nop                                              ; $5c11: $00
	nop                                              ; $5c12: $00
	nop                                              ; $5c13: $00
	nop                                              ; $5c14: $00
	nop                                              ; $5c15: $00
	nop                                              ; $5c16: $00
	nop                                              ; $5c17: $00
	nop                                              ; $5c18: $00
	nop                                              ; $5c19: $00
	nop                                              ; $5c1a: $00
	nop                                              ; $5c1b: $00
	nop                                              ; $5c1c: $00
	nop                                              ; $5c1d: $00
	nop                                              ; $5c1e: $00
	nop                                              ; $5c1f: $00
	nop                                              ; $5c20: $00
	nop                                              ; $5c21: $00
	nop                                              ; $5c22: $00
	nop                                              ; $5c23: $00
	nop                                              ; $5c24: $00
	nop                                              ; $5c25: $00
	nop                                              ; $5c26: $00
	nop                                              ; $5c27: $00
	nop                                              ; $5c28: $00
	nop                                              ; $5c29: $00
	nop                                              ; $5c2a: $00
	nop                                              ; $5c2b: $00
	nop                                              ; $5c2c: $00
	nop                                              ; $5c2d: $00
	nop                                              ; $5c2e: $00
	nop                                              ; $5c2f: $00
	nop                                              ; $5c30: $00
	nop                                              ; $5c31: $00
	nop                                              ; $5c32: $00
	nop                                              ; $5c33: $00
	nop                                              ; $5c34: $00
	nop                                              ; $5c35: $00
	nop                                              ; $5c36: $00
	nop                                              ; $5c37: $00
	nop                                              ; $5c38: $00
	nop                                              ; $5c39: $00
	nop                                              ; $5c3a: $00
	nop                                              ; $5c3b: $00
	nop                                              ; $5c3c: $00
	nop                                              ; $5c3d: $00
	nop                                              ; $5c3e: $00
	nop                                              ; $5c3f: $00
	nop                                              ; $5c40: $00
	nop                                              ; $5c41: $00
	nop                                              ; $5c42: $00
	nop                                              ; $5c43: $00
	nop                                              ; $5c44: $00
	nop                                              ; $5c45: $00
	nop                                              ; $5c46: $00
	nop                                              ; $5c47: $00
	nop                                              ; $5c48: $00
	nop                                              ; $5c49: $00
	nop                                              ; $5c4a: $00
	nop                                              ; $5c4b: $00
	nop                                              ; $5c4c: $00
	nop                                              ; $5c4d: $00
	nop                                              ; $5c4e: $00
	nop                                              ; $5c4f: $00
	nop                                              ; $5c50: $00
	nop                                              ; $5c51: $00
	nop                                              ; $5c52: $00
	nop                                              ; $5c53: $00
	nop                                              ; $5c54: $00
	nop                                              ; $5c55: $00
	nop                                              ; $5c56: $00
	nop                                              ; $5c57: $00
	nop                                              ; $5c58: $00
	nop                                              ; $5c59: $00
	nop                                              ; $5c5a: $00
	nop                                              ; $5c5b: $00
	nop                                              ; $5c5c: $00
	nop                                              ; $5c5d: $00
	nop                                              ; $5c5e: $00
	nop                                              ; $5c5f: $00
	nop                                              ; $5c60: $00
	nop                                              ; $5c61: $00
	nop                                              ; $5c62: $00
	nop                                              ; $5c63: $00
	nop                                              ; $5c64: $00
	nop                                              ; $5c65: $00
	nop                                              ; $5c66: $00
	nop                                              ; $5c67: $00
	nop                                              ; $5c68: $00
	nop                                              ; $5c69: $00
	nop                                              ; $5c6a: $00
	nop                                              ; $5c6b: $00
	nop                                              ; $5c6c: $00
	nop                                              ; $5c6d: $00
	nop                                              ; $5c6e: $00
	nop                                              ; $5c6f: $00
	nop                                              ; $5c70: $00
	nop                                              ; $5c71: $00
	nop                                              ; $5c72: $00
	nop                                              ; $5c73: $00
	nop                                              ; $5c74: $00
	nop                                              ; $5c75: $00
	nop                                              ; $5c76: $00
	nop                                              ; $5c77: $00
	nop                                              ; $5c78: $00
	nop                                              ; $5c79: $00
	nop                                              ; $5c7a: $00
	nop                                              ; $5c7b: $00
	nop                                              ; $5c7c: $00
	nop                                              ; $5c7d: $00
	nop                                              ; $5c7e: $00
	nop                                              ; $5c7f: $00
	nop                                              ; $5c80: $00
	nop                                              ; $5c81: $00
	nop                                              ; $5c82: $00
	nop                                              ; $5c83: $00
	nop                                              ; $5c84: $00
	nop                                              ; $5c85: $00
	nop                                              ; $5c86: $00
	nop                                              ; $5c87: $00
	nop                                              ; $5c88: $00
	nop                                              ; $5c89: $00
	nop                                              ; $5c8a: $00
	nop                                              ; $5c8b: $00
	nop                                              ; $5c8c: $00
	nop                                              ; $5c8d: $00
	nop                                              ; $5c8e: $00
	nop                                              ; $5c8f: $00
	nop                                              ; $5c90: $00
	nop                                              ; $5c91: $00
	nop                                              ; $5c92: $00
	nop                                              ; $5c93: $00
	nop                                              ; $5c94: $00
	nop                                              ; $5c95: $00
	nop                                              ; $5c96: $00
	nop                                              ; $5c97: $00
	nop                                              ; $5c98: $00
	nop                                              ; $5c99: $00
	nop                                              ; $5c9a: $00
	nop                                              ; $5c9b: $00
	nop                                              ; $5c9c: $00
	nop                                              ; $5c9d: $00
	nop                                              ; $5c9e: $00
	nop                                              ; $5c9f: $00
	nop                                              ; $5ca0: $00
	nop                                              ; $5ca1: $00
	nop                                              ; $5ca2: $00
	nop                                              ; $5ca3: $00
	nop                                              ; $5ca4: $00
	nop                                              ; $5ca5: $00
	nop                                              ; $5ca6: $00
	nop                                              ; $5ca7: $00
	nop                                              ; $5ca8: $00
	nop                                              ; $5ca9: $00
	nop                                              ; $5caa: $00
	nop                                              ; $5cab: $00
	nop                                              ; $5cac: $00
	nop                                              ; $5cad: $00
	nop                                              ; $5cae: $00
	nop                                              ; $5caf: $00
	nop                                              ; $5cb0: $00
	nop                                              ; $5cb1: $00
	nop                                              ; $5cb2: $00
	nop                                              ; $5cb3: $00
	nop                                              ; $5cb4: $00
	nop                                              ; $5cb5: $00
	nop                                              ; $5cb6: $00
	nop                                              ; $5cb7: $00
	nop                                              ; $5cb8: $00
	nop                                              ; $5cb9: $00
	nop                                              ; $5cba: $00
	nop                                              ; $5cbb: $00
	nop                                              ; $5cbc: $00
	nop                                              ; $5cbd: $00
	nop                                              ; $5cbe: $00
	nop                                              ; $5cbf: $00
	nop                                              ; $5cc0: $00
	nop                                              ; $5cc1: $00
	nop                                              ; $5cc2: $00
	nop                                              ; $5cc3: $00
	nop                                              ; $5cc4: $00
	nop                                              ; $5cc5: $00
	nop                                              ; $5cc6: $00
	nop                                              ; $5cc7: $00
	nop                                              ; $5cc8: $00
	nop                                              ; $5cc9: $00
	nop                                              ; $5cca: $00
	nop                                              ; $5ccb: $00
	nop                                              ; $5ccc: $00
	nop                                              ; $5ccd: $00
	nop                                              ; $5cce: $00
	nop                                              ; $5ccf: $00
	nop                                              ; $5cd0: $00
	nop                                              ; $5cd1: $00
	nop                                              ; $5cd2: $00
	nop                                              ; $5cd3: $00
	nop                                              ; $5cd4: $00
	nop                                              ; $5cd5: $00
	nop                                              ; $5cd6: $00
	nop                                              ; $5cd7: $00
	nop                                              ; $5cd8: $00
	nop                                              ; $5cd9: $00
	nop                                              ; $5cda: $00
	nop                                              ; $5cdb: $00
	nop                                              ; $5cdc: $00
	nop                                              ; $5cdd: $00
	nop                                              ; $5cde: $00
	nop                                              ; $5cdf: $00
	nop                                              ; $5ce0: $00
	nop                                              ; $5ce1: $00
	nop                                              ; $5ce2: $00
	nop                                              ; $5ce3: $00
	nop                                              ; $5ce4: $00
	nop                                              ; $5ce5: $00
	nop                                              ; $5ce6: $00
	nop                                              ; $5ce7: $00
	nop                                              ; $5ce8: $00
	nop                                              ; $5ce9: $00
	nop                                              ; $5cea: $00
	nop                                              ; $5ceb: $00
	nop                                              ; $5cec: $00
	nop                                              ; $5ced: $00
	nop                                              ; $5cee: $00
	nop                                              ; $5cef: $00
	nop                                              ; $5cf0: $00
	nop                                              ; $5cf1: $00
	nop                                              ; $5cf2: $00
	nop                                              ; $5cf3: $00
	nop                                              ; $5cf4: $00
	nop                                              ; $5cf5: $00
	nop                                              ; $5cf6: $00
	nop                                              ; $5cf7: $00
	nop                                              ; $5cf8: $00
	nop                                              ; $5cf9: $00
	nop                                              ; $5cfa: $00
	nop                                              ; $5cfb: $00
	nop                                              ; $5cfc: $00
	nop                                              ; $5cfd: $00
	nop                                              ; $5cfe: $00
	nop                                              ; $5cff: $00
	nop                                              ; $5d00: $00
	nop                                              ; $5d01: $00
	nop                                              ; $5d02: $00
	ld   bc, $1f00                                   ; $5d03: $01 $00 $1f
	nop                                              ; $5d06: $00
	ld   bc, $0700                                   ; $5d07: $01 $00 $07
	nop                                              ; $5d0a: $00
	dec  e                                           ; $5d0b: $1d
	nop                                              ; $5d0c: $00
	nop                                              ; $5d0d: $00
	nop                                              ; $5d0e: $00
	rlca                                             ; $5d0f: $07
	nop                                              ; $5d10: $00
	ld   b, $00                                      ; $5d11: $06 $00
	rlca                                             ; $5d13: $07
	nop                                              ; $5d14: $00
	ld   b, $00                                      ; $5d15: $06 $00
	rlca                                             ; $5d17: $07
	nop                                              ; $5d18: $00
	ld   b, $00                                      ; $5d19: $06 $00
	ld   b, $00                                      ; $5d1b: $06 $00
	ld   b, $00                                      ; $5d1d: $06 $00
	nop                                              ; $5d1f: $00
	nop                                              ; $5d20: $00
	nop                                              ; $5d21: $00
	nop                                              ; $5d22: $00
	or   b                                           ; $5d23: $b0
	nop                                              ; $5d24: $00
	or   a                                           ; $5d25: $b7
	nop                                              ; $5d26: $00
	cp   h                                           ; $5d27: $bc
	nop                                              ; $5d28: $00
	or   c                                           ; $5d29: $b1
	nop                                              ; $5d2a: $00
	sbc  a                                           ; $5d2b: $9f
	nop                                              ; $5d2c: $00
	nop                                              ; $5d2d: $00
	nop                                              ; $5d2e: $00
	cp   $00                                         ; $5d2f: $fe $00
	ld   b, $00                                      ; $5d31: $06 $00
	cp   $00                                         ; $5d33: $fe $00
	ld   b, $00                                      ; $5d35: $06 $00
	cp   $00                                         ; $5d37: $fe $00
	ld   b, $00                                      ; $5d39: $06 $00
	ld   b, $00                                      ; $5d3b: $06 $00
	ld   e, $00                                      ; $5d3d: $1e $00
	nop                                              ; $5d3f: $00
	nop                                              ; $5d40: $00
	nop                                              ; $5d41: $00
	nop                                              ; $5d42: $00
	ccf                                              ; $5d43: $3f
	nop                                              ; $5d44: $00
	jr   nc, jr_032_5d47                             ; $5d45: $30 $00

jr_032_5d47:
	ccf                                              ; $5d47: $3f
	nop                                              ; $5d48: $00
	jr   nc, jr_032_5d4b                             ; $5d49: $30 $00

jr_032_5d4b:
	ccf                                              ; $5d4b: $3f
	nop                                              ; $5d4c: $00
	inc  bc                                          ; $5d4d: $03
	nop                                              ; $5d4e: $00
	ld   a, a                                        ; $5d4f: $7f
	nop                                              ; $5d50: $00
	nop                                              ; $5d51: $00
	nop                                              ; $5d52: $00
	ccf                                              ; $5d53: $3f
	nop                                              ; $5d54: $00
	jr   nc, jr_032_5d57                             ; $5d55: $30 $00

jr_032_5d57:
	ccf                                              ; $5d57: $3f
	nop                                              ; $5d58: $00
	inc  bc                                          ; $5d59: $03
	nop                                              ; $5d5a: $00
	inc  sp                                          ; $5d5b: $33
	nop                                              ; $5d5c: $00
	ld   h, a                                        ; $5d5d: $67
	nop                                              ; $5d5e: $00
	nop                                              ; $5d5f: $00
	nop                                              ; $5d60: $00
	nop                                              ; $5d61: $00
	nop                                              ; $5d62: $00
	ldh  a, [rP1]                                    ; $5d63: $f0 $00
	jr   nc, jr_032_5d67                             ; $5d65: $30 $00

jr_032_5d67:
	ldh  a, [rP1]                                    ; $5d67: $f0 $00
	jr   nc, jr_032_5d6b                             ; $5d69: $30 $00

jr_032_5d6b:
	ldh  a, [rP1]                                    ; $5d6b: $f0 $00
	nop                                              ; $5d6d: $00
	nop                                              ; $5d6e: $00
	ld   hl, sp+$00                                  ; $5d6f: $f8 $00
	ld   bc, $f100                                   ; $5d71: $01 $00 $f1
	nop                                              ; $5d74: $00
	jr   nc, jr_032_5d77                             ; $5d75: $30 $00

jr_032_5d77:
	ldh  a, [rP1]                                    ; $5d77: $f0 $00
	nop                                              ; $5d79: $00
	nop                                              ; $5d7a: $00
	ld   h, b                                        ; $5d7b: $60
	nop                                              ; $5d7c: $00
	jr   c, jr_032_5d7f                              ; $5d7d: $38 $00

jr_032_5d7f:
	nop                                              ; $5d7f: $00
	nop                                              ; $5d80: $00
	nop                                              ; $5d81: $00
	nop                                              ; $5d82: $00
	ld   b, $00                                      ; $5d83: $06 $00
	ld   b, $00                                      ; $5d85: $06 $00
	ld   c, $00                                      ; $5d87: $0e $00
	inc  c                                           ; $5d89: $0c
	nop                                              ; $5d8a: $00
	inc  e                                           ; $5d8b: $1c
	nop                                              ; $5d8c: $00
	dec  a                                           ; $5d8d: $3d
	nop                                              ; $5d8e: $00
	inc  c                                           ; $5d8f: $0c
	nop                                              ; $5d90: $00
	adc  h                                           ; $5d91: $8c
	nop                                              ; $5d92: $00
	adc  h                                           ; $5d93: $8c
	nop                                              ; $5d94: $00
	inc  c                                           ; $5d95: $0c
	nop                                              ; $5d96: $00
	inc  c                                           ; $5d97: $0c
	nop                                              ; $5d98: $00
	inc  c                                           ; $5d99: $0c
	nop                                              ; $5d9a: $00
	inc  c                                           ; $5d9b: $0c
	nop                                              ; $5d9c: $00
	inc  c                                           ; $5d9d: $0c
	nop                                              ; $5d9e: $00
	nop                                              ; $5d9f: $00
	nop                                              ; $5da0: $00
	nop                                              ; $5da1: $00
	nop                                              ; $5da2: $00
	ld   h, b                                        ; $5da3: $60
	nop                                              ; $5da4: $00
	ld   h, b                                        ; $5da5: $60
	nop                                              ; $5da6: $00
	ld   h, b                                        ; $5da7: $60
	nop                                              ; $5da8: $00
	rst  $38                                         ; $5da9: $ff
	nop                                              ; $5daa: $00
	ret  c                                           ; $5dab: $d8

	nop                                              ; $5dac: $00
	sbc  b                                           ; $5dad: $98
	nop                                              ; $5dae: $00
	rra                                              ; $5daf: $1f
	nop                                              ; $5db0: $00
	jr   jr_032_5db3                                 ; $5db1: $18 $00

jr_032_5db3:
	jr   jr_032_5db5                                 ; $5db3: $18 $00

jr_032_5db5:
	rra                                              ; $5db5: $1f
	nop                                              ; $5db6: $00
	jr   jr_032_5db9                                 ; $5db7: $18 $00

jr_032_5db9:
	jr   jr_032_5dbb                                 ; $5db9: $18 $00

jr_032_5dbb:
	jr   jr_032_5dbd                                 ; $5dbb: $18 $00

jr_032_5dbd:
	jr   jr_032_5dbf                                 ; $5dbd: $18 $00

jr_032_5dbf:
	nop                                              ; $5dbf: $00
	nop                                              ; $5dc0: $00
	nop                                              ; $5dc1: $00
	nop                                              ; $5dc2: $00
	nop                                              ; $5dc3: $00
	nop                                              ; $5dc4: $00
	rrca                                             ; $5dc5: $0f
	nop                                              ; $5dc6: $00
	nop                                              ; $5dc7: $00
	nop                                              ; $5dc8: $00
	add  a                                           ; $5dc9: $87
	nop                                              ; $5dca: $00
	ld   [hl], $00                                   ; $5dcb: $36 $00
	ld   [hl], $00                                   ; $5dcd: $36 $00
	or   [hl]                                        ; $5dcf: $b6
	nop                                              ; $5dd0: $00
	scf                                              ; $5dd1: $37
	nop                                              ; $5dd2: $00
	ld   [hl], $00                                   ; $5dd3: $36 $00
	or   [hl]                                        ; $5dd5: $b6
	nop                                              ; $5dd6: $00
	ld   [hl], $00                                   ; $5dd7: $36 $00
	scf                                              ; $5dd9: $37
	nop                                              ; $5dda: $00
	jr   nc, jr_032_5ddd                             ; $5ddb: $30 $00

jr_032_5ddd:
	ccf                                              ; $5ddd: $3f
	nop                                              ; $5dde: $00
	nop                                              ; $5ddf: $00
	nop                                              ; $5de0: $00
	nop                                              ; $5de1: $00
	nop                                              ; $5de2: $00
	nop                                              ; $5de3: $00
	nop                                              ; $5de4: $00
	db   $fc                                         ; $5de5: $fc
	nop                                              ; $5de6: $00
	ret  nz                                          ; $5de7: $c0

	nop                                              ; $5de8: $00
	ld   hl, sp+$00                                  ; $5de9: $f8 $00
	db   $db                                         ; $5deb: $db
	nop                                              ; $5dec: $00
	db   $db                                         ; $5ded: $db
	nop                                              ; $5dee: $00
	db   $db                                         ; $5def: $db
	nop                                              ; $5df0: $00
	ei                                               ; $5df1: $fb
	nop                                              ; $5df2: $00
	db   $db                                         ; $5df3: $db
	nop                                              ; $5df4: $00
	db   $db                                         ; $5df5: $db
	nop                                              ; $5df6: $00
	db   $db                                         ; $5df7: $db
	nop                                              ; $5df8: $00
	ei                                               ; $5df9: $fb
	nop                                              ; $5dfa: $00
	inc  bc                                          ; $5dfb: $03
	nop                                              ; $5dfc: $00
	rst  $38                                         ; $5dfd: $ff
	nop                                              ; $5dfe: $00
	nop                                              ; $5dff: $00
	nop                                              ; $5e00: $00
	nop                                              ; $5e01: $00
	nop                                              ; $5e02: $00
	nop                                              ; $5e03: $00
	nop                                              ; $5e04: $00
	nop                                              ; $5e05: $00
	nop                                              ; $5e06: $00
	nop                                              ; $5e07: $00
	nop                                              ; $5e08: $00
	nop                                              ; $5e09: $00
	nop                                              ; $5e0a: $00
	nop                                              ; $5e0b: $00
	nop                                              ; $5e0c: $00
	nop                                              ; $5e0d: $00
	nop                                              ; $5e0e: $00
	nop                                              ; $5e0f: $00
	nop                                              ; $5e10: $00
	nop                                              ; $5e11: $00
	nop                                              ; $5e12: $00
	nop                                              ; $5e13: $00
	nop                                              ; $5e14: $00
	nop                                              ; $5e15: $00
	nop                                              ; $5e16: $00
	nop                                              ; $5e17: $00
	nop                                              ; $5e18: $00
	nop                                              ; $5e19: $00
	nop                                              ; $5e1a: $00
	nop                                              ; $5e1b: $00
	nop                                              ; $5e1c: $00
	nop                                              ; $5e1d: $00
	nop                                              ; $5e1e: $00
	nop                                              ; $5e1f: $00
	nop                                              ; $5e20: $00
	nop                                              ; $5e21: $00
	nop                                              ; $5e22: $00
	nop                                              ; $5e23: $00
	nop                                              ; $5e24: $00
	nop                                              ; $5e25: $00
	nop                                              ; $5e26: $00
	nop                                              ; $5e27: $00
	nop                                              ; $5e28: $00
	nop                                              ; $5e29: $00
	nop                                              ; $5e2a: $00
	nop                                              ; $5e2b: $00
	nop                                              ; $5e2c: $00
	nop                                              ; $5e2d: $00
	nop                                              ; $5e2e: $00
	nop                                              ; $5e2f: $00
	nop                                              ; $5e30: $00
	nop                                              ; $5e31: $00
	nop                                              ; $5e32: $00
	nop                                              ; $5e33: $00
	nop                                              ; $5e34: $00
	nop                                              ; $5e35: $00
	nop                                              ; $5e36: $00
	nop                                              ; $5e37: $00
	nop                                              ; $5e38: $00
	nop                                              ; $5e39: $00
	nop                                              ; $5e3a: $00
	nop                                              ; $5e3b: $00
	nop                                              ; $5e3c: $00
	nop                                              ; $5e3d: $00
	nop                                              ; $5e3e: $00
	nop                                              ; $5e3f: $00
	nop                                              ; $5e40: $00
	nop                                              ; $5e41: $00
	nop                                              ; $5e42: $00
	nop                                              ; $5e43: $00
	nop                                              ; $5e44: $00
	nop                                              ; $5e45: $00
	nop                                              ; $5e46: $00
	nop                                              ; $5e47: $00
	nop                                              ; $5e48: $00
	nop                                              ; $5e49: $00
	nop                                              ; $5e4a: $00
	nop                                              ; $5e4b: $00
	nop                                              ; $5e4c: $00
	nop                                              ; $5e4d: $00
	nop                                              ; $5e4e: $00
	nop                                              ; $5e4f: $00
	nop                                              ; $5e50: $00
	nop                                              ; $5e51: $00
	nop                                              ; $5e52: $00
	nop                                              ; $5e53: $00
	nop                                              ; $5e54: $00
	nop                                              ; $5e55: $00
	nop                                              ; $5e56: $00
	nop                                              ; $5e57: $00
	nop                                              ; $5e58: $00
	nop                                              ; $5e59: $00
	nop                                              ; $5e5a: $00
	nop                                              ; $5e5b: $00
	nop                                              ; $5e5c: $00
	nop                                              ; $5e5d: $00
	nop                                              ; $5e5e: $00
	nop                                              ; $5e5f: $00
	nop                                              ; $5e60: $00
	nop                                              ; $5e61: $00
	nop                                              ; $5e62: $00
	nop                                              ; $5e63: $00
	nop                                              ; $5e64: $00
	nop                                              ; $5e65: $00
	nop                                              ; $5e66: $00
	nop                                              ; $5e67: $00
	nop                                              ; $5e68: $00
	nop                                              ; $5e69: $00
	nop                                              ; $5e6a: $00
	nop                                              ; $5e6b: $00
	nop                                              ; $5e6c: $00
	nop                                              ; $5e6d: $00
	nop                                              ; $5e6e: $00
	nop                                              ; $5e6f: $00
	nop                                              ; $5e70: $00
	nop                                              ; $5e71: $00
	nop                                              ; $5e72: $00
	nop                                              ; $5e73: $00
	nop                                              ; $5e74: $00
	nop                                              ; $5e75: $00
	nop                                              ; $5e76: $00
	nop                                              ; $5e77: $00
	nop                                              ; $5e78: $00
	nop                                              ; $5e79: $00
	nop                                              ; $5e7a: $00
	nop                                              ; $5e7b: $00
	nop                                              ; $5e7c: $00
	nop                                              ; $5e7d: $00
	nop                                              ; $5e7e: $00
	nop                                              ; $5e7f: $00
	nop                                              ; $5e80: $00
	nop                                              ; $5e81: $00
	nop                                              ; $5e82: $00
	nop                                              ; $5e83: $00
	nop                                              ; $5e84: $00
	nop                                              ; $5e85: $00
	nop                                              ; $5e86: $00
	nop                                              ; $5e87: $00
	nop                                              ; $5e88: $00
	nop                                              ; $5e89: $00
	nop                                              ; $5e8a: $00
	nop                                              ; $5e8b: $00
	nop                                              ; $5e8c: $00
	nop                                              ; $5e8d: $00
	nop                                              ; $5e8e: $00
	nop                                              ; $5e8f: $00
	nop                                              ; $5e90: $00
	nop                                              ; $5e91: $00
	nop                                              ; $5e92: $00
	nop                                              ; $5e93: $00
	nop                                              ; $5e94: $00
	nop                                              ; $5e95: $00
	nop                                              ; $5e96: $00
	nop                                              ; $5e97: $00
	nop                                              ; $5e98: $00
	nop                                              ; $5e99: $00
	nop                                              ; $5e9a: $00
	nop                                              ; $5e9b: $00
	nop                                              ; $5e9c: $00
	nop                                              ; $5e9d: $00
	nop                                              ; $5e9e: $00
	nop                                              ; $5e9f: $00
	nop                                              ; $5ea0: $00
	nop                                              ; $5ea1: $00
	nop                                              ; $5ea2: $00
	nop                                              ; $5ea3: $00
	nop                                              ; $5ea4: $00
	nop                                              ; $5ea5: $00
	nop                                              ; $5ea6: $00
	nop                                              ; $5ea7: $00
	nop                                              ; $5ea8: $00
	nop                                              ; $5ea9: $00
	nop                                              ; $5eaa: $00
	nop                                              ; $5eab: $00
	nop                                              ; $5eac: $00
	nop                                              ; $5ead: $00
	nop                                              ; $5eae: $00
	nop                                              ; $5eaf: $00
	nop                                              ; $5eb0: $00
	nop                                              ; $5eb1: $00
	nop                                              ; $5eb2: $00
	nop                                              ; $5eb3: $00
	nop                                              ; $5eb4: $00
	nop                                              ; $5eb5: $00
	nop                                              ; $5eb6: $00
	nop                                              ; $5eb7: $00
	nop                                              ; $5eb8: $00
	nop                                              ; $5eb9: $00
	nop                                              ; $5eba: $00
	nop                                              ; $5ebb: $00
	nop                                              ; $5ebc: $00
	nop                                              ; $5ebd: $00
	nop                                              ; $5ebe: $00
	nop                                              ; $5ebf: $00
	nop                                              ; $5ec0: $00
	nop                                              ; $5ec1: $00
	nop                                              ; $5ec2: $00
	nop                                              ; $5ec3: $00
	nop                                              ; $5ec4: $00
	nop                                              ; $5ec5: $00
	nop                                              ; $5ec6: $00
	nop                                              ; $5ec7: $00
	nop                                              ; $5ec8: $00
	nop                                              ; $5ec9: $00
	nop                                              ; $5eca: $00
	nop                                              ; $5ecb: $00
	nop                                              ; $5ecc: $00
	nop                                              ; $5ecd: $00
	nop                                              ; $5ece: $00
	nop                                              ; $5ecf: $00
	nop                                              ; $5ed0: $00
	nop                                              ; $5ed1: $00
	nop                                              ; $5ed2: $00
	nop                                              ; $5ed3: $00
	nop                                              ; $5ed4: $00
	nop                                              ; $5ed5: $00
	nop                                              ; $5ed6: $00
	nop                                              ; $5ed7: $00
	nop                                              ; $5ed8: $00
	nop                                              ; $5ed9: $00
	nop                                              ; $5eda: $00
	nop                                              ; $5edb: $00
	nop                                              ; $5edc: $00
	nop                                              ; $5edd: $00
	nop                                              ; $5ede: $00
	nop                                              ; $5edf: $00
	nop                                              ; $5ee0: $00
	nop                                              ; $5ee1: $00
	nop                                              ; $5ee2: $00
	nop                                              ; $5ee3: $00
	nop                                              ; $5ee4: $00
	nop                                              ; $5ee5: $00
	nop                                              ; $5ee6: $00
	nop                                              ; $5ee7: $00
	nop                                              ; $5ee8: $00
	nop                                              ; $5ee9: $00
	nop                                              ; $5eea: $00
	nop                                              ; $5eeb: $00
	nop                                              ; $5eec: $00
	nop                                              ; $5eed: $00
	nop                                              ; $5eee: $00
	nop                                              ; $5eef: $00
	nop                                              ; $5ef0: $00
	nop                                              ; $5ef1: $00
	nop                                              ; $5ef2: $00
	nop                                              ; $5ef3: $00
	nop                                              ; $5ef4: $00
	nop                                              ; $5ef5: $00
	nop                                              ; $5ef6: $00
	nop                                              ; $5ef7: $00
	nop                                              ; $5ef8: $00
	nop                                              ; $5ef9: $00
	nop                                              ; $5efa: $00
	nop                                              ; $5efb: $00
	nop                                              ; $5efc: $00
	nop                                              ; $5efd: $00
	nop                                              ; $5efe: $00
	nop                                              ; $5eff: $00
	nop                                              ; $5f00: $00
	nop                                              ; $5f01: $00
	nop                                              ; $5f02: $00
	nop                                              ; $5f03: $00
	nop                                              ; $5f04: $00
	nop                                              ; $5f05: $00
	nop                                              ; $5f06: $00
	nop                                              ; $5f07: $00
	nop                                              ; $5f08: $00
	nop                                              ; $5f09: $00
	nop                                              ; $5f0a: $00
	nop                                              ; $5f0b: $00
	nop                                              ; $5f0c: $00
	nop                                              ; $5f0d: $00
	nop                                              ; $5f0e: $00
	nop                                              ; $5f0f: $00
	nop                                              ; $5f10: $00
	nop                                              ; $5f11: $00
	nop                                              ; $5f12: $00
	nop                                              ; $5f13: $00
	nop                                              ; $5f14: $00
	nop                                              ; $5f15: $00
	nop                                              ; $5f16: $00
	nop                                              ; $5f17: $00
	nop                                              ; $5f18: $00
	nop                                              ; $5f19: $00
	nop                                              ; $5f1a: $00
	nop                                              ; $5f1b: $00
	nop                                              ; $5f1c: $00
	nop                                              ; $5f1d: $00
	nop                                              ; $5f1e: $00
	nop                                              ; $5f1f: $00
	nop                                              ; $5f20: $00
	nop                                              ; $5f21: $00
	nop                                              ; $5f22: $00
	nop                                              ; $5f23: $00
	nop                                              ; $5f24: $00
	nop                                              ; $5f25: $00
	nop                                              ; $5f26: $00
	nop                                              ; $5f27: $00
	nop                                              ; $5f28: $00
	nop                                              ; $5f29: $00
	nop                                              ; $5f2a: $00
	nop                                              ; $5f2b: $00
	nop                                              ; $5f2c: $00
	nop                                              ; $5f2d: $00
	nop                                              ; $5f2e: $00
	nop                                              ; $5f2f: $00
	nop                                              ; $5f30: $00
	nop                                              ; $5f31: $00
	nop                                              ; $5f32: $00
	nop                                              ; $5f33: $00
	nop                                              ; $5f34: $00
	nop                                              ; $5f35: $00
	nop                                              ; $5f36: $00
	nop                                              ; $5f37: $00
	nop                                              ; $5f38: $00
	nop                                              ; $5f39: $00
	nop                                              ; $5f3a: $00
	nop                                              ; $5f3b: $00
	nop                                              ; $5f3c: $00
	nop                                              ; $5f3d: $00
	nop                                              ; $5f3e: $00
	nop                                              ; $5f3f: $00
	nop                                              ; $5f40: $00
	nop                                              ; $5f41: $00
	nop                                              ; $5f42: $00
	inc  bc                                          ; $5f43: $03
	nop                                              ; $5f44: $00
	inc  bc                                          ; $5f45: $03
	nop                                              ; $5f46: $00
	inc  bc                                          ; $5f47: $03
	nop                                              ; $5f48: $00
	rra                                              ; $5f49: $1f
	nop                                              ; $5f4a: $00
	inc  bc                                          ; $5f4b: $03
	nop                                              ; $5f4c: $00
	inc  bc                                          ; $5f4d: $03
	nop                                              ; $5f4e: $00
	inc  bc                                          ; $5f4f: $03
	nop                                              ; $5f50: $00
	nop                                              ; $5f51: $00
	nop                                              ; $5f52: $00
	nop                                              ; $5f53: $00
	nop                                              ; $5f54: $00
	nop                                              ; $5f55: $00
	nop                                              ; $5f56: $00
	nop                                              ; $5f57: $00
	nop                                              ; $5f58: $00
	nop                                              ; $5f59: $00
	nop                                              ; $5f5a: $00
	nop                                              ; $5f5b: $00
	nop                                              ; $5f5c: $00
	ld   bc, $0000                                   ; $5f5d: $01 $00 $00
	nop                                              ; $5f60: $00
	nop                                              ; $5f61: $00
	nop                                              ; $5f62: $00
	jr   jr_032_5f65                                 ; $5f63: $18 $00

jr_032_5f65:
	jr   jr_032_5f67                                 ; $5f65: $18 $00

jr_032_5f67:
	jr   jr_032_5f69                                 ; $5f67: $18 $00

jr_032_5f69:
	rst  $38                                         ; $5f69: $ff
	nop                                              ; $5f6a: $00
	jr   jr_032_5f6d                                 ; $5f6b: $18 $00

jr_032_5f6d:
	jr   jr_032_5f6f                                 ; $5f6d: $18 $00

jr_032_5f6f:
	jr   jr_032_5f71                                 ; $5f6f: $18 $00

jr_032_5f71:
	jr   jr_032_5f73                                 ; $5f71: $18 $00

jr_032_5f73:
	jr   jr_032_5f75                                 ; $5f73: $18 $00

jr_032_5f75:
	jr   jr_032_5f77                                 ; $5f75: $18 $00

jr_032_5f77:
	jr   c, jr_032_5f79                              ; $5f77: $38 $00

jr_032_5f79:
	jr   nc, jr_032_5f7b                             ; $5f79: $30 $00

jr_032_5f7b:
	ld   [hl], b                                     ; $5f7b: $70
	nop                                              ; $5f7c: $00
	ret  nz                                          ; $5f7d: $c0

	nop                                              ; $5f7e: $00
	nop                                              ; $5f7f: $00
	nop                                              ; $5f80: $00
	nop                                              ; $5f81: $00
	nop                                              ; $5f82: $00
	ld   b, $00                                      ; $5f83: $06 $00
	ld   b, $00                                      ; $5f85: $06 $00
	ld   b, $00                                      ; $5f87: $06 $00
	ld   a, a                                        ; $5f89: $7f
	nop                                              ; $5f8a: $00
	ld   h, b                                        ; $5f8b: $60
	nop                                              ; $5f8c: $00
	ld   h, b                                        ; $5f8d: $60
	nop                                              ; $5f8e: $00
	nop                                              ; $5f8f: $00
	nop                                              ; $5f90: $00
	nop                                              ; $5f91: $00
	nop                                              ; $5f92: $00
	nop                                              ; $5f93: $00
	nop                                              ; $5f94: $00
	nop                                              ; $5f95: $00
	nop                                              ; $5f96: $00
	nop                                              ; $5f97: $00
	nop                                              ; $5f98: $00
	ld   bc, $0300                                   ; $5f99: $01 $00 $03
	nop                                              ; $5f9c: $00
	ld   c, $00                                      ; $5f9d: $0e $00
	nop                                              ; $5f9f: $00
	nop                                              ; $5fa0: $00
	nop                                              ; $5fa1: $00
	nop                                              ; $5fa2: $00
	nop                                              ; $5fa3: $00
	nop                                              ; $5fa4: $00
	nop                                              ; $5fa5: $00
	nop                                              ; $5fa6: $00
	nop                                              ; $5fa7: $00
	nop                                              ; $5fa8: $00
	db   $ec                                         ; $5fa9: $ec
	nop                                              ; $5faa: $00
	ld   l, [hl]                                     ; $5fab: $6e
	nop                                              ; $5fac: $00
	ld   h, a                                        ; $5fad: $67
	nop                                              ; $5fae: $00
	ld   h, b                                        ; $5faf: $60
	nop                                              ; $5fb0: $00
	ld   h, b                                        ; $5fb1: $60
	nop                                              ; $5fb2: $00
	ld   h, b                                        ; $5fb3: $60
	nop                                              ; $5fb4: $00
	ldh  [rP1], a                                    ; $5fb5: $e0 $00
	ret  nz                                          ; $5fb7: $c0

	nop                                              ; $5fb8: $00
	ret  nz                                          ; $5fb9: $c0

	nop                                              ; $5fba: $00
	add  b                                           ; $5fbb: $80
	nop                                              ; $5fbc: $00
	rrca                                             ; $5fbd: $0f
	nop                                              ; $5fbe: $00
	nop                                              ; $5fbf: $00
	nop                                              ; $5fc0: $00
	nop                                              ; $5fc1: $00
	nop                                              ; $5fc2: $00
	nop                                              ; $5fc3: $00
	nop                                              ; $5fc4: $00
	inc  c                                           ; $5fc5: $0c
	nop                                              ; $5fc6: $00
	inc  c                                           ; $5fc7: $0c
	nop                                              ; $5fc8: $00
	inc  c                                           ; $5fc9: $0c
	nop                                              ; $5fca: $00
	inc  c                                           ; $5fcb: $0c
	nop                                              ; $5fcc: $00
	adc  h                                           ; $5fcd: $8c
	nop                                              ; $5fce: $00
	inc  c                                           ; $5fcf: $0c
	nop                                              ; $5fd0: $00
	inc  c                                           ; $5fd1: $0c
	nop                                              ; $5fd2: $00
	inc  c                                           ; $5fd3: $0c
	nop                                              ; $5fd4: $00
	inc  e                                           ; $5fd5: $1c
	nop                                              ; $5fd6: $00
	jr   jr_032_5fd9                                 ; $5fd7: $18 $00

jr_032_5fd9:
	jr   c, jr_032_5fdb                              ; $5fd9: $38 $00

jr_032_5fdb:
	ldh  a, [rP1]                                    ; $5fdb: $f0 $00
	ret  nz                                          ; $5fdd: $c0

	nop                                              ; $5fde: $00
	nop                                              ; $5fdf: $00
	nop                                              ; $5fe0: $00
	nop                                              ; $5fe1: $00
	nop                                              ; $5fe2: $00
	dec  de                                          ; $5fe3: $1b
	nop                                              ; $5fe4: $00
	db   $db                                         ; $5fe5: $db
	nop                                              ; $5fe6: $00
	db   $db                                         ; $5fe7: $db
	nop                                              ; $5fe8: $00
	ret  nz                                          ; $5fe9: $c0

	nop                                              ; $5fea: $00
	ret  nz                                          ; $5feb: $c0

	nop                                              ; $5fec: $00
	ret  nz                                          ; $5fed: $c0

	nop                                              ; $5fee: $00
	ldh  a, [rP1]                                    ; $5fef: $f0 $00
	call c, wType0AnimSpriteXPosRelativeTo                                    ; $5ff1: $dc $00 $c6
	nop                                              ; $5ff4: $00
	ret  nz                                          ; $5ff5: $c0

	nop                                              ; $5ff6: $00
	ret  nz                                          ; $5ff7: $c0

	nop                                              ; $5ff8: $00
	ret  nz                                          ; $5ff9: $c0

	nop                                              ; $5ffa: $00
	ret  nz                                          ; $5ffb: $c0

	nop                                              ; $5ffc: $00
	ret  nz                                          ; $5ffd: $c0

	nop                                              ; $5ffe: $00
	nop                                              ; $5fff: $00
	nop                                              ; $6000: $00
	nop                                              ; $6001: $00
	nop                                              ; $6002: $00
	nop                                              ; $6003: $00
	nop                                              ; $6004: $00
	nop                                              ; $6005: $00
	nop                                              ; $6006: $00
	nop                                              ; $6007: $00
	nop                                              ; $6008: $00
	nop                                              ; $6009: $00
	nop                                              ; $600a: $00
	nop                                              ; $600b: $00
	nop                                              ; $600c: $00
	nop                                              ; $600d: $00
	nop                                              ; $600e: $00
	nop                                              ; $600f: $00
	nop                                              ; $6010: $00
	nop                                              ; $6011: $00
	nop                                              ; $6012: $00
	nop                                              ; $6013: $00
	nop                                              ; $6014: $00
	nop                                              ; $6015: $00
	nop                                              ; $6016: $00
	nop                                              ; $6017: $00
	nop                                              ; $6018: $00
	nop                                              ; $6019: $00
	nop                                              ; $601a: $00
	nop                                              ; $601b: $00
	nop                                              ; $601c: $00
	nop                                              ; $601d: $00
	nop                                              ; $601e: $00
	nop                                              ; $601f: $00
	nop                                              ; $6020: $00
	nop                                              ; $6021: $00
	nop                                              ; $6022: $00
	nop                                              ; $6023: $00
	nop                                              ; $6024: $00
	nop                                              ; $6025: $00
	nop                                              ; $6026: $00
	nop                                              ; $6027: $00
	nop                                              ; $6028: $00
	nop                                              ; $6029: $00
	nop                                              ; $602a: $00
	nop                                              ; $602b: $00
	nop                                              ; $602c: $00
	nop                                              ; $602d: $00
	nop                                              ; $602e: $00
	nop                                              ; $602f: $00
	nop                                              ; $6030: $00
	nop                                              ; $6031: $00
	nop                                              ; $6032: $00
	nop                                              ; $6033: $00
	nop                                              ; $6034: $00
	nop                                              ; $6035: $00
	nop                                              ; $6036: $00
	nop                                              ; $6037: $00
	nop                                              ; $6038: $00
	nop                                              ; $6039: $00
	nop                                              ; $603a: $00
	nop                                              ; $603b: $00
	nop                                              ; $603c: $00
	nop                                              ; $603d: $00
	nop                                              ; $603e: $00
	nop                                              ; $603f: $00
	nop                                              ; $6040: $00
	nop                                              ; $6041: $00
	nop                                              ; $6042: $00
	nop                                              ; $6043: $00
	nop                                              ; $6044: $00
	nop                                              ; $6045: $00
	nop                                              ; $6046: $00
	nop                                              ; $6047: $00
	nop                                              ; $6048: $00
	nop                                              ; $6049: $00
	nop                                              ; $604a: $00
	nop                                              ; $604b: $00
	nop                                              ; $604c: $00
	nop                                              ; $604d: $00
	nop                                              ; $604e: $00
	nop                                              ; $604f: $00
	nop                                              ; $6050: $00
	nop                                              ; $6051: $00
	nop                                              ; $6052: $00
	nop                                              ; $6053: $00
	nop                                              ; $6054: $00
	nop                                              ; $6055: $00
	nop                                              ; $6056: $00
	nop                                              ; $6057: $00
	nop                                              ; $6058: $00
	nop                                              ; $6059: $00
	nop                                              ; $605a: $00
	nop                                              ; $605b: $00
	nop                                              ; $605c: $00
	nop                                              ; $605d: $00
	nop                                              ; $605e: $00
	nop                                              ; $605f: $00
	nop                                              ; $6060: $00
	nop                                              ; $6061: $00
	nop                                              ; $6062: $00
	nop                                              ; $6063: $00
	nop                                              ; $6064: $00
	nop                                              ; $6065: $00
	nop                                              ; $6066: $00
	nop                                              ; $6067: $00
	nop                                              ; $6068: $00
	nop                                              ; $6069: $00
	nop                                              ; $606a: $00
	nop                                              ; $606b: $00
	nop                                              ; $606c: $00
	nop                                              ; $606d: $00
	nop                                              ; $606e: $00
	nop                                              ; $606f: $00
	nop                                              ; $6070: $00
	nop                                              ; $6071: $00
	nop                                              ; $6072: $00
	nop                                              ; $6073: $00
	nop                                              ; $6074: $00
	nop                                              ; $6075: $00
	nop                                              ; $6076: $00
	nop                                              ; $6077: $00
	nop                                              ; $6078: $00
	nop                                              ; $6079: $00
	nop                                              ; $607a: $00
	nop                                              ; $607b: $00
	nop                                              ; $607c: $00
	nop                                              ; $607d: $00
	nop                                              ; $607e: $00
	nop                                              ; $607f: $00
	nop                                              ; $6080: $00
	nop                                              ; $6081: $00
	nop                                              ; $6082: $00
	nop                                              ; $6083: $00
	nop                                              ; $6084: $00
	nop                                              ; $6085: $00
	nop                                              ; $6086: $00
	nop                                              ; $6087: $00
	nop                                              ; $6088: $00
	nop                                              ; $6089: $00
	nop                                              ; $608a: $00
	nop                                              ; $608b: $00
	nop                                              ; $608c: $00
	nop                                              ; $608d: $00
	nop                                              ; $608e: $00
	nop                                              ; $608f: $00
	nop                                              ; $6090: $00
	nop                                              ; $6091: $00
	nop                                              ; $6092: $00
	nop                                              ; $6093: $00
	nop                                              ; $6094: $00
	nop                                              ; $6095: $00
	nop                                              ; $6096: $00
	nop                                              ; $6097: $00
	nop                                              ; $6098: $00
	nop                                              ; $6099: $00
	nop                                              ; $609a: $00
	nop                                              ; $609b: $00
	nop                                              ; $609c: $00
	nop                                              ; $609d: $00
	nop                                              ; $609e: $00
	nop                                              ; $609f: $00
	nop                                              ; $60a0: $00
	nop                                              ; $60a1: $00
	nop                                              ; $60a2: $00
	nop                                              ; $60a3: $00
	nop                                              ; $60a4: $00
	nop                                              ; $60a5: $00
	nop                                              ; $60a6: $00
	nop                                              ; $60a7: $00
	nop                                              ; $60a8: $00
	nop                                              ; $60a9: $00
	nop                                              ; $60aa: $00
	ld   bc, $0000                                   ; $60ab: $01 $00 $00
	nop                                              ; $60ae: $00
	nop                                              ; $60af: $00
	nop                                              ; $60b0: $00
	nop                                              ; $60b1: $00
	nop                                              ; $60b2: $00
	ld   bc, $0000                                   ; $60b3: $01 $00 $00
	nop                                              ; $60b6: $00
	nop                                              ; $60b7: $00
	nop                                              ; $60b8: $00
	nop                                              ; $60b9: $00
	nop                                              ; $60ba: $00
	nop                                              ; $60bb: $00
	nop                                              ; $60bc: $00
	nop                                              ; $60bd: $00
	nop                                              ; $60be: $00
	nop                                              ; $60bf: $00
	nop                                              ; $60c0: $00
	nop                                              ; $60c1: $00
	nop                                              ; $60c2: $00
	jr   jr_032_60c5                                 ; $60c3: $18 $00

jr_032_60c5:
	jr   jr_032_60c7                                 ; $60c5: $18 $00

jr_032_60c7:
	rra                                              ; $60c7: $1f
	nop                                              ; $60c8: $00
	jr   jr_032_60cb                                 ; $60c9: $18 $00

jr_032_60cb:
	ld   hl, sp+$00                                  ; $60cb: $f8 $00
	jr   jr_032_60cf                                 ; $60cd: $18 $00

jr_032_60cf:
	rra                                              ; $60cf: $1f
	nop                                              ; $60d0: $00
	inc  e                                           ; $60d1: $1c
	nop                                              ; $60d2: $00
	db   $fc                                         ; $60d3: $fc
	nop                                              ; $60d4: $00
	inc  c                                           ; $60d5: $0c
	nop                                              ; $60d6: $00
	inc  c                                           ; $60d7: $0c
	nop                                              ; $60d8: $00
	inc  c                                           ; $60d9: $0c
	nop                                              ; $60da: $00
	inc  c                                           ; $60db: $0c
	nop                                              ; $60dc: $00
	inc  c                                           ; $60dd: $0c
	nop                                              ; $60de: $00
	nop                                              ; $60df: $00
	nop                                              ; $60e0: $00
	nop                                              ; $60e1: $00
	nop                                              ; $60e2: $00
	nop                                              ; $60e3: $00
	nop                                              ; $60e4: $00
	ld   bc, $8000                                   ; $60e5: $01 $00 $80
	nop                                              ; $60e8: $00
	nop                                              ; $60e9: $00
	nop                                              ; $60ea: $00
	nop                                              ; $60eb: $00
	nop                                              ; $60ec: $00
	nop                                              ; $60ed: $00
	nop                                              ; $60ee: $00
	ret  nz                                          ; $60ef: $c0

	nop                                              ; $60f0: $00
	nop                                              ; $60f1: $00
	nop                                              ; $60f2: $00
	ld   h, b                                        ; $60f3: $60
	nop                                              ; $60f4: $00
	ld   a, h                                        ; $60f5: $7c
	nop                                              ; $60f6: $00
	db   $ec                                         ; $60f7: $ec
	nop                                              ; $60f8: $00
	inc  l                                           ; $60f9: $2c
	nop                                              ; $60fa: $00
	ld   sp, $3100                                   ; $60fb: $31 $00 $31
	nop                                              ; $60fe: $00
	nop                                              ; $60ff: $00
	nop                                              ; $6100: $00
	nop                                              ; $6101: $00
	nop                                              ; $6102: $00
	nop                                              ; $6103: $00
	nop                                              ; $6104: $00
	cp   $00                                         ; $6105: $fe $00
	ld   b, $00                                      ; $6107: $06 $00
	ld   b, $00                                      ; $6109: $06 $00
	ld   b, $00                                      ; $610b: $06 $00
	ld   c, $00                                      ; $610d: $0e $00
	inc  c                                           ; $610f: $0c
	nop                                              ; $6110: $00
	jr   jr_032_6113                                 ; $6111: $18 $00

jr_032_6113:
	inc  a                                           ; $6113: $3c
	nop                                              ; $6114: $00
	ld   h, h                                        ; $6115: $64
	nop                                              ; $6116: $00
	add  $00                                         ; $6117: $c6 $00
	jp   nz, $8300                                   ; $6119: $c2 $00 $83

	nop                                              ; $611c: $00
	add  e                                           ; $611d: $83
	nop                                              ; $611e: $00
	nop                                              ; $611f: $00
	nop                                              ; $6120: $00
	nop                                              ; $6121: $00
	nop                                              ; $6122: $00
	nop                                              ; $6123: $00
	nop                                              ; $6124: $00
	jr   nc, jr_032_6127                             ; $6125: $30 $00

jr_032_6127:
	jr   nc, jr_032_6129                             ; $6127: $30 $00

jr_032_6129:
	jr   nc, jr_032_612b                             ; $6129: $30 $00

jr_032_612b:
	jr   nc, jr_032_612d                             ; $612b: $30 $00

jr_032_612d:
	jr   nc, jr_032_612f                             ; $612d: $30 $00

jr_032_612f:
	inc  a                                           ; $612f: $3c
	nop                                              ; $6130: $00
	scf                                              ; $6131: $37
	nop                                              ; $6132: $00
	ld   sp, $3000                                   ; $6133: $31 $00 $30
	nop                                              ; $6136: $00
	jr   nc, jr_032_6139                             ; $6137: $30 $00

jr_032_6139:
	jr   nc, jr_032_613b                             ; $6139: $30 $00

jr_032_613b:
	jr   nc, jr_032_613d                             ; $613b: $30 $00

jr_032_613d:
	jr   nc, jr_032_613f                             ; $613d: $30 $00

jr_032_613f:
	nop                                              ; $613f: $00
	nop                                              ; $6140: $00
	nop                                              ; $6141: $00
	nop                                              ; $6142: $00
	nop                                              ; $6143: $00
	nop                                              ; $6144: $00
	nop                                              ; $6145: $00
	nop                                              ; $6146: $00
	nop                                              ; $6147: $00
	nop                                              ; $6148: $00
	nop                                              ; $6149: $00
	nop                                              ; $614a: $00
	nop                                              ; $614b: $00
	nop                                              ; $614c: $00
	nop                                              ; $614d: $00
	nop                                              ; $614e: $00
	nop                                              ; $614f: $00
	nop                                              ; $6150: $00
	nop                                              ; $6151: $00
	nop                                              ; $6152: $00
	add  b                                           ; $6153: $80
	nop                                              ; $6154: $00
	nop                                              ; $6155: $00
	nop                                              ; $6156: $00
	nop                                              ; $6157: $00
	nop                                              ; $6158: $00
	nop                                              ; $6159: $00
	nop                                              ; $615a: $00
	nop                                              ; $615b: $00
	nop                                              ; $615c: $00
	nop                                              ; $615d: $00
	nop                                              ; $615e: $00
	nop                                              ; $615f: $00
	nop                                              ; $6160: $00
	nop                                              ; $6161: $00
	nop                                              ; $6162: $00
	nop                                              ; $6163: $00
	nop                                              ; $6164: $00
	nop                                              ; $6165: $00
	nop                                              ; $6166: $00
	nop                                              ; $6167: $00
	nop                                              ; $6168: $00
	nop                                              ; $6169: $00
	nop                                              ; $616a: $00
	nop                                              ; $616b: $00
	nop                                              ; $616c: $00
	nop                                              ; $616d: $00
	nop                                              ; $616e: $00
	nop                                              ; $616f: $00
	nop                                              ; $6170: $00
	nop                                              ; $6171: $00
	nop                                              ; $6172: $00
	nop                                              ; $6173: $00
	nop                                              ; $6174: $00
	nop                                              ; $6175: $00
	nop                                              ; $6176: $00
	nop                                              ; $6177: $00
	nop                                              ; $6178: $00
	nop                                              ; $6179: $00
	nop                                              ; $617a: $00
	nop                                              ; $617b: $00
	nop                                              ; $617c: $00
	nop                                              ; $617d: $00
	nop                                              ; $617e: $00
	nop                                              ; $617f: $00
	nop                                              ; $6180: $00
	nop                                              ; $6181: $00
	nop                                              ; $6182: $00
	nop                                              ; $6183: $00
	nop                                              ; $6184: $00
	nop                                              ; $6185: $00
	nop                                              ; $6186: $00
	nop                                              ; $6187: $00
	nop                                              ; $6188: $00
	nop                                              ; $6189: $00
	nop                                              ; $618a: $00
	nop                                              ; $618b: $00
	nop                                              ; $618c: $00
	nop                                              ; $618d: $00
	nop                                              ; $618e: $00
	nop                                              ; $618f: $00
	nop                                              ; $6190: $00
	nop                                              ; $6191: $00
	nop                                              ; $6192: $00
	nop                                              ; $6193: $00
	nop                                              ; $6194: $00
	nop                                              ; $6195: $00
	nop                                              ; $6196: $00
	nop                                              ; $6197: $00
	nop                                              ; $6198: $00
	nop                                              ; $6199: $00
	nop                                              ; $619a: $00
	nop                                              ; $619b: $00
	nop                                              ; $619c: $00
	nop                                              ; $619d: $00
	nop                                              ; $619e: $00
	nop                                              ; $619f: $00
	nop                                              ; $61a0: $00
	nop                                              ; $61a1: $00
	nop                                              ; $61a2: $00
	nop                                              ; $61a3: $00
	nop                                              ; $61a4: $00
	nop                                              ; $61a5: $00
	nop                                              ; $61a6: $00
	nop                                              ; $61a7: $00
	nop                                              ; $61a8: $00
	nop                                              ; $61a9: $00
	nop                                              ; $61aa: $00
	nop                                              ; $61ab: $00
	nop                                              ; $61ac: $00
	nop                                              ; $61ad: $00
	nop                                              ; $61ae: $00
	nop                                              ; $61af: $00
	nop                                              ; $61b0: $00
	nop                                              ; $61b1: $00
	nop                                              ; $61b2: $00
	nop                                              ; $61b3: $00
	nop                                              ; $61b4: $00
	nop                                              ; $61b5: $00
	nop                                              ; $61b6: $00
	nop                                              ; $61b7: $00
	nop                                              ; $61b8: $00
	nop                                              ; $61b9: $00
	nop                                              ; $61ba: $00
	nop                                              ; $61bb: $00
	nop                                              ; $61bc: $00
	nop                                              ; $61bd: $00
	nop                                              ; $61be: $00
	nop                                              ; $61bf: $00
	nop                                              ; $61c0: $00
	nop                                              ; $61c1: $00
	nop                                              ; $61c2: $00
	nop                                              ; $61c3: $00
	nop                                              ; $61c4: $00
	nop                                              ; $61c5: $00
	nop                                              ; $61c6: $00
	nop                                              ; $61c7: $00
	nop                                              ; $61c8: $00
	nop                                              ; $61c9: $00
	nop                                              ; $61ca: $00
	nop                                              ; $61cb: $00
	nop                                              ; $61cc: $00
	nop                                              ; $61cd: $00
	nop                                              ; $61ce: $00
	nop                                              ; $61cf: $00
	nop                                              ; $61d0: $00
	nop                                              ; $61d1: $00
	nop                                              ; $61d2: $00
	nop                                              ; $61d3: $00
	nop                                              ; $61d4: $00
	nop                                              ; $61d5: $00
	nop                                              ; $61d6: $00
	nop                                              ; $61d7: $00
	nop                                              ; $61d8: $00
	nop                                              ; $61d9: $00
	nop                                              ; $61da: $00
	nop                                              ; $61db: $00
	nop                                              ; $61dc: $00
	nop                                              ; $61dd: $00
	nop                                              ; $61de: $00
	nop                                              ; $61df: $00
	nop                                              ; $61e0: $00
	nop                                              ; $61e1: $00
	nop                                              ; $61e2: $00
	nop                                              ; $61e3: $00
	nop                                              ; $61e4: $00
	nop                                              ; $61e5: $00
	nop                                              ; $61e6: $00
	nop                                              ; $61e7: $00
	nop                                              ; $61e8: $00
	nop                                              ; $61e9: $00
	nop                                              ; $61ea: $00
	nop                                              ; $61eb: $00
	nop                                              ; $61ec: $00
	nop                                              ; $61ed: $00
	nop                                              ; $61ee: $00
	nop                                              ; $61ef: $00
	nop                                              ; $61f0: $00
	nop                                              ; $61f1: $00
	nop                                              ; $61f2: $00
	nop                                              ; $61f3: $00
	nop                                              ; $61f4: $00
	nop                                              ; $61f5: $00
	nop                                              ; $61f6: $00
	nop                                              ; $61f7: $00
	nop                                              ; $61f8: $00
	nop                                              ; $61f9: $00
	nop                                              ; $61fa: $00
	nop                                              ; $61fb: $00
	nop                                              ; $61fc: $00
	nop                                              ; $61fd: $00
	nop                                              ; $61fe: $00
	nop                                              ; $61ff: $00

Jump_032_6200:
	nop                                              ; $6200: $00
	nop                                              ; $6201: $00
	nop                                              ; $6202: $00
	nop                                              ; $6203: $00
	nop                                              ; $6204: $00
	nop                                              ; $6205: $00
	nop                                              ; $6206: $00
	nop                                              ; $6207: $00
	nop                                              ; $6208: $00
	nop                                              ; $6209: $00
	nop                                              ; $620a: $00
	nop                                              ; $620b: $00
	nop                                              ; $620c: $00
	nop                                              ; $620d: $00
	nop                                              ; $620e: $00
	nop                                              ; $620f: $00
	nop                                              ; $6210: $00
	nop                                              ; $6211: $00
	nop                                              ; $6212: $00
	nop                                              ; $6213: $00
	nop                                              ; $6214: $00
	nop                                              ; $6215: $00
	nop                                              ; $6216: $00
	nop                                              ; $6217: $00
	nop                                              ; $6218: $00
	nop                                              ; $6219: $00
	nop                                              ; $621a: $00
	nop                                              ; $621b: $00
	nop                                              ; $621c: $00
	nop                                              ; $621d: $00
	nop                                              ; $621e: $00
	nop                                              ; $621f: $00
	nop                                              ; $6220: $00
	nop                                              ; $6221: $00
	nop                                              ; $6222: $00
	nop                                              ; $6223: $00
	nop                                              ; $6224: $00
	nop                                              ; $6225: $00
	nop                                              ; $6226: $00
	nop                                              ; $6227: $00
	nop                                              ; $6228: $00
	nop                                              ; $6229: $00
	nop                                              ; $622a: $00
	nop                                              ; $622b: $00
	nop                                              ; $622c: $00
	nop                                              ; $622d: $00
	nop                                              ; $622e: $00
	nop                                              ; $622f: $00
	nop                                              ; $6230: $00
	nop                                              ; $6231: $00
	nop                                              ; $6232: $00
	nop                                              ; $6233: $00
	nop                                              ; $6234: $00
	nop                                              ; $6235: $00
	nop                                              ; $6236: $00
	nop                                              ; $6237: $00
	nop                                              ; $6238: $00
	nop                                              ; $6239: $00
	nop                                              ; $623a: $00
	nop                                              ; $623b: $00
	nop                                              ; $623c: $00
	nop                                              ; $623d: $00
	nop                                              ; $623e: $00
	nop                                              ; $623f: $00
	nop                                              ; $6240: $00
	nop                                              ; $6241: $00
	nop                                              ; $6242: $00
	nop                                              ; $6243: $00
	nop                                              ; $6244: $00
	nop                                              ; $6245: $00
	nop                                              ; $6246: $00
	nop                                              ; $6247: $00
	nop                                              ; $6248: $00
	nop                                              ; $6249: $00
	nop                                              ; $624a: $00
	nop                                              ; $624b: $00
	nop                                              ; $624c: $00
	nop                                              ; $624d: $00
	nop                                              ; $624e: $00
	nop                                              ; $624f: $00
	nop                                              ; $6250: $00
	nop                                              ; $6251: $00
	nop                                              ; $6252: $00
	nop                                              ; $6253: $00
	nop                                              ; $6254: $00
	nop                                              ; $6255: $00
	nop                                              ; $6256: $00
	nop                                              ; $6257: $00
	nop                                              ; $6258: $00
	nop                                              ; $6259: $00
	nop                                              ; $625a: $00
	nop                                              ; $625b: $00
	nop                                              ; $625c: $00
	nop                                              ; $625d: $00
	nop                                              ; $625e: $00
	nop                                              ; $625f: $00
	nop                                              ; $6260: $00
	nop                                              ; $6261: $00
	nop                                              ; $6262: $00
	nop                                              ; $6263: $00
	nop                                              ; $6264: $00
	nop                                              ; $6265: $00
	nop                                              ; $6266: $00
	nop                                              ; $6267: $00
	nop                                              ; $6268: $00
	nop                                              ; $6269: $00
	nop                                              ; $626a: $00
	nop                                              ; $626b: $00
	nop                                              ; $626c: $00
	nop                                              ; $626d: $00
	nop                                              ; $626e: $00
	nop                                              ; $626f: $00
	nop                                              ; $6270: $00
	nop                                              ; $6271: $00
	nop                                              ; $6272: $00
	nop                                              ; $6273: $00
	nop                                              ; $6274: $00
	nop                                              ; $6275: $00
	nop                                              ; $6276: $00
	nop                                              ; $6277: $00
	nop                                              ; $6278: $00
	nop                                              ; $6279: $00
	nop                                              ; $627a: $00
	nop                                              ; $627b: $00
	nop                                              ; $627c: $00
	nop                                              ; $627d: $00
	nop                                              ; $627e: $00
	nop                                              ; $627f: $00
	nop                                              ; $6280: $00
	nop                                              ; $6281: $00
	nop                                              ; $6282: $00
	inc  bc                                          ; $6283: $03
	nop                                              ; $6284: $00
	inc  sp                                          ; $6285: $33
	nop                                              ; $6286: $00
	ccf                                              ; $6287: $3f
	nop                                              ; $6288: $00
	inc  sp                                          ; $6289: $33
	nop                                              ; $628a: $00
	ld   h, e                                        ; $628b: $63
	nop                                              ; $628c: $00
	rra                                              ; $628d: $1f
	nop                                              ; $628e: $00
	inc  bc                                          ; $628f: $03
	nop                                              ; $6290: $00
	rra                                              ; $6291: $1f
	nop                                              ; $6292: $00
	dec  de                                          ; $6293: $1b
	nop                                              ; $6294: $00
	dec  de                                          ; $6295: $1b
	nop                                              ; $6296: $00
	dec  de                                          ; $6297: $1b
	nop                                              ; $6298: $00
	dec  de                                          ; $6299: $1b
	nop                                              ; $629a: $00
	inc  bc                                          ; $629b: $03
	nop                                              ; $629c: $00
	inc  bc                                          ; $629d: $03
	nop                                              ; $629e: $00
	nop                                              ; $629f: $00
	nop                                              ; $62a0: $00
	nop                                              ; $62a1: $00
	nop                                              ; $62a2: $00
	inc  bc                                          ; $62a3: $03
	nop                                              ; $62a4: $00
	dec  de                                          ; $62a5: $1b
	nop                                              ; $62a6: $00
	db   $db                                         ; $62a7: $db
	nop                                              ; $62a8: $00
	dec  de                                          ; $62a9: $1b
	nop                                              ; $62aa: $00
	dec  de                                          ; $62ab: $1b
	nop                                              ; $62ac: $00
	ei                                               ; $62ad: $fb
	nop                                              ; $62ae: $00
	dec  de                                          ; $62af: $1b
	nop                                              ; $62b0: $00
	ei                                               ; $62b1: $fb
	nop                                              ; $62b2: $00
	ld   a, e                                        ; $62b3: $7b
	nop                                              ; $62b4: $00
	ld   h, e                                        ; $62b5: $63
	nop                                              ; $62b6: $00
	ld   h, e                                        ; $62b7: $63
	nop                                              ; $62b8: $00
	db   $e3                                         ; $62b9: $e3
	nop                                              ; $62ba: $00
	inc  bc                                          ; $62bb: $03
	nop                                              ; $62bc: $00
	ld   c, $00                                      ; $62bd: $0e $00
	nop                                              ; $62bf: $00
	nop                                              ; $62c0: $00
	nop                                              ; $62c1: $00
	nop                                              ; $62c2: $00
	inc  c                                           ; $62c3: $0c
	nop                                              ; $62c4: $00
	inc  c                                           ; $62c5: $0c
	nop                                              ; $62c6: $00
	inc  e                                           ; $62c7: $1c
	nop                                              ; $62c8: $00
	add  hl, de                                      ; $62c9: $19
	nop                                              ; $62ca: $00
	add  hl, sp                                      ; $62cb: $39
	nop                                              ; $62cc: $00
	ld   a, e                                        ; $62cd: $7b
	nop                                              ; $62ce: $00
	jr   jr_032_62d1                                 ; $62cf: $18 $00

jr_032_62d1:
	jr   jr_032_62d3                                 ; $62d1: $18 $00

jr_032_62d3:
	jr   jr_032_62d5                                 ; $62d3: $18 $00

jr_032_62d5:
	jr   jr_032_62d7                                 ; $62d5: $18 $00

jr_032_62d7:
	jr   jr_032_62d9                                 ; $62d7: $18 $00

jr_032_62d9:
	jr   jr_032_62db                                 ; $62d9: $18 $00

jr_032_62db:
	jr   jr_032_62dd                                 ; $62db: $18 $00

jr_032_62dd:
	jr   jr_032_62df                                 ; $62dd: $18 $00

jr_032_62df:
	nop                                              ; $62df: $00
	nop                                              ; $62e0: $00
	nop                                              ; $62e1: $00
	nop                                              ; $62e2: $00
	ret  nz                                          ; $62e3: $c0

	nop                                              ; $62e4: $00
	ret  nz                                          ; $62e5: $c0

	nop                                              ; $62e6: $00
	ret  nz                                          ; $62e7: $c0

	nop                                              ; $62e8: $00
	rst  $38                                         ; $62e9: $ff
	nop                                              ; $62ea: $00
	or   b                                           ; $62eb: $b0
	nop                                              ; $62ec: $00
	jr   nc, jr_032_62ef                             ; $62ed: $30 $00

jr_032_62ef:
	ccf                                              ; $62ef: $3f
	nop                                              ; $62f0: $00
	jr   nc, jr_032_62f3                             ; $62f1: $30 $00

jr_032_62f3:
	jr   nc, jr_032_62f5                             ; $62f3: $30 $00

jr_032_62f5:
	ccf                                              ; $62f5: $3f
	nop                                              ; $62f6: $00
	jr   nc, jr_032_62f9                             ; $62f7: $30 $00

jr_032_62f9:
	jr   nc, jr_032_62fb                             ; $62f9: $30 $00

jr_032_62fb:
	jr   nc, jr_032_62fd                             ; $62fb: $30 $00

jr_032_62fd:
	jr   nc, jr_032_62ff                             ; $62fd: $30 $00

jr_032_62ff:
	nop                                              ; $62ff: $00
	nop                                              ; $6300: $00
	nop                                              ; $6301: $00
	nop                                              ; $6302: $00
	jr   jr_032_6305                                 ; $6303: $18 $00

jr_032_6305:
	jr   jr_032_6307                                 ; $6305: $18 $00

jr_032_6307:
	add  hl, de                                      ; $6307: $19
	nop                                              ; $6308: $00
	ld   a, [hl]                                     ; $6309: $7e
	nop                                              ; $630a: $00
	jr   jr_032_630d                                 ; $630b: $18 $00

jr_032_630d:
	jr   jr_032_630f                                 ; $630d: $18 $00

jr_032_630f:
	dec  de                                          ; $630f: $1b
	nop                                              ; $6310: $00
	dec  de                                          ; $6311: $1b
	nop                                              ; $6312: $00
	rra                                              ; $6313: $1f
	nop                                              ; $6314: $00
	dec  de                                          ; $6315: $1b
	nop                                              ; $6316: $00
	dec  de                                          ; $6317: $1b
	nop                                              ; $6318: $00
	dec  de                                          ; $6319: $1b
	nop                                              ; $631a: $00
	ld   a, [de]                                     ; $631b: $1a
	nop                                              ; $631c: $00
	inc  e                                           ; $631d: $1c
	nop                                              ; $631e: $00
	nop                                              ; $631f: $00
	nop                                              ; $6320: $00
	nop                                              ; $6321: $00
	nop                                              ; $6322: $00
	jr   nc, jr_032_6325                             ; $6323: $30 $00

jr_032_6325:
	jr   nc, jr_032_6327                             ; $6325: $30 $00

jr_032_6327:
	rst  $38                                         ; $6327: $ff
	nop                                              ; $6328: $00
	inc  sp                                          ; $6329: $33
	nop                                              ; $632a: $00
	inc  sp                                          ; $632b: $33
	nop                                              ; $632c: $00
	ld   h, e                                        ; $632d: $63
	nop                                              ; $632e: $00
	adc  [hl]                                        ; $632f: $8e
	nop                                              ; $6330: $00
	inc  c                                           ; $6331: $0c
	nop                                              ; $6332: $00
	rst  $38                                         ; $6333: $ff
	nop                                              ; $6334: $00
	ld   l, l                                        ; $6335: $6d
	nop                                              ; $6336: $00
	ld   l, l                                        ; $6337: $6d
	nop                                              ; $6338: $00
	ld   l, l                                        ; $6339: $6d
	nop                                              ; $633a: $00
	ld   l, c                                        ; $633b: $69
	nop                                              ; $633c: $00
	db   $d3                                         ; $633d: $d3
	nop                                              ; $633e: $00
	nop                                              ; $633f: $00
	nop                                              ; $6340: $00
	nop                                              ; $6341: $00
	nop                                              ; $6342: $00
	inc  bc                                          ; $6343: $03
	nop                                              ; $6344: $00
	inc  bc                                          ; $6345: $03
	nop                                              ; $6346: $00
	inc  bc                                          ; $6347: $03
	nop                                              ; $6348: $00
	ccf                                              ; $6349: $3f
	nop                                              ; $634a: $00
	inc  bc                                          ; $634b: $03
	nop                                              ; $634c: $00
	inc  bc                                          ; $634d: $03
	nop                                              ; $634e: $00
	inc  bc                                          ; $634f: $03
	nop                                              ; $6350: $00
	inc  bc                                          ; $6351: $03
	nop                                              ; $6352: $00
	add  e                                           ; $6353: $83
	nop                                              ; $6354: $00
	add  e                                           ; $6355: $83
	nop                                              ; $6356: $00
	add  [hl]                                        ; $6357: $86
	nop                                              ; $6358: $00
	add  [hl]                                        ; $6359: $86
	nop                                              ; $635a: $00
	adc  h                                           ; $635b: $8c
	nop                                              ; $635c: $00
	jr   c, jr_032_635f                              ; $635d: $38 $00

jr_032_635f:
	nop                                              ; $635f: $00
	nop                                              ; $6360: $00
	nop                                              ; $6361: $00
	nop                                              ; $6362: $00
	nop                                              ; $6363: $00
	nop                                              ; $6364: $00
	nop                                              ; $6365: $00
	nop                                              ; $6366: $00
	nop                                              ; $6367: $00
	nop                                              ; $6368: $00
	db   $fc                                         ; $6369: $fc
	nop                                              ; $636a: $00
	inc  c                                           ; $636b: $0c
	nop                                              ; $636c: $00
	inc  c                                           ; $636d: $0c
	nop                                              ; $636e: $00
	inc  c                                           ; $636f: $0c
	nop                                              ; $6370: $00
	inc  c                                           ; $6371: $0c
	nop                                              ; $6372: $00
	inc  c                                           ; $6373: $0c
	nop                                              ; $6374: $00
	inc  c                                           ; $6375: $0c
	nop                                              ; $6376: $00
	inc  c                                           ; $6377: $0c
	nop                                              ; $6378: $00
	inc  c                                           ; $6379: $0c
	nop                                              ; $637a: $00
	ld   l, h                                        ; $637b: $6c
	nop                                              ; $637c: $00
	jr   c, jr_032_637f                              ; $637d: $38 $00

jr_032_637f:
	nop                                              ; $637f: $00
	nop                                              ; $6380: $00
	nop                                              ; $6381: $00
	nop                                              ; $6382: $00
	nop                                              ; $6383: $00
	nop                                              ; $6384: $00
	nop                                              ; $6385: $00
	nop                                              ; $6386: $00
	nop                                              ; $6387: $00
	nop                                              ; $6388: $00
	nop                                              ; $6389: $00
	nop                                              ; $638a: $00
	nop                                              ; $638b: $00
	nop                                              ; $638c: $00
	nop                                              ; $638d: $00
	nop                                              ; $638e: $00
	nop                                              ; $638f: $00
	nop                                              ; $6390: $00
	nop                                              ; $6391: $00
	nop                                              ; $6392: $00
	nop                                              ; $6393: $00
	nop                                              ; $6394: $00
	nop                                              ; $6395: $00
	nop                                              ; $6396: $00
	nop                                              ; $6397: $00
	nop                                              ; $6398: $00
	nop                                              ; $6399: $00
	nop                                              ; $639a: $00
	nop                                              ; $639b: $00
	nop                                              ; $639c: $00
	nop                                              ; $639d: $00
	nop                                              ; $639e: $00
	nop                                              ; $639f: $00
	nop                                              ; $63a0: $00
	nop                                              ; $63a1: $00
	nop                                              ; $63a2: $00
	nop                                              ; $63a3: $00
	nop                                              ; $63a4: $00
	nop                                              ; $63a5: $00
	nop                                              ; $63a6: $00
	nop                                              ; $63a7: $00
	nop                                              ; $63a8: $00
	nop                                              ; $63a9: $00
	nop                                              ; $63aa: $00
	nop                                              ; $63ab: $00
	nop                                              ; $63ac: $00
	nop                                              ; $63ad: $00
	nop                                              ; $63ae: $00
	nop                                              ; $63af: $00
	nop                                              ; $63b0: $00
	nop                                              ; $63b1: $00
	nop                                              ; $63b2: $00
	nop                                              ; $63b3: $00
	nop                                              ; $63b4: $00
	nop                                              ; $63b5: $00
	nop                                              ; $63b6: $00
	nop                                              ; $63b7: $00
	nop                                              ; $63b8: $00
	nop                                              ; $63b9: $00
	nop                                              ; $63ba: $00
	nop                                              ; $63bb: $00
	nop                                              ; $63bc: $00
	nop                                              ; $63bd: $00
	nop                                              ; $63be: $00
	nop                                              ; $63bf: $00
	nop                                              ; $63c0: $00
	nop                                              ; $63c1: $00
	nop                                              ; $63c2: $00
	nop                                              ; $63c3: $00
	nop                                              ; $63c4: $00
	nop                                              ; $63c5: $00
	nop                                              ; $63c6: $00
	nop                                              ; $63c7: $00
	nop                                              ; $63c8: $00
	nop                                              ; $63c9: $00
	nop                                              ; $63ca: $00
	nop                                              ; $63cb: $00
	nop                                              ; $63cc: $00
	nop                                              ; $63cd: $00
	nop                                              ; $63ce: $00
	nop                                              ; $63cf: $00
	nop                                              ; $63d0: $00
	nop                                              ; $63d1: $00
	nop                                              ; $63d2: $00
	nop                                              ; $63d3: $00
	nop                                              ; $63d4: $00
	nop                                              ; $63d5: $00
	nop                                              ; $63d6: $00
	nop                                              ; $63d7: $00
	nop                                              ; $63d8: $00
	nop                                              ; $63d9: $00
	nop                                              ; $63da: $00
	nop                                              ; $63db: $00
	nop                                              ; $63dc: $00
	nop                                              ; $63dd: $00
	nop                                              ; $63de: $00
	nop                                              ; $63df: $00
	nop                                              ; $63e0: $00
	nop                                              ; $63e1: $00
	nop                                              ; $63e2: $00
	nop                                              ; $63e3: $00
	nop                                              ; $63e4: $00
	nop                                              ; $63e5: $00
	nop                                              ; $63e6: $00
	nop                                              ; $63e7: $00
	nop                                              ; $63e8: $00
	nop                                              ; $63e9: $00
	nop                                              ; $63ea: $00
	nop                                              ; $63eb: $00
	nop                                              ; $63ec: $00
	nop                                              ; $63ed: $00
	nop                                              ; $63ee: $00
	nop                                              ; $63ef: $00
	nop                                              ; $63f0: $00
	nop                                              ; $63f1: $00
	nop                                              ; $63f2: $00
	nop                                              ; $63f3: $00
	nop                                              ; $63f4: $00
	nop                                              ; $63f5: $00
	nop                                              ; $63f6: $00
	nop                                              ; $63f7: $00
	nop                                              ; $63f8: $00
	nop                                              ; $63f9: $00
	nop                                              ; $63fa: $00
	nop                                              ; $63fb: $00
	nop                                              ; $63fc: $00
	nop                                              ; $63fd: $00
	nop                                              ; $63fe: $00
	nop                                              ; $63ff: $00
	nop                                              ; $6400: $00
	nop                                              ; $6401: $00
	nop                                              ; $6402: $00
	nop                                              ; $6403: $00
	nop                                              ; $6404: $00
	rst  $38                                         ; $6405: $ff
	nop                                              ; $6406: $00
	ld   bc, $0100                                   ; $6407: $01 $00 $01
	nop                                              ; $640a: $00
	ld   bc, $0100                                   ; $640b: $01 $00 $01
	nop                                              ; $640e: $00
	ld   bc, $0100                                   ; $640f: $01 $00 $01
	nop                                              ; $6412: $00
	ld   bc, $0300                                   ; $6413: $01 $00 $03
	nop                                              ; $6416: $00
	inc  bc                                          ; $6417: $03
	nop                                              ; $6418: $00
	rlca                                             ; $6419: $07
	nop                                              ; $641a: $00
	ld   c, $00                                      ; $641b: $0e $00
	ld   a, b                                        ; $641d: $78
	nop                                              ; $641e: $00
	nop                                              ; $641f: $00
	nop                                              ; $6420: $00
	nop                                              ; $6421: $00
	nop                                              ; $6422: $00
	ld   [hl], b                                     ; $6423: $70
	nop                                              ; $6424: $00
	rst  JumpTable                                         ; $6425: $df
	nop                                              ; $6426: $00
	sbc  $00                                         ; $6427: $de $00
	sbc  $00                                         ; $6429: $de $00
	or   $00                                         ; $642b: $f6 $00
	add  [hl]                                        ; $642d: $86
	nop                                              ; $642e: $00
	add  [hl]                                        ; $642f: $86
	nop                                              ; $6430: $00
	add  [hl]                                        ; $6431: $86
	nop                                              ; $6432: $00
	add  [hl]                                        ; $6433: $86
	nop                                              ; $6434: $00
	add  [hl]                                        ; $6435: $86
	nop                                              ; $6436: $00
	ld   b, $00                                      ; $6437: $06 $00
	ld   b, $00                                      ; $6439: $06 $00
	ld   b, $00                                      ; $643b: $06 $00
	rlca                                             ; $643d: $07
	nop                                              ; $643e: $00
	nop                                              ; $643f: $00
	nop                                              ; $6440: $00
	nop                                              ; $6441: $00
	nop                                              ; $6442: $00
	nop                                              ; $6443: $00
	nop                                              ; $6444: $00
	ld   sp, hl                                      ; $6445: $f9
	nop                                              ; $6446: $00
	add  hl, de                                      ; $6447: $19
	nop                                              ; $6448: $00
	add  hl, de                                      ; $6449: $19
	nop                                              ; $644a: $00
	add  hl, de                                      ; $644b: $19
	nop                                              ; $644c: $00
	add  hl, de                                      ; $644d: $19
	nop                                              ; $644e: $00
	dec  de                                          ; $644f: $1b
	nop                                              ; $6450: $00
	ld   e, $00                                      ; $6451: $1e $00
	jr   jr_032_6455                                 ; $6453: $18 $00

jr_032_6455:
	jr   jr_032_6457                                 ; $6455: $18 $00

jr_032_6457:
	jr   jr_032_6459                                 ; $6457: $18 $00

jr_032_6459:
	jr   jr_032_645b                                 ; $6459: $18 $00

jr_032_645b:
	jr   jr_032_645d                                 ; $645b: $18 $00

jr_032_645d:
	ld   sp, hl                                      ; $645d: $f9
	nop                                              ; $645e: $00
	nop                                              ; $645f: $00
	nop                                              ; $6460: $00
	nop                                              ; $6461: $00
	nop                                              ; $6462: $00
	inc  bc                                          ; $6463: $03
	nop                                              ; $6464: $00
	rst  $38                                         ; $6465: $ff
	nop                                              ; $6466: $00
	add  a                                           ; $6467: $87
	nop                                              ; $6468: $00
	add  [hl]                                        ; $6469: $86
	nop                                              ; $646a: $00
	add  [hl]                                        ; $646b: $86
	nop                                              ; $646c: $00
	add  [hl]                                        ; $646d: $86
	nop                                              ; $646e: $00
	ld   b, [hl]                                     ; $646f: $46
	nop                                              ; $6470: $00
	ld   a, $00                                      ; $6471: $3e $00
	ld   c, $00                                      ; $6473: $0e $00
	inc  c                                           ; $6475: $0c
	nop                                              ; $6476: $00
	inc  e                                           ; $6477: $1c
	nop                                              ; $6478: $00
	jr   c, jr_032_647b                              ; $6479: $38 $00

jr_032_647b:
	ld   [hl], b                                     ; $647b: $70
	nop                                              ; $647c: $00
	ret  nz                                          ; $647d: $c0

	nop                                              ; $647e: $00
	nop                                              ; $647f: $00
	nop                                              ; $6480: $00
	nop                                              ; $6481: $00
	nop                                              ; $6482: $00
	ld   h, b                                        ; $6483: $60
	nop                                              ; $6484: $00
	ld   a, a                                        ; $6485: $7f
	nop                                              ; $6486: $00
	ld   a, b                                        ; $6487: $78
	nop                                              ; $6488: $00
	jr   jr_032_648b                                 ; $6489: $18 $00

jr_032_648b:
	jr   jr_032_648d                                 ; $648b: $18 $00

jr_032_648d:
	jr   jr_032_648f                                 ; $648d: $18 $00

jr_032_648f:
	stop                                             ; $648f: $10 $00
	jr   nz, jr_032_6493                             ; $6491: $20 $00

jr_032_6493:
	nop                                              ; $6493: $00
	nop                                              ; $6494: $00
	nop                                              ; $6495: $00
	nop                                              ; $6496: $00
	nop                                              ; $6497: $00
	nop                                              ; $6498: $00
	ld   bc, $0300                                   ; $6499: $01 $00 $03
	nop                                              ; $649c: $00
	ld   e, $00                                      ; $649d: $1e $00
	nop                                              ; $649f: $00
	nop                                              ; $64a0: $00
	nop                                              ; $64a1: $00
	nop                                              ; $64a2: $00
	nop                                              ; $64a3: $00
	nop                                              ; $64a4: $00
	ldh  [rP1], a                                    ; $64a5: $e0 $00
	ld   h, b                                        ; $64a7: $60
	nop                                              ; $64a8: $00
	ld   a, [hl]                                     ; $64a9: $7e
	nop                                              ; $64aa: $00
	ld   h, b                                        ; $64ab: $60
	nop                                              ; $64ac: $00
	ld   h, b                                        ; $64ad: $60
	nop                                              ; $64ae: $00
	ld   a, [hl]                                     ; $64af: $7e
	nop                                              ; $64b0: $00
	ld   h, b                                        ; $64b1: $60
	nop                                              ; $64b2: $00
	ld   h, b                                        ; $64b3: $60
	nop                                              ; $64b4: $00
	ldh  [rP1], a                                    ; $64b5: $e0 $00
	ret  nz                                          ; $64b7: $c0

	nop                                              ; $64b8: $00
	ret  nz                                          ; $64b9: $c0

	nop                                              ; $64ba: $00
	add  c                                           ; $64bb: $81
	nop                                              ; $64bc: $00
	rra                                              ; $64bd: $1f
	nop                                              ; $64be: $00
	nop                                              ; $64bf: $00
	nop                                              ; $64c0: $00
	nop                                              ; $64c1: $00
	nop                                              ; $64c2: $00
	nop                                              ; $64c3: $00
	nop                                              ; $64c4: $00
	jr   nc, jr_032_64c7                             ; $64c5: $30 $00

jr_032_64c7:
	jr   nc, jr_032_64c9                             ; $64c7: $30 $00

jr_032_64c9:
	jr   nc, jr_032_64cb                             ; $64c9: $30 $00

jr_032_64cb:
	jr   nc, jr_032_64cd                             ; $64cb: $30 $00

jr_032_64cd:
	jr   nc, jr_032_64cf                             ; $64cd: $30 $00

jr_032_64cf:
	jr   nc, jr_032_64d1                             ; $64cf: $30 $00

jr_032_64d1:
	ccf                                              ; $64d1: $3f
	nop                                              ; $64d2: $00
	jr   nc, jr_032_64d5                             ; $64d3: $30 $00

jr_032_64d5:
	jr   nc, jr_032_64d7                             ; $64d5: $30 $00

jr_032_64d7:
	ld   [hl], a                                     ; $64d7: $77
	nop                                              ; $64d8: $00
	ldh  [rP1], a                                    ; $64d9: $e0 $00
	ret  nz                                          ; $64db: $c0

	nop                                              ; $64dc: $00
	rrca                                             ; $64dd: $0f
	nop                                              ; $64de: $00
	nop                                              ; $64df: $00
	nop                                              ; $64e0: $00
	nop                                              ; $64e1: $00
	nop                                              ; $64e2: $00
	nop                                              ; $64e3: $00
	nop                                              ; $64e4: $00
	nop                                              ; $64e5: $00
	nop                                              ; $64e6: $00
	nop                                              ; $64e7: $00
	nop                                              ; $64e8: $00
	jr   nc, jr_032_64eb                             ; $64e9: $30 $00

jr_032_64eb:
	jr   c, jr_032_64ed                              ; $64eb: $38 $00

jr_032_64ed:
	ld   e, $00                                      ; $64ed: $1e $00
	nop                                              ; $64ef: $00
	nop                                              ; $64f0: $00
	add  b                                           ; $64f1: $80
	nop                                              ; $64f2: $00
	ret  nz                                          ; $64f3: $c0

	nop                                              ; $64f4: $00
	ret  nz                                          ; $64f5: $c0

	nop                                              ; $64f6: $00
	ret  nz                                          ; $64f7: $c0

	nop                                              ; $64f8: $00
	ret  nz                                          ; $64f9: $c0

	nop                                              ; $64fa: $00
	jp   $ff00                                       ; $64fb: $c3 $00 $ff


	nop                                              ; $64fe: $00
	nop                                              ; $64ff: $00
	nop                                              ; $6500: $00
	nop                                              ; $6501: $00
	nop                                              ; $6502: $00
	nop                                              ; $6503: $00
	nop                                              ; $6504: $00
	scf                                              ; $6505: $37
	nop                                              ; $6506: $00
	jr   nc, jr_032_6509                             ; $6507: $30 $00

jr_032_6509:
	jr   nc, jr_032_650b                             ; $6509: $30 $00

jr_032_650b:
	jr   nc, jr_032_650d                             ; $650b: $30 $00

jr_032_650d:
	jr   nc, jr_032_650f                             ; $650d: $30 $00

jr_032_650f:
	jr   nc, jr_032_6511                             ; $650f: $30 $00

jr_032_6511:
	jr   nc, jr_032_6513                             ; $6511: $30 $00

jr_032_6513:
	jr   nc, jr_032_6515                             ; $6513: $30 $00

jr_032_6515:
	ld   [hl], e                                     ; $6515: $73
	nop                                              ; $6516: $00
	ld   h, c                                        ; $6517: $61
	nop                                              ; $6518: $00
	ldh  [rP1], a                                    ; $6519: $e0 $00
	ret  nz                                          ; $651b: $c0

	nop                                              ; $651c: $00
	nop                                              ; $651d: $00
	nop                                              ; $651e: $00
	nop                                              ; $651f: $00
	nop                                              ; $6520: $00
	nop                                              ; $6521: $00
	nop                                              ; $6522: $00
	nop                                              ; $6523: $00
	nop                                              ; $6524: $00
	ld   hl, sp+$00                                  ; $6525: $f8 $00
	dec  de                                          ; $6527: $1b
	nop                                              ; $6528: $00
	jr   jr_032_652b                                 ; $6529: $18 $00

jr_032_652b:
	jr   jr_032_652d                                 ; $652b: $18 $00

jr_032_652d:
	jr   jr_032_652f                                 ; $652d: $18 $00

jr_032_652f:
	jr   jr_032_6531                                 ; $652f: $18 $00

jr_032_6531:
	jr   jr_032_6533                                 ; $6531: $18 $00

jr_032_6533:
	jr   jr_032_6535                                 ; $6533: $18 $00

jr_032_6535:
	inc  sp                                          ; $6535: $33
	nop                                              ; $6536: $00
	ldh  [rP1], a                                    ; $6537: $e0 $00
	ret  nz                                          ; $6539: $c0

	nop                                              ; $653a: $00
	ld   h, b                                        ; $653b: $60
	nop                                              ; $653c: $00
	jr   nc, jr_032_653f                             ; $653d: $30 $00

jr_032_653f:
	nop                                              ; $653f: $00
	nop                                              ; $6540: $00
	nop                                              ; $6541: $00
	nop                                              ; $6542: $00
	jr   nc, jr_032_6545                             ; $6543: $30 $00

jr_032_6545:
	jr   nc, jr_032_6547                             ; $6545: $30 $00

jr_032_6547:
	cp   $00                                         ; $6547: $fe $00
	ld   b, $00                                      ; $6549: $06 $00
	ld   c, $00                                      ; $654b: $0e $00
	inc  c                                           ; $654d: $0c
	nop                                              ; $654e: $00
	jr   jr_032_6551                                 ; $654f: $18 $00

jr_032_6551:
	jr   nc, jr_032_6553                             ; $6551: $30 $00

jr_032_6553:
	or   $00                                         ; $6553: $f6 $00
	or   e                                           ; $6555: $b3
	nop                                              ; $6556: $00
	ld   sp, $3000                                   ; $6557: $31 $00 $30
	nop                                              ; $655a: $00
	jr   nc, jr_032_655d                             ; $655b: $30 $00

jr_032_655d:
	jr   nc, jr_032_655f                             ; $655d: $30 $00

jr_032_655f:
	nop                                              ; $655f: $00
	nop                                              ; $6560: $00
	nop                                              ; $6561: $00
	nop                                              ; $6562: $00
	nop                                              ; $6563: $00
	nop                                              ; $6564: $00
	ld   bc, $0100                                   ; $6565: $01 $00 $01
	nop                                              ; $6568: $00
	pop  af                                          ; $6569: $f1
	nop                                              ; $656a: $00
	ld   bc, $0100                                   ; $656b: $01 $00 $01
	nop                                              ; $656e: $00
	pop  af                                          ; $656f: $f1
	nop                                              ; $6570: $00
	ld   bc, $0100                                   ; $6571: $01 $00 $01
	nop                                              ; $6574: $00
	ld   bc, $8300                                   ; $6575: $01 $00 $83
	nop                                              ; $6578: $00
	rlca                                             ; $6579: $07
	nop                                              ; $657a: $00
	ld   c, $00                                      ; $657b: $0e $00
	ld   hl, sp+$00                                  ; $657d: $f8 $00
	nop                                              ; $657f: $00
	nop                                              ; $6580: $00
	nop                                              ; $6581: $00
	nop                                              ; $6582: $00
	ret  c                                           ; $6583: $d8

	nop                                              ; $6584: $00
	ret  c                                           ; $6585: $d8

	nop                                              ; $6586: $00
	ret  c                                           ; $6587: $d8

	nop                                              ; $6588: $00
	add  b                                           ; $6589: $80
	nop                                              ; $658a: $00
	adc  [hl]                                        ; $658b: $8e
	nop                                              ; $658c: $00
	add  e                                           ; $658d: $83
	nop                                              ; $658e: $00
	add  b                                           ; $658f: $80
	nop                                              ; $6590: $00
	add  b                                           ; $6591: $80
	nop                                              ; $6592: $00
	add  b                                           ; $6593: $80
	nop                                              ; $6594: $00
	add  b                                           ; $6595: $80
	nop                                              ; $6596: $00
	add  b                                           ; $6597: $80
	nop                                              ; $6598: $00
	nop                                              ; $6599: $00
	nop                                              ; $659a: $00
	inc  bc                                          ; $659b: $03
	nop                                              ; $659c: $00
	ld   e, $00                                      ; $659d: $1e $00
	nop                                              ; $659f: $00
	nop                                              ; $65a0: $00
	nop                                              ; $65a1: $00
	nop                                              ; $65a2: $00
	nop                                              ; $65a3: $00
	nop                                              ; $65a4: $00
	ld   h, b                                        ; $65a5: $60
	nop                                              ; $65a6: $00
	ld   h, b                                        ; $65a7: $60
	nop                                              ; $65a8: $00
	ld   h, [hl]                                     ; $65a9: $66
	nop                                              ; $65aa: $00
	ld   h, a                                        ; $65ab: $67
	nop                                              ; $65ac: $00
	db   $e3                                         ; $65ad: $e3
	nop                                              ; $65ae: $00
	ldh  [rP1], a                                    ; $65af: $e0 $00
	ld   a, b                                        ; $65b1: $78
	nop                                              ; $65b2: $00
	ld   l, h                                        ; $65b3: $6c
	nop                                              ; $65b4: $00
	ld   h, b                                        ; $65b5: $60
	nop                                              ; $65b6: $00
	ldh  [rP1], a                                    ; $65b7: $e0 $00
	ret  nz                                          ; $65b9: $c0

	nop                                              ; $65ba: $00
	add  b                                           ; $65bb: $80
	nop                                              ; $65bc: $00
	rlca                                             ; $65bd: $07
	nop                                              ; $65be: $00
	nop                                              ; $65bf: $00
	nop                                              ; $65c0: $00
	nop                                              ; $65c1: $00
	nop                                              ; $65c2: $00
	nop                                              ; $65c3: $00
	nop                                              ; $65c4: $00
	ld   b, $00                                      ; $65c5: $06 $00
	ld   b, $00                                      ; $65c7: $06 $00
	ld   b, $00                                      ; $65c9: $06 $00
	ld   b, $00                                      ; $65cb: $06 $00
	add  $00                                         ; $65cd: $c6 $00
	ld   b, $00                                      ; $65cf: $06 $00
	ld   b, $00                                      ; $65d1: $06 $00
	ld   b, $00                                      ; $65d3: $06 $00
	ld   c, $00                                      ; $65d5: $0e $00
	inc  c                                           ; $65d7: $0c
	nop                                              ; $65d8: $00
	inc  e                                           ; $65d9: $1c
	nop                                              ; $65da: $00
	ld   a, b                                        ; $65db: $78
	nop                                              ; $65dc: $00
	ldh  [rP1], a                                    ; $65dd: $e0 $00
	nop                                              ; $65df: $00
	nop                                              ; $65e0: $00
	nop                                              ; $65e1: $00
	nop                                              ; $65e2: $00
	nop                                              ; $65e3: $00
	nop                                              ; $65e4: $00
	ret  nz                                          ; $65e5: $c0

	nop                                              ; $65e6: $00
	ret  nz                                          ; $65e7: $c0

	nop                                              ; $65e8: $00
	ret  nz                                          ; $65e9: $c0

	nop                                              ; $65ea: $00
	ret  nz                                          ; $65eb: $c0

	nop                                              ; $65ec: $00
	ret  nz                                          ; $65ed: $c0

	nop                                              ; $65ee: $00
	ldh  a, [rP1]                                    ; $65ef: $f0 $00
	call c, wType0AnimSpriteXPosRelativeTo                                    ; $65f1: $dc $00 $c6
	nop                                              ; $65f4: $00
	ret  nz                                          ; $65f5: $c0

	nop                                              ; $65f6: $00
	ret  nz                                          ; $65f7: $c0

	nop                                              ; $65f8: $00
	ret  nz                                          ; $65f9: $c0

	nop                                              ; $65fa: $00
	ret  nz                                          ; $65fb: $c0

	nop                                              ; $65fc: $00
	ret  nz                                          ; $65fd: $c0

	nop                                              ; $65fe: $00
	nop                                              ; $65ff: $00
	nop                                              ; $6600: $00
	nop                                              ; $6601: $00
	nop                                              ; $6602: $00
	nop                                              ; $6603: $00
	nop                                              ; $6604: $00
	rst  $38                                         ; $6605: $ff
	nop                                              ; $6606: $00
	ld   bc, $0100                                   ; $6607: $01 $00 $01
	nop                                              ; $660a: $00
	ld   bc, $0100                                   ; $660b: $01 $00 $01
	nop                                              ; $660e: $00
	ld   bc, $0100                                   ; $660f: $01 $00 $01
	nop                                              ; $6612: $00
	ld   bc, $0300                                   ; $6613: $01 $00 $03
	nop                                              ; $6616: $00
	inc  bc                                          ; $6617: $03
	nop                                              ; $6618: $00
	rlca                                             ; $6619: $07
	nop                                              ; $661a: $00
	ld   c, $00                                      ; $661b: $0e $00
	ld   a, b                                        ; $661d: $78
	nop                                              ; $661e: $00
	nop                                              ; $661f: $00
	nop                                              ; $6620: $00
	nop                                              ; $6621: $00
	nop                                              ; $6622: $00
	ld   [hl], b                                     ; $6623: $70
	nop                                              ; $6624: $00
	db   $db                                         ; $6625: $db
	nop                                              ; $6626: $00
	db   $db                                         ; $6627: $db
	nop                                              ; $6628: $00
	db   $db                                         ; $6629: $db
	nop                                              ; $662a: $00
	di                                               ; $662b: $f3
	nop                                              ; $662c: $00
	add  e                                           ; $662d: $83
	nop                                              ; $662e: $00
	add  e                                           ; $662f: $83
	nop                                              ; $6630: $00
	add  e                                           ; $6631: $83
	nop                                              ; $6632: $00
	add  e                                           ; $6633: $83
	nop                                              ; $6634: $00
	add  e                                           ; $6635: $83
	nop                                              ; $6636: $00
	inc  bc                                          ; $6637: $03
	nop                                              ; $6638: $00
	inc  bc                                          ; $6639: $03
	nop                                              ; $663a: $00
	inc  bc                                          ; $663b: $03
	nop                                              ; $663c: $00
	inc  bc                                          ; $663d: $03
	nop                                              ; $663e: $00
	nop                                              ; $663f: $00
	nop                                              ; $6640: $00
	nop                                              ; $6641: $00
	nop                                              ; $6642: $00
	nop                                              ; $6643: $00
	nop                                              ; $6644: $00
	db   $fc                                         ; $6645: $fc
	nop                                              ; $6646: $00
	inc  c                                           ; $6647: $0c
	nop                                              ; $6648: $00
	inc  c                                           ; $6649: $0c
	nop                                              ; $664a: $00
	inc  c                                           ; $664b: $0c
	nop                                              ; $664c: $00
	inc  c                                           ; $664d: $0c
	nop                                              ; $664e: $00
	inc  c                                           ; $664f: $0c
	nop                                              ; $6650: $00
	dec  c                                           ; $6651: $0d
	nop                                              ; $6652: $00
	inc  c                                           ; $6653: $0c
	nop                                              ; $6654: $00
	inc  c                                           ; $6655: $0c
	nop                                              ; $6656: $00
	inc  c                                           ; $6657: $0c
	nop                                              ; $6658: $00
	inc  c                                           ; $6659: $0c
	nop                                              ; $665a: $00
	inc  c                                           ; $665b: $0c
	nop                                              ; $665c: $00
	db   $fc                                         ; $665d: $fc
	nop                                              ; $665e: $00
	nop                                              ; $665f: $00
	nop                                              ; $6660: $00
	nop                                              ; $6661: $00
	nop                                              ; $6662: $00
	nop                                              ; $6663: $00
	nop                                              ; $6664: $00
	ld   a, a                                        ; $6665: $7f
	nop                                              ; $6666: $00
	ld   h, c                                        ; $6667: $61
	nop                                              ; $6668: $00
	ld   h, c                                        ; $6669: $61
	nop                                              ; $666a: $00
	ld   h, c                                        ; $666b: $61
	nop                                              ; $666c: $00
	ld   h, c                                        ; $666d: $61
	nop                                              ; $666e: $00
	pop  de                                          ; $666f: $d1
	nop                                              ; $6670: $00
	adc  a                                           ; $6671: $8f
	nop                                              ; $6672: $00
	inc  bc                                          ; $6673: $03
	nop                                              ; $6674: $00
	inc  bc                                          ; $6675: $03
	nop                                              ; $6676: $00
	rlca                                             ; $6677: $07
	nop                                              ; $6678: $00
	ld   c, $00                                      ; $6679: $0e $00
	inc  e                                           ; $667b: $1c
	nop                                              ; $667c: $00
	ld   [hl], b                                     ; $667d: $70
	nop                                              ; $667e: $00
	nop                                              ; $667f: $00
	nop                                              ; $6680: $00
	nop                                              ; $6681: $00
	nop                                              ; $6682: $00
	nop                                              ; $6683: $00
	nop                                              ; $6684: $00
	db   $db                                         ; $6685: $db
	nop                                              ; $6686: $00
	db   $db                                         ; $6687: $db
	nop                                              ; $6688: $00
	add  e                                           ; $6689: $83
	nop                                              ; $668a: $00
	add  e                                           ; $668b: $83
	nop                                              ; $668c: $00
	add  e                                           ; $668d: $83
	nop                                              ; $668e: $00
	add  d                                           ; $668f: $82
	nop                                              ; $6690: $00
	add  h                                           ; $6691: $84
	nop                                              ; $6692: $00
	add  b                                           ; $6693: $80
	nop                                              ; $6694: $00
	nop                                              ; $6695: $00
	nop                                              ; $6696: $00
	nop                                              ; $6697: $00
	nop                                              ; $6698: $00
	nop                                              ; $6699: $00
	nop                                              ; $669a: $00
	nop                                              ; $669b: $00
	nop                                              ; $669c: $00
	inc  bc                                          ; $669d: $03
	nop                                              ; $669e: $00
	nop                                              ; $669f: $00
	nop                                              ; $66a0: $00
	nop                                              ; $66a1: $00
	nop                                              ; $66a2: $00
	nop                                              ; $66a3: $00
	nop                                              ; $66a4: $00
	db   $fc                                         ; $66a5: $fc
	nop                                              ; $66a6: $00
	inc  c                                           ; $66a7: $0c
	nop                                              ; $66a8: $00
	dec  c                                           ; $66a9: $0d
	nop                                              ; $66aa: $00
	inc  c                                           ; $66ab: $0c
	nop                                              ; $66ac: $00
	inc  c                                           ; $66ad: $0c
	nop                                              ; $66ae: $00
	dec  c                                           ; $66af: $0d
	nop                                              ; $66b0: $00
	inc  c                                           ; $66b1: $0c
	nop                                              ; $66b2: $00
	inc  c                                           ; $66b3: $0c
	nop                                              ; $66b4: $00
	inc  e                                           ; $66b5: $1c
	nop                                              ; $66b6: $00
	jr   jr_032_66b9                                 ; $66b7: $18 $00

jr_032_66b9:
	jr   c, jr_032_66bb                              ; $66b9: $38 $00

jr_032_66bb:
	ld   [hl], b                                     ; $66bb: $70
	nop                                              ; $66bc: $00
	pop  bc                                          ; $66bd: $c1
	nop                                              ; $66be: $00
	nop                                              ; $66bf: $00
	nop                                              ; $66c0: $00
	nop                                              ; $66c1: $00
	nop                                              ; $66c2: $00
	nop                                              ; $66c3: $00
	nop                                              ; $66c4: $00
	inc  bc                                          ; $66c5: $03
	nop                                              ; $66c6: $00
	inc  bc                                          ; $66c7: $03
	nop                                              ; $66c8: $00
	db   $e3                                         ; $66c9: $e3
	nop                                              ; $66ca: $00
	inc  bc                                          ; $66cb: $03
	nop                                              ; $66cc: $00
	inc  bc                                          ; $66cd: $03
	nop                                              ; $66ce: $00
	db   $e3                                         ; $66cf: $e3
	nop                                              ; $66d0: $00
	inc  bc                                          ; $66d1: $03
	nop                                              ; $66d2: $00
	inc  bc                                          ; $66d3: $03
	nop                                              ; $66d4: $00
	inc  bc                                          ; $66d5: $03
	nop                                              ; $66d6: $00
	rlca                                             ; $66d7: $07
	nop                                              ; $66d8: $00
	ld   c, $00                                      ; $66d9: $0e $00
	inc  e                                           ; $66db: $1c
	nop                                              ; $66dc: $00
	ldh  a, [rP1]                                    ; $66dd: $f0 $00
	nop                                              ; $66df: $00
	nop                                              ; $66e0: $00
	nop                                              ; $66e1: $00
	nop                                              ; $66e2: $00
	nop                                              ; $66e3: $00
	nop                                              ; $66e4: $00
	nop                                              ; $66e5: $00
	nop                                              ; $66e6: $00
	nop                                              ; $66e7: $00
	nop                                              ; $66e8: $00
	nop                                              ; $66e9: $00
	nop                                              ; $66ea: $00
	nop                                              ; $66eb: $00
	nop                                              ; $66ec: $00
	nop                                              ; $66ed: $00
	nop                                              ; $66ee: $00
	nop                                              ; $66ef: $00
	nop                                              ; $66f0: $00
	ld   a, h                                        ; $66f1: $7c
	nop                                              ; $66f2: $00
	ld   b, $00                                      ; $66f3: $06 $00
	ld   b, $00                                      ; $66f5: $06 $00
	ld   a, $00                                      ; $66f7: $3e $00
	ld   b, $00                                      ; $66f9: $06 $00
	ld   b, $00                                      ; $66fb: $06 $00
	ld   a, [hl]                                     ; $66fd: $7e
	nop                                              ; $66fe: $00
	nop                                              ; $66ff: $00
	nop                                              ; $6700: $00
	nop                                              ; $6701: $00
	nop                                              ; $6702: $00
	nop                                              ; $6703: $00
	nop                                              ; $6704: $00
	nop                                              ; $6705: $00
	nop                                              ; $6706: $00
	nop                                              ; $6707: $00
	nop                                              ; $6708: $00
	ret  nz                                          ; $6709: $c0

	nop                                              ; $670a: $00
	ldh  [rP1], a                                    ; $670b: $e0 $00
	ld   a, b                                        ; $670d: $78
	nop                                              ; $670e: $00
	nop                                              ; $670f: $00
	nop                                              ; $6710: $00
	nop                                              ; $6711: $00
	nop                                              ; $6712: $00
	nop                                              ; $6713: $00
	nop                                              ; $6714: $00
	ld   bc, $0100                                   ; $6715: $01 $00 $01
	nop                                              ; $6718: $00
	inc  bc                                          ; $6719: $03
	nop                                              ; $671a: $00
	rrca                                             ; $671b: $0f
	nop                                              ; $671c: $00
	db   $fc                                         ; $671d: $fc
	nop                                              ; $671e: $00
	nop                                              ; $671f: $00
	nop                                              ; $6720: $00
	nop                                              ; $6721: $00
	nop                                              ; $6722: $00
	nop                                              ; $6723: $00
	nop                                              ; $6724: $00
	rst  JumpTable                                         ; $6725: $df
	nop                                              ; $6726: $00
	ret  nz                                          ; $6727: $c0

	nop                                              ; $6728: $00
	ret  nz                                          ; $6729: $c0

	nop                                              ; $672a: $00
	ret  nz                                          ; $672b: $c0

	nop                                              ; $672c: $00
	ret  nz                                          ; $672d: $c0

	nop                                              ; $672e: $00
	ret  nz                                          ; $672f: $c0

	nop                                              ; $6730: $00
	ret  nz                                          ; $6731: $c0

	nop                                              ; $6732: $00
	ret  nz                                          ; $6733: $c0

	nop                                              ; $6734: $00
	ret  nz                                          ; $6735: $c0

	nop                                              ; $6736: $00
	add  b                                           ; $6737: $80
	nop                                              ; $6738: $00
	add  b                                           ; $6739: $80
	nop                                              ; $673a: $00
	nop                                              ; $673b: $00
	nop                                              ; $673c: $00
	ccf                                              ; $673d: $3f
	nop                                              ; $673e: $00
	nop                                              ; $673f: $00
	nop                                              ; $6740: $00
	nop                                              ; $6741: $00
	nop                                              ; $6742: $00
	nop                                              ; $6743: $00
	nop                                              ; $6744: $00
	add  b                                           ; $6745: $80
	nop                                              ; $6746: $00
	ret  nz                                          ; $6747: $c0

	nop                                              ; $6748: $00
	ret  nz                                          ; $6749: $c0

	nop                                              ; $674a: $00
	ret  nz                                          ; $674b: $c0

	nop                                              ; $674c: $00
	ret  nz                                          ; $674d: $c0

	nop                                              ; $674e: $00
	ret  nz                                          ; $674f: $c0

	nop                                              ; $6750: $00
	rst  JumpTable                                         ; $6751: $df
	nop                                              ; $6752: $00
	ret  nz                                          ; $6753: $c0

	nop                                              ; $6754: $00
	ret  nz                                          ; $6755: $c0

	nop                                              ; $6756: $00
	ret  nz                                          ; $6757: $c0

	nop                                              ; $6758: $00
	ret  nz                                          ; $6759: $c0

	nop                                              ; $675a: $00
	ret  nz                                          ; $675b: $c0

	nop                                              ; $675c: $00
	ret  nz                                          ; $675d: $c0

	nop                                              ; $675e: $00
	nop                                              ; $675f: $00
	nop                                              ; $6760: $00
	nop                                              ; $6761: $00
	nop                                              ; $6762: $00
	nop                                              ; $6763: $00
	nop                                              ; $6764: $00
	ld   a, a                                        ; $6765: $7f
	nop                                              ; $6766: $00
	nop                                              ; $6767: $00
	nop                                              ; $6768: $00
	nop                                              ; $6769: $00
	nop                                              ; $676a: $00
	nop                                              ; $676b: $00
	nop                                              ; $676c: $00
	rst  $38                                         ; $676d: $ff
	nop                                              ; $676e: $00
	ld   b, $00                                      ; $676f: $06 $00
	ld   b, $00                                      ; $6771: $06 $00
	ld   b, $00                                      ; $6773: $06 $00
	ld   b, $00                                      ; $6775: $06 $00
	ld   b, $00                                      ; $6777: $06 $00
	ld   c, $00                                      ; $6779: $0e $00
	inc  e                                           ; $677b: $1c
	nop                                              ; $677c: $00
	ld   [hl], b                                     ; $677d: $70
	nop                                              ; $677e: $00
	nop                                              ; $677f: $00
	nop                                              ; $6780: $00
	nop                                              ; $6781: $00
	nop                                              ; $6782: $00
	nop                                              ; $6783: $00
	nop                                              ; $6784: $00
	ret  c                                           ; $6785: $d8

	nop                                              ; $6786: $00
	reti                                             ; $6787: $d9


	nop                                              ; $6788: $00
	nop                                              ; $6789: $00
	nop                                              ; $678a: $00
	nop                                              ; $678b: $00
	nop                                              ; $678c: $00
	ret  nz                                          ; $678d: $c0

	nop                                              ; $678e: $00
	nop                                              ; $678f: $00
	nop                                              ; $6790: $00
	ld   b, $00                                      ; $6791: $06 $00
	inc  e                                           ; $6793: $1c
	nop                                              ; $6794: $00
	ld   a, c                                        ; $6795: $79
	nop                                              ; $6796: $00
	jr   jr_032_6799                                 ; $6797: $18 $00

jr_032_6799:
	jr   jr_032_679b                                 ; $6799: $18 $00

jr_032_679b:
	jr   jr_032_679d                                 ; $679b: $18 $00

jr_032_679d:
	jr   jr_032_679f                                 ; $679d: $18 $00

jr_032_679f:
	nop                                              ; $679f: $00
	nop                                              ; $67a0: $00
	nop                                              ; $67a1: $00
	nop                                              ; $67a2: $00
	nop                                              ; $67a3: $00
	nop                                              ; $67a4: $00
	jr   jr_032_67a7                                 ; $67a5: $18 $00

jr_032_67a7:
	rst  $38                                         ; $67a7: $ff
	nop                                              ; $67a8: $00
	inc  bc                                          ; $67a9: $03
	nop                                              ; $67aa: $00
	rlca                                             ; $67ab: $07
	nop                                              ; $67ac: $00
	ld   b, $00                                      ; $67ad: $06 $00
	inc  c                                           ; $67af: $0c
	nop                                              ; $67b0: $00
	jr   jr_032_67b3                                 ; $67b1: $18 $00

jr_032_67b3:
	ld   a, e                                        ; $67b3: $7b
	nop                                              ; $67b4: $00
	reti                                             ; $67b5: $d9


	nop                                              ; $67b6: $00
	jr   jr_032_67b9                                 ; $67b7: $18 $00

jr_032_67b9:
	jr   jr_032_67bb                                 ; $67b9: $18 $00

jr_032_67bb:
	jr   jr_032_67bd                                 ; $67bb: $18 $00

jr_032_67bd:
	jr   jr_032_67bf                                 ; $67bd: $18 $00

jr_032_67bf:
	nop                                              ; $67bf: $00
	nop                                              ; $67c0: $00
	nop                                              ; $67c1: $00
	nop                                              ; $67c2: $00
	nop                                              ; $67c3: $00
	nop                                              ; $67c4: $00
	nop                                              ; $67c5: $00
	nop                                              ; $67c6: $00
	nop                                              ; $67c7: $00
	nop                                              ; $67c8: $00
	nop                                              ; $67c9: $00
	nop                                              ; $67ca: $00
	nop                                              ; $67cb: $00
	nop                                              ; $67cc: $00
	nop                                              ; $67cd: $00
	nop                                              ; $67ce: $00
	nop                                              ; $67cf: $00
	nop                                              ; $67d0: $00
	ld   a, $00                                      ; $67d1: $3e $00
	nop                                              ; $67d3: $00
	nop                                              ; $67d4: $00
	add  b                                           ; $67d5: $80
	nop                                              ; $67d6: $00
	ret  nz                                          ; $67d7: $c0

	nop                                              ; $67d8: $00
	nop                                              ; $67d9: $00
	nop                                              ; $67da: $00
	nop                                              ; $67db: $00
	nop                                              ; $67dc: $00
	nop                                              ; $67dd: $00
	nop                                              ; $67de: $00
	nop                                              ; $67df: $00
	nop                                              ; $67e0: $00
	nop                                              ; $67e1: $00
	nop                                              ; $67e2: $00
	nop                                              ; $67e3: $00
	nop                                              ; $67e4: $00
	ret  nz                                          ; $67e5: $c0

	nop                                              ; $67e6: $00
	ret  nz                                          ; $67e7: $c0

	nop                                              ; $67e8: $00
	ret  nz                                          ; $67e9: $c0

	nop                                              ; $67ea: $00
	ret  nz                                          ; $67eb: $c0

	nop                                              ; $67ec: $00
	ret  nz                                          ; $67ed: $c0

	nop                                              ; $67ee: $00
	ldh  a, [rP1]                                    ; $67ef: $f0 $00
	call c, wType0AnimSpriteXPosRelativeTo                                    ; $67f1: $dc $00 $c6
	nop                                              ; $67f4: $00
	ret  nz                                          ; $67f5: $c0

	nop                                              ; $67f6: $00
	ret  nz                                          ; $67f7: $c0

	nop                                              ; $67f8: $00
	ret  nz                                          ; $67f9: $c0

	nop                                              ; $67fa: $00
	ret  nz                                          ; $67fb: $c0

	nop                                              ; $67fc: $00
	ret  nz                                          ; $67fd: $c0

	nop                                              ; $67fe: $00
	nop                                              ; $67ff: $00
	nop                                              ; $6800: $00
	nop                                              ; $6801: $00
	nop                                              ; $6802: $00
	nop                                              ; $6803: $00
	nop                                              ; $6804: $00
	nop                                              ; $6805: $00
	nop                                              ; $6806: $00
	nop                                              ; $6807: $00
	nop                                              ; $6808: $00
	nop                                              ; $6809: $00
	nop                                              ; $680a: $00
	nop                                              ; $680b: $00
	nop                                              ; $680c: $00
	nop                                              ; $680d: $00
	nop                                              ; $680e: $00
	nop                                              ; $680f: $00
	nop                                              ; $6810: $00
	nop                                              ; $6811: $00
	nop                                              ; $6812: $00
	nop                                              ; $6813: $00
	nop                                              ; $6814: $00
	nop                                              ; $6815: $00
	nop                                              ; $6816: $00
	nop                                              ; $6817: $00
	nop                                              ; $6818: $00
	nop                                              ; $6819: $00
	nop                                              ; $681a: $00
	nop                                              ; $681b: $00
	nop                                              ; $681c: $00
	nop                                              ; $681d: $00
	nop                                              ; $681e: $00
	nop                                              ; $681f: $00
	nop                                              ; $6820: $00
	nop                                              ; $6821: $00
	nop                                              ; $6822: $00
	nop                                              ; $6823: $00
	nop                                              ; $6824: $00
	nop                                              ; $6825: $00
	nop                                              ; $6826: $00
	nop                                              ; $6827: $00
	nop                                              ; $6828: $00
	nop                                              ; $6829: $00
	nop                                              ; $682a: $00
	nop                                              ; $682b: $00
	nop                                              ; $682c: $00
	nop                                              ; $682d: $00
	nop                                              ; $682e: $00
	nop                                              ; $682f: $00
	nop                                              ; $6830: $00
	nop                                              ; $6831: $00
	nop                                              ; $6832: $00
	nop                                              ; $6833: $00
	nop                                              ; $6834: $00
	nop                                              ; $6835: $00
	nop                                              ; $6836: $00
	nop                                              ; $6837: $00
	nop                                              ; $6838: $00
	nop                                              ; $6839: $00
	nop                                              ; $683a: $00
	nop                                              ; $683b: $00
	nop                                              ; $683c: $00
	nop                                              ; $683d: $00
	nop                                              ; $683e: $00
	nop                                              ; $683f: $00
	nop                                              ; $6840: $00
	nop                                              ; $6841: $00
	nop                                              ; $6842: $00
	nop                                              ; $6843: $00
	nop                                              ; $6844: $00
	nop                                              ; $6845: $00
	nop                                              ; $6846: $00
	nop                                              ; $6847: $00
	nop                                              ; $6848: $00
	nop                                              ; $6849: $00
	nop                                              ; $684a: $00
	nop                                              ; $684b: $00
	nop                                              ; $684c: $00
	nop                                              ; $684d: $00
	nop                                              ; $684e: $00
	nop                                              ; $684f: $00
	nop                                              ; $6850: $00
	nop                                              ; $6851: $00
	nop                                              ; $6852: $00
	nop                                              ; $6853: $00
	nop                                              ; $6854: $00
	nop                                              ; $6855: $00
	nop                                              ; $6856: $00
	nop                                              ; $6857: $00
	nop                                              ; $6858: $00
	nop                                              ; $6859: $00
	nop                                              ; $685a: $00
	nop                                              ; $685b: $00
	nop                                              ; $685c: $00
	nop                                              ; $685d: $00
	nop                                              ; $685e: $00
	nop                                              ; $685f: $00
	nop                                              ; $6860: $00
	nop                                              ; $6861: $00
	nop                                              ; $6862: $00
	nop                                              ; $6863: $00
	nop                                              ; $6864: $00
	nop                                              ; $6865: $00
	nop                                              ; $6866: $00
	nop                                              ; $6867: $00
	nop                                              ; $6868: $00
	nop                                              ; $6869: $00
	nop                                              ; $686a: $00
	nop                                              ; $686b: $00
	nop                                              ; $686c: $00
	nop                                              ; $686d: $00
	nop                                              ; $686e: $00
	nop                                              ; $686f: $00
	nop                                              ; $6870: $00
	nop                                              ; $6871: $00
	nop                                              ; $6872: $00
	nop                                              ; $6873: $00
	nop                                              ; $6874: $00
	nop                                              ; $6875: $00
	nop                                              ; $6876: $00
	nop                                              ; $6877: $00
	nop                                              ; $6878: $00
	nop                                              ; $6879: $00
	nop                                              ; $687a: $00
	nop                                              ; $687b: $00
	nop                                              ; $687c: $00
	nop                                              ; $687d: $00
	nop                                              ; $687e: $00
	nop                                              ; $687f: $00
	nop                                              ; $6880: $00
	nop                                              ; $6881: $00
	nop                                              ; $6882: $00
	nop                                              ; $6883: $00
	nop                                              ; $6884: $00
	nop                                              ; $6885: $00
	nop                                              ; $6886: $00
	ld   bc, $0000                                   ; $6887: $01 $00 $00
	nop                                              ; $688a: $00
	nop                                              ; $688b: $00
	nop                                              ; $688c: $00
	nop                                              ; $688d: $00
	nop                                              ; $688e: $00
	inc  bc                                          ; $688f: $03
	nop                                              ; $6890: $00
	nop                                              ; $6891: $00
	nop                                              ; $6892: $00
	nop                                              ; $6893: $00
	nop                                              ; $6894: $00
	nop                                              ; $6895: $00
	nop                                              ; $6896: $00
	nop                                              ; $6897: $00
	nop                                              ; $6898: $00
	nop                                              ; $6899: $00
	nop                                              ; $689a: $00
	nop                                              ; $689b: $00
	nop                                              ; $689c: $00
	ld   bc, $0000                                   ; $689d: $01 $00 $00
	nop                                              ; $68a0: $00
	nop                                              ; $68a1: $00
	nop                                              ; $68a2: $00
	nop                                              ; $68a3: $00
	nop                                              ; $68a4: $00
	ld   e, $00                                      ; $68a5: $1e $00
	ld   hl, sp+$00                                  ; $68a7: $f8 $00
	jr   jr_032_68ab                                 ; $68a9: $18 $00

jr_032_68ab:
	jr   jr_032_68ad                                 ; $68ab: $18 $00

jr_032_68ad:
	jr   jr_032_68af                                 ; $68ad: $18 $00

jr_032_68af:
	rst  $38                                         ; $68af: $ff
	nop                                              ; $68b0: $00
	jr   jr_032_68b3                                 ; $68b1: $18 $00

jr_032_68b3:
	jr   jr_032_68b5                                 ; $68b3: $18 $00

jr_032_68b5:
	jr   jr_032_68b7                                 ; $68b5: $18 $00

jr_032_68b7:
	jr   jr_032_68b9                                 ; $68b7: $18 $00

jr_032_68b9:
	jr   c, jr_032_68bb                              ; $68b9: $38 $00

jr_032_68bb:
	ld   [hl], b                                     ; $68bb: $70
	nop                                              ; $68bc: $00
	pop  bc                                          ; $68bd: $c1
	nop                                              ; $68be: $00
	nop                                              ; $68bf: $00
	nop                                              ; $68c0: $00
	nop                                              ; $68c1: $00
	nop                                              ; $68c2: $00
	nop                                              ; $68c3: $00
	nop                                              ; $68c4: $00
	nop                                              ; $68c5: $00
	nop                                              ; $68c6: $00
	nop                                              ; $68c7: $00
	nop                                              ; $68c8: $00
	nop                                              ; $68c9: $00
	nop                                              ; $68ca: $00
	nop                                              ; $68cb: $00
	nop                                              ; $68cc: $00
	nop                                              ; $68cd: $00
	nop                                              ; $68ce: $00
	add  b                                           ; $68cf: $80
	nop                                              ; $68d0: $00
	rrca                                             ; $68d1: $0f
	nop                                              ; $68d2: $00
	nop                                              ; $68d3: $00
	nop                                              ; $68d4: $00
	ldh  [rP1], a                                    ; $68d5: $e0 $00
	jr   nc, jr_032_68d9                             ; $68d7: $30 $00

jr_032_68d9:
	jr   nc, jr_032_68db                             ; $68d9: $30 $00

jr_032_68db:
	jr   nc, jr_032_68dd                             ; $68db: $30 $00

jr_032_68dd:
	ld   hl, sp+$00                                  ; $68dd: $f8 $00
	nop                                              ; $68df: $00
	nop                                              ; $68e0: $00
	nop                                              ; $68e1: $00
	nop                                              ; $68e2: $00
	nop                                              ; $68e3: $00
	nop                                              ; $68e4: $00
	nop                                              ; $68e5: $00
	nop                                              ; $68e6: $00
	ccf                                              ; $68e7: $3f
	nop                                              ; $68e8: $00
	nop                                              ; $68e9: $00
	nop                                              ; $68ea: $00
	nop                                              ; $68eb: $00
	nop                                              ; $68ec: $00
	nop                                              ; $68ed: $00
	nop                                              ; $68ee: $00
	nop                                              ; $68ef: $00
	nop                                              ; $68f0: $00
	add  b                                           ; $68f1: $80
	nop                                              ; $68f2: $00
	nop                                              ; $68f3: $00
	nop                                              ; $68f4: $00
	nop                                              ; $68f5: $00
	nop                                              ; $68f6: $00
	nop                                              ; $68f7: $00
	nop                                              ; $68f8: $00
	nop                                              ; $68f9: $00
	nop                                              ; $68fa: $00
	nop                                              ; $68fb: $00
	nop                                              ; $68fc: $00
	ld   a, a                                        ; $68fd: $7f
	nop                                              ; $68fe: $00
	nop                                              ; $68ff: $00
	nop                                              ; $6900: $00
	nop                                              ; $6901: $00
	nop                                              ; $6902: $00
	nop                                              ; $6903: $00
	nop                                              ; $6904: $00
	nop                                              ; $6905: $00
	nop                                              ; $6906: $00
	add  b                                           ; $6907: $80
	nop                                              ; $6908: $00
	inc  c                                           ; $6909: $0c
	nop                                              ; $690a: $00
	ld   c, $00                                      ; $690b: $0e $00
	rlca                                             ; $690d: $07
	nop                                              ; $690e: $00
	nop                                              ; $690f: $00
	nop                                              ; $6910: $00
	nop                                              ; $6911: $00
	nop                                              ; $6912: $00
	nop                                              ; $6913: $00
	nop                                              ; $6914: $00
	nop                                              ; $6915: $00
	nop                                              ; $6916: $00
	nop                                              ; $6917: $00
	nop                                              ; $6918: $00
	nop                                              ; $6919: $00
	nop                                              ; $691a: $00
	nop                                              ; $691b: $00
	nop                                              ; $691c: $00
	rst  $28                                         ; $691d: $ef
	nop                                              ; $691e: $00
	nop                                              ; $691f: $00
	nop                                              ; $6920: $00
	nop                                              ; $6921: $00
	nop                                              ; $6922: $00
	nop                                              ; $6923: $00
	nop                                              ; $6924: $00
	inc  c                                           ; $6925: $0c
	nop                                              ; $6926: $00
	inc  c                                           ; $6927: $0c
	nop                                              ; $6928: $00
	inc  c                                           ; $6929: $0c
	nop                                              ; $692a: $00
	inc  c                                           ; $692b: $0c
	nop                                              ; $692c: $00
	adc  h                                           ; $692d: $8c
	nop                                              ; $692e: $00
	inc  c                                           ; $692f: $0c
	nop                                              ; $6930: $00
	dec  c                                           ; $6931: $0d
	nop                                              ; $6932: $00
	inc  c                                           ; $6933: $0c
	nop                                              ; $6934: $00
	inc  e                                           ; $6935: $1c
	nop                                              ; $6936: $00
	jr   jr_032_6939                                 ; $6937: $18 $00

jr_032_6939:
	jr   c, jr_032_693b                              ; $6939: $38 $00

jr_032_693b:
	ldh  a, [rP1]                                    ; $693b: $f0 $00
	ret  nz                                          ; $693d: $c0

	nop                                              ; $693e: $00
	nop                                              ; $693f: $00
	nop                                              ; $6940: $00
	nop                                              ; $6941: $00
	nop                                              ; $6942: $00
	ld   bc, $ff00                                   ; $6943: $01 $00 $ff
	nop                                              ; $6946: $00
	jp   $c300                                       ; $6947: $c3 $00 $c3


	nop                                              ; $694a: $00
	jp   $c300                                       ; $694b: $c3 $00 $c3


	nop                                              ; $694e: $00
	add  e                                           ; $694f: $83
	nop                                              ; $6950: $00
	inc  bc                                          ; $6951: $03
	nop                                              ; $6952: $00
	inc  bc                                          ; $6953: $03
	nop                                              ; $6954: $00
	rlca                                             ; $6955: $07
	nop                                              ; $6956: $00
	ld   b, $00                                      ; $6957: $06 $00
	ld   c, $00                                      ; $6959: $0e $00
	inc  e                                           ; $695b: $1c
	nop                                              ; $695c: $00
	ldh  a, [rP1]                                    ; $695d: $f0 $00
	nop                                              ; $695f: $00
	nop                                              ; $6960: $00
	nop                                              ; $6961: $00
	nop                                              ; $6962: $00
	or   b                                           ; $6963: $b0
	nop                                              ; $6964: $00
	or   b                                           ; $6965: $b0
	nop                                              ; $6966: $00
	or   b                                           ; $6967: $b0
	nop                                              ; $6968: $00
	nop                                              ; $6969: $00
	nop                                              ; $696a: $00
	nop                                              ; $696b: $00
	nop                                              ; $696c: $00
	nop                                              ; $696d: $00
	nop                                              ; $696e: $00
	nop                                              ; $696f: $00
	nop                                              ; $6970: $00
	nop                                              ; $6971: $00
	nop                                              ; $6972: $00
	nop                                              ; $6973: $00
	nop                                              ; $6974: $00
	nop                                              ; $6975: $00
	nop                                              ; $6976: $00
	nop                                              ; $6977: $00
	nop                                              ; $6978: $00
	nop                                              ; $6979: $00
	nop                                              ; $697a: $00
	nop                                              ; $697b: $00
	nop                                              ; $697c: $00
	nop                                              ; $697d: $00
	nop                                              ; $697e: $00
	nop                                              ; $697f: $00
	nop                                              ; $6980: $00
	nop                                              ; $6981: $00
	nop                                              ; $6982: $00
	nop                                              ; $6983: $00
	nop                                              ; $6984: $00
	nop                                              ; $6985: $00
	nop                                              ; $6986: $00
	nop                                              ; $6987: $00
	nop                                              ; $6988: $00
	nop                                              ; $6989: $00
	nop                                              ; $698a: $00
	nop                                              ; $698b: $00
	nop                                              ; $698c: $00
	nop                                              ; $698d: $00
	nop                                              ; $698e: $00
	nop                                              ; $698f: $00
	nop                                              ; $6990: $00
	nop                                              ; $6991: $00
	nop                                              ; $6992: $00
	nop                                              ; $6993: $00
	nop                                              ; $6994: $00
	nop                                              ; $6995: $00
	nop                                              ; $6996: $00
	nop                                              ; $6997: $00
	nop                                              ; $6998: $00
	nop                                              ; $6999: $00
	nop                                              ; $699a: $00
	nop                                              ; $699b: $00
	nop                                              ; $699c: $00
	nop                                              ; $699d: $00
	nop                                              ; $699e: $00
	nop                                              ; $699f: $00
	nop                                              ; $69a0: $00
	nop                                              ; $69a1: $00
	nop                                              ; $69a2: $00
	nop                                              ; $69a3: $00
	nop                                              ; $69a4: $00
	nop                                              ; $69a5: $00
	nop                                              ; $69a6: $00
	nop                                              ; $69a7: $00
	nop                                              ; $69a8: $00
	nop                                              ; $69a9: $00
	nop                                              ; $69aa: $00
	nop                                              ; $69ab: $00
	nop                                              ; $69ac: $00
	nop                                              ; $69ad: $00
	nop                                              ; $69ae: $00
	nop                                              ; $69af: $00
	nop                                              ; $69b0: $00
	nop                                              ; $69b1: $00
	nop                                              ; $69b2: $00
	nop                                              ; $69b3: $00
	nop                                              ; $69b4: $00
	nop                                              ; $69b5: $00
	nop                                              ; $69b6: $00
	nop                                              ; $69b7: $00
	nop                                              ; $69b8: $00
	nop                                              ; $69b9: $00
	nop                                              ; $69ba: $00
	nop                                              ; $69bb: $00
	nop                                              ; $69bc: $00
	nop                                              ; $69bd: $00
	nop                                              ; $69be: $00
	nop                                              ; $69bf: $00
	nop                                              ; $69c0: $00
	nop                                              ; $69c1: $00
	nop                                              ; $69c2: $00
	nop                                              ; $69c3: $00
	nop                                              ; $69c4: $00
	nop                                              ; $69c5: $00
	nop                                              ; $69c6: $00
	nop                                              ; $69c7: $00
	nop                                              ; $69c8: $00
	nop                                              ; $69c9: $00
	nop                                              ; $69ca: $00
	nop                                              ; $69cb: $00
	nop                                              ; $69cc: $00
	nop                                              ; $69cd: $00
	nop                                              ; $69ce: $00
	nop                                              ; $69cf: $00
	nop                                              ; $69d0: $00
	nop                                              ; $69d1: $00
	nop                                              ; $69d2: $00
	nop                                              ; $69d3: $00
	nop                                              ; $69d4: $00
	nop                                              ; $69d5: $00
	nop                                              ; $69d6: $00
	nop                                              ; $69d7: $00
	nop                                              ; $69d8: $00
	nop                                              ; $69d9: $00
	nop                                              ; $69da: $00
	nop                                              ; $69db: $00
	nop                                              ; $69dc: $00
	nop                                              ; $69dd: $00
	nop                                              ; $69de: $00
	nop                                              ; $69df: $00
	nop                                              ; $69e0: $00
	nop                                              ; $69e1: $00
	nop                                              ; $69e2: $00
	nop                                              ; $69e3: $00
	nop                                              ; $69e4: $00
	nop                                              ; $69e5: $00
	nop                                              ; $69e6: $00
	nop                                              ; $69e7: $00
	nop                                              ; $69e8: $00
	nop                                              ; $69e9: $00
	nop                                              ; $69ea: $00
	nop                                              ; $69eb: $00
	nop                                              ; $69ec: $00
	nop                                              ; $69ed: $00
	nop                                              ; $69ee: $00
	nop                                              ; $69ef: $00
	nop                                              ; $69f0: $00
	nop                                              ; $69f1: $00
	nop                                              ; $69f2: $00
	nop                                              ; $69f3: $00
	nop                                              ; $69f4: $00
	nop                                              ; $69f5: $00
	nop                                              ; $69f6: $00
	nop                                              ; $69f7: $00
	nop                                              ; $69f8: $00
	nop                                              ; $69f9: $00
	nop                                              ; $69fa: $00
	nop                                              ; $69fb: $00
	nop                                              ; $69fc: $00
	nop                                              ; $69fd: $00
	nop                                              ; $69fe: $00
	nop                                              ; $69ff: $00
	nop                                              ; $6a00: $00
	nop                                              ; $6a01: $00
	nop                                              ; $6a02: $00
	nop                                              ; $6a03: $00
	nop                                              ; $6a04: $00
	nop                                              ; $6a05: $00
	nop                                              ; $6a06: $00
	nop                                              ; $6a07: $00
	nop                                              ; $6a08: $00
	nop                                              ; $6a09: $00
	nop                                              ; $6a0a: $00
	nop                                              ; $6a0b: $00
	nop                                              ; $6a0c: $00
	nop                                              ; $6a0d: $00
	nop                                              ; $6a0e: $00
	nop                                              ; $6a0f: $00
	nop                                              ; $6a10: $00
	nop                                              ; $6a11: $00
	nop                                              ; $6a12: $00
	nop                                              ; $6a13: $00
	nop                                              ; $6a14: $00
	nop                                              ; $6a15: $00
	nop                                              ; $6a16: $00
	nop                                              ; $6a17: $00
	nop                                              ; $6a18: $00
	nop                                              ; $6a19: $00
	nop                                              ; $6a1a: $00
	nop                                              ; $6a1b: $00
	nop                                              ; $6a1c: $00
	nop                                              ; $6a1d: $00
	nop                                              ; $6a1e: $00
	nop                                              ; $6a1f: $00
	nop                                              ; $6a20: $00
	nop                                              ; $6a21: $00
	nop                                              ; $6a22: $00
	nop                                              ; $6a23: $00
	nop                                              ; $6a24: $00
	rlca                                             ; $6a25: $07
	nop                                              ; $6a26: $00
	nop                                              ; $6a27: $00
	nop                                              ; $6a28: $00
	nop                                              ; $6a29: $00
	nop                                              ; $6a2a: $00
	nop                                              ; $6a2b: $00
	nop                                              ; $6a2c: $00
	nop                                              ; $6a2d: $00
	nop                                              ; $6a2e: $00
	nop                                              ; $6a2f: $00
	nop                                              ; $6a30: $00
	nop                                              ; $6a31: $00
	nop                                              ; $6a32: $00
	nop                                              ; $6a33: $00
	nop                                              ; $6a34: $00
	nop                                              ; $6a35: $00
	nop                                              ; $6a36: $00
	nop                                              ; $6a37: $00
	nop                                              ; $6a38: $00
	nop                                              ; $6a39: $00
	nop                                              ; $6a3a: $00
	nop                                              ; $6a3b: $00
	nop                                              ; $6a3c: $00
	inc  bc                                          ; $6a3d: $03
	nop                                              ; $6a3e: $00
	nop                                              ; $6a3f: $00
	nop                                              ; $6a40: $00
	nop                                              ; $6a41: $00
	nop                                              ; $6a42: $00
	inc  bc                                          ; $6a43: $03
	nop                                              ; $6a44: $00
	cp   $00                                         ; $6a45: $fe $00
	ld   c, $00                                      ; $6a47: $0e $00
	ld   c, $00                                      ; $6a49: $0e $00
	rrca                                             ; $6a4b: $0f
	nop                                              ; $6a4c: $00
	inc  c                                           ; $6a4d: $0c
	nop                                              ; $6a4e: $00
	inc  c                                           ; $6a4f: $0c
	nop                                              ; $6a50: $00
	inc  c                                           ; $6a51: $0c
	nop                                              ; $6a52: $00
	inc  c                                           ; $6a53: $0c
	nop                                              ; $6a54: $00
	inc  e                                           ; $6a55: $1c
	nop                                              ; $6a56: $00
	jr   jr_032_6a59                                 ; $6a57: $18 $00

jr_032_6a59:
	jr   c, jr_032_6a5b                              ; $6a59: $38 $00

jr_032_6a5b:
	ld   [hl], b                                     ; $6a5b: $70
	nop                                              ; $6a5c: $00
	ret  nz                                          ; $6a5d: $c0

	nop                                              ; $6a5e: $00
	nop                                              ; $6a5f: $00
	nop                                              ; $6a60: $00
	nop                                              ; $6a61: $00
	nop                                              ; $6a62: $00
	add  b                                           ; $6a63: $80
	nop                                              ; $6a64: $00
	rst  JumpTable                                         ; $6a65: $df
	nop                                              ; $6a66: $00
	ret  c                                           ; $6a67: $d8

	nop                                              ; $6a68: $00
	ret  c                                           ; $6a69: $d8

	nop                                              ; $6a6a: $00
	sbc  b                                           ; $6a6b: $98
	nop                                              ; $6a6c: $00
	jr   jr_032_6a6f                                 ; $6a6d: $18 $00

jr_032_6a6f:
	jr   jr_032_6a71                                 ; $6a6f: $18 $00

jr_032_6a71:
	jr   jr_032_6a73                                 ; $6a71: $18 $00

jr_032_6a73:
	jr   jr_032_6a75                                 ; $6a73: $18 $00

jr_032_6a75:
	jr   jr_032_6a77                                 ; $6a75: $18 $00

jr_032_6a77:
	jr   jr_032_6a79                                 ; $6a77: $18 $00

jr_032_6a79:
	jr   jr_032_6a7b                                 ; $6a79: $18 $00

jr_032_6a7b:
	jr   jr_032_6a7d                                 ; $6a7b: $18 $00

jr_032_6a7d:
	rra                                              ; $6a7d: $1f
	nop                                              ; $6a7e: $00
	nop                                              ; $6a7f: $00
	nop                                              ; $6a80: $00
	nop                                              ; $6a81: $00
	nop                                              ; $6a82: $00
	nop                                              ; $6a83: $00
	nop                                              ; $6a84: $00
	db   $e3                                         ; $6a85: $e3
	nop                                              ; $6a86: $00
	ld   h, e                                        ; $6a87: $63
	nop                                              ; $6a88: $00
	ld   h, e                                        ; $6a89: $63
	nop                                              ; $6a8a: $00
	ld   h, e                                        ; $6a8b: $63
	nop                                              ; $6a8c: $00
	ld   h, e                                        ; $6a8d: $63
	nop                                              ; $6a8e: $00
	ld   h, [hl]                                     ; $6a8f: $66
	nop                                              ; $6a90: $00
	ld   l, h                                        ; $6a91: $6c
	nop                                              ; $6a92: $00
	ld   h, b                                        ; $6a93: $60
	nop                                              ; $6a94: $00
	ld   h, b                                        ; $6a95: $60
	nop                                              ; $6a96: $00
	ld   h, b                                        ; $6a97: $60
	nop                                              ; $6a98: $00
	ld   h, b                                        ; $6a99: $60
	nop                                              ; $6a9a: $00
	ld   h, b                                        ; $6a9b: $60
	nop                                              ; $6a9c: $00
	db   $e3                                         ; $6a9d: $e3
	nop                                              ; $6a9e: $00
	nop                                              ; $6a9f: $00
	nop                                              ; $6aa0: $00
	nop                                              ; $6aa1: $00
	nop                                              ; $6aa2: $00
	ld   b, $00                                      ; $6aa3: $06 $00
	cp   $00                                         ; $6aa5: $fe $00
	ld   c, $00                                      ; $6aa7: $0e $00
	inc  c                                           ; $6aa9: $0c
	nop                                              ; $6aaa: $00
	inc  c                                           ; $6aab: $0c
	nop                                              ; $6aac: $00
	inc  c                                           ; $6aad: $0c
	nop                                              ; $6aae: $00
	adc  h                                           ; $6aaf: $8c
	nop                                              ; $6ab0: $00
	ld   a, h                                        ; $6ab1: $7c
	nop                                              ; $6ab2: $00
	inc  e                                           ; $6ab3: $1c
	nop                                              ; $6ab4: $00
	jr   jr_032_6ab7                                 ; $6ab5: $18 $00

jr_032_6ab7:
	jr   c, jr_032_6ab9                              ; $6ab7: $38 $00

jr_032_6ab9:
	ld   [hl], b                                     ; $6ab9: $70
	nop                                              ; $6aba: $00
	ldh  [rP1], a                                    ; $6abb: $e0 $00
	add  b                                           ; $6abd: $80
	nop                                              ; $6abe: $00
	nop                                              ; $6abf: $00
	nop                                              ; $6ac0: $00
	nop                                              ; $6ac1: $00
	nop                                              ; $6ac2: $00
	ret  nz                                          ; $6ac3: $c0

	nop                                              ; $6ac4: $00
	rst  JumpTable                                         ; $6ac5: $df
	nop                                              ; $6ac6: $00
	ret  c                                           ; $6ac7: $d8

	nop                                              ; $6ac8: $00
	jr   jr_032_6acb                                 ; $6ac9: $18 $00

jr_032_6acb:
	jr   jr_032_6acd                                 ; $6acb: $18 $00

jr_032_6acd:
	jr   jr_032_6acf                                 ; $6acd: $18 $00

jr_032_6acf:
	stop                                             ; $6acf: $10 $00
	jr   nz, jr_032_6ad3                             ; $6ad1: $20 $00

jr_032_6ad3:
	nop                                              ; $6ad3: $00
	nop                                              ; $6ad4: $00
	nop                                              ; $6ad5: $00
	nop                                              ; $6ad6: $00
	nop                                              ; $6ad7: $00
	nop                                              ; $6ad8: $00
	ld   bc, $0300                                   ; $6ad9: $01 $00 $03
	nop                                              ; $6adc: $00
	ld   e, $00                                      ; $6add: $1e $00
	nop                                              ; $6adf: $00
	nop                                              ; $6ae0: $00
	nop                                              ; $6ae1: $00
	nop                                              ; $6ae2: $00
	nop                                              ; $6ae3: $00
	nop                                              ; $6ae4: $00
	and  $00                                         ; $6ae5: $e6 $00
	ld   h, [hl]                                     ; $6ae7: $66
	nop                                              ; $6ae8: $00
	ld   h, [hl]                                     ; $6ae9: $66
	nop                                              ; $6aea: $00
	ld   h, [hl]                                     ; $6aeb: $66
	nop                                              ; $6aec: $00
	ld   h, [hl]                                     ; $6aed: $66
	nop                                              ; $6aee: $00
	ld   h, a                                        ; $6aef: $67
	nop                                              ; $6af0: $00
	ld   h, [hl]                                     ; $6af1: $66
	nop                                              ; $6af2: $00
	ld   h, [hl]                                     ; $6af3: $66
	nop                                              ; $6af4: $00
	and  $00                                         ; $6af5: $e6 $00
	add  $00                                         ; $6af7: $c6 $00
	add  $00                                         ; $6af9: $c6 $00
	add  [hl]                                        ; $6afb: $86
	nop                                              ; $6afc: $00
	ld   b, $00                                      ; $6afd: $06 $00
	nop                                              ; $6aff: $00
	nop                                              ; $6b00: $00
	nop                                              ; $6b01: $00
	nop                                              ; $6b02: $00
	nop                                              ; $6b03: $00
	nop                                              ; $6b04: $00
	rlca                                             ; $6b05: $07
	nop                                              ; $6b06: $00
	nop                                              ; $6b07: $00
	nop                                              ; $6b08: $00
	nop                                              ; $6b09: $00
	nop                                              ; $6b0a: $00
	nop                                              ; $6b0b: $00
	nop                                              ; $6b0c: $00
	rrca                                             ; $6b0d: $0f
	nop                                              ; $6b0e: $00
	add  b                                           ; $6b0f: $80
	nop                                              ; $6b10: $00
	ldh  [rP1], a                                    ; $6b11: $e0 $00
	jr   nc, jr_032_6b15                             ; $6b13: $30 $00

jr_032_6b15:
	nop                                              ; $6b15: $00
	nop                                              ; $6b16: $00
	nop                                              ; $6b17: $00
	nop                                              ; $6b18: $00
	nop                                              ; $6b19: $00
	nop                                              ; $6b1a: $00
	ld   bc, $0700                                   ; $6b1b: $01 $00 $07
	nop                                              ; $6b1e: $00
	nop                                              ; $6b1f: $00
	nop                                              ; $6b20: $00
	nop                                              ; $6b21: $00
	nop                                              ; $6b22: $00
	dec  c                                           ; $6b23: $0d
	nop                                              ; $6b24: $00
	db   $fd                                         ; $6b25: $fd
	nop                                              ; $6b26: $00
	dec  c                                           ; $6b27: $0d
	nop                                              ; $6b28: $00
	nop                                              ; $6b29: $00
	nop                                              ; $6b2a: $00
	nop                                              ; $6b2b: $00
	nop                                              ; $6b2c: $00
	db   $fc                                         ; $6b2d: $fc
	nop                                              ; $6b2e: $00
	ld   h, b                                        ; $6b2f: $60
	nop                                              ; $6b30: $00
	ld   h, b                                        ; $6b31: $60
	nop                                              ; $6b32: $00
	ld   h, b                                        ; $6b33: $60
	nop                                              ; $6b34: $00
	ld   h, b                                        ; $6b35: $60
	nop                                              ; $6b36: $00
	ld   h, b                                        ; $6b37: $60
	nop                                              ; $6b38: $00
	ldh  [rP1], a                                    ; $6b39: $e0 $00
	ret  nz                                          ; $6b3b: $c0

	nop                                              ; $6b3c: $00
	nop                                              ; $6b3d: $00
	nop                                              ; $6b3e: $00
	nop                                              ; $6b3f: $00
	nop                                              ; $6b40: $00
	nop                                              ; $6b41: $00
	nop                                              ; $6b42: $00
	sbc  b                                           ; $6b43: $98
	nop                                              ; $6b44: $00
	sbc  b                                           ; $6b45: $98
	nop                                              ; $6b46: $00
	sbc  b                                           ; $6b47: $98
	nop                                              ; $6b48: $00
	rst  $38                                         ; $6b49: $ff
	nop                                              ; $6b4a: $00
	jr   jr_032_6b4d                                 ; $6b4b: $18 $00

jr_032_6b4d:
	jr   jr_032_6b4f                                 ; $6b4d: $18 $00

jr_032_6b4f:
	jr   jr_032_6b51                                 ; $6b4f: $18 $00

jr_032_6b51:
	nop                                              ; $6b51: $00
	nop                                              ; $6b52: $00
	nop                                              ; $6b53: $00
	nop                                              ; $6b54: $00
	nop                                              ; $6b55: $00
	nop                                              ; $6b56: $00
	ld   bc, $0100                                   ; $6b57: $01 $00 $01
	nop                                              ; $6b5a: $00
	inc  bc                                          ; $6b5b: $03
	nop                                              ; $6b5c: $00
	ld   c, $00                                      ; $6b5d: $0e $00
	nop                                              ; $6b5f: $00
	nop                                              ; $6b60: $00
	nop                                              ; $6b61: $00
	nop                                              ; $6b62: $00
	call $cd00                                       ; $6b63: $cd $00 $cd
	nop                                              ; $6b66: $00
	call $f800                                       ; $6b67: $cd $00 $f8
	nop                                              ; $6b6a: $00
	ret  nz                                          ; $6b6b: $c0

	nop                                              ; $6b6c: $00
	ret  nz                                          ; $6b6d: $c0

	nop                                              ; $6b6e: $00
	jp   $c000                                       ; $6b6f: $c3 $00 $c0


	nop                                              ; $6b72: $00
	ret  nz                                          ; $6b73: $c0

	nop                                              ; $6b74: $00
	ret  nz                                          ; $6b75: $c0

	nop                                              ; $6b76: $00
	ret  nz                                          ; $6b77: $c0

	nop                                              ; $6b78: $00
	add  b                                           ; $6b79: $80
	nop                                              ; $6b7a: $00
	add  b                                           ; $6b7b: $80
	nop                                              ; $6b7c: $00
	nop                                              ; $6b7d: $00
	nop                                              ; $6b7e: $00
	nop                                              ; $6b7f: $00
	nop                                              ; $6b80: $00
	nop                                              ; $6b81: $00
	nop                                              ; $6b82: $00
	add  b                                           ; $6b83: $80
	nop                                              ; $6b84: $00
	add  [hl]                                        ; $6b85: $86
	nop                                              ; $6b86: $00
	add  [hl]                                        ; $6b87: $86
	nop                                              ; $6b88: $00
	ld   c, $00                                      ; $6b89: $0e $00
	inc  e                                           ; $6b8b: $1c
	nop                                              ; $6b8c: $00
	ld   a, b                                        ; $6b8d: $78
	nop                                              ; $6b8e: $00
	ld   hl, sp+$00                                  ; $6b8f: $f8 $00
	jr   jr_032_6b93                                 ; $6b91: $18 $00

jr_032_6b93:
	jr   jr_032_6b95                                 ; $6b93: $18 $00

jr_032_6b95:
	jr   jr_032_6b97                                 ; $6b95: $18 $00

jr_032_6b97:
	jr   jr_032_6b99                                 ; $6b97: $18 $00

jr_032_6b99:
	jr   jr_032_6b9b                                 ; $6b99: $18 $00

jr_032_6b9b:
	jr   jr_032_6b9d                                 ; $6b9b: $18 $00

jr_032_6b9d:
	jr   jr_032_6b9f                                 ; $6b9d: $18 $00

jr_032_6b9f:
	nop                                              ; $6b9f: $00
	nop                                              ; $6ba0: $00
	nop                                              ; $6ba1: $00
	nop                                              ; $6ba2: $00
	nop                                              ; $6ba3: $00
	nop                                              ; $6ba4: $00
	nop                                              ; $6ba5: $00
	nop                                              ; $6ba6: $00
	nop                                              ; $6ba7: $00
	nop                                              ; $6ba8: $00
	ret  nz                                          ; $6ba9: $c0

	nop                                              ; $6baa: $00
	ldh  [rP1], a                                    ; $6bab: $e0 $00
	ld   a, b                                        ; $6bad: $78
	nop                                              ; $6bae: $00
	nop                                              ; $6baf: $00
	nop                                              ; $6bb0: $00
	nop                                              ; $6bb1: $00
	nop                                              ; $6bb2: $00
	nop                                              ; $6bb3: $00
	nop                                              ; $6bb4: $00
	ld   bc, $0100                                   ; $6bb5: $01 $00 $01
	nop                                              ; $6bb8: $00
	inc  bc                                          ; $6bb9: $03
	nop                                              ; $6bba: $00
	rrca                                             ; $6bbb: $0f
	nop                                              ; $6bbc: $00
	db   $fc                                         ; $6bbd: $fc
	nop                                              ; $6bbe: $00
	nop                                              ; $6bbf: $00
	nop                                              ; $6bc0: $00
	nop                                              ; $6bc1: $00
	nop                                              ; $6bc2: $00
	nop                                              ; $6bc3: $00
	nop                                              ; $6bc4: $00
	ret  nz                                          ; $6bc5: $c0

	nop                                              ; $6bc6: $00
	ret  nz                                          ; $6bc7: $c0

	nop                                              ; $6bc8: $00
	ret  nz                                          ; $6bc9: $c0

	nop                                              ; $6bca: $00
	ret  nz                                          ; $6bcb: $c0

	nop                                              ; $6bcc: $00
	ret  nz                                          ; $6bcd: $c0

	nop                                              ; $6bce: $00
	ret  nz                                          ; $6bcf: $c0

	nop                                              ; $6bd0: $00
	ret  nz                                          ; $6bd1: $c0

	nop                                              ; $6bd2: $00
	ret  nz                                          ; $6bd3: $c0

	nop                                              ; $6bd4: $00
	ret  nz                                          ; $6bd5: $c0

	nop                                              ; $6bd6: $00
	add  b                                           ; $6bd7: $80
	nop                                              ; $6bd8: $00
	add  b                                           ; $6bd9: $80
	nop                                              ; $6bda: $00
	nop                                              ; $6bdb: $00
	nop                                              ; $6bdc: $00
	nop                                              ; $6bdd: $00
	nop                                              ; $6bde: $00
	nop                                              ; $6bdf: $00
	nop                                              ; $6be0: $00
	nop                                              ; $6be1: $00
	nop                                              ; $6be2: $00
	nop                                              ; $6be3: $00
	nop                                              ; $6be4: $00
	nop                                              ; $6be5: $00
	nop                                              ; $6be6: $00
	nop                                              ; $6be7: $00
	nop                                              ; $6be8: $00
	nop                                              ; $6be9: $00
	nop                                              ; $6bea: $00
	nop                                              ; $6beb: $00
	nop                                              ; $6bec: $00
	nop                                              ; $6bed: $00
	nop                                              ; $6bee: $00
	nop                                              ; $6bef: $00
	nop                                              ; $6bf0: $00
	nop                                              ; $6bf1: $00
	nop                                              ; $6bf2: $00
	nop                                              ; $6bf3: $00
	nop                                              ; $6bf4: $00
	nop                                              ; $6bf5: $00
	nop                                              ; $6bf6: $00
	nop                                              ; $6bf7: $00
	nop                                              ; $6bf8: $00
	nop                                              ; $6bf9: $00
	nop                                              ; $6bfa: $00
	nop                                              ; $6bfb: $00
	nop                                              ; $6bfc: $00
	nop                                              ; $6bfd: $00
	nop                                              ; $6bfe: $00
	nop                                              ; $6bff: $00
	nop                                              ; $6c00: $00
	nop                                              ; $6c01: $00
	nop                                              ; $6c02: $00
	nop                                              ; $6c03: $00
	nop                                              ; $6c04: $00
	nop                                              ; $6c05: $00
	nop                                              ; $6c06: $00
	nop                                              ; $6c07: $00
	nop                                              ; $6c08: $00
	nop                                              ; $6c09: $00
	nop                                              ; $6c0a: $00
	nop                                              ; $6c0b: $00
	nop                                              ; $6c0c: $00
	nop                                              ; $6c0d: $00
	nop                                              ; $6c0e: $00
	nop                                              ; $6c0f: $00
	nop                                              ; $6c10: $00
	nop                                              ; $6c11: $00
	nop                                              ; $6c12: $00
	nop                                              ; $6c13: $00
	nop                                              ; $6c14: $00
	nop                                              ; $6c15: $00
	nop                                              ; $6c16: $00
	nop                                              ; $6c17: $00
	nop                                              ; $6c18: $00
	nop                                              ; $6c19: $00
	nop                                              ; $6c1a: $00
	nop                                              ; $6c1b: $00
	nop                                              ; $6c1c: $00
	nop                                              ; $6c1d: $00
	nop                                              ; $6c1e: $00
	nop                                              ; $6c1f: $00
	nop                                              ; $6c20: $00
	nop                                              ; $6c21: $00
	nop                                              ; $6c22: $00
	nop                                              ; $6c23: $00
	nop                                              ; $6c24: $00
	nop                                              ; $6c25: $00
	nop                                              ; $6c26: $00
	nop                                              ; $6c27: $00
	nop                                              ; $6c28: $00
	nop                                              ; $6c29: $00
	nop                                              ; $6c2a: $00
	nop                                              ; $6c2b: $00
	nop                                              ; $6c2c: $00
	nop                                              ; $6c2d: $00
	nop                                              ; $6c2e: $00
	nop                                              ; $6c2f: $00
	nop                                              ; $6c30: $00
	nop                                              ; $6c31: $00
	nop                                              ; $6c32: $00
	nop                                              ; $6c33: $00
	nop                                              ; $6c34: $00
	nop                                              ; $6c35: $00
	nop                                              ; $6c36: $00
	nop                                              ; $6c37: $00
	nop                                              ; $6c38: $00
	nop                                              ; $6c39: $00
	nop                                              ; $6c3a: $00
	nop                                              ; $6c3b: $00
	nop                                              ; $6c3c: $00
	nop                                              ; $6c3d: $00
	nop                                              ; $6c3e: $00
	nop                                              ; $6c3f: $00
	nop                                              ; $6c40: $00
	nop                                              ; $6c41: $00
	nop                                              ; $6c42: $00
	nop                                              ; $6c43: $00
	nop                                              ; $6c44: $00
	nop                                              ; $6c45: $00
	nop                                              ; $6c46: $00
	nop                                              ; $6c47: $00
	nop                                              ; $6c48: $00
	nop                                              ; $6c49: $00
	nop                                              ; $6c4a: $00
	nop                                              ; $6c4b: $00
	nop                                              ; $6c4c: $00
	nop                                              ; $6c4d: $00
	nop                                              ; $6c4e: $00
	nop                                              ; $6c4f: $00
	nop                                              ; $6c50: $00
	nop                                              ; $6c51: $00
	nop                                              ; $6c52: $00
	nop                                              ; $6c53: $00
	nop                                              ; $6c54: $00
	nop                                              ; $6c55: $00
	nop                                              ; $6c56: $00
	nop                                              ; $6c57: $00
	nop                                              ; $6c58: $00
	nop                                              ; $6c59: $00
	nop                                              ; $6c5a: $00
	nop                                              ; $6c5b: $00
	nop                                              ; $6c5c: $00
	nop                                              ; $6c5d: $00
	nop                                              ; $6c5e: $00
	nop                                              ; $6c5f: $00
	nop                                              ; $6c60: $00
	nop                                              ; $6c61: $00
	nop                                              ; $6c62: $00
	nop                                              ; $6c63: $00
	nop                                              ; $6c64: $00
	inc  bc                                          ; $6c65: $03
	nop                                              ; $6c66: $00
	nop                                              ; $6c67: $00
	nop                                              ; $6c68: $00
	nop                                              ; $6c69: $00
	nop                                              ; $6c6a: $00
	nop                                              ; $6c6b: $00
	nop                                              ; $6c6c: $00
	nop                                              ; $6c6d: $00
	nop                                              ; $6c6e: $00
	nop                                              ; $6c6f: $00
	nop                                              ; $6c70: $00
	nop                                              ; $6c71: $00
	nop                                              ; $6c72: $00
	nop                                              ; $6c73: $00
	nop                                              ; $6c74: $00
	nop                                              ; $6c75: $00
	nop                                              ; $6c76: $00
	nop                                              ; $6c77: $00
	nop                                              ; $6c78: $00
	nop                                              ; $6c79: $00
	nop                                              ; $6c7a: $00
	nop                                              ; $6c7b: $00
	nop                                              ; $6c7c: $00
	ld   bc, $0000                                   ; $6c7d: $01 $00 $00
	nop                                              ; $6c80: $00
	nop                                              ; $6c81: $00
	nop                                              ; $6c82: $00
	ld   bc, $ff00                                   ; $6c83: $01 $00 $ff
	nop                                              ; $6c86: $00
	rlca                                             ; $6c87: $07
	nop                                              ; $6c88: $00
	rlca                                             ; $6c89: $07
	nop                                              ; $6c8a: $00
	rlca                                             ; $6c8b: $07
	nop                                              ; $6c8c: $00
	ld   b, $00                                      ; $6c8d: $06 $00
	ld   b, $00                                      ; $6c8f: $06 $00
	ld   b, $00                                      ; $6c91: $06 $00
	ld   b, $00                                      ; $6c93: $06 $00
	ld   c, $00                                      ; $6c95: $0e $00
	inc  c                                           ; $6c97: $0c
	nop                                              ; $6c98: $00
	inc  e                                           ; $6c99: $1c
	nop                                              ; $6c9a: $00
	jr   c, jr_032_6c9d                              ; $6c9b: $38 $00

jr_032_6c9d:
	ldh  [rP1], a                                    ; $6c9d: $e0 $00
	nop                                              ; $6c9f: $00
	nop                                              ; $6ca0: $00
	nop                                              ; $6ca1: $00
	nop                                              ; $6ca2: $00
	ret  nz                                          ; $6ca3: $c0

	nop                                              ; $6ca4: $00
	ld   l, a                                        ; $6ca5: $6f
	nop                                              ; $6ca6: $00
	ld   l, h                                        ; $6ca7: $6c
	nop                                              ; $6ca8: $00
	ld   l, h                                        ; $6ca9: $6c
	nop                                              ; $6caa: $00
	call z, $0c00                                    ; $6cab: $cc $00 $0c
	nop                                              ; $6cae: $00
	inc  c                                           ; $6caf: $0c
	nop                                              ; $6cb0: $00
	inc  c                                           ; $6cb1: $0c
	nop                                              ; $6cb2: $00
	inc  c                                           ; $6cb3: $0c
	nop                                              ; $6cb4: $00
	inc  c                                           ; $6cb5: $0c
	nop                                              ; $6cb6: $00
	inc  c                                           ; $6cb7: $0c
	nop                                              ; $6cb8: $00
	inc  c                                           ; $6cb9: $0c
	nop                                              ; $6cba: $00
	inc  c                                           ; $6cbb: $0c
	nop                                              ; $6cbc: $00
	rrca                                             ; $6cbd: $0f
	nop                                              ; $6cbe: $00
	nop                                              ; $6cbf: $00
	nop                                              ; $6cc0: $00
	nop                                              ; $6cc1: $00
	nop                                              ; $6cc2: $00
	nop                                              ; $6cc3: $00
	nop                                              ; $6cc4: $00
	di                                               ; $6cc5: $f3
	nop                                              ; $6cc6: $00
	jr   nc, jr_032_6cc9                             ; $6cc7: $30 $00

jr_032_6cc9:
	jr   nc, jr_032_6ccb                             ; $6cc9: $30 $00

jr_032_6ccb:
	jr   nc, jr_032_6ccd                             ; $6ccb: $30 $00

jr_032_6ccd:
	jr   nc, jr_032_6ccf                             ; $6ccd: $30 $00

jr_032_6ccf:
	scf                                              ; $6ccf: $37
	nop                                              ; $6cd0: $00
	jr   nc, jr_032_6cd3                             ; $6cd1: $30 $00

jr_032_6cd3:
	jr   nc, jr_032_6cd5                             ; $6cd3: $30 $00

jr_032_6cd5:
	jr   nc, jr_032_6cd7                             ; $6cd5: $30 $00

jr_032_6cd7:
	jr   nc, jr_032_6cd9                             ; $6cd7: $30 $00

jr_032_6cd9:
	jr   nc, jr_032_6cdb                             ; $6cd9: $30 $00

jr_032_6cdb:
	jr   nc, jr_032_6cdd                             ; $6cdb: $30 $00

jr_032_6cdd:
	ldh  a, [rP1]                                    ; $6cdd: $f0 $00
	nop                                              ; $6cdf: $00
	nop                                              ; $6ce0: $00
	nop                                              ; $6ce1: $00
	nop                                              ; $6ce2: $00
	nop                                              ; $6ce3: $00
	nop                                              ; $6ce4: $00
	db   $fc                                         ; $6ce5: $fc
	nop                                              ; $6ce6: $00
	ret  nz                                          ; $6ce7: $c0

	nop                                              ; $6ce8: $00
	ret  nz                                          ; $6ce9: $c0

	nop                                              ; $6cea: $00
	ret  nz                                          ; $6ceb: $c0

	nop                                              ; $6cec: $00
	ret  nz                                          ; $6ced: $c0

	nop                                              ; $6cee: $00
	cp   $00                                         ; $6cef: $fe $00
	ret  nz                                          ; $6cf1: $c0

	nop                                              ; $6cf2: $00
	ret  nz                                          ; $6cf3: $c0

	nop                                              ; $6cf4: $00
	ret  nz                                          ; $6cf5: $c0

	nop                                              ; $6cf6: $00
	ret  nz                                          ; $6cf7: $c0

	nop                                              ; $6cf8: $00
	ret  nz                                          ; $6cf9: $c0

	nop                                              ; $6cfa: $00
	ret  nz                                          ; $6cfb: $c0

	nop                                              ; $6cfc: $00
	ld   a, [hl]                                     ; $6cfd: $7e
	nop                                              ; $6cfe: $00
	nop                                              ; $6cff: $00
	nop                                              ; $6d00: $00
	nop                                              ; $6d01: $00
	nop                                              ; $6d02: $00
	nop                                              ; $6d03: $00
	nop                                              ; $6d04: $00
	nop                                              ; $6d05: $00
	nop                                              ; $6d06: $00
	nop                                              ; $6d07: $00
	nop                                              ; $6d08: $00
	inc  bc                                          ; $6d09: $03
	nop                                              ; $6d0a: $00
	nop                                              ; $6d0b: $00
	nop                                              ; $6d0c: $00
	nop                                              ; $6d0d: $00
	nop                                              ; $6d0e: $00
	inc  bc                                          ; $6d0f: $03
	nop                                              ; $6d10: $00
	ld   hl, sp+$00                                  ; $6d11: $f8 $00
	nop                                              ; $6d13: $00
	nop                                              ; $6d14: $00
	nop                                              ; $6d15: $00
	nop                                              ; $6d16: $00
	nop                                              ; $6d17: $00
	nop                                              ; $6d18: $00
	nop                                              ; $6d19: $00
	nop                                              ; $6d1a: $00
	nop                                              ; $6d1b: $00
	nop                                              ; $6d1c: $00
	inc  bc                                          ; $6d1d: $03
	nop                                              ; $6d1e: $00
	nop                                              ; $6d1f: $00
	nop                                              ; $6d20: $00
	nop                                              ; $6d21: $00
	nop                                              ; $6d22: $00
	nop                                              ; $6d23: $00
	nop                                              ; $6d24: $00
	ld   b, $00                                      ; $6d25: $06 $00
	ld   b, $00                                      ; $6d27: $06 $00
	add  $00                                         ; $6d29: $c6 $00
	ld   b, $00                                      ; $6d2b: $06 $00
	ld   b, $00                                      ; $6d2d: $06 $00
	add  $00                                         ; $6d2f: $c6 $00
	ld   b, $00                                      ; $6d31: $06 $00
	ld   b, $00                                      ; $6d33: $06 $00
	ld   b, $00                                      ; $6d35: $06 $00
	ld   c, $00                                      ; $6d37: $0e $00
	inc  e                                           ; $6d39: $1c
	nop                                              ; $6d3a: $00
	jr   c, jr_032_6d3d                              ; $6d3b: $38 $00

jr_032_6d3d:
	ldh  [rP1], a                                    ; $6d3d: $e0 $00
	nop                                              ; $6d3f: $00
	nop                                              ; $6d40: $00
	nop                                              ; $6d41: $00
	nop                                              ; $6d42: $00
	nop                                              ; $6d43: $00
	nop                                              ; $6d44: $00
	nop                                              ; $6d45: $00
	nop                                              ; $6d46: $00
	nop                                              ; $6d47: $00
	nop                                              ; $6d48: $00
	ld   bc, $0100                                   ; $6d49: $01 $00 $01
	nop                                              ; $6d4c: $00
	nop                                              ; $6d4d: $00
	nop                                              ; $6d4e: $00
	nop                                              ; $6d4f: $00
	nop                                              ; $6d50: $00
	ld   hl, sp+$00                                  ; $6d51: $f8 $00
	inc  c                                           ; $6d53: $0c
	nop                                              ; $6d54: $00
	inc  c                                           ; $6d55: $0c
	nop                                              ; $6d56: $00
	ld   a, h                                        ; $6d57: $7c
	nop                                              ; $6d58: $00
	inc  c                                           ; $6d59: $0c
	nop                                              ; $6d5a: $00
	inc  c                                           ; $6d5b: $0c
	nop                                              ; $6d5c: $00
	db   $fd                                         ; $6d5d: $fd
	nop                                              ; $6d5e: $00
	nop                                              ; $6d5f: $00
	nop                                              ; $6d60: $00
	nop                                              ; $6d61: $00
	nop                                              ; $6d62: $00
	nop                                              ; $6d63: $00
	nop                                              ; $6d64: $00
	ld   bc, $0100                                   ; $6d65: $01 $00 $01
	nop                                              ; $6d68: $00
	add  c                                           ; $6d69: $81
	nop                                              ; $6d6a: $00
	pop  bc                                          ; $6d6b: $c1
	nop                                              ; $6d6c: $00
	pop  af                                          ; $6d6d: $f1
	nop                                              ; $6d6e: $00
	ld   bc, $0100                                   ; $6d6f: $01 $00 $01
	nop                                              ; $6d72: $00
	ld   bc, $0300                                   ; $6d73: $01 $00 $03
	nop                                              ; $6d76: $00
	inc  bc                                          ; $6d77: $03
	nop                                              ; $6d78: $00
	rlca                                             ; $6d79: $07
	nop                                              ; $6d7a: $00
	ld   e, $00                                      ; $6d7b: $1e $00
	ld   hl, sp+$00                                  ; $6d7d: $f8 $00
	nop                                              ; $6d7f: $00
	nop                                              ; $6d80: $00
	nop                                              ; $6d81: $00
	nop                                              ; $6d82: $00
	nop                                              ; $6d83: $00
	nop                                              ; $6d84: $00
	add  b                                           ; $6d85: $80
	nop                                              ; $6d86: $00
	add  b                                           ; $6d87: $80
	nop                                              ; $6d88: $00
	add  b                                           ; $6d89: $80
	nop                                              ; $6d8a: $00
	add  b                                           ; $6d8b: $80
	nop                                              ; $6d8c: $00
	add  b                                           ; $6d8d: $80
	nop                                              ; $6d8e: $00
	add  b                                           ; $6d8f: $80
	nop                                              ; $6d90: $00
	add  b                                           ; $6d91: $80
	nop                                              ; $6d92: $00
	add  b                                           ; $6d93: $80
	nop                                              ; $6d94: $00
	add  b                                           ; $6d95: $80
	nop                                              ; $6d96: $00
	nop                                              ; $6d97: $00
	nop                                              ; $6d98: $00
	nop                                              ; $6d99: $00
	nop                                              ; $6d9a: $00
	nop                                              ; $6d9b: $00
	nop                                              ; $6d9c: $00
	nop                                              ; $6d9d: $00
	nop                                              ; $6d9e: $00
	nop                                              ; $6d9f: $00
	nop                                              ; $6da0: $00
	nop                                              ; $6da1: $00
	nop                                              ; $6da2: $00
	nop                                              ; $6da3: $00
	nop                                              ; $6da4: $00
	nop                                              ; $6da5: $00
	nop                                              ; $6da6: $00
	nop                                              ; $6da7: $00
	nop                                              ; $6da8: $00
	nop                                              ; $6da9: $00
	nop                                              ; $6daa: $00
	nop                                              ; $6dab: $00
	nop                                              ; $6dac: $00
	nop                                              ; $6dad: $00
	nop                                              ; $6dae: $00
	nop                                              ; $6daf: $00
	nop                                              ; $6db0: $00
	nop                                              ; $6db1: $00
	nop                                              ; $6db2: $00
	nop                                              ; $6db3: $00
	nop                                              ; $6db4: $00
	nop                                              ; $6db5: $00
	nop                                              ; $6db6: $00
	nop                                              ; $6db7: $00
	nop                                              ; $6db8: $00
	nop                                              ; $6db9: $00
	nop                                              ; $6dba: $00
	nop                                              ; $6dbb: $00
	nop                                              ; $6dbc: $00
	nop                                              ; $6dbd: $00
	nop                                              ; $6dbe: $00
	nop                                              ; $6dbf: $00
	nop                                              ; $6dc0: $00
	nop                                              ; $6dc1: $00
	nop                                              ; $6dc2: $00
	nop                                              ; $6dc3: $00
	nop                                              ; $6dc4: $00
	nop                                              ; $6dc5: $00
	nop                                              ; $6dc6: $00
	nop                                              ; $6dc7: $00
	nop                                              ; $6dc8: $00
	nop                                              ; $6dc9: $00
	nop                                              ; $6dca: $00
	nop                                              ; $6dcb: $00
	nop                                              ; $6dcc: $00
	nop                                              ; $6dcd: $00
	nop                                              ; $6dce: $00
	nop                                              ; $6dcf: $00
	nop                                              ; $6dd0: $00
	nop                                              ; $6dd1: $00
	nop                                              ; $6dd2: $00
	nop                                              ; $6dd3: $00
	nop                                              ; $6dd4: $00
	nop                                              ; $6dd5: $00
	nop                                              ; $6dd6: $00
	nop                                              ; $6dd7: $00
	nop                                              ; $6dd8: $00
	nop                                              ; $6dd9: $00
	nop                                              ; $6dda: $00
	nop                                              ; $6ddb: $00
	nop                                              ; $6ddc: $00
	nop                                              ; $6ddd: $00
	nop                                              ; $6dde: $00
	nop                                              ; $6ddf: $00
	nop                                              ; $6de0: $00
	nop                                              ; $6de1: $00
	nop                                              ; $6de2: $00
	nop                                              ; $6de3: $00
	nop                                              ; $6de4: $00
	nop                                              ; $6de5: $00
	nop                                              ; $6de6: $00
	nop                                              ; $6de7: $00
	nop                                              ; $6de8: $00
	nop                                              ; $6de9: $00
	nop                                              ; $6dea: $00
	nop                                              ; $6deb: $00
	nop                                              ; $6dec: $00
	nop                                              ; $6ded: $00
	nop                                              ; $6dee: $00
	nop                                              ; $6def: $00
	nop                                              ; $6df0: $00
	nop                                              ; $6df1: $00
	nop                                              ; $6df2: $00
	nop                                              ; $6df3: $00
	nop                                              ; $6df4: $00
	nop                                              ; $6df5: $00
	nop                                              ; $6df6: $00
	nop                                              ; $6df7: $00
	nop                                              ; $6df8: $00
	nop                                              ; $6df9: $00
	nop                                              ; $6dfa: $00
	nop                                              ; $6dfb: $00
	nop                                              ; $6dfc: $00
	nop                                              ; $6dfd: $00
	nop                                              ; $6dfe: $00
	nop                                              ; $6dff: $00
	nop                                              ; $6e00: $00
	nop                                              ; $6e01: $00
	nop                                              ; $6e02: $00
	nop                                              ; $6e03: $00
	nop                                              ; $6e04: $00
	nop                                              ; $6e05: $00
	nop                                              ; $6e06: $00
	nop                                              ; $6e07: $00
	nop                                              ; $6e08: $00
	nop                                              ; $6e09: $00
	nop                                              ; $6e0a: $00
	nop                                              ; $6e0b: $00
	nop                                              ; $6e0c: $00
	nop                                              ; $6e0d: $00
	nop                                              ; $6e0e: $00
	nop                                              ; $6e0f: $00
	nop                                              ; $6e10: $00
	nop                                              ; $6e11: $00
	nop                                              ; $6e12: $00
	nop                                              ; $6e13: $00
	nop                                              ; $6e14: $00
	nop                                              ; $6e15: $00
	nop                                              ; $6e16: $00
	nop                                              ; $6e17: $00
	nop                                              ; $6e18: $00
	nop                                              ; $6e19: $00
	nop                                              ; $6e1a: $00
	nop                                              ; $6e1b: $00
	nop                                              ; $6e1c: $00
	nop                                              ; $6e1d: $00
	nop                                              ; $6e1e: $00
	nop                                              ; $6e1f: $00
	nop                                              ; $6e20: $00
	nop                                              ; $6e21: $00
	nop                                              ; $6e22: $00
	nop                                              ; $6e23: $00
	nop                                              ; $6e24: $00
	ld   b, $00                                      ; $6e25: $06 $00
	ld   b, $00                                      ; $6e27: $06 $00
	ld   b, $00                                      ; $6e29: $06 $00
	ccf                                              ; $6e2b: $3f
	nop                                              ; $6e2c: $00
	ld   b, $00                                      ; $6e2d: $06 $00
	ld   b, $00                                      ; $6e2f: $06 $00
	ld   b, $00                                      ; $6e31: $06 $00
	ld   b, $00                                      ; $6e33: $06 $00
	ld   b, $00                                      ; $6e35: $06 $00
	ld   b, $00                                      ; $6e37: $06 $00
	ld   b, $00                                      ; $6e39: $06 $00
	rlca                                             ; $6e3b: $07
	nop                                              ; $6e3c: $00
	inc  bc                                          ; $6e3d: $03
	nop                                              ; $6e3e: $00
	nop                                              ; $6e3f: $00
	nop                                              ; $6e40: $00
	nop                                              ; $6e41: $00
	nop                                              ; $6e42: $00
	nop                                              ; $6e43: $00
	nop                                              ; $6e44: $00
	nop                                              ; $6e45: $00
	nop                                              ; $6e46: $00
	nop                                              ; $6e47: $00
	nop                                              ; $6e48: $00
	nop                                              ; $6e49: $00
	nop                                              ; $6e4a: $00
	ld   hl, sp+$00                                  ; $6e4b: $f8 $00
	jr   jr_032_6e4f                                 ; $6e4d: $18 $00

jr_032_6e4f:
	stop                                             ; $6e4f: $10 $00
	rlca                                             ; $6e51: $07
	nop                                              ; $6e52: $00
	nop                                              ; $6e53: $00
	nop                                              ; $6e54: $00
	nop                                              ; $6e55: $00
	nop                                              ; $6e56: $00
	nop                                              ; $6e57: $00
	nop                                              ; $6e58: $00
	nop                                              ; $6e59: $00
	nop                                              ; $6e5a: $00
	nop                                              ; $6e5b: $00
	nop                                              ; $6e5c: $00
	ldh  a, [rP1]                                    ; $6e5d: $f0 $00
	nop                                              ; $6e5f: $00
	nop                                              ; $6e60: $00
	nop                                              ; $6e61: $00
	nop                                              ; $6e62: $00
	nop                                              ; $6e63: $00
	nop                                              ; $6e64: $00
	inc  c                                           ; $6e65: $0c
	nop                                              ; $6e66: $00
	inc  c                                           ; $6e67: $0c
	nop                                              ; $6e68: $00
	inc  c                                           ; $6e69: $0c
	nop                                              ; $6e6a: $00
	inc  c                                           ; $6e6b: $0c
	nop                                              ; $6e6c: $00
	inc  c                                           ; $6e6d: $0c
	nop                                              ; $6e6e: $00
	inc  c                                           ; $6e6f: $0c
	nop                                              ; $6e70: $00
	call z, $0c00                                    ; $6e71: $cc $00 $0c
	nop                                              ; $6e74: $00
	inc  c                                           ; $6e75: $0c
	nop                                              ; $6e76: $00
	inc  e                                           ; $6e77: $1c
	nop                                              ; $6e78: $00
	jr   jr_032_6e7b                                 ; $6e79: $18 $00

jr_032_6e7b:
	jr   c, jr_032_6e7d                              ; $6e7b: $38 $00

jr_032_6e7d:
	ld   h, b                                        ; $6e7d: $60
	nop                                              ; $6e7e: $00
	nop                                              ; $6e7f: $00
	nop                                              ; $6e80: $00
	nop                                              ; $6e81: $00
	nop                                              ; $6e82: $00
	nop                                              ; $6e83: $00
	nop                                              ; $6e84: $00
	ret  nz                                          ; $6e85: $c0

	nop                                              ; $6e86: $00
	ret  nz                                          ; $6e87: $c0

	nop                                              ; $6e88: $00
	ret  nz                                          ; $6e89: $c0

	nop                                              ; $6e8a: $00
	ret  nz                                          ; $6e8b: $c0

	nop                                              ; $6e8c: $00
	ret  nz                                          ; $6e8d: $c0

	nop                                              ; $6e8e: $00
	ret  nz                                          ; $6e8f: $c0

	nop                                              ; $6e90: $00
	ret  nz                                          ; $6e91: $c0

	nop                                              ; $6e92: $00
	ret  nz                                          ; $6e93: $c0

	nop                                              ; $6e94: $00
	add  $00                                         ; $6e95: $c6 $00
	add  $00                                         ; $6e97: $c6 $00
	adc  $00                                         ; $6e99: $ce $00
	call c, $f000                                    ; $6e9b: $dc $00 $f0
	nop                                              ; $6e9e: $00
	nop                                              ; $6e9f: $00
	nop                                              ; $6ea0: $00
	nop                                              ; $6ea1: $00
	nop                                              ; $6ea2: $00
	nop                                              ; $6ea3: $00
	nop                                              ; $6ea4: $00
	rst  $38                                         ; $6ea5: $ff
	nop                                              ; $6ea6: $00
	inc  bc                                          ; $6ea7: $03
	nop                                              ; $6ea8: $00
	inc  bc                                          ; $6ea9: $03
	nop                                              ; $6eaa: $00
	inc  bc                                          ; $6eab: $03
	nop                                              ; $6eac: $00
	rlca                                             ; $6ead: $07
	nop                                              ; $6eae: $00
	ld   b, $00                                      ; $6eaf: $06 $00
	inc  c                                           ; $6eb1: $0c
	nop                                              ; $6eb2: $00
	ld   e, $00                                      ; $6eb3: $1e $00
	ld   [hl-], a                                    ; $6eb5: $32
	nop                                              ; $6eb6: $00
	ld   h, e                                        ; $6eb7: $63
	nop                                              ; $6eb8: $00
	ld   h, c                                        ; $6eb9: $61
	nop                                              ; $6eba: $00
	pop  bc                                          ; $6ebb: $c1
	nop                                              ; $6ebc: $00
	pop  bc                                          ; $6ebd: $c1
	nop                                              ; $6ebe: $00
	nop                                              ; $6ebf: $00
	nop                                              ; $6ec0: $00
	nop                                              ; $6ec1: $00
	nop                                              ; $6ec2: $00
	nop                                              ; $6ec3: $00
	nop                                              ; $6ec4: $00
	ccf                                              ; $6ec5: $3f
	nop                                              ; $6ec6: $00
	nop                                              ; $6ec7: $00
	nop                                              ; $6ec8: $00
	nop                                              ; $6ec9: $00
	nop                                              ; $6eca: $00
	nop                                              ; $6ecb: $00
	nop                                              ; $6ecc: $00
	nop                                              ; $6ecd: $00
	nop                                              ; $6ece: $00
	nop                                              ; $6ecf: $00
	nop                                              ; $6ed0: $00
	nop                                              ; $6ed1: $00
	nop                                              ; $6ed2: $00
	nop                                              ; $6ed3: $00
	nop                                              ; $6ed4: $00
	ld   bc, $0100                                   ; $6ed5: $01 $00 $01
	nop                                              ; $6ed8: $00
	inc  bc                                          ; $6ed9: $03
	nop                                              ; $6eda: $00
	add  a                                           ; $6edb: $87
	nop                                              ; $6edc: $00
	cp   h                                           ; $6edd: $bc
	nop                                              ; $6ede: $00
	nop                                              ; $6edf: $00
	nop                                              ; $6ee0: $00
	nop                                              ; $6ee1: $00
	nop                                              ; $6ee2: $00
	jr   c, jr_032_6ee5                              ; $6ee3: $38 $00

jr_032_6ee5:
	db   $ed                                         ; $6ee5: $ed
	nop                                              ; $6ee6: $00
	db   $ed                                         ; $6ee7: $ed
	nop                                              ; $6ee8: $00
	db   $ed                                         ; $6ee9: $ed
	nop                                              ; $6eea: $00
	ld   sp, hl                                      ; $6eeb: $f9
	nop                                              ; $6eec: $00
	pop  bc                                          ; $6eed: $c1
	nop                                              ; $6eee: $00
	pop  bc                                          ; $6eef: $c1
	nop                                              ; $6ef0: $00
	pop  bc                                          ; $6ef1: $c1
	nop                                              ; $6ef2: $00
	pop  bc                                          ; $6ef3: $c1
	nop                                              ; $6ef4: $00
	pop  bc                                          ; $6ef5: $c1
	nop                                              ; $6ef6: $00
	add  c                                           ; $6ef7: $81
	nop                                              ; $6ef8: $00
	add  c                                           ; $6ef9: $81
	nop                                              ; $6efa: $00
	ld   bc, $0100                                   ; $6efb: $01 $00 $01
	nop                                              ; $6efe: $00
	nop                                              ; $6eff: $00
	nop                                              ; $6f00: $00
	nop                                              ; $6f01: $00
	nop                                              ; $6f02: $00
	nop                                              ; $6f03: $00
	nop                                              ; $6f04: $00
	cp   $00                                         ; $6f05: $fe $00
	add  [hl]                                        ; $6f07: $86
	nop                                              ; $6f08: $00
	add  [hl]                                        ; $6f09: $86
	nop                                              ; $6f0a: $00
	add  [hl]                                        ; $6f0b: $86
	nop                                              ; $6f0c: $00
	add  [hl]                                        ; $6f0d: $86
	nop                                              ; $6f0e: $00
	add  [hl]                                        ; $6f0f: $86
	nop                                              ; $6f10: $00
	add  [hl]                                        ; $6f11: $86
	nop                                              ; $6f12: $00
	add  [hl]                                        ; $6f13: $86
	nop                                              ; $6f14: $00
	add  [hl]                                        ; $6f15: $86
	nop                                              ; $6f16: $00
	add  [hl]                                        ; $6f17: $86
	nop                                              ; $6f18: $00
	add  [hl]                                        ; $6f19: $86
	nop                                              ; $6f1a: $00
	add  [hl]                                        ; $6f1b: $86
	nop                                              ; $6f1c: $00
	cp   $00                                         ; $6f1d: $fe $00
	nop                                              ; $6f1f: $00
	nop                                              ; $6f20: $00
	nop                                              ; $6f21: $00
	nop                                              ; $6f22: $00
	nop                                              ; $6f23: $00
	nop                                              ; $6f24: $00
	ld   a, a                                        ; $6f25: $7f
	nop                                              ; $6f26: $00
	jr   jr_032_6f29                                 ; $6f27: $18 $00

jr_032_6f29:
	jr   jr_032_6f2b                                 ; $6f29: $18 $00

jr_032_6f2b:
	jr   jr_032_6f2d                                 ; $6f2b: $18 $00

jr_032_6f2d:
	jr   jr_032_6f2f                                 ; $6f2d: $18 $00

jr_032_6f2f:
	rst  $38                                         ; $6f2f: $ff
	nop                                              ; $6f30: $00
	jr   jr_032_6f33                                 ; $6f31: $18 $00

jr_032_6f33:
	jr   jr_032_6f35                                 ; $6f33: $18 $00

jr_032_6f35:
	jr   jr_032_6f37                                 ; $6f35: $18 $00

jr_032_6f37:
	jr   jr_032_6f39                                 ; $6f37: $18 $00

jr_032_6f39:
	jr   jr_032_6f3b                                 ; $6f39: $18 $00

jr_032_6f3b:
	jr   jr_032_6f3d                                 ; $6f3b: $18 $00

jr_032_6f3d:
	rrca                                             ; $6f3d: $0f
	nop                                              ; $6f3e: $00
	nop                                              ; $6f3f: $00
	nop                                              ; $6f40: $00
	nop                                              ; $6f41: $00
	nop                                              ; $6f42: $00
	nop                                              ; $6f43: $00
	nop                                              ; $6f44: $00
	add  b                                           ; $6f45: $80
	nop                                              ; $6f46: $00
	nop                                              ; $6f47: $00
	nop                                              ; $6f48: $00
	nop                                              ; $6f49: $00
	nop                                              ; $6f4a: $00
	nop                                              ; $6f4b: $00
	nop                                              ; $6f4c: $00
	nop                                              ; $6f4d: $00
	nop                                              ; $6f4e: $00
	ret  nz                                          ; $6f4f: $c0

	nop                                              ; $6f50: $00
	rra                                              ; $6f51: $1f
	nop                                              ; $6f52: $00
	nop                                              ; $6f53: $00
	nop                                              ; $6f54: $00
	nop                                              ; $6f55: $00
	nop                                              ; $6f56: $00
	nop                                              ; $6f57: $00
	nop                                              ; $6f58: $00
	nop                                              ; $6f59: $00
	nop                                              ; $6f5a: $00
	nop                                              ; $6f5b: $00
	nop                                              ; $6f5c: $00
	ret  nz                                          ; $6f5d: $c0

	nop                                              ; $6f5e: $00
	nop                                              ; $6f5f: $00
	nop                                              ; $6f60: $00
	nop                                              ; $6f61: $00
	nop                                              ; $6f62: $00
	nop                                              ; $6f63: $00
	nop                                              ; $6f64: $00
	nop                                              ; $6f65: $00
	nop                                              ; $6f66: $00
	nop                                              ; $6f67: $00
	nop                                              ; $6f68: $00
	ld   a, b                                        ; $6f69: $78
	nop                                              ; $6f6a: $00
	nop                                              ; $6f6b: $00
	nop                                              ; $6f6c: $00
	nop                                              ; $6f6d: $00
	nop                                              ; $6f6e: $00
	ld   a, b                                        ; $6f6f: $78
	nop                                              ; $6f70: $00
	nop                                              ; $6f71: $00
	nop                                              ; $6f72: $00
	nop                                              ; $6f73: $00
	nop                                              ; $6f74: $00
	nop                                              ; $6f75: $00
	nop                                              ; $6f76: $00
	ld   bc, $0300                                   ; $6f77: $01 $00 $03
	nop                                              ; $6f7a: $00
	rlca                                             ; $6f7b: $07
	nop                                              ; $6f7c: $00
	ld   a, h                                        ; $6f7d: $7c
	nop                                              ; $6f7e: $00
	nop                                              ; $6f7f: $00
	nop                                              ; $6f80: $00
	nop                                              ; $6f81: $00
	nop                                              ; $6f82: $00
	nop                                              ; $6f83: $00
	nop                                              ; $6f84: $00
	ret  nz                                          ; $6f85: $c0

	nop                                              ; $6f86: $00
	ret  nz                                          ; $6f87: $c0

	nop                                              ; $6f88: $00
	ret  nz                                          ; $6f89: $c0

	nop                                              ; $6f8a: $00
	ret  nz                                          ; $6f8b: $c0

	nop                                              ; $6f8c: $00
	ret  nz                                          ; $6f8d: $c0

	nop                                              ; $6f8e: $00
	ret  nz                                          ; $6f8f: $c0

	nop                                              ; $6f90: $00
	rst  JumpTable                                         ; $6f91: $df
	nop                                              ; $6f92: $00
	pop  bc                                          ; $6f93: $c1
	nop                                              ; $6f94: $00
	pop  bc                                          ; $6f95: $c1
	nop                                              ; $6f96: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f97: $cf
	nop                                              ; $6f98: $00
	add  c                                           ; $6f99: $81
	nop                                              ; $6f9a: $00
	ld   bc, $1f00                                   ; $6f9b: $01 $00 $1f
	nop                                              ; $6f9e: $00
	nop                                              ; $6f9f: $00
	nop                                              ; $6fa0: $00
	nop                                              ; $6fa1: $00
	nop                                              ; $6fa2: $00
	nop                                              ; $6fa3: $00
	nop                                              ; $6fa4: $00
	nop                                              ; $6fa5: $00
	nop                                              ; $6fa6: $00
	nop                                              ; $6fa7: $00
	nop                                              ; $6fa8: $00
	jr   nc, jr_032_6fab                             ; $6fa9: $30 $00

jr_032_6fab:
	jr   c, jr_032_6fad                              ; $6fab: $38 $00

jr_032_6fad:
	ld   e, $00                                      ; $6fad: $1e $00
	nop                                              ; $6faf: $00
	nop                                              ; $6fb0: $00
	nop                                              ; $6fb1: $00
	nop                                              ; $6fb2: $00
	add  b                                           ; $6fb3: $80
	nop                                              ; $6fb4: $00
	add  b                                           ; $6fb5: $80
	nop                                              ; $6fb6: $00
	add  b                                           ; $6fb7: $80
	nop                                              ; $6fb8: $00
	add  b                                           ; $6fb9: $80
	nop                                              ; $6fba: $00
	add  e                                           ; $6fbb: $83
	nop                                              ; $6fbc: $00
	cp   a                                           ; $6fbd: $bf
	nop                                              ; $6fbe: $00
	nop                                              ; $6fbf: $00
	nop                                              ; $6fc0: $00
	nop                                              ; $6fc1: $00
	nop                                              ; $6fc2: $00
	nop                                              ; $6fc3: $00
	nop                                              ; $6fc4: $00
	jr   nc, jr_032_6fc7                             ; $6fc5: $30 $00

jr_032_6fc7:
	jr   nc, jr_032_6fc9                             ; $6fc7: $30 $00

jr_032_6fc9:
	jr   nc, jr_032_6fcb                             ; $6fc9: $30 $00

jr_032_6fcb:
	jr   nc, jr_032_6fcd                             ; $6fcb: $30 $00

jr_032_6fcd:
	jr   nc, jr_032_6fcf                             ; $6fcd: $30 $00

jr_032_6fcf:
	jr   nc, jr_032_6fd1                             ; $6fcf: $30 $00

jr_032_6fd1:
	jr   nc, jr_032_6fd3                             ; $6fd1: $30 $00

jr_032_6fd3:
	jr   nc, jr_032_6fd5                             ; $6fd3: $30 $00

jr_032_6fd5:
	ld   [hl], b                                     ; $6fd5: $70
	nop                                              ; $6fd6: $00
	ld   h, b                                        ; $6fd7: $60
	nop                                              ; $6fd8: $00
	ldh  [rP1], a                                    ; $6fd9: $e0 $00
	ret  nz                                          ; $6fdb: $c0

	nop                                              ; $6fdc: $00
	nop                                              ; $6fdd: $00
	nop                                              ; $6fde: $00
	nop                                              ; $6fdf: $00
	nop                                              ; $6fe0: $00
	nop                                              ; $6fe1: $00
	nop                                              ; $6fe2: $00
	nop                                              ; $6fe3: $00
	nop                                              ; $6fe4: $00
	nop                                              ; $6fe5: $00
	nop                                              ; $6fe6: $00
	nop                                              ; $6fe7: $00
	nop                                              ; $6fe8: $00
	nop                                              ; $6fe9: $00
	nop                                              ; $6fea: $00
	nop                                              ; $6feb: $00
	nop                                              ; $6fec: $00
	nop                                              ; $6fed: $00
	nop                                              ; $6fee: $00
	nop                                              ; $6fef: $00
	nop                                              ; $6ff0: $00
	nop                                              ; $6ff1: $00
	nop                                              ; $6ff2: $00
	nop                                              ; $6ff3: $00
	nop                                              ; $6ff4: $00
	nop                                              ; $6ff5: $00
	nop                                              ; $6ff6: $00
	nop                                              ; $6ff7: $00
	nop                                              ; $6ff8: $00
	nop                                              ; $6ff9: $00
	nop                                              ; $6ffa: $00
	nop                                              ; $6ffb: $00
	nop                                              ; $6ffc: $00
	nop                                              ; $6ffd: $00
	nop                                              ; $6ffe: $00
	nop                                              ; $6fff: $00
	nop                                              ; $7000: $00
	nop                                              ; $7001: $00
	nop                                              ; $7002: $00
	nop                                              ; $7003: $00
	nop                                              ; $7004: $00
	nop                                              ; $7005: $00
	nop                                              ; $7006: $00
	nop                                              ; $7007: $00
	nop                                              ; $7008: $00
	nop                                              ; $7009: $00
	nop                                              ; $700a: $00
	nop                                              ; $700b: $00
	nop                                              ; $700c: $00
	nop                                              ; $700d: $00
	nop                                              ; $700e: $00
	nop                                              ; $700f: $00
	nop                                              ; $7010: $00
	nop                                              ; $7011: $00
	nop                                              ; $7012: $00
	nop                                              ; $7013: $00
	nop                                              ; $7014: $00
	nop                                              ; $7015: $00
	nop                                              ; $7016: $00
	nop                                              ; $7017: $00
	nop                                              ; $7018: $00
	nop                                              ; $7019: $00
	nop                                              ; $701a: $00
	nop                                              ; $701b: $00
	nop                                              ; $701c: $00
	nop                                              ; $701d: $00
	nop                                              ; $701e: $00
	nop                                              ; $701f: $00
	nop                                              ; $7020: $00
	nop                                              ; $7021: $00
	nop                                              ; $7022: $00
	nop                                              ; $7023: $00
	nop                                              ; $7024: $00
	nop                                              ; $7025: $00
	nop                                              ; $7026: $00
	nop                                              ; $7027: $00
	nop                                              ; $7028: $00
	nop                                              ; $7029: $00
	nop                                              ; $702a: $00
	nop                                              ; $702b: $00
	nop                                              ; $702c: $00
	nop                                              ; $702d: $00
	nop                                              ; $702e: $00
	nop                                              ; $702f: $00
	nop                                              ; $7030: $00
	nop                                              ; $7031: $00
	nop                                              ; $7032: $00
	nop                                              ; $7033: $00
	nop                                              ; $7034: $00
	nop                                              ; $7035: $00
	nop                                              ; $7036: $00
	nop                                              ; $7037: $00
	nop                                              ; $7038: $00
	nop                                              ; $7039: $00
	nop                                              ; $703a: $00
	nop                                              ; $703b: $00
	nop                                              ; $703c: $00
	nop                                              ; $703d: $00
	nop                                              ; $703e: $00
	nop                                              ; $703f: $00
	nop                                              ; $7040: $00
	nop                                              ; $7041: $00
	nop                                              ; $7042: $00
	nop                                              ; $7043: $00
	nop                                              ; $7044: $00
	nop                                              ; $7045: $00
	nop                                              ; $7046: $00
	nop                                              ; $7047: $00
	nop                                              ; $7048: $00
	nop                                              ; $7049: $00
	nop                                              ; $704a: $00
	nop                                              ; $704b: $00
	nop                                              ; $704c: $00
	nop                                              ; $704d: $00
	nop                                              ; $704e: $00
	nop                                              ; $704f: $00
	nop                                              ; $7050: $00
	nop                                              ; $7051: $00
	nop                                              ; $7052: $00
	nop                                              ; $7053: $00
	nop                                              ; $7054: $00
	nop                                              ; $7055: $00
	nop                                              ; $7056: $00
	nop                                              ; $7057: $00
	nop                                              ; $7058: $00
	nop                                              ; $7059: $00
	nop                                              ; $705a: $00
	nop                                              ; $705b: $00
	nop                                              ; $705c: $00
	nop                                              ; $705d: $00
	nop                                              ; $705e: $00
	nop                                              ; $705f: $00
	nop                                              ; $7060: $00
	nop                                              ; $7061: $00
	nop                                              ; $7062: $00
	nop                                              ; $7063: $00
	nop                                              ; $7064: $00
	nop                                              ; $7065: $00
	nop                                              ; $7066: $00
	nop                                              ; $7067: $00
	nop                                              ; $7068: $00
	nop                                              ; $7069: $00
	nop                                              ; $706a: $00
	nop                                              ; $706b: $00
	nop                                              ; $706c: $00
	nop                                              ; $706d: $00
	nop                                              ; $706e: $00
	nop                                              ; $706f: $00
	nop                                              ; $7070: $00
	nop                                              ; $7071: $00
	nop                                              ; $7072: $00
	nop                                              ; $7073: $00
	nop                                              ; $7074: $00
	nop                                              ; $7075: $00
	nop                                              ; $7076: $00
	nop                                              ; $7077: $00
	nop                                              ; $7078: $00
	nop                                              ; $7079: $00
	nop                                              ; $707a: $00
	nop                                              ; $707b: $00
	nop                                              ; $707c: $00
	nop                                              ; $707d: $00
	nop                                              ; $707e: $00
	nop                                              ; $707f: $00
	nop                                              ; $7080: $00
	nop                                              ; $7081: $00
	nop                                              ; $7082: $00
	nop                                              ; $7083: $00
	nop                                              ; $7084: $00
	nop                                              ; $7085: $00
	nop                                              ; $7086: $00
	nop                                              ; $7087: $00
	nop                                              ; $7088: $00
	nop                                              ; $7089: $00
	nop                                              ; $708a: $00
	nop                                              ; $708b: $00
	nop                                              ; $708c: $00
	nop                                              ; $708d: $00
	nop                                              ; $708e: $00
	nop                                              ; $708f: $00
	nop                                              ; $7090: $00
	nop                                              ; $7091: $00
	nop                                              ; $7092: $00
	nop                                              ; $7093: $00
	nop                                              ; $7094: $00
	nop                                              ; $7095: $00
	nop                                              ; $7096: $00
	nop                                              ; $7097: $00
	nop                                              ; $7098: $00
	nop                                              ; $7099: $00
	nop                                              ; $709a: $00
	nop                                              ; $709b: $00
	nop                                              ; $709c: $00
	nop                                              ; $709d: $00
	nop                                              ; $709e: $00
	nop                                              ; $709f: $00
	nop                                              ; $70a0: $00
	nop                                              ; $70a1: $00
	nop                                              ; $70a2: $00
	nop                                              ; $70a3: $00
	nop                                              ; $70a4: $00
	nop                                              ; $70a5: $00
	nop                                              ; $70a6: $00
	nop                                              ; $70a7: $00
	nop                                              ; $70a8: $00
	nop                                              ; $70a9: $00
	nop                                              ; $70aa: $00
	nop                                              ; $70ab: $00
	nop                                              ; $70ac: $00
	nop                                              ; $70ad: $00
	nop                                              ; $70ae: $00
	nop                                              ; $70af: $00
	nop                                              ; $70b0: $00
	nop                                              ; $70b1: $00
	nop                                              ; $70b2: $00
	nop                                              ; $70b3: $00
	nop                                              ; $70b4: $00
	nop                                              ; $70b5: $00
	nop                                              ; $70b6: $00
	nop                                              ; $70b7: $00
	nop                                              ; $70b8: $00
	nop                                              ; $70b9: $00
	nop                                              ; $70ba: $00
	nop                                              ; $70bb: $00
	nop                                              ; $70bc: $00
	nop                                              ; $70bd: $00
	nop                                              ; $70be: $00
	nop                                              ; $70bf: $00
	nop                                              ; $70c0: $00
	nop                                              ; $70c1: $00
	nop                                              ; $70c2: $00
	ld   b, $00                                      ; $70c3: $06 $00
	ld   h, [hl]                                     ; $70c5: $66
	nop                                              ; $70c6: $00
	ld   a, a                                        ; $70c7: $7f
	nop                                              ; $70c8: $00
	ld   h, [hl]                                     ; $70c9: $66
	nop                                              ; $70ca: $00
	add  $00                                         ; $70cb: $c6 $00
	ccf                                              ; $70cd: $3f
	nop                                              ; $70ce: $00
	ld   b, $00                                      ; $70cf: $06 $00
	ccf                                              ; $70d1: $3f
	nop                                              ; $70d2: $00
	ld   [hl], $00                                   ; $70d3: $36 $00
	ld   [hl], $00                                   ; $70d5: $36 $00
	ld   [hl], $00                                   ; $70d7: $36 $00
	scf                                              ; $70d9: $37
	nop                                              ; $70da: $00
	ld   b, $00                                      ; $70db: $06 $00
	ld   b, $00                                      ; $70dd: $06 $00
	nop                                              ; $70df: $00
	nop                                              ; $70e0: $00
	nop                                              ; $70e1: $00
	nop                                              ; $70e2: $00
	ld   b, $00                                      ; $70e3: $06 $00
	ld   [hl], $00                                   ; $70e5: $36 $00
	or   [hl]                                        ; $70e7: $b6
	nop                                              ; $70e8: $00
	ld   [hl], $00                                   ; $70e9: $36 $00
	ld   [hl], $00                                   ; $70eb: $36 $00
	or   $00                                         ; $70ed: $f6 $00
	ld   [hl], $00                                   ; $70ef: $36 $00
	or   $00                                         ; $70f1: $f6 $00
	or   $00                                         ; $70f3: $f6 $00
	add  $00                                         ; $70f5: $c6 $00
	add  $00                                         ; $70f7: $c6 $00
	add  $00                                         ; $70f9: $c6 $00
	ld   b, $00                                      ; $70fb: $06 $00
	inc  e                                           ; $70fd: $1c
	nop                                              ; $70fe: $00
	nop                                              ; $70ff: $00
	nop                                              ; $7100: $00
	nop                                              ; $7101: $00
	nop                                              ; $7102: $00
	inc  c                                           ; $7103: $0c
	nop                                              ; $7104: $00
	inc  c                                           ; $7105: $0c
	nop                                              ; $7106: $00
	inc  e                                           ; $7107: $1c
	nop                                              ; $7108: $00
	add  hl, de                                      ; $7109: $19
	nop                                              ; $710a: $00
	add  hl, sp                                      ; $710b: $39
	nop                                              ; $710c: $00
	ld   a, e                                        ; $710d: $7b
	nop                                              ; $710e: $00
	jr   jr_032_7111                                 ; $710f: $18 $00

jr_032_7111:
	jr   jr_032_7113                                 ; $7111: $18 $00

jr_032_7113:
	jr   jr_032_7115                                 ; $7113: $18 $00

jr_032_7115:
	jr   jr_032_7117                                 ; $7115: $18 $00

jr_032_7117:
	jr   jr_032_7119                                 ; $7117: $18 $00

jr_032_7119:
	jr   jr_032_711b                                 ; $7119: $18 $00

jr_032_711b:
	jr   jr_032_711d                                 ; $711b: $18 $00

jr_032_711d:
	jr   jr_032_711f                                 ; $711d: $18 $00

jr_032_711f:
	nop                                              ; $711f: $00
	nop                                              ; $7120: $00
	nop                                              ; $7121: $00
	nop                                              ; $7122: $00
	ret  nz                                          ; $7123: $c0

	nop                                              ; $7124: $00
	ret  nz                                          ; $7125: $c0

	nop                                              ; $7126: $00
	ret  nz                                          ; $7127: $c0

	nop                                              ; $7128: $00
	rst  $38                                         ; $7129: $ff
	nop                                              ; $712a: $00
	or   b                                           ; $712b: $b0
	nop                                              ; $712c: $00
	jr   nc, jr_032_712f                             ; $712d: $30 $00

jr_032_712f:
	ccf                                              ; $712f: $3f
	nop                                              ; $7130: $00
	jr   nc, jr_032_7133                             ; $7131: $30 $00

jr_032_7133:
	jr   nc, jr_032_7135                             ; $7133: $30 $00

jr_032_7135:
	ccf                                              ; $7135: $3f
	nop                                              ; $7136: $00
	jr   nc, jr_032_7139                             ; $7137: $30 $00

jr_032_7139:
	jr   nc, jr_032_713b                             ; $7139: $30 $00

jr_032_713b:
	jr   nc, jr_032_713d                             ; $713b: $30 $00

jr_032_713d:
	jr   nc, jr_032_713f                             ; $713d: $30 $00

jr_032_713f:
	nop                                              ; $713f: $00
	nop                                              ; $7140: $00
	nop                                              ; $7141: $00
	nop                                              ; $7142: $00
	nop                                              ; $7143: $00
	nop                                              ; $7144: $00
	nop                                              ; $7145: $00
	nop                                              ; $7146: $00
	nop                                              ; $7147: $00
	nop                                              ; $7148: $00
	nop                                              ; $7149: $00
	nop                                              ; $714a: $00
	nop                                              ; $714b: $00
	nop                                              ; $714c: $00
	nop                                              ; $714d: $00
	nop                                              ; $714e: $00
	nop                                              ; $714f: $00
	nop                                              ; $7150: $00
	nop                                              ; $7151: $00
	nop                                              ; $7152: $00
	nop                                              ; $7153: $00
	nop                                              ; $7154: $00
	nop                                              ; $7155: $00
	nop                                              ; $7156: $00
	nop                                              ; $7157: $00
	nop                                              ; $7158: $00
	nop                                              ; $7159: $00
	nop                                              ; $715a: $00
	nop                                              ; $715b: $00
	nop                                              ; $715c: $00
	nop                                              ; $715d: $00
	nop                                              ; $715e: $00
	nop                                              ; $715f: $00
	nop                                              ; $7160: $00
	nop                                              ; $7161: $00
	nop                                              ; $7162: $00
	nop                                              ; $7163: $00
	nop                                              ; $7164: $00
	nop                                              ; $7165: $00
	nop                                              ; $7166: $00
	nop                                              ; $7167: $00
	nop                                              ; $7168: $00
	nop                                              ; $7169: $00
	nop                                              ; $716a: $00
	nop                                              ; $716b: $00
	nop                                              ; $716c: $00
	nop                                              ; $716d: $00
	nop                                              ; $716e: $00
	nop                                              ; $716f: $00
	nop                                              ; $7170: $00
	nop                                              ; $7171: $00
	nop                                              ; $7172: $00
	nop                                              ; $7173: $00
	nop                                              ; $7174: $00
	nop                                              ; $7175: $00
	nop                                              ; $7176: $00
	nop                                              ; $7177: $00
	nop                                              ; $7178: $00
	nop                                              ; $7179: $00
	nop                                              ; $717a: $00
	nop                                              ; $717b: $00
	nop                                              ; $717c: $00
	nop                                              ; $717d: $00
	nop                                              ; $717e: $00
	nop                                              ; $717f: $00
	nop                                              ; $7180: $00
	nop                                              ; $7181: $00
	nop                                              ; $7182: $00
	nop                                              ; $7183: $00
	nop                                              ; $7184: $00
	nop                                              ; $7185: $00
	nop                                              ; $7186: $00
	nop                                              ; $7187: $00
	nop                                              ; $7188: $00
	nop                                              ; $7189: $00
	nop                                              ; $718a: $00
	nop                                              ; $718b: $00
	nop                                              ; $718c: $00
	nop                                              ; $718d: $00
	nop                                              ; $718e: $00
	nop                                              ; $718f: $00
	nop                                              ; $7190: $00
	nop                                              ; $7191: $00
	nop                                              ; $7192: $00
	nop                                              ; $7193: $00
	nop                                              ; $7194: $00
	nop                                              ; $7195: $00
	nop                                              ; $7196: $00
	nop                                              ; $7197: $00
	nop                                              ; $7198: $00
	nop                                              ; $7199: $00
	nop                                              ; $719a: $00
	nop                                              ; $719b: $00
	nop                                              ; $719c: $00
	nop                                              ; $719d: $00
	nop                                              ; $719e: $00
	nop                                              ; $719f: $00
	nop                                              ; $71a0: $00
	nop                                              ; $71a1: $00
	nop                                              ; $71a2: $00
	nop                                              ; $71a3: $00
	nop                                              ; $71a4: $00
	nop                                              ; $71a5: $00
	nop                                              ; $71a6: $00
	nop                                              ; $71a7: $00
	nop                                              ; $71a8: $00
	nop                                              ; $71a9: $00
	nop                                              ; $71aa: $00
	nop                                              ; $71ab: $00
	nop                                              ; $71ac: $00
	nop                                              ; $71ad: $00
	nop                                              ; $71ae: $00
	nop                                              ; $71af: $00
	nop                                              ; $71b0: $00
	nop                                              ; $71b1: $00
	nop                                              ; $71b2: $00
	nop                                              ; $71b3: $00
	nop                                              ; $71b4: $00
	nop                                              ; $71b5: $00
	nop                                              ; $71b6: $00
	nop                                              ; $71b7: $00
	nop                                              ; $71b8: $00
	nop                                              ; $71b9: $00
	nop                                              ; $71ba: $00
	nop                                              ; $71bb: $00
	nop                                              ; $71bc: $00
	nop                                              ; $71bd: $00
	nop                                              ; $71be: $00
	nop                                              ; $71bf: $00
	nop                                              ; $71c0: $00
	nop                                              ; $71c1: $00
	nop                                              ; $71c2: $00
	nop                                              ; $71c3: $00
	nop                                              ; $71c4: $00
	nop                                              ; $71c5: $00
	nop                                              ; $71c6: $00
	nop                                              ; $71c7: $00
	nop                                              ; $71c8: $00
	nop                                              ; $71c9: $00
	nop                                              ; $71ca: $00
	nop                                              ; $71cb: $00
	nop                                              ; $71cc: $00
	nop                                              ; $71cd: $00
	nop                                              ; $71ce: $00
	nop                                              ; $71cf: $00
	nop                                              ; $71d0: $00
	nop                                              ; $71d1: $00
	nop                                              ; $71d2: $00
	nop                                              ; $71d3: $00
	nop                                              ; $71d4: $00
	nop                                              ; $71d5: $00
	nop                                              ; $71d6: $00
	nop                                              ; $71d7: $00
	nop                                              ; $71d8: $00
	nop                                              ; $71d9: $00
	nop                                              ; $71da: $00
	nop                                              ; $71db: $00
	nop                                              ; $71dc: $00
	nop                                              ; $71dd: $00
	nop                                              ; $71de: $00
	nop                                              ; $71df: $00
	nop                                              ; $71e0: $00
	nop                                              ; $71e1: $00
	nop                                              ; $71e2: $00
	nop                                              ; $71e3: $00
	nop                                              ; $71e4: $00
	nop                                              ; $71e5: $00
	nop                                              ; $71e6: $00
	nop                                              ; $71e7: $00
	nop                                              ; $71e8: $00
	nop                                              ; $71e9: $00
	nop                                              ; $71ea: $00
	nop                                              ; $71eb: $00
	nop                                              ; $71ec: $00
	nop                                              ; $71ed: $00
	nop                                              ; $71ee: $00
	nop                                              ; $71ef: $00
	nop                                              ; $71f0: $00
	nop                                              ; $71f1: $00
	nop                                              ; $71f2: $00
	nop                                              ; $71f3: $00
	nop                                              ; $71f4: $00
	nop                                              ; $71f5: $00
	nop                                              ; $71f6: $00
	nop                                              ; $71f7: $00
	nop                                              ; $71f8: $00
	nop                                              ; $71f9: $00
	nop                                              ; $71fa: $00
	nop                                              ; $71fb: $00
	nop                                              ; $71fc: $00
	nop                                              ; $71fd: $00
	nop                                              ; $71fe: $00
	nop                                              ; $71ff: $00
	nop                                              ; $7200: $00
	nop                                              ; $7201: $00
	nop                                              ; $7202: $00
	nop                                              ; $7203: $00
	nop                                              ; $7204: $00
	nop                                              ; $7205: $00
	nop                                              ; $7206: $00
	nop                                              ; $7207: $00
	nop                                              ; $7208: $00
	nop                                              ; $7209: $00
	nop                                              ; $720a: $00
	nop                                              ; $720b: $00
	nop                                              ; $720c: $00
	nop                                              ; $720d: $00
	nop                                              ; $720e: $00
	nop                                              ; $720f: $00
	nop                                              ; $7210: $00
	nop                                              ; $7211: $00
	nop                                              ; $7212: $00
	nop                                              ; $7213: $00
	nop                                              ; $7214: $00
	nop                                              ; $7215: $00
	nop                                              ; $7216: $00
	nop                                              ; $7217: $00
	nop                                              ; $7218: $00
	nop                                              ; $7219: $00
	nop                                              ; $721a: $00
	nop                                              ; $721b: $00
	nop                                              ; $721c: $00
	nop                                              ; $721d: $00
	nop                                              ; $721e: $00
	nop                                              ; $721f: $00
	nop                                              ; $7220: $00
	nop                                              ; $7221: $00
	nop                                              ; $7222: $00
	nop                                              ; $7223: $00
	nop                                              ; $7224: $00
	nop                                              ; $7225: $00
	nop                                              ; $7226: $00
	nop                                              ; $7227: $00
	nop                                              ; $7228: $00
	nop                                              ; $7229: $00
	nop                                              ; $722a: $00
	nop                                              ; $722b: $00
	nop                                              ; $722c: $00
	nop                                              ; $722d: $00
	nop                                              ; $722e: $00
	nop                                              ; $722f: $00
	nop                                              ; $7230: $00
	nop                                              ; $7231: $00
	nop                                              ; $7232: $00
	nop                                              ; $7233: $00
	nop                                              ; $7234: $00
	nop                                              ; $7235: $00
	nop                                              ; $7236: $00
	nop                                              ; $7237: $00
	nop                                              ; $7238: $00
	nop                                              ; $7239: $00
	nop                                              ; $723a: $00
	nop                                              ; $723b: $00
	nop                                              ; $723c: $00
	nop                                              ; $723d: $00
	nop                                              ; $723e: $00
	nop                                              ; $723f: $00
	nop                                              ; $7240: $00
	nop                                              ; $7241: $00
	nop                                              ; $7242: $00
	nop                                              ; $7243: $00
	nop                                              ; $7244: $00
	nop                                              ; $7245: $00
	nop                                              ; $7246: $00
	nop                                              ; $7247: $00
	nop                                              ; $7248: $00
	nop                                              ; $7249: $00
	nop                                              ; $724a: $00
	nop                                              ; $724b: $00
	nop                                              ; $724c: $00
	nop                                              ; $724d: $00
	nop                                              ; $724e: $00
	nop                                              ; $724f: $00
	nop                                              ; $7250: $00
	nop                                              ; $7251: $00
	nop                                              ; $7252: $00
	nop                                              ; $7253: $00
	nop                                              ; $7254: $00
	nop                                              ; $7255: $00
	nop                                              ; $7256: $00
	nop                                              ; $7257: $00
	nop                                              ; $7258: $00
	nop                                              ; $7259: $00
	nop                                              ; $725a: $00
	nop                                              ; $725b: $00
	nop                                              ; $725c: $00
	nop                                              ; $725d: $00
	nop                                              ; $725e: $00
	nop                                              ; $725f: $00
	nop                                              ; $7260: $00
	nop                                              ; $7261: $00
	nop                                              ; $7262: $00
	nop                                              ; $7263: $00
	nop                                              ; $7264: $00
	nop                                              ; $7265: $00
	nop                                              ; $7266: $00
	nop                                              ; $7267: $00
	nop                                              ; $7268: $00
	nop                                              ; $7269: $00
	nop                                              ; $726a: $00
	nop                                              ; $726b: $00
	nop                                              ; $726c: $00
	nop                                              ; $726d: $00
	nop                                              ; $726e: $00
	nop                                              ; $726f: $00
	nop                                              ; $7270: $00
	nop                                              ; $7271: $00
	nop                                              ; $7272: $00
	nop                                              ; $7273: $00
	nop                                              ; $7274: $00
	nop                                              ; $7275: $00
	nop                                              ; $7276: $00
	nop                                              ; $7277: $00
	nop                                              ; $7278: $00
	nop                                              ; $7279: $00
	nop                                              ; $727a: $00
	nop                                              ; $727b: $00
	nop                                              ; $727c: $00
	nop                                              ; $727d: $00
	nop                                              ; $727e: $00
	nop                                              ; $727f: $00
	nop                                              ; $7280: $00
	nop                                              ; $7281: $00
	nop                                              ; $7282: $00
	nop                                              ; $7283: $00
	nop                                              ; $7284: $00
	nop                                              ; $7285: $00
	nop                                              ; $7286: $00
	nop                                              ; $7287: $00
	nop                                              ; $7288: $00
	nop                                              ; $7289: $00
	nop                                              ; $728a: $00
	nop                                              ; $728b: $00
	nop                                              ; $728c: $00
	nop                                              ; $728d: $00
	nop                                              ; $728e: $00
	nop                                              ; $728f: $00
	nop                                              ; $7290: $00
	nop                                              ; $7291: $00
	nop                                              ; $7292: $00
	nop                                              ; $7293: $00
	nop                                              ; $7294: $00
	nop                                              ; $7295: $00
	nop                                              ; $7296: $00
	nop                                              ; $7297: $00
	nop                                              ; $7298: $00
	nop                                              ; $7299: $00
	nop                                              ; $729a: $00
	nop                                              ; $729b: $00
	nop                                              ; $729c: $00
	nop                                              ; $729d: $00
	nop                                              ; $729e: $00
	nop                                              ; $729f: $00
	nop                                              ; $72a0: $00
	nop                                              ; $72a1: $00
	nop                                              ; $72a2: $00
	inc  bc                                          ; $72a3: $03
	nop                                              ; $72a4: $00
	inc  bc                                          ; $72a5: $03
	nop                                              ; $72a6: $00
	rlca                                             ; $72a7: $07
	nop                                              ; $72a8: $00
	ld   b, $00                                      ; $72a9: $06 $00
	rrca                                             ; $72ab: $0f
	nop                                              ; $72ac: $00
	inc  bc                                          ; $72ad: $03
	nop                                              ; $72ae: $00
	ld   b, $00                                      ; $72af: $06 $00
	rra                                              ; $72b1: $1f
	nop                                              ; $72b2: $00
	inc  bc                                          ; $72b3: $03
	nop                                              ; $72b4: $00
	dec  bc                                          ; $72b5: $0b
	nop                                              ; $72b6: $00
	dec  bc                                          ; $72b7: $0b
	nop                                              ; $72b8: $00
	dec  bc                                          ; $72b9: $0b
	nop                                              ; $72ba: $00
	inc  de                                          ; $72bb: $13
	nop                                              ; $72bc: $00
	inc  bc                                          ; $72bd: $03
	nop                                              ; $72be: $00
	nop                                              ; $72bf: $00
	nop                                              ; $72c0: $00
	nop                                              ; $72c1: $00
	nop                                              ; $72c2: $00
	rrca                                             ; $72c3: $0f
	nop                                              ; $72c4: $00
	inc  sp                                          ; $72c5: $33
	nop                                              ; $72c6: $00
	inc  sp                                          ; $72c7: $33
	nop                                              ; $72c8: $00
	ld   l, l                                        ; $72c9: $6d
	nop                                              ; $72ca: $00
	adc  h                                           ; $72cb: $8c
	nop                                              ; $72cc: $00
	add  hl, de                                      ; $72cd: $19
	nop                                              ; $72ce: $00
	ccf                                              ; $72cf: $3f
	nop                                              ; $72d0: $00
	jp   nz, $0f00                                   ; $72d1: $c2 $00 $0f

	nop                                              ; $72d4: $00
	xor  l                                           ; $72d5: $ad
	nop                                              ; $72d6: $00
	db   $ec                                         ; $72d7: $ec
	nop                                              ; $72d8: $00
	ld   l, h                                        ; $72d9: $6c
	nop                                              ; $72da: $00
	dec  l                                           ; $72db: $2d
	nop                                              ; $72dc: $00
	rlca                                             ; $72dd: $07
	nop                                              ; $72de: $00
	nop                                              ; $72df: $00
	nop                                              ; $72e0: $00
	nop                                              ; $72e1: $00
	nop                                              ; $72e2: $00
	nop                                              ; $72e3: $00
	nop                                              ; $72e4: $00
	rrca                                             ; $72e5: $0f
	nop                                              ; $72e6: $00
	dec  c                                           ; $72e7: $0d
	nop                                              ; $72e8: $00
	adc  a                                           ; $72e9: $8f
	nop                                              ; $72ea: $00
	call z, $0f00                                    ; $72eb: $cc $00 $0f
	nop                                              ; $72ee: $00
	dec  c                                           ; $72ef: $0d
	nop                                              ; $72f0: $00
	rrca                                             ; $72f1: $0f
	nop                                              ; $72f2: $00
	nop                                              ; $72f3: $00
	nop                                              ; $72f4: $00
	ld   c, a                                        ; $72f5: $4f
	nop                                              ; $72f6: $00
	ld   l, l                                        ; $72f7: $6d
	nop                                              ; $72f8: $00
	db   $ed                                         ; $72f9: $ed
	nop                                              ; $72fa: $00
	adc  l                                           ; $72fb: $8d
	nop                                              ; $72fc: $00
	sbc  a                                           ; $72fd: $9f
	nop                                              ; $72fe: $00
	nop                                              ; $72ff: $00
	nop                                              ; $7300: $00
	nop                                              ; $7301: $00
	nop                                              ; $7302: $00
	nop                                              ; $7303: $00
	nop                                              ; $7304: $00
	ldh  [rP1], a                                    ; $7305: $e0 $00
	ld   a, h                                        ; $7307: $7c
	nop                                              ; $7308: $00
	ldh  [rP1], a                                    ; $7309: $e0 $00
	pop  bc                                          ; $730b: $c1
	nop                                              ; $730c: $00
	add  e                                           ; $730d: $83
	nop                                              ; $730e: $00
	nop                                              ; $730f: $00
	nop                                              ; $7310: $00
	cp   h                                           ; $7311: $bc
	nop                                              ; $7312: $00
	nop                                              ; $7313: $00
	nop                                              ; $7314: $00
	ld   hl, sp+$00                                  ; $7315: $f8 $00
	ld   e, b                                        ; $7317: $58
	nop                                              ; $7318: $00
	ld   e, b                                        ; $7319: $58
	nop                                              ; $731a: $00
	ld   e, b                                        ; $731b: $58
	nop                                              ; $731c: $00
	db   $fc                                         ; $731d: $fc
	nop                                              ; $731e: $00
	nop                                              ; $731f: $00
	nop                                              ; $7320: $00
	nop                                              ; $7321: $00
	nop                                              ; $7322: $00
	ld   l, h                                        ; $7323: $6c
	nop                                              ; $7324: $00
	ld   l, a                                        ; $7325: $6f
	nop                                              ; $7326: $00
	db   $ec                                         ; $7327: $ec
	nop                                              ; $7328: $00
	jp   c, $c300                                    ; $7329: $da $00 $c3

	nop                                              ; $732c: $00
	pop  de                                          ; $732d: $d1
	nop                                              ; $732e: $00
	rst  $10                                         ; $732f: $d7
	nop                                              ; $7330: $00
	ret  nc                                          ; $7331: $d0

	nop                                              ; $7332: $00
	db   $d3                                         ; $7333: $d3
	nop                                              ; $7334: $00
	sub  $00                                         ; $7335: $d6 $00
	pop  de                                          ; $7337: $d1
	nop                                              ; $7338: $00
	rst  $10                                         ; $7339: $d7
	nop                                              ; $733a: $00
	ret  nc                                          ; $733b: $d0

	nop                                              ; $733c: $00
	rst  $10                                         ; $733d: $d7
	nop                                              ; $733e: $00
	nop                                              ; $733f: $00
	nop                                              ; $7340: $00
	nop                                              ; $7341: $00
	nop                                              ; $7342: $00
	nop                                              ; $7343: $00
	nop                                              ; $7344: $00
	ldh  a, [rP1]                                    ; $7345: $f0 $00
	ld   h, b                                        ; $7347: $60
	nop                                              ; $7348: $00
	ld   h, b                                        ; $7349: $60
	nop                                              ; $734a: $00
	ret  nz                                          ; $734b: $c0

	nop                                              ; $734c: $00
	ret  nz                                          ; $734d: $c0

	nop                                              ; $734e: $00
	ld   [hl], b                                     ; $734f: $70
	nop                                              ; $7350: $00
	ret  nz                                          ; $7351: $c0

	nop                                              ; $7352: $00
	add  b                                           ; $7353: $80
	nop                                              ; $7354: $00
	ld   h, b                                        ; $7355: $60
	nop                                              ; $7356: $00
	ret  nz                                          ; $7357: $c0

	nop                                              ; $7358: $00
	jr   nc, jr_032_735b                             ; $7359: $30 $00

jr_032_735b:
	ldh  [rP1], a                                    ; $735b: $e0 $00
	add  b                                           ; $735d: $80
	nop                                              ; $735e: $00
	nop                                              ; $735f: $00
	nop                                              ; $7360: $00
	nop                                              ; $7361: $00
	nop                                              ; $7362: $00
	nop                                              ; $7363: $00
	nop                                              ; $7364: $00
	nop                                              ; $7365: $00
	nop                                              ; $7366: $00
	nop                                              ; $7367: $00
	nop                                              ; $7368: $00
	nop                                              ; $7369: $00
	nop                                              ; $736a: $00
	nop                                              ; $736b: $00
	nop                                              ; $736c: $00
	nop                                              ; $736d: $00
	nop                                              ; $736e: $00
	nop                                              ; $736f: $00
	nop                                              ; $7370: $00
	nop                                              ; $7371: $00
	nop                                              ; $7372: $00
	nop                                              ; $7373: $00
	nop                                              ; $7374: $00
	nop                                              ; $7375: $00
	nop                                              ; $7376: $00
	nop                                              ; $7377: $00
	nop                                              ; $7378: $00
	nop                                              ; $7379: $00
	nop                                              ; $737a: $00
	nop                                              ; $737b: $00
	nop                                              ; $737c: $00
	nop                                              ; $737d: $00
	nop                                              ; $737e: $00
	nop                                              ; $737f: $00
	nop                                              ; $7380: $00
	nop                                              ; $7381: $00
	nop                                              ; $7382: $00
	nop                                              ; $7383: $00
	nop                                              ; $7384: $00
	nop                                              ; $7385: $00
	nop                                              ; $7386: $00
	nop                                              ; $7387: $00
	nop                                              ; $7388: $00
	nop                                              ; $7389: $00
	nop                                              ; $738a: $00
	nop                                              ; $738b: $00
	nop                                              ; $738c: $00
	nop                                              ; $738d: $00
	nop                                              ; $738e: $00
	nop                                              ; $738f: $00
	nop                                              ; $7390: $00
	nop                                              ; $7391: $00
	nop                                              ; $7392: $00
	nop                                              ; $7393: $00
	nop                                              ; $7394: $00
	nop                                              ; $7395: $00
	nop                                              ; $7396: $00
	nop                                              ; $7397: $00
	nop                                              ; $7398: $00
	nop                                              ; $7399: $00
	nop                                              ; $739a: $00
	nop                                              ; $739b: $00
	nop                                              ; $739c: $00
	nop                                              ; $739d: $00
	nop                                              ; $739e: $00
	nop                                              ; $739f: $00
	nop                                              ; $73a0: $00
	nop                                              ; $73a1: $00
	nop                                              ; $73a2: $00
	nop                                              ; $73a3: $00
	nop                                              ; $73a4: $00
	nop                                              ; $73a5: $00
	nop                                              ; $73a6: $00
	nop                                              ; $73a7: $00
	nop                                              ; $73a8: $00
	nop                                              ; $73a9: $00
	nop                                              ; $73aa: $00
	nop                                              ; $73ab: $00
	nop                                              ; $73ac: $00
	nop                                              ; $73ad: $00
	nop                                              ; $73ae: $00
	nop                                              ; $73af: $00
	nop                                              ; $73b0: $00
	nop                                              ; $73b1: $00
	nop                                              ; $73b2: $00
	nop                                              ; $73b3: $00
	nop                                              ; $73b4: $00
	nop                                              ; $73b5: $00
	nop                                              ; $73b6: $00
	nop                                              ; $73b7: $00
	nop                                              ; $73b8: $00
	nop                                              ; $73b9: $00
	nop                                              ; $73ba: $00
	nop                                              ; $73bb: $00
	nop                                              ; $73bc: $00
	nop                                              ; $73bd: $00
	nop                                              ; $73be: $00
	nop                                              ; $73bf: $00
	nop                                              ; $73c0: $00
	nop                                              ; $73c1: $00
	nop                                              ; $73c2: $00
	nop                                              ; $73c3: $00
	nop                                              ; $73c4: $00
	nop                                              ; $73c5: $00
	nop                                              ; $73c6: $00
	nop                                              ; $73c7: $00
	nop                                              ; $73c8: $00
	nop                                              ; $73c9: $00
	nop                                              ; $73ca: $00
	nop                                              ; $73cb: $00
	nop                                              ; $73cc: $00
	nop                                              ; $73cd: $00
	nop                                              ; $73ce: $00
	nop                                              ; $73cf: $00
	nop                                              ; $73d0: $00
	nop                                              ; $73d1: $00
	nop                                              ; $73d2: $00
	nop                                              ; $73d3: $00
	nop                                              ; $73d4: $00
	nop                                              ; $73d5: $00
	nop                                              ; $73d6: $00
	nop                                              ; $73d7: $00
	nop                                              ; $73d8: $00
	nop                                              ; $73d9: $00
	nop                                              ; $73da: $00
	nop                                              ; $73db: $00
	nop                                              ; $73dc: $00
	nop                                              ; $73dd: $00
	nop                                              ; $73de: $00
	nop                                              ; $73df: $00
	nop                                              ; $73e0: $00
	nop                                              ; $73e1: $00
	nop                                              ; $73e2: $00
	nop                                              ; $73e3: $00
	nop                                              ; $73e4: $00
	nop                                              ; $73e5: $00
	nop                                              ; $73e6: $00
	nop                                              ; $73e7: $00
	nop                                              ; $73e8: $00
	nop                                              ; $73e9: $00
	nop                                              ; $73ea: $00
	nop                                              ; $73eb: $00
	nop                                              ; $73ec: $00
	nop                                              ; $73ed: $00
	nop                                              ; $73ee: $00
	nop                                              ; $73ef: $00
	nop                                              ; $73f0: $00
	nop                                              ; $73f1: $00
	nop                                              ; $73f2: $00
	nop                                              ; $73f3: $00
	nop                                              ; $73f4: $00
	nop                                              ; $73f5: $00
	nop                                              ; $73f6: $00
	nop                                              ; $73f7: $00
	nop                                              ; $73f8: $00
	nop                                              ; $73f9: $00
	nop                                              ; $73fa: $00
	nop                                              ; $73fb: $00
	nop                                              ; $73fc: $00
	nop                                              ; $73fd: $00
	nop                                              ; $73fe: $00
	nop                                              ; $73ff: $00
	nop                                              ; $7400: $00
	nop                                              ; $7401: $00
	nop                                              ; $7402: $00
	nop                                              ; $7403: $00
	nop                                              ; $7404: $00
	nop                                              ; $7405: $00
	nop                                              ; $7406: $00
	nop                                              ; $7407: $00
	nop                                              ; $7408: $00
	nop                                              ; $7409: $00
	nop                                              ; $740a: $00
	nop                                              ; $740b: $00
	nop                                              ; $740c: $00
	nop                                              ; $740d: $00
	nop                                              ; $740e: $00
	nop                                              ; $740f: $00
	nop                                              ; $7410: $00
	nop                                              ; $7411: $00
	nop                                              ; $7412: $00
	nop                                              ; $7413: $00
	nop                                              ; $7414: $00
	nop                                              ; $7415: $00
	nop                                              ; $7416: $00
	nop                                              ; $7417: $00
	nop                                              ; $7418: $00
	nop                                              ; $7419: $00
	nop                                              ; $741a: $00
	nop                                              ; $741b: $00
	nop                                              ; $741c: $00
	nop                                              ; $741d: $00
	nop                                              ; $741e: $00
	nop                                              ; $741f: $00
	nop                                              ; $7420: $00
	nop                                              ; $7421: $00
	nop                                              ; $7422: $00
	nop                                              ; $7423: $00
	nop                                              ; $7424: $00
	nop                                              ; $7425: $00
	nop                                              ; $7426: $00
	nop                                              ; $7427: $00
	nop                                              ; $7428: $00
	nop                                              ; $7429: $00
	nop                                              ; $742a: $00
	nop                                              ; $742b: $00
	nop                                              ; $742c: $00
	nop                                              ; $742d: $00
	nop                                              ; $742e: $00
	nop                                              ; $742f: $00
	nop                                              ; $7430: $00
	nop                                              ; $7431: $00
	nop                                              ; $7432: $00
	nop                                              ; $7433: $00
	nop                                              ; $7434: $00
	nop                                              ; $7435: $00
	nop                                              ; $7436: $00
	nop                                              ; $7437: $00
	nop                                              ; $7438: $00
	nop                                              ; $7439: $00
	nop                                              ; $743a: $00
	nop                                              ; $743b: $00
	nop                                              ; $743c: $00
	nop                                              ; $743d: $00
	nop                                              ; $743e: $00
	nop                                              ; $743f: $00
	nop                                              ; $7440: $00
	nop                                              ; $7441: $00
	nop                                              ; $7442: $00
	nop                                              ; $7443: $00
	nop                                              ; $7444: $00
	nop                                              ; $7445: $00
	nop                                              ; $7446: $00
	nop                                              ; $7447: $00
	nop                                              ; $7448: $00
	nop                                              ; $7449: $00
	nop                                              ; $744a: $00
	nop                                              ; $744b: $00
	nop                                              ; $744c: $00
	nop                                              ; $744d: $00
	nop                                              ; $744e: $00
	nop                                              ; $744f: $00
	nop                                              ; $7450: $00
	nop                                              ; $7451: $00
	nop                                              ; $7452: $00
	nop                                              ; $7453: $00
	nop                                              ; $7454: $00
	nop                                              ; $7455: $00
	nop                                              ; $7456: $00
	nop                                              ; $7457: $00
	nop                                              ; $7458: $00
	nop                                              ; $7459: $00
	nop                                              ; $745a: $00
	nop                                              ; $745b: $00
	nop                                              ; $745c: $00
	nop                                              ; $745d: $00
	nop                                              ; $745e: $00
	nop                                              ; $745f: $00
	nop                                              ; $7460: $00
	nop                                              ; $7461: $00
	nop                                              ; $7462: $00
	nop                                              ; $7463: $00
	nop                                              ; $7464: $00
	nop                                              ; $7465: $00
	nop                                              ; $7466: $00
	nop                                              ; $7467: $00
	nop                                              ; $7468: $00
	nop                                              ; $7469: $00
	nop                                              ; $746a: $00
	nop                                              ; $746b: $00
	nop                                              ; $746c: $00
	nop                                              ; $746d: $00
	nop                                              ; $746e: $00
	nop                                              ; $746f: $00
	nop                                              ; $7470: $00
	nop                                              ; $7471: $00
	nop                                              ; $7472: $00
	nop                                              ; $7473: $00
	nop                                              ; $7474: $00
	nop                                              ; $7475: $00
	nop                                              ; $7476: $00
	nop                                              ; $7477: $00
	nop                                              ; $7478: $00
	nop                                              ; $7479: $00
	nop                                              ; $747a: $00
	nop                                              ; $747b: $00
	nop                                              ; $747c: $00
	nop                                              ; $747d: $00
	nop                                              ; $747e: $00
	nop                                              ; $747f: $00
	nop                                              ; $7480: $00
	nop                                              ; $7481: $00
	nop                                              ; $7482: $00
	nop                                              ; $7483: $00
	nop                                              ; $7484: $00
	nop                                              ; $7485: $00
	nop                                              ; $7486: $00
	nop                                              ; $7487: $00
	nop                                              ; $7488: $00
	nop                                              ; $7489: $00
	nop                                              ; $748a: $00
	nop                                              ; $748b: $00
	nop                                              ; $748c: $00
	nop                                              ; $748d: $00
	nop                                              ; $748e: $00
	nop                                              ; $748f: $00
	nop                                              ; $7490: $00
	nop                                              ; $7491: $00
	nop                                              ; $7492: $00
	nop                                              ; $7493: $00
	nop                                              ; $7494: $00
	nop                                              ; $7495: $00
	nop                                              ; $7496: $00
	nop                                              ; $7497: $00
	nop                                              ; $7498: $00
	nop                                              ; $7499: $00
	nop                                              ; $749a: $00
	nop                                              ; $749b: $00
	nop                                              ; $749c: $00
	nop                                              ; $749d: $00
	nop                                              ; $749e: $00
	nop                                              ; $749f: $00
	nop                                              ; $74a0: $00
	nop                                              ; $74a1: $00
	nop                                              ; $74a2: $00
	nop                                              ; $74a3: $00
	nop                                              ; $74a4: $00
	rlca                                             ; $74a5: $07
	nop                                              ; $74a6: $00
	inc  bc                                          ; $74a7: $03
	nop                                              ; $74a8: $00
	inc  sp                                          ; $74a9: $33
	nop                                              ; $74aa: $00
	ld   e, $00                                      ; $74ab: $1e $00
	inc  c                                           ; $74ad: $0c
	nop                                              ; $74ae: $00
	rra                                              ; $74af: $1f
	nop                                              ; $74b0: $00
	ld   [hl], e                                     ; $74b1: $73
	nop                                              ; $74b2: $00
	inc  bc                                          ; $74b3: $03
	nop                                              ; $74b4: $00
	rrca                                             ; $74b5: $0f
	nop                                              ; $74b6: $00
	inc  bc                                          ; $74b7: $03
	nop                                              ; $74b8: $00
	inc  bc                                          ; $74b9: $03
	nop                                              ; $74ba: $00
	ld   b, $00                                      ; $74bb: $06 $00
	inc  e                                           ; $74bd: $1c
	nop                                              ; $74be: $00
	nop                                              ; $74bf: $00
	nop                                              ; $74c0: $00
	nop                                              ; $74c1: $00
	nop                                              ; $74c2: $00
	nop                                              ; $74c3: $00
	nop                                              ; $74c4: $00
	or   $00                                         ; $74c5: $f6 $00
	inc  a                                           ; $74c7: $3c
	nop                                              ; $74c8: $00
	inc  sp                                          ; $74c9: $33
	nop                                              ; $74ca: $00
	ld   e, $00                                      ; $74cb: $1e $00
	inc  c                                           ; $74cd: $0c
	nop                                              ; $74ce: $00
	cp   $00                                         ; $74cf: $fe $00
	inc  sp                                          ; $74d1: $33
	nop                                              ; $74d2: $00
	jr   nc, jr_032_74d5                             ; $74d3: $30 $00

jr_032_74d5:
	db   $fc                                         ; $74d5: $fc
	nop                                              ; $74d6: $00
	jr   nc, jr_032_74d9                             ; $74d7: $30 $00

jr_032_74d9:
	ld   sp, $3300                                   ; $74d9: $31 $00 $33
	nop                                              ; $74dc: $00
	rra                                              ; $74dd: $1f
	nop                                              ; $74de: $00
	nop                                              ; $74df: $00
	nop                                              ; $74e0: $00
	nop                                              ; $74e1: $00
	nop                                              ; $74e2: $00
	nop                                              ; $74e3: $00
	nop                                              ; $74e4: $00
	ccf                                              ; $74e5: $3f
	nop                                              ; $74e6: $00
	nop                                              ; $74e7: $00
	nop                                              ; $74e8: $00
	nop                                              ; $74e9: $00
	nop                                              ; $74ea: $00
	rra                                              ; $74eb: $1f
	nop                                              ; $74ec: $00
	nop                                              ; $74ed: $00
	nop                                              ; $74ee: $00
	ccf                                              ; $74ef: $3f
	nop                                              ; $74f0: $00
	or   b                                           ; $74f1: $b0
	nop                                              ; $74f2: $00
	inc  sp                                          ; $74f3: $33
	nop                                              ; $74f4: $00
	inc  bc                                          ; $74f5: $03
	nop                                              ; $74f6: $00
	inc  bc                                          ; $74f7: $03
	nop                                              ; $74f8: $00
	inc  bc                                          ; $74f9: $03
	nop                                              ; $74fa: $00
	ld   b, $00                                      ; $74fb: $06 $00
	inc  e                                           ; $74fd: $1c
	nop                                              ; $74fe: $00
	nop                                              ; $74ff: $00
	nop                                              ; $7500: $00
	nop                                              ; $7501: $00
	nop                                              ; $7502: $00
	ret  nz                                          ; $7503: $c0

	nop                                              ; $7504: $00
	rst  $38                                         ; $7505: $ff
	nop                                              ; $7506: $00
	ret  nz                                          ; $7507: $c0

	nop                                              ; $7508: $00
	ret  nz                                          ; $7509: $c0

	nop                                              ; $750a: $00
	cp   $00                                         ; $750b: $fe $00
	nop                                              ; $750d: $00
	nop                                              ; $750e: $00
	rst  $38                                         ; $750f: $ff
	nop                                              ; $7510: $00
	inc  bc                                          ; $7511: $03
	nop                                              ; $7512: $00
	inc  sp                                          ; $7513: $33
	nop                                              ; $7514: $00
	jr   nc, jr_032_7517                             ; $7515: $30 $00

jr_032_7517:
	jr   nc, jr_032_7519                             ; $7517: $30 $00

jr_032_7519:
	ld   sp, $3300                                   ; $7519: $31 $00 $33
	nop                                              ; $751c: $00
	rra                                              ; $751d: $1f
	nop                                              ; $751e: $00
	nop                                              ; $751f: $00
	nop                                              ; $7520: $00
	nop                                              ; $7521: $00
	nop                                              ; $7522: $00
	nop                                              ; $7523: $00
	nop                                              ; $7524: $00
	rra                                              ; $7525: $1f
	nop                                              ; $7526: $00
	nop                                              ; $7527: $00
	nop                                              ; $7528: $00
	nop                                              ; $7529: $00
	nop                                              ; $752a: $00
	nop                                              ; $752b: $00
	nop                                              ; $752c: $00
	nop                                              ; $752d: $00
	nop                                              ; $752e: $00
	ccf                                              ; $752f: $3f
	nop                                              ; $7530: $00
	ld   b, $00                                      ; $7531: $06 $00
	ld   b, $00                                      ; $7533: $06 $00
	ld   b, $00                                      ; $7535: $06 $00
	ld   c, $00                                      ; $7537: $0e $00
	inc  c                                           ; $7539: $0c
	nop                                              ; $753a: $00
	jr   jr_032_753d                                 ; $753b: $18 $00

jr_032_753d:
	jr   nc, jr_032_753f                             ; $753d: $30 $00

jr_032_753f:
	nop                                              ; $753f: $00
	nop                                              ; $7540: $00
	nop                                              ; $7541: $00
	nop                                              ; $7542: $00
	nop                                              ; $7543: $00
	nop                                              ; $7544: $00
	ld   hl, sp+$00                                  ; $7545: $f8 $00
	nop                                              ; $7547: $00
	nop                                              ; $7548: $00
	nop                                              ; $7549: $00
	nop                                              ; $754a: $00
	nop                                              ; $754b: $00
	nop                                              ; $754c: $00
	nop                                              ; $754d: $00
	nop                                              ; $754e: $00
	db   $fc                                         ; $754f: $fc
	nop                                              ; $7550: $00
	ld   h, b                                        ; $7551: $60
	nop                                              ; $7552: $00
	ld   h, b                                        ; $7553: $60
	nop                                              ; $7554: $00
	ld   h, b                                        ; $7555: $60
	nop                                              ; $7556: $00
	ld   h, b                                        ; $7557: $60
	nop                                              ; $7558: $00
	ld   h, d                                        ; $7559: $62
	nop                                              ; $755a: $00
	ld   h, [hl]                                     ; $755b: $66
	nop                                              ; $755c: $00
	ld   a, $00                                      ; $755d: $3e $00
	nop                                              ; $755f: $00
	nop                                              ; $7560: $00
	nop                                              ; $7561: $00
	nop                                              ; $7562: $00
	nop                                              ; $7563: $00
	nop                                              ; $7564: $00
	nop                                              ; $7565: $00
	nop                                              ; $7566: $00
	nop                                              ; $7567: $00
	nop                                              ; $7568: $00
	nop                                              ; $7569: $00
	nop                                              ; $756a: $00
	nop                                              ; $756b: $00
	nop                                              ; $756c: $00
	nop                                              ; $756d: $00
	nop                                              ; $756e: $00
	nop                                              ; $756f: $00
	nop                                              ; $7570: $00
	nop                                              ; $7571: $00
	nop                                              ; $7572: $00
	nop                                              ; $7573: $00
	nop                                              ; $7574: $00
	nop                                              ; $7575: $00
	nop                                              ; $7576: $00
	nop                                              ; $7577: $00
	nop                                              ; $7578: $00
	nop                                              ; $7579: $00
	nop                                              ; $757a: $00
	nop                                              ; $757b: $00
	nop                                              ; $757c: $00
	nop                                              ; $757d: $00
	nop                                              ; $757e: $00
	nop                                              ; $757f: $00
	nop                                              ; $7580: $00
	nop                                              ; $7581: $00
	nop                                              ; $7582: $00
	nop                                              ; $7583: $00
	nop                                              ; $7584: $00
	nop                                              ; $7585: $00
	nop                                              ; $7586: $00
	nop                                              ; $7587: $00
	nop                                              ; $7588: $00
	nop                                              ; $7589: $00
	nop                                              ; $758a: $00
	nop                                              ; $758b: $00
	nop                                              ; $758c: $00
	nop                                              ; $758d: $00
	nop                                              ; $758e: $00
	nop                                              ; $758f: $00
	nop                                              ; $7590: $00
	nop                                              ; $7591: $00
	nop                                              ; $7592: $00
	nop                                              ; $7593: $00
	nop                                              ; $7594: $00
	nop                                              ; $7595: $00
	nop                                              ; $7596: $00
	nop                                              ; $7597: $00
	nop                                              ; $7598: $00
	nop                                              ; $7599: $00
	nop                                              ; $759a: $00
	nop                                              ; $759b: $00
	nop                                              ; $759c: $00
	nop                                              ; $759d: $00
	nop                                              ; $759e: $00
	nop                                              ; $759f: $00
	nop                                              ; $75a0: $00
	nop                                              ; $75a1: $00
	nop                                              ; $75a2: $00
	nop                                              ; $75a3: $00
	nop                                              ; $75a4: $00
	nop                                              ; $75a5: $00
	nop                                              ; $75a6: $00
	nop                                              ; $75a7: $00
	nop                                              ; $75a8: $00
	nop                                              ; $75a9: $00
	nop                                              ; $75aa: $00
	nop                                              ; $75ab: $00
	nop                                              ; $75ac: $00
	nop                                              ; $75ad: $00
	nop                                              ; $75ae: $00
	nop                                              ; $75af: $00
	nop                                              ; $75b0: $00
	nop                                              ; $75b1: $00
	nop                                              ; $75b2: $00
	nop                                              ; $75b3: $00
	nop                                              ; $75b4: $00
	nop                                              ; $75b5: $00
	nop                                              ; $75b6: $00
	nop                                              ; $75b7: $00
	nop                                              ; $75b8: $00
	nop                                              ; $75b9: $00
	nop                                              ; $75ba: $00
	nop                                              ; $75bb: $00
	nop                                              ; $75bc: $00
	nop                                              ; $75bd: $00
	nop                                              ; $75be: $00
	nop                                              ; $75bf: $00
	nop                                              ; $75c0: $00
	nop                                              ; $75c1: $00
	nop                                              ; $75c2: $00
	nop                                              ; $75c3: $00
	nop                                              ; $75c4: $00
	nop                                              ; $75c5: $00
	nop                                              ; $75c6: $00
	nop                                              ; $75c7: $00
	nop                                              ; $75c8: $00
	nop                                              ; $75c9: $00
	nop                                              ; $75ca: $00
	nop                                              ; $75cb: $00
	nop                                              ; $75cc: $00
	nop                                              ; $75cd: $00
	nop                                              ; $75ce: $00
	nop                                              ; $75cf: $00
	nop                                              ; $75d0: $00
	nop                                              ; $75d1: $00
	nop                                              ; $75d2: $00
	nop                                              ; $75d3: $00
	nop                                              ; $75d4: $00
	nop                                              ; $75d5: $00
	nop                                              ; $75d6: $00
	nop                                              ; $75d7: $00
	nop                                              ; $75d8: $00
	nop                                              ; $75d9: $00
	nop                                              ; $75da: $00
	nop                                              ; $75db: $00
	nop                                              ; $75dc: $00
	nop                                              ; $75dd: $00
	nop                                              ; $75de: $00
	nop                                              ; $75df: $00
	nop                                              ; $75e0: $00
	nop                                              ; $75e1: $00
	nop                                              ; $75e2: $00
	nop                                              ; $75e3: $00
	nop                                              ; $75e4: $00
	nop                                              ; $75e5: $00
	nop                                              ; $75e6: $00
	nop                                              ; $75e7: $00
	nop                                              ; $75e8: $00
	nop                                              ; $75e9: $00
	nop                                              ; $75ea: $00
	nop                                              ; $75eb: $00
	nop                                              ; $75ec: $00
	nop                                              ; $75ed: $00
	nop                                              ; $75ee: $00
	nop                                              ; $75ef: $00
	nop                                              ; $75f0: $00
	nop                                              ; $75f1: $00
	nop                                              ; $75f2: $00
	nop                                              ; $75f3: $00
	nop                                              ; $75f4: $00
	nop                                              ; $75f5: $00
	nop                                              ; $75f6: $00
	nop                                              ; $75f7: $00
	nop                                              ; $75f8: $00
	nop                                              ; $75f9: $00
	nop                                              ; $75fa: $00
	nop                                              ; $75fb: $00
	nop                                              ; $75fc: $00
	nop                                              ; $75fd: $00
	nop                                              ; $75fe: $00
	nop                                              ; $75ff: $00
	nop                                              ; $7600: $00
	nop                                              ; $7601: $00
	nop                                              ; $7602: $00
	nop                                              ; $7603: $00
	nop                                              ; $7604: $00
	nop                                              ; $7605: $00
	nop                                              ; $7606: $00
	nop                                              ; $7607: $00
	nop                                              ; $7608: $00
	nop                                              ; $7609: $00
	nop                                              ; $760a: $00
	nop                                              ; $760b: $00
	nop                                              ; $760c: $00
	nop                                              ; $760d: $00
	nop                                              ; $760e: $00
	nop                                              ; $760f: $00
	nop                                              ; $7610: $00
	nop                                              ; $7611: $00
	nop                                              ; $7612: $00
	nop                                              ; $7613: $00
	nop                                              ; $7614: $00
	nop                                              ; $7615: $00
	nop                                              ; $7616: $00
	nop                                              ; $7617: $00
	nop                                              ; $7618: $00
	nop                                              ; $7619: $00
	nop                                              ; $761a: $00
	nop                                              ; $761b: $00
	nop                                              ; $761c: $00
	nop                                              ; $761d: $00
	nop                                              ; $761e: $00
	nop                                              ; $761f: $00
	nop                                              ; $7620: $00
	nop                                              ; $7621: $00
	nop                                              ; $7622: $00
	nop                                              ; $7623: $00
	nop                                              ; $7624: $00
	nop                                              ; $7625: $00
	nop                                              ; $7626: $00
	nop                                              ; $7627: $00
	nop                                              ; $7628: $00
	nop                                              ; $7629: $00
	nop                                              ; $762a: $00
	nop                                              ; $762b: $00
	nop                                              ; $762c: $00
	nop                                              ; $762d: $00
	nop                                              ; $762e: $00
	nop                                              ; $762f: $00
	nop                                              ; $7630: $00
	nop                                              ; $7631: $00
	nop                                              ; $7632: $00
	nop                                              ; $7633: $00
	nop                                              ; $7634: $00
	nop                                              ; $7635: $00
	nop                                              ; $7636: $00
	nop                                              ; $7637: $00
	nop                                              ; $7638: $00
	nop                                              ; $7639: $00
	nop                                              ; $763a: $00
	nop                                              ; $763b: $00
	nop                                              ; $763c: $00
	nop                                              ; $763d: $00
	nop                                              ; $763e: $00
	nop                                              ; $763f: $00
	nop                                              ; $7640: $00
	nop                                              ; $7641: $00
	nop                                              ; $7642: $00
	nop                                              ; $7643: $00
	nop                                              ; $7644: $00
	nop                                              ; $7645: $00
	nop                                              ; $7646: $00
	nop                                              ; $7647: $00
	nop                                              ; $7648: $00
	nop                                              ; $7649: $00
	nop                                              ; $764a: $00
	nop                                              ; $764b: $00
	nop                                              ; $764c: $00
	nop                                              ; $764d: $00
	nop                                              ; $764e: $00
	nop                                              ; $764f: $00
	nop                                              ; $7650: $00
	nop                                              ; $7651: $00
	nop                                              ; $7652: $00
	nop                                              ; $7653: $00
	nop                                              ; $7654: $00
	nop                                              ; $7655: $00
	nop                                              ; $7656: $00
	nop                                              ; $7657: $00
	nop                                              ; $7658: $00
	nop                                              ; $7659: $00
	nop                                              ; $765a: $00
	nop                                              ; $765b: $00
	nop                                              ; $765c: $00
	nop                                              ; $765d: $00
	nop                                              ; $765e: $00
	nop                                              ; $765f: $00
	nop                                              ; $7660: $00
	nop                                              ; $7661: $00
	nop                                              ; $7662: $00
	nop                                              ; $7663: $00
	nop                                              ; $7664: $00
	nop                                              ; $7665: $00
	nop                                              ; $7666: $00
	nop                                              ; $7667: $00
	nop                                              ; $7668: $00
	nop                                              ; $7669: $00
	nop                                              ; $766a: $00
	nop                                              ; $766b: $00
	nop                                              ; $766c: $00
	nop                                              ; $766d: $00
	nop                                              ; $766e: $00
	nop                                              ; $766f: $00
	nop                                              ; $7670: $00
	nop                                              ; $7671: $00
	nop                                              ; $7672: $00
	nop                                              ; $7673: $00
	nop                                              ; $7674: $00
	nop                                              ; $7675: $00
	nop                                              ; $7676: $00
	nop                                              ; $7677: $00
	nop                                              ; $7678: $00
	nop                                              ; $7679: $00
	nop                                              ; $767a: $00
	nop                                              ; $767b: $00
	nop                                              ; $767c: $00
	nop                                              ; $767d: $00
	nop                                              ; $767e: $00
	nop                                              ; $767f: $00
	nop                                              ; $7680: $00
	nop                                              ; $7681: $00
	nop                                              ; $7682: $00
	nop                                              ; $7683: $00
	nop                                              ; $7684: $00
	nop                                              ; $7685: $00
	nop                                              ; $7686: $00
	nop                                              ; $7687: $00
	nop                                              ; $7688: $00
	nop                                              ; $7689: $00
	nop                                              ; $768a: $00
	nop                                              ; $768b: $00
	nop                                              ; $768c: $00
	nop                                              ; $768d: $00
	nop                                              ; $768e: $00
	nop                                              ; $768f: $00
	nop                                              ; $7690: $00
	nop                                              ; $7691: $00
	nop                                              ; $7692: $00
	nop                                              ; $7693: $00
	nop                                              ; $7694: $00
	nop                                              ; $7695: $00
	nop                                              ; $7696: $00
	nop                                              ; $7697: $00
	nop                                              ; $7698: $00
	nop                                              ; $7699: $00
	nop                                              ; $769a: $00
	nop                                              ; $769b: $00
	nop                                              ; $769c: $00
	nop                                              ; $769d: $00
	nop                                              ; $769e: $00
	nop                                              ; $769f: $00
	nop                                              ; $76a0: $00
	nop                                              ; $76a1: $00
	nop                                              ; $76a2: $00
	nop                                              ; $76a3: $00
	nop                                              ; $76a4: $00
	nop                                              ; $76a5: $00
	nop                                              ; $76a6: $00
	nop                                              ; $76a7: $00
	nop                                              ; $76a8: $00
	nop                                              ; $76a9: $00
	nop                                              ; $76aa: $00
	nop                                              ; $76ab: $00
	nop                                              ; $76ac: $00
	nop                                              ; $76ad: $00
	nop                                              ; $76ae: $00
	nop                                              ; $76af: $00
	nop                                              ; $76b0: $00
	nop                                              ; $76b1: $00
	nop                                              ; $76b2: $00
	nop                                              ; $76b3: $00
	nop                                              ; $76b4: $00
	nop                                              ; $76b5: $00
	nop                                              ; $76b6: $00
	nop                                              ; $76b7: $00
	nop                                              ; $76b8: $00
	nop                                              ; $76b9: $00
	nop                                              ; $76ba: $00
	nop                                              ; $76bb: $00
	nop                                              ; $76bc: $00
	nop                                              ; $76bd: $00
	nop                                              ; $76be: $00
	nop                                              ; $76bf: $00
	nop                                              ; $76c0: $00
	nop                                              ; $76c1: $00
	nop                                              ; $76c2: $00
	nop                                              ; $76c3: $00
	nop                                              ; $76c4: $00
	nop                                              ; $76c5: $00
	nop                                              ; $76c6: $00
	nop                                              ; $76c7: $00
	nop                                              ; $76c8: $00
	nop                                              ; $76c9: $00
	nop                                              ; $76ca: $00
	nop                                              ; $76cb: $00
	nop                                              ; $76cc: $00
	nop                                              ; $76cd: $00
	nop                                              ; $76ce: $00
	nop                                              ; $76cf: $00
	nop                                              ; $76d0: $00
	nop                                              ; $76d1: $00
	nop                                              ; $76d2: $00
	nop                                              ; $76d3: $00
	nop                                              ; $76d4: $00
	nop                                              ; $76d5: $00
	nop                                              ; $76d6: $00
	nop                                              ; $76d7: $00
	nop                                              ; $76d8: $00
	nop                                              ; $76d9: $00
	nop                                              ; $76da: $00
	nop                                              ; $76db: $00
	nop                                              ; $76dc: $00
	nop                                              ; $76dd: $00
	nop                                              ; $76de: $00
	nop                                              ; $76df: $00
	nop                                              ; $76e0: $00
	nop                                              ; $76e1: $00
	nop                                              ; $76e2: $00
	nop                                              ; $76e3: $00
	nop                                              ; $76e4: $00
	nop                                              ; $76e5: $00
	nop                                              ; $76e6: $00
	nop                                              ; $76e7: $00
	nop                                              ; $76e8: $00
	nop                                              ; $76e9: $00
	nop                                              ; $76ea: $00
	nop                                              ; $76eb: $00
	nop                                              ; $76ec: $00
	nop                                              ; $76ed: $00
	nop                                              ; $76ee: $00
	nop                                              ; $76ef: $00
	nop                                              ; $76f0: $00
	nop                                              ; $76f1: $00
	nop                                              ; $76f2: $00
	nop                                              ; $76f3: $00
	nop                                              ; $76f4: $00
	nop                                              ; $76f5: $00
	nop                                              ; $76f6: $00
	nop                                              ; $76f7: $00
	nop                                              ; $76f8: $00
	nop                                              ; $76f9: $00
	nop                                              ; $76fa: $00
	nop                                              ; $76fb: $00
	nop                                              ; $76fc: $00
	nop                                              ; $76fd: $00
	nop                                              ; $76fe: $00
	nop                                              ; $76ff: $00
	nop                                              ; $7700: $00
	nop                                              ; $7701: $00
	nop                                              ; $7702: $00
	nop                                              ; $7703: $00
	nop                                              ; $7704: $00
	nop                                              ; $7705: $00
	nop                                              ; $7706: $00
	nop                                              ; $7707: $00
	nop                                              ; $7708: $00
	nop                                              ; $7709: $00
	nop                                              ; $770a: $00
	nop                                              ; $770b: $00
	nop                                              ; $770c: $00
	nop                                              ; $770d: $00
	nop                                              ; $770e: $00
	nop                                              ; $770f: $00
	nop                                              ; $7710: $00
	nop                                              ; $7711: $00
	nop                                              ; $7712: $00
	nop                                              ; $7713: $00
	nop                                              ; $7714: $00
	nop                                              ; $7715: $00
	nop                                              ; $7716: $00
	nop                                              ; $7717: $00
	nop                                              ; $7718: $00
	nop                                              ; $7719: $00
	nop                                              ; $771a: $00
	nop                                              ; $771b: $00
	nop                                              ; $771c: $00
	nop                                              ; $771d: $00
	nop                                              ; $771e: $00
	nop                                              ; $771f: $00
	nop                                              ; $7720: $00
	nop                                              ; $7721: $00
	nop                                              ; $7722: $00
	nop                                              ; $7723: $00
	nop                                              ; $7724: $00
	nop                                              ; $7725: $00
	nop                                              ; $7726: $00
	nop                                              ; $7727: $00
	nop                                              ; $7728: $00
	nop                                              ; $7729: $00
	nop                                              ; $772a: $00
	nop                                              ; $772b: $00
	nop                                              ; $772c: $00
	nop                                              ; $772d: $00
	nop                                              ; $772e: $00
	nop                                              ; $772f: $00
	nop                                              ; $7730: $00
	nop                                              ; $7731: $00
	nop                                              ; $7732: $00
	nop                                              ; $7733: $00
	nop                                              ; $7734: $00
	nop                                              ; $7735: $00
	nop                                              ; $7736: $00
	nop                                              ; $7737: $00
	nop                                              ; $7738: $00
	nop                                              ; $7739: $00
	nop                                              ; $773a: $00
	nop                                              ; $773b: $00
	nop                                              ; $773c: $00
	nop                                              ; $773d: $00
	nop                                              ; $773e: $00
	nop                                              ; $773f: $00
	nop                                              ; $7740: $00
	nop                                              ; $7741: $00
	nop                                              ; $7742: $00
	nop                                              ; $7743: $00
	nop                                              ; $7744: $00
	nop                                              ; $7745: $00
	nop                                              ; $7746: $00
	nop                                              ; $7747: $00
	nop                                              ; $7748: $00
	nop                                              ; $7749: $00
	nop                                              ; $774a: $00
	nop                                              ; $774b: $00
	nop                                              ; $774c: $00
	nop                                              ; $774d: $00
	nop                                              ; $774e: $00
	nop                                              ; $774f: $00
	nop                                              ; $7750: $00
	nop                                              ; $7751: $00
	nop                                              ; $7752: $00
	nop                                              ; $7753: $00
	nop                                              ; $7754: $00
	nop                                              ; $7755: $00
	nop                                              ; $7756: $00
	nop                                              ; $7757: $00
	nop                                              ; $7758: $00
	nop                                              ; $7759: $00
	nop                                              ; $775a: $00
	nop                                              ; $775b: $00
	nop                                              ; $775c: $00
	nop                                              ; $775d: $00
	nop                                              ; $775e: $00
	nop                                              ; $775f: $00
	nop                                              ; $7760: $00
	nop                                              ; $7761: $00
	nop                                              ; $7762: $00
	nop                                              ; $7763: $00
	nop                                              ; $7764: $00
	nop                                              ; $7765: $00
	nop                                              ; $7766: $00
	nop                                              ; $7767: $00
	nop                                              ; $7768: $00
	nop                                              ; $7769: $00
	nop                                              ; $776a: $00
	nop                                              ; $776b: $00
	nop                                              ; $776c: $00
	nop                                              ; $776d: $00
	nop                                              ; $776e: $00
	nop                                              ; $776f: $00
	nop                                              ; $7770: $00
	nop                                              ; $7771: $00
	nop                                              ; $7772: $00
	nop                                              ; $7773: $00
	nop                                              ; $7774: $00
	nop                                              ; $7775: $00
	nop                                              ; $7776: $00
	nop                                              ; $7777: $00
	nop                                              ; $7778: $00
	nop                                              ; $7779: $00
	nop                                              ; $777a: $00
	nop                                              ; $777b: $00
	nop                                              ; $777c: $00
	nop                                              ; $777d: $00
	nop                                              ; $777e: $00
	nop                                              ; $777f: $00
	nop                                              ; $7780: $00
	nop                                              ; $7781: $00
	nop                                              ; $7782: $00
	nop                                              ; $7783: $00
	nop                                              ; $7784: $00
	nop                                              ; $7785: $00
	nop                                              ; $7786: $00
	nop                                              ; $7787: $00
	nop                                              ; $7788: $00
	nop                                              ; $7789: $00
	nop                                              ; $778a: $00
	nop                                              ; $778b: $00
	nop                                              ; $778c: $00
	nop                                              ; $778d: $00
	nop                                              ; $778e: $00

jr_032_778f:
	nop                                              ; $778f: $00
	nop                                              ; $7790: $00
	nop                                              ; $7791: $00
	nop                                              ; $7792: $00
	nop                                              ; $7793: $00
	nop                                              ; $7794: $00
	nop                                              ; $7795: $00
	nop                                              ; $7796: $00
	nop                                              ; $7797: $00
	nop                                              ; $7798: $00
	nop                                              ; $7799: $00
	nop                                              ; $779a: $00
	nop                                              ; $779b: $00
	nop                                              ; $779c: $00
	nop                                              ; $779d: $00
	nop                                              ; $779e: $00
	nop                                              ; $779f: $00
	nop                                              ; $77a0: $00
	nop                                              ; $77a1: $00
	nop                                              ; $77a2: $00
	nop                                              ; $77a3: $00
	nop                                              ; $77a4: $00
	nop                                              ; $77a5: $00
	nop                                              ; $77a6: $00
	nop                                              ; $77a7: $00
	nop                                              ; $77a8: $00
	nop                                              ; $77a9: $00
	nop                                              ; $77aa: $00
	nop                                              ; $77ab: $00
	nop                                              ; $77ac: $00
	nop                                              ; $77ad: $00
	nop                                              ; $77ae: $00
	nop                                              ; $77af: $00
	nop                                              ; $77b0: $00
	nop                                              ; $77b1: $00
	nop                                              ; $77b2: $00
	nop                                              ; $77b3: $00
	nop                                              ; $77b4: $00
	nop                                              ; $77b5: $00
	nop                                              ; $77b6: $00
	nop                                              ; $77b7: $00
	nop                                              ; $77b8: $00
	nop                                              ; $77b9: $00
	nop                                              ; $77ba: $00
	nop                                              ; $77bb: $00
	nop                                              ; $77bc: $00
	nop                                              ; $77bd: $00
	nop                                              ; $77be: $00
	nop                                              ; $77bf: $00
	nop                                              ; $77c0: $00
	nop                                              ; $77c1: $00
	nop                                              ; $77c2: $00
	nop                                              ; $77c3: $00
	nop                                              ; $77c4: $00
	nop                                              ; $77c5: $00
	nop                                              ; $77c6: $00
	nop                                              ; $77c7: $00
	nop                                              ; $77c8: $00
	nop                                              ; $77c9: $00
	nop                                              ; $77ca: $00
	nop                                              ; $77cb: $00
	nop                                              ; $77cc: $00
	nop                                              ; $77cd: $00
	nop                                              ; $77ce: $00
	nop                                              ; $77cf: $00
	nop                                              ; $77d0: $00
	nop                                              ; $77d1: $00
	nop                                              ; $77d2: $00
	nop                                              ; $77d3: $00
	nop                                              ; $77d4: $00

jr_032_77d5:
	nop                                              ; $77d5: $00
	nop                                              ; $77d6: $00
	nop                                              ; $77d7: $00
	nop                                              ; $77d8: $00
	nop                                              ; $77d9: $00
	nop                                              ; $77da: $00
	nop                                              ; $77db: $00
	nop                                              ; $77dc: $00
	nop                                              ; $77dd: $00
	nop                                              ; $77de: $00
	nop                                              ; $77df: $00
	nop                                              ; $77e0: $00
	nop                                              ; $77e1: $00
	nop                                              ; $77e2: $00
	nop                                              ; $77e3: $00
	nop                                              ; $77e4: $00
	nop                                              ; $77e5: $00
	nop                                              ; $77e6: $00
	nop                                              ; $77e7: $00
	nop                                              ; $77e8: $00
	nop                                              ; $77e9: $00
	nop                                              ; $77ea: $00
	nop                                              ; $77eb: $00
	nop                                              ; $77ec: $00
	nop                                              ; $77ed: $00
	nop                                              ; $77ee: $00
	nop                                              ; $77ef: $00
	nop                                              ; $77f0: $00
	nop                                              ; $77f1: $00
	nop                                              ; $77f2: $00
	nop                                              ; $77f3: $00
	nop                                              ; $77f4: $00
	nop                                              ; $77f5: $00
	nop                                              ; $77f6: $00
	nop                                              ; $77f7: $00
	nop                                              ; $77f8: $00
	nop                                              ; $77f9: $00
	nop                                              ; $77fa: $00
	nop                                              ; $77fb: $00
	nop                                              ; $77fc: $00
	nop                                              ; $77fd: $00
	nop                                              ; $77fe: $00
	nop                                              ; $77ff: $00

endc

	jp   $0201                                       ; $7800: $c3 $01 $02


	ld   e, $00                                      ; $7803: $1e $00
	ld   bc, $0e80                                   ; $7805: $01 $80 $0e
	add  b                                           ; $7808: $80
	ld   bc, $0001                                   ; $7809: $01 $01 $00
	db $20, $81

	nop                                              ; $780e: $00
	ld   bc, $0242                                   ; $780f: $01 $42 $02
	add  b                                           ; $7812: $80
	ld   b, $80                                      ; $7813: $06 $80
	ld   bc, $0d80                                   ; $7815: $01 $80 $0d
	ld   bc, Func_0949                                   ; $7818: $01 $49 $09
	add  b                                           ; $781b: $80
	rrca                                             ; $781c: $0f
	ld   a, [bc]                                     ; $781d: $0a
	rla                                              ; $781e: $17
	rlca                                             ; $781f: $07
	ld   [$0700], sp                                 ; $7820: $08 $00 $07
	nop                                              ; $7823: $00
	jr   nz, jr_032_7826                             ; $7824: $20 $00

jr_032_7826:
	ld   a, b                                        ; $7826: $78
	nop                                              ; $7827: $00
	add  b                                           ; $7828: $80
	add  b                                           ; $7829: $80
	ld   [hl], b                                     ; $782a: $70
	add  b                                           ; $782b: $80
	add  b                                           ; $782c: $80
	ld   [bc], a                                     ; $782d: $02
	nop                                              ; $782e: $00
	inc  b                                           ; $782f: $04
	nop                                              ; $7830: $00
	add  b                                           ; $7831: $80

jr_032_7832:
	add  b                                           ; $7832: $80
	nop                                              ; $7833: $00
	and  d                                           ; $7834: $a2
	add  c                                           ; $7835: $81
	and  b                                           ; $7836: $a0
	add  b                                           ; $7837: $80
	add  b                                           ; $7838: $80
	add  b                                           ; $7839: $80
	ret  nc                                          ; $783a: $d0

	ld   bc, $9092                                   ; $783b: $01 $92 $90
	add  b                                           ; $783e: $80
	ldh  a, [$0a]                                    ; $783f: $f0 $0a
	add  sp, -$20                                    ; $7841: $e8 $e0
	stop                                             ; $7843: $10 $00
	ldh  [rP1], a                                    ; $7845: $e0 $00
	inc  b                                           ; $7847: $04
	nop                                              ; $7848: $00
	ld   e, $00                                      ; $7849: $1e $00
	ld   bc, $0e80                                   ; $784b: $01 $80 $0e
	add  b                                           ; $784e: $80
	ld   bc, $0001                                   ; $784f: $01 $01 $00
	db $20, $81

	nop                                              ; $7854: $00
	ld   bc, $0242                                   ; $7855: $01 $42 $02
	add  b                                           ; $7858: $80
	ld   b, $80                                      ; $7859: $06 $80
	ld   bc, $0d80                                   ; $785b: $01 $80 $0d
	ld   bc, Func_0949                                   ; $785e: $01 $49 $09
	add  b                                           ; $7861: $80
	rrca                                             ; $7862: $0f
	ld   a, [bc]                                     ; $7863: $0a
	ld   d, $06                                      ; $7864: $16 $06
	ld   [$0700], sp                                 ; $7866: $08 $00 $07
	nop                                              ; $7869: $00
	jr   nz, jr_032_786c                             ; $786a: $20 $00

jr_032_786c:
	ld   a, b                                        ; $786c: $78
	nop                                              ; $786d: $00
	add  b                                           ; $786e: $80
	add  b                                           ; $786f: $80
	ld   [hl], b                                     ; $7870: $70
	add  b                                           ; $7871: $80
	add  b                                           ; $7872: $80
	ld   [bc], a                                     ; $7873: $02
	nop                                              ; $7874: $00

jr_032_7875:
	inc  b                                           ; $7875: $04
	nop                                              ; $7876: $00
	add  b                                           ; $7877: $80
	add  b                                           ; $7878: $80
	nop                                              ; $7879: $00
	and  d                                           ; $787a: $a2
	add  c                                           ; $787b: $81
	and  b                                           ; $787c: $a0
	add  b                                           ; $787d: $80
	add  b                                           ; $787e: $80
	add  b                                           ; $787f: $80
	ret  nc                                          ; $7880: $d0

	ld   bc, $9092                                   ; $7881: $01 $92 $90
	add  b                                           ; $7884: $80
	ldh  a, [rTMA]                                   ; $7885: $f0 $06
	ld   l, b                                        ; $7887: $68
	ld   h, b                                        ; $7888: $60
	stop                                             ; $7889: $10 $00
	ldh  [rP1], a                                    ; $788b: $e0 $00
	inc  b                                           ; $788d: $04
	add  c                                           ; $788e: $81
	nop                                              ; $788f: $00
	inc  b                                           ; $7890: $04
	ld   e, $00                                      ; $7891: $1e $00
	ld   bc, $2c0c                                   ; $7893: $01 $0c $2c
	add  b                                           ; $7896: $80
	add  hl, bc                                      ; $7897: $09
	ld   bc, $4000                                   ; $7898: $01 $00 $40
	add  c                                           ; $789b: $81
	nop                                              ; $789c: $00
	add  b                                           ; $789d: $80
	ld   [bc], a                                     ; $789e: $02
	add  b                                           ; $789f: $80
	ld   b, $01                                      ; $78a0: $06 $01
	ld   b, c                                        ; $78a2: $41
	ld   bc, $0d80                                   ; $78a3: $01 $80 $0d
	add  b                                           ; $78a6: $80
	add  hl, bc                                      ; $78a7: $09
	ld   b, $17                                      ; $78a8: $06 $17
	rlca                                             ; $78aa: $07
	ld   [$0700], sp                                 ; $78ab: $08 $00 $07
	nop                                              ; $78ae: $00
	jr   nz, jr_032_7832                             ; $78af: $20 $81

	nop                                              ; $78b1: $00
	inc  b                                           ; $78b2: $04
	ld   a, b                                        ; $78b3: $78
	nop                                              ; $78b4: $00
	add  b                                           ; $78b5: $80
	jr   nc, @+$36                                   ; $78b6: $30 $34

	add  b                                           ; $78b8: $80
	sub  b                                           ; $78b9: $90
	ld   [bc], a                                     ; $78ba: $02
	nop                                              ; $78bb: $00
	ld   [bc], a                                     ; $78bc: $02
	nop                                              ; $78bd: $00
	add  b                                           ; $78be: $80
	add  b                                           ; $78bf: $80
	add  d                                           ; $78c0: $82
	and  b                                           ; $78c1: $a0
	ld   bc, $8082                                   ; $78c2: $01 $82 $80
	add  b                                           ; $78c5: $80
	ret  nc                                          ; $78c6: $d0

	add  b                                           ; $78c7: $80
	sub  b                                           ; $78c8: $90
	ld   b, $e8                                      ; $78c9: $06 $e8
	ldh  [rAUD1SWEEP], a                             ; $78cb: $e0 $10
	nop                                              ; $78cd: $00
	ldh  [rP1], a                                    ; $78ce: $e0 $00
	inc  b                                           ; $78d0: $04
	add  c                                           ; $78d1: $81
	nop                                              ; $78d2: $00
	inc  b                                           ; $78d3: $04
	ld   e, $00                                      ; $78d4: $1e $00
	ld   bc, $2c0c                                   ; $78d6: $01 $0c $2c
	add  b                                           ; $78d9: $80
	add  hl, bc                                      ; $78da: $09
	ld   bc, $4000                                   ; $78db: $01 $00 $40
	add  c                                           ; $78de: $81
	nop                                              ; $78df: $00
	add  b                                           ; $78e0: $80
	ld   [bc], a                                     ; $78e1: $02
	add  b                                           ; $78e2: $80
	ld   b, $01                                      ; $78e3: $06 $01
	ld   b, a                                        ; $78e5: $47
	rlca                                             ; $78e6: $07
	add  b                                           ; $78e7: $80
	rrca                                             ; $78e8: $0f
	add  b                                           ; $78e9: $80
	add  hl, bc                                      ; $78ea: $09
	ld   b, $17                                      ; $78eb: $06 $17
	rlca                                             ; $78ed: $07
	ld   [$0700], sp                                 ; $78ee: $08 $00 $07
	nop                                              ; $78f1: $00
	jr   nz, jr_032_7875                             ; $78f2: $20 $81

	nop                                              ; $78f4: $00
	inc  b                                           ; $78f5: $04
	ld   a, b                                        ; $78f6: $78
	nop                                              ; $78f7: $00
	add  b                                           ; $78f8: $80
	jr   nc, jr_032_792f                             ; $78f9: $30 $34

	add  b                                           ; $78fb: $80
	sub  b                                           ; $78fc: $90
	ld   [bc], a                                     ; $78fd: $02
	nop                                              ; $78fe: $00
	ld   [bc], a                                     ; $78ff: $02
	nop                                              ; $7900: $00
	add  b                                           ; $7901: $80
	add  b                                           ; $7902: $80
	add  d                                           ; $7903: $82
	and  b                                           ; $7904: $a0
	ld   bc, $e0e2                                   ; $7905: $01 $e2 $e0
	add  b                                           ; $7908: $80
	ldh  a, [$80]                                    ; $7909: $f0 $80
	sub  b                                           ; $790b: $90
	ld   b, $e8                                      ; $790c: $06 $e8
	ldh  [rAUD1SWEEP], a                             ; $790e: $e0 $10
	nop                                              ; $7910: $00
	ldh  [rP1], a                                    ; $7911: $e0 $00
	inc  b                                           ; $7913: $04
	add  c                                           ; $7914: $81
	nop                                              ; $7915: $00
	ld   [$0007], sp                                 ; $7916: $08 $07 $00
	jr   jr_032_7922                                 ; $7919: $18 $07

	jr   nz, jr_032_793c                             ; $791b: $20 $1f

	db   $10                                         ; $791d: $10
	rra                                              ; $791e: $1f
	ld   d, a                                        ; $791f: $57
	add  c                                           ; $7920: $81
	cpl                                              ; $7921: $2f

jr_032_7922:
	nop                                              ; $7922: $00
	ld   a, [hl+]                                    ; $7923: $2a
	add  c                                           ; $7924: $81
	cpl                                              ; $7925: $2f
	ld   bc, $212b                                   ; $7926: $01 $2b $21
	add  b                                           ; $7929: $80
	add  hl, hl                                      ; $792a: $29
	add  b                                           ; $792b: $80
	cpl                                              ; $792c: $2f
	add  b                                           ; $792d: $80
	daa                                              ; $792e: $27

jr_032_792f:
	inc  b                                           ; $792f: $04
	ld   l, b                                        ; $7930: $68
	nop                                              ; $7931: $00
	daa                                              ; $7932: $27
	nop                                              ; $7933: $00
	db   $10                                         ; $7934: $10
	add  c                                           ; $7935: $81
	nop                                              ; $7936: $00
	ld   [$00e0], sp                                 ; $7937: $08 $e0 $00
	jr   @-$1e                                       ; $793a: $18 $e0

jr_032_793c:
	inc  b                                           ; $793c: $04
	ld   hl, sp+$08                                  ; $793d: $f8 $08
	ld   hl, sp-$16                                  ; $793f: $f8 $ea
	add  c                                           ; $7941: $81
	db   $f4                                         ; $7942: $f4
	nop                                              ; $7943: $00
	ld   d, h                                        ; $7944: $54
	add  c                                           ; $7945: $81
	db   $f4                                         ; $7946: $f4
	ld   bc, $84d4                                   ; $7947: $01 $d4 $84
	add  b                                           ; $794a: $80
	sub  h                                           ; $794b: $94
	add  b                                           ; $794c: $80
	db   $f4                                         ; $794d: $f4
	add  b                                           ; $794e: $80
	db   $e4                                         ; $794f: $e4
	inc  b                                           ; $7950: $04
	ld   d, $00                                      ; $7951: $16 $00
	db   $e4                                         ; $7953: $e4
	nop                                              ; $7954: $00
	ld   [$0081], sp                                 ; $7955: $08 $81 $00
	ld   [$0007], sp                                 ; $7958: $08 $07 $00
	jr   jr_032_7964                                 ; $795b: $18 $07

	jr   nz, jr_032_797e                             ; $795d: $20 $1f

	db   $10                                         ; $795f: $10
	rra                                              ; $7960: $1f
	ld   d, a                                        ; $7961: $57
	add  c                                           ; $7962: $81
	cpl                                              ; $7963: $2f

jr_032_7964:
	nop                                              ; $7964: $00
	ld   a, [hl+]                                    ; $7965: $2a
	add  c                                           ; $7966: $81
	cpl                                              ; $7967: $2f
	ld   bc, $212b                                   ; $7968: $01 $2b $21
	add  b                                           ; $796b: $80
	add  hl, hl                                      ; $796c: $29
	add  b                                           ; $796d: $80
	cpl                                              ; $796e: $2f
	add  b                                           ; $796f: $80
	ld   h, $04                                      ; $7970: $26 $04
	ld   l, b                                        ; $7972: $68
	nop                                              ; $7973: $00
	daa                                              ; $7974: $27
	nop                                              ; $7975: $00
	db   $10                                         ; $7976: $10
	add  c                                           ; $7977: $81
	nop                                              ; $7978: $00
	ld   [$00e0], sp                                 ; $7979: $08 $e0 $00
	jr   @-$1e                                       ; $797c: $18 $e0

jr_032_797e:
	inc  b                                           ; $797e: $04
	ld   hl, sp+$08                                  ; $797f: $f8 $08
	ld   hl, sp-$16                                  ; $7981: $f8 $ea
	add  c                                           ; $7983: $81
	db   $f4                                         ; $7984: $f4
	nop                                              ; $7985: $00
	ld   d, h                                        ; $7986: $54
	add  c                                           ; $7987: $81
	db   $f4                                         ; $7988: $f4
	ld   bc, $84d4                                   ; $7989: $01 $d4 $84
	add  b                                           ; $798c: $80
	sub  h                                           ; $798d: $94
	add  b                                           ; $798e: $80
	db   $f4                                         ; $798f: $f4
	add  b                                           ; $7990: $80
	ld   h, h                                        ; $7991: $64
	inc  b                                           ; $7992: $04
	ld   d, $00                                      ; $7993: $16 $00
	db   $e4                                         ; $7995: $e4
	nop                                              ; $7996: $00
	ld   [$0081], sp                                 ; $7997: $08 $81 $00
	ld   a, [bc]                                     ; $799a: $0a
	rlca                                             ; $799b: $07
	nop                                              ; $799c: $00
	jr   jr_032_79a6                                 ; $799d: $18 $07

	daa                                              ; $799f: $27

jr_032_79a0:
	rra                                              ; $79a0: $1f
	jr   @+$21                                       ; $79a1: $18 $1f

	ld   d, b                                        ; $79a3: $50
	ccf                                              ; $79a4: $3f
	scf                                              ; $79a5: $37

jr_032_79a6:
	add  c                                           ; $79a6: $81
	cpl                                              ; $79a7: $2f
	nop                                              ; $79a8: $00
	ld   a, [hl+]                                    ; $79a9: $2a
	add  c                                           ; $79aa: $81
	cpl                                              ; $79ab: $2f
	ld   bc, $212b                                   ; $79ac: $01 $2b $21
	add  b                                           ; $79af: $80
	add  hl, hl                                      ; $79b0: $29
	ld   b, $67                                      ; $79b1: $06 $67
	rlca                                             ; $79b3: $07
	ld   [$2700], sp                                 ; $79b4: $08 $00 $27
	nop                                              ; $79b7: $00
	db   $10                                         ; $79b8: $10
	add  c                                           ; $79b9: $81
	nop                                              ; $79ba: $00
	ld   a, [bc]                                     ; $79bb: $0a
	ldh  [rP1], a                                    ; $79bc: $e0 $00
	jr   jr_032_79a0                                 ; $79be: $18 $e0

	db   $e4                                         ; $79c0: $e4
	ld   hl, sp+$18                                  ; $79c1: $f8 $18
	ld   hl, sp+$0a                                  ; $79c3: $f8 $0a
	db   $fc                                         ; $79c5: $fc
	db   $ec                                         ; $79c6: $ec
	add  c                                           ; $79c7: $81
	db   $f4                                         ; $79c8: $f4
	nop                                              ; $79c9: $00
	ld   d, h                                        ; $79ca: $54
	add  c                                           ; $79cb: $81
	db   $f4                                         ; $79cc: $f4
	ld   bc, $84d4                                   ; $79cd: $01 $d4 $84
	add  b                                           ; $79d0: $80
	sub  h                                           ; $79d1: $94
	ld   b, $e6                                      ; $79d2: $06 $e6
	ldh  [rAUD1SWEEP], a                             ; $79d4: $e0 $10
	nop                                              ; $79d6: $00
	db   $e4                                         ; $79d7: $e4
	nop                                              ; $79d8: $00
	ld   [$0081], sp                                 ; $79d9: $08 $81 $00
	ld   a, [bc]                                     ; $79dc: $0a
	rlca                                             ; $79dd: $07
	nop                                              ; $79de: $00
	jr   jr_032_79e8                                 ; $79df: $18 $07

	daa                                              ; $79e1: $27

jr_032_79e2:
	rra                                              ; $79e2: $1f
	jr   @+$21                                       ; $79e3: $18 $1f

	ld   d, b                                        ; $79e5: $50
	ccf                                              ; $79e6: $3f
	scf                                              ; $79e7: $37

jr_032_79e8:
	add  c                                           ; $79e8: $81
	cpl                                              ; $79e9: $2f
	nop                                              ; $79ea: $00
	ld   a, [hl+]                                    ; $79eb: $2a
	add  c                                           ; $79ec: $81
	cpl                                              ; $79ed: $2f
	ld   bc, $2f25                                   ; $79ee: $01 $25 $2f
	add  b                                           ; $79f1: $80
	add  hl, hl                                      ; $79f2: $29
	ld   b, $67                                      ; $79f3: $06 $67
	rlca                                             ; $79f5: $07
	ld   [$2700], sp                                 ; $79f6: $08 $00 $27
	nop                                              ; $79f9: $00
	db   $10                                         ; $79fa: $10
	add  c                                           ; $79fb: $81
	nop                                              ; $79fc: $00
	ld   a, [bc]                                     ; $79fd: $0a
	ldh  [rP1], a                                    ; $79fe: $e0 $00
	jr   jr_032_79e2                                 ; $7a00: $18 $e0

	db   $e4                                         ; $7a02: $e4
	ld   hl, sp+$18                                  ; $7a03: $f8 $18
	ld   hl, sp+$0a                                  ; $7a05: $f8 $0a
	db   $fc                                         ; $7a07: $fc
	db   $ec                                         ; $7a08: $ec
	add  c                                           ; $7a09: $81
	db   $f4                                         ; $7a0a: $f4
	nop                                              ; $7a0b: $00
	ld   d, h                                        ; $7a0c: $54
	add  c                                           ; $7a0d: $81
	db   $f4                                         ; $7a0e: $f4
	ld   bc, $f4a4                                   ; $7a0f: $01 $a4 $f4
	add  b                                           ; $7a12: $80
	sub  h                                           ; $7a13: $94
	ld   b, $e6                                      ; $7a14: $06 $e6
	ldh  [rAUD1SWEEP], a                             ; $7a16: $e0 $10
	nop                                              ; $7a18: $00
	db   $e4                                         ; $7a19: $e4
	nop                                              ; $7a1a: $00
	ld   [$0081], sp                                 ; $7a1b: $08 $81 $00
	inc  b                                           ; $7a1e: $04
	rlca                                             ; $7a1f: $07
	nop                                              ; $7a20: $00
	jr   jr_032_7a2a                                 ; $7a21: $18 $07

	daa                                              ; $7a23: $27
	add  b                                           ; $7a24: $80
	rra                                              ; $7a25: $1f
	ld   b, $1d                                      ; $7a26: $06 $1d
	ld   e, l                                        ; $7a28: $5d
	add  hl, sp                                      ; $7a29: $39

jr_032_7a2a:
	ccf                                              ; $7a2a: $3f
	ld   [hl], $3e                                   ; $7a2b: $36 $3e
	ld   l, $80                                      ; $7a2d: $2e $80
	cpl                                              ; $7a2f: $2f
	add  b                                           ; $7a30: $80
	ld   hl, $6908                                   ; $7a31: $21 $08 $69
	add  hl, bc                                      ; $7a34: $09
	cpl                                              ; $7a35: $2f
	rrca                                             ; $7a36: $0f
	rla                                              ; $7a37: $17
	rlca                                             ; $7a38: $07
	ld   [$0700], sp                                 ; $7a39: $08 $00 $07
	add  e                                           ; $7a3c: $83
	nop                                              ; $7a3d: $00
	ld   b, $e0                                      ; $7a3e: $06 $e0
	nop                                              ; $7a40: $00
	db   $10                                         ; $7a41: $10
	ldh  [$e8], a                                    ; $7a42: $e0 $e8
	ldh  a, [$f4]                                    ; $7a44: $f0 $f4
	add  c                                           ; $7a46: $81
	ld   hl, sp+$00                                  ; $7a47: $f8 $00
	ld   a, [$dc80]                                  ; $7a49: $fa $80 $dc
	add  b                                           ; $7a4c: $80
	db   $ec                                         ; $7a4d: $ec
	add  c                                           ; $7a4e: $81
	ld   l, h                                        ; $7a4f: $6c
	ld   [$006e], sp                                 ; $7a50: $08 $6e $00
	db   $f4                                         ; $7a53: $f4
	ldh  a, [$e8]                                    ; $7a54: $f0 $e8
	ldh  [rAUD1SWEEP], a                             ; $7a56: $e0 $10
	nop                                              ; $7a58: $00
	ldh  [$83], a                                    ; $7a59: $e0 $83
	nop                                              ; $7a5b: $00
	inc  b                                           ; $7a5c: $04
	rlca                                             ; $7a5d: $07
	nop                                              ; $7a5e: $00
	jr   jr_032_7a68                                 ; $7a5f: $18 $07

	daa                                              ; $7a61: $27
	add  b                                           ; $7a62: $80
	rra                                              ; $7a63: $1f
	ld   b, $1d                                      ; $7a64: $06 $1d
	ld   e, l                                        ; $7a66: $5d
	add  hl, sp                                      ; $7a67: $39

jr_032_7a68:
	ccf                                              ; $7a68: $3f
	ld   [hl], $3e                                   ; $7a69: $36 $3e
	ld   l, $80                                      ; $7a6b: $2e $80
	cpl                                              ; $7a6d: $2f
	add  b                                           ; $7a6e: $80
	ld   hl, $6908                                   ; $7a6f: $21 $08 $69
	add  hl, bc                                      ; $7a72: $09
	cpl                                              ; $7a73: $2f
	rrca                                             ; $7a74: $0f
	ld   d, $06                                      ; $7a75: $16 $06
	ld   [$0700], sp                                 ; $7a77: $08 $00 $07
	add  e                                           ; $7a7a: $83
	nop                                              ; $7a7b: $00
	ld   b, $e0                                      ; $7a7c: $06 $e0
	nop                                              ; $7a7e: $00
	db   $10                                         ; $7a7f: $10
	ldh  [$e8], a                                    ; $7a80: $e0 $e8
	ldh  a, [$f4]                                    ; $7a82: $f0 $f4
	add  c                                           ; $7a84: $81
	ld   hl, sp+$00                                  ; $7a85: $f8 $00
	ld   a, [$dc80]                                  ; $7a87: $fa $80 $dc
	add  b                                           ; $7a8a: $80
	db   $ec                                         ; $7a8b: $ec
	add  c                                           ; $7a8c: $81
	ld   l, h                                        ; $7a8d: $6c
	ld   [$006e], sp                                 ; $7a8e: $08 $6e $00
	db   $f4                                         ; $7a91: $f4
	ldh  a, [rBCPS]                                  ; $7a92: $f0 $68
	ld   h, b                                        ; $7a94: $60
	stop                                             ; $7a95: $10 $00
	ldh  [$83], a                                    ; $7a97: $e0 $83
	nop                                              ; $7a99: $00
	inc  b                                           ; $7a9a: $04
	rrca                                             ; $7a9b: $0f
	nop                                              ; $7a9c: $00
	db   $10                                         ; $7a9d: $10
	rrca                                             ; $7a9e: $0f

jr_032_7a9f:
	cpl                                              ; $7a9f: $2f
	add  c                                           ; $7aa0: $81
	rra                                              ; $7aa1: $1f
	nop                                              ; $7aa2: $00
	ld   e, a                                        ; $7aa3: $5f
	add  b                                           ; $7aa4: $80
	dec  a                                           ; $7aa5: $3d
	ld   b, $39                                      ; $7aa6: $06 $39
	ccf                                              ; $7aa8: $3f
	ld   [hl], $3e                                   ; $7aa9: $36 $3e
	ld   l, $6f                                      ; $7aab: $2e $6f
	rrca                                             ; $7aad: $0f
	add  b                                           ; $7aae: $80
	ld   bc, $2906                                   ; $7aaf: $01 $06 $29
	add  hl, bc                                      ; $7ab2: $09
	rla                                              ; $7ab3: $17
	rlca                                             ; $7ab4: $07
	ld   [$0700], sp                                 ; $7ab5: $08 $00 $07
	add  e                                           ; $7ab8: $83
	nop                                              ; $7ab9: $00
	inc  b                                           ; $7aba: $04
	ldh  [rP1], a                                    ; $7abb: $e0 $00

jr_032_7abd:
	jr   jr_032_7a9f                                 ; $7abd: $18 $e0

	db   $e4                                         ; $7abf: $e4
	add  c                                           ; $7ac0: $81
	ld   hl, sp+$00                                  ; $7ac1: $f8 $00
	ld   a, [$fc82]                                  ; $7ac3: $fa $82 $fc
	add  b                                           ; $7ac6: $80
	call c, $ec80                                    ; $7ac7: $dc $80 $ec
	add  hl, bc                                      ; $7aca: $09
	ld   l, h                                        ; $7acb: $6c
	ld   l, [hl]                                     ; $7acc: $6e
	ld   h, b                                        ; $7acd: $60
	ld   h, h                                        ; $7ace: $64
	nop                                              ; $7acf: $00
	add  sp, -$20                                    ; $7ad0: $e8 $e0
	stop                                             ; $7ad2: $10 $00
	ldh  [$83], a                                    ; $7ad4: $e0 $83
	nop                                              ; $7ad6: $00
	inc  b                                           ; $7ad7: $04
	rrca                                             ; $7ad8: $0f
	nop                                              ; $7ad9: $00
	db   $10                                         ; $7ada: $10

jr_032_7adb:
	rrca                                             ; $7adb: $0f
	cpl                                              ; $7adc: $2f
	add  c                                           ; $7add: $81
	rra                                              ; $7ade: $1f
	nop                                              ; $7adf: $00
	ld   e, a                                        ; $7ae0: $5f
	add  b                                           ; $7ae1: $80
	dec  a                                           ; $7ae2: $3d
	dec  b                                           ; $7ae3: $05
	add  hl, sp                                      ; $7ae4: $39
	ccf                                              ; $7ae5: $3f
	ld   [hl], $3e                                   ; $7ae6: $36 $3e
	ld   l, $6f                                      ; $7ae8: $2e $6f
	add  c                                           ; $7aea: $81
	rrca                                             ; $7aeb: $0f
	ld   b, $29                                      ; $7aec: $06 $29
	add  hl, bc                                      ; $7aee: $09
	rla                                              ; $7aef: $17
	rlca                                             ; $7af0: $07
	ld   [$0700], sp                                 ; $7af1: $08 $00 $07
	add  e                                           ; $7af4: $83
	nop                                              ; $7af5: $00
	inc  b                                           ; $7af6: $04

jr_032_7af7:
	ldh  [rP1], a                                    ; $7af7: $e0 $00
	jr   jr_032_7adb                                 ; $7af9: $18 $e0

	db   $e4                                         ; $7afb: $e4
	add  c                                           ; $7afc: $81
	ld   hl, sp+$00                                  ; $7afd: $f8 $00
	ld   a, [$fc82]                                  ; $7aff: $fa $82 $fc
	add  b                                           ; $7b02: $80
	call c, $ec80                                    ; $7b03: $dc $80 $ec
	add  hl, bc                                      ; $7b06: $09
	ld   l, h                                        ; $7b07: $6c
	ld   l, [hl]                                     ; $7b08: $6e
	ld   h, b                                        ; $7b09: $60
	ld   h, h                                        ; $7b0a: $64
	nop                                              ; $7b0b: $00
	add  sp, -$20                                    ; $7b0c: $e8 $e0
	stop                                             ; $7b0e: $10 $00
	ldh  [$81], a                                    ; $7b10: $e0 $81
	nop                                              ; $7b12: $00
	inc  bc                                          ; $7b13: $03
	ld   a, $00                                      ; $7b14: $3e $00
	dec  e                                           ; $7b16: $1d
	inc  e                                           ; $7b17: $1c
	add  b                                           ; $7b18: $80
	dec  e                                           ; $7b19: $1d
	nop                                              ; $7b1a: $00
	nop                                              ; $7b1b: $00
	add  b                                           ; $7b1c: $80
	ld   b, $03                                      ; $7b1d: $06 $03
	rra                                              ; $7b1f: $1f
	ld   e, a                                        ; $7b20: $5f
	inc  c                                           ; $7b21: $0c
	dec  c                                           ; $7b22: $0d
	add  b                                           ; $7b23: $80
	dec  a                                           ; $7b24: $3d
	inc  b                                           ; $7b25: $04
	add  hl, sp                                      ; $7b26: $39
	dec  a                                           ; $7b27: $3d
	dec  [hl]                                        ; $7b28: $35
	ld   sp, $8021                                   ; $7b29: $31 $21 $80
	dec  l                                           ; $7b2c: $2d
	add  b                                           ; $7b2d: $80
	add  hl, hl                                      ; $7b2e: $29
	inc  b                                           ; $7b2f: $04
	ld   h, a                                        ; $7b30: $67
	rlca                                             ; $7b31: $07
	jr   z, jr_032_7b34                              ; $7b32: $28 $00

jr_032_7b34:
	rla                                              ; $7b34: $17
	add  c                                           ; $7b35: $81
	nop                                              ; $7b36: $00
	inc  bc                                          ; $7b37: $03
	ld   a, h                                        ; $7b38: $7c
	nop                                              ; $7b39: $00
	cp   b                                           ; $7b3a: $b8
	jr   c, jr_032_7abd                              ; $7b3b: $38 $80

	cp   b                                           ; $7b3d: $b8
	nop                                              ; $7b3e: $00

jr_032_7b3f:
	nop                                              ; $7b3f: $00
	add  b                                           ; $7b40: $80
	ld   h, b                                        ; $7b41: $60
	inc  bc                                          ; $7b42: $03
	ld   hl, sp-$06                                  ; $7b43: $f8 $fa
	jr   nc, jr_032_7af7                             ; $7b45: $30 $b0

	add  b                                           ; $7b47: $80
	cp   h                                           ; $7b48: $bc
	inc  b                                           ; $7b49: $04
	sbc  h                                           ; $7b4a: $9c
	cp   h                                           ; $7b4b: $bc
	xor  h                                           ; $7b4c: $ac
	adc  h                                           ; $7b4d: $8c
	add  h                                           ; $7b4e: $84
	add  b                                           ; $7b4f: $80
	call nc, $9480                                   ; $7b50: $d4 $80 $94
	inc  b                                           ; $7b53: $04
	and  $e0                                         ; $7b54: $e6 $e0
	inc  d                                           ; $7b56: $14
	nop                                              ; $7b57: $00
	add  sp, -$7f                                    ; $7b58: $e8 $81
	nop                                              ; $7b5a: $00
	inc  bc                                          ; $7b5b: $03
	ld   a, $00                                      ; $7b5c: $3e $00
	dec  e                                           ; $7b5e: $1d
	inc  e                                           ; $7b5f: $1c
	add  b                                           ; $7b60: $80
	dec  e                                           ; $7b61: $1d
	nop                                              ; $7b62: $00
	nop                                              ; $7b63: $00
	add  b                                           ; $7b64: $80
	ld   b, $03                                      ; $7b65: $06 $03
	rra                                              ; $7b67: $1f
	ld   e, a                                        ; $7b68: $5f
	inc  c                                           ; $7b69: $0c
	dec  c                                           ; $7b6a: $0d
	add  b                                           ; $7b6b: $80
	dec  a                                           ; $7b6c: $3d
	inc  b                                           ; $7b6d: $04
	add  hl, sp                                      ; $7b6e: $39
	dec  a                                           ; $7b6f: $3d
	dec  [hl]                                        ; $7b70: $35
	ld   sp, $8021                                   ; $7b71: $31 $21 $80
	dec  l                                           ; $7b74: $2d
	add  b                                           ; $7b75: $80
	add  hl, hl                                      ; $7b76: $29
	inc  b                                           ; $7b77: $04
	ld   h, [hl]                                     ; $7b78: $66
	ld   b, $28                                      ; $7b79: $06 $28
	nop                                              ; $7b7b: $00
	rla                                              ; $7b7c: $17
	add  c                                           ; $7b7d: $81
	nop                                              ; $7b7e: $00
	inc  bc                                          ; $7b7f: $03
	ld   a, h                                        ; $7b80: $7c
	nop                                              ; $7b81: $00
	cp   b                                           ; $7b82: $b8
	jr   c, @-$7e                                    ; $7b83: $38 $80

	cp   b                                           ; $7b85: $b8
	nop                                              ; $7b86: $00
	nop                                              ; $7b87: $00
	add  b                                           ; $7b88: $80
	ld   h, b                                        ; $7b89: $60
	inc  bc                                          ; $7b8a: $03
	ld   hl, sp-$06                                  ; $7b8b: $f8 $fa
	jr   nc, jr_032_7b3f                             ; $7b8d: $30 $b0

	add  b                                           ; $7b8f: $80
	cp   h                                           ; $7b90: $bc
	inc  b                                           ; $7b91: $04
	sbc  h                                           ; $7b92: $9c
	cp   h                                           ; $7b93: $bc
	xor  h                                           ; $7b94: $ac
	adc  h                                           ; $7b95: $8c
	add  h                                           ; $7b96: $84
	add  b                                           ; $7b97: $80
	call nc, $9480                                   ; $7b98: $d4 $80 $94
	inc  b                                           ; $7b9b: $04
	ld   h, [hl]                                     ; $7b9c: $66
	ld   h, b                                        ; $7b9d: $60
	inc  d                                           ; $7b9e: $14
	nop                                              ; $7b9f: $00
	add  sp, -$7d                                    ; $7ba0: $e8 $83
	nop                                              ; $7ba2: $00
	inc  bc                                          ; $7ba3: $03
	inc  a                                           ; $7ba4: $3c
	nop                                              ; $7ba5: $00
	rra                                              ; $7ba6: $1f
	inc  e                                           ; $7ba7: $1c
	add  b                                           ; $7ba8: $80
	add  hl, de                                      ; $7ba9: $19
	nop                                              ; $7baa: $00
	ld   b, b                                        ; $7bab: $40
	add  b                                           ; $7bac: $80
	ld   h, $80                                      ; $7bad: $26 $80
	cpl                                              ; $7baf: $2f
	ld   bc, $1d1c                                   ; $7bb0: $01 $1c $1d
	add  b                                           ; $7bb3: $80
	dec  a                                           ; $7bb4: $3d
	ld   b, $39                                      ; $7bb5: $06 $39
	dec  a                                           ; $7bb7: $3d
	dec  [hl]                                        ; $7bb8: $35
	ld   sp, $6921                                   ; $7bb9: $31 $21 $69
	add  hl, bc                                      ; $7bbc: $09
	add  b                                           ; $7bbd: $80
	rlca                                             ; $7bbe: $07
	ld   [bc], a                                     ; $7bbf: $02
	jr   z, jr_032_7bc2                              ; $7bc0: $28 $00

jr_032_7bc2:
	rla                                              ; $7bc2: $17
	add  e                                           ; $7bc3: $83
	nop                                              ; $7bc4: $00
	inc  bc                                          ; $7bc5: $03
	inc  a                                           ; $7bc6: $3c
	nop                                              ; $7bc7: $00
	ld   hl, sp+$38                                  ; $7bc8: $f8 $38
	add  b                                           ; $7bca: $80
	sbc  b                                           ; $7bcb: $98
	nop                                              ; $7bcc: $00
	ld   [bc], a                                     ; $7bcd: $02
	add  b                                           ; $7bce: $80
	ld   h, h                                        ; $7bcf: $64
	add  b                                           ; $7bd0: $80
	db   $f4                                         ; $7bd1: $f4
	ld   bc, $b838                                   ; $7bd2: $01 $38 $b8
	add  b                                           ; $7bd5: $80
	cp   h                                           ; $7bd6: $bc
	ld   b, $9c                                      ; $7bd7: $06 $9c
	cp   h                                           ; $7bd9: $bc
	xor  h                                           ; $7bda: $ac
	adc  h                                           ; $7bdb: $8c
	add  h                                           ; $7bdc: $84
	sub  [hl]                                        ; $7bdd: $96
	sub  b                                           ; $7bde: $90
	add  b                                           ; $7bdf: $80
	ldh  [rSC], a                                    ; $7be0: $e0 $02
	inc  d                                           ; $7be2: $14
	nop                                              ; $7be3: $00
	add  sp, -$7d                                    ; $7be4: $e8 $83
	nop                                              ; $7be6: $00
	inc  bc                                          ; $7be7: $03
	inc  a                                           ; $7be8: $3c
	nop                                              ; $7be9: $00
	rra                                              ; $7bea: $1f
	inc  e                                           ; $7beb: $1c
	add  b                                           ; $7bec: $80
	add  hl, de                                      ; $7bed: $19
	nop                                              ; $7bee: $00
	ld   b, b                                        ; $7bef: $40
	add  b                                           ; $7bf0: $80
	ld   h, $80                                      ; $7bf1: $26 $80
	cpl                                              ; $7bf3: $2f
	ld   bc, $1d1c                                   ; $7bf4: $01 $1c $1d
	add  b                                           ; $7bf7: $80
	dec  a                                           ; $7bf8: $3d
	ld   b, $39                                      ; $7bf9: $06 $39
	dec  a                                           ; $7bfb: $3d
	dec  [hl]                                        ; $7bfc: $35
	ccf                                              ; $7bfd: $3f
	cpl                                              ; $7bfe: $2f
	ld   l, c                                        ; $7bff: $69
	add  hl, bc                                      ; $7c00: $09
	add  b                                           ; $7c01: $80
	rlca                                             ; $7c02: $07
	ld   [bc], a                                     ; $7c03: $02
	jr   z, jr_032_7c06                              ; $7c04: $28 $00

jr_032_7c06:
	rla                                              ; $7c06: $17
	add  e                                           ; $7c07: $83
	nop                                              ; $7c08: $00
	inc  bc                                          ; $7c09: $03
	inc  a                                           ; $7c0a: $3c
	nop                                              ; $7c0b: $00
	ld   hl, sp+$38                                  ; $7c0c: $f8 $38
	add  b                                           ; $7c0e: $80
	sbc  b                                           ; $7c0f: $98
	nop                                              ; $7c10: $00
	ld   [bc], a                                     ; $7c11: $02
	add  b                                           ; $7c12: $80
	ld   h, h                                        ; $7c13: $64
	add  b                                           ; $7c14: $80
	db   $f4                                         ; $7c15: $f4
	ld   bc, $b838                                   ; $7c16: $01 $38 $b8
	add  b                                           ; $7c19: $80
	cp   h                                           ; $7c1a: $bc
	ld   b, $9c                                      ; $7c1b: $06 $9c
	cp   h                                           ; $7c1d: $bc
	xor  h                                           ; $7c1e: $ac
	db   $fc                                         ; $7c1f: $fc
	db   $f4                                         ; $7c20: $f4
	sub  [hl]                                        ; $7c21: $96
	sub  b                                           ; $7c22: $90
	add  b                                           ; $7c23: $80
	ldh  [rSC], a                                    ; $7c24: $e0 $02
	inc  d                                           ; $7c26: $14
	nop                                              ; $7c27: $00
	add  sp, -$7d                                    ; $7c28: $e8 $83
	nop                                              ; $7c2a: $00
	inc  b                                           ; $7c2b: $04
	rrca                                             ; $7c2c: $0f
	nop                                              ; $7c2d: $00
	ld   [hl], b                                     ; $7c2e: $70
	rrca                                             ; $7c2f: $0f
	ld   c, a                                        ; $7c30: $4f
	add  b                                           ; $7c31: $80
	rlca                                             ; $7c32: $07
	ld   bc, $5e1e                                   ; $7c33: $01 $1e $5e
	add  b                                           ; $7c36: $80
	dec  a                                           ; $7c37: $3d
	add  b                                           ; $7c38: $80
	dec  [hl]                                        ; $7c39: $35
	dec  c                                           ; $7c3a: $0d
	ld   sp, $2d35                                   ; $7c3b: $31 $35 $2d
	daa                                              ; $7c3e: $27
	ld   l, $64                                      ; $7c3f: $2e $64
	ld   c, $cb                                      ; $7c41: $0e $cb
	ld   hl, $6727                                   ; $7c43: $21 $27 $67
	ld   a, b                                        ; $7c46: $78
	nop                                              ; $7c47: $00
	rst  $20                                         ; $7c48: $e7
	add  e                                           ; $7c49: $83
	nop                                              ; $7c4a: $00
	ld   b, $70                                      ; $7c4b: $06 $70
	nop                                              ; $7c4d: $00
	adc  b                                           ; $7c4e: $88
	ld   [hl], b                                     ; $7c4f: $70
	ld   [hl], h                                     ; $7c50: $74
	ld   hl, sp-$06                                  ; $7c51: $f8 $fa
	add  b                                           ; $7c53: $80
	db   $f4                                         ; $7c54: $f4
	add  b                                           ; $7c55: $80
	cp   b                                           ; $7c56: $b8
	add  b                                           ; $7c57: $80
	xor  b                                           ; $7c58: $a8
	dec  c                                           ; $7c59: $0d
	inc  c                                           ; $7c5a: $0c
	inc  l                                           ; $7c5b: $2c
	ld   [hl], h                                     ; $7c5c: $74
	inc  h                                           ; $7c5d: $24
	ld   [hl], h                                     ; $7c5e: $74
	ld   h, $70                                      ; $7c5f: $26 $70
	db   $d3                                         ; $7c61: $d3
	add  h                                           ; $7c62: $84
	db   $e4                                         ; $7c63: $e4
	and  $1e                                         ; $7c64: $e6 $1e
	nop                                              ; $7c66: $00
	rst  $20                                         ; $7c67: $e7
	add  e                                           ; $7c68: $83
	nop                                              ; $7c69: $00
	inc  b                                           ; $7c6a: $04
	rrca                                             ; $7c6b: $0f
	nop                                              ; $7c6c: $00
	ld   [hl], b                                     ; $7c6d: $70
	rrca                                             ; $7c6e: $0f
	ld   c, a                                        ; $7c6f: $4f
	add  b                                           ; $7c70: $80
	rlca                                             ; $7c71: $07
	ld   bc, $5e1e                                   ; $7c72: $01 $1e $5e
	add  b                                           ; $7c75: $80
	dec  a                                           ; $7c76: $3d
	add  b                                           ; $7c77: $80
	dec  [hl]                                        ; $7c78: $35
	dec  c                                           ; $7c79: $0d
	ld   sp, $2d35                                   ; $7c7a: $31 $35 $2d
	daa                                              ; $7c7d: $27
	ld   l, $64                                      ; $7c7e: $2e $64
	ld   c, $cb                                      ; $7c80: $0e $cb
	ld   hl, $6626                                   ; $7c82: $21 $26 $66
	ld   a, b                                        ; $7c85: $78
	nop                                              ; $7c86: $00
	rst  $20                                         ; $7c87: $e7
	add  e                                           ; $7c88: $83
	nop                                              ; $7c89: $00
	ld   b, $70                                      ; $7c8a: $06 $70
	nop                                              ; $7c8c: $00
	adc  b                                           ; $7c8d: $88
	ld   [hl], b                                     ; $7c8e: $70
	ld   [hl], h                                     ; $7c8f: $74
	ld   hl, sp-$06                                  ; $7c90: $f8 $fa
	add  b                                           ; $7c92: $80
	db   $f4                                         ; $7c93: $f4
	add  b                                           ; $7c94: $80
	cp   b                                           ; $7c95: $b8
	add  b                                           ; $7c96: $80
	xor  b                                           ; $7c97: $a8
	dec  c                                           ; $7c98: $0d
	adc  h                                           ; $7c99: $8c
	xor  h                                           ; $7c9a: $ac
	ld   [hl], h                                     ; $7c9b: $74
	inc  h                                           ; $7c9c: $24
	ld   [hl], h                                     ; $7c9d: $74
	ld   h, $70                                      ; $7c9e: $26 $70
	db   $d3                                         ; $7ca0: $d3
	add  h                                           ; $7ca1: $84
	ld   h, h                                        ; $7ca2: $64
	ld   h, [hl]                                     ; $7ca3: $66
	ld   e, $00                                      ; $7ca4: $1e $00
	rst  $20                                         ; $7ca6: $e7
	add  e                                           ; $7ca7: $83
	nop                                              ; $7ca8: $00
	ld   [$0007], sp                                 ; $7ca9: $08 $07 $00
	jr   @+$09                                       ; $7cac: $18 $07

	ld   h, a                                        ; $7cae: $67
	rlca                                             ; $7caf: $07
	ld   b, a                                        ; $7cb0: $47
	rra                                              ; $7cb1: $1f
	ld   e, a                                        ; $7cb2: $5f
	add  b                                           ; $7cb3: $80
	ld   a, $80                                      ; $7cb4: $3e $80
	dec  a                                           ; $7cb6: $3d
	add  b                                           ; $7cb7: $80
	dec  [hl]                                        ; $7cb8: $35
	dec  bc                                          ; $7cb9: $0b
	ld   sp, $0d35                                   ; $7cba: $31 $35 $0d
	add  a                                           ; $7cbd: $87
	ld   c, $04                                      ; $7cbe: $0e $04
	ld   l, [hl]                                     ; $7cc0: $6e
	ld   l, e                                        ; $7cc1: $6b
	ld   bc, $00f8                                   ; $7cc2: $01 $f8 $00
	rlca                                             ; $7cc5: $07
	add  e                                           ; $7cc6: $83
	nop                                              ; $7cc7: $00
	ld   b, $60                                      ; $7cc8: $06 $60
	nop                                              ; $7cca: $00
	sbc  b                                           ; $7ccb: $98
	ld   h, b                                        ; $7ccc: $60
	ld   h, h                                        ; $7ccd: $64
	ld   a, b                                        ; $7cce: $78
	ld   a, d                                        ; $7ccf: $7a
	add  b                                           ; $7cd0: $80
	db   $fc                                         ; $7cd1: $fc
	add  b                                           ; $7cd2: $80
	db   $f4                                         ; $7cd3: $f4
	add  b                                           ; $7cd4: $80
	cp   b                                           ; $7cd5: $b8
	add  b                                           ; $7cd6: $80
	xor  b                                           ; $7cd7: $a8
	dec  bc                                          ; $7cd8: $0b
	adc  h                                           ; $7cd9: $8c
	xor  h                                           ; $7cda: $ac
	ld   [hl], b                                     ; $7cdb: $70
	ld   hl, $2070                                   ; $7cdc: $21 $70 $20
	halt                                             ; $7cdf: $76
	sub  $80                                         ; $7ce0: $d6 $80
	rra                                              ; $7ce2: $1f
	nop                                              ; $7ce3: $00
	ldh  [$83], a                                    ; $7ce4: $e0 $83
	nop                                              ; $7ce6: $00
	ld   [$0007], sp                                 ; $7ce7: $08 $07 $00
	jr   @+$09                                       ; $7cea: $18 $07

	ld   h, a                                        ; $7cec: $67
	rlca                                             ; $7ced: $07
	ld   b, a                                        ; $7cee: $47
	rra                                              ; $7cef: $1f
	ld   e, a                                        ; $7cf0: $5f
	add  b                                           ; $7cf1: $80
	ld   a, $80                                      ; $7cf2: $3e $80
	dec  a                                           ; $7cf4: $3d
	add  b                                           ; $7cf5: $80
	dec  [hl]                                        ; $7cf6: $35
	dec  bc                                          ; $7cf7: $0b
	ld   sp, $0d35                                   ; $7cf8: $31 $35 $0d
	add  a                                           ; $7cfb: $87
	ld   c, $04                                      ; $7cfc: $0e $04
	ld   l, [hl]                                     ; $7cfe: $6e
	ld   l, e                                        ; $7cff: $6b
	ld   bc, $00f8                                   ; $7d00: $01 $f8 $00
	rlca                                             ; $7d03: $07
	add  e                                           ; $7d04: $83
	nop                                              ; $7d05: $00
	ld   b, $60                                      ; $7d06: $06 $60
	nop                                              ; $7d08: $00
	sbc  b                                           ; $7d09: $98
	ld   h, b                                        ; $7d0a: $60
	ld   h, h                                        ; $7d0b: $64
	ld   a, b                                        ; $7d0c: $78
	ld   a, d                                        ; $7d0d: $7a
	add  b                                           ; $7d0e: $80
	db   $fc                                         ; $7d0f: $fc
	add  b                                           ; $7d10: $80
	db   $f4                                         ; $7d11: $f4
	add  b                                           ; $7d12: $80
	cp   b                                           ; $7d13: $b8
	add  b                                           ; $7d14: $80
	xor  b                                           ; $7d15: $a8
	dec  bc                                          ; $7d16: $0b
	adc  h                                           ; $7d17: $8c
	xor  h                                           ; $7d18: $ac
	ld   [hl], b                                     ; $7d19: $70
	ld   hl, $2070                                   ; $7d1a: $21 $70 $20
	halt                                             ; $7d1d: $76
	sub  $80                                         ; $7d1e: $d6 $80
	rra                                              ; $7d20: $1f
	nop                                              ; $7d21: $00
	ldh  [$83], a                                    ; $7d22: $e0 $83
	nop                                              ; $7d24: $00
	rrca                                             ; $7d25: $0f
	rra                                              ; $7d26: $1f
	nop                                              ; $7d27: $00
	db   $10                                         ; $7d28: $10
	rlca                                             ; $7d29: $07
	scf                                              ; $7d2a: $37
	rrca                                             ; $7d2b: $0f
	ld   c, a                                        ; $7d2c: $4f
	ccf                                              ; $7d2d: $3f
	cp   a                                           ; $7d2e: $bf
	dec  e                                           ; $7d2f: $1d
	sbc  l                                           ; $7d30: $9d
	add  hl, sp                                      ; $7d31: $39
	ccf                                              ; $7d32: $3f
	ld   [hl], $3e                                   ; $7d33: $36 $3e
	ld   l, $80                                      ; $7d35: $2e $80
	ld   hl, $2980                                   ; $7d37: $21 $80 $29
	add  b                                           ; $7d3a: $80
	cpl                                              ; $7d3b: $2f
	inc  b                                           ; $7d3c: $04
	ld   [hl], a                                     ; $7d3d: $77
	rlca                                             ; $7d3e: $07
	ld   [$2700], sp                                 ; $7d3f: $08 $00 $27
	add  e                                           ; $7d42: $83
	nop                                              ; $7d43: $00
	ld   a, [bc]                                     ; $7d44: $0a
	or   b                                           ; $7d45: $b0
	nop                                              ; $7d46: $00
	ld   c, b                                        ; $7d47: $48
	or   b                                           ; $7d48: $b0
	or   h                                           ; $7d49: $b4
	ld   hl, sp-$06                                  ; $7d4a: $f8 $fa
	cp   h                                           ; $7d4c: $bc
	cp   l                                           ; $7d4d: $bd
	jr   jr_032_7d69                                 ; $7d4e: $18 $19

	add  b                                           ; $7d50: $80
	inc  e                                           ; $7d51: $1c
	dec  c                                           ; $7d52: $0d
	inc  c                                           ; $7d53: $0c
	db   $fc                                         ; $7d54: $fc
	db   $f4                                         ; $7d55: $f4
	add  h                                           ; $7d56: $84
	add  b                                           ; $7d57: $80
	sub  c                                           ; $7d58: $91
	sub  h                                           ; $7d59: $94
	push af                                          ; $7d5a: $f5
	db   $f4                                         ; $7d5b: $f4
	xor  $e0                                         ; $7d5c: $ee $e0
	stop                                             ; $7d5e: $10 $00
	db   $e4                                         ; $7d60: $e4
	add  e                                           ; $7d61: $83
	nop                                              ; $7d62: $00
	rrca                                             ; $7d63: $0f
	rra                                              ; $7d64: $1f
	nop                                              ; $7d65: $00
	db   $10                                         ; $7d66: $10
	rlca                                             ; $7d67: $07
	scf                                              ; $7d68: $37

jr_032_7d69:
	rrca                                             ; $7d69: $0f
	ld   c, a                                        ; $7d6a: $4f
	ccf                                              ; $7d6b: $3f
	cp   a                                           ; $7d6c: $bf
	dec  e                                           ; $7d6d: $1d
	sbc  l                                           ; $7d6e: $9d
	add  hl, sp                                      ; $7d6f: $39
	ccf                                              ; $7d70: $3f
	ld   [hl], $3e                                   ; $7d71: $36 $3e
	ld   l, $80                                      ; $7d73: $2e $80
	ld   hl, $2980                                   ; $7d75: $21 $80 $29
	add  b                                           ; $7d78: $80
	cpl                                              ; $7d79: $2f
	inc  b                                           ; $7d7a: $04
	halt                                             ; $7d7b: $76
	ld   b, $08                                      ; $7d7c: $06 $08
	nop                                              ; $7d7e: $00
	daa                                              ; $7d7f: $27
	add  e                                           ; $7d80: $83
	nop                                              ; $7d81: $00
	ld   a, [bc]                                     ; $7d82: $0a
	or   b                                           ; $7d83: $b0
	nop                                              ; $7d84: $00
	ld   c, b                                        ; $7d85: $48
	or   b                                           ; $7d86: $b0
	or   h                                           ; $7d87: $b4
	ld   hl, sp-$06                                  ; $7d88: $f8 $fa
	cp   h                                           ; $7d8a: $bc
	cp   l                                           ; $7d8b: $bd
	jr   jr_032_7da7                                 ; $7d8c: $18 $19

	add  b                                           ; $7d8e: $80
	inc  e                                           ; $7d8f: $1c
	dec  c                                           ; $7d90: $0d
	inc  c                                           ; $7d91: $0c
	db   $fc                                         ; $7d92: $fc
	db   $f4                                         ; $7d93: $f4
	add  h                                           ; $7d94: $84
	add  b                                           ; $7d95: $80
	sub  c                                           ; $7d96: $91
	sub  h                                           ; $7d97: $94
	push af                                          ; $7d98: $f5
	db   $f4                                         ; $7d99: $f4
	ld   l, [hl]                                     ; $7d9a: $6e
	ld   h, b                                        ; $7d9b: $60
	stop                                             ; $7d9c: $10 $00
	db   $e4                                         ; $7d9e: $e4
	add  e                                           ; $7d9f: $83
	nop                                              ; $7da0: $00
	ld   b, $0f                                      ; $7da1: $06 $0f
	nop                                              ; $7da3: $00
	db   $10                                         ; $7da4: $10
	rrca                                             ; $7da5: $0f
	cpl                                              ; $7da6: $2f

jr_032_7da7:
	rlca                                             ; $7da7: $07
	ld   b, a                                        ; $7da8: $47
	add  c                                           ; $7da9: $81
	ccf                                              ; $7daa: $3f
	rlca                                             ; $7dab: $07
	cp   a                                           ; $7dac: $bf
	dec  e                                           ; $7dad: $1d
	sbc  l                                           ; $7dae: $9d
	add  hl, sp                                      ; $7daf: $39
	ccf                                              ; $7db0: $3f
	ld   [hl], $3e                                   ; $7db1: $36 $3e
	ld   l, $80                                      ; $7db3: $2e $80
	ld   hl, $6906                                   ; $7db5: $21 $06 $69
	add  hl, bc                                      ; $7db8: $09
	rla                                              ; $7db9: $17
	rlca                                             ; $7dba: $07
	ld   [$2700], sp                                 ; $7dbb: $08 $00 $27
	add  e                                           ; $7dbe: $83
	nop                                              ; $7dbf: $00
	inc  b                                           ; $7dc0: $04
	or   b                                           ; $7dc1: $b0
	nop                                              ; $7dc2: $00
	ld   c, b                                        ; $7dc3: $48
	or   b                                           ; $7dc4: $b0
	or   h                                           ; $7dc5: $b4
	add  b                                           ; $7dc6: $80
	cp   b                                           ; $7dc7: $b8
	dec  b                                           ; $7dc8: $05
	ld   hl, sp-$06                                  ; $7dc9: $f8 $fa
	cp   h                                           ; $7dcb: $bc
	cp   l                                           ; $7dcc: $bd
	jr   jr_032_7de8                                 ; $7dcd: $18 $19

	add  b                                           ; $7dcf: $80
	inc  e                                           ; $7dd0: $1c
	dec  bc                                          ; $7dd1: $0b
	inc  c                                           ; $7dd2: $0c
	db   $fd                                         ; $7dd3: $fd
	db   $f4                                         ; $7dd4: $f4
	add  l                                           ; $7dd5: $85
	add  b                                           ; $7dd6: $80
	sub  d                                           ; $7dd7: $92
	sub  b                                           ; $7dd8: $90
	add  sp, -$20                                    ; $7dd9: $e8 $e0
	stop                                             ; $7ddb: $10 $00
	db   $e4                                         ; $7ddd: $e4
	add  e                                           ; $7dde: $83
	nop                                              ; $7ddf: $00
	ld   b, $0f                                      ; $7de0: $06 $0f
	nop                                              ; $7de2: $00
	db   $10                                         ; $7de3: $10
	rrca                                             ; $7de4: $0f
	cpl                                              ; $7de5: $2f
	rlca                                             ; $7de6: $07
	ld   b, a                                        ; $7de7: $47

jr_032_7de8:
	add  c                                           ; $7de8: $81
	ccf                                              ; $7de9: $3f
	rlca                                             ; $7dea: $07
	cp   a                                           ; $7deb: $bf
	dec  e                                           ; $7dec: $1d
	sbc  l                                           ; $7ded: $9d
	add  hl, sp                                      ; $7dee: $39
	ccf                                              ; $7def: $3f
	ld   [hl], $3e                                   ; $7df0: $36 $3e
	ld   l, $80                                      ; $7df2: $2e $80
	cpl                                              ; $7df4: $2f
	ld   b, $69                                      ; $7df5: $06 $69
	add  hl, bc                                      ; $7df7: $09
	rla                                              ; $7df8: $17
	rlca                                             ; $7df9: $07
	ld   [$2700], sp                                 ; $7dfa: $08 $00 $27
	add  e                                           ; $7dfd: $83
	nop                                              ; $7dfe: $00
	inc  b                                           ; $7dff: $04
	or   b                                           ; $7e00: $b0
	nop                                              ; $7e01: $00
	ld   c, b                                        ; $7e02: $48
	or   b                                           ; $7e03: $b0
	or   h                                           ; $7e04: $b4
	add  b                                           ; $7e05: $80
	cp   b                                           ; $7e06: $b8
	dec  b                                           ; $7e07: $05
	ld   hl, sp-$06                                  ; $7e08: $f8 $fa
	cp   h                                           ; $7e0a: $bc
	cp   l                                           ; $7e0b: $bd
	jr   jr_032_7e27                                 ; $7e0c: $18 $19

	add  b                                           ; $7e0e: $80
	inc  e                                           ; $7e0f: $1c
	dec  bc                                          ; $7e10: $0b
	inc  c                                           ; $7e11: $0c
	db   $fd                                         ; $7e12: $fd
	db   $f4                                         ; $7e13: $f4
	push af                                          ; $7e14: $f5
	ldh  a, [$92]                                    ; $7e15: $f0 $92
	sub  b                                           ; $7e17: $90
	add  sp, -$20                                    ; $7e18: $e8 $e0
	stop                                             ; $7e1a: $10 $00
	db   $e4                                         ; $7e1c: $e4
	rst  $38                                         ; $7e1d: $ff
	nop                                              ; $7e1e: $00
	rst  $38                                         ; $7e1f: $ff
	nop                                              ; $7e20: $00
	add  c                                           ; $7e21: $81
	nop                                              ; $7e22: $00
	ld   a, [bc]                                     ; $7e23: $0a
	inc  bc                                          ; $7e24: $03
	nop                                              ; $7e25: $00
	rrca                                             ; $7e26: $0f

jr_032_7e27:
	inc  bc                                          ; $7e27: $03
	rra                                              ; $7e28: $1f
	rrca                                             ; $7e29: $0f
	ld   a, $1f                                      ; $7e2a: $3e $1f
	dec  e                                           ; $7e2c: $1d
	rra                                              ; $7e2d: $1f
	ld   a, a                                        ; $7e2e: $7f
	add  c                                           ; $7e2f: $81
	ccf                                              ; $7e30: $3f
	nop                                              ; $7e31: $00
	dec  a                                           ; $7e32: $3d
	add  c                                           ; $7e33: $81
	ccf                                              ; $7e34: $3f
	ld   a, [bc]                                     ; $7e35: $0a
	ld   e, [hl]                                     ; $7e36: $5e
	rra                                              ; $7e37: $1f
	ld   e, $1f                                      ; $7e38: $1e $1f
	cpl                                              ; $7e3a: $2f
	rrca                                             ; $7e3b: $0f
	ld   [de], a                                     ; $7e3c: $12
	inc  bc                                          ; $7e3d: $03
	inc  c                                           ; $7e3e: $0c
	nop                                              ; $7e3f: $00
	inc  bc                                          ; $7e40: $03
	add  c                                           ; $7e41: $81
	nop                                              ; $7e42: $00
	rlca                                             ; $7e43: $07
	ret  nz                                          ; $7e44: $c0

	nop                                              ; $7e45: $00
	ldh  a, [$c0]                                    ; $7e46: $f0 $c0
	ld   hl, sp-$10                                  ; $7e48: $f8 $f0
	ld   a, h                                        ; $7e4a: $7c
	ld   hl, sp-$80                                  ; $7e4b: $f8 $80
	cp   b                                           ; $7e4d: $b8
	nop                                              ; $7e4e: $00
	cp   [hl]                                        ; $7e4f: $be
	add  c                                           ; $7e50: $81
	cp   h                                           ; $7e51: $bc
	nop                                              ; $7e52: $00
	db   $fc                                         ; $7e53: $fc
	add  c                                           ; $7e54: $81
	ld   a, h                                        ; $7e55: $7c
	ld   bc, $f8fa                                   ; $7e56: $01 $fa $f8
	add  b                                           ; $7e59: $80
	ld   a, b                                        ; $7e5a: $78
	ld   b, $74                                      ; $7e5b: $06 $74
	ld   [hl], b                                     ; $7e5d: $70
	ret  z                                           ; $7e5e: $c8

	ret  nz                                          ; $7e5f: $c0

	jr   nc, jr_032_7e62                             ; $7e60: $30 $00

jr_032_7e62:
	ret  nz                                          ; $7e62: $c0

	add  c                                           ; $7e63: $81
	nop                                              ; $7e64: $00
	ld   a, [bc]                                     ; $7e65: $0a
	inc  bc                                          ; $7e66: $03
	nop                                              ; $7e67: $00
	rrca                                             ; $7e68: $0f
	inc  bc                                          ; $7e69: $03
	rra                                              ; $7e6a: $1f
	rrca                                             ; $7e6b: $0f
	ccf                                              ; $7e6c: $3f
	rra                                              ; $7e6d: $1f
	ld   e, $1f                                      ; $7e6e: $1e $1f
	ld   a, l                                        ; $7e70: $7d
	add  e                                           ; $7e71: $83
	ccf                                              ; $7e72: $3f
	inc  c                                           ; $7e73: $0c
	dec  a                                           ; $7e74: $3d
	ccf                                              ; $7e75: $3f
	ld   e, a                                        ; $7e76: $5f
	rra                                              ; $7e77: $1f
	ld   e, $1f                                      ; $7e78: $1e $1f
	ld   l, $0f                                      ; $7e7a: $2e $0f
	inc  de                                          ; $7e7c: $13
	inc  bc                                          ; $7e7d: $03
	dec  c                                           ; $7e7e: $0d
	nop                                              ; $7e7f: $00
	inc  bc                                          ; $7e80: $03
	add  c                                           ; $7e81: $81
	nop                                              ; $7e82: $00
	ld   a, [bc]                                     ; $7e83: $0a
	ret  nz                                          ; $7e84: $c0

	nop                                              ; $7e85: $00
	ldh  a, [$c0]                                    ; $7e86: $f0 $c0
	ld   hl, sp-$10                                  ; $7e88: $f8 $f0
	db   $fc                                         ; $7e8a: $fc
	ld   hl, sp+$78                                  ; $7e8b: $f8 $78
	ld   hl, sp-$42                                  ; $7e8d: $f8 $be
	add  e                                           ; $7e8f: $83
	cp   h                                           ; $7e90: $bc
	inc  bc                                          ; $7e91: $03
	db   $fc                                         ; $7e92: $fc
	ld   a, h                                        ; $7e93: $7c
	ld   a, d                                        ; $7e94: $7a
	ld   a, b                                        ; $7e95: $78
	add  b                                           ; $7e96: $80
	ld   hl, sp+$06                                  ; $7e97: $f8 $06
	ld   [hl], h                                     ; $7e99: $74
	ld   [hl], b                                     ; $7e9a: $70
	ld   c, b                                        ; $7e9b: $48
	ld   b, b                                        ; $7e9c: $40
	jr   nc, jr_032_7e9f                             ; $7e9d: $30 $00

jr_032_7e9f:
	ret  nz                                          ; $7e9f: $c0

	add  c                                           ; $7ea0: $81
	nop                                              ; $7ea1: $00
	ld   b, $03                                      ; $7ea2: $06 $03
	nop                                              ; $7ea4: $00
	ld   c, $03                                      ; $7ea5: $0e $03
	dec  e                                           ; $7ea7: $1d
	rrca                                             ; $7ea8: $0f
	ccf                                              ; $7ea9: $3f
	add  c                                           ; $7eaa: $81
	rra                                              ; $7eab: $1f
	nop                                              ; $7eac: $00
	ld   a, l                                        ; $7ead: $7d
	add  e                                           ; $7eae: $83
	ccf                                              ; $7eaf: $3f
	ld   [bc], a                                     ; $7eb0: $02
	ld   a, $3f                                      ; $7eb1: $3e $3f
	ld   e, [hl]                                     ; $7eb3: $5e
	add  c                                           ; $7eb4: $81
	rra                                              ; $7eb5: $1f
	ld   b, $2e                                      ; $7eb6: $06 $2e
	rrca                                             ; $7eb8: $0f
	inc  de                                          ; $7eb9: $13
	inc  bc                                          ; $7eba: $03
	inc  c                                           ; $7ebb: $0c
	nop                                              ; $7ebc: $00
	inc  bc                                          ; $7ebd: $03
	add  c                                           ; $7ebe: $81
	nop                                              ; $7ebf: $00
	ld   b, $c0                                      ; $7ec0: $06 $c0
	nop                                              ; $7ec2: $00
	ld   [hl], b                                     ; $7ec3: $70
	ret  nz                                          ; $7ec4: $c0

	cp   b                                           ; $7ec5: $b8
	or   b                                           ; $7ec6: $b0
	cp   h                                           ; $7ec7: $bc
	add  c                                           ; $7ec8: $81
	cp   b                                           ; $7ec9: $b8
	nop                                              ; $7eca: $00
	cp   $83                                         ; $7ecb: $fe $83
	ld   a, h                                        ; $7ecd: $7c
	add  b                                           ; $7ece: $80
	db   $fc                                         ; $7ecf: $fc
	nop                                              ; $7ed0: $00
	ld   a, d                                        ; $7ed1: $7a
	add  c                                           ; $7ed2: $81
	ld   a, b                                        ; $7ed3: $78
	ld   b, $f4                                      ; $7ed4: $06 $f4
	ldh  a, [$c8]                                    ; $7ed6: $f0 $c8
	ret  nz                                          ; $7ed8: $c0

	jr   nc, jr_032_7edb                             ; $7ed9: $30 $00

jr_032_7edb:
	ret  nz                                          ; $7edb: $c0

	cp   a                                           ; $7edc: $bf
	nop                                              ; $7edd: $00
	ld   [$0808], sp                                 ; $7ede: $08 $08 $08
	ld   [$0808], sp                                 ; $7ee1: $08 $08 $08
	ld   [$0808], sp                                 ; $7ee4: $08 $08 $08
	ld   [$0808], sp                                 ; $7ee7: $08 $08 $08
	ld   [$0808], sp                                 ; $7eea: $08 $08 $08
	ld   [$0808], sp                                 ; $7eed: $08 $08 $08
	ld   [$0808], sp                                 ; $7ef0: $08 $08 $08
	ld   [$0808], sp                                 ; $7ef3: $08 $08 $08
	ld   [$0808], sp                                 ; $7ef6: $08 $08 $08
	ld   [$0808], sp                                 ; $7ef9: $08 $08 $08
	ld   [$0808], sp                                 ; $7efc: $08 $08 $08
	ld   [$0808], sp                                 ; $7eff: $08 $08 $08
	ld   [$0808], sp                                 ; $7f02: $08 $08 $08
	ld   [$0808], sp                                 ; $7f05: $08 $08 $08
	ld   [$0808], sp                                 ; $7f08: $08 $08 $08
	ld   [$0808], sp                                 ; $7f0b: $08 $08 $08
	ld   [$0808], sp                                 ; $7f0e: $08 $08 $08
	ld   [$0808], sp                                 ; $7f11: $08 $08 $08
	ld   [$0808], sp                                 ; $7f14: $08 $08 $08
	ld   [$0808], sp                                 ; $7f17: $08 $08 $08
	ld   [$0808], sp                                 ; $7f1a: $08 $08 $08
	ld   [$0808], sp                                 ; $7f1d: $08 $08 $08
	ld   [$0808], sp                                 ; $7f20: $08 $08 $08
	ld   [$0808], sp                                 ; $7f23: $08 $08 $08
	ld   [$0808], sp                                 ; $7f26: $08 $08 $08
	ld   [$0808], sp                                 ; $7f29: $08 $08 $08
	ld   [$0808], sp                                 ; $7f2c: $08 $08 $08
	ld   [$0808], sp                                 ; $7f2f: $08 $08 $08
	sub  [hl]                                        ; $7f32: $96
	sub  [hl]                                        ; $7f33: $96
	sub  [hl]                                        ; $7f34: $96
	sub  [hl]                                        ; $7f35: $96
	sub  [hl]                                        ; $7f36: $96
	sub  [hl]                                        ; $7f37: $96
	sub  [hl]                                        ; $7f38: $96
	sub  [hl]                                        ; $7f39: $96
	sub  [hl]                                        ; $7f3a: $96
	sub  [hl]                                        ; $7f3b: $96
	sub  [hl]                                        ; $7f3c: $96
	sub  [hl]                                        ; $7f3d: $96
	sub  [hl]                                        ; $7f3e: $96
	sub  [hl]                                        ; $7f3f: $96
	sub  [hl]                                        ; $7f40: $96
	sub  [hl]                                        ; $7f41: $96
	sub  [hl]                                        ; $7f42: $96
	sub  [hl]                                        ; $7f43: $96
	sub  [hl]                                        ; $7f44: $96
	sub  [hl]                                        ; $7f45: $96
	sub  [hl]                                        ; $7f46: $96
	sub  [hl]                                        ; $7f47: $96
	sub  [hl]                                        ; $7f48: $96
	sub  [hl]                                        ; $7f49: $96
	sub  [hl]                                        ; $7f4a: $96
	sub  [hl]                                        ; $7f4b: $96
	sub  [hl]                                        ; $7f4c: $96
	sub  [hl]                                        ; $7f4d: $96
	sbc  h                                           ; $7f4e: $9c
	sbc  l                                           ; $7f4f: $9d
	sbc  [hl]                                        ; $7f50: $9e
	sbc  a                                           ; $7f51: $9f
	sub  [hl]                                        ; $7f52: $96
	add  b                                           ; $7f53: $80
	add  d                                           ; $7f54: $82
	add  h                                           ; $7f55: $84
	add  [hl]                                        ; $7f56: $86
	sub  [hl]                                        ; $7f57: $96
	or   b                                           ; $7f58: $b0
	or   b                                           ; $7f59: $b0
	sub  [hl]                                        ; $7f5a: $96
	sub  [hl]                                        ; $7f5b: $96
	and  b                                           ; $7f5c: $a0
	and  c                                           ; $7f5d: $a1
	and  d                                           ; $7f5e: $a2
	and  e                                           ; $7f5f: $a3
	sub  [hl]                                        ; $7f60: $96
	add  c                                           ; $7f61: $81
	add  e                                           ; $7f62: $83
	add  l                                           ; $7f63: $85
	add  a                                           ; $7f64: $87
	sub  [hl]                                        ; $7f65: $96
	or   c                                           ; $7f66: $b1
	or   c                                           ; $7f67: $b1
	sub  [hl]                                        ; $7f68: $96
	sub  [hl]                                        ; $7f69: $96
	sub  [hl]                                        ; $7f6a: $96
	sub  [hl]                                        ; $7f6b: $96
	sub  [hl]                                        ; $7f6c: $96
	sub  [hl]                                        ; $7f6d: $96
	sub  [hl]                                        ; $7f6e: $96
	sub  [hl]                                        ; $7f6f: $96
	sub  [hl]                                        ; $7f70: $96
	sub  [hl]                                        ; $7f71: $96
	sub  [hl]                                        ; $7f72: $96
	sub  [hl]                                        ; $7f73: $96
	sub  [hl]                                        ; $7f74: $96
	sub  [hl]                                        ; $7f75: $96
	sub  [hl]                                        ; $7f76: $96
	sub  [hl]                                        ; $7f77: $96
	sub  [hl]                                        ; $7f78: $96
	sub  [hl]                                        ; $7f79: $96
	sub  [hl]                                        ; $7f7a: $96
	sub  [hl]                                        ; $7f7b: $96
	sub  [hl]                                        ; $7f7c: $96
	sub  [hl]                                        ; $7f7d: $96
	xor  d                                           ; $7f7e: $aa
	xor  e                                           ; $7f7f: $ab
	xor  h                                           ; $7f80: $ac
	sub  [hl]                                        ; $7f81: $96
	xor  l                                           ; $7f82: $ad
	xor  [hl]                                        ; $7f83: $ae
	xor  a                                           ; $7f84: $af
	sub  [hl]                                        ; $7f85: $96


Palettes_Jupiter::
	db $ff, $7f, $b4, $6a, $0d, $6a, $67, $69
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	db $ff, $7f, $ff, $7f, $ff, $7f, $ff, $7f
	db $ff, $7f, $7b, $6f, $39, $67, $f7, $5e
	db $ff, $7f, $39, $67, $f7, $5e, $b5, $56
	db $ff, $7f, $f7, $5e, $b5, $56, $73, $4e
	db $ff, $7f, $b5, $56, $73, $4e, $31, $46



	db $ff                                   ; $7fe6: $ff
	ld   a, a                                        ; $7fe7: $7f
	nop                                              ; $7fe8: $00
	nop                                              ; $7fe9: $00
	nop                                              ; $7fea: $00
	nop                                              ; $7feb: $00
	ld   b, e                                        ; $7fec: $43
	db   $10                                         ; $7fed: $10
	rst  $38                                         ; $7fee: $ff
	ld   a, a                                        ; $7fef: $7f
	ld   e, a                                        ; $7ff0: $5f
	ld   c, $05                                      ; $7ff1: $0e $05
	add  hl, hl                                      ; $7ff3: $29
	ld   b, e                                        ; $7ff4: $43
	db   $10                                         ; $7ff5: $10


BGPalettes_RedCompany::
	db $ff, $7f, $3f, $46, $7f, $2d, $1f, $00
