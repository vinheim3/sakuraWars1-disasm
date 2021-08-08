; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $08d", ROMX[$4000], BANK[$8d]

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
	ld   bc, $0101                                   ; $4016: $01 $01 $01
	ld   bc, $0000                                   ; $4019: $01 $00 $00
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
	inc  a                                           ; $4026: $3c
	inc  a                                           ; $4027: $3c
	ld   a, [hl]                                     ; $4028: $7e
	ld   b, d                                        ; $4029: $42
	ld   a, [hl]                                     ; $402a: $7e
	ld   h, d                                        ; $402b: $62
	cp   $c2                                         ; $402c: $fe $c2
	inc  a                                           ; $402e: $3c
	inc  a                                           ; $402f: $3c
	sbc  b                                           ; $4030: $98
	sbc  b                                           ; $4031: $98
	rst  $38                                         ; $4032: $ff
	rst  $20                                         ; $4033: $e7
	dec  a                                           ; $4034: $3d
	dec  h                                           ; $4035: $25
	inc  a                                           ; $4036: $3c
	inc  a                                           ; $4037: $3c
	rst  $20                                         ; $4038: $e7
	rst  $20                                         ; $4039: $e7
	adc  $ce                                         ; $403a: $ce $ce
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
	inc  a                                           ; $4084: $3c
	inc  a                                           ; $4085: $3c
	ld   a, [hl]                                     ; $4086: $7e
	ld   b, d                                        ; $4087: $42
	ld   a, [hl]                                     ; $4088: $7e
	ld   h, d                                        ; $4089: $62
	cp   $c2                                         ; $408a: $fe $c2
	inc  a                                           ; $408c: $3c
	inc  a                                           ; $408d: $3c
	jr   jr_08d_40a8                                 ; $408e: $18 $18

	inc  a                                           ; $4090: $3c
	inc  h                                           ; $4091: $24
	inc  a                                           ; $4092: $3c
	inc  h                                           ; $4093: $24
	inc  a                                           ; $4094: $3c
	inc  a                                           ; $4095: $3c
	jr   jr_08d_40b0                                 ; $4096: $18 $18

	inc  a                                           ; $4098: $3c
	inc  a                                           ; $4099: $3c
	ld   a, h                                        ; $409a: $7c
	ld   a, h                                        ; $409b: $7c
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

jr_08d_40a8:
	nop                                              ; $40a8: $00
	nop                                              ; $40a9: $00
	nop                                              ; $40aa: $00
	nop                                              ; $40ab: $00
	nop                                              ; $40ac: $00
	nop                                              ; $40ad: $00
	nop                                              ; $40ae: $00
	nop                                              ; $40af: $00

jr_08d_40b0:
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

Jump_08d_40bf:
	nop                                              ; $40bf: $00
	nop                                              ; $40c0: $00
	nop                                              ; $40c1: $00
	nop                                              ; $40c2: $00
	nop                                              ; $40c3: $00
	nop                                              ; $40c4: $00
	nop                                              ; $40c5: $00
	nop                                              ; $40c6: $00
	nop                                              ; $40c7: $00
	nop                                              ; $40c8: $00
	nop                                              ; $40c9: $00
	nop                                              ; $40ca: $00
	nop                                              ; $40cb: $00
	nop                                              ; $40cc: $00
	nop                                              ; $40cd: $00
	nop                                              ; $40ce: $00
	nop                                              ; $40cf: $00
	nop                                              ; $40d0: $00
	nop                                              ; $40d1: $00
	nop                                              ; $40d2: $00
	nop                                              ; $40d3: $00
	nop                                              ; $40d4: $00
	nop                                              ; $40d5: $00
	nop                                              ; $40d6: $00
	nop                                              ; $40d7: $00
	nop                                              ; $40d8: $00
	nop                                              ; $40d9: $00
	nop                                              ; $40da: $00
	nop                                              ; $40db: $00
	nop                                              ; $40dc: $00
	nop                                              ; $40dd: $00
	nop                                              ; $40de: $00
	nop                                              ; $40df: $00
	nop                                              ; $40e0: $00
	nop                                              ; $40e1: $00
	nop                                              ; $40e2: $00
	nop                                              ; $40e3: $00
	inc  a                                           ; $40e4: $3c
	inc  a                                           ; $40e5: $3c
	ld   a, [hl]                                     ; $40e6: $7e
	ld   b, d                                        ; $40e7: $42
	ld   a, [hl]                                     ; $40e8: $7e
	ld   h, d                                        ; $40e9: $62
	cp   $c2                                         ; $40ea: $fe $c2
	inc  a                                           ; $40ec: $3c
	inc  a                                           ; $40ed: $3c
	jr   jr_08d_4108                                 ; $40ee: $18 $18

	inc  a                                           ; $40f0: $3c
	inc  h                                           ; $40f1: $24
	inc  a                                           ; $40f2: $3c
	inc  h                                           ; $40f3: $24
	inc  a                                           ; $40f4: $3c
	inc  a                                           ; $40f5: $3c
	jr   jr_08d_4110                                 ; $40f6: $18 $18

	inc  a                                           ; $40f8: $3c
	inc  a                                           ; $40f9: $3c
	ld   a, h                                        ; $40fa: $7c
	ld   a, h                                        ; $40fb: $7c
	nop                                              ; $40fc: $00
	nop                                              ; $40fd: $00
	nop                                              ; $40fe: $00

Jump_08d_40ff:
	nop                                              ; $40ff: $00
	nop                                              ; $4100: $00
	nop                                              ; $4101: $00
	nop                                              ; $4102: $00
	nop                                              ; $4103: $00
	nop                                              ; $4104: $00
	nop                                              ; $4105: $00
	nop                                              ; $4106: $00
	nop                                              ; $4107: $00

jr_08d_4108:
	nop                                              ; $4108: $00
	nop                                              ; $4109: $00
	nop                                              ; $410a: $00
	nop                                              ; $410b: $00
	nop                                              ; $410c: $00
	nop                                              ; $410d: $00
	nop                                              ; $410e: $00
	nop                                              ; $410f: $00

jr_08d_4110:
	nop                                              ; $4110: $00
	nop                                              ; $4111: $00
	nop                                              ; $4112: $00
	nop                                              ; $4113: $00
	nop                                              ; $4114: $00
	nop                                              ; $4115: $00
	nop                                              ; $4116: $00
	nop                                              ; $4117: $00
	nop                                              ; $4118: $00
	nop                                              ; $4119: $00
	nop                                              ; $411a: $00
	nop                                              ; $411b: $00
	nop                                              ; $411c: $00
	nop                                              ; $411d: $00
	nop                                              ; $411e: $00
	nop                                              ; $411f: $00
	nop                                              ; $4120: $00
	nop                                              ; $4121: $00
	nop                                              ; $4122: $00
	nop                                              ; $4123: $00
	nop                                              ; $4124: $00
	nop                                              ; $4125: $00
	nop                                              ; $4126: $00
	nop                                              ; $4127: $00
	nop                                              ; $4128: $00
	nop                                              ; $4129: $00
	nop                                              ; $412a: $00
	nop                                              ; $412b: $00
	nop                                              ; $412c: $00
	nop                                              ; $412d: $00
	nop                                              ; $412e: $00
	nop                                              ; $412f: $00
	nop                                              ; $4130: $00
	ld   bc, $0100                                   ; $4131: $01 $00 $01
	nop                                              ; $4134: $00

jr_08d_4135:
	inc  bc                                          ; $4135: $03
	nop                                              ; $4136: $00

jr_08d_4137:
	inc  bc                                          ; $4137: $03
	inc  b                                           ; $4138: $04
	rlca                                             ; $4139: $07
	inc  bc                                          ; $413a: $03
	inc  bc                                          ; $413b: $03
	nop                                              ; $413c: $00
	nop                                              ; $413d: $00
	nop                                              ; $413e: $00
	nop                                              ; $413f: $00
	nop                                              ; $4140: $00
	nop                                              ; $4141: $00
	nop                                              ; $4142: $00
	nop                                              ; $4143: $00
	nop                                              ; $4144: $00
	nop                                              ; $4145: $00
	inc  e                                           ; $4146: $1c
	inc  e                                           ; $4147: $1c
	ld   [hl+], a                                    ; $4148: $22
	ld   [hl+], a                                    ; $4149: $22
	ld   h, e                                        ; $414a: $63
	ld   h, e                                        ; $414b: $63
	ld   h, e                                        ; $414c: $63
	ld   h, e                                        ; $414d: $63
	inc  e                                           ; $414e: $1c
	db   $dd                                         ; $414f: $dd
	jr   nz, jr_08d_4135                             ; $4150: $20 $e3

	jr   nz, jr_08d_4137                             ; $4152: $20 $e3

	ld   b, b                                        ; $4154: $40
	pop  bc                                          ; $4155: $c1

jr_08d_4156:
	add  b                                           ; $4156: $80
	add  b                                           ; $4157: $80

jr_08d_4158:
	add  b                                           ; $4158: $80
	add  b                                           ; $4159: $80
	nop                                              ; $415a: $00
	nop                                              ; $415b: $00
	nop                                              ; $415c: $00
	nop                                              ; $415d: $00
	nop                                              ; $415e: $00
	nop                                              ; $415f: $00
	nop                                              ; $4160: $00
	nop                                              ; $4161: $00
	nop                                              ; $4162: $00
	nop                                              ; $4163: $00
	nop                                              ; $4164: $00
	nop                                              ; $4165: $00
	nop                                              ; $4166: $00
	nop                                              ; $4167: $00
	nop                                              ; $4168: $00
	nop                                              ; $4169: $00
	nop                                              ; $416a: $00
	nop                                              ; $416b: $00
	nop                                              ; $416c: $00
	nop                                              ; $416d: $00
	add  b                                           ; $416e: $80
	add  b                                           ; $416f: $80
	ld   b, b                                        ; $4170: $40
	ret  nz                                          ; $4171: $c0

	ld   b, b                                        ; $4172: $40
	ret  nz                                          ; $4173: $c0

	jr   nz, jr_08d_4156                             ; $4174: $20 $e0

	jr   nz, jr_08d_4158                             ; $4176: $20 $e0

	db   $10                                         ; $4178: $10
	ldh  a, [rAUD4LEN]                               ; $4179: $f0 $20
	ld   h, b                                        ; $417b: $60
	nop                                              ; $417c: $00
	nop                                              ; $417d: $00
	nop                                              ; $417e: $00
	nop                                              ; $417f: $00
	nop                                              ; $4180: $00
	nop                                              ; $4181: $00
	nop                                              ; $4182: $00
	nop                                              ; $4183: $00
	nop                                              ; $4184: $00
	nop                                              ; $4185: $00
	nop                                              ; $4186: $00
	nop                                              ; $4187: $00
	nop                                              ; $4188: $00
	nop                                              ; $4189: $00
	nop                                              ; $418a: $00
	nop                                              ; $418b: $00
	nop                                              ; $418c: $00
	nop                                              ; $418d: $00
	nop                                              ; $418e: $00
	nop                                              ; $418f: $00
	nop                                              ; $4190: $00
	nop                                              ; $4191: $00
	nop                                              ; $4192: $00
	ld   bc, $0100                                   ; $4193: $01 $00 $01
	nop                                              ; $4196: $00

jr_08d_4197:
	inc  bc                                          ; $4197: $03
	ld   [bc], a                                     ; $4198: $02

jr_08d_4199:
	inc  bc                                          ; $4199: $03
	ld   bc, $0001                                   ; $419a: $01 $01 $00
	nop                                              ; $419d: $00
	nop                                              ; $419e: $00
	nop                                              ; $419f: $00
	nop                                              ; $41a0: $00
	nop                                              ; $41a1: $00
	nop                                              ; $41a2: $00
	nop                                              ; $41a3: $00
	nop                                              ; $41a4: $00
	nop                                              ; $41a5: $00
	inc  e                                           ; $41a6: $1c
	inc  e                                           ; $41a7: $1c
	ld   [hl+], a                                    ; $41a8: $22
	ld   [hl+], a                                    ; $41a9: $22
	ld   h, e                                        ; $41aa: $63
	ld   h, e                                        ; $41ab: $63
	ld   h, e                                        ; $41ac: $63
	ld   h, e                                        ; $41ad: $63
	inc  e                                           ; $41ae: $1c
	db   $dd                                         ; $41af: $dd
	jr   nz, @-$1b                                   ; $41b0: $20 $e3

	jr   nz, jr_08d_4197                             ; $41b2: $20 $e3

	jr   nz, jr_08d_4199                             ; $41b4: $20 $e3

	ld   b, b                                        ; $41b6: $40
	pop  bc                                          ; $41b7: $c1

jr_08d_41b8:
	ld   b, b                                        ; $41b8: $40
	pop  bc                                          ; $41b9: $c1

jr_08d_41ba:
	add  b                                           ; $41ba: $80
	add  b                                           ; $41bb: $80
	nop                                              ; $41bc: $00
	nop                                              ; $41bd: $00
	nop                                              ; $41be: $00
	nop                                              ; $41bf: $00
	nop                                              ; $41c0: $00
	nop                                              ; $41c1: $00
	nop                                              ; $41c2: $00
	nop                                              ; $41c3: $00
	nop                                              ; $41c4: $00
	nop                                              ; $41c5: $00
	nop                                              ; $41c6: $00
	nop                                              ; $41c7: $00
	nop                                              ; $41c8: $00
	nop                                              ; $41c9: $00
	nop                                              ; $41ca: $00
	nop                                              ; $41cb: $00
	nop                                              ; $41cc: $00
	nop                                              ; $41cd: $00
	add  b                                           ; $41ce: $80
	add  b                                           ; $41cf: $80
	add  b                                           ; $41d0: $80
	add  b                                           ; $41d1: $80
	ld   b, b                                        ; $41d2: $40
	ret  nz                                          ; $41d3: $c0

	ld   b, b                                        ; $41d4: $40
	ret  nz                                          ; $41d5: $c0

	jr   nz, jr_08d_41b8                             ; $41d6: $20 $e0

	jr   nz, jr_08d_41ba                             ; $41d8: $20 $e0

	ld   b, b                                        ; $41da: $40
	ret  nz                                          ; $41db: $c0

	nop                                              ; $41dc: $00
	nop                                              ; $41dd: $00
	nop                                              ; $41de: $00
	nop                                              ; $41df: $00
	nop                                              ; $41e0: $00
	nop                                              ; $41e1: $00
	nop                                              ; $41e2: $00
	nop                                              ; $41e3: $00
	nop                                              ; $41e4: $00
	nop                                              ; $41e5: $00
	nop                                              ; $41e6: $00
	nop                                              ; $41e7: $00
	nop                                              ; $41e8: $00
	nop                                              ; $41e9: $00
	nop                                              ; $41ea: $00
	nop                                              ; $41eb: $00
	nop                                              ; $41ec: $00
	nop                                              ; $41ed: $00
	nop                                              ; $41ee: $00
	nop                                              ; $41ef: $00
	nop                                              ; $41f0: $00
	nop                                              ; $41f1: $00
	nop                                              ; $41f2: $00
	nop                                              ; $41f3: $00
	nop                                              ; $41f4: $00
	nop                                              ; $41f5: $00
	nop                                              ; $41f6: $00
	nop                                              ; $41f7: $00
	nop                                              ; $41f8: $00
	nop                                              ; $41f9: $00
	nop                                              ; $41fa: $00
	nop                                              ; $41fb: $00
	nop                                              ; $41fc: $00
	nop                                              ; $41fd: $00
	nop                                              ; $41fe: $00
	nop                                              ; $41ff: $00
	nop                                              ; $4200: $00
	nop                                              ; $4201: $00
	nop                                              ; $4202: $00
	nop                                              ; $4203: $00
	inc  e                                           ; $4204: $1c
	inc  e                                           ; $4205: $1c
	ld   [hl+], a                                    ; $4206: $22
	ld   [hl+], a                                    ; $4207: $22
	ld   h, e                                        ; $4208: $63
	ld   h, e                                        ; $4209: $63
	ld   [hl], a                                     ; $420a: $77
	ld   [hl], a                                     ; $420b: $77
	dec  e                                           ; $420c: $1d
	ld   a, a                                        ; $420d: $7f
	ld   de, $1177                                   ; $420e: $11 $77 $11
	ld   [hl], a                                     ; $4211: $77
	ld   de, $1177                                   ; $4212: $11 $77 $11
	ld   [hl], a                                     ; $4215: $77
	ld   de, $1177                                   ; $4216: $11 $77 $11
	ld   [hl], a                                     ; $4219: $77
	ld   [hl], a                                     ; $421a: $77
	ld   [hl], a                                     ; $421b: $77
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
	inc  bc                                          ; $4250: $03
	inc  bc                                          ; $4251: $03
	rlca                                             ; $4252: $07
	inc  b                                           ; $4253: $04
	rrca                                             ; $4254: $0f
	ld   [$080f], sp                                 ; $4255: $08 $0f $08
	rlca                                             ; $4258: $07
	ld   b, $01                                      ; $4259: $06 $01
	ld   bc, $0000                                   ; $425b: $01 $00 $00
	nop                                              ; $425e: $00
	nop                                              ; $425f: $00
	nop                                              ; $4260: $00
	nop                                              ; $4261: $00
	nop                                              ; $4262: $00
	nop                                              ; $4263: $00
	nop                                              ; $4264: $00
	nop                                              ; $4265: $00
	ld   a, $3e                                      ; $4266: $3e $3e
	rst  $38                                         ; $4268: $ff
	pop  bc                                          ; $4269: $c1
	pop  bc                                          ; $426a: $c1
	cp   [hl]                                        ; $426b: $be
	pop  bc                                          ; $426c: $c1
	rst  $38                                         ; $426d: $ff
	rst  $38                                         ; $426e: $ff
	cp   [hl]                                        ; $426f: $be
	rst  $38                                         ; $4270: $ff
	add  b                                           ; $4271: $80
	rst  $38                                         ; $4272: $ff
	ld   b, c                                        ; $4273: $41
	rst  $38                                         ; $4274: $ff
	cp   [hl]                                        ; $4275: $be
	rst  $38                                         ; $4276: $ff
	ld   a, a                                        ; $4277: $7f
	rst  $38                                         ; $4278: $ff
	nop                                              ; $4279: $00
	rst  $38                                         ; $427a: $ff
	rst  $38                                         ; $427b: $ff
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
	add  b                                           ; $4288: $80
	add  b                                           ; $4289: $80
	ldh  [$e0], a                                    ; $428a: $e0 $e0
	and  b                                           ; $428c: $a0
	and  b                                           ; $428d: $a0
	and  b                                           ; $428e: $a0
	and  b                                           ; $428f: $a0
	ldh  [$e0], a                                    ; $4290: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $4292: $f0 $10
	ld   hl, sp-$78                                  ; $4294: $f8 $88
	ld   hl, sp+$08                                  ; $4296: $f8 $08
	ldh  a, [$30]                                    ; $4298: $f0 $30
	ret  nz                                          ; $429a: $c0

	ret  nz                                          ; $429b: $c0

	nop                                              ; $429c: $00
	nop                                              ; $429d: $00
	nop                                              ; $429e: $00
	nop                                              ; $429f: $00
	nop                                              ; $42a0: $00
	nop                                              ; $42a1: $00
	nop                                              ; $42a2: $00
	nop                                              ; $42a3: $00
	nop                                              ; $42a4: $00
	nop                                              ; $42a5: $00
	nop                                              ; $42a6: $00
	nop                                              ; $42a7: $00
	nop                                              ; $42a8: $00
	nop                                              ; $42a9: $00
	nop                                              ; $42aa: $00
	nop                                              ; $42ab: $00
	nop                                              ; $42ac: $00
	nop                                              ; $42ad: $00
	nop                                              ; $42ae: $00
	nop                                              ; $42af: $00
	inc  bc                                          ; $42b0: $03
	inc  bc                                          ; $42b1: $03
	rlca                                             ; $42b2: $07
	inc  b                                           ; $42b3: $04
	rrca                                             ; $42b4: $0f
	ld   [$080f], sp                                 ; $42b5: $08 $0f $08
	rlca                                             ; $42b8: $07
	ld   b, $01                                      ; $42b9: $06 $01
	ld   bc, $0000                                   ; $42bb: $01 $00 $00
	nop                                              ; $42be: $00
	nop                                              ; $42bf: $00
	nop                                              ; $42c0: $00
	nop                                              ; $42c1: $00
	ld   h, b                                        ; $42c2: $60
	nop                                              ; $42c3: $00
	ldh  a, [rP1]                                    ; $42c4: $f0 $00
	cp   $1e                                         ; $42c6: $fe $1e
	rst  $38                                         ; $42c8: $ff
	add  c                                           ; $42c9: $81
	pop  hl                                          ; $42ca: $e1
	sbc  [hl]                                        ; $42cb: $9e
	pop  bc                                          ; $42cc: $c1
	rst  $38                                         ; $42cd: $ff
	rst  $38                                         ; $42ce: $ff
	cp   [hl]                                        ; $42cf: $be
	rst  $38                                         ; $42d0: $ff
	add  b                                           ; $42d1: $80
	rst  $38                                         ; $42d2: $ff
	ld   b, c                                        ; $42d3: $41
	rst  $38                                         ; $42d4: $ff
	cp   [hl]                                        ; $42d5: $be
	rst  $38                                         ; $42d6: $ff
	ld   a, a                                        ; $42d7: $7f
	rst  $38                                         ; $42d8: $ff
	nop                                              ; $42d9: $00
	rst  $38                                         ; $42da: $ff
	rst  $38                                         ; $42db: $ff
	nop                                              ; $42dc: $00
	nop                                              ; $42dd: $00
	nop                                              ; $42de: $00
	nop                                              ; $42df: $00
	nop                                              ; $42e0: $00
	nop                                              ; $42e1: $00
	nop                                              ; $42e2: $00
	nop                                              ; $42e3: $00
	nop                                              ; $42e4: $00
	nop                                              ; $42e5: $00
	nop                                              ; $42e6: $00
	nop                                              ; $42e7: $00
	add  b                                           ; $42e8: $80
	add  b                                           ; $42e9: $80
	ldh  [$e0], a                                    ; $42ea: $e0 $e0
	and  b                                           ; $42ec: $a0
	and  b                                           ; $42ed: $a0
	and  b                                           ; $42ee: $a0
	and  b                                           ; $42ef: $a0
	ldh  [$e0], a                                    ; $42f0: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $42f2: $f0 $10
	ld   hl, sp-$78                                  ; $42f4: $f8 $88
	ld   hl, sp+$08                                  ; $42f6: $f8 $08
	ldh  a, [$30]                                    ; $42f8: $f0 $30
	ret  nz                                          ; $42fa: $c0

	ret  nz                                          ; $42fb: $c0

	nop                                              ; $42fc: $00
	nop                                              ; $42fd: $00
	nop                                              ; $42fe: $00
	nop                                              ; $42ff: $00
	nop                                              ; $4300: $00
	nop                                              ; $4301: $00
	nop                                              ; $4302: $00
	nop                                              ; $4303: $00
	nop                                              ; $4304: $00
	nop                                              ; $4305: $00
	nop                                              ; $4306: $00
	nop                                              ; $4307: $00
	nop                                              ; $4308: $00
	nop                                              ; $4309: $00
	nop                                              ; $430a: $00
	nop                                              ; $430b: $00
	nop                                              ; $430c: $00
	nop                                              ; $430d: $00
	nop                                              ; $430e: $00
	nop                                              ; $430f: $00
	inc  bc                                          ; $4310: $03
	inc  bc                                          ; $4311: $03
	rlca                                             ; $4312: $07
	inc  b                                           ; $4313: $04
	rrca                                             ; $4314: $0f
	ld   [$080f], sp                                 ; $4315: $08 $0f $08
	rlca                                             ; $4318: $07
	ld   b, $01                                      ; $4319: $06 $01
	ld   bc, $0000                                   ; $431b: $01 $00 $00
	nop                                              ; $431e: $00
	nop                                              ; $431f: $00
	nop                                              ; $4320: $00
	nop                                              ; $4321: $00
	jr   nc, jr_08d_4324                             ; $4322: $30 $00

jr_08d_4324:
	jr   nc, jr_08d_4326                             ; $4324: $30 $00

jr_08d_4326:
	ld   a, $3e                                      ; $4326: $3e $3e
	rst  $38                                         ; $4328: $ff
	pop  bc                                          ; $4329: $c1
	pop  bc                                          ; $432a: $c1
	cp   [hl]                                        ; $432b: $be
	pop  bc                                          ; $432c: $c1
	rst  $38                                         ; $432d: $ff
	rst  $38                                         ; $432e: $ff
	cp   [hl]                                        ; $432f: $be
	rst  $38                                         ; $4330: $ff
	add  b                                           ; $4331: $80
	rst  $38                                         ; $4332: $ff
	ld   b, c                                        ; $4333: $41
	rst  $38                                         ; $4334: $ff
	cp   [hl]                                        ; $4335: $be
	rst  $38                                         ; $4336: $ff
	ld   a, a                                        ; $4337: $7f
	rst  $38                                         ; $4338: $ff
	nop                                              ; $4339: $00
	rst  $38                                         ; $433a: $ff
	rst  $38                                         ; $433b: $ff
	nop                                              ; $433c: $00
	nop                                              ; $433d: $00
	nop                                              ; $433e: $00
	nop                                              ; $433f: $00
	nop                                              ; $4340: $00
	nop                                              ; $4341: $00
	nop                                              ; $4342: $00
	nop                                              ; $4343: $00
	nop                                              ; $4344: $00
	nop                                              ; $4345: $00
	nop                                              ; $4346: $00
	nop                                              ; $4347: $00
	add  b                                           ; $4348: $80
	add  b                                           ; $4349: $80
	ldh  [$e0], a                                    ; $434a: $e0 $e0
	and  b                                           ; $434c: $a0
	and  b                                           ; $434d: $a0
	and  b                                           ; $434e: $a0
	and  b                                           ; $434f: $a0
	ldh  [$e0], a                                    ; $4350: $e0 $e0
	ldh  a, [rAUD1SWEEP]                             ; $4352: $f0 $10
	ld   hl, sp-$78                                  ; $4354: $f8 $88
	ld   hl, sp+$08                                  ; $4356: $f8 $08
	ldh  a, [$30]                                    ; $4358: $f0 $30
	ret  nz                                          ; $435a: $c0

	ret  nz                                          ; $435b: $c0

	nop                                              ; $435c: $00
	nop                                              ; $435d: $00
	nop                                              ; $435e: $00
	nop                                              ; $435f: $00
	nop                                              ; $4360: $00
	nop                                              ; $4361: $00
	nop                                              ; $4362: $00
	nop                                              ; $4363: $00
	ld   bc, $0201                                   ; $4364: $01 $01 $02
	inc  bc                                          ; $4367: $03
	ld   [bc], a                                     ; $4368: $02
	inc  bc                                          ; $4369: $03
	dec  b                                           ; $436a: $05
	rlca                                             ; $436b: $07
	dec  b                                           ; $436c: $05
	rlca                                             ; $436d: $07
	dec  b                                           ; $436e: $05
	rlca                                             ; $436f: $07
	dec  b                                           ; $4370: $05
	rlca                                             ; $4371: $07
	dec  b                                           ; $4372: $05
	rlca                                             ; $4373: $07
	inc  b                                           ; $4374: $04
	rlca                                             ; $4375: $07
	inc  b                                           ; $4376: $04
	rlca                                             ; $4377: $07
	dec  b                                           ; $4378: $05
	rlca                                             ; $4379: $07
	inc  b                                           ; $437a: $04
	rlca                                             ; $437b: $07
	ld   [bc], a                                     ; $437c: $02
	inc  bc                                          ; $437d: $03
	nop                                              ; $437e: $00
	nop                                              ; $437f: $00
	nop                                              ; $4380: $00
	nop                                              ; $4381: $00
	add  b                                           ; $4382: $80
	rst  $38                                         ; $4383: $ff
	ld   a, a                                        ; $4384: $7f
	rst  $38                                         ; $4385: $ff
	rst  $38                                         ; $4386: $ff
	rst  $38                                         ; $4387: $ff
	rst  $38                                         ; $4388: $ff
	add  b                                           ; $4389: $80
	rst  $38                                         ; $438a: $ff
	add  b                                           ; $438b: $80
	rst  $38                                         ; $438c: $ff
	add  b                                           ; $438d: $80
	rst  $38                                         ; $438e: $ff
	add  b                                           ; $438f: $80
	rst  $38                                         ; $4390: $ff
	add  b                                           ; $4391: $80
	rst  $38                                         ; $4392: $ff
	rst  $38                                         ; $4393: $ff
	nop                                              ; $4394: $00
	rst  $38                                         ; $4395: $ff
	add  b                                           ; $4396: $80
	rst  $38                                         ; $4397: $ff
	jp   nz, $80ff                                   ; $4398: $c2 $ff $80

	rst  $38                                         ; $439b: $ff
	nop                                              ; $439c: $00
	rst  $38                                         ; $439d: $ff
	nop                                              ; $439e: $00
	nop                                              ; $439f: $00
	nop                                              ; $43a0: $00
	nop                                              ; $43a1: $00
	add  b                                           ; $43a2: $80
	add  b                                           ; $43a3: $80
	ld   b, b                                        ; $43a4: $40
	ret  nz                                          ; $43a5: $c0

	and  b                                           ; $43a6: $a0
	ldh  [hScriptOpcodeParams], a                                    ; $43a7: $e0 $a0
	ldh  [$d0], a                                    ; $43a9: $e0 $d0
	ldh  a, [$d0]                                    ; $43ab: $f0 $d0
	ldh  a, [$d0]                                    ; $43ad: $f0 $d0
	ldh  a, [$d0]                                    ; $43af: $f0 $d0
	ldh  a, [$d0]                                    ; $43b1: $f0 $d0
	ldh  a, [rAUD1SWEEP]                             ; $43b3: $f0 $10
	ldh  a, [$d0]                                    ; $43b5: $f0 $d0
	ldh  a, [$d0]                                    ; $43b7: $f0 $d0
	ldh  a, [rAUD1SWEEP]                             ; $43b9: $f0 $10
	ldh  a, [rAUD4LEN]                               ; $43bb: $f0 $20
	ldh  [rP1], a                                    ; $43bd: $e0 $00
	nop                                              ; $43bf: $00
	nop                                              ; $43c0: $00
	nop                                              ; $43c1: $00
	nop                                              ; $43c2: $00
	nop                                              ; $43c3: $00
	ld   bc, $0201                                   ; $43c4: $01 $01 $02
	inc  bc                                          ; $43c7: $03
	ld   [bc], a                                     ; $43c8: $02
	inc  bc                                          ; $43c9: $03
	dec  b                                           ; $43ca: $05
	rlca                                             ; $43cb: $07
	dec  b                                           ; $43cc: $05
	rlca                                             ; $43cd: $07
	dec  b                                           ; $43ce: $05
	rlca                                             ; $43cf: $07
	dec  b                                           ; $43d0: $05
	rlca                                             ; $43d1: $07
	dec  b                                           ; $43d2: $05
	rlca                                             ; $43d3: $07
	inc  b                                           ; $43d4: $04
	rlca                                             ; $43d5: $07
	inc  b                                           ; $43d6: $04
	rlca                                             ; $43d7: $07
	dec  b                                           ; $43d8: $05
	rlca                                             ; $43d9: $07
	inc  b                                           ; $43da: $04
	rlca                                             ; $43db: $07
	ld   [bc], a                                     ; $43dc: $02
	inc  bc                                          ; $43dd: $03
	nop                                              ; $43de: $00
	nop                                              ; $43df: $00
	nop                                              ; $43e0: $00
	nop                                              ; $43e1: $00
	add  b                                           ; $43e2: $80
	rst  $38                                         ; $43e3: $ff
	ld   a, a                                        ; $43e4: $7f
	rst  $38                                         ; $43e5: $ff
	rst  $38                                         ; $43e6: $ff
	rst  $38                                         ; $43e7: $ff
	rst  $38                                         ; $43e8: $ff
	rst  $38                                         ; $43e9: $ff
	rst  $38                                         ; $43ea: $ff
	rst  $38                                         ; $43eb: $ff
	rst  $38                                         ; $43ec: $ff
	rst  $38                                         ; $43ed: $ff
	rst  $38                                         ; $43ee: $ff
	rst  $38                                         ; $43ef: $ff
	rst  $38                                         ; $43f0: $ff
	rst  $38                                         ; $43f1: $ff
	rst  $38                                         ; $43f2: $ff
	rst  $38                                         ; $43f3: $ff
	nop                                              ; $43f4: $00
	rst  $38                                         ; $43f5: $ff
	add  b                                           ; $43f6: $80
	rst  $38                                         ; $43f7: $ff
	jp   nz, $80ff                                   ; $43f8: $c2 $ff $80

	rst  $38                                         ; $43fb: $ff
	nop                                              ; $43fc: $00
	rst  $38                                         ; $43fd: $ff
	nop                                              ; $43fe: $00
	nop                                              ; $43ff: $00
	nop                                              ; $4400: $00
	nop                                              ; $4401: $00
	add  b                                           ; $4402: $80
	add  b                                           ; $4403: $80
	ld   b, b                                        ; $4404: $40
	ret  nz                                          ; $4405: $c0

	and  b                                           ; $4406: $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4407: $e0 $a0
	ldh  [$d0], a                                    ; $4409: $e0 $d0
	ldh  a, [$d0]                                    ; $440b: $f0 $d0
	ldh  a, [$d0]                                    ; $440d: $f0 $d0
	ldh  a, [$d0]                                    ; $440f: $f0 $d0
	ldh  a, [$d0]                                    ; $4411: $f0 $d0
	ldh  a, [rAUD1SWEEP]                             ; $4413: $f0 $10
	ldh  a, [$d0]                                    ; $4415: $f0 $d0
	ldh  a, [$d0]                                    ; $4417: $f0 $d0
	ldh  a, [rAUD1SWEEP]                             ; $4419: $f0 $10
	ldh  a, [rAUD4LEN]                               ; $441b: $f0 $20
	ldh  [rP1], a                                    ; $441d: $e0 $00
	nop                                              ; $441f: $00
	nop                                              ; $4420: $00
	nop                                              ; $4421: $00
	nop                                              ; $4422: $00
	nop                                              ; $4423: $00
	ld   bc, $0201                                   ; $4424: $01 $01 $02
	inc  bc                                          ; $4427: $03
	ld   [bc], a                                     ; $4428: $02
	inc  bc                                          ; $4429: $03
	dec  b                                           ; $442a: $05
	rlca                                             ; $442b: $07
	dec  b                                           ; $442c: $05
	rlca                                             ; $442d: $07
	dec  b                                           ; $442e: $05
	rlca                                             ; $442f: $07
	dec  b                                           ; $4430: $05
	rlca                                             ; $4431: $07
	dec  b                                           ; $4432: $05
	rlca                                             ; $4433: $07
	inc  b                                           ; $4434: $04
	rlca                                             ; $4435: $07
	inc  b                                           ; $4436: $04
	rlca                                             ; $4437: $07
	dec  b                                           ; $4438: $05
	rlca                                             ; $4439: $07
	inc  b                                           ; $443a: $04
	rlca                                             ; $443b: $07
	ld   [bc], a                                     ; $443c: $02
	inc  bc                                          ; $443d: $03
	nop                                              ; $443e: $00
	nop                                              ; $443f: $00
	nop                                              ; $4440: $00
	nop                                              ; $4441: $00
	add  b                                           ; $4442: $80
	rst  $38                                         ; $4443: $ff
	ld   a, a                                        ; $4444: $7f
	rst  $38                                         ; $4445: $ff
	rst  $38                                         ; $4446: $ff
	rst  $38                                         ; $4447: $ff
	rst  $38                                         ; $4448: $ff
	add  b                                           ; $4449: $80
	rst  $38                                         ; $444a: $ff
	adc  b                                           ; $444b: $88
	rst  $38                                         ; $444c: $ff
	sub  h                                           ; $444d: $94
	rst  $38                                         ; $444e: $ff
	adc  b                                           ; $444f: $88
	rst  $38                                         ; $4450: $ff
	add  b                                           ; $4451: $80
	rst  $38                                         ; $4452: $ff
	rst  $38                                         ; $4453: $ff
	nop                                              ; $4454: $00
	rst  $38                                         ; $4455: $ff
	add  b                                           ; $4456: $80
	rst  $38                                         ; $4457: $ff
	jp   nz, $80ff                                   ; $4458: $c2 $ff $80

	rst  $38                                         ; $445b: $ff
	nop                                              ; $445c: $00
	rst  $38                                         ; $445d: $ff
	nop                                              ; $445e: $00
	nop                                              ; $445f: $00
	nop                                              ; $4460: $00
	nop                                              ; $4461: $00
	add  b                                           ; $4462: $80
	add  b                                           ; $4463: $80
	ld   b, b                                        ; $4464: $40
	ret  nz                                          ; $4465: $c0

	and  b                                           ; $4466: $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4467: $e0 $a0
	ldh  [$d0], a                                    ; $4469: $e0 $d0
	ldh  a, [$d0]                                    ; $446b: $f0 $d0
	ldh  a, [$d0]                                    ; $446d: $f0 $d0
	ldh  a, [$d0]                                    ; $446f: $f0 $d0
	ldh  a, [$d0]                                    ; $4471: $f0 $d0
	ldh  a, [rAUD1SWEEP]                             ; $4473: $f0 $10
	ldh  a, [$d0]                                    ; $4475: $f0 $d0
	ldh  a, [$d0]                                    ; $4477: $f0 $d0
	ldh  a, [rAUD1SWEEP]                             ; $4479: $f0 $10
	ldh  a, [rAUD4LEN]                               ; $447b: $f0 $20
	ldh  [rP1], a                                    ; $447d: $e0 $00
	nop                                              ; $447f: $00
	nop                                              ; $4480: $00
	nop                                              ; $4481: $00
	rlca                                             ; $4482: $07
	rlca                                             ; $4483: $07
	rlca                                             ; $4484: $07
	ld   b, $07                                      ; $4485: $06 $07
	ld   b, $07                                      ; $4487: $06 $07
	ld   b, $07                                      ; $4489: $06 $07
	ld   b, $07                                      ; $448b: $06 $07
	ld   b, $07                                      ; $448d: $06 $07
	ld   b, $07                                      ; $448f: $06 $07
	ld   b, $07                                      ; $4491: $06 $07
	rlca                                             ; $4493: $07
	inc  b                                           ; $4494: $04
	rlca                                             ; $4495: $07
	inc  b                                           ; $4496: $04
	rlca                                             ; $4497: $07
	dec  b                                           ; $4498: $05
	rlca                                             ; $4499: $07
	inc  b                                           ; $449a: $04
	rlca                                             ; $449b: $07
	inc  b                                           ; $449c: $04
	rlca                                             ; $449d: $07
	nop                                              ; $449e: $00
	nop                                              ; $449f: $00
	nop                                              ; $44a0: $00
	nop                                              ; $44a1: $00
	rst  $38                                         ; $44a2: $ff
	rst  $38                                         ; $44a3: $ff
	rst  $38                                         ; $44a4: $ff
	nop                                              ; $44a5: $00
	rst  $38                                         ; $44a6: $ff
	nop                                              ; $44a7: $00
	rst  $38                                         ; $44a8: $ff
	nop                                              ; $44a9: $00
	rst  $38                                         ; $44aa: $ff
	nop                                              ; $44ab: $00
	rst  $38                                         ; $44ac: $ff
	nop                                              ; $44ad: $00
	rst  $38                                         ; $44ae: $ff
	nop                                              ; $44af: $00
	rst  $38                                         ; $44b0: $ff
	nop                                              ; $44b1: $00
	rst  $38                                         ; $44b2: $ff
	rst  $38                                         ; $44b3: $ff
	nop                                              ; $44b4: $00
	rst  $38                                         ; $44b5: $ff
	add  b                                           ; $44b6: $80
	rst  $38                                         ; $44b7: $ff
	add  $ff                                         ; $44b8: $c6 $ff
	add  [hl]                                        ; $44ba: $86
	rst  $38                                         ; $44bb: $ff
	nop                                              ; $44bc: $00
	rst  $38                                         ; $44bd: $ff
	nop                                              ; $44be: $00
	nop                                              ; $44bf: $00
	nop                                              ; $44c0: $00
	nop                                              ; $44c1: $00
	ldh  a, [$f0]                                    ; $44c2: $f0 $f0

Call_08d_44c4:
	ldh  a, [$30]                                    ; $44c4: $f0 $30
	ldh  a, [$30]                                    ; $44c6: $f0 $30
	ldh  a, [$30]                                    ; $44c8: $f0 $30
	ldh  a, [$30]                                    ; $44ca: $f0 $30
	ldh  a, [$30]                                    ; $44cc: $f0 $30
	ldh  a, [$30]                                    ; $44ce: $f0 $30
	ldh  a, [$30]                                    ; $44d0: $f0 $30
	ldh  a, [$f0]                                    ; $44d2: $f0 $f0
	db   $10                                         ; $44d4: $10
	ldh  a, [$d0]                                    ; $44d5: $f0 $d0
	ldh  a, [$d0]                                    ; $44d7: $f0 $d0
	ldh  a, [rAUD1SWEEP]                             ; $44d9: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $44db: $f0 $10
	ldh  a, [rP1]                                    ; $44dd: $f0 $00
	nop                                              ; $44df: $00
	nop                                              ; $44e0: $00
	nop                                              ; $44e1: $00
	rlca                                             ; $44e2: $07
	rlca                                             ; $44e3: $07
	rlca                                             ; $44e4: $07
	ld   b, $07                                      ; $44e5: $06 $07
	ld   b, $07                                      ; $44e7: $06 $07
	ld   b, $07                                      ; $44e9: $06 $07
	ld   b, $07                                      ; $44eb: $06 $07
	ld   b, $07                                      ; $44ed: $06 $07
	ld   b, $07                                      ; $44ef: $06 $07
	ld   b, $07                                      ; $44f1: $06 $07
	rlca                                             ; $44f3: $07
	inc  b                                           ; $44f4: $04
	rlca                                             ; $44f5: $07
	inc  b                                           ; $44f6: $04
	rlca                                             ; $44f7: $07
	dec  b                                           ; $44f8: $05
	rlca                                             ; $44f9: $07
	inc  b                                           ; $44fa: $04
	rlca                                             ; $44fb: $07
	inc  b                                           ; $44fc: $04
	rlca                                             ; $44fd: $07
	nop                                              ; $44fe: $00
	nop                                              ; $44ff: $00
	nop                                              ; $4500: $00
	nop                                              ; $4501: $00
	rst  $38                                         ; $4502: $ff
	rst  $38                                         ; $4503: $ff
	rst  $38                                         ; $4504: $ff
	nop                                              ; $4505: $00
	rst  $38                                         ; $4506: $ff
	inc  e                                           ; $4507: $1c
	rst  $38                                         ; $4508: $ff
	ld   [hl+], a                                    ; $4509: $22
	rst  $38                                         ; $450a: $ff
	ld   b, c                                        ; $450b: $41
	rst  $38                                         ; $450c: $ff
	ld   [hl+], a                                    ; $450d: $22
	rst  $38                                         ; $450e: $ff
	inc  e                                           ; $450f: $1c
	rst  $38                                         ; $4510: $ff
	nop                                              ; $4511: $00
	rst  $38                                         ; $4512: $ff
	rst  $38                                         ; $4513: $ff
	nop                                              ; $4514: $00
	rst  $38                                         ; $4515: $ff
	add  b                                           ; $4516: $80
	rst  $38                                         ; $4517: $ff
	add  $ff                                         ; $4518: $c6 $ff
	add  [hl]                                        ; $451a: $86
	rst  $38                                         ; $451b: $ff
	nop                                              ; $451c: $00
	rst  $38                                         ; $451d: $ff
	nop                                              ; $451e: $00
	nop                                              ; $451f: $00
	nop                                              ; $4520: $00
	nop                                              ; $4521: $00
	ldh  a, [$f0]                                    ; $4522: $f0 $f0
	ldh  a, [$30]                                    ; $4524: $f0 $30
	ldh  a, [$30]                                    ; $4526: $f0 $30
	ldh  a, [$30]                                    ; $4528: $f0 $30
	ldh  a, [$30]                                    ; $452a: $f0 $30
	ldh  a, [$30]                                    ; $452c: $f0 $30
	ldh  a, [$30]                                    ; $452e: $f0 $30
	ldh  a, [$30]                                    ; $4530: $f0 $30
	ldh  a, [$f0]                                    ; $4532: $f0 $f0
	db   $10                                         ; $4534: $10
	ldh  a, [$d0]                                    ; $4535: $f0 $d0
	ldh  a, [$d0]                                    ; $4537: $f0 $d0
	ldh  a, [rAUD1SWEEP]                             ; $4539: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $453b: $f0 $10
	ldh  a, [rP1]                                    ; $453d: $f0 $00
	nop                                              ; $453f: $00
	nop                                              ; $4540: $00
	nop                                              ; $4541: $00
	rlca                                             ; $4542: $07
	rlca                                             ; $4543: $07
	rlca                                             ; $4544: $07
	ld   b, $07                                      ; $4545: $06 $07
	ld   b, $07                                      ; $4547: $06 $07
	ld   b, $07                                      ; $4549: $06 $07
	ld   b, $07                                      ; $454b: $06 $07
	ld   b, $07                                      ; $454d: $06 $07
	ld   b, $07                                      ; $454f: $06 $07
	ld   b, $07                                      ; $4551: $06 $07
	rlca                                             ; $4553: $07
	inc  b                                           ; $4554: $04
	rlca                                             ; $4555: $07
	inc  b                                           ; $4556: $04
	rlca                                             ; $4557: $07
	dec  b                                           ; $4558: $05
	rlca                                             ; $4559: $07
	inc  b                                           ; $455a: $04
	rlca                                             ; $455b: $07
	inc  b                                           ; $455c: $04
	rlca                                             ; $455d: $07
	nop                                              ; $455e: $00
	nop                                              ; $455f: $00
	nop                                              ; $4560: $00
	nop                                              ; $4561: $00
	rst  $38                                         ; $4562: $ff
	rst  $38                                         ; $4563: $ff
	rst  $38                                         ; $4564: $ff
	nop                                              ; $4565: $00
	rst  $38                                         ; $4566: $ff
	nop                                              ; $4567: $00
	rst  $38                                         ; $4568: $ff
	nop                                              ; $4569: $00
	rst  $38                                         ; $456a: $ff
	ld   a, a                                        ; $456b: $7f
	rst  $38                                         ; $456c: $ff
	nop                                              ; $456d: $00
	rst  $38                                         ; $456e: $ff
	nop                                              ; $456f: $00
	rst  $38                                         ; $4570: $ff
	nop                                              ; $4571: $00
	rst  $38                                         ; $4572: $ff
	rst  $38                                         ; $4573: $ff
	nop                                              ; $4574: $00
	rst  $38                                         ; $4575: $ff
	add  b                                           ; $4576: $80
	rst  $38                                         ; $4577: $ff
	add  $ff                                         ; $4578: $c6 $ff
	add  [hl]                                        ; $457a: $86
	rst  $38                                         ; $457b: $ff
	nop                                              ; $457c: $00
	rst  $38                                         ; $457d: $ff
	nop                                              ; $457e: $00
	nop                                              ; $457f: $00
	nop                                              ; $4580: $00
	nop                                              ; $4581: $00
	ldh  a, [$f0]                                    ; $4582: $f0 $f0
	ldh  a, [$30]                                    ; $4584: $f0 $30
	ldh  a, [$30]                                    ; $4586: $f0 $30
	ldh  a, [$30]                                    ; $4588: $f0 $30
	ldh  a, [$30]                                    ; $458a: $f0 $30
	ldh  a, [$30]                                    ; $458c: $f0 $30
	ldh  a, [$30]                                    ; $458e: $f0 $30
	ldh  a, [$30]                                    ; $4590: $f0 $30
	ldh  a, [$f0]                                    ; $4592: $f0 $f0
	db   $10                                         ; $4594: $10
	ldh  a, [$d0]                                    ; $4595: $f0 $d0
	ldh  a, [$d0]                                    ; $4597: $f0 $d0
	ldh  a, [rAUD1SWEEP]                             ; $4599: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $459b: $f0 $10
	ldh  a, [rP1]                                    ; $459d: $f0 $00
	nop                                              ; $459f: $00
	nop                                              ; $45a0: $00
	nop                                              ; $45a1: $00
	nop                                              ; $45a2: $00
	nop                                              ; $45a3: $00
	ld   h, b                                        ; $45a4: $60
	ld   h, b                                        ; $45a5: $60
	ld   a, b                                        ; $45a6: $78
	jr   c, jr_08d_4626                              ; $45a7: $38 $7d

	dec  c                                           ; $45a9: $0d
	ld   a, a                                        ; $45aa: $7f
	rlca                                             ; $45ab: $07
	ld   a, a                                        ; $45ac: $7f
	ld   [bc], a                                     ; $45ad: $02
	ld   a, a                                        ; $45ae: $7f
	ld   [bc], a                                     ; $45af: $02
	ld   a, a                                        ; $45b0: $7f
	ld   [bc], a                                     ; $45b1: $02
	ld   a, a                                        ; $45b2: $7f
	ld   [bc], a                                     ; $45b3: $02
	ld   a, a                                        ; $45b4: $7f
	ld   [bc], a                                     ; $45b5: $02
	ld   a, a                                        ; $45b6: $7f
	ld   [bc], a                                     ; $45b7: $02
	ld   a, a                                        ; $45b8: $7f
	ld   [bc], a                                     ; $45b9: $02
	ld   a, a                                        ; $45ba: $7f
	ld   [bc], a                                     ; $45bb: $02
	ld   a, a                                        ; $45bc: $7f
	ld   [bc], a                                     ; $45bd: $02
	nop                                              ; $45be: $00
	nop                                              ; $45bf: $00
	nop                                              ; $45c0: $00
	nop                                              ; $45c1: $00
	nop                                              ; $45c2: $00
	nop                                              ; $45c3: $00
	ccf                                              ; $45c4: $3f
	ccf                                              ; $45c5: $3f
	rst  $38                                         ; $45c6: $ff
	ldh  [rIE], a                                    ; $45c7: $e0 $ff
	add  b                                           ; $45c9: $80
	rst  $38                                         ; $45ca: $ff
	ld   bc, $03ff                                   ; $45cb: $01 $ff $03
	rst  $38                                         ; $45ce: $ff
	rlca                                             ; $45cf: $07
	ei                                               ; $45d0: $fb
	ld   a, [bc]                                     ; $45d1: $0a
	db   $fc                                         ; $45d2: $fc
	rrca                                             ; $45d3: $0f
	rst  $38                                         ; $45d4: $ff
	nop                                              ; $45d5: $00
	rst  $38                                         ; $45d6: $ff
	nop                                              ; $45d7: $00
	rst  $38                                         ; $45d8: $ff
	nop                                              ; $45d9: $00
	rst  $38                                         ; $45da: $ff
	nop                                              ; $45db: $00
	rst  $38                                         ; $45dc: $ff
	nop                                              ; $45dd: $00
	nop                                              ; $45de: $00
	nop                                              ; $45df: $00
	nop                                              ; $45e0: $00
	nop                                              ; $45e1: $00
	db   $10                                         ; $45e2: $10
	db   $10                                         ; $45e3: $10
	ld   hl, sp-$08                                  ; $45e4: $f8 $f8
	ldh  a, [rSVBK]                                  ; $45e6: $f0 $70
	ldh  a, [$f0]                                    ; $45e8: $f0 $f0
	ldh  a, [$d0]                                    ; $45ea: $f0 $d0
	ldh  a, [$90]                                    ; $45ec: $f0 $90
	ret  nc                                          ; $45ee: $d0

	jr   nc, jr_08d_4621                             ; $45ef: $30 $30

	ret  nc                                          ; $45f1: $d0

	ldh  a, [rAUD1SWEEP]                             ; $45f2: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $45f4: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $45f6: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $45f8: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $45fa: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $45fc: $f0 $10
	nop                                              ; $45fe: $00
	nop                                              ; $45ff: $00
	nop                                              ; $4600: $00
	nop                                              ; $4601: $00
	nop                                              ; $4602: $00
	nop                                              ; $4603: $00
	ld   h, b                                        ; $4604: $60
	ld   h, b                                        ; $4605: $60
	ld   a, b                                        ; $4606: $78
	jr   c, jr_08d_4686                              ; $4607: $38 $7d

	dec  c                                           ; $4609: $0d
	ld   a, a                                        ; $460a: $7f
	rlca                                             ; $460b: $07
	ld   a, a                                        ; $460c: $7f
	ld   [bc], a                                     ; $460d: $02
	ld   a, a                                        ; $460e: $7f
	ld   [bc], a                                     ; $460f: $02
	ld   a, a                                        ; $4610: $7f
	ld   [bc], a                                     ; $4611: $02
	ld   a, a                                        ; $4612: $7f
	ld   [bc], a                                     ; $4613: $02
	ld   a, a                                        ; $4614: $7f
	ld   [bc], a                                     ; $4615: $02
	ld   a, a                                        ; $4616: $7f
	ld   [bc], a                                     ; $4617: $02
	ld   a, a                                        ; $4618: $7f
	ld   [bc], a                                     ; $4619: $02
	ld   a, a                                        ; $461a: $7f
	ld   [bc], a                                     ; $461b: $02
	ld   a, a                                        ; $461c: $7f
	ld   [bc], a                                     ; $461d: $02
	nop                                              ; $461e: $00
	nop                                              ; $461f: $00
	nop                                              ; $4620: $00

jr_08d_4621:
	nop                                              ; $4621: $00
	nop                                              ; $4622: $00
	nop                                              ; $4623: $00
	ccf                                              ; $4624: $3f
	ccf                                              ; $4625: $3f

jr_08d_4626:
	rst  $38                                         ; $4626: $ff
	ldh  [rIE], a                                    ; $4627: $e0 $ff
	add  b                                           ; $4629: $80
	rst  $38                                         ; $462a: $ff
	nop                                              ; $462b: $00
	rst  $38                                         ; $462c: $ff
	nop                                              ; $462d: $00
	rst  $38                                         ; $462e: $ff
	nop                                              ; $462f: $00
	rst  $38                                         ; $4630: $ff
	nop                                              ; $4631: $00
	rst  $38                                         ; $4632: $ff
	nop                                              ; $4633: $00
	rst  $38                                         ; $4634: $ff
	nop                                              ; $4635: $00
	rst  $38                                         ; $4636: $ff
	ld   bc, $01ff                                   ; $4637: $01 $ff $01
	rst  $38                                         ; $463a: $ff
	nop                                              ; $463b: $00
	rst  $38                                         ; $463c: $ff
	nop                                              ; $463d: $00
	nop                                              ; $463e: $00
	nop                                              ; $463f: $00
	nop                                              ; $4640: $00
	nop                                              ; $4641: $00
	nop                                              ; $4642: $00
	nop                                              ; $4643: $00
	ret  nz                                          ; $4644: $c0

	ret  nz                                          ; $4645: $c0

	ldh  a, [rSVBK]                                  ; $4646: $f0 $70
	ldh  a, [c]                                      ; $4648: $f2
	ld   [de], a                                     ; $4649: $12
	rst  $30                                         ; $464a: $f7
	rla                                              ; $464b: $17
	cp   $1e                                         ; $464c: $fe $1e
	db   $fc                                         ; $464e: $fc
	inc  e                                           ; $464f: $1c
	ld   hl, sp+$38                                  ; $4650: $f8 $38
	ldh  a, [rSVBK]                                  ; $4652: $f0 $70
	ldh  a, [$f0]                                    ; $4654: $f0 $f0
	ld   [hl], b                                     ; $4656: $70
	ld   d, b                                        ; $4657: $50
	sub  b                                           ; $4658: $90
	ldh  a, [$f0]                                    ; $4659: $f0 $f0
	db   $10                                         ; $465b: $10
	ldh  a, [rAUD1SWEEP]                             ; $465c: $f0 $10
	nop                                              ; $465e: $00
	nop                                              ; $465f: $00
	nop                                              ; $4660: $00
	nop                                              ; $4661: $00
	nop                                              ; $4662: $00
	nop                                              ; $4663: $00
	ld   h, b                                        ; $4664: $60
	ld   h, b                                        ; $4665: $60
	ld   a, b                                        ; $4666: $78
	jr   c, jr_08d_46e6                              ; $4667: $38 $7d

	dec  c                                           ; $4669: $0d
	ld   a, a                                        ; $466a: $7f
	rlca                                             ; $466b: $07
	ld   a, a                                        ; $466c: $7f
	ld   [bc], a                                     ; $466d: $02
	ld   a, a                                        ; $466e: $7f
	ld   [bc], a                                     ; $466f: $02
	ld   a, a                                        ; $4670: $7f
	ld   [bc], a                                     ; $4671: $02
	ld   a, a                                        ; $4672: $7f
	ld   [bc], a                                     ; $4673: $02
	ld   a, a                                        ; $4674: $7f
	ld   [bc], a                                     ; $4675: $02
	ld   a, a                                        ; $4676: $7f
	ld   [bc], a                                     ; $4677: $02
	ld   a, a                                        ; $4678: $7f
	ld   [bc], a                                     ; $4679: $02
	ld   a, a                                        ; $467a: $7f
	ld   [bc], a                                     ; $467b: $02
	ld   a, a                                        ; $467c: $7f
	ld   [bc], a                                     ; $467d: $02
	nop                                              ; $467e: $00
	nop                                              ; $467f: $00
	nop                                              ; $4680: $00
	nop                                              ; $4681: $00
	nop                                              ; $4682: $00
	nop                                              ; $4683: $00
	ccf                                              ; $4684: $3f
	ccf                                              ; $4685: $3f

jr_08d_4686:
	rst  $38                                         ; $4686: $ff
	ldh  [rIE], a                                    ; $4687: $e0 $ff
	add  b                                           ; $4689: $80
	rst  $38                                         ; $468a: $ff
	nop                                              ; $468b: $00
	rst  $38                                         ; $468c: $ff
	nop                                              ; $468d: $00
	rst  $38                                         ; $468e: $ff
	ld   bc, $02fe                                   ; $468f: $01 $fe $02
	rst  $38                                         ; $4692: $ff
	inc  bc                                          ; $4693: $03
	rst  $38                                         ; $4694: $ff
	nop                                              ; $4695: $00
	rst  $38                                         ; $4696: $ff
	nop                                              ; $4697: $00
	rst  $38                                         ; $4698: $ff
	nop                                              ; $4699: $00
	rst  $38                                         ; $469a: $ff
	nop                                              ; $469b: $00
	rst  $38                                         ; $469c: $ff
	nop                                              ; $469d: $00
	nop                                              ; $469e: $00
	nop                                              ; $469f: $00
	nop                                              ; $46a0: $00
	nop                                              ; $46a1: $00
	nop                                              ; $46a2: $00
	nop                                              ; $46a3: $00
	ret  nz                                          ; $46a4: $c0

	ret  nz                                          ; $46a5: $c0

	ldh  a, [rSVBK]                                  ; $46a6: $f0 $70
	ldh  a, [rAUD1SWEEP]                             ; $46a8: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $46aa: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $46ac: $f0 $10
	rst  $38                                         ; $46ae: $ff
	rst  $38                                         ; $46af: $ff
	rst  $38                                         ; $46b0: $ff
	rst  $38                                         ; $46b1: $ff
	db   $10                                         ; $46b2: $10
	ldh  a, [$f0]                                    ; $46b3: $f0 $f0
	db   $10                                         ; $46b5: $10
	ldh  a, [rAUD1SWEEP]                             ; $46b6: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $46b8: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $46ba: $f0 $10
	ldh  a, [rAUD1SWEEP]                             ; $46bc: $f0 $10
	nop                                              ; $46be: $00
	nop                                              ; $46bf: $00
	nop                                              ; $46c0: $00
	nop                                              ; $46c1: $00
	ld   a, a                                        ; $46c2: $7f
	ld   a, a                                        ; $46c3: $7f
	ld   a, a                                        ; $46c4: $7f
	ld   a, a                                        ; $46c5: $7f
	ld   a, a                                        ; $46c6: $7f
	ld   a, a                                        ; $46c7: $7f
	ld   a, a                                        ; $46c8: $7f
	ld   a, a                                        ; $46c9: $7f
	ld   a, a                                        ; $46ca: $7f
	ld   l, a                                        ; $46cb: $6f
	ld   a, a                                        ; $46cc: $7f
	ld   a, a                                        ; $46cd: $7f
	ld   a, a                                        ; $46ce: $7f
	ld   a, a                                        ; $46cf: $7f
	ld   a, a                                        ; $46d0: $7f
	ld   a, a                                        ; $46d1: $7f
	ld   a, a                                        ; $46d2: $7f
	ld   a, a                                        ; $46d3: $7f
	ld   a, a                                        ; $46d4: $7f
	ld   a, a                                        ; $46d5: $7f
	ld   a, a                                        ; $46d6: $7f
	ld   a, e                                        ; $46d7: $7b
	ld   a, a                                        ; $46d8: $7f
	ld   a, a                                        ; $46d9: $7f
	ld   a, a                                        ; $46da: $7f
	ld   a, a                                        ; $46db: $7f
	ld   a, a                                        ; $46dc: $7f
	ld   a, a                                        ; $46dd: $7f
	nop                                              ; $46de: $00
	nop                                              ; $46df: $00
	nop                                              ; $46e0: $00
	nop                                              ; $46e1: $00
	rst  $38                                         ; $46e2: $ff
	rst  $38                                         ; $46e3: $ff
	rst  $38                                         ; $46e4: $ff
	rst  $38                                         ; $46e5: $ff

jr_08d_46e6:
	rst  $38                                         ; $46e6: $ff
	ei                                               ; $46e7: $fb
	rst  $38                                         ; $46e8: $ff
	cp   l                                           ; $46e9: $bd
	rst  $38                                         ; $46ea: $ff
	db   $fc                                         ; $46eb: $fc
	rst  $38                                         ; $46ec: $ff
	db   $fc                                         ; $46ed: $fc
	rst  $38                                         ; $46ee: $ff
	ld   hl, sp-$01                                  ; $46ef: $f8 $ff
	ld   [hl], b                                     ; $46f1: $70
	rst  $38                                         ; $46f2: $ff
	add  c                                           ; $46f3: $81
	rst  $38                                         ; $46f4: $ff
	jp   $ffff                                       ; $46f5: $c3 $ff $ff


	rst  $38                                         ; $46f8: $ff
	rst  $38                                         ; $46f9: $ff
	rst  $38                                         ; $46fa: $ff
	rst  $38                                         ; $46fb: $ff
	rst  $38                                         ; $46fc: $ff
	rst  $38                                         ; $46fd: $ff
	nop                                              ; $46fe: $00
	nop                                              ; $46ff: $00
	nop                                              ; $4700: $00
	nop                                              ; $4701: $00
	rst  $38                                         ; $4702: $ff
	rst  $38                                         ; $4703: $ff
	rst  $38                                         ; $4704: $ff
	rst  $38                                         ; $4705: $ff
	rst  $38                                         ; $4706: $ff
	ei                                               ; $4707: $fb
	rst  $38                                         ; $4708: $ff
	rst  $38                                         ; $4709: $ff
	rst  $38                                         ; $470a: $ff
	rst  $38                                         ; $470b: $ff
	rst  $38                                         ; $470c: $ff
	rst  $38                                         ; $470d: $ff
	rst  $38                                         ; $470e: $ff
	rst  $38                                         ; $470f: $ff
	rst  $38                                         ; $4710: $ff
	rst  $38                                         ; $4711: $ff
	rst  $38                                         ; $4712: $ff
	rst  $38                                         ; $4713: $ff
	rst  $38                                         ; $4714: $ff
	rst  $38                                         ; $4715: $ff
	rst  $38                                         ; $4716: $ff
	rst  $38                                         ; $4717: $ff
	rst  $38                                         ; $4718: $ff
	rst  $38                                         ; $4719: $ff
	rst  $38                                         ; $471a: $ff
	cp   a                                           ; $471b: $bf
	rst  $38                                         ; $471c: $ff
	rst  $38                                         ; $471d: $ff
	nop                                              ; $471e: $00
	nop                                              ; $471f: $00
	nop                                              ; $4720: $00
	nop                                              ; $4721: $00
	ld   a, a                                        ; $4722: $7f
	ld   a, a                                        ; $4723: $7f
	ld   a, a                                        ; $4724: $7f
	ld   a, a                                        ; $4725: $7f
	ld   a, a                                        ; $4726: $7f
	ld   a, a                                        ; $4727: $7f
	ld   a, a                                        ; $4728: $7f
	ld   a, a                                        ; $4729: $7f
	ld   l, a                                        ; $472a: $6f
	ld   a, a                                        ; $472b: $7f
	ld   a, a                                        ; $472c: $7f
	ld   a, a                                        ; $472d: $7f
	ld   a, a                                        ; $472e: $7f
	ld   a, a                                        ; $472f: $7f
	ld   a, a                                        ; $4730: $7f
	ld   a, a                                        ; $4731: $7f
	ld   a, a                                        ; $4732: $7f
	ld   a, a                                        ; $4733: $7f
	ld   a, a                                        ; $4734: $7f
	ld   a, a                                        ; $4735: $7f
	ld   a, e                                        ; $4736: $7b
	ld   a, a                                        ; $4737: $7f
	ld   a, a                                        ; $4738: $7f
	ld   a, a                                        ; $4739: $7f
	ld   a, a                                        ; $473a: $7f
	ld   a, a                                        ; $473b: $7f
	ld   a, a                                        ; $473c: $7f
	ld   a, a                                        ; $473d: $7f
	nop                                              ; $473e: $00
	nop                                              ; $473f: $00
	nop                                              ; $4740: $00
	nop                                              ; $4741: $00
	rst  $38                                         ; $4742: $ff
	rst  $38                                         ; $4743: $ff
	rst  $38                                         ; $4744: $ff
	rst  $38                                         ; $4745: $ff
	rst  $38                                         ; $4746: $ff
	ei                                               ; $4747: $fb
	cp   a                                           ; $4748: $bf
	db   $fd                                         ; $4749: $fd
	rst  $38                                         ; $474a: $ff
	db   $fc                                         ; $474b: $fc
	rst  $38                                         ; $474c: $ff
	db   $fc                                         ; $474d: $fc
	rst  $38                                         ; $474e: $ff
	ld   hl, sp-$01                                  ; $474f: $f8 $ff
	ld   [hl], b                                     ; $4751: $70
	rst  $38                                         ; $4752: $ff
	add  c                                           ; $4753: $81
	rst  $38                                         ; $4754: $ff
	jp   $ffff                                       ; $4755: $c3 $ff $ff


	rst  $38                                         ; $4758: $ff
	rst  $38                                         ; $4759: $ff
	rst  $38                                         ; $475a: $ff
	rst  $38                                         ; $475b: $ff
	rst  $38                                         ; $475c: $ff
	rst  $38                                         ; $475d: $ff
	nop                                              ; $475e: $00
	nop                                              ; $475f: $00
	nop                                              ; $4760: $00
	nop                                              ; $4761: $00
	rst  $38                                         ; $4762: $ff
	rst  $38                                         ; $4763: $ff
	rst  $38                                         ; $4764: $ff
	rst  $38                                         ; $4765: $ff
	ei                                               ; $4766: $fb
	rst  $38                                         ; $4767: $ff
	rst  $38                                         ; $4768: $ff
	rst  $38                                         ; $4769: $ff
	rst  $38                                         ; $476a: $ff
	rst  $38                                         ; $476b: $ff
	rst  $38                                         ; $476c: $ff
	rst  $38                                         ; $476d: $ff
	rst  $38                                         ; $476e: $ff
	rst  $38                                         ; $476f: $ff
	rst  $38                                         ; $4770: $ff
	rst  $38                                         ; $4771: $ff
	rst  $38                                         ; $4772: $ff
	rst  $38                                         ; $4773: $ff
	rst  $38                                         ; $4774: $ff
	rst  $38                                         ; $4775: $ff
	rst  $38                                         ; $4776: $ff
	rst  $38                                         ; $4777: $ff
	rst  $38                                         ; $4778: $ff
	rst  $38                                         ; $4779: $ff
	cp   a                                           ; $477a: $bf
	rst  $38                                         ; $477b: $ff
	rst  $38                                         ; $477c: $ff
	rst  $38                                         ; $477d: $ff
	nop                                              ; $477e: $00
	nop                                              ; $477f: $00
	nop                                              ; $4780: $00
	nop                                              ; $4781: $00
	ld   a, a                                        ; $4782: $7f
	ld   a, a                                        ; $4783: $7f
	ld   a, a                                        ; $4784: $7f
	ld   a, a                                        ; $4785: $7f
	ld   a, a                                        ; $4786: $7f
	ld   a, a                                        ; $4787: $7f
	ld   a, a                                        ; $4788: $7f
	ld   a, a                                        ; $4789: $7f
	ld   a, a                                        ; $478a: $7f
	ld   a, a                                        ; $478b: $7f
	ld   a, a                                        ; $478c: $7f
	ld   a, a                                        ; $478d: $7f
	ld   a, a                                        ; $478e: $7f
	ld   a, a                                        ; $478f: $7f
	ld   a, a                                        ; $4790: $7f
	ld   a, a                                        ; $4791: $7f
	ld   a, a                                        ; $4792: $7f
	ld   a, a                                        ; $4793: $7f
	ld   a, a                                        ; $4794: $7f
	ld   a, a                                        ; $4795: $7f
	ld   a, a                                        ; $4796: $7f
	ld   a, a                                        ; $4797: $7f
	ld   a, a                                        ; $4798: $7f
	ld   a, a                                        ; $4799: $7f
	ld   a, a                                        ; $479a: $7f
	ld   a, a                                        ; $479b: $7f
	ld   a, a                                        ; $479c: $7f
	ld   a, a                                        ; $479d: $7f
	nop                                              ; $479e: $00
	nop                                              ; $479f: $00
	nop                                              ; $47a0: $00
	nop                                              ; $47a1: $00
	rst  $38                                         ; $47a2: $ff
	rst  $38                                         ; $47a3: $ff
	rst  $38                                         ; $47a4: $ff
	rst  $38                                         ; $47a5: $ff
	rst  $38                                         ; $47a6: $ff
	ei                                               ; $47a7: $fb
	rst  $38                                         ; $47a8: $ff
	db   $fd                                         ; $47a9: $fd
	rst  $38                                         ; $47aa: $ff
	db   $fc                                         ; $47ab: $fc
	rst  $38                                         ; $47ac: $ff
	db   $fc                                         ; $47ad: $fc
	rst  $38                                         ; $47ae: $ff
	ld   hl, sp-$01                                  ; $47af: $f8 $ff
	ld   [hl], b                                     ; $47b1: $70
	rst  $38                                         ; $47b2: $ff
	add  c                                           ; $47b3: $81
	rst  $38                                         ; $47b4: $ff
	jp   $ffff                                       ; $47b5: $c3 $ff $ff


	rst  $38                                         ; $47b8: $ff
	rst  $38                                         ; $47b9: $ff
	rst  $38                                         ; $47ba: $ff
	rst  $38                                         ; $47bb: $ff
	rst  $38                                         ; $47bc: $ff
	rst  $38                                         ; $47bd: $ff
	nop                                              ; $47be: $00
	nop                                              ; $47bf: $00
	nop                                              ; $47c0: $00
	nop                                              ; $47c1: $00
	rst  $38                                         ; $47c2: $ff
	rst  $38                                         ; $47c3: $ff
	rst  $38                                         ; $47c4: $ff
	rst  $38                                         ; $47c5: $ff
	rst  $38                                         ; $47c6: $ff
	rst  $38                                         ; $47c7: $ff
	rst  $38                                         ; $47c8: $ff
	rst  $38                                         ; $47c9: $ff
	rst  $38                                         ; $47ca: $ff
	rst  $38                                         ; $47cb: $ff
	rst  $38                                         ; $47cc: $ff
	rst  $38                                         ; $47cd: $ff
	rst  $38                                         ; $47ce: $ff
	rst  $38                                         ; $47cf: $ff
	rst  $38                                         ; $47d0: $ff
	rst  $38                                         ; $47d1: $ff
	rst  $38                                         ; $47d2: $ff
	rst  $38                                         ; $47d3: $ff
	rst  $38                                         ; $47d4: $ff
	rst  $38                                         ; $47d5: $ff
	rst  $38                                         ; $47d6: $ff
	rst  $38                                         ; $47d7: $ff
	rst  $38                                         ; $47d8: $ff
	rst  $38                                         ; $47d9: $ff
	rst  $38                                         ; $47da: $ff
	rst  $38                                         ; $47db: $ff
	rst  $38                                         ; $47dc: $ff
	rst  $38                                         ; $47dd: $ff
	nop                                              ; $47de: $00
	nop                                              ; $47df: $00
	nop                                              ; $47e0: $00
	nop                                              ; $47e1: $00
	ld   bc, $0101                                   ; $47e2: $01 $01 $01
	ld   bc, $0101                                   ; $47e5: $01 $01 $01
	ld   bc, $0301                                   ; $47e8: $01 $01 $03
	inc  bc                                          ; $47eb: $03
	inc  bc                                          ; $47ec: $03
	inc  bc                                          ; $47ed: $03
	rlca                                             ; $47ee: $07
	rlca                                             ; $47ef: $07
	rlca                                             ; $47f0: $07
	rlca                                             ; $47f1: $07
	rlca                                             ; $47f2: $07
	rlca                                             ; $47f3: $07
	rlca                                             ; $47f4: $07
	rlca                                             ; $47f5: $07
	inc  bc                                          ; $47f6: $03
	inc  bc                                          ; $47f7: $03
	inc  bc                                          ; $47f8: $03
	inc  bc                                          ; $47f9: $03
	ld   [bc], a                                     ; $47fa: $02
	ld   [bc], a                                     ; $47fb: $02
	ld   [bc], a                                     ; $47fc: $02
	ld   [bc], a                                     ; $47fd: $02
	nop                                              ; $47fe: $00
	nop                                              ; $47ff: $00
	nop                                              ; $4800: $00
	nop                                              ; $4801: $00
	rst  $20                                         ; $4802: $e7
	rst  $20                                         ; $4803: $e7
	jr   @+$01                                       ; $4804: $18 $ff

	rst  $20                                         ; $4806: $e7
	rst  $38                                         ; $4807: $ff
	rst  $38                                         ; $4808: $ff
	rst  $38                                         ; $4809: $ff
	rst  $38                                         ; $480a: $ff
	rst  $38                                         ; $480b: $ff
	rst  $38                                         ; $480c: $ff
	rst  $30                                         ; $480d: $f7
	rst  $38                                         ; $480e: $ff
	push de                                          ; $480f: $d5
	rst  $38                                         ; $4810: $ff
	sub  l                                           ; $4811: $95
	rst  $38                                         ; $4812: $ff
	rst  $20                                         ; $4813: $e7
	rst  $38                                         ; $4814: $ff
	ld   [hl+], a                                    ; $4815: $22
	rst  $38                                         ; $4816: $ff
	ld   h, [hl]                                     ; $4817: $66
	rst  $38                                         ; $4818: $ff
	nop                                              ; $4819: $00
	rst  $38                                         ; $481a: $ff
	add  c                                           ; $481b: $81
	ld   a, [hl]                                     ; $481c: $7e
	ld   a, [hl]                                     ; $481d: $7e
	nop                                              ; $481e: $00
	nop                                              ; $481f: $00
	nop                                              ; $4820: $00
	nop                                              ; $4821: $00
	add  b                                           ; $4822: $80
	add  b                                           ; $4823: $80
	add  b                                           ; $4824: $80
	add  b                                           ; $4825: $80
	add  b                                           ; $4826: $80
	add  b                                           ; $4827: $80
	add  b                                           ; $4828: $80
	add  b                                           ; $4829: $80
	ret  nz                                          ; $482a: $c0

	ret  nz                                          ; $482b: $c0

	ret  nz                                          ; $482c: $c0

	ret  nz                                          ; $482d: $c0

	ldh  [$e0], a                                    ; $482e: $e0 $e0
	ldh  [$e0], a                                    ; $4830: $e0 $e0
	ldh  [$e0], a                                    ; $4832: $e0 $e0
	ldh  [$e0], a                                    ; $4834: $e0 $e0
	ret  nz                                          ; $4836: $c0

	ret  nz                                          ; $4837: $c0

	ret  nz                                          ; $4838: $c0

	ret  nz                                          ; $4839: $c0

	ld   b, b                                        ; $483a: $40
	ld   b, b                                        ; $483b: $40
	ld   b, b                                        ; $483c: $40
	ld   b, b                                        ; $483d: $40
	nop                                              ; $483e: $00
	nop                                              ; $483f: $00
	nop                                              ; $4840: $00
	nop                                              ; $4841: $00
	nop                                              ; $4842: $00
	nop                                              ; $4843: $00
	ld   bc, $0101                                   ; $4844: $01 $01 $01
	ld   bc, $0303                                   ; $4847: $01 $03 $03
	inc  bc                                          ; $484a: $03
	inc  bc                                          ; $484b: $03
	rlca                                             ; $484c: $07
	rlca                                             ; $484d: $07
	rlca                                             ; $484e: $07
	rlca                                             ; $484f: $07
	rlca                                             ; $4850: $07
	rlca                                             ; $4851: $07
	rlca                                             ; $4852: $07
	rlca                                             ; $4853: $07
	inc  bc                                          ; $4854: $03
	inc  bc                                          ; $4855: $03
	inc  bc                                          ; $4856: $03
	inc  bc                                          ; $4857: $03
	inc  bc                                          ; $4858: $03
	inc  bc                                          ; $4859: $03
	ld   [bc], a                                     ; $485a: $02
	ld   [bc], a                                     ; $485b: $02
	ld   [bc], a                                     ; $485c: $02
	ld   [bc], a                                     ; $485d: $02
	ld   [bc], a                                     ; $485e: $02
	ld   [bc], a                                     ; $485f: $02
	nop                                              ; $4860: $00
	nop                                              ; $4861: $00
	nop                                              ; $4862: $00
	nop                                              ; $4863: $00
	rst  $20                                         ; $4864: $e7
	rst  $20                                         ; $4865: $e7
	inc  a                                           ; $4866: $3c
	rst  $38                                         ; $4867: $ff
	ld   h, [hl]                                     ; $4868: $66
	rst  $38                                         ; $4869: $ff
	rst  $38                                         ; $486a: $ff
	rst  $38                                         ; $486b: $ff
	rst  $38                                         ; $486c: $ff
	rst  $38                                         ; $486d: $ff
	rst  $38                                         ; $486e: $ff
	rst  $30                                         ; $486f: $f7
	rst  $38                                         ; $4870: $ff
	push de                                          ; $4871: $d5
	rst  $38                                         ; $4872: $ff
	sub  l                                           ; $4873: $95
	rst  $38                                         ; $4874: $ff
	rst  $20                                         ; $4875: $e7
	rst  $38                                         ; $4876: $ff
	ld   [hl+], a                                    ; $4877: $22
	rst  $38                                         ; $4878: $ff
	ld   h, [hl]                                     ; $4879: $66
	rst  $38                                         ; $487a: $ff
	add  c                                           ; $487b: $81
	ld   a, [hl]                                     ; $487c: $7e
	ld   a, [hl]                                     ; $487d: $7e
	nop                                              ; $487e: $00
	nop                                              ; $487f: $00
	nop                                              ; $4880: $00
	nop                                              ; $4881: $00
	nop                                              ; $4882: $00
	nop                                              ; $4883: $00
	add  b                                           ; $4884: $80
	add  b                                           ; $4885: $80
	add  b                                           ; $4886: $80
	add  b                                           ; $4887: $80
	ret  nz                                          ; $4888: $c0

	ret  nz                                          ; $4889: $c0

	ret  nz                                          ; $488a: $c0

	ret  nz                                          ; $488b: $c0

	ldh  [$e0], a                                    ; $488c: $e0 $e0
	ldh  [$e0], a                                    ; $488e: $e0 $e0
	ldh  [$e0], a                                    ; $4890: $e0 $e0
	ldh  [$e0], a                                    ; $4892: $e0 $e0
	ret  nz                                          ; $4894: $c0

	ret  nz                                          ; $4895: $c0

	ret  nz                                          ; $4896: $c0

	ret  nz                                          ; $4897: $c0

	ret  nz                                          ; $4898: $c0

	ret  nz                                          ; $4899: $c0

	ld   b, b                                        ; $489a: $40
	ld   b, b                                        ; $489b: $40
	ld   b, b                                        ; $489c: $40
	ld   b, b                                        ; $489d: $40
	ld   b, b                                        ; $489e: $40
	ld   b, b                                        ; $489f: $40
	nop                                              ; $48a0: $00
	nop                                              ; $48a1: $00
	nop                                              ; $48a2: $00
	nop                                              ; $48a3: $00
	ld   bc, $0101                                   ; $48a4: $01 $01 $01
	ld   bc, $0303                                   ; $48a7: $01 $03 $03
	inc  bc                                          ; $48aa: $03
	inc  bc                                          ; $48ab: $03
	rlca                                             ; $48ac: $07
	rlca                                             ; $48ad: $07
	rlca                                             ; $48ae: $07
	rlca                                             ; $48af: $07
	rlca                                             ; $48b0: $07
	rlca                                             ; $48b1: $07
	rlca                                             ; $48b2: $07
	rlca                                             ; $48b3: $07
	inc  bc                                          ; $48b4: $03
	inc  bc                                          ; $48b5: $03
	inc  bc                                          ; $48b6: $03
	inc  bc                                          ; $48b7: $03
	inc  bc                                          ; $48b8: $03
	inc  bc                                          ; $48b9: $03
	ld   [bc], a                                     ; $48ba: $02
	ld   [bc], a                                     ; $48bb: $02
	ld   [bc], a                                     ; $48bc: $02
	ld   [bc], a                                     ; $48bd: $02
	ld   [bc], a                                     ; $48be: $02
	ld   [bc], a                                     ; $48bf: $02
	nop                                              ; $48c0: $00
	nop                                              ; $48c1: $00
	nop                                              ; $48c2: $00
	nop                                              ; $48c3: $00
	rst  $20                                         ; $48c4: $e7
	rst  $20                                         ; $48c5: $e7
	inc  a                                           ; $48c6: $3c
	rst  $38                                         ; $48c7: $ff
	ld   h, [hl]                                     ; $48c8: $66
	rst  $38                                         ; $48c9: $ff
	rst  $38                                         ; $48ca: $ff
	rst  $38                                         ; $48cb: $ff
	rst  $38                                         ; $48cc: $ff
	rst  $38                                         ; $48cd: $ff
	rst  $38                                         ; $48ce: $ff
	rst  $30                                         ; $48cf: $f7
	rst  $38                                         ; $48d0: $ff
	push de                                          ; $48d1: $d5
	rst  $38                                         ; $48d2: $ff
	sub  l                                           ; $48d3: $95
	rst  $38                                         ; $48d4: $ff
	add  c                                           ; $48d5: $81
	rst  $38                                         ; $48d6: $ff
	nop                                              ; $48d7: $00
	rst  $38                                         ; $48d8: $ff
	ld   h, [hl]                                     ; $48d9: $66
	rst  $38                                         ; $48da: $ff
	add  c                                           ; $48db: $81
	ld   a, [hl]                                     ; $48dc: $7e
	ld   a, [hl]                                     ; $48dd: $7e
	nop                                              ; $48de: $00
	nop                                              ; $48df: $00
	nop                                              ; $48e0: $00
	nop                                              ; $48e1: $00
	nop                                              ; $48e2: $00
	nop                                              ; $48e3: $00
	add  b                                           ; $48e4: $80
	add  b                                           ; $48e5: $80
	add  b                                           ; $48e6: $80
	add  b                                           ; $48e7: $80
	ret  nz                                          ; $48e8: $c0

	ret  nz                                          ; $48e9: $c0

	ret  nz                                          ; $48ea: $c0

	ret  nz                                          ; $48eb: $c0

	ldh  [$e0], a                                    ; $48ec: $e0 $e0
	ldh  [$e0], a                                    ; $48ee: $e0 $e0
	ldh  [$e0], a                                    ; $48f0: $e0 $e0
	ldh  [$e0], a                                    ; $48f2: $e0 $e0
	ret  nz                                          ; $48f4: $c0

	ret  nz                                          ; $48f5: $c0

	ret  nz                                          ; $48f6: $c0

	ret  nz                                          ; $48f7: $c0

	ret  nz                                          ; $48f8: $c0

	ret  nz                                          ; $48f9: $c0

	ld   b, b                                        ; $48fa: $40
	ld   b, b                                        ; $48fb: $40
	ld   b, b                                        ; $48fc: $40
	ld   b, b                                        ; $48fd: $40
	ld   b, b                                        ; $48fe: $40
	ld   b, b                                        ; $48ff: $40
	nop                                              ; $4900: $00
	nop                                              ; $4901: $00
	nop                                              ; $4902: $00
	nop                                              ; $4903: $00
	nop                                              ; $4904: $00
	nop                                              ; $4905: $00
	ld   bc, $0201                                   ; $4906: $01 $01 $02
	inc  bc                                          ; $4909: $03
	ld   [bc], a                                     ; $490a: $02
	inc  bc                                          ; $490b: $03
	dec  b                                           ; $490c: $05
	rlca                                             ; $490d: $07
	dec  b                                           ; $490e: $05
	rlca                                             ; $490f: $07
	dec  b                                           ; $4910: $05
	rlca                                             ; $4911: $07
	dec  b                                           ; $4912: $05
	rlca                                             ; $4913: $07
	dec  b                                           ; $4914: $05
	rlca                                             ; $4915: $07
	dec  b                                           ; $4916: $05
	rlca                                             ; $4917: $07
	dec  b                                           ; $4918: $05
	rlca                                             ; $4919: $07
	dec  b                                           ; $491a: $05
	rlca                                             ; $491b: $07
	inc  bc                                          ; $491c: $03
	inc  bc                                          ; $491d: $03
	nop                                              ; $491e: $00
	nop                                              ; $491f: $00
	nop                                              ; $4920: $00
	nop                                              ; $4921: $00
	nop                                              ; $4922: $00
	nop                                              ; $4923: $00
	ld   a, [hl]                                     ; $4924: $7e
	ld   a, [hl]                                     ; $4925: $7e
	add  c                                           ; $4926: $81
	rst  $38                                         ; $4927: $ff
	ld   a, [hl]                                     ; $4928: $7e
	add  c                                           ; $4929: $81
	add  c                                           ; $492a: $81
	ld   a, [hl]                                     ; $492b: $7e
	nop                                              ; $492c: $00
	rst  $38                                         ; $492d: $ff
	nop                                              ; $492e: $00
	rst  $38                                         ; $492f: $ff
	ld   e, d                                        ; $4930: $5a
	and  l                                           ; $4931: $a5
	ld   e, d                                        ; $4932: $5a
	and  l                                           ; $4933: $a5
	rst  $38                                         ; $4934: $ff
	rst  $20                                         ; $4935: $e7
	rst  $38                                         ; $4936: $ff
	ld   h, [hl]                                     ; $4937: $66
	rst  $38                                         ; $4938: $ff
	nop                                              ; $4939: $00
	rst  $38                                         ; $493a: $ff
	add  c                                           ; $493b: $81
	ld   a, [hl]                                     ; $493c: $7e
	ld   a, [hl]                                     ; $493d: $7e
	nop                                              ; $493e: $00
	nop                                              ; $493f: $00
	nop                                              ; $4940: $00
	nop                                              ; $4941: $00
	nop                                              ; $4942: $00
	nop                                              ; $4943: $00
	nop                                              ; $4944: $00
	nop                                              ; $4945: $00
	add  b                                           ; $4946: $80
	add  b                                           ; $4947: $80
	ld   b, b                                        ; $4948: $40
	ret  nz                                          ; $4949: $c0

	ld   b, b                                        ; $494a: $40
	ret  nz                                          ; $494b: $c0

	and  b                                           ; $494c: $a0
	ldh  [hScriptOpcodeParams], a                                    ; $494d: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $494f: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4951: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4953: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4955: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4957: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4959: $e0 $a0
	ldh  [$c0], a                                    ; $495b: $e0 $c0
	ret  nz                                          ; $495d: $c0

	nop                                              ; $495e: $00
	nop                                              ; $495f: $00
	nop                                              ; $4960: $00
	nop                                              ; $4961: $00
	nop                                              ; $4962: $00
	nop                                              ; $4963: $00
	nop                                              ; $4964: $00
	nop                                              ; $4965: $00
	ld   bc, $0201                                   ; $4966: $01 $01 $02
	inc  bc                                          ; $4969: $03
	ld   [bc], a                                     ; $496a: $02
	inc  bc                                          ; $496b: $03
	inc  b                                           ; $496c: $04
	rlca                                             ; $496d: $07
	dec  b                                           ; $496e: $05
	rlca                                             ; $496f: $07
	dec  b                                           ; $4970: $05
	rlca                                             ; $4971: $07
	dec  b                                           ; $4972: $05
	rlca                                             ; $4973: $07
	dec  b                                           ; $4974: $05
	rlca                                             ; $4975: $07
	dec  b                                           ; $4976: $05
	rlca                                             ; $4977: $07
	dec  b                                           ; $4978: $05
	rlca                                             ; $4979: $07
	inc  bc                                          ; $497a: $03
	inc  bc                                          ; $497b: $03
	inc  bc                                          ; $497c: $03
	inc  bc                                          ; $497d: $03
	nop                                              ; $497e: $00
	nop                                              ; $497f: $00
	nop                                              ; $4980: $00
	nop                                              ; $4981: $00
	nop                                              ; $4982: $00
	nop                                              ; $4983: $00
	ld   a, [hl]                                     ; $4984: $7e
	ld   a, [hl]                                     ; $4985: $7e
	add  c                                           ; $4986: $81
	rst  $38                                         ; $4987: $ff
	nop                                              ; $4988: $00
	rst  $38                                         ; $4989: $ff
	ld   a, [hl]                                     ; $498a: $7e
	add  c                                           ; $498b: $81
	add  c                                           ; $498c: $81
	ld   a, [hl]                                     ; $498d: $7e

jr_08d_498e:
	nop                                              ; $498e: $00
	rst  $38                                         ; $498f: $ff
	nop                                              ; $4990: $00
	rst  $38                                         ; $4991: $ff
	ld   e, d                                        ; $4992: $5a
	and  l                                           ; $4993: $a5
	ld   e, d                                        ; $4994: $5a
	and  l                                           ; $4995: $a5
	rst  $38                                         ; $4996: $ff
	rst  $20                                         ; $4997: $e7
	rst  $38                                         ; $4998: $ff
	ld   h, [hl]                                     ; $4999: $66
	rst  $38                                         ; $499a: $ff
	add  c                                           ; $499b: $81
	ld   a, [hl]                                     ; $499c: $7e
	ld   a, [hl]                                     ; $499d: $7e
	nop                                              ; $499e: $00
	nop                                              ; $499f: $00
	nop                                              ; $49a0: $00
	nop                                              ; $49a1: $00
	nop                                              ; $49a2: $00
	nop                                              ; $49a3: $00
	nop                                              ; $49a4: $00
	nop                                              ; $49a5: $00
	add  b                                           ; $49a6: $80
	add  b                                           ; $49a7: $80
	ld   b, b                                        ; $49a8: $40
	ret  nz                                          ; $49a9: $c0

	ld   b, b                                        ; $49aa: $40
	ret  nz                                          ; $49ab: $c0

	jr   nz, jr_08d_498e                             ; $49ac: $20 $e0

	and  b                                           ; $49ae: $a0
	ldh  [hScriptOpcodeParams], a                                    ; $49af: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $49b1: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $49b3: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $49b5: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $49b7: $e0 $a0
	ldh  [$c0], a                                    ; $49b9: $e0 $c0
	ret  nz                                          ; $49bb: $c0

	ret  nz                                          ; $49bc: $c0

	ret  nz                                          ; $49bd: $c0

	nop                                              ; $49be: $00
	nop                                              ; $49bf: $00
	nop                                              ; $49c0: $00
	nop                                              ; $49c1: $00
	nop                                              ; $49c2: $00
	nop                                              ; $49c3: $00
	nop                                              ; $49c4: $00
	nop                                              ; $49c5: $00
	ld   bc, $0201                                   ; $49c6: $01 $01 $02
	inc  bc                                          ; $49c9: $03
	ld   [bc], a                                     ; $49ca: $02
	inc  bc                                          ; $49cb: $03
	inc  b                                           ; $49cc: $04
	rlca                                             ; $49cd: $07
	dec  b                                           ; $49ce: $05
	rlca                                             ; $49cf: $07
	dec  b                                           ; $49d0: $05
	rlca                                             ; $49d1: $07
	dec  b                                           ; $49d2: $05
	rlca                                             ; $49d3: $07
	dec  b                                           ; $49d4: $05
	rlca                                             ; $49d5: $07
	dec  b                                           ; $49d6: $05
	rlca                                             ; $49d7: $07
	dec  b                                           ; $49d8: $05
	rlca                                             ; $49d9: $07
	inc  bc                                          ; $49da: $03
	inc  bc                                          ; $49db: $03
	inc  bc                                          ; $49dc: $03
	inc  bc                                          ; $49dd: $03
	nop                                              ; $49de: $00
	nop                                              ; $49df: $00
	nop                                              ; $49e0: $00
	nop                                              ; $49e1: $00
	nop                                              ; $49e2: $00
	nop                                              ; $49e3: $00
	ld   a, [hl]                                     ; $49e4: $7e
	ld   a, [hl]                                     ; $49e5: $7e
	add  c                                           ; $49e6: $81
	rst  $38                                         ; $49e7: $ff
	nop                                              ; $49e8: $00
	rst  $38                                         ; $49e9: $ff
	ld   a, [hl]                                     ; $49ea: $7e
	add  c                                           ; $49eb: $81
	add  c                                           ; $49ec: $81
	ld   a, [hl]                                     ; $49ed: $7e

jr_08d_49ee:
	nop                                              ; $49ee: $00
	rst  $38                                         ; $49ef: $ff
	nop                                              ; $49f0: $00
	rst  $38                                         ; $49f1: $ff
	ld   e, d                                        ; $49f2: $5a
	and  l                                           ; $49f3: $a5
	ld   e, d                                        ; $49f4: $5a
	and  l                                           ; $49f5: $a5
	rst  $38                                         ; $49f6: $ff
	nop                                              ; $49f7: $00
	rst  $38                                         ; $49f8: $ff
	ld   h, [hl]                                     ; $49f9: $66
	rst  $38                                         ; $49fa: $ff
	add  c                                           ; $49fb: $81
	ld   a, [hl]                                     ; $49fc: $7e
	ld   a, [hl]                                     ; $49fd: $7e
	nop                                              ; $49fe: $00
	nop                                              ; $49ff: $00
	nop                                              ; $4a00: $00
	nop                                              ; $4a01: $00
	nop                                              ; $4a02: $00
	nop                                              ; $4a03: $00
	nop                                              ; $4a04: $00
	nop                                              ; $4a05: $00
	add  b                                           ; $4a06: $80
	add  b                                           ; $4a07: $80
	ld   b, b                                        ; $4a08: $40
	ret  nz                                          ; $4a09: $c0

	ld   b, b                                        ; $4a0a: $40
	ret  nz                                          ; $4a0b: $c0

	jr   nz, jr_08d_49ee                             ; $4a0c: $20 $e0

	and  b                                           ; $4a0e: $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4a0f: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4a11: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4a13: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4a15: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4a17: $e0 $a0
	ldh  [$c0], a                                    ; $4a19: $e0 $c0
	ret  nz                                          ; $4a1b: $c0

	ret  nz                                          ; $4a1c: $c0

	ret  nz                                          ; $4a1d: $c0

	nop                                              ; $4a1e: $00
	nop                                              ; $4a1f: $00
	nop                                              ; $4a20: $00
	nop                                              ; $4a21: $00
	nop                                              ; $4a22: $00
	nop                                              ; $4a23: $00
	nop                                              ; $4a24: $00
	nop                                              ; $4a25: $00
	ld   bc, $0201                                   ; $4a26: $01 $01 $02
	inc  bc                                          ; $4a29: $03
	ld   [bc], a                                     ; $4a2a: $02
	inc  bc                                          ; $4a2b: $03
	inc  b                                           ; $4a2c: $04
	rlca                                             ; $4a2d: $07
	inc  b                                           ; $4a2e: $04
	rlca                                             ; $4a2f: $07
	dec  b                                           ; $4a30: $05
	rlca                                             ; $4a31: $07
	dec  b                                           ; $4a32: $05
	rlca                                             ; $4a33: $07
	dec  b                                           ; $4a34: $05
	rlca                                             ; $4a35: $07
	inc  bc                                          ; $4a36: $03
	inc  bc                                          ; $4a37: $03
	ld   bc, $0001                                   ; $4a38: $01 $01 $00
	nop                                              ; $4a3b: $00
	nop                                              ; $4a3c: $00
	nop                                              ; $4a3d: $00
	nop                                              ; $4a3e: $00
	nop                                              ; $4a3f: $00
	nop                                              ; $4a40: $00
	nop                                              ; $4a41: $00
	nop                                              ; $4a42: $00
	nop                                              ; $4a43: $00
	ld   a, [hl]                                     ; $4a44: $7e
	ld   a, [hl]                                     ; $4a45: $7e
	add  c                                           ; $4a46: $81
	rst  $38                                         ; $4a47: $ff
	nop                                              ; $4a48: $00
	rst  $38                                         ; $4a49: $ff
	jr   nz, @+$01                                   ; $4a4a: $20 $ff

	ld   h, b                                        ; $4a4c: $60
	rst  $38                                         ; $4a4d: $ff
	ldh  a, [c]                                      ; $4a4e: $f2
	sbc  a                                           ; $4a4f: $9f

jr_08d_4a50:
	pop  af                                          ; $4a50: $f1
	rra                                              ; $4a51: $1f

jr_08d_4a52:
	ld   sp, hl                                      ; $4a52: $f9
	rrca                                             ; $4a53: $0f

jr_08d_4a54:
	ld   sp, hl                                      ; $4a54: $f9
	rst  $28                                         ; $4a55: $ef

jr_08d_4a56:
	rst  $38                                         ; $4a56: $ff
	ld   l, a                                        ; $4a57: $6f
	rst  $38                                         ; $4a58: $ff
	nop                                              ; $4a59: $00
	rst  $38                                         ; $4a5a: $ff
	add  c                                           ; $4a5b: $81
	ld   a, [hl]                                     ; $4a5c: $7e
	ld   a, [hl]                                     ; $4a5d: $7e
	nop                                              ; $4a5e: $00
	nop                                              ; $4a5f: $00
	nop                                              ; $4a60: $00
	nop                                              ; $4a61: $00
	nop                                              ; $4a62: $00
	nop                                              ; $4a63: $00
	nop                                              ; $4a64: $00
	nop                                              ; $4a65: $00
	nop                                              ; $4a66: $00
	nop                                              ; $4a67: $00
	add  b                                           ; $4a68: $80
	add  b                                           ; $4a69: $80
	ld   b, b                                        ; $4a6a: $40
	ret  nz                                          ; $4a6b: $c0

	ld   b, b                                        ; $4a6c: $40
	ret  nz                                          ; $4a6d: $c0

	jr   nz, jr_08d_4a50                             ; $4a6e: $20 $e0

	jr   nz, jr_08d_4a52                             ; $4a70: $20 $e0

	jr   nz, jr_08d_4a54                             ; $4a72: $20 $e0

	jr   nz, jr_08d_4a56                             ; $4a74: $20 $e0

	ret  nz                                          ; $4a76: $c0

	ret  nz                                          ; $4a77: $c0

	add  b                                           ; $4a78: $80
	add  b                                           ; $4a79: $80
	nop                                              ; $4a7a: $00
	nop                                              ; $4a7b: $00
	nop                                              ; $4a7c: $00
	nop                                              ; $4a7d: $00
	nop                                              ; $4a7e: $00
	nop                                              ; $4a7f: $00
	nop                                              ; $4a80: $00
	nop                                              ; $4a81: $00
	nop                                              ; $4a82: $00
	nop                                              ; $4a83: $00
	nop                                              ; $4a84: $00
	nop                                              ; $4a85: $00
	ld   bc, $0201                                   ; $4a86: $01 $01 $02
	inc  bc                                          ; $4a89: $03
	ld   [bc], a                                     ; $4a8a: $02
	inc  bc                                          ; $4a8b: $03
	inc  b                                           ; $4a8c: $04
	rlca                                             ; $4a8d: $07
	inc  b                                           ; $4a8e: $04
	rlca                                             ; $4a8f: $07
	inc  b                                           ; $4a90: $04
	rlca                                             ; $4a91: $07
	dec  b                                           ; $4a92: $05
	rlca                                             ; $4a93: $07
	inc  bc                                          ; $4a94: $03
	inc  bc                                          ; $4a95: $03
	inc  bc                                          ; $4a96: $03
	inc  bc                                          ; $4a97: $03
	ld   bc, $0001                                   ; $4a98: $01 $01 $00
	nop                                              ; $4a9b: $00
	nop                                              ; $4a9c: $00
	nop                                              ; $4a9d: $00
	nop                                              ; $4a9e: $00
	nop                                              ; $4a9f: $00
	nop                                              ; $4aa0: $00
	nop                                              ; $4aa1: $00
	nop                                              ; $4aa2: $00
	nop                                              ; $4aa3: $00
	cp   $fe                                         ; $4aa4: $fe $fe
	ld   bc, $00ff                                   ; $4aa6: $01 $ff $00
	rst  $38                                         ; $4aa9: $ff
	nop                                              ; $4aaa: $00
	rst  $38                                         ; $4aab: $ff
	jr   nz, @+$01                                   ; $4aac: $20 $ff

jr_08d_4aae:
	ld   h, b                                        ; $4aae: $60
	rst  $38                                         ; $4aaf: $ff

jr_08d_4ab0:
	ldh  a, [c]                                      ; $4ab0: $f2
	sbc  a                                           ; $4ab1: $9f

jr_08d_4ab2:
	pop  af                                          ; $4ab2: $f1
	rra                                              ; $4ab3: $1f

jr_08d_4ab4:
	ld   sp, hl                                      ; $4ab4: $f9
	rrca                                             ; $4ab5: $0f

jr_08d_4ab6:
	ld   sp, hl                                      ; $4ab6: $f9
	rst  $28                                         ; $4ab7: $ef
	rst  $38                                         ; $4ab8: $ff
	ld   l, a                                        ; $4ab9: $6f
	rst  $38                                         ; $4aba: $ff
	add  c                                           ; $4abb: $81
	ld   a, [hl]                                     ; $4abc: $7e
	ld   a, [hl]                                     ; $4abd: $7e
	nop                                              ; $4abe: $00
	nop                                              ; $4abf: $00
	nop                                              ; $4ac0: $00
	nop                                              ; $4ac1: $00
	nop                                              ; $4ac2: $00
	nop                                              ; $4ac3: $00
	nop                                              ; $4ac4: $00
	nop                                              ; $4ac5: $00
	add  b                                           ; $4ac6: $80
	add  b                                           ; $4ac7: $80
	ld   b, b                                        ; $4ac8: $40
	ret  nz                                          ; $4ac9: $c0

	ld   b, b                                        ; $4aca: $40
	ret  nz                                          ; $4acb: $c0

	jr   nz, jr_08d_4aae                             ; $4acc: $20 $e0

	jr   nz, jr_08d_4ab0                             ; $4ace: $20 $e0

	jr   nz, jr_08d_4ab2                             ; $4ad0: $20 $e0

	jr   nz, jr_08d_4ab4                             ; $4ad2: $20 $e0

	jr   nz, jr_08d_4ab6                             ; $4ad4: $20 $e0

	ret  nz                                          ; $4ad6: $c0

	ret  nz                                          ; $4ad7: $c0

	add  b                                           ; $4ad8: $80
	add  b                                           ; $4ad9: $80
	nop                                              ; $4ada: $00
	nop                                              ; $4adb: $00
	nop                                              ; $4adc: $00
	nop                                              ; $4add: $00
	nop                                              ; $4ade: $00
	nop                                              ; $4adf: $00
	nop                                              ; $4ae0: $00
	nop                                              ; $4ae1: $00
	nop                                              ; $4ae2: $00
	nop                                              ; $4ae3: $00
	nop                                              ; $4ae4: $00
	nop                                              ; $4ae5: $00
	ld   bc, $0201                                   ; $4ae6: $01 $01 $02
	inc  bc                                          ; $4ae9: $03
	ld   [bc], a                                     ; $4aea: $02
	inc  bc                                          ; $4aeb: $03
	inc  b                                           ; $4aec: $04
	rlca                                             ; $4aed: $07
	inc  b                                           ; $4aee: $04
	rlca                                             ; $4aef: $07
	inc  b                                           ; $4af0: $04
	rlca                                             ; $4af1: $07
	dec  b                                           ; $4af2: $05
	rlca                                             ; $4af3: $07
	inc  bc                                          ; $4af4: $03
	inc  bc                                          ; $4af5: $03
	inc  bc                                          ; $4af6: $03
	inc  bc                                          ; $4af7: $03
	ld   bc, $0001                                   ; $4af8: $01 $01 $00
	nop                                              ; $4afb: $00
	nop                                              ; $4afc: $00
	nop                                              ; $4afd: $00
	nop                                              ; $4afe: $00
	nop                                              ; $4aff: $00
	nop                                              ; $4b00: $00
	nop                                              ; $4b01: $00
	nop                                              ; $4b02: $00
	nop                                              ; $4b03: $00
	cp   $fe                                         ; $4b04: $fe $fe
	ld   bc, $00ff                                   ; $4b06: $01 $ff $00
	rst  $38                                         ; $4b09: $ff
	nop                                              ; $4b0a: $00
	rst  $38                                         ; $4b0b: $ff
	jr   nz, @+$01                                   ; $4b0c: $20 $ff

jr_08d_4b0e:
	ld   h, b                                        ; $4b0e: $60
	rst  $38                                         ; $4b0f: $ff

jr_08d_4b10:
	ldh  a, [c]                                      ; $4b10: $f2
	sbc  a                                           ; $4b11: $9f

jr_08d_4b12:
	pop  af                                          ; $4b12: $f1
	rra                                              ; $4b13: $1f

jr_08d_4b14:
	ld   sp, hl                                      ; $4b14: $f9
	rrca                                             ; $4b15: $0f

jr_08d_4b16:
	ld   sp, hl                                      ; $4b16: $f9
	rrca                                             ; $4b17: $0f
	rst  $38                                         ; $4b18: $ff
	ld   l, a                                        ; $4b19: $6f
	rst  $38                                         ; $4b1a: $ff
	add  c                                           ; $4b1b: $81
	ld   a, [hl]                                     ; $4b1c: $7e
	ld   a, [hl]                                     ; $4b1d: $7e
	nop                                              ; $4b1e: $00
	nop                                              ; $4b1f: $00
	nop                                              ; $4b20: $00
	nop                                              ; $4b21: $00
	nop                                              ; $4b22: $00
	nop                                              ; $4b23: $00
	nop                                              ; $4b24: $00
	nop                                              ; $4b25: $00
	add  b                                           ; $4b26: $80
	add  b                                           ; $4b27: $80
	ld   b, b                                        ; $4b28: $40
	ret  nz                                          ; $4b29: $c0

	ld   b, b                                        ; $4b2a: $40
	ret  nz                                          ; $4b2b: $c0

	jr   nz, jr_08d_4b0e                             ; $4b2c: $20 $e0

	jr   nz, jr_08d_4b10                             ; $4b2e: $20 $e0

	jr   nz, jr_08d_4b12                             ; $4b30: $20 $e0

	jr   nz, jr_08d_4b14                             ; $4b32: $20 $e0

	jr   nz, jr_08d_4b16                             ; $4b34: $20 $e0

	ret  nz                                          ; $4b36: $c0

	ret  nz                                          ; $4b37: $c0

	add  b                                           ; $4b38: $80
	add  b                                           ; $4b39: $80
	nop                                              ; $4b3a: $00
	nop                                              ; $4b3b: $00
	nop                                              ; $4b3c: $00
	nop                                              ; $4b3d: $00
	nop                                              ; $4b3e: $00
	nop                                              ; $4b3f: $00
	nop                                              ; $4b40: $00
	nop                                              ; $4b41: $00
	inc  bc                                          ; $4b42: $03
	inc  bc                                          ; $4b43: $03
	inc  bc                                          ; $4b44: $03
	ld   [bc], a                                     ; $4b45: $02
	inc  bc                                          ; $4b46: $03
	ld   [bc], a                                     ; $4b47: $02
	inc  bc                                          ; $4b48: $03
	inc  bc                                          ; $4b49: $03
	ld   [bc], a                                     ; $4b4a: $02
	inc  bc                                          ; $4b4b: $03
	rlca                                             ; $4b4c: $07
	rlca                                             ; $4b4d: $07
	inc  b                                           ; $4b4e: $04
	rlca                                             ; $4b4f: $07
	inc  b                                           ; $4b50: $04
	rlca                                             ; $4b51: $07
	inc  b                                           ; $4b52: $04
	rlca                                             ; $4b53: $07
	dec  b                                           ; $4b54: $05
	rlca                                             ; $4b55: $07
	dec  b                                           ; $4b56: $05
	rlca                                             ; $4b57: $07
	dec  b                                           ; $4b58: $05
	rlca                                             ; $4b59: $07
	inc  bc                                          ; $4b5a: $03
	inc  bc                                          ; $4b5b: $03
	ld   bc, $0001                                   ; $4b5c: $01 $01 $00
	nop                                              ; $4b5f: $00
	nop                                              ; $4b60: $00
	nop                                              ; $4b61: $00
	jp   $ffc3                                       ; $4b62: $c3 $c3 $ff


	inc  a                                           ; $4b65: $3c
	rst  $38                                         ; $4b66: $ff
	inc  h                                           ; $4b67: $24
	sbc  c                                           ; $4b68: $99
	rst  $38                                         ; $4b69: $ff
	nop                                              ; $4b6a: $00
	rst  $38                                         ; $4b6b: $ff
	inc  a                                           ; $4b6c: $3c
	rst  $38                                         ; $4b6d: $ff
	inc  a                                           ; $4b6e: $3c
	rst  $20                                         ; $4b6f: $e7

jr_08d_4b70:
	ld   a, [hl]                                     ; $4b70: $7e
	rst  $20                                         ; $4b71: $e7

jr_08d_4b72:
	rst  $38                                         ; $4b72: $ff
	and  l                                           ; $4b73: $a5

jr_08d_4b74:
	rst  $38                                         ; $4b74: $ff
	rst  $20                                         ; $4b75: $e7
	rst  $38                                         ; $4b76: $ff
	ld   [hl+], a                                    ; $4b77: $22
	rst  $38                                         ; $4b78: $ff
	ld   h, [hl]                                     ; $4b79: $66
	rst  $38                                         ; $4b7a: $ff
	add  c                                           ; $4b7b: $81
	ld   a, [hl]                                     ; $4b7c: $7e
	ld   a, [hl]                                     ; $4b7d: $7e
	nop                                              ; $4b7e: $00
	nop                                              ; $4b7f: $00
	nop                                              ; $4b80: $00
	nop                                              ; $4b81: $00
	ret  nz                                          ; $4b82: $c0

	ret  nz                                          ; $4b83: $c0

	ret  nz                                          ; $4b84: $c0

	ld   b, b                                        ; $4b85: $40
	ret  nz                                          ; $4b86: $c0

	ld   b, b                                        ; $4b87: $40
	ret  nz                                          ; $4b88: $c0

	ret  nz                                          ; $4b89: $c0

	ld   b, b                                        ; $4b8a: $40
	ret  nz                                          ; $4b8b: $c0

	ldh  [$e0], a                                    ; $4b8c: $e0 $e0
	jr   nz, jr_08d_4b70                             ; $4b8e: $20 $e0

	jr   nz, jr_08d_4b72                             ; $4b90: $20 $e0

	jr   nz, jr_08d_4b74                             ; $4b92: $20 $e0

	and  b                                           ; $4b94: $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4b95: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4b97: $e0 $a0
	ldh  [$c0], a                                    ; $4b99: $e0 $c0
	ret  nz                                          ; $4b9b: $c0

	add  b                                           ; $4b9c: $80
	add  b                                           ; $4b9d: $80
	nop                                              ; $4b9e: $00
	nop                                              ; $4b9f: $00
	nop                                              ; $4ba0: $00
	nop                                              ; $4ba1: $00
	nop                                              ; $4ba2: $00
	nop                                              ; $4ba3: $00
	inc  bc                                          ; $4ba4: $03
	inc  bc                                          ; $4ba5: $03
	inc  bc                                          ; $4ba6: $03
	ld   [bc], a                                     ; $4ba7: $02
	inc  bc                                          ; $4ba8: $03
	ld   [bc], a                                     ; $4ba9: $02
	dec  b                                           ; $4baa: $05
	rlca                                             ; $4bab: $07
	dec  b                                           ; $4bac: $05
	rlca                                             ; $4bad: $07
	ld   b, $07                                      ; $4bae: $06 $07
	inc  b                                           ; $4bb0: $04
	rlca                                             ; $4bb1: $07
	inc  b                                           ; $4bb2: $04
	rlca                                             ; $4bb3: $07
	inc  b                                           ; $4bb4: $04
	rlca                                             ; $4bb5: $07
	dec  b                                           ; $4bb6: $05
	rlca                                             ; $4bb7: $07
	inc  bc                                          ; $4bb8: $03
	inc  bc                                          ; $4bb9: $03
	inc  bc                                          ; $4bba: $03
	inc  bc                                          ; $4bbb: $03
	ld   bc, $0001                                   ; $4bbc: $01 $01 $00
	nop                                              ; $4bbf: $00
	nop                                              ; $4bc0: $00
	nop                                              ; $4bc1: $00
	nop                                              ; $4bc2: $00
	nop                                              ; $4bc3: $00
	jp   $ffc3                                       ; $4bc4: $c3 $c3 $ff


	inc  a                                           ; $4bc7: $3c
	rst  $38                                         ; $4bc8: $ff
	ld   h, [hl]                                     ; $4bc9: $66
	sbc  c                                           ; $4bca: $99
	rst  $38                                         ; $4bcb: $ff
	nop                                              ; $4bcc: $00
	rst  $38                                         ; $4bcd: $ff
	inc  a                                           ; $4bce: $3c
	rst  $38                                         ; $4bcf: $ff
	inc  a                                           ; $4bd0: $3c
	rst  $20                                         ; $4bd1: $e7
	ld   a, [hl]                                     ; $4bd2: $7e
	rst  $20                                         ; $4bd3: $e7
	rst  $38                                         ; $4bd4: $ff
	and  l                                           ; $4bd5: $a5
	rst  $38                                         ; $4bd6: $ff
	rst  $20                                         ; $4bd7: $e7
	rst  $38                                         ; $4bd8: $ff
	ld   h, [hl]                                     ; $4bd9: $66
	rst  $38                                         ; $4bda: $ff
	add  c                                           ; $4bdb: $81
	ld   a, [hl]                                     ; $4bdc: $7e
	ld   a, [hl]                                     ; $4bdd: $7e
	nop                                              ; $4bde: $00
	nop                                              ; $4bdf: $00
	nop                                              ; $4be0: $00
	nop                                              ; $4be1: $00
	nop                                              ; $4be2: $00
	nop                                              ; $4be3: $00
	ret  nz                                          ; $4be4: $c0

	ret  nz                                          ; $4be5: $c0

	ret  nz                                          ; $4be6: $c0

	ld   b, b                                        ; $4be7: $40
	ret  nz                                          ; $4be8: $c0

	ld   b, b                                        ; $4be9: $40
	and  b                                           ; $4bea: $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4beb: $e0 $a0
	ldh  [$60], a                                    ; $4bed: $e0 $60
	ldh  [rAUD4LEN], a                               ; $4bef: $e0 $20
	ldh  [rAUD4LEN], a                               ; $4bf1: $e0 $20
	ldh  [rAUD4LEN], a                               ; $4bf3: $e0 $20
	ldh  [hScriptOpcodeParams], a                                    ; $4bf5: $e0 $a0
	ldh  [$c0], a                                    ; $4bf7: $e0 $c0
	ret  nz                                          ; $4bf9: $c0

	ret  nz                                          ; $4bfa: $c0

	ret  nz                                          ; $4bfb: $c0

	add  b                                           ; $4bfc: $80
	add  b                                           ; $4bfd: $80
	nop                                              ; $4bfe: $00
	nop                                              ; $4bff: $00
	nop                                              ; $4c00: $00
	nop                                              ; $4c01: $00
	nop                                              ; $4c02: $00
	nop                                              ; $4c03: $00
	inc  bc                                          ; $4c04: $03
	inc  bc                                          ; $4c05: $03
	inc  bc                                          ; $4c06: $03
	ld   [bc], a                                     ; $4c07: $02
	inc  bc                                          ; $4c08: $03
	ld   [bc], a                                     ; $4c09: $02
	dec  b                                           ; $4c0a: $05
	rlca                                             ; $4c0b: $07
	dec  b                                           ; $4c0c: $05
	rlca                                             ; $4c0d: $07
	ld   b, $07                                      ; $4c0e: $06 $07
	inc  b                                           ; $4c10: $04
	rlca                                             ; $4c11: $07
	inc  b                                           ; $4c12: $04
	rlca                                             ; $4c13: $07
	inc  b                                           ; $4c14: $04
	rlca                                             ; $4c15: $07
	dec  b                                           ; $4c16: $05
	rlca                                             ; $4c17: $07
	inc  bc                                          ; $4c18: $03
	inc  bc                                          ; $4c19: $03
	inc  bc                                          ; $4c1a: $03
	inc  bc                                          ; $4c1b: $03
	ld   bc, $0001                                   ; $4c1c: $01 $01 $00
	nop                                              ; $4c1f: $00
	nop                                              ; $4c20: $00
	nop                                              ; $4c21: $00
	nop                                              ; $4c22: $00
	nop                                              ; $4c23: $00
	jp   $ffc3                                       ; $4c24: $c3 $c3 $ff


	inc  a                                           ; $4c27: $3c
	rst  $38                                         ; $4c28: $ff
	ld   h, [hl]                                     ; $4c29: $66
	sbc  c                                           ; $4c2a: $99
	rst  $38                                         ; $4c2b: $ff
	nop                                              ; $4c2c: $00
	rst  $38                                         ; $4c2d: $ff
	inc  a                                           ; $4c2e: $3c
	rst  $38                                         ; $4c2f: $ff
	inc  a                                           ; $4c30: $3c
	rst  $20                                         ; $4c31: $e7
	ld   a, [hl]                                     ; $4c32: $7e
	rst  $20                                         ; $4c33: $e7
	rst  $38                                         ; $4c34: $ff
	and  l                                           ; $4c35: $a5
	rst  $38                                         ; $4c36: $ff
	nop                                              ; $4c37: $00
	rst  $38                                         ; $4c38: $ff
	ld   h, [hl]                                     ; $4c39: $66
	rst  $38                                         ; $4c3a: $ff
	add  c                                           ; $4c3b: $81
	ld   a, [hl]                                     ; $4c3c: $7e
	ld   a, [hl]                                     ; $4c3d: $7e
	nop                                              ; $4c3e: $00
	nop                                              ; $4c3f: $00
	nop                                              ; $4c40: $00
	nop                                              ; $4c41: $00
	nop                                              ; $4c42: $00
	nop                                              ; $4c43: $00
	ret  nz                                          ; $4c44: $c0

	ret  nz                                          ; $4c45: $c0

	ret  nz                                          ; $4c46: $c0

	ld   b, b                                        ; $4c47: $40
	ret  nz                                          ; $4c48: $c0

	ld   b, b                                        ; $4c49: $40
	and  b                                           ; $4c4a: $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4c4b: $e0 $a0
	ldh  [$60], a                                    ; $4c4d: $e0 $60
	ldh  [rAUD4LEN], a                               ; $4c4f: $e0 $20
	ldh  [rAUD4LEN], a                               ; $4c51: $e0 $20
	ldh  [rAUD4LEN], a                               ; $4c53: $e0 $20
	ldh  [hScriptOpcodeParams], a                                    ; $4c55: $e0 $a0
	ldh  [$c0], a                                    ; $4c57: $e0 $c0
	ret  nz                                          ; $4c59: $c0

	ret  nz                                          ; $4c5a: $c0

	ret  nz                                          ; $4c5b: $c0

	add  b                                           ; $4c5c: $80
	add  b                                           ; $4c5d: $80
	nop                                              ; $4c5e: $00
	nop                                              ; $4c5f: $00
	nop                                              ; $4c60: $00
	nop                                              ; $4c61: $00
	nop                                              ; $4c62: $00
	nop                                              ; $4c63: $00
	nop                                              ; $4c64: $00
	nop                                              ; $4c65: $00
	rlca                                             ; $4c66: $07
	rlca                                             ; $4c67: $07
	inc  bc                                          ; $4c68: $03
	inc  bc                                          ; $4c69: $03
	ld   [bc], a                                     ; $4c6a: $02
	inc  bc                                          ; $4c6b: $03
	inc  b                                           ; $4c6c: $04
	rlca                                             ; $4c6d: $07
	inc  b                                           ; $4c6e: $04
	rlca                                             ; $4c6f: $07
	inc  b                                           ; $4c70: $04
	rlca                                             ; $4c71: $07
	dec  b                                           ; $4c72: $05
	rlca                                             ; $4c73: $07
	dec  b                                           ; $4c74: $05
	rlca                                             ; $4c75: $07
	inc  bc                                          ; $4c76: $03
	inc  bc                                          ; $4c77: $03
	dec  c                                           ; $4c78: $0d
	rrca                                             ; $4c79: $0f
	add  hl, bc                                      ; $4c7a: $09
	rrca                                             ; $4c7b: $0f
	ld   c, $0e                                      ; $4c7c: $0e $0e
	nop                                              ; $4c7e: $00
	nop                                              ; $4c7f: $00
	nop                                              ; $4c80: $00
	nop                                              ; $4c81: $00
	nop                                              ; $4c82: $00
	nop                                              ; $4c83: $00
	rst  $30                                         ; $4c84: $f7
	rst  $30                                         ; $4c85: $f7
	ld   [$80ff], sp                                 ; $4c86: $08 $ff $80
	rst  $38                                         ; $4c89: $ff
	jr   nz, @+$01                                   ; $4c8a: $20 $ff

jr_08d_4c8c:
	jr   nz, @+$01                                   ; $4c8c: $20 $ff

	and  h                                           ; $4c8e: $a4
	rst  $38                                         ; $4c8f: $ff
	rst  $20                                         ; $4c90: $e7
	rst  $38                                         ; $4c91: $ff
	rst  $20                                         ; $4c92: $e7
	inc  a                                           ; $4c93: $3c
	rst  $38                                         ; $4c94: $ff
	jr   @+$01                                       ; $4c95: $18 $ff

	jr   @+$01                                       ; $4c97: $18 $ff

	rst  $20                                         ; $4c99: $e7
	rst  $38                                         ; $4c9a: $ff
	add  c                                           ; $4c9b: $81
	ld   a, [hl]                                     ; $4c9c: $7e
	ld   a, [hl]                                     ; $4c9d: $7e
	nop                                              ; $4c9e: $00
	nop                                              ; $4c9f: $00
	nop                                              ; $4ca0: $00
	nop                                              ; $4ca1: $00
	nop                                              ; $4ca2: $00
	nop                                              ; $4ca3: $00
	nop                                              ; $4ca4: $00
	nop                                              ; $4ca5: $00
	add  b                                           ; $4ca6: $80
	add  b                                           ; $4ca7: $80
	ld   b, b                                        ; $4ca8: $40
	ret  nz                                          ; $4ca9: $c0

	jr   nz, jr_08d_4c8c                             ; $4caa: $20 $e0

	and  b                                           ; $4cac: $a0
	ldh  [$60], a                                    ; $4cad: $e0 $60
	ldh  [rAUD4LEN], a                               ; $4caf: $e0 $20
	ldh  [hScriptOpcodeParams], a                                    ; $4cb1: $e0 $a0
	ldh  [hScriptOpcodeParams], a                                    ; $4cb3: $e0 $a0
	ldh  [$c0], a                                    ; $4cb5: $e0 $c0
	ret  nz                                          ; $4cb7: $c0

	or   b                                           ; $4cb8: $b0
	ldh  a, [$90]                                    ; $4cb9: $f0 $90
	ldh  a, [rSVBK]                                  ; $4cbb: $f0 $70
	ld   [hl], b                                     ; $4cbd: $70
	nop                                              ; $4cbe: $00
	nop                                              ; $4cbf: $00
	nop                                              ; $4cc0: $00
	nop                                              ; $4cc1: $00
	nop                                              ; $4cc2: $00
	nop                                              ; $4cc3: $00
	nop                                              ; $4cc4: $00
	nop                                              ; $4cc5: $00
	ld   bc, $0701                                   ; $4cc6: $01 $01 $07
	rlca                                             ; $4cc9: $07
	ld   [bc], a                                     ; $4cca: $02
	inc  bc                                          ; $4ccb: $03
	inc  b                                           ; $4ccc: $04
	rlca                                             ; $4ccd: $07
	inc  b                                           ; $4cce: $04
	rlca                                             ; $4ccf: $07
	inc  b                                           ; $4cd0: $04
	rlca                                             ; $4cd1: $07
	inc  b                                           ; $4cd2: $04
	rlca                                             ; $4cd3: $07
	rlca                                             ; $4cd4: $07
	rlca                                             ; $4cd5: $07
	rrca                                             ; $4cd6: $0f
	rrca                                             ; $4cd7: $0f
	add  hl, bc                                      ; $4cd8: $09
	rrca                                             ; $4cd9: $0f
	rrca                                             ; $4cda: $0f
	rrca                                             ; $4cdb: $0f
	nop                                              ; $4cdc: $00
	nop                                              ; $4cdd: $00
	nop                                              ; $4cde: $00
	nop                                              ; $4cdf: $00
	nop                                              ; $4ce0: $00
	nop                                              ; $4ce1: $00
	nop                                              ; $4ce2: $00
	nop                                              ; $4ce3: $00
	halt                                             ; $4ce4: $76
	halt                                             ; $4ce5: $76
	adc  c                                           ; $4ce6: $89
	rst  $38                                         ; $4ce7: $ff
	adc  b                                           ; $4ce8: $88
	rst  $38                                         ; $4ce9: $ff
	nop                                              ; $4cea: $00
	rst  $38                                         ; $4ceb: $ff

jr_08d_4cec:
	jr   nz, @+$01                                   ; $4cec: $20 $ff

jr_08d_4cee:
	jr   nz, @+$01                                   ; $4cee: $20 $ff

	and  h                                           ; $4cf0: $a4
	rst  $38                                         ; $4cf1: $ff
	rst  $20                                         ; $4cf2: $e7
	rst  $38                                         ; $4cf3: $ff
	rst  $20                                         ; $4cf4: $e7
	inc  a                                           ; $4cf5: $3c
	rst  $38                                         ; $4cf6: $ff
	jr   @+$01                                       ; $4cf7: $18 $ff

	jr   @+$01                                       ; $4cf9: $18 $ff

	rst  $20                                         ; $4cfb: $e7
	ld   a, [hl]                                     ; $4cfc: $7e
	ld   a, [hl]                                     ; $4cfd: $7e
	nop                                              ; $4cfe: $00
	nop                                              ; $4cff: $00
	nop                                              ; $4d00: $00
	nop                                              ; $4d01: $00
	nop                                              ; $4d02: $00
	nop                                              ; $4d03: $00
	nop                                              ; $4d04: $00
	nop                                              ; $4d05: $00
	add  b                                           ; $4d06: $80
	add  b                                           ; $4d07: $80
	ld   b, b                                        ; $4d08: $40
	ret  nz                                          ; $4d09: $c0

	jr   nz, jr_08d_4cec                             ; $4d0a: $20 $e0

	jr   nz, jr_08d_4cee                             ; $4d0c: $20 $e0

	and  b                                           ; $4d0e: $a0
	ldh  [$60], a                                    ; $4d0f: $e0 $60
	ldh  [rAUD4LEN], a                               ; $4d11: $e0 $20
	ldh  [$e0], a                                    ; $4d13: $e0 $e0
	ldh  [$f0], a                                    ; $4d15: $e0 $f0
	ldh  a, [$90]                                    ; $4d17: $f0 $90
	ldh  a, [$f0]                                    ; $4d19: $f0 $f0
	ldh  a, [rP1]                                    ; $4d1b: $f0 $00
	nop                                              ; $4d1d: $00
	nop                                              ; $4d1e: $00
	nop                                              ; $4d1f: $00
	nop                                              ; $4d20: $00
	nop                                              ; $4d21: $00
	nop                                              ; $4d22: $00
	nop                                              ; $4d23: $00
	nop                                              ; $4d24: $00
	nop                                              ; $4d25: $00
	ld   bc, $0701                                   ; $4d26: $01 $01 $07
	rlca                                             ; $4d29: $07
	ld   [bc], a                                     ; $4d2a: $02
	inc  bc                                          ; $4d2b: $03
	inc  b                                           ; $4d2c: $04
	rlca                                             ; $4d2d: $07
	inc  b                                           ; $4d2e: $04
	rlca                                             ; $4d2f: $07
	inc  b                                           ; $4d30: $04
	rlca                                             ; $4d31: $07
	inc  b                                           ; $4d32: $04
	rlca                                             ; $4d33: $07
	rlca                                             ; $4d34: $07
	rlca                                             ; $4d35: $07
	rrca                                             ; $4d36: $0f
	rrca                                             ; $4d37: $0f
	add  hl, bc                                      ; $4d38: $09
	rrca                                             ; $4d39: $0f
	rrca                                             ; $4d3a: $0f
	rrca                                             ; $4d3b: $0f
	nop                                              ; $4d3c: $00
	nop                                              ; $4d3d: $00
	nop                                              ; $4d3e: $00
	nop                                              ; $4d3f: $00
	nop                                              ; $4d40: $00
	nop                                              ; $4d41: $00
	nop                                              ; $4d42: $00
	nop                                              ; $4d43: $00
	halt                                             ; $4d44: $76
	halt                                             ; $4d45: $76
	adc  c                                           ; $4d46: $89
	rst  $38                                         ; $4d47: $ff
	adc  b                                           ; $4d48: $88
	rst  $38                                         ; $4d49: $ff
	nop                                              ; $4d4a: $00
	rst  $38                                         ; $4d4b: $ff

jr_08d_4d4c:
	jr   nz, @+$01                                   ; $4d4c: $20 $ff

jr_08d_4d4e:
	jr   nz, @+$01                                   ; $4d4e: $20 $ff

	and  h                                           ; $4d50: $a4
	rst  $38                                         ; $4d51: $ff
	rst  $20                                         ; $4d52: $e7
	rst  $38                                         ; $4d53: $ff
	rst  $20                                         ; $4d54: $e7
	inc  a                                           ; $4d55: $3c
	rst  $38                                         ; $4d56: $ff
	jr   @+$01                                       ; $4d57: $18 $ff

	jr   @+$01                                       ; $4d59: $18 $ff

	rst  $20                                         ; $4d5b: $e7
	ld   a, [hl]                                     ; $4d5c: $7e
	ld   a, [hl]                                     ; $4d5d: $7e
	nop                                              ; $4d5e: $00
	nop                                              ; $4d5f: $00
	nop                                              ; $4d60: $00
	nop                                              ; $4d61: $00
	nop                                              ; $4d62: $00
	nop                                              ; $4d63: $00
	nop                                              ; $4d64: $00
	nop                                              ; $4d65: $00
	add  b                                           ; $4d66: $80
	add  b                                           ; $4d67: $80
	ld   b, b                                        ; $4d68: $40
	ret  nz                                          ; $4d69: $c0

	jr   nz, jr_08d_4d4c                             ; $4d6a: $20 $e0

	jr   nz, jr_08d_4d4e                             ; $4d6c: $20 $e0

	and  b                                           ; $4d6e: $a0
	ldh  [$60], a                                    ; $4d6f: $e0 $60
	ldh  [rAUD4LEN], a                               ; $4d71: $e0 $20
	ldh  [$e0], a                                    ; $4d73: $e0 $e0
	ldh  [$f0], a                                    ; $4d75: $e0 $f0
	ldh  a, [$90]                                    ; $4d77: $f0 $90
	ldh  a, [$f0]                                    ; $4d79: $f0 $f0
	ldh  a, [rP1]                                    ; $4d7b: $f0 $00
	nop                                              ; $4d7d: $00
	nop                                              ; $4d7e: $00
	nop                                              ; $4d7f: $00
	nop                                              ; $4d80: $00
	nop                                              ; $4d81: $00
	nop                                              ; $4d82: $00
	nop                                              ; $4d83: $00
	ld   bc, $0001                                   ; $4d84: $01 $01 $00
	nop                                              ; $4d87: $00
	inc  bc                                          ; $4d88: $03
	inc  bc                                          ; $4d89: $03
	inc  b                                           ; $4d8a: $04
	rlca                                             ; $4d8b: $07
	ld   c, $0f                                      ; $4d8c: $0e $0f
	inc  b                                           ; $4d8e: $04
	rlca                                             ; $4d8f: $07
	inc  b                                           ; $4d90: $04
	rlca                                             ; $4d91: $07
	dec  b                                           ; $4d92: $05
	rlca                                             ; $4d93: $07
	dec  b                                           ; $4d94: $05
	rlca                                             ; $4d95: $07
	dec  b                                           ; $4d96: $05
	rlca                                             ; $4d97: $07
	dec  b                                           ; $4d98: $05
	rlca                                             ; $4d99: $07
	ld   [bc], a                                     ; $4d9a: $02
	ld   [bc], a                                     ; $4d9b: $02
	ld   [bc], a                                     ; $4d9c: $02
	ld   [bc], a                                     ; $4d9d: $02
	nop                                              ; $4d9e: $00
	nop                                              ; $4d9f: $00
	nop                                              ; $4da0: $00
	nop                                              ; $4da1: $00
	nop                                              ; $4da2: $00
	nop                                              ; $4da3: $00
	ei                                               ; $4da4: $fb
	ei                                               ; $4da5: $fb
	add  h                                           ; $4da6: $84
	rst  $38                                         ; $4da7: $ff
	nop                                              ; $4da8: $00
	rst  $38                                         ; $4da9: $ff
	inc  b                                           ; $4daa: $04
	rst  $38                                         ; $4dab: $ff

jr_08d_4dac:
	ld   l, $ff                                      ; $4dac: $2e $ff
	ld   l, [hl]                                     ; $4dae: $6e
	rst  $38                                         ; $4daf: $ff
	rst  $38                                         ; $4db0: $ff
	sbc  a                                           ; $4db1: $9f
	rst  $38                                         ; $4db2: $ff
	db   $10                                         ; $4db3: $10
	rst  $38                                         ; $4db4: $ff
	rst  $20                                         ; $4db5: $e7
	rst  $38                                         ; $4db6: $ff
	ld   h, [hl]                                     ; $4db7: $66
	rst  $38                                         ; $4db8: $ff
	nop                                              ; $4db9: $00
	rst  $38                                         ; $4dba: $ff
	add  c                                           ; $4dbb: $81
	ld   a, [hl]                                     ; $4dbc: $7e
	ld   a, [hl]                                     ; $4dbd: $7e
	nop                                              ; $4dbe: $00
	nop                                              ; $4dbf: $00
	nop                                              ; $4dc0: $00
	nop                                              ; $4dc1: $00
	nop                                              ; $4dc2: $00
	nop                                              ; $4dc3: $00
	nop                                              ; $4dc4: $00
	nop                                              ; $4dc5: $00
	add  b                                           ; $4dc6: $80
	add  b                                           ; $4dc7: $80
	ld   b, b                                        ; $4dc8: $40
	ret  nz                                          ; $4dc9: $c0

	jr   nz, jr_08d_4dac                             ; $4dca: $20 $e0

	ld   [hl], b                                     ; $4dcc: $70
	ldh  a, [rAUD4LEN]                               ; $4dcd: $f0 $20
	ldh  [rAUD4LEN], a                               ; $4dcf: $e0 $20
	ldh  [hScriptOpcodeParams], a                                    ; $4dd1: $e0 $a0
	ldh  [$e0], a                                    ; $4dd3: $e0 $e0
	ldh  [$b0], a                                    ; $4dd5: $e0 $b0
	ldh  a, [hScriptOpcodeParams]                                    ; $4dd7: $f0 $a0
	ldh  [rLCDC], a                                  ; $4dd9: $e0 $40
	ld   b, b                                        ; $4ddb: $40
	ld   b, b                                        ; $4ddc: $40
	ld   b, b                                        ; $4ddd: $40
	nop                                              ; $4dde: $00
	nop                                              ; $4ddf: $00
	nop                                              ; $4de0: $00
	nop                                              ; $4de1: $00
	nop                                              ; $4de2: $00
	nop                                              ; $4de3: $00
	nop                                              ; $4de4: $00
	nop                                              ; $4de5: $00
	ld   bc, $0301                                   ; $4de6: $01 $01 $03
	inc  bc                                          ; $4de9: $03
	inc  b                                           ; $4dea: $04
	rlca                                             ; $4deb: $07
	inc  b                                           ; $4dec: $04
	rlca                                             ; $4ded: $07
	ld   c, $0f                                      ; $4dee: $0e $0f
	inc  b                                           ; $4df0: $04
	rlca                                             ; $4df1: $07
	inc  b                                           ; $4df2: $04
	rlca                                             ; $4df3: $07
	dec  b                                           ; $4df4: $05
	rlca                                             ; $4df5: $07
	dec  b                                           ; $4df6: $05
	rlca                                             ; $4df7: $07
	inc  bc                                          ; $4df8: $03
	inc  bc                                          ; $4df9: $03
	ld   [bc], a                                     ; $4dfa: $02
	ld   [bc], a                                     ; $4dfb: $02
	ld   [bc], a                                     ; $4dfc: $02
	ld   [bc], a                                     ; $4dfd: $02
	nop                                              ; $4dfe: $00
	nop                                              ; $4dff: $00
	nop                                              ; $4e00: $00
	nop                                              ; $4e01: $00
	nop                                              ; $4e02: $00
	nop                                              ; $4e03: $00
	ei                                               ; $4e04: $fb
	ei                                               ; $4e05: $fb
	inc  b                                           ; $4e06: $04
	rst  $38                                         ; $4e07: $ff
	add  h                                           ; $4e08: $84
	rst  $38                                         ; $4e09: $ff
	nop                                              ; $4e0a: $00
	rst  $38                                         ; $4e0b: $ff
	inc  b                                           ; $4e0c: $04
	rst  $38                                         ; $4e0d: $ff

jr_08d_4e0e:
	ld   l, $ff                                      ; $4e0e: $2e $ff
	ld   l, [hl]                                     ; $4e10: $6e
	rst  $38                                         ; $4e11: $ff
	rst  $38                                         ; $4e12: $ff
	sbc  a                                           ; $4e13: $9f
	rst  $38                                         ; $4e14: $ff
	db   $10                                         ; $4e15: $10
	rst  $38                                         ; $4e16: $ff
	rst  $20                                         ; $4e17: $e7
	rst  $38                                         ; $4e18: $ff
	ld   h, [hl]                                     ; $4e19: $66
	rst  $38                                         ; $4e1a: $ff
	add  c                                           ; $4e1b: $81
	ld   a, [hl]                                     ; $4e1c: $7e
	ld   a, [hl]                                     ; $4e1d: $7e
	nop                                              ; $4e1e: $00
	nop                                              ; $4e1f: $00
	nop                                              ; $4e20: $00
	nop                                              ; $4e21: $00
	nop                                              ; $4e22: $00
	nop                                              ; $4e23: $00
	nop                                              ; $4e24: $00
	nop                                              ; $4e25: $00
	add  b                                           ; $4e26: $80
	add  b                                           ; $4e27: $80
	ld   b, b                                        ; $4e28: $40
	ret  nz                                          ; $4e29: $c0

	ld   b, b                                        ; $4e2a: $40
	ret  nz                                          ; $4e2b: $c0

	jr   nz, jr_08d_4e0e                             ; $4e2c: $20 $e0

	ld   [hl], b                                     ; $4e2e: $70
	ldh  a, [rAUD4LEN]                               ; $4e2f: $f0 $20
	ldh  [rAUD4LEN], a                               ; $4e31: $e0 $20
	ldh  [$b0], a                                    ; $4e33: $e0 $b0
	ldh  a, [$e0]                                    ; $4e35: $f0 $e0
	ldh  [$c0], a                                    ; $4e37: $e0 $c0
	ret  nz                                          ; $4e39: $c0

	ld   b, b                                        ; $4e3a: $40
	ld   b, b                                        ; $4e3b: $40
	ld   b, b                                        ; $4e3c: $40
	ld   b, b                                        ; $4e3d: $40
	nop                                              ; $4e3e: $00
	nop                                              ; $4e3f: $00
	nop                                              ; $4e40: $00
	nop                                              ; $4e41: $00
	nop                                              ; $4e42: $00
	nop                                              ; $4e43: $00
	nop                                              ; $4e44: $00
	nop                                              ; $4e45: $00
	ld   bc, $0301                                   ; $4e46: $01 $01 $03
	inc  bc                                          ; $4e49: $03
	inc  b                                           ; $4e4a: $04
	rlca                                             ; $4e4b: $07
	inc  b                                           ; $4e4c: $04
	rlca                                             ; $4e4d: $07
	ld   c, $0f                                      ; $4e4e: $0e $0f
	inc  b                                           ; $4e50: $04
	rlca                                             ; $4e51: $07
	inc  b                                           ; $4e52: $04
	rlca                                             ; $4e53: $07
	dec  b                                           ; $4e54: $05
	rlca                                             ; $4e55: $07
	dec  b                                           ; $4e56: $05
	rlca                                             ; $4e57: $07
	inc  bc                                          ; $4e58: $03
	inc  bc                                          ; $4e59: $03
	ld   [bc], a                                     ; $4e5a: $02
	ld   [bc], a                                     ; $4e5b: $02
	ld   [bc], a                                     ; $4e5c: $02
	ld   [bc], a                                     ; $4e5d: $02
	nop                                              ; $4e5e: $00
	nop                                              ; $4e5f: $00
	nop                                              ; $4e60: $00
	nop                                              ; $4e61: $00
	nop                                              ; $4e62: $00
	nop                                              ; $4e63: $00
	ei                                               ; $4e64: $fb
	ei                                               ; $4e65: $fb
	inc  b                                           ; $4e66: $04
	rst  $38                                         ; $4e67: $ff
	add  h                                           ; $4e68: $84
	rst  $38                                         ; $4e69: $ff
	nop                                              ; $4e6a: $00
	rst  $38                                         ; $4e6b: $ff
	inc  b                                           ; $4e6c: $04
	rst  $38                                         ; $4e6d: $ff

jr_08d_4e6e:
	ld   l, $ff                                      ; $4e6e: $2e $ff
	ld   l, [hl]                                     ; $4e70: $6e
	rst  $38                                         ; $4e71: $ff
	rst  $38                                         ; $4e72: $ff
	sbc  a                                           ; $4e73: $9f
	rst  $38                                         ; $4e74: $ff
	db   $10                                         ; $4e75: $10
	rst  $38                                         ; $4e76: $ff
	nop                                              ; $4e77: $00
	rst  $38                                         ; $4e78: $ff
	ld   h, [hl]                                     ; $4e79: $66
	rst  $38                                         ; $4e7a: $ff
	add  c                                           ; $4e7b: $81
	ld   a, [hl]                                     ; $4e7c: $7e
	ld   a, [hl]                                     ; $4e7d: $7e
	nop                                              ; $4e7e: $00
	nop                                              ; $4e7f: $00
	nop                                              ; $4e80: $00
	nop                                              ; $4e81: $00
	nop                                              ; $4e82: $00
	nop                                              ; $4e83: $00
	nop                                              ; $4e84: $00
	nop                                              ; $4e85: $00
	add  b                                           ; $4e86: $80
	add  b                                           ; $4e87: $80
	ld   b, b                                        ; $4e88: $40
	ret  nz                                          ; $4e89: $c0

	ld   b, b                                        ; $4e8a: $40
	ret  nz                                          ; $4e8b: $c0

	jr   nz, jr_08d_4e6e                             ; $4e8c: $20 $e0

	ld   [hl], b                                     ; $4e8e: $70
	ldh  a, [rAUD4LEN]                               ; $4e8f: $f0 $20
	ldh  [rAUD4LEN], a                               ; $4e91: $e0 $20
	ldh  [$b0], a                                    ; $4e93: $e0 $b0
	ldh  a, [$e0]                                    ; $4e95: $f0 $e0
	ldh  [$c0], a                                    ; $4e97: $e0 $c0
	ret  nz                                          ; $4e99: $c0

	ld   b, b                                        ; $4e9a: $40
	ld   b, b                                        ; $4e9b: $40
	ld   b, b                                        ; $4e9c: $40
	ld   b, b                                        ; $4e9d: $40
	nop                                              ; $4e9e: $00
	nop                                              ; $4e9f: $00
	nop                                              ; $4ea0: $00
	nop                                              ; $4ea1: $00
	nop                                              ; $4ea2: $00
	nop                                              ; $4ea3: $00
	nop                                              ; $4ea4: $00
	nop                                              ; $4ea5: $00
	nop                                              ; $4ea6: $00
	nop                                              ; $4ea7: $00
	ld   bc, $1601                                   ; $4ea8: $01 $01 $16
	rla                                              ; $4eab: $17
	add  hl, bc                                      ; $4eac: $09
	rrca                                             ; $4ead: $0f
	ld   d, d                                        ; $4eae: $52
	ld   e, a                                        ; $4eaf: $5f
	inc  l                                           ; $4eb0: $2c
	ccf                                              ; $4eb1: $3f
	inc  h                                           ; $4eb2: $24
	ccf                                              ; $4eb3: $3f
	ld   c, c                                        ; $4eb4: $49
	ld   a, a                                        ; $4eb5: $7f
	ld   c, l                                        ; $4eb6: $4d
	ld   a, a                                        ; $4eb7: $7f
	ld   c, e                                        ; $4eb8: $4b
	ld   a, a                                        ; $4eb9: $7f
	ld   a, a                                        ; $4eba: $7f
	ld   a, a                                        ; $4ebb: $7f
	ld   a, a                                        ; $4ebc: $7f
	nop                                              ; $4ebd: $00
	nop                                              ; $4ebe: $00
	nop                                              ; $4ebf: $00
	nop                                              ; $4ec0: $00
	nop                                              ; $4ec1: $00
	nop                                              ; $4ec2: $00
	nop                                              ; $4ec3: $00
	nop                                              ; $4ec4: $00
	nop                                              ; $4ec5: $00
	nop                                              ; $4ec6: $00
	nop                                              ; $4ec7: $00
	rst  $38                                         ; $4ec8: $ff
	rst  $38                                         ; $4ec9: $ff
	sub  $ff                                         ; $4eca: $d6 $ff
	ld   d, l                                        ; $4ecc: $55
	rst  $38                                         ; $4ecd: $ff

jr_08d_4ece:
	sub  [hl]                                        ; $4ece: $96
	rst  $38                                         ; $4ecf: $ff
	jp   c, $b2ff                                    ; $4ed0: $da $ff $b2

	rst  $38                                         ; $4ed3: $ff
	dec  d                                           ; $4ed4: $15
	rst  $38                                         ; $4ed5: $ff
	ld   e, c                                        ; $4ed6: $59
	rst  $38                                         ; $4ed7: $ff
	ld   sp, $ffff                                   ; $4ed8: $31 $ff $ff
	rst  $38                                         ; $4edb: $ff
	rst  $38                                         ; $4edc: $ff
	nop                                              ; $4edd: $00
	nop                                              ; $4ede: $00
	nop                                              ; $4edf: $00
	nop                                              ; $4ee0: $00
	nop                                              ; $4ee1: $00
	nop                                              ; $4ee2: $00
	nop                                              ; $4ee3: $00
	nop                                              ; $4ee4: $00
	nop                                              ; $4ee5: $00
	nop                                              ; $4ee6: $00
	nop                                              ; $4ee7: $00
	nop                                              ; $4ee8: $00
	nop                                              ; $4ee9: $00
	ret  nc                                          ; $4eea: $d0

	ret  nc                                          ; $4eeb: $d0

	jr   nz, jr_08d_4ece                             ; $4eec: $20 $e0

	sub  h                                           ; $4eee: $94
	db   $f4                                         ; $4eef: $f4
	ld   l, b                                        ; $4ef0: $68
	ld   hl, sp+$48                                  ; $4ef1: $f8 $48
	ld   hl, sp+$24                                  ; $4ef3: $f8 $24
	db   $fc                                         ; $4ef5: $fc
	ld   h, h                                        ; $4ef6: $64
	db   $fc                                         ; $4ef7: $fc
	and  h                                           ; $4ef8: $a4
	db   $fc                                         ; $4ef9: $fc
	rst  $38                                         ; $4efa: $ff
	rst  $38                                         ; $4efb: $ff
	rst  $38                                         ; $4efc: $ff
	ld   bc, $0000                                   ; $4efd: $01 $00 $00
	nop                                              ; $4f00: $00
	nop                                              ; $4f01: $00
	nop                                              ; $4f02: $00
	nop                                              ; $4f03: $00
	nop                                              ; $4f04: $00
	nop                                              ; $4f05: $00
	nop                                              ; $4f06: $00
	nop                                              ; $4f07: $00
	ld   bc, $1601                                   ; $4f08: $01 $01 $16
	rla                                              ; $4f0b: $17
	add  hl, bc                                      ; $4f0c: $09
	rrca                                             ; $4f0d: $0f
	ld   d, d                                        ; $4f0e: $52
	ld   e, a                                        ; $4f0f: $5f
	inc  l                                           ; $4f10: $2c
	ccf                                              ; $4f11: $3f
	inc  h                                           ; $4f12: $24
	ccf                                              ; $4f13: $3f
	ld   c, c                                        ; $4f14: $49
	ld   a, a                                        ; $4f15: $7f
	ld   c, l                                        ; $4f16: $4d
	ld   a, a                                        ; $4f17: $7f
	ld   c, e                                        ; $4f18: $4b
	ld   a, a                                        ; $4f19: $7f
	ld   a, a                                        ; $4f1a: $7f
	ld   a, a                                        ; $4f1b: $7f
	ld   a, a                                        ; $4f1c: $7f
	nop                                              ; $4f1d: $00
	nop                                              ; $4f1e: $00
	nop                                              ; $4f1f: $00
	nop                                              ; $4f20: $00
	nop                                              ; $4f21: $00
	nop                                              ; $4f22: $00
	nop                                              ; $4f23: $00
	db   $10                                         ; $4f24: $10
	db   $10                                         ; $4f25: $10
	jr   z, jr_08d_4f50                              ; $4f26: $28 $28

	rst  ToBoot                                         ; $4f28: $c7
	rst  ToBoot                                         ; $4f29: $c7
	xor  $ef                                         ; $4f2a: $ee $ef
	ld   d, l                                        ; $4f2c: $55
	rst  $38                                         ; $4f2d: $ff

jr_08d_4f2e:
	sub  [hl]                                        ; $4f2e: $96
	rst  $38                                         ; $4f2f: $ff
	jp   c, $b2ff                                    ; $4f30: $da $ff $b2

	rst  $38                                         ; $4f33: $ff
	dec  d                                           ; $4f34: $15
	rst  $38                                         ; $4f35: $ff
	ld   e, c                                        ; $4f36: $59
	rst  $38                                         ; $4f37: $ff
	ld   sp, $ffff                                   ; $4f38: $31 $ff $ff
	rst  $38                                         ; $4f3b: $ff
	rst  $38                                         ; $4f3c: $ff
	nop                                              ; $4f3d: $00
	nop                                              ; $4f3e: $00
	nop                                              ; $4f3f: $00
	nop                                              ; $4f40: $00
	nop                                              ; $4f41: $00
	nop                                              ; $4f42: $00
	nop                                              ; $4f43: $00
	nop                                              ; $4f44: $00
	nop                                              ; $4f45: $00
	nop                                              ; $4f46: $00
	nop                                              ; $4f47: $00
	nop                                              ; $4f48: $00
	nop                                              ; $4f49: $00
	ret  nc                                          ; $4f4a: $d0

	ret  nc                                          ; $4f4b: $d0

	jr   nz, jr_08d_4f2e                             ; $4f4c: $20 $e0

	sub  h                                           ; $4f4e: $94
	db   $f4                                         ; $4f4f: $f4

jr_08d_4f50:
	ld   l, b                                        ; $4f50: $68
	ld   hl, sp+$48                                  ; $4f51: $f8 $48
	ld   hl, sp+$24                                  ; $4f53: $f8 $24
	db   $fc                                         ; $4f55: $fc
	ld   h, h                                        ; $4f56: $64
	db   $fc                                         ; $4f57: $fc
	and  h                                           ; $4f58: $a4
	db   $fc                                         ; $4f59: $fc
	rst  $38                                         ; $4f5a: $ff
	rst  $38                                         ; $4f5b: $ff
	rst  $38                                         ; $4f5c: $ff
	ld   bc, $0000                                   ; $4f5d: $01 $00 $00
	nop                                              ; $4f60: $00
	nop                                              ; $4f61: $00
	nop                                              ; $4f62: $00
	nop                                              ; $4f63: $00
	nop                                              ; $4f64: $00
	nop                                              ; $4f65: $00
	nop                                              ; $4f66: $00
	nop                                              ; $4f67: $00
	ld   bc, $1601                                   ; $4f68: $01 $01 $16
	rla                                              ; $4f6b: $17
	add  hl, bc                                      ; $4f6c: $09
	rrca                                             ; $4f6d: $0f
	ld   d, d                                        ; $4f6e: $52
	ld   e, a                                        ; $4f6f: $5f
	inc  l                                           ; $4f70: $2c
	ccf                                              ; $4f71: $3f
	inc  h                                           ; $4f72: $24
	ccf                                              ; $4f73: $3f
	ld   c, c                                        ; $4f74: $49
	ld   a, a                                        ; $4f75: $7f
	ld   c, l                                        ; $4f76: $4d
	ld   a, a                                        ; $4f77: $7f
	ld   c, e                                        ; $4f78: $4b
	ld   a, a                                        ; $4f79: $7f
	ld   a, a                                        ; $4f7a: $7f
	ld   a, a                                        ; $4f7b: $7f
	ld   a, a                                        ; $4f7c: $7f
	nop                                              ; $4f7d: $00
	nop                                              ; $4f7e: $00
	nop                                              ; $4f7f: $00
	nop                                              ; $4f80: $00
	nop                                              ; $4f81: $00
	jr   c, jr_08d_4fbc                              ; $4f82: $38 $38

	ld   b, h                                        ; $4f84: $44
	ld   b, h                                        ; $4f85: $44
	add  d                                           ; $4f86: $82
	add  d                                           ; $4f87: $82
	add  e                                           ; $4f88: $83
	add  e                                           ; $4f89: $83
	add  $c7                                         ; $4f8a: $c6 $c7
	ld   a, l                                        ; $4f8c: $7d
	rst  $38                                         ; $4f8d: $ff

jr_08d_4f8e:
	sub  [hl]                                        ; $4f8e: $96
	rst  $38                                         ; $4f8f: $ff
	jp   c, $b2ff                                    ; $4f90: $da $ff $b2

	rst  $38                                         ; $4f93: $ff
	dec  d                                           ; $4f94: $15
	rst  $38                                         ; $4f95: $ff
	ld   e, c                                        ; $4f96: $59
	rst  $38                                         ; $4f97: $ff
	ld   sp, $ffff                                   ; $4f98: $31 $ff $ff
	rst  $38                                         ; $4f9b: $ff
	rst  $38                                         ; $4f9c: $ff
	nop                                              ; $4f9d: $00
	nop                                              ; $4f9e: $00
	nop                                              ; $4f9f: $00
	nop                                              ; $4fa0: $00
	nop                                              ; $4fa1: $00
	nop                                              ; $4fa2: $00
	nop                                              ; $4fa3: $00
	nop                                              ; $4fa4: $00
	nop                                              ; $4fa5: $00
	nop                                              ; $4fa6: $00
	nop                                              ; $4fa7: $00
	nop                                              ; $4fa8: $00
	nop                                              ; $4fa9: $00
	ret  nc                                          ; $4faa: $d0

	ret  nc                                          ; $4fab: $d0

	jr   nz, jr_08d_4f8e                             ; $4fac: $20 $e0

	sub  h                                           ; $4fae: $94
	db   $f4                                         ; $4faf: $f4
	ld   l, b                                        ; $4fb0: $68
	ld   hl, sp+$48                                  ; $4fb1: $f8 $48
	ld   hl, sp+$24                                  ; $4fb3: $f8 $24
	db   $fc                                         ; $4fb5: $fc
	ld   h, h                                        ; $4fb6: $64
	db   $fc                                         ; $4fb7: $fc
	and  h                                           ; $4fb8: $a4
	db   $fc                                         ; $4fb9: $fc
	rst  $38                                         ; $4fba: $ff
	rst  $38                                         ; $4fbb: $ff

jr_08d_4fbc:
	rst  $38                                         ; $4fbc: $ff
	ld   bc, $0000                                   ; $4fbd: $01 $00 $00
	nop                                              ; $4fc0: $00
	nop                                              ; $4fc1: $00
	nop                                              ; $4fc2: $00
	nop                                              ; $4fc3: $00
	nop                                              ; $4fc4: $00
	nop                                              ; $4fc5: $00
	nop                                              ; $4fc6: $00
	nop                                              ; $4fc7: $00
	nop                                              ; $4fc8: $00
	nop                                              ; $4fc9: $00
	nop                                              ; $4fca: $00
	nop                                              ; $4fcb: $00
	nop                                              ; $4fcc: $00
	nop                                              ; $4fcd: $00
	nop                                              ; $4fce: $00
	nop                                              ; $4fcf: $00
	nop                                              ; $4fd0: $00
	nop                                              ; $4fd1: $00
	nop                                              ; $4fd2: $00
	nop                                              ; $4fd3: $00
	nop                                              ; $4fd4: $00
	nop                                              ; $4fd5: $00
	rlca                                             ; $4fd6: $07
	rlca                                             ; $4fd7: $07
	inc  b                                           ; $4fd8: $04
	rlca                                             ; $4fd9: $07
	ld   a, a                                        ; $4fda: $7f
	ld   a, a                                        ; $4fdb: $7f
	ld   a, a                                        ; $4fdc: $7f
	ld   b, b                                        ; $4fdd: $40
	nop                                              ; $4fde: $00
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
	nop                                              ; $4fe9: $00
	nop                                              ; $4fea: $00
	nop                                              ; $4feb: $00
	nop                                              ; $4fec: $00
	nop                                              ; $4fed: $00
	nop                                              ; $4fee: $00
	nop                                              ; $4fef: $00
	nop                                              ; $4ff0: $00
	nop                                              ; $4ff1: $00
	nop                                              ; $4ff2: $00
	nop                                              ; $4ff3: $00
	nop                                              ; $4ff4: $00
	nop                                              ; $4ff5: $00
	nop                                              ; $4ff6: $00
	nop                                              ; $4ff7: $00
	add  c                                           ; $4ff8: $81
	add  c                                           ; $4ff9: $81

jr_08d_4ffa:
	rst  $38                                         ; $4ffa: $ff
	rst  $38                                         ; $4ffb: $ff
	rst  $38                                         ; $4ffc: $ff
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
	ldh  [$e0], a                                    ; $5016: $e0 $e0
	jr   nz, jr_08d_4ffa                             ; $5018: $20 $e0

	cp   $fe                                         ; $501a: $fe $fe
	cp   $02                                         ; $501c: $fe $02
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
	ld   bc, $0201                                   ; $5030: $01 $01 $02
	inc  bc                                          ; $5033: $03
	ld   bc, $0701                                   ; $5034: $01 $01 $07
	rlca                                             ; $5037: $07
	ld   [$7f0f], sp                                 ; $5038: $08 $0f $7f
	ld   a, a                                        ; $503b: $7f
	ld   a, a                                        ; $503c: $7f
	ld   b, b                                        ; $503d: $40
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
	jr   nc, jr_08d_5082                             ; $5050: $30 $30

	call $26fd                                       ; $5052: $cd $fd $26
	rst  $38                                         ; $5055: $ff
	add  hl, sp                                      ; $5056: $39
	rst  $38                                         ; $5057: $ff
	ret  z                                           ; $5058: $c8

	rst  $38                                         ; $5059: $ff
	rst  $38                                         ; $505a: $ff
	rst  $38                                         ; $505b: $ff
	rst  $38                                         ; $505c: $ff
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
	add  b                                           ; $5072: $80
	add  b                                           ; $5073: $80
	ld   h, b                                        ; $5074: $60
	ldh  [$50], a                                    ; $5075: $e0 $50
	ldh  a, [$90]                                    ; $5077: $f0 $90
	ldh  a, [$fe]                                    ; $5079: $f0 $fe
	cp   $fe                                         ; $507b: $fe $fe
	ld   [bc], a                                     ; $507d: $02
	nop                                              ; $507e: $00
	nop                                              ; $507f: $00
	nop                                              ; $5080: $00
	nop                                              ; $5081: $00

jr_08d_5082:
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
	ld   [bc], a                                     ; $508e: $02
	ld   [bc], a                                     ; $508f: $02
	dec  b                                           ; $5090: $05
	rlca                                             ; $5091: $07
	inc  e                                           ; $5092: $1c
	rra                                              ; $5093: $1f
	inc  hl                                          ; $5094: $23
	ccf                                              ; $5095: $3f
	ld   b, l                                        ; $5096: $45
	ld   a, a                                        ; $5097: $7f
	ld   a, b                                        ; $5098: $78
	ld   a, a                                        ; $5099: $7f
	ld   a, a                                        ; $509a: $7f
	ld   a, a                                        ; $509b: $7f
	ld   a, a                                        ; $509c: $7f
	ld   b, b                                        ; $509d: $40
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
	pop  bc                                          ; $50ae: $c1
	pop  bc                                          ; $50af: $c1
	ld   [hl], $f7                                   ; $50b0: $36 $f7
	adc  b                                           ; $50b2: $88
	rst  $38                                         ; $50b3: $ff
	ld   c, e                                        ; $50b4: $4b
	rst  $38                                         ; $50b5: $ff
	inc  [hl]                                        ; $50b6: $34
	rst  $38                                         ; $50b7: $ff
	and  l                                           ; $50b8: $a5
	rst  $38                                         ; $50b9: $ff
	rst  $38                                         ; $50ba: $ff
	rst  $38                                         ; $50bb: $ff
	rst  $38                                         ; $50bc: $ff
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
	ldh  [$e0], a                                    ; $50d0: $e0 $e0
	sub  b                                           ; $50d2: $90
	ldh  a, [$28]                                    ; $50d3: $f0 $28
	ld   hl, sp-$1c                                  ; $50d5: $f8 $e4
	db   $fc                                         ; $50d7: $fc
	inc  [hl]                                        ; $50d8: $34
	db   $fc                                         ; $50d9: $fc
	cp   $fe                                         ; $50da: $fe $fe
	cp   $02                                         ; $50dc: $fe $02
	nop                                              ; $50de: $00
	nop                                              ; $50df: $00
	nop                                              ; $50e0: $00
	nop                                              ; $50e1: $00
	nop                                              ; $50e2: $00
	nop                                              ; $50e3: $00
	ld   bc, $0701                                   ; $50e4: $01 $01 $07
	rlca                                             ; $50e7: $07
	dec  b                                           ; $50e8: $05
	rlca                                             ; $50e9: $07
	dec  b                                           ; $50ea: $05
	rlca                                             ; $50eb: $07
	dec  b                                           ; $50ec: $05
	rlca                                             ; $50ed: $07
	dec  b                                           ; $50ee: $05
	rlca                                             ; $50ef: $07

Jump_08d_50f0:
	dec  b                                           ; $50f0: $05
	rlca                                             ; $50f1: $07
	dec  b                                           ; $50f2: $05
	rlca                                             ; $50f3: $07
	dec  b                                           ; $50f4: $05
	rlca                                             ; $50f5: $07
	dec  b                                           ; $50f6: $05
	rlca                                             ; $50f7: $07
	dec  b                                           ; $50f8: $05
	rlca                                             ; $50f9: $07
	dec  b                                           ; $50fa: $05
	rlca                                             ; $50fb: $07
	dec  b                                           ; $50fc: $05
	rlca                                             ; $50fd: $07
	nop                                              ; $50fe: $00
	nop                                              ; $50ff: $00
	nop                                              ; $5100: $00
	nop                                              ; $5101: $00
	ld   a, h                                        ; $5102: $7c
	ld   a, h                                        ; $5103: $7c
	rst  $38                                         ; $5104: $ff
	jp   Jump_08d_40ff                               ; $5105: $c3 $ff $40


	rst  $38                                         ; $5108: $ff
	ld   b, b                                        ; $5109: $40
	rst  $38                                         ; $510a: $ff
	ld   b, b                                        ; $510b: $40
	rst  $38                                         ; $510c: $ff
	ld   b, b                                        ; $510d: $40
	rst  $38                                         ; $510e: $ff
	ld   b, b                                        ; $510f: $40
	rst  $38                                         ; $5110: $ff
	ld   b, b                                        ; $5111: $40
	rst  $38                                         ; $5112: $ff
	ld   b, b                                        ; $5113: $40
	rst  $38                                         ; $5114: $ff
	ld   b, b                                        ; $5115: $40
	rst  $38                                         ; $5116: $ff
	ld   b, b                                        ; $5117: $40
	rst  $38                                         ; $5118: $ff
	ld   b, b                                        ; $5119: $40
	rst  $38                                         ; $511a: $ff
	db   $fc                                         ; $511b: $fc
	rst  $38                                         ; $511c: $ff
	inc  bc                                          ; $511d: $03
	nop                                              ; $511e: $00
	nop                                              ; $511f: $00
	nop                                              ; $5120: $00
	nop                                              ; $5121: $00
	nop                                              ; $5122: $00
	nop                                              ; $5123: $00
	inc  bc                                          ; $5124: $03
	inc  bc                                          ; $5125: $03
	adc  a                                           ; $5126: $8f
	adc  h                                           ; $5127: $8c
	rst  JumpTable                                         ; $5128: $df
	ld   d, b                                        ; $5129: $50
	cp   a                                           ; $512a: $bf
	ld   h, b                                        ; $512b: $60
	xor  a                                           ; $512c: $af
	ld   [hl], b                                     ; $512d: $70
	cp   a                                           ; $512e: $bf
	ld   h, b                                        ; $512f: $60
	xor  a                                           ; $5130: $af
	ld   [hl], b                                     ; $5131: $70
	cp   a                                           ; $5132: $bf
	ld   h, b                                        ; $5133: $60
	xor  a                                           ; $5134: $af
	ld   [hl], b                                     ; $5135: $70
	cp   a                                           ; $5136: $bf
	ld   h, b                                        ; $5137: $60
	xor  a                                           ; $5138: $af
	ld   [hl], b                                     ; $5139: $70
	cp   a                                           ; $513a: $bf
	ld   h, c                                        ; $513b: $61
	xor  a                                           ; $513c: $af
	cp   $00                                         ; $513d: $fe $00
	nop                                              ; $513f: $00
	nop                                              ; $5140: $00
	nop                                              ; $5141: $00
	nop                                              ; $5142: $00
	nop                                              ; $5143: $00
	ld   bc, $0701                                   ; $5144: $01 $01 $07
	rlca                                             ; $5147: $07
	dec  b                                           ; $5148: $05
	rlca                                             ; $5149: $07
	dec  b                                           ; $514a: $05
	rlca                                             ; $514b: $07

jr_08d_514c:
	dec  b                                           ; $514c: $05
	rlca                                             ; $514d: $07
	dec  b                                           ; $514e: $05
	rlca                                             ; $514f: $07

jr_08d_5150:
	dec  b                                           ; $5150: $05
	rlca                                             ; $5151: $07
	dec  b                                           ; $5152: $05
	rlca                                             ; $5153: $07
	dec  b                                           ; $5154: $05
	rlca                                             ; $5155: $07
	dec  b                                           ; $5156: $05
	rlca                                             ; $5157: $07
	dec  b                                           ; $5158: $05
	rlca                                             ; $5159: $07
	dec  b                                           ; $515a: $05
	rlca                                             ; $515b: $07
	dec  b                                           ; $515c: $05
	rlca                                             ; $515d: $07
	nop                                              ; $515e: $00
	nop                                              ; $515f: $00
	nop                                              ; $5160: $00
	nop                                              ; $5161: $00
	rlca                                             ; $5162: $07
	inc  b                                           ; $5163: $04
	rst  $38                                         ; $5164: $ff
	db   $fc                                         ; $5165: $fc
	rst  $38                                         ; $5166: $ff
	inc  b                                           ; $5167: $04
	rst  $38                                         ; $5168: $ff
	inc  b                                           ; $5169: $04
	rst  $38                                         ; $516a: $ff
	inc  b                                           ; $516b: $04
	rst  $38                                         ; $516c: $ff
	inc  b                                           ; $516d: $04
	rst  $38                                         ; $516e: $ff
	ld   [bc], a                                     ; $516f: $02
	rst  $38                                         ; $5170: $ff
	ld   bc, $00ff                                   ; $5171: $01 $ff $00
	cp   $01                                         ; $5174: $fe $01
	rst  $38                                         ; $5176: $ff
	nop                                              ; $5177: $00
	cp   $01                                         ; $5178: $fe $01
	rst  $38                                         ; $517a: $ff
	db   $fc                                         ; $517b: $fc
	rst  $38                                         ; $517c: $ff
	inc  bc                                          ; $517d: $03
	nop                                              ; $517e: $00
	nop                                              ; $517f: $00
	nop                                              ; $5180: $00
	nop                                              ; $5181: $00
	ret  nz                                          ; $5182: $c0

	ld   b, b                                        ; $5183: $40
	jp   $ef43                                       ; $5184: $c3 $43 $ef


	inc  l                                           ; $5187: $2c
	cp   a                                           ; $5188: $bf
	ld   [hl], b                                     ; $5189: $70
	rst  $38                                         ; $518a: $ff
	jr   nz, jr_08d_514c                             ; $518b: $20 $bf

	ld   h, b                                        ; $518d: $60
	rst  $38                                         ; $518e: $ff
	jr   nz, jr_08d_5150                             ; $518f: $20 $bf

	ld   h, b                                        ; $5191: $60
	rst  $38                                         ; $5192: $ff
	and  b                                           ; $5193: $a0
	rst  $38                                         ; $5194: $ff
	ld   h, b                                        ; $5195: $60
	ld   a, a                                        ; $5196: $7f
	ldh  [$bf], a                                    ; $5197: $e0 $bf
	ld   h, b                                        ; $5199: $60
	ccf                                              ; $519a: $3f
	pop  hl                                          ; $519b: $e1
	rst  $38                                         ; $519c: $ff
	xor  $00                                         ; $519d: $ee $00
	nop                                              ; $519f: $00
	nop                                              ; $51a0: $00
	nop                                              ; $51a1: $00
	nop                                              ; $51a2: $00
	nop                                              ; $51a3: $00
	ld   bc, $0701                                   ; $51a4: $01 $01 $07
	rlca                                             ; $51a7: $07
	dec  b                                           ; $51a8: $05
	rlca                                             ; $51a9: $07
	dec  b                                           ; $51aa: $05
	rlca                                             ; $51ab: $07
	dec  b                                           ; $51ac: $05
	rlca                                             ; $51ad: $07
	dec  b                                           ; $51ae: $05
	rlca                                             ; $51af: $07
	dec  b                                           ; $51b0: $05
	rlca                                             ; $51b1: $07
	dec  b                                           ; $51b2: $05
	rlca                                             ; $51b3: $07
	dec  b                                           ; $51b4: $05
	rlca                                             ; $51b5: $07
	dec  b                                           ; $51b6: $05
	rlca                                             ; $51b7: $07
	dec  b                                           ; $51b8: $05
	rlca                                             ; $51b9: $07
	dec  b                                           ; $51ba: $05
	rlca                                             ; $51bb: $07
	dec  b                                           ; $51bc: $05
	rlca                                             ; $51bd: $07
	nop                                              ; $51be: $00
	nop                                              ; $51bf: $00
	nop                                              ; $51c0: $00
	nop                                              ; $51c1: $00
	nop                                              ; $51c2: $00
	nop                                              ; $51c3: $00
	db   $fc                                         ; $51c4: $fc
	db   $fc                                         ; $51c5: $fc
	rst  $38                                         ; $51c6: $ff
	inc  bc                                          ; $51c7: $03
	rst  $38                                         ; $51c8: $ff
	nop                                              ; $51c9: $00
	rst  $38                                         ; $51ca: $ff
	nop                                              ; $51cb: $00
	rst  $38                                         ; $51cc: $ff
	nop                                              ; $51cd: $00
	rst  $38                                         ; $51ce: $ff
	nop                                              ; $51cf: $00
	rst  $38                                         ; $51d0: $ff
	nop                                              ; $51d1: $00
	rst  $38                                         ; $51d2: $ff
	nop                                              ; $51d3: $00
	rst  $38                                         ; $51d4: $ff
	nop                                              ; $51d5: $00
	rst  $38                                         ; $51d6: $ff
	nop                                              ; $51d7: $00
	rst  $38                                         ; $51d8: $ff
	nop                                              ; $51d9: $00
	rst  $38                                         ; $51da: $ff
	db   $fc                                         ; $51db: $fc
	rst  $38                                         ; $51dc: $ff
	inc  bc                                          ; $51dd: $03
	nop                                              ; $51de: $00
	nop                                              ; $51df: $00
	nop                                              ; $51e0: $00
	nop                                              ; $51e1: $00
	rlca                                             ; $51e2: $07
	inc  b                                           ; $51e3: $04
	rrca                                             ; $51e4: $0f
	ld   [$909f], sp                                 ; $51e5: $08 $9f $90
	ld   a, a                                        ; $51e8: $7f
	ldh  a, [$bf]                                    ; $51e9: $f0 $bf
	ld   h, b                                        ; $51eb: $60
	ccf                                              ; $51ec: $3f
	ldh  [$bf], a                                    ; $51ed: $e0 $bf
	ld   h, b                                        ; $51ef: $60
	ccf                                              ; $51f0: $3f
	ldh  [$bf], a                                    ; $51f1: $e0 $bf
	ld   h, e                                        ; $51f3: $63
	inc  a                                           ; $51f4: $3c
	rst  $20                                         ; $51f5: $e7
	cp   e                                           ; $51f6: $bb
	ld   l, h                                        ; $51f7: $6c
	scf                                              ; $51f8: $37
	ld   hl, sp-$49                                  ; $51f9: $f8 $b7
	ld   a, c                                        ; $51fb: $79
	xor  a                                           ; $51fc: $af
	cp   $00                                         ; $51fd: $fe $00
	nop                                              ; $51ff: $00
	nop                                              ; $5200: $00
	nop                                              ; $5201: $00
	nop                                              ; $5202: $00
	nop                                              ; $5203: $00
	ld   bc, $0601                                   ; $5204: $01 $01 $06
	rlca                                             ; $5207: $07
	add  hl, bc                                      ; $5208: $09

jr_08d_5209:
	rrca                                             ; $5209: $0f
	ld   [de], a                                     ; $520a: $12
	rra                                              ; $520b: $1f
	ld   [de], a                                     ; $520c: $12
	rra                                              ; $520d: $1f
	inc  h                                           ; $520e: $24
	ccf                                              ; $520f: $3f
	inc  h                                           ; $5210: $24
	ccf                                              ; $5211: $3f
	inc  h                                           ; $5212: $24
	ccf                                              ; $5213: $3f
	inc  [hl]                                        ; $5214: $34
	ccf                                              ; $5215: $3f
	inc  a                                           ; $5216: $3c
	ccf                                              ; $5217: $3f
	ld   a, [de]                                     ; $5218: $1a
	dec  de                                          ; $5219: $1b
	inc  bc                                          ; $521a: $03
	inc  bc                                          ; $521b: $03
	ld   b, $06                                      ; $521c: $06 $06
	nop                                              ; $521e: $00
	nop                                              ; $521f: $00
	nop                                              ; $5220: $00
	nop                                              ; $5221: $00
	nop                                              ; $5222: $00
	nop                                              ; $5223: $00
	rst  $38                                         ; $5224: $ff
	rst  $38                                         ; $5225: $ff
	add  b                                           ; $5226: $80
	rst  $38                                         ; $5227: $ff
	jr   nz, jr_08d_5209                             ; $5228: $20 $df

	ld   h, b                                        ; $522a: $60
	sbc  a                                           ; $522b: $9f
	nop                                              ; $522c: $00
	rst  $38                                         ; $522d: $ff
	pop  bc                                          ; $522e: $c1
	ld   a, [hl]                                     ; $522f: $7e
	rst  $38                                         ; $5230: $ff
	rst  $38                                         ; $5231: $ff
	ld   a, a                                        ; $5232: $7f
	pop  bc                                          ; $5233: $c1
	rst  $38                                         ; $5234: $ff
	sbc  h                                           ; $5235: $9c
	rst  $38                                         ; $5236: $ff
	adc  b                                           ; $5237: $88
	rst  $38                                         ; $5238: $ff
	adc  b                                           ; $5239: $88
	rst  $38                                         ; $523a: $ff
	ret                                              ; $523b: $c9


	ld   a, a                                        ; $523c: $7f
	ld   a, a                                        ; $523d: $7f
	nop                                              ; $523e: $00
	nop                                              ; $523f: $00

Jump_08d_5240:
	nop                                              ; $5240: $00
	nop                                              ; $5241: $00
	nop                                              ; $5242: $00
	nop                                              ; $5243: $00
	ret  nz                                          ; $5244: $c0

	ret  nz                                          ; $5245: $c0

	or   b                                           ; $5246: $b0
	ldh  a, [rOBP0]                                  ; $5247: $f0 $48
	ld   hl, sp+$24                                  ; $5249: $f8 $24
	db   $fc                                         ; $524b: $fc
	inc  h                                           ; $524c: $24
	db   $fc                                         ; $524d: $fc
	sub  d                                           ; $524e: $92
	cp   $92                                         ; $524f: $fe $92
	cp   $12                                         ; $5251: $fe $12
	cp   $96                                         ; $5253: $fe $96
	cp   $9e                                         ; $5255: $fe $9e
	cp   $ac                                         ; $5257: $fe $ac
	db   $ec                                         ; $5259: $ec
	ldh  [$e0], a                                    ; $525a: $e0 $e0
	jr   nc, jr_08d_528e                             ; $525c: $30 $30

	nop                                              ; $525e: $00
	nop                                              ; $525f: $00
	nop                                              ; $5260: $00
	nop                                              ; $5261: $00
	ld   bc, $0601                                   ; $5262: $01 $01 $06
	rlca                                             ; $5265: $07
	add  hl, bc                                      ; $5266: $09

jr_08d_5267:
	rrca                                             ; $5267: $0f
	ld   [de], a                                     ; $5268: $12
	rra                                              ; $5269: $1f
	ld   [de], a                                     ; $526a: $12
	rra                                              ; $526b: $1f
	inc  h                                           ; $526c: $24
	ccf                                              ; $526d: $3f
	inc  h                                           ; $526e: $24
	ccf                                              ; $526f: $3f
	inc  h                                           ; $5270: $24
	ccf                                              ; $5271: $3f
	inc  [hl]                                        ; $5272: $34
	ccf                                              ; $5273: $3f
	inc  a                                           ; $5274: $3c
	ccf                                              ; $5275: $3f
	ld   a, [de]                                     ; $5276: $1a
	dec  de                                          ; $5277: $1b
	inc  bc                                          ; $5278: $03
	inc  bc                                          ; $5279: $03
	ld   b, $06                                      ; $527a: $06 $06
	dec  b                                           ; $527c: $05
	rlca                                             ; $527d: $07
	nop                                              ; $527e: $00
	nop                                              ; $527f: $00
	nop                                              ; $5280: $00
	nop                                              ; $5281: $00
	rst  $38                                         ; $5282: $ff
	rst  $38                                         ; $5283: $ff
	add  b                                           ; $5284: $80
	rst  $38                                         ; $5285: $ff
	jr   nz, jr_08d_5267                             ; $5286: $20 $df

	ld   h, b                                        ; $5288: $60
	sbc  a                                           ; $5289: $9f
	nop                                              ; $528a: $00
	rst  $38                                         ; $528b: $ff
	pop  bc                                          ; $528c: $c1
	ld   a, [hl]                                     ; $528d: $7e

jr_08d_528e:
	rst  $38                                         ; $528e: $ff
	rst  $38                                         ; $528f: $ff
	ld   a, a                                        ; $5290: $7f
	pop  bc                                          ; $5291: $c1
	rst  $38                                         ; $5292: $ff
	sbc  h                                           ; $5293: $9c
	rst  $38                                         ; $5294: $ff
	adc  b                                           ; $5295: $88
	rst  $38                                         ; $5296: $ff
	adc  b                                           ; $5297: $88
	rst  $30                                         ; $5298: $f7
	db   $dd                                         ; $5299: $dd
	ld   [hl], a                                     ; $529a: $77
	ld   a, a                                        ; $529b: $7f
	inc  e                                           ; $529c: $1c
	inc  e                                           ; $529d: $1c
	nop                                              ; $529e: $00
	nop                                              ; $529f: $00
	nop                                              ; $52a0: $00
	nop                                              ; $52a1: $00
	ret  nz                                          ; $52a2: $c0

	ret  nz                                          ; $52a3: $c0

	or   b                                           ; $52a4: $b0
	ldh  a, [rOBP0]                                  ; $52a5: $f0 $48
	ld   hl, sp+$24                                  ; $52a7: $f8 $24
	db   $fc                                         ; $52a9: $fc
	inc  h                                           ; $52aa: $24
	db   $fc                                         ; $52ab: $fc
	sub  d                                           ; $52ac: $92
	cp   $92                                         ; $52ad: $fe $92
	cp   $12                                         ; $52af: $fe $12
	cp   $96                                         ; $52b1: $fe $96
	cp   $9e                                         ; $52b3: $fe $9e
	cp   $ac                                         ; $52b5: $fe $ac
	db   $ec                                         ; $52b7: $ec
	ldh  [$e0], a                                    ; $52b8: $e0 $e0
	jr   nc, jr_08d_52ec                             ; $52ba: $30 $30

	ld   d, b                                        ; $52bc: $50
	ld   [hl], b                                     ; $52bd: $70
	nop                                              ; $52be: $00
	nop                                              ; $52bf: $00
	nop                                              ; $52c0: $00
	nop                                              ; $52c1: $00
	ld   bc, $0601                                   ; $52c2: $01 $01 $06
	rlca                                             ; $52c5: $07
	add  hl, bc                                      ; $52c6: $09

jr_08d_52c7:
	rrca                                             ; $52c7: $0f
	ld   [de], a                                     ; $52c8: $12
	rra                                              ; $52c9: $1f
	ld   [de], a                                     ; $52ca: $12
	rra                                              ; $52cb: $1f
	inc  h                                           ; $52cc: $24
	ccf                                              ; $52cd: $3f
	inc  h                                           ; $52ce: $24
	ccf                                              ; $52cf: $3f
	inc  h                                           ; $52d0: $24
	ccf                                              ; $52d1: $3f
	inc  [hl]                                        ; $52d2: $34
	ccf                                              ; $52d3: $3f
	inc  a                                           ; $52d4: $3c
	ccf                                              ; $52d5: $3f
	ld   a, [de]                                     ; $52d6: $1a
	dec  de                                          ; $52d7: $1b
	inc  bc                                          ; $52d8: $03
	inc  bc                                          ; $52d9: $03
	ld   b, $06                                      ; $52da: $06 $06
	dec  b                                           ; $52dc: $05
	rlca                                             ; $52dd: $07
	nop                                              ; $52de: $00
	nop                                              ; $52df: $00
	nop                                              ; $52e0: $00
	nop                                              ; $52e1: $00
	rst  $38                                         ; $52e2: $ff
	rst  $38                                         ; $52e3: $ff
	add  b                                           ; $52e4: $80
	rst  $38                                         ; $52e5: $ff
	jr   nz, jr_08d_52c7                             ; $52e6: $20 $df

	ld   h, b                                        ; $52e8: $60
	sbc  a                                           ; $52e9: $9f
	nop                                              ; $52ea: $00
	rst  $38                                         ; $52eb: $ff

jr_08d_52ec:
	pop  bc                                          ; $52ec: $c1
	ld   a, [hl]                                     ; $52ed: $7e
	rst  $38                                         ; $52ee: $ff
	rst  $38                                         ; $52ef: $ff
	ld   a, a                                        ; $52f0: $7f
	pop  bc                                          ; $52f1: $c1
	rst  $38                                         ; $52f2: $ff
	sbc  h                                           ; $52f3: $9c
	rst  $38                                         ; $52f4: $ff
	adc  b                                           ; $52f5: $88
	rst  $38                                         ; $52f6: $ff
	adc  b                                           ; $52f7: $88
	rst  $30                                         ; $52f8: $f7
	db   $dd                                         ; $52f9: $dd
	ld   [hl], a                                     ; $52fa: $77
	ld   a, a                                        ; $52fb: $7f
	inc  e                                           ; $52fc: $1c
	inc  e                                           ; $52fd: $1c
	nop                                              ; $52fe: $00
	nop                                              ; $52ff: $00
	nop                                              ; $5300: $00
	nop                                              ; $5301: $00
	ret  nz                                          ; $5302: $c0

	ret  nz                                          ; $5303: $c0

	or   b                                           ; $5304: $b0
	ldh  a, [rOBP0]                                  ; $5305: $f0 $48
	ld   hl, sp+$24                                  ; $5307: $f8 $24
	db   $fc                                         ; $5309: $fc
	inc  h                                           ; $530a: $24
	db   $fc                                         ; $530b: $fc
	sub  d                                           ; $530c: $92
	cp   $92                                         ; $530d: $fe $92
	cp   $12                                         ; $530f: $fe $12
	cp   $96                                         ; $5311: $fe $96
	cp   $9e                                         ; $5313: $fe $9e
	cp   $ac                                         ; $5315: $fe $ac
	db   $ec                                         ; $5317: $ec
	ldh  [$e0], a                                    ; $5318: $e0 $e0
	jr   nc, jr_08d_534c                             ; $531a: $30 $30

	ld   d, b                                        ; $531c: $50
	ld   [hl], b                                     ; $531d: $70
	nop                                              ; $531e: $00
	nop                                              ; $531f: $00
	nop                                              ; $5320: $00
	nop                                              ; $5321: $00
	inc  bc                                          ; $5322: $03
	ld   a, a                                        ; $5323: $7f
	inc  bc                                          ; $5324: $03
	ld   a, a                                        ; $5325: $7f
	ld   l, a                                        ; $5326: $6f
	ld   a, a                                        ; $5327: $7f
	rra                                              ; $5328: $1f
	ld   a, a                                        ; $5329: $7f
	rra                                              ; $532a: $1f
	ld   a, a                                        ; $532b: $7f
	inc  de                                          ; $532c: $13
	ld   a, a                                        ; $532d: $7f
	inc  bc                                          ; $532e: $03
	ld   a, a                                        ; $532f: $7f
	inc  de                                          ; $5330: $13
	ld   a, a                                        ; $5331: $7f
	rra                                              ; $5332: $1f
	ld   a, a                                        ; $5333: $7f
	rra                                              ; $5334: $1f
	ld   a, a                                        ; $5335: $7f
	ld   a, a                                        ; $5336: $7f
	ld   a, a                                        ; $5337: $7f
	ld   a, a                                        ; $5338: $7f
	nop                                              ; $5339: $00
	ld   a, a                                        ; $533a: $7f
	ld   a, a                                        ; $533b: $7f
	nop                                              ; $533c: $00
	nop                                              ; $533d: $00
	nop                                              ; $533e: $00
	nop                                              ; $533f: $00
	nop                                              ; $5340: $00
	nop                                              ; $5341: $00
	xor  $fa                                         ; $5342: $ee $fa
	xor  $fa                                         ; $5344: $ee $fa
	cp   $fa                                         ; $5346: $fe $fa
	rst  $38                                         ; $5348: $ff
	ei                                               ; $5349: $fb
	cp   $fb                                         ; $534a: $fe $fb

jr_08d_534c:
	cp   $fb                                         ; $534c: $fe $fb

jr_08d_534e:
	rst  $38                                         ; $534e: $ff
	rst  $38                                         ; $534f: $ff
	ldh  a, [rIE]                                    ; $5350: $f0 $ff
	db   $fc                                         ; $5352: $fc
	rst  $38                                         ; $5353: $ff
	cp   $fb                                         ; $5354: $fe $fb
	cp   $fb                                         ; $5356: $fe $fb
	cp   $13                                         ; $5358: $fe $13
	db   $fc                                         ; $535a: $fc
	rst  $38                                         ; $535b: $ff
	db   $10                                         ; $535c: $10
	rra                                              ; $535d: $1f
	nop                                              ; $535e: $00
	nop                                              ; $535f: $00
	nop                                              ; $5360: $00
	nop                                              ; $5361: $00
	nop                                              ; $5362: $00
	nop                                              ; $5363: $00
	nop                                              ; $5364: $00
	nop                                              ; $5365: $00
	nop                                              ; $5366: $00
	nop                                              ; $5367: $00
	ret  nz                                          ; $5368: $c0

	ret  nz                                          ; $5369: $c0

	jr   nz, jr_08d_534c                             ; $536a: $20 $e0

	jr   nz, jr_08d_534e                             ; $536c: $20 $e0

	ld   a, b                                        ; $536e: $78
	ld   hl, sp+$08                                  ; $536f: $f8 $08
	ld   hl, sp+$08                                  ; $5371: $f8 $08
	ld   hl, sp+$08                                  ; $5373: $f8 $08
	ld   hl, sp+$08                                  ; $5375: $f8 $08
	ld   hl, sp+$08                                  ; $5377: $f8 $08
	ld   hl, sp+$08                                  ; $5379: $f8 $08
	ld   hl, sp+$08                                  ; $537b: $f8 $08
	ld   hl, sp+$00                                  ; $537d: $f8 $00
	nop                                              ; $537f: $00
	nop                                              ; $5380: $00
	nop                                              ; $5381: $00
	inc  bc                                          ; $5382: $03
	ld   a, a                                        ; $5383: $7f
	inc  bc                                          ; $5384: $03
	ld   a, a                                        ; $5385: $7f
	ld   l, a                                        ; $5386: $6f
	ld   a, a                                        ; $5387: $7f
	rra                                              ; $5388: $1f
	ld   a, a                                        ; $5389: $7f
	rra                                              ; $538a: $1f
	ld   a, a                                        ; $538b: $7f
	inc  de                                          ; $538c: $13
	ld   a, a                                        ; $538d: $7f
	inc  bc                                          ; $538e: $03
	ld   a, a                                        ; $538f: $7f
	inc  de                                          ; $5390: $13
	ld   a, a                                        ; $5391: $7f
	rra                                              ; $5392: $1f
	ld   a, a                                        ; $5393: $7f
	rra                                              ; $5394: $1f
	ld   a, a                                        ; $5395: $7f
	ld   a, a                                        ; $5396: $7f
	ld   a, a                                        ; $5397: $7f
	ld   a, a                                        ; $5398: $7f
	nop                                              ; $5399: $00
	ld   a, a                                        ; $539a: $7f
	ld   a, a                                        ; $539b: $7f
	nop                                              ; $539c: $00
	nop                                              ; $539d: $00
	nop                                              ; $539e: $00
	nop                                              ; $539f: $00
	nop                                              ; $53a0: $00
	nop                                              ; $53a1: $00
	pop  af                                          ; $53a2: $f1
	rst  $38                                         ; $53a3: $ff
	ei                                               ; $53a4: $fb
	rst  $38                                         ; $53a5: $ff
	add  b                                           ; $53a6: $80
	rst  $38                                         ; $53a7: $ff
	ldh  [rIE], a                                    ; $53a8: $e0 $ff
	ldh  a, [rIE]                                    ; $53aa: $f0 $ff
	ldh  a, [rIE]                                    ; $53ac: $f0 $ff
	ldh  a, [rIE]                                    ; $53ae: $f0 $ff
	ldh  [rIE], a                                    ; $53b0: $e0 $ff
	add  b                                           ; $53b2: $80
	rst  $38                                         ; $53b3: $ff
	rst  $38                                         ; $53b4: $ff
	rst  $38                                         ; $53b5: $ff
	cp   $fa                                         ; $53b6: $fe $fa
	cp   $02                                         ; $53b8: $fe $02
	cp   $fe                                         ; $53ba: $fe $fe
	nop                                              ; $53bc: $00
	nop                                              ; $53bd: $00
	nop                                              ; $53be: $00
	nop                                              ; $53bf: $00
	nop                                              ; $53c0: $00
	nop                                              ; $53c1: $00
	nop                                              ; $53c2: $00
	nop                                              ; $53c3: $00
	ret  nz                                          ; $53c4: $c0

	ret  nz                                          ; $53c5: $c0

	ld   b, b                                        ; $53c6: $40
	ret  nz                                          ; $53c7: $c0

	ld   b, b                                        ; $53c8: $40
	ret  nz                                          ; $53c9: $c0

	ld   b, b                                        ; $53ca: $40
	ret  nz                                          ; $53cb: $c0

	ld   b, b                                        ; $53cc: $40
	ret  nz                                          ; $53cd: $c0

	ld   b, b                                        ; $53ce: $40
	ret  nz                                          ; $53cf: $c0

	ld   b, b                                        ; $53d0: $40
	ret  nz                                          ; $53d1: $c0

	ld   b, b                                        ; $53d2: $40
	ret  nz                                          ; $53d3: $c0

	ret  nz                                          ; $53d4: $c0

	ret  nz                                          ; $53d5: $c0

	nop                                              ; $53d6: $00
	nop                                              ; $53d7: $00
	nop                                              ; $53d8: $00
	nop                                              ; $53d9: $00
	nop                                              ; $53da: $00
	nop                                              ; $53db: $00
	nop                                              ; $53dc: $00
	nop                                              ; $53dd: $00
	nop                                              ; $53de: $00
	nop                                              ; $53df: $00
	nop                                              ; $53e0: $00
	nop                                              ; $53e1: $00
	ld   [bc], a                                     ; $53e2: $02
	ld   a, a                                        ; $53e3: $7f
	ld   [bc], a                                     ; $53e4: $02
	ld   a, a                                        ; $53e5: $7f
	ld   l, a                                        ; $53e6: $6f
	ld   a, a                                        ; $53e7: $7f
	db   $10                                         ; $53e8: $10
	ld   a, a                                        ; $53e9: $7f
	inc  e                                           ; $53ea: $1c
	ld   a, a                                        ; $53eb: $7f
	ld   [de], a                                     ; $53ec: $12
	ld   a, a                                        ; $53ed: $7f
	ld   [bc], a                                     ; $53ee: $02
	ld   a, a                                        ; $53ef: $7f
	ld   [de], a                                     ; $53f0: $12
	ld   a, a                                        ; $53f1: $7f
	inc  e                                           ; $53f2: $1c
	ld   a, a                                        ; $53f3: $7f
	db   $10                                         ; $53f4: $10
	ld   a, a                                        ; $53f5: $7f
	ld   a, a                                        ; $53f6: $7f
	ld   a, a                                        ; $53f7: $7f
	ld   a, a                                        ; $53f8: $7f
	nop                                              ; $53f9: $00
	ld   a, a                                        ; $53fa: $7f
	ld   a, a                                        ; $53fb: $7f
	nop                                              ; $53fc: $00
	nop                                              ; $53fd: $00
	nop                                              ; $53fe: $00
	nop                                              ; $53ff: $00
	nop                                              ; $5400: $00
	nop                                              ; $5401: $00
	ld   l, $fa                                      ; $5402: $2e $fa
	ld   l, $fa                                      ; $5404: $2e $fa
	ld   a, [hl]                                     ; $5406: $7e
	ld   a, [$fa0e]                                  ; $5407: $fa $0e $fa
	ld   c, $fa                                      ; $540a: $0e $fa
	ld   c, $fa                                      ; $540c: $0e $fa
	ld   c, $fa                                      ; $540e: $0e $fa
	ld   c, $fa                                      ; $5410: $0e $fa
	ld   c, $fa                                      ; $5412: $0e $fa
	ld   c, $fa                                      ; $5414: $0e $fa
	cp   $fa                                         ; $5416: $fe $fa
	cp   $02                                         ; $5418: $fe $02
	cp   $fe                                         ; $541a: $fe $fe
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
	rlca                                             ; $5446: $07
	rlca                                             ; $5447: $07
	dec  b                                           ; $5448: $05
	rlca                                             ; $5449: $07
	dec  b                                           ; $544a: $05
	rlca                                             ; $544b: $07
	dec  b                                           ; $544c: $05
	rlca                                             ; $544d: $07
	dec  b                                           ; $544e: $05
	rlca                                             ; $544f: $07
	dec  b                                           ; $5450: $05
	rlca                                             ; $5451: $07
	dec  b                                           ; $5452: $05
	rlca                                             ; $5453: $07
	dec  b                                           ; $5454: $05
	rlca                                             ; $5455: $07
	dec  b                                           ; $5456: $05
	rlca                                             ; $5457: $07
	dec  b                                           ; $5458: $05
	rlca                                             ; $5459: $07
	dec  b                                           ; $545a: $05
	rlca                                             ; $545b: $07
	dec  b                                           ; $545c: $05
	rlca                                             ; $545d: $07
	nop                                              ; $545e: $00
	nop                                              ; $545f: $00
	nop                                              ; $5460: $00
	nop                                              ; $5461: $00
	nop                                              ; $5462: $00
	nop                                              ; $5463: $00
	nop                                              ; $5464: $00
	nop                                              ; $5465: $00
	cp   $fe                                         ; $5466: $fe $fe
	ld   a, [hl+]                                    ; $5468: $2a
	cp   $2a                                         ; $5469: $fe $2a
	cp   $d2                                         ; $546b: $fe $d2
	cp   $26                                         ; $546d: $fe $26
	cp   $4a                                         ; $546f: $fe $4a
	cp   $92                                         ; $5471: $fe $92
	cp   $26                                         ; $5473: $fe $26
	cp   $2a                                         ; $5475: $fe $2a
	cp   $4a                                         ; $5477: $fe $4a
	cp   $92                                         ; $5479: $fe $92
	cp   $12                                         ; $547b: $fe $12
	cp   $00                                         ; $547d: $fe $00
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
	ccf                                              ; $548a: $3f
	ccf                                              ; $548b: $3f
	ld   a, a                                        ; $548c: $7f
	ld   b, b                                        ; $548d: $40
	rst  $38                                         ; $548e: $ff
	add  b                                           ; $548f: $80
	rst  $38                                         ; $5490: $ff
	sub  b                                           ; $5491: $90
	rst  $38                                         ; $5492: $ff
	xor  b                                           ; $5493: $a8
	rst  $38                                         ; $5494: $ff
	adc  b                                           ; $5495: $88
	rst  $38                                         ; $5496: $ff
	pop  af                                          ; $5497: $f1
	ld   a, [hl]                                     ; $5498: $7e
	ld   b, [hl]                                     ; $5499: $46
	jr   c, jr_08d_54d4                              ; $549a: $38 $38

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
	rlca                                             ; $54a6: $07
	rlca                                             ; $54a7: $07
	dec  b                                           ; $54a8: $05
	rlca                                             ; $54a9: $07
	dec  b                                           ; $54aa: $05
	rlca                                             ; $54ab: $07
	dec  b                                           ; $54ac: $05
	rlca                                             ; $54ad: $07
	dec  b                                           ; $54ae: $05
	rlca                                             ; $54af: $07
	dec  b                                           ; $54b0: $05
	rlca                                             ; $54b1: $07
	inc  b                                           ; $54b2: $04
	ld   b, $05                                      ; $54b3: $06 $05
	dec  b                                           ; $54b5: $05
	dec  b                                           ; $54b6: $05
	rlca                                             ; $54b7: $07
	dec  b                                           ; $54b8: $05
	rlca                                             ; $54b9: $07
	dec  b                                           ; $54ba: $05
	rlca                                             ; $54bb: $07
	dec  b                                           ; $54bc: $05
	rlca                                             ; $54bd: $07
	nop                                              ; $54be: $00
	nop                                              ; $54bf: $00
	nop                                              ; $54c0: $00
	nop                                              ; $54c1: $00
	nop                                              ; $54c2: $00
	nop                                              ; $54c3: $00
	nop                                              ; $54c4: $00
	nop                                              ; $54c5: $00
	cp   $fe                                         ; $54c6: $fe $fe
	ld   a, [hl+]                                    ; $54c8: $2a
	cp   $2a                                         ; $54c9: $fe $2a
	cp   $ff                                         ; $54cb: $fe $ff
	rst  $38                                         ; $54cd: $ff
	ld   a, a                                        ; $54ce: $7f
	ret  nz                                          ; $54cf: $c0

	rst  $38                                         ; $54d0: $ff
	add  b                                           ; $54d1: $80
	rst  $38                                         ; $54d2: $ff
	sub  b                                           ; $54d3: $90

jr_08d_54d4:
	rst  $38                                         ; $54d4: $ff
	xor  b                                           ; $54d5: $a8
	rst  $38                                         ; $54d6: $ff
	adc  b                                           ; $54d7: $88
	rst  $38                                         ; $54d8: $ff
	pop  af                                          ; $54d9: $f1
	cp   $c6                                         ; $54da: $fe $c6
	ld   a, [hl-]                                    ; $54dc: $3a
	cp   $00                                         ; $54dd: $fe $00
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
	rst  $38                                         ; $54ec: $ff
	rst  $38                                         ; $54ed: $ff
	rst  $38                                         ; $54ee: $ff
	nop                                              ; $54ef: $00
	rst  $38                                         ; $54f0: $ff
	nop                                              ; $54f1: $00
	rst  $38                                         ; $54f2: $ff
	nop                                              ; $54f3: $00
	rst  $38                                         ; $54f4: $ff
	ld   b, b                                        ; $54f5: $40
	rst  $38                                         ; $54f6: $ff
	rst  $38                                         ; $54f7: $ff
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
	dec  h                                           ; $5502: $25
	ccf                                              ; $5503: $3f
	ld   [hl], $3f                                   ; $5504: $36 $3f
	dec  de                                          ; $5506: $1b
	rra                                              ; $5507: $1f
	ld   a, [bc]                                     ; $5508: $0a
	rrca                                             ; $5509: $0f
	dec  bc                                          ; $550a: $0b
	rrca                                             ; $550b: $0f
	ld   b, $06                                      ; $550c: $06 $06
	nop                                              ; $550e: $00
	nop                                              ; $550f: $00
	nop                                              ; $5510: $00
	nop                                              ; $5511: $00
	nop                                              ; $5512: $00
	nop                                              ; $5513: $00
	ld   [bc], a                                     ; $5514: $02
	ld   [bc], a                                     ; $5515: $02
	dec  b                                           ; $5516: $05
	rlca                                             ; $5517: $07
	dec  b                                           ; $5518: $05
	rlca                                             ; $5519: $07
	dec  b                                           ; $551a: $05
	rlca                                             ; $551b: $07

jr_08d_551c:
	dec  b                                           ; $551c: $05
	rlca                                             ; $551d: $07
	nop                                              ; $551e: $00
	nop                                              ; $551f: $00
	nop                                              ; $5520: $00
	nop                                              ; $5521: $00
	jr   z, jr_08d_551c                              ; $5522: $28 $f8

	ld   b, h                                        ; $5524: $44
	db   $fc                                         ; $5525: $fc
	or   h                                           ; $5526: $b4
	db   $fc                                         ; $5527: $fc
	xor  h                                           ; $5528: $ac
	db   $ec                                         ; $5529: $ec
	ld   b, b                                        ; $552a: $40
	ld   b, b                                        ; $552b: $40
	rra                                              ; $552c: $1f
	rra                                              ; $552d: $1f
	ccf                                              ; $552e: $3f
	jr   nz, jr_08d_55b0                             ; $552f: $20 $7f

	ld   b, b                                        ; $5531: $40
	ld   a, a                                        ; $5532: $7f
	ld   c, b                                        ; $5533: $48
	ld   a, a                                        ; $5534: $7f
	ld   d, h                                        ; $5535: $54
	ld   a, a                                        ; $5536: $7f
	ld   b, h                                        ; $5537: $44
	rst  $38                                         ; $5538: $ff
	ld   hl, sp+$7f                                  ; $5539: $f8 $7f
	db   $e3                                         ; $553b: $e3
	cp   [hl]                                        ; $553c: $be
	cp   $00                                         ; $553d: $fe $00
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
	nop                                              ; $5549: $00
	nop                                              ; $554a: $00
	nop                                              ; $554b: $00
	rst  $38                                         ; $554c: $ff
	rst  $38                                         ; $554d: $ff
	rst  $38                                         ; $554e: $ff
	nop                                              ; $554f: $00
	rst  $38                                         ; $5550: $ff
	nop                                              ; $5551: $00
	rst  $38                                         ; $5552: $ff
	nop                                              ; $5553: $00
	rst  $38                                         ; $5554: $ff
	jr   nz, @+$01                                   ; $5555: $20 $ff

	ld   a, a                                        ; $5557: $7f
	add  b                                           ; $5558: $80
	add  b                                           ; $5559: $80
	nop                                              ; $555a: $00
	nop                                              ; $555b: $00
	nop                                              ; $555c: $00
	nop                                              ; $555d: $00
	nop                                              ; $555e: $00
	nop                                              ; $555f: $00
	nop                                              ; $5560: $00
	nop                                              ; $5561: $00
	nop                                              ; $5562: $00
	nop                                              ; $5563: $00
	nop                                              ; $5564: $00
	nop                                              ; $5565: $00
	nop                                              ; $5566: $00
	nop                                              ; $5567: $00
	nop                                              ; $5568: $00
	nop                                              ; $5569: $00
	nop                                              ; $556a: $00
	nop                                              ; $556b: $00
	nop                                              ; $556c: $00
	nop                                              ; $556d: $00
	nop                                              ; $556e: $00
	nop                                              ; $556f: $00
	nop                                              ; $5570: $00
	nop                                              ; $5571: $00
	nop                                              ; $5572: $00
	nop                                              ; $5573: $00
	nop                                              ; $5574: $00
	nop                                              ; $5575: $00
	nop                                              ; $5576: $00
	nop                                              ; $5577: $00
	nop                                              ; $5578: $00
	nop                                              ; $5579: $00
	nop                                              ; $557a: $00
	nop                                              ; $557b: $00
	nop                                              ; $557c: $00
	nop                                              ; $557d: $00
	nop                                              ; $557e: $00
	nop                                              ; $557f: $00
	nop                                              ; $5580: $00
	nop                                              ; $5581: $00
	nop                                              ; $5582: $00
	nop                                              ; $5583: $00
	nop                                              ; $5584: $00
	nop                                              ; $5585: $00
	nop                                              ; $5586: $00
	nop                                              ; $5587: $00
	nop                                              ; $5588: $00
	nop                                              ; $5589: $00
	nop                                              ; $558a: $00
	nop                                              ; $558b: $00
	nop                                              ; $558c: $00
	nop                                              ; $558d: $00
	nop                                              ; $558e: $00
	nop                                              ; $558f: $00
	nop                                              ; $5590: $00
	nop                                              ; $5591: $00
	nop                                              ; $5592: $00
	nop                                              ; $5593: $00
	nop                                              ; $5594: $00
	nop                                              ; $5595: $00
	nop                                              ; $5596: $00
	nop                                              ; $5597: $00
	nop                                              ; $5598: $00
	nop                                              ; $5599: $00
	nop                                              ; $559a: $00
	nop                                              ; $559b: $00
	nop                                              ; $559c: $00
	nop                                              ; $559d: $00
	nop                                              ; $559e: $00
	nop                                              ; $559f: $00
	nop                                              ; $55a0: $00
	nop                                              ; $55a1: $00
	nop                                              ; $55a2: $00
	nop                                              ; $55a3: $00
	nop                                              ; $55a4: $00
	nop                                              ; $55a5: $00
	nop                                              ; $55a6: $00
	nop                                              ; $55a7: $00
	nop                                              ; $55a8: $00
	nop                                              ; $55a9: $00
	nop                                              ; $55aa: $00
	nop                                              ; $55ab: $00
	nop                                              ; $55ac: $00
	nop                                              ; $55ad: $00
	nop                                              ; $55ae: $00
	nop                                              ; $55af: $00

jr_08d_55b0:
	nop                                              ; $55b0: $00
	nop                                              ; $55b1: $00
	nop                                              ; $55b2: $00
	nop                                              ; $55b3: $00
	nop                                              ; $55b4: $00
	nop                                              ; $55b5: $00
	nop                                              ; $55b6: $00
	nop                                              ; $55b7: $00
	nop                                              ; $55b8: $00
	nop                                              ; $55b9: $00
	nop                                              ; $55ba: $00
	nop                                              ; $55bb: $00
	nop                                              ; $55bc: $00
	nop                                              ; $55bd: $00
	nop                                              ; $55be: $00
	nop                                              ; $55bf: $00
	nop                                              ; $55c0: $00
	nop                                              ; $55c1: $00
	nop                                              ; $55c2: $00
	nop                                              ; $55c3: $00
	nop                                              ; $55c4: $00
	nop                                              ; $55c5: $00
	nop                                              ; $55c6: $00
	nop                                              ; $55c7: $00
	nop                                              ; $55c8: $00
	nop                                              ; $55c9: $00
	nop                                              ; $55ca: $00
	nop                                              ; $55cb: $00
	nop                                              ; $55cc: $00
	nop                                              ; $55cd: $00
	nop                                              ; $55ce: $00
	nop                                              ; $55cf: $00
	nop                                              ; $55d0: $00
	nop                                              ; $55d1: $00
	nop                                              ; $55d2: $00
	nop                                              ; $55d3: $00
	nop                                              ; $55d4: $00
	nop                                              ; $55d5: $00
	nop                                              ; $55d6: $00
	nop                                              ; $55d7: $00
	nop                                              ; $55d8: $00
	nop                                              ; $55d9: $00
	nop                                              ; $55da: $00
	nop                                              ; $55db: $00
	nop                                              ; $55dc: $00
	nop                                              ; $55dd: $00
	nop                                              ; $55de: $00
	nop                                              ; $55df: $00
	nop                                              ; $55e0: $00
	nop                                              ; $55e1: $00
	nop                                              ; $55e2: $00
	nop                                              ; $55e3: $00
	nop                                              ; $55e4: $00
	nop                                              ; $55e5: $00
	nop                                              ; $55e6: $00
	nop                                              ; $55e7: $00
	nop                                              ; $55e8: $00
	nop                                              ; $55e9: $00
	nop                                              ; $55ea: $00
	nop                                              ; $55eb: $00
	nop                                              ; $55ec: $00
	nop                                              ; $55ed: $00
	nop                                              ; $55ee: $00
	nop                                              ; $55ef: $00
	nop                                              ; $55f0: $00
	nop                                              ; $55f1: $00
	nop                                              ; $55f2: $00
	nop                                              ; $55f3: $00
	nop                                              ; $55f4: $00
	nop                                              ; $55f5: $00
	nop                                              ; $55f6: $00
	nop                                              ; $55f7: $00
	nop                                              ; $55f8: $00
	nop                                              ; $55f9: $00
	nop                                              ; $55fa: $00
	nop                                              ; $55fb: $00
	nop                                              ; $55fc: $00
	nop                                              ; $55fd: $00
	nop                                              ; $55fe: $00
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
	nop                                              ; $568b: $00
	nop                                              ; $568c: $00
	nop                                              ; $568d: $00
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
	nop                                              ; $569b: $00
	nop                                              ; $569c: $00
	nop                                              ; $569d: $00
	nop                                              ; $569e: $00
	nop                                              ; $569f: $00
	nop                                              ; $56a0: $00
	nop                                              ; $56a1: $00
	nop                                              ; $56a2: $00
	nop                                              ; $56a3: $00
	nop                                              ; $56a4: $00
	nop                                              ; $56a5: $00
	nop                                              ; $56a6: $00
	nop                                              ; $56a7: $00
	nop                                              ; $56a8: $00
	nop                                              ; $56a9: $00
	nop                                              ; $56aa: $00
	nop                                              ; $56ab: $00
	nop                                              ; $56ac: $00
	nop                                              ; $56ad: $00
	nop                                              ; $56ae: $00
	nop                                              ; $56af: $00
	nop                                              ; $56b0: $00
	nop                                              ; $56b1: $00
	nop                                              ; $56b2: $00
	nop                                              ; $56b3: $00
	nop                                              ; $56b4: $00
	nop                                              ; $56b5: $00
	nop                                              ; $56b6: $00
	nop                                              ; $56b7: $00
	nop                                              ; $56b8: $00
	nop                                              ; $56b9: $00
	nop                                              ; $56ba: $00
	nop                                              ; $56bb: $00
	nop                                              ; $56bc: $00
	nop                                              ; $56bd: $00
	nop                                              ; $56be: $00
	nop                                              ; $56bf: $00
	nop                                              ; $56c0: $00
	nop                                              ; $56c1: $00
	nop                                              ; $56c2: $00
	nop                                              ; $56c3: $00
	nop                                              ; $56c4: $00
	nop                                              ; $56c5: $00
	nop                                              ; $56c6: $00
	nop                                              ; $56c7: $00
	nop                                              ; $56c8: $00
	nop                                              ; $56c9: $00
	nop                                              ; $56ca: $00
	nop                                              ; $56cb: $00
	nop                                              ; $56cc: $00
	nop                                              ; $56cd: $00
	nop                                              ; $56ce: $00
	nop                                              ; $56cf: $00
	nop                                              ; $56d0: $00
	nop                                              ; $56d1: $00
	nop                                              ; $56d2: $00
	nop                                              ; $56d3: $00
	nop                                              ; $56d4: $00
	nop                                              ; $56d5: $00
	nop                                              ; $56d6: $00
	nop                                              ; $56d7: $00
	nop                                              ; $56d8: $00
	nop                                              ; $56d9: $00
	nop                                              ; $56da: $00
	nop                                              ; $56db: $00
	nop                                              ; $56dc: $00
	nop                                              ; $56dd: $00
	nop                                              ; $56de: $00
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
	nop                                              ; $56e9: $00
	nop                                              ; $56ea: $00
	nop                                              ; $56eb: $00
	nop                                              ; $56ec: $00
	nop                                              ; $56ed: $00
	nop                                              ; $56ee: $00
	nop                                              ; $56ef: $00
	nop                                              ; $56f0: $00
	nop                                              ; $56f1: $00
	nop                                              ; $56f2: $00
	nop                                              ; $56f3: $00
	nop                                              ; $56f4: $00
	nop                                              ; $56f5: $00
	nop                                              ; $56f6: $00
	nop                                              ; $56f7: $00
	nop                                              ; $56f8: $00
	nop                                              ; $56f9: $00
	nop                                              ; $56fa: $00
	nop                                              ; $56fb: $00
	nop                                              ; $56fc: $00
	nop                                              ; $56fd: $00
	nop                                              ; $56fe: $00
	nop                                              ; $56ff: $00
	nop                                              ; $5700: $00
	nop                                              ; $5701: $00
	nop                                              ; $5702: $00
	nop                                              ; $5703: $00
	nop                                              ; $5704: $00
	nop                                              ; $5705: $00
	nop                                              ; $5706: $00
	nop                                              ; $5707: $00
	nop                                              ; $5708: $00
	nop                                              ; $5709: $00
	nop                                              ; $570a: $00
	nop                                              ; $570b: $00
	nop                                              ; $570c: $00
	nop                                              ; $570d: $00
	nop                                              ; $570e: $00
	nop                                              ; $570f: $00
	nop                                              ; $5710: $00
	nop                                              ; $5711: $00
	nop                                              ; $5712: $00
	nop                                              ; $5713: $00
	nop                                              ; $5714: $00
	nop                                              ; $5715: $00
	nop                                              ; $5716: $00
	nop                                              ; $5717: $00
	nop                                              ; $5718: $00
	nop                                              ; $5719: $00
	nop                                              ; $571a: $00
	nop                                              ; $571b: $00
	nop                                              ; $571c: $00
	nop                                              ; $571d: $00
	nop                                              ; $571e: $00
	nop                                              ; $571f: $00
	nop                                              ; $5720: $00
	nop                                              ; $5721: $00
	nop                                              ; $5722: $00
	nop                                              ; $5723: $00
	nop                                              ; $5724: $00
	nop                                              ; $5725: $00
	nop                                              ; $5726: $00
	nop                                              ; $5727: $00
	nop                                              ; $5728: $00
	nop                                              ; $5729: $00
	nop                                              ; $572a: $00
	nop                                              ; $572b: $00
	nop                                              ; $572c: $00
	nop                                              ; $572d: $00
	nop                                              ; $572e: $00
	nop                                              ; $572f: $00
	nop                                              ; $5730: $00
	nop                                              ; $5731: $00
	nop                                              ; $5732: $00
	nop                                              ; $5733: $00
	nop                                              ; $5734: $00
	nop                                              ; $5735: $00
	nop                                              ; $5736: $00
	nop                                              ; $5737: $00
	nop                                              ; $5738: $00
	nop                                              ; $5739: $00
	nop                                              ; $573a: $00
	nop                                              ; $573b: $00
	nop                                              ; $573c: $00
	nop                                              ; $573d: $00
	nop                                              ; $573e: $00
	nop                                              ; $573f: $00
	nop                                              ; $5740: $00
	nop                                              ; $5741: $00
	nop                                              ; $5742: $00
	nop                                              ; $5743: $00
	nop                                              ; $5744: $00
	nop                                              ; $5745: $00
	nop                                              ; $5746: $00
	nop                                              ; $5747: $00
	nop                                              ; $5748: $00
	nop                                              ; $5749: $00
	nop                                              ; $574a: $00
	nop                                              ; $574b: $00
	nop                                              ; $574c: $00
	nop                                              ; $574d: $00
	nop                                              ; $574e: $00
	nop                                              ; $574f: $00
	nop                                              ; $5750: $00
	nop                                              ; $5751: $00
	nop                                              ; $5752: $00
	nop                                              ; $5753: $00
	nop                                              ; $5754: $00
	nop                                              ; $5755: $00
	nop                                              ; $5756: $00
	nop                                              ; $5757: $00
	nop                                              ; $5758: $00
	nop                                              ; $5759: $00
	nop                                              ; $575a: $00
	nop                                              ; $575b: $00
	nop                                              ; $575c: $00
	nop                                              ; $575d: $00
	nop                                              ; $575e: $00
	nop                                              ; $575f: $00
	nop                                              ; $5760: $00
	nop                                              ; $5761: $00
	nop                                              ; $5762: $00
	nop                                              ; $5763: $00
	nop                                              ; $5764: $00
	nop                                              ; $5765: $00
	nop                                              ; $5766: $00
	nop                                              ; $5767: $00
	nop                                              ; $5768: $00
	nop                                              ; $5769: $00
	nop                                              ; $576a: $00
	nop                                              ; $576b: $00
	nop                                              ; $576c: $00
	nop                                              ; $576d: $00
	nop                                              ; $576e: $00
	nop                                              ; $576f: $00
	nop                                              ; $5770: $00
	nop                                              ; $5771: $00
	nop                                              ; $5772: $00
	nop                                              ; $5773: $00
	nop                                              ; $5774: $00
	nop                                              ; $5775: $00
	nop                                              ; $5776: $00
	nop                                              ; $5777: $00
	nop                                              ; $5778: $00
	nop                                              ; $5779: $00
	nop                                              ; $577a: $00
	nop                                              ; $577b: $00
	nop                                              ; $577c: $00
	nop                                              ; $577d: $00
	nop                                              ; $577e: $00
	nop                                              ; $577f: $00
	nop                                              ; $5780: $00
	nop                                              ; $5781: $00
	nop                                              ; $5782: $00
	nop                                              ; $5783: $00
	nop                                              ; $5784: $00
	nop                                              ; $5785: $00
	nop                                              ; $5786: $00
	nop                                              ; $5787: $00
	nop                                              ; $5788: $00
	nop                                              ; $5789: $00
	nop                                              ; $578a: $00
	nop                                              ; $578b: $00
	nop                                              ; $578c: $00
	nop                                              ; $578d: $00
	nop                                              ; $578e: $00
	nop                                              ; $578f: $00
	nop                                              ; $5790: $00
	nop                                              ; $5791: $00
	nop                                              ; $5792: $00
	nop                                              ; $5793: $00
	nop                                              ; $5794: $00
	nop                                              ; $5795: $00
	nop                                              ; $5796: $00
	nop                                              ; $5797: $00
	nop                                              ; $5798: $00
	nop                                              ; $5799: $00
	nop                                              ; $579a: $00
	nop                                              ; $579b: $00
	nop                                              ; $579c: $00
	nop                                              ; $579d: $00
	nop                                              ; $579e: $00
	nop                                              ; $579f: $00
	nop                                              ; $57a0: $00
	nop                                              ; $57a1: $00
	nop                                              ; $57a2: $00
	nop                                              ; $57a3: $00
	nop                                              ; $57a4: $00
	nop                                              ; $57a5: $00
	nop                                              ; $57a6: $00
	nop                                              ; $57a7: $00
	nop                                              ; $57a8: $00
	nop                                              ; $57a9: $00
	nop                                              ; $57aa: $00
	nop                                              ; $57ab: $00
	nop                                              ; $57ac: $00
	nop                                              ; $57ad: $00
	nop                                              ; $57ae: $00
	nop                                              ; $57af: $00
	nop                                              ; $57b0: $00
	nop                                              ; $57b1: $00
	nop                                              ; $57b2: $00
	nop                                              ; $57b3: $00
	nop                                              ; $57b4: $00
	nop                                              ; $57b5: $00
	nop                                              ; $57b6: $00
	nop                                              ; $57b7: $00
	nop                                              ; $57b8: $00
	nop                                              ; $57b9: $00
	nop                                              ; $57ba: $00
	nop                                              ; $57bb: $00
	nop                                              ; $57bc: $00
	nop                                              ; $57bd: $00
	nop                                              ; $57be: $00
	nop                                              ; $57bf: $00
	nop                                              ; $57c0: $00
	nop                                              ; $57c1: $00
	nop                                              ; $57c2: $00
	nop                                              ; $57c3: $00
	nop                                              ; $57c4: $00
	nop                                              ; $57c5: $00
	nop                                              ; $57c6: $00
	nop                                              ; $57c7: $00
	nop                                              ; $57c8: $00
	nop                                              ; $57c9: $00
	nop                                              ; $57ca: $00
	nop                                              ; $57cb: $00
	nop                                              ; $57cc: $00
	nop                                              ; $57cd: $00
	nop                                              ; $57ce: $00
	nop                                              ; $57cf: $00
	nop                                              ; $57d0: $00
	nop                                              ; $57d1: $00
	nop                                              ; $57d2: $00
	nop                                              ; $57d3: $00
	nop                                              ; $57d4: $00
	nop                                              ; $57d5: $00
	nop                                              ; $57d6: $00
	nop                                              ; $57d7: $00
	nop                                              ; $57d8: $00
	nop                                              ; $57d9: $00
	nop                                              ; $57da: $00
	nop                                              ; $57db: $00
	nop                                              ; $57dc: $00
	nop                                              ; $57dd: $00
	nop                                              ; $57de: $00
	nop                                              ; $57df: $00
	nop                                              ; $57e0: $00
	nop                                              ; $57e1: $00
	nop                                              ; $57e2: $00
	nop                                              ; $57e3: $00
	nop                                              ; $57e4: $00
	nop                                              ; $57e5: $00
	nop                                              ; $57e6: $00
	nop                                              ; $57e7: $00
	nop                                              ; $57e8: $00
	nop                                              ; $57e9: $00
	nop                                              ; $57ea: $00
	nop                                              ; $57eb: $00
	nop                                              ; $57ec: $00
	nop                                              ; $57ed: $00
	nop                                              ; $57ee: $00
	nop                                              ; $57ef: $00
	nop                                              ; $57f0: $00
	nop                                              ; $57f1: $00
	nop                                              ; $57f2: $00
	nop                                              ; $57f3: $00
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
	add  b                                           ; $5800: $80
	add  b                                           ; $5801: $80
	add  b                                           ; $5802: $80
	add  b                                           ; $5803: $80
	add  b                                           ; $5804: $80
	add  b                                           ; $5805: $80
	add  b                                           ; $5806: $80
	add  b                                           ; $5807: $80
	add  b                                           ; $5808: $80
	add  b                                           ; $5809: $80
	add  b                                           ; $580a: $80
	add  b                                           ; $580b: $80
	add  b                                           ; $580c: $80
	add  b                                           ; $580d: $80
	add  b                                           ; $580e: $80
	add  b                                           ; $580f: $80
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
	add  b                                           ; $5830: $80
	add  b                                           ; $5831: $80
	add  b                                           ; $5832: $80
	add  b                                           ; $5833: $80
	add  b                                           ; $5834: $80
	add  b                                           ; $5835: $80
	add  b                                           ; $5836: $80
	add  b                                           ; $5837: $80
	add  b                                           ; $5838: $80
	add  b                                           ; $5839: $80
	add  b                                           ; $583a: $80
	add  b                                           ; $583b: $80
	add  b                                           ; $583c: $80
	add  b                                           ; $583d: $80
	add  b                                           ; $583e: $80
	add  b                                           ; $583f: $80
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
	nop                                              ; $58a3: $00
	nop                                              ; $58a4: $00
	nop                                              ; $58a5: $00
	nop                                              ; $58a6: $00
	nop                                              ; $58a7: $00
	nop                                              ; $58a8: $00
	nop                                              ; $58a9: $00
	nop                                              ; $58aa: $00
	nop                                              ; $58ab: $00
	nop                                              ; $58ac: $00
	nop                                              ; $58ad: $00
	nop                                              ; $58ae: $00
	nop                                              ; $58af: $00
	nop                                              ; $58b0: $00
	nop                                              ; $58b1: $00
	nop                                              ; $58b2: $00
	nop                                              ; $58b3: $00
	nop                                              ; $58b4: $00
	nop                                              ; $58b5: $00
	nop                                              ; $58b6: $00
	nop                                              ; $58b7: $00
	nop                                              ; $58b8: $00
	nop                                              ; $58b9: $00
	nop                                              ; $58ba: $00
	nop                                              ; $58bb: $00
	nop                                              ; $58bc: $00
	nop                                              ; $58bd: $00
	nop                                              ; $58be: $00
	nop                                              ; $58bf: $00
	rst  $38                                         ; $58c0: $ff
	rst  $38                                         ; $58c1: $ff
	rst  $38                                         ; $58c2: $ff
	add  b                                           ; $58c3: $80
	rst  $38                                         ; $58c4: $ff
	add  b                                           ; $58c5: $80
	rst  $38                                         ; $58c6: $ff
	add  b                                           ; $58c7: $80
	rst  $38                                         ; $58c8: $ff
	add  b                                           ; $58c9: $80
	rst  $38                                         ; $58ca: $ff
	add  b                                           ; $58cb: $80
	rst  $38                                         ; $58cc: $ff
	add  b                                           ; $58cd: $80
	rst  $38                                         ; $58ce: $ff
	add  b                                           ; $58cf: $80
	rst  $38                                         ; $58d0: $ff
	rst  $38                                         ; $58d1: $ff
	rst  $38                                         ; $58d2: $ff
	nop                                              ; $58d3: $00
	rst  $38                                         ; $58d4: $ff
	nop                                              ; $58d5: $00
	jp   $bd3c                                       ; $58d6: $c3 $3c $bd


	ld   b, d                                        ; $58d9: $42
	sbc  l                                           ; $58da: $9d
	ld   h, d                                        ; $58db: $62
	dec  a                                           ; $58dc: $3d
	jp   nz, $3cc3                                   ; $58dd: $c2 $c3 $3c

	rst  $38                                         ; $58e0: $ff
	rst  $38                                         ; $58e1: $ff
	rst  $38                                         ; $58e2: $ff
	nop                                              ; $58e3: $00
	rst  $38                                         ; $58e4: $ff
	nop                                              ; $58e5: $00
	rst  $38                                         ; $58e6: $ff
	nop                                              ; $58e7: $00
	rst  $38                                         ; $58e8: $ff
	nop                                              ; $58e9: $00
	rst  $38                                         ; $58ea: $ff

jr_08d_58eb:
	nop                                              ; $58eb: $00
	rst  $38                                         ; $58ec: $ff
	nop                                              ; $58ed: $00
	rst  $38                                         ; $58ee: $ff
	nop                                              ; $58ef: $00
	rst  $38                                         ; $58f0: $ff

jr_08d_58f1:
	add  b                                           ; $58f1: $80
	rst  $38                                         ; $58f2: $ff
	add  b                                           ; $58f3: $80
	rst  $38                                         ; $58f4: $ff
	add  b                                           ; $58f5: $80
	cp   $81                                         ; $58f6: $fe $81
	cp   $81                                         ; $58f8: $fe $81
	rst  $38                                         ; $58fa: $ff
	add  b                                           ; $58fb: $80
	rst  $38                                         ; $58fc: $ff
	add  b                                           ; $58fd: $80
	rst  $38                                         ; $58fe: $ff
	rst  $38                                         ; $58ff: $ff
	ld   h, a                                        ; $5900: $67
	sbc  b                                           ; $5901: $98
	jr   jr_08d_58eb                                 ; $5902: $18 $e7

	jp   c, $c325                                    ; $5904: $da $25 $c3

	inc  a                                           ; $5907: $3c
	jr   jr_08d_58f1                                 ; $5908: $18 $e7

	ld   sp, $ffce                                   ; $590a: $31 $ce $ff
	nop                                              ; $590d: $00
	rst  $38                                         ; $590e: $ff
	rst  $38                                         ; $590f: $ff
	rst  $38                                         ; $5910: $ff
	nop                                              ; $5911: $00
	rst  $38                                         ; $5912: $ff
	nop                                              ; $5913: $00
	rst  $38                                         ; $5914: $ff
	nop                                              ; $5915: $00
	rst  $38                                         ; $5916: $ff
	nop                                              ; $5917: $00
	rst  $38                                         ; $5918: $ff
	nop                                              ; $5919: $00
	rst  $38                                         ; $591a: $ff
	nop                                              ; $591b: $00
	rst  $38                                         ; $591c: $ff
	nop                                              ; $591d: $00
	rst  $38                                         ; $591e: $ff
	rst  $38                                         ; $591f: $ff
	rst  $38                                         ; $5920: $ff
	rst  $38                                         ; $5921: $ff
	rst  $38                                         ; $5922: $ff
	add  b                                           ; $5923: $80
	rst  $38                                         ; $5924: $ff
	add  b                                           ; $5925: $80
	rst  $38                                         ; $5926: $ff
	add  b                                           ; $5927: $80
	rst  $38                                         ; $5928: $ff
	add  b                                           ; $5929: $80
	rst  $38                                         ; $592a: $ff
	add  b                                           ; $592b: $80
	rst  $38                                         ; $592c: $ff
	add  b                                           ; $592d: $80
	rst  $38                                         ; $592e: $ff
	add  b                                           ; $592f: $80
	rst  $38                                         ; $5930: $ff
	rst  $38                                         ; $5931: $ff
	rst  $38                                         ; $5932: $ff
	nop                                              ; $5933: $00
	rst  $38                                         ; $5934: $ff
	nop                                              ; $5935: $00
	db   $e3                                         ; $5936: $e3
	inc  e                                           ; $5937: $1c
	db   $dd                                         ; $5938: $dd
	ld   [hl+], a                                    ; $5939: $22
	sbc  h                                           ; $593a: $9c
	ld   h, e                                        ; $593b: $63
	sbc  h                                           ; $593c: $9c
	ld   h, e                                        ; $593d: $63
	ld   [hl+], a                                    ; $593e: $22
	db   $dd                                         ; $593f: $dd
	rst  $38                                         ; $5940: $ff
	rst  $38                                         ; $5941: $ff
	rst  $38                                         ; $5942: $ff
	nop                                              ; $5943: $00
	rst  $38                                         ; $5944: $ff
	nop                                              ; $5945: $00
	rst  $38                                         ; $5946: $ff
	nop                                              ; $5947: $00
	rst  $38                                         ; $5948: $ff
	nop                                              ; $5949: $00
	rst  $38                                         ; $594a: $ff
	nop                                              ; $594b: $00
	rst  $38                                         ; $594c: $ff
	nop                                              ; $594d: $00
	ld   a, a                                        ; $594e: $7f
	add  b                                           ; $594f: $80
	cp   $81                                         ; $5950: $fe $81
	cp   $81                                         ; $5952: $fe $81
	db   $fc                                         ; $5954: $fc
	add  e                                           ; $5955: $83
	db   $fc                                         ; $5956: $fc
	add  e                                           ; $5957: $83
	ld   hl, sp-$79                                  ; $5958: $f8 $87
	db   $fc                                         ; $595a: $fc
	add  e                                           ; $595b: $83
	rst  $38                                         ; $595c: $ff
	add  b                                           ; $595d: $80
	rst  $38                                         ; $595e: $ff
	rst  $38                                         ; $595f: $ff
	inc  e                                           ; $5960: $1c
	db   $e3                                         ; $5961: $e3
	inc  e                                           ; $5962: $1c
	db   $e3                                         ; $5963: $e3
	ld   a, $c1                                      ; $5964: $3e $c1
	ld   a, a                                        ; $5966: $7f
	add  b                                           ; $5967: $80
	ld   a, a                                        ; $5968: $7f
	add  b                                           ; $5969: $80
	rst  $38                                         ; $596a: $ff
	nop                                              ; $596b: $00
	rst  $38                                         ; $596c: $ff
	nop                                              ; $596d: $00
	rst  $38                                         ; $596e: $ff
	rst  $38                                         ; $596f: $ff
	ccf                                              ; $5970: $3f
	ret  nz                                          ; $5971: $c0

	ccf                                              ; $5972: $3f
	ret  nz                                          ; $5973: $c0

	rra                                              ; $5974: $1f
	ldh  [$1f], a                                    ; $5975: $e0 $1f
	ldh  [rIF], a                                    ; $5977: $e0 $0f
	ldh  a, [$9f]                                    ; $5979: $f0 $9f
	ld   h, b                                        ; $597b: $60
	rst  $38                                         ; $597c: $ff
	nop                                              ; $597d: $00
	rst  $38                                         ; $597e: $ff
	rst  $38                                         ; $597f: $ff
	rst  $38                                         ; $5980: $ff
	rst  $38                                         ; $5981: $ff
	rst  $38                                         ; $5982: $ff
	add  b                                           ; $5983: $80
	rst  $38                                         ; $5984: $ff
	add  b                                           ; $5985: $80
	rst  $38                                         ; $5986: $ff
	add  b                                           ; $5987: $80
	rst  $38                                         ; $5988: $ff
	add  b                                           ; $5989: $80
	rst  $38                                         ; $598a: $ff
	add  b                                           ; $598b: $80
	rst  $38                                         ; $598c: $ff
	add  b                                           ; $598d: $80
	rst  $38                                         ; $598e: $ff
	add  b                                           ; $598f: $80
	rst  $38                                         ; $5990: $ff
	rst  $38                                         ; $5991: $ff
	rst  $38                                         ; $5992: $ff
	nop                                              ; $5993: $00
	rst  $38                                         ; $5994: $ff
	nop                                              ; $5995: $00
	pop  bc                                          ; $5996: $c1
	ld   a, $3e                                      ; $5997: $3e $3e
	pop  bc                                          ; $5999: $c1
	ld   b, c                                        ; $599a: $41
	cp   [hl]                                        ; $599b: $be
	nop                                              ; $599c: $00
	rst  $38                                         ; $599d: $ff
	ld   b, c                                        ; $599e: $41
	cp   [hl]                                        ; $599f: $be
	rst  $38                                         ; $59a0: $ff
	rst  $38                                         ; $59a1: $ff
	rst  $38                                         ; $59a2: $ff
	nop                                              ; $59a3: $00
	rst  $38                                         ; $59a4: $ff
	nop                                              ; $59a5: $00
	rst  $38                                         ; $59a6: $ff
	nop                                              ; $59a7: $00
	ld   a, a                                        ; $59a8: $7f
	add  b                                           ; $59a9: $80
	rra                                              ; $59aa: $1f
	ldh  [$5f], a                                    ; $59ab: $e0 $5f
	and  b                                           ; $59ad: $a0
	ld   e, a                                        ; $59ae: $5f
	and  b                                           ; $59af: $a0
	db   $fc                                         ; $59b0: $fc
	add  e                                           ; $59b1: $83
	ei                                               ; $59b2: $fb
	add  h                                           ; $59b3: $84
	rst  $30                                         ; $59b4: $f7
	adc  b                                           ; $59b5: $88
	rst  $30                                         ; $59b6: $f7
	adc  b                                           ; $59b7: $88
	ld   sp, hl                                      ; $59b8: $f9
	add  [hl]                                        ; $59b9: $86
	cp   $81                                         ; $59ba: $fe $81
	rst  $38                                         ; $59bc: $ff
	add  b                                           ; $59bd: $80
	rst  $38                                         ; $59be: $ff
	rst  $38                                         ; $59bf: $ff
	ld   a, a                                        ; $59c0: $7f
	add  b                                           ; $59c1: $80
	cp   [hl]                                        ; $59c2: $be
	ld   b, c                                        ; $59c3: $41
	ld   b, c                                        ; $59c4: $41
	cp   [hl]                                        ; $59c5: $be
	add  b                                           ; $59c6: $80
	ld   a, a                                        ; $59c7: $7f
	rst  $38                                         ; $59c8: $ff
	nop                                              ; $59c9: $00
	nop                                              ; $59ca: $00
	rst  $38                                         ; $59cb: $ff
	rst  $38                                         ; $59cc: $ff
	nop                                              ; $59cd: $00
	rst  $38                                         ; $59ce: $ff
	rst  $38                                         ; $59cf: $ff
	rra                                              ; $59d0: $1f
	ldh  [$ef], a                                    ; $59d1: $e0 $ef
	db   $10                                         ; $59d3: $10
	ld   [hl], a                                     ; $59d4: $77
	adc  b                                           ; $59d5: $88
	rst  $30                                         ; $59d6: $f7
	ld   [$30cf], sp                                 ; $59d7: $08 $cf $30
	ccf                                              ; $59da: $3f
	ret  nz                                          ; $59db: $c0

	rst  $38                                         ; $59dc: $ff
	nop                                              ; $59dd: $00
	rst  $38                                         ; $59de: $ff
	rst  $38                                         ; $59df: $ff
	rst  $38                                         ; $59e0: $ff
	rst  $38                                         ; $59e1: $ff
	rst  $38                                         ; $59e2: $ff
	add  b                                           ; $59e3: $80
	cp   $81                                         ; $59e4: $fe $81
	db   $fd                                         ; $59e6: $fd
	add  d                                           ; $59e7: $82
	db   $fd                                         ; $59e8: $fd
	add  d                                           ; $59e9: $82
	ld   a, [$fa85]                                  ; $59ea: $fa $85 $fa
	add  l                                           ; $59ed: $85
	ld   a, [$ff85]                                  ; $59ee: $fa $85 $ff
	rst  $38                                         ; $59f1: $ff
	ld   a, a                                        ; $59f2: $7f
	add  b                                           ; $59f3: $80
	add  b                                           ; $59f4: $80
	ld   a, a                                        ; $59f5: $7f
	nop                                              ; $59f6: $00
	rst  $38                                         ; $59f7: $ff
	ld   a, a                                        ; $59f8: $7f
	add  b                                           ; $59f9: $80
	ld   a, a                                        ; $59fa: $7f
	add  b                                           ; $59fb: $80
	ld   a, a                                        ; $59fc: $7f
	add  b                                           ; $59fd: $80
	ld   a, a                                        ; $59fe: $7f
	add  b                                           ; $59ff: $80
	rst  $38                                         ; $5a00: $ff
	rst  $38                                         ; $5a01: $ff
	ld   a, a                                        ; $5a02: $7f
	add  b                                           ; $5a03: $80
	cp   a                                           ; $5a04: $bf
	ld   b, b                                        ; $5a05: $40
	ld   e, a                                        ; $5a06: $5f
	and  b                                           ; $5a07: $a0
	ld   e, a                                        ; $5a08: $5f
	and  b                                           ; $5a09: $a0
	cpl                                              ; $5a0a: $2f
	ret  nc                                          ; $5a0b: $d0

	cpl                                              ; $5a0c: $2f
	ret  nc                                          ; $5a0d: $d0

	cpl                                              ; $5a0e: $2f
	ret  nc                                          ; $5a0f: $d0

	ld   a, [$fa85]                                  ; $5a10: $fa $85 $fa
	add  l                                           ; $5a13: $85
	ei                                               ; $5a14: $fb
	add  h                                           ; $5a15: $84
	ei                                               ; $5a16: $fb
	add  h                                           ; $5a17: $84
	ld   a, [$fb85]                                  ; $5a18: $fa $85 $fb
	add  h                                           ; $5a1b: $84
	db   $fd                                         ; $5a1c: $fd
	add  d                                           ; $5a1d: $82
	rst  $38                                         ; $5a1e: $ff
	rst  $38                                         ; $5a1f: $ff
	ld   a, a                                        ; $5a20: $7f
	add  b                                           ; $5a21: $80
	nop                                              ; $5a22: $00
	rst  $38                                         ; $5a23: $ff
	rst  $38                                         ; $5a24: $ff
	nop                                              ; $5a25: $00
	ld   a, a                                        ; $5a26: $7f
	add  b                                           ; $5a27: $80
	dec  a                                           ; $5a28: $3d
	jp   nz, $807f                                   ; $5a29: $c2 $7f $80

	rst  $38                                         ; $5a2c: $ff
	nop                                              ; $5a2d: $00
	rst  $38                                         ; $5a2e: $ff
	rst  $38                                         ; $5a2f: $ff
	cpl                                              ; $5a30: $2f
	ret  nc                                          ; $5a31: $d0

	cpl                                              ; $5a32: $2f
	ret  nc                                          ; $5a33: $d0

	rst  $28                                         ; $5a34: $ef
	db   $10                                         ; $5a35: $10

jr_08d_5a36:
	cpl                                              ; $5a36: $2f
	ret  nc                                          ; $5a37: $d0

jr_08d_5a38:
	cpl                                              ; $5a38: $2f
	ret  nc                                          ; $5a39: $d0

jr_08d_5a3a:
	rst  $28                                         ; $5a3a: $ef
	db   $10                                         ; $5a3b: $10

jr_08d_5a3c:
	rst  JumpTable                                         ; $5a3c: $df
	jr   nz, @+$01                                   ; $5a3d: $20 $ff

	rst  $38                                         ; $5a3f: $ff
	rst  $38                                         ; $5a40: $ff
	rst  $38                                         ; $5a41: $ff
	ld   hl, sp-$79                                  ; $5a42: $f8 $87
	ld   sp, hl                                      ; $5a44: $f9
	add  [hl]                                        ; $5a45: $86
	ld   sp, hl                                      ; $5a46: $f9
	add  [hl]                                        ; $5a47: $86
	ld   sp, hl                                      ; $5a48: $f9
	add  [hl]                                        ; $5a49: $86
	ld   sp, hl                                      ; $5a4a: $f9
	add  [hl]                                        ; $5a4b: $86
	ld   sp, hl                                      ; $5a4c: $f9
	add  [hl]                                        ; $5a4d: $86
	ld   sp, hl                                      ; $5a4e: $f9
	add  [hl]                                        ; $5a4f: $86
	rst  $38                                         ; $5a50: $ff
	rst  $38                                         ; $5a51: $ff
	nop                                              ; $5a52: $00
	rst  $38                                         ; $5a53: $ff
	rst  $38                                         ; $5a54: $ff
	nop                                              ; $5a55: $00
	rst  $38                                         ; $5a56: $ff
	nop                                              ; $5a57: $00
	rst  $38                                         ; $5a58: $ff
	nop                                              ; $5a59: $00
	rst  $38                                         ; $5a5a: $ff
	nop                                              ; $5a5b: $00
	rst  $38                                         ; $5a5c: $ff
	nop                                              ; $5a5d: $00
	rst  $38                                         ; $5a5e: $ff
	nop                                              ; $5a5f: $00
	rst  $38                                         ; $5a60: $ff
	rst  $38                                         ; $5a61: $ff
	rrca                                             ; $5a62: $0f
	ldh  a, [$cf]                                    ; $5a63: $f0 $cf
	jr   nc, jr_08d_5a36                             ; $5a65: $30 $cf

	jr   nc, jr_08d_5a38                             ; $5a67: $30 $cf

	jr   nc, jr_08d_5a3a                             ; $5a69: $30 $cf

	jr   nc, jr_08d_5a3c                             ; $5a6b: $30 $cf

	jr   nc, @-$2f                                   ; $5a6d: $30 $cf

	jr   nc, @-$05                                   ; $5a6f: $30 $f9

	add  [hl]                                        ; $5a71: $86
	ld   hl, sp-$79                                  ; $5a72: $f8 $87
	ei                                               ; $5a74: $fb
	add  h                                           ; $5a75: $84
	ei                                               ; $5a76: $fb
	add  h                                           ; $5a77: $84
	ld   a, [$fb85]                                  ; $5a78: $fa $85 $fb
	add  h                                           ; $5a7b: $84
	ei                                               ; $5a7c: $fb
	add  h                                           ; $5a7d: $84
	rst  $38                                         ; $5a7e: $ff
	rst  $38                                         ; $5a7f: $ff
	rst  $38                                         ; $5a80: $ff
	nop                                              ; $5a81: $00
	nop                                              ; $5a82: $00
	rst  $38                                         ; $5a83: $ff
	rst  $38                                         ; $5a84: $ff
	nop                                              ; $5a85: $00
	ld   a, a                                        ; $5a86: $7f
	add  b                                           ; $5a87: $80
	add  hl, sp                                      ; $5a88: $39
	add  $79                                         ; $5a89: $c6 $79
	add  [hl]                                        ; $5a8b: $86
	rst  $38                                         ; $5a8c: $ff
	nop                                              ; $5a8d: $00
	rst  $38                                         ; $5a8e: $ff
	rst  $38                                         ; $5a8f: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a90: $cf
	jr   nc, jr_08d_5aa2                             ; $5a91: $30 $0f

	ldh  a, [$ef]                                    ; $5a93: $f0 $ef
	db   $10                                         ; $5a95: $10
	cpl                                              ; $5a96: $2f
	ret  nc                                          ; $5a97: $d0

	cpl                                              ; $5a98: $2f
	ret  nc                                          ; $5a99: $d0

	rst  $28                                         ; $5a9a: $ef
	db   $10                                         ; $5a9b: $10
	rst  $28                                         ; $5a9c: $ef
	db   $10                                         ; $5a9d: $10
	rst  $38                                         ; $5a9e: $ff
	rst  $38                                         ; $5a9f: $ff
	rst  $38                                         ; $5aa0: $ff
	rst  $38                                         ; $5aa1: $ff

jr_08d_5aa2:
	rst  $38                                         ; $5aa2: $ff
	add  b                                           ; $5aa3: $80
	sbc  a                                           ; $5aa4: $9f
	ldh  [$c7], a                                    ; $5aa5: $e0 $c7
	cp   b                                           ; $5aa7: $b8
	ldh  a, [c]                                      ; $5aa8: $f2
	adc  l                                           ; $5aa9: $8d
	ld   hl, sp-$79                                  ; $5aaa: $f8 $87
	db   $fd                                         ; $5aac: $fd
	add  d                                           ; $5aad: $82
	db   $fd                                         ; $5aae: $fd
	add  d                                           ; $5aaf: $82
	rst  $38                                         ; $5ab0: $ff
	rst  $38                                         ; $5ab1: $ff
	rst  $38                                         ; $5ab2: $ff
	nop                                              ; $5ab3: $00
	ret  nz                                          ; $5ab4: $c0

	ccf                                              ; $5ab5: $3f
	rra                                              ; $5ab6: $1f
	ldh  [$7f], a                                    ; $5ab7: $e0 $7f
	add  b                                           ; $5ab9: $80
	cp   $01                                         ; $5aba: $fe $01
	db   $fc                                         ; $5abc: $fc
	inc  bc                                          ; $5abd: $03
	ld   hl, sp+$07                                  ; $5abe: $f8 $07
	rst  $38                                         ; $5ac0: $ff
	rst  $38                                         ; $5ac1: $ff
	rst  $28                                         ; $5ac2: $ef
	db   $10                                         ; $5ac3: $10
	rlca                                             ; $5ac4: $07
	ld   hl, sp-$71                                  ; $5ac5: $f8 $8f
	ld   [hl], b                                     ; $5ac7: $70
	rrca                                             ; $5ac8: $0f
	ldh  a, [$2f]                                    ; $5ac9: $f0 $2f
	ret  nc                                          ; $5acb: $d0

	ld   l, a                                        ; $5acc: $6f
	sub  b                                           ; $5acd: $90

jr_08d_5ace:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ace: $cf
	jr   nc, jr_08d_5ace                             ; $5acf: $30 $fd

	add  d                                           ; $5ad1: $82
	db   $fd                                         ; $5ad2: $fd
	add  d                                           ; $5ad3: $82
	db   $fd                                         ; $5ad4: $fd
	add  d                                           ; $5ad5: $82
	db   $fd                                         ; $5ad6: $fd
	add  d                                           ; $5ad7: $82
	db   $fd                                         ; $5ad8: $fd
	add  d                                           ; $5ad9: $82
	db   $fd                                         ; $5ada: $fd
	add  d                                           ; $5adb: $82
	db   $fd                                         ; $5adc: $fd
	add  d                                           ; $5add: $82
	rst  $38                                         ; $5ade: $ff
	rst  $38                                         ; $5adf: $ff
	push af                                          ; $5ae0: $f5
	ld   a, [bc]                                     ; $5ae1: $0a
	ldh  a, [rIF]                                    ; $5ae2: $f0 $0f
	rst  $38                                         ; $5ae4: $ff
	nop                                              ; $5ae5: $00
	rst  $38                                         ; $5ae6: $ff
	nop                                              ; $5ae7: $00
	rst  $38                                         ; $5ae8: $ff
	nop                                              ; $5ae9: $00
	rst  $38                                         ; $5aea: $ff
	nop                                              ; $5aeb: $00
	rst  $38                                         ; $5aec: $ff
	nop                                              ; $5aed: $00
	rst  $38                                         ; $5aee: $ff
	rst  $38                                         ; $5aef: $ff
	cpl                                              ; $5af0: $2f
	ret  nc                                          ; $5af1: $d0

	rst  $28                                         ; $5af2: $ef
	db   $10                                         ; $5af3: $10
	rst  $28                                         ; $5af4: $ef
	db   $10                                         ; $5af5: $10
	rst  $28                                         ; $5af6: $ef
	db   $10                                         ; $5af7: $10
	rst  $28                                         ; $5af8: $ef
	db   $10                                         ; $5af9: $10
	rst  $28                                         ; $5afa: $ef
	db   $10                                         ; $5afb: $10
	rst  $28                                         ; $5afc: $ef
	db   $10                                         ; $5afd: $10
	rst  $38                                         ; $5afe: $ff
	rst  $38                                         ; $5aff: $ff
	rst  $38                                         ; $5b00: $ff
	rst  $38                                         ; $5b01: $ff
	rst  $38                                         ; $5b02: $ff
	add  b                                           ; $5b03: $80
	rst  $38                                         ; $5b04: $ff
	add  b                                           ; $5b05: $80
	rst  $38                                         ; $5b06: $ff
	add  b                                           ; $5b07: $80
	rst  $38                                         ; $5b08: $ff
	add  b                                           ; $5b09: $80
	rst  $28                                         ; $5b0a: $ef
	sub  b                                           ; $5b0b: $90
	rst  $38                                         ; $5b0c: $ff
	add  b                                           ; $5b0d: $80
	rst  $38                                         ; $5b0e: $ff
	add  b                                           ; $5b0f: $80
	rst  $38                                         ; $5b10: $ff
	rst  $38                                         ; $5b11: $ff
	rst  $38                                         ; $5b12: $ff
	nop                                              ; $5b13: $00
	rst  $38                                         ; $5b14: $ff
	nop                                              ; $5b15: $00
	ei                                               ; $5b16: $fb
	inc  b                                           ; $5b17: $04
	cp   l                                           ; $5b18: $bd
	ld   b, d                                        ; $5b19: $42
	db   $fc                                         ; $5b1a: $fc
	inc  bc                                          ; $5b1b: $03
	db   $fc                                         ; $5b1c: $fc
	inc  bc                                          ; $5b1d: $03
	ld   hl, sp+$07                                  ; $5b1e: $f8 $07
	rst  $38                                         ; $5b20: $ff
	rst  $38                                         ; $5b21: $ff
	rst  $38                                         ; $5b22: $ff
	nop                                              ; $5b23: $00
	rst  $38                                         ; $5b24: $ff
	nop                                              ; $5b25: $00
	ei                                               ; $5b26: $fb
	inc  b                                           ; $5b27: $04
	rst  $38                                         ; $5b28: $ff
	nop                                              ; $5b29: $00
	rst  $38                                         ; $5b2a: $ff
	nop                                              ; $5b2b: $00
	rst  $38                                         ; $5b2c: $ff
	nop                                              ; $5b2d: $00
	rst  $38                                         ; $5b2e: $ff
	nop                                              ; $5b2f: $00
	rst  $38                                         ; $5b30: $ff
	add  b                                           ; $5b31: $80
	rst  $38                                         ; $5b32: $ff
	add  b                                           ; $5b33: $80
	rst  $38                                         ; $5b34: $ff
	add  b                                           ; $5b35: $80
	ei                                               ; $5b36: $fb
	add  h                                           ; $5b37: $84
	rst  $38                                         ; $5b38: $ff
	add  b                                           ; $5b39: $80
	rst  $38                                         ; $5b3a: $ff
	add  b                                           ; $5b3b: $80
	rst  $38                                         ; $5b3c: $ff
	add  b                                           ; $5b3d: $80
	rst  $38                                         ; $5b3e: $ff
	rst  $38                                         ; $5b3f: $ff
	ld   [hl], b                                     ; $5b40: $70
	adc  a                                           ; $5b41: $8f
	add  c                                           ; $5b42: $81
	ld   a, [hl]                                     ; $5b43: $7e
	jp   $ff3c                                       ; $5b44: $c3 $3c $ff


	nop                                              ; $5b47: $00
	rst  $38                                         ; $5b48: $ff
	nop                                              ; $5b49: $00
	rst  $38                                         ; $5b4a: $ff
	nop                                              ; $5b4b: $00
	rst  $38                                         ; $5b4c: $ff
	nop                                              ; $5b4d: $00
	rst  $38                                         ; $5b4e: $ff
	rst  $38                                         ; $5b4f: $ff
	rst  $38                                         ; $5b50: $ff
	nop                                              ; $5b51: $00
	rst  $38                                         ; $5b52: $ff
	nop                                              ; $5b53: $00
	rst  $38                                         ; $5b54: $ff
	nop                                              ; $5b55: $00
	rst  $38                                         ; $5b56: $ff
	nop                                              ; $5b57: $00
	rst  $38                                         ; $5b58: $ff
	nop                                              ; $5b59: $00
	cp   a                                           ; $5b5a: $bf

jr_08d_5b5b:
	ld   b, b                                        ; $5b5b: $40
	rst  $38                                         ; $5b5c: $ff
	nop                                              ; $5b5d: $00
	rst  $38                                         ; $5b5e: $ff
	rst  $38                                         ; $5b5f: $ff
	rst  $38                                         ; $5b60: $ff
	rst  $38                                         ; $5b61: $ff
	cp   $81                                         ; $5b62: $fe $81
	cp   $81                                         ; $5b64: $fe $81
	cp   $81                                         ; $5b66: $fe $81
	cp   $81                                         ; $5b68: $fe $81
	db   $fc                                         ; $5b6a: $fc
	add  e                                           ; $5b6b: $83
	db   $fc                                         ; $5b6c: $fc
	add  e                                           ; $5b6d: $83
	ld   hl, sp-$79                                  ; $5b6e: $f8 $87
	rst  $38                                         ; $5b70: $ff
	rst  $38                                         ; $5b71: $ff
	jr   jr_08d_5b5b                                 ; $5b72: $18 $e7

	rst  $20                                         ; $5b74: $e7
	jr   jr_08d_5b8f                                 ; $5b75: $18 $18

	rst  $20                                         ; $5b77: $e7
	nop                                              ; $5b78: $00
	rst  $38                                         ; $5b79: $ff
	nop                                              ; $5b7a: $00
	rst  $38                                         ; $5b7b: $ff
	ld   [$2af7], sp                                 ; $5b7c: $08 $f7 $2a
	push de                                          ; $5b7f: $d5
	rst  $38                                         ; $5b80: $ff
	rst  $38                                         ; $5b81: $ff
	ld   a, a                                        ; $5b82: $7f
	add  b                                           ; $5b83: $80
	ld   a, a                                        ; $5b84: $7f
	add  b                                           ; $5b85: $80
	ld   a, a                                        ; $5b86: $7f
	add  b                                           ; $5b87: $80
	ld   a, a                                        ; $5b88: $7f
	add  b                                           ; $5b89: $80
	ccf                                              ; $5b8a: $3f

jr_08d_5b8b:
	ret  nz                                          ; $5b8b: $c0

	ccf                                              ; $5b8c: $3f
	ret  nz                                          ; $5b8d: $c0

	rra                                              ; $5b8e: $1f

jr_08d_5b8f:
	ldh  [$f8], a                                    ; $5b8f: $e0 $f8
	add  a                                           ; $5b91: $87
	ld   hl, sp-$79                                  ; $5b92: $f8 $87
	ld   hl, sp-$79                                  ; $5b94: $f8 $87
	db   $fc                                         ; $5b96: $fc
	add  e                                           ; $5b97: $83
	db   $fc                                         ; $5b98: $fc
	add  e                                           ; $5b99: $83
	db   $fd                                         ; $5b9a: $fd
	add  d                                           ; $5b9b: $82
	db   $fd                                         ; $5b9c: $fd
	add  d                                           ; $5b9d: $82
	rst  $38                                         ; $5b9e: $ff
	rst  $38                                         ; $5b9f: $ff
	ld   l, d                                        ; $5ba0: $6a
	sub  l                                           ; $5ba1: $95
	jr   jr_08d_5b8b                                 ; $5ba2: $18 $e7

	db   $dd                                         ; $5ba4: $dd
	ld   [hl+], a                                    ; $5ba5: $22
	sbc  c                                           ; $5ba6: $99
	ld   h, [hl]                                     ; $5ba7: $66
	rst  $38                                         ; $5ba8: $ff
	nop                                              ; $5ba9: $00
	ld   a, [hl]                                     ; $5baa: $7e
	add  c                                           ; $5bab: $81
	add  c                                           ; $5bac: $81
	ld   a, [hl]                                     ; $5bad: $7e
	rst  $38                                         ; $5bae: $ff
	rst  $38                                         ; $5baf: $ff
	rra                                              ; $5bb0: $1f
	ldh  [$1f], a                                    ; $5bb1: $e0 $1f
	ldh  [$1f], a                                    ; $5bb3: $e0 $1f
	ldh  [$3f], a                                    ; $5bb5: $e0 $3f
	ret  nz                                          ; $5bb7: $c0

	ccf                                              ; $5bb8: $3f
	ret  nz                                          ; $5bb9: $c0

	cp   a                                           ; $5bba: $bf
	ld   b, b                                        ; $5bbb: $40
	cp   a                                           ; $5bbc: $bf
	ld   b, b                                        ; $5bbd: $40
	rst  $38                                         ; $5bbe: $ff
	rst  $38                                         ; $5bbf: $ff
	rst  $38                                         ; $5bc0: $ff
	rst  $38                                         ; $5bc1: $ff
	rst  $38                                         ; $5bc2: $ff
	add  b                                           ; $5bc3: $80
	rst  $38                                         ; $5bc4: $ff
	add  b                                           ; $5bc5: $80
	cp   $81                                         ; $5bc6: $fe $81
	db   $fc                                         ; $5bc8: $fc
	add  e                                           ; $5bc9: $83
	db   $fc                                         ; $5bca: $fc
	add  e                                           ; $5bcb: $83
	ld   hl, sp-$79                                  ; $5bcc: $f8 $87
	ld   hl, sp-$79                                  ; $5bce: $f8 $87
	rst  $38                                         ; $5bd0: $ff
	rst  $38                                         ; $5bd1: $ff
	rst  $38                                         ; $5bd2: $ff
	nop                                              ; $5bd3: $00
	add  c                                           ; $5bd4: $81
	ld   a, [hl]                                     ; $5bd5: $7e
	nop                                              ; $5bd6: $00
	rst  $38                                         ; $5bd7: $ff
	ld   a, [hl]                                     ; $5bd8: $7e
	add  c                                           ; $5bd9: $81
	add  c                                           ; $5bda: $81
	ld   a, [hl]                                     ; $5bdb: $7e

jr_08d_5bdc:
	nop                                              ; $5bdc: $00
	rst  $38                                         ; $5bdd: $ff
	nop                                              ; $5bde: $00
	rst  $38                                         ; $5bdf: $ff
	rst  $38                                         ; $5be0: $ff
	rst  $38                                         ; $5be1: $ff
	rst  $38                                         ; $5be2: $ff
	nop                                              ; $5be3: $00
	rst  $38                                         ; $5be4: $ff
	nop                                              ; $5be5: $00
	ld   a, a                                        ; $5be6: $7f
	add  b                                           ; $5be7: $80
	ccf                                              ; $5be8: $3f
	ret  nz                                          ; $5be9: $c0

	ccf                                              ; $5bea: $3f
	ret  nz                                          ; $5beb: $c0

	rra                                              ; $5bec: $1f

jr_08d_5bed:
	ldh  [$1f], a                                    ; $5bed: $e0 $1f
	ldh  [$f8], a                                    ; $5bef: $e0 $f8
	add  a                                           ; $5bf1: $87
	ld   hl, sp-$79                                  ; $5bf2: $f8 $87
	ld   hl, sp-$79                                  ; $5bf4: $f8 $87
	ld   hl, sp-$79                                  ; $5bf6: $f8 $87
	ld   hl, sp-$79                                  ; $5bf8: $f8 $87
	ld   hl, sp-$79                                  ; $5bfa: $f8 $87
	db   $fc                                         ; $5bfc: $fc
	add  e                                           ; $5bfd: $83
	rst  $38                                         ; $5bfe: $ff
	rst  $38                                         ; $5bff: $ff
	ld   e, d                                        ; $5c00: $5a
	and  l                                           ; $5c01: $a5
	ld   e, d                                        ; $5c02: $5a
	and  l                                           ; $5c03: $a5
	jr   jr_08d_5bed                                 ; $5c04: $18 $e7

	sbc  c                                           ; $5c06: $99
	ld   h, [hl]                                     ; $5c07: $66
	rst  $38                                         ; $5c08: $ff
	nop                                              ; $5c09: $00
	ld   a, [hl]                                     ; $5c0a: $7e
	add  c                                           ; $5c0b: $81
	add  c                                           ; $5c0c: $81
	ld   a, [hl]                                     ; $5c0d: $7e
	rst  $38                                         ; $5c0e: $ff
	rst  $38                                         ; $5c0f: $ff
	rra                                              ; $5c10: $1f
	ldh  [$1f], a                                    ; $5c11: $e0 $1f
	ldh  [$1f], a                                    ; $5c13: $e0 $1f
	ldh  [$1f], a                                    ; $5c15: $e0 $1f
	ldh  [$1f], a                                    ; $5c17: $e0 $1f
	ldh  [$1f], a                                    ; $5c19: $e0 $1f
	ldh  [$3f], a                                    ; $5c1b: $e0 $3f
	ret  nz                                          ; $5c1d: $c0

	rst  $38                                         ; $5c1e: $ff
	rst  $38                                         ; $5c1f: $ff
	rst  $38                                         ; $5c20: $ff
	rst  $38                                         ; $5c21: $ff
	rst  $38                                         ; $5c22: $ff
	add  b                                           ; $5c23: $80
	rst  $38                                         ; $5c24: $ff
	add  b                                           ; $5c25: $80
	cp   $81                                         ; $5c26: $fe $81
	db   $fd                                         ; $5c28: $fd
	add  d                                           ; $5c29: $82
	db   $fd                                         ; $5c2a: $fd
	add  d                                           ; $5c2b: $82
	ei                                               ; $5c2c: $fb
	add  h                                           ; $5c2d: $84
	ei                                               ; $5c2e: $fb
	add  h                                           ; $5c2f: $84
	rst  $38                                         ; $5c30: $ff
	rst  $38                                         ; $5c31: $ff
	rst  $38                                         ; $5c32: $ff
	nop                                              ; $5c33: $00
	add  c                                           ; $5c34: $81
	ld   a, [hl]                                     ; $5c35: $7e
	ld   a, [hl]                                     ; $5c36: $7e
	add  c                                           ; $5c37: $81
	rst  $38                                         ; $5c38: $ff
	nop                                              ; $5c39: $00
	rst  JumpTable                                         ; $5c3a: $df
	jr   nz, jr_08d_5bdc                             ; $5c3b: $20 $9f

	ld   h, b                                        ; $5c3d: $60
	ld   l, l                                        ; $5c3e: $6d
	sub  d                                           ; $5c3f: $92
	rst  $38                                         ; $5c40: $ff
	rst  $38                                         ; $5c41: $ff
	rst  $38                                         ; $5c42: $ff
	nop                                              ; $5c43: $00
	rst  $38                                         ; $5c44: $ff
	nop                                              ; $5c45: $00
	rst  $38                                         ; $5c46: $ff
	nop                                              ; $5c47: $00
	ld   a, a                                        ; $5c48: $7f
	add  b                                           ; $5c49: $80
	cp   a                                           ; $5c4a: $bf

jr_08d_5c4b:
	ld   b, b                                        ; $5c4b: $40
	cp   a                                           ; $5c4c: $bf
	ld   b, b                                        ; $5c4d: $40
	rst  JumpTable                                         ; $5c4e: $df
	jr   nz, jr_08d_5c4b                             ; $5c4f: $20 $fa

	add  l                                           ; $5c51: $85

jr_08d_5c52:
	ld   a, [$fa85]                                  ; $5c52: $fa $85 $fa
	add  l                                           ; $5c55: $85
	db   $fc                                         ; $5c56: $fc
	add  e                                           ; $5c57: $83
	cp   $81                                         ; $5c58: $fe $81
	rst  $38                                         ; $5c5a: $ff
	add  b                                           ; $5c5b: $80
	rst  $38                                         ; $5c5c: $ff
	add  b                                           ; $5c5d: $80
	rst  $38                                         ; $5c5e: $ff
	rst  $38                                         ; $5c5f: $ff
	xor  $11                                         ; $5c60: $ee $11
	or   $09                                         ; $5c62: $f6 $09
	ld   d, $e9                                      ; $5c64: $16 $e9
	sub  b                                           ; $5c66: $90
	ld   l, a                                        ; $5c67: $6f
	rst  $38                                         ; $5c68: $ff
	nop                                              ; $5c69: $00
	ld   a, [hl]                                     ; $5c6a: $7e
	add  c                                           ; $5c6b: $81
	add  c                                           ; $5c6c: $81
	ld   a, [hl]                                     ; $5c6d: $7e
	rst  $38                                         ; $5c6e: $ff
	rst  $38                                         ; $5c6f: $ff
	rst  JumpTable                                         ; $5c70: $df
	jr   nz, jr_08d_5c52                             ; $5c71: $20 $df

	jr   nz, @-$1f                                   ; $5c73: $20 $df

	jr   nz, @+$41                                   ; $5c75: $20 $3f

	ret  nz                                          ; $5c77: $c0

	ld   a, a                                        ; $5c78: $7f
	add  b                                           ; $5c79: $80
	rst  $38                                         ; $5c7a: $ff
	nop                                              ; $5c7b: $00
	rst  $38                                         ; $5c7c: $ff
	nop                                              ; $5c7d: $00
	rst  $38                                         ; $5c7e: $ff
	rst  $38                                         ; $5c7f: $ff
	rst  $38                                         ; $5c80: $ff
	rst  $38                                         ; $5c81: $ff
	db   $fc                                         ; $5c82: $fc
	add  e                                           ; $5c83: $83
	db   $fd                                         ; $5c84: $fd
	add  d                                           ; $5c85: $82
	db   $fd                                         ; $5c86: $fd
	add  d                                           ; $5c87: $82
	db   $fc                                         ; $5c88: $fc
	add  e                                           ; $5c89: $83
	db   $fd                                         ; $5c8a: $fd
	add  d                                           ; $5c8b: $82
	ld   hl, sp-$79                                  ; $5c8c: $f8 $87
	ei                                               ; $5c8e: $fb
	add  h                                           ; $5c8f: $84
	rst  $38                                         ; $5c90: $ff
	rst  $38                                         ; $5c91: $ff
	inc  a                                           ; $5c92: $3c
	jp   $3cc3                                       ; $5c93: $c3 $c3 $3c


	db   $db                                         ; $5c96: $db
	inc  h                                           ; $5c97: $24
	ld   h, [hl]                                     ; $5c98: $66
	sbc  c                                           ; $5c99: $99
	rst  $38                                         ; $5c9a: $ff
	nop                                              ; $5c9b: $00
	jp   $db3c                                       ; $5c9c: $c3 $3c $db


	inc  h                                           ; $5c9f: $24
	rst  $38                                         ; $5ca0: $ff
	rst  $38                                         ; $5ca1: $ff
	ccf                                              ; $5ca2: $3f
	ret  nz                                          ; $5ca3: $c0

	cp   a                                           ; $5ca4: $bf
	ld   b, b                                        ; $5ca5: $40
	cp   a                                           ; $5ca6: $bf
	ld   b, b                                        ; $5ca7: $40
	ccf                                              ; $5ca8: $3f
	ret  nz                                          ; $5ca9: $c0

	cp   a                                           ; $5caa: $bf
	ld   b, b                                        ; $5cab: $40

jr_08d_5cac:
	rra                                              ; $5cac: $1f

jr_08d_5cad:
	ldh  [$df], a                                    ; $5cad: $e0 $df
	jr   nz, jr_08d_5cac                             ; $5caf: $20 $fb

	add  h                                           ; $5cb1: $84

jr_08d_5cb2:
	ei                                               ; $5cb2: $fb
	add  h                                           ; $5cb3: $84
	ld   a, [$fa85]                                  ; $5cb4: $fa $85 $fa
	add  l                                           ; $5cb7: $85
	ld   a, [$fc85]                                  ; $5cb8: $fa $85 $fc
	add  e                                           ; $5cbb: $83
	cp   $81                                         ; $5cbc: $fe $81
	rst  $38                                         ; $5cbe: $ff
	rst  $38                                         ; $5cbf: $ff
	sbc  c                                           ; $5cc0: $99
	ld   h, [hl]                                     ; $5cc1: $66
	ld   e, d                                        ; $5cc2: $5a
	and  l                                           ; $5cc3: $a5
	jr   jr_08d_5cad                                 ; $5cc4: $18 $e7

	db   $dd                                         ; $5cc6: $dd
	ld   [hl+], a                                    ; $5cc7: $22
	sbc  c                                           ; $5cc8: $99
	ld   h, [hl]                                     ; $5cc9: $66
	ld   a, [hl]                                     ; $5cca: $7e
	add  c                                           ; $5ccb: $81
	add  c                                           ; $5ccc: $81
	ld   a, [hl]                                     ; $5ccd: $7e
	rst  $38                                         ; $5cce: $ff
	rst  $38                                         ; $5ccf: $ff
	rst  JumpTable                                         ; $5cd0: $df
	jr   nz, jr_08d_5cb2                             ; $5cd1: $20 $df

	jr   nz, jr_08d_5d34                             ; $5cd3: $20 $5f

	and  b                                           ; $5cd5: $a0
	ld   e, a                                        ; $5cd6: $5f
	and  b                                           ; $5cd7: $a0
	ld   e, a                                        ; $5cd8: $5f
	and  b                                           ; $5cd9: $a0
	ccf                                              ; $5cda: $3f
	ret  nz                                          ; $5cdb: $c0

jr_08d_5cdc:
	ld   a, a                                        ; $5cdc: $7f
	add  b                                           ; $5cdd: $80
	rst  $38                                         ; $5cde: $ff
	rst  $38                                         ; $5cdf: $ff
	rst  $38                                         ; $5ce0: $ff
	rst  $38                                         ; $5ce1: $ff
	rst  $38                                         ; $5ce2: $ff
	add  b                                           ; $5ce3: $80
	rst  $38                                         ; $5ce4: $ff
	add  b                                           ; $5ce5: $80
	ld   hl, sp-$79                                  ; $5ce6: $f8 $87
	db   $fc                                         ; $5ce8: $fc
	add  e                                           ; $5ce9: $83
	db   $fd                                         ; $5cea: $fd
	add  d                                           ; $5ceb: $82
	ei                                               ; $5cec: $fb
	add  h                                           ; $5ced: $84
	ei                                               ; $5cee: $fb
	add  h                                           ; $5cef: $84
	rst  $38                                         ; $5cf0: $ff
	rst  $38                                         ; $5cf1: $ff
	rst  $38                                         ; $5cf2: $ff
	nop                                              ; $5cf3: $00
	ld   [$f7f7], sp                                 ; $5cf4: $08 $f7 $f7
	ld   [$807f], sp                                 ; $5cf7: $08 $7f $80
	rst  JumpTable                                         ; $5cfa: $df
	jr   nz, jr_08d_5cdc                             ; $5cfb: $20 $df

	jr   nz, jr_08d_5d5a                             ; $5cfd: $20 $5b

	and  h                                           ; $5cff: $a4
	rst  $38                                         ; $5d00: $ff
	rst  $38                                         ; $5d01: $ff
	rst  $38                                         ; $5d02: $ff
	nop                                              ; $5d03: $00
	rst  $38                                         ; $5d04: $ff
	nop                                              ; $5d05: $00
	ld   a, a                                        ; $5d06: $7f
	add  b                                           ; $5d07: $80
	cp   a                                           ; $5d08: $bf

jr_08d_5d09:
	ld   b, b                                        ; $5d09: $40
	rst  JumpTable                                         ; $5d0a: $df
	jr   nz, @+$61                                   ; $5d0b: $20 $5f

	and  b                                           ; $5d0d: $a0

jr_08d_5d0e:
	sbc  a                                           ; $5d0e: $9f
	ld   h, b                                        ; $5d0f: $60
	ei                                               ; $5d10: $fb
	add  h                                           ; $5d11: $84
	ld   a, [$fa85]                                  ; $5d12: $fa $85 $fa
	add  l                                           ; $5d15: $85
	db   $fc                                         ; $5d16: $fc
	add  e                                           ; $5d17: $83
	ldh  a, [c]                                      ; $5d18: $f2
	adc  l                                           ; $5d19: $8d
	or   $89                                         ; $5d1a: $f6 $89
	pop  af                                          ; $5d1c: $f1
	adc  [hl]                                        ; $5d1d: $8e
	rst  $38                                         ; $5d1e: $ff
	rst  $38                                         ; $5d1f: $ff
	jr   jr_08d_5d09                                 ; $5d20: $18 $e7

	db   $db                                         ; $5d22: $db
	inc  h                                           ; $5d23: $24
	rst  $20                                         ; $5d24: $e7
	jr   jr_08d_5d0e                                 ; $5d25: $18 $e7

	jr   jr_08d_5d41                                 ; $5d27: $18 $18

	rst  $20                                         ; $5d29: $e7
	ld   a, [hl]                                     ; $5d2a: $7e
	add  c                                           ; $5d2b: $81
	add  c                                           ; $5d2c: $81
	ld   a, [hl]                                     ; $5d2d: $7e
	rst  $38                                         ; $5d2e: $ff
	rst  $38                                         ; $5d2f: $ff
	rst  JumpTable                                         ; $5d30: $df
	jr   nz, @+$61                                   ; $5d31: $20 $5f

	and  b                                           ; $5d33: $a0

jr_08d_5d34:
	ld   e, a                                        ; $5d34: $5f
	and  b                                           ; $5d35: $a0
	ccf                                              ; $5d36: $3f
	ret  nz                                          ; $5d37: $c0

	ld   c, a                                        ; $5d38: $4f
	or   b                                           ; $5d39: $b0
	ld   l, a                                        ; $5d3a: $6f
	sub  b                                           ; $5d3b: $90
	adc  a                                           ; $5d3c: $8f
	ld   [hl], b                                     ; $5d3d: $70
	rst  $38                                         ; $5d3e: $ff
	rst  $38                                         ; $5d3f: $ff
	rst  $38                                         ; $5d40: $ff

jr_08d_5d41:
	rst  $38                                         ; $5d41: $ff
	rst  $38                                         ; $5d42: $ff
	add  b                                           ; $5d43: $80
	cp   $81                                         ; $5d44: $fe $81
	rst  $38                                         ; $5d46: $ff
	add  b                                           ; $5d47: $80
	db   $fc                                         ; $5d48: $fc
	add  e                                           ; $5d49: $83
	ei                                               ; $5d4a: $fb
	add  h                                           ; $5d4b: $84
	pop  af                                          ; $5d4c: $f1
	adc  [hl]                                        ; $5d4d: $8e
	ei                                               ; $5d4e: $fb
	add  h                                           ; $5d4f: $84
	rst  $38                                         ; $5d50: $ff
	rst  $38                                         ; $5d51: $ff
	rst  $38                                         ; $5d52: $ff
	nop                                              ; $5d53: $00
	inc  b                                           ; $5d54: $04
	ei                                               ; $5d55: $fb
	ld   a, e                                        ; $5d56: $7b
	add  h                                           ; $5d57: $84
	rst  $38                                         ; $5d58: $ff
	nop                                              ; $5d59: $00

jr_08d_5d5a:
	ei                                               ; $5d5a: $fb
	inc  b                                           ; $5d5b: $04
	pop  de                                          ; $5d5c: $d1
	ld   l, $91                                      ; $5d5d: $2e $91
	ld   l, [hl]                                     ; $5d5f: $6e
	rst  $38                                         ; $5d60: $ff
	rst  $38                                         ; $5d61: $ff
	rst  $38                                         ; $5d62: $ff
	nop                                              ; $5d63: $00
	rst  $38                                         ; $5d64: $ff
	nop                                              ; $5d65: $00
	ld   a, a                                        ; $5d66: $7f
	add  b                                           ; $5d67: $80
	cp   a                                           ; $5d68: $bf
	ld   b, b                                        ; $5d69: $40
	rst  JumpTable                                         ; $5d6a: $df
	jr   nz, @-$6f                                   ; $5d6b: $20 $8f

jr_08d_5d6d:
	ld   [hl], b                                     ; $5d6d: $70
	rst  JumpTable                                         ; $5d6e: $df
	jr   nz, @-$03                                   ; $5d6f: $20 $fb

	add  h                                           ; $5d71: $84
	ld   a, [$fa85]                                  ; $5d72: $fa $85 $fa
	add  l                                           ; $5d75: $85
	ld   a, [$fa85]                                  ; $5d76: $fa $85 $fa
	add  l                                           ; $5d79: $85
	db   $fd                                         ; $5d7a: $fd
	add  d                                           ; $5d7b: $82
	db   $fd                                         ; $5d7c: $fd
	add  d                                           ; $5d7d: $82
	rst  $38                                         ; $5d7e: $ff
	rst  $38                                         ; $5d7f: $ff
	ld   h, b                                        ; $5d80: $60
	sbc  a                                           ; $5d81: $9f
	rst  $28                                         ; $5d82: $ef
	db   $10                                         ; $5d83: $10
	jr   jr_08d_5d6d                                 ; $5d84: $18 $e7

	sbc  c                                           ; $5d86: $99
	ld   h, [hl]                                     ; $5d87: $66
	rst  $38                                         ; $5d88: $ff
	nop                                              ; $5d89: $00
	ld   a, [hl]                                     ; $5d8a: $7e
	add  c                                           ; $5d8b: $81
	add  c                                           ; $5d8c: $81
	ld   a, [hl]                                     ; $5d8d: $7e
	rst  $38                                         ; $5d8e: $ff
	rst  $38                                         ; $5d8f: $ff
	rst  JumpTable                                         ; $5d90: $df
	jr   nz, jr_08d_5df2                             ; $5d91: $20 $5f

	and  b                                           ; $5d93: $a0
	rra                                              ; $5d94: $1f
	ldh  [rVBK], a                                   ; $5d95: $e0 $4f
	or   b                                           ; $5d97: $b0
	ld   e, a                                        ; $5d98: $5f
	and  b                                           ; $5d99: $a0
	cp   a                                           ; $5d9a: $bf
	ld   b, b                                        ; $5d9b: $40
	cp   a                                           ; $5d9c: $bf
	ld   b, b                                        ; $5d9d: $40
	rst  $38                                         ; $5d9e: $ff
	rst  $38                                         ; $5d9f: $ff
	rst  $38                                         ; $5da0: $ff
	rst  $38                                         ; $5da1: $ff
	rst  $38                                         ; $5da2: $ff
	add  b                                           ; $5da3: $80
	rst  $38                                         ; $5da4: $ff
	add  b                                           ; $5da5: $80
	rst  $38                                         ; $5da6: $ff
	add  b                                           ; $5da7: $80
	cp   $81                                         ; $5da8: $fe $81
	jp   hl                                          ; $5daa: $e9


	sub  [hl]                                        ; $5dab: $96
	or   $89                                         ; $5dac: $f6 $89
	xor  l                                           ; $5dae: $ad
	jp   nc, $ffff                                   ; $5daf: $d2 $ff $ff

	rst  $38                                         ; $5db2: $ff
	nop                                              ; $5db3: $00
	rst  $38                                         ; $5db4: $ff
	nop                                              ; $5db5: $00
	rst  $38                                         ; $5db6: $ff
	nop                                              ; $5db7: $00
	nop                                              ; $5db8: $00
	rst  $38                                         ; $5db9: $ff
	add  hl, hl                                      ; $5dba: $29
	sub  $aa                                         ; $5dbb: $d6 $aa
	ld   d, l                                        ; $5dbd: $55
	ld   l, c                                        ; $5dbe: $69
	sub  [hl]                                        ; $5dbf: $96
	rst  $38                                         ; $5dc0: $ff
	rst  $38                                         ; $5dc1: $ff
	rst  $38                                         ; $5dc2: $ff
	nop                                              ; $5dc3: $00
	rst  $38                                         ; $5dc4: $ff
	nop                                              ; $5dc5: $00
	rst  $38                                         ; $5dc6: $ff
	nop                                              ; $5dc7: $00
	rst  $38                                         ; $5dc8: $ff
	nop                                              ; $5dc9: $00
	cpl                                              ; $5dca: $2f
	ret  nc                                          ; $5dcb: $d0

	rst  JumpTable                                         ; $5dcc: $df
	jr   nz, jr_08d_5e3a                             ; $5dcd: $20 $6b

	sub  h                                           ; $5dcf: $94
	db   $d3                                         ; $5dd0: $d3
	xor  h                                           ; $5dd1: $ac
	db   $db                                         ; $5dd2: $db
	and  h                                           ; $5dd3: $a4
	or   [hl]                                        ; $5dd4: $b6
	ret                                              ; $5dd5: $c9


	or   d                                           ; $5dd6: $b2
	call $cbb4                                       ; $5dd7: $cd $b4 $cb
	add  b                                           ; $5dda: $80
	rst  $38                                         ; $5ddb: $ff
	rst  $38                                         ; $5ddc: $ff
	add  b                                           ; $5ddd: $80
	rst  $38                                         ; $5dde: $ff
	rst  $38                                         ; $5ddf: $ff
	dec  h                                           ; $5de0: $25
	jp   c, $b24d                                    ; $5de1: $da $4d $b2

	ld   [$a615], a                                  ; $5de4: $ea $15 $a6
	ld   e, c                                        ; $5de7: $59
	adc  $31                                         ; $5de8: $ce $31
	nop                                              ; $5dea: $00
	rst  $38                                         ; $5deb: $ff
	rst  $38                                         ; $5dec: $ff
	nop                                              ; $5ded: $00
	rst  $38                                         ; $5dee: $ff
	rst  $38                                         ; $5def: $ff
	sub  a                                           ; $5df0: $97
	ld   l, b                                        ; $5df1: $68

jr_08d_5df2:
	or   a                                           ; $5df2: $b7
	ld   c, b                                        ; $5df3: $48
	db   $db                                         ; $5df4: $db
	inc  h                                           ; $5df5: $24
	sbc  e                                           ; $5df6: $9b
	ld   h, h                                        ; $5df7: $64
	ld   e, e                                        ; $5df8: $5b
	and  h                                           ; $5df9: $a4
	nop                                              ; $5dfa: $00
	rst  $38                                         ; $5dfb: $ff
	cp   $01                                         ; $5dfc: $fe $01
	rst  $38                                         ; $5dfe: $ff
	rst  $38                                         ; $5dff: $ff
	rst  $38                                         ; $5e00: $ff
	rst  $38                                         ; $5e01: $ff
	rst  $38                                         ; $5e02: $ff
	add  b                                           ; $5e03: $80
	rst  $38                                         ; $5e04: $ff
	add  b                                           ; $5e05: $80
	rst  $38                                         ; $5e06: $ff
	add  b                                           ; $5e07: $80
	rst  $38                                         ; $5e08: $ff
	add  b                                           ; $5e09: $80
	rst  $38                                         ; $5e0a: $ff
	add  b                                           ; $5e0b: $80
	rst  $38                                         ; $5e0c: $ff
	add  b                                           ; $5e0d: $80
	rst  $38                                         ; $5e0e: $ff
	add  b                                           ; $5e0f: $80
	rst  $38                                         ; $5e10: $ff
	rst  $38                                         ; $5e11: $ff
	rst  $38                                         ; $5e12: $ff
	nop                                              ; $5e13: $00
	rst  $38                                         ; $5e14: $ff
	nop                                              ; $5e15: $00
	rst  $38                                         ; $5e16: $ff
	nop                                              ; $5e17: $00
	rst  $38                                         ; $5e18: $ff
	nop                                              ; $5e19: $00
	rst  $38                                         ; $5e1a: $ff
	nop                                              ; $5e1b: $00
	rst  $38                                         ; $5e1c: $ff
	nop                                              ; $5e1d: $00
	rst  $38                                         ; $5e1e: $ff
	nop                                              ; $5e1f: $00
	rst  $38                                         ; $5e20: $ff
	rst  $38                                         ; $5e21: $ff
	rst  $38                                         ; $5e22: $ff
	nop                                              ; $5e23: $00
	rst  $38                                         ; $5e24: $ff
	nop                                              ; $5e25: $00
	rst  $38                                         ; $5e26: $ff
	nop                                              ; $5e27: $00
	rst  $38                                         ; $5e28: $ff
	nop                                              ; $5e29: $00
	rst  $38                                         ; $5e2a: $ff
	nop                                              ; $5e2b: $00
	rst  $38                                         ; $5e2c: $ff
	nop                                              ; $5e2d: $00
	rst  $38                                         ; $5e2e: $ff
	nop                                              ; $5e2f: $00
	rst  $38                                         ; $5e30: $ff
	add  b                                           ; $5e31: $80
	rst  $38                                         ; $5e32: $ff
	add  b                                           ; $5e33: $80
	rst  $38                                         ; $5e34: $ff
	add  b                                           ; $5e35: $80
	ld   hl, sp-$79                                  ; $5e36: $f8 $87
	ei                                               ; $5e38: $fb
	add  h                                           ; $5e39: $84

jr_08d_5e3a:
	add  b                                           ; $5e3a: $80
	rst  $38                                         ; $5e3b: $ff
	cp   a                                           ; $5e3c: $bf
	ret  nz                                          ; $5e3d: $c0

	rst  $38                                         ; $5e3e: $ff
	rst  $38                                         ; $5e3f: $ff
	rst  $38                                         ; $5e40: $ff
	nop                                              ; $5e41: $00
	rst  $38                                         ; $5e42: $ff
	nop                                              ; $5e43: $00
	rst  $38                                         ; $5e44: $ff
	nop                                              ; $5e45: $00
	rst  $38                                         ; $5e46: $ff
	nop                                              ; $5e47: $00
	ld   a, [hl]                                     ; $5e48: $7e
	add  c                                           ; $5e49: $81
	nop                                              ; $5e4a: $00
	rst  $38                                         ; $5e4b: $ff
	rst  $38                                         ; $5e4c: $ff
	nop                                              ; $5e4d: $00
	rst  $38                                         ; $5e4e: $ff
	rst  $38                                         ; $5e4f: $ff
	rst  $38                                         ; $5e50: $ff
	nop                                              ; $5e51: $00
	rst  $38                                         ; $5e52: $ff
	nop                                              ; $5e53: $00
	rst  $38                                         ; $5e54: $ff
	nop                                              ; $5e55: $00
	rra                                              ; $5e56: $1f
	ldh  [$df], a                                    ; $5e57: $e0 $df
	jr   nz, @+$03                                   ; $5e59: $20 $01

	cp   $fd                                         ; $5e5b: $fe $fd
	ld   [bc], a                                     ; $5e5d: $02
	rst  $38                                         ; $5e5e: $ff
	rst  $38                                         ; $5e5f: $ff
	rst  $38                                         ; $5e60: $ff
	rst  $38                                         ; $5e61: $ff
	rst  $38                                         ; $5e62: $ff
	add  b                                           ; $5e63: $80
	cp   $81                                         ; $5e64: $fe $81
	ld   hl, sp-$79                                  ; $5e66: $f8 $87
	ld   a, [$fa85]                                  ; $5e68: $fa $85 $fa
	add  l                                           ; $5e6b: $85

jr_08d_5e6c:
	ld   a, [$fa85]                                  ; $5e6c: $fa $85 $fa
	add  l                                           ; $5e6f: $85
	rst  $38                                         ; $5e70: $ff
	rst  $38                                         ; $5e71: $ff
	add  e                                           ; $5e72: $83
	ld   a, h                                        ; $5e73: $7c
	inc  a                                           ; $5e74: $3c
	jp   Jump_08d_40bf                               ; $5e75: $c3 $bf $40


	cp   a                                           ; $5e78: $bf
	ld   b, b                                        ; $5e79: $40
	cp   a                                           ; $5e7a: $bf
	ld   b, b                                        ; $5e7b: $40
	cp   a                                           ; $5e7c: $bf
	ld   b, b                                        ; $5e7d: $40
	cp   a                                           ; $5e7e: $bf
	ld   b, b                                        ; $5e7f: $40
	rst  $38                                         ; $5e80: $ff
	rst  $38                                         ; $5e81: $ff
	rst  $38                                         ; $5e82: $ff
	nop                                              ; $5e83: $00
	db   $fc                                         ; $5e84: $fc
	inc  bc                                          ; $5e85: $03
	ld   [hl], e                                     ; $5e86: $73
	adc  h                                           ; $5e87: $8c
	xor  a                                           ; $5e88: $af
	ld   d, b                                        ; $5e89: $50
	rst  JumpTable                                         ; $5e8a: $df

jr_08d_5e8b:
	jr   nz, jr_08d_5e6c                             ; $5e8b: $20 $df

	jr   nz, @-$1f                                   ; $5e8d: $20 $df

	jr   nz, jr_08d_5e8b                             ; $5e8f: $20 $fa

	add  l                                           ; $5e91: $85

jr_08d_5e92:
	ld   a, [$fa85]                                  ; $5e92: $fa $85 $fa
	add  l                                           ; $5e95: $85

jr_08d_5e96:
	ld   a, [$fa85]                                  ; $5e96: $fa $85 $fa

jr_08d_5e99:
	add  l                                           ; $5e99: $85
	ld   a, [$fa85]                                  ; $5e9a: $fa $85 $fa
	add  l                                           ; $5e9d: $85
	rst  $38                                         ; $5e9e: $ff
	rst  $38                                         ; $5e9f: $ff
	cp   a                                           ; $5ea0: $bf
	ld   b, b                                        ; $5ea1: $40
	cp   a                                           ; $5ea2: $bf
	ld   b, b                                        ; $5ea3: $40
	cp   a                                           ; $5ea4: $bf
	ld   b, b                                        ; $5ea5: $40
	cp   a                                           ; $5ea6: $bf
	ld   b, b                                        ; $5ea7: $40
	cp   a                                           ; $5ea8: $bf
	ld   b, b                                        ; $5ea9: $40
	inc  bc                                          ; $5eaa: $03
	db   $fc                                         ; $5eab: $fc
	db   $fc                                         ; $5eac: $fc
	inc  bc                                          ; $5ead: $03
	rst  $38                                         ; $5eae: $ff
	rst  $38                                         ; $5eaf: $ff
	rst  JumpTable                                         ; $5eb0: $df
	jr   nz, jr_08d_5e92                             ; $5eb1: $20 $df

	jr   nz, @-$1f                                   ; $5eb3: $20 $df

	jr   nz, jr_08d_5e96                             ; $5eb5: $20 $df

	jr   nz, @-$1f                                   ; $5eb7: $20 $df

	jr   nz, jr_08d_5e99                             ; $5eb9: $20 $de

	ld   hl, $ae51                                   ; $5ebb: $21 $51 $ae
	rst  $38                                         ; $5ebe: $ff
	rst  $38                                         ; $5ebf: $ff
	rst  $38                                         ; $5ec0: $ff
	rst  $38                                         ; $5ec1: $ff
	rst  $38                                         ; $5ec2: $ff
	add  b                                           ; $5ec3: $80
	cp   $81                                         ; $5ec4: $fe $81
	ld   sp, hl                                      ; $5ec6: $f9
	add  [hl]                                        ; $5ec7: $86
	or   $89                                         ; $5ec8: $f6 $89
	db   $ed                                         ; $5eca: $ed
	sub  d                                           ; $5ecb: $92
	db   $ed                                         ; $5ecc: $ed
	sub  d                                           ; $5ecd: $92
	db   $db                                         ; $5ece: $db
	and  h                                           ; $5ecf: $a4
	rst  $38                                         ; $5ed0: $ff
	rst  $38                                         ; $5ed1: $ff
	rst  $38                                         ; $5ed2: $ff
	nop                                              ; $5ed3: $00
	nop                                              ; $5ed4: $00
	rst  $38                                         ; $5ed5: $ff

jr_08d_5ed6:
	ld   a, a                                        ; $5ed6: $7f
	add  b                                           ; $5ed7: $80
	rst  $38                                         ; $5ed8: $ff
	nop                                              ; $5ed9: $00
	rst  $38                                         ; $5eda: $ff
	nop                                              ; $5edb: $00
	rst  $38                                         ; $5edc: $ff
	nop                                              ; $5edd: $00
	cp   a                                           ; $5ede: $bf
	ld   b, b                                        ; $5edf: $40
	rst  $38                                         ; $5ee0: $ff
	rst  $38                                         ; $5ee1: $ff
	rst  $38                                         ; $5ee2: $ff
	nop                                              ; $5ee3: $00
	ccf                                              ; $5ee4: $3f
	ret  nz                                          ; $5ee5: $c0

	ld   c, a                                        ; $5ee6: $4f
	or   b                                           ; $5ee7: $b0
	or   a                                           ; $5ee8: $b7
	ld   c, b                                        ; $5ee9: $48
	db   $db                                         ; $5eea: $db
	inc  h                                           ; $5eeb: $24
	db   $db                                         ; $5eec: $db
	inc  h                                           ; $5eed: $24
	ld   l, l                                        ; $5eee: $6d
	sub  d                                           ; $5eef: $92
	db   $db                                         ; $5ef0: $db
	and  h                                           ; $5ef1: $a4
	db   $db                                         ; $5ef2: $db
	and  h                                           ; $5ef3: $a4
	res  6, h                                        ; $5ef4: $cb $b4
	jp   $e5bc                                       ; $5ef6: $c3 $bc $e5


	sbc  d                                           ; $5ef9: $9a
	db   $fc                                         ; $5efa: $fc
	add  e                                           ; $5efb: $83
	ld   sp, hl                                      ; $5efc: $f9
	add  [hl]                                        ; $5efd: $86
	rst  $38                                         ; $5efe: $ff
	rst  $38                                         ; $5eff: $ff
	nop                                              ; $5f00: $00
	rst  $38                                         ; $5f01: $ff
	cp   [hl]                                        ; $5f02: $be
	ld   b, c                                        ; $5f03: $41
	ld   h, e                                        ; $5f04: $63
	sbc  h                                           ; $5f05: $9c
	ld   [hl], a                                     ; $5f06: $77
	adc  b                                           ; $5f07: $88
	ld   [hl], a                                     ; $5f08: $77
	adc  b                                           ; $5f09: $88
	ld   [hl], $c9                                   ; $5f0a: $36 $c9
	add  b                                           ; $5f0c: $80
	ld   a, a                                        ; $5f0d: $7f
	rst  $38                                         ; $5f0e: $ff
	rst  $38                                         ; $5f0f: $ff
	ld   l, l                                        ; $5f10: $6d
	sub  d                                           ; $5f11: $92
	db   $ed                                         ; $5f12: $ed
	ld   [de], a                                     ; $5f13: $12
	ld   l, c                                        ; $5f14: $69
	sub  [hl]                                        ; $5f15: $96
	ld   h, c                                        ; $5f16: $61
	sbc  [hl]                                        ; $5f17: $9e
	ld   d, e                                        ; $5f18: $53
	xor  h                                           ; $5f19: $ac
	rra                                              ; $5f1a: $1f
	ldh  [$cf], a                                    ; $5f1b: $e0 $cf
	jr   nc, @+$01                                   ; $5f1d: $30 $ff

	rst  $38                                         ; $5f1f: $ff
	rst  $38                                         ; $5f20: $ff
	rst  $38                                         ; $5f21: $ff
	db   $fc                                         ; $5f22: $fc
	add  e                                           ; $5f23: $83
	db   $fc                                         ; $5f24: $fc
	add  e                                           ; $5f25: $83
	sub  b                                           ; $5f26: $90
	rst  $28                                         ; $5f27: $ef
	ldh  [$9f], a                                    ; $5f28: $e0 $9f
	ldh  [$9f], a                                    ; $5f2a: $e0 $9f

jr_08d_5f2c:
	db   $ec                                         ; $5f2c: $ec
	sub  e                                           ; $5f2d: $93
	db   $fc                                         ; $5f2e: $fc
	add  e                                           ; $5f2f: $83
	rst  $38                                         ; $5f30: $ff
	rst  $38                                         ; $5f31: $ff
	dec  d                                           ; $5f32: $15
	ld   [$ea15], a                                  ; $5f33: $ea $15 $ea
	dec  b                                           ; $5f36: $05
	ld   a, [$fb04]                                  ; $5f37: $fa $04 $fb
	dec  b                                           ; $5f3a: $05
	ld   a, [$fa05]                                  ; $5f3b: $fa $05 $fa
	nop                                              ; $5f3e: $00
	rst  $38                                         ; $5f3f: $ff
	rst  $38                                         ; $5f40: $ff
	rst  $38                                         ; $5f41: $ff
	rst  $38                                         ; $5f42: $ff
	nop                                              ; $5f43: $00
	rst  $38                                         ; $5f44: $ff
	nop                                              ; $5f45: $00
	rst  $38                                         ; $5f46: $ff
	nop                                              ; $5f47: $00
	ccf                                              ; $5f48: $3f
	ret  nz                                          ; $5f49: $c0

	rst  JumpTable                                         ; $5f4a: $df
	jr   nz, jr_08d_5f2c                             ; $5f4b: $20 $df

	jr   nz, jr_08d_5ed6                             ; $5f4d: $20 $87

	ld   a, b                                        ; $5f4f: $78
	db   $ec                                         ; $5f50: $ec
	sub  e                                           ; $5f51: $93
	ldh  [$9f], a                                    ; $5f52: $e0 $9f
	ldh  [$9f], a                                    ; $5f54: $e0 $9f
	add  b                                           ; $5f56: $80
	rst  $38                                         ; $5f57: $ff
	rst  $38                                         ; $5f58: $ff
	add  b                                           ; $5f59: $80
	add  b                                           ; $5f5a: $80
	rst  $38                                         ; $5f5b: $ff
	rst  $38                                         ; $5f5c: $ff
	add  b                                           ; $5f5d: $80
	rst  $38                                         ; $5f5e: $ff
	rst  $38                                         ; $5f5f: $ff
	rrca                                             ; $5f60: $0f
	ldh  a, [$03]                                    ; $5f61: $f0 $03
	db   $fc                                         ; $5f63: $fc
	dec  b                                           ; $5f64: $05
	ld   a, [$fa05]                                  ; $5f65: $fa $05 $fa
	db   $ed                                         ; $5f68: $ed
	ld   [de], a                                     ; $5f69: $12
	inc  bc                                          ; $5f6a: $03
	db   $fc                                         ; $5f6b: $fc
	rst  $28                                         ; $5f6c: $ef
	db   $10                                         ; $5f6d: $10
	rst  $38                                         ; $5f6e: $ff
	rst  $38                                         ; $5f6f: $ff
	rst  $30                                         ; $5f70: $f7
	ld   [$08f7], sp                                 ; $5f71: $08 $f7 $08
	rst  $30                                         ; $5f74: $f7
	ld   [$08f7], sp                                 ; $5f75: $08 $f7 $08
	rst  $30                                         ; $5f78: $f7
	ld   [$08f7], sp                                 ; $5f79: $08 $f7 $08
	rst  $30                                         ; $5f7c: $f7
	ld   [$ffff], sp                                 ; $5f7d: $08 $ff $ff
	rst  $38                                         ; $5f80: $ff
	rst  $38                                         ; $5f81: $ff
	rst  $38                                         ; $5f82: $ff
	add  b                                           ; $5f83: $80
	rst  $38                                         ; $5f84: $ff
	add  b                                           ; $5f85: $80
	ld   hl, sp-$79                                  ; $5f86: $f8 $87
	ld   a, [$fa85]                                  ; $5f88: $fa $85 $fa
	add  l                                           ; $5f8b: $85
	ld   a, [$fa85]                                  ; $5f8c: $fa $85 $fa
	add  l                                           ; $5f8f: $85
	rst  $38                                         ; $5f90: $ff

jr_08d_5f91:
	rst  $38                                         ; $5f91: $ff
	rst  $38                                         ; $5f92: $ff
	nop                                              ; $5f93: $00
	rst  $38                                         ; $5f94: $ff
	nop                                              ; $5f95: $00
	ld   bc, $d5fe                                   ; $5f96: $01 $fe $d5
	ld   a, [hl+]                                    ; $5f99: $2a
	push de                                          ; $5f9a: $d5
	ld   a, [hl+]                                    ; $5f9b: $2a
	dec  l                                           ; $5f9c: $2d
	jp   nc, $26d9                                   ; $5f9d: $d2 $d9 $26

	rst  $38                                         ; $5fa0: $ff
	rst  $38                                         ; $5fa1: $ff
	rst  $38                                         ; $5fa2: $ff
	nop                                              ; $5fa3: $00
	rst  $38                                         ; $5fa4: $ff
	nop                                              ; $5fa5: $00
	rst  $38                                         ; $5fa6: $ff
	nop                                              ; $5fa7: $00
	rst  $38                                         ; $5fa8: $ff
	nop                                              ; $5fa9: $00
	ret  nz                                          ; $5faa: $c0

	ccf                                              ; $5fab: $3f
	cp   a                                           ; $5fac: $bf
	ld   b, b                                        ; $5fad: $40
	ld   a, a                                        ; $5fae: $7f
	add  b                                           ; $5faf: $80
	ld   a, [$fa85]                                  ; $5fb0: $fa $85 $fa
	add  l                                           ; $5fb3: $85
	ld   a, [$fa85]                                  ; $5fb4: $fa $85 $fa
	add  l                                           ; $5fb7: $85
	ld   a, [$fa85]                                  ; $5fb8: $fa $85 $fa
	add  l                                           ; $5fbb: $85
	ld   a, [$ff85]                                  ; $5fbc: $fa $85 $ff
	rst  $38                                         ; $5fbf: $ff
	or   l                                           ; $5fc0: $b5
	ld   c, d                                        ; $5fc1: $4a
	ld   l, l                                        ; $5fc2: $6d
	sub  d                                           ; $5fc3: $92
	reti                                             ; $5fc4: $d9


	ld   h, $d5                                      ; $5fc5: $26 $d5
	ld   a, [hl+]                                    ; $5fc7: $2a
	or   l                                           ; $5fc8: $b5
	ld   c, d                                        ; $5fc9: $4a
	ld   l, l                                        ; $5fca: $6d
	sub  d                                           ; $5fcb: $92
	db   $ed                                         ; $5fcc: $ed
	ld   [de], a                                     ; $5fcd: $12
	rst  $38                                         ; $5fce: $ff
	rst  $38                                         ; $5fcf: $ff
	ld   l, a                                        ; $5fd0: $6f

jr_08d_5fd1:
	sub  b                                           ; $5fd1: $90
	ld   d, a                                        ; $5fd2: $57
	xor  b                                           ; $5fd3: $a8
	ld   [hl], a                                     ; $5fd4: $77
	adc  b                                           ; $5fd5: $88
	ld   c, $f1                                      ; $5fd6: $0e $f1
	cp   c                                           ; $5fd8: $b9
	ld   b, [hl]                                     ; $5fd9: $46
	rst  ToBoot                                         ; $5fda: $c7
	jr   c, @+$01                                    ; $5fdb: $38 $ff

	nop                                              ; $5fdd: $00
	rst  $38                                         ; $5fde: $ff
	rst  $38                                         ; $5fdf: $ff
	nop                                              ; $5fe0: $00
	nop                                              ; $5fe1: $00
	nop                                              ; $5fe2: $00
	nop                                              ; $5fe3: $00
	nop                                              ; $5fe4: $00
	nop                                              ; $5fe5: $00
	nop                                              ; $5fe6: $00
	nop                                              ; $5fe7: $00
	nop                                              ; $5fe8: $00
	nop                                              ; $5fe9: $00
	nop                                              ; $5fea: $00
	nop                                              ; $5feb: $00
	nop                                              ; $5fec: $00
	nop                                              ; $5fed: $00
	nop                                              ; $5fee: $00
	nop                                              ; $5fef: $00
	nop                                              ; $5ff0: $00
	nop                                              ; $5ff1: $00
	nop                                              ; $5ff2: $00
	nop                                              ; $5ff3: $00
	nop                                              ; $5ff4: $00
	nop                                              ; $5ff5: $00
	nop                                              ; $5ff6: $00
	nop                                              ; $5ff7: $00
	nop                                              ; $5ff8: $00
	nop                                              ; $5ff9: $00
	nop                                              ; $5ffa: $00
	nop                                              ; $5ffb: $00
	nop                                              ; $5ffc: $00
	nop                                              ; $5ffd: $00
	nop                                              ; $5ffe: $00
	nop                                              ; $5fff: $00
	dec  hl                                          ; $6000: $2b
	inc  b                                           ; $6001: $04
	add  h                                           ; $6002: $84
	nop                                              ; $6003: $00
	add  b                                           ; $6004: $80
	ccf                                              ; $6005: $3f
	add  d                                           ; $6006: $82
	jr   nz, @-$7e                                   ; $6007: $20 $80

	inc  hl                                          ; $6009: $23
	add  b                                           ; $600a: $80
	jr   nz, jr_08d_5f91                             ; $600b: $20 $84

	nop                                              ; $600d: $00
	add  b                                           ; $600e: $80
	rst  $38                                         ; $600f: $ff
	add  d                                           ; $6010: $82
	nop                                              ; $6011: $00
	add  b                                           ; $6012: $80
	rst  $38                                         ; $6013: $ff
	add  [hl]                                        ; $6014: $86
	nop                                              ; $6015: $00
	add  b                                           ; $6016: $80
	rst  $38                                         ; $6017: $ff
	add  d                                           ; $6018: $82
	nop                                              ; $6019: $00
	add  b                                           ; $601a: $80
	cp   $86                                         ; $601b: $fe $86
	nop                                              ; $601d: $00
	add  b                                           ; $601e: $80
	rst  $38                                         ; $601f: $ff
	add  d                                           ; $6020: $82
	nop                                              ; $6021: $00
	inc  b                                           ; $6022: $04
	rrca                                             ; $6023: $0f
	jr   nc, @+$11                                   ; $6024: $30 $0f

	ccf                                              ; $6026: $3f
	rrca                                             ; $6027: $0f
	add  e                                           ; $6028: $83
	nop                                              ; $6029: $00
	add  b                                           ; $602a: $80
	rst  $38                                         ; $602b: $ff
	add  d                                           ; $602c: $82
	nop                                              ; $602d: $00
	ld   bc, $04fc                                   ; $602e: $01 $fc $04
	add  b                                           ; $6031: $80
	db   $fc                                         ; $6032: $fc
	nop                                              ; $6033: $00
	ld   hl, sp-$7d                                  ; $6034: $f8 $83
	nop                                              ; $6036: $00
	add  b                                           ; $6037: $80
	rst  $38                                         ; $6038: $ff
	add  d                                           ; $6039: $82
	nop                                              ; $603a: $00
	inc  b                                           ; $603b: $04
	push de                                          ; $603c: $d5
	rst  $38                                         ; $603d: $ff
	rst  $28                                         ; $603e: $ef
	rst  ToBoot                                         ; $603f: $c7
	ld   [bc], a                                     ; $6040: $02
	add  e                                           ; $6041: $83
	nop                                              ; $6042: $00
	add  b                                           ; $6043: $80
	rst  $38                                         ; $6044: $ff
	add  d                                           ; $6045: $82
	nop                                              ; $6046: $00
	add  b                                           ; $6047: $80
	ld   bc, $4902                                   ; $6048: $01 $02 $49
	ld   a, c                                        ; $604b: $79
	jr   nc, jr_08d_5fd1                             ; $604c: $30 $83

	nop                                              ; $604e: $00
	add  b                                           ; $604f: $80
	rst  $38                                         ; $6050: $ff
	add  d                                           ; $6051: $82
	nop                                              ; $6052: $00
	ld   bc, $e00f                                   ; $6053: $01 $0f $e0
	add  b                                           ; $6056: $80
	cpl                                              ; $6057: $2f
	nop                                              ; $6058: $00
	rst  $28                                         ; $6059: $ef
	add  e                                           ; $605a: $83
	nop                                              ; $605b: $00
	add  b                                           ; $605c: $80
	rst  $38                                         ; $605d: $ff
	add  d                                           ; $605e: $82
	nop                                              ; $605f: $00
	inc  b                                           ; $6060: $04
	ldh  a, [rSCY]                                   ; $6061: $f0 $42
	ld   [hl], b                                     ; $6063: $70
	ld   [hl], d                                     ; $6064: $72
	or   b                                           ; $6065: $b0
	add  e                                           ; $6066: $83
	nop                                              ; $6067: $00
	add  b                                           ; $6068: $80
	rst  $38                                         ; $6069: $ff
	add  e                                           ; $606a: $83
	nop                                              ; $606b: $00
	ld   [bc], a                                     ; $606c: $02
	rst  $38                                         ; $606d: $ff
	nop                                              ; $606e: $00
	rst  $38                                         ; $606f: $ff
	add  h                                           ; $6070: $84
	nop                                              ; $6071: $00
	add  b                                           ; $6072: $80
	db   $fc                                         ; $6073: $fc
	add  e                                           ; $6074: $83
	inc  b                                           ; $6075: $04
	ld   [bc], a                                     ; $6076: $02
	db   $e4                                         ; $6077: $e4
	inc  b                                           ; $6078: $04
	db   $e4                                         ; $6079: $e4
	add  h                                           ; $607a: $84
	nop                                              ; $607b: $00
	adc  b                                           ; $607c: $88
	ld   bc, $0084                                   ; $607d: $01 $84 $00
	add  b                                           ; $6080: $80
	rst  $38                                         ; $6081: $ff
	add  d                                           ; $6082: $82
	nop                                              ; $6083: $00
	add  b                                           ; $6084: $80
	rra                                              ; $6085: $1f
	add  [hl]                                        ; $6086: $86
	nop                                              ; $6087: $00
	add  b                                           ; $6088: $80
	rst  $38                                         ; $6089: $ff
	add  d                                           ; $608a: $82
	nop                                              ; $608b: $00
	add  b                                           ; $608c: $80
	rst  $38                                         ; $608d: $ff
	add  [hl]                                        ; $608e: $86
	nop                                              ; $608f: $00
	add  b                                           ; $6090: $80
	rst  $38                                         ; $6091: $ff
	add  d                                           ; $6092: $82
	nop                                              ; $6093: $00
	add  b                                           ; $6094: $80
	rst  $38                                         ; $6095: $ff
	add  [hl]                                        ; $6096: $86
	nop                                              ; $6097: $00
	add  b                                           ; $6098: $80
	rst  $38                                         ; $6099: $ff
	add  d                                           ; $609a: $82
	nop                                              ; $609b: $00
	add  b                                           ; $609c: $80
	rst  $38                                         ; $609d: $ff
	add  b                                           ; $609e: $80
	nop                                              ; $609f: $00
	add  d                                           ; $60a0: $82
	inc  hl                                          ; $60a1: $23
	ld   [bc], a                                     ; $60a2: $02
	ld   [hl+], a                                    ; $60a3: $22
	inc  hl                                          ; $60a4: $23
	ld   hl, $2083                                   ; $60a5: $21 $83 $20
	inc  bc                                          ; $60a8: $03
	ld   [hl+], a                                    ; $60a9: $22
	inc  hl                                          ; $60aa: $23
	ld   hl, $8220                                   ; $60ab: $21 $20 $82
	rst  $38                                         ; $60ae: $ff
	nop                                              ; $60af: $00

jr_08d_60b0:
	nop                                              ; $60b0: $00
	add  b                                           ; $60b1: $80
	rst  $38                                         ; $60b2: $ff
	ld   bc, $4800                                   ; $60b3: $01 $00 $48
	add  c                                           ; $60b6: $81
	reti                                             ; $60b7: $d9


	nop                                              ; $60b8: $00
	sub  c                                           ; $60b9: $91
	add  b                                           ; $60ba: $80
	rst  $38                                         ; $60bb: $ff
	nop                                              ; $60bc: $00
	nop                                              ; $60bd: $00
	add  d                                           ; $60be: $82
	db   $fc                                         ; $60bf: $fc
	nop                                              ; $60c0: $00
	ld   [bc], a                                     ; $60c1: $02
	add  b                                           ; $60c2: $80
	cp   $01                                         ; $60c3: $fe $01
	ld   [bc], a                                     ; $60c5: $02
	adc  d                                           ; $60c6: $8a
	add  c                                           ; $60c7: $81
	xor  d                                           ; $60c8: $aa
	rlca                                             ; $60c9: $07
	ld   e, [hl]                                     ; $60ca: $5e
	cp   $82                                         ; $60cb: $fe $82
	ld   [bc], a                                     ; $60cd: $02
	jr   nc, @+$41                                   ; $60ce: $30 $3f

	rrca                                             ; $60d0: $0f
	nop                                              ; $60d1: $00
	add  b                                           ; $60d2: $80
	add  hl, bc                                      ; $60d3: $09
	add  b                                           ; $60d4: $80
	ccf                                              ; $60d5: $3f
	add  h                                           ; $60d6: $84
	nop                                              ; $60d7: $00
	add  b                                           ; $60d8: $80
	dec  b                                           ; $60d9: $05
	inc  bc                                          ; $60da: $03
	inc  b                                           ; $60db: $04
	db   $fc                                         ; $60dc: $fc
	ld   hl, sp+$00                                  ; $60dd: $f8 $00
	add  b                                           ; $60df: $80
	jr   nz, @-$7e                                   ; $60e0: $20 $80

	db   $fc                                         ; $60e2: $fc
	add  h                                           ; $60e3: $84
	nop                                              ; $60e4: $00
	add  b                                           ; $60e5: $80
	ld   d, h                                        ; $60e6: $54
	dec  b                                           ; $60e7: $05
	jr   jr_08d_60ea                                 ; $60e8: $18 $00

jr_08d_60ea:
	ld   b, d                                        ; $60ea: $42
	jr   jr_08d_60b0                                 ; $60eb: $18 $c3

	add  c                                           ; $60ed: $81
	add  b                                           ; $60ee: $80
	inc  a                                           ; $60ef: $3c
	ld   bc, $4078                                   ; $60f0: $01 $78 $40
	add  b                                           ; $60f3: $80
	dec  sp                                          ; $60f4: $3b
	ld   bc, $437b                                   ; $60f5: $01 $7b $43
	add  b                                           ; $60f8: $80
	ld   a, a                                        ; $60f9: $7f
	inc  b                                           ; $60fa: $04
	ld   c, c                                        ; $60fb: $49
	ld   a, c                                        ; $60fc: $79
	ld   c, c                                        ; $60fd: $49
	ld   a, c                                        ; $60fe: $79
	nop                                              ; $60ff: $00
	add  b                                           ; $6100: $80
	ld   bc, $0080                                   ; $6101: $01 $80 $00
	ld   [bc], a                                     ; $6104: $02
	ld   bc, $7978                                   ; $6105: $01 $78 $79
	add  b                                           ; $6108: $80
	nop                                              ; $6109: $00
	ld   [$7978], sp                                 ; $610a: $08 $78 $79
	pop  bc                                          ; $610d: $c1
	jr   nz, @-$1d                                   ; $610e: $20 $e1

	ld   c, $0f                                      ; $6110: $0e $0f
	cp   $ff                                         ; $6112: $fe $ff
	add  b                                           ; $6114: $80
	nop                                              ; $6115: $00
	add  b                                           ; $6116: $80
	inc  h                                           ; $6117: $24
	dec  bc                                          ; $6118: $0b
	nop                                              ; $6119: $00
	ld   bc, $ff00                                   ; $611a: $01 $00 $ff
	nop                                              ; $611d: $00
	ld   c, l                                        ; $611e: $4d
	ld   sp, $7020                                   ; $611f: $31 $20 $70

jr_08d_6122:
	ld   [hl], d                                     ; $6122: $72
	or   b                                           ; $6123: $b0
	or   c                                           ; $6124: $b1
	add  b                                           ; $6125: $80
	ld   h, b                                        ; $6126: $60
	add  hl, de                                      ; $6127: $19
	ld   [hl], e                                     ; $6128: $73
	ld   h, b                                        ; $6129: $60
	ld   [hl], b                                     ; $612a: $70
	inc  hl                                          ; $612b: $23
	ld   h, b                                        ; $612c: $60
	ld   h, e                                        ; $612d: $63
	db   $10                                         ; $612e: $10
	ld   l, h                                        ; $612f: $6c
	nop                                              ; $6130: $00
	dec  bc                                          ; $6131: $0b
	nop                                              ; $6132: $00
	add  b                                           ; $6133: $80
	nop                                              ; $6134: $00
	inc  d                                           ; $6135: $14
	nop                                              ; $6136: $00
	rra                                              ; $6137: $1f
	ret  c                                           ; $6138: $d8

	ld   e, a                                        ; $6139: $5f
	ld   d, a                                        ; $613a: $57
	rst  $10                                         ; $613b: $d7
	db   $10                                         ; $613c: $10
	sub  a                                           ; $613d: $97
	ld   d, a                                        ; $613e: $57
	inc  l                                           ; $613f: $2c
	inc  b                                           ; $6140: $04
	ld   b, h                                        ; $6141: $44
	add  c                                           ; $6142: $81
	inc  b                                           ; $6143: $04
	ld   bc, $04a4                                   ; $6144: $01 $a4 $04
	add  b                                           ; $6147: $80
	ld   h, h                                        ; $6148: $64
	nop                                              ; $6149: $00
	inc  h                                           ; $614a: $24
	add  c                                           ; $614b: $81
	ld   h, h                                        ; $614c: $64
	add  b                                           ; $614d: $80
	db   $e4                                         ; $614e: $e4
	nop                                              ; $614f: $00
	ld   b, c                                        ; $6150: $41
	adc  l                                           ; $6151: $8d
	ld   bc, $0700                                   ; $6152: $01 $00 $07
	add  b                                           ; $6155: $80
	inc  b                                           ; $6156: $04
	nop                                              ; $6157: $00
	rlca                                             ; $6158: $07
	add  b                                           ; $6159: $80
	inc  de                                          ; $615a: $13
	add  b                                           ; $615b: $80
	add  hl, de                                      ; $615c: $19
	add  b                                           ; $615d: $80
	nop                                              ; $615e: $00
	inc  bc                                          ; $615f: $03
	ld   b, $18                                      ; $6160: $06 $18
	ld   bc, $801f                                   ; $6162: $01 $1f $80
	nop                                              ; $6165: $00

jr_08d_6166:
	nop                                              ; $6166: $00
	rst  ToBoot                                         ; $6167: $c7
	add  b                                           ; $6168: $80
	nop                                              ; $6169: $00
	nop                                              ; $616a: $00
	rst  ToBoot                                         ; $616b: $c7
	add  d                                           ; $616c: $82
	rst  $28                                         ; $616d: $ef
	add  b                                           ; $616e: $80
	nop                                              ; $616f: $00
	add  hl, bc                                      ; $6170: $09
	add  $00                                         ; $6171: $c6 $00
	add  hl, hl                                      ; $6173: $29
	ld   l, l                                        ; $6174: $6d
	add  d                                           ; $6175: $82
	nop                                              ; $6176: $00
	jp   nc, Jump_08d_5240                           ; $6177: $d2 $40 $52

	ret  nz                                          ; $617a: $c0

	add  b                                           ; $617b: $80
	sub  d                                           ; $617c: $92
	add  b                                           ; $617d: $80
	inc  sp                                          ; $617e: $33
	add  b                                           ; $617f: $80
	nop                                              ; $6180: $00
	inc  bc                                          ; $6181: $03
	ret  nz                                          ; $6182: $c0

	inc  sp                                          ; $6183: $33
	nop                                              ; $6184: $00
	di                                               ; $6185: $f3
	add  b                                           ; $6186: $80
	nop                                              ; $6187: $00
	nop                                              ; $6188: $00
	db   $fd                                         ; $6189: $fd
	add  b                                           ; $618a: $80
	add  l                                           ; $618b: $85
	nop                                              ; $618c: $00
	db   $fd                                         ; $618d: $fd
	add  b                                           ; $618e: $80
	ld   a, l                                        ; $618f: $7d
	add  b                                           ; $6190: $80
	dec  a                                           ; $6191: $3d
	add  b                                           ; $6192: $80
	nop                                              ; $6193: $00
	dec  b                                           ; $6194: $05
	db   $dd                                         ; $6195: $dd
	nop                                              ; $6196: $00
	jr   nc, jr_08d_6166                             ; $6197: $30 $cd

	jr   nz, jr_08d_619b                             ; $6199: $20 $00

jr_08d_619b:
	add  b                                           ; $619b: $80
	jr   nz, jr_08d_6122                             ; $619c: $20 $84

	inc  hl                                          ; $619e: $23
	inc  bc                                          ; $619f: $03
	ld   [hl+], a                                    ; $61a0: $22
	inc  hl                                          ; $61a1: $23
	ld   hl, $8220                                   ; $61a2: $21 $20 $82
	ld   hl, $0003                                   ; $61a5: $21 $03 $00
	or   h                                           ; $61a8: $b4
	ld   c, c                                        ; $61a9: $49
	db   $fd                                         ; $61aa: $fd
	add  b                                           ; $61ab: $80
	db   $fc                                         ; $61ac: $fc
	add  b                                           ; $61ad: $80
	db   $fd                                         ; $61ae: $fd
	nop                                              ; $61af: $00
	ld   bc, $fd80                                   ; $61b0: $01 $80 $fd
	ld   [$0405], sp                                 ; $61b3: $08 $05 $04
	ld   d, h                                        ; $61b6: $54
	and  l                                           ; $61b7: $a5
	db   $fd                                         ; $61b8: $fd
	ld   e, $92                                      ; $61b9: $1e $92
	ld   [bc], a                                     ; $61bb: $02
	ld   a, [$7a81]                                  ; $61bc: $fa $81 $7a
	add  b                                           ; $61bf: $80
	ld   [bc], a                                     ; $61c0: $02
	inc  bc                                          ; $61c1: $03
	ld   c, d                                        ; $61c2: $4a
	jp   z, Jump_08d_78fa                            ; $61c3: $ca $fa $78

	add  c                                           ; $61c6: $81
	ld   c, b                                        ; $61c7: $48
	ld   [$074d], sp                                 ; $61c8: $08 $4d $07
	nop                                              ; $61cb: $00
	rlca                                             ; $61cc: $07
	dec  c                                           ; $61cd: $0d
	rrca                                             ; $61ce: $0f
	ld   [$080f], sp                                 ; $61cf: $08 $0f $08
	add  e                                           ; $61d2: $83
	rrca                                             ; $61d3: $0f
	ld   de, $0f08                                   ; $61d4: $11 $08 $0f
	ld   d, h                                        ; $61d7: $54
	db   $fc                                         ; $61d8: $fc
	add  b                                           ; $61d9: $80
	db   $fc                                         ; $61da: $fc
	ret  nc                                          ; $61db: $d0

	db   $fc                                         ; $61dc: $fc
	inc  b                                           ; $61dd: $04
	db   $fc                                         ; $61de: $fc
	inc  b                                           ; $61df: $04
	db   $fc                                         ; $61e0: $fc
	ld   hl, sp-$04                                  ; $61e1: $f8 $fc
	ld   hl, sp-$04                                  ; $61e3: $f8 $fc
	inc  b                                           ; $61e5: $04
	db   $fc                                         ; $61e6: $fc
	adc  d                                           ; $61e7: $8a
	ld   a, a                                        ; $61e8: $7f
	add  b                                           ; $61e9: $80
	inc  h                                           ; $61ea: $24
	add  b                                           ; $61eb: $80
	xor  l                                           ; $61ec: $ad
	dec  c                                           ; $61ed: $0d
	ld   d, b                                        ; $61ee: $50
	ld   a, b                                        ; $61ef: $78
	ld   bc, $0179                                   ; $61f0: $01 $79 $01
	ld   a, c                                        ; $61f3: $79
	ld   bc, $0179                                   ; $61f4: $01 $79 $01
	ld   a, c                                        ; $61f7: $79
	nop                                              ; $61f8: $00
	ld   a, c                                        ; $61f9: $79
	ld   d, c                                        ; $61fa: $51
	nop                                              ; $61fb: $00
	add  b                                           ; $61fc: $80
	ld   a, c                                        ; $61fd: $79
	add  b                                           ; $61fe: $80
	rlca                                             ; $61ff: $07
	ld   c, $d8                                      ; $6200: $0e $d8
	ei                                               ; $6202: $fb
	xor  a                                           ; $6203: $af
	db   $fd                                         ; $6204: $fd
	ld   h, l                                        ; $6205: $65
	db   $fd                                         ; $6206: $fd
	ld   c, l                                        ; $6207: $4d
	db   $fd                                         ; $6208: $fd
	ld   e, l                                        ; $6209: $5d
	db   $fd                                         ; $620a: $fd
	db   $fc                                         ; $620b: $fc
	dec  c                                           ; $620c: $0d
	inc  c                                           ; $620d: $0c
	db   $fd                                         ; $620e: $fd
	ld   a, [de]                                     ; $620f: $1a
	add  c                                           ; $6210: $81
	ret  nc                                          ; $6211: $d0

	nop                                              ; $6212: $00
	db   $d3                                         ; $6213: $d3
	adc  b                                           ; $6214: $88
	ret  nc                                          ; $6215: $d0

	ld   [bc], a                                     ; $6216: $02
	db   $10                                         ; $6217: $10
	cpl                                              ; $6218: $2f
	ld   d, b                                        ; $6219: $50
	add  b                                           ; $621a: $80
	ld   d, c                                        ; $621b: $51
	ld   bc, $d353                                   ; $621c: $01 $53 $d3
	add  d                                           ; $621f: $82
	rst  $10                                         ; $6220: $d7
	rlca                                             ; $6221: $07
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6222: $cf
	call nz, $d5d4                                   ; $6223: $c4 $d4 $d5
	ret  nc                                          ; $6226: $d0

	push de                                          ; $6227: $d5
	and  h                                           ; $6228: $a4
	ld   h, h                                        ; $6229: $64
	add  h                                           ; $622a: $84
	db   $e4                                         ; $622b: $e4
	inc  bc                                          ; $622c: $03
	and  h                                           ; $622d: $a4
	db   $e4                                         ; $622e: $e4
	inc  b                                           ; $622f: $04
	add  h                                           ; $6230: $84
	add  d                                           ; $6231: $82
	and  h                                           ; $6232: $a4
	adc  [hl]                                        ; $6233: $8e
	ld   bc, $008e                                   ; $6234: $01 $8e $00
	inc  e                                           ; $6237: $1c
	cp   d                                           ; $6238: $ba
	nop                                              ; $6239: $00
	ei                                               ; $623a: $fb
	nop                                              ; $623b: $00
	ld   h, b                                        ; $623c: $60
	nop                                              ; $623d: $00
	stop                                             ; $623e: $10 $00
	ld   [$0100], sp                                 ; $6240: $08 $00 $01
	nop                                              ; $6243: $00
	ccf                                              ; $6244: $3f
	inc  b                                           ; $6245: $04
	ld   a, h                                        ; $6246: $7c
	ld   b, b                                        ; $6247: $40
	cp   a                                           ; $6248: $bf
	nop                                              ; $6249: $00
	add  b                                           ; $624a: $80
	nop                                              ; $624b: $00
	add  b                                           ; $624c: $80
	nop                                              ; $624d: $00
	ld   b, b                                        ; $624e: $40
	nop                                              ; $624f: $00
	jr   nz, jr_08d_6252                             ; $6250: $20 $00

jr_08d_6252:
	ldh  [rP1], a                                    ; $6252: $e0 $00
	rst  $38                                         ; $6254: $ff
	add  c                                           ; $6255: $81
	nop                                              ; $6256: $00
	inc  c                                           ; $6257: $0c
	ret  nc                                          ; $6258: $d0

	nop                                              ; $6259: $00
	rla                                              ; $625a: $17
	nop                                              ; $625b: $00
	jr   z, jr_08d_625e                              ; $625c: $28 $00

jr_08d_625e:
	jr   z, jr_08d_6260                              ; $625e: $28 $00

jr_08d_6260:
	ld   b, l                                        ; $6260: $45
	nop                                              ; $6261: $00
	ld   a, l                                        ; $6262: $7d
	nop                                              ; $6263: $00
	rst  $38                                         ; $6264: $ff
	add  c                                           ; $6265: $81
	nop                                              ; $6266: $00
	nop                                              ; $6267: $00
	rst  JumpTable                                         ; $6268: $df
	add  l                                           ; $6269: $85
	jr   nz, @+$04                                   ; $626a: $20 $02

	ld   hl, $2126                                   ; $626c: $21 $26 $21
	add  e                                           ; $626f: $83
	daa                                              ; $6270: $27
	inc  bc                                          ; $6271: $03
	nop                                              ; $6272: $00
	dec  b                                           ; $6273: $05
	ld   de, $8215                                   ; $6274: $11 $15 $82
	nop                                              ; $6277: $00
	ld   bc, $00ff                                   ; $6278: $01 $ff $00
	add  h                                           ; $627b: $84
	rst  $38                                         ; $627c: $ff
	ld   bc, $936c                                   ; $627d: $01 $6c $93
	add  b                                           ; $6280: $80
	rst  $38                                         ; $6281: $ff
	add  d                                           ; $6282: $82
	nop                                              ; $6283: $00
	ld   bc, $00ff                                   ; $6284: $01 $ff $00
	add  c                                           ; $6287: $81
	rst  $38                                         ; $6288: $ff
	inc  c                                           ; $6289: $0c
	rst  ToBoot                                         ; $628a: $c7
	rst  $10                                         ; $628b: $d7
	ret  nc                                          ; $628c: $d0

	jp   nz, $0007                                   ; $628d: $c2 $07 $00

	rlca                                             ; $6290: $07
	inc  b                                           ; $6291: $04
	rlca                                             ; $6292: $07
	ld   bc, $c700                                   ; $6293: $01 $00 $c7
	rlca                                             ; $6296: $07
	add  d                                           ; $6297: $82
	rst  ToBoot                                         ; $6298: $c7
	dec  bc                                          ; $6299: $0b

jr_08d_629a:
	ret  nz                                          ; $629a: $c0

	nop                                              ; $629b: $00
	jr   z, jr_08d_629a                              ; $629c: $28 $fc

	add  b                                           ; $629e: $80
	db   $fc                                         ; $629f: $fc
	inc  d                                           ; $62a0: $14
	db   $fc                                         ; $62a1: $fc
	ld   b, b                                        ; $62a2: $40
	nop                                              ; $62a3: $00
	rst  $38                                         ; $62a4: $ff
	db   $fc                                         ; $62a5: $fc
	add  d                                           ; $62a6: $82
	db   $fd                                         ; $62a7: $fd
	add  b                                           ; $62a8: $80
	ld   bc, $af02                                   ; $62a9: $01 $02 $af
	xor  l                                           ; $62ac: $ad
	ld   bc, $0081                                   ; $62ad: $01 $81 $00
	add  b                                           ; $62b0: $80
	rlca                                             ; $62b1: $07
	ld   [bc], a                                     ; $62b2: $02
	ldh  [rP1], a                                    ; $62b3: $e0 $00
	xor  $81                                         ; $62b5: $ee $81
	and  $05                                         ; $62b7: $e6 $05
	rst  $28                                         ; $62b9: $ef
	rst  $20                                         ; $62ba: $e7
	and  b                                           ; $62bb: $a0
	ld   b, c                                        ; $62bc: $41
	ld   b, b                                        ; $62bd: $40
	ld   b, c                                        ; $62be: $41
	add  b                                           ; $62bf: $80
	nop                                              ; $62c0: $00
	add  b                                           ; $62c1: $80
	add  b                                           ; $62c2: $80
	ld   bc, $80bf                                   ; $62c3: $01 $bf $80
	add  h                                           ; $62c6: $84
	cp   a                                           ; $62c7: $bf
	ld   [bc], a                                     ; $62c8: $02
	ld   a, $81                                      ; $62c9: $3e $81
	add  b                                           ; $62cb: $80
	add  b                                           ; $62cc: $80

jr_08d_62cd:
	db   $fc                                         ; $62cd: $fc
	nop                                              ; $62ce: $00
	nop                                              ; $62cf: $00
	add  b                                           ; $62d0: $80
	rrca                                             ; $62d1: $0f
	ld   [bc], a                                     ; $62d2: $02
	pop  bc                                          ; $62d3: $c1
	ld   bc, $81dd                                   ; $62d4: $01 $dd $81
	call $df04                                       ; $62d7: $cd $04 $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62da: $cf
	jr   nz, jr_08d_62cd                             ; $62db: $20 $f0

jr_08d_62dd:
	db   $10                                         ; $62dd: $10
	add  b                                           ; $62de: $80
	ldh  a, [$81]                                    ; $62df: $f0 $81
	nop                                              ; $62e1: $00
	ld   bc, $007f                                   ; $62e2: $01 $7f $00
	add  h                                           ; $62e5: $84
	ld   a, a                                        ; $62e6: $7f
	ld   bc, $c0bf                                   ; $62e7: $01 $bf $c0
	add  b                                           ; $62ea: $80

jr_08d_62eb:
	rst  $38                                         ; $62eb: $ff
	add  b                                           ; $62ec: $80
	nop                                              ; $62ed: $00
	add  b                                           ; $62ee: $80
	ld   e, $02                                      ; $62ef: $1e $02
	add  d                                           ; $62f1: $82
	ld   [bc], a                                     ; $62f2: $02
	cp   d                                           ; $62f3: $ba
	add  c                                           ; $62f4: $81
	sbc  d                                           ; $62f5: $9a
	inc  bc                                          ; $62f6: $03
	cp   [hl]                                        ; $62f7: $be
	sbc  [hl]                                        ; $62f8: $9e
	add  h                                           ; $62f9: $84
	inc  b                                           ; $62fa: $04
	add  b                                           ; $62fb: $80
	db   $e4                                         ; $62fc: $e4
	add  d                                           ; $62fd: $82
	inc  b                                           ; $62fe: $04
	ld   bc, $04e4                                   ; $62ff: $01 $e4 $04
	add  h                                           ; $6302: $84
	db   $e4                                         ; $6303: $e4
	nop                                              ; $6304: $00
	pop  hl                                          ; $6305: $e1
	add  e                                           ; $6306: $83
	ld   bc, $0280                                   ; $6307: $01 $80 $02
	inc  d                                           ; $630a: $14
	dec  b                                           ; $630b: $05
	inc  b                                           ; $630c: $04
	ld   a, [bc]                                     ; $630d: $0a
	ld   [$1014], sp                                 ; $630e: $08 $14 $10
	ld   de, $0510                                   ; $6311: $11 $10 $05
	nop                                              ; $6314: $00
	inc  e                                           ; $6315: $1c
	nop                                              ; $6316: $00
	ld   h, e                                        ; $6317: $63
	nop                                              ; $6318: $00
	inc  c                                           ; $6319: $0c
	nop                                              ; $631a: $00
	or   b                                           ; $631b: $b0
	nop                                              ; $631c: $00
	ld   b, b                                        ; $631d: $40
	nop                                              ; $631e: $00
	add  b                                           ; $631f: $80
	add  b                                           ; $6320: $80
	nop                                              ; $6321: $00
	dec  b                                           ; $6322: $05
	ld   [$00f0], sp                                 ; $6323: $08 $f0 $00
	jr   c, jr_08d_6328                              ; $6326: $38 $00

jr_08d_6328:
	ret  nz                                          ; $6328: $c0

	add  c                                           ; $6329: $81
	nop                                              ; $632a: $00
	add  b                                           ; $632b: $80
	ld   bc, $0603                                   ; $632c: $01 $03 $06
	rlca                                             ; $632f: $07
	ld   bc, $8000                                   ; $6330: $01 $00 $80
	ccf                                              ; $6333: $3f
	add  b                                           ; $6334: $80
	nop                                              ; $6335: $00
	add  b                                           ; $6336: $80
	dec  b                                           ; $6337: $05
	ld   b, $20                                      ; $6338: $06 $20
	ld   a, [hl+]                                    ; $633a: $2a
	ld   a, [bc]                                     ; $633b: $0a
	ld   d, l                                        ; $633c: $55
	xor  d                                           ; $633d: $aa
	rst  $38                                         ; $633e: $ff
	nop                                              ; $633f: $00
	add  b                                           ; $6340: $80
	rst  $38                                         ; $6341: $ff
	nop                                              ; $6342: $00
	nop                                              ; $6343: $00
	add  b                                           ; $6344: $80
	rst  $38                                         ; $6345: $ff
	add  b                                           ; $6346: $80
	nop                                              ; $6347: $00
	add  b                                           ; $6348: $80
	ld   a, a                                        ; $6349: $7f
	ld   bc, $fb04                                   ; $634a: $01 $04 $fb
	add  b                                           ; $634d: $80
	pop  af                                          ; $634e: $f1
	dec  b                                           ; $634f: $05
	nop                                              ; $6350: $00
	ld   [$e000], a                                  ; $6351: $ea $00 $e0
	push af                                          ; $6354: $f5
	nop                                              ; $6355: $00
	add  b                                           ; $6356: $80
	rst  $38                                         ; $6357: $ff
	add  h                                           ; $6358: $84
	daa                                              ; $6359: $27
	add  h                                           ; $635a: $84
	jr   nz, jr_08d_62dd                             ; $635b: $20 $80

	ld   hl, $2480                                   ; $635d: $21 $80 $24
	add  d                                           ; $6360: $82
	rst  $38                                         ; $6361: $ff
	add  b                                           ; $6362: $80
	cp   $80                                         ; $6363: $fe $80
	nop                                              ; $6365: $00
	add  b                                           ; $6366: $80
	ld   b, $80                                      ; $6367: $06 $80
	jr   nc, jr_08d_62eb                             ; $6369: $30 $80

	add  b                                           ; $636b: $80
	add  b                                           ; $636c: $80
	ld   b, $80                                      ; $636d: $06 $80
	push de                                          ; $636f: $d5
	add  b                                           ; $6370: $80
	ret  nc                                          ; $6371: $d0

	add  b                                           ; $6372: $80
	nop                                              ; $6373: $00
	add  b                                           ; $6374: $80
	ret  nz                                          ; $6375: $c0

	add  d                                           ; $6376: $82
	nop                                              ; $6377: $00
	add  b                                           ; $6378: $80
	db   $db                                         ; $6379: $db
	add  b                                           ; $637a: $80
	sbc  e                                           ; $637b: $9b
	add  b                                           ; $637c: $80
	ld   b, a                                        ; $637d: $47
	add  d                                           ; $637e: $82
	rlca                                             ; $637f: $07
	add  b                                           ; $6380: $80
	ld   bc, $0507                                   ; $6381: $01 $07 $05
	rlca                                             ; $6384: $07
	nop                                              ; $6385: $00
	rlca                                             ; $6386: $07
	or   l                                           ; $6387: $b5
	cp   a                                           ; $6388: $bf
	or   b                                           ; $6389: $b0
	cp   a                                           ; $638a: $bf
	add  d                                           ; $638b: $82
	rst  $38                                         ; $638c: $ff
	add  b                                           ; $638d: $80
	db   $fc                                         ; $638e: $fc
	add  b                                           ; $638f: $80
	ld   b, b                                        ; $6390: $40
	rlca                                             ; $6391: $07
	ld   d, h                                        ; $6392: $54
	db   $fc                                         ; $6393: $fc
	add  b                                           ; $6394: $80
	db   $fc                                         ; $6395: $fc
	pop  de                                          ; $6396: $d1
	rst  $38                                         ; $6397: $ff
	dec  b                                           ; $6398: $05
	rst  $38                                         ; $6399: $ff
	add  b                                           ; $639a: $80

jr_08d_639b:
	ldh  [$80], a                                    ; $639b: $e0 $80
	and  $86                                         ; $639d: $e6 $86
	nop                                              ; $639f: $00
	inc  bc                                          ; $63a0: $03
	call c, $dcdd                                    ; $63a1: $dc $dd $dc
	db   $dd                                         ; $63a4: $dd
	add  d                                           ; $63a5: $82
	cp   a                                           ; $63a6: $bf
	add  [hl]                                        ; $63a7: $86
	nop                                              ; $63a8: $00
	dec  b                                           ; $63a9: $05
	and  b                                           ; $63aa: $a0

jr_08d_63ab:
	db   $fd                                         ; $63ab: $fd
	ld   a, [hl]                                     ; $63ac: $7e
	rst  $38                                         ; $63ad: $ff
	dec  e                                           ; $63ae: $1d
	pop  bc                                          ; $63af: $c1
	add  b                                           ; $63b0: $80
	call $0086                                       ; $63b1: $cd $86 $00
	add  d                                           ; $63b4: $82
	db   $dd                                         ; $63b5: $dd
	add  d                                           ; $63b6: $82
	ld   a, a                                        ; $63b7: $7f
	add  [hl]                                        ; $63b8: $86
	nop                                              ; $63b9: $00
	dec  b                                           ; $63ba: $05
	add  d                                           ; $63bb: $82
	rst  JumpTable                                         ; $63bc: $df
	cp   a                                           ; $63bd: $bf
	rst  $38                                         ; $63be: $ff
	sbc  a                                           ; $63bf: $9f
	add  d                                           ; $63c0: $82
	add  b                                           ; $63c1: $80
	sbc  d                                           ; $63c2: $9a
	add  [hl]                                        ; $63c3: $86
	nop                                              ; $63c4: $00
	add  b                                           ; $63c5: $80
	db   $dd                                         ; $63c6: $dd
	ld   [bc], a                                     ; $63c7: $02
	ld   e, l                                        ; $63c8: $5d
	db   $dd                                         ; $63c9: $dd
	ld   h, h                                        ; $63ca: $64
	add  c                                           ; $63cb: $81
	db   $e4                                         ; $63cc: $e4
	add  [hl]                                        ; $63cd: $86
	inc  b                                           ; $63ce: $04
	add  d                                           ; $63cf: $82
	call nz, $1602                                   ; $63d0: $c4 $02 $16
	db   $10                                         ; $63d3: $10
	inc  de                                          ; $63d4: $13
	adc  e                                           ; $63d5: $8b
	ld   de, $2c01                                   ; $63d6: $11 $01 $2c
	dec  hl                                          ; $63d9: $2b
	add  b                                           ; $63da: $80
	and  e                                           ; $63db: $a3
	add  b                                           ; $63dc: $80
	adc  e                                           ; $63dd: $8b
	add  b                                           ; $63de: $80
	dec  hl                                          ; $63df: $2b
	add  h                                           ; $63e0: $84
	ld   l, e                                        ; $63e1: $6b
	add  b                                           ; $63e2: $80
	ld   l, d                                        ; $63e3: $6a
	inc  b                                           ; $63e4: $04
	ld   b, e                                        ; $63e5: $43
	ld   b, b                                        ; $63e6: $40
	ld   c, c                                        ; $63e7: $49
	ld   b, b                                        ; $63e8: $40
	ld   h, h                                        ; $63e9: $64
	add  c                                           ; $63ea: $81
	ld   b, b                                        ; $63eb: $40
	ld   [bc], a                                     ; $63ec: $02
	ld   d, d                                        ; $63ed: $52
	ld   a, a                                        ; $63ee: $7f
	rst  $38                                         ; $63ef: $ff
	add  b                                           ; $63f0: $80
	push de                                          ; $63f1: $d5
	rlca                                             ; $63f2: $07
	rst  $38                                         ; $63f3: $ff
	ld   d, l                                        ; $63f4: $55
	rst  $38                                         ; $63f5: $ff
	sbc  d                                           ; $63f6: $9a
	jr   nc, jr_08d_642f                             ; $63f7: $30 $36

	jr   nc, jr_08d_63ab                             ; $63f9: $30 $b0

	add  c                                           ; $63fb: $81
	nop                                              ; $63fc: $00
	nop                                              ; $63fd: $00
	ld   c, c                                        ; $63fe: $49
	add  b                                           ; $63ff: $80
	rst  $38                                         ; $6400: $ff
	add  b                                           ; $6401: $80
	ld   d, l                                        ; $6402: $55
	rlca                                             ; $6403: $07
	rst  $38                                         ; $6404: $ff
	ld   d, l                                        ; $6405: $55
	rst  $38                                         ; $6406: $ff
	xor  d                                           ; $6407: $aa
	nop                                              ; $6408: $00
	add  b                                           ; $6409: $80
	nop                                              ; $640a: $00
	ld   e, e                                        ; $640b: $5b
	add  c                                           ; $640c: $81
	nop                                              ; $640d: $00
	nop                                              ; $640e: $00
	inc  h                                           ; $640f: $24
	add  b                                           ; $6410: $80
	rst  $38                                         ; $6411: $ff
	add  b                                           ; $6412: $80
	ld   d, l                                        ; $6413: $55
	inc  b                                           ; $6414: $04
	rst  $38                                         ; $6415: $ff
	ld   d, l                                        ; $6416: $55
	rst  $38                                         ; $6417: $ff
	adc  d                                           ; $6418: $8a
	jr   nz, jr_08d_639b                             ; $6419: $20 $80

	ld   hl, $2582                                   ; $641b: $21 $82 $25
	add  d                                           ; $641e: $82
	ld   hl, $2082                                   ; $641f: $21 $82 $20
	add  b                                           ; $6422: $80
	inc  [hl]                                        ; $6423: $34
	add  b                                           ; $6424: $80
	and  h                                           ; $6425: $a4
	add  [hl]                                        ; $6426: $86
	inc  h                                           ; $6427: $24
	add  d                                           ; $6428: $82
	nop                                              ; $6429: $00
	adc  d                                           ; $642a: $8a
	sbc  e                                           ; $642b: $9b
	add  d                                           ; $642c: $82
	nop                                              ; $642d: $00
	dec  hl                                          ; $642e: $2b

jr_08d_642f:
	xor  b                                           ; $642f: $a8
	cp   a                                           ; $6430: $bf
	and  a                                           ; $6431: $a7
	cp   a                                           ; $6432: $bf
	and  a                                           ; $6433: $a7
	cp   a                                           ; $6434: $bf

jr_08d_6435:
	xor  b                                           ; $6435: $a8
	cp   a                                           ; $6436: $bf
	cp   d                                           ; $6437: $ba
	cp   a                                           ; $6438: $bf
	or   b                                           ; $6439: $b0
	cp   a                                           ; $643a: $bf
	inc  d                                           ; $643b: $14
	rra                                              ; $643c: $1f
	ld   bc, $0500                                   ; $643d: $01 $00 $05
	rst  $38                                         ; $6440: $ff
	ld   sp, hl                                      ; $6441: $f9
	rst  $38                                         ; $6442: $ff
	ld   sp, hl                                      ; $6443: $f9
	rst  $38                                         ; $6444: $ff
	dec  b                                           ; $6445: $05
	rst  $38                                         ; $6446: $ff
	dec  hl                                          ; $6447: $2b
	rst  $38                                         ; $6448: $ff
	add  e                                           ; $6449: $83
	rst  $38                                         ; $644a: $ff
	inc  d                                           ; $644b: $14
	db   $fc                                         ; $644c: $fc
	ld   b, b                                        ; $644d: $40
	nop                                              ; $644e: $00
	call c, $dedd                                    ; $644f: $dc $dd $de
	rst  JumpTable                                         ; $6452: $df
	call c, $dedd                                    ; $6453: $dc $dd $de
	rst  JumpTable                                         ; $6456: $df
	call c, $dcdd                                    ; $6457: $dc $dd $dc
	db   $dd                                         ; $645a: $dd
	add  d                                           ; $645b: $82
	nop                                              ; $645c: $00
	inc  c                                           ; $645d: $0c
	ld   [hl+], a                                    ; $645e: $22
	rst  $38                                         ; $645f: $ff
	cp   $ff                                         ; $6460: $fe $ff
	cp   $ff                                         ; $6462: $fe $ff
	cp   $ff                                         ; $6464: $fe $ff
	cp   $ff                                         ; $6466: $fe $ff
	ld   [hl], h                                     ; $6468: $74
	db   $fd                                         ; $6469: $fd
	ld   d, h                                        ; $646a: $54
	add  c                                           ; $646b: $81
	nop                                              ; $646c: $00
	add  b                                           ; $646d: $80
	db   $dd                                         ; $646e: $dd
	ld   b, $5d                                      ; $646f: $06 $5d
	db   $dd                                         ; $6471: $dd
	ld   e, l                                        ; $6472: $5d
	db   $dd                                         ; $6473: $dd
	ld   e, l                                        ; $6474: $5d
	db   $dd                                         ; $6475: $dd
	ld   e, l                                        ; $6476: $5d
	add  c                                           ; $6477: $81
	db   $dd                                         ; $6478: $dd
	add  d                                           ; $6479: $82
	nop                                              ; $647a: $00
	inc  c                                           ; $647b: $0c
	and  d                                           ; $647c: $a2
	rst  $38                                         ; $647d: $ff
	ccf                                              ; $647e: $3f
	rst  $38                                         ; $647f: $ff
	ccf                                              ; $6480: $3f
	rst  $38                                         ; $6481: $ff
	ccf                                              ; $6482: $3f
	rst  $38                                         ; $6483: $ff
	ccf                                              ; $6484: $3f
	rst  $38                                         ; $6485: $ff
	sbc  a                                           ; $6486: $9f
	rst  JumpTable                                         ; $6487: $df
	dec  e                                           ; $6488: $1d
	add  c                                           ; $6489: $81
	nop                                              ; $648a: $00
	ld   b, $9d                                      ; $648b: $06 $9d
	db   $dd                                         ; $648d: $dd
	dec  e                                           ; $648e: $1d
	db   $dd                                         ; $648f: $dd
	dec  e                                           ; $6490: $1d
	db   $dd                                         ; $6491: $dd
	dec  e                                           ; $6492: $1d
	add  c                                           ; $6493: $81
	db   $dd                                         ; $6494: $dd
	ld   bc, $dd5d                                   ; $6495: $01 $5d $dd
	add  d                                           ; $6498: $82
	nop                                              ; $6499: $00
	adc  b                                           ; $649a: $88
	call nz, $c780                                   ; $649b: $c4 $80 $c7
	add  d                                           ; $649e: $82
	nop                                              ; $649f: $00
	adc  b                                           ; $64a0: $88
	dec  d                                           ; $64a1: $15
	add  b                                           ; $64a2: $80
	push af                                          ; $64a3: $f5
	add  d                                           ; $64a4: $82
	dec  b                                           ; $64a5: $05
	ld   bc, $6a69                                   ; $64a6: $01 $69 $6a
	add  c                                           ; $64a9: $81
	ld   l, b                                        ; $64aa: $68
	nop                                              ; $64ab: $00
	ld   l, c                                        ; $64ac: $69
	add  d                                           ; $64ad: $82
	ld   l, e                                        ; $64ae: $6b
	inc  bc                                          ; $64af: $03
	ld   c, e                                        ; $64b0: $4b
	ld   c, d                                        ; $64b1: $4a
	inc  hl                                          ; $64b2: $23
	jr   nz, jr_08d_6435                             ; $64b3: $20 $80

	add  b                                           ; $64b5: $80
	inc  b                                           ; $64b6: $04
	ld   d, l                                        ; $64b7: $55
	rst  $38                                         ; $64b8: $ff
	db   $eb                                         ; $64b9: $eb
	rst  $38                                         ; $64ba: $ff
	cp   [hl]                                        ; $64bb: $be
	add  l                                           ; $64bc: $85
	rst  $38                                         ; $64bd: $ff
	ld   [$ff28], sp                                 ; $64be: $08 $28 $ff
	jr   z, jr_08d_64c3                              ; $64c1: $28 $00

jr_08d_64c3:
	ld   d, l                                        ; $64c3: $55
	rst  $38                                         ; $64c4: $ff
	cp   [hl]                                        ; $64c5: $be
	rst  $38                                         ; $64c6: $ff
	db   $eb                                         ; $64c7: $eb
	add  c                                           ; $64c8: $81
	rst  $38                                         ; $64c9: $ff
	dec  b                                           ; $64ca: $05
	add  sp, -$01                                    ; $64cb: $e8 $ff
	add  sp, -$01                                    ; $64cd: $e8 $ff
	nop                                              ; $64cf: $00
	rst  $38                                         ; $64d0: $ff
	add  b                                           ; $64d1: $80
	nop                                              ; $64d2: $00
	ld   [bc], a                                     ; $64d3: $02
	ld   d, l                                        ; $64d4: $55
	rst  $38                                         ; $64d5: $ff

jr_08d_64d6:
	xor  d                                           ; $64d6: $aa
	add  c                                           ; $64d7: $81
	rst  $38                                         ; $64d8: $ff
	rlca                                             ; $64d9: $07
	ld   de, $44ff                                   ; $64da: $11 $ff $44
	rst  $38                                         ; $64dd: $ff
	pop  de                                          ; $64de: $d1
	rst  $38                                         ; $64df: $ff
	ld   a, [bc]                                     ; $64e0: $0a
	adc  [hl]                                        ; $64e1: $8e
	add  b                                           ; $64e2: $80
	nop                                              ; $64e3: $00
	dec  b                                           ; $64e4: $05
	jr   nz, jr_08d_650e                             ; $64e5: $20 $27

	ld   hl, $2426                                   ; $64e7: $21 $26 $24
	dec  h                                           ; $64ea: $25
	add  [hl]                                        ; $64eb: $86
	inc  h                                           ; $64ec: $24
	ld   [bc], a                                     ; $64ed: $02
	ld   hl, $0620                                   ; $64ee: $21 $20 $06
	add  b                                           ; $64f1: $80
	reti                                             ; $64f2: $d9


	ld   bc, $0619                                   ; $64f3: $01 $19 $06
	add  c                                           ; $64f6: $81
	add  [hl]                                        ; $64f7: $86
	add  b                                           ; $64f8: $80
	sbc  c                                           ; $64f9: $99
	ld   [bc], a                                     ; $64fa: $02
	add  [hl]                                        ; $64fb: $86
	add  b                                           ; $64fc: $80
	sbc  c                                           ; $64fd: $99
	add  b                                           ; $64fe: $80
	add  b                                           ; $64ff: $80
	ld   bc, $0c00                                   ; $6500: $01 $00 $0c
	add  c                                           ; $6503: $81
	or   e                                           ; $6504: $b3
	add  d                                           ; $6505: $82
	inc  c                                           ; $6506: $0c
	add  b                                           ; $6507: $80
	or   e                                           ; $6508: $b3
	ld   [bc], a                                     ; $6509: $02
	inc  c                                           ; $650a: $0c
	nop                                              ; $650b: $00
	or   e                                           ; $650c: $b3
	add  c                                           ; $650d: $81

jr_08d_650e:
	nop                                              ; $650e: $00
	add  b                                           ; $650f: $80
	rra                                              ; $6510: $1f
	add  d                                           ; $6511: $82
	rlca                                             ; $6512: $07
	add  b                                           ; $6513: $80
	nop                                              ; $6514: $00
	add  h                                           ; $6515: $84
	rlca                                             ; $6516: $07
	add  b                                           ; $6517: $80
	ld   bc, $fc84                                   ; $6518: $01 $84 $fc
	add  b                                           ; $651b: $80
	nop                                              ; $651c: $00
	add  h                                           ; $651d: $84
	db   $fc                                         ; $651e: $fc
	add  b                                           ; $651f: $80
	ld   b, b                                        ; $6520: $40
	nop                                              ; $6521: $00
	nop                                              ; $6522: $00
	add  d                                           ; $6523: $82
	ld   a, a                                        ; $6524: $7f
	nop                                              ; $6525: $00
	nop                                              ; $6526: $00
	add  b                                           ; $6527: $80
	jr   c, jr_08d_652b                              ; $6528: $38 $01

	ld   a, [hl]                                     ; $652a: $7e

jr_08d_652b:
	ld   b, [hl]                                     ; $652b: $46
	add  b                                           ; $652c: $80
	dec  sp                                          ; $652d: $3b
	ld   bc, $0038                                   ; $652e: $01 $38 $00
	add  b                                           ; $6531: $80
	ld   [hl+], a                                    ; $6532: $22
	ld   bc, $f808                                   ; $6533: $01 $08 $f8
	add  b                                           ; $6536: $80
	ld   sp, hl                                      ; $6537: $f9
	dec  b                                           ; $6538: $05
	ld   de, $1001                                   ; $6539: $11 $01 $10
	jr   jr_08d_64d6                                 ; $653c: $18 $98

	ld   a, b                                        ; $653e: $78
	add  b                                           ; $653f: $80
	ld   sp, hl                                      ; $6540: $f9
	nop                                              ; $6541: $00
	ld   hl, sp-$80                                  ; $6542: $f8 $80
	ld   [$f802], sp                                 ; $6544: $08 $02 $f8
	ld   e, l                                        ; $6547: $5d
	ld   d, l                                        ; $6548: $55
	add  b                                           ; $6549: $80
	sub  [hl]                                        ; $654a: $96
	add  b                                           ; $654b: $80
	cp   d                                           ; $654c: $ba
	add  b                                           ; $654d: $80
	ld   a, d                                        ; $654e: $7a
	ld   [bc], a                                     ; $654f: $02
	ldh  a, [$80]                                    ; $6550: $f0 $80
	or   $80                                         ; $6552: $f6 $80
	ld   [hl], d                                     ; $6554: $72
	ld   [$3a02], sp                                 ; $6555: $08 $02 $3a
	ld   b, d                                        ; $6558: $42
	inc  c                                           ; $6559: $0c
	nop                                              ; $655a: $00
	sub  e                                           ; $655b: $93
	ld   bc, $91f1                                   ; $655c: $01 $f1 $91
	add  b                                           ; $655f: $80
	pop  hl                                          ; $6560: $e1
	ld   bc, $5052                                   ; $6561: $01 $52 $50
	add  b                                           ; $6564: $80
	pop  af                                          ; $6565: $f1
	add  b                                           ; $6566: $80
	ld   h, c                                        ; $6567: $61
	add  b                                           ; $6568: $80
	sub  c                                           ; $6569: $91
	add  b                                           ; $656a: $80
	ld   bc, $fd00                                   ; $656b: $01 $00 $fd
	add  b                                           ; $656e: $80
	ld   d, l                                        ; $656f: $55
	add  b                                           ; $6570: $80
	ld   d, h                                        ; $6571: $54
	inc  bc                                          ; $6572: $03
	push af                                          ; $6573: $f5
	add  sp, $00                                     ; $6574: $e8 $00
	push hl                                          ; $6576: $e5
	add  b                                           ; $6577: $80
	db   $ed                                         ; $6578: $ed
	nop                                              ; $6579: $00
	dec  c                                           ; $657a: $0d
	add  b                                           ; $657b: $80
	db   $fd                                         ; $657c: $fd
	ld   [de], a                                     ; $657d: $12
	add  sp, -$1d                                    ; $657e: $e8 $e3
	and  b                                           ; $6580: $a0
	inc  hl                                          ; $6581: $23
	ld   b, e                                        ; $6582: $43
	inc  bc                                          ; $6583: $03
	ld   h, e                                        ; $6584: $63
	inc  bc                                          ; $6585: $03
	db   $e3                                         ; $6586: $e3
	inc  bc                                          ; $6587: $03
	and  e                                           ; $6588: $a3
	inc  bc                                          ; $6589: $03
	and  e                                           ; $658a: $a3
	inc  bc                                          ; $658b: $03
	ld   b, e                                        ; $658c: $43
	inc  bc                                          ; $658d: $03
	dec  d                                           ; $658e: $15
	push af                                          ; $658f: $f5
	inc  b                                           ; $6590: $04
	add  a                                           ; $6591: $87
	db   $e4                                         ; $6592: $e4
	add  b                                           ; $6593: $80
	and  h                                           ; $6594: $a4
	add  b                                           ; $6595: $80
	inc  b                                           ; $6596: $04
	sub  b                                           ; $6597: $90
	nop                                              ; $6598: $00
	add  b                                           ; $6599: $80
	rlca                                             ; $659a: $07
	add  b                                           ; $659b: $80
	ccf                                              ; $659c: $3f
	inc  b                                           ; $659d: $04
	ld   h, [hl]                                     ; $659e: $66
	nop                                              ; $659f: $00
	ld   h, b                                        ; $65a0: $60
	nop                                              ; $65a1: $00
	ld   b, $85                                      ; $65a2: $06 $85
	nop                                              ; $65a4: $00
	add  d                                           ; $65a5: $82
	rst  $38                                         ; $65a6: $ff
	nop                                              ; $65a7: $00
	ld   h, [hl]                                     ; $65a8: $66
	add  e                                           ; $65a9: $83
	nop                                              ; $65aa: $00
	nop                                              ; $65ab: $00
	ld   h, [hl]                                     ; $65ac: $66
	add  e                                           ; $65ad: $83
	nop                                              ; $65ae: $00
	add  d                                           ; $65af: $82
	add  b                                           ; $65b0: $80
	ld   bc, $0464                                   ; $65b1: $01 $64 $04
	add  b                                           ; $65b4: $80
	nop                                              ; $65b5: $00
	add  b                                           ; $65b6: $80
	inc  b                                           ; $65b7: $04
	nop                                              ; $65b8: $00
	ld   h, b                                        ; $65b9: $60
	add  c                                           ; $65ba: $81
	nop                                              ; $65bb: $00
	inc  bc                                          ; $65bc: $03
	ld   hl, $2520                                   ; $65bd: $21 $20 $25
	inc  h                                           ; $65c0: $24
	add  b                                           ; $65c1: $80
	jr   nz, jr_08d_65c4                             ; $65c2: $20 $00

jr_08d_65c4:
	inc  h                                           ; $65c4: $24
	add  l                                           ; $65c5: $85
	daa                                              ; $65c6: $27
	inc  bc                                          ; $65c7: $03
	inc  h                                           ; $65c8: $24
	daa                                              ; $65c9: $27
	add  b                                           ; $65ca: $80
	cp   a                                           ; $65cb: $bf
	add  c                                           ; $65cc: $81
	ccf                                              ; $65cd: $3f
	nop                                              ; $65ce: $00
	inc  bc                                          ; $65cf: $03
	add  b                                           ; $65d0: $80
	jp   z, $c880                                    ; $65d1: $ca $80 $c8

	ld   [bc], a                                     ; $65d4: $02
	set  1, b                                        ; $65d5: $cb $c8
	res  0, c                                        ; $65d7: $cb $81
	ret  z                                           ; $65d9: $c8

	nop                                              ; $65da: $00
	inc  bc                                          ; $65db: $03
	add  e                                           ; $65dc: $83
	rst  JumpTable                                         ; $65dd: $df
	add  b                                           ; $65de: $80
	sbc  a                                           ; $65df: $9f
	add  b                                           ; $65e0: $80
	rrca                                             ; $65e1: $0f
	inc  bc                                          ; $65e2: $03
	rst  $10                                         ; $65e3: $d7
	rla                                              ; $65e4: $17
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $65e5: $cf
	rrca                                             ; $65e6: $0f
	add  b                                           ; $65e7: $80
	rla                                              ; $65e8: $17
	ld   [$07da], sp                                 ; $65e9: $08 $da $07

jr_08d_65ec:
	nop                                              ; $65ec: $00
	rlca                                             ; $65ed: $07
	dec  c                                           ; $65ee: $0d
	rrca                                             ; $65ef: $0f
	ld   [$080f], sp                                 ; $65f0: $08 $0f $08
	add  e                                           ; $65f3: $83
	rrca                                             ; $65f4: $0f
	ld   [de], a                                     ; $65f5: $12
	ld   [$540f], sp                                 ; $65f6: $08 $0f $54
	db   $fc                                         ; $65f9: $fc
	add  b                                           ; $65fa: $80
	db   $fc                                         ; $65fb: $fc
	ret  nc                                          ; $65fc: $d0

	db   $fc                                         ; $65fd: $fc
	inc  b                                           ; $65fe: $04
	db   $fc                                         ; $65ff: $fc
	inc  b                                           ; $6600: $04
	db   $fc                                         ; $6601: $fc
	ld   hl, sp-$04                                  ; $6602: $f8 $fc
	ld   hl, sp-$04                                  ; $6604: $f8 $fc
	inc  b                                           ; $6606: $04
	db   $fc                                         ; $6607: $fc
	ld   a, a                                        ; $6608: $7f
	adc  c                                           ; $6609: $89
	ld   a, $0b                                      ; $660a: $3e $0b
	ccf                                              ; $660c: $3f
	nop                                              ; $660d: $00
	ld   h, d                                        ; $660e: $62
	nop                                              ; $660f: $00
	adc  h                                           ; $6610: $8c
	ld   hl, sp-$68                                  ; $6611: $f8 $98
	ld   hl, sp-$68                                  ; $6613: $f8 $98
	ld   hl, sp+$68                                  ; $6615: $f8 $68
	nop                                              ; $6617: $00
	add  c                                           ; $6618: $81
	ld   a, b                                        ; $6619: $78
	ld   b, $18                                      ; $661a: $06 $18
	ld   [rROMB0], sp                                 ; $661c: $08 $00 $20

jr_08d_661f:
	ld   b, b                                        ; $661f: $40
	add  [hl]                                        ; $6620: $86
	ldh  a, [c]                                      ; $6621: $f2
	add  d                                           ; $6622: $82

jr_08d_6623:
	ld   a, [$fe84]                                  ; $6623: $fa $84 $fe
	ld   bc, $7c00                                   ; $6626: $01 $00 $7c
	add  b                                           ; $6629: $80
	ld   a, [de]                                     ; $662a: $1a
	add  d                                           ; $662b: $82
	ld   h, c                                        ; $662c: $61
	add  b                                           ; $662d: $80
	sub  c                                           ; $662e: $91
	add  b                                           ; $662f: $80
	ld   bc, $8180                                   ; $6630: $01 $80 $81
	add  b                                           ; $6633: $80
	pop  af                                          ; $6634: $f1
	add  d                                           ; $6635: $82
	ldh  a, [rP1]                                    ; $6636: $f0 $00
	ld   [hl], h                                     ; $6638: $74
	add  a                                           ; $6639: $87
	adc  h                                           ; $663a: $8c
	add  b                                           ; $663b: $80
	db   $fd                                         ; $663c: $fd
	dec  c                                           ; $663d: $0d
	ld   bc, $35f9                                   ; $663e: $01 $f9 $35
	or   l                                           ; $6641: $b5
	pop  bc                                          ; $6642: $c1
	and  e                                           ; $6643: $a3
	and  d                                           ; $6644: $a2
	and  e                                           ; $6645: $a3
	and  [hl]                                        ; $6646: $a6
	ld   h, $65                                      ; $6647: $26 $65
	inc  bc                                          ; $6649: $03
	dec  b                                           ; $664a: $05
	inc  bc                                          ; $664b: $03
	add  b                                           ; $664c: $80
	ld   hl, $e301                                   ; $664d: $21 $01 $e3
	rst  $20                                         ; $6650: $e7
	add  b                                           ; $6651: $80
	db   $e3                                         ; $6652: $e3
	nop                                              ; $6653: $00
	inc  bc                                          ; $6654: $03
	add  b                                           ; $6655: $80
	add  h                                           ; $6656: $84
	add  b                                           ; $6657: $80
	call nc, $1406                                   ; $6658: $d4 $06 $14
	inc  [hl]                                        ; $665b: $34
	sub  h                                           ; $665c: $94
	dec  [hl]                                        ; $665d: $35
	ld   b, h                                        ; $665e: $44
	call nc, $8004                                   ; $665f: $d4 $04 $80
	inc  d                                           ; $6662: $14
	ld   [bc], a                                     ; $6663: $02
	ld   d, l                                        ; $6664: $55
	and  h                                           ; $6665: $a4
	ldh  [$80], a                                    ; $6666: $e0 $80
	rrca                                             ; $6668: $0f
	add  b                                           ; $6669: $80
	jr   nc, jr_08d_65ec                             ; $666a: $30 $80

	ld   b, b                                        ; $666c: $40
	add  b                                           ; $666d: $80
	add  b                                           ; $666e: $80
	nop                                              ; $666f: $00
	nop                                              ; $6670: $00
	add  b                                           ; $6671: $80
	ld   [bc], a                                     ; $6672: $02
	add  d                                           ; $6673: $82
	ld   b, $00                                      ; $6674: $06 $00
	nop                                              ; $6676: $00
	add  b                                           ; $6677: $80
	rst  $38                                         ; $6678: $ff
	add  e                                           ; $6679: $83
	nop                                              ; $667a: $00
	ld   bc, $08ff                                   ; $667b: $01 $ff $08
	add  d                                           ; $667e: $82
	nop                                              ; $667f: $00
	nop                                              ; $6680: $00
	rst  $30                                         ; $6681: $f7
	add  b                                           ; $6682: $80
	nop                                              ; $6683: $00
	add  b                                           ; $6684: $80
	rst  $38                                         ; $6685: $ff
	add  e                                           ; $6686: $83
	nop                                              ; $6687: $00
	ld   bc, $42ff                                   ; $6688: $01 $ff $42
	add  d                                           ; $668b: $82
	nop                                              ; $668c: $00
	nop                                              ; $668d: $00
	cp   l                                           ; $668e: $bd
	add  b                                           ; $668f: $80
	nop                                              ; $6690: $00
	add  b                                           ; $6691: $80
	rst  $38                                         ; $6692: $ff
	add  e                                           ; $6693: $83
	nop                                              ; $6694: $00
	nop                                              ; $6695: $00
	xor  $83                                         ; $6696: $ee $83
	ld   c, $01                                      ; $6698: $0e $01
	xor  $0e                                         ; $669a: $ee $0e
	add  d                                           ; $669c: $82
	jr   nz, jr_08d_661f                             ; $669d: $20 $80

	daa                                              ; $669f: $27
	add  d                                           ; $66a0: $82
	jr   nz, jr_08d_6623                             ; $66a1: $20 $80

	ld   hl, $2081                                   ; $66a3: $21 $81 $20
	ld   bc, $0a21                                   ; $66a6: $01 $21 $0a
	add  c                                           ; $66a9: $81
	ld   [$f880], sp                                 ; $66aa: $08 $80 $f8
	nop                                              ; $66ad: $00
	inc  bc                                          ; $66ae: $03
	add  c                                           ; $66af: $81
	nop                                              ; $66b0: $00
	add  b                                           ; $66b1: $80
	rst  $38                                         ; $66b2: $ff
	add  b                                           ; $66b3: $80
	rra                                              ; $66b4: $1f
	add  b                                           ; $66b5: $80
	ret  nz                                          ; $66b6: $c0

	ld   bc, $0fd0                                   ; $66b7: $01 $d0 $0f

jr_08d_66ba:
	add  b                                           ; $66ba: $80
	rla                                              ; $66bb: $17
	add  b                                           ; $66bc: $80
	rrca                                             ; $66bd: $0f
	nop                                              ; $66be: $00
	rst  JumpTable                                         ; $66bf: $df
	add  c                                           ; $66c0: $81
	nop                                              ; $66c1: $00
	add  b                                           ; $66c2: $80
	rst  $38                                         ; $66c3: $ff
	dec  bc                                          ; $66c4: $0b
	ld   a, [$20f0]                                  ; $66c5: $fa $f0 $20
	nop                                              ; $66c8: $00
	jr   z, jr_08d_66d2                              ; $66c9: $28 $07

	nop                                              ; $66cb: $00
	rlca                                             ; $66cc: $07
	inc  b                                           ; $66cd: $04
	rlca                                             ; $66ce: $07
	ld   bc, $8400                                   ; $66cf: $01 $00 $84

jr_08d_66d2:
	rlca                                             ; $66d2: $07
	add  b                                           ; $66d3: $80

jr_08d_66d4:
	nop                                              ; $66d4: $00
	rlca                                             ; $66d5: $07
	jr   z, jr_08d_66d4                              ; $66d6: $28 $fc

	add  b                                           ; $66d8: $80
	db   $fc                                         ; $66d9: $fc
	inc  d                                           ; $66da: $14
	db   $fc                                         ; $66db: $fc
	ld   b, b                                        ; $66dc: $40
	nop                                              ; $66dd: $00
	add  h                                           ; $66de: $84
	db   $fc                                         ; $66df: $fc
	add  b                                           ; $66e0: $80
	nop                                              ; $66e1: $00
	inc  bc                                          ; $66e2: $03
	ld   d, h                                        ; $66e3: $54
	ld   a, [hl]                                     ; $66e4: $7e
	ld   b, b                                        ; $66e5: $40
	ld   l, d                                        ; $66e6: $6a
	add  h                                           ; $66e7: $84
	nop                                              ; $66e8: $00
	ld   b, $45                                      ; $66e9: $06 $45
	ld   d, b                                        ; $66eb: $50
	ld   d, l                                        ; $66ec: $55
	ld   d, b                                        ; $66ed: $50
	ld   d, l                                        ; $66ee: $55
	ld   d, b                                        ; $66ef: $50
	ld   l, h                                        ; $66f0: $6c
	add  b                                           ; $66f1: $80
	ld   b, c                                        ; $66f2: $41
	nop                                              ; $66f3: $00
	ld   a, c                                        ; $66f4: $79
	add  b                                           ; $66f5: $80
	ld   h, b                                        ; $66f6: $60
	add  b                                           ; $66f7: $80
	nop                                              ; $66f8: $00
	nop                                              ; $66f9: $00
	db   $10                                         ; $66fa: $10
	add  b                                           ; $66fb: $80
	ld   c, $83                                      ; $66fc: $0e $83
	adc  [hl]                                        ; $66fe: $8e
	inc  b                                           ; $66ff: $04
	sbc  [hl]                                        ; $6700: $9e
	ld   e, d                                        ; $6701: $5a
	ld   [$085a], sp                                 ; $6702: $08 $5a $08
	add  e                                           ; $6705: $83
	nop                                              ; $6706: $00
	ld   b, $8a                                      ; $6707: $06 $8a
	and  c                                           ; $6709: $a1
	xor  e                                           ; $670a: $ab
	and  c                                           ; $670b: $a1
	xor  e                                           ; $670c: $ab
	and  c                                           ; $670d: $a1
	reti                                             ; $670e: $d9


	add  c                                           ; $670f: $81
	ldh  a, [c]                                      ; $6710: $f2
	add  b                                           ; $6711: $80
	pop  bc                                          ; $6712: $c1
	add  b                                           ; $6713: $80
	nop                                              ; $6714: $00
	ld   bc, $1c20                                   ; $6715: $01 $20 $1c
	add  h                                           ; $6718: $84
	dec  e                                           ; $6719: $1d
	nop                                              ; $671a: $00
	dec  a                                           ; $671b: $3d
	add  c                                           ; $671c: $81
	or   l                                           ; $671d: $b5
	ld   bc, $ff4b                                   ; $671e: $01 $4b $ff
	add  d                                           ; $6721: $82
	nop                                              ; $6722: $00
	rlca                                             ; $6723: $07
	inc  d                                           ; $6724: $14
	ld   b, d                                        ; $6725: $42
	ld   d, [hl]                                     ; $6726: $56
	ld   b, d                                        ; $6727: $42
	ld   d, [hl]                                     ; $6728: $56
	ld   b, d                                        ; $6729: $42
	or   [hl]                                        ; $672a: $b6
	ldh  [$80], a                                    ; $672b: $e0 $80
	ldh  [c], a                                      ; $672d: $e2
	add  b                                           ; $672e: $80
	ret  nz                                          ; $672f: $c0

	add  b                                           ; $6730: $80
	nop                                              ; $6731: $00
	nop                                              ; $6732: $00
	jr   nz, jr_08d_66ba                             ; $6733: $20 $85

	inc  e                                           ; $6735: $1c
	dec  b                                           ; $6736: $05
	jr   z, @-$3a                                    ; $6737: $28 $c4

	call nc, Call_08d_44c4                           ; $6739: $d4 $c4 $44
	ld   h, h                                        ; $673c: $64
	add  b                                           ; $673d: $80
	and  h                                           ; $673e: $a4
	nop                                              ; $673f: $00
	db   $e4                                         ; $6740: $e4
	add  b                                           ; $6741: $80
	add  h                                           ; $6742: $84
	add  d                                           ; $6743: $82
	inc  b                                           ; $6744: $04
	inc  bc                                          ; $6745: $03
	inc  d                                           ; $6746: $14
	ld   e, $0f                                      ; $6747: $1e $0f
	rra                                              ; $6749: $1f
	add  e                                           ; $674a: $83
	nop                                              ; $674b: $00
	nop                                              ; $674c: $00
	ld   e, $80                                      ; $674d: $1e $80
	nop                                              ; $674f: $00
	ld   bc, $1f21                                   ; $6750: $01 $21 $1f
	add  c                                           ; $6753: $81
	jr   nz, jr_08d_6758                             ; $6754: $20 $02

	ld   e, $08                                      ; $6756: $1e $08

jr_08d_6758:
	rst  $38                                         ; $6758: $ff
	add  e                                           ; $6759: $83
	nop                                              ; $675a: $00
	nop                                              ; $675b: $00
	rst  $30                                         ; $675c: $f7
	add  b                                           ; $675d: $80
	nop                                              ; $675e: $00
	rlca                                             ; $675f: $07
	ld   [$00ff], sp                                 ; $6760: $08 $ff $00
	rla                                              ; $6763: $17
	nop                                              ; $6764: $00
	ldh  [rSCY], a                                   ; $6765: $e0 $42
	rst  $38                                         ; $6767: $ff
	add  e                                           ; $6768: $83
	nop                                              ; $6769: $00
	nop                                              ; $676a: $00
	cp   l                                           ; $676b: $bd
	add  b                                           ; $676c: $80
	nop                                              ; $676d: $00
	rlca                                             ; $676e: $07
	ld   b, d                                        ; $676f: $42
	rst  $38                                         ; $6770: $ff
	nop                                              ; $6771: $00
	cp   h                                           ; $6772: $bc

jr_08d_6773:
	nop                                              ; $6773: $00
	rrca                                             ; $6774: $0f
	rra                                              ; $6775: $1f
	rst  $38                                         ; $6776: $ff
	add  e                                           ; $6777: $83
	ld   c, $00                                      ; $6778: $0e $00
	xor  $80                                         ; $677a: $ee $80
	ld   c, $01                                      ; $677c: $0e $01
	rra                                              ; $677e: $1f
	rst  $38                                         ; $677f: $ff
	add  c                                           ; $6780: $81
	ld   c, $00                                      ; $6781: $0e $00
	ret  nz                                          ; $6783: $c0

	add  b                                           ; $6784: $80
	inc  h                                           ; $6785: $24
	add  b                                           ; $6786: $80
	jr   nz, @+$04                                   ; $6787: $20 $02

	ld   hl, $2322                                   ; $6789: $21 $22 $23
	add  b                                           ; $678c: $80
	ld   [hl+], a                                    ; $678d: $22
	add  b                                           ; $678e: $80
	inc  hl                                          ; $678f: $23
	nop                                              ; $6790: $00
	ld   [hl+], a                                    ; $6791: $22
	add  c                                           ; $6792: $81
	inc  hl                                          ; $6793: $23
	dec  b                                           ; $6794: $05
	dec  c                                           ; $6795: $0d
	inc  e                                           ; $6796: $1c
	inc  de                                          ; $6797: $13
	inc  bc                                          ; $6798: $03
	ret  nz                                          ; $6799: $c0

	inc  bc                                          ; $679a: $03
	add  b                                           ; $679b: $80

jr_08d_679c:
	rst  JumpTable                                         ; $679c: $df
	jr   jr_08d_6773                                 ; $679d: $18 $d4

	inc  e                                           ; $679f: $1c
	rst  $38                                         ; $67a0: $ff
	db   $fc                                         ; $67a1: $fc
	inc  a                                           ; $67a2: $3c
	call $eced                                       ; $67a3: $cd $ed $ec
	sub  [hl]                                        ; $67a6: $96
	ld   b, h                                        ; $67a7: $44
	xor  d                                           ; $67a8: $aa
	add  b                                           ; $67a9: $80
	ld   a, a                                        ; $67aa: $7f
	rst  $38                                         ; $67ab: $ff
	add  b                                           ; $67ac: $80
	rst  $38                                         ; $67ad: $ff
	ld   c, $00                                      ; $67ae: $0e $00
	db   $fd                                         ; $67b0: $fd
	ld   [bc], a                                     ; $67b1: $02
	add  a                                           ; $67b2: $87
	ld   h, a                                        ; $67b3: $67
	rst  $20                                         ; $67b4: $e7
	rlca                                             ; $67b5: $07
	add  hl, bc                                      ; $67b6: $09
	add  e                                           ; $67b7: $83
	rlca                                             ; $67b8: $07
	add  b                                           ; $67b9: $80
	ld   bc, $0507                                   ; $67ba: $01 $07 $05
	rlca                                             ; $67bd: $07
	nop                                              ; $67be: $00
	rlca                                             ; $67bf: $07
	dec  c                                           ; $67c0: $0d
	rrca                                             ; $67c1: $0f
	ld   [$840f], sp                                 ; $67c2: $08 $0f $84
	db   $fc                                         ; $67c5: $fc
	add  b                                           ; $67c6: $80
	ld   b, b                                        ; $67c7: $40
	ld   [$fc54], sp                                 ; $67c8: $08 $54 $fc
	add  b                                           ; $67cb: $80
	db   $fc                                         ; $67cc: $fc
	ret  nc                                          ; $67cd: $d0

	db   $fc                                         ; $67ce: $fc
	inc  b                                           ; $67cf: $04
	db   $fc                                         ; $67d0: $fc
	nop                                              ; $67d1: $00
	add  b                                           ; $67d2: $80
	db   $10                                         ; $67d3: $10
	add  b                                           ; $67d4: $80
	rra                                              ; $67d5: $1f
	add  b                                           ; $67d6: $80
	nop                                              ; $67d7: $00
	ld   bc, $001f                                   ; $67d8: $01 $1f $00
	add  c                                           ; $67db: $81
	rra                                              ; $67dc: $1f
	add  d                                           ; $67dd: $82
	nop                                              ; $67de: $00
	nop                                              ; $67df: $00
	db   $10                                         ; $67e0: $10
	add  d                                           ; $67e1: $82
	adc  [hl]                                        ; $67e2: $8e
	inc  bc                                          ; $67e3: $03
	ld   c, $00                                      ; $67e4: $0e $00
	add  b                                           ; $67e6: $80
	ld   c, $81                                      ; $67e7: $0e $81
	adc  [hl]                                        ; $67e9: $8e
	nop                                              ; $67ea: $00
	ld   e, $81                                      ; $67eb: $1e $81
	nop                                              ; $67ed: $00
	nop                                              ; $67ee: $00
	add  b                                           ; $67ef: $80
	add  b                                           ; $67f0: $80
	and  c                                           ; $67f1: $a1
	add  b                                           ; $67f2: $80
	cp   a                                           ; $67f3: $bf
	add  b                                           ; $67f4: $80
	add  b                                           ; $67f5: $80
	ld   bc, $80bf                                   ; $67f6: $01 $bf $80
	add  c                                           ; $67f9: $81
	cp   a                                           ; $67fa: $bf
	add  d                                           ; $67fb: $82
	nop                                              ; $67fc: $00
	nop                                              ; $67fd: $00
	ld   hl, $1d83                                   ; $67fe: $21 $83 $1d
	add  b                                           ; $6801: $80
	ld   bc, $1d82                                   ; $6802: $01 $82 $1d
	nop                                              ; $6805: $00
	inc  a                                           ; $6806: $3c
	add  d                                           ; $6807: $82
	nop                                              ; $6808: $00
	add  b                                           ; $6809: $80
	ld   b, d                                        ; $680a: $42
	add  b                                           ; $680b: $80
	ld   a, [hl]                                     ; $680c: $7e
	add  b                                           ; $680d: $80
	nop                                              ; $680e: $00
	ld   bc, $007f                                   ; $680f: $01 $7f $00
	add  c                                           ; $6812: $81
	ld   a, a                                        ; $6813: $7f
	add  d                                           ; $6814: $82
	nop                                              ; $6815: $00
	nop                                              ; $6816: $00
	jr   nz, jr_08d_679c                             ; $6817: $20 $83

	inc  e                                           ; $6819: $1c
	add  b                                           ; $681a: $80
	nop                                              ; $681b: $00
	add  d                                           ; $681c: $82
	inc  e                                           ; $681d: $1c
	nop                                              ; $681e: $00
	inc  a                                           ; $681f: $3c
	add  d                                           ; $6820: $82
	nop                                              ; $6821: $00
	add  d                                           ; $6822: $82
	ld   [hl], b                                     ; $6823: $70
	add  c                                           ; $6824: $81
	ld   h, b                                        ; $6825: $60
	add  l                                           ; $6826: $85
	ld   a, a                                        ; $6827: $7f
	rlca                                             ; $6828: $07
	sbc  a                                           ; $6829: $9f
	cp   [hl]                                        ; $682a: $be
	jr   nz, jr_08d_686b                             ; $682b: $20 $3e

	jr   nz, jr_08d_682f                             ; $682d: $20 $00

jr_08d_682f:
	ld   hl, $811f                                   ; $682f: $21 $1f $81
	jr   nz, jr_08d_6839                             ; $6832: $20 $05

	ld   [hl+], a                                    ; $6834: $22
	jr   nz, @+$1e                                   ; $6835: $20 $1c

	inc  bc                                          ; $6837: $03
	ld   [bc], a                                     ; $6838: $02

jr_08d_6839:
	ld   bc, $8080                                   ; $6839: $01 $80 $80
	inc  b                                           ; $683c: $04
	dec  de                                          ; $683d: $1b
	dec  b                                           ; $683e: $05
	ld   a, c                                        ; $683f: $79
	ld   de, $80f6                                   ; $6840: $11 $f6 $80
	ld   c, a                                        ; $6843: $4f
	ld   b, $00                                      ; $6844: $06 $00
	add  b                                           ; $6846: $80
	nop                                              ; $6847: $00
	cp   a                                           ; $6848: $bf
	ld   h, b                                        ; $6849: $60
	jr   nz, @+$01                                   ; $684a: $20 $ff

	add  b                                           ; $684c: $80
	nop                                              ; $684d: $00
	inc  b                                           ; $684e: $04
	db   $ec                                         ; $684f: $ec
	ld   d, b                                        ; $6850: $50
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6851: $cf
	call nz, $80b7                                   ; $6852: $c4 $b7 $80
	ld   sp, hl                                      ; $6855: $f9
	add  c                                           ; $6856: $81
	nop                                              ; $6857: $00
	ld   b, $fb                                      ; $6858: $06 $fb
	ld   b, $82                                      ; $685a: $06 $82
	ld   a, a                                        ; $685c: $7f
	xor  $0e                                         ; $685d: $ee $0e
	xor  $80                                         ; $685f: $ee $80
	ld   c, $07                                      ; $6861: $0e $07
	rra                                              ; $6863: $1f
	ld   e, $8e                                      ; $6864: $1e $8e
	xor  a                                           ; $6866: $af
	adc  [hl]                                        ; $6867: $8e
	xor  [hl]                                        ; $6868: $ae
	ld   c, $00                                      ; $6869: $0e $00

jr_08d_686b:
	add  b                                           ; $686b: $80
	ret  nz                                          ; $686c: $c0

	ld   bc, $2200                                   ; $686d: $01 $00 $22
	add  e                                           ; $6870: $83
	inc  hl                                          ; $6871: $23
	ld   bc, $2322                                   ; $6872: $01 $22 $23
	add  b                                           ; $6875: $80
	ld   hl, $2580                                   ; $6876: $21 $80 $25
	inc  b                                           ; $6879: $04
	db   $e4                                         ; $687a: $e4
	push hl                                          ; $687b: $e5
	ld   bc, $1400                                   ; $687c: $01 $00 $14
	add  b                                           ; $687f: $80
	db   $ed                                         ; $6880: $ed
	add  b                                           ; $6881: $80
	db   $ec                                         ; $6882: $ec
	ld   [bc], a                                     ; $6883: $02
	db   $ed                                         ; $6884: $ed
	ld   bc, $80f8                                   ; $6885: $01 $f8 $80
	jr   nc, jr_08d_6897                             ; $6888: $30 $0d

	ld   h, l                                        ; $688a: $65
	ld   l, l                                        ; $688b: $6d
	ld   c, l                                        ; $688c: $4d
	ld   l, l                                        ; $688d: $6d
	jr   z, jr_08d_6890                              ; $688e: $28 $00

jr_08d_6890:
	adc  c                                           ; $6890: $89
	ld   h, a                                        ; $6891: $67
	rst  $20                                         ; $6892: $e7
	rlca                                             ; $6893: $07
	add  l                                           ; $6894: $85
	ld   h, a                                        ; $6895: $67
	ldh  [c], a                                      ; $6896: $e2

jr_08d_6897:
	ld   c, $80                                      ; $6897: $0e $80
	nop                                              ; $6899: $00
	add  b                                           ; $689a: $80
	and  $80                                         ; $689b: $e6 $80
	rst  $38                                         ; $689d: $ff
	add  b                                           ; $689e: $80
	nop                                              ; $689f: $00
	nop                                              ; $68a0: $00
	ld   [$0f83], sp                                 ; $68a1: $08 $83 $0f
	ld   [hl], $08                                   ; $68a4: $36 $08
	rrca                                             ; $68a6: $0f
	ld   [bc], a                                     ; $68a7: $02
	rlca                                             ; $68a8: $07
	nop                                              ; $68a9: $00
	rlca                                             ; $68aa: $07
	inc  b                                           ; $68ab: $04
	rlca                                             ; $68ac: $07
	ld   bc, $0400                                   ; $68ad: $01 $00 $04
	db   $fc                                         ; $68b0: $fc
	ld   hl, sp-$04                                  ; $68b1: $f8 $fc
	ld   hl, sp-$04                                  ; $68b3: $f8 $fc

jr_08d_68b5:
	inc  b                                           ; $68b5: $04
	db   $fc                                         ; $68b6: $fc
	jr   z, jr_08d_68b5                              ; $68b7: $28 $fc

	add  b                                           ; $68b9: $80
	db   $fc                                         ; $68ba: $fc
	inc  d                                           ; $68bb: $14
	db   $fc                                         ; $68bc: $fc
	ld   b, b                                        ; $68bd: $40
	nop                                              ; $68be: $00
	ld   e, d                                        ; $68bf: $5a
	ld   e, a                                        ; $68c0: $5f
	ld   e, d                                        ; $68c1: $5a
	ld   e, [hl]                                     ; $68c2: $5e
	ld   e, a                                        ; $68c3: $5f
	ld   e, c                                        ; $68c4: $59
	ld   e, d                                        ; $68c5: $5a
	ld   e, [hl]                                     ; $68c6: $5e
	ld   c, e                                        ; $68c7: $4b
	ld   b, a                                        ; $68c8: $47
	ld   b, l                                        ; $68c9: $45
	ld   c, c                                        ; $68ca: $49
	ld   b, d                                        ; $68cb: $42
	ld   d, d                                        ; $68cc: $52
	inc  de                                          ; $68cd: $13
	nop                                              ; $68ce: $00
	ret  c                                           ; $68cf: $d8

	ld   a, b                                        ; $68d0: $78
	adc  a                                           ; $68d1: $8f
	rst  JumpTable                                         ; $68d2: $df
	cp   l                                           ; $68d3: $bd
	sub  l                                           ; $68d4: $95
	ld   e, l                                        ; $68d5: $5d
	dec  e                                           ; $68d6: $1d
	sub  c                                           ; $68d7: $91
	db   $ed                                         ; $68d8: $ed
	push af                                          ; $68d9: $f5
	ld   h, c                                        ; $68da: $61
	ld   [hl], b                                     ; $68db: $70
	add  b                                           ; $68dc: $80
	inc  b                                           ; $68dd: $04
	add  c                                           ; $68de: $81
	nop                                              ; $68df: $00
	add  b                                           ; $68e0: $80
	db   $fd                                         ; $68e1: $fd
	add  b                                           ; $68e2: $80
	dec  b                                           ; $68e3: $05
	rlca                                             ; $68e4: $07
	ld   d, l                                        ; $68e5: $55
	dec  b                                           ; $68e6: $05
	ld   d, h                                        ; $68e7: $54
	inc  b                                           ; $68e8: $04
	ld   d, h                                        ; $68e9: $54
	inc  b                                           ; $68ea: $04
	ld   d, c                                        ; $68eb: $51
	ld   bc, $0080                                   ; $68ec: $01 $80 $00
	ld   c, $dd                                      ; $68ef: $0e $dd
	db   $f4                                         ; $68f1: $f4
	jp   c, $cfec                                    ; $68f2: $da $ec $cf

	push af                                          ; $68f5: $f5
	db   $ed                                         ; $68f6: $ed
	or   $2e                                         ; $68f7: $f6 $2e
	ld   b, [hl]                                     ; $68f9: $46
	inc  d                                           ; $68fa: $14
	inc  e                                           ; $68fb: $1c
	ld   d, [hl]                                     ; $68fc: $56
	add  c                                           ; $68fd: $81
	adc  c                                           ; $68fe: $89
	add  c                                           ; $68ff: $81
	nop                                              ; $6900: $00
	ld   bc, $fd7d                                   ; $6901: $01 $7d $fd
	add  b                                           ; $6904: $80
	dec  b                                           ; $6905: $05
	rlca                                             ; $6906: $07
	push de                                          ; $6907: $d5
	add  l                                           ; $6908: $85
	call nc, $9404                                   ; $6909: $d4 $04 $94
	ld   b, h                                        ; $690c: $44
	pop  de                                          ; $690d: $d1
	ld   bc, $0080                                   ; $690e: $01 $80 $00
	nop                                              ; $6911: $00
	sbc  h                                           ; $6912: $9c
	add  l                                           ; $6913: $85
	cp   h                                           ; $6914: $bc
	add  d                                           ; $6915: $82
	inc  a                                           ; $6916: $3c
	add  b                                           ; $6917: $80
	cp   h                                           ; $6918: $bc
	dec  b                                           ; $6919: $05
	jr   nz, jr_08d_691c                             ; $691a: $20 $00

jr_08d_691c:
	rra                                              ; $691c: $1f
	sbc  a                                           ; $691d: $9f
	rra                                              ; $691e: $1f
	ld   e, a                                        ; $691f: $5f
	add  b                                           ; $6920: $80
	sbc  a                                           ; $6921: $9f
	add  c                                           ; $6922: $81
	rst  JumpTable                                         ; $6923: $df
	add  d                                           ; $6924: $82
	sbc  a                                           ; $6925: $9f
	add  c                                           ; $6926: $81
	rra                                              ; $6927: $1f
	ld   [$0100], sp                                 ; $6928: $08 $00 $01
	ld   h, $3d                                      ; $692b: $26 $3d
	inc  a                                           ; $692d: $3c
	dec  l                                           ; $692e: $2d
	dec  c                                           ; $692f: $0d
	dec  b                                           ; $6930: $05
	dec  a                                           ; $6931: $3d
	add  c                                           ; $6932: $81
	dec  b                                           ; $6933: $05
	ld   bc, $2d0d                                   ; $6934: $01 $0d $2d
	add  b                                           ; $6937: $80
	dec  a                                           ; $6938: $3d
	dec  b                                           ; $6939: $05
	ld   e, e                                        ; $693a: $5b
	rst  $38                                         ; $693b: $ff
	ccf                                              ; $693c: $3f
	add  b                                           ; $693d: $80
	ld   hl, $84a1                                   ; $693e: $21 $a1 $84
	xor  a                                           ; $6941: $af
	add  b                                           ; $6942: $80
	cp   a                                           ; $6943: $bf
	ld   [bc], a                                     ; $6944: $02
	and  c                                           ; $6945: $a1
	and  b                                           ; $6946: $a0
	add  b                                           ; $6947: $80
	add  b                                           ; $6948: $80
	rst  $38                                         ; $6949: $ff
	nop                                              ; $694a: $00
	nop                                              ; $694b: $00
	add  b                                           ; $694c: $80
	ld   b, d                                        ; $694d: $42
	add  h                                           ; $694e: $84
	ld   e, [hl]                                     ; $694f: $5e
	add  b                                           ; $6950: $80
	ld   a, [hl]                                     ; $6951: $7e
	ld   b, $42                                      ; $6952: $06 $42
	ld   [bc], a                                     ; $6954: $02
	ld   b, c                                        ; $6955: $41
	ret  nz                                          ; $6956: $c0

	db   $10                                         ; $6957: $10
	rst  JumpTable                                         ; $6958: $df
	rra                                              ; $6959: $1f
	add  b                                           ; $695a: $80
	db   $db                                         ; $695b: $db
	ld   bc, $dfd1                                   ; $695c: $01 $d1 $df
	add  c                                           ; $695f: $81
	pop  de                                          ; $6960: $d1
	add  b                                           ; $6961: $80
	db   $db                                         ; $6962: $db
	add  b                                           ; $6963: $80
	rst  JumpTable                                         ; $6964: $df
	inc  b                                           ; $6965: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6966: $cf
	nop                                              ; $6967: $00
	ccf                                              ; $6968: $3f
	add  hl, sp                                      ; $6969: $39
	add  hl, bc                                      ; $696a: $09
	add  b                                           ; $696b: $80
	nop                                              ; $696c: $00
	add  d                                           ; $696d: $82
	inc  b                                           ; $696e: $04
	add  hl, bc                                      ; $696f: $09
	ld   b, $16                                      ; $6970: $06 $16
	ld   [bc], a                                     ; $6972: $02
	ccf                                              ; $6973: $3f
	ld   bc, $0023                                   ; $6974: $01 $23 $00
	ld   a, a                                        ; $6977: $7f
	add  b                                           ; $6978: $80
	ld   a, a                                        ; $6979: $7f
	add  c                                           ; $697a: $81
	rst  $38                                         ; $697b: $ff
	ld   [bc], a                                     ; $697c: $02
	ccf                                              ; $697d: $3f
	rst  $38                                         ; $697e: $ff
	add  b                                           ; $697f: $80
	add  c                                           ; $6980: $81
	cp   a                                           ; $6981: $bf
	ld   bc, $8000                                   ; $6982: $01 $00 $80
	add  b                                           ; $6985: $80
	nop                                              ; $6986: $00
	inc  b                                           ; $6987: $04
	ei                                               ; $6988: $fb
	nop                                              ; $6989: $00
	ei                                               ; $698a: $fb
	pop  af                                          ; $698b: $f1
	xor  $81                                         ; $698c: $ee $81
	ldh  [rP1], a                                    ; $698e: $e0 $00
	nop                                              ; $6990: $00
	add  b                                           ; $6991: $80
	pop  af                                          ; $6992: $f1
	nop                                              ; $6993: $00
	rst  $38                                         ; $6994: $ff
	add  b                                           ; $6995: $80
	nop                                              ; $6996: $00
	add  b                                           ; $6997: $80
	rlca                                             ; $6998: $07
	ld   bc, $07c7                                   ; $6999: $01 $c7 $07

jr_08d_699c:
	add  b                                           ; $699c: $80
	add  a                                           ; $699d: $87
	add  b                                           ; $699e: $80
	add  b                                           ; $699f: $80
	add  b                                           ; $69a0: $80
	add  a                                           ; $69a1: $87
	nop                                              ; $69a2: $00
	rlca                                             ; $69a3: $07
	add  c                                           ; $69a4: $81
	rst  ToBoot                                         ; $69a5: $c7
	add  b                                           ; $69a6: $80
	nop                                              ; $69a7: $00
	add  b                                           ; $69a8: $80
	db   $fc                                         ; $69a9: $fc
	ld   bc, $fcff                                   ; $69aa: $01 $ff $fc
	add  b                                           ; $69ad: $80
	db   $fd                                         ; $69ae: $fd
	add  b                                           ; $69af: $80
	ld   bc, $fd80                                   ; $69b0: $01 $80 $fd
	nop                                              ; $69b3: $00
	cp   $81                                         ; $69b4: $fe $81
	db   $fd                                         ; $69b6: $fd
	add  d                                           ; $69b7: $82
	nop                                              ; $69b8: $00
	inc  b                                           ; $69b9: $04
	sbc  $00                                         ; $69ba: $de $00
	sbc  $8e                                         ; $69bc: $de $8e
	halt                                             ; $69be: $76
	add  c                                           ; $69bf: $81
	ld   b, $00                                      ; $69c0: $06 $00
	nop                                              ; $69c2: $00
	add  b                                           ; $69c3: $80
	adc  [hl]                                        ; $69c4: $8e
	nop                                              ; $69c5: $00
	cp   $82                                         ; $69c6: $fe $82
	nop                                              ; $69c8: $00
	add  b                                           ; $69c9: $80
	ld   a, a                                        ; $69ca: $7f
	add  d                                           ; $69cb: $82
	nop                                              ; $69cc: $00
	add  b                                           ; $69cd: $80
	ld   [bc], a                                     ; $69ce: $02
	add  b                                           ; $69cf: $80
	ld   b, $80                                      ; $69d0: $06 $80
	ld   c, $80                                      ; $69d2: $0e $80
	ld   e, $04                                      ; $69d4: $1e $04
	nop                                              ; $69d6: $00
	ld   hl, sp-$7e                                  ; $69d7: $f8 $82
	ei                                               ; $69d9: $fb
	ld   hl, sp-$7d                                  ; $69da: $f8 $83
	ld   sp, hl                                      ; $69dc: $f9
	nop                                              ; $69dd: $00
	nop                                              ; $69de: $00
	add  b                                           ; $69df: $80
	ld   a, c                                        ; $69e0: $79
	add  b                                           ; $69e1: $80
	ld   h, c                                        ; $69e2: $61
	dec  b                                           ; $69e3: $05
	ld   b, b                                        ; $69e4: $40
	ret  nz                                          ; $69e5: $c0

	nop                                              ; $69e6: $00
	ld   bc, $01ff                                   ; $69e7: $01 $ff $01
	add  e                                           ; $69ea: $83
	rst  $38                                         ; $69eb: $ff
	nop                                              ; $69ec: $00
	ld   bc, $ff83                                   ; $69ed: $01 $83 $ff
	inc  bc                                          ; $69f0: $03
	cp   $7c                                         ; $69f1: $fe $7c
	ld   b, c                                        ; $69f3: $41
	ld   a, l                                        ; $69f4: $7d
	add  h                                           ; $69f5: $84
	ld   a, h                                        ; $69f6: $7c
	nop                                              ; $69f7: $00
	nop                                              ; $69f8: $00
	add  e                                           ; $69f9: $83
	inc  a                                           ; $69fa: $3c
	ld   bc, $007c                                   ; $69fb: $01 $7c $00
	add  b                                           ; $69fe: $80
	rst  $38                                         ; $69ff: $ff
	add  b                                           ; $6a00: $80
	add  b                                           ; $6a01: $80
	add  b                                           ; $6a02: $80
	ldh  [$80], a                                    ; $6a03: $e0 $80
	ld   hl, sp+$07                                  ; $6a05: $f8 $07
	inc  a                                           ; $6a07: $3c
	db   $fc                                         ; $6a08: $fc
	adc  $1e                                         ; $6a09: $ce $1e
	rla                                              ; $6a0b: $17
	rrca                                             ; $6a0c: $0f
	nop                                              ; $6a0d: $00
	add  hl, de                                      ; $6a0e: $19
	add  b                                           ; $6a0f: $80
	reti                                             ; $6a10: $d9


	add  c                                           ; $6a11: $81
	add  hl, de                                      ; $6a12: $19
	ld   [bc], a                                     ; $6a13: $02
	jr   jr_08d_6a2f                                 ; $6a14: $18 $19

	jr   jr_08d_699c                                 ; $6a16: $18 $84

	add  hl, de                                      ; $6a18: $19
	nop                                              ; $6a19: $00
	scf                                              ; $6a1a: $37
	add  a                                           ; $6a1b: $87
	dec  a                                           ; $6a1c: $3d
	rlca                                             ; $6a1d: $07
	inc  a                                           ; $6a1e: $3c
	ccf                                              ; $6a1f: $3f
	ld   a, $3d                                      ; $6a20: $3e $3d
	ld   a, $3f                                      ; $6a22: $3e $3f
	inc  [hl]                                        ; $6a24: $34
	xor  a                                           ; $6a25: $af
	add  c                                           ; $6a26: $81
	xor  [hl]                                        ; $6a27: $ae
	nop                                              ; $6a28: $00
	xor  a                                           ; $6a29: $af
	add  b                                           ; $6a2a: $80
	cp   a                                           ; $6a2b: $bf
	add  b                                           ; $6a2c: $80
	and  c                                           ; $6a2d: $a1
	rlca                                             ; $6a2e: $07

jr_08d_6a2f:
	cpl                                              ; $6a2f: $2f
	xor  a                                           ; $6a30: $af
	cpl                                              ; $6a31: $2f
	xor  a                                           ; $6a32: $af
	cpl                                              ; $6a33: $2f
	xor  a                                           ; $6a34: $af
	rra                                              ; $6a35: $1f
	ld   e, [hl]                                     ; $6a36: $5e
	add  c                                           ; $6a37: $81
	ld   e, $00                                      ; $6a38: $1e $00
	ld   e, [hl]                                     ; $6a3a: $5e
	add  b                                           ; $6a3b: $80
	ld   a, [hl]                                     ; $6a3c: $7e
	add  b                                           ; $6a3d: $80
	ld   b, d                                        ; $6a3e: $42
	nop                                              ; $6a3f: $00
	ld   e, [hl]                                     ; $6a40: $5e
	add  b                                           ; $6a41: $80
	ld   e, a                                        ; $6a42: $5f
	nop                                              ; $6a43: $00
	ld   e, [hl]                                     ; $6a44: $5e
	add  b                                           ; $6a45: $80
	ld   e, a                                        ; $6a46: $5f
	nop                                              ; $6a47: $00
	ld   de, $df87                                   ; $6a48: $11 $87 $df
	inc  c                                           ; $6a4b: $0c
	rra                                              ; $6a4c: $1f
	rst  JumpTable                                         ; $6a4d: $df
	rra                                              ; $6a4e: $1f
	rst  JumpTable                                         ; $6a4f: $df
	rra                                              ; $6a50: $1f
	rst  JumpTable                                         ; $6a51: $df
	cpl                                              ; $6a52: $2f
	nop                                              ; $6a53: $00
	inc  b                                           ; $6a54: $04
	jr   nz, jr_08d_6a7b                             ; $6a55: $20 $24

	jr   nz, @+$41                                   ; $6a57: $20 $3f

	add  b                                           ; $6a59: $80
	nop                                              ; $6a5a: $00
	add  e                                           ; $6a5b: $83
	ccf                                              ; $6a5c: $3f
	add  c                                           ; $6a5d: $81
	nop                                              ; $6a5e: $00
	inc  bc                                          ; $6a5f: $03
	add  b                                           ; $6a60: $80
	add  [hl]                                        ; $6a61: $86
	add  c                                           ; $6a62: $81
	adc  a                                           ; $6a63: $8f
	add  c                                           ; $6a64: $81
	add  c                                           ; $6a65: $81
	ld   [$1199], sp                                 ; $6a66: $08 $99 $11
	rra                                              ; $6a69: $1f
	stop                                             ; $6a6a: $10 $00
	rlca                                             ; $6a6c: $07
	ld   b, $09                                      ; $6a6d: $06 $09
	ld   b, $80                                      ; $6a6f: $06 $80
	nop                                              ; $6a71: $00
	add  b                                           ; $6a72: $80
	add  b                                           ; $6a73: $80
	inc  b                                           ; $6a74: $04
	ld   b, b                                        ; $6a75: $40
	ld   d, l                                        ; $6a76: $55
	ld   b, b                                        ; $6a77: $40
	ld   e, a                                        ; $6a78: $5f
	ld   c, d                                        ; $6a79: $4a
	add  b                                           ; $6a7a: $80

jr_08d_6a7b:
	ld   e, a                                        ; $6a7b: $5f
	nop                                              ; $6a7c: $00
	rra                                              ; $6a7d: $1f
	add  c                                           ; $6a7e: $81
	sbc  a                                           ; $6a7f: $9f
	add  hl, bc                                      ; $6a80: $09
	ret  nz                                          ; $6a81: $c0

	nop                                              ; $6a82: $00
	dec  b                                           ; $6a83: $05
	nop                                              ; $6a84: $00
	rlca                                             ; $6a85: $07
	ld   [bc], a                                     ; $6a86: $02
	ld   d, a                                        ; $6a87: $57
	inc  bc                                          ; $6a88: $03
	rst  $38                                         ; $6a89: $ff
	xor  e                                           ; $6a8a: $ab
	add  h                                           ; $6a8b: $84
	rst  $38                                         ; $6a8c: $ff
	add  b                                           ; $6a8d: $80
	nop                                              ; $6a8e: $00
	rlca                                             ; $6a8f: $07
	ld   d, h                                        ; $6a90: $54
	nop                                              ; $6a91: $00
	db   $fc                                         ; $6a92: $fc
	xor  b                                           ; $6a93: $a8
	db   $fd                                         ; $6a94: $fd
	ld   hl, sp-$01                                  ; $6a95: $f8 $ff
	ld   a, [$ff84]                                  ; $6a97: $fa $84 $ff
	add  h                                           ; $6a9a: $84
	nop                                              ; $6a9b: $00
	dec  bc                                          ; $6a9c: $0b
	ld   d, b                                        ; $6a9d: $50
	nop                                              ; $6a9e: $00
	ld   hl, sp-$60                                  ; $6a9f: $f8 $a0
	db   $fc                                         ; $6aa1: $fc
	ldh  a, [$fc]                                    ; $6aa2: $f0 $fc
	ld   hl, sp-$0c                                  ; $6aa4: $f8 $f4
	ldh  a, [rAUD2LOW]                               ; $6aa6: $f0 $18
	ld   e, $80                                      ; $6aa8: $1e $80
	ld   a, $00                                      ; $6aaa: $3e $00
	ld   a, [hl-]                                    ; $6aac: $3a
	add  c                                           ; $6aad: $81
	ld   a, $80                                      ; $6aae: $3e $80
	ld   a, [hl]                                     ; $6ab0: $7e
	ld   bc, $7e78                                   ; $6ab1: $01 $78 $7e
	add  d                                           ; $6ab4: $82
	nop                                              ; $6ab5: $00
	nop                                              ; $6ab6: $00
	add  b                                           ; $6ab7: $80
	add  e                                           ; $6ab8: $83
	nop                                              ; $6ab9: $00
	inc  bc                                          ; $6aba: $03
	ld   hl, $1b01                                   ; $6abb: $21 $01 $1b
	dec  bc                                          ; $6abe: $0b
	add  d                                           ; $6abf: $82
	dec  de                                          ; $6ac0: $1b
	ld   [bc], a                                     ; $6ac1: $02
	sbc  e                                           ; $6ac2: $9b
	dec  de                                          ; $6ac3: $1b
	ld   sp, $7f87                                   ; $6ac4: $31 $87 $7f
	ld   bc, $7f01                                   ; $6ac7: $01 $01 $7f
	add  d                                           ; $6aca: $82
	nop                                              ; $6acb: $00
	nop                                              ; $6acc: $00
	ld   b, b                                        ; $6acd: $40
	add  e                                           ; $6ace: $83
	jr   c, jr_08d_6ad4                              ; $6acf: $38 $03

	ld   a, [hl-]                                    ; $6ad1: $3a
	jr   c, jr_08d_6ad5                              ; $6ad2: $38 $01

jr_08d_6ad4:
	nop                                              ; $6ad4: $00

jr_08d_6ad5:
	add  b                                           ; $6ad5: $80
	add  hl, sp                                      ; $6ad6: $39
	inc  b                                           ; $6ad7: $04
	ld   bc, $4139                                   ; $6ad8: $01 $39 $41
	ld   bc, $8100                                   ; $6adb: $01 $00 $81
	rlca                                             ; $6ade: $07
	ld   bc, $0705                                   ; $6adf: $01 $05 $07
	add  b                                           ; $6ae2: $80
	rla                                              ; $6ae3: $17
	add  b                                           ; $6ae4: $80
	or   a                                           ; $6ae5: $b7
	ld   bc, $b7b1                                   ; $6ae6: $01 $b1 $b7
	add  d                                           ; $6ae9: $82
	or   b                                           ; $6aea: $b0
	ld   bc, $1808                                   ; $6aeb: $01 $08 $18
	adc  b                                           ; $6aee: $88
	sbc  b                                           ; $6aef: $98
	add  b                                           ; $6af0: $80
	jr   jr_08d_6af3                                 ; $6af1: $18 $00

jr_08d_6af3:
	db   $10                                         ; $6af3: $10
	add  a                                           ; $6af4: $87
	nop                                              ; $6af5: $00
	ld   [$0005], sp                                 ; $6af6: $08 $05 $00
	rrca                                             ; $6af9: $0f
	ld   [bc], a                                     ; $6afa: $02
	dec  c                                           ; $6afb: $0d
	dec  b                                           ; $6afc: $05
	dec  bc                                          ; $6afd: $0b
	inc  bc                                          ; $6afe: $03
	ld   [$0085], sp                                 ; $6aff: $08 $85 $00
	inc  bc                                          ; $6b02: $03
	ld   d, l                                        ; $6b03: $55
	nop                                              ; $6b04: $00
	rst  $38                                         ; $6b05: $ff
	xor  d                                           ; $6b06: $aa
	add  d                                           ; $6b07: $82
	rst  $38                                         ; $6b08: $ff
	add  [hl]                                        ; $6b09: $86
	nop                                              ; $6b0a: $00
	inc  bc                                          ; $6b0b: $03
	ld   d, l                                        ; $6b0c: $55
	nop                                              ; $6b0d: $00
	rst  $38                                         ; $6b0e: $ff
	xor  d                                           ; $6b0f: $aa
	add  c                                           ; $6b10: $81
	rra                                              ; $6b11: $1f
	ld   bc, $c0df                                   ; $6b12: $01 $df $c0
	add  l                                           ; $6b15: $85
	nop                                              ; $6b16: $00
	inc  bc                                          ; $6b17: $03
	ld   d, l                                        ; $6b18: $55
	nop                                              ; $6b19: $00
	rst  $38                                         ; $6b1a: $ff
	xor  d                                           ; $6b1b: $aa
	add  d                                           ; $6b1c: $82
	rst  $38                                         ; $6b1d: $ff
	nop                                              ; $6b1e: $00
	ld   [$0080], sp                                 ; $6b1f: $08 $80 $00
	add  b                                           ; $6b22: $80
	inc  b                                           ; $6b23: $04
	add  b                                           ; $6b24: $80
	rlca                                             ; $6b25: $07
	ld   bc, $0e06                                   ; $6b26: $01 $06 $0e
	add  b                                           ; $6b29: $80
	ld   b, $82                                      ; $6b2a: $06 $82
	ld   [bc], a                                     ; $6b2c: $02
	dec  c                                           ; $6b2d: $0d
	inc  bc                                          ; $6b2e: $03
	inc  e                                           ; $6b2f: $1c
	rlca                                             ; $6b30: $07
	scf                                              ; $6b31: $37
	inc  b                                           ; $6b32: $04
	dec  de                                          ; $6b33: $1b
	sub  b                                           ; $6b34: $90
	sbc  b                                           ; $6b35: $98
	ld   e, $0e                                      ; $6b36: $1e $0e
	ld   [$0007], sp                                 ; $6b38: $08 $07 $00
	dec  l                                           ; $6b3b: $2d
	add  b                                           ; $6b3c: $80
	nop                                              ; $6b3d: $00
	dec  b                                           ; $6b3e: $05
	ldh  [rLYC], a                                   ; $6b3f: $e0 $45
	rrca                                             ; $6b41: $0f
	rst  $10                                         ; $6b42: $d7
	ld   h, a                                        ; $6b43: $67
	ld   h, b                                        ; $6b44: $60
	add  b                                           ; $6b45: $80
	ld   h, a                                        ; $6b46: $67
	nop                                              ; $6b47: $00
	ld   h, c                                        ; $6b48: $61
	add  b                                           ; $6b49: $80
	ld   b, c                                        ; $6b4a: $41
	ld   [bc], a                                     ; $6b4b: $02
	add  c                                           ; $6b4c: $81
	ld   bc, $80d1                                   ; $6b4d: $01 $d1 $80
	ld   bc, $1f03                                   ; $6b50: $01 $03 $1f
	and  b                                           ; $6b53: $a0
	cp   a                                           ; $6b54: $bf
	rra                                              ; $6b55: $1f
	add  e                                           ; $6b56: $83
	sbc  a                                           ; $6b57: $9f
	nop                                              ; $6b58: $00
	rst  JumpTable                                         ; $6b59: $df
	add  b                                           ; $6b5a: $80
	sbc  a                                           ; $6b5b: $9f
	nop                                              ; $6b5c: $00
	rra                                              ; $6b5d: $1f
	add  d                                           ; $6b5e: $82
	ccf                                              ; $6b5f: $3f
	adc  [hl]                                        ; $6b60: $8e
	rst  $38                                         ; $6b61: $ff
	add  b                                           ; $6b62: $80
	ld   hl, sp+$0e                                  ; $6b63: $f8 $0e
	db   $f4                                         ; $6b65: $f4
	ldh  a, [$fc]                                    ; $6b66: $f0 $fc
	ld   hl, sp-$0c                                  ; $6b68: $f8 $f4
	ldh  a, [$fc]                                    ; $6b6a: $f0 $fc
	ld   hl, sp-$0c                                  ; $6b6c: $f8 $f4
	ldh  a, [$fc]                                    ; $6b6e: $f0 $fc
	ld   hl, sp-$0c                                  ; $6b70: $f8 $f4
	ldh  a, [$7b]                                    ; $6b72: $f0 $7b
	add  c                                           ; $6b74: $81
	ld   a, a                                        ; $6b75: $7f
	add  b                                           ; $6b76: $80
	ld   a, [hl]                                     ; $6b77: $7e
	dec  bc                                          ; $6b78: $0b
	ld   a, e                                        ; $6b79: $7b
	ld   a, l                                        ; $6b7a: $7d
	ld   h, c                                        ; $6b7b: $61
	ld   a, b                                        ; $6b7c: $78
	ld   e, b                                        ; $6b7d: $58
	ld   a, b                                        ; $6b7e: $78
	inc  a                                           ; $6b7f: $3c
	inc  c                                           ; $6b80: $0c
	ld   c, a                                        ; $6b81: $4f
	cpl                                              ; $6b82: $2f
	call nz, $809b                                   ; $6b83: $c4 $9b $80
	rra                                              ; $6b86: $1f
	inc  bc                                          ; $6b87: $03
	sbc  [hl]                                        ; $6b88: $9e
	sbc  a                                           ; $6b89: $9f
	sub  a                                           ; $6b8a: $97
	rra                                              ; $6b8b: $1f
	add  d                                           ; $6b8c: $82
	ld   e, a                                        ; $6b8d: $5f
	add  b                                           ; $6b8e: $80
	rra                                              ; $6b8f: $1f
	add  b                                           ; $6b90: $80
	sbc  a                                           ; $6b91: $9f
	ld   bc, $7fc6                                   ; $6b92: $01 $c6 $7f
	add  b                                           ; $6b95: $80
	ccf                                              ; $6b96: $3f
	inc  b                                           ; $6b97: $04
	ld   b, b                                        ; $6b98: $40
	ld   e, a                                        ; $6b99: $5f
	ld   l, a                                        ; $6b9a: $6f
	cpl                                              ; $6b9b: $2f
	daa                                              ; $6b9c: $27
	add  c                                           ; $6b9d: $81
	rlca                                             ; $6b9e: $07
	dec  b                                           ; $6b9f: $05
	ld   l, a                                        ; $6ba0: $6f
	rrca                                             ; $6ba1: $0f
	sbc  a                                           ; $6ba2: $9f
	ld   e, a                                        ; $6ba3: $5f
	dec  h                                           ; $6ba4: $25
	ld   sp, hl                                      ; $6ba5: $f9
	add  b                                           ; $6ba6: $80
	pop  af                                          ; $6ba7: $f1
	inc  b                                           ; $6ba8: $04
	add  hl, bc                                      ; $6ba9: $09
	jp   hl                                          ; $6baa: $e9


	reti                                             ; $6bab: $d9


	pop  de                                          ; $6bac: $d1
	sub  l                                           ; $6bad: $95
	add  c                                           ; $6bae: $81
	add  l                                           ; $6baf: $85
	rlca                                             ; $6bb0: $07
	pop  bc                                          ; $6bb1: $c1
	ret  nz                                          ; $6bb2: $c0

	ld   sp, hl                                      ; $6bb3: $f9
	ld   hl, sp+$4c                                  ; $6bb4: $f8 $4c
	or   a                                           ; $6bb6: $b7
	db   $e3                                         ; $6bb7: $e3
	di                                               ; $6bb8: $f3
	add  b                                           ; $6bb9: $80
	push af                                          ; $6bba: $f5
	nop                                              ; $6bbb: $00
	ld   [hl], a                                     ; $6bbc: $77
	add  b                                           ; $6bbd: $80
	ldh  a, [c]                                      ; $6bbe: $f2
	add  c                                           ; $6bbf: $81
	ldh  a, [rDIV]                                   ; $6bc0: $f0 $04
	or   b                                           ; $6bc2: $b0
	jr   nc, jr_08d_6bfc                             ; $6bc3: $30 $37

	or   a                                           ; $6bc5: $b7
	ld   l, l                                        ; $6bc6: $6d
	add  e                                           ; $6bc7: $83
	ld   a, [$7a05]                                  ; $6bc8: $fa $05 $7a
	ld   a, [$7a1a]                                  ; $6bcb: $fa $1a $7a
	ld   l, d                                        ; $6bce: $6a
	ld   a, d                                        ; $6bcf: $7a
	add  b                                           ; $6bd0: $80
	ld   hl, sp+$12                                  ; $6bd1: $f8 $12
	ld   a, [$f6f9]                                  ; $6bd3: $fa $f9 $f6
	dec  b                                           ; $6bd6: $05
	dec  bc                                          ; $6bd7: $0b
	inc  bc                                          ; $6bd8: $03
	dec  c                                           ; $6bd9: $0d
	dec  b                                           ; $6bda: $05
	dec  bc                                          ; $6bdb: $0b
	inc  bc                                          ; $6bdc: $03
	dec  c                                           ; $6bdd: $0d
	dec  b                                           ; $6bde: $05
	dec  bc                                          ; $6bdf: $0b
	inc  bc                                          ; $6be0: $03
	dec  c                                           ; $6be1: $0d
	dec  b                                           ; $6be2: $05
	dec  bc                                          ; $6be3: $0b
	inc  bc                                          ; $6be4: $03
	rst  $30                                         ; $6be5: $f7
	adc  l                                           ; $6be6: $8d
	rst  $38                                         ; $6be7: $ff
	rlca                                             ; $6be8: $07
	add  b                                           ; $6be9: $80
	ld   b, b                                        ; $6bea: $40
	rst  JumpTable                                         ; $6beb: $df
	nop                                              ; $6bec: $00
	sbc  a                                           ; $6bed: $9f
	ld   b, b                                        ; $6bee: $40
	ld   c, c                                        ; $6bef: $49
	ld   c, l                                        ; $6bf0: $4d
	add  c                                           ; $6bf1: $81
	ld   b, h                                        ; $6bf2: $44
	add  b                                           ; $6bf3: $80
	ld   e, a                                        ; $6bf4: $5f
	ld   bc, $c040                                   ; $6bf5: $01 $40 $c0
	add  c                                           ; $6bf8: $81
	nop                                              ; $6bf9: $00
	dec  b                                           ; $6bfa: $05
	rst  $38                                         ; $6bfb: $ff

jr_08d_6bfc:
	nop                                              ; $6bfc: $00
	rst  $38                                         ; $6bfd: $ff
	nop                                              ; $6bfe: $00
	inc  h                                           ; $6bff: $24
	or   [hl]                                        ; $6c00: $b6
	add  c                                           ; $6c01: $81
	sub  d                                           ; $6c02: $92
	add  b                                           ; $6c03: $80
	rst  $38                                         ; $6c04: $ff
	add  d                                           ; $6c05: $82
	nop                                              ; $6c06: $00
	add  h                                           ; $6c07: $84
	ld   [bc], a                                     ; $6c08: $02
	add  c                                           ; $6c09: $81
	nop                                              ; $6c0a: $00
	add  b                                           ; $6c0b: $80
	rrca                                             ; $6c0c: $0f
	add  e                                           ; $6c0d: $83
	nop                                              ; $6c0e: $00
	add  d                                           ; $6c0f: $82
	ld   a, [hl+]                                    ; $6c10: $2a
	add  b                                           ; $6c11: $80
	cpl                                              ; $6c12: $2f
	add  c                                           ; $6c13: $81
	ld   [$c801], sp                                 ; $6c14: $08 $01 $c8
	ret  nz                                          ; $6c17: $c0

	add  e                                           ; $6c18: $83
	nop                                              ; $6c19: $00
	add  d                                           ; $6c1a: $82
	ld   d, c                                        ; $6c1b: $51
	add  b                                           ; $6c1c: $80
	pop  de                                          ; $6c1d: $d1
	add  c                                           ; $6c1e: $81
	ld   b, b                                        ; $6c1f: $40
	ld   bc, $0343                                   ; $6c20: $01 $43 $03
	add  d                                           ; $6c23: $82
	nop                                              ; $6c24: $00
	add  b                                           ; $6c25: $80
	ccf                                              ; $6c26: $3f
	add  [hl]                                        ; $6c27: $86
	rra                                              ; $6c28: $1f
	add  b                                           ; $6c29: $80
	rst  $38                                         ; $6c2a: $ff
	add  b                                           ; $6c2b: $80
	ld   a, a                                        ; $6c2c: $7f
	add  b                                           ; $6c2d: $80
	ccf                                              ; $6c2e: $3f
	adc  [hl]                                        ; $6c2f: $8e
	rst  $38                                         ; $6c30: $ff
	add  b                                           ; $6c31: $80
	ld   hl, sp+$12                                  ; $6c32: $f8 $12
	db   $f4                                         ; $6c34: $f4
	pop  af                                          ; $6c35: $f1
	db   $fd                                         ; $6c36: $fd
	ld   sp, hl                                      ; $6c37: $f9
	push af                                          ; $6c38: $f5
	pop  af                                          ; $6c39: $f1
	db   $fd                                         ; $6c3a: $fd
	ld   sp, hl                                      ; $6c3b: $f9
	push af                                          ; $6c3c: $f5
	pop  af                                          ; $6c3d: $f1
	db   $fd                                         ; $6c3e: $fd
	ld   hl, sp-$0c                                  ; $6c3f: $f8 $f4
	ldh  a, [rBGP]                                   ; $6c41: $f0 $47
	inc  hl                                          ; $6c43: $23
	rst  $28                                         ; $6c44: $ef
	nop                                              ; $6c45: $00
	ld   c, a                                        ; $6c46: $4f
	add  b                                           ; $6c47: $80
	and  b                                           ; $6c48: $a0
	dec  b                                           ; $6c49: $05
	xor  c                                           ; $6c4a: $a9
	ret  nz                                          ; $6c4b: $c0

	jp   hl                                          ; $6c4c: $e9


	ret  nz                                          ; $6c4d: $c0

	adc  a                                           ; $6c4e: $8f
	rrca                                             ; $6c4f: $0f
	add  b                                           ; $6c50: $80
	ld   h, b                                        ; $6c51: $60
	nop                                              ; $6c52: $00
	nop                                              ; $6c53: $00
	add  b                                           ; $6c54: $80
	ld   hl, sp+$02                                  ; $6c55: $f8 $02
	rst  $38                                         ; $6c57: $ff
	nop                                              ; $6c58: $00
	rst  $38                                         ; $6c59: $ff
	add  b                                           ; $6c5a: $80
	nop                                              ; $6c5b: $00
	inc  bc                                          ; $6c5c: $03
	inc  h                                           ; $6c5d: $24
	nop                                              ; $6c5e: $00
	inc  h                                           ; $6c5f: $24
	nop                                              ; $6c60: $00
	add  b                                           ; $6c61: $80
	rst  $38                                         ; $6c62: $ff
	add  c                                           ; $6c63: $81
	nop                                              ; $6c64: $00
	inc  b                                           ; $6c65: $04
	sbc  a                                           ; $6c66: $9f
	ld   e, a                                        ; $6c67: $5f
	rst  JumpTable                                         ; $6c68: $df
	nop                                              ; $6c69: $00
	sbc  a                                           ; $6c6a: $9f
	add  b                                           ; $6c6b: $80
	ld   b, b                                        ; $6c6c: $40
	inc  bc                                          ; $6c6d: $03
	ld   d, d                                        ; $6c6e: $52
	add  b                                           ; $6c6f: $80
	jp   nc, $8080                                   ; $6c70: $d2 $80 $80

	rra                                              ; $6c73: $1f
	add  b                                           ; $6c74: $80
	ret  nz                                          ; $6c75: $c0

	dec  b                                           ; $6c76: $05
	nop                                              ; $6c77: $00
	ld   sp, hl                                      ; $6c78: $f9
	ld   hl, sp-$01                                  ; $6c79: $f8 $ff
	nop                                              ; $6c7b: $00
	rst  $38                                         ; $6c7c: $ff
	add  b                                           ; $6c7d: $80
	nop                                              ; $6c7e: $00
	inc  bc                                          ; $6c7f: $03
	ld   c, b                                        ; $6c80: $48
	ld   bc, $0149                           ; $6c81: $01 $49 $01
	add  b                                           ; $6c84: $80
	cp   $80                                         ; $6c85: $fe $80
	ld   bc, $0005                                   ; $6c87: $01 $05 $00
	inc  bc                                          ; $6c8a: $03
	add  e                                           ; $6c8b: $83
	cp   a                                           ; $6c8c: $bf
	nop                                              ; $6c8d: $00
	ccf                                              ; $6c8e: $3f
	add  b                                           ; $6c8f: $80
	add  b                                           ; $6c90: $80
	inc  bc                                          ; $6c91: $03
	and  h                                           ; $6c92: $a4
	nop                                              ; $6c93: $00
	and  h                                           ; $6c94: $a4
	nop                                              ; $6c95: $00
	add  b                                           ; $6c96: $80
	ccf                                              ; $6c97: $3f
	add  b                                           ; $6c98: $80
	add  b                                           ; $6c99: $80
	dec  b                                           ; $6c9a: $05
	nop                                              ; $6c9b: $00
	ldh  [c], a                                      ; $6c9c: $e2
	pop  hl                                          ; $6c9d: $e1
	rst  $38                                         ; $6c9e: $ff
	nop                                              ; $6c9f: $00
	cp   $80                                         ; $6ca0: $fe $80
	ld   bc, $9103                                   ; $6ca2: $01 $03 $91
	ld   [bc], a                                     ; $6ca5: $02
	sub  e                                           ; $6ca6: $93
	ld   [bc], a                                     ; $6ca7: $02
	add  b                                           ; $6ca8: $80
	db   $fc                                         ; $6ca9: $fc
	add  b                                           ; $6caa: $80
	inc  bc                                          ; $6cab: $03
	nop                                              ; $6cac: $00
	nop                                              ; $6cad: $00
	add  b                                           ; $6cae: $80
	dec  b                                           ; $6caf: $05
	ld   c, $0b                                      ; $6cb0: $0e $0b
	inc  bc                                          ; $6cb2: $03
	dec  c                                           ; $6cb3: $0d
	dec  b                                           ; $6cb4: $05
	dec  bc                                          ; $6cb5: $0b
	inc  bc                                          ; $6cb6: $03
	dec  c                                           ; $6cb7: $0d
	dec  b                                           ; $6cb8: $05
	dec  bc                                          ; $6cb9: $0b
	inc  bc                                          ; $6cba: $03
	dec  c                                           ; $6cbb: $0d
	dec  b                                           ; $6cbc: $05
	dec  bc                                          ; $6cbd: $0b
	inc  bc                                          ; $6cbe: $03
	rst  $30                                         ; $6cbf: $f7
	adc  l                                           ; $6cc0: $8d
	rst  $38                                         ; $6cc1: $ff
	ld   bc, $4f8f                                   ; $6cc2: $01 $8f $4f
	add  b                                           ; $6cc5: $80
	ld   b, b                                        ; $6cc6: $40
	rlca                                             ; $6cc7: $07
	ret  nz                                          ; $6cc8: $c0

	nop                                              ; $6cc9: $00
	sbc  a                                           ; $6cca: $9f
	ld   b, b                                        ; $6ccb: $40
	ld   e, a                                        ; $6ccc: $5f
	ld   b, b                                        ; $6ccd: $40
	ld   c, c                                        ; $6cce: $49
	ld   c, l                                        ; $6ccf: $4d
	add  c                                           ; $6cd0: $81
	ld   b, h                                        ; $6cd1: $44
	ld   [bc], a                                     ; $6cd2: $02
	ld   e, b                                        ; $6cd3: $58
	daa                                              ; $6cd4: $27
	rst  $38                                         ; $6cd5: $ff
	add  d                                           ; $6cd6: $82
	nop                                              ; $6cd7: $00
	ld   [bc], a                                     ; $6cd8: $02
	rst  $38                                         ; $6cd9: $ff
	nop                                              ; $6cda: $00
	rst  $38                                         ; $6cdb: $ff
	add  b                                           ; $6cdc: $80
	nop                                              ; $6cdd: $00
	add  b                                           ; $6cde: $80
	add  b                                           ; $6cdf: $80
	inc  bc                                          ; $6ce0: $03
	nop                                              ; $6ce1: $00
	ccf                                              ; $6ce2: $3f
	nop                                              ; $6ce3: $00
	ccf                                              ; $6ce4: $3f
	add  c                                           ; $6ce5: $81
	nop                                              ; $6ce6: $00
	dec  b                                           ; $6ce7: $05
	ret  nz                                          ; $6ce8: $c0

	nop                                              ; $6ce9: $00
	ldh  a, [$c0]                                    ; $6cea: $f0 $c0
	rst  $38                                         ; $6cec: $ff
	ldh  a, [$84]                                    ; $6ced: $f0 $84
	rst  $30                                         ; $6cef: $f7
	ld   bc, $0ff0                                   ; $6cf0: $01 $f0 $0f
	add  b                                           ; $6cf3: $80
	ld   a, a                                        ; $6cf4: $7f
	add  d                                           ; $6cf5: $82
	nop                                              ; $6cf6: $00
	add  hl, bc                                      ; $6cf7: $09
	rst  $38                                         ; $6cf8: $ff
	nop                                              ; $6cf9: $00
	pop  af                                          ; $6cfa: $f1
	rst  $38                                         ; $6cfb: $ff
	xor  $e1                                         ; $6cfc: $ee $e1
	call $1fd2                                       ; $6cfe: $cd $d2 $1f
	cp   $80                                         ; $6d01: $fe $80
	rst  $38                                         ; $6d03: $ff
	add  b                                           ; $6d04: $80
	rlca                                             ; $6d05: $07
	add  b                                           ; $6d06: $80
	inc  bc                                          ; $6d07: $03
	inc  c                                           ; $6d08: $0c
	pop  hl                                          ; $6d09: $e1
	ld   bc, $e0f0                                   ; $6d0a: $01 $f0 $e0
	db   $fc                                         ; $6d0d: $fc
	ldh  a, [$7f]                                    ; $6d0e: $f0 $7f
	db   $fc                                         ; $6d10: $fc
	ld   h, b                                        ; $6d11: $60
	rra                                              ; $6d12: $1f
	rrca                                             ; $6d13: $0f
	adc  a                                           ; $6d14: $8f
	add  a                                           ; $6d15: $87
	add  b                                           ; $6d16: $80
	rst  ToBoot                                         ; $6d17: $c7
	add  d                                           ; $6d18: $82
	rst  $20                                         ; $6d19: $e7
	add  b                                           ; $6d1a: $80
	daa                                              ; $6d1b: $27
	add  c                                           ; $6d1c: $81
	rlca                                             ; $6d1d: $07
	adc  h                                           ; $6d1e: $8c
	rst  $38                                         ; $6d1f: $ff
	add  b                                           ; $6d20: $80
	ldh  a, [$09]                                    ; $6d21: $f0 $09
	ld   a, [$f6f8]                                  ; $6d23: $fa $f8 $f6
	ldh  a, [$fe]                                    ; $6d26: $f0 $fe
	ld   hl, sp-$0a                                  ; $6d28: $f8 $f6
	ldh  a, [$fe]                                    ; $6d2a: $f0 $fe
	ld   a, [$ff82]                                  ; $6d2c: $fa $82 $ff
	add  b                                           ; $6d2f: $80
	ld   a, a                                        ; $6d30: $7f
	nop                                              ; $6d31: $00
	ld   b, $81                                      ; $6d32: $06 $81
	ld   [bc], a                                     ; $6d34: $02
	dec  b                                           ; $6d35: $05
	inc  b                                           ; $6d36: $04
	nop                                              ; $6d37: $00
	ld   d, l                                        ; $6d38: $55
	nop                                              ; $6d39: $00
	rst  $38                                         ; $6d3a: $ff
	xor  d                                           ; $6d3b: $aa
	add  d                                           ; $6d3c: $82
	rst  $38                                         ; $6d3d: $ff
	add  b                                           ; $6d3e: $80
	ld   hl, sp+$00                                  ; $6d3f: $f8 $00
	db   $db                                         ; $6d41: $db
	add  c                                           ; $6d42: $81
	ret  c                                           ; $6d43: $d8

	dec  b                                           ; $6d44: $05
	inc  bc                                          ; $6d45: $03
	nop                                              ; $6d46: $00
	ld   d, l                                        ; $6d47: $55
	nop                                              ; $6d48: $00
	rst  $38                                         ; $6d49: $ff
	xor  d                                           ; $6d4a: $aa
	add  d                                           ; $6d4b: $82
	rst  $38                                         ; $6d4c: $ff
	add  b                                           ; $6d4d: $80
	ccf                                              ; $6d4e: $3f
	nop                                              ; $6d4f: $00
	dec  c                                           ; $6d50: $0d
	add  c                                           ; $6d51: $81
	nop                                              ; $6d52: $00
	rlca                                             ; $6d53: $07
	dec  c                                           ; $6d54: $0d
	nop                                              ; $6d55: $00
	dec  b                                           ; $6d56: $05
	nop                                              ; $6d57: $00
	xor  a                                           ; $6d58: $af
	ld   [bc], a                                     ; $6d59: $02
	rst  $38                                         ; $6d5a: $ff
	ld   d, a                                        ; $6d5b: $57
	add  d                                           ; $6d5c: $82
	rst  $38                                         ; $6d5d: $ff
	nop                                              ; $6d5e: $00
	or   [hl]                                        ; $6d5f: $b6
	add  c                                           ; $6d60: $81
	or   b                                           ; $6d61: $b0
	rlca                                             ; $6d62: $07
	ld   b, $00                                      ; $6d63: $06 $00
	ld   d, h                                        ; $6d65: $54
	nop                                              ; $6d66: $00
	cp   $a8                                         ; $6d67: $fe $a8
	rst  $38                                         ; $6d69: $ff
	db   $fd                                         ; $6d6a: $fd
	add  d                                           ; $6d6b: $82
	rst  $38                                         ; $6d6c: $ff
	nop                                              ; $6d6d: $00
	dec  de                                          ; $6d6e: $1b
	add  c                                           ; $6d6f: $81
	ld   bc, $1a07                                   ; $6d70: $01 $07 $1a
	nop                                              ; $6d73: $00
	dec  d                                           ; $6d74: $15
	nop                                              ; $6d75: $00
	cp   a                                           ; $6d76: $bf
	ld   a, [bc]                                     ; $6d77: $0a
	rst  $38                                         ; $6d78: $ff
	ld   e, a                                        ; $6d79: $5f
	add  d                                           ; $6d7a: $82
	rst  $38                                         ; $6d7b: $ff
	nop                                              ; $6d7c: $00
	ld   l, h                                        ; $6d7d: $6c
	add  c                                           ; $6d7e: $81
	ld   l, b                                        ; $6d7f: $68
	dec  b                                           ; $6d80: $05
	inc  b                                           ; $6d81: $04
	nop                                              ; $6d82: $00
	ld   d, l                                        ; $6d83: $55
	nop                                              ; $6d84: $00
	rst  $38                                         ; $6d85: $ff
	xor  d                                           ; $6d86: $aa
	add  d                                           ; $6d87: $82
	rst  $38                                         ; $6d88: $ff
	add  b                                           ; $6d89: $80
	ld   hl, sp-$80                                  ; $6d8a: $f8 $80
	dec  b                                           ; $6d8c: $05
	rlca                                             ; $6d8d: $07
	dec  bc                                          ; $6d8e: $0b
	inc  bc                                          ; $6d8f: $03
	dec  e                                           ; $6d90: $1d
	dec  b                                           ; $6d91: $05
	ld   e, e                                        ; $6d92: $5b
	inc  bc                                          ; $6d93: $03
	rst  $28                                         ; $6d94: $ef
	and  a                                           ; $6d95: $a7
	add  d                                           ; $6d96: $82
	rst  $38                                         ; $6d97: $ff
	add  b                                           ; $6d98: $80
	inc  a                                           ; $6d99: $3c
	adc  d                                           ; $6d9a: $8a
	rst  $38                                         ; $6d9b: $ff
	add  b                                           ; $6d9c: $80
	add  e                                           ; $6d9d: $83
	add  b                                           ; $6d9e: $80
	inc  bc                                          ; $6d9f: $03
	add  b                                           ; $6da0: $80
	nop                                              ; $6da1: $00
	inc  b                                           ; $6da2: $04
	inc  bc                                          ; $6da3: $03
	nop                                              ; $6da4: $00
	rrca                                             ; $6da5: $0f
	inc  bc                                          ; $6da6: $03
	sbc  a                                           ; $6da7: $9f
	add  b                                           ; $6da8: $80
	adc  h                                           ; $6da9: $8c
	add  hl, bc                                      ; $6daa: $09
	adc  b                                           ; $6dab: $88
	cp   b                                           ; $6dac: $b8
	sub  b                                           ; $6dad: $90
	sub  l                                           ; $6dae: $95
	sub  b                                           ; $6daf: $90
	ld   hl, sp-$60                                  ; $6db0: $f8 $a0
	xor  l                                           ; $6db2: $ad
	ccf                                              ; $6db3: $3f
	rst  $38                                         ; $6db4: $ff
	add  b                                           ; $6db5: $80
	ret  nz                                          ; $6db6: $c0

	add  b                                           ; $6db7: $80
	dec  e                                           ; $6db8: $1d
	add  b                                           ; $6db9: $80
	db   $dd                                         ; $6dba: $dd
	add  c                                           ; $6dbb: $81
	nop                                              ; $6dbc: $00
	inc  bc                                          ; $6dbd: $03
	ret  c                                           ; $6dbe: $d8

	ld   [bc], a                                     ; $6dbf: $02
	rrca                                             ; $6dc0: $0f
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
	push af                                          ; $6dd0: $f5
	inc  bc                                          ; $6dd1: $03
	ld   bc, $07f8                                   ; $6dd2: $01 $f8 $07
	add  b                                           ; $6dd5: $80
	db   $fc                                         ; $6dd6: $fc
	ld   c, $03                                      ; $6dd7: $0e $03
	ld   [bc], a                                     ; $6dd9: $02
	ld   h, b                                        ; $6dda: $60
	xor  [hl]                                        ; $6ddb: $ae
	xor  a                                           ; $6ddc: $af
	and  b                                           ; $6ddd: $a0
	adc  $0f                                         ; $6dde: $ce $0f
	ret  nz                                          ; $6de0: $c0

	adc  $5e                                         ; $6de1: $ce $5e
	sbc  [hl]                                        ; $6de3: $9e
	rrca                                             ; $6de4: $0f
	ret  nz                                          ; $6de5: $c0

	nop                                              ; $6de6: $00
	add  b                                           ; $6de7: $80
	rrca                                             ; $6de8: $0f
	add  b                                           ; $6de9: $80
	cp   h                                           ; $6dea: $bc
	add  b                                           ; $6deb: $80
	add  b                                           ; $6dec: $80

jr_08d_6ded:
	nop                                              ; $6ded: $00
	nop                                              ; $6dee: $00
	add  b                                           ; $6def: $80
	rrca                                             ; $6df0: $0f
	inc  b                                           ; $6df1: $04
	cp   d                                           ; $6df2: $ba
	cp   a                                           ; $6df3: $bf
	ld   d, b                                        ; $6df4: $50
	rst  $38                                         ; $6df5: $ff
	xor  d                                           ; $6df6: $aa
	add  b                                           ; $6df7: $80
	ld   a, a                                        ; $6df8: $7f
	add  b                                           ; $6df9: $80
	ldh  [$81], a                                    ; $6dfa: $e0 $81
	nop                                              ; $6dfc: $00
	add  b                                           ; $6dfd: $80

jr_08d_6dfe:
	ld   a, a                                        ; $6dfe: $7f
	ld   b, $d5                                      ; $6dff: $06 $d5
	rst  $38                                         ; $6e01: $ff
	add  b                                           ; $6e02: $80
	rst  $38                                         ; $6e03: $ff
	dec  d                                           ; $6e04: $15
	rst  $38                                         ; $6e05: $ff
	cp   a                                           ; $6e06: $bf
	add  b                                           ; $6e07: $80
	add  b                                           ; $6e08: $80
	nop                                              ; $6e09: $00
	nop                                              ; $6e0a: $00
	add  b                                           ; $6e0b: $80
	inc  bc                                          ; $6e0c: $03
	ld   [$fffd], sp                                 ; $6e0d: $08 $fd $ff
	xor  b                                           ; $6e10: $a8
	rst  $38                                         ; $6e11: $ff
	nop                                              ; $6e12: $00
	rst  $38                                         ; $6e13: $ff
	ld   [bc], a                                     ; $6e14: $02
	rst  $38                                         ; $6e15: $ff
	ld   d, a                                        ; $6e16: $57
	add  b                                           ; $6e17: $80
	sbc  $0b                                         ; $6e18: $de $0b
	ld   bc, $0f0e                                   ; $6e1a: $01 $0e $0f
	ei                                               ; $6e1d: $fb
	rst  $38                                         ; $6e1e: $ff
	ld   d, c                                        ; $6e1f: $51
	rst  $38                                         ; $6e20: $ff
	ld   bc, $15ff                                   ; $6e21: $01 $ff $15
	rst  $38                                         ; $6e24: $ff
	cp   [hl]                                        ; $6e25: $be
	add  b                                           ; $6e26: $80
	pop  af                                          ; $6e27: $f1
	ld   bc, $cf31                                   ; $6e28: $01 $31 $cf
	add  a                                           ; $6e2b: $87
	rst  $38                                         ; $6e2c: $ff
	ld   [bc], a                                     ; $6e2d: $02
	pop  bc                                          ; $6e2e: $c1
	rst  $38                                         ; $6e2f: $ff
	ccf                                              ; $6e30: $3f
	add  e                                           ; $6e31: $83
	rst  $38                                         ; $6e32: $ff
	add  b                                           ; $6e33: $80
	db   $fc                                         ; $6e34: $fc
	ld   [bc], a                                     ; $6e35: $02
	xor  $f1                                         ; $6e36: $ee $f1
	ld   h, c                                        ; $6e38: $61
	add  a                                           ; $6e39: $87
	add  c                                           ; $6e3a: $81
	ld   bc, $ff7f                                   ; $6e3b: $01 $7f $ff
	add  b                                           ; $6e3e: $80
	ccf                                              ; $6e3f: $3f
	ld   [bc], a                                     ; $6e40: $02
	jr   c, jr_08d_6e82                              ; $6e41: $38 $3f

	rlca                                             ; $6e43: $07
	add  c                                           ; $6e44: $81
	ccf                                              ; $6e45: $3f
	add  h                                           ; $6e46: $84
	cp   a                                           ; $6e47: $bf
	nop                                              ; $6e48: $00

jr_08d_6e49:
	ld   [hl], b                                     ; $6e49: $70
	add  c                                           ; $6e4a: $81
	rst  $38                                         ; $6e4b: $ff
	ld   bc, $ff3f                                   ; $6e4c: $01 $3f $ff
	add  b                                           ; $6e4f: $80
	rst  JumpTable                                         ; $6e50: $df
	add  d                                           ; $6e51: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e52: $cf
	nop                                              ; $6e53: $00
	ret  z                                           ; $6e54: $c8

	add  c                                           ; $6e55: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e56: $cf
	nop                                              ; $6e57: $00
	rst  $30                                         ; $6e58: $f7
	adc  [hl]                                        ; $6e59: $8e
	add  b                                           ; $6e5a: $80
	adc  l                                           ; $6e5b: $8d
	nop                                              ; $6e5c: $00
	nop                                              ; $6e5d: $00
	db   $10                                         ; $6e5e: $10
	adc  l                                           ; $6e5f: $8d
	jr   z, jr_08d_6e62                              ; $6e60: $28 $00

jr_08d_6e62:
	jr   c, jr_08d_6ded                              ; $6e62: $38 $89

	nop                                              ; $6e64: $00
	add  b                                           ; $6e65: $80
	ld   [bc], a                                     ; $6e66: $02
	add  b                                           ; $6e67: $80
	ld   a, [bc]                                     ; $6e68: $0a
	nop                                              ; $6e69: $00
	rrca                                             ; $6e6a: $0f
	adc  l                                           ; $6e6b: $8d
	nop                                              ; $6e6c: $00
	nop                                              ; $6e6d: $00

jr_08d_6e6e:
	rst  $38                                         ; $6e6e: $ff
	adc  c                                           ; $6e6f: $89
	nop                                              ; $6e70: $00
	add  b                                           ; $6e71: $80
	dec  bc                                          ; $6e72: $0b
	ld   [bc], a                                     ; $6e73: $02
	rlca                                             ; $6e74: $07
	rrca                                             ; $6e75: $0f
	ld   hl, sp-$7f                                  ; $6e76: $f8 $81
	nop                                              ; $6e78: $00
	add  b                                           ; $6e79: $80
	dec  b                                           ; $6e7a: $05
	add  b                                           ; $6e7b: $80
	jr   z, jr_08d_6dfe                              ; $6e7c: $28 $80

	nop                                              ; $6e7e: $00
	add  b                                           ; $6e7f: $80
	rlca                                             ; $6e80: $07
	dec  b                                           ; $6e81: $05

jr_08d_6e82:
	ld   a, [$50ff]                                  ; $6e82: $fa $ff $50
	rst  $38                                         ; $6e85: $ff
	xor  d                                           ; $6e86: $aa
	nop                                              ; $6e87: $00
	add  b                                           ; $6e88: $80
	rra                                              ; $6e89: $1f
	add  b                                           ; $6e8a: $80
	ldh  [$80], a                                    ; $6e8b: $e0 $80
	nop                                              ; $6e8d: $00
	add  b                                           ; $6e8e: $80

jr_08d_6e8f:
	rra                                              ; $6e8f: $1f
	rlca                                             ; $6e90: $07
	push af                                          ; $6e91: $f5
	rst  $38                                         ; $6e92: $ff
	and  b                                           ; $6e93: $a0
	rst  $38                                         ; $6e94: $ff
	nop                                              ; $6e95: $00
	rst  $38                                         ; $6e96: $ff
	ld   d, d                                        ; $6e97: $52
	ld   hl, sp-$80                                  ; $6e98: $f8 $80
	nop                                              ; $6e9a: $00
	add  b                                           ; $6e9b: $80
	ld   bc, $7f80                                   ; $6e9c: $01 $80 $7f
	ld   b, $aa                                      ; $6e9f: $06 $aa
	rst  $38                                         ; $6ea1: $ff
	nop                                              ; $6ea2: $00
	rst  $38                                         ; $6ea3: $ff
	ld   a, [bc]                                     ; $6ea4: $0a
	rst  $30                                         ; $6ea5: $f7
	ld   d, a                                        ; $6ea6: $57
	add  b                                           ; $6ea7: $80
	ldh  a, [rP1]                                    ; $6ea8: $f0 $00
	nop                                              ; $6eaa: $00
	add  b                                           ; $6eab: $80
	rlca                                             ; $6eac: $07
	ld   [$fffa], sp                                 ; $6ead: $08 $fa $ff
	ld   d, b                                        ; $6eb0: $50
	rst  $38                                         ; $6eb1: $ff
	nop                                              ; $6eb2: $00
	rst  $38                                         ; $6eb3: $ff
	dec  d                                           ; $6eb4: $15
	rst  $38                                         ; $6eb5: $ff
	cp   a                                           ; $6eb6: $bf
	add  b                                           ; $6eb7: $80
	pop  af                                          ; $6eb8: $f1
	add  hl, bc                                      ; $6eb9: $09
	ld   de, $1f0f                                   ; $6eba: $11 $0f $1f
	rst  $30                                         ; $6ebd: $f7
	rst  $38                                         ; $6ebe: $ff
	and  e                                           ; $6ebf: $a3
	rst  $38                                         ; $6ec0: $ff
	inc  bc                                          ; $6ec1: $03
	rst  $38                                         ; $6ec2: $ff
	xor  c                                           ; $6ec3: $a9
	add  b                                           ; $6ec4: $80
	ld   hl, sp-$7f                                  ; $6ec5: $f8 $81
	jr   jr_08d_6e49                                 ; $6ec7: $18 $80

	add  hl, de                                      ; $6ec9: $19
	nop                                              ; $6eca: $00
	ld   c, c                                        ; $6ecb: $49
	add  e                                           ; $6ecc: $83
	sbc  [hl]                                        ; $6ecd: $9e
	inc  bc                                          ; $6ece: $03
	adc  a                                           ; $6ecf: $8f
	add  b                                           ; $6ed0: $80
	ldh  [rAUD4LEN], a                               ; $6ed1: $e0 $20
	add  b                                           ; $6ed3: $80
	nop                                              ; $6ed4: $00
	add  b                                           ; $6ed5: $80
	rrca                                             ; $6ed6: $0f
	ld   a, [bc]                                     ; $6ed7: $0a

jr_08d_6ed8:
	pop  de                                          ; $6ed8: $d1
	sbc  $67                                         ; $6ed9: $de $67
	rst  $38                                         ; $6edb: $ff
	rst  ToBoot                                         ; $6edc: $c7
	db   $fc                                         ; $6edd: $fc
	call nz, $d4fc                                   ; $6ede: $c4 $fc $d4
	call nz, $8384                                   ; $6ee1: $c4 $84 $83
	inc  b                                           ; $6ee4: $04
	ld   [bc], a                                     ; $6ee5: $02
	add  h                                           ; $6ee6: $84
	ld   a, h                                        ; $6ee7: $7c
	db   $fc                                         ; $6ee8: $fc
	add  b                                           ; $6ee9: $80
	ldh  [$8a], a                                    ; $6eea: $e0 $8a
	jr   nz, jr_08d_6e6e                             ; $6eec: $20 $80

	ccf                                              ; $6eee: $3f
	add  e                                           ; $6eef: $83
	ret  nz                                          ; $6ef0: $c0

	add  b                                           ; $6ef1: $80
	pop  bc                                          ; $6ef2: $c1
	nop                                              ; $6ef3: $00
	ldh  [$81], a                                    ; $6ef4: $e0 $81
	rst  $38                                         ; $6ef6: $ff
	inc  b                                           ; $6ef7: $04
	ldh  a, [rIE]                                    ; $6ef8: $f0 $ff
	adc  a                                           ; $6efa: $8f
	sbc  a                                           ; $6efb: $9f
	ret  nz                                          ; $6efc: $c0

	add  e                                           ; $6efd: $83
	ld   sp, $f180                                   ; $6efe: $31 $80 $f1
	ld   [bc], a                                     ; $6f01: $02
	jr   nc, @-$0d                                   ; $6f02: $30 $f1

	ld   sp, $ff80                                   ; $6f04: $31 $80 $ff
	add  c                                           ; $6f07: $81
	pop  af                                          ; $6f08: $f1
	nop                                              ; $6f09: $00
	jr   nc, jr_08d_6e8f                             ; $6f0a: $30 $83

	rst  $38                                         ; $6f0c: $ff
	ld   [bc], a                                     ; $6f0d: $02
	pop  af                                          ; $6f0e: $f1
	rst  $38                                         ; $6f0f: $ff
	rrca                                             ; $6f10: $0f
	add  e                                           ; $6f11: $83
	rst  $38                                         ; $6f12: $ff
	ld   [bc], a                                     ; $6f13: $02
	ld   sp, hl                                      ; $6f14: $f9
	rst  $38                                         ; $6f15: $ff
	add  [hl]                                        ; $6f16: $86
	adc  e                                           ; $6f17: $8b
	add  c                                           ; $6f18: $81
	add  b                                           ; $6f19: $80
	sbc  a                                           ; $6f1a: $9f
	inc  b                                           ; $6f1b: $04
	nop                                              ; $6f1c: $00
	cp   a                                           ; $6f1d: $bf
	cp   b                                           ; $6f1e: $b8
	cp   a                                           ; $6f1f: $bf
	add  a                                           ; $6f20: $87
	add  l                                           ; $6f21: $85
	cp   a                                           ; $6f22: $bf
	nop                                              ; $6f23: $00
	add  b                                           ; $6f24: $80
	add  c                                           ; $6f25: $81
	cp   a                                           ; $6f26: $bf
	ld   [bc], a                                     ; $6f27: $02
	add  a                                           ; $6f28: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f29: $cf
	cpl                                              ; $6f2a: $2f
	add  c                                           ; $6f2b: $81
	rst  $28                                         ; $6f2c: $ef
	add  d                                           ; $6f2d: $82
	rst  $38                                         ; $6f2e: $ff
	ld   bc, $ff38                                   ; $6f2f: $01 $38 $ff
	add  b                                           ; $6f32: $80
	rst  JumpTable                                         ; $6f33: $df
	add  b                                           ; $6f34: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f35: $cf
	nop                                              ; $6f36: $00
	ldh  a, [$81]                                    ; $6f37: $f0 $81
	add  b                                           ; $6f39: $80
	add  b                                           ; $6f3a: $80
	sub  h                                           ; $6f3b: $94
	add  b                                           ; $6f3c: $80
	add  b                                           ; $6f3d: $80
	add  b                                           ; $6f3e: $80
	sub  l                                           ; $6f3f: $95
	add  b                                           ; $6f40: $80
	adc  d                                           ; $6f41: $8a
	add  d                                           ; $6f42: $82
	add  b                                           ; $6f43: $80
	ld   bc, $0181                                   ; $6f44: $01 $81 $01
	add  b                                           ; $6f47: $80
	add  b                                           ; $6f48: $80
	add  b                                           ; $6f49: $80
	nop                                              ; $6f4a: $00
	add  b                                           ; $6f4b: $80
	cpl                                              ; $6f4c: $2f
	add  b                                           ; $6f4d: $80
	ld   d, h                                        ; $6f4e: $54
	add  b                                           ; $6f4f: $80
	add  b                                           ; $6f50: $80
	add  d                                           ; $6f51: $82
	nop                                              ; $6f52: $00
	nop                                              ; $6f53: $00
	db   $10                                         ; $6f54: $10
	add  c                                           ; $6f55: $81
	jr   z, jr_08d_6ed8                              ; $6f56: $28 $80

	dec  l                                           ; $6f58: $2d
	add  b                                           ; $6f59: $80
	xor  d                                           ; $6f5a: $aa
	add  [hl]                                        ; $6f5b: $86
	jr   z, jr_08d_6f5f                              ; $6f5c: $28 $01

	ld   a, b                                        ; $6f5e: $78

jr_08d_6f5f:
	ld   b, b                                        ; $6f5f: $40
	add  b                                           ; $6f60: $80
	rrca                                             ; $6f61: $0f
	add  b                                           ; $6f62: $80
	ld   d, l                                        ; $6f63: $55
	add  b                                           ; $6f64: $80
	and  b                                           ; $6f65: $a0
	add  [hl]                                        ; $6f66: $86
	nop                                              ; $6f67: $00
	ld   bc, $000f                                   ; $6f68: $01 $0f $00
	add  b                                           ; $6f6b: $80

jr_08d_6f6c:
	and  b                                           ; $6f6c: $a0
	add  b                                           ; $6f6d: $80
	ld   b, b                                        ; $6f6e: $40
	adc  b                                           ; $6f6f: $88
	nop                                              ; $6f70: $00
	ld   b, $f1                                      ; $6f71: $06 $f1
	rlca                                             ; $6f73: $07
	inc  b                                           ; $6f74: $04
	rlca                                             ; $6f75: $07
	ld   b, $07                                      ; $6f76: $06 $07
	dec  bc                                          ; $6f78: $0b
	add  h                                           ; $6f79: $84
	nop                                              ; $6f7a: $00
	rlca                                             ; $6f7b: $07
	rrca                                             ; $6f7c: $0f
	ld   [$500f], sp                                 ; $6f7d: $08 $0f $50
	rst  $38                                         ; $6f80: $ff
	rla                                              ; $6f81: $17
	cp   $be                                         ; $6f82: $fe $be
	add  b                                           ; $6f84: $80
	ldh  a, [c]                                      ; $6f85: $f2
	add  c                                           ; $6f86: $81
	sub  d                                           ; $6f87: $92
	add  b                                           ; $6f88: $80
	sub  e                                           ; $6f89: $93
	nop                                              ; $6f8a: $00
	sub  d                                           ; $6f8b: $92
	add  b                                           ; $6f8c: $80
	sbc  [hl]                                        ; $6f8d: $9e
	add  b                                           ; $6f8e: $80
	ldh  a, [c]                                      ; $6f8f: $f2
	add  b                                           ; $6f90: $80
	rst  $38                                         ; $6f91: $ff
	add  h                                           ; $6f92: $84
	inc  b                                           ; $6f93: $04
	inc  bc                                          ; $6f94: $03
	ccf                                              ; $6f95: $3f
	daa                                              ; $6f96: $27
	db   $fc                                         ; $6f97: $fc
	inc  e                                           ; $6f98: $1c
	add  c                                           ; $6f99: $81
	db   $fc                                         ; $6f9a: $fc
	nop                                              ; $6f9b: $00
	inc  b                                           ; $6f9c: $04
	add  e                                           ; $6f9d: $83
	sub  b                                           ; $6f9e: $90
	ld   [bc], a                                     ; $6f9f: $02
	sbc  b                                           ; $6fa0: $98
	rst  $38                                         ; $6fa1: $ff
	ldh  a, [$83]                                    ; $6fa2: $f0 $83
	sub  a                                           ; $6fa4: $97
	ld   [bc], a                                     ; $6fa5: $02
	sbc  b                                           ; $6fa6: $98
	sbc  a                                           ; $6fa7: $9f
	sub  a                                           ; $6fa8: $97
	add  d                                           ; $6fa9: $82
	ld   de, $7103                                   ; $6faa: $11 $03 $71
	ld   de, $7fff                                   ; $6fad: $11 $ff $7f
	add  c                                           ; $6fb0: $81
	pop  af                                          ; $6fb1: $f1
	nop                                              ; $6fb2: $00
	ld   de, $f182                                   ; $6fb3: $11 $82 $f1
	inc  bc                                          ; $6fb6: $03
	add  hl, de                                      ; $6fb7: $19
	inc  e                                           ; $6fb8: $1c
	rra                                              ; $6fb9: $1f
	add  hl, de                                      ; $6fba: $19
	add  b                                           ; $6fbb: $80
	ei                                               ; $6fbc: $fb
	ld   bc, $1a1b                                   ; $6fbd: $01 $1b $1a
	add  c                                           ; $6fc0: $81
	dec  de                                          ; $6fc1: $1b
	rlca                                             ; $6fc2: $07
	dec  e                                           ; $6fc3: $1d
	rra                                              ; $6fc4: $1f
	ld   e, $1f                                      ; $6fc5: $1e $1f
	ld   [hl], h                                     ; $6fc7: $74
	cp   a                                           ; $6fc8: $bf
	cpl                                              ; $6fc9: $2f
	rst  $38                                         ; $6fca: $ff
	add  b                                           ; $6fcb: $80
	rst  JumpTable                                         ; $6fcc: $df
	inc  bc                                          ; $6fcd: $03
	ret  nc                                          ; $6fce: $d0

	sbc  $4e                                         ; $6fcf: $de $4e
	sbc  [hl]                                        ; $6fd1: $9e
	add  b                                           ; $6fd2: $80
	cp   [hl]                                        ; $6fd3: $be
	ld   b, $b1                                      ; $6fd4: $06 $b1
	cp   a                                           ; $6fd6: $bf
	cpl                                              ; $6fd7: $2f
	rst  $38                                         ; $6fd8: $ff
	add  c                                           ; $6fd9: $81
	ld   a, a                                        ; $6fda: $7f
	add  a                                           ; $6fdb: $87
	add  e                                           ; $6fdc: $83
	db   $fc                                         ; $6fdd: $fc
	nop                                              ; $6fde: $00
	inc  b                                           ; $6fdf: $04
	add  d                                           ; $6fe0: $82
	ld   a, h                                        ; $6fe1: $7c
	inc  bc                                          ; $6fe2: $03
	ld   a, a                                        ; $6fe3: $7f
	rst  ToBoot                                         ; $6fe4: $c7
	db   $fc                                         ; $6fe5: $fc
	call nz, $e080                                   ; $6fe6: $c4 $80 $e0
	add  [hl]                                        ; $6fe9: $86
	jr   nz, jr_08d_6f6c                             ; $6fea: $20 $80

	ccf                                              ; $6fec: $3f
	add  b                                           ; $6fed: $80
	ldh  [rSB], a                                    ; $6fee: $e0 $01
	jr   nz, jr_08d_7071                             ; $6ff0: $20 $7f

	add  c                                           ; $6ff2: $81
	sbc  a                                           ; $6ff3: $9f
	ld   [bc], a                                     ; $6ff4: $02
	sub  b                                           ; $6ff5: $90
	sbc  a                                           ; $6ff6: $9f
	xor  a                                           ; $6ff7: $af
	add  c                                           ; $6ff8: $81
	cp   a                                           ; $6ff9: $bf
	ld   [bc], a                                     ; $6ffa: $02
	or   b                                           ; $6ffb: $b0
	cp   a                                           ; $6ffc: $bf
	adc  a                                           ; $6ffd: $8f
	add  c                                           ; $6ffe: $81
	sbc  a                                           ; $6fff: $9f
	inc  b                                           ; $7000: $04
	ld   bc, $f0f1                                   ; $7001: $01 $f1 $f0
	pop  af                                          ; $7004: $f1
	ld   sp, $f182                                   ; $7005: $31 $82 $f1
	ld   bc, $3fff                                   ; $7008: $01 $ff $3f
	add  e                                           ; $700b: $83
	pop  af                                          ; $700c: $f1
	nop                                              ; $700d: $00
	ld   sp, $ff8b                                   ; $700e: $31 $8b $ff
	inc  bc                                          ; $7011: $03
	pop  hl                                          ; $7012: $e1
	rst  $38                                         ; $7013: $ff
	jr   @-$05                                       ; $7014: $18 $f9

	add  b                                           ; $7016: $80
	add  c                                           ; $7017: $81
	add  b                                           ; $7018: $80
	sbc  a                                           ; $7019: $9f
	add  b                                           ; $701a: $80
	db   $fd                                         ; $701b: $fd
	add  h                                           ; $701c: $84
	add  c                                           ; $701d: $81
	ld   [bc], a                                     ; $701e: $02
	sbc  h                                           ; $701f: $9c
	sbc  a                                           ; $7020: $9f
	inc  bc                                          ; $7021: $03
	add  a                                           ; $7022: $87
	cp   a                                           ; $7023: $bf
	ld   [bc], a                                     ; $7024: $02
	cp   h                                           ; $7025: $bc
	cp   a                                           ; $7026: $bf
	add  e                                           ; $7027: $83
	add  d                                           ; $7028: $82
	cp   a                                           ; $7029: $bf
	ld   bc, $c8cf                                   ; $702a: $01 $cf $c8
	add  l                                           ; $702d: $85
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $702e: $cf
	ld   bc, $cf0f                                   ; $702f: $01 $0f $cf
	add  b                                           ; $7032: $80
	rst  $28                                         ; $7033: $ef
	add  b                                           ; $7034: $80
	rst  $38                                         ; $7035: $ff
	nop                                              ; $7036: $00
	scf                                              ; $7037: $37
	adc  e                                           ; $7038: $8b
	nop                                              ; $7039: $00
	add  b                                           ; $703a: $80
	ld   [bc], a                                     ; $703b: $02
	inc  bc                                          ; $703c: $03
	rst  $30                                         ; $703d: $f7
	rrca                                             ; $703e: $0f
	ld   [$800f], sp                                 ; $703f: $08 $0f $80
	rlca                                             ; $7042: $07
	ld   [bc], a                                     ; $7043: $02

jr_08d_7044:
	inc  b                                           ; $7044: $04
	rlca                                             ; $7045: $07
	dec  bc                                          ; $7046: $0b
	add  c                                           ; $7047: $81
	rrca                                             ; $7048: $0f
	ld   bc, $0f08                                   ; $7049: $01 $08 $0f
	add  b                                           ; $704c: $80
	rlca                                             ; $704d: $07
	ld   bc, $92ff                                   ; $704e: $01 $ff $92
	add  c                                           ; $7051: $81
	sub  e                                           ; $7052: $93
	ld   bc, $9e9f                                   ; $7053: $01 $9f $9e
	add  b                                           ; $7056: $80
	ldh  a, [c]                                      ; $7057: $f2
	add  c                                           ; $7058: $81
	sub  d                                           ; $7059: $92
	add  c                                           ; $705a: $81
	sub  e                                           ; $705b: $93
	rlca                                             ; $705c: $07
	sbc  a                                           ; $705d: $9f
	ld   e, [hl]                                     ; $705e: $5e
	db   $fc                                         ; $705f: $fc
	inc  a                                           ; $7060: $3c
	db   $fc                                         ; $7061: $fc
	db   $e4                                         ; $7062: $e4
	rst  $38                                         ; $7063: $ff
	rra                                              ; $7064: $1f
	add  c                                           ; $7065: $81
	db   $fc                                         ; $7066: $fc
	ld   [bc], a                                     ; $7067: $02
	db   $e4                                         ; $7068: $e4
	db   $fc                                         ; $7069: $fc
	inc  e                                           ; $706a: $1c
	add  b                                           ; $706b: $80
	rst  $38                                         ; $706c: $ff
	ld   bc, $f4fc                                   ; $706d: $01 $fc $f4
	add  b                                           ; $7070: $80

jr_08d_7071:
	sbc  a                                           ; $7071: $9f
	ld   bc, $f0ff                                   ; $7072: $01 $ff $f0
	add  c                                           ; $7075: $81
	sub  a                                           ; $7076: $97
	ld   [bc], a                                     ; $7077: $02
	sub  [hl]                                        ; $7078: $96
	sub  a                                           ; $7079: $97
	sbc  c                                           ; $707a: $99
	add  b                                           ; $707b: $80
	sbc  a                                           ; $707c: $9f
	add  b                                           ; $707d: $80
	rst  $38                                         ; $707e: $ff
	inc  bc                                          ; $707f: $03
	sbc  a                                           ; $7080: $9f
	sub  a                                           ; $7081: $97
	pop  af                                          ; $7082: $f1
	ld   de, $ff80                                   ; $7083: $11 $80 $ff
	add  c                                           ; $7086: $81
	pop  af                                          ; $7087: $f1
	nop                                              ; $7088: $00
	ld   de, $f182                                   ; $7089: $11 $82 $f1
	add  b                                           ; $708c: $80
	rst  $38                                         ; $708d: $ff
	ld   bc, $f2f1                                   ; $708e: $01 $f1 $f2
	add  b                                           ; $7091: $80
	ei                                               ; $7092: $fb
	ld   bc, $1a1b                                   ; $7093: $01 $1b $1a
	add  c                                           ; $7096: $81
	dec  de                                          ; $7097: $1b
	inc  b                                           ; $7098: $04
	dec  e                                           ; $7099: $1d
	rra                                              ; $709a: $1f
	ld   e, $1f                                      ; $709b: $1e $1f
	add  hl, de                                      ; $709d: $19
	add  b                                           ; $709e: $80
	ei                                               ; $709f: $fb
	ld   b, $1b                                      ; $70a0: $06 $1b
	add  $df                                         ; $70a2: $c6 $df
	ret  nz                                          ; $70a4: $c0

	sbc  $5e                                         ; $70a5: $de $5e
	sbc  [hl]                                        ; $70a7: $9e
	add  b                                           ; $70a8: $80
	cp   [hl]                                        ; $70a9: $be
	ld   [bc], a                                     ; $70aa: $02
	and  c                                           ; $70ab: $a1
	cp   a                                           ; $70ac: $bf
	rra                                              ; $70ad: $1f
	add  c                                           ; $70ae: $81
	rst  JumpTable                                         ; $70af: $df
	ld   [bc], a                                     ; $70b0: $02
	pop  bc                                          ; $70b1: $c1
	rst  JumpTable                                         ; $70b2: $df
	ld   h, a                                        ; $70b3: $67
	add  c                                           ; $70b4: $81
	db   $fc                                         ; $70b5: $fc
	nop                                              ; $70b6: $00
	inc  b                                           ; $70b7: $04
	add  d                                           ; $70b8: $82
	ld   a, h                                        ; $70b9: $7c
	ld   bc, $877f                                   ; $70ba: $01 $7f $87
	add  e                                           ; $70bd: $83
	db   $fc                                         ; $70be: $fc
	nop                                              ; $70bf: $00
	add  h                                           ; $70c0: $84
	add  h                                           ; $70c1: $84
	jr   nz, jr_08d_7044                             ; $70c2: $20 $80

	ccf                                              ; $70c4: $3f
	add  b                                           ; $70c5: $80
	ldh  [$83], a                                    ; $70c6: $e0 $83
	jr   nz, jr_08d_70ce                             ; $70c8: $20 $04

	ld   a, a                                        ; $70ca: $7f
	sbc  a                                           ; $70cb: $9f
	sub  b                                           ; $70cc: $90
	sbc  a                                           ; $70cd: $9f

jr_08d_70ce:
	xor  a                                           ; $70ce: $af
	add  c                                           ; $70cf: $81
	cp   a                                           ; $70d0: $bf
	ld   [bc], a                                     ; $70d1: $02
	or   b                                           ; $70d2: $b0
	cp   a                                           ; $70d3: $bf
	adc  a                                           ; $70d4: $8f
	add  e                                           ; $70d5: $83

jr_08d_70d6:
	sbc  a                                           ; $70d6: $9f
	ld   [bc], a                                     ; $70d7: $02
	ld   bc, $31f1                                   ; $70d8: $01 $f1 $31
	add  b                                           ; $70db: $80
	pop  af                                          ; $70dc: $f1
	add  b                                           ; $70dd: $80
	rst  $38                                         ; $70de: $ff
	ld   bc, $30f1                                   ; $70df: $01 $f1 $30
	add  l                                           ; $70e2: $85
	pop  af                                          ; $70e3: $f1
	nop                                              ; $70e4: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70e5: $cf
	add  d                                           ; $70e6: $82
	rst  $38                                         ; $70e7: $ff
	inc  bc                                          ; $70e8: $03
	cp   $e0                                         ; $70e9: $fe $e0
	rst  $38                                         ; $70eb: $ff
	rra                                              ; $70ec: $1f
	add  c                                           ; $70ed: $81
	rst  $38                                         ; $70ee: $ff
	add  b                                           ; $70ef: $80
	ld   e, a                                        ; $70f0: $5f
	add  b                                           ; $70f1: $80
	xor  d                                           ; $70f2: $aa
	add  b                                           ; $70f3: $80
	rst  $38                                         ; $70f4: $ff
	ld   [bc], a                                     ; $70f5: $02
	cp   $ff                                         ; $70f6: $fe $ff
	cp   $80                                         ; $70f8: $fe $80
	ld   b, d                                        ; $70fa: $42
	add  b                                           ; $70fb: $80
	cp   l                                           ; $70fc: $bd
	add  e                                           ; $70fd: $83
	rst  $38                                         ; $70fe: $ff
	add  b                                           ; $70ff: $80
	xor  d                                           ; $7100: $aa
	nop                                              ; $7101: $00
	ret  nz                                          ; $7102: $c0

	add  b                                           ; $7103: $80
	cp   a                                           ; $7104: $bf
	ld   bc, $003f                                   ; $7105: $01 $3f $00
	add  e                                           ; $7108: $83
	rst  $38                                         ; $7109: $ff
	add  b                                           ; $710a: $80
	ld   [$5580], a                                  ; $710b: $ea $80 $55
	add  b                                           ; $710e: $80
	xor  d                                           ; $710f: $aa
	dec  b                                           ; $7110: $05
	jr   nc, @+$01                                   ; $7111: $30 $ff

	cp   a                                           ; $7113: $bf
	rst  $38                                         ; $7114: $ff
	ld   e, a                                        ; $7115: $5f
	rst  JumpTable                                         ; $7116: $df
	add  b                                           ; $7117: $80
	adc  a                                           ; $7118: $8f
	ld   bc, $4f48                                   ; $7119: $01 $48 $4f
	add  b                                           ; $711c: $80
	adc  a                                           ; $711d: $8f
	add  b                                           ; $711e: $80
	ld   c, a                                        ; $711f: $4f
	add  b                                           ; $7120: $80
	adc  a                                           ; $7121: $8f
	ld   bc, $80f7                                   ; $7122: $01 $f7 $80
	add  b                                           ; $7125: $80
	and  b                                           ; $7126: $a0
	add  b                                           ; $7127: $80
	add  b                                           ; $7128: $80
	add  b                                           ; $7129: $80
	xor  d                                           ; $712a: $aa
	add  a                                           ; $712b: $87
	add  b                                           ; $712c: $80
	add  c                                           ; $712d: $81
	nop                                              ; $712e: $00
	add  b                                           ; $712f: $80
	db   $10                                         ; $7130: $10
	add  b                                           ; $7131: $80
	ld   bc, $0086                                   ; $7132: $01 $86 $00
	ld   bc, $2810                                   ; $7135: $01 $10 $28
	add  b                                           ; $7138: $80
	ld   a, [hl+]                                    ; $7139: $2a
	add  [hl]                                        ; $713a: $86
	jr   z, @+$04                                    ; $713b: $28 $02

	db   $10                                         ; $713d: $10
	jr   c, jr_08d_7150                              ; $713e: $38 $10

	add  b                                           ; $7140: $80
	jr   c, jr_08d_7143                              ; $7141: $38 $00

jr_08d_7143:
	nop                                              ; $7143: $00
	add  b                                           ; $7144: $80
	and  d                                           ; $7145: $a2
	add  h                                           ; $7146: $84
	nop                                              ; $7147: $00
	add  b                                           ; $7148: $80
	ld   a, [de]                                     ; $7149: $1a
	add  d                                           ; $714a: $82
	nop                                              ; $714b: $00
	ld   bc, $101f                                   ; $714c: $01 $1f $10

jr_08d_714f:
	add  b                                           ; $714f: $80

jr_08d_7150:
	jr   nz, jr_08d_70d6                             ; $7150: $20 $84

	nop                                              ; $7152: $00
	add  b                                           ; $7153: $80
	ld   h, b                                        ; $7154: $60
	add  d                                           ; $7155: $82
	nop                                              ; $7156: $00
	inc  b                                           ; $7157: $04
	rst  $30                                         ; $7158: $f7
	rlca                                             ; $7159: $07
	inc  b                                           ; $715a: $04
	rlca                                             ; $715b: $07
	dec  bc                                          ; $715c: $0b
	add  e                                           ; $715d: $83
	rrca                                             ; $715e: $0f
	ld   [bc], a                                     ; $715f: $02
	ld   b, $07                                      ; $7160: $06 $07
	ld   bc, $0781                                   ; $7162: $01 $81 $07
	ld   [bc], a                                     ; $7165: $02
	cp   $f3                                         ; $7166: $fe $f3
	ldh  a, [c]                                      ; $7168: $f2
	add  l                                           ; $7169: $85
	sub  d                                           ; $716a: $92
	ld   [$ff93], sp                                 ; $716b: $08 $93 $ff
	cp   $44                                         ; $716e: $fe $44
	nop                                              ; $7170: $00
	rst  $38                                         ; $7171: $ff
	cp   e                                           ; $7172: $bb
	db   $fc                                         ; $7173: $fc
	inc  b                                           ; $7174: $04
	add  e                                           ; $7175: $83
	db   $fc                                         ; $7176: $fc
	ld   [bc], a                                     ; $7177: $02
	db   $f4                                         ; $7178: $f4
	rst  $38                                         ; $7179: $ff
	rrca                                             ; $717a: $0f
	add  b                                           ; $717b: $80
	ld   a, [$fd80]                                  ; $717c: $fa $80 $fd
	inc  bc                                          ; $717f: $03
	rst  $38                                         ; $7180: $ff
	or   $9f                                         ; $7181: $f6 $9f
	sub  c                                           ; $7183: $91
	add  e                                           ; $7184: $83
	sub  a                                           ; $7185: $97
	ld   [bc], a                                     ; $7186: $02
	adc  b                                           ; $7187: $88
	rst  $28                                         ; $7188: $ef
	rst  $30                                         ; $7189: $f7
	add  b                                           ; $718a: $80
	daa                                              ; $718b: $27
	inc  bc                                          ; $718c: $03
	rst  JumpTable                                         ; $718d: $df
	ret  c                                           ; $718e: $d8

	ld   hl, sp+$1f                                  ; $718f: $f8 $1f
	add  h                                           ; $7191: $84
	pop  af                                          ; $7192: $f1
	ld   b, $ff                                      ; $7193: $06 $ff
	rra                                              ; $7195: $1f
	add  sp, -$20                                    ; $7196: $e8 $e0
	rst  $38                                         ; $7198: $ff
	rst  $30                                         ; $7199: $f7
	rst  $38                                         ; $719a: $ff
	add  b                                           ; $719b: $80
	nop                                              ; $719c: $00
	ld   [bc], a                                     ; $719d: $02
	db   $fc                                         ; $719e: $fc
	dec  de                                          ; $719f: $1b
	ld   a, [de]                                     ; $71a0: $1a
	add  c                                           ; $71a1: $81
	dec  de                                          ; $71a2: $1b
	rlca                                             ; $71a3: $07
	dec  b                                           ; $71a4: $05
	rst  $20                                         ; $71a5: $e7
	ei                                               ; $71a6: $fb
	inc  de                                          ; $71a7: $13
	inc  bc                                          ; $71a8: $03
	db   $fc                                         ; $71a9: $fc
	db   $ec                                         ; $71aa: $ec
	db   $fd                                         ; $71ab: $fd
	add  b                                           ; $71ac: $80
	nop                                              ; $71ad: $00
	ld   [bc], a                                     ; $71ae: $02
	inc  a                                           ; $71af: $3c
	sbc  $7e                                         ; $71b0: $de $7e
	add  l                                           ; $71b2: $85
	cp   [hl]                                        ; $71b3: $be
	ld   [$00df], sp                                 ; $71b4: $08 $df $00
	dec  d                                           ; $71b7: $15
	nop                                              ; $71b8: $00
	ld   d, l                                        ; $71b9: $55
	dec  b                                           ; $71ba: $05
	dec  a                                           ; $71bb: $3d
	db   $fc                                         ; $71bc: $fc
	inc  b                                           ; $71bd: $04
	add  b                                           ; $71be: $80
	ld   a, a                                        ; $71bf: $7f
	ld   [$787a], sp                                 ; $71c0: $08 $7a $78
	ld   a, a                                        ; $71c3: $7f
	ld   a, l                                        ; $71c4: $7d
	ld   b, b                                        ; $71c5: $40
	ret  nz                                          ; $71c6: $c0

	dec  d                                           ; $71c7: $15
	ld   b, b                                        ; $71c8: $40
	nop                                              ; $71c9: $00
	add  c                                           ; $71ca: $81
	ld   d, l                                        ; $71cb: $55
	add  b                                           ; $71cc: $80
	jr   nz, jr_08d_714f                             ; $71cd: $20 $80

	rst  $38                                         ; $71cf: $ff
	add  b                                           ; $71d0: $80
	nop                                              ; $71d1: $00
	add  b                                           ; $71d2: $80
	rst  $38                                         ; $71d3: $ff
	add  b                                           ; $71d4: $80
	nop                                              ; $71d5: $00
	nop                                              ; $71d6: $00
	ld   d, l                                        ; $71d7: $55
	add  b                                           ; $71d8: $80
	nop                                              ; $71d9: $00
	add  b                                           ; $71da: $80
	ld   d, l                                        ; $71db: $55
	ld   [$9f05], sp                                 ; $71dc: $08 $05 $9f
	adc  a                                           ; $71df: $8f
	sbc  a                                           ; $71e0: $9f
	rst  JumpTable                                         ; $71e1: $df
	sbc  a                                           ; $71e2: $9f
	rra                                              ; $71e3: $1f
	db   $fc                                         ; $71e4: $fc
	ld   a, h                                        ; $71e5: $7c
	add  b                                           ; $71e6: $80
	ld   bc, $6d00                                   ; $71e7: $01 $00 $6d
	add  b                                           ; $71ea: $80
	nop                                              ; $71eb: $00
	add  c                                           ; $71ec: $81
	ld   l, l                                        ; $71ed: $6d
	add  b                                           ; $71ee: $80
	rst  $38                                         ; $71ef: $ff
	dec  b                                           ; $71f0: $05
	ret                                              ; $71f1: $c9


	ret  z                                           ; $71f2: $c8

	or   $f7                                         ; $71f3: $f6 $f7
	nop                                              ; $71f5: $00
	ld   bc, $bb80                                   ; $71f6: $01 $80 $bb
	nop                                              ; $71f9: $00
	cp   d                                           ; $71fa: $ba
	add  b                                           ; $71fb: $80
	ld   bc, $ba06                                   ; $71fc: $01 $06 $ba
	cp   e                                           ; $71ff: $bb
	db   $10                                         ; $7200: $10
	ld   d, l                                        ; $7201: $55
	nop                                              ; $7202: $00
	rst  $38                                         ; $7203: $ff
	nop                                              ; $7204: $00
	add  b                                           ; $7205: $80
	rst  $38                                         ; $7206: $ff
	nop                                              ; $7207: $00
	nop                                              ; $7208: $00
	add  c                                           ; $7209: $81
	cp   e                                           ; $720a: $bb
	nop                                              ; $720b: $00
	nop                                              ; $720c: $00
	add  b                                           ; $720d: $80
	cp   e                                           ; $720e: $bb
	ld   b, $00                                      ; $720f: $06 $00
	cp   e                                           ; $7211: $bb
	cp   a                                           ; $7212: $bf
	ld   a, a                                        ; $7213: $7f
	nop                                              ; $7214: $00
	rst  $38                                         ; $7215: $ff
	nop                                              ; $7216: $00
	add  b                                           ; $7217: $80
	rst  $38                                         ; $7218: $ff
	inc  b                                           ; $7219: $04
	ccf                                              ; $721a: $3f
	add  b                                           ; $721b: $80
	cp   a                                           ; $721c: $bf
	add  b                                           ; $721d: $80
	nop                                              ; $721e: $00
	add  b                                           ; $721f: $80
	cp   a                                           ; $7220: $bf
	ld   bc, $bf00                                   ; $7221: $01 $00 $bf
	add  b                                           ; $7224: $80
	rst  $38                                         ; $7225: $ff
	ld   [bc], a                                     ; $7226: $02
	inc  b                                           ; $7227: $04
	ei                                               ; $7228: $fb
	ld   [$f981], sp                                 ; $7229: $08 $81 $f9
	ld   bc, $f10e                                   ; $722c: $01 $0e $f1
	add  b                                           ; $722f: $80
	ld   c, $08                                      ; $7230: $0e $08
	db   $fd                                         ; $7232: $fd
	ei                                               ; $7233: $fb
	ld   [bc], a                                     ; $7234: $02
	ei                                               ; $7235: $fb
	or   $cf                                         ; $7236: $f6 $cf
	cpl                                              ; $7238: $2f
	rst  $28                                         ; $7239: $ef
	ccf                                              ; $723a: $3f
	add  c                                           ; $723b: $81
	rst  $38                                         ; $723c: $ff
	ld   bc, $df1f                                   ; $723d: $01 $1f $df
	add  b                                           ; $7240: $80
	rra                                              ; $7241: $1f
	add  b                                           ; $7242: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7243: $cf
	ld   [bc], a                                     ; $7244: $02
	cpl                                              ; $7245: $2f
	rst  $28                                         ; $7246: $ef
	daa                                              ; $7247: $27
	adc  c                                           ; $7248: $89
	jr   z, jr_08d_724b                              ; $7249: $28 $00

jr_08d_724b:
	inc  a                                           ; $724b: $3c
	add  c                                           ; $724c: $81
	db   $fc                                         ; $724d: $fc
	ld   bc, $05fd                                   ; $724e: $01 $fd $05
	adc  d                                           ; $7251: $8a
	nop                                              ; $7252: $00
	add  b                                           ; $7253: $80
	ld   [bc], a                                     ; $7254: $02
	ld   bc, $404f                                   ; $7255: $01 $4f $40
	adc  b                                           ; $7258: $88
	nop                                              ; $7259: $00
	add  b                                           ; $725a: $80
	ld   b, b                                        ; $725b: $40
	add  b                                           ; $725c: $80
	jr   nz, jr_08d_7260                             ; $725d: $20 $01

	rst  $30                                         ; $725f: $f7

jr_08d_7260:
	rlca                                             ; $7260: $07
	add  b                                           ; $7261: $80
	nop                                              ; $7262: $00
	inc  bc                                          ; $7263: $03
	inc  c                                           ; $7264: $0c
	rrca                                             ; $7265: $0f
	inc  bc                                          ; $7266: $03
	rrca                                             ; $7267: $0f
	add  b                                           ; $7268: $80
	inc  c                                           ; $7269: $0c
	add  b                                           ; $726a: $80
	nop                                              ; $726b: $00
	add  b                                           ; $726c: $80
	ld   bc, $0a80                                   ; $726d: $01 $80 $0a
	ld   bc, $c0cf                                   ; $7270: $01 $cf $c0
	add  b                                           ; $7273: $80
	ccf                                              ; $7274: $3f
	nop                                              ; $7275: $00
	nop                                              ; $7276: $00
	add  c                                           ; $7277: $81
	rst  $38                                         ; $7278: $ff
	add  b                                           ; $7279: $80
	nop                                              ; $727a: $00
	dec  bc                                          ; $727b: $0b
	ret  nz                                          ; $727c: $c0

	ldh  [rAUD4LEN], a                               ; $727d: $e0 $20
	db   $10                                         ; $727f: $10
	ld   d, d                                        ; $7280: $52
	ld   c, d                                        ; $7281: $4a
	rst  $30                                         ; $7282: $f7
	nop                                              ; $7283: $00
	ret  nz                                          ; $7284: $c0

	rst  $38                                         ; $7285: $ff
	ccf                                              ; $7286: $3f
	rst  $38                                         ; $7287: $ff
	add  b                                           ; $7288: $80
	ret  nz                                          ; $7289: $c0

	dec  b                                           ; $728a: $05
	inc  c                                           ; $728b: $0c
	ld   c, $12                                      ; $728c: $0e $12
	ld   de, $2425                                   ; $728e: $11 $25 $24
	add  b                                           ; $7291: $80
	and  h                                           ; $7292: $a4
	ld   [bc], a                                     ; $7293: $02
	ld   hl, sp+$07                                  ; $7294: $f8 $07
	nop                                              ; $7296: $00
	add  c                                           ; $7297: $81
	rst  $38                                         ; $7298: $ff
	add  h                                           ; $7299: $84
	nop                                              ; $729a: $00
	ld   b, $29                                      ; $729b: $06 $29
	xor  c                                           ; $729d: $a9
	ld   d, l                                        ; $729e: $55
	push de                                          ; $729f: $d5
	nop                                              ; $72a0: $00
	rst  $38                                         ; $72a1: $ff
	nop                                              ; $72a2: $00
	add  c                                           ; $72a3: $81
	rst  $38                                         ; $72a4: $ff
	add  b                                           ; $72a5: $80
	nop                                              ; $72a6: $00
	dec  b                                           ; $72a7: $05
	ld   [hl], b                                     ; $72a8: $70
	ld   a, b                                        ; $72a9: $78
	add  b                                           ; $72aa: $80
	adc  h                                           ; $72ab: $8c
	inc  h                                           ; $72ac: $24
	ld   [hl+], a                                    ; $72ad: $22
	add  b                                           ; $72ae: $80
	ld   [hl], a                                     ; $72af: $77
	ld   [bc], a                                     ; $72b0: $02
	ld   [bc], a                                     ; $72b1: $02
	db   $fd                                         ; $72b2: $fd
	nop                                              ; $72b3: $00
	add  c                                           ; $72b4: $81
	db   $fd                                         ; $72b5: $fd
	add  h                                           ; $72b6: $84
	nop                                              ; $72b7: $00
	add  b                                           ; $72b8: $80
	xor  c                                           ; $72b9: $a9
	add  b                                           ; $72ba: $80
	db   $fd                                         ; $72bb: $fd
	inc  bc                                          ; $72bc: $03
	dec  b                                           ; $72bd: $05
	ld   d, l                                        ; $72be: $55
	dec  b                                           ; $72bf: $05
	ld   d, l                                        ; $72c0: $55
	add  b                                           ; $72c1: $80
	ld   d, b                                        ; $72c2: $50
	add  d                                           ; $72c3: $82
	nop                                              ; $72c4: $00
	add  b                                           ; $72c5: $80
	ld   bc, $5586                                   ; $72c6: $01 $86 $55
	add  d                                           ; $72c9: $82
	nop                                              ; $72ca: $00
	add  b                                           ; $72cb: $80
	ld   bc, $5580                                   ; $72cc: $01 $80 $55
	add  d                                           ; $72cf: $82
	ld   d, h                                        ; $72d0: $54
	add  d                                           ; $72d1: $82
	ld   d, l                                        ; $72d2: $55
	add  b                                           ; $72d3: $80
	nop                                              ; $72d4: $00
	ld   [bc], a                                     ; $72d5: $02
	ld   d, b                                        ; $72d6: $50
	ld   d, h                                        ; $72d7: $54
	inc  b                                           ; $72d8: $04
	add  c                                           ; $72d9: $81
	nop                                              ; $72da: $00
	ld   bc, $5554                                   ; $72db: $01 $54 $55
	add  b                                           ; $72de: $80
	ld   bc, $6c00                                   ; $72df: $01 $00 $6c
	add  c                                           ; $72e2: $81
	ld   l, l                                        ; $72e3: $6d
	add  h                                           ; $72e4: $84
	nop                                              ; $72e5: $00
	add  h                                           ; $72e6: $84
	ld   l, l                                        ; $72e7: $6d
	add  b                                           ; $72e8: $80
	cp   e                                           ; $72e9: $bb
	add  b                                           ; $72ea: $80
	cp   d                                           ; $72eb: $ba
	add  d                                           ; $72ec: $82
	nop                                              ; $72ed: $00
	add  b                                           ; $72ee: $80
	ld   bc, $bb86                                   ; $72ef: $01 $86 $bb
	add  h                                           ; $72f2: $84
	nop                                              ; $72f3: $00
	nop                                              ; $72f4: $00
	cp   d                                           ; $72f5: $ba
	add  l                                           ; $72f6: $85
	cp   e                                           ; $72f7: $bb
	ld   bc, $bfbe                                   ; $72f8: $01 $be $bf
	add  h                                           ; $72fb: $84
	nop                                              ; $72fc: $00
	nop                                              ; $72fd: $00
	rlca                                             ; $72fe: $07
	add  b                                           ; $72ff: $80
	sbc  a                                           ; $7300: $9f
	add  e                                           ; $7301: $83
	rrca                                             ; $7302: $0f
	ld   [bc], a                                     ; $7303: $02
	db   $fd                                         ; $7304: $fd
	ei                                               ; $7305: $fb
	ld   c, $81                                      ; $7306: $0e $81
	nop                                              ; $7308: $00
	ld   [bc], a                                     ; $7309: $02
	rrca                                             ; $730a: $0f
	dec  bc                                          ; $730b: $0b
	pop  af                                          ; $730c: $f1
	add  l                                           ; $730d: $85
	ei                                               ; $730e: $fb
	ld   [bc], a                                     ; $730f: $02
	pop  bc                                          ; $7310: $c1
	rst  $38                                         ; $7311: $ff
	scf                                              ; $7312: $37
	add  b                                           ; $7313: $80
	rra                                              ; $7314: $1f
	ld   [bc], a                                     ; $7315: $02
	rrca                                             ; $7316: $0f
	rst  $28                                         ; $7317: $ef
	rst  $20                                         ; $7318: $e7
	add  l                                           ; $7319: $85
	rst  $28                                         ; $731a: $ef
	ld   [bc], a                                     ; $731b: $02
	xor  $d5                                         ; $731c: $ee $d5
	call nc, $aa80                                   ; $731e: $d4 $80 $aa
	add  b                                           ; $7321: $80
	push de                                          ; $7322: $d5
	add  b                                           ; $7323: $80
	adc  b                                           ; $7324: $88
	add  b                                           ; $7325: $80
	sub  l                                           ; $7326: $95
	add  b                                           ; $7327: $80
	and  b                                           ; $7328: $a0
	add  b                                           ; $7329: $80
	sub  b                                           ; $732a: $90
	inc  bc                                          ; $732b: $03
	ld   hl, sp+$07                                  ; $732c: $f8 $07
	rst  $38                                         ; $732e: $ff
	nop                                              ; $732f: $00
	add  b                                           ; $7330: $80
	add  b                                           ; $7331: $80
	add  [hl]                                        ; $7332: $86
	nop                                              ; $7333: $00
	add  b                                           ; $7334: $80
	ld   d, l                                        ; $7335: $55
	ld   [bc], a                                     ; $7336: $02
	nop                                              ; $7337: $00
	rst  $38                                         ; $7338: $ff
	ei                                               ; $7339: $fb
	add  l                                           ; $733a: $85
	db   $fc                                         ; $733b: $fc
	add  b                                           ; $733c: $80
	db   $fd                                         ; $733d: $fd
	add  b                                           ; $733e: $80
	db   $fc                                         ; $733f: $fc
	add  b                                           ; $7340: $80
	rst  $38                                         ; $7341: $ff
	inc  bc                                          ; $7342: $03
	ld   hl, sp-$01                                  ; $7343: $f8 $ff
	cp   $01                                         ; $7345: $fe $01
	add  b                                           ; $7347: $80
	nop                                              ; $7348: $00
	add  b                                           ; $7349: $80
	ld   de, $ab80                                   ; $734a: $11 $80 $ab
	add  b                                           ; $734d: $80
	ret  nz                                          ; $734e: $c0

	add  b                                           ; $734f: $80
	nop                                              ; $7350: $00
	inc  b                                           ; $7351: $04
	ld   sp, hl                                      ; $7352: $f9
	rst  $38                                         ; $7353: $ff
	ld   b, $ff                                      ; $7354: $06 $ff
	ldh  a, [$81]                                    ; $7356: $f0 $81
	nop                                              ; $7358: $00
	add  b                                           ; $7359: $80
	ld   d, b                                        ; $735a: $50
	add  b                                           ; $735b: $80
	ldh  a, [$82]                                    ; $735c: $f0 $82
	nop                                              ; $735e: $00
	dec  b                                           ; $735f: $05
	and  b                                           ; $7360: $a0
	ldh  a, [$50]                                    ; $7361: $f0 $50
	ldh  a, [$0d]                                    ; $7363: $f0 $0d
	ld   [bc], a                                     ; $7365: $02
	add  [hl]                                        ; $7366: $86
	ld   a, [bc]                                     ; $7367: $0a
	ld   [$0f02], sp                                 ; $7368: $08 $02 $0f
	ld   [bc], a                                     ; $736b: $02
	rrca                                             ; $736c: $0f
	nop                                              ; $736d: $00
	rrca                                             ; $736e: $0f
	ld   e, $e9                                      ; $736f: $1e $e9
	ld   b, e                                        ; $7371: $43
	add  c                                           ; $7372: $81
	ld   c, e                                        ; $7373: $4b
	add  b                                           ; $7374: $80
	db   $eb                                         ; $7375: $eb
	add  b                                           ; $7376: $80

Call_08d_7377:
	ld   c, e                                        ; $7377: $4b
	rlca                                             ; $7378: $07
	ld   [$0cfb], sp                                 ; $7379: $08 $fb $0c
	rst  $38                                         ; $737c: $ff
	nop                                              ; $737d: $00
	rst  $38                                         ; $737e: $ff
	pop  de                                          ; $737f: $d1
	ld   l, $82                                      ; $7380: $2e $82
	and  h                                           ; $7382: $a4
	add  b                                           ; $7383: $80
	xor  [hl]                                        ; $7384: $ae
	add  b                                           ; $7385: $80
	and  h                                           ; $7386: $a4
	ld   b, $20                                      ; $7387: $06 $20
	rst  $38                                         ; $7389: $ff
	jr   nz, @+$01                                   ; $738a: $20 $ff

	nop                                              ; $738c: $00
	rst  $38                                         ; $738d: $ff
	ld   [bc], a                                     ; $738e: $02
	add  a                                           ; $738f: $87
	db   $fd                                         ; $7390: $fd
	ld   b, $81                                      ; $7391: $06 $81
	db   $fd                                         ; $7393: $fd
	add  e                                           ; $7394: $83
	rst  $38                                         ; $7395: $ff
	nop                                              ; $7396: $00
	rst  $38                                         ; $7397: $ff
	call c, $2381                                    ; $7398: $dc $81 $23
	add  b                                           ; $739b: $80
	ld   a, a                                        ; $739c: $7f
	add  d                                           ; $739d: $82
	inc  hl                                          ; $739e: $23
	ld   b, $03                                      ; $739f: $06 $03
	rst  $38                                         ; $73a1: $ff
	inc  bc                                          ; $73a2: $03
	rst  $38                                         ; $73a3: $ff
	nop                                              ; $73a4: $00
	rst  $38                                         ; $73a5: $ff
	ld   [bc], a                                     ; $73a6: $02
	add  a                                           ; $73a7: $87
	db   $fd                                         ; $73a8: $fd
	ld   b, $00                                      ; $73a9: $06 $00
	db   $fd                                         ; $73ab: $fd
	nop                                              ; $73ac: $00
	db   $fd                                         ; $73ad: $fd
	nop                                              ; $73ae: $00
	rst  $38                                         ; $73af: $ff
	xor  d                                           ; $73b0: $aa
	add  a                                           ; $73b1: $87
	ld   d, l                                        ; $73b2: $55
	ld   b, $00                                      ; $73b3: $06 $00
	ld   d, l                                        ; $73b5: $55
	nop                                              ; $73b6: $00
	ld   d, l                                        ; $73b7: $55
	nop                                              ; $73b8: $00
	rst  $38                                         ; $73b9: $ff
	xor  e                                           ; $73ba: $ab
	add  a                                           ; $73bb: $87
	ld   d, h                                        ; $73bc: $54
	ld   b, $05                                      ; $73bd: $06 $05
	ld   d, l                                        ; $73bf: $55
	dec  b                                           ; $73c0: $05
	ld   d, l                                        ; $73c1: $55
	nop                                              ; $73c2: $00
	rst  $38                                         ; $73c3: $ff
	cp   $81                                         ; $73c4: $fe $81
	ld   bc, $5580                                   ; $73c6: $01 $80 $55
	add  d                                           ; $73c9: $82
	ld   bc, $5582                                   ; $73ca: $01 $82 $55
	ld   [bc], a                                     ; $73cd: $02
	nop                                              ; $73ce: $00
	rst  $38                                         ; $73cf: $ff
	sub  d                                           ; $73d0: $92
	add  a                                           ; $73d1: $87
	ld   l, l                                        ; $73d2: $6d
	ld   b, $00                                      ; $73d3: $06 $00
	ld   l, l                                        ; $73d5: $6d
	nop                                              ; $73d6: $00
	ld   l, l                                        ; $73d7: $6d
	nop                                              ; $73d8: $00
	rst  $38                                         ; $73d9: $ff
	ld   b, h                                        ; $73da: $44
	add  l                                           ; $73db: $85
	cp   e                                           ; $73dc: $bb
	ld   [$bbba], sp                                 ; $73dd: $08 $ba $bb
	nop                                              ; $73e0: $00
	cp   e                                           ; $73e1: $bb
	ld   bc, $00bb                                   ; $73e2: $01 $bb $00
	rst  $38                                         ; $73e5: $ff
	ld   b, l                                        ; $73e6: $45
	add  l                                           ; $73e7: $85
	cp   e                                           ; $73e8: $bb
	ld   [$bb01], sp                                 ; $73e9: $08 $01 $bb
	nop                                              ; $73ec: $00
	cp   e                                           ; $73ed: $bb
	or   b                                           ; $73ee: $b0
	cp   a                                           ; $73ef: $bf
	rrca                                             ; $73f0: $0f
	rst  $38                                         ; $73f1: $ff
	ld   hl, sp-$7b                                  ; $73f2: $f8 $85
	rrca                                             ; $73f4: $0f
	inc  b                                           ; $73f5: $04
	ld   [$00df], sp                                 ; $73f6: $08 $df $00
	rst  JumpTable                                         ; $73f9: $df
	nop                                              ; $73fa: $00
	add  c                                           ; $73fb: $81
	rst  JumpTable                                         ; $73fc: $df
	nop                                              ; $73fd: $00
	ld   a, [hl+]                                    ; $73fe: $2a

Call_08d_73ff:
	add  l                                           ; $73ff: $85
	ei                                               ; $7400: $fb
	inc  b                                           ; $7401: $04
	ld   a, [bc]                                     ; $7402: $0a
	ei                                               ; $7403: $fb
	dec  bc                                          ; $7404: $0b
	ei                                               ; $7405: $fb
	dec  bc                                          ; $7406: $0b
	add  c                                           ; $7407: $81
	ei                                               ; $7408: $fb
	rlca                                             ; $7409: $07
	rla                                              ; $740a: $17
	rst  $28                                         ; $740b: $ef
	add  sp, -$20                                    ; $740c: $e8 $e0
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $740e: $cf
	rst  $38                                         ; $740f: $ff
	jp   $8203                                       ; $7410: $c3 $03 $82


	rst  $38                                         ; $7413: $ff
	ld   [bc], a                                     ; $7414: $02
	rst  $20                                         ; $7415: $e7
	rst  $38                                         ; $7416: $ff
	rst  $20                                         ; $7417: $e7
	add  c                                           ; $7418: $81
	rst  $38                                         ; $7419: $ff
	add  b                                           ; $741a: $80
	nop                                              ; $741b: $00
	add  d                                           ; $741c: $82
	rst  $38                                         ; $741d: $ff
	ld   b, $fc                                      ; $741e: $06 $fc
	rst  $38                                         ; $7420: $ff
	db   $fc                                         ; $7421: $fc
	rst  $38                                         ; $7422: $ff
	ld   hl, $21ff                                   ; $7423: $21 $ff $21
	add  c                                           ; $7426: $81
	rst  $38                                         ; $7427: $ff
	add  b                                           ; $7428: $80
	rrca                                             ; $7429: $0f
	ld   a, [bc]                                     ; $742a: $0a
	cp   $ff                                         ; $742b: $fe $ff
	cp   $ff                                         ; $742d: $fe $ff
	inc  b                                           ; $742f: $04
	rst  $38                                         ; $7430: $ff
	inc  b                                           ; $7431: $04
	rst  $38                                         ; $7432: $ff
	inc  b                                           ; $7433: $04
	rst  $38                                         ; $7434: $ff
	inc  b                                           ; $7435: $04
	add  e                                           ; $7436: $83
	rst  $38                                         ; $7437: $ff
	dec  hl                                          ; $7438: $2b
	nop                                              ; $7439: $00
	rst  $38                                         ; $743a: $ff
	ld   bc, $0efe                                   ; $743b: $01 $fe $0e
	rst  $38                                         ; $743e: $ff
	ld   bc, $61f0                                   ; $743f: $01 $f0 $61
	rst  $38                                         ; $7442: $ff
	ld   h, c                                        ; $7443: $61
	rst  $38                                         ; $7444: $ff
	ld   hl, sp-$01                                  ; $7445: $f8 $ff
	ld   hl, sp-$01                                  ; $7447: $f8 $ff
	dec  b                                           ; $7449: $05
	rst  $38                                         ; $744a: $ff
	ei                                               ; $744b: $fb
	ld   bc, $ff18                                   ; $744c: $01 $18 $ff
	add  sp, $0f                                     ; $744f: $e8 $0f
	add  b                                           ; $7451: $80
	rst  $38                                         ; $7452: $ff
	add  b                                           ; $7453: $80
	rst  $38                                         ; $7454: $ff
	nop                                              ; $7455: $00
	ldh  a, [rP1]                                    ; $7456: $f0 $00
	ldh  a, [rP1]                                    ; $7458: $f0 $00
	ldh  a, [rP1]                                    ; $745a: $f0 $00
	ldh  a, [rP1]                                    ; $745c: $f0 $00
	ldh  a, [rP1]                                    ; $745e: $f0 $00
	ldh  a, [rP1]                                    ; $7460: $f0 $00
	ldh  a, [rP1]                                    ; $7462: $f0 $00
	ldh  a, [$84]                                    ; $7464: $f0 $84
	rrca                                             ; $7466: $0f
	inc  b                                           ; $7467: $04
	ld   c, $0f                                      ; $7468: $0e $0f
	add  hl, bc                                      ; $746a: $09
	inc  c                                           ; $746b: $0c
	inc  b                                           ; $746c: $04
	add  b                                           ; $746d: $80
	ld   c, $81                                      ; $746e: $0e $81
	rrca                                             ; $7470: $0f
	nop                                              ; $7471: $00
	ldh  a, [$81]                                    ; $7472: $f0 $81
	rst  $38                                         ; $7474: $ff
	ld   [bc], a                                     ; $7475: $02
	di                                               ; $7476: $f3
	rst  $38                                         ; $7477: $ff
	inc  c                                           ; $7478: $0c
	add  h                                           ; $7479: $84
	nop                                              ; $747a: $00
	add  b                                           ; $747b: $80
	add  b                                           ; $747c: $80
	inc  bc                                          ; $747d: $03
	ld   [bc], a                                     ; $747e: $02
	ld   a, [$e7ff]                                  ; $747f: $fa $ff $e7
	add  b                                           ; $7482: $80
	di                                               ; $7483: $f3
	inc  bc                                          ; $7484: $03
	rst  $38                                         ; $7485: $ff
	ld   l, l                                        ; $7486: $6d
	rst  $38                                         ; $7487: $ff
	adc  l                                           ; $7488: $8d
	add  b                                           ; $7489: $80
	inc  b                                           ; $748a: $04
	add  d                                           ; $748b: $82
	nop                                              ; $748c: $00
	add  b                                           ; $748d: $80
	inc  bc                                          ; $748e: $03
	add  b                                           ; $748f: $80
	add  b                                           ; $7490: $80
	add  b                                           ; $7491: $80
	ret  c                                           ; $7492: $d8

	inc  b                                           ; $7493: $04
	rst  $38                                         ; $7494: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7495: $cf
	cp   $f2                                         ; $7496: $fe $f2
	ccf                                              ; $7498: $3f
	add  b                                           ; $7499: $80
	rrca                                             ; $749a: $0f
	nop                                              ; $749b: $00
	inc  bc                                          ; $749c: $03
	add  b                                           ; $749d: $80
	ld   b, $80                                      ; $749e: $06 $80
	ret  nc                                          ; $74a0: $d0

	add  d                                           ; $74a1: $82
	nop                                              ; $74a2: $00
	add  d                                           ; $74a3: $82
	ld   bc, $8080                                   ; $74a4: $01 $80 $80
	add  b                                           ; $74a7: $80
	ld   e, $80                                      ; $74a8: $1e $80
	jr   c, jr_08d_74ac                              ; $74aa: $38 $00

jr_08d_74ac:
	nop                                              ; $74ac: $00
	add  c                                           ; $74ad: $81
	ld   a, a                                        ; $74ae: $7f
	dec  b                                           ; $74af: $05
	rst  $38                                         ; $74b0: $ff
	ld   a, a                                        ; $74b1: $7f
	rst  $38                                         ; $74b2: $ff
	ldh  a, [c]                                      ; $74b3: $f2
	di                                               ; $74b4: $f3
	ld   bc, $6280                                   ; $74b5: $01 $80 $62
	add  e                                           ; $74b8: $83
	nop                                              ; $74b9: $00
	add  h                                           ; $74ba: $84
	rst  $38                                         ; $74bb: $ff
	inc  bc                                          ; $74bc: $03
	rrca                                             ; $74bd: $0f
	ccf                                              ; $74be: $3f
	scf                                              ; $74bf: $37
	rlca                                             ; $74c0: $07
	add  b                                           ; $74c1: $80
	inc  bc                                          ; $74c2: $03
	nop                                              ; $74c3: $00
	ld   bc, $0381                                   ; $74c4: $01 $81 $03
	nop                                              ; $74c7: $00
	db   $fd                                         ; $74c8: $fd
	adc  c                                           ; $74c9: $89
	rst  $38                                         ; $74ca: $ff
	inc  b                                           ; $74cb: $04
	db   $fc                                         ; $74cc: $fc
	cp   $c2                                         ; $74cd: $fe $c2
	ldh  [$df], a                                    ; $74cf: $e0 $df
	adc  c                                           ; $74d1: $89
	rst  $38                                         ; $74d2: $ff
	db   $10                                         ; $74d3: $10
	rlca                                             ; $74d4: $07
	rrca                                             ; $74d5: $0f
	ld   a, [bc]                                     ; $74d6: $0a
	inc  bc                                          ; $74d7: $03
	rst  $38                                         ; $74d8: $ff
	cp   $fc                                         ; $74d9: $fe $fc
	cp   $c2                                         ; $74db: $fe $c2
	ld   hl, sp+$38                                  ; $74dd: $f8 $38
	cp   $1e                                         ; $74df: $fe $1e
	rst  $38                                         ; $74e1: $ff
	rst  $20                                         ; $74e2: $e7
	rst  $38                                         ; $74e3: $ff
	ld   hl, sp-$7f                                  ; $74e4: $f8 $81
	rst  $38                                         ; $74e6: $ff
	nop                                              ; $74e7: $00
	nop                                              ; $74e8: $00
	add  b                                           ; $74e9: $80
	ld   b, b                                        ; $74ea: $40
	add  h                                           ; $74eb: $84
	nop                                              ; $74ec: $00
	inc  bc                                          ; $74ed: $03
	cp   a                                           ; $74ee: $bf
	db   $fc                                         ; $74ef: $fc
	rst  $38                                         ; $74f0: $ff
	ld   b, e                                        ; $74f1: $43
	add  c                                           ; $74f2: $81
	rst  $38                                         ; $74f3: $ff
	nop                                              ; $74f4: $00
	nop                                              ; $74f5: $00
	add  b                                           ; $74f6: $80
	ld   a, a                                        ; $74f7: $7f
	add  c                                           ; $74f8: $81
	nop                                              ; $74f9: $00
	nop                                              ; $74fa: $00
	ld   bc, $3f80                                   ; $74fb: $01 $80 $3f
	add  c                                           ; $74fe: $81
	rst  $38                                         ; $74ff: $ff
	inc  b                                           ; $7500: $04
	db   $fd                                         ; $7501: $fd
	rst  $38                                         ; $7502: $ff
	cp   $ff                                         ; $7503: $fe $ff
	dec  bc                                          ; $7505: $0b
	add  e                                           ; $7506: $83
	rst  $38                                         ; $7507: $ff
	nop                                              ; $7508: $00
	cp   $83                                         ; $7509: $fe $83
	rst  $38                                         ; $750b: $ff
	nop                                              ; $750c: $00
	rst  $30                                         ; $750d: $f7
	add  c                                           ; $750e: $81
	rst  $38                                         ; $750f: $ff
	nop                                              ; $7510: $00
	nop                                              ; $7511: $00
	adc  c                                           ; $7512: $89
	rst  $38                                         ; $7513: $ff
	nop                                              ; $7514: $00
	ld   a, a                                        ; $7515: $7f
	add  c                                           ; $7516: $81
	rst  $38                                         ; $7517: $ff
	nop                                              ; $7518: $00
	add  b                                           ; $7519: $80
	sbc  a                                           ; $751a: $9f
	rst  $38                                         ; $751b: $ff

jr_08d_751c:
	jr   nz, jr_08d_751c                             ; $751c: $20 $fe

	rst  $38                                         ; $751e: $ff
	pop  af                                          ; $751f: $f1
	ld   hl, sp-$38                                  ; $7520: $f8 $c8
	ldh  [rAUD4LEN], a                               ; $7522: $e0 $20
	ret  nz                                          ; $7524: $c0

	nop                                              ; $7525: $00
	ldh  a, [$d0]                                    ; $7526: $f0 $d0
	cp   $1e                                         ; $7528: $fe $1e
	ret  nz                                          ; $752a: $c0

	cp   [hl]                                        ; $752b: $be
	ld   c, [hl]                                     ; $752c: $4e
	ld   c, b                                        ; $752d: $48
	ld   c, c                                        ; $752e: $49
	ld   d, b                                        ; $752f: $50
	ld   b, a                                        ; $7530: $47
	ld   b, c                                        ; $7531: $41
	ld   a, a                                        ; $7532: $7f
	ld   b, a                                        ; $7533: $47
	ld   l, a                                        ; $7534: $6f
	ld   c, h                                        ; $7535: $4c
	ld   c, a                                        ; $7536: $4f
	ld   b, b                                        ; $7537: $40
	ld   c, a                                        ; $7538: $4f
	inc  bc                                          ; $7539: $03
	ld   c, a                                        ; $753a: $4f
	adc  a                                           ; $753b: $8f
	add  b                                           ; $753c: $80
	nop                                              ; $753d: $00
	add  b                                           ; $753e: $80
	add  b                                           ; $753f: $80
	add  b                                           ; $7540: $80
	add  c                                           ; $7541: $81

jr_08d_7542:
	dec  bc                                          ; $7542: $0b
	add  [hl]                                        ; $7543: $86
	add  h                                           ; $7544: $84
	cp   d                                           ; $7545: $ba
	inc  sp                                          ; $7546: $33
	db   $eb                                         ; $7547: $eb
	jp   z, $eeea                                    ; $7548: $ca $ea $ee

	xor  [hl]                                        ; $754b: $ae
	xor  a                                           ; $754c: $af
	jr   nc, jr_08d_755f                             ; $754d: $30 $10

	add  b                                           ; $754f: $80
	ld   [hl], b                                     ; $7550: $70
	inc  b                                           ; $7551: $04
	ldh  a, [$50]                                    ; $7552: $f0 $50
	or   b                                           ; $7554: $b0
	ldh  a, [$e0]                                    ; $7555: $f0 $e0
	add  d                                           ; $7557: $82
	and  b                                           ; $7558: $a0
	add  b                                           ; $7559: $80
	ldh  [rP1], a                                    ; $755a: $e0 $00
	ldh  a, [$87]                                    ; $755c: $f0 $87
	rrca                                             ; $755e: $0f

jr_08d_755f:
	nop                                              ; $755f: $00
	nop                                              ; $7560: $00
	add  e                                           ; $7561: $83
	rrca                                             ; $7562: $0f
	nop                                              ; $7563: $00
	nop                                              ; $7564: $00
	add  b                                           ; $7565: $80
	add  e                                           ; $7566: $83
	add  b                                           ; $7567: $80
	ldh  a, [$80]                                    ; $7568: $f0 $80
	cp   $09                                         ; $756a: $fe $09
	rst  $38                                         ; $756c: $ff
	ld   [hl], c                                     ; $756d: $71
	rst  $38                                         ; $756e: $ff
	sub  c                                           ; $756f: $91
	rst  $38                                         ; $7570: $ff
	ldh  [rIE], a                                    ; $7571: $e0 $ff
	call nz, $3bff                                   ; $7573: $c4 $ff $3b
	add  b                                           ; $7576: $80
	ld   bc, $0080                                   ; $7577: $01 $80 $00
	add  b                                           ; $757a: $80
	rlca                                             ; $757b: $07
	add  hl, bc                                      ; $757c: $09
	rst  $38                                         ; $757d: $ff
	ret  nz                                          ; $757e: $c0

	rst  $38                                         ; $757f: $ff
	rra                                              ; $7580: $1f
	rst  $38                                         ; $7581: $ff
	cp   a                                           ; $7582: $bf
	rst  $38                                         ; $7583: $ff
	rst  JumpTable                                         ; $7584: $df
	rst  $38                                         ; $7585: $ff
	ld   b, b                                        ; $7586: $40
	add  b                                           ; $7587: $80
	ldh  [$80], a                                    ; $7588: $e0 $80
	nop                                              ; $758a: $00
	add  b                                           ; $758b: $80
	add  b                                           ; $758c: $80
	dec  b                                           ; $758d: $05
	ld   hl, sp-$78                                  ; $758e: $f8 $88
	ld   hl, sp+$74                                  ; $7590: $f8 $74
	cp   $fd                                         ; $7592: $fe $fd
	add  c                                           ; $7594: $81
	rst  $38                                         ; $7595: $ff
	add  c                                           ; $7596: $81
	nop                                              ; $7597: $00
	add  b                                           ; $7598: $80
	ld   b, $80                                      ; $7599: $06 $80
	ld   c, $80                                      ; $759b: $0e $80
	ld   b, b                                        ; $759d: $40
	add  b                                           ; $759e: $80
	ld   b, e                                        ; $759f: $43
	inc  b                                           ; $75a0: $04
	rst  $38                                         ; $75a1: $ff
	rrca                                             ; $75a2: $0f
	rst  $38                                         ; $75a3: $ff
	ldh  a, [rIE]                                    ; $75a4: $f0 $ff
	add  l                                           ; $75a6: $85
	nop                                              ; $75a7: $00
	add  c                                           ; $75a8: $81
	ldh  [rTMA], a                                   ; $75a9: $e0 $06
	pop  hl                                          ; $75ab: $e1
	rst  $30                                         ; $75ac: $f7
	push af                                          ; $75ad: $f5
	rst  $38                                         ; $75ae: $ff
	ld   [hl], e                                     ; $75af: $73
	rst  $38                                         ; $75b0: $ff
	ld   [hl], b                                     ; $75b1: $70
	add  b                                           ; $75b2: $80
	ld   bc, $0084                                   ; $75b3: $01 $84 $00
	add  b                                           ; $75b6: $80
	ld   hl, sp+$05                                  ; $75b7: $f8 $05
	rst  $38                                         ; $75b9: $ff
	ld   a, a                                        ; $75ba: $7f
	rst  $38                                         ; $75bb: $ff
	add  b                                           ; $75bc: $80
	rst  $38                                         ; $75bd: $ff
	nop                                              ; $75be: $00
	add  b                                           ; $75bf: $80
	jr   nc, jr_08d_7542                             ; $75c0: $30 $80

	ld   a, $82                                      ; $75c2: $3e $82
	ld   bc, $0380                                   ; $75c4: $01 $80 $03
	dec  b                                           ; $75c7: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75c8: $cf
	call z, Call_08d_73ff                            ; $75c9: $cc $ff $73
	rst  $38                                         ; $75cc: $ff
	ld   [hl], b                                     ; $75cd: $70
	add  d                                           ; $75ce: $82
	nop                                              ; $75cf: $00
	add  b                                           ; $75d0: $80
	ret  nz                                          ; $75d1: $c0

	inc  bc                                          ; $75d2: $03
	add  a                                           ; $75d3: $87
	add  [hl]                                        ; $75d4: $86
	rst  $38                                         ; $75d5: $ff
	ld   bc, $ff83                                   ; $75d6: $01 $83 $ff
	ld   [bc], a                                     ; $75d9: $02
	ccf                                              ; $75da: $3f
	ld   a, a                                        ; $75db: $7f
	ld   b, b                                        ; $75dc: $40
	add  c                                           ; $75dd: $81
	nop                                              ; $75de: $00
	ld   [bc], a                                     ; $75df: $02
	ccf                                              ; $75e0: $3f
	rst  $38                                         ; $75e1: $ff
	ccf                                              ; $75e2: $3f
	add  l                                           ; $75e3: $85
	rst  $38                                         ; $75e4: $ff
	ld   b, $f8                                      ; $75e5: $06 $f8
	rst  $38                                         ; $75e7: $ff
	ld   h, [hl]                                     ; $75e8: $66
	di                                               ; $75e9: $f3
	pop  hl                                          ; $75ea: $e1
	rst  $38                                         ; $75eb: $ff
	ld   [hl], e                                     ; $75ec: $73
	add  a                                           ; $75ed: $87
	rst  $38                                         ; $75ee: $ff
	nop                                              ; $75ef: $00
	ld   [bc], a                                     ; $75f0: $02
	add  c                                           ; $75f1: $81
	rst  $38                                         ; $75f2: $ff
	ld   [bc], a                                     ; $75f3: $02
	ld   a, [$fdff]                                  ; $75f4: $fa $ff $fd
	add  c                                           ; $75f7: $81
	rst  $38                                         ; $75f8: $ff
	inc  bc                                          ; $75f9: $03
	or   $fe                                         ; $75fa: $f6 $fe
	ld   a, [$80f8]                                  ; $75fc: $fa $f8 $80
	rst  $30                                         ; $75ff: $f7
	nop                                              ; $7600: $00
	rlca                                             ; $7601: $07
	add  c                                           ; $7602: $81
	rst  $38                                         ; $7603: $ff
	add  b                                           ; $7604: $80
	db   $fc                                         ; $7605: $fc
	ld   bc, $f2fa                                   ; $7606: $01 $fa $f2
	add  b                                           ; $7609: $80
	adc  $02                                         ; $760a: $ce $02
	ccf                                              ; $760c: $3f
	jr   c, @-$06                                    ; $760d: $38 $f8

	add  b                                           ; $760f: $80
	ldh  [$03], a                                    ; $7610: $e0 $03
	add  c                                           ; $7612: $81
	cp   $ff                                         ; $7613: $fe $ff
	cp   a                                           ; $7615: $bf
	add  c                                           ; $7616: $81
	rst  $38                                         ; $7617: $ff
	add  c                                           ; $7618: $81
	ccf                                              ; $7619: $3f
	add  b                                           ; $761a: $80
	rra                                              ; $761b: $1f
	dec  b                                           ; $761c: $05
	rrca                                             ; $761d: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $761e: $cf
	rlca                                             ; $761f: $07
	inc  sp                                          ; $7620: $33
	add  a                                           ; $7621: $87
	ld   [hl], e                                     ; $7622: $73
	add  b                                           ; $7623: $80
	cp   $80                                         ; $7624: $fe $80
	ld   hl, sp-$80                                  ; $7626: $f8 $80
	db   $fc                                         ; $7628: $fc
	add  c                                           ; $7629: $81
	rst  $38                                         ; $762a: $ff
	rlca                                             ; $762b: $07
	db   $fc                                         ; $762c: $fc
	di                                               ; $762d: $f3
	rst  $38                                         ; $762e: $ff
	adc  a                                           ; $762f: $8f
	cp   a                                           ; $7630: $bf
	rst  $38                                         ; $7631: $ff
	ret  nz                                          ; $7632: $c0

	nop                                              ; $7633: $00
	add  b                                           ; $7634: $80
	ld   bc, $0780                                   ; $7635: $01 $80 $07
	add  b                                           ; $7638: $80
	rra                                              ; $7639: $1f
	add  e                                           ; $763a: $83
	rst  $38                                         ; $763b: $ff
	add  b                                           ; $763c: $80
	cp   $02                                         ; $763d: $fe $02
	ldh  a, [rSVBK]                                  ; $763f: $f0 $70
	ld   a, a                                        ; $7641: $7f
	add  c                                           ; $7642: $81
	rst  $38                                         ; $7643: $ff
	add  b                                           ; $7644: $80
	cp   $80                                         ; $7645: $fe $80
	ld   hl, sp-$80                                  ; $7647: $f8 $80
	ldh  [$80], a                                    ; $7649: $e0 $80
	add  b                                           ; $764b: $80
	add  b                                           ; $764c: $80
	nop                                              ; $764d: $00
	nop                                              ; $764e: $00
	ld   bc, $bb80                                   ; $764f: $01 $80 $bb
	ld   [de], a                                     ; $7652: $12
	jp   hl                                          ; $7653: $e9


	rst  $28                                         ; $7654: $ef
	and  a                                           ; $7655: $a7
	cp   l                                           ; $7656: $bd
	sbc  l                                           ; $7657: $9d
	or   a                                           ; $7658: $b7
	or   l                                           ; $7659: $b5
	rst  JumpTable                                         ; $765a: $df
	rst  $10                                         ; $765b: $d7
	ei                                               ; $765c: $fb
	ld   d, h                                        ; $765d: $54
	or   $61                                         ; $765e: $f6 $61
	di                                               ; $7660: $f3
	ld   a, [hl]                                     ; $7661: $7e
	ldh  a, [$d0]                                    ; $7662: $f0 $d0
	ld   [hl], b                                     ; $7664: $70
	ld   b, b                                        ; $7665: $40
	add  b                                           ; $7666: $80
	ldh  a, [$09]                                    ; $7667: $f0 $09
	ld   [hl], b                                     ; $7669: $70
	ret  nc                                          ; $766a: $d0

	ldh  a, [$d0]                                    ; $766b: $f0 $d0
	ldh  a, [$30]                                    ; $766d: $f0 $30
	ldh  a, [$50]                                    ; $766f: $f0 $50
	ldh  a, [$cf]                                    ; $7671: $f0 $cf
	add  e                                           ; $7673: $83
	rrca                                             ; $7674: $0f
	ld   [bc], a                                     ; $7675: $02
	ld   c, $0f                                      ; $7676: $0e $0f
	ld   bc, $0083                                   ; $7678: $01 $83 $00
	inc  b                                           ; $767b: $04
	ld   bc, $fe0f                                   ; $767c: $01 $0f $fe
	rst  $38                                         ; $767f: $ff
	ldh  a, [$81]                                    ; $7680: $f0 $81
	rst  $38                                         ; $7682: $ff
	inc  b                                           ; $7683: $04
	ld   a, a                                        ; $7684: $7f
	rst  $38                                         ; $7685: $ff
	sbc  c                                           ; $7686: $99
	rra                                              ; $7687: $1f
	ld   b, $80                                      ; $7688: $06 $80
	nop                                              ; $768a: $00
	add  hl, bc                                      ; $768b: $09
	rst  $30                                         ; $768c: $f7
	ld   [$1fff], sp                                 ; $768d: $08 $ff $1f
	rst  $38                                         ; $7690: $ff
	rra                                              ; $7691: $1f
	rst  $38                                         ; $7692: $ff
	add  b                                           ; $7693: $80
	rst  $38                                         ; $7694: $ff
	add  b                                           ; $7695: $80
	add  c                                           ; $7696: $81
	rst  $38                                         ; $7697: $ff
	ld   [bc], a                                     ; $7698: $02
	rlca                                             ; $7699: $07
	rrca                                             ; $769a: $0f
	rst  $30                                         ; $769b: $f7
	sbc  l                                           ; $769c: $9d
	rst  $38                                         ; $769d: $ff
	nop                                              ; $769e: $00
	db   $fc                                         ; $769f: $fc
	add  c                                           ; $76a0: $81
	rst  $38                                         ; $76a1: $ff
	nop                                              ; $76a2: $00
	db   $fc                                         ; $76a3: $fc
	add  c                                           ; $76a4: $81
	rst  $38                                         ; $76a5: $ff
	dec  c                                           ; $76a6: $0d
	cp   $ff                                         ; $76a7: $fe $ff
	pop  hl                                          ; $76a9: $e1
	ldh  a, [$d0]                                    ; $76aa: $f0 $d0
	ldh  [hScriptOpcodeParams], a                                    ; $76ac: $e0 $a0
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76ae: $cf
	ld   c, a                                        ; $76af: $4f
	rst  $38                                         ; $76b0: $ff
	sbc  h                                           ; $76b1: $9c
	rst  $38                                         ; $76b2: $ff
	ld   h, e                                        ; $76b3: $63
	rst  $38                                         ; $76b4: $ff
	add  b                                           ; $76b5: $80
	ldh  [$83], a                                    ; $76b6: $e0 $83
	nop                                              ; $76b8: $00
	add  b                                           ; $76b9: $80
	ld   hl, $c780                                   ; $76ba: $21 $80 $c7
	rlca                                             ; $76bd: $07
	rst  $38                                         ; $76be: $ff
	ld   a, [hl]                                     ; $76bf: $7e
	rst  $38                                         ; $76c0: $ff
	add  c                                           ; $76c1: $81
	rst  $38                                         ; $76c2: $ff
	ld   h, b                                        ; $76c3: $60
	ld   h, d                                        ; $76c4: $62
	ld   [bc], a                                     ; $76c5: $02
	add  d                                           ; $76c6: $82
	nop                                              ; $76c7: $00
	add  b                                           ; $76c8: $80
	ret  nz                                          ; $76c9: $c0

	add  b                                           ; $76ca: $80
	ld   bc, $ff01                                   ; $76cb: $01 $01 $ff
	nop                                              ; $76ce: $00
	add  c                                           ; $76cf: $81
	rst  $38                                         ; $76d0: $ff
	nop                                              ; $76d1: $00
	inc  bc                                          ; $76d2: $03
	add  b                                           ; $76d3: $80
	ccf                                              ; $76d4: $3f
	ld   [bc], a                                     ; $76d5: $02
	rlca                                             ; $76d6: $07
	inc  b                                           ; $76d7: $04
	nop                                              ; $76d8: $00
	add  b                                           ; $76d9: $80
	ld   bc, $0f02                                   ; $76da: $01 $02 $0f
	sbc  a                                           ; $76dd: $9f
	ld   l, a                                        ; $76de: $6f
	add  c                                           ; $76df: $81
	rst  $38                                         ; $76e0: $ff
	ld   [$e001], sp                                 ; $76e1: $08 $01 $e0
	and  $e0                                         ; $76e4: $e6 $e0
	add  sp, -$20                                    ; $76e6: $e8 $e0
	ldh  a, [$60]                                    ; $76e8: $f0 $60
	ld   b, b                                        ; $76ea: $40
	add  b                                           ; $76eb: $80
	push bc                                          ; $76ec: $c5
	add  e                                           ; $76ed: $83
	call $0d07                                       ; $76ee: $cd $07 $0d
	ld   bc, $0703                                   ; $76f1: $01 $03 $07
	rrca                                             ; $76f4: $0f
	rra                                              ; $76f5: $1f
	ccf                                              ; $76f6: $3f
	ld   a, a                                        ; $76f7: $7f
	add  b                                           ; $76f8: $80
	rst  $38                                         ; $76f9: $ff
	ld   b, $f7                                      ; $76fa: $06 $f7
	di                                               ; $76fc: $f3
	rst  $10                                         ; $76fd: $d7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $76fe: $cf
	ld   c, a                                        ; $76ff: $4f
	ccf                                              ; $7700: $3f
	add  hl, sp                                      ; $7701: $39
	add  c                                           ; $7702: $81
	add  h                                           ; $7703: $84
	add  e                                           ; $7704: $83
	call nz, $e381                                   ; $7705: $c4 $81 $e3
	add  b                                           ; $7708: $80
	rst  $30                                         ; $7709: $f7
	add  b                                           ; $770a: $80
	rst  $38                                         ; $770b: $ff
	ld   [$ff5d], sp                                 ; $770c: $08 $5d $ff
	ld   sp, hl                                      ; $770f: $f9
	rst  $38                                         ; $7710: $ff
	rst  $20                                         ; $7711: $e7
	rst  $38                                         ; $7712: $ff
	sbc  a                                           ; $7713: $9f
	rst  $38                                         ; $7714: $ff
	ld   a, a                                        ; $7715: $7f
	add  b                                           ; $7716: $80
	rst  $38                                         ; $7717: $ff
	add  b                                           ; $7718: $80
	cp   $80                                         ; $7719: $fe $80
	ldh  a, [$80]                                    ; $771b: $f0 $80
	ret  nz                                          ; $771d: $c0

	add  d                                           ; $771e: $82
	rst  $38                                         ; $771f: $ff
	add  b                                           ; $7720: $80
	ld   hl, sp-$80                                  ; $7721: $f8 $80
	ldh  [$80], a                                    ; $7723: $e0 $80
	add  b                                           ; $7725: $80
	nop                                              ; $7726: $00
	nop                                              ; $7727: $00
	add  b                                           ; $7728: $80
	ld   bc, $0780                                   ; $7729: $01 $80 $07
	nop                                              ; $772c: $00
	nop                                              ; $772d: $00
	add  b                                           ; $772e: $80
	ret  nz                                          ; $772f: $c0

	add  c                                           ; $7730: $81
	nop                                              ; $7731: $00
	add  b                                           ; $7732: $80
	inc  bc                                          ; $7733: $03
	dec  [hl]                                        ; $7734: $35
	ld   c, $0f                                      ; $7735: $0e $0f
	ld   [hl], c                                     ; $7737: $71
	ld   a, [hl]                                     ; $7738: $7e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7739: $cf
	pop  af                                          ; $773a: $f1
	ld   a, [hl-]                                    ; $773b: $3a
	jp   z, $07c6                                    ; $773c: $ca $c6 $07

	dec  e                                           ; $773f: $1d
	rra                                              ; $7740: $1f
	pop  hl                                          ; $7741: $e1
	db   $fd                                         ; $7742: $fd
	sbc  e                                           ; $7743: $9b
	pop  hl                                          ; $7744: $e1
	ld   a, l                                        ; $7745: $7d
	sub  c                                           ; $7746: $91
	cp   e                                           ; $7747: $bb
	inc  hl                                          ; $7748: $23
	halt                                             ; $7749: $76
	ld   b, a                                        ; $774a: $47
	db   $ec                                         ; $774b: $ec
	adc  [hl]                                        ; $774c: $8e
	jp   nc, Jump_08d_50f0                           ; $774d: $d2 $f0 $50

	ldh  a, [rBCPS]                                  ; $7750: $f0 $68
	ld   hl, sp-$26                                  ; $7752: $f8 $da
	rst  $38                                         ; $7754: $ff
	ld   e, l                                        ; $7755: $5d
	rst  $38                                         ; $7756: $ff
	ld   [hl], l                                     ; $7757: $75
	rst  $38                                         ; $7758: $ff
	ld   d, a                                        ; $7759: $57
	rst  $38                                         ; $775a: $ff
	ld   e, [hl]                                     ; $775b: $5e
	rst  $38                                         ; $775c: $ff
	dec  sp                                          ; $775d: $3b
	ld   [hl], b                                     ; $775e: $70
	jr   nc, @+$72                                   ; $775f: $30 $70

	ret  nc                                          ; $7761: $d0

	ldh  a, [$50]                                    ; $7762: $f0 $50
	ldh  a, [rSVBK]                                  ; $7764: $f0 $70
	ldh  a, [$e0]                                    ; $7766: $f0 $e0
	ldh  a, [hScriptOpcodeParams]                                    ; $7768: $f0 $a0
	ldh  [$80], a                                    ; $776a: $e0 $80
	add  b                                           ; $776c: $80
	nop                                              ; $776d: $00
	rst  $38                                         ; $776e: $ff
	adc  c                                           ; $776f: $89
	rrca                                             ; $7770: $0f
	inc  b                                           ; $7771: $04
	dec  b                                           ; $7772: $05
	rrca                                             ; $7773: $0f
	ld   bc, $fb0f                                   ; $7774: $01 $0f $fb
	add  e                                           ; $7777: $83
	rst  $38                                         ; $7778: $ff
	ld   [$fffe], sp                                 ; $7779: $08 $fe $ff
	call nc, $c4ff                                   ; $777c: $d4 $ff $c4
	rst  $38                                         ; $777f: $ff
	db   $ed                                         ; $7780: $ed
	rst  $38                                         ; $7781: $ff
	db   $fc                                         ; $7782: $fc
	add  e                                           ; $7783: $83
	rst  $38                                         ; $7784: $ff
	inc  c                                           ; $7785: $0c
	rst  JumpTable                                         ; $7786: $df
	rst  $38                                         ; $7787: $ff
	adc  d                                           ; $7788: $8a
	rst  $38                                         ; $7789: $ff
	inc  b                                           ; $778a: $04
	rst  $38                                         ; $778b: $ff
	ld   c, $f3                                      ; $778c: $0e $f3
	ld   d, e                                        ; $778e: $53
	nop                                              ; $778f: $00
	ret  nz                                          ; $7790: $c0

	db   $e3                                         ; $7791: $e3
	call c, $ff87                                    ; $7792: $dc $87 $ff
	ld   b, $63                                      ; $7795: $06 $63
	rst  $38                                         ; $7797: $ff
	sbc  e                                           ; $7798: $9b
	rrca                                             ; $7799: $0f
	db   $10                                         ; $779a: $10
	cp   $19                                         ; $779b: $fe $19
	adc  c                                           ; $779d: $89
	rst  $38                                         ; $779e: $ff
	inc  b                                           ; $779f: $04
	add  e                                           ; $77a0: $83
	rst  $38                                         ; $77a1: $ff
	ld   [hl], e                                     ; $77a2: $73
	ccf                                              ; $77a3: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77a4: $cf
	add  c                                           ; $77a5: $81
	rst  $38                                         ; $77a6: $ff
	inc  b                                           ; $77a7: $04
	cp   $ff                                         ; $77a8: $fe $ff
	ld   sp, hl                                      ; $77aa: $f9
	cp   $f9                                         ; $77ab: $fe $f9
	add  l                                           ; $77ad: $85
	rst  $38                                         ; $77ae: $ff
	ld   [bc], a                                     ; $77af: $02
	ccf                                              ; $77b0: $3f
	call z, $80ec                                    ; $77b1: $cc $ec $80
	db   $ed                                         ; $77b4: $ed
	ld   bc, $1c0c                                   ; $77b5: $01 $0c $1c

jr_08d_77b8:
	add  b                                           ; $77b8: $80
	dec  c                                           ; $77b9: $0d
	inc  bc                                          ; $77ba: $03
	db   $fc                                         ; $77bb: $fc
	db   $ec                                         ; $77bc: $ec
	db   $fd                                         ; $77bd: $fd
	db   $dd                                         ; $77be: $dd
	add  b                                           ; $77bf: $80
	db   $fc                                         ; $77c0: $fc
	ld   bc, $3bfd                                   ; $77c1: $01 $fd $3b
	add  b                                           ; $77c4: $80
	ld   e, a                                        ; $77c5: $5f
	add  a                                           ; $77c6: $87
	sbc  a                                           ; $77c7: $9f
	rlca                                             ; $77c8: $07
	sub  a                                           ; $77c9: $97
	cp   a                                           ; $77ca: $bf
	sbc  e                                           ; $77cb: $9b
	rst  $38                                         ; $77cc: $ff
	adc  c                                           ; $77cd: $89
	rst  $38                                         ; $77ce: $ff
	ei                                               ; $77cf: $fb
	ld   hl, sp-$7c                                  ; $77d0: $f8 $84
	ldh  a, [$80]                                    ; $77d2: $f0 $80
	pop  af                                          ; $77d4: $f1
	inc  b                                           ; $77d5: $04
	or   $f7                                         ; $77d6: $f6 $f7
	db   $fd                                         ; $77d8: $fd
	cp   $a2                                         ; $77d9: $fe $a2
	add  c                                           ; $77db: $81
	nop                                              ; $77dc: $00
	add  b                                           ; $77dd: $80
	inc  bc                                          ; $77de: $03
	inc  de                                          ; $77df: $13
	inc  c                                           ; $77e0: $0c
	rrca                                             ; $77e1: $0f
	ld   [hl], e                                     ; $77e2: $73
	ld   a, h                                        ; $77e3: $7c
	adc  [hl]                                        ; $77e4: $8e
	ldh  a, [c]                                      ; $77e5: $f2
	ld   [hl], l                                     ; $77e6: $75
	add  l                                           ; $77e7: $85
	xor  e                                           ; $77e8: $ab
	dec  hl                                          ; $77e9: $2b
	jr   c, jr_08d_782b                              ; $77ea: $38 $3f

	rst  $20                                         ; $77ec: $e7
	ld   hl, sp-$63                                  ; $77ed: $f8 $9d
	push hl                                          ; $77ef: $e5
	ld   l, d                                        ; $77f0: $6a
	adc  d                                           ; $77f1: $8a
	rst  $10                                         ; $77f2: $d7
	ld   d, a                                        ; $77f3: $57
	add  b                                           ; $77f4: $80
	xor  a                                           ; $77f5: $af
	add  b                                           ; $77f6: $80
	ld   a, a                                        ; $77f7: $7f
	inc  bc                                          ; $77f8: $03
	cp   $ff                                         ; $77f9: $fe $ff
	inc  d                                           ; $77fb: $14
	dec  d                                           ; $77fc: $15
	add  b                                           ; $77fd: $80
	xor  e                                           ; $77fe: $ab
	ld   de, $5e5f                                   ; $77ff: $11 $5f $5e
	rst  $38                                         ; $7802: $ff
	db   $fc                                         ; $7803: $fc
	cp   $f8                                         ; $7804: $fe $f8
	db   $ed                                         ; $7806: $ed
	pop  af                                          ; $7807: $f1
	adc  e                                           ; $7808: $8b
	db   $e3                                         ; $7809: $e3
	ld   d, [hl]                                     ; $780a: $56
	rst  ToBoot                                         ; $780b: $c7
	add  hl, sp                                      ; $780c: $39
	ld   e, [hl]                                     ; $780d: $5e
	ld   d, $1e                                      ; $780e: $16 $1e
	xor  a                                           ; $7810: $af
	ccf                                              ; $7811: $3f
	add  b                                           ; $7812: $80
	ld   a, a                                        ; $7813: $7f
	dec  b                                           ; $7814: $05
	rst  JumpTable                                         ; $7815: $df
	rst  $38                                         ; $7816: $ff
	cp   [hl]                                        ; $7817: $be
	rst  $38                                         ; $7818: $ff
	ld   a, a                                        ; $7819: $7f
	rst  $38                                         ; $781a: $ff
	add  b                                           ; $781b: $80
	db   $fd                                         ; $781c: $fd
	ld   bc, $7c83                                   ; $781d: $01 $83 $7c
	add  d                                           ; $7820: $82
	nop                                              ; $7821: $00
	add  b                                           ; $7822: $80
	ret  nz                                          ; $7823: $c0

	rrca                                             ; $7824: $0f
	nop                                              ; $7825: $00
	ldh  a, [$e0]                                    ; $7826: $f0 $e0
	ldh  a, [$c1]                                    ; $7828: $f0 $c1
	pop  hl                                          ; $782a: $e1

jr_08d_782b:
	add  b                                           ; $782b: $80
	ret  nz                                          ; $782c: $c0

	sbc  a                                           ; $782d: $9f
	db   $10                                         ; $782e: $10
	jr   nz, @+$32                                   ; $782f: $20 $30

	db   $10                                         ; $7831: $10
	jr   nc, jr_08d_7834                             ; $7832: $30 $00

jr_08d_7834:
	jr   nc, jr_08d_77b8                             ; $7834: $30 $82

	nop                                              ; $7836: $00
	add  b                                           ; $7837: $80
	ld   b, b                                        ; $7838: $40
	add  b                                           ; $7839: $80
	and  b                                           ; $783a: $a0
	nop                                              ; $783b: $00
	ldh  a, [$80]                                    ; $783c: $f0 $80
	ld   c, $80                                      ; $783e: $0e $80
	nop                                              ; $7840: $00
	rrca                                             ; $7841: $0f
	ld   bc, $0f03                                   ; $7842: $01 $03 $0f
	ld   b, $0f                                      ; $7845: $06 $0f
	dec  bc                                          ; $7847: $0b
	rrca                                             ; $7848: $0f
	dec  b                                           ; $7849: $05
	rrca                                             ; $784a: $0f
	nop                                              ; $784b: $00
	rrca                                             ; $784c: $0f
	ld   d, d                                        ; $784d: $52
	rst  $38                                         ; $784e: $ff
	add  a                                           ; $784f: $87
	rst  $38                                         ; $7850: $ff
	cpl                                              ; $7851: $2f
	add  e                                           ; $7852: $83
	rst  $38                                         ; $7853: $ff
	ld   c, $ab                                      ; $7854: $0e $ab
	rst  $38                                         ; $7856: $ff
	inc  bc                                          ; $7857: $03
	rst  $38                                         ; $7858: $ff
	ld   b, $ff                                      ; $7859: $06 $ff
	xor  [hl]                                        ; $785b: $ae
	rst  $38                                         ; $785c: $ff
	db   $fc                                         ; $785d: $fc
	rst  $38                                         ; $785e: $ff
	db   $e3                                         ; $785f: $e3
	ldh  a, [$e0]                                    ; $7860: $f0 $e0
	cp   $f1                                         ; $7862: $fe $f1
	add  c                                           ; $7864: $81
	rst  $38                                         ; $7865: $ff
	ld   b, $d4                                      ; $7866: $06 $d4
	cp   $94                                         ; $7868: $fe $94
	rst  $38                                         ; $786a: $ff
	cp   [hl]                                        ; $786b: $be
	rst  $38                                         ; $786c: $ff
	nop                                              ; $786d: $00
	add  b                                           ; $786e: $80
	rst  $38                                         ; $786f: $ff
	rlca                                             ; $7870: $07
	nop                                              ; $7871: $00
	rrca                                             ; $7872: $0f
	ccf                                              ; $7873: $3f
	ret  z                                           ; $7874: $c8

	cp   $86                                         ; $7875: $fe $86
	ldh  [$60], a                                    ; $7877: $e0 $60
	add  b                                           ; $7879: $80
	nop                                              ; $787a: $00
	add  hl, bc                                      ; $787b: $09
	add  b                                           ; $787c: $80
	ld   [hl], a                                     ; $787d: $77
	rst  $38                                         ; $787e: $ff
	scf                                              ; $787f: $37
	rst  $38                                         ; $7880: $ff
	cp   a                                           ; $7881: $bf
	ld   a, a                                        ; $7882: $7f
	rst  ToBoot                                         ; $7883: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7884: $cf
	ld   [$0082], sp                                 ; $7885: $08 $82 $00
	add  b                                           ; $7888: $80
	ret  nz                                          ; $7889: $c0

	inc  bc                                          ; $788a: $03
	ld   a, [hl]                                     ; $788b: $7e
	add  b                                           ; $788c: $80
	rst  $38                                         ; $788d: $ff
	cp   $81                                         ; $788e: $fe $81
	rst  $38                                         ; $7890: $ff
	ld   [bc], a                                     ; $7891: $02
	ld   bc, $c2c3                                   ; $7892: $01 $c3 $c2
	add  h                                           ; $7895: $84
	nop                                              ; $7896: $00
	inc  bc                                          ; $7897: $03
	ld   b, b                                        ; $7898: $40
	ld   a, a                                        ; $7899: $7f
	rst  $38                                         ; $789a: $ff
	ccf                                              ; $789b: $3f
	add  c                                           ; $789c: $81
	rst  $38                                         ; $789d: $ff
	ld   [bc], a                                     ; $789e: $02
	add  a                                           ; $789f: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $78a0: $cf
	ld   c, b                                        ; $78a1: $48
	add  b                                           ; $78a2: $80
	ld   [bc], a                                     ; $78a3: $02
	add  d                                           ; $78a4: $82
	nop                                              ; $78a5: $00
	ld   bc, $3fc0                                   ; $78a6: $01 $c0 $3f
	add  c                                           ; $78a9: $81
	rst  $38                                         ; $78aa: $ff
	ld   b, $00                                      ; $78ab: $06 $00
	db   $e3                                         ; $78ad: $e3
	ld   h, e                                        ; $78ae: $63
	ldh  a, [$6f]                                    ; $78af: $f0 $6f
	ccf                                              ; $78b1: $3f
	jr   nz, jr_08d_7834                             ; $78b2: $20 $80

	rra                                              ; $78b4: $1f
	add  d                                           ; $78b5: $82
	nop                                              ; $78b6: $00
	add  h                                           ; $78b7: $84
	rst  $38                                         ; $78b8: $ff
	add  hl, bc                                      ; $78b9: $09
	ccf                                              ; $78ba: $3f
	ld   a, $ff                                      ; $78bb: $3e $ff
	ld   sp, hl                                      ; $78bd: $f9
	rra                                              ; $78be: $1f
	rla                                              ; $78bf: $17
	inc  c                                           ; $78c0: $0c
	inc  e                                           ; $78c1: $1c
	jr   jr_08d_78cb                                 ; $78c2: $18 $07

	add  l                                           ; $78c4: $85
	rst  $38                                         ; $78c5: $ff
	ld   [bc], a                                     ; $78c6: $02
	ccf                                              ; $78c7: $3f
	rst  $38                                         ; $78c8: $ff
	rst  JumpTable                                         ; $78c9: $df
	add  b                                           ; $78ca: $80

jr_08d_78cb:
	rst  $38                                         ; $78cb: $ff
	inc  bc                                          ; $78cc: $03
	ld   l, a                                        ; $78cd: $6f
	ld   h, a                                        ; $78ce: $67
	inc  l                                           ; $78cf: $2c
	dec  sp                                          ; $78d0: $3b
	adc  e                                           ; $78d1: $8b
	rst  $38                                         ; $78d2: $ff
	add  b                                           ; $78d3: $80
	rra                                              ; $78d4: $1f
	nop                                              ; $78d5: $00
	ccf                                              ; $78d6: $3f
	add  b                                           ; $78d7: $80
	db   $fc                                         ; $78d8: $fc
	add  b                                           ; $78d9: $80
	db   $ed                                         ; $78da: $ed
	nop                                              ; $78db: $00
	call $ed80                                       ; $78dc: $cd $80 $ed
	add  b                                           ; $78df: $80
	db   $fd                                         ; $78e0: $fd
	ld   b, $fe                                      ; $78e1: $06 $fe
	db   $fc                                         ; $78e3: $fc
	add  e                                           ; $78e4: $83
	db   $e3                                         ; $78e5: $e3
	ld   a, a                                        ; $78e6: $7f
	adc  [hl]                                        ; $78e7: $8e
	inc  [hl]                                        ; $78e8: $34
	add  c                                           ; $78e9: $81
	rst  $38                                         ; $78ea: $ff
	ld   b, $fa                                      ; $78eb: $06 $fa
	ldh  a, [$ee]                                    ; $78ed: $f0 $ee
	adc  $be                                         ; $78ef: $ce $be
	add  hl, sp                                      ; $78f1: $39
	ld   hl, sp-$80                                  ; $78f2: $f8 $80
	ldh  [$80], a                                    ; $78f4: $e0 $80
	add  b                                           ; $78f6: $80
	ld   [bc], a                                     ; $78f7: $02
	ld   c, $57                                      ; $78f8: $0e $57

Jump_08d_78fa:
	ld   sp, hl                                      ; $78fa: $f9
	add  b                                           ; $78fb: $80
	ldh  a, [c]                                      ; $78fc: $f2
	add  b                                           ; $78fd: $80
	push af                                          ; $78fe: $f5

jr_08d_78ff:
	dec  bc                                          ; $78ff: $0b
	scf                                              ; $7900: $37
	ld   [hl], a                                     ; $7901: $77
	rlca                                             ; $7902: $07
	rla                                              ; $7903: $17
	ld   b, $cf                                      ; $7904: $06 $cf
	ld   bc, $0737                                   ; $7906: $01 $37 $07
	ld   c, $59                                      ; $7909: $0e $59
	ld   e, a                                        ; $790b: $5f
	add  b                                           ; $790c: $80
	cp   a                                           ; $790d: $bf
	ld   b, $fe                                      ; $790e: $06 $fe
	rst  $38                                         ; $7910: $ff
	pop  af                                          ; $7911: $f1
	rst  $38                                         ; $7912: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7913: $cf
	ld   hl, sp+$38                                  ; $7914: $f8 $38
	add  b                                           ; $7916: $80
	rst  $20                                         ; $7917: $e7
	add  b                                           ; $7918: $80
	inc  e                                           ; $7919: $1c
	jr   nz, jr_08d_78ff                             ; $791a: $20 $e3

	inc  de                                          ; $791c: $13
	rst  $38                                         ; $791d: $ff
	adc  a                                           ; $791e: $8f
	db   $fc                                         ; $791f: $fc
	ld   a, h                                        ; $7920: $7c
	db   $e3                                         ; $7921: $e3
	ldh  [c], a                                      ; $7922: $e2
	ld   e, $1d                                      ; $7923: $1e $1d
	ldh  a, [$f6]                                    ; $7925: $f0 $f6
	adc  b                                           ; $7927: $88
	add  l                                           ; $7928: $85
	ld   [hl], c                                     ; $7929: $71
	ld   l, e                                        ; $792a: $6b
	add  e                                           ; $792b: $83
	call c, $3b2f                                    ; $792c: $dc $2f $3b
	sbc  a                                           ; $792f: $9f
	ld   d, a                                        ; $7930: $57
	rra                                              ; $7931: $1f
	cp   a                                           ; $7932: $bf
	ccf                                              ; $7933: $3f
	ld   l, a                                        ; $7934: $6f
	ld   a, a                                        ; $7935: $7f
	rst  JumpTable                                         ; $7936: $df
	rst  $38                                         ; $7937: $ff
	cp   [hl]                                        ; $7938: $be
	cp   $7d                                         ; $7939: $fe $7d
	db   $fd                                         ; $793b: $fd
	add  b                                           ; $793c: $80
	ei                                               ; $793d: $fb
	ld   bc, $f5f4                                   ; $793e: $01 $f4 $f5
	add  b                                           ; $7941: $80
	db   $eb                                         ; $7942: $eb
	dec  bc                                          ; $7943: $0b
	call nc, $a8d6                                   ; $7944: $d4 $d6 $a8
	xor  h                                           ; $7947: $ac
	ld   d, b                                        ; $7948: $50
	ld   e, b                                        ; $7949: $58
	and  c                                           ; $794a: $a1
	or   c                                           ; $794b: $b1
	ld   b, d                                        ; $794c: $42
	ld   h, d                                        ; $794d: $62
	ld   b, h                                        ; $794e: $44
	add  h                                           ; $794f: $84
	add  b                                           ; $7950: $80
	ld   [$1580], sp                                 ; $7951: $08 $80 $15
	add  b                                           ; $7954: $80
	dec  sp                                          ; $7955: $3b
	add  b                                           ; $7956: $80
	ld   a, a                                        ; $7957: $7f
	add  b                                           ; $7958: $80
	add  sp, -$80                                    ; $7959: $e8 $80
	ld   b, e                                        ; $795b: $43
	add  b                                           ; $795c: $80
	dec  bc                                          ; $795d: $0b
	ld   bc, $404f                                   ; $795e: $01 $4f $40
	add  b                                           ; $7961: $80
	add  b                                           ; $7962: $80
	add  b                                           ; $7963: $80
	db   $10                                         ; $7964: $10
	add  b                                           ; $7965: $80
	and  b                                           ; $7966: $a0
	add  b                                           ; $7967: $80
	nop                                              ; $7968: $00
	add  b                                           ; $7969: $80
	ld   [hl], b                                     ; $796a: $70
	add  e                                           ; $796b: $83
	ldh  a, [$84]                                    ; $796c: $f0 $84
	rrca                                             ; $796e: $0f
	add  b                                           ; $796f: $80
	inc  c                                           ; $7970: $0c
	add  b                                           ; $7971: $80
	nop                                              ; $7972: $00
	add  h                                           ; $7973: $84
	rrca                                             ; $7974: $0f
	add  d                                           ; $7975: $82
	rst  $38                                         ; $7976: $ff
	add  b                                           ; $7977: $80
	db   $fc                                         ; $7978: $fc
	add  b                                           ; $7979: $80
	nop                                              ; $797a: $00
	add  b                                           ; $797b: $80
	rlca                                             ; $797c: $07
	add  h                                           ; $797d: $84
	rst  $38                                         ; $797e: $ff
	ld   bc, $c0e0                                   ; $797f: $01 $e0 $c0
	add  b                                           ; $7982: $80
	add  b                                           ; $7983: $80
	add  b                                           ; $7984: $80
	nop                                              ; $7985: $00
	add  b                                           ; $7986: $80
	ld   e, b                                        ; $7987: $58
	inc  bc                                          ; $7988: $03
	sbc  $06                                         ; $7989: $de $06
	rst  JumpTable                                         ; $798b: $df
	ret  c                                           ; $798c: $d8

	add  c                                           ; $798d: $81
	rst  JumpTable                                         ; $798e: $df
	dec  b                                           ; $798f: $05
	ld   h, b                                        ; $7990: $60
	pop  bc                                          ; $7991: $c1
	ld   [hl], c                                     ; $7992: $71
	rst  $38                                         ; $7993: $ff
	ld   [$8007], sp                                 ; $7994: $08 $07 $80
	inc  bc                                          ; $7997: $03
	add  b                                           ; $7998: $80
	nop                                              ; $7999: $00
	inc  bc                                          ; $799a: $03
	ld   bc, $60e1                                   ; $799b: $01 $e1 $60
	add  b                                           ; $799e: $80
	add  b                                           ; $799f: $80
	rst  $38                                         ; $79a0: $ff
	nop                                              ; $79a1: $00
	nop                                              ; $79a2: $00
	add  c                                           ; $79a3: $81
	rst  $38                                         ; $79a4: $ff
	nop                                              ; $79a5: $00
	nop                                              ; $79a6: $00
	add  c                                           ; $79a7: $81
	rst  $38                                         ; $79a8: $ff
	add  b                                           ; $79a9: $80
	rlca                                             ; $79aa: $07
	inc  bc                                          ; $79ab: $03
	rst  JumpTable                                         ; $79ac: $df
	rst  $38                                         ; $79ad: $ff
	inc  l                                           ; $79ae: $2c
	inc  c                                           ; $79af: $0c
	add  b                                           ; $79b0: $80
	add  b                                           ; $79b1: $80
	nop                                              ; $79b2: $00
	nop                                              ; $79b3: $00
	add  b                                           ; $79b4: $80
	ldh  [$80], a                                    ; $79b5: $e0 $80
	ret  nz                                          ; $79b7: $c0

	dec  bc                                          ; $79b8: $0b
	rst  $38                                         ; $79b9: $ff
	inc  a                                           ; $79ba: $3c
	rst  $38                                         ; $79bb: $ff
	jp   $1fff                                       ; $79bc: $c3 $ff $1f


	rst  $38                                         ; $79bf: $ff
	rst  $28                                         ; $79c0: $ef
	rra                                              ; $79c1: $1f
	rla                                              ; $79c2: $17
	rst  $38                                         ; $79c3: $ff
	ld   hl, sp-$80                                  ; $79c4: $f8 $80
	ld   h, b                                        ; $79c6: $60
	add  b                                           ; $79c7: $80
	ld   a, $03                                      ; $79c8: $3e $03
	rst  $38                                         ; $79ca: $ff
	ld   c, $ff                                      ; $79cb: $0e $ff
	pop  af                                          ; $79cd: $f1
	add  l                                           ; $79ce: $85
	rst  $38                                         ; $79cf: $ff
	add  l                                           ; $79d0: $85
	nop                                              ; $79d1: $00
	add  b                                           ; $79d2: $80
	db   $fc                                         ; $79d3: $fc
	inc  bc                                          ; $79d4: $03
	pop  hl                                          ; $79d5: $e1
	nop                                              ; $79d6: $00
	rst  $38                                         ; $79d7: $ff
	pop  hl                                          ; $79d8: $e1
	add  c                                           ; $79d9: $81
	rst  $38                                         ; $79da: $ff
	nop                                              ; $79db: $00
	rra                                              ; $79dc: $1f
	add  b                                           ; $79dd: $80
	ld   [de], a                                     ; $79de: $12
	add  b                                           ; $79df: $80
	inc  d                                           ; $79e0: $14
	add  b                                           ; $79e1: $80
	dec  b                                           ; $79e2: $05
	add  b                                           ; $79e3: $80
	inc  d                                           ; $79e4: $14
	add  d                                           ; $79e5: $82
	db   $f4                                         ; $79e6: $f4
	add  b                                           ; $79e7: $80
	push af                                          ; $79e8: $f5
	rlca                                             ; $79e9: $07
	cp   $19                                         ; $79ea: $fe $19
	rrca                                             ; $79ec: $0f
	dec  de                                          ; $79ed: $1b
	xor  a                                           ; $79ee: $af
	xor  l                                           ; $79ef: $ad
	daa                                              ; $79f0: $27
	ld   h, $80                                      ; $79f1: $26 $80
	dec  hl                                          ; $79f3: $2b
	ld   bc, $3c2c                                   ; $79f4: $01 $2c $3c
	add  b                                           ; $79f7: $80
	ld   h, e                                        ; $79f8: $63
	add  b                                           ; $79f9: $80
	sbc  a                                           ; $79fa: $9f
	dec  b                                           ; $79fb: $05
	ld   a, h                                        ; $79fc: $7c
	add  h                                           ; $79fd: $84
	ld   b, $3e                                      ; $79fe: $06 $3e
	add  hl, sp                                      ; $7a00: $39
	ld   sp, hl                                      ; $7a01: $f9
	add  b                                           ; $7a02: $80
	rst  ToBoot                                         ; $7a03: $c7
	add  b                                           ; $7a04: $80
	ccf                                              ; $7a05: $3f
	rlca                                             ; $7a06: $07
	db   $fc                                         ; $7a07: $fc
	rst  $38                                         ; $7a08: $ff
	db   $e3                                         ; $7a09: $e3
	db   $ec                                         ; $7a0a: $ec
	adc  a                                           ; $7a0b: $8f
	di                                               ; $7a0c: $f3
	ld   a, a                                        ; $7a0d: $7f
	cpl                                              ; $7a0e: $2f
	add  b                                           ; $7a0f: $80
	ld   a, b                                        ; $7a10: $78
	ld   [$c0e0], sp                                 ; $7a11: $08 $e0 $c0
	jp   $07c2                                       ; $7a14: $c3 $c2 $07


	adc  [hl]                                        ; $7a17: $8e
	adc  h                                           ; $7a18: $8c
	add  a                                           ; $7a19: $87
	add  e                                           ; $7a1a: $83
	add  d                                           ; $7a1b: $82
	rlca                                             ; $7a1c: $07
	rlca                                             ; $7a1d: $07
	nop                                              ; $7a1e: $00
	ccf                                              ; $7a1f: $3f
	ld   [hl], $f9                                   ; $7a20: $36 $f9
	or   d                                           ; $7a22: $b2
	jp   nz, $1f9c                                   ; $7a23: $c2 $9c $1f

	add  d                                           ; $7a26: $82
	rst  $38                                         ; $7a27: $ff
	ld   a, [bc]                                     ; $7a28: $0a
	pop  af                                          ; $7a29: $f1
	db   $fd                                         ; $7a2a: $fd
	adc  $f2                                         ; $7a2b: $ce $f2
	inc  sp                                          ; $7a2d: $33
	add  e                                           ; $7a2e: $83
	and  c                                           ; $7a2f: $a1
	db   $e3                                         ; $7a30: $e3
	sub  c                                           ; $7a31: $91
	ld   [hl], c                                     ; $7a32: $71
	add  hl, hl                                      ; $7a33: $29
	add  b                                           ; $7a34: $80
	sbc  c                                           ; $7a35: $99
	nop                                              ; $7a36: $00
	jp   hl                                          ; $7a37: $e9


	add  d                                           ; $7a38: $82
	push af                                          ; $7a39: $f5
	ld   [bc], a                                     ; $7a3a: $02
	ld   [hl], h                                     ; $7a3b: $74
	ld   [hl], l                                     ; $7a3c: $75
	ldh  [$80], a                                    ; $7a3d: $e0 $80
	inc  e                                           ; $7a3f: $1c
	add  b                                           ; $7a40: $80
	db   $e3                                         ; $7a41: $e3
	add  b                                           ; $7a42: $80
	rra                                              ; $7a43: $1f
	nop                                              ; $7a44: $00
	rst  $38                                         ; $7a45: $ff
	add  b                                           ; $7a46: $80
	cp   $17                                         ; $7a47: $fe $17
	pop  hl                                          ; $7a49: $e1
	db   $fc                                         ; $7a4a: $fc
	ld   h, $c0                                      ; $7a4b: $26 $c0
	add  hl, sp                                      ; $7a4d: $39
	dec  [hl]                                        ; $7a4e: $35
	ld   a, $57                                      ; $7a4f: $3e $57
	ld   c, l                                        ; $7a51: $4d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7a52: $cf
	xor  a                                           ; $7a53: $af
	adc  a                                           ; $7a54: $8f
	ld   e, e                                        ; $7a55: $5b
	rra                                              ; $7a56: $1f
	or   a                                           ; $7a57: $b7

jr_08d_7a58:
	ccf                                              ; $7a58: $3f
	ld   l, a                                        ; $7a59: $6f
	ld   a, a                                        ; $7a5a: $7f
	rst  JumpTable                                         ; $7a5b: $df
	rst  $38                                         ; $7a5c: $ff
	cp   a                                           ; $7a5d: $bf
	rst  $38                                         ; $7a5e: $ff
	ld   a, d                                        ; $7a5f: $7a
	ld   a, [$f580]                                  ; $7a60: $fa $80 $f5
	add  b                                           ; $7a63: $80
	db   $eb                                         ; $7a64: $eb
	ld   de, $d5d4                                   ; $7a65: $11 $d4 $d5
	add  sp, -$16                                    ; $7a68: $e8 $ea
	ret  nc                                          ; $7a6a: $d0

	call nc, $a9a1                                   ; $7a6b: $d4 $a1 $a9
	ld   b, e                                        ; $7a6e: $43
	ld   d, e                                        ; $7a6f: $53
	and  b                                           ; $7a70: $a0
	ret  nz                                          ; $7a71: $c0

	ld   [$9189], sp                                 ; $7a72: $08 $89 $91
	sub  e                                           ; $7a75: $93
	dec  bc                                          ; $7a76: $0b
	rrca                                             ; $7a77: $0f
	add  b                                           ; $7a78: $80
	ccf                                              ; $7a79: $3f
	add  b                                           ; $7a7a: $80
	ld   a, a                                        ; $7a7b: $7f
	add  d                                           ; $7a7c: $82
	rst  $38                                         ; $7a7d: $ff
	nop                                              ; $7a7e: $00
	ld   a, h                                        ; $7a7f: $7c
	add  b                                           ; $7a80: $80
	ld   a, e                                        ; $7a81: $7b
	inc  bc                                          ; $7a82: $03
	ei                                               ; $7a83: $fb
	cp   e                                           ; $7a84: $bb
	ei                                               ; $7a85: $fb
	call nz, $ff83                                   ; $7a86: $c4 $83 $ff
	ld   [$f8fb], sp                                 ; $7a89: $08 $fb $f8
	ret  c                                           ; $7a8c: $d8

	ldh  [$2f], a                                    ; $7a8d: $e0 $2f
	ldh  a, [$d0]                                    ; $7a8f: $f0 $d0
	ldh  a, [$30]                                    ; $7a91: $f0 $30
	add  e                                           ; $7a93: $83
	ldh  a, [rSB]                                    ; $7a94: $f0 $01
	jr   nc, jr_08d_7a58                             ; $7a96: $30 $c0

	add  d                                           ; $7a98: $82
	nop                                              ; $7a99: $00
	nop                                              ; $7a9a: $00
	ldh  a, [$8a]                                    ; $7a9b: $f0 $8a
	rrca                                             ; $7a9d: $0f
	add  b                                           ; $7a9e: $80
	inc  bc                                          ; $7a9f: $03
	add  b                                           ; $7aa0: $80
	nop                                              ; $7aa1: $00
	adc  c                                           ; $7aa2: $89
	rst  $38                                         ; $7aa3: $ff
	inc  b                                           ; $7aa4: $04
	ld   hl, sp-$02                                  ; $7aa5: $f8 $fe
	add  $2d                                         ; $7aa7: $c6 $2d
	ld   [hl-], a                                    ; $7aa9: $32
	add  d                                           ; $7aaa: $82
	rst  JumpTable                                         ; $7aab: $df
	dec  bc                                          ; $7aac: $0b
	rst  $38                                         ; $7aad: $ff
	xor  a                                           ; $7aae: $af
	rst  $38                                         ; $7aaf: $ff
	rst  $30                                         ; $7ab0: $f7
	adc  a                                           ; $7ab1: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ab2: $cf
	rst  $20                                         ; $7ab3: $e7
	ld   c, a                                        ; $7ab4: $4f
	rst  $38                                         ; $7ab5: $ff
	adc  a                                           ; $7ab6: $8f
	cp   a                                           ; $7ab7: $bf
	ld   e, a                                        ; $7ab8: $5f
	adc  h                                           ; $7ab9: $8c
	rst  $38                                         ; $7aba: $ff
	add  b                                           ; $7abb: $80
	ret  nz                                          ; $7abc: $c0

	dec  b                                           ; $7abd: $05
	rst  $38                                         ; $7abe: $ff
	pop  hl                                          ; $7abf: $e1
	rst  $38                                         ; $7ac0: $ff
	sbc  $e3                                         ; $7ac1: $de $e3
	and  e                                           ; $7ac3: $a3
	add  b                                           ; $7ac4: $80
	pop  bc                                          ; $7ac5: $c1
	ld   bc, $40c0                                   ; $7ac6: $01 $c0 $40
	add  b                                           ; $7ac9: $80
	sub  l                                           ; $7aca: $95
	add  b                                           ; $7acb: $80
	xor  c                                           ; $7acc: $a9
	ld   bc, $de21                                   ; $7acd: $01 $21 $de
	add  h                                           ; $7ad0: $84
	rst  $38                                         ; $7ad1: $ff
	ld   de, $bf7f                                   ; $7ad2: $11 $7f $bf
	ld   a, a                                        ; $7ad5: $7f
	call z, Call_08d_7377                            ; $7ad6: $cc $77 $73
	inc  [hl]                                        ; $7ad9: $34
	cp   h                                           ; $7ada: $bc
	jp   $ff3c                                       ; $7adb: $c3 $3c $ff


	cp   $ff                                         ; $7ade: $fe $ff
	ld   sp, hl                                      ; $7ae0: $f9
	cp   $e6                                         ; $7ae1: $fe $e6
	ld   sp, hl                                      ; $7ae3: $f9
	add  hl, de                                      ; $7ae4: $19
	add  b                                           ; $7ae5: $80
	rst  $20                                         ; $7ae6: $e7
	add  b                                           ; $7ae7: $80
	rra                                              ; $7ae8: $1f
	add  b                                           ; $7ae9: $80
	ld   hl, sp+$03                                  ; $7aea: $f8 $03
	pop  bc                                          ; $7aec: $c1
	ld   bc, $31f1                                   ; $7aed: $01 $f1 $31
	add  b                                           ; $7af0: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7af1: $cf
	daa                                              ; $7af2: $27
	ld   a, $3f                                      ; $7af3: $3e $3f
	pop  af                                          ; $7af5: $f1
	or   $c7                                         ; $7af6: $f6 $c7
	ld   sp, hl                                      ; $7af8: $f9
	ccf                                              ; $7af9: $3f
	rst  ToBoot                                         ; $7afa: $c7
	rst  $38                                         ; $7afb: $ff
	ccf                                              ; $7afc: $3f
	ld   hl, sp-$07                                  ; $7afd: $f8 $f9
	pop  af                                          ; $7aff: $f1
	cp   $8f                                         ; $7b00: $fe $8f
	or   c                                           ; $7b02: $b1
	ccf                                              ; $7b03: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b04: $cf
	cp   $3e                                         ; $7b05: $fe $3e
	ld   hl, sp-$07                                  ; $7b07: $f8 $f9
	pop  bc                                          ; $7b09: $c1
	add  $07                                         ; $7b0a: $c6 $07
	add  hl, sp                                      ; $7b0c: $39
	ccf                                              ; $7b0d: $3f
	add  a                                           ; $7b0e: $87
	cp   $7e                                         ; $7b0f: $fe $7e
	ldh  a, [$f1]                                    ; $7b11: $f0 $f1
	pop  bc                                          ; $7b13: $c1
	adc  $0f                                         ; $7b14: $ce $0f
	ld   sp, $cf3f                                   ; $7b16: $31 $3f $cf
	rst  $38                                         ; $7b19: $ff
	ccf                                              ; $7b1a: $3f
	add  b                                           ; $7b1b: $80
	db   $fc                                         ; $7b1c: $fc
	ld   [$e6e0], sp                                 ; $7b1d: $08 $e0 $e6
	rlca                                             ; $7b20: $07
	ld   b, c                                        ; $7b21: $41
	ld   b, a                                        ; $7b22: $47
	rst  $20                                         ; $7b23: $e7
	ld   hl, sp+$7f                                  ; $7b24: $f8 $7f
	rst  $20                                         ; $7b26: $e7
	add  b                                           ; $7b27: $80
	rst  $28                                         ; $7b28: $ef
	ld   [bc], a                                     ; $7b29: $02
	adc  b                                           ; $7b2a: $88
	rrca                                             ; $7b2b: $0f
	rlca                                             ; $7b2c: $07
	add  b                                           ; $7b2d: $80
	rra                                              ; $7b2e: $1f
	add  hl, bc                                      ; $7b2f: $09
	rst  $38                                         ; $7b30: $ff
	di                                               ; $7b31: $f3

jr_08d_7b32:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7b32: $cf
	sbc  $1e                                         ; $7b33: $de $1e
	sbc  c                                           ; $7b35: $99

jr_08d_7b36:
	sbc  l                                           ; $7b36: $9d
	add  a                                           ; $7b37: $87
	sbc  a                                           ; $7b38: $9f
	rra                                              ; $7b39: $1f
	add  b                                           ; $7b3a: $80
	rst  $38                                         ; $7b3b: $ff
	add  hl, bc                                      ; $7b3c: $09
	db   $fc                                         ; $7b3d: $fc
	rst  $38                                         ; $7b3e: $ff
	db   $e3                                         ; $7b3f: $e3
	rst  $38                                         ; $7b40: $ff
	rra                                              ; $7b41: $1f
	ld   a, a                                        ; $7b42: $7f
	add  a                                           ; $7b43: $87
	ccf                                              ; $7b44: $3f
	dec  sp                                          ; $7b45: $3b
	ei                                               ; $7b46: $fb
	add  b                                           ; $7b47: $80

jr_08d_7b48:
	ld   sp, hl                                      ; $7b48: $f9
	ld   a, [de]                                     ; $7b49: $1a
	ldh  [$fc], a                                    ; $7b4a: $e0 $fc
	jr   jr_08d_7b48                                 ; $7b4c: $18 $fa

	db   $fc                                         ; $7b4e: $fc
	db   $f4                                         ; $7b4f: $f4
	db   $fc                                         ; $7b50: $fc
	db   $fd                                         ; $7b51: $fd
	cp   $f5                                         ; $7b52: $fe $f5
	di                                               ; $7b54: $f3
	ld   a, [$f7e3]                                  ; $7b55: $fa $e3 $f7
	rst  ToBoot                                         ; $7b58: $c7
	db   $ed                                         ; $7b59: $ed
	adc  a                                           ; $7b5a: $8f
	db   $db                                         ; $7b5b: $db
	rra                                              ; $7b5c: $1f
	scf                                              ; $7b5d: $37
	ccf                                              ; $7b5e: $3f
	cpl                                              ; $7b5f: $2f
	ccf                                              ; $7b60: $3f
	rst  $38                                         ; $7b61: $ff
	rra                                              ; $7b62: $1f
	ld   a, [hl]                                     ; $7b63: $7e

jr_08d_7b64:
	cp   $80                                         ; $7b64: $fe $80
	db   $fd                                         ; $7b66: $fd
	add  b                                           ; $7b67: $80

jr_08d_7b68:
	ld   a, [$f580]                                  ; $7b68: $fa $80 $f5
	rla                                              ; $7b6b: $17
	ld   [$d4eb], a                                  ; $7b6c: $ea $eb $d4
	sub  $a8                                         ; $7b6f: $d6 $a8
	xor  h                                           ; $7b71: $ac
	ld   d, b                                        ; $7b72: $50
	ld   e, c                                        ; $7b73: $59
	sub  d                                           ; $7b74: $92
	and  e                                           ; $7b75: $a3
	rrca                                             ; $7b76: $0f
	ld   c, a                                        ; $7b77: $4f
	rra                                              ; $7b78: $1f
	sbc  a                                           ; $7b79: $9f
	and  a                                           ; $7b7a: $a7
	cp   a                                           ; $7b7b: $bf
	ld   e, e                                        ; $7b7c: $5b
	ld   a, a                                        ; $7b7d: $7f
	cp   h                                           ; $7b7e: $bc
	rst  $38                                         ; $7b7f: $ff
	ld   a, [hl]                                     ; $7b80: $7e
	rst  $38                                         ; $7b81: $ff
	db   $fc                                         ; $7b82: $fc
	cp   $00                                         ; $7b83: $fe $00
	nop                                              ; $7b85: $00
	nop                                              ; $7b86: $00
	nop                                              ; $7b87: $00
	nop                                              ; $7b88: $00
	nop                                              ; $7b89: $00
	nop                                              ; $7b8a: $00
	nop                                              ; $7b8b: $00
	nop                                              ; $7b8c: $00
	nop                                              ; $7b8d: $00
	nop                                              ; $7b8e: $00
	nop                                              ; $7b8f: $00
	or   $00                                         ; $7b90: $f6 $00
	adc  d                                           ; $7b92: $8a
	nop                                              ; $7b93: $00
	ld   [bc], a                                     ; $7b94: $02
	inc  a                                           ; $7b95: $3c
	nop                                              ; $7b96: $00
	ld   a, [hl]                                     ; $7b97: $7e
	adc  l                                           ; $7b98: $8d
	nop                                              ; $7b99: $00
	ld   [bc], a                                     ; $7b9a: $02
	ld   a, [hl]                                     ; $7b9b: $7e
	nop                                              ; $7b9c: $00
	inc  a                                           ; $7b9d: $3c
	adc  c                                           ; $7b9e: $89
	nop                                              ; $7b9f: $00
	inc  b                                           ; $7ba0: $04
	stop                                             ; $7ba1: $10 $00
	jr   nz, jr_08d_7ba5                             ; $7ba3: $20 $00

jr_08d_7ba5:
	jr   nz, jr_08d_7b32                             ; $7ba5: $20 $8b

	nop                                              ; $7ba7: $00
	ld   [bc], a                                     ; $7ba8: $02
	jr   z, jr_08d_7bab                              ; $7ba9: $28 $00

jr_08d_7bab:
	jr   c, jr_08d_7b36                              ; $7bab: $38 $89

	nop                                              ; $7bad: $00
	inc  b                                           ; $7bae: $04
	inc  a                                           ; $7baf: $3c
	nop                                              ; $7bb0: $00
	ld   a, [hl]                                     ; $7bb1: $7e
	nop                                              ; $7bb2: $00
	ld   b, b                                        ; $7bb3: $40
	add  c                                           ; $7bb4: $81
	nop                                              ; $7bb5: $00
	inc  c                                           ; $7bb6: $0c
	ld   b, $00                                      ; $7bb7: $06 $00
	inc  c                                           ; $7bb9: $0c
	nop                                              ; $7bba: $00
	jr   jr_08d_7bbd                                 ; $7bbb: $18 $00

jr_08d_7bbd:
	jr   nc, jr_08d_7bbf                             ; $7bbd: $30 $00

jr_08d_7bbf:
	ld   h, b                                        ; $7bbf: $60
	nop                                              ; $7bc0: $00
	ld   a, $00                                      ; $7bc1: $3e $00
	ld   a, [hl]                                     ; $7bc3: $7e
	adc  c                                           ; $7bc4: $89
	nop                                              ; $7bc5: $00
	inc  b                                           ; $7bc6: $04
	inc  a                                           ; $7bc7: $3c
	nop                                              ; $7bc8: $00
	ld   a, [hl]                                     ; $7bc9: $7e
	nop                                              ; $7bca: $00
	ld   b, b                                        ; $7bcb: $40
	add  c                                           ; $7bcc: $81
	nop                                              ; $7bcd: $00

jr_08d_7bce:
	ld   [bc], a                                     ; $7bce: $02
	ld   a, $00                                      ; $7bcf: $3e $00
	ld   a, $83                                      ; $7bd1: $3e $83
	nop                                              ; $7bd3: $00
	inc  b                                           ; $7bd4: $04
	ld   b, b                                        ; $7bd5: $40
	nop                                              ; $7bd6: $00
	ld   a, [hl]                                     ; $7bd7: $7e
	nop                                              ; $7bd8: $00
	inc  a                                           ; $7bd9: $3c
	adc  c                                           ; $7bda: $89
	nop                                              ; $7bdb: $00
	nop                                              ; $7bdc: $00
	inc  c                                           ; $7bdd: $0c
	add  c                                           ; $7bde: $81
	nop                                              ; $7bdf: $00
	nop                                              ; $7be0: $00
	jr   jr_08d_7b64                                 ; $7be1: $18 $81

	nop                                              ; $7be3: $00
	nop                                              ; $7be4: $00
	jr   nc, jr_08d_7b68                             ; $7be5: $30 $81

	nop                                              ; $7be7: $00
	inc  b                                           ; $7be8: $04
	ld   h, b                                        ; $7be9: $60
	nop                                              ; $7bea: $00
	ld   a, [hl-]                                    ; $7beb: $3a
	nop                                              ; $7bec: $00
	ld   a, d                                        ; $7bed: $7a
	add  c                                           ; $7bee: $81
	nop                                              ; $7bef: $00
	nop                                              ; $7bf0: $00
	inc  b                                           ; $7bf1: $04
	adc  c                                           ; $7bf2: $89
	nop                                              ; $7bf3: $00
	ld   [bc], a                                     ; $7bf4: $02
	ld   a, h                                        ; $7bf5: $7c
	nop                                              ; $7bf6: $00
	inc  a                                           ; $7bf7: $3c
	add  e                                           ; $7bf8: $83
	nop                                              ; $7bf9: $00
	inc  b                                           ; $7bfa: $04
	inc  a                                           ; $7bfb: $3c
	nop                                              ; $7bfc: $00
	ld   a, $00                                      ; $7bfd: $3e $00
	ld   b, b                                        ; $7bff: $40
	add  c                                           ; $7c00: $81
	nop                                              ; $7c01: $00
	inc  b                                           ; $7c02: $04
	ld   b, b                                        ; $7c03: $40
	nop                                              ; $7c04: $00
	ld   a, [hl]                                     ; $7c05: $7e
	nop                                              ; $7c06: $00
	inc  a                                           ; $7c07: $3c
	adc  c                                           ; $7c08: $89
	nop                                              ; $7c09: $00
	inc  b                                           ; $7c0a: $04
	inc  a                                           ; $7c0b: $3c
	nop                                              ; $7c0c: $00
	ld   a, [hl]                                     ; $7c0d: $7e
	nop                                              ; $7c0e: $00
	ld   [bc], a                                     ; $7c0f: $02
	add  c                                           ; $7c10: $81
	nop                                              ; $7c11: $00
	ld   [bc], a                                     ; $7c12: $02
	inc  a                                           ; $7c13: $3c
	nop                                              ; $7c14: $00
	ld   a, $85                                      ; $7c15: $3e $85
	nop                                              ; $7c17: $00

jr_08d_7c18:
	ld   [bc], a                                     ; $7c18: $02
	ld   a, [hl]                                     ; $7c19: $7e
	nop                                              ; $7c1a: $00
	inc  a                                           ; $7c1b: $3c
	adc  c                                           ; $7c1c: $89
	nop                                              ; $7c1d: $00
	ld   [bc], a                                     ; $7c1e: $02
	ld   a, [hl]                                     ; $7c1f: $7e
	nop                                              ; $7c20: $00
	inc  a                                           ; $7c21: $3c
	add  c                                           ; $7c22: $81
	nop                                              ; $7c23: $00
	nop                                              ; $7c24: $00
	ld   b, [hl]                                     ; $7c25: $46
	add  c                                           ; $7c26: $81
	nop                                              ; $7c27: $00
	nop                                              ; $7c28: $00
	inc  c                                           ; $7c29: $0c
	add  a                                           ; $7c2a: $87
	nop                                              ; $7c2b: $00
	nop                                              ; $7c2c: $00
	ld   [$0089], sp                                 ; $7c2d: $08 $89 $00
	ld   [bc], a                                     ; $7c30: $02
	inc  a                                           ; $7c31: $3c
	nop                                              ; $7c32: $00
	ld   a, [hl]                                     ; $7c33: $7e
	add  e                                           ; $7c34: $83
	nop                                              ; $7c35: $00
	ld   [bc], a                                     ; $7c36: $02
	ld   a, [hl]                                     ; $7c37: $7e
	nop                                              ; $7c38: $00
	ld   a, [hl]                                     ; $7c39: $7e
	add  l                                           ; $7c3a: $85
	nop                                              ; $7c3b: $00
	ld   [bc], a                                     ; $7c3c: $02
	ld   a, [hl]                                     ; $7c3d: $7e
	nop                                              ; $7c3e: $00
	inc  a                                           ; $7c3f: $3c
	adc  c                                           ; $7c40: $89
	nop                                              ; $7c41: $00
	ld   [bc], a                                     ; $7c42: $02
	inc  a                                           ; $7c43: $3c
	nop                                              ; $7c44: $00
	ld   a, [hl]                                     ; $7c45: $7e
	add  l                                           ; $7c46: $85
	nop                                              ; $7c47: $00
	ld   [bc], a                                     ; $7c48: $02
	ld   a, [hl]                                     ; $7c49: $7e
	nop                                              ; $7c4a: $00
	jr   c, jr_08d_7bce                              ; $7c4b: $38 $81

	nop                                              ; $7c4d: $00
	nop                                              ; $7c4e: $00
	inc  c                                           ; $7c4f: $0c
	add  c                                           ; $7c50: $81
	nop                                              ; $7c51: $00
	nop                                              ; $7c52: $00
	ld   [$00ff], sp                                 ; $7c53: $08 $ff $00
	cp   h                                           ; $7c56: $bc
	nop                                              ; $7c57: $00
	ld   [bc], a                                     ; $7c58: $02
	rst  $38                                         ; $7c59: $ff
	nop                                              ; $7c5a: $00
	ld   a, a                                        ; $7c5b: $7f
	add  l                                           ; $7c5c: $85
	nop                                              ; $7c5d: $00
	nop                                              ; $7c5e: $00
	ld   bc, $0081                                   ; $7c5f: $01 $81 $00
	ld   a, [bc]                                     ; $7c62: $0a
	ld   [de], a                                     ; $7c63: $12
	nop                                              ; $7c64: $00
	inc  l                                           ; $7c65: $2c
	nop                                              ; $7c66: $00
	inc  hl                                          ; $7c67: $23
	inc  bc                                          ; $7c68: $03
	add  hl, de                                      ; $7c69: $19
	ld   bc, $0004                                   ; $7c6a: $01 $04 $00
	ld   a, h                                        ; $7c6d: $7c
	add  h                                           ; $7c6e: $84
	ld   a, a                                        ; $7c6f: $7f
	add  c                                           ; $7c70: $81
	nop                                              ; $7c71: $00
	nop                                              ; $7c72: $00
	add  b                                           ; $7c73: $80
	add  c                                           ; $7c74: $81
	nop                                              ; $7c75: $00
	ld   [$0084], sp                                 ; $7c76: $08 $84 $00
	ld   a, [bc]                                     ; $7c79: $0a
	nop                                              ; $7c7a: $00
	stop                                             ; $7c7b: $10 $00
	ld   bc, $2000                                   ; $7c7d: $01 $00 $20
	add  c                                           ; $7c80: $81
	nop                                              ; $7c81: $00
	nop                                              ; $7c82: $00
	ld   b, b                                        ; $7c83: $40

jr_08d_7c84:
	add  c                                           ; $7c84: $81
	nop                                              ; $7c85: $00
	ld   [bc], a                                     ; $7c86: $02
	ld   bc, $7e00                                   ; $7c87: $01 $00 $7e
	add  h                                           ; $7c8a: $84
	rst  $38                                         ; $7c8b: $ff
	add  c                                           ; $7c8c: $81

jr_08d_7c8d:
	nop                                              ; $7c8d: $00
	nop                                              ; $7c8e: $00
	ccf                                              ; $7c8f: $3f
	add  c                                           ; $7c90: $81
	nop                                              ; $7c91: $00
	nop                                              ; $7c92: $00
	jr   nz, jr_08d_7c18                             ; $7c93: $20 $83

	nop                                              ; $7c95: $00
	nop                                              ; $7c96: $00
	db   $10                                         ; $7c97: $10
	add  c                                           ; $7c98: $81
	nop                                              ; $7c99: $00
	ld   [$1098], sp                                 ; $7c9a: $08 $98 $10
	inc  [hl]                                        ; $7c9d: $34
	jr   nc, jr_08d_7c84                             ; $7c9e: $30 $e4

	ld   h, b                                        ; $7ca0: $60
	ld   [$0f00], sp                                 ; $7ca1: $08 $00 $0f
	add  h                                           ; $7ca4: $84
	rst  $38                                         ; $7ca5: $ff
	add  c                                           ; $7ca6: $81
	nop                                              ; $7ca7: $00
	nop                                              ; $7ca8: $00
	ld   a, a                                        ; $7ca9: $7f
	adc  a                                           ; $7caa: $8f
	nop                                              ; $7cab: $00
	nop                                              ; $7cac: $00
	ld   bc, $0081                                   ; $7cad: $01 $81 $00
	nop                                              ; $7cb0: $00
	ld   a, [hl]                                     ; $7cb1: $7e
	add  h                                           ; $7cb2: $84
	ld   a, a                                        ; $7cb3: $7f
	add  c                                           ; $7cb4: $81
	nop                                              ; $7cb5: $00
	nop                                              ; $7cb6: $00
	jp   $008d                                       ; $7cb7: $c3 $8d $00


	ld   bc, $38f8                                   ; $7cba: $01 $f8 $38
	add  b                                           ; $7cbd: $80
	ld   hl, sp-$80                                  ; $7cbe: $f8 $80
	nop                                              ; $7cc0: $00
	nop                                              ; $7cc1: $00
	inc  bc                                          ; $7cc2: $03
	add  h                                           ; $7cc3: $84
	rst  $38                                         ; $7cc4: $ff
	add  c                                           ; $7cc5: $81
	nop                                              ; $7cc6: $00
	nop                                              ; $7cc7: $00
	rst  $38                                         ; $7cc8: $ff
	sub  e                                           ; $7cc9: $93
	nop                                              ; $7cca: $00
	add  l                                           ; $7ccb: $85
	rst  $38                                         ; $7ccc: $ff
	add  c                                           ; $7ccd: $81
	nop                                              ; $7cce: $00
	nop                                              ; $7ccf: $00
	ld   a, a                                        ; $7cd0: $7f
	add  l                                           ; $7cd1: $85
	nop                                              ; $7cd2: $00
	nop                                              ; $7cd3: $00
	ld   bc, $0081                                   ; $7cd4: $01 $81 $00
	ld   a, [bc]                                     ; $7cd7: $0a

jr_08d_7cd8:
	ld   [de], a                                     ; $7cd8: $12
	nop                                              ; $7cd9: $00
	inc  l                                           ; $7cda: $2c
	nop                                              ; $7cdb: $00
	inc  hl                                          ; $7cdc: $23
	inc  bc                                          ; $7cdd: $03
	add  hl, de                                      ; $7cde: $19
	ld   bc, $0004                                   ; $7cdf: $01 $04 $00
	ld   a, h                                        ; $7ce2: $7c
	add  h                                           ; $7ce3: $84
	ld   a, a                                        ; $7ce4: $7f
	add  c                                           ; $7ce5: $81
	nop                                              ; $7ce6: $00
	nop                                              ; $7ce7: $00
	add  b                                           ; $7ce8: $80
	add  c                                           ; $7ce9: $81
	nop                                              ; $7cea: $00
	ld   [$0084], sp                                 ; $7ceb: $08 $84 $00
	ld   a, [bc]                                     ; $7cee: $0a
	nop                                              ; $7cef: $00
	stop                                             ; $7cf0: $10 $00
	ld   bc, $2000                                   ; $7cf2: $01 $00 $20
	add  c                                           ; $7cf5: $81
	nop                                              ; $7cf6: $00
	nop                                              ; $7cf7: $00
	ld   b, b                                        ; $7cf8: $40

jr_08d_7cf9:
	add  c                                           ; $7cf9: $81
	nop                                              ; $7cfa: $00
	ld   [bc], a                                     ; $7cfb: $02
	ld   bc, $7e00                                   ; $7cfc: $01 $00 $7e
	add  h                                           ; $7cff: $84
	rst  $38                                         ; $7d00: $ff
	add  c                                           ; $7d01: $81
	nop                                              ; $7d02: $00
	nop                                              ; $7d03: $00
	ccf                                              ; $7d04: $3f
	add  c                                           ; $7d05: $81
	nop                                              ; $7d06: $00
	nop                                              ; $7d07: $00
	jr   nz, jr_08d_7c8d                             ; $7d08: $20 $83

	nop                                              ; $7d0a: $00
	nop                                              ; $7d0b: $00
	db   $10                                         ; $7d0c: $10
	add  c                                           ; $7d0d: $81
	nop                                              ; $7d0e: $00
	ld   [$1098], sp                                 ; $7d0f: $08 $98 $10
	inc  [hl]                                        ; $7d12: $34
	jr   nc, jr_08d_7cf9                             ; $7d13: $30 $e4

	ld   h, b                                        ; $7d15: $60
	ld   [$0f00], sp                                 ; $7d16: $08 $00 $0f
	add  h                                           ; $7d19: $84
	rst  $38                                         ; $7d1a: $ff
	ld   bc, $ff00                                   ; $7d1b: $01 $00 $ff

jr_08d_7d1e:
	rst  $38                                         ; $7d1e: $ff
	nop                                              ; $7d1f: $00
	rst  $38                                         ; $7d20: $ff
	nop                                              ; $7d21: $00
	rst  $38                                         ; $7d22: $ff
	nop                                              ; $7d23: $00
	rst  $38                                         ; $7d24: $ff
	nop                                              ; $7d25: $00
	rst  $38                                         ; $7d26: $ff
	nop                                              ; $7d27: $00
	rst  $38                                         ; $7d28: $ff
	nop                                              ; $7d29: $00
	rst  $38                                         ; $7d2a: $ff
	nop                                              ; $7d2b: $00
	rst  $38                                         ; $7d2c: $ff
	nop                                              ; $7d2d: $00
	rst  $38                                         ; $7d2e: $ff
	nop                                              ; $7d2f: $00
	rst  $38                                         ; $7d30: $ff
	nop                                              ; $7d31: $00
	rst  $38                                         ; $7d32: $ff
	nop                                              ; $7d33: $00
	rst  $38                                         ; $7d34: $ff
	nop                                              ; $7d35: $00
	rst  $38                                         ; $7d36: $ff
	nop                                              ; $7d37: $00
	rst  $38                                         ; $7d38: $ff
	nop                                              ; $7d39: $00
	rst  $38                                         ; $7d3a: $ff
	nop                                              ; $7d3b: $00
	rst  $38                                         ; $7d3c: $ff
	nop                                              ; $7d3d: $00

jr_08d_7d3e:
	rst  $38                                         ; $7d3e: $ff
	nop                                              ; $7d3f: $00
	rst  $38                                         ; $7d40: $ff
	nop                                              ; $7d41: $00
	rst  $38                                         ; $7d42: $ff
	nop                                              ; $7d43: $00
	rst  $38                                         ; $7d44: $ff
	nop                                              ; $7d45: $00
	sub  c                                           ; $7d46: $91
	nop                                              ; $7d47: $00
	nop                                              ; $7d48: $00
	inc  b                                           ; $7d49: $04
	add  c                                           ; $7d4a: $81
	nop                                              ; $7d4b: $00
	inc  b                                           ; $7d4c: $04
	rrca                                             ; $7d4d: $0f
	nop                                              ; $7d4e: $00
	inc  de                                          ; $7d4f: $13
	nop                                              ; $7d50: $00
	jr   jr_08d_7cd8                                 ; $7d51: $18 $85

	nop                                              ; $7d53: $00
	nop                                              ; $7d54: $00
	ld   b, b                                        ; $7d55: $40
	add  c                                           ; $7d56: $81
	nop                                              ; $7d57: $00
	inc  b                                           ; $7d58: $04
	cp   c                                           ; $7d59: $b9
	nop                                              ; $7d5a: $00
	cp   c                                           ; $7d5b: $b9
	nop                                              ; $7d5c: $00
	ld   b, b                                        ; $7d5d: $40
	add  a                                           ; $7d5e: $87
	nop                                              ; $7d5f: $00
	ld   a, [bc]                                     ; $7d60: $0a
	stop                                             ; $7d61: $10 $00
	rst  $28                                         ; $7d63: $ef
	nop                                              ; $7d64: $00
	xor  $00                                         ; $7d65: $ee $00
	add  hl, sp                                      ; $7d67: $39
	nop                                              ; $7d68: $00
	jr   nz, jr_08d_7d6b                             ; $7d69: $20 $00

jr_08d_7d6b:
	ld   bc, $0081                                   ; $7d6b: $01 $81 $00
	ld   [bc], a                                     ; $7d6e: $02
	inc  bc                                          ; $7d6f: $03
	nop                                              ; $7d70: $00
	ld   [bc], a                                     ; $7d71: $02
	add  c                                           ; $7d72: $81
	nop                                              ; $7d73: $00
	ld   [bc], a                                     ; $7d74: $02
	ld   [$e000], sp                                 ; $7d75: $08 $00 $e0
	add  c                                           ; $7d78: $81
	nop                                              ; $7d79: $00
	nop                                              ; $7d7a: $00
	or   b                                           ; $7d7b: $b0
	add  c                                           ; $7d7c: $81
	nop                                              ; $7d7d: $00
	ld   [bc], a                                     ; $7d7e: $02
	cp   b                                           ; $7d7f: $b8
	nop                                              ; $7d80: $00
	xor  b                                           ; $7d81: $a8
	add  c                                           ; $7d82: $81
	nop                                              ; $7d83: $00
	inc  b                                           ; $7d84: $04
	ld   b, b                                        ; $7d85: $40
	nop                                              ; $7d86: $00
	ld   de, $3000                                   ; $7d87: $11 $00 $30
	add  e                                           ; $7d8a: $83
	nop                                              ; $7d8b: $00
	nop                                              ; $7d8c: $00
	ld   h, b                                        ; $7d8d: $60
	add  c                                           ; $7d8e: $81
	nop                                              ; $7d8f: $00
	ld   a, [bc]                                     ; $7d90: $0a
	rst  ToBoot                                         ; $7d91: $c7
	nop                                              ; $7d92: $00
	add  [hl]                                        ; $7d93: $86
	nop                                              ; $7d94: $00
	stop                                             ; $7d95: $10 $00
	rrca                                             ; $7d97: $0f
	nop                                              ; $7d98: $00
	dec  sp                                          ; $7d99: $3b
	nop                                              ; $7d9a: $00
	jr   nz, jr_08d_7d1e                             ; $7d9b: $20 $81

	nop                                              ; $7d9d: $00
	ld   [bc], a                                     ; $7d9e: $02
	dec  sp                                          ; $7d9f: $3b
	nop                                              ; $7da0: $00
	dec  sp                                          ; $7da1: $3b
	add  c                                           ; $7da2: $81
	nop                                              ; $7da3: $00
	nop                                              ; $7da4: $00
	inc  b                                           ; $7da5: $04
	add  c                                           ; $7da6: $81
	nop                                              ; $7da7: $00
	ld   [bc], a                                     ; $7da8: $02
	ld   sp, hl                                      ; $7da9: $f9
	nop                                              ; $7daa: $00
	ld   [hl], c                                     ; $7dab: $71
	add  a                                           ; $7dac: $87
	nop                                              ; $7dad: $00
	nop                                              ; $7dae: $00
	sbc  b                                           ; $7daf: $98
	add  c                                           ; $7db0: $81
	nop                                              ; $7db1: $00
	ld   [bc], a                                     ; $7db2: $02
	rst  $28                                         ; $7db3: $ef
	nop                                              ; $7db4: $00
	xor  $81                                         ; $7db5: $ee $81
	nop                                              ; $7db7: $00
	nop                                              ; $7db8: $00
	jr   nc, jr_08d_7d3e                             ; $7db9: $30 $83

	nop                                              ; $7dbb: $00
	inc  d                                           ; $7dbc: $14
	dec  hl                                          ; $7dbd: $2b
	nop                                              ; $7dbe: $00
	dec  de                                          ; $7dbf: $1b
	nop                                              ; $7dc0: $00
	ld   sp, $2000                                   ; $7dc1: $31 $00 $20
	nop                                              ; $7dc4: $00
	rra                                              ; $7dc5: $1f
	nop                                              ; $7dc6: $00
	ld   e, $00                                      ; $7dc7: $1e $00
	ld   a, $00                                      ; $7dc9: $3e $00
	ld   e, $00                                      ; $7dcb: $1e $00
	xor  c                                           ; $7dcd: $a9
	nop                                              ; $7dce: $00
	ld   [hl], b                                     ; $7dcf: $70
	nop                                              ; $7dd0: $00
	ld   hl, sp-$7f                                  ; $7dd1: $f8 $81
	nop                                              ; $7dd3: $00
	ld   [$00f0], sp                                 ; $7dd4: $08 $f0 $00
	ldh  a, [rP1]                                    ; $7dd7: $f0 $00
	ld   sp, hl                                      ; $7dd9: $f9
	nop                                              ; $7dda: $00
	pop  af                                          ; $7ddb: $f1
	nop                                              ; $7ddc: $00
	ld   c, c                                        ; $7ddd: $49
	add  c                                           ; $7dde: $81
	nop                                              ; $7ddf: $00
	inc  b                                           ; $7de0: $04
	rst  ToBoot                                         ; $7de1: $c7
	nop                                              ; $7de2: $00
	add  [hl]                                        ; $7de3: $86
	nop                                              ; $7de4: $00
	db   $10                                         ; $7de5: $10
	add  c                                           ; $7de6: $81
	nop                                              ; $7de7: $00
	ld   h, $ef                                      ; $7de8: $26 $ef
	nop                                              ; $7dea: $00
	xor  $00                                         ; $7deb: $ee $00
	inc  e                                           ; $7ded: $1c
	nop                                              ; $7dee: $00
	inc  c                                           ; $7def: $0c
	nop                                              ; $7df0: $00
	ld   c, $00                                      ; $7df1: $0e $00
	rrca                                             ; $7df3: $0f
	nop                                              ; $7df4: $00
	rra                                              ; $7df5: $1f
	nop                                              ; $7df6: $00
	dec  d                                           ; $7df7: $15
	nop                                              ; $7df8: $00
	dec  [hl]                                        ; $7df9: $35
	nop                                              ; $7dfa: $00
	ccf                                              ; $7dfb: $3f
	nop                                              ; $7dfc: $00
	ld   h, b                                        ; $7dfd: $60
	nop                                              ; $7dfe: $00
	ld   h, b                                        ; $7dff: $60
	nop                                              ; $7e00: $00
	ldh  [rP1], a                                    ; $7e01: $e0 $00
	ldh  [rP1], a                                    ; $7e03: $e0 $00
	ldh  a, [rP1]                                    ; $7e05: $f0 $00
	ld   d, b                                        ; $7e07: $50
	nop                                              ; $7e08: $00
	ld   e, b                                        ; $7e09: $58
	nop                                              ; $7e0a: $00
	ld   hl, sp+$00                                  ; $7e0b: $f8 $00
	ld   de, $3000                                   ; $7e0d: $11 $00 $30
	add  e                                           ; $7e10: $83
	nop                                              ; $7e11: $00
	nop                                              ; $7e12: $00
	ld   h, b                                        ; $7e13: $60
	add  c                                           ; $7e14: $81
	nop                                              ; $7e15: $00
	ld   [bc], a                                     ; $7e16: $02
	rst  ToBoot                                         ; $7e17: $c7
	nop                                              ; $7e18: $00
	add  [hl]                                        ; $7e19: $86
	add  a                                           ; $7e1a: $87
	nop                                              ; $7e1b: $00
	ld   [$0004], sp                                 ; $7e1c: $08 $04 $00
	inc  bc                                          ; $7e1f: $03
	nop                                              ; $7e20: $00
	inc  bc                                          ; $7e21: $03
	nop                                              ; $7e22: $00
	rrca                                             ; $7e23: $0f
	nop                                              ; $7e24: $00
	dec  bc                                          ; $7e25: $0b
	add  a                                           ; $7e26: $87
	nop                                              ; $7e27: $00
	ld   b, $e0                                      ; $7e28: $06 $e0
	nop                                              ; $7e2a: $00
	ldh  [rP1], a                                    ; $7e2b: $e0 $00
	pop  hl                                          ; $7e2d: $e1
	nop                                              ; $7e2e: $00
	pop  hl                                          ; $7e2f: $e1
	add  l                                           ; $7e30: $85
	nop                                              ; $7e31: $00
	ld   [$0020], sp                                 ; $7e32: $08 $20 $00
	ld   [hl], b                                     ; $7e35: $70
	nop                                              ; $7e36: $00
	ret  c                                           ; $7e37: $d8

	nop                                              ; $7e38: $00
	adc  h                                           ; $7e39: $8c
	nop                                              ; $7e3a: $00
	inc  b                                           ; $7e3b: $04
	adc  c                                           ; $7e3c: $89
	nop                                              ; $7e3d: $00
	ld   a, [de]                                     ; $7e3e: $1a
	add  b                                           ; $7e3f: $80
	nop                                              ; $7e40: $00
	ld   [bc], a                                     ; $7e41: $02
	nop                                              ; $7e42: $00
	add  d                                           ; $7e43: $82
	nop                                              ; $7e44: $00
	rrca                                             ; $7e45: $0f
	nop                                              ; $7e46: $00
	rrca                                             ; $7e47: $0f
	nop                                              ; $7e48: $00
	inc  b                                           ; $7e49: $04
	nop                                              ; $7e4a: $00
	ld   b, $00                                      ; $7e4b: $06 $00
	ld   bc, $0f00                                   ; $7e4d: $01 $00 $0f
	nop                                              ; $7e50: $00
	inc  c                                           ; $7e51: $0c
	nop                                              ; $7e52: $00
	ld   [bc], a                                     ; $7e53: $02
	nop                                              ; $7e54: $00
	ldh  [c], a                                      ; $7e55: $e2
	nop                                              ; $7e56: $00
	pop  bc                                          ; $7e57: $c1
	nop                                              ; $7e58: $00
	add  b                                           ; $7e59: $80
	add  c                                           ; $7e5a: $81
	nop                                              ; $7e5b: $00
	inc  c                                           ; $7e5c: $0c
	adc  b                                           ; $7e5d: $88
	nop                                              ; $7e5e: $00
	or   b                                           ; $7e5f: $b0
	nop                                              ; $7e60: $00
	sbc  c                                           ; $7e61: $99
	nop                                              ; $7e62: $00
	ld   a, [$fa00]                                  ; $7e63: $fa $00 $fa

jr_08d_7e66:
	nop                                              ; $7e66: $00
	db   $fc                                         ; $7e67: $fc
	nop                                              ; $7e68: $00
	ld   hl, sp-$7d                                  ; $7e69: $f8 $83
	nop                                              ; $7e6b: $00
	inc  b                                           ; $7e6c: $04
	ld   hl, sp+$00                                  ; $7e6d: $f8 $00
	db   $fc                                         ; $7e6f: $fc
	nop                                              ; $7e70: $00
	add  c                                           ; $7e71: $81
	add  a                                           ; $7e72: $87
	nop                                              ; $7e73: $00
	jr   z, jr_08d_7e77                              ; $7e74: $28 $01

	nop                                              ; $7e76: $00

jr_08d_7e77:
	ret  nc                                          ; $7e77: $d0

	nop                                              ; $7e78: $00
	ld   [hl], b                                     ; $7e79: $70
	nop                                              ; $7e7a: $00
	jr   nz, jr_08d_7e7d                             ; $7e7b: $20 $00

jr_08d_7e7d:
	rrca                                             ; $7e7d: $0f
	nop                                              ; $7e7e: $00
	rrca                                             ; $7e7f: $0f
	nop                                              ; $7e80: $00
	rlca                                             ; $7e81: $07
	nop                                              ; $7e82: $00
	ld   b, $00                                      ; $7e83: $06 $00
	ld   [bc], a                                     ; $7e85: $02
	nop                                              ; $7e86: $00
	ld   [bc], a                                     ; $7e87: $02
	nop                                              ; $7e88: $00
	ld   c, $00                                      ; $7e89: $0e $00
	adc  [hl]                                        ; $7e8b: $8e
	nop                                              ; $7e8c: $00
	ld   a, b                                        ; $7e8d: $78
	nop                                              ; $7e8e: $00
	ld   a, b                                        ; $7e8f: $78
	nop                                              ; $7e90: $00
	ld   [hl], b                                     ; $7e91: $70
	nop                                              ; $7e92: $00
	ldh  a, [rP1]                                    ; $7e93: $f0 $00
	ret  nz                                          ; $7e95: $c0

	nop                                              ; $7e96: $00
	ld   d, c                                        ; $7e97: $51
	nop                                              ; $7e98: $00
	ld   l, e                                        ; $7e99: $6b
	nop                                              ; $7e9a: $00
	rlca                                             ; $7e9b: $07
	nop                                              ; $7e9c: $00
	ld   hl, sp-$7f                                  ; $7e9d: $f8 $81
	nop                                              ; $7e9f: $00
	inc  c                                           ; $7ea0: $0c
	ld   hl, sp+$00                                  ; $7ea1: $f8 $00
	ld   hl, sp+$00                                  ; $7ea3: $f8 $00
	ld   hl, sp+$00                                  ; $7ea5: $f8 $00
	call c, $de00                                    ; $7ea7: $dc $00 $de
	nop                                              ; $7eaa: $00
	cp   $00                                         ; $7eab: $fe $00
	db   $10                                         ; $7ead: $10
	add  c                                           ; $7eae: $81
	nop                                              ; $7eaf: $00
	ld   [$00ef], sp                                 ; $7eb0: $08 $ef $00
	rst  $30                                         ; $7eb3: $f7
	nop                                              ; $7eb4: $00
	inc  c                                           ; $7eb5: $0c
	nop                                              ; $7eb6: $00
	ld   b, $00                                      ; $7eb7: $06 $00
	ld   [bc], a                                     ; $7eb9: $02
	add  c                                           ; $7eba: $81
	nop                                              ; $7ebb: $00
	inc  b                                           ; $7ebc: $04
	ld   [bc], a                                     ; $7ebd: $02
	nop                                              ; $7ebe: $00
	ld   b, $00                                      ; $7ebf: $06 $00
	inc  b                                           ; $7ec1: $04
	add  c                                           ; $7ec2: $81
	nop                                              ; $7ec3: $00
	ld   d, $01                                      ; $7ec4: $16 $01
	nop                                              ; $7ec6: $00
	inc  bc                                          ; $7ec7: $03
	nop                                              ; $7ec8: $00
	dec  b                                           ; $7ec9: $05
	nop                                              ; $7eca: $00
	adc  a                                           ; $7ecb: $8f
	nop                                              ; $7ecc: $00
	jr   z, jr_08d_7ecf                              ; $7ecd: $28 $00

jr_08d_7ecf:
	jr   nc, jr_08d_7ed1                             ; $7ecf: $30 $00

jr_08d_7ed1:
	sub  b                                           ; $7ed1: $90
	nop                                              ; $7ed2: $00
	add  b                                           ; $7ed3: $80
	nop                                              ; $7ed4: $00
	ld   b, b                                        ; $7ed5: $40
	nop                                              ; $7ed6: $00
	ldh  [rP1], a                                    ; $7ed7: $e0 $00
	db   $d3                                         ; $7ed9: $d3
	nop                                              ; $7eda: $00
	db   $d3                                         ; $7edb: $d3
	add  e                                           ; $7edc: $83
	nop                                              ; $7edd: $00
	ld   [bc], a                                     ; $7ede: $02
	jr   nz, jr_08d_7ee1                             ; $7edf: $20 $00

jr_08d_7ee1:
	jr   nz, jr_08d_7e66                             ; $7ee1: $20 $83

	nop                                              ; $7ee3: $00
	ld   d, $de                                      ; $7ee4: $16 $de
	nop                                              ; $7ee6: $00
	ld   a, [hl]                                     ; $7ee7: $7e
	nop                                              ; $7ee8: $00
	ret  nz                                          ; $7ee9: $c0

	nop                                              ; $7eea: $00
	ld   a, h                                        ; $7eeb: $7c
	nop                                              ; $7eec: $00
	inc  a                                           ; $7eed: $3c
	nop                                              ; $7eee: $00
	stop                                             ; $7eef: $10 $00
	rst  $28                                         ; $7ef1: $ef
	nop                                              ; $7ef2: $00
	rst  $30                                         ; $7ef3: $f7
	nop                                              ; $7ef4: $00
	sbc  c                                           ; $7ef5: $99
	nop                                              ; $7ef6: $00
	sbc  c                                           ; $7ef7: $99
	nop                                              ; $7ef8: $00
	rrca                                             ; $7ef9: $0f
	nop                                              ; $7efa: $00
	ld   [bc], a                                     ; $7efb: $02
	add  c                                           ; $7efc: $81
	nop                                              ; $7efd: $00
	ld   [bc], a                                     ; $7efe: $02
	ld   [bc], a                                     ; $7eff: $02
	nop                                              ; $7f00: $00
	rlca                                             ; $7f01: $07
	add  e                                           ; $7f02: $83
	nop                                              ; $7f03: $00
	ld   b, $0a                                      ; $7f04: $06 $0a
	nop                                              ; $7f06: $00
	ld   a, b                                        ; $7f07: $78
	nop                                              ; $7f08: $00
	ld   hl, $0300                                   ; $7f09: $21 $00 $03
	add  c                                           ; $7f0c: $81
	nop                                              ; $7f0d: $00
	nop                                              ; $7f0e: $00
	db   $10                                         ; $7f0f: $10
	add  c                                           ; $7f10: $81
	nop                                              ; $7f11: $00
	ld   [bc], a                                     ; $7f12: $02
	ld   b, b                                        ; $7f13: $40
	nop                                              ; $7f14: $00
	ld   [hl+], a                                    ; $7f15: $22
	add  c                                           ; $7f16: $81
	nop                                              ; $7f17: $00
	ld   [bc], a                                     ; $7f18: $02
	call c, $de00                                    ; $7f19: $dc $00 $de
	add  l                                           ; $7f1c: $85
	nop                                              ; $7f1d: $00
	inc  c                                           ; $7f1e: $0c
	jr   nz, jr_08d_7f21                             ; $7f1f: $20 $00

jr_08d_7f21:
	ld   c, d                                        ; $7f21: $4a
	nop                                              ; $7f22: $00
	db   $db                                         ; $7f23: $db
	nop                                              ; $7f24: $00
	xor  l                                           ; $7f25: $ad
	nop                                              ; $7f26: $00
	inc  l                                           ; $7f27: $2c
	nop                                              ; $7f28: $00
	rst  $28                                         ; $7f29: $ef
	nop                                              ; $7f2a: $00
	rst  $28                                         ; $7f2b: $ef
	add  c                                           ; $7f2c: $81
	nop                                              ; $7f2d: $00
	nop                                              ; $7f2e: $00
	db   $10                                         ; $7f2f: $10
	sub  a                                           ; $7f30: $97
	nop                                              ; $7f31: $00
	nop                                              ; $7f32: $00
	rst  $38                                         ; $7f33: $ff
	add  b                                           ; $7f34: $80
	nop                                              ; $7f35: $00
	add  e                                           ; $7f36: $83
	rst  $38                                         ; $7f37: $ff
	xor  $00                                         ; $7f38: $ee $00
	nop                                              ; $7f3a: $00
	nop                                              ; $7f3b: $00
	nop                                              ; $7f3c: $00
	nop                                              ; $7f3d: $00
	nop                                              ; $7f3e: $00
	nop                                              ; $7f3f: $00
	ld   b, $06                                      ; $7f40: $06 $06
	ld   b, $06                                      ; $7f42: $06 $06
	ld   b, $06                                      ; $7f44: $06 $06
	ld   b, $06                                      ; $7f46: $06 $06
	ld   b, $06                                      ; $7f48: $06 $06
	ld   b, $06                                      ; $7f4a: $06 $06
	ld   b, $06                                      ; $7f4c: $06 $06
	ld   b, $06                                      ; $7f4e: $06 $06
	ld   b, $06                                      ; $7f50: $06 $06
	ld   b, $06                                      ; $7f52: $06 $06
	ld   b, $06                                      ; $7f54: $06 $06
	ld   b, $06                                      ; $7f56: $06 $06
	ld   b, $06                                      ; $7f58: $06 $06
	ld   b, $06                                      ; $7f5a: $06 $06
	ld   b, $06                                      ; $7f5c: $06 $06
	ld   b, $06                                      ; $7f5e: $06 $06
	ld   b, $06                                      ; $7f60: $06 $06
	ld   b, $06                                      ; $7f62: $06 $06
	ld   b, $06                                      ; $7f64: $06 $06
	ld   b, $06                                      ; $7f66: $06 $06
	ld   b, $06                                      ; $7f68: $06 $06
	ld   b, $06                                      ; $7f6a: $06 $06
	ld   b, $06                                      ; $7f6c: $06 $06
	ld   b, $06                                      ; $7f6e: $06 $06
	ld   b, $06                                      ; $7f70: $06 $06
	ld   b, $06                                      ; $7f72: $06 $06
	ld   b, $06                                      ; $7f74: $06 $06
	ld   b, $06                                      ; $7f76: $06 $06
	ld   b, $06                                      ; $7f78: $06 $06
	ld   b, $06                                      ; $7f7a: $06 $06
	ld   b, $06                                      ; $7f7c: $06 $06
	ld   b, $06                                      ; $7f7e: $06 $06
	ld   b, $06                                      ; $7f80: $06 $06
	ld   b, $06                                      ; $7f82: $06 $06
	ld   b, $06                                      ; $7f84: $06 $06
	ld   b, $06                                      ; $7f86: $06 $06
	ld   b, $06                                      ; $7f88: $06 $06
	ld   b, $06                                      ; $7f8a: $06 $06
	ld   b, $06                                      ; $7f8c: $06 $06
	ld   b, $06                                      ; $7f8e: $06 $06
	rst  $30                                         ; $7f90: $f7
	add  b                                           ; $7f91: $80
	add  c                                           ; $7f92: $81
	add  d                                           ; $7f93: $82
	add  [hl]                                        ; $7f94: $86
	add  a                                           ; $7f95: $87
	adc  b                                           ; $7f96: $88
	adc  h                                           ; $7f97: $8c
	adc  l                                           ; $7f98: $8d
	adc  [hl]                                        ; $7f99: $8e
	sub  d                                           ; $7f9a: $92
	sub  e                                           ; $7f9b: $93
	sub  h                                           ; $7f9c: $94
	sbc  b                                           ; $7f9d: $98
	sbc  c                                           ; $7f9e: $99
	sbc  d                                           ; $7f9f: $9a
	sbc  [hl]                                        ; $7fa0: $9e
	sbc  a                                           ; $7fa1: $9f
	and  b                                           ; $7fa2: $a0
	and  h                                           ; $7fa3: $a4
	rst  $30                                         ; $7fa4: $f7
	add  e                                           ; $7fa5: $83
	add  h                                           ; $7fa6: $84
	add  l                                           ; $7fa7: $85
	adc  c                                           ; $7fa8: $89
	adc  d                                           ; $7fa9: $8a
	adc  e                                           ; $7faa: $8b
	adc  a                                           ; $7fab: $8f
	sub  b                                           ; $7fac: $90
	sub  c                                           ; $7fad: $91
	sub  l                                           ; $7fae: $95
	sub  [hl]                                        ; $7faf: $96
	sub  a                                           ; $7fb0: $97
	sbc  e                                           ; $7fb1: $9b
	sbc  h                                           ; $7fb2: $9c
	sbc  l                                           ; $7fb3: $9d
	and  c                                           ; $7fb4: $a1
	and  d                                           ; $7fb5: $a2
	and  e                                           ; $7fb6: $a3
	and  a                                           ; $7fb7: $a7
	rst  $30                                         ; $7fb8: $f7
	xor  d                                           ; $7fb9: $aa
	xor  e                                           ; $7fba: $ab
	xor  h                                           ; $7fbb: $ac
	or   b                                           ; $7fbc: $b0
	or   c                                           ; $7fbd: $b1
	or   d                                           ; $7fbe: $b2
	or   [hl]                                        ; $7fbf: $b6
	or   a                                           ; $7fc0: $b7
	cp   b                                           ; $7fc1: $b8
	cp   h                                           ; $7fc2: $bc
	cp   l                                           ; $7fc3: $bd
	cp   [hl]                                        ; $7fc4: $be
	jp   nz, $c4c3                                   ; $7fc5: $c2 $c3 $c4

	ret  z                                           ; $7fc8: $c8

	ret                                              ; $7fc9: $c9


	jp   z, $f7ce                                    ; $7fca: $ca $ce $f7

	xor  l                                           ; $7fcd: $ad
	xor  [hl]                                        ; $7fce: $ae
	xor  a                                           ; $7fcf: $af
	or   e                                           ; $7fd0: $b3
	or   h                                           ; $7fd1: $b4
	or   l                                           ; $7fd2: $b5
	cp   c                                           ; $7fd3: $b9
	cp   d                                           ; $7fd4: $ba
	cp   e                                           ; $7fd5: $bb
	cp   a                                           ; $7fd6: $bf
	ret  nz                                          ; $7fd7: $c0

	pop  bc                                          ; $7fd8: $c1
	push bc                                          ; $7fd9: $c5
	add  $c7                                         ; $7fda: $c6 $c7
	set  1, h                                        ; $7fdc: $cb $cc
	call $00d1                                       ; $7fde: $cd $d1 $00
	nop                                              ; $7fe1: $00
	nop                                              ; $7fe2: $00
	nop                                              ; $7fe3: $00
	rst  $38                                         ; $7fe4: $ff
	rst  $38                                         ; $7fe5: $ff
	rst  $38                                         ; $7fe6: $ff
	add  c                                           ; $7fe7: $81
	ld   a, [hl]                                     ; $7fe8: $7e
	ld   b, d                                        ; $7fe9: $42
	inc  a                                           ; $7fea: $3c
	inc  h                                           ; $7feb: $24
	jr   @+$1a                                       ; $7fec: $18 $18

	nop                                              ; $7fee: $00
	nop                                              ; $7fef: $00
	nop                                              ; $7ff0: $00
	nop                                              ; $7ff1: $00
	nop                                              ; $7ff2: $00
	nop                                              ; $7ff3: $00
	nop                                              ; $7ff4: $00
	nop                                              ; $7ff5: $00
	nop                                              ; $7ff6: $00
	nop                                              ; $7ff7: $00
	nop                                              ; $7ff8: $00
	nop                                              ; $7ff9: $00
	nop                                              ; $7ffa: $00
	nop                                              ; $7ffb: $00
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
