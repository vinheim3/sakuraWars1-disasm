; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $02a", ROMX[$4000], BANK[$2a]

	dec  b                                           ; $4000: $05
	ld   b, $06                                      ; $4001: $06 $06
	ld   b, $07                                      ; $4003: $06 $07
	ld   [bc], a                                     ; $4005: $02
	dec  b                                           ; $4006: $05
	ld   b, $06                                      ; $4007: $06 $06
	ld   b, $06                                      ; $4009: $06 $06
	ld   b, $06                                      ; $400b: $06 $06
	ld   b, $06                                      ; $400d: $06 $06
	ld   b, $06                                      ; $400f: $06 $06
	ld   b, $06                                      ; $4011: $06 $06
	rlca                                             ; $4013: $07
	add  b                                           ; $4014: $80
	add  b                                           ; $4015: $80
	add  b                                           ; $4016: $80
	add  b                                           ; $4017: $80
	add  b                                           ; $4018: $80
	add  b                                           ; $4019: $80
	add  b                                           ; $401a: $80
	add  b                                           ; $401b: $80
	add  b                                           ; $401c: $80
	add  b                                           ; $401d: $80
	add  b                                           ; $401e: $80
	add  b                                           ; $401f: $80
	ld   [TurnOnLCD], sp                                 ; $4020: $08 $09 $09
	add  hl, bc                                      ; $4023: $09
	ld   a, [bc]                                     ; $4024: $0a
	inc  bc                                          ; $4025: $03
	ld   [$2020], sp                                 ; $4026: $08 $20 $20
	jr   nz, jr_02a_404b                             ; $4029: $20 $20

	jr   nz, jr_02a_404d                             ; $402b: $20 $20

	jr   nz, jr_02a_404f                             ; $402d: $20 $20

	jr   nz, jr_02a_4051                             ; $402f: $20 $20

	jr   nz, jr_02a_4053                             ; $4031: $20 $20

	ld   a, [bc]                                     ; $4033: $0a
	add  b                                           ; $4034: $80
	add  b                                           ; $4035: $80
	add  b                                           ; $4036: $80
	add  b                                           ; $4037: $80
	add  b                                           ; $4038: $80
	add  b                                           ; $4039: $80
	add  b                                           ; $403a: $80
	add  b                                           ; $403b: $80
	add  b                                           ; $403c: $80
	add  b                                           ; $403d: $80
	add  b                                           ; $403e: $80
	add  b                                           ; $403f: $80
	ld   [TurnOnLCD], sp                                 ; $4040: $08 $09 $09
	add  hl, bc                                      ; $4043: $09
	ld   a, [bc]                                     ; $4044: $0a
	inc  bc                                          ; $4045: $03
	ld   [$2020], sp                                 ; $4046: $08 $20 $20
	jr   nz, jr_02a_406b                             ; $4049: $20 $20

jr_02a_404b:
	jr   nz, jr_02a_406d                             ; $404b: $20 $20

jr_02a_404d:
	jr   nz, jr_02a_406f                             ; $404d: $20 $20

jr_02a_404f:
	jr   nz, jr_02a_4071                             ; $404f: $20 $20

jr_02a_4051:
	jr   nz, jr_02a_4073                             ; $4051: $20 $20

jr_02a_4053:
	ld   a, [bc]                                     ; $4053: $0a
	add  b                                           ; $4054: $80
	add  b                                           ; $4055: $80
	add  b                                           ; $4056: $80
	add  b                                           ; $4057: $80
	add  b                                           ; $4058: $80
	add  b                                           ; $4059: $80
	add  b                                           ; $405a: $80
	add  b                                           ; $405b: $80
	add  b                                           ; $405c: $80
	add  b                                           ; $405d: $80
	add  b                                           ; $405e: $80
	add  b                                           ; $405f: $80
	ld   [TurnOnLCD], sp                                 ; $4060: $08 $09 $09
	add  hl, bc                                      ; $4063: $09
	ld   a, [bc]                                     ; $4064: $0a
	inc  bc                                          ; $4065: $03
	ld   [$2020], sp                                 ; $4066: $08 $20 $20
	jr   nz, jr_02a_408b                             ; $4069: $20 $20

jr_02a_406b:
	jr   nz, jr_02a_408d                             ; $406b: $20 $20

jr_02a_406d:
	jr   nz, jr_02a_408f                             ; $406d: $20 $20

jr_02a_406f:
	jr   nz, jr_02a_4091                             ; $406f: $20 $20

jr_02a_4071:
	jr   nz, jr_02a_4093                             ; $4071: $20 $20

jr_02a_4073:
	ld   a, [bc]                                     ; $4073: $0a
	add  b                                           ; $4074: $80
	add  b                                           ; $4075: $80
	add  b                                           ; $4076: $80
	add  b                                           ; $4077: $80
	add  b                                           ; $4078: $80
	add  b                                           ; $4079: $80
	add  b                                           ; $407a: $80
	add  b                                           ; $407b: $80
	add  b                                           ; $407c: $80
	add  b                                           ; $407d: $80
	add  b                                           ; $407e: $80
	add  b                                           ; $407f: $80
	ld   [TurnOnLCD], sp                                 ; $4080: $08 $09 $09
	add  hl, bc                                      ; $4083: $09
	ld   a, [bc]                                     ; $4084: $0a
	inc  bc                                          ; $4085: $03
	ld   [$2020], sp                                 ; $4086: $08 $20 $20
	jr   nz, jr_02a_40ab                             ; $4089: $20 $20

jr_02a_408b:
	jr   nz, jr_02a_40ad                             ; $408b: $20 $20

jr_02a_408d:
	jr   nz, jr_02a_40af                             ; $408d: $20 $20

jr_02a_408f:
	jr   nz, jr_02a_40b1                             ; $408f: $20 $20

jr_02a_4091:
	jr   nz, jr_02a_40b3                             ; $4091: $20 $20

jr_02a_4093:
	ld   a, [bc]                                     ; $4093: $0a
	add  b                                           ; $4094: $80
	add  b                                           ; $4095: $80
	add  b                                           ; $4096: $80
	add  b                                           ; $4097: $80
	add  b                                           ; $4098: $80
	add  b                                           ; $4099: $80
	add  b                                           ; $409a: $80
	add  b                                           ; $409b: $80
	add  b                                           ; $409c: $80
	add  b                                           ; $409d: $80
	add  b                                           ; $409e: $80
	add  b                                           ; $409f: $80
	dec  bc                                          ; $40a0: $0b
	inc  c                                           ; $40a1: $0c
	inc  c                                           ; $40a2: $0c
	inc  c                                           ; $40a3: $0c
	dec  c                                           ; $40a4: $0d
	ld   [bc], a                                     ; $40a5: $02
	dec  bc                                          ; $40a6: $0b
	inc  c                                           ; $40a7: $0c
	inc  c                                           ; $40a8: $0c
	inc  c                                           ; $40a9: $0c
	inc  c                                           ; $40aa: $0c

jr_02a_40ab:
	inc  c                                           ; $40ab: $0c
	inc  c                                           ; $40ac: $0c

jr_02a_40ad:
	inc  c                                           ; $40ad: $0c
	inc  c                                           ; $40ae: $0c

jr_02a_40af:
	inc  c                                           ; $40af: $0c
	inc  c                                           ; $40b0: $0c

jr_02a_40b1:
	inc  c                                           ; $40b1: $0c
	inc  c                                           ; $40b2: $0c

jr_02a_40b3:
	dec  c                                           ; $40b3: $0d
	add  b                                           ; $40b4: $80
	add  b                                           ; $40b5: $80
	add  b                                           ; $40b6: $80
	add  b                                           ; $40b7: $80
	add  b                                           ; $40b8: $80
	add  b                                           ; $40b9: $80
	add  b                                           ; $40ba: $80
	add  b                                           ; $40bb: $80
	add  b                                           ; $40bc: $80
	add  b                                           ; $40bd: $80
	add  b                                           ; $40be: $80
	add  b                                           ; $40bf: $80
	ld   b, $06                                      ; $40c0: $06 $06
	ld   b, $06                                      ; $40c2: $06 $06
	ld   b, $06                                      ; $40c4: $06 $06
	ld   b, $06                                      ; $40c6: $06 $06
	ld   b, $06                                      ; $40c8: $06 $06
	ld   b, $06                                      ; $40ca: $06 $06
	ld   b, $06                                      ; $40cc: $06 $06
	ld   b, $06                                      ; $40ce: $06 $06
	add  b                                           ; $40d0: $80

jr_02a_40d1:
	add  b                                           ; $40d1: $80
	add  b                                           ; $40d2: $80
	add  b                                           ; $40d3: $80
	add  b                                           ; $40d4: $80
	add  b                                           ; $40d5: $80
	add  b                                           ; $40d6: $80
	add  b                                           ; $40d7: $80
	add  b                                           ; $40d8: $80
	add  b                                           ; $40d9: $80
	add  b                                           ; $40da: $80
	add  b                                           ; $40db: $80
	add  b                                           ; $40dc: $80
	add  b                                           ; $40dd: $80
	add  b                                           ; $40de: $80
	add  b                                           ; $40df: $80
	ld   b, $07                                      ; $40e0: $06 $07
	ld   [$2009], sp                                 ; $40e2: $08 $09 $20
	inc  bc                                          ; $40e5: $03
	inc  b                                           ; $40e6: $04
	jr   nz, @+$22                                   ; $40e7: $20 $20

	jr   nz, @+$22                                   ; $40e9: $20 $20

	jr   nz, jr_02a_410d                             ; $40eb: $20 $20

	jr   nz, jr_02a_410f                             ; $40ed: $20 $20

	jr   nz, jr_02a_4071                             ; $40ef: $20 $80

	add  b                                           ; $40f1: $80
	add  b                                           ; $40f2: $80
	add  b                                           ; $40f3: $80
	add  b                                           ; $40f4: $80
	add  b                                           ; $40f5: $80
	add  b                                           ; $40f6: $80
	add  b                                           ; $40f7: $80
	add  b                                           ; $40f8: $80
	add  b                                           ; $40f9: $80
	add  b                                           ; $40fa: $80
	add  b                                           ; $40fb: $80
	add  b                                           ; $40fc: $80
	add  b                                           ; $40fd: $80
	add  b                                           ; $40fe: $80
	add  b                                           ; $40ff: $80
	ld   d, $17                                      ; $4100: $16 $17
	jr   jr_02a_411d                                 ; $4102: $18 $19

	ld   [de], a                                     ; $4104: $12
	inc  de                                          ; $4105: $13
	inc  d                                           ; $4106: $14
	dec  d                                           ; $4107: $15
	jr   nz, jr_02a_410a                             ; $4108: $20 $00

jr_02a_410a:
	ld   bc, $2020                                   ; $410a: $01 $20 $20

jr_02a_410d:
	jr   nz, jr_02a_412f                             ; $410d: $20 $20

jr_02a_410f:
	jr   nz, jr_02a_4091                             ; $410f: $20 $80

jr_02a_4111:
	add  b                                           ; $4111: $80
	add  b                                           ; $4112: $80
	add  b                                           ; $4113: $80
	add  b                                           ; $4114: $80
	add  b                                           ; $4115: $80
	add  b                                           ; $4116: $80
	add  b                                           ; $4117: $80
	add  b                                           ; $4118: $80
	add  b                                           ; $4119: $80
	add  b                                           ; $411a: $80
	add  b                                           ; $411b: $80
	add  b                                           ; $411c: $80

jr_02a_411d:
	add  b                                           ; $411d: $80
	add  b                                           ; $411e: $80
	add  b                                           ; $411f: $80
	ld   h, $27                                      ; $4120: $26 $27
	jr   z, jr_02a_414d                              ; $4122: $28 $29

	ld   [hl+], a                                    ; $4124: $22
	inc  hl                                          ; $4125: $23
	inc  h                                           ; $4126: $24
	dec  h                                           ; $4127: $25
	jr   nz, jr_02a_413a                             ; $4128: $20 $10

	ld   de, $2020                                   ; $412a: $11 $20 $20
	jr   nz, jr_02a_414f                             ; $412d: $20 $20

jr_02a_412f:
	jr   nz, jr_02a_40b1                             ; $412f: $20 $80

jr_02a_4131:
	add  b                                           ; $4131: $80
	add  b                                           ; $4132: $80
	add  b                                           ; $4133: $80
	add  b                                           ; $4134: $80
	add  b                                           ; $4135: $80
	add  b                                           ; $4136: $80
	add  b                                           ; $4137: $80
	add  b                                           ; $4138: $80
	add  b                                           ; $4139: $80

jr_02a_413a:
	add  b                                           ; $413a: $80
	add  b                                           ; $413b: $80
	add  b                                           ; $413c: $80
	add  b                                           ; $413d: $80
	add  b                                           ; $413e: $80
	add  b                                           ; $413f: $80
	ld   [hl], $37                                   ; $4140: $36 $37
	jr   c, jr_02a_417d                              ; $4142: $38 $39

	jr   nz, jr_02a_4179                             ; $4144: $20 $33

	inc  [hl]                                        ; $4146: $34
	jr   nz, @+$22                                   ; $4147: $20 $20

	jr   nz, @+$22                                   ; $4149: $20 $20

	jr   nz, @+$22                                   ; $414b: $20 $20

jr_02a_414d:
	jr   nz, @+$22                                   ; $414d: $20 $20

jr_02a_414f:
	jr   nz, jr_02a_40d1                             ; $414f: $20 $80

jr_02a_4151:
	add  b                                           ; $4151: $80
	add  b                                           ; $4152: $80
	add  b                                           ; $4153: $80
	add  b                                           ; $4154: $80
	add  b                                           ; $4155: $80
	add  b                                           ; $4156: $80
	add  b                                           ; $4157: $80
	add  b                                           ; $4158: $80
	add  b                                           ; $4159: $80
	add  b                                           ; $415a: $80
	add  b                                           ; $415b: $80
	add  b                                           ; $415c: $80
	add  b                                           ; $415d: $80
	add  b                                           ; $415e: $80
	add  b                                           ; $415f: $80
	ld   b, $06                                      ; $4160: $06 $06
	ld   b, $06                                      ; $4162: $06 $06
	ld   b, $06                                      ; $4164: $06 $06
	ld   b, $06                                      ; $4166: $06 $06
	ld   b, $06                                      ; $4168: $06 $06
	ld   b, $06                                      ; $416a: $06 $06
	ld   b, $06                                      ; $416c: $06 $06
	ld   b, $06                                      ; $416e: $06 $06
	add  b                                           ; $4170: $80

jr_02a_4171:
	add  b                                           ; $4171: $80
	add  b                                           ; $4172: $80
	add  b                                           ; $4173: $80
	add  b                                           ; $4174: $80
	add  b                                           ; $4175: $80
	add  b                                           ; $4176: $80
	add  b                                           ; $4177: $80
	add  b                                           ; $4178: $80

jr_02a_4179:
	add  b                                           ; $4179: $80
	add  b                                           ; $417a: $80
	add  b                                           ; $417b: $80
	add  b                                           ; $417c: $80

jr_02a_417d:
	add  b                                           ; $417d: $80
	add  b                                           ; $417e: $80
	add  b                                           ; $417f: $80
	ld   b, $07                                      ; $4180: $06 $07
	ld   [$2009], sp                                 ; $4182: $08 $09 $20
	inc  bc                                          ; $4185: $03
	inc  b                                           ; $4186: $04
	jr   nz, @+$22                                   ; $4187: $20 $20

	jr   nz, @+$22                                   ; $4189: $20 $20

	jr   nz, jr_02a_41ad                             ; $418b: $20 $20

	jr   nz, jr_02a_41af                             ; $418d: $20 $20

	jr   nz, jr_02a_4111                             ; $418f: $20 $80

	add  b                                           ; $4191: $80
	add  b                                           ; $4192: $80
	add  b                                           ; $4193: $80
	add  b                                           ; $4194: $80
	add  b                                           ; $4195: $80
	add  b                                           ; $4196: $80
	add  b                                           ; $4197: $80
	add  b                                           ; $4198: $80
	add  b                                           ; $4199: $80
	add  b                                           ; $419a: $80
	add  b                                           ; $419b: $80
	add  b                                           ; $419c: $80
	add  b                                           ; $419d: $80
	add  b                                           ; $419e: $80
	add  b                                           ; $419f: $80
	ld   d, $17                                      ; $41a0: $16 $17
	jr   jr_02a_41bd                                 ; $41a2: $18 $19

	ld   [de], a                                     ; $41a4: $12
	inc  de                                          ; $41a5: $13
	inc  d                                           ; $41a6: $14
	dec  d                                           ; $41a7: $15
	jr   nz, jr_02a_41aa                             ; $41a8: $20 $00

jr_02a_41aa:
	ld   bc, $2020                                   ; $41aa: $01 $20 $20

jr_02a_41ad:
	jr   nz, jr_02a_41cf                             ; $41ad: $20 $20

jr_02a_41af:
	jr   nz, jr_02a_4131                             ; $41af: $20 $80

	add  b                                           ; $41b1: $80
	add  b                                           ; $41b2: $80
	add  b                                           ; $41b3: $80
	add  b                                           ; $41b4: $80
	add  b                                           ; $41b5: $80
	add  b                                           ; $41b6: $80
	add  b                                           ; $41b7: $80
	add  b                                           ; $41b8: $80
	add  b                                           ; $41b9: $80
	add  b                                           ; $41ba: $80
	add  b                                           ; $41bb: $80
	add  b                                           ; $41bc: $80

jr_02a_41bd:
	add  b                                           ; $41bd: $80
	add  b                                           ; $41be: $80
	add  b                                           ; $41bf: $80
	ld   h, $27                                      ; $41c0: $26 $27
	jr   z, jr_02a_41ed                              ; $41c2: $28 $29

	ld   [hl+], a                                    ; $41c4: $22
	inc  hl                                          ; $41c5: $23
	inc  h                                           ; $41c6: $24
	dec  h                                           ; $41c7: $25
	jr   nz, jr_02a_41da                             ; $41c8: $20 $10

	ld   de, $2020                                   ; $41ca: $11 $20 $20
	jr   nz, jr_02a_41ef                             ; $41cd: $20 $20

jr_02a_41cf:
	jr   nz, jr_02a_4151                             ; $41cf: $20 $80

	add  b                                           ; $41d1: $80
	add  b                                           ; $41d2: $80
	add  b                                           ; $41d3: $80
	add  b                                           ; $41d4: $80
	add  b                                           ; $41d5: $80
	add  b                                           ; $41d6: $80
	add  b                                           ; $41d7: $80
	add  b                                           ; $41d8: $80
	add  b                                           ; $41d9: $80

jr_02a_41da:
	add  b                                           ; $41da: $80
	add  b                                           ; $41db: $80
	add  b                                           ; $41dc: $80
	add  b                                           ; $41dd: $80
	add  b                                           ; $41de: $80
	add  b                                           ; $41df: $80
	ld   [hl], $37                                   ; $41e0: $36 $37
	jr   c, jr_02a_421d                              ; $41e2: $38 $39

	jr   nz, jr_02a_4219                             ; $41e4: $20 $33

	inc  [hl]                                        ; $41e6: $34
	jr   nz, jr_02a_4209                             ; $41e7: $20 $20

	jr   nz, jr_02a_420b                             ; $41e9: $20 $20

	jr   nz, jr_02a_420d                             ; $41eb: $20 $20

jr_02a_41ed:
	jr   nz, jr_02a_420f                             ; $41ed: $20 $20

jr_02a_41ef:
	jr   nz, jr_02a_4171                             ; $41ef: $20 $80

	add  b                                           ; $41f1: $80
	add  b                                           ; $41f2: $80
	add  b                                           ; $41f3: $80
	add  b                                           ; $41f4: $80
	add  b                                           ; $41f5: $80
	add  b                                           ; $41f6: $80
	add  b                                           ; $41f7: $80
	add  b                                           ; $41f8: $80
	add  b                                           ; $41f9: $80
	add  b                                           ; $41fa: $80
	add  b                                           ; $41fb: $80
	add  b                                           ; $41fc: $80
	add  b                                           ; $41fd: $80
	add  b                                           ; $41fe: $80
	add  b                                           ; $41ff: $80
	add  b                                           ; $4200: $80
	add  b                                           ; $4201: $80
	add  b                                           ; $4202: $80
	add  b                                           ; $4203: $80
	add  b                                           ; $4204: $80
	add  b                                           ; $4205: $80
	add  b                                           ; $4206: $80
	add  b                                           ; $4207: $80
	add  b                                           ; $4208: $80

jr_02a_4209:
	add  b                                           ; $4209: $80
	add  b                                           ; $420a: $80

jr_02a_420b:
	add  b                                           ; $420b: $80
	add  b                                           ; $420c: $80

jr_02a_420d:
	add  b                                           ; $420d: $80
	add  b                                           ; $420e: $80

jr_02a_420f:
	add  b                                           ; $420f: $80
	add  b                                           ; $4210: $80
	add  b                                           ; $4211: $80
	add  b                                           ; $4212: $80
	add  b                                           ; $4213: $80
	add  b                                           ; $4214: $80
	add  b                                           ; $4215: $80
	add  b                                           ; $4216: $80
	add  b                                           ; $4217: $80
	add  b                                           ; $4218: $80

jr_02a_4219:
	add  b                                           ; $4219: $80
	add  b                                           ; $421a: $80
	add  b                                           ; $421b: $80
	add  b                                           ; $421c: $80

