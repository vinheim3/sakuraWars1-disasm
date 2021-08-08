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
	ld   b, [hl]                                     ; $4800: $46
	ld   b, a                                        ; $4801: $47
	ld   c, b                                        ; $4802: $48
	rra                                              ; $4803: $1f
	inc  a                                           ; $4804: $3c
	dec  a                                           ; $4805: $3d
	ld   a, $3f                                      ; $4806: $3e $3f
	dec  a                                           ; $4808: $3d
	ld   a, $3f                                      ; $4809: $3e $3f
	nop                                              ; $480b: $00
	ld   a, $3f                                      ; $480c: $3e $3f
	nop                                              ; $480e: $00
	nop                                              ; $480f: $00
	ccf                                              ; $4810: $3f
	nop                                              ; $4811: $00
	nop                                              ; $4812: $00
	nop                                              ; $4813: $00
	nop                                              ; $4814: $00
	nop                                              ; $4815: $00
	nop                                              ; $4816: $00
	nop                                              ; $4817: $00
	jr   nc, jr_02a_484b                             ; $4818: $30 $31

	ld   [hl-], a                                    ; $481a: $32
	inc  sp                                          ; $481b: $33
	inc  [hl]                                        ; $481c: $34
	dec  [hl]                                        ; $481d: $35
	add  b                                           ; $481e: $80
	add  b                                           ; $481f: $80
	ld   c, c                                        ; $4820: $49
	ld   c, d                                        ; $4821: $4a
	ld   c, e                                        ; $4822: $4b
	cpl                                              ; $4823: $2f
	ld   c, h                                        ; $4824: $4c
	ld   c, l                                        ; $4825: $4d
	ld   c, [hl]                                     ; $4826: $4e
	ld   c, a                                        ; $4827: $4f
	ld   c, l                                        ; $4828: $4d
	ld   c, [hl]                                     ; $4829: $4e
	ld   c, a                                        ; $482a: $4f
	nop                                              ; $482b: $00
	ld   c, [hl]                                     ; $482c: $4e
	ld   c, a                                        ; $482d: $4f
	nop                                              ; $482e: $00
	nop                                              ; $482f: $00
	ld   c, a                                        ; $4830: $4f
	nop                                              ; $4831: $00
	nop                                              ; $4832: $00
	nop                                              ; $4833: $00
	nop                                              ; $4834: $00
	nop                                              ; $4835: $00
	nop                                              ; $4836: $00
	nop                                              ; $4837: $00
	jr   nz, @+$23                                   ; $4838: $20 $21

	ld   [hl+], a                                    ; $483a: $22
	inc  hl                                          ; $483b: $23
	inc  h                                           ; $483c: $24
	dec  h                                           ; $483d: $25
	add  b                                           ; $483e: $80
	add  b                                           ; $483f: $80
	ld   b, b                                        ; $4840: $40
	ld   b, c                                        ; $4841: $41
	ld   b, c                                        ; $4842: $41
	ld   b, b                                        ; $4843: $40
	ld   b, b                                        ; $4844: $40
	ld   b, c                                        ; $4845: $41
	ld   b, c                                        ; $4846: $41
	ld   b, b                                        ; $4847: $40
	ld   b, c                                        ; $4848: $41
	ld   b, c                                        ; $4849: $41
	ld   b, b                                        ; $484a: $40

jr_02a_484b:
	ld   e, c                                        ; $484b: $59
	ld   b, c                                        ; $484c: $41
	ld   b, b                                        ; $484d: $40
	ld   e, c                                        ; $484e: $59
	ld   e, c                                        ; $484f: $59
	ld   b, b                                        ; $4850: $40
	ld   e, c                                        ; $4851: $59
	ld   e, c                                        ; $4852: $59
	ld   e, c                                        ; $4853: $59
	ld   e, c                                        ; $4854: $59
	ld   e, c                                        ; $4855: $59
	ld   e, c                                        ; $4856: $59
	ld   e, c                                        ; $4857: $59
	db   $10                                         ; $4858: $10
	ld   de, $1312                                   ; $4859: $11 $12 $13
	inc  d                                           ; $485c: $14
	dec  d                                           ; $485d: $15
	add  b                                           ; $485e: $80
	add  b                                           ; $485f: $80
	ld   b, d                                        ; $4860: $42
	ld   d, b                                        ; $4861: $50
	ld   d, c                                        ; $4862: $51
	ld   b, d                                        ; $4863: $42
	ld   b, d                                        ; $4864: $42
	ld   d, b                                        ; $4865: $50
	ld   d, c                                        ; $4866: $51
	ld   b, d                                        ; $4867: $42
	ld   d, b                                        ; $4868: $50
	ld   d, c                                        ; $4869: $51
	ld   b, d                                        ; $486a: $42
	ld   e, b                                        ; $486b: $58
	ld   d, c                                        ; $486c: $51
	ld   b, d                                        ; $486d: $42
	ld   d, a                                        ; $486e: $57
	ld   e, b                                        ; $486f: $58
	ld   b, d                                        ; $4870: $42
	ld   e, b                                        ; $4871: $58
	ld   d, a                                        ; $4872: $57
	ld   e, b                                        ; $4873: $58
	ld   d, a                                        ; $4874: $57
	ld   e, b                                        ; $4875: $58
	ld   d, a                                        ; $4876: $57
	ld   e, b                                        ; $4877: $58
	dec  sp                                          ; $4878: $3b
	ld   a, [hl-]                                    ; $4879: $3a
	add  hl, sp                                      ; $487a: $39
	jr   c, jr_02a_48b4                              ; $487b: $38 $37

	ld   [hl], $80                                   ; $487d: $36 $80
	add  b                                           ; $487f: $80
	ld   b, h                                        ; $4880: $44
	ld   h, b                                        ; $4881: $60
	ld   h, c                                        ; $4882: $61
	ld   b, h                                        ; $4883: $44
	ld   b, h                                        ; $4884: $44
	ld   h, b                                        ; $4885: $60
	ld   h, c                                        ; $4886: $61
	ld   b, h                                        ; $4887: $44
	ld   h, b                                        ; $4888: $60
	ld   h, c                                        ; $4889: $61
	ld   b, h                                        ; $488a: $44
	ld   l, b                                        ; $488b: $68
	ld   h, c                                        ; $488c: $61
	ld   b, h                                        ; $488d: $44
	ld   h, a                                        ; $488e: $67
	ld   l, b                                        ; $488f: $68
	ld   b, h                                        ; $4890: $44
	ld   l, b                                        ; $4891: $68
	ld   h, a                                        ; $4892: $67
	ld   l, b                                        ; $4893: $68
	ld   h, a                                        ; $4894: $67
	ld   l, b                                        ; $4895: $68
	ld   h, a                                        ; $4896: $67
	ld   l, b                                        ; $4897: $68
	dec  hl                                          ; $4898: $2b
	ld   a, [hl+]                                    ; $4899: $2a
	add  hl, hl                                      ; $489a: $29
	jr   z, jr_02a_48c4                              ; $489b: $28 $27

	ld   h, $80                                      ; $489d: $26 $80
	add  b                                           ; $489f: $80
	ld   b, d                                        ; $48a0: $42
	ld   b, l                                        ; $48a1: $45
	ld   b, l                                        ; $48a2: $45
	ld   b, d                                        ; $48a3: $42
	ld   b, d                                        ; $48a4: $42
	ld   b, l                                        ; $48a5: $45
	ld   b, l                                        ; $48a6: $45
	ld   b, d                                        ; $48a7: $42
	ld   b, l                                        ; $48a8: $45
	ld   b, l                                        ; $48a9: $45
	ld   b, d                                        ; $48aa: $42
	ld   e, b                                        ; $48ab: $58
	ld   b, l                                        ; $48ac: $45
	ld   b, d                                        ; $48ad: $42
	ld   d, a                                        ; $48ae: $57
	ld   e, b                                        ; $48af: $58
	ld   b, d                                        ; $48b0: $42
	ld   e, b                                        ; $48b1: $58
	ld   d, a                                        ; $48b2: $57
	ld   e, b                                        ; $48b3: $58

jr_02a_48b4:
	ld   d, a                                        ; $48b4: $57
	ld   e, b                                        ; $48b5: $58
	ld   d, a                                        ; $48b6: $57
	ld   e, b                                        ; $48b7: $58
	dec  de                                          ; $48b8: $1b
	ld   a, [de]                                     ; $48b9: $1a
	add  hl, de                                      ; $48ba: $19
	jr   jr_02a_48d4                                 ; $48bb: $18 $17

	ld   d, $80                                      ; $48bd: $16 $80
	add  b                                           ; $48bf: $80
	ld   b, d                                        ; $48c0: $42
	ld   b, l                                        ; $48c1: $45
	ld   b, l                                        ; $48c2: $45
	ld   b, d                                        ; $48c3: $42

jr_02a_48c4:
	ld   b, d                                        ; $48c4: $42
	ld   b, l                                        ; $48c5: $45
	ld   b, l                                        ; $48c6: $45
	ld   b, d                                        ; $48c7: $42
	ld   b, l                                        ; $48c8: $45
	ld   b, l                                        ; $48c9: $45
	ld   b, d                                        ; $48ca: $42
	ld   l, b                                        ; $48cb: $68
	ld   b, l                                        ; $48cc: $45
	ld   b, d                                        ; $48cd: $42
	ld   h, a                                        ; $48ce: $67
	ld   l, b                                        ; $48cf: $68
	ld   b, d                                        ; $48d0: $42
	ld   l, b                                        ; $48d1: $68
	ld   h, a                                        ; $48d2: $67
	ld   l, b                                        ; $48d3: $68

jr_02a_48d4:
	ld   h, a                                        ; $48d4: $67
	ld   l, b                                        ; $48d5: $68
	ld   h, a                                        ; $48d6: $67
	ld   l, b                                        ; $48d7: $68
	ld   [hl], $37                                   ; $48d8: $36 $37
	jr   c, jr_02a_4915                              ; $48da: $38 $39

	ld   a, [hl-]                                    ; $48dc: $3a
	dec  sp                                          ; $48dd: $3b
	add  b                                           ; $48de: $80
	add  b                                           ; $48df: $80
	ld   b, d                                        ; $48e0: $42
	ld   b, l                                        ; $48e1: $45
	ld   b, l                                        ; $48e2: $45
	ld   b, d                                        ; $48e3: $42
	ld   b, d                                        ; $48e4: $42
	ld   b, l                                        ; $48e5: $45
	ld   b, l                                        ; $48e6: $45
	ld   b, d                                        ; $48e7: $42
	ld   b, l                                        ; $48e8: $45
	ld   b, l                                        ; $48e9: $45
	ld   b, d                                        ; $48ea: $42
	ld   e, b                                        ; $48eb: $58
	ld   b, l                                        ; $48ec: $45
	ld   b, d                                        ; $48ed: $42
	ld   d, a                                        ; $48ee: $57
	ld   e, b                                        ; $48ef: $58
	ld   b, d                                        ; $48f0: $42
	ld   e, b                                        ; $48f1: $58
	ld   d, a                                        ; $48f2: $57
	ld   e, b                                        ; $48f3: $58
	ld   d, a                                        ; $48f4: $57
	ld   e, b                                        ; $48f5: $58
	ld   d, a                                        ; $48f6: $57
	ld   e, b                                        ; $48f7: $58
	ld   h, $27                                      ; $48f8: $26 $27
	jr   z, jr_02a_4925                              ; $48fa: $28 $29

	ld   a, [hl+]                                    ; $48fc: $2a
	dec  hl                                          ; $48fd: $2b
	add  b                                           ; $48fe: $80
	add  b                                           ; $48ff: $80
	ld   b, d                                        ; $4900: $42
	ld   b, l                                        ; $4901: $45
	ld   b, l                                        ; $4902: $45
	ld   b, d                                        ; $4903: $42
	ld   b, d                                        ; $4904: $42
	ld   b, l                                        ; $4905: $45
	ld   b, l                                        ; $4906: $45
	ld   b, d                                        ; $4907: $42
	ld   b, l                                        ; $4908: $45
	ld   b, l                                        ; $4909: $45
	ld   b, d                                        ; $490a: $42
	ld   l, b                                        ; $490b: $68
	ld   b, l                                        ; $490c: $45
	ld   b, d                                        ; $490d: $42
	ld   h, a                                        ; $490e: $67
	ld   l, b                                        ; $490f: $68
	ld   b, d                                        ; $4910: $42
	ld   l, b                                        ; $4911: $68
	ld   h, a                                        ; $4912: $67
	ld   l, b                                        ; $4913: $68
	ld   h, a                                        ; $4914: $67

jr_02a_4915:
	ld   l, b                                        ; $4915: $68
	ld   h, a                                        ; $4916: $67
	ld   l, b                                        ; $4917: $68
	ld   d, $17                                      ; $4918: $16 $17
	jr   jr_02a_4935                                 ; $491a: $18 $19

	ld   a, [de]                                     ; $491c: $1a
	dec  de                                          ; $491d: $1b
	add  b                                           ; $491e: $80
	add  b                                           ; $491f: $80
	ld   b, b                                        ; $4920: $40
	ld   b, c                                        ; $4921: $41
	ld   b, c                                        ; $4922: $41
	ld   b, b                                        ; $4923: $40
	ld   b, b                                        ; $4924: $40

jr_02a_4925:
	ld   b, c                                        ; $4925: $41
	ld   b, c                                        ; $4926: $41
	ld   b, b                                        ; $4927: $40
	ld   b, c                                        ; $4928: $41
	ld   b, c                                        ; $4929: $41
	ld   b, b                                        ; $492a: $40
	ld   e, c                                        ; $492b: $59
	ld   b, c                                        ; $492c: $41
	ld   b, b                                        ; $492d: $40
	ld   e, c                                        ; $492e: $59
	ld   e, c                                        ; $492f: $59
	ld   b, b                                        ; $4930: $40
	ld   e, c                                        ; $4931: $59
	ld   e, c                                        ; $4932: $59
	ld   e, c                                        ; $4933: $59
	ld   e, c                                        ; $4934: $59

jr_02a_4935:
	ld   e, c                                        ; $4935: $59
	ld   e, c                                        ; $4936: $59
	ld   e, c                                        ; $4937: $59
	db   $10                                         ; $4938: $10
	ld   de, $1312                                   ; $4939: $11 $12 $13
	inc  d                                           ; $493c: $14
	dec  d                                           ; $493d: $15
	add  b                                           ; $493e: $80
	add  b                                           ; $493f: $80
	ld   c, c                                        ; $4940: $49
	ld   c, d                                        ; $4941: $4a
	ld   c, e                                        ; $4942: $4b
	cpl                                              ; $4943: $2f
	ld   c, h                                        ; $4944: $4c
	ld   c, l                                        ; $4945: $4d
	ld   c, [hl]                                     ; $4946: $4e
	ld   c, a                                        ; $4947: $4f
	ld   c, l                                        ; $4948: $4d
	ld   c, [hl]                                     ; $4949: $4e
	ld   c, a                                        ; $494a: $4f
	nop                                              ; $494b: $00
	ld   c, [hl]                                     ; $494c: $4e
	ld   c, a                                        ; $494d: $4f
	nop                                              ; $494e: $00
	nop                                              ; $494f: $00
	ld   c, a                                        ; $4950: $4f
	nop                                              ; $4951: $00
	nop                                              ; $4952: $00
	nop                                              ; $4953: $00
	nop                                              ; $4954: $00
	nop                                              ; $4955: $00
	nop                                              ; $4956: $00
	nop                                              ; $4957: $00
	jr   nz, jr_02a_497b                             ; $4958: $20 $21

	ld   [hl+], a                                    ; $495a: $22
	inc  hl                                          ; $495b: $23
	inc  h                                           ; $495c: $24
	dec  h                                           ; $495d: $25
	add  b                                           ; $495e: $80
	add  b                                           ; $495f: $80
	ld   b, [hl]                                     ; $4960: $46
	ld   b, a                                        ; $4961: $47
	ld   c, b                                        ; $4962: $48
	rra                                              ; $4963: $1f
	inc  a                                           ; $4964: $3c
	dec  a                                           ; $4965: $3d
	ld   a, $3f                                      ; $4966: $3e $3f
	dec  a                                           ; $4968: $3d
	ld   a, $3f                                      ; $4969: $3e $3f
	nop                                              ; $496b: $00
	ld   a, $3f                                      ; $496c: $3e $3f
	nop                                              ; $496e: $00
	nop                                              ; $496f: $00
	ccf                                              ; $4970: $3f
	nop                                              ; $4971: $00
	nop                                              ; $4972: $00
	nop                                              ; $4973: $00
	nop                                              ; $4974: $00
	nop                                              ; $4975: $00
	nop                                              ; $4976: $00
	nop                                              ; $4977: $00
	jr   nc, jr_02a_49ab                             ; $4978: $30 $31

	ld   [hl-], a                                    ; $497a: $32

jr_02a_497b:
	inc  sp                                          ; $497b: $33
	inc  [hl]                                        ; $497c: $34
	dec  [hl]                                        ; $497d: $35
	add  b                                           ; $497e: $80
	add  b                                           ; $497f: $80
	rra                                              ; $4980: $1f
	ld   c, b                                        ; $4981: $48
	ld   b, a                                        ; $4982: $47
	ld   b, [hl]                                     ; $4983: $46
	ccf                                              ; $4984: $3f
	ld   a, $3d                                      ; $4985: $3e $3d
	inc  a                                           ; $4987: $3c
	nop                                              ; $4988: $00
	ccf                                              ; $4989: $3f
	ld   a, $3d                                      ; $498a: $3e $3d
	nop                                              ; $498c: $00
	nop                                              ; $498d: $00
	ccf                                              ; $498e: $3f
	ld   a, $00                                      ; $498f: $3e $00
	nop                                              ; $4991: $00
	nop                                              ; $4992: $00
	ccf                                              ; $4993: $3f
	nop                                              ; $4994: $00
	nop                                              ; $4995: $00
	nop                                              ; $4996: $00
	nop                                              ; $4997: $00
	dec  de                                          ; $4998: $1b
	ld   a, [de]                                     ; $4999: $1a
	add  hl, de                                      ; $499a: $19
	jr   jr_02a_49b4                                 ; $499b: $18 $17

	ld   d, $80                                      ; $499d: $16 $80
	add  b                                           ; $499f: $80
	cpl                                              ; $49a0: $2f
	ld   c, e                                        ; $49a1: $4b
	ld   c, d                                        ; $49a2: $4a
	ld   c, c                                        ; $49a3: $49
	ld   c, a                                        ; $49a4: $4f
	ld   c, [hl]                                     ; $49a5: $4e
	ld   c, l                                        ; $49a6: $4d
	ld   c, h                                        ; $49a7: $4c
	nop                                              ; $49a8: $00
	ld   c, a                                        ; $49a9: $4f
	ld   c, [hl]                                     ; $49aa: $4e

jr_02a_49ab:
	ld   c, l                                        ; $49ab: $4d
	nop                                              ; $49ac: $00
	nop                                              ; $49ad: $00
	ld   c, a                                        ; $49ae: $4f
	ld   c, [hl]                                     ; $49af: $4e
	nop                                              ; $49b0: $00
	nop                                              ; $49b1: $00
	nop                                              ; $49b2: $00
	ld   c, a                                        ; $49b3: $4f

jr_02a_49b4:
	nop                                              ; $49b4: $00
	nop                                              ; $49b5: $00
	nop                                              ; $49b6: $00
	nop                                              ; $49b7: $00
	dec  hl                                          ; $49b8: $2b
	ld   a, [hl+]                                    ; $49b9: $2a
	add  hl, hl                                      ; $49ba: $29
	jr   z, jr_02a_49e4                              ; $49bb: $28 $27

	ld   h, $80                                      ; $49bd: $26 $80
	add  b                                           ; $49bf: $80
	ld   b, b                                        ; $49c0: $40
	ld   b, c                                        ; $49c1: $41
	ld   b, c                                        ; $49c2: $41
	ld   b, b                                        ; $49c3: $40
	ld   b, b                                        ; $49c4: $40
	ld   b, c                                        ; $49c5: $41
	ld   b, c                                        ; $49c6: $41
	ld   b, b                                        ; $49c7: $40
	ld   e, c                                        ; $49c8: $59
	ld   b, b                                        ; $49c9: $40
	ld   b, c                                        ; $49ca: $41
	ld   b, c                                        ; $49cb: $41
	ld   e, c                                        ; $49cc: $59
	ld   e, c                                        ; $49cd: $59
	ld   b, b                                        ; $49ce: $40
	ld   b, c                                        ; $49cf: $41
	ld   e, c                                        ; $49d0: $59
	ld   e, c                                        ; $49d1: $59
	ld   e, c                                        ; $49d2: $59
	ld   b, b                                        ; $49d3: $40
	ld   e, c                                        ; $49d4: $59
	ld   e, c                                        ; $49d5: $59
	ld   e, c                                        ; $49d6: $59
	ld   e, c                                        ; $49d7: $59
	dec  sp                                          ; $49d8: $3b
	ld   a, [hl-]                                    ; $49d9: $3a
	add  hl, sp                                      ; $49da: $39
	jr   c, jr_02a_4a14                              ; $49db: $38 $37

	ld   [hl], $80                                   ; $49dd: $36 $80
	add  b                                           ; $49df: $80
	ld   b, d                                        ; $49e0: $42
	ld   d, d                                        ; $49e1: $52
	ld   d, e                                        ; $49e2: $53
	ld   b, d                                        ; $49e3: $42

jr_02a_49e4:
	ld   b, d                                        ; $49e4: $42
	ld   d, d                                        ; $49e5: $52
	ld   d, e                                        ; $49e6: $53
	ld   b, d                                        ; $49e7: $42
	ld   d, a                                        ; $49e8: $57
	ld   b, d                                        ; $49e9: $42
	ld   d, d                                        ; $49ea: $52
	ld   d, e                                        ; $49eb: $53
	ld   d, a                                        ; $49ec: $57
	ld   e, b                                        ; $49ed: $58
	ld   b, d                                        ; $49ee: $42
	ld   d, d                                        ; $49ef: $52
	ld   d, a                                        ; $49f0: $57
	ld   e, b                                        ; $49f1: $58
	ld   d, a                                        ; $49f2: $57
	ld   b, d                                        ; $49f3: $42
	ld   d, a                                        ; $49f4: $57
	ld   e, b                                        ; $49f5: $58
	ld   d, a                                        ; $49f6: $57
	ld   e, b                                        ; $49f7: $58
	ld   d, $17                                      ; $49f8: $16 $17
	jr   jr_02a_4a15                                 ; $49fa: $18 $19

	ld   a, [de]                                     ; $49fc: $1a
	dec  de                                          ; $49fd: $1b
	add  b                                           ; $49fe: $80
	add  b                                           ; $49ff: $80
	ld   b, h                                        ; $4a00: $44
	ld   h, d                                        ; $4a01: $62
	ld   h, e                                        ; $4a02: $63
	ld   b, h                                        ; $4a03: $44
	ld   b, h                                        ; $4a04: $44
	ld   h, d                                        ; $4a05: $62
	ld   h, e                                        ; $4a06: $63
	ld   b, h                                        ; $4a07: $44
	ld   h, a                                        ; $4a08: $67
	ld   b, h                                        ; $4a09: $44
	ld   h, d                                        ; $4a0a: $62
	ld   h, e                                        ; $4a0b: $63
	ld   h, a                                        ; $4a0c: $67
	ld   l, b                                        ; $4a0d: $68
	ld   b, h                                        ; $4a0e: $44
	ld   h, d                                        ; $4a0f: $62
	ld   h, a                                        ; $4a10: $67
	ld   l, b                                        ; $4a11: $68
	ld   h, a                                        ; $4a12: $67
	ld   b, h                                        ; $4a13: $44

jr_02a_4a14:
	ld   h, a                                        ; $4a14: $67

jr_02a_4a15:
	ld   l, b                                        ; $4a15: $68
	ld   h, a                                        ; $4a16: $67
	ld   l, b                                        ; $4a17: $68
	ld   h, $27                                      ; $4a18: $26 $27
	jr   z, jr_02a_4a45                              ; $4a1a: $28 $29

	ld   a, [hl+]                                    ; $4a1c: $2a
	dec  hl                                          ; $4a1d: $2b
	add  b                                           ; $4a1e: $80
	add  b                                           ; $4a1f: $80
	ld   b, d                                        ; $4a20: $42
	ld   b, l                                        ; $4a21: $45
	ld   b, l                                        ; $4a22: $45
	ld   b, d                                        ; $4a23: $42
	ld   b, d                                        ; $4a24: $42
	ld   b, l                                        ; $4a25: $45
	ld   b, l                                        ; $4a26: $45
	ld   b, d                                        ; $4a27: $42
	ld   d, a                                        ; $4a28: $57
	ld   b, d                                        ; $4a29: $42
	ld   b, l                                        ; $4a2a: $45
	ld   b, l                                        ; $4a2b: $45
	ld   d, a                                        ; $4a2c: $57
	ld   e, b                                        ; $4a2d: $58
	ld   b, d                                        ; $4a2e: $42
	ld   b, l                                        ; $4a2f: $45
	ld   d, a                                        ; $4a30: $57
	ld   e, b                                        ; $4a31: $58
	ld   d, a                                        ; $4a32: $57
	ld   b, d                                        ; $4a33: $42
	ld   d, a                                        ; $4a34: $57
	ld   e, b                                        ; $4a35: $58
	ld   d, a                                        ; $4a36: $57
	ld   e, b                                        ; $4a37: $58
	ld   [hl], $37                                   ; $4a38: $36 $37
	jr   c, jr_02a_4a75                              ; $4a3a: $38 $39

	ld   a, [hl-]                                    ; $4a3c: $3a
	dec  sp                                          ; $4a3d: $3b
	add  b                                           ; $4a3e: $80
	add  b                                           ; $4a3f: $80
	ld   b, d                                        ; $4a40: $42
	ld   b, l                                        ; $4a41: $45
	ld   b, l                                        ; $4a42: $45
	ld   b, d                                        ; $4a43: $42
	ld   b, d                                        ; $4a44: $42

jr_02a_4a45:
	ld   b, l                                        ; $4a45: $45
	ld   b, l                                        ; $4a46: $45
	ld   b, d                                        ; $4a47: $42
	ld   h, a                                        ; $4a48: $67
	ld   b, d                                        ; $4a49: $42
	ld   b, l                                        ; $4a4a: $45
	ld   b, l                                        ; $4a4b: $45
	ld   h, a                                        ; $4a4c: $67
	ld   l, b                                        ; $4a4d: $68
	ld   b, d                                        ; $4a4e: $42
	ld   b, l                                        ; $4a4f: $45
	ld   h, a                                        ; $4a50: $67
	ld   l, b                                        ; $4a51: $68
	ld   h, a                                        ; $4a52: $67
	ld   b, d                                        ; $4a53: $42
	ld   h, a                                        ; $4a54: $67
	ld   l, b                                        ; $4a55: $68
	ld   h, a                                        ; $4a56: $67
	ld   l, b                                        ; $4a57: $68
	add  b                                           ; $4a58: $80
	add  b                                           ; $4a59: $80
	add  b                                           ; $4a5a: $80
	add  b                                           ; $4a5b: $80
	add  b                                           ; $4a5c: $80
	add  b                                           ; $4a5d: $80
	add  b                                           ; $4a5e: $80
	add  b                                           ; $4a5f: $80
	ld   b, d                                        ; $4a60: $42
	ld   b, l                                        ; $4a61: $45
	ld   b, l                                        ; $4a62: $45
	ld   b, d                                        ; $4a63: $42
	ld   b, d                                        ; $4a64: $42
	ld   b, l                                        ; $4a65: $45
	ld   b, l                                        ; $4a66: $45
	ld   b, d                                        ; $4a67: $42
	ld   d, a                                        ; $4a68: $57
	ld   b, d                                        ; $4a69: $42
	ld   b, l                                        ; $4a6a: $45
	ld   b, l                                        ; $4a6b: $45
	ld   d, a                                        ; $4a6c: $57
	ld   e, b                                        ; $4a6d: $58
	ld   b, d                                        ; $4a6e: $42
	ld   b, l                                        ; $4a6f: $45
	ld   d, a                                        ; $4a70: $57
	ld   e, b                                        ; $4a71: $58
	ld   d, a                                        ; $4a72: $57
	ld   b, d                                        ; $4a73: $42
	ld   d, a                                        ; $4a74: $57

