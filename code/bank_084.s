; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $084", ROMX[$4000], BANK[$84]

	nop                                              ; $4000: $00
	ld   bc, $0302                                   ; $4001: $01 $02 $03
	inc  b                                           ; $4004: $04
	dec  b                                           ; $4005: $05
	ld   b, $07                                      ; $4006: $06 $07
	ld   [$0a09], sp                                 ; $4008: $08 $09 $0a
	dec  bc                                          ; $400b: $0b
	inc  c                                           ; $400c: $0c
	dec  c                                           ; $400d: $0d
	ld   c, $0f                                      ; $400e: $0e $0f
	jr   nz, jr_084_4033                             ; $4010: $20 $21

	ld   [hl+], a                                    ; $4012: $22
	inc  hl                                          ; $4013: $23
	db   $10                                         ; $4014: $10
	ld   de, $1312                                   ; $4015: $11 $12 $13
	inc  d                                           ; $4018: $14
	dec  d                                           ; $4019: $15
	ld   d, $17                                      ; $401a: $16 $17
	jr   @+$1b                                       ; $401c: $18 $19

	ld   a, [de]                                     ; $401e: $1a
	dec  de                                          ; $401f: $1b
	inc  e                                           ; $4020: $1c
	dec  e                                           ; $4021: $1d
	ld   e, $1f                                      ; $4022: $1e $1f
	jr   nc, jr_084_4057                             ; $4024: $30 $31

	ld   [hl-], a                                    ; $4026: $32
	inc  sp                                          ; $4027: $33
	jr   nz, @+$23                                   ; $4028: $20 $21

	ld   [hl+], a                                    ; $402a: $22
	inc  hl                                          ; $402b: $23
	inc  h                                           ; $402c: $24
	dec  h                                           ; $402d: $25
	ld   h, $27                                      ; $402e: $26 $27
	jr   z, jr_084_405b                              ; $4030: $28 $29

	ld   a, [hl+]                                    ; $4032: $2a

jr_084_4033:
	dec  hl                                          ; $4033: $2b
	inc  l                                           ; $4034: $2c
	dec  l                                           ; $4035: $2d
	ld   l, $2f                                      ; $4036: $2e $2f
	ld   b, b                                        ; $4038: $40
	ld   b, c                                        ; $4039: $41
	ld   b, d                                        ; $403a: $42
	ld   b, e                                        ; $403b: $43
	jr   nc, jr_084_406f                             ; $403c: $30 $31

	ld   [hl-], a                                    ; $403e: $32
	inc  sp                                          ; $403f: $33
	inc  [hl]                                        ; $4040: $34
	dec  [hl]                                        ; $4041: $35
	ld   [hl], $37                                   ; $4042: $36 $37
	jr   c, jr_084_407f                              ; $4044: $38 $39

	ld   a, [hl-]                                    ; $4046: $3a
	dec  sp                                          ; $4047: $3b
	inc  a                                           ; $4048: $3c
	dec  a                                           ; $4049: $3d
	ld   a, $3f                                      ; $404a: $3e $3f
	inc  h                                           ; $404c: $24
	dec  h                                           ; $404d: $25
	ld   h, $27                                      ; $404e: $26 $27
	ld   b, b                                        ; $4050: $40
	ld   b, c                                        ; $4051: $41
	ld   b, d                                        ; $4052: $42
	ld   b, e                                        ; $4053: $43
	ld   b, h                                        ; $4054: $44
	ld   b, l                                        ; $4055: $45
	ld   b, [hl]                                     ; $4056: $46

jr_084_4057:
	ld   b, a                                        ; $4057: $47
	ld   c, b                                        ; $4058: $48
	ld   c, c                                        ; $4059: $49
	ld   c, d                                        ; $405a: $4a

jr_084_405b:
	ld   c, e                                        ; $405b: $4b
	ld   c, h                                        ; $405c: $4c
	ld   c, l                                        ; $405d: $4d
	ld   c, [hl]                                     ; $405e: $4e
	ld   c, a                                        ; $405f: $4f
	inc  [hl]                                        ; $4060: $34
	dec  [hl]                                        ; $4061: $35
	ld   [hl], $37                                   ; $4062: $36 $37
	ld   d, b                                        ; $4064: $50
	ld   d, c                                        ; $4065: $51
	ld   d, d                                        ; $4066: $52
	ld   d, e                                        ; $4067: $53
	ld   d, h                                        ; $4068: $54
	ld   d, l                                        ; $4069: $55
	ld   d, [hl]                                     ; $406a: $56
	ld   d, a                                        ; $406b: $57
	ld   e, b                                        ; $406c: $58
	ld   e, c                                        ; $406d: $59
	ld   e, d                                        ; $406e: $5a

jr_084_406f:
	ld   e, e                                        ; $406f: $5b
	ld   e, h                                        ; $4070: $5c
	ld   e, l                                        ; $4071: $5d
	ld   e, [hl]                                     ; $4072: $5e
	ld   e, a                                        ; $4073: $5f
	ld   b, h                                        ; $4074: $44
	ld   b, l                                        ; $4075: $45
	ld   b, [hl]                                     ; $4076: $46
	ld   b, a                                        ; $4077: $47
	ld   h, b                                        ; $4078: $60
	ld   h, c                                        ; $4079: $61
	ld   h, d                                        ; $407a: $62
	ld   h, e                                        ; $407b: $63
	ld   h, h                                        ; $407c: $64
	ld   h, l                                        ; $407d: $65
	ld   h, [hl]                                     ; $407e: $66

jr_084_407f:
	ld   h, a                                        ; $407f: $67
	ld   l, b                                        ; $4080: $68
	ld   l, c                                        ; $4081: $69
	ld   l, d                                        ; $4082: $6a
	ld   l, e                                        ; $4083: $6b
	ld   l, h                                        ; $4084: $6c
	ld   l, l                                        ; $4085: $6d
	ld   l, [hl]                                     ; $4086: $6e
	ld   l, a                                        ; $4087: $6f
	jr   z, @+$2b                                    ; $4088: $28 $29

	ld   a, [hl+]                                    ; $408a: $2a
	dec  hl                                          ; $408b: $2b
	ld   [hl], b                                     ; $408c: $70
	ld   [hl], c                                     ; $408d: $71
	ld   [hl], d                                     ; $408e: $72
	ld   [hl], e                                     ; $408f: $73
	ld   [hl], h                                     ; $4090: $74
	ld   [hl], l                                     ; $4091: $75
	halt                                             ; $4092: $76
	ld   [hl], a                                     ; $4093: $77
	ld   a, b                                        ; $4094: $78
	ld   a, c                                        ; $4095: $79
	ld   a, d                                        ; $4096: $7a
	ld   a, e                                        ; $4097: $7b
	ld   a, h                                        ; $4098: $7c
	ld   a, l                                        ; $4099: $7d
	ld   a, [hl]                                     ; $409a: $7e
	ld   a, a                                        ; $409b: $7f
	jr   c, jr_084_40d7                              ; $409c: $38 $39

	ld   a, [hl-]                                    ; $409e: $3a
	dec  sp                                          ; $409f: $3b
	nop                                              ; $40a0: $00
	ld   bc, $0302                                   ; $40a1: $01 $02 $03
	inc  b                                           ; $40a4: $04
	dec  b                                           ; $40a5: $05
	ld   b, $07                                      ; $40a6: $06 $07
	ld   [$0a09], sp                                 ; $40a8: $08 $09 $0a
	dec  bc                                          ; $40ab: $0b
	inc  c                                           ; $40ac: $0c
	dec  c                                           ; $40ad: $0d
	ld   c, $0f                                      ; $40ae: $0e $0f
	inc  l                                           ; $40b0: $2c
	dec  l                                           ; $40b1: $2d
	ld   l, $2f                                      ; $40b2: $2e $2f
	db   $10                                         ; $40b4: $10
	ld   de, $1312                                   ; $40b5: $11 $12 $13
	inc  d                                           ; $40b8: $14
	dec  d                                           ; $40b9: $15
	ld   d, $17                                      ; $40ba: $16 $17
	jr   jr_084_40d7                                 ; $40bc: $18 $19

	ld   a, [de]                                     ; $40be: $1a
	dec  de                                          ; $40bf: $1b
	inc  e                                           ; $40c0: $1c
	dec  e                                           ; $40c1: $1d
	ld   e, $1f                                      ; $40c2: $1e $1f
	inc  a                                           ; $40c4: $3c
	dec  a                                           ; $40c5: $3d
	ld   a, $3f                                      ; $40c6: $3e $3f
	inc  bc                                          ; $40c8: $03
	inc  bc                                          ; $40c9: $03
	inc  bc                                          ; $40ca: $03
	inc  bc                                          ; $40cb: $03
	inc  bc                                          ; $40cc: $03
	inc  bc                                          ; $40cd: $03
	inc  bc                                          ; $40ce: $03
	inc  bc                                          ; $40cf: $03
	inc  bc                                          ; $40d0: $03
	inc  bc                                          ; $40d1: $03
	inc  bc                                          ; $40d2: $03
	inc  bc                                          ; $40d3: $03
	inc  bc                                          ; $40d4: $03
	inc  bc                                          ; $40d5: $03
	inc  bc                                          ; $40d6: $03

jr_084_40d7:
	inc  bc                                          ; $40d7: $03
	dec  bc                                          ; $40d8: $0b
	dec  bc                                          ; $40d9: $0b
	dec  bc                                          ; $40da: $0b
	dec  bc                                          ; $40db: $0b
	inc  bc                                          ; $40dc: $03
	inc  bc                                          ; $40dd: $03
	inc  bc                                          ; $40de: $03
	inc  bc                                          ; $40df: $03
	inc  bc                                          ; $40e0: $03
	inc  bc                                          ; $40e1: $03
	inc  bc                                          ; $40e2: $03
	inc  bc                                          ; $40e3: $03
	inc  bc                                          ; $40e4: $03
	inc  bc                                          ; $40e5: $03
	inc  bc                                          ; $40e6: $03
	inc  bc                                          ; $40e7: $03
	inc  bc                                          ; $40e8: $03
	inc  bc                                          ; $40e9: $03
	inc  bc                                          ; $40ea: $03
	inc  bc                                          ; $40eb: $03
	dec  bc                                          ; $40ec: $0b
	dec  bc                                          ; $40ed: $0b
	dec  bc                                          ; $40ee: $0b
	dec  bc                                          ; $40ef: $0b
	inc  bc                                          ; $40f0: $03
	inc  bc                                          ; $40f1: $03
	inc  bc                                          ; $40f2: $03
	inc  bc                                          ; $40f3: $03
	inc  bc                                          ; $40f4: $03
	inc  bc                                          ; $40f5: $03
	inc  bc                                          ; $40f6: $03
	inc  bc                                          ; $40f7: $03
	inc  bc                                          ; $40f8: $03
	inc  bc                                          ; $40f9: $03
	inc  bc                                          ; $40fa: $03
	inc  bc                                          ; $40fb: $03
	inc  bc                                          ; $40fc: $03
	inc  bc                                          ; $40fd: $03
	inc  bc                                          ; $40fe: $03
	inc  bc                                          ; $40ff: $03
	dec  bc                                          ; $4100: $0b
	dec  bc                                          ; $4101: $0b
	dec  bc                                          ; $4102: $0b
	dec  bc                                          ; $4103: $0b
	inc  bc                                          ; $4104: $03
	inc  bc                                          ; $4105: $03
	inc  bc                                          ; $4106: $03
	inc  bc                                          ; $4107: $03
	inc  bc                                          ; $4108: $03
	inc  bc                                          ; $4109: $03
	inc  bc                                          ; $410a: $03
	inc  b                                           ; $410b: $04
	inc  b                                           ; $410c: $04
	inc  b                                           ; $410d: $04
	inc  b                                           ; $410e: $04
	inc  b                                           ; $410f: $04
	inc  b                                           ; $4110: $04
	inc  bc                                          ; $4111: $03
	inc  bc                                          ; $4112: $03
	inc  bc                                          ; $4113: $03
	dec  bc                                          ; $4114: $0b
	inc  c                                           ; $4115: $0c
	inc  c                                           ; $4116: $0c
	dec  bc                                          ; $4117: $0b
	inc  bc                                          ; $4118: $03
	inc  bc                                          ; $4119: $03
	inc  bc                                          ; $411a: $03
	inc  bc                                          ; $411b: $03
	inc  bc                                          ; $411c: $03
	inc  b                                           ; $411d: $04
	inc  b                                           ; $411e: $04
	inc  b                                           ; $411f: $04
	inc  b                                           ; $4120: $04
	inc  b                                           ; $4121: $04
	inc  b                                           ; $4122: $04
	inc  bc                                          ; $4123: $03
	inc  b                                           ; $4124: $04
	inc  bc                                          ; $4125: $03
	inc  bc                                          ; $4126: $03
	inc  bc                                          ; $4127: $03
	dec  bc                                          ; $4128: $0b
	inc  c                                           ; $4129: $0c
	inc  c                                           ; $412a: $0c
	dec  bc                                          ; $412b: $0b
	inc  bc                                          ; $412c: $03
	inc  bc                                          ; $412d: $03
	inc  bc                                          ; $412e: $03
	inc  bc                                          ; $412f: $03
	inc  bc                                          ; $4130: $03
	inc  b                                           ; $4131: $04
	inc  b                                           ; $4132: $04
	inc  b                                           ; $4133: $04
	inc  bc                                          ; $4134: $03
	inc  bc                                          ; $4135: $03
	inc  bc                                          ; $4136: $03
	inc  bc                                          ; $4137: $03
	inc  bc                                          ; $4138: $03
	inc  bc                                          ; $4139: $03
	inc  bc                                          ; $413a: $03
	inc  bc                                          ; $413b: $03
	dec  bc                                          ; $413c: $0b
	dec  bc                                          ; $413d: $0b
	dec  bc                                          ; $413e: $0b
	dec  bc                                          ; $413f: $0b
	inc  bc                                          ; $4140: $03
	inc  bc                                          ; $4141: $03
	inc  bc                                          ; $4142: $03
	inc  bc                                          ; $4143: $03
	inc  bc                                          ; $4144: $03
	inc  bc                                          ; $4145: $03
	inc  b                                           ; $4146: $04
	inc  bc                                          ; $4147: $03
	inc  bc                                          ; $4148: $03
	inc  bc                                          ; $4149: $03
	inc  bc                                          ; $414a: $03
	inc  bc                                          ; $414b: $03
	inc  bc                                          ; $414c: $03
	inc  bc                                          ; $414d: $03
	inc  bc                                          ; $414e: $03
	inc  bc                                          ; $414f: $03
	dec  bc                                          ; $4150: $0b
	dec  bc                                          ; $4151: $0b
	dec  bc                                          ; $4152: $0b
	dec  bc                                          ; $4153: $0b
	inc  bc                                          ; $4154: $03
	inc  bc                                          ; $4155: $03
	inc  bc                                          ; $4156: $03
	inc  bc                                          ; $4157: $03
	inc  bc                                          ; $4158: $03
	inc  bc                                          ; $4159: $03
	inc  bc                                          ; $415a: $03
	inc  bc                                          ; $415b: $03
	dec  b                                           ; $415c: $05
	dec  b                                           ; $415d: $05
	dec  b                                           ; $415e: $05
	inc  bc                                          ; $415f: $03
	inc  bc                                          ; $4160: $03
	inc  bc                                          ; $4161: $03
	inc  bc                                          ; $4162: $03
	inc  bc                                          ; $4163: $03
	dec  bc                                          ; $4164: $0b
	dec  bc                                          ; $4165: $0b
	dec  bc                                          ; $4166: $0b
	dec  bc                                          ; $4167: $0b
	dec  bc                                          ; $4168: $0b
	dec  bc                                          ; $4169: $0b
	dec  c                                           ; $416a: $0d
	dec  c                                           ; $416b: $0d
	dec  c                                           ; $416c: $0d
	dec  bc                                          ; $416d: $0b
	dec  c                                           ; $416e: $0d
	dec  c                                           ; $416f: $0d
	dec  c                                           ; $4170: $0d
	dec  c                                           ; $4171: $0d
	dec  c                                           ; $4172: $0d
	dec  c                                           ; $4173: $0d
	dec  c                                           ; $4174: $0d
	dec  c                                           ; $4175: $0d
	dec  c                                           ; $4176: $0d
	dec  c                                           ; $4177: $0d
	dec  c                                           ; $4178: $0d
	dec  bc                                          ; $4179: $0b
	dec  bc                                          ; $417a: $0b
	dec  bc                                          ; $417b: $0b
	dec  bc                                          ; $417c: $0b
	dec  bc                                          ; $417d: $0b
	dec  bc                                          ; $417e: $0b
	dec  c                                           ; $417f: $0d
	dec  c                                           ; $4180: $0d
	dec  c                                           ; $4181: $0d
	dec  c                                           ; $4182: $0d
	dec  bc                                          ; $4183: $0b
	dec  c                                           ; $4184: $0d
	dec  c                                           ; $4185: $0d
	dec  c                                           ; $4186: $0d
	dec  bc                                          ; $4187: $0b
	dec  c                                           ; $4188: $0d
	dec  c                                           ; $4189: $0d
	dec  c                                           ; $418a: $0d
	dec  c                                           ; $418b: $0d
	dec  bc                                          ; $418c: $0b
	dec  bc                                          ; $418d: $0b
	dec  bc                                          ; $418e: $0b
	dec  bc                                          ; $418f: $0b
	nop                                              ; $4190: $00
	ld   bc, $0302                                   ; $4191: $01 $02 $03
	inc  b                                           ; $4194: $04
	dec  b                                           ; $4195: $05
	ld   b, $07                                      ; $4196: $06 $07
	ld   [$0a09], sp                                 ; $4198: $08 $09 $0a
	dec  bc                                          ; $419b: $0b
	inc  c                                           ; $419c: $0c
	dec  c                                           ; $419d: $0d
	ld   c, $0f                                      ; $419e: $0e $0f
	jr   nz, jr_084_41c3                             ; $41a0: $20 $21

	ld   [hl+], a                                    ; $41a2: $22
	inc  hl                                          ; $41a3: $23
	db   $10                                         ; $41a4: $10
	ld   de, $1312                                   ; $41a5: $11 $12 $13
	inc  d                                           ; $41a8: $14
	dec  d                                           ; $41a9: $15
	ld   d, $17                                      ; $41aa: $16 $17
	jr   @+$1b                                       ; $41ac: $18 $19

	ld   a, [de]                                     ; $41ae: $1a
	dec  de                                          ; $41af: $1b
	inc  e                                           ; $41b0: $1c
	dec  e                                           ; $41b1: $1d
	ld   e, $1f                                      ; $41b2: $1e $1f
	jr   nc, jr_084_41e7                             ; $41b4: $30 $31

	ld   [hl-], a                                    ; $41b6: $32
	inc  sp                                          ; $41b7: $33
	jr   nz, @+$23                                   ; $41b8: $20 $21

	ld   [hl+], a                                    ; $41ba: $22
	inc  hl                                          ; $41bb: $23
	inc  h                                           ; $41bc: $24
	dec  h                                           ; $41bd: $25
	ld   h, $27                                      ; $41be: $26 $27
	jr   z, jr_084_41eb                              ; $41c0: $28 $29

	ld   a, [hl+]                                    ; $41c2: $2a

jr_084_41c3:
	dec  hl                                          ; $41c3: $2b
	inc  l                                           ; $41c4: $2c
	dec  l                                           ; $41c5: $2d
	ld   l, $2f                                      ; $41c6: $2e $2f
	ld   b, b                                        ; $41c8: $40
	ld   b, c                                        ; $41c9: $41
	ld   b, d                                        ; $41ca: $42
	ld   b, e                                        ; $41cb: $43
	jr   nc, jr_084_41ff                             ; $41cc: $30 $31

	ld   [hl-], a                                    ; $41ce: $32
	inc  sp                                          ; $41cf: $33
	inc  [hl]                                        ; $41d0: $34
	dec  [hl]                                        ; $41d1: $35
	ld   [hl], $37                                   ; $41d2: $36 $37
	jr   c, jr_084_420f                              ; $41d4: $38 $39

	ld   a, [hl-]                                    ; $41d6: $3a
	dec  sp                                          ; $41d7: $3b
	inc  a                                           ; $41d8: $3c
	dec  a                                           ; $41d9: $3d
	ld   a, $3f                                      ; $41da: $3e $3f
	inc  h                                           ; $41dc: $24
	dec  h                                           ; $41dd: $25
	ld   h, $27                                      ; $41de: $26 $27
	ld   b, b                                        ; $41e0: $40
	ld   b, c                                        ; $41e1: $41
	ld   b, d                                        ; $41e2: $42
	ld   b, e                                        ; $41e3: $43
	ld   b, h                                        ; $41e4: $44
	ld   b, l                                        ; $41e5: $45
	ld   b, [hl]                                     ; $41e6: $46

jr_084_41e7:
	ld   b, a                                        ; $41e7: $47
	ld   c, b                                        ; $41e8: $48
	ld   c, c                                        ; $41e9: $49
	ld   c, d                                        ; $41ea: $4a

jr_084_41eb:
	ld   c, e                                        ; $41eb: $4b
	ld   c, h                                        ; $41ec: $4c
	ld   c, l                                        ; $41ed: $4d
	ld   c, [hl]                                     ; $41ee: $4e
	ld   c, a                                        ; $41ef: $4f
	inc  [hl]                                        ; $41f0: $34
	dec  [hl]                                        ; $41f1: $35
	ld   [hl], $37                                   ; $41f2: $36 $37
	ld   d, b                                        ; $41f4: $50
	ld   d, c                                        ; $41f5: $51
	ld   d, d                                        ; $41f6: $52
	ld   d, e                                        ; $41f7: $53
	ld   d, h                                        ; $41f8: $54
	ld   d, l                                        ; $41f9: $55
	ld   d, [hl]                                     ; $41fa: $56
	ld   d, a                                        ; $41fb: $57
	ld   e, b                                        ; $41fc: $58
	ld   e, c                                        ; $41fd: $59
	ld   e, d                                        ; $41fe: $5a

jr_084_41ff:
	ld   e, e                                        ; $41ff: $5b
	ld   e, h                                        ; $4200: $5c
	ld   e, l                                        ; $4201: $5d
	ld   e, [hl]                                     ; $4202: $5e
	ld   e, a                                        ; $4203: $5f
	ld   b, h                                        ; $4204: $44
	ld   b, l                                        ; $4205: $45
	ld   b, [hl]                                     ; $4206: $46
	ld   b, a                                        ; $4207: $47
	ld   h, b                                        ; $4208: $60
	ld   h, c                                        ; $4209: $61
	ld   h, d                                        ; $420a: $62
	ld   h, e                                        ; $420b: $63
	ld   h, h                                        ; $420c: $64
	ld   h, l                                        ; $420d: $65
	ld   h, [hl]                                     ; $420e: $66

jr_084_420f:
	ld   h, a                                        ; $420f: $67
	ld   l, b                                        ; $4210: $68
	ld   l, c                                        ; $4211: $69
	ld   l, d                                        ; $4212: $6a
	ld   l, e                                        ; $4213: $6b
	ld   l, h                                        ; $4214: $6c
	ld   l, l                                        ; $4215: $6d
	ld   l, [hl]                                     ; $4216: $6e
	ld   l, a                                        ; $4217: $6f
	jr   z, @+$2b                                    ; $4218: $28 $29

	ld   a, [hl+]                                    ; $421a: $2a
	dec  hl                                          ; $421b: $2b
	ld   [hl], b                                     ; $421c: $70
	ld   [hl], c                                     ; $421d: $71
	ld   [hl], d                                     ; $421e: $72
	ld   [hl], e                                     ; $421f: $73
	ld   [hl], h                                     ; $4220: $74
	ld   [hl], l                                     ; $4221: $75
	halt                                             ; $4222: $76
	ld   [hl], a                                     ; $4223: $77
	ld   a, b                                        ; $4224: $78
	ld   a, c                                        ; $4225: $79
	ld   a, d                                        ; $4226: $7a
	ld   a, e                                        ; $4227: $7b
	ld   a, h                                        ; $4228: $7c
	ld   a, l                                        ; $4229: $7d
	ld   a, [hl]                                     ; $422a: $7e
	ld   a, a                                        ; $422b: $7f
	jr   c, jr_084_4267                              ; $422c: $38 $39

	ld   a, [hl-]                                    ; $422e: $3a
	dec  sp                                          ; $422f: $3b
	nop                                              ; $4230: $00
	ld   bc, $0302                                   ; $4231: $01 $02 $03
	inc  b                                           ; $4234: $04
	dec  b                                           ; $4235: $05
	ld   b, $07                                      ; $4236: $06 $07
	ld   [$0a09], sp                                 ; $4238: $08 $09 $0a
	dec  bc                                          ; $423b: $0b
	inc  c                                           ; $423c: $0c
	dec  c                                           ; $423d: $0d
	ld   c, $0f                                      ; $423e: $0e $0f
	inc  l                                           ; $4240: $2c
	dec  l                                           ; $4241: $2d
	ld   l, $2f                                      ; $4242: $2e $2f
	db   $10                                         ; $4244: $10
	ld   de, $1312                                   ; $4245: $11 $12 $13
	inc  d                                           ; $4248: $14
	dec  d                                           ; $4249: $15
	ld   d, $17                                      ; $424a: $16 $17
	jr   jr_084_4267                                 ; $424c: $18 $19

	ld   a, [de]                                     ; $424e: $1a
	dec  de                                          ; $424f: $1b
	inc  e                                           ; $4250: $1c
	dec  e                                           ; $4251: $1d
	ld   e, $1f                                      ; $4252: $1e $1f
	inc  a                                           ; $4254: $3c
	dec  a                                           ; $4255: $3d
	ld   a, $3f                                      ; $4256: $3e $3f
	inc  bc                                          ; $4258: $03
	inc  bc                                          ; $4259: $03
	inc  bc                                          ; $425a: $03
	inc  bc                                          ; $425b: $03
	inc  bc                                          ; $425c: $03
	inc  bc                                          ; $425d: $03
	inc  bc                                          ; $425e: $03
	inc  bc                                          ; $425f: $03
	inc  bc                                          ; $4260: $03
	inc  bc                                          ; $4261: $03
	inc  bc                                          ; $4262: $03
	inc  bc                                          ; $4263: $03
	inc  bc                                          ; $4264: $03
	inc  bc                                          ; $4265: $03
	inc  bc                                          ; $4266: $03

jr_084_4267:
	inc  bc                                          ; $4267: $03
	dec  bc                                          ; $4268: $0b
	dec  bc                                          ; $4269: $0b
	dec  bc                                          ; $426a: $0b
	dec  bc                                          ; $426b: $0b
	inc  bc                                          ; $426c: $03
	inc  bc                                          ; $426d: $03
	inc  bc                                          ; $426e: $03
	inc  bc                                          ; $426f: $03
	inc  bc                                          ; $4270: $03
	inc  bc                                          ; $4271: $03
	inc  bc                                          ; $4272: $03
	inc  bc                                          ; $4273: $03
	inc  bc                                          ; $4274: $03
	inc  bc                                          ; $4275: $03
	inc  bc                                          ; $4276: $03
	inc  bc                                          ; $4277: $03
	inc  bc                                          ; $4278: $03
	inc  bc                                          ; $4279: $03
	inc  bc                                          ; $427a: $03
	inc  bc                                          ; $427b: $03
	dec  bc                                          ; $427c: $0b
	dec  bc                                          ; $427d: $0b
	dec  bc                                          ; $427e: $0b
	dec  bc                                          ; $427f: $0b
	inc  bc                                          ; $4280: $03
	inc  bc                                          ; $4281: $03
	inc  bc                                          ; $4282: $03
	inc  bc                                          ; $4283: $03
	inc  bc                                          ; $4284: $03
	inc  bc                                          ; $4285: $03
	inc  bc                                          ; $4286: $03
	inc  bc                                          ; $4287: $03
	inc  bc                                          ; $4288: $03
	inc  bc                                          ; $4289: $03
	inc  bc                                          ; $428a: $03
	inc  bc                                          ; $428b: $03
	inc  bc                                          ; $428c: $03
	inc  bc                                          ; $428d: $03
	inc  bc                                          ; $428e: $03
	inc  bc                                          ; $428f: $03
	dec  bc                                          ; $4290: $0b
	dec  bc                                          ; $4291: $0b
	dec  bc                                          ; $4292: $0b
	dec  bc                                          ; $4293: $0b
	inc  bc                                          ; $4294: $03
	inc  bc                                          ; $4295: $03
	inc  bc                                          ; $4296: $03
	inc  bc                                          ; $4297: $03
	inc  bc                                          ; $4298: $03
	inc  bc                                          ; $4299: $03
	inc  bc                                          ; $429a: $03
	inc  b                                           ; $429b: $04
	inc  b                                           ; $429c: $04
	inc  b                                           ; $429d: $04
	inc  b                                           ; $429e: $04
	inc  b                                           ; $429f: $04
	inc  bc                                          ; $42a0: $03
	inc  bc                                          ; $42a1: $03
	inc  bc                                          ; $42a2: $03
	inc  b                                           ; $42a3: $04
	dec  bc                                          ; $42a4: $0b
	dec  bc                                          ; $42a5: $0b
	inc  c                                           ; $42a6: $0c
	dec  bc                                          ; $42a7: $0b
	inc  bc                                          ; $42a8: $03
	inc  bc                                          ; $42a9: $03
	inc  bc                                          ; $42aa: $03
	inc  bc                                          ; $42ab: $03
	inc  bc                                          ; $42ac: $03
	inc  bc                                          ; $42ad: $03
	inc  bc                                          ; $42ae: $03
	inc  bc                                          ; $42af: $03
	inc  bc                                          ; $42b0: $03
	inc  b                                           ; $42b1: $04
	inc  b                                           ; $42b2: $04
	inc  b                                           ; $42b3: $04
	inc  b                                           ; $42b4: $04
	inc  bc                                          ; $42b5: $03
	inc  bc                                          ; $42b6: $03
	inc  b                                           ; $42b7: $04
	inc  c                                           ; $42b8: $0c
	inc  c                                           ; $42b9: $0c
	inc  c                                           ; $42ba: $0c
	dec  bc                                          ; $42bb: $0b
	inc  bc                                          ; $42bc: $03
	inc  bc                                          ; $42bd: $03
	inc  bc                                          ; $42be: $03
	inc  bc                                          ; $42bf: $03
	inc  bc                                          ; $42c0: $03
	inc  bc                                          ; $42c1: $03
	inc  bc                                          ; $42c2: $03
	inc  bc                                          ; $42c3: $03
	inc  bc                                          ; $42c4: $03
	inc  b                                           ; $42c5: $04
	inc  b                                           ; $42c6: $04
	inc  b                                           ; $42c7: $04
	inc  bc                                          ; $42c8: $03
	inc  bc                                          ; $42c9: $03
	inc  bc                                          ; $42ca: $03
	inc  b                                           ; $42cb: $04
	inc  c                                           ; $42cc: $0c
	inc  c                                           ; $42cd: $0c
	inc  c                                           ; $42ce: $0c
	dec  bc                                          ; $42cf: $0b
	inc  bc                                          ; $42d0: $03
	inc  bc                                          ; $42d1: $03
	inc  bc                                          ; $42d2: $03
	inc  bc                                          ; $42d3: $03
	inc  bc                                          ; $42d4: $03
	inc  bc                                          ; $42d5: $03
	inc  bc                                          ; $42d6: $03
	inc  bc                                          ; $42d7: $03
	inc  bc                                          ; $42d8: $03
	inc  b                                           ; $42d9: $04
	inc  b                                           ; $42da: $04
	inc  b                                           ; $42db: $04
	inc  bc                                          ; $42dc: $03
	inc  bc                                          ; $42dd: $03
	inc  bc                                          ; $42de: $03
	inc  bc                                          ; $42df: $03
	inc  c                                           ; $42e0: $0c
	inc  c                                           ; $42e1: $0c
	inc  c                                           ; $42e2: $0c
	dec  bc                                          ; $42e3: $0b
	inc  bc                                          ; $42e4: $03
	inc  bc                                          ; $42e5: $03
	inc  bc                                          ; $42e6: $03
	inc  bc                                          ; $42e7: $03
	inc  bc                                          ; $42e8: $03
	inc  bc                                          ; $42e9: $03
	inc  bc                                          ; $42ea: $03
	inc  bc                                          ; $42eb: $03
	inc  bc                                          ; $42ec: $03
	inc  bc                                          ; $42ed: $03
	inc  bc                                          ; $42ee: $03
	inc  bc                                          ; $42ef: $03
	inc  bc                                          ; $42f0: $03
	inc  bc                                          ; $42f1: $03
	inc  bc                                          ; $42f2: $03
	inc  bc                                          ; $42f3: $03
	inc  c                                           ; $42f4: $0c
	inc  c                                           ; $42f5: $0c
	inc  c                                           ; $42f6: $0c
	dec  bc                                          ; $42f7: $0b
	dec  bc                                          ; $42f8: $0b
	dec  bc                                          ; $42f9: $0b
	dec  bc                                          ; $42fa: $0b
	dec  bc                                          ; $42fb: $0b
	dec  bc                                          ; $42fc: $0b
	dec  bc                                          ; $42fd: $0b
	dec  bc                                          ; $42fe: $0b
	dec  bc                                          ; $42ff: $0b
	dec  bc                                          ; $4300: $0b
	dec  bc                                          ; $4301: $0b
	dec  bc                                          ; $4302: $0b
	dec  bc                                          ; $4303: $0b
	dec  bc                                          ; $4304: $0b
	dec  bc                                          ; $4305: $0b
	dec  bc                                          ; $4306: $0b
	dec  bc                                          ; $4307: $0b
	dec  bc                                          ; $4308: $0b
	dec  bc                                          ; $4309: $0b
	dec  bc                                          ; $430a: $0b
	dec  bc                                          ; $430b: $0b
	dec  bc                                          ; $430c: $0b
	dec  bc                                          ; $430d: $0b
	dec  bc                                          ; $430e: $0b
	dec  bc                                          ; $430f: $0b
	dec  bc                                          ; $4310: $0b
	dec  bc                                          ; $4311: $0b
	dec  bc                                          ; $4312: $0b
	dec  bc                                          ; $4313: $0b
	dec  bc                                          ; $4314: $0b
	dec  bc                                          ; $4315: $0b
	dec  bc                                          ; $4316: $0b
	dec  bc                                          ; $4317: $0b
	dec  bc                                          ; $4318: $0b
	dec  bc                                          ; $4319: $0b
	dec  bc                                          ; $431a: $0b
	dec  bc                                          ; $431b: $0b
	dec  bc                                          ; $431c: $0b
	dec  bc                                          ; $431d: $0b
	dec  bc                                          ; $431e: $0b
	dec  bc                                          ; $431f: $0b
	nop                                              ; $4320: $00
	ld   bc, $0302                                   ; $4321: $01 $02 $03
	inc  b                                           ; $4324: $04
	dec  b                                           ; $4325: $05
	ld   b, $07                                      ; $4326: $06 $07
	ld   [$0a09], sp                                 ; $4328: $08 $09 $0a
	dec  bc                                          ; $432b: $0b
	inc  c                                           ; $432c: $0c
	dec  c                                           ; $432d: $0d
	ld   c, $0f                                      ; $432e: $0e $0f
	jr   nz, jr_084_4353                             ; $4330: $20 $21

	ld   [hl+], a                                    ; $4332: $22
	inc  hl                                          ; $4333: $23
	db   $10                                         ; $4334: $10
	ld   de, $1312                                   ; $4335: $11 $12 $13
	inc  d                                           ; $4338: $14
	dec  d                                           ; $4339: $15
	ld   d, $17                                      ; $433a: $16 $17
	jr   @+$1b                                       ; $433c: $18 $19

	ld   a, [de]                                     ; $433e: $1a
	dec  de                                          ; $433f: $1b
	inc  e                                           ; $4340: $1c
	dec  e                                           ; $4341: $1d
	ld   e, $1f                                      ; $4342: $1e $1f
	jr   nc, jr_084_4377                             ; $4344: $30 $31

	ld   [hl-], a                                    ; $4346: $32
	inc  sp                                          ; $4347: $33
	jr   nz, @+$23                                   ; $4348: $20 $21

	ld   [hl+], a                                    ; $434a: $22
	inc  hl                                          ; $434b: $23
	inc  h                                           ; $434c: $24
	dec  h                                           ; $434d: $25
	ld   h, $27                                      ; $434e: $26 $27
	jr   z, jr_084_437b                              ; $4350: $28 $29

	ld   a, [hl+]                                    ; $4352: $2a

jr_084_4353:
	dec  hl                                          ; $4353: $2b
	inc  l                                           ; $4354: $2c
	dec  l                                           ; $4355: $2d
	ld   l, $2f                                      ; $4356: $2e $2f
	inc  h                                           ; $4358: $24
	dec  h                                           ; $4359: $25
	ld   [hl-], a                                    ; $435a: $32
	inc  sp                                          ; $435b: $33
	jr   nc, jr_084_438f                             ; $435c: $30 $31

	ld   [hl-], a                                    ; $435e: $32
	inc  sp                                          ; $435f: $33
	inc  [hl]                                        ; $4360: $34
	dec  [hl]                                        ; $4361: $35
	ld   [hl], $37                                   ; $4362: $36 $37
	jr   c, jr_084_439f                              ; $4364: $38 $39

	ld   a, [hl-]                                    ; $4366: $3a
	dec  sp                                          ; $4367: $3b
	inc  a                                           ; $4368: $3c
	dec  a                                           ; $4369: $3d
	ld   a, $3f                                      ; $436a: $3e $3f
	inc  [hl]                                        ; $436c: $34
	dec  [hl]                                        ; $436d: $35
	ld   [hl], $37                                   ; $436e: $36 $37
	ld   b, b                                        ; $4370: $40
	ld   b, c                                        ; $4371: $41
	ld   b, d                                        ; $4372: $42
	ld   b, e                                        ; $4373: $43
	ld   b, h                                        ; $4374: $44
	ld   b, l                                        ; $4375: $45
	ld   b, [hl]                                     ; $4376: $46

jr_084_4377:
	ld   b, a                                        ; $4377: $47
	ld   c, b                                        ; $4378: $48
	ld   c, c                                        ; $4379: $49
	ld   c, d                                        ; $437a: $4a

jr_084_437b:
	ld   c, e                                        ; $437b: $4b
	ld   c, h                                        ; $437c: $4c
	ld   c, l                                        ; $437d: $4d
	ld   c, [hl]                                     ; $437e: $4e
	ld   c, a                                        ; $437f: $4f
	jr   z, @+$2b                                    ; $4380: $28 $29

	ld   a, [hl+]                                    ; $4382: $2a
	dec  hl                                          ; $4383: $2b
	ld   d, b                                        ; $4384: $50
	ld   d, c                                        ; $4385: $51
	ld   d, d                                        ; $4386: $52
	ld   d, e                                        ; $4387: $53
	ld   d, h                                        ; $4388: $54
	ld   d, l                                        ; $4389: $55
	ld   d, [hl]                                     ; $438a: $56
	ld   d, a                                        ; $438b: $57
	ld   e, b                                        ; $438c: $58
	ld   e, c                                        ; $438d: $59
	ld   e, d                                        ; $438e: $5a

jr_084_438f:
	ld   e, e                                        ; $438f: $5b
	ld   e, h                                        ; $4390: $5c
	ld   e, l                                        ; $4391: $5d
	ld   c, [hl]                                     ; $4392: $4e
	ld   e, a                                        ; $4393: $5f
	jr   c, @+$3b                                    ; $4394: $38 $39

	ld   a, [hl-]                                    ; $4396: $3a
	dec  sp                                          ; $4397: $3b
	ld   h, b                                        ; $4398: $60
	ld   h, c                                        ; $4399: $61
	ld   h, d                                        ; $439a: $62
	ld   h, e                                        ; $439b: $63
	ld   h, h                                        ; $439c: $64
	ld   h, l                                        ; $439d: $65
	ld   h, [hl]                                     ; $439e: $66

jr_084_439f:
	ld   h, a                                        ; $439f: $67
	ld   l, b                                        ; $43a0: $68
	ld   l, c                                        ; $43a1: $69
	ld   l, d                                        ; $43a2: $6a
	ld   l, e                                        ; $43a3: $6b
	ld   l, h                                        ; $43a4: $6c
	ld   l, l                                        ; $43a5: $6d
	ld   l, [hl]                                     ; $43a6: $6e
	ld   l, a                                        ; $43a7: $6f
	inc  l                                           ; $43a8: $2c
	dec  l                                           ; $43a9: $2d
	ld   l, $2f                                      ; $43aa: $2e $2f
	ld   [hl], b                                     ; $43ac: $70
	ld   [hl], c                                     ; $43ad: $71
	ld   [hl], d                                     ; $43ae: $72
	ld   [hl], e                                     ; $43af: $73
	ld   [hl], h                                     ; $43b0: $74
	ld   [hl], l                                     ; $43b1: $75
	halt                                             ; $43b2: $76
	ld   [hl], a                                     ; $43b3: $77
	ld   a, b                                        ; $43b4: $78
	ld   a, c                                        ; $43b5: $79
	ld   a, d                                        ; $43b6: $7a
	ld   a, e                                        ; $43b7: $7b
	ld   a, h                                        ; $43b8: $7c
	ld   a, l                                        ; $43b9: $7d
	ld   a, [hl]                                     ; $43ba: $7e
	ld   a, a                                        ; $43bb: $7f
	inc  a                                           ; $43bc: $3c
	dec  a                                           ; $43bd: $3d
	ld   a, $3f                                      ; $43be: $3e $3f
	nop                                              ; $43c0: $00
	ld   bc, $0302                                   ; $43c1: $01 $02 $03
	inc  b                                           ; $43c4: $04
	dec  b                                           ; $43c5: $05
	ld   b, $07                                      ; $43c6: $06 $07
	ld   [$0a09], sp                                 ; $43c8: $08 $09 $0a
	dec  bc                                          ; $43cb: $0b
	inc  c                                           ; $43cc: $0c
	dec  c                                           ; $43cd: $0d
	ld   c, $0f                                      ; $43ce: $0e $0f
	ld   b, b                                        ; $43d0: $40
	ld   b, c                                        ; $43d1: $41
	ld   b, d                                        ; $43d2: $42
	ld   b, e                                        ; $43d3: $43
	db   $10                                         ; $43d4: $10
	ld   de, $1312                                   ; $43d5: $11 $12 $13
	inc  d                                           ; $43d8: $14
	dec  d                                           ; $43d9: $15
	ld   d, $17                                      ; $43da: $16 $17
	jr   jr_084_43f7                                 ; $43dc: $18 $19

	ld   a, [de]                                     ; $43de: $1a
	dec  de                                          ; $43df: $1b
	inc  e                                           ; $43e0: $1c
	dec  e                                           ; $43e1: $1d
	ld   e, $1f                                      ; $43e2: $1e $1f
	ld   b, h                                        ; $43e4: $44
	ld   h, $27                                      ; $43e5: $26 $27
	ld   e, [hl]                                     ; $43e7: $5e
	inc  bc                                          ; $43e8: $03
	inc  bc                                          ; $43e9: $03
	inc  bc                                          ; $43ea: $03
	inc  bc                                          ; $43eb: $03
	inc  bc                                          ; $43ec: $03
	inc  bc                                          ; $43ed: $03
	inc  bc                                          ; $43ee: $03
	inc  bc                                          ; $43ef: $03
	inc  bc                                          ; $43f0: $03
	inc  bc                                          ; $43f1: $03
	inc  bc                                          ; $43f2: $03
	inc  bc                                          ; $43f3: $03
	inc  bc                                          ; $43f4: $03
	inc  bc                                          ; $43f5: $03
	inc  bc                                          ; $43f6: $03

jr_084_43f7:
	inc  bc                                          ; $43f7: $03
	dec  bc                                          ; $43f8: $0b
	dec  bc                                          ; $43f9: $0b
	dec  bc                                          ; $43fa: $0b
	dec  bc                                          ; $43fb: $0b
	inc  bc                                          ; $43fc: $03
	inc  bc                                          ; $43fd: $03
	inc  bc                                          ; $43fe: $03
	inc  bc                                          ; $43ff: $03
	inc  bc                                          ; $4400: $03
	inc  bc                                          ; $4401: $03
	inc  bc                                          ; $4402: $03
	inc  bc                                          ; $4403: $03
	inc  bc                                          ; $4404: $03
	inc  bc                                          ; $4405: $03
	inc  bc                                          ; $4406: $03
	inc  bc                                          ; $4407: $03
	inc  bc                                          ; $4408: $03
	inc  bc                                          ; $4409: $03
	inc  bc                                          ; $440a: $03
	inc  bc                                          ; $440b: $03
	dec  bc                                          ; $440c: $0b
	dec  bc                                          ; $440d: $0b
	dec  bc                                          ; $440e: $0b
	dec  bc                                          ; $440f: $0b
	dec  b                                           ; $4410: $05
	dec  b                                           ; $4411: $05
	inc  bc                                          ; $4412: $03
	inc  bc                                          ; $4413: $03
	inc  bc                                          ; $4414: $03
	inc  bc                                          ; $4415: $03
	inc  bc                                          ; $4416: $03
	inc  bc                                          ; $4417: $03
	inc  bc                                          ; $4418: $03
	inc  bc                                          ; $4419: $03
	inc  bc                                          ; $441a: $03
	inc  bc                                          ; $441b: $03
	inc  bc                                          ; $441c: $03
	inc  bc                                          ; $441d: $03
	inc  bc                                          ; $441e: $03
	inc  bc                                          ; $441f: $03
	dec  bc                                          ; $4420: $0b
	dec  bc                                          ; $4421: $0b
	dec  bc                                          ; $4422: $0b
	dec  bc                                          ; $4423: $0b
	dec  b                                           ; $4424: $05
	dec  b                                           ; $4425: $05
	dec  b                                           ; $4426: $05
	dec  b                                           ; $4427: $05
	inc  bc                                          ; $4428: $03
	inc  bc                                          ; $4429: $03
	inc  bc                                          ; $442a: $03
	inc  bc                                          ; $442b: $03
	inc  bc                                          ; $442c: $03
	inc  bc                                          ; $442d: $03
	inc  bc                                          ; $442e: $03
	inc  bc                                          ; $442f: $03
	inc  bc                                          ; $4430: $03
	inc  bc                                          ; $4431: $03
	inc  bc                                          ; $4432: $03
	inc  bc                                          ; $4433: $03
	dec  bc                                          ; $4434: $0b
	dec  bc                                          ; $4435: $0b
	dec  bc                                          ; $4436: $0b
	dec  bc                                          ; $4437: $0b
	dec  b                                           ; $4438: $05
	dec  b                                           ; $4439: $05
	dec  b                                           ; $443a: $05
	dec  b                                           ; $443b: $05
	dec  b                                           ; $443c: $05
	inc  bc                                          ; $443d: $03
	inc  bc                                          ; $443e: $03
	inc  bc                                          ; $443f: $03
	inc  bc                                          ; $4440: $03
	inc  b                                           ; $4441: $04
	inc  b                                           ; $4442: $04
	inc  b                                           ; $4443: $04
	inc  bc                                          ; $4444: $03
	inc  bc                                          ; $4445: $03
	inc  bc                                          ; $4446: $03
	inc  b                                           ; $4447: $04
	inc  c                                           ; $4448: $0c
	inc  c                                           ; $4449: $0c
	inc  c                                           ; $444a: $0c
	dec  bc                                          ; $444b: $0b
	dec  b                                           ; $444c: $05
	dec  b                                           ; $444d: $05
	dec  b                                           ; $444e: $05
	dec  b                                           ; $444f: $05
	dec  b                                           ; $4450: $05
	inc  bc                                          ; $4451: $03
	inc  bc                                          ; $4452: $03
	inc  bc                                          ; $4453: $03
	inc  bc                                          ; $4454: $03
	inc  b                                           ; $4455: $04
	inc  b                                           ; $4456: $04
	inc  b                                           ; $4457: $04
	inc  bc                                          ; $4458: $03
	inc  bc                                          ; $4459: $03
	inc  bc                                          ; $445a: $03
	inc  b                                           ; $445b: $04
	inc  c                                           ; $445c: $0c
	inc  c                                           ; $445d: $0c
	inc  c                                           ; $445e: $0c
	dec  bc                                          ; $445f: $0b
	dec  b                                           ; $4460: $05
	dec  b                                           ; $4461: $05
	dec  b                                           ; $4462: $05
	dec  b                                           ; $4463: $05
	dec  b                                           ; $4464: $05
	inc  bc                                          ; $4465: $03
	inc  bc                                          ; $4466: $03
	inc  bc                                          ; $4467: $03
	inc  bc                                          ; $4468: $03
	inc  b                                           ; $4469: $04
	inc  b                                           ; $446a: $04
	inc  bc                                          ; $446b: $03
	inc  bc                                          ; $446c: $03
	inc  bc                                          ; $446d: $03
	inc  bc                                          ; $446e: $03
	inc  bc                                          ; $446f: $03
	inc  c                                           ; $4470: $0c
	inc  c                                           ; $4471: $0c
	inc  c                                           ; $4472: $0c
	dec  bc                                          ; $4473: $0b
	dec  b                                           ; $4474: $05
	dec  b                                           ; $4475: $05
	dec  b                                           ; $4476: $05
	dec  b                                           ; $4477: $05
	dec  b                                           ; $4478: $05
	inc  bc                                          ; $4479: $03
	inc  bc                                          ; $447a: $03
	inc  bc                                          ; $447b: $03
	inc  bc                                          ; $447c: $03
	inc  bc                                          ; $447d: $03
	inc  bc                                          ; $447e: $03
	inc  bc                                          ; $447f: $03
	inc  bc                                          ; $4480: $03
	inc  bc                                          ; $4481: $03
	inc  bc                                          ; $4482: $03
	inc  bc                                          ; $4483: $03
	inc  c                                           ; $4484: $0c
	inc  c                                           ; $4485: $0c
	inc  c                                           ; $4486: $0c
	dec  bc                                          ; $4487: $0b
	dec  c                                           ; $4488: $0d
	dec  c                                           ; $4489: $0d
	dec  c                                           ; $448a: $0d
	dec  c                                           ; $448b: $0d
	dec  c                                           ; $448c: $0d
	dec  bc                                          ; $448d: $0b
	dec  bc                                          ; $448e: $0b
	dec  bc                                          ; $448f: $0b
	dec  bc                                          ; $4490: $0b
	dec  bc                                          ; $4491: $0b
	dec  bc                                          ; $4492: $0b
	dec  bc                                          ; $4493: $0b
	dec  bc                                          ; $4494: $0b
	dec  bc                                          ; $4495: $0b
	dec  bc                                          ; $4496: $0b
	dec  bc                                          ; $4497: $0b
	dec  bc                                          ; $4498: $0b
	dec  bc                                          ; $4499: $0b
	dec  bc                                          ; $449a: $0b
	dec  bc                                          ; $449b: $0b
	dec  c                                           ; $449c: $0d
	dec  c                                           ; $449d: $0d
	dec  c                                           ; $449e: $0d
	dec  c                                           ; $449f: $0d
	dec  bc                                          ; $44a0: $0b
	dec  bc                                          ; $44a1: $0b
	dec  bc                                          ; $44a2: $0b
	dec  bc                                          ; $44a3: $0b
	dec  bc                                          ; $44a4: $0b
	dec  bc                                          ; $44a5: $0b
	dec  bc                                          ; $44a6: $0b
	dec  bc                                          ; $44a7: $0b
	dec  bc                                          ; $44a8: $0b
	dec  bc                                          ; $44a9: $0b
	dec  bc                                          ; $44aa: $0b
	dec  bc                                          ; $44ab: $0b
	dec  bc                                          ; $44ac: $0b
	dec  bc                                          ; $44ad: $0b
	dec  bc                                          ; $44ae: $0b
	inc  bc                                          ; $44af: $03
	nop                                              ; $44b0: $00
	ld   bc, $0302                                   ; $44b1: $01 $02 $03
	inc  b                                           ; $44b4: $04
	dec  b                                           ; $44b5: $05
	ld   b, $07                                      ; $44b6: $06 $07
	ld   [$0a09], sp                                 ; $44b8: $08 $09 $0a
	dec  bc                                          ; $44bb: $0b
	inc  c                                           ; $44bc: $0c
	dec  c                                           ; $44bd: $0d
	ld   c, $0f                                      ; $44be: $0e $0f
	jr   nz, jr_084_44e3                             ; $44c0: $20 $21

	ld   [hl+], a                                    ; $44c2: $22
	inc  hl                                          ; $44c3: $23
	db   $10                                         ; $44c4: $10
	ld   de, $1312                                   ; $44c5: $11 $12 $13
	inc  d                                           ; $44c8: $14
	dec  d                                           ; $44c9: $15
	ld   d, $17                                      ; $44ca: $16 $17
	jr   @+$1b                                       ; $44cc: $18 $19

	ld   a, [de]                                     ; $44ce: $1a
	dec  de                                          ; $44cf: $1b
	inc  e                                           ; $44d0: $1c
	dec  e                                           ; $44d1: $1d
	ld   e, $1f                                      ; $44d2: $1e $1f
	jr   nc, jr_084_4507                             ; $44d4: $30 $31

	ld   [hl-], a                                    ; $44d6: $32
	inc  sp                                          ; $44d7: $33
	jr   nz, @+$23                                   ; $44d8: $20 $21

	ld   [hl+], a                                    ; $44da: $22
	inc  hl                                          ; $44db: $23
	inc  h                                           ; $44dc: $24
	dec  h                                           ; $44dd: $25
	ld   h, $27                                      ; $44de: $26 $27
	jr   z, jr_084_450b                              ; $44e0: $28 $29

	ld   a, [hl+]                                    ; $44e2: $2a

jr_084_44e3:
	dec  hl                                          ; $44e3: $2b
	inc  l                                           ; $44e4: $2c
	dec  l                                           ; $44e5: $2d
	ld   l, $2f                                      ; $44e6: $2e $2f
	inc  h                                           ; $44e8: $24
	dec  h                                           ; $44e9: $25
	ld   h, $27                                      ; $44ea: $26 $27
	jr   nc, jr_084_451f                             ; $44ec: $30 $31

	ld   [hl-], a                                    ; $44ee: $32
	inc  sp                                          ; $44ef: $33
	inc  [hl]                                        ; $44f0: $34
	dec  [hl]                                        ; $44f1: $35
	ld   [hl], $37                                   ; $44f2: $36 $37
	jr   c, jr_084_452f                              ; $44f4: $38 $39

	ld   a, [hl-]                                    ; $44f6: $3a
	dec  sp                                          ; $44f7: $3b
	inc  a                                           ; $44f8: $3c
	dec  a                                           ; $44f9: $3d
	ld   a, $3f                                      ; $44fa: $3e $3f
	inc  [hl]                                        ; $44fc: $34
	dec  [hl]                                        ; $44fd: $35
	ld   [hl], $37                                   ; $44fe: $36 $37
	ld   b, b                                        ; $4500: $40
	ld   b, c                                        ; $4501: $41
	ld   b, d                                        ; $4502: $42
	ld   b, e                                        ; $4503: $43
	ld   b, h                                        ; $4504: $44
	ld   b, l                                        ; $4505: $45
	ld   b, [hl]                                     ; $4506: $46

jr_084_4507:
	ld   b, a                                        ; $4507: $47
	ld   c, b                                        ; $4508: $48
	ld   c, c                                        ; $4509: $49
	ld   c, d                                        ; $450a: $4a

jr_084_450b:
	ld   c, e                                        ; $450b: $4b
	ld   c, h                                        ; $450c: $4c
	ld   c, l                                        ; $450d: $4d
	ld   c, [hl]                                     ; $450e: $4e
	ld   c, a                                        ; $450f: $4f
	jr   z, @+$2b                                    ; $4510: $28 $29

	ld   a, [hl+]                                    ; $4512: $2a
	dec  hl                                          ; $4513: $2b
	ld   d, b                                        ; $4514: $50
	ld   d, c                                        ; $4515: $51
	ld   d, d                                        ; $4516: $52
	ld   d, e                                        ; $4517: $53
	ld   d, h                                        ; $4518: $54
	ld   d, l                                        ; $4519: $55
	ld   d, [hl]                                     ; $451a: $56
	ld   d, a                                        ; $451b: $57
	ld   e, b                                        ; $451c: $58
	ld   e, c                                        ; $451d: $59
	ld   e, d                                        ; $451e: $5a

jr_084_451f:
	ld   e, e                                        ; $451f: $5b
	ld   e, h                                        ; $4520: $5c
	ld   e, l                                        ; $4521: $5d
	ld   e, [hl]                                     ; $4522: $5e
	ld   e, a                                        ; $4523: $5f
	jr   c, @+$3b                                    ; $4524: $38 $39

	ld   a, [hl-]                                    ; $4526: $3a
	dec  sp                                          ; $4527: $3b
	ld   h, b                                        ; $4528: $60
	ld   h, c                                        ; $4529: $61
	ld   h, d                                        ; $452a: $62
	ld   h, e                                        ; $452b: $63
	ld   h, h                                        ; $452c: $64
	ld   h, l                                        ; $452d: $65
	ld   h, [hl]                                     ; $452e: $66

jr_084_452f:
	ld   h, a                                        ; $452f: $67
	ld   l, b                                        ; $4530: $68
	ld   l, c                                        ; $4531: $69
	ld   l, d                                        ; $4532: $6a
	ld   l, e                                        ; $4533: $6b
	ld   l, h                                        ; $4534: $6c
	ld   l, l                                        ; $4535: $6d
	ld   l, [hl]                                     ; $4536: $6e
	ld   l, a                                        ; $4537: $6f
	inc  l                                           ; $4538: $2c
	dec  l                                           ; $4539: $2d
	ld   l, $2f                                      ; $453a: $2e $2f
	ld   [hl], b                                     ; $453c: $70
	ld   [hl], c                                     ; $453d: $71
	ld   [hl], d                                     ; $453e: $72
	ld   [hl], e                                     ; $453f: $73
	ld   [hl], h                                     ; $4540: $74
	ld   [hl], l                                     ; $4541: $75
	halt                                             ; $4542: $76
	ld   [hl], a                                     ; $4543: $77
	ld   a, b                                        ; $4544: $78
	ld   a, c                                        ; $4545: $79
	ld   a, d                                        ; $4546: $7a
	ld   a, e                                        ; $4547: $7b
	ld   a, h                                        ; $4548: $7c
	ld   a, l                                        ; $4549: $7d
	ld   a, [hl]                                     ; $454a: $7e
	ld   a, a                                        ; $454b: $7f
	inc  a                                           ; $454c: $3c
	dec  a                                           ; $454d: $3d
	ld   a, $3f                                      ; $454e: $3e $3f
	nop                                              ; $4550: $00
	ld   bc, $0302                                   ; $4551: $01 $02 $03
	inc  b                                           ; $4554: $04
	dec  b                                           ; $4555: $05
	ld   b, $07                                      ; $4556: $06 $07
	ld   [$0a09], sp                                 ; $4558: $08 $09 $0a
	dec  bc                                          ; $455b: $0b
	inc  c                                           ; $455c: $0c
	dec  c                                           ; $455d: $0d
	ld   c, $0f                                      ; $455e: $0e $0f
	ld   b, b                                        ; $4560: $40
	ld   b, c                                        ; $4561: $41
	ld   b, d                                        ; $4562: $42
	ld   b, e                                        ; $4563: $43
	db   $10                                         ; $4564: $10
	ld   de, $1312                                   ; $4565: $11 $12 $13
	inc  d                                           ; $4568: $14
	dec  d                                           ; $4569: $15
	ld   d, $17                                      ; $456a: $16 $17
	jr   jr_084_4587                                 ; $456c: $18 $19

	ld   a, [de]                                     ; $456e: $1a
	dec  de                                          ; $456f: $1b
	inc  e                                           ; $4570: $1c
	dec  e                                           ; $4571: $1d
	ld   e, $1f                                      ; $4572: $1e $1f
	ld   b, h                                        ; $4574: $44
	ld   b, l                                        ; $4575: $45
	ld   b, [hl]                                     ; $4576: $46
	ld   b, a                                        ; $4577: $47
	inc  b                                           ; $4578: $04
	inc  b                                           ; $4579: $04
	inc  b                                           ; $457a: $04
	inc  b                                           ; $457b: $04
	inc  b                                           ; $457c: $04
	inc  b                                           ; $457d: $04
	inc  b                                           ; $457e: $04
	inc  b                                           ; $457f: $04
	inc  b                                           ; $4580: $04
	inc  b                                           ; $4581: $04
	inc  b                                           ; $4582: $04
	inc  b                                           ; $4583: $04
	inc  b                                           ; $4584: $04
	inc  b                                           ; $4585: $04
	inc  b                                           ; $4586: $04

jr_084_4587:
	inc  b                                           ; $4587: $04
	inc  c                                           ; $4588: $0c
	inc  c                                           ; $4589: $0c
	inc  c                                           ; $458a: $0c
	inc  c                                           ; $458b: $0c
	inc  bc                                          ; $458c: $03
	inc  b                                           ; $458d: $04
	inc  b                                           ; $458e: $04
	inc  bc                                          ; $458f: $03
	inc  bc                                          ; $4590: $03
	inc  b                                           ; $4591: $04
	inc  b                                           ; $4592: $04
	inc  b                                           ; $4593: $04
	inc  b                                           ; $4594: $04
	inc  b                                           ; $4595: $04
	inc  b                                           ; $4596: $04
	inc  b                                           ; $4597: $04
	inc  b                                           ; $4598: $04
	inc  b                                           ; $4599: $04
	inc  bc                                          ; $459a: $03
	inc  bc                                          ; $459b: $03
	inc  c                                           ; $459c: $0c
	dec  bc                                          ; $459d: $0b
	inc  c                                           ; $459e: $0c
	inc  c                                           ; $459f: $0c
	inc  bc                                          ; $45a0: $03
	inc  bc                                          ; $45a1: $03
	inc  b                                           ; $45a2: $04
	inc  b                                           ; $45a3: $04
	inc  b                                           ; $45a4: $04
	inc  b                                           ; $45a5: $04
	inc  b                                           ; $45a6: $04
	inc  b                                           ; $45a7: $04
	inc  b                                           ; $45a8: $04
	inc  b                                           ; $45a9: $04
	inc  b                                           ; $45aa: $04
	inc  b                                           ; $45ab: $04
	inc  b                                           ; $45ac: $04
	inc  b                                           ; $45ad: $04
	inc  b                                           ; $45ae: $04
	inc  b                                           ; $45af: $04
	inc  c                                           ; $45b0: $0c
	inc  c                                           ; $45b1: $0c
	inc  c                                           ; $45b2: $0c
	inc  c                                           ; $45b3: $0c
	inc  b                                           ; $45b4: $04
	inc  bc                                          ; $45b5: $03
	inc  bc                                          ; $45b6: $03
	inc  b                                           ; $45b7: $04
	inc  b                                           ; $45b8: $04
	inc  b                                           ; $45b9: $04
	inc  bc                                          ; $45ba: $03
	inc  bc                                          ; $45bb: $03
	inc  b                                           ; $45bc: $04
	inc  b                                           ; $45bd: $04
	inc  b                                           ; $45be: $04
	inc  b                                           ; $45bf: $04
	inc  b                                           ; $45c0: $04
	inc  b                                           ; $45c1: $04
	inc  bc                                          ; $45c2: $03
	inc  bc                                          ; $45c3: $03
	inc  c                                           ; $45c4: $0c
	inc  c                                           ; $45c5: $0c
	inc  c                                           ; $45c6: $0c
	inc  c                                           ; $45c7: $0c
	inc  bc                                          ; $45c8: $03
	inc  bc                                          ; $45c9: $03
	inc  bc                                          ; $45ca: $03
	inc  b                                           ; $45cb: $04
	inc  b                                           ; $45cc: $04
	inc  b                                           ; $45cd: $04
	inc  b                                           ; $45ce: $04
	inc  bc                                          ; $45cf: $03
	inc  b                                           ; $45d0: $04
	inc  b                                           ; $45d1: $04
	inc  b                                           ; $45d2: $04
	inc  b                                           ; $45d3: $04
	inc  bc                                          ; $45d4: $03
	inc  bc                                          ; $45d5: $03
	inc  bc                                          ; $45d6: $03
	inc  bc                                          ; $45d7: $03
	inc  c                                           ; $45d8: $0c
	inc  c                                           ; $45d9: $0c
	inc  c                                           ; $45da: $0c
	inc  c                                           ; $45db: $0c
	inc  b                                           ; $45dc: $04
	inc  bc                                          ; $45dd: $03
	inc  bc                                          ; $45de: $03
	inc  bc                                          ; $45df: $03
	inc  b                                           ; $45e0: $04
	inc  b                                           ; $45e1: $04
	inc  bc                                          ; $45e2: $03
	inc  bc                                          ; $45e3: $03
	inc  b                                           ; $45e4: $04
	inc  bc                                          ; $45e5: $03
	inc  bc                                          ; $45e6: $03
	inc  b                                           ; $45e7: $04
	inc  bc                                          ; $45e8: $03
	inc  bc                                          ; $45e9: $03
	inc  bc                                          ; $45ea: $03
	inc  bc                                          ; $45eb: $03
	inc  c                                           ; $45ec: $0c
	inc  c                                           ; $45ed: $0c
	dec  bc                                          ; $45ee: $0b
	inc  c                                           ; $45ef: $0c
	dec  b                                           ; $45f0: $05
	dec  b                                           ; $45f1: $05
	inc  bc                                          ; $45f2: $03
	dec  b                                           ; $45f3: $05
	dec  b                                           ; $45f4: $05
	dec  b                                           ; $45f5: $05
	inc  bc                                          ; $45f6: $03
	inc  bc                                          ; $45f7: $03
	dec  b                                           ; $45f8: $05
	inc  bc                                          ; $45f9: $03
	dec  b                                           ; $45fa: $05
	dec  b                                           ; $45fb: $05
	inc  bc                                          ; $45fc: $03
	inc  bc                                          ; $45fd: $03
	inc  bc                                          ; $45fe: $03
	inc  bc                                          ; $45ff: $03
	dec  c                                           ; $4600: $0d
	dec  c                                           ; $4601: $0d
	dec  c                                           ; $4602: $0d
	dec  c                                           ; $4603: $0d
	dec  b                                           ; $4604: $05
	dec  b                                           ; $4605: $05
	inc  bc                                          ; $4606: $03
	dec  b                                           ; $4607: $05
	dec  b                                           ; $4608: $05
	dec  b                                           ; $4609: $05
	dec  b                                           ; $460a: $05
	dec  b                                           ; $460b: $05
	dec  b                                           ; $460c: $05
	dec  b                                           ; $460d: $05
	dec  b                                           ; $460e: $05
	dec  b                                           ; $460f: $05
	dec  b                                           ; $4610: $05
	dec  b                                           ; $4611: $05
	inc  bc                                          ; $4612: $03
	dec  b                                           ; $4613: $05
	dec  c                                           ; $4614: $0d
	dec  c                                           ; $4615: $0d
	dec  c                                           ; $4616: $0d
	dec  c                                           ; $4617: $0d
	dec  c                                           ; $4618: $0d
	dec  c                                           ; $4619: $0d
	dec  c                                           ; $461a: $0d
	dec  c                                           ; $461b: $0d
	dec  c                                           ; $461c: $0d
	dec  c                                           ; $461d: $0d
	dec  c                                           ; $461e: $0d
	dec  c                                           ; $461f: $0d
	dec  c                                           ; $4620: $0d
	dec  c                                           ; $4621: $0d
	dec  c                                           ; $4622: $0d
	dec  c                                           ; $4623: $0d
	dec  c                                           ; $4624: $0d
	dec  c                                           ; $4625: $0d
	dec  c                                           ; $4626: $0d
	dec  c                                           ; $4627: $0d
	dec  c                                           ; $4628: $0d
	dec  c                                           ; $4629: $0d
	dec  c                                           ; $462a: $0d
	dec  c                                           ; $462b: $0d
	dec  c                                           ; $462c: $0d
	dec  c                                           ; $462d: $0d
	dec  c                                           ; $462e: $0d
	dec  c                                           ; $462f: $0d
	dec  c                                           ; $4630: $0d
	dec  c                                           ; $4631: $0d
	dec  c                                           ; $4632: $0d
	dec  c                                           ; $4633: $0d
	dec  c                                           ; $4634: $0d
	dec  c                                           ; $4635: $0d
	dec  c                                           ; $4636: $0d
	dec  c                                           ; $4637: $0d
	dec  c                                           ; $4638: $0d
	dec  c                                           ; $4639: $0d
	dec  c                                           ; $463a: $0d
	dec  c                                           ; $463b: $0d
	dec  c                                           ; $463c: $0d
	dec  c                                           ; $463d: $0d
	dec  c                                           ; $463e: $0d
	dec  c                                           ; $463f: $0d
	nop                                              ; $4640: $00
	ld   bc, $0302                                   ; $4641: $01 $02 $03
	inc  b                                           ; $4644: $04
	dec  b                                           ; $4645: $05
	ld   b, $07                                      ; $4646: $06 $07
	ld   [$0a09], sp                                 ; $4648: $08 $09 $0a
	dec  bc                                          ; $464b: $0b
	inc  c                                           ; $464c: $0c
	dec  c                                           ; $464d: $0d
	ld   c, $0f                                      ; $464e: $0e $0f
	nop                                              ; $4650: $00
	ld   bc, $0302                                   ; $4651: $01 $02 $03
	db   $10                                         ; $4654: $10
	ld   de, $1312                                   ; $4655: $11 $12 $13
	inc  d                                           ; $4658: $14
	dec  d                                           ; $4659: $15
	ld   d, $17                                      ; $465a: $16 $17
	jr   @+$1b                                       ; $465c: $18 $19

	ld   a, [de]                                     ; $465e: $1a
	dec  de                                          ; $465f: $1b
	inc  e                                           ; $4660: $1c
	dec  e                                           ; $4661: $1d
	ld   e, $1f                                      ; $4662: $1e $1f
	db   $10                                         ; $4664: $10
	ld   de, $1312                                   ; $4665: $11 $12 $13
	jr   nz, @+$23                                   ; $4668: $20 $21

	ld   [hl+], a                                    ; $466a: $22
	inc  hl                                          ; $466b: $23
	inc  h                                           ; $466c: $24
	dec  h                                           ; $466d: $25
	ld   h, $27                                      ; $466e: $26 $27
	jr   z, jr_084_469b                              ; $4670: $28 $29

	ld   a, [hl+]                                    ; $4672: $2a
	dec  hl                                          ; $4673: $2b
	inc  l                                           ; $4674: $2c
	dec  l                                           ; $4675: $2d
	ld   l, $2f                                      ; $4676: $2e $2f
	jr   nz, jr_084_469b                             ; $4678: $20 $21

	ld   [hl+], a                                    ; $467a: $22
	inc  hl                                          ; $467b: $23
	jr   nc, jr_084_46af                             ; $467c: $30 $31

	ld   [hl-], a                                    ; $467e: $32
	inc  sp                                          ; $467f: $33
	inc  [hl]                                        ; $4680: $34
	dec  [hl]                                        ; $4681: $35
	ld   [hl], $37                                   ; $4682: $36 $37
	jr   c, jr_084_46bf                              ; $4684: $38 $39

	ld   a, [hl-]                                    ; $4686: $3a
	dec  sp                                          ; $4687: $3b
	inc  a                                           ; $4688: $3c
	dec  a                                           ; $4689: $3d
	ld   a, $3f                                      ; $468a: $3e $3f
	jr   nc, jr_084_46bf                             ; $468c: $30 $31

	ld   [hl-], a                                    ; $468e: $32
	inc  sp                                          ; $468f: $33
	ld   b, b                                        ; $4690: $40
	ld   b, c                                        ; $4691: $41
	ld   b, d                                        ; $4692: $42
	ld   b, e                                        ; $4693: $43
	ld   b, h                                        ; $4694: $44
	ld   b, l                                        ; $4695: $45
	ld   b, [hl]                                     ; $4696: $46
	ld   b, a                                        ; $4697: $47
	ld   c, b                                        ; $4698: $48
	ld   c, c                                        ; $4699: $49
	ld   c, d                                        ; $469a: $4a

jr_084_469b:
	ld   c, e                                        ; $469b: $4b
	ld   c, h                                        ; $469c: $4c
	ld   c, l                                        ; $469d: $4d
	ld   c, [hl]                                     ; $469e: $4e
	ld   c, a                                        ; $469f: $4f
	ld   b, b                                        ; $46a0: $40
	ld   b, c                                        ; $46a1: $41
	ld   b, d                                        ; $46a2: $42
	ld   b, e                                        ; $46a3: $43
	ld   d, b                                        ; $46a4: $50
	ld   d, c                                        ; $46a5: $51
	ld   d, d                                        ; $46a6: $52
	ld   d, e                                        ; $46a7: $53
	ld   d, h                                        ; $46a8: $54
	ld   d, l                                        ; $46a9: $55
	ld   d, [hl]                                     ; $46aa: $56
	ld   d, a                                        ; $46ab: $57
	ld   e, b                                        ; $46ac: $58
	ld   e, c                                        ; $46ad: $59
	ld   e, d                                        ; $46ae: $5a

jr_084_46af:
	ld   e, e                                        ; $46af: $5b
	ld   e, h                                        ; $46b0: $5c
	ld   e, l                                        ; $46b1: $5d
	ld   e, [hl]                                     ; $46b2: $5e
	ld   d, l                                        ; $46b3: $55
	ld   d, h                                        ; $46b4: $54
	ld   d, c                                        ; $46b5: $51
	ld   d, d                                        ; $46b6: $52
	ld   d, e                                        ; $46b7: $53
	ld   h, b                                        ; $46b8: $60
	ld   h, c                                        ; $46b9: $61
	ld   h, d                                        ; $46ba: $62
	ld   h, e                                        ; $46bb: $63
	ld   h, h                                        ; $46bc: $64
	ld   h, l                                        ; $46bd: $65
	ld   h, [hl]                                     ; $46be: $66

jr_084_46bf:
	ld   h, a                                        ; $46bf: $67
	ld   l, b                                        ; $46c0: $68
	ld   l, c                                        ; $46c1: $69
	ld   l, d                                        ; $46c2: $6a
	ld   l, c                                        ; $46c3: $69
	ld   l, b                                        ; $46c4: $68
	ld   l, l                                        ; $46c5: $6d
	ld   l, [hl]                                     ; $46c6: $6e
	ld   h, l                                        ; $46c7: $65
	ld   h, h                                        ; $46c8: $64
	ld   h, c                                        ; $46c9: $61
	ld   h, d                                        ; $46ca: $62
	ld   h, e                                        ; $46cb: $63
	ld   [hl], b                                     ; $46cc: $70
	ld   [hl], c                                     ; $46cd: $71
	ld   [hl], d                                     ; $46ce: $72
	ld   [hl], e                                     ; $46cf: $73
	ld   [hl], h                                     ; $46d0: $74
	ld   [hl], l                                     ; $46d1: $75
	halt                                             ; $46d2: $76
	ld   [hl], a                                     ; $46d3: $77
	ld   a, b                                        ; $46d4: $78
	ld   a, c                                        ; $46d5: $79
	ld   a, d                                        ; $46d6: $7a
	ld   a, e                                        ; $46d7: $7b
	ld   a, h                                        ; $46d8: $7c
	ld   a, l                                        ; $46d9: $7d
	ld   a, [hl]                                     ; $46da: $7e
	ld   [hl], l                                     ; $46db: $75
	ld   [hl], h                                     ; $46dc: $74
	ld   [hl], c                                     ; $46dd: $71
	ld   [hl], d                                     ; $46de: $72
	ld   [hl], e                                     ; $46df: $73
	inc  b                                           ; $46e0: $04
	dec  b                                           ; $46e1: $05
	dec  b                                           ; $46e2: $05
	dec  b                                           ; $46e3: $05
	dec  b                                           ; $46e4: $05
	dec  b                                           ; $46e5: $05
	dec  b                                           ; $46e6: $05
	dec  b                                           ; $46e7: $05
	dec  b                                           ; $46e8: $05
	dec  b                                           ; $46e9: $05
	dec  b                                           ; $46ea: $05
	dec  b                                           ; $46eb: $05
	dec  b                                           ; $46ec: $05
	dec  b                                           ; $46ed: $05
	dec  b                                           ; $46ee: $05
	dec  b                                           ; $46ef: $05
	dec  b                                           ; $46f0: $05
	dec  b                                           ; $46f1: $05
	dec  b                                           ; $46f2: $05
	inc  b                                           ; $46f3: $04
	ld   [hl], b                                     ; $46f4: $70
	ld   l, a                                        ; $46f5: $6f
	ld   h, b                                        ; $46f6: $60
	ld   e, a                                        ; $46f7: $5f
	ld   d, b                                        ; $46f8: $50
	ld   l, e                                        ; $46f9: $6b
	ld   a, a                                        ; $46fa: $7f
	dec  c                                           ; $46fb: $0d
	rlca                                             ; $46fc: $07
	ld   a, a                                        ; $46fd: $7f
	dec  c                                           ; $46fe: $0d
	rlca                                             ; $46ff: $07
	ld   a, a                                        ; $4700: $7f
	ld   b, $6b                                      ; $4701: $06 $6b
	ld   [$0a09], sp                                 ; $4703: $08 $09 $0a
	dec  bc                                          ; $4706: $0b
	ld   l, h                                        ; $4707: $6c
	inc  bc                                          ; $4708: $03
	inc  bc                                          ; $4709: $03
	inc  b                                           ; $470a: $04
	inc  b                                           ; $470b: $04
	inc  b                                           ; $470c: $04
	inc  bc                                          ; $470d: $03
	inc  bc                                          ; $470e: $03
	inc  bc                                          ; $470f: $03
	inc  bc                                          ; $4710: $03
	inc  bc                                          ; $4711: $03
	dec  b                                           ; $4712: $05
	dec  b                                           ; $4713: $05
	dec  b                                           ; $4714: $05
	inc  bc                                          ; $4715: $03
	dec  b                                           ; $4716: $05
	dec  b                                           ; $4717: $05
	dec  c                                           ; $4718: $0d
	dec  c                                           ; $4719: $0d
	inc  c                                           ; $471a: $0c
	dec  bc                                          ; $471b: $0b
	inc  bc                                          ; $471c: $03
	inc  bc                                          ; $471d: $03
	inc  b                                           ; $471e: $04
	inc  b                                           ; $471f: $04
	inc  b                                           ; $4720: $04
	inc  bc                                          ; $4721: $03
	inc  bc                                          ; $4722: $03
	inc  bc                                          ; $4723: $03
	inc  bc                                          ; $4724: $03
	inc  bc                                          ; $4725: $03
	dec  b                                           ; $4726: $05
	dec  b                                           ; $4727: $05
	dec  b                                           ; $4728: $05
	inc  bc                                          ; $4729: $03
	inc  b                                           ; $472a: $04
	inc  b                                           ; $472b: $04
	dec  c                                           ; $472c: $0d
	dec  c                                           ; $472d: $0d
	dec  bc                                          ; $472e: $0b
	dec  bc                                          ; $472f: $0b
	inc  bc                                          ; $4730: $03
	inc  bc                                          ; $4731: $03
	inc  b                                           ; $4732: $04
	inc  b                                           ; $4733: $04
	inc  b                                           ; $4734: $04
	inc  bc                                          ; $4735: $03
	inc  bc                                          ; $4736: $03
	inc  bc                                          ; $4737: $03
	inc  bc                                          ; $4738: $03
	dec  b                                           ; $4739: $05
	dec  b                                           ; $473a: $05
	dec  b                                           ; $473b: $05
	dec  b                                           ; $473c: $05
	dec  b                                           ; $473d: $05
	inc  b                                           ; $473e: $04
	inc  b                                           ; $473f: $04
	dec  c                                           ; $4740: $0d
	dec  bc                                          ; $4741: $0b
	dec  bc                                          ; $4742: $0b
	dec  bc                                          ; $4743: $0b
	inc  bc                                          ; $4744: $03
	inc  bc                                          ; $4745: $03
	inc  b                                           ; $4746: $04
	inc  b                                           ; $4747: $04
	inc  b                                           ; $4748: $04
	inc  bc                                          ; $4749: $03
	inc  bc                                          ; $474a: $03
	dec  b                                           ; $474b: $05
	dec  b                                           ; $474c: $05
	dec  b                                           ; $474d: $05
	dec  b                                           ; $474e: $05
	dec  b                                           ; $474f: $05
	inc  bc                                          ; $4750: $03
	dec  b                                           ; $4751: $05
	dec  b                                           ; $4752: $05
	dec  b                                           ; $4753: $05
	dec  c                                           ; $4754: $0d
	dec  bc                                          ; $4755: $0b
	dec  bc                                          ; $4756: $0b
	dec  bc                                          ; $4757: $0b
	inc  bc                                          ; $4758: $03
	inc  bc                                          ; $4759: $03
	inc  bc                                          ; $475a: $03
	inc  bc                                          ; $475b: $03
	dec  b                                           ; $475c: $05
	inc  bc                                          ; $475d: $03
	inc  bc                                          ; $475e: $03
	inc  bc                                          ; $475f: $03
	inc  bc                                          ; $4760: $03
	dec  b                                           ; $4761: $05
	inc  bc                                          ; $4762: $03
	dec  b                                           ; $4763: $05
	inc  bc                                          ; $4764: $03
	inc  bc                                          ; $4765: $03
	inc  bc                                          ; $4766: $03
	inc  bc                                          ; $4767: $03
	dec  c                                           ; $4768: $0d
	dec  bc                                          ; $4769: $0b
	dec  bc                                          ; $476a: $0b
	dec  bc                                          ; $476b: $0b
	dec  b                                           ; $476c: $05
	dec  b                                           ; $476d: $05
	inc  b                                           ; $476e: $04
	inc  bc                                          ; $476f: $03
	inc  bc                                          ; $4770: $03
	inc  bc                                          ; $4771: $03
	inc  b                                           ; $4772: $04
	inc  b                                           ; $4773: $04
	inc  b                                           ; $4774: $04
	inc  bc                                          ; $4775: $03
	inc  bc                                          ; $4776: $03
	inc  bc                                          ; $4777: $03
	inc  b                                           ; $4778: $04
	inc  b                                           ; $4779: $04
	inc  b                                           ; $477a: $04
	inc  hl                                          ; $477b: $23
	inc  hl                                          ; $477c: $23
	dec  c                                           ; $477d: $0d
	dec  c                                           ; $477e: $0d
	dec  c                                           ; $477f: $0d
	dec  b                                           ; $4780: $05
	dec  b                                           ; $4781: $05
	dec  b                                           ; $4782: $05
	inc  b                                           ; $4783: $04
	inc  b                                           ; $4784: $04
	inc  b                                           ; $4785: $04
	inc  b                                           ; $4786: $04
	inc  b                                           ; $4787: $04
	inc  bc                                          ; $4788: $03
	inc  bc                                          ; $4789: $03
	inc  bc                                          ; $478a: $03
	inc  hl                                          ; $478b: $23
	inc  hl                                          ; $478c: $23
	inc  b                                           ; $478d: $04
	inc  b                                           ; $478e: $04
	inc  h                                           ; $478f: $24
	inc  h                                           ; $4790: $24
	inc  c                                           ; $4791: $0c
	dec  c                                           ; $4792: $0d
	dec  c                                           ; $4793: $0d
	dec  b                                           ; $4794: $05
	dec  b                                           ; $4795: $05
	dec  b                                           ; $4796: $05
	dec  b                                           ; $4797: $05
	inc  b                                           ; $4798: $04
	inc  b                                           ; $4799: $04
	inc  bc                                          ; $479a: $03
	inc  bc                                          ; $479b: $03
	inc  bc                                          ; $479c: $03
	inc  bc                                          ; $479d: $03
	inc  bc                                          ; $479e: $03
	inc  bc                                          ; $479f: $03
	inc  bc                                          ; $47a0: $03
	inc  bc                                          ; $47a1: $03
	inc  bc                                          ; $47a2: $03
	inc  h                                           ; $47a3: $24
	inc  h                                           ; $47a4: $24
	dec  c                                           ; $47a5: $0d
	dec  c                                           ; $47a6: $0d
	dec  c                                           ; $47a7: $0d
	dec  c                                           ; $47a8: $0d
	dec  c                                           ; $47a9: $0d
	dec  c                                           ; $47aa: $0d
	dec  c                                           ; $47ab: $0d
	dec  c                                           ; $47ac: $0d
	dec  c                                           ; $47ad: $0d
	dec  c                                           ; $47ae: $0d
	dec  c                                           ; $47af: $0d
	dec  c                                           ; $47b0: $0d
	dec  c                                           ; $47b1: $0d
	dec  c                                           ; $47b2: $0d
	dec  c                                           ; $47b3: $0d
	dec  c                                           ; $47b4: $0d
	dec  c                                           ; $47b5: $0d
	dec  c                                           ; $47b6: $0d
	dec  c                                           ; $47b7: $0d
	dec  c                                           ; $47b8: $0d
	dec  c                                           ; $47b9: $0d
	dec  c                                           ; $47ba: $0d
	dec  l                                           ; $47bb: $2d
	dec  c                                           ; $47bc: $0d
	dec  b                                           ; $47bd: $05
	dec  c                                           ; $47be: $0d
	dec  b                                           ; $47bf: $05
	dec  c                                           ; $47c0: $0d
	dec  h                                           ; $47c1: $25
	dec  b                                           ; $47c2: $05
	dec  c                                           ; $47c3: $0d
	dec  c                                           ; $47c4: $0d
	dec  b                                           ; $47c5: $05
	dec  c                                           ; $47c6: $0d
	dec  c                                           ; $47c7: $0d
	dec  b                                           ; $47c8: $05
	dec  c                                           ; $47c9: $0d
	dec  b                                           ; $47ca: $05
	dec  c                                           ; $47cb: $0d
	dec  c                                           ; $47cc: $0d
	dec  c                                           ; $47cd: $0d
	dec  c                                           ; $47ce: $0d
	dec  b                                           ; $47cf: $05
	nop                                              ; $47d0: $00
	ld   bc, $0302                                   ; $47d1: $01 $02 $03
	inc  b                                           ; $47d4: $04
	dec  b                                           ; $47d5: $05
	ld   b, $07                                      ; $47d6: $06 $07
	ld   [$0a09], sp                                 ; $47d8: $08 $09 $0a
	dec  bc                                          ; $47db: $0b
	inc  c                                           ; $47dc: $0c
	dec  c                                           ; $47dd: $0d
	ld   c, $0f                                      ; $47de: $0e $0f
	nop                                              ; $47e0: $00
	ld   bc, $0302                                   ; $47e1: $01 $02 $03
	db   $10                                         ; $47e4: $10
	ld   de, $1312                                   ; $47e5: $11 $12 $13
	inc  d                                           ; $47e8: $14
	dec  d                                           ; $47e9: $15
	ld   d, $17                                      ; $47ea: $16 $17
	jr   @+$1b                                       ; $47ec: $18 $19

	ld   a, [de]                                     ; $47ee: $1a
	dec  de                                          ; $47ef: $1b
	inc  e                                           ; $47f0: $1c
	dec  e                                           ; $47f1: $1d
	ld   e, $1f                                      ; $47f2: $1e $1f
	db   $10                                         ; $47f4: $10
	ld   de, $1312                                   ; $47f5: $11 $12 $13
	jr   nz, @+$23                                   ; $47f8: $20 $21

	ld   [hl+], a                                    ; $47fa: $22
	inc  hl                                          ; $47fb: $23
	inc  h                                           ; $47fc: $24
	dec  h                                           ; $47fd: $25
	ld   h, $27                                      ; $47fe: $26 $27
	jr   z, jr_084_482b                              ; $4800: $28 $29

	ld   a, [hl+]                                    ; $4802: $2a
	dec  hl                                          ; $4803: $2b
	inc  l                                           ; $4804: $2c
	dec  l                                           ; $4805: $2d
	ld   l, $2f                                      ; $4806: $2e $2f
	jr   nz, jr_084_482b                             ; $4808: $20 $21

	ld   [hl+], a                                    ; $480a: $22
	inc  hl                                          ; $480b: $23
	jr   nc, jr_084_483f                             ; $480c: $30 $31

	ld   [hl-], a                                    ; $480e: $32
	inc  sp                                          ; $480f: $33
	inc  [hl]                                        ; $4810: $34
	dec  [hl]                                        ; $4811: $35
	ld   [hl], $37                                   ; $4812: $36 $37
	jr   c, jr_084_484f                              ; $4814: $38 $39

	ld   a, [hl-]                                    ; $4816: $3a
	dec  sp                                          ; $4817: $3b
	inc  a                                           ; $4818: $3c
	dec  a                                           ; $4819: $3d
	ld   a, $3f                                      ; $481a: $3e $3f
	jr   nc, jr_084_484f                             ; $481c: $30 $31

	ld   [hl-], a                                    ; $481e: $32
	inc  sp                                          ; $481f: $33
	ld   b, b                                        ; $4820: $40
	ld   b, c                                        ; $4821: $41
	ld   b, d                                        ; $4822: $42
	ld   b, e                                        ; $4823: $43
	ld   b, h                                        ; $4824: $44
	ld   b, l                                        ; $4825: $45
	ld   b, [hl]                                     ; $4826: $46
	ld   b, a                                        ; $4827: $47
	ld   c, b                                        ; $4828: $48
	ld   c, c                                        ; $4829: $49
	ld   c, d                                        ; $482a: $4a

jr_084_482b:
	ld   c, e                                        ; $482b: $4b
	ld   c, h                                        ; $482c: $4c
	ld   c, l                                        ; $482d: $4d
	ld   c, [hl]                                     ; $482e: $4e
	ld   c, a                                        ; $482f: $4f
	ld   b, b                                        ; $4830: $40
	ld   b, c                                        ; $4831: $41
	ld   b, d                                        ; $4832: $42
	ld   b, e                                        ; $4833: $43
	ld   d, b                                        ; $4834: $50
	ld   d, c                                        ; $4835: $51
	ld   d, d                                        ; $4836: $52
	ld   d, e                                        ; $4837: $53
	ld   d, h                                        ; $4838: $54
	ld   d, l                                        ; $4839: $55
	ld   d, [hl]                                     ; $483a: $56
	ld   d, a                                        ; $483b: $57
	ld   e, b                                        ; $483c: $58
	ld   e, c                                        ; $483d: $59
	ld   e, d                                        ; $483e: $5a

jr_084_483f:
	ld   e, e                                        ; $483f: $5b
	ld   e, h                                        ; $4840: $5c
	ld   e, l                                        ; $4841: $5d
	ld   e, [hl]                                     ; $4842: $5e
	ld   e, a                                        ; $4843: $5f
	ld   d, b                                        ; $4844: $50
	ld   d, c                                        ; $4845: $51
	ld   d, d                                        ; $4846: $52
	ld   d, e                                        ; $4847: $53
	ld   h, b                                        ; $4848: $60
	ld   h, c                                        ; $4849: $61
	ld   h, d                                        ; $484a: $62
	ld   h, e                                        ; $484b: $63
	ld   h, h                                        ; $484c: $64
	ld   h, l                                        ; $484d: $65
	ld   h, [hl]                                     ; $484e: $66

jr_084_484f:
	ld   h, a                                        ; $484f: $67
	ld   l, b                                        ; $4850: $68
	ld   l, c                                        ; $4851: $69
	ld   l, d                                        ; $4852: $6a
	ld   l, e                                        ; $4853: $6b
	ld   l, h                                        ; $4854: $6c
	ld   l, l                                        ; $4855: $6d
	ld   l, [hl]                                     ; $4856: $6e
	ld   l, a                                        ; $4857: $6f
	ld   h, b                                        ; $4858: $60
	ld   h, c                                        ; $4859: $61
	ld   h, d                                        ; $485a: $62
	ld   h, e                                        ; $485b: $63
	ld   [hl], b                                     ; $485c: $70
	ld   [hl], c                                     ; $485d: $71
	ld   [hl], d                                     ; $485e: $72
	ld   [hl], e                                     ; $485f: $73
	ld   [hl], h                                     ; $4860: $74
	ld   b, a                                        ; $4861: $47
	halt                                             ; $4862: $76
	ld   [hl], a                                     ; $4863: $77
	ld   a, b                                        ; $4864: $78
	ld   a, c                                        ; $4865: $79
	ld   a, d                                        ; $4866: $7a
	ld   a, e                                        ; $4867: $7b
	ld   a, h                                        ; $4868: $7c
	ld   a, l                                        ; $4869: $7d
	ld   a, [hl]                                     ; $486a: $7e
	ld   a, a                                        ; $486b: $7f
	ld   [hl], b                                     ; $486c: $70
	ld   [hl], c                                     ; $486d: $71
	ld   [hl], d                                     ; $486e: $72
	ld   [hl], e                                     ; $486f: $73
	inc  b                                           ; $4870: $04
	dec  b                                           ; $4871: $05
	ld   b, $07                                      ; $4872: $06 $07
	ld   [$0a09], sp                                 ; $4874: $08 $09 $0a
	dec  bc                                          ; $4877: $0b
	inc  c                                           ; $4878: $0c
	dec  c                                           ; $4879: $0d
	ld   c, $0f                                      ; $487a: $0e $0f
	inc  h                                           ; $487c: $24
	dec  h                                           ; $487d: $25
	ld   h, $27                                      ; $487e: $26 $27
	jr   z, jr_084_48ab                              ; $4880: $28 $29

	ld   a, [hl+]                                    ; $4882: $2a
	dec  hl                                          ; $4883: $2b
	inc  d                                           ; $4884: $14
	dec  d                                           ; $4885: $15
	ld   d, $17                                      ; $4886: $16 $17
	jr   jr_084_48a3                                 ; $4888: $18 $19

	ld   a, [de]                                     ; $488a: $1a
	dec  de                                          ; $488b: $1b
	inc  e                                           ; $488c: $1c
	dec  e                                           ; $488d: $1d
	ld   e, $1f                                      ; $488e: $1e $1f
	inc  l                                           ; $4890: $2c
	dec  l                                           ; $4891: $2d
	ld   l, $2f                                      ; $4892: $2e $2f
	inc  [hl]                                        ; $4894: $34
	dec  [hl]                                        ; $4895: $35
	ld   [hl], $75                                   ; $4896: $36 $75
	inc  bc                                          ; $4898: $03
	inc  bc                                          ; $4899: $03
	inc  bc                                          ; $489a: $03
	inc  bc                                          ; $489b: $03
	inc  bc                                          ; $489c: $03
	inc  bc                                          ; $489d: $03
	inc  bc                                          ; $489e: $03
	inc  bc                                          ; $489f: $03
	dec  b                                           ; $48a0: $05
	dec  b                                           ; $48a1: $05
	dec  b                                           ; $48a2: $05

jr_084_48a3:
	dec  b                                           ; $48a3: $05
	dec  b                                           ; $48a4: $05
	dec  b                                           ; $48a5: $05
	dec  b                                           ; $48a6: $05
	dec  b                                           ; $48a7: $05
	dec  c                                           ; $48a8: $0d
	dec  c                                           ; $48a9: $0d
	dec  c                                           ; $48aa: $0d

jr_084_48ab:
	dec  c                                           ; $48ab: $0d
	inc  bc                                          ; $48ac: $03
	inc  bc                                          ; $48ad: $03
	inc  bc                                          ; $48ae: $03
	inc  bc                                          ; $48af: $03
	inc  bc                                          ; $48b0: $03
	inc  bc                                          ; $48b1: $03
	inc  bc                                          ; $48b2: $03
	inc  bc                                          ; $48b3: $03
	dec  b                                           ; $48b4: $05
	dec  b                                           ; $48b5: $05
	dec  b                                           ; $48b6: $05
	dec  b                                           ; $48b7: $05
	dec  b                                           ; $48b8: $05
	dec  b                                           ; $48b9: $05
	inc  bc                                          ; $48ba: $03
	inc  bc                                          ; $48bb: $03
	dec  c                                           ; $48bc: $0d
	dec  c                                           ; $48bd: $0d
	dec  c                                           ; $48be: $0d
	dec  c                                           ; $48bf: $0d
	inc  bc                                          ; $48c0: $03
	inc  bc                                          ; $48c1: $03
	inc  bc                                          ; $48c2: $03
	inc  bc                                          ; $48c3: $03
	inc  bc                                          ; $48c4: $03
	inc  bc                                          ; $48c5: $03
	inc  bc                                          ; $48c6: $03
	inc  b                                           ; $48c7: $04
	inc  bc                                          ; $48c8: $03
	inc  bc                                          ; $48c9: $03
	dec  b                                           ; $48ca: $05
	dec  b                                           ; $48cb: $05
	dec  b                                           ; $48cc: $05
	dec  b                                           ; $48cd: $05
	inc  bc                                          ; $48ce: $03
	inc  bc                                          ; $48cf: $03
	dec  c                                           ; $48d0: $0d
	dec  c                                           ; $48d1: $0d
	dec  c                                           ; $48d2: $0d
	dec  c                                           ; $48d3: $0d
	dec  b                                           ; $48d4: $05
	dec  b                                           ; $48d5: $05
	dec  b                                           ; $48d6: $05
	inc  bc                                          ; $48d7: $03
	inc  bc                                          ; $48d8: $03
	inc  bc                                          ; $48d9: $03
	inc  bc                                          ; $48da: $03
	inc  b                                           ; $48db: $04
	dec  b                                           ; $48dc: $05
	inc  bc                                          ; $48dd: $03
	dec  b                                           ; $48de: $05
	dec  b                                           ; $48df: $05
	dec  b                                           ; $48e0: $05
	dec  b                                           ; $48e1: $05
	inc  bc                                          ; $48e2: $03
	inc  bc                                          ; $48e3: $03
	dec  c                                           ; $48e4: $0d
	dec  c                                           ; $48e5: $0d
	dec  c                                           ; $48e6: $0d
	dec  c                                           ; $48e7: $0d
	dec  b                                           ; $48e8: $05
	dec  b                                           ; $48e9: $05
	dec  b                                           ; $48ea: $05
	dec  b                                           ; $48eb: $05
	dec  b                                           ; $48ec: $05
	dec  b                                           ; $48ed: $05
	dec  b                                           ; $48ee: $05
	dec  b                                           ; $48ef: $05
	dec  b                                           ; $48f0: $05
	inc  bc                                          ; $48f1: $03
	dec  b                                           ; $48f2: $05
	dec  b                                           ; $48f3: $05
	dec  b                                           ; $48f4: $05
	dec  b                                           ; $48f5: $05
	inc  bc                                          ; $48f6: $03
	inc  bc                                          ; $48f7: $03
	dec  c                                           ; $48f8: $0d
	dec  c                                           ; $48f9: $0d
	dec  c                                           ; $48fa: $0d
	dec  c                                           ; $48fb: $0d
	inc  b                                           ; $48fc: $04
	dec  b                                           ; $48fd: $05
	dec  b                                           ; $48fe: $05
	dec  b                                           ; $48ff: $05
	dec  b                                           ; $4900: $05
	dec  b                                           ; $4901: $05
	dec  b                                           ; $4902: $05
	inc  bc                                          ; $4903: $03
	inc  b                                           ; $4904: $04
	inc  b                                           ; $4905: $04
	inc  b                                           ; $4906: $04
	inc  b                                           ; $4907: $04
	inc  b                                           ; $4908: $04
	inc  b                                           ; $4909: $04
	inc  bc                                          ; $490a: $03
	inc  bc                                          ; $490b: $03
	inc  c                                           ; $490c: $0c
	inc  c                                           ; $490d: $0c
	inc  c                                           ; $490e: $0c
	inc  c                                           ; $490f: $0c
	inc  b                                           ; $4910: $04
	inc  bc                                          ; $4911: $03
	dec  b                                           ; $4912: $05
	dec  b                                           ; $4913: $05
	dec  b                                           ; $4914: $05
	dec  b                                           ; $4915: $05
	dec  b                                           ; $4916: $05
	inc  b                                           ; $4917: $04
	inc  b                                           ; $4918: $04
	inc  b                                           ; $4919: $04
	inc  b                                           ; $491a: $04
	inc  bc                                          ; $491b: $03
	inc  bc                                          ; $491c: $03
	inc  bc                                          ; $491d: $03
	inc  bc                                          ; $491e: $03
	inc  bc                                          ; $491f: $03
	dec  bc                                          ; $4920: $0b
	dec  bc                                          ; $4921: $0b
	dec  bc                                          ; $4922: $0b
	dec  bc                                          ; $4923: $0b
	dec  b                                           ; $4924: $05
	dec  b                                           ; $4925: $05
	dec  b                                           ; $4926: $05
	dec  b                                           ; $4927: $05
	dec  b                                           ; $4928: $05
	dec  b                                           ; $4929: $05
	inc  b                                           ; $492a: $04
	inc  b                                           ; $492b: $04
	inc  b                                           ; $492c: $04
	inc  b                                           ; $492d: $04
	inc  b                                           ; $492e: $04
	inc  b                                           ; $492f: $04
	inc  b                                           ; $4930: $04
	inc  b                                           ; $4931: $04
	inc  b                                           ; $4932: $04
	inc  b                                           ; $4933: $04
	inc  c                                           ; $4934: $0c
	inc  c                                           ; $4935: $0c
	inc  c                                           ; $4936: $0c
	inc  c                                           ; $4937: $0c
	dec  c                                           ; $4938: $0d
	dec  c                                           ; $4939: $0d
	dec  c                                           ; $493a: $0d
	dec  c                                           ; $493b: $0d
	dec  c                                           ; $493c: $0d
	dec  c                                           ; $493d: $0d
	dec  c                                           ; $493e: $0d
	inc  c                                           ; $493f: $0c
	inc  c                                           ; $4940: $0c
	inc  c                                           ; $4941: $0c
	inc  c                                           ; $4942: $0c
	inc  c                                           ; $4943: $0c
	inc  c                                           ; $4944: $0c
	inc  c                                           ; $4945: $0c
	inc  c                                           ; $4946: $0c
	inc  c                                           ; $4947: $0c
	inc  c                                           ; $4948: $0c
	inc  c                                           ; $4949: $0c
	inc  c                                           ; $494a: $0c
	inc  c                                           ; $494b: $0c
	dec  c                                           ; $494c: $0d
	dec  c                                           ; $494d: $0d
	dec  c                                           ; $494e: $0d
	dec  c                                           ; $494f: $0d
	dec  c                                           ; $4950: $0d
	dec  c                                           ; $4951: $0d
	dec  c                                           ; $4952: $0d
	inc  c                                           ; $4953: $0c
	inc  c                                           ; $4954: $0c
	inc  c                                           ; $4955: $0c
	inc  c                                           ; $4956: $0c
	inc  c                                           ; $4957: $0c
	inc  c                                           ; $4958: $0c
	inc  c                                           ; $4959: $0c
	inc  c                                           ; $495a: $0c
	inc  c                                           ; $495b: $0c
	inc  c                                           ; $495c: $0c
	inc  c                                           ; $495d: $0c
	inc  c                                           ; $495e: $0c
	inc  b                                           ; $495f: $04
	nop                                              ; $4960: $00
	ld   bc, $0302                                   ; $4961: $01 $02 $03
	inc  b                                           ; $4964: $04
	dec  b                                           ; $4965: $05
	ld   b, $07                                      ; $4966: $06 $07
	ld   [$0a09], sp                                 ; $4968: $08 $09 $0a
	dec  bc                                          ; $496b: $0b
	inc  c                                           ; $496c: $0c
	dec  c                                           ; $496d: $0d
	ld   c, $0f                                      ; $496e: $0e $0f
	nop                                              ; $4970: $00
	ld   bc, $0302                                   ; $4971: $01 $02 $03
	db   $10                                         ; $4974: $10
	ld   de, $1312                                   ; $4975: $11 $12 $13
	inc  d                                           ; $4978: $14
	dec  d                                           ; $4979: $15
	ld   d, $17                                      ; $497a: $16 $17
	jr   @+$1b                                       ; $497c: $18 $19

	ld   a, [de]                                     ; $497e: $1a
	dec  de                                          ; $497f: $1b
	inc  e                                           ; $4980: $1c
	dec  e                                           ; $4981: $1d
	ld   e, $1f                                      ; $4982: $1e $1f
	db   $10                                         ; $4984: $10
	ld   de, $1312                                   ; $4985: $11 $12 $13
	jr   nz, @+$23                                   ; $4988: $20 $21

	ld   [hl+], a                                    ; $498a: $22
	inc  hl                                          ; $498b: $23
	inc  h                                           ; $498c: $24
	dec  h                                           ; $498d: $25
	ld   h, $27                                      ; $498e: $26 $27
	jr   z, jr_084_49bb                              ; $4990: $28 $29

	ld   a, [hl+]                                    ; $4992: $2a
	dec  hl                                          ; $4993: $2b
	inc  l                                           ; $4994: $2c
	dec  l                                           ; $4995: $2d
	ld   l, $2f                                      ; $4996: $2e $2f
	jr   nz, jr_084_49bb                             ; $4998: $20 $21

	ld   [hl+], a                                    ; $499a: $22
	inc  hl                                          ; $499b: $23
	jr   nc, jr_084_49cf                             ; $499c: $30 $31

	ld   [hl-], a                                    ; $499e: $32
	inc  sp                                          ; $499f: $33
	inc  [hl]                                        ; $49a0: $34
	dec  [hl]                                        ; $49a1: $35
	ld   [hl], $37                                   ; $49a2: $36 $37
	jr   c, jr_084_49df                              ; $49a4: $38 $39

	ld   a, [hl-]                                    ; $49a6: $3a
	dec  sp                                          ; $49a7: $3b
	inc  a                                           ; $49a8: $3c
	dec  a                                           ; $49a9: $3d
	ld   a, $3f                                      ; $49aa: $3e $3f
	jr   nc, jr_084_49df                             ; $49ac: $30 $31

	ld   [hl-], a                                    ; $49ae: $32
	inc  sp                                          ; $49af: $33
	ld   b, b                                        ; $49b0: $40
	ld   b, c                                        ; $49b1: $41
	ld   b, d                                        ; $49b2: $42
	ld   b, e                                        ; $49b3: $43
	ld   b, h                                        ; $49b4: $44
	ld   b, l                                        ; $49b5: $45
	ld   b, [hl]                                     ; $49b6: $46
	ld   b, a                                        ; $49b7: $47
	ld   c, b                                        ; $49b8: $48
	ld   c, c                                        ; $49b9: $49
	ld   c, d                                        ; $49ba: $4a

jr_084_49bb:
	ld   c, e                                        ; $49bb: $4b
	ld   c, h                                        ; $49bc: $4c
	ld   c, l                                        ; $49bd: $4d
	ld   c, [hl]                                     ; $49be: $4e
	ld   c, a                                        ; $49bf: $4f
	ld   b, b                                        ; $49c0: $40
	ld   b, c                                        ; $49c1: $41
	ld   b, d                                        ; $49c2: $42
	ld   b, e                                        ; $49c3: $43
	ld   d, b                                        ; $49c4: $50
	ld   d, c                                        ; $49c5: $51
	ld   d, d                                        ; $49c6: $52
	ld   d, e                                        ; $49c7: $53
	ld   d, h                                        ; $49c8: $54
	ld   d, l                                        ; $49c9: $55
	ld   d, [hl]                                     ; $49ca: $56
	ld   d, a                                        ; $49cb: $57
	ld   e, b                                        ; $49cc: $58
	ld   e, c                                        ; $49cd: $59
	ld   e, d                                        ; $49ce: $5a

jr_084_49cf:
	ld   e, e                                        ; $49cf: $5b
	ld   e, h                                        ; $49d0: $5c
	ld   e, l                                        ; $49d1: $5d
	ld   e, [hl]                                     ; $49d2: $5e
	ld   e, a                                        ; $49d3: $5f
	ld   d, b                                        ; $49d4: $50
	ld   d, c                                        ; $49d5: $51
	ld   d, d                                        ; $49d6: $52
	ld   d, e                                        ; $49d7: $53
	ld   h, b                                        ; $49d8: $60
	ld   h, c                                        ; $49d9: $61
	ld   h, d                                        ; $49da: $62
	ld   e, d                                        ; $49db: $5a
	ld   h, h                                        ; $49dc: $64
	ld   h, l                                        ; $49dd: $65
	ld   h, [hl]                                     ; $49de: $66

jr_084_49df:
	ld   h, a                                        ; $49df: $67
	ld   l, b                                        ; $49e0: $68
	ld   l, c                                        ; $49e1: $69
	ld   l, d                                        ; $49e2: $6a
	ld   l, e                                        ; $49e3: $6b
	ld   l, h                                        ; $49e4: $6c
	ld   l, l                                        ; $49e5: $6d
	ld   l, [hl]                                     ; $49e6: $6e
	ld   l, a                                        ; $49e7: $6f
	ld   h, b                                        ; $49e8: $60
	ld   h, c                                        ; $49e9: $61
	ld   h, d                                        ; $49ea: $62
	ld   h, e                                        ; $49eb: $63
	ld   [hl], b                                     ; $49ec: $70
	ld   [hl], c                                     ; $49ed: $71
	ld   [hl], d                                     ; $49ee: $72
	ld   [hl], e                                     ; $49ef: $73
	ld   [hl], h                                     ; $49f0: $74
	ld   [hl], l                                     ; $49f1: $75
	halt                                             ; $49f2: $76
	ld   [hl], a                                     ; $49f3: $77
	ld   a, b                                        ; $49f4: $78
	ld   a, c                                        ; $49f5: $79
	ld   a, d                                        ; $49f6: $7a
	ld   a, e                                        ; $49f7: $7b
	ld   a, h                                        ; $49f8: $7c
	ld   a, l                                        ; $49f9: $7d
	ld   a, [hl]                                     ; $49fa: $7e
	ld   a, a                                        ; $49fb: $7f
	ld   [hl], b                                     ; $49fc: $70
	ld   [hl], c                                     ; $49fd: $71
	ld   [hl], d                                     ; $49fe: $72
	ld   [hl], e                                     ; $49ff: $73
	inc  b                                           ; $4a00: $04
	dec  b                                           ; $4a01: $05
	ld   b, $07                                      ; $4a02: $06 $07
	ld   [$0a09], sp                                 ; $4a04: $08 $09 $0a
	dec  bc                                          ; $4a07: $0b
	inc  c                                           ; $4a08: $0c
	dec  c                                           ; $4a09: $0d
	ld   c, $0f                                      ; $4a0a: $0e $0f
	inc  h                                           ; $4a0c: $24
	dec  h                                           ; $4a0d: $25
	ld   h, $27                                      ; $4a0e: $26 $27
	jr   z, jr_084_4a3b                              ; $4a10: $28 $29

	ld   a, [hl+]                                    ; $4a12: $2a
	dec  hl                                          ; $4a13: $2b
	inc  d                                           ; $4a14: $14
	dec  d                                           ; $4a15: $15
	ld   d, $17                                      ; $4a16: $16 $17
	jr   jr_084_4a33                                 ; $4a18: $18 $19

	ld   a, [de]                                     ; $4a1a: $1a
	dec  de                                          ; $4a1b: $1b
	inc  e                                           ; $4a1c: $1c
	dec  e                                           ; $4a1d: $1d
	ld   e, $1f                                      ; $4a1e: $1e $1f
	inc  [hl]                                        ; $4a20: $34
	dec  [hl]                                        ; $4a21: $35
	ld   [hl], $37                                   ; $4a22: $36 $37
	jr   c, jr_084_4a5f                              ; $4a24: $38 $39

	ld   a, [hl-]                                    ; $4a26: $3a
	dec  sp                                          ; $4a27: $3b
	inc  bc                                          ; $4a28: $03
	inc  bc                                          ; $4a29: $03
	inc  bc                                          ; $4a2a: $03
	inc  bc                                          ; $4a2b: $03
	inc  bc                                          ; $4a2c: $03
	inc  bc                                          ; $4a2d: $03
	dec  b                                           ; $4a2e: $05
	dec  b                                           ; $4a2f: $05
	inc  bc                                          ; $4a30: $03
	inc  bc                                          ; $4a31: $03
	inc  bc                                          ; $4a32: $03

jr_084_4a33:
	dec  b                                           ; $4a33: $05
	dec  b                                           ; $4a34: $05
	dec  b                                           ; $4a35: $05
	dec  b                                           ; $4a36: $05
	dec  b                                           ; $4a37: $05
	dec  c                                           ; $4a38: $0d
	dec  c                                           ; $4a39: $0d
	dec  c                                           ; $4a3a: $0d

jr_084_4a3b:
	dec  bc                                          ; $4a3b: $0b
	inc  bc                                          ; $4a3c: $03
	inc  bc                                          ; $4a3d: $03
	inc  bc                                          ; $4a3e: $03
	inc  bc                                          ; $4a3f: $03
	inc  bc                                          ; $4a40: $03
	inc  bc                                          ; $4a41: $03
	dec  b                                           ; $4a42: $05
	dec  b                                           ; $4a43: $05
	inc  bc                                          ; $4a44: $03
	inc  bc                                          ; $4a45: $03
	inc  bc                                          ; $4a46: $03
	dec  b                                           ; $4a47: $05
	dec  b                                           ; $4a48: $05
	dec  b                                           ; $4a49: $05
	dec  b                                           ; $4a4a: $05
	dec  b                                           ; $4a4b: $05
	dec  c                                           ; $4a4c: $0d
	dec  c                                           ; $4a4d: $0d
	dec  c                                           ; $4a4e: $0d
	dec  bc                                          ; $4a4f: $0b
	inc  bc                                          ; $4a50: $03
	dec  b                                           ; $4a51: $05
	dec  b                                           ; $4a52: $05
	inc  bc                                          ; $4a53: $03
	inc  bc                                          ; $4a54: $03
	inc  bc                                          ; $4a55: $03
	dec  b                                           ; $4a56: $05
	dec  b                                           ; $4a57: $05
	dec  b                                           ; $4a58: $05
	inc  bc                                          ; $4a59: $03
	dec  b                                           ; $4a5a: $05
	dec  b                                           ; $4a5b: $05
	dec  b                                           ; $4a5c: $05
	dec  b                                           ; $4a5d: $05
	dec  b                                           ; $4a5e: $05

jr_084_4a5f:
	dec  b                                           ; $4a5f: $05
	dec  c                                           ; $4a60: $0d
	dec  c                                           ; $4a61: $0d
	dec  c                                           ; $4a62: $0d
	dec  bc                                          ; $4a63: $0b
	dec  b                                           ; $4a64: $05
	dec  b                                           ; $4a65: $05
	dec  b                                           ; $4a66: $05
	dec  b                                           ; $4a67: $05
	inc  bc                                          ; $4a68: $03
	inc  bc                                          ; $4a69: $03
	dec  b                                           ; $4a6a: $05
	dec  b                                           ; $4a6b: $05
	dec  b                                           ; $4a6c: $05
	dec  b                                           ; $4a6d: $05
	dec  b                                           ; $4a6e: $05
	dec  b                                           ; $4a6f: $05
	dec  b                                           ; $4a70: $05
	dec  b                                           ; $4a71: $05
	dec  b                                           ; $4a72: $05
	dec  b                                           ; $4a73: $05
	dec  c                                           ; $4a74: $0d
	dec  c                                           ; $4a75: $0d
	dec  c                                           ; $4a76: $0d
	dec  bc                                          ; $4a77: $0b
	dec  b                                           ; $4a78: $05
	dec  b                                           ; $4a79: $05
	dec  b                                           ; $4a7a: $05
	dec  b                                           ; $4a7b: $05
	dec  b                                           ; $4a7c: $05
	dec  b                                           ; $4a7d: $05
	dec  b                                           ; $4a7e: $05
	dec  b                                           ; $4a7f: $05
	dec  b                                           ; $4a80: $05
	dec  b                                           ; $4a81: $05
	dec  b                                           ; $4a82: $05
	dec  b                                           ; $4a83: $05
	dec  b                                           ; $4a84: $05
	dec  b                                           ; $4a85: $05
	dec  b                                           ; $4a86: $05
	dec  b                                           ; $4a87: $05
	dec  c                                           ; $4a88: $0d
	dec  c                                           ; $4a89: $0d
	dec  c                                           ; $4a8a: $0d
	dec  c                                           ; $4a8b: $0d
	dec  b                                           ; $4a8c: $05
	dec  b                                           ; $4a8d: $05
	dec  b                                           ; $4a8e: $05
	dec  b                                           ; $4a8f: $05
	dec  b                                           ; $4a90: $05
	dec  b                                           ; $4a91: $05
	dec  b                                           ; $4a92: $05
	dec  b                                           ; $4a93: $05
	dec  b                                           ; $4a94: $05
	dec  b                                           ; $4a95: $05
	dec  b                                           ; $4a96: $05
	dec  b                                           ; $4a97: $05
	dec  b                                           ; $4a98: $05
	dec  b                                           ; $4a99: $05
	dec  b                                           ; $4a9a: $05
	dec  b                                           ; $4a9b: $05
	dec  c                                           ; $4a9c: $0d
	dec  c                                           ; $4a9d: $0d
	dec  c                                           ; $4a9e: $0d
	dec  c                                           ; $4a9f: $0d
	dec  b                                           ; $4aa0: $05
	dec  b                                           ; $4aa1: $05
	dec  b                                           ; $4aa2: $05
	dec  b                                           ; $4aa3: $05
	dec  b                                           ; $4aa4: $05
	dec  b                                           ; $4aa5: $05
	dec  b                                           ; $4aa6: $05
	dec  b                                           ; $4aa7: $05
	dec  b                                           ; $4aa8: $05
	dec  b                                           ; $4aa9: $05
	dec  b                                           ; $4aaa: $05
	dec  b                                           ; $4aab: $05
	inc  bc                                          ; $4aac: $03
	inc  bc                                          ; $4aad: $03
	inc  bc                                          ; $4aae: $03
	inc  bc                                          ; $4aaf: $03
	dec  bc                                          ; $4ab0: $0b
	dec  bc                                          ; $4ab1: $0b
	dec  bc                                          ; $4ab2: $0b
	dec  bc                                          ; $4ab3: $0b
	dec  b                                           ; $4ab4: $05
	dec  b                                           ; $4ab5: $05
	dec  b                                           ; $4ab6: $05
	dec  b                                           ; $4ab7: $05
	dec  b                                           ; $4ab8: $05
	dec  b                                           ; $4ab9: $05
	dec  b                                           ; $4aba: $05
	inc  bc                                          ; $4abb: $03
	inc  bc                                          ; $4abc: $03
	inc  bc                                          ; $4abd: $03
	inc  bc                                          ; $4abe: $03
	inc  bc                                          ; $4abf: $03
	inc  bc                                          ; $4ac0: $03
	inc  bc                                          ; $4ac1: $03
	inc  bc                                          ; $4ac2: $03
	inc  bc                                          ; $4ac3: $03
	dec  bc                                          ; $4ac4: $0b
	dec  bc                                          ; $4ac5: $0b
	inc  c                                           ; $4ac6: $0c
	inc  c                                           ; $4ac7: $0c
	dec  c                                           ; $4ac8: $0d
	dec  c                                           ; $4ac9: $0d
	dec  c                                           ; $4aca: $0d
	dec  c                                           ; $4acb: $0d
	inc  c                                           ; $4acc: $0c
	inc  c                                           ; $4acd: $0c
	inc  c                                           ; $4ace: $0c
	dec  bc                                          ; $4acf: $0b
	dec  bc                                          ; $4ad0: $0b
	dec  bc                                          ; $4ad1: $0b
	dec  bc                                          ; $4ad2: $0b
	dec  bc                                          ; $4ad3: $0b
	dec  bc                                          ; $4ad4: $0b
	dec  bc                                          ; $4ad5: $0b
	dec  bc                                          ; $4ad6: $0b
	dec  bc                                          ; $4ad7: $0b
	dec  bc                                          ; $4ad8: $0b
	inc  c                                           ; $4ad9: $0c
	inc  c                                           ; $4ada: $0c
	inc  c                                           ; $4adb: $0c
	dec  c                                           ; $4adc: $0d
	dec  c                                           ; $4add: $0d
	dec  c                                           ; $4ade: $0d
	inc  c                                           ; $4adf: $0c
	inc  c                                           ; $4ae0: $0c
	inc  c                                           ; $4ae1: $0c
	inc  c                                           ; $4ae2: $0c
	inc  c                                           ; $4ae3: $0c
	dec  bc                                          ; $4ae4: $0b
	dec  bc                                          ; $4ae5: $0b
	dec  bc                                          ; $4ae6: $0b
	dec  bc                                          ; $4ae7: $0b
	dec  bc                                          ; $4ae8: $0b
	dec  bc                                          ; $4ae9: $0b
	dec  bc                                          ; $4aea: $0b
	dec  bc                                          ; $4aeb: $0b
	dec  bc                                          ; $4aec: $0b
	inc  c                                           ; $4aed: $0c
	inc  c                                           ; $4aee: $0c
	inc  c                                           ; $4aef: $0c
	nop                                              ; $4af0: $00
	ld   bc, $0302                                   ; $4af1: $01 $02 $03
	inc  b                                           ; $4af4: $04
	dec  b                                           ; $4af5: $05
	ld   b, $07                                      ; $4af6: $06 $07
	ld   [$0a09], sp                                 ; $4af8: $08 $09 $0a
	dec  bc                                          ; $4afb: $0b
	inc  c                                           ; $4afc: $0c
	dec  c                                           ; $4afd: $0d
	ld   c, $0f                                      ; $4afe: $0e $0f
	jr   nz, jr_084_4b23                             ; $4b00: $20 $21

	ld   [hl+], a                                    ; $4b02: $22
	inc  hl                                          ; $4b03: $23
	db   $10                                         ; $4b04: $10
	ld   de, $1312                                   ; $4b05: $11 $12 $13
	inc  d                                           ; $4b08: $14
	dec  d                                           ; $4b09: $15
	ld   d, $17                                      ; $4b0a: $16 $17
	jr   @+$1b                                       ; $4b0c: $18 $19

	ld   a, [de]                                     ; $4b0e: $1a
	dec  de                                          ; $4b0f: $1b
	inc  e                                           ; $4b10: $1c
	dec  e                                           ; $4b11: $1d
	ld   e, $1f                                      ; $4b12: $1e $1f
	jr   nc, jr_084_4b47                             ; $4b14: $30 $31

	ld   [hl-], a                                    ; $4b16: $32
	inc  sp                                          ; $4b17: $33
	jr   nz, @+$23                                   ; $4b18: $20 $21

	ld   [hl+], a                                    ; $4b1a: $22
	inc  hl                                          ; $4b1b: $23
	inc  h                                           ; $4b1c: $24
	dec  h                                           ; $4b1d: $25
	ld   h, $27                                      ; $4b1e: $26 $27
	jr   z, jr_084_4b4b                              ; $4b20: $28 $29

	ld   a, [hl+]                                    ; $4b22: $2a

jr_084_4b23:
	dec  hl                                          ; $4b23: $2b
	inc  l                                           ; $4b24: $2c
	dec  l                                           ; $4b25: $2d
	ld   l, $2f                                      ; $4b26: $2e $2f
	inc  h                                           ; $4b28: $24
	dec  h                                           ; $4b29: $25
	ld   h, $27                                      ; $4b2a: $26 $27
	jr   nc, jr_084_4b5f                             ; $4b2c: $30 $31

	ld   [hl-], a                                    ; $4b2e: $32
	inc  sp                                          ; $4b2f: $33
	inc  [hl]                                        ; $4b30: $34
	dec  [hl]                                        ; $4b31: $35
	ld   [hl], $37                                   ; $4b32: $36 $37
	jr   c, jr_084_4b6f                              ; $4b34: $38 $39

	ld   a, [hl-]                                    ; $4b36: $3a
	dec  sp                                          ; $4b37: $3b
	inc  a                                           ; $4b38: $3c
	dec  a                                           ; $4b39: $3d
	ld   a, $3f                                      ; $4b3a: $3e $3f
	inc  [hl]                                        ; $4b3c: $34
	dec  [hl]                                        ; $4b3d: $35
	ld   [hl], $37                                   ; $4b3e: $36 $37
	ld   b, b                                        ; $4b40: $40
	ld   b, c                                        ; $4b41: $41
	ld   b, d                                        ; $4b42: $42
	ld   b, e                                        ; $4b43: $43
	ld   b, h                                        ; $4b44: $44
	ld   b, l                                        ; $4b45: $45
	ld   b, [hl]                                     ; $4b46: $46

jr_084_4b47:
	ld   b, a                                        ; $4b47: $47
	ld   c, b                                        ; $4b48: $48
	ld   c, c                                        ; $4b49: $49
	ld   c, d                                        ; $4b4a: $4a

jr_084_4b4b:
	ld   c, e                                        ; $4b4b: $4b
	ld   c, h                                        ; $4b4c: $4c
	ld   c, l                                        ; $4b4d: $4d
	ld   c, [hl]                                     ; $4b4e: $4e
	ld   c, a                                        ; $4b4f: $4f
	jr   z, @+$2b                                    ; $4b50: $28 $29

	ld   a, [hl+]                                    ; $4b52: $2a
	dec  hl                                          ; $4b53: $2b
	ld   d, b                                        ; $4b54: $50
	ld   d, c                                        ; $4b55: $51
	ld   d, d                                        ; $4b56: $52
	ld   d, e                                        ; $4b57: $53
	ld   d, h                                        ; $4b58: $54
	ld   d, l                                        ; $4b59: $55
	ld   d, [hl]                                     ; $4b5a: $56
	ld   d, a                                        ; $4b5b: $57
	ld   e, b                                        ; $4b5c: $58
	ld   e, c                                        ; $4b5d: $59
	ld   e, d                                        ; $4b5e: $5a

jr_084_4b5f:
	ld   e, e                                        ; $4b5f: $5b
	ld   e, h                                        ; $4b60: $5c
	ld   e, l                                        ; $4b61: $5d
	ld   e, [hl]                                     ; $4b62: $5e
	ld   e, a                                        ; $4b63: $5f
	jr   c, @+$3b                                    ; $4b64: $38 $39

	ld   a, [hl-]                                    ; $4b66: $3a
	dec  sp                                          ; $4b67: $3b
	ld   h, b                                        ; $4b68: $60
	ld   h, c                                        ; $4b69: $61
	ld   h, d                                        ; $4b6a: $62
	ld   h, e                                        ; $4b6b: $63
	ld   h, h                                        ; $4b6c: $64
	ld   h, l                                        ; $4b6d: $65
	ld   h, [hl]                                     ; $4b6e: $66

jr_084_4b6f:
	ld   h, a                                        ; $4b6f: $67
	ld   l, b                                        ; $4b70: $68
	ld   l, c                                        ; $4b71: $69
	ld   l, d                                        ; $4b72: $6a
	ld   l, e                                        ; $4b73: $6b
	ld   l, h                                        ; $4b74: $6c
	ld   l, l                                        ; $4b75: $6d
	ld   l, [hl]                                     ; $4b76: $6e
	ld   l, a                                        ; $4b77: $6f
	inc  l                                           ; $4b78: $2c
	dec  l                                           ; $4b79: $2d
	ld   l, $2f                                      ; $4b7a: $2e $2f
	ld   [hl], b                                     ; $4b7c: $70
	ld   [hl], c                                     ; $4b7d: $71
	ld   [hl], d                                     ; $4b7e: $72
	ld   [hl], e                                     ; $4b7f: $73
	ld   [hl], h                                     ; $4b80: $74
	ld   [hl], l                                     ; $4b81: $75
	halt                                             ; $4b82: $76
	ld   [hl], a                                     ; $4b83: $77
	ld   a, b                                        ; $4b84: $78
	ld   a, c                                        ; $4b85: $79
	ld   a, d                                        ; $4b86: $7a
	ld   a, e                                        ; $4b87: $7b
	ld   a, h                                        ; $4b88: $7c
	ld   a, l                                        ; $4b89: $7d
	ld   a, [hl]                                     ; $4b8a: $7e
	ld   a, a                                        ; $4b8b: $7f
	inc  a                                           ; $4b8c: $3c
	dec  a                                           ; $4b8d: $3d
	ld   a, $3f                                      ; $4b8e: $3e $3f
	nop                                              ; $4b90: $00
	ld   bc, $0302                                   ; $4b91: $01 $02 $03
	inc  b                                           ; $4b94: $04
	dec  b                                           ; $4b95: $05
	ld   b, $07                                      ; $4b96: $06 $07
	ld   [$0a09], sp                                 ; $4b98: $08 $09 $0a
	dec  bc                                          ; $4b9b: $0b
	inc  c                                           ; $4b9c: $0c
	dec  c                                           ; $4b9d: $0d
	ld   c, $0f                                      ; $4b9e: $0e $0f
	ld   b, b                                        ; $4ba0: $40
	ld   b, c                                        ; $4ba1: $41
	ld   b, d                                        ; $4ba2: $42
	ld   b, e                                        ; $4ba3: $43
	db   $10                                         ; $4ba4: $10
	ld   de, $1312                                   ; $4ba5: $11 $12 $13
	inc  d                                           ; $4ba8: $14
	dec  d                                           ; $4ba9: $15
	ld   d, $17                                      ; $4baa: $16 $17
	jr   jr_084_4bc7                                 ; $4bac: $18 $19

	ld   a, [de]                                     ; $4bae: $1a
	dec  de                                          ; $4baf: $1b
	inc  e                                           ; $4bb0: $1c
	dec  e                                           ; $4bb1: $1d
	ld   e, $1f                                      ; $4bb2: $1e $1f
	ld   b, h                                        ; $4bb4: $44
	ld   b, l                                        ; $4bb5: $45
	ld   b, [hl]                                     ; $4bb6: $46
	ld   b, a                                        ; $4bb7: $47
	inc  bc                                          ; $4bb8: $03
	inc  bc                                          ; $4bb9: $03
	inc  bc                                          ; $4bba: $03
	inc  bc                                          ; $4bbb: $03
	inc  b                                           ; $4bbc: $04
	inc  b                                           ; $4bbd: $04
	inc  bc                                          ; $4bbe: $03
	inc  bc                                          ; $4bbf: $03
	inc  bc                                          ; $4bc0: $03
	inc  b                                           ; $4bc1: $04
	inc  b                                           ; $4bc2: $04
	inc  b                                           ; $4bc3: $04
	inc  b                                           ; $4bc4: $04
	inc  b                                           ; $4bc5: $04
	inc  b                                           ; $4bc6: $04

jr_084_4bc7:
	inc  b                                           ; $4bc7: $04
	inc  c                                           ; $4bc8: $0c
	inc  c                                           ; $4bc9: $0c
	inc  c                                           ; $4bca: $0c
	dec  bc                                          ; $4bcb: $0b
	inc  bc                                          ; $4bcc: $03
	inc  bc                                          ; $4bcd: $03
	inc  bc                                          ; $4bce: $03
	inc  bc                                          ; $4bcf: $03
	inc  bc                                          ; $4bd0: $03
	inc  bc                                          ; $4bd1: $03
	inc  bc                                          ; $4bd2: $03
	inc  bc                                          ; $4bd3: $03
	inc  bc                                          ; $4bd4: $03
	inc  b                                           ; $4bd5: $04
	inc  b                                           ; $4bd6: $04
	dec  b                                           ; $4bd7: $05
	dec  b                                           ; $4bd8: $05
	inc  b                                           ; $4bd9: $04
	inc  b                                           ; $4bda: $04
	inc  b                                           ; $4bdb: $04
	inc  c                                           ; $4bdc: $0c
	inc  c                                           ; $4bdd: $0c
	inc  c                                           ; $4bde: $0c
	inc  c                                           ; $4bdf: $0c
	inc  b                                           ; $4be0: $04
	inc  bc                                          ; $4be1: $03
	inc  bc                                          ; $4be2: $03
	inc  b                                           ; $4be3: $04
	inc  b                                           ; $4be4: $04
	inc  b                                           ; $4be5: $04
	inc  b                                           ; $4be6: $04
	inc  bc                                          ; $4be7: $03
	inc  bc                                          ; $4be8: $03
	inc  b                                           ; $4be9: $04
	inc  b                                           ; $4bea: $04
	dec  b                                           ; $4beb: $05
	dec  b                                           ; $4bec: $05
	inc  b                                           ; $4bed: $04
	inc  b                                           ; $4bee: $04
	inc  b                                           ; $4bef: $04
	inc  c                                           ; $4bf0: $0c
	inc  c                                           ; $4bf1: $0c
	inc  c                                           ; $4bf2: $0c
	inc  c                                           ; $4bf3: $0c
	inc  b                                           ; $4bf4: $04
	inc  b                                           ; $4bf5: $04
	inc  bc                                          ; $4bf6: $03
	inc  b                                           ; $4bf7: $04
	inc  b                                           ; $4bf8: $04
	inc  b                                           ; $4bf9: $04
	inc  b                                           ; $4bfa: $04
	inc  bc                                          ; $4bfb: $03
	inc  bc                                          ; $4bfc: $03
	inc  b                                           ; $4bfd: $04
	inc  b                                           ; $4bfe: $04
	dec  b                                           ; $4bff: $05
	dec  b                                           ; $4c00: $05
	inc  b                                           ; $4c01: $04
	inc  b                                           ; $4c02: $04
	inc  b                                           ; $4c03: $04
	inc  c                                           ; $4c04: $0c
	inc  c                                           ; $4c05: $0c
	inc  c                                           ; $4c06: $0c
	inc  c                                           ; $4c07: $0c
	inc  b                                           ; $4c08: $04
	inc  b                                           ; $4c09: $04
	inc  bc                                          ; $4c0a: $03
	inc  b                                           ; $4c0b: $04
	inc  b                                           ; $4c0c: $04
	inc  b                                           ; $4c0d: $04
	inc  b                                           ; $4c0e: $04
	inc  bc                                          ; $4c0f: $03
	inc  bc                                          ; $4c10: $03
	inc  b                                           ; $4c11: $04
	inc  b                                           ; $4c12: $04
	inc  bc                                          ; $4c13: $03
	inc  bc                                          ; $4c14: $03
	inc  b                                           ; $4c15: $04
	inc  b                                           ; $4c16: $04
	inc  b                                           ; $4c17: $04
	inc  c                                           ; $4c18: $0c
	inc  c                                           ; $4c19: $0c
	dec  c                                           ; $4c1a: $0d
	dec  c                                           ; $4c1b: $0d
	inc  b                                           ; $4c1c: $04
	inc  b                                           ; $4c1d: $04
	inc  b                                           ; $4c1e: $04
	inc  b                                           ; $4c1f: $04
	inc  b                                           ; $4c20: $04
	inc  b                                           ; $4c21: $04
	inc  b                                           ; $4c22: $04
	inc  b                                           ; $4c23: $04
	inc  bc                                          ; $4c24: $03
	inc  b                                           ; $4c25: $04
	inc  b                                           ; $4c26: $04
	inc  b                                           ; $4c27: $04
	inc  b                                           ; $4c28: $04
	inc  bc                                          ; $4c29: $03
	inc  b                                           ; $4c2a: $04
	inc  b                                           ; $4c2b: $04
	inc  c                                           ; $4c2c: $0c
	inc  c                                           ; $4c2d: $0c
	dec  c                                           ; $4c2e: $0d
	dec  c                                           ; $4c2f: $0d
	inc  b                                           ; $4c30: $04
	inc  b                                           ; $4c31: $04
	inc  b                                           ; $4c32: $04
	inc  b                                           ; $4c33: $04
	inc  b                                           ; $4c34: $04
	inc  b                                           ; $4c35: $04
	inc  b                                           ; $4c36: $04
	inc  b                                           ; $4c37: $04
	inc  b                                           ; $4c38: $04
	inc  b                                           ; $4c39: $04
	inc  b                                           ; $4c3a: $04
	inc  b                                           ; $4c3b: $04
	inc  b                                           ; $4c3c: $04
	inc  b                                           ; $4c3d: $04
	inc  b                                           ; $4c3e: $04
	inc  b                                           ; $4c3f: $04
	inc  c                                           ; $4c40: $0c
	inc  c                                           ; $4c41: $0c
	dec  c                                           ; $4c42: $0d
	dec  c                                           ; $4c43: $0d
	inc  b                                           ; $4c44: $04
	inc  b                                           ; $4c45: $04
	dec  b                                           ; $4c46: $05
	dec  b                                           ; $4c47: $05
	dec  b                                           ; $4c48: $05
	dec  b                                           ; $4c49: $05
	inc  bc                                          ; $4c4a: $03
	inc  bc                                          ; $4c4b: $03
	inc  b                                           ; $4c4c: $04
	inc  b                                           ; $4c4d: $04
	inc  bc                                          ; $4c4e: $03
	inc  bc                                          ; $4c4f: $03
	inc  b                                           ; $4c50: $04
	dec  b                                           ; $4c51: $05
	dec  b                                           ; $4c52: $05
	inc  b                                           ; $4c53: $04
	inc  c                                           ; $4c54: $0c
	inc  c                                           ; $4c55: $0c
	dec  c                                           ; $4c56: $0d
	dec  c                                           ; $4c57: $0d
	inc  c                                           ; $4c58: $0c
	dec  bc                                          ; $4c59: $0b
	dec  c                                           ; $4c5a: $0d
	dec  c                                           ; $4c5b: $0d
	dec  c                                           ; $4c5c: $0d
	dec  c                                           ; $4c5d: $0d
	dec  bc                                          ; $4c5e: $0b
	dec  bc                                          ; $4c5f: $0b
	inc  c                                           ; $4c60: $0c
	inc  c                                           ; $4c61: $0c
	dec  bc                                          ; $4c62: $0b
	dec  bc                                          ; $4c63: $0b
	inc  c                                           ; $4c64: $0c
	dec  bc                                          ; $4c65: $0b
	dec  bc                                          ; $4c66: $0b
	dec  bc                                          ; $4c67: $0b
	dec  bc                                          ; $4c68: $0b
	dec  bc                                          ; $4c69: $0b
	dec  c                                           ; $4c6a: $0d
	dec  c                                           ; $4c6b: $0d
	inc  c                                           ; $4c6c: $0c
	dec  bc                                          ; $4c6d: $0b
	dec  c                                           ; $4c6e: $0d
	dec  c                                           ; $4c6f: $0d
	dec  c                                           ; $4c70: $0d
	dec  c                                           ; $4c71: $0d
	dec  bc                                          ; $4c72: $0b
	dec  bc                                          ; $4c73: $0b
	dec  bc                                          ; $4c74: $0b
	dec  bc                                          ; $4c75: $0b
	dec  bc                                          ; $4c76: $0b
	dec  bc                                          ; $4c77: $0b
	dec  bc                                          ; $4c78: $0b
	dec  bc                                          ; $4c79: $0b
	dec  bc                                          ; $4c7a: $0b
	dec  bc                                          ; $4c7b: $0b
	dec  bc                                          ; $4c7c: $0b
	dec  bc                                          ; $4c7d: $0b
	dec  c                                           ; $4c7e: $0d
	dec  c                                           ; $4c7f: $0d
	nop                                              ; $4c80: $00
	ld   bc, $0302                                   ; $4c81: $01 $02 $03
	inc  b                                           ; $4c84: $04
	dec  b                                           ; $4c85: $05
	ld   b, $07                                      ; $4c86: $06 $07
	ld   [$0a09], sp                                 ; $4c88: $08 $09 $0a
	dec  bc                                          ; $4c8b: $0b
	inc  c                                           ; $4c8c: $0c
	dec  c                                           ; $4c8d: $0d
	ld   c, $0f                                      ; $4c8e: $0e $0f
	nop                                              ; $4c90: $00
	ld   bc, $0302                                   ; $4c91: $01 $02 $03
	db   $10                                         ; $4c94: $10
	ld   de, $1312                                   ; $4c95: $11 $12 $13
	inc  d                                           ; $4c98: $14
	dec  d                                           ; $4c99: $15
	ld   d, $17                                      ; $4c9a: $16 $17
	jr   @+$1b                                       ; $4c9c: $18 $19

	ld   a, [de]                                     ; $4c9e: $1a
	dec  de                                          ; $4c9f: $1b
	inc  e                                           ; $4ca0: $1c
	dec  e                                           ; $4ca1: $1d
	ld   e, $1f                                      ; $4ca2: $1e $1f
	db   $10                                         ; $4ca4: $10
	ld   de, $1312                                   ; $4ca5: $11 $12 $13
	jr   nz, @+$23                                   ; $4ca8: $20 $21

	ld   [hl+], a                                    ; $4caa: $22
	inc  hl                                          ; $4cab: $23
	inc  h                                           ; $4cac: $24
	dec  h                                           ; $4cad: $25
	ld   h, $27                                      ; $4cae: $26 $27
	jr   z, jr_084_4cdb                              ; $4cb0: $28 $29

	ld   a, [hl+]                                    ; $4cb2: $2a
	dec  hl                                          ; $4cb3: $2b
	inc  l                                           ; $4cb4: $2c
	dec  l                                           ; $4cb5: $2d
	ld   l, $2f                                      ; $4cb6: $2e $2f
	jr   nz, jr_084_4cdb                             ; $4cb8: $20 $21

	ld   [hl+], a                                    ; $4cba: $22
	inc  hl                                          ; $4cbb: $23
	jr   nc, jr_084_4cef                             ; $4cbc: $30 $31

	ld   [hl-], a                                    ; $4cbe: $32
	inc  sp                                          ; $4cbf: $33
	inc  [hl]                                        ; $4cc0: $34
	dec  [hl]                                        ; $4cc1: $35
	ld   [hl], $37                                   ; $4cc2: $36 $37
	jr   c, jr_084_4cff                              ; $4cc4: $38 $39

	ld   a, [hl-]                                    ; $4cc6: $3a
	ld   a, [hl-]                                    ; $4cc7: $3a
	ld   a, [hl-]                                    ; $4cc8: $3a
	dec  a                                           ; $4cc9: $3d
	ld   a, $3f                                      ; $4cca: $3e $3f
	jr   nc, jr_084_4cff                             ; $4ccc: $30 $31

	ld   [hl-], a                                    ; $4cce: $32
	inc  sp                                          ; $4ccf: $33
	ld   b, b                                        ; $4cd0: $40
	ld   b, c                                        ; $4cd1: $41
	ld   b, d                                        ; $4cd2: $42
	ld   b, e                                        ; $4cd3: $43
	ld   b, h                                        ; $4cd4: $44
	ld   b, l                                        ; $4cd5: $45
	ld   b, [hl]                                     ; $4cd6: $46
	scf                                              ; $4cd7: $37
	ld   c, b                                        ; $4cd8: $48
	ld   c, c                                        ; $4cd9: $49
	ld   c, d                                        ; $4cda: $4a

jr_084_4cdb:
	ld   c, d                                        ; $4cdb: $4a
	ld   c, d                                        ; $4cdc: $4a
	ld   c, l                                        ; $4cdd: $4d
	ld   c, [hl]                                     ; $4cde: $4e
	ld   c, a                                        ; $4cdf: $4f
	ld   b, b                                        ; $4ce0: $40
	ld   b, c                                        ; $4ce1: $41
	ld   b, d                                        ; $4ce2: $42
	inc  de                                          ; $4ce3: $13
	db   $10                                         ; $4ce4: $10
	ld   d, c                                        ; $4ce5: $51
	ld   d, d                                        ; $4ce6: $52
	ld   d, e                                        ; $4ce7: $53
	ld   d, h                                        ; $4ce8: $54
	ld   d, l                                        ; $4ce9: $55
	ld   d, [hl]                                     ; $4cea: $56
	ld   d, a                                        ; $4ceb: $57
	ld   e, b                                        ; $4cec: $58
	ld   e, c                                        ; $4ced: $59
	ld   e, d                                        ; $4cee: $5a

jr_084_4cef:
	ld   e, e                                        ; $4cef: $5b
	ld   e, h                                        ; $4cf0: $5c
	ld   e, l                                        ; $4cf1: $5d
	ld   e, [hl]                                     ; $4cf2: $5e
	ld   e, a                                        ; $4cf3: $5f
	ld   d, b                                        ; $4cf4: $50
	ld   d, c                                        ; $4cf5: $51
	ld   d, d                                        ; $4cf6: $52
	inc  de                                          ; $4cf7: $13
	ld   h, b                                        ; $4cf8: $60
	ld   h, c                                        ; $4cf9: $61
	ld   h, d                                        ; $4cfa: $62
	ld   h, e                                        ; $4cfb: $63
	ld   h, h                                        ; $4cfc: $64
	ld   h, l                                        ; $4cfd: $65
	ld   h, [hl]                                     ; $4cfe: $66

jr_084_4cff:
	ld   h, a                                        ; $4cff: $67
	ld   l, b                                        ; $4d00: $68
	ld   l, c                                        ; $4d01: $69
	ld   l, d                                        ; $4d02: $6a
	ld   l, e                                        ; $4d03: $6b
	ld   l, h                                        ; $4d04: $6c
	ld   l, l                                        ; $4d05: $6d
	ld   l, [hl]                                     ; $4d06: $6e
	ld   l, a                                        ; $4d07: $6f
	ld   h, b                                        ; $4d08: $60
	ld   h, c                                        ; $4d09: $61
	ld   h, d                                        ; $4d0a: $62
	inc  de                                          ; $4d0b: $13
	ld   [hl], b                                     ; $4d0c: $70
	ld   [hl], c                                     ; $4d0d: $71
	ld   [hl], d                                     ; $4d0e: $72
	ld   [hl], e                                     ; $4d0f: $73
	ld   [hl], h                                     ; $4d10: $74
	ld   [hl], l                                     ; $4d11: $75
	halt                                             ; $4d12: $76
	ld   [hl], a                                     ; $4d13: $77
	ld   a, b                                        ; $4d14: $78
	ld   a, c                                        ; $4d15: $79
	ld   a, d                                        ; $4d16: $7a
	ld   a, e                                        ; $4d17: $7b
	ld   a, h                                        ; $4d18: $7c
	ld   a, l                                        ; $4d19: $7d
	ld   a, [hl]                                     ; $4d1a: $7e
	ld   a, a                                        ; $4d1b: $7f
	ld   [hl], b                                     ; $4d1c: $70
	ld   [hl], c                                     ; $4d1d: $71
	ld   [hl], d                                     ; $4d1e: $72
	ld   [hl], e                                     ; $4d1f: $73
	inc  b                                           ; $4d20: $04
	dec  b                                           ; $4d21: $05
	ld   b, $07                                      ; $4d22: $06 $07
	ld   [$0a09], sp                                 ; $4d24: $08 $09 $0a
	dec  bc                                          ; $4d27: $0b
	inc  c                                           ; $4d28: $0c
	dec  c                                           ; $4d29: $0d
	ld   c, $0f                                      ; $4d2a: $0e $0f
	inc  h                                           ; $4d2c: $24
	dec  h                                           ; $4d2d: $25
	ld   h, $27                                      ; $4d2e: $26 $27
	jr   z, jr_084_4d5b                              ; $4d30: $28 $29

	ld   a, [hl+]                                    ; $4d32: $2a
	ld   d, b                                        ; $4d33: $50
	inc  d                                           ; $4d34: $14
	dec  d                                           ; $4d35: $15
	ld   d, $17                                      ; $4d36: $16 $17
	jr   jr_084_4d53                                 ; $4d38: $18 $19

	ld   a, [de]                                     ; $4d3a: $1a
	dec  de                                          ; $4d3b: $1b
	inc  e                                           ; $4d3c: $1c
	dec  e                                           ; $4d3d: $1d
	ld   e, $1f                                      ; $4d3e: $1e $1f
	ld   b, a                                        ; $4d40: $47
	dec  sp                                          ; $4d41: $3b
	inc  a                                           ; $4d42: $3c
	ld   c, e                                        ; $4d43: $4b
	ld   c, h                                        ; $4d44: $4c
	ld   b, e                                        ; $4d45: $43
	ld   d, e                                        ; $4d46: $53
	ld   h, e                                        ; $4d47: $63
	inc  bc                                          ; $4d48: $03
	inc  bc                                          ; $4d49: $03
	inc  bc                                          ; $4d4a: $03
	inc  bc                                          ; $4d4b: $03
	inc  bc                                          ; $4d4c: $03
	dec  b                                           ; $4d4d: $05
	inc  b                                           ; $4d4e: $04
	inc  b                                           ; $4d4f: $04
	inc  b                                           ; $4d50: $04
	inc  b                                           ; $4d51: $04
	inc  b                                           ; $4d52: $04

jr_084_4d53:
	inc  b                                           ; $4d53: $04
	inc  b                                           ; $4d54: $04
	inc  b                                           ; $4d55: $04
	inc  b                                           ; $4d56: $04
	inc  bc                                          ; $4d57: $03
	dec  bc                                          ; $4d58: $0b
	dec  bc                                          ; $4d59: $0b
	dec  bc                                          ; $4d5a: $0b

jr_084_4d5b:
	dec  bc                                          ; $4d5b: $0b
	inc  bc                                          ; $4d5c: $03
	inc  bc                                          ; $4d5d: $03
	inc  bc                                          ; $4d5e: $03
	inc  bc                                          ; $4d5f: $03
	inc  bc                                          ; $4d60: $03
	inc  bc                                          ; $4d61: $03
	dec  b                                           ; $4d62: $05
	dec  b                                           ; $4d63: $05
	inc  b                                           ; $4d64: $04
	inc  b                                           ; $4d65: $04
	inc  b                                           ; $4d66: $04
	inc  b                                           ; $4d67: $04
	inc  b                                           ; $4d68: $04
	inc  b                                           ; $4d69: $04
	dec  b                                           ; $4d6a: $05
	inc  bc                                          ; $4d6b: $03
	dec  bc                                          ; $4d6c: $0b
	dec  bc                                          ; $4d6d: $0b
	dec  bc                                          ; $4d6e: $0b
	dec  bc                                          ; $4d6f: $0b
	inc  bc                                          ; $4d70: $03
	inc  bc                                          ; $4d71: $03
	inc  bc                                          ; $4d72: $03
	inc  bc                                          ; $4d73: $03
	inc  bc                                          ; $4d74: $03
	inc  bc                                          ; $4d75: $03
	inc  bc                                          ; $4d76: $03
	inc  bc                                          ; $4d77: $03
	inc  b                                           ; $4d78: $04
	inc  b                                           ; $4d79: $04
	inc  bc                                          ; $4d7a: $03
	inc  bc                                          ; $4d7b: $03
	inc  bc                                          ; $4d7c: $03
	inc  b                                           ; $4d7d: $04
	inc  bc                                          ; $4d7e: $03
	inc  bc                                          ; $4d7f: $03
	dec  bc                                          ; $4d80: $0b
	dec  bc                                          ; $4d81: $0b
	dec  bc                                          ; $4d82: $0b
	dec  bc                                          ; $4d83: $0b
	inc  bc                                          ; $4d84: $03
	inc  bc                                          ; $4d85: $03
	inc  bc                                          ; $4d86: $03
	inc  bc                                          ; $4d87: $03
	inc  bc                                          ; $4d88: $03
	inc  bc                                          ; $4d89: $03
	inc  bc                                          ; $4d8a: $03
	inc  bc                                          ; $4d8b: $03
	inc  bc                                          ; $4d8c: $03
	inc  bc                                          ; $4d8d: $03
	inc  bc                                          ; $4d8e: $03
	inc  bc                                          ; $4d8f: $03
	inc  bc                                          ; $4d90: $03
	inc  bc                                          ; $4d91: $03
	inc  bc                                          ; $4d92: $03
	inc  bc                                          ; $4d93: $03
	dec  bc                                          ; $4d94: $0b
	dec  bc                                          ; $4d95: $0b
	dec  bc                                          ; $4d96: $0b
	dec  bc                                          ; $4d97: $0b
	inc  bc                                          ; $4d98: $03
	inc  bc                                          ; $4d99: $03
	inc  bc                                          ; $4d9a: $03
	inc  bc                                          ; $4d9b: $03
	inc  bc                                          ; $4d9c: $03
	inc  bc                                          ; $4d9d: $03
	inc  bc                                          ; $4d9e: $03
	inc  bc                                          ; $4d9f: $03
	inc  bc                                          ; $4da0: $03
	inc  bc                                          ; $4da1: $03
	inc  bc                                          ; $4da2: $03
	inc  bc                                          ; $4da3: $03
	inc  bc                                          ; $4da4: $03
	inc  bc                                          ; $4da5: $03
	inc  bc                                          ; $4da6: $03
	inc  bc                                          ; $4da7: $03
	dec  bc                                          ; $4da8: $0b
	dec  bc                                          ; $4da9: $0b
	dec  bc                                          ; $4daa: $0b
	dec  bc                                          ; $4dab: $0b
	inc  bc                                          ; $4dac: $03
	inc  bc                                          ; $4dad: $03
	inc  bc                                          ; $4dae: $03
	inc  bc                                          ; $4daf: $03
	inc  bc                                          ; $4db0: $03
	inc  bc                                          ; $4db1: $03
	inc  bc                                          ; $4db2: $03
	inc  bc                                          ; $4db3: $03
	inc  bc                                          ; $4db4: $03
	inc  bc                                          ; $4db5: $03
	inc  bc                                          ; $4db6: $03
	inc  bc                                          ; $4db7: $03
	inc  bc                                          ; $4db8: $03
	inc  bc                                          ; $4db9: $03
	inc  bc                                          ; $4dba: $03
	inc  bc                                          ; $4dbb: $03
	dec  bc                                          ; $4dbc: $0b
	dec  bc                                          ; $4dbd: $0b
	dec  bc                                          ; $4dbe: $0b
	dec  bc                                          ; $4dbf: $0b
	inc  bc                                          ; $4dc0: $03
	inc  bc                                          ; $4dc1: $03
	inc  bc                                          ; $4dc2: $03
	inc  bc                                          ; $4dc3: $03
	inc  bc                                          ; $4dc4: $03
	inc  bc                                          ; $4dc5: $03
	inc  bc                                          ; $4dc6: $03
	inc  bc                                          ; $4dc7: $03
	inc  bc                                          ; $4dc8: $03
	inc  bc                                          ; $4dc9: $03
	inc  bc                                          ; $4dca: $03
	inc  bc                                          ; $4dcb: $03
	inc  bc                                          ; $4dcc: $03
	inc  bc                                          ; $4dcd: $03
	inc  bc                                          ; $4dce: $03
	inc  bc                                          ; $4dcf: $03
	dec  bc                                          ; $4dd0: $0b
	dec  bc                                          ; $4dd1: $0b
	dec  bc                                          ; $4dd2: $0b
	dec  bc                                          ; $4dd3: $0b
	inc  bc                                          ; $4dd4: $03
	inc  bc                                          ; $4dd5: $03
	inc  bc                                          ; $4dd6: $03
	inc  bc                                          ; $4dd7: $03
	inc  bc                                          ; $4dd8: $03
	inc  bc                                          ; $4dd9: $03
	inc  bc                                          ; $4dda: $03
	inc  bc                                          ; $4ddb: $03
	inc  bc                                          ; $4ddc: $03
	inc  bc                                          ; $4ddd: $03
	inc  bc                                          ; $4dde: $03
	inc  bc                                          ; $4ddf: $03
	inc  bc                                          ; $4de0: $03
	inc  bc                                          ; $4de1: $03
	inc  bc                                          ; $4de2: $03
	inc  bc                                          ; $4de3: $03
	dec  bc                                          ; $4de4: $0b
	dec  bc                                          ; $4de5: $0b
	dec  bc                                          ; $4de6: $0b
	dec  bc                                          ; $4de7: $0b
	dec  bc                                          ; $4de8: $0b
	dec  bc                                          ; $4de9: $0b
	dec  bc                                          ; $4dea: $0b
	dec  bc                                          ; $4deb: $0b
	dec  bc                                          ; $4dec: $0b
	dec  bc                                          ; $4ded: $0b
	dec  bc                                          ; $4dee: $0b
	dec  bc                                          ; $4def: $0b
	dec  bc                                          ; $4df0: $0b
	dec  bc                                          ; $4df1: $0b
	dec  bc                                          ; $4df2: $0b
	dec  bc                                          ; $4df3: $0b
	dec  bc                                          ; $4df4: $0b
	dec  bc                                          ; $4df5: $0b
	dec  bc                                          ; $4df6: $0b
	dec  bc                                          ; $4df7: $0b
	dec  bc                                          ; $4df8: $0b
	dec  bc                                          ; $4df9: $0b
	dec  bc                                          ; $4dfa: $0b
	inc  bc                                          ; $4dfb: $03
	dec  bc                                          ; $4dfc: $0b
	dec  bc                                          ; $4dfd: $0b
	dec  bc                                          ; $4dfe: $0b
	dec  bc                                          ; $4dff: $0b
	dec  bc                                          ; $4e00: $0b
	dec  bc                                          ; $4e01: $0b
	dec  bc                                          ; $4e02: $0b
	dec  bc                                          ; $4e03: $0b
	dec  bc                                          ; $4e04: $0b
	dec  bc                                          ; $4e05: $0b
	dec  bc                                          ; $4e06: $0b
	dec  bc                                          ; $4e07: $0b
	inc  bc                                          ; $4e08: $03
	inc  bc                                          ; $4e09: $03
	inc  bc                                          ; $4e0a: $03
	inc  bc                                          ; $4e0b: $03
	inc  bc                                          ; $4e0c: $03
	dec  bc                                          ; $4e0d: $0b
	dec  bc                                          ; $4e0e: $0b
	dec  bc                                          ; $4e0f: $0b
	nop                                              ; $4e10: $00
	ld   bc, $0302                                   ; $4e11: $01 $02 $03
	inc  b                                           ; $4e14: $04
	dec  b                                           ; $4e15: $05
	ld   b, $07                                      ; $4e16: $06 $07
	ld   [$0a09], sp                                 ; $4e18: $08 $09 $0a
	dec  bc                                          ; $4e1b: $0b
	inc  c                                           ; $4e1c: $0c
	dec  c                                           ; $4e1d: $0d
	ld   c, $0f                                      ; $4e1e: $0e $0f
	nop                                              ; $4e20: $00
	ld   bc, $0302                                   ; $4e21: $01 $02 $03
	db   $10                                         ; $4e24: $10
	ld   de, $1312                                   ; $4e25: $11 $12 $13
	inc  d                                           ; $4e28: $14
	dec  d                                           ; $4e29: $15
	ld   d, $17                                      ; $4e2a: $16 $17
	jr   @+$1b                                       ; $4e2c: $18 $19

	ld   a, [de]                                     ; $4e2e: $1a
	dec  de                                          ; $4e2f: $1b
	inc  e                                           ; $4e30: $1c
	dec  e                                           ; $4e31: $1d
	ld   e, $1f                                      ; $4e32: $1e $1f
	db   $10                                         ; $4e34: $10
	ld   de, $1312                                   ; $4e35: $11 $12 $13
	jr   nz, @+$23                                   ; $4e38: $20 $21

	ld   [hl+], a                                    ; $4e3a: $22
	inc  hl                                          ; $4e3b: $23
	inc  h                                           ; $4e3c: $24
	dec  h                                           ; $4e3d: $25
	ld   h, $27                                      ; $4e3e: $26 $27
	jr   z, jr_084_4e6b                              ; $4e40: $28 $29

	ld   a, [hl+]                                    ; $4e42: $2a
	dec  hl                                          ; $4e43: $2b
	inc  l                                           ; $4e44: $2c
	dec  l                                           ; $4e45: $2d
	ld   l, $2f                                      ; $4e46: $2e $2f
	jr   nz, jr_084_4e6b                             ; $4e48: $20 $21

	ld   [hl+], a                                    ; $4e4a: $22
	inc  hl                                          ; $4e4b: $23
	jr   nc, jr_084_4e7f                             ; $4e4c: $30 $31

	ld   [hl-], a                                    ; $4e4e: $32
	inc  sp                                          ; $4e4f: $33
	inc  [hl]                                        ; $4e50: $34
	dec  [hl]                                        ; $4e51: $35
	ld   [hl], $37                                   ; $4e52: $36 $37
	jr   c, jr_084_4e8f                              ; $4e54: $38 $39

	ld   a, [hl-]                                    ; $4e56: $3a
	dec  sp                                          ; $4e57: $3b
	inc  a                                           ; $4e58: $3c
	dec  a                                           ; $4e59: $3d
	ld   a, $3f                                      ; $4e5a: $3e $3f
	jr   nc, jr_084_4e8f                             ; $4e5c: $30 $31

	ld   [hl-], a                                    ; $4e5e: $32
	inc  sp                                          ; $4e5f: $33
	ld   b, b                                        ; $4e60: $40
	ld   b, c                                        ; $4e61: $41
	ld   b, d                                        ; $4e62: $42
	ld   b, e                                        ; $4e63: $43
	ld   b, h                                        ; $4e64: $44
	ld   b, l                                        ; $4e65: $45
	ld   b, [hl]                                     ; $4e66: $46
	ld   b, a                                        ; $4e67: $47
	ld   c, b                                        ; $4e68: $48
	ld   c, c                                        ; $4e69: $49
	ld   c, d                                        ; $4e6a: $4a

jr_084_4e6b:
	ld   c, e                                        ; $4e6b: $4b
	ld   c, h                                        ; $4e6c: $4c
	ld   c, l                                        ; $4e6d: $4d
	ld   c, [hl]                                     ; $4e6e: $4e
	ld   c, a                                        ; $4e6f: $4f
	ld   b, b                                        ; $4e70: $40
	ld   b, c                                        ; $4e71: $41
	ld   b, d                                        ; $4e72: $42
	ld   b, e                                        ; $4e73: $43
	ld   d, b                                        ; $4e74: $50
	ld   d, c                                        ; $4e75: $51
	ld   d, d                                        ; $4e76: $52
	ld   d, e                                        ; $4e77: $53
	ld   d, h                                        ; $4e78: $54
	ld   d, l                                        ; $4e79: $55
	ld   d, [hl]                                     ; $4e7a: $56
	ld   d, a                                        ; $4e7b: $57
	ld   e, b                                        ; $4e7c: $58
	ld   e, c                                        ; $4e7d: $59
	ld   e, d                                        ; $4e7e: $5a

jr_084_4e7f:
	ld   e, e                                        ; $4e7f: $5b
	ld   e, h                                        ; $4e80: $5c
	ld   e, l                                        ; $4e81: $5d
	ld   e, [hl]                                     ; $4e82: $5e
	ld   e, a                                        ; $4e83: $5f
	ld   d, b                                        ; $4e84: $50
	ld   d, c                                        ; $4e85: $51
	ld   d, d                                        ; $4e86: $52
	ld   d, e                                        ; $4e87: $53
	ld   h, b                                        ; $4e88: $60
	ld   h, c                                        ; $4e89: $61
	ld   h, d                                        ; $4e8a: $62
	ld   h, e                                        ; $4e8b: $63
	ld   h, h                                        ; $4e8c: $64
	ld   h, l                                        ; $4e8d: $65
	ld   h, [hl]                                     ; $4e8e: $66

jr_084_4e8f:
	ld   h, a                                        ; $4e8f: $67
	ld   l, b                                        ; $4e90: $68
	ld   l, c                                        ; $4e91: $69
	ld   l, d                                        ; $4e92: $6a
	ld   l, e                                        ; $4e93: $6b
	ld   l, h                                        ; $4e94: $6c
	ld   l, l                                        ; $4e95: $6d
	ld   l, [hl]                                     ; $4e96: $6e
	ld   l, a                                        ; $4e97: $6f
	ld   h, b                                        ; $4e98: $60
	ld   h, c                                        ; $4e99: $61
	ld   h, d                                        ; $4e9a: $62
	ld   h, e                                        ; $4e9b: $63
	ld   [hl], b                                     ; $4e9c: $70
	ld   [hl], c                                     ; $4e9d: $71
	ld   [hl], d                                     ; $4e9e: $72
	ld   [hl], e                                     ; $4e9f: $73
	ld   [hl], h                                     ; $4ea0: $74
	ld   [hl], l                                     ; $4ea1: $75
	halt                                             ; $4ea2: $76
	ld   [hl], a                                     ; $4ea3: $77
	ld   a, b                                        ; $4ea4: $78
	ld   a, c                                        ; $4ea5: $79
	ld   a, d                                        ; $4ea6: $7a
	ld   a, e                                        ; $4ea7: $7b
	ld   a, h                                        ; $4ea8: $7c
	ld   a, l                                        ; $4ea9: $7d
	ld   a, [hl]                                     ; $4eaa: $7e
	ld   a, a                                        ; $4eab: $7f
	ld   [hl], b                                     ; $4eac: $70
	ld   [hl], c                                     ; $4ead: $71
	ld   [hl], d                                     ; $4eae: $72
	ld   [hl], e                                     ; $4eaf: $73
	inc  b                                           ; $4eb0: $04
	dec  b                                           ; $4eb1: $05
	ld   b, $07                                      ; $4eb2: $06 $07
	ld   [$0a09], sp                                 ; $4eb4: $08 $09 $0a
	dec  bc                                          ; $4eb7: $0b
	inc  c                                           ; $4eb8: $0c
	dec  c                                           ; $4eb9: $0d
	ld   c, $0f                                      ; $4eba: $0e $0f
	inc  h                                           ; $4ebc: $24
	dec  h                                           ; $4ebd: $25
	ld   h, $27                                      ; $4ebe: $26 $27
	jr   z, jr_084_4eeb                              ; $4ec0: $28 $29

	ld   a, [hl+]                                    ; $4ec2: $2a
	dec  hl                                          ; $4ec3: $2b
	inc  d                                           ; $4ec4: $14
	dec  d                                           ; $4ec5: $15
	ld   d, $17                                      ; $4ec6: $16 $17
	jr   jr_084_4ee3                                 ; $4ec8: $18 $19

	ld   a, [de]                                     ; $4eca: $1a
	dec  de                                          ; $4ecb: $1b
	inc  e                                           ; $4ecc: $1c
	dec  e                                           ; $4ecd: $1d
	ld   e, $1f                                      ; $4ece: $1e $1f
	inc  l                                           ; $4ed0: $2c
	dec  l                                           ; $4ed1: $2d
	ld   l, $2f                                      ; $4ed2: $2e $2f
	inc  [hl]                                        ; $4ed4: $34
	dec  [hl]                                        ; $4ed5: $35
	ld   [hl], $37                                   ; $4ed6: $36 $37
	dec  b                                           ; $4ed8: $05
	dec  b                                           ; $4ed9: $05
	dec  b                                           ; $4eda: $05
	dec  b                                           ; $4edb: $05
	inc  b                                           ; $4edc: $04
	inc  b                                           ; $4edd: $04
	inc  b                                           ; $4ede: $04
	inc  b                                           ; $4edf: $04
	inc  b                                           ; $4ee0: $04
	inc  b                                           ; $4ee1: $04
	inc  b                                           ; $4ee2: $04

jr_084_4ee3:
	inc  b                                           ; $4ee3: $04
	inc  b                                           ; $4ee4: $04
	inc  b                                           ; $4ee5: $04
	inc  b                                           ; $4ee6: $04
	inc  b                                           ; $4ee7: $04
	dec  c                                           ; $4ee8: $0d
	dec  c                                           ; $4ee9: $0d
	dec  c                                           ; $4eea: $0d

jr_084_4eeb:
	dec  c                                           ; $4eeb: $0d
	dec  b                                           ; $4eec: $05
	dec  b                                           ; $4eed: $05
	dec  b                                           ; $4eee: $05
	dec  b                                           ; $4eef: $05
	dec  b                                           ; $4ef0: $05
	dec  b                                           ; $4ef1: $05
	dec  b                                           ; $4ef2: $05
	dec  b                                           ; $4ef3: $05
	dec  b                                           ; $4ef4: $05
	dec  b                                           ; $4ef5: $05
	dec  b                                           ; $4ef6: $05
	dec  b                                           ; $4ef7: $05
	dec  b                                           ; $4ef8: $05
	dec  b                                           ; $4ef9: $05
	inc  b                                           ; $4efa: $04
	inc  b                                           ; $4efb: $04
	inc  c                                           ; $4efc: $0c
	dec  c                                           ; $4efd: $0d
	dec  c                                           ; $4efe: $0d
	dec  c                                           ; $4eff: $0d
	dec  b                                           ; $4f00: $05
	dec  b                                           ; $4f01: $05
	dec  b                                           ; $4f02: $05
	dec  b                                           ; $4f03: $05
	inc  b                                           ; $4f04: $04
	inc  b                                           ; $4f05: $04
	dec  b                                           ; $4f06: $05
	dec  b                                           ; $4f07: $05
	dec  b                                           ; $4f08: $05
	dec  b                                           ; $4f09: $05
	dec  b                                           ; $4f0a: $05
	dec  b                                           ; $4f0b: $05
	dec  b                                           ; $4f0c: $05
	dec  b                                           ; $4f0d: $05
	inc  b                                           ; $4f0e: $04
	inc  b                                           ; $4f0f: $04
	dec  bc                                          ; $4f10: $0b
	inc  c                                           ; $4f11: $0c
	dec  c                                           ; $4f12: $0d
	dec  c                                           ; $4f13: $0d
	dec  b                                           ; $4f14: $05
	dec  b                                           ; $4f15: $05
	dec  b                                           ; $4f16: $05
	dec  b                                           ; $4f17: $05
	dec  b                                           ; $4f18: $05
	dec  b                                           ; $4f19: $05
	inc  bc                                          ; $4f1a: $03
	inc  bc                                          ; $4f1b: $03
	inc  bc                                          ; $4f1c: $03
	inc  bc                                          ; $4f1d: $03
	inc  bc                                          ; $4f1e: $03
	inc  bc                                          ; $4f1f: $03
	inc  bc                                          ; $4f20: $03
	inc  bc                                          ; $4f21: $03
	inc  bc                                          ; $4f22: $03
	inc  bc                                          ; $4f23: $03
	inc  c                                           ; $4f24: $0c
	inc  c                                           ; $4f25: $0c
	dec  bc                                          ; $4f26: $0b
	inc  c                                           ; $4f27: $0c
	inc  b                                           ; $4f28: $04
	inc  b                                           ; $4f29: $04
	inc  b                                           ; $4f2a: $04
	inc  b                                           ; $4f2b: $04
	inc  b                                           ; $4f2c: $04
	inc  b                                           ; $4f2d: $04
	inc  b                                           ; $4f2e: $04
	inc  b                                           ; $4f2f: $04
	inc  b                                           ; $4f30: $04
	inc  b                                           ; $4f31: $04
	inc  b                                           ; $4f32: $04
	inc  b                                           ; $4f33: $04
	inc  b                                           ; $4f34: $04
	inc  b                                           ; $4f35: $04
	inc  b                                           ; $4f36: $04
	inc  b                                           ; $4f37: $04
	inc  c                                           ; $4f38: $0c
	dec  bc                                          ; $4f39: $0b
	dec  bc                                          ; $4f3a: $0b
	inc  c                                           ; $4f3b: $0c
	inc  bc                                          ; $4f3c: $03
	inc  b                                           ; $4f3d: $04
	inc  bc                                          ; $4f3e: $03
	inc  b                                           ; $4f3f: $04
	inc  b                                           ; $4f40: $04
	inc  bc                                          ; $4f41: $03
	inc  bc                                          ; $4f42: $03
	inc  bc                                          ; $4f43: $03
	inc  bc                                          ; $4f44: $03
	inc  bc                                          ; $4f45: $03
	inc  bc                                          ; $4f46: $03
	inc  bc                                          ; $4f47: $03
	inc  bc                                          ; $4f48: $03
	inc  bc                                          ; $4f49: $03
	inc  bc                                          ; $4f4a: $03
	inc  bc                                          ; $4f4b: $03
	inc  c                                           ; $4f4c: $0c
	dec  bc                                          ; $4f4d: $0b
	dec  bc                                          ; $4f4e: $0b
	inc  c                                           ; $4f4f: $0c
	inc  bc                                          ; $4f50: $03
	inc  b                                           ; $4f51: $04
	inc  bc                                          ; $4f52: $03
	inc  bc                                          ; $4f53: $03
	inc  bc                                          ; $4f54: $03
	inc  bc                                          ; $4f55: $03
	inc  bc                                          ; $4f56: $03
	inc  bc                                          ; $4f57: $03
	inc  bc                                          ; $4f58: $03
	inc  bc                                          ; $4f59: $03
	inc  bc                                          ; $4f5a: $03
	inc  bc                                          ; $4f5b: $03
	inc  bc                                          ; $4f5c: $03
	inc  bc                                          ; $4f5d: $03
	inc  bc                                          ; $4f5e: $03
	inc  bc                                          ; $4f5f: $03
	inc  c                                           ; $4f60: $0c
	inc  c                                           ; $4f61: $0c
	inc  c                                           ; $4f62: $0c
	inc  c                                           ; $4f63: $0c
	inc  bc                                          ; $4f64: $03
	inc  bc                                          ; $4f65: $03
	inc  bc                                          ; $4f66: $03
	inc  bc                                          ; $4f67: $03
	inc  bc                                          ; $4f68: $03
	inc  bc                                          ; $4f69: $03
	inc  bc                                          ; $4f6a: $03
	inc  bc                                          ; $4f6b: $03
	inc  bc                                          ; $4f6c: $03
	inc  bc                                          ; $4f6d: $03
	inc  bc                                          ; $4f6e: $03
	inc  bc                                          ; $4f6f: $03
	inc  bc                                          ; $4f70: $03
	inc  b                                           ; $4f71: $04
	inc  bc                                          ; $4f72: $03
	inc  bc                                          ; $4f73: $03
	dec  bc                                          ; $4f74: $0b
	inc  c                                           ; $4f75: $0c
	inc  c                                           ; $4f76: $0c
	inc  c                                           ; $4f77: $0c
	dec  bc                                          ; $4f78: $0b
	dec  bc                                          ; $4f79: $0b
	dec  bc                                          ; $4f7a: $0b
	dec  bc                                          ; $4f7b: $0b
	dec  bc                                          ; $4f7c: $0b
	dec  bc                                          ; $4f7d: $0b
	dec  bc                                          ; $4f7e: $0b
	dec  bc                                          ; $4f7f: $0b
	dec  bc                                          ; $4f80: $0b
	dec  bc                                          ; $4f81: $0b
	dec  bc                                          ; $4f82: $0b
	dec  bc                                          ; $4f83: $0b
	dec  bc                                          ; $4f84: $0b
	inc  c                                           ; $4f85: $0c
	dec  bc                                          ; $4f86: $0b
	dec  bc                                          ; $4f87: $0b
	dec  bc                                          ; $4f88: $0b
	dec  bc                                          ; $4f89: $0b
	dec  bc                                          ; $4f8a: $0b
	dec  bc                                          ; $4f8b: $0b
	dec  bc                                          ; $4f8c: $0b
	dec  bc                                          ; $4f8d: $0b
	dec  bc                                          ; $4f8e: $0b
	dec  bc                                          ; $4f8f: $0b
	dec  bc                                          ; $4f90: $0b
	dec  bc                                          ; $4f91: $0b
	dec  bc                                          ; $4f92: $0b
	dec  bc                                          ; $4f93: $0b
	dec  bc                                          ; $4f94: $0b
	dec  bc                                          ; $4f95: $0b
	dec  bc                                          ; $4f96: $0b
	dec  bc                                          ; $4f97: $0b
	dec  bc                                          ; $4f98: $0b
	dec  bc                                          ; $4f99: $0b
	dec  bc                                          ; $4f9a: $0b
	dec  bc                                          ; $4f9b: $0b
	dec  bc                                          ; $4f9c: $0b
	dec  bc                                          ; $4f9d: $0b
	dec  bc                                          ; $4f9e: $0b
	dec  bc                                          ; $4f9f: $0b
	nop                                              ; $4fa0: $00
	ld   bc, $0302                                   ; $4fa1: $01 $02 $03
	inc  b                                           ; $4fa4: $04
	dec  b                                           ; $4fa5: $05
	ld   b, $07                                      ; $4fa6: $06 $07
	ld   [$0a09], sp                                 ; $4fa8: $08 $09 $0a
	dec  bc                                          ; $4fab: $0b
	inc  c                                           ; $4fac: $0c
	dec  c                                           ; $4fad: $0d
	ld   c, $0f                                      ; $4fae: $0e $0f
	nop                                              ; $4fb0: $00
	ld   bc, $0302                                   ; $4fb1: $01 $02 $03
	db   $10                                         ; $4fb4: $10
	ld   de, $1312                                   ; $4fb5: $11 $12 $13
	inc  d                                           ; $4fb8: $14
	dec  d                                           ; $4fb9: $15
	ld   d, $17                                      ; $4fba: $16 $17
	jr   @+$1b                                       ; $4fbc: $18 $19

	ld   a, [de]                                     ; $4fbe: $1a
	dec  de                                          ; $4fbf: $1b
	inc  e                                           ; $4fc0: $1c
	dec  e                                           ; $4fc1: $1d
	ld   e, $1f                                      ; $4fc2: $1e $1f
	db   $10                                         ; $4fc4: $10
	ld   de, $1312                                   ; $4fc5: $11 $12 $13
	jr   nz, @+$23                                   ; $4fc8: $20 $21

	ld   [hl+], a                                    ; $4fca: $22
	inc  hl                                          ; $4fcb: $23
	inc  h                                           ; $4fcc: $24
	dec  h                                           ; $4fcd: $25
	ld   h, $27                                      ; $4fce: $26 $27
	jr   z, jr_084_4ffb                              ; $4fd0: $28 $29

	ld   a, [hl+]                                    ; $4fd2: $2a
	dec  hl                                          ; $4fd3: $2b
	inc  l                                           ; $4fd4: $2c
	dec  l                                           ; $4fd5: $2d
	ld   l, $2f                                      ; $4fd6: $2e $2f
	jr   nz, jr_084_4ffb                             ; $4fd8: $20 $21

	ld   [hl+], a                                    ; $4fda: $22
	inc  hl                                          ; $4fdb: $23
	jr   nc, jr_084_500f                             ; $4fdc: $30 $31

	ld   [hl-], a                                    ; $4fde: $32
	inc  sp                                          ; $4fdf: $33
	inc  [hl]                                        ; $4fe0: $34
	dec  [hl]                                        ; $4fe1: $35
	ld   [hl], $37                                   ; $4fe2: $36 $37
	jr   c, jr_084_501f                              ; $4fe4: $38 $39

	ld   a, [hl-]                                    ; $4fe6: $3a
	dec  sp                                          ; $4fe7: $3b
	inc  a                                           ; $4fe8: $3c
	dec  a                                           ; $4fe9: $3d
	ld   a, $3e                                      ; $4fea: $3e $3e
	ld   a, $31                                      ; $4fec: $3e $31
	ld   [hl-], a                                    ; $4fee: $32
	inc  sp                                          ; $4fef: $33
	ld   b, b                                        ; $4ff0: $40
	ld   b, c                                        ; $4ff1: $41
	ld   b, d                                        ; $4ff2: $42
	ld   b, e                                        ; $4ff3: $43
	ld   b, h                                        ; $4ff4: $44
	ld   b, l                                        ; $4ff5: $45
	ld   b, [hl]                                     ; $4ff6: $46
	ld   b, a                                        ; $4ff7: $47
	ld   c, b                                        ; $4ff8: $48
	ld   c, c                                        ; $4ff9: $49
	ld   c, d                                        ; $4ffa: $4a

jr_084_4ffb:
	ld   c, e                                        ; $4ffb: $4b
	ld   c, h                                        ; $4ffc: $4c
	ld   c, l                                        ; $4ffd: $4d
	ld   c, [hl]                                     ; $4ffe: $4e
	ld   c, a                                        ; $4fff: $4f
	ld   b, b                                        ; $5000: $40
	ld   b, c                                        ; $5001: $41
	ld   b, d                                        ; $5002: $42
	ld   b, e                                        ; $5003: $43
	ld   b, b                                        ; $5004: $40
	ld   b, c                                        ; $5005: $41
	ld   d, d                                        ; $5006: $52
	ld   d, e                                        ; $5007: $53
	ld   d, h                                        ; $5008: $54
	ld   d, l                                        ; $5009: $55
	ld   d, [hl]                                     ; $500a: $56
	ld   d, a                                        ; $500b: $57
	ld   e, b                                        ; $500c: $58
	ld   e, c                                        ; $500d: $59
	ld   e, d                                        ; $500e: $5a

jr_084_500f:
	ld   e, e                                        ; $500f: $5b
	ld   e, h                                        ; $5010: $5c
	ld   e, l                                        ; $5011: $5d
	ld   e, [hl]                                     ; $5012: $5e
	ld   e, a                                        ; $5013: $5f
	ld   d, b                                        ; $5014: $50
	ld   d, c                                        ; $5015: $51
	ld   d, d                                        ; $5016: $52
	ld   d, e                                        ; $5017: $53
	ld   b, b                                        ; $5018: $40
	ld   b, c                                        ; $5019: $41
	ld   h, d                                        ; $501a: $62
	ld   h, e                                        ; $501b: $63
	ld   h, h                                        ; $501c: $64
	ld   h, l                                        ; $501d: $65
	ld   h, [hl]                                     ; $501e: $66

jr_084_501f:
	ld   h, a                                        ; $501f: $67
	ld   l, b                                        ; $5020: $68
	ld   l, c                                        ; $5021: $69
	ld   l, d                                        ; $5022: $6a
	ld   l, e                                        ; $5023: $6b
	ld   l, h                                        ; $5024: $6c
	ld   l, l                                        ; $5025: $6d
	ld   l, [hl]                                     ; $5026: $6e
	ld   l, a                                        ; $5027: $6f
	ld   h, b                                        ; $5028: $60
	ld   h, c                                        ; $5029: $61
	ld   h, d                                        ; $502a: $62
	ld   h, e                                        ; $502b: $63
	ld   [hl], b                                     ; $502c: $70
	ld   [hl], c                                     ; $502d: $71
	ld   [hl], d                                     ; $502e: $72
	ld   [hl], e                                     ; $502f: $73
	ld   [hl], h                                     ; $5030: $74
	ld   [hl], l                                     ; $5031: $75
	halt                                             ; $5032: $76
	ld   [hl], a                                     ; $5033: $77
	ld   a, b                                        ; $5034: $78
	ld   a, c                                        ; $5035: $79
	ld   a, d                                        ; $5036: $7a
	ld   a, e                                        ; $5037: $7b
	ld   a, h                                        ; $5038: $7c
	dec  c                                           ; $5039: $0d
	dec  c                                           ; $503a: $0d
	ld   a, a                                        ; $503b: $7f
	ld   [hl], b                                     ; $503c: $70
	ld   [hl], c                                     ; $503d: $71
	ld   [hl], d                                     ; $503e: $72
	ld   [hl], e                                     ; $503f: $73
	inc  b                                           ; $5040: $04
	dec  b                                           ; $5041: $05
	ld   b, $07                                      ; $5042: $06 $07
	ld   [$0a09], sp                                 ; $5044: $08 $09 $0a
	dec  bc                                          ; $5047: $0b
	inc  c                                           ; $5048: $0c
	dec  c                                           ; $5049: $0d
	dec  c                                           ; $504a: $0d
	dec  c                                           ; $504b: $0d
	dec  c                                           ; $504c: $0d
	dec  c                                           ; $504d: $0d
	dec  c                                           ; $504e: $0d
	ccf                                              ; $504f: $3f
	jr   nc, jr_084_505f                             ; $5050: $30 $0d

	ld   d, b                                        ; $5052: $50
	ld   d, c                                        ; $5053: $51
	inc  d                                           ; $5054: $14
	dec  d                                           ; $5055: $15
	ld   d, $17                                      ; $5056: $16 $17
	jr   jr_084_5073                                 ; $5058: $18 $19

	ld   a, [de]                                     ; $505a: $1a
	dec  de                                          ; $505b: $1b
	ld   c, $0d                                      ; $505c: $0e $0d
	dec  c                                           ; $505e: $0d

jr_084_505f:
	dec  c                                           ; $505f: $0d
	dec  c                                           ; $5060: $0d
	dec  c                                           ; $5061: $0d
	dec  c                                           ; $5062: $0d
	ld   a, l                                        ; $5063: $7d
	ld   a, [hl]                                     ; $5064: $7e
	rrca                                             ; $5065: $0f
	ld   h, b                                        ; $5066: $60
	ld   h, c                                        ; $5067: $61
	dec  b                                           ; $5068: $05
	dec  b                                           ; $5069: $05
	dec  b                                           ; $506a: $05
	dec  b                                           ; $506b: $05
	dec  b                                           ; $506c: $05
	dec  b                                           ; $506d: $05
	dec  b                                           ; $506e: $05
	dec  b                                           ; $506f: $05
	dec  b                                           ; $5070: $05
	inc  b                                           ; $5071: $04
	inc  b                                           ; $5072: $04

jr_084_5073:
	inc  b                                           ; $5073: $04
	inc  b                                           ; $5074: $04
	inc  b                                           ; $5075: $04
	inc  b                                           ; $5076: $04
	inc  b                                           ; $5077: $04
	inc  c                                           ; $5078: $0c
	dec  c                                           ; $5079: $0d
	dec  c                                           ; $507a: $0d
	dec  bc                                          ; $507b: $0b
	dec  b                                           ; $507c: $05
	inc  bc                                          ; $507d: $03
	dec  b                                           ; $507e: $05
	dec  b                                           ; $507f: $05
	dec  b                                           ; $5080: $05
	dec  b                                           ; $5081: $05
	dec  b                                           ; $5082: $05
	dec  b                                           ; $5083: $05
	dec  b                                           ; $5084: $05
	dec  b                                           ; $5085: $05
	dec  b                                           ; $5086: $05
	dec  b                                           ; $5087: $05
	inc  b                                           ; $5088: $04
	inc  bc                                          ; $5089: $03
	inc  bc                                          ; $508a: $03
	inc  bc                                          ; $508b: $03
	dec  c                                           ; $508c: $0d
	dec  c                                           ; $508d: $0d
	dec  bc                                          ; $508e: $0b
	dec  bc                                          ; $508f: $0b
	dec  b                                           ; $5090: $05
	inc  bc                                          ; $5091: $03
	dec  b                                           ; $5092: $05
	dec  b                                           ; $5093: $05
	inc  bc                                          ; $5094: $03
	dec  b                                           ; $5095: $05
	dec  b                                           ; $5096: $05
	inc  b                                           ; $5097: $04
	inc  b                                           ; $5098: $04
	inc  b                                           ; $5099: $04
	dec  b                                           ; $509a: $05
	dec  b                                           ; $509b: $05
	dec  b                                           ; $509c: $05
	dec  b                                           ; $509d: $05
	dec  b                                           ; $509e: $05
	dec  b                                           ; $509f: $05
	dec  c                                           ; $50a0: $0d
	dec  c                                           ; $50a1: $0d
	dec  bc                                          ; $50a2: $0b
	dec  bc                                          ; $50a3: $0b
	inc  b                                           ; $50a4: $04
	inc  b                                           ; $50a5: $04
	inc  b                                           ; $50a6: $04
	inc  b                                           ; $50a7: $04
	inc  bc                                          ; $50a8: $03
	inc  b                                           ; $50a9: $04
	inc  b                                           ; $50aa: $04
	inc  b                                           ; $50ab: $04
	inc  b                                           ; $50ac: $04
	inc  b                                           ; $50ad: $04
	inc  bc                                          ; $50ae: $03
	inc  bc                                          ; $50af: $03
	dec  b                                           ; $50b0: $05
	inc  bc                                          ; $50b1: $03
	inc  bc                                          ; $50b2: $03
	inc  bc                                          ; $50b3: $03
	inc  bc                                          ; $50b4: $03
	dec  bc                                          ; $50b5: $0b
	dec  bc                                          ; $50b6: $0b
	dec  bc                                          ; $50b7: $0b
	inc  b                                           ; $50b8: $04
	inc  b                                           ; $50b9: $04
	inc  b                                           ; $50ba: $04
	inc  b                                           ; $50bb: $04
	inc  b                                           ; $50bc: $04
	inc  b                                           ; $50bd: $04
	inc  b                                           ; $50be: $04
	inc  bc                                          ; $50bf: $03
	inc  bc                                          ; $50c0: $03
	inc  bc                                          ; $50c1: $03
	inc  bc                                          ; $50c2: $03
	inc  bc                                          ; $50c3: $03
	dec  b                                           ; $50c4: $05
	dec  b                                           ; $50c5: $05
	inc  b                                           ; $50c6: $04
	inc  b                                           ; $50c7: $04
	dec  bc                                          ; $50c8: $0b
	dec  bc                                          ; $50c9: $0b
	dec  bc                                          ; $50ca: $0b
	dec  bc                                          ; $50cb: $0b
	inc  b                                           ; $50cc: $04
	inc  b                                           ; $50cd: $04
	inc  b                                           ; $50ce: $04
	inc  b                                           ; $50cf: $04
	inc  b                                           ; $50d0: $04
	inc  b                                           ; $50d1: $04
	inc  bc                                          ; $50d2: $03
	inc  bc                                          ; $50d3: $03
	inc  bc                                          ; $50d4: $03
	inc  bc                                          ; $50d5: $03
	inc  bc                                          ; $50d6: $03
	inc  bc                                          ; $50d7: $03
	dec  b                                           ; $50d8: $05
	dec  b                                           ; $50d9: $05
	inc  b                                           ; $50da: $04
	inc  b                                           ; $50db: $04
	inc  c                                           ; $50dc: $0c
	dec  bc                                          ; $50dd: $0b
	dec  bc                                          ; $50de: $0b
	dec  bc                                          ; $50df: $0b
	inc  b                                           ; $50e0: $04
	inc  b                                           ; $50e1: $04
	inc  b                                           ; $50e2: $04
	inc  b                                           ; $50e3: $04
	inc  b                                           ; $50e4: $04
	inc  b                                           ; $50e5: $04
	inc  bc                                          ; $50e6: $03
	inc  bc                                          ; $50e7: $03
	inc  bc                                          ; $50e8: $03
	inc  b                                           ; $50e9: $04
	inc  bc                                          ; $50ea: $03
	inc  bc                                          ; $50eb: $03
	dec  b                                           ; $50ec: $05
	dec  b                                           ; $50ed: $05
	inc  b                                           ; $50ee: $04
	inc  b                                           ; $50ef: $04
	inc  c                                           ; $50f0: $0c
	dec  bc                                          ; $50f1: $0b
	dec  bc                                          ; $50f2: $0b
	dec  bc                                          ; $50f3: $0b
	inc  bc                                          ; $50f4: $03
	inc  b                                           ; $50f5: $04
	inc  b                                           ; $50f6: $04
	inc  b                                           ; $50f7: $04
	inc  b                                           ; $50f8: $04
	inc  b                                           ; $50f9: $04
	inc  bc                                          ; $50fa: $03
	inc  bc                                          ; $50fb: $03
	inc  bc                                          ; $50fc: $03
	inc  b                                           ; $50fd: $04
	inc  bc                                          ; $50fe: $03
	inc  bc                                          ; $50ff: $03
	inc  bc                                          ; $5100: $03
	dec  bc                                          ; $5101: $0b
	dec  bc                                          ; $5102: $0b
	inc  b                                           ; $5103: $04
	inc  c                                           ; $5104: $0c
	dec  bc                                          ; $5105: $0b
	dec  bc                                          ; $5106: $0b
	dec  bc                                          ; $5107: $0b
	dec  bc                                          ; $5108: $0b
	dec  bc                                          ; $5109: $0b
	dec  bc                                          ; $510a: $0b
	dec  bc                                          ; $510b: $0b
	inc  c                                           ; $510c: $0c
	inc  c                                           ; $510d: $0c
	dec  bc                                          ; $510e: $0b
	dec  bc                                          ; $510f: $0b
	dec  bc                                          ; $5110: $0b
	dec  bc                                          ; $5111: $0b
	dec  bc                                          ; $5112: $0b
	dec  bc                                          ; $5113: $0b
	dec  bc                                          ; $5114: $0b
	dec  bc                                          ; $5115: $0b
	dec  bc                                          ; $5116: $0b
	inc  b                                           ; $5117: $04
	inc  c                                           ; $5118: $0c
	dec  bc                                          ; $5119: $0b
	inc  bc                                          ; $511a: $03
	inc  bc                                          ; $511b: $03
	dec  bc                                          ; $511c: $0b
	dec  bc                                          ; $511d: $0b
	dec  bc                                          ; $511e: $0b
	dec  bc                                          ; $511f: $0b
	inc  c                                           ; $5120: $0c
	inc  c                                           ; $5121: $0c
	dec  bc                                          ; $5122: $0b
	dec  bc                                          ; $5123: $0b
	dec  bc                                          ; $5124: $0b
	dec  bc                                          ; $5125: $0b
	dec  bc                                          ; $5126: $0b
	dec  bc                                          ; $5127: $0b
	dec  bc                                          ; $5128: $0b
	dec  bc                                          ; $5129: $0b
	dec  bc                                          ; $512a: $0b
	inc  b                                           ; $512b: $04
	inc  b                                           ; $512c: $04
	dec  bc                                          ; $512d: $0b
	inc  bc                                          ; $512e: $03
	inc  bc                                          ; $512f: $03
	nop                                              ; $5130: $00
	ld   bc, $0302                                   ; $5131: $01 $02 $03
	inc  b                                           ; $5134: $04
	dec  b                                           ; $5135: $05
	ld   b, $07                                      ; $5136: $06 $07
	ld   [$0a09], sp                                 ; $5138: $08 $09 $0a
	dec  bc                                          ; $513b: $0b
	inc  c                                           ; $513c: $0c
	inc  c                                           ; $513d: $0c
	inc  c                                           ; $513e: $0c
	inc  c                                           ; $513f: $0c
	nop                                              ; $5140: $00
	ld   bc, $0302                                   ; $5141: $01 $02 $03
	db   $10                                         ; $5144: $10
	ld   de, $1312                                   ; $5145: $11 $12 $13
	inc  d                                           ; $5148: $14
	dec  d                                           ; $5149: $15
	ld   d, $17                                      ; $514a: $16 $17
	jr   @+$1b                                       ; $514c: $18 $19

	ld   a, [de]                                     ; $514e: $1a
	dec  de                                          ; $514f: $1b
	inc  e                                           ; $5150: $1c
	dec  e                                           ; $5151: $1d
	ld   e, $1f                                      ; $5152: $1e $1f
	db   $10                                         ; $5154: $10
	ld   de, $1312                                   ; $5155: $11 $12 $13
	jr   nz, @+$23                                   ; $5158: $20 $21

	ld   [hl+], a                                    ; $515a: $22
	inc  hl                                          ; $515b: $23
	inc  h                                           ; $515c: $24
	dec  h                                           ; $515d: $25
	ld   h, $27                                      ; $515e: $26 $27
	jr   z, jr_084_518b                              ; $5160: $28 $29

	ld   a, [hl+]                                    ; $5162: $2a
	dec  hl                                          ; $5163: $2b
	inc  l                                           ; $5164: $2c
	dec  l                                           ; $5165: $2d
	ld   l, $2f                                      ; $5166: $2e $2f
	jr   nz, jr_084_518b                             ; $5168: $20 $21

	ld   [hl+], a                                    ; $516a: $22
	inc  hl                                          ; $516b: $23
	jr   nc, jr_084_519f                             ; $516c: $30 $31

	ld   [hl-], a                                    ; $516e: $32
	inc  sp                                          ; $516f: $33
	inc  [hl]                                        ; $5170: $34
	dec  [hl]                                        ; $5171: $35
	ld   [hl], $37                                   ; $5172: $36 $37
	jr   c, jr_084_51af                              ; $5174: $38 $39

	ld   a, [hl-]                                    ; $5176: $3a
	dec  sp                                          ; $5177: $3b
	inc  a                                           ; $5178: $3c
	dec  a                                           ; $5179: $3d
	ld   a, $3f                                      ; $517a: $3e $3f
	jr   nc, jr_084_51af                             ; $517c: $30 $31

	ld   [hl-], a                                    ; $517e: $32
	inc  sp                                          ; $517f: $33
	ld   b, b                                        ; $5180: $40
	ld   b, c                                        ; $5181: $41
	ld   b, d                                        ; $5182: $42
	ld   b, e                                        ; $5183: $43
	ld   b, h                                        ; $5184: $44
	ld   b, l                                        ; $5185: $45
	ld   b, [hl]                                     ; $5186: $46
	ld   b, a                                        ; $5187: $47
	ld   c, b                                        ; $5188: $48
	ld   c, c                                        ; $5189: $49
	ld   c, d                                        ; $518a: $4a

jr_084_518b:
	ld   c, e                                        ; $518b: $4b
	ld   c, h                                        ; $518c: $4c
	ld   c, l                                        ; $518d: $4d
	ld   c, [hl]                                     ; $518e: $4e
	ld   b, b                                        ; $518f: $40
	ld   b, b                                        ; $5190: $40
	ld   b, c                                        ; $5191: $41
	ld   b, d                                        ; $5192: $42
	ld   b, e                                        ; $5193: $43
	ld   d, b                                        ; $5194: $50
	ld   d, c                                        ; $5195: $51
	ld   d, d                                        ; $5196: $52
	ld   d, e                                        ; $5197: $53
	ld   d, h                                        ; $5198: $54
	ld   d, l                                        ; $5199: $55
	ld   d, [hl]                                     ; $519a: $56
	ld   d, a                                        ; $519b: $57
	ld   e, b                                        ; $519c: $58
	ld   e, c                                        ; $519d: $59
	ld   e, d                                        ; $519e: $5a

jr_084_519f:
	ld   e, e                                        ; $519f: $5b
	ld   e, h                                        ; $51a0: $5c
	ld   e, l                                        ; $51a1: $5d
	ld   d, $5f                                      ; $51a2: $16 $5f
	ld   d, b                                        ; $51a4: $50
	ld   d, c                                        ; $51a5: $51
	ld   d, d                                        ; $51a6: $52
	ld   d, e                                        ; $51a7: $53
	ld   h, b                                        ; $51a8: $60
	ld   h, c                                        ; $51a9: $61
	ld   h, d                                        ; $51aa: $62
	ld   h, e                                        ; $51ab: $63
	ld   h, h                                        ; $51ac: $64
	ld   h, l                                        ; $51ad: $65
	ld   h, [hl]                                     ; $51ae: $66

jr_084_51af:
	ld   h, a                                        ; $51af: $67
	ld   l, b                                        ; $51b0: $68
	ld   l, c                                        ; $51b1: $69
	ld   l, d                                        ; $51b2: $6a
	ld   l, e                                        ; $51b3: $6b
	ld   d, $16                                      ; $51b4: $16 $16
	ld   l, [hl]                                     ; $51b6: $6e
	ld   l, a                                        ; $51b7: $6f
	ld   h, b                                        ; $51b8: $60
	ld   h, c                                        ; $51b9: $61
	ld   h, d                                        ; $51ba: $62
	ld   h, e                                        ; $51bb: $63
	ld   [hl], b                                     ; $51bc: $70
	ld   [hl], c                                     ; $51bd: $71
	ld   [hl], d                                     ; $51be: $72
	ld   [hl], e                                     ; $51bf: $73
	ld   [hl], h                                     ; $51c0: $74
	ld   [hl], l                                     ; $51c1: $75
	halt                                             ; $51c2: $76
	ld   [hl], a                                     ; $51c3: $77
	ld   a, b                                        ; $51c4: $78
	ld   a, c                                        ; $51c5: $79
	ld   d, $16                                      ; $51c6: $16 $16
	ld   d, $16                                      ; $51c8: $16 $16
	ld   d, $7f                                      ; $51ca: $16 $7f
	ld   [hl], b                                     ; $51cc: $70
	ld   [hl], c                                     ; $51cd: $71
	ld   [hl], d                                     ; $51ce: $72
	ld   [hl], e                                     ; $51cf: $73
	inc  b                                           ; $51d0: $04
	dec  b                                           ; $51d1: $05
	ld   b, $07                                      ; $51d2: $06 $07
	ld   [$0a09], sp                                 ; $51d4: $08 $09 $0a
	dec  bc                                          ; $51d7: $0b
	ld   d, $16                                      ; $51d8: $16 $16
	ld   d, $16                                      ; $51da: $16 $16
	ld   d, $16                                      ; $51dc: $16 $16
	ld   d, $7a                                      ; $51de: $16 $7a
	ld   a, e                                        ; $51e0: $7b
	ld   a, h                                        ; $51e1: $7c
	ld   a, l                                        ; $51e2: $7d
	ld   a, [hl]                                     ; $51e3: $7e
	inc  c                                           ; $51e4: $0c
	dec  c                                           ; $51e5: $0d
	ld   c, $0f                                      ; $51e6: $0e $0f
	inc  d                                           ; $51e8: $14
	dec  d                                           ; $51e9: $15
	ld   d, $16                                      ; $51ea: $16 $16
	ld   d, $16                                      ; $51ec: $16 $16
	ld   d, $16                                      ; $51ee: $16 $16
	ld   d, $16                                      ; $51f0: $16 $16
	ld   d, $16                                      ; $51f2: $16 $16
	ld   l, h                                        ; $51f4: $6c
	ld   l, l                                        ; $51f5: $6d
	ld   e, [hl]                                     ; $51f6: $5e
	ld   c, a                                        ; $51f7: $4f
	inc  b                                           ; $51f8: $04
	inc  b                                           ; $51f9: $04
	inc  b                                           ; $51fa: $04
	inc  b                                           ; $51fb: $04
	inc  b                                           ; $51fc: $04
	inc  b                                           ; $51fd: $04
	inc  b                                           ; $51fe: $04
	inc  b                                           ; $51ff: $04
	inc  b                                           ; $5200: $04
	inc  b                                           ; $5201: $04
	inc  b                                           ; $5202: $04
	dec  b                                           ; $5203: $05
	dec  b                                           ; $5204: $05
	dec  b                                           ; $5205: $05
	dec  b                                           ; $5206: $05
	dec  b                                           ; $5207: $05
	dec  c                                           ; $5208: $0d
	inc  c                                           ; $5209: $0c
	inc  c                                           ; $520a: $0c
	inc  c                                           ; $520b: $0c
	inc  b                                           ; $520c: $04
	inc  b                                           ; $520d: $04
	inc  b                                           ; $520e: $04
	inc  b                                           ; $520f: $04
	inc  b                                           ; $5210: $04
	inc  b                                           ; $5211: $04
	inc  b                                           ; $5212: $04
	inc  b                                           ; $5213: $04
	inc  b                                           ; $5214: $04
	inc  b                                           ; $5215: $04
	inc  b                                           ; $5216: $04
	dec  b                                           ; $5217: $05
	dec  b                                           ; $5218: $05
	dec  b                                           ; $5219: $05
	dec  b                                           ; $521a: $05
	dec  b                                           ; $521b: $05
	dec  c                                           ; $521c: $0d
	inc  c                                           ; $521d: $0c
	inc  c                                           ; $521e: $0c
	inc  c                                           ; $521f: $0c
	inc  b                                           ; $5220: $04
	inc  b                                           ; $5221: $04
	inc  b                                           ; $5222: $04
	inc  b                                           ; $5223: $04
	inc  b                                           ; $5224: $04
	inc  b                                           ; $5225: $04
	inc  b                                           ; $5226: $04
	inc  b                                           ; $5227: $04
	inc  b                                           ; $5228: $04
	inc  b                                           ; $5229: $04
	inc  b                                           ; $522a: $04
	inc  b                                           ; $522b: $04
	inc  b                                           ; $522c: $04
	inc  b                                           ; $522d: $04
	inc  b                                           ; $522e: $04
	inc  b                                           ; $522f: $04
	inc  c                                           ; $5230: $0c
	inc  c                                           ; $5231: $0c
	inc  c                                           ; $5232: $0c
	inc  c                                           ; $5233: $0c
	inc  b                                           ; $5234: $04
	inc  b                                           ; $5235: $04
	inc  b                                           ; $5236: $04
	inc  b                                           ; $5237: $04
	inc  b                                           ; $5238: $04
	inc  b                                           ; $5239: $04
	inc  b                                           ; $523a: $04
	inc  b                                           ; $523b: $04
	inc  b                                           ; $523c: $04
	inc  b                                           ; $523d: $04
	inc  b                                           ; $523e: $04
	inc  bc                                          ; $523f: $03
	inc  b                                           ; $5240: $04
	inc  b                                           ; $5241: $04
	inc  b                                           ; $5242: $04
	inc  b                                           ; $5243: $04
	inc  c                                           ; $5244: $0c
	inc  c                                           ; $5245: $0c
	inc  c                                           ; $5246: $0c
	inc  c                                           ; $5247: $0c
	inc  b                                           ; $5248: $04
	inc  b                                           ; $5249: $04
	inc  b                                           ; $524a: $04
	inc  b                                           ; $524b: $04
	inc  b                                           ; $524c: $04
	inc  b                                           ; $524d: $04
	inc  b                                           ; $524e: $04
	inc  b                                           ; $524f: $04
	inc  b                                           ; $5250: $04
	inc  b                                           ; $5251: $04
	inc  b                                           ; $5252: $04
	inc  bc                                          ; $5253: $03
	inc  bc                                          ; $5254: $03
	inc  bc                                          ; $5255: $03
	inc  bc                                          ; $5256: $03
	dec  bc                                          ; $5257: $0b
	dec  bc                                          ; $5258: $0b
	dec  bc                                          ; $5259: $0b
	dec  bc                                          ; $525a: $0b
	dec  bc                                          ; $525b: $0b
	inc  b                                           ; $525c: $04
	inc  b                                           ; $525d: $04
	inc  b                                           ; $525e: $04
	inc  b                                           ; $525f: $04
	inc  b                                           ; $5260: $04
	inc  b                                           ; $5261: $04
	inc  b                                           ; $5262: $04
	inc  b                                           ; $5263: $04
	inc  bc                                          ; $5264: $03
	inc  bc                                          ; $5265: $03
	inc  bc                                          ; $5266: $03
	inc  bc                                          ; $5267: $03
	inc  bc                                          ; $5268: $03
	inc  bc                                          ; $5269: $03
	dec  bc                                          ; $526a: $0b
	inc  bc                                          ; $526b: $03
	dec  bc                                          ; $526c: $0b
	dec  bc                                          ; $526d: $0b
	dec  bc                                          ; $526e: $0b
	dec  bc                                          ; $526f: $0b
	inc  b                                           ; $5270: $04
	inc  b                                           ; $5271: $04
	inc  b                                           ; $5272: $04
	inc  b                                           ; $5273: $04
	inc  b                                           ; $5274: $04
	inc  bc                                          ; $5275: $03
	inc  bc                                          ; $5276: $03
	inc  bc                                          ; $5277: $03
	inc  bc                                          ; $5278: $03
	inc  bc                                          ; $5279: $03
	inc  bc                                          ; $527a: $03
	inc  bc                                          ; $527b: $03
	dec  bc                                          ; $527c: $0b
	dec  bc                                          ; $527d: $0b
	inc  bc                                          ; $527e: $03
	inc  bc                                          ; $527f: $03
	dec  bc                                          ; $5280: $0b
	dec  bc                                          ; $5281: $0b
	dec  bc                                          ; $5282: $0b
	dec  bc                                          ; $5283: $0b
	inc  b                                           ; $5284: $04
	inc  b                                           ; $5285: $04
	inc  b                                           ; $5286: $04
	inc  bc                                          ; $5287: $03
	inc  bc                                          ; $5288: $03
	inc  bc                                          ; $5289: $03
	inc  bc                                          ; $528a: $03
	inc  bc                                          ; $528b: $03
	inc  bc                                          ; $528c: $03
	inc  bc                                          ; $528d: $03
	dec  bc                                          ; $528e: $0b
	dec  bc                                          ; $528f: $0b
	dec  bc                                          ; $5290: $0b
	dec  bc                                          ; $5291: $0b
	dec  bc                                          ; $5292: $0b
	inc  bc                                          ; $5293: $03
	dec  bc                                          ; $5294: $0b
	dec  bc                                          ; $5295: $0b
	dec  bc                                          ; $5296: $0b
	dec  bc                                          ; $5297: $0b
	dec  bc                                          ; $5298: $0b
	dec  bc                                          ; $5299: $0b
	dec  bc                                          ; $529a: $0b
	dec  bc                                          ; $529b: $0b
	dec  bc                                          ; $529c: $0b
	dec  bc                                          ; $529d: $0b
	dec  bc                                          ; $529e: $0b
	dec  bc                                          ; $529f: $0b
	dec  bc                                          ; $52a0: $0b
	dec  bc                                          ; $52a1: $0b
	dec  bc                                          ; $52a2: $0b
	dec  bc                                          ; $52a3: $0b
	dec  bc                                          ; $52a4: $0b
	dec  bc                                          ; $52a5: $0b
	dec  bc                                          ; $52a6: $0b
	inc  bc                                          ; $52a7: $03
	inc  bc                                          ; $52a8: $03
	inc  bc                                          ; $52a9: $03
	inc  bc                                          ; $52aa: $03
	inc  bc                                          ; $52ab: $03
	dec  bc                                          ; $52ac: $0b
	dec  bc                                          ; $52ad: $0b
	dec  bc                                          ; $52ae: $0b
	dec  bc                                          ; $52af: $0b
	dec  bc                                          ; $52b0: $0b
	dec  bc                                          ; $52b1: $0b
	dec  bc                                          ; $52b2: $0b
	dec  bc                                          ; $52b3: $0b
	dec  bc                                          ; $52b4: $0b
	dec  bc                                          ; $52b5: $0b
	dec  bc                                          ; $52b6: $0b
	dec  bc                                          ; $52b7: $0b
	dec  bc                                          ; $52b8: $0b
	dec  bc                                          ; $52b9: $0b
	dec  bc                                          ; $52ba: $0b
	dec  bc                                          ; $52bb: $0b
	inc  bc                                          ; $52bc: $03
	inc  bc                                          ; $52bd: $03
	inc  bc                                          ; $52be: $03
	inc  bc                                          ; $52bf: $03
	nop                                              ; $52c0: $00
	ld   bc, $0302                                   ; $52c1: $01 $02 $03
	inc  b                                           ; $52c4: $04
	dec  b                                           ; $52c5: $05
	ld   b, $07                                      ; $52c6: $06 $07
	ld   [$0a09], sp                                 ; $52c8: $08 $09 $0a
	dec  bc                                          ; $52cb: $0b
	inc  c                                           ; $52cc: $0c
	dec  c                                           ; $52cd: $0d
	ld   c, $0f                                      ; $52ce: $0e $0f
	nop                                              ; $52d0: $00
	ld   bc, $0302                                   ; $52d1: $01 $02 $03
	db   $10                                         ; $52d4: $10
	ld   de, $1312                                   ; $52d5: $11 $12 $13
	inc  d                                           ; $52d8: $14
	dec  d                                           ; $52d9: $15
	ld   d, $17                                      ; $52da: $16 $17
	jr   @+$1b                                       ; $52dc: $18 $19

	ld   a, [de]                                     ; $52de: $1a
	dec  de                                          ; $52df: $1b
	inc  e                                           ; $52e0: $1c
	dec  e                                           ; $52e1: $1d
	dec  d                                           ; $52e2: $15
	rra                                              ; $52e3: $1f
	db   $10                                         ; $52e4: $10
	ld   de, $1312                                   ; $52e5: $11 $12 $13
	db   $10                                         ; $52e8: $10
	ld   de, $2322                                   ; $52e9: $11 $22 $23
	inc  h                                           ; $52ec: $24
	dec  h                                           ; $52ed: $25
	ld   h, $27                                      ; $52ee: $26 $27
	jr   z, jr_084_531a                              ; $52f0: $28 $28

	jr   z, jr_084_531c                              ; $52f2: $28 $28

	inc  l                                           ; $52f4: $2c
	dec  l                                           ; $52f5: $2d
	ld   l, $2f                                      ; $52f6: $2e $2f
	jr   nz, jr_084_531b                             ; $52f8: $20 $21

	ld   [hl+], a                                    ; $52fa: $22
	inc  hl                                          ; $52fb: $23
	db   $10                                         ; $52fc: $10
	ld   de, $3332                                   ; $52fd: $11 $32 $33
	inc  [hl]                                        ; $5300: $34
	dec  [hl]                                        ; $5301: $35
	ld   [hl], $36                                   ; $5302: $36 $36
	ld   [hl], $36                                   ; $5304: $36 $36
	ld   [hl], $36                                   ; $5306: $36 $36
	ld   [hl], $36                                   ; $5308: $36 $36
	dec  [hl]                                        ; $530a: $35
	inc  [hl]                                        ; $530b: $34
	jr   nc, jr_084_533f                             ; $530c: $30 $31

	ld   [hl-], a                                    ; $530e: $32
	inc  sp                                          ; $530f: $33
	db   $10                                         ; $5310: $10
	ld   de, $4342                                   ; $5311: $11 $42 $43
	ld   b, h                                        ; $5314: $44
	ld   b, l                                        ; $5315: $45
	ld   b, l                                        ; $5316: $45
	ld   b, l                                        ; $5317: $45
	ld   b, l                                        ; $5318: $45
	ld   b, l                                        ; $5319: $45

jr_084_531a:
	ld   b, l                                        ; $531a: $45

jr_084_531b:
	ld   b, l                                        ; $531b: $45

jr_084_531c:
	ld   b, l                                        ; $531c: $45
	ld   b, l                                        ; $531d: $45
	ld   b, l                                        ; $531e: $45
	ld   b, h                                        ; $531f: $44
	ld   b, b                                        ; $5320: $40
	ld   b, c                                        ; $5321: $41
	ld   b, d                                        ; $5322: $42
	ld   b, e                                        ; $5323: $43
	db   $10                                         ; $5324: $10
	ld   de, $5352                                   ; $5325: $11 $52 $53
	ld   d, h                                        ; $5328: $54
	ld   d, h                                        ; $5329: $54
	ld   e, l                                        ; $532a: $5d
	ld   d, h                                        ; $532b: $54
	ld   d, h                                        ; $532c: $54
	ld   e, c                                        ; $532d: $59
	ld   e, d                                        ; $532e: $5a
	ld   d, h                                        ; $532f: $54
	ld   d, h                                        ; $5330: $54
	ld   e, l                                        ; $5331: $5d
	ld   d, h                                        ; $5332: $54
	ld   d, h                                        ; $5333: $54
	ld   d, b                                        ; $5334: $50
	ld   d, c                                        ; $5335: $51
	ld   d, d                                        ; $5336: $52
	ld   d, e                                        ; $5337: $53
	db   $10                                         ; $5338: $10
	ld   de, $6362                                   ; $5339: $11 $62 $63
	ld   h, h                                        ; $533c: $64
	ld   h, h                                        ; $533d: $64
	ld   l, l                                        ; $533e: $6d

jr_084_533f:
	ld   h, h                                        ; $533f: $64
	ld   h, h                                        ; $5340: $64
	ld   l, c                                        ; $5341: $69
	ld   l, d                                        ; $5342: $6a
	ld   h, h                                        ; $5343: $64
	ld   h, h                                        ; $5344: $64
	ld   l, l                                        ; $5345: $6d
	ld   h, h                                        ; $5346: $64
	ld   h, h                                        ; $5347: $64
	ld   h, b                                        ; $5348: $60
	dec  hl                                          ; $5349: $2b
	ld   e, $3f                                      ; $534a: $1e $3f
	db   $10                                         ; $534c: $10
	ld   de, $5666                                   ; $534d: $11 $66 $56
	ld   b, [hl]                                     ; $5350: $46
	ld   b, [hl]                                     ; $5351: $46
	ld   e, e                                        ; $5352: $5b
	ld   l, h                                        ; $5353: $6c
	ld   b, [hl]                                     ; $5354: $46
	ld   h, l                                        ; $5355: $65
	ld   l, e                                        ; $5356: $6b
	ld   b, [hl]                                     ; $5357: $46
	ld   l, h                                        ; $5358: $6c
	ld   e, e                                        ; $5359: $5b
	ld   e, h                                        ; $535a: $5c
	ld   b, [hl]                                     ; $535b: $46
	ld   l, [hl]                                     ; $535c: $6e
	ld   l, a                                        ; $535d: $6f
	ld   e, [hl]                                     ; $535e: $5e
	ld   e, a                                        ; $535f: $5f
	ld   d, a                                        ; $5360: $57
	ld   e, b                                        ; $5361: $58
	ld   h, a                                        ; $5362: $67
	ld   l, b                                        ; $5363: $68
	add  hl, hl                                      ; $5364: $29
	ld   a, [hl+]                                    ; $5365: $2a
	ld   a, [hl+]                                    ; $5366: $2a
	ld   a, [hl+]                                    ; $5367: $2a
	ld   a, [hl+]                                    ; $5368: $2a
	ld   a, [hl+]                                    ; $5369: $2a
	ld   a, [hl+]                                    ; $536a: $2a
	ld   a, [hl+]                                    ; $536b: $2a
	scf                                              ; $536c: $37
	jr   c, jr_084_53a8                              ; $536d: $38 $39

	ld   a, [hl-]                                    ; $536f: $3a
	dec  sp                                          ; $5370: $3b
	inc  a                                           ; $5371: $3c
	dec  a                                           ; $5372: $3d
	ld   a, $4f                                      ; $5373: $3e $4f
	ld   d, l                                        ; $5375: $55
	ld   h, b                                        ; $5376: $60
	ld   h, c                                        ; $5377: $61
	ld   d, b                                        ; $5378: $50
	ld   d, c                                        ; $5379: $51
	ld   b, b                                        ; $537a: $40
	ld   b, c                                        ; $537b: $41
	jr   nc, jr_084_53af                             ; $537c: $30 $31

	jr   nz, jr_084_53a1                             ; $537e: $20 $21

	ld   b, a                                        ; $5380: $47
	ld   c, b                                        ; $5381: $48
	ld   c, c                                        ; $5382: $49
	ld   c, d                                        ; $5383: $4a
	ld   c, e                                        ; $5384: $4b
	ld   c, h                                        ; $5385: $4c
	ld   c, l                                        ; $5386: $4d
	ld   c, [hl]                                     ; $5387: $4e
	inc  bc                                          ; $5388: $03
	inc  bc                                          ; $5389: $03
	inc  bc                                          ; $538a: $03
	inc  bc                                          ; $538b: $03
	inc  bc                                          ; $538c: $03
	inc  bc                                          ; $538d: $03
	inc  bc                                          ; $538e: $03
	inc  bc                                          ; $538f: $03
	inc  bc                                          ; $5390: $03
	inc  bc                                          ; $5391: $03
	inc  bc                                          ; $5392: $03
	inc  bc                                          ; $5393: $03
	inc  bc                                          ; $5394: $03
	inc  bc                                          ; $5395: $03
	inc  bc                                          ; $5396: $03
	inc  bc                                          ; $5397: $03
	dec  bc                                          ; $5398: $0b
	dec  bc                                          ; $5399: $0b
	dec  bc                                          ; $539a: $0b
	dec  bc                                          ; $539b: $0b
	inc  bc                                          ; $539c: $03
	inc  bc                                          ; $539d: $03
	inc  bc                                          ; $539e: $03
	inc  bc                                          ; $539f: $03
	inc  bc                                          ; $53a0: $03

jr_084_53a1:
	inc  bc                                          ; $53a1: $03
	inc  bc                                          ; $53a2: $03
	inc  bc                                          ; $53a3: $03
	inc  bc                                          ; $53a4: $03
	inc  bc                                          ; $53a5: $03
	inc  bc                                          ; $53a6: $03
	inc  bc                                          ; $53a7: $03

jr_084_53a8:
	inc  bc                                          ; $53a8: $03
	inc  bc                                          ; $53a9: $03
	inc  bc                                          ; $53aa: $03
	inc  bc                                          ; $53ab: $03
	dec  bc                                          ; $53ac: $0b
	dec  bc                                          ; $53ad: $0b
	dec  bc                                          ; $53ae: $0b

jr_084_53af:
	dec  bc                                          ; $53af: $0b
	inc  bc                                          ; $53b0: $03
	inc  bc                                          ; $53b1: $03
	inc  bc                                          ; $53b2: $03
	inc  bc                                          ; $53b3: $03
	inc  bc                                          ; $53b4: $03
	inc  bc                                          ; $53b5: $03
	inc  bc                                          ; $53b6: $03
	inc  bc                                          ; $53b7: $03
	inc  bc                                          ; $53b8: $03
	inc  bc                                          ; $53b9: $03
	inc  hl                                          ; $53ba: $23
	inc  hl                                          ; $53bb: $23
	inc  bc                                          ; $53bc: $03
	inc  bc                                          ; $53bd: $03
	inc  bc                                          ; $53be: $03
	inc  bc                                          ; $53bf: $03
	dec  bc                                          ; $53c0: $0b
	dec  bc                                          ; $53c1: $0b
	dec  bc                                          ; $53c2: $0b
	dec  bc                                          ; $53c3: $0b
	inc  bc                                          ; $53c4: $03
	inc  bc                                          ; $53c5: $03
	inc  bc                                          ; $53c6: $03
	inc  bc                                          ; $53c7: $03
	inc  bc                                          ; $53c8: $03
	inc  bc                                          ; $53c9: $03
	inc  bc                                          ; $53ca: $03
	inc  bc                                          ; $53cb: $03
	inc  bc                                          ; $53cc: $03
	inc  bc                                          ; $53cd: $03
	inc  bc                                          ; $53ce: $03
	inc  bc                                          ; $53cf: $03
	inc  bc                                          ; $53d0: $03
	inc  bc                                          ; $53d1: $03
	inc  bc                                          ; $53d2: $03
	inc  hl                                          ; $53d3: $23
	dec  bc                                          ; $53d4: $0b
	dec  bc                                          ; $53d5: $0b
	dec  bc                                          ; $53d6: $0b
	dec  bc                                          ; $53d7: $0b
	inc  bc                                          ; $53d8: $03
	inc  bc                                          ; $53d9: $03
	inc  bc                                          ; $53da: $03
	inc  bc                                          ; $53db: $03
	inc  bc                                          ; $53dc: $03
	inc  bc                                          ; $53dd: $03
	inc  bc                                          ; $53de: $03
	inc  bc                                          ; $53df: $03
	inc  bc                                          ; $53e0: $03
	inc  bc                                          ; $53e1: $03
	inc  bc                                          ; $53e2: $03
	inc  bc                                          ; $53e3: $03
	inc  bc                                          ; $53e4: $03
	inc  bc                                          ; $53e5: $03
	inc  bc                                          ; $53e6: $03
	inc  hl                                          ; $53e7: $23
	dec  bc                                          ; $53e8: $0b
	dec  bc                                          ; $53e9: $0b
	dec  bc                                          ; $53ea: $0b
	dec  bc                                          ; $53eb: $0b
	inc  bc                                          ; $53ec: $03
	inc  bc                                          ; $53ed: $03
	inc  bc                                          ; $53ee: $03
	inc  bc                                          ; $53ef: $03
	inc  bc                                          ; $53f0: $03
	inc  bc                                          ; $53f1: $03
	inc  hl                                          ; $53f2: $23
	inc  bc                                          ; $53f3: $03
	inc  bc                                          ; $53f4: $03
	inc  bc                                          ; $53f5: $03
	inc  bc                                          ; $53f6: $03
	inc  bc                                          ; $53f7: $03
	inc  bc                                          ; $53f8: $03
	inc  bc                                          ; $53f9: $03
	inc  bc                                          ; $53fa: $03
	inc  bc                                          ; $53fb: $03
	dec  bc                                          ; $53fc: $0b
	dec  bc                                          ; $53fd: $0b
	dec  bc                                          ; $53fe: $0b
	dec  bc                                          ; $53ff: $0b
	inc  bc                                          ; $5400: $03
	inc  bc                                          ; $5401: $03
	inc  bc                                          ; $5402: $03
	inc  bc                                          ; $5403: $03
	inc  bc                                          ; $5404: $03
	inc  bc                                          ; $5405: $03
	inc  hl                                          ; $5406: $23
	inc  bc                                          ; $5407: $03
	inc  bc                                          ; $5408: $03
	inc  b                                           ; $5409: $04
	inc  b                                           ; $540a: $04
	inc  bc                                          ; $540b: $03
	inc  bc                                          ; $540c: $03
	inc  bc                                          ; $540d: $03
	inc  bc                                          ; $540e: $03
	inc  bc                                          ; $540f: $03
	dec  bc                                          ; $5410: $0b
	inc  bc                                          ; $5411: $03
	inc  bc                                          ; $5412: $03
	inc  bc                                          ; $5413: $03
	inc  bc                                          ; $5414: $03
	inc  bc                                          ; $5415: $03
	inc  bc                                          ; $5416: $03
	inc  bc                                          ; $5417: $03
	inc  bc                                          ; $5418: $03
	inc  bc                                          ; $5419: $03
	inc  hl                                          ; $541a: $23
	inc  hl                                          ; $541b: $23
	inc  bc                                          ; $541c: $03
	inc  bc                                          ; $541d: $03
	inc  bc                                          ; $541e: $03
	inc  bc                                          ; $541f: $03
	inc  bc                                          ; $5420: $03
	inc  bc                                          ; $5421: $03
	inc  bc                                          ; $5422: $03
	inc  bc                                          ; $5423: $03
	inc  bc                                          ; $5424: $03
	inc  bc                                          ; $5425: $03
	inc  bc                                          ; $5426: $03
	inc  bc                                          ; $5427: $03
	inc  bc                                          ; $5428: $03
	inc  bc                                          ; $5429: $03
	inc  bc                                          ; $542a: $03
	inc  bc                                          ; $542b: $03
	inc  bc                                          ; $542c: $03
	inc  bc                                          ; $542d: $03
	inc  bc                                          ; $542e: $03
	inc  bc                                          ; $542f: $03
	inc  bc                                          ; $5430: $03
	inc  bc                                          ; $5431: $03
	inc  bc                                          ; $5432: $03
	inc  bc                                          ; $5433: $03
	inc  bc                                          ; $5434: $03
	inc  bc                                          ; $5435: $03
	inc  bc                                          ; $5436: $03
	inc  bc                                          ; $5437: $03
	inc  bc                                          ; $5438: $03
	inc  bc                                          ; $5439: $03
	inc  bc                                          ; $543a: $03
	inc  bc                                          ; $543b: $03
	dec  b                                           ; $543c: $05
	dec  b                                           ; $543d: $05
	dec  b                                           ; $543e: $05
	dec  b                                           ; $543f: $05
	dec  b                                           ; $5440: $05
	dec  b                                           ; $5441: $05
	dec  b                                           ; $5442: $05
	dec  b                                           ; $5443: $05
	dec  b                                           ; $5444: $05
	dec  b                                           ; $5445: $05
	dec  b                                           ; $5446: $05
	dec  b                                           ; $5447: $05
	dec  b                                           ; $5448: $05
	dec  b                                           ; $5449: $05
	dec  b                                           ; $544a: $05
	dec  b                                           ; $544b: $05
	dec  b                                           ; $544c: $05
	dec  b                                           ; $544d: $05
	dec  b                                           ; $544e: $05
	dec  b                                           ; $544f: $05
	nop                                              ; $5450: $00
	ld   bc, $0302                                   ; $5451: $01 $02 $03
	inc  b                                           ; $5454: $04
	dec  b                                           ; $5455: $05
	ld   b, $06                                      ; $5456: $06 $06
	ld   [$0a09], sp                                 ; $5458: $08 $09 $0a
	dec  bc                                          ; $545b: $0b
	ld   b, $06                                      ; $545c: $06 $06
	ld   c, $0f                                      ; $545e: $0e $0f
	jr   nz, jr_084_5483                             ; $5460: $20 $21

	ld   [hl+], a                                    ; $5462: $22
	inc  hl                                          ; $5463: $23
	db   $10                                         ; $5464: $10
	ld   de, $1312                                   ; $5465: $11 $12 $13
	inc  d                                           ; $5468: $14
	dec  d                                           ; $5469: $15
	ld   d, $17                                      ; $546a: $16 $17
	jr   @+$1b                                       ; $546c: $18 $19

	ld   a, [de]                                     ; $546e: $1a
	dec  de                                          ; $546f: $1b
	inc  e                                           ; $5470: $1c
	dec  e                                           ; $5471: $1d
	ld   e, $1f                                      ; $5472: $1e $1f
	jr   nc, jr_084_54a7                             ; $5474: $30 $31

	ld   [hl-], a                                    ; $5476: $32
	inc  sp                                          ; $5477: $33
	jr   nz, @+$23                                   ; $5478: $20 $21

	ld   [hl+], a                                    ; $547a: $22
	inc  hl                                          ; $547b: $23
	inc  h                                           ; $547c: $24
	dec  h                                           ; $547d: $25
	ld   h, $27                                      ; $547e: $26 $27
	jr   z, jr_084_54ab                              ; $5480: $28 $29

	ld   a, [hl+]                                    ; $5482: $2a

jr_084_5483:
	dec  hl                                          ; $5483: $2b
	inc  h                                           ; $5484: $24
	dec  l                                           ; $5485: $2d
	ld   l, $2f                                      ; $5486: $2e $2f
	inc  h                                           ; $5488: $24
	dec  h                                           ; $5489: $25
	ld   h, $27                                      ; $548a: $26 $27
	jr   nc, jr_084_54bf                             ; $548c: $30 $31

	ld   [hl-], a                                    ; $548e: $32
	inc  sp                                          ; $548f: $33
	inc  [hl]                                        ; $5490: $34
	dec  [hl]                                        ; $5491: $35
	ld   [hl], $37                                   ; $5492: $36 $37
	jr   c, jr_084_54cf                              ; $5494: $38 $39

	ld   a, [hl-]                                    ; $5496: $3a
	dec  sp                                          ; $5497: $3b
	inc  a                                           ; $5498: $3c
	dec  a                                           ; $5499: $3d
	ld   a, $3f                                      ; $549a: $3e $3f
	inc  [hl]                                        ; $549c: $34
	dec  [hl]                                        ; $549d: $35
	ld   [hl], $37                                   ; $549e: $36 $37
	ld   b, b                                        ; $54a0: $40
	ld   b, c                                        ; $54a1: $41
	ld   b, d                                        ; $54a2: $42
	ld   b, e                                        ; $54a3: $43
	ld   b, h                                        ; $54a4: $44
	ld   b, l                                        ; $54a5: $45
	ld   b, [hl]                                     ; $54a6: $46

jr_084_54a7:
	ld   b, a                                        ; $54a7: $47
	ld   c, b                                        ; $54a8: $48
	ld   c, c                                        ; $54a9: $49
	ld   c, d                                        ; $54aa: $4a

jr_084_54ab:
	ld   c, e                                        ; $54ab: $4b
	ld   c, h                                        ; $54ac: $4c
	ld   c, l                                        ; $54ad: $4d
	ld   c, [hl]                                     ; $54ae: $4e
	ld   c, a                                        ; $54af: $4f
	jr   z, @+$2b                                    ; $54b0: $28 $29

	ld   a, [hl+]                                    ; $54b2: $2a
	dec  hl                                          ; $54b3: $2b
	ld   d, b                                        ; $54b4: $50
	ld   d, c                                        ; $54b5: $51
	ld   d, d                                        ; $54b6: $52
	ld   d, e                                        ; $54b7: $53
	ld   d, h                                        ; $54b8: $54
	ld   d, l                                        ; $54b9: $55
	ld   d, [hl]                                     ; $54ba: $56
	ld   d, a                                        ; $54bb: $57
	ld   e, b                                        ; $54bc: $58
	ld   e, c                                        ; $54bd: $59
	ld   e, d                                        ; $54be: $5a

jr_084_54bf:
	ld   e, e                                        ; $54bf: $5b
	ld   e, h                                        ; $54c0: $5c
	ld   e, l                                        ; $54c1: $5d
	ld   e, [hl]                                     ; $54c2: $5e
	ld   e, a                                        ; $54c3: $5f
	jr   c, @+$3b                                    ; $54c4: $38 $39

	ld   a, [hl-]                                    ; $54c6: $3a
	dec  sp                                          ; $54c7: $3b
	ld   h, b                                        ; $54c8: $60
	ld   h, c                                        ; $54c9: $61
	ld   h, d                                        ; $54ca: $62
	ld   h, e                                        ; $54cb: $63
	ld   h, h                                        ; $54cc: $64
	ld   h, l                                        ; $54cd: $65
	ld   h, [hl]                                     ; $54ce: $66

jr_084_54cf:
	ld   h, a                                        ; $54cf: $67
	ld   l, b                                        ; $54d0: $68
	ld   l, c                                        ; $54d1: $69
	ld   l, d                                        ; $54d2: $6a
	ld   l, e                                        ; $54d3: $6b
	ld   l, h                                        ; $54d4: $6c
	ld   l, l                                        ; $54d5: $6d
	ld   l, [hl]                                     ; $54d6: $6e
	ld   l, a                                        ; $54d7: $6f
	inc  l                                           ; $54d8: $2c
	dec  l                                           ; $54d9: $2d
	ld   l, $2f                                      ; $54da: $2e $2f
	ld   [hl], b                                     ; $54dc: $70
	ld   [hl], c                                     ; $54dd: $71
	ld   [hl], d                                     ; $54de: $72
	ld   [hl], e                                     ; $54df: $73
	ld   [hl], h                                     ; $54e0: $74
	ld   [hl], l                                     ; $54e1: $75
	halt                                             ; $54e2: $76
	ld   [hl], a                                     ; $54e3: $77
	ld   a, b                                        ; $54e4: $78
	ld   a, c                                        ; $54e5: $79
	ld   a, d                                        ; $54e6: $7a
	ld   a, e                                        ; $54e7: $7b
	ld   a, h                                        ; $54e8: $7c
	ld   a, l                                        ; $54e9: $7d
	ld   a, [hl]                                     ; $54ea: $7e
	ld   a, a                                        ; $54eb: $7f
	inc  a                                           ; $54ec: $3c
	dec  a                                           ; $54ed: $3d
	ld   a, $3f                                      ; $54ee: $3e $3f
	nop                                              ; $54f0: $00
	ld   bc, $0302                                   ; $54f1: $01 $02 $03
	inc  b                                           ; $54f4: $04
	dec  b                                           ; $54f5: $05
	ld   b, $07                                      ; $54f6: $06 $07
	ld   [$0a09], sp                                 ; $54f8: $08 $09 $0a
	dec  bc                                          ; $54fb: $0b
	inc  c                                           ; $54fc: $0c
	dec  c                                           ; $54fd: $0d
	ld   c, $0f                                      ; $54fe: $0e $0f
	ld   b, b                                        ; $5500: $40
	ld   b, c                                        ; $5501: $41
	ld   b, d                                        ; $5502: $42
	ld   b, e                                        ; $5503: $43
	db   $10                                         ; $5504: $10
	ld   de, $1312                                   ; $5505: $11 $12 $13
	inc  d                                           ; $5508: $14
	dec  d                                           ; $5509: $15
	ld   d, $17                                      ; $550a: $16 $17
	jr   jr_084_5527                                 ; $550c: $18 $19

	ld   a, [de]                                     ; $550e: $1a
	dec  de                                          ; $550f: $1b
	inc  e                                           ; $5510: $1c
	dec  e                                           ; $5511: $1d
	ld   e, $1f                                      ; $5512: $1e $1f
	inc  l                                           ; $5514: $2c
	dec  c                                           ; $5515: $0d
	inc  c                                           ; $5516: $0c
	rlca                                             ; $5517: $07
	inc  b                                           ; $5518: $04
	inc  b                                           ; $5519: $04
	inc  b                                           ; $551a: $04
	inc  b                                           ; $551b: $04
	inc  b                                           ; $551c: $04
	inc  b                                           ; $551d: $04
	inc  b                                           ; $551e: $04
	inc  b                                           ; $551f: $04
	inc  b                                           ; $5520: $04
	inc  b                                           ; $5521: $04
	inc  b                                           ; $5522: $04
	inc  b                                           ; $5523: $04
	inc  b                                           ; $5524: $04
	inc  b                                           ; $5525: $04
	inc  b                                           ; $5526: $04

jr_084_5527:
	inc  b                                           ; $5527: $04
	inc  c                                           ; $5528: $0c
	dec  bc                                          ; $5529: $0b
	dec  bc                                          ; $552a: $0b
	dec  bc                                          ; $552b: $0b
	inc  b                                           ; $552c: $04
	inc  bc                                          ; $552d: $03
	inc  b                                           ; $552e: $04
	inc  b                                           ; $552f: $04
	inc  b                                           ; $5530: $04
	inc  b                                           ; $5531: $04
	inc  b                                           ; $5532: $04
	inc  b                                           ; $5533: $04
	inc  b                                           ; $5534: $04
	inc  b                                           ; $5535: $04
	inc  b                                           ; $5536: $04
	inc  b                                           ; $5537: $04
	inc  b                                           ; $5538: $04
	inc  b                                           ; $5539: $04
	inc  b                                           ; $553a: $04
	inc  b                                           ; $553b: $04
	dec  bc                                          ; $553c: $0b
	dec  bc                                          ; $553d: $0b
	dec  bc                                          ; $553e: $0b
	dec  bc                                          ; $553f: $0b
	inc  bc                                          ; $5540: $03
	inc  bc                                          ; $5541: $03
	inc  bc                                          ; $5542: $03
	inc  bc                                          ; $5543: $03
	inc  bc                                          ; $5544: $03
	inc  b                                           ; $5545: $04
	inc  b                                           ; $5546: $04
	inc  b                                           ; $5547: $04
	inc  b                                           ; $5548: $04
	inc  bc                                          ; $5549: $03
	inc  bc                                          ; $554a: $03
	inc  bc                                          ; $554b: $03
	inc  bc                                          ; $554c: $03
	inc  bc                                          ; $554d: $03
	inc  bc                                          ; $554e: $03
	inc  bc                                          ; $554f: $03
	dec  bc                                          ; $5550: $0b
	dec  bc                                          ; $5551: $0b
	dec  bc                                          ; $5552: $0b
	dec  bc                                          ; $5553: $0b
	inc  bc                                          ; $5554: $03
	inc  bc                                          ; $5555: $03
	inc  bc                                          ; $5556: $03
	inc  bc                                          ; $5557: $03
	inc  bc                                          ; $5558: $03
	inc  bc                                          ; $5559: $03
	inc  bc                                          ; $555a: $03
	inc  bc                                          ; $555b: $03
	inc  bc                                          ; $555c: $03
	inc  bc                                          ; $555d: $03
	inc  bc                                          ; $555e: $03
	inc  b                                           ; $555f: $04
	inc  bc                                          ; $5560: $03
	inc  bc                                          ; $5561: $03
	inc  bc                                          ; $5562: $03
	inc  bc                                          ; $5563: $03
	dec  bc                                          ; $5564: $0b
	dec  bc                                          ; $5565: $0b
	dec  bc                                          ; $5566: $0b
	dec  bc                                          ; $5567: $0b
	inc  bc                                          ; $5568: $03
	inc  bc                                          ; $5569: $03
	inc  bc                                          ; $556a: $03
	inc  bc                                          ; $556b: $03
	inc  bc                                          ; $556c: $03
	inc  bc                                          ; $556d: $03
	inc  bc                                          ; $556e: $03
	inc  bc                                          ; $556f: $03
	inc  bc                                          ; $5570: $03
	inc  bc                                          ; $5571: $03
	inc  bc                                          ; $5572: $03
	inc  bc                                          ; $5573: $03
	inc  bc                                          ; $5574: $03
	inc  bc                                          ; $5575: $03
	inc  bc                                          ; $5576: $03
	inc  bc                                          ; $5577: $03
	dec  bc                                          ; $5578: $0b
	dec  bc                                          ; $5579: $0b
	dec  bc                                          ; $557a: $0b
	dec  bc                                          ; $557b: $0b
	inc  bc                                          ; $557c: $03
	inc  bc                                          ; $557d: $03
	inc  bc                                          ; $557e: $03
	inc  bc                                          ; $557f: $03
	inc  bc                                          ; $5580: $03
	inc  bc                                          ; $5581: $03
	inc  bc                                          ; $5582: $03
	inc  bc                                          ; $5583: $03
	inc  bc                                          ; $5584: $03
	inc  bc                                          ; $5585: $03
	inc  bc                                          ; $5586: $03
	inc  bc                                          ; $5587: $03
	inc  bc                                          ; $5588: $03
	inc  bc                                          ; $5589: $03
	inc  bc                                          ; $558a: $03
	inc  bc                                          ; $558b: $03
	dec  bc                                          ; $558c: $0b
	dec  bc                                          ; $558d: $0b
	dec  bc                                          ; $558e: $0b
	dec  bc                                          ; $558f: $0b
	inc  bc                                          ; $5590: $03
	inc  bc                                          ; $5591: $03
	inc  bc                                          ; $5592: $03
	inc  bc                                          ; $5593: $03
	inc  bc                                          ; $5594: $03
	inc  bc                                          ; $5595: $03
	inc  bc                                          ; $5596: $03
	inc  bc                                          ; $5597: $03
	inc  bc                                          ; $5598: $03
	inc  bc                                          ; $5599: $03
	inc  bc                                          ; $559a: $03
	inc  bc                                          ; $559b: $03
	inc  bc                                          ; $559c: $03
	inc  bc                                          ; $559d: $03
	inc  bc                                          ; $559e: $03
	inc  bc                                          ; $559f: $03
	dec  bc                                          ; $55a0: $0b
	dec  bc                                          ; $55a1: $0b
	dec  bc                                          ; $55a2: $0b
	dec  bc                                          ; $55a3: $0b
	inc  bc                                          ; $55a4: $03
	inc  bc                                          ; $55a5: $03
	inc  bc                                          ; $55a6: $03
	inc  bc                                          ; $55a7: $03
	inc  bc                                          ; $55a8: $03
	inc  bc                                          ; $55a9: $03
	inc  bc                                          ; $55aa: $03
	inc  bc                                          ; $55ab: $03
	inc  bc                                          ; $55ac: $03
	inc  bc                                          ; $55ad: $03
	inc  bc                                          ; $55ae: $03
	inc  bc                                          ; $55af: $03
	inc  bc                                          ; $55b0: $03
	inc  bc                                          ; $55b1: $03
	inc  bc                                          ; $55b2: $03
	inc  bc                                          ; $55b3: $03
	dec  bc                                          ; $55b4: $0b
	dec  bc                                          ; $55b5: $0b
	dec  bc                                          ; $55b6: $0b
	dec  bc                                          ; $55b7: $0b
	dec  bc                                          ; $55b8: $0b
	dec  bc                                          ; $55b9: $0b
	dec  bc                                          ; $55ba: $0b
	dec  bc                                          ; $55bb: $0b
	dec  bc                                          ; $55bc: $0b
	dec  bc                                          ; $55bd: $0b
	dec  bc                                          ; $55be: $0b
	dec  bc                                          ; $55bf: $0b
	dec  bc                                          ; $55c0: $0b
	dec  bc                                          ; $55c1: $0b
	dec  bc                                          ; $55c2: $0b
	dec  bc                                          ; $55c3: $0b
	dec  bc                                          ; $55c4: $0b
	dec  bc                                          ; $55c5: $0b
	dec  bc                                          ; $55c6: $0b
	dec  bc                                          ; $55c7: $0b
	dec  bc                                          ; $55c8: $0b
	dec  bc                                          ; $55c9: $0b
	dec  bc                                          ; $55ca: $0b
	dec  bc                                          ; $55cb: $0b
	dec  bc                                          ; $55cc: $0b
	dec  bc                                          ; $55cd: $0b
	dec  bc                                          ; $55ce: $0b
	dec  bc                                          ; $55cf: $0b
	dec  bc                                          ; $55d0: $0b
	dec  bc                                          ; $55d1: $0b
	dec  bc                                          ; $55d2: $0b
	dec  bc                                          ; $55d3: $0b
	dec  bc                                          ; $55d4: $0b
	dec  bc                                          ; $55d5: $0b
	dec  bc                                          ; $55d6: $0b
	dec  bc                                          ; $55d7: $0b
	dec  bc                                          ; $55d8: $0b
	dec  bc                                          ; $55d9: $0b
	dec  bc                                          ; $55da: $0b
	dec  bc                                          ; $55db: $0b
	inc  bc                                          ; $55dc: $03
	inc  bc                                          ; $55dd: $03
	inc  bc                                          ; $55de: $03
	inc  bc                                          ; $55df: $03
	nop                                              ; $55e0: $00
	ld   bc, $0302                                   ; $55e1: $01 $02 $03
	inc  b                                           ; $55e4: $04
	dec  b                                           ; $55e5: $05
	ld   b, $07                                      ; $55e6: $06 $07
	ld   [$0a09], sp                                 ; $55e8: $08 $09 $0a
	dec  bc                                          ; $55eb: $0b
	dec  e                                           ; $55ec: $1d
	dec  e                                           ; $55ed: $1d
	dec  e                                           ; $55ee: $1d
	dec  e                                           ; $55ef: $1d
	dec  e                                           ; $55f0: $1d
	dec  e                                           ; $55f1: $1d
	dec  e                                           ; $55f2: $1d
	inc  bc                                          ; $55f3: $03
	db   $10                                         ; $55f4: $10
	ld   de, $1312                                   ; $55f5: $11 $12 $13
	inc  d                                           ; $55f8: $14
	dec  d                                           ; $55f9: $15
	ld   d, $17                                      ; $55fa: $16 $17
	jr   jr_084_5617                                 ; $55fc: $18 $19

	ld   a, [de]                                     ; $55fe: $1a
	dec  de                                          ; $55ff: $1b
	inc  e                                           ; $5600: $1c
	dec  e                                           ; $5601: $1d
	ld   e, $1f                                      ; $5602: $1e $1f
	db   $10                                         ; $5604: $10
	ld   de, $1312                                   ; $5605: $11 $12 $13
	jr   nz, @+$23                                   ; $5608: $20 $21

	ld   [hl+], a                                    ; $560a: $22
	inc  hl                                          ; $560b: $23
	inc  h                                           ; $560c: $24
	dec  h                                           ; $560d: $25
	ld   h, $27                                      ; $560e: $26 $27
	jr   z, jr_084_563b                              ; $5610: $28 $29

	ld   a, [hl+]                                    ; $5612: $2a
	dec  hl                                          ; $5613: $2b
	inc  l                                           ; $5614: $2c
	ld   e, $2e                                      ; $5615: $1e $2e

jr_084_5617:
	cpl                                              ; $5617: $2f
	jr   nz, jr_084_563b                             ; $5618: $20 $21

	ld   [hl+], a                                    ; $561a: $22
	inc  hl                                          ; $561b: $23
	jr   nc, jr_084_564f                             ; $561c: $30 $31

	ld   [hl-], a                                    ; $561e: $32
	inc  sp                                          ; $561f: $33
	inc  [hl]                                        ; $5620: $34
	dec  [hl]                                        ; $5621: $35
	ld   [hl], $37                                   ; $5622: $36 $37
	jr   c, jr_084_565f                              ; $5624: $38 $39

	ld   a, [hl-]                                    ; $5626: $3a
	dec  sp                                          ; $5627: $3b
	ld   e, $3d                                      ; $5628: $1e $3d
	ld   a, $3f                                      ; $562a: $3e $3f
	jr   nc, jr_084_565f                             ; $562c: $30 $31

	ld   [hl-], a                                    ; $562e: $32
	inc  sp                                          ; $562f: $33
	ld   b, b                                        ; $5630: $40
	ld   b, c                                        ; $5631: $41
	ld   b, d                                        ; $5632: $42
	ld   b, e                                        ; $5633: $43
	ld   b, h                                        ; $5634: $44
	ld   b, l                                        ; $5635: $45
	ld   b, [hl]                                     ; $5636: $46
	inc  h                                           ; $5637: $24
	ld   c, b                                        ; $5638: $48
	ld   c, c                                        ; $5639: $49
	ld   c, d                                        ; $563a: $4a

jr_084_563b:
	ld   e, $1e                                      ; $563b: $1e $1e
	ld   c, l                                        ; $563d: $4d
	ld   c, [hl]                                     ; $563e: $4e
	ld   c, a                                        ; $563f: $4f
	ld   b, b                                        ; $5640: $40
	ld   b, c                                        ; $5641: $41
	ld   b, d                                        ; $5642: $42
	ld   b, e                                        ; $5643: $43
	rra                                              ; $5644: $1f
	ld   d, c                                        ; $5645: $51
	ld   d, d                                        ; $5646: $52
	ld   d, e                                        ; $5647: $53
	ld   d, h                                        ; $5648: $54
	ld   d, l                                        ; $5649: $55
	ld   d, [hl]                                     ; $564a: $56
	ld   d, a                                        ; $564b: $57
	ld   e, b                                        ; $564c: $58
	ld   e, c                                        ; $564d: $59
	ld   e, d                                        ; $564e: $5a

jr_084_564f:
	ld   e, e                                        ; $564f: $5b
	ld   e, h                                        ; $5650: $5c
	ld   e, l                                        ; $5651: $5d
	ld   e, [hl]                                     ; $5652: $5e
	ld   e, a                                        ; $5653: $5f
	ld   d, b                                        ; $5654: $50
	ld   d, c                                        ; $5655: $51
	ld   d, d                                        ; $5656: $52
	ld   d, e                                        ; $5657: $53
	rra                                              ; $5658: $1f
	inc  h                                           ; $5659: $24
	ld   h, d                                        ; $565a: $62
	ld   h, e                                        ; $565b: $63
	ld   h, h                                        ; $565c: $64
	ld   h, l                                        ; $565d: $65
	inc  h                                           ; $565e: $24

jr_084_565f:
	ld   h, a                                        ; $565f: $67
	ld   l, b                                        ; $5660: $68
	ld   l, c                                        ; $5661: $69
	ld   l, d                                        ; $5662: $6a
	ld   l, e                                        ; $5663: $6b
	ld   l, h                                        ; $5664: $6c
	ld   e, $1e                                      ; $5665: $1e $1e
	ld   l, a                                        ; $5667: $6f
	ld   h, b                                        ; $5668: $60
	ld   h, c                                        ; $5669: $61
	ld   h, d                                        ; $566a: $62
	ld   h, e                                        ; $566b: $63
	ld   [hl], b                                     ; $566c: $70
	ld   [hl], c                                     ; $566d: $71
	ld   [hl], d                                     ; $566e: $72
	ld   [hl], e                                     ; $566f: $73
	ld   [hl], h                                     ; $5670: $74
	ld   [hl], l                                     ; $5671: $75
	halt                                             ; $5672: $76
	ld   [hl], a                                     ; $5673: $77
	ld   a, b                                        ; $5674: $78
	inc  h                                           ; $5675: $24
	ld   a, d                                        ; $5676: $7a
	ld   a, e                                        ; $5677: $7b
	ld   a, h                                        ; $5678: $7c
	ld   a, l                                        ; $5679: $7d
	ld   a, [hl]                                     ; $567a: $7e
	ld   a, a                                        ; $567b: $7f
	ld   [hl], b                                     ; $567c: $70
	ld   [hl], c                                     ; $567d: $71
	ld   [hl], d                                     ; $567e: $72
	ld   [hl], e                                     ; $567f: $73
	inc  b                                           ; $5680: $04
	dec  b                                           ; $5681: $05
	ld   b, $07                                      ; $5682: $06 $07
	ld   [$0a09], sp                                 ; $5684: $08 $09 $0a
	dec  bc                                          ; $5687: $0b
	inc  c                                           ; $5688: $0c
	dec  c                                           ; $5689: $0d
	ld   c, $0f                                      ; $568a: $0e $0f
	ld   h, [hl]                                     ; $568c: $66
	ld   b, a                                        ; $568d: $47
	inc  a                                           ; $568e: $3c
	ld   c, e                                        ; $568f: $4b
	ld   c, h                                        ; $5690: $4c
	ld   l, l                                        ; $5691: $6d
	ld   l, [hl]                                     ; $5692: $6e
	ld   a, c                                        ; $5693: $79
	inc  d                                           ; $5694: $14
	dec  d                                           ; $5695: $15
	ld   d, $17                                      ; $5696: $16 $17
	jr   jr_084_56b3                                 ; $5698: $18 $19

	ld   a, [de]                                     ; $569a: $1a
	dec  de                                          ; $569b: $1b
	inc  e                                           ; $569c: $1c
	ld   d, b                                        ; $569d: $50
	ld   h, b                                        ; $569e: $60
	ld   h, c                                        ; $569f: $61
	inc  c                                           ; $56a0: $0c
	dec  c                                           ; $56a1: $0d
	ld   c, $0f                                      ; $56a2: $0e $0f
	nop                                              ; $56a4: $00
	ld   bc, $2d02                                   ; $56a5: $01 $02 $2d
	inc  bc                                          ; $56a8: $03
	inc  bc                                          ; $56a9: $03
	inc  bc                                          ; $56aa: $03
	inc  bc                                          ; $56ab: $03
	inc  bc                                          ; $56ac: $03
	inc  bc                                          ; $56ad: $03
	inc  bc                                          ; $56ae: $03
	inc  bc                                          ; $56af: $03
	inc  bc                                          ; $56b0: $03
	inc  bc                                          ; $56b1: $03
	inc  bc                                          ; $56b2: $03

jr_084_56b3:
	inc  bc                                          ; $56b3: $03
	dec  bc                                          ; $56b4: $0b
	dec  bc                                          ; $56b5: $0b
	dec  bc                                          ; $56b6: $0b
	dec  bc                                          ; $56b7: $0b
	dec  bc                                          ; $56b8: $0b
	dec  bc                                          ; $56b9: $0b
	dec  bc                                          ; $56ba: $0b
	dec  bc                                          ; $56bb: $0b
	inc  bc                                          ; $56bc: $03
	inc  bc                                          ; $56bd: $03
	inc  bc                                          ; $56be: $03
	inc  bc                                          ; $56bf: $03
	inc  bc                                          ; $56c0: $03
	inc  bc                                          ; $56c1: $03
	inc  bc                                          ; $56c2: $03
	inc  bc                                          ; $56c3: $03
	inc  bc                                          ; $56c4: $03
	inc  bc                                          ; $56c5: $03
	inc  bc                                          ; $56c6: $03
	inc  bc                                          ; $56c7: $03
	inc  bc                                          ; $56c8: $03
	inc  bc                                          ; $56c9: $03
	inc  bc                                          ; $56ca: $03
	inc  bc                                          ; $56cb: $03
	dec  bc                                          ; $56cc: $0b
	dec  bc                                          ; $56cd: $0b
	dec  bc                                          ; $56ce: $0b
	dec  bc                                          ; $56cf: $0b
	inc  bc                                          ; $56d0: $03
	inc  bc                                          ; $56d1: $03
	inc  bc                                          ; $56d2: $03
	inc  bc                                          ; $56d3: $03
	inc  bc                                          ; $56d4: $03
	inc  bc                                          ; $56d5: $03
	inc  bc                                          ; $56d6: $03
	inc  bc                                          ; $56d7: $03
	inc  bc                                          ; $56d8: $03
	inc  bc                                          ; $56d9: $03
	inc  bc                                          ; $56da: $03
	inc  bc                                          ; $56db: $03
	inc  bc                                          ; $56dc: $03
	dec  bc                                          ; $56dd: $0b
	inc  bc                                          ; $56de: $03
	inc  bc                                          ; $56df: $03
	dec  bc                                          ; $56e0: $0b
	dec  bc                                          ; $56e1: $0b
	dec  bc                                          ; $56e2: $0b
	dec  bc                                          ; $56e3: $0b
	inc  bc                                          ; $56e4: $03
	inc  bc                                          ; $56e5: $03
	inc  bc                                          ; $56e6: $03
	inc  bc                                          ; $56e7: $03
	inc  bc                                          ; $56e8: $03
	inc  bc                                          ; $56e9: $03
	inc  bc                                          ; $56ea: $03
	inc  bc                                          ; $56eb: $03
	inc  bc                                          ; $56ec: $03
	inc  bc                                          ; $56ed: $03
	inc  bc                                          ; $56ee: $03
	inc  bc                                          ; $56ef: $03
	dec  bc                                          ; $56f0: $0b
	inc  bc                                          ; $56f1: $03
	inc  bc                                          ; $56f2: $03
	inc  bc                                          ; $56f3: $03
	dec  bc                                          ; $56f4: $0b
	dec  bc                                          ; $56f5: $0b
	dec  bc                                          ; $56f6: $0b
	dec  bc                                          ; $56f7: $0b
	inc  bc                                          ; $56f8: $03
	inc  bc                                          ; $56f9: $03
	inc  bc                                          ; $56fa: $03
	inc  bc                                          ; $56fb: $03
	inc  bc                                          ; $56fc: $03
	inc  bc                                          ; $56fd: $03
	inc  bc                                          ; $56fe: $03
	dec  bc                                          ; $56ff: $0b
	inc  bc                                          ; $5700: $03
	inc  bc                                          ; $5701: $03
	inc  bc                                          ; $5702: $03
	dec  bc                                          ; $5703: $0b
	dec  bc                                          ; $5704: $0b
	inc  bc                                          ; $5705: $03
	inc  bc                                          ; $5706: $03
	inc  bc                                          ; $5707: $03
	dec  bc                                          ; $5708: $0b
	dec  bc                                          ; $5709: $0b
	dec  bc                                          ; $570a: $0b
	dec  bc                                          ; $570b: $0b
	dec  bc                                          ; $570c: $0b
	inc  bc                                          ; $570d: $03
	inc  bc                                          ; $570e: $03
	inc  bc                                          ; $570f: $03
	inc  bc                                          ; $5710: $03
	inc  bc                                          ; $5711: $03
	inc  bc                                          ; $5712: $03
	inc  bc                                          ; $5713: $03
	inc  bc                                          ; $5714: $03
	inc  bc                                          ; $5715: $03
	inc  bc                                          ; $5716: $03
	inc  bc                                          ; $5717: $03
	inc  bc                                          ; $5718: $03
	inc  bc                                          ; $5719: $03
	inc  bc                                          ; $571a: $03
	inc  bc                                          ; $571b: $03
	dec  bc                                          ; $571c: $0b
	dec  bc                                          ; $571d: $0b
	dec  bc                                          ; $571e: $0b
	dec  bc                                          ; $571f: $0b
	dec  bc                                          ; $5720: $0b
	dec  bc                                          ; $5721: $0b
	inc  bc                                          ; $5722: $03
	inc  bc                                          ; $5723: $03
	inc  bc                                          ; $5724: $03
	inc  bc                                          ; $5725: $03
	dec  bc                                          ; $5726: $0b
	inc  bc                                          ; $5727: $03
	inc  bc                                          ; $5728: $03
	inc  bc                                          ; $5729: $03
	inc  bc                                          ; $572a: $03
	inc  bc                                          ; $572b: $03
	inc  bc                                          ; $572c: $03
	dec  bc                                          ; $572d: $0b
	dec  bc                                          ; $572e: $0b
	inc  bc                                          ; $572f: $03
	dec  bc                                          ; $5730: $0b
	dec  bc                                          ; $5731: $0b
	dec  bc                                          ; $5732: $0b
	dec  bc                                          ; $5733: $0b
	inc  bc                                          ; $5734: $03
	inc  bc                                          ; $5735: $03
	inc  bc                                          ; $5736: $03
	inc  bc                                          ; $5737: $03
	inc  bc                                          ; $5738: $03
	inc  bc                                          ; $5739: $03
	inc  bc                                          ; $573a: $03
	inc  bc                                          ; $573b: $03
	inc  bc                                          ; $573c: $03
	dec  bc                                          ; $573d: $0b
	inc  bc                                          ; $573e: $03
	inc  bc                                          ; $573f: $03
	inc  bc                                          ; $5740: $03
	inc  bc                                          ; $5741: $03
	inc  bc                                          ; $5742: $03
	inc  bc                                          ; $5743: $03
	dec  bc                                          ; $5744: $0b
	dec  bc                                          ; $5745: $0b
	dec  bc                                          ; $5746: $0b
	dec  bc                                          ; $5747: $0b
	inc  c                                           ; $5748: $0c
	inc  c                                           ; $5749: $0c
	inc  c                                           ; $574a: $0c
	inc  c                                           ; $574b: $0c
	dec  c                                           ; $574c: $0d
	dec  c                                           ; $574d: $0d
	dec  bc                                          ; $574e: $0b
	dec  bc                                          ; $574f: $0b
	dec  bc                                          ; $5750: $0b
	dec  bc                                          ; $5751: $0b
	dec  bc                                          ; $5752: $0b
	dec  bc                                          ; $5753: $0b
	inc  bc                                          ; $5754: $03
	inc  b                                           ; $5755: $04
	inc  b                                           ; $5756: $04
	inc  b                                           ; $5757: $04
	inc  b                                           ; $5758: $04
	inc  b                                           ; $5759: $04
	inc  b                                           ; $575a: $04
	inc  b                                           ; $575b: $04
	inc  c                                           ; $575c: $0c
	inc  c                                           ; $575d: $0c
	inc  c                                           ; $575e: $0c
	inc  c                                           ; $575f: $0c
	inc  c                                           ; $5760: $0c
	inc  c                                           ; $5761: $0c
	dec  c                                           ; $5762: $0d
	dec  bc                                          ; $5763: $0b
	dec  bc                                          ; $5764: $0b
	inc  bc                                          ; $5765: $03
	inc  bc                                          ; $5766: $03
	inc  bc                                          ; $5767: $03
	inc  bc                                          ; $5768: $03
	dec  b                                           ; $5769: $05
	inc  b                                           ; $576a: $04
	inc  b                                           ; $576b: $04
	inc  c                                           ; $576c: $0c
	inc  c                                           ; $576d: $0c
	inc  c                                           ; $576e: $0c
	inc  b                                           ; $576f: $04
	nop                                              ; $5770: $00
	ld   bc, $0302                                   ; $5771: $01 $02 $03
	inc  b                                           ; $5774: $04
	dec  b                                           ; $5775: $05
	ld   b, $07                                      ; $5776: $06 $07
	ld   [$0a09], sp                                 ; $5778: $08 $09 $0a
	dec  bc                                          ; $577b: $0b
	inc  c                                           ; $577c: $0c
	dec  c                                           ; $577d: $0d
	ld   c, $04                                      ; $577e: $0e $04
	jr   nz, jr_084_57a3                             ; $5780: $20 $21

	ld   [hl+], a                                    ; $5782: $22
	inc  hl                                          ; $5783: $23
	db   $10                                         ; $5784: $10
	ld   de, $1312                                   ; $5785: $11 $12 $13
	inc  d                                           ; $5788: $14
	dec  d                                           ; $5789: $15
	ld   d, $17                                      ; $578a: $16 $17
	jr   @+$1b                                       ; $578c: $18 $19

	ld   a, [de]                                     ; $578e: $1a
	dec  de                                          ; $578f: $1b
	inc  e                                           ; $5790: $1c
	dec  e                                           ; $5791: $1d
	ld   e, $1f                                      ; $5792: $1e $1f
	jr   nc, jr_084_57c7                             ; $5794: $30 $31

	ld   [hl-], a                                    ; $5796: $32
	inc  sp                                          ; $5797: $33
	jr   nz, @+$23                                   ; $5798: $20 $21

	ld   [hl+], a                                    ; $579a: $22
	inc  hl                                          ; $579b: $23
	inc  h                                           ; $579c: $24
	dec  h                                           ; $579d: $25
	ld   h, $27                                      ; $579e: $26 $27
	jr   z, jr_084_57cb                              ; $57a0: $28 $29

	ld   a, [hl+]                                    ; $57a2: $2a

jr_084_57a3:
	dec  hl                                          ; $57a3: $2b
	inc  l                                           ; $57a4: $2c
	dec  l                                           ; $57a5: $2d
	ld   l, $2f                                      ; $57a6: $2e $2f
	inc  h                                           ; $57a8: $24
	dec  h                                           ; $57a9: $25
	ld   h, $27                                      ; $57aa: $26 $27
	jr   nc, jr_084_57df                             ; $57ac: $30 $31

	ld   [hl-], a                                    ; $57ae: $32
	inc  sp                                          ; $57af: $33
	inc  [hl]                                        ; $57b0: $34
	dec  [hl]                                        ; $57b1: $35
	ld   [hl], $37                                   ; $57b2: $36 $37
	jr   c, jr_084_57ef                              ; $57b4: $38 $39

	ld   a, [hl-]                                    ; $57b6: $3a
	dec  sp                                          ; $57b7: $3b
	inc  a                                           ; $57b8: $3c
	dec  a                                           ; $57b9: $3d
	ld   a, $3f                                      ; $57ba: $3e $3f
	inc  [hl]                                        ; $57bc: $34
	dec  [hl]                                        ; $57bd: $35
	ld   [hl], $37                                   ; $57be: $36 $37
	ld   b, b                                        ; $57c0: $40
	ld   b, c                                        ; $57c1: $41
	ld   b, d                                        ; $57c2: $42
	ld   b, e                                        ; $57c3: $43
	ld   b, h                                        ; $57c4: $44
	ld   b, l                                        ; $57c5: $45
	ld   b, [hl]                                     ; $57c6: $46

jr_084_57c7:
	ld   b, a                                        ; $57c7: $47
	ld   c, b                                        ; $57c8: $48
	ld   c, c                                        ; $57c9: $49
	ld   c, d                                        ; $57ca: $4a

jr_084_57cb:
	ld   c, e                                        ; $57cb: $4b
	ld   c, h                                        ; $57cc: $4c
	ld   c, l                                        ; $57cd: $4d
	ld   c, [hl]                                     ; $57ce: $4e
	ld   c, a                                        ; $57cf: $4f
	jr   z, @+$2b                                    ; $57d0: $28 $29

	ld   a, [hl+]                                    ; $57d2: $2a
	dec  hl                                          ; $57d3: $2b
	ld   d, b                                        ; $57d4: $50
	ld   d, c                                        ; $57d5: $51
	ld   d, d                                        ; $57d6: $52
	ld   d, e                                        ; $57d7: $53
	ld   d, h                                        ; $57d8: $54
	ld   d, l                                        ; $57d9: $55
	ld   d, [hl]                                     ; $57da: $56
	ld   d, a                                        ; $57db: $57
	ld   e, b                                        ; $57dc: $58
	ld   e, c                                        ; $57dd: $59
	ld   e, d                                        ; $57de: $5a

jr_084_57df:
	ld   e, e                                        ; $57df: $5b
	ld   e, h                                        ; $57e0: $5c
	ld   e, l                                        ; $57e1: $5d
	ld   e, [hl]                                     ; $57e2: $5e
	ld   e, a                                        ; $57e3: $5f
	jr   c, @+$3b                                    ; $57e4: $38 $39

	ld   a, [hl-]                                    ; $57e6: $3a
	dec  sp                                          ; $57e7: $3b
	ld   h, b                                        ; $57e8: $60
	ld   h, c                                        ; $57e9: $61
	ld   h, d                                        ; $57ea: $62
	ld   h, e                                        ; $57eb: $63
	ld   h, h                                        ; $57ec: $64
	ld   h, l                                        ; $57ed: $65
	ld   h, [hl]                                     ; $57ee: $66

jr_084_57ef:
	ld   h, a                                        ; $57ef: $67
	ld   l, b                                        ; $57f0: $68
	ld   l, c                                        ; $57f1: $69
	ld   l, d                                        ; $57f2: $6a
	ld   l, e                                        ; $57f3: $6b
	ld   l, h                                        ; $57f4: $6c
	ld   l, l                                        ; $57f5: $6d
	ld   l, [hl]                                     ; $57f6: $6e
	ld   l, a                                        ; $57f7: $6f
	inc  l                                           ; $57f8: $2c
	dec  l                                           ; $57f9: $2d
	ld   l, $2f                                      ; $57fa: $2e $2f
	ld   [hl], b                                     ; $57fc: $70
	ld   [hl], c                                     ; $57fd: $71
	ld   [hl], d                                     ; $57fe: $72
	ld   [hl], e                                     ; $57ff: $73
	ld   [hl], h                                     ; $5800: $74
	ld   [hl], l                                     ; $5801: $75
	halt                                             ; $5802: $76
	ld   [hl], a                                     ; $5803: $77
	ld   a, b                                        ; $5804: $78
	ld   a, c                                        ; $5805: $79
	ld   a, d                                        ; $5806: $7a
	ld   a, e                                        ; $5807: $7b
	ld   a, h                                        ; $5808: $7c
	ld   a, l                                        ; $5809: $7d
	ld   a, [hl]                                     ; $580a: $7e
	ld   a, a                                        ; $580b: $7f
	inc  a                                           ; $580c: $3c
	dec  a                                           ; $580d: $3d
	ld   a, $3f                                      ; $580e: $3e $3f
	nop                                              ; $5810: $00
	ld   bc, $0302                                   ; $5811: $01 $02 $03
	inc  b                                           ; $5814: $04
	dec  b                                           ; $5815: $05
	ld   b, $07                                      ; $5816: $06 $07
	ld   [$0a09], sp                                 ; $5818: $08 $09 $0a
	dec  bc                                          ; $581b: $0b
	inc  c                                           ; $581c: $0c
	dec  c                                           ; $581d: $0d
	ld   c, $0f                                      ; $581e: $0e $0f
	ld   b, b                                        ; $5820: $40
	ld   b, c                                        ; $5821: $41
	ld   b, d                                        ; $5822: $42
	ld   b, e                                        ; $5823: $43
	db   $10                                         ; $5824: $10
	ld   de, $1311                                   ; $5825: $11 $11 $13
	inc  d                                           ; $5828: $14
	dec  d                                           ; $5829: $15
	ld   d, $17                                      ; $582a: $16 $17
	jr   jr_084_583f                                 ; $582c: $18 $11

	ld   a, [de]                                     ; $582e: $1a
	dec  de                                          ; $582f: $1b
	inc  e                                           ; $5830: $1c
	dec  e                                           ; $5831: $1d
	ld   e, $1f                                      ; $5832: $1e $1f
	ld   b, h                                        ; $5834: $44
	ld   b, l                                        ; $5835: $45
	ld   b, [hl]                                     ; $5836: $46
	ld   b, a                                        ; $5837: $47
	inc  bc                                          ; $5838: $03
	inc  bc                                          ; $5839: $03
	inc  bc                                          ; $583a: $03
	inc  bc                                          ; $583b: $03
	inc  bc                                          ; $583c: $03
	inc  bc                                          ; $583d: $03
	inc  bc                                          ; $583e: $03

jr_084_583f:
	inc  bc                                          ; $583f: $03
	inc  bc                                          ; $5840: $03
	inc  bc                                          ; $5841: $03
	inc  bc                                          ; $5842: $03
	inc  bc                                          ; $5843: $03
	inc  bc                                          ; $5844: $03
	inc  bc                                          ; $5845: $03
	inc  bc                                          ; $5846: $03
	inc  bc                                          ; $5847: $03
	dec  bc                                          ; $5848: $0b
	dec  bc                                          ; $5849: $0b
	dec  bc                                          ; $584a: $0b
	dec  bc                                          ; $584b: $0b
	inc  bc                                          ; $584c: $03
	inc  bc                                          ; $584d: $03
	inc  bc                                          ; $584e: $03
	inc  bc                                          ; $584f: $03
	inc  bc                                          ; $5850: $03
	inc  bc                                          ; $5851: $03
	inc  bc                                          ; $5852: $03
	inc  bc                                          ; $5853: $03
	inc  bc                                          ; $5854: $03
	inc  bc                                          ; $5855: $03
	inc  bc                                          ; $5856: $03
	inc  bc                                          ; $5857: $03
	inc  bc                                          ; $5858: $03
	inc  bc                                          ; $5859: $03
	inc  bc                                          ; $585a: $03
	inc  bc                                          ; $585b: $03
	dec  bc                                          ; $585c: $0b
	dec  bc                                          ; $585d: $0b
	dec  bc                                          ; $585e: $0b
	dec  bc                                          ; $585f: $0b
	inc  bc                                          ; $5860: $03
	inc  bc                                          ; $5861: $03
	inc  bc                                          ; $5862: $03
	inc  bc                                          ; $5863: $03
	inc  bc                                          ; $5864: $03
	inc  bc                                          ; $5865: $03
	inc  bc                                          ; $5866: $03
	inc  bc                                          ; $5867: $03
	inc  bc                                          ; $5868: $03
	inc  bc                                          ; $5869: $03
	inc  bc                                          ; $586a: $03
	inc  bc                                          ; $586b: $03
	inc  bc                                          ; $586c: $03
	inc  bc                                          ; $586d: $03
	inc  bc                                          ; $586e: $03
	inc  bc                                          ; $586f: $03
	dec  bc                                          ; $5870: $0b
	dec  bc                                          ; $5871: $0b
	dec  bc                                          ; $5872: $0b
	dec  bc                                          ; $5873: $0b
	inc  bc                                          ; $5874: $03
	inc  bc                                          ; $5875: $03
	inc  bc                                          ; $5876: $03
	inc  bc                                          ; $5877: $03
	inc  bc                                          ; $5878: $03
	inc  bc                                          ; $5879: $03
	inc  bc                                          ; $587a: $03
	inc  bc                                          ; $587b: $03
	inc  bc                                          ; $587c: $03
	inc  bc                                          ; $587d: $03
	inc  bc                                          ; $587e: $03
	inc  bc                                          ; $587f: $03
	inc  bc                                          ; $5880: $03
	inc  bc                                          ; $5881: $03
	inc  bc                                          ; $5882: $03
	inc  bc                                          ; $5883: $03
	dec  bc                                          ; $5884: $0b
	dec  bc                                          ; $5885: $0b
	dec  bc                                          ; $5886: $0b
	dec  bc                                          ; $5887: $0b
	inc  bc                                          ; $5888: $03
	inc  bc                                          ; $5889: $03
	inc  bc                                          ; $588a: $03
	inc  bc                                          ; $588b: $03
	inc  bc                                          ; $588c: $03
	inc  bc                                          ; $588d: $03
	inc  bc                                          ; $588e: $03
	inc  bc                                          ; $588f: $03
	inc  bc                                          ; $5890: $03
	inc  bc                                          ; $5891: $03
	inc  bc                                          ; $5892: $03
	inc  bc                                          ; $5893: $03
	inc  bc                                          ; $5894: $03
	inc  bc                                          ; $5895: $03
	inc  bc                                          ; $5896: $03
	inc  bc                                          ; $5897: $03
	dec  bc                                          ; $5898: $0b
	dec  bc                                          ; $5899: $0b
	dec  bc                                          ; $589a: $0b
	dec  bc                                          ; $589b: $0b
	inc  bc                                          ; $589c: $03
	inc  bc                                          ; $589d: $03
	inc  bc                                          ; $589e: $03
	inc  bc                                          ; $589f: $03
	inc  bc                                          ; $58a0: $03
	inc  bc                                          ; $58a1: $03
	inc  bc                                          ; $58a2: $03
	inc  bc                                          ; $58a3: $03
	inc  bc                                          ; $58a4: $03
	inc  bc                                          ; $58a5: $03
	inc  bc                                          ; $58a6: $03
	dec  b                                           ; $58a7: $05
	dec  b                                           ; $58a8: $05
	inc  bc                                          ; $58a9: $03
	inc  bc                                          ; $58aa: $03
	inc  b                                           ; $58ab: $04
	dec  bc                                          ; $58ac: $0b
	dec  bc                                          ; $58ad: $0b
	dec  bc                                          ; $58ae: $0b
	dec  bc                                          ; $58af: $0b
	inc  bc                                          ; $58b0: $03
	inc  bc                                          ; $58b1: $03
	inc  bc                                          ; $58b2: $03
	inc  bc                                          ; $58b3: $03
	inc  bc                                          ; $58b4: $03
	dec  b                                           ; $58b5: $05
	dec  b                                           ; $58b6: $05
	inc  bc                                          ; $58b7: $03
	inc  b                                           ; $58b8: $04
	dec  b                                           ; $58b9: $05
	dec  b                                           ; $58ba: $05
	dec  b                                           ; $58bb: $05
	dec  b                                           ; $58bc: $05
	dec  b                                           ; $58bd: $05
	inc  bc                                          ; $58be: $03
	inc  bc                                          ; $58bf: $03
	dec  bc                                          ; $58c0: $0b
	dec  bc                                          ; $58c1: $0b
	dec  bc                                          ; $58c2: $0b
	dec  bc                                          ; $58c3: $0b
	inc  bc                                          ; $58c4: $03
	inc  bc                                          ; $58c5: $03
	inc  bc                                          ; $58c6: $03
	inc  bc                                          ; $58c7: $03
	inc  bc                                          ; $58c8: $03
	inc  bc                                          ; $58c9: $03
	inc  bc                                          ; $58ca: $03
	inc  bc                                          ; $58cb: $03
	inc  bc                                          ; $58cc: $03
	inc  bc                                          ; $58cd: $03
	inc  bc                                          ; $58ce: $03
	dec  b                                           ; $58cf: $05
	dec  b                                           ; $58d0: $05
	inc  bc                                          ; $58d1: $03
	inc  bc                                          ; $58d2: $03
	inc  bc                                          ; $58d3: $03
	inc  c                                           ; $58d4: $0c
	inc  c                                           ; $58d5: $0c
	dec  bc                                          ; $58d6: $0b
	dec  bc                                          ; $58d7: $0b
	dec  bc                                          ; $58d8: $0b
	dec  bc                                          ; $58d9: $0b
	dec  bc                                          ; $58da: $0b
	dec  bc                                          ; $58db: $0b
	dec  bc                                          ; $58dc: $0b
	dec  bc                                          ; $58dd: $0b
	dec  bc                                          ; $58de: $0b
	dec  bc                                          ; $58df: $0b
	dec  bc                                          ; $58e0: $0b
	dec  bc                                          ; $58e1: $0b
	dec  bc                                          ; $58e2: $0b
	dec  c                                           ; $58e3: $0d
	dec  c                                           ; $58e4: $0d
	dec  c                                           ; $58e5: $0d
	dec  bc                                          ; $58e6: $0b
	dec  bc                                          ; $58e7: $0b
	dec  bc                                          ; $58e8: $0b
	dec  bc                                          ; $58e9: $0b
	dec  bc                                          ; $58ea: $0b
	dec  bc                                          ; $58eb: $0b
	dec  bc                                          ; $58ec: $0b
	dec  bc                                          ; $58ed: $0b
	dec  bc                                          ; $58ee: $0b
	dec  bc                                          ; $58ef: $0b
	dec  bc                                          ; $58f0: $0b
	dec  bc                                          ; $58f1: $0b
	dec  bc                                          ; $58f2: $0b
	dec  bc                                          ; $58f3: $0b
	dec  bc                                          ; $58f4: $0b
	dec  bc                                          ; $58f5: $0b
	dec  bc                                          ; $58f6: $0b
	dec  c                                           ; $58f7: $0d
	dec  c                                           ; $58f8: $0d
	dec  bc                                          ; $58f9: $0b
	dec  bc                                          ; $58fa: $0b
	dec  bc                                          ; $58fb: $0b
	dec  bc                                          ; $58fc: $0b
	dec  bc                                          ; $58fd: $0b
	dec  bc                                          ; $58fe: $0b
	dec  bc                                          ; $58ff: $0b
	nop                                              ; $5900: $00
	ld   bc, $0302                                   ; $5901: $01 $02 $03
	inc  b                                           ; $5904: $04
	dec  b                                           ; $5905: $05
	ld   b, $07                                      ; $5906: $06 $07
	ld   [$0a09], sp                                 ; $5908: $08 $09 $0a
	dec  bc                                          ; $590b: $0b
	inc  c                                           ; $590c: $0c
	dec  c                                           ; $590d: $0d
	ld   c, $04                                      ; $590e: $0e $04
	jr   nz, jr_084_5933                             ; $5910: $20 $21

	ld   [hl+], a                                    ; $5912: $22
	inc  hl                                          ; $5913: $23
	db   $10                                         ; $5914: $10
	ld   de, $1312                                   ; $5915: $11 $12 $13
	inc  d                                           ; $5918: $14
	dec  d                                           ; $5919: $15
	rrca                                             ; $591a: $0f
	ld   [de], a                                     ; $591b: $12
	add  hl, de                                      ; $591c: $19
	ld   c, b                                        ; $591d: $48
	ld   c, c                                        ; $591e: $49
	ld   c, d                                        ; $591f: $4a
	ld   c, e                                        ; $5920: $4b
	ld   c, h                                        ; $5921: $4c
	ld   e, $1f                                      ; $5922: $1e $1f
	jr   nc, jr_084_5957                             ; $5924: $30 $31

	ld   [hl-], a                                    ; $5926: $32
	inc  sp                                          ; $5927: $33
	jr   nz, @+$23                                   ; $5928: $20 $21

	ld   [hl+], a                                    ; $592a: $22
	inc  hl                                          ; $592b: $23
	inc  h                                           ; $592c: $24
	dec  h                                           ; $592d: $25
	ld   h, $4d                                      ; $592e: $26 $4d
	ld   c, [hl]                                     ; $5930: $4e
	ld   c, a                                        ; $5931: $4f
	ld   d, b                                        ; $5932: $50

jr_084_5933:
	ld   d, c                                        ; $5933: $51
	ld   d, d                                        ; $5934: $52
	dec  l                                           ; $5935: $2d
	ld   l, $2f                                      ; $5936: $2e $2f
	inc  h                                           ; $5938: $24
	dec  h                                           ; $5939: $25
	ld   h, $27                                      ; $593a: $26 $27
	jr   nc, jr_084_596f                             ; $593c: $30 $31

	ld   [hl-], a                                    ; $593e: $32
	inc  sp                                          ; $593f: $33
	inc  [hl]                                        ; $5940: $34
	dec  [hl]                                        ; $5941: $35
	ld   [hl], $37                                   ; $5942: $36 $37
	jr   c, jr_084_597f                              ; $5944: $38 $39

	ld   a, [hl-]                                    ; $5946: $3a
	dec  sp                                          ; $5947: $3b
	inc  a                                           ; $5948: $3c
	dec  a                                           ; $5949: $3d
	ld   a, $3f                                      ; $594a: $3e $3f
	inc  [hl]                                        ; $594c: $34
	dec  [hl]                                        ; $594d: $35
	ld   [hl], $37                                   ; $594e: $36 $37
	ld   b, b                                        ; $5950: $40
	ld   b, c                                        ; $5951: $41
	ld   b, d                                        ; $5952: $42
	ld   b, e                                        ; $5953: $43
	ld   b, h                                        ; $5954: $44
	ld   b, l                                        ; $5955: $45
	ld   b, [hl]                                     ; $5956: $46

jr_084_5957:
	ld   b, a                                        ; $5957: $47
	ld   c, b                                        ; $5958: $48
	ld   c, c                                        ; $5959: $49
	ld   c, d                                        ; $595a: $4a
	ld   c, e                                        ; $595b: $4b
	ld   c, h                                        ; $595c: $4c
	ld   c, l                                        ; $595d: $4d
	ld   c, [hl]                                     ; $595e: $4e
	ld   c, a                                        ; $595f: $4f
	jr   z, @+$2b                                    ; $5960: $28 $29

	ld   a, [hl+]                                    ; $5962: $2a
	dec  hl                                          ; $5963: $2b
	ld   d, b                                        ; $5964: $50
	ld   d, c                                        ; $5965: $51
	ld   d, d                                        ; $5966: $52
	ld   d, e                                        ; $5967: $53
	ld   d, h                                        ; $5968: $54
	ld   d, l                                        ; $5969: $55
	ld   d, [hl]                                     ; $596a: $56
	ld   d, a                                        ; $596b: $57
	ld   e, b                                        ; $596c: $58
	ld   e, c                                        ; $596d: $59
	ld   e, d                                        ; $596e: $5a

jr_084_596f:
	ld   e, e                                        ; $596f: $5b
	ld   e, h                                        ; $5970: $5c
	ld   e, l                                        ; $5971: $5d
	ld   e, [hl]                                     ; $5972: $5e
	ld   e, a                                        ; $5973: $5f
	jr   c, @+$3b                                    ; $5974: $38 $39

	ld   a, [hl-]                                    ; $5976: $3a
	dec  sp                                          ; $5977: $3b
	ld   h, b                                        ; $5978: $60
	ld   h, c                                        ; $5979: $61
	ld   h, d                                        ; $597a: $62
	ld   h, e                                        ; $597b: $63
	ld   h, h                                        ; $597c: $64
	ld   h, l                                        ; $597d: $65
	ld   h, [hl]                                     ; $597e: $66

jr_084_597f:
	ld   h, a                                        ; $597f: $67
	ld   l, b                                        ; $5980: $68
	ld   l, c                                        ; $5981: $69
	ld   l, d                                        ; $5982: $6a
	ld   l, e                                        ; $5983: $6b
	ld   l, h                                        ; $5984: $6c
	ld   l, l                                        ; $5985: $6d
	ld   l, [hl]                                     ; $5986: $6e
	ld   l, a                                        ; $5987: $6f
	inc  l                                           ; $5988: $2c
	dec  l                                           ; $5989: $2d
	ld   l, $2f                                      ; $598a: $2e $2f
	ld   [hl], b                                     ; $598c: $70
	ld   [hl], c                                     ; $598d: $71
	ld   [hl], d                                     ; $598e: $72
	ld   [hl], e                                     ; $598f: $73
	ld   [hl], h                                     ; $5990: $74
	ld   [hl], l                                     ; $5991: $75
	halt                                             ; $5992: $76
	ld   [hl], a                                     ; $5993: $77
	ld   a, b                                        ; $5994: $78
	ld   a, c                                        ; $5995: $79
	ld   a, d                                        ; $5996: $7a
	ld   a, e                                        ; $5997: $7b
	ld   a, h                                        ; $5998: $7c
	ld   a, l                                        ; $5999: $7d
	ld   a, [hl]                                     ; $599a: $7e
	ld   a, a                                        ; $599b: $7f
	inc  a                                           ; $599c: $3c
	dec  a                                           ; $599d: $3d
	ld   a, $3f                                      ; $599e: $3e $3f
	nop                                              ; $59a0: $00
	ld   bc, $0302                                   ; $59a1: $01 $02 $03
	inc  b                                           ; $59a4: $04
	dec  b                                           ; $59a5: $05
	ld   b, $07                                      ; $59a6: $06 $07
	ld   [$0a09], sp                                 ; $59a8: $08 $09 $0a
	dec  bc                                          ; $59ab: $0b
	inc  c                                           ; $59ac: $0c
	dec  c                                           ; $59ad: $0d
	ld   c, $0f                                      ; $59ae: $0e $0f
	ld   b, b                                        ; $59b0: $40
	ld   b, c                                        ; $59b1: $41
	ld   b, d                                        ; $59b2: $42
	ld   b, e                                        ; $59b3: $43
	db   $10                                         ; $59b4: $10
	ld   de, $1311                                   ; $59b5: $11 $11 $13
	inc  d                                           ; $59b8: $14
	dec  d                                           ; $59b9: $15
	ld   d, $17                                      ; $59ba: $16 $17
	jr   jr_084_59cf                                 ; $59bc: $18 $11

	ld   a, [de]                                     ; $59be: $1a
	dec  de                                          ; $59bf: $1b
	inc  e                                           ; $59c0: $1c
	dec  e                                           ; $59c1: $1d
	ld   e, $1f                                      ; $59c2: $1e $1f
	ld   b, h                                        ; $59c4: $44
	ld   b, l                                        ; $59c5: $45
	ld   b, [hl]                                     ; $59c6: $46
	ld   b, a                                        ; $59c7: $47
	inc  bc                                          ; $59c8: $03
	inc  bc                                          ; $59c9: $03
	inc  bc                                          ; $59ca: $03
	inc  bc                                          ; $59cb: $03
	inc  bc                                          ; $59cc: $03
	inc  bc                                          ; $59cd: $03
	inc  bc                                          ; $59ce: $03

jr_084_59cf:
	inc  bc                                          ; $59cf: $03
	inc  bc                                          ; $59d0: $03
	inc  bc                                          ; $59d1: $03
	inc  bc                                          ; $59d2: $03
	inc  bc                                          ; $59d3: $03
	inc  bc                                          ; $59d4: $03
	inc  bc                                          ; $59d5: $03
	inc  bc                                          ; $59d6: $03
	inc  bc                                          ; $59d7: $03
	dec  bc                                          ; $59d8: $0b
	dec  bc                                          ; $59d9: $0b
	dec  bc                                          ; $59da: $0b
	dec  bc                                          ; $59db: $0b
	inc  bc                                          ; $59dc: $03
	inc  bc                                          ; $59dd: $03
	inc  bc                                          ; $59de: $03
	inc  bc                                          ; $59df: $03
	inc  bc                                          ; $59e0: $03
	inc  bc                                          ; $59e1: $03
	inc  bc                                          ; $59e2: $03
	dec  bc                                          ; $59e3: $0b
	dec  bc                                          ; $59e4: $0b
	dec  bc                                          ; $59e5: $0b
	dec  bc                                          ; $59e6: $0b
	dec  bc                                          ; $59e7: $0b
	dec  bc                                          ; $59e8: $0b
	dec  bc                                          ; $59e9: $0b
	inc  bc                                          ; $59ea: $03
	inc  bc                                          ; $59eb: $03
	dec  bc                                          ; $59ec: $0b
	dec  bc                                          ; $59ed: $0b
	dec  bc                                          ; $59ee: $0b
	dec  bc                                          ; $59ef: $0b
	inc  bc                                          ; $59f0: $03
	inc  bc                                          ; $59f1: $03
	inc  bc                                          ; $59f2: $03
	inc  bc                                          ; $59f3: $03
	inc  bc                                          ; $59f4: $03
	inc  bc                                          ; $59f5: $03
	inc  bc                                          ; $59f6: $03
	dec  bc                                          ; $59f7: $0b
	dec  bc                                          ; $59f8: $0b
	dec  bc                                          ; $59f9: $0b
	dec  bc                                          ; $59fa: $0b
	dec  bc                                          ; $59fb: $0b
	dec  bc                                          ; $59fc: $0b
	inc  bc                                          ; $59fd: $03
	inc  bc                                          ; $59fe: $03
	inc  bc                                          ; $59ff: $03
	dec  bc                                          ; $5a00: $0b
	dec  bc                                          ; $5a01: $0b
	dec  bc                                          ; $5a02: $0b
	dec  bc                                          ; $5a03: $0b
	inc  bc                                          ; $5a04: $03
	inc  bc                                          ; $5a05: $03
	inc  bc                                          ; $5a06: $03
	inc  bc                                          ; $5a07: $03
	inc  bc                                          ; $5a08: $03
	inc  bc                                          ; $5a09: $03
	inc  bc                                          ; $5a0a: $03
	inc  bc                                          ; $5a0b: $03
	inc  bc                                          ; $5a0c: $03
	inc  bc                                          ; $5a0d: $03
	inc  bc                                          ; $5a0e: $03
	inc  bc                                          ; $5a0f: $03
	inc  bc                                          ; $5a10: $03
	inc  bc                                          ; $5a11: $03
	inc  bc                                          ; $5a12: $03
	inc  bc                                          ; $5a13: $03
	dec  bc                                          ; $5a14: $0b
	dec  bc                                          ; $5a15: $0b
	dec  bc                                          ; $5a16: $0b
	dec  bc                                          ; $5a17: $0b
	inc  bc                                          ; $5a18: $03
	inc  bc                                          ; $5a19: $03
	inc  bc                                          ; $5a1a: $03
	inc  bc                                          ; $5a1b: $03
	inc  bc                                          ; $5a1c: $03
	inc  bc                                          ; $5a1d: $03
	inc  bc                                          ; $5a1e: $03
	inc  bc                                          ; $5a1f: $03
	inc  bc                                          ; $5a20: $03
	inc  bc                                          ; $5a21: $03
	inc  bc                                          ; $5a22: $03
	inc  bc                                          ; $5a23: $03
	inc  bc                                          ; $5a24: $03
	inc  bc                                          ; $5a25: $03
	inc  bc                                          ; $5a26: $03
	inc  bc                                          ; $5a27: $03
	dec  bc                                          ; $5a28: $0b
	dec  bc                                          ; $5a29: $0b
	dec  bc                                          ; $5a2a: $0b
	dec  bc                                          ; $5a2b: $0b
	inc  bc                                          ; $5a2c: $03
	inc  bc                                          ; $5a2d: $03
	inc  bc                                          ; $5a2e: $03
	inc  bc                                          ; $5a2f: $03
	inc  bc                                          ; $5a30: $03
	inc  bc                                          ; $5a31: $03
	inc  bc                                          ; $5a32: $03
	inc  bc                                          ; $5a33: $03
	inc  bc                                          ; $5a34: $03
	inc  bc                                          ; $5a35: $03
	inc  bc                                          ; $5a36: $03
	dec  b                                           ; $5a37: $05
	dec  b                                           ; $5a38: $05
	inc  bc                                          ; $5a39: $03
	inc  bc                                          ; $5a3a: $03
	inc  b                                           ; $5a3b: $04
	dec  bc                                          ; $5a3c: $0b
	dec  bc                                          ; $5a3d: $0b
	dec  bc                                          ; $5a3e: $0b
	dec  bc                                          ; $5a3f: $0b
	inc  bc                                          ; $5a40: $03
	inc  bc                                          ; $5a41: $03
	inc  bc                                          ; $5a42: $03
	inc  bc                                          ; $5a43: $03
	inc  bc                                          ; $5a44: $03
	dec  b                                           ; $5a45: $05
	dec  b                                           ; $5a46: $05
	inc  bc                                          ; $5a47: $03
	inc  b                                           ; $5a48: $04
	dec  b                                           ; $5a49: $05
	dec  b                                           ; $5a4a: $05
	dec  b                                           ; $5a4b: $05
	dec  b                                           ; $5a4c: $05
	dec  b                                           ; $5a4d: $05
	inc  bc                                          ; $5a4e: $03
	inc  bc                                          ; $5a4f: $03
	dec  bc                                          ; $5a50: $0b
	dec  bc                                          ; $5a51: $0b
	dec  bc                                          ; $5a52: $0b
	dec  bc                                          ; $5a53: $0b
	inc  bc                                          ; $5a54: $03
	inc  bc                                          ; $5a55: $03
	inc  bc                                          ; $5a56: $03
	inc  bc                                          ; $5a57: $03
	inc  bc                                          ; $5a58: $03
	inc  bc                                          ; $5a59: $03
	inc  bc                                          ; $5a5a: $03
	inc  bc                                          ; $5a5b: $03
	inc  bc                                          ; $5a5c: $03
	inc  bc                                          ; $5a5d: $03
	inc  bc                                          ; $5a5e: $03
	dec  b                                           ; $5a5f: $05
	dec  b                                           ; $5a60: $05
	inc  bc                                          ; $5a61: $03
	inc  bc                                          ; $5a62: $03
	inc  bc                                          ; $5a63: $03
	inc  c                                           ; $5a64: $0c
	inc  c                                           ; $5a65: $0c
	dec  bc                                          ; $5a66: $0b
	dec  bc                                          ; $5a67: $0b
	dec  bc                                          ; $5a68: $0b
	dec  bc                                          ; $5a69: $0b
	dec  bc                                          ; $5a6a: $0b
	dec  bc                                          ; $5a6b: $0b
	dec  bc                                          ; $5a6c: $0b
	dec  bc                                          ; $5a6d: $0b
	dec  bc                                          ; $5a6e: $0b
	dec  bc                                          ; $5a6f: $0b
	dec  bc                                          ; $5a70: $0b
	dec  bc                                          ; $5a71: $0b
	dec  bc                                          ; $5a72: $0b
	dec  c                                           ; $5a73: $0d
	dec  c                                           ; $5a74: $0d
	dec  c                                           ; $5a75: $0d
	dec  bc                                          ; $5a76: $0b
	dec  bc                                          ; $5a77: $0b
	dec  bc                                          ; $5a78: $0b
	dec  bc                                          ; $5a79: $0b
	dec  bc                                          ; $5a7a: $0b
	dec  bc                                          ; $5a7b: $0b
	dec  bc                                          ; $5a7c: $0b
	dec  bc                                          ; $5a7d: $0b
	dec  bc                                          ; $5a7e: $0b
	dec  bc                                          ; $5a7f: $0b
	dec  bc                                          ; $5a80: $0b
	dec  bc                                          ; $5a81: $0b
	dec  bc                                          ; $5a82: $0b
	dec  bc                                          ; $5a83: $0b
	dec  bc                                          ; $5a84: $0b
	dec  bc                                          ; $5a85: $0b
	dec  bc                                          ; $5a86: $0b
	dec  c                                           ; $5a87: $0d
	dec  c                                           ; $5a88: $0d
	dec  bc                                          ; $5a89: $0b
	dec  bc                                          ; $5a8a: $0b
	dec  bc                                          ; $5a8b: $0b
	dec  bc                                          ; $5a8c: $0b
	dec  bc                                          ; $5a8d: $0b
	dec  bc                                          ; $5a8e: $0b
	dec  bc                                          ; $5a8f: $0b
	nop                                              ; $5a90: $00
	ld   bc, $0302                                   ; $5a91: $01 $02 $03
	inc  b                                           ; $5a94: $04
	inc  b                                           ; $5a95: $04
	inc  b                                           ; $5a96: $04
	inc  b                                           ; $5a97: $04
	inc  b                                           ; $5a98: $04
	inc  b                                           ; $5a99: $04
	ld   a, [bc]                                     ; $5a9a: $0a
	dec  bc                                          ; $5a9b: $0b
	inc  c                                           ; $5a9c: $0c
	dec  c                                           ; $5a9d: $0d
	ld   c, $0f                                      ; $5a9e: $0e $0f
	jr   nz, jr_084_5ac3                             ; $5aa0: $20 $21

	ld   [hl+], a                                    ; $5aa2: $22
	inc  hl                                          ; $5aa3: $23
	db   $10                                         ; $5aa4: $10
	ld   de, $1312                                   ; $5aa5: $11 $12 $13
	inc  d                                           ; $5aa8: $14
	dec  d                                           ; $5aa9: $15
	ld   d, $17                                      ; $5aaa: $16 $17
	jr   @+$1b                                       ; $5aac: $18 $19

	ld   a, [de]                                     ; $5aae: $1a
	dec  de                                          ; $5aaf: $1b
	inc  e                                           ; $5ab0: $1c
	dec  e                                           ; $5ab1: $1d
	ld   e, $1f                                      ; $5ab2: $1e $1f
	inc  h                                           ; $5ab4: $24
	dec  h                                           ; $5ab5: $25
	ld   h, $27                                      ; $5ab6: $26 $27
	jr   nz, @+$23                                   ; $5ab8: $20 $21

	ld   [hl+], a                                    ; $5aba: $22
	inc  hl                                          ; $5abb: $23
	inc  h                                           ; $5abc: $24
	dec  h                                           ; $5abd: $25
	ld   h, $27                                      ; $5abe: $26 $27
	jr   z, jr_084_5aeb                              ; $5ac0: $28 $29

	ld   a, [hl+]                                    ; $5ac2: $2a

jr_084_5ac3:
	dec  hl                                          ; $5ac3: $2b
	inc  l                                           ; $5ac4: $2c
	dec  l                                           ; $5ac5: $2d
	ld   l, $2f                                      ; $5ac6: $2e $2f
	ld   c, $0f                                      ; $5ac8: $0e $0f
	ld   h, $27                                      ; $5aca: $26 $27
	jr   nc, jr_084_5aff                             ; $5acc: $30 $31

	ld   [hl-], a                                    ; $5ace: $32
	inc  sp                                          ; $5acf: $33
	inc  [hl]                                        ; $5ad0: $34
	dec  [hl]                                        ; $5ad1: $35
	ld   [hl], $27                                   ; $5ad2: $36 $27
	jr   z, jr_084_5aff                              ; $5ad4: $28 $29

	ld   a, [hl+]                                    ; $5ad6: $2a
	ld   a, [hl-]                                    ; $5ad7: $3a
	dec  sp                                          ; $5ad8: $3b
	dec  a                                           ; $5ad9: $3d
	ld   a, $3f                                      ; $5ada: $3e $3f
	ld   e, $1f                                      ; $5adc: $1e $1f
	ld   h, $27                                      ; $5ade: $26 $27
	ld   b, b                                        ; $5ae0: $40
	ld   b, c                                        ; $5ae1: $41
	ld   a, $43                                      ; $5ae2: $3e $43
	ld   b, h                                        ; $5ae4: $44
	dec  [hl]                                        ; $5ae5: $35
	ld   b, [hl]                                     ; $5ae6: $46
	ld   b, a                                        ; $5ae7: $47
	jr   z, jr_084_5b13                              ; $5ae8: $28 $29

	ld   c, d                                        ; $5aea: $4a

jr_084_5aeb:
	inc  a                                           ; $5aeb: $3c
	dec  a                                           ; $5aec: $3d
	ld   c, l                                        ; $5aed: $4d
	ld   c, [hl]                                     ; $5aee: $4e
	ld   c, a                                        ; $5aef: $4f
	jr   z, jr_084_5b1b                              ; $5af0: $28 $29

	ld   h, $27                                      ; $5af2: $26 $27
	ld   d, b                                        ; $5af4: $50
	ld   d, c                                        ; $5af5: $51
	ccf                                              ; $5af6: $3f
	ld   b, b                                        ; $5af7: $40
	ld   b, c                                        ; $5af8: $41
	ld   d, l                                        ; $5af9: $55
	ld   b, [hl]                                     ; $5afa: $46
	daa                                              ; $5afb: $27
	jr   z, jr_084_5b27                              ; $5afc: $28 $29

	ld   e, d                                        ; $5afe: $5a

jr_084_5aff:
	ld   e, e                                        ; $5aff: $5b
	ld   e, h                                        ; $5b00: $5c
	ld   e, l                                        ; $5b01: $5d
	ld   e, [hl]                                     ; $5b02: $5e
	ld   e, a                                        ; $5b03: $5f
	ld   c, b                                        ; $5b04: $48
	ld   c, c                                        ; $5b05: $49
	ld   h, $27                                      ; $5b06: $26 $27
	ld   h, b                                        ; $5b08: $60
	ld   h, c                                        ; $5b09: $61
	ld   b, d                                        ; $5b0a: $42
	ld   b, e                                        ; $5b0b: $43
	ld   b, h                                        ; $5b0c: $44
	ld   b, l                                        ; $5b0d: $45
	ld   h, [hl]                                     ; $5b0e: $66
	ld   h, a                                        ; $5b0f: $67
	ld   l, b                                        ; $5b10: $68
	ld   l, c                                        ; $5b11: $69
	ld   l, d                                        ; $5b12: $6a

jr_084_5b13:
	ld   l, e                                        ; $5b13: $6b
	ld   l, h                                        ; $5b14: $6c
	ld   l, l                                        ; $5b15: $6d
	ld   l, [hl]                                     ; $5b16: $6e
	ld   l, a                                        ; $5b17: $6f
	ld   d, [hl]                                     ; $5b18: $56
	ld   d, a                                        ; $5b19: $57
	ld   e, b                                        ; $5b1a: $58

jr_084_5b1b:
	ld   e, c                                        ; $5b1b: $59
	ld   [hl], b                                     ; $5b1c: $70
	ld   [hl], c                                     ; $5b1d: $71
	ld   [hl], d                                     ; $5b1e: $72
	ld   b, [hl]                                     ; $5b1f: $46
	ld   b, a                                        ; $5b20: $47
	ld   c, b                                        ; $5b21: $48
	halt                                             ; $5b22: $76
	ld   [hl], a                                     ; $5b23: $77
	ld   a, b                                        ; $5b24: $78
	ld   a, c                                        ; $5b25: $79
	ld   a, d                                        ; $5b26: $7a

jr_084_5b27:
	ld   a, e                                        ; $5b27: $7b
	ld   a, h                                        ; $5b28: $7c
	ld   a, l                                        ; $5b29: $7d
	ld   a, [hl]                                     ; $5b2a: $7e
	ld   a, a                                        ; $5b2b: $7f
	scf                                              ; $5b2c: $37
	jr   c, jr_084_5b68                              ; $5b2d: $38 $39

	ld   a, [hl-]                                    ; $5b2f: $3a
	nop                                              ; $5b30: $00
	ld   bc, $0302                                   ; $5b31: $01 $02 $03
	inc  b                                           ; $5b34: $04
	dec  b                                           ; $5b35: $05
	ld   b, $07                                      ; $5b36: $06 $07
	ld   [$0a09], sp                                 ; $5b38: $08 $09 $0a
	dec  bc                                          ; $5b3b: $0b
	inc  c                                           ; $5b3c: $0c
	dec  c                                           ; $5b3d: $0d
	dec  c                                           ; $5b3e: $0d
	ld   b, l                                        ; $5b3f: $45
	ld   b, $07                                      ; $5b40: $06 $07
	ld   [$1009], sp                                 ; $5b42: $08 $09 $10
	ld   de, $1312                                   ; $5b45: $11 $12 $13
	inc  d                                           ; $5b48: $14
	dec  d                                           ; $5b49: $15
	ld   d, $17                                      ; $5b4a: $16 $17
	jr   jr_084_5b67                                 ; $5b4c: $18 $19

	ld   a, [de]                                     ; $5b4e: $1a
	dec  de                                          ; $5b4f: $1b
	inc  e                                           ; $5b50: $1c
	dec  e                                           ; $5b51: $1d
	dec  c                                           ; $5b52: $0d
	dec  c                                           ; $5b53: $0d
	dec  c                                           ; $5b54: $0d
	dec  c                                           ; $5b55: $0d
	dec  c                                           ; $5b56: $0d
	dec  b                                           ; $5b57: $05
	dec  b                                           ; $5b58: $05
	dec  b                                           ; $5b59: $05
	inc  b                                           ; $5b5a: $04
	inc  b                                           ; $5b5b: $04
	inc  b                                           ; $5b5c: $04
	inc  b                                           ; $5b5d: $04
	inc  b                                           ; $5b5e: $04
	inc  b                                           ; $5b5f: $04
	inc  b                                           ; $5b60: $04
	inc  b                                           ; $5b61: $04
	inc  b                                           ; $5b62: $04
	inc  b                                           ; $5b63: $04
	inc  b                                           ; $5b64: $04
	inc  b                                           ; $5b65: $04
	inc  b                                           ; $5b66: $04

jr_084_5b67:
	inc  b                                           ; $5b67: $04

jr_084_5b68:
	inc  c                                           ; $5b68: $0c
	dec  c                                           ; $5b69: $0d
	dec  c                                           ; $5b6a: $0d
	dec  c                                           ; $5b6b: $0d
	dec  b                                           ; $5b6c: $05
	dec  b                                           ; $5b6d: $05
	inc  b                                           ; $5b6e: $04
	inc  b                                           ; $5b6f: $04
	inc  b                                           ; $5b70: $04
	inc  b                                           ; $5b71: $04
	inc  b                                           ; $5b72: $04
	inc  b                                           ; $5b73: $04
	inc  b                                           ; $5b74: $04
	inc  b                                           ; $5b75: $04
	inc  b                                           ; $5b76: $04
	inc  b                                           ; $5b77: $04
	inc  b                                           ; $5b78: $04
	inc  b                                           ; $5b79: $04
	inc  b                                           ; $5b7a: $04
	inc  b                                           ; $5b7b: $04
	inc  c                                           ; $5b7c: $0c
	inc  c                                           ; $5b7d: $0c
	dec  c                                           ; $5b7e: $0d
	dec  c                                           ; $5b7f: $0d
	dec  b                                           ; $5b80: $05
	dec  b                                           ; $5b81: $05
	inc  b                                           ; $5b82: $04
	inc  b                                           ; $5b83: $04
	inc  b                                           ; $5b84: $04
	inc  b                                           ; $5b85: $04
	inc  b                                           ; $5b86: $04
	inc  b                                           ; $5b87: $04
	inc  b                                           ; $5b88: $04
	inc  b                                           ; $5b89: $04
	inc  b                                           ; $5b8a: $04
	inc  b                                           ; $5b8b: $04
	inc  b                                           ; $5b8c: $04
	inc  b                                           ; $5b8d: $04
	dec  b                                           ; $5b8e: $05
	inc  b                                           ; $5b8f: $04
	dec  bc                                          ; $5b90: $0b
	inc  c                                           ; $5b91: $0c
	dec  c                                           ; $5b92: $0d
	dec  c                                           ; $5b93: $0d
	dec  b                                           ; $5b94: $05
	inc  b                                           ; $5b95: $04
	inc  b                                           ; $5b96: $04
	inc  b                                           ; $5b97: $04
	inc  b                                           ; $5b98: $04
	inc  b                                           ; $5b99: $04
	inc  b                                           ; $5b9a: $04
	inc  b                                           ; $5b9b: $04
	inc  b                                           ; $5b9c: $04
	inc  b                                           ; $5b9d: $04
	inc  b                                           ; $5b9e: $04
	dec  bc                                          ; $5b9f: $0b
	dec  bc                                          ; $5ba0: $0b
	inc  b                                           ; $5ba1: $04
	inc  bc                                          ; $5ba2: $03
	inc  b                                           ; $5ba3: $04
	inc  c                                           ; $5ba4: $0c
	inc  c                                           ; $5ba5: $0c
	dec  c                                           ; $5ba6: $0d
	dec  c                                           ; $5ba7: $0d
	dec  b                                           ; $5ba8: $05
	dec  b                                           ; $5ba9: $05
	dec  bc                                          ; $5baa: $0b
	inc  b                                           ; $5bab: $04
	inc  b                                           ; $5bac: $04
	inc  b                                           ; $5bad: $04
	inc  b                                           ; $5bae: $04
	inc  b                                           ; $5baf: $04
	inc  b                                           ; $5bb0: $04
	inc  b                                           ; $5bb1: $04
	inc  b                                           ; $5bb2: $04
	inc  c                                           ; $5bb3: $0c
	inc  c                                           ; $5bb4: $0c
	inc  b                                           ; $5bb5: $04
	inc  bc                                          ; $5bb6: $03
	inc  b                                           ; $5bb7: $04
	inc  c                                           ; $5bb8: $0c
	inc  c                                           ; $5bb9: $0c
	dec  c                                           ; $5bba: $0d
	dec  c                                           ; $5bbb: $0d
	inc  b                                           ; $5bbc: $04
	inc  b                                           ; $5bbd: $04
	inc  c                                           ; $5bbe: $0c
	dec  bc                                          ; $5bbf: $0b
	inc  c                                           ; $5bc0: $0c
	inc  b                                           ; $5bc1: $04
	inc  b                                           ; $5bc2: $04
	inc  b                                           ; $5bc3: $04
	inc  b                                           ; $5bc4: $04
	inc  b                                           ; $5bc5: $04
	inc  b                                           ; $5bc6: $04
	inc  bc                                          ; $5bc7: $03
	inc  bc                                          ; $5bc8: $03
	inc  b                                           ; $5bc9: $04
	inc  b                                           ; $5bca: $04
	inc  b                                           ; $5bcb: $04
	inc  b                                           ; $5bcc: $04
	inc  b                                           ; $5bcd: $04
	dec  c                                           ; $5bce: $0d
	dec  c                                           ; $5bcf: $0d
	inc  b                                           ; $5bd0: $04
	inc  b                                           ; $5bd1: $04
	inc  c                                           ; $5bd2: $0c
	dec  bc                                          ; $5bd3: $0b
	inc  c                                           ; $5bd4: $0c
	inc  c                                           ; $5bd5: $0c
	inc  b                                           ; $5bd6: $04
	inc  b                                           ; $5bd7: $04
	inc  b                                           ; $5bd8: $04
	inc  b                                           ; $5bd9: $04
	inc  b                                           ; $5bda: $04
	inc  b                                           ; $5bdb: $04
	inc  b                                           ; $5bdc: $04
	inc  b                                           ; $5bdd: $04
	inc  b                                           ; $5bde: $04
	inc  b                                           ; $5bdf: $04
	inc  b                                           ; $5be0: $04
	inc  b                                           ; $5be1: $04
	inc  b                                           ; $5be2: $04
	dec  b                                           ; $5be3: $05
	inc  b                                           ; $5be4: $04
	inc  b                                           ; $5be5: $04
	inc  b                                           ; $5be6: $04
	inc  c                                           ; $5be7: $0c
	dec  bc                                          ; $5be8: $0b
	inc  c                                           ; $5be9: $0c
	inc  b                                           ; $5bea: $04
	inc  b                                           ; $5beb: $04
	inc  b                                           ; $5bec: $04
	inc  b                                           ; $5bed: $04
	inc  b                                           ; $5bee: $04
	dec  b                                           ; $5bef: $05
	dec  b                                           ; $5bf0: $05
	dec  b                                           ; $5bf1: $05
	inc  b                                           ; $5bf2: $04
	inc  b                                           ; $5bf3: $04
	inc  b                                           ; $5bf4: $04
	inc  b                                           ; $5bf5: $04
	inc  b                                           ; $5bf6: $04
	dec  b                                           ; $5bf7: $05
	dec  c                                           ; $5bf8: $0d
	inc  c                                           ; $5bf9: $0c
	inc  c                                           ; $5bfa: $0c
	inc  c                                           ; $5bfb: $0c
	inc  c                                           ; $5bfc: $0c
	inc  c                                           ; $5bfd: $0c
	inc  c                                           ; $5bfe: $0c
	inc  c                                           ; $5bff: $0c
	inc  c                                           ; $5c00: $0c
	inc  c                                           ; $5c01: $0c
	inc  c                                           ; $5c02: $0c
	inc  c                                           ; $5c03: $0c
	inc  c                                           ; $5c04: $0c
	inc  c                                           ; $5c05: $0c
	inc  c                                           ; $5c06: $0c
	inc  b                                           ; $5c07: $04
	inc  b                                           ; $5c08: $04
	inc  b                                           ; $5c09: $04
	inc  b                                           ; $5c0a: $04
	dec  b                                           ; $5c0b: $05
	dec  c                                           ; $5c0c: $0d
	inc  c                                           ; $5c0d: $0c
	inc  c                                           ; $5c0e: $0c
	inc  c                                           ; $5c0f: $0c
	inc  c                                           ; $5c10: $0c
	inc  c                                           ; $5c11: $0c
	inc  c                                           ; $5c12: $0c
	inc  c                                           ; $5c13: $0c
	inc  c                                           ; $5c14: $0c
	inc  c                                           ; $5c15: $0c
	inc  c                                           ; $5c16: $0c
	inc  c                                           ; $5c17: $0c
	inc  c                                           ; $5c18: $0c
	inc  c                                           ; $5c19: $0c
	inc  c                                           ; $5c1a: $0c
	inc  c                                           ; $5c1b: $0c
	inc  c                                           ; $5c1c: $0c
	inc  c                                           ; $5c1d: $0c
	inc  c                                           ; $5c1e: $0c
	inc  b                                           ; $5c1f: $04
	nop                                              ; $5c20: $00
	ld   bc, $0302                                   ; $5c21: $01 $02 $03
	inc  b                                           ; $5c24: $04
	inc  b                                           ; $5c25: $04
	inc  b                                           ; $5c26: $04
	ld   a, [hl+]                                    ; $5c27: $2a
	dec  hl                                          ; $5c28: $2b
	inc  b                                           ; $5c29: $04
	ld   a, [bc]                                     ; $5c2a: $0a
	dec  bc                                          ; $5c2b: $0b
	inc  c                                           ; $5c2c: $0c
	dec  c                                           ; $5c2d: $0d
	ld   c, $0f                                      ; $5c2e: $0e $0f
	jr   nz, jr_084_5c53                             ; $5c30: $20 $21

	ld   [hl+], a                                    ; $5c32: $22
	inc  hl                                          ; $5c33: $23
	db   $10                                         ; $5c34: $10
	ld   de, $1312                                   ; $5c35: $11 $12 $13
	inc  d                                           ; $5c38: $14
	dec  d                                           ; $5c39: $15
	ld   d, $2c                                      ; $5c3a: $16 $2c
	dec  l                                           ; $5c3c: $2d
	ld   l, $2f                                      ; $5c3d: $2e $2f
	dec  de                                          ; $5c3f: $1b
	inc  e                                           ; $5c40: $1c
	dec  e                                           ; $5c41: $1d
	ld   e, $1f                                      ; $5c42: $1e $1f
	inc  h                                           ; $5c44: $24
	dec  h                                           ; $5c45: $25
	ld   h, $27                                      ; $5c46: $26 $27
	jr   nz, @+$23                                   ; $5c48: $20 $21

	ld   [hl+], a                                    ; $5c4a: $22
	inc  hl                                          ; $5c4b: $23
	inc  h                                           ; $5c4c: $24
	dec  h                                           ; $5c4d: $25
	ld   h, $30                                      ; $5c4e: $26 $30
	ld   sp, $2a32                                   ; $5c50: $31 $32 $2a

jr_084_5c53:
	dec  hl                                          ; $5c53: $2b
	inc  l                                           ; $5c54: $2c
	dec  l                                           ; $5c55: $2d
	ld   l, $2f                                      ; $5c56: $2e $2f
	ld   c, $0f                                      ; $5c58: $0e $0f
	ld   h, $27                                      ; $5c5a: $26 $27
	jr   nc, jr_084_5c8f                             ; $5c5c: $30 $31

	ld   [hl-], a                                    ; $5c5e: $32
	inc  sp                                          ; $5c5f: $33
	inc  [hl]                                        ; $5c60: $34
	dec  [hl]                                        ; $5c61: $35
	ld   [hl], $30                                   ; $5c62: $36 $30
	ld   sp, $2a32                                   ; $5c64: $31 $32 $2a
	ld   a, [hl-]                                    ; $5c67: $3a
	dec  sp                                          ; $5c68: $3b
	dec  a                                           ; $5c69: $3d
	ld   a, $3f                                      ; $5c6a: $3e $3f
	ld   e, $1f                                      ; $5c6c: $1e $1f
	ld   h, $27                                      ; $5c6e: $26 $27
	ld   b, b                                        ; $5c70: $40
	ld   b, c                                        ; $5c71: $41
	ld   a, $43                                      ; $5c72: $3e $43
	ld   b, h                                        ; $5c74: $44
	dec  [hl]                                        ; $5c75: $35
	ld   b, [hl]                                     ; $5c76: $46
	inc  sp                                          ; $5c77: $33
	inc  [hl]                                        ; $5c78: $34
	ld   [hl-], a                                    ; $5c79: $32
	ld   c, d                                        ; $5c7a: $4a
	inc  a                                           ; $5c7b: $3c
	dec  a                                           ; $5c7c: $3d
	ld   c, l                                        ; $5c7d: $4d
	ld   c, [hl]                                     ; $5c7e: $4e
	ld   c, a                                        ; $5c7f: $4f
	jr   z, jr_084_5cab                              ; $5c80: $28 $29

	ld   h, $27                                      ; $5c82: $26 $27
	ld   d, b                                        ; $5c84: $50
	ld   d, c                                        ; $5c85: $51
	ccf                                              ; $5c86: $3f
	ld   b, b                                        ; $5c87: $40
	ld   b, c                                        ; $5c88: $41
	ld   d, l                                        ; $5c89: $55
	ld   b, [hl]                                     ; $5c8a: $46
	jr   nc, @+$33                                   ; $5c8b: $30 $31

	ld   [hl-], a                                    ; $5c8d: $32
	ld   e, d                                        ; $5c8e: $5a

jr_084_5c8f:
	ld   e, e                                        ; $5c8f: $5b
	ld   e, h                                        ; $5c90: $5c
	ld   e, l                                        ; $5c91: $5d
	ld   e, [hl]                                     ; $5c92: $5e
	ld   e, a                                        ; $5c93: $5f
	ld   c, b                                        ; $5c94: $48
	ld   c, c                                        ; $5c95: $49
	ld   h, $27                                      ; $5c96: $26 $27
	ld   h, b                                        ; $5c98: $60
	ld   h, c                                        ; $5c99: $61
	ld   b, d                                        ; $5c9a: $42
	ld   b, e                                        ; $5c9b: $43
	ld   b, h                                        ; $5c9c: $44
	ld   b, l                                        ; $5c9d: $45
	ld   h, [hl]                                     ; $5c9e: $66
	dec  [hl]                                        ; $5c9f: $35
	ld   sp, $6a36                                   ; $5ca0: $31 $36 $6a
	ld   l, e                                        ; $5ca3: $6b
	ld   l, h                                        ; $5ca4: $6c
	ld   l, l                                        ; $5ca5: $6d
	ld   l, [hl]                                     ; $5ca6: $6e
	ld   l, a                                        ; $5ca7: $6f
	ld   d, [hl]                                     ; $5ca8: $56
	ld   d, a                                        ; $5ca9: $57
	ld   e, b                                        ; $5caa: $58

jr_084_5cab:
	ld   e, c                                        ; $5cab: $59
	ld   [hl], b                                     ; $5cac: $70
	ld   [hl], c                                     ; $5cad: $71
	ld   [hl], d                                     ; $5cae: $72
	ld   b, [hl]                                     ; $5caf: $46
	ld   b, a                                        ; $5cb0: $47
	ld   c, b                                        ; $5cb1: $48
	halt                                             ; $5cb2: $76
	scf                                              ; $5cb3: $37
	jr   c, jr_084_5cef                              ; $5cb4: $38 $39

	ld   a, d                                        ; $5cb6: $7a
	ld   a, e                                        ; $5cb7: $7b
	ld   a, h                                        ; $5cb8: $7c
	ld   a, l                                        ; $5cb9: $7d
	ld   a, [hl]                                     ; $5cba: $7e
	ld   a, a                                        ; $5cbb: $7f
	scf                                              ; $5cbc: $37
	jr   c, jr_084_5cf8                              ; $5cbd: $38 $39

	ld   a, [hl-]                                    ; $5cbf: $3a
	nop                                              ; $5cc0: $00
	ld   bc, $0302                                   ; $5cc1: $01 $02 $03
	inc  b                                           ; $5cc4: $04
	dec  b                                           ; $5cc5: $05
	ld   b, $07                                      ; $5cc6: $06 $07
	ld   [$0a09], sp                                 ; $5cc8: $08 $09 $0a
	dec  bc                                          ; $5ccb: $0b
	inc  c                                           ; $5ccc: $0c
	dec  c                                           ; $5ccd: $0d
	dec  c                                           ; $5cce: $0d
	ld   b, l                                        ; $5ccf: $45
	ld   b, $07                                      ; $5cd0: $06 $07
	ld   [$1009], sp                                 ; $5cd2: $08 $09 $10
	ld   de, $1312                                   ; $5cd5: $11 $12 $13
	inc  d                                           ; $5cd8: $14
	dec  d                                           ; $5cd9: $15
	ld   d, $17                                      ; $5cda: $16 $17
	jr   jr_084_5cf7                                 ; $5cdc: $18 $19

	ld   a, [de]                                     ; $5cde: $1a
	dec  de                                          ; $5cdf: $1b
	inc  e                                           ; $5ce0: $1c
	dec  e                                           ; $5ce1: $1d
	dec  c                                           ; $5ce2: $0d
	dec  c                                           ; $5ce3: $0d
	dec  c                                           ; $5ce4: $0d
	dec  c                                           ; $5ce5: $0d
	dec  c                                           ; $5ce6: $0d
	dec  b                                           ; $5ce7: $05
	dec  b                                           ; $5ce8: $05
	dec  b                                           ; $5ce9: $05
	inc  b                                           ; $5cea: $04
	inc  b                                           ; $5ceb: $04
	inc  b                                           ; $5cec: $04
	inc  b                                           ; $5ced: $04
	inc  b                                           ; $5cee: $04

jr_084_5cef:
	inc  c                                           ; $5cef: $0c
	inc  c                                           ; $5cf0: $0c
	inc  b                                           ; $5cf1: $04
	inc  b                                           ; $5cf2: $04
	inc  b                                           ; $5cf3: $04
	inc  b                                           ; $5cf4: $04
	inc  b                                           ; $5cf5: $04
	inc  b                                           ; $5cf6: $04

jr_084_5cf7:
	inc  b                                           ; $5cf7: $04

jr_084_5cf8:
	inc  c                                           ; $5cf8: $0c
	dec  c                                           ; $5cf9: $0d
	dec  c                                           ; $5cfa: $0d
	dec  c                                           ; $5cfb: $0d
	dec  b                                           ; $5cfc: $05
	dec  b                                           ; $5cfd: $05
	inc  b                                           ; $5cfe: $04
	inc  b                                           ; $5cff: $04
	inc  b                                           ; $5d00: $04
	inc  b                                           ; $5d01: $04
	inc  b                                           ; $5d02: $04
	inc  c                                           ; $5d03: $0c
	inc  c                                           ; $5d04: $0c
	inc  c                                           ; $5d05: $0c
	inc  c                                           ; $5d06: $0c
	inc  b                                           ; $5d07: $04
	inc  b                                           ; $5d08: $04
	inc  b                                           ; $5d09: $04
	inc  b                                           ; $5d0a: $04
	inc  b                                           ; $5d0b: $04
	inc  c                                           ; $5d0c: $0c
	inc  c                                           ; $5d0d: $0c
	dec  c                                           ; $5d0e: $0d
	dec  c                                           ; $5d0f: $0d
	dec  b                                           ; $5d10: $05
	dec  b                                           ; $5d11: $05
	inc  b                                           ; $5d12: $04
	inc  b                                           ; $5d13: $04
	inc  b                                           ; $5d14: $04
	inc  b                                           ; $5d15: $04
	inc  b                                           ; $5d16: $04
	inc  c                                           ; $5d17: $0c
	inc  c                                           ; $5d18: $0c
	inc  c                                           ; $5d19: $0c
	inc  b                                           ; $5d1a: $04
	inc  b                                           ; $5d1b: $04
	inc  b                                           ; $5d1c: $04
	inc  b                                           ; $5d1d: $04
	dec  b                                           ; $5d1e: $05
	inc  b                                           ; $5d1f: $04
	dec  bc                                          ; $5d20: $0b
	inc  c                                           ; $5d21: $0c
	dec  c                                           ; $5d22: $0d
	dec  c                                           ; $5d23: $0d
	dec  b                                           ; $5d24: $05
	inc  b                                           ; $5d25: $04
	inc  b                                           ; $5d26: $04
	inc  b                                           ; $5d27: $04
	inc  b                                           ; $5d28: $04
	inc  b                                           ; $5d29: $04
	inc  b                                           ; $5d2a: $04
	inc  c                                           ; $5d2b: $0c
	inc  c                                           ; $5d2c: $0c
	inc  c                                           ; $5d2d: $0c
	inc  b                                           ; $5d2e: $04
	dec  bc                                          ; $5d2f: $0b
	dec  bc                                          ; $5d30: $0b
	inc  b                                           ; $5d31: $04
	inc  bc                                          ; $5d32: $03
	inc  b                                           ; $5d33: $04
	inc  c                                           ; $5d34: $0c
	inc  c                                           ; $5d35: $0c
	dec  c                                           ; $5d36: $0d
	dec  c                                           ; $5d37: $0d
	dec  b                                           ; $5d38: $05
	dec  b                                           ; $5d39: $05
	dec  bc                                          ; $5d3a: $0b
	inc  b                                           ; $5d3b: $04
	inc  b                                           ; $5d3c: $04
	inc  b                                           ; $5d3d: $04
	inc  b                                           ; $5d3e: $04
	inc  c                                           ; $5d3f: $0c
	inc  c                                           ; $5d40: $0c
	inc  c                                           ; $5d41: $0c
	inc  b                                           ; $5d42: $04
	inc  c                                           ; $5d43: $0c
	inc  c                                           ; $5d44: $0c
	inc  b                                           ; $5d45: $04
	inc  bc                                          ; $5d46: $03
	inc  b                                           ; $5d47: $04
	inc  c                                           ; $5d48: $0c
	inc  c                                           ; $5d49: $0c
	dec  c                                           ; $5d4a: $0d
	dec  c                                           ; $5d4b: $0d
	inc  b                                           ; $5d4c: $04
	inc  b                                           ; $5d4d: $04
	inc  c                                           ; $5d4e: $0c
	dec  bc                                          ; $5d4f: $0b
	inc  c                                           ; $5d50: $0c
	inc  b                                           ; $5d51: $04
	inc  b                                           ; $5d52: $04
	inc  c                                           ; $5d53: $0c
	inc  c                                           ; $5d54: $0c
	inc  c                                           ; $5d55: $0c
	inc  b                                           ; $5d56: $04
	inc  bc                                          ; $5d57: $03
	inc  bc                                          ; $5d58: $03
	inc  b                                           ; $5d59: $04
	inc  b                                           ; $5d5a: $04
	inc  b                                           ; $5d5b: $04
	inc  b                                           ; $5d5c: $04
	inc  b                                           ; $5d5d: $04
	dec  c                                           ; $5d5e: $0d
	dec  c                                           ; $5d5f: $0d
	inc  b                                           ; $5d60: $04
	inc  b                                           ; $5d61: $04
	inc  c                                           ; $5d62: $0c
	dec  bc                                          ; $5d63: $0b
	inc  c                                           ; $5d64: $0c
	inc  c                                           ; $5d65: $0c
	inc  b                                           ; $5d66: $04
	inc  c                                           ; $5d67: $0c
	inc  c                                           ; $5d68: $0c
	inc  c                                           ; $5d69: $0c
	inc  b                                           ; $5d6a: $04
	inc  b                                           ; $5d6b: $04
	inc  b                                           ; $5d6c: $04
	inc  b                                           ; $5d6d: $04
	inc  b                                           ; $5d6e: $04
	inc  b                                           ; $5d6f: $04
	inc  b                                           ; $5d70: $04
	inc  b                                           ; $5d71: $04
	inc  b                                           ; $5d72: $04
	dec  b                                           ; $5d73: $05
	inc  b                                           ; $5d74: $04
	inc  b                                           ; $5d75: $04
	inc  b                                           ; $5d76: $04
	inc  c                                           ; $5d77: $0c
	dec  bc                                          ; $5d78: $0b
	inc  c                                           ; $5d79: $0c
	inc  b                                           ; $5d7a: $04
	inc  c                                           ; $5d7b: $0c
	inc  c                                           ; $5d7c: $0c
	inc  c                                           ; $5d7d: $0c
	inc  b                                           ; $5d7e: $04
	dec  b                                           ; $5d7f: $05
	dec  b                                           ; $5d80: $05
	dec  b                                           ; $5d81: $05
	inc  b                                           ; $5d82: $04
	inc  b                                           ; $5d83: $04
	inc  b                                           ; $5d84: $04
	inc  b                                           ; $5d85: $04
	inc  b                                           ; $5d86: $04
	dec  b                                           ; $5d87: $05
	dec  c                                           ; $5d88: $0d
	inc  c                                           ; $5d89: $0c
	inc  c                                           ; $5d8a: $0c
	inc  c                                           ; $5d8b: $0c
	inc  c                                           ; $5d8c: $0c
	inc  c                                           ; $5d8d: $0c
	inc  c                                           ; $5d8e: $0c
	inc  c                                           ; $5d8f: $0c
	inc  c                                           ; $5d90: $0c
	inc  c                                           ; $5d91: $0c
	inc  c                                           ; $5d92: $0c
	inc  c                                           ; $5d93: $0c
	inc  c                                           ; $5d94: $0c
	inc  c                                           ; $5d95: $0c
	inc  c                                           ; $5d96: $0c
	inc  b                                           ; $5d97: $04
	inc  b                                           ; $5d98: $04
	inc  b                                           ; $5d99: $04
	inc  b                                           ; $5d9a: $04
	dec  b                                           ; $5d9b: $05
	dec  c                                           ; $5d9c: $0d
	inc  c                                           ; $5d9d: $0c
	inc  c                                           ; $5d9e: $0c
	inc  c                                           ; $5d9f: $0c
	inc  c                                           ; $5da0: $0c
	inc  c                                           ; $5da1: $0c
	inc  c                                           ; $5da2: $0c
	inc  c                                           ; $5da3: $0c
	inc  c                                           ; $5da4: $0c
	inc  c                                           ; $5da5: $0c
	inc  c                                           ; $5da6: $0c
	inc  c                                           ; $5da7: $0c
	inc  c                                           ; $5da8: $0c
	inc  c                                           ; $5da9: $0c
	inc  c                                           ; $5daa: $0c
	inc  c                                           ; $5dab: $0c
	inc  c                                           ; $5dac: $0c
	inc  c                                           ; $5dad: $0c
	inc  c                                           ; $5dae: $0c
	inc  b                                           ; $5daf: $04
	nop                                              ; $5db0: $00
	ld   bc, $0302                                   ; $5db1: $01 $02 $03
	inc  b                                           ; $5db4: $04
	dec  b                                           ; $5db5: $05
	dec  b                                           ; $5db6: $05
	dec  b                                           ; $5db7: $05
	dec  b                                           ; $5db8: $05
	add  hl, bc                                      ; $5db9: $09
	ld   a, [bc]                                     ; $5dba: $0a
	dec  b                                           ; $5dbb: $05
	dec  b                                           ; $5dbc: $05
	dec  b                                           ; $5dbd: $05
	dec  b                                           ; $5dbe: $05
	dec  b                                           ; $5dbf: $05
	nop                                              ; $5dc0: $00
	ld   bc, $0302                                   ; $5dc1: $01 $02 $03
	db   $10                                         ; $5dc4: $10
	ld   de, $1312                                   ; $5dc5: $11 $12 $13
	inc  d                                           ; $5dc8: $14
	dec  d                                           ; $5dc9: $15
	ld   d, $16                                      ; $5dca: $16 $16
	ld   d, $19                                      ; $5dcc: $16 $19
	ld   a, [de]                                     ; $5dce: $1a
	ld   d, $16                                      ; $5dcf: $16 $16
	ld   d, $1e                                      ; $5dd1: $16 $1e
	rra                                              ; $5dd3: $1f
	db   $10                                         ; $5dd4: $10
	ld   de, $1312                                   ; $5dd5: $11 $12 $13
	jr   nz, @+$23                                   ; $5dd8: $20 $21

	ld   [hl+], a                                    ; $5dda: $22
	inc  hl                                          ; $5ddb: $23
	inc  h                                           ; $5ddc: $24
	dec  h                                           ; $5ddd: $25
	ld   h, $27                                      ; $5dde: $26 $27
	jr   z, jr_084_5e0b                              ; $5de0: $28 $29

	ld   a, [hl+]                                    ; $5de2: $2a
	dec  hl                                          ; $5de3: $2b
	inc  l                                           ; $5de4: $2c
	dec  l                                           ; $5de5: $2d
	ld   l, $2f                                      ; $5de6: $2e $2f
	inc  b                                           ; $5de8: $04
	dec  b                                           ; $5de9: $05
	ld   h, d                                        ; $5dea: $62
	rlca                                             ; $5deb: $07
	jr   nc, jr_084_5e1f                             ; $5dec: $30 $31

	ld   [hl-], a                                    ; $5dee: $32
	inc  sp                                          ; $5def: $33
	inc  [hl]                                        ; $5df0: $34
	dec  [hl]                                        ; $5df1: $35
	ld   [hl], $37                                   ; $5df2: $36 $37
	jr   c, jr_084_5e2f                              ; $5df4: $38 $39

	ld   a, [hl-]                                    ; $5df6: $3a
	dec  sp                                          ; $5df7: $3b
	inc  a                                           ; $5df8: $3c
	dec  a                                           ; $5df9: $3d
	ld   a, $3f                                      ; $5dfa: $3e $3f
	inc  d                                           ; $5dfc: $14
	ld   h, e                                        ; $5dfd: $63
	ld   h, h                                        ; $5dfe: $64
	rla                                              ; $5dff: $17
	ld   b, b                                        ; $5e00: $40
	ld   b, c                                        ; $5e01: $41
	ld   b, d                                        ; $5e02: $42
	ld   b, e                                        ; $5e03: $43
	inc  [hl]                                        ; $5e04: $34
	ld   b, l                                        ; $5e05: $45
	ld   b, [hl]                                     ; $5e06: $46
	ld   b, a                                        ; $5e07: $47
	ld   c, b                                        ; $5e08: $48
	ld   c, c                                        ; $5e09: $49
	ld   c, d                                        ; $5e0a: $4a

jr_084_5e0b:
	ld   c, e                                        ; $5e0b: $4b
	ld   c, h                                        ; $5e0c: $4c
	ld   c, l                                        ; $5e0d: $4d
	ld   c, [hl]                                     ; $5e0e: $4e
	ld   c, a                                        ; $5e0f: $4f
	ld   [$6509], sp                                 ; $5e10: $08 $09 $65
	dec  bc                                          ; $5e13: $0b
	ld   d, b                                        ; $5e14: $50
	ld   d, c                                        ; $5e15: $51
	ld   d, d                                        ; $5e16: $52
	ld   d, e                                        ; $5e17: $53
	ld   d, h                                        ; $5e18: $54
	ld   d, l                                        ; $5e19: $55
	ld   d, [hl]                                     ; $5e1a: $56
	ld   d, a                                        ; $5e1b: $57
	ld   e, b                                        ; $5e1c: $58
	ld   e, c                                        ; $5e1d: $59
	ld   e, d                                        ; $5e1e: $5a

jr_084_5e1f:
	ld   e, e                                        ; $5e1f: $5b
	ld   e, h                                        ; $5e20: $5c
	ld   e, l                                        ; $5e21: $5d
	ld   e, [hl]                                     ; $5e22: $5e
	ld   e, a                                        ; $5e23: $5f
	jr   jr_084_5e3f                                 ; $5e24: $18 $19

	ld   a, [de]                                     ; $5e26: $1a
	dec  de                                          ; $5e27: $1b
	ld   h, b                                        ; $5e28: $60
	ld   h, c                                        ; $5e29: $61
	ld   h, d                                        ; $5e2a: $62
	ld   h, e                                        ; $5e2b: $63
	ld   h, h                                        ; $5e2c: $64
	ld   h, l                                        ; $5e2d: $65
	ld   h, [hl]                                     ; $5e2e: $66

jr_084_5e2f:
	ld   h, h                                        ; $5e2f: $64
	ld   l, b                                        ; $5e30: $68
	ld   l, c                                        ; $5e31: $69
	ld   l, d                                        ; $5e32: $6a
	ld   l, e                                        ; $5e33: $6b
	ld   h, h                                        ; $5e34: $64
	ld   l, l                                        ; $5e35: $6d
	ld   l, [hl]                                     ; $5e36: $6e
	ld   l, a                                        ; $5e37: $6f
	inc  c                                           ; $5e38: $0c
	dec  c                                           ; $5e39: $0d
	ld   c, $0f                                      ; $5e3a: $0e $0f
	ld   [hl], b                                     ; $5e3c: $70
	ld   [hl], c                                     ; $5e3d: $71
	ld   [hl], d                                     ; $5e3e: $72

jr_084_5e3f:
	ld   [hl], e                                     ; $5e3f: $73
	ld   [hl], h                                     ; $5e40: $74
	ld   [hl], l                                     ; $5e41: $75
	halt                                             ; $5e42: $76
	ld   [hl], h                                     ; $5e43: $74
	ld   a, b                                        ; $5e44: $78
	ld   a, c                                        ; $5e45: $79
	ld   a, d                                        ; $5e46: $7a
	ld   a, e                                        ; $5e47: $7b
	ld   [hl], h                                     ; $5e48: $74
	ld   a, l                                        ; $5e49: $7d
	ld   a, [hl]                                     ; $5e4a: $7e
	ld   a, a                                        ; $5e4b: $7f
	inc  e                                           ; $5e4c: $1c
	dec  e                                           ; $5e4d: $1d
	ld   e, $1f                                      ; $5e4e: $1e $1f
	ld   b, $07                                      ; $5e50: $06 $07
	ld   [$0c0b], sp                                 ; $5e52: $08 $0b $0c
	dec  c                                           ; $5e55: $0d
	ld   c, $0f                                      ; $5e56: $0e $0f
	rla                                              ; $5e58: $17
	jr   jr_084_5e76                                 ; $5e59: $18 $1b

	inc  e                                           ; $5e5b: $1c
	rrca                                             ; $5e5c: $0f
	dec  e                                           ; $5e5d: $1d
	ld   b, h                                        ; $5e5e: $44
	ld   b, h                                        ; $5e5f: $44
	jr   nz, jr_084_5e83                             ; $5e60: $20 $21

	ld   [hl+], a                                    ; $5e62: $22
	inc  hl                                          ; $5e63: $23
	ld   h, a                                        ; $5e64: $67
	ld   l, h                                        ; $5e65: $6c
	ld   [hl], a                                     ; $5e66: $77
	ld   a, h                                        ; $5e67: $7c
	jr   z, jr_084_5e79                              ; $5e68: $28 $0f

	rrca                                             ; $5e6a: $0f
	rrca                                             ; $5e6b: $0f
	rrca                                             ; $5e6c: $0f
	rrca                                             ; $5e6d: $0f
	rrca                                             ; $5e6e: $0f
	rrca                                             ; $5e6f: $0f
	rrca                                             ; $5e70: $0f
	rrca                                             ; $5e71: $0f
	rrca                                             ; $5e72: $0f
	rrca                                             ; $5e73: $0f
	inc  h                                           ; $5e74: $24
	dec  h                                           ; $5e75: $25

jr_084_5e76:
	ld   h, $27                                      ; $5e76: $26 $27
	inc  bc                                          ; $5e78: $03

jr_084_5e79:
	inc  bc                                          ; $5e79: $03
	inc  bc                                          ; $5e7a: $03
	inc  bc                                          ; $5e7b: $03
	inc  bc                                          ; $5e7c: $03
	inc  bc                                          ; $5e7d: $03
	inc  bc                                          ; $5e7e: $03
	inc  bc                                          ; $5e7f: $03
	inc  bc                                          ; $5e80: $03
	inc  bc                                          ; $5e81: $03
	inc  bc                                          ; $5e82: $03

jr_084_5e83:
	inc  bc                                          ; $5e83: $03
	inc  bc                                          ; $5e84: $03
	inc  bc                                          ; $5e85: $03
	inc  bc                                          ; $5e86: $03
	inc  bc                                          ; $5e87: $03
	dec  bc                                          ; $5e88: $0b
	dec  bc                                          ; $5e89: $0b
	dec  bc                                          ; $5e8a: $0b
	dec  bc                                          ; $5e8b: $0b
	inc  bc                                          ; $5e8c: $03
	inc  bc                                          ; $5e8d: $03
	inc  bc                                          ; $5e8e: $03
	inc  bc                                          ; $5e8f: $03
	inc  bc                                          ; $5e90: $03
	inc  bc                                          ; $5e91: $03
	inc  bc                                          ; $5e92: $03
	inc  bc                                          ; $5e93: $03
	inc  bc                                          ; $5e94: $03
	inc  bc                                          ; $5e95: $03
	inc  bc                                          ; $5e96: $03
	inc  bc                                          ; $5e97: $03
	inc  bc                                          ; $5e98: $03
	inc  bc                                          ; $5e99: $03
	inc  bc                                          ; $5e9a: $03
	inc  bc                                          ; $5e9b: $03
	dec  bc                                          ; $5e9c: $0b
	dec  bc                                          ; $5e9d: $0b
	dec  bc                                          ; $5e9e: $0b
	dec  bc                                          ; $5e9f: $0b
	inc  bc                                          ; $5ea0: $03
	inc  bc                                          ; $5ea1: $03
	inc  bc                                          ; $5ea2: $03
	inc  bc                                          ; $5ea3: $03
	inc  bc                                          ; $5ea4: $03
	inc  b                                           ; $5ea5: $04
	inc  b                                           ; $5ea6: $04
	inc  b                                           ; $5ea7: $04
	inc  b                                           ; $5ea8: $04
	inc  b                                           ; $5ea9: $04
	inc  b                                           ; $5eaa: $04
	inc  b                                           ; $5eab: $04
	inc  b                                           ; $5eac: $04
	inc  b                                           ; $5ead: $04
	inc  b                                           ; $5eae: $04
	inc  bc                                          ; $5eaf: $03
	dec  bc                                          ; $5eb0: $0b
	dec  bc                                          ; $5eb1: $0b
	dec  bc                                          ; $5eb2: $0b
	dec  bc                                          ; $5eb3: $0b
	dec  b                                           ; $5eb4: $05
	dec  b                                           ; $5eb5: $05
	inc  b                                           ; $5eb6: $04
	inc  bc                                          ; $5eb7: $03
	inc  bc                                          ; $5eb8: $03
	inc  b                                           ; $5eb9: $04
	inc  b                                           ; $5eba: $04
	inc  b                                           ; $5ebb: $04
	inc  b                                           ; $5ebc: $04
	inc  b                                           ; $5ebd: $04
	inc  b                                           ; $5ebe: $04
	inc  b                                           ; $5ebf: $04
	inc  b                                           ; $5ec0: $04
	inc  b                                           ; $5ec1: $04
	inc  bc                                          ; $5ec2: $03
	inc  bc                                          ; $5ec3: $03
	dec  bc                                          ; $5ec4: $0b
	dec  bc                                          ; $5ec5: $0b
	dec  c                                           ; $5ec6: $0d
	dec  bc                                          ; $5ec7: $0b
	dec  b                                           ; $5ec8: $05
	dec  b                                           ; $5ec9: $05
	inc  b                                           ; $5eca: $04
	inc  bc                                          ; $5ecb: $03
	inc  bc                                          ; $5ecc: $03
	inc  b                                           ; $5ecd: $04
	inc  b                                           ; $5ece: $04
	inc  b                                           ; $5ecf: $04
	inc  b                                           ; $5ed0: $04
	inc  b                                           ; $5ed1: $04
	inc  b                                           ; $5ed2: $04
	inc  b                                           ; $5ed3: $04
	inc  b                                           ; $5ed4: $04
	inc  b                                           ; $5ed5: $04
	inc  bc                                          ; $5ed6: $03
	inc  bc                                          ; $5ed7: $03
	dec  bc                                          ; $5ed8: $0b
	dec  bc                                          ; $5ed9: $0b
	dec  bc                                          ; $5eda: $0b
	dec  bc                                          ; $5edb: $0b
	dec  b                                           ; $5edc: $05
	dec  b                                           ; $5edd: $05
	inc  b                                           ; $5ede: $04
	inc  b                                           ; $5edf: $04
	inc  b                                           ; $5ee0: $04
	inc  b                                           ; $5ee1: $04
	inc  b                                           ; $5ee2: $04
	inc  b                                           ; $5ee3: $04
	inc  b                                           ; $5ee4: $04
	inc  b                                           ; $5ee5: $04
	inc  b                                           ; $5ee6: $04
	inc  b                                           ; $5ee7: $04
	inc  b                                           ; $5ee8: $04
	inc  b                                           ; $5ee9: $04
	inc  bc                                          ; $5eea: $03
	inc  bc                                          ; $5eeb: $03
	dec  bc                                          ; $5eec: $0b
	dec  bc                                          ; $5eed: $0b
	dec  c                                           ; $5eee: $0d
	dec  c                                           ; $5eef: $0d
	dec  b                                           ; $5ef0: $05
	dec  b                                           ; $5ef1: $05
	inc  b                                           ; $5ef2: $04
	inc  b                                           ; $5ef3: $04
	inc  bc                                          ; $5ef4: $03
	inc  b                                           ; $5ef5: $04
	inc  b                                           ; $5ef6: $04
	inc  bc                                          ; $5ef7: $03
	inc  b                                           ; $5ef8: $04
	inc  b                                           ; $5ef9: $04
	inc  b                                           ; $5efa: $04
	inc  b                                           ; $5efb: $04
	inc  bc                                          ; $5efc: $03
	inc  bc                                          ; $5efd: $03
	inc  bc                                          ; $5efe: $03
	inc  bc                                          ; $5eff: $03
	dec  bc                                          ; $5f00: $0b
	dec  bc                                          ; $5f01: $0b
	dec  bc                                          ; $5f02: $0b
	dec  bc                                          ; $5f03: $0b
	dec  b                                           ; $5f04: $05
	inc  bc                                          ; $5f05: $03
	inc  b                                           ; $5f06: $04
	inc  b                                           ; $5f07: $04
	inc  bc                                          ; $5f08: $03
	inc  b                                           ; $5f09: $04
	inc  b                                           ; $5f0a: $04
	inc  bc                                          ; $5f0b: $03
	inc  b                                           ; $5f0c: $04
	inc  b                                           ; $5f0d: $04
	inc  b                                           ; $5f0e: $04
	inc  b                                           ; $5f0f: $04
	inc  bc                                          ; $5f10: $03
	inc  bc                                          ; $5f11: $03
	inc  bc                                          ; $5f12: $03
	inc  bc                                          ; $5f13: $03
	dec  bc                                          ; $5f14: $0b
	dec  bc                                          ; $5f15: $0b
	dec  bc                                          ; $5f16: $0b
	dec  bc                                          ; $5f17: $0b
	inc  bc                                          ; $5f18: $03
	inc  bc                                          ; $5f19: $03
	inc  bc                                          ; $5f1a: $03
	inc  bc                                          ; $5f1b: $03
	inc  bc                                          ; $5f1c: $03
	dec  b                                           ; $5f1d: $05
	dec  b                                           ; $5f1e: $05
	dec  b                                           ; $5f1f: $05
	dec  b                                           ; $5f20: $05
	dec  b                                           ; $5f21: $05
	dec  b                                           ; $5f22: $05
	dec  b                                           ; $5f23: $05
	dec  b                                           ; $5f24: $05
	dec  b                                           ; $5f25: $05
	dec  b                                           ; $5f26: $05
	dec  b                                           ; $5f27: $05
	dec  c                                           ; $5f28: $0d
	dec  bc                                          ; $5f29: $0b
	dec  bc                                          ; $5f2a: $0b
	dec  bc                                          ; $5f2b: $0b
	dec  b                                           ; $5f2c: $05
	dec  b                                           ; $5f2d: $05
	dec  b                                           ; $5f2e: $05
	dec  b                                           ; $5f2f: $05
	dec  c                                           ; $5f30: $0d
	dec  b                                           ; $5f31: $05
	dec  b                                           ; $5f32: $05
	dec  b                                           ; $5f33: $05
	dec  b                                           ; $5f34: $05
	dec  b                                           ; $5f35: $05
	dec  b                                           ; $5f36: $05
	dec  b                                           ; $5f37: $05
	dec  b                                           ; $5f38: $05
	dec  b                                           ; $5f39: $05
	dec  b                                           ; $5f3a: $05
	dec  b                                           ; $5f3b: $05
	dec  c                                           ; $5f3c: $0d
	dec  c                                           ; $5f3d: $0d
	dec  c                                           ; $5f3e: $0d
	dec  c                                           ; $5f3f: $0d
	nop                                              ; $5f40: $00
	ld   bc, $0302                                   ; $5f41: $01 $02 $03
	ld   [hl], b                                     ; $5f44: $70
	ld   [hl], b                                     ; $5f45: $70
	ld   [hl], b                                     ; $5f46: $70
	ld   [hl], b                                     ; $5f47: $70
	ld   [hl], b                                     ; $5f48: $70
	ld   [hl], b                                     ; $5f49: $70
	ld   [hl], b                                     ; $5f4a: $70
	ld   [hl], b                                     ; $5f4b: $70
	ld   [hl], b                                     ; $5f4c: $70
	ld   [hl], b                                     ; $5f4d: $70
	ld   [hl], b                                     ; $5f4e: $70
	ld   [hl], b                                     ; $5f4f: $70
	nop                                              ; $5f50: $00
	ld   bc, $7202                                   ; $5f51: $01 $02 $72
	db   $10                                         ; $5f54: $10
	ld   de, $1312                                   ; $5f55: $11 $12 $13
	ld   [hl], c                                     ; $5f58: $71
	ld   [hl], c                                     ; $5f59: $71
	ld   [hl], c                                     ; $5f5a: $71
	ld   [hl], c                                     ; $5f5b: $71
	ld   [hl], c                                     ; $5f5c: $71
	ld   [hl], c                                     ; $5f5d: $71
	ld   [hl], c                                     ; $5f5e: $71
	ld   [hl], c                                     ; $5f5f: $71
	ld   [hl], c                                     ; $5f60: $71
	ld   [hl], c                                     ; $5f61: $71
	ld   [hl], c                                     ; $5f62: $71
	ld   l, a                                        ; $5f63: $6f
	db   $10                                         ; $5f64: $10
	ld   de, $7212                                   ; $5f65: $11 $12 $72
	ld   [hl], d                                     ; $5f68: $72
	ld   a, [hl]                                     ; $5f69: $7e
	ld   [hl], b                                     ; $5f6a: $70
	inc  hl                                          ; $5f6b: $23
	ld   l, e                                        ; $5f6c: $6b
	ld   l, h                                        ; $5f6d: $6c
	ld   [hl], e                                     ; $5f6e: $73
	ld   [hl], e                                     ; $5f6f: $73
	ld   [hl], e                                     ; $5f70: $73
	ld   [hl], e                                     ; $5f71: $73
	ld   [hl], e                                     ; $5f72: $73
	ld   [hl], e                                     ; $5f73: $73
	ld   [hl], e                                     ; $5f74: $73
	ld   l, l                                        ; $5f75: $6d
	ld   l, [hl]                                     ; $5f76: $6e
	ld   a, a                                        ; $5f77: $7f
	dec  de                                          ; $5f78: $1b
	inc  e                                           ; $5f79: $1c
	dec  e                                           ; $5f7a: $1d
	ld   [hl], d                                     ; $5f7b: $72
	ld   [hl], d                                     ; $5f7c: $72
	ld   [hl], h                                     ; $5f7d: $74
	ld   [hl], c                                     ; $5f7e: $71
	inc  sp                                          ; $5f7f: $33
	inc  b                                           ; $5f80: $04
	dec  b                                           ; $5f81: $05
	ld   b, $07                                      ; $5f82: $06 $07
	ld   [$0a09], sp                                 ; $5f84: $08 $09 $0a
	dec  bc                                          ; $5f87: $0b
	inc  c                                           ; $5f88: $0c
	dec  c                                           ; $5f89: $0d
	ld   c, $0f                                      ; $5f8a: $0e $0f
	ld   [hl], a                                     ; $5f8c: $77
	ld   a, b                                        ; $5f8d: $78
	ld   a, c                                        ; $5f8e: $79
	ld   [hl], d                                     ; $5f8f: $72
	ld   [hl], d                                     ; $5f90: $72
	ld   [hl], h                                     ; $5f91: $74
	ld   [hl], d                                     ; $5f92: $72
	ld   b, e                                        ; $5f93: $43
	inc  d                                           ; $5f94: $14
	dec  d                                           ; $5f95: $15
	ld   d, $17                                      ; $5f96: $16 $17
	jr   @+$1b                                       ; $5f98: $18 $19

	ld   a, [de]                                     ; $5f9a: $1a
	dec  de                                          ; $5f9b: $1b
	inc  e                                           ; $5f9c: $1c
	dec  e                                           ; $5f9d: $1d
	ld   e, $1f                                      ; $5f9e: $1e $1f
	ld   [hl], a                                     ; $5fa0: $77
	ld   a, b                                        ; $5fa1: $78
	ld   a, c                                        ; $5fa2: $79
	ld   [hl], d                                     ; $5fa3: $72
	ld   a, d                                        ; $5fa4: $7a
	ld   a, e                                        ; $5fa5: $7b
	ld   [hl], e                                     ; $5fa6: $73
	ld   hl, $2524                                   ; $5fa7: $21 $24 $25
	ld   h, $27                                      ; $5faa: $26 $27
	jr   z, jr_084_5fd7                              ; $5fac: $28 $29

	ld   a, [hl+]                                    ; $5fae: $2a
	dec  hl                                          ; $5faf: $2b
	inc  l                                           ; $5fb0: $2c
	dec  l                                           ; $5fb1: $2d
	ld   l, $2f                                      ; $5fb2: $2e $2f
	dec  bc                                          ; $5fb4: $0b
	inc  c                                           ; $5fb5: $0c
	dec  c                                           ; $5fb6: $0d
	ld   c, $75                                      ; $5fb7: $0e $75
	ld   a, h                                        ; $5fb9: $7c
	ld   [hl], h                                     ; $5fba: $74
	ld   sp, $3534                                   ; $5fbb: $31 $34 $35
	ld   [hl], $37                                   ; $5fbe: $36 $37
	jr   c, jr_084_5ffb                              ; $5fc0: $38 $39

	ld   a, [hl-]                                    ; $5fc2: $3a
	dec  sp                                          ; $5fc3: $3b
	inc  a                                           ; $5fc4: $3c
	dec  a                                           ; $5fc5: $3d
	ld   a, $3f                                      ; $5fc6: $3e $3f
	inc  bc                                          ; $5fc8: $03
	inc  b                                           ; $5fc9: $04
	dec  b                                           ; $5fca: $05
	ld   b, $75                                      ; $5fcb: $06 $75
	ld   a, l                                        ; $5fcd: $7d
	ld   [hl], l                                     ; $5fce: $75
	ld   b, c                                        ; $5fcf: $41
	ld   b, h                                        ; $5fd0: $44
	ld   b, l                                        ; $5fd1: $45
	ld   b, [hl]                                     ; $5fd2: $46
	ld   b, a                                        ; $5fd3: $47
	ld   c, b                                        ; $5fd4: $48
	ld   c, c                                        ; $5fd5: $49
	ld   c, d                                        ; $5fd6: $4a

jr_084_5fd7:
	ld   c, e                                        ; $5fd7: $4b
	ld   c, h                                        ; $5fd8: $4c
	ld   c, l                                        ; $5fd9: $4d
	ld   c, [hl]                                     ; $5fda: $4e
	ld   c, a                                        ; $5fdb: $4f
	inc  de                                          ; $5fdc: $13
	inc  d                                           ; $5fdd: $14
	dec  d                                           ; $5fde: $15
	ld   d, $50                                      ; $5fdf: $16 $50
	ld   d, c                                        ; $5fe1: $51
	ld   d, d                                        ; $5fe2: $52
	ld   d, e                                        ; $5fe3: $53
	ld   d, h                                        ; $5fe4: $54
	ld   d, l                                        ; $5fe5: $55
	ld   d, [hl]                                     ; $5fe6: $56
	ld   d, a                                        ; $5fe7: $57
	ld   e, b                                        ; $5fe8: $58
	ld   e, c                                        ; $5fe9: $59
	ld   e, d                                        ; $5fea: $5a
	ld   e, e                                        ; $5feb: $5b
	ld   e, h                                        ; $5fec: $5c
	ld   e, l                                        ; $5fed: $5d
	ld   e, [hl]                                     ; $5fee: $5e
	ld   e, a                                        ; $5fef: $5f
	rlca                                             ; $5ff0: $07
	ld   [$0a09], sp                                 ; $5ff1: $08 $09 $0a
	ld   h, b                                        ; $5ff4: $60
	halt                                             ; $5ff5: $76
	ld   h, c                                        ; $5ff6: $61
	ld   h, d                                        ; $5ff7: $62
	ld   h, e                                        ; $5ff8: $63
	ld   h, h                                        ; $5ff9: $64
	halt                                             ; $5ffa: $76

jr_084_5ffb:
	ld   h, l                                        ; $5ffb: $65
	ld   h, [hl]                                     ; $5ffc: $66
	ld   h, a                                        ; $5ffd: $67
	halt                                             ; $5ffe: $76
	halt                                             ; $5fff: $76
	ld   l, b                                        ; $6000: $68
	ld   l, c                                        ; $6001: $69
	ld   l, d                                        ; $6002: $6a
	halt                                             ; $6003: $76
	rla                                              ; $6004: $17
	jr   jr_084_6020                                 ; $6005: $18 $19

	ld   a, [de]                                     ; $6007: $1a
	dec  b                                           ; $6008: $05
	dec  b                                           ; $6009: $05
	dec  b                                           ; $600a: $05
	dec  b                                           ; $600b: $05
	dec  b                                           ; $600c: $05
	dec  b                                           ; $600d: $05
	dec  b                                           ; $600e: $05
	dec  b                                           ; $600f: $05
	dec  b                                           ; $6010: $05
	dec  b                                           ; $6011: $05
	dec  b                                           ; $6012: $05
	dec  b                                           ; $6013: $05
	dec  b                                           ; $6014: $05
	dec  b                                           ; $6015: $05
	dec  b                                           ; $6016: $05
	dec  b                                           ; $6017: $05
	dec  c                                           ; $6018: $0d
	dec  c                                           ; $6019: $0d
	dec  c                                           ; $601a: $0d
	dec  b                                           ; $601b: $05
	dec  b                                           ; $601c: $05
	dec  b                                           ; $601d: $05
	dec  b                                           ; $601e: $05
	dec  b                                           ; $601f: $05

jr_084_6020:
	dec  b                                           ; $6020: $05
	dec  b                                           ; $6021: $05
	dec  b                                           ; $6022: $05
	dec  b                                           ; $6023: $05
	dec  b                                           ; $6024: $05
	dec  b                                           ; $6025: $05
	dec  b                                           ; $6026: $05
	dec  b                                           ; $6027: $05
	dec  b                                           ; $6028: $05
	dec  b                                           ; $6029: $05
	dec  b                                           ; $602a: $05
	dec  b                                           ; $602b: $05
	dec  c                                           ; $602c: $0d
	dec  c                                           ; $602d: $0d
	dec  c                                           ; $602e: $0d
	dec  b                                           ; $602f: $05
	dec  b                                           ; $6030: $05
	dec  b                                           ; $6031: $05
	dec  c                                           ; $6032: $0d
	dec  b                                           ; $6033: $05
	dec  b                                           ; $6034: $05
	dec  b                                           ; $6035: $05
	dec  b                                           ; $6036: $05
	dec  b                                           ; $6037: $05
	dec  b                                           ; $6038: $05
	dec  b                                           ; $6039: $05
	dec  b                                           ; $603a: $05
	dec  b                                           ; $603b: $05
	dec  b                                           ; $603c: $05
	dec  b                                           ; $603d: $05
	dec  b                                           ; $603e: $05
	dec  b                                           ; $603f: $05
	dec  c                                           ; $6040: $0d
	dec  c                                           ; $6041: $0d
	dec  c                                           ; $6042: $0d
	dec  b                                           ; $6043: $05
	dec  b                                           ; $6044: $05
	dec  b                                           ; $6045: $05
	dec  bc                                          ; $6046: $0b
	dec  b                                           ; $6047: $05
	dec  b                                           ; $6048: $05
	dec  b                                           ; $6049: $05
	inc  bc                                          ; $604a: $03
	inc  bc                                          ; $604b: $03
	inc  bc                                          ; $604c: $03
	inc  bc                                          ; $604d: $03
	inc  bc                                          ; $604e: $03
	inc  bc                                          ; $604f: $03
	inc  bc                                          ; $6050: $03
	inc  bc                                          ; $6051: $03
	inc  bc                                          ; $6052: $03
	inc  bc                                          ; $6053: $03
	dec  b                                           ; $6054: $05
	inc  bc                                          ; $6055: $03
	dec  b                                           ; $6056: $05
	dec  b                                           ; $6057: $05
	dec  b                                           ; $6058: $05
	dec  b                                           ; $6059: $05
	dec  bc                                          ; $605a: $0b
	dec  b                                           ; $605b: $05
	dec  b                                           ; $605c: $05
	dec  b                                           ; $605d: $05
	inc  bc                                          ; $605e: $03
	inc  bc                                          ; $605f: $03
	inc  bc                                          ; $6060: $03
	inc  bc                                          ; $6061: $03
	inc  bc                                          ; $6062: $03
	inc  bc                                          ; $6063: $03
	inc  bc                                          ; $6064: $03
	inc  bc                                          ; $6065: $03
	inc  bc                                          ; $6066: $03
	inc  bc                                          ; $6067: $03
	dec  b                                           ; $6068: $05
	inc  bc                                          ; $6069: $03
	dec  b                                           ; $606a: $05
	dec  b                                           ; $606b: $05
	inc  b                                           ; $606c: $04
	inc  b                                           ; $606d: $04
	dec  bc                                          ; $606e: $0b
	inc  b                                           ; $606f: $04
	inc  b                                           ; $6070: $04
	dec  b                                           ; $6071: $05
	inc  bc                                          ; $6072: $03
	inc  bc                                          ; $6073: $03
	inc  bc                                          ; $6074: $03
	inc  bc                                          ; $6075: $03
	inc  bc                                          ; $6076: $03
	inc  bc                                          ; $6077: $03
	inc  bc                                          ; $6078: $03
	inc  bc                                          ; $6079: $03
	inc  bc                                          ; $607a: $03
	inc  bc                                          ; $607b: $03
	dec  c                                           ; $607c: $0d
	dec  bc                                          ; $607d: $0b
	dec  c                                           ; $607e: $0d
	dec  c                                           ; $607f: $0d
	inc  b                                           ; $6080: $04
	inc  b                                           ; $6081: $04
	dec  bc                                          ; $6082: $0b
	inc  b                                           ; $6083: $04
	dec  b                                           ; $6084: $05
	inc  bc                                          ; $6085: $03
	inc  bc                                          ; $6086: $03
	inc  bc                                          ; $6087: $03
	inc  bc                                          ; $6088: $03
	inc  bc                                          ; $6089: $03
	inc  bc                                          ; $608a: $03
	inc  bc                                          ; $608b: $03
	inc  bc                                          ; $608c: $03
	inc  bc                                          ; $608d: $03
	inc  bc                                          ; $608e: $03
	inc  bc                                          ; $608f: $03
	dec  c                                           ; $6090: $0d
	dec  bc                                          ; $6091: $0b
	inc  c                                           ; $6092: $0c
	dec  c                                           ; $6093: $0d
	inc  b                                           ; $6094: $04
	inc  b                                           ; $6095: $04
	dec  bc                                          ; $6096: $0b
	dec  b                                           ; $6097: $05
	dec  b                                           ; $6098: $05
	inc  bc                                          ; $6099: $03
	inc  bc                                          ; $609a: $03
	inc  bc                                          ; $609b: $03
	inc  bc                                          ; $609c: $03
	inc  bc                                          ; $609d: $03
	inc  bc                                          ; $609e: $03
	inc  bc                                          ; $609f: $03
	inc  bc                                          ; $60a0: $03
	inc  bc                                          ; $60a1: $03
	inc  bc                                          ; $60a2: $03
	inc  bc                                          ; $60a3: $03
	dec  bc                                          ; $60a4: $0b
	dec  bc                                          ; $60a5: $0b
	dec  c                                           ; $60a6: $0d
	dec  c                                           ; $60a7: $0d
	inc  b                                           ; $60a8: $04
	inc  b                                           ; $60a9: $04
	inc  b                                           ; $60aa: $04
	inc  b                                           ; $60ab: $04
	inc  b                                           ; $60ac: $04
	inc  b                                           ; $60ad: $04
	inc  b                                           ; $60ae: $04
	inc  b                                           ; $60af: $04
	inc  b                                           ; $60b0: $04
	inc  b                                           ; $60b1: $04
	inc  b                                           ; $60b2: $04
	inc  b                                           ; $60b3: $04
	inc  b                                           ; $60b4: $04
	inc  b                                           ; $60b5: $04
	inc  b                                           ; $60b6: $04
	inc  b                                           ; $60b7: $04
	dec  bc                                          ; $60b8: $0b
	dec  bc                                          ; $60b9: $0b
	dec  bc                                          ; $60ba: $0b
	dec  c                                           ; $60bb: $0d
	dec  b                                           ; $60bc: $05
	inc  b                                           ; $60bd: $04
	inc  b                                           ; $60be: $04
	inc  b                                           ; $60bf: $04
	inc  b                                           ; $60c0: $04
	inc  b                                           ; $60c1: $04
	inc  b                                           ; $60c2: $04
	inc  b                                           ; $60c3: $04
	inc  b                                           ; $60c4: $04
	inc  b                                           ; $60c5: $04
	inc  b                                           ; $60c6: $04
	inc  b                                           ; $60c7: $04
	inc  b                                           ; $60c8: $04
	inc  b                                           ; $60c9: $04
	inc  b                                           ; $60ca: $04
	inc  b                                           ; $60cb: $04
	dec  c                                           ; $60cc: $0d
	dec  bc                                          ; $60cd: $0b
	dec  bc                                          ; $60ce: $0b
	dec  c                                           ; $60cf: $0d
	nop                                              ; $60d0: $00
	ld   bc, $0302                                   ; $60d1: $01 $02 $03
	ld   [hl], b                                     ; $60d4: $70
	ld   [hl], b                                     ; $60d5: $70
	ld   [hl], b                                     ; $60d6: $70
	ld   [hl], b                                     ; $60d7: $70
	ld   [hl], b                                     ; $60d8: $70
	ld   [hl], b                                     ; $60d9: $70
	ld   [hl], b                                     ; $60da: $70
	ld   [hl], b                                     ; $60db: $70
	ld   [hl], b                                     ; $60dc: $70
	ld   [hl], b                                     ; $60dd: $70
	ld   [hl], b                                     ; $60de: $70
	ld   [hl], b                                     ; $60df: $70
	nop                                              ; $60e0: $00
	ld   bc, $7202                                   ; $60e1: $01 $02 $72
	db   $10                                         ; $60e4: $10
	ld   de, $1312                                   ; $60e5: $11 $12 $13
	ld   [hl], c                                     ; $60e8: $71
	ld   [hl], c                                     ; $60e9: $71
	ld   [hl], c                                     ; $60ea: $71
	ld   [hl], c                                     ; $60eb: $71
	ld   [hl], c                                     ; $60ec: $71
	ld   [hl], c                                     ; $60ed: $71
	ld   [hl], c                                     ; $60ee: $71
	ld   [hl], c                                     ; $60ef: $71
	ld   [hl], c                                     ; $60f0: $71
	ld   [hl], c                                     ; $60f1: $71
	ld   [hl], c                                     ; $60f2: $71
	ld   l, a                                        ; $60f3: $6f
	db   $10                                         ; $60f4: $10
	ld   de, $7212                                   ; $60f5: $11 $12 $72
	ld   [hl], d                                     ; $60f8: $72
	ld   a, [hl]                                     ; $60f9: $7e
	ld   [hl+], a                                    ; $60fa: $22
	inc  hl                                          ; $60fb: $23
	ld   l, e                                        ; $60fc: $6b
	ld   l, h                                        ; $60fd: $6c
	ld   [hl], e                                     ; $60fe: $73
	ld   [hl], e                                     ; $60ff: $73
	ld   [hl], e                                     ; $6100: $73
	ld   [hl], e                                     ; $6101: $73
	ld   [hl], e                                     ; $6102: $73
	ld   [hl], e                                     ; $6103: $73
	ld   [hl], e                                     ; $6104: $73
	ld   l, l                                        ; $6105: $6d
	ld   l, [hl]                                     ; $6106: $6e
	ld   a, a                                        ; $6107: $7f
	dec  de                                          ; $6108: $1b
	halt                                             ; $6109: $76
	dec  e                                           ; $610a: $1d
	ld   [hl], d                                     ; $610b: $72
	ld   [hl], d                                     ; $610c: $72
	ld   [hl], h                                     ; $610d: $74
	ld   [hl-], a                                    ; $610e: $32
	inc  sp                                          ; $610f: $33
	inc  b                                           ; $6110: $04
	dec  b                                           ; $6111: $05
	ld   b, $07                                      ; $6112: $06 $07
	ld   [$0a09], sp                                 ; $6114: $08 $09 $0a
	dec  bc                                          ; $6117: $0b
	inc  c                                           ; $6118: $0c
	dec  c                                           ; $6119: $0d
	ld   c, $0f                                      ; $611a: $0e $0f
	ld   [hl], a                                     ; $611c: $77
	ld   [hl], a                                     ; $611d: $77
	ld   a, c                                        ; $611e: $79
	ld   [hl], d                                     ; $611f: $72
	ld   [hl], d                                     ; $6120: $72
	ld   [hl], h                                     ; $6121: $74
	ld   b, d                                        ; $6122: $42
	ld   b, e                                        ; $6123: $43
	inc  d                                           ; $6124: $14
	dec  d                                           ; $6125: $15
	ld   d, $17                                      ; $6126: $16 $17
	jr   @+$1b                                       ; $6128: $18 $19

	ld   a, [de]                                     ; $612a: $1a
	dec  de                                          ; $612b: $1b
	inc  e                                           ; $612c: $1c
	dec  e                                           ; $612d: $1d
	ld   e, $1f                                      ; $612e: $1e $1f
	ld   [hl], a                                     ; $6130: $77
	ld   [hl], a                                     ; $6131: $77
	ld   a, c                                        ; $6132: $79
	ld   [hl], d                                     ; $6133: $72
	ld   a, d                                        ; $6134: $7a
	ld   a, e                                        ; $6135: $7b
	jr   nz, jr_084_6159                             ; $6136: $20 $21

	inc  h                                           ; $6138: $24
	dec  h                                           ; $6139: $25
	ld   h, $27                                      ; $613a: $26 $27
	jr   z, jr_084_6167                              ; $613c: $28 $29

	ld   a, [hl+]                                    ; $613e: $2a
	dec  hl                                          ; $613f: $2b
	inc  l                                           ; $6140: $2c
	dec  l                                           ; $6141: $2d
	ld   l, $2f                                      ; $6142: $2e $2f
	dec  bc                                          ; $6144: $0b
	ld   a, b                                        ; $6145: $78
	dec  c                                           ; $6146: $0d
	ld   c, $75                                      ; $6147: $0e $75
	ld   a, h                                        ; $6149: $7c
	jr   nc, jr_084_617d                             ; $614a: $30 $31

	inc  [hl]                                        ; $614c: $34
	dec  [hl]                                        ; $614d: $35
	ld   [hl], $37                                   ; $614e: $36 $37
	jr   c, jr_084_618b                              ; $6150: $38 $39

	ld   a, [hl-]                                    ; $6152: $3a
	dec  sp                                          ; $6153: $3b
	inc  a                                           ; $6154: $3c
	dec  a                                           ; $6155: $3d
	ld   a, $3f                                      ; $6156: $3e $3f
	inc  bc                                          ; $6158: $03

jr_084_6159:
	ld   a, c                                        ; $6159: $79
	dec  b                                           ; $615a: $05
	ld   b, $75                                      ; $615b: $06 $75
	ld   a, l                                        ; $615d: $7d
	ld   b, b                                        ; $615e: $40
	ld   b, c                                        ; $615f: $41
	ld   b, h                                        ; $6160: $44
	ld   b, l                                        ; $6161: $45
	ld   b, [hl]                                     ; $6162: $46
	ld   b, a                                        ; $6163: $47
	ld   c, b                                        ; $6164: $48
	ld   c, c                                        ; $6165: $49
	ld   c, d                                        ; $6166: $4a

jr_084_6167:
	ld   c, e                                        ; $6167: $4b
	ld   c, h                                        ; $6168: $4c
	ld   c, l                                        ; $6169: $4d
	ld   c, [hl]                                     ; $616a: $4e
	ld   c, a                                        ; $616b: $4f
	inc  de                                          ; $616c: $13
	ld   a, d                                        ; $616d: $7a
	dec  d                                           ; $616e: $15
	ld   d, $50                                      ; $616f: $16 $50
	ld   d, c                                        ; $6171: $51
	ld   d, d                                        ; $6172: $52
	ld   d, e                                        ; $6173: $53
	ld   d, h                                        ; $6174: $54
	ld   d, l                                        ; $6175: $55
	ld   d, [hl]                                     ; $6176: $56
	ld   d, a                                        ; $6177: $57
	ld   e, b                                        ; $6178: $58
	ld   e, c                                        ; $6179: $59
	ld   e, d                                        ; $617a: $5a
	ld   e, e                                        ; $617b: $5b
	ld   e, h                                        ; $617c: $5c

jr_084_617d:
	ld   e, l                                        ; $617d: $5d
	ld   e, [hl]                                     ; $617e: $5e
	ld   e, a                                        ; $617f: $5f
	rlca                                             ; $6180: $07
	ld   [$0a09], sp                                 ; $6181: $08 $09 $0a
	ld   h, b                                        ; $6184: $60
	halt                                             ; $6185: $76
	ld   h, c                                        ; $6186: $61
	ld   h, d                                        ; $6187: $62
	ld   h, e                                        ; $6188: $63
	ld   h, h                                        ; $6189: $64
	halt                                             ; $618a: $76

jr_084_618b:
	ld   h, l                                        ; $618b: $65
	ld   h, [hl]                                     ; $618c: $66
	ld   h, a                                        ; $618d: $67
	halt                                             ; $618e: $76
	halt                                             ; $618f: $76
	ld   l, b                                        ; $6190: $68
	ld   l, c                                        ; $6191: $69
	ld   l, d                                        ; $6192: $6a
	halt                                             ; $6193: $76
	rla                                              ; $6194: $17
	jr   jr_084_61b0                                 ; $6195: $18 $19

	ld   a, [de]                                     ; $6197: $1a
	dec  b                                           ; $6198: $05
	dec  b                                           ; $6199: $05
	dec  b                                           ; $619a: $05
	dec  b                                           ; $619b: $05
	dec  b                                           ; $619c: $05
	dec  b                                           ; $619d: $05
	dec  b                                           ; $619e: $05
	dec  b                                           ; $619f: $05
	dec  b                                           ; $61a0: $05
	dec  b                                           ; $61a1: $05
	dec  b                                           ; $61a2: $05
	dec  b                                           ; $61a3: $05
	dec  b                                           ; $61a4: $05
	dec  b                                           ; $61a5: $05
	dec  b                                           ; $61a6: $05
	dec  b                                           ; $61a7: $05
	dec  c                                           ; $61a8: $0d
	dec  c                                           ; $61a9: $0d
	dec  c                                           ; $61aa: $0d
	dec  b                                           ; $61ab: $05
	dec  b                                           ; $61ac: $05
	dec  b                                           ; $61ad: $05
	dec  b                                           ; $61ae: $05
	dec  b                                           ; $61af: $05

jr_084_61b0:
	dec  b                                           ; $61b0: $05
	dec  b                                           ; $61b1: $05
	dec  b                                           ; $61b2: $05
	dec  b                                           ; $61b3: $05
	dec  b                                           ; $61b4: $05
	dec  b                                           ; $61b5: $05
	dec  b                                           ; $61b6: $05
	dec  b                                           ; $61b7: $05
	dec  b                                           ; $61b8: $05
	dec  b                                           ; $61b9: $05
	dec  b                                           ; $61ba: $05
	dec  b                                           ; $61bb: $05
	dec  c                                           ; $61bc: $0d
	dec  c                                           ; $61bd: $0d
	dec  c                                           ; $61be: $0d
	dec  b                                           ; $61bf: $05
	dec  b                                           ; $61c0: $05
	dec  b                                           ; $61c1: $05
	dec  b                                           ; $61c2: $05
	dec  b                                           ; $61c3: $05
	dec  b                                           ; $61c4: $05
	dec  b                                           ; $61c5: $05
	dec  b                                           ; $61c6: $05
	dec  b                                           ; $61c7: $05
	dec  b                                           ; $61c8: $05
	dec  b                                           ; $61c9: $05
	dec  b                                           ; $61ca: $05
	dec  b                                           ; $61cb: $05
	dec  b                                           ; $61cc: $05
	dec  b                                           ; $61cd: $05
	dec  b                                           ; $61ce: $05
	dec  b                                           ; $61cf: $05
	dec  c                                           ; $61d0: $0d
	dec  c                                           ; $61d1: $0d
	dec  c                                           ; $61d2: $0d
	dec  b                                           ; $61d3: $05
	dec  b                                           ; $61d4: $05
	dec  b                                           ; $61d5: $05
	inc  bc                                          ; $61d6: $03
	dec  b                                           ; $61d7: $05
	dec  b                                           ; $61d8: $05
	dec  b                                           ; $61d9: $05
	inc  bc                                          ; $61da: $03
	inc  bc                                          ; $61db: $03
	inc  bc                                          ; $61dc: $03
	inc  bc                                          ; $61dd: $03
	inc  bc                                          ; $61de: $03
	inc  bc                                          ; $61df: $03
	inc  bc                                          ; $61e0: $03
	inc  bc                                          ; $61e1: $03
	inc  bc                                          ; $61e2: $03
	inc  bc                                          ; $61e3: $03
	dec  b                                           ; $61e4: $05
	dec  bc                                          ; $61e5: $0b
	dec  b                                           ; $61e6: $05
	dec  b                                           ; $61e7: $05
	dec  b                                           ; $61e8: $05
	dec  b                                           ; $61e9: $05
	inc  bc                                          ; $61ea: $03
	dec  b                                           ; $61eb: $05
	dec  b                                           ; $61ec: $05
	dec  b                                           ; $61ed: $05
	inc  bc                                          ; $61ee: $03
	inc  bc                                          ; $61ef: $03
	inc  bc                                          ; $61f0: $03
	inc  bc                                          ; $61f1: $03
	inc  bc                                          ; $61f2: $03
	inc  bc                                          ; $61f3: $03
	inc  bc                                          ; $61f4: $03
	inc  bc                                          ; $61f5: $03
	inc  bc                                          ; $61f6: $03
	inc  bc                                          ; $61f7: $03
	dec  b                                           ; $61f8: $05
	dec  bc                                          ; $61f9: $0b
	dec  b                                           ; $61fa: $05
	dec  b                                           ; $61fb: $05
	inc  b                                           ; $61fc: $04
	inc  b                                           ; $61fd: $04
	inc  bc                                          ; $61fe: $03
	inc  b                                           ; $61ff: $04
	inc  b                                           ; $6200: $04
	dec  b                                           ; $6201: $05
	inc  bc                                          ; $6202: $03
	inc  bc                                          ; $6203: $03
	inc  bc                                          ; $6204: $03
	inc  bc                                          ; $6205: $03
	inc  bc                                          ; $6206: $03
	inc  bc                                          ; $6207: $03
	inc  bc                                          ; $6208: $03
	inc  bc                                          ; $6209: $03
	inc  bc                                          ; $620a: $03
	inc  bc                                          ; $620b: $03
	dec  c                                           ; $620c: $0d
	dec  bc                                          ; $620d: $0b
	dec  c                                           ; $620e: $0d
	dec  c                                           ; $620f: $0d
	inc  b                                           ; $6210: $04
	inc  b                                           ; $6211: $04
	inc  bc                                          ; $6212: $03
	inc  b                                           ; $6213: $04
	dec  b                                           ; $6214: $05
	inc  bc                                          ; $6215: $03
	inc  bc                                          ; $6216: $03
	inc  bc                                          ; $6217: $03
	inc  bc                                          ; $6218: $03
	inc  bc                                          ; $6219: $03
	inc  bc                                          ; $621a: $03
	inc  bc                                          ; $621b: $03
	inc  bc                                          ; $621c: $03
	inc  bc                                          ; $621d: $03
	inc  bc                                          ; $621e: $03
	inc  bc                                          ; $621f: $03
	dec  c                                           ; $6220: $0d
	dec  bc                                          ; $6221: $0b
	inc  c                                           ; $6222: $0c
	dec  c                                           ; $6223: $0d
	inc  b                                           ; $6224: $04
	inc  b                                           ; $6225: $04
	inc  bc                                          ; $6226: $03
	dec  b                                           ; $6227: $05
	dec  b                                           ; $6228: $05
	inc  bc                                          ; $6229: $03
	inc  bc                                          ; $622a: $03
	inc  bc                                          ; $622b: $03
	inc  bc                                          ; $622c: $03
	inc  bc                                          ; $622d: $03
	inc  bc                                          ; $622e: $03
	inc  bc                                          ; $622f: $03
	inc  bc                                          ; $6230: $03
	inc  bc                                          ; $6231: $03
	inc  bc                                          ; $6232: $03
	inc  bc                                          ; $6233: $03
	dec  bc                                          ; $6234: $0b
	dec  bc                                          ; $6235: $0b
	dec  c                                           ; $6236: $0d
	dec  c                                           ; $6237: $0d
	inc  b                                           ; $6238: $04
	inc  b                                           ; $6239: $04
	inc  b                                           ; $623a: $04
	inc  b                                           ; $623b: $04
	inc  b                                           ; $623c: $04
	inc  b                                           ; $623d: $04
	inc  b                                           ; $623e: $04
	inc  b                                           ; $623f: $04
	inc  b                                           ; $6240: $04
	inc  b                                           ; $6241: $04
	inc  b                                           ; $6242: $04
	inc  b                                           ; $6243: $04
	inc  b                                           ; $6244: $04
	inc  b                                           ; $6245: $04
	inc  b                                           ; $6246: $04
	inc  b                                           ; $6247: $04
	dec  bc                                          ; $6248: $0b
	dec  bc                                          ; $6249: $0b
	dec  bc                                          ; $624a: $0b
	dec  c                                           ; $624b: $0d
	dec  b                                           ; $624c: $05
	inc  b                                           ; $624d: $04
	inc  b                                           ; $624e: $04
	inc  b                                           ; $624f: $04
	inc  b                                           ; $6250: $04
	inc  b                                           ; $6251: $04
	inc  b                                           ; $6252: $04
	inc  b                                           ; $6253: $04
	inc  b                                           ; $6254: $04
	inc  b                                           ; $6255: $04
	inc  b                                           ; $6256: $04
	inc  b                                           ; $6257: $04
	inc  b                                           ; $6258: $04
	inc  b                                           ; $6259: $04
	inc  b                                           ; $625a: $04
	inc  b                                           ; $625b: $04
	dec  c                                           ; $625c: $0d
	dec  bc                                          ; $625d: $0b
	dec  bc                                          ; $625e: $0b
	dec  c                                           ; $625f: $0d
	nop                                              ; $6260: $00
	ld   bc, $0302                                   ; $6261: $01 $02 $03
	nop                                              ; $6264: $00
	ld   bc, $0302                                   ; $6265: $01 $02 $03
	inc  b                                           ; $6268: $04
	dec  b                                           ; $6269: $05
	ld   b, $07                                      ; $626a: $06 $07
	ld   [$0a09], sp                                 ; $626c: $08 $09 $0a
	dec  bc                                          ; $626f: $0b
	inc  b                                           ; $6270: $04
	dec  b                                           ; $6271: $05
	ld   b, $07                                      ; $6272: $06 $07
	db   $10                                         ; $6274: $10
	ld   de, $1312                                   ; $6275: $11 $12 $13
	inc  c                                           ; $6278: $0c
	dec  c                                           ; $6279: $0d
	ld   c, $0f                                      ; $627a: $0e $0f
	db   $10                                         ; $627c: $10
	ld   de, $1312                                   ; $627d: $11 $12 $13
	inc  d                                           ; $6280: $14
	dec  d                                           ; $6281: $15
	ld   d, $17                                      ; $6282: $16 $17
	inc  d                                           ; $6284: $14
	dec  d                                           ; $6285: $15
	ld   d, $17                                      ; $6286: $16 $17
	jr   nz, @+$23                                   ; $6288: $20 $21

	ld   [hl+], a                                    ; $628a: $22
	inc  hl                                          ; $628b: $23
	jr   jr_084_62a7                                 ; $628c: $18 $19

	ld   a, [de]                                     ; $628e: $1a
	dec  de                                          ; $628f: $1b
	inc  e                                           ; $6290: $1c
	dec  e                                           ; $6291: $1d
	ld   e, $1f                                      ; $6292: $1e $1f
	jr   nz, jr_084_62b7                             ; $6294: $20 $21

	ld   [hl+], a                                    ; $6296: $22
	inc  hl                                          ; $6297: $23
	inc  h                                           ; $6298: $24
	dec  h                                           ; $6299: $25
	ld   h, $27                                      ; $629a: $26 $27
	ld   [$0a09], sp                                 ; $629c: $08 $09 $0a
	dec  bc                                          ; $629f: $0b
	inc  h                                           ; $62a0: $24
	dec  h                                           ; $62a1: $25
	ld   h, $27                                      ; $62a2: $26 $27
	jr   z, jr_084_62cf                              ; $62a4: $28 $29

	ld   a, [hl+]                                    ; $62a6: $2a

jr_084_62a7:
	dec  hl                                          ; $62a7: $2b
	inc  l                                           ; $62a8: $2c
	dec  l                                           ; $62a9: $2d
	ld   l, $2f                                      ; $62aa: $2e $2f
	inc  c                                           ; $62ac: $0c
	dec  c                                           ; $62ad: $0d
	ld   c, $0f                                      ; $62ae: $0e $0f
	jr   @+$1b                                       ; $62b0: $18 $19

	ld   a, [de]                                     ; $62b2: $1a
	dec  de                                          ; $62b3: $1b
	jr   nc, jr_084_62e7                             ; $62b4: $30 $31

	ld   [hl-], a                                    ; $62b6: $32

jr_084_62b7:
	inc  sp                                          ; $62b7: $33
	inc  [hl]                                        ; $62b8: $34
	dec  [hl]                                        ; $62b9: $35
	ld   [hl], $37                                   ; $62ba: $36 $37
	jr   c, jr_084_62f7                              ; $62bc: $38 $39

	ld   a, [hl-]                                    ; $62be: $3a
	dec  sp                                          ; $62bf: $3b
	inc  e                                           ; $62c0: $1c
	dec  e                                           ; $62c1: $1d
	ld   e, $1f                                      ; $62c2: $1e $1f
	jr   z, jr_084_62ef                              ; $62c4: $28 $29

	ld   a, [hl+]                                    ; $62c6: $2a
	dec  hl                                          ; $62c7: $2b
	inc  a                                           ; $62c8: $3c
	dec  a                                           ; $62c9: $3d
	ld   a, $3f                                      ; $62ca: $3e $3f
	ld   b, b                                        ; $62cc: $40
	ld   b, c                                        ; $62cd: $41
	ld   b, d                                        ; $62ce: $42

jr_084_62cf:
	ld   b, e                                        ; $62cf: $43
	ld   b, h                                        ; $62d0: $44
	ld   b, l                                        ; $62d1: $45
	ld   b, [hl]                                     ; $62d2: $46
	ld   b, a                                        ; $62d3: $47
	inc  l                                           ; $62d4: $2c
	dec  l                                           ; $62d5: $2d
	ld   l, $2f                                      ; $62d6: $2e $2f
	jr   nc, jr_084_630b                             ; $62d8: $30 $31

	ld   [hl-], a                                    ; $62da: $32
	inc  sp                                          ; $62db: $33
	ld   c, b                                        ; $62dc: $48
	ld   c, c                                        ; $62dd: $49
	ld   c, d                                        ; $62de: $4a
	ld   c, e                                        ; $62df: $4b
	ld   c, h                                        ; $62e0: $4c
	ld   c, l                                        ; $62e1: $4d
	ld   c, [hl]                                     ; $62e2: $4e
	ld   c, a                                        ; $62e3: $4f
	ld   d, b                                        ; $62e4: $50
	ld   d, c                                        ; $62e5: $51
	ld   d, d                                        ; $62e6: $52

jr_084_62e7:
	ld   d, e                                        ; $62e7: $53
	inc  [hl]                                        ; $62e8: $34
	dec  [hl]                                        ; $62e9: $35
	ld   [hl], $37                                   ; $62ea: $36 $37
	ld   b, b                                        ; $62ec: $40
	ld   b, c                                        ; $62ed: $41
	ld   b, d                                        ; $62ee: $42

jr_084_62ef:
	ld   b, e                                        ; $62ef: $43
	ld   d, h                                        ; $62f0: $54
	ld   d, l                                        ; $62f1: $55
	ld   d, [hl]                                     ; $62f2: $56
	ld   d, a                                        ; $62f3: $57
	ld   e, b                                        ; $62f4: $58
	ld   e, c                                        ; $62f5: $59
	ld   e, d                                        ; $62f6: $5a

jr_084_62f7:
	ld   e, e                                        ; $62f7: $5b
	ld   e, h                                        ; $62f8: $5c
	ld   e, l                                        ; $62f9: $5d
	ld   e, [hl]                                     ; $62fa: $5e
	ld   e, a                                        ; $62fb: $5f
	ld   b, h                                        ; $62fc: $44
	ld   b, l                                        ; $62fd: $45
	ld   b, [hl]                                     ; $62fe: $46
	ld   b, a                                        ; $62ff: $47
	jr   c, jr_084_633b                              ; $6300: $38 $39

	ld   a, [hl-]                                    ; $6302: $3a
	dec  sp                                          ; $6303: $3b
	ld   h, b                                        ; $6304: $60
	ld   h, c                                        ; $6305: $61
	ld   h, d                                        ; $6306: $62
	ld   h, e                                        ; $6307: $63
	ld   h, h                                        ; $6308: $64
	ld   h, l                                        ; $6309: $65
	ld   h, [hl]                                     ; $630a: $66

jr_084_630b:
	ld   h, a                                        ; $630b: $67
	ld   l, b                                        ; $630c: $68
	ld   l, c                                        ; $630d: $69
	ld   l, d                                        ; $630e: $6a
	ld   l, e                                        ; $630f: $6b
	inc  a                                           ; $6310: $3c
	dec  a                                           ; $6311: $3d
	ld   a, $3f                                      ; $6312: $3e $3f
	ld   c, b                                        ; $6314: $48
	ld   c, c                                        ; $6315: $49
	ld   c, d                                        ; $6316: $4a
	ld   c, e                                        ; $6317: $4b
	ld   l, h                                        ; $6318: $6c
	ld   l, l                                        ; $6319: $6d
	ld   l, [hl]                                     ; $631a: $6e
	ld   l, a                                        ; $631b: $6f
	ld   [hl], b                                     ; $631c: $70
	ld   [hl], c                                     ; $631d: $71
	ld   [hl], d                                     ; $631e: $72
	ld   [hl], e                                     ; $631f: $73
	ld   [hl], h                                     ; $6320: $74
	ld   [hl], l                                     ; $6321: $75
	halt                                             ; $6322: $76
	ld   [hl], a                                     ; $6323: $77
	ld   c, h                                        ; $6324: $4c
	ld   c, l                                        ; $6325: $4d
	ld   c, [hl]                                     ; $6326: $4e
	ld   c, a                                        ; $6327: $4f
	dec  b                                           ; $6328: $05
	dec  b                                           ; $6329: $05
	dec  b                                           ; $632a: $05
	dec  b                                           ; $632b: $05
	dec  c                                           ; $632c: $0d
	dec  c                                           ; $632d: $0d
	dec  c                                           ; $632e: $0d
	dec  c                                           ; $632f: $0d
	dec  c                                           ; $6330: $0d
	dec  c                                           ; $6331: $0d
	dec  c                                           ; $6332: $0d
	dec  c                                           ; $6333: $0d
	dec  c                                           ; $6334: $0d
	dec  c                                           ; $6335: $0d
	dec  c                                           ; $6336: $0d
	dec  c                                           ; $6337: $0d
	dec  b                                           ; $6338: $05
	dec  b                                           ; $6339: $05
	inc  bc                                          ; $633a: $03

jr_084_633b:
	dec  b                                           ; $633b: $05
	dec  b                                           ; $633c: $05
	dec  b                                           ; $633d: $05
	dec  b                                           ; $633e: $05
	dec  b                                           ; $633f: $05
	dec  c                                           ; $6340: $0d
	dec  c                                           ; $6341: $0d
	dec  c                                           ; $6342: $0d
	dec  c                                           ; $6343: $0d
	dec  c                                           ; $6344: $0d
	dec  c                                           ; $6345: $0d
	dec  c                                           ; $6346: $0d
	dec  c                                           ; $6347: $0d
	dec  c                                           ; $6348: $0d
	dec  c                                           ; $6349: $0d
	dec  c                                           ; $634a: $0d
	dec  c                                           ; $634b: $0d
	dec  b                                           ; $634c: $05
	dec  b                                           ; $634d: $05
	inc  bc                                          ; $634e: $03
	dec  b                                           ; $634f: $05
	dec  b                                           ; $6350: $05
	dec  b                                           ; $6351: $05
	dec  b                                           ; $6352: $05
	dec  b                                           ; $6353: $05
	dec  c                                           ; $6354: $0d
	dec  c                                           ; $6355: $0d
	dec  c                                           ; $6356: $0d
	dec  c                                           ; $6357: $0d
	dec  c                                           ; $6358: $0d
	dec  c                                           ; $6359: $0d
	dec  c                                           ; $635a: $0d
	dec  c                                           ; $635b: $0d
	dec  c                                           ; $635c: $0d
	dec  c                                           ; $635d: $0d
	dec  c                                           ; $635e: $0d
	dec  c                                           ; $635f: $0d
	dec  b                                           ; $6360: $05
	dec  b                                           ; $6361: $05
	inc  bc                                          ; $6362: $03
	dec  b                                           ; $6363: $05
	dec  b                                           ; $6364: $05
	dec  b                                           ; $6365: $05
	dec  b                                           ; $6366: $05
	dec  b                                           ; $6367: $05
	dec  c                                           ; $6368: $0d
	dec  c                                           ; $6369: $0d
	dec  c                                           ; $636a: $0d
	dec  c                                           ; $636b: $0d
	dec  c                                           ; $636c: $0d
	dec  c                                           ; $636d: $0d
	dec  c                                           ; $636e: $0d
	dec  c                                           ; $636f: $0d
	dec  c                                           ; $6370: $0d
	dec  c                                           ; $6371: $0d
	dec  c                                           ; $6372: $0d
	dec  c                                           ; $6373: $0d
	dec  b                                           ; $6374: $05
	dec  b                                           ; $6375: $05
	inc  bc                                          ; $6376: $03
	dec  b                                           ; $6377: $05
	inc  bc                                          ; $6378: $03
	inc  bc                                          ; $6379: $03
	inc  bc                                          ; $637a: $03
	inc  b                                           ; $637b: $04
	dec  bc                                          ; $637c: $0b
	dec  bc                                          ; $637d: $0b
	dec  bc                                          ; $637e: $0b
	dec  bc                                          ; $637f: $0b
	dec  c                                           ; $6380: $0d
	dec  c                                           ; $6381: $0d
	dec  c                                           ; $6382: $0d
	dec  c                                           ; $6383: $0d
	dec  c                                           ; $6384: $0d
	dec  c                                           ; $6385: $0d
	inc  c                                           ; $6386: $0c
	dec  c                                           ; $6387: $0d
	dec  b                                           ; $6388: $05
	dec  b                                           ; $6389: $05
	inc  bc                                          ; $638a: $03
	dec  b                                           ; $638b: $05
	inc  bc                                          ; $638c: $03
	inc  bc                                          ; $638d: $03
	inc  bc                                          ; $638e: $03
	inc  b                                           ; $638f: $04
	dec  bc                                          ; $6390: $0b
	dec  bc                                          ; $6391: $0b
	dec  bc                                          ; $6392: $0b
	dec  bc                                          ; $6393: $0b
	dec  bc                                          ; $6394: $0b
	dec  bc                                          ; $6395: $0b
	dec  bc                                          ; $6396: $0b
	dec  c                                           ; $6397: $0d
	dec  c                                           ; $6398: $0d
	dec  c                                           ; $6399: $0d
	inc  c                                           ; $639a: $0c
	dec  c                                           ; $639b: $0d
	dec  b                                           ; $639c: $05
	dec  b                                           ; $639d: $05
	inc  bc                                          ; $639e: $03
	dec  b                                           ; $639f: $05
	inc  bc                                          ; $63a0: $03
	inc  bc                                          ; $63a1: $03
	inc  bc                                          ; $63a2: $03
	inc  b                                           ; $63a3: $04
	dec  bc                                          ; $63a4: $0b
	dec  bc                                          ; $63a5: $0b
	dec  bc                                          ; $63a6: $0b
	dec  bc                                          ; $63a7: $0b
	dec  bc                                          ; $63a8: $0b
	dec  bc                                          ; $63a9: $0b
	dec  bc                                          ; $63aa: $0b
	dec  c                                           ; $63ab: $0d
	dec  c                                           ; $63ac: $0d
	dec  c                                           ; $63ad: $0d
	inc  c                                           ; $63ae: $0c
	dec  c                                           ; $63af: $0d
	dec  b                                           ; $63b0: $05
	dec  b                                           ; $63b1: $05
	inc  bc                                          ; $63b2: $03
	dec  b                                           ; $63b3: $05
	dec  b                                           ; $63b4: $05
	dec  b                                           ; $63b5: $05
	dec  b                                           ; $63b6: $05
	inc  b                                           ; $63b7: $04
	dec  c                                           ; $63b8: $0d
	dec  c                                           ; $63b9: $0d
	dec  c                                           ; $63ba: $0d
	dec  c                                           ; $63bb: $0d
	dec  c                                           ; $63bc: $0d
	dec  c                                           ; $63bd: $0d
	dec  c                                           ; $63be: $0d
	dec  c                                           ; $63bf: $0d
	dec  c                                           ; $63c0: $0d
	dec  c                                           ; $63c1: $0d
	inc  c                                           ; $63c2: $0c
	dec  c                                           ; $63c3: $0d
	dec  b                                           ; $63c4: $05
	dec  b                                           ; $63c5: $05
	inc  bc                                          ; $63c6: $03
	inc  bc                                          ; $63c7: $03
	dec  b                                           ; $63c8: $05
	dec  b                                           ; $63c9: $05
	dec  b                                           ; $63ca: $05
	inc  b                                           ; $63cb: $04
	dec  c                                           ; $63cc: $0d
	dec  c                                           ; $63cd: $0d
	dec  c                                           ; $63ce: $0d
	dec  c                                           ; $63cf: $0d
	dec  c                                           ; $63d0: $0d
	dec  c                                           ; $63d1: $0d
	dec  c                                           ; $63d2: $0d
	dec  c                                           ; $63d3: $0d
	dec  c                                           ; $63d4: $0d
	dec  c                                           ; $63d5: $0d
	inc  c                                           ; $63d6: $0c
	inc  c                                           ; $63d7: $0c
	dec  b                                           ; $63d8: $05
	dec  b                                           ; $63d9: $05
	inc  bc                                          ; $63da: $03
	inc  bc                                          ; $63db: $03
	dec  b                                           ; $63dc: $05
	dec  b                                           ; $63dd: $05
	dec  b                                           ; $63de: $05
	inc  b                                           ; $63df: $04
	dec  c                                           ; $63e0: $0d
	dec  c                                           ; $63e1: $0d
	dec  c                                           ; $63e2: $0d
	dec  c                                           ; $63e3: $0d
	dec  c                                           ; $63e4: $0d
	dec  c                                           ; $63e5: $0d
	dec  c                                           ; $63e6: $0d
	dec  c                                           ; $63e7: $0d
	dec  c                                           ; $63e8: $0d
	dec  c                                           ; $63e9: $0d
	inc  c                                           ; $63ea: $0c
	inc  c                                           ; $63eb: $0c
	dec  b                                           ; $63ec: $05
	dec  b                                           ; $63ed: $05
	inc  bc                                          ; $63ee: $03
	inc  bc                                          ; $63ef: $03
	nop                                              ; $63f0: $00
	ld   bc, $0302                                   ; $63f1: $01 $02 $03
	inc  b                                           ; $63f4: $04
	dec  b                                           ; $63f5: $05
	ld   b, $07                                      ; $63f6: $06 $07
	ld   [$0a08], sp                                 ; $63f8: $08 $08 $0a
	ld   [$0808], sp                                 ; $63fb: $08 $08 $08
	ld   [$2008], sp                                 ; $63fe: $08 $08 $20
	ld   hl, $2308                                   ; $6401: $21 $08 $23
	db   $10                                         ; $6404: $10
	ld   de, $1312                                   ; $6405: $11 $12 $13
	inc  d                                           ; $6408: $14
	dec  d                                           ; $6409: $15
	ld   d, $17                                      ; $640a: $16 $17
	jr   @+$1b                                       ; $640c: $18 $19

	ld   a, [de]                                     ; $640e: $1a
	dec  de                                          ; $640f: $1b
	inc  e                                           ; $6410: $1c
	dec  e                                           ; $6411: $1d
	ld   e, $1f                                      ; $6412: $1e $1f
	jr   nc, jr_084_6438                             ; $6414: $30 $22

	inc  e                                           ; $6416: $1c
	dec  de                                          ; $6417: $1b
	jr   nz, @+$23                                   ; $6418: $20 $21

	ld   [de], a                                     ; $641a: $12
	inc  hl                                          ; $641b: $23
	inc  h                                           ; $641c: $24
	dec  h                                           ; $641d: $25
	ld   h, $35                                      ; $641e: $26 $35
	dec  [hl]                                        ; $6420: $35
	dec  [hl]                                        ; $6421: $35
	ld   a, [hl+]                                    ; $6422: $2a
	dec  hl                                          ; $6423: $2b
	inc  l                                           ; $6424: $2c
	dec  l                                           ; $6425: $2d
	ld   l, $2f                                      ; $6426: $2e $2f
	inc  h                                           ; $6428: $24
	dec  h                                           ; $6429: $25
	ld   h, $27                                      ; $642a: $26 $27
	jr   nc, jr_084_645f                             ; $642c: $30 $31

	ld   [de], a                                     ; $642e: $12
	inc  sp                                          ; $642f: $33
	inc  [hl]                                        ; $6430: $34
	dec  [hl]                                        ; $6431: $35
	ld   h, $37                                      ; $6432: $26 $37
	jr   c, jr_084_646f                              ; $6434: $38 $39

	ld   a, [hl-]                                    ; $6436: $3a
	dec  sp                                          ; $6437: $3b

jr_084_6438:
	inc  a                                           ; $6438: $3c
	dec  a                                           ; $6439: $3d
	ld   a, $3f                                      ; $643a: $3e $3f
	ld   e, c                                        ; $643c: $59
	ld   e, b                                        ; $643d: $58
	ld   h, $49                                      ; $643e: $26 $49
	ld   b, b                                        ; $6440: $40
	ld   b, c                                        ; $6441: $41
	ld   b, d                                        ; $6442: $42
	ld   b, e                                        ; $6443: $43
	ld   b, h                                        ; $6444: $44
	dec  [hl]                                        ; $6445: $35
	ld   h, $35                                      ; $6446: $26 $35
	dec  [hl]                                        ; $6448: $35
	dec  [hl]                                        ; $6449: $35
	ld   c, d                                        ; $644a: $4a
	ld   c, e                                        ; $644b: $4b
	ld   c, h                                        ; $644c: $4c
	ld   c, l                                        ; $644d: $4d
	ld   c, [hl]                                     ; $644e: $4e
	ld   c, a                                        ; $644f: $4f
	jr   z, @+$2b                                    ; $6450: $28 $29

	ld   a, [hl+]                                    ; $6452: $2a
	dec  hl                                          ; $6453: $2b
	ld   d, b                                        ; $6454: $50
	ld   d, c                                        ; $6455: $51
	ld   d, d                                        ; $6456: $52
	ld   d, e                                        ; $6457: $53
	ld   d, h                                        ; $6458: $54
	ld   d, l                                        ; $6459: $55
	ld   d, [hl]                                     ; $645a: $56
	ld   d, a                                        ; $645b: $57
	ld   d, a                                        ; $645c: $57
	ld   d, a                                        ; $645d: $57
	ld   e, d                                        ; $645e: $5a

jr_084_645f:
	ld   e, e                                        ; $645f: $5b
	ld   e, h                                        ; $6460: $5c
	ld   e, l                                        ; $6461: $5d
	ld   e, [hl]                                     ; $6462: $5e
	ld   e, a                                        ; $6463: $5f
	ld   c, b                                        ; $6464: $48
	ld   b, a                                        ; $6465: $47
	ld   b, [hl]                                     ; $6466: $46
	ld   b, l                                        ; $6467: $45
	ld   h, b                                        ; $6468: $60
	ld   h, c                                        ; $6469: $61
	ld   h, d                                        ; $646a: $62
	ld   h, e                                        ; $646b: $63
	ld   h, h                                        ; $646c: $64
	ld   h, l                                        ; $646d: $65
	ld   h, [hl]                                     ; $646e: $66

jr_084_646f:
	ld   h, a                                        ; $646f: $67
	ld   l, b                                        ; $6470: $68
	ld   l, c                                        ; $6471: $69
	ld   l, d                                        ; $6472: $6a
	ld   l, e                                        ; $6473: $6b
	ld   l, h                                        ; $6474: $6c
	ld   l, l                                        ; $6475: $6d
	ld   l, [hl]                                     ; $6476: $6e
	ld   l, a                                        ; $6477: $6f
	inc  l                                           ; $6478: $2c
	dec  l                                           ; $6479: $2d
	ld   l, $2f                                      ; $647a: $2e $2f
	ld   [hl], b                                     ; $647c: $70
	ld   [hl], c                                     ; $647d: $71
	ld   [hl], d                                     ; $647e: $72
	ld   [hl], e                                     ; $647f: $73
	ld   [hl], h                                     ; $6480: $74
	ld   [hl], l                                     ; $6481: $75
	halt                                             ; $6482: $76
	ld   [hl], a                                     ; $6483: $77
	ld   a, b                                        ; $6484: $78
	ld   a, c                                        ; $6485: $79
	ld   a, d                                        ; $6486: $7a
	ld   a, e                                        ; $6487: $7b
	ld   a, h                                        ; $6488: $7c
	ld   a, l                                        ; $6489: $7d
	ld   a, [hl]                                     ; $648a: $7e
	ld   a, a                                        ; $648b: $7f
	ld   [hl], $32                                   ; $648c: $36 $32
	add  hl, hl                                      ; $648e: $29
	jr   z, jr_084_6491                              ; $648f: $28 $00

jr_084_6491:
	ld   bc, $0302                                   ; $6491: $01 $02 $03
	inc  b                                           ; $6494: $04
	dec  b                                           ; $6495: $05
	ld   b, $07                                      ; $6496: $06 $07
	ld   [$0a09], sp                                 ; $6498: $08 $09 $0a
	dec  bc                                          ; $649b: $0b
	inc  c                                           ; $649c: $0c
	dec  c                                           ; $649d: $0d
	ld   c, $0f                                      ; $649e: $0e $0f
	daa                                              ; $64a0: $27
	ld   [hl+], a                                    ; $64a1: $22
	rrca                                             ; $64a2: $0f
	ld   c, $10                                      ; $64a3: $0e $10
	ld   de, $1312                                   ; $64a5: $11 $12 $13
	inc  d                                           ; $64a8: $14
	dec  d                                           ; $64a9: $15
	ld   d, $17                                      ; $64aa: $16 $17
	jr   jr_084_64c7                                 ; $64ac: $18 $19

	ld   a, [de]                                     ; $64ae: $1a
	dec  bc                                          ; $64af: $0b
	inc  c                                           ; $64b0: $0c
	dec  e                                           ; $64b1: $1d
	ld   e, $1f                                      ; $64b2: $1e $1f
	dec  c                                           ; $64b4: $0d
	inc  c                                           ; $64b5: $0c
	dec  bc                                          ; $64b6: $0b
	add  hl, bc                                      ; $64b7: $09
	inc  bc                                          ; $64b8: $03
	inc  bc                                          ; $64b9: $03
	inc  bc                                          ; $64ba: $03
	inc  bc                                          ; $64bb: $03
	inc  bc                                          ; $64bc: $03
	inc  bc                                          ; $64bd: $03
	inc  bc                                          ; $64be: $03
	inc  bc                                          ; $64bf: $03
	inc  bc                                          ; $64c0: $03
	inc  bc                                          ; $64c1: $03
	inc  bc                                          ; $64c2: $03
	inc  bc                                          ; $64c3: $03
	inc  bc                                          ; $64c4: $03
	inc  bc                                          ; $64c5: $03
	inc  bc                                          ; $64c6: $03

jr_084_64c7:
	inc  bc                                          ; $64c7: $03
	dec  bc                                          ; $64c8: $0b
	dec  bc                                          ; $64c9: $0b
	inc  bc                                          ; $64ca: $03
	dec  bc                                          ; $64cb: $0b
	inc  b                                           ; $64cc: $04
	inc  bc                                          ; $64cd: $03
	inc  bc                                          ; $64ce: $03
	inc  bc                                          ; $64cf: $03
	inc  bc                                          ; $64d0: $03
	inc  bc                                          ; $64d1: $03
	inc  bc                                          ; $64d2: $03
	inc  bc                                          ; $64d3: $03
	inc  bc                                          ; $64d4: $03
	inc  bc                                          ; $64d5: $03
	inc  bc                                          ; $64d6: $03
	inc  bc                                          ; $64d7: $03
	inc  bc                                          ; $64d8: $03
	inc  bc                                          ; $64d9: $03
	inc  bc                                          ; $64da: $03
	inc  bc                                          ; $64db: $03
	dec  bc                                          ; $64dc: $0b
	dec  bc                                          ; $64dd: $0b
	dec  bc                                          ; $64de: $0b
	dec  bc                                          ; $64df: $0b
	inc  b                                           ; $64e0: $04
	inc  bc                                          ; $64e1: $03
	inc  bc                                          ; $64e2: $03
	inc  bc                                          ; $64e3: $03
	inc  bc                                          ; $64e4: $03
	inc  bc                                          ; $64e5: $03
	inc  bc                                          ; $64e6: $03
	inc  bc                                          ; $64e7: $03
	inc  bc                                          ; $64e8: $03
	inc  bc                                          ; $64e9: $03
	inc  bc                                          ; $64ea: $03
	inc  b                                           ; $64eb: $04
	inc  b                                           ; $64ec: $04
	inc  b                                           ; $64ed: $04
	inc  b                                           ; $64ee: $04
	inc  b                                           ; $64ef: $04
	dec  bc                                          ; $64f0: $0b
	dec  bc                                          ; $64f1: $0b
	dec  bc                                          ; $64f2: $0b
	inc  c                                           ; $64f3: $0c
	inc  b                                           ; $64f4: $04
	inc  bc                                          ; $64f5: $03
	inc  bc                                          ; $64f6: $03
	inc  bc                                          ; $64f7: $03
	inc  bc                                          ; $64f8: $03
	inc  bc                                          ; $64f9: $03
	inc  bc                                          ; $64fa: $03
	inc  b                                           ; $64fb: $04
	inc  b                                           ; $64fc: $04
	inc  b                                           ; $64fd: $04
	inc  bc                                          ; $64fe: $03
	inc  b                                           ; $64ff: $04
	inc  b                                           ; $6500: $04
	inc  b                                           ; $6501: $04
	inc  b                                           ; $6502: $04
	inc  b                                           ; $6503: $04
	inc  bc                                          ; $6504: $03
	inc  bc                                          ; $6505: $03
	dec  bc                                          ; $6506: $0b
	inc  b                                           ; $6507: $04
	inc  bc                                          ; $6508: $03
	inc  bc                                          ; $6509: $03
	inc  bc                                          ; $650a: $03
	inc  bc                                          ; $650b: $03
	inc  bc                                          ; $650c: $03
	inc  bc                                          ; $650d: $03
	inc  bc                                          ; $650e: $03
	inc  bc                                          ; $650f: $03
	inc  bc                                          ; $6510: $03
	inc  bc                                          ; $6511: $03
	inc  bc                                          ; $6512: $03
	inc  bc                                          ; $6513: $03
	inc  bc                                          ; $6514: $03
	inc  bc                                          ; $6515: $03
	inc  bc                                          ; $6516: $03
	inc  b                                           ; $6517: $04
	dec  bc                                          ; $6518: $0b
	dec  bc                                          ; $6519: $0b
	dec  bc                                          ; $651a: $0b
	inc  c                                           ; $651b: $0c
	inc  b                                           ; $651c: $04
	inc  b                                           ; $651d: $04
	inc  bc                                          ; $651e: $03
	inc  bc                                          ; $651f: $03
	inc  bc                                          ; $6520: $03
	inc  bc                                          ; $6521: $03
	inc  bc                                          ; $6522: $03
	inc  bc                                          ; $6523: $03
	inc  bc                                          ; $6524: $03
	inc  bc                                          ; $6525: $03
	inc  bc                                          ; $6526: $03
	inc  bc                                          ; $6527: $03
	inc  bc                                          ; $6528: $03
	inc  bc                                          ; $6529: $03
	inc  bc                                          ; $652a: $03
	inc  bc                                          ; $652b: $03
	inc  bc                                          ; $652c: $03
	inc  bc                                          ; $652d: $03
	inc  bc                                          ; $652e: $03
	inc  bc                                          ; $652f: $03
	inc  b                                           ; $6530: $04
	inc  b                                           ; $6531: $04
	inc  b                                           ; $6532: $04
	inc  bc                                          ; $6533: $03
	inc  bc                                          ; $6534: $03
	inc  bc                                          ; $6535: $03
	inc  bc                                          ; $6536: $03
	inc  bc                                          ; $6537: $03
	inc  bc                                          ; $6538: $03
	inc  bc                                          ; $6539: $03
	inc  bc                                          ; $653a: $03
	inc  bc                                          ; $653b: $03
	inc  bc                                          ; $653c: $03
	inc  bc                                          ; $653d: $03
	inc  bc                                          ; $653e: $03
	inc  bc                                          ; $653f: $03
	dec  bc                                          ; $6540: $0b
	dec  bc                                          ; $6541: $0b
	dec  bc                                          ; $6542: $0b
	dec  bc                                          ; $6543: $0b
	inc  bc                                          ; $6544: $03
	inc  bc                                          ; $6545: $03
	inc  b                                           ; $6546: $04
	dec  b                                           ; $6547: $05
	dec  b                                           ; $6548: $05
	dec  b                                           ; $6549: $05
	dec  b                                           ; $654a: $05
	dec  b                                           ; $654b: $05
	dec  b                                           ; $654c: $05
	inc  bc                                          ; $654d: $03
	inc  bc                                          ; $654e: $03
	inc  bc                                          ; $654f: $03
	inc  bc                                          ; $6550: $03
	inc  bc                                          ; $6551: $03
	inc  bc                                          ; $6552: $03
	dec  b                                           ; $6553: $05
	inc  bc                                          ; $6554: $03
	inc  bc                                          ; $6555: $03
	inc  bc                                          ; $6556: $03
	inc  bc                                          ; $6557: $03
	dec  bc                                          ; $6558: $0b
	dec  bc                                          ; $6559: $0b
	dec  c                                           ; $655a: $0d
	dec  c                                           ; $655b: $0d
	dec  c                                           ; $655c: $0d
	dec  c                                           ; $655d: $0d
	dec  c                                           ; $655e: $0d
	dec  c                                           ; $655f: $0d
	dec  c                                           ; $6560: $0d
	dec  c                                           ; $6561: $0d
	dec  bc                                          ; $6562: $0b
	dec  bc                                          ; $6563: $0b
	dec  bc                                          ; $6564: $0b
	dec  bc                                          ; $6565: $0b
	dec  c                                           ; $6566: $0d
	dec  c                                           ; $6567: $0d
	dec  b                                           ; $6568: $05
	inc  bc                                          ; $6569: $03
	inc  bc                                          ; $656a: $03
	inc  bc                                          ; $656b: $03
	dec  bc                                          ; $656c: $0b
	dec  bc                                          ; $656d: $0b
	dec  bc                                          ; $656e: $0b
	dec  c                                           ; $656f: $0d
	dec  c                                           ; $6570: $0d
	dec  c                                           ; $6571: $0d
	dec  bc                                          ; $6572: $0b
	dec  bc                                          ; $6573: $0b
	dec  c                                           ; $6574: $0d
	dec  c                                           ; $6575: $0d
	dec  bc                                          ; $6576: $0b
	dec  bc                                          ; $6577: $0b
	dec  bc                                          ; $6578: $0b
	dec  c                                           ; $6579: $0d
	dec  c                                           ; $657a: $0d
	dec  c                                           ; $657b: $0d
	dec  b                                           ; $657c: $05
	dec  b                                           ; $657d: $05
	inc  bc                                          ; $657e: $03
	inc  bc                                          ; $657f: $03
	nop                                              ; $6580: $00
	ld   bc, $0302                                   ; $6581: $01 $02 $03
	inc  b                                           ; $6584: $04
	dec  b                                           ; $6585: $05
	ld   b, $07                                      ; $6586: $06 $07
	rlca                                             ; $6588: $07
	add  hl, bc                                      ; $6589: $09
	ld   a, [bc]                                     ; $658a: $0a
	dec  bc                                          ; $658b: $0b
	inc  c                                           ; $658c: $0c
	dec  c                                           ; $658d: $0d
	ld   c, $0f                                      ; $658e: $0e $0f
	jr   nz, jr_084_65b3                             ; $6590: $20 $21

	ld   [hl+], a                                    ; $6592: $22
	inc  hl                                          ; $6593: $23
	db   $10                                         ; $6594: $10
	ld   de, $1312                                   ; $6595: $11 $12 $13
	inc  d                                           ; $6598: $14
	dec  d                                           ; $6599: $15
	ld   d, $17                                      ; $659a: $16 $17
	jr   @+$1b                                       ; $659c: $18 $19

	ld   a, [de]                                     ; $659e: $1a
	dec  de                                          ; $659f: $1b
	inc  e                                           ; $65a0: $1c
	dec  e                                           ; $65a1: $1d
	ld   e, $1f                                      ; $65a2: $1e $1f
	jr   nc, jr_084_65d7                             ; $65a4: $30 $31

	ld   [hl-], a                                    ; $65a6: $32
	inc  sp                                          ; $65a7: $33
	jr   nz, @+$23                                   ; $65a8: $20 $21

	ld   [hl+], a                                    ; $65aa: $22
	inc  hl                                          ; $65ab: $23
	inc  h                                           ; $65ac: $24
	dec  h                                           ; $65ad: $25
	ld   h, $27                                      ; $65ae: $26 $27
	jr   z, jr_084_65db                              ; $65b0: $28 $29

	ld   a, [hl+]                                    ; $65b2: $2a

jr_084_65b3:
	dec  hl                                          ; $65b3: $2b
	inc  l                                           ; $65b4: $2c
	dec  l                                           ; $65b5: $2d
	ld   l, $2f                                      ; $65b6: $2e $2f
	inc  h                                           ; $65b8: $24
	dec  h                                           ; $65b9: $25
	ld   h, $27                                      ; $65ba: $26 $27
	jr   nc, jr_084_65ef                             ; $65bc: $30 $31

	ld   [hl-], a                                    ; $65be: $32
	inc  sp                                          ; $65bf: $33
	inc  [hl]                                        ; $65c0: $34
	dec  [hl]                                        ; $65c1: $35
	ld   [hl], $37                                   ; $65c2: $36 $37
	jr   c, jr_084_65ff                              ; $65c4: $38 $39

	ld   a, [hl-]                                    ; $65c6: $3a
	dec  sp                                          ; $65c7: $3b
	inc  a                                           ; $65c8: $3c
	dec  a                                           ; $65c9: $3d
	ld   a, $3f                                      ; $65ca: $3e $3f
	inc  [hl]                                        ; $65cc: $34
	dec  [hl]                                        ; $65cd: $35
	ld   [hl], $37                                   ; $65ce: $36 $37
	ld   b, b                                        ; $65d0: $40
	ld   b, c                                        ; $65d1: $41
	ld   b, d                                        ; $65d2: $42
	ld   b, e                                        ; $65d3: $43
	ld   b, h                                        ; $65d4: $44
	ld   b, l                                        ; $65d5: $45
	ld   b, [hl]                                     ; $65d6: $46

jr_084_65d7:
	ld   b, a                                        ; $65d7: $47
	ld   c, b                                        ; $65d8: $48
	ld   c, c                                        ; $65d9: $49
	ld   c, d                                        ; $65da: $4a

jr_084_65db:
	ld   c, e                                        ; $65db: $4b
	ld   c, h                                        ; $65dc: $4c
	ld   c, l                                        ; $65dd: $4d
	ld   c, [hl]                                     ; $65de: $4e
	ld   c, a                                        ; $65df: $4f
	jr   z, @+$2b                                    ; $65e0: $28 $29

	ld   a, [hl+]                                    ; $65e2: $2a
	dec  hl                                          ; $65e3: $2b
	ld   d, b                                        ; $65e4: $50
	ld   d, c                                        ; $65e5: $51
	ld   d, d                                        ; $65e6: $52
	ld   d, e                                        ; $65e7: $53
	ld   d, h                                        ; $65e8: $54
	ld   d, l                                        ; $65e9: $55
	ld   d, [hl]                                     ; $65ea: $56
	ld   d, a                                        ; $65eb: $57
	ld   e, b                                        ; $65ec: $58
	ld   e, c                                        ; $65ed: $59
	ld   e, d                                        ; $65ee: $5a

jr_084_65ef:
	ld   e, e                                        ; $65ef: $5b
	ld   e, h                                        ; $65f0: $5c
	ld   e, l                                        ; $65f1: $5d
	ld   e, [hl]                                     ; $65f2: $5e
	ld   e, a                                        ; $65f3: $5f
	jr   c, jr_084_6607                              ; $65f4: $38 $11

	stop                                             ; $65f6: $10 $00
	ld   h, b                                        ; $65f8: $60
	ld   h, c                                        ; $65f9: $61
	ld   h, d                                        ; $65fa: $62
	ld   h, e                                        ; $65fb: $63
	ld   h, h                                        ; $65fc: $64
	ld   h, l                                        ; $65fd: $65
	ld   h, [hl]                                     ; $65fe: $66

jr_084_65ff:
	ld   h, a                                        ; $65ff: $67
	ld   [hl], c                                     ; $6600: $71
	ld   l, c                                        ; $6601: $69
	ld   l, d                                        ; $6602: $6a
	ld   l, e                                        ; $6603: $6b
	ld   l, h                                        ; $6604: $6c
	ld   l, l                                        ; $6605: $6d
	ld   l, [hl]                                     ; $6606: $6e

jr_084_6607:
	ld   l, a                                        ; $6607: $6f
	inc  l                                           ; $6608: $2c
	dec  l                                           ; $6609: $2d
	ld   l, $2f                                      ; $660a: $2e $2f
	ld   h, b                                        ; $660c: $60
	ld   [hl], c                                     ; $660d: $71
	ld   [hl], c                                     ; $660e: $71
	ld   [hl], c                                     ; $660f: $71
	ld   [hl], c                                     ; $6610: $71
	ld   [hl], c                                     ; $6611: $71
	halt                                             ; $6612: $76
	ld   [hl], c                                     ; $6613: $71
	ld   a, b                                        ; $6614: $78
	ld   a, c                                        ; $6615: $79
	ld   a, d                                        ; $6616: $7a
	ld   a, e                                        ; $6617: $7b
	ld   a, h                                        ; $6618: $7c
	ld   a, l                                        ; $6619: $7d
	ld   a, [hl]                                     ; $661a: $7e
	ld   a, a                                        ; $661b: $7f
	ld   [hl], a                                     ; $661c: $77
	ld   [hl], b                                     ; $661d: $70
	ld   l, b                                        ; $661e: $68
	ld   [$7160], sp                                 ; $661f: $08 $60 $71
	ld   [hl], c                                     ; $6622: $71
	ld   [hl], c                                     ; $6623: $71
	ld   [hl], c                                     ; $6624: $71
	dec  b                                           ; $6625: $05
	ld   b, $07                                      ; $6626: $06 $07
	ld   [$0a09], sp                                 ; $6628: $08 $09 $0a
	dec  bc                                          ; $662b: $0b
	inc  c                                           ; $662c: $0c
	dec  c                                           ; $662d: $0d
	ld   c, $0f                                      ; $662e: $0e $0f
	ld   bc, $0302                                   ; $6630: $01 $02 $03
	inc  b                                           ; $6633: $04
	ld   h, b                                        ; $6634: $60
	ld   [hl], c                                     ; $6635: $71
	ld   [de], a                                     ; $6636: $12
	inc  de                                          ; $6637: $13
	inc  d                                           ; $6638: $14
	dec  d                                           ; $6639: $15
	ld   d, $17                                      ; $663a: $16 $17
	jr   jr_084_6657                                 ; $663c: $18 $19

	ld   a, [de]                                     ; $663e: $1a
	dec  de                                          ; $663f: $1b
	inc  e                                           ; $6640: $1c
	dec  e                                           ; $6641: $1d
	ld   e, $1f                                      ; $6642: $1e $1f
	ld   [hl], d                                     ; $6644: $72
	ld   [hl], e                                     ; $6645: $73
	ld   [hl], h                                     ; $6646: $74
	ld   [hl], l                                     ; $6647: $75
	inc  bc                                          ; $6648: $03
	inc  bc                                          ; $6649: $03
	inc  b                                           ; $664a: $04
	inc  b                                           ; $664b: $04
	inc  b                                           ; $664c: $04
	inc  b                                           ; $664d: $04
	inc  bc                                          ; $664e: $03
	inc  bc                                          ; $664f: $03
	inc  bc                                          ; $6650: $03
	inc  bc                                          ; $6651: $03
	inc  bc                                          ; $6652: $03
	dec  b                                           ; $6653: $05
	dec  b                                           ; $6654: $05
	dec  b                                           ; $6655: $05
	dec  b                                           ; $6656: $05

jr_084_6657:
	dec  b                                           ; $6657: $05
	dec  c                                           ; $6658: $0d
	dec  c                                           ; $6659: $0d
	dec  c                                           ; $665a: $0d
	dec  c                                           ; $665b: $0d
	inc  bc                                          ; $665c: $03
	inc  b                                           ; $665d: $04
	inc  b                                           ; $665e: $04
	inc  b                                           ; $665f: $04
	inc  b                                           ; $6660: $04
	inc  b                                           ; $6661: $04
	inc  bc                                          ; $6662: $03
	inc  bc                                          ; $6663: $03
	inc  bc                                          ; $6664: $03
	inc  bc                                          ; $6665: $03
	inc  bc                                          ; $6666: $03
	inc  bc                                          ; $6667: $03
	inc  bc                                          ; $6668: $03
	inc  bc                                          ; $6669: $03
	dec  b                                           ; $666a: $05
	dec  b                                           ; $666b: $05
	dec  c                                           ; $666c: $0d
	dec  c                                           ; $666d: $0d
	dec  c                                           ; $666e: $0d
	dec  c                                           ; $666f: $0d
	inc  bc                                          ; $6670: $03
	inc  bc                                          ; $6671: $03
	inc  b                                           ; $6672: $04
	inc  b                                           ; $6673: $04
	inc  b                                           ; $6674: $04
	inc  b                                           ; $6675: $04
	inc  bc                                          ; $6676: $03
	inc  bc                                          ; $6677: $03
	inc  bc                                          ; $6678: $03
	inc  bc                                          ; $6679: $03
	inc  bc                                          ; $667a: $03
	inc  bc                                          ; $667b: $03
	inc  b                                           ; $667c: $04
	inc  bc                                          ; $667d: $03
	inc  bc                                          ; $667e: $03
	inc  bc                                          ; $667f: $03
	dec  c                                           ; $6680: $0d
	dec  c                                           ; $6681: $0d
	dec  c                                           ; $6682: $0d
	dec  c                                           ; $6683: $0d
	inc  bc                                          ; $6684: $03
	inc  bc                                          ; $6685: $03
	inc  bc                                          ; $6686: $03
	inc  b                                           ; $6687: $04
	inc  b                                           ; $6688: $04
	inc  b                                           ; $6689: $04
	inc  bc                                          ; $668a: $03
	inc  bc                                          ; $668b: $03
	inc  bc                                          ; $668c: $03
	inc  bc                                          ; $668d: $03
	inc  bc                                          ; $668e: $03
	inc  bc                                          ; $668f: $03
	dec  b                                           ; $6690: $05
	inc  bc                                          ; $6691: $03
	inc  bc                                          ; $6692: $03
	inc  bc                                          ; $6693: $03
	dec  c                                           ; $6694: $0d
	dec  bc                                          ; $6695: $0b
	dec  c                                           ; $6696: $0d
	dec  c                                           ; $6697: $0d
	inc  bc                                          ; $6698: $03
	inc  bc                                          ; $6699: $03
	inc  bc                                          ; $669a: $03
	inc  b                                           ; $669b: $04
	inc  b                                           ; $669c: $04
	inc  b                                           ; $669d: $04
	inc  bc                                          ; $669e: $03
	inc  bc                                          ; $669f: $03
	inc  bc                                          ; $66a0: $03
	inc  bc                                          ; $66a1: $03
	inc  bc                                          ; $66a2: $03
	inc  bc                                          ; $66a3: $03
	inc  bc                                          ; $66a4: $03
	inc  bc                                          ; $66a5: $03
	inc  bc                                          ; $66a6: $03
	inc  bc                                          ; $66a7: $03
	dec  bc                                          ; $66a8: $0b
	dec  bc                                          ; $66a9: $0b
	dec  bc                                          ; $66aa: $0b
	dec  bc                                          ; $66ab: $0b
	inc  bc                                          ; $66ac: $03
	inc  bc                                          ; $66ad: $03
	inc  bc                                          ; $66ae: $03
	inc  bc                                          ; $66af: $03
	inc  bc                                          ; $66b0: $03
	inc  bc                                          ; $66b1: $03
	inc  bc                                          ; $66b2: $03
	inc  bc                                          ; $66b3: $03
	inc  bc                                          ; $66b4: $03
	inc  bc                                          ; $66b5: $03
	dec  b                                           ; $66b6: $05
	dec  b                                           ; $66b7: $05
	inc  bc                                          ; $66b8: $03
	inc  bc                                          ; $66b9: $03
	inc  bc                                          ; $66ba: $03
	inc  bc                                          ; $66bb: $03
	dec  bc                                          ; $66bc: $0b
	inc  c                                           ; $66bd: $0c
	inc  c                                           ; $66be: $0c
	inc  c                                           ; $66bf: $0c
	inc  bc                                          ; $66c0: $03
	inc  bc                                          ; $66c1: $03
	inc  bc                                          ; $66c2: $03
	inc  bc                                          ; $66c3: $03
	inc  bc                                          ; $66c4: $03
	inc  bc                                          ; $66c5: $03
	inc  bc                                          ; $66c6: $03
	inc  bc                                          ; $66c7: $03
	inc  bc                                          ; $66c8: $03
	inc  bc                                          ; $66c9: $03
	dec  b                                           ; $66ca: $05
	dec  b                                           ; $66cb: $05
	inc  bc                                          ; $66cc: $03
	inc  bc                                          ; $66cd: $03
	inc  b                                           ; $66ce: $04
	inc  b                                           ; $66cf: $04
	inc  c                                           ; $66d0: $0c
	inc  c                                           ; $66d1: $0c
	inc  c                                           ; $66d2: $0c
	inc  c                                           ; $66d3: $0c
	inc  bc                                          ; $66d4: $03
	inc  bc                                          ; $66d5: $03
	inc  bc                                          ; $66d6: $03
	inc  bc                                          ; $66d7: $03
	inc  bc                                          ; $66d8: $03
	inc  bc                                          ; $66d9: $03
	inc  bc                                          ; $66da: $03
	inc  bc                                          ; $66db: $03
	inc  bc                                          ; $66dc: $03
	inc  bc                                          ; $66dd: $03
	dec  b                                           ; $66de: $05
	dec  b                                           ; $66df: $05
	inc  b                                           ; $66e0: $04
	inc  b                                           ; $66e1: $04
	inc  b                                           ; $66e2: $04
	inc  b                                           ; $66e3: $04
	inc  b                                           ; $66e4: $04
	inc  b                                           ; $66e5: $04
	inc  b                                           ; $66e6: $04
	inc  b                                           ; $66e7: $04
	inc  bc                                          ; $66e8: $03
	inc  bc                                          ; $66e9: $03
	inc  bc                                          ; $66ea: $03
	inc  bc                                          ; $66eb: $03
	inc  bc                                          ; $66ec: $03
	dec  bc                                          ; $66ed: $0b
	dec  bc                                          ; $66ee: $0b
	dec  bc                                          ; $66ef: $0b
	dec  bc                                          ; $66f0: $0b
	dec  bc                                          ; $66f1: $0b
	inc  c                                           ; $66f2: $0c
	inc  c                                           ; $66f3: $0c
	inc  c                                           ; $66f4: $0c
	inc  c                                           ; $66f5: $0c
	inc  c                                           ; $66f6: $0c
	inc  c                                           ; $66f7: $0c
	inc  c                                           ; $66f8: $0c
	inc  c                                           ; $66f9: $0c
	inc  c                                           ; $66fa: $0c
	inc  c                                           ; $66fb: $0c
	inc  bc                                          ; $66fc: $03
	inc  bc                                          ; $66fd: $03
	dec  bc                                          ; $66fe: $0b
	dec  bc                                          ; $66ff: $0b
	dec  bc                                          ; $6700: $0b
	inc  c                                           ; $6701: $0c
	inc  c                                           ; $6702: $0c
	inc  c                                           ; $6703: $0c
	inc  c                                           ; $6704: $0c
	inc  c                                           ; $6705: $0c
	inc  c                                           ; $6706: $0c
	inc  c                                           ; $6707: $0c
	inc  c                                           ; $6708: $0c
	inc  c                                           ; $6709: $0c
	inc  c                                           ; $670a: $0c
	inc  c                                           ; $670b: $0c
	inc  b                                           ; $670c: $04
	inc  b                                           ; $670d: $04
	inc  b                                           ; $670e: $04
	inc  b                                           ; $670f: $04
	nop                                              ; $6710: $00
	ld   bc, $0302                                   ; $6711: $01 $02 $03
	inc  b                                           ; $6714: $04
	dec  b                                           ; $6715: $05
	ld   b, $07                                      ; $6716: $06 $07
	ld   [$0a09], sp                                 ; $6718: $08 $09 $0a
	dec  bc                                          ; $671b: $0b
	inc  c                                           ; $671c: $0c
	dec  c                                           ; $671d: $0d
	dec  c                                           ; $671e: $0d
	rrca                                             ; $671f: $0f
	nop                                              ; $6720: $00
	ld   bc, $0302                                   ; $6721: $01 $02 $03
	db   $10                                         ; $6724: $10
	ld   de, $1312                                   ; $6725: $11 $12 $13
	inc  d                                           ; $6728: $14
	dec  d                                           ; $6729: $15
	ld   d, $17                                      ; $672a: $16 $17
	jr   jr_084_6746                                 ; $672c: $18 $18

	ld   a, [de]                                     ; $672e: $1a
	dec  de                                          ; $672f: $1b
	inc  e                                           ; $6730: $1c
	dec  e                                           ; $6731: $1d
	ld   e, $1f                                      ; $6732: $1e $1f
	db   $10                                         ; $6734: $10
	ld   de, $1312                                   ; $6735: $11 $12 $13
	jr   nz, @+$23                                   ; $6738: $20 $21

	ld   [hl+], a                                    ; $673a: $22
	inc  hl                                          ; $673b: $23
	inc  h                                           ; $673c: $24
	dec  h                                           ; $673d: $25
	ld   h, $27                                      ; $673e: $26 $27
	jr   z, jr_084_676b                              ; $6740: $28 $29

	ld   a, [hl+]                                    ; $6742: $2a
	dec  hl                                          ; $6743: $2b
	inc  l                                           ; $6744: $2c
	dec  l                                           ; $6745: $2d

jr_084_6746:
	ld   l, $2f                                      ; $6746: $2e $2f
	inc  b                                           ; $6748: $04
	dec  b                                           ; $6749: $05
	ld   b, $07                                      ; $674a: $06 $07
	jr   nc, jr_084_677f                             ; $674c: $30 $31

	ld   [hl-], a                                    ; $674e: $32
	inc  sp                                          ; $674f: $33
	inc  [hl]                                        ; $6750: $34
	dec  [hl]                                        ; $6751: $35
	ld   [hl], $37                                   ; $6752: $36 $37
	jr   c, jr_084_678f                              ; $6754: $38 $39

	ld   a, [hl-]                                    ; $6756: $3a
	dec  sp                                          ; $6757: $3b
	inc  a                                           ; $6758: $3c
	dec  a                                           ; $6759: $3d
	ld   a, $3f                                      ; $675a: $3e $3f
	inc  d                                           ; $675c: $14
	dec  d                                           ; $675d: $15
	ld   d, $17                                      ; $675e: $16 $17
	ld   b, b                                        ; $6760: $40
	ld   b, c                                        ; $6761: $41
	ld   b, d                                        ; $6762: $42
	ld   b, e                                        ; $6763: $43
	ld   b, h                                        ; $6764: $44
	ld   b, l                                        ; $6765: $45
	ld   b, [hl]                                     ; $6766: $46
	ld   b, a                                        ; $6767: $47
	ld   c, b                                        ; $6768: $48
	ld   c, c                                        ; $6769: $49
	ld   c, d                                        ; $676a: $4a

jr_084_676b:
	ld   c, e                                        ; $676b: $4b
	ld   c, h                                        ; $676c: $4c
	ld   c, l                                        ; $676d: $4d
	ld   c, [hl]                                     ; $676e: $4e
	ld   c, a                                        ; $676f: $4f
	ld   [$0a09], sp                                 ; $6770: $08 $09 $0a
	dec  bc                                          ; $6773: $0b
	ld   d, b                                        ; $6774: $50
	ld   d, c                                        ; $6775: $51
	ld   d, d                                        ; $6776: $52
	ld   d, e                                        ; $6777: $53
	ld   d, h                                        ; $6778: $54
	ld   d, l                                        ; $6779: $55
	ld   d, [hl]                                     ; $677a: $56
	ld   d, a                                        ; $677b: $57
	ld   e, b                                        ; $677c: $58
	ld   e, c                                        ; $677d: $59
	ld   e, d                                        ; $677e: $5a

jr_084_677f:
	ld   e, e                                        ; $677f: $5b
	ld   e, h                                        ; $6780: $5c
	ld   e, l                                        ; $6781: $5d
	ld   e, [hl]                                     ; $6782: $5e
	ld   e, a                                        ; $6783: $5f
	jr   jr_084_679f                                 ; $6784: $18 $19

	ld   a, [de]                                     ; $6786: $1a
	dec  de                                          ; $6787: $1b
	ld   h, b                                        ; $6788: $60
	ld   h, c                                        ; $6789: $61
	ld   h, d                                        ; $678a: $62
	ld   h, e                                        ; $678b: $63
	ld   h, h                                        ; $678c: $64
	ld   h, l                                        ; $678d: $65
	ld   h, [hl]                                     ; $678e: $66

jr_084_678f:
	ld   h, a                                        ; $678f: $67
	ld   l, b                                        ; $6790: $68
	ld   l, c                                        ; $6791: $69
	ld   l, d                                        ; $6792: $6a
	ld   l, e                                        ; $6793: $6b
	ld   l, h                                        ; $6794: $6c
	ld   l, l                                        ; $6795: $6d
	ld   l, [hl]                                     ; $6796: $6e
	ld   l, a                                        ; $6797: $6f
	inc  c                                           ; $6798: $0c
	dec  c                                           ; $6799: $0d
	ld   c, $0f                                      ; $679a: $0e $0f
	ld   [hl], b                                     ; $679c: $70
	ld   [hl], c                                     ; $679d: $71
	ld   [hl], d                                     ; $679e: $72

jr_084_679f:
	ld   [hl], e                                     ; $679f: $73
	ld   [hl], h                                     ; $67a0: $74
	ld   [hl], l                                     ; $67a1: $75
	halt                                             ; $67a2: $76
	ld   [hl], a                                     ; $67a3: $77
	ld   a, b                                        ; $67a4: $78
	ld   a, c                                        ; $67a5: $79
	ld   a, d                                        ; $67a6: $7a
	ld   a, e                                        ; $67a7: $7b
	ld   a, h                                        ; $67a8: $7c
	ld   a, l                                        ; $67a9: $7d
	ld   a, [hl]                                     ; $67aa: $7e
	ld   a, a                                        ; $67ab: $7f
	inc  e                                           ; $67ac: $1c
	dec  e                                           ; $67ad: $1d
	ld   e, $1f                                      ; $67ae: $1e $1f
	inc  h                                           ; $67b0: $24
	dec  h                                           ; $67b1: $25
	ld   h, $27                                      ; $67b2: $26 $27
	jr   z, jr_084_67df                              ; $67b4: $28 $29

	ld   a, [hl+]                                    ; $67b6: $2a
	dec  hl                                          ; $67b7: $2b
	inc  l                                           ; $67b8: $2c
	dec  l                                           ; $67b9: $2d
	ld   l, $2f                                      ; $67ba: $2e $2f
	ld   [hl], $37                                   ; $67bc: $36 $37
	jr   c, jr_084_67f9                              ; $67be: $38 $39

	jr   nz, jr_084_67e3                             ; $67c0: $20 $21

	ld   [hl+], a                                    ; $67c2: $22
	inc  hl                                          ; $67c3: $23
	inc  [hl]                                        ; $67c4: $34
	dec  [hl]                                        ; $67c5: $35
	dec  [hl]                                        ; $67c6: $35
	dec  [hl]                                        ; $67c7: $35
	dec  [hl]                                        ; $67c8: $35
	dec  [hl]                                        ; $67c9: $35
	dec  [hl]                                        ; $67ca: $35
	dec  [hl]                                        ; $67cb: $35
	dec  [hl]                                        ; $67cc: $35
	dec  [hl]                                        ; $67cd: $35
	dec  [hl]                                        ; $67ce: $35
	dec  [hl]                                        ; $67cf: $35
	dec  [hl]                                        ; $67d0: $35
	dec  [hl]                                        ; $67d1: $35
	add  hl, de                                      ; $67d2: $19
	ld   c, $30                                      ; $67d3: $0e $30
	ld   sp, $3332                                   ; $67d5: $31 $32 $33
	inc  b                                           ; $67d8: $04
	inc  b                                           ; $67d9: $04
	inc  b                                           ; $67da: $04
	inc  b                                           ; $67db: $04
	inc  b                                           ; $67dc: $04
	inc  b                                           ; $67dd: $04
	inc  b                                           ; $67de: $04

jr_084_67df:
	inc  b                                           ; $67df: $04
	inc  b                                           ; $67e0: $04
	inc  b                                           ; $67e1: $04
	inc  b                                           ; $67e2: $04

jr_084_67e3:
	inc  b                                           ; $67e3: $04
	inc  b                                           ; $67e4: $04
	inc  b                                           ; $67e5: $04
	inc  b                                           ; $67e6: $04
	inc  b                                           ; $67e7: $04
	inc  c                                           ; $67e8: $0c
	inc  c                                           ; $67e9: $0c
	inc  c                                           ; $67ea: $0c
	inc  c                                           ; $67eb: $0c
	inc  b                                           ; $67ec: $04
	inc  b                                           ; $67ed: $04
	inc  b                                           ; $67ee: $04
	inc  b                                           ; $67ef: $04
	inc  b                                           ; $67f0: $04
	inc  b                                           ; $67f1: $04
	inc  b                                           ; $67f2: $04
	inc  b                                           ; $67f3: $04
	inc  b                                           ; $67f4: $04
	inc  b                                           ; $67f5: $04
	inc  b                                           ; $67f6: $04
	inc  bc                                          ; $67f7: $03
	inc  bc                                          ; $67f8: $03

jr_084_67f9:
	inc  bc                                          ; $67f9: $03
	inc  bc                                          ; $67fa: $03
	inc  bc                                          ; $67fb: $03
	inc  c                                           ; $67fc: $0c
	inc  c                                           ; $67fd: $0c
	inc  c                                           ; $67fe: $0c
	inc  c                                           ; $67ff: $0c
	inc  b                                           ; $6800: $04
	inc  b                                           ; $6801: $04
	inc  b                                           ; $6802: $04
	inc  b                                           ; $6803: $04
	inc  b                                           ; $6804: $04
	inc  b                                           ; $6805: $04
	inc  b                                           ; $6806: $04
	inc  bc                                          ; $6807: $03
	inc  bc                                          ; $6808: $03
	inc  bc                                          ; $6809: $03
	inc  bc                                          ; $680a: $03
	inc  bc                                          ; $680b: $03
	inc  bc                                          ; $680c: $03
	inc  bc                                          ; $680d: $03
	inc  bc                                          ; $680e: $03
	inc  bc                                          ; $680f: $03
	inc  c                                           ; $6810: $0c
	inc  c                                           ; $6811: $0c
	inc  c                                           ; $6812: $0c
	inc  c                                           ; $6813: $0c
	inc  b                                           ; $6814: $04
	inc  b                                           ; $6815: $04
	inc  b                                           ; $6816: $04
	inc  b                                           ; $6817: $04
	inc  b                                           ; $6818: $04
	inc  b                                           ; $6819: $04
	inc  b                                           ; $681a: $04
	inc  bc                                          ; $681b: $03
	inc  bc                                          ; $681c: $03
	inc  bc                                          ; $681d: $03
	dec  b                                           ; $681e: $05
	dec  b                                           ; $681f: $05
	inc  bc                                          ; $6820: $03
	dec  b                                           ; $6821: $05
	dec  b                                           ; $6822: $05
	inc  b                                           ; $6823: $04
	inc  c                                           ; $6824: $0c
	inc  c                                           ; $6825: $0c
	inc  c                                           ; $6826: $0c
	inc  c                                           ; $6827: $0c
	inc  bc                                          ; $6828: $03
	inc  bc                                          ; $6829: $03
	inc  b                                           ; $682a: $04
	inc  b                                           ; $682b: $04
	inc  b                                           ; $682c: $04
	inc  b                                           ; $682d: $04
	inc  b                                           ; $682e: $04
	inc  b                                           ; $682f: $04
	inc  b                                           ; $6830: $04
	inc  b                                           ; $6831: $04
	inc  bc                                          ; $6832: $03
	inc  bc                                          ; $6833: $03
	inc  bc                                          ; $6834: $03
	inc  bc                                          ; $6835: $03
	inc  bc                                          ; $6836: $03
	inc  b                                           ; $6837: $04
	dec  bc                                          ; $6838: $0b
	inc  c                                           ; $6839: $0c
	inc  c                                           ; $683a: $0c
	inc  c                                           ; $683b: $0c
	inc  bc                                          ; $683c: $03
	inc  bc                                          ; $683d: $03
	inc  bc                                          ; $683e: $03
	inc  bc                                          ; $683f: $03
	inc  bc                                          ; $6840: $03
	inc  bc                                          ; $6841: $03
	inc  b                                           ; $6842: $04
	inc  bc                                          ; $6843: $03
	inc  bc                                          ; $6844: $03
	inc  bc                                          ; $6845: $03
	dec  b                                           ; $6846: $05
	dec  b                                           ; $6847: $05
	inc  bc                                          ; $6848: $03
	inc  b                                           ; $6849: $04
	dec  b                                           ; $684a: $05
	inc  bc                                          ; $684b: $03
	dec  bc                                          ; $684c: $0b
	dec  bc                                          ; $684d: $0b
	dec  bc                                          ; $684e: $0b
	dec  bc                                          ; $684f: $0b
	inc  bc                                          ; $6850: $03
	inc  b                                           ; $6851: $04
	inc  b                                           ; $6852: $04
	inc  b                                           ; $6853: $04
	inc  b                                           ; $6854: $04
	inc  b                                           ; $6855: $04
	inc  b                                           ; $6856: $04
	inc  bc                                          ; $6857: $03
	inc  bc                                          ; $6858: $03
	dec  b                                           ; $6859: $05
	dec  b                                           ; $685a: $05
	dec  b                                           ; $685b: $05
	inc  bc                                          ; $685c: $03
	inc  b                                           ; $685d: $04
	dec  b                                           ; $685e: $05
	inc  bc                                          ; $685f: $03
	dec  bc                                          ; $6860: $0b
	dec  bc                                          ; $6861: $0b
	dec  bc                                          ; $6862: $0b
	dec  bc                                          ; $6863: $0b
	inc  bc                                          ; $6864: $03
	inc  bc                                          ; $6865: $03
	inc  b                                           ; $6866: $04
	inc  b                                           ; $6867: $04
	inc  b                                           ; $6868: $04
	inc  b                                           ; $6869: $04
	inc  b                                           ; $686a: $04
	inc  bc                                          ; $686b: $03
	inc  bc                                          ; $686c: $03
	inc  bc                                          ; $686d: $03
	inc  bc                                          ; $686e: $03
	inc  bc                                          ; $686f: $03
	inc  bc                                          ; $6870: $03
	inc  bc                                          ; $6871: $03
	inc  bc                                          ; $6872: $03
	inc  bc                                          ; $6873: $03
	dec  bc                                          ; $6874: $0b
	dec  bc                                          ; $6875: $0b
	dec  bc                                          ; $6876: $0b
	dec  bc                                          ; $6877: $0b
	dec  c                                           ; $6878: $0d
	dec  c                                           ; $6879: $0d
	dec  c                                           ; $687a: $0d
	dec  c                                           ; $687b: $0d
	dec  c                                           ; $687c: $0d
	dec  c                                           ; $687d: $0d
	dec  c                                           ; $687e: $0d
	dec  c                                           ; $687f: $0d
	dec  c                                           ; $6880: $0d
	dec  c                                           ; $6881: $0d
	dec  c                                           ; $6882: $0d
	dec  c                                           ; $6883: $0d
	dec  c                                           ; $6884: $0d
	dec  c                                           ; $6885: $0d
	dec  c                                           ; $6886: $0d
	dec  bc                                          ; $6887: $0b
	dec  bc                                          ; $6888: $0b
	dec  bc                                          ; $6889: $0b
	dec  bc                                          ; $688a: $0b
	dec  bc                                          ; $688b: $0b
	dec  c                                           ; $688c: $0d
	dec  c                                           ; $688d: $0d
	dec  c                                           ; $688e: $0d
	dec  c                                           ; $688f: $0d
	dec  c                                           ; $6890: $0d
	dec  c                                           ; $6891: $0d
	dec  c                                           ; $6892: $0d
	dec  c                                           ; $6893: $0d
	dec  c                                           ; $6894: $0d
	dec  c                                           ; $6895: $0d
	dec  c                                           ; $6896: $0d
	dec  c                                           ; $6897: $0d
	dec  c                                           ; $6898: $0d
	dec  c                                           ; $6899: $0d
	dec  b                                           ; $689a: $05
	dec  b                                           ; $689b: $05
	dec  c                                           ; $689c: $0d
	dec  bc                                          ; $689d: $0b
	dec  bc                                          ; $689e: $0b
	dec  bc                                          ; $689f: $0b
	nop                                              ; $68a0: $00
	ld   bc, $0302                                   ; $68a1: $01 $02 $03
	inc  b                                           ; $68a4: $04
	dec  b                                           ; $68a5: $05
	ld   b, $07                                      ; $68a6: $06 $07
	ld   [$0a09], sp                                 ; $68a8: $08 $09 $0a
	dec  bc                                          ; $68ab: $0b
	inc  c                                           ; $68ac: $0c
	dec  c                                           ; $68ad: $0d
	ld   c, $0f                                      ; $68ae: $0e $0f
	jr   nz, jr_084_68d3                             ; $68b0: $20 $21

	ld   [hl+], a                                    ; $68b2: $22
	inc  hl                                          ; $68b3: $23
	db   $10                                         ; $68b4: $10
	ld   de, $1312                                   ; $68b5: $11 $12 $13
	inc  d                                           ; $68b8: $14
	dec  d                                           ; $68b9: $15
	ld   d, $17                                      ; $68ba: $16 $17
	jr   @+$1b                                       ; $68bc: $18 $19

	ld   a, [de]                                     ; $68be: $1a
	dec  de                                          ; $68bf: $1b
	inc  e                                           ; $68c0: $1c
	dec  e                                           ; $68c1: $1d
	ld   e, $1f                                      ; $68c2: $1e $1f
	jr   nc, jr_084_68f7                             ; $68c4: $30 $31

	ld   [hl-], a                                    ; $68c6: $32
	inc  sp                                          ; $68c7: $33
	jr   nz, @+$23                                   ; $68c8: $20 $21

	ld   [hl+], a                                    ; $68ca: $22
	inc  hl                                          ; $68cb: $23
	inc  h                                           ; $68cc: $24
	dec  h                                           ; $68cd: $25
	ld   h, $27                                      ; $68ce: $26 $27
	jr   z, jr_084_68fb                              ; $68d0: $28 $29

	ld   a, [hl+]                                    ; $68d2: $2a

jr_084_68d3:
	dec  hl                                          ; $68d3: $2b
	inc  l                                           ; $68d4: $2c
	dec  l                                           ; $68d5: $2d
	ld   l, $2f                                      ; $68d6: $2e $2f
	inc  h                                           ; $68d8: $24
	dec  h                                           ; $68d9: $25
	ld   h, $27                                      ; $68da: $26 $27
	jr   nc, jr_084_690f                             ; $68dc: $30 $31

	ld   [hl-], a                                    ; $68de: $32
	inc  sp                                          ; $68df: $33
	inc  [hl]                                        ; $68e0: $34
	dec  [hl]                                        ; $68e1: $35
	ld   [hl], $37                                   ; $68e2: $36 $37
	jr   c, jr_084_691f                              ; $68e4: $38 $39

	add  hl, sp                                      ; $68e6: $39
	dec  sp                                          ; $68e7: $3b
	inc  a                                           ; $68e8: $3c
	dec  a                                           ; $68e9: $3d
	ld   a, $3f                                      ; $68ea: $3e $3f
	inc  [hl]                                        ; $68ec: $34
	dec  [hl]                                        ; $68ed: $35
	ld   [hl], $37                                   ; $68ee: $36 $37
	ld   b, b                                        ; $68f0: $40
	ld   b, c                                        ; $68f1: $41
	ld   b, d                                        ; $68f2: $42
	ld   b, e                                        ; $68f3: $43
	ld   b, h                                        ; $68f4: $44
	ld   b, l                                        ; $68f5: $45
	ld   b, [hl]                                     ; $68f6: $46

jr_084_68f7:
	ld   b, a                                        ; $68f7: $47
	ld   c, b                                        ; $68f8: $48
	ld   c, c                                        ; $68f9: $49
	ld   c, d                                        ; $68fa: $4a

jr_084_68fb:
	ld   c, e                                        ; $68fb: $4b
	ld   c, h                                        ; $68fc: $4c
	ld   c, l                                        ; $68fd: $4d
	ld   c, [hl]                                     ; $68fe: $4e
	ld   c, a                                        ; $68ff: $4f
	jr   z, @+$2b                                    ; $6900: $28 $29

	ld   a, [hl+]                                    ; $6902: $2a
	dec  hl                                          ; $6903: $2b
	ld   d, b                                        ; $6904: $50
	ld   d, c                                        ; $6905: $51
	ld   d, d                                        ; $6906: $52
	ld   d, e                                        ; $6907: $53
	ld   d, h                                        ; $6908: $54
	ld   d, l                                        ; $6909: $55
	ld   d, [hl]                                     ; $690a: $56
	ld   d, a                                        ; $690b: $57
	ld   e, b                                        ; $690c: $58
	ld   e, c                                        ; $690d: $59
	ld   e, d                                        ; $690e: $5a

jr_084_690f:
	ld   e, e                                        ; $690f: $5b
	ld   e, h                                        ; $6910: $5c
	ld   e, l                                        ; $6911: $5d
	ld   e, [hl]                                     ; $6912: $5e
	ld   e, a                                        ; $6913: $5f
	jr   c, @+$3b                                    ; $6914: $38 $39

	ld   a, [hl-]                                    ; $6916: $3a
	dec  sp                                          ; $6917: $3b
	ld   h, b                                        ; $6918: $60
	ld   h, c                                        ; $6919: $61
	ld   h, d                                        ; $691a: $62
	ld   h, e                                        ; $691b: $63
	ld   h, h                                        ; $691c: $64
	ld   h, l                                        ; $691d: $65
	ld   h, [hl]                                     ; $691e: $66

jr_084_691f:
	ld   h, a                                        ; $691f: $67
	ld   l, b                                        ; $6920: $68
	ld   l, c                                        ; $6921: $69
	ld   l, d                                        ; $6922: $6a
	ld   l, e                                        ; $6923: $6b
	ld   l, h                                        ; $6924: $6c
	ld   l, l                                        ; $6925: $6d
	ld   l, [hl]                                     ; $6926: $6e
	ld   l, a                                        ; $6927: $6f
	inc  l                                           ; $6928: $2c
	dec  l                                           ; $6929: $2d
	ld   l, $2f                                      ; $692a: $2e $2f
	ld   [hl], b                                     ; $692c: $70
	ld   [hl], c                                     ; $692d: $71
	ld   [hl], d                                     ; $692e: $72
	ld   [hl], e                                     ; $692f: $73
	ld   [hl], h                                     ; $6930: $74
	ld   [hl], l                                     ; $6931: $75
	halt                                             ; $6932: $76
	ld   [hl], a                                     ; $6933: $77
	ld   a, b                                        ; $6934: $78
	ld   a, c                                        ; $6935: $79
	ld   a, d                                        ; $6936: $7a
	ld   a, e                                        ; $6937: $7b
	ld   a, h                                        ; $6938: $7c
	ld   a, l                                        ; $6939: $7d
	ld   a, [hl]                                     ; $693a: $7e
	ld   a, a                                        ; $693b: $7f
	inc  a                                           ; $693c: $3c
	dec  a                                           ; $693d: $3d
	ld   e, $1f                                      ; $693e: $1e $1f
	nop                                              ; $6940: $00
	ld   bc, $0302                                   ; $6941: $01 $02 $03
	inc  b                                           ; $6944: $04
	dec  b                                           ; $6945: $05
	ld   b, $07                                      ; $6946: $06 $07
	ld   [$0a09], sp                                 ; $6948: $08 $09 $0a
	dec  bc                                          ; $694b: $0b
	inc  c                                           ; $694c: $0c
	dec  c                                           ; $694d: $0d
	ld   c, $0f                                      ; $694e: $0e $0f
	ld   d, $17                                      ; $6950: $16 $17
	jr   jr_084_696d                                 ; $6952: $18 $19

	db   $10                                         ; $6954: $10
	ld   de, $1312                                   ; $6955: $11 $12 $13
	inc  d                                           ; $6958: $14
	dec  d                                           ; $6959: $15
	dec  d                                           ; $695a: $15
	dec  d                                           ; $695b: $15
	dec  d                                           ; $695c: $15
	dec  d                                           ; $695d: $15
	dec  d                                           ; $695e: $15
	dec  d                                           ; $695f: $15
	dec  d                                           ; $6960: $15
	dec  d                                           ; $6961: $15
	ld   a, [hl-]                                    ; $6962: $3a
	inc  d                                           ; $6963: $14
	ld   a, [de]                                     ; $6964: $1a
	dec  de                                          ; $6965: $1b
	inc  e                                           ; $6966: $1c
	dec  e                                           ; $6967: $1d
	inc  b                                           ; $6968: $04
	inc  b                                           ; $6969: $04
	inc  b                                           ; $696a: $04
	inc  b                                           ; $696b: $04
	inc  bc                                          ; $696c: $03

jr_084_696d:
	inc  bc                                          ; $696d: $03
	inc  bc                                          ; $696e: $03
	inc  bc                                          ; $696f: $03
	inc  bc                                          ; $6970: $03
	inc  bc                                          ; $6971: $03
	inc  bc                                          ; $6972: $03
	inc  bc                                          ; $6973: $03
	inc  bc                                          ; $6974: $03
	inc  bc                                          ; $6975: $03
	inc  bc                                          ; $6976: $03
	inc  bc                                          ; $6977: $03
	inc  c                                           ; $6978: $0c
	inc  c                                           ; $6979: $0c
	inc  c                                           ; $697a: $0c
	inc  c                                           ; $697b: $0c
	inc  b                                           ; $697c: $04
	inc  b                                           ; $697d: $04
	inc  b                                           ; $697e: $04
	inc  b                                           ; $697f: $04
	inc  bc                                          ; $6980: $03
	inc  bc                                          ; $6981: $03
	inc  bc                                          ; $6982: $03
	inc  bc                                          ; $6983: $03
	inc  bc                                          ; $6984: $03
	inc  bc                                          ; $6985: $03
	inc  bc                                          ; $6986: $03
	inc  bc                                          ; $6987: $03
	inc  bc                                          ; $6988: $03
	inc  bc                                          ; $6989: $03
	inc  bc                                          ; $698a: $03
	inc  b                                           ; $698b: $04
	inc  c                                           ; $698c: $0c
	inc  c                                           ; $698d: $0c
	inc  c                                           ; $698e: $0c
	inc  c                                           ; $698f: $0c
	inc  b                                           ; $6990: $04
	inc  b                                           ; $6991: $04
	inc  b                                           ; $6992: $04
	inc  b                                           ; $6993: $04
	inc  bc                                          ; $6994: $03
	inc  bc                                          ; $6995: $03
	inc  bc                                          ; $6996: $03
	inc  bc                                          ; $6997: $03
	inc  bc                                          ; $6998: $03
	inc  bc                                          ; $6999: $03
	inc  bc                                          ; $699a: $03
	inc  bc                                          ; $699b: $03
	inc  bc                                          ; $699c: $03
	inc  bc                                          ; $699d: $03
	inc  bc                                          ; $699e: $03
	inc  b                                           ; $699f: $04
	inc  c                                           ; $69a0: $0c
	inc  c                                           ; $69a1: $0c
	inc  c                                           ; $69a2: $0c
	inc  c                                           ; $69a3: $0c
	dec  b                                           ; $69a4: $05
	dec  b                                           ; $69a5: $05
	dec  b                                           ; $69a6: $05
	inc  b                                           ; $69a7: $04
	inc  b                                           ; $69a8: $04
	dec  b                                           ; $69a9: $05
	dec  b                                           ; $69aa: $05
	dec  b                                           ; $69ab: $05
	dec  b                                           ; $69ac: $05
	dec  b                                           ; $69ad: $05
	dec  b                                           ; $69ae: $05
	dec  b                                           ; $69af: $05
	dec  b                                           ; $69b0: $05
	dec  b                                           ; $69b1: $05
	dec  b                                           ; $69b2: $05
	inc  b                                           ; $69b3: $04
	inc  c                                           ; $69b4: $0c
	inc  c                                           ; $69b5: $0c
	dec  c                                           ; $69b6: $0d
	dec  c                                           ; $69b7: $0d
	inc  b                                           ; $69b8: $04
	inc  b                                           ; $69b9: $04
	dec  b                                           ; $69ba: $05
	dec  b                                           ; $69bb: $05
	dec  b                                           ; $69bc: $05
	dec  b                                           ; $69bd: $05
	dec  b                                           ; $69be: $05
	dec  b                                           ; $69bf: $05
	dec  b                                           ; $69c0: $05
	dec  b                                           ; $69c1: $05
	dec  b                                           ; $69c2: $05
	dec  b                                           ; $69c3: $05
	dec  b                                           ; $69c4: $05
	dec  b                                           ; $69c5: $05
	dec  b                                           ; $69c6: $05
	inc  b                                           ; $69c7: $04
	dec  c                                           ; $69c8: $0d
	dec  c                                           ; $69c9: $0d
	dec  c                                           ; $69ca: $0d
	dec  c                                           ; $69cb: $0d
	inc  b                                           ; $69cc: $04
	inc  b                                           ; $69cd: $04
	dec  b                                           ; $69ce: $05
	dec  b                                           ; $69cf: $05
	dec  b                                           ; $69d0: $05
	dec  b                                           ; $69d1: $05
	dec  b                                           ; $69d2: $05
	dec  b                                           ; $69d3: $05
	dec  b                                           ; $69d4: $05
	dec  b                                           ; $69d5: $05
	dec  b                                           ; $69d6: $05
	dec  b                                           ; $69d7: $05
	dec  b                                           ; $69d8: $05
	dec  b                                           ; $69d9: $05
	dec  b                                           ; $69da: $05
	dec  b                                           ; $69db: $05
	dec  c                                           ; $69dc: $0d
	dec  c                                           ; $69dd: $0d
	dec  c                                           ; $69de: $0d
	dec  c                                           ; $69df: $0d
	dec  b                                           ; $69e0: $05
	dec  b                                           ; $69e1: $05
	dec  b                                           ; $69e2: $05
	dec  b                                           ; $69e3: $05
	dec  b                                           ; $69e4: $05
	dec  b                                           ; $69e5: $05
	dec  b                                           ; $69e6: $05
	dec  b                                           ; $69e7: $05
	dec  b                                           ; $69e8: $05
	dec  b                                           ; $69e9: $05
	dec  b                                           ; $69ea: $05
	dec  b                                           ; $69eb: $05
	dec  b                                           ; $69ec: $05
	dec  b                                           ; $69ed: $05
	dec  b                                           ; $69ee: $05
	dec  b                                           ; $69ef: $05
	dec  c                                           ; $69f0: $0d
	dec  c                                           ; $69f1: $0d
	dec  c                                           ; $69f2: $0d
	dec  c                                           ; $69f3: $0d
	dec  b                                           ; $69f4: $05
	dec  b                                           ; $69f5: $05
	dec  b                                           ; $69f6: $05
	dec  b                                           ; $69f7: $05
	dec  b                                           ; $69f8: $05
	dec  b                                           ; $69f9: $05
	dec  b                                           ; $69fa: $05
	dec  b                                           ; $69fb: $05
	dec  b                                           ; $69fc: $05
	dec  b                                           ; $69fd: $05
	dec  b                                           ; $69fe: $05
	dec  b                                           ; $69ff: $05
	dec  b                                           ; $6a00: $05
	dec  b                                           ; $6a01: $05
	dec  b                                           ; $6a02: $05
	dec  b                                           ; $6a03: $05
	dec  c                                           ; $6a04: $0d
	dec  c                                           ; $6a05: $0d
	dec  c                                           ; $6a06: $0d
	dec  c                                           ; $6a07: $0d
	inc  c                                           ; $6a08: $0c
	inc  c                                           ; $6a09: $0c
	dec  c                                           ; $6a0a: $0d
	dec  c                                           ; $6a0b: $0d
	dec  c                                           ; $6a0c: $0d
	dec  c                                           ; $6a0d: $0d
	dec  c                                           ; $6a0e: $0d
	dec  c                                           ; $6a0f: $0d
	dec  c                                           ; $6a10: $0d
	dec  c                                           ; $6a11: $0d
	dec  c                                           ; $6a12: $0d
	dec  c                                           ; $6a13: $0d
	dec  c                                           ; $6a14: $0d
	dec  c                                           ; $6a15: $0d
	inc  c                                           ; $6a16: $0c
	dec  c                                           ; $6a17: $0d
	dec  c                                           ; $6a18: $0d
	dec  c                                           ; $6a19: $0d
	dec  c                                           ; $6a1a: $0d
	inc  c                                           ; $6a1b: $0c
	inc  c                                           ; $6a1c: $0c
	inc  c                                           ; $6a1d: $0c
	dec  c                                           ; $6a1e: $0d
	inc  c                                           ; $6a1f: $0c
	dec  c                                           ; $6a20: $0d
	inc  c                                           ; $6a21: $0c
	inc  c                                           ; $6a22: $0c
	inc  c                                           ; $6a23: $0c
	inc  c                                           ; $6a24: $0c
	inc  c                                           ; $6a25: $0c
	inc  c                                           ; $6a26: $0c
	inc  c                                           ; $6a27: $0c
	inc  c                                           ; $6a28: $0c
	inc  c                                           ; $6a29: $0c
	dec  b                                           ; $6a2a: $05
	dec  l                                           ; $6a2b: $2d
	dec  c                                           ; $6a2c: $0d
	dec  c                                           ; $6a2d: $0d
	dec  c                                           ; $6a2e: $0d
	inc  c                                           ; $6a2f: $0c
	nop                                              ; $6a30: $00
	ld   bc, $0302                                   ; $6a31: $01 $02 $03
	inc  b                                           ; $6a34: $04
	dec  b                                           ; $6a35: $05
	ld   b, $07                                      ; $6a36: $06 $07
	ld   [$0a09], sp                                 ; $6a38: $08 $09 $0a
	dec  bc                                          ; $6a3b: $0b
	inc  c                                           ; $6a3c: $0c
	dec  c                                           ; $6a3d: $0d
	ld   c, $0f                                      ; $6a3e: $0e $0f
	jr   nz, jr_084_6a63                             ; $6a40: $20 $21

	ld   [hl+], a                                    ; $6a42: $22
	inc  hl                                          ; $6a43: $23
	db   $10                                         ; $6a44: $10
	ld   de, $1312                                   ; $6a45: $11 $12 $13
	inc  d                                           ; $6a48: $14
	dec  d                                           ; $6a49: $15
	ld   d, $17                                      ; $6a4a: $16 $17
	jr   @+$1b                                       ; $6a4c: $18 $19

	ld   a, [de]                                     ; $6a4e: $1a
	dec  de                                          ; $6a4f: $1b
	inc  e                                           ; $6a50: $1c
	dec  e                                           ; $6a51: $1d
	ld   e, $1f                                      ; $6a52: $1e $1f
	jr   nc, jr_084_6a87                             ; $6a54: $30 $31

	ld   [hl-], a                                    ; $6a56: $32
	inc  sp                                          ; $6a57: $33
	jr   nz, @+$23                                   ; $6a58: $20 $21

	ld   [hl+], a                                    ; $6a5a: $22
	inc  hl                                          ; $6a5b: $23
	inc  h                                           ; $6a5c: $24
	dec  h                                           ; $6a5d: $25
	ld   h, $27                                      ; $6a5e: $26 $27
	jr   z, jr_084_6a8b                              ; $6a60: $28 $29

	ld   a, [hl+]                                    ; $6a62: $2a

jr_084_6a63:
	dec  hl                                          ; $6a63: $2b
	inc  l                                           ; $6a64: $2c
	dec  l                                           ; $6a65: $2d
	ld   l, $2f                                      ; $6a66: $2e $2f
	inc  h                                           ; $6a68: $24
	dec  h                                           ; $6a69: $25
	ld   h, $27                                      ; $6a6a: $26 $27
	jr   nc, jr_084_6a9f                             ; $6a6c: $30 $31

	ld   [hl-], a                                    ; $6a6e: $32
	inc  sp                                          ; $6a6f: $33
	inc  [hl]                                        ; $6a70: $34
	dec  [hl]                                        ; $6a71: $35
	ld   [hl], $37                                   ; $6a72: $36 $37
	jr   c, jr_084_6aaf                              ; $6a74: $38 $39

	add  hl, sp                                      ; $6a76: $39
	dec  sp                                          ; $6a77: $3b
	inc  a                                           ; $6a78: $3c
	dec  a                                           ; $6a79: $3d
	ld   a, $3f                                      ; $6a7a: $3e $3f
	inc  [hl]                                        ; $6a7c: $34
	dec  [hl]                                        ; $6a7d: $35
	ld   [hl], $37                                   ; $6a7e: $36 $37
	ld   b, b                                        ; $6a80: $40
	ld   b, c                                        ; $6a81: $41
	ld   b, d                                        ; $6a82: $42
	ld   b, e                                        ; $6a83: $43
	ld   b, h                                        ; $6a84: $44
	ld   b, l                                        ; $6a85: $45
	ld   b, [hl]                                     ; $6a86: $46

jr_084_6a87:
	ld   b, a                                        ; $6a87: $47
	ld   c, b                                        ; $6a88: $48
	ld   c, c                                        ; $6a89: $49
	ld   c, d                                        ; $6a8a: $4a

jr_084_6a8b:
	ld   c, e                                        ; $6a8b: $4b
	ld   c, h                                        ; $6a8c: $4c
	ld   c, l                                        ; $6a8d: $4d
	ld   c, [hl]                                     ; $6a8e: $4e
	ld   c, a                                        ; $6a8f: $4f
	jr   z, @+$2b                                    ; $6a90: $28 $29

	ld   a, [hl+]                                    ; $6a92: $2a
	dec  hl                                          ; $6a93: $2b
	ld   d, b                                        ; $6a94: $50
	ld   d, c                                        ; $6a95: $51
	ld   d, d                                        ; $6a96: $52
	ld   d, e                                        ; $6a97: $53
	ld   d, h                                        ; $6a98: $54
	ld   d, l                                        ; $6a99: $55
	ld   d, [hl]                                     ; $6a9a: $56
	ld   d, a                                        ; $6a9b: $57
	ld   e, b                                        ; $6a9c: $58
	ld   e, c                                        ; $6a9d: $59
	ld   e, d                                        ; $6a9e: $5a

jr_084_6a9f:
	ld   e, e                                        ; $6a9f: $5b
	ld   e, h                                        ; $6aa0: $5c
	ld   e, l                                        ; $6aa1: $5d
	ld   e, [hl]                                     ; $6aa2: $5e
	ld   e, a                                        ; $6aa3: $5f
	jr   c, @+$3b                                    ; $6aa4: $38 $39

	ld   a, [hl-]                                    ; $6aa6: $3a
	dec  sp                                          ; $6aa7: $3b
	ld   h, b                                        ; $6aa8: $60
	ld   h, c                                        ; $6aa9: $61
	ld   h, d                                        ; $6aaa: $62
	ld   h, e                                        ; $6aab: $63
	ld   h, h                                        ; $6aac: $64
	ld   h, l                                        ; $6aad: $65
	ld   h, [hl]                                     ; $6aae: $66

jr_084_6aaf:
	ld   h, a                                        ; $6aaf: $67
	ld   l, b                                        ; $6ab0: $68
	ld   l, c                                        ; $6ab1: $69
	ld   l, d                                        ; $6ab2: $6a
	ld   l, e                                        ; $6ab3: $6b
	ld   l, h                                        ; $6ab4: $6c
	ld   l, l                                        ; $6ab5: $6d
	ld   l, [hl]                                     ; $6ab6: $6e
	ld   l, a                                        ; $6ab7: $6f
	inc  l                                           ; $6ab8: $2c
	dec  l                                           ; $6ab9: $2d
	ld   l, $2f                                      ; $6aba: $2e $2f
	ld   [hl], b                                     ; $6abc: $70
	ld   [hl], c                                     ; $6abd: $71
	ld   [hl], d                                     ; $6abe: $72
	ld   [hl], e                                     ; $6abf: $73
	ld   [hl], h                                     ; $6ac0: $74
	ld   [hl], l                                     ; $6ac1: $75
	halt                                             ; $6ac2: $76
	ld   [hl], a                                     ; $6ac3: $77
	ld   a, b                                        ; $6ac4: $78
	ld   a, c                                        ; $6ac5: $79
	ld   a, d                                        ; $6ac6: $7a
	ld   a, e                                        ; $6ac7: $7b
	ld   a, h                                        ; $6ac8: $7c
	ld   a, l                                        ; $6ac9: $7d
	ld   a, [hl]                                     ; $6aca: $7e
	ld   a, a                                        ; $6acb: $7f
	inc  a                                           ; $6acc: $3c
	dec  a                                           ; $6acd: $3d
	ld   a, $3f                                      ; $6ace: $3e $3f
	nop                                              ; $6ad0: $00
	ld   bc, $0302                                   ; $6ad1: $01 $02 $03
	inc  b                                           ; $6ad4: $04
	dec  b                                           ; $6ad5: $05
	ld   b, $07                                      ; $6ad6: $06 $07
	ld   [$0a09], sp                                 ; $6ad8: $08 $09 $0a
	dec  bc                                          ; $6adb: $0b
	inc  c                                           ; $6adc: $0c
	dec  c                                           ; $6add: $0d
	ld   c, $0f                                      ; $6ade: $0e $0f
	ld   b, b                                        ; $6ae0: $40
	ld   b, c                                        ; $6ae1: $41
	ld   b, d                                        ; $6ae2: $42
	ld   b, e                                        ; $6ae3: $43
	db   $10                                         ; $6ae4: $10
	ld   de, $1312                                   ; $6ae5: $11 $12 $13
	inc  d                                           ; $6ae8: $14
	dec  d                                           ; $6ae9: $15
	ld   d, $17                                      ; $6aea: $16 $17
	jr   jr_084_6b07                                 ; $6aec: $18 $19

	ld   a, [de]                                     ; $6aee: $1a
	dec  de                                          ; $6aef: $1b
	inc  e                                           ; $6af0: $1c
	dec  e                                           ; $6af1: $1d
	ld   e, $1f                                      ; $6af2: $1e $1f
	ld   b, h                                        ; $6af4: $44
	ld   b, l                                        ; $6af5: $45
	ld   b, [hl]                                     ; $6af6: $46
	ld   a, [hl-]                                    ; $6af7: $3a
	inc  b                                           ; $6af8: $04
	inc  b                                           ; $6af9: $04
	inc  b                                           ; $6afa: $04
	inc  b                                           ; $6afb: $04
	inc  bc                                          ; $6afc: $03
	inc  bc                                          ; $6afd: $03
	inc  bc                                          ; $6afe: $03
	inc  bc                                          ; $6aff: $03
	inc  bc                                          ; $6b00: $03
	inc  bc                                          ; $6b01: $03
	inc  bc                                          ; $6b02: $03
	inc  bc                                          ; $6b03: $03
	inc  bc                                          ; $6b04: $03
	inc  bc                                          ; $6b05: $03
	inc  bc                                          ; $6b06: $03

jr_084_6b07:
	inc  bc                                          ; $6b07: $03
	inc  c                                           ; $6b08: $0c
	inc  c                                           ; $6b09: $0c
	inc  c                                           ; $6b0a: $0c
	inc  c                                           ; $6b0b: $0c
	inc  b                                           ; $6b0c: $04
	inc  b                                           ; $6b0d: $04
	inc  b                                           ; $6b0e: $04
	inc  b                                           ; $6b0f: $04
	inc  bc                                          ; $6b10: $03
	inc  bc                                          ; $6b11: $03
	inc  bc                                          ; $6b12: $03
	inc  bc                                          ; $6b13: $03
	inc  bc                                          ; $6b14: $03
	inc  bc                                          ; $6b15: $03
	inc  bc                                          ; $6b16: $03
	inc  bc                                          ; $6b17: $03
	inc  bc                                          ; $6b18: $03
	inc  bc                                          ; $6b19: $03
	inc  bc                                          ; $6b1a: $03
	inc  b                                           ; $6b1b: $04
	inc  c                                           ; $6b1c: $0c
	inc  c                                           ; $6b1d: $0c
	inc  c                                           ; $6b1e: $0c
	inc  c                                           ; $6b1f: $0c
	inc  b                                           ; $6b20: $04
	inc  b                                           ; $6b21: $04
	inc  b                                           ; $6b22: $04
	inc  b                                           ; $6b23: $04
	inc  bc                                          ; $6b24: $03
	inc  bc                                          ; $6b25: $03
	inc  bc                                          ; $6b26: $03
	inc  bc                                          ; $6b27: $03
	inc  bc                                          ; $6b28: $03
	inc  bc                                          ; $6b29: $03
	inc  bc                                          ; $6b2a: $03
	inc  bc                                          ; $6b2b: $03
	inc  bc                                          ; $6b2c: $03
	inc  bc                                          ; $6b2d: $03
	inc  bc                                          ; $6b2e: $03
	inc  b                                           ; $6b2f: $04
	inc  c                                           ; $6b30: $0c
	inc  c                                           ; $6b31: $0c
	inc  c                                           ; $6b32: $0c
	inc  c                                           ; $6b33: $0c
	dec  b                                           ; $6b34: $05
	dec  b                                           ; $6b35: $05
	dec  b                                           ; $6b36: $05
	inc  b                                           ; $6b37: $04
	inc  b                                           ; $6b38: $04
	dec  b                                           ; $6b39: $05
	dec  b                                           ; $6b3a: $05
	dec  b                                           ; $6b3b: $05
	dec  b                                           ; $6b3c: $05
	dec  b                                           ; $6b3d: $05
	dec  b                                           ; $6b3e: $05
	dec  b                                           ; $6b3f: $05
	dec  b                                           ; $6b40: $05
	dec  b                                           ; $6b41: $05
	dec  b                                           ; $6b42: $05
	inc  b                                           ; $6b43: $04
	inc  c                                           ; $6b44: $0c
	inc  c                                           ; $6b45: $0c
	dec  c                                           ; $6b46: $0d
	dec  c                                           ; $6b47: $0d
	inc  b                                           ; $6b48: $04
	inc  b                                           ; $6b49: $04
	dec  b                                           ; $6b4a: $05
	dec  b                                           ; $6b4b: $05
	dec  b                                           ; $6b4c: $05
	dec  b                                           ; $6b4d: $05
	dec  b                                           ; $6b4e: $05
	dec  b                                           ; $6b4f: $05
	dec  b                                           ; $6b50: $05
	dec  b                                           ; $6b51: $05
	dec  b                                           ; $6b52: $05
	dec  b                                           ; $6b53: $05
	dec  b                                           ; $6b54: $05
	dec  b                                           ; $6b55: $05
	dec  b                                           ; $6b56: $05
	inc  b                                           ; $6b57: $04
	dec  c                                           ; $6b58: $0d
	dec  c                                           ; $6b59: $0d
	dec  c                                           ; $6b5a: $0d
	dec  c                                           ; $6b5b: $0d
	inc  b                                           ; $6b5c: $04
	inc  b                                           ; $6b5d: $04
	dec  b                                           ; $6b5e: $05
	dec  b                                           ; $6b5f: $05
	dec  b                                           ; $6b60: $05
	dec  b                                           ; $6b61: $05
	dec  b                                           ; $6b62: $05
	dec  b                                           ; $6b63: $05
	dec  b                                           ; $6b64: $05
	dec  b                                           ; $6b65: $05
	dec  b                                           ; $6b66: $05
	dec  b                                           ; $6b67: $05
	dec  b                                           ; $6b68: $05
	dec  b                                           ; $6b69: $05
	dec  b                                           ; $6b6a: $05
	dec  b                                           ; $6b6b: $05
	dec  c                                           ; $6b6c: $0d
	dec  c                                           ; $6b6d: $0d
	dec  c                                           ; $6b6e: $0d
	dec  c                                           ; $6b6f: $0d
	dec  b                                           ; $6b70: $05
	dec  b                                           ; $6b71: $05
	dec  b                                           ; $6b72: $05
	dec  b                                           ; $6b73: $05
	dec  b                                           ; $6b74: $05
	dec  b                                           ; $6b75: $05
	dec  b                                           ; $6b76: $05
	dec  b                                           ; $6b77: $05
	inc  b                                           ; $6b78: $04
	dec  b                                           ; $6b79: $05
	inc  bc                                          ; $6b7a: $03
	dec  b                                           ; $6b7b: $05
	dec  b                                           ; $6b7c: $05
	dec  b                                           ; $6b7d: $05
	dec  b                                           ; $6b7e: $05
	dec  b                                           ; $6b7f: $05
	dec  c                                           ; $6b80: $0d
	inc  c                                           ; $6b81: $0c
	dec  c                                           ; $6b82: $0d
	dec  c                                           ; $6b83: $0d
	dec  b                                           ; $6b84: $05
	dec  b                                           ; $6b85: $05
	dec  b                                           ; $6b86: $05
	inc  bc                                          ; $6b87: $03
	dec  b                                           ; $6b88: $05
	inc  b                                           ; $6b89: $04
	dec  b                                           ; $6b8a: $05
	dec  b                                           ; $6b8b: $05
	inc  b                                           ; $6b8c: $04
	dec  b                                           ; $6b8d: $05
	inc  bc                                          ; $6b8e: $03
	dec  b                                           ; $6b8f: $05
	dec  b                                           ; $6b90: $05
	inc  bc                                          ; $6b91: $03
	inc  bc                                          ; $6b92: $03
	dec  b                                           ; $6b93: $05
	dec  c                                           ; $6b94: $0d
	inc  c                                           ; $6b95: $0c
	dec  c                                           ; $6b96: $0d
	dec  c                                           ; $6b97: $0d
	inc  c                                           ; $6b98: $0c
	dec  bc                                          ; $6b99: $0b
	dec  c                                           ; $6b9a: $0d
	dec  bc                                          ; $6b9b: $0b
	dec  bc                                          ; $6b9c: $0b
	inc  c                                           ; $6b9d: $0c
	dec  c                                           ; $6b9e: $0d
	dec  c                                           ; $6b9f: $0d
	inc  c                                           ; $6ba0: $0c
	dec  c                                           ; $6ba1: $0d
	dec  bc                                          ; $6ba2: $0b
	dec  c                                           ; $6ba3: $0d
	dec  c                                           ; $6ba4: $0d
	dec  bc                                          ; $6ba5: $0b
	dec  bc                                          ; $6ba6: $0b
	inc  c                                           ; $6ba7: $0c
	inc  c                                           ; $6ba8: $0c
	inc  c                                           ; $6ba9: $0c
	dec  c                                           ; $6baa: $0d
	inc  c                                           ; $6bab: $0c
	inc  c                                           ; $6bac: $0c
	dec  bc                                          ; $6bad: $0b
	dec  c                                           ; $6bae: $0d
	dec  bc                                          ; $6baf: $0b
	dec  bc                                          ; $6bb0: $0b
	inc  c                                           ; $6bb1: $0c
	inc  c                                           ; $6bb2: $0c
	dec  c                                           ; $6bb3: $0d
	inc  c                                           ; $6bb4: $0c
	dec  bc                                          ; $6bb5: $0b
	dec  bc                                          ; $6bb6: $0b
	dec  c                                           ; $6bb7: $0d
	dec  c                                           ; $6bb8: $0d
	dec  c                                           ; $6bb9: $0d
	dec  bc                                          ; $6bba: $0b
	inc  c                                           ; $6bbb: $0c
	inc  c                                           ; $6bbc: $0c
	inc  c                                           ; $6bbd: $0c
	dec  c                                           ; $6bbe: $0d
	inc  b                                           ; $6bbf: $04
	nop                                              ; $6bc0: $00
	ld   bc, $0302                                   ; $6bc1: $01 $02 $03
	inc  b                                           ; $6bc4: $04
	dec  b                                           ; $6bc5: $05
	ld   b, $07                                      ; $6bc6: $06 $07
	ld   [TurnOnLCD], sp                                 ; $6bc8: $08 $09 $09
	ld   a, [bc]                                     ; $6bcb: $0a
	dec  bc                                          ; $6bcc: $0b
	inc  c                                           ; $6bcd: $0c
	dec  c                                           ; $6bce: $0d
	ld   c, $74                                      ; $6bcf: $0e $74
	ld   [hl], l                                     ; $6bd1: $75
	halt                                             ; $6bd2: $76
	ld   [hl], a                                     ; $6bd3: $77
	rrca                                             ; $6bd4: $0f
	db   $10                                         ; $6bd5: $10
	ld   de, $1312                                   ; $6bd6: $11 $12 $13
	inc  d                                           ; $6bd9: $14
	dec  d                                           ; $6bda: $15
	ld   d, $17                                      ; $6bdb: $16 $17
	jr   jr_084_6bf7                                 ; $6bdd: $18 $18

	add  hl, de                                      ; $6bdf: $19
	ld   a, [de]                                     ; $6be0: $1a
	dec  de                                          ; $6be1: $1b
	inc  e                                           ; $6be2: $1c
	dec  e                                           ; $6be3: $1d
	ld   a, b                                        ; $6be4: $78
	ld   a, c                                        ; $6be5: $79
	ld   a, d                                        ; $6be6: $7a
	ld   a, e                                        ; $6be7: $7b
	ld   e, $1f                                      ; $6be8: $1e $1f
	jr   nz, jr_084_6c0d                             ; $6bea: $20 $21

	ld   [hl+], a                                    ; $6bec: $22
	inc  hl                                          ; $6bed: $23
	inc  h                                           ; $6bee: $24
	dec  h                                           ; $6bef: $25
	dec  h                                           ; $6bf0: $25
	dec  h                                           ; $6bf1: $25
	dec  h                                           ; $6bf2: $25
	ld   h, $27                                      ; $6bf3: $26 $27
	jr   z, jr_084_6c20                              ; $6bf5: $28 $29

jr_084_6bf7:
	ld   a, [hl+]                                    ; $6bf7: $2a
	ld   a, h                                        ; $6bf8: $7c
	ld   a, l                                        ; $6bf9: $7d
	ld   a, [hl]                                     ; $6bfa: $7e
	ld   e, $1e                                      ; $6bfb: $1e $1e
	dec  hl                                          ; $6bfd: $2b
	inc  l                                           ; $6bfe: $2c
	dec  l                                           ; $6bff: $2d
	ld   l, $2f                                      ; $6c00: $2e $2f
	dec  l                                           ; $6c02: $2d
	dec  l                                           ; $6c03: $2d
	dec  l                                           ; $6c04: $2d
	dec  l                                           ; $6c05: $2d
	dec  l                                           ; $6c06: $2d
	jr   nc, @+$33                                   ; $6c07: $30 $31

	dec  l                                           ; $6c09: $2d
	ld   [hl-], a                                    ; $6c0a: $32
	inc  sp                                          ; $6c0b: $33
	ld   a, a                                        ; $6c0c: $7f

jr_084_6c0d:
	nop                                              ; $6c0d: $00
	dec  hl                                          ; $6c0e: $2b
	ld   bc, $341e                                   ; $6c0f: $01 $1e $34
	dec  [hl]                                        ; $6c12: $35
	ld   [hl], $37                                   ; $6c13: $36 $37
	jr   c, jr_084_6c50                              ; $6c15: $38 $39

	ld   a, [hl-]                                    ; $6c17: $3a
	dec  l                                           ; $6c18: $2d
	dec  l                                           ; $6c19: $2d
	dec  l                                           ; $6c1a: $2d
	jr   nc, jr_084_6c4e                             ; $6c1b: $30 $31

	dec  l                                           ; $6c1d: $2d
	dec  sp                                          ; $6c1e: $3b
	inc  a                                           ; $6c1f: $3c

jr_084_6c20:
	ld   [bc], a                                     ; $6c20: $02
	inc  bc                                          ; $6c21: $03
	inc  b                                           ; $6c22: $04
	dec  b                                           ; $6c23: $05
	dec  a                                           ; $6c24: $3d
	ld   a, $3f                                      ; $6c25: $3e $3f
	ld   b, b                                        ; $6c27: $40
	ld   b, c                                        ; $6c28: $41
	ld   b, d                                        ; $6c29: $42
	ld   b, e                                        ; $6c2a: $43
	ld   b, h                                        ; $6c2b: $44
	ld   b, l                                        ; $6c2c: $45
	ld   b, [hl]                                     ; $6c2d: $46
	ld   b, a                                        ; $6c2e: $47
	ld   c, b                                        ; $6c2f: $48
	ld   c, c                                        ; $6c30: $49
	ld   c, d                                        ; $6c31: $4a
	ld   c, e                                        ; $6c32: $4b
	ld   c, h                                        ; $6c33: $4c
	ld   b, $07                                      ; $6c34: $06 $07
	ld   [$4d09], sp                                 ; $6c36: $08 $09 $4d
	ld   a, $4e                                      ; $6c39: $3e $4e
	ld   c, a                                        ; $6c3b: $4f
	ld   d, b                                        ; $6c3c: $50
	ld   d, c                                        ; $6c3d: $51
	ld   d, d                                        ; $6c3e: $52
	ld   d, e                                        ; $6c3f: $53
	ld   d, h                                        ; $6c40: $54
	ld   d, l                                        ; $6c41: $55
	ld   d, [hl]                                     ; $6c42: $56
	ld   d, a                                        ; $6c43: $57
	ld   e, b                                        ; $6c44: $58
	ld   e, c                                        ; $6c45: $59
	ld   e, d                                        ; $6c46: $5a
	ld   e, e                                        ; $6c47: $5b
	ld   a, [bc]                                     ; $6c48: $0a
	dec  bc                                          ; $6c49: $0b
	inc  c                                           ; $6c4a: $0c
	dec  c                                           ; $6c4b: $0d
	ld   e, h                                        ; $6c4c: $5c
	ld   e, l                                        ; $6c4d: $5d

jr_084_6c4e:
	ld   e, [hl]                                     ; $6c4e: $5e
	ld   e, a                                        ; $6c4f: $5f

jr_084_6c50:
	ld   h, b                                        ; $6c50: $60
	ld   h, c                                        ; $6c51: $61
	ld   h, d                                        ; $6c52: $62
	ld   h, e                                        ; $6c53: $63
	ld   h, h                                        ; $6c54: $64
	ld   h, l                                        ; $6c55: $65
	ld   h, [hl]                                     ; $6c56: $66
	ld   h, a                                        ; $6c57: $67
	ld   l, b                                        ; $6c58: $68
	ld   l, c                                        ; $6c59: $69
	ld   l, d                                        ; $6c5a: $6a
	ld   l, e                                        ; $6c5b: $6b
	ld   c, $0f                                      ; $6c5c: $0e $0f
	db   $10                                         ; $6c5e: $10
	ld   de, $6d6c                                   ; $6c5f: $11 $6c $6d
	ld   l, [hl]                                     ; $6c62: $6e
	ld   l, l                                        ; $6c63: $6d
	ld   l, l                                        ; $6c64: $6d
	ld   l, l                                        ; $6c65: $6d
	ld   l, a                                        ; $6c66: $6f
	ld   [hl], b                                     ; $6c67: $70
	ld   [hl], b                                     ; $6c68: $70
	ld   [hl], b                                     ; $6c69: $70
	ld   [hl], b                                     ; $6c6a: $70
	ld   [hl], b                                     ; $6c6b: $70
	ld   [hl], b                                     ; $6c6c: $70
	ld   [hl], b                                     ; $6c6d: $70
	ld   [hl], b                                     ; $6c6e: $70
	ld   [hl], b                                     ; $6c6f: $70
	ld   [hl], b                                     ; $6c70: $70
	ld   [hl], b                                     ; $6c71: $70
	ld   [de], a                                     ; $6c72: $12
	ld   l, h                                        ; $6c73: $6c
	ld   [hl], c                                     ; $6c74: $71
	ld   [hl], d                                     ; $6c75: $72
	ld   [hl], d                                     ; $6c76: $72
	ld   [hl], d                                     ; $6c77: $72
	ld   [hl], d                                     ; $6c78: $72
	ld   [hl], e                                     ; $6c79: $73
	ld   [hl], d                                     ; $6c7a: $72
	ld   [hl], d                                     ; $6c7b: $72
	ld   [hl], d                                     ; $6c7c: $72
	ld   [hl], d                                     ; $6c7d: $72
	ld   [hl], d                                     ; $6c7e: $72
	ld   [hl], d                                     ; $6c7f: $72
	ld   [hl], d                                     ; $6c80: $72
	ld   [hl], d                                     ; $6c81: $72
	ld   [hl], e                                     ; $6c82: $73
	ld   [hl], d                                     ; $6c83: $72
	ld   [hl], d                                     ; $6c84: $72
	ld   [hl], d                                     ; $6c85: $72
	ld   [hl], d                                     ; $6c86: $72
	ld   [hl], c                                     ; $6c87: $71
	inc  bc                                          ; $6c88: $03
	inc  bc                                          ; $6c89: $03
	inc  bc                                          ; $6c8a: $03
	inc  bc                                          ; $6c8b: $03
	inc  bc                                          ; $6c8c: $03
	inc  bc                                          ; $6c8d: $03
	inc  bc                                          ; $6c8e: $03
	inc  bc                                          ; $6c8f: $03
	inc  bc                                          ; $6c90: $03
	inc  bc                                          ; $6c91: $03
	inc  bc                                          ; $6c92: $03
	inc  bc                                          ; $6c93: $03
	inc  bc                                          ; $6c94: $03
	inc  bc                                          ; $6c95: $03
	inc  bc                                          ; $6c96: $03
	inc  bc                                          ; $6c97: $03
	inc  bc                                          ; $6c98: $03
	inc  bc                                          ; $6c99: $03
	inc  bc                                          ; $6c9a: $03
	inc  bc                                          ; $6c9b: $03
	inc  bc                                          ; $6c9c: $03
	inc  bc                                          ; $6c9d: $03
	inc  bc                                          ; $6c9e: $03
	inc  bc                                          ; $6c9f: $03
	inc  bc                                          ; $6ca0: $03
	inc  bc                                          ; $6ca1: $03
	inc  bc                                          ; $6ca2: $03
	inc  bc                                          ; $6ca3: $03
	inc  bc                                          ; $6ca4: $03
	inc  bc                                          ; $6ca5: $03
	inc  bc                                          ; $6ca6: $03
	inc  bc                                          ; $6ca7: $03
	inc  bc                                          ; $6ca8: $03
	inc  bc                                          ; $6ca9: $03
	inc  bc                                          ; $6caa: $03
	inc  bc                                          ; $6cab: $03
	inc  bc                                          ; $6cac: $03
	inc  bc                                          ; $6cad: $03
	inc  bc                                          ; $6cae: $03
	inc  bc                                          ; $6caf: $03
	inc  bc                                          ; $6cb0: $03
	inc  bc                                          ; $6cb1: $03
	inc  bc                                          ; $6cb2: $03
	inc  bc                                          ; $6cb3: $03
	inc  bc                                          ; $6cb4: $03
	inc  bc                                          ; $6cb5: $03
	inc  bc                                          ; $6cb6: $03
	inc  bc                                          ; $6cb7: $03
	inc  bc                                          ; $6cb8: $03
	inc  bc                                          ; $6cb9: $03
	inc  bc                                          ; $6cba: $03
	inc  bc                                          ; $6cbb: $03
	inc  bc                                          ; $6cbc: $03
	inc  bc                                          ; $6cbd: $03
	inc  bc                                          ; $6cbe: $03
	inc  bc                                          ; $6cbf: $03
	inc  bc                                          ; $6cc0: $03
	inc  bc                                          ; $6cc1: $03
	inc  bc                                          ; $6cc2: $03
	inc  hl                                          ; $6cc3: $23
	inc  bc                                          ; $6cc4: $03
	dec  b                                           ; $6cc5: $05
	inc  bc                                          ; $6cc6: $03
	inc  bc                                          ; $6cc7: $03
	inc  bc                                          ; $6cc8: $03
	inc  bc                                          ; $6cc9: $03
	inc  bc                                          ; $6cca: $03
	inc  bc                                          ; $6ccb: $03
	inc  bc                                          ; $6ccc: $03
	inc  bc                                          ; $6ccd: $03
	inc  bc                                          ; $6cce: $03
	inc  bc                                          ; $6ccf: $03
	inc  bc                                          ; $6cd0: $03
	inc  bc                                          ; $6cd1: $03
	inc  bc                                          ; $6cd2: $03
	inc  bc                                          ; $6cd3: $03
	inc  bc                                          ; $6cd4: $03
	dec  bc                                          ; $6cd5: $0b
	dec  b                                           ; $6cd6: $05
	dec  bc                                          ; $6cd7: $0b
	inc  bc                                          ; $6cd8: $03
	dec  b                                           ; $6cd9: $05
	inc  bc                                          ; $6cda: $03
	inc  bc                                          ; $6cdb: $03
	inc  bc                                          ; $6cdc: $03
	inc  bc                                          ; $6cdd: $03
	inc  bc                                          ; $6cde: $03
	inc  bc                                          ; $6cdf: $03
	inc  bc                                          ; $6ce0: $03
	inc  bc                                          ; $6ce1: $03
	inc  bc                                          ; $6ce2: $03
	inc  bc                                          ; $6ce3: $03
	inc  bc                                          ; $6ce4: $03
	inc  bc                                          ; $6ce5: $03
	inc  bc                                          ; $6ce6: $03
	inc  bc                                          ; $6ce7: $03
	dec  bc                                          ; $6ce8: $0b
	dec  bc                                          ; $6ce9: $0b
	dec  c                                           ; $6cea: $0d
	dec  bc                                          ; $6ceb: $0b
	dec  b                                           ; $6cec: $05
	inc  bc                                          ; $6ced: $03
	inc  bc                                          ; $6cee: $03
	inc  bc                                          ; $6cef: $03
	inc  bc                                          ; $6cf0: $03
	inc  bc                                          ; $6cf1: $03
	inc  bc                                          ; $6cf2: $03
	inc  bc                                          ; $6cf3: $03
	dec  b                                           ; $6cf4: $05
	dec  b                                           ; $6cf5: $05
	dec  b                                           ; $6cf6: $05
	inc  b                                           ; $6cf7: $04
	inc  b                                           ; $6cf8: $04
	dec  b                                           ; $6cf9: $05
	dec  b                                           ; $6cfa: $05
	dec  b                                           ; $6cfb: $05
	dec  c                                           ; $6cfc: $0d
	dec  c                                           ; $6cfd: $0d
	dec  c                                           ; $6cfe: $0d
	dec  c                                           ; $6cff: $0d
	dec  b                                           ; $6d00: $05
	inc  b                                           ; $6d01: $04
	inc  b                                           ; $6d02: $04
	inc  b                                           ; $6d03: $04
	inc  b                                           ; $6d04: $04
	inc  b                                           ; $6d05: $04
	inc  b                                           ; $6d06: $04
	inc  b                                           ; $6d07: $04
	dec  b                                           ; $6d08: $05
	dec  b                                           ; $6d09: $05
	dec  b                                           ; $6d0a: $05
	inc  b                                           ; $6d0b: $04
	inc  b                                           ; $6d0c: $04
	inc  b                                           ; $6d0d: $04
	dec  b                                           ; $6d0e: $05
	dec  b                                           ; $6d0f: $05
	dec  c                                           ; $6d10: $0d
	dec  c                                           ; $6d11: $0d
	dec  c                                           ; $6d12: $0d
	dec  c                                           ; $6d13: $0d
	dec  b                                           ; $6d14: $05
	inc  b                                           ; $6d15: $04
	inc  b                                           ; $6d16: $04
	inc  b                                           ; $6d17: $04
	inc  b                                           ; $6d18: $04
	inc  b                                           ; $6d19: $04
	inc  b                                           ; $6d1a: $04
	dec  b                                           ; $6d1b: $05
	dec  b                                           ; $6d1c: $05
	dec  b                                           ; $6d1d: $05
	dec  b                                           ; $6d1e: $05
	dec  b                                           ; $6d1f: $05
	dec  b                                           ; $6d20: $05
	dec  b                                           ; $6d21: $05
	inc  b                                           ; $6d22: $04
	inc  b                                           ; $6d23: $04
	inc  c                                           ; $6d24: $0c
	inc  c                                           ; $6d25: $0c
	dec  c                                           ; $6d26: $0d
	dec  c                                           ; $6d27: $0d
	dec  b                                           ; $6d28: $05
	dec  b                                           ; $6d29: $05
	dec  b                                           ; $6d2a: $05
	dec  b                                           ; $6d2b: $05
	dec  b                                           ; $6d2c: $05
	dec  b                                           ; $6d2d: $05
	dec  b                                           ; $6d2e: $05
	dec  b                                           ; $6d2f: $05
	dec  b                                           ; $6d30: $05
	dec  b                                           ; $6d31: $05
	dec  b                                           ; $6d32: $05
	dec  b                                           ; $6d33: $05
	dec  b                                           ; $6d34: $05
	dec  b                                           ; $6d35: $05
	dec  b                                           ; $6d36: $05
	dec  b                                           ; $6d37: $05
	dec  b                                           ; $6d38: $05
	dec  b                                           ; $6d39: $05
	dec  c                                           ; $6d3a: $0d
	dec  h                                           ; $6d3b: $25
	dec  b                                           ; $6d3c: $05
	inc  b                                           ; $6d3d: $04
	inc  b                                           ; $6d3e: $04
	inc  b                                           ; $6d3f: $04
	inc  b                                           ; $6d40: $04
	inc  b                                           ; $6d41: $04
	inc  b                                           ; $6d42: $04
	inc  b                                           ; $6d43: $04
	inc  b                                           ; $6d44: $04
	inc  b                                           ; $6d45: $04
	inc  b                                           ; $6d46: $04
	inc  b                                           ; $6d47: $04
	inc  b                                           ; $6d48: $04
	inc  b                                           ; $6d49: $04
	inc  b                                           ; $6d4a: $04
	inc  b                                           ; $6d4b: $04
	inc  b                                           ; $6d4c: $04
	inc  b                                           ; $6d4d: $04
	inc  b                                           ; $6d4e: $04
	dec  h                                           ; $6d4f: $25
	nop                                              ; $6d50: $00
	ld   bc, $0302                                   ; $6d51: $01 $02 $03
	inc  b                                           ; $6d54: $04
	dec  b                                           ; $6d55: $05
	ld   b, $06                                      ; $6d56: $06 $06
	ld   b, $09                                      ; $6d58: $06 $09
	ld   a, [bc]                                     ; $6d5a: $0a
	dec  bc                                          ; $6d5b: $0b
	inc  c                                           ; $6d5c: $0c
	dec  c                                           ; $6d5d: $0d
	ld   c, $0f                                      ; $6d5e: $0e $0f
	jr   nz, jr_084_6d83                             ; $6d60: $20 $21

	ld   [hl+], a                                    ; $6d62: $22
	inc  hl                                          ; $6d63: $23
	db   $10                                         ; $6d64: $10
	ld   de, $1312                                   ; $6d65: $11 $12 $13
	inc  d                                           ; $6d68: $14
	dec  d                                           ; $6d69: $15
	ld   d, $17                                      ; $6d6a: $16 $17
	jr   @+$1b                                       ; $6d6c: $18 $19

	ld   a, [de]                                     ; $6d6e: $1a
	dec  de                                          ; $6d6f: $1b
	inc  e                                           ; $6d70: $1c
	dec  e                                           ; $6d71: $1d
	ld   e, $1f                                      ; $6d72: $1e $1f
	inc  h                                           ; $6d74: $24
	dec  h                                           ; $6d75: $25
	ld   h, $27                                      ; $6d76: $26 $27
	jr   nz, @+$23                                   ; $6d78: $20 $21

	ld   [hl+], a                                    ; $6d7a: $22
	inc  hl                                          ; $6d7b: $23
	inc  h                                           ; $6d7c: $24
	dec  h                                           ; $6d7d: $25
	ld   h, $27                                      ; $6d7e: $26 $27
	jr   z, jr_084_6dab                              ; $6d80: $28 $29

	ld   a, [hl+]                                    ; $6d82: $2a

jr_084_6d83:
	dec  hl                                          ; $6d83: $2b
	inc  l                                           ; $6d84: $2c
	dec  l                                           ; $6d85: $2d
	ld   l, $2f                                      ; $6d86: $2e $2f
	jr   z, jr_084_6daf                              ; $6d88: $28 $25

	add  hl, hl                                      ; $6d8a: $29
	daa                                              ; $6d8b: $27
	jr   nc, jr_084_6dbf                             ; $6d8c: $30 $31

	ld   [hl-], a                                    ; $6d8e: $32
	inc  sp                                          ; $6d8f: $33
	inc  [hl]                                        ; $6d90: $34
	dec  [hl]                                        ; $6d91: $35
	ld   [hl], $37                                   ; $6d92: $36 $37
	jr   c, jr_084_6dcf                              ; $6d94: $38 $39

	ld   a, [hl-]                                    ; $6d96: $3a
	dec  sp                                          ; $6d97: $3b
	inc  a                                           ; $6d98: $3c
	dec  a                                           ; $6d99: $3d
	ld   a, $3f                                      ; $6d9a: $3e $3f
	ld   a, [hl+]                                    ; $6d9c: $2a
	dec  hl                                          ; $6d9d: $2b
	inc  l                                           ; $6d9e: $2c
	daa                                              ; $6d9f: $27
	ld   b, b                                        ; $6da0: $40
	ld   b, c                                        ; $6da1: $41
	ld   b, d                                        ; $6da2: $42
	ld   b, e                                        ; $6da3: $43
	ld   b, h                                        ; $6da4: $44
	ld   b, l                                        ; $6da5: $45
	ld   b, [hl]                                     ; $6da6: $46
	ld   b, a                                        ; $6da7: $47
	ld   c, b                                        ; $6da8: $48
	ld   c, c                                        ; $6da9: $49
	ld   c, d                                        ; $6daa: $4a

jr_084_6dab:
	ld   c, e                                        ; $6dab: $4b
	ld   c, h                                        ; $6dac: $4c
	ld   c, l                                        ; $6dad: $4d
	ld   c, [hl]                                     ; $6dae: $4e

jr_084_6daf:
	ld   c, a                                        ; $6daf: $4f
	dec  l                                           ; $6db0: $2d
	ld   l, $2c                                      ; $6db1: $2e $2c
	daa                                              ; $6db3: $27
	ld   d, b                                        ; $6db4: $50
	ld   d, c                                        ; $6db5: $51
	ld   d, d                                        ; $6db6: $52
	ld   d, e                                        ; $6db7: $53
	ld   d, h                                        ; $6db8: $54
	ld   d, l                                        ; $6db9: $55
	ld   d, [hl]                                     ; $6dba: $56
	ld   d, a                                        ; $6dbb: $57
	ld   e, b                                        ; $6dbc: $58
	ld   e, c                                        ; $6dbd: $59
	ld   e, d                                        ; $6dbe: $5a

jr_084_6dbf:
	ld   e, e                                        ; $6dbf: $5b
	ld   e, h                                        ; $6dc0: $5c
	ld   e, l                                        ; $6dc1: $5d
	ld   e, [hl]                                     ; $6dc2: $5e
	ld   e, a                                        ; $6dc3: $5f
	cpl                                              ; $6dc4: $2f
	jr   nc, @+$2e                                   ; $6dc5: $30 $2c

	daa                                              ; $6dc7: $27
	ld   h, b                                        ; $6dc8: $60
	ld   h, c                                        ; $6dc9: $61
	ld   h, d                                        ; $6dca: $62
	ld   h, e                                        ; $6dcb: $63
	ld   h, h                                        ; $6dcc: $64
	ld   h, l                                        ; $6dcd: $65
	ld   h, [hl]                                     ; $6dce: $66

jr_084_6dcf:
	ld   h, a                                        ; $6dcf: $67
	ld   l, b                                        ; $6dd0: $68
	ld   l, c                                        ; $6dd1: $69
	ld   l, d                                        ; $6dd2: $6a
	ld   l, e                                        ; $6dd3: $6b
	ld   l, h                                        ; $6dd4: $6c
	ld   l, l                                        ; $6dd5: $6d
	ld   l, [hl]                                     ; $6dd6: $6e
	ld   l, a                                        ; $6dd7: $6f
	ld   sp, $3332                                   ; $6dd8: $31 $32 $33
	daa                                              ; $6ddb: $27
	ld   [hl], b                                     ; $6ddc: $70
	ld   [hl], c                                     ; $6ddd: $71
	ld   [hl], d                                     ; $6dde: $72
	ld   [hl], e                                     ; $6ddf: $73
	ld   [hl], h                                     ; $6de0: $74
	ld   [hl], l                                     ; $6de1: $75
	halt                                             ; $6de2: $76
	ld   [hl], a                                     ; $6de3: $77
	ld   a, b                                        ; $6de4: $78
	ld   a, c                                        ; $6de5: $79
	ld   a, d                                        ; $6de6: $7a
	ld   l, e                                        ; $6de7: $6b
	ld   a, h                                        ; $6de8: $7c
	ld   a, l                                        ; $6de9: $7d
	ld   a, [hl]                                     ; $6dea: $7e
	ld   a, a                                        ; $6deb: $7f
	inc  [hl]                                        ; $6dec: $34
	dec  [hl]                                        ; $6ded: $35
	ld   [hl], $37                                   ; $6dee: $36 $37
	nop                                              ; $6df0: $00
	ld   bc, $0302                                   ; $6df1: $01 $02 $03
	inc  b                                           ; $6df4: $04
	dec  b                                           ; $6df5: $05
	ld   b, $07                                      ; $6df6: $06 $07
	ld   [$0a09], sp                                 ; $6df8: $08 $09 $0a
	ld   l, e                                        ; $6dfb: $6b
	inc  c                                           ; $6dfc: $0c
	dec  c                                           ; $6dfd: $0d
	ld   c, $0f                                      ; $6dfe: $0e $0f
	jr   c, @+$0d                                    ; $6e00: $38 $0b

	rlca                                             ; $6e02: $07
	ld   [$1110], sp                                 ; $6e03: $08 $10 $11
	ld   [de], a                                     ; $6e06: $12
	inc  de                                          ; $6e07: $13
	inc  d                                           ; $6e08: $14
	dec  d                                           ; $6e09: $15
	ld   d, $17                                      ; $6e0a: $16 $17
	jr   jr_084_6e27                                 ; $6e0c: $18 $19

	ld   a, [de]                                     ; $6e0e: $1a
	dec  de                                          ; $6e0f: $1b
	inc  e                                           ; $6e10: $1c
	dec  e                                           ; $6e11: $1d
	ld   e, $1f                                      ; $6e12: $1e $1f
	ld   a, e                                        ; $6e14: $7b
	ld   [hl], b                                     ; $6e15: $70
	ld   [hl], b                                     ; $6e16: $70
	ld   [hl], b                                     ; $6e17: $70
	inc  bc                                          ; $6e18: $03
	inc  bc                                          ; $6e19: $03
	inc  bc                                          ; $6e1a: $03
	inc  bc                                          ; $6e1b: $03
	inc  bc                                          ; $6e1c: $03
	inc  bc                                          ; $6e1d: $03
	inc  bc                                          ; $6e1e: $03
	inc  bc                                          ; $6e1f: $03
	inc  bc                                          ; $6e20: $03
	inc  bc                                          ; $6e21: $03
	inc  bc                                          ; $6e22: $03
	inc  bc                                          ; $6e23: $03
	inc  bc                                          ; $6e24: $03
	inc  bc                                          ; $6e25: $03
	inc  bc                                          ; $6e26: $03

jr_084_6e27:
	inc  bc                                          ; $6e27: $03
	dec  bc                                          ; $6e28: $0b
	inc  c                                           ; $6e29: $0c
	inc  c                                           ; $6e2a: $0c
	inc  c                                           ; $6e2b: $0c
	inc  bc                                          ; $6e2c: $03
	inc  bc                                          ; $6e2d: $03
	inc  bc                                          ; $6e2e: $03
	inc  bc                                          ; $6e2f: $03
	inc  bc                                          ; $6e30: $03
	inc  bc                                          ; $6e31: $03
	inc  bc                                          ; $6e32: $03
	inc  bc                                          ; $6e33: $03
	inc  bc                                          ; $6e34: $03
	inc  bc                                          ; $6e35: $03
	inc  bc                                          ; $6e36: $03
	inc  bc                                          ; $6e37: $03
	inc  bc                                          ; $6e38: $03
	inc  bc                                          ; $6e39: $03
	inc  bc                                          ; $6e3a: $03
	inc  bc                                          ; $6e3b: $03
	dec  bc                                          ; $6e3c: $0b
	inc  c                                           ; $6e3d: $0c
	inc  c                                           ; $6e3e: $0c
	inc  c                                           ; $6e3f: $0c
	inc  bc                                          ; $6e40: $03
	inc  bc                                          ; $6e41: $03
	inc  bc                                          ; $6e42: $03
	inc  bc                                          ; $6e43: $03
	inc  bc                                          ; $6e44: $03
	inc  bc                                          ; $6e45: $03
	inc  bc                                          ; $6e46: $03
	inc  bc                                          ; $6e47: $03
	inc  bc                                          ; $6e48: $03
	inc  bc                                          ; $6e49: $03
	inc  bc                                          ; $6e4a: $03
	inc  bc                                          ; $6e4b: $03
	inc  bc                                          ; $6e4c: $03
	inc  bc                                          ; $6e4d: $03
	inc  bc                                          ; $6e4e: $03
	inc  bc                                          ; $6e4f: $03
	dec  bc                                          ; $6e50: $0b
	inc  c                                           ; $6e51: $0c
	inc  c                                           ; $6e52: $0c
	inc  c                                           ; $6e53: $0c
	inc  bc                                          ; $6e54: $03
	inc  bc                                          ; $6e55: $03
	inc  bc                                          ; $6e56: $03
	inc  bc                                          ; $6e57: $03
	inc  bc                                          ; $6e58: $03
	inc  bc                                          ; $6e59: $03
	inc  bc                                          ; $6e5a: $03
	inc  bc                                          ; $6e5b: $03
	inc  bc                                          ; $6e5c: $03
	inc  bc                                          ; $6e5d: $03
	inc  bc                                          ; $6e5e: $03
	inc  bc                                          ; $6e5f: $03
	inc  bc                                          ; $6e60: $03
	inc  bc                                          ; $6e61: $03
	inc  bc                                          ; $6e62: $03
	inc  bc                                          ; $6e63: $03
	dec  bc                                          ; $6e64: $0b
	inc  c                                           ; $6e65: $0c
	inc  c                                           ; $6e66: $0c
	inc  c                                           ; $6e67: $0c
	inc  bc                                          ; $6e68: $03
	inc  bc                                          ; $6e69: $03
	inc  bc                                          ; $6e6a: $03
	inc  bc                                          ; $6e6b: $03
	inc  bc                                          ; $6e6c: $03
	inc  bc                                          ; $6e6d: $03
	inc  bc                                          ; $6e6e: $03
	inc  bc                                          ; $6e6f: $03
	inc  bc                                          ; $6e70: $03
	inc  bc                                          ; $6e71: $03
	inc  bc                                          ; $6e72: $03
	inc  bc                                          ; $6e73: $03
	inc  bc                                          ; $6e74: $03
	inc  bc                                          ; $6e75: $03
	inc  bc                                          ; $6e76: $03
	inc  bc                                          ; $6e77: $03
	dec  c                                           ; $6e78: $0d
	inc  c                                           ; $6e79: $0c
	inc  c                                           ; $6e7a: $0c
	inc  c                                           ; $6e7b: $0c
	inc  bc                                          ; $6e7c: $03
	inc  bc                                          ; $6e7d: $03
	inc  bc                                          ; $6e7e: $03
	inc  bc                                          ; $6e7f: $03
	dec  b                                           ; $6e80: $05
	inc  bc                                          ; $6e81: $03
	dec  b                                           ; $6e82: $05
	dec  b                                           ; $6e83: $05
	inc  bc                                          ; $6e84: $03
	inc  bc                                          ; $6e85: $03
	inc  bc                                          ; $6e86: $03
	inc  bc                                          ; $6e87: $03
	inc  bc                                          ; $6e88: $03
	inc  bc                                          ; $6e89: $03
	inc  bc                                          ; $6e8a: $03
	inc  bc                                          ; $6e8b: $03
	dec  c                                           ; $6e8c: $0d
	inc  c                                           ; $6e8d: $0c
	inc  c                                           ; $6e8e: $0c
	inc  c                                           ; $6e8f: $0c
	inc  bc                                          ; $6e90: $03
	inc  bc                                          ; $6e91: $03
	inc  bc                                          ; $6e92: $03
	inc  bc                                          ; $6e93: $03
	dec  b                                           ; $6e94: $05
	inc  bc                                          ; $6e95: $03
	dec  b                                           ; $6e96: $05
	dec  b                                           ; $6e97: $05
	inc  bc                                          ; $6e98: $03
	inc  bc                                          ; $6e99: $03
	inc  bc                                          ; $6e9a: $03
	inc  bc                                          ; $6e9b: $03
	inc  bc                                          ; $6e9c: $03
	inc  bc                                          ; $6e9d: $03
	inc  bc                                          ; $6e9e: $03
	inc  bc                                          ; $6e9f: $03
	dec  c                                           ; $6ea0: $0d
	dec  c                                           ; $6ea1: $0d
	inc  c                                           ; $6ea2: $0c
	inc  c                                           ; $6ea3: $0c
	inc  bc                                          ; $6ea4: $03
	inc  bc                                          ; $6ea5: $03
	inc  bc                                          ; $6ea6: $03
	inc  bc                                          ; $6ea7: $03
	inc  bc                                          ; $6ea8: $03
	inc  bc                                          ; $6ea9: $03
	inc  bc                                          ; $6eaa: $03
	inc  bc                                          ; $6eab: $03
	inc  bc                                          ; $6eac: $03
	inc  bc                                          ; $6ead: $03
	inc  bc                                          ; $6eae: $03
	inc  bc                                          ; $6eaf: $03
	inc  bc                                          ; $6eb0: $03
	inc  bc                                          ; $6eb1: $03
	inc  bc                                          ; $6eb2: $03
	inc  bc                                          ; $6eb3: $03
	dec  c                                           ; $6eb4: $0d
	dec  c                                           ; $6eb5: $0d
	inc  c                                           ; $6eb6: $0c
	inc  c                                           ; $6eb7: $0c
	dec  bc                                          ; $6eb8: $0b
	dec  bc                                          ; $6eb9: $0b
	dec  bc                                          ; $6eba: $0b
	dec  bc                                          ; $6ebb: $0b
	dec  bc                                          ; $6ebc: $0b
	dec  bc                                          ; $6ebd: $0b
	dec  bc                                          ; $6ebe: $0b
	dec  bc                                          ; $6ebf: $0b
	dec  bc                                          ; $6ec0: $0b
	dec  bc                                          ; $6ec1: $0b
	dec  bc                                          ; $6ec2: $0b
	inc  bc                                          ; $6ec3: $03
	dec  bc                                          ; $6ec4: $0b
	dec  c                                           ; $6ec5: $0d
	dec  c                                           ; $6ec6: $0d
	dec  c                                           ; $6ec7: $0d
	dec  bc                                          ; $6ec8: $0b
	inc  c                                           ; $6ec9: $0c
	inc  b                                           ; $6eca: $04
	inc  b                                           ; $6ecb: $04
	dec  bc                                          ; $6ecc: $0b
	dec  bc                                          ; $6ecd: $0b
	dec  c                                           ; $6ece: $0d
	dec  c                                           ; $6ecf: $0d
	dec  c                                           ; $6ed0: $0d
	dec  c                                           ; $6ed1: $0d
	dec  c                                           ; $6ed2: $0d
	dec  c                                           ; $6ed3: $0d
	dec  bc                                          ; $6ed4: $0b
	dec  bc                                          ; $6ed5: $0b
	dec  bc                                          ; $6ed6: $0b
	dec  bc                                          ; $6ed7: $0b
	dec  bc                                          ; $6ed8: $0b
	dec  c                                           ; $6ed9: $0d
	dec  c                                           ; $6eda: $0d
	dec  c                                           ; $6edb: $0d
	dec  b                                           ; $6edc: $05
	inc  bc                                          ; $6edd: $03
	inc  bc                                          ; $6ede: $03
	inc  bc                                          ; $6edf: $03
	nop                                              ; $6ee0: $00
	ld   bc, $0302                                   ; $6ee1: $01 $02 $03
	inc  b                                           ; $6ee4: $04
	dec  b                                           ; $6ee5: $05
	ld   b, $07                                      ; $6ee6: $06 $07
	ld   [$0a09], sp                                 ; $6ee8: $08 $09 $0a
	dec  bc                                          ; $6eeb: $0b
	inc  c                                           ; $6eec: $0c
	dec  c                                           ; $6eed: $0d
	ld   c, $0f                                      ; $6eee: $0e $0f
	jr   nz, jr_084_6f13                             ; $6ef0: $20 $21

	ld   a, [hl+]                                    ; $6ef2: $2a
	dec  hl                                          ; $6ef3: $2b
	db   $10                                         ; $6ef4: $10
	ld   de, $1312                                   ; $6ef5: $11 $12 $13
	inc  d                                           ; $6ef8: $14
	dec  d                                           ; $6ef9: $15
	ld   d, $17                                      ; $6efa: $16 $17
	jr   @+$1b                                       ; $6efc: $18 $19

	ld   a, [de]                                     ; $6efe: $1a
	dec  de                                          ; $6eff: $1b
	inc  e                                           ; $6f00: $1c
	dec  e                                           ; $6f01: $1d
	ld   e, $1f                                      ; $6f02: $1e $1f
	jr   nc, jr_084_6f37                             ; $6f04: $30 $31

	inc  l                                           ; $6f06: $2c
	dec  l                                           ; $6f07: $2d
	jr   nz, @+$23                                   ; $6f08: $20 $21

	ld   [hl+], a                                    ; $6f0a: $22
	inc  hl                                          ; $6f0b: $23
	inc  h                                           ; $6f0c: $24
	dec  h                                           ; $6f0d: $25
	ld   h, $27                                      ; $6f0e: $26 $27
	jr   z, jr_084_6f3b                              ; $6f10: $28 $29

	ld   a, [hl+]                                    ; $6f12: $2a

jr_084_6f13:
	dec  hl                                          ; $6f13: $2b
	inc  l                                           ; $6f14: $2c
	dec  l                                           ; $6f15: $2d
	ld   l, $2f                                      ; $6f16: $2e $2f
	ld   [hl+], a                                    ; $6f18: $22
	inc  hl                                          ; $6f19: $23
	ld   l, $2d                                      ; $6f1a: $2e $2d
	jr   nc, jr_084_6f4f                             ; $6f1c: $30 $31

	ld   [hl-], a                                    ; $6f1e: $32
	inc  sp                                          ; $6f1f: $33
	inc  [hl]                                        ; $6f20: $34
	dec  [hl]                                        ; $6f21: $35
	ld   [hl], $37                                   ; $6f22: $36 $37
	jr   c, jr_084_6f5f                              ; $6f24: $38 $39

	ld   a, [hl-]                                    ; $6f26: $3a
	dec  sp                                          ; $6f27: $3b
	inc  a                                           ; $6f28: $3c
	dec  a                                           ; $6f29: $3d
	ld   a, $3f                                      ; $6f2a: $3e $3f
	ld   [hl-], a                                    ; $6f2c: $32
	inc  sp                                          ; $6f2d: $33
	cpl                                              ; $6f2e: $2f
	dec  l                                           ; $6f2f: $2d
	ld   b, b                                        ; $6f30: $40
	ld   b, c                                        ; $6f31: $41
	ld   b, d                                        ; $6f32: $42
	ld   b, e                                        ; $6f33: $43
	ld   b, h                                        ; $6f34: $44
	ld   b, l                                        ; $6f35: $45
	ld   b, [hl]                                     ; $6f36: $46

jr_084_6f37:
	ld   b, a                                        ; $6f37: $47
	ld   c, b                                        ; $6f38: $48
	ld   c, c                                        ; $6f39: $49
	ld   c, d                                        ; $6f3a: $4a

jr_084_6f3b:
	ld   c, e                                        ; $6f3b: $4b
	ld   c, h                                        ; $6f3c: $4c
	ld   c, l                                        ; $6f3d: $4d
	ld   c, [hl]                                     ; $6f3e: $4e
	ld   c, a                                        ; $6f3f: $4f
	inc  h                                           ; $6f40: $24
	dec  h                                           ; $6f41: $25
	ld   a, [hl-]                                    ; $6f42: $3a
	dec  l                                           ; $6f43: $2d
	ld   d, b                                        ; $6f44: $50
	ld   d, c                                        ; $6f45: $51
	ld   d, d                                        ; $6f46: $52
	ld   d, e                                        ; $6f47: $53
	ld   d, h                                        ; $6f48: $54
	ld   d, l                                        ; $6f49: $55
	ld   d, [hl]                                     ; $6f4a: $56
	ld   d, a                                        ; $6f4b: $57
	ld   e, b                                        ; $6f4c: $58
	ld   e, c                                        ; $6f4d: $59
	ld   e, d                                        ; $6f4e: $5a

jr_084_6f4f:
	ld   e, e                                        ; $6f4f: $5b
	ld   e, h                                        ; $6f50: $5c
	ld   e, l                                        ; $6f51: $5d
	ld   e, [hl]                                     ; $6f52: $5e
	ld   e, a                                        ; $6f53: $5f
	inc  [hl]                                        ; $6f54: $34
	dec  [hl]                                        ; $6f55: $35
	inc  l                                           ; $6f56: $2c
	dec  l                                           ; $6f57: $2d
	ld   h, b                                        ; $6f58: $60
	ld   h, c                                        ; $6f59: $61
	ld   h, d                                        ; $6f5a: $62
	ld   h, e                                        ; $6f5b: $63
	ld   h, h                                        ; $6f5c: $64
	ld   h, l                                        ; $6f5d: $65
	ld   h, [hl]                                     ; $6f5e: $66

jr_084_6f5f:
	ld   h, a                                        ; $6f5f: $67
	ld   l, b                                        ; $6f60: $68
	ld   l, c                                        ; $6f61: $69
	ld   l, d                                        ; $6f62: $6a
	ld   l, e                                        ; $6f63: $6b
	ld   l, h                                        ; $6f64: $6c
	ld   l, l                                        ; $6f65: $6d
	ld   l, [hl]                                     ; $6f66: $6e
	ld   l, a                                        ; $6f67: $6f
	ld   h, $27                                      ; $6f68: $26 $27
	inc  l                                           ; $6f6a: $2c
	dec  l                                           ; $6f6b: $2d
	ld   [hl], b                                     ; $6f6c: $70
	ld   [hl], c                                     ; $6f6d: $71
	ld   [hl], d                                     ; $6f6e: $72
	ld   [hl], e                                     ; $6f6f: $73
	ld   [hl], h                                     ; $6f70: $74
	ld   [hl], l                                     ; $6f71: $75
	halt                                             ; $6f72: $76
	ld   [hl], a                                     ; $6f73: $77
	ld   a, b                                        ; $6f74: $78
	ld   a, c                                        ; $6f75: $79
	ld   a, d                                        ; $6f76: $7a
	ld   a, e                                        ; $6f77: $7b
	ld   a, h                                        ; $6f78: $7c
	ld   a, l                                        ; $6f79: $7d
	ld   a, [hl]                                     ; $6f7a: $7e
	ld   a, a                                        ; $6f7b: $7f
	ld   [hl], $37                                   ; $6f7c: $36 $37
	inc  l                                           ; $6f7e: $2c
	dec  l                                           ; $6f7f: $2d
	nop                                              ; $6f80: $00
	ld   bc, $0302                                   ; $6f81: $01 $02 $03
	inc  b                                           ; $6f84: $04
	dec  b                                           ; $6f85: $05
	ld   b, $07                                      ; $6f86: $06 $07
	ld   [$0a09], sp                                 ; $6f88: $08 $09 $0a
	dec  bc                                          ; $6f8b: $0b
	inc  c                                           ; $6f8c: $0c
	dec  c                                           ; $6f8d: $0d
	ld   c, $0f                                      ; $6f8e: $0e $0f
	jr   z, jr_084_6fbb                              ; $6f90: $28 $29

	inc  l                                           ; $6f92: $2c
	dec  l                                           ; $6f93: $2d
	db   $10                                         ; $6f94: $10
	ld   de, $1312                                   ; $6f95: $11 $12 $13
	inc  d                                           ; $6f98: $14
	dec  d                                           ; $6f99: $15
	ld   d, $17                                      ; $6f9a: $16 $17
	jr   jr_084_6fb7                                 ; $6f9c: $18 $19

	ld   a, [de]                                     ; $6f9e: $1a
	dec  de                                          ; $6f9f: $1b
	inc  e                                           ; $6fa0: $1c
	dec  e                                           ; $6fa1: $1d
	ld   e, $1f                                      ; $6fa2: $1e $1f
	jr   c, jr_084_6fdf                              ; $6fa4: $38 $39

	inc  l                                           ; $6fa6: $2c
	dec  l                                           ; $6fa7: $2d
	inc  bc                                          ; $6fa8: $03
	inc  bc                                          ; $6fa9: $03
	inc  bc                                          ; $6faa: $03
	inc  bc                                          ; $6fab: $03
	inc  bc                                          ; $6fac: $03
	inc  bc                                          ; $6fad: $03
	inc  bc                                          ; $6fae: $03
	inc  bc                                          ; $6faf: $03
	inc  bc                                          ; $6fb0: $03
	inc  bc                                          ; $6fb1: $03
	inc  bc                                          ; $6fb2: $03
	inc  bc                                          ; $6fb3: $03
	inc  bc                                          ; $6fb4: $03
	dec  b                                           ; $6fb5: $05
	dec  b                                           ; $6fb6: $05

jr_084_6fb7:
	dec  b                                           ; $6fb7: $05
	dec  c                                           ; $6fb8: $0d
	dec  c                                           ; $6fb9: $0d
	dec  bc                                          ; $6fba: $0b

jr_084_6fbb:
	dec  bc                                          ; $6fbb: $0b
	inc  bc                                          ; $6fbc: $03
	inc  bc                                          ; $6fbd: $03
	inc  bc                                          ; $6fbe: $03
	inc  bc                                          ; $6fbf: $03
	inc  bc                                          ; $6fc0: $03
	inc  bc                                          ; $6fc1: $03
	inc  bc                                          ; $6fc2: $03
	inc  bc                                          ; $6fc3: $03
	inc  bc                                          ; $6fc4: $03
	inc  bc                                          ; $6fc5: $03
	inc  bc                                          ; $6fc6: $03
	inc  bc                                          ; $6fc7: $03
	inc  bc                                          ; $6fc8: $03
	dec  b                                           ; $6fc9: $05
	dec  b                                           ; $6fca: $05
	dec  b                                           ; $6fcb: $05
	dec  c                                           ; $6fcc: $0d
	dec  c                                           ; $6fcd: $0d
	dec  bc                                          ; $6fce: $0b
	dec  bc                                          ; $6fcf: $0b
	inc  bc                                          ; $6fd0: $03
	inc  bc                                          ; $6fd1: $03
	inc  bc                                          ; $6fd2: $03
	inc  bc                                          ; $6fd3: $03
	inc  bc                                          ; $6fd4: $03
	inc  bc                                          ; $6fd5: $03
	inc  bc                                          ; $6fd6: $03
	inc  bc                                          ; $6fd7: $03
	inc  bc                                          ; $6fd8: $03
	inc  bc                                          ; $6fd9: $03
	inc  bc                                          ; $6fda: $03
	inc  bc                                          ; $6fdb: $03
	inc  bc                                          ; $6fdc: $03
	dec  b                                           ; $6fdd: $05
	dec  b                                           ; $6fde: $05

jr_084_6fdf:
	dec  b                                           ; $6fdf: $05
	inc  c                                           ; $6fe0: $0c
	inc  c                                           ; $6fe1: $0c
	dec  bc                                          ; $6fe2: $0b
	dec  bc                                          ; $6fe3: $0b
	inc  bc                                          ; $6fe4: $03
	inc  bc                                          ; $6fe5: $03
	inc  bc                                          ; $6fe6: $03
	inc  bc                                          ; $6fe7: $03
	inc  bc                                          ; $6fe8: $03
	inc  bc                                          ; $6fe9: $03
	inc  bc                                          ; $6fea: $03
	inc  bc                                          ; $6feb: $03
	inc  bc                                          ; $6fec: $03
	inc  bc                                          ; $6fed: $03
	inc  bc                                          ; $6fee: $03
	inc  bc                                          ; $6fef: $03
	inc  b                                           ; $6ff0: $04
	dec  b                                           ; $6ff1: $05
	inc  b                                           ; $6ff2: $04
	inc  b                                           ; $6ff3: $04
	inc  c                                           ; $6ff4: $0c
	inc  c                                           ; $6ff5: $0c
	dec  bc                                          ; $6ff6: $0b
	dec  bc                                          ; $6ff7: $0b
	inc  bc                                          ; $6ff8: $03
	inc  bc                                          ; $6ff9: $03
	inc  bc                                          ; $6ffa: $03
	inc  bc                                          ; $6ffb: $03
	inc  bc                                          ; $6ffc: $03
	inc  bc                                          ; $6ffd: $03
	inc  bc                                          ; $6ffe: $03
	inc  bc                                          ; $6fff: $03
	inc  bc                                          ; $7000: $03
	inc  bc                                          ; $7001: $03
	inc  bc                                          ; $7002: $03
	inc  bc                                          ; $7003: $03
	inc  bc                                          ; $7004: $03
	inc  b                                           ; $7005: $04
	inc  b                                           ; $7006: $04
	inc  b                                           ; $7007: $04
	inc  c                                           ; $7008: $0c
	inc  c                                           ; $7009: $0c
	dec  bc                                          ; $700a: $0b
	dec  bc                                          ; $700b: $0b
	inc  bc                                          ; $700c: $03
	inc  bc                                          ; $700d: $03
	inc  bc                                          ; $700e: $03
	inc  bc                                          ; $700f: $03
	inc  bc                                          ; $7010: $03
	inc  bc                                          ; $7011: $03
	inc  bc                                          ; $7012: $03
	inc  bc                                          ; $7013: $03
	inc  bc                                          ; $7014: $03
	inc  bc                                          ; $7015: $03
	dec  b                                           ; $7016: $05
	inc  bc                                          ; $7017: $03
	inc  bc                                          ; $7018: $03
	inc  b                                           ; $7019: $04
	inc  b                                           ; $701a: $04
	inc  b                                           ; $701b: $04
	inc  c                                           ; $701c: $0c
	inc  c                                           ; $701d: $0c
	dec  bc                                          ; $701e: $0b
	dec  bc                                          ; $701f: $0b
	inc  bc                                          ; $7020: $03
	inc  bc                                          ; $7021: $03
	inc  bc                                          ; $7022: $03
	inc  bc                                          ; $7023: $03
	inc  bc                                          ; $7024: $03
	inc  bc                                          ; $7025: $03
	inc  bc                                          ; $7026: $03
	inc  bc                                          ; $7027: $03
	inc  bc                                          ; $7028: $03
	inc  bc                                          ; $7029: $03
	dec  b                                           ; $702a: $05
	inc  bc                                          ; $702b: $03
	inc  b                                           ; $702c: $04
	inc  b                                           ; $702d: $04
	inc  b                                           ; $702e: $04
	inc  b                                           ; $702f: $04
	inc  c                                           ; $7030: $0c
	inc  c                                           ; $7031: $0c
	dec  bc                                          ; $7032: $0b
	dec  bc                                          ; $7033: $0b
	inc  bc                                          ; $7034: $03
	inc  bc                                          ; $7035: $03
	inc  bc                                          ; $7036: $03
	inc  bc                                          ; $7037: $03
	inc  bc                                          ; $7038: $03
	inc  bc                                          ; $7039: $03
	inc  bc                                          ; $703a: $03
	inc  bc                                          ; $703b: $03
	inc  bc                                          ; $703c: $03
	inc  bc                                          ; $703d: $03
	inc  bc                                          ; $703e: $03
	inc  bc                                          ; $703f: $03
	inc  bc                                          ; $7040: $03
	inc  b                                           ; $7041: $04
	inc  b                                           ; $7042: $04
	inc  b                                           ; $7043: $04
	inc  c                                           ; $7044: $0c
	inc  c                                           ; $7045: $0c
	dec  bc                                          ; $7046: $0b
	dec  bc                                          ; $7047: $0b
	dec  bc                                          ; $7048: $0b
	dec  bc                                          ; $7049: $0b
	dec  c                                           ; $704a: $0d
	dec  c                                           ; $704b: $0d
	dec  c                                           ; $704c: $0d
	dec  c                                           ; $704d: $0d
	dec  c                                           ; $704e: $0d
	dec  c                                           ; $704f: $0d
	inc  c                                           ; $7050: $0c
	inc  c                                           ; $7051: $0c
	inc  c                                           ; $7052: $0c
	inc  c                                           ; $7053: $0c
	inc  c                                           ; $7054: $0c
	inc  c                                           ; $7055: $0c
	inc  c                                           ; $7056: $0c
	inc  c                                           ; $7057: $0c
	inc  c                                           ; $7058: $0c
	inc  c                                           ; $7059: $0c
	dec  bc                                          ; $705a: $0b
	dec  bc                                          ; $705b: $0b
	inc  c                                           ; $705c: $0c
	inc  c                                           ; $705d: $0c
	inc  c                                           ; $705e: $0c
	inc  c                                           ; $705f: $0c
	inc  c                                           ; $7060: $0c
	inc  c                                           ; $7061: $0c
	inc  c                                           ; $7062: $0c
	inc  c                                           ; $7063: $0c
	inc  c                                           ; $7064: $0c
	inc  c                                           ; $7065: $0c
	inc  c                                           ; $7066: $0c
	inc  c                                           ; $7067: $0c
	inc  c                                           ; $7068: $0c
	inc  c                                           ; $7069: $0c
	inc  c                                           ; $706a: $0c
	inc  c                                           ; $706b: $0c
	inc  c                                           ; $706c: $0c
	inc  c                                           ; $706d: $0c
	dec  bc                                          ; $706e: $0b
	dec  bc                                          ; $706f: $0b
	nop                                              ; $7070: $00
	ld   bc, $0302                                   ; $7071: $01 $02 $03
	inc  b                                           ; $7074: $04
	dec  b                                           ; $7075: $05
	ld   b, $07                                      ; $7076: $06 $07
	ld   [$0a09], sp                                 ; $7078: $08 $09 $0a
	dec  bc                                          ; $707b: $0b
	inc  c                                           ; $707c: $0c
	dec  c                                           ; $707d: $0d
	ld   c, $0f                                      ; $707e: $0e $0f
	jr   nz, jr_084_70a3                             ; $7080: $20 $21

	ld   [hl+], a                                    ; $7082: $22
	inc  hl                                          ; $7083: $23
	db   $10                                         ; $7084: $10
	ld   de, $1312                                   ; $7085: $11 $12 $13
	inc  d                                           ; $7088: $14
	dec  d                                           ; $7089: $15
	ld   d, $17                                      ; $708a: $16 $17
	jr   @+$1b                                       ; $708c: $18 $19

	ld   a, [de]                                     ; $708e: $1a
	dec  de                                          ; $708f: $1b
	inc  e                                           ; $7090: $1c
	dec  e                                           ; $7091: $1d
	ld   e, $1f                                      ; $7092: $1e $1f
	jr   nc, jr_084_70c7                             ; $7094: $30 $31

	ld   [hl-], a                                    ; $7096: $32
	inc  sp                                          ; $7097: $33
	jr   nz, @+$23                                   ; $7098: $20 $21

	ld   [hl+], a                                    ; $709a: $22
	inc  hl                                          ; $709b: $23
	inc  h                                           ; $709c: $24
	dec  h                                           ; $709d: $25
	ld   h, $27                                      ; $709e: $26 $27
	jr   z, jr_084_70cb                              ; $70a0: $28 $29

	ld   a, [hl+]                                    ; $70a2: $2a

jr_084_70a3:
	dec  hl                                          ; $70a3: $2b
	inc  l                                           ; $70a4: $2c
	dec  l                                           ; $70a5: $2d
	ld   l, $2f                                      ; $70a6: $2e $2f
	inc  h                                           ; $70a8: $24
	dec  h                                           ; $70a9: $25
	ld   h, $27                                      ; $70aa: $26 $27
	jr   nc, jr_084_70df                             ; $70ac: $30 $31

	ld   [hl-], a                                    ; $70ae: $32
	inc  sp                                          ; $70af: $33
	inc  [hl]                                        ; $70b0: $34
	dec  [hl]                                        ; $70b1: $35
	ld   [hl], $37                                   ; $70b2: $36 $37
	jr   c, jr_084_70ef                              ; $70b4: $38 $39

	ld   a, [hl-]                                    ; $70b6: $3a
	dec  sp                                          ; $70b7: $3b
	inc  a                                           ; $70b8: $3c
	dec  a                                           ; $70b9: $3d
	ld   a, $3f                                      ; $70ba: $3e $3f
	inc  [hl]                                        ; $70bc: $34
	dec  [hl]                                        ; $70bd: $35
	ld   [hl], $37                                   ; $70be: $36 $37
	ld   b, b                                        ; $70c0: $40
	ld   b, c                                        ; $70c1: $41
	ld   b, d                                        ; $70c2: $42
	ld   b, e                                        ; $70c3: $43
	ld   b, h                                        ; $70c4: $44
	ld   b, l                                        ; $70c5: $45
	ld   b, [hl]                                     ; $70c6: $46

jr_084_70c7:
	ld   b, a                                        ; $70c7: $47
	ld   c, b                                        ; $70c8: $48
	ld   c, c                                        ; $70c9: $49
	ld   c, d                                        ; $70ca: $4a

jr_084_70cb:
	ld   c, e                                        ; $70cb: $4b
	jr   z, jr_084_70f6                              ; $70cc: $28 $28

	ld   c, [hl]                                     ; $70ce: $4e
	ld   c, a                                        ; $70cf: $4f
	jr   z, @+$2b                                    ; $70d0: $28 $29

	ld   a, [hl+]                                    ; $70d2: $2a
	dec  hl                                          ; $70d3: $2b
	ld   d, b                                        ; $70d4: $50
	ld   d, c                                        ; $70d5: $51
	ld   d, d                                        ; $70d6: $52
	ld   d, e                                        ; $70d7: $53
	ld   d, h                                        ; $70d8: $54
	ld   d, l                                        ; $70d9: $55
	ld   d, [hl]                                     ; $70da: $56
	ld   d, a                                        ; $70db: $57
	ld   e, b                                        ; $70dc: $58
	ld   e, c                                        ; $70dd: $59
	ld   e, d                                        ; $70de: $5a

jr_084_70df:
	ld   e, e                                        ; $70df: $5b
	ld   e, h                                        ; $70e0: $5c
	ld   e, l                                        ; $70e1: $5d
	ld   e, [hl]                                     ; $70e2: $5e
	ld   e, a                                        ; $70e3: $5f
	jr   c, @+$3b                                    ; $70e4: $38 $39

	ld   a, [hl-]                                    ; $70e6: $3a
	dec  sp                                          ; $70e7: $3b
	ld   h, b                                        ; $70e8: $60
	ld   h, c                                        ; $70e9: $61
	ld   h, d                                        ; $70ea: $62
	ld   h, e                                        ; $70eb: $63
	ld   h, h                                        ; $70ec: $64
	ld   h, l                                        ; $70ed: $65
	ld   h, [hl]                                     ; $70ee: $66

jr_084_70ef:
	ld   h, a                                        ; $70ef: $67
	ld   l, b                                        ; $70f0: $68
	ld   l, c                                        ; $70f1: $69
	ld   l, d                                        ; $70f2: $6a
	ld   l, e                                        ; $70f3: $6b
	ld   l, h                                        ; $70f4: $6c
	ld   l, l                                        ; $70f5: $6d

jr_084_70f6:
	ld   l, [hl]                                     ; $70f6: $6e
	ld   l, a                                        ; $70f7: $6f
	inc  l                                           ; $70f8: $2c
	dec  l                                           ; $70f9: $2d
	ld   l, $2f                                      ; $70fa: $2e $2f
	ld   [hl], b                                     ; $70fc: $70
	ld   [hl], c                                     ; $70fd: $71
	ld   [hl], d                                     ; $70fe: $72
	ld   [hl], e                                     ; $70ff: $73
	ld   [hl], h                                     ; $7100: $74
	ld   [hl], l                                     ; $7101: $75
	halt                                             ; $7102: $76
	ld   [hl], a                                     ; $7103: $77
	ld   a, b                                        ; $7104: $78
	ld   a, c                                        ; $7105: $79
	ld   a, d                                        ; $7106: $7a
	ld   a, e                                        ; $7107: $7b
	ld   a, h                                        ; $7108: $7c
	ld   a, l                                        ; $7109: $7d
	ld   a, [hl]                                     ; $710a: $7e
	ld   a, a                                        ; $710b: $7f
	inc  a                                           ; $710c: $3c
	dec  a                                           ; $710d: $3d
	ld   a, $3f                                      ; $710e: $3e $3f
	nop                                              ; $7110: $00
	ld   bc, $0302                                   ; $7111: $01 $02 $03
	inc  b                                           ; $7114: $04
	dec  b                                           ; $7115: $05
	ld   b, $07                                      ; $7116: $06 $07
	ld   [$0a09], sp                                 ; $7118: $08 $09 $0a
	dec  bc                                          ; $711b: $0b
	inc  c                                           ; $711c: $0c
	dec  c                                           ; $711d: $0d
	ld   c, $0f                                      ; $711e: $0e $0f
	ld   b, b                                        ; $7120: $40
	ld   b, c                                        ; $7121: $41
	ld   b, d                                        ; $7122: $42
	ld   b, e                                        ; $7123: $43
	db   $10                                         ; $7124: $10
	ld   de, $1312                                   ; $7125: $11 $12 $13
	inc  d                                           ; $7128: $14
	dec  d                                           ; $7129: $15
	ld   d, $17                                      ; $712a: $16 $17
	jr   jr_084_7147                                 ; $712c: $18 $19

	ld   a, [de]                                     ; $712e: $1a
	dec  de                                          ; $712f: $1b
	inc  e                                           ; $7130: $1c
	dec  e                                           ; $7131: $1d
	ld   e, $1f                                      ; $7132: $1e $1f
	ld   b, h                                        ; $7134: $44
	ld   b, l                                        ; $7135: $45
	ld   c, h                                        ; $7136: $4c
	ld   c, l                                        ; $7137: $4d
	inc  bc                                          ; $7138: $03
	inc  bc                                          ; $7139: $03
	inc  bc                                          ; $713a: $03
	inc  bc                                          ; $713b: $03
	inc  bc                                          ; $713c: $03
	inc  bc                                          ; $713d: $03
	inc  bc                                          ; $713e: $03
	inc  bc                                          ; $713f: $03
	inc  bc                                          ; $7140: $03
	inc  bc                                          ; $7141: $03
	inc  bc                                          ; $7142: $03
	inc  bc                                          ; $7143: $03
	inc  bc                                          ; $7144: $03
	dec  b                                           ; $7145: $05
	dec  b                                           ; $7146: $05

jr_084_7147:
	dec  b                                           ; $7147: $05
	inc  c                                           ; $7148: $0c
	inc  c                                           ; $7149: $0c
	inc  c                                           ; $714a: $0c
	dec  c                                           ; $714b: $0d
	dec  b                                           ; $714c: $05
	dec  b                                           ; $714d: $05
	dec  b                                           ; $714e: $05
	inc  bc                                          ; $714f: $03
	inc  bc                                          ; $7150: $03
	inc  bc                                          ; $7151: $03
	inc  bc                                          ; $7152: $03
	inc  bc                                          ; $7153: $03
	inc  bc                                          ; $7154: $03
	inc  b                                           ; $7155: $04
	inc  bc                                          ; $7156: $03
	inc  bc                                          ; $7157: $03
	inc  bc                                          ; $7158: $03
	inc  b                                           ; $7159: $04
	inc  b                                           ; $715a: $04
	inc  b                                           ; $715b: $04
	inc  c                                           ; $715c: $0c
	inc  c                                           ; $715d: $0c
	inc  c                                           ; $715e: $0c
	dec  c                                           ; $715f: $0d
	dec  b                                           ; $7160: $05
	dec  b                                           ; $7161: $05
	dec  b                                           ; $7162: $05
	dec  b                                           ; $7163: $05
	dec  b                                           ; $7164: $05
	dec  b                                           ; $7165: $05
	dec  b                                           ; $7166: $05
	dec  b                                           ; $7167: $05
	inc  b                                           ; $7168: $04
	inc  b                                           ; $7169: $04
	inc  b                                           ; $716a: $04
	inc  b                                           ; $716b: $04
	inc  b                                           ; $716c: $04
	inc  b                                           ; $716d: $04
	inc  b                                           ; $716e: $04
	inc  b                                           ; $716f: $04
	inc  c                                           ; $7170: $0c
	inc  c                                           ; $7171: $0c
	dec  c                                           ; $7172: $0d
	dec  c                                           ; $7173: $0d
	dec  b                                           ; $7174: $05
	dec  b                                           ; $7175: $05
	dec  b                                           ; $7176: $05
	dec  b                                           ; $7177: $05
	dec  b                                           ; $7178: $05
	dec  b                                           ; $7179: $05
	dec  b                                           ; $717a: $05
	dec  b                                           ; $717b: $05
	dec  b                                           ; $717c: $05
	inc  b                                           ; $717d: $04
	inc  bc                                          ; $717e: $03
	inc  bc                                          ; $717f: $03
	inc  bc                                          ; $7180: $03
	inc  bc                                          ; $7181: $03
	inc  b                                           ; $7182: $04
	inc  b                                           ; $7183: $04
	inc  c                                           ; $7184: $0c
	dec  c                                           ; $7185: $0d
	dec  c                                           ; $7186: $0d
	dec  c                                           ; $7187: $0d
	dec  b                                           ; $7188: $05
	dec  b                                           ; $7189: $05
	dec  b                                           ; $718a: $05
	dec  b                                           ; $718b: $05
	dec  b                                           ; $718c: $05
	dec  b                                           ; $718d: $05
	dec  b                                           ; $718e: $05
	dec  b                                           ; $718f: $05
	dec  b                                           ; $7190: $05
	dec  b                                           ; $7191: $05
	inc  b                                           ; $7192: $04
	inc  b                                           ; $7193: $04
	inc  c                                           ; $7194: $0c
	inc  c                                           ; $7195: $0c
	inc  b                                           ; $7196: $04
	inc  b                                           ; $7197: $04
	inc  c                                           ; $7198: $0c
	dec  c                                           ; $7199: $0d
	dec  c                                           ; $719a: $0d
	dec  c                                           ; $719b: $0d
	dec  b                                           ; $719c: $05
	dec  b                                           ; $719d: $05
	dec  b                                           ; $719e: $05
	dec  b                                           ; $719f: $05
	dec  b                                           ; $71a0: $05
	dec  b                                           ; $71a1: $05
	inc  bc                                          ; $71a2: $03
	dec  b                                           ; $71a3: $05
	dec  b                                           ; $71a4: $05
	dec  b                                           ; $71a5: $05
	inc  b                                           ; $71a6: $04
	inc  b                                           ; $71a7: $04
	inc  b                                           ; $71a8: $04
	inc  b                                           ; $71a9: $04
	inc  b                                           ; $71aa: $04
	inc  b                                           ; $71ab: $04
	inc  c                                           ; $71ac: $0c
	dec  c                                           ; $71ad: $0d
	dec  c                                           ; $71ae: $0d
	dec  c                                           ; $71af: $0d
	dec  b                                           ; $71b0: $05
	dec  b                                           ; $71b1: $05
	inc  bc                                          ; $71b2: $03
	inc  bc                                          ; $71b3: $03
	inc  bc                                          ; $71b4: $03
	inc  bc                                          ; $71b5: $03
	inc  bc                                          ; $71b6: $03
	inc  bc                                          ; $71b7: $03
	inc  bc                                          ; $71b8: $03
	inc  bc                                          ; $71b9: $03
	inc  bc                                          ; $71ba: $03
	inc  bc                                          ; $71bb: $03
	dec  b                                           ; $71bc: $05
	dec  b                                           ; $71bd: $05
	dec  b                                           ; $71be: $05
	dec  b                                           ; $71bf: $05
	dec  c                                           ; $71c0: $0d
	dec  c                                           ; $71c1: $0d
	dec  c                                           ; $71c2: $0d
	dec  c                                           ; $71c3: $0d
	inc  bc                                          ; $71c4: $03
	inc  bc                                          ; $71c5: $03
	inc  bc                                          ; $71c6: $03
	inc  bc                                          ; $71c7: $03
	inc  bc                                          ; $71c8: $03
	inc  bc                                          ; $71c9: $03
	inc  bc                                          ; $71ca: $03
	inc  bc                                          ; $71cb: $03
	inc  bc                                          ; $71cc: $03
	inc  bc                                          ; $71cd: $03
	inc  bc                                          ; $71ce: $03
	inc  bc                                          ; $71cf: $03
	inc  bc                                          ; $71d0: $03
	inc  bc                                          ; $71d1: $03
	inc  bc                                          ; $71d2: $03
	inc  bc                                          ; $71d3: $03
	dec  c                                           ; $71d4: $0d
	dec  c                                           ; $71d5: $0d
	dec  c                                           ; $71d6: $0d
	dec  c                                           ; $71d7: $0d
	dec  bc                                          ; $71d8: $0b
	dec  bc                                          ; $71d9: $0b
	dec  bc                                          ; $71da: $0b
	dec  bc                                          ; $71db: $0b
	dec  bc                                          ; $71dc: $0b
	dec  bc                                          ; $71dd: $0b
	dec  bc                                          ; $71de: $0b
	dec  bc                                          ; $71df: $0b
	dec  bc                                          ; $71e0: $0b
	dec  bc                                          ; $71e1: $0b
	dec  bc                                          ; $71e2: $0b
	dec  bc                                          ; $71e3: $0b
	dec  bc                                          ; $71e4: $0b
	dec  bc                                          ; $71e5: $0b
	dec  bc                                          ; $71e6: $0b
	dec  bc                                          ; $71e7: $0b
	dec  c                                           ; $71e8: $0d
	dec  c                                           ; $71e9: $0d
	dec  c                                           ; $71ea: $0d
	dec  c                                           ; $71eb: $0d
	dec  bc                                          ; $71ec: $0b
	dec  bc                                          ; $71ed: $0b
	dec  bc                                          ; $71ee: $0b
	dec  bc                                          ; $71ef: $0b
	dec  bc                                          ; $71f0: $0b
	dec  bc                                          ; $71f1: $0b
	dec  bc                                          ; $71f2: $0b
	dec  bc                                          ; $71f3: $0b
	dec  bc                                          ; $71f4: $0b
	dec  bc                                          ; $71f5: $0b
	dec  bc                                          ; $71f6: $0b
	dec  bc                                          ; $71f7: $0b
	dec  bc                                          ; $71f8: $0b
	dec  bc                                          ; $71f9: $0b
	dec  bc                                          ; $71fa: $0b
	dec  bc                                          ; $71fb: $0b
	dec  bc                                          ; $71fc: $0b
	dec  c                                           ; $71fd: $0d
	dec  b                                           ; $71fe: $05
	dec  b                                           ; $71ff: $05
	nop                                              ; $7200: $00
	ld   bc, $0302                                   ; $7201: $01 $02 $03
	inc  b                                           ; $7204: $04
	dec  b                                           ; $7205: $05
	ld   b, $07                                      ; $7206: $06 $07
	ld   [$0a09], sp                                 ; $7208: $08 $09 $0a
	dec  bc                                          ; $720b: $0b
	inc  c                                           ; $720c: $0c
	inc  c                                           ; $720d: $0c
	ld   c, $0f                                      ; $720e: $0e $0f
	jr   nz, jr_084_7233                             ; $7210: $20 $21

	ld   [hl+], a                                    ; $7212: $22
	inc  hl                                          ; $7213: $23
	db   $10                                         ; $7214: $10
	ld   de, $1312                                   ; $7215: $11 $12 $13
	inc  d                                           ; $7218: $14
	dec  d                                           ; $7219: $15
	ld   d, $17                                      ; $721a: $16 $17
	jr   @+$1b                                       ; $721c: $18 $19

	ld   a, [de]                                     ; $721e: $1a
	dec  de                                          ; $721f: $1b
	inc  e                                           ; $7220: $1c
	inc  e                                           ; $7221: $1c
	ld   e, $1f                                      ; $7222: $1e $1f
	jr   nc, jr_084_7257                             ; $7224: $30 $31

	ld   [hl-], a                                    ; $7226: $32
	inc  sp                                          ; $7227: $33
	jr   nz, @+$23                                   ; $7228: $20 $21

	ld   [hl+], a                                    ; $722a: $22
	inc  hl                                          ; $722b: $23
	inc  h                                           ; $722c: $24
	dec  h                                           ; $722d: $25
	ld   h, $27                                      ; $722e: $26 $27
	jr   z, jr_084_725b                              ; $7230: $28 $29

	ld   a, [hl+]                                    ; $7232: $2a

jr_084_7233:
	dec  hl                                          ; $7233: $2b
	inc  l                                           ; $7234: $2c
	dec  l                                           ; $7235: $2d
	ld   l, $2f                                      ; $7236: $2e $2f
	inc  h                                           ; $7238: $24
	dec  h                                           ; $7239: $25
	ld   h, $27                                      ; $723a: $26 $27
	jr   nc, jr_084_726f                             ; $723c: $30 $31

	ld   [hl-], a                                    ; $723e: $32
	inc  sp                                          ; $723f: $33
	inc  [hl]                                        ; $7240: $34
	dec  [hl]                                        ; $7241: $35
	ld   [hl], $37                                   ; $7242: $36 $37
	jr   c, jr_084_727f                              ; $7244: $38 $39

	ld   a, [hl-]                                    ; $7246: $3a
	dec  sp                                          ; $7247: $3b
	inc  a                                           ; $7248: $3c
	dec  a                                           ; $7249: $3d
	ld   a, $3f                                      ; $724a: $3e $3f
	inc  [hl]                                        ; $724c: $34
	dec  [hl]                                        ; $724d: $35
	ld   [hl], $37                                   ; $724e: $36 $37
	ld   b, b                                        ; $7250: $40
	ld   b, c                                        ; $7251: $41
	ld   b, d                                        ; $7252: $42
	ld   b, e                                        ; $7253: $43
	ld   b, h                                        ; $7254: $44
	ld   b, l                                        ; $7255: $45
	ld   b, [hl]                                     ; $7256: $46

jr_084_7257:
	ld   b, a                                        ; $7257: $47
	ld   c, b                                        ; $7258: $48
	ld   c, c                                        ; $7259: $49
	ld   c, d                                        ; $725a: $4a

jr_084_725b:
	ld   c, e                                        ; $725b: $4b
	ld   c, h                                        ; $725c: $4c
	ld   c, l                                        ; $725d: $4d
	ld   c, [hl]                                     ; $725e: $4e
	ld   c, a                                        ; $725f: $4f
	jr   z, @+$2b                                    ; $7260: $28 $29

	ld   a, [hl+]                                    ; $7262: $2a
	dec  hl                                          ; $7263: $2b
	ld   d, b                                        ; $7264: $50
	ld   d, c                                        ; $7265: $51
	ld   d, d                                        ; $7266: $52
	ld   d, e                                        ; $7267: $53
	ld   d, h                                        ; $7268: $54
	ld   d, l                                        ; $7269: $55
	ld   d, [hl]                                     ; $726a: $56
	ld   d, a                                        ; $726b: $57
	ld   e, b                                        ; $726c: $58
	ld   e, b                                        ; $726d: $58
	ld   e, d                                        ; $726e: $5a

jr_084_726f:
	ld   e, e                                        ; $726f: $5b
	ld   e, h                                        ; $7270: $5c
	ld   e, l                                        ; $7271: $5d
	ld   e, [hl]                                     ; $7272: $5e
	ld   e, a                                        ; $7273: $5f
	jr   c, @+$3b                                    ; $7274: $38 $39

	ld   a, [hl-]                                    ; $7276: $3a
	dec  sp                                          ; $7277: $3b
	ld   h, b                                        ; $7278: $60
	ld   h, c                                        ; $7279: $61
	ld   h, d                                        ; $727a: $62
	ld   h, e                                        ; $727b: $63
	ld   h, h                                        ; $727c: $64
	ld   h, l                                        ; $727d: $65
	ld   h, [hl]                                     ; $727e: $66

jr_084_727f:
	ld   h, a                                        ; $727f: $67
	ld   e, b                                        ; $7280: $58
	ld   e, b                                        ; $7281: $58
	ld   l, d                                        ; $7282: $6a
	ld   l, e                                        ; $7283: $6b
	ld   l, h                                        ; $7284: $6c
	ld   l, l                                        ; $7285: $6d
	ld   l, [hl]                                     ; $7286: $6e
	ld   l, a                                        ; $7287: $6f
	inc  l                                           ; $7288: $2c
	dec  l                                           ; $7289: $2d
	ld   l, $2f                                      ; $728a: $2e $2f
	ld   [hl], b                                     ; $728c: $70
	ld   [hl], c                                     ; $728d: $71
	ld   [hl], d                                     ; $728e: $72
	ld   [hl], e                                     ; $728f: $73
	ld   [hl], h                                     ; $7290: $74
	ld   [hl], l                                     ; $7291: $75
	halt                                             ; $7292: $76
	ld   [hl], a                                     ; $7293: $77
	ld   a, b                                        ; $7294: $78
	ld   a, c                                        ; $7295: $79
	ld   a, d                                        ; $7296: $7a
	ld   a, e                                        ; $7297: $7b
	ld   a, h                                        ; $7298: $7c
	ld   a, l                                        ; $7299: $7d
	ld   a, [hl]                                     ; $729a: $7e
	ld   a, a                                        ; $729b: $7f
	inc  a                                           ; $729c: $3c
	dec  a                                           ; $729d: $3d
	ld   a, $3f                                      ; $729e: $3e $3f
	nop                                              ; $72a0: $00
	ld   bc, $0302                                   ; $72a1: $01 $02 $03
	inc  b                                           ; $72a4: $04
	dec  b                                           ; $72a5: $05
	ld   b, $07                                      ; $72a6: $06 $07
	ld   [$0a09], sp                                 ; $72a8: $08 $09 $0a
	dec  bc                                          ; $72ab: $0b
	inc  c                                           ; $72ac: $0c
	dec  c                                           ; $72ad: $0d
	ld   c, $0f                                      ; $72ae: $0e $0f
	ld   b, b                                        ; $72b0: $40
	ld   b, c                                        ; $72b1: $41
	ld   b, d                                        ; $72b2: $42
	ld   l, c                                        ; $72b3: $69
	db   $10                                         ; $72b4: $10
	ld   de, $1312                                   ; $72b5: $11 $12 $13
	inc  d                                           ; $72b8: $14
	dec  d                                           ; $72b9: $15
	ld   d, $17                                      ; $72ba: $16 $17
	jr   jr_084_72d7                                 ; $72bc: $18 $19

	ld   a, [de]                                     ; $72be: $1a
	dec  de                                          ; $72bf: $1b
	inc  e                                           ; $72c0: $1c
	dec  e                                           ; $72c1: $1d
	ld   e, $1f                                      ; $72c2: $1e $1f
	ld   l, b                                        ; $72c4: $68
	ld   e, c                                        ; $72c5: $59
	dec  e                                           ; $72c6: $1d
	dec  c                                           ; $72c7: $0d
	dec  b                                           ; $72c8: $05
	dec  b                                           ; $72c9: $05
	dec  b                                           ; $72ca: $05
	dec  b                                           ; $72cb: $05
	inc  bc                                          ; $72cc: $03
	inc  bc                                          ; $72cd: $03
	inc  bc                                          ; $72ce: $03
	inc  bc                                          ; $72cf: $03
	inc  bc                                          ; $72d0: $03
	inc  bc                                          ; $72d1: $03
	inc  bc                                          ; $72d2: $03
	inc  bc                                          ; $72d3: $03
	inc  b                                           ; $72d4: $04
	inc  b                                           ; $72d5: $04
	inc  b                                           ; $72d6: $04

jr_084_72d7:
	inc  b                                           ; $72d7: $04
	inc  c                                           ; $72d8: $0c
	inc  c                                           ; $72d9: $0c
	dec  c                                           ; $72da: $0d
	dec  c                                           ; $72db: $0d
	dec  b                                           ; $72dc: $05
	dec  b                                           ; $72dd: $05
	dec  b                                           ; $72de: $05
	dec  b                                           ; $72df: $05
	inc  bc                                          ; $72e0: $03
	inc  bc                                          ; $72e1: $03
	inc  bc                                          ; $72e2: $03
	inc  bc                                          ; $72e3: $03
	inc  bc                                          ; $72e4: $03
	inc  bc                                          ; $72e5: $03
	inc  bc                                          ; $72e6: $03
	inc  bc                                          ; $72e7: $03
	inc  bc                                          ; $72e8: $03
	inc  bc                                          ; $72e9: $03
	inc  bc                                          ; $72ea: $03
	inc  b                                           ; $72eb: $04
	inc  c                                           ; $72ec: $0c
	inc  c                                           ; $72ed: $0c
	dec  c                                           ; $72ee: $0d
	dec  c                                           ; $72ef: $0d
	dec  b                                           ; $72f0: $05
	dec  b                                           ; $72f1: $05
	dec  b                                           ; $72f2: $05
	dec  b                                           ; $72f3: $05
	inc  bc                                          ; $72f4: $03
	inc  bc                                          ; $72f5: $03
	inc  bc                                          ; $72f6: $03
	inc  bc                                          ; $72f7: $03
	inc  bc                                          ; $72f8: $03
	inc  bc                                          ; $72f9: $03
	inc  bc                                          ; $72fa: $03
	inc  bc                                          ; $72fb: $03
	inc  bc                                          ; $72fc: $03
	inc  bc                                          ; $72fd: $03
	inc  bc                                          ; $72fe: $03
	inc  b                                           ; $72ff: $04
	inc  c                                           ; $7300: $0c
	inc  c                                           ; $7301: $0c
	dec  c                                           ; $7302: $0d
	dec  c                                           ; $7303: $0d
	dec  b                                           ; $7304: $05
	dec  b                                           ; $7305: $05
	dec  b                                           ; $7306: $05
	dec  b                                           ; $7307: $05
	inc  bc                                          ; $7308: $03
	inc  bc                                          ; $7309: $03
	inc  bc                                          ; $730a: $03
	inc  bc                                          ; $730b: $03
	inc  bc                                          ; $730c: $03
	inc  bc                                          ; $730d: $03
	inc  bc                                          ; $730e: $03
	inc  bc                                          ; $730f: $03
	inc  bc                                          ; $7310: $03
	inc  bc                                          ; $7311: $03
	inc  bc                                          ; $7312: $03
	inc  b                                           ; $7313: $04
	inc  c                                           ; $7314: $0c
	inc  c                                           ; $7315: $0c
	dec  c                                           ; $7316: $0d
	dec  c                                           ; $7317: $0d
	dec  b                                           ; $7318: $05
	dec  b                                           ; $7319: $05
	dec  b                                           ; $731a: $05
	dec  b                                           ; $731b: $05
	inc  bc                                          ; $731c: $03
	inc  bc                                          ; $731d: $03
	dec  b                                           ; $731e: $05
	inc  bc                                          ; $731f: $03
	inc  b                                           ; $7320: $04
	inc  b                                           ; $7321: $04
	inc  bc                                          ; $7322: $03
	inc  bc                                          ; $7323: $03
	inc  bc                                          ; $7324: $03
	inc  bc                                          ; $7325: $03
	inc  bc                                          ; $7326: $03
	inc  b                                           ; $7327: $04
	inc  c                                           ; $7328: $0c
	inc  c                                           ; $7329: $0c
	dec  c                                           ; $732a: $0d
	dec  c                                           ; $732b: $0d
	dec  b                                           ; $732c: $05
	dec  b                                           ; $732d: $05
	dec  b                                           ; $732e: $05
	dec  b                                           ; $732f: $05
	dec  b                                           ; $7330: $05
	inc  b                                           ; $7331: $04
	inc  b                                           ; $7332: $04
	inc  b                                           ; $7333: $04
	inc  b                                           ; $7334: $04
	inc  b                                           ; $7335: $04
	inc  b                                           ; $7336: $04
	inc  b                                           ; $7337: $04
	inc  bc                                          ; $7338: $03
	inc  bc                                          ; $7339: $03
	inc  bc                                          ; $733a: $03
	dec  b                                           ; $733b: $05
	inc  c                                           ; $733c: $0c
	inc  c                                           ; $733d: $0c
	dec  c                                           ; $733e: $0d
	dec  c                                           ; $733f: $0d
	dec  b                                           ; $7340: $05
	dec  b                                           ; $7341: $05
	dec  b                                           ; $7342: $05
	dec  b                                           ; $7343: $05
	dec  b                                           ; $7344: $05
	inc  b                                           ; $7345: $04
	inc  b                                           ; $7346: $04
	inc  b                                           ; $7347: $04
	inc  b                                           ; $7348: $04
	inc  b                                           ; $7349: $04
	inc  b                                           ; $734a: $04
	inc  b                                           ; $734b: $04
	inc  b                                           ; $734c: $04
	inc  b                                           ; $734d: $04
	inc  b                                           ; $734e: $04
	inc  b                                           ; $734f: $04
	inc  c                                           ; $7350: $0c
	inc  c                                           ; $7351: $0c
	dec  c                                           ; $7352: $0d
	dec  c                                           ; $7353: $0d
	dec  b                                           ; $7354: $05
	dec  b                                           ; $7355: $05
	dec  b                                           ; $7356: $05
	dec  b                                           ; $7357: $05
	dec  b                                           ; $7358: $05
	inc  b                                           ; $7359: $04
	inc  b                                           ; $735a: $04
	inc  b                                           ; $735b: $04
	inc  b                                           ; $735c: $04
	inc  b                                           ; $735d: $04
	inc  b                                           ; $735e: $04
	inc  b                                           ; $735f: $04
	inc  b                                           ; $7360: $04
	inc  b                                           ; $7361: $04
	inc  b                                           ; $7362: $04
	inc  b                                           ; $7363: $04
	inc  c                                           ; $7364: $0c
	inc  c                                           ; $7365: $0c
	dec  bc                                          ; $7366: $0b
	dec  bc                                          ; $7367: $0b
	dec  c                                           ; $7368: $0d
	dec  c                                           ; $7369: $0d
	dec  c                                           ; $736a: $0d
	dec  c                                           ; $736b: $0d
	dec  c                                           ; $736c: $0d
	inc  c                                           ; $736d: $0c
	inc  c                                           ; $736e: $0c
	inc  c                                           ; $736f: $0c
	inc  c                                           ; $7370: $0c
	inc  c                                           ; $7371: $0c
	inc  c                                           ; $7372: $0c
	inc  c                                           ; $7373: $0c
	inc  c                                           ; $7374: $0c
	inc  c                                           ; $7375: $0c
	inc  c                                           ; $7376: $0c
	inc  c                                           ; $7377: $0c
	inc  c                                           ; $7378: $0c
	dec  bc                                          ; $7379: $0b
	dec  bc                                          ; $737a: $0b
	inc  b                                           ; $737b: $04
	dec  c                                           ; $737c: $0d
	dec  c                                           ; $737d: $0d
	dec  c                                           ; $737e: $0d
	inc  c                                           ; $737f: $0c
	inc  c                                           ; $7380: $0c
	inc  c                                           ; $7381: $0c
	inc  c                                           ; $7382: $0c
	inc  c                                           ; $7383: $0c
	inc  c                                           ; $7384: $0c
	inc  c                                           ; $7385: $0c
	inc  c                                           ; $7386: $0c
	inc  c                                           ; $7387: $0c
	inc  c                                           ; $7388: $0c
	inc  c                                           ; $7389: $0c
	inc  c                                           ; $738a: $0c
	inc  c                                           ; $738b: $0c
	inc  b                                           ; $738c: $04
	inc  b                                           ; $738d: $04
	inc  b                                           ; $738e: $04
	inc  b                                           ; $738f: $04
	nop                                              ; $7390: $00
	ld   bc, $0302                                   ; $7391: $01 $02 $03
	inc  b                                           ; $7394: $04
	ld   bc, $0701                                   ; $7395: $01 $01 $07
	ld   [$0a09], sp                                 ; $7398: $08 $09 $0a
	dec  bc                                          ; $739b: $0b
	inc  c                                           ; $739c: $0c
	dec  c                                           ; $739d: $0d
	ld   c, $0f                                      ; $739e: $0e $0f
	jr   nz, jr_084_73c3                             ; $73a0: $20 $21

	ld   bc, $1000                                   ; $73a2: $01 $00 $10
	ld   de, $1312                                   ; $73a5: $11 $12 $13
	inc  d                                           ; $73a8: $14
	dec  d                                           ; $73a9: $15
	ld   d, $17                                      ; $73aa: $16 $17
	jr   jr_084_73c7                                 ; $73ac: $18 $19

	ld   a, [de]                                     ; $73ae: $1a
	dec  de                                          ; $73af: $1b
	inc  e                                           ; $73b0: $1c
	dec  e                                           ; $73b1: $1d
	ld   e, $1f                                      ; $73b2: $1e $1f
	jr   nc, jr_084_73e7                             ; $73b4: $30 $31

	ld   [hl-], a                                    ; $73b6: $32
	inc  sp                                          ; $73b7: $33
	jr   nz, @+$23                                   ; $73b8: $20 $21

	ld   [hl+], a                                    ; $73ba: $22
	inc  hl                                          ; $73bb: $23
	inc  h                                           ; $73bc: $24
	dec  h                                           ; $73bd: $25
	ld   h, $27                                      ; $73be: $26 $27
	jr   z, jr_084_73eb                              ; $73c0: $28 $29

	ld   a, [hl+]                                    ; $73c2: $2a

jr_084_73c3:
	dec  hl                                          ; $73c3: $2b
	inc  l                                           ; $73c4: $2c
	dec  l                                           ; $73c5: $2d
	scf                                              ; $73c6: $37

jr_084_73c7:
	scf                                              ; $73c7: $37
	scf                                              ; $73c8: $37
	dec  h                                           ; $73c9: $25
	ld   h, $27                                      ; $73ca: $26 $27
	jr   nc, jr_084_73ff                             ; $73cc: $30 $31

	ld   [hl-], a                                    ; $73ce: $32
	inc  sp                                          ; $73cf: $33
	inc  [hl]                                        ; $73d0: $34
	dec  [hl]                                        ; $73d1: $35
	ld   [hl], $37                                   ; $73d2: $36 $37
	jr   c, jr_084_740f                              ; $73d4: $38 $39

	ld   a, [hl-]                                    ; $73d6: $3a
	dec  sp                                          ; $73d7: $3b
	inc  a                                           ; $73d8: $3c
	dec  a                                           ; $73d9: $3d
	ld   a, $3f                                      ; $73da: $3e $3f
	inc  [hl]                                        ; $73dc: $34
	dec  [hl]                                        ; $73dd: $35
	ld   [hl], $37                                   ; $73de: $36 $37
	ld   b, b                                        ; $73e0: $40
	ld   b, c                                        ; $73e1: $41
	ld   b, d                                        ; $73e2: $42
	ld   b, e                                        ; $73e3: $43
	ld   b, h                                        ; $73e4: $44
	ld   b, l                                        ; $73e5: $45
	ld   b, [hl]                                     ; $73e6: $46

jr_084_73e7:
	ld   b, a                                        ; $73e7: $47
	ld   c, b                                        ; $73e8: $48
	ld   c, c                                        ; $73e9: $49
	ld   c, d                                        ; $73ea: $4a

jr_084_73eb:
	ld   c, e                                        ; $73eb: $4b
	ld   c, h                                        ; $73ec: $4c
	ld   c, l                                        ; $73ed: $4d
	ld   c, [hl]                                     ; $73ee: $4e
	ld   c, a                                        ; $73ef: $4f
	jr   z, @+$2b                                    ; $73f0: $28 $29

	ld   a, [hl+]                                    ; $73f2: $2a
	scf                                              ; $73f3: $37
	ld   d, b                                        ; $73f4: $50
	ld   d, c                                        ; $73f5: $51
	ld   d, d                                        ; $73f6: $52
	ld   d, e                                        ; $73f7: $53
	ld   d, h                                        ; $73f8: $54
	ld   d, l                                        ; $73f9: $55
	ld   d, [hl]                                     ; $73fa: $56
	ld   d, a                                        ; $73fb: $57
	ld   e, b                                        ; $73fc: $58
	ld   e, c                                        ; $73fd: $59
	ld   e, d                                        ; $73fe: $5a

jr_084_73ff:
	ld   e, e                                        ; $73ff: $5b
	ld   e, h                                        ; $7400: $5c
	ld   e, l                                        ; $7401: $5d
	ld   e, [hl]                                     ; $7402: $5e
	ld   e, a                                        ; $7403: $5f
	jr   c, @+$3b                                    ; $7404: $38 $39

	ld   a, [hl-]                                    ; $7406: $3a
	dec  sp                                          ; $7407: $3b
	ld   h, b                                        ; $7408: $60
	ld   h, c                                        ; $7409: $61
	ld   h, d                                        ; $740a: $62
	ld   h, e                                        ; $740b: $63
	ld   h, h                                        ; $740c: $64
	ld   h, l                                        ; $740d: $65
	ld   h, [hl]                                     ; $740e: $66

jr_084_740f:
	ld   h, a                                        ; $740f: $67
	ld   l, b                                        ; $7410: $68
	ld   l, c                                        ; $7411: $69
	ld   l, d                                        ; $7412: $6a
	ld   l, e                                        ; $7413: $6b
	ld   l, h                                        ; $7414: $6c
	ld   l, l                                        ; $7415: $6d
	ld   l, [hl]                                     ; $7416: $6e
	ld   l, a                                        ; $7417: $6f
	inc  l                                           ; $7418: $2c
	dec  l                                           ; $7419: $2d
	ld   l, $2f                                      ; $741a: $2e $2f
	ld   [hl], b                                     ; $741c: $70
	ld   [hl], c                                     ; $741d: $71
	ld   [hl], d                                     ; $741e: $72
	ld   [hl], e                                     ; $741f: $73
	ld   [hl], h                                     ; $7420: $74
	ld   [hl], l                                     ; $7421: $75
	halt                                             ; $7422: $76
	ld   [hl], a                                     ; $7423: $77
	ld   a, b                                        ; $7424: $78
	ld   a, c                                        ; $7425: $79
	ld   a, d                                        ; $7426: $7a
	ld   a, e                                        ; $7427: $7b
	ld   a, h                                        ; $7428: $7c
	ld   a, l                                        ; $7429: $7d
	ld   a, [hl]                                     ; $742a: $7e
	ld   a, a                                        ; $742b: $7f
	inc  a                                           ; $742c: $3c
	dec  a                                           ; $742d: $3d
	ld   a, $3f                                      ; $742e: $3e $3f
	nop                                              ; $7430: $00
	ld   bc, $0302                                   ; $7431: $01 $02 $03
	inc  b                                           ; $7434: $04
	dec  b                                           ; $7435: $05
	ld   b, $07                                      ; $7436: $06 $07
	ld   [$0a09], sp                                 ; $7438: $08 $09 $0a
	dec  bc                                          ; $743b: $0b
	inc  c                                           ; $743c: $0c
	dec  c                                           ; $743d: $0d
	ld   c, $0f                                      ; $743e: $0e $0f
	dec  hl                                          ; $7440: $2b
	ld   [hl+], a                                    ; $7441: $22
	inc  hl                                          ; $7442: $23
	inc  h                                           ; $7443: $24
	db   $10                                         ; $7444: $10
	ld   de, $1312                                   ; $7445: $11 $12 $13
	inc  d                                           ; $7448: $14
	dec  d                                           ; $7449: $15
	ld   d, $17                                      ; $744a: $16 $17
	jr   jr_084_7467                                 ; $744c: $18 $19

	ld   a, [de]                                     ; $744e: $1a
	dec  de                                          ; $744f: $1b
	inc  e                                           ; $7450: $1c
	dec  e                                           ; $7451: $1d
	ld   e, $1f                                      ; $7452: $1e $1f
	ld   l, $2f                                      ; $7454: $2e $2f
	dec  b                                           ; $7456: $05
	ld   b, $05                                      ; $7457: $06 $05
	dec  b                                           ; $7459: $05
	dec  b                                           ; $745a: $05
	dec  b                                           ; $745b: $05
	dec  b                                           ; $745c: $05
	dec  b                                           ; $745d: $05
	dec  b                                           ; $745e: $05
	dec  b                                           ; $745f: $05
	dec  b                                           ; $7460: $05
	dec  b                                           ; $7461: $05
	dec  b                                           ; $7462: $05
	dec  b                                           ; $7463: $05
	dec  b                                           ; $7464: $05
	dec  b                                           ; $7465: $05
	dec  b                                           ; $7466: $05

jr_084_7467:
	dec  b                                           ; $7467: $05
	dec  c                                           ; $7468: $0d
	dec  c                                           ; $7469: $0d
	dec  b                                           ; $746a: $05
	dec  h                                           ; $746b: $25
	dec  b                                           ; $746c: $05
	dec  b                                           ; $746d: $05
	dec  b                                           ; $746e: $05
	dec  b                                           ; $746f: $05
	dec  b                                           ; $7470: $05
	dec  b                                           ; $7471: $05
	dec  b                                           ; $7472: $05
	dec  b                                           ; $7473: $05
	dec  b                                           ; $7474: $05
	dec  b                                           ; $7475: $05
	dec  b                                           ; $7476: $05
	dec  b                                           ; $7477: $05
	dec  b                                           ; $7478: $05
	dec  b                                           ; $7479: $05
	dec  b                                           ; $747a: $05
	dec  b                                           ; $747b: $05
	dec  c                                           ; $747c: $0d
	dec  c                                           ; $747d: $0d
	dec  c                                           ; $747e: $0d
	dec  c                                           ; $747f: $0d
	dec  b                                           ; $7480: $05
	dec  b                                           ; $7481: $05
	dec  b                                           ; $7482: $05
	dec  b                                           ; $7483: $05
	dec  b                                           ; $7484: $05
	dec  b                                           ; $7485: $05
	dec  b                                           ; $7486: $05
	dec  b                                           ; $7487: $05
	dec  b                                           ; $7488: $05
	inc  b                                           ; $7489: $04
	dec  b                                           ; $748a: $05
	inc  b                                           ; $748b: $04
	inc  b                                           ; $748c: $04
	inc  b                                           ; $748d: $04
	inc  bc                                          ; $748e: $03
	inc  bc                                          ; $748f: $03
	inc  bc                                          ; $7490: $03
	inc  c                                           ; $7491: $0c
	inc  c                                           ; $7492: $0c
	inc  c                                           ; $7493: $0c
	dec  b                                           ; $7494: $05
	dec  b                                           ; $7495: $05
	dec  b                                           ; $7496: $05
	dec  b                                           ; $7497: $05
	dec  b                                           ; $7498: $05
	dec  b                                           ; $7499: $05
	dec  b                                           ; $749a: $05
	inc  bc                                          ; $749b: $03
	inc  bc                                          ; $749c: $03
	inc  bc                                          ; $749d: $03
	inc  bc                                          ; $749e: $03
	inc  bc                                          ; $749f: $03
	inc  bc                                          ; $74a0: $03
	inc  bc                                          ; $74a1: $03
	inc  b                                           ; $74a2: $04
	inc  b                                           ; $74a3: $04
	inc  c                                           ; $74a4: $0c
	inc  c                                           ; $74a5: $0c
	inc  c                                           ; $74a6: $0c
	inc  c                                           ; $74a7: $0c
	dec  b                                           ; $74a8: $05
	dec  b                                           ; $74a9: $05
	dec  b                                           ; $74aa: $05
	dec  b                                           ; $74ab: $05
	dec  b                                           ; $74ac: $05
	dec  b                                           ; $74ad: $05
	inc  bc                                          ; $74ae: $03
	inc  bc                                          ; $74af: $03
	inc  bc                                          ; $74b0: $03
	inc  bc                                          ; $74b1: $03
	inc  bc                                          ; $74b2: $03
	inc  bc                                          ; $74b3: $03
	inc  bc                                          ; $74b4: $03
	inc  bc                                          ; $74b5: $03
	inc  bc                                          ; $74b6: $03
	inc  bc                                          ; $74b7: $03
	inc  c                                           ; $74b8: $0c
	inc  c                                           ; $74b9: $0c
	inc  c                                           ; $74ba: $0c
	inc  c                                           ; $74bb: $0c
	inc  b                                           ; $74bc: $04
	dec  b                                           ; $74bd: $05
	dec  b                                           ; $74be: $05
	dec  b                                           ; $74bf: $05
	dec  b                                           ; $74c0: $05
	dec  b                                           ; $74c1: $05
	inc  bc                                          ; $74c2: $03
	inc  bc                                          ; $74c3: $03
	inc  bc                                          ; $74c4: $03
	inc  bc                                          ; $74c5: $03
	inc  bc                                          ; $74c6: $03
	inc  bc                                          ; $74c7: $03
	inc  bc                                          ; $74c8: $03
	inc  bc                                          ; $74c9: $03
	inc  bc                                          ; $74ca: $03
	inc  bc                                          ; $74cb: $03
	dec  bc                                          ; $74cc: $0b
	dec  bc                                          ; $74cd: $0b
	dec  bc                                          ; $74ce: $0b
	inc  c                                           ; $74cf: $0c
	inc  b                                           ; $74d0: $04
	inc  b                                           ; $74d1: $04
	dec  b                                           ; $74d2: $05
	dec  b                                           ; $74d3: $05
	dec  b                                           ; $74d4: $05
	dec  b                                           ; $74d5: $05
	inc  b                                           ; $74d6: $04
	inc  b                                           ; $74d7: $04
	inc  b                                           ; $74d8: $04
	inc  b                                           ; $74d9: $04
	inc  b                                           ; $74da: $04
	inc  b                                           ; $74db: $04
	inc  b                                           ; $74dc: $04
	inc  b                                           ; $74dd: $04
	inc  b                                           ; $74de: $04
	inc  b                                           ; $74df: $04
	inc  c                                           ; $74e0: $0c
	inc  c                                           ; $74e1: $0c
	inc  c                                           ; $74e2: $0c
	inc  c                                           ; $74e3: $0c
	inc  b                                           ; $74e4: $04
	inc  b                                           ; $74e5: $04
	dec  b                                           ; $74e6: $05
	dec  b                                           ; $74e7: $05
	inc  b                                           ; $74e8: $04
	inc  b                                           ; $74e9: $04
	inc  b                                           ; $74ea: $04
	inc  b                                           ; $74eb: $04
	inc  b                                           ; $74ec: $04
	inc  b                                           ; $74ed: $04
	inc  b                                           ; $74ee: $04
	inc  b                                           ; $74ef: $04
	inc  b                                           ; $74f0: $04
	inc  b                                           ; $74f1: $04
	inc  b                                           ; $74f2: $04
	inc  b                                           ; $74f3: $04
	inc  c                                           ; $74f4: $0c
	inc  c                                           ; $74f5: $0c
	inc  c                                           ; $74f6: $0c
	inc  c                                           ; $74f7: $0c
	inc  c                                           ; $74f8: $0c
	inc  c                                           ; $74f9: $0c
	inc  c                                           ; $74fa: $0c
	inc  c                                           ; $74fb: $0c
	inc  c                                           ; $74fc: $0c
	inc  c                                           ; $74fd: $0c
	inc  c                                           ; $74fe: $0c
	inc  c                                           ; $74ff: $0c
	inc  c                                           ; $7500: $0c
	dec  bc                                          ; $7501: $0b
	dec  bc                                          ; $7502: $0b
	dec  bc                                          ; $7503: $0b
	dec  bc                                          ; $7504: $0b
	inc  c                                           ; $7505: $0c
	inc  c                                           ; $7506: $0c
	inc  c                                           ; $7507: $0c
	inc  c                                           ; $7508: $0c
	inc  c                                           ; $7509: $0c
	inc  c                                           ; $750a: $0c
	inc  c                                           ; $750b: $0c
	inc  c                                           ; $750c: $0c
	inc  c                                           ; $750d: $0c
	dec  bc                                          ; $750e: $0b
	dec  bc                                          ; $750f: $0b
	dec  bc                                          ; $7510: $0b
	dec  bc                                          ; $7511: $0b
	dec  bc                                          ; $7512: $0b
	dec  bc                                          ; $7513: $0b
	dec  bc                                          ; $7514: $0b
	dec  bc                                          ; $7515: $0b
	dec  bc                                          ; $7516: $0b
	dec  bc                                          ; $7517: $0b
	dec  bc                                          ; $7518: $0b
	inc  c                                           ; $7519: $0c
	inc  c                                           ; $751a: $0c
	inc  c                                           ; $751b: $0c
	inc  b                                           ; $751c: $04
	inc  b                                           ; $751d: $04
	inc  b                                           ; $751e: $04
	inc  b                                           ; $751f: $04
	nop                                              ; $7520: $00
	ld   bc, $0302                                   ; $7521: $01 $02 $03
	inc  b                                           ; $7524: $04
	dec  b                                           ; $7525: $05
	ld   b, $07                                      ; $7526: $06 $07
	ld   [$0a09], sp                                 ; $7528: $08 $09 $0a
	dec  bc                                          ; $752b: $0b
	inc  c                                           ; $752c: $0c
	dec  c                                           ; $752d: $0d
	ld   c, $0f                                      ; $752e: $0e $0f
	jr   nz, jr_084_7553                             ; $7530: $20 $21

	ld   [hl+], a                                    ; $7532: $22
	inc  hl                                          ; $7533: $23
	db   $10                                         ; $7534: $10
	ld   de, $1312                                   ; $7535: $11 $12 $13
	inc  d                                           ; $7538: $14
	dec  d                                           ; $7539: $15
	ld   d, $17                                      ; $753a: $16 $17
	jr   @+$1b                                       ; $753c: $18 $19

	ld   a, [de]                                     ; $753e: $1a
	dec  de                                          ; $753f: $1b
	inc  e                                           ; $7540: $1c
	dec  e                                           ; $7541: $1d
	ld   e, $1f                                      ; $7542: $1e $1f
	jr   nc, jr_084_7577                             ; $7544: $30 $31

	ld   [hl-], a                                    ; $7546: $32
	inc  sp                                          ; $7547: $33
	jr   nz, @+$23                                   ; $7548: $20 $21

	ld   [hl+], a                                    ; $754a: $22
	inc  hl                                          ; $754b: $23
	inc  h                                           ; $754c: $24
	dec  h                                           ; $754d: $25
	ld   h, $27                                      ; $754e: $26 $27
	jr   z, jr_084_757b                              ; $7550: $28 $29

	ld   a, [hl+]                                    ; $7552: $2a

jr_084_7553:
	dec  hl                                          ; $7553: $2b
	inc  l                                           ; $7554: $2c
	dec  l                                           ; $7555: $2d
	ld   l, $2f                                      ; $7556: $2e $2f
	inc  h                                           ; $7558: $24
	dec  h                                           ; $7559: $25
	ld   h, $27                                      ; $755a: $26 $27
	jr   nc, jr_084_758f                             ; $755c: $30 $31

	ld   [hl-], a                                    ; $755e: $32
	inc  sp                                          ; $755f: $33
	inc  [hl]                                        ; $7560: $34
	dec  [hl]                                        ; $7561: $35
	ld   [hl], $37                                   ; $7562: $36 $37
	jr   c, jr_084_759f                              ; $7564: $38 $39

	ld   a, [hl-]                                    ; $7566: $3a
	dec  sp                                          ; $7567: $3b
	inc  a                                           ; $7568: $3c
	dec  a                                           ; $7569: $3d
	ld   a, $3f                                      ; $756a: $3e $3f
	inc  [hl]                                        ; $756c: $34
	dec  [hl]                                        ; $756d: $35
	ld   [hl], $37                                   ; $756e: $36 $37
	ld   b, b                                        ; $7570: $40
	ld   b, c                                        ; $7571: $41
	ld   b, d                                        ; $7572: $42
	ld   b, e                                        ; $7573: $43
	ld   b, h                                        ; $7574: $44
	ld   b, l                                        ; $7575: $45
	ld   b, [hl]                                     ; $7576: $46

jr_084_7577:
	ld   b, a                                        ; $7577: $47
	ld   c, b                                        ; $7578: $48
	ld   c, c                                        ; $7579: $49
	ld   c, d                                        ; $757a: $4a

jr_084_757b:
	ld   c, e                                        ; $757b: $4b
	ld   c, h                                        ; $757c: $4c
	ld   c, l                                        ; $757d: $4d
	ld   c, [hl]                                     ; $757e: $4e
	ld   c, a                                        ; $757f: $4f
	jr   z, @+$2b                                    ; $7580: $28 $29

	ld   a, [hl+]                                    ; $7582: $2a
	dec  hl                                          ; $7583: $2b
	ld   d, b                                        ; $7584: $50
	ld   d, c                                        ; $7585: $51
	ld   d, d                                        ; $7586: $52
	ld   d, e                                        ; $7587: $53
	ld   d, h                                        ; $7588: $54
	ld   d, l                                        ; $7589: $55
	ld   d, [hl]                                     ; $758a: $56
	ld   d, a                                        ; $758b: $57
	ld   e, b                                        ; $758c: $58
	ld   e, c                                        ; $758d: $59
	ld   e, d                                        ; $758e: $5a

jr_084_758f:
	ld   e, e                                        ; $758f: $5b
	ld   e, h                                        ; $7590: $5c
	ld   e, l                                        ; $7591: $5d
	ld   e, [hl]                                     ; $7592: $5e
	ld   e, a                                        ; $7593: $5f
	jr   c, @+$3b                                    ; $7594: $38 $39

	ld   a, [hl-]                                    ; $7596: $3a
	dec  sp                                          ; $7597: $3b
	ld   h, b                                        ; $7598: $60
	ld   h, c                                        ; $7599: $61
	ld   h, d                                        ; $759a: $62
	ld   h, e                                        ; $759b: $63
	ld   h, h                                        ; $759c: $64
	ld   h, l                                        ; $759d: $65
	ld   h, [hl]                                     ; $759e: $66

jr_084_759f:
	ld   h, a                                        ; $759f: $67
	ld   l, b                                        ; $75a0: $68
	ld   l, c                                        ; $75a1: $69
	ld   l, d                                        ; $75a2: $6a
	ld   l, e                                        ; $75a3: $6b
	ld   l, h                                        ; $75a4: $6c
	ld   l, l                                        ; $75a5: $6d
	ld   l, [hl]                                     ; $75a6: $6e
	ld   l, a                                        ; $75a7: $6f
	inc  l                                           ; $75a8: $2c
	dec  l                                           ; $75a9: $2d
	ld   l, $2f                                      ; $75aa: $2e $2f
	ld   [hl], b                                     ; $75ac: $70
	ld   [hl], c                                     ; $75ad: $71
	ld   [hl], d                                     ; $75ae: $72
	ld   [hl], e                                     ; $75af: $73
	ld   [hl], h                                     ; $75b0: $74
	ld   [hl], l                                     ; $75b1: $75
	halt                                             ; $75b2: $76
	ld   [hl], a                                     ; $75b3: $77
	ld   a, b                                        ; $75b4: $78
	ld   a, c                                        ; $75b5: $79
	ld   a, d                                        ; $75b6: $7a
	ld   a, e                                        ; $75b7: $7b
	ld   a, h                                        ; $75b8: $7c
	ld   a, l                                        ; $75b9: $7d
	ld   a, [hl]                                     ; $75ba: $7e
	ld   a, a                                        ; $75bb: $7f
	inc  a                                           ; $75bc: $3c
	dec  a                                           ; $75bd: $3d
	ld   a, $3f                                      ; $75be: $3e $3f
	nop                                              ; $75c0: $00
	ld   bc, $0302                                   ; $75c1: $01 $02 $03
	inc  b                                           ; $75c4: $04
	dec  b                                           ; $75c5: $05
	ld   b, $07                                      ; $75c6: $06 $07
	ld   [$0a09], sp                                 ; $75c8: $08 $09 $0a
	dec  bc                                          ; $75cb: $0b
	inc  c                                           ; $75cc: $0c
	dec  c                                           ; $75cd: $0d
	ld   c, $0f                                      ; $75ce: $0e $0f
	ld   b, b                                        ; $75d0: $40
	ld   b, c                                        ; $75d1: $41
	ld   b, d                                        ; $75d2: $42
	ld   b, e                                        ; $75d3: $43
	db   $10                                         ; $75d4: $10
	ld   de, $1312                                   ; $75d5: $11 $12 $13
	inc  d                                           ; $75d8: $14
	dec  d                                           ; $75d9: $15
	ld   d, $17                                      ; $75da: $16 $17
	jr   jr_084_75f7                                 ; $75dc: $18 $19

	ld   a, [de]                                     ; $75de: $1a
	dec  de                                          ; $75df: $1b
	inc  e                                           ; $75e0: $1c
	dec  e                                           ; $75e1: $1d
	ld   e, $1f                                      ; $75e2: $1e $1f
	ld   b, h                                        ; $75e4: $44
	ld   b, l                                        ; $75e5: $45
	ld   b, [hl]                                     ; $75e6: $46
	ld   b, a                                        ; $75e7: $47
	inc  bc                                          ; $75e8: $03
	inc  bc                                          ; $75e9: $03
	inc  bc                                          ; $75ea: $03
	inc  bc                                          ; $75eb: $03
	inc  bc                                          ; $75ec: $03
	inc  bc                                          ; $75ed: $03
	inc  bc                                          ; $75ee: $03
	inc  bc                                          ; $75ef: $03
	inc  bc                                          ; $75f0: $03
	inc  bc                                          ; $75f1: $03
	inc  bc                                          ; $75f2: $03
	inc  bc                                          ; $75f3: $03
	inc  bc                                          ; $75f4: $03
	inc  bc                                          ; $75f5: $03
	inc  bc                                          ; $75f6: $03

jr_084_75f7:
	inc  bc                                          ; $75f7: $03
	dec  bc                                          ; $75f8: $0b
	dec  bc                                          ; $75f9: $0b
	dec  bc                                          ; $75fa: $0b
	dec  bc                                          ; $75fb: $0b
	inc  bc                                          ; $75fc: $03
	inc  bc                                          ; $75fd: $03
	inc  bc                                          ; $75fe: $03
	inc  bc                                          ; $75ff: $03
	inc  b                                           ; $7600: $04
	inc  bc                                          ; $7601: $03
	inc  bc                                          ; $7602: $03
	inc  bc                                          ; $7603: $03
	inc  bc                                          ; $7604: $03
	inc  bc                                          ; $7605: $03
	inc  bc                                          ; $7606: $03
	inc  bc                                          ; $7607: $03
	inc  bc                                          ; $7608: $03
	inc  bc                                          ; $7609: $03
	inc  b                                           ; $760a: $04
	inc  b                                           ; $760b: $04
	dec  bc                                          ; $760c: $0b
	dec  bc                                          ; $760d: $0b
	dec  bc                                          ; $760e: $0b
	dec  bc                                          ; $760f: $0b
	inc  bc                                          ; $7610: $03
	inc  b                                           ; $7611: $04
	inc  bc                                          ; $7612: $03
	inc  b                                           ; $7613: $04
	inc  bc                                          ; $7614: $03
	inc  bc                                          ; $7615: $03
	inc  bc                                          ; $7616: $03
	inc  bc                                          ; $7617: $03
	inc  bc                                          ; $7618: $03
	inc  bc                                          ; $7619: $03
	inc  bc                                          ; $761a: $03
	inc  bc                                          ; $761b: $03
	inc  bc                                          ; $761c: $03
	inc  bc                                          ; $761d: $03
	inc  bc                                          ; $761e: $03
	inc  b                                           ; $761f: $04
	dec  bc                                          ; $7620: $0b
	dec  bc                                          ; $7621: $0b
	dec  bc                                          ; $7622: $0b
	dec  bc                                          ; $7623: $0b
	inc  bc                                          ; $7624: $03
	inc  b                                           ; $7625: $04
	inc  bc                                          ; $7626: $03
	inc  b                                           ; $7627: $04
	inc  bc                                          ; $7628: $03
	inc  bc                                          ; $7629: $03
	inc  bc                                          ; $762a: $03
	inc  bc                                          ; $762b: $03
	inc  b                                           ; $762c: $04
	inc  bc                                          ; $762d: $03
	inc  bc                                          ; $762e: $03
	inc  bc                                          ; $762f: $03
	inc  bc                                          ; $7630: $03
	inc  bc                                          ; $7631: $03
	inc  b                                           ; $7632: $04
	inc  b                                           ; $7633: $04
	dec  bc                                          ; $7634: $0b
	dec  bc                                          ; $7635: $0b
	dec  bc                                          ; $7636: $0b
	dec  bc                                          ; $7637: $0b
	inc  bc                                          ; $7638: $03
	inc  bc                                          ; $7639: $03
	inc  b                                           ; $763a: $04
	inc  bc                                          ; $763b: $03
	inc  b                                           ; $763c: $04
	inc  b                                           ; $763d: $04
	inc  bc                                          ; $763e: $03
	inc  b                                           ; $763f: $04
	inc  b                                           ; $7640: $04
	inc  bc                                          ; $7641: $03
	inc  bc                                          ; $7642: $03
	inc  bc                                          ; $7643: $03
	inc  bc                                          ; $7644: $03
	inc  b                                           ; $7645: $04
	inc  bc                                          ; $7646: $03
	inc  b                                           ; $7647: $04
	inc  c                                           ; $7648: $0c
	dec  bc                                          ; $7649: $0b
	dec  bc                                          ; $764a: $0b
	dec  bc                                          ; $764b: $0b
	dec  b                                           ; $764c: $05
	inc  bc                                          ; $764d: $03
	inc  b                                           ; $764e: $04
	inc  bc                                          ; $764f: $03
	inc  bc                                          ; $7650: $03
	inc  bc                                          ; $7651: $03
	inc  bc                                          ; $7652: $03
	inc  b                                           ; $7653: $04
	inc  bc                                          ; $7654: $03
	inc  bc                                          ; $7655: $03
	inc  bc                                          ; $7656: $03
	inc  bc                                          ; $7657: $03
	inc  bc                                          ; $7658: $03
	inc  bc                                          ; $7659: $03
	inc  bc                                          ; $765a: $03
	inc  b                                           ; $765b: $04
	dec  bc                                          ; $765c: $0b
	dec  bc                                          ; $765d: $0b
	dec  bc                                          ; $765e: $0b
	dec  bc                                          ; $765f: $0b
	inc  bc                                          ; $7660: $03
	inc  bc                                          ; $7661: $03
	inc  b                                           ; $7662: $04
	inc  bc                                          ; $7663: $03
	inc  bc                                          ; $7664: $03
	inc  bc                                          ; $7665: $03
	inc  bc                                          ; $7666: $03
	inc  b                                           ; $7667: $04
	inc  bc                                          ; $7668: $03
	dec  b                                           ; $7669: $05
	dec  b                                           ; $766a: $05
	dec  b                                           ; $766b: $05
	dec  b                                           ; $766c: $05
	inc  bc                                          ; $766d: $03
	inc  b                                           ; $766e: $04
	inc  b                                           ; $766f: $04
	inc  c                                           ; $7670: $0c
	dec  bc                                          ; $7671: $0b
	dec  c                                           ; $7672: $0d
	dec  c                                           ; $7673: $0d
	inc  bc                                          ; $7674: $03
	inc  bc                                          ; $7675: $03
	inc  b                                           ; $7676: $04
	inc  bc                                          ; $7677: $03
	inc  bc                                          ; $7678: $03
	inc  bc                                          ; $7679: $03
	inc  bc                                          ; $767a: $03
	inc  bc                                          ; $767b: $03
	inc  bc                                          ; $767c: $03
	inc  bc                                          ; $767d: $03
	dec  b                                           ; $767e: $05
	inc  bc                                          ; $767f: $03
	inc  bc                                          ; $7680: $03
	inc  bc                                          ; $7681: $03
	inc  bc                                          ; $7682: $03
	inc  b                                           ; $7683: $04
	dec  bc                                          ; $7684: $0b
	dec  bc                                          ; $7685: $0b
	dec  bc                                          ; $7686: $0b
	dec  bc                                          ; $7687: $0b
	dec  bc                                          ; $7688: $0b
	dec  bc                                          ; $7689: $0b
	dec  bc                                          ; $768a: $0b
	dec  bc                                          ; $768b: $0b
	dec  bc                                          ; $768c: $0b
	dec  bc                                          ; $768d: $0b
	dec  bc                                          ; $768e: $0b
	dec  bc                                          ; $768f: $0b
	dec  bc                                          ; $7690: $0b
	dec  c                                           ; $7691: $0d
	dec  c                                           ; $7692: $0d
	dec  c                                           ; $7693: $0d
	dec  bc                                          ; $7694: $0b
	dec  bc                                          ; $7695: $0b
	dec  bc                                          ; $7696: $0b
	dec  bc                                          ; $7697: $0b
	dec  bc                                          ; $7698: $0b
	dec  bc                                          ; $7699: $0b
	dec  c                                           ; $769a: $0d
	dec  c                                           ; $769b: $0d
	dec  c                                           ; $769c: $0d
	dec  c                                           ; $769d: $0d
	dec  c                                           ; $769e: $0d
	dec  c                                           ; $769f: $0d
	dec  c                                           ; $76a0: $0d
	dec  c                                           ; $76a1: $0d
	dec  c                                           ; $76a2: $0d
	dec  c                                           ; $76a3: $0d
	dec  c                                           ; $76a4: $0d
	dec  c                                           ; $76a5: $0d
	dec  c                                           ; $76a6: $0d
	dec  c                                           ; $76a7: $0d
	dec  c                                           ; $76a8: $0d
	dec  c                                           ; $76a9: $0d
	dec  c                                           ; $76aa: $0d
	dec  c                                           ; $76ab: $0d
	dec  c                                           ; $76ac: $0d
	dec  c                                           ; $76ad: $0d
	dec  c                                           ; $76ae: $0d
	dec  c                                           ; $76af: $0d
	nop                                              ; $76b0: $00
	ld   bc, $0302                                   ; $76b1: $01 $02 $03
	inc  b                                           ; $76b4: $04
	dec  b                                           ; $76b5: $05
	ld   b, $07                                      ; $76b6: $06 $07
	ld   [$0a09], sp                                 ; $76b8: $08 $09 $0a
	dec  bc                                          ; $76bb: $0b
	inc  c                                           ; $76bc: $0c
	dec  c                                           ; $76bd: $0d
	ld   c, $0f                                      ; $76be: $0e $0f
	jr   nz, jr_084_76e3                             ; $76c0: $20 $21

	ld   [hl+], a                                    ; $76c2: $22
	inc  hl                                          ; $76c3: $23
	db   $10                                         ; $76c4: $10
	ld   de, $1312                                   ; $76c5: $11 $12 $13
	inc  d                                           ; $76c8: $14
	dec  d                                           ; $76c9: $15
	ld   d, $17                                      ; $76ca: $16 $17
	jr   @+$1b                                       ; $76cc: $18 $19

	ld   a, [de]                                     ; $76ce: $1a
	dec  de                                          ; $76cf: $1b
	inc  e                                           ; $76d0: $1c
	dec  e                                           ; $76d1: $1d
	ld   e, $1f                                      ; $76d2: $1e $1f
	jr   nc, jr_084_7707                             ; $76d4: $30 $31

	ld   [hl-], a                                    ; $76d6: $32
	inc  sp                                          ; $76d7: $33
	jr   nz, @+$23                                   ; $76d8: $20 $21

	ld   [hl+], a                                    ; $76da: $22
	inc  hl                                          ; $76db: $23
	inc  h                                           ; $76dc: $24
	dec  h                                           ; $76dd: $25
	ld   h, $27                                      ; $76de: $26 $27
	jr   z, jr_084_770b                              ; $76e0: $28 $29

	ld   a, [hl+]                                    ; $76e2: $2a

jr_084_76e3:
	dec  hl                                          ; $76e3: $2b
	inc  l                                           ; $76e4: $2c
	dec  l                                           ; $76e5: $2d
	ld   l, $2f                                      ; $76e6: $2e $2f
	inc  h                                           ; $76e8: $24
	dec  h                                           ; $76e9: $25
	ld   h, $27                                      ; $76ea: $26 $27
	jr   nc, jr_084_771f                             ; $76ec: $30 $31

	ld   [hl-], a                                    ; $76ee: $32
	inc  sp                                          ; $76ef: $33
	inc  [hl]                                        ; $76f0: $34
	dec  [hl]                                        ; $76f1: $35
	ld   [hl], $37                                   ; $76f2: $36 $37
	jr   c, jr_084_772f                              ; $76f4: $38 $39

	ld   a, [hl-]                                    ; $76f6: $3a
	dec  sp                                          ; $76f7: $3b
	inc  a                                           ; $76f8: $3c
	dec  a                                           ; $76f9: $3d
	ld   a, $3f                                      ; $76fa: $3e $3f
	inc  [hl]                                        ; $76fc: $34
	dec  [hl]                                        ; $76fd: $35
	ld   [hl], $37                                   ; $76fe: $36 $37
	ld   b, b                                        ; $7700: $40
	ld   b, c                                        ; $7701: $41
	ld   b, d                                        ; $7702: $42
	ld   b, e                                        ; $7703: $43
	ld   b, h                                        ; $7704: $44
	ld   b, l                                        ; $7705: $45
	ld   b, [hl]                                     ; $7706: $46

jr_084_7707:
	ld   b, a                                        ; $7707: $47
	ld   c, b                                        ; $7708: $48
	ld   c, c                                        ; $7709: $49
	ld   c, d                                        ; $770a: $4a

jr_084_770b:
	ld   c, e                                        ; $770b: $4b
	ld   c, h                                        ; $770c: $4c
	ld   c, l                                        ; $770d: $4d
	ld   c, [hl]                                     ; $770e: $4e
	ld   c, a                                        ; $770f: $4f
	jr   z, @+$2b                                    ; $7710: $28 $29

	ld   a, [hl+]                                    ; $7712: $2a
	dec  hl                                          ; $7713: $2b
	ld   d, b                                        ; $7714: $50
	ld   d, c                                        ; $7715: $51
	ld   d, d                                        ; $7716: $52
	ld   d, e                                        ; $7717: $53
	ld   d, h                                        ; $7718: $54
	ld   d, l                                        ; $7719: $55
	ld   d, [hl]                                     ; $771a: $56
	ld   d, a                                        ; $771b: $57
	ld   e, b                                        ; $771c: $58
	ld   e, c                                        ; $771d: $59
	ld   e, d                                        ; $771e: $5a

jr_084_771f:
	ld   e, e                                        ; $771f: $5b
	ld   e, h                                        ; $7720: $5c
	ld   e, l                                        ; $7721: $5d
	ld   e, [hl]                                     ; $7722: $5e
	ld   e, a                                        ; $7723: $5f
	jr   c, @+$3b                                    ; $7724: $38 $39

	ld   a, [hl-]                                    ; $7726: $3a
	dec  sp                                          ; $7727: $3b
	ld   h, b                                        ; $7728: $60
	ld   h, c                                        ; $7729: $61
	ld   h, d                                        ; $772a: $62
	ld   h, e                                        ; $772b: $63
	ld   h, h                                        ; $772c: $64
	ld   h, l                                        ; $772d: $65
	ld   h, [hl]                                     ; $772e: $66

jr_084_772f:
	ld   h, a                                        ; $772f: $67
	ld   l, b                                        ; $7730: $68
	ld   l, c                                        ; $7731: $69
	ld   l, d                                        ; $7732: $6a
	ld   l, e                                        ; $7733: $6b
	ld   l, h                                        ; $7734: $6c
	ld   l, l                                        ; $7735: $6d
	ld   l, [hl]                                     ; $7736: $6e
	ld   l, a                                        ; $7737: $6f
	inc  l                                           ; $7738: $2c
	dec  l                                           ; $7739: $2d
	ld   l, $2f                                      ; $773a: $2e $2f
	ld   [hl], b                                     ; $773c: $70
	ld   [hl], c                                     ; $773d: $71
	ld   [hl], d                                     ; $773e: $72
	ld   [hl], e                                     ; $773f: $73
	ld   [hl], h                                     ; $7740: $74
	ld   [hl], l                                     ; $7741: $75
	halt                                             ; $7742: $76
	ld   [hl], a                                     ; $7743: $77
	ld   a, b                                        ; $7744: $78
	ld   a, c                                        ; $7745: $79
	ld   a, d                                        ; $7746: $7a
	ld   a, e                                        ; $7747: $7b
	ld   a, h                                        ; $7748: $7c
	ld   a, l                                        ; $7749: $7d
	ld   a, [hl]                                     ; $774a: $7e
	ld   a, a                                        ; $774b: $7f
	inc  a                                           ; $774c: $3c
	dec  a                                           ; $774d: $3d
	ld   a, $3f                                      ; $774e: $3e $3f
	nop                                              ; $7750: $00
	ld   bc, $0302                                   ; $7751: $01 $02 $03
	inc  b                                           ; $7754: $04
	dec  b                                           ; $7755: $05
	ld   b, $07                                      ; $7756: $06 $07
	ld   [$0a09], sp                                 ; $7758: $08 $09 $0a
	dec  bc                                          ; $775b: $0b
	inc  c                                           ; $775c: $0c
	dec  c                                           ; $775d: $0d
	ld   c, $0f                                      ; $775e: $0e $0f
	ld   b, b                                        ; $7760: $40
	ld   b, c                                        ; $7761: $41
	ld   b, d                                        ; $7762: $42
	ld   b, e                                        ; $7763: $43
	db   $10                                         ; $7764: $10
	ld   de, $1312                                   ; $7765: $11 $12 $13
	inc  d                                           ; $7768: $14
	dec  d                                           ; $7769: $15
	ld   d, $17                                      ; $776a: $16 $17
	jr   jr_084_7787                                 ; $776c: $18 $19

	ld   a, [de]                                     ; $776e: $1a
	dec  de                                          ; $776f: $1b
	inc  e                                           ; $7770: $1c
	dec  e                                           ; $7771: $1d
	ld   e, $1f                                      ; $7772: $1e $1f
	ld   b, h                                        ; $7774: $44
	ld   b, l                                        ; $7775: $45
	ld   b, [hl]                                     ; $7776: $46
	ld   b, a                                        ; $7777: $47
	inc  bc                                          ; $7778: $03
	inc  bc                                          ; $7779: $03
	inc  bc                                          ; $777a: $03
	inc  bc                                          ; $777b: $03
	inc  bc                                          ; $777c: $03
	inc  bc                                          ; $777d: $03
	inc  bc                                          ; $777e: $03
	inc  bc                                          ; $777f: $03
	inc  bc                                          ; $7780: $03
	inc  bc                                          ; $7781: $03
	inc  bc                                          ; $7782: $03
	inc  bc                                          ; $7783: $03
	inc  bc                                          ; $7784: $03
	inc  bc                                          ; $7785: $03
	inc  bc                                          ; $7786: $03

jr_084_7787:
	inc  bc                                          ; $7787: $03
	dec  bc                                          ; $7788: $0b
	dec  bc                                          ; $7789: $0b
	dec  bc                                          ; $778a: $0b
	dec  bc                                          ; $778b: $0b
	inc  bc                                          ; $778c: $03
	inc  bc                                          ; $778d: $03
	inc  bc                                          ; $778e: $03
	inc  bc                                          ; $778f: $03
	inc  bc                                          ; $7790: $03
	inc  bc                                          ; $7791: $03
	inc  bc                                          ; $7792: $03
	inc  bc                                          ; $7793: $03
	inc  bc                                          ; $7794: $03
	inc  bc                                          ; $7795: $03
	inc  bc                                          ; $7796: $03
	inc  bc                                          ; $7797: $03
	inc  bc                                          ; $7798: $03
	inc  bc                                          ; $7799: $03
	inc  bc                                          ; $779a: $03
	inc  bc                                          ; $779b: $03
	dec  bc                                          ; $779c: $0b
	dec  bc                                          ; $779d: $0b
	dec  bc                                          ; $779e: $0b
	dec  bc                                          ; $779f: $0b
	inc  bc                                          ; $77a0: $03
	dec  b                                           ; $77a1: $05
	dec  b                                           ; $77a2: $05
	dec  b                                           ; $77a3: $05
	inc  bc                                          ; $77a4: $03
	inc  bc                                          ; $77a5: $03
	inc  bc                                          ; $77a6: $03
	dec  b                                           ; $77a7: $05
	add  l                                           ; $77a8: $85
	add  l                                           ; $77a9: $85
	add  l                                           ; $77aa: $85
	add  l                                           ; $77ab: $85
	add  l                                           ; $77ac: $85
	inc  bc                                          ; $77ad: $03
	inc  bc                                          ; $77ae: $03
	inc  bc                                          ; $77af: $03
	dec  bc                                          ; $77b0: $0b
	dec  c                                           ; $77b1: $0d
	dec  c                                           ; $77b2: $0d
	dec  bc                                          ; $77b3: $0b
	inc  bc                                          ; $77b4: $03
	dec  b                                           ; $77b5: $05
	dec  b                                           ; $77b6: $05
	dec  b                                           ; $77b7: $05
	inc  bc                                          ; $77b8: $03
	inc  bc                                          ; $77b9: $03
	inc  bc                                          ; $77ba: $03
	dec  b                                           ; $77bb: $05
	add  l                                           ; $77bc: $85
	add  l                                           ; $77bd: $85
	add  l                                           ; $77be: $85
	add  l                                           ; $77bf: $85
	add  l                                           ; $77c0: $85
	inc  bc                                          ; $77c1: $03
	inc  bc                                          ; $77c2: $03
	inc  bc                                          ; $77c3: $03
	dec  bc                                          ; $77c4: $0b
	dec  c                                           ; $77c5: $0d
	dec  c                                           ; $77c6: $0d
	dec  bc                                          ; $77c7: $0b
	inc  bc                                          ; $77c8: $03
	dec  b                                           ; $77c9: $05
	dec  b                                           ; $77ca: $05
	dec  b                                           ; $77cb: $05
	inc  b                                           ; $77cc: $04
	inc  b                                           ; $77cd: $04
	inc  b                                           ; $77ce: $04
	dec  b                                           ; $77cf: $05
	add  l                                           ; $77d0: $85
	add  l                                           ; $77d1: $85
	add  l                                           ; $77d2: $85
	add  l                                           ; $77d3: $85
	add  l                                           ; $77d4: $85
	inc  b                                           ; $77d5: $04
	inc  b                                           ; $77d6: $04
	inc  b                                           ; $77d7: $04
	dec  bc                                          ; $77d8: $0b
	dec  c                                           ; $77d9: $0d
	dec  c                                           ; $77da: $0d
	dec  bc                                          ; $77db: $0b
	inc  bc                                          ; $77dc: $03
	dec  b                                           ; $77dd: $05
	dec  b                                           ; $77de: $05
	dec  b                                           ; $77df: $05
	inc  b                                           ; $77e0: $04
	inc  b                                           ; $77e1: $04
	inc  b                                           ; $77e2: $04
	dec  b                                           ; $77e3: $05
	add  l                                           ; $77e4: $85
	add  l                                           ; $77e5: $85
	add  l                                           ; $77e6: $85
	add  l                                           ; $77e7: $85
	add  l                                           ; $77e8: $85
	inc  b                                           ; $77e9: $04
	inc  b                                           ; $77ea: $04
	inc  b                                           ; $77eb: $04
	dec  bc                                          ; $77ec: $0b
	dec  c                                           ; $77ed: $0d
	dec  c                                           ; $77ee: $0d
	dec  bc                                          ; $77ef: $0b
	inc  bc                                          ; $77f0: $03
	dec  b                                           ; $77f1: $05
	dec  b                                           ; $77f2: $05
	dec  b                                           ; $77f3: $05
	inc  b                                           ; $77f4: $04
	inc  b                                           ; $77f5: $04
	inc  b                                           ; $77f6: $04
	dec  b                                           ; $77f7: $05
	add  l                                           ; $77f8: $85
	add  l                                           ; $77f9: $85
	add  l                                           ; $77fa: $85
	add  l                                           ; $77fb: $85
	add  l                                           ; $77fc: $85
	inc  b                                           ; $77fd: $04
	inc  b                                           ; $77fe: $04
	inc  b                                           ; $77ff: $04
	dec  bc                                          ; $7800: $0b
	dec  c                                           ; $7801: $0d
	dec  c                                           ; $7802: $0d
	dec  bc                                          ; $7803: $0b
	inc  bc                                          ; $7804: $03
	dec  b                                           ; $7805: $05
	dec  b                                           ; $7806: $05
	dec  b                                           ; $7807: $05
	inc  b                                           ; $7808: $04
	inc  b                                           ; $7809: $04
	inc  b                                           ; $780a: $04
	dec  b                                           ; $780b: $05
	add  l                                           ; $780c: $85
	add  l                                           ; $780d: $85
	add  l                                           ; $780e: $85
	add  l                                           ; $780f: $85
	add  l                                           ; $7810: $85
	inc  b                                           ; $7811: $04
	inc  b                                           ; $7812: $04
	inc  b                                           ; $7813: $04
	dec  bc                                          ; $7814: $0b
	dec  c                                           ; $7815: $0d
	dec  c                                           ; $7816: $0d
	dec  bc                                          ; $7817: $0b
	dec  bc                                          ; $7818: $0b
	dec  c                                           ; $7819: $0d
	dec  c                                           ; $781a: $0d
	dec  c                                           ; $781b: $0d
	inc  c                                           ; $781c: $0c
	inc  c                                           ; $781d: $0c
	inc  c                                           ; $781e: $0c
	dec  c                                           ; $781f: $0d
	adc  l                                           ; $7820: $8d
	adc  l                                           ; $7821: $8d
	adc  l                                           ; $7822: $8d
	adc  l                                           ; $7823: $8d
	adc  l                                           ; $7824: $8d
	inc  c                                           ; $7825: $0c
	inc  c                                           ; $7826: $0c
	inc  c                                           ; $7827: $0c
	dec  bc                                          ; $7828: $0b
	dec  c                                           ; $7829: $0d
	dec  c                                           ; $782a: $0d
	dec  bc                                          ; $782b: $0b
	dec  bc                                          ; $782c: $0b
	dec  bc                                          ; $782d: $0b
	dec  bc                                          ; $782e: $0b
	dec  bc                                          ; $782f: $0b
	inc  c                                           ; $7830: $0c
	inc  c                                           ; $7831: $0c
	inc  c                                           ; $7832: $0c
	dec  bc                                          ; $7833: $0b
	dec  bc                                          ; $7834: $0b
	dec  bc                                          ; $7835: $0b
	dec  bc                                          ; $7836: $0b
	dec  bc                                          ; $7837: $0b
	dec  bc                                          ; $7838: $0b
	inc  c                                           ; $7839: $0c
	inc  c                                           ; $783a: $0c
	inc  c                                           ; $783b: $0c
	dec  bc                                          ; $783c: $0b
	dec  bc                                          ; $783d: $0b
	dec  bc                                          ; $783e: $0b
	dec  bc                                          ; $783f: $0b
	dec  c                                           ; $7840: $0d
	ld   c, $0e                                      ; $7841: $0e $0e
	ld   c, $0e                                      ; $7843: $0e $0e
	ld   c, $0e                                      ; $7845: $0e $0e
	ld   c, $0e                                      ; $7847: $0e $0e
	ld   c, $0e                                      ; $7849: $0e $0e
	ld   c, $0e                                      ; $784b: $0e $0e
	ld   c, $0e                                      ; $784d: $0e $0e
	ld   c, $0e                                      ; $784f: $0e $0e
	ld   c, $0e                                      ; $7851: $0e $0e
	dec  c                                           ; $7853: $0d
	rrca                                             ; $7854: $0f
	ld   l, d                                        ; $7855: $6a
	ld   l, d                                        ; $7856: $6a
	ld   l, d                                        ; $7857: $6a
	ld   l, d                                        ; $7858: $6a
	ld   l, d                                        ; $7859: $6a
	ld   l, d                                        ; $785a: $6a
	ld   l, d                                        ; $785b: $6a
	ld   l, d                                        ; $785c: $6a
	ld   l, d                                        ; $785d: $6a
	ld   l, d                                        ; $785e: $6a
	ld   l, d                                        ; $785f: $6a
	ld   l, d                                        ; $7860: $6a
	ld   l, d                                        ; $7861: $6a
	ld   l, d                                        ; $7862: $6a
	ld   l, d                                        ; $7863: $6a
	ld   l, d                                        ; $7864: $6a
	ld   l, d                                        ; $7865: $6a
	ld   l, d                                        ; $7866: $6a
	ld   e, b                                        ; $7867: $58
	ld   h, l                                        ; $7868: $65
	ld   h, [hl]                                     ; $7869: $66
	ld   l, h                                        ; $786a: $6c
	ld   l, l                                        ; $786b: $6d
	ld   l, [hl]                                     ; $786c: $6e
	ld   l, [hl]                                     ; $786d: $6e
	ld   l, [hl]                                     ; $786e: $6e
	ld   l, [hl]                                     ; $786f: $6e
	ld   l, [hl]                                     ; $7870: $6e
	ld   l, [hl]                                     ; $7871: $6e
	ld   l, [hl]                                     ; $7872: $6e
	ld   l, [hl]                                     ; $7873: $6e
	ld   l, [hl]                                     ; $7874: $6e
	ld   l, [hl]                                     ; $7875: $6e
	ld   l, [hl]                                     ; $7876: $6e
	ld   l, [hl]                                     ; $7877: $6e
	ld   l, [hl]                                     ; $7878: $6e
	ld   l, [hl]                                     ; $7879: $6e
	ld   l, [hl]                                     ; $787a: $6e
	ld   e, c                                        ; $787b: $59
	nop                                              ; $787c: $00
	ld   bc, $0302                                   ; $787d: $01 $02 $03
	inc  b                                           ; $7880: $04
	dec  b                                           ; $7881: $05
	ld   b, $07                                      ; $7882: $06 $07
	ld   [$0a09], sp                                 ; $7884: $08 $09 $0a
	dec  bc                                          ; $7887: $0b
	inc  c                                           ; $7888: $0c
	inc  c                                           ; $7889: $0c
	inc  c                                           ; $788a: $0c
	inc  c                                           ; $788b: $0c
	inc  b                                           ; $788c: $04
	inc  c                                           ; $788d: $0c
	inc  c                                           ; $788e: $0c
	dec  b                                           ; $788f: $05
	db   $10                                         ; $7890: $10
	ld   de, $1312                                   ; $7891: $11 $12 $13
	inc  d                                           ; $7894: $14
	dec  d                                           ; $7895: $15
	ld   d, $17                                      ; $7896: $16 $17
	jr   @+$1b                                       ; $7898: $18 $19

	ld   a, [de]                                     ; $789a: $1a
	dec  de                                          ; $789b: $1b
	inc  e                                           ; $789c: $1c
	dec  e                                           ; $789d: $1d
	ld   e, $1f                                      ; $789e: $1e $1f
	ld   [hl], b                                     ; $78a0: $70
	inc  c                                           ; $78a1: $0c
	ld   [hl], d                                     ; $78a2: $72
	ld   [hl], e                                     ; $78a3: $73
	jr   nz, @+$23                                   ; $78a4: $20 $21

	ld   [hl+], a                                    ; $78a6: $22
	inc  hl                                          ; $78a7: $23
	inc  h                                           ; $78a8: $24
	dec  h                                           ; $78a9: $25
	ld   h, $27                                      ; $78aa: $26 $27
	jr   z, jr_084_78d7                              ; $78ac: $28 $29

	ld   a, [hl+]                                    ; $78ae: $2a
	dec  hl                                          ; $78af: $2b
	inc  l                                           ; $78b0: $2c
	dec  l                                           ; $78b1: $2d
	ld   l, $2f                                      ; $78b2: $2e $2f
	ld   [hl], h                                     ; $78b4: $74
	ld   [hl], l                                     ; $78b5: $75
	halt                                             ; $78b6: $76
	ld   [hl], a                                     ; $78b7: $77
	jr   nc, jr_084_78eb                             ; $78b8: $30 $31

	ld   [hl-], a                                    ; $78ba: $32
	inc  sp                                          ; $78bb: $33
	inc  [hl]                                        ; $78bc: $34
	dec  [hl]                                        ; $78bd: $35
	ld   [hl], $37                                   ; $78be: $36 $37
	jr   c, jr_084_78fb                              ; $78c0: $38 $39

	ld   b, $3b                                      ; $78c2: $06 $3b
	inc  a                                           ; $78c4: $3c
	rlca                                             ; $78c5: $07
	ld   a, $3f                                      ; $78c6: $3e $3f
	ld   a, b                                        ; $78c8: $78
	ld   a, c                                        ; $78c9: $79
	ld   a, d                                        ; $78ca: $7a
	ld   a, e                                        ; $78cb: $7b
	ld   b, b                                        ; $78cc: $40
	ld   b, c                                        ; $78cd: $41
	ld   b, d                                        ; $78ce: $42
	ld   b, e                                        ; $78cf: $43
	ld   b, h                                        ; $78d0: $44
	ld   b, l                                        ; $78d1: $45
	ld   b, [hl]                                     ; $78d2: $46
	ld   b, a                                        ; $78d3: $47
	ld   [Func_0949], sp                                 ; $78d4: $08 $49 $09

jr_084_78d7:
	ld   a, [bc]                                     ; $78d7: $0a
	dec  bc                                          ; $78d8: $0b
	inc  c                                           ; $78d9: $0c
	dec  c                                           ; $78da: $0d
	ld   c, a                                        ; $78db: $4f
	ld   a, h                                        ; $78dc: $7c
	ld   a, l                                        ; $78dd: $7d
	ld   a, [hl]                                     ; $78de: $7e
	ld   a, a                                        ; $78df: $7f
	ld   d, b                                        ; $78e0: $50
	ld   d, c                                        ; $78e1: $51
	ld   d, d                                        ; $78e2: $52
	ld   d, e                                        ; $78e3: $53
	ld   d, h                                        ; $78e4: $54
	ld   d, l                                        ; $78e5: $55
	ld   d, [hl]                                     ; $78e6: $56
	ld   d, a                                        ; $78e7: $57
	ld   c, $0f                                      ; $78e8: $0e $0f
	db   $10                                         ; $78ea: $10

jr_084_78eb:
	ld   de, $1312                                   ; $78eb: $11 $12 $13
	inc  d                                           ; $78ee: $14
	ld   e, a                                        ; $78ef: $5f
	ld   [hl], c                                     ; $78f0: $71
	ld   l, d                                        ; $78f1: $6a
	ld   l, d                                        ; $78f2: $6a
	ld   e, b                                        ; $78f3: $58
	ld   h, b                                        ; $78f4: $60
	ld   h, c                                        ; $78f5: $61
	ld   h, d                                        ; $78f6: $62
	ld   h, e                                        ; $78f7: $63
	ld   h, h                                        ; $78f8: $64
	inc  c                                           ; $78f9: $0c
	inc  c                                           ; $78fa: $0c

jr_084_78fb:
	ld   h, a                                        ; $78fb: $67
	dec  d                                           ; $78fc: $15
	ld   d, $17                                      ; $78fd: $16 $17
	jr   jr_084_791a                                 ; $78ff: $18 $19

	ld   a, [de]                                     ; $7901: $1a
	dec  de                                          ; $7902: $1b
	ld   l, a                                        ; $7903: $6f
	nop                                              ; $7904: $00
	ld   bc, $0302                                   ; $7905: $01 $02 $03
	inc  bc                                          ; $7908: $03
	inc  bc                                          ; $7909: $03
	inc  bc                                          ; $790a: $03
	inc  bc                                          ; $790b: $03
	inc  bc                                          ; $790c: $03
	inc  bc                                          ; $790d: $03
	inc  bc                                          ; $790e: $03
	inc  bc                                          ; $790f: $03
	inc  bc                                          ; $7910: $03
	inc  bc                                          ; $7911: $03
	inc  bc                                          ; $7912: $03
	inc  bc                                          ; $7913: $03
	inc  bc                                          ; $7914: $03
	inc  bc                                          ; $7915: $03
	inc  bc                                          ; $7916: $03
	inc  bc                                          ; $7917: $03
	inc  bc                                          ; $7918: $03
	inc  bc                                          ; $7919: $03

jr_084_791a:
	inc  bc                                          ; $791a: $03
	inc  hl                                          ; $791b: $23
	inc  bc                                          ; $791c: $03
	inc  bc                                          ; $791d: $03
	inc  bc                                          ; $791e: $03
	inc  bc                                          ; $791f: $03
	inc  bc                                          ; $7920: $03
	inc  bc                                          ; $7921: $03
	inc  bc                                          ; $7922: $03
	inc  bc                                          ; $7923: $03
	inc  bc                                          ; $7924: $03
	inc  bc                                          ; $7925: $03
	inc  bc                                          ; $7926: $03
	inc  bc                                          ; $7927: $03
	inc  bc                                          ; $7928: $03
	inc  bc                                          ; $7929: $03
	inc  bc                                          ; $792a: $03
	inc  bc                                          ; $792b: $03
	inc  bc                                          ; $792c: $03
	inc  bc                                          ; $792d: $03
	inc  bc                                          ; $792e: $03
	inc  bc                                          ; $792f: $03
	inc  bc                                          ; $7930: $03
	inc  bc                                          ; $7931: $03
	inc  bc                                          ; $7932: $03
	inc  bc                                          ; $7933: $03
	inc  bc                                          ; $7934: $03
	inc  bc                                          ; $7935: $03
	inc  bc                                          ; $7936: $03
	inc  bc                                          ; $7937: $03
	inc  bc                                          ; $7938: $03
	inc  bc                                          ; $7939: $03
	inc  bc                                          ; $793a: $03
	inc  bc                                          ; $793b: $03
	inc  bc                                          ; $793c: $03
	inc  bc                                          ; $793d: $03
	inc  bc                                          ; $793e: $03
	inc  bc                                          ; $793f: $03
	inc  bc                                          ; $7940: $03
	inc  bc                                          ; $7941: $03
	inc  bc                                          ; $7942: $03
	inc  bc                                          ; $7943: $03
	inc  b                                           ; $7944: $04
	inc  b                                           ; $7945: $04
	inc  b                                           ; $7946: $04
	inc  b                                           ; $7947: $04
	inc  b                                           ; $7948: $04
	inc  bc                                          ; $7949: $03
	inc  b                                           ; $794a: $04
	inc  b                                           ; $794b: $04
	inc  b                                           ; $794c: $04
	inc  b                                           ; $794d: $04
	inc  b                                           ; $794e: $04
	inc  b                                           ; $794f: $04
	inc  bc                                          ; $7950: $03
	inc  bc                                          ; $7951: $03
	inc  bc                                          ; $7952: $03
	inc  bc                                          ; $7953: $03
	dec  c                                           ; $7954: $0d
	inc  bc                                          ; $7955: $03
	inc  bc                                          ; $7956: $03
	dec  c                                           ; $7957: $0d
	inc  b                                           ; $7958: $04
	inc  b                                           ; $7959: $04
	inc  b                                           ; $795a: $04
	inc  b                                           ; $795b: $04
	inc  b                                           ; $795c: $04
	inc  b                                           ; $795d: $04
	inc  b                                           ; $795e: $04
	inc  b                                           ; $795f: $04
	inc  b                                           ; $7960: $04
	inc  b                                           ; $7961: $04
	inc  b                                           ; $7962: $04
	inc  b                                           ; $7963: $04
	dec  b                                           ; $7964: $05
	dec  b                                           ; $7965: $05
	dec  b                                           ; $7966: $05
	dec  b                                           ; $7967: $05
	dec  b                                           ; $7968: $05
	inc  bc                                          ; $7969: $03
	dec  b                                           ; $796a: $05
	dec  b                                           ; $796b: $05
	inc  b                                           ; $796c: $04
	inc  b                                           ; $796d: $04
	inc  b                                           ; $796e: $04
	inc  b                                           ; $796f: $04
	inc  b                                           ; $7970: $04
	inc  b                                           ; $7971: $04
	inc  b                                           ; $7972: $04
	inc  b                                           ; $7973: $04
	inc  b                                           ; $7974: $04
	inc  b                                           ; $7975: $04
	inc  b                                           ; $7976: $04
	inc  b                                           ; $7977: $04
	dec  b                                           ; $7978: $05
	dec  b                                           ; $7979: $05
	dec  b                                           ; $797a: $05
	dec  b                                           ; $797b: $05
	dec  b                                           ; $797c: $05
	dec  b                                           ; $797d: $05
	dec  b                                           ; $797e: $05
	dec  b                                           ; $797f: $05
	inc  b                                           ; $7980: $04
	inc  b                                           ; $7981: $04
	inc  b                                           ; $7982: $04
	inc  b                                           ; $7983: $04
	inc  b                                           ; $7984: $04
	inc  b                                           ; $7985: $04
	inc  b                                           ; $7986: $04
	inc  b                                           ; $7987: $04
	inc  b                                           ; $7988: $04
	inc  b                                           ; $7989: $04
	inc  c                                           ; $798a: $0c
	inc  b                                           ; $798b: $04
	dec  b                                           ; $798c: $05
	dec  c                                           ; $798d: $0d
	dec  b                                           ; $798e: $05
	dec  b                                           ; $798f: $05
	dec  b                                           ; $7990: $05
	dec  b                                           ; $7991: $05
	dec  b                                           ; $7992: $05
	dec  b                                           ; $7993: $05
	dec  b                                           ; $7994: $05
	dec  b                                           ; $7995: $05
	dec  b                                           ; $7996: $05
	dec  b                                           ; $7997: $05
	dec  b                                           ; $7998: $05
	dec  b                                           ; $7999: $05
	dec  b                                           ; $799a: $05
	dec  b                                           ; $799b: $05
	dec  c                                           ; $799c: $0d
	dec  b                                           ; $799d: $05
	dec  c                                           ; $799e: $0d
	dec  c                                           ; $799f: $0d
	dec  c                                           ; $79a0: $0d
	dec  c                                           ; $79a1: $0d
	dec  c                                           ; $79a2: $0d
	dec  b                                           ; $79a3: $05
	dec  b                                           ; $79a4: $05
	dec  b                                           ; $79a5: $05
	dec  b                                           ; $79a6: $05
	dec  b                                           ; $79a7: $05
	dec  b                                           ; $79a8: $05
	dec  b                                           ; $79a9: $05
	dec  b                                           ; $79aa: $05
	dec  b                                           ; $79ab: $05
	dec  b                                           ; $79ac: $05
	dec  b                                           ; $79ad: $05
	dec  b                                           ; $79ae: $05
	dec  b                                           ; $79af: $05
	dec  c                                           ; $79b0: $0d
	dec  c                                           ; $79b1: $0d
	dec  c                                           ; $79b2: $0d
	dec  c                                           ; $79b3: $0d
	dec  c                                           ; $79b4: $0d
	dec  c                                           ; $79b5: $0d
	dec  c                                           ; $79b6: $0d
	dec  b                                           ; $79b7: $05
	dec  b                                           ; $79b8: $05
	dec  b                                           ; $79b9: $05
	dec  b                                           ; $79ba: $05
	dec  b                                           ; $79bb: $05
	dec  b                                           ; $79bc: $05
	dec  b                                           ; $79bd: $05
	dec  b                                           ; $79be: $05
	dec  b                                           ; $79bf: $05
	dec  b                                           ; $79c0: $05
	inc  bc                                          ; $79c1: $03
	inc  bc                                          ; $79c2: $03
	dec  b                                           ; $79c3: $05
	dec  c                                           ; $79c4: $0d
	dec  c                                           ; $79c5: $0d
	dec  c                                           ; $79c6: $0d
	dec  c                                           ; $79c7: $0d
	dec  c                                           ; $79c8: $0d
	dec  c                                           ; $79c9: $0d
	dec  c                                           ; $79ca: $0d
	dec  b                                           ; $79cb: $05
	dec  c                                           ; $79cc: $0d
	dec  c                                           ; $79cd: $0d
	dec  c                                           ; $79ce: $0d
	dec  c                                           ; $79cf: $0d
	dec  c                                           ; $79d0: $0d
	ld   c, $0e                                      ; $79d1: $0e $0e
	ld   c, $0e                                      ; $79d3: $0e $0e
	ld   c, $0e                                      ; $79d5: $0e $0e
	ld   c, $0e                                      ; $79d7: $0e $0e
	ld   c, $0e                                      ; $79d9: $0e $0e
	ld   c, $0e                                      ; $79db: $0e $0e
	ld   c, $0e                                      ; $79dd: $0e $0e
	ld   c, $0e                                      ; $79df: $0e $0e
	ld   c, $0e                                      ; $79e1: $0e $0e
	dec  c                                           ; $79e3: $0d
	rrca                                             ; $79e4: $0f
	ld   l, d                                        ; $79e5: $6a
	ld   l, d                                        ; $79e6: $6a
	ld   l, d                                        ; $79e7: $6a
	ld   l, d                                        ; $79e8: $6a
	ld   l, d                                        ; $79e9: $6a
	ld   l, d                                        ; $79ea: $6a
	ld   l, d                                        ; $79eb: $6a
	ld   l, d                                        ; $79ec: $6a
	ld   l, d                                        ; $79ed: $6a
	ld   l, d                                        ; $79ee: $6a
	ld   l, d                                        ; $79ef: $6a
	ld   l, d                                        ; $79f0: $6a
	ld   l, d                                        ; $79f1: $6a
	ld   l, d                                        ; $79f2: $6a
	ld   l, d                                        ; $79f3: $6a
	ld   l, d                                        ; $79f4: $6a
	ld   l, d                                        ; $79f5: $6a
	ld   l, d                                        ; $79f6: $6a
	ld   e, b                                        ; $79f7: $58
	ld   h, l                                        ; $79f8: $65
	ld   h, [hl]                                     ; $79f9: $66
	ld   l, h                                        ; $79fa: $6c
	ld   l, l                                        ; $79fb: $6d
	ld   l, [hl]                                     ; $79fc: $6e
	ld   l, [hl]                                     ; $79fd: $6e
	ld   l, [hl]                                     ; $79fe: $6e
	ld   l, [hl]                                     ; $79ff: $6e
	ld   l, [hl]                                     ; $7a00: $6e
	ld   l, [hl]                                     ; $7a01: $6e
	ld   l, [hl]                                     ; $7a02: $6e
	ld   l, [hl]                                     ; $7a03: $6e
	ld   l, [hl]                                     ; $7a04: $6e
	ld   l, [hl]                                     ; $7a05: $6e
	ld   l, [hl]                                     ; $7a06: $6e
	ld   l, [hl]                                     ; $7a07: $6e
	ld   l, [hl]                                     ; $7a08: $6e
	ld   l, [hl]                                     ; $7a09: $6e
	ld   l, [hl]                                     ; $7a0a: $6e
	ld   e, c                                        ; $7a0b: $59
	nop                                              ; $7a0c: $00
	ld   bc, $0302                                   ; $7a0d: $01 $02 $03
	inc  b                                           ; $7a10: $04
	dec  b                                           ; $7a11: $05
	ld   b, $07                                      ; $7a12: $06 $07
	ld   [$0a09], sp                                 ; $7a14: $08 $09 $0a
	dec  bc                                          ; $7a17: $0b
	inc  c                                           ; $7a18: $0c
	inc  c                                           ; $7a19: $0c
	inc  c                                           ; $7a1a: $0c
	inc  c                                           ; $7a1b: $0c
	inc  b                                           ; $7a1c: $04
	inc  c                                           ; $7a1d: $0c
	inc  c                                           ; $7a1e: $0c
	dec  b                                           ; $7a1f: $05
	db   $10                                         ; $7a20: $10
	ld   de, $1312                                   ; $7a21: $11 $12 $13
	inc  d                                           ; $7a24: $14
	dec  d                                           ; $7a25: $15
	ld   d, $17                                      ; $7a26: $16 $17
	jr   @+$1b                                       ; $7a28: $18 $19

	ld   a, [de]                                     ; $7a2a: $1a
	dec  de                                          ; $7a2b: $1b
	inc  e                                           ; $7a2c: $1c
	dec  e                                           ; $7a2d: $1d
	ld   e, $1f                                      ; $7a2e: $1e $1f
	ld   [hl], b                                     ; $7a30: $70
	inc  c                                           ; $7a31: $0c
	ld   [hl], d                                     ; $7a32: $72
	ld   [hl], e                                     ; $7a33: $73
	jr   nz, @+$23                                   ; $7a34: $20 $21

	ld   [hl+], a                                    ; $7a36: $22
	inc  hl                                          ; $7a37: $23
	inc  h                                           ; $7a38: $24
	dec  h                                           ; $7a39: $25
	ld   h, $27                                      ; $7a3a: $26 $27
	inc  e                                           ; $7a3c: $1c
	dec  e                                           ; $7a3d: $1d
	ld   a, [hl+]                                    ; $7a3e: $2a
	dec  hl                                          ; $7a3f: $2b
	inc  l                                           ; $7a40: $2c
	dec  l                                           ; $7a41: $2d
	ld   l, $2f                                      ; $7a42: $2e $2f
	ld   [hl], h                                     ; $7a44: $74
	ld   [hl], l                                     ; $7a45: $75
	halt                                             ; $7a46: $76
	ld   [hl], a                                     ; $7a47: $77
	jr   nc, jr_084_7a7b                             ; $7a48: $30 $31

	ld   [hl-], a                                    ; $7a4a: $32
	inc  sp                                          ; $7a4b: $33
	inc  [hl]                                        ; $7a4c: $34
	dec  [hl]                                        ; $7a4d: $35
	ld   [hl], $37                                   ; $7a4e: $36 $37
	ld   e, $1f                                      ; $7a50: $1e $1f
	ld   b, $3b                                      ; $7a52: $06 $3b
	inc  a                                           ; $7a54: $3c
	rlca                                             ; $7a55: $07
	ld   a, $3f                                      ; $7a56: $3e $3f
	ld   a, b                                        ; $7a58: $78
	ld   a, c                                        ; $7a59: $79
	ld   a, d                                        ; $7a5a: $7a
	ld   a, e                                        ; $7a5b: $7b
	ld   b, b                                        ; $7a5c: $40
	ld   b, c                                        ; $7a5d: $41
	ld   b, d                                        ; $7a5e: $42
	ld   b, e                                        ; $7a5f: $43
	ld   b, h                                        ; $7a60: $44
	ld   b, l                                        ; $7a61: $45
	ld   b, [hl]                                     ; $7a62: $46
	ld   b, a                                        ; $7a63: $47
	jr   nz, jr_084_7a87                             ; $7a64: $20 $21

	add  hl, bc                                      ; $7a66: $09
	ld   a, [bc]                                     ; $7a67: $0a
	dec  bc                                          ; $7a68: $0b
	inc  c                                           ; $7a69: $0c
	ld   c, [hl]                                     ; $7a6a: $4e
	ld   c, a                                        ; $7a6b: $4f
	ld   a, h                                        ; $7a6c: $7c
	ld   a, l                                        ; $7a6d: $7d
	ld   a, [hl]                                     ; $7a6e: $7e
	ld   a, a                                        ; $7a6f: $7f
	ld   d, b                                        ; $7a70: $50
	ld   d, c                                        ; $7a71: $51
	ld   d, d                                        ; $7a72: $52
	ld   d, e                                        ; $7a73: $53
	ld   d, h                                        ; $7a74: $54
	ld   d, l                                        ; $7a75: $55
	ld   d, [hl]                                     ; $7a76: $56
	ld   d, a                                        ; $7a77: $57
	ld   c, $22                                      ; $7a78: $0e $22
	inc  hl                                          ; $7a7a: $23

jr_084_7a7b:
	inc  h                                           ; $7a7b: $24
	ld   [de], a                                     ; $7a7c: $12
	inc  de                                          ; $7a7d: $13
	dec  h                                           ; $7a7e: $25
	ld   e, a                                        ; $7a7f: $5f
	ld   [hl], c                                     ; $7a80: $71
	ld   l, d                                        ; $7a81: $6a
	ld   l, d                                        ; $7a82: $6a
	ld   e, b                                        ; $7a83: $58
	ld   h, b                                        ; $7a84: $60
	ld   h, c                                        ; $7a85: $61
	ld   h, d                                        ; $7a86: $62

jr_084_7a87:
	ld   h, e                                        ; $7a87: $63
	ld   h, h                                        ; $7a88: $64
	inc  c                                           ; $7a89: $0c
	inc  c                                           ; $7a8a: $0c
	ld   h, a                                        ; $7a8b: $67
	dec  d                                           ; $7a8c: $15
	ld   h, $27                                      ; $7a8d: $26 $27
	jr   z, jr_084_7aaa                              ; $7a8f: $28 $19

	add  hl, hl                                      ; $7a91: $29
	ld   a, [hl+]                                    ; $7a92: $2a
	ld   l, a                                        ; $7a93: $6f
	nop                                              ; $7a94: $00
	ld   bc, $0302                                   ; $7a95: $01 $02 $03
	inc  bc                                          ; $7a98: $03
	inc  bc                                          ; $7a99: $03
	inc  bc                                          ; $7a9a: $03
	inc  bc                                          ; $7a9b: $03
	inc  bc                                          ; $7a9c: $03
	inc  bc                                          ; $7a9d: $03
	inc  bc                                          ; $7a9e: $03
	inc  bc                                          ; $7a9f: $03
	inc  bc                                          ; $7aa0: $03
	inc  bc                                          ; $7aa1: $03
	inc  bc                                          ; $7aa2: $03
	inc  bc                                          ; $7aa3: $03
	inc  bc                                          ; $7aa4: $03
	inc  bc                                          ; $7aa5: $03
	inc  bc                                          ; $7aa6: $03
	inc  bc                                          ; $7aa7: $03
	inc  bc                                          ; $7aa8: $03
	inc  bc                                          ; $7aa9: $03

jr_084_7aaa:
	inc  bc                                          ; $7aaa: $03
	inc  hl                                          ; $7aab: $23
	inc  bc                                          ; $7aac: $03
	inc  bc                                          ; $7aad: $03
	inc  bc                                          ; $7aae: $03
	inc  bc                                          ; $7aaf: $03
	inc  bc                                          ; $7ab0: $03
	inc  bc                                          ; $7ab1: $03
	inc  bc                                          ; $7ab2: $03
	inc  bc                                          ; $7ab3: $03
	inc  bc                                          ; $7ab4: $03
	inc  bc                                          ; $7ab5: $03
	inc  bc                                          ; $7ab6: $03
	inc  bc                                          ; $7ab7: $03
	inc  bc                                          ; $7ab8: $03
	inc  bc                                          ; $7ab9: $03
	inc  bc                                          ; $7aba: $03
	inc  bc                                          ; $7abb: $03
	inc  bc                                          ; $7abc: $03
	inc  bc                                          ; $7abd: $03
	inc  bc                                          ; $7abe: $03
	inc  bc                                          ; $7abf: $03
	inc  bc                                          ; $7ac0: $03
	inc  bc                                          ; $7ac1: $03
	inc  bc                                          ; $7ac2: $03
	inc  bc                                          ; $7ac3: $03
	inc  bc                                          ; $7ac4: $03
	inc  bc                                          ; $7ac5: $03
	inc  bc                                          ; $7ac6: $03
	inc  bc                                          ; $7ac7: $03
	inc  bc                                          ; $7ac8: $03
	inc  bc                                          ; $7ac9: $03
	inc  bc                                          ; $7aca: $03
	inc  bc                                          ; $7acb: $03
	inc  bc                                          ; $7acc: $03
	inc  bc                                          ; $7acd: $03
	inc  bc                                          ; $7ace: $03
	inc  bc                                          ; $7acf: $03
	inc  bc                                          ; $7ad0: $03
	inc  bc                                          ; $7ad1: $03
	inc  bc                                          ; $7ad2: $03
	inc  bc                                          ; $7ad3: $03
	inc  b                                           ; $7ad4: $04
	inc  b                                           ; $7ad5: $04
	inc  b                                           ; $7ad6: $04
	inc  b                                           ; $7ad7: $04
	inc  b                                           ; $7ad8: $04
	inc  bc                                          ; $7ad9: $03
	inc  b                                           ; $7ada: $04
	inc  b                                           ; $7adb: $04
	inc  b                                           ; $7adc: $04
	inc  b                                           ; $7add: $04
	inc  b                                           ; $7ade: $04
	inc  b                                           ; $7adf: $04
	inc  bc                                          ; $7ae0: $03
	inc  bc                                          ; $7ae1: $03
	inc  bc                                          ; $7ae2: $03
	inc  bc                                          ; $7ae3: $03
	dec  c                                           ; $7ae4: $0d
	inc  bc                                          ; $7ae5: $03
	inc  bc                                          ; $7ae6: $03
	dec  c                                           ; $7ae7: $0d
	inc  b                                           ; $7ae8: $04
	inc  b                                           ; $7ae9: $04
	inc  b                                           ; $7aea: $04
	inc  b                                           ; $7aeb: $04
	inc  b                                           ; $7aec: $04
	inc  b                                           ; $7aed: $04
	inc  b                                           ; $7aee: $04
	inc  b                                           ; $7aef: $04
	inc  b                                           ; $7af0: $04
	inc  b                                           ; $7af1: $04
	inc  b                                           ; $7af2: $04
	inc  b                                           ; $7af3: $04
	dec  b                                           ; $7af4: $05
	dec  b                                           ; $7af5: $05
	dec  b                                           ; $7af6: $05
	dec  b                                           ; $7af7: $05
	dec  b                                           ; $7af8: $05
	inc  bc                                          ; $7af9: $03
	dec  b                                           ; $7afa: $05
	dec  b                                           ; $7afb: $05
	inc  b                                           ; $7afc: $04
	inc  b                                           ; $7afd: $04
	inc  b                                           ; $7afe: $04
	inc  b                                           ; $7aff: $04
	inc  b                                           ; $7b00: $04
	inc  b                                           ; $7b01: $04
	inc  b                                           ; $7b02: $04
	inc  b                                           ; $7b03: $04
	inc  c                                           ; $7b04: $0c
	inc  c                                           ; $7b05: $0c
	inc  b                                           ; $7b06: $04
	inc  b                                           ; $7b07: $04
	dec  b                                           ; $7b08: $05
	dec  b                                           ; $7b09: $05
	dec  b                                           ; $7b0a: $05
	dec  b                                           ; $7b0b: $05
	dec  b                                           ; $7b0c: $05
	dec  b                                           ; $7b0d: $05
	dec  b                                           ; $7b0e: $05
	dec  b                                           ; $7b0f: $05
	inc  b                                           ; $7b10: $04
	inc  b                                           ; $7b11: $04
	inc  b                                           ; $7b12: $04
	inc  b                                           ; $7b13: $04
	inc  b                                           ; $7b14: $04
	inc  b                                           ; $7b15: $04
	inc  b                                           ; $7b16: $04
	inc  b                                           ; $7b17: $04
	inc  c                                           ; $7b18: $0c
	inc  c                                           ; $7b19: $0c
	inc  c                                           ; $7b1a: $0c
	inc  b                                           ; $7b1b: $04
	dec  b                                           ; $7b1c: $05
	dec  c                                           ; $7b1d: $0d
	dec  b                                           ; $7b1e: $05
	dec  b                                           ; $7b1f: $05
	dec  b                                           ; $7b20: $05
	dec  b                                           ; $7b21: $05
	dec  b                                           ; $7b22: $05
	dec  b                                           ; $7b23: $05
	dec  b                                           ; $7b24: $05
	dec  b                                           ; $7b25: $05
	dec  b                                           ; $7b26: $05
	dec  b                                           ; $7b27: $05
	dec  b                                           ; $7b28: $05
	dec  b                                           ; $7b29: $05
	dec  b                                           ; $7b2a: $05
	dec  b                                           ; $7b2b: $05
	dec  c                                           ; $7b2c: $0d
	dec  c                                           ; $7b2d: $0d
	dec  c                                           ; $7b2e: $0d
	dec  c                                           ; $7b2f: $0d
	dec  c                                           ; $7b30: $0d
	dec  c                                           ; $7b31: $0d
	dec  b                                           ; $7b32: $05
	dec  b                                           ; $7b33: $05
	dec  b                                           ; $7b34: $05
	dec  b                                           ; $7b35: $05
	dec  b                                           ; $7b36: $05
	dec  b                                           ; $7b37: $05
	dec  b                                           ; $7b38: $05
	dec  b                                           ; $7b39: $05
	dec  b                                           ; $7b3a: $05
	dec  b                                           ; $7b3b: $05
	dec  b                                           ; $7b3c: $05
	dec  b                                           ; $7b3d: $05
	dec  b                                           ; $7b3e: $05
	dec  b                                           ; $7b3f: $05
	dec  c                                           ; $7b40: $0d
	dec  c                                           ; $7b41: $0d
	dec  c                                           ; $7b42: $0d
	dec  c                                           ; $7b43: $0d
	dec  c                                           ; $7b44: $0d
	dec  c                                           ; $7b45: $0d
	dec  c                                           ; $7b46: $0d
	dec  b                                           ; $7b47: $05
	dec  b                                           ; $7b48: $05
	dec  b                                           ; $7b49: $05
	dec  b                                           ; $7b4a: $05
	dec  b                                           ; $7b4b: $05
	dec  b                                           ; $7b4c: $05
	dec  b                                           ; $7b4d: $05
	dec  b                                           ; $7b4e: $05
	dec  b                                           ; $7b4f: $05
	dec  b                                           ; $7b50: $05
	inc  bc                                          ; $7b51: $03
	inc  bc                                          ; $7b52: $03
	dec  b                                           ; $7b53: $05
	dec  c                                           ; $7b54: $0d
	dec  c                                           ; $7b55: $0d
	dec  c                                           ; $7b56: $0d
	dec  c                                           ; $7b57: $0d
	dec  c                                           ; $7b58: $0d
	dec  c                                           ; $7b59: $0d
	dec  c                                           ; $7b5a: $0d
	dec  b                                           ; $7b5b: $05
	dec  c                                           ; $7b5c: $0d
	dec  c                                           ; $7b5d: $0d
	dec  c                                           ; $7b5e: $0d
	dec  c                                           ; $7b5f: $0d
	dec  c                                           ; $7b60: $0d
	ld   c, $0e                                      ; $7b61: $0e $0e
	ld   c, $0e                                      ; $7b63: $0e $0e
	ld   c, $0e                                      ; $7b65: $0e $0e
	ld   c, $0e                                      ; $7b67: $0e $0e
	ld   c, $0e                                      ; $7b69: $0e $0e
	ld   c, $0e                                      ; $7b6b: $0e $0e
	ld   c, $0e                                      ; $7b6d: $0e $0e
	ld   c, $0e                                      ; $7b6f: $0e $0e
	ld   c, $0e                                      ; $7b71: $0e $0e
	dec  c                                           ; $7b73: $0d
	rrca                                             ; $7b74: $0f
	ld   l, d                                        ; $7b75: $6a
	ld   l, d                                        ; $7b76: $6a
	ld   l, d                                        ; $7b77: $6a
	ld   l, d                                        ; $7b78: $6a
	ld   l, d                                        ; $7b79: $6a
	ld   l, d                                        ; $7b7a: $6a
	ld   l, d                                        ; $7b7b: $6a
	ld   l, d                                        ; $7b7c: $6a
	ld   l, d                                        ; $7b7d: $6a
	ld   l, d                                        ; $7b7e: $6a
	ld   l, d                                        ; $7b7f: $6a
	ld   l, d                                        ; $7b80: $6a
	ld   l, d                                        ; $7b81: $6a
	ld   l, d                                        ; $7b82: $6a
	ld   l, d                                        ; $7b83: $6a
	ld   l, d                                        ; $7b84: $6a
	ld   l, d                                        ; $7b85: $6a
	ld   l, d                                        ; $7b86: $6a
	ld   e, b                                        ; $7b87: $58
	ld   h, l                                        ; $7b88: $65
	ld   h, [hl]                                     ; $7b89: $66
	ld   l, h                                        ; $7b8a: $6c
	ld   l, l                                        ; $7b8b: $6d
	ld   l, [hl]                                     ; $7b8c: $6e
	ld   l, [hl]                                     ; $7b8d: $6e
	ld   l, [hl]                                     ; $7b8e: $6e
	ld   l, [hl]                                     ; $7b8f: $6e
	ld   l, [hl]                                     ; $7b90: $6e
	ld   l, [hl]                                     ; $7b91: $6e
	ld   l, [hl]                                     ; $7b92: $6e
	ld   l, [hl]                                     ; $7b93: $6e
	ld   l, [hl]                                     ; $7b94: $6e
	ld   l, [hl]                                     ; $7b95: $6e
	ld   l, [hl]                                     ; $7b96: $6e
	ld   l, [hl]                                     ; $7b97: $6e
	ld   l, [hl]                                     ; $7b98: $6e
	ld   l, [hl]                                     ; $7b99: $6e
	ld   l, [hl]                                     ; $7b9a: $6e
	ld   e, c                                        ; $7b9b: $59
	nop                                              ; $7b9c: $00
	ld   bc, $0302                                   ; $7b9d: $01 $02 $03
	inc  b                                           ; $7ba0: $04
	dec  b                                           ; $7ba1: $05
	ld   b, $07                                      ; $7ba2: $06 $07
	ld   [$0a09], sp                                 ; $7ba4: $08 $09 $0a
	dec  bc                                          ; $7ba7: $0b
	inc  c                                           ; $7ba8: $0c
	inc  c                                           ; $7ba9: $0c
	inc  c                                           ; $7baa: $0c
	inc  c                                           ; $7bab: $0c
	inc  b                                           ; $7bac: $04
	inc  c                                           ; $7bad: $0c
	inc  c                                           ; $7bae: $0c
	dec  b                                           ; $7baf: $05
	db   $10                                         ; $7bb0: $10
	ld   de, $1312                                   ; $7bb1: $11 $12 $13
	inc  d                                           ; $7bb4: $14
	dec  d                                           ; $7bb5: $15
	ld   d, $17                                      ; $7bb6: $16 $17
	jr   @+$1b                                       ; $7bb8: $18 $19

	ld   a, [de]                                     ; $7bba: $1a
	dec  de                                          ; $7bbb: $1b
	inc  e                                           ; $7bbc: $1c
	dec  e                                           ; $7bbd: $1d
	ld   e, $1f                                      ; $7bbe: $1e $1f
	ld   [hl], b                                     ; $7bc0: $70
	inc  c                                           ; $7bc1: $0c
	ld   [hl], d                                     ; $7bc2: $72
	ld   [hl], e                                     ; $7bc3: $73
	jr   nz, @+$23                                   ; $7bc4: $20 $21

	ld   [hl+], a                                    ; $7bc6: $22
	inc  hl                                          ; $7bc7: $23
	inc  h                                           ; $7bc8: $24
	dec  h                                           ; $7bc9: $25
	ld   h, $27                                      ; $7bca: $26 $27
	jr   z, jr_084_7bf7                              ; $7bcc: $28 $29

	ld   a, [hl+]                                    ; $7bce: $2a
	dec  hl                                          ; $7bcf: $2b
	inc  l                                           ; $7bd0: $2c
	dec  l                                           ; $7bd1: $2d
	ld   l, $2f                                      ; $7bd2: $2e $2f
	ld   [hl], h                                     ; $7bd4: $74
	ld   [hl], l                                     ; $7bd5: $75
	halt                                             ; $7bd6: $76
	ld   [hl], a                                     ; $7bd7: $77
	jr   nc, jr_084_7c0b                             ; $7bd8: $30 $31

	ld   [hl-], a                                    ; $7bda: $32
	inc  sp                                          ; $7bdb: $33
	inc  [hl]                                        ; $7bdc: $34
	dec  [hl]                                        ; $7bdd: $35
	ld   [hl], $37                                   ; $7bde: $36 $37
	jr   c, jr_084_7c1b                              ; $7be0: $38 $39

	ld   a, [hl-]                                    ; $7be2: $3a
	dec  sp                                          ; $7be3: $3b
	inc  a                                           ; $7be4: $3c
	dec  a                                           ; $7be5: $3d
	ld   a, $3f                                      ; $7be6: $3e $3f
	ld   a, b                                        ; $7be8: $78
	ld   a, c                                        ; $7be9: $79
	ld   a, d                                        ; $7bea: $7a
	ld   a, e                                        ; $7beb: $7b
	ld   b, b                                        ; $7bec: $40
	ld   b, c                                        ; $7bed: $41
	ld   b, d                                        ; $7bee: $42
	ld   b, e                                        ; $7bef: $43
	ld   b, h                                        ; $7bf0: $44
	ld   b, l                                        ; $7bf1: $45
	ld   b, [hl]                                     ; $7bf2: $46
	ld   b, a                                        ; $7bf3: $47
	ld   c, b                                        ; $7bf4: $48
	ld   c, c                                        ; $7bf5: $49
	dec  hl                                          ; $7bf6: $2b

jr_084_7bf7:
	ld   a, [bc]                                     ; $7bf7: $0a
	dec  bc                                          ; $7bf8: $0b
	dec  l                                           ; $7bf9: $2d
	ld   c, [hl]                                     ; $7bfa: $4e
	ld   c, a                                        ; $7bfb: $4f
	ld   a, h                                        ; $7bfc: $7c
	ld   a, l                                        ; $7bfd: $7d
	ld   a, [hl]                                     ; $7bfe: $7e
	ld   a, a                                        ; $7bff: $7f
	ld   d, b                                        ; $7c00: $50
	ld   d, c                                        ; $7c01: $51
	ld   d, d                                        ; $7c02: $52
	ld   d, e                                        ; $7c03: $53
	ld   d, h                                        ; $7c04: $54
	ld   d, l                                        ; $7c05: $55
	ld   d, [hl]                                     ; $7c06: $56
	ld   d, a                                        ; $7c07: $57
	ld   l, d                                        ; $7c08: $6a
	ld   l, d                                        ; $7c09: $6a
	inc  l                                           ; $7c0a: $2c

jr_084_7c0b:
	inc  h                                           ; $7c0b: $24
	ld   [de], a                                     ; $7c0c: $12
	ld   l, $5e                                      ; $7c0d: $2e $5e
	ld   e, a                                        ; $7c0f: $5f
	ld   [hl], c                                     ; $7c10: $71
	ld   l, d                                        ; $7c11: $6a
	ld   l, d                                        ; $7c12: $6a
	ld   e, b                                        ; $7c13: $58
	ld   h, b                                        ; $7c14: $60
	ld   h, c                                        ; $7c15: $61
	ld   h, d                                        ; $7c16: $62
	ld   h, e                                        ; $7c17: $63
	ld   h, h                                        ; $7c18: $64
	inc  c                                           ; $7c19: $0c
	inc  c                                           ; $7c1a: $0c

jr_084_7c1b:
	ld   h, a                                        ; $7c1b: $67
	ld   l, b                                        ; $7c1c: $68
	cpl                                              ; $7c1d: $2f
	jr   nc, jr_084_7c51                             ; $7c1e: $30 $31

	ld   [hl-], a                                    ; $7c20: $32
	inc  sp                                          ; $7c21: $33
	inc  c                                           ; $7c22: $0c
	ld   l, a                                        ; $7c23: $6f
	nop                                              ; $7c24: $00
	ld   bc, $0302                                   ; $7c25: $01 $02 $03
	inc  bc                                          ; $7c28: $03
	inc  bc                                          ; $7c29: $03
	inc  bc                                          ; $7c2a: $03
	inc  bc                                          ; $7c2b: $03
	inc  bc                                          ; $7c2c: $03
	inc  bc                                          ; $7c2d: $03
	inc  bc                                          ; $7c2e: $03
	inc  bc                                          ; $7c2f: $03
	inc  bc                                          ; $7c30: $03
	inc  bc                                          ; $7c31: $03
	inc  bc                                          ; $7c32: $03
	inc  bc                                          ; $7c33: $03
	inc  bc                                          ; $7c34: $03
	inc  bc                                          ; $7c35: $03
	inc  bc                                          ; $7c36: $03
	inc  bc                                          ; $7c37: $03
	inc  bc                                          ; $7c38: $03
	inc  bc                                          ; $7c39: $03
	inc  bc                                          ; $7c3a: $03
	inc  hl                                          ; $7c3b: $23
	inc  bc                                          ; $7c3c: $03
	inc  bc                                          ; $7c3d: $03
	inc  bc                                          ; $7c3e: $03
	inc  bc                                          ; $7c3f: $03
	inc  bc                                          ; $7c40: $03
	inc  bc                                          ; $7c41: $03
	inc  bc                                          ; $7c42: $03
	inc  bc                                          ; $7c43: $03
	inc  bc                                          ; $7c44: $03
	inc  bc                                          ; $7c45: $03
	inc  bc                                          ; $7c46: $03
	inc  bc                                          ; $7c47: $03
	inc  bc                                          ; $7c48: $03
	inc  bc                                          ; $7c49: $03
	inc  bc                                          ; $7c4a: $03
	inc  bc                                          ; $7c4b: $03
	inc  bc                                          ; $7c4c: $03
	inc  bc                                          ; $7c4d: $03
	inc  bc                                          ; $7c4e: $03
	inc  bc                                          ; $7c4f: $03
	inc  bc                                          ; $7c50: $03

jr_084_7c51:
	inc  bc                                          ; $7c51: $03
	inc  bc                                          ; $7c52: $03
	inc  bc                                          ; $7c53: $03
	inc  bc                                          ; $7c54: $03
	inc  bc                                          ; $7c55: $03
	inc  bc                                          ; $7c56: $03
	inc  bc                                          ; $7c57: $03
	inc  bc                                          ; $7c58: $03
	inc  bc                                          ; $7c59: $03
	inc  bc                                          ; $7c5a: $03
	inc  bc                                          ; $7c5b: $03
	inc  bc                                          ; $7c5c: $03
	inc  bc                                          ; $7c5d: $03
	inc  bc                                          ; $7c5e: $03
	inc  bc                                          ; $7c5f: $03
	inc  bc                                          ; $7c60: $03
	inc  bc                                          ; $7c61: $03
	inc  bc                                          ; $7c62: $03
	inc  bc                                          ; $7c63: $03
	inc  b                                           ; $7c64: $04
	inc  b                                           ; $7c65: $04
	inc  b                                           ; $7c66: $04
	inc  b                                           ; $7c67: $04
	inc  b                                           ; $7c68: $04
	inc  bc                                          ; $7c69: $03
	inc  b                                           ; $7c6a: $04
	inc  b                                           ; $7c6b: $04
	inc  b                                           ; $7c6c: $04
	inc  b                                           ; $7c6d: $04
	inc  b                                           ; $7c6e: $04
	inc  b                                           ; $7c6f: $04
	inc  bc                                          ; $7c70: $03
	inc  bc                                          ; $7c71: $03
	inc  bc                                          ; $7c72: $03
	inc  bc                                          ; $7c73: $03
	dec  c                                           ; $7c74: $0d
	inc  bc                                          ; $7c75: $03
	inc  bc                                          ; $7c76: $03
	dec  c                                           ; $7c77: $0d
	inc  b                                           ; $7c78: $04
	inc  b                                           ; $7c79: $04
	inc  b                                           ; $7c7a: $04
	inc  b                                           ; $7c7b: $04
	inc  b                                           ; $7c7c: $04
	inc  b                                           ; $7c7d: $04
	inc  b                                           ; $7c7e: $04
	inc  b                                           ; $7c7f: $04
	inc  b                                           ; $7c80: $04
	inc  b                                           ; $7c81: $04
	inc  b                                           ; $7c82: $04
	inc  b                                           ; $7c83: $04
	dec  b                                           ; $7c84: $05
	dec  b                                           ; $7c85: $05
	dec  b                                           ; $7c86: $05
	dec  b                                           ; $7c87: $05
	dec  b                                           ; $7c88: $05
	inc  bc                                          ; $7c89: $03
	dec  b                                           ; $7c8a: $05
	dec  b                                           ; $7c8b: $05
	inc  b                                           ; $7c8c: $04
	inc  b                                           ; $7c8d: $04
	inc  b                                           ; $7c8e: $04
	inc  b                                           ; $7c8f: $04
	inc  b                                           ; $7c90: $04
	inc  b                                           ; $7c91: $04
	inc  b                                           ; $7c92: $04
	inc  b                                           ; $7c93: $04
	inc  b                                           ; $7c94: $04
	inc  b                                           ; $7c95: $04
	inc  b                                           ; $7c96: $04
	inc  b                                           ; $7c97: $04
	dec  b                                           ; $7c98: $05
	dec  b                                           ; $7c99: $05
	dec  b                                           ; $7c9a: $05
	dec  b                                           ; $7c9b: $05
	dec  b                                           ; $7c9c: $05
	dec  b                                           ; $7c9d: $05
	dec  b                                           ; $7c9e: $05
	dec  b                                           ; $7c9f: $05
	inc  b                                           ; $7ca0: $04
	inc  b                                           ; $7ca1: $04
	inc  b                                           ; $7ca2: $04
	inc  b                                           ; $7ca3: $04
	inc  b                                           ; $7ca4: $04
	inc  b                                           ; $7ca5: $04
	inc  b                                           ; $7ca6: $04
	inc  b                                           ; $7ca7: $04
	inc  b                                           ; $7ca8: $04
	inc  b                                           ; $7ca9: $04
	inc  b                                           ; $7caa: $04
	inc  b                                           ; $7cab: $04
	dec  b                                           ; $7cac: $05
	dec  b                                           ; $7cad: $05
	dec  b                                           ; $7cae: $05
	dec  b                                           ; $7caf: $05
	dec  b                                           ; $7cb0: $05
	dec  b                                           ; $7cb1: $05
	dec  b                                           ; $7cb2: $05
	dec  b                                           ; $7cb3: $05
	dec  b                                           ; $7cb4: $05
	dec  b                                           ; $7cb5: $05
	dec  b                                           ; $7cb6: $05
	dec  b                                           ; $7cb7: $05
	dec  b                                           ; $7cb8: $05
	dec  b                                           ; $7cb9: $05
	dec  b                                           ; $7cba: $05
	dec  b                                           ; $7cbb: $05
	dec  b                                           ; $7cbc: $05
	dec  b                                           ; $7cbd: $05
	dec  c                                           ; $7cbe: $0d
	dec  c                                           ; $7cbf: $0d
	dec  c                                           ; $7cc0: $0d
	dec  c                                           ; $7cc1: $0d
	dec  b                                           ; $7cc2: $05
	dec  b                                           ; $7cc3: $05
	dec  b                                           ; $7cc4: $05
	dec  b                                           ; $7cc5: $05
	dec  b                                           ; $7cc6: $05
	dec  b                                           ; $7cc7: $05
	dec  b                                           ; $7cc8: $05
	dec  b                                           ; $7cc9: $05
	dec  b                                           ; $7cca: $05
	dec  b                                           ; $7ccb: $05
	dec  b                                           ; $7ccc: $05
	dec  b                                           ; $7ccd: $05
	dec  b                                           ; $7cce: $05
	dec  b                                           ; $7ccf: $05
	dec  b                                           ; $7cd0: $05
	dec  b                                           ; $7cd1: $05
	dec  c                                           ; $7cd2: $0d
	dec  c                                           ; $7cd3: $0d
	dec  c                                           ; $7cd4: $0d
	dec  c                                           ; $7cd5: $0d
	dec  b                                           ; $7cd6: $05
	dec  b                                           ; $7cd7: $05
	dec  b                                           ; $7cd8: $05
	dec  b                                           ; $7cd9: $05
	dec  b                                           ; $7cda: $05
	dec  b                                           ; $7cdb: $05
	dec  b                                           ; $7cdc: $05
	dec  b                                           ; $7cdd: $05
	dec  b                                           ; $7cde: $05
	dec  b                                           ; $7cdf: $05
	dec  b                                           ; $7ce0: $05
	inc  bc                                          ; $7ce1: $03
	inc  bc                                          ; $7ce2: $03
	dec  b                                           ; $7ce3: $05
	dec  b                                           ; $7ce4: $05
	dec  c                                           ; $7ce5: $0d
	dec  c                                           ; $7ce6: $0d
	dec  c                                           ; $7ce7: $0d
	dec  c                                           ; $7ce8: $0d
	dec  c                                           ; $7ce9: $0d
	inc  bc                                          ; $7cea: $03
	dec  b                                           ; $7ceb: $05
	dec  c                                           ; $7cec: $0d
	dec  c                                           ; $7ced: $0d
	dec  c                                           ; $7cee: $0d
	dec  c                                           ; $7cef: $0d
	dec  c                                           ; $7cf0: $0d
	ld   c, $0e                                      ; $7cf1: $0e $0e
	ld   c, $0e                                      ; $7cf3: $0e $0e
	ld   c, $0e                                      ; $7cf5: $0e $0e
	ld   c, $0e                                      ; $7cf7: $0e $0e
	ld   c, $0e                                      ; $7cf9: $0e $0e
	ld   c, $0e                                      ; $7cfb: $0e $0e
	ld   c, $0e                                      ; $7cfd: $0e $0e
	ld   c, $0e                                      ; $7cff: $0e $0e
	ld   c, $0e                                      ; $7d01: $0e $0e
	dec  c                                           ; $7d03: $0d
	rrca                                             ; $7d04: $0f
	ld   l, d                                        ; $7d05: $6a
	ld   l, d                                        ; $7d06: $6a
	ld   l, d                                        ; $7d07: $6a
	ld   l, d                                        ; $7d08: $6a
	ld   l, d                                        ; $7d09: $6a
	ld   l, d                                        ; $7d0a: $6a
	ld   l, d                                        ; $7d0b: $6a
	ld   l, d                                        ; $7d0c: $6a
	ld   l, d                                        ; $7d0d: $6a
	ld   l, d                                        ; $7d0e: $6a
	ld   l, d                                        ; $7d0f: $6a
	ld   l, d                                        ; $7d10: $6a
	ld   l, d                                        ; $7d11: $6a
	ld   l, d                                        ; $7d12: $6a
	ld   l, d                                        ; $7d13: $6a
	ld   l, d                                        ; $7d14: $6a
	ld   l, d                                        ; $7d15: $6a
	ld   l, d                                        ; $7d16: $6a
	ld   e, b                                        ; $7d17: $58
	ld   h, l                                        ; $7d18: $65
	ld   h, [hl]                                     ; $7d19: $66
	ld   l, h                                        ; $7d1a: $6c
	ld   l, l                                        ; $7d1b: $6d
	ld   l, [hl]                                     ; $7d1c: $6e
	ld   l, [hl]                                     ; $7d1d: $6e
	ld   l, [hl]                                     ; $7d1e: $6e
	ld   l, [hl]                                     ; $7d1f: $6e
	ld   l, [hl]                                     ; $7d20: $6e
	ld   l, [hl]                                     ; $7d21: $6e
	ld   l, [hl]                                     ; $7d22: $6e
	ld   l, [hl]                                     ; $7d23: $6e
	ld   l, [hl]                                     ; $7d24: $6e
	ld   l, [hl]                                     ; $7d25: $6e
	ld   l, [hl]                                     ; $7d26: $6e
	ld   l, [hl]                                     ; $7d27: $6e
	ld   l, [hl]                                     ; $7d28: $6e
	ld   l, [hl]                                     ; $7d29: $6e
	ld   l, [hl]                                     ; $7d2a: $6e
	ld   e, c                                        ; $7d2b: $59
	nop                                              ; $7d2c: $00
	ld   bc, $0302                                   ; $7d2d: $01 $02 $03
	inc  b                                           ; $7d30: $04
	dec  b                                           ; $7d31: $05
	ld   b, $07                                      ; $7d32: $06 $07
	ld   [$0a09], sp                                 ; $7d34: $08 $09 $0a
	dec  bc                                          ; $7d37: $0b
	inc  c                                           ; $7d38: $0c
	inc  c                                           ; $7d39: $0c
	inc  c                                           ; $7d3a: $0c
	inc  c                                           ; $7d3b: $0c
	inc  b                                           ; $7d3c: $04
	inc  c                                           ; $7d3d: $0c
	inc  c                                           ; $7d3e: $0c
	dec  b                                           ; $7d3f: $05
	db   $10                                         ; $7d40: $10
	ld   de, $1312                                   ; $7d41: $11 $12 $13
	inc  d                                           ; $7d44: $14
	dec  d                                           ; $7d45: $15
	ld   d, $17                                      ; $7d46: $16 $17
	jr   @+$1b                                       ; $7d48: $18 $19

	ld   a, [de]                                     ; $7d4a: $1a
	dec  de                                          ; $7d4b: $1b
	inc  e                                           ; $7d4c: $1c
	dec  e                                           ; $7d4d: $1d
	ld   e, $1f                                      ; $7d4e: $1e $1f
	ld   [hl], b                                     ; $7d50: $70
	inc  c                                           ; $7d51: $0c
	ld   [hl], d                                     ; $7d52: $72
	ld   [hl], e                                     ; $7d53: $73
	jr   nz, @+$23                                   ; $7d54: $20 $21

	ld   [hl+], a                                    ; $7d56: $22
	inc  hl                                          ; $7d57: $23
	inc  h                                           ; $7d58: $24
	dec  h                                           ; $7d59: $25
	ld   h, $27                                      ; $7d5a: $26 $27
	jr   z, jr_084_7d87                              ; $7d5c: $28 $29

	ld   a, [hl+]                                    ; $7d5e: $2a
	dec  hl                                          ; $7d5f: $2b
	inc  l                                           ; $7d60: $2c
	dec  l                                           ; $7d61: $2d
	ld   l, $2f                                      ; $7d62: $2e $2f
	ld   [hl], h                                     ; $7d64: $74
	ld   [hl], l                                     ; $7d65: $75
	halt                                             ; $7d66: $76
	ld   [hl], a                                     ; $7d67: $77
	jr   nc, jr_084_7d9b                             ; $7d68: $30 $31

	ld   [hl-], a                                    ; $7d6a: $32
	inc  sp                                          ; $7d6b: $33
	inc  [hl]                                        ; $7d6c: $34
	dec  [hl]                                        ; $7d6d: $35
	ld   [hl], $37                                   ; $7d6e: $36 $37
	jr   c, jr_084_7dab                              ; $7d70: $38 $39

	ld   a, [hl-]                                    ; $7d72: $3a
	dec  sp                                          ; $7d73: $3b
	inc  a                                           ; $7d74: $3c
	dec  a                                           ; $7d75: $3d
	ld   a, $3f                                      ; $7d76: $3e $3f
	ld   a, b                                        ; $7d78: $78
	inc  [hl]                                        ; $7d79: $34
	dec  [hl]                                        ; $7d7a: $35
	ld   [hl], $40                                   ; $7d7b: $36 $40
	ld   b, c                                        ; $7d7d: $41
	ld   b, d                                        ; $7d7e: $42
	ld   b, e                                        ; $7d7f: $43
	ld   b, h                                        ; $7d80: $44
	ld   b, l                                        ; $7d81: $45
	ld   b, [hl]                                     ; $7d82: $46
	ld   b, a                                        ; $7d83: $47
	ld   c, b                                        ; $7d84: $48
	ld   c, c                                        ; $7d85: $49
	dec  hl                                          ; $7d86: $2b

jr_084_7d87:
	ld   a, [bc]                                     ; $7d87: $0a
	dec  bc                                          ; $7d88: $0b
	dec  l                                           ; $7d89: $2d
	ld   c, [hl]                                     ; $7d8a: $4e
	scf                                              ; $7d8b: $37
	jr   c, jr_084_7dc7                              ; $7d8c: $38 $39

	ld   a, [hl-]                                    ; $7d8e: $3a
	dec  sp                                          ; $7d8f: $3b
	ld   d, b                                        ; $7d90: $50
	ld   d, c                                        ; $7d91: $51
	ld   d, d                                        ; $7d92: $52
	ld   d, e                                        ; $7d93: $53
	ld   d, h                                        ; $7d94: $54
	ld   d, l                                        ; $7d95: $55
	ld   d, [hl]                                     ; $7d96: $56
	ld   d, a                                        ; $7d97: $57
	ld   l, d                                        ; $7d98: $6a
	ld   l, d                                        ; $7d99: $6a
	inc  l                                           ; $7d9a: $2c

jr_084_7d9b:
	inc  h                                           ; $7d9b: $24
	ld   [de], a                                     ; $7d9c: $12
	ld   l, $5e                                      ; $7d9d: $2e $5e
	inc  a                                           ; $7d9f: $3c
	dec  a                                           ; $7da0: $3d
	ld   a, $3f                                      ; $7da1: $3e $3f
	ld   b, b                                        ; $7da3: $40
	ld   h, b                                        ; $7da4: $60
	ld   h, c                                        ; $7da5: $61
	ld   h, d                                        ; $7da6: $62
	ld   h, e                                        ; $7da7: $63
	ld   h, h                                        ; $7da8: $64
	inc  c                                           ; $7da9: $0c
	inc  c                                           ; $7daa: $0c

jr_084_7dab:
	ld   h, a                                        ; $7dab: $67
	ld   l, b                                        ; $7dac: $68
	cpl                                              ; $7dad: $2f
	jr   nc, jr_084_7de1                             ; $7dae: $30 $31

	ld   [hl-], a                                    ; $7db0: $32
	inc  sp                                          ; $7db1: $33
	inc  c                                           ; $7db2: $0c
	ld   b, c                                        ; $7db3: $41
	ld   b, d                                        ; $7db4: $42
	ld   b, e                                        ; $7db5: $43
	ld   b, h                                        ; $7db6: $44
	ld   b, l                                        ; $7db7: $45
	inc  bc                                          ; $7db8: $03
	inc  bc                                          ; $7db9: $03
	inc  bc                                          ; $7dba: $03
	inc  bc                                          ; $7dbb: $03
	inc  bc                                          ; $7dbc: $03
	inc  bc                                          ; $7dbd: $03
	inc  bc                                          ; $7dbe: $03
	inc  bc                                          ; $7dbf: $03
	inc  bc                                          ; $7dc0: $03
	inc  bc                                          ; $7dc1: $03
	inc  bc                                          ; $7dc2: $03
	inc  bc                                          ; $7dc3: $03
	inc  bc                                          ; $7dc4: $03
	inc  bc                                          ; $7dc5: $03
	inc  bc                                          ; $7dc6: $03

jr_084_7dc7:
	inc  bc                                          ; $7dc7: $03
	inc  bc                                          ; $7dc8: $03
	inc  bc                                          ; $7dc9: $03
	inc  bc                                          ; $7dca: $03
	inc  hl                                          ; $7dcb: $23
	inc  bc                                          ; $7dcc: $03
	inc  bc                                          ; $7dcd: $03
	inc  bc                                          ; $7dce: $03
	inc  bc                                          ; $7dcf: $03
	inc  bc                                          ; $7dd0: $03
	inc  bc                                          ; $7dd1: $03
	inc  bc                                          ; $7dd2: $03
	inc  bc                                          ; $7dd3: $03
	inc  bc                                          ; $7dd4: $03
	inc  bc                                          ; $7dd5: $03
	inc  bc                                          ; $7dd6: $03
	inc  bc                                          ; $7dd7: $03
	inc  bc                                          ; $7dd8: $03
	inc  bc                                          ; $7dd9: $03
	inc  bc                                          ; $7dda: $03
	inc  bc                                          ; $7ddb: $03
	inc  bc                                          ; $7ddc: $03
	inc  bc                                          ; $7ddd: $03
	inc  bc                                          ; $7dde: $03
	inc  bc                                          ; $7ddf: $03
	inc  bc                                          ; $7de0: $03

jr_084_7de1:
	inc  bc                                          ; $7de1: $03
	inc  bc                                          ; $7de2: $03
	inc  bc                                          ; $7de3: $03
	inc  bc                                          ; $7de4: $03
	inc  bc                                          ; $7de5: $03
	inc  bc                                          ; $7de6: $03
	inc  bc                                          ; $7de7: $03
	inc  bc                                          ; $7de8: $03
	inc  bc                                          ; $7de9: $03
	inc  bc                                          ; $7dea: $03
	inc  bc                                          ; $7deb: $03
	inc  bc                                          ; $7dec: $03
	inc  bc                                          ; $7ded: $03
	inc  bc                                          ; $7dee: $03
	inc  bc                                          ; $7def: $03
	inc  bc                                          ; $7df0: $03
	inc  bc                                          ; $7df1: $03
	inc  bc                                          ; $7df2: $03
	inc  bc                                          ; $7df3: $03
	inc  b                                           ; $7df4: $04
	inc  b                                           ; $7df5: $04
	inc  b                                           ; $7df6: $04
	inc  b                                           ; $7df7: $04
	inc  b                                           ; $7df8: $04
	inc  bc                                          ; $7df9: $03
	inc  b                                           ; $7dfa: $04
	inc  b                                           ; $7dfb: $04
	inc  b                                           ; $7dfc: $04
	inc  b                                           ; $7dfd: $04
	inc  b                                           ; $7dfe: $04
	inc  b                                           ; $7dff: $04
	inc  bc                                          ; $7e00: $03
	inc  bc                                          ; $7e01: $03
	inc  bc                                          ; $7e02: $03
	inc  bc                                          ; $7e03: $03
	dec  c                                           ; $7e04: $0d
	inc  bc                                          ; $7e05: $03
	inc  bc                                          ; $7e06: $03
	dec  c                                           ; $7e07: $0d
	inc  b                                           ; $7e08: $04
	inc  b                                           ; $7e09: $04
	inc  b                                           ; $7e0a: $04
	inc  b                                           ; $7e0b: $04
	inc  b                                           ; $7e0c: $04
	inc  b                                           ; $7e0d: $04
	inc  b                                           ; $7e0e: $04
	inc  b                                           ; $7e0f: $04
	inc  b                                           ; $7e10: $04
	inc  b                                           ; $7e11: $04
	inc  b                                           ; $7e12: $04
	inc  b                                           ; $7e13: $04
	dec  b                                           ; $7e14: $05
	dec  b                                           ; $7e15: $05
	dec  b                                           ; $7e16: $05
	dec  b                                           ; $7e17: $05
	dec  b                                           ; $7e18: $05
	inc  bc                                          ; $7e19: $03
	dec  b                                           ; $7e1a: $05
	dec  b                                           ; $7e1b: $05
	inc  b                                           ; $7e1c: $04
	inc  b                                           ; $7e1d: $04
	inc  b                                           ; $7e1e: $04
	inc  b                                           ; $7e1f: $04
	inc  b                                           ; $7e20: $04
	inc  b                                           ; $7e21: $04
	inc  b                                           ; $7e22: $04
	inc  b                                           ; $7e23: $04
	inc  b                                           ; $7e24: $04
	inc  b                                           ; $7e25: $04
	inc  b                                           ; $7e26: $04
	inc  b                                           ; $7e27: $04
	dec  b                                           ; $7e28: $05
	dec  b                                           ; $7e29: $05
	dec  b                                           ; $7e2a: $05
	dec  b                                           ; $7e2b: $05
	dec  b                                           ; $7e2c: $05
	dec  b                                           ; $7e2d: $05
	dec  b                                           ; $7e2e: $05
	dec  b                                           ; $7e2f: $05
	inc  b                                           ; $7e30: $04
	inc  b                                           ; $7e31: $04
	inc  b                                           ; $7e32: $04
	inc  b                                           ; $7e33: $04
	inc  b                                           ; $7e34: $04
	inc  b                                           ; $7e35: $04
	inc  b                                           ; $7e36: $04
	inc  b                                           ; $7e37: $04
	inc  b                                           ; $7e38: $04
	inc  b                                           ; $7e39: $04
	inc  b                                           ; $7e3a: $04
	inc  b                                           ; $7e3b: $04
	dec  b                                           ; $7e3c: $05
	dec  b                                           ; $7e3d: $05
	dec  b                                           ; $7e3e: $05
	dec  b                                           ; $7e3f: $05
	dec  b                                           ; $7e40: $05
	dec  c                                           ; $7e41: $0d
	dec  c                                           ; $7e42: $0d
	dec  c                                           ; $7e43: $0d
	dec  b                                           ; $7e44: $05
	dec  b                                           ; $7e45: $05
	dec  b                                           ; $7e46: $05
	dec  b                                           ; $7e47: $05
	dec  b                                           ; $7e48: $05
	dec  b                                           ; $7e49: $05
	dec  b                                           ; $7e4a: $05
	dec  b                                           ; $7e4b: $05
	dec  b                                           ; $7e4c: $05
	dec  b                                           ; $7e4d: $05
	dec  c                                           ; $7e4e: $0d
	dec  c                                           ; $7e4f: $0d
	dec  c                                           ; $7e50: $0d
	dec  c                                           ; $7e51: $0d
	dec  b                                           ; $7e52: $05
	dec  c                                           ; $7e53: $0d
	dec  c                                           ; $7e54: $0d
	dec  c                                           ; $7e55: $0d
	dec  c                                           ; $7e56: $0d
	dec  c                                           ; $7e57: $0d
	dec  b                                           ; $7e58: $05
	dec  b                                           ; $7e59: $05
	dec  b                                           ; $7e5a: $05
	dec  b                                           ; $7e5b: $05
	dec  b                                           ; $7e5c: $05
	dec  b                                           ; $7e5d: $05
	dec  b                                           ; $7e5e: $05
	dec  b                                           ; $7e5f: $05
	dec  b                                           ; $7e60: $05
	dec  b                                           ; $7e61: $05
	dec  c                                           ; $7e62: $0d
	dec  c                                           ; $7e63: $0d
	dec  c                                           ; $7e64: $0d
	dec  c                                           ; $7e65: $0d
	dec  b                                           ; $7e66: $05
	dec  c                                           ; $7e67: $0d
	dec  c                                           ; $7e68: $0d
	dec  c                                           ; $7e69: $0d
	dec  c                                           ; $7e6a: $0d
	dec  c                                           ; $7e6b: $0d
	dec  b                                           ; $7e6c: $05
	dec  b                                           ; $7e6d: $05
	dec  b                                           ; $7e6e: $05
	dec  b                                           ; $7e6f: $05
	dec  b                                           ; $7e70: $05
	inc  bc                                          ; $7e71: $03
	inc  bc                                          ; $7e72: $03
	dec  b                                           ; $7e73: $05
	dec  b                                           ; $7e74: $05
	dec  c                                           ; $7e75: $0d
	dec  c                                           ; $7e76: $0d
	dec  c                                           ; $7e77: $0d
	dec  c                                           ; $7e78: $0d
	dec  c                                           ; $7e79: $0d
	inc  bc                                          ; $7e7a: $03
	dec  c                                           ; $7e7b: $0d
	dec  c                                           ; $7e7c: $0d
	dec  c                                           ; $7e7d: $0d
	dec  c                                           ; $7e7e: $0d
	dec  c                                           ; $7e7f: $0d
	ld   l, h                                        ; $7e80: $6c
	nop                                              ; $7e81: $00
	add  hl, bc                                      ; $7e82: $09
	rra                                              ; $7e83: $1f
	rrca                                             ; $7e84: $0f
	ld   c, a                                        ; $7e85: $4f
	rrca                                             ; $7e86: $0f
	ld   c, $0d                                      ; $7e87: $0e $0d
	rrca                                             ; $7e89: $0f
	ld   c, e                                        ; $7e8a: $4b
	ld   b, e                                        ; $7e8b: $43
	ld   d, e                                        ; $7e8c: $53
	add  b                                           ; $7e8d: $80
	ld   e, a                                        ; $7e8e: $5f
	inc  b                                           ; $7e8f: $04
	ld   d, a                                        ; $7e90: $57
	ld   e, a                                        ; $7e91: $5f
	rst  $28                                         ; $7e92: $ef
	rst  $38                                         ; $7e93: $ff
	ret  c                                           ; $7e94: $d8

	adc  l                                           ; $7e95: $8d
	ccf                                              ; $7e96: $3f
	nop                                              ; $7e97: $00
	rlca                                             ; $7e98: $07
	add  c                                           ; $7e99: $81
	db   $fd                                         ; $7e9a: $fd
	add  b                                           ; $7e9b: $80
	db   $fc                                         ; $7e9c: $fc
	ld   bc, $04fe                                   ; $7e9d: $01 $fe $04
	add  b                                           ; $7ea0: $80
	nop                                              ; $7ea1: $00
	inc  bc                                          ; $7ea2: $03
	ld   [$7060], sp                                 ; $7ea3: $08 $60 $70
	ld   h, b                                        ; $7ea6: $60
	add  b                                           ; $7ea7: $80
	ld   b, c                                        ; $7ea8: $41
	ld   bc, $8201                                   ; $7ea9: $01 $01 $82
	add  b                                           ; $7eac: $80
	ld   b, $80                                      ; $7ead: $06 $80
	ld   c, $0a                                      ; $7eaf: $0e $0a
	ld   [de], a                                     ; $7eb1: $12
	ld   e, $2a                                      ; $7eb2: $1e $2a
	ld   a, [hl-]                                    ; $7eb4: $3a
	ld   c, d                                        ; $7eb5: $4a
	ld   l, d                                        ; $7eb6: $6a
	jp   nz, $8082                                   ; $7eb7: $c2 $82 $80

	cp   a                                           ; $7eba: $bf
	rst  $38                                         ; $7ebb: $ff
	add  c                                           ; $7ebc: $81
	ld   a, h                                        ; $7ebd: $7c
	add  b                                           ; $7ebe: $80
	ld   c, h                                        ; $7ebf: $4c
	ld   a, [bc]                                     ; $7ec0: $0a
	inc  d                                           ; $7ec1: $14
	inc  a                                           ; $7ec2: $3c

jr_084_7ec3:
	ld   l, b                                        ; $7ec3: $68
	ld   c, c                                        ; $7ec4: $49
	add  hl, bc                                      ; $7ec5: $09
	ccf                                              ; $7ec6: $3f
	rlca                                             ; $7ec7: $07
	ld   a, a                                        ; $7ec8: $7f
	ld   l, b                                        ; $7ec9: $68
	ld   a, a                                        ; $7eca: $7f
	ld   l, h                                        ; $7ecb: $6c
	add  b                                           ; $7ecc: $80
	inc  a                                           ; $7ecd: $3c
	ld   b, $7b                                      ; $7ece: $06 $7b
	ld   a, b                                        ; $7ed0: $78
	add  e                                           ; $7ed1: $83
	add  a                                           ; $7ed2: $87
	rst  $38                                         ; $7ed3: $ff
	rst  $30                                         ; $7ed4: $f7
	rst  $38                                         ; $7ed5: $ff
	add  b                                           ; $7ed6: $80
	cp   $00                                         ; $7ed7: $fe $00
	db   $ec                                         ; $7ed9: $ec
	add  b                                           ; $7eda: $80
	db   $fc                                         ; $7edb: $fc
	nop                                              ; $7edc: $00

jr_084_7edd:
	inc  e                                           ; $7edd: $1c
	add  b                                           ; $7ede: $80
	nop                                              ; $7edf: $00
	inc  bc                                          ; $7ee0: $03
	jr   nz, jr_084_7ec3                             ; $7ee1: $20 $e0

	jr   c, jr_084_7edd                              ; $7ee3: $38 $f8

	add  b                                           ; $7ee5: $80
	adc  h                                           ; $7ee6: $8c
	add  b                                           ; $7ee7: $80
	nop                                              ; $7ee8: $00
	add  b                                           ; $7ee9: $80
	ld   [hl-], a                                    ; $7eea: $32
	dec  b                                           ; $7eeb: $05
	nop                                              ; $7eec: $00
	ld   h, b                                        ; $7eed: $60
	ldh  [c], a                                      ; $7eee: $e2
	add  d                                           ; $7eef: $82
	rst  $28                                         ; $7ef0: $ef
	ldh  [$82], a                                    ; $7ef1: $e0 $82
	ret  nz                                          ; $7ef3: $c0

	add  b                                           ; $7ef4: $80
	add  b                                           ; $7ef5: $80
	add  b                                           ; $7ef6: $80
	sub  b                                           ; $7ef7: $90
	add  b                                           ; $7ef8: $80
	or   b                                           ; $7ef9: $b0
	add  b                                           ; $7efa: $80
	ld   [hl], b                                     ; $7efb: $70
	add  b                                           ; $7efc: $80

jr_084_7efd:
	ld   h, b                                        ; $7efd: $60
	nop                                              ; $7efe: $00
	rst  $38                                         ; $7eff: $ff
	adc  b                                           ; $7f00: $88
	ld   c, $80                                      ; $7f01: $0e $80
	inc  c                                           ; $7f03: $0c
	add  b                                           ; $7f04: $80
	inc  bc                                          ; $7f05: $03
	ld   bc, $ff0f                                   ; $7f06: $01 $0f $ff
	add  [hl]                                        ; $7f09: $86
	or   b                                           ; $7f0a: $b0
	add  [hl]                                        ; $7f0b: $86
	cp   a                                           ; $7f0c: $bf
	add  [hl]                                        ; $7f0d: $86
	nop                                              ; $7f0e: $00
	add  l                                           ; $7f0f: $85
	rst  $38                                         ; $7f10: $ff
	ld   bc, $18e7                                   ; $7f11: $01 $e7 $18
	add  d                                           ; $7f14: $82
	db   $10                                         ; $7f15: $10
	add  c                                           ; $7f16: $81
	nop                                              ; $7f17: $00
	add  l                                           ; $7f18: $85
	rst  $38                                         ; $7f19: $ff
	ld   bc, $3ac5                                   ; $7f1a: $01 $c5 $3a
	add  b                                           ; $7f1d: $80
	ld   a, d                                        ; $7f1e: $7a
	add  b                                           ; $7f1f: $80
	add  $81                                         ; $7f20: $c6 $81
	ld   [bc], a                                     ; $7f22: $02
	ld   [$f0f2], sp                                 ; $7f23: $08 $f2 $f0
	and  b                                           ; $7f26: $a0
	sbc  h                                           ; $7f27: $9c
	add  d                                           ; $7f28: $82
	cp   [hl]                                        ; $7f29: $be
	ret  nz                                          ; $7f2a: $c0

	adc  a                                           ; $7f2b: $8f
	ld   b, b                                        ; $7f2c: $40
	add  b                                           ; $7f2d: $80
	jr   nc, @-$7e                                   ; $7f2e: $30 $80

	ld   [hl], b                                     ; $7f30: $70
	add  b                                           ; $7f31: $80
	ld   b, b                                        ; $7f32: $40
	nop                                              ; $7f33: $00
	nop                                              ; $7f34: $00
	add  d                                           ; $7f35: $82
	db   $10                                         ; $7f36: $10
	add  c                                           ; $7f37: $81
	nop                                              ; $7f38: $00
	nop                                              ; $7f39: $00
	rst  $38                                         ; $7f3a: $ff
	add  b                                           ; $7f3b: $80
	rrca                                             ; $7f3c: $0f
	add  b                                           ; $7f3d: $80
	ld   [$0780], sp                                 ; $7f3e: $08 $80 $07
	add  b                                           ; $7f41: $80
	rrca                                             ; $7f42: $0f
	add  b                                           ; $7f43: $80
	ld   [$0705], sp                                 ; $7f44: $08 $05 $07
	inc  b                                           ; $7f47: $04
	rrca                                             ; $7f48: $0f
	inc  bc                                          ; $7f49: $03
	rrca                                             ; $7f4a: $0f
	ldh  a, [$80]                                    ; $7f4b: $f0 $80
	nop                                              ; $7f4d: $00
	add  b                                           ; $7f4e: $80
	ccf                                              ; $7f4f: $3f
	add  b                                           ; $7f50: $80
	cp   a                                           ; $7f51: $bf
	add  b                                           ; $7f52: $80
	ccf                                              ; $7f53: $3f
	add  b                                           ; $7f54: $80
	nop                                              ; $7f55: $00
	ld   bc, $40bf                                   ; $7f56: $01 $bf $40
	add  c                                           ; $7f59: $81
	rst  $38                                         ; $7f5a: $ff
	add  c                                           ; $7f5b: $81
	nop                                              ; $7f5c: $00
	add  h                                           ; $7f5d: $84
	rst  $38                                         ; $7f5e: $ff
	add  b                                           ; $7f5f: $80
	nop                                              ; $7f60: $00
	ld   bc, $00ff                                   ; $7f61: $01 $ff $00
	add  c                                           ; $7f64: $81
	rst  $38                                         ; $7f65: $ff
	inc  bc                                          ; $7f66: $03
	jr   nc, jr_084_7f78                             ; $7f67: $30 $0f

	ld   c, a                                        ; $7f69: $4f
	adc  a                                           ; $7f6a: $8f
	add  d                                           ; $7f6b: $82
	sbc  a                                           ; $7f6c: $9f
	nop                                              ; $7f6d: $00
	rst  JumpTable                                         ; $7f6e: $df
	add  b                                           ; $7f6f: $80
	rra                                              ; $7f70: $1f
	dec  b                                           ; $7f71: $05
	sbc  $3e                                         ; $7f72: $de $3e
	cp   $de                                         ; $7f74: $fe $de
	db   $fc                                         ; $7f76: $fc
	inc  bc                                          ; $7f77: $03

jr_084_7f78:
	add  a                                           ; $7f78: $87
	db   $10                                         ; $7f79: $10
	add  d                                           ; $7f7a: $82
	jr   nc, jr_084_7efd                             ; $7f7b: $30 $80

	ld   [hl], b                                     ; $7f7d: $70
	ld   [bc], a                                     ; $7f7e: $02
	db   $fc                                         ; $7f7f: $fc
	rrca                                             ; $7f80: $0f
	inc  bc                                          ; $7f81: $03
	adc  h                                           ; $7f82: $8c
	rrca                                             ; $7f83: $0f
	adc  l                                           ; $7f84: $8d
	rst  $38                                         ; $7f85: $ff
	inc  b                                           ; $7f86: $04
	ldh  [rIE], a                                    ; $7f87: $e0 $ff
	rst  $28                                         ; $7f89: $ef
	rst  $38                                         ; $7f8a: $ff
	ldh  a, [$89]                                    ; $7f8b: $f0 $89
	rst  $38                                         ; $7f8d: $ff
	inc  b                                           ; $7f8e: $04
	rra                                              ; $7f8f: $1f
	ldh  a, [$d0]                                    ; $7f90: $f0 $d0
	ldh  a, [$30]                                    ; $7f92: $f0 $30
	adc  d                                           ; $7f94: $8a
	ldh  a, [rIE]                                    ; $7f95: $f0 $ff
	nop                                              ; $7f97: $00
	rst  $38                                         ; $7f98: $ff
	nop                                              ; $7f99: $00
	rst  $38                                         ; $7f9a: $ff
	nop                                              ; $7f9b: $00
	rst  $38                                         ; $7f9c: $ff
	nop                                              ; $7f9d: $00
	rst  $38                                         ; $7f9e: $ff
	nop                                              ; $7f9f: $00
	rst  $38                                         ; $7fa0: $ff
	nop                                              ; $7fa1: $00
	rst  $38                                         ; $7fa2: $ff
	nop                                              ; $7fa3: $00
	rst  $38                                         ; $7fa4: $ff
	nop                                              ; $7fa5: $00
	rst  $38                                         ; $7fa6: $ff
	nop                                              ; $7fa7: $00
	rst  $38                                         ; $7fa8: $ff
	nop                                              ; $7fa9: $00
	rst  $38                                         ; $7faa: $ff
	nop                                              ; $7fab: $00
	rst  $38                                         ; $7fac: $ff
	nop                                              ; $7fad: $00
	rst  $38                                         ; $7fae: $ff
	nop                                              ; $7faf: $00
	add  b                                           ; $7fb0: $80
	nop                                              ; $7fb1: $00
	stop                                             ; $7fb2: $10 $00
	rst  $38                                         ; $7fb4: $ff
	nop                                              ; $7fb5: $00
	rst  $38                                         ; $7fb6: $ff
	nop                                              ; $7fb7: $00
	rst  $38                                         ; $7fb8: $ff
	nop                                              ; $7fb9: $00
	rst  $38                                         ; $7fba: $ff
	nop                                              ; $7fbb: $00
	rst  $38                                         ; $7fbc: $ff
	nop                                              ; $7fbd: $00
	rst  $38                                         ; $7fbe: $ff
	nop                                              ; $7fbf: $00
	rst  $38                                         ; $7fc0: $ff
	nop                                              ; $7fc1: $00
	rst  $38                                         ; $7fc2: $ff
	nop                                              ; $7fc3: $00
	rst  $38                                         ; $7fc4: $ff
	nop                                              ; $7fc5: $00
	rst  $38                                         ; $7fc6: $ff
	nop                                              ; $7fc7: $00
	rst  $38                                         ; $7fc8: $ff
	nop                                              ; $7fc9: $00
	rst  $38                                         ; $7fca: $ff
	nop                                              ; $7fcb: $00
	rst  $38                                         ; $7fcc: $ff
	nop                                              ; $7fcd: $00
	rst  $38                                         ; $7fce: $ff
	nop                                              ; $7fcf: $00
	rst  $38                                         ; $7fd0: $ff
	nop                                              ; $7fd1: $00
	rst  $28                                         ; $7fd2: $ef
	nop                                              ; $7fd3: $00
	stop                                             ; $7fd4: $10 $00
	rst  $38                                         ; $7fd6: $ff
	nop                                              ; $7fd7: $00
	rst  $38                                         ; $7fd8: $ff
	nop                                              ; $7fd9: $00
	rst  $38                                         ; $7fda: $ff
	nop                                              ; $7fdb: $00
	rst  $38                                         ; $7fdc: $ff
	nop                                              ; $7fdd: $00
	rst  $38                                         ; $7fde: $ff
	nop                                              ; $7fdf: $00
	rst  $38                                         ; $7fe0: $ff
	nop                                              ; $7fe1: $00
	rst  $38                                         ; $7fe2: $ff
	nop                                              ; $7fe3: $00
	rst  $38                                         ; $7fe4: $ff
	nop                                              ; $7fe5: $00
	rst  $38                                         ; $7fe6: $ff
	nop                                              ; $7fe7: $00
	rst  $38                                         ; $7fe8: $ff
	nop                                              ; $7fe9: $00
	rst  $38                                         ; $7fea: $ff
	nop                                              ; $7feb: $00
	rst  $38                                         ; $7fec: $ff
	nop                                              ; $7fed: $00
	rst  $38                                         ; $7fee: $ff
	nop                                              ; $7fef: $00
	rst  $38                                         ; $7ff0: $ff
	nop                                              ; $7ff1: $00
	rst  $38                                         ; $7ff2: $ff
	nop                                              ; $7ff3: $00
	rst  $28                                         ; $7ff4: $ef
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