jr_02a_421d:
	add  b                                           ; $421d: $80
	add  b                                           ; $421e: $80
	add  b                                           ; $421f: $80
	add  b                                           ; $4220: $80
	add  b                                           ; $4221: $80
	add  b                                           ; $4222: $80
	add  b                                           ; $4223: $80
	add  b                                           ; $4224: $80
	add  b                                           ; $4225: $80
	add  b                                           ; $4226: $80
	add  b                                           ; $4227: $80
	add  b                                           ; $4228: $80
	add  b                                           ; $4229: $80
	add  b                                           ; $422a: $80
	add  b                                           ; $422b: $80
	add  b                                           ; $422c: $80
	add  b                                           ; $422d: $80
	add  b                                           ; $422e: $80
	add  b                                           ; $422f: $80
	add  b                                           ; $4230: $80
	add  b                                           ; $4231: $80
	add  b                                           ; $4232: $80
	add  b                                           ; $4233: $80
	add  b                                           ; $4234: $80
	add  b                                           ; $4235: $80
	add  b                                           ; $4236: $80
	add  b                                           ; $4237: $80
	add  b                                           ; $4238: $80
	add  b                                           ; $4239: $80
	add  b                                           ; $423a: $80
	add  b                                           ; $423b: $80
	add  b                                           ; $423c: $80
	add  b                                           ; $423d: $80
	add  b                                           ; $423e: $80
	add  b                                           ; $423f: $80
	add  b                                           ; $4240: $80
	add  b                                           ; $4241: $80
	add  b                                           ; $4242: $80
	add  b                                           ; $4243: $80
	add  b                                           ; $4244: $80
	add  b                                           ; $4245: $80
	add  b                                           ; $4246: $80
	add  b                                           ; $4247: $80
	add  b                                           ; $4248: $80
	add  b                                           ; $4249: $80
	add  b                                           ; $424a: $80
	add  b                                           ; $424b: $80
	add  b                                           ; $424c: $80
	add  b                                           ; $424d: $80
	add  b                                           ; $424e: $80
	add  b                                           ; $424f: $80
	add  b                                           ; $4250: $80
	add  b                                           ; $4251: $80
	add  b                                           ; $4252: $80
	add  b                                           ; $4253: $80
	add  b                                           ; $4254: $80
	add  b                                           ; $4255: $80
	add  b                                           ; $4256: $80
	add  b                                           ; $4257: $80
	add  b                                           ; $4258: $80
	add  b                                           ; $4259: $80
	add  b                                           ; $425a: $80
	add  b                                           ; $425b: $80
	add  b                                           ; $425c: $80
	add  b                                           ; $425d: $80
	add  b                                           ; $425e: $80
	add  b                                           ; $425f: $80
	add  b                                           ; $4260: $80
	add  b                                           ; $4261: $80
	add  b                                           ; $4262: $80
	add  b                                           ; $4263: $80
	add  b                                           ; $4264: $80
	add  b                                           ; $4265: $80
	add  b                                           ; $4266: $80
	add  b                                           ; $4267: $80
	add  b                                           ; $4268: $80
	add  b                                           ; $4269: $80
	add  b                                           ; $426a: $80
	add  b                                           ; $426b: $80
	add  b                                           ; $426c: $80
	add  b                                           ; $426d: $80
	add  b                                           ; $426e: $80
	add  b                                           ; $426f: $80
	add  b                                           ; $4270: $80
	add  b                                           ; $4271: $80
	add  b                                           ; $4272: $80
	add  b                                           ; $4273: $80
	add  b                                           ; $4274: $80
	add  b                                           ; $4275: $80
	add  b                                           ; $4276: $80
	add  b                                           ; $4277: $80
	add  b                                           ; $4278: $80
	add  b                                           ; $4279: $80
	add  b                                           ; $427a: $80
	add  b                                           ; $427b: $80
	add  b                                           ; $427c: $80
	add  b                                           ; $427d: $80
	add  b                                           ; $427e: $80
	add  b                                           ; $427f: $80
	add  b                                           ; $4280: $80
	add  b                                           ; $4281: $80
	add  b                                           ; $4282: $80
	add  b                                           ; $4283: $80
	add  b                                           ; $4284: $80
	add  b                                           ; $4285: $80
	add  b                                           ; $4286: $80
	add  b                                           ; $4287: $80
	add  b                                           ; $4288: $80
	add  b                                           ; $4289: $80
	add  b                                           ; $428a: $80
	add  b                                           ; $428b: $80
	add  b                                           ; $428c: $80
	add  b                                           ; $428d: $80
	add  b                                           ; $428e: $80
	add  b                                           ; $428f: $80
	add  b                                           ; $4290: $80
	add  b                                           ; $4291: $80
	add  b                                           ; $4292: $80
	add  b                                           ; $4293: $80
	add  b                                           ; $4294: $80
	add  b                                           ; $4295: $80
	add  b                                           ; $4296: $80
	add  b                                           ; $4297: $80
	add  b                                           ; $4298: $80
	add  b                                           ; $4299: $80
	add  b                                           ; $429a: $80
	add  b                                           ; $429b: $80
	add  b                                           ; $429c: $80
	add  b                                           ; $429d: $80
	add  b                                           ; $429e: $80
	add  b                                           ; $429f: $80
	add  b                                           ; $42a0: $80
	add  b                                           ; $42a1: $80
	add  b                                           ; $42a2: $80
	add  b                                           ; $42a3: $80
	add  b                                           ; $42a4: $80
	add  b                                           ; $42a5: $80
	add  b                                           ; $42a6: $80
	add  b                                           ; $42a7: $80
	add  b                                           ; $42a8: $80
	add  b                                           ; $42a9: $80
	add  b                                           ; $42aa: $80
	add  b                                           ; $42ab: $80
	add  b                                           ; $42ac: $80
	add  b                                           ; $42ad: $80
	add  b                                           ; $42ae: $80
	add  b                                           ; $42af: $80
	add  b                                           ; $42b0: $80
	add  b                                           ; $42b1: $80
	add  b                                           ; $42b2: $80
	add  b                                           ; $42b3: $80
	add  b                                           ; $42b4: $80
	add  b                                           ; $42b5: $80
	add  b                                           ; $42b6: $80
	add  b                                           ; $42b7: $80
	add  b                                           ; $42b8: $80
	add  b                                           ; $42b9: $80
	add  b                                           ; $42ba: $80
	add  b                                           ; $42bb: $80
	add  b                                           ; $42bc: $80
	add  b                                           ; $42bd: $80
	add  b                                           ; $42be: $80
	add  b                                           ; $42bf: $80
	add  b                                           ; $42c0: $80
	add  b                                           ; $42c1: $80
	add  b                                           ; $42c2: $80
	add  b                                           ; $42c3: $80
	add  b                                           ; $42c4: $80
	add  b                                           ; $42c5: $80
	add  b                                           ; $42c6: $80
	add  b                                           ; $42c7: $80
	add  b                                           ; $42c8: $80
	add  b                                           ; $42c9: $80
	add  b                                           ; $42ca: $80
	add  b                                           ; $42cb: $80
	add  b                                           ; $42cc: $80
	add  b                                           ; $42cd: $80
	add  b                                           ; $42ce: $80
	add  b                                           ; $42cf: $80
	add  b                                           ; $42d0: $80
	add  b                                           ; $42d1: $80
	add  b                                           ; $42d2: $80
	add  b                                           ; $42d3: $80
	add  b                                           ; $42d4: $80
	add  b                                           ; $42d5: $80
	add  b                                           ; $42d6: $80
	add  b                                           ; $42d7: $80
	add  b                                           ; $42d8: $80
	add  b                                           ; $42d9: $80
	add  b                                           ; $42da: $80
	add  b                                           ; $42db: $80
	add  b                                           ; $42dc: $80
	add  b                                           ; $42dd: $80
	add  b                                           ; $42de: $80
	add  b                                           ; $42df: $80
	add  b                                           ; $42e0: $80
	add  b                                           ; $42e1: $80
	add  b                                           ; $42e2: $80
	add  b                                           ; $42e3: $80
	add  b                                           ; $42e4: $80
	add  b                                           ; $42e5: $80
	add  b                                           ; $42e6: $80
	add  b                                           ; $42e7: $80
	add  b                                           ; $42e8: $80
	add  b                                           ; $42e9: $80
	add  b                                           ; $42ea: $80
	add  b                                           ; $42eb: $80
	add  b                                           ; $42ec: $80
	add  b                                           ; $42ed: $80
	add  b                                           ; $42ee: $80
	add  b                                           ; $42ef: $80
	add  b                                           ; $42f0: $80
	add  b                                           ; $42f1: $80
	add  b                                           ; $42f2: $80
	add  b                                           ; $42f3: $80
	add  b                                           ; $42f4: $80
	add  b                                           ; $42f5: $80
	add  b                                           ; $42f6: $80
	add  b                                           ; $42f7: $80
	add  b                                           ; $42f8: $80
	add  b                                           ; $42f9: $80
	add  b                                           ; $42fa: $80
	add  b                                           ; $42fb: $80
	add  b                                           ; $42fc: $80
	add  b                                           ; $42fd: $80
	add  b                                           ; $42fe: $80
	add  b                                           ; $42ff: $80
	add  b                                           ; $4300: $80
	add  b                                           ; $4301: $80
	add  b                                           ; $4302: $80
	add  b                                           ; $4303: $80
	add  b                                           ; $4304: $80
	add  b                                           ; $4305: $80
	add  b                                           ; $4306: $80
	add  b                                           ; $4307: $80
	add  b                                           ; $4308: $80
	add  b                                           ; $4309: $80
	add  b                                           ; $430a: $80
	add  b                                           ; $430b: $80
	add  b                                           ; $430c: $80
	add  b                                           ; $430d: $80
	add  b                                           ; $430e: $80
	add  b                                           ; $430f: $80
	add  b                                           ; $4310: $80
	add  b                                           ; $4311: $80
	add  b                                           ; $4312: $80
	add  b                                           ; $4313: $80
	add  b                                           ; $4314: $80
	add  b                                           ; $4315: $80
	add  b                                           ; $4316: $80
	add  b                                           ; $4317: $80
	add  b                                           ; $4318: $80
	add  b                                           ; $4319: $80
	add  b                                           ; $431a: $80
	add  b                                           ; $431b: $80
	add  b                                           ; $431c: $80
	add  b                                           ; $431d: $80
	add  b                                           ; $431e: $80
	add  b                                           ; $431f: $80
	add  b                                           ; $4320: $80
	add  b                                           ; $4321: $80
	add  b                                           ; $4322: $80
	add  b                                           ; $4323: $80
	add  b                                           ; $4324: $80
	add  b                                           ; $4325: $80
	add  b                                           ; $4326: $80
	add  b                                           ; $4327: $80
	add  b                                           ; $4328: $80
	add  b                                           ; $4329: $80
	add  b                                           ; $432a: $80
	add  b                                           ; $432b: $80
	add  b                                           ; $432c: $80
	add  b                                           ; $432d: $80
	add  b                                           ; $432e: $80
	add  b                                           ; $432f: $80
	add  b                                           ; $4330: $80
	add  b                                           ; $4331: $80
	add  b                                           ; $4332: $80
	add  b                                           ; $4333: $80
	add  b                                           ; $4334: $80
	add  b                                           ; $4335: $80
	add  b                                           ; $4336: $80
	add  b                                           ; $4337: $80
	add  b                                           ; $4338: $80
	add  b                                           ; $4339: $80
	add  b                                           ; $433a: $80
	add  b                                           ; $433b: $80
	add  b                                           ; $433c: $80
	add  b                                           ; $433d: $80
	add  b                                           ; $433e: $80
	add  b                                           ; $433f: $80
	add  b                                           ; $4340: $80
	add  b                                           ; $4341: $80
	add  b                                           ; $4342: $80
	add  b                                           ; $4343: $80
	add  b                                           ; $4344: $80
	add  b                                           ; $4345: $80
	add  b                                           ; $4346: $80
	add  b                                           ; $4347: $80
	add  b                                           ; $4348: $80
	add  b                                           ; $4349: $80
	add  b                                           ; $434a: $80
	add  b                                           ; $434b: $80
	add  b                                           ; $434c: $80
	add  b                                           ; $434d: $80
	add  b                                           ; $434e: $80
	add  b                                           ; $434f: $80
	add  b                                           ; $4350: $80
	add  b                                           ; $4351: $80
	add  b                                           ; $4352: $80
	add  b                                           ; $4353: $80
	add  b                                           ; $4354: $80
	add  b                                           ; $4355: $80
	add  b                                           ; $4356: $80
	add  b                                           ; $4357: $80
	add  b                                           ; $4358: $80
	add  b                                           ; $4359: $80
	add  b                                           ; $435a: $80
	add  b                                           ; $435b: $80
	add  b                                           ; $435c: $80
	add  b                                           ; $435d: $80
	add  b                                           ; $435e: $80
	add  b                                           ; $435f: $80
	add  b                                           ; $4360: $80
	add  b                                           ; $4361: $80
	add  b                                           ; $4362: $80
	add  b                                           ; $4363: $80
	add  b                                           ; $4364: $80
	add  b                                           ; $4365: $80
	add  b                                           ; $4366: $80
	add  b                                           ; $4367: $80
	add  b                                           ; $4368: $80
	add  b                                           ; $4369: $80
	add  b                                           ; $436a: $80
	add  b                                           ; $436b: $80
	add  b                                           ; $436c: $80
	add  b                                           ; $436d: $80
	add  b                                           ; $436e: $80
	add  b                                           ; $436f: $80
	add  b                                           ; $4370: $80
	add  b                                           ; $4371: $80
	add  b                                           ; $4372: $80
	add  b                                           ; $4373: $80
	add  b                                           ; $4374: $80
	add  b                                           ; $4375: $80
	add  b                                           ; $4376: $80
	add  b                                           ; $4377: $80
	add  b                                           ; $4378: $80
	add  b                                           ; $4379: $80
	add  b                                           ; $437a: $80
	add  b                                           ; $437b: $80
	add  b                                           ; $437c: $80
	add  b                                           ; $437d: $80
	add  b                                           ; $437e: $80
	add  b                                           ; $437f: $80
	add  b                                           ; $4380: $80
	add  b                                           ; $4381: $80
	add  b                                           ; $4382: $80
	add  b                                           ; $4383: $80
	add  b                                           ; $4384: $80
	add  b                                           ; $4385: $80
	add  b                                           ; $4386: $80
	add  b                                           ; $4387: $80
	add  b                                           ; $4388: $80
	add  b                                           ; $4389: $80
	add  b                                           ; $438a: $80
	add  b                                           ; $438b: $80
	add  b                                           ; $438c: $80
	add  b                                           ; $438d: $80
	add  b                                           ; $438e: $80
	add  b                                           ; $438f: $80
	add  b                                           ; $4390: $80
	add  b                                           ; $4391: $80
	add  b                                           ; $4392: $80
	add  b                                           ; $4393: $80
	add  b                                           ; $4394: $80
	add  b                                           ; $4395: $80
	add  b                                           ; $4396: $80
	add  b                                           ; $4397: $80
	add  b                                           ; $4398: $80
	add  b                                           ; $4399: $80
	add  b                                           ; $439a: $80
	add  b                                           ; $439b: $80
	add  b                                           ; $439c: $80
	add  b                                           ; $439d: $80
	add  b                                           ; $439e: $80
	add  b                                           ; $439f: $80
	add  b                                           ; $43a0: $80
	add  b                                           ; $43a1: $80
	add  b                                           ; $43a2: $80
	add  b                                           ; $43a3: $80
	add  b                                           ; $43a4: $80
	add  b                                           ; $43a5: $80
	add  b                                           ; $43a6: $80
	add  b                                           ; $43a7: $80
	add  b                                           ; $43a8: $80
	add  b                                           ; $43a9: $80
	add  b                                           ; $43aa: $80
	add  b                                           ; $43ab: $80
	add  b                                           ; $43ac: $80
	add  b                                           ; $43ad: $80
	add  b                                           ; $43ae: $80
	add  b                                           ; $43af: $80
	add  b                                           ; $43b0: $80
	add  b                                           ; $43b1: $80
	add  b                                           ; $43b2: $80
	add  b                                           ; $43b3: $80
	add  b                                           ; $43b4: $80
	add  b                                           ; $43b5: $80
	add  b                                           ; $43b6: $80
	add  b                                           ; $43b7: $80
	add  b                                           ; $43b8: $80
	add  b                                           ; $43b9: $80
	add  b                                           ; $43ba: $80
	add  b                                           ; $43bb: $80
	add  b                                           ; $43bc: $80
	add  b                                           ; $43bd: $80
	add  b                                           ; $43be: $80
	add  b                                           ; $43bf: $80
	add  b                                           ; $43c0: $80
	add  b                                           ; $43c1: $80
	add  b                                           ; $43c2: $80
	add  b                                           ; $43c3: $80
	add  b                                           ; $43c4: $80
	add  b                                           ; $43c5: $80
	add  b                                           ; $43c6: $80
	add  b                                           ; $43c7: $80
	add  b                                           ; $43c8: $80
	add  b                                           ; $43c9: $80
	add  b                                           ; $43ca: $80
	add  b                                           ; $43cb: $80
	add  b                                           ; $43cc: $80
	add  b                                           ; $43cd: $80
	add  b                                           ; $43ce: $80
	add  b                                           ; $43cf: $80
	add  b                                           ; $43d0: $80
	add  b                                           ; $43d1: $80
	add  b                                           ; $43d2: $80
	add  b                                           ; $43d3: $80
	add  b                                           ; $43d4: $80
	add  b                                           ; $43d5: $80
	add  b                                           ; $43d6: $80
	add  b                                           ; $43d7: $80
	add  b                                           ; $43d8: $80
	add  b                                           ; $43d9: $80
	add  b                                           ; $43da: $80
	add  b                                           ; $43db: $80
	add  b                                           ; $43dc: $80
	add  b                                           ; $43dd: $80
	add  b                                           ; $43de: $80
	add  b                                           ; $43df: $80
	add  b                                           ; $43e0: $80
	add  b                                           ; $43e1: $80
	add  b                                           ; $43e2: $80
	add  b                                           ; $43e3: $80
	add  b                                           ; $43e4: $80
	add  b                                           ; $43e5: $80
	add  b                                           ; $43e6: $80
	add  b                                           ; $43e7: $80
	add  b                                           ; $43e8: $80
	add  b                                           ; $43e9: $80
	add  b                                           ; $43ea: $80
	add  b                                           ; $43eb: $80
	add  b                                           ; $43ec: $80
	add  b                                           ; $43ed: $80
	add  b                                           ; $43ee: $80
	add  b                                           ; $43ef: $80
	add  b                                           ; $43f0: $80
	add  b                                           ; $43f1: $80
	add  b                                           ; $43f2: $80
	add  b                                           ; $43f3: $80
	add  b                                           ; $43f4: $80
	add  b                                           ; $43f5: $80
	add  b                                           ; $43f6: $80
	add  b                                           ; $43f7: $80
	add  b                                           ; $43f8: $80
	add  b                                           ; $43f9: $80
	add  b                                           ; $43fa: $80
	add  b                                           ; $43fb: $80
	add  b                                           ; $43fc: $80
	add  b                                           ; $43fd: $80
	add  b                                           ; $43fe: $80
	add  b                                           ; $43ff: $80
	nop                                              ; $4400: $00
	nop                                              ; $4401: $00
	jr   nz, jr_02a_4404                             ; $4402: $20 $00

jr_02a_4404:
	nop                                              ; $4404: $00
	inc  bc                                          ; $4405: $03
	nop                                              ; $4406: $00
	nop                                              ; $4407: $00
	nop                                              ; $4408: $00
	jr   nz, jr_02a_440b                             ; $4409: $20 $00

jr_02a_440b:
	nop                                              ; $440b: $00
	nop                                              ; $440c: $00
	nop                                              ; $440d: $00
	nop                                              ; $440e: $00
	nop                                              ; $440f: $00
	nop                                              ; $4410: $00
	nop                                              ; $4411: $00
	nop                                              ; $4412: $00
	nop                                              ; $4413: $00
	ld   [$0808], sp                                 ; $4414: $08 $08 $08
	ld   [$0808], sp                                 ; $4417: $08 $08 $08
	ld   [$0808], sp                                 ; $441a: $08 $08 $08
	ld   [$0808], sp                                 ; $441d: $08 $08 $08
	nop                                              ; $4420: $00
	nop                                              ; $4421: $00
	nop                                              ; $4422: $00
	nop                                              ; $4423: $00
	nop                                              ; $4424: $00
	inc  bc                                          ; $4425: $03
	nop                                              ; $4426: $00
	ld   a, [bc]                                     ; $4427: $0a
	ld   a, [bc]                                     ; $4428: $0a
	ld   a, [bc]                                     ; $4429: $0a
	ld   a, [bc]                                     ; $442a: $0a
	ld   a, [bc]                                     ; $442b: $0a
	ld   a, [bc]                                     ; $442c: $0a
	ld   a, [bc]                                     ; $442d: $0a
	ld   a, [bc]                                     ; $442e: $0a
	ld   a, [bc]                                     ; $442f: $0a
	ld   a, [bc]                                     ; $4430: $0a
	ld   a, [bc]                                     ; $4431: $0a
	ld   a, [bc]                                     ; $4432: $0a
	nop                                              ; $4433: $00
	ld   [$0808], sp                                 ; $4434: $08 $08 $08
	ld   [$0808], sp                                 ; $4437: $08 $08 $08
	ld   [$0808], sp                                 ; $443a: $08 $08 $08
	ld   [$0808], sp                                 ; $443d: $08 $08 $08
	nop                                              ; $4440: $00
	nop                                              ; $4441: $00
	nop                                              ; $4442: $00
	nop                                              ; $4443: $00
	nop                                              ; $4444: $00
	inc  bc                                          ; $4445: $03
	nop                                              ; $4446: $00
	ld   a, [bc]                                     ; $4447: $0a
	ld   a, [bc]                                     ; $4448: $0a
	ld   a, [bc]                                     ; $4449: $0a
	ld   a, [bc]                                     ; $444a: $0a
	ld   a, [bc]                                     ; $444b: $0a
	ld   a, [bc]                                     ; $444c: $0a
	ld   a, [bc]                                     ; $444d: $0a
	ld   a, [bc]                                     ; $444e: $0a
	ld   a, [bc]                                     ; $444f: $0a
	ld   a, [bc]                                     ; $4450: $0a
	ld   a, [bc]                                     ; $4451: $0a
	ld   a, [bc]                                     ; $4452: $0a
	nop                                              ; $4453: $00
	ld   [$0808], sp                                 ; $4454: $08 $08 $08
	ld   [$0808], sp                                 ; $4457: $08 $08 $08
	ld   [$0808], sp                                 ; $445a: $08 $08 $08
	ld   [$0808], sp                                 ; $445d: $08 $08 $08
	nop                                              ; $4460: $00
	nop                                              ; $4461: $00
	nop                                              ; $4462: $00
	nop                                              ; $4463: $00
	nop                                              ; $4464: $00
	inc  bc                                          ; $4465: $03
	nop                                              ; $4466: $00
	ld   a, [bc]                                     ; $4467: $0a
	ld   a, [bc]                                     ; $4468: $0a
	ld   a, [bc]                                     ; $4469: $0a
	ld   a, [bc]                                     ; $446a: $0a
	ld   a, [bc]                                     ; $446b: $0a
	ld   a, [bc]                                     ; $446c: $0a
	ld   a, [bc]                                     ; $446d: $0a
	ld   a, [bc]                                     ; $446e: $0a
	ld   a, [bc]                                     ; $446f: $0a
	ld   a, [bc]                                     ; $4470: $0a
	ld   a, [bc]                                     ; $4471: $0a
	ld   a, [bc]                                     ; $4472: $0a
	nop                                              ; $4473: $00
	ld   [$0808], sp                                 ; $4474: $08 $08 $08
	ld   [$0808], sp                                 ; $4477: $08 $08 $08
	ld   [$0808], sp                                 ; $447a: $08 $08 $08
	ld   [$0808], sp                                 ; $447d: $08 $08 $08
	nop                                              ; $4480: $00
	nop                                              ; $4481: $00
	nop                                              ; $4482: $00
	nop                                              ; $4483: $00
	nop                                              ; $4484: $00
	inc  bc                                          ; $4485: $03
	nop                                              ; $4486: $00
	ld   a, [bc]                                     ; $4487: $0a
	ld   a, [bc]                                     ; $4488: $0a
	ld   a, [bc]                                     ; $4489: $0a
	ld   a, [bc]                                     ; $448a: $0a
	ld   a, [bc]                                     ; $448b: $0a
	ld   a, [bc]                                     ; $448c: $0a
	ld   a, [bc]                                     ; $448d: $0a
	ld   a, [bc]                                     ; $448e: $0a
	ld   a, [bc]                                     ; $448f: $0a
	ld   a, [bc]                                     ; $4490: $0a
	ld   a, [bc]                                     ; $4491: $0a
	ld   a, [bc]                                     ; $4492: $0a
	nop                                              ; $4493: $00
	ld   [$0808], sp                                 ; $4494: $08 $08 $08
	ld   [$0808], sp                                 ; $4497: $08 $08 $08
	ld   [$0808], sp                                 ; $449a: $08 $08 $08
	ld   [$0808], sp                                 ; $449d: $08 $08 $08
	nop                                              ; $44a0: $00
	nop                                              ; $44a1: $00
	nop                                              ; $44a2: $00
	nop                                              ; $44a3: $00
	nop                                              ; $44a4: $00
	ld   b, e                                        ; $44a5: $43
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
	ld   [$0808], sp                                 ; $44b4: $08 $08 $08
	ld   [$0808], sp                                 ; $44b7: $08 $08 $08
	ld   [$0808], sp                                 ; $44ba: $08 $08 $08
	ld   [$0808], sp                                 ; $44bd: $08 $08 $08
	nop                                              ; $44c0: $00
	nop                                              ; $44c1: $00
	nop                                              ; $44c2: $00
	nop                                              ; $44c3: $00
	nop                                              ; $44c4: $00
	nop                                              ; $44c5: $00
	jr   nz, jr_02a_44c8                             ; $44c6: $20 $00

jr_02a_44c8:
	nop                                              ; $44c8: $00
	nop                                              ; $44c9: $00
	nop                                              ; $44ca: $00
	nop                                              ; $44cb: $00
	nop                                              ; $44cc: $00
	nop                                              ; $44cd: $00
	nop                                              ; $44ce: $00
	nop                                              ; $44cf: $00
	ld   [$0808], sp                                 ; $44d0: $08 $08 $08
	ld   [$0808], sp                                 ; $44d3: $08 $08 $08
	ld   [$0808], sp                                 ; $44d6: $08 $08 $08
	ld   [$0808], sp                                 ; $44d9: $08 $08 $08
	ld   [$0808], sp                                 ; $44dc: $08 $08 $08
	ld   [$0a0a], sp                                 ; $44df: $08 $0a $0a
	ld   a, [bc]                                     ; $44e2: $0a
	ld   a, [bc]                                     ; $44e3: $0a
	ld   a, [bc]                                     ; $44e4: $0a
	ld   a, [bc]                                     ; $44e5: $0a
	ld   a, [bc]                                     ; $44e6: $0a
	ld   a, [bc]                                     ; $44e7: $0a
	ld   a, [bc]                                     ; $44e8: $0a
	ld   a, [bc]                                     ; $44e9: $0a
	ld   a, [bc]                                     ; $44ea: $0a
	ld   a, [bc]                                     ; $44eb: $0a
	ld   a, [bc]                                     ; $44ec: $0a
	ld   a, [bc]                                     ; $44ed: $0a
	ld   a, [bc]                                     ; $44ee: $0a
	ld   a, [bc]                                     ; $44ef: $0a
	ld   [$0808], sp                                 ; $44f0: $08 $08 $08
	ld   [$0808], sp                                 ; $44f3: $08 $08 $08
	ld   [$0808], sp                                 ; $44f6: $08 $08 $08
	ld   [$0808], sp                                 ; $44f9: $08 $08 $08
	ld   [$0808], sp                                 ; $44fc: $08 $08 $08
	ld   [$0a0a], sp                                 ; $44ff: $08 $0a $0a
	ld   a, [bc]                                     ; $4502: $0a
	ld   a, [bc]                                     ; $4503: $0a
	ld   a, [bc]                                     ; $4504: $0a
	ld   a, [bc]                                     ; $4505: $0a
	ld   a, [bc]                                     ; $4506: $0a
	ld   a, [bc]                                     ; $4507: $0a
	ld   a, [bc]                                     ; $4508: $0a
	ld   a, [bc]                                     ; $4509: $0a
	ld   a, [bc]                                     ; $450a: $0a
	ld   a, [bc]                                     ; $450b: $0a
	ld   a, [bc]                                     ; $450c: $0a
	ld   a, [bc]                                     ; $450d: $0a
	ld   a, [bc]                                     ; $450e: $0a
	ld   a, [bc]                                     ; $450f: $0a
	ld   [$0808], sp                                 ; $4510: $08 $08 $08
	ld   [$0808], sp                                 ; $4513: $08 $08 $08
	ld   [$0808], sp                                 ; $4516: $08 $08 $08
	ld   [$0808], sp                                 ; $4519: $08 $08 $08
	ld   [$0808], sp                                 ; $451c: $08 $08 $08
	ld   [$0a0a], sp                                 ; $451f: $08 $0a $0a
	ld   a, [bc]                                     ; $4522: $0a
	ld   a, [bc]                                     ; $4523: $0a
	ld   a, [bc]                                     ; $4524: $0a
	ld   a, [bc]                                     ; $4525: $0a
	ld   a, [bc]                                     ; $4526: $0a
	ld   a, [bc]                                     ; $4527: $0a
	ld   a, [bc]                                     ; $4528: $0a
	ld   a, [bc]                                     ; $4529: $0a
	ld   a, [bc]                                     ; $452a: $0a
	ld   a, [bc]                                     ; $452b: $0a
	ld   a, [bc]                                     ; $452c: $0a
	ld   a, [bc]                                     ; $452d: $0a
	ld   a, [bc]                                     ; $452e: $0a
	ld   a, [bc]                                     ; $452f: $0a
	ld   [$0808], sp                                 ; $4530: $08 $08 $08
	ld   [$0808], sp                                 ; $4533: $08 $08 $08
	ld   [$0808], sp                                 ; $4536: $08 $08 $08
	ld   [$0808], sp                                 ; $4539: $08 $08 $08
	ld   [$0808], sp                                 ; $453c: $08 $08 $08
	ld   [$0a0a], sp                                 ; $453f: $08 $0a $0a
	ld   a, [bc]                                     ; $4542: $0a
	ld   a, [bc]                                     ; $4543: $0a
	ld   a, [bc]                                     ; $4544: $0a
	ld   a, [bc]                                     ; $4545: $0a
	ld   a, [bc]                                     ; $4546: $0a
	ld   a, [bc]                                     ; $4547: $0a
	ld   a, [bc]                                     ; $4548: $0a
	ld   a, [bc]                                     ; $4549: $0a
	ld   a, [bc]                                     ; $454a: $0a
	ld   a, [bc]                                     ; $454b: $0a
	ld   a, [bc]                                     ; $454c: $0a
	ld   a, [bc]                                     ; $454d: $0a
	ld   a, [bc]                                     ; $454e: $0a
	ld   a, [bc]                                     ; $454f: $0a
	ld   [$0808], sp                                 ; $4550: $08 $08 $08
	ld   [$0808], sp                                 ; $4553: $08 $08 $08
	ld   [$0808], sp                                 ; $4556: $08 $08 $08
	ld   [$0808], sp                                 ; $4559: $08 $08 $08
	ld   [$0808], sp                                 ; $455c: $08 $08 $08
	ld   [rRAMG], sp                                 ; $455f: $08 $00 $00
	nop                                              ; $4562: $00
	nop                                              ; $4563: $00
	jr   nz, jr_02a_4566                             ; $4564: $20 $00

jr_02a_4566:
	nop                                              ; $4566: $00
	nop                                              ; $4567: $00
	nop                                              ; $4568: $00
	nop                                              ; $4569: $00
	nop                                              ; $456a: $00
	nop                                              ; $456b: $00
	nop                                              ; $456c: $00
	nop                                              ; $456d: $00
	jr   nz, jr_02a_4590                             ; $456e: $20 $20

	ld   [$0808], sp                                 ; $4570: $08 $08 $08
	ld   [$0808], sp                                 ; $4573: $08 $08 $08
	ld   [$0808], sp                                 ; $4576: $08 $08 $08
	ld   [$0808], sp                                 ; $4579: $08 $08 $08
	ld   [$0808], sp                                 ; $457c: $08 $08 $08
	ld   [TurnOnLCD], sp                                 ; $457f: $08 $09 $09
	add  hl, bc                                      ; $4582: $09
	add  hl, bc                                      ; $4583: $09
	add  hl, bc                                      ; $4584: $09
	add  hl, bc                                      ; $4585: $09
	add  hl, bc                                      ; $4586: $09
	add  hl, bc                                      ; $4587: $09
	add  hl, bc                                      ; $4588: $09
	add  hl, bc                                      ; $4589: $09
	add  hl, bc                                      ; $458a: $09
	add  hl, bc                                      ; $458b: $09
	add  hl, bc                                      ; $458c: $09
	add  hl, bc                                      ; $458d: $09
	add  hl, bc                                      ; $458e: $09
	add  hl, bc                                      ; $458f: $09