jr_02a_4a75:
	ld   e, b                                        ; $4a75: $58
	ld   d, a                                        ; $4a76: $57
	ld   e, b                                        ; $4a77: $58
	add  b                                           ; $4a78: $80
	add  b                                           ; $4a79: $80
	add  b                                           ; $4a7a: $80
	add  b                                           ; $4a7b: $80
	add  b                                           ; $4a7c: $80
	add  b                                           ; $4a7d: $80
	add  b                                           ; $4a7e: $80
	add  b                                           ; $4a7f: $80
	ld   b, d                                        ; $4a80: $42
	ld   b, l                                        ; $4a81: $45
	ld   b, l                                        ; $4a82: $45
	ld   b, d                                        ; $4a83: $42
	ld   b, d                                        ; $4a84: $42
	ld   b, l                                        ; $4a85: $45
	ld   b, l                                        ; $4a86: $45
	ld   b, d                                        ; $4a87: $42
	ld   h, a                                        ; $4a88: $67
	ld   b, d                                        ; $4a89: $42
	ld   b, l                                        ; $4a8a: $45
	ld   b, l                                        ; $4a8b: $45
	ld   h, a                                        ; $4a8c: $67
	ld   l, b                                        ; $4a8d: $68
	ld   b, d                                        ; $4a8e: $42
	ld   b, l                                        ; $4a8f: $45
	ld   h, a                                        ; $4a90: $67
	ld   l, b                                        ; $4a91: $68
	ld   h, a                                        ; $4a92: $67
	ld   b, d                                        ; $4a93: $42
	ld   h, a                                        ; $4a94: $67
	ld   l, b                                        ; $4a95: $68
	ld   h, a                                        ; $4a96: $67
	ld   l, b                                        ; $4a97: $68
	add  b                                           ; $4a98: $80
	add  b                                           ; $4a99: $80
	add  b                                           ; $4a9a: $80
	add  b                                           ; $4a9b: $80
	add  b                                           ; $4a9c: $80
	add  b                                           ; $4a9d: $80
	add  b                                           ; $4a9e: $80
	add  b                                           ; $4a9f: $80
	ld   b, b                                        ; $4aa0: $40
	ld   b, c                                        ; $4aa1: $41
	ld   b, c                                        ; $4aa2: $41
	ld   b, b                                        ; $4aa3: $40
	ld   b, b                                        ; $4aa4: $40
	ld   b, c                                        ; $4aa5: $41
	ld   b, c                                        ; $4aa6: $41
	ld   b, b                                        ; $4aa7: $40
	ld   e, c                                        ; $4aa8: $59
	ld   b, b                                        ; $4aa9: $40
	ld   b, c                                        ; $4aaa: $41
	ld   b, c                                        ; $4aab: $41
	ld   e, c                                        ; $4aac: $59
	ld   e, c                                        ; $4aad: $59
	ld   b, b                                        ; $4aae: $40
	ld   b, c                                        ; $4aaf: $41
	ld   e, c                                        ; $4ab0: $59
	ld   e, c                                        ; $4ab1: $59
	ld   e, c                                        ; $4ab2: $59
	ld   b, b                                        ; $4ab3: $40
	ld   e, c                                        ; $4ab4: $59
	ld   e, c                                        ; $4ab5: $59
	ld   e, c                                        ; $4ab6: $59
	ld   e, c                                        ; $4ab7: $59
	add  b                                           ; $4ab8: $80
	add  b                                           ; $4ab9: $80
	add  b                                           ; $4aba: $80
	add  b                                           ; $4abb: $80
	add  b                                           ; $4abc: $80
	add  b                                           ; $4abd: $80
	add  b                                           ; $4abe: $80
	add  b                                           ; $4abf: $80
	cpl                                              ; $4ac0: $2f
	ld   c, e                                        ; $4ac1: $4b
	ld   c, d                                        ; $4ac2: $4a
	ld   c, c                                        ; $4ac3: $49
	ld   c, a                                        ; $4ac4: $4f
	ld   c, [hl]                                     ; $4ac5: $4e
	ld   c, l                                        ; $4ac6: $4d
	ld   c, h                                        ; $4ac7: $4c
	nop                                              ; $4ac8: $00
	ld   c, a                                        ; $4ac9: $4f
	ld   c, [hl]                                     ; $4aca: $4e
	ld   c, l                                        ; $4acb: $4d
	nop                                              ; $4acc: $00
	nop                                              ; $4acd: $00
	ld   c, a                                        ; $4ace: $4f
	ld   c, [hl]                                     ; $4acf: $4e
	nop                                              ; $4ad0: $00
	nop                                              ; $4ad1: $00
	nop                                              ; $4ad2: $00
	ld   c, a                                        ; $4ad3: $4f
	nop                                              ; $4ad4: $00
	nop                                              ; $4ad5: $00
	nop                                              ; $4ad6: $00
	nop                                              ; $4ad7: $00
	add  b                                           ; $4ad8: $80
	add  b                                           ; $4ad9: $80
	add  b                                           ; $4ada: $80
	add  b                                           ; $4adb: $80
	add  b                                           ; $4adc: $80
	add  b                                           ; $4add: $80
	add  b                                           ; $4ade: $80
	add  b                                           ; $4adf: $80
	rra                                              ; $4ae0: $1f
	ld   c, b                                        ; $4ae1: $48
	ld   b, a                                        ; $4ae2: $47
	ld   b, [hl]                                     ; $4ae3: $46
	ccf                                              ; $4ae4: $3f
	ld   a, $3d                                      ; $4ae5: $3e $3d
	inc  a                                           ; $4ae7: $3c
	nop                                              ; $4ae8: $00
	ccf                                              ; $4ae9: $3f
	ld   a, $3d                                      ; $4aea: $3e $3d
	nop                                              ; $4aec: $00
	nop                                              ; $4aed: $00
	ccf                                              ; $4aee: $3f
	ld   a, $00                                      ; $4aef: $3e $00
	nop                                              ; $4af1: $00
	nop                                              ; $4af2: $00
	ccf                                              ; $4af3: $3f
	nop                                              ; $4af4: $00
	nop                                              ; $4af5: $00
	nop                                              ; $4af6: $00
	nop                                              ; $4af7: $00
	add  b                                           ; $4af8: $80
	add  b                                           ; $4af9: $80
	add  b                                           ; $4afa: $80
	add  b                                           ; $4afb: $80
	add  b                                           ; $4afc: $80
	add  b                                           ; $4afd: $80
	add  b                                           ; $4afe: $80
	add  b                                           ; $4aff: $80
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
	ld   b, $06                                      ; $4c00: $06 $06
	ld   b, $06                                      ; $4c02: $06 $06
	ld   b, $06                                      ; $4c04: $06 $06
	ld   b, $06                                      ; $4c06: $06 $06
	ld   b, $06                                      ; $4c08: $06 $06
	ld   b, $06                                      ; $4c0a: $06 $06
	ld   b, $06                                      ; $4c0c: $06 $06
	ld   b, $06                                      ; $4c0e: $06 $06
	ld   b, $06                                      ; $4c10: $06 $06
	ld   b, $06                                      ; $4c12: $06 $06
	ld   b, $06                                      ; $4c14: $06 $06
	ld   b, $06                                      ; $4c16: $06 $06
	ld   b, e                                        ; $4c18: $43
	ld   b, e                                        ; $4c19: $43
	ld   b, e                                        ; $4c1a: $43
	ld   b, e                                        ; $4c1b: $43
	ld   b, e                                        ; $4c1c: $43
	ld   b, e                                        ; $4c1d: $43
	ld   [$0608], sp                                 ; $4c1e: $08 $08 $06
	ld   b, $06                                      ; $4c21: $06 $06
	ld   b, $06                                      ; $4c23: $06 $06
	ld   b, $06                                      ; $4c25: $06 $06
	ld   b, $06                                      ; $4c27: $06 $06
	ld   b, $06                                      ; $4c29: $06 $06
	ld   b, $06                                      ; $4c2b: $06 $06
	ld   b, $06                                      ; $4c2d: $06 $06
	ld   b, $06                                      ; $4c2f: $06 $06
	ld   b, $06                                      ; $4c31: $06 $06
	ld   b, $06                                      ; $4c33: $06 $06
	ld   b, $06                                      ; $4c35: $06 $06
	ld   b, $43                                      ; $4c37: $06 $43
	ld   b, e                                        ; $4c39: $43
	ld   b, e                                        ; $4c3a: $43
	ld   b, e                                        ; $4c3b: $43
	ld   b, e                                        ; $4c3c: $43
	ld   b, e                                        ; $4c3d: $43
	ld   [$0608], sp                                 ; $4c3e: $08 $08 $06
	ld   b, $06                                      ; $4c41: $06 $06
	ld   h, $06                                      ; $4c43: $26 $06
	ld   b, $06                                      ; $4c45: $06 $06
	ld   h, $06                                      ; $4c47: $26 $06
	ld   b, $26                                      ; $4c49: $06 $26
	dec  b                                           ; $4c4b: $05
	ld   b, $26                                      ; $4c4c: $06 $26
	dec  b                                           ; $4c4e: $05
	dec  b                                           ; $4c4f: $05
	ld   h, $05                                      ; $4c50: $26 $05
	dec  b                                           ; $4c52: $05
	dec  b                                           ; $4c53: $05
	dec  b                                           ; $4c54: $05
	dec  b                                           ; $4c55: $05
	dec  b                                           ; $4c56: $05
	dec  b                                           ; $4c57: $05
	ld   b, e                                        ; $4c58: $43
	ld   b, e                                        ; $4c59: $43
	ld   b, e                                        ; $4c5a: $43
	ld   b, e                                        ; $4c5b: $43
	ld   b, e                                        ; $4c5c: $43
	ld   b, e                                        ; $4c5d: $43
	ld   [$0608], sp                                 ; $4c5e: $08 $08 $06
	nop                                              ; $4c61: $00
	nop                                              ; $4c62: $00
	ld   h, $06                                      ; $4c63: $26 $06
	nop                                              ; $4c65: $00
	nop                                              ; $4c66: $00
	ld   h, $00                                      ; $4c67: $26 $00
	nop                                              ; $4c69: $00
	ld   h, $03                                      ; $4c6a: $26 $03
	nop                                              ; $4c6c: $00
	ld   h, $03                                      ; $4c6d: $26 $03
	inc  bc                                          ; $4c6f: $03
	ld   h, $03                                      ; $4c70: $26 $03
	inc  bc                                          ; $4c72: $03
	inc  bc                                          ; $4c73: $03
	inc  bc                                          ; $4c74: $03
	inc  bc                                          ; $4c75: $03
	inc  bc                                          ; $4c76: $03
	inc  bc                                          ; $4c77: $03
	ld   h, e                                        ; $4c78: $63
	ld   h, e                                        ; $4c79: $63
	ld   h, e                                        ; $4c7a: $63
	ld   h, e                                        ; $4c7b: $63
	ld   h, e                                        ; $4c7c: $63
	ld   h, e                                        ; $4c7d: $63
	ld   [$0608], sp                                 ; $4c7e: $08 $08 $06
	nop                                              ; $4c81: $00
	nop                                              ; $4c82: $00
	ld   h, $06                                      ; $4c83: $26 $06
	nop                                              ; $4c85: $00
	nop                                              ; $4c86: $00
	ld   h, $00                                      ; $4c87: $26 $00
	nop                                              ; $4c89: $00
	ld   h, $03                                      ; $4c8a: $26 $03
	nop                                              ; $4c8c: $00
	ld   h, $03                                      ; $4c8d: $26 $03
	inc  bc                                          ; $4c8f: $03
	ld   h, $03                                      ; $4c90: $26 $03
	inc  bc                                          ; $4c92: $03
	inc  bc                                          ; $4c93: $03
	inc  bc                                          ; $4c94: $03
	inc  bc                                          ; $4c95: $03
	inc  bc                                          ; $4c96: $03
	inc  bc                                          ; $4c97: $03
	ld   h, e                                        ; $4c98: $63
	ld   h, e                                        ; $4c99: $63
	ld   h, e                                        ; $4c9a: $63
	ld   h, e                                        ; $4c9b: $63
	ld   h, e                                        ; $4c9c: $63
	ld   h, e                                        ; $4c9d: $63
	ld   [$0608], sp                                 ; $4c9e: $08 $08 $06
	ld   b, $06                                      ; $4ca1: $06 $06
	ld   h, $06                                      ; $4ca3: $26 $06
	ld   b, $06                                      ; $4ca5: $06 $06
	ld   h, $06                                      ; $4ca7: $26 $06
	ld   b, $26                                      ; $4ca9: $06 $26
	inc  bc                                          ; $4cab: $03
	ld   b, $26                                      ; $4cac: $06 $26
	inc  bc                                          ; $4cae: $03
	inc  bc                                          ; $4caf: $03
	ld   h, $03                                      ; $4cb0: $26 $03
	inc  bc                                          ; $4cb2: $03
	inc  bc                                          ; $4cb3: $03
	inc  bc                                          ; $4cb4: $03
	inc  bc                                          ; $4cb5: $03
	inc  bc                                          ; $4cb6: $03
	inc  bc                                          ; $4cb7: $03
	ld   h, e                                        ; $4cb8: $63
	ld   h, e                                        ; $4cb9: $63
	ld   h, e                                        ; $4cba: $63
	ld   h, e                                        ; $4cbb: $63
	ld   h, e                                        ; $4cbc: $63
	ld   h, e                                        ; $4cbd: $63
	ld   [$0608], sp                                 ; $4cbe: $08 $08 $06
	ld   b, $06                                      ; $4cc1: $06 $06
	ld   h, $06                                      ; $4cc3: $26 $06
	ld   b, $06                                      ; $4cc5: $06 $06
	ld   h, $06                                      ; $4cc7: $26 $06
	ld   b, $26                                      ; $4cc9: $06 $26
	inc  bc                                          ; $4ccb: $03
	ld   b, $26                                      ; $4ccc: $06 $26
	inc  bc                                          ; $4cce: $03
	inc  bc                                          ; $4ccf: $03
	ld   h, $03                                      ; $4cd0: $26 $03
	inc  bc                                          ; $4cd2: $03
	inc  bc                                          ; $4cd3: $03
	inc  bc                                          ; $4cd4: $03
	inc  bc                                          ; $4cd5: $03
	inc  bc                                          ; $4cd6: $03
	inc  bc                                          ; $4cd7: $03
	ld   b, e                                        ; $4cd8: $43
	ld   b, e                                        ; $4cd9: $43
	ld   b, e                                        ; $4cda: $43
	ld   b, e                                        ; $4cdb: $43
	ld   b, e                                        ; $4cdc: $43
	ld   b, e                                        ; $4cdd: $43
	ld   [$0608], sp                                 ; $4cde: $08 $08 $06
	ld   b, $06                                      ; $4ce1: $06 $06
	ld   h, $06                                      ; $4ce3: $26 $06
	ld   b, $06                                      ; $4ce5: $06 $06
	ld   h, $06                                      ; $4ce7: $26 $06
	ld   b, $26                                      ; $4ce9: $06 $26
	inc  bc                                          ; $4ceb: $03
	ld   b, $26                                      ; $4cec: $06 $26
	inc  bc                                          ; $4cee: $03
	inc  bc                                          ; $4cef: $03
	ld   h, $03                                      ; $4cf0: $26 $03
	inc  bc                                          ; $4cf2: $03
	inc  bc                                          ; $4cf3: $03
	inc  bc                                          ; $4cf4: $03
	inc  bc                                          ; $4cf5: $03
	inc  bc                                          ; $4cf6: $03
	inc  bc                                          ; $4cf7: $03
	ld   b, e                                        ; $4cf8: $43
	ld   b, e                                        ; $4cf9: $43
	ld   b, e                                        ; $4cfa: $43
	ld   b, e                                        ; $4cfb: $43
	ld   b, e                                        ; $4cfc: $43
	ld   b, e                                        ; $4cfd: $43
	ld   [$0608], sp                                 ; $4cfe: $08 $08 $06
	ld   b, $06                                      ; $4d01: $06 $06
	ld   h, $06                                      ; $4d03: $26 $06
	ld   b, $06                                      ; $4d05: $06 $06
	ld   h, $06                                      ; $4d07: $26 $06
	ld   b, $26                                      ; $4d09: $06 $26
	inc  bc                                          ; $4d0b: $03
	ld   b, $26                                      ; $4d0c: $06 $26
	inc  bc                                          ; $4d0e: $03
	inc  bc                                          ; $4d0f: $03
	ld   h, $03                                      ; $4d10: $26 $03
	inc  bc                                          ; $4d12: $03
	inc  bc                                          ; $4d13: $03
	inc  bc                                          ; $4d14: $03
	inc  bc                                          ; $4d15: $03
	inc  bc                                          ; $4d16: $03
	inc  bc                                          ; $4d17: $03
	ld   b, e                                        ; $4d18: $43
	ld   b, e                                        ; $4d19: $43
	ld   b, e                                        ; $4d1a: $43
	ld   b, e                                        ; $4d1b: $43
	ld   b, e                                        ; $4d1c: $43
	ld   b, e                                        ; $4d1d: $43
	ld   [$4608], sp                                 ; $4d1e: $08 $08 $46
	ld   b, [hl]                                     ; $4d21: $46
	ld   b, [hl]                                     ; $4d22: $46
	ld   h, [hl]                                     ; $4d23: $66
	ld   b, [hl]                                     ; $4d24: $46
	ld   b, [hl]                                     ; $4d25: $46
	ld   b, [hl]                                     ; $4d26: $46
	ld   h, [hl]                                     ; $4d27: $66
	ld   b, [hl]                                     ; $4d28: $46
	ld   b, [hl]                                     ; $4d29: $46
	ld   h, [hl]                                     ; $4d2a: $66
	dec  b                                           ; $4d2b: $05
	ld   b, [hl]                                     ; $4d2c: $46
	ld   h, [hl]                                     ; $4d2d: $66
	dec  b                                           ; $4d2e: $05
	dec  b                                           ; $4d2f: $05
	ld   h, [hl]                                     ; $4d30: $66
	dec  b                                           ; $4d31: $05
	dec  b                                           ; $4d32: $05
	dec  b                                           ; $4d33: $05
	dec  b                                           ; $4d34: $05
	dec  b                                           ; $4d35: $05
	dec  b                                           ; $4d36: $05
	dec  b                                           ; $4d37: $05
	inc  bc                                          ; $4d38: $03
	inc  bc                                          ; $4d39: $03
	inc  bc                                          ; $4d3a: $03
	inc  bc                                          ; $4d3b: $03
	inc  bc                                          ; $4d3c: $03
	inc  bc                                          ; $4d3d: $03
	ld   [$4608], sp                                 ; $4d3e: $08 $08 $46
	ld   b, [hl]                                     ; $4d41: $46
	ld   b, [hl]                                     ; $4d42: $46
	ld   b, [hl]                                     ; $4d43: $46
	ld   b, [hl]                                     ; $4d44: $46
	ld   b, [hl]                                     ; $4d45: $46
	ld   b, [hl]                                     ; $4d46: $46
	ld   b, [hl]                                     ; $4d47: $46
	ld   b, [hl]                                     ; $4d48: $46
	ld   b, [hl]                                     ; $4d49: $46
	ld   b, [hl]                                     ; $4d4a: $46
	ld   b, [hl]                                     ; $4d4b: $46
	ld   b, [hl]                                     ; $4d4c: $46
	ld   b, [hl]                                     ; $4d4d: $46
	ld   b, [hl]                                     ; $4d4e: $46
	ld   b, [hl]                                     ; $4d4f: $46
	ld   b, [hl]                                     ; $4d50: $46
	ld   b, [hl]                                     ; $4d51: $46
	ld   b, [hl]                                     ; $4d52: $46
	ld   b, [hl]                                     ; $4d53: $46
	ld   b, [hl]                                     ; $4d54: $46
	ld   b, [hl]                                     ; $4d55: $46
	ld   b, [hl]                                     ; $4d56: $46
	ld   b, [hl]                                     ; $4d57: $46
	inc  bc                                          ; $4d58: $03
	inc  bc                                          ; $4d59: $03
	inc  bc                                          ; $4d5a: $03
	inc  bc                                          ; $4d5b: $03
	inc  bc                                          ; $4d5c: $03
	inc  bc                                          ; $4d5d: $03
	ld   [$4608], sp                                 ; $4d5e: $08 $08 $46
	ld   b, [hl]                                     ; $4d61: $46
	ld   b, [hl]                                     ; $4d62: $46
	ld   b, [hl]                                     ; $4d63: $46
	ld   b, [hl]                                     ; $4d64: $46
	ld   b, [hl]                                     ; $4d65: $46
	ld   b, [hl]                                     ; $4d66: $46
	ld   b, [hl]                                     ; $4d67: $46
	ld   b, [hl]                                     ; $4d68: $46
	ld   b, [hl]                                     ; $4d69: $46
	ld   b, [hl]                                     ; $4d6a: $46
	ld   b, [hl]                                     ; $4d6b: $46
	ld   b, [hl]                                     ; $4d6c: $46
	ld   b, [hl]                                     ; $4d6d: $46
	ld   b, [hl]                                     ; $4d6e: $46
	ld   b, [hl]                                     ; $4d6f: $46
	ld   b, [hl]                                     ; $4d70: $46
	ld   b, [hl]                                     ; $4d71: $46
	ld   b, [hl]                                     ; $4d72: $46
	ld   b, [hl]                                     ; $4d73: $46
	ld   b, [hl]                                     ; $4d74: $46
	ld   b, [hl]                                     ; $4d75: $46
	ld   b, [hl]                                     ; $4d76: $46
	ld   b, [hl]                                     ; $4d77: $46
	inc  bc                                          ; $4d78: $03
	inc  bc                                          ; $4d79: $03
	inc  bc                                          ; $4d7a: $03
	inc  bc                                          ; $4d7b: $03
	inc  bc                                          ; $4d7c: $03
	inc  bc                                          ; $4d7d: $03
	ld   [$2608], sp                                 ; $4d7e: $08 $08 $26
	ld   h, $26                                      ; $4d81: $26 $26
	ld   h, $26                                      ; $4d83: $26 $26
	ld   h, $26                                      ; $4d85: $26 $26
	ld   h, $26                                      ; $4d87: $26 $26
	ld   h, $26                                      ; $4d89: $26 $26
	ld   h, $26                                      ; $4d8b: $26 $26
	ld   h, $26                                      ; $4d8d: $26 $26
	ld   h, $26                                      ; $4d8f: $26 $26
	ld   h, $26                                      ; $4d91: $26 $26
	ld   h, $26                                      ; $4d93: $26 $26
	ld   h, $26                                      ; $4d95: $26 $26
	ld   h, $23                                      ; $4d97: $26 $23
	inc  hl                                          ; $4d99: $23
	inc  hl                                          ; $4d9a: $23
	inc  hl                                          ; $4d9b: $23
	inc  hl                                          ; $4d9c: $23
	inc  hl                                          ; $4d9d: $23
	ld   [$2608], sp                                 ; $4d9e: $08 $08 $26
	ld   h, $26                                      ; $4da1: $26 $26
	ld   h, $26                                      ; $4da3: $26 $26
	ld   h, $26                                      ; $4da5: $26 $26
	ld   h, $26                                      ; $4da7: $26 $26
	ld   h, $26                                      ; $4da9: $26 $26
	ld   h, $26                                      ; $4dab: $26 $26
	ld   h, $26                                      ; $4dad: $26 $26
	ld   h, $26                                      ; $4daf: $26 $26
	ld   h, $26                                      ; $4db1: $26 $26
	ld   h, $26                                      ; $4db3: $26 $26
	ld   h, $26                                      ; $4db5: $26 $26
	ld   h, $23                                      ; $4db7: $26 $23
	inc  hl                                          ; $4db9: $23
	inc  hl                                          ; $4dba: $23
	inc  hl                                          ; $4dbb: $23
	inc  hl                                          ; $4dbc: $23
	inc  hl                                          ; $4dbd: $23
	ld   [$0608], sp                                 ; $4dbe: $08 $08 $06
	ld   b, $06                                      ; $4dc1: $06 $06
	ld   h, $06                                      ; $4dc3: $26 $06
	ld   b, $06                                      ; $4dc5: $06 $06
	ld   h, $05                                      ; $4dc7: $26 $05
	ld   b, $06                                      ; $4dc9: $06 $06
	ld   b, $05                                      ; $4dcb: $06 $05
	dec  b                                           ; $4dcd: $05
	ld   b, $06                                      ; $4dce: $06 $06
	dec  b                                           ; $4dd0: $05
	dec  b                                           ; $4dd1: $05
	dec  b                                           ; $4dd2: $05
	ld   b, $05                                      ; $4dd3: $06 $05
	dec  b                                           ; $4dd5: $05
	dec  b                                           ; $4dd6: $05
	dec  b                                           ; $4dd7: $05
	inc  hl                                          ; $4dd8: $23
	inc  hl                                          ; $4dd9: $23
	inc  hl                                          ; $4dda: $23
	inc  hl                                          ; $4ddb: $23
	inc  hl                                          ; $4ddc: $23
	inc  hl                                          ; $4ddd: $23
	ld   [$0608], sp                                 ; $4dde: $08 $08 $06
	nop                                              ; $4de1: $00
	nop                                              ; $4de2: $00
	ld   h, $06                                      ; $4de3: $26 $06
	nop                                              ; $4de5: $00
	nop                                              ; $4de6: $00
	ld   h, $03                                      ; $4de7: $26 $03
	ld   b, $00                                      ; $4de9: $06 $00
	nop                                              ; $4deb: $00
	inc  bc                                          ; $4dec: $03
	inc  bc                                          ; $4ded: $03
	ld   b, $00                                      ; $4dee: $06 $00
	inc  bc                                          ; $4df0: $03
	inc  bc                                          ; $4df1: $03
	inc  bc                                          ; $4df2: $03
	ld   b, $03                                      ; $4df3: $06 $03
	inc  bc                                          ; $4df5: $03
	inc  bc                                          ; $4df6: $03
	inc  bc                                          ; $4df7: $03
	inc  bc                                          ; $4df8: $03
	inc  bc                                          ; $4df9: $03
	inc  bc                                          ; $4dfa: $03
	inc  bc                                          ; $4dfb: $03
	inc  bc                                          ; $4dfc: $03
	inc  bc                                          ; $4dfd: $03
	ld   [$0608], sp                                 ; $4dfe: $08 $08 $06
	nop                                              ; $4e01: $00
	nop                                              ; $4e02: $00
	ld   h, $06                                      ; $4e03: $26 $06
	nop                                              ; $4e05: $00
	nop                                              ; $4e06: $00
	ld   h, $03                                      ; $4e07: $26 $03
	ld   b, $00                                      ; $4e09: $06 $00
	nop                                              ; $4e0b: $00
	inc  bc                                          ; $4e0c: $03
	inc  bc                                          ; $4e0d: $03
	ld   b, $00                                      ; $4e0e: $06 $00
	inc  bc                                          ; $4e10: $03
	inc  bc                                          ; $4e11: $03
	inc  bc                                          ; $4e12: $03
	ld   b, $03                                      ; $4e13: $06 $03
	inc  bc                                          ; $4e15: $03
	inc  bc                                          ; $4e16: $03
	inc  bc                                          ; $4e17: $03
	inc  bc                                          ; $4e18: $03
	inc  bc                                          ; $4e19: $03
	inc  bc                                          ; $4e1a: $03
	inc  bc                                          ; $4e1b: $03
	inc  bc                                          ; $4e1c: $03
	inc  bc                                          ; $4e1d: $03
	ld   [$0608], sp                                 ; $4e1e: $08 $08 $06
	ld   b, $06                                      ; $4e21: $06 $06
	ld   h, $06                                      ; $4e23: $26 $06
	ld   b, $06                                      ; $4e25: $06 $06
	ld   h, $03                                      ; $4e27: $26 $03
	ld   b, $06                                      ; $4e29: $06 $06
	ld   b, $03                                      ; $4e2b: $06 $03
	inc  bc                                          ; $4e2d: $03
	ld   b, $06                                      ; $4e2e: $06 $06
	inc  bc                                          ; $4e30: $03
	inc  bc                                          ; $4e31: $03
	inc  bc                                          ; $4e32: $03
	ld   b, $03                                      ; $4e33: $06 $03
	inc  bc                                          ; $4e35: $03
	inc  bc                                          ; $4e36: $03
	inc  bc                                          ; $4e37: $03
	inc  bc                                          ; $4e38: $03
	inc  bc                                          ; $4e39: $03
	inc  bc                                          ; $4e3a: $03
	inc  bc                                          ; $4e3b: $03
	inc  bc                                          ; $4e3c: $03
	inc  bc                                          ; $4e3d: $03
	ld   [$0608], sp                                 ; $4e3e: $08 $08 $06
	ld   b, $06                                      ; $4e41: $06 $06
	ld   h, $06                                      ; $4e43: $26 $06
	ld   b, $06                                      ; $4e45: $06 $06
	ld   h, $03                                      ; $4e47: $26 $03
	ld   b, $06                                      ; $4e49: $06 $06
	ld   b, $03                                      ; $4e4b: $06 $03
	inc  bc                                          ; $4e4d: $03
	ld   b, $06                                      ; $4e4e: $06 $06
	inc  bc                                          ; $4e50: $03
	inc  bc                                          ; $4e51: $03
	inc  bc                                          ; $4e52: $03
	ld   b, $03                                      ; $4e53: $06 $03
	inc  bc                                          ; $4e55: $03
	inc  bc                                          ; $4e56: $03
	inc  bc                                          ; $4e57: $03
	ld   [$0808], sp                                 ; $4e58: $08 $08 $08
	ld   [$0808], sp                                 ; $4e5b: $08 $08 $08
	ld   [$0608], sp                                 ; $4e5e: $08 $08 $06
	ld   b, $06                                      ; $4e61: $06 $06
	ld   h, $06                                      ; $4e63: $26 $06
	ld   b, $06                                      ; $4e65: $06 $06
	ld   h, $03                                      ; $4e67: $26 $03
	ld   b, $06                                      ; $4e69: $06 $06
	ld   b, $03                                      ; $4e6b: $06 $03
	inc  bc                                          ; $4e6d: $03
	ld   b, $06                                      ; $4e6e: $06 $06
	inc  bc                                          ; $4e70: $03
	inc  bc                                          ; $4e71: $03
	inc  bc                                          ; $4e72: $03
	ld   b, $03                                      ; $4e73: $06 $03
	inc  bc                                          ; $4e75: $03
	inc  bc                                          ; $4e76: $03
	inc  bc                                          ; $4e77: $03
	ld   [$0808], sp                                 ; $4e78: $08 $08 $08
	ld   [$0808], sp                                 ; $4e7b: $08 $08 $08
	ld   [$0608], sp                                 ; $4e7e: $08 $08 $06
	ld   b, $06                                      ; $4e81: $06 $06
	ld   h, $06                                      ; $4e83: $26 $06
	ld   b, $06                                      ; $4e85: $06 $06
	ld   h, $03                                      ; $4e87: $26 $03
	ld   b, $06                                      ; $4e89: $06 $06
	ld   b, $03                                      ; $4e8b: $06 $03
	inc  bc                                          ; $4e8d: $03
	ld   b, $06                                      ; $4e8e: $06 $06
	inc  bc                                          ; $4e90: $03
	inc  bc                                          ; $4e91: $03
	inc  bc                                          ; $4e92: $03
	ld   b, $03                                      ; $4e93: $06 $03
	inc  bc                                          ; $4e95: $03
	inc  bc                                          ; $4e96: $03
	inc  bc                                          ; $4e97: $03
	ld   [$0808], sp                                 ; $4e98: $08 $08 $08
	ld   [$0808], sp                                 ; $4e9b: $08 $08 $08
	ld   [$4608], sp                                 ; $4e9e: $08 $08 $46
	ld   b, [hl]                                     ; $4ea1: $46
	ld   b, [hl]                                     ; $4ea2: $46
	ld   h, [hl]                                     ; $4ea3: $66
	ld   b, [hl]                                     ; $4ea4: $46
	ld   b, [hl]                                     ; $4ea5: $46
	ld   b, [hl]                                     ; $4ea6: $46
	ld   h, [hl]                                     ; $4ea7: $66
	dec  b                                           ; $4ea8: $05
	ld   b, [hl]                                     ; $4ea9: $46
	ld   b, [hl]                                     ; $4eaa: $46
	ld   b, [hl]                                     ; $4eab: $46
	dec  b                                           ; $4eac: $05
	dec  b                                           ; $4ead: $05
	ld   b, [hl]                                     ; $4eae: $46
	ld   b, [hl]                                     ; $4eaf: $46
	dec  b                                           ; $4eb0: $05
	dec  b                                           ; $4eb1: $05
	dec  b                                           ; $4eb2: $05
	ld   b, [hl]                                     ; $4eb3: $46
	dec  b                                           ; $4eb4: $05
	dec  b                                           ; $4eb5: $05
	dec  b                                           ; $4eb6: $05
	dec  b                                           ; $4eb7: $05
	ld   [$0808], sp                                 ; $4eb8: $08 $08 $08
	ld   [$0808], sp                                 ; $4ebb: $08 $08 $08
	ld   [$6608], sp                                 ; $4ebe: $08 $08 $66
	ld   h, [hl]                                     ; $4ec1: $66
	ld   h, [hl]                                     ; $4ec2: $66
	ld   h, [hl]                                     ; $4ec3: $66
	ld   h, [hl]                                     ; $4ec4: $66
	ld   h, [hl]                                     ; $4ec5: $66
	ld   h, [hl]                                     ; $4ec6: $66
	ld   h, [hl]                                     ; $4ec7: $66
	ld   h, [hl]                                     ; $4ec8: $66
	ld   h, [hl]                                     ; $4ec9: $66
	ld   h, [hl]                                     ; $4eca: $66
	ld   h, [hl]                                     ; $4ecb: $66
	ld   h, [hl]                                     ; $4ecc: $66
	ld   h, [hl]                                     ; $4ecd: $66
	ld   h, [hl]                                     ; $4ece: $66
	ld   h, [hl]                                     ; $4ecf: $66
	ld   h, [hl]                                     ; $4ed0: $66
	ld   h, [hl]                                     ; $4ed1: $66
	ld   h, [hl]                                     ; $4ed2: $66
	ld   h, [hl]                                     ; $4ed3: $66
	ld   h, [hl]                                     ; $4ed4: $66
	ld   h, [hl]                                     ; $4ed5: $66
	ld   h, [hl]                                     ; $4ed6: $66
	ld   h, [hl]                                     ; $4ed7: $66
	ld   [$0808], sp                                 ; $4ed8: $08 $08 $08
	ld   [$0808], sp                                 ; $4edb: $08 $08 $08
	ld   [$6608], sp                                 ; $4ede: $08 $08 $66
	ld   h, [hl]                                     ; $4ee1: $66
	ld   h, [hl]                                     ; $4ee2: $66
	ld   h, [hl]                                     ; $4ee3: $66
	ld   h, [hl]                                     ; $4ee4: $66
	ld   h, [hl]                                     ; $4ee5: $66
	ld   h, [hl]                                     ; $4ee6: $66
	ld   h, [hl]                                     ; $4ee7: $66
	ld   h, [hl]                                     ; $4ee8: $66
	ld   h, [hl]                                     ; $4ee9: $66
	ld   h, [hl]                                     ; $4eea: $66
	ld   h, [hl]                                     ; $4eeb: $66
	ld   h, [hl]                                     ; $4eec: $66
	ld   h, [hl]                                     ; $4eed: $66
	ld   h, [hl]                                     ; $4eee: $66
	ld   h, [hl]                                     ; $4eef: $66
	ld   h, [hl]                                     ; $4ef0: $66
	ld   h, [hl]                                     ; $4ef1: $66
	ld   h, [hl]                                     ; $4ef2: $66
	ld   h, [hl]                                     ; $4ef3: $66
	ld   h, [hl]                                     ; $4ef4: $66
	ld   h, [hl]                                     ; $4ef5: $66
	ld   h, [hl]                                     ; $4ef6: $66
	ld   h, [hl]                                     ; $4ef7: $66
	ld   [$0808], sp                                 ; $4ef8: $08 $08 $08
	ld   [$0808], sp                                 ; $4efb: $08 $08 $08
	ld   [$0808], sp                                 ; $4efe: $08 $08 $08
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
	nop                                              ; $62e0: $00
	nop                                              ; $62e1: $00
	nop                                              ; $62e2: $00
	nop                                              ; $62e3: $00
	nop                                              ; $62e4: $00
	nop                                              ; $62e5: $00
	nop                                              ; $62e6: $00
	nop                                              ; $62e7: $00
	nop                                              ; $62e8: $00
	nop                                              ; $62e9: $00
	nop                                              ; $62ea: $00
	nop                                              ; $62eb: $00
	nop                                              ; $62ec: $00
	nop                                              ; $62ed: $00
	nop                                              ; $62ee: $00
	nop                                              ; $62ef: $00
	nop                                              ; $62f0: $00
	nop                                              ; $62f1: $00
	nop                                              ; $62f2: $00
	nop                                              ; $62f3: $00
	nop                                              ; $62f4: $00
	nop                                              ; $62f5: $00
	nop                                              ; $62f6: $00
	nop                                              ; $62f7: $00
	nop                                              ; $62f8: $00
	nop                                              ; $62f9: $00
	nop                                              ; $62fa: $00
	nop                                              ; $62fb: $00
	nop                                              ; $62fc: $00
	nop                                              ; $62fd: $00
	nop                                              ; $62fe: $00
	nop                                              ; $62ff: $00
	nop                                              ; $6300: $00
	nop                                              ; $6301: $00
	nop                                              ; $6302: $00
	nop                                              ; $6303: $00
	nop                                              ; $6304: $00
	nop                                              ; $6305: $00
	nop                                              ; $6306: $00
	nop                                              ; $6307: $00
	nop                                              ; $6308: $00
	nop                                              ; $6309: $00
	nop                                              ; $630a: $00
	nop                                              ; $630b: $00
	nop                                              ; $630c: $00
	nop                                              ; $630d: $00
	nop                                              ; $630e: $00
	nop                                              ; $630f: $00
	nop                                              ; $6310: $00
	nop                                              ; $6311: $00
	nop                                              ; $6312: $00
	nop                                              ; $6313: $00
	nop                                              ; $6314: $00
	nop                                              ; $6315: $00
	nop                                              ; $6316: $00
	nop                                              ; $6317: $00
	nop                                              ; $6318: $00
	nop                                              ; $6319: $00
	nop                                              ; $631a: $00
	nop                                              ; $631b: $00
	nop                                              ; $631c: $00
	nop                                              ; $631d: $00
	nop                                              ; $631e: $00
	nop                                              ; $631f: $00
	nop                                              ; $6320: $00
	nop                                              ; $6321: $00
	nop                                              ; $6322: $00
	nop                                              ; $6323: $00
	nop                                              ; $6324: $00
	nop                                              ; $6325: $00
	nop                                              ; $6326: $00
	nop                                              ; $6327: $00
	nop                                              ; $6328: $00
	nop                                              ; $6329: $00
	nop                                              ; $632a: $00
	nop                                              ; $632b: $00
	nop                                              ; $632c: $00
	nop                                              ; $632d: $00
	nop                                              ; $632e: $00
	nop                                              ; $632f: $00
	nop                                              ; $6330: $00
	nop                                              ; $6331: $00
	nop                                              ; $6332: $00
	nop                                              ; $6333: $00
	nop                                              ; $6334: $00
	nop                                              ; $6335: $00
	nop                                              ; $6336: $00
	nop                                              ; $6337: $00
	nop                                              ; $6338: $00
	nop                                              ; $6339: $00
	nop                                              ; $633a: $00
	nop                                              ; $633b: $00
	nop                                              ; $633c: $00
	nop                                              ; $633d: $00
	nop                                              ; $633e: $00
	nop                                              ; $633f: $00
	nop                                              ; $6340: $00
	nop                                              ; $6341: $00
	nop                                              ; $6342: $00
	nop                                              ; $6343: $00
	nop                                              ; $6344: $00
	nop                                              ; $6345: $00
	nop                                              ; $6346: $00
	nop                                              ; $6347: $00
	nop                                              ; $6348: $00
	nop                                              ; $6349: $00
	nop                                              ; $634a: $00
	nop                                              ; $634b: $00
	nop                                              ; $634c: $00
	nop                                              ; $634d: $00
	nop                                              ; $634e: $00
	nop                                              ; $634f: $00
	nop                                              ; $6350: $00
	nop                                              ; $6351: $00
	nop                                              ; $6352: $00
	nop                                              ; $6353: $00
	nop                                              ; $6354: $00
	nop                                              ; $6355: $00
	nop                                              ; $6356: $00
	nop                                              ; $6357: $00
	nop                                              ; $6358: $00
	nop                                              ; $6359: $00
	nop                                              ; $635a: $00
	nop                                              ; $635b: $00
	nop                                              ; $635c: $00
	nop                                              ; $635d: $00
	nop                                              ; $635e: $00
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
	nop                                              ; $6369: $00
	nop                                              ; $636a: $00
	nop                                              ; $636b: $00
	nop                                              ; $636c: $00
	nop                                              ; $636d: $00
	nop                                              ; $636e: $00
	nop                                              ; $636f: $00
	nop                                              ; $6370: $00
	nop                                              ; $6371: $00
	nop                                              ; $6372: $00
	nop                                              ; $6373: $00
	nop                                              ; $6374: $00
	nop                                              ; $6375: $00
	nop                                              ; $6376: $00
	nop                                              ; $6377: $00
	nop                                              ; $6378: $00
	nop                                              ; $6379: $00
	nop                                              ; $637a: $00
	nop                                              ; $637b: $00
	nop                                              ; $637c: $00
	nop                                              ; $637d: $00
	nop                                              ; $637e: $00
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
	nop                                              ; $6405: $00
	nop                                              ; $6406: $00
	nop                                              ; $6407: $00
	nop                                              ; $6408: $00
	nop                                              ; $6409: $00
	nop                                              ; $640a: $00
	nop                                              ; $640b: $00
	nop                                              ; $640c: $00
	nop                                              ; $640d: $00
	nop                                              ; $640e: $00
	nop                                              ; $640f: $00
	nop                                              ; $6410: $00
	nop                                              ; $6411: $00
	nop                                              ; $6412: $00
	nop                                              ; $6413: $00
	nop                                              ; $6414: $00
	nop                                              ; $6415: $00
	nop                                              ; $6416: $00
	nop                                              ; $6417: $00
	nop                                              ; $6418: $00
	nop                                              ; $6419: $00
	nop                                              ; $641a: $00
	nop                                              ; $641b: $00
	nop                                              ; $641c: $00
	nop                                              ; $641d: $00
	nop                                              ; $641e: $00
	nop                                              ; $641f: $00
	nop                                              ; $6420: $00
	nop                                              ; $6421: $00
	nop                                              ; $6422: $00
	nop                                              ; $6423: $00
	nop                                              ; $6424: $00
	nop                                              ; $6425: $00
	nop                                              ; $6426: $00
	nop                                              ; $6427: $00
	nop                                              ; $6428: $00
	nop                                              ; $6429: $00
	nop                                              ; $642a: $00
	nop                                              ; $642b: $00
	nop                                              ; $642c: $00
	nop                                              ; $642d: $00
	nop                                              ; $642e: $00
	nop                                              ; $642f: $00
	nop                                              ; $6430: $00
	nop                                              ; $6431: $00
	nop                                              ; $6432: $00
	nop                                              ; $6433: $00
	nop                                              ; $6434: $00
	nop                                              ; $6435: $00
	nop                                              ; $6436: $00
	nop                                              ; $6437: $00
	nop                                              ; $6438: $00
	nop                                              ; $6439: $00
	nop                                              ; $643a: $00
	nop                                              ; $643b: $00
	nop                                              ; $643c: $00
	nop                                              ; $643d: $00
	nop                                              ; $643e: $00
	nop                                              ; $643f: $00
	nop                                              ; $6440: $00
	nop                                              ; $6441: $00
	nop                                              ; $6442: $00
	nop                                              ; $6443: $00
	nop                                              ; $6444: $00
	nop                                              ; $6445: $00
	nop                                              ; $6446: $00
	nop                                              ; $6447: $00
	nop                                              ; $6448: $00
	nop                                              ; $6449: $00
	nop                                              ; $644a: $00
	nop                                              ; $644b: $00
	nop                                              ; $644c: $00
	nop                                              ; $644d: $00
	nop                                              ; $644e: $00
	nop                                              ; $644f: $00
	nop                                              ; $6450: $00
	nop                                              ; $6451: $00
	nop                                              ; $6452: $00
	nop                                              ; $6453: $00
	nop                                              ; $6454: $00
	nop                                              ; $6455: $00
	nop                                              ; $6456: $00
	nop                                              ; $6457: $00
	nop                                              ; $6458: $00
	nop                                              ; $6459: $00
	nop                                              ; $645a: $00
	nop                                              ; $645b: $00
	nop                                              ; $645c: $00
	nop                                              ; $645d: $00
	nop                                              ; $645e: $00
	nop                                              ; $645f: $00
	nop                                              ; $6460: $00
	nop                                              ; $6461: $00
	nop                                              ; $6462: $00
	nop                                              ; $6463: $00
	nop                                              ; $6464: $00
	nop                                              ; $6465: $00
	nop                                              ; $6466: $00
	nop                                              ; $6467: $00
	nop                                              ; $6468: $00
	nop                                              ; $6469: $00
	nop                                              ; $646a: $00
	nop                                              ; $646b: $00
	nop                                              ; $646c: $00
	nop                                              ; $646d: $00
	nop                                              ; $646e: $00
	nop                                              ; $646f: $00
	nop                                              ; $6470: $00
	nop                                              ; $6471: $00
	nop                                              ; $6472: $00
	nop                                              ; $6473: $00
	nop                                              ; $6474: $00
	nop                                              ; $6475: $00
	nop                                              ; $6476: $00
	nop                                              ; $6477: $00
	nop                                              ; $6478: $00
	nop                                              ; $6479: $00
	nop                                              ; $647a: $00
	nop                                              ; $647b: $00
	nop                                              ; $647c: $00
	nop                                              ; $647d: $00
	nop                                              ; $647e: $00
	nop                                              ; $647f: $00
	nop                                              ; $6480: $00
	nop                                              ; $6481: $00
	nop                                              ; $6482: $00
	nop                                              ; $6483: $00
	nop                                              ; $6484: $00
	nop                                              ; $6485: $00
	nop                                              ; $6486: $00
	nop                                              ; $6487: $00
	nop                                              ; $6488: $00
	nop                                              ; $6489: $00
	nop                                              ; $648a: $00
	nop                                              ; $648b: $00
	nop                                              ; $648c: $00
	nop                                              ; $648d: $00
	nop                                              ; $648e: $00
	nop                                              ; $648f: $00
	nop                                              ; $6490: $00
	nop                                              ; $6491: $00
	nop                                              ; $6492: $00
	nop                                              ; $6493: $00
	nop                                              ; $6494: $00
	nop                                              ; $6495: $00
	nop                                              ; $6496: $00
	nop                                              ; $6497: $00
	nop                                              ; $6498: $00
	nop                                              ; $6499: $00
	nop                                              ; $649a: $00
	nop                                              ; $649b: $00
	nop                                              ; $649c: $00
	nop                                              ; $649d: $00
	nop                                              ; $649e: $00
	nop                                              ; $649f: $00
	nop                                              ; $64a0: $00
	nop                                              ; $64a1: $00
	nop                                              ; $64a2: $00
	nop                                              ; $64a3: $00
	nop                                              ; $64a4: $00
	nop                                              ; $64a5: $00
	nop                                              ; $64a6: $00
	nop                                              ; $64a7: $00
	nop                                              ; $64a8: $00
	nop                                              ; $64a9: $00
	nop                                              ; $64aa: $00
	nop                                              ; $64ab: $00
	nop                                              ; $64ac: $00
	nop                                              ; $64ad: $00
	nop                                              ; $64ae: $00
	nop                                              ; $64af: $00
	nop                                              ; $64b0: $00
	nop                                              ; $64b1: $00
	nop                                              ; $64b2: $00
	nop                                              ; $64b3: $00
	nop                                              ; $64b4: $00
	nop                                              ; $64b5: $00
	nop                                              ; $64b6: $00
	nop                                              ; $64b7: $00
	nop                                              ; $64b8: $00
	nop                                              ; $64b9: $00
	nop                                              ; $64ba: $00
	nop                                              ; $64bb: $00
	nop                                              ; $64bc: $00
	nop                                              ; $64bd: $00
	nop                                              ; $64be: $00
	nop                                              ; $64bf: $00
	nop                                              ; $64c0: $00
	nop                                              ; $64c1: $00
	nop                                              ; $64c2: $00
	nop                                              ; $64c3: $00
	nop                                              ; $64c4: $00
	nop                                              ; $64c5: $00
	nop                                              ; $64c6: $00
	nop                                              ; $64c7: $00
	nop                                              ; $64c8: $00
	nop                                              ; $64c9: $00
	nop                                              ; $64ca: $00
	nop                                              ; $64cb: $00
	nop                                              ; $64cc: $00
	nop                                              ; $64cd: $00
	nop                                              ; $64ce: $00
	nop                                              ; $64cf: $00
	nop                                              ; $64d0: $00
	nop                                              ; $64d1: $00
	nop                                              ; $64d2: $00
	nop                                              ; $64d3: $00
	nop                                              ; $64d4: $00
	nop                                              ; $64d5: $00
	nop                                              ; $64d6: $00
	nop                                              ; $64d7: $00
	nop                                              ; $64d8: $00
	nop                                              ; $64d9: $00
	nop                                              ; $64da: $00
	nop                                              ; $64db: $00
	nop                                              ; $64dc: $00
	nop                                              ; $64dd: $00
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
	nop                                              ; $64e9: $00
	nop                                              ; $64ea: $00
	nop                                              ; $64eb: $00
	nop                                              ; $64ec: $00
	nop                                              ; $64ed: $00
	nop                                              ; $64ee: $00
	nop                                              ; $64ef: $00
	nop                                              ; $64f0: $00
	nop                                              ; $64f1: $00
	nop                                              ; $64f2: $00
	nop                                              ; $64f3: $00
	nop                                              ; $64f4: $00
	nop                                              ; $64f5: $00
	nop                                              ; $64f6: $00
	nop                                              ; $64f7: $00
	nop                                              ; $64f8: $00
	nop                                              ; $64f9: $00
	nop                                              ; $64fa: $00
	nop                                              ; $64fb: $00
	nop                                              ; $64fc: $00
	nop                                              ; $64fd: $00
	nop                                              ; $64fe: $00
	nop                                              ; $64ff: $00
	nop                                              ; $6500: $00
	nop                                              ; $6501: $00
	nop                                              ; $6502: $00
	nop                                              ; $6503: $00
	nop                                              ; $6504: $00
	nop                                              ; $6505: $00
	nop                                              ; $6506: $00
	nop                                              ; $6507: $00
	nop                                              ; $6508: $00
	nop                                              ; $6509: $00
	nop                                              ; $650a: $00
	nop                                              ; $650b: $00
	nop                                              ; $650c: $00
	nop                                              ; $650d: $00
	nop                                              ; $650e: $00
	nop                                              ; $650f: $00
	nop                                              ; $6510: $00
	nop                                              ; $6511: $00
	nop                                              ; $6512: $00
	nop                                              ; $6513: $00
	nop                                              ; $6514: $00
	nop                                              ; $6515: $00
	nop                                              ; $6516: $00
	nop                                              ; $6517: $00
	nop                                              ; $6518: $00
	nop                                              ; $6519: $00
	nop                                              ; $651a: $00
	nop                                              ; $651b: $00
	nop                                              ; $651c: $00
	nop                                              ; $651d: $00
	nop                                              ; $651e: $00
	nop                                              ; $651f: $00
	nop                                              ; $6520: $00
	nop                                              ; $6521: $00
	nop                                              ; $6522: $00
	nop                                              ; $6523: $00
	nop                                              ; $6524: $00
	nop                                              ; $6525: $00
	nop                                              ; $6526: $00
	nop                                              ; $6527: $00
	nop                                              ; $6528: $00
	nop                                              ; $6529: $00
	nop                                              ; $652a: $00
	nop                                              ; $652b: $00
	nop                                              ; $652c: $00
	nop                                              ; $652d: $00
	nop                                              ; $652e: $00
	nop                                              ; $652f: $00
	nop                                              ; $6530: $00
	nop                                              ; $6531: $00
	nop                                              ; $6532: $00
	nop                                              ; $6533: $00
	nop                                              ; $6534: $00
	nop                                              ; $6535: $00
	nop                                              ; $6536: $00
	nop                                              ; $6537: $00
	nop                                              ; $6538: $00
	nop                                              ; $6539: $00
	nop                                              ; $653a: $00
	nop                                              ; $653b: $00
	nop                                              ; $653c: $00
	nop                                              ; $653d: $00
	nop                                              ; $653e: $00
	nop                                              ; $653f: $00
	nop                                              ; $6540: $00
	nop                                              ; $6541: $00
	nop                                              ; $6542: $00
	nop                                              ; $6543: $00
	nop                                              ; $6544: $00
	nop                                              ; $6545: $00
	nop                                              ; $6546: $00
	nop                                              ; $6547: $00
	nop                                              ; $6548: $00
	nop                                              ; $6549: $00
	nop                                              ; $654a: $00
	nop                                              ; $654b: $00
	nop                                              ; $654c: $00
	nop                                              ; $654d: $00
	nop                                              ; $654e: $00
	nop                                              ; $654f: $00
	nop                                              ; $6550: $00
	nop                                              ; $6551: $00
	nop                                              ; $6552: $00
	nop                                              ; $6553: $00
	nop                                              ; $6554: $00
	nop                                              ; $6555: $00
	nop                                              ; $6556: $00
	nop                                              ; $6557: $00
	nop                                              ; $6558: $00
	nop                                              ; $6559: $00
	nop                                              ; $655a: $00
	nop                                              ; $655b: $00
	nop                                              ; $655c: $00
	nop                                              ; $655d: $00
	nop                                              ; $655e: $00
	nop                                              ; $655f: $00
	nop                                              ; $6560: $00
	nop                                              ; $6561: $00
	nop                                              ; $6562: $00
	nop                                              ; $6563: $00
	nop                                              ; $6564: $00
	nop                                              ; $6565: $00
	nop                                              ; $6566: $00
	nop                                              ; $6567: $00
	nop                                              ; $6568: $00
	nop                                              ; $6569: $00
	nop                                              ; $656a: $00
	nop                                              ; $656b: $00
	nop                                              ; $656c: $00
	nop                                              ; $656d: $00
	nop                                              ; $656e: $00
	nop                                              ; $656f: $00
	nop                                              ; $6570: $00
	nop                                              ; $6571: $00
	nop                                              ; $6572: $00
	nop                                              ; $6573: $00
	nop                                              ; $6574: $00
	nop                                              ; $6575: $00
	nop                                              ; $6576: $00
	nop                                              ; $6577: $00
	nop                                              ; $6578: $00
	nop                                              ; $6579: $00
	nop                                              ; $657a: $00
	nop                                              ; $657b: $00
	nop                                              ; $657c: $00
	nop                                              ; $657d: $00
	nop                                              ; $657e: $00
	nop                                              ; $657f: $00
	nop                                              ; $6580: $00
	nop                                              ; $6581: $00
	nop                                              ; $6582: $00
	nop                                              ; $6583: $00
	nop                                              ; $6584: $00
	nop                                              ; $6585: $00
	nop                                              ; $6586: $00
	nop                                              ; $6587: $00
	nop                                              ; $6588: $00
	nop                                              ; $6589: $00
	nop                                              ; $658a: $00
	nop                                              ; $658b: $00
	nop                                              ; $658c: $00
	nop                                              ; $658d: $00
	nop                                              ; $658e: $00
	nop                                              ; $658f: $00
	nop                                              ; $6590: $00
	nop                                              ; $6591: $00
	nop                                              ; $6592: $00
	nop                                              ; $6593: $00
	nop                                              ; $6594: $00
	nop                                              ; $6595: $00
	nop                                              ; $6596: $00
	nop                                              ; $6597: $00
	nop                                              ; $6598: $00
	nop                                              ; $6599: $00
	nop                                              ; $659a: $00
	nop                                              ; $659b: $00
	nop                                              ; $659c: $00
	nop                                              ; $659d: $00
	nop                                              ; $659e: $00
	nop                                              ; $659f: $00
	nop                                              ; $65a0: $00
	nop                                              ; $65a1: $00
	nop                                              ; $65a2: $00
	nop                                              ; $65a3: $00
	nop                                              ; $65a4: $00
	nop                                              ; $65a5: $00
	nop                                              ; $65a6: $00
	nop                                              ; $65a7: $00
	nop                                              ; $65a8: $00
	nop                                              ; $65a9: $00
	nop                                              ; $65aa: $00
	nop                                              ; $65ab: $00
	nop                                              ; $65ac: $00
	nop                                              ; $65ad: $00
	nop                                              ; $65ae: $00
	nop                                              ; $65af: $00
	nop                                              ; $65b0: $00
	nop                                              ; $65b1: $00
	nop                                              ; $65b2: $00
	nop                                              ; $65b3: $00
	nop                                              ; $65b4: $00
	nop                                              ; $65b5: $00
	nop                                              ; $65b6: $00
	nop                                              ; $65b7: $00
	nop                                              ; $65b8: $00
	nop                                              ; $65b9: $00
	nop                                              ; $65ba: $00
	nop                                              ; $65bb: $00
	nop                                              ; $65bc: $00
	nop                                              ; $65bd: $00
	nop                                              ; $65be: $00
	nop                                              ; $65bf: $00
	nop                                              ; $65c0: $00
	nop                                              ; $65c1: $00
	nop                                              ; $65c2: $00
	nop                                              ; $65c3: $00
	nop                                              ; $65c4: $00
	nop                                              ; $65c5: $00
	nop                                              ; $65c6: $00
	nop                                              ; $65c7: $00
	nop                                              ; $65c8: $00
	nop                                              ; $65c9: $00
	nop                                              ; $65ca: $00
	nop                                              ; $65cb: $00
	nop                                              ; $65cc: $00
	nop                                              ; $65cd: $00
	nop                                              ; $65ce: $00
	nop                                              ; $65cf: $00
	nop                                              ; $65d0: $00
	nop                                              ; $65d1: $00
	nop                                              ; $65d2: $00
	nop                                              ; $65d3: $00
	nop                                              ; $65d4: $00
	nop                                              ; $65d5: $00
	nop                                              ; $65d6: $00
	nop                                              ; $65d7: $00
	nop                                              ; $65d8: $00
	nop                                              ; $65d9: $00
	nop                                              ; $65da: $00
	nop                                              ; $65db: $00
	nop                                              ; $65dc: $00
	nop                                              ; $65dd: $00
	nop                                              ; $65de: $00
	nop                                              ; $65df: $00
	nop                                              ; $65e0: $00
	nop                                              ; $65e1: $00
	nop                                              ; $65e2: $00
	nop                                              ; $65e3: $00
	nop                                              ; $65e4: $00
	nop                                              ; $65e5: $00
	nop                                              ; $65e6: $00
	nop                                              ; $65e7: $00
	nop                                              ; $65e8: $00
	nop                                              ; $65e9: $00
	nop                                              ; $65ea: $00
	nop                                              ; $65eb: $00
	nop                                              ; $65ec: $00
	nop                                              ; $65ed: $00
	nop                                              ; $65ee: $00
	nop                                              ; $65ef: $00
	nop                                              ; $65f0: $00
	nop                                              ; $65f1: $00
	nop                                              ; $65f2: $00
	nop                                              ; $65f3: $00
	nop                                              ; $65f4: $00
	nop                                              ; $65f5: $00
	nop                                              ; $65f6: $00
	nop                                              ; $65f7: $00
	nop                                              ; $65f8: $00
	nop                                              ; $65f9: $00
	nop                                              ; $65fa: $00
	nop                                              ; $65fb: $00
	nop                                              ; $65fc: $00
	nop                                              ; $65fd: $00
	nop                                              ; $65fe: $00
	nop                                              ; $65ff: $00
	nop                                              ; $6600: $00
	nop                                              ; $6601: $00
	nop                                              ; $6602: $00
	nop                                              ; $6603: $00
	nop                                              ; $6604: $00
	nop                                              ; $6605: $00
	nop                                              ; $6606: $00
	nop                                              ; $6607: $00
	nop                                              ; $6608: $00
	nop                                              ; $6609: $00
	nop                                              ; $660a: $00
	nop                                              ; $660b: $00
	nop                                              ; $660c: $00
	nop                                              ; $660d: $00
	nop                                              ; $660e: $00
	nop                                              ; $660f: $00
	nop                                              ; $6610: $00
	nop                                              ; $6611: $00
	nop                                              ; $6612: $00
	nop                                              ; $6613: $00
	nop                                              ; $6614: $00
	nop                                              ; $6615: $00
	nop                                              ; $6616: $00
	nop                                              ; $6617: $00
	nop                                              ; $6618: $00
	nop                                              ; $6619: $00
	nop                                              ; $661a: $00
	nop                                              ; $661b: $00
	nop                                              ; $661c: $00
	nop                                              ; $661d: $00
	nop                                              ; $661e: $00
	nop                                              ; $661f: $00
	nop                                              ; $6620: $00
	nop                                              ; $6621: $00
	nop                                              ; $6622: $00
	nop                                              ; $6623: $00
	nop                                              ; $6624: $00
	nop                                              ; $6625: $00
	nop                                              ; $6626: $00
	nop                                              ; $6627: $00
	nop                                              ; $6628: $00
	nop                                              ; $6629: $00
	nop                                              ; $662a: $00
	nop                                              ; $662b: $00
	nop                                              ; $662c: $00
	nop                                              ; $662d: $00
	nop                                              ; $662e: $00
	nop                                              ; $662f: $00
	nop                                              ; $6630: $00
	nop                                              ; $6631: $00
	nop                                              ; $6632: $00
	nop                                              ; $6633: $00
	nop                                              ; $6634: $00
	nop                                              ; $6635: $00
	nop                                              ; $6636: $00
	nop                                              ; $6637: $00
	nop                                              ; $6638: $00
	nop                                              ; $6639: $00
	nop                                              ; $663a: $00
	nop                                              ; $663b: $00
	nop                                              ; $663c: $00
	nop                                              ; $663d: $00
	nop                                              ; $663e: $00
	nop                                              ; $663f: $00
	nop                                              ; $6640: $00
	nop                                              ; $6641: $00
	nop                                              ; $6642: $00
	nop                                              ; $6643: $00
	nop                                              ; $6644: $00
	nop                                              ; $6645: $00
	nop                                              ; $6646: $00
	nop                                              ; $6647: $00
	nop                                              ; $6648: $00
	nop                                              ; $6649: $00
	nop                                              ; $664a: $00
	nop                                              ; $664b: $00
	nop                                              ; $664c: $00
	nop                                              ; $664d: $00
	nop                                              ; $664e: $00
	nop                                              ; $664f: $00
	nop                                              ; $6650: $00
	nop                                              ; $6651: $00
	nop                                              ; $6652: $00
	nop                                              ; $6653: $00
	nop                                              ; $6654: $00
	nop                                              ; $6655: $00
	nop                                              ; $6656: $00
	nop                                              ; $6657: $00
	nop                                              ; $6658: $00
	nop                                              ; $6659: $00
	nop                                              ; $665a: $00
	nop                                              ; $665b: $00
	nop                                              ; $665c: $00
	nop                                              ; $665d: $00
	nop                                              ; $665e: $00
	nop                                              ; $665f: $00
	nop                                              ; $6660: $00
	nop                                              ; $6661: $00
	nop                                              ; $6662: $00
	nop                                              ; $6663: $00
	nop                                              ; $6664: $00
	nop                                              ; $6665: $00
	nop                                              ; $6666: $00
	nop                                              ; $6667: $00
	nop                                              ; $6668: $00
	nop                                              ; $6669: $00
	nop                                              ; $666a: $00
	nop                                              ; $666b: $00
	nop                                              ; $666c: $00
	nop                                              ; $666d: $00
	nop                                              ; $666e: $00
	nop                                              ; $666f: $00
	nop                                              ; $6670: $00
	nop                                              ; $6671: $00
	nop                                              ; $6672: $00
	nop                                              ; $6673: $00
	nop                                              ; $6674: $00
	nop                                              ; $6675: $00
	nop                                              ; $6676: $00
	nop                                              ; $6677: $00
	nop                                              ; $6678: $00
	nop                                              ; $6679: $00
	nop                                              ; $667a: $00
	nop                                              ; $667b: $00
	nop                                              ; $667c: $00
	nop                                              ; $667d: $00
	nop                                              ; $667e: $00
	nop                                              ; $667f: $00
	nop                                              ; $6680: $00
	nop                                              ; $6681: $00
	nop                                              ; $6682: $00
	nop                                              ; $6683: $00
	nop                                              ; $6684: $00
	nop                                              ; $6685: $00
	nop                                              ; $6686: $00
	nop                                              ; $6687: $00
	nop                                              ; $6688: $00
	nop                                              ; $6689: $00
	nop                                              ; $668a: $00
	nop                                              ; $668b: $00
	nop                                              ; $668c: $00
	nop                                              ; $668d: $00
	nop                                              ; $668e: $00
	nop                                              ; $668f: $00
	nop                                              ; $6690: $00
	nop                                              ; $6691: $00
	nop                                              ; $6692: $00
	nop                                              ; $6693: $00
	nop                                              ; $6694: $00
	nop                                              ; $6695: $00
	nop                                              ; $6696: $00
	nop                                              ; $6697: $00
	nop                                              ; $6698: $00
	nop                                              ; $6699: $00
	nop                                              ; $669a: $00
	nop                                              ; $669b: $00
	nop                                              ; $669c: $00
	nop                                              ; $669d: $00
	nop                                              ; $669e: $00
	nop                                              ; $669f: $00
	nop                                              ; $66a0: $00
	nop                                              ; $66a1: $00
	nop                                              ; $66a2: $00
	nop                                              ; $66a3: $00
	nop                                              ; $66a4: $00
	nop                                              ; $66a5: $00
	nop                                              ; $66a6: $00
	nop                                              ; $66a7: $00
	nop                                              ; $66a8: $00
	nop                                              ; $66a9: $00
	nop                                              ; $66aa: $00
	nop                                              ; $66ab: $00
	nop                                              ; $66ac: $00
	nop                                              ; $66ad: $00
	nop                                              ; $66ae: $00
	nop                                              ; $66af: $00
	nop                                              ; $66b0: $00
	nop                                              ; $66b1: $00
	nop                                              ; $66b2: $00
	nop                                              ; $66b3: $00
	nop                                              ; $66b4: $00
	nop                                              ; $66b5: $00
	nop                                              ; $66b6: $00
	nop                                              ; $66b7: $00
	nop                                              ; $66b8: $00
	nop                                              ; $66b9: $00
	nop                                              ; $66ba: $00
	nop                                              ; $66bb: $00
	nop                                              ; $66bc: $00
	nop                                              ; $66bd: $00
	nop                                              ; $66be: $00
	nop                                              ; $66bf: $00
	nop                                              ; $66c0: $00
	nop                                              ; $66c1: $00
	nop                                              ; $66c2: $00
	nop                                              ; $66c3: $00
	nop                                              ; $66c4: $00
	nop                                              ; $66c5: $00
	nop                                              ; $66c6: $00
	nop                                              ; $66c7: $00
	nop                                              ; $66c8: $00
	nop                                              ; $66c9: $00
	nop                                              ; $66ca: $00
	nop                                              ; $66cb: $00
	nop                                              ; $66cc: $00
	nop                                              ; $66cd: $00
	nop                                              ; $66ce: $00
	nop                                              ; $66cf: $00
	nop                                              ; $66d0: $00
	nop                                              ; $66d1: $00
	nop                                              ; $66d2: $00
	nop                                              ; $66d3: $00
	nop                                              ; $66d4: $00
	nop                                              ; $66d5: $00
	nop                                              ; $66d6: $00
	nop                                              ; $66d7: $00
	nop                                              ; $66d8: $00
	nop                                              ; $66d9: $00
	nop                                              ; $66da: $00
	nop                                              ; $66db: $00
	nop                                              ; $66dc: $00
	nop                                              ; $66dd: $00
	nop                                              ; $66de: $00
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
	nop                                              ; $66f1: $00
	nop                                              ; $66f2: $00
	nop                                              ; $66f3: $00
	nop                                              ; $66f4: $00
	nop                                              ; $66f5: $00
	nop                                              ; $66f6: $00
	nop                                              ; $66f7: $00
	nop                                              ; $66f8: $00
	nop                                              ; $66f9: $00
	nop                                              ; $66fa: $00
	nop                                              ; $66fb: $00
	nop                                              ; $66fc: $00
	nop                                              ; $66fd: $00
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
	nop                                              ; $6709: $00
	nop                                              ; $670a: $00
	nop                                              ; $670b: $00
	nop                                              ; $670c: $00
	nop                                              ; $670d: $00
	nop                                              ; $670e: $00
	nop                                              ; $670f: $00
	nop                                              ; $6710: $00
	nop                                              ; $6711: $00
	nop                                              ; $6712: $00
	nop                                              ; $6713: $00
	nop                                              ; $6714: $00
	nop                                              ; $6715: $00
	nop                                              ; $6716: $00
	nop                                              ; $6717: $00
	nop                                              ; $6718: $00
	nop                                              ; $6719: $00
	nop                                              ; $671a: $00
	nop                                              ; $671b: $00
	nop                                              ; $671c: $00
	nop                                              ; $671d: $00
	nop                                              ; $671e: $00
	nop                                              ; $671f: $00
	nop                                              ; $6720: $00
	nop                                              ; $6721: $00
	nop                                              ; $6722: $00
	nop                                              ; $6723: $00
	nop                                              ; $6724: $00
	nop                                              ; $6725: $00
	nop                                              ; $6726: $00
	nop                                              ; $6727: $00
	nop                                              ; $6728: $00
	nop                                              ; $6729: $00
	nop                                              ; $672a: $00
	nop                                              ; $672b: $00
	nop                                              ; $672c: $00
	nop                                              ; $672d: $00
	nop                                              ; $672e: $00
	nop                                              ; $672f: $00
	nop                                              ; $6730: $00
	nop                                              ; $6731: $00
	nop                                              ; $6732: $00
	nop                                              ; $6733: $00
	nop                                              ; $6734: $00
	nop                                              ; $6735: $00
	nop                                              ; $6736: $00
	nop                                              ; $6737: $00
	nop                                              ; $6738: $00
	nop                                              ; $6739: $00
	nop                                              ; $673a: $00
	nop                                              ; $673b: $00
	nop                                              ; $673c: $00
	nop                                              ; $673d: $00
	nop                                              ; $673e: $00
	nop                                              ; $673f: $00
	nop                                              ; $6740: $00
	nop                                              ; $6741: $00
	nop                                              ; $6742: $00
	nop                                              ; $6743: $00
	nop                                              ; $6744: $00
	nop                                              ; $6745: $00
	nop                                              ; $6746: $00
	nop                                              ; $6747: $00
	nop                                              ; $6748: $00
	nop                                              ; $6749: $00
	nop                                              ; $674a: $00
	nop                                              ; $674b: $00
	nop                                              ; $674c: $00
	nop                                              ; $674d: $00
	nop                                              ; $674e: $00
	nop                                              ; $674f: $00
	nop                                              ; $6750: $00
	nop                                              ; $6751: $00
	nop                                              ; $6752: $00
	nop                                              ; $6753: $00
	nop                                              ; $6754: $00
	nop                                              ; $6755: $00
	nop                                              ; $6756: $00
	nop                                              ; $6757: $00
	nop                                              ; $6758: $00
	nop                                              ; $6759: $00
	nop                                              ; $675a: $00
	nop                                              ; $675b: $00
	nop                                              ; $675c: $00
	nop                                              ; $675d: $00
	nop                                              ; $675e: $00
	nop                                              ; $675f: $00
	nop                                              ; $6760: $00
	nop                                              ; $6761: $00
	nop                                              ; $6762: $00
	nop                                              ; $6763: $00
	nop                                              ; $6764: $00
	nop                                              ; $6765: $00
	nop                                              ; $6766: $00
	nop                                              ; $6767: $00
	nop                                              ; $6768: $00
	nop                                              ; $6769: $00
	nop                                              ; $676a: $00
	nop                                              ; $676b: $00
	nop                                              ; $676c: $00
	nop                                              ; $676d: $00
	nop                                              ; $676e: $00
	nop                                              ; $676f: $00
	nop                                              ; $6770: $00
	nop                                              ; $6771: $00
	nop                                              ; $6772: $00
	nop                                              ; $6773: $00
	nop                                              ; $6774: $00
	nop                                              ; $6775: $00
	nop                                              ; $6776: $00
	nop                                              ; $6777: $00
	nop                                              ; $6778: $00
	nop                                              ; $6779: $00
	nop                                              ; $677a: $00
	nop                                              ; $677b: $00
	nop                                              ; $677c: $00
	nop                                              ; $677d: $00
	nop                                              ; $677e: $00
	nop                                              ; $677f: $00
	nop                                              ; $6780: $00
	nop                                              ; $6781: $00
	nop                                              ; $6782: $00
	nop                                              ; $6783: $00
	nop                                              ; $6784: $00
	nop                                              ; $6785: $00
	nop                                              ; $6786: $00
	nop                                              ; $6787: $00
	nop                                              ; $6788: $00
	nop                                              ; $6789: $00
	nop                                              ; $678a: $00
	nop                                              ; $678b: $00
	nop                                              ; $678c: $00
	nop                                              ; $678d: $00
	nop                                              ; $678e: $00
	nop                                              ; $678f: $00
	nop                                              ; $6790: $00
	nop                                              ; $6791: $00
	nop                                              ; $6792: $00
	nop                                              ; $6793: $00
	nop                                              ; $6794: $00
	nop                                              ; $6795: $00
	nop                                              ; $6796: $00
	nop                                              ; $6797: $00
	nop                                              ; $6798: $00
	nop                                              ; $6799: $00
	nop                                              ; $679a: $00
	nop                                              ; $679b: $00
	nop                                              ; $679c: $00
	nop                                              ; $679d: $00
	nop                                              ; $679e: $00
	nop                                              ; $679f: $00
	nop                                              ; $67a0: $00
	nop                                              ; $67a1: $00
	nop                                              ; $67a2: $00
	nop                                              ; $67a3: $00
	nop                                              ; $67a4: $00
	nop                                              ; $67a5: $00
	nop                                              ; $67a6: $00
	nop                                              ; $67a7: $00
	nop                                              ; $67a8: $00
	nop                                              ; $67a9: $00
	nop                                              ; $67aa: $00
	nop                                              ; $67ab: $00
	nop                                              ; $67ac: $00
	nop                                              ; $67ad: $00
	nop                                              ; $67ae: $00
	nop                                              ; $67af: $00
	nop                                              ; $67b0: $00
	nop                                              ; $67b1: $00
	nop                                              ; $67b2: $00
	nop                                              ; $67b3: $00
	nop                                              ; $67b4: $00
	nop                                              ; $67b5: $00
	nop                                              ; $67b6: $00
	nop                                              ; $67b7: $00
	nop                                              ; $67b8: $00
	nop                                              ; $67b9: $00
	nop                                              ; $67ba: $00
	nop                                              ; $67bb: $00
	nop                                              ; $67bc: $00
	nop                                              ; $67bd: $00
	nop                                              ; $67be: $00
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
	nop                                              ; $67d1: $00
	nop                                              ; $67d2: $00
	nop                                              ; $67d3: $00
	nop                                              ; $67d4: $00
	nop                                              ; $67d5: $00
	nop                                              ; $67d6: $00
	nop                                              ; $67d7: $00
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
	nop                                              ; $67e5: $00
	nop                                              ; $67e6: $00
	nop                                              ; $67e7: $00
	nop                                              ; $67e8: $00
	nop                                              ; $67e9: $00
	nop                                              ; $67ea: $00
	nop                                              ; $67eb: $00
	nop                                              ; $67ec: $00
	nop                                              ; $67ed: $00
	nop                                              ; $67ee: $00
	nop                                              ; $67ef: $00
	nop                                              ; $67f0: $00
	nop                                              ; $67f1: $00
	nop                                              ; $67f2: $00
	nop                                              ; $67f3: $00
	nop                                              ; $67f4: $00
	nop                                              ; $67f5: $00
	nop                                              ; $67f6: $00
	nop                                              ; $67f7: $00
	nop                                              ; $67f8: $00
	nop                                              ; $67f9: $00
	nop                                              ; $67fa: $00
	nop                                              ; $67fb: $00
	nop                                              ; $67fc: $00
	nop                                              ; $67fd: $00
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
	nop                                              ; $6887: $00
	nop                                              ; $6888: $00
	nop                                              ; $6889: $00
	nop                                              ; $688a: $00
	nop                                              ; $688b: $00
	nop                                              ; $688c: $00
	nop                                              ; $688d: $00
	nop                                              ; $688e: $00
	nop                                              ; $688f: $00
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
	nop                                              ; $689d: $00
	nop                                              ; $689e: $00
	nop                                              ; $689f: $00
	nop                                              ; $68a0: $00
	nop                                              ; $68a1: $00
	nop                                              ; $68a2: $00
	nop                                              ; $68a3: $00
	nop                                              ; $68a4: $00
	nop                                              ; $68a5: $00
	nop                                              ; $68a6: $00
	nop                                              ; $68a7: $00
	nop                                              ; $68a8: $00
	nop                                              ; $68a9: $00
	nop                                              ; $68aa: $00
	nop                                              ; $68ab: $00
	nop                                              ; $68ac: $00
	nop                                              ; $68ad: $00
	nop                                              ; $68ae: $00
	nop                                              ; $68af: $00
	nop                                              ; $68b0: $00
	nop                                              ; $68b1: $00
	nop                                              ; $68b2: $00
	nop                                              ; $68b3: $00
	nop                                              ; $68b4: $00
	nop                                              ; $68b5: $00
	nop                                              ; $68b6: $00
	nop                                              ; $68b7: $00
	nop                                              ; $68b8: $00
	nop                                              ; $68b9: $00
	nop                                              ; $68ba: $00
	nop                                              ; $68bb: $00
	nop                                              ; $68bc: $00
	nop                                              ; $68bd: $00
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
	nop                                              ; $68cf: $00
	nop                                              ; $68d0: $00
	nop                                              ; $68d1: $00
	nop                                              ; $68d2: $00
	nop                                              ; $68d3: $00
	nop                                              ; $68d4: $00
	nop                                              ; $68d5: $00
	nop                                              ; $68d6: $00
	nop                                              ; $68d7: $00
	nop                                              ; $68d8: $00
	nop                                              ; $68d9: $00
	nop                                              ; $68da: $00
	nop                                              ; $68db: $00
	nop                                              ; $68dc: $00
	nop                                              ; $68dd: $00
	nop                                              ; $68de: $00
	nop                                              ; $68df: $00
	nop                                              ; $68e0: $00
	nop                                              ; $68e1: $00
	nop                                              ; $68e2: $00
	nop                                              ; $68e3: $00
	nop                                              ; $68e4: $00
	nop                                              ; $68e5: $00
	nop                                              ; $68e6: $00
	nop                                              ; $68e7: $00
	nop                                              ; $68e8: $00
	nop                                              ; $68e9: $00
	nop                                              ; $68ea: $00
	nop                                              ; $68eb: $00
	nop                                              ; $68ec: $00
	nop                                              ; $68ed: $00
	nop                                              ; $68ee: $00
	nop                                              ; $68ef: $00
	nop                                              ; $68f0: $00
	nop                                              ; $68f1: $00
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
	nop                                              ; $68fd: $00
	nop                                              ; $68fe: $00
	nop                                              ; $68ff: $00
	nop                                              ; $6900: $00
	nop                                              ; $6901: $00
	nop                                              ; $6902: $00
	nop                                              ; $6903: $00
	nop                                              ; $6904: $00
	nop                                              ; $6905: $00
	nop                                              ; $6906: $00
	nop                                              ; $6907: $00
	nop                                              ; $6908: $00
	nop                                              ; $6909: $00
	nop                                              ; $690a: $00
	nop                                              ; $690b: $00
	nop                                              ; $690c: $00
	nop                                              ; $690d: $00
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
	nop                                              ; $691d: $00
	nop                                              ; $691e: $00
	nop                                              ; $691f: $00
	nop                                              ; $6920: $00
	nop                                              ; $6921: $00
	nop                                              ; $6922: $00
	nop                                              ; $6923: $00
	nop                                              ; $6924: $00
	nop                                              ; $6925: $00
	nop                                              ; $6926: $00
	nop                                              ; $6927: $00
	nop                                              ; $6928: $00
	nop                                              ; $6929: $00
	nop                                              ; $692a: $00
	nop                                              ; $692b: $00
	nop                                              ; $692c: $00
	nop                                              ; $692d: $00
	nop                                              ; $692e: $00
	nop                                              ; $692f: $00
	nop                                              ; $6930: $00
	nop                                              ; $6931: $00
	nop                                              ; $6932: $00
	nop                                              ; $6933: $00
	nop                                              ; $6934: $00
	nop                                              ; $6935: $00
	nop                                              ; $6936: $00
	nop                                              ; $6937: $00
	nop                                              ; $6938: $00
	nop                                              ; $6939: $00
	nop                                              ; $693a: $00
	nop                                              ; $693b: $00
	nop                                              ; $693c: $00
	nop                                              ; $693d: $00
	nop                                              ; $693e: $00
	nop                                              ; $693f: $00
	nop                                              ; $6940: $00
	nop                                              ; $6941: $00
	nop                                              ; $6942: $00
	nop                                              ; $6943: $00
	nop                                              ; $6944: $00
	nop                                              ; $6945: $00
	nop                                              ; $6946: $00
	nop                                              ; $6947: $00
	nop                                              ; $6948: $00
	nop                                              ; $6949: $00
	nop                                              ; $694a: $00
	nop                                              ; $694b: $00
	nop                                              ; $694c: $00
	nop                                              ; $694d: $00
	nop                                              ; $694e: $00
	nop                                              ; $694f: $00
	nop                                              ; $6950: $00
	nop                                              ; $6951: $00
	nop                                              ; $6952: $00
	nop                                              ; $6953: $00
	nop                                              ; $6954: $00
	nop                                              ; $6955: $00
	nop                                              ; $6956: $00
	nop                                              ; $6957: $00
	nop                                              ; $6958: $00
	nop                                              ; $6959: $00
	nop                                              ; $695a: $00
	nop                                              ; $695b: $00
	nop                                              ; $695c: $00
	nop                                              ; $695d: $00
	nop                                              ; $695e: $00
	nop                                              ; $695f: $00
	nop                                              ; $6960: $00
	nop                                              ; $6961: $00
	nop                                              ; $6962: $00
	nop                                              ; $6963: $00
	nop                                              ; $6964: $00
	nop                                              ; $6965: $00
	nop                                              ; $6966: $00
	nop                                              ; $6967: $00
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
	nop                                              ; $6a25: $00
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
	nop                                              ; $6a3d: $00
	nop                                              ; $6a3e: $00
	nop                                              ; $6a3f: $00
	nop                                              ; $6a40: $00
	nop                                              ; $6a41: $00
	nop                                              ; $6a42: $00
	nop                                              ; $6a43: $00
	nop                                              ; $6a44: $00
	nop                                              ; $6a45: $00
	nop                                              ; $6a46: $00
	nop                                              ; $6a47: $00
	nop                                              ; $6a48: $00
	nop                                              ; $6a49: $00
	nop                                              ; $6a4a: $00
	nop                                              ; $6a4b: $00
	nop                                              ; $6a4c: $00
	nop                                              ; $6a4d: $00
	nop                                              ; $6a4e: $00
	nop                                              ; $6a4f: $00
	nop                                              ; $6a50: $00
	nop                                              ; $6a51: $00
	nop                                              ; $6a52: $00
	nop                                              ; $6a53: $00
	nop                                              ; $6a54: $00
	nop                                              ; $6a55: $00
	nop                                              ; $6a56: $00
	nop                                              ; $6a57: $00
	nop                                              ; $6a58: $00
	nop                                              ; $6a59: $00
	nop                                              ; $6a5a: $00
	nop                                              ; $6a5b: $00
	nop                                              ; $6a5c: $00
	nop                                              ; $6a5d: $00
	nop                                              ; $6a5e: $00
	nop                                              ; $6a5f: $00
	nop                                              ; $6a60: $00
	nop                                              ; $6a61: $00
	nop                                              ; $6a62: $00
	nop                                              ; $6a63: $00
	nop                                              ; $6a64: $00
	nop                                              ; $6a65: $00
	nop                                              ; $6a66: $00
	nop                                              ; $6a67: $00
	nop                                              ; $6a68: $00
	nop                                              ; $6a69: $00
	nop                                              ; $6a6a: $00
	nop                                              ; $6a6b: $00
	nop                                              ; $6a6c: $00
	nop                                              ; $6a6d: $00
	nop                                              ; $6a6e: $00
	nop                                              ; $6a6f: $00
	nop                                              ; $6a70: $00
	nop                                              ; $6a71: $00
	nop                                              ; $6a72: $00
	nop                                              ; $6a73: $00
	nop                                              ; $6a74: $00
	nop                                              ; $6a75: $00
	nop                                              ; $6a76: $00
	nop                                              ; $6a77: $00
	nop                                              ; $6a78: $00
	nop                                              ; $6a79: $00
	nop                                              ; $6a7a: $00
	nop                                              ; $6a7b: $00
	nop                                              ; $6a7c: $00
	nop                                              ; $6a7d: $00
	nop                                              ; $6a7e: $00
	nop                                              ; $6a7f: $00
	nop                                              ; $6a80: $00
	nop                                              ; $6a81: $00
	nop                                              ; $6a82: $00
	nop                                              ; $6a83: $00
	nop                                              ; $6a84: $00
	nop                                              ; $6a85: $00
	nop                                              ; $6a86: $00
	nop                                              ; $6a87: $00
	nop                                              ; $6a88: $00
	nop                                              ; $6a89: $00
	nop                                              ; $6a8a: $00
	nop                                              ; $6a8b: $00
	nop                                              ; $6a8c: $00
	nop                                              ; $6a8d: $00
	nop                                              ; $6a8e: $00
	nop                                              ; $6a8f: $00
	nop                                              ; $6a90: $00
	nop                                              ; $6a91: $00
	nop                                              ; $6a92: $00
	nop                                              ; $6a93: $00
	nop                                              ; $6a94: $00
	nop                                              ; $6a95: $00
	nop                                              ; $6a96: $00
	nop                                              ; $6a97: $00
	nop                                              ; $6a98: $00
	nop                                              ; $6a99: $00
	nop                                              ; $6a9a: $00
	nop                                              ; $6a9b: $00
	nop                                              ; $6a9c: $00
	nop                                              ; $6a9d: $00
	nop                                              ; $6a9e: $00
	nop                                              ; $6a9f: $00
	nop                                              ; $6aa0: $00
	nop                                              ; $6aa1: $00
	nop                                              ; $6aa2: $00
	nop                                              ; $6aa3: $00
	nop                                              ; $6aa4: $00
	nop                                              ; $6aa5: $00
	nop                                              ; $6aa6: $00
	nop                                              ; $6aa7: $00
	nop                                              ; $6aa8: $00
	nop                                              ; $6aa9: $00
	nop                                              ; $6aaa: $00
	nop                                              ; $6aab: $00
	nop                                              ; $6aac: $00
	nop                                              ; $6aad: $00
	nop                                              ; $6aae: $00
	nop                                              ; $6aaf: $00
	nop                                              ; $6ab0: $00
	nop                                              ; $6ab1: $00
	nop                                              ; $6ab2: $00
	nop                                              ; $6ab3: $00
	nop                                              ; $6ab4: $00
	nop                                              ; $6ab5: $00
	nop                                              ; $6ab6: $00
	nop                                              ; $6ab7: $00
	nop                                              ; $6ab8: $00
	nop                                              ; $6ab9: $00
	nop                                              ; $6aba: $00
	nop                                              ; $6abb: $00
	nop                                              ; $6abc: $00
	nop                                              ; $6abd: $00
	nop                                              ; $6abe: $00
	nop                                              ; $6abf: $00
	nop                                              ; $6ac0: $00
	nop                                              ; $6ac1: $00
	nop                                              ; $6ac2: $00
	nop                                              ; $6ac3: $00
	nop                                              ; $6ac4: $00
	nop                                              ; $6ac5: $00
	nop                                              ; $6ac6: $00
	nop                                              ; $6ac7: $00
	nop                                              ; $6ac8: $00
	nop                                              ; $6ac9: $00
	nop                                              ; $6aca: $00
	nop                                              ; $6acb: $00
	nop                                              ; $6acc: $00
	nop                                              ; $6acd: $00
	nop                                              ; $6ace: $00
	nop                                              ; $6acf: $00
	nop                                              ; $6ad0: $00
	nop                                              ; $6ad1: $00
	nop                                              ; $6ad2: $00
	nop                                              ; $6ad3: $00
	nop                                              ; $6ad4: $00
	nop                                              ; $6ad5: $00
	nop                                              ; $6ad6: $00
	nop                                              ; $6ad7: $00
	nop                                              ; $6ad8: $00
	nop                                              ; $6ad9: $00
	nop                                              ; $6ada: $00
	nop                                              ; $6adb: $00
	nop                                              ; $6adc: $00
	nop                                              ; $6add: $00
	nop                                              ; $6ade: $00
	nop                                              ; $6adf: $00
	nop                                              ; $6ae0: $00
	nop                                              ; $6ae1: $00
	nop                                              ; $6ae2: $00
	nop                                              ; $6ae3: $00
	nop                                              ; $6ae4: $00
	nop                                              ; $6ae5: $00
	nop                                              ; $6ae6: $00
	nop                                              ; $6ae7: $00
	nop                                              ; $6ae8: $00
	nop                                              ; $6ae9: $00
	nop                                              ; $6aea: $00
	nop                                              ; $6aeb: $00
	nop                                              ; $6aec: $00
	nop                                              ; $6aed: $00
	nop                                              ; $6aee: $00
	nop                                              ; $6aef: $00
	nop                                              ; $6af0: $00
	nop                                              ; $6af1: $00
	nop                                              ; $6af2: $00
	nop                                              ; $6af3: $00
	nop                                              ; $6af4: $00
	nop                                              ; $6af5: $00
	nop                                              ; $6af6: $00
	nop                                              ; $6af7: $00
	nop                                              ; $6af8: $00
	nop                                              ; $6af9: $00
	nop                                              ; $6afa: $00
	nop                                              ; $6afb: $00
	nop                                              ; $6afc: $00
	nop                                              ; $6afd: $00
	nop                                              ; $6afe: $00
	nop                                              ; $6aff: $00
	nop                                              ; $6b00: $00
	nop                                              ; $6b01: $00
	nop                                              ; $6b02: $00
	nop                                              ; $6b03: $00
	nop                                              ; $6b04: $00
	nop                                              ; $6b05: $00
	nop                                              ; $6b06: $00
	nop                                              ; $6b07: $00
	nop                                              ; $6b08: $00
	nop                                              ; $6b09: $00
	nop                                              ; $6b0a: $00
	nop                                              ; $6b0b: $00
	nop                                              ; $6b0c: $00
	nop                                              ; $6b0d: $00
	nop                                              ; $6b0e: $00
	nop                                              ; $6b0f: $00
	nop                                              ; $6b10: $00
	nop                                              ; $6b11: $00
	nop                                              ; $6b12: $00
	nop                                              ; $6b13: $00
	nop                                              ; $6b14: $00
	nop                                              ; $6b15: $00
	nop                                              ; $6b16: $00
	nop                                              ; $6b17: $00
	nop                                              ; $6b18: $00
	nop                                              ; $6b19: $00
	nop                                              ; $6b1a: $00
	nop                                              ; $6b1b: $00
	nop                                              ; $6b1c: $00
	nop                                              ; $6b1d: $00
	nop                                              ; $6b1e: $00
	nop                                              ; $6b1f: $00
	nop                                              ; $6b20: $00
	nop                                              ; $6b21: $00
	nop                                              ; $6b22: $00
	nop                                              ; $6b23: $00
	nop                                              ; $6b24: $00
	nop                                              ; $6b25: $00
	nop                                              ; $6b26: $00
	nop                                              ; $6b27: $00
	nop                                              ; $6b28: $00
	nop                                              ; $6b29: $00
	nop                                              ; $6b2a: $00
	nop                                              ; $6b2b: $00
	nop                                              ; $6b2c: $00
	nop                                              ; $6b2d: $00
	nop                                              ; $6b2e: $00
	nop                                              ; $6b2f: $00
	nop                                              ; $6b30: $00
	nop                                              ; $6b31: $00
	nop                                              ; $6b32: $00
	nop                                              ; $6b33: $00
	nop                                              ; $6b34: $00
	nop                                              ; $6b35: $00
	nop                                              ; $6b36: $00
	nop                                              ; $6b37: $00
	nop                                              ; $6b38: $00
	nop                                              ; $6b39: $00
	nop                                              ; $6b3a: $00
	nop                                              ; $6b3b: $00
	nop                                              ; $6b3c: $00
	nop                                              ; $6b3d: $00
	nop                                              ; $6b3e: $00
	nop                                              ; $6b3f: $00
	nop                                              ; $6b40: $00
	nop                                              ; $6b41: $00
	nop                                              ; $6b42: $00
	nop                                              ; $6b43: $00
	nop                                              ; $6b44: $00
	nop                                              ; $6b45: $00
	nop                                              ; $6b46: $00
	nop                                              ; $6b47: $00
	nop                                              ; $6b48: $00
	nop                                              ; $6b49: $00
	nop                                              ; $6b4a: $00
	nop                                              ; $6b4b: $00
	nop                                              ; $6b4c: $00
	nop                                              ; $6b4d: $00
	nop                                              ; $6b4e: $00
	nop                                              ; $6b4f: $00
	nop                                              ; $6b50: $00
	nop                                              ; $6b51: $00
	nop                                              ; $6b52: $00
	nop                                              ; $6b53: $00
	nop                                              ; $6b54: $00
	nop                                              ; $6b55: $00
	nop                                              ; $6b56: $00
	nop                                              ; $6b57: $00
	nop                                              ; $6b58: $00
	nop                                              ; $6b59: $00
	nop                                              ; $6b5a: $00
	nop                                              ; $6b5b: $00
	nop                                              ; $6b5c: $00
	nop                                              ; $6b5d: $00
	nop                                              ; $6b5e: $00
	nop                                              ; $6b5f: $00
	nop                                              ; $6b60: $00
	nop                                              ; $6b61: $00
	nop                                              ; $6b62: $00
	nop                                              ; $6b63: $00
	nop                                              ; $6b64: $00
	nop                                              ; $6b65: $00
	nop                                              ; $6b66: $00
	nop                                              ; $6b67: $00
	nop                                              ; $6b68: $00
	nop                                              ; $6b69: $00
	nop                                              ; $6b6a: $00
	nop                                              ; $6b6b: $00
	nop                                              ; $6b6c: $00
	nop                                              ; $6b6d: $00
	nop                                              ; $6b6e: $00
	nop                                              ; $6b6f: $00
	nop                                              ; $6b70: $00
	nop                                              ; $6b71: $00
	nop                                              ; $6b72: $00
	nop                                              ; $6b73: $00
	nop                                              ; $6b74: $00
	nop                                              ; $6b75: $00
	nop                                              ; $6b76: $00
	nop                                              ; $6b77: $00
	nop                                              ; $6b78: $00
	nop                                              ; $6b79: $00
	nop                                              ; $6b7a: $00
	nop                                              ; $6b7b: $00
	nop                                              ; $6b7c: $00
	nop                                              ; $6b7d: $00
	nop                                              ; $6b7e: $00
	nop                                              ; $6b7f: $00
	nop                                              ; $6b80: $00
	nop                                              ; $6b81: $00
	nop                                              ; $6b82: $00
	nop                                              ; $6b83: $00
	nop                                              ; $6b84: $00
	nop                                              ; $6b85: $00
	nop                                              ; $6b86: $00
	nop                                              ; $6b87: $00
	nop                                              ; $6b88: $00
	nop                                              ; $6b89: $00
	nop                                              ; $6b8a: $00
	nop                                              ; $6b8b: $00
	nop                                              ; $6b8c: $00
	nop                                              ; $6b8d: $00
	nop                                              ; $6b8e: $00
	nop                                              ; $6b8f: $00
	nop                                              ; $6b90: $00
	nop                                              ; $6b91: $00
	nop                                              ; $6b92: $00
	nop                                              ; $6b93: $00
	nop                                              ; $6b94: $00
	nop                                              ; $6b95: $00
	nop                                              ; $6b96: $00
	nop                                              ; $6b97: $00
	nop                                              ; $6b98: $00
	nop                                              ; $6b99: $00
	nop                                              ; $6b9a: $00
	nop                                              ; $6b9b: $00
	nop                                              ; $6b9c: $00
	nop                                              ; $6b9d: $00
	nop                                              ; $6b9e: $00
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
	nop                                              ; $6ba9: $00
	nop                                              ; $6baa: $00
	nop                                              ; $6bab: $00
	nop                                              ; $6bac: $00
	nop                                              ; $6bad: $00
	nop                                              ; $6bae: $00
	nop                                              ; $6baf: $00
	nop                                              ; $6bb0: $00
	nop                                              ; $6bb1: $00
	nop                                              ; $6bb2: $00
	nop                                              ; $6bb3: $00
	nop                                              ; $6bb4: $00
	nop                                              ; $6bb5: $00
	nop                                              ; $6bb6: $00
	nop                                              ; $6bb7: $00
	nop                                              ; $6bb8: $00
	nop                                              ; $6bb9: $00
	nop                                              ; $6bba: $00
	nop                                              ; $6bbb: $00
	nop                                              ; $6bbc: $00
	nop                                              ; $6bbd: $00
	nop                                              ; $6bbe: $00
	nop                                              ; $6bbf: $00
	nop                                              ; $6bc0: $00
	nop                                              ; $6bc1: $00
	nop                                              ; $6bc2: $00
	nop                                              ; $6bc3: $00
	nop                                              ; $6bc4: $00
	nop                                              ; $6bc5: $00
	nop                                              ; $6bc6: $00
	nop                                              ; $6bc7: $00
	nop                                              ; $6bc8: $00
	nop                                              ; $6bc9: $00
	nop                                              ; $6bca: $00
	nop                                              ; $6bcb: $00
	nop                                              ; $6bcc: $00
	nop                                              ; $6bcd: $00
	nop                                              ; $6bce: $00
	nop                                              ; $6bcf: $00
	nop                                              ; $6bd0: $00
	nop                                              ; $6bd1: $00
	nop                                              ; $6bd2: $00
	nop                                              ; $6bd3: $00
	nop                                              ; $6bd4: $00
	nop                                              ; $6bd5: $00
	nop                                              ; $6bd6: $00
	nop                                              ; $6bd7: $00
	nop                                              ; $6bd8: $00
	nop                                              ; $6bd9: $00
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
	nop                                              ; $6c65: $00
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
	nop                                              ; $6c7d: $00
	nop                                              ; $6c7e: $00
	nop                                              ; $6c7f: $00
	nop                                              ; $6c80: $00
	nop                                              ; $6c81: $00
	nop                                              ; $6c82: $00
	nop                                              ; $6c83: $00
	nop                                              ; $6c84: $00
	nop                                              ; $6c85: $00
	nop                                              ; $6c86: $00
	nop                                              ; $6c87: $00
	nop                                              ; $6c88: $00
	nop                                              ; $6c89: $00
	nop                                              ; $6c8a: $00
	nop                                              ; $6c8b: $00
	nop                                              ; $6c8c: $00
	nop                                              ; $6c8d: $00
	nop                                              ; $6c8e: $00
	nop                                              ; $6c8f: $00
	nop                                              ; $6c90: $00
	nop                                              ; $6c91: $00
	nop                                              ; $6c92: $00
	nop                                              ; $6c93: $00
	nop                                              ; $6c94: $00
	nop                                              ; $6c95: $00
	nop                                              ; $6c96: $00
	nop                                              ; $6c97: $00
	nop                                              ; $6c98: $00
	nop                                              ; $6c99: $00
	nop                                              ; $6c9a: $00
	nop                                              ; $6c9b: $00
	nop                                              ; $6c9c: $00
	nop                                              ; $6c9d: $00
	nop                                              ; $6c9e: $00
	nop                                              ; $6c9f: $00
	nop                                              ; $6ca0: $00
	nop                                              ; $6ca1: $00
	nop                                              ; $6ca2: $00
	nop                                              ; $6ca3: $00
	nop                                              ; $6ca4: $00
	nop                                              ; $6ca5: $00
	nop                                              ; $6ca6: $00
	nop                                              ; $6ca7: $00
	nop                                              ; $6ca8: $00
	nop                                              ; $6ca9: $00
	nop                                              ; $6caa: $00
	nop                                              ; $6cab: $00
	nop                                              ; $6cac: $00
	nop                                              ; $6cad: $00
	nop                                              ; $6cae: $00
	nop                                              ; $6caf: $00
	nop                                              ; $6cb0: $00
	nop                                              ; $6cb1: $00
	nop                                              ; $6cb2: $00
	nop                                              ; $6cb3: $00
	nop                                              ; $6cb4: $00
	nop                                              ; $6cb5: $00
	nop                                              ; $6cb6: $00
	nop                                              ; $6cb7: $00
	nop                                              ; $6cb8: $00
	nop                                              ; $6cb9: $00
	nop                                              ; $6cba: $00
	nop                                              ; $6cbb: $00
	nop                                              ; $6cbc: $00
	nop                                              ; $6cbd: $00
	nop                                              ; $6cbe: $00
	nop                                              ; $6cbf: $00
	nop                                              ; $6cc0: $00
	nop                                              ; $6cc1: $00
	nop                                              ; $6cc2: $00
	nop                                              ; $6cc3: $00
	nop                                              ; $6cc4: $00
	nop                                              ; $6cc5: $00
	nop                                              ; $6cc6: $00
	nop                                              ; $6cc7: $00
	nop                                              ; $6cc8: $00
	nop                                              ; $6cc9: $00
	nop                                              ; $6cca: $00
	nop                                              ; $6ccb: $00
	nop                                              ; $6ccc: $00
	nop                                              ; $6ccd: $00
	nop                                              ; $6cce: $00
	nop                                              ; $6ccf: $00
	nop                                              ; $6cd0: $00
	nop                                              ; $6cd1: $00
	nop                                              ; $6cd2: $00
	nop                                              ; $6cd3: $00
	nop                                              ; $6cd4: $00
	nop                                              ; $6cd5: $00
	nop                                              ; $6cd6: $00
	nop                                              ; $6cd7: $00
	nop                                              ; $6cd8: $00
	nop                                              ; $6cd9: $00
	nop                                              ; $6cda: $00
	nop                                              ; $6cdb: $00
	nop                                              ; $6cdc: $00
	nop                                              ; $6cdd: $00
	nop                                              ; $6cde: $00
	nop                                              ; $6cdf: $00
	nop                                              ; $6ce0: $00
	nop                                              ; $6ce1: $00
	nop                                              ; $6ce2: $00
	nop                                              ; $6ce3: $00
	nop                                              ; $6ce4: $00
	nop                                              ; $6ce5: $00
	nop                                              ; $6ce6: $00
	nop                                              ; $6ce7: $00
	nop                                              ; $6ce8: $00
	nop                                              ; $6ce9: $00
	nop                                              ; $6cea: $00
	nop                                              ; $6ceb: $00
	nop                                              ; $6cec: $00
	nop                                              ; $6ced: $00
	nop                                              ; $6cee: $00
	nop                                              ; $6cef: $00
	nop                                              ; $6cf0: $00
	nop                                              ; $6cf1: $00
	nop                                              ; $6cf2: $00
	nop                                              ; $6cf3: $00
	nop                                              ; $6cf4: $00
	nop                                              ; $6cf5: $00
	nop                                              ; $6cf6: $00
	nop                                              ; $6cf7: $00
	nop                                              ; $6cf8: $00
	nop                                              ; $6cf9: $00
	nop                                              ; $6cfa: $00
	nop                                              ; $6cfb: $00
	nop                                              ; $6cfc: $00
	nop                                              ; $6cfd: $00
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
	nop                                              ; $6d09: $00
	nop                                              ; $6d0a: $00
	nop                                              ; $6d0b: $00
	nop                                              ; $6d0c: $00
	nop                                              ; $6d0d: $00
	nop                                              ; $6d0e: $00
	nop                                              ; $6d0f: $00
	nop                                              ; $6d10: $00
	nop                                              ; $6d11: $00
	nop                                              ; $6d12: $00
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
	nop                                              ; $6d1d: $00
	nop                                              ; $6d1e: $00
	nop                                              ; $6d1f: $00
	nop                                              ; $6d20: $00
	nop                                              ; $6d21: $00
	nop                                              ; $6d22: $00
	nop                                              ; $6d23: $00
	nop                                              ; $6d24: $00
	nop                                              ; $6d25: $00
	nop                                              ; $6d26: $00
	nop                                              ; $6d27: $00
	nop                                              ; $6d28: $00
	nop                                              ; $6d29: $00
	nop                                              ; $6d2a: $00
	nop                                              ; $6d2b: $00
	nop                                              ; $6d2c: $00
	nop                                              ; $6d2d: $00
	nop                                              ; $6d2e: $00
	nop                                              ; $6d2f: $00
	nop                                              ; $6d30: $00
	nop                                              ; $6d31: $00
	nop                                              ; $6d32: $00
	nop                                              ; $6d33: $00
	nop                                              ; $6d34: $00
	nop                                              ; $6d35: $00
	nop                                              ; $6d36: $00
	nop                                              ; $6d37: $00
	nop                                              ; $6d38: $00
	nop                                              ; $6d39: $00
	nop                                              ; $6d3a: $00
	nop                                              ; $6d3b: $00
	nop                                              ; $6d3c: $00
	nop                                              ; $6d3d: $00
	nop                                              ; $6d3e: $00
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
	nop                                              ; $6d49: $00
	nop                                              ; $6d4a: $00
	nop                                              ; $6d4b: $00
	nop                                              ; $6d4c: $00
	nop                                              ; $6d4d: $00
	nop                                              ; $6d4e: $00
	nop                                              ; $6d4f: $00
	nop                                              ; $6d50: $00
	nop                                              ; $6d51: $00
	nop                                              ; $6d52: $00
	nop                                              ; $6d53: $00
	nop                                              ; $6d54: $00
	nop                                              ; $6d55: $00
	nop                                              ; $6d56: $00
	nop                                              ; $6d57: $00
	nop                                              ; $6d58: $00
	nop                                              ; $6d59: $00
	nop                                              ; $6d5a: $00
	nop                                              ; $6d5b: $00
	nop                                              ; $6d5c: $00
	nop                                              ; $6d5d: $00
	nop                                              ; $6d5e: $00
	nop                                              ; $6d5f: $00
	nop                                              ; $6d60: $00
	nop                                              ; $6d61: $00
	nop                                              ; $6d62: $00
	nop                                              ; $6d63: $00
	nop                                              ; $6d64: $00
	nop                                              ; $6d65: $00
	nop                                              ; $6d66: $00
	nop                                              ; $6d67: $00
	nop                                              ; $6d68: $00
	nop                                              ; $6d69: $00
	nop                                              ; $6d6a: $00
	nop                                              ; $6d6b: $00
	nop                                              ; $6d6c: $00
	nop                                              ; $6d6d: $00
	nop                                              ; $6d6e: $00
	nop                                              ; $6d6f: $00
	nop                                              ; $6d70: $00
	nop                                              ; $6d71: $00
	nop                                              ; $6d72: $00
	nop                                              ; $6d73: $00
	nop                                              ; $6d74: $00
	nop                                              ; $6d75: $00
	nop                                              ; $6d76: $00
	nop                                              ; $6d77: $00
	nop                                              ; $6d78: $00
	nop                                              ; $6d79: $00
	nop                                              ; $6d7a: $00
	nop                                              ; $6d7b: $00
	nop                                              ; $6d7c: $00
	nop                                              ; $6d7d: $00
	nop                                              ; $6d7e: $00
	nop                                              ; $6d7f: $00
	nop                                              ; $6d80: $00
	nop                                              ; $6d81: $00
	nop                                              ; $6d82: $00
	nop                                              ; $6d83: $00
	nop                                              ; $6d84: $00
	nop                                              ; $6d85: $00
	nop                                              ; $6d86: $00
	nop                                              ; $6d87: $00
	nop                                              ; $6d88: $00
	nop                                              ; $6d89: $00
	nop                                              ; $6d8a: $00
	nop                                              ; $6d8b: $00
	nop                                              ; $6d8c: $00
	nop                                              ; $6d8d: $00
	nop                                              ; $6d8e: $00
	nop                                              ; $6d8f: $00
	nop                                              ; $6d90: $00
	nop                                              ; $6d91: $00
	nop                                              ; $6d92: $00
	nop                                              ; $6d93: $00
	nop                                              ; $6d94: $00
	nop                                              ; $6d95: $00
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
	nop                                              ; $6e25: $00
	nop                                              ; $6e26: $00
	nop                                              ; $6e27: $00
	nop                                              ; $6e28: $00
	nop                                              ; $6e29: $00
	nop                                              ; $6e2a: $00
	nop                                              ; $6e2b: $00
	nop                                              ; $6e2c: $00
	nop                                              ; $6e2d: $00
	nop                                              ; $6e2e: $00
	nop                                              ; $6e2f: $00
	nop                                              ; $6e30: $00
	nop                                              ; $6e31: $00
	nop                                              ; $6e32: $00
	nop                                              ; $6e33: $00
	nop                                              ; $6e34: $00
	nop                                              ; $6e35: $00
	nop                                              ; $6e36: $00
	nop                                              ; $6e37: $00
	nop                                              ; $6e38: $00
	nop                                              ; $6e39: $00
	nop                                              ; $6e3a: $00
	nop                                              ; $6e3b: $00
	nop                                              ; $6e3c: $00
	nop                                              ; $6e3d: $00
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
	nop                                              ; $6e4b: $00
	nop                                              ; $6e4c: $00
	nop                                              ; $6e4d: $00
	nop                                              ; $6e4e: $00
	nop                                              ; $6e4f: $00
	nop                                              ; $6e50: $00
	nop                                              ; $6e51: $00
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
	nop                                              ; $6e5d: $00
	nop                                              ; $6e5e: $00
	nop                                              ; $6e5f: $00
	nop                                              ; $6e60: $00
	nop                                              ; $6e61: $00
	nop                                              ; $6e62: $00
	nop                                              ; $6e63: $00
	nop                                              ; $6e64: $00
	nop                                              ; $6e65: $00
	nop                                              ; $6e66: $00
	nop                                              ; $6e67: $00
	nop                                              ; $6e68: $00
	nop                                              ; $6e69: $00
	nop                                              ; $6e6a: $00
	nop                                              ; $6e6b: $00
	nop                                              ; $6e6c: $00
	nop                                              ; $6e6d: $00
	nop                                              ; $6e6e: $00
	nop                                              ; $6e6f: $00
	nop                                              ; $6e70: $00
	nop                                              ; $6e71: $00
	nop                                              ; $6e72: $00
	nop                                              ; $6e73: $00
	nop                                              ; $6e74: $00
	nop                                              ; $6e75: $00
	nop                                              ; $6e76: $00
	nop                                              ; $6e77: $00
	nop                                              ; $6e78: $00
	nop                                              ; $6e79: $00
	nop                                              ; $6e7a: $00
	nop                                              ; $6e7b: $00
	nop                                              ; $6e7c: $00
	nop                                              ; $6e7d: $00
	nop                                              ; $6e7e: $00
	nop                                              ; $6e7f: $00
	nop                                              ; $6e80: $00
	nop                                              ; $6e81: $00
	nop                                              ; $6e82: $00
	nop                                              ; $6e83: $00
	nop                                              ; $6e84: $00
	nop                                              ; $6e85: $00
	nop                                              ; $6e86: $00
	nop                                              ; $6e87: $00
	nop                                              ; $6e88: $00
	nop                                              ; $6e89: $00
	nop                                              ; $6e8a: $00
	nop                                              ; $6e8b: $00
	nop                                              ; $6e8c: $00
	nop                                              ; $6e8d: $00
	nop                                              ; $6e8e: $00
	nop                                              ; $6e8f: $00
	nop                                              ; $6e90: $00
	nop                                              ; $6e91: $00
	nop                                              ; $6e92: $00
	nop                                              ; $6e93: $00
	nop                                              ; $6e94: $00
	nop                                              ; $6e95: $00
	nop                                              ; $6e96: $00
	nop                                              ; $6e97: $00
	nop                                              ; $6e98: $00
	nop                                              ; $6e99: $00
	nop                                              ; $6e9a: $00
	nop                                              ; $6e9b: $00
	nop                                              ; $6e9c: $00
	nop                                              ; $6e9d: $00
	nop                                              ; $6e9e: $00
	nop                                              ; $6e9f: $00
	nop                                              ; $6ea0: $00
	nop                                              ; $6ea1: $00
	nop                                              ; $6ea2: $00
	nop                                              ; $6ea3: $00
	nop                                              ; $6ea4: $00
	nop                                              ; $6ea5: $00
	nop                                              ; $6ea6: $00
	nop                                              ; $6ea7: $00
	nop                                              ; $6ea8: $00
	nop                                              ; $6ea9: $00
	nop                                              ; $6eaa: $00
	nop                                              ; $6eab: $00
	nop                                              ; $6eac: $00
	nop                                              ; $6ead: $00
	nop                                              ; $6eae: $00
	nop                                              ; $6eaf: $00
	nop                                              ; $6eb0: $00
	nop                                              ; $6eb1: $00
	nop                                              ; $6eb2: $00
	nop                                              ; $6eb3: $00
	nop                                              ; $6eb4: $00
	nop                                              ; $6eb5: $00
	nop                                              ; $6eb6: $00
	nop                                              ; $6eb7: $00
	nop                                              ; $6eb8: $00
	nop                                              ; $6eb9: $00
	nop                                              ; $6eba: $00
	nop                                              ; $6ebb: $00
	nop                                              ; $6ebc: $00
	nop                                              ; $6ebd: $00
	nop                                              ; $6ebe: $00
	nop                                              ; $6ebf: $00
	nop                                              ; $6ec0: $00
	nop                                              ; $6ec1: $00
	nop                                              ; $6ec2: $00
	nop                                              ; $6ec3: $00
	nop                                              ; $6ec4: $00
	nop                                              ; $6ec5: $00
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
	nop                                              ; $6ed5: $00
	nop                                              ; $6ed6: $00
	nop                                              ; $6ed7: $00
	nop                                              ; $6ed8: $00
	nop                                              ; $6ed9: $00
	nop                                              ; $6eda: $00
	nop                                              ; $6edb: $00
	nop                                              ; $6edc: $00
	nop                                              ; $6edd: $00
	nop                                              ; $6ede: $00
	nop                                              ; $6edf: $00
	nop                                              ; $6ee0: $00
	nop                                              ; $6ee1: $00
	nop                                              ; $6ee2: $00
	nop                                              ; $6ee3: $00
	nop                                              ; $6ee4: $00
	nop                                              ; $6ee5: $00
	nop                                              ; $6ee6: $00
	nop                                              ; $6ee7: $00
	nop                                              ; $6ee8: $00
	nop                                              ; $6ee9: $00
	nop                                              ; $6eea: $00
	nop                                              ; $6eeb: $00
	nop                                              ; $6eec: $00
	nop                                              ; $6eed: $00
	nop                                              ; $6eee: $00
	nop                                              ; $6eef: $00
	nop                                              ; $6ef0: $00
	nop                                              ; $6ef1: $00
	nop                                              ; $6ef2: $00
	nop                                              ; $6ef3: $00
	nop                                              ; $6ef4: $00
	nop                                              ; $6ef5: $00
	nop                                              ; $6ef6: $00
	nop                                              ; $6ef7: $00
	nop                                              ; $6ef8: $00
	nop                                              ; $6ef9: $00
	nop                                              ; $6efa: $00
	nop                                              ; $6efb: $00
	nop                                              ; $6efc: $00
	nop                                              ; $6efd: $00
	nop                                              ; $6efe: $00
	nop                                              ; $6eff: $00
	nop                                              ; $6f00: $00
	nop                                              ; $6f01: $00
	nop                                              ; $6f02: $00
	nop                                              ; $6f03: $00
	nop                                              ; $6f04: $00
	nop                                              ; $6f05: $00
	nop                                              ; $6f06: $00
	nop                                              ; $6f07: $00
	nop                                              ; $6f08: $00
	nop                                              ; $6f09: $00
	nop                                              ; $6f0a: $00
	nop                                              ; $6f0b: $00
	nop                                              ; $6f0c: $00
	nop                                              ; $6f0d: $00
	nop                                              ; $6f0e: $00
	nop                                              ; $6f0f: $00
	nop                                              ; $6f10: $00
	nop                                              ; $6f11: $00
	nop                                              ; $6f12: $00
	nop                                              ; $6f13: $00
	nop                                              ; $6f14: $00
	nop                                              ; $6f15: $00
	nop                                              ; $6f16: $00
	nop                                              ; $6f17: $00
	nop                                              ; $6f18: $00
	nop                                              ; $6f19: $00
	nop                                              ; $6f1a: $00
	nop                                              ; $6f1b: $00
	nop                                              ; $6f1c: $00
	nop                                              ; $6f1d: $00
	nop                                              ; $6f1e: $00
	nop                                              ; $6f1f: $00
	nop                                              ; $6f20: $00
	nop                                              ; $6f21: $00
	nop                                              ; $6f22: $00
	nop                                              ; $6f23: $00
	nop                                              ; $6f24: $00
	nop                                              ; $6f25: $00
	nop                                              ; $6f26: $00
	nop                                              ; $6f27: $00
	nop                                              ; $6f28: $00
	nop                                              ; $6f29: $00
	nop                                              ; $6f2a: $00
	nop                                              ; $6f2b: $00
	nop                                              ; $6f2c: $00
	nop                                              ; $6f2d: $00
	nop                                              ; $6f2e: $00
	nop                                              ; $6f2f: $00
	nop                                              ; $6f30: $00
	nop                                              ; $6f31: $00
	nop                                              ; $6f32: $00
	nop                                              ; $6f33: $00
	nop                                              ; $6f34: $00
	nop                                              ; $6f35: $00
	nop                                              ; $6f36: $00
	nop                                              ; $6f37: $00
	nop                                              ; $6f38: $00
	nop                                              ; $6f39: $00
	nop                                              ; $6f3a: $00
	nop                                              ; $6f3b: $00
	nop                                              ; $6f3c: $00
	nop                                              ; $6f3d: $00
	nop                                              ; $6f3e: $00
	nop                                              ; $6f3f: $00
	nop                                              ; $6f40: $00
	nop                                              ; $6f41: $00
	nop                                              ; $6f42: $00
	nop                                              ; $6f43: $00
	nop                                              ; $6f44: $00
	nop                                              ; $6f45: $00
	nop                                              ; $6f46: $00
	nop                                              ; $6f47: $00
	nop                                              ; $6f48: $00
	nop                                              ; $6f49: $00
	nop                                              ; $6f4a: $00
	nop                                              ; $6f4b: $00
	nop                                              ; $6f4c: $00
	nop                                              ; $6f4d: $00
	nop                                              ; $6f4e: $00
	nop                                              ; $6f4f: $00
	nop                                              ; $6f50: $00
	nop                                              ; $6f51: $00
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
	nop                                              ; $6f5d: $00
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
	nop                                              ; $6f69: $00
	nop                                              ; $6f6a: $00
	nop                                              ; $6f6b: $00
	nop                                              ; $6f6c: $00
	nop                                              ; $6f6d: $00
	nop                                              ; $6f6e: $00
	nop                                              ; $6f6f: $00
	nop                                              ; $6f70: $00
	nop                                              ; $6f71: $00
	nop                                              ; $6f72: $00
	nop                                              ; $6f73: $00
	nop                                              ; $6f74: $00
	nop                                              ; $6f75: $00
	nop                                              ; $6f76: $00
	nop                                              ; $6f77: $00
	nop                                              ; $6f78: $00
	nop                                              ; $6f79: $00
	nop                                              ; $6f7a: $00
	nop                                              ; $6f7b: $00
	nop                                              ; $6f7c: $00
	nop                                              ; $6f7d: $00
	nop                                              ; $6f7e: $00
	nop                                              ; $6f7f: $00
	nop                                              ; $6f80: $00
	nop                                              ; $6f81: $00
	nop                                              ; $6f82: $00
	nop                                              ; $6f83: $00
	nop                                              ; $6f84: $00
	nop                                              ; $6f85: $00
	nop                                              ; $6f86: $00
	nop                                              ; $6f87: $00
	nop                                              ; $6f88: $00
	nop                                              ; $6f89: $00
	nop                                              ; $6f8a: $00
	nop                                              ; $6f8b: $00
	nop                                              ; $6f8c: $00
	nop                                              ; $6f8d: $00
	nop                                              ; $6f8e: $00
	nop                                              ; $6f8f: $00
	nop                                              ; $6f90: $00
	nop                                              ; $6f91: $00
	nop                                              ; $6f92: $00
	nop                                              ; $6f93: $00
	nop                                              ; $6f94: $00
	nop                                              ; $6f95: $00
	nop                                              ; $6f96: $00
	nop                                              ; $6f97: $00
	nop                                              ; $6f98: $00
	nop                                              ; $6f99: $00
	nop                                              ; $6f9a: $00
	nop                                              ; $6f9b: $00
	nop                                              ; $6f9c: $00
	nop                                              ; $6f9d: $00
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
	nop                                              ; $6fa9: $00
	nop                                              ; $6faa: $00
	nop                                              ; $6fab: $00
	nop                                              ; $6fac: $00
	nop                                              ; $6fad: $00
	nop                                              ; $6fae: $00
	nop                                              ; $6faf: $00
	nop                                              ; $6fb0: $00
	nop                                              ; $6fb1: $00
	nop                                              ; $6fb2: $00
	nop                                              ; $6fb3: $00
	nop                                              ; $6fb4: $00
	nop                                              ; $6fb5: $00
	nop                                              ; $6fb6: $00
	nop                                              ; $6fb7: $00
	nop                                              ; $6fb8: $00
	nop                                              ; $6fb9: $00
	nop                                              ; $6fba: $00
	nop                                              ; $6fbb: $00
	nop                                              ; $6fbc: $00
	nop                                              ; $6fbd: $00
	nop                                              ; $6fbe: $00
	nop                                              ; $6fbf: $00
	nop                                              ; $6fc0: $00
	nop                                              ; $6fc1: $00
	nop                                              ; $6fc2: $00
	nop                                              ; $6fc3: $00
	nop                                              ; $6fc4: $00
	nop                                              ; $6fc5: $00
	nop                                              ; $6fc6: $00
	nop                                              ; $6fc7: $00
	nop                                              ; $6fc8: $00
	nop                                              ; $6fc9: $00
	nop                                              ; $6fca: $00
	nop                                              ; $6fcb: $00
	nop                                              ; $6fcc: $00
	nop                                              ; $6fcd: $00
	nop                                              ; $6fce: $00
	nop                                              ; $6fcf: $00
	nop                                              ; $6fd0: $00
	nop                                              ; $6fd1: $00
	nop                                              ; $6fd2: $00
	nop                                              ; $6fd3: $00
	nop                                              ; $6fd4: $00
	nop                                              ; $6fd5: $00
	nop                                              ; $6fd6: $00
	nop                                              ; $6fd7: $00
	nop                                              ; $6fd8: $00
	nop                                              ; $6fd9: $00
	nop                                              ; $6fda: $00
	nop                                              ; $6fdb: $00
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
	nop                                              ; $70c3: $00
	nop                                              ; $70c4: $00
	nop                                              ; $70c5: $00
	nop                                              ; $70c6: $00
	nop                                              ; $70c7: $00
	nop                                              ; $70c8: $00
	nop                                              ; $70c9: $00
	nop                                              ; $70ca: $00
	nop                                              ; $70cb: $00
	nop                                              ; $70cc: $00
	nop                                              ; $70cd: $00
	nop                                              ; $70ce: $00
	nop                                              ; $70cf: $00
	nop                                              ; $70d0: $00
	nop                                              ; $70d1: $00
	nop                                              ; $70d2: $00
	nop                                              ; $70d3: $00
	nop                                              ; $70d4: $00
	nop                                              ; $70d5: $00
	nop                                              ; $70d6: $00
	nop                                              ; $70d7: $00
	nop                                              ; $70d8: $00
	nop                                              ; $70d9: $00
	nop                                              ; $70da: $00
	nop                                              ; $70db: $00
	nop                                              ; $70dc: $00
	nop                                              ; $70dd: $00
	nop                                              ; $70de: $00
	nop                                              ; $70df: $00
	nop                                              ; $70e0: $00
	nop                                              ; $70e1: $00
	nop                                              ; $70e2: $00
	nop                                              ; $70e3: $00
	nop                                              ; $70e4: $00
	nop                                              ; $70e5: $00
	nop                                              ; $70e6: $00
	nop                                              ; $70e7: $00
	nop                                              ; $70e8: $00
	nop                                              ; $70e9: $00
	nop                                              ; $70ea: $00
	nop                                              ; $70eb: $00
	nop                                              ; $70ec: $00
	nop                                              ; $70ed: $00
	nop                                              ; $70ee: $00
	nop                                              ; $70ef: $00
	nop                                              ; $70f0: $00
	nop                                              ; $70f1: $00
	nop                                              ; $70f2: $00
	nop                                              ; $70f3: $00
	nop                                              ; $70f4: $00
	nop                                              ; $70f5: $00
	nop                                              ; $70f6: $00
	nop                                              ; $70f7: $00
	nop                                              ; $70f8: $00
	nop                                              ; $70f9: $00
	nop                                              ; $70fa: $00
	nop                                              ; $70fb: $00
	nop                                              ; $70fc: $00
	nop                                              ; $70fd: $00
	nop                                              ; $70fe: $00
	nop                                              ; $70ff: $00
	nop                                              ; $7100: $00
	nop                                              ; $7101: $00
	nop                                              ; $7102: $00
	nop                                              ; $7103: $00
	nop                                              ; $7104: $00
	nop                                              ; $7105: $00
	nop                                              ; $7106: $00
	nop                                              ; $7107: $00
	nop                                              ; $7108: $00
	nop                                              ; $7109: $00
	nop                                              ; $710a: $00
	nop                                              ; $710b: $00
	nop                                              ; $710c: $00
	nop                                              ; $710d: $00
	nop                                              ; $710e: $00
	nop                                              ; $710f: $00
	nop                                              ; $7110: $00
	nop                                              ; $7111: $00
	nop                                              ; $7112: $00
	nop                                              ; $7113: $00
	nop                                              ; $7114: $00
	nop                                              ; $7115: $00
	nop                                              ; $7116: $00
	nop                                              ; $7117: $00
	nop                                              ; $7118: $00
	nop                                              ; $7119: $00
	nop                                              ; $711a: $00
	nop                                              ; $711b: $00
	nop                                              ; $711c: $00
	nop                                              ; $711d: $00
	nop                                              ; $711e: $00
	nop                                              ; $711f: $00
	nop                                              ; $7120: $00
	nop                                              ; $7121: $00
	nop                                              ; $7122: $00
	nop                                              ; $7123: $00
	nop                                              ; $7124: $00
	nop                                              ; $7125: $00
	nop                                              ; $7126: $00
	nop                                              ; $7127: $00
	nop                                              ; $7128: $00
	nop                                              ; $7129: $00
	nop                                              ; $712a: $00
	nop                                              ; $712b: $00
	nop                                              ; $712c: $00
	nop                                              ; $712d: $00
	nop                                              ; $712e: $00
	nop                                              ; $712f: $00
	nop                                              ; $7130: $00
	nop                                              ; $7131: $00
	nop                                              ; $7132: $00
	nop                                              ; $7133: $00
	nop                                              ; $7134: $00
	nop                                              ; $7135: $00
	nop                                              ; $7136: $00
	nop                                              ; $7137: $00
	nop                                              ; $7138: $00
	nop                                              ; $7139: $00
	nop                                              ; $713a: $00
	nop                                              ; $713b: $00
	nop                                              ; $713c: $00
	nop                                              ; $713d: $00
	nop                                              ; $713e: $00
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
	nop                                              ; $72a3: $00
	nop                                              ; $72a4: $00
	nop                                              ; $72a5: $00
	nop                                              ; $72a6: $00
	nop                                              ; $72a7: $00
	nop                                              ; $72a8: $00
	nop                                              ; $72a9: $00
	nop                                              ; $72aa: $00
	nop                                              ; $72ab: $00
	nop                                              ; $72ac: $00
	nop                                              ; $72ad: $00
	nop                                              ; $72ae: $00
	nop                                              ; $72af: $00
	nop                                              ; $72b0: $00
	nop                                              ; $72b1: $00
	nop                                              ; $72b2: $00
	nop                                              ; $72b3: $00
	nop                                              ; $72b4: $00
	nop                                              ; $72b5: $00
	nop                                              ; $72b6: $00
	nop                                              ; $72b7: $00
	nop                                              ; $72b8: $00
	nop                                              ; $72b9: $00
	nop                                              ; $72ba: $00
	nop                                              ; $72bb: $00
	nop                                              ; $72bc: $00
	nop                                              ; $72bd: $00
	nop                                              ; $72be: $00
	nop                                              ; $72bf: $00
	nop                                              ; $72c0: $00
	nop                                              ; $72c1: $00
	nop                                              ; $72c2: $00
	nop                                              ; $72c3: $00
	nop                                              ; $72c4: $00
	nop                                              ; $72c5: $00
	nop                                              ; $72c6: $00
	nop                                              ; $72c7: $00
	nop                                              ; $72c8: $00
	nop                                              ; $72c9: $00
	nop                                              ; $72ca: $00
	nop                                              ; $72cb: $00
	nop                                              ; $72cc: $00
	nop                                              ; $72cd: $00
	nop                                              ; $72ce: $00
	nop                                              ; $72cf: $00
	nop                                              ; $72d0: $00
	nop                                              ; $72d1: $00
	nop                                              ; $72d2: $00
	nop                                              ; $72d3: $00
	nop                                              ; $72d4: $00
	nop                                              ; $72d5: $00
	nop                                              ; $72d6: $00
	nop                                              ; $72d7: $00
	nop                                              ; $72d8: $00
	nop                                              ; $72d9: $00
	nop                                              ; $72da: $00
	nop                                              ; $72db: $00
	nop                                              ; $72dc: $00
	nop                                              ; $72dd: $00
	nop                                              ; $72de: $00
	nop                                              ; $72df: $00
	nop                                              ; $72e0: $00
	nop                                              ; $72e1: $00
	nop                                              ; $72e2: $00
	nop                                              ; $72e3: $00
	nop                                              ; $72e4: $00
	nop                                              ; $72e5: $00
	nop                                              ; $72e6: $00
	nop                                              ; $72e7: $00
	nop                                              ; $72e8: $00
	nop                                              ; $72e9: $00
	nop                                              ; $72ea: $00
	nop                                              ; $72eb: $00
	nop                                              ; $72ec: $00
	nop                                              ; $72ed: $00
	nop                                              ; $72ee: $00
	nop                                              ; $72ef: $00
	nop                                              ; $72f0: $00
	nop                                              ; $72f1: $00
	nop                                              ; $72f2: $00
	nop                                              ; $72f3: $00
	nop                                              ; $72f4: $00
	nop                                              ; $72f5: $00
	nop                                              ; $72f6: $00
	nop                                              ; $72f7: $00
	nop                                              ; $72f8: $00
	nop                                              ; $72f9: $00
	nop                                              ; $72fa: $00
	nop                                              ; $72fb: $00
	nop                                              ; $72fc: $00
	nop                                              ; $72fd: $00
	nop                                              ; $72fe: $00
	nop                                              ; $72ff: $00
	nop                                              ; $7300: $00
	nop                                              ; $7301: $00
	nop                                              ; $7302: $00
	nop                                              ; $7303: $00
	nop                                              ; $7304: $00
	nop                                              ; $7305: $00
	nop                                              ; $7306: $00
	nop                                              ; $7307: $00
	nop                                              ; $7308: $00
	nop                                              ; $7309: $00
	nop                                              ; $730a: $00
	nop                                              ; $730b: $00
	nop                                              ; $730c: $00
	nop                                              ; $730d: $00
	nop                                              ; $730e: $00
	nop                                              ; $730f: $00
	nop                                              ; $7310: $00
	nop                                              ; $7311: $00
	nop                                              ; $7312: $00
	nop                                              ; $7313: $00
	nop                                              ; $7314: $00
	nop                                              ; $7315: $00
	nop                                              ; $7316: $00
	nop                                              ; $7317: $00
	nop                                              ; $7318: $00
	nop                                              ; $7319: $00
	nop                                              ; $731a: $00
	nop                                              ; $731b: $00
	nop                                              ; $731c: $00
	nop                                              ; $731d: $00
	nop                                              ; $731e: $00
	nop                                              ; $731f: $00
	nop                                              ; $7320: $00
	nop                                              ; $7321: $00
	nop                                              ; $7322: $00
	nop                                              ; $7323: $00
	nop                                              ; $7324: $00
	nop                                              ; $7325: $00
	nop                                              ; $7326: $00
	nop                                              ; $7327: $00
	nop                                              ; $7328: $00
	nop                                              ; $7329: $00
	nop                                              ; $732a: $00
	nop                                              ; $732b: $00
	nop                                              ; $732c: $00
	nop                                              ; $732d: $00
	nop                                              ; $732e: $00
	nop                                              ; $732f: $00
	nop                                              ; $7330: $00
	nop                                              ; $7331: $00
	nop                                              ; $7332: $00
	nop                                              ; $7333: $00
	nop                                              ; $7334: $00
	nop                                              ; $7335: $00
	nop                                              ; $7336: $00
	nop                                              ; $7337: $00
	nop                                              ; $7338: $00
	nop                                              ; $7339: $00
	nop                                              ; $733a: $00
	nop                                              ; $733b: $00
	nop                                              ; $733c: $00
	nop                                              ; $733d: $00
	nop                                              ; $733e: $00
	nop                                              ; $733f: $00
	nop                                              ; $7340: $00
	nop                                              ; $7341: $00
	nop                                              ; $7342: $00
	nop                                              ; $7343: $00
	nop                                              ; $7344: $00
	nop                                              ; $7345: $00
	nop                                              ; $7346: $00
	nop                                              ; $7347: $00
	nop                                              ; $7348: $00
	nop                                              ; $7349: $00
	nop                                              ; $734a: $00
	nop                                              ; $734b: $00
	nop                                              ; $734c: $00
	nop                                              ; $734d: $00
	nop                                              ; $734e: $00
	nop                                              ; $734f: $00
	nop                                              ; $7350: $00
	nop                                              ; $7351: $00
	nop                                              ; $7352: $00
	nop                                              ; $7353: $00
	nop                                              ; $7354: $00
	nop                                              ; $7355: $00
	nop                                              ; $7356: $00
	nop                                              ; $7357: $00
	nop                                              ; $7358: $00
	nop                                              ; $7359: $00
	nop                                              ; $735a: $00
	nop                                              ; $735b: $00
	nop                                              ; $735c: $00
	nop                                              ; $735d: $00
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
	nop                                              ; $74a5: $00
	nop                                              ; $74a6: $00
	nop                                              ; $74a7: $00
	nop                                              ; $74a8: $00
	nop                                              ; $74a9: $00
	nop                                              ; $74aa: $00
	nop                                              ; $74ab: $00
	nop                                              ; $74ac: $00
	nop                                              ; $74ad: $00
	nop                                              ; $74ae: $00
	nop                                              ; $74af: $00
	nop                                              ; $74b0: $00
	nop                                              ; $74b1: $00
	nop                                              ; $74b2: $00
	nop                                              ; $74b3: $00
	nop                                              ; $74b4: $00
	nop                                              ; $74b5: $00
	nop                                              ; $74b6: $00
	nop                                              ; $74b7: $00
	nop                                              ; $74b8: $00
	nop                                              ; $74b9: $00
	nop                                              ; $74ba: $00
	nop                                              ; $74bb: $00
	nop                                              ; $74bc: $00
	nop                                              ; $74bd: $00
	nop                                              ; $74be: $00
	nop                                              ; $74bf: $00
	nop                                              ; $74c0: $00
	nop                                              ; $74c1: $00
	nop                                              ; $74c2: $00
	nop                                              ; $74c3: $00
	nop                                              ; $74c4: $00
	nop                                              ; $74c5: $00
	nop                                              ; $74c6: $00
	nop                                              ; $74c7: $00
	nop                                              ; $74c8: $00
	nop                                              ; $74c9: $00
	nop                                              ; $74ca: $00
	nop                                              ; $74cb: $00
	nop                                              ; $74cc: $00
	nop                                              ; $74cd: $00
	nop                                              ; $74ce: $00
	nop                                              ; $74cf: $00
	nop                                              ; $74d0: $00
	nop                                              ; $74d1: $00
	nop                                              ; $74d2: $00
	nop                                              ; $74d3: $00
	nop                                              ; $74d4: $00
	nop                                              ; $74d5: $00
	nop                                              ; $74d6: $00
	nop                                              ; $74d7: $00
	nop                                              ; $74d8: $00
	nop                                              ; $74d9: $00
	nop                                              ; $74da: $00
	nop                                              ; $74db: $00
	nop                                              ; $74dc: $00
	nop                                              ; $74dd: $00
	nop                                              ; $74de: $00
	nop                                              ; $74df: $00
	nop                                              ; $74e0: $00
	nop                                              ; $74e1: $00
	nop                                              ; $74e2: $00
	nop                                              ; $74e3: $00
	nop                                              ; $74e4: $00
	nop                                              ; $74e5: $00
	nop                                              ; $74e6: $00
	nop                                              ; $74e7: $00
	nop                                              ; $74e8: $00
	nop                                              ; $74e9: $00
	nop                                              ; $74ea: $00
	nop                                              ; $74eb: $00
	nop                                              ; $74ec: $00
	nop                                              ; $74ed: $00
	nop                                              ; $74ee: $00
	nop                                              ; $74ef: $00
	nop                                              ; $74f0: $00
	nop                                              ; $74f1: $00
	nop                                              ; $74f2: $00
	nop                                              ; $74f3: $00
	nop                                              ; $74f4: $00
	nop                                              ; $74f5: $00
	nop                                              ; $74f6: $00
	nop                                              ; $74f7: $00
	nop                                              ; $74f8: $00
	nop                                              ; $74f9: $00
	nop                                              ; $74fa: $00
	nop                                              ; $74fb: $00
	nop                                              ; $74fc: $00
	nop                                              ; $74fd: $00
	nop                                              ; $74fe: $00
	nop                                              ; $74ff: $00
	nop                                              ; $7500: $00
	nop                                              ; $7501: $00
	nop                                              ; $7502: $00
	nop                                              ; $7503: $00
	nop                                              ; $7504: $00
	nop                                              ; $7505: $00
	nop                                              ; $7506: $00
	nop                                              ; $7507: $00
	nop                                              ; $7508: $00
	nop                                              ; $7509: $00
	nop                                              ; $750a: $00
	nop                                              ; $750b: $00
	nop                                              ; $750c: $00
	nop                                              ; $750d: $00
	nop                                              ; $750e: $00
	nop                                              ; $750f: $00
	nop                                              ; $7510: $00
	nop                                              ; $7511: $00
	nop                                              ; $7512: $00
	nop                                              ; $7513: $00
	nop                                              ; $7514: $00
	nop                                              ; $7515: $00
	nop                                              ; $7516: $00
	nop                                              ; $7517: $00
	nop                                              ; $7518: $00
	nop                                              ; $7519: $00
	nop                                              ; $751a: $00
	nop                                              ; $751b: $00
	nop                                              ; $751c: $00
	nop                                              ; $751d: $00
	nop                                              ; $751e: $00
	nop                                              ; $751f: $00
	nop                                              ; $7520: $00
	nop                                              ; $7521: $00
	nop                                              ; $7522: $00
	nop                                              ; $7523: $00
	nop                                              ; $7524: $00
	nop                                              ; $7525: $00
	nop                                              ; $7526: $00
	nop                                              ; $7527: $00
	nop                                              ; $7528: $00
	nop                                              ; $7529: $00
	nop                                              ; $752a: $00
	nop                                              ; $752b: $00
	nop                                              ; $752c: $00
	nop                                              ; $752d: $00
	nop                                              ; $752e: $00
	nop                                              ; $752f: $00
	nop                                              ; $7530: $00
	nop                                              ; $7531: $00
	nop                                              ; $7532: $00
	nop                                              ; $7533: $00
	nop                                              ; $7534: $00
	nop                                              ; $7535: $00
	nop                                              ; $7536: $00
	nop                                              ; $7537: $00
	nop                                              ; $7538: $00
	nop                                              ; $7539: $00
	nop                                              ; $753a: $00
	nop                                              ; $753b: $00
	nop                                              ; $753c: $00
	nop                                              ; $753d: $00
	nop                                              ; $753e: $00
	nop                                              ; $753f: $00
	nop                                              ; $7540: $00
	nop                                              ; $7541: $00
	nop                                              ; $7542: $00
	nop                                              ; $7543: $00
	nop                                              ; $7544: $00
	nop                                              ; $7545: $00
	nop                                              ; $7546: $00
	nop                                              ; $7547: $00
	nop                                              ; $7548: $00
	nop                                              ; $7549: $00
	nop                                              ; $754a: $00
	nop                                              ; $754b: $00
	nop                                              ; $754c: $00
	nop                                              ; $754d: $00
	nop                                              ; $754e: $00
	nop                                              ; $754f: $00
	nop                                              ; $7550: $00
	nop                                              ; $7551: $00
	nop                                              ; $7552: $00
	nop                                              ; $7553: $00
	nop                                              ; $7554: $00
	nop                                              ; $7555: $00
	nop                                              ; $7556: $00
	nop                                              ; $7557: $00
	nop                                              ; $7558: $00
	nop                                              ; $7559: $00
	nop                                              ; $755a: $00
	nop                                              ; $755b: $00
	nop                                              ; $755c: $00
	nop                                              ; $755d: $00
	nop                                              ; $755e: $00
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
	nop                                              ; $7800: $00
	nop                                              ; $7801: $00
	nop                                              ; $7802: $00
	nop                                              ; $7803: $00
	nop                                              ; $7804: $00
	nop                                              ; $7805: $00
	nop                                              ; $7806: $00
	nop                                              ; $7807: $00
	nop                                              ; $7808: $00
	nop                                              ; $7809: $00
	nop                                              ; $780a: $00
	nop                                              ; $780b: $00
	nop                                              ; $780c: $00
	nop                                              ; $780d: $00
	nop                                              ; $780e: $00
	nop                                              ; $780f: $00
	nop                                              ; $7810: $00
	nop                                              ; $7811: $00
	nop                                              ; $7812: $00
	nop                                              ; $7813: $00
	nop                                              ; $7814: $00
	nop                                              ; $7815: $00
	nop                                              ; $7816: $00
	nop                                              ; $7817: $00
	nop                                              ; $7818: $00
	nop                                              ; $7819: $00
	nop                                              ; $781a: $00
	nop                                              ; $781b: $00
	nop                                              ; $781c: $00
	nop                                              ; $781d: $00
	nop                                              ; $781e: $00
	nop                                              ; $781f: $00
	nop                                              ; $7820: $00
	nop                                              ; $7821: $00
	nop                                              ; $7822: $00
	nop                                              ; $7823: $00
	nop                                              ; $7824: $00
	nop                                              ; $7825: $00
	nop                                              ; $7826: $00
	nop                                              ; $7827: $00
	nop                                              ; $7828: $00
	nop                                              ; $7829: $00
	nop                                              ; $782a: $00
	nop                                              ; $782b: $00
	nop                                              ; $782c: $00
	nop                                              ; $782d: $00
	nop                                              ; $782e: $00
	nop                                              ; $782f: $00
	nop                                              ; $7830: $00
	nop                                              ; $7831: $00
	nop                                              ; $7832: $00
	nop                                              ; $7833: $00
	nop                                              ; $7834: $00
	nop                                              ; $7835: $00
	nop                                              ; $7836: $00
	nop                                              ; $7837: $00
	nop                                              ; $7838: $00
	nop                                              ; $7839: $00
	nop                                              ; $783a: $00
	nop                                              ; $783b: $00
	nop                                              ; $783c: $00
	nop                                              ; $783d: $00
	nop                                              ; $783e: $00
	nop                                              ; $783f: $00
	nop                                              ; $7840: $00
	nop                                              ; $7841: $00
	nop                                              ; $7842: $00
	nop                                              ; $7843: $00
	nop                                              ; $7844: $00
	nop                                              ; $7845: $00
	nop                                              ; $7846: $00
	nop                                              ; $7847: $00
	nop                                              ; $7848: $00
	nop                                              ; $7849: $00
	nop                                              ; $784a: $00
	nop                                              ; $784b: $00
	nop                                              ; $784c: $00
	nop                                              ; $784d: $00
	nop                                              ; $784e: $00
	nop                                              ; $784f: $00
	nop                                              ; $7850: $00
	nop                                              ; $7851: $00
	nop                                              ; $7852: $00
	nop                                              ; $7853: $00
	nop                                              ; $7854: $00
	nop                                              ; $7855: $00
	nop                                              ; $7856: $00
	nop                                              ; $7857: $00
	nop                                              ; $7858: $00
	nop                                              ; $7859: $00
	nop                                              ; $785a: $00
	nop                                              ; $785b: $00
	nop                                              ; $785c: $00
	nop                                              ; $785d: $00
	nop                                              ; $785e: $00
	nop                                              ; $785f: $00
	nop                                              ; $7860: $00
	nop                                              ; $7861: $00
	nop                                              ; $7862: $00
	nop                                              ; $7863: $00
	nop                                              ; $7864: $00
	nop                                              ; $7865: $00
	nop                                              ; $7866: $00
	nop                                              ; $7867: $00
	nop                                              ; $7868: $00
	nop                                              ; $7869: $00
	nop                                              ; $786a: $00
	nop                                              ; $786b: $00
	nop                                              ; $786c: $00
	nop                                              ; $786d: $00
	nop                                              ; $786e: $00
	nop                                              ; $786f: $00
	nop                                              ; $7870: $00
	nop                                              ; $7871: $00
	nop                                              ; $7872: $00
	nop                                              ; $7873: $00
	nop                                              ; $7874: $00
	nop                                              ; $7875: $00
	nop                                              ; $7876: $00
	nop                                              ; $7877: $00
	nop                                              ; $7878: $00
	nop                                              ; $7879: $00
	nop                                              ; $787a: $00
	nop                                              ; $787b: $00
	nop                                              ; $787c: $00
	nop                                              ; $787d: $00
	nop                                              ; $787e: $00
	nop                                              ; $787f: $00
	nop                                              ; $7880: $00
	nop                                              ; $7881: $00
	nop                                              ; $7882: $00
	nop                                              ; $7883: $00
	nop                                              ; $7884: $00
	nop                                              ; $7885: $00
	nop                                              ; $7886: $00
	nop                                              ; $7887: $00
	nop                                              ; $7888: $00
	nop                                              ; $7889: $00
	nop                                              ; $788a: $00
	nop                                              ; $788b: $00
	nop                                              ; $788c: $00
	nop                                              ; $788d: $00
	nop                                              ; $788e: $00
	nop                                              ; $788f: $00
	nop                                              ; $7890: $00
	nop                                              ; $7891: $00
	nop                                              ; $7892: $00
	nop                                              ; $7893: $00
	nop                                              ; $7894: $00
	nop                                              ; $7895: $00
	nop                                              ; $7896: $00
	nop                                              ; $7897: $00
	nop                                              ; $7898: $00
	nop                                              ; $7899: $00
	nop                                              ; $789a: $00
	nop                                              ; $789b: $00
	nop                                              ; $789c: $00
	nop                                              ; $789d: $00
	nop                                              ; $789e: $00
	nop                                              ; $789f: $00
	nop                                              ; $78a0: $00
	nop                                              ; $78a1: $00
	nop                                              ; $78a2: $00
	nop                                              ; $78a3: $00
	nop                                              ; $78a4: $00
	nop                                              ; $78a5: $00
	nop                                              ; $78a6: $00
	nop                                              ; $78a7: $00
	nop                                              ; $78a8: $00
	nop                                              ; $78a9: $00
	nop                                              ; $78aa: $00
	nop                                              ; $78ab: $00
	nop                                              ; $78ac: $00
	nop                                              ; $78ad: $00
	nop                                              ; $78ae: $00
	nop                                              ; $78af: $00
	nop                                              ; $78b0: $00
	nop                                              ; $78b1: $00
	nop                                              ; $78b2: $00
	nop                                              ; $78b3: $00
	nop                                              ; $78b4: $00
	nop                                              ; $78b5: $00
	nop                                              ; $78b6: $00
	nop                                              ; $78b7: $00
	nop                                              ; $78b8: $00
	nop                                              ; $78b9: $00
	nop                                              ; $78ba: $00
	nop                                              ; $78bb: $00
	nop                                              ; $78bc: $00
	nop                                              ; $78bd: $00
	nop                                              ; $78be: $00
	nop                                              ; $78bf: $00
	nop                                              ; $78c0: $00
	nop                                              ; $78c1: $00
	nop                                              ; $78c2: $00
	nop                                              ; $78c3: $00
	nop                                              ; $78c4: $00
	nop                                              ; $78c5: $00
	nop                                              ; $78c6: $00
	nop                                              ; $78c7: $00
	nop                                              ; $78c8: $00
	nop                                              ; $78c9: $00
	nop                                              ; $78ca: $00
	nop                                              ; $78cb: $00
	nop                                              ; $78cc: $00
	nop                                              ; $78cd: $00
	nop                                              ; $78ce: $00
	nop                                              ; $78cf: $00
	nop                                              ; $78d0: $00
	nop                                              ; $78d1: $00
	nop                                              ; $78d2: $00
	nop                                              ; $78d3: $00
	nop                                              ; $78d4: $00
	nop                                              ; $78d5: $00
	nop                                              ; $78d6: $00
	nop                                              ; $78d7: $00
	nop                                              ; $78d8: $00
	nop                                              ; $78d9: $00
	nop                                              ; $78da: $00
	nop                                              ; $78db: $00
	nop                                              ; $78dc: $00
	nop                                              ; $78dd: $00
	nop                                              ; $78de: $00
	nop                                              ; $78df: $00
	nop                                              ; $78e0: $00
	nop                                              ; $78e1: $00
	nop                                              ; $78e2: $00
	nop                                              ; $78e3: $00
	nop                                              ; $78e4: $00
	nop                                              ; $78e5: $00
	nop                                              ; $78e6: $00
	nop                                              ; $78e7: $00
	nop                                              ; $78e8: $00
	nop                                              ; $78e9: $00
	nop                                              ; $78ea: $00
	nop                                              ; $78eb: $00
	nop                                              ; $78ec: $00
	nop                                              ; $78ed: $00
	nop                                              ; $78ee: $00
	nop                                              ; $78ef: $00
	nop                                              ; $78f0: $00
	nop                                              ; $78f1: $00
	nop                                              ; $78f2: $00
	nop                                              ; $78f3: $00
	nop                                              ; $78f4: $00
	nop                                              ; $78f5: $00
	nop                                              ; $78f6: $00
	nop                                              ; $78f7: $00
	nop                                              ; $78f8: $00
	nop                                              ; $78f9: $00
	nop                                              ; $78fa: $00
	nop                                              ; $78fb: $00
	nop                                              ; $78fc: $00
	nop                                              ; $78fd: $00
	nop                                              ; $78fe: $00
	nop                                              ; $78ff: $00
	nop                                              ; $7900: $00
	nop                                              ; $7901: $00
	nop                                              ; $7902: $00
	nop                                              ; $7903: $00
	nop                                              ; $7904: $00
	nop                                              ; $7905: $00
	nop                                              ; $7906: $00
	nop                                              ; $7907: $00
	nop                                              ; $7908: $00
	nop                                              ; $7909: $00
	nop                                              ; $790a: $00
	nop                                              ; $790b: $00
	nop                                              ; $790c: $00
	nop                                              ; $790d: $00
	nop                                              ; $790e: $00
	nop                                              ; $790f: $00
	nop                                              ; $7910: $00
	nop                                              ; $7911: $00
	nop                                              ; $7912: $00
	nop                                              ; $7913: $00
	nop                                              ; $7914: $00
	nop                                              ; $7915: $00
	nop                                              ; $7916: $00
	nop                                              ; $7917: $00
	nop                                              ; $7918: $00
	nop                                              ; $7919: $00
	nop                                              ; $791a: $00
	nop                                              ; $791b: $00
	nop                                              ; $791c: $00
	nop                                              ; $791d: $00
	nop                                              ; $791e: $00
	nop                                              ; $791f: $00
	nop                                              ; $7920: $00
	nop                                              ; $7921: $00
	nop                                              ; $7922: $00
	nop                                              ; $7923: $00
	nop                                              ; $7924: $00
	nop                                              ; $7925: $00
	nop                                              ; $7926: $00
	nop                                              ; $7927: $00
	nop                                              ; $7928: $00
	nop                                              ; $7929: $00
	nop                                              ; $792a: $00
	nop                                              ; $792b: $00
	nop                                              ; $792c: $00
	nop                                              ; $792d: $00
	nop                                              ; $792e: $00
	nop                                              ; $792f: $00
	nop                                              ; $7930: $00
	nop                                              ; $7931: $00
	nop                                              ; $7932: $00
	nop                                              ; $7933: $00
	nop                                              ; $7934: $00
	nop                                              ; $7935: $00
	nop                                              ; $7936: $00
	nop                                              ; $7937: $00
	nop                                              ; $7938: $00
	nop                                              ; $7939: $00
	nop                                              ; $793a: $00
	nop                                              ; $793b: $00
	nop                                              ; $793c: $00
	nop                                              ; $793d: $00
	nop                                              ; $793e: $00
	nop                                              ; $793f: $00
	nop                                              ; $7940: $00
	nop                                              ; $7941: $00
	nop                                              ; $7942: $00
	nop                                              ; $7943: $00
	nop                                              ; $7944: $00
	nop                                              ; $7945: $00
	nop                                              ; $7946: $00
	nop                                              ; $7947: $00
	nop                                              ; $7948: $00
	nop                                              ; $7949: $00
	nop                                              ; $794a: $00
	nop                                              ; $794b: $00
	nop                                              ; $794c: $00
	nop                                              ; $794d: $00
	nop                                              ; $794e: $00
	nop                                              ; $794f: $00
	nop                                              ; $7950: $00
	nop                                              ; $7951: $00
	nop                                              ; $7952: $00
	nop                                              ; $7953: $00
	nop                                              ; $7954: $00
	nop                                              ; $7955: $00
	nop                                              ; $7956: $00
	nop                                              ; $7957: $00
	nop                                              ; $7958: $00
	nop                                              ; $7959: $00
	nop                                              ; $795a: $00
	nop                                              ; $795b: $00
	nop                                              ; $795c: $00
	nop                                              ; $795d: $00
	nop                                              ; $795e: $00
	nop                                              ; $795f: $00
	nop                                              ; $7960: $00
	nop                                              ; $7961: $00
	nop                                              ; $7962: $00
	nop                                              ; $7963: $00
	nop                                              ; $7964: $00
	nop                                              ; $7965: $00
	nop                                              ; $7966: $00
	nop                                              ; $7967: $00
	nop                                              ; $7968: $00
	nop                                              ; $7969: $00
	nop                                              ; $796a: $00
	nop                                              ; $796b: $00
	nop                                              ; $796c: $00
	nop                                              ; $796d: $00
	nop                                              ; $796e: $00
	nop                                              ; $796f: $00
	nop                                              ; $7970: $00
	nop                                              ; $7971: $00
	nop                                              ; $7972: $00
	nop                                              ; $7973: $00
	nop                                              ; $7974: $00
	nop                                              ; $7975: $00
	nop                                              ; $7976: $00
	nop                                              ; $7977: $00
	nop                                              ; $7978: $00
	nop                                              ; $7979: $00
	nop                                              ; $797a: $00
	nop                                              ; $797b: $00
	nop                                              ; $797c: $00
	nop                                              ; $797d: $00
	nop                                              ; $797e: $00
	nop                                              ; $797f: $00
	nop                                              ; $7980: $00
	nop                                              ; $7981: $00
	nop                                              ; $7982: $00
	nop                                              ; $7983: $00
	nop                                              ; $7984: $00
	nop                                              ; $7985: $00
	nop                                              ; $7986: $00
	nop                                              ; $7987: $00
	nop                                              ; $7988: $00
	nop                                              ; $7989: $00
	nop                                              ; $798a: $00
	nop                                              ; $798b: $00
	nop                                              ; $798c: $00
	nop                                              ; $798d: $00
	nop                                              ; $798e: $00
	nop                                              ; $798f: $00
	nop                                              ; $7990: $00
	nop                                              ; $7991: $00
	nop                                              ; $7992: $00
	nop                                              ; $7993: $00
	nop                                              ; $7994: $00
	nop                                              ; $7995: $00
	nop                                              ; $7996: $00
	nop                                              ; $7997: $00
	nop                                              ; $7998: $00
	nop                                              ; $7999: $00
	nop                                              ; $799a: $00
	nop                                              ; $799b: $00
	nop                                              ; $799c: $00
	nop                                              ; $799d: $00
	nop                                              ; $799e: $00
	nop                                              ; $799f: $00
	nop                                              ; $79a0: $00
	nop                                              ; $79a1: $00
	nop                                              ; $79a2: $00
	nop                                              ; $79a3: $00
	nop                                              ; $79a4: $00
	nop                                              ; $79a5: $00
	nop                                              ; $79a6: $00
	nop                                              ; $79a7: $00
	nop                                              ; $79a8: $00
	nop                                              ; $79a9: $00
	nop                                              ; $79aa: $00
	nop                                              ; $79ab: $00
	nop                                              ; $79ac: $00
	nop                                              ; $79ad: $00
	nop                                              ; $79ae: $00
	nop                                              ; $79af: $00
	nop                                              ; $79b0: $00
	nop                                              ; $79b1: $00
	nop                                              ; $79b2: $00
	nop                                              ; $79b3: $00
	nop                                              ; $79b4: $00
	nop                                              ; $79b5: $00
	nop                                              ; $79b6: $00
	nop                                              ; $79b7: $00
	nop                                              ; $79b8: $00
	nop                                              ; $79b9: $00
	nop                                              ; $79ba: $00
	nop                                              ; $79bb: $00
	nop                                              ; $79bc: $00
	nop                                              ; $79bd: $00
	nop                                              ; $79be: $00
	nop                                              ; $79bf: $00
	nop                                              ; $79c0: $00
	nop                                              ; $79c1: $00
	nop                                              ; $79c2: $00
	nop                                              ; $79c3: $00
	nop                                              ; $79c4: $00
	nop                                              ; $79c5: $00
	nop                                              ; $79c6: $00
	nop                                              ; $79c7: $00
	nop                                              ; $79c8: $00
	nop                                              ; $79c9: $00
	nop                                              ; $79ca: $00
	nop                                              ; $79cb: $00
	nop                                              ; $79cc: $00
	nop                                              ; $79cd: $00
	nop                                              ; $79ce: $00
	nop                                              ; $79cf: $00
	nop                                              ; $79d0: $00
	nop                                              ; $79d1: $00
	nop                                              ; $79d2: $00
	nop                                              ; $79d3: $00
	nop                                              ; $79d4: $00
	nop                                              ; $79d5: $00
	nop                                              ; $79d6: $00
	nop                                              ; $79d7: $00
	nop                                              ; $79d8: $00
	nop                                              ; $79d9: $00
	nop                                              ; $79da: $00
	nop                                              ; $79db: $00
	nop                                              ; $79dc: $00
	nop                                              ; $79dd: $00
	nop                                              ; $79de: $00
	nop                                              ; $79df: $00
	nop                                              ; $79e0: $00
	nop                                              ; $79e1: $00
	nop                                              ; $79e2: $00
	nop                                              ; $79e3: $00
	nop                                              ; $79e4: $00
	nop                                              ; $79e5: $00
	nop                                              ; $79e6: $00
	nop                                              ; $79e7: $00
	nop                                              ; $79e8: $00
	nop                                              ; $79e9: $00
	nop                                              ; $79ea: $00
	nop                                              ; $79eb: $00
	nop                                              ; $79ec: $00
	nop                                              ; $79ed: $00
	nop                                              ; $79ee: $00
	nop                                              ; $79ef: $00
	nop                                              ; $79f0: $00
	nop                                              ; $79f1: $00
	nop                                              ; $79f2: $00
	nop                                              ; $79f3: $00
	nop                                              ; $79f4: $00
	nop                                              ; $79f5: $00
	nop                                              ; $79f6: $00
	nop                                              ; $79f7: $00
	nop                                              ; $79f8: $00
	nop                                              ; $79f9: $00
	nop                                              ; $79fa: $00
	nop                                              ; $79fb: $00
	nop                                              ; $79fc: $00
	nop                                              ; $79fd: $00
	nop                                              ; $79fe: $00
	nop                                              ; $79ff: $00
	nop                                              ; $7a00: $00
	nop                                              ; $7a01: $00
	nop                                              ; $7a02: $00
	nop                                              ; $7a03: $00
	nop                                              ; $7a04: $00
	nop                                              ; $7a05: $00
	nop                                              ; $7a06: $00
	nop                                              ; $7a07: $00
	nop                                              ; $7a08: $00
	nop                                              ; $7a09: $00
	nop                                              ; $7a0a: $00
	nop                                              ; $7a0b: $00
	nop                                              ; $7a0c: $00
	nop                                              ; $7a0d: $00
	nop                                              ; $7a0e: $00
	nop                                              ; $7a0f: $00
	nop                                              ; $7a10: $00
	nop                                              ; $7a11: $00
	nop                                              ; $7a12: $00
	nop                                              ; $7a13: $00
	nop                                              ; $7a14: $00
	nop                                              ; $7a15: $00
	nop                                              ; $7a16: $00
	nop                                              ; $7a17: $00
	nop                                              ; $7a18: $00
	nop                                              ; $7a19: $00
	nop                                              ; $7a1a: $00
	nop                                              ; $7a1b: $00
	nop                                              ; $7a1c: $00
	nop                                              ; $7a1d: $00
	nop                                              ; $7a1e: $00
	nop                                              ; $7a1f: $00
	nop                                              ; $7a20: $00
	nop                                              ; $7a21: $00
	nop                                              ; $7a22: $00
	nop                                              ; $7a23: $00
	nop                                              ; $7a24: $00
	nop                                              ; $7a25: $00
	nop                                              ; $7a26: $00
	nop                                              ; $7a27: $00
	nop                                              ; $7a28: $00
	nop                                              ; $7a29: $00
	nop                                              ; $7a2a: $00
	nop                                              ; $7a2b: $00
	nop                                              ; $7a2c: $00
	nop                                              ; $7a2d: $00
	nop                                              ; $7a2e: $00
	nop                                              ; $7a2f: $00
	nop                                              ; $7a30: $00
	nop                                              ; $7a31: $00
	nop                                              ; $7a32: $00
	nop                                              ; $7a33: $00
	nop                                              ; $7a34: $00
	nop                                              ; $7a35: $00
	nop                                              ; $7a36: $00
	nop                                              ; $7a37: $00
	nop                                              ; $7a38: $00
	nop                                              ; $7a39: $00
	nop                                              ; $7a3a: $00
	nop                                              ; $7a3b: $00
	nop                                              ; $7a3c: $00
	nop                                              ; $7a3d: $00
	nop                                              ; $7a3e: $00
	nop                                              ; $7a3f: $00
	nop                                              ; $7a40: $00
	nop                                              ; $7a41: $00
	nop                                              ; $7a42: $00
	nop                                              ; $7a43: $00
	nop                                              ; $7a44: $00
	nop                                              ; $7a45: $00
	nop                                              ; $7a46: $00
	nop                                              ; $7a47: $00
	nop                                              ; $7a48: $00
	nop                                              ; $7a49: $00
	nop                                              ; $7a4a: $00
	nop                                              ; $7a4b: $00
	nop                                              ; $7a4c: $00
	nop                                              ; $7a4d: $00
	nop                                              ; $7a4e: $00
	nop                                              ; $7a4f: $00
	nop                                              ; $7a50: $00
	nop                                              ; $7a51: $00
	nop                                              ; $7a52: $00
	nop                                              ; $7a53: $00
	nop                                              ; $7a54: $00
	nop                                              ; $7a55: $00
	nop                                              ; $7a56: $00
	nop                                              ; $7a57: $00
	nop                                              ; $7a58: $00
	nop                                              ; $7a59: $00
	nop                                              ; $7a5a: $00
	nop                                              ; $7a5b: $00
	nop                                              ; $7a5c: $00
	nop                                              ; $7a5d: $00
	nop                                              ; $7a5e: $00
	nop                                              ; $7a5f: $00
	nop                                              ; $7a60: $00
	nop                                              ; $7a61: $00
	nop                                              ; $7a62: $00
	nop                                              ; $7a63: $00
	nop                                              ; $7a64: $00
	nop                                              ; $7a65: $00
	nop                                              ; $7a66: $00
	nop                                              ; $7a67: $00
	nop                                              ; $7a68: $00
	nop                                              ; $7a69: $00
	nop                                              ; $7a6a: $00
	nop                                              ; $7a6b: $00
	nop                                              ; $7a6c: $00
	nop                                              ; $7a6d: $00
	nop                                              ; $7a6e: $00
	nop                                              ; $7a6f: $00
	nop                                              ; $7a70: $00
	nop                                              ; $7a71: $00
	nop                                              ; $7a72: $00
	nop                                              ; $7a73: $00
	nop                                              ; $7a74: $00
	nop                                              ; $7a75: $00
	nop                                              ; $7a76: $00
	nop                                              ; $7a77: $00
	nop                                              ; $7a78: $00
	nop                                              ; $7a79: $00
	nop                                              ; $7a7a: $00
	nop                                              ; $7a7b: $00
	nop                                              ; $7a7c: $00
	nop                                              ; $7a7d: $00
	nop                                              ; $7a7e: $00
	nop                                              ; $7a7f: $00
	nop                                              ; $7a80: $00
	nop                                              ; $7a81: $00
	nop                                              ; $7a82: $00
	nop                                              ; $7a83: $00
	nop                                              ; $7a84: $00
	nop                                              ; $7a85: $00
	nop                                              ; $7a86: $00
	nop                                              ; $7a87: $00
	nop                                              ; $7a88: $00
	nop                                              ; $7a89: $00
	nop                                              ; $7a8a: $00
	nop                                              ; $7a8b: $00
	nop                                              ; $7a8c: $00
	nop                                              ; $7a8d: $00
	nop                                              ; $7a8e: $00
	nop                                              ; $7a8f: $00
	nop                                              ; $7a90: $00
	nop                                              ; $7a91: $00
	nop                                              ; $7a92: $00
	nop                                              ; $7a93: $00
	nop                                              ; $7a94: $00
	nop                                              ; $7a95: $00
	nop                                              ; $7a96: $00
	nop                                              ; $7a97: $00
	nop                                              ; $7a98: $00
	nop                                              ; $7a99: $00
	nop                                              ; $7a9a: $00
	nop                                              ; $7a9b: $00
	nop                                              ; $7a9c: $00
	nop                                              ; $7a9d: $00
	nop                                              ; $7a9e: $00
	nop                                              ; $7a9f: $00
	nop                                              ; $7aa0: $00
	nop                                              ; $7aa1: $00
	nop                                              ; $7aa2: $00
	nop                                              ; $7aa3: $00
	nop                                              ; $7aa4: $00
	nop                                              ; $7aa5: $00
	nop                                              ; $7aa6: $00
	nop                                              ; $7aa7: $00
	nop                                              ; $7aa8: $00
	nop                                              ; $7aa9: $00
	nop                                              ; $7aaa: $00
	nop                                              ; $7aab: $00
	nop                                              ; $7aac: $00
	nop                                              ; $7aad: $00
	nop                                              ; $7aae: $00
	nop                                              ; $7aaf: $00
	nop                                              ; $7ab0: $00
	nop                                              ; $7ab1: $00
	nop                                              ; $7ab2: $00
	nop                                              ; $7ab3: $00
	nop                                              ; $7ab4: $00
	nop                                              ; $7ab5: $00
	nop                                              ; $7ab6: $00
	nop                                              ; $7ab7: $00
	nop                                              ; $7ab8: $00
	nop                                              ; $7ab9: $00
	nop                                              ; $7aba: $00
	nop                                              ; $7abb: $00
	nop                                              ; $7abc: $00
	nop                                              ; $7abd: $00
	nop                                              ; $7abe: $00
	nop                                              ; $7abf: $00
	nop                                              ; $7ac0: $00
	nop                                              ; $7ac1: $00
	nop                                              ; $7ac2: $00
	nop                                              ; $7ac3: $00
	nop                                              ; $7ac4: $00
	nop                                              ; $7ac5: $00
	nop                                              ; $7ac6: $00
	nop                                              ; $7ac7: $00
	nop                                              ; $7ac8: $00
	nop                                              ; $7ac9: $00
	nop                                              ; $7aca: $00
	nop                                              ; $7acb: $00
	nop                                              ; $7acc: $00
	nop                                              ; $7acd: $00
	nop                                              ; $7ace: $00
	nop                                              ; $7acf: $00
	nop                                              ; $7ad0: $00
	nop                                              ; $7ad1: $00
	nop                                              ; $7ad2: $00
	nop                                              ; $7ad3: $00
	nop                                              ; $7ad4: $00
	nop                                              ; $7ad5: $00
	nop                                              ; $7ad6: $00
	nop                                              ; $7ad7: $00
	nop                                              ; $7ad8: $00
	nop                                              ; $7ad9: $00
	nop                                              ; $7ada: $00
	nop                                              ; $7adb: $00
	nop                                              ; $7adc: $00
	nop                                              ; $7add: $00
	nop                                              ; $7ade: $00
	nop                                              ; $7adf: $00
	nop                                              ; $7ae0: $00
	nop                                              ; $7ae1: $00
	nop                                              ; $7ae2: $00
	nop                                              ; $7ae3: $00
	nop                                              ; $7ae4: $00
	nop                                              ; $7ae5: $00
	nop                                              ; $7ae6: $00
	nop                                              ; $7ae7: $00
	nop                                              ; $7ae8: $00
	nop                                              ; $7ae9: $00
	nop                                              ; $7aea: $00
	nop                                              ; $7aeb: $00
	nop                                              ; $7aec: $00
	nop                                              ; $7aed: $00
	nop                                              ; $7aee: $00
	nop                                              ; $7aef: $00
	nop                                              ; $7af0: $00
	nop                                              ; $7af1: $00
	nop                                              ; $7af2: $00
	nop                                              ; $7af3: $00
	nop                                              ; $7af4: $00
	nop                                              ; $7af5: $00
	nop                                              ; $7af6: $00
	nop                                              ; $7af7: $00
	nop                                              ; $7af8: $00
	nop                                              ; $7af9: $00
	nop                                              ; $7afa: $00
	nop                                              ; $7afb: $00
	nop                                              ; $7afc: $00
	nop                                              ; $7afd: $00
	nop                                              ; $7afe: $00
	nop                                              ; $7aff: $00
	nop                                              ; $7b00: $00
	nop                                              ; $7b01: $00
	nop                                              ; $7b02: $00
	nop                                              ; $7b03: $00
	nop                                              ; $7b04: $00
	nop                                              ; $7b05: $00
	nop                                              ; $7b06: $00
	nop                                              ; $7b07: $00
	nop                                              ; $7b08: $00
	nop                                              ; $7b09: $00
	nop                                              ; $7b0a: $00
	nop                                              ; $7b0b: $00
	nop                                              ; $7b0c: $00
	nop                                              ; $7b0d: $00
	nop                                              ; $7b0e: $00
	nop                                              ; $7b0f: $00
	nop                                              ; $7b10: $00
	nop                                              ; $7b11: $00
	nop                                              ; $7b12: $00
	nop                                              ; $7b13: $00
	nop                                              ; $7b14: $00
	nop                                              ; $7b15: $00
	nop                                              ; $7b16: $00
	nop                                              ; $7b17: $00
	nop                                              ; $7b18: $00
	nop                                              ; $7b19: $00
	nop                                              ; $7b1a: $00
	nop                                              ; $7b1b: $00
	nop                                              ; $7b1c: $00
	nop                                              ; $7b1d: $00
	nop                                              ; $7b1e: $00
	nop                                              ; $7b1f: $00
	nop                                              ; $7b20: $00
	nop                                              ; $7b21: $00
	nop                                              ; $7b22: $00
	nop                                              ; $7b23: $00
	nop                                              ; $7b24: $00
	nop                                              ; $7b25: $00
	nop                                              ; $7b26: $00
	nop                                              ; $7b27: $00
	nop                                              ; $7b28: $00
	nop                                              ; $7b29: $00
	nop                                              ; $7b2a: $00
	nop                                              ; $7b2b: $00
	nop                                              ; $7b2c: $00
	nop                                              ; $7b2d: $00
	nop                                              ; $7b2e: $00
	nop                                              ; $7b2f: $00
	nop                                              ; $7b30: $00
	nop                                              ; $7b31: $00
	nop                                              ; $7b32: $00
	nop                                              ; $7b33: $00
	nop                                              ; $7b34: $00
	nop                                              ; $7b35: $00
	nop                                              ; $7b36: $00
	nop                                              ; $7b37: $00
	nop                                              ; $7b38: $00
	nop                                              ; $7b39: $00
	nop                                              ; $7b3a: $00
	nop                                              ; $7b3b: $00
	nop                                              ; $7b3c: $00
	nop                                              ; $7b3d: $00
	nop                                              ; $7b3e: $00
	nop                                              ; $7b3f: $00
	nop                                              ; $7b40: $00
	nop                                              ; $7b41: $00
	nop                                              ; $7b42: $00
	nop                                              ; $7b43: $00
	nop                                              ; $7b44: $00
	nop                                              ; $7b45: $00
	nop                                              ; $7b46: $00
	nop                                              ; $7b47: $00
	nop                                              ; $7b48: $00
	nop                                              ; $7b49: $00
	nop                                              ; $7b4a: $00
	nop                                              ; $7b4b: $00
	nop                                              ; $7b4c: $00
	nop                                              ; $7b4d: $00
	nop                                              ; $7b4e: $00
	nop                                              ; $7b4f: $00
	nop                                              ; $7b50: $00
	nop                                              ; $7b51: $00
	nop                                              ; $7b52: $00
	nop                                              ; $7b53: $00
	nop                                              ; $7b54: $00
	nop                                              ; $7b55: $00
	nop                                              ; $7b56: $00
	nop                                              ; $7b57: $00
	nop                                              ; $7b58: $00
	nop                                              ; $7b59: $00
	nop                                              ; $7b5a: $00
	nop                                              ; $7b5b: $00
	nop                                              ; $7b5c: $00
	nop                                              ; $7b5d: $00
	nop                                              ; $7b5e: $00
	nop                                              ; $7b5f: $00
	nop                                              ; $7b60: $00
	nop                                              ; $7b61: $00
	nop                                              ; $7b62: $00
	nop                                              ; $7b63: $00
	nop                                              ; $7b64: $00
	nop                                              ; $7b65: $00
	nop                                              ; $7b66: $00
	nop                                              ; $7b67: $00
	nop                                              ; $7b68: $00
	nop                                              ; $7b69: $00
	nop                                              ; $7b6a: $00
	nop                                              ; $7b6b: $00
	nop                                              ; $7b6c: $00
	nop                                              ; $7b6d: $00
	nop                                              ; $7b6e: $00
	nop                                              ; $7b6f: $00
	nop                                              ; $7b70: $00
	nop                                              ; $7b71: $00
	nop                                              ; $7b72: $00
	nop                                              ; $7b73: $00
	nop                                              ; $7b74: $00
	nop                                              ; $7b75: $00
	nop                                              ; $7b76: $00
	nop                                              ; $7b77: $00
	nop                                              ; $7b78: $00
	nop                                              ; $7b79: $00
	nop                                              ; $7b7a: $00
	nop                                              ; $7b7b: $00
	nop                                              ; $7b7c: $00
	nop                                              ; $7b7d: $00
	nop                                              ; $7b7e: $00
	nop                                              ; $7b7f: $00
	nop                                              ; $7b80: $00
	nop                                              ; $7b81: $00
	nop                                              ; $7b82: $00
	nop                                              ; $7b83: $00
	nop                                              ; $7b84: $00
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
	nop                                              ; $7b90: $00
	nop                                              ; $7b91: $00
	nop                                              ; $7b92: $00
	nop                                              ; $7b93: $00
	nop                                              ; $7b94: $00
	nop                                              ; $7b95: $00
	nop                                              ; $7b96: $00
	nop                                              ; $7b97: $00
	nop                                              ; $7b98: $00
	nop                                              ; $7b99: $00
	nop                                              ; $7b9a: $00
	nop                                              ; $7b9b: $00
	nop                                              ; $7b9c: $00
	nop                                              ; $7b9d: $00
	nop                                              ; $7b9e: $00
	nop                                              ; $7b9f: $00
	nop                                              ; $7ba0: $00
	nop                                              ; $7ba1: $00
	nop                                              ; $7ba2: $00
	nop                                              ; $7ba3: $00
	nop                                              ; $7ba4: $00
	nop                                              ; $7ba5: $00
	nop                                              ; $7ba6: $00
	nop                                              ; $7ba7: $00
	nop                                              ; $7ba8: $00
	nop                                              ; $7ba9: $00
	nop                                              ; $7baa: $00
	nop                                              ; $7bab: $00
	nop                                              ; $7bac: $00
	nop                                              ; $7bad: $00
	nop                                              ; $7bae: $00
	nop                                              ; $7baf: $00
	nop                                              ; $7bb0: $00
	nop                                              ; $7bb1: $00
	nop                                              ; $7bb2: $00
	nop                                              ; $7bb3: $00
	nop                                              ; $7bb4: $00
	nop                                              ; $7bb5: $00
	nop                                              ; $7bb6: $00
	nop                                              ; $7bb7: $00
	nop                                              ; $7bb8: $00
	nop                                              ; $7bb9: $00
	nop                                              ; $7bba: $00
	nop                                              ; $7bbb: $00
	nop                                              ; $7bbc: $00
	nop                                              ; $7bbd: $00
	nop                                              ; $7bbe: $00
	nop                                              ; $7bbf: $00
	nop                                              ; $7bc0: $00
	nop                                              ; $7bc1: $00
	nop                                              ; $7bc2: $00
	nop                                              ; $7bc3: $00
	nop                                              ; $7bc4: $00
	nop                                              ; $7bc5: $00
	nop                                              ; $7bc6: $00
	nop                                              ; $7bc7: $00
	nop                                              ; $7bc8: $00
	nop                                              ; $7bc9: $00
	nop                                              ; $7bca: $00
	nop                                              ; $7bcb: $00
	nop                                              ; $7bcc: $00
	nop                                              ; $7bcd: $00
	nop                                              ; $7bce: $00
	nop                                              ; $7bcf: $00
	nop                                              ; $7bd0: $00
	nop                                              ; $7bd1: $00
	nop                                              ; $7bd2: $00
	nop                                              ; $7bd3: $00
	nop                                              ; $7bd4: $00
	nop                                              ; $7bd5: $00
	nop                                              ; $7bd6: $00
	nop                                              ; $7bd7: $00
	nop                                              ; $7bd8: $00
	nop                                              ; $7bd9: $00
	nop                                              ; $7bda: $00
	nop                                              ; $7bdb: $00
	nop                                              ; $7bdc: $00
	nop                                              ; $7bdd: $00
	nop                                              ; $7bde: $00
	nop                                              ; $7bdf: $00
	nop                                              ; $7be0: $00
	nop                                              ; $7be1: $00
	nop                                              ; $7be2: $00
	nop                                              ; $7be3: $00
	nop                                              ; $7be4: $00
	nop                                              ; $7be5: $00
	nop                                              ; $7be6: $00
	nop                                              ; $7be7: $00
	nop                                              ; $7be8: $00
	nop                                              ; $7be9: $00
	nop                                              ; $7bea: $00
	nop                                              ; $7beb: $00
	nop                                              ; $7bec: $00
	nop                                              ; $7bed: $00
	nop                                              ; $7bee: $00
	nop                                              ; $7bef: $00
	nop                                              ; $7bf0: $00
	nop                                              ; $7bf1: $00
	nop                                              ; $7bf2: $00
	nop                                              ; $7bf3: $00
	nop                                              ; $7bf4: $00
	nop                                              ; $7bf5: $00
	nop                                              ; $7bf6: $00
	nop                                              ; $7bf7: $00
	nop                                              ; $7bf8: $00
	nop                                              ; $7bf9: $00
	nop                                              ; $7bfa: $00
	nop                                              ; $7bfb: $00
	nop                                              ; $7bfc: $00
	nop                                              ; $7bfd: $00
	nop                                              ; $7bfe: $00
	nop                                              ; $7bff: $00
	nop                                              ; $7c00: $00
	nop                                              ; $7c01: $00
	nop                                              ; $7c02: $00
	nop                                              ; $7c03: $00
	nop                                              ; $7c04: $00
	nop                                              ; $7c05: $00
	nop                                              ; $7c06: $00
	nop                                              ; $7c07: $00
	nop                                              ; $7c08: $00
	nop                                              ; $7c09: $00
	nop                                              ; $7c0a: $00
	nop                                              ; $7c0b: $00
	nop                                              ; $7c0c: $00
	nop                                              ; $7c0d: $00
	nop                                              ; $7c0e: $00
	nop                                              ; $7c0f: $00
	nop                                              ; $7c10: $00
	nop                                              ; $7c11: $00
	nop                                              ; $7c12: $00
	nop                                              ; $7c13: $00
	nop                                              ; $7c14: $00
	nop                                              ; $7c15: $00
	nop                                              ; $7c16: $00
	nop                                              ; $7c17: $00
	nop                                              ; $7c18: $00
	nop                                              ; $7c19: $00
	nop                                              ; $7c1a: $00
	nop                                              ; $7c1b: $00
	nop                                              ; $7c1c: $00
	nop                                              ; $7c1d: $00
	nop                                              ; $7c1e: $00
	nop                                              ; $7c1f: $00
	nop                                              ; $7c20: $00
	nop                                              ; $7c21: $00
	nop                                              ; $7c22: $00
	nop                                              ; $7c23: $00
	nop                                              ; $7c24: $00
	nop                                              ; $7c25: $00
	nop                                              ; $7c26: $00
	nop                                              ; $7c27: $00
	nop                                              ; $7c28: $00
	nop                                              ; $7c29: $00
	nop                                              ; $7c2a: $00
	nop                                              ; $7c2b: $00
	nop                                              ; $7c2c: $00
	nop                                              ; $7c2d: $00
	nop                                              ; $7c2e: $00
	nop                                              ; $7c2f: $00
	nop                                              ; $7c30: $00
	nop                                              ; $7c31: $00
	nop                                              ; $7c32: $00
	nop                                              ; $7c33: $00
	nop                                              ; $7c34: $00
	nop                                              ; $7c35: $00
	nop                                              ; $7c36: $00
	nop                                              ; $7c37: $00
	nop                                              ; $7c38: $00
	nop                                              ; $7c39: $00
	nop                                              ; $7c3a: $00
	nop                                              ; $7c3b: $00
	nop                                              ; $7c3c: $00
	nop                                              ; $7c3d: $00
	nop                                              ; $7c3e: $00
	nop                                              ; $7c3f: $00
	nop                                              ; $7c40: $00
	nop                                              ; $7c41: $00
	nop                                              ; $7c42: $00
	nop                                              ; $7c43: $00
	nop                                              ; $7c44: $00
	nop                                              ; $7c45: $00
	nop                                              ; $7c46: $00
	nop                                              ; $7c47: $00
	nop                                              ; $7c48: $00
	nop                                              ; $7c49: $00
	nop                                              ; $7c4a: $00
	nop                                              ; $7c4b: $00
	nop                                              ; $7c4c: $00
	nop                                              ; $7c4d: $00
	nop                                              ; $7c4e: $00
	nop                                              ; $7c4f: $00
	nop                                              ; $7c50: $00
	nop                                              ; $7c51: $00
	nop                                              ; $7c52: $00
	nop                                              ; $7c53: $00
	nop                                              ; $7c54: $00
	nop                                              ; $7c55: $00
	nop                                              ; $7c56: $00
	nop                                              ; $7c57: $00
	nop                                              ; $7c58: $00
	nop                                              ; $7c59: $00
	nop                                              ; $7c5a: $00
	nop                                              ; $7c5b: $00
	nop                                              ; $7c5c: $00
	nop                                              ; $7c5d: $00
	nop                                              ; $7c5e: $00
	nop                                              ; $7c5f: $00
	nop                                              ; $7c60: $00
	nop                                              ; $7c61: $00
	nop                                              ; $7c62: $00
	nop                                              ; $7c63: $00
	nop                                              ; $7c64: $00
	nop                                              ; $7c65: $00
	nop                                              ; $7c66: $00
	nop                                              ; $7c67: $00
	nop                                              ; $7c68: $00
	nop                                              ; $7c69: $00
	nop                                              ; $7c6a: $00
	nop                                              ; $7c6b: $00
	nop                                              ; $7c6c: $00
	nop                                              ; $7c6d: $00
	nop                                              ; $7c6e: $00
	nop                                              ; $7c6f: $00
	nop                                              ; $7c70: $00
	nop                                              ; $7c71: $00
	nop                                              ; $7c72: $00
	nop                                              ; $7c73: $00
	nop                                              ; $7c74: $00
	nop                                              ; $7c75: $00
	nop                                              ; $7c76: $00
	nop                                              ; $7c77: $00
	nop                                              ; $7c78: $00
	nop                                              ; $7c79: $00
	nop                                              ; $7c7a: $00
	nop                                              ; $7c7b: $00
	nop                                              ; $7c7c: $00
	nop                                              ; $7c7d: $00
	nop                                              ; $7c7e: $00
	nop                                              ; $7c7f: $00
	nop                                              ; $7c80: $00
	nop                                              ; $7c81: $00
	nop                                              ; $7c82: $00
	nop                                              ; $7c83: $00
	nop                                              ; $7c84: $00
	nop                                              ; $7c85: $00
	nop                                              ; $7c86: $00
	nop                                              ; $7c87: $00
	nop                                              ; $7c88: $00
	nop                                              ; $7c89: $00
	nop                                              ; $7c8a: $00
	nop                                              ; $7c8b: $00
	nop                                              ; $7c8c: $00
	nop                                              ; $7c8d: $00
	nop                                              ; $7c8e: $00
	nop                                              ; $7c8f: $00
	nop                                              ; $7c90: $00
	nop                                              ; $7c91: $00
	nop                                              ; $7c92: $00
	nop                                              ; $7c93: $00
	nop                                              ; $7c94: $00
	nop                                              ; $7c95: $00
	nop                                              ; $7c96: $00
	nop                                              ; $7c97: $00
	nop                                              ; $7c98: $00
	nop                                              ; $7c99: $00
	nop                                              ; $7c9a: $00
	nop                                              ; $7c9b: $00
	nop                                              ; $7c9c: $00
	nop                                              ; $7c9d: $00
	nop                                              ; $7c9e: $00
	nop                                              ; $7c9f: $00
	nop                                              ; $7ca0: $00
	nop                                              ; $7ca1: $00
	nop                                              ; $7ca2: $00
	nop                                              ; $7ca3: $00
	nop                                              ; $7ca4: $00
	nop                                              ; $7ca5: $00
	nop                                              ; $7ca6: $00
	nop                                              ; $7ca7: $00
	nop                                              ; $7ca8: $00
	nop                                              ; $7ca9: $00
	nop                                              ; $7caa: $00
	nop                                              ; $7cab: $00
	nop                                              ; $7cac: $00
	nop                                              ; $7cad: $00
	nop                                              ; $7cae: $00
	nop                                              ; $7caf: $00
	nop                                              ; $7cb0: $00
	nop                                              ; $7cb1: $00
	nop                                              ; $7cb2: $00
	nop                                              ; $7cb3: $00
	nop                                              ; $7cb4: $00
	nop                                              ; $7cb5: $00
	nop                                              ; $7cb6: $00
	nop                                              ; $7cb7: $00
	nop                                              ; $7cb8: $00
	nop                                              ; $7cb9: $00
	nop                                              ; $7cba: $00
	nop                                              ; $7cbb: $00
	nop                                              ; $7cbc: $00
	nop                                              ; $7cbd: $00
	nop                                              ; $7cbe: $00
	nop                                              ; $7cbf: $00
	nop                                              ; $7cc0: $00
	nop                                              ; $7cc1: $00
	nop                                              ; $7cc2: $00
	nop                                              ; $7cc3: $00
	nop                                              ; $7cc4: $00
	nop                                              ; $7cc5: $00
	nop                                              ; $7cc6: $00
	nop                                              ; $7cc7: $00
	nop                                              ; $7cc8: $00
	nop                                              ; $7cc9: $00
	nop                                              ; $7cca: $00
	nop                                              ; $7ccb: $00
	nop                                              ; $7ccc: $00
	nop                                              ; $7ccd: $00
	nop                                              ; $7cce: $00
	nop                                              ; $7ccf: $00
	nop                                              ; $7cd0: $00
	nop                                              ; $7cd1: $00
	nop                                              ; $7cd2: $00
	nop                                              ; $7cd3: $00
	nop                                              ; $7cd4: $00
	nop                                              ; $7cd5: $00
	nop                                              ; $7cd6: $00
	nop                                              ; $7cd7: $00
	nop                                              ; $7cd8: $00
	nop                                              ; $7cd9: $00
	nop                                              ; $7cda: $00
	nop                                              ; $7cdb: $00
	nop                                              ; $7cdc: $00
	nop                                              ; $7cdd: $00
	nop                                              ; $7cde: $00
	nop                                              ; $7cdf: $00
	nop                                              ; $7ce0: $00
	nop                                              ; $7ce1: $00
	nop                                              ; $7ce2: $00
	nop                                              ; $7ce3: $00
	nop                                              ; $7ce4: $00
	nop                                              ; $7ce5: $00
	nop                                              ; $7ce6: $00
	nop                                              ; $7ce7: $00
	nop                                              ; $7ce8: $00
	nop                                              ; $7ce9: $00
	nop                                              ; $7cea: $00
	nop                                              ; $7ceb: $00
	nop                                              ; $7cec: $00
	nop                                              ; $7ced: $00
	nop                                              ; $7cee: $00
	nop                                              ; $7cef: $00
	nop                                              ; $7cf0: $00
	nop                                              ; $7cf1: $00
	nop                                              ; $7cf2: $00
	nop                                              ; $7cf3: $00
	nop                                              ; $7cf4: $00
	nop                                              ; $7cf5: $00
	nop                                              ; $7cf6: $00
	nop                                              ; $7cf7: $00
	nop                                              ; $7cf8: $00
	nop                                              ; $7cf9: $00
	nop                                              ; $7cfa: $00
	nop                                              ; $7cfb: $00
	nop                                              ; $7cfc: $00
	nop                                              ; $7cfd: $00
	nop                                              ; $7cfe: $00
	nop                                              ; $7cff: $00
	nop                                              ; $7d00: $00
	nop                                              ; $7d01: $00
	nop                                              ; $7d02: $00
	nop                                              ; $7d03: $00
	nop                                              ; $7d04: $00
	nop                                              ; $7d05: $00
	nop                                              ; $7d06: $00
	nop                                              ; $7d07: $00
	nop                                              ; $7d08: $00
	nop                                              ; $7d09: $00
	nop                                              ; $7d0a: $00
	nop                                              ; $7d0b: $00
	nop                                              ; $7d0c: $00
	nop                                              ; $7d0d: $00
	nop                                              ; $7d0e: $00
	nop                                              ; $7d0f: $00
	nop                                              ; $7d10: $00
	nop                                              ; $7d11: $00
	nop                                              ; $7d12: $00
	nop                                              ; $7d13: $00
	nop                                              ; $7d14: $00
	nop                                              ; $7d15: $00
	nop                                              ; $7d16: $00
	nop                                              ; $7d17: $00
	nop                                              ; $7d18: $00
	nop                                              ; $7d19: $00
	nop                                              ; $7d1a: $00
	nop                                              ; $7d1b: $00
	nop                                              ; $7d1c: $00
	nop                                              ; $7d1d: $00
	nop                                              ; $7d1e: $00
	nop                                              ; $7d1f: $00
	nop                                              ; $7d20: $00
	nop                                              ; $7d21: $00
	nop                                              ; $7d22: $00
	nop                                              ; $7d23: $00
	nop                                              ; $7d24: $00
	nop                                              ; $7d25: $00
	nop                                              ; $7d26: $00
	nop                                              ; $7d27: $00
	nop                                              ; $7d28: $00
	nop                                              ; $7d29: $00
	nop                                              ; $7d2a: $00
	nop                                              ; $7d2b: $00
	nop                                              ; $7d2c: $00
	nop                                              ; $7d2d: $00
	nop                                              ; $7d2e: $00
	nop                                              ; $7d2f: $00
	nop                                              ; $7d30: $00
	nop                                              ; $7d31: $00
	nop                                              ; $7d32: $00
	nop                                              ; $7d33: $00
	nop                                              ; $7d34: $00
	nop                                              ; $7d35: $00
	nop                                              ; $7d36: $00
	nop                                              ; $7d37: $00
	nop                                              ; $7d38: $00
	nop                                              ; $7d39: $00
	nop                                              ; $7d3a: $00
	nop                                              ; $7d3b: $00
	nop                                              ; $7d3c: $00
	nop                                              ; $7d3d: $00
	nop                                              ; $7d3e: $00
	nop                                              ; $7d3f: $00
	nop                                              ; $7d40: $00
	nop                                              ; $7d41: $00
	nop                                              ; $7d42: $00
	nop                                              ; $7d43: $00
	nop                                              ; $7d44: $00
	nop                                              ; $7d45: $00
	nop                                              ; $7d46: $00
	nop                                              ; $7d47: $00
	nop                                              ; $7d48: $00
	nop                                              ; $7d49: $00
	nop                                              ; $7d4a: $00
	nop                                              ; $7d4b: $00
	nop                                              ; $7d4c: $00
	nop                                              ; $7d4d: $00
	nop                                              ; $7d4e: $00
	nop                                              ; $7d4f: $00
	nop                                              ; $7d50: $00
	nop                                              ; $7d51: $00
	nop                                              ; $7d52: $00
	nop                                              ; $7d53: $00
	nop                                              ; $7d54: $00
	nop                                              ; $7d55: $00
	nop                                              ; $7d56: $00
	nop                                              ; $7d57: $00
	nop                                              ; $7d58: $00
	nop                                              ; $7d59: $00
	nop                                              ; $7d5a: $00
	nop                                              ; $7d5b: $00
	nop                                              ; $7d5c: $00
	nop                                              ; $7d5d: $00
	nop                                              ; $7d5e: $00
	nop                                              ; $7d5f: $00
	nop                                              ; $7d60: $00
	nop                                              ; $7d61: $00
	nop                                              ; $7d62: $00
	nop                                              ; $7d63: $00
	nop                                              ; $7d64: $00
	nop                                              ; $7d65: $00
	nop                                              ; $7d66: $00
	nop                                              ; $7d67: $00
	nop                                              ; $7d68: $00
	nop                                              ; $7d69: $00
	nop                                              ; $7d6a: $00
	nop                                              ; $7d6b: $00
	nop                                              ; $7d6c: $00
	nop                                              ; $7d6d: $00
	nop                                              ; $7d6e: $00
	nop                                              ; $7d6f: $00
	nop                                              ; $7d70: $00
	nop                                              ; $7d71: $00
	nop                                              ; $7d72: $00
	nop                                              ; $7d73: $00
	nop                                              ; $7d74: $00
	nop                                              ; $7d75: $00
	nop                                              ; $7d76: $00
	nop                                              ; $7d77: $00
	nop                                              ; $7d78: $00
	nop                                              ; $7d79: $00
	nop                                              ; $7d7a: $00
	nop                                              ; $7d7b: $00
	nop                                              ; $7d7c: $00
	nop                                              ; $7d7d: $00
	nop                                              ; $7d7e: $00
	nop                                              ; $7d7f: $00
	nop                                              ; $7d80: $00
	nop                                              ; $7d81: $00
	nop                                              ; $7d82: $00
	nop                                              ; $7d83: $00
	nop                                              ; $7d84: $00
	nop                                              ; $7d85: $00
	nop                                              ; $7d86: $00
	nop                                              ; $7d87: $00
	nop                                              ; $7d88: $00
	nop                                              ; $7d89: $00
	nop                                              ; $7d8a: $00
	nop                                              ; $7d8b: $00
	nop                                              ; $7d8c: $00
	nop                                              ; $7d8d: $00
	nop                                              ; $7d8e: $00
	nop                                              ; $7d8f: $00
	nop                                              ; $7d90: $00
	nop                                              ; $7d91: $00
	nop                                              ; $7d92: $00
	nop                                              ; $7d93: $00
	nop                                              ; $7d94: $00
	nop                                              ; $7d95: $00
	nop                                              ; $7d96: $00
	nop                                              ; $7d97: $00
	nop                                              ; $7d98: $00
	nop                                              ; $7d99: $00
	nop                                              ; $7d9a: $00
	nop                                              ; $7d9b: $00
	nop                                              ; $7d9c: $00
	nop                                              ; $7d9d: $00
	nop                                              ; $7d9e: $00
	nop                                              ; $7d9f: $00
	nop                                              ; $7da0: $00
	nop                                              ; $7da1: $00
	nop                                              ; $7da2: $00
	nop                                              ; $7da3: $00
	nop                                              ; $7da4: $00
	nop                                              ; $7da5: $00
	nop                                              ; $7da6: $00
	nop                                              ; $7da7: $00
	nop                                              ; $7da8: $00
	nop                                              ; $7da9: $00
	nop                                              ; $7daa: $00
	nop                                              ; $7dab: $00
	nop                                              ; $7dac: $00
	nop                                              ; $7dad: $00
	nop                                              ; $7dae: $00
	nop                                              ; $7daf: $00
	nop                                              ; $7db0: $00
	nop                                              ; $7db1: $00
	nop                                              ; $7db2: $00
	nop                                              ; $7db3: $00
	nop                                              ; $7db4: $00
	nop                                              ; $7db5: $00
	nop                                              ; $7db6: $00
	nop                                              ; $7db7: $00
	nop                                              ; $7db8: $00
	nop                                              ; $7db9: $00
	nop                                              ; $7dba: $00
	nop                                              ; $7dbb: $00
	nop                                              ; $7dbc: $00
	nop                                              ; $7dbd: $00
	nop                                              ; $7dbe: $00
	nop                                              ; $7dbf: $00
	nop                                              ; $7dc0: $00
	nop                                              ; $7dc1: $00
	nop                                              ; $7dc2: $00
	nop                                              ; $7dc3: $00
	nop                                              ; $7dc4: $00
	nop                                              ; $7dc5: $00
	nop                                              ; $7dc6: $00
	nop                                              ; $7dc7: $00
	nop                                              ; $7dc8: $00
	nop                                              ; $7dc9: $00
	nop                                              ; $7dca: $00
	nop                                              ; $7dcb: $00
	nop                                              ; $7dcc: $00
	nop                                              ; $7dcd: $00
	nop                                              ; $7dce: $00
	nop                                              ; $7dcf: $00
	nop                                              ; $7dd0: $00
	nop                                              ; $7dd1: $00
	nop                                              ; $7dd2: $00
	nop                                              ; $7dd3: $00
	nop                                              ; $7dd4: $00
	nop                                              ; $7dd5: $00
	nop                                              ; $7dd6: $00
	nop                                              ; $7dd7: $00
	nop                                              ; $7dd8: $00
	nop                                              ; $7dd9: $00
	nop                                              ; $7dda: $00
	nop                                              ; $7ddb: $00
	nop                                              ; $7ddc: $00
	nop                                              ; $7ddd: $00
	nop                                              ; $7dde: $00
	nop                                              ; $7ddf: $00
	nop                                              ; $7de0: $00
	nop                                              ; $7de1: $00
	nop                                              ; $7de2: $00
	nop                                              ; $7de3: $00
	nop                                              ; $7de4: $00
	nop                                              ; $7de5: $00
	nop                                              ; $7de6: $00
	nop                                              ; $7de7: $00
	nop                                              ; $7de8: $00
	nop                                              ; $7de9: $00
	nop                                              ; $7dea: $00
	nop                                              ; $7deb: $00
	nop                                              ; $7dec: $00
	nop                                              ; $7ded: $00
	nop                                              ; $7dee: $00
	nop                                              ; $7def: $00
	nop                                              ; $7df0: $00
	nop                                              ; $7df1: $00
	nop                                              ; $7df2: $00
	nop                                              ; $7df3: $00
	nop                                              ; $7df4: $00
	nop                                              ; $7df5: $00
	nop                                              ; $7df6: $00
	nop                                              ; $7df7: $00
	nop                                              ; $7df8: $00
	nop                                              ; $7df9: $00
	nop                                              ; $7dfa: $00
	nop                                              ; $7dfb: $00
	nop                                              ; $7dfc: $00
	nop                                              ; $7dfd: $00
	nop                                              ; $7dfe: $00
	nop                                              ; $7dff: $00
	nop                                              ; $7e00: $00
	nop                                              ; $7e01: $00
	nop                                              ; $7e02: $00
	nop                                              ; $7e03: $00
	nop                                              ; $7e04: $00
	nop                                              ; $7e05: $00
	nop                                              ; $7e06: $00
	nop                                              ; $7e07: $00
	nop                                              ; $7e08: $00
	nop                                              ; $7e09: $00
	nop                                              ; $7e0a: $00
	nop                                              ; $7e0b: $00
	nop                                              ; $7e0c: $00
	nop                                              ; $7e0d: $00
	nop                                              ; $7e0e: $00
	nop                                              ; $7e0f: $00
	nop                                              ; $7e10: $00
	nop                                              ; $7e11: $00
	nop                                              ; $7e12: $00
	nop                                              ; $7e13: $00
	nop                                              ; $7e14: $00
	nop                                              ; $7e15: $00
	nop                                              ; $7e16: $00
	nop                                              ; $7e17: $00
	nop                                              ; $7e18: $00
	nop                                              ; $7e19: $00
	nop                                              ; $7e1a: $00
	nop                                              ; $7e1b: $00
	nop                                              ; $7e1c: $00
	nop                                              ; $7e1d: $00
	nop                                              ; $7e1e: $00
	nop                                              ; $7e1f: $00
	nop                                              ; $7e20: $00
	nop                                              ; $7e21: $00
	nop                                              ; $7e22: $00
	nop                                              ; $7e23: $00
	nop                                              ; $7e24: $00
	nop                                              ; $7e25: $00
	nop                                              ; $7e26: $00
	nop                                              ; $7e27: $00
	nop                                              ; $7e28: $00
	nop                                              ; $7e29: $00
	nop                                              ; $7e2a: $00
	nop                                              ; $7e2b: $00
	nop                                              ; $7e2c: $00
	nop                                              ; $7e2d: $00
	nop                                              ; $7e2e: $00
	nop                                              ; $7e2f: $00
	nop                                              ; $7e30: $00
	nop                                              ; $7e31: $00
	nop                                              ; $7e32: $00
	nop                                              ; $7e33: $00
	nop                                              ; $7e34: $00
	nop                                              ; $7e35: $00
	nop                                              ; $7e36: $00
	nop                                              ; $7e37: $00
	nop                                              ; $7e38: $00
	nop                                              ; $7e39: $00
	nop                                              ; $7e3a: $00
	nop                                              ; $7e3b: $00
	nop                                              ; $7e3c: $00
	nop                                              ; $7e3d: $00
	nop                                              ; $7e3e: $00
	nop                                              ; $7e3f: $00
	nop                                              ; $7e40: $00
	nop                                              ; $7e41: $00
	nop                                              ; $7e42: $00
	nop                                              ; $7e43: $00
	nop                                              ; $7e44: $00
	nop                                              ; $7e45: $00
	nop                                              ; $7e46: $00
	nop                                              ; $7e47: $00
	nop                                              ; $7e48: $00
	nop                                              ; $7e49: $00
	nop                                              ; $7e4a: $00
	nop                                              ; $7e4b: $00
	nop                                              ; $7e4c: $00
	nop                                              ; $7e4d: $00
	nop                                              ; $7e4e: $00
	nop                                              ; $7e4f: $00
	nop                                              ; $7e50: $00
	nop                                              ; $7e51: $00
	nop                                              ; $7e52: $00
	nop                                              ; $7e53: $00
	nop                                              ; $7e54: $00
	nop                                              ; $7e55: $00
	nop                                              ; $7e56: $00
	nop                                              ; $7e57: $00
	nop                                              ; $7e58: $00
	nop                                              ; $7e59: $00
	nop                                              ; $7e5a: $00
	nop                                              ; $7e5b: $00
	nop                                              ; $7e5c: $00
	nop                                              ; $7e5d: $00
	nop                                              ; $7e5e: $00
	nop                                              ; $7e5f: $00
	nop                                              ; $7e60: $00
	nop                                              ; $7e61: $00
	nop                                              ; $7e62: $00
	nop                                              ; $7e63: $00
	nop                                              ; $7e64: $00
	nop                                              ; $7e65: $00
	nop                                              ; $7e66: $00
	nop                                              ; $7e67: $00
	nop                                              ; $7e68: $00
	nop                                              ; $7e69: $00
	nop                                              ; $7e6a: $00
	nop                                              ; $7e6b: $00
	nop                                              ; $7e6c: $00
	nop                                              ; $7e6d: $00
	nop                                              ; $7e6e: $00
	nop                                              ; $7e6f: $00
	nop                                              ; $7e70: $00
	nop                                              ; $7e71: $00
	nop                                              ; $7e72: $00
	nop                                              ; $7e73: $00
	nop                                              ; $7e74: $00
	nop                                              ; $7e75: $00
	nop                                              ; $7e76: $00
	nop                                              ; $7e77: $00
	nop                                              ; $7e78: $00
	nop                                              ; $7e79: $00
	nop                                              ; $7e7a: $00
	nop                                              ; $7e7b: $00
	nop                                              ; $7e7c: $00
	nop                                              ; $7e7d: $00
	nop                                              ; $7e7e: $00
	nop                                              ; $7e7f: $00
	nop                                              ; $7e80: $00
	nop                                              ; $7e81: $00
	nop                                              ; $7e82: $00
	nop                                              ; $7e83: $00
	nop                                              ; $7e84: $00
	nop                                              ; $7e85: $00
	nop                                              ; $7e86: $00
	nop                                              ; $7e87: $00
	nop                                              ; $7e88: $00
	nop                                              ; $7e89: $00
	nop                                              ; $7e8a: $00
	nop                                              ; $7e8b: $00
	nop                                              ; $7e8c: $00
	nop                                              ; $7e8d: $00
	nop                                              ; $7e8e: $00
	nop                                              ; $7e8f: $00
	nop                                              ; $7e90: $00
	nop                                              ; $7e91: $00
	nop                                              ; $7e92: $00
	nop                                              ; $7e93: $00
	nop                                              ; $7e94: $00
	nop                                              ; $7e95: $00
	nop                                              ; $7e96: $00
	nop                                              ; $7e97: $00
	nop                                              ; $7e98: $00
	nop                                              ; $7e99: $00
	nop                                              ; $7e9a: $00
	nop                                              ; $7e9b: $00
	nop                                              ; $7e9c: $00
	nop                                              ; $7e9d: $00
	nop                                              ; $7e9e: $00
	nop                                              ; $7e9f: $00
	nop                                              ; $7ea0: $00
	nop                                              ; $7ea1: $00
	nop                                              ; $7ea2: $00
	nop                                              ; $7ea3: $00
	nop                                              ; $7ea4: $00
	nop                                              ; $7ea5: $00
	nop                                              ; $7ea6: $00
	nop                                              ; $7ea7: $00
	nop                                              ; $7ea8: $00
	nop                                              ; $7ea9: $00
	nop                                              ; $7eaa: $00
	nop                                              ; $7eab: $00
	nop                                              ; $7eac: $00
	nop                                              ; $7ead: $00
	nop                                              ; $7eae: $00
	nop                                              ; $7eaf: $00
	nop                                              ; $7eb0: $00
	nop                                              ; $7eb1: $00
	nop                                              ; $7eb2: $00
	nop                                              ; $7eb3: $00
	nop                                              ; $7eb4: $00
	nop                                              ; $7eb5: $00
	nop                                              ; $7eb6: $00
	nop                                              ; $7eb7: $00
	nop                                              ; $7eb8: $00
	nop                                              ; $7eb9: $00
	nop                                              ; $7eba: $00
	nop                                              ; $7ebb: $00
	nop                                              ; $7ebc: $00
	nop                                              ; $7ebd: $00
	nop                                              ; $7ebe: $00
	nop                                              ; $7ebf: $00
	nop                                              ; $7ec0: $00
	nop                                              ; $7ec1: $00
	nop                                              ; $7ec2: $00
	nop                                              ; $7ec3: $00
	nop                                              ; $7ec4: $00
	nop                                              ; $7ec5: $00
	nop                                              ; $7ec6: $00
	nop                                              ; $7ec7: $00
	nop                                              ; $7ec8: $00
	nop                                              ; $7ec9: $00
	nop                                              ; $7eca: $00
	nop                                              ; $7ecb: $00
	nop                                              ; $7ecc: $00
	nop                                              ; $7ecd: $00
	nop                                              ; $7ece: $00
	nop                                              ; $7ecf: $00
	nop                                              ; $7ed0: $00
	nop                                              ; $7ed1: $00
	nop                                              ; $7ed2: $00
	nop                                              ; $7ed3: $00
	nop                                              ; $7ed4: $00
	nop                                              ; $7ed5: $00
	nop                                              ; $7ed6: $00
	nop                                              ; $7ed7: $00
	nop                                              ; $7ed8: $00
	nop                                              ; $7ed9: $00
	nop                                              ; $7eda: $00
	nop                                              ; $7edb: $00
	nop                                              ; $7edc: $00
	nop                                              ; $7edd: $00
	nop                                              ; $7ede: $00
	nop                                              ; $7edf: $00
	nop                                              ; $7ee0: $00
	nop                                              ; $7ee1: $00
	nop                                              ; $7ee2: $00
	nop                                              ; $7ee3: $00
	nop                                              ; $7ee4: $00
	nop                                              ; $7ee5: $00
	nop                                              ; $7ee6: $00
	nop                                              ; $7ee7: $00
	nop                                              ; $7ee8: $00
	nop                                              ; $7ee9: $00
	nop                                              ; $7eea: $00
	nop                                              ; $7eeb: $00
	nop                                              ; $7eec: $00
	nop                                              ; $7eed: $00
	nop                                              ; $7eee: $00
	nop                                              ; $7eef: $00
	nop                                              ; $7ef0: $00
	nop                                              ; $7ef1: $00
	nop                                              ; $7ef2: $00
	nop                                              ; $7ef3: $00
	nop                                              ; $7ef4: $00
	nop                                              ; $7ef5: $00
	nop                                              ; $7ef6: $00
	nop                                              ; $7ef7: $00
	nop                                              ; $7ef8: $00
	nop                                              ; $7ef9: $00
	nop                                              ; $7efa: $00
	nop                                              ; $7efb: $00
	nop                                              ; $7efc: $00
	nop                                              ; $7efd: $00
	nop                                              ; $7efe: $00
	nop                                              ; $7eff: $00
	nop                                              ; $7f00: $00
	nop                                              ; $7f01: $00
	nop                                              ; $7f02: $00
	nop                                              ; $7f03: $00
	nop                                              ; $7f04: $00
	nop                                              ; $7f05: $00
	nop                                              ; $7f06: $00
	nop                                              ; $7f07: $00
	nop                                              ; $7f08: $00
	nop                                              ; $7f09: $00
	nop                                              ; $7f0a: $00
	nop                                              ; $7f0b: $00
	nop                                              ; $7f0c: $00
	nop                                              ; $7f0d: $00
	nop                                              ; $7f0e: $00
	nop                                              ; $7f0f: $00
	nop                                              ; $7f10: $00
	nop                                              ; $7f11: $00
	nop                                              ; $7f12: $00
	nop                                              ; $7f13: $00
	nop                                              ; $7f14: $00
	nop                                              ; $7f15: $00
	nop                                              ; $7f16: $00
	nop                                              ; $7f17: $00
	nop                                              ; $7f18: $00
	nop                                              ; $7f19: $00
	nop                                              ; $7f1a: $00
	nop                                              ; $7f1b: $00
	nop                                              ; $7f1c: $00
	nop                                              ; $7f1d: $00
	nop                                              ; $7f1e: $00
	nop                                              ; $7f1f: $00
	nop                                              ; $7f20: $00
	nop                                              ; $7f21: $00
	nop                                              ; $7f22: $00
	nop                                              ; $7f23: $00
	nop                                              ; $7f24: $00
	nop                                              ; $7f25: $00
	nop                                              ; $7f26: $00
	nop                                              ; $7f27: $00
	nop                                              ; $7f28: $00
	nop                                              ; $7f29: $00
	nop                                              ; $7f2a: $00
	nop                                              ; $7f2b: $00
	nop                                              ; $7f2c: $00
	nop                                              ; $7f2d: $00
	nop                                              ; $7f2e: $00
	nop                                              ; $7f2f: $00
	nop                                              ; $7f30: $00
	nop                                              ; $7f31: $00
	nop                                              ; $7f32: $00
	nop                                              ; $7f33: $00
	nop                                              ; $7f34: $00
	nop                                              ; $7f35: $00
	nop                                              ; $7f36: $00
	nop                                              ; $7f37: $00
	nop                                              ; $7f38: $00
	nop                                              ; $7f39: $00
	nop                                              ; $7f3a: $00
	nop                                              ; $7f3b: $00
	nop                                              ; $7f3c: $00
	nop                                              ; $7f3d: $00
	nop                                              ; $7f3e: $00
	nop                                              ; $7f3f: $00
	nop                                              ; $7f40: $00
	nop                                              ; $7f41: $00
	nop                                              ; $7f42: $00
	nop                                              ; $7f43: $00
	nop                                              ; $7f44: $00
	nop                                              ; $7f45: $00
	nop                                              ; $7f46: $00
	nop                                              ; $7f47: $00
	nop                                              ; $7f48: $00
	nop                                              ; $7f49: $00
	nop                                              ; $7f4a: $00
	nop                                              ; $7f4b: $00
	nop                                              ; $7f4c: $00
	nop                                              ; $7f4d: $00
	nop                                              ; $7f4e: $00
	nop                                              ; $7f4f: $00
	nop                                              ; $7f50: $00
	nop                                              ; $7f51: $00
	nop                                              ; $7f52: $00
	nop                                              ; $7f53: $00
	nop                                              ; $7f54: $00
	nop                                              ; $7f55: $00
	nop                                              ; $7f56: $00
	nop                                              ; $7f57: $00
	nop                                              ; $7f58: $00
	nop                                              ; $7f59: $00
	nop                                              ; $7f5a: $00
	nop                                              ; $7f5b: $00
	nop                                              ; $7f5c: $00
	nop                                              ; $7f5d: $00
	nop                                              ; $7f5e: $00
	nop                                              ; $7f5f: $00
	nop                                              ; $7f60: $00
	nop                                              ; $7f61: $00
	nop                                              ; $7f62: $00
	nop                                              ; $7f63: $00
	nop                                              ; $7f64: $00
	nop                                              ; $7f65: $00
	nop                                              ; $7f66: $00
	nop                                              ; $7f67: $00
	nop                                              ; $7f68: $00
	nop                                              ; $7f69: $00
	nop                                              ; $7f6a: $00
	nop                                              ; $7f6b: $00
	nop                                              ; $7f6c: $00
	nop                                              ; $7f6d: $00
	nop                                              ; $7f6e: $00
	nop                                              ; $7f6f: $00
	nop                                              ; $7f70: $00
	nop                                              ; $7f71: $00
	nop                                              ; $7f72: $00
	nop                                              ; $7f73: $00
	nop                                              ; $7f74: $00
	nop                                              ; $7f75: $00
	nop                                              ; $7f76: $00
	nop                                              ; $7f77: $00
	nop                                              ; $7f78: $00
	nop                                              ; $7f79: $00
	nop                                              ; $7f7a: $00
	nop                                              ; $7f7b: $00
	nop                                              ; $7f7c: $00
	nop                                              ; $7f7d: $00
	nop                                              ; $7f7e: $00
	nop                                              ; $7f7f: $00
	nop                                              ; $7f80: $00
	nop                                              ; $7f81: $00
	nop                                              ; $7f82: $00
	nop                                              ; $7f83: $00
	nop                                              ; $7f84: $00
	nop                                              ; $7f85: $00
	nop                                              ; $7f86: $00
	nop                                              ; $7f87: $00
	nop                                              ; $7f88: $00
	nop                                              ; $7f89: $00
	nop                                              ; $7f8a: $00
	nop                                              ; $7f8b: $00
	nop                                              ; $7f8c: $00
	nop                                              ; $7f8d: $00
	nop                                              ; $7f8e: $00
	nop                                              ; $7f8f: $00
	nop                                              ; $7f90: $00
	nop                                              ; $7f91: $00
	nop                                              ; $7f92: $00
	nop                                              ; $7f93: $00
	nop                                              ; $7f94: $00
	nop                                              ; $7f95: $00
	nop                                              ; $7f96: $00
	nop                                              ; $7f97: $00
	nop                                              ; $7f98: $00
	nop                                              ; $7f99: $00
	nop                                              ; $7f9a: $00
	nop                                              ; $7f9b: $00
	nop                                              ; $7f9c: $00
	nop                                              ; $7f9d: $00
	nop                                              ; $7f9e: $00
	nop                                              ; $7f9f: $00
	nop                                              ; $7fa0: $00
	nop                                              ; $7fa1: $00
	nop                                              ; $7fa2: $00
	nop                                              ; $7fa3: $00
	nop                                              ; $7fa4: $00
	nop                                              ; $7fa5: $00
	nop                                              ; $7fa6: $00
	nop                                              ; $7fa7: $00
	nop                                              ; $7fa8: $00
	nop                                              ; $7fa9: $00
	nop                                              ; $7faa: $00
	nop                                              ; $7fab: $00
	nop                                              ; $7fac: $00
	nop                                              ; $7fad: $00
	nop                                              ; $7fae: $00
	nop                                              ; $7faf: $00
	nop                                              ; $7fb0: $00
	nop                                              ; $7fb1: $00
	nop                                              ; $7fb2: $00
	nop                                              ; $7fb3: $00
	nop                                              ; $7fb4: $00
	nop                                              ; $7fb5: $00
	nop                                              ; $7fb6: $00
	nop                                              ; $7fb7: $00
	nop                                              ; $7fb8: $00
	nop                                              ; $7fb9: $00
	nop                                              ; $7fba: $00
	nop                                              ; $7fbb: $00
	nop                                              ; $7fbc: $00
	nop                                              ; $7fbd: $00
	nop                                              ; $7fbe: $00
	nop                                              ; $7fbf: $00
	nop                                              ; $7fc0: $00
	nop                                              ; $7fc1: $00
	nop                                              ; $7fc2: $00
	nop                                              ; $7fc3: $00
	nop                                              ; $7fc4: $00
	nop                                              ; $7fc5: $00
	nop                                              ; $7fc6: $00
	nop                                              ; $7fc7: $00
	nop                                              ; $7fc8: $00
	nop                                              ; $7fc9: $00
	nop                                              ; $7fca: $00
	nop                                              ; $7fcb: $00
	nop                                              ; $7fcc: $00
	nop                                              ; $7fcd: $00
	nop                                              ; $7fce: $00
	nop                                              ; $7fcf: $00
	nop                                              ; $7fd0: $00
	nop                                              ; $7fd1: $00
	nop                                              ; $7fd2: $00
	nop                                              ; $7fd3: $00
	nop                                              ; $7fd4: $00
	nop                                              ; $7fd5: $00
	nop                                              ; $7fd6: $00
	nop                                              ; $7fd7: $00
	nop                                              ; $7fd8: $00
	nop                                              ; $7fd9: $00
	nop                                              ; $7fda: $00
	nop                                              ; $7fdb: $00
	nop                                              ; $7fdc: $00
	nop                                              ; $7fdd: $00
	nop                                              ; $7fde: $00
	nop                                              ; $7fdf: $00
	nop                                              ; $7fe0: $00
	nop                                              ; $7fe1: $00
	nop                                              ; $7fe2: $00
	nop                                              ; $7fe3: $00
	nop                                              ; $7fe4: $00
	nop                                              ; $7fe5: $00
	nop                                              ; $7fe6: $00
	nop                                              ; $7fe7: $00
	nop                                              ; $7fe8: $00
	nop                                              ; $7fe9: $00
	nop                                              ; $7fea: $00
	nop                                              ; $7feb: $00
	nop                                              ; $7fec: $00
	nop                                              ; $7fed: $00
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