jr_02a_4590:
	ld   [$0808], sp                                 ; $4590: $08 $08 $08
	ld   [$0808], sp                                 ; $4593: $08 $08 $08
	ld   [$0808], sp                                 ; $4596: $08 $08 $08
	ld   [$0808], sp                                 ; $4599: $08 $08 $08
	ld   [$0808], sp                                 ; $459c: $08 $08 $08
	ld   [TurnOnLCD], sp                                 ; $459f: $08 $09 $09
	add  hl, bc                                      ; $45a2: $09
	add  hl, bc                                      ; $45a3: $09
	add  hl, bc                                      ; $45a4: $09
	add  hl, bc                                      ; $45a5: $09
	add  hl, bc                                      ; $45a6: $09
	add  hl, bc                                      ; $45a7: $09
	add  hl, bc                                      ; $45a8: $09
	add  hl, bc                                      ; $45a9: $09
	add  hl, bc                                      ; $45aa: $09
	add  hl, bc                                      ; $45ab: $09
	add  hl, bc                                      ; $45ac: $09
	add  hl, bc                                      ; $45ad: $09
	add  hl, bc                                      ; $45ae: $09
	add  hl, bc                                      ; $45af: $09
	ld   [$0808], sp                                 ; $45b0: $08 $08 $08
	ld   [$0808], sp                                 ; $45b3: $08 $08 $08
	ld   [$0808], sp                                 ; $45b6: $08 $08 $08
	ld   [$0808], sp                                 ; $45b9: $08 $08 $08
	ld   [$0808], sp                                 ; $45bc: $08 $08 $08
	ld   [TurnOnLCD], sp                                 ; $45bf: $08 $09 $09
	add  hl, bc                                      ; $45c2: $09
	add  hl, bc                                      ; $45c3: $09
	add  hl, bc                                      ; $45c4: $09
	add  hl, bc                                      ; $45c5: $09
	add  hl, bc                                      ; $45c6: $09
	add  hl, bc                                      ; $45c7: $09
	add  hl, bc                                      ; $45c8: $09
	add  hl, bc                                      ; $45c9: $09
	add  hl, bc                                      ; $45ca: $09
	add  hl, bc                                      ; $45cb: $09
	add  hl, bc                                      ; $45cc: $09
	add  hl, bc                                      ; $45cd: $09
	add  hl, bc                                      ; $45ce: $09
	add  hl, bc                                      ; $45cf: $09
	ld   [$0808], sp                                 ; $45d0: $08 $08 $08
	ld   [$0808], sp                                 ; $45d3: $08 $08 $08
	ld   [$0808], sp                                 ; $45d6: $08 $08 $08
	ld   [$0808], sp                                 ; $45d9: $08 $08 $08
	ld   [$0808], sp                                 ; $45dc: $08 $08 $08
	ld   [TurnOnLCD], sp                                 ; $45df: $08 $09 $09
	add  hl, bc                                      ; $45e2: $09
	add  hl, bc                                      ; $45e3: $09
	add  hl, bc                                      ; $45e4: $09
	add  hl, bc                                      ; $45e5: $09
	add  hl, bc                                      ; $45e6: $09
	add  hl, bc                                      ; $45e7: $09
	add  hl, bc                                      ; $45e8: $09
	add  hl, bc                                      ; $45e9: $09
	add  hl, bc                                      ; $45ea: $09
	add  hl, bc                                      ; $45eb: $09
	add  hl, bc                                      ; $45ec: $09
	add  hl, bc                                      ; $45ed: $09
	add  hl, bc                                      ; $45ee: $09
	add  hl, bc                                      ; $45ef: $09
	ld   [$0808], sp                                 ; $45f0: $08 $08 $08
	ld   [$0808], sp                                 ; $45f3: $08 $08 $08
	ld   [$0808], sp                                 ; $45f6: $08 $08 $08
	ld   [$0808], sp                                 ; $45f9: $08 $08 $08
	ld   [$0808], sp                                 ; $45fc: $08 $08 $08
	ld   [$0808], sp                                 ; $45ff: $08 $08 $08
	ld   [$0808], sp                                 ; $4602: $08 $08 $08
	ld   [$0808], sp                                 ; $4605: $08 $08 $08
	ld   [$0808], sp                                 ; $4608: $08 $08 $08
	ld   [$0808], sp                                 ; $460b: $08 $08 $08
	ld   [$0808], sp                                 ; $460e: $08 $08 $08
	ld   [$0808], sp                                 ; $4611: $08 $08 $08
	ld   [$0808], sp                                 ; $4614: $08 $08 $08
	ld   [$0808], sp                                 ; $4617: $08 $08 $08
	ld   [$0808], sp                                 ; $461a: $08 $08 $08
	ld   [$0808], sp                                 ; $461d: $08 $08 $08
	ld   [$0808], sp                                 ; $4620: $08 $08 $08
	ld   [$0808], sp                                 ; $4623: $08 $08 $08
	ld   [$0808], sp                                 ; $4626: $08 $08 $08
	ld   [$0808], sp                                 ; $4629: $08 $08 $08
	ld   [$0808], sp                                 ; $462c: $08 $08 $08
	ld   [$0808], sp                                 ; $462f: $08 $08 $08
	ld   [$0808], sp                                 ; $4632: $08 $08 $08
	ld   [$0808], sp                                 ; $4635: $08 $08 $08
	ld   [$0808], sp                                 ; $4638: $08 $08 $08
	ld   [$0808], sp                                 ; $463b: $08 $08 $08
	ld   [$0808], sp                                 ; $463e: $08 $08 $08
	ld   [$0808], sp                                 ; $4641: $08 $08 $08
	ld   [$0808], sp                                 ; $4644: $08 $08 $08
	ld   [$0808], sp                                 ; $4647: $08 $08 $08
	ld   [$0808], sp                                 ; $464a: $08 $08 $08
	ld   [$0808], sp                                 ; $464d: $08 $08 $08
	ld   [$0808], sp                                 ; $4650: $08 $08 $08
	ld   [$0808], sp                                 ; $4653: $08 $08 $08
	ld   [$0808], sp                                 ; $4656: $08 $08 $08
	ld   [$0808], sp                                 ; $4659: $08 $08 $08
	ld   [$0808], sp                                 ; $465c: $08 $08 $08
	ld   [$0808], sp                                 ; $465f: $08 $08 $08
	ld   [$0808], sp                                 ; $4662: $08 $08 $08
	ld   [$0808], sp                                 ; $4665: $08 $08 $08
	ld   [$0808], sp                                 ; $4668: $08 $08 $08
	ld   [$0808], sp                                 ; $466b: $08 $08 $08
	ld   [$0808], sp                                 ; $466e: $08 $08 $08
	ld   [$0808], sp                                 ; $4671: $08 $08 $08
	ld   [$0808], sp                                 ; $4674: $08 $08 $08
	ld   [$0808], sp                                 ; $4677: $08 $08 $08
	ld   [$0808], sp                                 ; $467a: $08 $08 $08
	ld   [$0808], sp                                 ; $467d: $08 $08 $08
	ld   [$0808], sp                                 ; $4680: $08 $08 $08
	ld   [$0808], sp                                 ; $4683: $08 $08 $08
	ld   [$0808], sp                                 ; $4686: $08 $08 $08
	ld   [$0808], sp                                 ; $4689: $08 $08 $08
	ld   [$0808], sp                                 ; $468c: $08 $08 $08
	ld   [$0808], sp                                 ; $468f: $08 $08 $08
	ld   [$0808], sp                                 ; $4692: $08 $08 $08
	ld   [$0808], sp                                 ; $4695: $08 $08 $08
	ld   [$0808], sp                                 ; $4698: $08 $08 $08
	ld   [$0808], sp                                 ; $469b: $08 $08 $08
	ld   [$0808], sp                                 ; $469e: $08 $08 $08
	ld   [$0808], sp                                 ; $46a1: $08 $08 $08
	ld   [$0808], sp                                 ; $46a4: $08 $08 $08
	ld   [$0808], sp                                 ; $46a7: $08 $08 $08
	ld   [$0808], sp                                 ; $46aa: $08 $08 $08
	ld   [$0808], sp                                 ; $46ad: $08 $08 $08
	ld   [$0808], sp                                 ; $46b0: $08 $08 $08
	ld   [$0808], sp                                 ; $46b3: $08 $08 $08
	ld   [$0808], sp                                 ; $46b6: $08 $08 $08
	ld   [$0808], sp                                 ; $46b9: $08 $08 $08
	ld   [$0808], sp                                 ; $46bc: $08 $08 $08
	ld   [$0808], sp                                 ; $46bf: $08 $08 $08
	ld   [$0808], sp                                 ; $46c2: $08 $08 $08
	ld   [$0808], sp                                 ; $46c5: $08 $08 $08
	ld   [$0808], sp                                 ; $46c8: $08 $08 $08
	ld   [$0808], sp                                 ; $46cb: $08 $08 $08
	ld   [$0808], sp                                 ; $46ce: $08 $08 $08
	ld   [$0808], sp                                 ; $46d1: $08 $08 $08
	ld   [$0808], sp                                 ; $46d4: $08 $08 $08
	ld   [$0808], sp                                 ; $46d7: $08 $08 $08
	ld   [$0808], sp                                 ; $46da: $08 $08 $08
	ld   [$0808], sp                                 ; $46dd: $08 $08 $08
	ld   [$0808], sp                                 ; $46e0: $08 $08 $08
	ld   [$0808], sp                                 ; $46e3: $08 $08 $08
	ld   [$0808], sp                                 ; $46e6: $08 $08 $08
	ld   [$0808], sp                                 ; $46e9: $08 $08 $08
	ld   [$0808], sp                                 ; $46ec: $08 $08 $08
	ld   [$0808], sp                                 ; $46ef: $08 $08 $08
	ld   [$0808], sp                                 ; $46f2: $08 $08 $08
	ld   [$0808], sp                                 ; $46f5: $08 $08 $08
	ld   [$0808], sp                                 ; $46f8: $08 $08 $08
	ld   [$0808], sp                                 ; $46fb: $08 $08 $08
	ld   [$0808], sp                                 ; $46fe: $08 $08 $08
	ld   [$0808], sp                                 ; $4701: $08 $08 $08
	ld   [$0808], sp                                 ; $4704: $08 $08 $08
	ld   [$0808], sp                                 ; $4707: $08 $08 $08
	ld   [$0808], sp                                 ; $470a: $08 $08 $08
	ld   [$0808], sp                                 ; $470d: $08 $08 $08
	ld   [$0808], sp                                 ; $4710: $08 $08 $08
	ld   [$0808], sp                                 ; $4713: $08 $08 $08
	ld   [$0808], sp                                 ; $4716: $08 $08 $08
	ld   [$0808], sp                                 ; $4719: $08 $08 $08
	ld   [$0808], sp                                 ; $471c: $08 $08 $08
	ld   [$0808], sp                                 ; $471f: $08 $08 $08
	ld   [$0808], sp                                 ; $4722: $08 $08 $08
	ld   [$0808], sp                                 ; $4725: $08 $08 $08
	ld   [$0808], sp                                 ; $4728: $08 $08 $08
	ld   [$0808], sp                                 ; $472b: $08 $08 $08
	ld   [$0808], sp                                 ; $472e: $08 $08 $08
	ld   [$0808], sp                                 ; $4731: $08 $08 $08
	ld   [$0808], sp                                 ; $4734: $08 $08 $08
	ld   [$0808], sp                                 ; $4737: $08 $08 $08
	ld   [$0808], sp                                 ; $473a: $08 $08 $08
	ld   [$0808], sp                                 ; $473d: $08 $08 $08
	ld   [$0808], sp                                 ; $4740: $08 $08 $08
	ld   [$0808], sp                                 ; $4743: $08 $08 $08
	ld   [$0808], sp                                 ; $4746: $08 $08 $08
	ld   [$0808], sp                                 ; $4749: $08 $08 $08
	ld   [$0808], sp                                 ; $474c: $08 $08 $08
	ld   [$0808], sp                                 ; $474f: $08 $08 $08
	ld   [$0808], sp                                 ; $4752: $08 $08 $08
	ld   [$0808], sp                                 ; $4755: $08 $08 $08
	ld   [$0808], sp                                 ; $4758: $08 $08 $08
	ld   [$0808], sp                                 ; $475b: $08 $08 $08
	ld   [$0808], sp                                 ; $475e: $08 $08 $08
	ld   [$0808], sp                                 ; $4761: $08 $08 $08
	ld   [$0808], sp                                 ; $4764: $08 $08 $08
	ld   [$0808], sp                                 ; $4767: $08 $08 $08
	ld   [$0808], sp                                 ; $476a: $08 $08 $08
	ld   [$0808], sp                                 ; $476d: $08 $08 $08
	ld   [$0808], sp                                 ; $4770: $08 $08 $08
	ld   [$0808], sp                                 ; $4773: $08 $08 $08
	ld   [$0808], sp                                 ; $4776: $08 $08 $08
	ld   [$0808], sp                                 ; $4779: $08 $08 $08
	ld   [$0808], sp                                 ; $477c: $08 $08 $08

Jump_02a_477f:
	ld   [$0808], sp                                 ; $477f: $08 $08 $08
	ld   [$0808], sp                                 ; $4782: $08 $08 $08
	ld   [$0808], sp                                 ; $4785: $08 $08 $08
	ld   [$0808], sp                                 ; $4788: $08 $08 $08
	ld   [$0808], sp                                 ; $478b: $08 $08 $08
	ld   [$0808], sp                                 ; $478e: $08 $08 $08
	ld   [$0808], sp                                 ; $4791: $08 $08 $08
	ld   [$0808], sp                                 ; $4794: $08 $08 $08
	ld   [$0808], sp                                 ; $4797: $08 $08 $08
	ld   [$0808], sp                                 ; $479a: $08 $08 $08
	ld   [$0808], sp                                 ; $479d: $08 $08 $08
	ld   [$0808], sp                                 ; $47a0: $08 $08 $08
	ld   [$0808], sp                                 ; $47a3: $08 $08 $08
	ld   [$0808], sp                                 ; $47a6: $08 $08 $08
	ld   [$0808], sp                                 ; $47a9: $08 $08 $08
	ld   [$0808], sp                                 ; $47ac: $08 $08 $08
	ld   [$0808], sp                                 ; $47af: $08 $08 $08
	ld   [$0808], sp                                 ; $47b2: $08 $08 $08
	ld   [$0808], sp                                 ; $47b5: $08 $08 $08
	ld   [$0808], sp                                 ; $47b8: $08 $08 $08
	ld   [$0808], sp                                 ; $47bb: $08 $08 $08
	ld   [$0808], sp                                 ; $47be: $08 $08 $08
	ld   [$0808], sp                                 ; $47c1: $08 $08 $08
	ld   [$0808], sp                                 ; $47c4: $08 $08 $08
	ld   [$0808], sp                                 ; $47c7: $08 $08 $08
	ld   [$0808], sp                                 ; $47ca: $08 $08 $08
	ld   [$0808], sp                                 ; $47cd: $08 $08 $08
	ld   [$0808], sp                                 ; $47d0: $08 $08 $08
	ld   [$0808], sp                                 ; $47d3: $08 $08 $08
	ld   [$0808], sp                                 ; $47d6: $08 $08 $08
	ld   [$0808], sp                                 ; $47d9: $08 $08 $08
	ld   [$0808], sp                                 ; $47dc: $08 $08 $08
	ld   [$0808], sp                                 ; $47df: $08 $08 $08
	ld   [$0808], sp                                 ; $47e2: $08 $08 $08
	ld   [$0808], sp                                 ; $47e5: $08 $08 $08
	ld   [$0808], sp                                 ; $47e8: $08 $08 $08
	ld   [$0808], sp                                 ; $47eb: $08 $08 $08
	ld   [$0808], sp                                 ; $47ee: $08 $08 $08
	ld   [$0808], sp                                 ; $47f1: $08 $08 $08
	ld   [$0808], sp                                 ; $47f4: $08 $08 $08
	ld   [$0808], sp                                 ; $47f7: $08 $08 $08
	ld   [$0808], sp                                 ; $47fa: $08 $08 $08
	ld   [$0808], sp                                 ; $47fd: $08 $08 $08


Data_2a_4800::
	db $46, $47, $48, $1f, $3c, $3d, $3e, $3f, $3d, $3e, $3f, $00, $3e, $3f, $00, $00, $3f, $00, $00, $00, $00, $00, $00, $00, $30, $31, $32, $33, $34, $35, $80, $80
	db $49, $4a, $4b, $2f, $4c, $4d, $4e, $4f, $4d, $4e, $4f, $00, $4e, $4f, $00, $00, $4f, $00, $00, $00, $00, $00, $00, $00, $20, $21, $22, $23, $24, $25, $80, $80
	db $40, $41, $41, $40, $40, $41, $41, $40, $41, $41, $40, $59, $41, $40, $59, $59, $40, $59, $59, $59, $59, $59, $59, $59, $10, $11, $12, $13, $14, $15, $80, $80
if def(VWF)
	db $60, $61, $62, $63, $60, $61, $62, $63, $61, $62, $63, $58, $62, $63, $57, $58, $63, $58, $57, $58, $57, $58, $57, $58, $3b, $3a, $39, $38, $37, $36, $80, $80
	db $74, $75, $76, $77, $74, $75, $76, $77, $75, $76, $77, $68, $76, $77, $67, $68, $77, $68, $67, $68, $67, $68, $67, $68, $2b, $2a, $29, $28, $27, $26, $80, $80
else
	db $42, $50, $51, $42, $42, $50, $51, $42, $50, $51, $42, $58, $51, $42, $57, $58, $42, $58, $57, $58, $57, $58, $57, $58, $3b, $3a, $39, $38, $37, $36, $80, $80
	db $44, $60, $61, $44, $44, $60, $61, $44, $60, $61, $44, $68, $61, $44, $67, $68, $44, $68, $67, $68, $67, $68, $67, $68, $2b, $2a, $29, $28, $27, $26, $80, $80
endc
	db $42, $45, $45, $42, $42, $45, $45, $42, $45, $45, $42, $58, $45, $42, $57, $58, $42, $58, $57, $58, $57, $58, $57, $58, $1b, $1a, $19, $18, $17, $16, $80, $80
	db $42, $45, $45, $42, $42, $45, $45, $42, $45, $45, $42, $68, $45, $42, $67, $68, $42, $68, $67, $68, $67, $68, $67, $68, $36, $37, $38, $39, $3a, $3b, $80, $80
	db $42, $45, $45, $42, $42, $45, $45, $42, $45, $45, $42, $58, $45, $42, $57, $58, $42, $58, $57, $58, $57, $58, $57, $58, $26, $27, $28, $29, $2a, $2b, $80, $80
	db $42, $45, $45, $42, $42, $45, $45, $42, $45, $45, $42, $68, $45, $42, $67, $68, $42, $68, $67, $68, $67, $68, $67, $68, $16, $17, $18, $19, $1a, $1b, $80, $80
	db $40, $41, $41, $40, $40, $41, $41, $40, $41, $41, $40, $59, $41, $40, $59, $59, $40, $59, $59, $59, $59, $59, $59, $59, $10, $11, $12, $13, $14, $15, $80, $80
	db $49, $4a, $4b, $2f, $4c, $4d, $4e, $4f, $4d, $4e, $4f, $00, $4e, $4f, $00, $00, $4f, $00, $00, $00, $00, $00, $00, $00, $20, $21, $22, $23, $24, $25, $80, $80
	db $46, $47, $48, $1f, $3c, $3d, $3e, $3f, $3d, $3e, $3f, $00, $3e, $3f, $00, $00, $3f, $00, $00, $00, $00, $00, $00, $00, $30, $31, $32, $33, $34, $35, $80, $80

	db $1f, $48, $47, $46, $3f, $3e, $3d, $3c, $00, $3f, $3e, $3d, $00, $00, $3f, $3e, $00, $00, $00, $3f, $00, $00, $00, $00, $1b, $1a, $19, $18, $17, $16, $80, $80
	db $2f, $4b, $4a, $49, $4f, $4e, $4d, $4c, $00, $4f, $4e, $4d, $00, $00, $4f, $4e, $00, $00, $00, $4f, $00, $00, $00, $00, $2b, $2a, $29, $28, $27, $26, $80, $80
	db $40, $41, $41, $40, $40, $41, $41, $40, $59, $40, $41, $41, $59, $59, $40, $41, $59, $59, $59, $40, $59, $59, $59, $59, $3b, $3a, $39, $38, $37, $36, $80, $80
if def(VWF)
	db $70, $71, $72, $73, $70, $71, $72, $73, $57, $70, $71, $72, $57, $58, $70, $71, $57, $58, $57, $70, $57, $58, $57, $58, $16, $17, $18, $19, $1a, $1b, $80, $80
	db $78, $79, $7a, $7b, $78, $79, $7a, $7b, $67, $78, $79, $7a, $67, $68, $78, $79, $67, $68, $67, $78, $67, $68, $67, $68, $26, $27, $28, $29, $2a, $2b, $80, $80
else
	db $42, $52, $53, $42, $42, $52, $53, $42, $57, $42, $52, $53, $57, $58, $42, $52, $57, $58, $57, $42, $57, $58, $57, $58, $16, $17, $18, $19, $1a, $1b, $80, $80
	db $44, $62, $63, $44, $44, $62, $63, $44, $67, $44, $62, $63, $67, $68, $44, $62, $67, $68, $67, $44, $67, $68, $67, $68, $26, $27, $28, $29, $2a, $2b, $80, $80
endc
	db $42, $45, $45, $42, $42, $45, $45, $42, $57, $42, $45, $45, $57, $58, $42, $45, $57, $58, $57, $42, $57, $58, $57, $58, $36, $37, $38, $39, $3a, $3b, $80, $80
	db $42, $45, $45, $42, $42, $45, $45, $42, $67, $42, $45, $45, $67, $68, $42, $45, $67, $68, $67, $42, $67, $68, $67, $68, $80, $80, $80, $80, $80, $80, $80, $80
	db $42, $45, $45, $42, $42, $45, $45, $42, $57, $42, $45, $45, $57, $58, $42, $45, $57, $58, $57, $42, $57, $58, $57, $58, $80, $80, $80, $80, $80, $80, $80, $80
	db $42, $45, $45, $42, $42, $45, $45, $42, $67, $42, $45, $45, $67, $68, $42, $45, $67, $68, $67, $42, $67, $68, $67, $68, $80, $80, $80, $80, $80, $80, $80, $80
	db $40, $41, $41, $40, $40, $41, $41, $40, $59, $40, $41, $41, $59, $59, $40, $41, $59, $59, $59, $40, $59, $59, $59, $59, $80, $80, $80, $80, $80, $80, $80, $80
	db $2f, $4b, $4a, $49, $4f, $4e, $4d, $4c, $00, $4f, $4e, $4d, $00, $00, $4f, $4e, $00, $00, $00, $4f, $00, $00, $00, $00, $80, $80, $80, $80, $80, $80, $80, $80
	db $1f, $48, $47, $46, $3f, $3e, $3d, $3c, $00, $3f, $3e, $3d, $00, $00, $3f, $3e, $00, $00, $00, $3f, $00, $00, $00, $00, $80, $80, $80, $80, $80, $80, $80, $80


	add  b                                           ; $4b00: $80
	add  b                                           ; $4b01: $80
	add  b                                           ; $4b02: $80
	add  b                                           ; $4b03: $80
	add  b                                           ; $4b04: $80
	add  b                                           ; $4b05: $80
	add  b                                           ; $4b06: $80
	add  b                                           ; $4b07: $80
	add  b                                           ; $4b08: $80
	add  b                                           ; $4b09: $80
	add  b                                           ; $4b0a: $80
	add  b                                           ; $4b0b: $80
	add  b                                           ; $4b0c: $80
	add  b                                           ; $4b0d: $80
	add  b                                           ; $4b0e: $80
	add  b                                           ; $4b0f: $80
	add  b                                           ; $4b10: $80
	add  b                                           ; $4b11: $80
	add  b                                           ; $4b12: $80
	add  b                                           ; $4b13: $80
	add  b                                           ; $4b14: $80
	add  b                                           ; $4b15: $80
	add  b                                           ; $4b16: $80
	add  b                                           ; $4b17: $80
	add  b                                           ; $4b18: $80
	add  b                                           ; $4b19: $80
	add  b                                           ; $4b1a: $80
	add  b                                           ; $4b1b: $80
	add  b                                           ; $4b1c: $80
	add  b                                           ; $4b1d: $80
	add  b                                           ; $4b1e: $80
	add  b                                           ; $4b1f: $80
	add  b                                           ; $4b20: $80
	add  b                                           ; $4b21: $80
	add  b                                           ; $4b22: $80
	add  b                                           ; $4b23: $80
	add  b                                           ; $4b24: $80
	add  b                                           ; $4b25: $80
	add  b                                           ; $4b26: $80
	add  b                                           ; $4b27: $80
	add  b                                           ; $4b28: $80
	add  b                                           ; $4b29: $80
	add  b                                           ; $4b2a: $80
	add  b                                           ; $4b2b: $80
	add  b                                           ; $4b2c: $80
	add  b                                           ; $4b2d: $80
	add  b                                           ; $4b2e: $80
	add  b                                           ; $4b2f: $80
	add  b                                           ; $4b30: $80
	add  b                                           ; $4b31: $80
	add  b                                           ; $4b32: $80
	add  b                                           ; $4b33: $80
	add  b                                           ; $4b34: $80
	add  b                                           ; $4b35: $80
	add  b                                           ; $4b36: $80
	add  b                                           ; $4b37: $80
	add  b                                           ; $4b38: $80
	add  b                                           ; $4b39: $80
	add  b                                           ; $4b3a: $80
	add  b                                           ; $4b3b: $80
	add  b                                           ; $4b3c: $80
	add  b                                           ; $4b3d: $80
	add  b                                           ; $4b3e: $80
	add  b                                           ; $4b3f: $80
	add  b                                           ; $4b40: $80
	add  b                                           ; $4b41: $80
	add  b                                           ; $4b42: $80
	add  b                                           ; $4b43: $80
	add  b                                           ; $4b44: $80
	add  b                                           ; $4b45: $80
	add  b                                           ; $4b46: $80
	add  b                                           ; $4b47: $80
	add  b                                           ; $4b48: $80
	add  b                                           ; $4b49: $80
	add  b                                           ; $4b4a: $80
	add  b                                           ; $4b4b: $80
	add  b                                           ; $4b4c: $80
	add  b                                           ; $4b4d: $80
	add  b                                           ; $4b4e: $80
	add  b                                           ; $4b4f: $80
	add  b                                           ; $4b50: $80
	add  b                                           ; $4b51: $80
	add  b                                           ; $4b52: $80
	add  b                                           ; $4b53: $80
	add  b                                           ; $4b54: $80
	add  b                                           ; $4b55: $80
	add  b                                           ; $4b56: $80
	add  b                                           ; $4b57: $80
	add  b                                           ; $4b58: $80
	add  b                                           ; $4b59: $80
	add  b                                           ; $4b5a: $80
	add  b                                           ; $4b5b: $80
	add  b                                           ; $4b5c: $80
	add  b                                           ; $4b5d: $80
	add  b                                           ; $4b5e: $80
	add  b                                           ; $4b5f: $80
	add  b                                           ; $4b60: $80
	add  b                                           ; $4b61: $80
	add  b                                           ; $4b62: $80
	add  b                                           ; $4b63: $80
	add  b                                           ; $4b64: $80
	add  b                                           ; $4b65: $80
	add  b                                           ; $4b66: $80
	add  b                                           ; $4b67: $80
	add  b                                           ; $4b68: $80
	add  b                                           ; $4b69: $80
	add  b                                           ; $4b6a: $80
	add  b                                           ; $4b6b: $80
	add  b                                           ; $4b6c: $80
	add  b                                           ; $4b6d: $80
	add  b                                           ; $4b6e: $80
	add  b                                           ; $4b6f: $80
	add  b                                           ; $4b70: $80
	add  b                                           ; $4b71: $80
	add  b                                           ; $4b72: $80
	add  b                                           ; $4b73: $80
	add  b                                           ; $4b74: $80
	add  b                                           ; $4b75: $80
	add  b                                           ; $4b76: $80
	add  b                                           ; $4b77: $80
	add  b                                           ; $4b78: $80
	add  b                                           ; $4b79: $80
	add  b                                           ; $4b7a: $80
	add  b                                           ; $4b7b: $80
	add  b                                           ; $4b7c: $80
	add  b                                           ; $4b7d: $80
	add  b                                           ; $4b7e: $80
	add  b                                           ; $4b7f: $80
	add  b                                           ; $4b80: $80
	add  b                                           ; $4b81: $80
	add  b                                           ; $4b82: $80
	add  b                                           ; $4b83: $80
	add  b                                           ; $4b84: $80
	add  b                                           ; $4b85: $80
	add  b                                           ; $4b86: $80
	add  b                                           ; $4b87: $80
	add  b                                           ; $4b88: $80
	add  b                                           ; $4b89: $80
	add  b                                           ; $4b8a: $80
	add  b                                           ; $4b8b: $80
	add  b                                           ; $4b8c: $80
	add  b                                           ; $4b8d: $80
	add  b                                           ; $4b8e: $80
	add  b                                           ; $4b8f: $80
	add  b                                           ; $4b90: $80
	add  b                                           ; $4b91: $80
	add  b                                           ; $4b92: $80
	add  b                                           ; $4b93: $80
	add  b                                           ; $4b94: $80
	add  b                                           ; $4b95: $80
	add  b                                           ; $4b96: $80
	add  b                                           ; $4b97: $80
	add  b                                           ; $4b98: $80
	add  b                                           ; $4b99: $80
	add  b                                           ; $4b9a: $80
	add  b                                           ; $4b9b: $80
	add  b                                           ; $4b9c: $80
	add  b                                           ; $4b9d: $80
	add  b                                           ; $4b9e: $80
	add  b                                           ; $4b9f: $80
	add  b                                           ; $4ba0: $80
	add  b                                           ; $4ba1: $80
	add  b                                           ; $4ba2: $80
	add  b                                           ; $4ba3: $80
	add  b                                           ; $4ba4: $80
	add  b                                           ; $4ba5: $80
	add  b                                           ; $4ba6: $80
	add  b                                           ; $4ba7: $80
	add  b                                           ; $4ba8: $80
	add  b                                           ; $4ba9: $80
	add  b                                           ; $4baa: $80
	add  b                                           ; $4bab: $80
	add  b                                           ; $4bac: $80
	add  b                                           ; $4bad: $80
	add  b                                           ; $4bae: $80
	add  b                                           ; $4baf: $80
	add  b                                           ; $4bb0: $80
	add  b                                           ; $4bb1: $80
	add  b                                           ; $4bb2: $80
	add  b                                           ; $4bb3: $80
	add  b                                           ; $4bb4: $80
	add  b                                           ; $4bb5: $80
	add  b                                           ; $4bb6: $80
	add  b                                           ; $4bb7: $80
	add  b                                           ; $4bb8: $80
	add  b                                           ; $4bb9: $80
	add  b                                           ; $4bba: $80
	add  b                                           ; $4bbb: $80
	add  b                                           ; $4bbc: $80
	add  b                                           ; $4bbd: $80
	add  b                                           ; $4bbe: $80
	add  b                                           ; $4bbf: $80
	add  b                                           ; $4bc0: $80
	add  b                                           ; $4bc1: $80
	add  b                                           ; $4bc2: $80
	add  b                                           ; $4bc3: $80
	add  b                                           ; $4bc4: $80
	add  b                                           ; $4bc5: $80
	add  b                                           ; $4bc6: $80
	add  b                                           ; $4bc7: $80
	add  b                                           ; $4bc8: $80
	add  b                                           ; $4bc9: $80
	add  b                                           ; $4bca: $80
	add  b                                           ; $4bcb: $80
	add  b                                           ; $4bcc: $80
	add  b                                           ; $4bcd: $80
	add  b                                           ; $4bce: $80
	add  b                                           ; $4bcf: $80
	add  b                                           ; $4bd0: $80
	add  b                                           ; $4bd1: $80
	add  b                                           ; $4bd2: $80
	add  b                                           ; $4bd3: $80
	add  b                                           ; $4bd4: $80
	add  b                                           ; $4bd5: $80
	add  b                                           ; $4bd6: $80
	add  b                                           ; $4bd7: $80
	add  b                                           ; $4bd8: $80
	add  b                                           ; $4bd9: $80
	add  b                                           ; $4bda: $80
	add  b                                           ; $4bdb: $80
	add  b                                           ; $4bdc: $80
	add  b                                           ; $4bdd: $80
	add  b                                           ; $4bde: $80
	add  b                                           ; $4bdf: $80
	add  b                                           ; $4be0: $80
	add  b                                           ; $4be1: $80
	add  b                                           ; $4be2: $80
	add  b                                           ; $4be3: $80
	add  b                                           ; $4be4: $80
	add  b                                           ; $4be5: $80
	add  b                                           ; $4be6: $80
	add  b                                           ; $4be7: $80
	add  b                                           ; $4be8: $80
	add  b                                           ; $4be9: $80
	add  b                                           ; $4bea: $80
	add  b                                           ; $4beb: $80
	add  b                                           ; $4bec: $80
	add  b                                           ; $4bed: $80
	add  b                                           ; $4bee: $80
	add  b                                           ; $4bef: $80
	add  b                                           ; $4bf0: $80
	add  b                                           ; $4bf1: $80
	add  b                                           ; $4bf2: $80
	add  b                                           ; $4bf3: $80
	add  b                                           ; $4bf4: $80
	add  b                                           ; $4bf5: $80
	add  b                                           ; $4bf6: $80
	add  b                                           ; $4bf7: $80
	add  b                                           ; $4bf8: $80
	add  b                                           ; $4bf9: $80
	add  b                                           ; $4bfa: $80
	add  b                                           ; $4bfb: $80
	add  b                                           ; $4bfc: $80
	add  b                                           ; $4bfd: $80
	add  b                                           ; $4bfe: $80
	add  b                                           ; $4bff: $80


Data_2a_4c00::
	db $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $43, $43, $43, $43, $43, $43, $08, $08
	db $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $43, $43, $43, $43, $43, $43, $08, $08
	db $06, $06, $06, $26, $06, $06, $06, $26, $06, $06, $26, $05, $06, $26, $05, $05, $26, $05, $05, $05, $05, $05, $05, $05, $43, $43, $43, $43, $43, $43, $08, $08
if def(VWF)
	db $06, $00, $00, $06, $06, $00, $00, $06, $00, $00, $06, $03, $00, $06, $03, $03, $20, $03, $03, $03, $03, $03, $03, $03, $63, $63, $63, $63, $63, $63, $08, $08
	db $06, $00, $00, $06, $06, $00, $00, $06, $00, $00, $06, $03, $00, $06, $03, $03, $20, $03, $03, $03, $03, $03, $03, $03, $63, $63, $63, $63, $63, $63, $08, $08
else
	db $06, $00, $00, $26, $06, $00, $00, $26, $00, $00, $26, $03, $00, $26, $03, $03, $26, $03, $03, $03, $03, $03, $03, $03, $63, $63, $63, $63, $63, $63, $08, $08
	db $06, $00, $00, $26, $06, $00, $00, $26, $00, $00, $26, $03, $00, $26, $03, $03, $26, $03, $03, $03, $03, $03, $03, $03, $63, $63, $63, $63, $63, $63, $08, $08
endc
	db $06, $06, $06, $26, $06, $06, $06, $26, $06, $06, $26, $03, $06, $26, $03, $03, $26, $03, $03, $03, $03, $03, $03, $03, $63, $63, $63, $63, $63, $63, $08, $08
	db $06, $06, $06, $26, $06, $06, $06, $26, $06, $06, $26, $03, $06, $26, $03, $03, $26, $03, $03, $03, $03, $03, $03, $03, $43, $43, $43, $43, $43, $43, $08, $08
	db $06, $06, $06, $26, $06, $06, $06, $26, $06, $06, $26, $03, $06, $26, $03, $03, $26, $03, $03, $03, $03, $03, $03, $03, $43, $43, $43, $43, $43, $43, $08, $08
	db $06, $06, $06, $26, $06, $06, $06, $26, $06, $06, $26, $03, $06, $26, $03, $03, $26, $03, $03, $03, $03, $03, $03, $03, $43, $43, $43, $43, $43, $43, $08, $08
	db $46, $46, $46, $66, $46, $46, $46, $66, $46, $46, $66, $05, $46, $66, $05, $05, $66, $05, $05, $05, $05, $05, $05, $05, $03, $03, $03, $03, $03, $03, $08, $08
	db $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $03, $03, $03, $03, $03, $03, $08, $08
	db $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $46, $03, $03, $03, $03, $03, $03, $08, $08

	db $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $23, $23, $23, $23, $23, $23, $08, $08
	db $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $26, $23, $23, $23, $23, $23, $23, $08, $08
	db $06, $06, $06, $26, $06, $06, $06, $26, $05, $06, $06, $06, $05, $05, $06, $06, $05, $05, $05, $06, $05, $05, $05, $05, $23, $23, $23, $23, $23, $23, $08, $08
if def(VWF)
	db $06, $00, $00, $06, $06, $00, $00, $06, $03, $06, $00, $00, $03, $03, $06, $00, $03, $03, $03, $06, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $08, $08
	db $06, $00, $00, $06, $06, $00, $00, $06, $03, $06, $00, $00, $03, $03, $06, $00, $03, $03, $03, $06, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $08, $08
else
	db $06, $00, $00, $26, $06, $00, $00, $26, $03, $06, $00, $00, $03, $03, $06, $00, $03, $03, $03, $06, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $08, $08
	db $06, $00, $00, $26, $06, $00, $00, $26, $03, $06, $00, $00, $03, $03, $06, $00, $03, $03, $03, $06, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $08, $08
endc
	db $06, $06, $06, $26, $06, $06, $06, $26, $03, $06, $06, $06, $03, $03, $06, $06, $03, $03, $03, $06, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $08, $08
	db $06, $06, $06, $26, $06, $06, $06, $26, $03, $06, $06, $06, $03, $03, $06, $06, $03, $03, $03, $06, $03, $03, $03, $03, $08, $08, $08, $08, $08, $08, $08, $08
	db $06, $06, $06, $26, $06, $06, $06, $26, $03, $06, $06, $06, $03, $03, $06, $06, $03, $03, $03, $06, $03, $03, $03, $03, $08, $08, $08, $08, $08, $08, $08, $08
	db $06, $06, $06, $26, $06, $06, $06, $26, $03, $06, $06, $06, $03, $03, $06, $06, $03, $03, $03, $06, $03, $03, $03, $03, $08, $08, $08, $08, $08, $08, $08, $08
	db $46, $46, $46, $66, $46, $46, $46, $66, $05, $46, $46, $46, $05, $05, $46, $46, $05, $05, $05, $46, $05, $05, $05, $05, $08, $08, $08, $08, $08, $08, $08, $08
	db $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $08, $08, $08, $08, $08, $08, $08, $08
	db $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $66, $08, $08, $08, $08, $08, $08, $08, $08


	db $08                                 ; $4f00: $08
	ld   [$0808], sp                                 ; $4f01: $08 $08 $08
	ld   [$0808], sp                                 ; $4f04: $08 $08 $08
	ld   [$0808], sp                                 ; $4f07: $08 $08 $08
	ld   [$0808], sp                                 ; $4f0a: $08 $08 $08
	ld   [$0808], sp                                 ; $4f0d: $08 $08 $08
	ld   [$0808], sp                                 ; $4f10: $08 $08 $08
	ld   [$0808], sp                                 ; $4f13: $08 $08 $08
	ld   [$0808], sp                                 ; $4f16: $08 $08 $08
	ld   [$0808], sp                                 ; $4f19: $08 $08 $08
	ld   [$0808], sp                                 ; $4f1c: $08 $08 $08
	ld   [$0808], sp                                 ; $4f1f: $08 $08 $08
	ld   [$0808], sp                                 ; $4f22: $08 $08 $08
	ld   [$0808], sp                                 ; $4f25: $08 $08 $08
	ld   [$0808], sp                                 ; $4f28: $08 $08 $08
	ld   [$0808], sp                                 ; $4f2b: $08 $08 $08
	ld   [$0808], sp                                 ; $4f2e: $08 $08 $08
	ld   [$0808], sp                                 ; $4f31: $08 $08 $08
	ld   [$0808], sp                                 ; $4f34: $08 $08 $08
	ld   [$0808], sp                                 ; $4f37: $08 $08 $08
	ld   [$0808], sp                                 ; $4f3a: $08 $08 $08
	ld   [$0808], sp                                 ; $4f3d: $08 $08 $08
	ld   [$0808], sp                                 ; $4f40: $08 $08 $08
	ld   [$0808], sp                                 ; $4f43: $08 $08 $08
	ld   [$0808], sp                                 ; $4f46: $08 $08 $08
	ld   [$0808], sp                                 ; $4f49: $08 $08 $08
	ld   [$0808], sp                                 ; $4f4c: $08 $08 $08
	ld   [$0808], sp                                 ; $4f4f: $08 $08 $08
	ld   [$0808], sp                                 ; $4f52: $08 $08 $08
	ld   [$0808], sp                                 ; $4f55: $08 $08 $08
	ld   [$0808], sp                                 ; $4f58: $08 $08 $08
	ld   [$0808], sp                                 ; $4f5b: $08 $08 $08
	ld   [$0808], sp                                 ; $4f5e: $08 $08 $08
	ld   [$0808], sp                                 ; $4f61: $08 $08 $08
	ld   [$0808], sp                                 ; $4f64: $08 $08 $08
	ld   [$0808], sp                                 ; $4f67: $08 $08 $08
	ld   [$0808], sp                                 ; $4f6a: $08 $08 $08
	ld   [$0808], sp                                 ; $4f6d: $08 $08 $08
	ld   [$0808], sp                                 ; $4f70: $08 $08 $08
	ld   [$0808], sp                                 ; $4f73: $08 $08 $08
	ld   [$0808], sp                                 ; $4f76: $08 $08 $08
	ld   [$0808], sp                                 ; $4f79: $08 $08 $08
	ld   [$0808], sp                                 ; $4f7c: $08 $08 $08
	ld   [$0808], sp                                 ; $4f7f: $08 $08 $08
	ld   [$0808], sp                                 ; $4f82: $08 $08 $08
	ld   [$0808], sp                                 ; $4f85: $08 $08 $08
	ld   [$0808], sp                                 ; $4f88: $08 $08 $08
	ld   [$0808], sp                                 ; $4f8b: $08 $08 $08
	ld   [$0808], sp                                 ; $4f8e: $08 $08 $08
	ld   [$0808], sp                                 ; $4f91: $08 $08 $08
	ld   [$0808], sp                                 ; $4f94: $08 $08 $08
	ld   [$0808], sp                                 ; $4f97: $08 $08 $08
	ld   [$0808], sp                                 ; $4f9a: $08 $08 $08
	ld   [$0808], sp                                 ; $4f9d: $08 $08 $08
	ld   [$0808], sp                                 ; $4fa0: $08 $08 $08
	ld   [$0808], sp                                 ; $4fa3: $08 $08 $08
	ld   [$0808], sp                                 ; $4fa6: $08 $08 $08
	ld   [$0808], sp                                 ; $4fa9: $08 $08 $08
	ld   [$0808], sp                                 ; $4fac: $08 $08 $08
	ld   [$0808], sp                                 ; $4faf: $08 $08 $08
	ld   [$0808], sp                                 ; $4fb2: $08 $08 $08
	ld   [$0808], sp                                 ; $4fb5: $08 $08 $08
	ld   [$0808], sp                                 ; $4fb8: $08 $08 $08
	ld   [$0808], sp                                 ; $4fbb: $08 $08 $08
	ld   [$0808], sp                                 ; $4fbe: $08 $08 $08
	ld   [$0808], sp                                 ; $4fc1: $08 $08 $08
	ld   [$0808], sp                                 ; $4fc4: $08 $08 $08
	ld   [$0808], sp                                 ; $4fc7: $08 $08 $08
	ld   [$0808], sp                                 ; $4fca: $08 $08 $08
	ld   [$0808], sp                                 ; $4fcd: $08 $08 $08
	ld   [$0808], sp                                 ; $4fd0: $08 $08 $08
	ld   [$0808], sp                                 ; $4fd3: $08 $08 $08
	ld   [$0808], sp                                 ; $4fd6: $08 $08 $08
	ld   [$0808], sp                                 ; $4fd9: $08 $08 $08
	ld   [$0808], sp                                 ; $4fdc: $08 $08 $08
	ld   [$0808], sp                                 ; $4fdf: $08 $08 $08
	ld   [$0808], sp                                 ; $4fe2: $08 $08 $08
	ld   [$0808], sp                                 ; $4fe5: $08 $08 $08
	ld   [$0808], sp                                 ; $4fe8: $08 $08 $08
	ld   [$0808], sp                                 ; $4feb: $08 $08 $08
	ld   [$0808], sp                                 ; $4fee: $08 $08 $08
	ld   [$0808], sp                                 ; $4ff1: $08 $08 $08
	ld   [$0808], sp                                 ; $4ff4: $08 $08 $08
	ld   [$0808], sp                                 ; $4ff7: $08 $08 $08
	ld   [$0808], sp                                 ; $4ffa: $08 $08 $08
	ld   [$0808], sp                                 ; $4ffd: $08 $08 $08
	add  b                                           ; $5000: $80
	add  c                                           ; $5001: $81
	add  d                                           ; $5002: $82
	add  e                                           ; $5003: $83
	add  h                                           ; $5004: $84
	add  l                                           ; $5005: $85
	add  [hl]                                        ; $5006: $86
	add  a                                           ; $5007: $87
	adc  b                                           ; $5008: $88
	adc  c                                           ; $5009: $89
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
	sub  b                                           ; $5020: $90
	sub  c                                           ; $5021: $91
	sub  d                                           ; $5022: $92
	sub  e                                           ; $5023: $93
	sub  h                                           ; $5024: $94
	sub  l                                           ; $5025: $95
	sub  [hl]                                        ; $5026: $96
	sub  a                                           ; $5027: $97
	sbc  b                                           ; $5028: $98
	sbc  c                                           ; $5029: $99
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
	and  b                                           ; $5040: $a0
	and  c                                           ; $5041: $a1
	and  d                                           ; $5042: $a2
	and  e                                           ; $5043: $a3
	and  h                                           ; $5044: $a4
	and  l                                           ; $5045: $a5
	and  [hl]                                        ; $5046: $a6
	and  a                                           ; $5047: $a7
	xor  b                                           ; $5048: $a8
	xor  c                                           ; $5049: $a9
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
	or   b                                           ; $5060: $b0
	or   c                                           ; $5061: $b1
	or   d                                           ; $5062: $b2
	or   e                                           ; $5063: $b3
	or   h                                           ; $5064: $b4
	or   l                                           ; $5065: $b5
	or   [hl]                                        ; $5066: $b6
	or   a                                           ; $5067: $b7
	cp   b                                           ; $5068: $b8
	cp   c                                           ; $5069: $b9
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
	adc  d                                           ; $5080: $8a
	adc  e                                           ; $5081: $8b
	adc  h                                           ; $5082: $8c
	adc  l                                           ; $5083: $8d
	adc  [hl]                                        ; $5084: $8e
	adc  a                                           ; $5085: $8f
	ret  nz                                          ; $5086: $c0

	pop  bc                                          ; $5087: $c1
	jp   nz, $00c3                                   ; $5088: $c2 $c3 $00

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
	sbc  d                                           ; $50a0: $9a
	sbc  e                                           ; $50a1: $9b
	sbc  h                                           ; $50a2: $9c
	sbc  l                                           ; $50a3: $9d
	sbc  [hl]                                        ; $50a4: $9e
	sbc  a                                           ; $50a5: $9f
	ret  nc                                          ; $50a6: $d0

	pop  de                                          ; $50a7: $d1
	jp   nc, $00d3                                   ; $50a8: $d2 $d3 $00

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
	xor  d                                           ; $50c0: $aa
	xor  e                                           ; $50c1: $ab
	xor  h                                           ; $50c2: $ac
	xor  l                                           ; $50c3: $ad
	xor  [hl]                                        ; $50c4: $ae
	xor  a                                           ; $50c5: $af
	call nz, $c6c5                                   ; $50c6: $c4 $c5 $c6
	rst  ToBoot                                         ; $50c9: $c7
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
	cp   d                                           ; $50e0: $ba
	cp   e                                           ; $50e1: $bb
	cp   h                                           ; $50e2: $bc
	cp   l                                           ; $50e3: $bd
	cp   [hl]                                        ; $50e4: $be
	cp   a                                           ; $50e5: $bf
	call nc, $d6d5                                   ; $50e6: $d4 $d5 $d6
	rst  $10                                         ; $50e9: $d7
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
	ldh  [$e1], a                                    ; $5100: $e0 $e1
	ldh  [c], a                                      ; $5102: $e2
	ldh  [c], a                                      ; $5103: $e2
	pop  hl                                          ; $5104: $e1
	ldh  [$f3], a                                    ; $5105: $e0 $f3
	db   $f4                                         ; $5107: $f4
	ldh  [$e0], a                                    ; $5108: $e0 $e0
	db   $f4                                         ; $510a: $f4
	di                                               ; $510b: $f3
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
	ldh  a, [$f1]                                    ; $5120: $f0 $f1
	ldh  a, [c]                                      ; $5122: $f2
	ldh  a, [c]                                      ; $5123: $f2
	pop  af                                          ; $5124: $f1
	ldh  a, [$f4]                                    ; $5125: $f0 $f4
	push af                                          ; $5127: $f5
	db   $f4                                         ; $5128: $f4
	db   $f4                                         ; $5129: $f4
	push af                                          ; $512a: $f5
	db   $f4                                         ; $512b: $f4
	nop                                              ; $512c: $00
	nop                                              ; $512d: $00
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
	nop                                              ; $513b: $00
	nop                                              ; $513c: $00
	nop                                              ; $513d: $00
	nop                                              ; $513e: $00
	nop                                              ; $513f: $00
	db   $e3                                         ; $5140: $e3
	db   $e4                                         ; $5141: $e4
	ldh  [$e0], a                                    ; $5142: $e0 $e0
	db   $e4                                         ; $5144: $e4
	db   $e3                                         ; $5145: $e3
	ldh  [$f4], a                                    ; $5146: $e0 $f4
	push af                                          ; $5148: $f5
	push af                                          ; $5149: $f5
	db   $f4                                         ; $514a: $f4
	ldh  [rP1], a                                    ; $514b: $e0 $00
	nop                                              ; $514d: $00
	nop                                              ; $514e: $00
	nop                                              ; $514f: $00
	nop                                              ; $5150: $00
	nop                                              ; $5151: $00
	nop                                              ; $5152: $00
	nop                                              ; $5153: $00
	nop                                              ; $5154: $00
	nop                                              ; $5155: $00
	nop                                              ; $5156: $00
	nop                                              ; $5157: $00
	nop                                              ; $5158: $00
	nop                                              ; $5159: $00
	nop                                              ; $515a: $00
	nop                                              ; $515b: $00
	nop                                              ; $515c: $00
	nop                                              ; $515d: $00
	nop                                              ; $515e: $00
	nop                                              ; $515f: $00
	db   $e3                                         ; $5160: $e3
	db   $e4                                         ; $5161: $e4
	ldh  [$e0], a                                    ; $5162: $e0 $e0
	db   $e4                                         ; $5164: $e4
	db   $e3                                         ; $5165: $e3
	ldh  [$f4], a                                    ; $5166: $e0 $f4
	push af                                          ; $5168: $f5
	push af                                          ; $5169: $f5
	db   $f4                                         ; $516a: $f4
	ldh  [rP1], a                                    ; $516b: $e0 $00
	nop                                              ; $516d: $00
	nop                                              ; $516e: $00
	nop                                              ; $516f: $00
	nop                                              ; $5170: $00
	nop                                              ; $5171: $00
	nop                                              ; $5172: $00
	nop                                              ; $5173: $00
	nop                                              ; $5174: $00
	nop                                              ; $5175: $00
	nop                                              ; $5176: $00
	nop                                              ; $5177: $00
	nop                                              ; $5178: $00
	nop                                              ; $5179: $00
	nop                                              ; $517a: $00
	nop                                              ; $517b: $00
	nop                                              ; $517c: $00
	nop                                              ; $517d: $00
	nop                                              ; $517e: $00
	nop                                              ; $517f: $00
	ldh  a, [$f1]                                    ; $5180: $f0 $f1
	ldh  a, [c]                                      ; $5182: $f2
	ldh  a, [c]                                      ; $5183: $f2
	pop  af                                          ; $5184: $f1
	ldh  a, [$f4]                                    ; $5185: $f0 $f4
	push af                                          ; $5187: $f5
	db   $f4                                         ; $5188: $f4
	db   $f4                                         ; $5189: $f4
	push af                                          ; $518a: $f5
	db   $f4                                         ; $518b: $f4
	nop                                              ; $518c: $00
	nop                                              ; $518d: $00
	nop                                              ; $518e: $00
	nop                                              ; $518f: $00
	nop                                              ; $5190: $00
	nop                                              ; $5191: $00
	nop                                              ; $5192: $00
	nop                                              ; $5193: $00
	nop                                              ; $5194: $00
	nop                                              ; $5195: $00
	nop                                              ; $5196: $00
	nop                                              ; $5197: $00
	nop                                              ; $5198: $00
	nop                                              ; $5199: $00
	nop                                              ; $519a: $00
	nop                                              ; $519b: $00
	nop                                              ; $519c: $00
	nop                                              ; $519d: $00
	nop                                              ; $519e: $00
	nop                                              ; $519f: $00
	ldh  [$e1], a                                    ; $51a0: $e0 $e1
	ldh  [c], a                                      ; $51a2: $e2
	ldh  [c], a                                      ; $51a3: $e2
	pop  hl                                          ; $51a4: $e1
	ldh  [$f3], a                                    ; $51a5: $e0 $f3
	db   $f4                                         ; $51a7: $f4
	ldh  [$e0], a                                    ; $51a8: $e0 $e0
	db   $f4                                         ; $51aa: $f4
	di                                               ; $51ab: $f3
	nop                                              ; $51ac: $00
	nop                                              ; $51ad: $00
	nop                                              ; $51ae: $00
	nop                                              ; $51af: $00
	nop                                              ; $51b0: $00
	nop                                              ; $51b1: $00
	nop                                              ; $51b2: $00
	nop                                              ; $51b3: $00
	nop                                              ; $51b4: $00
	nop                                              ; $51b5: $00
	nop                                              ; $51b6: $00
	nop                                              ; $51b7: $00
	nop                                              ; $51b8: $00
	nop                                              ; $51b9: $00
	nop                                              ; $51ba: $00
	nop                                              ; $51bb: $00
	nop                                              ; $51bc: $00
	nop                                              ; $51bd: $00
	nop                                              ; $51be: $00
	nop                                              ; $51bf: $00
	ret  z                                           ; $51c0: $c8

	ret                                              ; $51c1: $c9


	jp   z, $cccb                                    ; $51c2: $ca $cb $cc

	call $cfce                                       ; $51c5: $cd $ce $cf
	and  $e7                                         ; $51c8: $e6 $e7
	nop                                              ; $51ca: $00
	nop                                              ; $51cb: $00
	nop                                              ; $51cc: $00
	nop                                              ; $51cd: $00
	nop                                              ; $51ce: $00
	nop                                              ; $51cf: $00
	nop                                              ; $51d0: $00
	nop                                              ; $51d1: $00
	nop                                              ; $51d2: $00
	nop                                              ; $51d3: $00
	nop                                              ; $51d4: $00
	nop                                              ; $51d5: $00
	nop                                              ; $51d6: $00
	nop                                              ; $51d7: $00
	nop                                              ; $51d8: $00
	nop                                              ; $51d9: $00
	nop                                              ; $51da: $00
	nop                                              ; $51db: $00
	nop                                              ; $51dc: $00
	nop                                              ; $51dd: $00
	nop                                              ; $51de: $00
	nop                                              ; $51df: $00
	ret  c                                           ; $51e0: $d8

	reti                                             ; $51e1: $d9


	jp   c, $dcdb                                    ; $51e2: $da $db $dc

	db   $dd                                         ; $51e5: $dd
	sbc  $df                                         ; $51e6: $de $df
	or   $f7                                         ; $51e8: $f6 $f7
	nop                                              ; $51ea: $00
	nop                                              ; $51eb: $00
	nop                                              ; $51ec: $00
	nop                                              ; $51ed: $00
	nop                                              ; $51ee: $00
	nop                                              ; $51ef: $00
	nop                                              ; $51f0: $00
	nop                                              ; $51f1: $00
	nop                                              ; $51f2: $00
	nop                                              ; $51f3: $00
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
	add  sp, -$17                                    ; $5200: $e8 $e9
	ld   [$eceb], a                                  ; $5202: $ea $eb $ec
	db   $ed                                         ; $5205: $ed
	xor  $ef                                         ; $5206: $ee $ef
	ld   c, h                                        ; $5208: $4c
	ld   c, l                                        ; $5209: $4d
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
	ld   hl, sp-$07                                  ; $5220: $f8 $f9
	ld   a, [$fcfb]                                  ; $5222: $fa $fb $fc
	db   $fd                                         ; $5225: $fd
	cp   $ff                                         ; $5226: $fe $ff
	ld   e, h                                        ; $5228: $5c
	ld   e, l                                        ; $5229: $5d
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
	nop                                              ; $5323: $00
	nop                                              ; $5324: $00
	nop                                              ; $5325: $00
	nop                                              ; $5326: $00
	nop                                              ; $5327: $00
	nop                                              ; $5328: $00
	nop                                              ; $5329: $00
	nop                                              ; $532a: $00
	nop                                              ; $532b: $00
	nop                                              ; $532c: $00
	nop                                              ; $532d: $00
	nop                                              ; $532e: $00
	nop                                              ; $532f: $00
	nop                                              ; $5330: $00
	nop                                              ; $5331: $00
	nop                                              ; $5332: $00
	nop                                              ; $5333: $00
	nop                                              ; $5334: $00
	nop                                              ; $5335: $00
	nop                                              ; $5336: $00
	nop                                              ; $5337: $00
	nop                                              ; $5338: $00
	nop                                              ; $5339: $00
	nop                                              ; $533a: $00
	nop                                              ; $533b: $00
	nop                                              ; $533c: $00
	nop                                              ; $533d: $00
	nop                                              ; $533e: $00
	nop                                              ; $533f: $00
	nop                                              ; $5340: $00
	nop                                              ; $5341: $00
	nop                                              ; $5342: $00
	nop                                              ; $5343: $00
	nop                                              ; $5344: $00
	nop                                              ; $5345: $00
	nop                                              ; $5346: $00
	nop                                              ; $5347: $00
	nop                                              ; $5348: $00
	nop                                              ; $5349: $00
	nop                                              ; $534a: $00
	nop                                              ; $534b: $00
	nop                                              ; $534c: $00
	nop                                              ; $534d: $00
	nop                                              ; $534e: $00
	nop                                              ; $534f: $00
	nop                                              ; $5350: $00
	nop                                              ; $5351: $00
	nop                                              ; $5352: $00
	nop                                              ; $5353: $00
	nop                                              ; $5354: $00
	nop                                              ; $5355: $00
	nop                                              ; $5356: $00
	nop                                              ; $5357: $00
	nop                                              ; $5358: $00
	nop                                              ; $5359: $00
	nop                                              ; $535a: $00
	nop                                              ; $535b: $00
	nop                                              ; $535c: $00
	nop                                              ; $535d: $00
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
	nop                                              ; $5368: $00
	nop                                              ; $5369: $00
	nop                                              ; $536a: $00
	nop                                              ; $536b: $00
	nop                                              ; $536c: $00
	nop                                              ; $536d: $00
	nop                                              ; $536e: $00
	nop                                              ; $536f: $00
	nop                                              ; $5370: $00
	nop                                              ; $5371: $00
	nop                                              ; $5372: $00
	nop                                              ; $5373: $00
	nop                                              ; $5374: $00
	nop                                              ; $5375: $00
	nop                                              ; $5376: $00
	nop                                              ; $5377: $00
	nop                                              ; $5378: $00
	nop                                              ; $5379: $00
	nop                                              ; $537a: $00
	nop                                              ; $537b: $00
	nop                                              ; $537c: $00
	nop                                              ; $537d: $00
	nop                                              ; $537e: $00
	nop                                              ; $537f: $00
	nop                                              ; $5380: $00
	nop                                              ; $5381: $00
	nop                                              ; $5382: $00
	nop                                              ; $5383: $00
	nop                                              ; $5384: $00
	nop                                              ; $5385: $00
	nop                                              ; $5386: $00
	nop                                              ; $5387: $00
	nop                                              ; $5388: $00
	nop                                              ; $5389: $00
	nop                                              ; $538a: $00
	nop                                              ; $538b: $00
	nop                                              ; $538c: $00
	nop                                              ; $538d: $00
	nop                                              ; $538e: $00
	nop                                              ; $538f: $00
	nop                                              ; $5390: $00
	nop                                              ; $5391: $00
	nop                                              ; $5392: $00
	nop                                              ; $5393: $00
	nop                                              ; $5394: $00
	nop                                              ; $5395: $00
	nop                                              ; $5396: $00
	nop                                              ; $5397: $00
	nop                                              ; $5398: $00
	nop                                              ; $5399: $00
	nop                                              ; $539a: $00
	nop                                              ; $539b: $00
	nop                                              ; $539c: $00
	nop                                              ; $539d: $00
	nop                                              ; $539e: $00
	nop                                              ; $539f: $00
	nop                                              ; $53a0: $00
	nop                                              ; $53a1: $00
	nop                                              ; $53a2: $00
	nop                                              ; $53a3: $00
	nop                                              ; $53a4: $00
	nop                                              ; $53a5: $00
	nop                                              ; $53a6: $00
	nop                                              ; $53a7: $00
	nop                                              ; $53a8: $00
	nop                                              ; $53a9: $00
	nop                                              ; $53aa: $00
	nop                                              ; $53ab: $00
	nop                                              ; $53ac: $00
	nop                                              ; $53ad: $00
	nop                                              ; $53ae: $00
	nop                                              ; $53af: $00
	nop                                              ; $53b0: $00
	nop                                              ; $53b1: $00
	nop                                              ; $53b2: $00
	nop                                              ; $53b3: $00
	nop                                              ; $53b4: $00
	nop                                              ; $53b5: $00
	nop                                              ; $53b6: $00
	nop                                              ; $53b7: $00
	nop                                              ; $53b8: $00
	nop                                              ; $53b9: $00
	nop                                              ; $53ba: $00
	nop                                              ; $53bb: $00
	nop                                              ; $53bc: $00
	nop                                              ; $53bd: $00
	nop                                              ; $53be: $00
	nop                                              ; $53bf: $00
	nop                                              ; $53c0: $00
	nop                                              ; $53c1: $00
	nop                                              ; $53c2: $00
	nop                                              ; $53c3: $00
	nop                                              ; $53c4: $00
	nop                                              ; $53c5: $00
	nop                                              ; $53c6: $00
	nop                                              ; $53c7: $00
	nop                                              ; $53c8: $00
	nop                                              ; $53c9: $00
	nop                                              ; $53ca: $00
	nop                                              ; $53cb: $00
	nop                                              ; $53cc: $00
	nop                                              ; $53cd: $00
	nop                                              ; $53ce: $00
	nop                                              ; $53cf: $00
	nop                                              ; $53d0: $00
	nop                                              ; $53d1: $00
	nop                                              ; $53d2: $00
	nop                                              ; $53d3: $00
	nop                                              ; $53d4: $00
	nop                                              ; $53d5: $00
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
	nop                                              ; $53e2: $00
	nop                                              ; $53e3: $00
	nop                                              ; $53e4: $00
	nop                                              ; $53e5: $00
	nop                                              ; $53e6: $00
	nop                                              ; $53e7: $00
	nop                                              ; $53e8: $00
	nop                                              ; $53e9: $00
	nop                                              ; $53ea: $00
	nop                                              ; $53eb: $00
	nop                                              ; $53ec: $00
	nop                                              ; $53ed: $00
	nop                                              ; $53ee: $00
	nop                                              ; $53ef: $00
	nop                                              ; $53f0: $00
	nop                                              ; $53f1: $00
	nop                                              ; $53f2: $00
	nop                                              ; $53f3: $00
	nop                                              ; $53f4: $00
	nop                                              ; $53f5: $00
	nop                                              ; $53f6: $00
	nop                                              ; $53f7: $00
	nop                                              ; $53f8: $00
	nop                                              ; $53f9: $00
	nop                                              ; $53fa: $00
	nop                                              ; $53fb: $00
	nop                                              ; $53fc: $00
	nop                                              ; $53fd: $00
	nop                                              ; $53fe: $00
	nop                                              ; $53ff: $00
	adc  a                                           ; $5400: $8f
	adc  a                                           ; $5401: $8f
	adc  a                                           ; $5402: $8f
	adc  a                                           ; $5403: $8f
	adc  a                                           ; $5404: $8f
	adc  a                                           ; $5405: $8f
	adc  a                                           ; $5406: $8f
	adc  a                                           ; $5407: $8f
	adc  a                                           ; $5408: $8f
	adc  a                                           ; $5409: $8f
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
	adc  a                                           ; $5420: $8f
	adc  a                                           ; $5421: $8f
	adc  a                                           ; $5422: $8f
	adc  a                                           ; $5423: $8f
	adc  a                                           ; $5424: $8f
	adc  a                                           ; $5425: $8f
	adc  a                                           ; $5426: $8f
	adc  a                                           ; $5427: $8f
	adc  a                                           ; $5428: $8f
	adc  a                                           ; $5429: $8f
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
	adc  a                                           ; $5440: $8f
	adc  a                                           ; $5441: $8f
	adc  a                                           ; $5442: $8f
	adc  a                                           ; $5443: $8f
	adc  a                                           ; $5444: $8f
	adc  a                                           ; $5445: $8f
	adc  a                                           ; $5446: $8f
	adc  a                                           ; $5447: $8f
	adc  a                                           ; $5448: $8f
	adc  a                                           ; $5449: $8f
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
	adc  a                                           ; $5460: $8f
	adc  a                                           ; $5461: $8f
	adc  a                                           ; $5462: $8f
	adc  a                                           ; $5463: $8f
	adc  a                                           ; $5464: $8f
	adc  a                                           ; $5465: $8f
	adc  a                                           ; $5466: $8f
	adc  a                                           ; $5467: $8f
	adc  a                                           ; $5468: $8f
	adc  a                                           ; $5469: $8f
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
	adc  a                                           ; $5480: $8f
	adc  a                                           ; $5481: $8f
	adc  a                                           ; $5482: $8f
	adc  a                                           ; $5483: $8f
	adc  a                                           ; $5484: $8f
	adc  a                                           ; $5485: $8f
	adc  a                                           ; $5486: $8f
	adc  a                                           ; $5487: $8f
	adc  a                                           ; $5488: $8f
	adc  a                                           ; $5489: $8f
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
	adc  a                                           ; $54a0: $8f
	adc  a                                           ; $54a1: $8f
	adc  a                                           ; $54a2: $8f
	adc  a                                           ; $54a3: $8f
	adc  a                                           ; $54a4: $8f
	adc  a                                           ; $54a5: $8f
	adc  a                                           ; $54a6: $8f
	adc  a                                           ; $54a7: $8f
	adc  a                                           ; $54a8: $8f
	adc  a                                           ; $54a9: $8f
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
	adc  a                                           ; $54c0: $8f
	adc  a                                           ; $54c1: $8f
	adc  a                                           ; $54c2: $8f
	adc  a                                           ; $54c3: $8f
	adc  a                                           ; $54c4: $8f
	adc  a                                           ; $54c5: $8f
	adc  a                                           ; $54c6: $8f
	adc  a                                           ; $54c7: $8f
	adc  a                                           ; $54c8: $8f
	adc  a                                           ; $54c9: $8f
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
	adc  a                                           ; $54e0: $8f
	adc  a                                           ; $54e1: $8f
	adc  a                                           ; $54e2: $8f
	adc  a                                           ; $54e3: $8f
	adc  a                                           ; $54e4: $8f
	adc  a                                           ; $54e5: $8f
	adc  a                                           ; $54e6: $8f
	adc  a                                           ; $54e7: $8f
	adc  a                                           ; $54e8: $8f
	adc  a                                           ; $54e9: $8f
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
	adc  a                                           ; $5500: $8f
	adc  a                                           ; $5501: $8f
	adc  a                                           ; $5502: $8f
	xor  a                                           ; $5503: $af
	xor  a                                           ; $5504: $af
	xor  a                                           ; $5505: $af
	adc  a                                           ; $5506: $8f
	adc  a                                           ; $5507: $8f
	adc  a                                           ; $5508: $8f
	adc  a                                           ; $5509: $8f
	xor  a                                           ; $550a: $af
	xor  a                                           ; $550b: $af
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
	adc  a                                           ; $5520: $8f
	adc  a                                           ; $5521: $8f
	adc  a                                           ; $5522: $8f
	xor  a                                           ; $5523: $af
	xor  a                                           ; $5524: $af
	xor  a                                           ; $5525: $af
	rst  $28                                         ; $5526: $ef
	adc  a                                           ; $5527: $8f
	adc  a                                           ; $5528: $8f
	xor  a                                           ; $5529: $af
	xor  a                                           ; $552a: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $552b: $cf
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
	adc  a                                           ; $5540: $8f
	adc  a                                           ; $5541: $8f
	adc  a                                           ; $5542: $8f
	adc  a                                           ; $5543: $8f
	xor  a                                           ; $5544: $af
	xor  a                                           ; $5545: $af
	adc  a                                           ; $5546: $8f
	rst  $28                                         ; $5547: $ef
	adc  a                                           ; $5548: $8f
	xor  a                                           ; $5549: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $554a: $cf
	adc  a                                           ; $554b: $8f
	nop                                              ; $554c: $00
	nop                                              ; $554d: $00
	nop                                              ; $554e: $00
	nop                                              ; $554f: $00
	nop                                              ; $5550: $00
	nop                                              ; $5551: $00
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
	nop                                              ; $555d: $00
	nop                                              ; $555e: $00
	nop                                              ; $555f: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5560: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5561: $cf
	adc  a                                           ; $5562: $8f
	adc  a                                           ; $5563: $8f
	rst  $28                                         ; $5564: $ef
	rst  $28                                         ; $5565: $ef
	adc  a                                           ; $5566: $8f
	xor  a                                           ; $5567: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5568: $cf
	rst  $28                                         ; $5569: $ef
	adc  a                                           ; $556a: $8f
	adc  a                                           ; $556b: $8f
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
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5580: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5581: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5582: $cf
	rst  $28                                         ; $5583: $ef
	rst  $28                                         ; $5584: $ef
	rst  $28                                         ; $5585: $ef
	xor  a                                           ; $5586: $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5587: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5588: $cf
	rst  $28                                         ; $5589: $ef
	rst  $28                                         ; $558a: $ef
	adc  a                                           ; $558b: $8f
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
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55a0: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55a1: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55a2: $cf
	rst  $28                                         ; $55a3: $ef
	rst  $28                                         ; $55a4: $ef
	rst  $28                                         ; $55a5: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55a6: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55a7: $cf
	adc  a                                           ; $55a8: $8f
	adc  a                                           ; $55a9: $8f
	rst  $28                                         ; $55aa: $ef
	rst  $28                                         ; $55ab: $ef
	nop                                              ; $55ac: $00
	nop                                              ; $55ad: $00
	nop                                              ; $55ae: $00
	nop                                              ; $55af: $00
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
	adc  a                                           ; $55c0: $8f
	adc  a                                           ; $55c1: $8f
	adc  a                                           ; $55c2: $8f
	adc  a                                           ; $55c3: $8f
	adc  a                                           ; $55c4: $8f
	adc  a                                           ; $55c5: $8f
	adc  a                                           ; $55c6: $8f
	adc  a                                           ; $55c7: $8f
	adc  a                                           ; $55c8: $8f
	adc  a                                           ; $55c9: $8f
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
	adc  a                                           ; $55e0: $8f
	adc  a                                           ; $55e1: $8f
	adc  a                                           ; $55e2: $8f
	adc  a                                           ; $55e3: $8f
	adc  a                                           ; $55e4: $8f
	adc  a                                           ; $55e5: $8f
	adc  a                                           ; $55e6: $8f
	adc  a                                           ; $55e7: $8f
	adc  a                                           ; $55e8: $8f
	adc  a                                           ; $55e9: $8f
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
	adc  a                                           ; $5600: $8f
	adc  a                                           ; $5601: $8f
	adc  a                                           ; $5602: $8f
	adc  a                                           ; $5603: $8f
	adc  a                                           ; $5604: $8f
	adc  a                                           ; $5605: $8f
	adc  a                                           ; $5606: $8f
	adc  a                                           ; $5607: $8f
	adc  a                                           ; $5608: $8f
	adc  a                                           ; $5609: $8f
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
	adc  a                                           ; $5620: $8f
	adc  a                                           ; $5621: $8f
	adc  a                                           ; $5622: $8f
	adc  a                                           ; $5623: $8f
	adc  a                                           ; $5624: $8f
	adc  a                                           ; $5625: $8f
	adc  a                                           ; $5626: $8f
	adc  a                                           ; $5627: $8f
	adc  a                                           ; $5628: $8f
	adc  a                                           ; $5629: $8f
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
	nop                                              ; $5800: $00
	nop                                              ; $5801: $00
	nop                                              ; $5802: $00
	nop                                              ; $5803: $00
	ld   d, [hl]                                     ; $5804: $56
	ld   d, l                                        ; $5805: $55
	ld   e, h                                        ; $5806: $5c
	jr   nc, jr_02a_583a                             ; $5807: $30 $31

	ld   [hl-], a                                    ; $5809: $32
	inc  sp                                          ; $580a: $33
	inc  [hl]                                        ; $580b: $34
	dec  [hl]                                        ; $580c: $35
	ld   e, h                                        ; $580d: $5c
	ld   d, l                                        ; $580e: $55
	ld   d, [hl]                                     ; $580f: $56
	nop                                              ; $5810: $00
	nop                                              ; $5811: $00
	nop                                              ; $5812: $00
	nop                                              ; $5813: $00
	add  b                                           ; $5814: $80
	add  b                                           ; $5815: $80
	add  b                                           ; $5816: $80
	add  b                                           ; $5817: $80
	add  b                                           ; $5818: $80
	add  b                                           ; $5819: $80
	add  b                                           ; $581a: $80
	add  b                                           ; $581b: $80
	add  b                                           ; $581c: $80
	add  b                                           ; $581d: $80
	add  b                                           ; $581e: $80
	add  b                                           ; $581f: $80
	nop                                              ; $5820: $00
	nop                                              ; $5821: $00
	nop                                              ; $5822: $00
	nop                                              ; $5823: $00
	ld   h, [hl]                                     ; $5824: $66
	ld   h, l                                        ; $5825: $65
	ld   l, c                                        ; $5826: $69
	jr   nz, @+$23                                   ; $5827: $20 $21

	ld   [hl+], a                                    ; $5829: $22
	inc  hl                                          ; $582a: $23
	inc  h                                           ; $582b: $24
	dec  h                                           ; $582c: $25
	ld   l, c                                        ; $582d: $69
	ld   h, l                                        ; $582e: $65
	ld   h, [hl]                                     ; $582f: $66
	nop                                              ; $5830: $00
	nop                                              ; $5831: $00
	nop                                              ; $5832: $00
	nop                                              ; $5833: $00
	add  b                                           ; $5834: $80
	add  b                                           ; $5835: $80
	add  b                                           ; $5836: $80
	add  b                                           ; $5837: $80
	add  b                                           ; $5838: $80
	add  b                                           ; $5839: $80

jr_02a_583a:
	add  b                                           ; $583a: $80
	add  b                                           ; $583b: $80
	add  b                                           ; $583c: $80
	add  b                                           ; $583d: $80
	add  b                                           ; $583e: $80
	add  b                                           ; $583f: $80
	ld   e, c                                        ; $5840: $59
	ld   e, c                                        ; $5841: $59
	ld   e, c                                        ; $5842: $59
	ld   e, c                                        ; $5843: $59
	ld   e, [hl]                                     ; $5844: $5e
	ld   bc, $1001                                   ; $5845: $01 $01 $10
	ld   de, $1312                                   ; $5848: $11 $12 $13
	inc  d                                           ; $584b: $14
	dec  d                                           ; $584c: $15
	ld   bc, $5e01                                   ; $584d: $01 $01 $5e
	ld   e, c                                        ; $5850: $59
	ld   e, c                                        ; $5851: $59
	ld   e, c                                        ; $5852: $59
	ld   e, c                                        ; $5853: $59
	add  b                                           ; $5854: $80
	add  b                                           ; $5855: $80
	add  b                                           ; $5856: $80
	add  b                                           ; $5857: $80
	add  b                                           ; $5858: $80
	add  b                                           ; $5859: $80
	add  b                                           ; $585a: $80
	add  b                                           ; $585b: $80
	add  b                                           ; $585c: $80
	add  b                                           ; $585d: $80
	add  b                                           ; $585e: $80
	add  b                                           ; $585f: $80
	ld   d, a                                        ; $5860: $57
	ld   e, b                                        ; $5861: $58
	ld   d, a                                        ; $5862: $57
	ld   e, b                                        ; $5863: $58
	ld   e, e                                        ; $5864: $5b
	ld   bc, $0101                                   ; $5865: $01 $01 $01
	ld   bc, $0101                                   ; $5868: $01 $01 $01
	ld   bc, $0101                                   ; $586b: $01 $01 $01
	ld   bc, $575b                                   ; $586e: $01 $5b $57
	ld   e, b                                        ; $5871: $58
	ld   d, a                                        ; $5872: $57
	ld   e, b                                        ; $5873: $58
	add  b                                           ; $5874: $80
	add  b                                           ; $5875: $80
	add  b                                           ; $5876: $80
	add  b                                           ; $5877: $80
	add  b                                           ; $5878: $80
	add  b                                           ; $5879: $80
	add  b                                           ; $587a: $80
	add  b                                           ; $587b: $80
	add  b                                           ; $587c: $80
	add  b                                           ; $587d: $80
	add  b                                           ; $587e: $80
	add  b                                           ; $587f: $80
	ld   h, a                                        ; $5880: $67
	ld   l, b                                        ; $5881: $68
	ld   h, a                                        ; $5882: $67
	ld   l, b                                        ; $5883: $68
	ld   h, h                                        ; $5884: $64
	ld   bc, $0101                                   ; $5885: $01 $01 $01
	ld   bc, $0101                                   ; $5888: $01 $01 $01
	ld   bc, $0101                                   ; $588b: $01 $01 $01
	ld   bc, $6764                                   ; $588e: $01 $64 $67
	ld   l, b                                        ; $5891: $68
	ld   h, a                                        ; $5892: $67
	ld   l, b                                        ; $5893: $68
	add  b                                           ; $5894: $80
	add  b                                           ; $5895: $80
	add  b                                           ; $5896: $80
	add  b                                           ; $5897: $80
	add  b                                           ; $5898: $80
	add  b                                           ; $5899: $80
	add  b                                           ; $589a: $80
	add  b                                           ; $589b: $80
	add  b                                           ; $589c: $80
	add  b                                           ; $589d: $80
	add  b                                           ; $589e: $80
	add  b                                           ; $589f: $80
	ld   d, a                                        ; $58a0: $57
	ld   e, b                                        ; $58a1: $58
	ld   d, a                                        ; $58a2: $57
	ld   e, b                                        ; $58a3: $58
	ld   h, h                                        ; $58a4: $64
	ld   bc, $0101                                   ; $58a5: $01 $01 $01
	ld   bc, $0101                                   ; $58a8: $01 $01 $01
	ld   bc, $0101                                   ; $58ab: $01 $01 $01
	ld   bc, $5764                                   ; $58ae: $01 $64 $57
	ld   e, b                                        ; $58b1: $58
	ld   d, a                                        ; $58b2: $57
	ld   e, b                                        ; $58b3: $58
	add  b                                           ; $58b4: $80
	add  b                                           ; $58b5: $80
	add  b                                           ; $58b6: $80
	add  b                                           ; $58b7: $80
	add  b                                           ; $58b8: $80
	add  b                                           ; $58b9: $80
	add  b                                           ; $58ba: $80
	add  b                                           ; $58bb: $80
	add  b                                           ; $58bc: $80
	add  b                                           ; $58bd: $80
	add  b                                           ; $58be: $80
	add  b                                           ; $58bf: $80
	ld   h, a                                        ; $58c0: $67
	ld   l, b                                        ; $58c1: $68
	ld   h, a                                        ; $58c2: $67
	ld   l, b                                        ; $58c3: $68
	ld   h, h                                        ; $58c4: $64
	ld   bc, $0101                                   ; $58c5: $01 $01 $01
	ld   bc, $0101                                   ; $58c8: $01 $01 $01
	ld   bc, $0101                                   ; $58cb: $01 $01 $01
	ld   bc, $6764                                   ; $58ce: $01 $64 $67
	ld   l, b                                        ; $58d1: $68
	ld   h, a                                        ; $58d2: $67
	ld   l, b                                        ; $58d3: $68
	add  b                                           ; $58d4: $80
	add  b                                           ; $58d5: $80
	add  b                                           ; $58d6: $80
	add  b                                           ; $58d7: $80
	add  b                                           ; $58d8: $80
	add  b                                           ; $58d9: $80
	add  b                                           ; $58da: $80
	add  b                                           ; $58db: $80
	add  b                                           ; $58dc: $80
	add  b                                           ; $58dd: $80
	add  b                                           ; $58de: $80
	add  b                                           ; $58df: $80
	ld   d, a                                        ; $58e0: $57
	ld   e, b                                        ; $58e1: $58
	ld   d, a                                        ; $58e2: $57
	ld   e, b                                        ; $58e3: $58
	ld   h, h                                        ; $58e4: $64
	ld   bc, $0101                                   ; $58e5: $01 $01 $01
	ld   bc, $0101                                   ; $58e8: $01 $01 $01
	ld   bc, $0101                                   ; $58eb: $01 $01 $01
	ld   bc, $5764                                   ; $58ee: $01 $64 $57
	ld   e, b                                        ; $58f1: $58
	ld   d, a                                        ; $58f2: $57
	ld   e, b                                        ; $58f3: $58
	add  b                                           ; $58f4: $80
	add  b                                           ; $58f5: $80
	add  b                                           ; $58f6: $80
	add  b                                           ; $58f7: $80
	add  b                                           ; $58f8: $80
	add  b                                           ; $58f9: $80
	add  b                                           ; $58fa: $80
	add  b                                           ; $58fb: $80
	add  b                                           ; $58fc: $80
	add  b                                           ; $58fd: $80
	add  b                                           ; $58fe: $80
	add  b                                           ; $58ff: $80
	ld   h, a                                        ; $5900: $67
	ld   l, b                                        ; $5901: $68
	ld   h, a                                        ; $5902: $67
	ld   l, b                                        ; $5903: $68
	ld   e, e                                        ; $5904: $5b
	ld   bc, $0101                                   ; $5905: $01 $01 $01
	ld   bc, $0101                                   ; $5908: $01 $01 $01
	ld   bc, $0101                                   ; $590b: $01 $01 $01
	ld   bc, $675b                                   ; $590e: $01 $5b $67
	ld   l, b                                        ; $5911: $68
	ld   h, a                                        ; $5912: $67
	ld   l, b                                        ; $5913: $68
	add  b                                           ; $5914: $80
	add  b                                           ; $5915: $80
	add  b                                           ; $5916: $80
	add  b                                           ; $5917: $80
	add  b                                           ; $5918: $80
	add  b                                           ; $5919: $80
	add  b                                           ; $591a: $80
	add  b                                           ; $591b: $80
	add  b                                           ; $591c: $80
	add  b                                           ; $591d: $80
	add  b                                           ; $591e: $80
	add  b                                           ; $591f: $80
	ld   e, c                                        ; $5920: $59
	ld   e, c                                        ; $5921: $59
	ld   e, c                                        ; $5922: $59
	ld   e, c                                        ; $5923: $59
	ld   e, [hl]                                     ; $5924: $5e
	ld   bc, $1415                                   ; $5925: $01 $15 $14
	inc  de                                          ; $5928: $13
	ld   [de], a                                     ; $5929: $12
	ld   de, $0110                                   ; $592a: $11 $10 $01
	ld   bc, $5e01                                   ; $592d: $01 $01 $5e
	ld   e, c                                        ; $5930: $59
	ld   e, c                                        ; $5931: $59
	ld   e, c                                        ; $5932: $59
	ld   e, c                                        ; $5933: $59
	add  b                                           ; $5934: $80
	add  b                                           ; $5935: $80
	add  b                                           ; $5936: $80
	add  b                                           ; $5937: $80
	add  b                                           ; $5938: $80
	add  b                                           ; $5939: $80
	add  b                                           ; $593a: $80
	add  b                                           ; $593b: $80
	add  b                                           ; $593c: $80
	add  b                                           ; $593d: $80
	add  b                                           ; $593e: $80
	add  b                                           ; $593f: $80
	nop                                              ; $5940: $00
	nop                                              ; $5941: $00
	nop                                              ; $5942: $00
	nop                                              ; $5943: $00
	ld   h, [hl]                                     ; $5944: $66
	ld   h, l                                        ; $5945: $65
	dec  h                                           ; $5946: $25
	inc  h                                           ; $5947: $24
	inc  hl                                          ; $5948: $23
	ld   [hl+], a                                    ; $5949: $22
	ld   hl, $6c20                                   ; $594a: $21 $20 $6c
	ld   l, h                                        ; $594d: $6c
	ld   h, l                                        ; $594e: $65
	ld   h, [hl]                                     ; $594f: $66
	nop                                              ; $5950: $00
	nop                                              ; $5951: $00
	nop                                              ; $5952: $00
	nop                                              ; $5953: $00
	add  b                                           ; $5954: $80
	add  b                                           ; $5955: $80
	add  b                                           ; $5956: $80
	add  b                                           ; $5957: $80
	add  b                                           ; $5958: $80
	add  b                                           ; $5959: $80
	add  b                                           ; $595a: $80
	add  b                                           ; $595b: $80
	add  b                                           ; $595c: $80
	add  b                                           ; $595d: $80
	add  b                                           ; $595e: $80
	add  b                                           ; $595f: $80
	nop                                              ; $5960: $00
	nop                                              ; $5961: $00
	nop                                              ; $5962: $00
	nop                                              ; $5963: $00
	ld   d, [hl]                                     ; $5964: $56
	ld   d, l                                        ; $5965: $55
	dec  [hl]                                        ; $5966: $35
	inc  [hl]                                        ; $5967: $34
	inc  sp                                          ; $5968: $33
	ld   [hl-], a                                    ; $5969: $32
	ld   sp, $5c30                                   ; $596a: $31 $30 $5c
	ld   e, h                                        ; $596d: $5c
	ld   d, l                                        ; $596e: $55
	ld   d, [hl]                                     ; $596f: $56
	nop                                              ; $5970: $00
	nop                                              ; $5971: $00
	nop                                              ; $5972: $00
	nop                                              ; $5973: $00
	add  b                                           ; $5974: $80
	add  b                                           ; $5975: $80
	add  b                                           ; $5976: $80
	add  b                                           ; $5977: $80
	add  b                                           ; $5978: $80
	add  b                                           ; $5979: $80
	add  b                                           ; $597a: $80
	add  b                                           ; $597b: $80
	add  b                                           ; $597c: $80
	add  b                                           ; $597d: $80
	add  b                                           ; $597e: $80
	add  b                                           ; $597f: $80
	nop                                              ; $5980: $00
	nop                                              ; $5981: $00
	nop                                              ; $5982: $00
	nop                                              ; $5983: $00
	ld   d, [hl]                                     ; $5984: $56
	ld   d, l                                        ; $5985: $55
	jr   nc, jr_02a_59b9                             ; $5986: $30 $31

	ld   [hl-], a                                    ; $5988: $32
	inc  sp                                          ; $5989: $33
	inc  [hl]                                        ; $598a: $34
	dec  [hl]                                        ; $598b: $35
	ld   e, h                                        ; $598c: $5c
	ld   e, h                                        ; $598d: $5c
	ld   d, l                                        ; $598e: $55
	ld   d, [hl]                                     ; $598f: $56
	nop                                              ; $5990: $00
	nop                                              ; $5991: $00
	nop                                              ; $5992: $00
	nop                                              ; $5993: $00
	add  b                                           ; $5994: $80
	add  b                                           ; $5995: $80
	add  b                                           ; $5996: $80
	add  b                                           ; $5997: $80
	add  b                                           ; $5998: $80
	add  b                                           ; $5999: $80
	add  b                                           ; $599a: $80
	add  b                                           ; $599b: $80
	add  b                                           ; $599c: $80
	add  b                                           ; $599d: $80
	add  b                                           ; $599e: $80
	add  b                                           ; $599f: $80
	nop                                              ; $59a0: $00
	nop                                              ; $59a1: $00
	nop                                              ; $59a2: $00
	nop                                              ; $59a3: $00
	ld   h, [hl]                                     ; $59a4: $66
	ld   h, l                                        ; $59a5: $65
	jr   nz, jr_02a_59c9                             ; $59a6: $20 $21

	ld   [hl+], a                                    ; $59a8: $22
	inc  hl                                          ; $59a9: $23
	dec  bc                                          ; $59aa: $0b
	inc  c                                           ; $59ab: $0c
	dec  c                                           ; $59ac: $0d
	ld   c, $65                                      ; $59ad: $0e $65
	ld   h, [hl]                                     ; $59af: $66
	nop                                              ; $59b0: $00
	nop                                              ; $59b1: $00
	nop                                              ; $59b2: $00
	nop                                              ; $59b3: $00
	add  b                                           ; $59b4: $80
	add  b                                           ; $59b5: $80
	add  b                                           ; $59b6: $80
	add  b                                           ; $59b7: $80
	add  b                                           ; $59b8: $80

jr_02a_59b9:
	add  b                                           ; $59b9: $80
	add  b                                           ; $59ba: $80
	add  b                                           ; $59bb: $80
	add  b                                           ; $59bc: $80
	add  b                                           ; $59bd: $80
	add  b                                           ; $59be: $80
	add  b                                           ; $59bf: $80
	ld   e, c                                        ; $59c0: $59
	ld   e, c                                        ; $59c1: $59
	ld   e, c                                        ; $59c2: $59
	ld   e, c                                        ; $59c3: $59
	ld   e, [hl]                                     ; $59c4: $5e
	ld   bc, $1110                                   ; $59c5: $01 $10 $11
	ld   [de], a                                     ; $59c8: $12

jr_02a_59c9:
	inc  de                                          ; $59c9: $13
	dec  de                                          ; $59ca: $1b
	inc  e                                           ; $59cb: $1c
	dec  e                                           ; $59cc: $1d
	ld   e, $1f                                      ; $59cd: $1e $1f
	ld   e, [hl]                                     ; $59cf: $5e
	ld   e, c                                        ; $59d0: $59
	ld   e, c                                        ; $59d1: $59
	ld   e, c                                        ; $59d2: $59
	ld   e, c                                        ; $59d3: $59
	add  b                                           ; $59d4: $80
	add  b                                           ; $59d5: $80
	add  b                                           ; $59d6: $80
	add  b                                           ; $59d7: $80
	add  b                                           ; $59d8: $80
	add  b                                           ; $59d9: $80
	add  b                                           ; $59da: $80
	add  b                                           ; $59db: $80
	add  b                                           ; $59dc: $80
	add  b                                           ; $59dd: $80
	add  b                                           ; $59de: $80
	add  b                                           ; $59df: $80
	ld   d, a                                        ; $59e0: $57
	ld   e, b                                        ; $59e1: $58
	ld   d, a                                        ; $59e2: $57
	ld   e, b                                        ; $59e3: $58
	ld   e, e                                        ; $59e4: $5b
	ld   bc, $1415                                   ; $59e5: $01 $15 $14
	inc  de                                          ; $59e8: $13
	ld   [de], a                                     ; $59e9: $12
	dec  hl                                          ; $59ea: $2b
	inc  l                                           ; $59eb: $2c
	dec  l                                           ; $59ec: $2d
	ld   l, $2f                                      ; $59ed: $2e $2f
	ld   e, e                                        ; $59ef: $5b
	ld   d, a                                        ; $59f0: $57
	ld   e, b                                        ; $59f1: $58
	ld   d, a                                        ; $59f2: $57
	ld   e, b                                        ; $59f3: $58
	add  b                                           ; $59f4: $80
	add  b                                           ; $59f5: $80
	add  b                                           ; $59f6: $80
	add  b                                           ; $59f7: $80
	add  b                                           ; $59f8: $80
	add  b                                           ; $59f9: $80
	add  b                                           ; $59fa: $80
	add  b                                           ; $59fb: $80
	add  b                                           ; $59fc: $80
	add  b                                           ; $59fd: $80
	add  b                                           ; $59fe: $80
	add  b                                           ; $59ff: $80
	ld   h, a                                        ; $5a00: $67
	ld   l, b                                        ; $5a01: $68
	ld   h, a                                        ; $5a02: $67
	ld   l, b                                        ; $5a03: $68
	ld   h, h                                        ; $5a04: $64
	ld   bc, $2425                                   ; $5a05: $01 $25 $24
	inc  hl                                          ; $5a08: $23
	ld   [hl+], a                                    ; $5a09: $22
	dec  sp                                          ; $5a0a: $3b
	inc  a                                           ; $5a0b: $3c
	dec  a                                           ; $5a0c: $3d
	ld   a, $3f                                      ; $5a0d: $3e $3f
	ld   h, h                                        ; $5a0f: $64
	ld   h, a                                        ; $5a10: $67
	ld   l, b                                        ; $5a11: $68
	ld   h, a                                        ; $5a12: $67
	ld   l, b                                        ; $5a13: $68
	add  b                                           ; $5a14: $80
	add  b                                           ; $5a15: $80
	add  b                                           ; $5a16: $80
	add  b                                           ; $5a17: $80
	add  b                                           ; $5a18: $80
	add  b                                           ; $5a19: $80
	add  b                                           ; $5a1a: $80
	add  b                                           ; $5a1b: $80
	add  b                                           ; $5a1c: $80
	add  b                                           ; $5a1d: $80
	add  b                                           ; $5a1e: $80
	add  b                                           ; $5a1f: $80
	ld   h, a                                        ; $5a20: $67
	ld   l, b                                        ; $5a21: $68
	ld   h, a                                        ; $5a22: $67
	ld   l, b                                        ; $5a23: $68
	ld   h, h                                        ; $5a24: $64
	ld   bc, $3435                                   ; $5a25: $01 $35 $34
	inc  sp                                          ; $5a28: $33
	ld   [hl-], a                                    ; $5a29: $32
	ld   sp, $0130                                   ; $5a2a: $31 $30 $01
	ld   bc, $6401                                   ; $5a2d: $01 $01 $64
	ld   d, a                                        ; $5a30: $57
	ld   e, b                                        ; $5a31: $58
	ld   d, a                                        ; $5a32: $57
	ld   e, b                                        ; $5a33: $58
	add  b                                           ; $5a34: $80
	add  b                                           ; $5a35: $80
	add  b                                           ; $5a36: $80
	add  b                                           ; $5a37: $80
	add  b                                           ; $5a38: $80
	add  b                                           ; $5a39: $80
	add  b                                           ; $5a3a: $80
	add  b                                           ; $5a3b: $80
	add  b                                           ; $5a3c: $80
	add  b                                           ; $5a3d: $80
	add  b                                           ; $5a3e: $80
	add  b                                           ; $5a3f: $80
	add  b                                           ; $5a40: $80
	add  b                                           ; $5a41: $80
	add  b                                           ; $5a42: $80
	add  b                                           ; $5a43: $80
	add  b                                           ; $5a44: $80
	add  b                                           ; $5a45: $80
	add  b                                           ; $5a46: $80
	add  b                                           ; $5a47: $80
	add  b                                           ; $5a48: $80
	add  b                                           ; $5a49: $80
	add  b                                           ; $5a4a: $80
	add  b                                           ; $5a4b: $80
	add  b                                           ; $5a4c: $80
	add  b                                           ; $5a4d: $80
	add  b                                           ; $5a4e: $80
	add  b                                           ; $5a4f: $80
	add  b                                           ; $5a50: $80
	add  b                                           ; $5a51: $80
	add  b                                           ; $5a52: $80
	add  b                                           ; $5a53: $80
	add  b                                           ; $5a54: $80
	add  b                                           ; $5a55: $80
	add  b                                           ; $5a56: $80
	add  b                                           ; $5a57: $80
	add  b                                           ; $5a58: $80
	add  b                                           ; $5a59: $80
	add  b                                           ; $5a5a: $80
	add  b                                           ; $5a5b: $80
	add  b                                           ; $5a5c: $80
	add  b                                           ; $5a5d: $80
	add  b                                           ; $5a5e: $80
	add  b                                           ; $5a5f: $80
	add  b                                           ; $5a60: $80
	add  b                                           ; $5a61: $80
	add  b                                           ; $5a62: $80
	add  b                                           ; $5a63: $80
	add  b                                           ; $5a64: $80
	add  b                                           ; $5a65: $80
	add  b                                           ; $5a66: $80
	add  b                                           ; $5a67: $80
	add  b                                           ; $5a68: $80
	add  b                                           ; $5a69: $80
	add  b                                           ; $5a6a: $80
	add  b                                           ; $5a6b: $80
	add  b                                           ; $5a6c: $80
	add  b                                           ; $5a6d: $80
	add  b                                           ; $5a6e: $80
	add  b                                           ; $5a6f: $80
	add  b                                           ; $5a70: $80
	add  b                                           ; $5a71: $80
	add  b                                           ; $5a72: $80
	add  b                                           ; $5a73: $80
	add  b                                           ; $5a74: $80
	add  b                                           ; $5a75: $80
	add  b                                           ; $5a76: $80
	add  b                                           ; $5a77: $80
	add  b                                           ; $5a78: $80
	add  b                                           ; $5a79: $80
	add  b                                           ; $5a7a: $80
	add  b                                           ; $5a7b: $80
	add  b                                           ; $5a7c: $80
	add  b                                           ; $5a7d: $80
	add  b                                           ; $5a7e: $80
	add  b                                           ; $5a7f: $80
	add  b                                           ; $5a80: $80
	add  b                                           ; $5a81: $80
	add  b                                           ; $5a82: $80
	add  b                                           ; $5a83: $80
	add  b                                           ; $5a84: $80
	add  b                                           ; $5a85: $80
	add  b                                           ; $5a86: $80
	add  b                                           ; $5a87: $80
	add  b                                           ; $5a88: $80
	add  b                                           ; $5a89: $80
	add  b                                           ; $5a8a: $80
	add  b                                           ; $5a8b: $80
	add  b                                           ; $5a8c: $80
	add  b                                           ; $5a8d: $80
	add  b                                           ; $5a8e: $80
	add  b                                           ; $5a8f: $80
	add  b                                           ; $5a90: $80
	add  b                                           ; $5a91: $80
	add  b                                           ; $5a92: $80
	add  b                                           ; $5a93: $80
	add  b                                           ; $5a94: $80
	add  b                                           ; $5a95: $80
	add  b                                           ; $5a96: $80
	add  b                                           ; $5a97: $80
	add  b                                           ; $5a98: $80
	add  b                                           ; $5a99: $80
	add  b                                           ; $5a9a: $80
	add  b                                           ; $5a9b: $80
	add  b                                           ; $5a9c: $80
	add  b                                           ; $5a9d: $80
	add  b                                           ; $5a9e: $80
	add  b                                           ; $5a9f: $80
	add  b                                           ; $5aa0: $80
	add  b                                           ; $5aa1: $80
	add  b                                           ; $5aa2: $80
	add  b                                           ; $5aa3: $80
	add  b                                           ; $5aa4: $80
	add  b                                           ; $5aa5: $80
	add  b                                           ; $5aa6: $80
	add  b                                           ; $5aa7: $80
	add  b                                           ; $5aa8: $80
	add  b                                           ; $5aa9: $80
	add  b                                           ; $5aaa: $80
	add  b                                           ; $5aab: $80
	add  b                                           ; $5aac: $80
	add  b                                           ; $5aad: $80
	add  b                                           ; $5aae: $80
	add  b                                           ; $5aaf: $80
	add  b                                           ; $5ab0: $80
	add  b                                           ; $5ab1: $80
	add  b                                           ; $5ab2: $80
	add  b                                           ; $5ab3: $80
	add  b                                           ; $5ab4: $80
	add  b                                           ; $5ab5: $80
	add  b                                           ; $5ab6: $80
	add  b                                           ; $5ab7: $80
	add  b                                           ; $5ab8: $80
	add  b                                           ; $5ab9: $80
	add  b                                           ; $5aba: $80
	add  b                                           ; $5abb: $80
	add  b                                           ; $5abc: $80
	add  b                                           ; $5abd: $80
	add  b                                           ; $5abe: $80
	add  b                                           ; $5abf: $80
	add  b                                           ; $5ac0: $80
	add  b                                           ; $5ac1: $80
	add  b                                           ; $5ac2: $80
	add  b                                           ; $5ac3: $80
	add  b                                           ; $5ac4: $80
	add  b                                           ; $5ac5: $80
	add  b                                           ; $5ac6: $80
	add  b                                           ; $5ac7: $80
	add  b                                           ; $5ac8: $80
	add  b                                           ; $5ac9: $80
	add  b                                           ; $5aca: $80
	add  b                                           ; $5acb: $80
	add  b                                           ; $5acc: $80
	add  b                                           ; $5acd: $80
	add  b                                           ; $5ace: $80
	add  b                                           ; $5acf: $80
	add  b                                           ; $5ad0: $80
	add  b                                           ; $5ad1: $80
	add  b                                           ; $5ad2: $80
	add  b                                           ; $5ad3: $80
	add  b                                           ; $5ad4: $80
	add  b                                           ; $5ad5: $80
	add  b                                           ; $5ad6: $80
	add  b                                           ; $5ad7: $80
	add  b                                           ; $5ad8: $80
	add  b                                           ; $5ad9: $80
	add  b                                           ; $5ada: $80
	add  b                                           ; $5adb: $80
	add  b                                           ; $5adc: $80
	add  b                                           ; $5add: $80
	add  b                                           ; $5ade: $80
	add  b                                           ; $5adf: $80
	add  b                                           ; $5ae0: $80
	add  b                                           ; $5ae1: $80
	add  b                                           ; $5ae2: $80
	add  b                                           ; $5ae3: $80
	add  b                                           ; $5ae4: $80
	add  b                                           ; $5ae5: $80
	add  b                                           ; $5ae6: $80
	add  b                                           ; $5ae7: $80
	add  b                                           ; $5ae8: $80
	add  b                                           ; $5ae9: $80
	add  b                                           ; $5aea: $80
	add  b                                           ; $5aeb: $80
	add  b                                           ; $5aec: $80
	add  b                                           ; $5aed: $80
	add  b                                           ; $5aee: $80
	add  b                                           ; $5aef: $80
	add  b                                           ; $5af0: $80
	add  b                                           ; $5af1: $80
	add  b                                           ; $5af2: $80
	add  b                                           ; $5af3: $80
	add  b                                           ; $5af4: $80
	add  b                                           ; $5af5: $80
	add  b                                           ; $5af6: $80
	add  b                                           ; $5af7: $80
	add  b                                           ; $5af8: $80
	add  b                                           ; $5af9: $80
	add  b                                           ; $5afa: $80
	add  b                                           ; $5afb: $80
	add  b                                           ; $5afc: $80
	add  b                                           ; $5afd: $80
	add  b                                           ; $5afe: $80
	add  b                                           ; $5aff: $80
	add  b                                           ; $5b00: $80
	add  b                                           ; $5b01: $80
	add  b                                           ; $5b02: $80
	add  b                                           ; $5b03: $80
	add  b                                           ; $5b04: $80
	add  b                                           ; $5b05: $80
	add  b                                           ; $5b06: $80
	add  b                                           ; $5b07: $80
	add  b                                           ; $5b08: $80
	add  b                                           ; $5b09: $80
	add  b                                           ; $5b0a: $80
	add  b                                           ; $5b0b: $80
	add  b                                           ; $5b0c: $80
	add  b                                           ; $5b0d: $80
	add  b                                           ; $5b0e: $80
	add  b                                           ; $5b0f: $80
	add  b                                           ; $5b10: $80
	add  b                                           ; $5b11: $80
	add  b                                           ; $5b12: $80
	add  b                                           ; $5b13: $80
	add  b                                           ; $5b14: $80
	add  b                                           ; $5b15: $80
	add  b                                           ; $5b16: $80
	add  b                                           ; $5b17: $80
	add  b                                           ; $5b18: $80
	add  b                                           ; $5b19: $80
	add  b                                           ; $5b1a: $80
	add  b                                           ; $5b1b: $80
	add  b                                           ; $5b1c: $80
	add  b                                           ; $5b1d: $80
	add  b                                           ; $5b1e: $80
	add  b                                           ; $5b1f: $80
	add  b                                           ; $5b20: $80
	add  b                                           ; $5b21: $80
	add  b                                           ; $5b22: $80
	add  b                                           ; $5b23: $80
	add  b                                           ; $5b24: $80
	add  b                                           ; $5b25: $80
	add  b                                           ; $5b26: $80
	add  b                                           ; $5b27: $80
	add  b                                           ; $5b28: $80
	add  b                                           ; $5b29: $80
	add  b                                           ; $5b2a: $80
	add  b                                           ; $5b2b: $80
	add  b                                           ; $5b2c: $80
	add  b                                           ; $5b2d: $80
	add  b                                           ; $5b2e: $80
	add  b                                           ; $5b2f: $80
	add  b                                           ; $5b30: $80
	add  b                                           ; $5b31: $80
	add  b                                           ; $5b32: $80
	add  b                                           ; $5b33: $80
	add  b                                           ; $5b34: $80
	add  b                                           ; $5b35: $80
	add  b                                           ; $5b36: $80
	add  b                                           ; $5b37: $80
	add  b                                           ; $5b38: $80
	add  b                                           ; $5b39: $80
	add  b                                           ; $5b3a: $80
	add  b                                           ; $5b3b: $80
	add  b                                           ; $5b3c: $80
	add  b                                           ; $5b3d: $80
	add  b                                           ; $5b3e: $80
	add  b                                           ; $5b3f: $80
	add  b                                           ; $5b40: $80
	add  b                                           ; $5b41: $80
	add  b                                           ; $5b42: $80
	add  b                                           ; $5b43: $80
	add  b                                           ; $5b44: $80
	add  b                                           ; $5b45: $80
	add  b                                           ; $5b46: $80
	add  b                                           ; $5b47: $80
	add  b                                           ; $5b48: $80
	add  b                                           ; $5b49: $80
	add  b                                           ; $5b4a: $80
	add  b                                           ; $5b4b: $80
	add  b                                           ; $5b4c: $80
	add  b                                           ; $5b4d: $80
	add  b                                           ; $5b4e: $80
	add  b                                           ; $5b4f: $80
	add  b                                           ; $5b50: $80
	add  b                                           ; $5b51: $80
	add  b                                           ; $5b52: $80
	add  b                                           ; $5b53: $80
	add  b                                           ; $5b54: $80
	add  b                                           ; $5b55: $80
	add  b                                           ; $5b56: $80
	add  b                                           ; $5b57: $80
	add  b                                           ; $5b58: $80
	add  b                                           ; $5b59: $80
	add  b                                           ; $5b5a: $80
	add  b                                           ; $5b5b: $80
	add  b                                           ; $5b5c: $80
	add  b                                           ; $5b5d: $80
	add  b                                           ; $5b5e: $80
	add  b                                           ; $5b5f: $80
	add  b                                           ; $5b60: $80
	add  b                                           ; $5b61: $80
	add  b                                           ; $5b62: $80
	add  b                                           ; $5b63: $80
	add  b                                           ; $5b64: $80
	add  b                                           ; $5b65: $80
	add  b                                           ; $5b66: $80
	add  b                                           ; $5b67: $80
	add  b                                           ; $5b68: $80
	add  b                                           ; $5b69: $80
	add  b                                           ; $5b6a: $80
	add  b                                           ; $5b6b: $80
	add  b                                           ; $5b6c: $80
	add  b                                           ; $5b6d: $80
	add  b                                           ; $5b6e: $80
	add  b                                           ; $5b6f: $80
	add  b                                           ; $5b70: $80
	add  b                                           ; $5b71: $80
	add  b                                           ; $5b72: $80
	add  b                                           ; $5b73: $80
	add  b                                           ; $5b74: $80
	add  b                                           ; $5b75: $80
	add  b                                           ; $5b76: $80
	add  b                                           ; $5b77: $80
	add  b                                           ; $5b78: $80
	add  b                                           ; $5b79: $80
	add  b                                           ; $5b7a: $80
	add  b                                           ; $5b7b: $80
	add  b                                           ; $5b7c: $80
	add  b                                           ; $5b7d: $80
	add  b                                           ; $5b7e: $80
	add  b                                           ; $5b7f: $80
	add  b                                           ; $5b80: $80
	add  b                                           ; $5b81: $80
	add  b                                           ; $5b82: $80
	add  b                                           ; $5b83: $80
	add  b                                           ; $5b84: $80
	add  b                                           ; $5b85: $80
	add  b                                           ; $5b86: $80
	add  b                                           ; $5b87: $80
	add  b                                           ; $5b88: $80
	add  b                                           ; $5b89: $80
	add  b                                           ; $5b8a: $80
	add  b                                           ; $5b8b: $80
	add  b                                           ; $5b8c: $80
	add  b                                           ; $5b8d: $80
	add  b                                           ; $5b8e: $80
	add  b                                           ; $5b8f: $80
	add  b                                           ; $5b90: $80
	add  b                                           ; $5b91: $80
	add  b                                           ; $5b92: $80
	add  b                                           ; $5b93: $80
	add  b                                           ; $5b94: $80
	add  b                                           ; $5b95: $80
	add  b                                           ; $5b96: $80
	add  b                                           ; $5b97: $80
	add  b                                           ; $5b98: $80
	add  b                                           ; $5b99: $80
	add  b                                           ; $5b9a: $80
	add  b                                           ; $5b9b: $80
	add  b                                           ; $5b9c: $80
	add  b                                           ; $5b9d: $80
	add  b                                           ; $5b9e: $80
	add  b                                           ; $5b9f: $80
	add  b                                           ; $5ba0: $80
	add  b                                           ; $5ba1: $80
	add  b                                           ; $5ba2: $80
	add  b                                           ; $5ba3: $80
	add  b                                           ; $5ba4: $80
	add  b                                           ; $5ba5: $80
	add  b                                           ; $5ba6: $80
	add  b                                           ; $5ba7: $80
	add  b                                           ; $5ba8: $80
	add  b                                           ; $5ba9: $80
	add  b                                           ; $5baa: $80
	add  b                                           ; $5bab: $80
	add  b                                           ; $5bac: $80
	add  b                                           ; $5bad: $80
	add  b                                           ; $5bae: $80
	add  b                                           ; $5baf: $80
	add  b                                           ; $5bb0: $80
	add  b                                           ; $5bb1: $80
	add  b                                           ; $5bb2: $80
	add  b                                           ; $5bb3: $80
	add  b                                           ; $5bb4: $80
	add  b                                           ; $5bb5: $80
	add  b                                           ; $5bb6: $80
	add  b                                           ; $5bb7: $80
	add  b                                           ; $5bb8: $80
	add  b                                           ; $5bb9: $80
	add  b                                           ; $5bba: $80
	add  b                                           ; $5bbb: $80
	add  b                                           ; $5bbc: $80
	add  b                                           ; $5bbd: $80
	add  b                                           ; $5bbe: $80
	add  b                                           ; $5bbf: $80
	add  b                                           ; $5bc0: $80
	add  b                                           ; $5bc1: $80
	add  b                                           ; $5bc2: $80
	add  b                                           ; $5bc3: $80
	add  b                                           ; $5bc4: $80
	add  b                                           ; $5bc5: $80
	add  b                                           ; $5bc6: $80
	add  b                                           ; $5bc7: $80
	add  b                                           ; $5bc8: $80
	add  b                                           ; $5bc9: $80
	add  b                                           ; $5bca: $80
	add  b                                           ; $5bcb: $80
	add  b                                           ; $5bcc: $80
	add  b                                           ; $5bcd: $80
	add  b                                           ; $5bce: $80
	add  b                                           ; $5bcf: $80
	add  b                                           ; $5bd0: $80
	add  b                                           ; $5bd1: $80
	add  b                                           ; $5bd2: $80
	add  b                                           ; $5bd3: $80
	add  b                                           ; $5bd4: $80
	add  b                                           ; $5bd5: $80
	add  b                                           ; $5bd6: $80
	add  b                                           ; $5bd7: $80
	add  b                                           ; $5bd8: $80
	add  b                                           ; $5bd9: $80
	add  b                                           ; $5bda: $80
	add  b                                           ; $5bdb: $80
	add  b                                           ; $5bdc: $80
	add  b                                           ; $5bdd: $80
	add  b                                           ; $5bde: $80
	add  b                                           ; $5bdf: $80
	add  b                                           ; $5be0: $80
	add  b                                           ; $5be1: $80
	add  b                                           ; $5be2: $80
	add  b                                           ; $5be3: $80
	add  b                                           ; $5be4: $80
	add  b                                           ; $5be5: $80
	add  b                                           ; $5be6: $80
	add  b                                           ; $5be7: $80
	add  b                                           ; $5be8: $80
	add  b                                           ; $5be9: $80
	add  b                                           ; $5bea: $80
	add  b                                           ; $5beb: $80
	add  b                                           ; $5bec: $80
	add  b                                           ; $5bed: $80
	add  b                                           ; $5bee: $80
	add  b                                           ; $5bef: $80
	add  b                                           ; $5bf0: $80
	add  b                                           ; $5bf1: $80
	add  b                                           ; $5bf2: $80
	add  b                                           ; $5bf3: $80
	add  b                                           ; $5bf4: $80
	add  b                                           ; $5bf5: $80
	add  b                                           ; $5bf6: $80
	add  b                                           ; $5bf7: $80
	add  b                                           ; $5bf8: $80
	add  b                                           ; $5bf9: $80
	add  b                                           ; $5bfa: $80
	add  b                                           ; $5bfb: $80
	add  b                                           ; $5bfc: $80
	add  b                                           ; $5bfd: $80
	add  b                                           ; $5bfe: $80
	add  b                                           ; $5bff: $80
	ld   b, $06                                      ; $5c00: $06 $06
	ld   b, $06                                      ; $5c02: $06 $06
	dec  h                                           ; $5c04: $25
	dec  h                                           ; $5c05: $25
	dec  b                                           ; $5c06: $05
	ld   b, e                                        ; $5c07: $43
	ld   b, e                                        ; $5c08: $43
	ld   b, e                                        ; $5c09: $43
	ld   b, e                                        ; $5c0a: $43
	ld   b, e                                        ; $5c0b: $43
	ld   b, e                                        ; $5c0c: $43
	dec  b                                           ; $5c0d: $05
	dec  b                                           ; $5c0e: $05
	dec  b                                           ; $5c0f: $05
	ld   h, $26                                      ; $5c10: $26 $26
	ld   h, $26                                      ; $5c12: $26 $26
	ld   [$0808], sp                                 ; $5c14: $08 $08 $08
	ld   [$0808], sp                                 ; $5c17: $08 $08 $08
	ld   [$0808], sp                                 ; $5c1a: $08 $08 $08
	ld   [$0808], sp                                 ; $5c1d: $08 $08 $08
	ld   b, $06                                      ; $5c20: $06 $06
	ld   b, $06                                      ; $5c22: $06 $06
	dec  h                                           ; $5c24: $25
	dec  h                                           ; $5c25: $25
	dec  b                                           ; $5c26: $05
	ld   b, e                                        ; $5c27: $43
	ld   b, e                                        ; $5c28: $43
	ld   b, e                                        ; $5c29: $43
	ld   b, e                                        ; $5c2a: $43
	ld   b, e                                        ; $5c2b: $43
	ld   b, e                                        ; $5c2c: $43
	dec  b                                           ; $5c2d: $05
	dec  b                                           ; $5c2e: $05
	dec  b                                           ; $5c2f: $05
	ld   h, $26                                      ; $5c30: $26 $26
	ld   h, $26                                      ; $5c32: $26 $26
	ld   [$0808], sp                                 ; $5c34: $08 $08 $08
	ld   [$0808], sp                                 ; $5c37: $08 $08 $08
	ld   [$0808], sp                                 ; $5c3a: $08 $08 $08
	ld   [$0808], sp                                 ; $5c3d: $08 $08 $08
	dec  b                                           ; $5c40: $05
	dec  b                                           ; $5c41: $05
	dec  b                                           ; $5c42: $05
	dec  b                                           ; $5c43: $05
	dec  h                                           ; $5c44: $25
	dec  b                                           ; $5c45: $05
	dec  b                                           ; $5c46: $05
	ld   b, e                                        ; $5c47: $43
	ld   b, e                                        ; $5c48: $43
	ld   b, e                                        ; $5c49: $43
	ld   b, e                                        ; $5c4a: $43
	ld   b, e                                        ; $5c4b: $43
	ld   b, e                                        ; $5c4c: $43
	dec  b                                           ; $5c4d: $05
	dec  b                                           ; $5c4e: $05
	dec  b                                           ; $5c4f: $05
	dec  b                                           ; $5c50: $05
	dec  b                                           ; $5c51: $05
	dec  b                                           ; $5c52: $05
	dec  b                                           ; $5c53: $05
	ld   [$0808], sp                                 ; $5c54: $08 $08 $08
	ld   [$0808], sp                                 ; $5c57: $08 $08 $08
	ld   [$0808], sp                                 ; $5c5a: $08 $08 $08
	ld   [$0808], sp                                 ; $5c5d: $08 $08 $08
	inc  bc                                          ; $5c60: $03
	inc  bc                                          ; $5c61: $03
	inc  bc                                          ; $5c62: $03
	inc  bc                                          ; $5c63: $03
	dec  h                                           ; $5c64: $25
	dec  b                                           ; $5c65: $05
	dec  b                                           ; $5c66: $05
	dec  b                                           ; $5c67: $05
	dec  b                                           ; $5c68: $05
	dec  b                                           ; $5c69: $05
	dec  b                                           ; $5c6a: $05
	dec  b                                           ; $5c6b: $05
	dec  b                                           ; $5c6c: $05
	dec  b                                           ; $5c6d: $05
	dec  b                                           ; $5c6e: $05
	dec  b                                           ; $5c6f: $05
	inc  bc                                          ; $5c70: $03
	inc  bc                                          ; $5c71: $03
	inc  bc                                          ; $5c72: $03
	inc  bc                                          ; $5c73: $03
	ld   [$0808], sp                                 ; $5c74: $08 $08 $08
	ld   [$0808], sp                                 ; $5c77: $08 $08 $08
	ld   [$0808], sp                                 ; $5c7a: $08 $08 $08
	ld   [$0808], sp                                 ; $5c7d: $08 $08 $08
	inc  bc                                          ; $5c80: $03
	inc  bc                                          ; $5c81: $03
	inc  bc                                          ; $5c82: $03
	inc  bc                                          ; $5c83: $03
	dec  h                                           ; $5c84: $25
	dec  b                                           ; $5c85: $05
	dec  b                                           ; $5c86: $05
	dec  b                                           ; $5c87: $05
	dec  b                                           ; $5c88: $05
	dec  b                                           ; $5c89: $05
	dec  b                                           ; $5c8a: $05
	dec  b                                           ; $5c8b: $05
	dec  b                                           ; $5c8c: $05
	dec  b                                           ; $5c8d: $05
	dec  b                                           ; $5c8e: $05
	dec  b                                           ; $5c8f: $05
	inc  bc                                          ; $5c90: $03
	inc  bc                                          ; $5c91: $03
	inc  bc                                          ; $5c92: $03
	inc  bc                                          ; $5c93: $03
	ld   [$0808], sp                                 ; $5c94: $08 $08 $08
	ld   [$0808], sp                                 ; $5c97: $08 $08 $08
	ld   [$0808], sp                                 ; $5c9a: $08 $08 $08
	ld   [$0808], sp                                 ; $5c9d: $08 $08 $08
	inc  bc                                          ; $5ca0: $03
	inc  bc                                          ; $5ca1: $03
	inc  bc                                          ; $5ca2: $03
	inc  bc                                          ; $5ca3: $03
	dec  h                                           ; $5ca4: $25
	dec  b                                           ; $5ca5: $05
	dec  b                                           ; $5ca6: $05
	dec  b                                           ; $5ca7: $05
	dec  b                                           ; $5ca8: $05
	dec  b                                           ; $5ca9: $05
	dec  b                                           ; $5caa: $05
	dec  b                                           ; $5cab: $05
	dec  b                                           ; $5cac: $05
	dec  b                                           ; $5cad: $05
	dec  b                                           ; $5cae: $05
	dec  b                                           ; $5caf: $05
	inc  bc                                          ; $5cb0: $03
	inc  bc                                          ; $5cb1: $03
	inc  bc                                          ; $5cb2: $03
	inc  bc                                          ; $5cb3: $03
	ld   [$0808], sp                                 ; $5cb4: $08 $08 $08
	ld   [$0808], sp                                 ; $5cb7: $08 $08 $08
	ld   [$0808], sp                                 ; $5cba: $08 $08 $08
	ld   [$0808], sp                                 ; $5cbd: $08 $08 $08
	inc  bc                                          ; $5cc0: $03
	inc  bc                                          ; $5cc1: $03
	inc  bc                                          ; $5cc2: $03
	inc  bc                                          ; $5cc3: $03
	dec  h                                           ; $5cc4: $25
	dec  b                                           ; $5cc5: $05
	dec  b                                           ; $5cc6: $05
	dec  b                                           ; $5cc7: $05
	dec  b                                           ; $5cc8: $05
	dec  b                                           ; $5cc9: $05
	dec  b                                           ; $5cca: $05
	dec  b                                           ; $5ccb: $05
	dec  b                                           ; $5ccc: $05
	dec  b                                           ; $5ccd: $05
	dec  b                                           ; $5cce: $05
	dec  b                                           ; $5ccf: $05
	inc  bc                                          ; $5cd0: $03
	inc  bc                                          ; $5cd1: $03
	inc  bc                                          ; $5cd2: $03
	inc  bc                                          ; $5cd3: $03
	ld   [$0808], sp                                 ; $5cd4: $08 $08 $08
	ld   [$0808], sp                                 ; $5cd7: $08 $08 $08
	ld   [$0808], sp                                 ; $5cda: $08 $08 $08
	ld   [$0808], sp                                 ; $5cdd: $08 $08 $08
	inc  bc                                          ; $5ce0: $03
	inc  bc                                          ; $5ce1: $03
	inc  bc                                          ; $5ce2: $03
	inc  bc                                          ; $5ce3: $03
	dec  h                                           ; $5ce4: $25
	dec  b                                           ; $5ce5: $05
	dec  b                                           ; $5ce6: $05
	dec  b                                           ; $5ce7: $05
	dec  b                                           ; $5ce8: $05
	dec  b                                           ; $5ce9: $05
	dec  b                                           ; $5cea: $05
	dec  b                                           ; $5ceb: $05
	dec  b                                           ; $5cec: $05
	dec  b                                           ; $5ced: $05
	dec  b                                           ; $5cee: $05
	dec  b                                           ; $5cef: $05
	inc  bc                                          ; $5cf0: $03
	inc  bc                                          ; $5cf1: $03
	inc  bc                                          ; $5cf2: $03
	inc  bc                                          ; $5cf3: $03
	ld   [$0808], sp                                 ; $5cf4: $08 $08 $08
	ld   [$0808], sp                                 ; $5cf7: $08 $08 $08
	ld   [$0808], sp                                 ; $5cfa: $08 $08 $08
	ld   [$0808], sp                                 ; $5cfd: $08 $08 $08
	inc  bc                                          ; $5d00: $03
	inc  bc                                          ; $5d01: $03
	inc  bc                                          ; $5d02: $03
	inc  bc                                          ; $5d03: $03
	ld   h, l                                        ; $5d04: $65
	dec  b                                           ; $5d05: $05
	dec  b                                           ; $5d06: $05
	dec  b                                           ; $5d07: $05
	dec  b                                           ; $5d08: $05
	dec  b                                           ; $5d09: $05
	dec  b                                           ; $5d0a: $05
	dec  b                                           ; $5d0b: $05
	dec  b                                           ; $5d0c: $05
	dec  b                                           ; $5d0d: $05
	dec  b                                           ; $5d0e: $05
	ld   b, l                                        ; $5d0f: $45
	inc  bc                                          ; $5d10: $03
	inc  bc                                          ; $5d11: $03
	inc  bc                                          ; $5d12: $03
	inc  bc                                          ; $5d13: $03
	ld   [$0808], sp                                 ; $5d14: $08 $08 $08
	ld   [$0808], sp                                 ; $5d17: $08 $08 $08
	ld   [$0808], sp                                 ; $5d1a: $08 $08 $08
	ld   [$0808], sp                                 ; $5d1d: $08 $08 $08
	dec  b                                           ; $5d20: $05
	dec  b                                           ; $5d21: $05
	dec  b                                           ; $5d22: $05
	dec  b                                           ; $5d23: $05
	dec  h                                           ; $5d24: $25
	dec  b                                           ; $5d25: $05
	inc  hl                                          ; $5d26: $23
	inc  hl                                          ; $5d27: $23
	inc  hl                                          ; $5d28: $23
	inc  hl                                          ; $5d29: $23
	inc  hl                                          ; $5d2a: $23
	inc  hl                                          ; $5d2b: $23
	dec  b                                           ; $5d2c: $05
	dec  b                                           ; $5d2d: $05
	dec  b                                           ; $5d2e: $05
	dec  b                                           ; $5d2f: $05
	dec  b                                           ; $5d30: $05
	dec  b                                           ; $5d31: $05
	dec  b                                           ; $5d32: $05
	dec  b                                           ; $5d33: $05
	ld   [$0808], sp                                 ; $5d34: $08 $08 $08
	ld   [$0808], sp                                 ; $5d37: $08 $08 $08
	ld   [$0808], sp                                 ; $5d3a: $08 $08 $08
	ld   [$0808], sp                                 ; $5d3d: $08 $08 $08
	ld   b, [hl]                                     ; $5d40: $46
	ld   b, [hl]                                     ; $5d41: $46
	ld   b, [hl]                                     ; $5d42: $46
	ld   b, [hl]                                     ; $5d43: $46
	ld   h, l                                        ; $5d44: $65
	ld   h, l                                        ; $5d45: $65
	inc  hl                                          ; $5d46: $23
	inc  hl                                          ; $5d47: $23
	inc  hl                                          ; $5d48: $23
	inc  hl                                          ; $5d49: $23
	inc  hl                                          ; $5d4a: $23
	inc  hl                                          ; $5d4b: $23
	ld   b, l                                        ; $5d4c: $45
	ld   b, l                                        ; $5d4d: $45
	ld   b, l                                        ; $5d4e: $45
	ld   b, l                                        ; $5d4f: $45
	ld   h, [hl]                                     ; $5d50: $66
	ld   h, [hl]                                     ; $5d51: $66
	ld   h, [hl]                                     ; $5d52: $66
	ld   h, [hl]                                     ; $5d53: $66
	ld   [$0808], sp                                 ; $5d54: $08 $08 $08
	ld   [$0808], sp                                 ; $5d57: $08 $08 $08
	ld   [$0808], sp                                 ; $5d5a: $08 $08 $08
	ld   [$0808], sp                                 ; $5d5d: $08 $08 $08
	ld   b, [hl]                                     ; $5d60: $46
	ld   b, [hl]                                     ; $5d61: $46
	ld   b, [hl]                                     ; $5d62: $46
	ld   b, [hl]                                     ; $5d63: $46
	ld   h, l                                        ; $5d64: $65
	ld   h, l                                        ; $5d65: $65
	inc  hl                                          ; $5d66: $23
	inc  hl                                          ; $5d67: $23
	inc  hl                                          ; $5d68: $23
	inc  hl                                          ; $5d69: $23
	inc  hl                                          ; $5d6a: $23
	inc  hl                                          ; $5d6b: $23
	ld   b, l                                        ; $5d6c: $45
	ld   b, l                                        ; $5d6d: $45
	ld   b, l                                        ; $5d6e: $45
	ld   b, l                                        ; $5d6f: $45
	ld   h, [hl]                                     ; $5d70: $66
	ld   h, [hl]                                     ; $5d71: $66
	ld   h, [hl]                                     ; $5d72: $66
	ld   h, [hl]                                     ; $5d73: $66
	ld   [$0808], sp                                 ; $5d74: $08 $08 $08
	ld   [$0808], sp                                 ; $5d77: $08 $08 $08
	ld   [$0808], sp                                 ; $5d7a: $08 $08 $08
	ld   [$0808], sp                                 ; $5d7d: $08 $08 $08
	ld   b, $06                                      ; $5d80: $06 $06
	ld   b, $06                                      ; $5d82: $06 $06
	dec  h                                           ; $5d84: $25
	dec  h                                           ; $5d85: $25
	ld   b, e                                        ; $5d86: $43
	ld   b, e                                        ; $5d87: $43
	ld   b, e                                        ; $5d88: $43
	ld   b, e                                        ; $5d89: $43
	ld   b, e                                        ; $5d8a: $43
	ld   b, e                                        ; $5d8b: $43
	dec  b                                           ; $5d8c: $05
	dec  b                                           ; $5d8d: $05
	dec  b                                           ; $5d8e: $05
	dec  b                                           ; $5d8f: $05
	ld   h, $26                                      ; $5d90: $26 $26
	ld   h, $26                                      ; $5d92: $26 $26
	ld   [$0808], sp                                 ; $5d94: $08 $08 $08
	ld   [$0808], sp                                 ; $5d97: $08 $08 $08
	ld   [$0808], sp                                 ; $5d9a: $08 $08 $08
	ld   [$0808], sp                                 ; $5d9d: $08 $08 $08
	ld   b, $06                                      ; $5da0: $06 $06
	ld   b, $06                                      ; $5da2: $06 $06
	dec  h                                           ; $5da4: $25
	dec  h                                           ; $5da5: $25
	ld   b, e                                        ; $5da6: $43
	ld   b, e                                        ; $5da7: $43
	ld   b, e                                        ; $5da8: $43
	ld   b, e                                        ; $5da9: $43
	dec  bc                                          ; $5daa: $0b
	dec  bc                                          ; $5dab: $0b
	dec  bc                                          ; $5dac: $0b
	dec  bc                                          ; $5dad: $0b
	dec  b                                           ; $5dae: $05
	dec  b                                           ; $5daf: $05
	ld   h, $26                                      ; $5db0: $26 $26
	ld   h, $26                                      ; $5db2: $26 $26
	ld   [$0808], sp                                 ; $5db4: $08 $08 $08
	ld   [$0808], sp                                 ; $5db7: $08 $08 $08
	ld   [$0808], sp                                 ; $5dba: $08 $08 $08
	ld   [$0808], sp                                 ; $5dbd: $08 $08 $08
	dec  b                                           ; $5dc0: $05
	dec  b                                           ; $5dc1: $05
	dec  b                                           ; $5dc2: $05
	dec  b                                           ; $5dc3: $05
	ld   h, l                                        ; $5dc4: $65
	ld   b, l                                        ; $5dc5: $45
	ld   b, e                                        ; $5dc6: $43
	ld   b, e                                        ; $5dc7: $43
	ld   b, e                                        ; $5dc8: $43
	ld   b, e                                        ; $5dc9: $43
	dec  bc                                          ; $5dca: $0b
	dec  bc                                          ; $5dcb: $0b
	dec  bc                                          ; $5dcc: $0b
	dec  bc                                          ; $5dcd: $0b
	dec  bc                                          ; $5dce: $0b
	ld   b, l                                        ; $5dcf: $45
	dec  b                                           ; $5dd0: $05
	dec  b                                           ; $5dd1: $05
	dec  b                                           ; $5dd2: $05
	dec  b                                           ; $5dd3: $05
	ld   [$0808], sp                                 ; $5dd4: $08 $08 $08
	ld   [$0808], sp                                 ; $5dd7: $08 $08 $08
	ld   [$0808], sp                                 ; $5dda: $08 $08 $08
	ld   [$0808], sp                                 ; $5ddd: $08 $08 $08
	inc  bc                                          ; $5de0: $03
	inc  bc                                          ; $5de1: $03
	inc  bc                                          ; $5de2: $03
	inc  bc                                          ; $5de3: $03
	dec  h                                           ; $5de4: $25
	ld   b, l                                        ; $5de5: $45
	inc  hl                                          ; $5de6: $23
	inc  hl                                          ; $5de7: $23
	inc  hl                                          ; $5de8: $23
	inc  hl                                          ; $5de9: $23
	dec  bc                                          ; $5dea: $0b
	dec  bc                                          ; $5deb: $0b
	dec  bc                                          ; $5dec: $0b
	dec  bc                                          ; $5ded: $0b
	dec  bc                                          ; $5dee: $0b
	dec  b                                           ; $5def: $05
	inc  bc                                          ; $5df0: $03
	inc  bc                                          ; $5df1: $03
	inc  bc                                          ; $5df2: $03
	inc  bc                                          ; $5df3: $03
	ld   [$0808], sp                                 ; $5df4: $08 $08 $08
	ld   [$0808], sp                                 ; $5df7: $08 $08 $08
	ld   [$0808], sp                                 ; $5dfa: $08 $08 $08
	ld   [$0808], sp                                 ; $5dfd: $08 $08 $08
	inc  bc                                          ; $5e00: $03
	inc  bc                                          ; $5e01: $03
	inc  bc                                          ; $5e02: $03
	inc  bc                                          ; $5e03: $03
	ld   h, l                                        ; $5e04: $65
	ld   b, l                                        ; $5e05: $45
	inc  hl                                          ; $5e06: $23
	inc  hl                                          ; $5e07: $23
	inc  hl                                          ; $5e08: $23
	inc  hl                                          ; $5e09: $23
	dec  bc                                          ; $5e0a: $0b
	dec  bc                                          ; $5e0b: $0b
	dec  bc                                          ; $5e0c: $0b
	dec  bc                                          ; $5e0d: $0b
	dec  bc                                          ; $5e0e: $0b
	ld   b, l                                        ; $5e0f: $45
	inc  bc                                          ; $5e10: $03
	inc  bc                                          ; $5e11: $03
	inc  bc                                          ; $5e12: $03
	inc  bc                                          ; $5e13: $03
	ld   [$0808], sp                                 ; $5e14: $08 $08 $08
	ld   [$0808], sp                                 ; $5e17: $08 $08 $08
	ld   [$0808], sp                                 ; $5e1a: $08 $08 $08
	ld   [$0808], sp                                 ; $5e1d: $08 $08 $08
	ld   b, e                                        ; $5e20: $43
	ld   b, e                                        ; $5e21: $43
	ld   b, e                                        ; $5e22: $43
	ld   b, e                                        ; $5e23: $43
	ld   h, l                                        ; $5e24: $65
	ld   b, l                                        ; $5e25: $45
	inc  hl                                          ; $5e26: $23
	inc  hl                                          ; $5e27: $23
	inc  hl                                          ; $5e28: $23
	inc  hl                                          ; $5e29: $23
	inc  hl                                          ; $5e2a: $23
	inc  hl                                          ; $5e2b: $23
	ld   b, l                                        ; $5e2c: $45
	dec  b                                           ; $5e2d: $05
	dec  b                                           ; $5e2e: $05
	ld   b, l                                        ; $5e2f: $45
	inc  bc                                          ; $5e30: $03
	inc  bc                                          ; $5e31: $03
	inc  bc                                          ; $5e32: $03
	inc  bc                                          ; $5e33: $03
	ld   [$0808], sp                                 ; $5e34: $08 $08 $08
	ld   [$0808], sp                                 ; $5e37: $08 $08 $08
	ld   [$0808], sp                                 ; $5e3a: $08 $08 $08
	ld   [$0808], sp                                 ; $5e3d: $08 $08 $08
	ld   [$0808], sp                                 ; $5e40: $08 $08 $08
	ld   [$0808], sp                                 ; $5e43: $08 $08 $08
	ld   [$0808], sp                                 ; $5e46: $08 $08 $08
	ld   [$0808], sp                                 ; $5e49: $08 $08 $08
	ld   [$0808], sp                                 ; $5e4c: $08 $08 $08
	ld   [$0808], sp                                 ; $5e4f: $08 $08 $08
	ld   [$0808], sp                                 ; $5e52: $08 $08 $08
	ld   [$0808], sp                                 ; $5e55: $08 $08 $08
	ld   [$0808], sp                                 ; $5e58: $08 $08 $08
	ld   [$0808], sp                                 ; $5e5b: $08 $08 $08
	ld   [$0808], sp                                 ; $5e5e: $08 $08 $08
	ld   [$0808], sp                                 ; $5e61: $08 $08 $08
	ld   [$0808], sp                                 ; $5e64: $08 $08 $08
	ld   [$0808], sp                                 ; $5e67: $08 $08 $08
	ld   [$0808], sp                                 ; $5e6a: $08 $08 $08
	ld   [$0808], sp                                 ; $5e6d: $08 $08 $08
	ld   [$0808], sp                                 ; $5e70: $08 $08 $08
	ld   [$0808], sp                                 ; $5e73: $08 $08 $08
	ld   [$0808], sp                                 ; $5e76: $08 $08 $08
	ld   [$0808], sp                                 ; $5e79: $08 $08 $08
	ld   [$0808], sp                                 ; $5e7c: $08 $08 $08
	ld   [$0808], sp                                 ; $5e7f: $08 $08 $08
	ld   [$0808], sp                                 ; $5e82: $08 $08 $08
	ld   [$0808], sp                                 ; $5e85: $08 $08 $08
	ld   [$0808], sp                                 ; $5e88: $08 $08 $08
	ld   [$0808], sp                                 ; $5e8b: $08 $08 $08
	ld   [$0808], sp                                 ; $5e8e: $08 $08 $08
	ld   [$0808], sp                                 ; $5e91: $08 $08 $08
	ld   [$0808], sp                                 ; $5e94: $08 $08 $08
	ld   [$0808], sp                                 ; $5e97: $08 $08 $08
	ld   [$0808], sp                                 ; $5e9a: $08 $08 $08
	ld   [$0808], sp                                 ; $5e9d: $08 $08 $08
	ld   [$0808], sp                                 ; $5ea0: $08 $08 $08
	ld   [$0808], sp                                 ; $5ea3: $08 $08 $08
	ld   [$0808], sp                                 ; $5ea6: $08 $08 $08
	ld   [$0808], sp                                 ; $5ea9: $08 $08 $08
	ld   [$0808], sp                                 ; $5eac: $08 $08 $08
	ld   [$0808], sp                                 ; $5eaf: $08 $08 $08
	ld   [$0808], sp                                 ; $5eb2: $08 $08 $08
	ld   [$0808], sp                                 ; $5eb5: $08 $08 $08
	ld   [$0808], sp                                 ; $5eb8: $08 $08 $08
	ld   [$0808], sp                                 ; $5ebb: $08 $08 $08
	ld   [$0808], sp                                 ; $5ebe: $08 $08 $08
	ld   [$0808], sp                                 ; $5ec1: $08 $08 $08
	ld   [$0808], sp                                 ; $5ec4: $08 $08 $08
	ld   [$0808], sp                                 ; $5ec7: $08 $08 $08
	ld   [$0808], sp                                 ; $5eca: $08 $08 $08
	ld   [$0808], sp                                 ; $5ecd: $08 $08 $08
	ld   [$0808], sp                                 ; $5ed0: $08 $08 $08
	ld   [$0808], sp                                 ; $5ed3: $08 $08 $08
	ld   [$0808], sp                                 ; $5ed6: $08 $08 $08
	ld   [$0808], sp                                 ; $5ed9: $08 $08 $08
	ld   [$0808], sp                                 ; $5edc: $08 $08 $08
	ld   [$0808], sp                                 ; $5edf: $08 $08 $08
	ld   [$0808], sp                                 ; $5ee2: $08 $08 $08
	ld   [$0808], sp                                 ; $5ee5: $08 $08 $08
	ld   [$0808], sp                                 ; $5ee8: $08 $08 $08
	ld   [$0808], sp                                 ; $5eeb: $08 $08 $08
	ld   [$0808], sp                                 ; $5eee: $08 $08 $08
	ld   [$0808], sp                                 ; $5ef1: $08 $08 $08
	ld   [$0808], sp                                 ; $5ef4: $08 $08 $08
	ld   [$0808], sp                                 ; $5ef7: $08 $08 $08
	ld   [$0808], sp                                 ; $5efa: $08 $08 $08
	ld   [$0808], sp                                 ; $5efd: $08 $08 $08
	ld   [$0808], sp                                 ; $5f00: $08 $08 $08
	ld   [$0808], sp                                 ; $5f03: $08 $08 $08
	ld   [$0808], sp                                 ; $5f06: $08 $08 $08
	ld   [$0808], sp                                 ; $5f09: $08 $08 $08
	ld   [$0808], sp                                 ; $5f0c: $08 $08 $08
	ld   [$0808], sp                                 ; $5f0f: $08 $08 $08
	ld   [$0808], sp                                 ; $5f12: $08 $08 $08
	ld   [$0808], sp                                 ; $5f15: $08 $08 $08
	ld   [$0808], sp                                 ; $5f18: $08 $08 $08
	ld   [$0808], sp                                 ; $5f1b: $08 $08 $08
	ld   [$0808], sp                                 ; $5f1e: $08 $08 $08
	ld   [$0808], sp                                 ; $5f21: $08 $08 $08
	ld   [$0808], sp                                 ; $5f24: $08 $08 $08
	ld   [$0808], sp                                 ; $5f27: $08 $08 $08
	ld   [$0808], sp                                 ; $5f2a: $08 $08 $08
	ld   [$0808], sp                                 ; $5f2d: $08 $08 $08
	ld   [$0808], sp                                 ; $5f30: $08 $08 $08
	ld   [$0808], sp                                 ; $5f33: $08 $08 $08
	ld   [$0808], sp                                 ; $5f36: $08 $08 $08
	ld   [$0808], sp                                 ; $5f39: $08 $08 $08
	ld   [$0808], sp                                 ; $5f3c: $08 $08 $08
	ld   [$0808], sp                                 ; $5f3f: $08 $08 $08
	ld   [$0808], sp                                 ; $5f42: $08 $08 $08
	ld   [$0808], sp                                 ; $5f45: $08 $08 $08
	ld   [$0808], sp                                 ; $5f48: $08 $08 $08
	ld   [$0808], sp                                 ; $5f4b: $08 $08 $08
	ld   [$0808], sp                                 ; $5f4e: $08 $08 $08
	ld   [$0808], sp                                 ; $5f51: $08 $08 $08
	ld   [$0808], sp                                 ; $5f54: $08 $08 $08
	ld   [$0808], sp                                 ; $5f57: $08 $08 $08
	ld   [$0808], sp                                 ; $5f5a: $08 $08 $08
	ld   [$0808], sp                                 ; $5f5d: $08 $08 $08
	ld   [$0808], sp                                 ; $5f60: $08 $08 $08
	ld   [$0808], sp                                 ; $5f63: $08 $08 $08
	ld   [$0808], sp                                 ; $5f66: $08 $08 $08
	ld   [$0808], sp                                 ; $5f69: $08 $08 $08
	ld   [$0808], sp                                 ; $5f6c: $08 $08 $08
	ld   [$0808], sp                                 ; $5f6f: $08 $08 $08
	ld   [$0808], sp                                 ; $5f72: $08 $08 $08
	ld   [$0808], sp                                 ; $5f75: $08 $08 $08
	ld   [$0808], sp                                 ; $5f78: $08 $08 $08
	ld   [$0808], sp                                 ; $5f7b: $08 $08 $08
	ld   [$0808], sp                                 ; $5f7e: $08 $08 $08
	ld   [$0808], sp                                 ; $5f81: $08 $08 $08
	ld   [$0808], sp                                 ; $5f84: $08 $08 $08
	ld   [$0808], sp                                 ; $5f87: $08 $08 $08
	ld   [$0808], sp                                 ; $5f8a: $08 $08 $08
	ld   [$0808], sp                                 ; $5f8d: $08 $08 $08
	ld   [$0808], sp                                 ; $5f90: $08 $08 $08
	ld   [$0808], sp                                 ; $5f93: $08 $08 $08
	ld   [$0808], sp                                 ; $5f96: $08 $08 $08
	ld   [$0808], sp                                 ; $5f99: $08 $08 $08
	ld   [$0808], sp                                 ; $5f9c: $08 $08 $08
	ld   [$0808], sp                                 ; $5f9f: $08 $08 $08
	ld   [$0808], sp                                 ; $5fa2: $08 $08 $08
	ld   [$0808], sp                                 ; $5fa5: $08 $08 $08
	ld   [$0808], sp                                 ; $5fa8: $08 $08 $08
	ld   [$0808], sp                                 ; $5fab: $08 $08 $08
	ld   [$0808], sp                                 ; $5fae: $08 $08 $08
	ld   [$0808], sp                                 ; $5fb1: $08 $08 $08
	ld   [$0808], sp                                 ; $5fb4: $08 $08 $08
	ld   [$0808], sp                                 ; $5fb7: $08 $08 $08
	ld   [$0808], sp                                 ; $5fba: $08 $08 $08
	ld   [$0808], sp                                 ; $5fbd: $08 $08 $08
	ld   [$0808], sp                                 ; $5fc0: $08 $08 $08
	ld   [$0808], sp                                 ; $5fc3: $08 $08 $08
	ld   [$0808], sp                                 ; $5fc6: $08 $08 $08
	ld   [$0808], sp                                 ; $5fc9: $08 $08 $08
	ld   [$0808], sp                                 ; $5fcc: $08 $08 $08
	ld   [$0808], sp                                 ; $5fcf: $08 $08 $08
	ld   [$0808], sp                                 ; $5fd2: $08 $08 $08
	ld   [$0808], sp                                 ; $5fd5: $08 $08 $08
	ld   [$0808], sp                                 ; $5fd8: $08 $08 $08
	ld   [$0808], sp                                 ; $5fdb: $08 $08 $08
	ld   [$0808], sp                                 ; $5fde: $08 $08 $08
	ld   [$0808], sp                                 ; $5fe1: $08 $08 $08
	ld   [$0808], sp                                 ; $5fe4: $08 $08 $08
	ld   [$0808], sp                                 ; $5fe7: $08 $08 $08
	ld   [$0808], sp                                 ; $5fea: $08 $08 $08
	ld   [$0808], sp                                 ; $5fed: $08 $08 $08
	ld   [$0808], sp                                 ; $5ff0: $08 $08 $08
	ld   [$0808], sp                                 ; $5ff3: $08 $08 $08
	ld   [$0808], sp                                 ; $5ff6: $08 $08 $08
	ld   [$0808], sp                                 ; $5ff9: $08 $08 $08
	ld   [$0808], sp                                 ; $5ffc: $08 $08 $08
	ld   [rRAMG], sp                                 ; $5fff: $08 $00 $00
	rra                                              ; $6002: $1f
	ld   bc, $7fff                                   ; $6003: $01 $ff $7f
	ld   b, d                                        ; $6006: $42
	ld   [$7fff], sp                                 ; $6007: $08 $ff $7f
	ld   e, a                                        ; $600a: $5f
	ld   c, $ed                                      ; $600b: $0e $ed
	stop                                             ; $600d: $10 $00
	nop                                              ; $600f: $00
	ld   a, c                                        ; $6010: $79
	ld   bc, $03db                                   ; $6011: $01 $db $03
	rst  $38                                         ; $6014: $ff
	ld   a, a                                        ; $6015: $7f
	ld   b, d                                        ; $6016: $42
	ld   [$009f], sp                                 ; $6017: $08 $9f $00
	ld   a, [bc]                                     ; $601a: $0a
	ld   hl, $0422                                   ; $601b: $21 $22 $04
	add  hl, sp                                      ; $601e: $39
	ld   h, a                                        ; $601f: $67
	sbc  h                                           ; $6020: $9c
	ld   [de], a                                     ; $6021: $12
	ld   a, [bc]                                     ; $6022: $0a
	ld   hl, $0422                                   ; $6023: $21 $22 $04
	add  hl, sp                                      ; $6026: $39
	ld   h, a                                        ; $6027: $67
	ldh  a, [c]                                      ; $6028: $f2
	ld   c, c                                        ; $6029: $49
	ld   a, [bc]                                     ; $602a: $0a
	ld   hl, $0422                                   ; $602b: $21 $22 $04
	add  hl, sp                                      ; $602e: $39
	ld   h, a                                        ; $602f: $67
	sub  l                                           ; $6030: $95
	dec  l                                           ; $6031: $2d
	ld   a, [bc]                                     ; $6032: $0a
	ld   hl, $0422                                   ; $6033: $21 $22 $04
	add  hl, sp                                      ; $6036: $39
	ld   h, a                                        ; $6037: $67
	nop                                              ; $6038: $00
	nop                                              ; $6039: $00
	nop                                              ; $603a: $00
	nop                                              ; $603b: $00
	nop                                              ; $603c: $00
	nop                                              ; $603d: $00
	nop                                              ; $603e: $00
	nop                                              ; $603f: $00
	ldh  [$03], a                                    ; $6040: $e0 $03
	dec  [hl]                                        ; $6042: $35
	ld   a, h                                        ; $6043: $7c
	ld   b, e                                        ; $6044: $43
	inc  d                                           ; $6045: $14
	cp   d                                           ; $6046: $ba
	ld   l, [hl]                                     ; $6047: $6e
	ldh  [$03], a                                    ; $6048: $e0 $03
	nop                                              ; $604a: $00
	ld   b, e                                        ; $604b: $43
	ld   b, e                                        ; $604c: $43
	inc  d                                           ; $604d: $14
	jp   c, $e057                                    ; $604e: $da $57 $e0

	inc  bc                                          ; $6051: $03
	rst  $38                                         ; $6052: $ff
	ld   a, a                                        ; $6053: $7f
	ld   a, a                                        ; $6054: $7f
	nop                                              ; $6055: $00
	rra                                              ; $6056: $1f
	inc  bc                                          ; $6057: $03
	db   $e4                                         ; $6058: $e4
	inc  bc                                          ; $6059: $03
	rra                                              ; $605a: $1f
	ld   bc, $7fff                                   ; $605b: $01 $ff $7f
	ld   b, d                                        ; $605e: $42
	ld   [$03e4], sp                                 ; $605f: $08 $e4 $03
	ld   a, [hl-]                                    ; $6062: $3a
	ld   [bc], a                                     ; $6063: $02
	add  l                                           ; $6064: $85
	nop                                              ; $6065: $00
	rst  $38                                         ; $6066: $ff
	ld   l, e                                        ; $6067: $6b
	db   $e4                                         ; $6068: $e4
	inc  bc                                          ; $6069: $03
	rst  $38                                         ; $606a: $ff
	ld   [bc], a                                     ; $606b: $02
	sbc  a                                           ; $606c: $9f
	ld   bc, $001a                                   ; $606d: $01 $1a $00
	db   $e4                                         ; $6070: $e4
	inc  bc                                          ; $6071: $03
	nop                                              ; $6072: $00
	nop                                              ; $6073: $00
	ld   a, a                                        ; $6074: $7f
	inc  hl                                          ; $6075: $23
	nop                                              ; $6076: $00
	ld   d, b                                        ; $6077: $50
	nop                                              ; $6078: $00
	nop                                              ; $6079: $00
	rst  $38                                         ; $607a: $ff
	inc  bc                                          ; $607b: $03
	rst  $38                                         ; $607c: $ff
	ld   a, a                                        ; $607d: $7f
	db   $10                                         ; $607e: $10
	ld   a, l                                        ; $607f: $7d
	cp   h                                           ; $6080: $bc
	ld   bc, $0fff                                   ; $6081: $01 $ff $0f
	rst  $38                                         ; $6084: $ff
	ld   a, a                                        ; $6085: $7f
	ld   hl, $ff04                                   ; $6086: $21 $04 $ff
	ld   a, a                                        ; $6089: $7f
	ld   b, d                                        ; $608a: $42
	ld   [$4631], sp                                 ; $608b: $08 $31 $46
	ld   sp, $1046                                   ; $608e: $31 $46 $10
	ld   b, d                                        ; $6091: $42
	rlca                                             ; $6092: $07
	add  hl, sp                                      ; $6093: $39
	rlca                                             ; $6094: $07
	add  hl, sp                                      ; $6095: $39
	rlca                                             ; $6096: $07
	add  hl, sp                                      ; $6097: $39
	pop  af                                          ; $6098: $f1
	add  hl, sp                                      ; $6099: $39
	ld   hl, $e804                                   ; $609a: $21 $04 $e8
	inc  e                                           ; $609d: $1c
	ld   c, e                                        ; $609e: $4b
	ld   hl, $7fff                                   ; $609f: $21 $ff $7f
	inc  b                                           ; $60a2: $04
	ld   [$2e9f], sp                                 ; $60a3: $08 $9f $2e
	dec  de                                          ; $60a6: $1b
	nop                                              ; $60a7: $00
	ld   c, e                                        ; $60a8: $4b
	ld   hl, $2085                                   ; $60a9: $21 $85 $20
	ld   sp, $843e                                   ; $60ac: $31 $3e $84
	inc  h                                           ; $60af: $24
	add  h                                           ; $60b0: $84
	inc  h                                           ; $60b1: $24
	ld   hl, $f504                                   ; $60b2: $21 $04 $f5
	ld   [$121c], sp                                 ; $60b5: $08 $1c $12
	ld   c, e                                        ; $60b8: $4b
	ld   hl, $7fff                                   ; $60b9: $21 $ff $7f
	ld   e, a                                        ; $60bc: $5f
	ld   h, c                                        ; $60bd: $61
	nop                                              ; $60be: $00
	jr   c, @-$1e                                    ; $60bf: $38 $e0

	inc  bc                                          ; $60c1: $03
	ld   b, d                                        ; $60c2: $42
	ld   [$39ce], sp                                 ; $60c3: $08 $ce $39
	ld   a, d                                        ; $60c6: $7a
	ld   l, a                                        ; $60c7: $6f
	ldh  [$03], a                                    ; $60c8: $e0 $03
	ld   b, d                                        ; $60ca: $42
	ld   [$03ff], sp                                 ; $60cb: $08 $ff $03
	rst  $38                                         ; $60ce: $ff
	inc  bc                                          ; $60cf: $03
	ldh  [$03], a                                    ; $60d0: $e0 $03
	nop                                              ; $60d2: $00
	inc  e                                           ; $60d3: $1c
	ld   [hl], e                                     ; $60d4: $73
	ld   [hl-], a                                    ; $60d5: $32
	rst  $38                                         ; $60d6: $ff
	inc  bc                                          ; $60d7: $03
	xor  a                                           ; $60d8: $af
	dec  [hl]                                        ; $60d9: $35
	ld   b, h                                        ; $60da: $44
	nop                                              ; $60db: $00
	or   $11                                         ; $60dc: $f6 $11
	inc  a                                           ; $60de: $3c
	dec  hl                                          ; $60df: $2b
	db   $e4                                         ; $60e0: $e4
	inc  bc                                          ; $60e1: $03
	ld   b, b                                        ; $60e2: $40
	ld   [bc], a                                     ; $60e3: $02
	rst  $38                                         ; $60e4: $ff
	inc  bc                                          ; $60e5: $03
	ld   c, h                                        ; $60e6: $4c
	jr   nc, @-$1a                                   ; $60e7: $30 $e4

	inc  bc                                          ; $60e9: $03
	rst  $38                                         ; $60ea: $ff
	ld   a, a                                        ; $60eb: $7f
	sbc  a                                           ; $60ec: $9f
	ld   [hl], $83                                   ; $60ed: $36 $83
	inc  d                                           ; $60ef: $14
	ldh  [$03], a                                    ; $60f0: $e0 $03
	ld   h, e                                        ; $60f2: $63
	inc  c                                           ; $60f3: $0c
	adc  h                                           ; $60f4: $8c
	dec  a                                           ; $60f5: $3d
	rst  $38                                         ; $60f6: $ff
	ld   a, a                                        ; $60f7: $7f
	nop                                              ; $60f8: $00
	nop                                              ; $60f9: $00
	nop                                              ; $60fa: $00
	nop                                              ; $60fb: $00
	nop                                              ; $60fc: $00
	nop                                              ; $60fd: $00
	nop                                              ; $60fe: $00
	nop                                              ; $60ff: $00
	nop                                              ; $6100: $00
	nop                                              ; $6101: $00
	rra                                              ; $6102: $1f
	scf                                              ; $6103: $37
	rst  $38                                         ; $6104: $ff
	inc  bc                                          ; $6105: $03
	ld   b, d                                        ; $6106: $42
	jr   nz, jr_02a_6109                             ; $6107: $20 $00

jr_02a_6109:
	nop                                              ; $6109: $00
	rst  $38                                         ; $610a: $ff
	ld   a, a                                        ; $610b: $7f
	ld   b, b                                        ; $610c: $40
	ccf                                              ; $610d: $3f
	ld   b, d                                        ; $610e: $42
	jr   nz, jr_02a_6111                             ; $610f: $20 $00

jr_02a_6111:
	nop                                              ; $6111: $00
	ei                                               ; $6112: $fb
	ld   a, e                                        ; $6113: $7b
	ld   e, l                                        ; $6114: $5d
	ld   bc, $1084                                   ; $6115: $01 $84 $10
	nop                                              ; $6118: $00

jr_02a_6119:
	nop                                              ; $6119: $00
	cp   $7f                                         ; $611a: $fe $7f
	rst  $10                                         ; $611c: $d7
	halt                                             ; $611d: $76
	dec  bc                                          ; $611e: $0b
	add  hl, bc                                      ; $611f: $09
	nop                                              ; $6120: $00
	nop                                              ; $6121: $00
	rst  $38                                         ; $6122: $ff
	ld   a, a                                        ; $6123: $7f
	ld   a, [hl]                                     ; $6124: $7e
	ld   b, $cd                                      ; $6125: $06 $cd
	stop                                             ; $6127: $10 $00
	nop                                              ; $6129: $00
	rst  $38                                         ; $612a: $ff
	ld   a, a                                        ; $612b: $7f
	rst  $38                                         ; $612c: $ff
	inc  bc                                          ; $612d: $03
	ld   [hl], $01                                   ; $612e: $36 $01
	rst  $38                                         ; $6130: $ff
	ld   h, [hl]                                     ; $6131: $66
	cp   a                                           ; $6132: $bf
	ld   l, $ff                                      ; $6133: $2e $ff
	inc  bc                                          ; $6135: $03
	ld   b, d                                        ; $6136: $42
	jr   nz, jr_02a_6119                             ; $6137: $20 $e0

	rla                                              ; $6139: $17
	rra                                              ; $613a: $1f
	nop                                              ; $613b: $00
	inc  c                                           ; $613c: $0c
	ld   b, c                                        ; $613d: $41
	ld   b, d                                        ; $613e: $42
	jr   nz, jr_02a_6160                             ; $613f: $20 $1f

	ld   a, h                                        ; $6141: $7c
	or   h                                           ; $6142: $b4
	ld   a, a                                        ; $6143: $7f
	jp   c, $0b7d                                    ; $6144: $da $7d $0b

	ld   h, h                                        ; $6147: $64
	add  l                                           ; $6148: $85

jr_02a_6149:
	ld   d, b                                        ; $6149: $50
	cp   $7f                                         ; $614a: $fe $7f
	adc  l                                           ; $614c: $8d
	ld   a, a                                        ; $614d: $7f
	ret  nz                                          ; $614e: $c0

	ld   a, h                                        ; $614f: $7c
	nop                                              ; $6150: $00

jr_02a_6151:
	nop                                              ; $6151: $00
	nop                                              ; $6152: $00
	nop                                              ; $6153: $00
	nop                                              ; $6154: $00
	nop                                              ; $6155: $00
	nop                                              ; $6156: $00
	nop                                              ; $6157: $00
	nop                                              ; $6158: $00

jr_02a_6159:
	nop                                              ; $6159: $00
	nop                                              ; $615a: $00
	nop                                              ; $615b: $00
	nop                                              ; $615c: $00
	nop                                              ; $615d: $00
	nop                                              ; $615e: $00
	nop                                              ; $615f: $00

jr_02a_6160:
	ldh  [$03], a                                    ; $6160: $e0 $03
	ccf                                              ; $6162: $3f
	ld   b, e                                        ; $6163: $43
	ei                                               ; $6164: $fb
	inc  e                                           ; $6165: $1c
	ld   b, d                                        ; $6166: $42
	jr   nz, jr_02a_6149                             ; $6167: $20 $e0

	inc  bc                                          ; $6169: $03
	rst  $38                                         ; $616a: $ff
	ld   a, a                                        ; $616b: $7f
	ei                                               ; $616c: $fb
	inc  e                                           ; $616d: $1c
	ld   b, d                                        ; $616e: $42
	jr   nz, jr_02a_6151                             ; $616f: $20 $e0

	inc  bc                                          ; $6171: $03
	ccf                                              ; $6172: $3f
	ld   b, e                                        ; $6173: $43
	rst  $38                                         ; $6174: $ff
	ld   a, a                                        ; $6175: $7f
	ld   b, d                                        ; $6176: $42
	jr   nz, jr_02a_6159                             ; $6177: $20 $e0

	inc  bc                                          ; $6179: $03
	ccf                                              ; $617a: $3f
	ld   l, a                                        ; $617b: $6f
	ccf                                              ; $617c: $3f
	ld   d, c                                        ; $617d: $51
	ld   b, d                                        ; $617e: $42
	jr   nz, @-$1e                                   ; $617f: $20 $e0

	inc  bc                                          ; $6181: $03
	inc  h                                           ; $6182: $24
	add  hl, bc                                      ; $6183: $09
	inc  h                                           ; $6184: $24
	add  hl, bc                                      ; $6185: $09
	rst  $38                                         ; $6186: $ff
	ld   a, a                                        ; $6187: $7f
	ldh  [$03], a                                    ; $6188: $e0 $03
	ld   c, d                                        ; $618a: $4a
	add  hl, hl                                      ; $618b: $29
	or   l                                           ; $618c: $b5
	ld   d, [hl]                                     ; $618d: $56
	rst  $38                                         ; $618e: $ff
	ld   a, a                                        ; $618f: $7f
	sbc  a                                           ; $6190: $9f
	ld   a, b                                        ; $6191: $78
	rra                                              ; $6192: $1f
	scf                                              ; $6193: $37
	sub  d                                           ; $6194: $92
	ld   d, b                                        ; $6195: $50
	ld   b, d                                        ; $6196: $42
	jr   nz, @-$5f                                   ; $6197: $20 $9f

	ld   a, b                                        ; $6199: $78
	rst  $28                                         ; $619a: $ef
	inc  c                                           ; $619b: $0c
	sub  d                                           ; $619c: $92
	ld   d, b                                        ; $619d: $50
	ld   b, d                                        ; $619e: $42
	jr   nz, @-$5f                                   ; $619f: $20 $9f

	ld   a, b                                        ; $61a1: $78
	rst  $28                                         ; $61a2: $ef
	inc  c                                           ; $61a3: $0c
	rra                                              ; $61a4: $1f
	scf                                              ; $61a5: $37
	ld   b, d                                        ; $61a6: $42
	jr   nz, jr_02a_61c8                             ; $61a7: $20 $1f

	ld   a, h                                        ; $61a9: $7c
	rst  JumpTable                                         ; $61aa: $df
	scf                                              ; $61ab: $37
	ei                                               ; $61ac: $fb
	inc  e                                           ; $61ad: $1c
	rst  $38                                         ; $61ae: $ff
	ld   a, a                                        ; $61af: $7f
	sbc  a                                           ; $61b0: $9f
	ld   a, b                                        ; $61b1: $78
	inc  h                                           ; $61b2: $24
	add  hl, bc                                      ; $61b3: $09
	inc  h                                           ; $61b4: $24
	add  hl, bc                                      ; $61b5: $09
	rst  $38                                         ; $61b6: $ff
	ld   a, a                                        ; $61b7: $7f
	sbc  a                                           ; $61b8: $9f
	ld   a, b                                        ; $61b9: $78
	ld   c, d                                        ; $61ba: $4a
	add  hl, hl                                      ; $61bb: $29
	or   l                                           ; $61bc: $b5
	ld   d, [hl]                                     ; $61bd: $56
	rst  $38                                         ; $61be: $ff
	ld   a, a                                        ; $61bf: $7f
	sbc  a                                           ; $61c0: $9f
	ld   a, b                                        ; $61c1: $78
	ccf                                              ; $61c2: $3f
	ld   b, e                                        ; $61c3: $43
	sub  d                                           ; $61c4: $92
	ld   d, b                                        ; $61c5: $50
	inc  b                                           ; $61c6: $04
	add  hl, hl                                      ; $61c7: $29

jr_02a_61c8:
	sbc  a                                           ; $61c8: $9f
	ld   a, b                                        ; $61c9: $78
	cp   c                                           ; $61ca: $b9
	ld   [$5092], sp                                 ; $61cb: $08 $92 $50
	inc  b                                           ; $61ce: $04
	add  hl, hl                                      ; $61cf: $29
	sbc  a                                           ; $61d0: $9f
	ld   a, b                                        ; $61d1: $78
	cp   c                                           ; $61d2: $b9
	ld   [$433f], sp                                 ; $61d3: $08 $3f $43
	inc  b                                           ; $61d6: $04
	add  hl, hl                                      ; $61d7: $29
	sbc  a                                           ; $61d8: $9f
	ld   a, b                                        ; $61d9: $78
	jp   c, Jump_02a_477f                            ; $61da: $da $7f $47

	ld   a, a                                        ; $61dd: $7f
	inc  b                                           ; $61de: $04
	add  hl, hl                                      ; $61df: $29
	sbc  a                                           ; $61e0: $9f
	ld   a, b                                        ; $61e1: $78
	inc  h                                           ; $61e2: $24
	add  hl, bc                                      ; $61e3: $09
	inc  h                                           ; $61e4: $24
	add  hl, bc                                      ; $61e5: $09
	rst  $38                                         ; $61e6: $ff
	ld   a, a                                        ; $61e7: $7f
	nop                                              ; $61e8: $00
	nop                                              ; $61e9: $00
	ld   c, d                                        ; $61ea: $4a
	add  hl, hl                                      ; $61eb: $29
	or   l                                           ; $61ec: $b5
	ld   d, [hl]                                     ; $61ed: $56
	rst  $38                                         ; $61ee: $ff
	ld   a, a                                        ; $61ef: $7f
	rra                                              ; $61f0: $1f
	ld   a, h                                        ; $61f1: $7c
	rst  JumpTable                                         ; $61f2: $df
	ld   h, a                                        ; $61f3: $67
	ei                                               ; $61f4: $fb
	inc  e                                           ; $61f5: $1c
	ld   b, d                                        ; $61f6: $42
	jr   nz, jr_02a_6218                             ; $61f7: $20 $1f

	ld   a, h                                        ; $61f9: $7c
	rst  $38                                         ; $61fa: $ff
	ld   a, a                                        ; $61fb: $7f
	ld   e, e                                        ; $61fc: $5b
	ld   [hl], $42                                   ; $61fd: $36 $42
	jr   nz, jr_02a_6220                             ; $61ff: $20 $1f

	ld   a, h                                        ; $6201: $7c
	ld   e, e                                        ; $6202: $5b
	ld   [hl], $fb                                   ; $6203: $36 $fb
	inc  e                                           ; $6205: $1c
	ld   b, d                                        ; $6206: $42
	jr   nz, jr_02a_6228                             ; $6207: $20 $1f

	ld   a, h                                        ; $6209: $7c
	rst  JumpTable                                         ; $620a: $df
	scf                                              ; $620b: $37
	ei                                               ; $620c: $fb
	inc  e                                           ; $620d: $1c
	rst  $38                                         ; $620e: $ff
	ld   a, a                                        ; $620f: $7f
	rra                                              ; $6210: $1f
	ld   a, h                                        ; $6211: $7c
	inc  h                                           ; $6212: $24
	add  hl, bc                                      ; $6213: $09
	inc  h                                           ; $6214: $24
	add  hl, bc                                      ; $6215: $09
	rst  $38                                         ; $6216: $ff
	ld   a, a                                        ; $6217: $7f

jr_02a_6218:
	rra                                              ; $6218: $1f
	ld   a, h                                        ; $6219: $7c
	ld   c, d                                        ; $621a: $4a
	add  hl, hl                                      ; $621b: $29
	or   l                                           ; $621c: $b5
	ld   d, [hl]                                     ; $621d: $56
	rst  $38                                         ; $621e: $ff
	ld   a, a                                        ; $621f: $7f

jr_02a_6220:
	rst  $30                                         ; $6220: $f7
	ld   a, a                                        ; $6221: $7f
	rst  $38                                         ; $6222: $ff
	ld   a, a                                        ; $6223: $7f
	sbc  a                                           ; $6224: $9f
	ld   [hl], $44                                   ; $6225: $36 $44
	nop                                              ; $6227: $00

jr_02a_6228:
	rst  $38                                         ; $6228: $ff
	ld   e, a                                        ; $6229: $5f
	rst  $38                                         ; $622a: $ff
	ld   a, a                                        ; $622b: $7f
	db   $dd                                         ; $622c: $dd
	ld   e, $62                                      ; $622d: $1e $62
	inc  e                                           ; $622f: $1c
	ld   e, a                                        ; $6230: $5f
	ld   l, e                                        ; $6231: $6b
	sub  l                                           ; $6232: $95
	ld   bc, $1811                                   ; $6233: $01 $11 $18
	ld   b, h                                        ; $6236: $44
	nop                                              ; $6237: $00
	ld   a, l                                        ; $6238: $7d
	ld   a, [hl]                                     ; $6239: $7e
	nop                                              ; $623a: $00
	dec  de                                          ; $623b: $1b
	ld   h, b                                        ; $623c: $60
	ld   bc, $7fff                                   ; $623d: $01 $ff $7f
	rst  $30                                         ; $6240: $f7
	ld   a, a                                        ; $6241: $7f
	rst  $38                                         ; $6242: $ff
	ld   a, a                                        ; $6243: $7f
	db   $dd                                         ; $6244: $dd
	ld   e, $62                                      ; $6245: $1e $62
	inc  e                                           ; $6247: $1c
	rst  $38                                         ; $6248: $ff
	ld   e, a                                        ; $6249: $5f
	rst  $38                                         ; $624a: $ff
	ld   a, a                                        ; $624b: $7f
	sbc  a                                           ; $624c: $9f
	ld   [hl], $83                                   ; $624d: $36 $83
	inc  d                                           ; $624f: $14
	rst  $38                                         ; $6250: $ff
	ld   a, a                                        ; $6251: $7f
	or   $7f                                         ; $6252: $f6 $7f
	sbc  a                                           ; $6254: $9f
	inc  h                                           ; $6255: $24
	add  e                                           ; $6256: $83
	inc  d                                           ; $6257: $14
	nop                                              ; $6258: $00
	nop                                              ; $6259: $00
	nop                                              ; $625a: $00
	nop                                              ; $625b: $00
	nop                                              ; $625c: $00
	nop                                              ; $625d: $00
	nop                                              ; $625e: $00
	nop                                              ; $625f: $00
	xor  $7f                                         ; $6260: $ee $7f
	rst  $38                                         ; $6262: $ff
	ld   a, a                                        ; $6263: $7f
	sbc  a                                           ; $6264: $9f
	ld   [hl], $83                                   ; $6265: $36 $83
	inc  d                                           ; $6267: $14
	xor  $7f                                         ; $6268: $ee $7f
	rst  $38                                         ; $626a: $ff
	ld   a, a                                        ; $626b: $7f
	db   $dd                                         ; $626c: $dd
	ld   e, $62                                      ; $626d: $1e $62
	inc  e                                           ; $626f: $1c
	xor  $7f                                         ; $6270: $ee $7f
	rst  JumpTable                                         ; $6272: $df
	jr   jr_02a_6284                                 ; $6273: $18 $0f

	dec  b                                           ; $6275: $05
	sub  d                                           ; $6276: $92
	dec  l                                           ; $6277: $2d
	nop                                              ; $6278: $00
	nop                                              ; $6279: $00
	nop                                              ; $627a: $00
	nop                                              ; $627b: $00
	nop                                              ; $627c: $00
	nop                                              ; $627d: $00
	nop                                              ; $627e: $00
	nop                                              ; $627f: $00
	ldh  [$7f], a                                    ; $6280: $e0 $7f
	rst  $38                                         ; $6282: $ff
	ld   a, a                                        ; $6283: $7f

jr_02a_6284:
	db   $dd                                         ; $6284: $dd
	ld   e, $62                                      ; $6285: $1e $62
	inc  e                                           ; $6287: $1c
	ldh  [$7f], a                                    ; $6288: $e0 $7f
	rst  $38                                         ; $628a: $ff
	ld   a, a                                        ; $628b: $7f
	sbc  a                                           ; $628c: $9f
	ld   [hl], $83                                   ; $628d: $36 $83
	inc  d                                           ; $628f: $14
	ldh  [$7f], a                                    ; $6290: $e0 $7f
	sub  l                                           ; $6292: $95
	ld   bc, $00ec                                   ; $6293: $01 $ec $00
	ld   a, [de]                                     ; $6296: $1a
	nop                                              ; $6297: $00
	nop                                              ; $6298: $00
	nop                                              ; $6299: $00
	nop                                              ; $629a: $00
	nop                                              ; $629b: $00
	nop                                              ; $629c: $00
	nop                                              ; $629d: $00
	nop                                              ; $629e: $00
	nop                                              ; $629f: $00
	rst  $30                                         ; $62a0: $f7
	ld   a, a                                        ; $62a1: $7f
	rst  $38                                         ; $62a2: $ff
	ld   a, a                                        ; $62a3: $7f
	db   $dd                                         ; $62a4: $dd
	ld   e, $62                                      ; $62a5: $1e $62
	inc  e                                           ; $62a7: $1c
	rst  $38                                         ; $62a8: $ff
	ld   e, a                                        ; $62a9: $5f
	rst  $38                                         ; $62aa: $ff
	ld   a, a                                        ; $62ab: $7f
	sbc  a                                           ; $62ac: $9f
	ld   [hl], $83                                   ; $62ad: $36 $83
	inc  d                                           ; $62af: $14
	ld   e, a                                        ; $62b0: $5f
	ld   l, e                                        ; $62b1: $6b
	rst  $38                                         ; $62b2: $ff
	ld   a, a                                        ; $62b3: $7f
	sub  l                                           ; $62b4: $95
	ld   bc, $1811                                   ; $62b5: $01 $11 $18
	nop                                              ; $62b8: $00
	nop                                              ; $62b9: $00
	nop                                              ; $62ba: $00
	nop                                              ; $62bb: $00
	nop                                              ; $62bc: $00
	nop                                              ; $62bd: $00
	nop                                              ; $62be: $00
	nop                                              ; $62bf: $00
	rst  $30                                         ; $62c0: $f7
	ld   a, a                                        ; $62c1: $7f
	rst  $38                                         ; $62c2: $ff
	ld   a, a                                        ; $62c3: $7f
	db   $dd                                         ; $62c4: $dd
	ld   e, $62                                      ; $62c5: $1e $62
	inc  e                                           ; $62c7: $1c
	rst  $38                                         ; $62c8: $ff
	ld   e, a                                        ; $62c9: $5f
	rst  $38                                         ; $62ca: $ff
	ld   a, a                                        ; $62cb: $7f
	sbc  a                                           ; $62cc: $9f
	ld   [hl], $83                                   ; $62cd: $36 $83
	inc  d                                           ; $62cf: $14
	ld   e, a                                        ; $62d0: $5f
	ld   l, e                                        ; $62d1: $6b
	sub  l                                           ; $62d2: $95
	ld   bc, $1811                                   ; $62d3: $01 $11 $18
	ld   b, h                                        ; $62d6: $44
	nop                                              ; $62d7: $00
	ld   a, l                                        ; $62d8: $7d
	ld   a, [hl]                                     ; $62d9: $7e
	ldh  [rSC], a                                    ; $62da: $e0 $02
	ld   h, b                                        ; $62dc: $60
	ld   bc, $341b                                   ; $62dd: $01 $1b $34
